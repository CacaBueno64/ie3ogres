
	.include "asm/macros/function.inc"
	.public CPS_SetSsl
	.public OS_LockMutex
	.public OS_UnlockMutex
	.public SOCL_SocketIsInvalid
	.public SOCLi_CreateCommandPacket
	.public SOCLi_ExecCommandPacketInRecvPipe

	.text
	arm_func_start SOCL_EnableSsl
SOCL_EnableSsl: ; 0x020D74C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _020D7514
	ldrsh r0, [r5, #0xac]
	tst r0, #1
	movne r1, #1
_020D7514:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl SOCLi_ExecEnableSslCommand
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCL_EnableSsl

	arm_static_func_start SOCLi_ExecEnableSslCommand
SOCLi_ExecEnableSslCommand: ; 0x020D7540
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #1
	mov r5, r1
	ldr r0, _020D757C ; =SOCLi_EnableSslCallBack
	mov r1, r6
	mov r2, r4
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	subeq r0, r4, #0x22
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	str r5, [r1, #0x10]
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r4, r5, r6, pc}
_020D757C: .word SOCLi_EnableSslCallBack
	arm_func_end SOCLi_ExecEnableSslCommand

	arm_static_func_start SOCLi_EnableSslCallBack
SOCLi_EnableSslCallBack: ; 0x020D7580
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r5, [r4, #4]
	ldr r6, [r5, #0xa0]
	add r0, r6, #0xe0
	ldr r7, [r6, #0xc4]
	bl OS_LockMutex
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020D75C0
	mov r0, #1
	str r1, [r7, #0xc]
	bl CPS_SetSsl
	mov r0, #4
	strb r0, [r5, #0xaf]
	b _020D75D4
_020D75C0:
	mov r4, #0
	mov r0, r4
	strb r4, [r5, #0xaf]
	bl CPS_SetSsl
	str r4, [r7, #0xc]
_020D75D4:
	add r0, r6, #0xe0
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_EnableSslCallBack
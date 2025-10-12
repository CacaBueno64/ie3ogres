
	.include "asm/macros/function.inc"
	.public CPSMyIp
	.public CPSNetMask
	.public CPS_SocBind
	.public CPS_TcpConnect
	.public OS_LockMutex
	.public OS_UnlockMutex
	.public SOCL_SocketIsInvalid
	.public SOCLi_CreateCommandPacket
	.public SOCLi_ExecCommandPacketInRecvPipe
	
	.text
	arm_func_start SOCL_Bind
SOCL_Bind: ; 0x020D4F98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _020D4FCC
	ldrsh r0, [r5, #0xac]
	tst r0, #1
	movne r1, #1
_020D4FCC:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	mvnne r0, #6
	ldmnefd sp!, {r3, r4, r5, pc}
	strh r4, [r5, #0xb0]
	ldrsb r0, [r5, #0xaf]
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl SOCLi_ExecBindCommand
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCL_Bind

	arm_func_start SOCL_Connect
SOCL_Connect: ; 0x020D5008
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	bne _020D5030
	ldrsh r0, [r6, #0xac]
	tst r0, #8
	beq _020D5038
_020D5030:
	mvn r0, #0x1b
	ldmfd sp!, {r4, r5, r6, pc}
_020D5038:
	cmp r6, #0
	mov r1, #0
	beq _020D5050
	ldrsh r0, [r6, #0xac]
	tst r0, #1
	movne r1, #1
_020D5050:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r0, [r6, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5138
	and r0, r4, #0xf0000000
	cmp r0, #0xe0000000
	beq _020D50C4
	ldr r0, _020D5148 ; =CPSMyIp
	ldr r1, _020D514C ; =CPSNetMask
	ldr r0, [r0]
	ldr r1, [r1]
	eor r0, r0, r4
	tst r1, r0
	beq _020D50A8
	cmn r4, #1
	b _020D50B4
_020D50A8:
	mvn r1, r1
	and r0, r1, r4
	cmp r1, r0
_020D50B4:
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020D50CC
_020D50C4:
	mvn r0, #0x1b
	ldmfd sp!, {r4, r5, r6, pc}
_020D50CC:
	ldrsh r0, [r6, #0xac]
	tst r0, #4
	beq _020D50EC
	ldrsb r0, [r6, #0xae]
	cmp r0, #1
	mvneq r0, #0x1d
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D50EC:
	ldrsh r0, [r6, #0xac]
	tst r0, #2
	beq _020D5110
	ldrsh r0, [r6, #0xac]
	tst r0, #0x40
	ldrne r0, [r6, #0xa8]
	ldreq r0, _020D5150 ; =SOCLiResultCodeInConnecting
	ldreq r0, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020D5110:
	strh r5, [r6, #0xb2]
	mov r0, r6
	str r4, [r6, #0xb4]
	bl SOCLi_ExecBindCommand
	ldrsb r1, [r6, #0xae]
	cmp r1, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #0
	mvnge r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D5138:
	strh r5, [r6, #0xb2]
	str r4, [r6, #0xb4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D5148: .word CPSMyIp
_020D514C: .word CPSNetMask
_020D5150: .word SOCLiResultCodeInConnecting
	arm_func_end SOCL_Connect

	arm_static_func_start SOCLi_ExecBindCommand
SOCLi_ExecBindCommand: ; 0x020D5154
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsb r2, [r4, #0xae]
	ldr r0, _020D51A8 ; =SOCLi_BindCallBack
	mov r1, r4
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r4, pc}
	ldrh r2, [r4, #0xb0]
	mov r0, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r4, #0xb2]
	strh r2, [r1, #0x12]
	ldr r2, [r4, #0xb4]
	str r2, [r1, #0x14]
	ldrsh r2, [r4, #0xac]
	orr r2, r2, #2
	strh r2, [r4, #0xac]
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r4, pc}
_020D51A8: .word SOCLi_BindCallBack
	arm_func_end SOCLi_ExecBindCommand

	arm_static_func_start SOCLi_BindCallBack
SOCLi_BindCallBack: ; 0x020D51AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	mov r6, #0
	ldr r5, [r4, #0xa0]
	add r0, r5, #0xe0
	bl OS_LockMutex
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r7, #0x14]
	bl CPS_SocBind
	str r6, [r5, #0xf8]
	ldrsb r0, [r7, #0xc]
	cmp r0, #0
	cmpne r0, #4
	bne _020D51F4
	bl CPS_TcpConnect
	mov r6, r0
_020D51F4:
	add r0, r5, #0xe0
	bl OS_UnlockMutex
	cmp r6, #0
	ldrnesh r1, [r4, #0xac]
	mvnne r0, #0x4b
	moveq r0, #0
	orrne r1, r1, #0x40
	strneh r1, [r4, #0xac]
	ldreqsh r1, [r4, #0xac]
	orreq r1, r1, #4
	streqh r1, [r4, #0xac]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_BindCallBack

	.data
	.global SOCLiResultCodeInConnecting
SOCLiResultCodeInConnecting:
	.byte 0xE6, 0xFF, 0xFF, 0xFF
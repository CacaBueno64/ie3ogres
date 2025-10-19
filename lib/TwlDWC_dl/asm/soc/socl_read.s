
	.include "asm/macros/function.inc"
	.public CPS_SocConsume
	.public CPS_SocRead
	.public MI_CpuCopy
	.public OS_DisableInterrupts
	.public OS_GetProcMode
	.public OS_LockMutex
	.public OS_RestoreInterrupts
	.public OS_Sleep
	.public OS_SleepThread
	.public OS_TryLockMutex
	.public OS_UnlockMutex
	.public OS_WakeupThread
	.public SOCL_SocketIsInvalid
	.public SOCLiConfigPtr
	.public SOCLi_CreateCommandPacket
	.public SOCLi_ExecCommandPacketInRecvPipe

	.text
	arm_func_start SOCL_ReadFrom
SOCL_ReadFrom: ; 0x020D5224
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	addne sp, sp, #0xc
	mvnne r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x2c]
	tst r0, #4
	bne _020D5268
	ldrsb r0, [r9, #0xae]
	cmp r0, #0
	bne _020D5284
_020D5268:
	ldrsb r0, [r9, #0xaf]
	cmp r0, #4
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	b _020D529C
_020D5284:
	bl OS_GetProcMode
	cmp r0, #0x12
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #1
_020D529C:
	cmp r9, #0
	mov r1, #0
	beq _020D52B4
	ldrsh r0, [r9, #0xac]
	tst r0, #1
	movne r1, #1
_020D52B4:
	cmp r1, #0
	addeq sp, sp, #0xc
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrsb r0, [r9, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5304
	ldrsh r0, [r9, #0xac]
	tst r0, #4
	beq _020D52F8
	ldrsh r0, [r9, #0xac]
	tst r0, #8
	beq _020D5304
_020D52F8:
	add sp, sp, #0xc
	mvn r0, #0x37
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D5304:
	ldr r4, [r9, #0xa0]
	tst r5, #1
	add r0, r4, #0xe0
	bne _020D532C
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D5330
	add sp, sp, #0xc
	mvn r0, #5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D532C:
	bl OS_LockMutex
_020D5330:
	ldr r0, [sp, #0x28]
	ldr r12, [sp, #0x2c]
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	stmib sp, {r5, r12}
	bl SOCLi_ReadAndConsumeBuffer
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SOCL_ReadFrom

	arm_static_func_start SOCLi_ReadAndConsumeBuffer
SOCLi_ReadAndConsumeBuffer: ; 0x020D536C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x28]
	mov r7, r0
	tst r4, #2
	ldr r4, [r7, #0xa0]
	cmpne r4, #0
	movne r6, #1
	moveq r6, #0
	cmp r6, #0
	ldrnesb r5, [r4, #0xfe]
	movne r0, #1
	strneb r0, [r4, #0xfe]
	ldrsb r0, [r7, #0xaf]
	cmp r0, #1
	bne _020D53CC
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str r12, [sp, #4]
	bl SOCLi_ReadUdpBuffer
	mov r8, r0
	b _020D53F4
_020D53CC:
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str r12, [sp, #4]
	bl SOCLi_ReadBuffer
	movs r8, r0
	bmi _020D53F4
	mov r0, r7
	bl SOCLi_ConsumeBuffer
_020D53F4:
	cmp r6, #0
	strneb r5, [r4, #0xfe]
	mov r0, r8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end SOCLi_ReadAndConsumeBuffer

	arm_static_func_start SOCLi_ReadBuffer
SOCLi_ReadBuffer: ; 0x020D5408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrsb r12, [r7, #0xaf]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r12, #4
	bne _020D5438
	ldr r4, [sp, #0x18]
	str r4, [sp]
	bl SOCLi_ExecReadCommand
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D5438:
	ldr r12, [sp, #0x18]
	str r12, [sp]
	bl SOCLi_CopyCPSBuffer
	cmn r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x1c]
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl SOCLi_ExecReadCommand
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_ReadBuffer

	arm_static_func_start SOCLi_CopyCPSBuffer
SOCLi_CopyCPSBuffer: ; 0x020D5478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	add r1, sp, #8
	mov r4, r0
	str r1, [sp]
	add r1, sp, #0xc
	mov r0, r9
	add r2, sp, #6
	add r3, sp, #4
	bl SOCLi_ReadCPSBuffer
	cmp r0, #0
	beq _020D551C
	ldr r5, [sp, #0xc]
	cmp r5, #0
	mvneq r5, #5
	beq _020D5538
	ldrsb r1, [r9, #0xaf]
	cmp r7, r5
	mov r2, #1
	movgt r7, r5
	cmp r1, #0
	cmpne r1, #4
	movne r2, #0
	cmp r2, #0
	mov r1, r8
	mov r2, r7
	movne r5, r7
	bl MI_CpuCopy
	ldr r1, [r9, #0xa0]
	ldrsb r0, [r1, #0xfe]
	cmp r0, #0
	bne _020D5538
	ldr r0, [r1, #0xf8]
	add r0, r0, r5
	str r0, [r1, #0xf8]
	b _020D5538
_020D551C:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	ldrsh r0, [r9, #0xac]
	mvnne r5, #0x1b
	bic r0, r0, #6
	strh r0, [r9, #0xac]
_020D5538:
	cmp r5, #0
	blt _020D556C
	cmp r6, #0
	ldrne r1, [sp, #0x30]
	cmpne r1, #0
	ldrneh r0, [sp, #4]
	strneh r0, [r6]
	ldrne r0, [sp, #8]
	strne r0, [r1]
	ldrh r0, [r9, #0xb0]
	cmp r0, #0
	ldreqh r0, [sp, #6]
	streqh r0, [r9, #0xb0]
_020D556C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SOCLi_CopyCPSBuffer

	arm_static_func_start SOCLi_ReadCPSBuffer
SOCLi_ReadCPSBuffer: ; 0x020D5580
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [r0, #0xa0]
	ldr r4, [r0, #0xc4]
	ldr r5, [r0, #0xf8]
	ldr r0, [r4, #0x50]
	subs lr, r0, r5
	bmi _020D55D8
	ldrh r12, [r4, #0xa]
	ldr r0, [sp, #0x10]
	cmp lr, #0
	strh r12, [r2]
	ldrh r2, [r4, #0x18]
	strh r2, [r3]
	ldr r2, [r4, #0x1c]
	str r2, [r0]
	str lr, [r1]
	bne _020D55E8
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _020D55E8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D55D8:
	mvn r0, #0
	str r0, [r1]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D55E8:
	ldr r0, [r4, #0x4c]
	add r0, r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_ReadCPSBuffer

	arm_static_func_start SOCLi_ExecReadCommand
SOCLi_ExecReadCommand: ; 0x020D55F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _020D563C ; =SOCLi_ReadCallBack
	mov r1, r7
	mov r2, #1
	mov r4, r3
	bl SOCLi_CreateCommandPacket
	mov r1, r0
	str r6, [r1, #0x10]
	str r5, [r1, #0x14]
	ldr r2, [sp, #0x18]
	str r4, [r1, #0x18]
	mov r0, r7
	str r2, [r1, #0x1c]
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D563C: .word SOCLi_ReadCallBack
	arm_func_end SOCLi_ExecReadCommand

	arm_static_func_start SOCLi_ReadCallBack
SOCLi_ReadCallBack: ; 0x020D5640
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r7, [r0, #4]
	ldr r1, [r0, #0x10]
	ldr r8, [r7, #0xa0]
	str r1, [sp, #0xc]
	ldr r1, [r0, #0x18]
	ldr r10, [r0, #0x14]
	ldr r0, [r0, #0x1c]
	ldr r9, [r8, #0xf8]
	str r1, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
	mov r5, #1
	mov r11, #0xa
	add r6, sp, #0x10
_020D5680:
	mov r0, r6
	bl CPS_SocRead
	cmp r0, #0
	beq _020D56D4
	ldr r1, [sp, #0x10]
	sub r1, r1, r9
	cmp r1, #0
	bgt _020D56D4
	ldrsb r0, [r7, #0xaf]
	mov r1, r5
	cmp r0, #0
	cmpne r0, #4
	movne r1, r4
	cmp r1, #0
	ldrneb r0, [r7, #8]
	cmpne r0, #4
	movne r0, #0
	bne _020D56D4
	mov r0, r11
	bl OS_Sleep
	b _020D5680
_020D56D4:
	ldrsh r1, [r7, #0xac]
	tst r1, #0x80
	addne sp, sp, #0x14
	mvnne r0, #0xe
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r7, #0xaf]
	cmp r1, #4
	bne _020D5730
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	cmp r10, r1
	movhi r10, r1
	ldr r1, [sp, #0xc]
	mov r2, r10
	bl MI_CpuCopy
	mov r0, r10
	bl CPS_SocConsume
	add sp, sp, #0x14
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D5730:
	cmp r0, #0
	moveq r4, #0
	beq _020D575C
	ldr r4, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r7
	mov r2, r10
	str r4, [sp]
	bl SOCLi_CopyCPSBuffer
	mov r4, r0
_020D575C:
	cmp r4, #0
	addle sp, sp, #0x14
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r8, #0xfc]
	ldr r1, [r8, #0xf8]
	cmp r1, r0
	blt _020D5784
	mov r0, r7
	bl SOCLi_ConsumeCPSBuffer
_020D5784:
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SOCLi_ReadCallBack

	arm_static_func_start SOCLi_ConsumeBuffer
SOCLi_ConsumeBuffer: ; 0x020D5790
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa0]
	ldrh r0, [r1, #0xfc]
	ldr r1, [r1, #0xf8]
	cmp r1, r0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, _020D57DC ; =SOCLi_ConsumeCallBack
	mov r1, r5
	mov r2, r4
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	subeq r0, r4, #0x21
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r3, r4, r5, pc}
_020D57DC: .word SOCLi_ConsumeCallBack
	arm_func_end SOCLi_ConsumeBuffer

	arm_static_func_start SOCLi_ConsumeCallBack
SOCLi_ConsumeCallBack: ; 0x020D57E0
	ldr r0, [r0, #4]
	ldr r12, _020D57EC ; =SOCLi_ConsumeCPSBuffer
	bx r12
_020D57EC: .word SOCLi_ConsumeCPSBuffer
	arm_func_end SOCLi_ConsumeCallBack

	arm_static_func_start SOCLi_ConsumeCPSBuffer
SOCLi_ConsumeCPSBuffer: ; 0x020D57F0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0xa0]
	bl OS_DisableInterrupts
	ldr r6, [r4, #0xf8]
	mov r5, r0
	cmp r6, #0
	beq _020D581C
	mov r1, #0
	mov r0, r6
	str r1, [r4, #0xf8]
	bl CPS_SocConsume
_020D581C:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_ConsumeCPSBuffer

	arm_static_func_start SOCLi_ReadUdpBuffer
SOCLi_ReadUdpBuffer: ; 0x020D582C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r6, [r10, #0xa0]
	str r1, [sp]
	str r2, [sp, #4]
	mov r11, r3
	bl OS_DisableInterrupts
	ldr r7, [r6, #0x104]
	str r0, [sp, #8]
	cmp r7, #0
	bne _020D58C4
	ldr r0, [sp, #0x34]
	mov r4, #1
	and r9, r0, #1
	mov r5, #0
_020D586C:
	cmp r9, #0
	mvneq r8, #5
	beq _020D58C4
	add r0, r6, #0x10c
	bl OS_SleepThread
	mov r0, r10
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	bne _020D58B0
	mov r1, r5
	cmp r10, #0
	beq _020D58A8
	ldrsh r0, [r10, #0xac]
	tst r0, #1
	movne r1, r4
_020D58A8:
	cmp r1, #0
	bne _020D58B8
_020D58B0:
	mvn r8, #0x37
	b _020D58C4
_020D58B8:
	ldr r7, [r6, #0x104]
	cmp r7, #0
	beq _020D586C
_020D58C4:
	cmp r7, #0
	beq _020D5958
	ldrh r1, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0xc
	bl MI_CpuCopy
	cmp r11, #0
	ldrneh r0, [r7, #6]
	ldr r1, [sp, #0x30]
	strneh r0, [r11]
	cmp r1, #0
	ldrne r0, [r7, #8]
	strne r0, [r1]
	ldrsb r0, [r6, #0xfe]
	ldrh r8, [r7, #4]
	cmp r0, #0
	bne _020D5958
	ldr r0, [r7]
	ldr r1, _020D596C ; =SOCLiConfigPtr
	str r0, [r6, #0x104]
	ldr r0, [r7]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x100]
	ldr r1, [r1]
	mov r0, r7
	ldr r1, [r1, #0x1c]
	blx r1
	add r1, r6, #0x100
	ldrh r2, [r1, #8]
	mov r0, r8, lsl #0x10
	sub r0, r2, r0, lsr #16
	strh r0, [r1, #8]
_020D5958:
	ldr r0, [sp, #8]
	bl OS_RestoreInterrupts
	mov r0, r8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D596C: .word SOCLiConfigPtr
	arm_func_end SOCLi_ReadUdpBuffer

	arm_func_start SOCLi_UdpRecvCallback
SOCLi_UdpRecvCallback: ; 0x020D5970
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	ldr r4, [r7, #0xa0]
	mov r9, r0
	mov r8, r1
	bl OS_DisableInterrupts
	add r1, r4, #0x100
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r6, r0
	add r0, r2, r8
	cmp r1, r0
	blo _020D5A3C
	ldr r1, _020D5A84 ; =SOCLiConfigPtr
	add r0, r8, #0xc
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _020D5A28
	add r1, r4, #0x100
	ldrh r3, [r1, #8]
	mov r0, r8, lsl #0x10
	mov r2, #0
	add r3, r3, r0, lsr #16
	strh r3, [r1, #8]
	str r2, [r5]
	mov r0, r0, lsr #0x10
	strh r0, [r5, #4]
	ldrh r1, [r7, #0x18]
	mov r0, r9
	mov r2, r8
	strh r1, [r5, #6]
	ldr r3, [r7, #0x1c]
	add r1, r5, #0xc
	str r3, [r5, #8]
	bl MI_CpuCopy
	ldr r0, [r4, #0x100]
	cmp r0, #0
	ldrne r0, [r4, #0x100]
	strne r5, [r0]
	str r5, [r4, #0x100]
	ldr r0, [r4, #0x104]
	cmp r0, #0
	streq r5, [r4, #0x104]
	b _020D5A4C
_020D5A28:
	ldr r0, _020D5A88 ; =SOCLi_CheckCount
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	b _020D5A4C
_020D5A3C:
	ldr r0, _020D5A88 ; =SOCLi_CheckCount
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_020D5A4C:
	ldrh r0, [r7, #0xb0]
	ldrh r2, [r7, #0x1a]
	ldr r1, [r7, #0x20]
	cmp r0, #0
	ldreqh r0, [r7, #0xa]
	strh r2, [r7, #0x18]
	str r1, [r7, #0x1c]
	streqh r0, [r7, #0xb0]
	add r0, r4, #0x10c
	bl OS_WakeupThread
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D5A84: .word SOCLiConfigPtr
_020D5A88: .word SOCLi_CheckCount
	arm_func_end SOCLi_UdpRecvCallback

	.bss
	.global SOCLi_CheckCount
SOCLi_CheckCount:
	.space 0x08

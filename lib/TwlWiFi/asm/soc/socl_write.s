
	.include "asm/macros/function.inc"
	.public CPS_SocBind
	.public CPS_SocGetEport
	.public CPS_SocWrite
	.public CPS_TcpClose
	.public MI_CpuCopy
	.public OS_DisableInterrupts
	.public OS_LockMutex
	.public OS_RestoreInterrupts
	.public OS_SleepThread
	.public OS_TryLockMutex
	.public OS_UnlockMutex
	.public OS_WakeupThread
	.public OSi_ThreadInfo
	.public SOCL_SocketIsInvalid
	.public SOCLiCPSConfig
	.public SOCLi_CreateCommandPacket
	.public SOCLi_ExecCommandPacketInSendPipe
	.public _s32_div_f

	.text
	arm_func_start SOCL_WriteTo
SOCL_WriteTo: ; 0x020D5A8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r1, #0
	beq _020D5AD0
	ldrsh r0, [r8, #0xac]
	tst r0, #1
	movne r1, #1
_020D5AD0:
	cmp r1, #0
	addeq sp, sp, #8
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrsb r0, [r8, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5B20
	ldrsh r0, [r8, #0xac]
	tst r0, #4
	beq _020D5B14
	ldrsh r0, [r8, #0xac]
	tst r0, #8
	beq _020D5B20
_020D5B14:
	add sp, sp, #8
	mvn r0, #0x37
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5B20:
	ldr r0, [sp, #0x24]
	ldr r4, [r8, #0xa4]
	tst r0, #4
	bne _020D5B3C
	ldrsb r0, [r8, #0xae]
	cmp r0, #0
	bne _020D5B5C
_020D5B3C:
	add r0, r4, #0xe0
	bl OS_TryLockMutex
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r12, #0
	b _020D5B68
_020D5B5C:
	add r0, r4, #0xe0
	bl OS_LockMutex
	mov r12, #1
_020D5B68:
	ldr r1, [sp, #0x20]
	mov r0, r8
	str r1, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r12, [sp, #4]
	bl SOCLi_WriteBuffer
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end SOCL_WriteTo

	arm_static_func_start SOCLi_WriteBuffer
SOCLi_WriteBuffer: ; 0x020D5BA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r4, [r10, #0xa4]
	ldrsb r0, [r10, #0xaf]
	ldr r4, [r4, #0x10c]
	mov r9, r1
	str r3, [sp, #0xc]
	cmp r0, #1
	mov r8, r2
	ldr r7, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r0, [r4, #0x54]
	mov r5, #0
	bne _020D5BF8
	sub r0, r0, #0x2a
	cmp r8, r0
	addgt sp, sp, #0x18
	subgt r0, r5, #0x23
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp, #0x10]
	b _020D5C08
_020D5BF8:
	sub r0, r0, #0x36
	str r0, [sp, #0x10]
	cmp r8, r0
	strle r8, [sp, #0x10]
_020D5C08:
	cmp r8, #0
	ble _020D5C98
	and r11, r6, #1
_020D5C14:
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r3, sp, #0x14
	str r6, [sp]
	bl SOCLi_AllocWriteBuffer
	mov r4, r0
	cmp r4, #0
	ble _020D5C74
	ldr r0, [sp, #0xc]
	mov r1, r9
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, r10
	mov r2, r4
	bl SOCLi_ExecWriteCommand
	cmp r0, #0
	addle sp, sp, #0x18
	mvnle r0, #5
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r9, r9, r4
	sub r8, r8, r4
	add r5, r5, r4
_020D5C74:
	cmp r11, #0
	bne _020D5C90
	cmp r4, #0
	bgt _020D5C98
	add sp, sp, #0x18
	mvn r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D5C90:
	cmp r8, #0
	bgt _020D5C14
_020D5C98:
	mov r0, r5
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SOCLi_WriteBuffer

	arm_static_func_start SOCLi_AllocWriteBuffer
SOCLi_AllocWriteBuffer: ; 0x020D5CA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	cmp r8, r9
	mov r7, r3
	ldr r4, [r10, #0xa4]
	movgt r8, r9
	bl OS_DisableInterrupts
	ldr r1, [sp, #0x28]
	mov r11, r0
	and r6, r1, #1
_020D5CD4:
	mov r0, r10
	bl SOCLi_GetWriteBufferFreeSize
	mov r5, r0
	cmp r5, r8
	blt _020D5D00
	add r0, r4, #0x100
	ldrh r0, [r0]
	cmp r5, r9
	movge r5, r9
	str r0, [r7]
	b _020D5D18
_020D5D00:
	cmp r6, #0
	moveq r5, #0
	beq _020D5D18
	add r0, r4, #0x104
	bl OS_SleepThread
	b _020D5CD4
_020D5D18:
	mov r0, r11
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SOCLi_AllocWriteBuffer

	arm_func_start SOCLi_GetWriteBufferFreeSize
SOCLi_GetWriteBufferFreeSize: ; 0x020D5D28
	ldr r2, [r0, #0xa4]
	add r0, r2, #0x100
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r2, #0xf8]
	sub r0, r0, r1
	subs r0, r0, #1
	addmi r0, r0, r2
	bx lr
	arm_func_end SOCLi_GetWriteBufferFreeSize

	arm_static_func_start SOCLi_ExecWriteCommand
SOCLi_ExecWriteCommand: ; 0x020D5D4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r4, [r9, #0xa4]
	mov r6, r1
	mov r8, r2
	ldr r1, [r4, #0x10c]
	ldr r2, [sp, #0x28]
	ldr r0, _020D5EB4 ; =SOCLi_WriteCallBack
	mov r7, r3
	bl SOCLi_CreateCommandPacket
	movs r5, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x28]
	add r2, r7, r8
	tst r0, #1
	ldrnesb r0, [r9, #0xaf]
	cmpne r0, #1
	movne r0, #3
	strneb r0, [r5, #0xd]
	moveq r0, #0
	streqb r0, [r5, #0xd]
	ldr r0, [r4, #0xf8]
	ldr r1, [r4, #0xfc]
	cmp r2, r0
	bge _020D5DD4
	add r0, r1, r7
	str r0, [r5, #0x10]
	str r8, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r7, r2
	str r0, [r5, #0x1c]
	b _020D5DFC
_020D5DD4:
	add r2, r1, r7
	sub r0, r0, r7
	str r2, [r5, #0x10]
	str r0, [r5, #0x14]
	sub r7, r8, r0
	str r1, [r5, #0x18]
	mov r2, r7
	add r0, r6, r0
	str r7, [r5, #0x1c]
	bl MI_CpuCopy
_020D5DFC:
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, r6
	bl MI_CpuCopy
	add r0, r4, #0x100
	ldrh r6, [r0]
	strh r7, [r5, #0x20]
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
	ldrsb r0, [r9, #0xaf]
	cmp r0, #1
	bne _020D5E88
	ldrh r0, [r9, #0xb0]
	cmp r0, #0
	bne _020D5E48
	bl CPS_SocGetEport
	strh r0, [r9, #0xb0]
	ldrh r0, [r9, #0xb0]
	strh r0, [r9, #0xa]
_020D5E48:
	ldrh r0, [r9, #0xb0]
	strh r0, [r5, #0x24]
	ldr r1, [r9, #0xb4]
	cmp r1, #0
	beq _020D5E68
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020D5E7C
_020D5E68:
	ldr r1, [sp, #0x24]
	ldrh r0, [sp, #0x20]
	str r1, [r5, #0x28]
_020D5E74:
	strh r0, [r5, #0x26]
	b _020D5E90
_020D5E7C:
	str r1, [r5, #0x28]
	ldrh r0, [r9, #0xb2]
	b _020D5E74
_020D5E88:
	mov r0, #0
	str r0, [r5, #0x28]
_020D5E90:
	ldr r0, [r4, #0x10c]
	mov r1, r5
	bl SOCLi_ExecCommandPacketInSendPipe
	cmp r0, #0
	addne r0, r4, #0x100
	movne r8, #0
	strneh r6, [r0]
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D5EB4: .word SOCLi_WriteCallBack
	arm_func_end SOCLi_ExecWriteCommand

	arm_static_func_start SOCLi_WriteCallBack
SOCLi_WriteCallBack: ; 0x020D5EB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r5, [r9, #4]
	mov r7, #0
	ldrsb r1, [r5, #0xaf]
	ldr r6, [r5, #0xa4]
	cmp r1, #2
	bne _020D5EE8
	ldrsh r0, [r5, #0xac]
	tst r0, #8
	subne r0, r7, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D5EE8:
	cmp r1, #0
	cmpne r1, #4
	bne _020D5F00
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	beq _020D5FD0
_020D5F00:
	ldr r2, [r9, #0x28]
	cmp r2, #0
	beq _020D5F18
	ldrh r0, [r9, #0x24]
	ldrh r1, [r9, #0x26]
	bl CPS_SocBind
_020D5F18:
	ldrsb r1, [r5, #0xaf]
	mov r0, #1
	mov r8, #0x36
	cmp r1, #0
	cmpne r1, #4
	movne r0, #0
	cmp r0, #0
	moveq r8, #0x2a
	cmp r1, #0
	cmpne r1, #4
	ldrne r0, [r5, #0x54]
	ldr r4, [r5, #0x58]
	subne r10, r0, r8
	bne _020D5F60
	ldr r0, [r5, #0x54]
	sub r0, r0, r8
	bl SOCLi_GetOptimumSendBufLen
	mov r10, r0
_020D5F60:
	mov r1, r10
	mov r2, r9
	add r0, r4, r8
	bl SOCLi_MemCpy
	mov r1, r0
	cmp r1, #0
	ble _020D5FD4
	add r0, r4, r8
	bl CPS_SocWrite
	cmp r0, #0
	bgt _020D5FC8
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5FC4
	ldrsh r0, [r5, #0xac]
	bic r0, r0, #0xe
	strh r0, [r5, #0xac]
	ldrsh r0, [r5, #0xac]
	orr r0, r0, #0x80
	strh r0, [r5, #0xac]
	bl CPS_TcpClose
_020D5FC4:
	b _020D5FD0
_020D5FC8:
	add r7, r7, r0
	b _020D5F60
_020D5FD0:
	mvn r7, #0x4b
_020D5FD4:
	ldrh r2, [r9, #0x20]
	add r1, r6, #0x100
	add r0, r6, #0x104
	strh r2, [r1, #2]
	bl OS_WakeupThread
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end SOCLi_WriteCallBack

	arm_static_func_start SOCLi_GetOptimumSendBufLen
SOCLi_GetOptimumSendBufLen: ; 0x020D5FF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6080 ; =OSi_ThreadInfo
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r5, [r0, #0xa4]
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _020D6048
	ldrh r3, [r5, #0x3a]
	cmp r3, #0
	ldrneh r2, [r5, #0x38]
	cmpne r2, #0
	beq _020D6044
	ldr r1, _020D6084 ; =SOCLiCPSConfig
	cmp r3, r2
	ldr r1, [r1, #0x24]
	movgt r3, r2
	cmp r3, r1
	movgt r3, r1
	mov r5, r3, lsl #1
	b _020D6054
_020D6044:
	b _020D6048
_020D6048:
	ldr r1, _020D6084 ; =SOCLiCPSConfig
	ldr r1, [r1, #0x24]
	mov r5, r1, lsl #1
_020D6054:
	bl OS_RestoreInterrupts
	cmp r5, #0
	ble _020D6078
	mov r0, r4
	mov r1, r5
	bl _s32_div_f
	cmp r0, #0
	mulgt r0, r5, r0
	ldmgtfd sp!, {r3, r4, r5, pc}
_020D6078:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D6080: .word OSi_ThreadInfo
_020D6084: .word SOCLiCPSConfig
	arm_func_end SOCLi_GetOptimumSendBufLen

	arm_static_func_start SOCLi_MemCpy
SOCLi_MemCpy: ; 0x020D6088
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r4, [r6, #0x14]
	ldr r5, [r6, #0x1c]
	cmp r4, r1
	mov r7, r0
	movgt r4, r1
	movgt r5, #0
	bgt _020D60B8
	sub r0, r1, r4
	cmp r5, r0
	movgt r5, r0
_020D60B8:
	cmp r4, #0
	ble _020D60E8
	ldr r0, [r6, #0x10]
	mov r1, r7
	mov r2, r4
	bl MI_CpuCopy
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	add r1, r1, r4
	sub r0, r0, r4
	str r1, [r6, #0x10]
	str r0, [r6, #0x14]
_020D60E8:
	cmp r5, #0
	ble _020D6118
	ldr r0, [r6, #0x18]
	mov r2, r5
	add r1, r7, r4
	bl MI_CpuCopy
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	add r1, r1, r5
	sub r0, r0, r5
	str r1, [r6, #0x18]
	str r0, [r6, #0x1c]
_020D6118:
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_MemCpy
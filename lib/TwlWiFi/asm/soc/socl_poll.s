
	.include "asm/macros/function.inc"
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts
	.public SOCL_SocketIsInvalid
	.public SOCLi_GetWriteBufferFreeSize

	.text
	arm_func_start SOCL_GetStatus
SOCL_GetStatus: ; 0x020D6994
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r0
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	orrne r4, r4, #0x80
	bne _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #0x40
	ldrsb r0, [r5, #0xaf]
	orrne r4, r4, #0x20
	cmp r0, #1
	beq _020D69D4
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	beq _020D6A04
_020D69D4:
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r5
	bl SOCLi_GetReadBufferOccpiedSize
	cmp r0, #0
	mov r0, r5
	orrgt r4, r4, #1
	bl SOCLi_GetWriteBufferFreeSize
	cmp r0, #0
	mov r0, r6
	orrgt r4, r4, #8
	bl OS_RestoreInterrupts
_020D6A04:
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	ldrneb r0, [r5, #8]
	cmpne r0, #4
	beq _020D6A44
	tst r4, #1
	ldreqsh r0, [r5, #0xac]
	biceq r0, r0, #6
	streqh r0, [r5, #0xac]
_020D6A44:
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	bne _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	orreq r4, r4, #0x40
_020D6A5C:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCL_GetStatus

	arm_func_start SOCLi_GetReadBufferOccpiedSize
SOCLi_GetReadBufferOccpiedSize: ; 0x020D6A64
	ldr r2, [r0, #0xa0]
	mov r3, #0
	cmp r2, #0
	beq _020D6AA4
	ldrsb r1, [r0, #0xaf]
	cmp r1, #1
	bne _020D6A90
	ldr r0, [r2, #0x104]
	cmp r0, #0
	ldrneh r3, [r0, #4]
	b _020D6AA4
_020D6A90:
	cmp r1, #0
	cmpne r1, #4
	ldreq r1, [r0, #0x50]
	ldreq r0, [r2, #0xf8]
	subeq r3, r1, r0
_020D6AA4:
	mov r0, r3
	bx lr
	arm_func_end SOCLi_GetReadBufferOccpiedSize
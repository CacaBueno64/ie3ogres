
	.include "asm/macros/function.inc"
	.include "libpxi.inc"

	.text
	arm_func_start PXI_Init
PXI_Init: ; 0x0201598C
	ldr r12, _02015994 ; =PXI_InitFifo
	bx r12
_02015994: .word PXI_InitFifo
	arm_func_end PXI_Init

	arm_func_start PXI_InitFifo
PXI_InitFifo: ; 0x02015998
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl OS_DisableInterrupts
	ldr r1, _02015A7C ; =FifoCtrlInit
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _02015A70
	mov r2, #1
	strh r2, [r1]
	mov r1, #0
	ldr r0, _02015A80 ; =0x02FFFC00
	mov r5, r1
	str r1, [r0, #0x388]
	ldr r0, _02015A84 ; =FifoRecvCallbackTable
_020159D0:
	str r5, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #0x20
	blt _020159D0
	mov r6, #0x40000
	ldr r1, _02015A88 ; =0x0000C408
	ldr r7, _02015A8C ; =0x04000184
	mov r0, r6
	strh r1, [r7]
	bl OS_ResetRequestIrqMask
	ldr r1, _02015A90 ; =PXIi_HandlerRecvFifoNotEmpty
	mov r0, r6
	bl OS_SetIrqFunction
	mov r0, r6
	bl OS_EnableIrqMask
	sub r3, r7, #4
	mov r1, #0
	mov r2, #0x3e8
_02015A18:
	ldrh r0, [r3]
	ands r7, r0, #0xf
	mov r0, r7, lsl #8
	strh r0, [r3]
	bne _02015A34
	cmp r5, #4
	bgt _02015A70
_02015A34:
	ldrh r0, [r3]
	mov r6, r2
	and r0, r0, #0xf
	cmp r0, r7
	bne _02015A68
_02015A48:
	cmp r6, #0
	movle r5, r1
	ble _02015A68
	ldrh r0, [r3]
	sub r6, r6, #1
	and r0, r0, #0xf
	cmp r0, r7
	beq _02015A48
_02015A68:
	add r5, r5, #1
	b _02015A18
_02015A70:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02015A7C: .word FifoCtrlInit
_02015A80: .word 0x02FFFC00
_02015A84: .word FifoRecvCallbackTable
_02015A88: .word 0x0000C408
_02015A8C: .word 0x04000184
_02015A90: .word PXIi_HandlerRecvFifoNotEmpty
	arm_func_end PXI_InitFifo

	arm_func_start PXI_SetFifoRecvCallback
PXI_SetFifoRecvCallback: ; 0x02015A94
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl OS_DisableInterrupts
	ldr r1, _02015AD8 ; =FifoRecvCallbackTable
	ldr r3, _02015ADC ; =0x02FFFC00
	str r5, [r1, r4, lsl #2]
	cmp r5, #0
	ldrne r2, [r3, #0x388]
	mov r1, #1
	orrne r1, r2, r1, lsl r4
	mvneq r1, r1, lsl r4
	ldreq r2, [r3, #0x388]
	andeq r1, r2, r1
	str r1, [r3, #0x388]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02015AD8: .word FifoRecvCallbackTable
_02015ADC: .word 0x02FFFC00
	arm_func_end PXI_SetFifoRecvCallback

	arm_func_start PXI_IsCallbackReady
PXI_IsCallbackReady: ; 0x02015AE0
	ldr r2, _02015B00 ; =0x02FFFC00
	mov r3, #1
	add r1, r2, r1, lsl #2
	ldr r1, [r1, #0x388]
	tst r1, r3, lsl r0
	moveq r3, #0
	mov r0, r3
	bx lr
_02015B00: .word 0x02FFFC00
	arm_func_end PXI_IsCallbackReady

	arm_func_start PXI_SendWordByFifo
PXI_SendWordByFifo: ; 0x02015B04
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, [sp]
	ldr r5, _02015B78 ; =0x04000184
	bic r3, r3, #0x1f
	and r0, r0, #0x1f
	orr r3, r3, r0
	ldrh r0, [r5]
	bic r3, r3, #0x20
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #26
	and r2, r2, #0x3f
	tst r0, #0x4000
	orr r4, r2, r1, lsl #6
	ldrneh r1, [r5]
	mvnne r0, #0
	orrne r1, r1, #0xc000
	strneh r1, [r5]
	ldmnefd sp!, {r3, r4, r5, pc}
	bl OS_DisableInterrupts
	ldrh r1, [r5]
	tst r1, #2
	beq _02015B68
	bl OS_RestoreInterrupts
	mvn r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02015B68:
	str r4, [r5, #4]
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02015B78: .word 0x04000184
	arm_func_end PXI_SendWordByFifo

	arm_func_start PXIi_HandlerRecvFifoNotEmpty
PXIi_HandlerRecvFifoNotEmpty: ; 0x02015B7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mvn r7, #3
	ldr r9, [sp]
	ldr r8, _02015C74 ; =0x04000184
	ldr r4, _02015C78 ; =FifoRecvCallbackTable
	add r10, r7, #1
	mov r6, #0x4100000
	mov r5, #0
_02015BA0:
	ldrh r0, [r8]
	tst r0, #0x4000
	ldrneh r0, [r8]
	addne r1, r7, #1
	orrne r0, r0, #0xc000
	strneh r0, [r8]
	bne _02015BE4
	bl OS_DisableInterrupts
	ldrh r1, [r8]
	tst r1, #0x100
	beq _02015BD8
	bl OS_RestoreInterrupts
	mov r1, r7
	b _02015BE4
_02015BD8:
	ldr r9, [r6]
	bl OS_RestoreInterrupts
	mov r1, r5
_02015BE4:
	cmp r1, r7
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r1, r10
	beq _02015BA0
	mov r0, r9, lsl #0x1b
	movs r0, r0, lsr #0x1b
	beq _02015BA0
	ldr r3, [r4, r0, lsl #2]
	cmp r3, #0
	beq _02015C24
	mov r2, r9, lsl #0x1a
	mov r1, r9, lsr #6
	mov r2, r2, lsr #0x1f
	blx r3
	b _02015BA0
_02015C24:
	mov r0, r9, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bne _02015BA0
	ldrh r0, [r8]
	orr r9, r9, #0x20
	tst r0, #0x4000
	ldrneh r0, [r8]
	orrne r0, r0, #0xc000
	strneh r0, [r8]
	bne _02015BA0
	bl OS_DisableInterrupts
	ldrh r1, [r8]
	tst r1, #2
	beq _02015C60
	b _02015C64
_02015C60:
	str r9, [r8, #4]
_02015C64:
	bl OS_RestoreInterrupts
	b _02015BA0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02015C74: .word 0x04000184
_02015C78: .word FifoRecvCallbackTable
	arm_func_end PXIi_HandlerRecvFifoNotEmpty

	.bss
	.global FifoCtrlInit
FifoCtrlInit:
	.space 0x04
	.global FifoRecvCallbackTable
FifoRecvCallbackTable:
	.space 0x80

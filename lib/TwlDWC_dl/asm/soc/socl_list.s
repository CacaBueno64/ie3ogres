
	.include "asm/macros/function.inc"
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts

	.text
	arm_func_start SOCLi_SocketRegister
SOCLi_SocketRegister: ; 0x020D6CC0
	mov r1, r0
	ldr r0, _020D6CD0 ; =SOCLiSocketList
	ldr r12, _020D6CD4 ; =SOCLi_SocketRegisterList
	bx r12
_020D6CD0: .word SOCLiSocketList
_020D6CD4: .word SOCLi_SocketRegisterList
	arm_func_end SOCLi_SocketRegister

	arm_static_func_start SOCLi_SocketRegisterList
SOCLi_SocketRegisterList: ; 0x020D6CD8
	ldr r2, [r0]
	str r2, [r1, #0xb8]
	str r1, [r0]
	bx lr
	arm_func_end SOCLi_SocketRegisterList

	arm_func_start SOCLi_SocketRegisterTrash
SOCLi_SocketRegisterTrash: ; 0x020D6CE8
	mov r1, r0
	ldr r0, _020D6CF8 ; =SOCLiSocketListTrash
	ldr r12, _020D6CFC ; =SOCLi_SocketRegisterList
	bx r12
_020D6CF8: .word SOCLiSocketListTrash
_020D6CFC: .word SOCLi_SocketRegisterList
	arm_func_end SOCLi_SocketRegisterTrash

	arm_func_start SOCLi_SocketUnregister
SOCLi_SocketUnregister: ; 0x020D6D00
	mov r1, r0
	ldr r0, _020D6D10 ; =SOCLiSocketList
	ldr r12, _020D6D14 ; =SOCLi_SocketUnregisterList
	bx r12
_020D6D10: .word SOCLiSocketList
_020D6D14: .word SOCLi_SocketUnregisterList
	arm_func_end SOCLi_SocketUnregister

	arm_static_func_start SOCLi_SocketUnregisterList
SOCLi_SocketUnregisterList: ; 0x020D6D18
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl SOCLi_SocketGetNextPtr
	cmp r0, #0
	ldrne r1, [r5, #0xb8]
	strne r1, [r0]
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_SocketUnregisterList

	arm_static_func_start SOCLi_SocketGetNextPtr
SOCLi_SocketGetNextPtr: ; 0x020D6D50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	ldr r1, [r5]
	cmp r1, #0
	beq _020D6D90
_020D6D6C:
	cmp r1, r4
	bne _020D6D80
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D6D80:
	add r5, r1, #0xb8
	ldr r1, [r1, #0xb8]
	cmp r1, #0
	bne _020D6D6C
_020D6D90:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_SocketGetNextPtr

	arm_func_start SOCLi_SocketUnregisterTrash
SOCLi_SocketUnregisterTrash: ; 0x020D6D9C
	mov r1, r0
	ldr r0, _020D6DAC ; =SOCLiSocketListTrash
	ldr r12, _020D6DB0 ; =SOCLi_SocketUnregisterList
	bx r12
_020D6DAC: .word SOCLiSocketListTrash
_020D6DB0: .word SOCLi_SocketUnregisterList
	arm_func_end SOCLi_SocketUnregisterTrash

	arm_func_start SOCL_SocketIsInvalid
SOCL_SocketIsInvalid: ; 0x020D6DB4
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0
	ble _020D6DD4
	ldr r0, _020D6DE4 ; =SOCLiSocketList
	bl SOCLi_SocketGetNextPtr
	cmp r0, #0
	bne _020D6DDC
_020D6DD4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020D6DDC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020D6DE4: .word SOCLiSocketList
	arm_func_end SOCL_SocketIsInvalid

	arm_func_start SOCL_SocketIsInTrash
SOCL_SocketIsInTrash: ; 0x020D6DE8
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, _020D6E08 ; =SOCLiSocketListTrash
	bl SOCLi_SocketGetNextPtr
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020D6E08: .word SOCLiSocketListTrash
	arm_func_end SOCL_SocketIsInTrash

	.bss
	.global SOCLiSocketList
SOCLiSocketList:
	.space 0x04
	.global SOCLiSocketListTrash
SOCLiSocketListTrash:
	.space 0x04

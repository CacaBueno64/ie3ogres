
	.include "asm/macros/function.inc"
	.public CPSDnsIp
	.public CPSGatewayIp
	.public CPSMyIp
	.public CPSNetMask
	.public MI_CpuFill8

	.text
	arm_func_start SOCLi_RoundUp4
SOCLi_RoundUp4: ; 0x020D6AAC
	add r0, r0, #3
	bic r0, r0, #3
	bx lr
	arm_func_end SOCLi_RoundUp4

	arm_func_start SOCLi_InitResource
SOCLi_InitResource: ; 0x020D6AB8
	ldr r0, _020D6ACC ; =SOCLi_Resource
	ldr r12, _020D6AD0 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #8
	bx r12
_020D6ACC: .word SOCLi_Resource
_020D6AD0: .word MI_CpuFill8
	arm_func_end SOCLi_InitResource

	arm_static_func_start SOCLi_IsIPv4ValidDNSAddr
SOCLi_IsIPv4ValidDNSAddr: ; 0x020D6AD4
	stmfd sp!, {r4, lr}
	mov r12, #0
	sub r3, r12, #1
	cmp r1, r3
	cmpne r1, #0
	mov lr, r12
	mov r4, r12
	cmpne r2, r1
	beq _020D6B38
	eor r3, r2, r1
	tst r0, r3
	bne _020D6B10
	mvn r3, r0
	tst r1, r3
	beq _020D6B38
_020D6B10:
	eor r2, r2, r1
	tst r0, r2
	mov r3, #1
	bne _020D6B30
	mvn r2, r0
	and r0, r1, r2
	teq r2, r0
	moveq r3, #0
_020D6B30:
	cmp r3, #0
	movne r4, #1
_020D6B38:
	cmp r4, #0
	beq _020D6B4C
	and r0, r1, #0xff000000
	teq r0, #0x7f000000
	movne lr, #1
_020D6B4C:
	cmp lr, #0
	beq _020D6B60
	and r0, r1, #0xf0000000
	teq r0, #0xe0000000
	movne r12, #1
_020D6B60:
	mov r0, r12
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_IsIPv4ValidDNSAddr

	arm_static_func_start SOCLi_IsIPv4ValidNodeAddr
SOCLi_IsIPv4ValidNodeAddr: ; 0x020D6B68
	stmfd sp!, {r3, lr}
	mvn r3, r0
	mov r0, #0
	and r2, r1, r3
	teq r3, r2
	mov lr, r0
	cmpne r2, #0
	movne lr, #1
	mov r12, r0
	cmp lr, #0
	beq _020D6BA0
	and r2, r1, #0xff000000
	teq r2, #0x7f000000
	movne r12, #1
_020D6BA0:
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	and r1, r1, #0xf0000000
	teq r1, #0xe0000000
	movne r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end SOCLi_IsIPv4ValidNodeAddr

	arm_func_start SOCLi_CheckNConfig
SOCLi_CheckNConfig: ; 0x020D6BB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D6CB0 ; =CPSNetMask
	mov r4, #0
	ldr r0, [r7]
	cmp r0, #0
	beq _020D6BE0
	mvn r2, r0
	add r1, r2, #1
	tst r2, r1
	beq _020D6BE8
_020D6BE0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6BE8:
	ldr r6, _020D6CB4 ; =CPSMyIp
	ldr r1, [r6]
	bl SOCLi_IsIPv4ValidNodeAddr
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020D6CB8 ; =CPSGatewayIp
	ldr r1, [r5]
	cmp r1, #0
	beq _020D6C60
	ldr r0, [r7]
	bl SOCLi_IsIPv4ValidNodeAddr
	cmp r0, #0
	beq _020D6C58
	ldr r2, [r7]
	cmn r2, #1
	ldrne r1, [r6]
	ldrne r0, [r5]
	andne r1, r1, r2
	andne r0, r0, r2
	cmpne r1, r0
	bne _020D6C58
	ldr r1, _020D6CB4 ; =CPSMyIp
	ldr r0, _020D6CB8 ; =CPSGatewayIp
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _020D6C60
_020D6C58:
	ldr r0, _020D6CB8 ; =CPSGatewayIp
	str r4, [r0]
_020D6C60:
	ldr r0, _020D6CB0 ; =CPSNetMask
	ldr r5, _020D6CBC ; =CPSDnsIp
	ldr r2, _020D6CB4 ; =CPSMyIp
	ldr r0, [r0]
	ldr r1, [r5]
	ldr r2, [r2]
	bl SOCLi_IsIPv4ValidDNSAddr
	cmp r0, #0
	streq r4, [r5]
	ldr r0, _020D6CB0 ; =CPSNetMask
	ldr r5, _020D6CBC ; =CPSDnsIp
	ldr r2, _020D6CB4 ; =CPSMyIp
	ldr r0, [r0]
	ldr r1, [r5, #4]
	ldr r2, [r2]
	bl SOCLi_IsIPv4ValidDNSAddr
	cmp r0, #0
	streq r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6CB0: .word CPSNetMask
_020D6CB4: .word CPSMyIp
_020D6CB8: .word CPSGatewayIp
_020D6CBC: .word CPSDnsIp
	arm_func_end SOCLi_CheckNConfig

	.bss
	.global SOCLi_Resource
SOCLi_Resource:
	.space 0x08


	.include "asm/macros/function.inc"
	.public CPS_SslAddRandomSeed
	.public NHTTPi_Request2Connection
	.public NHTTPi_alloc
	.public NHTTPi_free
	.public NHTTPi_lockReqList
	.public NHTTPi_memclr
	.public NHTTPi_memcpy
	.public NHTTPi_unlockReqList
	.public OS_GetLowEntropyData
	.public OS_Sleep
	.public SOCL_EnableSsl
	.public SOCLi_TrashSocket
	.public SOC_Close
	.public SOC_Connect
	.public SOC_GetHostByName
	.public SOC_InetAtoN
	.public SOC_Recv
	.public SOC_Send
	.public SOC_Shutdown
	.public SOC_Socket

	.text
	arm_static_func_start NHTTPi_CpsAuthCallback
NHTTPi_CpsAuthCallback: ; 0x020CF080
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end NHTTPi_CpsAuthCallback

	arm_static_func_start NHTTPi_CpsAuthCallbackForDebug
NHTTPi_CpsAuthCallbackForDebug: ; 0x020CF08C
	mov r0, #0
	bx lr
	arm_func_end NHTTPi_CpsAuthCallbackForDebug

	arm_static_func_start NHTTPi_SetSSLseed
NHTTPi_SetSSLseed: ; 0x020CF094
	stmfd sp!, {r4, lr}
	ldr r4, _020CF0B4 ; =_ZZ17NHTTPi_SetSSLseedvE8ssl_seed
	mov r0, r4
	bl OS_GetLowEntropyData
	mov r0, r4
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
	ldmfd sp!, {r4, pc}
_020CF0B4: .word _ZZ17NHTTPi_SetSSLseedvE8ssl_seed
	arm_func_end NHTTPi_SetSSLseed

	arm_func_start NHTTPi_checkKeepAlive
NHTTPi_checkKeepAlive: ; 0x020CF0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	sub r1, r5, #1
	cmp r0, r1
	subeq r5, r5, #1
	beq _020CF0F0
	mov r4, #4
	add r1, sp, #0
	mov r3, r4
	mov r2, #1
	bl SOC_Recv
	sub r1, r4, #0xa
	cmp r0, r1
	subne r5, r4, #5
_020CF0F0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_checkKeepAlive

	arm_func_start NHTTPi_SocOpen
NHTTPi_SocOpen: ; 0x020CF0F8
	ldr r12, _020CF10C ; =SOC_Socket
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bx r12
_020CF10C: .word SOC_Socket
	arm_func_end NHTTPi_SocOpen

	arm_func_start NHTTPi_SocClose
NHTTPi_SocClose: ; 0x020CF110
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r2
	mov r0, r10
	mov r4, r1
	bl SOC_Close
	movs r8, r0
	beq _020CF134
	cmn r8, #0x1a
	bne _020CF174
_020CF134:
	mov r9, #0
	mov r7, #0x1f4
	ldr r5, _020CF19C ; =0x00002710
	mvn r6, #0x19
	b _020CF158
_020CF148:
	mov r0, r7
	bl OS_Sleep
	bl SOCLi_TrashSocket
	add r9, r9, #0x1f4
_020CF158:
	mov r0, r10
	bl SOC_Close
	mov r8, r0
	cmp r8, r6
	bne _020CF174
	cmp r9, r5
	ble _020CF148
_020CF174:
	cmn r8, #0x1a
	cmpne r4, #0
	ldrne r0, [r4, #0xac]
	cmpne r0, #0
	beq _020CF194
	bl NHTTPi_free
	mov r0, #0
	str r0, [r4, #0xac]
_020CF194:
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF19C: .word 0x00002710
	arm_func_end NHTTPi_SocClose

	arm_func_start NHTTPi_SocConnect
NHTTPi_SocConnect: ; 0x020CF1A0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x1c]
	ldr r12, [sp, #0x18]
	mov r4, r4, lsl #0x10
	mov r4, r4, lsr #0x10
	mov lr, r4, asr #8
	mov r4, r4, lsl #8
	mov r6, #8
	mov r5, #2
	and lr, lr, #0xff
	and r4, r4, #0xff00
	orr lr, lr, r4
	mov r4, r2
	strb r6, [sp]
	strb r5, [sp, #1]
	strh lr, [sp, #2]
	str r12, [sp, #4]
	ldr r12, [r4, #8]
	mov r5, r3
	cmp r12, #0
	beq _020CF214
	ldr r12, [r4, #0xc]
	cmp r12, #0
	bne _020CF214
	bl NHTTPi_SocSSLConnect
	cmp r0, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, pc}
_020CF214:
	add r1, sp, #0
	mov r0, r5
	bl SOC_Connect
	cmp r0, #0
	bge _020CF240
	ldr r0, [r4]
	add sp, sp, #8
	cmp r0, #0
	ldrne r0, _020CF24C ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmfd sp!, {r4, r5, r6, pc}
_020CF240:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CF24C: .word 0xFFFFFC16
	arm_func_end NHTTPi_SocConnect

	arm_func_start NHTTPi_SocSSLConnect
NHTTPi_SocSSLConnect: ; 0x020CF250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	ldr r4, [r7, #0xac]
	mov r5, r3
	cmp r4, #0
	bne _020CF288
	mov r6, #0x830
	mov r0, r6
	mov r1, #4
	bl NHTTPi_alloc
	mov r4, r0
	mov r1, r6
	str r4, [r7, #0xac]
	bl NHTTPi_memclr
_020CF288:
	ldr r0, [r7, #0xc0]
	mov r1, r4
	str r0, [r4, #0x814]
	ldr r0, [r7, #0xc4]
	str r0, [r4, #0x818]
	ldr r0, [r7, #0x28]
	str r0, [r4, #0x800]
	ldr r0, [r7, #0xd8]
	cmp r0, #0
	ldrne r0, _020CF2D8 ; =NHTTPi_CpsAuthCallbackForDebug
	ldreq r0, _020CF2DC ; =NHTTPi_CpsAuthCallback
	str r0, [r4, #0x810]
	mov r0, r5
	bl SOCL_EnableSsl
	cmp r0, #0
	mvnlt r0, #0x3e8
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	bl NHTTPi_SetSSLseed
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CF2D8: .word NHTTPi_CpsAuthCallbackForDebug
_020CF2DC: .word NHTTPi_CpsAuthCallback
	arm_func_end NHTTPi_SocSSLConnect

	arm_static_func_start NHTTPi_SocRecv_sub
NHTTPi_SocRecv_sub: ; 0x020CF2E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r7, r3
	mov r8, r2
	cmp r7, #0
	add r4, r9, #0x40
	mov r5, #0
	ble _020CF3A0
	add r0, r9, #0x8000
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _020CF338
	ldr r3, [sp, #0x20]
	mov r0, r1
	mov r1, r4
	mov r2, #0x8000
	bl SOC_Recv
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, #0x8000
	str r0, [r1, #0x44]
	str r5, [r1, #0x40]
_020CF338:
	add r0, r9, #0x8000
	ldr r6, [r0, #0x44]
	cmp r6, #0
	beq _020CF3A0
	add r0, r9, #0x8000
	ldr r1, [r0, #0x40]
	cmp r7, r6
	movls r6, r7
	mov r0, r8
	mov r2, r6
	add r1, r4, r1
	bl NHTTPi_memcpy
	add r0, r9, #0x8000
	ldr r1, [r0, #0x44]
	subs r1, r1, r6
	str r1, [r0, #0x44]
	ldrne r1, [r0, #0x40]
	addne r1, r1, r6
	bne _020CF398
	mov r0, r4
	mov r1, #0x8000
	bl NHTTPi_memclr
	add r0, r9, #0x8000
	mov r1, #0
_020CF398:
	str r1, [r0, #0x40]
	mov r5, r6
_020CF3A0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_SocRecv_sub

	arm_func_start NHTTPi_SocRecv
NHTTPi_SocRecv: ; 0x020CF3A8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl NHTTPi_Request2Connection
	cmp r0, #0
	beq _020CF3E4
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl NHTTPi_SocRecv_sub
	b _020CF3F0
_020CF3E4:
	add sp, sp, #4
	mvn r0, #0x3e8
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CF3F0:
	cmp r0, #0
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6]
	cmp r1, #0
	addne sp, sp, #4
	ldrne r0, _020CF424 ; =0xFFFFFC16
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	cmn r0, #0x38
	moveq r0, #0
	mvnne r0, #0x3e8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CF424: .word 0xFFFFFC16
	arm_func_end NHTTPi_SocRecv

	arm_static_func_start NHTTPi_SocSend_sub
NHTTPi_SocSend_sub: ; 0x020CF428
	ldr r12, _020CF430 ; =SOC_Send
	bx r12
_020CF430: .word SOC_Send
	arm_func_end NHTTPi_SocSend_sub

	arm_func_start NHTTPi_SocSend
NHTTPi_SocSend: ; 0x020CF434
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl NHTTPi_SocSend_sub
	cmp r0, #0
	ldmgefd sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	ldrne r0, _020CF478 ; =0xFFFFFC16
	ldmnefd sp!, {r4, pc}
	cmn r0, #0x38
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmfd sp!, {r4, pc}
_020CF478: .word 0xFFFFFC16
	arm_func_end NHTTPi_SocSend

	arm_func_start NHTTPi_SocCancel
NHTTPi_SocCancel: ; 0x020CF47C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	bl NHTTPi_lockReqList
	cmp r4, #0
	blt _020CF4A0
	mov r0, r4
	mov r1, #2
	bl SOC_Shutdown
_020CF4A0:
	mov r0, r5
	bl NHTTPi_unlockReqList
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_SocCancel

	arm_func_start NHTTPi_resolveHostname
NHTTPi_resolveHostname: ; 0x020CF4AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r2, #0
	add r1, sp, #0
	mov r0, r4
	str r2, [sp, #4]
	bl SOC_InetAtoN
	cmp r0, #0
	ldrne r0, [sp]
	strne r0, [sp, #4]
	bne _020CF508
	mov r0, r4
	bl SOC_GetHostByName
	cmp r0, #0
	ldrnesh r1, [r0, #0xa]
	cmpne r1, #0
	ble _020CF508
	ldr r1, [r0, #0xc]
	add r0, sp, #4
	ldr r1, [r1]
	mov r2, #4
	bl NHTTPi_memcpy
_020CF508:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_resolveHostname

	.bss
	.global _ZZ17NHTTPi_SetSSLseedvE8ssl_seed
_ZZ17NHTTPi_SetSSLseedvE8ssl_seed:
	.space 0x20

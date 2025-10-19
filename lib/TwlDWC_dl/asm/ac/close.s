
	.include "asm/macros/function.inc"
	.public DWC_Netcheck_Abort
	.public DWC_Netcheck_Destroy
	.public WCM_GetPhase
	.public WCM_Finish
	.public WCM_CleanupAsync
	.public WCM_EndSearchAsync
	.public WCM_DisconnectAsync
	.public WCM_TerminateAsync
	.public DWCi_AC_SetError
	.public SOCL_CalmDown
	.public SOC_Cleanup
	.public SOCLiConfigPtr

	.text
	arm_func_start DWCi_AC_CloseNetwork
DWCi_AC_CloseNetwork: ; 0x020C3094
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _020C30D8
	bl DisConnectAP
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r4]
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	cmn r0, #1
	bne _020C310C
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C30D8:
	cmp r0, #0xe
	bne _020C30F4
	bl DWC_Netcheck_Abort
	bl DWC_Netcheck_Destroy
	mov r0, #0xc
	strb r0, [r4]
	b _020C310C
_020C30F4:
	cmp r0, #0x12
	bhs _020C310C
	bl CloseSocket
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_020C310C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_CloseNetwork

	arm_static_func_start DisConnectAP
DisConnectAP: ; 0x020C3114
	stmfd sp!, {r4, lr}
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020C31A0
_020C3128: ; jump table
	b _020C315C ; case 0
	b _020C3164 ; case 1
	b _020C31A0 ; case 2
	b _020C316C ; case 3
	b _020C31A0 ; case 4
	b _020C31A0 ; case 5
	b _020C3174 ; case 6
	b _020C31A0 ; case 7
	b _020C31A0 ; case 8
	b _020C317C ; case 9
	b _020C31A0 ; case 10
	b _020C318C ; case 11
	b _020C3184 ; case 12
_020C315C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C3164:
	bl WCM_Finish
	b _020C31A0
_020C316C:
	bl WCM_CleanupAsync
	b _020C31A0
_020C3174:
	bl WCM_EndSearchAsync
	b _020C31A0
_020C317C:
	bl WCM_DisconnectAsync
	b _020C31A0
_020C3184:
	bl WCM_TerminateAsync
	b _020C31A0
_020C318C:
	mov r4, #0
	mov r0, r4
	bl DWCi_AC_SetError
	sub r0, r4, #1
	ldmfd sp!, {r4, pc}
_020C31A0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end DisConnectAP

	arm_static_func_start CloseSocket
CloseSocket: ; 0x020C31A8
	stmfd sp!, {r3, lr}
	ldr r0, _020C31E8 ; =SOCLiConfigPtr
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020C31E8: .word SOCLiConfigPtr
	arm_func_end CloseSocket
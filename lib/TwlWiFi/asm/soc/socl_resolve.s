
	.include "asm/macros/function.inc"
	.public CPSDhcpMode
	.public CPSDnsIp
	.public CPSMyIp
	.public CPS_Resolve
	.public CPS_SocRegister
	.public CPS_SocUnRegister
	.public MI_CpuFill8
	.public OS_DisableInterrupts
	.public OS_GetProcMode
	.public OS_RestoreInterrupts
	.public OS_Sleep
	.public SOCLiConfigPtr
	.public SOCLiDhcpState
	.public SOCLiRequestedIP

	.text
	arm_func_start SOCL_Resolve
SOCL_Resolve: ; 0x020D67B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	ldr r8, _020D6870 ; =SOCLiConfigPtr
	mov r7, r0
	ldr r0, [r8]
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _020D6874 ; =0x00001708
	ldr r1, [r0, #0x18]
	mov r0, r6
	blx r1
	movs r5, r0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r4, sp, #0
	mov r1, #0
	mov r0, r4
	mov r2, #0xa0
	bl MI_CpuFill8
	add r0, r5, #0x368
	add r2, r0, #0x800
	ldr r1, _020D6878 ; =0x00000B9E
	sub r3, r6, #0xba0
	mov r0, r4
	str r5, [sp, #0x4c]
	str r3, [sp, #0x48]
	str r2, [sp, #0x58]
	str r1, [sp, #0x54]
	bl CPS_SocRegister
	mov r0, r7
	bl CPS_Resolve
	mov r4, r0
	bl CPS_SocUnRegister
	ldr r1, [r8]
	mov r0, r5
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r4
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D6870: .word SOCLiConfigPtr
_020D6874: .word 0x00001708
_020D6878: .word 0x00000B9E
	arm_func_end SOCL_Resolve

	arm_func_start SOCL_InetAtoH
SOCL_InetAtoH: ; 0x020D687C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r4, _020D68C0 ; =CPSDnsIp
	mov r6, r0
	ldmia r4, {r7, r8}
	mov r1, #0
	str r1, [r4]
	mov r0, r5
	str r1, [r4, #4]
	bl CPS_Resolve
	mov r5, r0
	mov r0, r6
	stmia r4, {r7, r8}
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D68C0: .word CPSDnsIp
	arm_func_end SOCL_InetAtoH

	arm_func_start SOCL_SetResolver
SOCL_SetResolver: ; 0x020D68C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SOCL_GetHostID
	cmp r0, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	ldrne r0, _020D6924 ; =CPSDhcpMode
	ldr r1, _020D6928 ; =CPSDnsIp
	ldrne r2, [r0]
	str r5, [r1]
	orrne r2, r2, #2
	strne r2, [r0]
	strne r4, [r1, #4]
	bne _020D691C
	ldr r0, _020D6924 ; =CPSDhcpMode
	mov r2, #0
	ldr r3, [r0]
	bic r3, r3, #2
	str r3, [r0]
	str r2, [r1, #4]
_020D691C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D6924: .word CPSDhcpMode
_020D6928: .word CPSDnsIp
	arm_func_end SOCL_SetResolver

	arm_func_start SOCL_GetHostID
SOCL_GetHostID: ; 0x020D692C
	stmfd sp!, {r3, lr}
	ldr r0, _020D6988 ; =CPSMyIp
	ldr r2, [r0]
	cmp r2, #0
	bne _020D696C
	ldr r0, _020D698C ; =SOCLiDhcpState
	ldr r0, [r0]
	and r0, r0, #3
	cmp r0, #1
	bne _020D697C
	bl OS_GetProcMode
	cmp r0, #0x12
	beq _020D697C
	mov r0, #0xa
	bl OS_Sleep
	b _020D697C
_020D696C:
	ldr r0, _020D6990 ; =SOCLiRequestedIP
	ldr r1, [r0]
	cmp r1, #0
	streq r2, [r0]
_020D697C:
	ldr r0, _020D6988 ; =CPSMyIp
	ldr r0, [r0]
	ldmfd sp!, {r3, pc}
_020D6988: .word CPSMyIp
_020D698C: .word SOCLiDhcpState
_020D6990: .word SOCLiRequestedIP
	arm_func_end SOCL_GetHostID
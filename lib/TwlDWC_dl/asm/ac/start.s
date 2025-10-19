
	.include "asm/macros/function.inc"
	.public WCM_GetPhase
	.public DWCi_AC_GetMemPtr
	.public DWCi_AC_MakeSearchList
	.public WCM_StartupAsync
	.public DWCi_AC_SetError
	.public DWCi_AC_CallBackWCM

	.text
	arm_func_start DWCi_AC_Start
DWCi_AC_Start: ; 0x020C6668
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	bl WCM_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	cmp r4, #1
	bne _020C66D4
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl DWCi_AC_MakeSearchList
	ldr r1, _020C66EC ; =DWCi_AC_CallBackWCM
	add r0, sp, #0
	bl WCM_StartupAsync
	cmp r0, #1
	beq _020C66C0
	cmp r0, #4
	blt _020C66E0
_020C66C0:
	mov r0, #1
	bl DWCi_AC_SetError
	add sp, sp, #0x10
	mov r0, #0x11
	ldmfd sp!, {r4, pc}
_020C66D4:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C66E0:
	mov r0, #2
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020C66EC: .word DWCi_AC_CallBackWCM
	arm_func_end DWCi_AC_Start

	.include "asm/macros/function.inc"
	.public DWCi_AC_GetMemPtr
	.public WCM_GetPhase
	.public DWCi_AC_SearchReStart
	.public WCM_EndSearchAsync
	.public WCM_DisconnectAsync
	.public WCM_TerminateAsync
	.public DWCi_AC_SetError

	.text
	arm_func_start DWCi_AC_ConnectRetryAP
DWCi_AC_ConnectRetryAP: ; 0x020C54D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r5, #9
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020C55A0
_020C54F8: ; jump table
	b _020C55A0 ; case 0
	b _020C55A0 ; case 1
	b _020C55A0 ; case 2
	b _020C552C ; case 3
	b _020C55A0 ; case 4
	b _020C55A0 ; case 5
	b _020C5578 ; case 6
	b _020C55A0 ; case 7
	b _020C55A0 ; case 8
	b _020C5580 ; case 9
	b _020C55A0 ; case 10
	b _020C5594 ; case 11
	b _020C5588 ; case 12
_020C552C:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C555C
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _020C55A0
_020C555C:
	cmp r5, #3
	blo _020C55A0
	cmp r5, #5
	bhi _020C55A0
	mov r0, r5
	bl DWCi_AC_SearchReStart
	b _020C55A0
_020C5578:
	bl WCM_EndSearchAsync
	b _020C55A0
_020C5580:
	bl WCM_DisconnectAsync
	b _020C55A0
_020C5588:
	bl WCM_TerminateAsync
	mov r0, #4
	b _020C5598
_020C5594:
	mov r0, #0
_020C5598:
	bl DWCi_AC_SetError
	mov r5, #0x11
_020C55A0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_ConnectRetryAP
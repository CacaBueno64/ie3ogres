
	.include "asm/macros/function.inc"
	.public DWCi_AC_GetMemPtr
	.public DWCi_AC_GetBeacon

	.text
	arm_func_start DWCi_AC_CallBackWCM
DWCi_AC_CallBackWCM: ; 0x020C3008
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrsh r1, [r4]
	cmp r1, #5
	bne _020C3080
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _020C3050
	cmp r1, #0xf
	beq _020C305C
	cmp r1, #0x11
	beq _020C3068
	b _020C3074
_020C3050:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C305C:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3068:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3074:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3080:
	cmp r1, #7
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl DWCi_AC_GetBeacon
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_CallBackWCM

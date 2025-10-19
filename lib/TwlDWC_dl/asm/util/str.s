
	.include "asm/macros/function.inc"

	.text
	arm_func_start DWCi_STRlNLen
DWCi_STRlNLen: ; 0x0210EE94
	cmp r1, #0
	mov r3, #0
	ble _0210EEB8
_0210EEA0:
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _0210EEB8
	add r3, r3, #1
	cmp r3, r1
	blt _0210EEA0
_0210EEB8:
	mov r0, r3
	bx lr
	arm_func_end DWCi_STRlNLen

	arm_func_start DWCi_STRlConvertStringAsciiToUnicode
DWCi_STRlConvertStringAsciiToUnicode: ; 0x0210EEC0
	stmfd sp!, {r3, lr}
	sub r12, r2, #1
	cmp r12, #0
	mov lr, #0
	ble _0210EEF4
_0210EED4:
	ldrb r3, [r1, lr]
	cmp r3, #0
	beq _0210EEF4
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh r3, [r0, r2]
	cmp lr, r12
	blt _0210EED4
_0210EEF4:
	mov r1, lr, lsl #1
	mov r2, #0
	strh r2, [r0, r1]
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_STRlConvertStringAsciiToUnicode

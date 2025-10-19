
	.include "asm/macros/function.inc"
	.public DWCi_TSKlAct
	.public OS_EnableInterrupts
	.public OS_EnableIrqMask
	.public OS_GetIrqFunction
	.public OS_IRQTable
	.public OS_ResetRequestIrqMask
	.public OS_SetIrqFunction
	.public OS_SetIrqMask

	.text
	arm_func_start DWCi_ITRlIntr
DWCi_ITRlIntr: ; 0x0210E90C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _0210E968 ; =0x04000210
	ldr r4, _0210E96C ; =0x02116300
	ldr r1, [r6]
	ldr r0, _0210E970 ; =0x00040018
	str r1, [r4, #4]
	bl OS_SetIrqMask
	mov r5, #1
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r5
	bl OS_GetIrqFunction
	str r0, [r4]
	ldr r1, _0210E974 ; =initVBlank
	mov r0, r5
	bl OS_SetIrqFunction
	mov r0, r5
	bl OS_ResetRequestIrqMask
	sub r1, r6, #8
	ldrh r0, [r1]
	strh r5, [r1]
	bl OS_EnableInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_0210E968: .word 0x04000210
_0210E96C: .word FuncAppliVBlank
_0210E970: .word 0x00040018
_0210E974: .word initVBlank
	arm_func_end DWCi_ITRlIntr

	arm_func_start DWCi_ITRlEnd
DWCi_ITRlEnd: ; 0x0210E978
	stmfd sp!, {r4, lr}
	ldr r2, _0210E9A8 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	ldr r4, _0210E9AC ; =0x02116300
	strh r0, [r2]
	ldr r0, [r4, #4]
	bl OS_SetIrqMask
	ldr r1, [r4]
	mov r0, #1
	bl OS_SetIrqFunction
	ldmfd sp!, {r4, pc}
_0210E9A8: .word 0x04000208
_0210E9AC: .word FuncAppliVBlank
	arm_func_end DWCi_ITRlEnd

	arm_static_func_start initVBlank
initVBlank: ; 0x0210E9B0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_TSKlAct
	ldr r0, _0210E9D4 ; =OS_IRQTable
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	ldmfd sp!, {r3, pc}
_0210E9D4: .word OS_IRQTable
	arm_func_end initVBlank

	.bss
FuncAppliVBlank:
	.space 0x04
IrqAppli:
	.space 0x04

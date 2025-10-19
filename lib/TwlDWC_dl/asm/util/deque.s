
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public FX_ModS32
	.public OS_DisableIrqMask
	.public OS_EnableIrqMask
	.public OS_Terminate

	.text
	arm_func_start DWCi_QUElForm
DWCi_QUElForm: ; 0x0210D070
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #1
	mov r0, r0, lsl #2
	add r0, r0, #8
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	add r1, r4, #1
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_QUElForm

	arm_func_start DWCi_QUElFormEx
DWCi_QUElFormEx: ; 0x0210D0A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl DWCi_QUElForm
	cmp r6, #0
	mov r2, #0
	ble _0210D0DC
_0210D0C4:
	add r1, r0, r2, lsl #2
	add r2, r2, #1
	str r5, [r1, #4]
	cmp r2, r6
	add r5, r5, r4
	blt _0210D0C4
_0210D0DC:
	strb r6, [r0, #3]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_QUElFormEx

	arm_func_start DWCi_QUElDelete
DWCi_QUElDelete: ; 0x0210D0E4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end DWCi_QUElDelete

	arm_func_start DWCi_QUElPushBack
DWCi_QUElPushBack: ; 0x0210D100
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldrb r2, [r5, #3]
	mov r6, r0
	ldrh r1, [r5]
	add r0, r2, #1
	bl FX_ModS32
	ldrb r1, [r5, #2]
	mov r7, r0
	cmp r7, r1
	bne _0210D13C
	bl OS_Terminate
_0210D13C:
	ldrb r1, [r5, #3]
	mov r0, r6
	add r1, r5, r1, lsl #2
	str r4, [r1, #4]
	strb r7, [r5, #3]
	bl OS_EnableIrqMask
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWCi_QUElPushBack

	arm_func_start DWCi_QUElPopBack
DWCi_QUElPopBack: ; 0x0210D158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, #0
	bl OS_DisableIrqMask
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #2]
	mov r5, r0
	cmp r1, r2
	beq _0210D1A0
	ldrh r1, [r6]
	add r0, r2, r1
	sub r0, r0, #1
	bl FX_ModS32
	and r1, r0, #0xff
	strb r0, [r6, #3]
	add r0, r6, r1, lsl #2
	ldr r4, [r0, #4]
_0210D1A0:
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_QUElPopBack

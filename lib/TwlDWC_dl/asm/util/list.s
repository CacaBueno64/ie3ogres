
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public OS_DisableIrqMask
	.public OS_EnableIrqMask

	.text
	arm_func_start DWCi_LSTlForm
DWCi_LSTlForm: ; 0x0210E9D8
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	mov r2, #0
	str r2, [r0]
	add r1, r0, #8
	str r1, [r0, #4]
	str r0, [r0, #8]
	str r2, [r0, #0xc]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_LSTlForm

	arm_func_start DWCi_LSTlDelete
DWCi_LSTlDelete: ; 0x0210EA04
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end DWCi_LSTlDelete

	arm_func_start DWCi_LSTlErase
DWCi_LSTlErase: ; 0x0210EA20
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl OS_DisableIrqMask
	ldmia r4, {r2, r3}
	str r3, [r2, #4]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r1, #0
	str r3, [r2]
	str r1, [r4, #4]
	str r1, [r4]
	bl OS_EnableIrqMask
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_LSTlErase

	arm_func_start DWCi_LSTlInsert
DWCi_LSTlInsert: ; 0x0210EA58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldr r1, [r5]
	str r4, [r1, #4]
	ldr r1, [r5]
	stmia r4, {r1, r5}
	str r4, [r5]
	bl OS_EnableIrqMask
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_LSTlInsert

	arm_func_start DWCi_LSTlPushBack
DWCi_LSTlPushBack: ; 0x0210EA88
	ldr r12, _0210EA94 ; =DWCi_LSTlInsert
	add r0, r0, #8
	bx r12
_0210EA94: .word DWCi_LSTlInsert
	arm_func_end DWCi_LSTlPushBack

	arm_func_start DWCi_LSTlPushFront
DWCi_LSTlPushFront: ; 0x0210EA98
	ldr r0, [r0, #4]
	ldr r12, _0210EAA4 ; =DWCi_LSTlInsert
	bx r12
_0210EAA4: .word DWCi_LSTlInsert
	arm_func_end DWCi_LSTlPushFront

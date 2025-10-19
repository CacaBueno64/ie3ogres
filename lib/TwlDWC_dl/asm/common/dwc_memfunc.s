
	.include "asm/macros/function.inc"

	.text
	arm_static_func_start DWCi_GetAllocateHeader
DWCi_GetAllocateHeader: ; 0x020CC3D8
	sub r0, r0, #0x20
	bx lr
	arm_func_end DWCi_GetAllocateHeader

	arm_static_func_start DWCi_SetAllocateHeader
DWCi_SetAllocateHeader: ; 0x020CC3E0
	ldr r2, _020CC3F0 ; =0x4457434D
	str r1, [r0, #4]
	str r2, [r0], #0x20
	bx lr
_020CC3F0: .word 0x4457434D
	arm_func_end DWCi_SetAllocateHeader

	arm_func_start DWCi_SetMemFunc
DWCi_SetMemFunc: ; 0x020CC3F4
	ldr r2, _020CC404 ; =s_free
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
_020CC404: .word s_free
	arm_func_end DWCi_SetMemFunc

	arm_func_start DWC_Alloc
DWC_Alloc: ; 0x020CC408
	ldr r12, _020CC414 ; =DWC_AllocEx
	mov r2, #0x20
	bx r12
_020CC414: .word DWC_AllocEx
	arm_func_end DWC_Alloc

	arm_func_start DWC_AllocEx
DWC_AllocEx: ; 0x020CC418
	stmfd sp!, {r4, lr}
	ldr r3, _020CC448 ; =s_free
	mov r4, r1
	ldr r3, [r3, #4]
	add r1, r4, #0x20
	blx r3
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, r4
	bl DWCi_SetAllocateHeader
	ldmfd sp!, {r4, pc}
_020CC448: .word s_free
	arm_func_end DWC_AllocEx

	arm_func_start DWC_Free
DWC_Free: ; 0x020CC44C
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	bl DWCi_GetAllocateHeader
	mov r1, r0
	ldr r0, _020CC484 ; =s_free
	ldr r2, [r1, #4]
	ldr r3, [r0]
	mov r0, r4
	add r2, r2, #0x20
	blx r3
	ldmfd sp!, {r4, pc}
_020CC484: .word s_free
	arm_func_end DWC_Free

	.bss
	.global s_free
s_free:
	.space 0x04
	.global s_alloc
s_alloc:
	.space 0x04

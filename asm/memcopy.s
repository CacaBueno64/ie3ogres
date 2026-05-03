
	.include "/macros/function.inc"
	.include "/include/memcopy.inc"

    .text
	arm_func_start FUN_02040dc8
FUN_02040dc8: ; 0x02040DC8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r0
	mov r7, r1
	cmpne r7, #0
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	subs r0, r8, r7
	rsbmi r0, r0, #0
	cmp r0, r6
	bhs _02040E18
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02040E18:
	ldr r5, _02040E68 ; =gAllocator
	mov r1, r6
	mov r0, r5
	bl _ZN10CAllocator8allocateEm
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl _ZN10CAllocator10deallocateEPv
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02040E68: .word gAllocator
	arm_func_end FUN_02040dc8

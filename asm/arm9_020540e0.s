
	.include "/macros/function.inc"
	.include "/include/arm9_020540e0.inc"

    .text
	arm_func_start FUN_020540e0
FUN_020540e0: ; 0x020540E0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_020540e0

	arm_func_start FUN_020540f0
FUN_020540f0: ; 0x020540F0
	bx lr
	arm_func_end FUN_020540f0

	arm_func_start FUN_020540f4
FUN_020540f4: ; 0x020540F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02054114
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, #0
	str r0, [r4, #0xc]
_02054114:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl _ZN10FileSystem10DeallocateEPv
	ldr r0, [r4, #8]
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020540f4

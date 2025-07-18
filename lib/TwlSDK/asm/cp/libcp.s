
	.include "asm/macros/function.inc"

	.text
	arm_func_start CP_SaveContext
CP_SaveContext: ; 0x02009CAC
	ldr r1, _02009CE8 ; =0x04000290
	stmdb sp!, {r4}
	ldmia r1, {r2, r3, r4, r12}
	stmia r0!, {r2, r3, r4, r12}
	ldrh r12, [r1, #-0x10]
	add r1, r1, #0x28
	ldmia r1, {r2, r3}
	stmia r0!, {r2, r3}
	and r12, r12, #3
	ldrh r2, [r1, #-8]
	strh r12, [r0]
	and r2, r2, #1
	strh r2, [r0, #2]
	ldmia sp!, {r4}
	bx lr
_02009CE8: .word 0x04000290
	arm_func_end CP_SaveContext

	arm_func_start CPi_RestoreContext
CPi_RestoreContext: ; 0x02009CEC
	stmdb sp!, {r4}
	ldr r1, _02009D24 ; =0x04000290
	ldmia r0, {r2, r3, r4, r12}
	stmia r1, {r2, r3, r4, r12}
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x1a]
	strh r2, [r1, #-0x10]
	strh r3, [r1, #0x20]
	add r0, r0, #0x10
	add r1, r1, #0x28
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldmia sp!, {r4}
	bx lr
_02009D24: .word 0x04000290
	arm_func_end CPi_RestoreContext

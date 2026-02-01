
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

	.section .init, 4
	arm_func_start FUN_02086b40
FUN_02086b40: ; 0x02086B40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086B88 ; =0x0208FA30
	str r0, [r4, #8]
	ldr r0, _02086B8C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086B90 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02086B88: .word unk_0208FA30
_02086B8C: .word 0x00009CCD
_02086B90: .word 0x0000EA3C
	arm_func_end FUN_02086b40

	.section .ctor, 4
#pragma force_active on
unk_0208EB68:
	.word FUN_02086b40

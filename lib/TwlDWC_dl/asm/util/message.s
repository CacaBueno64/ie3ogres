
	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack

	.text
	arm_func_start DWCi_MSGlInit
DWCi_MSGlInit: ; 0x020F8BF4
	stmfd sp!, {r4, lr}
	mov r0, #0x64
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	mov r1, r0
	ldr r4, _020F8C28 ; =0x021161EC
	mov r0, #8
	str r1, [r4]
	mov r2, #0xc
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	str r0, [r1, #0x60]
	ldmfd sp!, {r4, pc}
_020F8C28: .word MemMsg
	arm_func_end DWCi_MSGlInit

	arm_func_start DWCi_MSGlEnd
DWCi_MSGlEnd: ; 0x020F8C2C
	ldr r0, _020F8C38 ; =0x021161EC
	ldr r12, _020F8C3C ; =DWCi_HEAPlFree_
	bx r12
_020F8C38: .word MemMsg
_020F8C3C: .word DWCi_HEAPlFree_
	arm_func_end DWCi_MSGlEnd

	arm_func_start DWCi_MSGlRead
DWCi_MSGlRead: ; 0x020F8C40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020F8C94 ; =0x021161EC
	mov r5, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x60]
	bl DWCi_QUElPopBack
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	mov r2, #4
	bl DWCi_ARClReadEx
	add r2, r0, #0x20
	str r0, [r4, #8]
	add r0, r2, #0x10
	str r0, [r4]
	ldr r1, [r2, #4]
	mov r0, r4
	add r1, r2, r1
	add r1, r1, #8
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F8C94: .word MemMsg
	arm_func_end DWCi_MSGlRead

	arm_func_start DWCi_MSGlRelease
DWCi_MSGlRelease: ; 0x020F8C98
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl DWCi_ARClRelease
	ldr r0, _020F8CC0 ; =0x021161EC
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r4, pc}
_020F8CC0: .word MemMsg
	arm_func_end DWCi_MSGlRelease

	arm_func_start DWCi_MSGlGet
DWCi_MSGlGet: ; 0x020F8CC4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r2, r3}
	ldr r0, [r2, r1, lsl #2]
	add r0, r3, r0
	bx lr
	arm_func_end DWCi_MSGlGet

	arm_func_start DWCi_MSGlGetEx
DWCi_MSGlGetEx: ; 0x020F8CDC
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r12, lr}
	ldr r0, [r12, r1, lsl #2]
	cmp r2, #0
	add r0, lr, r0
	addge r3, r3, #0x30
	movge r1, r2, lsl #1
	strgeh r3, [r0, r1]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MSGlGetEx

	.bss
MemMsg:
	.space 0x04

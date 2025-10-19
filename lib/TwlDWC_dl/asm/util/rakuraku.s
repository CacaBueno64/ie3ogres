
	.include "asm/macros/function.inc"
	.public ATERMi_ApConfigEnd
	.public ATERMi_ApConfigGetResult
	.public ATERMi_ApConfigStart
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree2
	.public DWCi_HEAPlFree_
	.public DWCi_SETTINGlSetRaku
	.public OS_Sleep
	.public OS_Terminate

	.text
	arm_func_start DWCi_RAKUlInit
DWCi_RAKUlInit: ; 0x020F911C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r0, #0xc
	sub r1, r0, #0x10
	bl DWCi_HEAPlAllocEx
	ldr r1, _020F9178 ; =0x021161F4
	ldr r12, _020F917C ; =memFree
	str r0, [r1]
	ldr r2, _020F9180 ; =cbConfig
	ldr r3, _020F9184 ; =memAlloc
	str r12, [sp]
	mov r12, #0x800
	mov r0, #0xf
	mov r1, #0x40
	str r12, [sp, #4]
	blx ATERMi_ApConfigStart
	cmp r0, #1
	beq _020F9168
	bl OS_Terminate
_020F9168:
	mov r0, #0xa
	bl OS_Sleep
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F9178: .word State
_020F917C: .word memFree
_020F9180: .word cbConfig
_020F9184: .word memAlloc
	arm_func_end DWCi_RAKUlInit

	arm_func_start DWCi_RAKUlEnd
DWCi_RAKUlEnd: ; 0x020F9188
	stmfd sp!, {r3, lr}
	blx ATERMi_ApConfigEnd
	cmp r0, #1
	beq _020F919C
	bl OS_Terminate
_020F919C:
	ldr r0, _020F91A8 ; =0x021161F4
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_020F91A8: .word State
	arm_func_end DWCi_RAKUlEnd

	arm_func_start DWCi_RAKUlGetState
DWCi_RAKUlGetState: ; 0x020F91AC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	ldr r1, _020F9260 ; =0x021161F4
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _020F9258
_020F91CC: ; jump table
	b _020F91EC ; case 0
	b _020F91EC ; case 1
	b _020F91F8 ; case 2
	b _020F91EC ; case 3
	b _020F9204 ; case 4
	b _020F91EC ; case 5
	b _020F9210 ; case 6
	b _020F9254 ; case 7
_020F91EC:
	add sp, sp, #0xe8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020F91F8:
	add sp, sp, #0xe8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020F9204:
	add sp, sp, #0xe8
	mov r0, #2
	ldmfd sp!, {r3, pc}
_020F9210:
	add r0, sp, #0
	blx ATERMi_ApConfigGetResult
	cmp r0, #1
	beq _020F9224
	bl OS_Terminate
_020F9224:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	blt _020F9248
	cmp r0, #3
	ldrle r0, [sp, #0x24]
	cmple r0, #1
	addeq sp, sp, #0xe8
	moveq r0, #3
	ldmeqfd sp!, {r3, pc}
_020F9248:
	add sp, sp, #0xe8
	mov r0, #5
	ldmfd sp!, {r3, pc}
_020F9254:
	mov r0, #4
_020F9258:
	add sp, sp, #0xe8
	ldmfd sp!, {r3, pc}
_020F9260: .word State
	arm_func_end DWCi_RAKUlGetState

	arm_func_start DWCi_RAKUlSetResult
DWCi_RAKUlSetResult: ; 0x020F9264
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	add r0, sp, #0
	blx ATERMi_ApConfigGetResult
	cmp r0, #1
	beq _020F9280
	bl OS_Terminate
_020F9280:
	add r0, sp, #0
	bl DWCi_SETTINGlSetRaku
	add sp, sp, #0xe8
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_RAKUlSetResult

	arm_static_func_start cbConfig
cbConfig: ; 0x020F9290
	ldr r3, _020F92A4 ; =0x021161F4
	ldmia r0, {r0, r1, r2}
	ldr r3, [r3]
	stmia r3, {r0, r1, r2}
	bx lr
_020F92A4: .word State
	arm_func_end cbConfig

	arm_static_func_start memAlloc
memAlloc: ; 0x020F92A8
	ldr r12, _020F92B4 ; =DWCi_HEAPlAllocEx
	mov r1, #0x20
	bx r12
_020F92B4: .word DWCi_HEAPlAllocEx
	arm_func_end memAlloc

	arm_static_func_start memFree
memFree: ; 0x020F92B8
	ldr r12, _020F92C0 ; =DWCi_HEAPlFree2
	bx r12
_020F92C0: .word DWCi_HEAPlFree2
	arm_func_end memFree

	.bss
State:
	.space 0x04


	.include "asm/macros/function.inc"
	.public AOSSi_EndLocal
	.public AOSSi_Init
	.public AOSSi_InitLocal
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree2
	.public DWCi_HEAPlFree_
	.public DWCi_SETTINGlSetAoss
	.public MI_CpuCopy8
	.public MIi_CpuClear16
	.public OS_GetMacAddress
	.public OS_Terminate

	.text
	arm_func_start DWCi_AOSSlInit
DWCi_AOSSlInit: ; 0x020F8458
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x104
	mov r0, #0x26c
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _020F8550 ; =0x021161C4
	add r4, sp, #0
	str r0, [r5, #4]
	mov r0, #0
	mov r1, r4
	mov r2, #0x104
	strb r0, [r5]
	bl MIi_CpuClear16
	mov r3, #0x50
	mov r2, #0xc
	ldr r0, _020F8554 ; =0x021120E4
	add r1, sp, #4
	strb r3, [sp]
	strh r2, [sp, #2]
	bl MI_CpuCopy8
	ldr r0, [r5, #4]
	mov r1, #3
	strh r1, [r0]
	ldr r5, [r5, #4]
	mov r2, #0x41
	add r3, r5, #2
_020F84C0:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F84C0
	ldr r1, _020F8550 ; =0x021161C4
	mov r3, #1
	add r0, r5, #0x100
	strh r3, [r0, #6]
	ldr r0, [r1, #4]
	sub r2, r3, #2
	add r0, r0, #0x100
	strh r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0xa]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xe]
	ldr r0, [r1, #4]
	add r0, r0, #0x110
	bl OS_GetMacAddress
	ldr r0, _020F8558 ; =aossAlloc
	ldr r1, _020F855C ; =aossFree
	blx AOSSi_InitLocal
	cmp r0, #0
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r4, r5, pc}
	bl OS_Terminate
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, pc}
_020F8550: .word Success
_020F8554: .word NAME
_020F8558: .word aossAlloc
_020F855C: .word aossFree
	arm_func_end DWCi_AOSSlInit

	arm_func_start DWCi_AOSSlEnd
DWCi_AOSSlEnd: ; 0x020F8560
	stmfd sp!, {r4, lr}
	mov r4, r0
	blx AOSSi_EndLocal
	cmp r4, #0
	beq _020F859C
	ldr r0, _020F85A8 ; =0x021161C4
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x116]
	cmp r1, #0
	ldreqb r0, [r0]
	cmpeq r0, #1
	bne _020F859C
	add r0, r2, #0x17
	add r0, r0, #0x100
	bl DWCi_SETTINGlSetAoss
_020F859C:
	ldr r0, _020F85AC ; =0x021161C8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_020F85A8: .word Success
_020F85AC: .word AossInfo
	arm_func_end DWCi_AOSSlEnd

	arm_func_start DWCi_AOSSlStart
DWCi_AOSSlStart: ; 0x020F85B0
	stmfd sp!, {r4, lr}
	ldr r4, _020F8600 ; =0x021161C4
	ldr r0, [r4, #4]
	blx AOSSi_Init
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4]
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x116]
	cmp r0, #1
	beq _020F85F0
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _020F85F8
_020F85F0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020F85F8:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_020F8600: .word Success
	arm_func_end DWCi_AOSSlStart

	arm_static_func_start aossAlloc
aossAlloc: ; 0x020F8604
	ldr r12, _020F8610 ; =DWCi_HEAPlAllocEx
	mov r1, #0x20
	bx r12
_020F8610: .word DWCi_HEAPlAllocEx
	arm_func_end aossAlloc

	arm_func_start aossFree
aossFree: ; 0x020F8614
	ldr r12, _020F861C ; =DWCi_HEAPlFree2
	bx r12
_020F861C: .word DWCi_HEAPlFree2
	arm_func_end aossFree

	.rodata
NAME:
	.asciz "NINTENDO-DS"

	.bss
Success:
	.space 0x04
AossInfo:
	.space 0x04

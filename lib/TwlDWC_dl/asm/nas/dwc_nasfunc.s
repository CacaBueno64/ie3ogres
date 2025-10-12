
	.include "asm/macros/function.inc"
	.public DWC_Alloc
	.public DWC_Auth_Abort
	.public DWC_Auth_Create
	.public DWC_Auth_Destroy
	.public DWC_Auth_GetError
	.public DWC_Auth_GetId
	.public DWC_Auth_GetResult
	.public DWC_Free
	.public DWC_Svl_Cleanup
	.public DWC_Svl_GetTokenAsync
	.public DWC_Svl_Init
	.public DWC_Svl_Process
	.public DWCi_SetError
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_Terminate
	.public strlen

	.text
	arm_func_start DWC_SVLGetTokenAsync
DWC_SVLGetTokenAsync: ; 0x020CC488
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl DWC_Auth_GetId
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, _020CC514 ; =DWC_Alloc
	ldr r1, _020CC518 ; =DWC_Free
	bl DWC_Svl_Init
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r5
	bl strlen
	cmp r0, #0
	bne _020CC4E8
	ldr r0, _020CC51C ; =0x020E5640
	b _020CC4EC
_020CC4E8:
	mov r0, r5
_020CC4EC:
	mov r1, r4
	bl DWC_Svl_GetTokenAsync
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r4, r5, pc}
	bl DWC_Svl_Cleanup
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020CC514: .word DWC_Alloc
_020CC518: .word DWC_Free
_020CC51C: .word ov15_020E5640
	arm_func_end DWC_SVLGetTokenAsync

	arm_func_start DWC_SVLProcess
DWC_SVLProcess: ; 0x020CC520
	stmfd sp!, {r4, lr}
	bl DWC_Svl_Process
	mov r4, r0
	sub r0, r4, #3
	cmp r0, #2
	bhi _020CC53C
	bl DWC_Svl_Cleanup
_020CC53C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DWC_SVLProcess

	arm_func_start DWC_NASLoginAsync
DWC_NASLoginAsync: ; 0x020CC544
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CC5EC ; =nalcnt
	ldr r0, [r0]
	cmp r0, #0
	beq _020CC55C
	bl OS_Terminate
_020CC55C:
	ldr r5, _020CC5F0 ; =0x00001E5C
	mov r0, #4
	mov r1, r5
	bl DWC_Alloc
	ldr r4, _020CC5EC ; =nalcnt
	cmp r0, #0
	str r0, [r4]
	bne _020CC590
	ldr r1, _020CC5F4 ; =0xFFFFB17C
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CC590:
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _020CC5F8 ; =0x020E5648
	add r1, r1, #0x84
	add r1, r1, #0x1c00
	mov r2, #9
	bl MI_CpuCopy8
	ldr r0, [r4]
	ldr r1, _020CC5FC ; =DWC_Alloc
	add r0, r0, #0x1000
	str r1, [r0, #0xc90]
	ldr r0, [r4]
	ldr r1, _020CC600 ; =DWC_Free
	add r0, r0, #0x1000
	str r1, [r0, #0xc94]
	ldr r1, [r4]
	add r0, r1, #0xc50
	add r0, r0, #0x1000
	bl DWC_Auth_Create
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CC5EC: .word nalcnt
_020CC5F0: .word 0x00001E5C
_020CC5F4: .word 0xFFFFB17C
_020CC5F8: .word ov15_020E5648
_020CC5FC: .word DWC_Alloc
_020CC600: .word DWC_Free
	arm_func_end DWC_NASLoginAsync

	arm_func_start DWC_NASLoginProcess
DWC_NASLoginProcess: ; 0x020CC604
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c4
	ldr r4, _020CC724 ; =nalcnt
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x1c4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl DWC_Auth_GetError
	cmp r0, #0
	beq _020CC644
	cmp r0, #0x14
	beq _020CC6BC
	cmp r0, #0x15
	beq _020CC650
	b _020CC6E4
_020CC644:
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC650:
	add r6, sp, #0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, #0x1c4
	bl MI_CpuFill8
	mov r0, r6
	bl DWC_Auth_GetResult
	bl DWC_Auth_Destroy
	ldr r1, [sp]
	ldr r0, _020CC728 ; =0x00004E22
	cmp r1, r0
	ldr r1, [r4]
	bne _020CC6A0
	add r0, r1, #0xc50
	add r0, r0, #0x1000
	bl DWC_Auth_Create
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6A0:
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, #4
	bl DWC_Free
	add sp, sp, #0x1c4
	str r5, [r4]
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6BC:
	bl DWC_Auth_Destroy
	ldr r1, [r4]
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, #4
	bl DWC_Free
	mov r0, #0
	str r0, [r4]
	add sp, sp, #0x1c4
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6E4:
	add r0, sp, #0
	bl DWC_Auth_GetResult
	bl DWC_Auth_Destroy
	mov r5, #4
	ldr r1, [r4]
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, r5
	bl DWC_Free
	mov r2, #0
	ldr r1, [sp]
	mov r0, #2
	str r2, [r4]
	bl DWCi_SetError
	mov r0, r5
	add sp, sp, #0x1c4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC724: .word nalcnt
_020CC728: .word 0x00004E22
_020CC72C: .word 0x00001E5C
	arm_func_end DWC_NASLoginProcess

	arm_func_start DWC_NASLoginAbort
DWC_NASLoginAbort: ; 0x020CC730
	ldr r12, _020CC738 ; =DWC_Auth_Abort
	bx r12
_020CC738: .word DWC_Auth_Abort
	arm_func_end DWC_NASLoginAbort

	.data
ov15_020E5640:
	.asciz "0000"
	.balign 4, 0
ov15_020E5648:
	.asciz ""

	.bss
	.global nalcnt
nalcnt:
	.space 0x04
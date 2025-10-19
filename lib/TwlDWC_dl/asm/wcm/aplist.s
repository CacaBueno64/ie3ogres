
	.include "asm/macros/function.inc"
	.public MI_CpuComp8
	.public MI_CpuCopy
	.public MI_CpuFill8
	.public MIi_CpuClearFast
	.public MIi_CpuCopyFast
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts
	.public WCM_CompareBssID
	.public WCMi_GetSystemWork

	.text
	arm_func_start WCM_ClearApList
WCM_ClearApList: ; 0x020DD284
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DD2A8
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020DD2A8:
	add r1, r0, #0x1000
	ldr r0, [r1, #0x2c4]
	cmp r0, #0
	ldrne r2, [r1, #0x2c8]
	cmpne r2, #0
	ble _020DD2C8
	mov r1, #0
	bl MI_CpuFill8
_020DD2C8:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end WCM_ClearApList

	arm_func_start WCM_CountApList
WCM_CountApList: ; 0x020DD2D4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	mov r5, #0
	bne _020DD300
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DD300:
	add r0, r0, #0x1000
	ldr r1, [r0, #0x2c4]
	cmp r1, #0
	beq _020DD31C
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	ldrhi r5, [r1]
_020DD31C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_CountApList

	arm_func_start WCM_LockApList
WCM_LockApList: ; 0x020DD32C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DD358
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD358:
	add r1, r0, #0x1000
	cmp r5, #0
	ldrb r1, [r1, #0x2dc]
	mov r5, #1
	beq _020DD380
	cmp r1, #0
	moveq r5, #0
	add r0, r0, #0x1000
	mov r1, #1
	b _020DD390
_020DD380:
	cmp r1, #0
	moveq r5, #0
	add r0, r0, #0x1000
	mov r1, #0
_020DD390:
	strb r1, [r0, #0x2dc]
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_LockApList

	arm_func_start WCM_PointApList
WCM_PointApList: ; 0x020DD3A4
	ldr r12, _020DD3AC ; =WCM_PointApListEx
	bx r12
_020DD3AC: .word WCM_PointApListEx
	arm_func_end WCM_PointApList

	arm_func_start WCM_PointApListEx
WCM_PointApListEx: ; 0x020DD3B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r5, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DD3DC
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD3DC:
	mov r0, r4
	bl WcmSearchIndexedApList
	movs r4, r0
	mov r0, r5
	bne _020DD3FC
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD3FC:
	bl OS_RestoreInterrupts
	add r0, r4, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_PointApListEx

	arm_func_start WCMi_EntryApList
WCMi_EntryApList: ; 0x020DD408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl WCMi_GetSystemWork
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1000
	ldrb r1, [r0, #0x2dc]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	bne _020DD448
	ldrh r0, [r5, #0x3c]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020DD448:
	add r0, r5, #4
	bl WcmSearchApList
	movs r7, r0
	bne _020DD460
	bl WcmAllocApList
	mov r7, r0
_020DD460:
	cmp r7, #0
	addeq r0, r6, #0x1000
	ldreq r0, [r0, #0x2cc]
	cmpeq r0, #1
	bne _020DD47C
	bl WcmGetOldestApList
	mov r7, r0
_020DD47C:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	add r1, r7, #0x10
	bl WCMi_BssDescCopy
	mov r0, r7
	strh r4, [r7, #2]
	bl WcmAppendApList
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WCMi_EntryApList

	arm_static_func_start WcmAllocApList
WcmAllocApList: ; 0x020DD4A0
	stmfd sp!, {r4, lr}
	bl WCMi_GetSystemWork
	add r2, r0, #0x1000
	ldr r1, [r2, #0x2c4]
	mov r0, #0
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [r2, #0x2c8]
	cmp r3, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r2, _020DD568 ; =0x4EC4EC4F
	sub r3, r3, #0xc
	umull r2, r12, r3, r2
	movs r12, r12, lsr #6
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r1]
	cmp r12, r2
	ldmlsfd sp!, {r4, pc}
	mov lr, r0
	cmp r12, #0
	bls _020DD51C
	add r4, r1, #0xc
	mov r2, #0xd0
_020DD4FC:
	mul r0, lr, r2
	ldrb r3, [r4, r0]
	add r0, r4, r0
	cmp r3, #0
	beq _020DD51C
	add lr, lr, #1
	cmp lr, r12
	blo _020DD4FC
_020DD51C:
	cmp lr, r12
	ldmhsfd sp!, {r4, pc}
	mov r2, #1
	strb r2, [r0]
	ldr r3, [r1]
	mov r2, #0
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	str r0, [r1, #8]
	ldr r2, [r0, #8]
	cmp r2, #0
	strne r0, [r2, #0xc]
	streq r0, [r1, #4]
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	ldmfd sp!, {r4, pc}
_020DD568: .word 0x4EC4EC4F
	arm_func_end WcmAllocApList

	arm_static_func_start WcmGetOldestApList
WcmGetOldestApList: ; 0x020DD56C
	stmfd sp!, {r3, lr}
	bl WCMi_GetSystemWork
	add r0, r0, #0x1000
	ldr r1, [r0, #0x2c4]
	cmp r1, #0
	beq _020DD594
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	ldrhi r0, [r1, #4]
	ldmhifd sp!, {r3, pc}
_020DD594:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end WcmGetOldestApList

	arm_static_func_start WcmSearchApList
WcmSearchApList: ; 0x020DD59C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WCMi_GetSystemWork
	add r0, r0, #0x1000
	mov r4, #0
	cmp r5, #0
	ldr r1, [r0, #0x2c4]
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r1, #0
	beq _020DD600
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	bls _020DD600
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _020DD600
_020DD5E0:
	mov r1, r5
	add r0, r4, #0x14
	bl WCM_CompareBssID
	cmp r0, #0
	bne _020DD600
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _020DD5E0
_020DD600:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WcmSearchApList

	arm_static_func_start WcmSearchIndexedApList
WcmSearchIndexedApList: ; 0x020DD608
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	add r1, r0, #0x1000
	ldr r2, [r1, #0x2c4]
	mov r0, #0
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r1, #0x2c8]
	cmp r1, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r0, [r2, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020DD640:
	ldr r1, [r0, #4]
	cmp r1, r4
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _020DD640
	ldmfd sp!, {r4, pc}
	arm_func_end WcmSearchIndexedApList

	arm_static_func_start WcmAppendApList
WcmAppendApList: ; 0x020DD65C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	add r1, r0, #0x1000
	ldr r0, [r1, #0x2c4]
	cmp r4, #0
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r1, #0x2c8]
	cmp r1, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _020DD6D4
_020DD694:
	cmp r3, r4
	bne _020DD6C8
	ldr r2, [r3, #8]
	ldr r1, [r3, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0, #4]
	ldr r2, [r3, #0xc]
	ldr r1, [r3, #8]
	cmp r2, #0
	strne r1, [r2, #8]
	streq r1, [r0, #8]
	b _020DD6D4
_020DD6C8:
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _020DD694
_020DD6D4:
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	str r4, [r0, #8]
	ldr r1, [r4, #8]
	cmp r1, #0
	strne r4, [r1, #0xc]
	streq r4, [r0, #4]
	cmp r3, #0
	ldreq r1, [r0]
	streq r1, [r4, #4]
	ldreq r1, [r0]
	addeq r1, r1, #1
	streq r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end WcmAppendApList

	arm_func_start WCMi_BssDescCopy
WCMi_BssDescCopy: ; 0x020DD714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r11, r0
	mov r4, r1
	bl WCMi_GetSystemWork
	mov r6, #0
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0xc0
	bl MIi_CpuClearFast
	mov r5, #0x40
	mov r0, r11
	mov r1, r4
	mov r2, r5
	bl MIi_CpuCopyFast
	ldr r0, [sp]
	strh r6, [r4, #0x3e]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	ldr r1, _020DD8BC ; =0x020E4010
	mov r7, #0
	cmp r0, #1
	moveq r0, #0x20
	streqh r0, [r4]
	strneh r5, [r4]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldr r0, _020DD8C0 ; =0x020E4014
	strb r3, [sp, #9]
	strb r2, [sp, #0xa]
	ldrb r5, [r1, #2]
	ldrb r3, [r1, #3]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	strb r5, [sp, #0xb]
	strb r2, [sp, #4]
	strb r3, [sp, #0xc]
	strb r1, [sp, #5]
	ldrb r1, [r0, #3]
	ldrb r2, [r0, #2]
	mov r8, r7
	strb r1, [sp, #7]
	strb r2, [sp, #6]
	ldrb r0, [r0, #4]
	add r5, r11, #0x40
	add r6, r4, #0x40
	strb r0, [sp, #8]
	ldrh r0, [r11, #0x3e]
	cmp r0, #0
	bls _020DD88C
_020DD7E0:
	ldrb r0, [r5]
	ldrb r9, [r5, #1]
	cmp r0, #0x32
	cmpne r0, #0x2a
	cmpne r0, #0x2f
	cmpne r0, #7
	cmpne r0, #0x30
	bne _020DD804
	b _020DD83C
_020DD804:
	cmp r0, #0xdd
	bne _020DD86C
	add r1, sp, #9
	mov r2, #4
	add r0, r5, #2
	bl MI_CpuComp8
	cmp r0, #0
	beq _020DD83C
	add r1, sp, #4
	mov r2, #5
	add r0, r5, #2
	bl MI_CpuComp8
	cmp r0, #0
	bne _020DD86C
_020DD83C:
	add r10, r9, #2
	mov r0, r5
	mov r1, r6
	and r2, r10, #0xff
	bl MI_CpuCopy
	ldrh r0, [r4, #0x3e]
	and r1, r10, #0xff
	add r1, r7, r1
	add r0, r0, #1
	add r6, r6, r10
	and r7, r1, #0xff
	strh r0, [r4, #0x3e]
_020DD86C:
	ldrh r1, [r11, #0x3e]
	add r0, r8, #1
	add r2, r9, #2
	add r5, r5, r2
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020DD7E0
_020DD88C:
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	ldreqh r1, [r4]
	moveq r0, r7, lsl #0x10
	addeq r0, r1, r0, lsr #16
	ldrneh r0, [r4]
	addne r0, r0, r7
	strh r0, [r4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DD8BC: .word ov15_020E4010
_020DD8C0: .word ov15_020E4014
	arm_func_end WCMi_BssDescCopy

	.rodata
ov15_020E4010:
	.byte 0x00, 0x50, 0xF2, 0x01
ov15_020E4014:
	.byte 0x00, 0x50, 0xF2, 0x02, 0x00, 0x00, 0x00, 0x00
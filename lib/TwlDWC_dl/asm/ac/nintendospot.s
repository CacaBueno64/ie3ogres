
	.include "asm/macros/function.inc"
	.public WDS_GetWorkAreaSize
	.public DWC_Alloc
	.public MI_CpuFill8
	.public WDS_Initialize
	.public WDS_StartScan
	.public OS_GetTick
	.public _ll_udiv
	.public WDS_EndScan
	.public WDS_GetApInfoAll
	.public WDS_End
	.public MI_CpuCopy8
	.public DWC_Free

	.text
	arm_func_start DWC_AC_StartupGetWDSInfo
DWC_AC_StartupGetWDSInfo: ; 0x020C5070
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl WDS_GetWorkAreaSize
	mov r6, #1
	mov r1, r0
	mov r0, r6
	bl DWC_Alloc
	ldr r4, _020C50D8 ; =gDwcWdsWork
	ldr r5, _020C50DC ; =0x00000794
	str r0, [r4, #4]
	mov r0, r6
	mov r1, r5
	bl DWC_Alloc
	mov r2, r5
	str r0, [r4]
	mov r5, #0
	mov r1, r5
	bl MI_CpuFill8
	mov r0, r6
	ldr r1, [r4]
	str r8, [r1]
	ldr r1, [r4]
	strh r7, [r1, #4]
	str r5, [r4, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C50D8: .word gDwcWdsWork
_020C50DC: .word 0x00000794
	arm_func_end DWC_AC_StartupGetWDSInfo

	arm_func_start DWC_AC_ProcessGetWDSInfo
DWC_AC_ProcessGetWDSInfo: ; 0x020C50E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r5, _020C53AC ; =gDwcWdsWork
	ldr r0, [r5, #4]
	cmp r0, #0
	ldrne r2, [r5]
	cmpne r2, #0
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5, #8]
	mov r6, #1
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _020C53A4
_020C5114: ; jump table
	b _020C5144 ; case 0
	b _020C53A4 ; case 1
	b _020C5158 ; case 2
	b _020C53A4 ; case 3
	b _020C51A8 ; case 4
	b _020C51F8 ; case 5
	b _020C53A4 ; case 6
	b _020C5214 ; case 7
	b _020C53A4 ; case 8
	b _020C52D8 ; case 9
	b _020C5380 ; case 10
	b _020C53A0 ; case 11
_020C5144:
	str r6, [r5, #8]
	ldrh r2, [r2, #4]
	ldr r1, _020C53B0 ; =WDS_Initialize_CB
	bl WDS_Initialize
	b _020C5390
_020C5158:
	ldr r0, _020C53B4 ; =WDS_StartScan_CB
	mov r1, #3
	str r1, [r5, #8]
	bl WDS_StartScan
	cmp r0, #0
	bne _020C519C
	ldr r1, [r5]
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #8]
	cmp r0, #0
	cmpeq r2, #0
	bne _020C53A4
	bl OS_GetTick
	ldr r2, [r5]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	b _020C53A4
_020C519C:
	mov r0, #0xa
	str r0, [r5, #8]
	b _020C53A4
_020C51A8:
	bl OS_GetTick
	ldr r4, [r5]
	mov r3, #0
	ldr r2, [r4, #8]
	ldr r4, [r4, #0xc]
	subs r7, r0, r2
	sbc r0, r1, r4
	mov r1, r0, lsl #6
	ldr r2, _020C53B8 ; =0x000082EA
	orr r1, r1, r7, lsr #26
	mov r0, r7, lsl #6
	bl _ll_udiv
	ldr r2, _020C53BC ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	movlo r0, #2
	strlo r0, [r5, #8]
	movhs r0, #5
	strhs r0, [r5, #8]
	b _020C53A4
_020C51F8:
	ldr r0, _020C53C0 ; =WDS_EndScan_CB
	mov r1, #6
	str r1, [r5, #8]
	bl WDS_EndScan
	cmp r0, #0
	movne r0, #0xa
	b _020C5398
_020C5214:
	add r0, r2, #0x10
	bl WDS_GetApInfoAll
	cmp r0, #0
	movne r0, #0xa
	mov r4, #0
	strne r0, [r5, #8]
	ldr r9, _020C53AC ; =gDwcWdsWork
	sub r1, r4, #1
	ldr r0, [r9]
	mov r5, r4
	str r1, [r0, #0x790]
	mov r8, #0x78
_020C5244:
	mul r7, r4, r8
	ldr r2, [r9]
	add r1, r2, r7
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _020C52A8
	ldrb r0, [r1, #0x7c]
	tst r0, #2
	beq _020C52A8
	ldrb r0, [r1, #0x7b]
	cmp r0, #3
	bhi _020C52A8
	add r0, r2, #0x36
	add r0, r0, r7
	bl WDS_IsAvailableForAutoConnect
	cmp r0, #0
	beq _020C52A8
	ldr r1, [r9]
	add r0, r1, r7
	ldrh r0, [r0, #0x14]
	cmp r0, r5
	strhs r4, [r1, #0x790]
	ldrhs r0, [r9]
	addhs r0, r0, r7
	ldrhsh r5, [r0, #0x14]
_020C52A8:
	add r4, r4, #1
	cmp r4, #0x10
	blt _020C5244
	ldr r4, _020C53AC ; =gDwcWdsWork
	mov r1, #8
	ldr r0, _020C53C4 ; =WDS_End_CB
	str r1, [r4, #8]
	bl WDS_End
	cmp r0, #0
	movne r0, #0xb
	strne r0, [r4, #8]
	b _020C53A4
_020C52D8:
	ldr r1, [r2, #0x790]
	cmp r1, #0
	movlt r0, #0xb
	strlt r0, [r5, #8]
	blt _020C53A4
	add r0, r2, #0x16
	mov r4, #0x78
	mla r0, r1, r4, r0
	mov r6, #0x20
	ldr r1, [r2]
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r2, r6
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x5a
	mla r0, r3, r4, r0
	add r1, r1, #0x20
	bl MI_CpuCopy8
	ldr r1, [r5]
	mov r2, #0xa
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrb r1, [r1, #0x7b]
	str r1, [r0, #0x40]
	ldr r1, [r5]
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrh r1, [r1, #0x82]
	strh r1, [r0, #0x44]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x36
	mla r0, r3, r4, r0
	add r1, r1, #0x46
	bl MI_CpuCopy8
	mov r6, #2
	b _020C53A4
_020C5380:
	ldr r0, _020C53C8 ; =WDS_Error_End_CB
	mov r1, #8
	str r1, [r5, #8]
	bl WDS_End
_020C5390:
	cmp r0, #0
	movne r0, #0xb
_020C5398:
	strne r0, [r5, #8]
	b _020C53A4
_020C53A0:
	mov r6, #3
_020C53A4:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C53AC: .word gDwcWdsWork
_020C53B0: .word WDS_Initialize_CB
_020C53B4: .word WDS_StartScan_CB
_020C53B8: .word 0x000082EA
_020C53BC: .word 0x00000BB8
_020C53C0: .word WDS_EndScan_CB
_020C53C4: .word WDS_End_CB
_020C53C8: .word WDS_Error_End_CB
	arm_func_end DWC_AC_ProcessGetWDSInfo

	arm_func_start DWC_AC_CancelGetWDSInfo
DWC_AC_CancelGetWDSInfo: ; 0x020C53CC
	ldr r0, _020C53E4 ; =gDwcWdsWork
	ldr r1, [r0, #8]
	cmp r1, #4
	moveq r1, #5
	streq r1, [r0, #8]
	bx lr
_020C53E4: .word gDwcWdsWork
	arm_func_end DWC_AC_CancelGetWDSInfo

	arm_func_start DWC_AC_CleanupGetWDSInfo
DWC_AC_CleanupGetWDSInfo: ; 0x020C53E8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C5438 ; =gDwcWdsWork
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020C5410
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl DWC_Free
	str r5, [r4, #4]
_020C5410:
	ldr r4, _020C5438 ; =gDwcWdsWork
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl DWC_Free
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020C5438: .word gDwcWdsWork
	arm_func_end DWC_AC_CleanupGetWDSInfo

	arm_static_func_start WDS_IsAvailableForAutoConnect
WDS_IsAvailableForAutoConnect: ; 0x020C543C
	mov r2, #0
_020C5440:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _020C5454
	cmp r1, #0x7e
	bls _020C545C
_020C5454:
	mov r0, #0
	bx lr
_020C545C:
	add r2, r2, #1
	cmp r2, #0xa
	blt _020C5440
	mov r0, #1
	bx lr
	arm_func_end WDS_IsAvailableForAutoConnect

	arm_static_func_start WDS_Initialize_CB
WDS_Initialize_CB: ; 0x020C5470
	ldr r0, _020C5480 ; =gDwcWdsWork
	mov r1, #2
	str r1, [r0, #8]
	bx lr
_020C5480: .word gDwcWdsWork
	arm_func_end WDS_Initialize_CB

	arm_static_func_start WDS_StartScan_CB
WDS_StartScan_CB: ; 0x020C5484
	ldr r0, _020C5494 ; =gDwcWdsWork
	mov r1, #4
	str r1, [r0, #8]
	bx lr
_020C5494: .word gDwcWdsWork
	arm_func_end WDS_StartScan_CB

	arm_static_func_start WDS_EndScan_CB
WDS_EndScan_CB: ; 0x020C5498
	ldr r0, _020C54A8 ; =gDwcWdsWork
	mov r1, #7
	str r1, [r0, #8]
	bx lr
_020C54A8: .word gDwcWdsWork
	arm_func_end WDS_EndScan_CB

	arm_static_func_start WDS_End_CB
WDS_End_CB: ; 0x020C54AC
	ldr r0, _020C54BC ; =gDwcWdsWork
	mov r1, #9
	str r1, [r0, #8]
	bx lr
_020C54BC: .word gDwcWdsWork
	arm_func_end WDS_End_CB

	arm_static_func_start WDS_Error_End_CB
WDS_Error_End_CB: ; 0x020C54C0
	ldr r0, _020C54D0 ; =gDwcWdsWork
	mov r1, #0xb
	str r1, [r0, #8]
	bx lr
_020C54D0: .word gDwcWdsWork
	arm_func_end WDS_Error_End_CB

	.bss
	.global gDwcWdsWork
gDwcWdsWork:
	.space 0x04
	.global wdsSysBuf
wdsSysBuf:
	.space 0x04
	.global gAppstate
gAppstate:
	.space 0x04
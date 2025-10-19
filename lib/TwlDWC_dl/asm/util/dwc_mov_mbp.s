
	.include "asm/macros/function.inc"
	.public DWCi_MOV_WH_MemInit
	.public FS_CloseFile
	.public FS_InitFile
	.public FS_OpenFile
	.public MB_CommGetChildUser
	.public MB_CommIsBootable
	.public MB_CommResponseRequest
	.public MB_CommSetParentStateCallback
	.public MB_DisconnectChild
	.public MB_EndToIdle
	.public MB_GetSegmentLength
	.public MB_Init
	.public MB_ReadSegment
	.public MB_RegisterFile
	.public MB_SetParentCommParam
	.public MB_StartParentFromIdle
	.public MI_CpuCopy8
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts
	.public OS_Terminate

	.text
	arm_func_start DWCi_MOV_MBP_MemInit
DWCi_MOV_MBP_MemInit: ; 0x02109998
	stmfd sp!, {r4, lr}
	ldr r4, _021099D0 ; =wb
	add r1, r0, #0x160
	str r0, [r4]
	add r0, r1, #0x1b000
	bl DWCi_MOV_WH_MemInit
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	ldr r0, [r4]
	add r0, r0, #0x1b000
	str r1, [r0, #0x144]
	ldmfd sp!, {r4, pc}
_021099D0: .word wb
	arm_func_end DWCi_MOV_MBP_MemInit

	arm_func_start DWCi_MOV_MBP_Init
DWCi_MOV_MBP_Init: ; 0x021099D4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldrb r3, [sp, #0x12]
	mov r4, r1
	ldr r2, _02109ADC ; =0x02FFFC80
	bic r1, r3, #0xf
	orr r1, r1, #1
	strb r1, [sp, #0x12]
	ldrb r3, [r2, #0x1a]
	mov r5, r0
	add r0, r2, #6
	add r1, sp, #0x14
	mov r2, #0x14
	strb r3, [sp, #0x13]
	bl MI_CpuCopy8
	ldrb r2, [sp, #0x12]
	ldr r0, _02109AE0 ; =wb
	add lr, sp, #4
	mov r1, #0
	ldr r0, [r0]
	bic r2, r2, #0xf0
	mov r12, r0
	strb r2, [sp, #0x12]
	strh r1, [lr]
	strh r1, [lr, #2]
	strh r1, [lr, #4]
	strh r1, [lr, #6]
	strh r1, [lr, #8]
	strh r1, [lr, #0xa]
	strh r1, [lr, #0xc]
	mov r3, #3
_02109A50:
	ldrh r1, [lr, #2]
	ldrh r2, [lr], #4
	subs r3, r3, #1
	strh r1, [r12, #2]
	strh r2, [r12], #4
	bne _02109A50
	ldrh r2, [lr]
	add r1, r0, #0x40
	add r1, r1, #0x10000
	strh r2, [r12]
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	mov r1, #2
	str r1, [sp]
	ldr r0, _02109AE0 ; =wb
	add r1, sp, #0x12
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #0x1b000
	ldr r0, [r0, #0x140]
	mov r3, r4
	bl MB_Init
	cmp r0, #0
	beq _02109AB4
	bl OS_Terminate
_02109AB4:
	mov r4, #1
	mov r1, r4
	mov r0, #0x100
	bl MB_SetParentCommParam
	ldr r0, _02109AE4 ; =ParentStateCallback
	bl MB_CommSetParentStateCallback
	mov r0, r4
	bl DWCi_MOV_MBP_ChangeState
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, pc}
_02109ADC: .word 0x02FFFC80
_02109AE0: .word wb
_02109AE4: .word ParentStateCallback
	arm_func_end DWCi_MOV_MBP_Init

	arm_func_start DWCi_MOV_MBP_Start
DWCi_MOV_MBP_Start: ; 0x02109AE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	bl DWCi_MOV_MBP_ChangeState
	mov r0, r4
	bl MB_StartParentFromIdle
	cmp r0, #0
	beq _02109B18
	mov r0, #7
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r3, r4, r5, pc}
_02109B18:
	mov r0, r5
	bl DWCi_MOV_MBP_RegistFile
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_MOV_MBP_Start

	arm_static_func_start DWCi_MOV_MBP_RegistFile
DWCi_MOV_MBP_RegistFile: ; 0x02109B30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	mov r6, r0
	ldr r0, [r6]
	mov r5, #0
	cmp r0, #0
	moveq r4, r5
	beq _02109B78
	add r4, sp, #0
	mov r0, r4
	bl FS_InitFile
	ldr r1, [r6]
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02109B78:
	mov r0, r4
	bl MB_GetSegmentLength
	cmp r0, #0
	beq _02109BE0
	ldr r7, _02109BFC ; =wb
	ldr r0, [r7]
	add r1, r0, #0x2c
	add r0, r0, #0x1b000
	str r1, [r0, #0x144]
	ldr r0, [r7]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	beq _02109BE0
	mov r0, r4
	mov r2, #0x10000
	bl MB_ReadSegment
	cmp r0, #0
	beq _02109BE0
	ldr r1, [r7]
	mov r0, r6
	add r1, r1, #0x1b000
	ldr r1, [r1, #0x144]
	bl MB_RegisterFile
	cmp r0, #0
	movne r5, #1
_02109BE0:
	add r0, sp, #0
	cmp r4, r0
	bne _02109BF0
	bl FS_CloseFile
_02109BF0:
	mov r0, r5
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109BFC: .word wb
	arm_func_end DWCi_MOV_MBP_RegistFile

	arm_func_start DWCi_MOV_MBP_AcceptChild
DWCi_MOV_MBP_AcceptChild: ; 0x02109C00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r1, r5
	mov r4, r0
	bl MB_CommResponseRequest
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mvn r0, r5, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109C9C ; =wb
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl MB_DisconnectChild
	ldmfd sp!, {r3, r4, r5, pc}
_02109C9C: .word wb
	arm_func_end DWCi_MOV_MBP_AcceptChild

	arm_func_start DWCi_MOV_MBP_KickChild
DWCi_MOV_MBP_KickChild: ; 0x02109CA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	bl MB_CommResponseRequest
	cmp r0, #0
	bne _02109D3C
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109D78 ; =wb
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl MB_DisconnectChild
	ldmfd sp!, {r3, r4, r5, pc}
_02109D3C:
	bl OS_DisableInterrupts
	ldr r2, _02109D78 ; =wb
	mov r1, #1
	ldr r5, [r2]
	mvn r1, r1, lsl r4
	ldrh r3, [r5, #4]
	mov r1, r1, lsl #0x10
	and r3, r3, r1, lsr #16
	strh r3, [r5, #4]
	ldr r3, [r2]
	ldrh r2, [r3, #2]
	and r1, r2, r1, lsr #16
	strh r1, [r3, #2]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02109D78: .word wb
	arm_func_end DWCi_MOV_MBP_KickChild

	arm_func_start DWCi_MOV_MBP_StartDownload
DWCi_MOV_MBP_StartDownload: ; 0x02109D7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #2
	mov r4, r0
	bl MB_CommResponseRequest
	cmp r0, #0
	bne _02109E18
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109E5C ; =wb
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl MB_DisconnectChild
	ldmfd sp!, {r3, r4, r5, pc}
_02109E18:
	bl OS_DisableInterrupts
	mov r12, #1
	ldr r2, _02109E5C ; =wb
	mvn r1, r12, lsl r4
	ldr r5, [r2]
	mov r1, r1, lsl #0x10
	ldrh r3, [r5, #6]
	mov r4, r12, lsl r4
	and r1, r3, r1, lsr #16
	strh r1, [r5, #6]
	ldr r3, [r2]
	mov r1, r4, lsl #0x10
	ldrh r2, [r3, #8]
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #8]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02109E5C: .word wb
	arm_func_end DWCi_MOV_MBP_StartDownload

	arm_func_start DWCi_MOV_MBP_StartDownloadAll
DWCi_MOV_MBP_StartDownloadAll: ; 0x02109E60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #3
	bl DWCi_MOV_MBP_ChangeState
	mov r5, #1
	ldr r7, _02109F3C ; =wb
	mov r4, r5
_02109E78:
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	tst r0, r4, lsl r5
	beq _02109F24
	ldrh r0, [r1, #4]
	tst r0, r4, lsl r5
	bne _02109F24
	ldrh r0, [r1, #6]
	tst r0, r4, lsl r5
	bne _02109F1C
	mvn r0, r4, lsl r5
	mov r6, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r7]
	ldrh r1, [r2, #2]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r7]
	ldrh r1, [r2, #4]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r7]
	ldrh r1, [r2, #8]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r7]
	ldrh r1, [r2, #0xa]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r7]
	ldrh r1, [r2, #0xc]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r5
	bl MB_DisconnectChild
	b _02109F24
_02109F1C:
	mov r0, r5
	bl DWCi_MOV_MBP_StartDownload
_02109F24:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #0x10
	blo _02109E78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109F3C: .word wb
	arm_func_end DWCi_MOV_MBP_StartDownloadAll

	arm_func_start DWCi_MOV_MBP_IsBootableAll
DWCi_MOV_MBP_IsBootableAll: ; 0x02109F40
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02109FA4 ; =wb
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #1
	mov r5, r6
_02109F64:
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	tst r0, r5, lsl r6
	beq _02109F88
	mov r0, r6
	bl MB_CommIsBootable
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_02109F88:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _02109F64
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02109FA4: .word wb
	arm_func_end DWCi_MOV_MBP_IsBootableAll

	arm_func_start DWCi_MOV_MBP_StartRebootAll
DWCi_MOV_MBP_StartRebootAll: ; 0x02109FA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #1
	ldr r4, _0210A09C ; =wb
	mov r8, #0
	mov r5, #3
	mov r6, r7
_02109FC0:
	ldr r0, [r4]
	mov r9, r6, lsl r7
	ldrh r0, [r0, #0xa]
	tst r0, r6, lsl r7
	beq _0210A068
	mov r0, r7
	mov r1, r5
	bl MB_CommResponseRequest
	cmp r0, #0
	movne r0, r9, lsl #0x10
	orrne r8, r8, r0, lsr #16
	bne _0210A068
	mvn r0, r9
	mov r9, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r7
	bl MB_DisconnectChild
_0210A068:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x10
	blo _02109FC0
	cmp r8, #0
	bne _0210A090
	mov r0, #7
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A090:
	mov r0, #4
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A09C: .word wb
	arm_func_end DWCi_MOV_MBP_StartRebootAll

	arm_func_start DWCi_MOV_MBP_Cancel
DWCi_MOV_MBP_Cancel: ; 0x0210A0A0
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl DWCi_MOV_MBP_ChangeState
	bl MB_EndToIdle
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_MBP_Cancel

	arm_static_func_start MBPi_CheckAllReboot
MBPi_CheckAllReboot: ; 0x0210A0B4
	stmfd sp!, {r3, lr}
	ldr r0, _0210A0E0 ; =wb
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #4
	ldreqh r1, [r2, #2]
	ldreqh r0, [r2, #0xc]
	cmpeq r1, r0
	ldmnefd sp!, {r3, pc}
	bl MB_EndToIdle
	ldmfd sp!, {r3, pc}
_0210A0E0: .word wb
	arm_func_end MBPi_CheckAllReboot

	arm_static_func_start ParentStateCallback
ParentStateCallback: ; 0x0210A0E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0210A3FC ; =wb
	mov r8, r0
	mov r7, r2
	cmp r1, #0xe
	mov r5, #1
	addls pc, pc, r1, lsl #2
	b _0210A3F4
_0210A104: ; jump table
	b _0210A3F4 ; case 0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 1
	b _0210A140 ; case 2
	b _0210A1C4 ; case 3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 6
	b _0210A2F8 ; case 7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 8
	b _0210A32C ; case 9
	b _0210A248 ; case 10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 11
	b _0210A364 ; case 12
	b _0210A3B4 ; case 13
	b _0210A2B0 ; case 14
_0210A140:
	bl DWCi_MOV_MBP_GetState
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r4]
	bl OS_DisableInterrupts
	mov r1, r5, lsl r8
	ldrh r2, [r6, #2]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r6, #2]
	bl OS_RestoreInterrupts
	sub r2, r8, #1
	mov r0, #0x1e
	mul r0, r2, r0
	ldr r1, [r4]
	add r2, r1, #0x24
	ldrb r1, [r7, #0xa]
	add r3, r2, r0
	strb r1, [r2, r0]
	ldrb r1, [r7, #0xb]
	strb r1, [r3, #1]
	ldrb r1, [r7, #0xc]
	strb r1, [r3, #2]
	ldrb r1, [r7, #0xd]
	strb r1, [r3, #3]
	ldrb r1, [r7, #0xe]
	strb r1, [r3, #4]
	ldrb r1, [r7, #0xf]
	strb r1, [r3, #5]
	ldr r1, [r4]
	add r0, r1, r0
	strh r8, [r0, #0x2a]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A1C4:
	bl DWCi_MOV_MBP_GetChildState
	cmp r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mvn r0, r5, lsl r8
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	bl MBPi_CheckAllReboot
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A248:
	bl DWCi_MOV_MBP_GetState
	cmp r0, #2
	beq _0210A260
	mov r0, r8
	bl DWCi_MOV_MBP_KickChild
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A260:
	ldr r3, [r4]
	mov r0, r5, lsl r8
	ldrh r2, [r3, #4]
	mov r1, r0, lsl #0x10
	mov r0, r8
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #4]
	bl DWCi_MOV_MBP_AcceptChild
	mov r0, r8
	bl MB_CommGetChildUser
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4]
	sub r2, r8, #1
	add r3, r1, #0xe
	mov r1, #0x1e
	mla r1, r2, r1, r3
	mov r2, #0x16
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A2B0:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #4]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #4]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #6]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #6]
	bl DWCi_MOV_MBP_GetState
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl DWCi_MOV_MBP_StartDownload
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A2F8:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #8]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #8]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #0xa]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A32C:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #0xa]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #0xa]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #0xc]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0xc]
	bl MBPi_CheckAllReboot
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A364:
	bl DWCi_MOV_MBP_GetState
	cmp r0, #4
	bne _0210A378
	mov r0, #5
	b _0210A37C
_0210A378:
	mov r0, #0
_0210A37C:
	bl DWCi_MOV_MBP_ChangeState
	ldr r0, [r4]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x144]
	ldr r0, [r4]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x140]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x140]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3B4:
	ldrh r0, [r7]
	cmp r0, #8
	bgt _0210A3E0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #2
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmpne r0, #2
	beq _0210A3E8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3E0:
	cmp r0, #9
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3E8:
	mov r0, #7
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3F4:
	bl OS_Terminate
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3FC: .word wb
	arm_func_end ParentStateCallback

	arm_static_func_start DWCi_MOV_MBP_ChangeState
DWCi_MOV_MBP_ChangeState: ; 0x0210A400
	ldr r1, _0210A410 ; =wb
	ldr r1, [r1]
	strh r0, [r1]
	bx lr
_0210A410: .word wb
	arm_func_end DWCi_MOV_MBP_ChangeState

	arm_func_start DWCi_MOV_MBP_GetState
DWCi_MOV_MBP_GetState: ; 0x0210A414
	ldr r0, _0210A424 ; =wb
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
_0210A424: .word wb
	arm_func_end DWCi_MOV_MBP_GetState

	arm_func_start DWCi_MOV_MBP_GetChildBmp
DWCi_MOV_MBP_GetChildBmp: ; 0x0210A428
	ldr r2, _0210A474 ; =wb
	ldr r1, _0210A478 ; =BITMAP_TABLE
	ldr r12, [r2]
	ldr r2, _0210A47C ; =BITMAP_TABLE
	add r3, r12, #2
	str r3, [r1]
	add r3, r12, #4
	str r3, [r1, #4]
	add r3, r12, #6
	str r3, [r1, #8]
	add r3, r12, #8
	str r3, [r1, #0xc]
	add r3, r12, #0xa
	str r3, [r1, #0x10]
	add r3, r12, #0xc
	str r3, [r1, #0x14]
	ldr r0, [r2, r0, lsl #2]
	ldrh r0, [r0]
	bx lr
_0210A474: .word wb
_0210A478: .word BITMAP_TABLE
_0210A47C: .word BITMAP_TABLE
	arm_func_end DWCi_MOV_MBP_GetChildBmp

	arm_func_start DWCi_MOV_MBP_GetChildState
DWCi_MOV_MBP_GetChildState: ; 0x0210A480
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _0210A544 ; =wb
	mov r4, #1
	ldr r2, [r1]
	mov r3, r4, lsl r5
	ldrh r1, [r2, #2]
	mov r5, r3, lsl #0x10
	mov r6, r0
	tst r1, r5, lsr #16
	bne _0210A4C4
	bl OS_RestoreInterrupts
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0210A4C4:
	mov r0, r2
	add r1, sp, #0
	mov r2, #0xe
	bl MI_CpuCopy8
	mov r0, r6
	bl OS_RestoreInterrupts
	ldrh r0, [sp, #4]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #6]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #8]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #0xa]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #0xc]
	tst r0, r5, lsr #16
	movne r4, #6
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0210A544: .word wb
	arm_func_end DWCi_MOV_MBP_GetChildState

	arm_func_start DWCi_MOV_MBP_GetChildInfo
DWCi_MOV_MBP_GetChildInfo: ; 0x0210A548
	ldr r1, _0210A574 ; =wb
	mov r2, #1
	ldr r3, [r1]
	ldrh r1, [r3, #2]
	tst r1, r2, lsl r0
	subne r1, r0, #1
	addne r2, r3, #0xe
	movne r0, #0x1e
	mlane r0, r1, r0, r2
	moveq r0, #0
	bx lr
_0210A574: .word wb
	arm_func_end DWCi_MOV_MBP_GetChildInfo

	arm_func_start DWCi_MOV_MBP_GetPlayerNo
DWCi_MOV_MBP_GetPlayerNo: ; 0x0210A578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0210A61C ; =wb
	mov lr, #1
	ldr r5, [r1]
	mov r12, lr
	ldrh r4, [r5, #2]
	add r1, r5, #0x24
	mov r6, #0x1e
_0210A598:
	tst r4, r12, lsl lr
	beq _0210A600
	sub r2, lr, #1
	mul r3, r2, r6
	ldrb r8, [r0]
	ldrb r7, [r1, r3]
	add r2, r1, r3
	cmp r8, r7
	ldreqb r8, [r0, #1]
	ldreqb r7, [r2, #1]
	cmpeq r8, r7
	ldreqb r8, [r0, #2]
	ldreqb r7, [r2, #2]
	cmpeq r8, r7
	ldreqb r8, [r0, #3]
	ldreqb r7, [r2, #3]
	cmpeq r8, r7
	ldreqb r8, [r0, #4]
	ldreqb r7, [r2, #4]
	cmpeq r8, r7
	ldreqb r7, [r0, #5]
	ldreqb r2, [r2, #5]
	cmpeq r7, r2
	addeq r0, r5, r3
	ldreqh r0, [r0, #0x2a]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A600:
	add r2, lr, #1
	mov r2, r2, lsl #0x10
	mov lr, r2, lsr #0x10
	cmp lr, #2
	blo _0210A598
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A61C: .word wb
	arm_func_end DWCi_MOV_MBP_GetPlayerNo

	.data
ov17_021135D4:
	.asciz "MB_COMM_PSTATE_END"
	.balign 4, 0
ov17_021135E8:
	.asciz "MB_COMM_PSTATE_NONE"
	.balign 4, 0
ov17_021135FC:
	.asciz "MB_COMM_PSTATE_ERROR"
	.balign 4, 0
ov17_02113614:
	.asciz "MB_COMM_PSTATE_KICKED"
	.balign 4, 0
ov17_0211362C:
	.asciz "DWCi_MOV_MBP_STATE_STOP"
	.balign 4, 0
BITMAP_TABLE: ;_ZZ24DWCi_MOV_MBP_GetChildBmp23@enum\$9159dwc_mov_mbp_cE12BITMAP_TABLE
	.word 0, 0, 0, 0, 0, 0
_ZZ24DWCi_MOV_MBP_ChangeStatetE10STATE_NAME:
	.word ov17_0211362C, ov17_021136B8, ov17_021136EC, ov17_021138A0
	.word ov17_02113820, ov17_021137B0, ov17_02113740, ov17_02113724
_ZZ19ParentStateCallbacktmPvE17MB_CALLBACK_TABLE:
	.word ov17_021135E8, ov17_02113840, ov17_021136D0, ov17_02113794, ov17_02113614
	.word ov17_021137CC, ov17_021137E8, ov17_02113860, ov17_02113804, ov17_02113880
	.word ov17_02113708, ov17_0211375C, ov17_021135D4, ov17_021135FC, ov17_02113778
ov17_021136B8:
	.asciz "DWCi_MOV_MBP_STATE_IDLE"
	.balign 4, 0
ov17_021136D0:
	.asciz "MB_COMM_PSTATE_CONNECTED"
	.balign 4, 0
ov17_021136EC:
	.asciz "DWCi_MOV_MBP_STATE_ENTRY"
	.balign 4, 0
ov17_02113708:
	.asciz "MB_COMM_PSTATE_REQUESTED"
	.balign 4, 0
ov17_02113724:
	.asciz "DWCi_MOV_MBP_STATE_ERROR"
	.balign 4, 0
ov17_02113740:
	.asciz "DWCi_MOV_MBP_STATE_CANCEL"
	.balign 4, 0
ov17_0211375C:
	.asciz "MB_COMM_PSTATE_MEMBER_FULL"
	.balign 4, 0
ov17_02113778:
	.asciz "MB_COMM_PSTATE_WAIT_TO_SEND"
	.balign 4, 0
ov17_02113794:
	.asciz "MB_COMM_PSTATE_DISCONNECTED"
	.balign 4, 0
ov17_021137B0:
	.asciz "DWCi_MOV_MBP_STATE_COMPLETE"
	.balign 4, 0
ov17_021137CC:
	.asciz "MB_COMM_PSTATE_REQ_ACCEPTED"
	.balign 4, 0
ov17_021137E8:
	.asciz "MB_COMM_PSTATE_SEND_PROCEED"
	.balign 4, 0
ov17_02113804:
	.asciz "MB_COMM_PSTATE_BOOT_REQUEST"
	.balign 4, 0
ov17_02113820:
	.asciz "DWCi_MOV_MBP_STATE_REBOOTING"
	.balign 4, 0
ov17_02113840:
	.asciz "MB_COMM_PSTATE_INIT_COMPLETE"
	.balign 4, 0
ov17_02113860:
	.asciz "MB_COMM_PSTATE_SEND_COMPLETE"
	.balign 4, 0
ov17_02113880:
	.asciz "MB_COMM_PSTATE_BOOT_STARTABLE"
	.balign 4, 0
ov17_021138A0:
	.asciz "DWCi_MOV_MBP_STATE_DATASENDING"

	.bss
wb:
	.space 0x04


	.include "asm/macros/function.inc"
	.public DWCi_BACKUPlRead
	.public DWCi_MOV_MBP_Cancel
	.public DWCi_MOV_MBP_GetChildBmp
	.public DWCi_MOV_MBP_GetChildInfo
	.public DWCi_MOV_MBP_GetPlayerNo
	.public DWCi_MOV_MBP_GetState
	.public DWCi_MOV_MBP_Init
	.public DWCi_MOV_MBP_IsBootableAll
	.public DWCi_MOV_MBP_MemInit
	.public DWCi_MOV_MBP_Start
	.public DWCi_MOV_MBP_StartDownloadAll
	.public DWCi_MOV_MBP_StartRebootAll
	.public DWCi_MOV_WH_End
	.public DWCi_MOV_WH_Finalize
	.public DWCi_MOV_WH_GetBitmap
	.public DWCi_MOV_WH_GetMeasureChannel
	.public DWCi_MOV_WH_GetSharedDataAdr
	.public DWCi_MOV_WH_GetSystemState
	.public DWCi_MOV_WH_Initialize
	.public DWCi_MOV_WH_ParentConnect
	.public DWCi_MOV_WH_Reset
	.public DWCi_MOV_WH_SetGgid
	.public DWCi_MOV_WH_SetJudgeAcceptFunc
	.public DWCi_MOV_WH_StartMeasureChannel
	.public DWCi_MOV_WH_StepDS
	.public DWCi_SETTINGlGetMemMap
	.public MB_CommGetChildUser
	.public MB_EndToIdle
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_GetTick
	.public OS_Terminate
	.public WM_GetNextTgid

	.text
	arm_func_start DWCi_MOVInit
DWCi_MOVInit: ; 0x0210B7AC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0210B888 ; =0x021162C8
	mov r4, r1
	str r0, [r5]
	add r0, r0, #0xb00
	bl DWCi_MOV_MBP_MemInit
	ldr r0, [r5]
	mov r2, #0
	add r0, r0, #0x600
	strh r2, [r0, #0x48]
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #0x600
	strh r2, [r0, #0x4a]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldr r0, [r5]
	strb r1, [r0, #0xa91]
	ldr r0, [r5]
	str r2, [r0, #0xa9c]
	bl Parent_InitDataShare
	ldr r2, [r4]
	ldr r0, [r5]
	mov r1, #2
	str r2, [r0, #0xab4]
	ldr r2, [r4, #4]
	ldr r0, [r5]
	str r2, [r0, #0xab8]
	ldr r2, [r4, #8]
	ldr r0, [r5]
	str r2, [r0, #0xabc]
	ldr r2, [r4, #0xc]
	ldr r0, [r5]
	str r2, [r0, #0xac0]
	ldr r2, [r4, #0x10]
	ldr r0, [r5]
	str r2, [r0, #0xac4]
	ldr r2, [r4, #0x14]
	ldr r0, [r5]
	str r2, [r0, #0xac8]
	ldrb r2, [r4, #0x18]
	ldr r0, [r5]
	strb r2, [r0, #0xa92]
	ldr r0, [r5]
	strb r1, [r0, #0xacc]
	bl OS_GetTick
	ldr r0, [r5]
	add r0, r0, #0x24c
	add r0, r0, #0x400
	bl DWCi_BACKUPlRead
	bl OS_GetTick
	bl DWCi_SETTINGlGetMemMap
	ldr r1, [r5]
	str r0, [r1, #0xaa4]
	ldmfd sp!, {r3, r4, r5, pc}
_0210B888: .word wk
	arm_func_end DWCi_MOVInit

	arm_func_start DWCi_MOVFinalize
DWCi_MOVFinalize: ; 0x0210B88C
	stmfd sp!, {r3, lr}
	ldr r0, _0210B960 ; =0x021162C8
	ldr r2, [r0]
	ldrb r1, [r2, #0xa90]
	cmp r1, #1
	cmpne r1, #0x14
	cmpne r1, #0x17
	cmpne r1, #0x1a
	cmpne r1, #0x1d
	bne _0210B8D4
	mov r1, #0x22
	strb r1, [r2, #0xa90]
	ldr r0, _0210B960 ; =0x021162C8
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0xaac]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0210B8D4:
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	beq _0210B8EC
	cmp r1, #0xd
	bne _0210B92C
_0210B8EC:
	cmp r1, #4
	bne _0210B904
	ldr r0, [r2, #0xa98]
	cmp r0, #6
	movlo r0, #0
	ldmlofd sp!, {r3, pc}
_0210B904:
	bl MB_EndToIdle
	ldr r0, _0210B960 ; =0x021162C8
	mov r3, #0x10
	ldr r1, [r0]
	mov r2, #2
	strb r3, [r1, #0xa90]
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xaac]
	ldmfd sp!, {r3, pc}
_0210B92C:
	add r0, r1, #0xf7
	and r0, r0, #0xff
	cmp r0, #1
	movls r0, #0x20
	strlsb r0, [r2, #0xa90]
	movls r0, #1
	ldmlsfd sp!, {r3, pc}
	cmp r1, #0xc
	moveq r0, #0x22
	streqb r0, [r2, #0xa90]
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0210B960: .word wk
	arm_func_end DWCi_MOVFinalize

	arm_static_func_start _DWCi_MOVPrepare
_DWCi_MOVPrepare: ; 0x0210B964
	stmfd sp!, {r4, lr}
	ldr r4, _0210B9D4 ; =0x021162C8
	ldr r0, [r4]
	ldr r0, [r0, #0xac8]
	bl DWCi_MOV_WH_SetGgid
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0xa90]
	bl WM_GetNextTgid
	ldr r1, [r4]
	mov r2, #0x40
	add r1, r1, #0x600
	strh r0, [r1, #0x48]
	ldr r1, [r4]
	ldr r0, [r1, #0xaa4]
	add r1, r1, #0xa50
	bl MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #0xa93]
	ldr r0, [r4]
	str r1, [r0, #0x204]
	ldr r0, [r4]
	add r0, r0, #0x600
	ldrh r1, [r0, #0x48]
	add r1, r1, #1
	strh r1, [r0, #0x48]
	ldmfd sp!, {r4, pc}
_0210B9D4: .word wk
	arm_func_end _DWCi_MOVPrepare

	arm_func_start DWCi_MOVStartAdmitChild
DWCi_MOVStartAdmitChild: ; 0x0210B9D8
	stmfd sp!, {r3, lr}
	ldr r0, _0210BA1C ; =0x021162C8
	ldr r0, [r0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #1
	cmpne r0, #0x1a
	cmpne r0, #0x1d
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl _DWCi_MOVPrepare
	bl DWCi_MOV_WH_Initialize
	ldr r0, _0210BA1C ; =0x021162C8
	mov r2, #2
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BA1C: .word wk
	arm_func_end DWCi_MOVStartAdmitChild

	arm_func_start DWCi_MOVStartDownloadandBootChild
DWCi_MOVStartDownloadandBootChild: ; 0x0210BA20
	stmfd sp!, {r3, lr}
	ldr r0, _0210BA50 ; =0x021162C8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #5
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	strb r0, [r1, #0xa90]
	bl DWCi_MOV_MBP_StartDownloadAll
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0210BA50: .word wk
	arm_func_end DWCi_MOVStartDownloadandBootChild

	arm_func_start DWCi_MOVFramework
DWCi_MOVFramework: ; 0x0210BA54
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0210BD80 ; =0x021162C8
	mov r4, #0
	ldr r0, [r5]
	ldrb r1, [r0, #0xa90]
	cmp r1, #0x22
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0210BA74: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0210BB00 ; case 1
	b _0210BB30 ; case 2
	b _0210BB38 ; case 3
	b _0210BB4C ; case 4
	b _0210BB60 ; case 5
	b _0210BB60 ; case 6
	b _0210BB68 ; case 7
	b _0210BB70 ; case 8
	b _0210BB70 ; case 9
	b _0210BB70 ; case 10
	b _0210BB78 ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, pc} ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, pc} ; case 15
	b _0210BB80 ; case 16
	b _0210BB94 ; case 17
	b _0210BBB0 ; case 18
	b _0210BBCC ; case 19
	ldmfd sp!, {r3, r4, r5, pc} ; case 20
	b _0210BC00 ; case 21
	b _0210BC1C ; case 22
	ldmfd sp!, {r3, r4, r5, pc} ; case 23
	b _0210BC50 ; case 24
	b _0210BC6C ; case 25
	ldmfd sp!, {r3, r4, r5, pc} ; case 26
	b _0210BCA0 ; case 27
	b _0210BCBC ; case 28
	ldmfd sp!, {r3, r4, r5, pc} ; case 29
	b _0210BD78 ; case 30
	ldmfd sp!, {r3, r4, r5, pc} ; case 31
	b _0210BD28 ; case 32
	b _0210BD44 ; case 33
	ldmfd sp!, {r3, r4, r5, pc} ; case 34
_0210BB00:
	ldrb r1, [r0, #0xaac]
	cmp r1, #1
	bne _0210BB18
	strb r4, [r0, #0xaac]
	bl DWCi_MOVStartAdmitChild
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB18:
	cmp r1, #2
	streqb r4, [r0, #0xaac]
	ldreq r0, [r5]
	moveq r1, #0x22
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB30:
	bl _DWCi_MOVSearchChannel
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB38:
	bl _DWCi_MOVStartWaitChild
	ldr r0, [r5]
	mov r1, #4
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB4C:
	ldr r1, [r0, #0xa98]
	add r1, r1, #1
	str r1, [r0, #0xa98]
	bl _DWCi_MOV_WaitandDownloadandBoot_Child
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB60:
	bl _DWCi_MOV_WaitandDownloadandBoot_Child
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB68:
	bl _DWCi_MOV_ReadyMovUserID
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB70:
	bl _DWCi_MOV_MovUserID
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB78:
	bl _DWCi_MOV_EraseFlashData
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB80:
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	mov r1, #0x11
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB94:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl _DWCi_MOVEnd
	ldmfd sp!, {r3, r4, r5, pc}
_0210BBB0:
	bl MB_EndToIdle
	ldr r0, [r5]
	mov r1, #0x16
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BBCC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_End
	ldr r0, [r5]
	mov r1, #0x14
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC00:
	bl DWCi_MOV_WH_Finalize
	ldr r0, [r5]
	mov r1, #0x16
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC1C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_End
	ldr r0, [r5]
	mov r1, #0x17
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC50:
	bl DWCi_MOV_WH_Finalize
	ldr r0, [r5]
	mov r1, #0x19
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC6C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_End
	ldr r0, [r5]
	mov r1, #0x1a
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCA0:
	bl DWCi_MOV_WH_Finalize
	ldr r0, [r5]
	mov r1, #0x1c
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCBC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #1
	bne _0210BCF0
	bl DWCi_MOV_WH_End
	ldr r0, [r5]
	mov r1, #0x1d
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCF0:
	ldr r1, [r5]
	ldr r0, _0210BD84 ; =0x88888889
	ldr r3, [r1, #0xa9c]
	mov r2, #0x1e
	umull r0, r1, r3, r0
	mov r1, r1, lsr #4
	umull r0, r1, r2, r1
	sub r1, r3, r0
	cmp r1, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r3, #0x37
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_Finalize
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD28:
	bl DWCi_MOV_WH_Finalize
	ldr r0, [r5]
	mov r1, #0x21
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD44:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_End
	ldr r0, [r5]
	mov r1, #0x22
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD78:
	bl DWCi_MOV_WH_Finalize
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD80: .word wk
_0210BD84: .word 0x88888889
	arm_func_end DWCi_MOVFramework

	arm_func_start DWCi_MOVGetStatus
DWCi_MOVGetStatus: ; 0x0210BD88
	ldr r2, _0210BDC8 ; =0x021162C8
	ldr r3, [r2]
	ldrb r3, [r3, #0xa90]
	strb r3, [r0]
	ldr r0, [r2]
	ldrb r2, [r0, #0xa90]
	ldrb r0, [r0, #0xa91]
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	strb r0, [r1]
	ldr r0, _0210BDC8 ; =0x021162C8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	strb r0, [r1, #0xa91]
	bx lr
_0210BDC8: .word wk
	arm_func_end DWCi_MOVGetStatus

	arm_func_start DWCi_GetChildInfo
DWCi_GetChildInfo: ; 0x0210BDCC
	ldr r12, _0210BDD8 ; = MB_CommGetChildUser
	mov r0, #1
	bx r12
_0210BDD8: .word MB_CommGetChildUser
	arm_func_end DWCi_GetChildInfo

	arm_static_func_start _DWCi_MOVSearchChannel
_DWCi_MOVSearchChannel: ; 0x0210BDDC
	stmfd sp!, {r3, lr}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0210BE78
_0210BDF0: ; jump table
	b _0210BE50 ; case 0
	b _0210BE18 ; case 1
	b _0210BE78 ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	b _0210BE78 ; case 4
	b _0210BE78 ; case 5
	b _0210BE78 ; case 6
	b _0210BE20 ; case 7
	b _0210BE78 ; case 8
	b _0210BE70 ; case 9
_0210BE18:
	bl DWCi_MOV_WH_StartMeasureChannel
	ldmfd sp!, {r3, pc}
_0210BE20:
	bl DWCi_MOV_WH_GetMeasureChannel
	ldr r2, _0210BE80 ; =0x021162C8
	mov r12, #0
	ldr r1, [r2]
	mov r3, #3
	add r1, r1, #0x600
	strh r0, [r1, #0x4a]
	ldr r0, [r2]
	str r12, [r0, #0xa98]
	ldr r0, [r2]
	strb r3, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BE50:
	ldr r0, _0210BE80 ; =0x021162C8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	str r3, [r2, #0xa98]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BE70:
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210BE78:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_0210BE80: .word wk
	arm_func_end _DWCi_MOVSearchChannel

	arm_static_func_start _DWCi_MOVStartWaitChild
_DWCi_MOVStartWaitChild: ; 0x0210BE84
	ldr r0, _0210BEA0 ; =0x021162C8
	ldr r12, _0210BEA4 ; =DWCi_MOV_MBP_Init
	ldr r2, [r0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x48]
	ldr r0, [r2, #0xac8]
	bx r12
_0210BEA0: .word wk
_0210BEA4: .word DWCi_MOV_MBP_Init
	arm_func_end _DWCi_MOVStartWaitChild

	arm_static_func_start _DWCi_MOV_WaitandDownloadandBoot_Child
_DWCi_MOV_WaitandDownloadandBoot_Child: ; 0x0210BEA8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210C02C ; =0x021162C8
	bl DWCi_MOV_MBP_GetState
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0210BEC0: ; jump table
	b _0210BFE4 ; case 0
	b _0210BEE0 ; case 1
	b _0210BEFC ; case 2
	b _0210BF78 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _0210BFC0 ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _0210BFD0 ; case 7
_0210BEE0:
	ldr r2, [r4]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x4a]
	add r0, r2, #0x2b4
	add r0, r0, #0x800
	bl DWCi_MOV_MBP_Start
	ldmfd sp!, {r3, r4, r5, pc}
_0210BEFC:
	mov r5, #2
	mov r0, r5
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	ldrne r0, [r4]
	movne r1, #5
	strneb r1, [r0, #0xa90]
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	bne _0210BF3C
	mov r0, #4
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	beq _0210BF4C
_0210BF3C:
	ldr r0, [r4]
	mov r1, #6
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF4C:
	ldr r0, [r4]
	ldrb r0, [r0, #0xa90]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #0xd
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF78:
	bl DWCi_MOV_MBP_IsBootableAll
	cmp r0, #0
	beq _0210BF8C
	bl DWCi_MOV_MBP_StartRebootAll
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF8C:
	ldr r0, [r4]
	ldrb r0, [r0, #0xa90]
	add r0, r0, #0xfa
	and r0, r0, #0xff
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #0x12
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFC0:
	ldr r0, [r4]
	mov r1, #7
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFD0:
	bl DWCi_MOV_MBP_Cancel
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFE4:
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #0
	beq _0210C00C
	cmp r0, #1
	beq _0210C004
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _0210C01C
_0210C004:
	bl DWCi_MOV_WH_End
	ldmfd sp!, {r3, r4, r5, pc}
_0210C00C:
	ldr r0, [r4]
	mov r1, #0x1f
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210C01C:
	ldr r0, [r4]
	mov r1, #0x1f
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210C02C: .word wk
	arm_func_end _DWCi_MOV_WaitandDownloadandBoot_Child

	arm_static_func_start _DWCi_MOV_ReadyMovUserID
_DWCi_MOV_ReadyMovUserID: ; 0x0210C030
	stmfd sp!, {r3, lr}
	bl Parent_InitDataShare
	ldr r0, _0210C054 ; =JudgeConnectableChild
	bl DWCi_MOV_WH_SetJudgeAcceptFunc
	ldr r0, _0210C058 ; =0x021162C8
	mov r1, #8
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210C054: .word JudgeConnectableChild
_0210C058: .word wk
	arm_func_end _DWCi_MOV_ReadyMovUserID

	arm_static_func_start _DWCi_MOV_MovUserID
_DWCi_MOV_MovUserID: ; 0x0210C05C
	stmfd sp!, {r4, lr}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0210C070: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0210C08C ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0210C0B8 ; case 4
	b _0210C0B8 ; case 5
	b _0210C0B8 ; case 6
_0210C08C:
	ldr r1, _0210C1EC ; =0x021162C8
	mov r0, #4
	ldr r1, [r1]
	add r1, r1, #0x600
	ldrh r3, [r1, #0x48]
	ldrh r2, [r1, #0x4a]
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl DWCi_MOV_WH_ParentConnect
	ldmfd sp!, {r4, pc}
_0210C0B8:
	ldr r4, _0210C1EC ; =0x021162C8
	mov r0, #0
	ldr r2, [r4]
	add r1, r2, #0x200
	ldrh r1, [r1]
	ldr r12, [r2, #0xaa4]
	mov r3, r1, lsr #0x1f
	rsb r2, r3, r1, lsl #28
	add r2, r3, r2, ror #28
	add r2, r12, r2, lsl #6
	bl Parent_StepDataShare
	bl Parent_data_receive_progress
	ldr r1, [r4]
	ldrb r0, [r1, #0xa90]
	cmp r0, #0x1b
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1, #0x204]
	cmp r0, #0x1e0
	movhi r0, #0x1b
	strhib r0, [r1, #0xa90]
	ldmhifd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0x10
	beq _0210C124
	bl Parent_get_child_data_kind
	cmp r0, #0x20
	bne _0210C13C
_0210C124:
	bl Parent_get_child_data_kind
	ldr r0, _0210C1EC ; =0x021162C8
	mov r1, #0xa
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r4, pc}
_0210C13C:
	bl Parent_get_child_data_kind
	cmp r0, #0x40
	ldreq r0, [r4]
	moveq r1, #0xb
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0xff
	ldreq r0, [r4]
	moveq r1, #0x1b
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0x50
	ldreq r0, [r4]
	moveq r1, #0x15
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0x60
	ldreq r0, [r4]
	moveq r1, #0x18
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0x70
	ldreq r0, [r4]
	moveq r1, #0x1b
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #8
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl Parent_get_child_data_kind
	cmp r0, #0xbd
	ldr r0, [r4]
	moveq r1, #9
	streqb r1, [r0, #0xa90]
	movne r1, #0x1f
	strneb r1, [r0, #0xa90]
	ldmfd sp!, {r4, pc}
_0210C1EC: .word wk
	arm_func_end _DWCi_MOV_MovUserID

	arm_static_func_start _DWCi_MOV_EraseFlashData
_DWCi_MOV_EraseFlashData: ; 0x0210C1F0
	ldr r0, _0210C204 ; =0x021162C8
	mov r1, #0xc
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	bx lr
_0210C204: .word wk
	arm_func_end _DWCi_MOV_EraseFlashData

	arm_static_func_start _DWCi_MOVEnd
_DWCi_MOVEnd: ; 0x0210C208
	stmfd sp!, {r3, lr}
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_MOV_WH_End
	ldr r1, _0210C234 ; =0x021162C8
	mov r0, #1
	ldr r1, [r1]
	strb r0, [r1, #0xa90]
	ldmfd sp!, {r3, pc}
_0210C234: .word wk
	arm_func_end _DWCi_MOVEnd

	arm_static_func_start JudgeConnectableChild
JudgeConnectableChild: ; 0x0210C238
	stmfd sp!, {r4, lr}
	add r0, r0, #0xa
	bl DWCi_MOV_MBP_GetPlayerNo
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_MOV_MBP_GetChildInfo
	ldr r1, _0210C270 ; =0x021162C8
	sub r2, r4, #1
	ldr r1, [r1]
	add r1, r1, r2, lsl #2
	str r0, [r1, #0xaa0]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0210C270: .word wk
	arm_func_end JudgeConnectableChild

	arm_static_func_start Parent_InitDataShare
Parent_InitDataShare: ; 0x0210C274
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0210C2B4 ; =0x021162C8
	mov r6, #0
	ldr r0, [r4]
	mov r5, #0x100
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x100
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r0, [r4]
	str r0, [r0, #0xab0]
	ldmfd sp!, {r4, r5, r6, pc}
_0210C2B4: .word wk
	arm_func_end Parent_InitDataShare

	arm_static_func_start Parent_StepDataShare
Parent_StepDataShare: ; 0x0210C2B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r3, _0210C400 ; =0x021162C8
	ldr r5, [r3]
	ldrb r4, [r5, #0xa93]
	cmp r4, #1
	bne _0210C300
	ldr r4, [r5, #0xab0]
	strh r0, [r4]
	ldr r4, [r3]
	mov r0, r2
	ldr r4, [r4, #0xab0]
	mov r2, #0x40
	strh r1, [r4, #2]
	ldr r1, [r3]
	ldr r1, [r1, #0xab0]
	add r1, r1, #4
	bl MI_CpuCopy8
	b _0210C32C
_0210C300:
	ldr r0, [r5, #0x204]
	mov r1, #0xbc
	add r0, r0, #1
	str r0, [r5, #0x204]
	ldr r0, [r3]
	ldr r0, [r0, #0xab0]
	strh r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, #0xa92]
	ldr r0, [r0, #0xab0]
	strb r1, [r0, #4]
_0210C32C:
	bl DWCi_MOV_WH_GetSystemState
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _0210C400 ; =0x021162C8
	ldr r0, [r4]
	bl DWCi_MOV_WH_StepDS
	ldr r1, [r4]
	cmp r0, #0
	ldreq r0, [r1, #0x204]
	addeq r0, r0, #4
	streq r0, [r1, #0x204]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r1, #0xa93]
	cmp r0, #0
	ldreq r0, [r1, #0x204]
	addeq r0, r0, #1
	streq r0, [r1, #0x204]
	beq _0210C394
	mov r0, #0
	str r0, [r1, #0x204]
	bl DWCi_MOV_WH_GetBitmap
	cmp r0, #3
	ldrne r0, [r4]
	movne r1, #0x1b
	strneb r1, [r0, #0xa90]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210C394:
	mov r7, #0
	mov r6, #0x44
	ldr r9, _0210C400 ; =0x021162C8
	mov r4, r7
	mov r5, #1
	mov r8, r6
_0210C3AC:
	mov r0, r7
	bl DWCi_MOV_WH_GetSharedDataAdr
	cmp r0, #0
	ldreq r0, [r9]
	addeq r0, r0, r7, lsl #2
	streq r4, [r0, #0x208]
	beq _0210C3E8
	ldr r1, [r9]
	mov r2, r6
	add r1, r1, #0x100
	mla r1, r7, r8, r1
	bl MI_CpuCopy8
	ldr r0, [r9]
	add r0, r0, r7, lsl #2
	str r5, [r0, #0x208]
_0210C3E8:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #2
	blo _0210C3AC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210C400: .word wk
	arm_func_end Parent_StepDataShare

	arm_static_func_start Parent_data_receive_progress
Parent_data_receive_progress: ; 0x0210C404
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r12, #0
	ldr r4, _0210C4E4 ; =0x021162C8
	mov r0, #1
	mov r5, r12
	mov r1, #0xbc
	mov r2, r12
	mov lr, #0x44
_0210C424:
	ldr r3, [r4]
	add r6, r3, r12, lsl #2
	ldr r6, [r6, #0x208]
	cmp r6, #0
	beq _0210C4D4
	mul r7, r12, lr
	cmp r12, #1
	add r8, r3, #0x100
	bne _0210C4D4
	ldrb r6, [r3, #0xa93]
	cmp r6, #1
	bne _0210C4A4
	ldrh r6, [r8, r7]
	cmp r6, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r3, #0xa94]
	add r6, r6, #1
	str r6, [r3, #0xa94]
	ldr r6, [r4]
	ldr r3, [r6, #0xa94]
	tst r3, #1
	bne _0210C4D4
	add r3, r6, #0x200
	ldrh r6, [r3]
	add r6, r6, #1
	strh r6, [r3]
	ldr r3, [r4]
	add r3, r3, #0x200
	ldrh r6, [r3]
	cmp r6, #0x24
	strhsh r2, [r3]
	b _0210C4D4
_0210C4A4:
	add r3, r3, #0x200
	strh r1, [r3, #2]
	ldrh r3, [r8, r7]
	cmp r3, #0xbd
	bne _0210C4D4
	ldr r3, [r4]
	strb r0, [r3, #0xa93]
	ldr r3, [r4]
	add r3, r3, #0x200
	strh r5, [r3]
	ldr r3, [r4]
	str r5, [r3, #0xa94]
_0210C4D4:
	add r12, r12, #1
	cmp r12, #0x10
	blt _0210C424
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210C4E4: .word wk
	arm_func_end Parent_data_receive_progress

	arm_static_func_start Parent_get_child_data_kind
Parent_get_child_data_kind: ; 0x0210C4E8
	ldr r0, _0210C4FC ; =0x021162C8
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrh r0, [r0, #0x44]
	bx lr
_0210C4FC: .word wk
	arm_func_end Parent_get_child_data_kind

	.bss
wk:
	.space 0x04

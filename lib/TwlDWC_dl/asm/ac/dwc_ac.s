
	.include "asm/macros/function.inc"
	.public MIi_CpuClear32
	.public DWCi_BM_GetApInfo
	.public WCM_Init
	.public DWCi_AC_Start
	.public OS_DisableInterrupts
	.public DWCi_AC_SearchAP
	.public OS_RestoreInterrupts
	.public DWCi_AC_ConnectAP
	.public DWCi_AC_ConnectRetryAP
	.public DWCi_AC_ConnectTest
	.public DWCi_AC_Error
	.public DWCi_AC_GetResult
	.public MI_CpuCopy8
	.public DWCi_AC_CloseNetwork
	.public MI_CpuFill8
	.public WCM_GetApEssid
	.public DC_InvalidateRange
	.public DWCi_AC_GetPostalCode
	.public strncmp
	.public MIi_CpuCopy32

	.text
	arm_func_start DWC_AC_Create
DWC_AC_Create: ; 0x020C3728
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, #1
	mov r5, #0xcc
	ldr r2, [r10]
	mov r0, r9
	mov r1, r5
	blx r2
	ldr r4, _020C38E8 ; =wcmBuffer
	mov r1, r0
	mov r8, #0
	mov r0, r8
	mov r2, r5
	str r1, [r4, #0xc]
	bl MIi_CpuClear32
	ldr r3, [r4, #0xc]
	ldr r1, [r10]
	ldr r7, _020C38EC ; =0x00000D28
	str r1, [r3]
	ldr r2, [r10, #4]
	mov r0, #0x10
	str r2, [r3, #4]
	strb r9, [r3, #9]
	strb r9, [r3, #0x16]
	mov r1, r7
	strb r9, [r3, #8]
	bl DWCi_AC_Alloc
	mov r6, #0x2300
	str r0, [r4, #0x10]
	mov r0, #2
	mov r1, r6
	bl DWCi_AC_Alloc
	mov r5, #0x58
	str r0, [r4]
	mov r0, #4
	mov r1, r5
	bl DWCi_AC_Alloc
	mov r11, #0xc
	str r0, [r4, #4]
	mov r0, #8
	mov r1, r11
	bl DWCi_AC_Alloc
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	mov r2, r7
	mov r0, r8
	bl MIi_CpuClear32
	ldr r1, [r4]
	mov r0, r8
	mov r2, r6
	bl MIi_CpuClear32
	ldr r1, [r4, #4]
	mov r2, r5
	mov r0, r8
	bl MIi_CpuClear32
	ldr r1, [r4, #8]
	mov r2, r11
	mov r0, r8
	bl MIi_CpuClear32
	ldrb r1, [r10, #8]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #0xd0a]
	ldrb r2, [r0, #0xd0b]
	ldrb r1, [r10, #9]
	bic r2, r2, #3
	and r1, r1, #3
	orr r1, r2, r1
	strb r1, [r0, #0xd0b]
	ldr r1, [r10, #0xc]
	str r1, [r0, #0xd18]
	ldrb r1, [r10, #0x10]
	strb r1, [r0, #0xd1c]
	ldr r2, [r4, #8]
	ldr r1, [r10]
	str r1, [r2]
	ldr r1, [r10, #4]
	stmib r2, {r1, r8}
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r10, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0xd0c]
	and r1, r1, #0xff
	bic r2, r1, #0x10
	ldrb r1, [r10, #0xb]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #27
	strb r1, [r0, #0xd0c]
	and r1, r1, #0xff
	bic r2, r1, #0x20
	ldrb r1, [r10, #0xb]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl DWCi_BM_GetApInfo
	ldr r0, [r4]
	mov r1, r6
	bl WCM_Init
	cmp r0, #1
	beq _020C38D4
	cmp r0, #4
	ble _020C38E0
_020C38D4:
	bl DWCi_AC_FreeAll
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38E0:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38E8: .word wcmBuffer
_020C38EC: .word 0x00000D28
	arm_func_end DWC_AC_Create

	arm_func_start DWC_AC_Process
DWC_AC_Process: ; 0x020C38F0
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_AC_GetPhase
	mov r5, r0
	cmp r5, #1
	bne _020C3938
	bl CheckEULA
	cmp r0, #0
	beq _020C392C
	bl CheckWirelessPowerON
	cmp r0, #0
	beq _020C3924
	bl DWCi_AC_Start
_020C3920:
	b _020C399C
_020C3924:
	mov r0, #8
	b _020C3930
_020C392C:
	mov r0, #7
_020C3930:
	bl DWCi_AC_SetError
	b _020C3998
_020C3938:
	cmp r5, #7
	bhs _020C3960
	bl OS_DisableInterrupts
	mov r4, r0
	bl DWCi_AC_SearchAP
	mov r5, r0
	bl DWCi_AC_SetPhase
	mov r0, r4
	bl OS_RestoreInterrupts
	b _020C39A0
_020C3960:
	cmp r5, #9
	bhs _020C3970
	bl DWCi_AC_ConnectAP
	b _020C3920
_020C3970:
	cmp r5, #0xa
	bhs _020C3980
	bl DWCi_AC_ConnectRetryAP
	b _020C3920
_020C3980:
	cmp r5, #0x10
	bhs _020C3990
	bl DWCi_AC_ConnectTest
	b _020C3920
_020C3990:
	cmp r5, #0x11
	bne _020C39A0
_020C3998:
	bl DWCi_AC_Error
_020C399C:
	mov r5, r0
_020C39A0:
	mov r0, r5
	bl DWCi_AC_SetPhase
	cmp r5, #0x10
	bne _020C39C4
	bl CheckDuplicate
	mov r4, r0
	bl Free_Disused
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C39C4:
	cmp r5, #0x12
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl Free_Disused
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWC_AC_Process

	arm_func_start DWC_AC_GetStatus
DWC_AC_GetStatus: ; 0x020C39DC
	stmfd sp!, {r3, lr}
	bl DWCi_AC_GetPhase
	cmp r0, #1
	movls r0, #0
	ldmlsfd sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmlofd sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmlofd sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmlofd sp!, {r3, pc}
	moveq r0, #5
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	bl DWCi_AC_GetResult
	ldmfd sp!, {r3, pc}
	arm_func_end DWC_AC_GetStatus

	arm_func_start DWC_AC_GetApType
DWC_AC_GetApType: ; 0x020C3A48
	stmfd sp!, {r4, lr}
	mov r4, #0xff
	bl DWCi_AC_GetPhase
	cmp r0, #0xa
	blo _020C3A6C
	cmp r0, #0x10
	ldrls r0, _020C3A74 ; =wcmBuffer
	ldrls r0, [r0, #0xc]
	ldrlsb r4, [r0, #0x17]
_020C3A6C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C3A74: .word wcmBuffer
	arm_func_end DWC_AC_GetApType

	arm_func_start DWC_AC_GetApSpotInfo
DWC_AC_GetApSpotInfo: ; 0x020C3A78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl DWCi_AC_GetPhase
	cmp r0, #0xa
	blo _020C3AC4
	cmp r0, #0x10
	bhi _020C3AC4
	ldr r0, _020C3ACC ; =wcmBuffer
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #0x17]
	cmp r0, #4
	cmpne r0, #8
	bne _020C3AC4
	mov r1, r5
	add r0, r2, #0x18
	mov r2, #0xa
	bl MI_CpuCopy8
	mov r4, #1
_020C3AC4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C3ACC: .word wcmBuffer
	arm_func_end DWC_AC_GetApSpotInfo

	arm_func_start DWC_AC_GetSecuritySetting
DWC_AC_GetSecuritySetting: ; 0x020C3AD0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	ldrb r0, [r0, #0x23]
	ldmfd sp!, {r3, pc}
	arm_func_end DWC_AC_GetSecuritySetting

	arm_func_start DWC_AC_Destroy
DWC_AC_Destroy: ; 0x020C3AE4
	stmfd sp!, {r3, lr}
	bl DWCi_AC_GetPhase
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _020C3B08
	bl DWCi_AC_FreeAll
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C3B08:
	add r0, sp, #0
	bl DWCi_AC_CloseNetwork
	ldrb r0, [sp]
	bl DWCi_AC_SetPhase
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end DWC_AC_Destroy

	arm_func_start DWC_AC_SetSpecifyApEx
DWC_AC_SetSpecifyApEx: ; 0x020C3B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	mov r6, r1
	mov r5, r2
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldr r0, [sp, #0x18]
	mov r2, #0xa
	cmp r0, #0
	beq _020C3B60
	add r1, r4, #0x18
	bl MI_CpuCopy8
	b _020C3B6C
_020C3B60:
	add r0, r4, #0x18
	mov r1, #0
	bl MI_CpuFill8
_020C3B6C:
	ldr r3, [sp, #0x1c]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	strb r3, [r4, #0x22]
	bl DWC_AC_SetSpecifyAp
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_AC_SetSpecifyApEx

	arm_func_start DWC_AC_SetSpecifyAp
DWC_AC_SetSpecifyAp: ; 0x020C3B88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x10
	mov r7, r1
	mov r6, r2
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	ldrb r2, [r4, #0xd0c]
	mov r5, #0
	mov r1, r5
	bic r2, r2, #0xf
	orr r3, r2, #1
	mov r2, #0xf0
	strb r3, [r4, #0xd0c]
	bl MI_CpuFill8
_020C3BC4:
	ldrb r1, [r8, r5]
	cmp r1, #0
	beq _020C3BE4
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, #0x40]
	cmp r5, #0x20
	blt _020C3BC4
_020C3BE4:
	cmp r7, #0
	cmpne r6, #0
	ldreqb r0, [r4, #0xe6]
	biceq r0, r0, #3
	streqb r0, [r4, #0xe6]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #1
	moveq r2, #5
	beq _020C3C14
	mov r2, #0xd
	cmp r6, #2
	movne r2, #0x10
_020C3C14:
	mov r0, r7
	add r1, r4, #0x80
	bl MI_CpuCopy8
	ldrb r1, [r4, #0xe6]
	and r0, r6, #0xff
	and r0, r0, #3
	bic r1, r1, #3
	orr r0, r1, r0
	strb r0, [r4, #0xe6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWC_AC_SetSpecifyAp

	arm_func_start DWCi_AC_InsertApInfo
DWCi_AC_InsertApInfo: ; 0x020C3C3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl DWCi_AC_GetMemPtr
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_InsertApInfo

	arm_func_start DWCi_AC_InvalidatePriorityWPA
DWCi_AC_InvalidatePriorityWPA: ; 0x020C3C68
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrb r1, [r0, #0xd0c]
	bic r1, r1, #0x80
	strb r1, [r0, #0xd0c]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_AC_InvalidatePriorityWPA

	arm_func_start DWCi_AC_Alloc
DWCi_AC_Alloc: ; 0x020C3C84
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #1
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r0, #8]
	tst r2, r6
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	and r1, r6, #0xff
	orr r1, r2, r1
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r4
	mov r1, r5
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_AC_Alloc

	arm_func_start DWCi_AC_Free
DWCi_AC_Free: ; 0x020C3CCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl DWCi_AC_GetMemPtr
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r0, #8]
	tst r2, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, r7
	and r1, r1, #0xff
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	blx r3
	cmp r7, #1
	ldreq r0, _020C3D34 ; =wcmBuffer
	moveq r1, #0
	streq r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C3D34: .word wcmBuffer
	arm_func_end DWCi_AC_Free

	arm_func_start DWCi_AC_FreeAll
DWCi_AC_FreeAll: ; 0x020C3D38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl DWCi_AC_GetMemPtr
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _020C3D84
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _020C3E58 ; =0x00000D28
	and r0, r3, #0xef
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, r5
	blx r3
_020C3D84:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _020C3DB8
	mov r0, #8
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xf7
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_020C3DB8:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _020C3DEC
	mov r0, #4
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfb
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_020C3DEC:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _020C3E20
	mov r0, #2
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfd
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_020C3E20:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	and r0, r0, #0xfe
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0xcc
	blx r3
	ldr r0, _020C3E5C ; =wcmBuffer
	mov r1, #0
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3E58: .word 0x00000D28
_020C3E5C: .word wcmBuffer
	arm_func_end DWCi_AC_FreeAll

	arm_func_start DWCi_AC_GetMemPtr
DWCi_AC_GetMemPtr: ; 0x020C3E60
	ldr r1, _020C3EA4 ; =wcmBuffer
	tst r0, #1
	ldrne r0, [r1, #0xc]
	bxne lr
	tst r0, #2
	ldrne r0, [r1]
	bxne lr
	tst r0, #4
	ldrne r0, [r1, #4]
	bxne lr
	tst r0, #8
	ldrne r0, [r1, #8]
	bxne lr
	tst r0, #0x10
	ldrne r0, [r1, #0x10]
	moveq r0, #0
	bx lr
_020C3EA4: .word wcmBuffer
	arm_func_end DWCi_AC_GetMemPtr

	arm_func_start DWCi_AC_SetPhase
DWCi_AC_SetPhase: ; 0x020C3EA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strhib r6, [r5, #0x16]
	cmphi r6, #7
	ldmlsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl DWCi_ConvConnectAPType
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_AC_SetPhase

	arm_func_start DWCi_AC_GetPhase
DWCi_AC_GetPhase: ; 0x020C3F08
	ldr r0, _020C3F24 ; =wcmBuffer
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrneb r0, [r0, #9]
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
_020C3F24: .word wcmBuffer
	arm_func_end DWCi_AC_GetPhase

	arm_func_start DWCi_AC_SetError
DWCi_AC_SetError: ; 0x020C3F28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	str r5, [r4, #0xc]
	bl DWCi_AC_GetPhase
	strb r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_SetError

	arm_func_start DWCi_AC_GetError
DWCi_AC_GetError: ; 0x020C3F4C
	ldr r0, _020C3F5C ; =wcmBuffer
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bx lr
_020C3F5C: .word wcmBuffer
	arm_func_end DWCi_AC_GetError

	arm_func_start DWCi_AC_SetApType
DWCi_AC_SetApType: ; 0x020C3F60
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C3FFC ; =wcmBuffer
	ldr r1, [r1, #0xc]
	ldrb r2, [r1, #0x22]
	cmp r2, #0
	bne _020C3F80
	bl DWCi_ConvConnectAPType
	mov r2, r0
_020C3F80:
	ldr r4, _020C3FFC ; =wcmBuffer
	mov r0, #0
	ldr r1, [r4, #0xc]
	strb r2, [r1, #0x17]
	bl WCM_GetApEssid
	movs r5, r0
	beq _020C3FB4
	mov r1, #0x20
	bl DC_InvalidateRange
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r1, r1, #0x18
	bl DWCi_AC_GetPostalCode
_020C3FB4:
	ldr r0, _020C3FFC ; =wcmBuffer
	mov r1, #0
	ldr r2, [r0, #0xc]
_020C3FC0:
	add r0, r2, r1
	ldrsb r0, [r0, #0x18]
	cmp r0, #0x20
	blt _020C3FD8
	cmp r0, #0x7e
	ble _020C3FEC
_020C3FD8:
	add r0, r2, #0x18
	mov r1, #0
	mov r2, #0xa
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_020C3FEC:
	add r1, r1, #1
	cmp r1, #0xa
	blt _020C3FC0
	ldmfd sp!, {r3, r4, r5, pc}
_020C3FFC: .word wcmBuffer
	arm_func_end DWCi_AC_SetApType

	arm_func_start DWCi_AC_CopyExSetting
DWCi_AC_CopyExSetting: ; 0x020C4000
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r0, r6
	bl DWCi_ConvConnectAPType
	add r0, r4, r0, lsl #8
	ldrb r0, [r0, #0xe6]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	strb r0, [r5, #0x23]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_AC_CopyExSetting

	arm_func_start DWCi_ConvConnectAPType
DWCi_ConvConnectAPType: ; 0x020C4040
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end DWCi_ConvConnectAPType

	arm_static_func_start Free_Disused
Free_Disused: ; 0x020C4050
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C4080 ; =wcmBuffer
	mov r5, #8
	ldr r1, [r4, #8]
	mov r0, r5
	mov r2, #0xc
	bl DWCi_AC_Free
	ldr r1, [r4, #0x10]
	add r2, r5, #0xd20
	mov r0, #0x10
	bl DWCi_AC_Free
	ldmfd sp!, {r3, r4, r5, pc}
_020C4080: .word wcmBuffer
	arm_func_end Free_Disused

	arm_static_func_start CheckDuplicate
CheckDuplicate: ; 0x020C4084
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r0, _020C4120 ; =wcmBuffer
	mov r1, #0xc0
	ldr r8, [r0, #0x10]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r9, [r8, #0xd12]
	mov r6, #0
	cmp r9, #0
	bls _020C4118
	mov r10, r1
_020C40C8:
	cmp r6, r7
	beq _020C4108
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _020C4108
	mul r1, r6, r10
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C4108:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, r9
	blo _020C40C8
_020C4118:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C4120: .word wcmBuffer
	arm_func_end CheckDuplicate

	arm_static_func_start CheckEULA
CheckEULA: ; 0x020C4124
	mov r0, #1
	bx lr
	arm_func_end CheckEULA

	arm_static_func_start CheckWirelessPowerON
CheckWirelessPowerON: ; 0x020C412C
	mov r0, #1
	bx lr
	arm_func_end CheckWirelessPowerON

	.bss
	.global wcmBuffer
wcmBuffer:
	.space 0x04
	.global socConfig
socConfig:
	.space 0x04
	.global netCheck
netCheck:
	.space 0x04
	.global acHold
acHold:
	.space 0x04
	.global acWork
acWork:
	.space 0x04
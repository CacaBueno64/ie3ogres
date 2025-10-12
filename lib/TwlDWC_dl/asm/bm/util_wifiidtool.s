
	.include "asm/macros/function.inc"
	.public DWCi_BM_GetWiFiInfo
	.public DWCi_BM_SetWiFiInfo
	.public MI_CpuCopy8
	.public OS_GetMacAddress
	.public OS_GetTick
	.public OS_IsTickAvailable
	.public RTC_ConvertDateTimeToSecond
	.public RTC_GetDate
	.public RTC_GetTime
	.public RTC_Init

	.text
	arm_static_func_start DWCi_Util_WiFiId_scrambleUid
DWCi_Util_WiFiId_scrambleUid: ; 0x020CB88C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _020CBA04 ; =0x0000FFFF
	mov lr, #0
	and r12, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, r12, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, r12, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r4, r0, r2, lsl #27
	mov r3, r12, lsl #0x1b
	str r4, [sp, #8]
	orr r7, r7, r5, lsr #29
	orr r0, r12, r6
	orr r3, r3, r2, lsr #5
	orr r0, r7, r0
	orr r5, r3, r0
	str r5, [sp, #0xc]
	mov r4, lr
	add r1, sp, #8
_020CB8F4:
	ldrb r0, [r1, lr]
	eor r0, r0, #0xd6
	strb r0, [r1, lr]
	add lr, lr, #1
	cmp lr, #6
	blt _020CB8F4
	ldr r3, _020CBA08 ; =DWCi_util_wifiid_ttable
	mov r6, #0
	add r0, sp, #8
_020CB918:
	ldrb r5, [r0, r6]
	mov r1, r5, asr #4
	and r2, r1, #0xf
	and r1, r5, #0xf
	ldrb r2, [r3, r2]
	ldrb r1, [r3, r1]
	orr r1, r1, r2, lsl #4
	strb r1, [r0, r6]
	add r6, r6, #1
	cmp r6, #5
	blt _020CB918
	add r5, sp, #0
	mov r2, #8
	mov r1, r5
	bl MI_CpuCopy8
	ldr r2, _020CBA0C ; =DWCi_util_wifiid_exctable
	mov r6, #0
	add r0, sp, #8
_020CB960:
	ldrb r3, [r5, r6]
	ldrb r1, [r2, r6]
	add r6, r6, #1
	cmp r6, #5
	strb r3, [r0, r1]
	blt _020CB960
	ldrb r1, [sp, #0xd]
	mov r0, #0
	ldr r2, [sp, #8]
	and r1, r1, #7
	strb r0, [sp, #0xf]
	strb r0, [sp, #0xe]
	strb r1, [sp, #0xd]
	ldr r1, [sp, #0xc]
	mov r12, r2, lsl #1
	mov r1, r1, lsl #1
	orr r1, r1, r2, lsr #31
	str r1, [sp, #0xc]
	ldrb r1, [sp, #0xd]
	str r12, [sp, #8]
	ldrb r2, [sp, #8]
	mov r1, r1, asr #3
	and r1, r1, #1
	orr r1, r2, r1
	strb r1, [sp, #8]
	add r2, sp, #8
_020CB9C8:
	ldrb r1, [r2, r0]
	eor r1, r1, #0x67
	strb r1, [r2, r0]
	add r0, r0, #1
	cmp r0, #6
	blt _020CB9C8
	ldrb r0, [sp, #0xd]
	strb r4, [sp, #0xf]
	strb r4, [sp, #0xe]
	and r0, r0, #7
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CBA04: .word 0x0000FFFF
_020CBA08: .word DWCi_util_wifiid_ttable
_020CBA0C: .word DWCi_util_wifiid_exctable
	arm_func_end DWCi_Util_WiFiId_scrambleUid

	arm_func_start DWCi_AUTH_GetNewWiFiInfo
DWCi_AUTH_GetNewWiFiInfo: ; 0x020CBA10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r8, #0
	bl DWCi_BM_GetWiFiInfo
	bl RTC_Init
	add r6, sp, #0x14
	mov r0, r6
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #8
	mov r0, r4
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	mov r9, r0
	mov r0, r8
	subs r2, r9, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _020CBA98
	ldr r0, _020CBBC8 ; =OS_GetTick
	adds r9, r9, r0
_020CBA98:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r6, _020CBBCC ; =0x5D588B65
	ldr r7, _020CBBD0 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r9, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb r10, [sp, #4]
	ldr r0, _020CBBD4 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb r12, [sp, #3]
	ldrb r0, [sp, #5]
	mov r9, r10, lsl #8
	orr r10, r9, r12, lsl #16
	moveq r1, #0
	ldrh r2, [r5, #0x12]
	mov r3, r3, lsr #0x10
	strh r3, [r5, #0x10]
	str r8, [r5]
	str r8, [r5, #4]
	cmp r2, #0
	and r9, r1, #0xff
	orr r10, r0, r10
	bne _020CBB74
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020CBBBC
_020CBB2C:
	mul r0, r4, r6
	adds r4, r0, r7
	bne _020CBB44
_020CBB38:
	mul r0, r4, r6
	adds r4, r0, r7
	beq _020CBB38
_020CBB44:
	strh r4, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl DWCi_Util_WiFiId_scrambleUid
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020CBB2C
	b _020CBBBC
_020CBB74:
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020CBBBC
_020CBB88:
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	add r0, r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r3, r8
	bl DWCi_Util_WiFiId_scrambleUid
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020CBB88
_020CBBBC:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CBBC8: .word OS_GetTick
_020CBBCC: .word 0x5D588B65
_020CBBD0: .word 0x00269EC3
_020CBBD4: .word 0x000009BF
	arm_func_end DWCi_AUTH_GetNewWiFiInfo

	arm_func_start DWCi_AUTH_MakeWiFiID
DWCi_AUTH_MakeWiFiID: ; 0x020CBBD8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl DWCi_AUTH_GetNewWiFiInfo
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl DWCi_BM_SetWiFiInfo
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWCi_AUTH_MakeWiFiID

	arm_func_start DWCi_AUTH_UpDateWiFiID
DWCi_AUTH_UpDateWiFiID: ; 0x020CBC20
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl DWCi_BM_GetWiFiInfo
	add r12, r5, #8
	ldmia r12, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia r12, {r2, r3}
	bl DWCi_BM_SetWiFiInfo
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWCi_AUTH_UpDateWiFiID

	arm_func_start DWCi_AUTH_RemakeWiFiID
DWCi_AUTH_RemakeWiFiID: ; 0x020CBC70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	add r1, sp, #0
	mov r7, #0
	mov r5, r0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	strb r7, [r1, #3]
	strb r7, [r1, #4]
	strb r7, [r1, #5]
	bl DWCi_BM_GetWiFiInfo
	bl RTC_Init
	add r6, sp, #0x14
	mov r0, r6
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #8
	mov r0, r4
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	mov r8, r0
	subs r0, r8, r7
	sbcs r0, r1, r7
	addlt sp, sp, #0x24
	movlt r0, r7
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _020CBD14
	ldr r0, _020CBDF4 ; =OS_GetTick
	adds r8, r8, r0
_020CBD14:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r6, _020CBDF8 ; =0x5D588B65
	ldr r7, _020CBDFC ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r8, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb r9, [sp, #4]
	ldr r0, _020CBE00 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb r10, [sp, #3]
	mov r8, r9, lsl #8
	moveq r1, #0
	mov r2, #0
	ldrb r0, [sp, #5]
	orr r8, r8, r10, lsl #16
	mov r3, r3, lsr #0x10
	cmp r2, #0
	strh r3, [r5, #0x10]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	cmpeq r2, #0
	and r9, r1, #0xff
	orr r10, r0, r8
	bne _020CBDE8
	mov r8, r2
_020CBD9C:
	b _020CBDA0
_020CBDA0:
	mla r4, r6, r4, r7
	cmp r4,#0x0
	ldrneh r2, [r5, #0x12]
	movne r0, r4, lsl #0x10
	movne r1, r0, lsr #0x10
	cmpne r2, r0, lsr #0x10
	beq _020CBDA0
	strh r1, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl DWCi_Util_WiFiId_scrambleUid
	cmp r1, #0x0
	str r0, [r5, #0x8]
	str r1, [r5, #0xc]
	cmpeq r0, #0x0
	beq _020CBD9C
_020CBDE8:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CBDF4: .word OS_GetTick
_020CBDF8: .word 0x5D588B65
_020CBDFC: .word 0x00269EC3
_020CBE00: .word 0x000009BF
	arm_func_end DWCi_AUTH_RemakeWiFiID

	arm_func_start DWC_Auth_GetId
DWC_Auth_GetId: ; 0x020CBE04
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r5, sp, #0
	mov r4, r0
	mov r0, r5
	bl DWCi_BM_GetWiFiInfo
	ldmia r5, {r2, r3}
	stmia r4, {r2, r3}
	add r1, sp, #8
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	mov r0, #0
	cmpeq r2, #0
	movne r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWC_Auth_GetId

	arm_func_start DWC_Auth_CheckWiFiIDNeedCreate
DWC_Auth_CheckWiFiIDNeedCreate: ; 0x020CBE58
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	cmp r0, #0
	cmpeq r2, #0
	mov r0, #0
	bne _020CBE9C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
_020CBE9C:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end DWC_Auth_CheckWiFiIDNeedCreate	

	.rodata
	.global DWCi_util_wifiid_exctable
DWCi_util_wifiid_exctable:
	.byte 0x01, 0x02, 0x00, 0x04, 0x03, 0x05, 0x06, 0x07
	.global DWCi_util_wifiid_ttable_inv
DWCi_util_wifiid_ttable_inv:
	.byte 0x07, 0x02, 0x05, 0x0A, 0x0B, 0x00, 0x0D, 0x0F, 0x0C, 0x01, 0x06, 0x08, 0x04, 0x09, 0x03, 0x0E
	.global DWCi_util_wifiid_ttable
DWCi_util_wifiid_ttable:
	.byte 0x05, 0x09, 0x01, 0x0E, 0x0C, 0x02, 0x0A, 0x00, 0x0B, 0x0D, 0x03, 0x04, 0x08, 0x06, 0x0F, 0x07
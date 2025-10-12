
	.include "asm/macros/function.inc"
	.public DWC_GetApInfo
	.public DWC_NdGetProgress
	.public DWCi_BM_GetWiFiInfo
	.public DWCi_SetError
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public NHTTP_AddHeaderField
	.public NHTTP_AddPostDataAscii
	.public NHTTP_CancelConnection
	.public NHTTP_CleanupAsync
	.public NHTTP_CreateConnection
	.public NHTTP_DeleteConnection
	.public NHTTP_GetBodyBuffer
	.public NHTTP_GetConnectionError
	.public NHTTP_GetConnectionProgress
	.public NHTTP_GetConnectionStatus
	.public NHTTP_GetHeaderField
	.public NHTTP_GetUserParam
	.public NHTTP_SetRootCA
	.public NHTTP_SetVerifyOption
	.public NHTTP_StartConnection
	.public NHTTP_Startup
	.public NHTTPi_intToStr
	.public NHTTPi_strToInt
	.public OS_GetMacAddress
	.public OS_InitMutex
	.public OS_LockMutex
	.public OS_SNPrintf
	.public OS_SendMessage
	.public OS_UnlockMutex
	.public _ll_udiv
	.public strlen
	.public strncmp

	.text
	arm_func_start DWCi_Ndi_freeAttr
DWCi_Ndi_freeAttr: ; 0x020CD1BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _020CD1F8 ; =DWCi_Ndi_dlattr
	ldr r4, _020CD1FC ; =DWCi_Ndi_dlcallback
	mov r5, r7
_020CD1D0:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _020CD1E8
	ldr r1, [r4, #0x14]
	blx r1
	str r5, [r6, r7, lsl #2]
_020CD1E8:
	add r7, r7, #1
	cmp r7, #3
	blt _020CD1D0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD1F8: .word DWCi_Ndi_dlattr
_020CD1FC: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_freeAttr

	arm_static_func_start setAttr
setAttr: ; 0x020CD200
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r7, r0
	cmp r1, #0
	beq _020CD2C4
	mov r0, r6
	bl DWCi_Ndi_strlen
	cmp r0, #0xa
	ble _020CD240
	mov r4, #0
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD240:
	mov r0, r6
	bl DWCi_Ndi_strlen
	mov r5, r0
	cmp r5, #0xa
	ble _020CD26C
	mov r4, #0
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD26C:
	bl DWCi_Ndi_getEncodeLenBASE64
	ldr r1, _020CD2CC ; =DWCi_Ndi_dlcallback
	add r0, r0, #1
	ldr r2, [r1, #4]
	mov r1, #4
	blx r2
	ldr r4, _020CD2D0 ; =DWCi_Ndi_dlattr
	cmp r0, #0
	str r0, [r4, r7, lsl #2]
	bne _020CD2AC
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD2AC:
	mov r1, r6
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	ldr r1, [r4, r7, lsl #2]
	mov r2, #0
	strb r2, [r1, r0]
_020CD2C4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD2CC: .word DWCi_Ndi_dlcallback
_020CD2D0: .word DWCi_Ndi_dlattr
	arm_func_end setAttr

	arm_func_start DWCi_NdSetAttr
DWCi_NdSetAttr: ; 0x020CD2D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl DWCi_Ndi_lockGlobal
	bl DWCi_Ndi_freeAttr
	mov r1, r4
	mov r0, #0
	bl setAttr
	cmp r0, #0
	beq _020CD338
	mov r4, #1
	mov r0, r4
	mov r1, r6
	bl setAttr
	cmp r0, #0
	beq _020CD338
	mov r1, r5
	mov r0, #2
	bl setAttr
	cmp r0, #0
	beq _020CD338
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020CD338:
	bl DWCi_Ndi_freeAttr
	bl DWCi_Ndi_unlockGlobal
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_NdSetAttr

	arm_static_func_start getNchar
getNchar: ; 0x020CD348
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	cmp r2, #0
	ble _020CD384
	mov r3, r4
_020CD360:
	ldrsb r12, [r1]
	add lr, lr, #1
	cmp r12, #0
	strneb r12, [r0], #1
	addne r4, r4, #1
	addne r1, r1, #1
	streqb r3, [r0], #1
	cmp lr, r2
	blt _020CD360
_020CD384:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end getNchar

	arm_static_func_start decodeChar
decodeChar: ; 0x020CD38C
	cmp r0, #0x41
	blo _020CD3A0
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_020CD3A0:
	cmp r0, #0x61
	blo _020CD3B4
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_020CD3B4:
	cmp r0, #0x30
	blo _020CD3C8
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_020CD3C8:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr
	arm_func_end decodeChar

	arm_func_start DWCi_Ndi_getDecodeLenBASE64
DWCi_Ndi_getDecodeLenBASE64: ; 0x020CD3E4
	mov r0, r0, asr #2
	add r0, r0, r0, lsl #1
	bx lr
	arm_func_end DWCi_Ndi_getDecodeLenBASE64

	arm_func_start DWCi_Ndi_getEncodeLenBASE64
DWCi_Ndi_getEncodeLenBASE64: ; 0x020CD3F0
	ldr r1, _020CD408 ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
_020CD408: .word 0x55555556
	arm_func_end DWCi_Ndi_getEncodeLenBASE64

	arm_func_start DWCi_Ndi_encodeBASE64
DWCi_Ndi_encodeBASE64: ; 0x020CD40C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r2
	mov r8, r1
	mov r9, r0
	cmp r7, #3
	movgt r2, #3
	mov r1, r8
	add r0, sp, #0
	mov r6, #0
	bl getNchar
	cmp r0, #0
	ble _020CD4F0
	mov r5, #0
	ldr r10, _020CD500 ; =szBASE64
	mov r4, r5
	mov r11, #0x2a
_020CD44C:
	cmp r7, #3
	strltb r5, [sp, #2]
	cmp r7, #2
	strltb r4, [sp, #1]
	ldrb r1, [sp, #2]
	ldrb r2, [sp]
	ldrb r3, [sp, #1]
	mov lr, r1, asr #6
	mov r12, r2, asr #2
	orr lr, lr, r3, lsl #2
	mov r3, r3, asr #4
	and r12, r12, #0xff
	orr r2, r3, r2, lsl #4
	ldrsb r12, [r10, r12]
	and r2, r2, #0x3f
	ldrsb r2, [r10, r2]
	strb r12, [r9]
	and r12, lr, #0x3f
	cmp r0, #1
	strb r2, [r9, #1]
	ldrgtsb r2, [r10, r12]
	and r1, r1, #0x3f
	add r8, r8, r0
	movle r2, r11
	cmp r0, #2
	ldrgtsb r1, [r10, r1]
	strb r2, [r9, #2]
	add r6, r6, #4
	movle r1, #0x2a
	strb r1, [r9, #3]
	add r9, r9, #4
	subs r7, r7, r0
	beq _020CD4F0
	mov r2, #3
	cmp r7, #3
	movle r2, r7
	add r0, sp, #0
	mov r1, r8
	bl getNchar
	cmp r0, #0
	bgt _020CD44C
_020CD4F0:
	mov r1, #0
	mov r0, r6
	strb r1, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD500: .word szBASE64
	arm_func_end DWCi_Ndi_encodeBASE64

	arm_func_start DWCi_Ndi_decodeBASE64
DWCi_Ndi_decodeBASE64: ; 0x020CD504
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r7, r2
	add r0, sp, #3
	mov r6, #0
	mov r2, #4
	mov r8, r1
	bl getNchar
	mov r5, r0
	mov r4, r6
	b _020CD61C
_020CD534:
	ldrb r0, [sp, #3]
	mov r1, #0
	strb r1, [sp]
	strb r1, [sp, #1]
	strb r1, [sp, #2]
	bl decodeChar
	movs r4, r0
	bmi _020CD5C8
	ldrb r0, [sp, #4]
	mov r1, r4, lsl #2
	strb r1, [sp]
	bl decodeChar
	movs r4, r0
	bmi _020CD5C8
	ldrsb r2, [sp]
	ldrb r0, [sp, #5]
	mov r1, r4, lsl #0x14
	orr r2, r2, r1, asr #24
	mov r1, r4, lsl #4
	strb r2, [sp]
	strb r1, [sp, #1]
	bl decodeChar
	movs r4, r0
	bmi _020CD5C8
	ldrsb r2, [sp, #1]
	mov r1, r4, lsl #0x16
	ldrb r0, [sp, #6]
	orr r2, r2, r1, asr #24
	mov r1, r4, lsl #6
	strb r1, [sp, #2]
	strb r2, [sp, #1]
	bl decodeChar
	movs r4, r0
	ldrplsb r1, [sp, #2]
	movpl r0, r4, lsl #0x18
	orrpl r0, r1, r0, asr #24
	strplb r0, [sp, #2]
_020CD5C8:
	sub r2, r5, #1
	cmp r2, #0
	mov r3, #0
	ble _020CD5F0
	add r1, sp, #0
_020CD5DC:
	ldrsb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	strb r0, [r9], #1
	blt _020CD5DC
_020CD5F0:
	sub r0, r5, #1
	sub r7, r7, #4
	cmp r7, #0
	add r8, r8, r5
	add r6, r6, r0
	ble _020CD62C
	add r0, sp, #3
	mov r1, r8
	mov r2, #4
	bl getNchar
	mov r5, r0
_020CD61C:
	cmp r5, #0
	ble _020CD62C
	cmp r4, #0
	bge _020CD534
_020CD62C:
	mov r1, #0
	mov r0, r6
	strb r1, [r9]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end DWCi_Ndi_decodeBASE64

	arm_static_func_start strAlloc
strAlloc: ; 0x020CD640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl DWCi_Ndi_strlen
	ldr r1, _020CD688 ; =DWCi_Ndi_dlcallback
	mov r4, r0
	ldr r2, [r1, #4]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _020CD680
	mov r1, r6
	mov r2, r4
	bl DWCi_Ndi_memcpy
	mov r0, #0
	strb r0, [r5, r4]
_020CD680:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020CD688: .word DWCi_Ndi_dlcallback
	arm_func_end strAlloc

	arm_func_start DWCi_NdStartup
DWCi_NdStartup: ; 0x020CD68C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r6, _020CD80C ; =DWCi_Ndi_dlcallback
	mov r5, r0
	mov r4, r1
	str r5, [r6, #4]
	ldr r0, [sp, #0x28]
	str r4, [r6, #0x14]
	str r0, [r6]
	mov r9, #0
	str r9, [r6, #0x3c]
	str r9, [r6, #0x40]
	str r9, [r6, #0x44]
	str r9, [r6, #0xc]
	str r9, [r6, #0x10]
	str r9, [r6, #0x18]
	ldr r0, _020CD810 ; =DWCi_Ndi_macaddr
	mov r8, r2
	mov r7, r3
	str r9, [r6, #0x1c]
	bl DWCi_Ndi_getMacAddress
	ldr r0, _020CD814 ; =DWCi_Ndi_userAgent
	bl DWCi_Ndi_getUserAgent
	mov r0, r8
	bl strAlloc
	str r0, [r6, #0x1c]
	cmp r0, #0
	beq _020CD7C4
	mov r0, r7
	bl strAlloc
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _020CD7C4
	ldr r8, _020CD818 ; =DWCi_Ndi_dwcgamecd
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r2, #4
	bl DWCi_Ndi_encodeBASE64
	ldr r7, _020CD81C ; =DWCi_Ndi_password
	strb r9, [r8, r0]
	ldr r1, [sp, #0x24]
	mov r0, r7
	mov r2, #0x10
	bl DWCi_Ndi_encodeBASE64
	strb r9, [r7, r0]
	bl DWCi_Ndi_initHttpCallback
	cmp r0, #0
	beq _020CD790
	bl DWCi_Ndi_initLockGlobal
	cmp r0, #0
	beq _020CD790
	mov r7, #0x11
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl NHTTP_Startup
	sub r1, r7, #0x12
	cmp r0, r1
	beq _020CD78C
	ldr r0, _020CD820 ; =DWCi_Ndi_strApinfo
	bl DWCi_Ndi_getApInfo
	str r0, [r6, #0xc]
	mov r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD78C:
	bl DWCi_Ndi_exitLockGlobal
_020CD790:
	ldr r4, _020CD80C ; =DWCi_Ndi_dlcallback
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	mov r4, #0
	mov r1, r4
	mov r0, #8
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD7C4:
	ldr r1, _020CD80C ; =DWCi_Ndi_dlcallback
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _020CD7DC
	ldr r1, [r1, #0x14]
	blx r1
_020CD7DC:
	ldr r1, _020CD80C ; =DWCi_Ndi_dlcallback
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	beq _020CD7F4
	ldr r1, [r1, #0x14]
	blx r1
_020CD7F4:
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD80C: .word DWCi_Ndi_dlcallback
_020CD810: .word DWCi_Ndi_macaddr
_020CD814: .word DWCi_Ndi_userAgent
_020CD818: .word DWCi_Ndi_dwcgamecd
_020CD81C: .word DWCi_Ndi_password
_020CD820: .word DWCi_Ndi_strApinfo
	arm_func_end DWCi_NdStartup

	arm_static_func_start nhttpCleanupCallback
nhttpCleanupCallback: ; 0x020CD824
	stmfd sp!, {r4, lr}
	bl DWCi_Ndi_freeAttr
	bl DWCi_Ndi_exitLockGlobal
	bl DWCi_Ndi_exitHttpCallback
	ldr r4, _020CD85C ; =DWCi_Ndi_dlcallback
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x24]
	blx r0
	ldmfd sp!, {r4, pc}
_020CD85C: .word DWCi_Ndi_dlcallback
	arm_func_end nhttpCleanupCallback

	arm_func_start DWCi_NdCleanupAsync
DWCi_NdCleanupAsync: ; 0x020CD860
	stmfd sp!, {r3, lr}
	ldr r1, _020CD888 ; =DWCi_Ndi_dlcallback
	mov r2, #0
	str r2, [r1, #8]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x10]
	bl DWCi_NdCleanupConnectionHandle
	ldr r0, _020CD88C ; =nhttpCleanupCallback
	bl NHTTP_CleanupAsync
	ldmfd sp!, {r3, pc}
_020CD888: .word DWCi_Ndi_dlcallback
_020CD88C: .word nhttpCleanupCallback
	arm_func_end DWCi_NdCleanupAsync

	arm_func_start DWCi_NdCleanupConnectionHandle
DWCi_NdCleanupConnectionHandle: ; 0x020CD890
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	mov r4, #1
	bl DWCi_Ndi_lockGlobal
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020CD8CC
	ldr r0, [sp, #8]
	bl NHTTP_GetConnectionStatus
	ldr r0, [sp, #8]
	bl NHTTP_DeleteConnection
	cmp r0, #0
	moveq r0, #0
	movne r4, #0
	streq r0, [sp, #8]
_020CD8CC:
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end DWCi_NdCleanupConnectionHandle

	arm_func_start DWCi_NdSetError
DWCi_NdSetError: ; 0x020CD8E0
	stmfd sp!, {r3, lr}
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020CD988
_020CD8F0: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _020CD914 ; case 1
	b _020CD978 ; case 2
	b _020CD924 ; case 3
	b _020CD934 ; case 4
	b _020CD958 ; case 5
	ldmfd sp!, {r3, pc} ; case 6
	b _020CD944 ; case 7
	b _020CD968 ; case 8
_020CD914:
	ldr r1, _020CD998 ; =0xFFFF86E7
	mov r0, #9
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD924:
	ldr r1, _020CD99C ; =0xFFFF86D4
	mov r0, #0xe
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD934:
	ldr r1, _020CD9A0 ; =0xFFFF86C0
	mov r0, #0xd
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD944:
	ldr r2, _020CD9A4 ; =0xFFFF86E8
	mov r0, #0xd
	sub r1, r2, r1
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD958:
	ldr r1, _020CD9A0 ; =0xFFFF86C0
	mov r0, #0xd
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD968:
	ldr r1, _020CD9A8 ; =0xFFFF86DF
	mov r0, #9
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD978:
	ldr r1, _020CD9AC ; =0xFFFF86DE
	mov r0, #0xd
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD988:
	ldr r1, _020CD9A8 ; =0xFFFF86DF
	mov r0, #9
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD998: .word 0xFFFF86E7
_020CD99C: .word 0xFFFF86D4
_020CD9A0: .word 0xFFFF86C0
_020CD9A4: .word 0xFFFF86E8
_020CD9A8: .word 0xFFFF86DF
_020CD9AC: .word 0xFFFF86DE
	arm_func_end DWCi_NdSetError

	arm_func_start DWCi_NdCancelAsync
DWCi_NdCancelAsync: ; 0x020CD9B0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020CDA44 ; =DWCi_Ndi_dlcallback
	ldr r0, [r4, #8]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	add r0, sp, #4
	add r1, sp, #0
	str r5, [sp, #4]
	str r5, [sp]
	bl DWC_NdGetProgress
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_Ndi_prepareHttpCallback
	cmp r0, #0
	bne _020CDA34
	bl DWCi_Ndi_lockGlobal
	ldr r4, [r4, #0x10]
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	bl NHTTP_CancelConnection
	cmp r0, #0
	moveq r5, #1
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020CDA34:
	bl DWCi_Ndi_unprepareHttpCallback
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020CDA44: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_NdCancelAsync

	arm_func_start DWCi_Ndi_getApInfo
DWCi_Ndi_getApInfo: ; 0x020CDA48
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r5, _020CDB34 ; =0x020E3DFC
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_020CDA60:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CDA60
	ldrb r1, [r5]
	ldr r5, _020CDB38 ; =_ZZ18DWCi_Ndi_getApInfoPcE2ap
	mov r0, r5
	strb r1, [r3]
	bl DWC_GetApInfo
	cmp r0, #0
	beq _020CDB28
	ldr r1, [r5]
	cmp r1, #0
	blt _020CDAB0
	cmp r1, #0xa
	addlt r0, r1, #0x30
	strltb r0, [sp, #1]
	blt _020CDAC8
_020CDAB0:
	cmp r1, #0xa
	blt _020CDAC8
	cmp r1, #0x64
	bge _020CDAC8
	add r0, sp, #0
	bl DWCi_Ndi_intToStr
_020CDAC8:
	ldr r0, _020CDB38 ; =_ZZ18DWCi_Ndi_getApInfoPcE2ap
	ldr r0, [r0]
	cmp r0, #4
	beq _020CDAE0
	cmp r0, #8
	bne _020CDB0C
_020CDAE0:
	ldr r0, _020CDB38 ; =_ZZ18DWCi_Ndi_getApInfoPcE2ap
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _020CDAFC
	cmp r0, #0xa
	addlt r0, r0, #0x30
	strltb r0, [sp, #3]
_020CDAFC:
	ldr r1, _020CDB3C ; =0x020E91A0
	add r0, sp, #4
	mov r2, #9
	bl DWCi_Ndi_memcpy
_020CDB0C:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl DWCi_Ndi_encodeBASE64
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CDB28:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020CDB34: .word ov15_020E3DFC
_020CDB38: .word _ZZ18DWCi_Ndi_getApInfoPcE2ap
_020CDB3C: .word _ZZ18DWCi_Ndi_getApInfoPcE2ap+0xc
	arm_func_end DWCi_Ndi_getApInfo

	arm_func_start DWCi_Ndi_getDSdesc
DWCi_Ndi_getDSdesc: ; 0x020CDB40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	add r4, sp, #0x10
	mov r8, r0
	mov r7, r1
	mov r0, r4
	mov r1, #0x14
	bl DWCi_Ndi_memclr
	mov r0, r4
	bl DWCi_BM_GetWiFiInfo
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r2, #0
	cmpeq r1, #0
	mov r6, #0
	addeq sp, sp, #0x24
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r5, sp, #0
	mov r4, #0xd
	mov r0, r5
	mov r3, r4
	bl DWCi_Ndi_intToStrFigure
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, r6
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl DWCi_Ndi_encodeBASE64
	ldr r1, _020CDBD8 ; =0x02FFFE0C
	mov r0, r8
	mov r2, #4
	bl DWCi_Ndi_encodeBASE64
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CDBD8: .word 0x02FFFE0C
	arm_func_end DWCi_Ndi_getDSdesc

	arm_func_start DWCi_Ndi_getUserAgent
DWCi_Ndi_getUserAgent: ; 0x020CDBDC
	stmfd sp!, {r3, lr}
	ldr r2, _020CDBFC ; =0x020E57E8
	mov r12, #3
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl OS_SNPrintf
	ldmfd sp!, {r3, pc}
_020CDBFC: .word ov15_020E57E8
	arm_func_end DWCi_Ndi_getUserAgent

	arm_static_func_start req_callback
req_callback: ; 0x020CDC00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r8, r0
	mov r10, r1
	mov r4, r2
	mov r11, #0
	mvn r7, #0
	bl NHTTP_GetUserParam
	str r0, [sp, #4]
	ldmia r0, {r5, r6}
	ldr r0, [r0, #8]
	cmp r10, #2
	str r0, [sp]
	beq _020CDE44
	cmp r10, #3
	beq _020CDE70
	cmp r10, #4
	bne _020CDE70
	mov r0, r8
	bl NHTTP_GetConnectionError
	cmp r0, #8
	moveq r9, #6
	beq _020CDE0C
	ldr r1, _020CDE7C ; =0x020E5800
	add r2, sp, #0x10
	mov r0, r8
	bl NHTTP_GetHeaderField
	cmp r0, #3
	movne r9, #3
	bne _020CDE0C
	mov r4, #3
	ldr r0, [sp, #0x10]
	mov r1, r4
	bl DWCi_Ndi_strToInt
	ldr r1, _020CDE80 ; =0x0000012E
	cmp r0, r1
	bne _020CDDA0
	add r1, sp, #0xc
	add r2, sp, #0x14
	mov r0, r8
	mov r10, r11
	bl NHTTP_GetBodyBuffer
	movs r8, r0
	movmi r9, r4
	bmi _020CDE0C
	mov r9, r10
	cmp r8, #0
	ble _020CDD90
	ldr r4, _020CDE84 ; =0x020E5810
	mov r11, #8
_020CDCC8:
	mov r2, r9
	ldr r3, [sp, #0xc]
	b _020CDCD8
_020CDCD4:
	add r9, r9, #1
_020CDCD8:
	ldrsb r0, [r3, r9]
	cmp r0, #0x3d
	beq _020CDCEC
	cmp r9, r8
	blt _020CDCD4
_020CDCEC:
	sub r0, r9, r2
	cmp r0, #8
	add r9, r9, #1
	bne _020CDD18
	add r0, r3, r2
	mov r1, r4
	mov r2, r11
	bl DWCi_Ndi_strncmp
	mov r10, #1
	cmp r0, #0
	movne r10, #0
_020CDD18:
	mov r1, r9
	ldr r0, [sp, #0xc]
	b _020CDD28
_020CDD24:
	add r9, r9, #1
_020CDD28:
	ldrsb r2, [r0, r9]
	cmp r2, #0x26
	cmpne r2, #0xd
	cmpne r2, #0
	beq _020CDD44
	cmp r9, r8
	blt _020CDD24
_020CDD44:
	cmp r10, #0
	sub r2, r9, r1
	add r9, r9, #1
	beq _020CDD88
	cmp r2, #4
	mov r4, #0
	bne _020CDD90
	add r7, sp, #8
	add r1, r0, r1
	mov r0, r7
	bl DWCi_Ndi_decodeBASE64
	mov r1, r0
	mov r0, r7
	strb r4, [r7, r1]
	bl DWCi_Ndi_strToInt
	mov r7, r0
	b _020CDD90
_020CDD88:
	cmp r9, r8
	blt _020CDCC8
_020CDD90:
	cmp r7, #0
	movlt r9, #3
	movge r9, #7
	b _020CDE0C
_020CDDA0:
	cmp r0, #0
	ble _020CDDB0
	cmp r0, #0xc8
	beq _020CDDB8
_020CDDB0:
	mov r9, #3
	b _020CDE0C
_020CDDB8:
	cmp r5, #1
	beq _020CDDD4
	cmp r5, #2
	beq _020CDDE4
	cmp r5, #3
	beq _020CDDF4
	b _020CDE0C
_020CDDD4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl DWCi_Ndi_response_count
	b _020CDE00
_020CDDE4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl DWCi_Ndi_response_list
	b _020CDE00
_020CDDF4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl DWCi_Ndi_response_contents
_020CDE00:
	cmp r0, #0
	movne r4, r11
	mov r9, r4
_020CDE0C:
	ldr r0, [sp, #4]
	bl freeHttpParam
	bl DWCi_Ndi_unprepareHttpCallback
	cmp r6, #0
	beq _020CDE30
	mov r0, r5
	mov r1, r9
	mov r2, r7
	blx r6
_020CDE30:
	ldr r0, [sp]
	cmp r0, #0
	beq _020CDE70
	bl DWCi_Ndi_kickThread
	b _020CDE70
_020CDE44:
	mov r8, #4
	mov r0, r8
	mov r1, r7
	str r11, [r4, #8]
	bl DWCi_NdSetError
	cmp r6, #0
	beq _020CDE70
	mov r0, r5
	mov r1, r8
	mov r2, r7
	blx r6
_020CDE70:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDE7C: .word ov15_020E5800
_020CDE80: .word 0x0000012E
_020CDE84: .word ov15_020E5810
	arm_func_end req_callback

	arm_static_func_start freeHttpParam
freeHttpParam: ; 0x020CDE88
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020CDF2C ; =DWCi_Ndi_dlcallback
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #1
	beq _020CDF1C
	cmp r0, #2
	beq _020CDEB8
	cmp r0, #3
	beq _020CDF08
	b _020CDF1C
_020CDEB8:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020CDED4
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x1c]
_020CDED4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020CDEF0
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x18]
_020CDEF0:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x14]
	b _020CDF1C
_020CDF08:
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_020CDF1C:
	ldr r1, [r5, #0x14]
	mov r0, r4
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020CDF2C: .word DWCi_Ndi_dlcallback
	arm_func_end freeHttpParam

	arm_static_func_start freeHttp
freeHttp: ; 0x020CDF30
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl DWCi_NdCleanupConnectionHandle
	bl DWCi_Ndi_unprepareHttpCallback
	mov r0, r4
	bl freeHttpParam
	ldmfd sp!, {r4, pc}
	arm_func_end freeHttp

	arm_static_func_start setupHttp
setupHttp: ; 0x020CDF50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x108
	mov r10, r0
	mov r9, r1
	ldr r0, _020CE3B8 ; =DWCi_Ndi_rhGamecd
	ldr r1, _020CE3BC ; =DWCi_Ndi_userid
	mov r11, r2
	mov r7, r3
	ldr r8, [sp, #0x134]
	ldr r4, _020CE3C0 ; =DWCi_Ndi_dlcallback
	bl DWCi_Ndi_getDSdesc
	cmp r0, #0
	bne _020CDFA0
	mov r4, #0
	mov r1, r4
	mov r0, #8
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFA0:
	ldr r2, [r4, #4]
	mov r0, #0x20
	mov r1, #4
	blx r2
	movs r6, r0
	bne _020CDFD4
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFD4:
	ldr r0, [r4]
	str r0, [r6, #4]
	mov r0, #0
	str r0, [r6, #8]
	bl DWCi_Ndi_prepareHttpCallback
	cmp r0, #0
	bne _020CE010
	mov r0, r6
	bl freeHttpParam
	mov r1, #0
	mov r0, #2
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE010:
	ldr r0, [r4, #0x10]
	bl DWCi_NdCleanupConnectionHandle
	cmp r0, #0
	addeq sp, sp, #0x108
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020CE3C4 ; =req_callback
	mov r5, #1
	stmia sp, {r0, r6}
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #0x130]
	mov r1, r5
	mov r2, r7
	bl NHTTP_CreateConnection
	movs r7, r0
	bne _020CE074
	bl DWCi_Ndi_unprepareHttpCallback
	mov r0, r6
	bl freeHttpParam
	mov r1, #0
	mov r0, #3
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE074:
	ldr r1, _020CE3C8 ; =ca_array
	str r6, [r10]
	mov r2, r5
	str r7, [r9]
	bl NHTTP_SetRootCA
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	mov r0, r7
	mov r1, #0
	bl NHTTP_SetVerifyOption
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3CC ; =0x020E581C
	ldr r2, _020CE3D0 ; =DWCi_Ndi_userAgent
	mov r0, r7
	bl NHTTP_AddHeaderField
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3D4 ; =0x020E5828
	ldr r2, _020CE3D8 ; =DWCi_Ndi_dwcgamecd
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3DC ; =0x020E5830
	ldr r2, _020CE3B8 ; =DWCi_Ndi_rhGamecd
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3E0 ; =0x020E583C
	ldr r2, _020CE3E4 ; =DWCi_Ndi_password
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r2, [r4, #0x18]
	ldr r1, _020CE3E8 ; =0x020E5844
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3EC ; =0x020E584C
	ldr r2, _020CE3BC ; =DWCi_Ndi_userid
	mov r0, r7
	mov r9, r4
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3F0 ; =0x020E5854
	ldr r2, _020CE3F4 ; =DWCi_Ndi_macaddr
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3F8 ; =0x020E585C
	mov r0, r7
	mov r2, r11
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r2, [r4, #0x3c]
	mov r4, #0
	cmp r2, #0
	beq _020CE1B8
	ldr r1, _020CE3FC ; =0x020E5864
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
_020CE1B8:
	ldr r2, [r9, #0x40]
	cmp r2, #0
	beq _020CE1D8
	ldr r1, _020CE400 ; =0x020E586C
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	cmn r0, #1
	beq _020CE390
_020CE1D8:
	ldr r2, [r9, #0x44]
	cmp r2, #0
	beq _020CE1F8
	ldr r1, _020CE404 ; =0x020E5874
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	cmn r0, #1
	beq _020CE390
_020CE1F8:
	ldr r0, [r9, #0xc]
	cmp r0, #0
	beq _020CE21C
	ldr r1, _020CE408 ; =0x020E587C
	ldr r2, _020CE40C ; =DWCi_Ndi_strApinfo
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	cmn r0, #1
	beq _020CE390
_020CE21C:
	cmp r8, #0
	beq _020CE29C
	mov r0, r8
	bl DWCi_Ndi_strlen
	mov r5, r0
	cmp r5, #0x40
	ble _020CE25C
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	mov r0, r6
	mov r1, r7
	bl freeHttp
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE25C:
	ldr r10, _020CE410 ; =DWCi_Ndi_optionaldata
	mov r4, #0x59
	mov r0, r10
	mov r1, r4
	bl DWCi_Ndi_memclr
	mov r0, r10
	mov r1, r8
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	ldr r1, _020CE414 ; =0x020E5884
	mov r2, r10
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r4, #0x5a
	cmp r0, r1
	beq _020CE390
_020CE29C:
	add r5, sp, #8
	mov r4, #0x80
	ldr r1, _020CE3D8 ; =DWCi_Ndi_dwcgamecd
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3B8 ; =DWCi_Ndi_rhGamecd
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3E4 ; =DWCi_Ndi_password
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, [r9, #0x18]
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3BC ; =DWCi_Ndi_userid
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3F4 ; =DWCi_Ndi_macaddr
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	mov r1, r11
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE40C ; =DWCi_Ndi_strApinfo
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, [r9, #0x3c]
	cmp r1, #0
	beq _020CE33C
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
_020CE33C:
	ldr r1, [r9, #0x40]
	cmp r1, #0
	beq _020CE354
	add r0, sp, #8
	mov r2, #0x80
	bl DWCi_Ndi_decodeBASE64
_020CE354:
	ldr r1, [r9, #0x44]
	cmp r1, #0
	beq _020CE36C
	add r0, sp, #8
	mov r2, #0x80
	bl DWCi_Ndi_decodeBASE64
_020CE36C:
	cmp r8, #0
	beq _020CE384
	ldr r1, _020CE410 ; =DWCi_Ndi_optionaldata
	add r0, sp, #8
	mov r2, #0x80
	bl DWCi_Ndi_decodeBASE64
_020CE384:
	add sp, sp, #0x108
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE390:
	mov r0, r6
	mov r1, r7
	bl freeHttp
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	add sp, sp, #0x108
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE3B8: .word DWCi_Ndi_rhGamecd
_020CE3BC: .word DWCi_Ndi_userid
_020CE3C0: .word DWCi_Ndi_dlcallback
_020CE3C4: .word req_callback
_020CE3C8: .word ca_array
_020CE3CC: .word ov15_020E581C
_020CE3D0: .word DWCi_Ndi_userAgent
_020CE3D4: .word ov15_020E5828
_020CE3D8: .word DWCi_Ndi_dwcgamecd
_020CE3DC: .word ov15_020E5830
_020CE3E0: .word ov15_020E583C
_020CE3E4: .word DWCi_Ndi_password
_020CE3E8: .word ov15_020E5844
_020CE3EC: .word ov15_020E584C
_020CE3F0: .word ov15_020E5854
_020CE3F4: .word DWCi_Ndi_macaddr
_020CE3F8: .word ov15_020E585C
_020CE3FC: .word ov15_020E5864
_020CE400: .word ov15_020E586C
_020CE404: .word ov15_020E5874
_020CE408: .word ov15_020E587C
_020CE40C: .word DWCi_Ndi_strApinfo
_020CE410: .word DWCi_Ndi_optionaldata
_020CE414: .word ov15_020E5884
	arm_func_end setupHttp

	arm_static_func_start runHttp
runHttp: ; 0x020CE418
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl DWCi_Ndi_lockGlobal
	mov r0, r4
	bl NHTTP_StartConnection
	cmp r0, #0
	beq _020CE450
	mov r4, #0
	mov r1, r4
	mov r0, #3
	bl DWCi_NdSetError
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CE450:
	ldr r0, _020CE464 ; =DWCi_Ndi_dlcallback
	str r4, [r0, #0x10]
	bl DWCi_Ndi_unlockGlobal
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020CE464: .word DWCi_Ndi_dlcallback
	arm_func_end runHttp

	arm_func_start DWCi_NdGetFileListNumAsync
DWCi_NdGetFileListNumAsync: ; 0x020CE468
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, #0x80
	mov r6, r0
	str r4, [sp]
	mov r4, #0
	ldr r2, _020CE4DC ; =DWCiNd_action_count
	ldr r3, _020CE4E0 ; =listnumRecvbuf
	add r0, sp, #0xc
	add r1, sp, #8
	str r4, [sp, #4]
	bl setupHttp
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #0xc]
	mov r5, #1
	str r5, [r0]
	ldr r0, [sp, #0xc]
	str r6, [r0, #0xc]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl runHttp
	cmp r0, #0
	moveq r5, r4
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020CE4DC: .word DWCiNd_action_count
_020CE4E0: .word listnumRecvbuf
	arm_func_end DWCi_NdGetFileListNumAsync

	arm_func_start DWCi_NdGetFileListAsync
DWCi_NdGetFileListAsync: ; 0x020CE4E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r2
	ldr r4, _020CE770 ; =DWCi_Ndi_dlcallback
	mov r6, r10, lsl #8
	cmp r6, #0x80
	movlt r6, #0x80
	mov r11, r0
	mov r9, #4
	mov r5, r1
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r9
	blx r2
	movs r7, r0
	bne _020CE540
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE540:
	mov r1, r5
	add r0, sp, #0x14
	bl DWCi_Ndi_intToStr
	mov r5, r0
	bl DWCi_Ndi_getEncodeLenBASE64
	ldr r2, [r4, #4]
	mov r1, r9
	add r0, r0, #1
	blx r2
	movs r8, r0
	bne _020CE594
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE594:
	add r1, sp, #0x14
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	mov r5, #0
	strb r5, [r8, r0]
	add r0, sp, #0x14
	mov r1, r10
	bl DWCi_Ndi_intToStr
	str r0, [sp, #8]
	bl DWCi_Ndi_getEncodeLenBASE64
	ldr r2, [r4, #4]
	mov r1, r9
	add r0, r0, #1
	blx r2
	movs r9, r0
	bne _020CE604
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	mov r1, r5
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE604:
	ldr r2, [sp, #8]
	add r1, sp, #0x14
	bl DWCi_Ndi_encodeBASE64
	strb r5, [r9, r0]
	str r6, [sp]
	ldr r2, _020CE774 ; =DWCiNd_action_list
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r3, r7
	str r5, [sp, #4]
	bl setupHttp
	cmp r0, #0
	bne _020CE668
	ldr r1, [r4, #0x14]
	mov r0, r9
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE668:
	ldr r0, [sp, #0xc]
	ldr r1, _020CE778 ; =0x020E5894
	mov r2, r8
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #1
	cmp r0, r1
	beq _020CE720
	ldr r0, [sp, #0xc]
	ldr r1, _020CE77C ; =0x020E589C
	mov r2, r9
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #1
	cmp r0, r1
	beq _020CE720
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r1, [r0]
	ldr r0, [sp, #0x10]
	str r11, [r0, #0xc]
	ldr r0, [sp, #0x10]
	str r8, [r0, #0x18]
	ldr r0, [sp, #0x10]
	str r9, [r0, #0x1c]
	ldr r0, [sp, #0x10]
	str r10, [r0, #0x10]
	ldr r0, [sp, #0x10]
	str r7, [r0, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl runHttp
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0x14]
	mov r0, r9
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE720:
	ldr r4, _020CE770 ; =DWCi_Ndi_dlcallback
	mov r0, r9
	ldr r1, [r4, #0x14]
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl freeHttp
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE770: .word DWCi_Ndi_dlcallback
_020CE774: .word DWCiNd_action_list
_020CE778: .word ov15_020E5894
_020CE77C: .word ov15_020E589C
	arm_func_end DWCi_NdGetFileListAsync

	arm_func_start DWCi_NdGetFileAsync
DWCi_NdGetFileAsync: ; 0x020CE780
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r4, [r10, #0xac]
	mov r9, r1
	mov r8, r3
	cmp r2, r4
	mov r4, #0
	bhs _020CE7BC
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE7BC:
	bl DWCi_Ndi_strlen
	mov r5, r0
	cmp r5, #0x20
	ble _020CE7E4
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE7E4:
	cmp r5, #0
	movle r7, r4
	ble _020CE7F8
	bl DWCi_Ndi_getEncodeLenBASE64
	mov r7, r0
_020CE7F8:
	ldr r11, _020CE930 ; =DWCi_Ndi_dlcallback
	add r0, r7, #1
	ldr r2, [r11, #4]
	mov r1, #4
	blx r2
	movs r6, r0
	bne _020CE830
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE830:
	ldr r1, [r10, #0xac]
	ldr r2, _020CE934 ; =DWCiNd_action_contents
	str r1, [sp]
	add r0, sp, #0xc
	add r1, sp, #8
	mov r3, r9
	str r8, [sp, #4]
	bl setupHttp
	cmp r0, #0
	bne _020CE870
	ldr r1, [r11, #0x14]
	mov r0, r6
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE870:
	cmp r7, #0
	ble _020CE8A8
	mov r0, r6
	mov r1, r10
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	strb r4, [r6, r0]
	ldr r0, [sp, #8]
	ldr r1, _020CE938 ; =0x020E58A0
	mov r2, r6
	bl NHTTP_AddPostDataAscii
	sub r1, r4, #1
	cmp r0, r1
	beq _020CE900
_020CE8A8:
	ldr r0, [sp, #0xc]
	mov r1, #3
	str r1, [r0]
	ldr r0, [sp, #0xc]
	str r6, [r0, #0xc]
	ldr r1, [r10, #0xac]
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl runHttp
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020CE930 ; =DWCi_Ndi_dlcallback
	mov r0, r6
	ldr r1, [r1, #0x14]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE900:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl freeHttp
	ldr r1, [r11, #0x14]
	mov r0, r6
	blx r1
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE930: .word DWCi_Ndi_dlcallback
_020CE934: .word DWCiNd_action_contents
_020CE938: .word ov15_020E58A0
	arm_func_end DWCi_NdGetFileAsync

	arm_func_start DWCi_NdGetProgress
DWCi_NdGetProgress: ; 0x020CE93C
	stmfd sp!, {r3, lr}
	ldr r3, _020CE978 ; =DWCi_Ndi_dlcallback
	mov r12, r0
	ldr r0, [r3, #8]
	mov r2, r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r3, #0x10]
	mov r1, r12
	bl NHTTP_GetConnectionProgress
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020CE978: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_NdGetProgress

	arm_func_start DWCi_Ndi_response_count
DWCi_Ndi_response_count: ; 0x020CE97C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #4
	add r2, sp, #0
	bl NHTTP_GetBodyBuffer
	movs r1, r0
	bmi _020CE9C8
	ldr r0, [sp, #4]
	bl DWCi_Ndi_strToInt
	ldr r1, [r4, #0xc]
	add sp, sp, #8
	str r0, [r1]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, pc}
_020CE9C8:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_Ndi_response_count

	arm_func_start DWCi_Ndi_response_contents
DWCi_Ndi_response_contents: ; 0x020CE9D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #4
	add r2, sp, #0
	bl NHTTP_GetBodyBuffer
	ldr r1, [r4, #0x10]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_Ndi_response_contents

	arm_func_start DWCi_Ndi_response_list
DWCi_Ndi_response_list: ; 0x020CEA04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	ldr r2, [r1, #0x10]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0xc]
	str r2, [sp, #4]
	bl DWCi_Ndi_memclr
	ldr r1, _020CEC80 ; =0x020E58AC
	add r2, sp, #0xc
	mov r0, r4
	bl NHTTP_GetHeaderField
	cmp r0, #0
	ble _020CEA6C
	ldr r1, [sp, #0xc]
	ldrsb r0, [r1]
	cmp r0, #0x30
	ldreqsb r0, [r1, #1]
	cmpeq r0, #0
	addeq sp, sp, #0x80
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEA6C:
	add r1, sp, #0x14
	add r2, sp, #0x10
	mov r0, r4
	bl NHTTP_GetBodyBuffer
	mov r4, r0
	cmp r4, #0
	ldrgt r0, [sp]
	movgt r5, #0
	ldrgt r0, [r0, #0x10]
	strgt r5, [sp, #8]
	cmpgt r0, #0
	ble _020CEC74
_020CEA9C:
	cmp r5, r4
	movge r0, #1
	strge r0, [sp, #4]
	bge _020CEC74
	ldr r0, [sp]
	mov r6, #0
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0xb0
	mla r8, r0, r1, r2
	mov r7, r5
	mov r1, r6
	str r6, [sp, #4]
	bge _020CEC58
	add r10, sp, #0x18
	mov r11, r6
_020CEADC:
	ldr r3, [sp, #0x14]
	ldrsb r0, [r3, r5]
	cmp r0, #0xd
	moveq r1, #1
	beq _020CEC4C
	cmp r1, #0
	beq _020CEB48
	cmp r0, #0xa
	bne _020CEC48
	cmp r6, #5
	bne _020CEB2C
	sub r0, r5, #1
	sub r1, r0, r7
	cmp r1, #8
	bgt _020CEC74
	add r0, r3, r7
	bl DWCi_Ndi_strToInt
	cmp r0, #0
	blt _020CEC74
	str r0, [r8, #0xac]
_020CEB2C:
	cmp r6, #5
	movge r0, #1
	strge r0, [sp, #4]
	movlt r0, #0
	add r5, r5, #1
	strlt r0, [sp, #4]
	b _020CEC58
_020CEB48:
	cmp r0, #9
	bne _020CEC48
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _020CEC40
_020CEB5C: ; jump table
	b _020CEB74 ; case 0
	b _020CEB90 ; case 1
	b _020CEBD8 ; case 2
	b _020CEBF0 ; case 3
	b _020CEC08 ; case 4
	b _020CEC20 ; case 5
_020CEB74:
	sub r2, r5, r7
	cmp r2, #0x20
	bhi _020CEC74
	add r1, r3, r7
	mov r0, r8
_020CEB88:
	bl DWCi_Ndi_memcpy
	b _020CEC40
_020CEB90:
	sub r9, r5, r7
	mov r0, r9
	bl DWCi_Ndi_getDecodeLenBASE64
	cmp r0, #0x66
	bhi _020CEC74
	ldr r1, [sp, #0x14]
	mov r2, r9
	mov r0, r10
	add r1, r1, r7
	bl DWCi_Ndi_decodeBASE64
	mov r2, r0
	cmp r2, #0x66
	movhi r2, #0x66
	mov r1, r10
	add r0, r8, #0x22
	bl DWCi_Ndi_memcpy
	strh r11, [r8, #0x86]
	b _020CEC40
_020CEBD8:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x88
	b _020CEB88
_020CEBF0:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x93
	b _020CEB88
_020CEC08:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x9e
	b _020CEB88
_020CEC20:
	sub r1, r5, r7
	cmp r1, #8
	bgt _020CEC74
	add r0, r3, r7
	bl DWCi_Ndi_strToInt
	cmp r0, #0
	blt _020CEC74
	str r0, [r8, #0xac]
_020CEC40:
	add r6, r6, #1
	add r7, r5, #1
_020CEC48:
	mov r1, #0
_020CEC4C:
	add r5, r5, #1
	cmp r5, r4
	blt _020CEADC
_020CEC58:
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _020CEA9C
_020CEC74:
	ldr r0, [sp, #4]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEC80: .word ov15_020E58AC
	arm_func_end DWCi_Ndi_response_list

	arm_func_start DWCi_Ndi_initLockGlobal
DWCi_Ndi_initLockGlobal: ; 0x020CEC84
	stmfd sp!, {r3, lr}
	ldr r0, _020CEC98 ; =0x020E9140
	bl OS_InitMutex
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CEC98: .word g_MutexAttr
	arm_func_end DWCi_Ndi_initLockGlobal

	arm_func_start DWCi_Ndi_exitLockGlobal
DWCi_Ndi_exitLockGlobal: ; 0x020CEC9C
	bx lr
	arm_func_end DWCi_Ndi_exitLockGlobal

	arm_func_start DWCi_Ndi_lockGlobal
DWCi_Ndi_lockGlobal: ; 0x020CECA0
	ldr r0, _020CECAC ; =0x020E9140
	ldr r12, _020CECB0 ; =OS_LockMutex
	bx r12
_020CECAC: .word g_MutexAttr
_020CECB0: .word OS_LockMutex
	arm_func_end DWCi_Ndi_lockGlobal

	arm_func_start DWCi_Ndi_unlockGlobal
DWCi_Ndi_unlockGlobal: ; 0x020CECB4
	ldr r0, _020CECC0 ; =0x020E9140
	ldr r12, _020CECC4 ; =OS_UnlockMutex
	bx r12
_020CECC0: .word g_MutexAttr
_020CECC4: .word OS_UnlockMutex
	arm_func_end DWCi_Ndi_unlockGlobal

	arm_func_start DWCi_Ndi_initHttpCallback
DWCi_Ndi_initHttpCallback: ; 0x020CECC8
	stmfd sp!, {r3, lr}
	ldr r0, _020CECE8 ; =0x020E9128
	bl OS_InitMutex
	ldr r0, _020CECEC ; =DWCi_Ndi_dlcallback
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CECE8: .word g_MutexHttp
_020CECEC: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_initHttpCallback

	arm_func_start DWCi_Ndi_exitHttpCallback
DWCi_Ndi_exitHttpCallback: ; 0x020CECF0
	bx lr
	arm_func_end DWCi_Ndi_exitHttpCallback

	arm_func_start DWCi_Ndi_prepareHttpCallback
DWCi_Ndi_prepareHttpCallback: ; 0x020CECF4
	stmfd sp!, {r4, lr}
	ldr r0, _020CED34 ; =0x020E9128
	bl OS_LockMutex
	ldr r0, _020CED38 ; =DWCi_Ndi_dlcallback
	mov r4, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	movne r4, #0
	cmp r4, #0
	ldrne r0, _020CED38 ; =DWCi_Ndi_dlcallback
	movne r1, #1
	strne r1, [r0, #0x20]
	ldr r0, _020CED34 ; =0x020E9128
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CED34: .word g_MutexHttp
_020CED38: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_prepareHttpCallback

	arm_func_start DWCi_Ndi_unprepareHttpCallback
DWCi_Ndi_unprepareHttpCallback: ; 0x020CED3C
	stmfd sp!, {r4, lr}
	ldr r4, _020CED64 ; =0x020E9128
	mov r0, r4
	bl OS_LockMutex
	ldr r1, _020CED68 ; =DWCi_Ndi_dlcallback
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x20]
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
_020CED64: .word g_MutexHttp
_020CED68: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_unprepareHttpCallback

	arm_func_start DWCi_Ndi_kickThread
DWCi_Ndi_kickThread: ; 0x020CED6C
	mov r1, #0
	ldr r12, _020CED7C ; =OS_SendMessage
	mov r2, r1
	bx r12
_020CED7C: .word OS_SendMessage
	arm_func_end DWCi_Ndi_kickThread

	arm_func_start DWCi_Ndi_getMacAddress
DWCi_Ndi_getMacAddress: ; 0x020CED80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	add r6, sp, #0
	mov r8, r0
	mov r0, r6
	bl OS_GetMacAddress
	mov r7, #0
	add r5, sp, #6
	mov r4, #2
_020CEDA4:
	ldrb r1, [r6, r7]
	mov r2, r4
	add r0, r5, r7, lsl #1
	bl DWCi_Ndi_hexToStrFigure
	add r7, r7, #1
	cmp r7, #6
	blt _020CEDA4
	mov r0, r8
	mov r1, r5
	mov r2, #0xc
	bl DWCi_Ndi_encodeBASE64
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_Ndi_getMacAddress

	arm_func_start DWCi_Ndi_strlen
DWCi_Ndi_strlen: ; 0x020CEDD8
	ldr r12, _020CEDE0 ; =strlen
	bx r12
_020CEDE0: .word strlen
	arm_func_end DWCi_Ndi_strlen

	arm_func_start DWCi_Ndi_strncmp
DWCi_Ndi_strncmp: ; 0x020CEDE4
	ldr r12, _020CEDEC ; =strncmp
	bx r12
_020CEDEC: .word strncmp
	arm_func_end DWCi_Ndi_strncmp

	arm_func_start DWCi_Ndi_memclr
DWCi_Ndi_memclr: ; 0x020CEDF0
	ldr r12, _020CEE00 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx r12
_020CEE00: .word MI_CpuFill8
	arm_func_end DWCi_Ndi_memclr

	arm_func_start DWCi_Ndi_memcpy
DWCi_Ndi_memcpy: ; 0x020CEE04
	mov r3, r0
	mov r0, r1
	ldr r12, _020CEE18 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020CEE18: .word MI_CpuCopy8
	arm_func_end DWCi_Ndi_memcpy

	arm_func_start DWCi_Ndi_strToInt
DWCi_Ndi_strToInt: ; 0x020CEE1C
	ldr r12, _020CEE24 ; =NHTTPi_strToInt
	bx r12
_020CEE24: .word NHTTPi_strToInt
	arm_func_end DWCi_Ndi_strToInt

	arm_func_start DWCi_Ndi_intToStr
DWCi_Ndi_intToStr: ; 0x020CEE28
	ldr r12, _020CEE30 ; =NHTTPi_intToStr
	bx r12
_020CEE30: .word NHTTPi_intToStr
	arm_func_end DWCi_Ndi_intToStr

	arm_func_start DWCi_Ndi_intToStrFigure
DWCi_Ndi_intToStrFigure: ; 0x020CEE34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	ldr r4, _020CEEFC ; =0x01634578
	ldr r2, _020CEF00 ; =0x5D8A0000
	mov r9, r1
	cmp r8, r4
	mov r10, r0
	mov r11, r3
	mov r5, #0
	cmpeq r9, r2
	subhs r0, r5, #1
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, r5
	mov r0, r5
_020CEE6C:
	ldr r1, _020CEF04 ; =0x020E3E50
	add r1, r1, r4, lsl #3
	ldr r6, [r1, #4]
	ldr r1, _020CEF04 ; =0x020E3E50
	cmp r8, r6
	ldr r7, [r1, r4, lsl #3]
	cmpeq r9, r7
	blo _020CEEC0
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl _ll_udiv
	umull r3, r2, r0, r7
	mla r2, r0, r6, r2
	add r0, r0, #0x30
	subs r9, r9, r3
	strb r0, [r10, r5]
	sbc r8, r8, r2
	mov r0, #1
	b _020CEEDC
_020CEEC0:
	cmp r0, #0
	bne _020CEED4
	rsb r1, r4, #0x11
	cmp r1, r11
	bgt _020CEEE0
_020CEED4:
	mov r1, #0x30
	strb r1, [r10, r5]
_020CEEDC:
	add r5, r5, #1
_020CEEE0:
	add r4, r4, #1
	cmp r4, #0x10
	blt _020CEE6C
	adds r0, r9, #0x30
	strb r0, [r10, r5]
	add r0, r5, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEEFC: .word 0x01634578
_020CEF00: .word 0x5D8A0000
_020CEF04: .word _ZZ23DWCi_Ndi_intToStrFigurePcyiE3rdx
	arm_func_end DWCi_Ndi_intToStrFigure

	arm_func_start DWCi_Ndi_hexToStrFigure
DWCi_Ndi_hexToStrFigure: ; 0x020CEF08
	stmfd sp!, {r3, lr}
	mov lr, #0
	cmp r2, #8
	subgt r0, lr, #1
	ldmgtfd sp!, {r3, pc}
	cmp r2, #1
	mov r12, #1
	blt _020CEF58
_020CEF28:
	sub r3, r2, r12
	mov r3, r3, lsl #2
	mov r3, r1, lsr r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	addhs r3, r3, #0x57
	add r12, r12, #1
	strb r3, [r0, lr]
	add lr, lr, #1
	cmp r12, r2
	ble _020CEF28
_020CEF58:
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_Ndi_hexToStrFigure

    .rodata	
_ZZ21DWCi_Ndi_encodeBASE64PcPKciE3pad:
	.byte 0x2A
DWCiNd_action_count:
	.asciz "Y291bnQ*"
DWCiNd_action_list:
	.asciz "bGlzdA**"
DWCiNd_action_contents:
	.asciz "Y29udGVudHM*"
	.balign 4, 0
ov15_020E3DFC:
	.byte 0x30, 0x30, 0x3A, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x2D, 0x30, 0x30, 0x00, 0x00, 0x00
szBASE64:
	.asciz "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-"
	.balign 4, 0
_ZZ23DWCi_Ndi_intToStrFigurePcyiE3rdx:
	.byte 0x00, 0x00, 0xC1, 0x6F, 0xF2, 0x86, 0x23, 0x00, 0x00, 0x80, 0xC6, 0xA4
	.byte 0x7E, 0x8D, 0x03, 0x00, 0x00, 0x40, 0x7A, 0x10, 0xF3, 0x5A, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x4E
	.byte 0x18, 0x09, 0x00, 0x00, 0x00, 0x10, 0xA5, 0xD4, 0xE8, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x76, 0x48
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0xE4, 0x0B, 0x54, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x9A, 0x3B
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xE1, 0xF5, 0x05, 0x00, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x42, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x86, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

    .data
ca_exponent:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ca_array
ca_array:
	.word dwci_nd_ca_nasself
	.global dwci_nd_ca_nasself
dwci_nd_ca_nasself:
	.word ca_name
	.byte 0x80, 0x00, 0x00, 0x00
	.word ca_modulo
	.byte 0x03, 0x00, 0x00, 0x00
	.word ca_exponent
ca_name:
	.asciz "US, Washington, Nintendo of America Inc, NOA, Nintendo CA, ca@noa.nintendo.com"
	.balign 4, 0
ca_modulo:
	.byte 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF
	.byte 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21
	.byte 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD
	.byte 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B
	.byte 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40
	.byte 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31
	.byte 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66
	.byte 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C
	.byte 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B
ov15_020E57E8:
	.asciz "Nitro WiFi SDK/%d.%d"
	.balign 4, 0
ov15_020E5800:
	.asciz "HTTPSTATUSCODE"
	.balign 4, 0
ov15_020E5810:
	.asciz "returncd"
	.balign 4, 0
ov15_020E581C:
	.asciz "User-Agent"
	.balign 4, 0
ov15_020E5828:
	.asciz "gamecd"
	.balign 4, 0
ov15_020E5830:
	.asciz "rhgamecd"
	.balign 4, 0
ov15_020E583C:
	.asciz "passwd"
	.balign 4, 0
ov15_020E5844:
	.asciz "token"
	.balign 4, 0
ov15_020E584C:
	.asciz "userid"
	.balign 4, 0
ov15_020E5854:
	.asciz "macadr"
	.balign 4, 0
ov15_020E585C:
	.asciz "action"
	.balign 4, 0
ov15_020E5864:
	.asciz "attr1"
	.balign 4, 0
ov15_020E586C:
	.asciz "attr2"
	.balign 4, 0
ov15_020E5874:
	.asciz "attr3"
	.balign 4, 0
ov15_020E587C:
	.asciz "apinfo"
	.balign 4, 0
ov15_020E5884:
	.asciz "optionallogdata"
	.balign 4, 0
ov15_020E5894:
	.asciz "offset"
	.balign 4, 0
ov15_020E589C:
	.asciz "num"
	.balign 4, 0
ov15_020E58A0:
	.asciz "contents"
	.balign 4, 0
ov15_020E58AC:
	.asciz "Content-Length"

	.bss
	.global DWCi_Ndi_dlcallback
DWCi_Ndi_dlcallback:
	.space 0x04
	.global DWCi_Ndi_alloc
DWCi_Ndi_alloc:
	.space 0x04
	.global DWCi_Ndi_isOpened
DWCi_Ndi_isOpened:
	.space 0x04
	.global DWCi_Ndi_isExistApinfo
DWCi_Ndi_isExistApinfo:
	.space 0x04
	.global DWCi_Ndi_nhttpid
DWCi_Ndi_nhttpid:
	.space 0x04
	.global DWCi_Ndi_free
DWCi_Ndi_free:
	.space 0x04
	.global DWCi_Ndi_authtoken
DWCi_Ndi_authtoken:
	.space 0x04
	.global DWCi_Ndi_serverURL
DWCi_Ndi_serverURL:
	.space 0x04
	.global g_rightHTTPComm
g_rightHTTPComm:
	.space 0x04
	.global cleanupCallback
cleanupCallback:
	.space 0x04
	.global DWCi_Ndi_rhGamecd
DWCi_Ndi_rhGamecd:
	.space 0x09
	.global DWCi_Ndi_dwcgamecd
DWCi_Ndi_dwcgamecd:
	.space 0x0b
	.global DWCi_Ndi_dlattr
DWCi_Ndi_dlattr:
	.space 0x0C
	.global DWCi_Ndi_macaddr
DWCi_Ndi_macaddr:
	.space 0x11
	.global DWCi_Ndi_strApinfo
DWCi_Ndi_strApinfo:
	.space 0x15
	.global DWCi_Ndi_userid
DWCi_Ndi_userid:
	.space 0x16
	.global g_MutexHttp
g_MutexHttp:
	.space 0x18
	.global g_MutexAttr
g_MutexAttr:
	.space 0x18
	.global DWCi_Ndi_password
DWCi_Ndi_password:
	.space 0x19
	.global DWCi_Ndi_userAgent
DWCi_Ndi_userAgent:
	.space 0x23
	.global _ZZ18DWCi_Ndi_getApInfoPcE2ap
_ZZ18DWCi_Ndi_getApInfoPcE2ap:
	.space 0x40
	.global DWCi_Ndi_optionaldata
DWCi_Ndi_optionaldata:
	.space 0x5C
	.global listnumRecvbuf
listnumRecvbuf:
	.space 0x80

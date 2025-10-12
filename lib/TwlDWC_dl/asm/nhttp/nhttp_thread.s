
	.include "asm/macros/function.inc"
	.public NHTTPi_BufferFullCallback
	.public NHTTPi_CompleteCallback
	.public NHTTPi_DeleteConnection
	.public NHTTPi_GetBgnEndInfoP
	.public NHTTPi_GetListInfoP
	.public NHTTPi_GetMutexInfoP
	.public NHTTPi_GetReqInfoP
	.public NHTTPi_GetSSLError
	.public NHTTPi_GetSystemInfoP
	.public NHTTPi_GetThreadInfoP
	.public NHTTPi_NotifyCompletion
	.public NHTTPi_PostSendCallback
	.public NHTTPi_ReceivedCallback
	.public NHTTPi_RecvBuf
	.public NHTTPi_RecvBufN
	.public NHTTPi_Request2Connection
	.public NHTTPi_Response2Connection
	.public NHTTPi_SetError
	.public NHTTPi_SetVirtualContentLength
	.public NHTTPi_SocClose
	.public NHTTPi_SocConnect
	.public NHTTPi_SocOpen
	.public NHTTPi_SocRecv
	.public NHTTPi_SocSSLConnect
	.public NHTTPi_SocSend
	.public NHTTPi_alloc
	.public NHTTPi_checkKeepAlive
	.public NHTTPi_compareTokenN_HdrRecvBuf
	.public NHTTPi_destroyRequestObject
	.public NHTTPi_encodeUrlChar
	.public NHTTPi_findNextLineHdrRecvBuf
	.public NHTTPi_free
	.public NHTTPi_getHdrFromList
	.public NHTTPi_getHeaderValue
	.public NHTTPi_getReqFromReqQueue
	.public NHTTPi_getUrlEncodedSize
	.public NHTTPi_getUrlEncodedSize2
	.public NHTTPi_idleCommThread
	.public NHTTPi_intToStr
	.public NHTTPi_isRecvBufFull
	.public NHTTPi_loadFromHdrRecvBuf
	.public NHTTPi_lockReqList
	.public NHTTPi_memclr
	.public NHTTPi_memcpy
	.public NHTTPi_resolveHostname
	.public NHTTPi_strToHex
	.public NHTTPi_strToInt
	.public NHTTPi_strcmp
	.public NHTTPi_strlen
	.public NHTTPi_strnicmp
	.public NHTTPi_strnlen
	.public NHTTPi_unlockReqList

	.text
	arm_func_start NHTTPi_InitThreadInfo
NHTTPi_InitThreadInfo: ; 0x020D1140
	ldr r12, _020D1148 ; =NHTTPi_IsCreateCommThreadMessageQueueOff
	bx r12
_020D1148: .word NHTTPi_IsCreateCommThreadMessageQueueOff
	arm_func_end NHTTPi_InitThreadInfo

	arm_func_start NHTTPi_IsCreateCommThreadMessageQueueOn
NHTTPi_IsCreateCommThreadMessageQueueOn: ; 0x020D114C
	mov r1, #1
	str r1, [r0, #0xec]
	bx lr
	arm_func_end NHTTPi_IsCreateCommThreadMessageQueueOn

	arm_func_start NHTTPi_IsCreateCommThreadMessageQueueOff
NHTTPi_IsCreateCommThreadMessageQueueOff: ; 0x020D1158
	mov r1, #0
	str r1, [r0, #0xec]
	bx lr
	arm_func_end NHTTPi_IsCreateCommThreadMessageQueueOff

	arm_func_start NHTTPi_IsCreateCommThreadMessageQueue
NHTTPi_IsCreateCommThreadMessageQueue: ; 0x020D1164
	ldr r0, [r0, #0xec]
	bx lr
	arm_func_end NHTTPi_IsCreateCommThreadMessageQueue

	arm_static_func_start NHTTPi_CheckHeaderEnd
NHTTPi_CheckHeaderEnd: ; 0x020D116C
	sub r2, r1, #2
	and r2, r2, #3
	ldrsb r2, [r0, r2]
	cmp r2, #0xd
	subeq r3, r1, #1
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xd
	moveq r0, #1
	bxeq lr
	cmp r2, #0xa
	subeq r3, r1, #1
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xa
	moveq r0, #1
	bxeq lr
	sub r3, r1, #4
	and r3, r3, #3
	ldrsb r3, [r0, r3]
	cmp r3, #0xd
	subeq r3, r1, #3
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xa
	cmpeq r2, #0xd
	subeq r1, r1, #1
	andeq r1, r1, #3
	ldreqsb r0, [r0, r1]
	cmpeq r0, #0xa
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end NHTTPi_CheckHeaderEnd

	arm_static_func_start NHTTPi_SaveBuf
NHTTPi_SaveBuf: ; 0x020D11F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x34]
	mov r10, r0
	mov r0, r4
	str r4, [sp, #4]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	cmp r0, #0
	ldr r6, [sp, #0x30]
	ble _020D12AC
	mov r11, #0
_020D1224:
	ldr r0, [r10]
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7]
	mov r1, r6
	rsb r5, r0, #0x4000
	cmp r4, r5
	movle r5, r4
	mov r2, r5
	add r0, r9, r0
	bl NHTTPi_memcpy
	ldr r0, [r7]
	add r6, r6, r5
	add r0, r0, r5
	str r0, [r7]
	cmp r0, #0x4000
	sub r4, r4, r5
	bne _020D12A4
	mov r0, r10
	mov r1, r8
	mov r2, r9
	mov r3, #0x4000
	str r11, [sp]
	bl NHTTPi_SocSend
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r7]
	sub r0, r1, r0
	str r0, [r7]
_020D12A4:
	cmp r4, #0
	bgt _020D1224
_020D12AC:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_SaveBuf

	arm_static_func_start NHTTPi_SkipLineBuf
NHTTPi_SkipLineBuf: ; 0x020D12B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r6, r7
	strb r7, [sp, #8]
	strb r7, [sp, #9]
	mov r5, #1
	mov r11, r7
	add r4, sp, #8
	b _020D1318
_020D12EC:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	add r3, r4, r3
	stmia sp, {r5, r11}
	bl NHTTPi_SocRecv
	cmp r0, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, r0
	add r6, r6, #1
_020D1318:
	and r3, r6, #1
	ldrsb r0, [r4, r3]
	cmp r0, #0xd
	subeq r0, r6, #1
	andeq r0, r0, #1
	ldreqsb r0, [r4, r0]
	cmpeq r0, #0xa
	bne _020D12EC
	mov r0, r7
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_SkipLineBuf

	arm_static_func_start NHTTPi_GetPostContentlength
NHTTPi_GetPostContentlength: ; 0x020D1344
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, [sp, #0x28]
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	mov r4, #0
	bl NHTTPi_Request2Connection
	movs r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [r5, #0x24]
	mov r11, r4
_020D1378:
	ldr r0, [r9]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r4
	str r11, [r5, #0x28]
	bl NHTTPi_PostSendCallback
	cmp r0, #0
	movlt r0, r11
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x24]
	cmp r1, #0
	beq _020D1404
	cmp r0, #0
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	add r4, r4, r1
	cmpne r6, #1
	beq _020D13E4
	cmp r6, #2
	beq _020D13F0
	b _020D1378
_020D13E4:
	ldr r0, [r7]
	add r0, r0, r1
	b _020D13FC
_020D13F0:
	bl NHTTPi_getUrlEncodedSize2
	ldr r1, [r7]
	add r0, r1, r0
_020D13FC:
	str r0, [r7]
	b _020D1378
_020D1404:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_GetPostContentlength

	arm_static_func_start NHTTPi_SendPostData
NHTTPi_SendPostData: ; 0x020D140C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r11, r2
	ldr r2, [sp, #0x48]
	ldr r9, [sp, #0x40]
	str r2, [sp, #0x48]
	mov r2, #0
	ldr r8, [sp, #0x44]
	str r0, [sp, #8]
	mov r10, r1
	str r3, [sp, #0xc]
	str r2, [sp, #0x14]
	bl NHTTPi_Request2Connection
	str r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x14]
	add r4, sp, #0x18
	str r1, [r0, #0x24]
_020D1460:
	ldr r0, [r10]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	mov r3, #0
	mov r2, r1
	str r3, [r2, #0x28]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x14]
	bl NHTTPi_PostSendCallback
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #3
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0x28]
	ldr r6, [r0, #0x24]
	cmp r5, #0
	beq _020D159C
	cmp r6, #0
	addeq sp, sp, #0x1c
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ldr r0, [sp, #0x14]
	add r0, r0, r5
	str r0, [sp, #0x14]
	ldrne r0, [sp, #0x48]
	cmpne r0, #1
	beq _020D14F4
	cmp r0, #2
	beq _020D1530
	b _020D1460
_020D14F4:
	str r6, [sp]
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r8
	str r5, [sp, #4]
	bl NHTTPi_SaveBuf
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020D1460
	add sp, sp, #0x1c
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1530:
	cmp r5, #0
	mov r7, #0
	bls _020D1460
_020D153C:
	mov r0, r4
	mov r1, #3
	bl NHTTPi_memclr
	ldrsb r1, [r6, r7]
	mov r0, r4
	bl NHTTPi_encodeUrlChar
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r8
	bl NHTTPi_SaveBuf
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	addeq sp, sp, #0x1c
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, #1
	cmp r7, r5
	blo _020D153C
	b _020D1460
_020D159C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_SendPostData

	arm_static_func_start NHTTPi_BufFull
NHTTPi_BufFull: ; 0x020D15A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #4]
	mov r6, r0
	mov r0, r5
	mov r4, #0
	bl NHTTPi_isRecvBufFull
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	ldrne r1, [r5, #0x28]
	cmpne r1, #0
	beq _020D15E0
	cmp r0, #0
	beq _020D1624
_020D15E0:
	mov r0, r6
	mov r1, r5
	bl NHTTPi_Response2Connection
	movs r1, r0
	beq _020D1628
	mov r0, r6
	bl NHTTPi_BufferFullCallback
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ldrne r0, [r5, #0x1c]
	cmpne r0, #0
	beq _020D1628
	ldr r1, [r5, #4]
	mov r0, r5
	bl NHTTPi_isRecvBufFull
	cmp r0, #0
	b _020D1624
_020D1624:
	moveq r4, #1
_020D1628:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_BufFull

	arm_static_func_start NHTTPi_SendData
NHTTPi_SendData: ; 0x020D1630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	cmp r7, #0
	ldr r0, [r0, #0xc]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r8, [sp]
	str r7, [sp, #4]
	ldr r2, [r5, #0xc]
	add r1, r4, #0x100
	add r3, r9, #0x324
	bl NHTTPi_SaveBuf
	cmp r0, #0
	addlt sp, sp, #8
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	moveq r0, #2
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_SendData

	arm_static_func_start NHTTPi_SendProxyAuthorization
NHTTPi_SendProxyAuthorization: ; 0x020D16B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0x244]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020D172C ; =0x020E58E0
	mov r0, r5
	mov r2, #0x1b
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0x244]
	mov r0, r5
	add r1, r4, #0x1e8
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020D1730 ; =0x020E58FC
	mov r0, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D172C: .word ov15_020E58E0
_020D1730: .word ov15_020E58FC
	arm_func_end NHTTPi_SendProxyAuthorization

	arm_static_func_start NHTTPi_SendBasicAuthorization
NHTTPi_SendBasicAuthorization: ; 0x020D1734
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020D17A8 ; =0x020E5900
	mov r0, r5
	mov r2, #0x15
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xa8]
	mov r0, r5
	add r1, r4, #0x4c
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020D17AC ; =0x020E58FC
	mov r0, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D17A8: .word ov15_020E5900
_020D17AC: .word ov15_020E58FC
	arm_func_end NHTTPi_SendBasicAuthorization

	arm_static_func_start NHTTPi_SendProxyConnectMethod
NHTTPi_SendProxyConnectMethod: ; 0x020D17B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r9, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r8, r0
	mov r0, r4
	bl NHTTPi_GetBgnEndInfoP
	add r6, sp, #4
	mov r7, r0
	ldr r1, [r9, #0x20]
	mov r0, r6
	bl NHTTPi_intToStr
	mov r5, r0
	ldr r1, _020D19D4 ; =0x020E5918
	mov r0, r10
	mov r2, #8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x14]
	mov r0, r10
	add r1, r1, #8
	sub r2, r2, #8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _020D19D8 ; =0x020E5924
	mov r11, #1
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19DC ; =0x020E5928
	mov r0, r10
	mov r2, #0xb
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19E0 ; =0x020E5934
	mov r0, r10
	mov r2, #6
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x14]
	mov r0, r10
	add r1, r1, #8
	sub r2, r2, #8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D19E4 ; =0x020E58FC
	mov r4, #2
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19E8 ; =0x020E593C
	mov r0, r10
	mov r2, #0x25
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl NHTTPi_SendProxyAuthorization
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl NHTTPi_SendData
	ldr r3, [r10, #0x324]
	cmp r3, #0
	ble _020D19B4
	mov r0, #0
	str r0, [sp]
	ldr r1, [r7, #0xc]
	mov r0, r9
	add r2, r8, #0x100
	bl NHTTPi_SocSend
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, r11
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D19B4:
	mov r4, #0
	add r0, r8, #0x100
	mov r1, #0x4000
	str r4, [r10, #0x324]
	bl NHTTPi_memclr
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D19D4: .word ov15_020E5918
_020D19D8: .word ov15_020E5924
_020D19DC: .word ov15_020E5928
_020D19E0: .word ov15_020E5934
_020D19E4: .word ov15_020E58FC
_020D19E8: .word ov15_020E593C
	arm_func_end NHTTPi_SendProxyConnectMethod

	arm_static_func_start NHTTPi_RecvProxyConnectHeader
NHTTPi_RecvProxyConnectHeader: ; 0x020D19EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	str r0, [sp, #0xc]
	mov r0, r6
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetMutexInfoP
	ldr r2, [r5]
	mov r1, #0
	ldr r6, [r2, #0xc]
	str r1, [sp, #8]
	ldr r7, [r6, #0x2c]
	mov r5, r0
	mov r8, r1
_020D1A40:
	rsb r0, r8, #0x200
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r9, sp, #0x10
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r6
	add r3, r9, r8
	bl NHTTPi_SocRecv
	mov r11, r0
	add r0, sp, #0x19
	mov r1, #3
	add r8, r8, r11
	bl NHTTPi_strToInt
	str r0, [r7, #0x18]
	ldr r1, _020D1BCC ; =0x020E5964
	mov r0, r9
	mov r2, #5
	bl NHTTPi_strnicmp
	cmp r0, #0
	ldreqsb r0, [sp, #0x18]
	mov r12, #0
	mov lr, r12
	cmpeq r0, #0x20
	ldreq r0, [r7, #0x18]
	cmpeq r0, #0xc8
	moveq r0, #1
	streq r0, [sp, #8]
	cmp r8, #0
	ble _020D1B50
	mov r9, #1
	add r3, sp, #0x10
	mov r1, r9
	mov r2, r9
_020D1ACC:
	cmp r12, #1
	ble _020D1AF0
	add r10, r3, r12
	ldrsb r0, [r10, #-1]
	cmp r0, #0xd
	ldreqsb r0, [r10]
	cmpeq r0, #0xd
	moveq lr, r2
	beq _020D1B44
_020D1AF0:
	cmp r12, #1
	ble _020D1B14
	add r10, r3, r12
	ldrsb r0, [r10, #-1]
	cmp r0, #0xa
	ldreqsb r0, [r10]
	cmpeq r0, #0xa
	moveq lr, r1
	beq _020D1B44
_020D1B14:
	cmp r12, #3
	ble _020D1B44
	add r0, r3, r12
	ldrsb r10, [r0, #-3]
	cmp r10, #0xd
	ldreqsb r10, [r0, #-2]
	cmpeq r10, #0xa
	ldreqsb r10, [r0, #-1]
	cmpeq r10, #0xd
	ldreqsb r0, [r0]
	cmpeq r0, #0xa
	moveq lr, r9
_020D1B44:
	add r12, r12, #1
	cmp r12, r8
	blt _020D1ACC
_020D1B50:
	cmp lr, #0
	mov r0, #1
	beq _020D1B74
	ldr r0, [sp, #8]
	add sp, sp, #0x210
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1B74:
	cmp r11, #0
	mov r9, #0
	addlt sp, sp, #0x210
	movlt r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0x200
	blt _020D1A40
	stmia sp, {r0, r9}
	ldr r3, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r6
	add r3, r3, #0x100
	bl NHTTPi_SocRecv
	cmp r0, #0
	addlt sp, sp, #0x210
	movlt r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020D1A40
	mov r0, r9
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1BCC: .word ov15_020E5964
	arm_func_end NHTTPi_RecvProxyConnectHeader

	arm_static_func_start NHTTPi_SendHeaderList
NHTTPi_SendHeaderList: ; 0x020D1BD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r7, [r0, #0xc]
	add r0, r7, #0x30
	bl NHTTPi_getHdrFromList
	movs r8, r0
	beq _020D1C8C
	ldr r6, _020D1C94 ; =0x020E596C
	ldr r4, _020D1C98 ; =0x020E58FC
	mov r5, #2
_020D1C04:
	ldr r0, [r8, #8]
	bl NHTTPi_strlen
	mov r2, r0
	ldr r1, [r8, #8]
	mov r0, r9
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0xc]
	bl NHTTPi_strlen
	mov r2, r0
	ldr r1, [r8, #0xc]
	mov r0, r9
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl NHTTPi_free
	add r0, r7, #0x30
	bl NHTTPi_getHdrFromList
	movs r8, r0
	bne _020D1C04
_020D1C8C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D1C94: .word ov15_020E596C
_020D1C98: .word ov15_020E58FC
	arm_func_end NHTTPi_SendHeaderList

	arm_static_func_start NHTTPi_SendProcPostDataRaw
NHTTPi_SendProcPostDataRaw: ; 0x020D1C9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	bl NHTTPi_GetSystemInfoP
	mov r7, r0
	bl NHTTPi_GetMutexInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r7
	ldr r6, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r4, r0
	mov r0, r7
	bl NHTTPi_GetBgnEndInfoP
	mov r7, r0
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r6, #0x24c]
	cmp r0, #0
	bne _020D1D1C
	add r3, sp, #0xc
	mov r0, r5
	mov r1, r6
	str r2, [sp]
	bl NHTTPi_GetPostContentlength
	cmp r0, #0
	bne _020D1D24
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1D1C:
	ldr r0, [r6, #0x250]
	str r0, [sp, #0xc]
_020D1D24:
	add r10, sp, #0x10
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl NHTTPi_intToStr
	mov r9, r0
	ldr r1, _020D1E18 ; =0x020E5970
	mov r0, r8
	mov r2, #0x10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _020D1E1C ; =0x020E58FC
	mov r9, #2
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r6, #0x24c]
	cmp r1, #0
	bne _020D1DF4
	ldr r0, [r7, #0xc]
	add r2, r8, #0x324
	str r0, [sp]
	mov r0, r5
	mov r1, r6
	str r2, [sp, #4]
	mov r3, #0
	add r2, r4, #0x100
	str r3, [sp, #8]
	bl NHTTPi_SendPostData
	cmp r0, #0
	beq _020D1E0C
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1DF4:
	ldr r2, [r6, #0x250]
	mov r0, r8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1E0C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1E18: .word ov15_020E5970
_020D1E1C: .word ov15_020E58FC
	arm_func_end NHTTPi_SendProcPostDataRaw

	arm_static_func_start NHTTPi_SendProcPostDataBinary
NHTTPi_SendProcPostDataBinary: ; 0x020D1E20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetMutexInfoP
	mov r6, r0
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r7, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r11, r0
	mov r0, r4
	bl NHTTPi_GetBgnEndInfoP
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r5, [r7, #0x34]
	mov r8, r0
	cmp r5, #0
	beq _020D1F20
	mov r4, #1
	add r9, sp, #0xc
_020D1E80:
	add r1, r1, #0x16
	str r1, [sp, #0xc]
	ldr r0, [r5, #8]
	bl NHTTPi_strlen
	ldr r1, [sp, #0xc]
	add r0, r0, #0x29
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	addne r1, r1, #0x4b
	add r1, r1, #2
	str r1, [sp, #0xc]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020D1EEC
	str r4, [sp]
	ldr r2, [r5, #8]
	mov r0, r6
	mov r1, r7
	mov r3, r9
	bl NHTTPi_GetPostContentlength
	cmp r0, #0
	bne _020D1EF8
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1EEC:
	ldr r0, [r5, #0x10]
	add r1, r1, r0
	str r1, [sp, #0xc]
_020D1EF8:
	ldr r0, [sp, #0xc]
	add r1, r0, #2
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	cmp r5, r0
	beq _020D1F20
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _020D1E80
_020D1F20:
	add r9, sp, #0x10
	add r1, r1, #0x18
	mov r0, r9
	str r1, [sp, #0xc]
	bl NHTTPi_intToStr
	mov r4, r0
	ldr r1, _020D21B4 ; =0x020E3F33
	mov r0, r10
	mov r2, #0x2c
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	add r1, r7, #0x3a
	mov r2, #0x12
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D21B8 ; =0x020E58FC
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21BC ; =0x020E5970
	mov r0, r10
	mov r2, #0x10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, [r7, #0x34]
	cmp r9, #0
	beq _020D2178
	add r4, r10, #0x324
_020D2010:
	mov r0, r10
	add r1, r7, #0x38
	mov r2, #0x14
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21C0 ; =0x020E3F0C
	mov r0, r10
	mov r2, #0x26
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #8]
	bl NHTTPi_strlen
	mov r2, r0
	ldr r1, [r9, #8]
	mov r0, r10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21C4 ; =0x020E5984
	mov r0, r10
	mov r2, #3
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x14]
	cmp r0, #0
	beq _020D20CC
	ldr r1, _020D21C8 ; =0x020E3F94
	mov r0, r10
	mov r2, #0x4b
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D20CC:
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0xc]
	cmp r1, #0
	bne _020D2128
	ldr r1, [r8, #0xc]
	mov r0, r6
	stmia sp, {r1, r4}
	mov r1, #1
	str r1, [sp, #8]
	ldr r3, [r9, #8]
	mov r1, r7
	add r2, r11, #0x100
	bl NHTTPi_SendPostData
	cmp r0, #0
	beq _020D2140
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2128:
	ldr r2, [r9, #0x10]
	mov r0, r10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2140:
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	cmp r9, r0
	beq _020D2178
	ldr r9, [r9, #4]
	cmp r9, #0
	bne _020D2010
_020D2178:
	mov r0, r10
	add r1, r7, #0x38
	mov r2, #0x14
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21CC ; =0x020E5988
	mov r0, r10
	mov r2, #4
	bl NHTTPi_SendData
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D21B4: .word STR_POST_TYPE_MULTIPART
_020D21B8: .word ov15_020E58FC
_020D21BC: .word ov15_020E5970
_020D21C0: .word STR_POST_DISPOS
_020D21C4: .word ov15_020E5984
_020D21C8: .word STR_POST_TYPE_BIN
_020D21CC: .word ov15_020E5988
	arm_func_end NHTTPi_SendProcPostDataBinary

	arm_static_func_start NHTTPi_SendProcPostDataAscii
NHTTPi_SendProcPostDataAscii: ; 0x020D21D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetMutexInfoP
	mov r7, r0
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r8, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r11, r0
	mov r0, r4
	bl NHTTPi_GetBgnEndInfoP
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r6, [r8, #0x34]
	mov r9, r0
	cmp r6, #0
	beq _020D22B8
	mov r4, #2
	add r10, sp, #0xc
_020D2230:
	ldr r0, [r6, #8]
	bl NHTTPi_getUrlEncodedSize
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _020D2280
	str r4, [sp]
	ldr r2, [r6, #8]
	mov r0, r7
	mov r1, r8
	mov r3, r10
	bl NHTTPi_GetPostContentlength
	cmp r0, #0
	bne _020D2290
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2280:
	bl NHTTPi_getUrlEncodedSize
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
_020D2290:
	ldr r0, [r8, #0x34]
	ldr r0, [r0]
	cmp r6, r0
	beq _020D22B8
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r6, [r6, #4]
	cmp r6, #0
	bne _020D2230
_020D22B8:
	add r6, sp, #0x10
	ldr r1, [sp, #0xc]
	mov r0, r6
	bl NHTTPi_intToStr
	mov r4, r0
	ldr r1, _020D24B8 ; =0x020E3F60
	mov r0, r5
	mov r2, #0x31
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D24BC ; =0x020E5970
	mov r0, r5
	mov r2, #0x10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _020D24C0 ; =0x020E58FC
	mov r4, #2
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r8, #0x34]
	cmp r4, #0
	beq _020D24AC
_020D236C:
	ldr r1, [r4, #8]
	mov r10, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _020D23C0
	add r6, sp, #0x10
_020D2384:
	ldrsb r1, [r1, r10]
	mov r0, r6
	bl NHTTPi_encodeUrlChar
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #8]
	add r10, r10, #1
	ldrsb r0, [r1, r10]
	cmp r0, #0
	bne _020D2384
_020D23C0:
	ldr r1, _020D24C4 ; =0x020E5990
	mov r0, r5
	mov r2, #1
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020D2424
	ldr r1, [r9, #0xc]
	add r0, r5, #0x324
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r3, [r4, #8]
	mov r0, r7
	mov r1, r8
	add r2, r11, #0x100
	bl NHTTPi_SendPostData
	cmp r0, #0
	beq _020D2474
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2424:
	ldrsb r0, [r1]
	mov r10, #0
	cmp r0, #0
	beq _020D2474
	add r6, sp, #0x10
_020D2438:
	ldrsb r1, [r1, r10]
	mov r0, r6
	bl NHTTPi_encodeUrlChar
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	add r10, r10, #1
	ldrsb r0, [r1, r10]
	cmp r0, #0
	bne _020D2438
_020D2474:
	ldr r0, [r8, #0x34]
	ldr r0, [r0]
	cmp r4, r0
	beq _020D24AC
	ldr r1, _020D24C8 ; =0x020E5994
	mov r0, r5
	mov r2, #1
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _020D236C
_020D24AC:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D24B8: .word STR_POST_TYPE_URLENCODE
_020D24BC: .word ov15_020E5970
_020D24C0: .word ov15_020E58FC
_020D24C4: .word ov15_020E5990
_020D24C8: .word ov15_020E5994
	arm_func_end NHTTPi_SendProcPostDataAscii

	arm_static_func_start NHTTPi_ThreadInit
NHTTPi_ThreadInit: ; 0x020D24CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mvn r4, #0
	add r0, r5, #4
	mov r1, #0x100
	str r4, [r5]
	bl NHTTPi_memclr
	add r0, r5, #0x104
	mov r1, #0x200
	bl NHTTPi_memclr
	mov r0, #0
	str r4, [r5, #0x314]
	str r4, [r5, #0x318]
	str r0, [r5, #0x324]
	str r0, [r5, #0x338]
	str r0, [r5, #0x33c]
	str r0, [r5, #0x334]
	str r0, [r5, #0x32c]
	str r0, [r5, #0x330]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_ThreadInit

	arm_static_func_start NHTTPi_ThreadReqEnd
NHTTPi_ThreadReqEnd: ; 0x020D251C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetMutexInfoP
	ldr r1, [r5]
	mov r6, r0
	ldr r7, [r1, #0xc]
	mov r1, r7
	ldr r8, [r7, #0x2c]
	bl NHTTPi_Request2Connection
	mov r9, r0
	ldr r0, [r7]
	cmp r0, #0
	movne r0, #0
	strne r0, [r10, #0x338]
	movne r1, #8
	ldr r0, [r10, #0x338]
	strne r1, [r10, #0x330]
	cmp r0, #0
	bne _020D25B4
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _020D25B4
	mov r0, r6
	mov r1, r7
	bl NHTTPi_SocClose
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [r10, #0x330]
	mvn r0, #0
	str r0, [r4, #0xc]
_020D25B4:
	ldr r0, [r10, #0x330]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #0x10]
	beq _020D25F0
	mov r11, #0
	str r11, [r8, #0x10]
	ldr r1, [r10, #0x330]
	mov r0, r4
	bl NHTTPi_SetError
	ldr r1, [r8, #0x28]
	add r0, r10, #0x104
	cmp r1, r0
	streq r11, [r8, #0x28]
	streq r11, [r8, #0x1c]
_020D25F0:
	cmp r9, #0
	ldrne r0, [r10, #0x330]
	strne r0, [r9, #4]
	mov r0, r6
	bl NHTTPi_lockReqList
	ldr r0, [r5]
	bl NHTTPi_free
	mov r1, #0
	mov r0, r6
	str r1, [r5]
	bl NHTTPi_unlockReqList
	mov r0, r6
	mov r1, r7
	bl NHTTPi_destroyRequestObject
	cmp r9, #0
	ldrne r0, [r8, #0x10]
	mov r1, r9
	cmpne r0, #0
	movne r0, #5
	strne r0, [r9]
	mov r0, r6
	bl NHTTPi_CompleteCallback
	cmp r9, #0
	beq _020D2658
	mov r0, r9
	bl NHTTPi_NotifyCompletion
_020D2658:
	mov r0, r9
	bl NHTTPi_DeleteConnection
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_ThreadReqEnd

	arm_static_func_start NHTTPi_ThreadExecReqQueue
NHTTPi_ThreadExecReqQueue: ; 0x020D2664
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl NHTTPi_GetSystemInfoP
	mov r5, r0
	bl NHTTPi_GetMutexInfoP
	mov r6, r0
	bl NHTTPi_lockReqList
	mov r0, r5
	bl NHTTPi_GetListInfoP
	bl NHTTPi_getReqFromReqQueue
	movs r4, r0
	mvneq r0, #0
	streq r0, [r7]
	beq _020D26B0
	mov r0, r5
	bl NHTTPi_GetReqInfoP
	ldr r1, [r4, #8]
	str r1, [r7]
	str r4, [r0]
_020D26B0:
	mov r0, r6
	bl NHTTPi_unlockReqList
	ldr r0, [r7]
	cmp r0, #0
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl NHTTPi_GetThreadInfoP
	bl NHTTPi_idleCommThread
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NHTTPi_ThreadExecReqQueue

	arm_static_func_start NHTTPi_ThreadHostAddrProc
NHTTPi_ThreadHostAddrProc: ; 0x020D26DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #0x28]
	cmp r0, #0
	addne r6, r4, #0xe4
	mov r0, r6
	bl NHTTPi_strlen
	cmp r0, #0
	beq _020D2728
	mov r0, r6
	add r1, r5, #4
	bl NHTTPi_strcmp
	cmp r0, #0
	beq _020D2764
_020D2728:
	mov r0, r4
	mov r1, r6
	bl NHTTPi_resolveHostname
	str r0, [r5, #0x314]
	cmp r0, #0
	bne _020D276C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #0xc
	strne r0, [r5, #0x330]
	movne r0, #0
	moveq r0, #4
	streq r0, [r5, #0x330]
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D2764:
	ldr r0, [r5, #0x318]
	str r0, [r5, #0x314]
_020D276C:
	add r0, r5, #4
	mov r1, #0x100
	bl NHTTPi_memclr
	mov r0, r6
	mov r1, #0xff
	bl NHTTPi_strnlen
	mov r2, r0
	mov r1, r6
	add r0, r5, #4
	bl NHTTPi_memcpy
	ldr r0, [r4, #0x20]
	ldr r1, [r5, #0x314]
	str r0, [r5, #0x31c]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r4, #0x1e4]
	strne r0, [r5, #0x31c]
	ldr r0, [r5, #0x318]
	cmp r1, r0
	ldreq r1, [r5, #0x31c]
	ldreq r0, [r5, #0x320]
	cmpeq r1, r0
	bne _020D27D4
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _020D27DC
_020D27D4:
	mov r0, #0
	str r0, [r5, #0x338]
_020D27DC:
	ldr r1, [r5, #0x314]
	ldr r0, [r5, #0x31c]
	str r1, [r5, #0x318]
	str r0, [r5, #0x320]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_ThreadHostAddrProc

	arm_static_func_start NHTTPi_ThreadConnectProc
NHTTPi_ThreadConnectProc: ; 0x020D27F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r9, #0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	ldr r1, [r5]
	mov r0, r6
	ldr r6, [r1, #0xc]
	bl NHTTPi_GetMutexInfoP
	ldr r1, [r8, #0x338]
	mov r7, r0
	cmp r1, #1
	bne _020D2850
	ldr r0, [r4, #0xc]
	bl NHTTPi_checkKeepAlive
	cmn r0, #1
	streq r9, [r8, #0x338]
_020D2850:
	ldr r0, [r8, #0x338]
	cmp r0, #0
	bne _020D2960
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _020D2898
	mov r0, r7
	mov r1, r6
	bl NHTTPi_SocClose
	cmp r0, #0
	bge _020D2898
	mvn r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r8, #0x330]
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D2898:
	mov r0, r6
	bl NHTTPi_SocOpen
	cmp r0, #0
	str r0, [r4, #0xc]
	movlt r0, #3
	strlt r0, [r8, #0x330]
	addlt sp, sp, #8
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl NHTTPi_lockReqList
	ldr r2, [r4, #0xc]
	ldr r1, [r5]
	mov r0, r7
	str r2, [r1, #0x10]
	bl NHTTPi_unlockReqList
	ldr r0, [r6]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #0x314]
	mov r0, r4
	str r1, [sp]
	ldr r2, [r8, #0x31c]
	mov r1, r7
	str r2, [sp, #4]
	ldr r3, [r4, #0xc]
	mov r2, r6
	bl NHTTPi_SocConnect
	cmp r0, #0
	bge _020D297C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	movne r0, #0xd
	strne r0, [r8, #0x330]
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0xe
	strne r0, [r8, #0x330]
	movne r0, #0
	moveq r0, #5
	streq r0, [r8, #0x330]
	add sp, sp, #8
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D2960:
	mov r0, r7
	bl NHTTPi_lockReqList
	ldr r2, [r4, #0xc]
	ldr r1, [r5]
	mov r0, r7
	str r2, [r1, #0x10]
	bl NHTTPi_unlockReqList
_020D297C:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_ThreadConnectProc

	arm_static_func_start NHTTPi_ThreadProxyProc
NHTTPi_ThreadProxyProc: ; 0x020D2988
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl NHTTPi_GetSystemInfoP
	mov r7, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r7
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetMutexInfoP
	ldr r2, [r5]
	mov r7, #0
	ldr r5, [r2, #0xc]
	mov r1, #0xa
	str r7, [r6, #0x324]
	str r1, [r6, #0x330]
	ldr r1, [r5, #8]
	mov r8, r0
	cmp r1, #0
	ldrne r0, [r5, #0xc]
	cmpne r0, #0
	beq _020D2A8C
	mov r0, r6
	bl NHTTPi_SendProxyConnectMethod
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl NHTTPi_RecvProxyConnectHeader
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r4, #0xc]
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl NHTTPi_SocSSLConnect
	cmp r0, #0
	beq _020D2A8C
	sub r1, r7, #0x3ec
	cmp r0, r1
	bne _020D2A4C
	mov r0, r4
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0x10
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A4C:
	mvn r1, #0x3ec
	cmp r0, r1
	mov r0, r4
	bne _020D2A74
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0x11
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A74:
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0xe
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A8C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_ThreadProxyProc

	arm_static_func_start NHTTPi_ThreadSendProc
NHTTPi_ThreadSendProc: ; 0x020D2A94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r6
	ldr r8, [r1, #0xc]
	bl NHTTPi_GetMutexInfoP
	mov r7, r0
	mov r0, r6
	bl NHTTPi_GetBgnEndInfoP
	mov r9, r0
	mov r0, r7
	mov r1, r8
	bl NHTTPi_Request2Connection
	mov r7, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	mov r6, r0
	ldr r0, [r8, #0x24]
	bl NHTTPi_strlen
	mov r1, #0xa
	mov r10, r0
	cmp r7, #0
	str r1, [r4, #0x330]
	movne r1, #2
	strne r1, [r7]
	str r5, [r4, #0x324]
	ldr r1, [r8, #0x1c]
	mov r0, r5
	cmp r1, #0
	beq _020D2B34
	cmp r1, #1
	beq _020D2B44
	cmp r1, #2
	beq _020D2B4C
	b _020D2B5C
_020D2B34:
	ldr r1, _020D2DF8 ; =0x020E5998
	mov r0, r4
	mov r2, #4
	b _020D2B58
_020D2B44:
	ldr r1, _020D2DFC ; =0x020E59A0
	b _020D2B50
_020D2B4C:
	ldr r1, _020D2E00 ; =0x020E59A8
_020D2B50:
	mov r0, r4
	mov r2, #5
_020D2B58:
	bl NHTTPi_SendData
_020D2B5C:
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _020D2BA0
	ldr r0, [r8, #8]
	cmp r0, #0
	bne _020D2BA0
	ldr r1, [r8, #0x24]
	mov r0, r4
	mov r2, r10
	bl NHTTPi_SendData
	cmp r0, #0
	beq _020D2BEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BA0:
	ldr r2, [r8, #0x18]
	cmp r10, r2
	ble _020D2BD0
	ldr r1, [r8, #0x24]
	mov r0, r4
	add r1, r1, r2
	sub r2, r10, r2
	bl NHTTPi_SendData
	cmp r0, #0
	beq _020D2BEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BD0:
	ldr r1, _020D2E04 ; =0x020E59B0
	mov r0, r4
	mov r2, #1
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BEC:
	ldr r1, _020D2E08 ; =0x020E5928
	mov r0, r4
	mov r2, #0xb
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #8]
	ldr r1, _020D2E0C ; =0x020E5934
	cmp r0, #0
	mov r7, #8
	mov r0, r4
	mov r2, #6
	moveq r7, #7
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, r4
	add r1, r1, r7
	sub r2, r2, r7
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D2E10 ; =0x020E58FC
	mov r0, r4
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _020D2CA0
	ldr r0, [r8, #8]
	cmp r0, #0
	bne _020D2CA0
	mov r0, r4
	bl NHTTPi_SendProxyAuthorization
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2CA0:
	mov r0, r4
	bl NHTTPi_SendBasicAuthorization
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl NHTTPi_SendHeaderList
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x1c]
	cmp r0, #1
	bne _020D2D78
	ldr r0, [r8, #0x10]
	cmp r0, #0
	beq _020D2CEC
	mov r0, r4
	bl NHTTPi_SendProcPostDataRaw
	b _020D2D5C
_020D2CEC:
	ldr r0, [r8, #0xd4]
	cmp r0, #0
	bne _020D2D38
	ldr r3, [r8, #0x34]
	mov r1, #0
	mov r2, r3
	cmp r3, #0
	beq _020D2D44
_020D2D0C:
	ldr r0, [r2, #0x14]
	cmp r0, #0
	movne r1, #1
	bne _020D2D44
	ldr r0, [r3]
	cmp r2, r0
	beq _020D2D44
	ldr r2, [r2, #4]
	cmp r2, #0
	bne _020D2D0C
	b _020D2D44
_020D2D38:
	mov r1, #1
	cmp r0, #2
	movne r1, #0
_020D2D44:
	cmp r1, #0
	mov r0, r4
	beq _020D2D58
	bl NHTTPi_SendProcPostDataBinary
	b _020D2D5C
_020D2D58:
	bl NHTTPi_SendProcPostDataAscii
_020D2D5C:
	cmp r0, #0
	beq _020D2D94
	cmp r0, #3
	moveq r1, #3
	add sp, sp, #4
	streq r1, [r4, #0x330]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2D78:
	ldr r1, _020D2E10 ; =0x020E58FC
	mov r0, r4
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2D94:
	ldr r3, [r4, #0x324]
	mov r10, #0
	cmp r3, #0
	ble _020D2DDC
	str r10, [sp]
	ldr r1, [r9, #0xc]
	mov r0, r8
	add r2, r6, #0x100
	bl NHTTPi_SocSend
	mov r7, r0
	add r0, r6, #0x100
	mov r1, #0x4000
	str r10, [r4, #0x324]
	bl NHTTPi_memclr
	cmp r7, #0
	movlt r10, #1
	cmp r7, #0
	moveq r10, #2
_020D2DDC:
	add r0, r6, #0x100
	mov r1, #0x4000
	str r5, [r4, #0x324]
	bl NHTTPi_memclr
	mov r0, r10
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2DF8: .word ov15_020E5998
_020D2DFC: .word ov15_020E59A0
_020D2E00: .word ov15_020E59A8
_020D2E04: .word ov15_020E59B0
_020D2E08: .word ov15_020E5928
_020D2E0C: .word ov15_020E5934
_020D2E10: .word ov15_020E58FC
	arm_func_end NHTTPi_ThreadSendProc

	arm_static_func_start NHTTPi_ThreadRecvHeaderProc
NHTTPi_ThreadRecvHeaderProc: ; 0x020D2E14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r7, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r7
	ldr r4, [r1, #0xc]
	ldr r5, [r4, #0x2c]
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r6, r0
	bl NHTTPi_Request2Connection
	mov r8, r0
	mov r0, r7
	bl NHTTPi_GetBgnEndInfoP
	add r1, sp, #0xc
	mov r11, #0
	mov r7, r0
	cmp r8, #0
	strb r11, [r1]
	strb r11, [r1, #1]
	strb r11, [r1, #2]
	strb r11, [r1, #3]
	movne r0, #3
	strne r0, [r8]
	str r11, [r5]
	add r0, r10, #0x304
	mov r1, #0xe
	bl NHTTPi_memclr
	ldr r8, [r5, #0x34]
	add r0, r5, #0x38
	str r11, [r10, #0x328]
	str r0, [sp, #8]
_020D2EA0:
	ldr r0, [r4]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x328]
	cmp r1, #0x400
	bge _020D2EF4
	ldr r0, [sp, #8]
	add r3, r0, r1
	mov r0, #1
	stmia sp, {r0, r11}
	ldr r2, [r7, #0xc]
	mov r0, r6
	mov r1, r4
	bl NHTTPi_SocRecv
	ldr r2, [r10, #0x328]
	add r1, r5, r2
	ldrsb r3, [r1, #0x38]
	and r2, r2, #3
	b _020D2F78
_020D2EF4:
	ldr r0, _020D2FDC ; =0x000001FF
	ands r9, r1, r0
	bne _020D2F48
	cmp r8, #0
	mov r0, #0x204
	mov r1, #4
	beq _020D2F20
	bl NHTTPi_alloc
	str r0, [r8]
	mov r8, r0
	b _020D2F2C
_020D2F20:
	bl NHTTPi_alloc
	mov r8, r0
	str r8, [r5, #0x34]
_020D2F2C:
	cmp r8, #0
	moveq r0, #1
	streq r0, [r10, #0x330]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r11, [r8]
_020D2F48:
	mov r0, #1
	stmia sp, {r0, r11}
	add r3, r8, #4
	ldr r2, [r7, #0xc]
	mov r0, r6
	mov r1, r4
	add r3, r3, r9
	bl NHTTPi_SocRecv
	add r1, r8, r9
	ldrsb r3, [r1, #4]
	ldr r1, [r10, #0x328]
	and r2, r1, #3
_020D2F78:
	add r1, sp, #0xc
	strb r3, [r1, r2]
	cmp r0, #0
	movle r0, #0xa
	strle r0, [r10, #0x330]
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x328]
	add r1, r1, r0
	add r0, sp, #0xc
	str r1, [r10, #0x328]
	bl NHTTPi_CheckHeaderEnd
	cmp r0, #0
	beq _020D2EA0
	ldr r0, [r10, #0x328]
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	moveq r0, #7
	streq r0, [r10, #0x330]
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2FDC: .word 0x000001FF
	arm_func_end NHTTPi_ThreadRecvHeaderProc

	arm_static_func_start NHTTPi_ThreadParseHeaderProc
NHTTPi_ThreadParseHeaderProc: ; 0x020D2FE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r9, #7
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r6, [r1, #0xc]
	ldr r7, [r6, #0x2c]
	bl NHTTPi_GetThreadInfoP
	mov r4, #0
	mov r5, r0
	mov r0, r7
	add r1, r8, #0x304
	mov r2, r4
	mov r3, #0xe
	bl NHTTPi_loadFromHdrRecvBuf
	cmp r0, #0
	moveq r1, r9
	addeq sp, sp, #0xc
	moveq r0, r4
	streq r1, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D328C ; =0x020E5964
	add r0, r8, #0x304
	mov r2, #5
	bl NHTTPi_strnicmp
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	strne r9, [r8, #0x330]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r8, #0x300
	ldrsb r0, [r0, #0xc]
	cmp r0, #0x20
	addne sp, sp, #0xc
	movne r0, r4
	strne r9, [r8, #0x330]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r8, #0xd
	add r0, r0, #0x300
	mov r1, #3
	bl NHTTPi_strToInt
	cmp r0, #0
	str r0, [r7, #0x18]
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r9, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r4, [sp]
	mov r10, #0xc
	ldr r2, [r7]
	add r3, sp, #8
	mov r0, r7
	mov r1, r10
	bl NHTTPi_findNextLineHdrRecvBuf
	cmp r0, #0
	movlt r1, r9
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r1, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D3290 ; =0x020E59B4
	add r2, sp, #4
	mov r0, r7
	mov r9, r4
	bl NHTTPi_getHeaderValue
	movs r3, r0
	addeq sp, sp, #0xc
	str r3, [r8, #0x32c]
	moveq r0, r4
	streq r4, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0x4000
	mov r1, #7
	addgt sp, sp, #0xc
	movgt r0, r4
	strgt r1, [r8, #0x330]
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0
	ble _020D3180
	ldr r2, [sp, #4]
	mov r0, r7
	add r1, r5, #0x100
	bl NHTTPi_loadFromHdrRecvBuf
	cmp r0, #0
	moveq r1, #7
	addeq sp, sp, #0xc
	moveq r0, r4
	streq r1, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x32c]
	add r0, r5, #0x100
	mov r5, #7
	bl NHTTPi_strToInt
	cmp r0, #0
	str r0, [r8, #0x32c]
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r5, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	b _020D3184
_020D3180:
	sub r0, r10, #0xd
_020D3184:
	str r0, [r7, #0xc]
	ldr r0, [r6, #8]
	mov r4, #7
	cmp r0, #0
	strne r9, [r8, #0x338]
	bne _020D3208
	ldr r1, _020D3294 ; =0x020E59C4
	add r2, sp, #4
	mov r0, r7
	bl NHTTPi_getHeaderValue
	movs r2, r0
	moveq r0, #0
	addeq sp, sp, #0xc
	streq r4, [r8, #0x330]
	streq r0, [r8, #0x338]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #0x4000
	strgt r9, [r8, #0x338]
	bgt _020D3208
	cmp r2, #0
	ble _020D3204
	ldr r1, [sp, #4]
	ldr r3, _020D3298 ; =0x020E59D0
	mov r0, r7
	add r2, r1, r2
	str r9, [sp]
	bl NHTTPi_compareTokenN_HdrRecvBuf
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #0x338]
	strne r9, [r8, #0x338]
	b _020D3208
_020D3204:
	str r9, [r8, #0x338]
_020D3208:
	ldr r1, _020D329C ; =0x020E59DC
	add r2, sp, #4
	mov r0, r7
	bl NHTTPi_getHeaderValue
	movs r2, r0
	addeq sp, sp, #0xc
	str r2, [r8, #0x33c]
	streq r4, [r8, #0x330]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #0x4000
	strgt r9, [r8, #0x33c]
	bgt _020D3278
	cmp r2, #0
	ble _020D3270
	ldr r1, [sp, #4]
	ldr r3, _020D32A0 ; =0x020E59F0
	mov r4, #0x3b
	mov r0, r7
	add r2, r1, r2
	str r4, [sp]
	bl NHTTPi_compareTokenN_HdrRecvBuf
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020D3274
_020D3270:
	mov r0, #0
_020D3274:
	str r0, [r8, #0x33c]
_020D3278:
	str r9, [r8, #0x330]
	mov r0, #1
	str r0, [r7, #0x14]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D328C: .word ov15_020E5964
_020D3290: .word ov15_020E59B4
_020D3294: .word ov15_020E59C4
_020D3298: .word ov15_020E59D0
_020D329C: .word ov15_020E59DC
_020D32A0: .word ov15_020E59F0
	arm_func_end NHTTPi_ThreadParseHeaderProc

	arm_static_func_start NHTTPi_ThreadRecvBodyProc
NHTTPi_ThreadRecvBodyProc: ; 0x020D32A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, #0
	bl NHTTPi_GetSystemInfoP
	mov r8, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r8
	ldr r4, [r1, #0xc]
	ldr r5, [r4, #0x2c]
	bl NHTTPi_GetBgnEndInfoP
	mov r6, r0
	mov r0, r8
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r7, r0
	bl NHTTPi_Request2Connection
	str r0, [sp, #8]
	mov r0, r8
	bl NHTTPi_GetThreadInfoP
	add r8, r0, #0x100
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	ldrne r0, [r5, #0x18]
	cmpne r0, #0xcc
	cmpne r0, #0x130
	beq _020D3324
	cmp r0, #0x64
	blt _020D3330
	cmp r0, #0xc8
	bge _020D3330
_020D3324:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3330:
	ldr r0, [sp, #8]
	mov r1, #0
	bl NHTTPi_SetVirtualContentLength
	ldr r0, [sp, #8]
	cmp r0, #0
	movne r1, #4
	strne r1, [r0]
	ldr r1, [r10, #0x32c]
	cmp r1, #0
	blt _020D3460
	ldr r0, [sp, #8]
	bl NHTTPi_SetVirtualContentLength
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	ble _020D3420
	add r8, r10, #0x104
	mov r11, #6
_020D3374:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D33A0
	mov r0, r7
	mov r1, r5
	bl NHTTPi_BufFull
	cmp r0, #0
	streq r11, [r10, #0x330]
	streq r8, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
_020D33A0:
	ldr r0, [r10, #0x330]
	ldr r1, [r10, #0x32c]
	cmp r0, #6
	stmia sp, {r1, r9}
	mov r0, r7
	ldr r2, [r6, #0xc]
	bne _020D33C8
	mov r1, r4
	mov r3, r9
	b _020D33D0
_020D33C8:
	ldr r3, [r5, #4]
	mov r1, r4
_020D33D0:
	bl NHTTPi_RecvBufN
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020D3420
	ldr r1, [r10, #0x330]
	cmp r1, #6
	beq _020D340C
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #8]
_020D340C:
	ldr r1, [r10, #0x32c]
	sub r0, r1, r0
	str r0, [r10, #0x32c]
	cmp r0, #0
	bgt _020D3374
_020D3420:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D3748
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	beq _020D3458
	ldr r1, [r5, #4]
	mov r0, r5
	bl NHTTPi_isRecvBufFull
	cmp r0, #0
	movne r0, #6
	moveq r0, #0xa
	str r0, [r10, #0x330]
	b _020D3748
_020D3458:
	str r9, [r10, #0x330]
	b _020D3748
_020D3460:
	ldr r0, [r10, #0x33c]
	mov r1, #0xa
	str r1, [r10, #0x330]
	cmp r0, #0
	beq _020D369C
	sub r9, r1, #0xb
_020D3478:
	mov r1, #0
	strb r1, [sp, #0xc]
	strb r1, [sp, #0xd]
	str r1, [r10, #0x328]
	cmp r1, #0x4000
	bge _020D356C
_020D3490:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r3, r8, r1
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl NHTTPi_SocRecv
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, [r10, #0x328]
	add r1, sp, #0xc
	ldrsb r0, [r8, r11]
	and r2, r11, #1
	strb r0, [r1, r2]
	cmp r0, #0x3b
	beq _020D34FC
	cmp r0, #0xa
	subeq r1, r11, #1
	andeq r2, r1, #1
	addeq r1, sp, #0xc
	ldreqsb r1, [r1, r2]
	cmpeq r1, #0xd
	bne _020D3558
_020D34FC:
	cmp r0, #0xa
	subeq r11, r11, #1
	beq _020D3528
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl NHTTPi_SkipLineBuf
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3528:
	cmp r11, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	mov r1, r11
	bl NHTTPi_strToHex
	movs r9, r0
	bpl _020D356C
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3558:
	ldr r0, [r10, #0x328]
	add r1, r0, #1
	str r1, [r10, #0x328]
	cmp r1, #0x4000
	blt _020D3490
_020D356C:
	ldr r0, [r10, #0x328]
	mov r11, #0
	cmp r0, #0x4000
	moveq r0, #7
	streq r0, [r10, #0x330]
	addeq sp, sp, #0x10
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	ble _020D3684
	ldr r0, [sp, #8]
	mov r1, r9
	bl NHTTPi_SetVirtualContentLength
	cmp r9, #0
	ble _020D3478
	add r11, r10, #0x104
_020D35AC:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D35DC
	mov r0, r7
	mov r1, r5
	bl NHTTPi_BufFull
	cmp r0, #0
	moveq r0, #6
	streq r0, [r10, #0x330]
	streq r11, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
_020D35DC:
	ldr r0, [r10, #0x330]
	mov r1, r4
	cmp r0, #6
	str r9, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r7
	bne _020D3608
	ldr r2, [r6, #0xc]
	mov r3, #0
	b _020D3610
_020D3608:
	ldr r2, [r6, #0xc]
	ldr r3, [r5, #4]
_020D3610:
	bl NHTTPi_RecvBufN
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #4]
	subs r9, r9, r0
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	bne _020D3678
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	mov r3, r8
	bl NHTTPi_SocRecv
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3678:
	cmp r9, #0
	bgt _020D35AC
	b _020D3478
_020D3684:
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl NHTTPi_SkipLineBuf
	str r11, [r10, #0x330]
	b _020D3748
_020D369C:
	add r8, r10, #0x104
	mov r11, #6
_020D36A4:
	mov r0, r7
	mov r1, r5
	bl NHTTPi_BufFull
	cmp r0, #0
	streq r11, [r10, #0x330]
	streq r8, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
	ldr r0, [r10, #0x330]
	cmp r0, #6
	bne _020D36E8
	str r9, [sp]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	mov r3, r9
	b _020D3700
_020D36E8:
	mov r0, #0
	str r0, [sp]
	ldr r2, [r6, #0xc]
	ldr r3, [r5, #4]
	mov r0, r7
	mov r1, r4
_020D3700:
	bl NHTTPi_RecvBuf
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020D372C
	ldr r1, [r10, #0x330]
	mov r0, #0
	cmp r1, #6
	strne r0, [r10, #0x330]
	b _020D3748
_020D372C:
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	b _020D36A4
_020D3748:
	mov r0, r7
	mov r1, r5
	bl NHTTPi_Response2Connection
	ldr r2, [r10, #0x330]
	mov r1, r0
	cmp r2, #0
	bne _020D3774
	cmp r1, #0
	beq _020D3774
	mov r0, r7
	bl NHTTPi_ReceivedCallback
_020D3774:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_ThreadRecvBodyProc

	arm_func_start NHTTPi_CommThreadProcMain
NHTTPi_CommThreadProcMain: ; 0x020D3780
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x340
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r8, r0
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	add r7, sp, #0
	mov r9, r0
	mov r0, r7
	bl NHTTPi_ThreadInit
	ldr r0, [r8, #0x18]
	cmp r0, #0
	addne sp, sp, #0x340
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	mov r6, #0
	mov r5, r4
_020D37CC:
	ldr r0, [sp, #0x334]
	cmp r0, #0
	bne _020D3814
	mov r0, r7
	bl NHTTPi_ThreadExecReqQueue
	cmp r0, #0
	beq _020D38E0
	ldr r0, [r9]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r7
	beq _020D3804
_020D3800:
	b _020D38DC
_020D3804:
	bl NHTTPi_ThreadHostAddrProc
	cmp r0, #0
	bne _020D3814
	b _020D38D8
_020D3814:
	ldr r0, [sp, #0x334]
	cmp r0, #1
	mov r0, r7
	streq r6, [sp, #0x334]
	bl NHTTPi_ThreadConnectProc
	cmp r0, #0
	mov r0, r7
	bne _020D3838
	b _020D3800
_020D3838:
	bl NHTTPi_ThreadProxyProc
	cmp r0, #0
	beq _020D3860
	cmp r0, #1
	beq _020D385C
	cmp r0, #2
	bne _020D3860
	str r5, [sp, #0x334]
	b _020D38E0
_020D385C:
	b _020D38D8
_020D3860:
	mov r0, r7
	bl NHTTPi_ThreadSendProc
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020D3890
_020D3874: ; jump table
	b _020D3890 ; case 0
	b _020D388C ; case 1
	b _020D3884 ; case 2
	b _020D388C ; case 3
_020D3884:
	str r4, [sp, #0x334]
	b _020D38E0
_020D388C:
	b _020D38D8
_020D3890:
	ldr r0, [r9]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r7
	beq _020D38AC
	b _020D3800
_020D38AC:
	bl NHTTPi_ThreadRecvHeaderProc
	cmp r0, #0
	mov r0, r7
	bne _020D38C0
	b _020D3800
_020D38C0:
	bl NHTTPi_ThreadParseHeaderProc
	cmp r0, #0
	mov r0, r7
	bne _020D38D4
	b _020D3800
_020D38D4:
	bl NHTTPi_ThreadRecvBodyProc
_020D38D8:
	mov r0, r7
_020D38DC:
	bl NHTTPi_ThreadReqEnd
_020D38E0:
	ldr r0, [r8, #0x18]
	cmp r0, #0
	beq _020D37CC
	add sp, sp, #0x340
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_CommThreadProcMain

    .rodata
STR_POST_DISPOS:
	.asciz "Content-Disposition: form-data; name=\""
STR_POST_TYPE_MULTIPART:
	.asciz "Content-Type: multipart/form-data; boundary="
STR_POST_TYPE_URLENCODE:
	.asciz "Content-Type: application/x-www-form-urlencoded\r\n"
	.balign 4, 0
STR_POST_TYPE_BIN:
	.asciz "Content-Type: application/octet-stream\r\nContent-Transfer-Encoding: binary\r\n"

    .data
ov15_020E58E0:
	.asciz "Proxy-Authorization: Basic "
	.balign 4, 0
ov15_020E58FC:
	.asciz "\r\n"
	.balign 4, 0
ov15_020E5900:
	.asciz "Authorization: Basic "
	.balign 4, 0
ov15_020E5918:
	.asciz "CONNECT "
	.balign 4, 0
ov15_020E5924:
	.asciz ":"
	.balign 4, 0
ov15_020E5928:
	.asciz " HTTP/1.1\r\n"
	.balign 4, 0
ov15_020E5934:
	.asciz "Host: "
	.balign 4, 0
ov15_020E593C:
	.asciz "Content-Length: 0\r\nPragma: no-cache\r\n"
	.balign 4, 0
ov15_020E5964:
	.asciz "HTTP/"
	.balign 4, 0
ov15_020E596C:
	.asciz ": "
	.balign 4, 0
ov15_020E5970:
	.asciz "Content-Length: "
	.balign 4, 0
ov15_020E5984:
	.asciz "\"\r\n"
	.balign 4, 0
ov15_020E5988:
	.asciz "--\r\n"
	.balign 4, 0
ov15_020E5990:
	.asciz "="
	.balign 4, 0
ov15_020E5994:
	.asciz "&"
	.balign 4, 0
ov15_020E5998:
	.asciz "GET "
	.balign 4, 0
ov15_020E59A0:
	.asciz "POST "
	.balign 4, 0
ov15_020E59A8:
	.asciz "HEAD "
	.balign 4, 0
ov15_020E59B0:
	.asciz "/"
	.balign 4, 0
ov15_020E59B4:
	.asciz "Content-Length"
	.balign 4, 0
ov15_020E59C4:
	.asciz "Connection"
	.balign 4, 0
ov15_020E59D0:
	.asciz "Keep-Alive"
	.balign 4, 0
ov15_020E59DC:
	.asciz "Transfer-Encoding"
	.balign 4, 0
ov15_020E59F0:
	.asciz "chunked"

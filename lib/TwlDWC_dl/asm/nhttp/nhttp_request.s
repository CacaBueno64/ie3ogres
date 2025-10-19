
	.include "asm/macros/function.inc"
	.public NHTTPi_GetBgnEndInfoP
	.public NHTTPi_GetListInfoP
	.public NHTTPi_GetMutexInfoP
	.public NHTTPi_GetReqInfoP
	.public NHTTPi_GetThreadInfoP
	.public NHTTPi_Request2Connection
	.public NHTTPi_SetError
	.public NHTTPi_SocCancel
	.public NHTTPi_allFreeReqQueue
	.public NHTTPi_alloc
	.public NHTTPi_free
	.public NHTTPi_freeReqQueue
	.public NHTTPi_kickCommThread
	.public NHTTPi_lockReqList
	.public NHTTPi_memclr
	.public NHTTPi_memcpy
	.public NHTTPi_setReqQueue
	.public NHTTPi_strToHex
	.public NHTTPi_strnicmp
	.public NHTTPi_strnlen
	.public NHTTPi_strtonum
	.public NHTTPi_unlockReqList

	.text
	arm_func_start NHTTPi_InitRequestInfo
NHTTPi_InitRequestInfo: ; 0x020D0704
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end NHTTPi_InitRequestInfo

	arm_func_start NHTTPi_CreateRequest
NHTTPi_CreateRequest: ; 0x020D0710
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x208
	mov r8, r1
	movs r1, r2
	cmpne r1, #1
	str r2, [sp, #4]
	str r0, [sp]
	mov r6, r3
	mov r4, #4
	mov r7, #0
	cmpne r1, #2
	beq _020D0748
	mov r1, #0xb
_020D0744:
	b _020D0768
_020D0748:
	mov r5, #0x258
	mov r0, r5
	mov r1, r4
	bl NHTTPi_alloc
	movs r7, r0
	bne _020D0770
_020D0760:
	ldr r0, [sp]
	mov r1, #1
_020D0768:
	bl NHTTPi_SetError
	b _020D0B9C
_020D0770:
	mov r1, r5
	bl NHTTPi_memclr
	rsb r9, r4, #0x440
	mov r0, r9
	mov r1, r4
	bl NHTTPi_alloc
	str r0, [r7, #0x2c]
	cmp r0, #0
	bne _020D0798
	b _020D0760
_020D0798:
	mov r1, r9
	bl NHTTPi_memclr
	ldr r0, [r7, #0x2c]
	ldr r2, [sp, #0x230]
	str r6, [r0, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r1, [sp, #0x238]
	str r2, [r0, #0x1c]
	ldr r0, [r7, #0x2c]
	ldr r3, [sp, #0x23c]
	str r1, [r0, #0x2c]
	ldr r2, [r7, #0x2c]
	mov r0, r8
	sub r1, r5, #0x59
	str r3, [r2, #0x30]
	bl NHTTPi_strnlen
	mov r5, r0
	cmp r5, #7
	bgt _020D07E8
	b _020D084C
_020D07E8:
	add r6, sp, #8
	mov r1, #0x200
	mov r0, r6
	bl NHTTPi_memclr
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl NHTTPi_memcpy
	mov r8, #7
	mov r0, #0x50
	str r0, [r7, #0x20]
	ldr r1, _020D0BE8 ; =0x020E58BC
	mov r0, r6
	mov r2, r8
	bl NHTTPi_strnicmp
	cmp r0, #0
	beq _020D0864
	mov r8, #8
	ldr r1, _020D0BEC ; =0x020E58C4
	mov r0, r6
	mov r2, r8
	mov r6, #1
	bl NHTTPi_strnicmp
	cmp r0, #0
	beq _020D0858
_020D084C:
	ldr r0, [sp]
	mov r1, r4
	b _020D0744
_020D0858:
	str r6, [r7, #8]
	rsb r0, r6, #0x1bc
	str r0, [r7, #0x20]
_020D0864:
	add r0, sp, #8
	sub r4, r5, r8
	cmp r4, #0
	add r6, r0, r8
	bgt _020D0884
_020D0878:
	ldr r0, [sp]
	mov r1, #4
	b _020D0768
_020D0884:
	mov r5, #0
	mov r9, r5
	mov r10, r5
	mov r11, #2
	b _020D08F0
_020D0898:
	cmp r10, #2
	subeq r10, r10, #1
	beq _020D08EC
	cmp r10, #1
	bne _020D08E0
	sub r0, r5, #1
	mov r1, r11
	add r0, r6, r0
	bl NHTTPi_strToHex
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	sub r10, r10, #1
	bpl _020D08D0
	b _020D0878
_020D08D0:
	cmp r0, #0x2f
	bne _020D08EC
	sub r9, r9, #1
	b _020D0904
_020D08E0:
	cmp r0, #0x25
	moveq r10, #2
	addeq r9, r9, #1
_020D08EC:
	add r5, r5, #1
_020D08F0:
	cmp r5, r4
	bge _020D0904
	ldrsb r0, [r6, r5]
	cmp r0, #0x2f
	bne _020D0898
_020D0904:
	cmp r10, #0
	mov r1, #4
	beq _020D0918
	ldr r0, [sp]
	b _020D0744
_020D0918:
	add r0, r8, r4
	sub r5, r0, r9, lsl #1
	add r0, r5, #1
	bl NHTTPi_alloc
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _020D0938
	b _020D0760
_020D0938:
	add r1, r5, #1
	bl NHTTPi_memclr
	ldr r0, [r7, #0x24]
	add r1, sp, #8
	mov r2, r8
	bl NHTTPi_memcpy
	mov r9, #0
	mov r5, r9
	mov r10, r9
	mov r11, r9
	cmp r4, #0
	ble _020D09E8
_020D0968:
	cmp r10, #2
	subeq r10, r10, #1
	beq _020D09DC
	cmp r10, #1
	bne _020D09B4
	sub r0, r9, #1
	add r0, r6, r0
	mov r1, #2
	bl NHTTPi_strToHex
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, [r7, #0x24]
	cmp r1, #0x2f
	add r0, r8, r0
	add r0, r5, r0
	sub r10, r10, #1
	strb r1, [r0, #-1]
	moveq r11, #1
	b _020D09DC
_020D09B4:
	ldrsb r1, [r6, r9]
	cmp r1, #0x2f
	moveq r11, #1
	cmp r11, #0
	cmpeq r1, #0x25
	ldrne r0, [r7, #0x24]
	moveq r10, #2
	addne r0, r8, r0
	strneb r1, [r5, r0]
	add r5, r5, #1
_020D09DC:
	add r9, r9, #1
	cmp r9, r4
	blt _020D0968
_020D09E8:
	ldr r2, [r7, #0x24]
	mov r0, #0
	add r1, r8, r5
	strb r0, [r2, r1]
	ldr r1, [r7, #0x24]
	cmp r5, #0
	add r2, r1, r8
	mov r4, r0
	ble _020D0A30
_020D0A0C:
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	cmpne r1, #0x3a
	addeq r1, r0, r8
	streq r1, [r7, #0x14]
	beq _020D0A30
	add r0, r0, #1
	cmp r0, r5
	blt _020D0A0C
_020D0A30:
	cmp r0, r5
	addeq r0, r0, r8
	streq r0, [r7, #0x14]
	streq r0, [r7, #0x18]
	beq _020D0ADC
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	ldreq r0, [r7, #0x14]
	streq r0, [r7, #0x18]
	beq _020D0ADC
	cmp r1, #0x3a
	bne _020D0ADC
	cmp r0, r5
	bge _020D0A88
_020D0A68:
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	addeq r1, r0, r8
	streq r1, [r7, #0x18]
	beq _020D0A88
	add r0, r0, #1
	cmp r0, r5
	blt _020D0A68
_020D0A88:
	cmp r0, r5
	addeq r0, r0, r8
	streq r0, [r7, #0x18]
	beq _020D0ADC
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x18]
	add r0, r0, r2
	sub r1, r1, r2
	bl NHTTPi_strtonum
	cmp r0, #0
	ldrlt r0, [r7, #0x20]
	blt _020D0AD0
	ldr r1, _020D0BF0 ; =0x0000FFFF
	cmp r0, r1
	ble _020D0AD0
	b _020D0878
_020D0AD0:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x20]
_020D0ADC:
	ldr r0, [r7, #8]
	mov r2, #8
	cmp r0, #0
	ldr r0, [r7, #0x14]
	moveq r2, #7
	sub r5, r0, r2
	mov r1, #4
	add r0, r5, #1
	bl NHTTPi_alloc
	str r0, [r7, #0x28]
	cmp r0, #0
	bne _020D0B10
	b _020D0760
_020D0B10:
	add r1, r5, #1
	bl NHTTPi_memclr
	ldr r0, [r7, #8]
	mov r3, #8
	cmp r0, #0
	ldr r1, [r7, #0x24]
	moveq r3, #7
	ldr r0, [r7, #0x28]
	mov r2, r5
	add r1, r1, r3
	bl NHTTPi_memcpy
	ldr r1, _020D0BF4 ; =0x020E3EF4
	add r0, r7, #0x38
	mov r2, #0x14
	bl NHTTPi_memcpy
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x234]
	str r0, [r7, #0x1c]
	str r4, [r7, #0xac]
	str r4, [r7, #0xb0]
	str r4, [r7, #0xb4]
	str r4, [r7, #0xb8]
	str r4, [r7, #0xbc]
	str r4, [r7, #0xc0]
	str r4, [r7, #0xc4]
	str r4, [r7, #0xcc]
	str r4, [r7, #0xd0]
	str r4, [r7, #0xd8]
	ldr r1, [r7, #0x2c]
	add sp, sp, #0x208
	str r2, [r1, #0x438]
	str r4, [r7, #0xc]
	mov r0, r7
	str r4, [r7, #0x248]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0B9C:
	cmp r7, #0
	beq _020D0BDC
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _020D0BB4
	bl NHTTPi_free
_020D0BB4:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _020D0BC4
	bl NHTTPi_free
_020D0BC4:
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq _020D0BD4
	bl NHTTPi_free
_020D0BD4:
	mov r0, r7
	bl NHTTPi_free
_020D0BDC:
	mov r0, #0
	add sp, sp, #0x208
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0BE8: .word ov15_020E58BC
_020D0BEC: .word ov15_020E58C4
_020D0BF0: .word 0x0000FFFF
_020D0BF4: .word NHTTPi_strMultipartBound
	arm_func_end NHTTPi_CreateRequest

	arm_func_start NHTTPi_DestroyRequest
NHTTPi_DestroyRequest: ; 0x020D0BF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl NHTTPi_GetMutexInfoP
	mov r1, r5
	mov r4, r0
	bl NHTTPi_Request2Connection
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x14]
	ldr r0, [r5, #0x2c]
	bl NHTTPi_free
	mov r0, r4
	mov r1, r5
	bl NHTTPi_destroyRequestObject
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_DestroyRequest

	arm_static_func_start deleteStrList
deleteStrList: ; 0x020D0C34
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
_020D0C44:
	ldr r0, [r6]
	cmp r6, r0
	beq _020D0C60
	ldr r5, [r0]
	bl NHTTPi_free
	str r5, [r6]
	b _020D0C6C
_020D0C60:
	mov r0, r6
	bl NHTTPi_free
	mov r6, r4
_020D0C6C:
	cmp r6, #0
	bne _020D0C44
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end deleteStrList

	arm_func_start NHTTPi_destroyRequestObject
NHTTPi_destroyRequestObject: ; 0x020D0C78
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_Request2Connection
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x10]
	ldr r0, [r4, #0x30]
	bl deleteStrList
	ldr r0, [r4, #0x34]
	bl deleteStrList
	ldr r0, [r4, #0x24]
	bl NHTTPi_free
	ldr r0, [r4, #0x28]
	bl NHTTPi_free
	mov r0, r4
	bl NHTTPi_free
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_destroyRequestObject

	arm_func_start NHTTPi_SendRequestAsync
NHTTPi_SendRequestAsync: ; 0x020D0CC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r8, r1
	bl NHTTPi_GetBgnEndInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetThreadInfoP
	mov r4, r0
	mov r0, r7
	bl NHTTPi_GetMutexInfoP
	ldr r1, [r8, #4]
	mov r6, r0
	cmp r1, #0
	beq _020D0D10
	mov r4, #0xb
	mov r0, r5
	mov r1, r4
	bl NHTTPi_SetError
	sub r0, r4, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D0D10:
	bl NHTTPi_lockReqList
	mov r0, r7
	bl NHTTPi_GetListInfoP
	mov r1, r8
	bl NHTTPi_setReqQueue
	movs r7, r0
	mov r1, #1
	bmi _020D0D40
	mov r0, r4
	str r1, [r8, #4]
	bl NHTTPi_kickCommThread
	b _020D0D48
_020D0D40:
	mov r0, r5
	bl NHTTPi_SetError
_020D0D48:
	mov r0, r6
	bl NHTTPi_unlockReqList
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_SendRequestAsync

	arm_func_start NHTTPi_CancelRequestAsync
NHTTPi_CancelRequestAsync: ; 0x020D0D58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r8
	bl NHTTPi_GetMutexInfoP
	ldr r6, [r5]
	mov r5, r0
	bl NHTTPi_lockReqList
	cmp r6, #0
	beq _020D0DC0
	ldr r0, [r6, #8]
	cmp r0, r7
	ldreq r0, [r6, #0xc]
	ldreq r0, [r0]
	cmpeq r0, #0
	bne _020D0DC0
	ldr r0, [r6, #0xc]
	mov r4, #1
	str r4, [r0]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r0, r5
	bl NHTTPi_SocCancel
_020D0DC0:
	cmp r4, #0
	bne _020D0DE0
	mov r0, r8
	bl NHTTPi_GetListInfoP
	mov r1, r5
	mov r2, r7
	bl NHTTPi_freeReqQueue
	mov r4, r0
_020D0DE0:
	mov r0, r5
	bl NHTTPi_unlockReqList
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_CancelRequestAsync

	arm_func_start NHTTPi_cancelAllRequests
NHTTPi_cancelAllRequests: ; 0x020D0DF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl NHTTPi_GetReqInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetListInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetMutexInfoP
	ldr r6, [r4]
	mov r4, r0
	bl NHTTPi_lockReqList
	cmp r6, #0
	beq _020D0E54
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	bne _020D0E54
	ldr r0, [r6, #0xc]
	mov r1, #1
	str r1, [r0]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r0, r4
	bl NHTTPi_SocCancel
_020D0E54:
	mov r0, r5
	mov r1, r4
	bl NHTTPi_allFreeReqQueue
	mov r0, r4
	bl NHTTPi_unlockReqList
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_cancelAllRequests

    .rodata
	.global NHTTPi_strMultipartBound
NHTTPi_strMultipartBound:
	.asciz "--t9Sf4yfjf1RtvDu3AA"

    .data
ov15_020E58BC:
	.asciz "http://"
	.balign 4, 0
ov15_020E58C4:
	.asciz "https://"

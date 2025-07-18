
	.include "asm/macros/function.inc"
	.include "librtc.inc"

	.text
	arm_func_start RTC_Init
RTC_Init: ; 0x0200ADC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0200AE28 ; =rtcInitialized
	ldrh r1, [r0]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bl PXI_Init
	mov r5, #5
	mov r4, #1
_0200AE04:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0200AE04
	ldr r1, _0200AE2C ; =RtcCommonCallback
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	ldmfd sp!, {r3, r4, r5, pc}
_0200AE28: .word rtcInitialized
_0200AE2C: .word RtcCommonCallback
	arm_func_end RTC_Init

	arm_func_start RTC_GetDateAsync
RTC_GetDateAsync: ; 0x0200AE30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	ldr r4, _0200AE9C ; =rtcInitialized
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0200AE60
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200AE60:
	mov r1, #1
	str r1, [r4, #4]
	bl OS_RestoreInterrupts
	mov r5, #0
	str r5, [r4, #0x18]
	str r5, [r4, #0x1c]
	str r8, [r4, #0xc]
	str r7, [r4, #8]
	str r6, [r4, #0x14]
	bl RTCi_ReadRawDateAsync
	cmp r0, #0
	movne r0, r5
	streq r5, [r4, #4]
	moveq r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200AE9C: .word rtcInitialized
	arm_func_end RTC_GetDateAsync

	arm_func_start RTC_GetDate
RTC_GetDate: ; 0x0200AEA0
	stmfd sp!, {r3, lr}
	ldr r1, _0200AED0 ; =RtcGetResultCallback
	mov r2, #0
	bl RTC_GetDateAsync
	ldr r1, _0200AED4 ; =rtcInitialized
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0200AEC4
	bl RtcWaitBusy
_0200AEC4:
	ldr r0, _0200AED4 ; =rtcInitialized
	ldr r0, [r0, #0x24]
	ldmfd sp!, {r3, pc}
_0200AED0: .word RtcGetResultCallback
_0200AED4: .word rtcInitialized
	arm_func_end RTC_GetDate

	arm_func_start RTC_GetTimeAsync
RTC_GetTimeAsync: ; 0x0200AED8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	ldr r4, _0200AF44 ; =rtcInitialized
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0200AF08
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200AF08:
	mov r5, #1
	str r5, [r4, #4]
	bl OS_RestoreInterrupts
	str r5, [r4, #0x18]
	mov r5, #0
	str r5, [r4, #0x1c]
	str r8, [r4, #0xc]
	str r7, [r4, #8]
	str r6, [r4, #0x14]
	bl RTCi_ReadRawTimeAsync
	cmp r0, #0
	movne r0, r5
	streq r5, [r4, #4]
	moveq r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200AF44: .word rtcInitialized
	arm_func_end RTC_GetTimeAsync

	arm_func_start RTC_GetTime
RTC_GetTime: ; 0x0200AF48
	stmfd sp!, {r3, lr}
	ldr r1, _0200AF78 ; =RtcGetResultCallback
	mov r2, #0
	bl RTC_GetTimeAsync
	ldr r1, _0200AF7C ; =rtcInitialized
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0200AF6C
	bl RtcWaitBusy
_0200AF6C:
	ldr r0, _0200AF7C ; =rtcInitialized
	ldr r0, [r0, #0x24]
	ldmfd sp!, {r3, pc}
_0200AF78: .word RtcGetResultCallback
_0200AF7C: .word rtcInitialized
	arm_func_end RTC_GetTime

	arm_func_start RTC_GetDateTimeAsync
RTC_GetDateTimeAsync: ; 0x0200AF80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl OS_DisableInterrupts
	ldr r8, _0200AFF8 ; =rtcInitialized
	ldr r1, [r8, #4]
	cmp r1, #0
	beq _0200AFB4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0200AFB4:
	mov r1, #1
	str r1, [r8, #4]
	bl OS_RestoreInterrupts
	mov r0, #2
	str r0, [r8, #0x18]
	mov r9, #0
	str r9, [r8, #0x1c]
	str r7, [r8, #0xc]
	str r6, [r8, #0x10]
	str r5, [r8, #8]
	str r4, [r8, #0x14]
	bl RTCi_ReadRawDateTimeAsync
	cmp r0, #0
	movne r0, r9
	streq r9, [r8, #4]
	moveq r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0200AFF8: .word rtcInitialized
	arm_func_end RTC_GetDateTimeAsync

	arm_func_start RTC_GetDateTime
RTC_GetDateTime: ; 0x0200AFFC
	stmfd sp!, {r3, lr}
	ldr r2, _0200B02C ; =RtcGetResultCallback
	mov r3, #0
	bl RTC_GetDateTimeAsync
	ldr r1, _0200B030 ; =rtcInitialized
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0200B020
	bl RtcWaitBusy
_0200B020:
	ldr r0, _0200B030 ; =rtcInitialized
	ldr r0, [r0, #0x24]
	ldmfd sp!, {r3, pc}
_0200B02C: .word RtcGetResultCallback
_0200B030: .word rtcInitialized
	arm_func_end RTC_GetDateTime

	arm_func_start RtcCommonCallback
RtcCommonCallback: ; 0x0200B034
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r2, #0
	ldr r0, _0200B464 ; =0x02FFFDEA
	mov r4, #0
	ldr r6, _0200B468 ; =rtcInitialized
	beq _0200B084
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	strne r4, [r6, #0x1c]
	ldr r0, [r6, #4]
	cmp r0, #0
	strne r4, [r6, #4]
	ldr r2, [r6, #8]
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [r6, #8]
	ldr r1, [r6, #0x14]
	mov r0, #6
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200B084:
	and r2, r1, #0x7f00
	mov r2, r2, lsr #8
	and r2, r2, #0xff
	cmp r2, #0x30
	and r1, r1, #0xff
	bne _0200B0B0
	ldr r0, [r6, #0x20]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	blx r0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200B0B0:
	cmp r1, #0
	bne _0200B3F0
	ldr r1, [r6, #0x18]
	mov r5, r4
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0200B3E4
_0200B0CC: ; jump table
	b _0200B10C ; case 0
	b _0200B160 ; case 1
	b _0200B1A8 ; case 2
	b _0200B42C ; case 3
	b _0200B42C ; case 4
	b _0200B42C ; case 5
	b _0200B228 ; case 6
	b _0200B24C ; case 7
	b _0200B26C ; case 8
	b _0200B304 ; case 9
	b _0200B370 ; case 10
	b _0200B42C ; case 11
	b _0200B42C ; case 12
	b _0200B42C ; case 13
	b _0200B42C ; case 14
	b _0200B42C ; case 15
_0200B10C:
	ldr r7, _0200B46C ; =0x02FFFDE8
	ldr r8, [r6, #0xc]
	ldr r0, [r7]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	bl RtcHEX2BCD
	str r0, [r8]
	ldr r0, [r7]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl RtcHEX2BCD
	str r0, [r8, #4]
	ldr r0, [r7]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl RtcHEX2BCD
	str r0, [r8, #8]
	mov r0, r8
	bl RTC_GetDayOfWeek
	str r0, [r8, #0xc]
	b _0200B42C
_0200B160:
	ldr r7, _0200B470 ; =0x02FFFDEC
	ldr r8, [r6, #0xc]
	ldr r0, [r7]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	bl RtcHEX2BCD
	str r0, [r8]
	ldr r0, [r7]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl RtcHEX2BCD
	str r0, [r8, #4]
	ldr r0, [r7]
_0200B194:
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl RtcHEX2BCD
	str r0, [r8, #8]
	b _0200B42C
_0200B1A8:
	ldr r7, _0200B46C ; =0x02FFFDE8
	ldr r8, [r6, #0xc]
	ldr r0, [r7]
	and r0, r0, #0xff
	bl RtcHEX2BCD
	str r0, [r8]
	ldr r0, [r7]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl RtcHEX2BCD
	str r0, [r8, #4]
	ldr r0, [r7]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl RtcHEX2BCD
	str r0, [r8, #8]
	mov r0, r8
	bl RTC_GetDayOfWeek
	str r0, [r8, #0xc]
	ldr r0, [r7, #4]
	ldr r8, [r6, #0x10]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	bl RtcHEX2BCD
	str r0, [r8]
	ldr r0, [r7, #4]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl RtcHEX2BCD
	str r0, [r8, #4]
	ldr r0, [r7, #4]
	b _0200B194
_0200B228:
	ldrh r0, [r0]
	ldr r1, [r6, #0xc]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #4
	moveq r0, #1
	streq r0, [r1]
	strne r5, [r1]
	b _0200B42C
_0200B24C:
	ldrh r0, [r0]
	ldr r1, [r6, #0xc]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	movne r0, #1
	strne r0, [r1]
	streq r5, [r1]
	b _0200B42C
_0200B26C:
	ldr r7, _0200B470 ; =0x02FFFDEC
	ldr r8, [r6, #0xc]
	ldr r0, [r7]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r0, [r8]
	ldr r0, [r7]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1a
	bl RtcHEX2BCD
	str r0, [r8, #4]
	ldr r0, [r7]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl RtcHEX2BCD
	str r0, [r8, #8]
	str r5, [r8, #0xc]
	ldr r0, [r7]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	ldrne r0, [r8, #0xc]
	addne r0, r0, #1
	strne r0, [r8, #0xc]
	ldr r0, _0200B470 ; =0x02FFFDEC
	ldr r0, [r0]
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x1f
	ldrne r0, [r8, #0xc]
	addne r0, r0, #2
	strne r0, [r8, #0xc]
	ldr r0, _0200B470 ; =0x02FFFDEC
	ldr r0, [r0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	ldrne r0, [r8, #0xc]
	addne r0, r0, #4
	strne r0, [r8, #0xc]
	b _0200B42C
_0200B304:
	ldr r2, [r6, #0x1c]
	cmp r2, #0
	bne _0200B368
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	cmp r1, #1
	ldrh r1, [r0]
	mov r1, r1, lsl #0x1c
	bne _0200B34C
	mov r1, r1, lsr #0x1c
	cmp r1, #4
	beq _0200B42C
	add r1, r2, #1
	str r1, [r6, #0x1c]
	ldrh r1, [r0]
	bic r1, r1, #0xf
	orr r1, r1, #4
	b _0200B3C8
_0200B34C:
	movs r1, r1, lsr #0x1c
	beq _0200B42C
	add r1, r2, #1
	str r1, [r6, #0x1c]
	ldrh r1, [r0]
	bic r1, r1, #0xf
	b _0200B3C8
_0200B368:
	str r5, [r6, #0x1c]
	b _0200B42C
_0200B370:
	ldr r2, [r6, #0x1c]
	cmp r2, #0
	bne _0200B3E0
	ldr r1, [r6, #0xc]
	ldr r1, [r1]
	cmp r1, #1
	ldrh r1, [r0]
	mov r1, r1, lsl #0x19
	bne _0200B3B0
	movs r1, r1, lsr #0x1f
	bne _0200B42C
	add r1, r2, #1
	str r1, [r6, #0x1c]
	ldrh r1, [r0]
	orr r1, r1, #0x40
	b _0200B3C8
_0200B3B0:
	movs r1, r1, lsr #0x1f
	beq _0200B42C
	add r1, r2, #1
	str r1, [r6, #0x1c]
	ldrh r1, [r0]
	bic r1, r1, #0x40
_0200B3C8:
	strh r1, [r0]
	bl RTCi_WriteRawStatus2Async
	cmp r0, #0
	streq r5, [r6, #0x1c]
	moveq r5, #3
	b _0200B42C
_0200B3E0:
	b _0200B368
_0200B3E4:
	str r4, [r6, #0x1c]
_0200B3E8:
	mov r5, #4
	b _0200B42C
_0200B3F0:
	str r4, [r6, #0x1c]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0200B428
_0200B400: ; jump table
	b _0200B428 ; case 0
	b _0200B414 ; case 1
	b _0200B418 ; case 2
	b _0200B420 ; case 3
	b _0200B428 ; case 4
_0200B414:
	b _0200B3E8
_0200B418:
	mov r5, #5
	b _0200B42C
_0200B420:
	mov r5, #1
	b _0200B42C
_0200B428:
	mov r5, #6
_0200B42C:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #4]
	cmp r0, #0
	strne r4, [r6, #4]
	ldr r2, [r6, #8]
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [r6, #8]
	ldr r1, [r6, #0x14]
	mov r0, r5
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200B464: .word 0x02FFFDEA
_0200B468: .word rtcInitialized
_0200B46C: .word 0x02FFFDE8
_0200B470: .word 0x02FFFDEC
	arm_func_end RtcCommonCallback

	arm_func_start RtcHEX2BCD
RtcHEX2BCD: ; 0x0200B474
	stmfd sp!, {r4, lr}
	mov r12, #0
	mov r2, r12
_0200B480:
	mov r1, r2, lsl #2
	mov r1, r0, lsr r1
	and r1, r1, #0xf
	cmp r1, #0xa
	movhs r0, #0
	ldmhsfd sp!, {r4, pc}
	add r2, r2, #1
	cmp r2, #8
	blt _0200B480
	mov r4, #0
	mov lr, #1
	mov r2, #0xa
_0200B4B0:
	mov r1, r4, lsl #2
	mov r1, r0, lsr r1
	and r3, r1, #0xf
	mul r1, lr, r2
	mla r12, lr, r3, r12
	add r4, r4, #1
	mov lr, r1
	cmp r4, #8
	blt _0200B4B0
	mov r0, r12
	ldmfd sp!, {r4, pc}
	arm_func_end RtcHEX2BCD

	arm_func_start RtcGetResultCallback
RtcGetResultCallback: ; 0x0200B4DC
	ldr r1, _0200B4E8 ; =rtcInitialized
	str r0, [r1, #0x24]
	bx lr
_0200B4E8: .word rtcInitialized
	arm_func_end RtcGetResultCallback

	arm_func_start RtcWaitBusy
RtcWaitBusy: ; 0x0200B4EC
	ldr r12, _0200B500 ; =rtcWork
_0200B4F0:
	ldr r0, [r12]
	cmp r0, #1
	beq _0200B4F0
	bx lr
_0200B500: .word rtcWork
	arm_func_end RtcWaitBusy

	arm_func_start RTCi_ReadRawDateTimeAsync
RTCi_ReadRawDateTimeAsync: ; 0x0200B504
	ldr r12, _0200B510 ; =RtcSendPxiCommand
	mov r0, #0x10
	bx r12
_0200B510: .word RtcSendPxiCommand
	arm_func_end RTCi_ReadRawDateTimeAsync

	arm_func_start RTCi_ReadRawDateAsync
RTCi_ReadRawDateAsync: ; 0x0200B514
	ldr r12, _0200B520 ; =RtcSendPxiCommand
	mov r0, #0x11
	bx r12
_0200B520: .word RtcSendPxiCommand
	arm_func_end RTCi_ReadRawDateAsync

	arm_func_start RTCi_ReadRawTimeAsync
RTCi_ReadRawTimeAsync: ; 0x0200B524
	ldr r12, _0200B530 ; =RtcSendPxiCommand
	mov r0, #0x12
	bx r12
_0200B530: .word RtcSendPxiCommand
	arm_func_end RTCi_ReadRawTimeAsync

	arm_func_start RTCi_WriteRawStatus2Async
RTCi_WriteRawStatus2Async: ; 0x0200B534
	ldr r12, _0200B540 ; =RtcSendPxiCommand
	mov r0, #0x27
	bx r12
_0200B540: .word RtcSendPxiCommand
	arm_func_end RTCi_WriteRawStatus2Async

	arm_func_start RtcSendPxiCommand
RtcSendPxiCommand: ; 0x0200B544
	stmfd sp!, {r4, lr}
	mov r0, r0, lsl #8
	mov r4, #0
	and r1, r0, #0x7f00
	mov r2, r4
	mov r0, #5
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end RtcSendPxiCommand

	arm_func_start RTC_ConvertDateToDay
RTC_ConvertDateToDay: ; 0x0200B570
	ldr r3, [r0]
	cmp r3, #0x64
	bhs _0200B5C0
	ldr r2, [r0, #4]
	cmp r2, #1
	blo _0200B5C0
	cmp r2, #0xc
	bhi _0200B5C0
	ldr r1, [r0, #8]
	cmp r1, #1
	blo _0200B5C0
	cmp r1, #0x1f
	bhi _0200B5C0
	ldr r0, [r0, #0xc]
	cmp r0, #7
	bge _0200B5C0
	cmp r2, #1
	blo _0200B5C0
	cmp r2, #0xc
	bls _0200B5C8
_0200B5C0:
	mvn r0, #0
	bx lr
_0200B5C8:
	ldr r0, _0200B5FC ; =sDayOfYear
	sub r1, r1, #1
	ldr r0, [r0, r2, lsl #2]
	cmp r2, #3
	add r2, r1, r0
	blo _0200B5E8
	tst r3, #3
	addeq r2, r2, #1
_0200B5E8:
	ldr r0, _0200B600 ; =0x0000016D
	add r1, r3, #3
	mla r0, r3, r0, r2
	add r0, r0, r1, lsr #2
	bx lr
_0200B5FC: .word sDayOfYear - 4 ; doesn't match if not -4 
_0200B600: .word 0x0000016D
	arm_func_end RTC_ConvertDateToDay

	arm_func_start RTCi_ConvertTimeToSecond
RTCi_ConvertTimeToSecond: ; 0x0200B604
	mov r1, #0x3c
	ldmia r0, {r2, r3}
	mla r3, r2, r1, r3
	ldr r0, [r0, #8]
	mla r0, r3, r1, r0
	bx lr
	arm_func_end RTCi_ConvertTimeToSecond

	arm_func_start RTC_ConvertDateTimeToSecond
RTC_ConvertDateTimeToSecond: ; 0x0200B61C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	bl RTC_ConvertDateToDay
	mov r4, r0
	mvn r5, #0
	cmp r4, r5
	moveq r0, r5
	moveq r1, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl RTCi_ConvertTimeToSecond
	cmp r0, r5
	moveq r1, r5
	beq _0200B66C
	ldr r1, _0200B674 ; =0x00015180
	mov r2, r4, asr #0x1f
	umull r12, r3, r4, r1
	mla r3, r2, r1, r3
	adds r5, r0, r12
	adc r1, r3, r0, asr #31
_0200B66C:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0200B674: .word 0x00015180
	arm_func_end RTC_ConvertDateTimeToSecond

	arm_func_start RTC_GetDayOfWeek
RTC_GetDayOfWeek: ; 0x0200B678
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #4]
	ldr r2, [r0]
	sub r1, r1, #2
	cmp r1, #1
	add r12, r2, #0x7d0
	sublt r12, r12, #1
	ldr r6, _0200B728 ; =0x51EB851F
	ldr lr, [r0, #8]
	smull r3, r2, r6, r12
	smull r4, r3, r6, r12
	mov r5, r12, lsr #0x1f
	add r3, r5, r3, asr #5
	add r2, r5, r2, asr #5
	mov r5, #0x64
	smull r2, r4, r5, r2
	sub r2, r12, r2
	addlt r1, r1, #0xc
	mov r0, #0x1a
	mul r0, r1, r0
	sub r1, r0, #2
	ldr r0, _0200B72C ; =0x66666667
	mov r5, r1, lsr #0x1f
	smull r1, r12, r0, r1
	add r12, r5, r12, asr #2
	mov r4, r2, asr #1
	add r0, lr, r12
	add r1, r2, r4, lsr #30
	add r2, r2, r0
	mov r6, r3, asr #1
	add r0, r3, r6, lsr #30
	add r1, r2, r1, asr #2
	add r1, r1, r0, asr #2
	add r0, r3, r3, lsl #2
	add r4, r1, r0
	ldr r3, _0200B730 ; =0x92492493
	mov r1, r4, lsr #0x1f
	smull r2, r0, r3, r4
	add r0, r4, r0
	add r0, r1, r0, asr #2
	mov r2, #7
	smull r0, r1, r2, r0
	sub r0, r4, r0
	ldmfd sp!, {r4, r5, r6, pc}
_0200B728: .word 0x51EB851F
_0200B72C: .word 0x66666667
_0200B730: .word 0x92492493
	arm_func_end RTC_GetDayOfWeek

	.data
	.global sDayOfYear
sDayOfYear:
	.byte 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x3B, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x97, 0x00, 0x00, 0x00
	.byte 0xB5, 0x00, 0x00, 0x00, 0xD4, 0x00, 0x00, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x11, 0x01, 0x00, 0x00
	.byte 0x30, 0x01, 0x00, 0x00, 0x4E, 0x01, 0x00, 0x00

	.bss
	.global rtcInitialized
rtcInitialized:
	.space 0x04
	.global rtcWork
rtcWork:
	.space 0x24

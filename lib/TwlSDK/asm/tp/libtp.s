
	.include "asm/macros/function.inc"
	.include "libtp.inc"

	.text
	arm_func_start TPi_TpCallback
TPi_TpCallback: ; 0x02015C7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r0, r1, lsl #0x10
	mov r4, r0, lsr #0x10
	and r0, r4, #0x7f00
	mov r0, r0, lsl #8
	cmp r2, #0
	mov r0, r0, lsr #0x10
	mov r2, #0
	ldr r3, _02015EE8 ; =initial_020976e4
	beq _02015CE4
	mov r1, #1
	mov r1, r1, lsl r0
	ldrh r2, [r3, #0x38]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #4
	mov r2, #0
	blx r3
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02015CE4:
	cmp r0, #0x10
	bne _02015D90
	ldrh r1, [r3, #0x10]
	add r1, r1, #1
	strh r1, [r3, #0x10]
	ldrh r4, [r3, #0x10]
	ldrh r1, [r3, #0x18]
	cmp r4, r1
	strhsh r2, [r3, #0x10]
	ldr r1, _02015EEC ; =0x02FFFFAA
	ldrh lr, [r3, #0x10]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	ldr r7, [r3, #0x14]
	strh r2, [sp, #4]
	strh r1, [sp, #6]
	ldr r5, [sp, #4]
	mov r6, lr, lsl #3
	mov r1, r5, lsl #7
	mov r2, r1, lsr #0x1f
	mov r4, r5, lsl #8
	mov r1, r5, lsl #5
	mov r12, r5, lsl #0x14
	mov r5, r12, lsr #0x14
	strh r5, [r7, r6]
	mov r1, r1, lsr #0x1e
	add r5, r7, lr, lsl #3
	mov r4, r4, lsr #0x14
	strh r4, [r5, #2]
	and r2, r2, #0xff
	strh r2, [r5, #4]
	and r1, r1, #0xff
	strh r1, [r5, #6]
	ldr r4, [r3, #4]
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r3, #0x10]
	mov r1, #0
	and r2, r2, #0xff
	blx r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02015D90:
	tst r1, #0x1000000
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r4, #0xff
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _02015EDC
_02015DAC: ; jump table
	b _02015DC0 ; case 0
	b _02015EDC ; case 1
	b _02015E80 ; case 2
	b _02015E88 ; case 3
	b _02015E78 ; case 4
_02015DC0:
	cmp r0, #0
	beq _02015DDC
	cmp r0, #1
	beq _02015E34
	cmp r0, #2
	streqh r2, [r3, #0x36]
	b _02015E3C
_02015DDC:
	ldr r1, _02015EEC ; =0x02FFFFAA
	ldrh r4, [r1]
	ldrh r1, [r1, #2]
	strh r4, [sp]
	strh r1, [sp, #2]
	ldr r4, [sp]
	mov r1, r4, lsl #0x14
	mov r5, r1, lsr #0x14
	mov lr, r4, lsl #8
	mov r1, r4, lsl #7
	mov r12, r1, lsr #0x1f
	mov r1, r4, lsl #5
	mov r1, r1, lsr #0x1e
	strh r5, [r3, #8]
	mov lr, lr, lsr #0x14
	strh lr, [r3, #0xa]
	and r12, r12, #0xff
	strh r12, [r3, #0xc]
	and r1, r1, #0xff
	strh r1, [r3, #0xe]
	strh r2, [r3, #0x36]
	b _02015E3C
_02015E34:
	mov r1, #2
	strh r1, [r3, #0x36]
_02015E3C:
	mov r1, #1
	mvn r1, r1, lsl r0
	ldrh r2, [r3, #0x3a]
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r3, #0x3a]
	ldr r3, [r3, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, r1
	blx r3
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02015E78:
	mov r4, #3
	b _02015E8C
_02015E80:
	mov r4, #1
	b _02015E8C
_02015E88:
	mov r4, #2
_02015E8C:
	mov r2, #1
	mov r1, r2, lsl r0
	ldrh r12, [r3, #0x38]
	mov r1, r1, lsl #0x10
	mvn r2, r2, lsl r0
	orr r1, r12, r1, lsr #16
	strh r1, [r3, #0x38]
	ldrh r12, [r3, #0x3a]
	mov r1, r2, lsl #0x10
	and r1, r12, r1, lsr #16
	strh r1, [r3, #0x3a]
	ldr r3, [r3, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r4, #0xff
	mov r2, #0
	blx r3
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02015EDC:
	bl OS_Terminate
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02015EE8: .word initial_020976e4
_02015EEC: .word 0x02FFFFAA
	arm_func_end TPi_TpCallback

	arm_func_start TP_Init
TP_Init: ; 0x02015EF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02015F5C ; =initial_020976e4
	ldrh r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #1
	strh r0, [r4]
	bl PXI_Init
	mov r0, #0
	strh r0, [r4, #0x10]
	str r0, [r4, #4]
	str r0, [r4, #0x14]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x3a]
	strh r0, [r4, #0x38]
	mov r5, #6
	mov r4, #1
_02015F38:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _02015F38
	ldr r1, _02015F60 ; =TPi_TpCallback
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	ldmfd sp!, {r3, r4, r5, pc}
_02015F5C: .word initial_020976e4
_02015F60: .word TPi_TpCallback
	arm_func_end TP_Init

	arm_func_start TP_GetUserInfo
TP_GetUserInfo: ; 0x02015F64
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r12, _02015FF4 ; =0x02FFFC80
	mov r4, r0
	ldrh r1, [r12, #0x58]
	ldrh r2, [r12, #0x5a]
	ldrh r0, [r12, #0x5e]
	cmp r1, #0
	ldrh lr, [r12, #0x60]
	cmpeq r0, #0
	cmpeq r2, #0
	ldrb r3, [r12, #0x5c]
	ldrb r5, [r12, #0x5d]
	ldrb r6, [r12, #0x62]
	ldrb r12, [r12, #0x63]
	cmpeq lr, #0
	beq _02015FC8
	str r5, [sp]
	stmib sp, {r0, lr}
	str r6, [sp, #0xc]
	mov r0, r4
	str r12, [sp, #0x10]
	bl TP_CalcCalibrateParam
	cmp r0, #0
	beq _02015FE8
_02015FC8:
	mov r0, #0
	add sp, sp, #0x14
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02015FE8:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02015FF4: .word 0x02FFFC80
	arm_func_end TP_GetUserInfo

	arm_func_start TP_SetCalibrateParam
TP_SetCalibrateParam: ; 0x02015FF8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _020160DC ; =initial_020976e4
	movs r5, r0
	mov r4, #0
	streqh r4, [r6, #0x34]
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl OS_DisableInterrupts
	ldrsh r12, [r5, #4]
	cmp r12, #0
	beq _02016064
	ldr r3, _020160E0 ; =0x04000280
	mov r1, #0x10000000
	strh r4, [r3]
	str r1, [r3, #0x10]
	ldrsh r1, [r5]
	str r12, [r3, #0x18]
	mov r2, r4
	str r2, [r3, #0x1c]
	str r1, [r6, #0x1c]
	str r12, [r6, #0x20]
_02016048:
	ldrh r1, [r3]
	tst r1, #0x8000
	bne _02016048
	ldr r1, _020160E4 ; =0x040002A0
	ldr r1, [r1]
	str r1, [r6, #0x24]
	b _02016070
_02016064:
	str r4, [r6, #0x1c]
	str r4, [r6, #0x20]
	str r4, [r6, #0x24]
_02016070:
	ldrsh r12, [r5, #6]
	cmp r12, #0
	beq _020160C0
	ldr r3, _020160E0 ; =0x04000280
	mov r1, #0x10000000
	strh r4, [r3]
	str r1, [r3, #0x10]
	ldrsh r1, [r5, #2]
	str r12, [r3, #0x18]
	mov r2, #0
	str r2, [r3, #0x1c]
	str r1, [r6, #0x28]
	str r12, [r6, #0x2c]
_020160A4:
	ldrh r1, [r3]
	tst r1, #0x8000
	bne _020160A4
	ldr r1, _020160E4 ; =0x040002A0
	ldr r1, [r1]
	str r1, [r6, #0x30]
	b _020160CC
_020160C0:
	str r4, [r6, #0x28]
	str r4, [r6, #0x2c]
	str r4, [r6, #0x30]
_020160CC:
	bl OS_RestoreInterrupts
	mov r0, #1
	strh r0, [r6, #0x34]
	ldmfd sp!, {r4, r5, r6, pc}
_020160DC: .word initial_020976e4
_020160E0: .word 0x04000280
_020160E4: .word 0x040002A0
	arm_func_end TP_SetCalibrateParam

	arm_func_start TP_RequestSamplingAsync
TP_RequestSamplingAsync: ; 0x020160E8
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r5, #0
	mov r4, r0
	mov r2, r5
	mov r0, #6
	mov r1, #0x3000000
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r5, #1
	cmp r5, #0
	bne _02016150
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _0201617C ; =initial_020976e4
	ldrh r1, [r0, #0x38]
	orr r1, r1, #1
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r2, r0
	mov r1, #4
	blx r3
	ldmfd sp!, {r3, r4, r5, pc}
_02016150:
	ldr r2, _0201617C ; =initial_020976e4
	ldr r1, _02016180 ; =0x0000FFFE
	ldrh r3, [r2, #0x3a]
	mov r0, r4
	orr r3, r3, #1
	strh r3, [r2, #0x3a]
	ldrh r3, [r2, #0x38]
	and r1, r3, r1
	strh r1, [r2, #0x38]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_0201617C: .word initial_020976e4
_02016180: .word 0x0000FFFE
	arm_func_end TP_RequestSamplingAsync

	arm_func_start TP_GetCalibratedResult
TP_GetCalibratedResult: ; 0x02016184
	stmfd sp!, {r3, lr}
	ldr r2, _020161CC ; =initial_020976e4
	ldrh r1, [r2, #0x38]
	tst r1, #1
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldrh r12, [r2, #8]
	ldrh r3, [r2, #0xa]
	mov r1, r0
	strh r12, [r0]
	strh r3, [r0, #2]
	ldrh r3, [r2, #0xc]
	ldrh r2, [r2, #0xe]
	strh r3, [r0, #4]
	strh r2, [r0, #6]
	bl TP_GetCalibratedPoint
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020161CC: .word initial_020976e4
	arm_func_end TP_GetCalibratedResult

	arm_func_start TP_WaitCalibratedResult
TP_WaitCalibratedResult: ; 0x020161D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl TP_WaitBusy
	mov r0, r4
	bl TP_GetCalibratedResult
	ldmfd sp!, {r4, pc}
	arm_func_end TP_WaitCalibratedResult

	arm_func_start TP_RequestAutoSamplingStartAsync
TP_RequestAutoSamplingStartAsync: ; 0x020161EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r12, _020162EC ; =initial_020976e4
	mov r5, #0
	str r2, [r12, #0x14]
	mov r6, r1
	strh r5, [r12, #0x10]
	strh r6, [r12, #0x12]
	mov r4, r0
	strh r3, [r12, #0x18]
	cmp r3, #0
	bls _02016234
	mov r1, r5
_0201621C:
	ldr r0, [r12, #0x14]
	add r0, r0, r5, lsl #3
	add r5, r5, #1
	strh r1, [r0, #4]
	cmp r5, r3
	blo _0201621C
_02016234:
	bl OS_DisableInterrupts
	and r1, r6, #0xff
	orr r1, r1, #0x100
	mov r7, #0
	mov r5, #6
	mov r6, r0
	mov r0, r5
	mov r2, r7
	orr r1, r1, #0x2000000
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _02016280
	orr r1, r4, #0x10000
	mov r0, r5
	mov r2, r7
	orr r1, r1, #0x1000000
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r7, #1
_02016280:
	tst r7, #0xff
	bne _020162C0
	mov r0, r6
	bl OS_RestoreInterrupts
	ldr r0, _020162EC ; =initial_020976e4
	ldrh r1, [r0, #0x38]
	orr r1, r1, #2
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	mov r1, #4
	mov r2, #0
	blx r3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020162C0:
	ldr r2, _020162EC ; =initial_020976e4
	ldr r1, _020162F0 ; =0x0000FFFD
	ldrh r3, [r2, #0x3a]
	mov r0, r6
	orr r3, r3, #2
	strh r3, [r2, #0x3a]
	ldrh r3, [r2, #0x38]
	and r1, r3, r1
	strh r1, [r2, #0x38]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020162EC: .word initial_020976e4
_020162F0: .word 0x0000FFFD
	arm_func_end TP_RequestAutoSamplingStartAsync

	arm_func_start TP_RequestAutoSamplingStopAsync
TP_RequestAutoSamplingStopAsync: ; 0x020162F4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r5, #0
	mov r4, r0
	ldr r1, _02016388 ; =0x03000200
	mov r2, r5
	mov r0, #6
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r5, #1
	cmp r5, #0
	bne _0201635C
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _0201638C ; =initial_020976e4
	ldrh r1, [r0, #0x38]
	orr r1, r1, #4
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #2
	mov r1, #4
	mov r2, #0
	blx r3
	ldmfd sp!, {r3, r4, r5, pc}
_0201635C:
	ldr r2, _0201638C ; =initial_020976e4
	ldr r1, _02016390 ; =0x0000FFFB
	ldrh r3, [r2, #0x3a]
	mov r0, r4
	orr r3, r3, #4
	strh r3, [r2, #0x3a]
	ldrh r3, [r2, #0x38]
	and r1, r3, r1
	strh r1, [r2, #0x38]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02016388: .word 0x03000200
_0201638C: .word initial_020976e4
_02016390: .word 0x0000FFFB
	arm_func_end TP_RequestAutoSamplingStopAsync

	arm_func_start TP_GetLatestIndexInAuto
TP_GetLatestIndexInAuto: ; 0x02016394
	ldr r0, _020163A0 ; =initial_020976e4
	ldrh r0, [r0, #0x10]
	bx lr
_020163A0: .word initial_020976e4
	arm_func_end TP_GetLatestIndexInAuto

	arm_func_start TP_CalcCalibrateParam
TP_CalcCalibrateParam: ; 0x020163A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r8, r2
	cmp r9, #0x1000
	cmplo r8, #0x1000
	ldrloh r4, [sp, #0x2c]
	mov r7, r3
	mov r10, r0
	cmplo r4, #0x1000
	ldrloh r3, [sp, #0x30]
	cmplo r3, #0x1000
	movhs r0, #1
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0x100
	ldrloh r2, [sp, #0x34]
	cmplo r2, #0x100
	ldrloh r1, [sp, #0x28]
	cmplo r1, #0xc0
	ldrloh r0, [sp, #0x38]
	cmplo r0, #0xc0
	movhs r0, #1
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, r2
	cmpne r1, r0
	cmpne r9, r4
	cmpne r8, r3
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl OS_DisableInterrupts
	ldrh lr, [sp, #0x2c]
	ldrh r12, [sp, #0x34]
	ldr r3, _02016588 ; =0x04000280
	sub r1, r9, lr
	mov r2, #0
	strh r2, [r3]
	mov r1, r1, lsl #8
	str r1, [r3, #0x10]
	sub r2, r7, r12
	ldrh r4, [sp, #0x38]
	ldrh r5, [sp, #0x28]
	str r2, [r3, #0x18]
	mov r1, #0
	sub r2, r5, r4
	ldrh r6, [sp, #0x30]
	str r1, [r3, #0x1c]
	str r2, [sp]
	sub r1, r8, r6
_02016460:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _02016460
	mov r11, r1, lsl #8
	ldr r1, _0201658C ; =0x040002A0
	ldr r2, [r1]
	mov r1, #0
	strh r1, [r3]
	ldr r1, _0201658C ; =0x040002A0
	cmp r2, #0x8000
	str r11, [r1, #-0x10]
	sub r3, r1, #8
	ldr r1, [sp]
	mov r11, #0
	stmia r3, {r1, r11}
	bge _020164B0
	mov r1, r11
	sub r1, r1, #0x8000
	cmp r2, r1
	bge _020164BC
_020164B0:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020164BC:
	strh r2, [r10, #4]
	ldrsh r2, [r10, #4]
	add r1, r7, r12
	add r3, r9, lr
	mul r1, r2, r1
	rsb r1, r1, r3, lsl #8
	mov r1, r1, lsl #9
	mov r2, r1, asr #0x10
	cmp r2, #0x8000
	bge _020164F4
	mov r1, r11
	sub r1, r1, #0x8000
	cmp r2, r1
	bge _02016500
_020164F4:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02016500:
	ldr r1, _0201658C ; =0x040002A0
	strh r2, [r10]
	sub r2, r1, #0x20
_0201650C:
	ldrh r1, [r2]
	tst r1, #0x8000
	bne _0201650C
	ldr r1, _0201658C ; =0x040002A0
	ldr r7, [r1]
	bl OS_RestoreInterrupts
	cmp r7, #0x8000
	bge _0201653C
	mov r1, #0x8000
	rsb r1, r1, #0
	cmp r7, r1
	bge _02016544
_0201653C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02016544:
	strh r7, [r10, #6]
	ldrsh r2, [r10, #6]
	add r0, r5, r4
	add r3, r8, r6
	mul r0, r2, r0
	rsb r0, r0, r3, lsl #8
	mov r0, r0, lsl #9
	mov r0, r0, asr #0x10
	cmp r0, #0x8000
	bge _02016574
	cmp r0, r1
	bge _0201657C
_02016574:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201657C:
	strh r0, [r10, #2]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02016588: .word 0x04000280
_0201658C: .word 0x040002A0
	arm_func_end TP_CalcCalibrateParam

	arm_func_start TP_GetCalibratedPoint
TP_GetCalibratedPoint: ; 0x02016590
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020166A4 ; =initial_020976e4
	ldrh r2, [r2, #0x34]
	cmp r2, #0
	bne _020165C8
	ldrh r4, [r1]
	ldrh r3, [r1, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r4, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020165C8:
	ldrh r4, [r1, #4]
	ldrh r3, [r1, #6]
	ldr r2, _020166A8 ; =0x02097700
	cmp r4, #0
	moveq r1, #0
	strh r3, [r0, #6]
	streqh r1, [r0]
	streqh r1, [r0, #2]
	strh r4, [r0, #4]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r4, [r1]
	ldr r3, [r2]
	ldr lr, [r2, #8]
	mov r4, r4, lsl #2
	subs r12, r4, r3
	mov r3, r3, asr #0x1f
	rsc r3, r3, r4, asr #31
	umull r6, r5, lr, r12
	mla r5, lr, r3, r5
	mov r3, lr, asr #0x1f
	mla r5, r3, r12, r5
	mov r3, r6, lsr #0x16
	orr r3, r3, r5, lsl #10
	strh r3, [r0]
	ldrsh r3, [r0]
	cmp r3, #0
	movlt r3, #0
	strlth r3, [r0]
	blt _02016648
	cmp r3, #0xff
	movgt r3, #0xff
	strgth r3, [r0]
_02016648:
	ldrh r3, [r1, #2]
	ldr r1, [r2, #0xc]
	ldr r12, [r2, #0x14]
	mov r2, r3, lsl #2
	subs r3, r2, r1
	mov r1, r1, asr #0x1f
	rsc r1, r1, r2, asr #31
	umull r4, lr, r12, r3
	mla lr, r12, r1, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r3, lr
	mov r1, r4, lsr #0x16
	orr r1, r1, lr, lsl #10
	strh r1, [r0, #2]
	ldrsh r1, [r0, #2]
	cmp r1, #0
	movlt r1, #0
	strlth r1, [r0, #2]
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r1, #0xbf
	movgt r1, #0xbf
	strgth r1, [r0, #2]
	ldmfd sp!, {r4, r5, r6, pc}
_020166A4: .word initial_020976e4
_020166A8: .word unk_02097700
	arm_func_end TP_GetCalibratedPoint

	arm_func_start TP_WaitBusy
TP_WaitBusy: ; 0x020166AC
	ldr r1, _020166C0 ; =initial_020976e4
_020166B0:
	ldrh r2, [r1, #0x3a]
	tst r2, r0
	bne _020166B0
	bx lr
_020166C0: .word initial_020976e4
	arm_func_end TP_WaitBusy

	arm_func_start TP_CheckError
TP_CheckError: ; 0x020166C4
	ldr r1, _020166D4 ; =initial_020976e4
	ldrh r1, [r1, #0x38]
	and r0, r1, r0
	bx lr
_020166D4: .word initial_020976e4
	arm_func_end TP_CheckError

	.bss
	.global initial_020976e4
initial_020976e4:
	.space 0x04
	.global tpState
tpState:
	.space 0x18
	.global unk_02097700
unk_02097700:
	.space 0x20

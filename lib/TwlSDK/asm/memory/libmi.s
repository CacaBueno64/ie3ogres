
	.include "asm/macros/function.inc"
	.include "libmi.inc"

	.section .itcm, 4
	arm_func_start MIi_DmaSetParameters
MIi_DmaSetParameters: ; 0x02093D7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, [sp, #0x20]
	mov r4, r0
	mov r9, r1
	mov r8, r2
	mov r6, r3
	ands r5, r7, #1
	bne _01FF8480
	bl OS_DisableInterrupts
_01FF8480:
	mov r1, #0xc
	mul r1, r4, r1
	add r1, r1, #0xb0
	tst r7, #0x10
	add r1, r1, #0x4000000
	beq _01FF84B0
	mov r2, r4, lsl #2
	add r3, r2, #0x4000000
	add r2, r2, #0xe0
	str r9, [r3, #0xe0]
	add r9, r2, #0x4000000
	b _01FF84C8
_01FF84B0:
	tst r7, #0x20
	movne r2, r4, lsl #2
	addne r3, r2, #0x4000000
	addne r2, r2, #0xe0
	strneh r9, [r3, #0xe0]
	addne r9, r2, #0x4000000
_01FF84C8:
	str r9, [r1]
	str r8, [r1, #4]
	str r6, [r1, #8]
	ands r6, r7, #2
	beq _01FF8504
	ldr r3, _01FF8524 ; =0x040000B0
	tst r7, #4
	ldr r2, [r3]
	cmpeq r4, #0
	ldr r2, [r3]
	moveq r3, #0
	streq r3, [r1]
	ldreq r2, _01FF8528 ; =0x81400001
	streq r3, [r1, #4]
	streq r2, [r1, #8]
_01FF8504:
	cmp r5, #0
	bne _01FF8510
	bl OS_RestoreInterrupts
_01FF8510:
	cmp r6, #0
	ldrne r1, _01FF8524 ; =0x040000B0
	ldrne r0, [r1]
	ldrne r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_01FF8524: .word 0x040000B0
_01FF8528: .word 0x81400001
	arm_func_end MIi_DmaSetParameters

	.text
	arm_func_start MI_SetWramBank
MI_SetWramBank: ; 0x02006F6C
	ldr r1, _02006F78 ; =0x04000247
	strb r0, [r1]
	bx lr
_02006F78: .word 0x04000247
	arm_func_end MI_SetWramBank

	arm_func_start MIi_DmaFill32
MIi_DmaFill32: ; 0x02006F7C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	cmp r3, #0
	addeq sp, sp, #4
	mov r12, r1
	ldmeqfd sp!, {r3, r4, pc}
	add r1, r0, r0, lsl #1
	add r1, r1, #2
	mov r1, r1, lsl #2
	add r1, r1, #0xb0
	add r4, r1, #0x4000000
_02006FA8:
	ldr r1, [r4]
	tst r1, #0x80000000
	bne _02006FA8
	ldr r1, [sp, #0x10]
	mov r3, r3, lsr #2
	cmp r1, #0
	mov r1, r2
	beq _02006FD8
	mov lr, #0x12
	mov r2, r12
	orr r3, r3, #0x85000000
	b _02006FE4
_02006FD8:
	mov lr, #0x16
	mov r2, r12
	orr r3, r3, #0x5000000
_02006FE4:
	str lr, [sp]
	bl MIi_DmaSetParameters
_02006FEC:
	ldr r0, [r4]
	tst r0, #0x80000000
	bne _02006FEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end MIi_DmaFill32

	arm_func_start MIi_DmaCopy32
MIi_DmaCopy32: ; 0x02007000
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r2, r5
	mov r3, #0
	bl MIi_CheckDma0SourceAddress
	add r0, r8, r8, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r4, r0, #0x4000000
_02007040:
	ldr r0, [r4]
	tst r0, #0x80000000
	bne _02007040
	ldr r0, [sp, #0x20]
	mov r3, r5, lsr #2
	cmp r0, #0
	beq _02007074
	mov r5, #2
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x84000000
	b _02007088
_02007074:
	mov r5, #6
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x4000000
_02007088:
	str r5, [sp]
	bl MIi_DmaSetParameters
_02007090:
	ldr r0, [r4]
	tst r0, #0x80000000
	bne _02007090
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end MIi_DmaCopy32

	arm_func_start MIi_DmaCopy16
MIi_DmaCopy16: ; 0x020070A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r2, r5
	mov r3, #0
	bl MIi_CheckDma0SourceAddress
	add r0, r8, r8, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r4, r0, #0x4000000
_020070E4:
	ldr r0, [r4]
	tst r0, #0x80000000
	bne _020070E4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0200711C
	mov r3, r5, lsr #1
	mov r5, #2
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x80000000
	str r5, [sp]
	b _02007134
_0200711C:
	mov r12, #6
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5, lsr #1
	str r12, [sp]
_02007134:
	bl MIi_DmaSetParameters
_02007138:
	ldr r0, [r4]
	tst r0, #0x80000000
	bne _02007138
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end MIi_DmaCopy16

	arm_func_start MIi_DmaFill32Async
MIi_DmaFill32Async: ; 0x0200714C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r8, r3
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r7, [sp, #0x20]
	bne _02007188
	cmp r7, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x24]
	blx r7
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02007188:
	bl MI_WaitDma
	cmp r7, #0
	beq _020071FC
	ldr r2, [sp, #0x24]
	mov r0, r6
	mov r1, r7
	bl OSi_EnterDmaCallback
	ldr r0, [sp, #0x28]
	mov r3, r8, lsr #2
	cmp r0, #0
	beq _020071D8
	mov r12, #0x10
	mov r0, r6
	mov r1, r4
	mov r2, r5
	orr r3, r3, #0xc5000000
	str r12, [sp]
	bl MIi_DmaSetParameters
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020071D8:
	mov r12, #0x14
	mov r0, r6
	mov r1, r4
	mov r2, r5
	orr r3, r3, #0x45000000
	str r12, [sp]
	bl MIi_DmaSetParameters
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020071FC:
	ldr r0, [sp, #0x28]
	mov r3, r8, lsr #2
	cmp r0, #0
	beq _02007230
	mov r12, #0x10
	mov r0, r6
	mov r1, r4
	mov r2, r5
	orr r3, r3, #0x85000000
	str r12, [sp]
	bl MIi_DmaSetParameters
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02007230:
	mov r12, #0x14
	mov r0, r6
	mov r1, r4
	mov r2, r5
	orr r3, r3, #0x5000000
	str r12, [sp]
	bl MIi_DmaSetParameters
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end MIi_DmaFill32Async

	arm_func_start MIi_DmaCopy32Async
MIi_DmaCopy32Async: ; 0x02007254
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r3
	mov r4, #0
	mov r6, r2
	mov r2, r5
	mov r3, r4
	mov r8, r0
	mov r7, r1
	ldr r9, [sp, #0x20]
	bl MIi_CheckDma0SourceAddress
	cmp r5, #0
	bne _02007298
	cmp r9, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x24]
	blx r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02007298:
	mov r0, r8
	bl MI_WaitDma
	cmp r9, #0
	beq _02007304
	ldr r2, [sp, #0x24]
	mov r0, r8
	mov r1, r9
	bl OSi_EnterDmaCallback
	ldr r0, [sp, #0x28]
	mov r3, r5, lsr #2
	cmp r0, #0
	beq _020072E4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0xc4000000
	str r4, [sp]
	bl MIi_DmaSetParameters
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020072E4:
	mov r4, #4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x44000000
	str r4, [sp]
	bl MIi_DmaSetParameters
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02007304:
	ldr r0, [sp, #0x28]
	mov r3, r5, lsr #2
	cmp r0, #0
	beq _02007330
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x84000000
	str r4, [sp]
	bl MIi_DmaSetParameters
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02007330:
	mov r4, #4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x4000000
	str r4, [sp]
	bl MIi_DmaSetParameters
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end MIi_DmaCopy32Async

	arm_func_start MI_WaitDma
MI_WaitDma: ; 0x02007350
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r1, #0xc
	mul r3, r4, r1
	add r1, r3, #0xb8
	add r2, r1, #0x4000000
_0200736C:
	ldr r1, [r2]
	tst r1, #0x80000000
	bne _0200736C
	cmp r4, #0
	bne _020073A0
	add r1, r3, #0xb0
	add r2, r3, #0x4000000
	mov r3, #0
	str r3, [r2, #0xb0]
	add r2, r1, #0x4000000
	ldr r1, _020073A8 ; =0x81400001
	str r3, [r2, #4]
	str r1, [r2, #8]
_020073A0:
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020073A8: .word 0x81400001
	arm_func_end MI_WaitDma

	arm_func_start MI_StopDma
MI_StopDma: ; 0x020073AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r1, #0xc
	mul r3, r4, r1
	add r2, r3, #0x4000000
	ldr r1, [r2, #0xb8]
	cmp r4, #0
	bic r1, r1, #0x3a000000
	str r1, [r2, #0xb8]
	ldr r1, [r2, #0xb8]
	bic r1, r1, #0x80000000
	str r1, [r2, #0xb8]
	ldr r1, [r2, #0xb8]
	ldr r1, [r2, #0xb8]
	bne _02007408
	add r1, r3, #0xb0
	mov r3, #0
	str r3, [r2, #0xb0]
	add r2, r1, #0x4000000
	ldr r1, _02007410 ; =0x81400001
	str r3, [r2, #4]
	str r1, [r2, #8]
_02007408:
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_02007410: .word 0x81400001
	arm_func_end MI_StopDma

	arm_func_start MI_StopAllDma
MI_StopAllDma: ; 0x02007414
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl MI_StopDma
	mov r0, #1
	bl MI_StopDma
	mov r0, #2
	bl MI_StopDma
	mov r0, #3
	bl MI_StopDma
	ldmfd sp!, {r3, pc}
	arm_func_end MI_StopAllDma

	arm_func_start MIi_CheckAnotherAutoDMA
MIi_CheckAnotherAutoDMA: ; 0x0200743C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, #0
	mov r6, #0xc
_02007450:
	cmp r7, r5
	beq _020074B8
	mul r0, r7, r6
	add r0, r0, #0x4000000
	ldr r0, [r0, #0xb8]
	tst r0, #0x80000000
	andne r0, r0, #0x38000000
	cmpne r0, r4
	beq _020074B8
	cmp r0, #0x8000000
	bne _02007484
	cmp r4, #0x10000000
	beq _020074B8
_02007484:
	cmp r0, #0x10000000
	bne _02007494
	cmp r4, #0x8000000
	beq _020074B8
_02007494:
	cmp r0, #0x18000000
	cmpne r0, #0x20000000
	cmpne r0, #0x28000000
	cmpne r0, #0x30000000
	cmpne r0, #0x38000000
	cmpne r0, #0x8000000
	cmpne r0, #0x10000000
	bne _020074B8
	bl OS_Terminate
_020074B8:
	add r7, r7, #1
	cmp r7, #3
	blt _02007450
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end MIi_CheckAnotherAutoDMA

	arm_func_start MIi_CheckDma0SourceAddress
MIi_CheckDma0SourceAddress: ; 0x020074C8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	cmp r3, #0
	and r12, r1, #0xff000000
	beq _020074EC
	cmp r3, #0x800000
	subeq r1, r1, r2
	b _020074F0
_020074EC:
	add r1, r1, r2
_020074F0:
	cmp r12, #0x4000000
	and r0, r1, #0xff000000
	beq _02007514
	cmp r12, #0x8000000
	bhs _02007514
	cmp r0, #0x4000000
	beq _02007514
	cmp r0, #0x8000000
	ldmlofd sp!, {r3, pc}
_02007514:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
	arm_func_end MIi_CheckDma0SourceAddress

	arm_func_start MI_SendGXCommandAsync
MI_SendGXCommandAsync: ; 0x0200751C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	cmp r2, #0
	bne _02007540
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x18]
	blx r3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02007540:
	ldr r0, _020075FC ; =MIi_GXDmaParams
_02007544:
	ldr r5, [r0]
	cmp r5, #0
	bne _02007544
	ldr r5, _02007600 ; =0x04000600
_02007554:
	ldr r0, [r5]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	tst r0, #2
	beq _02007554
	ldr r6, _020075FC ; =MIi_GXDmaParams
	mov r0, #1
	str r0, [r6]
	str r4, [r6, #4]
	str r1, [r6, #8]
	str r2, [r6, #0xc]
	str r3, [r6, #0x10]
	ldr r7, [sp, #0x18]
	mov r0, r4
	mov r3, #0
	str r7, [r6, #0x14]
	bl MIi_CheckDma0SourceAddress
	mov r0, r4
	bl MI_WaitDma
	bl OS_DisableInterrupts
	ldr r1, [r5]
	mov r7, #0x200000
	and r1, r1, #0xc0000000
	mov r1, r1, lsr #0x1e
	mov r4, r0
	mov r0, r7
	str r1, [r6, #0x18]
	bl OS_GetIrqFunction
	str r0, [r6, #0x1c]
	ldr r0, [r5]
	ldr r1, _02007604 ; =MIi_FIFOCallback
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x40000000
	str r0, [r5]
	mov r0, r7
	bl OS_SetIrqFunction
	mov r0, r7
	bl OS_EnableIrqMask
	bl MIi_FIFOCallback
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020075FC: .word MIi_GXDmaParams
_02007600: .word 0x04000600
_02007604: .word MIi_FIFOCallback
	arm_func_end MI_SendGXCommandAsync

	arm_func_start MIi_FIFOCallback
MIi_FIFOCallback: ; 0x02007608
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020076AC ; =MIi_GXDmaParams
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020076AC ; =MIi_GXDmaParams
	cmp r5, #0x1d8
	ldr r0, [r6, #0xc]
	movhs r5, #0x1d8
	ldr r4, [r6, #8]
	subs r0, r0, r5
	str r0, [r6, #0xc]
	add r0, r4, r5
	str r0, [r6, #8]
	bne _02007680
	mov r7, #0
	ldr r0, [r6, #4]
	ldr r1, _020076B0 ; =MIi_DMACallback
	mov r2, r7
	bl OSi_EnterDmaCallback
	str r7, [sp]
	sub r3, r7, #0x3bc00000
	ldr r0, [r6, #4]
	ldr r2, _020076B4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl MIi_DmaSetParameters
	mov r0, #0x200000
	bl OS_ResetRequestIrqMask
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02007680:
	mov r0, #0
	str r0, [sp]
	ldr r3, _020076B8 ; =0x84400000
	ldr r0, [r6, #4]
	ldr r2, _020076B4 ; =0x04000400
	mov r1, r4
	orr r3, r3, r5, lsr #2
	bl MIi_DmaSetParameters
	mov r0, #0x200000
	bl OS_ResetRequestIrqMask
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020076AC: .word MIi_GXDmaParams
_020076B0: .word MIi_DMACallback
_020076B4: .word 0x04000400
_020076B8: .word 0x84400000
	arm_func_end MIi_FIFOCallback

	arm_func_start MIi_DMACallback
MIi_DMACallback: ; 0x020076BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x200000
	mov r0, r5
	bl OS_DisableIrqMask
	ldr r1, _02007714 ; =0x04000600
	ldr r4, _02007718 ; =MIi_GXDmaParams
	ldr r0, [r1]
	ldr r2, [r4, #0x18]
	bic r0, r0, #0xc0000000
	orr r0, r0, r2, lsl #30
	str r0, [r1]
	ldr r1, [r4, #0x1c]
	mov r0, r5
	bl OS_SetIrqFunction
	mov r0, #0
	str r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_02007714: .word 0x04000600
_02007718: .word MIi_GXDmaParams
	arm_func_end MIi_DMACallback

	arm_func_start MI_SendGXCommandAsyncFast
MI_SendGXCommandAsyncFast: ; 0x0200771C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _02007744
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x18]
	blx r3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02007744:
	ldr r0, _020077CC ; =MIi_GXDmaParams
_02007748:
	ldr r1, [r0]
	cmp r1, #0
	bne _02007748
	ldr r2, _020077CC ; =MIi_GXDmaParams
	mov r0, #1
	str r0, [r2]
	str r6, [r2, #4]
	ldr r7, [sp, #0x18]
	str r3, [r2, #0x10]
	mov r0, r6
	mov r1, #0x38000000
	str r7, [r2, #0x14]
	bl MIi_CheckAnotherAutoDMA
	mov r7, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl MIi_CheckDma0SourceAddress
	mov r0, r6
	bl MI_WaitDma
	mov r0, r6
	ldr r1, _020077D0 ; =MIi_DMAFastCallback
	mov r2, r7
	bl OSi_EnterDmaCallback
	mov r0, r6
	mov r1, r5
	str r7, [sp]
	sub r2, r7, #0x3c00000
	orr r3, r2, r4, lsr #2
	ldr r2, _020077D4 ; =0x04000400
	bl MIi_DmaSetParameters
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020077CC: .word MIi_GXDmaParams
_020077D0: .word MIi_DMAFastCallback
_020077D4: .word 0x04000400
	arm_func_end MI_SendGXCommandAsyncFast

	arm_func_start MIi_DMAFastCallback
MIi_DMAFastCallback: ; 0x020077D8
	stmfd sp!, {r3, lr}
	ldr r0, _02007800 ; =MIi_GXDmaParams
	mov r1, #0
	str r1, [r0]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
_02007800: .word MIi_GXDmaParams
	arm_func_end MIi_DMAFastCallback

	arm_func_start MIi_CpuClear16
MIi_CpuClear16: ; 0x02007804
	mov r3, #0
_02007808:
	cmp r3, r2
	strlth r0, [r1, r3]
	addlt r3, r3, #2
	blt _02007808
	bx lr
	arm_func_end MIi_CpuClear16

	arm_func_start MIi_CpuCopy16
MIi_CpuCopy16: ; 0x0200781C
	mov r12, #0
_02007820:
	cmp r12, r2
	ldrlth r3, [r0, r12]
	strlth r3, [r1, r12]
	addlt r12, r12, #2
	blt _02007820
	bx lr
	arm_func_end MIi_CpuCopy16

	arm_func_start MIi_CpuClear32
MIi_CpuClear32: ; 0x02007838
	add r12, r1, r2
_0200783C:
	cmp r1, r12
	stmltia r1!, {r0}
	blt _0200783C
	bx lr
	arm_func_end MIi_CpuClear32

	arm_func_start MIi_CpuCopy32
MIi_CpuCopy32: ; 0x0200784C
	add r12, r1, r2
_02007850:
	cmp r1, r12
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _02007850
	bx lr
	arm_func_end MIi_CpuCopy32

	arm_func_start MIi_CpuSend32
MIi_CpuSend32: ; 0x02007864
	add r12, r0, r2
_02007868:
	cmp r0, r12
	ldmltia r0!, {r2}
	strlt r2, [r1]
	blt _02007868
	bx lr
	arm_func_end MIi_CpuSend32

	arm_func_start MIi_CpuClearFast
MIi_CpuClearFast: ; 0x0200787C
	stmfd sp!, {r4, r5, r6, r7, r8, r9}
	add r9, r1, r2
	mov r12, r2, lsr #5
	add r12, r1, r12, lsl #5
	mov r2, r0
	mov r3, r2
	mov r4, r2
	mov r5, r2
	mov r6, r2
	mov r7, r2
	mov r8, r2
_020078A8:
	cmp r1, r12
	stmltia r1!, {r0, r2, r3, r4, r5, r6, r7, r8}
	blt _020078A8
_020078B4:
	cmp r1, r9
	stmltia r1!, {r0}
	blt _020078B4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9}
	bx lr
	arm_func_end MIi_CpuClearFast

	arm_func_start MIi_CpuCopyFast
MIi_CpuCopyFast: ; 0x020078C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10}
	add r10, r1, r2
	mov r12, r2, lsr #5
	add r12, r1, r12, lsl #5
_020078D8:
	cmp r1, r12
	ldmltia r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
	stmltia r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
	blt _020078D8
_020078E8:
	cmp r1, r10
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _020078E8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10}
	bx lr
	arm_func_end MIi_CpuCopyFast

	arm_func_start MI_Copy32B
MI_Copy32B: ; 0x02007900
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3}
	stmia r1!, {r2, r3}
	bx lr
	arm_func_end MI_Copy32B

	arm_func_start MI_Copy36B
MI_Copy36B: ; 0x0200791C
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	bx lr
	arm_func_end MI_Copy36B

	arm_func_start MI_Copy48B
MI_Copy48B: ; 0x02007938
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	bx lr
	arm_func_end MI_Copy48B

	arm_func_start MI_Copy64B
MI_Copy64B: ; 0x0200795C
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1!, {r2, r3, r12}
	ldmia r0, {r0, r2, r3, r12}
	stmia r1!, {r0, r2, r3, r12}
	bx lr
	arm_func_end MI_Copy64B

	arm_func_start MI_CpuFill8
MI_CpuFill8: ; 0x02007988
	cmp r2, #0
	bxeq lr
	tst r0, #1
	beq _020079B4
	ldrh r12, [r0, #-1]
	and r12, r12, #0xff
	orr r3, r12, r1, lsl #8
	strh r3, [r0, #-1]
	add r0, r0, #1
	subs r2, r2, #1
	bxeq lr
_020079B4:
	cmp r2, #2
	blo _020079FC
	orr r1, r1, r1, lsl #8
	tst r0, #2
	beq _020079D4
	strh r1, [r0], #2
	subs r2, r2, #2
	bxeq lr
_020079D4:
	orr r1, r1, r1, lsl #16
	bics r3, r2, #3
	beq _020079F4
	sub r2, r2, r3
	add r12, r3, r0
_020079E8:
	str r1, [r0], #4
	cmp r0, r12
	blo _020079E8
_020079F4:
	tst r2, #2
	strneh r1, [r0], #2
_020079FC:
	tst r2, #1
	bxeq lr
	ldrh r3, [r0]
	and r3, r3, #0xff00
	and r1, r1, #0xff
	orr r1, r1, r3
	strh r1, [r0]
	bx lr
	arm_func_end MI_CpuFill8

	arm_func_start MI_CpuFill
MI_CpuFill: ; 0x02007A1C
	cmp r2, #0
	bxeq lr
	cmp r2, #8
	bgt _02007A5C
	rsb r3, r2, #8
	add pc, pc, r3, lsl #2
	nop
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	strb r1, [r0], #1
	bx lr
_02007A5C:
	orr r1, r1, r1, lsl #8
	orr r1, r1, r1, lsl #16
	tst r0, #1
	subne r2, r2, #1
	strneb r1, [r0], #1
	tst r0, #2
	subne r2, r2, #2
	strneh r1, [r0], #2
	tst r0, #4
	subne r2, r2, #4
	strne r1, [r0], #4
	cmp r2, #0x20
	blt _02007AC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10}
	mov r4, r1
	mov r5, r1
	mov r6, r1
	mov r7, r1
	mov r8, r1
	mov r9, r1
	mov r10, r1
	subs r2, r2, #0x20
_02007AB4:
	stmgeia r0!, {r1, r4, r5, r6, r7, r8, r9, r10}
	subges r2, r2, #0x20
	bge _02007AB4
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10}
_02007AC8:
	cmp r2, #4
	blt _02007AE4
	subs r2, r2, #4
_02007AD4:
	strge r1, [r0], #4
	subs r2, r2, #4
	bge _02007AD4
	add r2, r2, #4
_02007AE4:
	subs r2, r2, #1
	strgeb r1, [r0], #1
	subges r2, r2, #1
	strgeb r1, [r0], #1
	subges r2, r2, #1
	strgeb r1, [r0], #1
	bx lr
	arm_func_end MI_CpuFill

	arm_func_start MI_CpuCopy8
MI_CpuCopy8: ; 0x02007B00
	cmp r2, #0
	bxeq lr
	tst r1, #1
	beq _02007B40
	ldrh r12, [r1, #-1]
	and r12, r12, #0xff
	tst r0, #1
	ldrneh r3, [r0, #-1]
	movne r3, r3, lsr #8
	ldreqh r3, [r0]
	orr r3, r12, r3, lsl #8
	strh r3, [r1, #-1]
	add r0, r0, #1
	add r1, r1, #1
	subs r2, r2, #1
	bxeq lr
_02007B40:
	eor r12, r1, r0
	tst r12, #1
	beq _02007B94
	bic r0, r0, #1
	ldrh r12, [r0], #2
	mov r3, r12, lsr #8
	subs r2, r2, #2
	blo _02007B78
_02007B60:
	ldrh r12, [r0], #2
	orr r12, r3, r12, lsl #8
	strh r12, [r1], #2
	mov r3, r12, lsr #0x10
	subs r2, r2, #2
	bhs _02007B60
_02007B78:
	tst r2, #1
	bxeq lr
	ldrh r12, [r1]
	and r12, r12, #0xff00
	orr r12, r12, r3
	strh r12, [r1]
	bx lr
_02007B94:
	tst r12, #2
	beq _02007BC0
	bics r3, r2, #1
	beq _02007C0C
	sub r2, r2, r3
	add r12, r3, r1
_02007BAC:
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	cmp r1, r12
	blo _02007BAC
	b _02007C0C
_02007BC0:
	cmp r2, #2
	blo _02007C0C
	tst r1, #2
	beq _02007BE0
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	subs r2, r2, #2
	bxeq lr
_02007BE0:
	bics r3, r2, #3
	beq _02007C00
	sub r2, r2, r3
	add r12, r3, r1
_02007BF0:
	ldr r3, [r0], #4
	str r3, [r1], #4
	cmp r1, r12
	blo _02007BF0
_02007C00:
	tst r2, #2
	ldrneh r3, [r0], #2
	strneh r3, [r1], #2
_02007C0C:
	tst r2, #1
	bxeq lr
	ldrh r2, [r1]
	ldrh r0, [r0]
	and r2, r2, #0xff00
	and r0, r0, #0xff
	orr r0, r2, r0
	strh r0, [r1]
	bx lr
	arm_func_end MI_CpuCopy8

	arm_func_start MI_CpuComp8
MI_CpuComp8: ; 0x02007C30
	add r12, r0, r2
	cmp r0, r12
	bhs _02007C58
_02007C3C:
	ldrb r3, [r0], #1
	ldrb r2, [r1], #1
	subs r2, r3, r2
	movne r0, r2
	bxne lr
	cmp r0, r12
	blo _02007C3C
_02007C58:
	mov r0, #0
	bx lr
	arm_func_end MI_CpuComp8

	arm_func_start MI_CpuCopy
MI_CpuCopy:
	cmp r2, #8
	bgt _02007CB8
	rsb r3, r2, #8
	add pc, pc, r3, lsl #3
	mov r0, r0
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	ldrb r3, [r0], #1
	strb r3, [r1], #1
	bx lr
_02007CB8:
	tst r0, #1
	subne r2, r2, #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	tst r0, #2
	subne r2, r2, #2
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	and r3, r1, #3
	bic r1, r1, #3
	cmp r3, #0
	beq _02007D04
	cmp r3, #1
	beq _02007D40
	cmp r3, #2
	beq _02007DD8
	b _02007E70
_02007D04:
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_02007D0C:
	ldmgeia r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	stmgeia r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _02007D0C
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_02007D28:
	ldrge r3, [r0], #4
	strge r3, [r1], #4
	subges r2, r2, #4
	bge _02007D28
	add r2, r2, #4
	b _02007F08
_02007D40:
	ldr r12, [r1]
	mov r12, r12, lsl #0x18
	mov r12, r12, lsr #0x18
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_02007D54:
	ldmgeia r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movge r3, r4, lsr #0x18
	orrge r4, r12, r4, lsl #8
	movge r12, r5, lsr #0x18
	orrge r5, r3, r5, lsl #8
	movge r3, r6, lsr #0x18
	orrge r6, r12, r6, lsl #8
	movge r12, r7, lsr #0x18
	orrge r7, r3, r7, lsl #8
	movge r3, r8, lsr #0x18
	orrge r8, r12, r8, lsl #8
	movge r12, r9, lsr #0x18
	orrge r9, r3, r9, lsl #8
	movge r3, r10, lsr #0x18
	orrge r10, r12, r10, lsl #8
	movge r12, lr, lsr #0x18
	orrge lr, r3, lr, lsl #8
	stmgeia r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _02007D54
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_02007DB0:
	ldrge r3, [r0], #4
	orrge r12, r12, r3, lsl #8
	strge r12, [r1], #4
	movge r12, r3, lsr #0x18
	subges r2, r2, #4
	bge _02007DB0
	add r2, r2, #4
	sub r0, r0, #1
	add r2, r2, #1
	b _02007F08
_02007DD8:
	ldr r12, [r1]
	mov r12, r12, lsl #0x10
	mov r12, r12, lsr #0x10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_02007DEC:
	ldmgeia r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movge r3, r4, lsr #0x10
	orrge r4, r12, r4, lsl #16
	movge r12, r5, lsr #0x10
	orrge r5, r3, r5, lsl #16
	movge r3, r6, lsr #0x10
	orrge r6, r12, r6, lsl #16
	movge r12, r7, lsr #0x10
	orrge r7, r3, r7, lsl #16
	movge r3, r8, lsr #0x10
	orrge r8, r12, r8, lsl #16
	movge r12, r9, lsr #0x10
	orrge r9, r3, r9, lsl #16
	movge r3, r10, lsr #0x10
	orrge r10, r12, r10, lsl #16
	movge r12, lr, lsr #0x10
	orrge lr, r3, lr, lsl #16
	stmgeia r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _02007DEC
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_02007E48:
	ldrge r3, [r0], #4
	orrge r12, r12, r3, lsl #16
	strge r12, [r1], #4
	movge r12, r3, lsr #0x10
	subges r2, r2, #4
	bge _02007E48
	add r2, r2, #4
	sub r0, r0, #2
	add r2, r2, #2
	b _02007F08
_02007E70:
	ldr r12, [r1]
	mov r12, r12, lsl #8
	mov r12, r12, lsr #8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_02007E84:
	ldmgeia r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movge r3, r4, lsr #8
	orrge r4, r12, r4, lsl #24
	movge r12, r5, lsr #8
	orrge r5, r3, r5, lsl #24
	movge r3, r6, lsr #8
	orrge r6, r12, r6, lsl #24
	movge r12, r7, lsr #8
	orrge r7, r3, r7, lsl #24
	movge r3, r8, lsr #8
	orrge r8, r12, r8, lsl #24
	movge r12, r9, lsr #8
	orrge r9, r3, r9, lsl #24
	movge r3, r10, lsr #8
	orrge r10, r12, r10, lsl #24
	movge r12, lr, lsr #8
	orrge lr, r3, lr, lsl #24
	stmgeia r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _02007E84
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_02007EE0:
	ldrge r3, [r0], #4
	orrge r12, r12, r3, lsl #24
	strge r12, [r1], #4
	movge r12, r3, lsr #8
	subges r2, r2, #4
	bge _02007EE0
	add r2, r2, #4
	sub r0, r0, #3
	add r2, r2, #3
	b _02007F08
_02007F08:
	tst r2, #4
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	tst r2, #2
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	tst r2, #1
	ldrneb r3, [r0], #1
	strneb r3, [r1], #1
	bx lr
	arm_func_end MI_CpuCopy

	arm_func_start MI_CpuMove
MI_CpuMove: ; 0x02007F50
	cmp r2, #0
	subnes r3, r0, r1
	bxeq lr
	bgt MI_CpuCopy
	add r1, r1, r2
	add r0, r0, r2
	cmp r2, #8
	bgt _02007FC0
	rsb r3, r2, #8
	add pc, pc, r3, lsl #3
	mov r0, r0
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	ldrb r3, [r0, #-1]!
	strb r3, [r1, #-1]!
	bx lr
_02007FC0:
	tst r0, #2
	subne r2, r2, #2
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	tst r0, #1
	subne r2, r2, #1
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	and r3, r1, #3
	bic r1, r1, #3
	cmp r3, #0
	beq _0200800C
	cmp r3, #1
	beq _02008048
	cmp r3, #2
	beq _020080E4
	b _02008180
_0200800C:
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_02008014:
	ldmgedb r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	stmgedb r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _02008014
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_02008030:
	ldrge r3, [r0, #-4]!
	strge r3, [r1, #-4]!
	subges r2, r2, #4
	bge _02008030
	add r2, r2, #4
	b _0200821C
_02008048:
	ldr r12, [r1]
	mov r12, r12, lsr #8
	mov r12, r12, lsl #8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_0200805C:
	ldmgedb r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movge r3, lr, lsl #8
	orrge lr, r12, lr, lsr #24
	movge r12, r10, lsl #8
	orrge r10, r3, r10, lsr #24
	movge r3, r9, lsl #8
	orrge r9, r12, r9, lsr #24
	movge r12, r8, lsl #8
	orrge r8, r3, r8, lsr #24
	movge r3, r7, lsl #8
	orrge r7, r12, r7, lsr #24
	movge r12, r6, lsl #8
	orrge r6, r3, r6, lsr #24
	movge r3, r5, lsl #8
	orrge r5, r12, r5, lsr #24
	movge r12, r4, lsl #8
	orrge r4, r3, r4, lsr #24
	stmgeda r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _0200805C
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_020080B8:
	ldrge r3, [r0, #-4]!
	orrge r12, r12, r3, lsr #24
	strge r12, [r1], #-4
	movge r12, r3, lsl #8
	subges r2, r2, #4
	bge _020080B8
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #3
	add r2, r2, #3
	b _0200821C
_020080E4:
	ldr r12, [r1]
	mov r12, r12, lsr #0x10
	mov r12, r12, lsl #0x10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_020080F8:
	ldmgedb r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movge r3, lr, lsl #0x10
	orrge lr, r12, lr, lsr #16
	movge r12, r10, lsl #0x10
	orrge r10, r3, r10, lsr #16
	movge r3, r9, lsl #0x10
	orrge r9, r12, r9, lsr #16
	movge r12, r8, lsl #0x10
	orrge r8, r3, r8, lsr #16
	movge r3, r7, lsl #0x10
	orrge r7, r12, r7, lsr #16
	movge r12, r6, lsl #0x10
	orrge r6, r3, r6, lsr #16
	movge r3, r5, lsl #0x10
	orrge r5, r12, r5, lsr #16
	movge r12, r4, lsl #0x10
	orrge r4, r3, r4, lsr #16
	stmgeda r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _020080F8
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_02008154:
	ldrge r3, [r0, #-4]!
	orrge r12, r12, r3, lsr #16
	strge r12, [r1], #-4
	movge r12, r3, lsl #0x10
	subges r2, r2, #4
	bge _02008154
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #2
	add r2, r2, #2
	b _0200821C
_02008180:
	ldr r12, [r1]
	mov r12, r12, lsr #0x18
	mov r12, r12, lsl #0x18
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #0x20
_02008194:
	ldmgedb r0!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movge r3, lr, lsl #0x18
	orrge lr, r12, lr, lsr #8
	movge r12, r10, lsl #0x18
	orrge r10, r3, r10, lsr #8
	movge r3, r9, lsl #0x18
	orrge r9, r12, r9, lsr #8
	movge r12, r8, lsl #0x18
	orrge r8, r3, r8, lsr #8
	movge r3, r7, lsl #0x18
	orrge r7, r12, r7, lsr #8
	movge r12, r6, lsl #0x18
	orrge r6, r3, r6, lsr #8
	movge r3, r5, lsl #0x18
	orrge r5, r12, r5, lsr #8
	movge r12, r4, lsl #0x18
	orrge r4, r3, r4, lsr #8
	stmgeda r1!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subges r2, r2, #0x20
	bge _02008194
	add r2, r2, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	subs r2, r2, #4
_020081F0:
	ldrge r3, [r0, #-4]!
	orrge r12, r12, r3, lsr #8
	strge r12, [r1], #-4
	movge r12, r3, lsl #0x18
	subges r2, r2, #4
	bge _020081F0
	add r2, r2, #4
	add r1, r1, #4
	add r0, r0, #1
	add r2, r2, #1
	b _0200821C
_0200821C:
	tst r2, #4
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	tst r2, #2
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	tst r2, #1
	ldrneb r3, [r0, #-1]!
	strneb r3, [r1, #-1]!
	bx lr
	arm_func_end MI_CpuMove

	thumb_func_start MI_Zero36B
MI_Zero36B: ; 0x02008264
	mov r1, #0
	mov r2, #0
	mov r3, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	bx lr
	thumb_func_end MI_Zero36B

	arm_func_start MI_SwapWord
MI_SwapWord: ; 0x02008274
	swp r0, r0, [r1]
	bx lr
	arm_func_end MI_SwapWord

	arm_func_start MI_UncompressLZ8
MI_UncompressLZ8: ; 0x0200827C
	stmfd sp!, {r4, r5, r6, r7, lr}
	ldr r5, [r0], #4
	mov r2, r5, lsr #8
	mov r7, #0
	tst r5, #0xf
	movne r7, #1
_02008294:
	cmp r2, #0
	ble _02008354
	ldrb lr, [r0], #1
	mov r4, #8
_020082A4:
	subs r4, r4, #1
	blt _02008294
	tst lr, #0x80
	bne _020082C8
	ldrb r6, [r0], #1
	swpb r6, r6, [r1]
	add r1, r1, #1
	sub r2, r2, #1
	b _02008344
_020082C8:
	ldrb r5, [r0]
	cmp r7, #0
	moveq r6, #3
	beq _02008310
	tst r5, #0xe0
	movne r6, #1
	bne _02008310
	add r0, r0, #1
	and r6, r5, #0xf
	mov r6, r6, lsl #4
	tst r5, #0x10
	beq _02008308
	mov r6, r6, lsl #8
	ldrb r5, [r0], #1
	add r6, r6, r5, lsl #4
	add r6, r6, #0x100
_02008308:
	add r6, r6, #0x11
	ldrb r5, [r0]
_02008310:
	add r3, r6, r5, asr #4
	add r0, r0, #1
	and r5, r5, #0xf
	mov r12, r5, lsl #8
	ldrb r6, [r0], #1
	orr r5, r6, r12
	add r12, r5, #1
	sub r2, r2, r3
_02008330:
	ldrb r5, [r1, -ip]
	.word 0xE1415095
	add r1, r1, #1
	subs r3, r3, #1
	bgt _02008330
_02008344:
	cmp r2, #0
	movgt lr, lr, lsl #1
	bgt _020082A4
	b _02008294
_02008354:
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end MI_UncompressLZ8

	arm_func_start MI_UncompressHuffman
MI_UncompressHuffman: ; 0x0200835C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #4
	add r2, r0, #4
	add r7, r2, #1
	ldrb r10, [r0]
	and r4, r10, #0xf
	mov r3, #0
	mov lr, #0
	and r10, r4, #7
	add r11, r10, #4
	str r11, [sp]
	ldr r10, [r0]
	mov r12, r10, lsr #8
	ldrb r10, [r2]
	add r10, r10, #1
	add r0, r2, r10, lsl #1
	mov r2, r7
_020083A0:
	cmp r12, #0
	ble _02008428
	mov r8, #0x20
	ldr r5, [r0], #4
_020083B0:
	subs r8, r8, #1
	blt _020083A0
	mov r10, #1
	and r9, r10, r5, lsr #31
	ldrb r6, [r2]
	mov r6, r6, lsl r9
	mov r10, r2, lsr #1
	mov r10, r10, lsl #1
	ldrb r11, [r2]
	and r11, r11, #0x3f
	add r11, r11, #1
	add r10, r10, r11, lsl #1
	add r2, r10, r9
	tst r6, #0x80
	beq _02008418
	mov r3, r3, lsr r4
	ldrb r10, [r2]
	rsb r11, r4, #0x20
	orr r3, r3, r10, lsl r11
	mov r2, r7
	add lr, lr, #1
	ldr r11, [sp]
	cmp lr, r11
	streq r3, [r1], #4
	subeq r12, r12, #4
	moveq lr, #0
_02008418:
	cmp r12, #0
	movgt r5, r5, lsl #1
	bgt _020083B0
	b _020083A0
_02008428:
	add sp, sp, #4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx lr
	arm_func_end MI_UncompressHuffman

	arm_func_start MIi_CardDmaCopy32
MIi_CardDmaCopy32: ; 0x02008434
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r7, r3
	mvn r1, #0
	mov r4, r2
	bl MIi_CheckAnotherAutoDMA
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #0x1000000
	bl MIi_CheckDma0SourceAddress
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, r6, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r1, r0, #0x4000000
_02008480:
	ldr r0, [r1]
	tst r0, #0x80000000
	bne _02008480
	ldr r3, _020084AC ; =0xAF000001
	mov r12, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl MIi_DmaSetParameters
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020084AC: .word 0xAF000001
	arm_func_end MIi_CardDmaCopy32

	arm_func_start MI_Init
MI_Init: ; 0x020084B0
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl MI_SetWramBank
	mov r0, #0
	bl MI_StopDma
	ldmfd sp!, {r3, pc}
	arm_func_end MI_Init

	.bss
	.global MIi_GXDmaParams
MIi_GXDmaParams:
	.space 0x20

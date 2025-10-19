
	.include "asm/macros/function.inc"
	.public CRYPTO_RC4Encrypt
	.public CRYPTO_RC4Init
	.public DC_InvalidateRange
	.public MATH_CalcCRC16
	.public MATHi_CRC16InitTableRev
	.public MATHi_CRC16UpdateRev
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public WM_End
	.public WM_EndScan
	.public WM_GetAllowedChannel
	.public WM_GetDispersionScanPeriod
	.public WM_Initialize
	.public WM_StartScanEx
	
	.text
	arm_static_func_start WDSGetRssi8
WDSGetRssi8: ; 0x020C22A4
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	bx lr
	arm_func_end WDSGetRssi8

	arm_static_func_start WDSScanCallback
WDSScanCallback: ; 0x020C22B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r7, _020C2594 ; =gWdsWork
	mov r6, r0
	ldr r0, [r7]
	mov r1, #0x400
	add r0, r0, #0xf00
	bl DC_InvalidateRange
	ldrh r0, [r6, #2]
	cmp r0, #0
	ldreqh r0, [r6, #8]
	cmpeq r0, #5
	bne _020C2558
	ldrh r0, [r6, #0xe]
	mov r5, #0
	cmp r0, #0
	bls _020C2558
_020C22FC:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x4a]
	add r1, r1, #0x10
	cmp r1, #0x80
	ldreqh r1, [r0, #0x40]
	cmpeq r1, #1
	ldreq r2, [r0, #0x44]
	ldreq r1, _020C2598 ; =0x00000857
	cmpeq r2, r1
	bne _020C2548
	ldr r1, [r7]
	mov r8, #0
	add r3, r1, #0x1000
	ldr r2, [r3, #0xa88]
	mov r4, r8
	cmp r2, #0
	bls _020C2370
	ldrh r9, [r0, #0x48]
_020C2348:
	add r2, r1, r4, lsl #1
	add r2, r2, #0x1a00
	ldrh r2, [r2, #0x68]
	cmp r2, r9
	moveq r8, #1
	beq _020C2370
	ldr r2, [r3, #0xa88]
	add r4, r4, #1
	cmp r4, r2
	blo _020C2348
_020C2370:
	cmp r8, #1
	beq _020C2548
	ldr r1, [r7]
	mov r4, #0x70
	add r2, r1, #0x1000
	add r1, r1, #0x348
	ldr r2, [r2, #0xa8c]
	add r1, r1, #0x1000
	mla r1, r2, r4, r1
	mov r2, r4
	add r0, r0, #0x50
	bl MI_CpuCopy8
	add r8, sp, #0
	mov r9, #4
	ldr r0, _020C259C ; =0x020E3CCC
	mov r1, r8
	mov r2, r9
	bl MI_CpuCopy8
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, r9
	add r1, sp, #4
	add r0, r0, #6
	bl MI_CpuCopy8
	ldr r0, [r7]
	mov r1, r8
	add r0, r0, #0x96
	mov r2, #8
	add r0, r0, #0x1c00
	bl CRYPTO_RC4Init
	ldr r3, [r7]
	mov r2, r4
	add r0, r3, #0x348
	add r8, r0, #0x1000
	add r0, r3, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r3, #0x96
	mul r3, r1, r4
	add r1, r8, r3
	add r0, r0, #0x1c00
	add r3, r8, r3
	bl CRYPTO_RC4Encrypt
	ldr r2, [r7]
	mov r8, #0x6e
	add r0, r2, #0x348
	add r10, r0, #0x1000
	add r0, r2, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r2, #0x96
	mul r9, r1, r4
	add r1, r2, #0x294
	add r0, r0, #0x1a00
	add r1, r1, #0x1800
	add r2, r10, r9
	mov r3, r8
	bl MATHi_CRC16UpdateRev
	ldr r0, [r7]
	add r1, r10, r9
	add r0, r0, #0x96
	mov r2, r8
	add r0, r0, #0x1a00
	bl MATH_CalcCRC16
	ldr r8, [r7]
	add r1, r8, #0x1000
	ldr r2, [r1, #0xa8c]
	mul r1, r2, r4
	add r2, r8, r1
	add r2, r2, #0x1300
	ldrh r2, [r2, #0xb6]
	cmp r0, r2
	cmpne r2, #0
	beq _020C24AC
	add r0, r8, #0x348
	add r0, r0, #0x1000
	mov r2, r4
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	b _020C2548
_020C24AC:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	and r0, r0, #0xff
	bl WDSGetRssi8
	add r1, r8, #0x1000
	ldr r1, [r1, #0xa8c]
	ldr r3, _020C2594 ; =gWdsWork
	add r1, r8, r1, lsl #1
	add r1, r1, #0x1a00
	strh r0, [r1, #0x48]
	ldr r2, [r3]
	add r1, r6, r5, lsl #2
	add r0, r2, #0x1000
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0xa8c]
	ldrh r1, [r1, #0x48]
	add r0, r2, r0, lsl #1
	add r0, r0, #0x1a00
	strh r1, [r0, #0x68]
	ldr r0, [r3]
	add r2, r0, #0x1000
	ldr r0, [r2, #0xa8c]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	str r0, [r2, #0xa8c]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	add r1, r1, #1
	str r1, [r0, #0xa88]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	cmp r1, #0x10
	movgt r1, #0x10
	strgt r1, [r0, #0xa88]
_020C2548:
	ldrh r0, [r6, #0xe]
	add r5, r5, #1
	cmp r5, r0
	blo _020C22FC
_020C2558:
	ldr r1, _020C2594 ; =gWdsWork
	mov r2, #2
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0xa90]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2594: .word gWdsWork
_020C2598: .word 0x00000857
_020C259C: .word ov15_020E3CCC
	arm_func_end WDSScanCallback

	arm_func_start WDS_GetWorkAreaSize
WDS_GetWorkAreaSize: ; 0x020C25A0
	ldr r0, _020C25A8 ; =0x00001DA0
	bx lr
_020C25A8: .word 0x00001DA0
	arm_func_end WDS_GetWorkAreaSize

	arm_func_start WDS_Initialize
WDS_Initialize: ; 0x020C25AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020C2628 ; =gWdsWork
	str r0, [r7]
	bl WDS_GetWorkAreaSize
	mov r2, r0
	mov r4, #0
	ldr r0, [r7]
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, [r7]
	ldr r1, _020C262C ; =0x0000A001
	add r0, r0, #0x1000
	str r4, [r0, #0xa90]
	ldr r0, [r7]
	add r0, r0, #0x1a00
	strh r4, [r0, #0x94]
	ldr r0, [r7]
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl MATHi_CRC16InitTableRev
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	bl WM_Initialize
	cmp r0, #2
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C2628: .word gWdsWork
_020C262C: .word 0x0000A001
	arm_func_end WDS_Initialize

	arm_func_start WDS_End
WDS_End: ; 0x020C2630
	stmfd sp!, {r4, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _020C266C ; =gWdsWork
	mov r3, #3
	ldr r1, [r2]
	mov r4, #0
	add r1, r1, #0x1000
	str r3, [r1, #0xa90]
	str r4, [r2]
	bl WM_End
	cmp r0, #2
	moveq r0, r4
	ldmfd sp!, {r4, pc}
_020C266C: .word gWdsWork
	arm_func_end WDS_End

	arm_func_start WDS_StartScan
WDS_StartScan: ; 0x020C2670
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _020C2720 ; =gWdsWork
	mov r1, #0x400
	ldr r0, [r4]
	add r2, r0, #0xf00
	add r0, r0, #0x1000
	str r2, [r0, #0x300]
	ldr r0, [r4]
	add r0, r0, #0x1300
	strh r1, [r0, #4]
	bl WM_GetAllowedChannel
	ldr r1, [r4]
	add r1, r1, #0x1300
	strh r0, [r1, #6]
	bl WM_GetDispersionScanPeriod
	ldr r1, [r4]
	mov r5, #1
	add r1, r1, #0x1300
	strh r0, [r1, #8]
	ldr r0, [r4]
	mov r1, #0xff
	add r0, r0, #0x1300
	strh r5, [r0, #0x10]
	ldr r0, [r4]
	mov r2, #6
	add r0, r0, #0xa
	add r0, r0, #0x1300
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _020C2724 ; =WDSScanCallback
	add r1, r1, #0x1000
	str r6, [r1, #0x344]
	ldr r1, [r4]
	add r1, r1, #0x1000
	str r5, [r1, #0xa90]
	ldr r1, [r4]
	add r1, r1, #0x1300
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020C2720: .word gWdsWork
_020C2724: .word WDSScanCallback
	arm_func_end WDS_StartScan

	arm_func_start WDS_EndScan
WDS_EndScan: ; 0x020C2728
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020C275C ; =gWdsWork
	mov r2, #2
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r2, [r1, #0xa90]
	bl WM_EndScan
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020C275C: .word gWdsWork
	arm_func_end WDS_EndScan

	arm_func_start WDS_GetApInfoByIndex
WDS_GetApInfoByIndex: ; 0x020C2760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020C27F8 ; =gWdsWork
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	blt _020C279C
	ldr r0, [r0, #0xa88]
	cmp r6, r0
	blt _020C27A4
_020C279C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C27A4:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x78
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r5]
	ldr r0, [r7]
	mov r2, #0x70
	add r0, r0, r6, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x48]
	add r1, r5, #6
	strh r0, [r5, #4]
	ldr r0, [r7]
	add r0, r0, #0x348
	add r0, r0, #0x1000
	mla r0, r6, r2, r0
	bl MI_CpuCopy8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C27F8: .word gWdsWork
	arm_func_end WDS_GetApInfoByIndex

	arm_func_start WDS_GetApInfoAll
WDS_GetApInfoAll: ; 0x020C27FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020C28A0 ; =gWdsWork
	mov r5, r0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r1, r6
	mov r2, #0x780
	bl MI_CpuFill8
	mov r4, r6
	mov r0, #0x78
_020C2838:
	mul r1, r6, r0
	add r6, r6, #1
	str r4, [r5, r1]
	cmp r6, #0x10
	blt _020C2838
	ldr r8, _020C28A0 ; =gWdsWork
	ldr r0, [r8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r0, #0
	ble _020C2898
	mov r6, #0x78
	mvn r7, #0
_020C286C:
	mla r1, r4, r6, r5
	mov r0, r4
	bl WDS_GetApInfoByIndex
	cmp r0, r7
	beq _020C2898
	ldr r0, [r8]
	add r4, r4, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r4, r0
	blt _020C286C
_020C2898:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C28A0: .word gWdsWork
	arm_func_end WDS_GetApInfoAll

	
    .rodata
ov15_020E3CCC:
	.byte 0x21, 0x53, 0x44, 0x57

	.bss
	.global gWdsWork
gWdsWork:
	.space 0x04

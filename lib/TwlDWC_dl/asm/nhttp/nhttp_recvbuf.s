
	.include "asm/macros/function.inc"
	.public NHTTPi_SocRecv
	.public NHTTPi_memcpy

	.text
	arm_static_func_start setupGetcharFromHdrRecvBuf
setupGetcharFromHdrRecvBuf: ; 0x020D0218
	stmfd sp!, {r3, lr}
	cmp r1, #0x400
	movlt r0, #0
	strlt r0, [r2]
	strlt r1, [r3]
	ldmltfd sp!, {r3, pc}
	sub r12, r1, #0x400
	movs r12, r12, asr #9
	sub lr, r12, #1
	ldr r12, [r0, #0x34]
	beq _020D0254
_020D0244:
	cmp lr, #0
	sub lr, lr, #1
	ldr r12, [r12]
	bne _020D0244
_020D0254:
	ldr r0, _020D026C ; =0x000001FF
	sub r1, r1, #0x400
	str r12, [r2]
	and r0, r1, r0
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_020D026C: .word 0x000001FF
	arm_func_end setupGetcharFromHdrRecvBuf

	arm_static_func_start getcharFromHdrRecvBuf
getcharFromHdrRecvBuf: ; 0x020D0270
	ldr r3, [r1]
	cmp r3, #0
	bne _020D02AC
	ldr r3, [r2]
	cmp r3, #0x400
	addlt r1, r3, #1
	addlt r0, r0, r3
	strlt r1, [r2]
	ldrltsb r0, [r0, #0x38]
	bxlt lr
	mov r3, #0
	ldr r0, [r0, #0x34]
	str r3, [r2]
	str r0, [r1]
	b _020D02C8
_020D02AC:
	ldr r0, [r2]
	cmp r0, #0x200
	moveq r0, #0
	streq r0, [r2]
	ldreq r0, [r1]
	ldreq r0, [r0]
	streq r0, [r1]
_020D02C8:
	ldr r3, [r2]
	add r0, r3, #1
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr
	arm_func_end getcharFromHdrRecvBuf

	arm_func_start NHTTPi_findNextLineHdrRecvBuf
NHTTPi_findNextLineHdrRecvBuf: ; 0x020D02E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	movs r8, r3
	mov r11, r0
	mvnne r0, #0
	mov r10, r1
	mov r9, r2
	strne r0, [r8]
	ldr r7, [sp, #0x30]
	cmp r10, r9
	bge _020D03F4
	mov r0, r11
	mov r1, r10
	add r2, sp, #4
	add r3, sp, #0
	mvn r6, #0
	mov r5, #0
	bl setupGetcharFromHdrRecvBuf
	cmp r10, r9
	bge _020D03F4
	sub r4, r9, #1
_020D0338:
	mov r0, r11
	add r1, sp, #4
	add r2, sp, #0
	bl getcharFromHdrRecvBuf
	cmp r0, #0x3a
	bne _020D0360
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	strlt r10, [r8]
_020D0360:
	cmp r5, #0
	beq _020D0398
	cmp r0, #0xa
	bne _020D038C
	sub r0, r9, #1
	mov r6, #0
	cmp r10, r0
	addne r6, r10, #1
	cmp r7, #0
	movne r0, #2
	strne r0, [r7]
_020D038C:
	add sp, sp, #8
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0398:
	cmp r0, #0xd
	bne _020D03BC
	mov r6, #0
	cmp r10, r4
	addne r6, r10, #1
	mov r5, #1
	cmp r7, #0
	movne r1, r5
	strne r1, [r7]
_020D03BC:
	cmp r0, #0xa
	bne _020D03E8
	sub r0, r9, #1
	cmp r10, r0
	moveq r0, #0
	addne r0, r10, #1
	cmp r7, #0
	movne r1, #1
	add sp, sp, #8
	strne r1, [r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D03E8:
	add r10, r10, #1
	cmp r10, r9
	blt _020D0338
_020D03F4:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_findNextLineHdrRecvBuf

	arm_func_start NHTTPi_skipSpaceHdrRecvBuf
NHTTPi_skipSpaceHdrRecvBuf: ; 0x020D0400
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _020D0464
	add r5, sp, #4
	add r4, sp, #0
	mov r2, r5
	mov r3, r4
	bl setupGetcharFromHdrRecvBuf
	cmp r7, r6
	bge _020D0464
_020D0438:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl getcharFromHdrRecvBuf
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _020D0438
_020D0464:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_skipSpaceHdrRecvBuf

	arm_func_start NHTTPi_compareTokenN_HdrRecvBuf
NHTTPi_compareTokenN_HdrRecvBuf: ; 0x020D0470
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r4, r2
	mov r10, r0
	mov r8, r3
	cmp r9, r4
	ldr r7, [sp, #0x30]
	bge _020D0548
	add r2, sp, #4
	add r3, sp, #0
	bl setupGetcharFromHdrRecvBuf
	mov r0, r10
	add r1, sp, #4
	add r2, sp, #0
	bl getcharFromHdrRecvBuf
	mov r5, #1
	sub r6, r4, #1
	mov r4, #0
	mov r11, r5
	b _020D04F8
_020D04C4:
	cmp r1, #0
	cmpne r1, #0x20
	cmpne r1, r7
	cmpne r9, r6
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	add r1, sp, #4
	add r2, sp, #0
	bl getcharFromHdrRecvBuf
	add r9, r9, #1
	add r8, r8, #1
_020D04F8:
	ldrsb r1, [r8]
	mov r2, r5
	mov r3, r11
	cmp r1, #0x41
	movlt r2, r4
	cmp r1, #0x5a
	movgt r3, #0
	tst r2, r3
	moveq r2, r1
	addne r2, r1, #0x20
	mov r3, #1
	cmp r0, #0x41
	movlt r3, #0
	mov r12, #1
	cmp r0, #0x5a
	movgt r12, #0
	tst r3, r12
	addne r0, r0, #0x20
	cmp r0, r2
	beq _020D04C4
_020D0548:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_compareTokenN_HdrRecvBuf

	arm_func_start NHTTPi_loadFromHdrRecvBuf
NHTTPi_loadFromHdrRecvBuf: ; 0x020D0554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _020D0634
	cmp r6, #0
	beq _020D062C
	cmp r7, #0x400
	bge _020D05B4
	rsb r5, r7, #0x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x38
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl NHTTPi_memcpy
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
_020D05B4:
	cmp r6, #0
	beq _020D062C
	sub r2, r7, #0x400
	ldr r0, _020D063C ; =0x000001FF
	movs r1, r2, asr #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r4, [r4, #0x34]
	beq _020D05E8
_020D05D8:
	cmp r0, #0
	sub r0, r0, #1
	ldr r4, [r4]
	bne _020D05D8
_020D05E8:
	cmp r6, #0
	beq _020D062C
	ldr r9, _020D063C ; =0x000001FF
_020D05F4:
	rsb r5, r7, #0x200
	cmp r6, r5
	movle r5, r6
	add r1, r4, #4
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl NHTTPi_memcpy
	add r0, r7, r5
	and r7, r0, r9
	subs r6, r6, r5
	add r8, r8, r5
	ldr r4, [r4]
	bne _020D05F4
_020D062C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D0634:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D063C: .word 0x000001FF
	arm_func_end NHTTPi_loadFromHdrRecvBuf

	arm_func_start NHTTPi_isRecvBufFull
NHTTPi_isRecvBufFull: ; 0x020D0640
	ldr r0, [r0, #0x1c]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end NHTTPi_isRecvBufFull

	arm_func_start NHTTPi_RecvBuf
NHTTPi_RecvBuf: ; 0x020D0654
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r1, #0x2c]
	ldr r12, [sp, #0x10]
	ldr lr, [r4, #0x1c]
	sub lr, lr, r3
	str lr, [sp]
	str r12, [sp, #4]
	ldr r12, [r4, #0x28]
	add r3, r12, r3
	bl NHTTPi_SocRecv
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_RecvBuf

	arm_func_start NHTTPi_RecvBufN
NHTTPi_RecvBufN: ; 0x020D0688
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	ldr r4, [r7, #0x2c]
	mov r5, r3
	mov r8, r0
	mov r0, r4
	mov r1, r5
	mov r6, r2
	bl NHTTPi_isRecvBufFull
	cmp r0, #0
	addne sp, sp, #8
	ldrne r0, _020D0700 ; =0xFFFFFC15
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	sub r1, r1, r5
	cmp r0, r1
	movle r1, r0
	str r1, [sp]
	ldr r0, [sp, #0x24]
	mov r1, r7
	str r0, [sp, #4]
	ldr r3, [r4, #0x28]
	mov r0, r8
	mov r2, r6
	add r3, r3, r5
	bl NHTTPi_SocRecv
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D0700: .word 0xFFFFFC15
	arm_func_end NHTTPi_RecvBufN

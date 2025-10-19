
	.include "asm/macros/function.inc"
	.public NHTTPi_Response2Connection
	.public NHTTPi_alloc
	.public NHTTPi_compareTokenN_HdrRecvBuf
	.public NHTTPi_findNextLineHdrRecvBuf
	.public NHTTPi_free
	.public NHTTPi_loadFromHdrRecvBuf
	.public NHTTPi_skipSpaceHdrRecvBuf
	.public NHTTPi_strcmp

	.text
	arm_func_start NHTTPi_DestroyResponse
NHTTPi_DestroyResponse: ; 0x020D0E6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020D0E9C
_020D0E84:
	ldr r4, [r0]
	bl NHTTPi_free
	mov r0, r4
	str r4, [r5, #0x34]
	cmp r4, #0
	bne _020D0E84
_020D0E9C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _020D0EAC
	bl NHTTPi_free
_020D0EAC:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _020D0EBC
	bl NHTTPi_free
_020D0EBC:
	ldr r3, [r5, #0x30]
	cmp r3, #0
	beq _020D0EE4
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x438]
	ldr r1, _020D0F08 ; =NHTTPi_free
	blx r3
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x1c]
_020D0EE4:
	mov r0, r6
	mov r1, r5
	bl NHTTPi_Response2Connection
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x14]
	mov r0, r5
	bl NHTTPi_free
	ldmfd sp!, {r4, r5, r6, pc}
_020D0F08: .word NHTTPi_free
	arm_func_end NHTTPi_DestroyResponse

	arm_func_start NHTTPi_getHeaderValue
NHTTPi_getHeaderValue: ; 0x020D0F0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r3, #0
	mov r11, r2
	mov r9, r1
	add r5, sp, #8
	str r3, [sp, #4]
	add r6, sp, #4
	ldr r2, [r10]
	mov r3, r5
	mov r1, #0xc
	str r6, [sp]
	bl NHTTPi_findNextLineHdrRecvBuf
	mov r7, r0
	cmp r7, #0
	ble _020D1028
	mov r4, #0
_020D0F54:
	ldr r2, [r10]
	mov r0, r10
	mov r1, r7
	mov r3, r5
	str r6, [sp]
	bl NHTTPi_findNextLineHdrRecvBuf
	ldr r2, [sp, #8]
	mov r8, r0
	cmp r2, #0
	ble _020D101C
	mov r0, r10
	mov r1, r7
	mov r3, r9
	str r4, [sp]
	bl NHTTPi_compareTokenN_HdrRecvBuf
	cmp r0, #0
	bne _020D101C
	ldr r1, [sp, #8]
	ldr r0, [r10]
	add r1, r1, #1
	cmp r1, r0
	bge _020D1010
	ldr r2, [r10]
	mov r0, r10
	mov r3, r4
	str r6, [sp]
	bl NHTTPi_findNextLineHdrRecvBuf
	cmp r0, #0
	ldrle r4, [r10]
	ble _020D0FE4
	ldr r1, [sp, #4]
	cmp r0, r1
	addlt sp, sp, #0xc
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r4, r0, r1
_020D0FE4:
	ldr r1, [sp, #8]
	mov r0, r10
	mov r2, r4
	add r1, r1, #1
	bl NHTTPi_skipSpaceHdrRecvBuf
	cmp r0, #0
	movlt r0, r4
	str r0, [r11]
	add sp, sp, #0xc
	sub r0, r4, r0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1010:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D101C:
	mov r7, r8
	cmp r8, #0
	bgt _020D0F54
_020D1028:
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_getHeaderValue

	arm_func_start NHTTP_GetResponseHeaderField
NHTTP_GetResponseHeaderField: ; 0x020D1034
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r6, r1
	cmp r0, #0
	mov r4, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _020D106C
	bl NHTTPi_free
	mov r0, #0
	str r0, [r5, #0x24]
_020D106C:
	add r2, sp, #0
	mov r0, r5
	mov r1, r6
	bl NHTTPi_getHeaderValue
	movs r7, r0
	bmi _020D10D0
	mov r6, #4
	mov r1, r6
	add r0, r7, #1
	bl NHTTPi_alloc
	str r0, [r5, #0x24]
	cmp r0, #0
	subeq r0, r6, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strb r1, [r0, r7]
	ldr r1, [r5, #0x24]
	ldr r2, [sp]
	mov r0, r5
	mov r3, r7
	bl NHTTPi_loadFromHdrRecvBuf
	ldr r1, [r5, #0x24]
	mov r0, r7
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D10D0:
	ldr r0, _020D113C ; =0x020E58D0
	mov r1, r6
	bl NHTTPi_strcmp
	cmp r0, #0
	bne _020D1134
	mov r6, #4
	mov r0, r6
	mov r1, r6
	bl NHTTPi_alloc
	str r0, [r5, #0x24]
	cmp r0, #0
	subeq r0, r6, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strb r1, [r0, #3]
	mov r6, #3
	ldr r1, [r5, #0x24]
	mov r0, r5
	mov r3, r6
	mov r2, #9
	bl NHTTPi_loadFromHdrRecvBuf
	ldr r1, [r5, #0x24]
	mov r0, r6
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D1134:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D113C: .word ov15_020E58D0
	arm_func_end NHTTP_GetResponseHeaderField

    .data
ov15_020E58D0:
	.asciz "HTTPSTATUSCODE"

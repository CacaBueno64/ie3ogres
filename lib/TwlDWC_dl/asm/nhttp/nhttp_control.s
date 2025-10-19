
	.include "asm/macros/function.inc"
	.public NHTTPi_SetError
	.public NHTTPi_alloc
	.public NHTTPi_compareToken
	.public NHTTPi_memfind
	.public NHTTPi_strMultipartBound
	.public NHTTPi_strlen

	.text
	arm_static_func_start addHdrList
addHdrList: ; 0x020CFD60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r10, [r9]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r10, #0
	mov r4, #0
	beq _020CFDDC
	ldr r1, [r10, #8]
	mov r0, r7
	mov r5, r10
	bl NHTTPi_compareToken
	cmp r0, #0
	beq _020CFDD8
	ldr r5, [r10, #4]
	ldr r0, [r9]
	cmp r5, r0
	beq _020CFDDC
_020CFDAC:
	ldr r1, [r5, #8]
	mov r0, r7
	bl NHTTPi_compareToken
	cmp r0, #0
	moveq r4, #1
	beq _020CFDDC
	ldr r5, [r5, #4]
	ldr r0, [r9]
	cmp r5, r0
	bne _020CFDAC
	b _020CFDDC
_020CFDD8:
	mov r4, #1
_020CFDDC:
	cmp r4, #0
	strne r6, [r5, #0xc]
	bne _020CFE60
	mov r0, #0x18
	mov r1, #4
	bl NHTTPi_alloc
	cmp r0, #0
	bne _020CFE10
	mov r0, r8
	mov r1, #1
	bl NHTTPi_SetError
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CFE10:
	str r7, [r0, #8]
	str r6, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [r9]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [r9]
	beq _020CFE60
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r9]
	str r1, [r0, #4]
	ldr r1, [r9]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r9]
	str r0, [r1]
_020CFE60:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end addHdrList

	arm_static_func_start incAscii
incAscii: ; 0x020CFE68
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _020CFE90
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _020CFE90
	cmp r0, #0x3a
	moveq r0, #0x41
_020CFE90:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
	arm_func_end incAscii

	arm_static_func_start checkTagPost
checkTagPost: ; 0x020CFE9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r0, r9
	mov r1, r8
	add r2, r10, #0x3a
	mov r3, #0x12
	bl NHTTPi_memfind
	cmp r0, #0
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0x13
	mov r4, #0x12
_020CFED4:
	ldr r0, _020CFF34 ; =0x020E3EF4
	add r6, r10, r11
	ldrsb r5, [r6, #0x38]
	ldrsb r7, [r0, r11]
_020CFEE4:
	and r0, r5, #0xff
	bl incAscii
	mov r5, r0
	strb r5, [r6, #0x38]
	cmp r5, r7
	beq _020CFF20
	mov r0, r9
	mov r1, r8
	mov r3, r4
	add r2, r10, #0x3a
	bl NHTTPi_memfind
	cmp r0, #0
	bge _020CFEE4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFF20:
	sub r11, r11, #1
	cmp r11, #2
	bge _020CFED4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFF34: .word NHTTPi_strMultipartBound
	arm_func_end checkTagPost

	arm_func_start NHTTPi_getHdrFromList
NHTTPi_getHdrFromList: ; 0x020CFF38
	ldr r3, [r0]
	cmp r3, #0
	beq _020CFF74
	ldr r2, [r3]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _020CFF74
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	str r1, [r0]
_020CFF74:
	mov r0, r3
	bx lr
	arm_func_end NHTTPi_getHdrFromList

	arm_func_start NHTTPi_AddRequestHeaderField
NHTTPi_AddRequestHeaderField: ; 0x020CFF7C
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #4]
	cmp r12, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r0, #0x30
	bl addHdrList
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_AddRequestHeaderField

	arm_func_start NHTTPi_AddRequestPostDataAscii
NHTTPi_AddRequestPostDataAscii: ; 0x020CFF9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #4]
	mov r4, #0
	cmp r0, #0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, r4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0x10]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #0
	beq _020CFFEC
	mov r0, r6
	bl NHTTPi_strlen
	mov r5, r0
_020CFFEC:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl checkTagPost
	cmp r0, #0
	beq _020D0028
	mov r1, r8
	mov r2, r7
	mov r3, r6
	add r0, r9, #0x34
	bl addHdrList
	movs r4, r0
	ldrne r0, [r9, #0x34]
	ldrne r0, [r0]
	strne r5, [r0, #0x10]
_020D0028:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_AddRequestPostDataAscii

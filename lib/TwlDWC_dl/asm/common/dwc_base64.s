
	.include "asm/macros/function.inc"
	.public MI_CpuCopy8
	.public MI_CpuFill8

	.text
	arm_func_start DWC_Base64Encode
DWC_Base64Encode: ; 0x020CBEA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _020CC01C ; =0xAAAAAAAB
	mov r6, #3
	umull r4, r5, r1, r4
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	subs r5, r1, r4
	movne r5, #4
	str r2, [sp]
	mov r10, r0
	ldr r4, _020CC01C ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r2, r1, r4
	mov r2, r2, lsr #1
	addeq sp, sp, #8
	add r0, r5, r2, lsl #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r10, r1
	ldr r8, [sp]
	cmp r10, r7
	beq _020CC00C
	ldr r5, _020CC020 ; =DWCi_base64_table
	add r11, sp, #4
_020CBF20:
	sub r9, r7, r10
	mov r0, r9, lsl #3
	umull r1, r2, r0, r4
	mov r2, r2, lsr #2
	mov r1, #6
	umull r2, r3, r1, r2
	subs r2, r0, r2
	umull r1, r2, r0, r4
	movne r3, #1
	moveq r3, #0
	add r6, r3, r2, lsr #2
	cmp r9, #3
	movge r9, #3
	mov r0, r11
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r11
	mov r2, r9
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlo r0, #0x2a
	blo _020CBFB0
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_020CBFB0:
	strb r0, [r8, #1]
	cmp r6, #3
	movlo r0, #0x2a
	blo _020CBFDC
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_020CBFDC:
	strb r0, [r8, #2]
	cmp r6, #4
	ldrhsb r0, [sp, #6]
	ldrhs r1, [r5]
	add r10, r10, r9
	andhs r0, r0, #0x3f
	ldrhssb r0, [r1, r0]
	movlo r0, #0x2a
	strb r0, [r8, #3]
	cmp r10, r7
	add r8, r8, #4
	bne _020CBF20
_020CC00C:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CC01C: .word 0xAAAAAAAB
_020CC020: .word DWCi_base64_table
	arm_func_end DWC_Base64Encode

	arm_func_start DWC_Base64Decode
DWC_Base64Decode: ; 0x020CC024
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r6, r5
	cmp r1, #0
	ble _020CC05C
_020CC044:
	ldrsb r4, [r0, r6]
	add r6, r6, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp r6, r1
	blt _020CC044
_020CC05C:
	mov r12, r5, asr #2
	add r12, r5, r12, lsr #29
	mov r12, r12, asr #3
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, r12
	mvnlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_020CC090:
	mov r7, #0
	mov r3, r7
	add r6, sp, #0
	mov r4, #0x3f
	mov r5, #0x3e
_020CC0A4:
	ldrsb lr, [r0, r7]
	cmp lr, #0x41
	blt _020CC0C0
	cmp lr, #0x5a
	suble lr, lr, #0x41
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0C0:
	cmp lr, #0x61
	blt _020CC0D8
	cmp lr, #0x7a
	suble lr, lr, #0x47
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0D8:
	cmp lr, #0x30
	blt _020CC0F0
	cmp lr, #0x39
	addle lr, lr, #4
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0F0:
	cmp lr, #0x2e
	streqb r5, [r6, r7]
	beq _020CC108
	cmp lr, #0x2d
	streqb r4, [r6, r7]
	strneb r3, [r6, r7]
_020CC108:
	add r7, r7, #1
	cmp r7, #4
	blt _020CC0A4
	ldrsb r5, [sp, #1]
	ldrsb r4, [sp]
	add r3, r1, #1
	mov lr, r5, asr #4
	orr r4, lr, r4, lsl #2
	sub r6, r3, r2
	strb r4, [r1]
	cmp r6, r12
	add r0, r0, #4
	bge _020CC178
	ldrsb lr, [sp, #2]
	add r3, r1, #2
	sub r6, r3, r2
	mov r3, lr, asr #2
	orr r3, r3, r5, lsl #4
	strb r3, [r1, #1]
	cmp r6, r12
	bge _020CC178
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r6, r1, r2
	cmp r6, r12
	blt _020CC090
_020CC178:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_Base64Decode

	.data
	.global DWCi_base64_table
DWCi_base64_table:
	.word ov15_020E55FC
ov15_020E55FC:
	.asciz "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-"

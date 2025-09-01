
    .include "asm/macros/function.inc"

    .text
	arm_func_start CRYPTO_RC4Init
CRYPTO_RC4Init: ; 0x020E3BD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	cmp r2, #0x10
	movhi r2, #0x10
	strb r3, [r0]
	strb r3, [r0, #1]
	add lr, r0, #4
_020E3BF0:
	strb r3, [lr, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020E3BF0
	mov r5, #0
	and r3, r2, #0xff
	mov r4, r5
	mov r7, r5
	mov r2, r5
_020E3C14:
	ldrb r6, [lr, r7]
	ldrb r12, [r1, r4]
	add r0, r4, #1
	and r4, r0, #0xff
	add r0, r6, r12
	add r0, r5, r0
	and r5, r0, #0xff
	ldrb r0, [lr, r5]
	cmp r4, r3
	moveq r4, r2
	strb r0, [lr, r7]
	add r7, r7, #1
	strb r6, [lr, r5]
	cmp r7, #0x100
	blt _020E3C14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CRYPTO_RC4Init

	arm_func_start CRYPTO_RC4Encrypt
CRYPTO_RC4Encrypt: ; 0x020E3C54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	add r0, r0, #4
	mov lr, #0x1000000
	add r7, lr, r7, lsl #24
	mov r6, r6, lsl #0x18
	ldrb r9, [r0, r7, lsr #24]
	subs r2, r2, #1
	bmi _020E3CB4
_020E3C7C:
	add r6, r6, r9, lsl #24
	subs r2, r2, #1
	ldrb r8, [r0, r6, lsr #24]
	ldrb r5, [r1], #1
	strb r8, [r0, r7, lsr #24]
	strb r9, [r0, r6, lsr #24]
	add r4, r9, r8
	and r4, r4, #0xff
	add r7, r7, lr
	ldrb r4, [r0, r4]
	ldrb r9, [r0, r7, lsr #24]
	eor r5, r5, r4
	strb r5, [r3], #1
	bge _020E3C7C
_020E3CB4:
	sub r7, r7, lr
	mov r7, r7, lsr #0x18
	mov r6, r6, lsr #0x18
	strb r7, [r0, #-4]
	strb r6, [r0, #-3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end CRYPTO_RC4Encrypt

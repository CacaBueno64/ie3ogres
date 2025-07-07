
	.include "/macros/function.inc"
	.include "/include/overlay128.inc"

	.text
	arm_func_start FUN_ov128_0212a9c0
FUN_ov128_0212a9c0: ; 0x0212A9C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _0212A9E4 ; =0x0212FA60
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r4, [r1, #0x4e4]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_0212A9E4: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212a9c0

	arm_func_start FUN_ov128_0212a9e8
FUN_ov128_0212a9e8: ; 0x0212A9E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	ldr r4, _0212AA60 ; =0x0212FA60
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0212AA50
	mov r0, r6
	bl FUN_ov128_0212bcfc
	cmp r0, #0
	beq _0212AA50
	ldr r3, [r4]
	sub r1, r6, #1
	add r0, r3, #0x1340
	mov r2, #0x16
	mla r0, r1, r2, r0
	add r1, r3, #0x72
	add r1, r1, #0x1700
	bl MI_CpuCopy8
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, [r4]
	add r0, r0, #0x72
	add r0, r0, #0x1700
	ldmfd sp!, {r4, r5, r6, pc}
_0212AA50:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0212AA60: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212a9e8

	arm_func_start FUN_ov128_0212aa64
FUN_ov128_0212aa64: ; 0x0212AA64
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0212AAB0 ; =0x0212FA60
	mov r5, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _0212AAA8
	bl FUN_ov128_0212bcfc
	cmp r0, #0
	beq _0212AAA8
	ldr r1, [r4]
	sub r0, r5, #1
	add r0, r1, r0, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #7
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_0212AAA8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0212AAB0: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212aa64

	arm_func_start FUN_ov128_0212aab4
FUN_ov128_0212aab4: ; 0x0212AAB4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	mov r7, r0
	bl OS_DisableInterrupts
	mov r6, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _0212AB14
_0212AAD4: ; jump table
	b _0212AAE4 ; case 0
	b _0212AAF0 ; case 1
	b _0212AAFC ; case 2
	b _0212AB08 ; case 3
_0212AAE4:
	mov r5, #0xa
	mov r4, #4
	b _0212AB24
_0212AAF0:
	mov r5, #0xa
	mov r4, #3
	b _0212AB24
_0212AAFC:
	mov r5, #0xe
	mov r4, #2
	b _0212AB24
_0212AB08:
	mov r5, #7
	mov r4, #5
	b _0212AB24
_0212AB14:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212AB24:
	ldr r8, _0212AB8C ; =0x0212FA60
	ldr r0, [r8]
	cmp r0, #0
	beq _0212AB7C
	mov r0, r7
	bl FUN_ov128_0212bcfc
	cmp r0, #0
	beq _0212AB7C
	ldr r1, [r8]
	sub r2, r7, #1
	add r0, r1, r2, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r5, r0
	bne _0212AB7C
	add r0, r1, r2, lsl #1
	add r1, r0, #0x1700
	mov r0, r6
	strh r4, [r1, #0x54]
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212AB7C:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212AB8C: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212aab4

	arm_func_start FUN_ov128_0212ab90
FUN_ov128_0212ab90: ; 0x0212AB90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov128_0212bcfc
	cmp r0, #0
	beq _0212ABC4
	ldr r0, _0212ABD8 ; =0x0212FA60
	sub r1, r6, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	str r5, [r0, #0x4e8]
_0212ABC4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov128_0212abdc
	ldmfd sp!, {r4, r5, r6, pc}
_0212ABD8: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212ab90

	arm_func_start FUN_ov128_0212abdc
FUN_ov128_0212abdc: ; 0x0212ABDC
	stmfd sp!, {r3, lr}
	ldr r3, _0212AC00 ; =0x0212FA60
	ldr r3, [r3]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x4e4]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	blx r3
	ldmfd sp!, {r3, pc}
_0212AC00: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212abdc

	arm_func_start FUN_ov128_0212ac04
FUN_ov128_0212ac04: ; 0x0212AC04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r6, r1
	cmp r7, #0x19
	ldr r8, _0212B07C ; =0x0212FA60
	mov r5, #0
	bgt _0212AC68
	cmp r7, #0x19
	bge _0212AEA4
	cmp r7, #0x11
	bgt _0212AC5C
	bge _0212B034
	cmp r7, #3
	bgt _0212B034
	cmp r7, #0
	blt _0212B034
	beq _0212ACA0
	cmp r7, #1
	beq _0212ACC0
	cmp r7, #3
	beq _0212AE98
	b _0212B034
_0212AC5C:
	cmp r7, #0x15
	beq _0212AC8C
	b _0212B034
_0212AC68:
	cmp r7, #0xff
	bgt _0212AC80
	bge _0212AF3C
	cmp r7, #0x1c
	beq _0212AEAC
	b _0212B034
_0212AC80:
	cmp r7, #0x100
	beq _0212AF9C
	b _0212B034
_0212AC8C:
	mov r2, r6
	mov r0, r5
	mov r1, #1
_0212AC98:
	bl FUN_ov128_0212ab90
	b _0212B034
_0212ACA0:
	ldrh r0, [r6, #0x10]
	cmp r0, #0
	beq _0212B034
	cmp r0, #0x10
	bhs _0212B034
	mov r2, r6
	mov r1, #2
	b _0212AC98
_0212ACC0:
	ldrh r0, [r6, #0x10]
	cmp r0, #0
	beq _0212B034
	cmp r0, #0x10
	bhs _0212B034
	ldr r1, [r8]
	sub r0, r0, #1
	add r0, r1, r0, lsl #1
	add r0, r0, #0x1400
	strh r5, [r0, #0x8a]
	ldr r0, [r8]
	ldrh r1, [r6, #0x10]
	add r0, r0, #0xa8
	mov r4, #4
	add r3, r0, #0x1400
	sub r0, r1, #1
	mov r1, r5
	mov r2, r4
	add r0, r3, r0, lsl #2
	bl MI_CpuFill8
	ldr r1, [r8]
	ldrh r0, [r6, #0x10]
	add r2, r1, #0x1340
	mov r9, #0x16
	sub r1, r0, #1
	mla r0, r1, r9, r2
	mov r1, r5
	mov r2, r9
	bl MI_CpuFill8
	ldrh r0, [r6, #0x10]
	bl FUN_ov128_0212f66c
	ldrh r0, [r6, #0x10]
	ldr r2, [r8]
	sub r1, r9, #0x17
	sub r0, r0, #1
	add r0, r2, r0, lsl #1
	add r0, r0, #0x1700
	strh r5, [r0, #0x54]
	ldrh r12, [r6, #0x10]
	ldr r3, [r8]
	sub r2, r12, #1
	add r0, r3, r2
	add r0, r0, #0x1500
	ldrsb r0, [r0, #0x26]
	cmp r0, r1
	beq _0212ADF0
	and r1, r0, #0xff
	add r0, r4, #0x5d0
	mul r0, r1, r0
	mov r1, #1
	add r3, r3, r0
	add r4, r3, #0x1d00
	mvn r3, r1, lsl r12
	ldrh r9, [r4, #0x4e]
	mov r3, r3, lsl #0x10
	mov r12, r1, lsl r12
	and r9, r9, r3, lsr #16
	strh r9, [r4, #0x4e]
	ldr r9, [r8]
	mov r4, r12, lsl #0x10
	add r9, r9, r0
	add r9, r9, #0x1d00
	ldrh lr, [r9, #0x50]
	sub r12, r1, #2
	orr r1, lr, r4, lsr #16
	strh r1, [r9, #0x50]
	ldr r1, [r8]
	add r1, r1, r2
	add r1, r1, #0x1000
	strb r12, [r1, #0x526]
	ldr r1, [r8]
	add r0, r1, r0
	add r0, r0, #0x1d00
	ldrh r1, [r0, #0x4c]
	and r1, r1, r3, lsr #16
	strh r1, [r0, #0x4c]
_0212ADF0:
	ldr r4, _0212B07C ; =0x0212FA60
	ldrh r2, [r6, #0x10]
	ldr r3, [r4]
	mov r0, #1
	add r1, r3, #0x1500
	ldrh r1, [r1, #0x36]
	tst r1, r0, lsl r2
	beq _0212AE40
	add r1, r3, #0x1000
	ldrb r2, [r1, #0x535]
	sub r2, r2, #1
	strb r2, [r1, #0x535]
	ldr r1, [r4]
	ldrh r2, [r6, #0x10]
	add r1, r1, #0x1500
	ldrh r3, [r1, #0x36]
	mvn r0, r0, lsl r2
	mov r0, r0, lsl #0x10
	and r0, r3, r0, lsr #16
	strh r0, [r1, #0x36]
_0212AE40:
	ldrh r0, [r6, #0x10]
	ldr r2, [r4]
	sub r1, r0, #1
	add r1, r2, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4e8]
	cmp r1, #8
	bne _0212AE6C
	mov r1, #9
	mov r2, #0
	bl FUN_ov128_0212ab90
_0212AE6C:
	ldrh r0, [r6, #0x10]
	mov r2, r6
	mov r1, #3
	bl FUN_ov128_0212ab90
	ldrh r0, [r6, #0x10]
	ldr r1, [r4]
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	add r0, r0, #0x1000
	str r5, [r0, #0x4e8]
	b _0212B034
_0212AE98:
	mov r0, r6
	bl FUN_ov128_0212b544
	b _0212B034
_0212AEA4:
	bl FUN_ov128_0212bad0
	b _0212B034
_0212AEAC:
	ldr r4, _0212B080 ; =0x000005D4
	mov r6, r5
_0212AEB4:
	mul r9, r6, r4
	ldr r1, [r8]
	add r2, r1, r9
	add r0, r2, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r2, r2, #0x1d00
	ldrneh r3, [r2, #0x50]
	cmpne r3, #0
	beq _0212AF04
	add r0, r1, #0x6c
	add r0, r0, #0x1800
	ldrh r2, [r2, #0x4e]
	add r0, r0, r9
	add r1, r1, #0x1340
	bl FUN_ov128_0212ccb8
	ldr r0, [r8]
	add r0, r0, r9
	add r0, r0, #0x1d00
	strh r5, [r0, #0x50]
_0212AF04:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x10
	blo _0212AEB4
	bl FUN_ov128_0212f0a8
	mov r5, r0
	bl FUN_ov128_0212f0bc
	mov r4, r0
	bl FUN_ov128_0212f0d0
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov128_0212cde4
	b _0212B034
_0212AF3C:
	ldrh r0, [r6, #2]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0212AF98
_0212AF4C: ; jump table
	b _0212AF98 ; case 0
	b _0212AF8C ; case 1
	b _0212AF98 ; case 2
	b _0212AF98 ; case 3
	b _0212AF8C ; case 4
	b _0212AF8C ; case 5
	b _0212AF8C ; case 6
	b _0212AF98 ; case 7
	b _0212AF8C ; case 8
	b _0212AF8C ; case 9
	b _0212AF98 ; case 10
	b _0212AF98 ; case 11
	b _0212AF98 ; case 12
	b _0212AF98 ; case 13
	b _0212AF98 ; case 14
	b _0212AF98 ; case 15
_0212AF8C:
	mov r0, r5
	mov r1, #9
	b _0212B030
_0212AF98:
	b _0212B028
_0212AF9C:
	ldrh r0, [r6]
	cmp r0, #0x1d
	addls pc, pc, r0, lsl #2
	b _0212B028
_0212AFAC: ; jump table
	b _0212B024 ; case 0
	b _0212B028 ; case 1
	b _0212B028 ; case 2
	b _0212B028 ; case 3
	b _0212B028 ; case 4
	b _0212B028 ; case 5
	b _0212B028 ; case 6
	b _0212B024 ; case 7
	b _0212B024 ; case 8
	b _0212B028 ; case 9
	b _0212B028 ; case 10
	b _0212B028 ; case 11
	b _0212B028 ; case 12
	b _0212B024 ; case 13
	b _0212B024 ; case 14
	b _0212B024 ; case 15
	b _0212B028 ; case 16
	b _0212B024 ; case 17
	b _0212B024 ; case 18
	b _0212B028 ; case 19
	b _0212B028 ; case 20
	b _0212B024 ; case 21
	b _0212B028 ; case 22
	b _0212B028 ; case 23
	b _0212B028 ; case 24
	b _0212B024 ; case 25
	b _0212B028 ; case 26
	b _0212B028 ; case 27
	b _0212B028 ; case 28
	b _0212B024 ; case 29
_0212B024:
	b _0212AF8C
_0212B028:
	mov r0, #0
	mov r1, #8
_0212B030:
	bl FUN_ov128_0212bd18
_0212B034:
	ldr r4, _0212B07C ; =0x0212FA60
	mov r5, #0
	cmp r7, #0x11
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r4]
	mov r2, #0x7d00
	add r0, r1, #0x1000
	ldr r6, [r0, #0x4e4]
	mov r0, r5
	bl MIi_CpuClearFast
	str r5, [r4]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	mov r2, r5
	mov r1, #0xc
	blx r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212B07C: .word ov128_0212FA60
_0212B080: .word 0x000005D4
	arm_func_end FUN_ov128_0212ac04

	arm_func_start FUN_ov128_0212b084
FUN_ov128_0212b084: ; 0x0212B084
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	ldr r9, _0212B538 ; =0x0212FA60
	movs r6, r1
	ldr r7, _0212B53C ; =0x000005D4
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0xf
	addhi sp, sp, #0x34
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, sp, #0x20
	mov r2, r6
	add r0, r0, #0xa
	bl FUN_ov128_0212f724
	ldrb r8, [sp, #0x20]
	ldr r1, [r9]
	sub r3, r6, #1
	add r2, r1, r3, lsl #2
	add r2, r2, #0x1000
	ldr r4, [r2, #0x4e8]
	mov r5, r0
	cmp r8, #0xb
	addls pc, pc, r8, lsl #2
	b _0212B530
_0212B0E4: ; jump table
	b _0212B530 ; case 0
	b _0212B530 ; case 1
	b _0212B530 ; case 2
	b _0212B530 ; case 3
	b _0212B530 ; case 4
	b _0212B530 ; case 5
	b _0212B530 ; case 6
	b _0212B114 ; case 7
	b _0212B394 ; case 8
	b _0212B43C ; case 9
	b _0212B4A4 ; case 10
	b _0212B530 ; case 11
_0212B114:
	cmp r5, #0
	mov r10, #1
	mov r8, r9
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #2
	bne _0212B1BC
	add r1, sp, #0
	mov r2, #0x1d
	bl MI_CpuCopy8
	ldr r1, [r9]
	sub r0, r6, #1
	add r1, r1, r0, lsl #2
	ldr r2, [sp]
	add r1, r1, #0x1000
	str r2, [r1, #0x4a8]
	ldr r1, [r9]
	ldrh r2, [sp, #0x1a]
	add r1, r1, r0, lsl #1
	add r1, r1, #0x1400
	strh r2, [r1, #0x8a]
	ldr r1, [r9]
	mov r11, #0x16
	add r1, r1, #0x1340
	mla r1, r0, r11, r1
	add r0, sp, #4
	mov r2, r11
	bl MI_CpuCopy8
	ldr r0, [r9]
	sub r3, r6, #1
	add r1, r0, #0x1340
	mul r0, r3, r11
	ldrb r9, [r1, r0]
	and r3, r6, #0xff
	mov r3, r3, lsl #0x1c
	bic r9, r9, #0xf0
	orr r3, r9, r3, lsr #24
	strb r3, [r1, r0]
	add r2, sp, #4
	mov r0, r6
	mov r1, #0xa
	bl FUN_ov128_0212ab90
_0212B1BC:
	cmp r4, #0xa
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r5, [r5, #0x1c]
	mov r1, #0
	cmp r5, #0x10
	bhs _0212B210
	ldr r4, [r8]
	mla r0, r5, r7, r4
	add r2, r0, #0x1000
	ldrb r3, [r2, #0xd52]
	cmp r3, #0
	beq _0212B210
	sub r3, r6, #1
	add r4, r4, r3, lsl #2
	ldr r3, [r2, #0xd40]
	add r2, r4, #0x1000
	ldr r4, [r2, #0x4a8]
	ldr r2, [r3, #0x14]
	cmp r4, r2
	beq _0212B22C
_0212B210:
	ldr r1, [r8]
	sub r0, r6, #1
	add r0, r1, r0, lsl #1
	add r0, r0, #0x1700
	mov r1, #4
	strh r1, [r0, #0x54]
	b _0212B29C
_0212B22C:
	mov r3, r1
	add r0, r0, #0x1d00
	b _0212B250
_0212B238:
	ldrh r2, [r0, #0x4e]
	tst r2, r10, lsl r3
	addne r1, r1, #1
	add r2, r3, #1
	andne r1, r1, #0xff
	and r3, r2, #0xff
_0212B250:
	cmp r3, #0x10
	blo _0212B238
	ldr r2, [r8]
	mla r0, r5, r7, r2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xd40]
	ldrb r0, [r0, #0x18]
	cmp r1, r0
	blo _0212B29C
	sub r0, r6, #1
	add r1, r2, r0, lsl #1
	add r3, r1, #0x1700
	mov r2, #0
	mov r0, r6
	mov r1, #0xb
	strh r2, [r3, #0x54]
	bl FUN_ov128_0212ab90
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B29C:
	ldr r9, [r8]
	sub r4, r6, #1
	add r0, r9, r4, lsl #1
	add r3, r0, #0x1700
	ldrh r0, [r3, #0x54]
	mov r1, #1
	cmp r0, #3
	beq _0212B2CC
	cmp r0, #4
	beq _0212B378
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B2CC:
	add r0, r9, #0x1500
	ldrh r0, [r0, #0x36]
	mov r2, r1, lsl r6
	tst r0, r1, lsl r6
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #0x1000
	ldrb r1, [r0, #0x535]
	mov r9, r2, lsl #0x10
	mul r3, r5, r7
	add r1, r1, #1
	strb r1, [r0, #0x535]
	ldr r0, [r8]
	mov r2, #0
	add r1, r0, #0x1500
	ldrh r7, [r1, #0x36]
	mov r0, r6
	orr r6, r7, r9, lsr #16
	strh r6, [r1, #0x36]
	ldr r6, [r8]
	mov r1, #5
	add r6, r6, r4
	add r6, r6, #0x1000
	strb r5, [r6, #0x526]
	ldr r5, [r8]
	add r5, r5, #0x4e
	add r6, r5, #0x1d00
	ldrh r5, [r6, r3]
	orr r5, r5, r9, lsr #16
	strh r5, [r6, r3]
	ldr r5, [r8]
	add r5, r5, #0xd50
	add r6, r5, #0x1000
	ldrh r5, [r6, r3]
	orr r5, r5, r9, lsr #16
	strh r5, [r6, r3]
	ldr r3, [r8]
	add r3, r3, r4, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl FUN_ov128_0212ab90
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B378:
	mov r2, #0
	mov r0, r6
	mov r1, #4
	strh r2, [r3, #0x54]
	bl FUN_ov128_0212ab90
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B394:
	cmp r4, #5
	mov r5, #1
	mov r2, r7
	bne _0212B3BC
	mov r0, r6
	mov r1, #0xe
	mov r2, #0
	bl FUN_ov128_0212ab90
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B3BC:
	cmp r4, #0xe
	addeq r0, r1, r3, lsl #1
	addeq r0, r0, #0x1700
	ldreqh r0, [r0, #0x54]
	cmpeq r0, #2
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r1, r3
	add r0, r0, #0x1000
	ldrb r7, [r0, #0x526]
	add r0, r1, #0x14c
	mul r4, r7, r2
	add r7, r0, #0x1c00
	mov r0, r5, lsl r6
	ldrh r1, [r7, r4]
	mov r0, r0, lsl #0x10
	mov r2, #0
	orr r0, r1, r0, lsr #16
	strh r0, [r7, r4]
	ldr r1, [r9]
	mov r0, r6
	add r1, r1, r4
	add r1, r1, #0x1d00
	strh r2, [r1, #0x48]
	ldr r4, [r9]
	mov r1, #6
	add r3, r4, r3, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl FUN_ov128_0212ab90
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B43C:
	cmp r4, #6
	mov r4, #1
	mov r6, r7
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r1, r3
	add r0, r0, #0x1000
	ldrb r5, [r0, #0x526]
	cmp r5, #0xff
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mla r0, r5, r6, r1
	add r0, r0, #0x1d00
	ldrh r0, [r0, #0x4a]
	ldrh r1, [sp, #0x22]
	bl FUN_ov128_0212bce8
	ldr r1, [r9]
	ldr r2, _0212B540 ; =0x0212F9A0
	mla r1, r5, r6, r1
	add r1, r1, #0x1d00
	strh r0, [r1, #0x4a]
	ldr r0, [r2]
	add sp, sp, #0x34
	orr r0, r0, r4, lsl r5
	str r0, [r2]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B4A4:
	cmp r4, #6
	mov r2, #1
	bne _0212B500
	add r0, r1, r3
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x526]
	cmp r0, #0xff
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mul r4, r0, r7
	add r0, r1, #0x14c
	add r5, r0, #0x1c00
	mvn r0, r2, lsl r6
	mov r1, r0, lsl #0x10
	ldrh r2, [r5, r4]
	mov r0, r6
	and r3, r2, r1, lsr #16
	mov r1, #7
	mov r2, #0
	strh r3, [r5, r4]
	bl FUN_ov128_0212ab90
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B500:
	cmp r4, #7
	addeq r0, r1, r3, lsl #1
	addeq r3, r0, #0x1700
	ldreqh r0, [r3, #0x54]
	cmpeq r0, #5
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, #0
	mov r0, r6
	mov r1, #8
	strh r2, [r3, #0x54]
	bl FUN_ov128_0212ab90
_0212B530:
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B538: .word ov128_0212FA60
_0212B53C: .word 0x000005D4
_0212B540: .word ov128_0212F9A0
	arm_func_end FUN_ov128_0212b084

	arm_func_start FUN_ov128_0212b544
FUN_ov128_0212b544: ; 0x0212B544
	stmfd sp!, {r4, r5, r6, lr}
	mov r12, #0
	ldr r2, _0212B5E0 ; =0x0212FA60
	ldr r1, _0212B5E4 ; =0x000005D4
	mov r4, r0
	mov r3, r12
_0212B55C:
	ldr r0, [r2]
	mla r5, r12, r1, r0
	add r0, r5, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, r5, #0x1d00
	strneh r3, [r0, #0x4a]
	add r0, r12, #1
	mov r0, r0, lsl #0x10
	mov r12, r0, lsr #0x10
	cmp r12, #0x10
	blo _0212B55C
	ldr r0, _0212B5E8 ; =0x0212F9A0
	mov r1, #0
	ldr r5, _0212B5EC ; =0x0000FFFF
	str r1, [r0]
	mov r6, #1
_0212B5A0:
	mov r0, r4
	mov r1, r6
	bl FUN_02012ad0
	cmp r0, #0
	ldrneh r1, [r0]
	cmpne r1, r5
	cmpne r1, #0
	beq _0212B5C8
	mov r1, r6
	bl FUN_ov128_0212b084
_0212B5C8:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0xf
	bls _0212B5A0
	ldmfd sp!, {r4, r5, r6, pc}
_0212B5E0: .word ov128_0212FA60
_0212B5E4: .word 0x000005D4
_0212B5E8: .word ov128_0212F9A0
_0212B5EC: .word 0x0000FFFF
	arm_func_end FUN_ov128_0212b544

	arm_func_start FUN_ov128_0212b5f0
FUN_ov128_0212b5f0: ; 0x0212B5F0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _0212B628 ; =0x0212FA60
	mov r5, r1
	ldr r1, [r4]
	strb r0, [sp]
	add r0, sp, #0
	bl FUN_ov128_0212f6ac
	ldr r2, [r4]
	mov r1, r5
	mov r0, #6
	bl FUN_ov128_0212ca9c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0212B628: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212b5f0

	arm_func_start FUN_ov128_0212b62c
FUN_ov128_0212b62c: ; 0x0212B62C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	add r4, sp, #6
	mov r6, #0
	mov r0, r4
	mov r1, r6
	mov r2, #0x10
	mvn r5, #0
	bl MI_CpuFill8
	ldr r1, _0212B7B0 ; =0x0212FA60
	mov r0, #1
	ldr r1, [r1]
_0212B65C:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _0212B688
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r3, [r2, #0x25]
	ldrb r2, [r4, r3]
	add r2, r2, #1
	strb r2, [r4, r3]
_0212B688:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0xf
	bls _0212B65C
	ldr r2, _0212B7B4 ; =0x0212F960
	ldr r4, _0212B7B8 ; =0x000005D4
	ldrb r3, [r2]
	mov r0, #0
	add r12, sp, #6
_0212B6B0:
	add r2, r3, #1
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	and r3, r2, #0xff
	mla r2, r3, r4, r1
	add r2, r2, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	ldrneb r2, [r12, r3]
	cmpne r2, #0
	movne r0, r3, lsl #0x18
	movne r5, r0, asr #0x18
	bne _0212B6F8
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	blo _0212B6B0
_0212B6F8:
	cmn r5, #1
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, _0212B7B4 ; =0x0212F960
	mov r0, #1
	strb r5, [r2]
	mov r3, r0
_0212B718:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	addeq r2, r1, r0
	addeq r2, r2, #0x1500
	ldreqsb r2, [r2, #0x25]
	cmpeq r5, r2
	moveq r2, r3, lsl r0
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	moveq r2, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orreq r6, r6, r2, lsr #16
	cmp r0, #0xf
	bls _0212B718
	mov r2, #3
	add r0, sp, #0
	strb r2, [sp]
	strh r5, [sp, #2]
	bl FUN_ov128_0212f6ac
	movs r1, r0
	beq _0212B794
	ldr r0, _0212B7B0 ; =0x0212FA60
	ldr r3, _0212B7B8 ; =0x000005D4
	ldr r0, [r0]
	mov r2, #0xe4
	add r0, r0, #0x388
	add r0, r0, #0x1400
	mla r0, r5, r3, r0
	bl MI_CpuCopy8
_0212B794:
	ldr r0, _0212B7B0 ; =0x0212FA60
	mov r1, r6
	ldr r2, [r0]
	mov r0, #0xea
	bl FUN_ov128_0212ca9c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0212B7B0: .word ov128_0212FA60
_0212B7B4: .word ov128_0212F960
_0212B7B8: .word 0x000005D4
	arm_func_end FUN_ov128_0212b62c

	arm_func_start FUN_ov128_0212b7bc
FUN_ov128_0212b7bc: ; 0x0212B7BC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r4, [r0, #0x14]
	ldr r5, [r0, #0x10]
	ldr r1, [r4, #0x14]
	add r0, r4, #0x10
	ldr r7, [r5, #4]
	bl FS_FindArchive
	movs r6, r0
	ldreq r6, [r4, #0x18]
	add r4, sp, #4
	mov r0, r4
	bl FS_InitFile
	ldr r2, [r5]
	mvn r12, #0
	mov r0, r4
	mov r1, r6
	add r3, r2, r7
	str r12, [sp]
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _0212B838
	ldr r1, [r5, #8]
	mov r0, r4
	mov r2, r7
	bl FS_ReadFile
	cmp r7, r0
	moveq r0, #2
	streq r0, [r5, #0xc]
	add r0, sp, #4
	bl FS_CloseFile
_0212B838:
	ldr r0, [r5, #0xc]
	cmp r0, #2
	movne r0, #0
	strne r0, [r5]
	movne r0, #2
	strne r0, [r5, #0xc]
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov128_0212b7bc

	arm_func_start FUN_ov128_0212b858
FUN_ov128_0212b858: ; 0x0212B858
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r5, _0212BAC4 ; =0x0212FA60
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x524]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0212BAC8 ; =0x000005D4
	mov r1, #0
_0212B888:
	ldr r0, [r5]
	add r3, r0, #0x1000
	ldrb r0, [r3, #0x525]
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r0, r2, r0, lsl #28
	add r0, r2, r0, ror #28
	strb r0, [r3, #0x525]
	ldr r2, [r5]
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x525]
	mla r3, r0, r4, r2
	add r2, r3, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	addne r2, r3, #0x1d00
	ldrneh r2, [r2, #0x4c]
	cmpne r2, #0
	bne _0212B8E4
	add r1, r1, #1
	and r1, r1, #0xff
	cmp r1, #0x10
	blo _0212B888
_0212B8E4:
	cmp r1, #0x10
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov128_0212bc6c
	ldr r5, _0212BAC4 ; =0x0212FA60
	ldr r4, _0212BAC8 ; =0x000005D4
	ldr r7, [r5]
	add r0, sp, #8
	add r1, r7, #0x1000
	ldrb r2, [r1, #0x525]
	add r1, r7, #0x12c
	add r3, r7, #0x388
	mul r6, r2, r4
	add r2, r7, r6
	add r2, r2, #0x1d00
	add r1, r1, #0x1c00
	add r3, r3, #0x1400
	ldrh r2, [r2, #0x48]
	add r1, r1, r6
	add r3, r3, r6
	bl FUN_ov128_0212c870
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5]
	mov r0, #4
	strb r0, [sp]
	add r2, r1, #0x1000
	ldrb r3, [r2, #0x525]
	add r0, sp, #0
	strh r3, [sp, #2]
	ldrb r3, [r2, #0x525]
	mla r2, r3, r4, r1
	add r2, r2, #0x1d00
	ldrh r2, [r2, #0x48]
	strh r2, [sp, #4]
	bl FUN_ov128_0212f6ac
	ldr r6, [r5]
	ldrb r1, [sp, #0x14]
	add r2, r6, #0x1000
	ldrb r2, [r2, #0x525]
	ldr r12, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mla r6, r2, r4, r6
	add r2, r6, r1, lsl #2
	add r7, r6, #0x1000
	ldr r6, [r7, #0xd58]
	add r2, r2, #0x1000
	ldr r2, [r2, #0xd2c]
	ldr r1, [r6, r1, lsl #2]
	sub r2, r12, r2
	add r6, r2, r1
	ldr r7, [r7, #0xd54]
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl FUN_ov128_0212f204
	cmp r0, #0
	bne _0212BA98
	ldr r0, [r5]
	add r0, r0, #0xce0
	add r4, r0, #0x7000
	mov r0, r4
	bl FUN_ov128_0212f45c
	cmp r0, #0
	bne _0212BA8C
	ldr r0, [r7]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r7]
	bne _0212BA8C
	mov r5, #0
	mov r3, r5
	add r2, r7, #0x30
_0212BA14:
	add r0, r2, r3, lsl #4
	ldr r0, [r0, #0xc]
	cmp r0, #2
	bne _0212BA40
	cmp r5, #0
	beq _0212BA3C
	ldr r1, [r5]
	ldr r0, [r2, r3, lsl #4]
	cmp r1, r0
	bls _0212BA40
_0212BA3C:
	add r5, r2, r3, lsl #4
_0212BA40:
	add r3, r3, #1
	cmp r3, #4
	blt _0212BA14
	cmp r5, #0
	bne _0212BA58
	bl OS_Terminate
_0212BA58:
	mov r0, #2
	str r0, [r7]
	mov r0, #1
	str r0, [r5, #0xc]
	bic r0, r6, #0x1f
	str r0, [r5]
	str r5, [r4, #0x10]
	ldr r1, _0212BACC ; =FUN_ov128_0212b7bc
	mov r0, r4
	mov r2, #0
	mov r3, #4
	str r7, [r4, #0x14]
	bl FUN_ov128_0212f474
_0212BA8C:
	add sp, sp, #0x18
	mov r0, #0x15
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212BA98:
	ldr r2, [r5]
	ldr r1, [sp, #0xc]
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x525]
	add r0, r1, #6
	mla r1, r3, r4, r2
	add r1, r1, #0x1d00
	ldrh r1, [r1, #0x4c]
	bl FUN_ov128_0212ca9c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212BAC4: .word ov128_0212FA60
_0212BAC8: .word 0x000005D4
_0212BACC: .word FUN_ov128_0212b7bc
	arm_func_end FUN_ov128_0212b858

	arm_func_start FUN_ov128_0212bad0
FUN_ov128_0212bad0: ; 0x0212BAD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, #1
	add r1, sp, #0
	mov r0, #0
	mov r2, #0xa
	mov r5, r4
	mov r6, r4
	mov r7, r4
	mov r8, r4
	bl MIi_CpuClear16
	ldr r1, _0212BC64 ; =0x0212FA60
	mov r0, r4
	ldr r1, [r1]
_0212BB08:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #0xb
	addls pc, pc, r2, lsl #2
	b _0212BBC4
_0212BB20: ; jump table
	b _0212BBC4 ; case 0
	b _0212BBC4 ; case 1
	b _0212BB50 ; case 2
	b _0212BBC4 ; case 3
	b _0212BB80 ; case 4
	b _0212BB68 ; case 5
	b _0212BBC4 ; case 6
	b _0212BBC4 ; case 7
	b _0212BB98 ; case 8
	b _0212BBC4 ; case 9
	b _0212BBC4 ; case 10
	b _0212BBB0 ; case 11
_0212BB50:
	mov r2, r8, lsl r0
	ldrh r3, [sp]
	mov r2, r2, lsl #0x10
	orr r2, r3, r2, lsr #16
	strh r2, [sp]
	b _0212BBC4
_0212BB68:
	mov r2, r7, lsl r0
	ldrh r3, [sp, #2]
	mov r2, r2, lsl #0x10
	orr r2, r3, r2, lsr #16
	strh r2, [sp, #2]
	b _0212BBC4
_0212BB80:
	mov r2, r6, lsl r0
	ldrh r3, [sp, #4]
	mov r2, r2, lsl #0x10
	orr r2, r3, r2, lsr #16
	strh r2, [sp, #4]
	b _0212BBC4
_0212BB98:
	mov r2, r5, lsl r0
	ldrh r3, [sp, #6]
	mov r2, r2, lsl #0x10
	orr r2, r3, r2, lsr #16
	strh r2, [sp, #6]
	b _0212BBC4
_0212BBB0:
	mov r2, r4, lsl r0
	ldrh r3, [sp, #8]
	mov r2, r2, lsl #0x10
	orr r2, r3, r2, lsr #16
	strh r2, [sp, #8]
_0212BBC4:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0xf
	bls _0212BB08
	ldrh r1, [sp, #6]
	cmp r1, #0
	beq _0212BBF0
	mov r0, #5
_0212BBE8:
	bl FUN_ov128_0212b5f0
	b _0212BC44
_0212BBF0:
	ldrh r1, [sp]
	cmp r1, #0
	beq _0212BC04
	mov r0, #1
	b _0212BBE8
_0212BC04:
	ldrh r1, [sp, #8]
	cmp r1, #0
	beq _0212BC18
	mov r0, #6
	b _0212BBE8
_0212BC18:
	ldrh r1, [sp, #4]
	cmp r1, #0
	beq _0212BC2C
	mov r0, #2
	b _0212BBE8
_0212BC2C:
	ldrh r0, [sp, #2]
	cmp r0, #0
	beq _0212BC40
	bl FUN_ov128_0212b62c
	b _0212BC44
_0212BC40:
	bl FUN_ov128_0212b858
_0212BC44:
	cmp r0, #0x15
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _0212BC68 ; =0x0000FFFF
	mov r0, #0
	bl FUN_ov128_0212b5f0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212BC64: .word ov128_0212FA60
_0212BC68: .word 0x0000FFFF
	arm_func_end FUN_ov128_0212bad0

	arm_func_start FUN_ov128_0212bc6c
FUN_ov128_0212bc6c: ; 0x0212BC6C
	ldr r1, _0212BCDC ; =0x0212F9A0
	mov r2, #1
	ldr r1, [r1]
	tst r1, r2, lsl r0
	bxeq lr
	ldr r2, _0212BCE0 ; =0x0212FA60
	ldr r1, _0212BCE4 ; =0x000005D4
	ldr r2, [r2]
	mla r12, r0, r1, r2
	add r0, r12, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, r12, #0x1d00
	ldrneh r1, [r0, #0x4c]
	cmpne r1, #0
	bxeq lr
	ldrh r2, [r0, #0x48]
	ldrh r3, [r0, #0x4a]
	cmp r3, r2
	bhi _0212BCD0
	add r1, r3, #2
	cmp r2, r1
	addle r1, r2, #1
	strleh r1, [r0, #0x48]
	bxle lr
_0212BCD0:
	add r0, r12, #0x1d00
	strh r3, [r0, #0x48]
	bx lr
_0212BCDC: .word ov128_0212F9A0
_0212BCE0: .word ov128_0212FA60
_0212BCE4: .word 0x000005D4
	arm_func_end FUN_ov128_0212bc6c

	arm_func_start FUN_ov128_0212bce8
FUN_ov128_0212bce8: ; 0x0212BCE8
	cmp r1, r0
	movls r1, r0
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov128_0212bce8

	arm_func_start FUN_ov128_0212bcfc
FUN_ov128_0212bcfc: ; 0x0212BCFC
	cmp r0, #1
	blo _0212BD10
	cmp r0, #0xf
	movls r0, #1
	bxls lr
_0212BD10:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov128_0212bcfc

	arm_func_start FUN_ov128_0212bd18
FUN_ov128_0212bd18: ; 0x0212BD18
	stmfd sp!, {r3, lr}
	strh r1, [sp]
	add r2, sp, #0
	mov r1, #0xd
	bl FUN_ov128_0212abdc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov128_0212bd18

	arm_func_start FUN_ov128_0212bd30
FUN_ov128_0212bd30: ; 0x0212BD30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x60
	mov r5, #0
	movs r8, r0
	mov r6, r5
	beq _0212BD80
	bl FS_GetFilePosition
	add r4, sp, #0
	mov r7, r0
	mov r0, r8
	mov r1, r4
	mov r2, #0x60
	bl FS_ReadFile
	cmp r0, #0x60
	mov r0, r8
	mov r1, r7
	mov r2, #0
	movhs r5, r4
	bl FS_SeekFile
	b _0212BD84
_0212BD80:
	ldr r5, _0212BDB0 ; =0x02FFFE00
_0212BD84:
	cmp r5, #0
	beq _0212BDA4
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x3c]
	add r1, r1, #0x268
	add r6, r1, r0
	cmp r6, #0x10000
	movlo r6, #0x10000
_0212BDA4:
	mov r0, r6
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212BDB0: .word 0x02FFFE00
	arm_func_end FUN_ov128_0212bd30

	arm_func_start FUN_ov128_0212bdb4
FUN_ov128_0212bdb4: ; 0x0212BDB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x6c
	movs r10, r0
	mov r0, #0
	mov r9, r1
	str r2, [sp, #4]
	str r0, [sp, #0x10]
	bne _0212BDF8
	bl CARD_GetOwnRomHeader
	ldrb r0, [r0, #0x12]
	tst r0, #2
	ldreq r1, _0212C2C4 ; =0x0212F920
	ldreq r0, _0212C2C8 ; =0x0212F964
	streq r1, [r0]
	ldrne r1, _0212C2CC ; =0x0212F938
	ldrne r0, _0212C2C8 ; =0x0212F964
	strne r1, [r0]
_0212BDF8:
	ldr r0, [sp, #4]
	cmp r0, #0x164
	blo _0212C2B8
	mov r6, #0
	str r6, [sp, #0xc]
	mov r11, r6
	cmp r10, #0
	add r5, r9, #0x160
	sub r4, r0, #0x160
	beq _0212BE54
	mov r0, r10
	bl FS_GetFilePosition
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r9
	mov r2, #0x160
	bl FS_ReadFile
	cmp r0, #0x160
	ldr r7, [r9, #0x80]
	movlt r4, r6
	cmp r7, #0
	moveq r7, #0x1000000
	b _0212BEE0
_0212BE54:
	ldr r0, _0212C2D0 ; =0x02FFFE00
	add r10, sp, #0x24
	ldr r7, [r0, #0x80]
	mov r0, #1
	str r0, [sp, #0xc]
	cmp r7, #0
	mov r0, r10
	moveq r7, #0x1000000
	bl FS_InitFile
	mov r8, #3
	ldr r0, _0212C2D4 ; =0x0212F968
	mov r1, r8
	bl FS_FindArchive
	sub r1, r8, #4
	str r1, [sp]
	mov r1, r0
	mov r0, r10
	mov r2, #0
	add r3, r7, #0x88
	bl FS_OpenFileDirect
	cmp r0, #0
	addeq sp, sp, #0x6c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FS_GetFilePosition
	str r0, [sp, #8]
	ldr r0, _0212C2D0 ; =0x02FFFE00
	mov r1, r9
	mov r2, #0x160
	bl MI_CpuCopy8
	ldr r0, [r9, #0x60]
	orr r0, r0, #0x6000
	orr r0, r0, #0x400000
	str r0, [r9, #0x60]
_0212BEE0:
	cmp r4, #0x88
	blo _0212BF38
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0212BF08
	bl FUN_02011428
	mov r1, r5
	mov r2, #0x88
	bl MI_CpuCopy8
	b _0212BF2C
_0212BF08:
	ldr r1, [sp, #8]
	mov r0, r10
	add r1, r1, r7
	mov r2, #0
	bl FS_SeekFile
	mov r0, r10
	mov r1, r5
	mov r2, #0x88
	bl FS_ReadFile
_0212BF2C:
	add r5, r5, #0x88
	sub r4, r4, #0x88
	b _0212BF3C
_0212BF38:
	mov r4, #0
_0212BF3C:
	cmp r4, #0x70
	blo _0212BFB4
	mov r0, r5
	mov r6, r5
	bl FUN_ov128_0212f188
	mov r0, #3
	mov r7, #0
	str r0, [sp]
	mov r0, r6
	mov r1, r7
	mov r2, #0x160
	mov r3, r9
	add r5, r5, #0x70
	sub r4, r4, #0x70
	bl FUN_ov128_0212f19c
	ldr r8, [r10, #8]
	b _0212BF84
_0212BF80:
	add r7, r7, #1
_0212BF84:
	cmp r7, #3
	bge _0212BF98
	ldrsb r0, [r8, r7]
	cmp r0, #0
	bne _0212BF80
_0212BF98:
	mov r0, r8
	mov r2, r7
	add r1, r6, #0x10
	bl MI_CpuCopy8
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	b _0212BFB8
_0212BFB4:
	mov r4, #0
_0212BFB8:
	cmp r4, #0x10
	movlo r4, #0
	blo _0212C010
	mov r1, #0
	mov r0, r10
	str r1, [r5]
	mov r11, r5
	bl FS_GetFileImageTop
	ldr r1, [sp, #8]
	ldr r2, [r9, #0x20]
	add r1, r1, r0
	add r1, r2, r1
	mov r0, r10
	str r1, [r5, #4]
	bl FS_GetFileImageTop
	ldr r1, [sp, #8]
	ldr r2, [r9, #0x30]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r5, #8]
	add r5, r5, #0x10
	sub r4, r4, #0x10
_0212C010:
	ldr r1, [r9, #0x2c]
	ldr r0, [r9, #0x3c]
	add r0, r1, r0
	cmp r4, r0
	blo _0212C0D8
	mov r0, r10
	bl FS_GetFileImageTop
	mov r4, r0
	ldr r1, [r11, #4]
	ldr r0, [sp, #0xc]
	mov r8, r5
	cmp r0, #0
	sub r1, r1, r4
	ldr r7, [r9, #0x2c]
	beq _0212C060
	cmp r1, #0x8000
	rsblo r0, r1, #0x8000
	sublo r7, r7, r0
	addlo r8, r5, r0
	movlo r1, #0x8000
_0212C060:
	mov r0, r10
	mov r2, #0
	bl FS_SeekFile
	mov r1, r8
	mov r2, r7
	mov r0, r10
	bl FS_ReadFile
	mov r8, #3
	str r8, [sp]
	ldr r1, [r11, #4]
	ldr r2, [r9, #0x2c]
	mov r0, r6
	mov r3, r5
	bl FUN_ov128_0212f19c
	ldr r1, [r11, #8]
	mov r2, #0
	ldr r7, [r9, #0x2c]
	mov r0, r10
	sub r1, r1, r4
	bl FS_SeekFile
	ldr r2, [r9, #0x3c]
	mov r0, r10
	add r1, r5, r7
	bl FS_ReadFile
	str r8, [sp]
	add r3, r5, r7
	ldr r1, [r11, #8]
	mov r0, r6
	ldr r2, [r9, #0x3c]
	b _0212C1D0
_0212C0D8:
	cmp r4, #0xcc00
	blo _0212C1DC
	mov r0, r10
	bl FS_GetFileImageTop
	ldr r8, [r11, #4]
	mov r4, r0
	ldr r0, [sp, #0xc]
	mov r11, r5
	cmp r0, #0
	sub r1, r8, r4
	mov r7, #0x4400
	beq _0212C11C
	cmp r1, #0x8000
	rsblo r0, r1, #0x8000
	sublo r7, r7, r0
	addlo r11, r5, r0
	movlo r1, #0x8000
_0212C11C:
	mov r0, r10
	mov r2, #0
	bl FS_SeekFile
	mov r1, r11
	mov r2, r7
	mov r0, r10
	bl FS_ReadFile
	mov r0, #3
	mov r11, #0x4400
	str r0, [sp]
	mov r0, r6
	mov r1, r8
	mov r2, r11
	mov r3, r5
	bl FUN_ov128_0212f19c
	add r1, r8, #0x4400
	mov r0, r10
	sub r1, r1, r4
	mov r2, #0
	bl FS_SeekFile
	mov r0, r10
	add r1, r5, #0x4400
	mov r2, r11
	bl FS_ReadFile
	mov r7, #2
	mov r0, r6
	add r1, r8, #0x4400
	mov r2, r11
	add r3, r5, #0x4400
	str r7, [sp]
	bl FUN_ov128_0212f19c
	add r1, r8, #0x8800
	mov r2, #0
	mov r0, r10
	sub r1, r1, r4
	bl FS_SeekFile
	mov r0, r10
	add r1, r5, #0x8800
	mov r2, r11
	bl FS_ReadFile
	str r7, [sp]
	add r1, r8, #0x8800
	mov r2, r11
	add r3, r5, #0x8800
	mov r0, r6
_0212C1D0:
	bl FUN_ov128_0212f19c
	mov r0, #1
	str r0, [sp, #0x10]
_0212C1DC:
	ldr r1, [sp, #8]
	mov r0, r10
	mov r2, #0
	bl FS_SeekFile
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0212C2A0
	add r0, sp, #0x24
	bl FS_CloseFile
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0212C2A0
	ldr r2, [r9, #0x20]
	ldr r0, _0212C2C8 ; =0x0212F964
	str r2, [sp, #0x14]
	ldr r1, [r9, #0x28]
	add r4, sp, #0x14
	sub r1, r1, r2
	str r1, [sp, #0x18]
	ldr r1, [r6, #0x48]
	ldr r5, [r0]
	sub r1, r1, r2
	str r1, [sp, #0x1c]
	ldr r1, [sp, #4]
	mov r0, r4
	str r1, [sp, #0x20]
	mov r1, #0x4000
	mov r2, #0x8000
	mov r3, #1
	bl FUN_ov128_0212c2e0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0212C288
	mov r7, #0
_0212C264:
	ldmia r5, {r1, r2}
	mov r0, r4
	mov r3, r7
	add r2, r1, r2
	bl FUN_ov128_0212c2e0
	add r5, r5, #8
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0212C264
_0212C288:
	ldr r1, [r9, #0x28]
	ldr r2, _0212C2D8 ; =_start_AutoloadDoneCallback
	ldr r3, [r6, #0x48]
	ldr r0, _0212C2DC ; =0xE12FFF1E
	sub r1, r2, r1
	str r0, [r3, r1]
_0212C2A0:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0212C2B8
	ldr r1, [sp, #4]
	mov r0, r9
	bl DC_FlushRange
_0212C2B8:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C2C4: .word ov129_0212F920
_0212C2C8: .word ov128_0212F964
_0212C2CC: .word 0x0212F938
_0212C2D0: .word 0x02FFFE00
_0212C2D4: .word ov128_0212F968
_0212C2D8: .word _start_AutoloadDoneCallback
	arm_func_end FUN_ov128_0212bdb4
_0212C2DC: .word 0xE12FFF1E

	arm_func_start FUN_ov128_0212c2e0
FUN_ov128_0212c2e0: ; 0x0212C2E0
	stmfd sp!, {r3, lr}
	mov lr, r1
	ldr r12, [r0]
	ldr r1, [r0, #0xc]
	cmp lr, #0x4000
	movlo lr, #0x4000
	cmp r2, #0x8000
	movhi r2, #0x8000
	cmp lr, r12
	add r1, r12, r1
	movlo lr, r12
	cmp r2, r1
	movhi r2, r1
	cmp lr, r2
	ldmhsfd sp!, {r3, pc}
	cmp r3, #0
	beq _0212C33C
	ldr r0, [r0, #8]
	sub r2, r2, lr
	add r0, r0, lr
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_0212C33C:
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r3, lr
	add r1, r1, lr
	sub r2, r2, lr
	bl MI_CpuCopy8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov128_0212c2e0

	arm_func_start FUN_ov128_0212c358
FUN_ov128_0212c358: ; 0x0212C358
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, r0
	mov r6, r1
	mov r10, #0xff
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov128_0212f130
	cmp r0, #0
	bne _0212C38C
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C38C:
	ldr r0, _0212C5C4 ; =0x0212FA60
	ldr r0, [r0]
	add r1, r0, #0x1000
	ldrb r1, [r1, #0x524]
	add r1, r1, #1
	cmp r1, #0x10
	ble _0212C3B8
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C3B8:
	ldr r1, _0212C5C8 ; =0x000005D4
	mov r5, #0
_0212C3C0:
	mla r2, r5, r1, r0
	add r2, r2, #0x1000
	ldr r3, [r2, #0xd40]
	cmp r3, r7
	bne _0212C3E4
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C3E4:
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	moveq r10, r5
	beq _0212C404
	add r2, r5, #1
	and r5, r2, #0xff
	cmp r5, #0x10
	blo _0212C3C0
_0212C404:
	cmp r5, #0x10
	bne _0212C41C
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C41C:
	ldr r1, _0212C5C8 ; =0x000005D4
	ldr r8, _0212C5C4 ; =0x0212FA60
	mul r5, r10, r1
	add r0, r0, r5
	add r0, r0, #0x1000
	str r7, [r0, #0xd40]
	ldr r0, [r8]
	mov r1, r6
	add r0, r0, #0x388
	add r0, r0, #0x1400
	add r9, r0, r5
	mov r0, r9
	bl FUN_ov128_0212c5d0
	add r0, r7, #0x1c
	add r1, r9, #0xc4
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r8]
	mov r1, r9
	add r0, r0, #0x12c
	add r0, r0, #0x1c00
	add r0, r0, r5
	bl FUN_ov128_0212c7a4
	cmp r0, #0
	bne _0212C490
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C490:
	ldr r2, [r8]
	mov r1, r7
	add r0, r2, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r5
	add r2, r2, #0x1300
	bl FUN_ov128_0212cb20
	ldr r0, [r8]
	add r0, r0, r5
	add r0, r0, #0x1000
	strb r10, [r0, #0xd21]
	ldr r0, [r8]
	add r0, r0, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r5
	bl FUN_ov128_0212cd50
	ldr r2, _0212C5CC ; =0x0212F9A4
	ldr r1, [r8]
	ldrb r0, [r2]
	add r1, r1, r5
	add r1, r1, #0x1000
	strb r0, [r1, #0xd1f]
	ldr r1, [r8]
	mov r3, #1
	add r1, r1, r5
	add r1, r1, #0x1d00
	strh r3, [r1, #0x4e]
	ldr r1, [r8]
	add r7, r6, #0x1e8
	add r1, r1, r5
	add r1, r1, #0x1000
	str r6, [r1, #0xd44]
	ldr r1, [r8]
	add r3, r6, #0x258
	add r1, r1, r5
	add r1, r1, #0x1000
	str r7, [r1, #0xd54]
	ldr r1, [r8]
	add r6, r0, #1
	add r0, r1, r5
	add r0, r0, #0x1000
	str r3, [r0, #0xd58]
	ldr r0, [r8]
	strb r6, [r2]
	add r0, r0, r5
	add r0, r0, #0x1000
	ldr r0, [r0, #0xd54]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _0212C588
	bl FUN_ov128_0212f42c
	cmp r0, #0
	bne _0212C588
	ldr r0, [r8]
	add r0, r0, #0xce0
	add r0, r0, #0x7000
	bl FUN_ov128_0212f448
	ldr r0, [r8]
	mov r1, #0x800
	add r0, r0, #0x4e0
	add r0, r0, #0x7000
	bl FUN_ov128_0212f3ac
_0212C588:
	ldr r2, _0212C5C4 ; =0x0212FA60
	mov r6, #1
	ldr r1, [r2]
	mov r0, r4
	add r1, r1, r5
	add r1, r1, #0x1000
	strb r6, [r1, #0xd52]
	ldr r1, [r2]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x524]
	add r2, r2, #1
	strb r2, [r1, #0x524]
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C5C4: .word ov128_0212FA60
_0212C5C8: .word 0x000005D4
_0212C5CC: .word ov128_0212F9A4
	arm_func_end FUN_ov128_0212c358

	arm_func_start FUN_ov128_0212c5d0
FUN_ov128_0212c5d0: ; 0x0212C5D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r1
	mov r5, r0
	mov r2, #0x22c0000
	ldr r1, [r4, #0x24]
	str r2, [sp]
	ldr r0, [r4, #0x34]
	ldr r7, _0212C640 ; =0x0212F914
	str r1, [r5]
	str r0, [r5, #4]
	add r8, r5, #0xc
	mov r9, #0
	add r6, sp, #0
_0212C604:
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov128_0212c644
	add r9, r9, #1
	cmp r9, #3
	add r8, r8, #0x10
	add r7, r7, #4
	blt _0212C604
	add r0, r4, #0x160
	add r1, r5, #0x3c
	mov r2, #0x88
	bl MI_CpuCopy8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212C640: .word ov129_0212F914
	arm_func_end FUN_ov128_0212c5d0

	arm_func_start FUN_ov128_0212c644
FUN_ov128_0212c644: ; 0x0212C644
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r1]
	mov r7, r0
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	beq _0212C674
	cmp r1, #1
	beq _0212C6BC
	cmp r1, #2
	beq _0212C778
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212C674:
	ldr r2, [r7, #0x28]
	cmp r2, #0x2000000
	blo _0212C6B4
	cmp r2, #0x22c0000
	bhs _0212C6B4
	ldr r1, [r7, #0x2c]
	add r0, r2, r1
	cmp r0, #0x22c0000
	bhi _0212C6B4
	ldr r0, [r6, #0xc]
	str r1, [r6, #8]
	bic r0, r0, #1
	str r2, [r6, #4]
	str r2, [r6]
	str r0, [r6, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212C6B4:
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212C6BC:
	ldr r12, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	mov r2, #0
	mov r4, r2
	cmp r12, #0x2000000
	add r3, r12, r1
	blo _0212C704
	ldr r0, _0212C798 ; =0x023FE800
	cmp r12, r0
	bhs _0212C704
	cmp r3, #0x2300000
	bls _0212C730
	cmp r3, r0
	bhs _0212C700
	cmp r1, #0x40000
	movls r4, #1
	bls _0212C730
_0212C700:
	b _0212C72C
_0212C704:
	ldr r1, _0212C79C ; =0x037F8000
	cmp r12, r1
	blo _0212C72C
	add r0, r1, #0x17000
	cmp r12, r0
	bhs _0212C72C
	cmp r3, r0
	movls r4, #1
	movhi r2, #1
	b _0212C730
_0212C72C:
	mov r2, #1
_0212C730:
	cmp r2, #1
	bne _0212C73C
	bl OS_Terminate
_0212C73C:
	ldr r1, [r7, #0x3c]
	ldr r0, [r7, #0x38]
	cmp r4, #0
	stmib r6, {r0, r1}
	streq r0, [r6]
	ldrne r0, [r5]
	strne r0, [r6]
	ldrne r0, [r5]
	addne r0, r0, r1
	strne r0, [r5]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212C778:
	ldr r0, [r6, #0xc]
	ldr r1, _0212C7A0 ; =0x027FFE00
	mov r2, #0x160
	stmib r6, {r1, r2}
	bic r0, r0, #1
	str r1, [r6]
	str r0, [r6, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212C798: .word 0x023FE800
_0212C79C: .word 0x037F8000
_0212C7A0: .word 0x027FFE00
	arm_func_end FUN_ov128_0212c644

	arm_func_start FUN_ov128_0212c7a4
FUN_ov128_0212c7a4: ; 0x0212C7A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	add r6, r10, #0xc
	cmp r1, #0
	mov r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, r0
_0212C7C0:
	str r0, [r10, r2, lsl #2]
	add r3, r1, r2, lsl #4
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	and r2, r2, #0xff
	cmp r2, #3
	add r0, r0, r3
	blo _0212C7C0
	mov r9, #0
	ldr r4, _0212C86C ; =0x0212FA60
	strh r9, [r6]
	add r5, r1, #0xc
_0212C7F0:
	ldr r0, [r4]
	add r7, r5, r9, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0x318]
	ldr r8, [r7, #8]
	add r0, r8, r1
	sub r0, r0, #1
	bl _u32_div_f
	mov r1, r9, lsl #1
	ldrh r3, [r6, r1]
	mov r2, r0, lsl #0x10
	ldr r1, [r7, #4]
	add r2, r3, r2, lsr #16
	mov r3, r2, lsl #0x10
	mov r0, r9
	mov r2, r8
	mov r7, r3, lsr #0x10
	bl FUN_ov128_0212c9d0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #2
	addlo r0, r6, r9, lsl #1
	strloh r7, [r0, #2]
	add r0, r9, #1
	and r9, r0, #0xff
	strhsh r7, [r10, #0x12]
	cmp r9, #3
	blo _0212C7F0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212C86C: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212c7a4

	arm_func_start FUN_ov128_0212c870
FUN_ov128_0212c870: ; 0x0212C870
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #0x12]
	cmp r2, r4
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	mov r12, #2
_0212C888:
	add r4, r1, r12, lsl #1
	ldrh r4, [r4, #0xc]
	cmp r2, r4
	bhs _0212C8A8
	sub r4, r12, #1
	mov r12, r4, lsl #0x18
	movs r12, r12, asr #0x18
	bpl _0212C888
_0212C8A8:
	cmp r12, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r4, _0212C920 ; =0x0212FA60
	add r5, r1, r12, lsl #1
	ldr lr, [r4]
	ldrh r5, [r5, #0xc]
	add lr, lr, #0x1000
	ldr lr, [lr, #0x318]
	sub r5, r2, r5
	mul r2, r5, lr
	add r3, r3, #0xc
	add r5, r3, r12, lsl #4
	ldr r3, [r5, #8]
	sub lr, r3, r2
	str lr, [r0, #4]
	ldr r3, [r4]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x318]
	cmp lr, r3
	strhi r3, [r0, #4]
	ldr r1, [r1, r12, lsl #2]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r5]
	add r1, r2, r1
	str r1, [r0]
	strb r12, [r0, #0xc]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0212C920: .word ov128_0212FA60
	arm_func_end FUN_ov128_0212c870

	arm_func_start FUN_ov128_0212c924
FUN_ov128_0212c924: ; 0x0212C924
	ldr r3, _0212C9C8 ; =0x0212F914
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq _0212C968
	cmp r0, #1
	beq _0212C984
	cmp r0, #2
	bne _0212C9B8
	ldr r0, _0212C9CC ; =0x027FFE00
	cmp r1, r0
	blo _0212C9C0
	add r1, r1, r2
	add r0, r0, #0x160
	cmp r1, r0
	bhi _0212C9C0
	mov r0, #1
	bx lr
_0212C968:
	cmp r1, #0x2000000
	blo _0212C9C0
	add r0, r1, r2
	cmp r0, #0x22c0000
	bhi _0212C9C0
	mov r0, #1
	bx lr
_0212C984:
	cmp r1, #0x22c0000
	blo _0212C99C
	add r0, r1, r2
	cmp r0, #0x2300000
	movls r0, #1
	bxls lr
_0212C99C:
	cmp r1, #0x2000000
	blo _0212C9C0
	add r0, r1, r2
	cmp r0, #0x2300000
	bhi _0212C9C0
	mov r0, #1
	bx lr
_0212C9B8:
	mov r0, #0
	bx lr
_0212C9C0:
	mov r0, #0
	bx lr
_0212C9C8: .word ov129_0212F914
_0212C9CC: .word 0x027FFE00
	arm_func_end FUN_ov128_0212c924

	arm_func_start FUN_ov128_0212c9d0
FUN_ov128_0212c9d0: ; 0x0212C9D0
	stmfd sp!, {r3, lr}
	ldr r3, _0212CA90 ; =0x0212F914
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	beq _0212C9F4
	cmp r3, #1
	beq _0212C9FC
	cmp r3, #2
	bne _0212CA80
_0212C9F4:
	bl FUN_ov128_0212c924
	ldmfd sp!, {r3, pc}
_0212C9FC:
	cmp r1, #0x2000000
	blo _0212CA54
	ldr r0, _0212CA94 ; =0x023FE800
	cmp r1, r0
	bhs _0212CA54
	cmp r1, #0x2300000
	add r1, r1, r2
	bhs _0212CA28
	cmp r1, #0x2300000
	movhi r0, #0
	ldmhifd sp!, {r3, pc}
_0212CA28:
	cmp r1, #0x2300000
	movls r0, #1
	ldmlsfd sp!, {r3, pc}
	ldr r0, _0212CA94 ; =0x023FE800
	cmp r1, r0
	bhs _0212CA4C
	cmp r2, #0x40000
	movls r0, #1
	ldmlsfd sp!, {r3, pc}
_0212CA4C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0212CA54:
	ldr r3, _0212CA98 ; =0x037F8000
	cmp r1, r3
	blo _0212CA88
	add r0, r3, #0x17000
	cmp r1, r0
	bhs _0212CA88
	add r1, r1, r2
	cmp r1, r0
	movls r0, #1
	movhi r0, #0
	ldmfd sp!, {r3, pc}
_0212CA80:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0212CA88:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0212CA90: .word ov129_0212F914
_0212CA94: .word 0x023FE800
_0212CA98: .word 0x037F8000
	arm_func_end FUN_ov128_0212c9d0

	arm_func_start FUN_ov128_0212ca9c
FUN_ov128_0212ca9c: ; 0x0212CA9C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	add r2, r6, #0x1f
	mov r5, r1
	mov r0, r4
	bic r1, r2, #0x1f
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov128_0212efc0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov128_0212ca9c

	arm_func_start FUN_ov128_0212cad4
FUN_ov128_0212cad4: ; 0x0212CAD4
	mov r3, r1, asr #1
	cmp r3, #0
	mov r2, #0
	ble _0212CAF8
_0212CAE4:
	ldrh r1, [r0], #2
	sub r3, r3, #1
	cmp r3, #0
	add r2, r2, r1
	bgt _0212CAE4
_0212CAF8:
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	add r1, r0, r2, lsr #16
	ldr r0, _0212CB1C ; =0x0000FFFF
	add r1, r1, r1, lsr #16
	eor r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0212CB1C: .word 0x0000FFFF
	arm_func_end FUN_ov128_0212cad4

	arm_func_start FUN_ov128_0212cb20
FUN_ov128_0212cb20: ; 0x0212CB20
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r7, #0
	mov r5, r1
	mov r4, r2
	mov r0, r7
	mov r1, r6
	mov r2, #0x4c0
	bl MIi_CpuClear16
	mov r8, #1
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r2, r8
	strb r7, [r6, #0x4b2]
	bl FUN_ov128_0212cc10
	cmp r0, #0
	movne r8, r7
	mov r7, #0
	ldr r0, [r5, #0x10]
	mov r1, r6
	mov r2, r7
	bl FUN_ov128_0212cc10
	cmp r0, #0
	moveq r7, #1
	orrs r0, r8, r7
	beq _0212CBA0
	mov r3, #1
	mov r1, r6
	mov r0, #0
	mov r2, #0x220
	strb r3, [r6, #0x4b2]
	bl MIi_CpuClearFast
_0212CBA0:
	ldr r0, [r5, #0x14]
	cmp r4, #0
	str r0, [r6, #0x4b8]
	beq _0212CBC0
	mov r0, r4
	add r1, r6, #0x220
	mov r2, #0x16
	bl MIi_CpuCopy16
_0212CBC0:
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #4]
	strb r1, [r6, #0x236]
	bl FUN_ov128_0212cd28
	mov r2, r0, lsl #0x11
	ldr r0, [r5, #4]
	add r1, r6, #0x238
	mov r2, r2, lsr #0x10
	bl MIi_CpuCopy16
	ldr r0, [r5, #8]
	add r1, r6, #0x298
	mov r2, #0xc0
	bl MIi_CpuCopy16
	mov r2, #1
	add r0, r6, #0x300
	add r1, r6, #0x400
	strb r2, [r6, #0x358]
	strh r2, [r0, #0x5a]
	strh r2, [r1, #0xb0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov128_0212cb20

	arm_func_start FUN_ov128_0212cc10
FUN_ov128_0212cc10: ; 0x0212CC10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r8, r0
	mov r7, r1
	mov r6, #0x200
	cmp r2, #0
	moveq r6, #0x20
	cmp r2, #0
	addne r7, r7, #0x20
	cmp r8, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, sp, #0
	mov r0, r5
	bl FS_InitFile
	mov r4, #1
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl FS_OpenFileEx
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl FS_GetFileLength
	cmp r6, r0
	mov r0, r5
	beq _0212CC98
	bl FS_CloseFile
	add sp, sp, #0x48
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212CC98:
	mov r1, r7
	mov r2, r6
	bl FS_ReadFile
	mov r0, r5
	bl FS_CloseFile
	mov r0, r4
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov128_0212cc10

	arm_func_start FUN_ov128_0212ccb8
FUN_ov128_0212ccb8: ; 0x0212CCB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	add r4, r7, #0x5e
	mov r0, r1
	add r1, r4, #0x300
	ldr r2, _0212CD24 ; =0x0000014A
	mov r5, r3
	mov r4, #1
	bl MIi_CpuCopy16
	mov r2, #0
	mov r1, #2
_0212CCE8:
	tst r6, r1, lsl r2
	addne r0, r4, #1
	add r2, r2, #1
	andne r4, r0, #0xff
	cmp r2, #0xf
	blt _0212CCE8
	ldrb r1, [r7, #0x4b4]
	add r0, r7, #0x300
	orr r2, r6, #1
	add r1, r1, #1
	strb r4, [r7, #0x358]
	strh r2, [r0, #0x5a]
	strh r5, [r0, #0x5c]
	strb r1, [r7, #0x4b4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212CD24: .word 0x0000014A
	arm_func_end FUN_ov128_0212ccb8

	arm_func_start FUN_ov128_0212cd28
FUN_ov128_0212cd28: ; 0x0212CD28
	ldrh r1, [r0], #2
	mov r2, #0
	cmp r1, #0
	beq _0212CD48
_0212CD38:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _0212CD38
_0212CD48:
	mov r0, r2
	bx lr
	arm_func_end FUN_ov128_0212cd28

	arm_func_start FUN_ov128_0212cd50
FUN_ov128_0212cd50: ; 0x0212CD50
	ldr r1, _0212CD90 ; =0x0212F9A8
	ldr r2, [r1, #0x18]
	cmp r2, #0
	streq r0, [r1, #0x18]
	beq _0212CD84
	ldr r1, [r2, #0x4bc]
	cmp r1, #0
	beq _0212CD80
_0212CD70:
	mov r2, r1
	ldr r1, [r1, #0x4bc]
	cmp r1, #0
	bne _0212CD70
_0212CD80:
	str r0, [r2, #0x4bc]
_0212CD84:
	mov r1, #0
	str r1, [r0, #0x4bc]
	bx lr
_0212CD90: .word ov128_0212F9A8
	arm_func_end FUN_ov128_0212cd50

	arm_func_start FUN_ov128_0212cd94
FUN_ov128_0212cd94: ; 0x0212CD94
	ldr r0, _0212CDB8 ; =0x0212F9A8
	mov r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	mov r1, #1
	strb r1, [r0, #0x24]
	ldr r12, _0212CDBC ; =FUN_ov128_0212cdc0
	str r2, [r0, #0x14]
	bx r12
_0212CDB8: .word ov128_0212F9A8
_0212CDBC: .word FUN_ov128_0212cdc0
	arm_func_end FUN_ov128_0212cd94

	arm_func_start FUN_ov128_0212cdc0
FUN_ov128_0212cdc0: ; 0x0212CDC0
	ldr r0, _0212CDE0 ; =0x0212F9A8
	mov r1, #0
	strb r1, [r0, #0x25]
	strb r1, [r0, #0x26]
	strb r1, [r0, #0x27]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	bx lr
_0212CDE0: .word ov128_0212F9A8
	arm_func_end FUN_ov128_0212cdc0

	arm_func_start FUN_ov128_0212cde4
FUN_ov128_0212cde4: ; 0x0212CDE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0212CE6C ; =0x0212F9A8
	mov r7, r0
	mov r6, r1
	mov r5, r2
_0212CDF8:
	ldrb r0, [r4, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0212CDF8
_0212CE08: ; jump table
	b _0212CE24 ; case 0
	b _0212CE24 ; case 1
	b _0212CE34 ; case 2
	b _0212CE3C ; case 3
	b _0212CE50 ; case 4
	b _0212CE58 ; case 5
	b _0212CDF8 ; case 6
_0212CE24:
	bl FUN_ov128_0212ce70
	cmp r0, #0
	bne _0212CDF8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212CE34:
	bl FUN_ov128_0212cf10
	b _0212CDF8
_0212CE3C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov128_0212cf5c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212CE50:
	bl FUN_ov128_0212d0c0
	b _0212CDF8
_0212CE58:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov128_0212d0f0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212CE6C: .word ov128_0212F9A8
	arm_func_end FUN_ov128_0212cde4

	arm_func_start FUN_ov128_0212ce70
FUN_ov128_0212ce70: ; 0x0212CE70
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r0, _0212CF08 ; =0x0212F9A8
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0212CEC4
	bl FUN_ov128_0212f0a8
	mov r5, r0
	bl FUN_ov128_0212f0bc
	mov r4, #0
	str r0, [sp]
	mov r12, #8
	ldr r1, _0212CF0C ; =0x0212F9E0
	mov r0, r4
	mov r3, r5
	mov r2, #0x70
	str r12, [sp, #4]
	bl FUN_02014a9c
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0212CEC4:
	ldr r0, [r0, #0x1c]
	ldr r4, _0212CF08 ; =0x0212F9A8
	cmp r0, #0
	ldrne r0, [r0, #0x4bc]
	cmpne r0, #0
	ldreq r0, _0212CF08 ; =0x0212F9A8
	ldreq r0, [r0, #0x18]
	str r0, [r4, #0x1c]
	bl FUN_ov128_0212cdc0
	ldr r0, [r4, #0x1c]
	mov r1, #2
	ldrb r2, [r0, #0x4b4]
	mov r0, #1
	strb r2, [r4, #0x26]
	strb r1, [r4, #0x24]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0212CF08: .word ov128_0212F9A8
_0212CF0C: .word ov128_0212F9E0
	arm_func_end FUN_ov128_0212ce70

	arm_func_start FUN_ov128_0212cf10
FUN_ov128_0212cf10: ; 0x0212CF10
	ldr r0, _0212CF58 ; =0x0212F9A8
	ldrb r1, [r0, #0x24]
	cmp r1, #2
	bxne lr
	ldr r2, [r0, #0x1c]
	ldrb r1, [r2, #0x4b2]
	cmp r1, #0
	moveq r1, #9
	streqb r1, [r0, #0x28]
	streq r2, [r0, #0x20]
	movne r1, #4
	strneb r1, [r0, #0x28]
	addne r1, r2, #0x220
	strne r1, [r0, #0x20]
	ldr r0, _0212CF58 ; =0x0212F9A8
	mov r1, #3
	strb r1, [r0, #0x24]
	bx lr
_0212CF58: .word ov128_0212F9A8
	arm_func_end FUN_ov128_0212cf10

	arm_func_start FUN_ov128_0212cf5c
FUN_ov128_0212cf5c: ; 0x0212CF5C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r3, _0212D0B0 ; =0x0212F9A8
	mov r6, r0
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #0x20]
	add r7, r4, #0x358
	add r3, r0, #0x62
	cmp r3, r7
	mov r5, r1
	ldrls r0, _0212D0B4 ; =0x0212F9E0
	movls r1, #0x62
	mov r4, r2
	strlsb r1, [r0, #0xc]
	bls _0212CFBC
	sub r7, r7, r0
	and r1, r7, #0xff
	ldr r0, _0212D0B8 ; =0x0212F9EE
	ldr r3, _0212D0B4 ; =0x0212F9E0
	rsb r2, r1, #0x62
	add r1, r0, r1
	mov r0, #0
	strb r7, [r3, #0xc]
	bl MIi_CpuClear16
_0212CFBC:
	ldr r8, _0212D0B4 ; =0x0212F9E0
	ldr r7, _0212D0B0 ; =0x0212F9A8
	ldrb r2, [r8, #0xc]
	ldr r0, [r7, #0x20]
	ldr r1, _0212D0B8 ; =0x0212F9EE
	bl MIi_CpuCopy16
	ldrb r0, [r7, #0x27]
	ldr r2, [r7, #0x1c]
	mov r3, #0
	strb r0, [r8, #0xa]
	ldrb r12, [r7, #0x28]
	ldr r0, _0212D0BC ; =0x0212F9E8
	mov r1, #0x68
	strb r12, [r8, #0xb]
	ldrb lr, [r8, #4]
	ldrb r12, [r2, #0x4b2]
	bic lr, lr, #3
	and r12, r12, #3
	orr r12, lr, r12
	strb r12, [r8, #4]
	ldrb lr, [r2, #0x4b3]
	and r12, r12, #0xff
	bic r12, r12, #0xfc
	strb lr, [r8, #5]
	ldrb lr, [r7, #0x26]
	strb lr, [r8, #6]
	ldr lr, [r2, #0x4b8]
	str lr, [r8]
	ldrb r2, [r2, #0x4b5]
	mov r2, r2, lsl #0x1a
	orr r2, r12, r2, lsr #24
	strb r2, [r8, #4]
	ldrb r12, [r7, #0x29]
	add r2, r12, #1
	strb r2, [r7, #0x29]
	strb r12, [r8, #7]
	strh r3, [r8, #8]
	bl FUN_ov128_0212cad4
	strh r0, [r8, #8]
	ldrb r0, [r7, #0x27]
	mov r3, r6
	mov r2, #0x70
	add r1, r0, #1
	strb r1, [r7, #0x27]
	ldrb r0, [r7, #0x28]
	and r1, r1, #0xff
	cmp r1, r0
	ldrlo r0, [r7, #0x20]
	ldr r1, _0212D0B4 ; =0x0212F9E0
	addlo r0, r0, #0x62
	strlo r0, [r7, #0x20]
	movhs r0, #4
	strhsb r0, [r7, #0x24]
	orr r0, r4, #3
	and r4, r0, #0xff
	str r5, [sp]
	mov r0, #0
	str r4, [sp, #4]
	bl FUN_02014a9c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212D0B0: .word ov128_0212F9A8
_0212D0B4: .word ov128_0212F9E0
_0212D0B8: .word ov128_0212F9EE
_0212D0BC: .word ov128_0212F9E8
	arm_func_end FUN_ov128_0212cf5c

	arm_func_start FUN_ov128_0212d0c0
FUN_ov128_0212d0c0: ; 0x0212D0C0
	ldr r1, _0212D0EC ; =0x0212F9A8
	mov r3, #1
	ldr r0, [r1, #0x1c]
	mov r2, #5
	add r0, r0, #0x400
	strh r3, [r0, #0xb0]
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0, #0x4b4]
	strb r0, [r1, #0x26]
	strb r2, [r1, #0x24]
	bx lr
_0212D0EC: .word ov128_0212F9A8
	arm_func_end FUN_ov128_0212d0c0

	arm_func_start FUN_ov128_0212d0f0
FUN_ov128_0212d0f0: ; 0x0212D0F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r7, _0212D340 ; =0x0212F9A8
	str r0, [sp, #8]
	ldr r0, [r7, #0x1c]
	ldrb r3, [r7, #0x26]
	ldrb r0, [r0, #0x4b4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r3, r0
	beq _0212D120
	bl FUN_ov128_0212d0c0
_0212D120:
	ldr r2, _0212D344 ; =0x0212F9E0
	ldrb r0, [r2, #4]
	bic r0, r0, #3
	orr r1, r0, #2
	strb r1, [r2, #4]
	ldr r0, [r7, #0x1c]
	and r1, r1, #0xff
	ldrb r3, [r0, #0x4b3]
	bic r4, r1, #0xfc
	add r1, r0, #0x300
	strb r3, [r2, #5]
	ldrb r3, [r7, #0x26]
	strb r3, [r2, #6]
	ldr r3, [r0, #0x4b8]
	str r3, [r2]
	ldrb r3, [r0, #0x4b5]
	mov r3, r3, lsl #0x1a
	orr r3, r4, r3, lsr #24
	strb r3, [r2, #4]
	ldrb r4, [r7, #0x29]
	add r3, r4, #1
	strb r3, [r7, #0x29]
	strb r4, [r2, #7]
	ldrb r3, [r0, #0x358]
	strb r3, [r2, #0xa]
	ldrh r3, [r1, #0x5a]
	strh r3, [r2, #0xc]
	ldrh r1, [r1, #0x5c]
	strh r1, [r2, #0xe]
	ldr r1, [r7, #0x10]
	cmp r1, #0
	bne _0212D1B4
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _0212D1B4
	ldr r0, [r0, #0x4b8]
	blx r1
_0212D1B4:
	mov r9, #0
	ldr r2, [r7, #0x1c]
	ldr r0, _0212D348 ; =0x0212FA48
	b _0212D1D4
_0212D1C4:
	add r1, r2, r9
	ldrb r1, [r1, #0x4a8]
	strb r1, [r0, r9]
	add r9, r9, #1
_0212D1D4:
	cmp r9, #8
	blt _0212D1C4
	ldr r11, _0212D34C ; =0x0212F9F0
	mov r10, #0
	mov r0, r10
	mov r1, r11
	mov r2, #0x58
	bl MIi_CpuClear16
	ldr r1, [r7, #0x1c]
	mov r4, #0x16
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r2, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	mov r9, r10
	mov r8, #2
	eor r0, r2, r0
	mov r6, r0, lsl #0x10
	mov r5, r4
	b _0212D278
_0212D224:
	mov r0, r8, lsl r9
	tst r0, r6, lsr #16
	beq _0212D274
	ldr r0, [r7, #0x1c]
	mla r1, r10, r5, r11
	add r0, r0, #0x5e
	add r0, r0, #0x300
	mla r0, r9, r4, r0
	mov r2, #0x16
	bl MIi_CpuCopy16
	ldr r1, [r7, #0x1c]
	mov r0, r8, lsl r9
	add r1, r1, #0x400
	add r10, r10, #1
	ldrh r2, [r1, #0xb0]
	mov r0, r0, lsl #0x10
	cmp r10, #4
	orr r0, r2, r0, lsr #16
	strh r0, [r1, #0xb0]
	beq _0212D280
_0212D274:
	add r9, r9, #1
_0212D278:
	cmp r9, #0xf
	blt _0212D224
_0212D280:
	cmp r10, #4
	ldr r4, _0212D340 ; =0x0212F9A8
	bhs _0212D2A4
	mov r0, #0x16
	mul r1, r10, r0
	ldr r2, _0212D34C ; =0x0212F9F0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf0
	strb r0, [r2, r1]
_0212D2A4:
	ldr r5, _0212D344 ; =0x0212F9E0
	mov r1, #0
	strh r1, [r5, #8]
	ldr r0, _0212D350 ; =0x0212F9E8
	mov r1, #0x68
	bl FUN_ov128_0212cad4
	strh r0, [r5, #8]
	ldr r1, [r4, #0x1c]
	ldr r3, [sp, #8]
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r2, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	ldr r1, _0212D344 ; =0x0212F9E0
	cmp r2, r0
	moveq r0, #1
	streqb r0, [r4, #0x24]
	ldr r0, [sp, #0x10]
	orr r2, r0, #3
	ldr r0, [sp, #0xc]
	and r5, r2, #0xff
	str r0, [sp]
	mov r0, #0
	mov r2, #0x70
	str r5, [sp, #4]
	bl FUN_02014a9c
	ldr r0, [r4, #0x10]
	cmp r0, #1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0x14]
	cmp r1, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0x4b8]
	blx r1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212D340: .word ov128_0212F9A8
_0212D344: .word ov128_0212F9E0
_0212D348: .word ov128_0212FA48
_0212D34C: .word ov128_0212F9F0
_0212D350: .word ov128_0212F9E8
	arm_func_end FUN_ov128_0212d0f0

	arm_func_start FUN_ov128_0212d354
FUN_ov128_0212d354: ; 0x0212D354
	ldrh r1, [r0, #0x40]
	cmp r1, #1
	bne _0212D36C
	ldrb r0, [r0, #0x4b]
	tst r0, #2
	bne _0212D374
_0212D36C:
	mov r0, #0
	bx lr
_0212D374:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov128_0212d354

	arm_func_start FUN_ov128_0212d37c
FUN_ov128_0212d37c: ; 0x0212D37C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02012bc0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r12, [r4, #6]
	mov r3, #0
	mov r2, #1
	mov lr, r12
_0212D3A4:
	tst r0, lr
	cmpne r12, lr
	strneh lr, [r4, #6]
	bne _0212D3DC
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	cmp lr, #0
	mov r3, r1, lsr #0x10
	moveq r1, r2
	movne r1, lr, lsl #1
	mov r1, r1, lsl #0x10
	cmp r3, #0x10
	mov lr, r1, lsr #0x10
	blo _0212D3A4
_0212D3DC:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov128_0212d37c

	arm_func_start FUN_ov128_0212d3e4
FUN_ov128_0212d3e4: ; 0x0212D3E4
	ldr r1, _0212D440 ; =0x0212FA50
	mov r0, #0
	ldr r12, [r1, #0xc]
	mov r3, r0
	add r1, r12, #0x500
	ldrh r1, [r1, #0x28]
	mov r2, r0
	cmp r1, #1
	ldreqb r1, [r12, #0x50c]
	cmpeq r1, #0
	moveq r3, #1
	cmp r3, #0
	beq _0212D428
	add r1, r12, #0x500
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	moveq r2, #1
_0212D428:
	cmp r2, #0
	addne r1, r12, #0x500
	ldrneh r1, [r1, #0x2a]
	cmpne r1, #0
	movne r0, #1
	bx lr
_0212D440: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212d3e4

	arm_func_start FUN_ov128_0212d444
FUN_ov128_0212d444: ; 0x0212D444
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _0212D498 ; =FUN_ov128_0212d4e4
	mov r0, r4
	bl FUN_02012828
	mov r1, r0
	mov r0, #0x80
	bl FUN_ov128_0212f150
	ldr r3, _0212D49C ; =0x0212F96C
	mov r0, r4
	ldrh r1, [r3]
	str r1, [sp]
	ldrh r1, [r3, #4]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #6]
	bl FUN_02014bb4
	mov r1, r0
	mov r0, #0x1d
	bl FUN_ov128_0212f150
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0212D498: .word FUN_ov128_0212d4e4
_0212D49C: .word ov128_0212F96C
	arm_func_end FUN_ov128_0212d444

	arm_func_start FUN_ov128_0212d4a0
FUN_ov128_0212d4a0: ; 0x0212D4A0
	stmfd sp!, {r3, lr}
	ldr r2, _0212D4E0 ; =0x0212FA50
	mov r12, #0
	ldr r3, [r2, #0xc]
	mov r1, r0
	strb r12, [r3, #0x50d]
	ldr r0, [r2, #0x10]
	add r0, r0, #0x1300
	strh r12, [r0, #0x16]
	ldr r0, [r2, #0xc]
	ldr r2, [r0, #0x51c]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0x11
	blx r2
	ldmfd sp!, {r3, pc}
_0212D4E0: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212d4a0

	arm_func_start FUN_ov128_0212d4e4
FUN_ov128_0212d4e4: ; 0x0212D4E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	ldrh r1, [r8]
	mov r5, #1
	mov r6, #0
	cmp r1, #0x19
	ldr r4, _0212DCA8 ; =0x0212FA50
	bgt _0212D55C
	cmp r1, #0x19
	bge _0212D628
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0212DC8C
_0212D51C: ; jump table
	b _0212D578 ; case 0
	b _0212DA84 ; case 1
	b _0212DB64 ; case 2
	b _0212DC8C ; case 3
	b _0212DC8C ; case 4
	b _0212DC8C ; case 5
	b _0212DC8C ; case 6
	b _0212D5F4 ; case 7
	b _0212D6BC ; case 8
	b _0212DC8C ; case 9
	b _0212DC8C ; case 10
	b _0212DC8C ; case 11
	b _0212DC8C ; case 12
	b _0212DBA4 ; case 13
	b _0212D8E0 ; case 14
	b _0212D978 ; case 15
_0212D55C:
	cmp r1, #0x1d
	bgt _0212D56C
	beq _0212D5AC
	b _0212DC8C
_0212D56C:
	cmp r1, #0x80
	beq _0212DBDC
	b _0212DC8C
_0212D578:
	ldrh r0, [r8, #2]
	cmp r0, #0
	beq _0212D5A0
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D5A0:
	bl FUN_ov128_0212d444
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D5AC:
	ldrh r0, [r8, #2]
	cmp r0, #0
	beq _0212D5D4
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D5D4:
	ldr r1, [r4, #0xc]
	ldr r0, _0212DCAC ; =FUN_ov128_0212d4e4
	bl FUN_020131ac
	mov r1, r0
	mov r0, #7
	bl FUN_ov128_0212f150
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D5F4:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x15
	blx r2
	ldr r0, _0212DCAC ; =FUN_ov128_0212d4e4
	mov r1, r5
	bl FUN_02014b60
	mov r1, r0
	mov r0, #0x19
	bl FUN_ov128_0212f150
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D628:
	ldr r3, [r4, #0xc]
	add r1, r3, #0x500
	ldrh r2, [r1, #0x26]
	cmp r2, #0
	bne _0212D684
	ldrh r0, [r8, #2]
	cmp r0, #0
	beq _0212D660
	ldr r2, [r3, #0x51c]
	mov r1, r8
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D660:
	ldr r1, _0212DCB0 ; =0x0212F96C
	ldr r0, _0212DCAC ; =FUN_ov128_0212d4e4
	ldr r1, [r1, #8]
	bl FUN_020132d8
	mov r1, r0
	mov r0, #8
	bl FUN_ov128_0212f150
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D684:
	ldrh r2, [r8, #2]
	cmp r2, #0
	beq _0212D6B0
	strh r6, [r1, #0x26]
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D6B0:
	bl FUN_ov128_0212d4a0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D6BC:
	ldrh r0, [r8, #2]
	cmp r0, #0
	beq _0212D6E4
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D6E4:
	ldrh r0, [r8, #8]
	cmp r0, #7
	bgt _0212D714
	bge _0212D754
	cmp r0, #2
	bgt _0212D8C4
	cmp r0, #0
	blt _0212D8C4
	beq _0212D734
	cmp r0, #2
	beq _0212D894
	b _0212D8C4
_0212D714:
	cmp r0, #9
	bgt _0212D724
	beq _0212D858
	b _0212D8C4
_0212D724:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	b _0212D8C4
_0212D734:
	ldr r0, [r4, #0xc]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	strh r6, [r0, #0x2a]
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	strh r6, [r0, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D754:
	ldr r0, [r4, #0xc]
	add r2, r0, #0x500
	ldrh r0, [r2, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r0, [r8, #0x10]
	mov r7, r5
	ldrh r3, [r2, #0x2a]
	mov r0, r7, lsl r0
	mov r1, r0, lsl #0x10
	orr r1, r3, r1, lsr #16
	strh r1, [r2, #0x2a]
	ldr r2, [r4, #0xc]
	mov r0, r6
	ldr r2, [r2, #0x51c]
	mov r1, r8
	blx r2
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	ldreq r0, [r4, #0x10]
	addeq r0, r0, #0x1000
	ldreq r1, [r0, #0x31c]
	cmpeq r1, #0
	bne _0212D82C
	str r7, [r0, #0x31c]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0xc]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r3, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	movne r7, r6
	mov r0, r7, lsl #0x10
	mov r0, r0, lsr #0x10
	str r2, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r3, #0x504]
	ldr r0, _0212DCAC ; =FUN_ov128_0212d4e4
	add r3, r3, #0x40
	bl FUN_02013864
	mov r1, r0
	mov r0, #0xe
	bl FUN_ov128_0212f150
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D82C:
	bl FUN_ov128_0212d3e4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0xc]
	mov r0, #0x19
	ldr r2, [r1, #0x51c]
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D858:
	ldr r0, [r4, #0xc]
	ldrh r1, [r8, #0x10]
	add r3, r0, #0x500
	mov r0, r5
	mvn r1, r0, lsl r1
	mov r2, r1, lsl #0x10
	ldrh r5, [r3, #0x2a]
	mov r1, r8
	and r2, r5, r2, lsr #16
	strh r2, [r3, #0x2a]
	ldr r2, [r4, #0xc]
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D894:
	ldr r1, [r4, #0xc]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r8
	mov r0, #0x1c
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D8C4:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D8E0:
	ldr r0, [r4, #0x10]
	mov r1, r6
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	ldrh r0, [r8, #4]
	cmp r0, #0xa
	beq _0212D908
	cmp r0, #0xb
	beq _0212D940
	b _0212D95C
_0212D908:
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	strh r5, [r0, #0x28]
	ldr r2, [r4, #0xc]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r2, #0x51c]
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D940:
	ldr r0, [r4, #0xc]
	ldr r1, [r8, #8]
	ldr r2, [r0, #0x51c]
	mov r0, #3
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D95C:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212D978:
	ldr r3, [r4, #0x10]
	add r0, r3, #0x7000
	ldr r0, [r0, #0x4c8]
	cmp r0, #0
	beq _0212D9D0
	mov r2, r6
	mov r1, r2
_0212D994:
	add r0, r3, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0
	beq _0212D9B4
	add r2, r2, #1
	cmp r2, #2
	bhs _0212D9C0
_0212D9B4:
	add r1, r1, #1
	cmp r1, #0xf
	blo _0212D994
_0212D9C0:
	cmp r2, #1
	bne _0212D9D0
	ldr r0, _0212DCB4 ; =0x00001964
	bl OS_SpinWaitSysCycles
_0212D9D0:
	ldr r0, [r4, #0xc]
	strb r6, [r0, #0x50c]
	ldrh r0, [r8, #2]
	cmp r0, #0
	bne _0212DA28
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #2
	blx r2
	ldr r1, [r4, #0xc]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r6
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DA28:
	cmp r0, #0xa
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	bne _0212DA4C
	mov r0, #0x2a
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DA4C:
	mov r0, #0x13
	blx r2
	ldr r1, [r4, #0xc]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r6
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DA84:
	ldr r0, [r4, #0x10]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _0212DAF8
	ldrh r0, [r8, #2]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	beq _0212DACC
	strh r6, [r0, #0x26]
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DACC:
	strh r6, [r0, #0x2a]
	ldr r1, [r4, #0xc]
	ldr r0, _0212DCAC ; =FUN_ov128_0212d4e4
	add r1, r1, #0x500
	strh r6, [r1, #0x28]
	bl FUN_02013168
	mov r1, r0
	mov r0, #2
	bl FUN_ov128_0212f150
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DAF8:
	mov r1, r6
	mov r2, r6
	mov r0, r5
	bl FUN_0201286c
	mov r0, r6
	bl FUN_02012828
	ldrh r0, [r8, #2]
	cmp r0, #0
	beq _0212DB44
	ldr r0, [r4, #0xc]
	mov r1, r8
	add r0, r0, #0x500
	strh r6, [r0, #0x26]
	ldr r2, [r4, #0xc]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DB44:
	ldr r0, _0212DCAC ; =FUN_ov128_0212d4e4
	mov r1, r6
	bl FUN_02014b60
	mov r1, r0
	mov r0, #0x19
	bl FUN_ov128_0212f150
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DB64:
	ldrh r1, [r8, #2]
	cmp r1, #0
	beq _0212DB98
	ldr r0, [r4, #0xc]
	mov r1, r8
	add r0, r0, #0x500
	strh r6, [r0, #0x26]
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DB98:
	bl FUN_ov128_0212d4a0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DBA4:
	ldrh r0, [r8, #2]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0xc]
	ldrh r0, [r8, #0xa]
	add r1, r1, #0x500
	ldrh r2, [r1, #0x2a]
	mvn r0, r0
	mov r0, r0, lsl #0x10
	and r0, r2, r0, lsr #16
	strh r0, [r1, #0x2a]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DBDC:
	ldrh r0, [r8, #4]
	sub r0, r0, #0x10
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0212DCA0
_0212DBF0: ; jump table
	b _0212DC10 ; case 0
	b _0212DC2C ; case 1
	b _0212DC48 ; case 2
	b _0212DC64 ; case 3
	b _0212DCA0 ; case 4
	b _0212DCA0 ; case 5
	b _0212DC80 ; case 6
	b _0212DCA0 ; case 7
_0212DC10:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x1d
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DC2C:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x1f
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DC48:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x20
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DC64:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x21
	blx r2
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DC80:
	bl OS_Terminate
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DC8C:
	ldr r0, [r4, #0xc]
	mov r1, r8
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
_0212DCA0:
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212DCA8: .word ov128_0212FA50
_0212DCAC: .word FUN_ov128_0212d4e4
_0212DCB0: .word ov128_0212F96C
_0212DCB4: .word 0x00001964
	arm_func_end FUN_ov128_0212d4e4

	arm_func_start FUN_ov128_0212dcb8
FUN_ov128_0212dcb8: ; 0x0212DCB8
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _0212DCEC
	bge _0212DCFC
	cmp r0, #9
	ldmgtfd sp!, {r3, pc}
	cmp r0, #7
	ldmfd sp!, {r3, pc}
_0212DCEC:
	cmp r0, #0x1a
	ldmgtfd sp!, {r3, pc}
	cmp r0, #0x19
	ldmfd sp!, {r3, pc}
_0212DCFC:
	ldr r2, _0212DD14 ; =0x0212FA50
	mov r0, #9
	ldr r2, [r2, #0xc]
	ldr r2, [r2, #0x51c]
	blx r2
	ldmfd sp!, {r3, pc}
_0212DD14: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212dcb8

	arm_func_start FUN_ov128_0212dd18
FUN_ov128_0212dd18: ; 0x0212DD18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldrh r2, [r0]
	ldr r4, _0212E6A4 ; =0x0212FA50
	str r0, [sp, #0x1c]
	ldr r1, _0212E6A8 ; =0x0212FA80
	cmp r2, #0x15
	ldr r11, [r4, #0xc]
	mov r5, #0
	mov r6, #1
	bgt _0212DDA4
	cmp r2, #0xe
	blt _0212DD64
	beq _0212E4D0
	cmp r2, #0xf
	beq _0212E538
	cmp r2, #0x15
	beq _0212E648
	b _0212E68C
_0212DD64:
	cmp r2, #0xb
	bgt _0212DD98
	bge _0212E31C
	cmp r2, #2
	bgt _0212E68C
	cmp r2, #0
	blt _0212E68C
	beq _0212DDC8
	cmp r2, #1
	beq _0212E5AC
	cmp r2, #2
	beq _0212E60C
	b _0212E68C
_0212DD98:
	cmp r2, #0xc
	beq _0212E36C
	b _0212E68C
_0212DDA4:
	cmp r2, #0x26
	bgt _0212DDBC
	bge _0212DEB8
	cmp r2, #0x1d
	beq _0212DE2C
	b _0212E68C
_0212DDBC:
	cmp r2, #0x80
	beq _0212E670
	b _0212E68C
_0212DDC8:
	ldrh r0, [r0, #2]
	ldr r2, [r11, #0x51c]
	cmp r0, #0
	beq _0212DDEC
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DDEC:
	ldr r1, [sp, #0x1c]
	mov r0, #0x15
	blx r2
	ldr r3, _0212E6AC ; =0x0212F96C
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	ldrh r1, [r3]
	str r1, [sp]
	ldrh r1, [r3, #4]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #6]
	bl FUN_02014bb4
	mov r1, r0
	mov r0, #0x1d
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DE2C:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212DE50
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DE50:
	ldrh r0, [r1, #6]
	cmp r0, #0
	streqh r6, [r1, #6]
	ldrh r0, [r1, #8]
	cmp r0, #0
	moveq r0, #0xc8
	streqh r0, [r1, #8]
	ldr r1, _0212E6A8 ; =0x0212FA80
	mov r0, #0xff
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	strh r6, [r1, #0x10]
	strh r5, [r1, #0x12]
	str r6, [r11, #0x5e4]
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	str r6, [r11, #0x5e8]
	bl FUN_02013394
	mov r1, r0
	mov r0, #0x26
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DEB8:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212DEDC
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DEDC:
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #8]
	cmp r0, #3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #4
	beq _0212E2A4
	cmp r0, #5
	bne _0212E304
	mov r0, r5
	str r0, [sp, #0x20]
	b _0212E220
_0212DF0C:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	mov r2, #0
	add r0, r1, r0, lsl #2
	ldr r4, [r0, #0x10]
	mov r3, r2
	ldrh r1, [r4, #0x3c]
	mov r6, r2
	mov r0, r2
	cmp r1, #0x10
	add r5, r11, #0x600
	blo _0212DF44
	cmp r1, #0x80
	movls r0, #1
_0212DF44:
	cmp r0, #0
	beq _0212DF5C
	ldrb r0, [r4, #0x4a]
	add r0, r0, #0x10
	cmp r1, r0
	moveq r6, #1
_0212DF5C:
	cmp r6, #0
	mov r7, #1
	beq _0212DF74
	ldrh r0, [r4, #0x40]
	cmp r0, #1
	moveq r3, r7
_0212DF74:
	cmp r3, #0
	beq _0212DF90
	ldrh r0, [r4, #0x3c]
	ldrh r1, [r4]
	add r0, r0, #0x41
	cmp r1, r0, lsr #1
	moveq r2, #1
_0212DF90:
	cmp r2, #0
	beq _0212DFA8
	mov r0, r4
	bl FUN_ov128_0212d354
	cmp r0, #0
	bne _0212DFBC
_0212DFA8:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	and r0, r0, #0xff
	str r0, [sp, #0x20]
	b _0212E214
_0212DFBC:
	ldr r0, _0212E6A4 ; =0x0212FA50
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0212DFFC
	ldr r0, _0212E6AC ; =0x0212F96C
	ldr r2, [r4, #0x44]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x10]
	and r2, r2, r1
	and r0, r0, r1
	cmp r2, r0
	ldreq r0, [sp, #0x20]
	addeq r0, r0, #1
	andeq r0, r0, #0xff
	streq r0, [sp, #0x20]
	beq _0212E214
_0212DFFC:
	mov r6, #0
	add r0, r11, #0x500
	b _0212E154
_0212E008:
	mov r1, #0x180
	mla r2, r6, r1, r5
	ldrb r3, [r4, #4]
	ldrb r1, [r2, #0xca]
	mov r12, #0
	mov r10, r12
	cmp r3, r1
	ldreqb r1, [r2, #0xcb]
	ldreqb r2, [r4, #5]
	mov lr, r12
	mov r8, r12
	cmpeq r2, r1
	moveq r10, r7
	mov r9, r12
	cmp r10, #0
	beq _0212E060
	mov r2, #0x180
	mla r2, r6, r2, r5
	ldrb r1, [r4, #6]
	ldrb r2, [r2, #0xcc]
	cmp r1, r2
	moveq r9, r7
_0212E060:
	cmp r9, #0
	beq _0212E080
	mov r1, #0x180
	mla r1, r6, r1, r5
	ldrb r2, [r4, #7]
	ldrb r1, [r1, #0xcd]
	cmp r2, r1
	moveq r8, r7
_0212E080:
	cmp r8, #0
	beq _0212E0A0
	mov r1, #0x180
	mla r1, r6, r1, r5
	ldrb r2, [r4, #8]
	ldrb r1, [r1, #0xce]
	cmp r2, r1
	moveq lr, r7
_0212E0A0:
	cmp lr, #0
	beq _0212E0C0
	mov r1, #0x180
	mla r1, r6, r1, r5
	ldrb r2, [r4, #9]
	ldrb r1, [r1, #0xcf]
	cmp r2, r1
	moveq r12, r7
_0212E0C0:
	cmp r12, #0
	beq _0212E150
	mov r0, #0x180
	mla r0, r6, r0, r5
	ldrh r1, [r4, #0x3c]
	add r8, r4, #0x40
	add r7, r0, #0xf8
	strh r1, [r0, #0xf6]
	mov r5, #8
_0212E0E4:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0212E0E4
	add r0, r11, #0x600
	mov r7, #0x180
	mla r0, r6, r7, r0
	mov r5, #0xc0
	mov r1, r5
	bl DC_InvalidateRange
	add r1, r11, #0x600
	mla r2, r6, r7, r1
	ldr r0, _0212E6A4 ; =0x0212FA50
	mov r7, #1
	ldrh r0, [r0]
	mov r1, r4
	mov r3, r5
	str r7, [sp]
	bl MIi_DmaCopy16
	ldr r0, [sp, #0x1c]
	str r6, [r11, #0x5ec]
	add r1, r0, #0x50
	ldr r0, [sp, #0x24]
	ldr r2, [r11, #0x51c]
	add r1, r1, r0, lsl #1
	mov r0, #4
	b _0212E250
_0212E150:
	add r6, r6, #1
_0212E154:
	ldrh r1, [r0, #0xe0]
	cmp r6, r1
	blt _0212E008
	cmp r6, #0x10
	ldr r8, _0212E6A4 ; =0x0212FA50
	mov r7, #0x180
	mov r9, #1
	bge _0212E214
	mla r1, r6, r7, r5
	add r10, r6, #1
	add r3, r11, #0x500
	add r0, r4, #4
	add r1, r1, #0xca
	mov r2, #6
	strh r10, [r3, #0xe0]
	bl MI_CpuCopy8
	mla r3, r6, r7, r5
	ldrh r2, [r4, #0x36]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	strh r2, [r3, #0xd0]
	add r1, r1, r0, lsl #1
	ldrh r5, [r1, #0x50]
	add r0, r4, #0x40
	add r1, r3, #0xf8
	mov r2, #0x80
	strh r5, [r3, #0xd2]
	bl MIi_CpuCopy16
	add r0, r11, #0x600
	mov r5, #0xc0
	mla r0, r6, r7, r0
	mov r1, r5
	bl DC_InvalidateRange
	add r2, r11, #0x600
	ldrh r0, [r8]
	mla r2, r6, r7, r2
	mov r1, r4
	mov r3, r5
	str r9, [sp]
	bl MIi_DmaCopy16
	ldr r0, [sp, #0x1c]
	str r6, [r11, #0x5ec]
	add r1, r0, #0x50
	ldr r0, [sp, #0x24]
	ldr r2, [r11, #0x51c]
	add r1, r1, r0, lsl #1
	mov r0, #4
	b _0212E250
_0212E214:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	and r0, r0, #0xff
_0212E220:
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	ldrh r1, [r0, #0xe]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	blt _0212DF0C
	ldr r0, [sp, #0x20]
	cmp r1, r0
	bne _0212E254
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #5
_0212E250:
	blx r2
_0212E254:
	ldr r0, [r11, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r11, #0x5e8]
	cmp r0, #0
	beq _0212E284
	ldr r0, _0212E6A8 ; =0x0212FA80
	bl FUN_ov128_0212d37c
	cmp r0, #0
	bne _0212E284
	bl FUN_ov128_0212ed00
_0212E284:
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	ldr r1, _0212E6A8 ; =0x0212FA80
	bl FUN_02013394
	mov r1, r0
	mov r0, #0x26
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E2A4:
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #5
	blx r2
	ldr r0, [r11, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r11, #0x5e8]
	cmp r0, #0
	beq _0212E2E4
	ldr r0, _0212E6A8 ; =0x0212FA80
	bl FUN_ov128_0212d37c
	cmp r0, #0
	bne _0212E2E4
	bl FUN_ov128_0212ed00
_0212E2E4:
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	ldr r1, _0212E6A8 ; =0x0212FA80
	bl FUN_02013394
	mov r1, r0
	mov r0, #0x26
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E304:
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E31C:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212E340
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E340:
	ldr r1, [r11, #0x520]
	mov r2, r5
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	mov r3, r6
	str r2, [sp]
	bl FUN_02013528
	mov r1, r0
	mov r0, #0xc
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E36C:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212E398
	add r0, r11, #0x500
	strh r5, [r0, #0xe0]
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0xb
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E398:
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #8]
	cmp r0, #9
	bgt _0212E3C8
	cmp r0, #6
	blt _0212E4B8
	beq _0212E3D8
	cmp r0, #7
	beq _0212E3EC
	cmp r0, #9
	beq _0212E494
	b _0212E4B8
_0212E3C8:
	cmp r0, #0x1a
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0212E4B8
_0212E3D8:
	add r0, r11, #0x500
	strh r5, [r0, #0x2a]
	add sp, sp, #0x28
	strh r6, [r0, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E3EC:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	ldrh r2, [r0, #0xa]
	add r0, r11, #0x500
	strh r2, [r0, #0xe2]
	ldr r2, [r11, #0x51c]
	mov r0, #6
	blx r2
	mov r4, r5
	add r3, r11, #0x500
	ldr r1, _0212E6B4 ; =FUN_ov128_0212dcb8
	mov r0, r6
	mov r2, r4
	strh r6, [r3, #0x2a]
	bl FUN_0201286c
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r11, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r11, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	moveq r4, r6
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	str r2, [sp]
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r11, #0x504]
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	add r3, r11, #0x40
	bl FUN_02013864
	mov r1, r0
	mov r0, #0xe
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E494:
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0xa
	blx r2
	add r0, r11, #0x500
	strh r5, [r0, #0x2a]
	add sp, sp, #0x28
	strh r5, [r0, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E4B8:
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E4D0:
	ldrh r0, [r0, #4]
	cmp r0, #0xa
	beq _0212E4F0
	cmp r0, #0xc
	cmpne r0, #0xd
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0212E520
_0212E4F0:
	add r0, r11, #0x500
	strh r6, [r0, #0x28]
	bl FUN_ov128_0212d3e4
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r11, #0x51c]
	mov r0, #0x19
	mov r1, r5
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E520:
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E538:
	strb r5, [r11, #0x50c]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0212E558
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #8
	b _0212E578
_0212E558:
	cmp r0, #9
	ldr r2, [r11, #0x51c]
	bne _0212E570
	ldr r1, [sp, #0x1c]
	mov r0, #0x29
	b _0212E578
_0212E570:
	ldr r1, [sp, #0x1c]
	mov r0, #0x12
_0212E578:
	blx r2
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r11, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E5AC:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0212E5D8
	add r0, r11, #0x500
	strh r5, [r0, #0x26]
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E5D8:
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	strh r5, [r0, #0x2a]
	ldr r1, [r4, #0xc]
	ldr r0, _0212E6B0 ; =FUN_ov128_0212dd18
	add r1, r1, #0x500
	strh r5, [r1, #0x28]
	bl FUN_02013168
	mov r1, r0
	mov r0, #2
	bl FUN_ov128_0212f150
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E60C:
	mov r1, r0
	ldrh r1, [r1, #2]
	cmp r1, #0
	beq _0212E63C
	add r0, r11, #0x500
	strh r5, [r0, #0x26]
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E63C:
	bl FUN_ov128_0212d4a0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E648:
	bl FUN_ov128_0212d3e4
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r11, #0x51c]
	mov r0, #0x19
	mov r1, r5
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E670:
	ldrh r0, [r0, #4]
	cmp r0, #0x16
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl OS_Terminate
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E68C:
	ldr r2, [r11, #0x51c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E6A4: .word ov128_0212FA50
_0212E6A8: .word ov128_0212FA80
_0212E6AC: .word ov128_0212F96C
_0212E6B0: .word FUN_ov128_0212dd18
_0212E6B4: .word FUN_ov128_0212dcb8
	arm_func_end FUN_ov128_0212dd18

	arm_func_start FUN_ov128_0212e6b8
FUN_ov128_0212e6b8: ; 0x0212E6B8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov r0, r4
	bl OS_GetMacAddress
	mov r1, #0
	mov r3, r1
_0212E6D4:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, #6
	add r3, r3, r0
	blt _0212E6D4
	ldr r1, _0212E718 ; =0x02FFFC3C
	ldr r0, _0212E71C ; =0xCCCCCCCD
	ldr r1, [r1]
	mov r2, #0x14
	add r1, r3, r1
	rsb r3, r1, r1, lsl #3
	umull r1, r0, r3, r0
	mov r0, r0, lsr #4
	umull r0, r1, r2, r0
	sub r0, r3, r0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0212E718: .word 0x02FFFC3C
_0212E71C: .word 0xCCCCCCCD
	arm_func_end FUN_ov128_0212e6b8

	arm_func_start FUN_ov128_0212e720
FUN_ov128_0212e720: ; 0x0212E720
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _0212E8EC ; =0x0212FA50
	mov r7, r1
	ldr r1, [r4, #0x10]
	mov r5, r2
	cmp r1, #0
	addne r1, r1, #0x1300
	ldrneh r1, [r1, #0x16]
	mov r4, r3
	cmpne r1, #0
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r0, #0x1f
	bic r8, r0, #0x1f
	add r0, r8, #0x1f
	add r0, r0, #0x1e00
	cmp r4, #0x10000
	bic r9, r0, #0x1f
	bne _0212E774
	bl FUN_02012ef8
	mov r4, r0
_0212E774:
	bl OS_DisableInterrupts
	ldr r3, _0212E8F0 ; =0x0000FFFF
	ldr r1, _0212E8F4 ; =0x0212F96C
	mov r2, #5
	strh r3, [r1, #4]
	strh r2, [r1, #6]
	mov r2, #0x28
	strh r2, [r1, #2]
	strh r2, [r1]
	mov r6, #1
	ldr r2, [sp, #0x20]
	ldr r3, _0212E8EC ; =0x0212FA50
	str r6, [r1, #8]
	strh r2, [r3]
	str r8, [r3, #0xc]
	mov r6, #0
	mov r10, r0
	mov r0, r6
	mov r1, r8
	mov r2, #0x1e00
	str r9, [r3, #0x10]
	bl MIi_CpuClear32
	mov r0, r6
	mov r1, r9
	mov r2, #0x1340
	bl MIi_CpuClear16
	ldrb r0, [r7, #1]
	add r2, r8, #0x530
	cmp r0, #0
	ble _0212E808
_0212E7EC:
	add r0, r7, r6, lsl #1
	ldrh r1, [r0, #2]
	ldrb r0, [r7, #1]
	add r6, r6, #1
	strh r1, [r2], #2
	cmp r6, r0
	blt _0212E7EC
_0212E808:
	add r0, r8, #0x138
	add r3, r0, #0x400
	ldr r0, _0212E8F4 ; =0x0212F96C
	mov r6, #0
	ldr r1, [r0, #0xc]
_0212E81C:
	ldrh r2, [r1]
	cmp r2, #0
	beq _0212E840
	add r1, r1, #2
	add r6, r6, #1
	str r1, [r0, #0xc]
	cmp r6, #0x10
	strh r2, [r3], #2
	blt _0212E81C
_0212E840:
	mov r0, r7
	add r1, r9, #0x1300
	mov r2, #0x16
	bl MI_CpuCopy8
	ldrb r0, [r7, #1]
	mov r7, #0
	mov r6, #1
	cmp r0, #0xa
	addlo r0, r9, r0, lsl #1
	addlo r0, r0, #0x1300
	movlo r1, #0
	strloh r1, [r0, #2]
	add r0, r8, #0x500
	mov r1, #0x100
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	strh r7, [r0, #0x18]
	strh r7, [r0, #0x1a]
	strh r6, [r0, #0x2c]
	add r0, r9, #0x400
	str r0, [r8, #0x504]
	strh r7, [r8, #0xe]
	strh r7, [r8, #0x12]
	strh r6, [r8, #0x16]
	strh r7, [r8, #0x14]
	str r5, [r8, #8]
	strh r4, [r8, #0xc]
	bl FUN_ov128_0212e6b8
	add r0, r0, #0xc8
	strh r0, [r8, #0x18]
	mov r0, #0xf
	strh r0, [r8, #0x10]
	strb r7, [r8, #0x50c]
	strb r7, [r8, #0x50d]
	add r1, r9, #0x1300
	strh r6, [r1, #0x16]
	add r1, r9, #0x1000
	mov r0, r10
	str r7, [r1, #0x31c]
	bl OS_RestoreInterrupts
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212E8EC: .word ov128_0212FA50
_0212E8F0: .word 0x0000FFFF
_0212E8F4: .word ov128_0212F96C
	arm_func_end FUN_ov128_0212e720

	arm_func_start FUN_ov128_0212e8f8
FUN_ov128_0212e8f8: ; 0x0212E8F8
	ldr r3, _0212E960 ; =0x000001FE
	cmp r0, r3
	bhi _0212E90C
	cmp r0, #0xe4
	bhs _0212E914
_0212E90C:
	mov r0, #0
	bx lr
_0212E914:
	cmp r1, #0x10
	bhi _0212E924
	cmp r1, #8
	bhs _0212E92C
_0212E924:
	mov r0, #0
	bx lr
_0212E92C:
	add r0, r0, #0x26
	mov r0, r0, lsl #2
	add r1, r1, #0x20
	add r0, r0, #0x4a
	mov r1, r1, lsl #2
	add r3, r0, #0x100
	add r0, r1, #0x70
	mla r1, r2, r0, r3
	ldr r0, _0212E964 ; =0x000015E0
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	bx lr
_0212E960: .word 0x000001FE
_0212E964: .word 0x000015E0
	arm_func_end FUN_ov128_0212e8f8

	arm_func_start FUN_ov128_0212e968
FUN_ov128_0212e968: ; 0x0212E968
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r8, _0212E9F8 ; =0x0212FA50
	mov r5, r0
	ldr r1, [r8, #0xc]
	ldrb r1, [r1, #0x50d]
	cmp r1, #0
	beq _0212E99C
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212E99C:
	mov r4, #8
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_ov128_0212e8f8
	cmp r0, #0
	bne _0212E9C8
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212E9C8:
	ldr r1, [r8, #0xc]
	mov r0, r5
	strh r6, [r1, #0x10]
	ldr r1, [r8, #0xc]
	add r1, r1, #0x500
	strh r7, [r1]
	ldr r1, [r8, #0xc]
	add r1, r1, #0x500
	strh r4, [r1, #2]
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212E9F8: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212e968

	arm_func_start FUN_ov128_0212e9fc
FUN_ov128_0212e9fc: ; 0x0212E9FC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0212EAC4 ; =0x0212FA50
	mov r4, #0
	ldr r1, [r5, #0xc]
	mov r0, #0x1e
	add r1, r1, #0x500
	strh r4, [r1, #0x28]
	ldr r1, [r5, #0xc]
	add r1, r1, #0x500
	strh r4, [r1, #0x2a]
	ldr r1, [r5, #0xc]
	add r1, r1, #0x500
	strh r4, [r1, #0x26]
	ldr r1, [r5, #0xc]
	add r1, r1, #0x500
	strh r4, [r1, #0x48]
	bl FUN_ov128_0212ef64
	ldr r0, [r5, #0x10]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _0212EAA0
_0212EA54:
	ldr r1, [r5, #0xc]
	ldrh r2, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x508]
	bl FUN_020130b4
	cmp r0, #4
	beq _0212EA54
	cmp r0, #2
	movne r0, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, _0212EAC4 ; =0x0212FA50
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x508]
	bl FUN_02012828
	ldr r0, [r4, #0xc]
	mov r1, #1
	strb r1, [r0, #0x50d]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0212EAA0:
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x508]
	bl FUN_02012828
	ldr r0, [r5, #0xc]
	mov r1, #1
	strb r1, [r0, #0x50d]
	bl FUN_ov128_0212d444
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0212EAC4: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212e9fc

	arm_func_start FUN_ov128_0212eac8
FUN_ov128_0212eac8: ; 0x0212EAC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r4, _0212EC84 ; =0x0212FA50
	mov r6, #0
	ldr r1, [r4, #0xc]
	mov r7, r0
	strh r5, [r1, #0x32]
	ldr r1, [r4, #0x10]
	ldr r2, _0212EC88 ; =0x000069C0
	add r0, r1, #0x1f
	add r0, r0, #0x7d00
	bic r0, r0, #0x1f
	str r0, [r4, #4]
	add r0, r1, #0x1000
	ldr r5, [r0, #0x4e4]
	mov r0, r6
	add r1, r1, #0x1340
	bl MIi_CpuClear16
	mov r0, r5
	bl FUN_ov128_0212a9c0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #0x500
	ldrh r2, [r0]
	add r0, r1, #0x1000
	sub r1, r2, #6
	str r1, [r0, #0x318]
	ldr r0, [r4, #0xc]
	add r0, r0, #0x500
	ldrh r0, [r0, #2]
	bl FUN_ov128_0212f620
	ldr r0, [r4, #0x10]
	add r0, r0, #0x138
	add r0, r0, #0x1400
	bl FUN_ov128_0212f64c
	mov r5, r6
	mvn r1, #0
_0212EB60:
	ldr r0, [r4, #0x10]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x1000
	str r5, [r0, #0x4e8]
	ldr r0, [r4, #0x10]
	add r0, r0, r6
	add r0, r0, #0x1000
	add r6, r6, #1
	strb r1, [r0, #0x526]
	cmp r6, #0xf
	blt _0212EB60
	ldr r4, _0212EC84 ; =0x0212FA50
	ldr r2, _0212EC8C ; =0x00005D40
	ldr r1, [r4, #0x10]
	mov r0, r5
	add r1, r1, #0x1000
	strb r5, [r1, #0x524]
	ldr r1, [r4, #0x10]
	add r1, r1, #0x388
	add r1, r1, #0x1400
	bl MIi_CpuClear16
	ldr r0, [r4, #0x10]
	mov r1, r5
	add r0, r0, #0x354
	add r0, r0, #0x1400
	mov r2, #0x1e
	bl MI_CpuFill8
	ldr r0, [r4, #0xc]
	mov r5, #1
	add r0, r0, #0x500
	strh r5, [r0, #0x24]
	ldr r0, [r4, #0xc]
	ldr r2, _0212EC90 ; =FUN_ov128_0212ac04
	ldr r1, _0212EC94 ; =FUN_ov128_0212d4e4
	str r2, [r0, #0x51c]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x508]
	ldr r1, [r4, #0xc]
	add r0, r1, #0x500
	ldrh r0, [r0]
	strh r0, [r1, #0x34]
	ldr r0, [r4, #0xc]
	ldrh r1, [r0, #0x34]
	add r0, r0, #0x500
	add r1, r1, #0x23
	bic r1, r1, #0x1f
	strh r1, [r0, #0x18]
	ldr r1, [r4, #0xc]
	add r0, r1, #0x500
	ldrh r0, [r0, #2]
	strh r0, [r1, #0x36]
	ldr r0, [r4, #0xc]
	ldrh r1, [r0, #0x36]
	add r0, r0, #0x500
	add r1, r1, #0xe
	rsb r1, r1, r1, lsl #4
	add r1, r1, #0x29
	bic r1, r1, #0x1f
	mov r1, r1, lsl #1
	strh r1, [r0, #0x1a]
	bl FUN_ov128_0212cd94
	bl FUN_ov128_0212e9fc
	mov r6, r0
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r1, r5
	mov r0, #0xf
	bl PXI_IsCallbackReady
	ldr r1, [r4, #0x10]
	add r1, r1, #0x7000
	str r0, [r1, #0x4c8]
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212EC84: .word ov128_0212FA50
_0212EC88: .word 0x000069C0
_0212EC8C: .word 0x00005D40
_0212EC90: .word FUN_ov128_0212ac04
_0212EC94: .word FUN_ov128_0212d4e4
	arm_func_end FUN_ov128_0212eac8

	arm_func_start FUN_ov128_0212ec98
FUN_ov128_0212ec98: ; 0x0212EC98
	ldr r1, _0212ECB4 ; =0x0212FA50
	ldr r12, _0212ECB8 ; =FUN_ov128_0212eac8
	ldr r1, [r1, #0x10]
	mov r2, #1
	add r1, r1, #0x1000
	str r2, [r1, #0x320]
	bx r12
_0212ECB4: .word ov128_0212FA50
_0212ECB8: .word FUN_ov128_0212eac8
	arm_func_end FUN_ov128_0212ec98

	arm_func_start FUN_ov128_0212ecbc
FUN_ov128_0212ecbc: ; 0x0212ECBC
	stmfd sp!, {r4, lr}
	ldr r0, _0212ECF0 ; =0x0212FA50
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x508]
	bl FUN_0201312c
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl FUN_ov128_0212f150
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0212ECF0: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212ecbc

	arm_func_start FUN_ov128_0212ecf4
FUN_ov128_0212ecf4: ; 0x0212ECF4
	ldr r12, _0212ECFC ; =FUN_ov128_0212ecbc
	bx r12
_0212ECFC: .word FUN_ov128_0212ecbc
	arm_func_end FUN_ov128_0212ecf4

	arm_func_start FUN_ov128_0212ed00
FUN_ov128_0212ed00: ; 0x0212ED00
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #1
	bl OS_DisableInterrupts
	ldr r1, _0212ED88 ; =0x0212FA50
	mov r5, r0
	ldr r2, [r1, #0xc]
	ldrb r0, [r2, #0x50d]
	cmp r0, #0
	bne _0212ED30
	mov r0, #0
	bl FUN_ov128_0212d4a0
	b _0212ED78
_0212ED30:
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _0212ED78
	mov r6, #0
	str r6, [r2, #0x5e4]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x500
	strh r4, [r0, #0x26]
	bl FUN_ov128_0212f42c
	cmp r0, #0
	beq _0212ED70
	ldr r0, _0212ED8C ; =FUN_ov128_0212ecf4
	bl FUN_ov128_0212f5d8
	mov r4, r6
	b _0212ED78
_0212ED70:
	bl FUN_ov128_0212ecbc
	mov r4, r0
_0212ED78:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0212ED88: .word ov128_0212FA50
_0212ED8C: .word FUN_ov128_0212ecf4
	arm_func_end FUN_ov128_0212ed00

	arm_func_start FUN_ov128_0212ed90
FUN_ov128_0212ed90: ; 0x0212ED90
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _0212EDC8 ; =0x0212FA50
	mov r4, r0
	ldr r0, [r1, #0x10]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _0212EDB8
	bl OS_Terminate
_0212EDB8:
	bl FUN_ov128_0212ed00
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_0212EDC8: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212ed90

	arm_func_start FUN_ov128_0212edcc
FUN_ov128_0212edcc: ; 0x0212EDCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, _0212EF5C ; =FUN_ov128_0212d4e4
	mov r1, r8
	bl FUN_020135f4
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #0x10
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _0212EF60 ; =0x0212FA50
	mov r6, #0
	ldr r0, [r4, #0x10]
	sub r7, r8, #1
	add r0, r0, r7, lsl #1
	add r0, r0, #0x1400
	strh r6, [r0, #0x8a]
	ldr r0, [r4, #0x10]
	mov r5, #4
	add r0, r0, #0xa8
	add r0, r0, #0x1400
	mov r1, r6
	mov r2, r5
	add r0, r0, r7, lsl #2
	bl MI_CpuFill8
	ldr r0, [r4, #0x10]
	mov r9, #0x16
	add r0, r0, #0x1340
	mla r0, r7, r9, r0
	mov r1, r6
	mov r2, r9
	bl MI_CpuFill8
	mov r0, r8
	bl FUN_ov128_0212f66c
	ldr r0, [r4, #0x10]
	sub r1, r9, #0x17
	add r0, r0, r7, lsl #1
	add r0, r0, #0x1700
	strh r6, [r0, #0x54]
	ldr r2, [r4, #0x10]
	add r0, r2, r7
	add r0, r0, #0x1500
	ldrsb r0, [r0, #0x26]
	cmp r0, r1
	beq _0212EEF8
	and r1, r0, #0xff
	add r0, r5, #0x5d0
	mul r0, r1, r0
	mov r1, #1
	add r2, r2, r0
	add r3, r2, #0x1d00
	mvn r2, r1, lsl r8
	ldrh r5, [r3, #0x4e]
	mov r2, r2, lsl #0x10
	mov r6, r1, lsl r8
	and r5, r5, r2, lsr #16
	strh r5, [r3, #0x4e]
	ldr r5, [r4, #0x10]
	mov r3, r6, lsl #0x10
	add r5, r5, r0
	add r5, r5, #0x1d00
	ldrh lr, [r5, #0x50]
	sub r12, r1, #2
	mov r6, r7
	orr r1, lr, r3, lsr #16
	strh r1, [r5, #0x50]
	ldr r1, [r4, #0x10]
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r12, [r1, #0x526]
	ldr r1, [r4, #0x10]
	add r0, r1, r0
	add r0, r0, #0x1d00
	ldrh r1, [r0, #0x4c]
	and r1, r1, r2, lsr #16
	strh r1, [r0, #0x4c]
_0212EEF8:
	ldr r1, _0212EF60 ; =0x0212FA50
	mov r4, #1
	ldr r2, [r1, #0x10]
	add r0, r2, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, r4, lsl r8
	beq _0212EF40
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x535]
	mvn r2, r4, lsl r8
	sub r3, r3, #1
	strb r3, [r0, #0x535]
	ldr r1, [r1, #0x10]
	mov r0, r2, lsl #0x10
	add r1, r1, #0x1500
	ldrh r2, [r1, #0x36]
	and r0, r2, r0, lsr #16
	strh r0, [r1, #0x36]
_0212EF40:
	ldr r0, _0212EF60 ; =0x0212FA50
	mov r1, #0
	ldr r0, [r0, #0x10]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212EF5C: .word FUN_ov128_0212d4e4
_0212EF60: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212edcc

	arm_func_start FUN_ov128_0212ef64
FUN_ov128_0212ef64: ; 0x0212EF64
	ldr r1, _0212EF70 ; =0x0212FA80
	strh r0, [r1, #8]
	bx lr
_0212EF70: .word ov128_0212FA80
	arm_func_end FUN_ov128_0212ef64

	arm_func_start FUN_ov128_0212ef74
FUN_ov128_0212ef74: ; 0x0212EF74
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r4, [sp, #0x18]
	mov r3, r2
	mov r2, r1
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #3
	mov r1, #0
	str r4, [sp, #8]
	bl FUN_02013a7c
	mov r4, r0
	mov r1, r4
	mov r0, #0xf
	bl FUN_ov128_0212f150
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov128_0212ef74

	arm_func_start FUN_ov128_0212efc0
FUN_ov128_0212efc0: ; 0x0212EFC0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r5, _0212F0A0 ; =0x0212FA50
	mov r12, r1, lsl #0x10
	ldr r3, [r5, #0xc]
	mov lr, r2, lsl #0x10
	add r4, r3, #0x500
	ldrh r6, [r4, #0x28]
	mov r1, r0
	mov r2, r12, lsr #0x10
	cmp r6, #0
	ldrneh r0, [r4, #0x26]
	mov r6, lr, lsr #0x10
	cmpne r0, #1
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0x24]
	cmp r0, #1
	beq _0212F01C
	cmp r0, #2
	beq _0212F064
	b _0212F094
_0212F01C:
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	moveq r0, #0x3e8
	movne r0, #0
	str r6, [sp]
	mov r12, r0, lsl #0x10
	ldr r0, [r3, #0x508]
	mov r3, r12, lsr #0x10
	bl FUN_ov128_0212ef74
	cmp r0, #2
	ldreq r1, _0212F0A0 ; =0x0212FA50
	moveq r2, #1
	ldreq r1, [r1, #0xc]
	add sp, sp, #4
	streqb r2, [r1, #0x50c]
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212F064:
	ldr r0, _0212F0A4 ; =FUN_ov128_0212dd18
	mov r3, #0
	str r6, [sp]
	bl FUN_ov128_0212ef74
	cmp r0, #2
	ldreq r1, [r5, #0xc]
	moveq r2, #1
	streqb r2, [r1, #0x50c]
	cmp r0, #2
	add sp, sp, #4
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212F094:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212F0A0: .word ov128_0212FA50
_0212F0A4: .word FUN_ov128_0212dd18
	arm_func_end FUN_ov128_0212efc0

	arm_func_start FUN_ov128_0212f0a8
FUN_ov128_0212f0a8: ; 0x0212F0A8
	ldr r0, _0212F0B8 ; =0x0212FA50
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #8]
	bx lr
_0212F0B8: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212f0a8

	arm_func_start FUN_ov128_0212f0bc
FUN_ov128_0212f0bc: ; 0x0212F0BC
	ldr r0, _0212F0CC ; =0x0212FA50
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #0xc]
	bx lr
_0212F0CC: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212f0bc

	arm_func_start FUN_ov128_0212f0d0
FUN_ov128_0212f0d0: ; 0x0212F0D0
	ldr r0, _0212F12C ; =0x0212FA50
	mov r2, #2
	ldr r1, [r0, #0xc]
	mov r3, #1
	ldrh r0, [r1, #0x12]
	mov r12, #4
	cmp r0, #0
	ldrh r0, [r1, #0xe]
	moveq r2, #0
	cmp r0, #0
	ldrh r0, [r1, #0x14]
	moveq r3, #0
	cmp r0, #0
	ldrh r0, [r1, #0x16]
	moveq r12, #0
	mov r1, #8
	cmp r0, #0
	orr r0, r3, r2
	moveq r1, #0
	orr r0, r12, r0
	orr r0, r1, r0
	and r0, r0, #0xff
	bx lr
_0212F12C: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212f0d0

	arm_func_start FUN_ov128_0212f130
FUN_ov128_0212f130: ; 0x0212F130
	ldr r0, _0212F14C ; =0x0212FA50
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x50d]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
_0212F14C: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212f130

	arm_func_start FUN_ov128_0212f150
FUN_ov128_0212f150: ; 0x0212F150
	stmfd sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _0212F184 ; =0x0212FA50
	strh r0, [sp]
	ldr r0, [r2, #0xc]
	strh r1, [sp, #2]
	ldr r2, [r0, #0x51c]
	add r1, sp, #0
	mov r0, #0xff
	blx r2
	ldmfd sp!, {r3, pc}
_0212F184: .word ov128_0212FA50
	arm_func_end FUN_ov128_0212f150

	arm_func_start FUN_ov128_0212f188
FUN_ov128_0212f188: ; 0x0212F188
	ldr r12, _0212F198 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x70
	bx r12
_0212F198: .word MI_CpuFill8
	arm_func_end FUN_ov128_0212f188

	arm_func_start FUN_ov128_0212f19c
FUN_ov128_0212f19c: ; 0x0212F19C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl OS_DisableInterrupts
	add r6, r4, #0x30
	mov r5, r0
	add r4, r4, #0x70
_0212F1C0:
	cmp r6, r4
	blo _0212F1CC
	bl OS_Terminate
_0212F1CC:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0212F1F0
	str r9, [r6]
	str r8, [r6, #4]
	ldr r0, [sp, #0x20]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	b _0212F1F8
_0212F1F0:
	add r6, r6, #0x10
	b _0212F1C0
_0212F1F8:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov128_0212f19c

	arm_func_start FUN_ov128_0212f204
FUN_ov128_0212f204: ; 0x0212F204
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl OS_DisableInterrupts
	add r2, r9, #0x30
	add r1, r9, #0x70
	mov r5, r0
	cmp r2, r1
	bhs _0212F28C
_0212F234:
	ldr r0, [r2, #0xc]
	cmp r0, #2
	blo _0212F280
	ldr r0, [r2]
	subs r0, r8, r0
	bmi _0212F280
	ldr r3, [r2, #4]
	add r12, r0, r6
	cmp r12, r3
	bhi _0212F280
	ldr r3, [r2, #8]
	mov r1, r7
	mov r2, r6
	add r0, r3, r0
	bl MI_CpuCopy8
	mov r0, #0
	str r0, [r9]
	mov r4, #1
	b _0212F28C
_0212F280:
	add r2, r2, #0x10
	cmp r2, r1
	blo _0212F234
_0212F28C:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov128_0212f204

	arm_func_start FUN_ov128_0212f29c
FUN_ov128_0212f29c: ; 0x0212F29C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
_0212F2A4:
	bl OS_DisableInterrupts
	ldr r1, [r7, #0xc0]
	mov r5, r0
	cmp r1, #0
	bne _0212F2DC
	mov r4, #0
_0212F2BC:
	mov r0, r7
	mov r1, r4
	bl OS_SetThreadPriority
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [r7, #0xc0]
	cmp r0, #0
	beq _0212F2BC
_0212F2DC:
	ldr r0, [r7, #0xc0]
	mov r4, r0
	ldr r1, [r0]
	mov r0, r7
	str r1, [r7, #0xc0]
	ldr r1, [r4, #4]
	mov r1, r1, lsr #1
	bl OS_SetThreadPriority
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0212F318
	mov r0, r4
	blx r1
_0212F318:
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r7
	ldr r6, [r4, #0xc]
	bl OS_GetThreadPriority
	ldr r1, [r7, #0xc0]
	cmp r1, #0
	moveq r1, #0
	beq _0212F358
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	cmp r0, r1, lsr #1
	ldrlo r1, [r7, #0xc0]
	ldrlo r1, [r1, #4]
	movlo r1, r1, lsr #1
	movhs r1, r0
_0212F358:
	cmp r1, r0
	beq _0212F368
	mov r0, r7
	bl OS_SetThreadPriority
_0212F368:
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r6, #0
	bic r0, r0, #1
	str r0, [r4, #4]
	beq _0212F38C
	mov r0, r4
	blx r6
_0212F38C:
	add r0, r7, #0xc4
	cmp r4, r0
	beq _0212F3A4
	mov r0, r5
	bl OS_RestoreInterrupts
	b _0212F2A4
_0212F3A4:
	bl OS_ExitThread
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov128_0212f29c

	arm_func_start FUN_ov128_0212f3ac
FUN_ov128_0212f3ac: ; 0x0212F3AC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r1, _0212F424 ; =0x0212FAC4
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0212F414
	add r0, r5, #0xc4
	str r5, [r1]
	bl FUN_ov128_0212f448
	sub r0, r6, #0xe4
	mov lr, #0
	bic r12, r0, #3
	add r3, r5, #0xe4
	str lr, [r5, #0xc0]
	ldr r1, _0212F428 ; =FUN_ov128_0212f29c
	mov r0, r5
	mov r2, r5
	add r3, r3, r12
	stmia sp, {r12, lr}
	bl OS_CreateThread
	mov r0, r5
	bl OS_WakeupThreadDirect
_0212F414:
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0212F424: .word ov128_0212FAC4
_0212F428: .word FUN_ov128_0212f29c
	arm_func_end FUN_ov128_0212f3ac

	arm_func_start FUN_ov128_0212f42c
FUN_ov128_0212f42c: ; 0x0212F42C
	ldr r0, _0212F444 ; =0x0212FAC4
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_0212F444: .word ov128_0212FAC4
	arm_func_end FUN_ov128_0212f42c

	arm_func_start FUN_ov128_0212f448
FUN_ov128_0212f448: ; 0x0212F448
	ldr r12, _0212F458 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r12
_0212F458: .word MI_CpuFill8
	arm_func_end FUN_ov128_0212f448

	arm_func_start FUN_ov128_0212f45c
FUN_ov128_0212f45c: ; 0x0212F45C
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov128_0212f45c

	arm_func_start FUN_ov128_0212f474
FUN_ov128_0212f474: ; 0x0212F474
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0212F5D4 ; =0x0212FAC4
	mov r8, r0
	ldr r4, [r4]
	mov r7, r1
	mov r5, r2
	mov r6, r3
	bl FUN_ov128_0212f42c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0x1f
	bls _0212F4F8
	mov r0, r4
	bl OS_GetThreadPriority
	cmp r6, #0x20
	bne _0212F4D4
	sub r6, r0, #1
	cmp r0, #0
	moveq r6, #0
	b _0212F4F8
_0212F4D4:
	cmp r6, #0x21
	bne _0212F4EC
	add r6, r0, #1
	cmp r0, #0x1f
	movhs r6, #0x1f
	b _0212F4F8
_0212F4EC:
	cmp r6, #0x22
	moveq r6, r0
	movne r6, #0x1f
_0212F4F8:
	bl OS_DisableInterrupts
	ldr r1, [r8, #4]
	str r5, [r8, #0xc]
	bic r1, r1, #1
	orr r1, r1, #1
	and r1, r1, #1
	orr r1, r1, r6, lsl #1
	mov r5, r0
	str r7, [r8, #8]
	str r1, [r8, #4]
	ldr r1, [r4, #0xc0]
	add r0, r4, #0xc4
	cmp r1, #0
	bne _0212F550
	cmp r8, r0
	ldreq r0, _0212F5D4 ; =0x0212FAC4
	moveq r1, #0
	streq r1, [r0]
	mov r0, r4
	str r8, [r4, #0xc0]
	bl OS_WakeupThreadDirect
	b _0212F5C8
_0212F550:
	cmp r8, r0
	ldr r1, [r4, #0xc0]
	bne _0212F58C
	ldr r0, [r1]
	cmp r0, #0
	beq _0212F578
_0212F568:
	mov r1, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0212F568
_0212F578:
	ldr r0, _0212F5D4 ; =0x0212FAC4
	str r8, [r1]
	mov r1, #0
	str r1, [r0]
	b _0212F5C8
_0212F58C:
	ldr r0, [r1, #4]
	cmp r6, r0, lsr #1
	bhs _0212F5A8
	str r8, [r4, #0xc0]
	str r1, [r8]
	b _0212F5C8
_0212F5A4:
	mov r1, r2
_0212F5A8:
	ldr r2, [r1]
	cmp r2, #0
	beq _0212F5C0
	ldr r0, [r2, #4]
	cmp r6, r0, lsr #1
	bhs _0212F5A4
_0212F5C0:
	str r2, [r8]
	str r8, [r1]
_0212F5C8:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212F5D4: .word ov128_0212FAC4
	arm_func_end FUN_ov128_0212f474

	arm_func_start FUN_ov128_0212f5d8
FUN_ov128_0212f5d8: ; 0x0212F5D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov128_0212f42c
	cmp r0, #0
	beq _0212F610
	ldr r0, _0212F61C ; =0x0212FAC4
	mov r1, #0
	ldr r0, [r0]
	mov r2, r5
	mov r3, r1
	add r0, r0, #0xc4
	bl FUN_ov128_0212f474
_0212F610:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_0212F61C: .word ov128_0212FAC4
	arm_func_end FUN_ov128_0212f5d8

	arm_func_start FUN_ov128_0212f620
FUN_ov128_0212f620: ; 0x0212F620
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0212F648 ; =0x0212FAC8
	sub r1, r0, #2
	mov r5, #0x1e
	mov r0, r5
	str r1, [r4, #8]
	bl _s32_div_f
	str r0, [r4, #0xc]
	str r5, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0212F648: .word ov128_0212FAC8
	arm_func_end FUN_ov128_0212f620

	arm_func_start FUN_ov128_0212f64c
FUN_ov128_0212f64c: ; 0x0212F64C
	ldr r3, _0212F664 ; =0x0212FAC8
	ldr r12, _0212F668 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x21c
	str r0, [r3, #4]
	bx r12
_0212F664: .word ov128_0212FAC8
_0212F668: .word MI_CpuFill8
	arm_func_end FUN_ov128_0212f64c

	arm_func_start FUN_ov128_0212f66c
FUN_ov128_0212f66c: ; 0x0212F66C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0212F6A8 ; =0x0212FAC8
	ldr r2, [r4, #4]
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	sub r6, r0, #1
	mov r5, #0
	mov r1, r5
	add r0, r2, r6, lsl #5
	mov r2, #0x1e
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	add r0, r0, r6, lsl #2
	str r5, [r0, #0x1e0]
	ldmfd sp!, {r4, r5, r6, pc}
_0212F6A8: .word ov128_0212FAC8
	arm_func_end FUN_ov128_0212f66c

	arm_func_start FUN_ov128_0212f6ac
FUN_ov128_0212f6ac: ; 0x0212F6AC
	ldrb r2, [r0]
	mov r12, r1
	add r12, r12, #1
	strb r2, [r1]
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _0212F714
_0212F6C8: ; jump table
	b _0212F714 ; case 0
	b _0212F71C ; case 1
	b _0212F71C ; case 2
	b _0212F71C ; case 3
	b _0212F6E4 ; case 4
	b _0212F71C ; case 5
	b _0212F71C ; case 6
_0212F6E4:
	ldrh r3, [r0, #2]
	ldrh r1, [r0, #4]
	and r2, r3, #0xff00
	and r0, r1, #0xff00
	mov r2, r2, asr #8
	mov r0, r0, asr #8
	strb r3, [r12]
	strb r2, [r12, #1]
	strb r1, [r12, #2]
	strb r0, [r12, #3]
	add r12, r12, #4
	b _0212F71C
_0212F714:
	mov r0, #0
	bx lr
_0212F71C:
	mov r0, r12
	bx lr
	arm_func_end FUN_ov128_0212f6ac

	arm_func_start FUN_ov128_0212f724
FUN_ov128_0212f724: ; 0x0212F724
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r0, [r6]
	mov r5, r1
	mov r4, r2
	strb r0, [r5]
	cmp r0, #7
	beq _0212F758
	cmp r0, #8
	beq _0212F7B8
	cmp r0, #9
	beq _0212F7E4
	b _0212F82C
_0212F758:
	mov r0, r4
	bl FUN_ov128_0212f8c0
	cmp r0, #0
	ldrne r0, _0212F83C ; =0x0212FAC8
	subne r1, r4, #1
	ldrne r0, [r0, #4]
	addne r0, r0, r1, lsl #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r6, #1]
	ldr r0, _0212F83C ; =0x0212FAC8
	strb r2, [r5, #2]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r0, #8]
	add r0, r6, #2
	add r1, r5, #3
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl FUN_ov128_0212f840
	mov r4, r0
	b _0212F834
_0212F7B8:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	strh r0, [r5, #2]
	ldrb r0, [r6, #2]
	ldrh r1, [r5, #2]
	mov r0, r0, lsl #8
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	b _0212F834
_0212F7E4:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	ldr r7, _0212F83C ; =0x0212FAC8
	strh r0, [r5, #2]
	ldrb r1, [r6, #2]
	ldrh r2, [r5, #2]
	mov r0, r4
	mov r1, r1, lsl #8
	and r1, r1, #0xff00
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r5, #2]
	ldr r2, [r7, #8]
	add r1, r5, #4
	bl MI_CpuCopy8
	ldr r0, [r7, #8]
	add r4, r4, r0
	b _0212F834
_0212F82C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212F834:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212F83C: .word ov128_0212FAC8
	arm_func_end FUN_ov128_0212f724

	arm_func_start FUN_ov128_0212f840
FUN_ov128_0212f840: ; 0x0212F840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0212F8BC ; =0x0212FAC8
	mov r6, r1
	ldr r3, [r7, #4]
	cmp r3, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r0, #2]
	ldr r1, [r7, #0xc]
	cmp r5, r1
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r4, r6, #1
	ldr r2, [r7, #8]
	add r1, r3, r4, lsl #5
	mla r1, r5, r2, r1
	add r0, r0, #3
	bl MI_CpuCopy8
	ldr r0, [r7, #4]
	mov r1, #1
	add r3, r0, #0x1e0
	ldr r2, [r3, r4, lsl #2]
	mov r0, r6
	orr r1, r2, r1, lsl r5
	str r1, [r3, r4, lsl #2]
	bl FUN_ov128_0212f8c0
	cmp r0, #0
	ldrne r0, [r7, #4]
	addne r0, r0, r4, lsl #5
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212F8BC: .word ov128_0212FAC8
	arm_func_end FUN_ov128_0212f840

	arm_func_start FUN_ov128_0212f8c0
FUN_ov128_0212f8c0: ; 0x0212F8C0
	ldr r1, _0212F910 ; =0x0212FAC8
	mov r2, #0
	ldr r12, [r1, #0xc]
	cmp r12, #0
	ble _0212F908
	ldr r1, [r1, #4]
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	ldr r3, [r0, #0x1e0]
	mov r1, #1
_0212F8E8:
	tst r3, r1, lsl r2
	moveq r0, #0
	bxeq lr
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	cmp r12, r0, lsr #16
	mov r2, r0, lsr #0x10
	bgt _0212F8E8
_0212F908:
	mov r0, #1
	bx lr
_0212F910: .word ov128_0212FAC8
	arm_func_end FUN_ov128_0212f8c0

	.rodata
	.global ov129_0212F914
ov129_0212F914:
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov129_0212F920
ov129_0212F920:
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00
	.byte 0x00, 0x74, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.data
	.global ov128_0212F960
ov128_0212F960:
	.byte 0xFF, 0x00, 0x00, 0x00
	.global ov128_0212F964
ov128_0212F964:
	.byte 0x20, 0xF9, 0x12, 0x02
	.global ov128_0212F968
ov128_0212F968:
	.byte 0x72, 0x6F, 0x6D, 0x00
	.global ov128_0212F96C
ov128_0212F96C:
	.byte 0x28, 0x00, 0x28, 0x00
	.byte 0xFF, 0xFF, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x84, 0xF9, 0x12, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x6D, 0x00, 0x75, 0x00, 0x6C, 0x00, 0x74, 0x00, 0x69, 0x00, 0x62, 0x00
	.byte 0x6F, 0x00, 0x6F, 0x00, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov128_0212F9A0
ov128_0212F9A0:
	.space 0x04
	.global ov128_0212F9A4
ov128_0212F9A4:
	.space 0x04
	.global ov128_0212F9A8
ov128_0212F9A8:
	.space 0x38
	.global ov128_0212F9E0
ov128_0212F9E0:
	.space 0x08
	.global ov128_0212F9E8
ov128_0212F9E8:
	.space 0x06
	.global ov128_0212F9EE
ov128_0212F9EE:
	.space 0x02
	.global ov128_0212F9F0
ov128_0212F9F0:
	.space 0x58
	.global ov128_0212FA48
ov128_0212FA48:
	.space 0x08
	.global ov128_0212FA50
ov128_0212FA50:
	.space 0x10
	.global ov128_0212FA60
ov128_0212FA60:
	.space 0x20
	.global ov128_0212FA80
ov128_0212FA80:
	.space 0x44
	.global ov128_0212FAC4
ov128_0212FAC4:
	.space 0x04
	.global ov128_0212FAC8
ov128_0212FAC8:
	.space 0x18

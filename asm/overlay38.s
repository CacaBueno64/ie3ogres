
	.include "/macros/function.inc"
	.include "/include/overlay38.inc"

	.text
	arm_func_start FUN_ov38_02119f00
FUN_ov38_02119f00: ; 0x02119F00
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrsb r0, [r0]
	cmp r0, #0
	blt _02119F20
	cmp r0, #0x7e
	ble _02119F30
_02119F20:
	cmp r0, #0xa1
	blt _02119F38
	cmp r0, #0xdf
	bgt _02119F38
_02119F30:
	mov r0, #1
	bx lr
_02119F38:
	mov r0, #2
	bx lr
	arm_func_end FUN_ov38_02119f00

	arm_func_start FUN_ov38_02119f40
FUN_ov38_02119f40: ; 0x02119F40
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #1
	ldreqb r0, [r0]
	ldrneb r1, [r0, #1]
	ldrneb r0, [r0]
	orrne r0, r0, r1, lsl #8
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov38_02119f40

	arm_func_start FUN_ov38_02119f6c
FUN_ov38_02119f6c: ; 0x02119F6C
	stmfd sp!, {r3, lr}
	mov r3, r2, asr #1
	add r2, r2, r3, lsr #30
	mov r12, r2, asr #2
	cmp r12, #0
	mov lr, #0
	ble _02119FB4
_02119F88:
	mov r3, lr, lsl #1
	mov r2, r3, lsl #1
	ldrh r2, [r1, r2]
	cmp r0, r2
	addeq r0, r3, #1
	moveq r0, r0, lsl #1
	ldreqh r0, [r1, r0]
	ldmeqfd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r12
	blt _02119F88
_02119FB4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov38_02119f6c

	arm_func_start FUN_ov38_02119fbc
FUN_ov38_02119fbc: ; 0x02119FBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r2
	movs r7, r1
	mov r8, r0
	cmpne r6, #0
	moveq r0, #0
	mov r5, r3
	streqb r0, [r8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	bl STD_GetStringLength
	add r4, r7, r0
	cmp r7, r4
	bhs _0211A060
	ldr r9, _0211A06C ; =0x00004081
_02119FF8:
	mov r0, r7
	bl FUN_ov38_02119f00
	mov r10, r0
	mov r0, r7
	mov r1, r10
	bl FUN_ov38_02119f40
	cmp r10, #2
	bne _0211A048
	cmp r0, r9
	beq _0211A040
	mov r1, r6
	mov r2, r5
	bl FUN_ov38_02119f6c
	cmp r0, #0
	strneb r0, [r8]
	movne r0, r0, asr #8
	strneb r0, [r8, #1]
	addne r8, r8, #2
_0211A040:
	add r7, r7, #2
	b _0211A058
_0211A048:
	cmp r10, #1
	bne _0211A060
	ldrsb r0, [r7], #1
	strb r0, [r8], #1
_0211A058:
	cmp r7, r4
	blo _02119FF8
_0211A060:
	mov r0, #0
	strb r0, [r8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A06C: .word 0x00004081
	arm_func_end FUN_ov38_02119fbc

	arm_func_start FUN_ov38_0211a070
FUN_ov38_0211a070: ; 0x0211A070
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	mov r6, r1
	cmp r0, #0
	mov r10, r3
	cmpne r6, #0
	cmpne r10, #0
	ldr r9, [sp, #0xa0]
	mov r4, r2
	addeq sp, sp, #0x80
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r5, sp, #0
	mov r1, r0
	mov r0, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov38_02119fbc
	mov r0, r5
	bl STD_GetStringLength
	mov r6, r0
	cmp r6, #0
	mov r7, #0
	ble _0211A120
	mov r4, r7
_0211A0D4:
	mov r8, r4
	cmp r9, #0
	ble _0211A114
_0211A0E0:
	ldr r0, [r10, r8, lsl #2]
	bl STD_GetStringLength
	mov r2, r0
	ldr r1, [r10, r8, lsl #2]
	add r0, r5, r7
	bl STD_CompareNString
	cmp r0, #0
	addeq sp, sp, #0x80
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r8, r8, #1
	cmp r8, r9
	blt _0211A0E0
_0211A114:
	add r7, r7, #2
	cmp r7, r6
	blt _0211A0D4
_0211A120:
	mov r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov38_0211a070

	arm_func_start FUN_ov38_0211a12c
FUN_ov38_0211a12c: ; 0x0211A12C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r5, r8
	bl STD_GetStringLength
	add r6, r7, r0
	cmp r7, r6
	bhs _0211A1C4
	ldr r9, _0211A1D0 ; =0x00004081
	mov r4, #0x20
_0211A158:
	sub r0, r5, r8
	cmp r0, #0x7e
	bge _0211A1C4
	mov r0, r7
	bl FUN_ov38_02119f00
	mov r10, r0
	mov r0, r7
	mov r1, r10
	bl FUN_ov38_02119f40
	cmp r10, #2
	bne _0211A1AC
	cmp r0, r9
	streqb r4, [r5], #1
	beq _0211A1A4
	cmp r0, #0
	strneb r0, [r5]
	movne r0, r0, asr #8
	strneb r0, [r5, #1]
	addne r5, r5, #2
_0211A1A4:
	add r7, r7, #2
	b _0211A1BC
_0211A1AC:
	cmp r10, #1
	bne _0211A1C4
	ldrsb r0, [r7], #1
	strb r0, [r5], #1
_0211A1BC:
	cmp r7, r6
	blo _0211A158
_0211A1C4:
	mov r0, #0
	strb r0, [r5]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A1D0: .word 0x00004081
	arm_func_end FUN_ov38_0211a12c

	arm_func_start FUN_ov38_0211a1d4
FUN_ov38_0211a1d4: ; 0x0211A1D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r4, r7
	bl STD_GetStringLength
	add r5, r6, r0
	cmp r6, r5
	bhs _0211A270
	mvn r9, #0x7e
	mov r8, #0x40
_0211A200:
	sub r0, r4, r7
	cmp r0, #0x7e
	bge _0211A270
	mov r0, r6
	bl FUN_ov38_02119f00
	mov r10, r0
	mov r0, r6
	mov r1, r10
	bl FUN_ov38_02119f40
	cmp r10, #2
	bne _0211A248
	cmp r0, #0
	strneb r0, [r4]
	movne r0, r0, asr #8
	strneb r0, [r4, #1]
	addne r4, r4, #2
	add r6, r6, #2
	b _0211A268
_0211A248:
	cmp r10, #1
	bne _0211A270
	cmp r0, #0x20
	ldrnesb r0, [r6]
	streqb r8, [r4, #1]
	streqb r9, [r4], #2
	strneb r0, [r4], #1
	add r6, r6, #1
_0211A268:
	cmp r6, r5
	blo _0211A200
_0211A270:
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov38_0211a1d4

	arm_func_start FUN_ov38_0211a27c
FUN_ov38_0211a27c: ; 0x0211A27C
	stmfd sp!, {r3, lr}
	str r1, [r0, #0x64]
	cmp r1, #1
	beq _0211A2A0
	cmp r1, #2
	beq _0211A2B8
	cmp r1, #3
	beq _0211A2D0
	ldmfd sp!, {r3, pc}
_0211A2A0:
	ldr r0, _0211A2E8 ; =0x0209F5C0
	mov r1, #0
	mov r2, #7
	mov r3, #5
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_0211A2B8:
	ldr r0, _0211A2E8 ; =0x0209F5C0
	mov r1, #0
	mov r2, #8
	mov r3, #6
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_0211A2D0:
	mov r1, #0
	ldr r0, _0211A2E8 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xb
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_0211A2E8: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211a27c

	arm_func_start FUN_ov38_0211a2ec
FUN_ov38_0211a2ec: ; 0x0211A2EC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r1, #2
	str r1, [sp, #4]
	mov r5, r0
	str r4, [sp]
	str r4, [sp, #8]
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r2, #1
	mov r1, #5
	ldr r0, [r5, #4]
	strb r2, [r5, #0x288]
	str r1, [r5, #8]
	bl FUN_02041d9c
	ldr r0, _0211A358 ; =0x0209A454
	mov r1, r4
	str r4, [r0, #0x24]
	ldr r0, [r5, #4]
	mov r2, #0x19
	bl FUN_02041ef0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211A358: .word unk_0209A454
	arm_func_end FUN_ov38_0211a2ec

	arm_func_start FUN_ov38_0211a35c
FUN_ov38_0211a35c: ; 0x0211A35C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r1, #5
	mov r0, #6
	str r1, [r5, #8]
	bl FUN_ov16_020f153c
	mov r4, #0
	mov r0, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x1e
	bl FUN_02041eac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov38_0211a35c

	arm_func_start FUN_ov38_0211a3b8
FUN_ov38_0211a3b8: ; 0x0211A3B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x184]
	add r0, r5, #0xf8
	str r1, [sp]
	ldr r1, [r5, #0x27c]
	ldr r2, [r5, #0x280]
	ldr r3, [r5, #0x180]
	bl FUN_ov38_0211a070
	cmp r0, #0
	bne _0211A408
	mov r0, r5
	mov r1, #1
	bl FUN_ov38_0211a27c
	ldr r0, _0211A42C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, #2
	str r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A408:
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov38_0211a27c
	ldr r0, _0211A42C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r4, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A42C: .word unk_0209AC44
	arm_func_end FUN_ov38_0211a3b8

	arm_func_start FUN_ov38_0211a430
FUN_ov38_0211a430: ; 0x0211A430
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xf8
	add r1, r4, #0x78
	bl STD_CopyString
	mov r0, r4
	mov r1, #2
	bl FUN_ov38_0211a27c
	ldr r0, _0211A478 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r1, #0
	ldr r0, _0211A47C ; =0x020A9C40
	mov r2, r1
	bl FUN_020460a8
	mov r0, r4
	bl FUN_ov38_0211a35c
	ldmfd sp!, {r4, pc}
_0211A478: .word unk_0209AC44
_0211A47C: .word unk_020A9C40
	arm_func_end FUN_ov38_0211a430

	arm_func_start FUN_ov38_0211a480
FUN_ov38_0211a480: ; 0x0211A480
	ldr r12, [r0, #0x58]
	mov r3, #0xc
	add r12, r12, #0xe
	mla r0, r12, r3, r0
	ldr r3, [r0, #0x18c]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _0211A4B8
	cmp r1, #0x1a
	bge _0211A4B8
	cmp r2, #6
	blo _0211A4C0
_0211A4B8:
	mov r0, #0
	bx lr
_0211A4C0:
	mov r0, #0x1a
	mul r0, r2, r0
	mov r1, r1, lsl #1
	add r0, r3, r0, lsl #1
	ldrh r0, [r1, r0]
	bx lr
	arm_func_end FUN_ov38_0211a480

	arm_func_start FUN_ov38_0211a4d8
FUN_ov38_0211a4d8: ; 0x0211A4D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov38_0211a480
	mov r4, r0
	b _0211A4FC
_0211A4F8:
	sub r7, r7, #1
_0211A4FC:
	cmp r7, #0
	ble _0211A51C
	mov r0, r8
	mov r2, r6
	sub r1, r7, #1
	bl FUN_ov38_0211a480
	cmp r4, r0
	beq _0211A4F8
_0211A51C:
	mov r0, #1
	stmia r5, {r0, r7}
	str r6, [r5, #8]
	strh r4, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov38_0211a4d8

	arm_func_start FUN_ov38_0211a530
FUN_ov38_0211a530: ; 0x0211A530
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0xf8
	mov r6, #1
	mov r5, #0
	bl strlen
	cmp r0, #0x6c
	blo _0211A590
	ldrh r1, [r4, #0x54]
	ldr r0, _0211A934 ; =0x00004242
	cmp r1, r0
	ldrne r0, _0211A938 ; =0x00004343
	cmpne r1, r0
	ldrne r0, _0211A93C ; =0x00004444
	cmpne r1, r0
	ldrne r0, _0211A940 ; =0x00004545
	cmpne r1, r0
	ldrne r0, _0211A944 ; =0x00004141
	cmpne r1, r0
	beq _0211A590
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A590:
	ldrh r1, [r4, #0x54]
	ldr r0, _0211A934 ; =0x00004242
	cmp r1, r0
	bgt _0211A5D0
	bge _0211A660
	ldr r0, _0211A94C ; =0x00002020
	cmp r1, r0
	bgt _0211A5C0
	bge _0211A8FC
	cmp r1, #0
	beq _0211A8FC
	b _0211A894
_0211A5C0:
	ldr r0, _0211A944 ; =0x00004141
	cmp r1, r0
	beq _0211A5F0
	b _0211A894
_0211A5D0:
	ldr r0, _0211A93C ; =0x00004444
	cmp r1, r0
	bgt _0211A894
	bge _0211A85C
	ldr r0, _0211A938 ; =0x00004343
	cmp r1, r0
	beq _0211A764
	b _0211A894
_0211A5F0:
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, r6
	bl FUN_0202cf6c
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _0211A634
	ldr r7, _0211A950 ; =0x0209F5C0
	mov r1, r5
	mov r0, r7
	mov r2, r6
	str r6, [r4, #0x58]
	bl FUN_ov16_020f6084
	mov r0, r7
	mov r1, r5
	mov r2, #2
	bl FUN_ov16_020f60f8
	b _0211A8FC
_0211A634:
	ldr r7, _0211A950 ; =0x0209F5C0
	mov r1, r5
	mov r0, r7
	mov r2, r6
	str r5, [r4, #0x58]
	bl FUN_ov16_020f60f8
	mov r0, r7
	mov r1, r5
	mov r2, #2
	bl FUN_ov16_020f6084
	b _0211A8FC
_0211A660:
	ldr r0, [r4, #0x178]
	cmp r0, #2
	blt _0211A8FC
	sub r1, r0, #2
	sub r0, r0, #1
	add r1, r4, r1
	add r0, r4, r0
	ldr r7, [r4, #0x258]
	ldrb r1, [r1, #0xf8]
	ldrsb r0, [r0, #0xf8]
	cmp r7, #0
	mov r6, #0
	orr r0, r1, r0, lsl #8
	mov r1, r0, lsl #0x10
	beq _0211A8FC
	mov r5, r6
	b _0211A728
_0211A6A4:
	ldrb r0, [r7, #1]
	and r2, r2, #0xff
	orr r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r1, lsr #16
	bne _0211A720
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	tst r5, #1
	subne r7, r7, #2
	addeq r7, r7, #2
	ldr r2, [r4, #0x178]
	ldrb r3, [r7]
	ldrb r1, [r7, #1]
	sub r2, r2, #2
	mov r0, r4
	orr r1, r3, r1, lsl #8
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	add r1, r4, r2
	strb r3, [r1, #0xf8]
	ldr r1, [r4, #0x178]
	mov r2, r3, asr #8
	sub r1, r1, #1
	add r1, r4, r1
	strb r2, [r1, #0xf8]
	bl FUN_ov38_0211afc8
	mov r6, #1
	b _0211A73C
_0211A720:
	add r5, r5, #1
	add r7, r7, #2
_0211A728:
	ldrb r2, [r7]
	cmp r2, #0
	beq _0211A73C
	cmp r2, #0x20
	bhs _0211A6A4
_0211A73C:
	add r0, r4, #0xf8
	bl strlen
	cmp r0, #0x6c
	blo _0211A8FC
	cmp r6, #0
	bne _0211A8FC
_0211A754:
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	b _0211A8FC
_0211A764:
	ldr r0, [r4, #0x178]
	cmp r0, #2
	blt _0211A8FC
	sub r1, r0, #2
	sub r0, r0, #1
	add r1, r4, r1
	add r0, r4, r0
	ldr r7, [r4, #0x264]
	ldrb r1, [r1, #0xf8]
	ldrsb r0, [r0, #0xf8]
	cmp r7, #0
	mov r6, #0
	orr r0, r1, r0, lsl #8
	mov r1, r0, lsl #0x10
	beq _0211A8FC
	mov r5, r6
	b _0211A82C
_0211A7A8:
	ldrb r0, [r7, #1]
	and r2, r2, #0xff
	orr r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r1, lsr #16
	bne _0211A824
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	tst r5, #1
	subne r7, r7, #2
	addeq r7, r7, #2
	ldr r2, [r4, #0x178]
	ldrb r3, [r7]
	ldrb r1, [r7, #1]
	sub r2, r2, #2
	mov r0, r4
	orr r1, r3, r1, lsl #8
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	add r1, r4, r2
	strb r3, [r1, #0xf8]
	ldr r1, [r4, #0x178]
	mov r2, r3, asr #8
	sub r1, r1, #1
	add r1, r4, r1
	strb r2, [r1, #0xf8]
	bl FUN_ov38_0211afc8
	mov r6, #1
	b _0211A840
_0211A824:
	add r5, r5, #1
	add r7, r7, #2
_0211A82C:
	ldrb r2, [r7]
	cmp r2, #0
	beq _0211A840
	cmp r2, #0x20
	bhs _0211A7A8
_0211A840:
	add r0, r4, #0xf8
	bl strlen
	cmp r0, #0x6c
	blo _0211A8FC
	cmp r6, #0
	bne _0211A8FC
	b _0211A754
_0211A85C:
	ldr r0, [r4, #0x178]
	cmp r0, #0
	ble _0211A8FC
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r4, #0x178]
	subs r0, r0, #2
	str r0, [r4, #0x178]
	strmi r5, [r4, #0x178]
	ldr r0, [r4, #0x178]
	add r1, r4, r0
	mov r0, r4
	b _0211A8F4
_0211A894:
	ldr r0, [r4, #0x178]
	cmp r0, #0x6c
	bge _0211A8FC
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldrh r3, [r4, #0x54]
	ldr r0, _0211A940 ; =0x00004545
	ldr r2, [r4, #0x178]
	cmp r3, r0
	ldreq r3, _0211A954 ; =0x00004081
	add r0, r2, #1
	str r0, [r4, #0x178]
	add r0, r4, r2
	strb r3, [r0, #0xf8]
	ldr r2, [r4, #0x178]
	mov r1, r3, asr #8
	add r0, r2, #1
	str r0, [r4, #0x178]
	add r0, r4, r2
	strb r1, [r0, #0xf8]
	ldr r1, [r4, #0x178]
	mov r0, r4
	add r1, r4, r1
_0211A8F4:
	strb r5, [r1, #0xf8]
	bl FUN_ov38_0211afc8
_0211A8FC:
	add r0, r4, #0xf8
	bl strlen
	cmp r0, #0x6c
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r4, #0x54]
	ldr r0, _0211A938 ; =0x00004343
	cmp r1, r0
	ldrne r0, _0211A934 ; =0x00004242
	cmpne r1, r0
	ldrne r0, _0211A944 ; =0x00004141
	cmpne r1, r0
	movne r0, #3
	strne r0, [r4, #0x48]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A934: .word 0x00004242
_0211A938: .word 0x00004343
_0211A93C: .word 0x00004444
_0211A940: .word 0x00004545
_0211A944: .word 0x00004141
_0211A948: .word unk_0209AC44
_0211A94C: .word 0x00002020
_0211A950: .word unk_0209F5C0
_0211A954: .word 0x00004081
	arm_func_end FUN_ov38_0211a530

	arm_func_start FUN_ov38_0211a958
FUN_ov38_0211a958: ; 0x0211A958
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #8]
	ldr r4, _0211AE54 ; =0x00002020
	cmp r0, #4
	ldreqb r0, [r10, #0x15]
	mov r9, r1
	mov r5, #3
	mov r11, #4
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	ldr r0, _0211AE58 ; =0x0209F5C0
	mov r1, r7
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreq r1, [r10, #0xc]
	ldreq r0, [r10, #0x10]
	cmpeq r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE5C ; =0x0209A0F4
	cmp r1, #0
	ldrh r0, [r0]
	orr r0, r0, r9
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bne _0211AD00
	tst r0, #0x80
	ldr r6, [r10, #0x4c]
	ldr r8, [r10, #0x50]
	beq _0211AA74
	ldr r0, [r10, #0x48]
	cmp r0, #1
	bne _0211AA24
_0211A9E0:
	add r8, r8, #1
	mov r0, r10
	mov r1, r6
	mov r2, r8
	bl FUN_ov38_0211a480
	cmp r0, r4
	beq _0211A9E0
	cmp r0, #0
	bne _0211AA14
	cmp r6, #0xb
	strlt r5, [r10, #0x48]
	strge r11, [r10, #0x48]
	b _0211AA64
_0211AA14:
	mov r0, r10
	mov r1, r6
	mov r2, r8
	b _0211AA5C
_0211AA24:
	sub r0, r0, #3
	cmp r0, #1
	bhi _0211AA64
	sub r5, r7, #1
_0211AA34:
	add r5, r5, #1
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl FUN_ov38_0211a480
	cmp r0, r4
	beq _0211AA34
	mov r0, r10
	mov r1, r6
	mov r2, r5
_0211AA5C:
	add r3, r10, #0x48
	bl FUN_ov38_0211a4d8
_0211AA64:
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA74:
	tst r0, #0x40
	beq _0211AAF4
	ldr r0, [r10, #0x48]
	cmp r0, #3
	moveq r8, #6
	beq _0211AA94
	cmp r0, #4
	moveq r8, #6
_0211AA94:
	sub r8, r8, #1
	mov r0, r10
	mov r1, r6
	mov r2, r8
	bl FUN_ov38_0211a480
	cmp r0, r4
	beq _0211AA94
	cmp r0, #0
	ldreq r0, [r10, #0x48]
	cmpeq r0, #1
	bne _0211AAD0
	cmp r6, #0xb
	strlt r5, [r10, #0x48]
	strge r11, [r10, #0x48]
	b _0211AAE4
_0211AAD0:
	mov r0, r10
	mov r1, r6
	mov r2, r8
	add r3, r10, #0x48
	bl FUN_ov38_0211a4d8
_0211AAE4:
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AAF4:
	tst r0, #0x20
	beq _0211ABB4
	ldr r0, [r10, #0x48]
	cmp r0, #1
	bne _0211AB6C
	ldr r7, _0211AE64 ; =0x4EC4EC4F
	mov r5, #0x1a
_0211AB10:
	add r2, r6, #0x19
	smull r1, r6, r7, r2
	mov r0, r2, lsr #0x1f
	add r6, r0, r6, asr #3
	smull r0, r1, r5, r6
	sub r6, r2, r0
	mov r0, r10
	mov r1, r6
	mov r2, r8
	bl FUN_ov38_0211a480
	cmp r0, r4
	ldrneh r1, [r10, #0x54]
	cmpne r0, r1
	beq _0211AB10
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r10
	mov r1, r6
	mov r2, r8
	add r3, r10, #0x48
	bl FUN_ov38_0211a4d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB6C:
	cmp r0, #3
	bne _0211AB98
	ldr r0, _0211AE68 ; =0x0209A454
	ldr r0, [r0, #4]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r11, [r10, #0x48]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB98:
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r10, #0x48]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ABB4:
	tst r0, #0x10
	beq _0211AC74
	ldr r0, [r10, #0x48]
	cmp r0, #1
	bne _0211AC2C
	ldr r7, _0211AE64 ; =0x4EC4EC4F
	mov r5, #0x1a
_0211ABD0:
	add r2, r6, #1
	smull r1, r6, r7, r2
	mov r0, r2, lsr #0x1f
	add r6, r0, r6, asr #3
	smull r0, r1, r5, r6
	sub r6, r2, r0
	mov r0, r10
	mov r1, r6
	mov r2, r8
	bl FUN_ov38_0211a480
	cmp r0, r4
	ldrneh r1, [r10, #0x54]
	cmpne r0, r1
	beq _0211ABD0
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r10
	mov r1, r6
	mov r2, r8
	add r3, r10, #0x48
	bl FUN_ov38_0211a4d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC2C:
	cmp r0, #3
	bne _0211AC58
	ldr r0, _0211AE68 ; =0x0209A454
	ldr r0, [r0, #4]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r11, [r10, #0x48]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC58:
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r10, #0x48]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC74:
	tst r9, #1
	beq _0211ACC0
	ldr r0, [r10, #0x48]
	cmp r0, #1
	beq _0211AC9C
	cmp r0, #3
	beq _0211ACA8
	cmp r0, #4
	beq _0211ACB4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC9C:
	mov r0, r10
	bl FUN_ov38_0211a530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACA8:
	mov r0, r10
	bl FUN_ov38_0211a3b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACB4:
	mov r0, r10
	bl FUN_ov38_0211a430
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACC0:
	tst r9, #2
	beq _0211ACE4
	ldrh r4, [r10, #0x54]
	ldr r1, _0211AE6C ; =0x00004444
	mov r0, r10
	strh r1, [r10, #0x54]
	bl FUN_ov38_0211a530
	strh r4, [r10, #0x54]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACE4:
	tst r9, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r10, #0x48]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD00:
	sub r0, r1, #2
	cmp r0, #1
	bhi _0211AE20
	tst r9, #1
	sub r4, r7, #1
	beq _0211AD78
	ldr r0, [r10, #0x20]
	cmp r0, #0
	beq _0211AD30
	cmp r0, #1
	beq _0211AD44
	b _0211AD58
_0211AD30:
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #6
	mov r7, #0x10
	mov r4, #1
	b _0211AD54
_0211AD44:
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, r11
	mov r7, #0x12
	mov r4, #2
_0211AD54:
	bl FUN_0202cf6c
_0211AD58:
	cmp r4, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r4
	ldrb r1, [r0, #0x289]
	ldr r0, _0211AE58 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	str r7, [r10, #0x60]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD78:
	tst r9, #0x20
	beq _0211ADCC
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r10, #0x20]
	mov r2, #1
	cmp r0, #0
	addge r0, r0, #1
	movge r1, r0, lsr #0x1f
	rsbge r0, r1, r0, lsl #31
	strlt r7, [r10, #0x20]
	addge r0, r1, r0, ror #31
	strge r0, [r10, #0x20]
	ldr r1, [r10, #0x20]
	ldr r0, _0211AE70 ; =0x0209A070
	add r1, r1, #1
	add r1, r10, r1
	ldrb r1, [r1, #0x289]
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADCC:
	tst r9, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r10, #0x20]
	mov r2, #1
	cmp r0, #0
	movlt r0, #1
	addge r0, r0, #1
	movge r1, r0, lsr #0x1f
	rsbge r0, r1, r0, lsl #31
	addge r0, r1, r0, ror #31
	mov r1, r0
	add r1, r1, #1
	str r0, [r10, #0x20]
	add r1, r10, r1
	ldrb r1, [r1, #0x289]
	ldr r0, _0211AE70 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE20:
	tst r9, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	str r7, [r10, #0x10]
	bl FUN_ov38_0211a27c
	ldr r0, _0211AE60 ; =0x0209AC44
	mov r1, r11
	str r5, [r10, #0x48]
	bl FUN_0202cf6c
	mov r0, r10
	bl FUN_ov38_0211c328
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE54: .word 0x00002020
_0211AE58: .word unk_0209F5C0
_0211AE5C: .word unk_0209A0F4
_0211AE60: .word unk_0209AC44
_0211AE64: .word 0x4EC4EC4F
_0211AE68: .word unk_0209A454
_0211AE6C: .word 0x00004444
_0211AE70: .word unk_0209A070
	arm_func_end FUN_ov38_0211a958

	arm_func_start FUN_ov38_0211ae74
FUN_ov38_0211ae74: ; 0x0211AE74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
	mov r5, r3
	ldr r0, _0211AFC0 ; =0x0209F5C0
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_020f6b3c
	ldr r1, [r8, #0xc]
	cmp r1, #1
	bne _0211AED8
	cmp r7, #0x68
	blt _0211AED0
	cmp r7, #0x98
	bge _0211AED0
	cmp r6, #0x68
	blt _0211AED0
	cmp r6, #0x80
	movlt r0, #0xb
	blt _0211AF3C
_0211AED0:
	mov r0, #0
	b _0211AF3C
_0211AED8:
	sub r1, r1, #2
	cmp r1, #1
	bhi _0211AF30
	cmp r7, #0x38
	blt _0211AF08
	cmp r7, #0x68
	bge _0211AF08
	cmp r6, #0x88
	blt _0211AF08
	cmp r6, #0xa0
	movlt r0, #0x10
	blt _0211AF3C
_0211AF08:
	cmp r7, #0x98
	blt _0211AF2C
	cmp r7, #0xc8
	bge _0211AF2C
	cmp r6, #0x88
	blt _0211AF2C
	cmp r6, #0xa0
	movlt r0, #0x12
	blt _0211AF3C
_0211AF2C:
	b _0211AED0
_0211AF30:
	sub r1, r0, #0xa
	cmp r1, #2
	movls r0, r4
_0211AF3C:
	cmp r0, #1
	bne _0211AFB8
	mov r0, r6, asr #2
	add r1, r6, r0, lsr #29
	mov r0, r7, asr #2
	mov r1, r1, asr #3
	add r0, r7, r0, lsr #29
	sub r1, r1, #7
	mov r2, r0, asr #3
	add r0, r1, r1, lsr #31
	sub r6, r2, #3
	mov r4, r0, asr #1
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl FUN_ov38_0211a480
	ldr r1, _0211AFC4 ; =0x00002020
	cmp r0, r1
	bne _0211AFA0
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #4]
	str r0, [r5, #8]
	strh r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFA0:
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov38_0211a4d8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFB8:
	str r0, [r5]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFC0: .word unk_0209F5C0
_0211AFC4: .word 0x00002020
	arm_func_end FUN_ov38_0211ae74

	arm_func_start FUN_ov38_0211afc8
FUN_ov38_0211afc8: ; 0x0211AFC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0211B050
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _0211B050
	mov r7, #0
	mov r6, #0x2580
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r5, #1
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r1, [r4, #0x70]
	ldr r0, _0211B0B4 ; =0x0211D3E8
	mov r2, #0xf0
	mov r3, #0x50
	bl FUN_ov16_020f2184
	ldr r0, [r4, #0x70]
	mov r1, r6
	bl DC_FlushRange
	strb r5, [r4, #0x68]
_0211B050:
	ldr r0, [r4, #8]
	cmp r0, #5
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	bl FUN_02042054
	cmp r0, #0x20
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	add r0, r4, #0xf8
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	cmp r0, #1
	moveq r0, #1
	streq r0, [sp, #0x20]
	ldr r0, [r4, #4]
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0B4: .word ov38_0211D3E8
	arm_func_end FUN_ov38_0211afc8

	arm_func_start FUN_ov38_0211b0b8
FUN_ov38_0211b0b8: ; 0x0211B0B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211B1AC
	ldr r2, [r4, #0x28]
	ldr r1, [r4, #0x48]
	cmp r1, r2
	beq _0211B10C
	ldrh r2, [r4, #0x34]
	ldr r6, [r4, #0x28]
	ldr r5, [r4, #0x2c]
	ldr r3, [r4, #0x30]
	ldr r0, _0211B27C ; =0x0209AC44
	mov r1, #8
	str r6, [r4, #0x48]
	str r5, [r4, #0x4c]
	str r3, [r4, #0x50]
	strh r2, [r4, #0x54]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B10C:
	cmp r2, #1
	beq _0211B128
	cmp r2, #3
	beq _0211B19C
	cmp r2, #4
	beq _0211B1A4
	ldmfd sp!, {r4, r5, r6, pc}
_0211B128:
	ldr r3, [r4, #0x2c]
	ldr r1, [r4, #0x4c]
	cmp r3, r1
	ldreq r2, [r4, #0x30]
	ldreq r1, [r4, #0x50]
	cmpeq r2, r1
	beq _0211B174
	ldrh r2, [r4, #0x34]
	ldr r6, [r4, #0x28]
	ldr r5, [r4, #0x2c]
	ldr r3, [r4, #0x30]
	ldr r0, _0211B27C ; =0x0209AC44
	mov r1, #8
	str r6, [r4, #0x48]
	str r5, [r4, #0x4c]
	str r3, [r4, #0x50]
	strh r2, [r4, #0x54]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B174:
	ldr r1, [r4, #0x3c]
	cmp r3, r1
	ldreq r1, [r4, #0x40]
	cmpeq r2, r1
	ldreqh r2, [r4, #0x34]
	ldreqh r1, [r4, #0x44]
	cmpeq r2, r1
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov38_0211a530
	ldmfd sp!, {r4, r5, r6, pc}
_0211B19C:
	bl FUN_ov38_0211a3b8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1A4:
	bl FUN_ov38_0211a430
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1AC:
	sub r1, r1, #2
	cmp r1, #1
	bhi _0211B240
	ldr r0, [r4, #0x28]
	sub r0, r0, #0xf
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211B200
_0211B1CC: ; jump table
	b _0211B1DC ; case 0
	b _0211B1E8 ; case 1
	b _0211B1DC ; case 2
	b _0211B1F4 ; case 3
_0211B1DC:
	ldr r0, _0211B27C ; =0x0209AC44
	mov r1, #8
	b _0211B1FC
_0211B1E8:
	ldr r0, _0211B27C ; =0x0209AC44
	mov r1, #6
	b _0211B1FC
_0211B1F4:
	ldr r0, _0211B27C ; =0x0209AC44
	mov r1, #4
_0211B1FC:
	bl FUN_0202cf6c
_0211B200:
	ldr r6, _0211B280 ; =0x0209A070
	ldr r1, [r4, #0x28]
	mov r0, r6
	bl FUN_ov16_020f6d3c
	movs r5, r0
	bmi _0211B234
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldr r0, _0211B284 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6530
_0211B234:
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B240:
	ldr r1, [r4, #0x28]
	cmp r1, #0xb
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #3
	mov r2, #0
	mov r1, r5
	str r2, [r4, #0x10]
	bl FUN_ov38_0211a27c
	ldr r0, _0211B27C ; =0x0209AC44
	mov r1, #4
	str r5, [r4, #0x48]
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov38_0211c328
	ldmfd sp!, {r4, r5, r6, pc}
_0211B27C: .word unk_0209AC44
_0211B280: .word unk_0209A070
_0211B284: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211b0b8

	arm_func_start FUN_ov38_0211b288
FUN_ov38_0211b288: ; 0x0211B288
	sub r0, r1, #0xf
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211B2B8
_0211B298: ; jump table
	b _0211B2A8 ; case 0
	b _0211B2A8 ; case 1
	b _0211B2B0 ; case 2
	b _0211B2B0 ; case 3
_0211B2A8:
	mov r0, #0
	bx lr
_0211B2B0:
	mov r0, #1
	bx lr
_0211B2B8:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov38_0211b288

	arm_func_start FUN_ov38_0211b2c0
FUN_ov38_0211b2c0: ; 0x0211B2C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x28]
	bl FUN_ov38_0211b288
	movs r4, r0
	bmi _0211B2F4
	ldr r0, [r5, #0x24]
	cmp r4, r0
	bge _0211B2F4
	ldr r0, _0211B304 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r5, #0x20]
_0211B2F4:
	ldr r1, [r5, #0x28]
	ldr r0, _0211B308 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B304: .word unk_0209AC44
_0211B308: .word unk_0209A070
	arm_func_end FUN_ov38_0211b2c0

	arm_func_start FUN_ov38_0211b30c
FUN_ov38_0211b30c: ; 0x0211B30C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x28]
	cmp r1, #4
	bgt _0211B33C
	cmp r1, #1
	blt _0211B3D0
	beq _0211B348
	cmp r1, #3
	cmpne r1, #4
	beq _0211B380
	b _0211B3D0
_0211B33C:
	cmp r1, #0xb
	beq _0211B380
	b _0211B3D0
_0211B348:
	ldr r0, [r4, #0x48]
	cmp r0, r1
	ldreq r1, [r4, #0x4c]
	ldreq r0, [r4, #0x2c]
	cmpeq r1, r0
	bne _0211B370
	ldr r1, [r4, #0x50]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _0211B3D0
_0211B370:
	ldr r0, _0211B418 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	b _0211B3B0
_0211B380:
	ldr r0, [r4, #0x48]
	cmp r0, r1
	ldreq r1, [r4, #0x4c]
	ldreq r0, [r4, #0x2c]
	cmpeq r1, r0
	ldreq r1, [r4, #0x50]
	ldreq r0, [r4, #0x30]
	cmpeq r1, r0
	beq _0211B3B0
	ldr r0, _0211B418 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211B3B0:
	ldrh r0, [r4, #0x34]
	ldr r3, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	str r3, [r4, #0x48]
	str r2, [r4, #0x4c]
	str r1, [r4, #0x50]
	strh r0, [r4, #0x54]
_0211B3D0:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x38]
	cmp r0, r1
	bne _0211B3F4
	ldr r0, _0211B41C ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_0211B3F4:
	ldr r4, _0211B41C ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211B418: .word unk_0209AC44
_0211B41C: .word unk_0209A070
	arm_func_end FUN_ov38_0211b30c

	arm_func_start FUN_ov38_0211b420
FUN_ov38_0211b420: ; 0x0211B420
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B540 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreq r1, [r5, #0xc]
	ldreq r0, [r5, #0x10]
	cmpeq r1, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211B4D4
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	bne _0211B4AC
	mov r0, #1
	strb r0, [r5, #0x15]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	add r3, r5, #0x28
	bl FUN_ov38_0211ae74
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0211B4AC
	mov r0, r5
	bl FUN_ov38_0211b2c0
_0211B4AC:
	ldrh r1, [r4]
	mov r0, r5
	add r3, r5, #0x38
	str r1, [r5, #0x18]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x1c]
	bl FUN_ov38_0211ae74
	mov r0, r5
	bl FUN_ov38_0211b30c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4D4:
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	ldrne r0, [r5, #0x28]
	cmpne r0, #0
	beq _0211B514
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	mov r0, r5
	add r3, r5, #0x38
	bl FUN_ov38_0211ae74
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r1, r0
	bne _0211B514
	mov r0, r5
	bl FUN_ov38_0211b0b8
_0211B514:
	mov r0, #0
	str r0, [r5, #0x38]
	str r0, [r5, #0x3c]
	str r0, [r5, #0x40]
	strh r0, [r5, #0x44]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	strh r0, [r5, #0x34]
	strb r0, [r5, #0x15]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B540: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211b420

	arm_func_start FUN_ov38_0211b544
FUN_ov38_0211b544: ; 0x0211B544
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, #0
	mov r1, r6
	add r0, r4, #0x18c
	mov r2, #0xfc
	bl MI_CpuFill8
	ldr r0, _0211B5C8 ; =0x0211D430
	add r1, r4, #0x18c
	bl FUN_ov16_020f316c
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _0211B594
	mov r5, #0x2580
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	ldr r0, [r4, #0x70]
	mov r1, r5
	bl DC_FlushRange
_0211B594:
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0211B5BC
	mov r2, #0
_0211B5A4:
	ldr r1, [r4, #0x74]
	mov r0, r2, lsl #1
	strh r2, [r1, r0]
	add r2, r2, #1
	cmp r2, #0x12c
	blt _0211B5A4
_0211B5BC:
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B5C8: .word ov38_0211D430
	arm_func_end FUN_ov38_0211b544

	arm_func_start FUN_ov38_0211b5cc
FUN_ov38_0211b5cc: ; 0x0211B5CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r9, _0211B774 ; =0x0211D15C
	mov r4, r0
	ldr r0, [r9]
	ldr r8, [r4, #0x18c]
	cmp r0, #0
	mov r5, #0
	beq _0211B610
	add r7, r4, #0x18c
	mov r6, #0xc
_0211B5F4:
	ldr r3, [r9, #4]
	mov r2, r8
	mla r1, r3, r6, r7
	bl FUN_ov16_020f32b4
	ldr r0, [r9, #8]!
	cmp r0, #0
	bne _0211B5F4
_0211B610:
	ldr r9, [r4, #0x270]
	cmp r9, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0x17c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0x274]
	mov r7, #0
	add r6, r9, r0
	mov r8, r7
	str r0, [r4, #0x188]
	cmp r9, r6
	bhs _0211B690
_0211B644:
	mov r0, r9
	bl FUN_ov38_02119f00
	cmp r0, #2
	addeq r8, r8, #1
	addeq r9, r9, #2
	beq _0211B688
	cmp r0, #1
	bne _0211B690
	ldrsb r0, [r9]
	cmp r0, #0xd
	beq _0211B678
	cmp r0, #0xa
	bne _0211B684
_0211B678:
	cmp r8, #0
	movne r8, r5
	addne r7, r7, #1
_0211B684:
	add r9, r9, #1
_0211B688:
	cmp r9, r6
	blo _0211B644
_0211B690:
	ldr r6, _0211B778 ; =0x0209A250
	ldr r1, [r4, #0x188]
	mov r0, r6
	str r7, [r4, #0x184]
	bl FUN_0202de44
	str r0, [r4, #0x17c]
	mov r0, r6
	mov r1, r7, lsl #2
	bl FUN_0202de44
	str r0, [r4, #0x180]
	ldr r0, [r4, #0x17c]
	ldr r1, [r4, #0x270]
	ldr r2, [r4, #0x188]
	bl memcpy
	ldr r8, [r4, #0x17c]
	ldr r0, [r4, #0x188]
	mov r6, #0
	add r10, r8, r0
	mov r7, r6
	mov r9, r8
	cmp r8, r10
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B6E8:
	mov r0, r8
	bl FUN_ov38_02119f00
	mov r1, r0
	cmp r1, #2
	bne _0211B734
	mov r0, r8
	cmp r7, #0
	moveq r9, r8
	bl FUN_ov38_02119f40
	ldr r1, [r4, #0x27c]
	ldr r2, [r4, #0x280]
	bl FUN_ov38_02119f6c
	cmp r0, #0
	strneb r0, [r8]
	movne r0, r0, asr #8
	strneb r0, [r8, #1]
	add r7, r7, #1
	add r8, r8, #2
	b _0211B768
_0211B734:
	cmp r1, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsb r0, [r8]
	cmp r0, #0xd
	beq _0211B750
	cmp r0, #0xa
	bne _0211B764
_0211B750:
	cmp r7, #0
	ldrne r0, [r4, #0x180]
	movne r7, r5
	strne r9, [r0, r6, lsl #2]
	addne r6, r6, #1
_0211B764:
	strb r5, [r8], #1
_0211B768:
	cmp r8, r10
	blo _0211B6E8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B774: .word ov38_0211D15C
_0211B778: .word unk_0209A250
	arm_func_end FUN_ov38_0211b5cc

	arm_func_start FUN_ov38_0211b77c
FUN_ov38_0211b77c: ; 0x0211B77C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x18c
	mov r4, #0xc
_0211B78C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x15
	blt _0211B78C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov38_0211b77c

	arm_func_start FUN_ov38_0211b7a4
FUN_ov38_0211b7a4: ; 0x0211B7A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	mov r5, #2
	bl G2_GetBG3CharPtr
	mov r8, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r9, [r4, #0x1c8]
	mov r7, r6
	cmp r9, #0
	beq _0211B834
	ldr r0, [r9, #0xc]
	mov r10, #7
	ldr r1, [r9, #0x10]
	mov r3, r10
	add r0, r9, r0
	mov r2, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r1, r6
	mov r2, r10
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	add r0, r9, r0
	mov r1, r8
	bl GX_LoadBG3Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211B834:
	ldr r9, [r4, #0x1f8]
	cmp r9, #0
	beq _0211B88C
	ldr r0, [r9, #0xc]
	mov r10, #8
	ldr r1, [r9, #0x10]
	mov r3, r10
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r10
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	mov r1, r8
	add r0, r9, r0
	ldr r2, [r9, #0x18]
	bl GX_LoadBG3Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211B88C:
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0211B8AC
	add r2, r7, #1
	mov r1, #0x258
	mov r3, #0
	bl FUN_ov16_020f1868
	mov r7, r0
_0211B8AC:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0211B8CC
	mov r1, r8
	mov r2, #0x2580
	str r8, [r4, #0x6c]
	bl GX_LoadBG3Char
	add r8, r8, #0x2580
_0211B8CC:
	ldr r0, [r4, #0x28c]
	add r12, r4, #0x28c
	cmp r0, #0
	ldrne r0, [r12, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211B914
	ldrh r3, [r12, #0xc]
	ldrh r1, [r12, #0xe]
	ldr r0, [r12]
	add r2, r7, #1
	mul r1, r3, r1
	mov r1, r1, lsl #1
	mov r3, #0
	str r8, [r12, #8]
	bl FUN_ov16_020f1868
_0211B914:
	bl G2_GetBG1CharPtr
	mov r8, #0x20
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r9, [r4, #0x1a4]
	mov r7, r6
	cmp r9, #0
	beq _0211B990
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	mov r2, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	add r0, r9, r0
	mov r1, r8
	bl GX_LoadBG1Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211B990:
	ldr r9, [r4, #0x1b0]
	cmp r9, #0
	beq _0211B9E4
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl GX_LoadBG1Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211B9E4:
	ldr r9, [r4, #0x1bc]
	cmp r9, #0
	beq _0211BA38
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl GX_LoadBG1Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BA38:
	ldr r9, [r4, #0x1d4]
	cmp r9, #0
	beq _0211BA8C
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl GX_LoadBG1Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BA8C:
	ldr r9, [r4, #0x1e0]
	cmp r9, #0
	beq _0211BAE0
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	mov r1, r8
	add r0, r9, r0
	bl GX_LoadBG1Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BAE0:
	ldr r9, [r4, #0x1ec]
	cmp r9, #0
	beq _0211BB34
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r9, #0x14]
	ldr r2, [r9, #0x18]
	add r0, r9, r0
	mov r1, r8
	bl GX_LoadBG1Char
	ldr r0, [r9, #0x18]
	add r8, r8, r0
_0211BB34:
	ldr r5, [r4, #0x204]
	cmp r5, #0
	beq _0211BB8C
	ldr r0, [r5, #0xc]
	mov r9, #6
	ldr r1, [r5, #0x10]
	mov r3, r9
	add r0, r5, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r5
	mov r2, r9
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r0, r5, r0
	mov r1, r8
	bl GX_LoadBG1Char
	ldr r0, [r5, #0x18]
	add r8, r8, r0
_0211BB8C:
	ldr r5, [r4, #0x210]
	cmp r5, #0
	beq _0211BBE4
	ldr r0, [r5, #0xc]
	mov r9, #3
	ldr r1, [r5, #0x10]
	mov r3, r9
	add r0, r5, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r5
	mov r2, r9
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r0, r5, r0
	mov r1, r8
	bl GX_LoadBG1Char
	ldr r0, [r5, #0x18]
	add r8, r8, r0
_0211BBE4:
	ldr r5, [r4, #0x21c]
	cmp r5, #0
	beq _0211BC3C
	ldr r0, [r5, #0xc]
	mov r9, #5
	ldr r1, [r5, #0x10]
	mov r3, r9
	add r0, r5, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r5
	mov r2, r9
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r0, r5, r0
	mov r1, r8
	bl GX_LoadBG1Char
	ldr r0, [r5, #0x18]
	add r8, r8, r0
_0211BC3C:
	ldr r5, [r4, #0x228]
	cmp r5, #0
	beq _0211BC88
	ldr r0, [r5, #0xc]
	mov r9, #4
	ldr r1, [r5, #0x10]
	mov r3, r9
	add r0, r5, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r0, r5
	mov r2, r9
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r8
	add r0, r5, r0
	bl GX_LoadBG1Char
_0211BC88:
	ldr r5, [r4, #0x198]
	cmp r5, #0
	beq _0211BCE8
	mov r4, #1
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, r6
	mov r3, r4
	add r0, r5, r0
	bl FUN_ov16_020f1868
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r6
	add r0, r5, r0
	bl GX_LoadBG2Char
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r5, r0
	mov r1, r6
	bl GX_LoadBG2Scr
_0211BCE8:
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov38_0211b7a4

	arm_func_start FUN_ov38_0211bcf0
FUN_ov38_0211bcf0: ; 0x0211BCF0
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x28c]
	add lr, r0, #0x28c
	cmp r1, #0
	ldrne r0, [lr, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0xc]
	ldrh r1, [lr, #0xe]
	mov r12, #0
	ldr r0, [lr, #4]
	mul r3, r2, r1
	ldr r1, [lr, #8]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x10]
	bl GX_LoadBG3Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov38_0211bcf0

	arm_func_start FUN_ov38_0211bd48
FUN_ov38_0211bd48: ; 0x0211BD48
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x28c]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x290]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #0x13
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211BDC4 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211BDC4: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211bd48

	arm_func_start FUN_ov38_0211bdc8
FUN_ov38_0211bdc8: ; 0x0211BDC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x28c
	mov r0, r4
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl FUN_ov16_020f2f20
	ldr r5, _0211BE68 ; =0x02099F50
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	mov r2, #4
	bl FUN_02043310
	mov r1, #3
	str r1, [sp]
	stmib sp, {r1, r6}
	mov r1, #0
	str r1, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r4, #0xc]
	ldrh r3, [r4, #0xe]
	ldr r1, [r4, #4]
	mov r0, r9
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	strb r6, [r4, #0x10]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211BE68: .word unk_02099F50
	arm_func_end FUN_ov38_0211bdc8

	arm_func_start FUN_ov38_0211be6c
FUN_ov38_0211be6c: ; 0x0211BE6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0211BF84 ; =0x0209F5C0
	mov r4, #0
	mov r6, r1
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_ov16_020f616c
	cmp r6, #9
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211BE98: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	ldmfd sp!, {r4, r5, r6, pc} ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	b _0211BEC0 ; case 5
	b _0211BEE4 ; case 6
	b _0211BF08 ; case 7
	b _0211BF2C ; case 8
	b _0211BF50 ; case 9
_0211BEC0:
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #5
	bl FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211BEE4:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211BF08:
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #7
	bl FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211BF2C:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211BF50:
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #4
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #9
	bl FUN_ov16_020f60f8
	ldmfd sp!, {r4, r5, r6, pc}
_0211BF84: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211be6c

	arm_func_start FUN_ov38_0211bf88
FUN_ov38_0211bf88: ; 0x0211BF88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0211C030 ; =0x0209F5C0
	mov r5, #0
	mov r4, r0
	mov r0, r7
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_020f60f8
	mov r0, r7
	mov r1, r5
	mov r2, #4
	bl FUN_ov16_020f60f8
	mov r6, #5
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020f6084
	mov r1, r5
	mov r5, #6
	mov r0, r7
	mov r2, r5
	bl FUN_ov16_020f6084
	ldr r1, [r4, #0x28]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x38]
	cmp r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x48]
	cmp r0, #3
	beq _0211C010
	cmp r0, #4
	beq _0211C020
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C010:
	mov r0, r4
	mov r1, r6
	bl FUN_ov38_0211be6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C020:
	mov r0, r4
	mov r1, r5
	bl FUN_ov38_0211be6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C030: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211bf88

	arm_func_start FUN_ov38_0211c034
FUN_ov38_0211c034: ; 0x0211C034
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	ldr r0, _0211C0F0 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r0, #0xf
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211C0E4
_0211C070: ; jump table
	b _0211C080 ; case 0
	b _0211C080 ; case 1
	b _0211C0C8 ; case 2
	b _0211C0C8 ; case 3
_0211C080:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _0211C0B4
	ldr r0, _0211C0F4 ; =0x020A0BB4
	add r1, r4, #0xf8
	bl FUN_ov38_0211a12c
	ldr r0, _0211C0F8 ; =0x020A9C40
	mov r1, r5
	mov r2, #1
	bl FUN_020460a8
	mov r0, r4
	bl FUN_ov38_0211a2ec
	b _0211C0E4
_0211C0B4:
	cmp r0, #3
	bne _0211C0E4
	mov r0, r4
	bl FUN_ov38_0211a35c
	b _0211C0E4
_0211C0C8:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	moveq r0, #3
	streq r0, [r4, #0x10]
	beq _0211C0E4
	cmp r0, #3
	streq r5, [r4, #0x10]
_0211C0E4:
	mov r0, #0
	str r0, [r4, #0x60]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C0F0: .word unk_0209F5C0
_0211C0F4: .word unk_020A0BB4
_0211C0F8: .word unk_020A9C40
	arm_func_end FUN_ov38_0211c034

	arm_func_start FUN_ov38_0211c0fc
FUN_ov38_0211c0fc: ; 0x0211C0FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r4, [r10, #0x21c]
	cmp r4, #0
	beq _0211C178
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	mov r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r1, [r4, #0xc]
	ldr r0, _0211C320 ; =0x0209F5C0
	add r5, r4, r1
	mov r1, r6
	mov r3, r6
	mov r2, #1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r4
	mov r1, r6
	mov r2, #5
	bl FUN_ov16_020f1138
_0211C178:
	ldr r9, [r10, #0x228]
	cmp r9, #0
	beq _0211C2D8
	ldr r3, [r9, #0xc]
	mov r0, #0xf
	str r0, [sp]
	mov r8, #4
	str r8, [sp, #4]
	mov r4, #7
	str r4, [sp, #8]
	mov r7, #0x11
	str r7, [sp, #0xc]
	mov r6, #6
	str r6, [sp, #0x10]
	mov r5, #3
	mov r1, #0
	add r9, r9, r3
	str r5, [sp, #0x14]
	mov r3, r1
	str r3, [sp, #0x18]
	ldr r0, _0211C320 ; =0x0209F5C0
	mov r2, #1
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add r0, r9, #0x24
	strh r4, [sp, #0x20]
	str r0, [sp, #0x34]
	mov r0, #0
	mov r4, #0x30
	mov r11, #0x18
	strh r7, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r0, [sp, #0x28]
	strh r0, [sp, #0x2a]
	strb r0, [sp, #0x30]
	strh r4, [sp, #0x2c]
	strh r11, [sp, #0x2e]
	str r8, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211C320 ; =0x0209F5C0
	str r1, [sp, #0x10]
	mov r2, #1
	mov r3, #0x10
	bl FUN_ov16_020f5c34
	mov r1, #0
	stmia sp, {r7, r8}
	mov r0, #0x13
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r9, #0x48
	str r0, [sp, #0x1c]
	ldr r0, _0211C320 ; =0x0209F5C0
	mov r2, #1
	mov r3, r1
	bl FUN_ov16_020f5da0
	mov r1, #0
	mov r0, #0x13
	strh r0, [sp, #0x20]
	add r0, r9, #0x6c
	str r0, [sp, #0x34]
	strh r7, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r4, [sp, #0x2c]
	strh r11, [sp, #0x2e]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r8, [sp]
	add r1, sp, #0x20
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211C320 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x12
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211C2D8:
	ldr r4, _0211C324 ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	str r5, [sp]
	mov r2, #0x10
	mov r3, #0xf
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x28a]
	mov r0, r4
	mov r1, r5
	mov r2, #0x12
	mov r3, #0x11
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x28b]
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C320: .word unk_0209F5C0
_0211C324: .word unk_0209A070
	arm_func_end FUN_ov38_0211c0fc

	arm_func_start FUN_ov38_0211c328
FUN_ov38_0211c328: ; 0x0211C328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	mov r8, #2
	cmp r1, r0
	ldr r6, _0211C65C ; =0x0209F5C0
	mov r5, #0
	beq _0211C550
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f6584
	cmp r0, #0
	bne _0211C550
	ldr r12, [r7, #0x10]
	mov r4, #1
	mov r0, r6
	mov r1, r5
	mov r3, r5
	mov r2, #4
	str r12, [r7, #0xc]
	str r5, [r7, #0x20]
	str r4, [r7, #0x24]
	bl FUN_ov16_020f5f64
	mov r0, r6
	mov r1, r5
	mov r2, #5
	mov r3, r5
	bl FUN_ov16_020f5f64
	ldr r0, _0211C660 ; =0x0209A070
	bl FUN_ov16_020f6c4c
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0211C440
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_020f61f0
	mov r0, r6
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_020f616c
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f616c
	ldr r0, [r7, #0x58]
	mov r1, r5
	cmp r0, #1
	mov r0, r6
	mov r2, r4
	bne _0211C414
	bl FUN_ov16_020f6084
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	b _0211C428
_0211C414:
	bl FUN_ov16_020f60f8
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f6084
_0211C428:
	str r5, [sp, #0x10]
	str r5, [sp, #0x18]
	str r5, [sp, #0x14]
	ldr r0, [r7, #4]
	add r1, sp, #0x10
	b _0211C504
_0211C440:
	sub r0, r0, #2
	cmp r0, #1
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bhi _0211C514
	bl FUN_ov16_020f616c
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f616c
	mov r2, r4
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f616c
	mov r0, r6
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_020f616c
	mov r0, r7
	bl FUN_ov38_0211c0fc
	mov r0, r7
	bl FUN_ov38_0211bd48
	ldr r0, [r7, #0x10]
	ldr r1, _0211C664 ; =0x0211D454
	cmp r0, #2
	ldrne r1, _0211C668 ; =0x0211D47C
	mov r0, r7
	mov r2, #0
	mov r3, #0xa
	bl FUN_ov38_0211bdc8
	ldr r0, [r7, #0x10]
	mov r4, #1
	cmp r0, #3
	moveq r0, #1
	streq r0, [r7, #0x20]
	ldr r0, [r7, #0x20]
	str r8, [r7, #0x24]
	add r0, r0, #1
	add r0, r7, r0
	ldrb r1, [r0, #0x289]
	ldr r0, _0211C660 ; =0x0209A070
	mov r2, r4
	bl FUN_ov16_020f6e8c
	str r5, [sp, #4]
	str r5, [sp, #0xc]
	str r4, [sp, #8]
	ldr r0, [r7, #4]
	add r1, sp, #4
_0211C504:
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	b _0211C550
_0211C514:
	bl FUN_ov16_020f616c
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f616c
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f61f0
	mov r0, r6
	mov r1, r5
	mov r2, #0xa
	bl FUN_ov16_020f60f8
	mov r0, r7
	bl FUN_ov38_0211afc8
_0211C550:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _0211C608
	ldr r0, [r7, #0x48]
	cmp r0, #1
	beq _0211C57C
	cmp r0, #3
	beq _0211C5B8
	cmp r0, #4
	beq _0211C5C4
	b _0211C5D0
_0211C57C:
	mov r4, #9
	mov r0, r7
	mov r1, r4
	bl FUN_ov38_0211be6c
	ldr r1, [r7, #0x50]
	ldr r0, _0211C65C ; =0x0209F5C0
	mov r1, r1, lsl #1
	add r1, r1, #6
	str r1, [sp]
	ldr r1, [r7, #0x4c]
	mov r2, r4
	add r3, r1, #2
	mov r1, #0
	bl FUN_ov16_020f63f0
	b _0211C5D0
_0211C5B8:
	mov r0, r7
	mov r1, #7
	b _0211C5CC
_0211C5C4:
	mov r0, r7
	mov r1, #8
_0211C5CC:
	bl FUN_ov38_0211be6c
_0211C5D0:
	ldr r0, _0211C65C ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f65a4
	cmp r0, #0
	bne _0211C64C
	ldr r0, [r7, #0x64]
	cmp r0, #0
	beq _0211C5FC
	mov r0, r7
	mov r1, r5
	bl FUN_ov38_0211a27c
_0211C5FC:
	mov r0, r7
	bl FUN_ov38_0211bf88
	b _0211C64C
_0211C608:
	mov r4, #0xb
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f6084
	ldr r1, [r7, #0x28]
	cmp r1, #0
	beq _0211C64C
	ldr r0, [r7, #0x38]
	cmp r1, r0
	ldreq r0, [r7, #0x48]
	cmpeq r0, #0xb
	bne _0211C64C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f60f8
_0211C64C:
	ldr r0, _0211C65C ; =0x0209F5C0
	bl FUN_ov16_020f6274
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C65C: .word unk_0209F5C0
_0211C660: .word unk_0209A070
_0211C664: .word ov38_0211D454
_0211C668: .word ov38_0211D47C
	arm_func_end FUN_ov38_0211c328

	arm_func_start FUN_ov38_0211c66c
FUN_ov38_0211c66c: ; 0x0211C66C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r1, [r10, #0x1d4]
	mov r8, #0xa
	cmp r1, #0
	mov r6, #2
	add r5, sp, #0x14
	mov r7, #0
	beq _0211C758
	ldr r0, [r1, #0xc]
	mov r4, #0x14
	add r9, r1, r0
	mov r0, #5
	strh r0, [sp, #0x14]
	mov r0, #4
	strh r0, [sp, #0x1a]
	mov r11, #0x50
	mov r0, #0x20
	strh r0, [sp, #0x22]
	strh r4, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r9, [sp, #0x28]
	strh r11, [sp, #0x20]
	str r6, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, #1
	mov r3, #3
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r1, #4
	mov r0, #0x20
	strh r0, [sp, #0x22]
	add r0, r9, #0x50
	str r0, [sp, #0x28]
	strh r1, [sp, #0x1a]
	mov r3, r1
	mov r1, #0x11
	strh r1, [sp, #0x14]
	strh r4, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r11, [sp, #0x20]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r6, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, #1
	mov r1, r7
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211C758:
	ldr r1, [r10, #0x1e0]
	cmp r1, #0
	beq _0211C84C
	ldr r0, [r1, #0xc]
	mov r4, #0x14
	add r9, r1, r0
	mov r0, #5
	strh r0, [sp, #0x14]
	mov r0, #0x50
	mov r11, #4
	strh r0, [sp, #0x20]
	mov r0, #0x20
	strh r0, [sp, #0x22]
	strh r4, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r9, [sp, #0x28]
	strh r11, [sp, #0x1a]
	str r6, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, #1
	mov r3, #5
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, #5
	mov r1, r7
	bl FUN_ov16_020f6084
	mov r0, #0x50
	strh r0, [sp, #0x20]
	mov r0, #0x20
	strh r0, [sp, #0x22]
	add r0, r9, #0x50
	str r0, [sp, #0x28]
	mov r0, #0x11
	strh r4, [sp, #0x16]
	strh r0, [sp, #0x14]
	mov r4, #6
	strh r8, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r6, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, #1
	mov r1, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020f6084
_0211C84C:
	ldr r1, [r10, #0x1ec]
	cmp r1, #0
	beq _0211C940
	ldr r0, [r1, #0xc]
	mov r4, #0x14
	add r9, r1, r0
	mov r0, #5
	strh r0, [sp, #0x14]
	mov r0, #0x50
	mov r11, #4
	strh r0, [sp, #0x20]
	mov r0, #0x20
	strh r0, [sp, #0x22]
	strh r4, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r9, [sp, #0x28]
	str r6, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, #1
	mov r3, #7
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, #7
	mov r1, r7
	bl FUN_ov16_020f6084
	mov r0, #0x50
	strh r0, [sp, #0x20]
	mov r0, #0x20
	strh r0, [sp, #0x22]
	add r0, r9, #0x50
	str r0, [sp, #0x28]
	mov r0, #0x11
	strh r4, [sp, #0x16]
	strh r0, [sp, #0x14]
	mov r4, #8
	strh r8, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r6, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, #1
	mov r1, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020f6084
_0211C940:
	ldr r2, [r10, #0x1a4]
	cmp r2, #0
	beq _0211C9AC
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r6, r2, r0
	mov r2, #1
	mov r4, #6
	mov r3, #0x1e
	mov r0, #0xe
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r2, [sp, #0x14]
	strh r4, [sp, #0x16]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r6, [sp, #0x28]
	stmia sp, {r1, r5}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r3, #0x13
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211C9AC:
	ldr r2, [r10, #0x1b0]
	cmp r2, #0
	beq _0211CA24
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r9, r2, r0
	mov r0, #3
	mov r8, #0x1a
	mov r6, #0xc
	mov r4, #0xd0
	strh r0, [sp, #0x14]
	mov r3, #0x60
	mov r0, #7
	strh r0, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r3, [sp, #0x22]
	mov r2, #1
	strb r1, [sp, #0x24]
	str r9, [sp, #0x28]
	stmia sp, {r1, r5}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211CA24:
	ldr r2, [r10, #0x1bc]
	cmp r2, #0
	beq _0211CA94
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r4, r2, r0
	mov r0, #3
	mov r3, #0x1a
	mov r2, #0xc
	strh r0, [sp, #0x14]
	mov r0, #7
	strh r0, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r4, [sp, #0x28]
	stmia sp, {r1, r5}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, #1
	mov r3, #2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211CA94:
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, #2
	bl FUN_ov16_020f6084
	ldr r1, [r10, #0x204]
	cmp r1, #0
	beq _0211CB28
	ldr r0, [r1, #0xc]
	mov r4, #0xa
	add r8, r1, r0
	mov r2, #1
	mov r6, #7
	mov r3, #0x1e
	mov r1, #0xf0
	mov r0, #0x50
	strh r3, [sp, #0x18]
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r2, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r4, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	str r8, [sp, #0x28]
	mov r0, #3
	stmia sp, {r0, r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020f6084
_0211CB28:
	ldr r1, [r10, #0x210]
	mov r8, #7
	cmp r1, #0
	mov r6, #0xa
	mov r2, #3
	mov r4, #2
	beq _0211CBB8
	ldr r0, [r1, #0xc]
	mov r3, #0xd
	add r11, r1, r0
	mov r0, #6
	mov r1, #0x30
	strh r0, [sp, #0x18]
	mov r0, #0x18
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	str r11, [sp, #0x28]
	strh r3, [sp, #0x14]
	strh r3, [sp, #0x16]
	mov r9, #0xb
	strh r2, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strb r7, [sp, #0x24]
	stmia sp, {r2, r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r3, r9
	mov r2, #1
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, r9
	bl FUN_ov16_020f6084
_0211CBB8:
	ldr r11, [r10, #0x1c8]
	cmp r11, #0
	beq _0211CC30
	ldr r9, [r10, #0x50]
	ldr r0, [r11, #0xc]
	ldr r3, [r10, #0x4c]
	mov r1, #0
	mov r2, #4
	mov r9, r9, lsl #1
	add r0, r11, r0
	add r9, r9, #6
	add r3, r3, #2
	strh r3, [sp, #0x14]
	str r0, [sp, #0x28]
	strh r9, [sp, #0x16]
	strh r2, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r1, [sp, #0x24]
	stmia sp, {r4, r5}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r2, r1
	mov r3, #9
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_0211CC30:
	ldr r2, [r10, #0x74]
	mov r1, #0x1e
	mov r0, #1
	strh r1, [sp, #0x18]
	str r2, [sp, #0x28]
	mov r4, #0x13
	strh r0, [sp, #0x14]
	strh r8, [sp, #0x16]
	strh r6, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strh r7, [sp, #0x22]
	strb r7, [sp, #0x24]
	stmia sp, {r0, r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_020f616c
	ldr r1, [r10, #0x1f8]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r2, #2
	add r3, r1, r0
	mov r1, #0x20
	mov r0, #3
	strh r2, [sp, #0x16]
	strh r1, [sp, #0x18]
	strh r0, [sp, #0x1a]
	str r3, [sp, #0x28]
	strh r7, [sp, #0x14]
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strh r7, [sp, #0x22]
	strb r7, [sp, #0x24]
	str r7, [sp]
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	ldr r0, _0211CD10 ; =0x0209F5C0
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CD10: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211c66c

	arm_func_start FUN_ov38_0211cd14
FUN_ov38_0211cd14: ; 0x0211CD14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	mov r4, r0
	sub r2, r3, #1
	mov r1, #1
	ldr r0, _0211CEA8 ; =0x0209A454
	str r3, [r4, #8]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	strb r3, [r4, #0x14]
	strb r3, [r4, #0x15]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r3, [r4, #0x28]
	str r3, [r4, #0x2c]
	str r3, [r4, #0x30]
	strh r3, [r4, #0x34]
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	str r3, [r4, #0x40]
	strh r3, [r4, #0x44]
	str r3, [r4, #0x60]
	str r3, [r4, #0x20]
	str r1, [r4, #0x24]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	str r3, [r4, #0x58]
	bl FUN_0204204c
	cmp r0, #0x19
	bne _0211CD98
	mov r0, r4
	bl FUN_ov38_0211a35c
_0211CD98:
	add r0, r4, #0x89
	mov r6, #0
	mov r5, #3
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x200
	bl MI_CpuFill8
	ldr r0, _0211CEAC ; =0x0209A070
	mov r1, r5
	bl FUN_ov16_020f6c20
	add r0, r4, #0x28c
	mov r1, #1
	bl FUN_ov16_020f2f7c
	add r0, r4, #0x28c
	mov r1, #0x16
	mov r2, #4
	bl FUN_ov16_020f2fa8
	ldr r5, _0211CEB0 ; =0x0209A250
	mov r1, #0x2580
	mov r0, r5
	str r6, [r4, #0x17c]
	str r6, [r4, #0x180]
	str r6, [r4, #0x184]
	str r6, [r4, #0x188]
	strb r6, [r4, #0x288]
	bl FUN_0202de44
	str r0, [r4, #0x70]
	mov r0, r5
	mov r1, #0x258
	bl FUN_0202de44
	str r0, [r4, #0x74]
	mov r0, r4
	mov r1, r6
	bl FUN_ov38_0211a27c
	ldr r5, _0211CEB4 ; =0x020A0BB4
	add r0, r4, #0x78
	mov r1, r5
	strb r6, [r4, #0x68]
	str r6, [r4, #0x6c]
	bl FUN_ov38_0211a1d4
	mov r1, r5
	add r0, r4, #0xf8
	bl FUN_ov38_0211a1d4
	add r0, r4, #0x78
	strb r6, [r4, #0xf7]
	strb r6, [r4, #0xf6]
	bl STD_GetStringLength
	mov r6, #0
	ldr r7, _0211CEB8 ; =0x0209F5C0
	str r0, [r4, #0x178]
	cmp r0, #0x6c
	movgt r0, #0x6c
	strgt r0, [r4, #0x178]
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f5a58
	bl G2_GetBG3ScrPtr
	mov r5, r0
	bl G2_GetBG1ScrPtr
	mov r3, r0
	mov r2, r5
	mov r1, r6
	mov r0, r7
	str r6, [sp]
	bl FUN_ov16_020f5b6c
	mov r0, r4
	bl FUN_ov38_0211b544
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CEA8: .word unk_0209A454
_0211CEAC: .word unk_0209A070
_0211CEB0: .word unk_0209A250
_0211CEB4: .word unk_020A0BB4
_0211CEB8: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211cd14

	arm_func_start FUN_ov38_0211cebc
FUN_ov38_0211cebc: ; 0x0211CEBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211CED4: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _0211CEEC ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	b _0211CF28 ; case 3
	b _0211CF78 ; case 4
	b _0211CF78 ; case 5
_0211CEEC:
	add r0, r6, #0x18c
	mov r1, #0x15
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov38_0211b5cc
	mov r1, #0
	mov r0, r6
	mov r2, r1
	add r3, r6, #0x48
	bl FUN_ov38_0211a4d8
	mov r0, #2
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CF28:
	ldr r5, _0211CF94 ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5a58
	mov r0, r6
	bl FUN_ov38_0211c66c
	mov r0, r6
	bl FUN_ov38_0211afc8
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f672c
	mov r0, #6
	bl FUN_ov16_020f1490
	mov r0, #4
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211CF78:
	bl FUN_ov38_0211c328
	mov r0, r6
	bl FUN_ov38_0211c034
	ldr r0, _0211CF94 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211CF94: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211cebc

	arm_func_start FUN_ov38_0211cf98
FUN_ov38_0211cf98: ; 0x0211CF98
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0211CFBC
	cmp r1, #4
	cmpne r1, #5
	beq _0211CFCC
	ldmfd sp!, {r4, pc}
_0211CFBC:
	bl FUN_ov38_0211b7a4
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211CFCC:
	ldrb r0, [r4, #0x68]
	cmp r0, #0
	ldrne r0, [r4, #0x70]
	cmpne r0, #0
	beq _0211CFF4
	ldr r1, [r4, #0x6c]
	mov r3, #0
	mov r2, #0x2580
	strb r3, [r4, #0x68]
	bl GX_LoadBG3Char
_0211CFF4:
	mov r0, r4
	bl FUN_ov38_0211bcf0
	ldr r0, _0211D00C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211D00C: .word unk_0209F5C0
	arm_func_end FUN_ov38_0211cf98

	arm_func_start FUN_ov38_0211d010
FUN_ov38_0211d010: ; 0x0211D010
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	bl G2_GetBG3ScrPtr
	mov r6, r0
	bl G2_GetBG1ScrPtr
	mov r5, r0
	bl G2_GetBG2ScrPtr
	mov r2, r6
	mov r3, r5
	str r0, [sp]
	ldr r6, _0211D138 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f5b6c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f5af0
	ldr r0, _0211D13C ; =0x0209A070
	bl FUN_ov16_020f6c58
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _0211D07C
	ldr r0, _0211D140 ; =0x0209A250
	bl FUN_0202e1c0
	str r5, [r4, #0x70]
_0211D07C:
	ldr r1, [r4, #0x74]
	cmp r1, #0
	beq _0211D098
	ldr r0, _0211D140 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x74]
_0211D098:
	ldr r1, [r4, #0x17c]
	cmp r1, #0
	beq _0211D0B4
	ldr r0, _0211D140 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x17c]
_0211D0B4:
	ldr r1, [r4, #0x180]
	cmp r1, #0
	beq _0211D0D0
	ldr r0, _0211D140 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x180]
_0211D0D0:
	add r0, r4, #0x18c
	mov r1, #0x15
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov38_0211b77c
	mov r5, #0x10
	mov r1, r5
	mov r0, #1
	bl FUN_ov16_020f1aec
	mov r1, r5
	mov r0, #2
	bl FUN_ov16_020f1aec
	mov r1, r5
	mov r0, #3
	bl FUN_ov16_020f1aec
	ldrb r0, [r4, #0x288]
	cmp r0, #0
	beq _0211D124
	bl FUN_ov16_020f47fc
	mov r0, #4
	bl FUN_ov16_020f3f60
_0211D124:
	add r0, r4, #0x28c
	mov r1, #1
	bl FUN_ov16_020f2fe4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D138: .word unk_0209F5C0
_0211D13C: .word unk_0209A070
_0211D140: .word unk_0209A250
	arm_func_end FUN_ov38_0211d010

	arm_func_start FUN_ov38_0211d144
FUN_ov38_0211d144: ; 0x0211D144
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov38_0211d144

	arm_func_start FUN_ov38_0211d158
FUN_ov38_0211d158: ; 0x0211D158
	bx lr
	arm_func_end FUN_ov38_0211d158

	.global ov38_0211D15C
ov38_0211D15C:
	.byte 0x54, 0xD3, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xF0, 0xD2, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xFC, 0xD2, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x08, 0xD3, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x14, 0xD3, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x20, 0xD3, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x2C, 0xD3, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0xCC, 0xD2, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0xC0, 0xD2, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0xB4, 0xD2, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xD8, 0xD2, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x9C, 0xD2, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x84, 0xD2, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x90, 0xD2, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x38, 0xD3, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00, 0xA8, 0xD2, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0x78, 0xD2, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00, 0xE4, 0xD2, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x64, 0xD3, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x44, 0xD3, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov38_0211d204
FUN_ov38_0211d204: ; 0x0211D204
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211D24C ; =0x0211D260
	str r0, [r4, #0x10]
	ldr r0, _0211D250 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211D254 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D24C: .word ov38_0211D260
_0211D250: .word 0x00009CCD
_0211D254: .word 0x0000EA3C
	arm_func_end FUN_ov38_0211d204

	.section .sinit, 4
ov38_0211D258:
	.word FUN_ov38_0211d204

	.data
	.global ov38_0211D260
ov38_0211D260:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x67, 0x77, 0x6F, 0x72, 0x64, 0x2E, 0x74
	.byte 0x78, 0x74, 0x00, 0x00, 0x66, 0x63, 0x6F, 0x64, 0x65, 0x31, 0x2E, 0x74, 0x78, 0x74, 0x00, 0x00
	.byte 0x66, 0x63, 0x6F, 0x64, 0x65, 0x32, 0x2E, 0x74, 0x78, 0x74, 0x00, 0x00, 0x66, 0x63, 0x6F, 0x64
	.byte 0x65, 0x30, 0x2E, 0x74, 0x78, 0x74, 0x00, 0x00, 0x64, 0x61, 0x6B, 0x75, 0x74, 0x65, 0x6E, 0x2E
	.byte 0x74, 0x78, 0x74, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x77, 0x37, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x6F, 0x36, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x62, 0x36, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x37, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x66, 0x63, 0x6F, 0x64, 0x65, 0x63, 0x6B, 0x2E, 0x74, 0x78, 0x74, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x77, 0x36, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x77, 0x36, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x77, 0x36, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x63, 0x36, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x64, 0x5F, 0x62, 0x36, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x64, 0x5F
	.byte 0x62, 0x36, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x68, 0x61, 0x6E, 0x64, 0x61, 0x6B, 0x75, 0x2E
	.byte 0x74, 0x78, 0x74, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov38_0211D37C
ov38_0211D37C:
	.byte 0x58, 0xD1, 0x11, 0x02
	.byte 0x44, 0xD1, 0x11, 0x02, 0x58, 0xA9, 0x11, 0x02, 0x20, 0xB4, 0x11, 0x02, 0x14, 0xCD, 0x11, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0xBC, 0xCE, 0x11, 0x02, 0x98, 0xCF, 0x11, 0x02, 0x10, 0xD0, 0x11, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02
	.byte 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02
	.byte 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov38_0211D3E8
ov38_0211D3E8:
	.byte 0x82, 0xE0, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xED
	.byte 0x82, 0xAF, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xAA, 0x0A, 0x82
	.byte 0xBB, 0x82, 0xCC, 0x83, 0x81, 0x83, 0x62, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x57, 0x82, 0xCD, 0x5B
	.byte 0x93, 0xFC, 0x97, 0xCD, 0x2F, 0x82, 0xC9, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82
	.byte 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00
	.global ov38_0211D430
ov38_0211D430:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x4D, 0x4D, 0x50, 0x72, 0x6F, 0x66, 0x64, 0x2E, 0x53, 0x50, 0x46, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov38_0211D454
ov38_0211D454:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F
	.byte 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov38_0211D47C
ov38_0211D47C:
	.byte 0x82, 0xD6, 0x82, 0xF1
	.byte 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xF0, 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9
	.byte 0x81, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

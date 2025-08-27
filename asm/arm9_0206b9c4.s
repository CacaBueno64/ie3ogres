
	.include "/macros/function.inc"
	.include "/include/arm9_0206b9c4.inc"

	.text
	arm_func_start FUN_0206b9c4
FUN_0206b9c4: ; 0x0206B9C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204212c
	ldr r3, _0206B9F0 ; =0x02091290
	ldr r2, [r4, #0x18]
	mov r0, r4
	mov r1, #0
	str r3, [r4]
	bl FUN_02043310
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206B9F0: .word unk_02091290
	arm_func_end FUN_0206b9c4

	arm_func_start FUN_0206b9f4
FUN_0206b9f4: ; 0x0206B9F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204222c
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206b9f4

	arm_func_start FUN_0206ba08
FUN_0206ba08: ; 0x0206BA08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204222c
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206ba08

	arm_func_start FUN_0206ba24
FUN_0206ba24: ; 0x0206BA24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldrb r0, [sp, #0x40]
	ldrb r7, [r10, #0x1d]
	ldr r4, [r10, #4]
	and r5, r0, #0xf
	ldr r6, [r4, #8]
	ldr r0, [sp, #0x48]
	ldr r8, [sp, #0x44]
	str r0, [sp, #0x48]
	and r0, r7, #0xf
	mov r7, #0
	str r7, [sp, #0x10]
	strb r0, [sp, #0x17]
	ldr r0, [sp, #0x48]
	ldrb r4, [r10, #0x1c]
	and r5, r5, #0xf
	strb r5, [sp, #0x15]
	and r4, r4, #0xf
	ldrsb r7, [r8]
	ldrsb r9, [r8, #2]
	ldr r8, [sp, #0x4c]
	ldrb r6, [r6]
	sub r11, r9, r7
	str r8, [sp, #0x4c]
	cmp r0, #0
	sub r0, r6, r11
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	mov r9, r1
	add r0, r0, r7
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	mov r8, r2
	strb r1, [sp, #0x14]
	strb r4, [sp, #0x16]
	str r0, [sp, #0x50]
	mov r5, #0xc0
	mov r6, #6
	ble _0206BC10
	ldr r0, [sp, #0x4c]
	mov r1, r3, asr #3
	tst r0, #1
	mov r0, r1, lsl #5
	str r0, [sp, #4]
	movne r0, #1
	strne r0, [sp]
	ldreq r0, [sp, #0x10]
	streq r0, [sp]
_0206BAF0:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x50]
	cmp r11, #0
	add r2, r1, r0
	ldr r0, [sp, #4]
	mov r1, r2, asr #3
	mul r1, r0, r1
	mov r0, r2, lsl #0x1d
	add r0, r1, r0, lsr #27
	str r0, [sp, #8]
	ldr r7, [sp]
	mov r4, #0
	ble _0206BBBC
_0206BB24:
	ldr r0, [sp, #0x4c]
	add r2, r4, r0
	ldr r0, [sp, #8]
	mov r1, r2, asr #3
	add r1, r0, r1, lsl #5
	and r0, r2, #7
	add r2, r1, r0, asr #1
	ldrb r0, [r9]
	and r0, r0, r5
	mov r1, r0, asr r6
	cmp r1, #0
	ble _0206BB90
	add r0, sp, #0x14
	ldrb r3, [r0, r1]
	cmp r7, #0
	mov r0, r10
	add r1, r8, r2
	beq _0206BB7C
	ldrb r2, [r8, r2]
	and r2, r2, #0xf
	orr r2, r2, r3, lsl #4
	b _0206BB88
_0206BB7C:
	ldrb r2, [r8, r2]
	and r2, r2, #0xf0
	orr r2, r2, r3
_0206BB88:
	and r2, r2, #0xff
	bl FUN_02042274
_0206BB90:
	movs r5, r5, asr #2
	sub r6, r6, #2
	moveq r5, #0xc0
	moveq r6, #6
	addeq r9, r9, #1
	cmp r7, #0
	moveq r7, #1
	add r4, r4, #1
	movne r7, #0
	cmp r4, r11
	blt _0206BB24
_0206BBBC:
	ldr r0, [sp, #0xc]
	mov r3, #0
	cmp r0, #0
	ble _0206BBF8
	mov r2, #0xc0
	mov r1, #6
_0206BBD4:
	ldr r0, [sp, #0xc]
	movs r5, r5, asr #2
	sub r6, r6, #2
	add r3, r3, #1
	moveq r5, r2
	moveq r6, r1
	addeq r9, r9, #1
	cmp r3, r0
	blt _0206BBD4
_0206BBF8:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _0206BAF0
_0206BC10:
	ldr r0, [r10, #0x14]
	add r0, r11, r0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0206ba24

	arm_func_start FUN_0206bc20
FUN_0206bc20: ; 0x0206BC20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, r0
	ldr r0, [r11, #4]
	ldr r4, [sp, #0x34]
	ldr r10, [r0, #8]
	ldrsb r0, [r4]
	ldrsb r7, [r4, #2]
	ldr r4, [sp, #0x38]
	ldr r9, [sp, #0x3c]
	ldrb r8, [sp, #0x30]
	ldrb r6, [r11, #0x1c]
	ldrb r5, [r11, #0x1d]
	str r4, [sp, #0x38]
	ldrb r12, [r10]
	mov r10, r1
	ldr r1, [sp, #0x38]
	mov r4, #0
	strb r6, [sp, #0xa]
	strb r5, [sp, #0xb]
	sub r7, r7, r0
	add r9, r9, r0
	ldr r0, [sp, #0x40]
	strb r8, [sp, #9]
	str r2, [sp]
	strb r4, [sp, #8]
	cmp r1, #0
	sub r8, r12, r7
	str r0, [sp, #0x40]
	mov r5, #0xc0
	mov r6, #6
	ble _0206BD9C
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r0, r0, asr #3
	mov r0, r0, lsl #6
	str r0, [sp, #4]
_0206BCB4:
	ldr r0, [sp, #0x40]
	cmp r7, #0
	add r1, r4, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r2, r0, asr #3
	ldr r0, [sp, #4]
	mul r0, r2, r0
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #29
	add r1, r2, r1, ror #29
	add r1, r0, r1, lsl #3
	mov r0, #0
	ble _0206BD58
	mov r12, #0xc0
	mov r3, #6
_0206BCF4:
	add lr, r0, r9
	mov r2, lr, asr #3
	add r2, r1, r2, lsl #6
	and lr, lr, #7
	add lr, r2, lr
	ldrb r2, [r10]
	and r2, r2, r5
	mov r2, r2, asr r6
	cmp r2, #0
	ble _0206BD38
	add r3, sp, #8
	ldr r0, [sp]
	ldrb r2, [r3, r2]
	add r1, r0, lr
	mov r0, r11
	bl FUN_02042274
	b _0206BD58
_0206BD38:
	movs r5, r5, asr #2
	sub r6, r6, #2
	add r0, r0, #1
	moveq r5, r12
	addeq r10, r10, #1
	moveq r6, r3
	cmp r0, r7
	blt _0206BCF4
_0206BD58:
	cmp r8, #0
	mov r2, #0
	ble _0206BD8C
	mov r1, #0xc0
	mov r0, #6
_0206BD6C:
	movs r5, r5, asr #2
	sub r6, r6, #2
	add r2, r2, #1
	moveq r5, r1
	moveq r6, r0
	addeq r10, r10, #1
	cmp r2, r8
	blt _0206BD6C
_0206BD8C:
	ldr r0, [sp, #0x38]
	add r4, r4, #1
	cmp r4, r0
	blt _0206BCB4
_0206BD9C:
	ldr r0, [r11, #0x14]
	add r0, r7, r0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0206bc20

	arm_func_start FUN_0206bdac
FUN_0206bdac: ; 0x0206BDAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r4, [sp, #0x3c]
	ldrb r6, [sp, #0x38]
	str r4, [sp, #0x3c]
	ldrsb r5, [r4]
	ldrsb r4, [r4, #2]
	and r7, r6, #0xf
	mov r6, #0
	mov r10, r0
	mov r0, r6
	strb r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	strb r7, [sp, #0x11]
	str r6, [sp, #0xc]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	ldrb r6, [r10, #0x1c]
	str r0, [sp, #0x44]
	mov r9, r1
	and r0, r6, #0xf
	strb r0, [sp, #0x12]
	ldrb r0, [r10, #0x1d]
	str r2, [sp]
	str r3, [sp, #4]
	and r0, r0, #0xf
	strb r0, [sp, #0x13]
	ldr r0, [sp, #0x40]
	sub r11, r4, r5
	cmp r0, #0
	ldr r0, [sp, #0x44]
	mov r6, #6
	add r0, r0, r5
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	mov r5, #0xc0
	str r0, [sp, #0x48]
	ble _0206BF68
	ldr r0, [sp, #0x44]
	tst r0, #1
	movne r0, #1
	strne r0, [sp, #8]
	ldreq r0, [sp, #0xc]
	streq r0, [sp, #8]
_0206BE5C:
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0xc]
	cmp r11, #0
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r8, [sp, #8]
	mla r0, r1, r2, r0
	add r1, r0, r0, lsr #31
	ldr r0, [sp]
	mov r4, #0
	add r7, r0, r1, asr #1
	ble _0206BF14
_0206BE90:
	ldrb r0, [r9]
	and r0, r0, r5
	mov r1, r0, asr r6
	cmp r1, #0
	ble _0206BEE0
	add r0, sp, #0x10
	ldrb r2, [r0, r1]
	cmp r8, #0
	mov r0, r10
	mov r1, r7
	beq _0206BECC
	ldrb r3, [r7]
	and r3, r3, #0xf
	orr r2, r3, r2, lsl #4
	b _0206BED8
_0206BECC:
	ldrb r3, [r7]
	and r3, r3, #0xf0
	orr r2, r3, r2
_0206BED8:
	and r2, r2, #0xff
	bl FUN_02042274
_0206BEE0:
	movs r5, r5, asr #2
	sub r6, r6, #2
	moveq r5, #0xc0
	moveq r6, #6
	addeq r9, r9, #1
	cmp r8, #0
	addne r7, r7, #1
	cmp r8, #0
	moveq r8, #1
	add r4, r4, #1
	movne r8, #0
	cmp r4, r11
	blt _0206BE90
_0206BF14:
	ldr r0, [sp, #0x3c]
	mov r3, #0
	ldrsb r2, [r0]
	cmp r2, #0
	ble _0206BF50
	mov r1, #0xc0
	mov r0, #6
_0206BF30:
	movs r5, r5, asr #2
	sub r6, r6, #2
	add r3, r3, #1
	moveq r5, r1
	moveq r6, r0
	addeq r9, r9, #1
	cmp r3, r2
	blt _0206BF30
_0206BF50:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0206BE5C
_0206BF68:
	add r0, r11, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0206bdac

	arm_func_start FUN_0206bf74
FUN_0206bf74: ; 0x0206BF74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x3c]
	mov r10, r0
	str r4, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	ldrb r0, [r10, #0x1d]
	ldr r7, [sp, #0x3c]
	str r6, [sp, #0x40]
	mov r6, #0
	str r6, [sp, #8]
	ldr r6, [sp, #0x3c]
	ldrsb r8, [r7, #2]
	ldr r7, [sp, #0x44]
	strb r0, [sp, #0xf]
	ldr r0, [sp, #0x40]
	ldrb r5, [sp, #0x38]
	ldrb r4, [r10, #0x1c]
	mov r9, r1
	ldr r1, [sp, #8]
	strb r5, [sp, #0xd]
	ldrsb r6, [r6]
	str r7, [sp, #0x44]
	cmp r0, #0
	ldr r0, [sp, #0x44]
	str r2, [sp]
	add r0, r0, r6
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	sub r7, r8, r6
	str r3, [sp, #4]
	strb r1, [sp, #0xc]
	strb r4, [sp, #0xe]
	str r0, [sp, #0x48]
	mov r5, #0xc0
	mov r6, #6
	ble _0206C0CC
	add r11, sp, #0xc
_0206C00C:
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #8]
	cmp r7, #0
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x44]
	mov r4, #0
	mla r2, r1, r2, r0
	ldr r0, [sp]
	add r8, r0, r2
	ble _0206C080
_0206C038:
	ldrb r0, [r9]
	and r0, r0, r5
	mov r0, r0, asr r6
	cmp r0, #0
	ble _0206C05C
	ldrb r2, [r11, r0]
	mov r0, r10
	mov r1, r8
	bl FUN_02042274
_0206C05C:
	movs r5, r5, asr #2
	sub r6, r6, #2
	add r4, r4, #1
	moveq r5, #0xc0
	moveq r6, #6
	addeq r9, r9, #1
	add r8, r8, #1
	cmp r4, r7
	blt _0206C038
_0206C080:
	ldr r0, [sp, #0x3c]
	mov r1, #0
	ldrsb r0, [r0]
	cmp r0, #0
	ble _0206C0B4
_0206C094:
	movs r5, r5, asr #2
	sub r6, r6, #2
	add r1, r1, #1
	moveq r5, #0xc0
	moveq r6, #6
	addeq r9, r9, #1
	cmp r1, r0
	blt _0206C094
_0206C0B4:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0206C00C
_0206C0CC:
	add r0, r7, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0206bf74

	arm_func_start FUN_0206c0d8
FUN_0206c0d8: ; 0x0206C0D8
	ldr r2, _0206C10C ; =0x020912D0
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x18]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	strh r1, [r0, #0x24]
	bx lr
_0206C10C: .word unk_020912D0
	arm_func_end FUN_0206c0d8

	arm_func_start FUN_0206c110
FUN_0206c110: ; 0x0206C110
	stmfd sp!, {r4, lr}
	ldr r1, _0206C12C ; =0x020912D0
	mov r4, r0
	str r1, [r4]
	bl FUN_0206c270
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206C12C: .word unk_020912D0
	arm_func_end FUN_0206c110

	arm_func_start FUN_0206c130
FUN_0206c130: ; 0x0206C130
	stmfd sp!, {r4, lr}
	ldr r1, _0206C154 ; =0x020912D0
	mov r4, r0
	str r1, [r4]
	bl FUN_0206c270
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206C154: .word unk_020912D0
	arm_func_end FUN_0206c130

	arm_func_start FUN_0206c158
FUN_0206c158: ; 0x0206C158
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #0
	ldreq r0, [r5, #0xc]
	cmpeq r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x98
	mul r6, r4, r0
	ldr r8, _0206C268 ; =0x0209A250
	mov r1, r6
	mov r0, r8
	bl FUN_0202de44
	str r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, #0
	mov r1, r7
	mov r2, r6
	bl MI_CpuFill8
	mov r9, r4, lsl #2
	mov r0, r8
	mov r1, r9
	bl FUN_0202de44
	str r0, [r5, #8]
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r7
	mov r2, r9
	bl MI_CpuFill8
	mov r6, #0x6c
	mul r10, r4, r6
	mov r0, r8
	mov r1, r10
	bl FUN_0202de44
	str r0, [r5, #0xc]
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r7
	mov r2, r10
	bl MI_CpuFill8
	mov r0, r8
	add r1, r9, #0x1a
	bl FUN_0202de44
	str r0, [r5, #0x14]
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r7
	add r2, r9, #0x1a
	bl MI_CpuFill8
	ldr r1, [r5, #0xc]
	sub r0, r4, #1
	mla r2, r0, r6, r1
	ldr r0, _0206C26C ; =0x0209BA20
	mov r1, r7
	strh r4, [r5, #0x18]
	str r2, [r5, #0x10]
	bl FUN_020740a4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206C268: .word unk_0209A250
_0206C26C: .word unk_0209BA20
	arm_func_end FUN_0206c158

	arm_func_start FUN_0206c270
FUN_0206c270: ; 0x0206C270
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	mov r4, #0
	cmp r1, #0
	beq _0206C294
	ldr r0, _0206C2F4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #4]
_0206C294:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0206C2AC
	ldr r0, _0206C2F4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #8]
_0206C2AC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0206C2C4
	ldr r0, _0206C2F4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #0xc]
_0206C2C4:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0206C2DC
	ldr r0, _0206C2F4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #0x14]
_0206C2DC:
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	str r4, [r5, #0x10]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x24]
	ldmfd sp!, {r3, r4, r5, pc}
_0206C2F4: .word unk_0209A250
	arm_func_end FUN_0206c270

	arm_func_start FUN_0206c2f8
FUN_0206c2f8: ; 0x0206C2F8
	ldrh r0, [r0, #0x18]
	bx lr
	arm_func_end FUN_0206c2f8

	arm_func_start FUN_0206c300
FUN_0206c300: ; 0x0206C300
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xb8
	ldr r4, _0206C564 ; =0x020A0640
	mov r5, r0
	ldrb r4, [r4, #0x1a]
	mov r8, r1
	mov r9, r2
	mov r7, r3
	cmp r4, #0
	mov r4, #0
	bne _0206C344
	mov r1, r7
	bl FUN_0206c7dc
	cmp r0, #0
	addne sp, sp, #0xb8
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206C344:
	mov r0, r5
	mov r1, r8
	bl FUN_0206c5d8
	mov r0, r5
	bl FUN_0206ca34
	movs r4, r0
	beq _0206C558
	ldr r3, [r5, #8]
	mov r1, #0
	mov r2, #0x98
	str r4, [r3, r8, lsl #2]
	bl MI_CpuFill8
	add r0, sp, #0x4c
	bl FUN_0206ecc4
	mov r0, r5
	strh r8, [r4, #0x94]
	bl FUN_0206ca04
	tst r0, #1
	beq _0206C39C
	mov r0, r5
	mov r1, r4
	bl FUN_0206cb84
_0206C39C:
	mov r0, r5
	bl FUN_0206ca04
	tst r0, #2
	beq _0206C3B8
	mov r0, r5
	mov r1, r4
	bl FUN_0206cb10
_0206C3B8:
	mov r0, r5
	mov r1, r4
	bl FUN_0206ca88
	mov r0, r4
	mov r1, #1
	bl FUN_0206d618
	cmp r9, #0
	mov r0, r4
	bne _0206C3E4
	mov r1, #0x20
	b _0206C3E8
_0206C3E4:
	mov r1, #0x40
_0206C3E8:
	bl FUN_0206d620
	cmp r7, #0
	beq _0206C558
	ldr r10, _0206C568 ; =0x0209BA20
	mov r1, r7
	mov r0, r10
	mov r2, r4
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xb8
	mov r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0206dcd4
	mov r6, r0
	add r5, sp, #0x4c
	mov r1, r6
	mov r0, r5
	bl FUN_0206ed40
	mov r0, r5
	str r5, [r4, #0x68]
	bl FUN_0206ecc4
	mov r0, r5
	mov r1, r9
	bl FUN_0206e7e4
	mov r1, r7
	mov r0, r5
	bl FUN_0206dd58
	ldrb r1, [r4, #0x4d]
	mov r0, r5
	bl FUN_0206e4a4
	mov r0, r10
	mov r1, r9
	bl FUN_0207249c
	cmp r0, #0
	beq _0206C480
	ldrh r1, [r4, #0x58]
	mov r0, r5
	bl FUN_0206de90
_0206C480:
	mov r0, r4
	mov r1, r9
	bl FUN_0206cc1c
	mov r0, r4
	bl FUN_0206cbf8
	ldr r10, _0206C568 ; =0x0209BA20
	mov r7, r0
	mov r0, r10
	mov r1, r9
	bl FUN_0207249c
	movs r9, r0
	ldrneh r0, [r9, #0x30]
	cmpne r0, #0
	beq _0206C4F4
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0206C4DC
	ldrh r2, [r9, #0x30]
	mov r0, r5
	mov r1, #0
	bl FUN_0206def8
	b _0206C4F4
_0206C4DC:
	mov r3, #0
	str r3, [sp]
	ldrh r2, [r9, #0x30]
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020eeb24
_0206C4F4:
	ldr r10, _0206C568 ; =0x0209BA20
	ldr r2, [sp, #0xd8]
	mov r0, r10
	mov r1, r4
	mov r3, #0
	bl FUN_0204ea4c
	mov r0, r4
	bl FUN_0206dca4
	add r9, sp, #4
	mov r0, r10
	mov r1, r7
	mov r2, r9
	bl FUN_0204c078
	cmp r0, #0
	beq _0206C544
	mov r1, r8, lsl #0x10
	mov r0, r10
	mov r2, r9
	mov r1, r1, lsr #0x10
	bl FUN_02073f10
_0206C544:
	mov r0, r4
	str r6, [r4, #0x68]
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206ed40
_0206C558:
	mov r0, r4
	add sp, sp, #0xb8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206C564: .word unk_020A0640
_0206C568: .word unk_0209BA20
	arm_func_end FUN_0206c300

	arm_func_start FUN_0206c56c
FUN_0206c56c: ; 0x0206C56C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	mov r2, #0
	mov r3, r2
	mov r7, r1
	str r2, [sp]
	bl FUN_0206c300
	movs r5, r0
	beq _0206C5D0
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, #0x98
	bl MIi_CpuCopyFast
	mov r0, r5
	str r4, [r5, #0x68]
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r4
	bl FUN_0206ed40
	strh r7, [r5, #0x94]
_0206C5D0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0206c56c

	arm_func_start FUN_0206c5d8
FUN_0206c5d8: ; 0x0206C5D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_0206c6fc
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_0206caec
	mov r0, r6
	mov r1, r4
	bl FUN_0206cbe0
	mov r0, r6
	mov r1, r4
	bl FUN_0206cb6c
	mov r1, #0
	strh r1, [r4, #0x8e]
	strh r1, [r4, #0x94]
	ldr r0, [r6, #8]
	str r1, [r0, r5, lsl #2]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206c5d8

	arm_func_start FUN_0206c62c
FUN_0206c62c: ; 0x0206C62C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_0206C644:
	mov r0, r5
	mov r1, r4
	bl FUN_0206c5d8
	ldrh r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0206C644
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c62c

	arm_func_start FUN_0206c664
FUN_0206c664: ; 0x0206C664
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	cmp r1, r2
	ldr r12, [lr, r1, lsl #2]
	ldmeqfd sp!, {r3, pc}
	ldr r3, [lr, r2, lsl #2]
	str r3, [lr, r1, lsl #2]
	ldr r3, [r0, #8]
	str r12, [r3, r2, lsl #2]
	ldr r3, [r0, #8]
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	strneh r1, [r3, #0x94]
	ldr r0, [r0, #8]
	ldr r0, [r0, r2, lsl #2]
	cmp r0, #0
	strneh r2, [r0, #0x94]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206c664

	arm_func_start FUN_0206c6ac
FUN_0206c6ac: ; 0x0206C6AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r5, r1
	mov r6, r0
	mov r1, r4
	bl FUN_0206c5d8
	ldr r12, [r6, #8]
	mov r0, r6
	ldr r3, [r12, r4, lsl #2]
	ldr r2, [r12, r5, lsl #2]
	mov r1, r5
	str r2, [r12, r4, lsl #2]
	ldr r2, [r6, #8]
	str r3, [r2, r5, lsl #2]
	bl FUN_0206c5d8
	ldr r0, [r6, #8]
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	strneh r4, [r0, #0x94]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206c6ac

	arm_func_start FUN_0206c6fc
FUN_0206c6fc: ; 0x0206C6FC
	cmp r1, #0
	ldrgeh r2, [r0, #0x18]
	cmpge r2, r1
	movle r0, #0
	ldrgt r0, [r0, #8]
	ldrgt r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end FUN_0206c6fc

	arm_func_start FUN_0206c718
FUN_0206c718: ; 0x0206C718
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrh r0, [r5, #0x18]
	mov r4, r1
	mov r7, #0
	cmp r0, #0
	bls _0206C780
_0206C734:
	mov r0, r5
	mov r1, r7
	bl FUN_0206c6fc
	movs r6, r0
	beq _0206C768
	bl FUN_0206d64c
	cmp r0, #0
	beq _0206C768
	mov r0, r6
	bl FUN_0206cbf8
	cmp r4, r0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0206C768:
	ldrh r1, [r5, #0x18]
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r7, r0, lsr #0x10
	bhi _0206C734
_0206C780:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0206c718

	arm_func_start FUN_0206c788
FUN_0206c788: ; 0x0206C788
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _0206C7D4
_0206C7A0:
	mov r1, r4, lsl #0x10
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0206c6fc
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r1, [r5, #0x18]
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, asr #16
	mov r4, r0, asr #0x10
	bgt _0206C7A0
_0206C7D4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c788

	arm_func_start FUN_0206c7dc
FUN_0206c7dc: ; 0x0206C7DC
	stmfd sp!, {r3, lr}
	cmp r2, #1
	ldreq r2, _0206C814 ; =0x020A0640
	ldreqb r2, [r2, #0x1b]
	cmpeq r2, #0
	orreq r1, r1, #0x8000
	bl FUN_0206c718
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0206C814: .word unk_020A0640
	arm_func_end FUN_0206c7dc

	arm_func_start FUN_0206c818
FUN_0206c818: ; 0x0206C818
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_0206c818

	arm_func_start FUN_0206c820
FUN_0206c820: ; 0x0206C820
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	movs r4, r1
	ldrne r1, [r5, #0xc]
	cmpne r1, #0
	ldrne r1, [r5, #0x10]
	cmpne r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0206c818
	cmp r0, r4
	bhi _0206C85C
	ldr r0, [r5, #0x10]
	cmp r0, r4
	bhs _0206C864
_0206C85C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0206C864:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c820

	arm_func_start FUN_0206c86c
FUN_0206c86c: ; 0x0206C86C
	ldr r0, [r0, #0x14]
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end FUN_0206c86c

	arm_func_start FUN_0206c878
FUN_0206c878: ; 0x0206C878
	ldr r0, [r0, #0x14]
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end FUN_0206c878

	arm_func_start FUN_0206c884
FUN_0206c884: ; 0x0206C884
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_0206c884

	arm_func_start FUN_0206c88c
FUN_0206c88c: ; 0x0206C88C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x20]
	mov r1, #2
	bl FUN_0206ca24
	mov r4, #0
_0206C8A4:
	mov r0, r5
	mov r1, r4
	bl FUN_0206c6fc
	movs r1, r0
	beq _0206C8CC
	ldr r0, [r1, #0x88]
	cmp r0, #0
	bne _0206C8CC
	mov r0, r5
	bl FUN_0206cb10
_0206C8CC:
	add r4, r4, #1
	cmp r4, #0x64
	blt _0206C8A4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c88c

	arm_func_start FUN_0206c8dc
FUN_0206c8dc: ; 0x0206C8DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _0206C928
_0206C8F4:
	mov r0, r5
	mov r1, r4
	bl FUN_0206c6fc
	movs r1, r0
	ldrne r0, [r1, #0x88]
	cmpne r0, #0
	beq _0206C918
	mov r0, r5
	bl FUN_0206cb6c
_0206C918:
	ldrh r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0206C8F4
_0206C928:
	mov r2, #0
	mov r0, r5
	mov r1, #2
	str r2, [r5, #0x20]
	bl FUN_0206ca0c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c8dc

	arm_func_start FUN_0206c940
FUN_0206c940: ; 0x0206C940
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x1c]
	mov r1, #1
	bl FUN_0206ca24
	ldrh r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_0206C964:
	mov r0, r5
	mov r1, r4
	bl FUN_0206c6fc
	movs r1, r0
	beq _0206C98C
	ldr r0, [r1, #0x84]
	cmp r0, #0
	bne _0206C98C
	mov r0, r5
	bl FUN_0206cb84
_0206C98C:
	ldrh r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0206C964
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c940

	arm_func_start FUN_0206c9a0
FUN_0206c9a0: ; 0x0206C9A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _0206C9EC
_0206C9B8:
	mov r0, r5
	mov r1, r4
	bl FUN_0206c6fc
	movs r1, r0
	ldrne r0, [r1, #0x84]
	cmpne r0, #0
	beq _0206C9DC
	mov r0, r5
	bl FUN_0206cbe0
_0206C9DC:
	ldrh r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0206C9B8
_0206C9EC:
	mov r2, #0
	mov r0, r5
	mov r1, #2
	str r2, [r5, #0x1c]
	bl FUN_0206ca0c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206c9a0

	arm_func_start FUN_0206ca04
FUN_0206ca04: ; 0x0206CA04
	ldrh r0, [r0, #0x24]
	bx lr
	arm_func_end FUN_0206ca04

	arm_func_start FUN_0206ca0c
FUN_0206ca0c: ; 0x0206CA0C
	ldrh r2, [r0, #0x24]
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_0206ca0c

	arm_func_start FUN_0206ca24
FUN_0206ca24: ; 0x0206CA24
	ldrh r2, [r0, #0x24]
	orr r1, r2, r1
	strh r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_0206ca24

	arm_func_start FUN_0206ca34
FUN_0206ca34: ; 0x0206CA34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrh r0, [r7, #0x18]
	mov r5, #0
	cmp r0, #0
	ble _0206CA80
	mov r4, #0x98
_0206CA50:
	mul r6, r5, r4
	ldr r0, [r7, #4]
	add r0, r0, r6
	bl FUN_0206d64c
	cmp r0, #0
	ldreq r0, [r7, #4]
	addeq r0, r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r7, #0x18]
	add r5, r5, #1
	cmp r5, r0
	blt _0206CA50
_0206CA80:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0206ca34

	arm_func_start FUN_0206ca88
FUN_0206ca88: ; 0x0206CA88
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206dcdc
	cmp r0, #0
	ldrne r3, [r5, #0xc]
	cmpne r3, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	ldr r0, _0206CAE8 ; =0xAF286BCB
	sub r1, r4, r1
	umull r0, r2, r1, r0
	sub r0, r1, r2
	add r2, r2, r0, lsr #1
	mov r2, r2, lsr #7
	mov r0, #0x6c
	mla r1, r2, r0, r3
	mov r0, r4
	str r1, [r4, #0x68]
	bl FUN_0206dcd4
	bl FUN_0206ecc4
	ldmfd sp!, {r3, r4, r5, pc}
_0206CAE8: .word 0xAF286BCB
	arm_func_end FUN_0206ca88

	arm_func_start FUN_0206caec
FUN_0206caec: ; 0x0206CAEC
	stmfd sp!, {r4, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_0206dcdc
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x68]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206caec

	arm_func_start FUN_0206cb10
FUN_0206cb10: ; 0x0206CB10
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r1, #0x88]
	cmp r2, #0
	ldmnefd sp!, {r3, pc}
	ldr r12, [r0, #0x20]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #4]
	ldr r0, _0206CB68 ; =0xAF286BCB
	sub r2, r1, r2
	umull r0, r3, r2, r0
	sub r0, r2, r3
	add r3, r3, r0, lsr #1
	mov r3, r3, lsr #7
	mov r0, #0x90
	mla r0, r3, r0, r12
	str r0, [r1, #0x88]
	mov r1, #1
	bl FUN_02073d24
	ldmfd sp!, {r3, pc}
_0206CB68: .word 0xAF286BCB
	arm_func_end FUN_0206cb10

	arm_func_start FUN_0206cb6c
FUN_0206cb6c: ; 0x0206CB6C
	cmp r1, #0
	ldrne r0, [r1, #0x88]
	cmpne r0, #0
	movne r0, #0
	strne r0, [r1, #0x88]
	bx lr
	arm_func_end FUN_0206cb6c

	arm_func_start FUN_0206cb84
FUN_0206cb84: ; 0x0206CB84
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r1, #0x84]
	cmp r2, #0
	ldmnefd sp!, {r3, pc}
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #4]
	ldr r0, _0206CBDC ; =0xAF286BCB
	sub r2, r1, r2
	umull r0, r3, r2, r0
	sub r0, r2, r3
	add r3, r3, r0, lsr #1
	mov r3, r3, lsr #7
	add r0, r12, r3, lsl #5
	str r0, [r1, #0x84]
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_0206CBDC: .word 0xAF286BCB
	arm_func_end FUN_0206cb84

	arm_func_start FUN_0206cbe0
FUN_0206cbe0: ; 0x0206CBE0
	cmp r1, #0
	ldrne r0, [r1, #0x84]
	cmpne r0, #0
	movne r0, #0
	strne r0, [r1, #0x84]
	bx lr
	arm_func_end FUN_0206cbe0

	arm_func_start FUN_0206cbf8
FUN_0206cbf8: ; 0x0206CBF8
	ldrh r0, [r0, #0x4e]
	bx lr
	arm_func_end FUN_0206cbf8

	arm_func_start FUN_0206cc00
FUN_0206cc00: ; 0x0206CC00
	ldrh r1, [r0, #0x4e]
	ldr r0, _0206CC18 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0206CC18: .word 0x00000FFF
	arm_func_end FUN_0206cc00

	arm_func_start FUN_0206cc1c
FUN_0206cc1c: ; 0x0206CC1C
	ldrh r2, [r0, #0x4e]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #0x8000
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0x4e]
	bx lr
	arm_func_end FUN_0206cc1c

	arm_func_start FUN_0206cc34
FUN_0206cc34: ; 0x0206CC34
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206cc34

	arm_func_start FUN_0206cc44
FUN_0206cc44: ; 0x0206CC44
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_0206cc94
	cmp r4, r0
	ble _0206CC68
	mov r0, r5
	bl FUN_0206cc94
	mov r4, r0
_0206CC68:
	cmp r4, #0
	movlt r4, #0
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e124
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206cc44

	arm_func_start FUN_0206cc84
FUN_0206cc84: ; 0x0206CC84
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrsh r0, [r0, #0x36]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206cc84

	arm_func_start FUN_0206cc94
FUN_0206cc94: ; 0x0206CC94
	ldrsh r0, [r0, #0x6e]
	bx lr
	arm_func_end FUN_0206cc94

	arm_func_start FUN_0206cc9c
FUN_0206cc9c: ; 0x0206CC9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_0206ccec
	cmp r4, r0
	ble _0206CCC0
	mov r0, r5
	bl FUN_0206ccec
	mov r4, r0
_0206CCC0:
	cmp r4, #0
	movlt r4, #0
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e0bc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206cc9c

	arm_func_start FUN_0206ccdc
FUN_0206ccdc: ; 0x0206CCDC
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrsh r0, [r0, #0x34]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206ccdc

	arm_func_start FUN_0206ccec
FUN_0206ccec: ; 0x0206CCEC
	ldrsh r0, [r0, #0x6c]
	bx lr
	arm_func_end FUN_0206ccec

	arm_func_start FUN_0206ccf4
FUN_0206ccf4: ; 0x0206CCF4
	add r0, r0, r1
	ldrb r0, [r0, #0x74]
	bx lr
	arm_func_end FUN_0206ccf4

	arm_func_start FUN_0206cd00
FUN_0206cd00: ; 0x0206CD00
	ldr r12, _0206CD0C ; =FUN_0206ccf4
	mov r1, #3
	bx r12
_0206CD0C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd00

	arm_func_start FUN_0206cd10
FUN_0206cd10: ; 0x0206CD10
	ldr r12, _0206CD1C ; =FUN_0206ccf4
	mov r1, #1
	bx r12
_0206CD1C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd10

	arm_func_start FUN_0206cd20
FUN_0206cd20: ; 0x0206CD20
	ldr r12, _0206CD2C ; =FUN_0206ccf4
	mov r1, #6
	bx r12
_0206CD2C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd20

	arm_func_start FUN_0206cd30
FUN_0206cd30: ; 0x0206CD30
	ldr r12, _0206CD3C ; =FUN_0206ccf4
	mov r1, #5
	bx r12
_0206CD3C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd30

	arm_func_start FUN_0206cd40
FUN_0206cd40: ; 0x0206CD40
	ldr r12, _0206CD4C ; =FUN_0206ccf4
	mov r1, #2
	bx r12
_0206CD4C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd40

	arm_func_start FUN_0206cd50
FUN_0206cd50: ; 0x0206CD50
	ldr r12, _0206CD5C ; =FUN_0206ccf4
	mov r1, #0
	bx r12
_0206CD5C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd50

	arm_func_start FUN_0206cd60
FUN_0206cd60: ; 0x0206CD60
	ldr r12, _0206CD6C ; =FUN_0206ccf4
	mov r1, #4
	bx r12
_0206CD6C: .word FUN_0206ccf4
	arm_func_end FUN_0206cd60

	arm_func_start FUN_0206cd70
FUN_0206cd70: ; 0x0206CD70
	ldr r12, _0206CD78 ; =FUN_0204fb60
	bx r12
_0206CD78: .word FUN_0204fb60
	arm_func_end FUN_0206cd70

	arm_func_start FUN_0206cd7c
FUN_0206cd7c: ; 0x0206CD7C
	ldr r12, _0206CD84 ; =FUN_0204fb6c
	bx r12
_0206CD84: .word FUN_0204fb6c
	arm_func_end FUN_0206cd7c

	arm_func_start FUN_0206cd88
FUN_0206cd88: ; 0x0206CD88
	ldrb r0, [r0, #0x62]
	bx lr
	arm_func_end FUN_0206cd88

	arm_func_start FUN_0206cd90
FUN_0206cd90: ; 0x0206CD90
	stmfd sp!, {r4, lr}
	movs r4, r1
	bmi _0206CDA4
	cmp r4, #4
	blt _0206CDAC
_0206CDA4:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0206CDAC:
	bl FUN_0206dcd4
	add r0, r0, r4, lsl #1
	ldrh r0, [r0, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206cd90

	arm_func_start FUN_0206cdbc
FUN_0206cdbc: ; 0x0206CDBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, #4
_0206CDCC:
	mov r0, r6
	bl FUN_0206dcd4
	add r0, r0, r5, lsl #1
	ldrh r0, [r0, #0x38]
	add r5, r5, #1
	cmp r0, #0
	addne r4, r4, #1
	cmp r5, #6
	blt _0206CDCC
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206cdbc

	arm_func_start FUN_0206cdf8
FUN_0206cdf8: ; 0x0206CDF8
	stmfd sp!, {r4, lr}
	movs r4, r1
	bmi _0206CE0C
	cmp r4, #6
	ble _0206CE14
_0206CE0C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0206CE14:
	bl FUN_0206dcd4
	add r0, r0, r4, lsl #1
	ldrh r0, [r0, #0x38]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206cdf8

	arm_func_start FUN_0206ce24
FUN_0206ce24: ; 0x0206CE24
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	mov r4, r0
	mov r5, r2
	bmi _0206CE40
	cmp r6, #6
	ble _0206CE48
_0206CE40:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0206CE48:
	cmp r5, #0
	blt _0206CE58
	cmp r5, #1
	ble _0206CE60
_0206CE58:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0206CE60:
	bl FUN_0206dcd4
	ldr r1, _0206CEA4 ; =0x020A0640
	add r2, r5, r6, lsl #1
	ldrb r1, [r1, #0x1b]
	add r0, r0, r2, lsl #1
	ldrh r5, [r0, #0x1c]
	cmp r1, #0
	bne _0206CE9C
	ldr r0, _0206CEA8 ; =0x00000FFF
	ands r5, r5, r0
	beq _0206CE9C
	mov r0, r4
	bl FUN_0206d5f0
	cmp r0, #1
	orreq r5, r5, #0x8000
_0206CE9C:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0206CEA4: .word unk_020A0640
_0206CEA8: .word 0x00000FFF
	arm_func_end FUN_0206ce24

	arm_func_start FUN_0206ceac
FUN_0206ceac: ; 0x0206CEAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x48
	mov r9, r1
	cmp r9, #4
	cmpne r9, #5
	mov r10, r0
	mov r8, r2
	addne sp, sp, #0x48
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0
	bne _0206CEF8
	mov r0, r10
	mov r1, r9
	bl FUN_0206cdf8
	cmp r0, #0
	addne sp, sp, #0x48
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206CEF8:
	mov r4, #0
_0206CEFC:
	mov r0, r10
	mov r1, r4
	bl FUN_0206cdf8
	cmp r8, r0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, r4, #1
	cmp r4, #6
	blt _0206CEFC
	mov r0, r10
	mov r6, #0
	bl FUN_0206cc00
	add r4, sp, #0
	ldr r5, _0206CFCC ; =0x0209BA20
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0204c078
	mov r7, r6
_0206CF4C:
	add r0, r4, r7, lsl #2
	ldrh r0, [r0, #0x2c]
	cmp r8, r0
	bne _0206CF8C
	mov r0, r5
	mov r1, r8
	bl FUN_0204a2c4
	cmp r0, #0
	beq _0206CF8C
	ldrb r1, [r0, #0x14]
	mov r0, r5
	bl FUN_0207217c
	add r1, r4, r7, lsl #2
	ldrb r1, [r1, #0x2f]
	bl FUN_0204b1dc
	mov r6, r0
_0206CF8C:
	add r7, r7, #1
	cmp r7, #4
	blt _0206CF4C
	mov r0, r10
	bl FUN_0206dcd4
	mov r1, r9
	mov r2, r8
	bl FUN_0206e354
	mov r0, r10
	bl FUN_0206dcd4
	mov r1, r9
	mov r2, r6
	bl FUN_0206e3c8
	mov r0, #1
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206CFCC: .word unk_0209BA20
	arm_func_end FUN_0206ceac

	arm_func_start FUN_0206cfd0
FUN_0206cfd0: ; 0x0206CFD0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x48
	mov r10, r0
	mov r9, r1
	mov r4, #0
_0206CFE4:
	mov r0, r10
	mov r1, r4
	bl FUN_0206cdf8
	cmp r9, r0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, r4, #1
	cmp r4, #4
	blt _0206CFE4
	mov r6, #0
_0206D010:
	mov r0, r10
	mov r1, r6
	bl FUN_0206cdf8
	cmp r0, #0
	bne _0206D0CC
	mov r0, r10
	mov r7, #0
	bl FUN_0206cc00
	add r4, sp, #0
	ldr r5, _0206D0E4 ; =0x0209BA20
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0204c078
	mov r8, r7
_0206D04C:
	add r0, r4, r8, lsl #2
	ldrh r0, [r0, #0x2c]
	cmp r9, r0
	bne _0206D08C
	mov r0, r5
	mov r1, r9
	bl FUN_0204a2c4
	cmp r0, #0
	beq _0206D08C
	ldrb r1, [r0, #0x14]
	mov r0, r5
	bl FUN_0207217c
	add r1, r4, r8, lsl #2
	ldrb r1, [r1, #0x2f]
	bl FUN_0204b1dc
	mov r7, r0
_0206D08C:
	add r8, r8, #1
	cmp r8, #4
	blt _0206D04C
	mov r0, r10
	bl FUN_0206dcd4
	mov r1, r6
	mov r2, r9
	bl FUN_0206e354
	mov r0, r10
	bl FUN_0206dcd4
	mov r1, r6
	mov r2, r7
	bl FUN_0206e3c8
	add sp, sp, #0x48
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206D0CC:
	add r6, r6, #1
	cmp r6, #4
	blt _0206D010
	mov r0, #0
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206D0E4: .word unk_0209BA20
	arm_func_end FUN_0206cfd0

	arm_func_start FUN_0206d0e8
FUN_0206d0e8: ; 0x0206D0E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	cmp r5, #4
	mov r6, r0
	cmpne r5, #5
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0206cdf8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_0206dcd4
	mov r4, #0
	mov r1, r5
	mov r2, r4
	bl FUN_0206e354
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	mov r2, r4
	bl FUN_0206e3c8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206d0e8

	arm_func_start FUN_0206d150
FUN_0206d150: ; 0x0206D150
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r4, r3
	bl FUN_0206dcd4
	mov r1, r6
	mov r3, r5
	mov r2, #0
	bl FUN_0206e03c
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r6
	mov r3, r4
	mov r2, #1
	bl FUN_0206e03c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0206d150

	arm_func_start FUN_0206d194
FUN_0206d194: ; 0x0206D194
	mov r0, #0
	bx lr
	arm_func_end FUN_0206d194

	arm_func_start FUN_0206d19c
FUN_0206d19c: ; 0x0206D19C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0206D1AC:
	mov r0, r6
	mov r1, r4
	bl FUN_0206cdf8
	cmp r5, r0
	bne _0206D1D0
	mov r0, r6
	mov r1, r4
	bl FUN_0206d194
	ldmfd sp!, {r4, r5, r6, pc}
_0206D1D0:
	add r4, r4, #1
	cmp r4, #6
	blt _0206D1AC
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206d19c

	arm_func_start FUN_0206d1e4
FUN_0206d1e4: ; 0x0206D1E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0206D308 ; =0x020A0640
	mov r7, r0
	ldrb r0, [r4, #0x1a]
	mov r6, r1
	mov r5, r2
	mov r8, r3
	cmp r0, #0
	bne _0206D300
	ldr r0, _0206D30C ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0206D300
	mov r0, r7
	mov r1, r6
	bl FUN_0206d388
	mov r4, r0
	cmp r8, #0
	strneb r4, [r8]
	cmp r4, #6
	bhs _0206D300
	ldr r0, _0206D310 ; =0x0209BA20
	mov r1, r6
	bl FUN_0204a2c4
	cmp r0, #0
	beq _0206D29C
	ldrb r1, [r0]
	mov r2, #1
	mov r12, r2
	cmp r1, #5
	cmpne r1, #6
	movne r12, #0
	mov r3, r2
	cmp r12, #0
	bne _0206D280
	ldrb r1, [r0]
	cmp r1, #7
	movne r3, #0
_0206D280:
	cmp r3, #0
	bne _0206D294
	ldrb r0, [r0]
	cmp r0, #8
	movne r2, #0
_0206D294:
	cmp r2, #0
	bne _0206D2A4
_0206D29C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206D2A4:
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_0206d314
	cmp r0, #0
	beq _0206D2D0
	mov r0, r7
	mov r1, #9
	mov r2, #0x28
	bl FUN_0206dbb4
_0206D2D0:
	mov r0, r7
	bl FUN_0206dcd4
	add r1, r0, r4
	ldrb r1, [r1, #0x44]
	add r2, r5, r1
	cmp r2, #0xff
	movgt r2, #0xff
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_0206e3c8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206D300:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206D308: .word unk_020A0640
_0206D30C: .word unk_02099EF0
_0206D310: .word unk_0209BA20
	arm_func_end FUN_0206d1e4

	arm_func_start FUN_0206d314
FUN_0206d314: ; 0x0206D314
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0206D384 ; =0x0209BA20
	mov r8, r0
	mov r0, r6
	mov r4, r2
	mov r7, r3
	bl FUN_0204a2c4
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_0206dcd4
	add r0, r0, r4
	ldrb r4, [r0, #0x44]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_020721bc
	add r2, r4, r7
	mov r4, r0
	mov r0, r6
	mov r1, r5
	and r2, r2, #0xff
	bl FUN_020721bc
	cmp r4, r0
	movlo r0, #1
	movhs r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206D384: .word unk_0209BA20
	arm_func_end FUN_0206d314

	arm_func_start FUN_0206d388
FUN_0206d388: ; 0x0206D388
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0206D398:
	mov r0, r6
	mov r1, r4
	bl FUN_0206cdf8
	cmp r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #6
	blo _0206D398
	mov r0, #6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206d388

	arm_func_start FUN_0206d3c8
FUN_0206d3c8: ; 0x0206D3C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r1, [r4, #0x5a]
	orr r1, r5, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206e91c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206d3c8

	arm_func_start FUN_0206d3fc
FUN_0206d3fc: ; 0x0206D3FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r1, [r4, #0x5a]
	mvn r2, r5
	and r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206e91c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0206d3fc

	arm_func_start FUN_0206d434
FUN_0206d434: ; 0x0206D434
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r4, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d434

	arm_func_start FUN_0206d454
FUN_0206d454: ; 0x0206D454
	ldr r12, _0206D460 ; =FUN_0206d434
	mov r1, #0x20
	bx r12
_0206D460: .word FUN_0206d434
	arm_func_end FUN_0206d454

	arm_func_start FUN_0206d464
FUN_0206d464: ; 0x0206D464
	ldr r12, _0206D470 ; =FUN_0206d434
	mov r1, #0x40
	bx r12
_0206D470: .word FUN_0206d434
	arm_func_end FUN_0206d464

	arm_func_start FUN_0206d474
FUN_0206d474: ; 0x0206D474
	ldr r12, _0206D480 ; =FUN_0206d434
	mov r1, #0x80
	bx r12
_0206D480: .word FUN_0206d434
	arm_func_end FUN_0206d474

	arm_func_start FUN_0206d484
FUN_0206d484: ; 0x0206D484
	ldr r12, _0206D490 ; =FUN_0206d434
	mov r1, #0x100
	bx r12
_0206D490: .word FUN_0206d434
	arm_func_end FUN_0206d484

	arm_func_start FUN_0206d494
FUN_0206d494: ; 0x0206D494
	ldr r12, _0206D4A0 ; =FUN_0206d434
	mov r1, #0x200
	bx r12
_0206D4A0: .word FUN_0206d434
	arm_func_end FUN_0206d494

	arm_func_start FUN_0206d4a4
FUN_0206d4a4: ; 0x0206D4A4
	ldr r12, _0206D4B0 ; =FUN_0206d434
	mov r1, #0x400
	bx r12
_0206D4B0: .word FUN_0206d434
	arm_func_end FUN_0206d4a4

	arm_func_start FUN_0206d4b4
FUN_0206d4b4: ; 0x0206D4B4
	ldr r12, _0206D4C0 ; =FUN_0206d434
	mov r1, #0x800
	bx r12
_0206D4C0: .word FUN_0206d434
	arm_func_end FUN_0206d4b4

	arm_func_start FUN_0206d4c4
FUN_0206d4c4: ; 0x0206D4C4
	ldr r12, _0206D4D0 ; =FUN_0206d434
	mov r1, #0x1000
	bx r12
_0206D4D0: .word FUN_0206d434
	arm_func_end FUN_0206d4c4

	arm_func_start FUN_0206d4d4
FUN_0206d4d4: ; 0x0206D4D4
	cmp r1, #0
	ldreqh r1, [r0, #0x4e]
	ldrneh r3, [r0, #0x4e]
	movne r2, #0x1000
	biceq r1, r1, #0xf000
	subne r1, r1, #1
	bicne r3, r3, #0xf000
	orrne r1, r3, r2, lsl r1
	strh r1, [r0, #0x4e]
	bx lr
	arm_func_end FUN_0206d4d4

	arm_func_start FUN_0206d4fc
FUN_0206d4fc: ; 0x0206D4FC
	stmfd sp!, {r3, lr}
	bl FUN_0206cbf8
	ldr r1, _0206D550 ; =0x020A0640
	mov r2, #0
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	moveq r0, r2
	ldmeqfd sp!, {r3, pc}
	tst r0, #0x1000
	movne r2, #1
	bne _0206D548
	tst r0, #0x2000
	movne r2, #2
	bne _0206D548
	tst r0, #0x4000
	movne r2, #3
	bne _0206D548
	tst r0, #0x8000
	movne r2, #4
_0206D548:
	mov r0, r2
	ldmfd sp!, {r3, pc}
_0206D550: .word unk_020A0640
	arm_func_end FUN_0206d4fc

	arm_func_start FUN_0206d554
FUN_0206d554: ; 0x0206D554
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, _0206D5D0 ; =0x0209AEC0
	bl FUN_02046744
	mov r5, r0
	mov r0, r4
	bl FUN_0206d4fc
	mov r6, r0
	cmp r6, #4
	ldmhsfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #1
	tst r5, r1, lsl r6
	bne _0206D5C8
	bl FUN_ov16_020f085c
	mov r7, r0
	mov r8, #0
	mov r4, #1
	b _0206D5C0
_0206D59C:
	mov r0, r8
	bl FUN_ov16_020f085c
	cmp r7, r0
	bne _0206D5BC
	tst r5, r4, lsl r8
	movne r0, r8, lsl #0x10
	movne r6, r0, lsr #0x10
	bne _0206D5C8
_0206D5BC:
	add r8, r8, #1
_0206D5C0:
	cmp r8, #4
	blt _0206D59C
_0206D5C8:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206D5D0: .word unk_0209AEC0
	arm_func_end FUN_0206d554

	arm_func_start FUN_0206d5d4
FUN_0206d5d4: ; 0x0206D5D4
	stmfd sp!, {r3, lr}
	bl FUN_0206d5f0
	ldr r1, _0206D5EC ; =0x020A06D2
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	ldmfd sp!, {r3, pc}
_0206D5EC: .word unk_020A06D2
	arm_func_end FUN_0206d5d4

	arm_func_start FUN_0206d5f0
FUN_0206d5f0: ; 0x0206D5F0
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x56]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206d5f0

	arm_func_start FUN_0206d600
FUN_0206d600: ; 0x0206D600
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e7e4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d600

	arm_func_start FUN_0206d618
FUN_0206d618: ; 0x0206D618
	strh r1, [r0, #0x8e]
	bx lr
	arm_func_end FUN_0206d618

	arm_func_start FUN_0206d620
FUN_0206d620: ; 0x0206D620
	ldrh r2, [r0, #0x8e]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0x8e]
	bx lr
	arm_func_end FUN_0206d620

	arm_func_start FUN_0206d634
FUN_0206d634: ; 0x0206D634
	ldrh r2, [r0, #0x8e]
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #0x8e]
	bx lr
	arm_func_end FUN_0206d634

	arm_func_start FUN_0206d64c
FUN_0206d64c: ; 0x0206D64C
	ldrh r0, [r0, #0x8e]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d64c

	arm_func_start FUN_0206d660
FUN_0206d660: ; 0x0206D660
	ldrh r0, [r0, #0x8e]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d660

	arm_func_start FUN_0206d674
FUN_0206d674: ; 0x0206D674
	ldrh r0, [r0, #0x8e]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d674

	arm_func_start FUN_0206d688
FUN_0206d688: ; 0x0206D688
	ldrh r0, [r0, #0x8e]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d688

	arm_func_start FUN_0206d69c
FUN_0206d69c: ; 0x0206D69C
	ldrh r0, [r0, #0x8e]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d69c

	arm_func_start FUN_0206d6b0
FUN_0206d6b0: ; 0x0206D6B0
	ldrh r0, [r0, #0x8e]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d6b0

	arm_func_start FUN_0206d6c4
FUN_0206d6c4: ; 0x0206D6C4
	ldrh r0, [r0, #0x8e]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d6c4

	arm_func_start FUN_0206d6d8
FUN_0206d6d8: ; 0x0206D6D8
	ldrh r0, [r0, #0x8e]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d6d8

	arm_func_start FUN_0206d6ec
FUN_0206d6ec: ; 0x0206D6EC
	ldrh r0, [r0, #0x8e]
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d6ec

	arm_func_start FUN_0206d700
FUN_0206d700: ; 0x0206D700
	ldrh r0, [r0, #0x8e]
	tst r0, #0x200
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d700

	arm_func_start FUN_0206d714
FUN_0206d714: ; 0x0206D714
	ldrh r0, [r0, #0x8e]
	tst r0, #0x400
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d714

	arm_func_start FUN_0206d728
FUN_0206d728: ; 0x0206D728
	ldr r1, [r0, #0x88]
	mov r0, #0
	cmp r1, #0
	ldrnesh r1, [r1, #0x22]
	cmpne r1, #0
	movgt r0, #1
	bx lr
	arm_func_end FUN_0206d728

	arm_func_start FUN_0206d744
FUN_0206d744: ; 0x0206D744
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x4000
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d744

	arm_func_start FUN_0206d75c
FUN_0206d75c: ; 0x0206D75C
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206d75c

	arm_func_start FUN_0206d774
FUN_0206d774: ; 0x0206D774
	stmfd sp!, {r4, lr}
	ldr r2, _0206D7A8 ; =0x0000270F
	mov r4, r1
	cmp r4, r2
	movgt r4, r2
	bgt _0206D794
	cmp r4, #0
	movlt r4, #0
_0206D794:
	bl FUN_0206dcd4
	mov r1, r4, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206de28
	ldmfd sp!, {r4, pc}
_0206D7A8: .word 0x0000270F
	arm_func_end FUN_0206d774

	arm_func_start FUN_0206d7ac
FUN_0206d7ac: ; 0x0206D7AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0206dcd4
	ldrh r1, [r0, #0xa]
	mov r0, r4
	add r1, r1, #1
	bl FUN_0206d774
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d7ac

	arm_func_start FUN_0206d7cc
FUN_0206d7cc: ; 0x0206D7CC
	stmfd sp!, {r4, lr}
	ldr r2, _0206D800 ; =0x0000270F
	mov r4, r1
	cmp r4, r2
	movgt r4, r2
	bgt _0206D7EC
	cmp r4, #0
	movlt r4, #0
_0206D7EC:
	bl FUN_0206dcd4
	mov r1, r4, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206ddc0
	ldmfd sp!, {r4, pc}
_0206D800: .word 0x0000270F
	arm_func_end FUN_0206d7cc

	arm_func_start FUN_0206d804
FUN_0206d804: ; 0x0206D804
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0206dcd4
	ldrh r1, [r0, #6]
	mov r0, r4
	add r1, r1, #1
	bl FUN_0206d7cc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d804

	arm_func_start FUN_0206d824
FUN_0206d824: ; 0x0206D824
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0206D860
_0206D838: ; jump table
	b _0206D860 ; case 0
	b _0206D848 ; case 1
	b _0206D850 ; case 2
	b _0206D858 ; case 3
_0206D848:
	bl FUN_0206d8b8
	ldmfd sp!, {r3, r4, r5, pc}
_0206D850:
	bl FUN_0206d8a8
	ldmfd sp!, {r3, r4, r5, pc}
_0206D858:
	bl FUN_0206d8c8
	ldmfd sp!, {r3, r4, r5, pc}
_0206D860:
	ldr r4, _0206D8A4 ; =0x0209BA20
	mov r0, r4
	bl FUN_020731b4
	cmp r0, #0
	beq _0206D880
	mov r0, r5
	bl FUN_0206d8a8
	ldmfd sp!, {r3, r4, r5, pc}
_0206D880:
	mov r0, r4
	bl FUN_020731d0
	cmp r0, #0
	mov r0, r5
	beq _0206D89C
	bl FUN_0206d8c8
	ldmfd sp!, {r3, r4, r5, pc}
_0206D89C:
	bl FUN_0206d8b8
	ldmfd sp!, {r3, r4, r5, pc}
_0206D8A4: .word unk_0209BA20
	arm_func_end FUN_0206d824

	arm_func_start FUN_0206d8a8
FUN_0206d8a8: ; 0x0206D8A8
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x57]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206d8a8

	arm_func_start FUN_0206d8b8
FUN_0206d8b8: ; 0x0206D8B8
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x57]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206d8b8

	arm_func_start FUN_0206d8c8
FUN_0206d8c8: ; 0x0206D8C8
	stmfd sp!, {r3, lr}
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x57]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206d8c8

	arm_func_start FUN_0206d8d8
FUN_0206d8d8: ; 0x0206D8D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	cmp r2, #3
	addls pc, pc, r2, lsl #2
	b _0206D918
_0206D8F0: ; jump table
	b _0206D918 ; case 0
	b _0206D900 ; case 1
	b _0206D908 ; case 2
	b _0206D910 ; case 3
_0206D900:
	bl FUN_0206d980
	ldmfd sp!, {r4, r5, r6, pc}
_0206D908:
	bl FUN_0206d968
	ldmfd sp!, {r4, r5, r6, pc}
_0206D910:
	bl FUN_0206d998
	ldmfd sp!, {r4, r5, r6, pc}
_0206D918:
	ldr r4, _0206D964 ; =0x0209BA20
	mov r0, r4
	bl FUN_020731b4
	cmp r0, #0
	beq _0206D93C
	mov r0, r6
	mov r1, r5
	bl FUN_0206d968
	ldmfd sp!, {r4, r5, r6, pc}
_0206D93C:
	mov r0, r4
	bl FUN_020731d0
	cmp r0, #0
	mov r0, r6
	mov r1, r5
	beq _0206D95C
	bl FUN_0206d998
	ldmfd sp!, {r4, r5, r6, pc}
_0206D95C:
	bl FUN_0206d980
	ldmfd sp!, {r4, r5, r6, pc}
_0206D964: .word unk_0209BA20
	arm_func_end FUN_0206d8d8

	arm_func_start FUN_0206d968
FUN_0206d968: ; 0x0206D968
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e984
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d968

	arm_func_start FUN_0206d980
FUN_0206d980: ; 0x0206D980
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e84c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d980

	arm_func_start FUN_0206d998
FUN_0206d998: ; 0x0206D998
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206ea54
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206d998

	arm_func_start FUN_0206d9b0
FUN_0206d9b0: ; 0x0206D9B0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldrneb r0, [r0, #0x96]
	ldmnefd sp!, {r3, pc}
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x58]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0206d9b0

	arm_func_start FUN_0206d9cc
FUN_0206d9cc: ; 0x0206D9CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	strneb r4, [r5, #0x96]
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e8b4
	strb r4, [r5, #0x96]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206d9cc

	arm_func_start FUN_0206d9f8
FUN_0206d9f8: ; 0x0206D9F8
	ldr r1, [r0, #0x88]
	mov r0, #0
	cmp r1, #0
	ldrneh r1, [r1, #0x1e]
	cmpne r1, #0
	movne r0, #1
	bx lr
	arm_func_end FUN_0206d9f8

	arm_func_start FUN_0206da14
FUN_0206da14: ; 0x0206DA14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0206DA50
	ldr r0, [r5, #0x88]
	mov r1, r4
	cmp r0, #0
	beq _0206DA48
	ldrsh r0, [r0, #0x26]
	cmp r0, #0
	movle r1, #1
_0206DA48:
	cmp r1, #0
	movne r4, #1
_0206DA50:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206da14

	arm_func_start FUN_0206da58
FUN_0206da58: ; 0x0206DA58
	cmp r1, #0
	bxlt lr
	cmp r1, #0x34
	bxge lr
	ldr r0, [r0, #0x88]
	cmp r0, #0
	strneh r1, [r0, #0x1c]
	bx lr
	arm_func_end FUN_0206da58

	arm_func_start FUN_0206da78
FUN_0206da78: ; 0x0206DA78
	ldr r0, [r0, #0x88]
	ldrh r0, [r0, #0x1c]
	bx lr
	arm_func_end FUN_0206da78

	arm_func_start FUN_0206da84
FUN_0206da84: ; 0x0206DA84
	ldr r0, [r0, #0x88]
	cmp r1, #0
	movlt r1, #0
	strh r1, [r0, #0x22]
	bx lr
	arm_func_end FUN_0206da84

	arm_func_start FUN_0206da98
FUN_0206da98: ; 0x0206DA98
	ldr r1, [r0, #0x88]
	cmp r1, #0
	bxeq lr
	mov r3, #0
	strb r3, [r1, #0x84]
	ldr r2, [r0, #0x88]
	sub r1, r3, #1
	strb r3, [r2, #0x85]
	ldr r0, [r0, #0x88]
	strh r1, [r0, #0x86]
	bx lr
	arm_func_end FUN_0206da98

	arm_func_start FUN_0206dac4
FUN_0206dac4: ; 0x0206DAC4
	ldr r2, [r0, #0x84]
	mov r0, r1, lsl #0x10
	ldrh r1, [r2, #0x16]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0x16]
	bx lr
	arm_func_end FUN_0206dac4

	arm_func_start FUN_0206dadc
FUN_0206dadc: ; 0x0206DADC
	ldr r2, [r0, #0x84]
	mvn r0, r1
	ldrh r1, [r2, #0x16]
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r2, #0x16]
	bx lr
	arm_func_end FUN_0206dadc

	arm_func_start FUN_0206daf8
FUN_0206daf8: ; 0x0206DAF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x84]
	cmp r2, #0
	strb r1, [r0, #0x1a]
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	bl FUN_ov16_020efd54
	ldr r1, [r4, #0x84]
	strh r0, [r1, #0x18]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206daf8

	arm_func_start FUN_0206db24
FUN_0206db24: ; 0x0206DB24
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206db24

	arm_func_start FUN_0206db3c
FUN_0206db3c: ; 0x0206DB3C
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206db3c

	arm_func_start FUN_0206db54
FUN_0206db54: ; 0x0206DB54
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206db54

	arm_func_start FUN_0206db6c
FUN_0206db6c: ; 0x0206DB6C
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206db6c

	arm_func_start FUN_0206db84
FUN_0206db84: ; 0x0206DB84
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206db84

	arm_func_start FUN_0206db9c
FUN_0206db9c: ; 0x0206DB9C
	ldr r0, [r0, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x400
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0206db9c

	arm_func_start FUN_0206dbb4
FUN_0206dbb4: ; 0x0206DBB4
	ldr r3, [r0, #0x84]
	cmp r3, #0
	bxeq lr
	ldrb r0, [r3, #0x1c]
	cmp r0, #3
	bne _0206DBD8
	cmp r1, #2
	cmpne r1, #8
	bxeq lr
_0206DBD8:
	cmp r0, #9
	strneb r1, [r3, #0x1c]
	strneh r2, [r3, #0x12]
	movne r0, #0
	strneh r0, [r3, #0x14]
	bx lr
	arm_func_end FUN_0206dbb4

	arm_func_start FUN_0206dbf0
FUN_0206dbf0: ; 0x0206DBF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x84]
	mov r0, r4
	bl FUN_ov16_020f0298
	ldrb r1, [r4, #0x1b]
	mov r0, r5
	add r1, r1, #4
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #29
	add r1, r2, r1, ror #29
	strb r1, [r4, #0x1b]
	ldrh r1, [r4, #0x18]
	add r1, r1, #0x8000
	strh r1, [r4, #0x18]
	ldrb r1, [r4, #0x1a]
	add r1, r1, #4
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #29
	add r1, r2, r1, ror #29
	strb r1, [r4, #0x1a]
	bl FUN_0206d6b0
	cmp r0, #0
	mov r0, r5
	mov r1, #0x20
	beq _0206DC60
	bl FUN_0206d634
	b _0206DC64
_0206DC60:
	bl FUN_0206d620
_0206DC64:
	mov r4, #0
	b _0206DC7C
_0206DC6C:
	add r0, r1, #0x34
	add r0, r0, r4, lsl #3
	bl FUN_ov16_020f0298
	add r4, r4, #1
_0206DC7C:
	ldr r1, [r5, #0x88]
	ldrb r0, [r1, #0x85]
	cmp r4, r0
	ldmgefd sp!, {r3, r4, r5, pc}
	cmp r4, #0xa
	blt _0206DC6C
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206dbf0

	arm_func_start FUN_0206dc98
FUN_0206dc98: ; 0x0206DC98
	ldr r0, [r0, #0x84]
	ldrsb r0, [r0, #0x1e]
	bx lr
	arm_func_end FUN_0206dc98

	arm_func_start FUN_0206dca4
FUN_0206dca4: ; 0x0206DCA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0206ccec
	mov r1, r0
	mov r0, r4
	bl FUN_0206cc9c
	mov r0, r4
	bl FUN_0206cc94
	mov r1, r0
	mov r0, r4
	bl FUN_0206cc44
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206dca4

	arm_func_start FUN_0206dcd4
FUN_0206dcd4: ; 0x0206DCD4
	ldr r0, [r0, #0x68]
	bx lr
	arm_func_end FUN_0206dcd4

	arm_func_start FUN_0206dcdc
FUN_0206dcdc: ; 0x0206DCDC
	ldr r0, [r0, #0x68]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_0206dcdc

	arm_func_start FUN_0206dcf0
FUN_0206dcf0: ; 0x0206DCF0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DD50 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206DD28
	ldr r0, _0206DD54 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DD30
_0206DD28:
	str r5, [r6]
	ldmfd sp!, {r4, r5, r6, pc}
_0206DD30:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	str r5, [r6]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206DD50: .word unk_0209BA20
_0206DD54: .word unk_0209A11C
	arm_func_end FUN_0206dcf0

	arm_func_start FUN_0206dd58
FUN_0206dd58: ; 0x0206DD58
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DDB8 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206DD90
	ldr r0, _0206DDBC ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DD98
_0206DD90:
	strh r5, [r6, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_0206DD98:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #4]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206DDB8: .word unk_0209BA20
_0206DDBC: .word unk_0209A11C
	arm_func_end FUN_0206dd58

	arm_func_start FUN_0206ddc0
FUN_0206ddc0: ; 0x0206DDC0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DE20 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206DDF8
	ldr r0, _0206DE24 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DE00
_0206DDF8:
	strh r5, [r6, #6]
	ldmfd sp!, {r4, r5, r6, pc}
_0206DE00:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #6]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206DE20: .word unk_0209BA20
_0206DE24: .word unk_0209A11C
	arm_func_end FUN_0206ddc0

	arm_func_start FUN_0206de28
FUN_0206de28: ; 0x0206DE28
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DE88 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206DE60
	ldr r0, _0206DE8C ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DE68
_0206DE60:
	strh r5, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, pc}
_0206DE68:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0xa]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206DE88: .word unk_0209BA20
_0206DE8C: .word unk_0209A11C
	arm_func_end FUN_0206de28

	arm_func_start FUN_0206de90
FUN_0206de90: ; 0x0206DE90
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DEF0 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206DEC8
	ldr r0, _0206DEF4 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DED0
_0206DEC8:
	strh r5, [r6, #0xe]
	ldmfd sp!, {r4, r5, r6, pc}
_0206DED0:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0xe]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206DEF0: .word unk_0209BA20
_0206DEF4: .word unk_0209A11C
	arm_func_end FUN_0206de90

	arm_func_start FUN_0206def8
FUN_0206def8: ; 0x0206DEF8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206DF64 ; =0x0209BA20
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl FUN_02074088
	cmp r0, #0
	bne _0206DF34
	ldr r0, _0206DF68 ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DF40
_0206DF34:
	add r0, r7, r6, lsl #1
	strh r5, [r0, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206DF40:
	mov r0, r4
	mov r1, r7
	bl FUN_0207420c
	add r2, r7, r6, lsl #1
	mov r0, r4
	mov r1, r7
	strh r5, [r2, #0x10]
	bl FUN_020740a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206DF64: .word unk_0209BA20
_0206DF68: .word unk_0209A11C
	arm_func_end FUN_0206def8

	arm_func_start FUN_0206df6c
FUN_0206df6c: ; 0x0206DF6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DFCC ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206DFA4
	ldr r0, _0206DFD0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206DFAC
_0206DFA4:
	strh r5, [r6, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
_0206DFAC:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0x18]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206DFCC: .word unk_0209BA20
_0206DFD0: .word unk_0209A11C
	arm_func_end FUN_0206df6c

	arm_func_start FUN_0206dfd4
FUN_0206dfd4: ; 0x0206DFD4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E034 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E00C
	ldr r0, _0206E038 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E014
_0206E00C:
	strh r5, [r6, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E014:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0x1a]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E034: .word unk_0209BA20
_0206E038: .word unk_0209A11C
	arm_func_end FUN_0206dfd4

	arm_func_start FUN_0206e03c
FUN_0206e03c: ; 0x0206E03C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0206E0B4 ; =0x0209BA20
	mov r5, r0
	mov r0, r6
	mov r8, r1
	mov r7, r2
	mov r4, r3
	bl FUN_02074088
	cmp r0, #0
	bne _0206E07C
	ldr r0, _0206E0B8 ; =0x0209A11C
	mov r1, r5
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E08C
_0206E07C:
	add r0, r7, r8, lsl #1
	add r0, r5, r0, lsl #1
	strh r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206E08C:
	mov r0, r6
	mov r1, r5
	bl FUN_0207420c
	add r0, r7, r8, lsl #1
	add r2, r5, r0, lsl #1
	mov r0, r6
	mov r1, r5
	strh r4, [r2, #0x1c]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206E0B4: .word unk_0209BA20
_0206E0B8: .word unk_0209A11C
	arm_func_end FUN_0206e03c

	arm_func_start FUN_0206e0bc
FUN_0206e0bc: ; 0x0206E0BC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E11C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E0F4
	ldr r0, _0206E120 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E0FC
_0206E0F4:
	strh r5, [r6, #0x34]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E0FC:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0x34]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E11C: .word unk_0209BA20
_0206E120: .word unk_0209A11C
	arm_func_end FUN_0206e0bc

	arm_func_start FUN_0206e124
FUN_0206e124: ; 0x0206E124
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E184 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E15C
	ldr r0, _0206E188 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E164
_0206E15C:
	strh r5, [r6, #0x36]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E164:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0x36]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E184: .word unk_0209BA20
_0206E188: .word unk_0209A11C
	arm_func_end FUN_0206e124

	arm_func_start FUN_0206e18c
FUN_0206e18c: ; 0x0206E18C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0206E204 ; =0x0209BA20
	mov r4, r0
	mov r0, r5
	mov r6, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E1C4
	ldr r0, _0206E208 ; =0x0209A11C
	mov r1, r4
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E1D8
_0206E1C4:
	ldrh r1, [r4, #0x5a]
	mov r0, r6, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r4, #0x5a]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E1D8:
	mov r0, r5
	mov r1, r4
	bl FUN_0207420c
	ldrh r2, [r4, #0x5a]
	mov r1, r6, lsl #0x10
	mov r0, r5
	orr r2, r2, r1, lsr #16
	mov r1, r4
	strh r2, [r4, #0x5a]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E204: .word unk_0209BA20
_0206E208: .word unk_0209A11C
	arm_func_end FUN_0206e18c

	arm_func_start FUN_0206e20c
FUN_0206e20c: ; 0x0206E20C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0206E28C ; =0x0209BA20
	mov r4, r0
	mov r0, r5
	mov r6, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E244
	ldr r0, _0206E290 ; =0x0209A11C
	mov r1, r4
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E25C
_0206E244:
	ldrh r1, [r4, #0x5a]
	mvn r0, r6
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r4, #0x5a]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E25C:
	mov r0, r5
	mov r1, r4
	bl FUN_0207420c
	mvn r0, r6
	ldrh r2, [r4, #0x5a]
	mov r1, r0, lsl #0x10
	mov r0, r5
	and r2, r2, r1, lsr #16
	mov r1, r4
	strh r2, [r4, #0x5a]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E28C: .word unk_0209BA20
_0206E290: .word unk_0209A11C
	arm_func_end FUN_0206e20c

	arm_func_start FUN_0206e294
FUN_0206e294: ; 0x0206E294
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _0206E34C ; =0x0209BA20
	mov r5, r0
	mov r0, r6
	mov r4, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E2CC
	ldr r0, _0206E350 ; =0x0209A11C
	mov r1, r5
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E300
_0206E2CC:
	sub r2, r4, #1
	mov r6, #0
	mov r3, #0x1000
_0206E2D8:
	add r1, r5, r6, lsl #1
	ldrh r0, [r1, #0x1c]
	cmp r4, #0
	add r6, r6, #1
	bic r0, r0, #0xf000
	orrne r0, r0, r3, lsl r2
	strh r0, [r1, #0x1c]
	cmp r6, #0xc
	blt _0206E2D8
	ldmfd sp!, {r4, r5, r6, pc}
_0206E300:
	mov r0, r6
	mov r1, r5
	bl FUN_0207420c
	sub r2, r4, #1
	mov r6, #0
	mov r3, #0x1000
_0206E318:
	add r1, r5, r6, lsl #1
	ldrh r0, [r1, #0x1c]
	cmp r4, #0
	add r6, r6, #1
	bic r0, r0, #0xf000
	orrne r0, r0, r3, lsl r2
	strh r0, [r1, #0x1c]
	cmp r6, #0xc
	blt _0206E318
	ldr r0, _0206E34C ; =0x0209BA20
	mov r1, r5
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E34C: .word unk_0209BA20
_0206E350: .word unk_0209A11C
	arm_func_end FUN_0206e294

	arm_func_start FUN_0206e354
FUN_0206e354: ; 0x0206E354
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206E3C0 ; =0x0209BA20
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl FUN_02074088
	cmp r0, #0
	bne _0206E390
	ldr r0, _0206E3C4 ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E39C
_0206E390:
	add r0, r7, r6, lsl #1
	strh r5, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206E39C:
	mov r0, r4
	mov r1, r7
	bl FUN_0207420c
	add r2, r7, r6, lsl #1
	mov r0, r4
	mov r1, r7
	strh r5, [r2, #0x38]
	bl FUN_020740a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206E3C0: .word unk_0209BA20
_0206E3C4: .word unk_0209A11C
	arm_func_end FUN_0206e354

	arm_func_start FUN_0206e3c8
FUN_0206e3c8: ; 0x0206E3C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206E434 ; =0x0209BA20
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl FUN_02074088
	cmp r0, #0
	bne _0206E404
	ldr r0, _0206E438 ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E410
_0206E404:
	add r0, r7, r6
	strb r5, [r0, #0x44]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206E410:
	mov r0, r4
	mov r1, r7
	bl FUN_0207420c
	add r2, r7, r6
	mov r0, r4
	mov r1, r7
	strb r5, [r2, #0x44]
	bl FUN_020740a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206E434: .word unk_0209BA20
_0206E438: .word unk_0209A11C
	arm_func_end FUN_0206e3c8

	arm_func_start FUN_0206e43c
FUN_0206e43c: ; 0x0206E43C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E49C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E474
	ldr r0, _0206E4A0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E47C
_0206E474:
	strb r5, [r6, #0x4a]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E47C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x4a]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E49C: .word unk_0209BA20
_0206E4A0: .word unk_0209A11C
	arm_func_end FUN_0206e43c

	arm_func_start FUN_0206e4a4
FUN_0206e4a4: ; 0x0206E4A4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E504 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E4DC
	ldr r0, _0206E508 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E4E4
_0206E4DC:
	strb r5, [r6, #0x4b]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E4E4:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x4b]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E504: .word unk_0209BA20
_0206E508: .word unk_0209A11C
	arm_func_end FUN_0206e4a4

	arm_func_start FUN_0206e50c
FUN_0206e50c: ; 0x0206E50C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E56C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E544
	ldr r0, _0206E570 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E54C
_0206E544:
	strb r5, [r6, #0x4f]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E54C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x4f]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E56C: .word unk_0209BA20
_0206E570: .word unk_0209A11C
	arm_func_end FUN_0206e50c

	arm_func_start FUN_0206e574
FUN_0206e574: ; 0x0206E574
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E5D4 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E5AC
	ldr r0, _0206E5D8 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E5B4
_0206E5AC:
	strb r5, [r6, #0x50]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E5B4:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x50]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E5D4: .word unk_0209BA20
_0206E5D8: .word unk_0209A11C
	arm_func_end FUN_0206e574

	arm_func_start FUN_0206e5dc
FUN_0206e5dc: ; 0x0206E5DC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E63C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E614
	ldr r0, _0206E640 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E61C
_0206E614:
	strb r5, [r6, #0x51]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E61C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x51]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E63C: .word unk_0209BA20
_0206E640: .word unk_0209A11C
	arm_func_end FUN_0206e5dc

	arm_func_start FUN_0206e644
FUN_0206e644: ; 0x0206E644
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E6A4 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E67C
	ldr r0, _0206E6A8 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E684
_0206E67C:
	strb r5, [r6, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E684:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x52]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E6A4: .word unk_0209BA20
_0206E6A8: .word unk_0209A11C
	arm_func_end FUN_0206e644

	arm_func_start FUN_0206e6ac
FUN_0206e6ac: ; 0x0206E6AC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E70C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E6E4
	ldr r0, _0206E710 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E6EC
_0206E6E4:
	strb r5, [r6, #0x53]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E6EC:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x53]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E70C: .word unk_0209BA20
_0206E710: .word unk_0209A11C
	arm_func_end FUN_0206e6ac

	arm_func_start FUN_0206e714
FUN_0206e714: ; 0x0206E714
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E774 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E74C
	ldr r0, _0206E778 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E754
_0206E74C:
	strb r5, [r6, #0x54]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E754:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x54]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E774: .word unk_0209BA20
_0206E778: .word unk_0209A11C
	arm_func_end FUN_0206e714

	arm_func_start FUN_0206e77c
FUN_0206e77c: ; 0x0206E77C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E7DC ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E7B4
	ldr r0, _0206E7E0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E7BC
_0206E7B4:
	strb r5, [r6, #0x55]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E7BC:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x55]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E7DC: .word unk_0209BA20
_0206E7E0: .word unk_0209A11C
	arm_func_end FUN_0206e77c

	arm_func_start FUN_0206e7e4
FUN_0206e7e4: ; 0x0206E7E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E844 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E81C
	ldr r0, _0206E848 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E824
_0206E81C:
	strb r5, [r6, #0x56]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E824:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x56]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E844: .word unk_0209BA20
_0206E848: .word unk_0209A11C
	arm_func_end FUN_0206e7e4

	arm_func_start FUN_0206e84c
FUN_0206e84c: ; 0x0206E84C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E8AC ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E884
	ldr r0, _0206E8B0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E88C
_0206E884:
	strb r5, [r6, #0x57]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E88C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x57]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E8AC: .word unk_0209BA20
_0206E8B0: .word unk_0209A11C
	arm_func_end FUN_0206e84c

	arm_func_start FUN_0206e8b4
FUN_0206e8b4: ; 0x0206E8B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E914 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E8EC
	ldr r0, _0206E918 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E8F4
_0206E8EC:
	strb r5, [r6, #0x58]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E8F4:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x58]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E914: .word unk_0209BA20
_0206E918: .word unk_0209A11C
	arm_func_end FUN_0206e8b4

	arm_func_start FUN_0206e91c
FUN_0206e91c: ; 0x0206E91C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E97C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E954
	ldr r0, _0206E980 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E95C
_0206E954:
	strh r5, [r6, #0x5a]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E95C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strh r5, [r6, #0x5a]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E97C: .word unk_0209BA20
_0206E980: .word unk_0209A11C
	arm_func_end FUN_0206e91c

	arm_func_start FUN_0206e984
FUN_0206e984: ; 0x0206E984
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E9E4 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206E9BC
	ldr r0, _0206E9E8 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206E9C4
_0206E9BC:
	strb r5, [r6, #0x57]
	ldmfd sp!, {r4, r5, r6, pc}
_0206E9C4:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x57]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E9E4: .word unk_0209BA20
_0206E9E8: .word unk_0209A11C
	arm_func_end FUN_0206e984

	arm_func_start FUN_0206e9ec
FUN_0206e9ec: ; 0x0206E9EC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EA4C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EA24
	ldr r0, _0206EA50 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EA2C
_0206EA24:
	strb r5, [r6, #0x5d]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EA2C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x5d]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EA4C: .word unk_0209BA20
_0206EA50: .word unk_0209A11C
	arm_func_end FUN_0206e9ec

	arm_func_start FUN_0206ea54
FUN_0206ea54: ; 0x0206EA54
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EAB4 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EA8C
	ldr r0, _0206EAB8 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EA94
_0206EA8C:
	strb r5, [r6, #0x57]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EA94:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x57]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EAB4: .word unk_0209BA20
_0206EAB8: .word unk_0209A11C
	arm_func_end FUN_0206ea54

	arm_func_start FUN_0206eabc
FUN_0206eabc: ; 0x0206EABC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EB1C ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EAF4
	ldr r0, _0206EB20 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EAFC
_0206EAF4:
	strb r5, [r6, #0x5f]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EAFC:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x5f]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EB1C: .word unk_0209BA20
_0206EB20: .word unk_0209A11C
	arm_func_end FUN_0206eabc

	arm_func_start FUN_0206eb24
FUN_0206eb24: ; 0x0206EB24
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EB84 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EB5C
	ldr r0, _0206EB88 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EB64
_0206EB5C:
	strb r5, [r6, #0x60]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EB64:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x60]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EB84: .word unk_0209BA20
_0206EB88: .word unk_0209A11C
	arm_func_end FUN_0206eb24

	arm_func_start FUN_0206eb8c
FUN_0206eb8c: ; 0x0206EB8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EBEC ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EBC4
	ldr r0, _0206EBF0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EBCC
_0206EBC4:
	strb r5, [r6, #0x61]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EBCC:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x61]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EBEC: .word unk_0209BA20
_0206EBF0: .word unk_0209A11C
	arm_func_end FUN_0206eb8c

	arm_func_start FUN_0206ebf4
FUN_0206ebf4: ; 0x0206EBF4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EC54 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EC2C
	ldr r0, _0206EC58 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EC34
_0206EC2C:
	strb r5, [r6, #0x62]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EC34:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x62]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EC54: .word unk_0209BA20
_0206EC58: .word unk_0209A11C
	arm_func_end FUN_0206ebf4

	arm_func_start FUN_0206ec5c
FUN_0206ec5c: ; 0x0206EC5C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206ECBC ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206EC94
	ldr r0, _0206ECC0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206EC9C
_0206EC94:
	strb r5, [r6, #0x63]
	ldmfd sp!, {r4, r5, r6, pc}
_0206EC9C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r4
	mov r1, r6
	strb r5, [r6, #0x63]
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206ECBC: .word unk_0209BA20
_0206ECC0: .word unk_0209A11C
	arm_func_end FUN_0206ec5c

	arm_func_start FUN_0206ecc4
FUN_0206ecc4: ; 0x0206ECC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0206ED38 ; =0x0209BA20
	mov r5, r0
	mov r0, r4
	bl FUN_02074088
	cmp r0, #0
	bne _0206ECF8
	ldr r0, _0206ED3C ; =0x0209A11C
	mov r1, r5
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206ED0C
_0206ECF8:
	mov r0, r5
	mov r1, #0
	mov r2, #0x6c
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0206ED0C:
	mov r0, r4
	mov r1, r5
	bl FUN_0207420c
	mov r0, r5
	mov r1, #0
	mov r2, #0x6c
	bl MI_CpuFill8
	mov r0, r4
	mov r1, r5
	bl FUN_020740a4
	ldmfd sp!, {r3, r4, r5, pc}
_0206ED38: .word unk_0209BA20
_0206ED3C: .word unk_0209A11C
	arm_func_end FUN_0206ecc4

	arm_func_start FUN_0206ed40
FUN_0206ed40: ; 0x0206ED40
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EDB8 ; =0x0209BA20
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_02074088
	cmp r0, #0
	bne _0206ED78
	ldr r0, _0206EDBC ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0206c820
	cmp r0, #0
	bne _0206ED8C
_0206ED78:
	mov r0, r5
	mov r1, r6
	mov r2, #0x6c
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, pc}
_0206ED8C:
	mov r0, r4
	mov r1, r6
	bl FUN_0207420c
	mov r0, r5
	mov r1, r6
	mov r2, #0x6c
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r6
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206EDB8: .word unk_0209BA20
_0206EDBC: .word unk_0209A11C
	arm_func_end FUN_0206ed40

	arm_func_start FUN_0206edc0
FUN_0206edc0: ; 0x0206EDC0
	mov r2, #0
	ldr r0, _0206EDE0 ; =0x020B9D54
	mov r1, r2
_0206EDCC:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x10
	blt _0206EDCC
	bx lr
_0206EDE0: .word unk_020B9D54
	arm_func_end FUN_0206edc0

	arm_func_start FUN_0206ede4
FUN_0206ede4: ; 0x0206EDE4
	ldr r2, _0206EE14 ; =0x020B9D50
	ldr r0, [r2]
	add r0, r0, r0
	add r0, r0, r0
	ldr r2, _0206EE18 ; =0x020B9D54
	add r2, r2, r0
	mov r0, #0
	str r0, [r2]
	ldr r2, _0206EE1C ; =0x020B9D4C
	ldr sp, [r2]
	ldr lr, [sp], #0x4
	mov pc, lr
_0206EE14: .word unk_020B9D50
_0206EE18: .word unk_020B9D54
_0206EE1C: .word unk_020B9D4C
	arm_func_end FUN_0206ede4

	arm_func_start FUN_0206ee20
FUN_0206ee20: ; 0x0206EE20
	str lr, [sp, #-4]!
	ldr r2, _0206EE50 ; =0x020B9D50
	ldr r0, [r2]
	add r0, r0, r0
	add r0, r0, r0
	ldr r2, _0206EE54 ; =0x020B9D54
	add r2, r2, r0
	str sp, [r2]
	ldr r2, _0206EE58 ; =0x020B9D4C
	ldr sp, [r2]
	ldr lr, [sp], #0x4
	mov pc, lr
_0206EE50: .word unk_020B9D50
_0206EE54: .word unk_020B9D54
_0206EE58: .word unk_020B9D4C
	arm_func_end FUN_0206ee20

	arm_func_start FUN_0206ee5c
FUN_0206ee5c: ; 0x0206EE5C
	str lr, [sp, #-4]!
	str r11, [sp, #-4]!
	str r10, [sp, #-4]!
	str r9, [sp, #-4]!
	str r8, [sp, #-4]!
	str r7, [sp, #-4]!
	str r6, [sp, #-4]!
	str r5, [sp, #-4]!
	str r4, [sp, #-4]!
	str r3, [sp, #-4]!
	str r2, [sp, #-4]!
	str r1, [sp, #-4]!
	str r0, [sp, #-4]!
	bl FUN_0206ee20
	b FUN_0206ee98 ; why???
	arm_func_end FUN_0206ee5c

	arm_func_start FUN_0206ee98
FUN_0206ee98: ; 0x0206EE98
	ldr r0, [sp], #0x4
	ldr r1, [sp], #0x4
	ldr r2, [sp], #0x4
	ldr r3, [sp], #0x4
	ldr r4, [sp], #0x4
	ldr r5, [sp], #0x4
	ldr r6, [sp], #0x4
	ldr r7, [sp], #0x4
	ldr r8, [sp], #0x4
	ldr r9, [sp], #0x4
	ldr r10, [sp], #0x4
	ldr r11, [sp], #0x4
	ldr r2, [sp], #0x4
	mov pc, r2
	arm_func_end FUN_0206ee98

	arm_func_start FUN_0206eed0
FUN_0206eed0: ; 0x0206EED0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_0206EEE4:
	bl FUN_0206ee5c
	add r4, r4, #1
	cmp r4, r5
	blt _0206EEE4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206eed0

	arm_func_start FUN_0206eef8
FUN_0206eef8: ; 0x0206EEF8
	stmfd sp!, {r3, lr}
	ldr r1, _0206EF18 ; =0x020B9D4C
	ldr r2, _0206EF1C ; =0x020B9D94
	ldr r1, [r1, #4]
	ldr r1, [r2, r1, lsl #2]
	blx r1
	bl FUN_0206ede4
	ldmfd sp!, {r3, pc}
_0206EF18: .word unk_020B9D4C
_0206EF1C: .word unk_020B9D94
	arm_func_end FUN_0206eef8

	arm_func_start FUN_0206ef20
FUN_0206ef20: ; 0x0206EF20
	str r0, [r2, #-4]!
	str r11, [r2, #-4]!
	str r10, [r2, #-4]!
	str r9, [r2, #-4]!
	str r8, [r2, #-4]!
	str r7, [r2, #-4]!
	str r6, [r2, #-4]!
	str r5, [r2, #-4]!
	str r4, [r2, #-4]!
	str r3, [r2, #-4]!
	str r2, [r2, #-4]!
	str r1, [r2, #-4]!
	str r1, [r2, #-4]!
	ldr r0, _0206EF98 ; =FUN_0206ee98
	str r0, [r2, #-4]!
	mov r3, #0
	ldr r12, _0206EF9C ; =0x020B9D54
_0206EF64:
	ldr r0, [r12]
	tst r0, r0
	beq _0206EF8C
	add r12, r12, #4
	add r3, r3, #1
	cmp r3, #0x10
	bne _0206EF64
	mov r0, #0
	sub r0, r0, #1
	b _0206EF94
_0206EF8C:
	str r2, [r12]
	mov r0, r3
_0206EF94:
	mov pc, lr
_0206EF98: .word FUN_0206ee98
_0206EF9C: .word unk_020B9D54
	arm_func_end FUN_0206ef20

	arm_func_start FUN_0206efa0
FUN_0206efa0: ; 0x0206EFA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0206EFBC ; =FUN_0206eef8
	bl FUN_0206ef20
	ldr r1, _0206EFC0 ; =0x020B9D94
	str r4, [r1, r0, lsl #2]
	ldmfd sp!, {r4, pc}
_0206EFBC: .word FUN_0206eef8
_0206EFC0: .word unk_020B9D94
	arm_func_end FUN_0206efa0

	arm_func_start FUN_0206efc4
FUN_0206efc4: ; 0x0206EFC4
	ldr r1, _0206EFD4 ; =0x020B9D54
	mov r2, #0
	str r2, [r1, r0, lsl #2]
	bx lr
_0206EFD4: .word unk_020B9D54
	arm_func_end FUN_0206efc4

	arm_func_start FUN_0206efd8
FUN_0206efd8: ; 0x0206EFD8
	str lr, [sp, #-4]!
	ldr r2, _0206F008 ; =0x020B9D4C
	str sp, [r2]
	ldr r2, _0206F00C ; =0x020B9D50
	ldr r1, [r2]
	add r1, r1, r1
	add r1, r1, r1
	ldr r2, _0206F010 ; =0x020B9D54
	add r2, r2, r1
	ldr sp, [r2]
	ldr r1, [sp], #0x4
	mov pc, r1
_0206F008: .word unk_020B9D4C
_0206F00C: .word unk_020B9D50
_0206F010: .word unk_020B9D54
	arm_func_end FUN_0206efd8

	arm_func_start FUN_0206f014
FUN_0206f014: ; 0x0206F014
	mov r1, #0
	ldr r2, _0206F0B0 ; =0x020B9D54
_0206F01C:
	ldr r0, _0206F0B4 ; =0x020B9D50
	str r1, [r0]
	ldr r0, [r2]
	tst r0, r0
	beq _0206F09C
	str lr, [sp, #-4]!
	str r11, [sp, #-4]!
	str r10, [sp, #-4]!
	str r9, [sp, #-4]!
	str r8, [sp, #-4]!
	str r7, [sp, #-4]!
	str r6, [sp, #-4]!
	str r5, [sp, #-4]!
	str r4, [sp, #-4]!
	str r3, [sp, #-4]!
	str r2, [sp, #-4]!
	str r1, [sp, #-4]!
	str r0, [sp, #-4]!
	bl FUN_0206efd8
	ldr r0, [sp], #0x4
	ldr r1, [sp], #0x4
	ldr r2, [sp], #0x4
	ldr r3, [sp], #0x4
	ldr r4, [sp], #0x4
	ldr r5, [sp], #0x4
	ldr r6, [sp], #0x4
	ldr r7, [sp], #0x4
	ldr r8, [sp], #0x4
	ldr r9, [sp], #0x4
	ldr r10, [sp], #0x4
	ldr r11, [sp], #0x4
	ldr lr, [sp], #0x4
_0206F09C:
	add r2, r2, #4
	add r1, r1, #1
	cmp r1, #0x10
	bne _0206F01C
	mov pc, lr
_0206F0B0: .word unk_020B9D54
_0206F0B4: .word unk_020B9D50
	arm_func_end FUN_0206f014

	arm_func_start FUN_0206f0b8
FUN_0206f0b8: ; 0x0206F0B8
	ldr r3, _0206F14C ; =0x020912F8
	mov r2, #0
	add r1, r0, #0x700
	str r3, [r0]
	str r2, [r0, #0x7bc]
	strh r2, [r1, #0xc4]
	str r2, [r0, #0x7cc]
	str r2, [r0, #0x7d0]
	str r2, [r0, #0x7d4]
	str r2, [r0, #0x7dc]
	str r2, [r0, #0x7e0]
	str r2, [r0, #0x7e4]
	str r2, [r0, #0x7e8]
	str r2, [r0, #0x7ec]
	str r2, [r0, #0x7f0]
	str r2, [r0, #0x7f4]
	str r2, [r0, #0x800]
	str r2, [r0, #0x804]
	str r2, [r0, #0x808]
	str r2, [r0, #0x80c]
	str r2, [r0, #0x810]
	str r2, [r0, #0x814]
	str r2, [r0, #0x818]
	str r2, [r0, #0x81c]
	str r2, [r0, #0x820]
	str r2, [r0, #0x824]
	str r2, [r0, #0x828]
	str r2, [r0, #0x82c]
	str r2, [r0, #0x830]
	str r2, [r0, #0x838]
	str r2, [r0, #0x83c]
	str r2, [r0, #0x844]
	strb r2, [r0, #0x849]
	strb r2, [r0, #0x88f]
	strb r2, [r0, #0x890]
	str r2, [r0, #0x89c]
	bx lr
_0206F14C: .word unk_020912F8
	arm_func_end FUN_0206f0b8

	arm_func_start FUN_0206f150
FUN_0206f150: ; 0x0206F150
	stmfd sp!, {r4, lr}
	ldr r1, _0206F16C ; =0x020912F8
	mov r4, r0
	str r1, [r4]
	bl FUN_0206f198
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206F16C: .word unk_020912F8
	arm_func_end FUN_0206f150

	arm_func_start FUN_0206f170
FUN_0206f170: ; 0x0206F170
	stmfd sp!, {r4, lr}
	ldr r1, _0206F194 ; =0x020912F8
	mov r4, r0
	str r1, [r4]
	bl FUN_0206f198
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206F194: .word unk_020912F8
	arm_func_end FUN_0206f170

	arm_func_start FUN_0206f198
FUN_0206f198: ; 0x0206F198
	bx lr
	arm_func_end FUN_0206f198

	arm_func_start FUN_0206f19c
FUN_0206f19c: ; 0x0206F19C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r3, #3
	mov r12, #1
	mov r1, #0xb
_0206F1B0:
	mla r5, r4, r1, r0
	mov lr, r12
	strb r12, [r5, #0x84a]
_0206F1BC:
	add r2, r5, lr
	add lr, lr, #1
	strb r3, [r2, #0x84a]
	cmp lr, #0xb
	blt _0206F1BC
	add r4, r4, #1
	cmp r4, #2
	blt _0206F1B0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206f19c

	arm_func_start FUN_0206f1e0
FUN_0206f1e0: ; 0x0206F1E0
	mov r1, #0
	str r1, [r0, #0x7d0]
	str r1, [r0, #0x7d4]
	str r1, [r0, #0x7d8]
	str r1, [r0, #0x7dc]
	str r1, [r0, #0x7fc]
	str r1, [r0, #0x7e0]
	str r1, [r0, #0x7e4]
	str r1, [r0, #0x7e8]
	str r1, [r0, #0x7ec]
	str r1, [r0, #0x7f0]
	str r1, [r0, #0x7f4]
	str r1, [r0, #0x808]
	str r1, [r0, #0x80c]
	str r1, [r0, #0x810]
	str r1, [r0, #0x814]
	str r1, [r0, #0x818]
	str r1, [r0, #0x81c]
	str r1, [r0, #0x820]
	str r1, [r0, #0x824]
	str r1, [r0, #0x828]
	str r1, [r0, #0x82c]
	str r1, [r0, #0x830]
	str r1, [r0, #0x800]
	bx lr
	arm_func_end FUN_0206f1e0

	arm_func_start FUN_0206f244
FUN_0206f244: ; 0x0206F244
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0206F298 ; =0x0000FFFF
	add r1, r0, #0x800
	strh r5, [r1, #0x6e]
	strh r5, [r1, #0x72]
	ldrh r4, [r1, #0x6e]
	mov r12, #0
	ldrh lr, [r1, #0x72]
	add r2, r0, #0x700
	mov r3, #1
	strh r4, [r1, #0x6c]
	strh lr, [r1, #0x70]
	strh r5, [r1, #0x74]
	strb r12, [r0, #0x87e]
	strb r12, [r0, #0x88c]
	strb r3, [r0, #0x889]
	strb r12, [r0, #0x88a]
	strh r12, [r1, #0x76]
	strb r12, [r0, #0x882]
	strh r12, [r2, #0xc4]
	ldmfd sp!, {r3, r4, r5, pc}
_0206F298: .word 0x0000FFFF
	arm_func_end FUN_0206f244

	arm_func_start FUN_0206f29c
FUN_0206f29c: ; 0x0206F29C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _0206F57C ; =gL5Config
	ldr r1, _0206F580 ; =0x02091300
	mov r4, #1
	mov r5, #0
	bl _ZN8L5Config8getParamEPc
	add r1, r6, #0x700
	strh r0, [r1, #0xc0]
	ldrh r0, [r1, #0xc0]
	cmp r0, #0
	moveq r0, #0xc
	streqh r0, [r1, #0xc0]
	ldr r0, [r6, #0x81c]
	cmp r0, #0
	bne _0206F2FC
	mov r7, #0x1b00
	ldr r0, _0206F584 ; =0x0209A250
	mov r1, r7
	bl FUN_0202de44
	mov r2, r7
	mov r1, #0
	str r0, [r6, #0x81c]
	bl MI_CpuFill8
_0206F2FC:
	ldr r0, [r6, #0x810]
	cmp r0, #0
	bne _0206F318
	ldr r0, _0206F584 ; =0x0209A250
	mov r1, #0x200
	bl FUN_0202de44
	str r0, [r6, #0x810]
_0206F318:
	ldr r1, [r6, #0x810]
	mov r0, r5
	mov r2, #0x200
	bl MIi_CpuClear32
	ldr r0, [r6, #0x7f4]
	cmp r0, #0
	bne _0206F354
	mov r7, #0x1400
	ldr r0, _0206F584 ; =0x0209A250
	mov r1, r7
	bl FUN_0202de44
	mov r1, r5
	mov r2, r7
	str r0, [r6, #0x7f4]
	bl MI_CpuFill8
_0206F354:
	ldr r0, _0206F584 ; =0x0209A250
	ldr r1, _0206F588 ; =0x000004EC
	str r5, [r6, #0x7f8]
	bl FUN_0202de44
	str r0, [r6, #0x800]
	mov r0, r6
	bl FUN_ov16_020ef2bc
	mov r0, r6
	bl FUN_ov16_020ef41c
	mov r0, r6
	bl FUN_020713e4
	mov r0, r6
	bl FUN_020716a4
	mov r0, r6
	bl FUN_0207171c
	mov r0, r6
	bl FUN_020719e0
	mov r0, r6
	bl FUN_02071968
	mov r0, r6
	bl FUN_02071458
	mov r0, r6
	bl FUN_ov16_020eeca0
	mov r0, r6
	bl FUN_02071aac
	mov r0, r6
	bl FUN_020717a8
	mov r0, r6
	bl FUN_02071b24
	mov r0, r6
	bl FUN_020724f4
	mov r0, r6
	mov r1, #1
	bl FUN_0206f9dc
	add r0, r6, #0xc
	add r0, r0, #0x400
	mov r1, r5
	mov r2, #0xc0
	bl MI_CpuFill8
	add r0, r6, #0xcc
	add r0, r0, #0x400
	mov r1, r5
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r6, #0x2bc
	mov r1, r5
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [r6, #0x860]
	cmp r0, #0
	bne _0206F438
	mov r0, #0x1c
	bl operator_new
	cmp r0, #0
	beq _0206F434
	bl FUN_02043ac8
_0206F434:
	str r0, [r6, #0x860]
_0206F438:
	ldr r0, [r6, #0x860]
	bl FUN_02043b30
	ldr r0, [r6, #0x860]
	bl FUN_02043b44
	mov r0, r6
	mov r1, #2
	bl FUN_0207287c
	mov r0, r6
	mov r1, r4
	bl FUN_020728a8
	ldr r0, _0206F58C ; =0x020A0B00
	mov r1, r4
	bl FUN_02074580
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_020726d0
	ldr r1, _0206F590 ; =0x020A0640
	sub r2, r5, #1
	strb r2, [r1, #0xac]
	ldr r0, _0206F57C ; =gL5Config
	ldr r1, _0206F594 ; =0x02091310
	strb r5, [r6, #0x881]
	strb r5, [r6, #0x883]
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	movlt r0, r5
	cmp r0, #0x64
	movgt r0, #0x64
	strb r0, [r6, #0x880]
	ldr r0, _0206F57C ; =gL5Config
	ldr r1, _0206F598 ; =0x02091328
	bl _ZN8L5Config8getParamEPc
	add r1, r6, #0x800
	strh r0, [r1, #0x68]
	ldrsh r0, [r1, #0x68]
	mov r7, #0
	strb r7, [r6, #0x888]
	cmp r0, #0
	strlth r5, [r1, #0x68]
	ldr r0, _0206F57C ; =gL5Config
	ldr r1, _0206F59C ; =0x0209133C
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	movne r7, #1
	ldr r0, [r6, #0x820]
	strb r7, [r6, #0x887]
	strb r4, [r6, #0x884]
	cmp r0, #0
	bne _0206F520
	mov r7, #0x880
	ldr r0, _0206F584 ; =0x0209A250
	mov r1, r7
	bl FUN_0202de44
	mov r2, r7
	mov r1, #0
	str r0, [r6, #0x820]
	bl MI_CpuFill8
_0206F520:
	ldr r7, _0206F5A0 ; =0x0209A320
	mov r1, r6
	mov r0, r7
	bl FUN_02049a30
	ldr r0, _0206F5A4 ; =0x0209A380
	mov r1, r6
	ldr r2, [r0]
	ldr r2, [r2, #0x38]
	blx r2
	mov r0, r6
	str r7, [r6, #0x7bc]
	bl FUN_0206f19c
	add r0, r6, #0x2ec
	strb r5, [r6, #0x885]
	strb r5, [r6, #0x886]
	bl FUN_02073d8c
	add r0, r6, #0x274
	add r0, r0, #0x400
	bl FUN_0205072c
	mov r0, r6
	bl FUN_02074478
	strb r4, [r6, #0x88f]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206F57C: .word gL5Config
_0206F580: .word unk_02091300
_0206F584: .word unk_0209A250
_0206F588: .word 0x000004EC
_0206F58C: .word unk_020A0B00
_0206F590: .word unk_020A0640
_0206F594: .word unk_02091310
_0206F598: .word unk_02091328
_0206F59C: .word unk_0209133C
_0206F5A0: .word unk_0209A320
_0206F5A4: .word unk_0209A380
	arm_func_end FUN_0206f29c

	arm_func_start FUN_0206f5a8
FUN_0206f5a8: ; 0x0206F5A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, #0
	ldr r0, _0206F694 ; =0x020A0700
	ldr r2, _0206F698 ; =0x000010BC
	mov r1, r7
	bl MI_CpuFill8
	ldr r4, _0206F69C ; =0x020A0B00
	mov r6, #1
	mov r0, r4
	mov r1, r6
	bl FUN_02074784
	sub r5, r6, #2
	mov r0, r4
	mov r1, r5
	bl FUN_0207478c
	mov r1, #0x7f
	ldr r0, _0206F6A0 ; =0x020A1140
	ldr r4, _0206F6A4 ; =0x020A0640
	strh r1, [r0, #0x94]
	strh r1, [r0, #0x96]
	strb r7, [r4, #0xb92]
	strb r7, [r4, #0xb93]
	ldr r0, _0206F6A8 ; =0x020A17BC
	mov r1, r7
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r8, #0xc
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0xc0
	bl MI_CpuFill8
	add r0, r8, #0xcc
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r8, #0x2ec
	bl FUN_02073d8c
	add r0, r8, #0x274
	add r0, r0, #0x400
	bl FUN_0205072c
	mov r0, r8
	bl FUN_0206f6b4
	ldr r0, _0206F6AC ; =0x020AF81C
	bl FUN_ov131_02149308
	mov r0, r8
	mov r1, #0x42
	ldr r8, _0206F6B0 ; =0x020A1640
	strh r1, [r8, #0xe]
	bl FUN_02074478
	strb r5, [r4, #0xac]
	strh r6, [r8, #0x16]
	strh r6, [r8, #0x18]
	strh r6, [r8, #0x1a]
	strh r7, [r8, #0x1c]
	strh r7, [r8, #0x1e]
	strh r7, [r8, #0x20]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206F694: .word unk_020A0700
_0206F698: .word 0x000010BC
_0206F69C: .word unk_020A0B00
_0206F6A0: .word unk_020A1140
_0206F6A4: .word unk_020A0640
_0206F6A8: .word unk_020A17BC
_0206F6AC: .word unk_020AF81C
_0206F6B0: .word unk_020A1640
	arm_func_end FUN_0206f5a8

	arm_func_start FUN_0206f6b4
FUN_0206f6b4: ; 0x0206F6B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r0, _0206F770 ; =0x020A0640
	add r1, sp, #8
	ldr r0, [r0, #0x4dc]
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	bl srand
	bl rand
	ldr r1, _0206F774 ; =0x02FFFC3C
	str r0, [sp, #8]
	ldr r0, [r1]
	bl srand
	bl rand
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r1, [sp, #3]
	ldrb r0, [sp, #4]
	smulbb r0, r1, r0
	bl srand
	bl rand
	str r0, [sp, #0x10]
	ldrb r1, [sp, #1]
	ldrb r0, [sp, #5]
	smulbb r0, r1, r0
	bl srand
	bl rand
	mov r1, r4
	ldr r4, _0206F778 ; =0x020A0B00
	str r0, [sp, #0x14]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r0, r4
	orr r2, r3, r2, lsl #16
	bl FUN_02074794
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, r4
	mov r1, #1
	orr r2, r3, r2, lsl #16
	bl FUN_02074794
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_0206F770: .word unk_020A0640
_0206F774: .word 0x02FFFC3C
_0206F778: .word unk_020A0B00
	arm_func_end FUN_0206f6b4

	arm_func_start FUN_0206f77c
FUN_0206f77c: ; 0x0206F77C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r12, #0
	mov r4, r0
	str r12, [sp, #0x10]
	ldr r1, [r4, #0x824]
	cmp r1, #0
	ldrne r0, [r4, #0x828]
	cmpne r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r3, r4, pc}
	cmp r1, #0
	ldreq r0, [r4, #0x828]
	cmpeq r0, #0
	bne _0206F820
	ldr r3, _0206F82C ; =0x0209A250
	ldr r1, _0206F830 ; =0x02091350
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0206F7F0
	str r12, [sp]
	str r12, [sp, #4]
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0206F7F0:
	cmp r0, #0x280
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r3, r4, pc}
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r4, #0x824]
	ldr r1, [sp, #0x10]
	add sp, sp, #0x14
	add r1, r1, #0x200
	str r1, [r4, #0x828]
	ldmfd sp!, {r3, r4, pc}
_0206F820:
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_0206F82C: .word unk_0209A250
_0206F830: .word unk_02091350
	arm_func_end FUN_0206f77c

	arm_func_start FUN_0206f834
FUN_0206f834: ; 0x0206F834
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r2, _0206F8C4 ; =0x0209A720
	mov r5, r0
	str r2, [sp, #0x10]
	add r0, r5, #0x800
	ldrh r0, [r0, #0x74]
	mov r4, r1
	cmp r0, r4
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, pc}
	ldr r3, _0206F8C8 ; =0x0209A250
	ldr r1, _0206F8CC ; =0x0209136C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0206F8A8
	mov r0, #0x180
	mul r2, r4, r0
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl FUN_0202eff0
_0206F8A8:
	cmp r0, #0
	moveq r0, #0
	addne r0, r5, #0x800
	strneh r4, [r0, #0x74]
	movne r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_0206F8C4: .word unk_0209A720
_0206F8C8: .word unk_0209A250
_0206F8CC: .word unk_0209136C
	arm_func_end FUN_0206f834

	arm_func_start FUN_0206f8d0
FUN_0206f8d0: ; 0x0206F8D0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r6, r0
	mov r5, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r6, #0x800
	ldrh r0, [r0, #0x74]
	cmp r0, r5
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0206F948 ; =0x0209A720
	mov r3, #0x180
	str r0, [r2]
	mov r1, r2
	mul r2, r5, r3
	mov r4, #0
	ldr r0, _0206F94C ; =0x02091388
	str r4, [sp]
	bl FUN_ov16_020f3234
	cmp r0, #0
	moveq r0, r4
	addne r0, r6, #0x800
	strneh r5, [r0, #0x74]
	movne r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0206F948: .word unk_0209A720
_0206F94C: .word unk_02091388
	arm_func_end FUN_0206f8d0

	arm_func_start FUN_0206f950
FUN_0206f950: ; 0x0206F950
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	cmp r2, #0
	str r2, [sp, #0x10]
	mov r4, r1
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _0206F9D0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202db98
	ldr r3, _0206F9D4 ; =0x0209A250
	ldr r1, _0206F9D8 ; =0x020913A4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0206F9BC
	mov r2, #0x120
	mul r12, r4, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0206F9BC:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_0206F9D0: .word unk_0209AC44
_0206F9D4: .word unk_0209A250
_0206F9D8: .word unk_020913A4
	arm_func_end FUN_0206f950

	arm_func_start FUN_0206f9dc
FUN_0206f9dc: ; 0x0206F9DC
	ldr r12, _0206F9E8 ; =FUN_0206f950
	add r2, r0, #0x2ec
	bx r12
_0206F9E8: .word FUN_0206f950
	arm_func_end FUN_0206f9dc

	arm_func_start FUN_0206f9ec
FUN_0206f9ec: ; 0x0206F9EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r4, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	add r0, r0, #0x2ec
	str r0, [r2]
	mov r3, #0x120
	mov r1, r2
	mul r2, r4, r3
	mov r4, #0
	ldr r0, _0206FA40 ; =0x020913C0
	str r4, [sp]
	bl FUN_ov16_020f3234
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0206FA40: .word unk_020913C0
	arm_func_end FUN_0206f9ec

	arm_func_start FUN_0206fa44
FUN_0206fa44: ; 0x0206FA44
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r0, #0
	mov r5, r1
	str r2, [sp, #0x14]
	str r0, [sp, #0x10]
	cmp r2, #0
	mov r4, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, _0206FB64 ; =0x0209A250
	ldr r1, _0206FB68 ; =0x020913DC
	ldr lr, [r3]
	cmp lr, #0
	beq _0206FAA0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	mov r0, lr
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0206FAA0:
	str r0, [sp, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x1c
	mov r1, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	bne _0206FAE8
	ldr r1, [sp, #0x10]
	ldr r0, _0206FB64 ; =0x0209A250
	bl FUN_0202e1c0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0206FAE8:
	ldr r3, _0206FB64 ; =0x0209A250
	ldr r12, [sp, #0x18]
	ldr r0, [r3]
	ldr r1, _0206FB6C ; =0x020913F4
	cmp r0, #0
	moveq r0, #0
	beq _0206FB24
	ldr r2, _0206FB70 ; =0x00000618
	str r12, [sp]
	str r2, [sp, #4]
	add r2, sp, #0x14
	str r4, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0206FB24:
	ldr r1, _0206FB70 ; =0x00000618
	str r0, [sp, #0x1c]
	cmp r0, r1
	beq _0206FB4C
	ldr r1, [sp, #0x10]
	ldr r0, _0206FB64 ; =0x0209A250
	bl FUN_0202e1c0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0206FB4C:
	ldr r1, [sp, #0x10]
	ldr r0, _0206FB64 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0206FB64: .word unk_0209A250
_0206FB68: .word unk_020913DC
_0206FB6C: .word unk_020913F4
_0206FB70: .word 0x00000618
	arm_func_end FUN_0206fa44

	arm_func_start FUN_0206fb74
FUN_0206fb74: ; 0x0206FB74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x218
	sub sp, sp, #0x400
	movs r4, r3
	mov r7, r0
	movne r0, #0
	mov r5, r2
	strneb r0, [r4]
	add r0, r7, r5, lsl #1
	mov r6, r1
	add r1, r0, #0x800
	ldrh r0, [r1, #0x6c]
	cmp r6, r0
	addeq r0, r7, #0x800
	ldreqh r2, [r0, #0x74]
	ldreqh r0, [r1, #0x70]
	cmpeq r2, r0
	bne _0206FBD8
	mov r0, r7
	mov r1, r5
	bl FUN_0206fdac
	add sp, sp, #0x218
	add sp, sp, #0x400
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206FBD8:
	add r8, sp, #0
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_0206fa44
	cmp r0, #0
	addeq sp, sp, #0x218
	addeq sp, sp, #0x400
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl FUN_0206fe04
	add r0, r7, r5, lsl #1
	add r1, r0, #0x800
	strh r6, [r1, #0x6c]
	add r0, r7, #0x800
	ldrh r0, [r0, #0x74]
	cmp r4, #0
	strh r0, [r1, #0x70]
	movne r0, #1
	strneb r0, [r4]
	mov r0, #1
	add sp, sp, #0x218
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0206fb74

	arm_func_start FUN_0206fc44
FUN_0206fc44: ; 0x0206FC44
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x80
	bl FUN_0206d620
	mov r2, #3
	mov r0, r5
	mov r1, r4
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206fc44

	arm_func_start FUN_0206fca4
FUN_0206fca4: ; 0x0206FCA4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x80
	bl FUN_0206d634
	mov r2, #3
	mov r0, r5
	mov r1, r4
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206fca4

	arm_func_start FUN_0206fd04
FUN_0206fd04: ; 0x0206FD04
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r3, #0xb
	mul r5, r8, r3
	movs r7, r2
	mov r4, r0
	add r6, r5, #0xb
	bne _0206FD60
	bl FUN_ov126_0212ae80
	cmp r0, #0
	beq _0206FD60
	cmp r5, r6
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
_0206FD38:
	add r1, r4, r5
	ldrb r0, [r1, #0x84a]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r1, #0x84a]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, r6
	blt _0206FD38
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206FD60:
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r8
	bl FUN_ov126_0212ae80
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, r6
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
_0206FD84:
	add r1, r4, r5
	ldrb r0, [r1, #0x84a]
	cmp r0, #1
	moveq r0, #3
	streqb r0, [r1, #0x84a]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, r6
	blt _0206FD84
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0206fd04

	arm_func_start FUN_0206fdac
FUN_0206fdac: ; 0x0206FDAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0xb
	mul r6, r1, r2
	add r7, r6, #0xb
	cmp r6, r7
	mov r2, #0
	bge _0206FDF8
	ldr r4, _0206FE00 ; =0x0209CC10
	mov r12, #1
	mov r3, #0x88
_0206FDD4:
	mul lr, r6, r3
	ldrb lr, [r4, lr]
	add r5, r0, r6
	add r6, r6, #1
	cmp lr, #1
	moveq r2, r12
	strb lr, [r5, #0x84a]
	cmp r6, r7
	blt _0206FDD4
_0206FDF8:
	bl FUN_0206fd04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206FE00: .word unk_0209CC10
	arm_func_end FUN_0206fdac

	arm_func_start FUN_0206fe04
FUN_0206fe04: ; 0x0206FE04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r3, _02070128 ; =0x0209A720
	str r1, [sp]
	ldr r1, [r3, #0xdc]
	mov r10, r0
	str r1, [sp, #0x20]
	ldrsh r1, [r3, #0xac]
	str r2, [sp, #4]
	ldrsh r4, [r3, #0xae]
	str r1, [sp, #0x1c]
	bl FUN_ov126_0212af7c
	str r0, [sp, #0x18]
	mov r0, r10
	bl FUN_ov126_0212af98
	mov r5, r0
	ldr r0, [sp]
	bl FUN_ov16_020f07f4
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r1, #0xb
	mul r1, r0, r1
	add r0, r1, #0xb
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r1, [sp, #0x14]
	add r11, r0, #0x40
	mov r0, #0
	str r0, [sp, #8]
	b _02070030
_0206FE8C:
	ldr r3, _0207012C ; =0x0209CC10
	ldr r2, [sp, #0x14]
	mov r1, #0x88
	mla r1, r2, r1, r3
	mov r0, r11
	mov r2, #8
	bl MI_CpuCopy8
	ldrb r1, [r11]
	ldr r0, [sp, #0x14]
	ldr r2, _0207012C ; =0x0209CC10
	add r0, r10, r0
	strb r1, [r0, #0x84a]
	cmp r1, #1
	moveq r0, #1
	streq r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r1, #0x88
	mla r1, r0, r1, r2
	add r0, r1, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	mov r8, #0
	add r0, r10, r0
	str r0, [sp, #0x28]
	b _02070018
_0206FEF0:
	ldr r0, [sp, #0x24]
	add r9, r0, r8, lsl #3
	add r0, r11, r8, lsl #3
	ldr r6, [r0, #0xc]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	cmp r0, #1
	moveq r6, r6, lsl #1
	beq _0206FF30
	ldr r0, [sp, #0x28]
	ldrb r0, [r0, #0x84a]
	cmp r0, #1
	bne _0206FF30
	ldr r0, _02070130 ; =0x00000FAE
	cmp r6, r0
	movgt r6, r0
_0206FF30:
	add r0, r11, r8, lsl #3
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r6, #0x800
	mla r0, r1, r2, r0
	str r0, [r9]
	mov r0, r10
	bge _0206FF90
	mov r1, #1
	mov r2, #0
	bl FUN_020723c4
	mov r7, r0
	mov r0, r10
	mov r1, #1
	mov r2, #0
	bl FUN_0207238c
	cmp r7, r0
	subgt r1, r5, r7
	movgt r0, r1, asr #0xb
	addgt r0, r1, r0, lsr #20
	movgt r4, r0, asr #0xc
	mla r0, r6, r4, r7
	b _0206FFD0
_0206FF90:
	mov r1, #0
	mov r2, r1
	bl FUN_020723c4
	mov r1, #0
	mov r7, r0
	mov r0, r10
	mov r2, r1
	bl FUN_0207238c
	cmp r7, r0
	sublt r1, r7, r5
	movlt r0, r1, asr #0xb
	addlt r0, r1, r0, lsr #20
	rsb r6, r6, #0x1000
	movlt r4, r0, asr #0xc
	mul r0, r6, r4
	sub r0, r7, r0
_0206FFD0:
	str r0, [r9, #4]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _02070014
	ldr r0, [sp]
	cmp r0, #1
	bne _02070014
	ldr r1, [r9]
	ldr r0, [sp, #0x18]
	sub r1, r1, r0
	sub r0, r0, r1
	str r0, [r9]
	ldr r0, [r9, #4]
	sub r0, r0, r5
	sub r0, r5, r0
	str r0, [r9, #4]
_02070014:
	add r8, r8, #1
_02070018:
	cmp r8, #0xe
	blt _0206FEF0
	ldr r0, [sp, #0x14]
	add r11, r11, #0x88
	add r0, r0, #1
	str r0, [sp, #0x14]
_02070030:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blt _0206FE8C
	ldr r1, [sp]
	ldr r2, [sp, #8]
	mov r0, r10
	mov r6, #0
	bl FUN_0206fd04
	mov r5, #8
	ldr r0, [sp]
	mov r1, #0xb
	mul r8, r0, r1
	mov r0, r6
	str r0, [sp, #0x14]
	mov r4, r5
	b _02070114
_02070074:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, r10
	mov r3, r6
	add r2, r2, #1
	bl FUN_0204bbe0
	movs r7, r0
	beq _02070104
	ldr r1, [sp, #0x14]
	cmp r1, #0xb
	bge _020700EC
	add r1, r10, r8
	ldrb r1, [r1, #0x84a]
	cmp r1, #0
	beq _020700EC
	mov r1, r5
	bl FUN_0206d620
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, r10
	add r2, r2, #1
	mov r3, r6
	bl FUN_02072434
	cmp r0, #0
	mov r0, r10
	mov r1, r7
	beq _020700E8
	bl FUN_0206fc44
	b _02070104
_020700E8:
	b _02070100
_020700EC:
	mov r0, r7
	mov r1, r4
	bl FUN_0206d634
	mov r0, r10
	mov r1, r7
_02070100:
	bl FUN_0206fca4
_02070104:
	ldr r0, [sp, #0x14]
	add r8, r8, #1
	add r0, r0, #1
	str r0, [sp, #0x14]
_02070114:
	ldr r0, [sp, #0x14]
	cmp r0, #0x10
	blt _02070074
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02070128: .word unk_0209A720
_0207012C: .word unk_0209CC10
_02070130: .word 0x00000FAE
	arm_func_end FUN_0206fe04

	arm_func_start FUN_02070134
FUN_02070134: ; 0x02070134
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020701C4 ; =0x0209A11C
	mov r5, r0
	mov r4, r1
	mov r8, #0
_02070148:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02070180
	bl FUN_0206d64c
	cmp r0, #0
	beq _02070180
	mov r0, r7
	bl FUN_ov16_020f0810
	cmp r4, r0
	bne _02070180
	ldr r0, [r6]
	mov r1, r8
	bl FUN_0206c5d8
_02070180:
	add r8, r8, #1
	cmp r8, #0x20
	blt _02070148
	add r0, r5, #0xc
	add r0, r0, #0x400
	mov r6, #0
	mov r1, r6
	add r0, r0, r4, lsl #5
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r5, #0xcc
	add r0, r0, #0x400
	mov r1, r6
	add r0, r0, r4, lsl #4
	mov r2, #0x10
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020701C4: .word unk_0209A11C
	arm_func_end FUN_02070134

	arm_func_start FUN_020701c8
FUN_020701c8: ; 0x020701C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r4, [r6, #0x7f0]
	str r1, [sp, #8]
	mov r1, #0
	mov r5, r2
	mov r11, r3
	cmp r4, #0
	str r1, [sp, #0xc]
	bne _02070200
	bl FUN_02071fac
	mov r0, #1
	str r0, [sp, #0xc]
_02070200:
	ldr r0, [sp, #8]
	mov r9, #0
	add r8, r0, #0x4c
	ldrb r7, [sp, #0x38]
	b _02070340
_02070214:
	mov r0, r9, lsl #3
	ldrh r0, [r8, r0]
	cmp r0, #0
	beq _0207033C
	cmp r7, #0
	beq _02070260
	cmp r5, #1
	bne _02070260
	mov r0, r6
	bl FUN_020731a4
	cmp r0, #0
	bne _02070260
	mov r0, r9, lsl #3
	ldrh r1, [r8, r0]
	ldr r0, _02070394 ; =0x0209A0AC
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0207033C
_02070260:
	add r1, r8, r9, lsl #3
	ldrb r0, [r1, #2]
	cmp r0, #0x10
	movhi r0, #0
	strhib r0, [r1, #2]
	mov r0, r6
	mov r1, r5
	bl FUN_02071db0
	movs r10, r0
	bmi _02070348
	ldr r0, _02070398 ; =0x020A0640
	mov r4, #1
	ldrb r0, [r0, #0x1a]
	cmp r5, #0
	movne r4, #0
	cmp r0, #0
	beq _020702B4
	mov r0, r5
	bl FUN_ov16_020f0a30
	cmp r0, #0
	movne r4, #0
_020702B4:
	add r12, r8, r9, lsl #3
	mov r2, r10
	ldrb r10, [r12, #4]
	mov r1, r9, lsl #3
	mov r0, r6
	add r10, r11, r10
	str r10, [sp]
	ldrb r10, [r12, #5]
	mov r3, r5
	str r10, [sp, #4]
	ldrh r1, [r8, r1]
	bl FUN_02071d74
	add r1, r8, r9, lsl #3
	ldrb r1, [r1, #3]
	mov r10, r0
	mov r2, #0
	bl FUN_0206d9cc
	cmp r4, #0
	mov r0, r10
	beq _0207030C
	mov r1, #0x20
	b _02070310
_0207030C:
	mov r1, #0x40
_02070310:
	bl FUN_0206d620
	mov r0, r10
	bl FUN_0206cbf8
	mov r1, #1
	str r1, [sp]
	add r3, r8, r9, lsl #3
	mov r2, r0
	ldrb r3, [r3, #2]
	mov r0, r6
	mov r1, r5
	bl FUN_0204c92c
_0207033C:
	add r9, r9, #1
_02070340:
	cmp r9, #0x20
	blt _02070214
_02070348:
	ldr r0, [sp, #8]
	cmp r5, #1
	ldrh r4, [r0, #0x2e]
	orreq r4, r4, #0x8000
	bl FUN_ov16_020f068c
	cmp r0, #0
	bne _02070374
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d864
_02070374:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_02072020
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02070394: .word unk_0209A0AC
_02070398: .word unk_020A0640
	arm_func_end FUN_020701c8

	arm_func_start FUN_0207039c
FUN_0207039c: ; 0x0207039C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x180
	mov r6, #0
	mov r7, r1
	add r1, sp, #0x20
	mov r4, r2
	mov r0, r6
	mov r2, #0x160
	str r1, [sp, #0x14]
	str r6, [sp, #0x10]
	mov r5, r6
	bl MIi_CpuClearFast
	cmp r4, #0
	addeq sp, sp, #0x180
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #0x16c
	bl MI_CpuFill8
	ldr r3, _02070524 ; =0x0209A250
	ldr r1, _02070528 ; =0x0209140C
	ldr r0, [r3]
	cmp r0, #0
	beq _02070420
	str r6, [sp]
	str r6, [sp, #4]
	add r2, sp, #0x10
	str r6, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	mov r6, r0
_02070420:
	cmp r6, #0
	str r6, [sp, #0x1c]
	addeq sp, sp, #0x180
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x1c
	mov r1, r7
	bl FUN_ov16_020f34f0
	cmp r0, #0
	bne _02070468
	ldr r1, [sp, #0x10]
	ldr r0, _02070524 ; =0x0209A250
	bl FUN_0202e1c0
	add sp, sp, #0x180
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02070468:
	ldr r3, _02070524 ; =0x0209A250
	ldr r12, [sp, #0x1c]
	ldr r0, [r3]
	cmp r12, #0x160
	movhi r12, #0x160
	strhi r12, [sp, #0x1c]
	cmp r0, #0
	ldr r2, [sp, #0x18]
	ldr r1, _0207052C ; =0x02091424
	moveq r0, #0
	beq _020704AC
	stmia sp, {r2, r12}
	add r2, sp, #0x14
	str r5, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_020704AC:
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _020704D0
	ldr r1, [sp, #0x10]
	ldr r0, _02070524 ; =0x0209A250
	bl FUN_0202e1c0
	add sp, sp, #0x180
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020704D0:
	ldr r1, [sp, #0x10]
	ldr r0, _02070524 ; =0x0209A250
	bl FUN_0202e1c0
	add r0, sp, #0x20
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuCopy8
	add r0, sp, #0x60
	add r1, r4, #0x4c
	mov r2, #0x100
	bl MI_CpuCopy8
	ldr r0, [sp, #0x1c]
	cmp r0, #0x160
	bne _02070518
	add r0, sp, #0x160
	add r1, r4, #0x14c
	mov r2, #0x20
	bl MI_CpuCopy8
_02070518:
	mov r0, #1
	add sp, sp, #0x180
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02070524: .word unk_0209A250
_02070528: .word unk_0209140C
_0207052C: .word unk_02091424
	arm_func_end FUN_0207039c

	arm_func_start FUN_02070530
FUN_02070530: ; 0x02070530
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b8
	sub sp, sp, #0x400
	mov r4, #0
	str r4, [sp, #0x1c]
	mov r11, r0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r4, r4
	bl FUN_ov16_020f068c
	cmp r0, #0
	beq _02070570
	ldr r0, [sp, #0x10]
	cmp r0, #1
	moveq r4, #1
_02070570:
	cmp r4, #0
	ldrne r0, _02071394 ; =0x020A1640
	ldr r1, [sp, #0x10]
	ldrne r0, [r0, #0x230]
	cmpne r0, #0
	movne r0, #1
	strne r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	mov r0, r11
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0x38]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0x34]
	bl FUN_02070134
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_0207249c
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_020724ac
	ldr r1, [sp, #0x40]
	mov r2, #0x100
	mov r6, r0
	bl MI_CpuFill8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bgt _0207060C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	movne r0, #1
	strne r0, [sp, #0x18]
	bne _0207060C
	mov r0, r11
	bl FUN_020726f8
	str r0, [sp, #0x18]
_0207060C:
	mov r0, r11
	bl FUN_02073184
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	ldreq r0, _02071398 ; =0x020A0640
	ldreqb r0, [r0, #0x1a]
	cmpeq r0, #0
	bne _02070638
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02070640
_02070638:
	mov r0, #1
	str r0, [sp, #0x3c]
_02070640:
	add r4, sp, #0x400
	add r4, r4, #0x4c
	mov r9, #0
	mov r0, r4
	mov r1, r9
	mov r2, #0x16c
	bl memset
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02070784
	ldr r2, _02071394 ; =0x020A1640
	mov r1, r4
	ldr r4, [r2, #0x230]
	ldrb r3, [r2, #0x246]
	ldr r0, _0207139C ; =0x00000808
	add r4, r4, #8
	mla r7, r3, r0, r4
	add r0, r7, #0x394
	mov r2, #0x4c
	add r0, r0, #0x400
	bl MI_CpuCopy8
	ldr r0, [sp, #0x10]
	add r8, sp, #0x400
	ldrh r2, [r7, #0xd2]
	ldr r1, _020713A0 ; =0x020A06BC
	mov r0, r0, lsl #1
	strh r2, [r1, r0]
	add r8, r8, #0x98
	add r5, r7, #0xd4
	mov r10, r9
	mov r4, #0x6c
	b _02070730
_020706C0:
	add r0, r7, #0x7e0
	mov r1, r9
	bl FUN_0204fbe8
	mov r3, #0
	b _020706F0
_020706D4:
	mul r2, r3, r4
	add r1, r7, r2
	ldrh r1, [r1, #0xd8]
	cmp r0, r1
	addeq r1, r5, r2
	beq _020706FC
	add r3, r3, #1
_020706F0:
	cmp r3, #0x10
	blt _020706D4
	mov r1, #0
_020706FC:
	cmp r1, #0
	beq _02070728
	strh r0, [r8]
	add r0, r9, #1
	and r0, r0, #0xff
	strb r0, [r8, #2]
	strb r0, [r8, #3]
	ldrb r0, [r1, #0x4a]
	sub r0, r0, #1
	strb r0, [r8, #4]
	strb r10, [r8, #5]
_02070728:
	add r9, r9, #1
	add r8, r8, #8
_02070730:
	cmp r9, #0x10
	blt _020706C0
	add r0, sp, #0x400
	ldr r1, [sp, #0x44]
	add r0, r0, #0x4c
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r4, sp, #0x3cc
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020ef5b8
	mov r2, #0
	b _02070778
_02070764:
	mov r0, r2, lsl #1
	ldrh r1, [r4, r0]
	mov r0, r2, lsl #2
	add r2, r2, #1
	strh r1, [r6, r0]
_02070778:
	cmp r2, #0x40
	blt _02070764
	b _02070FA0
_02070784:
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	beq _02070F54
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02070F54
	ldr r0, _020713A4 ; =0x020A9C40
	bl FUN_02045ed0
	mov r4, r0
	add r6, sp, #0x24c
	mov r0, r9
	mov r1, r9
	mov r2, r9
	mov r3, r9
	mov r5, #0xc
_020707C4:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020707C4
	mov r7, #0
	add r0, sp, #0x64
	b _020707E8
_020707E0:
	str r7, [r0, r7, lsl #2]
	add r7, r7, #1
_020707E8:
	cmp r7, #8
	blt _020707E0
	mov r7, #0
	add r5, sp, #0x64
	mov r6, r7
	b _02070874
_02070800:
	mov r0, r6
	mov r8, r7
	b _02070820
_0207080C:
	ldr r1, [r5, r8, lsl #2]
	add r8, r8, #1
	add r1, r4, r1, lsl #2
	ldrh r1, [r1, #6]
	add r0, r0, r1
_02070820:
	cmp r8, #8
	blt _0207080C
	cmp r0, #0
	beq _0207087C
	bl FUN_ov16_020ef928
	mov r8, r7
	b _02070858
_0207083C:
	ldr r1, [r5, r8, lsl #2]
	add r1, r4, r1, lsl #2
	ldrh r1, [r1, #6]
	sub r0, r0, r1
	cmp r0, #0
	ble _02070860
	add r8, r8, #1
_02070858:
	cmp r8, #7
	blt _0207083C
_02070860:
	ldr r1, [r5, r7, lsl #2]
	ldr r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r1, [r5, r8, lsl #2]
	add r7, r7, #1
_02070874:
	cmp r7, #7
	blt _02070800
_0207087C:
	add r8, sp, #0x204
	mov r0, r8
	bl FS_InitFile
	ldr r1, _020713A8 ; =0x0209143C
	mov r0, r8
	bl FS_OpenFile
	cmp r0, #0
	beq _02070904
	mov r10, #0x30
	mov r9, #0
	add r7, sp, #0x64
	add r6, sp, #0x24c
	mov r5, r10
	b _020708E8
_020708B4:
	ldr r1, [r7, r9, lsl #2]
	mov r0, r8
	add r1, r4, r1, lsl #2
	ldrh r3, [r1, #4]
	mov r2, #0
	mul r1, r3, r10
	bl FS_SeekFile
	ldr r2, [r7, r9, lsl #2]
	mov r0, r8
	mla r1, r2, r5, r6
	mov r2, #0x30
	bl FS_ReadFile
	add r9, r9, #1
_020708E8:
	cmp r9, #8
	blt _020708B4
	add r4, sp, #0x204
_020708F4:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _020708F4
_02070904:
	mov r7, #0
	add r4, sp, #0x64
	add r3, sp, #0x24c
	mov r1, #0x30
	b _02070934
_02070918:
	ldr r0, [r4, r7, lsl #2]
	mul r2, r0, r1
	ldrh r2, [r3, r2]
	ldr r0, [sp, #0x14]
	cmp r0, r2
	beq _0207093C
	add r7, r7, #1
_02070934:
	cmp r7, #8
	blt _02070918
_0207093C:
	mov r9, #0
	cmp r7, #8
	moveq r0, #1
	streq r0, [sp, #0x40]
	mov r3, #1
	add r0, sp, #0x84
	mov r1, r9
	mov r2, #0x180
	str r3, [sp, #0x30]
	str r9, [sp, #0x2c]
	str r9, [sp, #0x28]
	bl memset
	add r0, sp, #0x5c
	ldr r3, _020713AC ; =0x0209A250
	strh r9, [r0]
	strh r9, [r0, #2]
	strh r9, [r0, #4]
	ldr r0, [r3]
	str r9, [sp, #0x58]
	str r9, [sp, #0x24]
	str r9, [sp, #0x20]
	ldr r1, _020713B0 ; =0x02091458
	cmp r0, #0
	beq _020709BC
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	ldr r0, [sp, #0x30]
	add r2, sp, #0x58
	str r0, [sp, #0xc]
	ldr r0, [r3]
	bl FUN_0202eff0
_020709BC:
	add r8, sp, #0x204
	mov r0, r8
	bl FS_InitFile
	ldr r1, _020713B4 ; =0x02091470
	mov r0, r8
	bl FS_OpenFile
	cmp r0, #0
	beq _02070AF4
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02070A50
	mov r4, #0x160
	ldr r0, _020713AC ; =0x0209A250
	mov r1, r4
	bl FUN_0202de44
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _02070AE0
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x54
	add r3, sp, #0x50
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02070AE0
	ldr r1, [sp, #0x54]
	mov r0, r8
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r2, r4
	bl FS_ReadFile
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	b _02070AE0
_02070A50:
	ldr r0, _020713AC ; =0x0209A250
	mov r1, #0xb00
	bl FUN_0202de44
	str r0, [sp, #0x20]
	mov r7, #0
	add r6, sp, #0x64
	add r5, sp, #0x24c
	mov r10, #0x160
	mov r4, #0x30
	b _02070AD8
_02070A78:
	ldr r0, [r6, r7, lsl #2]
	mul r1, r0, r4
	ldrh r1, [r5, r1]
	cmp r1, #0
	beq _02070AD4
	ldr r0, [sp, #0x58]
	add r2, sp, #0x54
	add r3, sp, #0x50
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02070AD4
	ldr r1, [sp, #0x54]
	mov r0, r8
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [sp, #0x20]
	mov r0, r8
	mla r1, r7, r10, r1
	mov r2, #0x160
	bl FS_ReadFile
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
_02070AD4:
	add r7, r7, #1
_02070AD8:
	cmp r7, #8
	blt _02070A78
_02070AE0:
	add r4, sp, #0x204
_02070AE4:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _02070AE4
_02070AF4:
	ldr r0, _020713AC ; =0x0209A250
	ldr r1, [sp, #0x58]
	bl FUN_0202e1c0
	mov r7, #0
_02070B04:
	ldr r0, [sp, #0x20]
	mov r1, #0x160
	mla r0, r7, r1, r0
	ldrh r2, [r0, #0x20]
	ldr r1, [sp, #0x14]
	cmp r1, r2
	bne _02070B2C
	ldr r1, [sp, #0x44]
	mov r2, #0x4c
	bl MI_CpuCopy8
_02070B2C:
	ldr r0, [sp, #0x20]
	mov r1, #0x160
	mla r0, r7, r1, r0
	str r0, [sp, #0x48]
	add r0, r11, #0x800
	mov r8, #0
	add r6, sp, #0x84
	mov r4, #6
	ldr r5, _020713B8 ; =0x0000EFFF
	str r0, [sp, #0x4c]
	b _02070D7C
_02070B58:
	ldr r0, [sp, #0x48]
	add r1, r0, r8, lsl #3
	ldrh r10, [r1, #0x40]
	cmp r10, #0
	beq _02070D78
	mov r0, #6
	mul r0, r9, r0
	strh r10, [r6, r0]
	ldrb r1, [r1, #0x42]
	add r2, r6, r0
	ldr r0, _020713BC ; =0x0209A0AC
	strh r1, [r2, #4]
	mov r1, #0
	strh r1, [r2, #2]
	mov r1, r10, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	beq _02070BB4
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02070BB8
_02070BB4:
	b _02070BE4
_02070BB8:
	ldrb r0, [r11, #0x886]
	cmp r0, #0
	beq _02070C04
	mov r0, r11
	mov r1, #0
	bl FUN_0205106c
	mov r1, r10, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020502a8
	cmp r0, #0
	bne _02070C04
_02070BE4:
	mov r0, #6
	mla r2, r9, r0, r6
	ldr r0, [sp, #0x28]
	ldrh r1, [r2, #2]
	add r0, r0, #1
	str r0, [sp, #0x28]
	orr r0, r1, #0x8000
	strh r0, [r2, #2]
_02070C04:
	mov r0, #6
	mla r0, r9, r0, r6
	ldrh r1, [r0, #4]
	cmp r1, #1
	bne _02070C9C
	ldr r1, [sp, #0x48]
	ldrh r2, [r1, #0x20]
	ldr r1, [sp, #0x14]
	cmp r1, r2
	bne _02070C74
	ldrh r0, [r0, #2]
	tst r0, #0x8000
	beq _02070C74
	mov r2, #0
	b _02070C54
_02070C40:
	mla r1, r2, r4, r6
	ldrh r0, [r1, #2]
	add r2, r2, #1
	and r0, r0, r5
	strh r0, [r1, #2]
_02070C54:
	cmp r2, r9
	blt _02070C40
	mov r0, #6
	mla r1, r9, r0, r6
	ldrh r0, [r1, #2]
	orr r0, r0, #0x4000
	strh r0, [r1, #2]
	b _02070C90
_02070C74:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	movne r0, #6
	mlane r1, r9, r0, r6
	ldrneh r0, [r1, #2]
	addne r0, r0, #0x1000
	strneh r0, [r1, #2]
_02070C90:
	mov r0, #0
	str r0, [sp, #0x30]
	b _02070CA8
_02070C9C:
	ldrh r1, [r0, #2]
	orr r1, r1, #0x400
	strh r1, [r0, #2]
_02070CA8:
	ldr r0, [sp, #0x48]
	ldrh r1, [r0, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _02070CE4
	mov r0, #6
	mla r1, r9, r0, r6
	ldrh r0, [r1, #2]
	orr r0, r0, #0x2000
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	tst r0, #0x8000
	ldrne r0, [sp, #0x2c]
	addne r0, r0, #1
	strne r0, [sp, #0x2c]
_02070CE4:
	ldr r0, [sp, #0x4c]
	ldrh r0, [r0, #0x76]
	cmp r0, #0
	beq _02070D1C
	cmp r10, r0
	bne _02070D1C
	mov r0, #6
	mul r1, r9, r0
	add r2, r6, r1
	ldrh r0, [r2, #2]
	orr r0, r0, #0x800
	strh r0, [r2, #2]
	ldrh r0, [r6, r1]
	str r0, [sp, #0x34]
_02070D1C:
	mov r0, r11
	bl FUN_02072b24
	cmp r0, #0
	beq _02070D50
	mov r0, #0xf0
	bl FUN_ov16_020ef928
	add r0, r0, #0xf
	mov r1, r0, lsl #0x10
	mov r0, #6
	mla r2, r9, r0, r6
	ldrh r0, [r2, #2]
	add r0, r0, r1, lsr #16
	b _02070D68
_02070D50:
	mov r0, #6
	mla r2, r9, r0, r6
	ldrh r1, [r2, #2]
	rsb r0, r8, #0xff
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
_02070D68:
	strh r0, [r2, #2]
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_02070D78:
	add r8, r8, #1
_02070D7C:
	cmp r8, #0x10
	blt _02070B58
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	cmp r7, r0
	blt _02070B04
	ldr r0, _020713AC ; =0x0209A250
	ldr r1, [sp, #0x20]
	bl FUN_0202e1c0
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bge _02070DE4
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r7, #0
	add r3, sp, #0x84
	mov r0, #6
	ldr r1, _020713C0 ; =0x00007FFF
	b _02070DDC
_02070DC8:
	mla r4, r7, r0, r3
	ldrh r2, [r4, #2]
	add r7, r7, #1
	and r2, r2, r1
	strh r2, [r4, #2]
_02070DDC:
	cmp r7, r9
	blt _02070DC8
_02070DE4:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	cmp r0, #4
	movlt r0, #1
	strlt r0, [sp, #0x38]
	mov r0, #0x64
	mul r0, r1, r0
	mov r1, r9
	bl _s32_div_f
	ldr r4, _020713A4 ; =0x020A9C40
	and r1, r0, #0xff
	mov r0, r4
	bl FUN_020463dc
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02070E30
	mov r0, r4
	mov r1, #0
	bl FUN_020463dc
_02070E30:
	mov r7, #0
	b _02070ECC
_02070E38:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, #6
	mul r4, r7, r0
	add r3, sp, #0x84
	mov r5, r0
	add r2, r3, r4
	b _02070EC0
_02070E5C:
	ldrh r10, [r2, #2]
	mul r1, r8, r5
	add r0, r3, r1
	ldrh r6, [r0, #2]
	cmp r10, r6
	bhs _02070EBC
	ldrh r12, [r3, r1]
	ldrh r10, [r0, #2]
	ldrh r6, [r0, #4]
	strh r12, [sp, #0x5c]
	strh r10, [sp, #0x5e]
	strh r6, [sp, #0x60]
	ldrh r12, [r3, r4]
	ldrh r10, [sp, #0x5c]
	ldrh r6, [sp, #0x5e]
	strh r12, [r3, r1]
	ldrh r12, [r2, #2]
	ldrh r1, [sp, #0x60]
	strh r12, [r0, #2]
	ldrh r12, [r2, #4]
	strh r12, [r0, #4]
	strh r10, [r3, r4]
	strh r6, [r2, #2]
	strh r1, [r2, #4]
_02070EBC:
	add r8, r8, #1
_02070EC0:
	cmp r8, r9
	blt _02070E5C
	add r7, r7, #1
_02070ECC:
	sub r0, r9, #1
	cmp r7, r0
	blt _02070E38
	add r2, sp, #0x400
	add r1, sp, #0x400
	mov r7, #0
	add r5, sp, #0x84
	add r2, r2, #0x98
	add r1, r1, #0x9a
	mov r0, #6
	b _02070F10
_02070EF8:
	mul r3, r7, r0
	ldrh r4, [r5, r3]
	mov r3, r7, lsl #3
	add r7, r7, #1
	strh r4, [r2, r3]
	strb r7, [r1, r3]
_02070F10:
	cmp r7, #4
	blt _02070EF8
	add r0, sp, #0x400
	mov r7, #4
	mov r2, #0
	add r0, r0, #0x98
	b _02070F38
_02070F2C:
	mov r1, r7, lsl #3
	strh r2, [r0, r1]
	add r7, r7, #1
_02070F38:
	cmp r7, #0x10
	blt _02070F2C
	add r1, sp, #0x400
	add r1, r1, #0x4c
	ldr r0, [sp, #0x44]
	mov r2, #0x4c
	b _02070F9C
_02070F54:
	add r4, sp, #0x400
	add r4, r4, #0x4c
	ldr r1, [sp, #0x14]
	mov r0, r11
	mov r2, r4
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x1b8
	addeq sp, sp, #0x400
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x44]
	mov r0, r4
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r0, sp, #0x500
	add r0, r0, #0x98
	mov r1, r6
	mov r2, #0x20
_02070F9C:
	bl MI_CpuCopy8
_02070FA0:
	ldr r0, [sp, #0x44]
	ldr r1, _020713C4 ; =0x020A06D2
	ldrh r3, [r0, #0x22]
	ldr r0, [sp, #0x10]
	mov r2, r0, lsl #1
	ldr r0, [sp, #0x44]
	strh r3, [r0, #0x48]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	strh r0, [r1, r2]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	cmp r0, #0
	ldreq r1, _02071398 ; =0x020A0640
	ldreqb r0, [r1, #0x1a]
	cmpeq r0, #0
	ldreq r0, [sp, #0x10]
	streqb r0, [r1, #0x9a]
	ldr r0, [sp, #0x44]
	ldrh r1, [r0, #0x34]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	ldr r0, [sp, #0x44]
	moveq r4, #1
	strh r1, [r0, #0x4a]
	movne r4, #0
	add r1, sp, #0x400
	add r1, r1, #0x4c
	mov r0, r11
	str r4, [sp]
	bl FUN_020701c8
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _020710CC
	mov r0, r11
	mov r5, #1
	mov r7, #0
	bl FUN_020731a4
	cmp r0, #0
	beq _020710CC
	ldrb r0, [r11, #0x886]
	cmp r0, #0
	bne _020710CC
	mov r9, r7
	ldr r6, _020713C8 ; =0x02091488
	ldr r4, _020713CC ; =0x0209A11C
	b _020710BC
_0207105C:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020710B8
	bl FUN_0206d5f0
	cmp r0, #1
	bne _020710B8
	mov r0, r8
	mov r1, r7
	bl FUN_0206d824
	cmp r0, #0
	beq _020710B8
	ldrh r1, [r8, #0x4e]
	ldr r0, [r4]
	mov r2, r7
	bl FUN_0206c7dc
	cmp r0, #0
	beq _020710B8
	mov r0, r11
	mov r1, r8
	mov r2, r6
	bl FUN_0204ee18
	str r5, [sp, #0x38]
_020710B8:
	add r9, r9, #1
_020710BC:
	ldr r0, [r4]
	bl FUN_0206c2f8
	cmp r9, r0
	blt _0207105C
_020710CC:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02071170
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02071170
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	beq _02071170
	ldr r0, [sp, #0x34]
	mov r1, #0
	orr r0, r0, #0x8000
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _020711C4
	add r0, r4, #0x1c
	bl STD_GetStringLength
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	mov r5, r0, asr #1
	cmp r5, #5
	bgt _020711C4
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_0207249c
	add r1, r4, #0x1c
	str r0, [sp, #0x44]
	bl STD_CopyString
	ldr r4, _020713D0 ; =0x02091494
	b _02071158
_02071148:
	ldr r0, [sp, #0x44]
	mov r1, r4
	bl STD_ConcatenateString
	add r5, r5, #1
_02071158:
	cmp r5, #5
	blt _02071148
	ldr r1, _020713D4 ; =0x02091498
	ldr r0, [sp, #0x44]
	bl STD_ConcatenateString
	b _020711C4
_02071170:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _020711C4
	ldrb r0, [r11, #0x88a]
	cmp r0, #0
	ldreqb r0, [r11, #0x886]
	cmpeq r0, #0
	bne _020711C4
	ldr r4, _020713D8 ; =0x020914A4
	mov r3, #0xf
_02071198:
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x44]
	add r4, r4, #2
	strb r1, [r0, #1]
	strb r2, [r0], #2
	subs r3, r3, #1
	str r0, [sp, #0x44]
	bne _02071198
	ldrb r1, [r4]
	strb r1, [r0]
_020711C4:
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_020724dc
	ldr r1, [sp, #0x14]
	strh r1, [r0, #8]
	ldrb r0, [r11, #0x88a]
	cmp r0, #0
	beq _02071260
	bl FUN_ov16_020f066c
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #1
	bne _02071260
	mov r7, #0x10
	ldr r5, _020713DC ; =0x020914B0
	ldr r4, _020713E0 ; =0x00000103
	b _02071258
_02071208:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02071254
	bl FUN_0206d64c
	cmp r0, #0
	beq _02071254
	mov r0, r6
	bl FUN_0206d5f0
	cmp r0, #1
	bne _02071254
	ldr r0, [sp, #0x14]
	cmp r0, r4
	cmpne r0, #0x104
	beq _02071254
	mov r0, r11
	mov r1, r6
	mov r2, r5
	bl FUN_0204ee18
_02071254:
	add r7, r7, #1
_02071258:
	cmp r7, #0x20
	blt _02071208
_02071260:
	ldr r0, [sp, #0x1c]
	mov r4, #0
	cmp r0, #0
	beq _02071360
	ldr r1, _02071394 ; =0x020A1640
	ldr r0, _0207139C ; =0x00000808
	ldr r2, [r1, #0x230]
	ldrb r1, [r1, #0x246]
	add r2, r2, #8
	mov r6, #0x10
	mla r5, r1, r0, r2
	add r10, r5, #0xd4
	b _02071358
_02071294:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02071354
	bl FUN_0206cc00
	mov r8, r4
	mov r1, #0x6c
	b _020712D0
_020712B4:
	mul r3, r8, r1
	add r2, r5, r3
	ldrh r2, [r2, #0xd8]
	cmp r0, r2
	addeq r9, r10, r3
	beq _020712DC
	add r8, r8, #1
_020712D0:
	cmp r8, #0x10
	blt _020712B4
	mov r9, r4
_020712DC:
	cmp r9, #0
	beq _02071354
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r8, [r0, #0x56]
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r9
	bl FUN_0206ed40
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206e7e4
	mov r0, r7
	mov r1, #0x8000
	bl FUN_0206d434
	cmp r0, #0
	mov r0, r7
	mov r1, #0x2000
	beq _02071334
	bl FUN_0206d3c8
	b _02071338
_02071334:
	bl FUN_0206d3fc
_02071338:
	str r4, [sp]
	mov r0, r11
	mov r1, r7
	mov r2, #1
	mov r3, r4
	str r4, [sp, #4]
	bl FUN_0204e79c
_02071354:
	add r6, r6, #1
_02071358:
	cmp r6, #0x20
	blt _02071294
_02071360:
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	addne sp, sp, #0x1b8
	addne sp, sp, #0x400
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	mov r0, r11
	mov r2, #1
	bl FUN_02072560
	add sp, sp, #0x1b8
	add sp, sp, #0x400
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02071394: .word unk_020A1640
_02071398: .word unk_020A0640
_0207139C: .word 0x00000808
_020713A0: .word unk_020A06BC
_020713A4: .word unk_020A9C40
_020713A8: .word unk_0209143C
_020713AC: .word unk_0209A250
_020713B0: .word unk_02091458
_020713B4: .word unk_02091470
_020713B8: .word 0x0000EFFF
_020713BC: .word unk_0209A0AC
_020713C0: .word 0x00007FFF
_020713C4: .word unk_020A06D2
_020713C8: .word unk_02091488
_020713CC: .word unk_0209A11C
_020713D0: .word unk_02091494
_020713D4: .word unk_02091498
_020713D8: .word unk_020914A4
_020713DC: .word unk_020914B0
_020713E0: .word 0x00000103
	arm_func_end FUN_02070530

	arm_func_start FUN_020713e4
FUN_020713e4: ; 0x020713E4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x7d0]
	cmp r0, #0
	bne _02071444
	ldr r3, _02071450 ; =0x0209A250
	ldr r1, _02071454 ; =0x020914BC
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071434
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x7d0
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071434:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071444:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071450: .word unk_0209A250
_02071454: .word unk_020914BC
	arm_func_end FUN_020713e4

	arm_func_start FUN_02071458
FUN_02071458: ; 0x02071458
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r8, r0
	str r4, [sp]
	ldr r0, [r8, #0x7d8]
	mov r5, #0x2c
	cmp r0, #0
	ldr r6, _020715AC ; =0x020914D8
	bne _020714B0
	ldr r0, _020715B0 ; =0x00000101
	bl FUN_02086750
	add r0, sp, #0
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl FUN_02085bbc
	cmp r0, #0
	bne _020714BC
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020714B0:
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020714BC:
	mov r1, r4
	mov r0, #0x800
	bl FUN_020866d8
	str r0, [r8, #0x7fc]
	mov r6, #1
	mov r7, r6
	strh r4, [r0]
_020714D8:
	ldr r1, [sp]
	mov r0, r8
	mla r1, r7, r5, r1
	mov r2, r5
	bl FUN_020748c8
	ldrsb r0, [r0]
	cmp r0, #0
	ldreq r1, [r8, #0x7fc]
	moveq r0, r7, lsl #1
	streqh r4, [r1, r0]
	beq _0207151C
	add r0, r6, #1
	ldr r2, [r8, #0x7fc]
	mov r1, r7, lsl #1
	mov r0, r0, lsl #0x10
	strh r6, [r2, r1]
	mov r6, r0, lsr #0x10
_0207151C:
	add r7, r7, #1
	cmp r7, #0x400
	blt _020714D8
	mul r0, r6, r5
	mov r1, #0
	bl FUN_020866d8
	mov r1, r0
	str r1, [r8, #0x7d8]
	ldr r0, [sp]
	mov r2, r5
	mov r6, #1
	bl MI_CpuCopy8
	mov r4, r6
_02071550:
	ldr r1, [r8, #0x7fc]
	mov r0, r4, lsl #1
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02071584
	ldr r0, [sp]
	mul r1, r6, r5
	ldr r3, [r8, #0x7d8]
	mla r0, r4, r5, r0
	mov r2, r5
	add r1, r3, r1
	add r6, r6, #1
	bl MI_CpuCopy8
_02071584:
	add r4, r4, #1
	cmp r4, #0x400
	blt _02071550
	ldr r0, [sp]
	cmp r0, #0
	beq _020715A0
	bl FUN_02086738
_020715A0:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020715AC: .word unk_020914D8
_020715B0: .word 0x00000101
	arm_func_end FUN_02071458

	arm_func_start FUN_020715b4
FUN_020715b4: ; 0x020715B4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x814]
	mov r4, #0
	cmp r0, #0
	bne _02071624
	ldr r3, _02071690 ; =0x0209A250
	ldr r1, _02071694 ; =0x020914E8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r4
	beq _02071608
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r5, #0x14
	str r4, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071608:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _02071698 ; =0x0209A120
	mov r0, r0, lsr #1
	str r0, [r1]
_02071624:
	ldr r0, [r5, #0x818]
	cmp r0, #0
	bne _02071684
	ldr r3, _02071690 ; =0x0209A250
	ldr r1, _0207169C ; =0x02091504
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071668
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r5, #0x18
	str r4, [sp, #8]
	mov r4, #1
	add r2, r2, #0x800
	str r4, [sp, #0xc]
	bl FUN_0202eff0
_02071668:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020716A0 ; =0x0209A130
	mov r0, r0, lsr #1
	str r0, [r1]
_02071684:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02071690: .word unk_0209A250
_02071694: .word unk_020914E8
_02071698: .word unk_0209A120
_0207169C: .word unk_02091504
_020716A0: .word unk_0209A130
	arm_func_end FUN_020715b4

	arm_func_start FUN_020716a4
FUN_020716a4: ; 0x020716A4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7d4]
	cmp r0, #0
	bne _02071708
	ldr r3, _02071714 ; =0x0209A250
	ldr r1, _02071718 ; =0x02091524
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020716F8
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3d4
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_020716F8:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071708:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071714: .word unk_0209A250
_02071718: .word unk_02091524
	arm_func_end FUN_020716a4

	arm_func_start FUN_0207171c
FUN_0207171c: ; 0x0207171C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x83c]
	cmp r1, #0
	bne _02071780
	ldr r3, _0207179C ; =0x0209A250
	ldr r1, _020717A0 ; =0x02091540
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071770
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0x3c
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071770:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_02071780:
	ldr r1, _020717A4 ; =0xC7CE0C7D
	umull r1, r2, r0, r1
	mov r2, r2, lsr #5
	str r2, [r4, #0x838]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0207179C: .word unk_0209A250
_020717A0: .word unk_02091540
_020717A4: .word 0xC7CE0C7D
	arm_func_end FUN_0207171c

	arm_func_start FUN_020717a8
FUN_020717a8: ; 0x020717A8
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x840]
	cmp r0, #0
	bne _02071808
	ldr r3, _02071814 ; =0x0209A250
	ldr r1, _02071818 ; =0x02091560
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020717F8
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x840
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_020717F8:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071808:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071814: .word unk_0209A250
_02071818: .word unk_02091560
	arm_func_end FUN_020717a8

	arm_func_start FUN_0207181c
FUN_0207181c: ; 0x0207181C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x808]
	cmp r0, #0
	bne _02071880
	ldr r3, _0207188C ; =0x0209A250
	ldr r1, _02071890 ; =0x0209157C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071870
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #8
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071870:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071880:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0207188C: .word unk_0209A250
_02071890: .word unk_0209157C
	arm_func_end FUN_0207181c

	arm_func_start FUN_02071894
FUN_02071894: ; 0x02071894
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x808]
	mov r7, r1
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, _0207192C ; =0x0209A250
	mov r5, #0x300
	mov r0, r6
	mov r1, r5
	bl FUN_0202de44
	cmp r0, #0
	str r0, [r8, #0x808]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r0, [r7]
	mov r4, #0
	ldr r0, _02071930 ; =0x02091598
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r4, [sp]
	bl FUN_ov16_020f3234
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x808]
	mov r0, r6
	bl FUN_0202e1c0
	mov r0, r4
	str r4, [r8, #0x808]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0207192C: .word unk_0209A250
_02071930: .word unk_02091598
	arm_func_end FUN_02071894

	arm_func_start FUN_02071934
FUN_02071934: ; 0x02071934
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x808]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02071964 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x808]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02071964: .word unk_0209A250
	arm_func_end FUN_02071934

	arm_func_start FUN_02071968
FUN_02071968: ; 0x02071968
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x80c]
	cmp r0, #0
	bne _020719CC
	ldr r3, _020719D8 ; =0x0209A250
	ldr r1, _020719DC ; =0x020915B4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020719BC
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0xc
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_020719BC:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_020719CC:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020719D8: .word unk_0209A250
_020719DC: .word unk_020915B4
	arm_func_end FUN_02071968

	arm_func_start FUN_020719e0
FUN_020719e0: ; 0x020719E0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x7e0]
	mov r4, #0
	cmp r0, #0
	bne _02071A40
	ldr r3, _02071AA0 ; =0x0209A250
	ldr r1, _02071AA4 ; =0x020915D4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r4
	beq _02071A30
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r12, #1
	add r2, r5, #0x7e0
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071A30:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02071A40:
	ldr r0, [r5, #0x7e4]
	cmp r0, #0
	bne _02071A94
	ldr r3, _02071AA0 ; =0x0209A250
	ldr r1, _02071AA8 ; =0x020915F0
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071A84
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r5, #0x3e4
	str r4, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071A84:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02071A94:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02071AA0: .word unk_0209A250
_02071AA4: .word unk_020915D4
_02071AA8: .word unk_020915F0
	arm_func_end FUN_020719e0

	arm_func_start FUN_02071aac
FUN_02071aac: ; 0x02071AAC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7e8]
	cmp r0, #0
	bne _02071B10
	ldr r3, _02071B1C ; =0x0209A250
	ldr r1, _02071B20 ; =0x0209160C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071B00
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3e8
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071B00:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071B10:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071B1C: .word unk_0209A250
_02071B20: .word unk_0209160C
	arm_func_end FUN_02071aac

	arm_func_start FUN_02071b24
FUN_02071b24: ; 0x02071B24
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr r12, _02071BCC ; =0x0208C50C
	add r3, sp, #0x10
	mov r4, r0
	mov r2, #0xf
_02071B3C:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02071B3C
	ldr r0, [r4, #0x844]
	cmp r0, #0
	bne _02071BC0
	ldr r3, _02071BD0 ; =0x0209A250
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071B9C
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0x44
	str r12, [sp, #8]
	mov r12, #1
	add r1, sp, #0x10
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02071B9C:
	cmp r0, #0
	ldrne r1, _02071BD4 ; =0xAAAAAAAB
	moveq r0, #0
	umullne r1, r2, r0, r1
	movne r2, r2, lsr #3
	add sp, sp, #0x30
	strneb r2, [r4, #0x848]
	movne r0, #1
	ldmfd sp!, {r4, pc}
_02071BC0:
	mov r0, #0
	add sp, sp, #0x30
	ldmfd sp!, {r4, pc}
_02071BCC: .word unk_0208C50C
_02071BD0: .word unk_0209A250
_02071BD4: .word 0xAAAAAAAB
	arm_func_end FUN_02071b24

	arm_func_start FUN_02071bd8
FUN_02071bd8: ; 0x02071BD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_02071c18
	cmp r4, r0
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldr r0, [r5, #0x844]
	mov r1, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_02071C04:
	add r1, r1, #1
	cmp r1, r4
	add r0, r0, #0xc
	blt _02071C04
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02071bd8

	arm_func_start FUN_02071c18
FUN_02071c18: ; 0x02071C18
	ldrb r0, [r0, #0x848]
	bx lr
	arm_func_end FUN_02071c18

	arm_func_start FUN_02071c20
FUN_02071c20: ; 0x02071C20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	movs r8, r1
	mov r9, r0
	ldrneh r0, [r8, #4]
	mov r7, r2
	mov r6, r3
	cmpne r0, #0
	mov r4, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0x64
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r2, r4
	ldr r0, _02071D68 ; =0x0209A11C
	str r2, [sp]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r2
	bl FUN_0206c300
	mov r5, r0
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206ed40
	cmp r6, #0
	beq _02071CA8
	mov r0, r6
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	b _02071CB8
_02071CA8:
	ldrh r1, [r8, #4]
	mov r0, r9
	mov r2, r5
	bl FUN_0204bd64
_02071CB8:
	mov r0, r7, lsl #0x18
	mov r2, r0, asr #0x18
	ldr r1, _02071D6C ; =0x0000FFFF
	mov r0, r5
	strh r2, [r5, #0x94]
	bl FUN_0206d634
	mov r0, r5
	mov r1, #0x21
	bl FUN_0206d620
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	ldr r0, _02071D70 ; =0x0209BA20
	bl FUN_0205107c
	cmp r0, #0
	beq _02071D20
	mov r1, #0
	bl FUN_0204fbe8
	mov r6, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r6, r0
	bne _02071D20
	mov r0, r5
	mov r1, #0x80
	bl FUN_0206d620
_02071D20:
	mov r0, r5
	bl FUN_0206dcd4
	mov r2, r4
	mov r1, #3
	bl FUN_0206def8
	mov r0, #4
	mov r6, #1
	str r0, [sp]
	ldr r7, [sp, #0x28]
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_0204e79c
	mov r0, r6
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02071D68: .word unk_0209A11C
_02071D6C: .word 0x0000FFFF
_02071D70: .word unk_0209BA20
	arm_func_end FUN_02071c20

	arm_func_start FUN_02071d74
FUN_02071d74: ; 0x02071D74
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	ldr r0, _02071DAC ; =0x0209A11C
	str r12, [sp]
	mov r12, r1
	mov r1, r2
	mov r2, r3
	ldr r0, [r0]
	mov r3, r12
	bl FUN_0206c300
	cmp r0, #0
	ldrneb r1, [sp, #0xc]
	strneb r1, [r0, #0x83]
	ldmfd sp!, {r3, pc}
_02071DAC: .word unk_0209A11C
	arm_func_end FUN_02071d74

	arm_func_start FUN_02071db0
FUN_02071db0: ; 0x02071DB0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _02071DC4
	bl FUN_02071dd0
	ldmfd sp!, {r3, pc}
_02071DC4:
	mov r1, #0
	bl FUN_02071f00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02071db0

	arm_func_start FUN_02071dd0
FUN_02071dd0: ; 0x02071DD0
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	bl FUN_02071df8
	cmp r0, #0
	ldmgefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_02071e90
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02071dd0

	arm_func_start FUN_02071df8
FUN_02071df8: ; 0x02071DF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	bl FUN_0204c420
	cmp r0, #0x64
	subge r0, r5, #1
	ldmgefd sp!, {r4, r5, r6, pc}
_02071E18:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206d64c
	cmp r0, #0
	bne _02071E4C
	mov r0, r4
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_02071E4C:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02071E18
	cmp r6, #0
	beq _02071E88
	mov r4, #0
_02071E64:
	mov r0, r4
	bl FUN_ov16_020efa80
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x10
	blt _02071E64
_02071E88:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02071df8

	arm_func_start FUN_02071e90
FUN_02071e90: ; 0x02071E90
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	beq _02071EB4
	mov r4, #0
	mov r1, r4
	bl FUN_0204c420
	cmp r0, #0x64
	subge r0, r4, #1
	ldmgefd sp!, {r3, r4, r5, pc}
_02071EB4:
	mov r5, #0
_02071EB8:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0206d64c
	cmp r0, #0
	bne _02071EEC
	mov r0, r4
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
_02071EEC:
	add r5, r5, #1
	cmp r5, #0x64
	blt _02071EB8
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02071e90

	arm_func_start FUN_02071f00
FUN_02071f00: ; 0x02071F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #1
	mov r6, r1
	mov r1, r4
	bl FUN_0204c420
	cmp r0, #0x10
	subge r0, r4, #2
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r5, #0x10
_02071F24:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206d64c
	cmp r0, #0
	bne _02071F58
	mov r0, r4
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_02071F58:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02071F24
	cmp r6, #0
	beq _02071F94
	mov r4, #0x10
_02071F70:
	mov r0, r4
	bl FUN_ov16_020efa80
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x20
	blt _02071F70
_02071F94:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02071f00

	arm_func_start FUN_02071f9c
FUN_02071f9c: ; 0x02071F9C
	cmp r1, #0
	rsbeq r2, r2, #0
	mov r0, r2
	bx lr
	arm_func_end FUN_02071f9c

	arm_func_start FUN_02071fac
FUN_02071fac: ; 0x02071FAC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x7f0]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _02072018 ; =0x0209A250
	ldr r1, _0207201C ; =0x0209162C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02072004
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x7f0
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02072004:
	cmp r0, #0x1880
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02072018: .word unk_0209A250
_0207201C: .word unk_0209162C
	arm_func_end FUN_02071fac

	arm_func_start FUN_02072020
FUN_02072020: ; 0x02072020
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x7f0]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02072050 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x7f0]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02072050: .word unk_0209A250
	arm_func_end FUN_02072020

	arm_func_start FUN_02072054
FUN_02072054: ; 0x02072054
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, r5, #0xec
	add r0, r0, #0x400
	movs r4, r1
	str r0, [sp, #0x10]
	beq _0207207C
	cmp r4, #0x38
	blo _02072080
_0207207C:
	mov r4, #1
_02072080:
	ldrb r0, [r5, #0x87e]
	cmp r0, r4
	addeq r0, r5, #0xec
	addeq sp, sp, #0x14
	addeq r0, r0, #0x400
	ldmeqfd sp!, {r4, r5, pc}
	ldr r1, [r5, #0x7f0]
	cmp r1, #0
	movne r0, #0x188
	addne sp, sp, #0x14
	mlane r0, r4, r0, r1
	ldmnefd sp!, {r4, r5, pc}
	ldr r3, _02072110 ; =0x0209A250
	ldr r1, _02072114 ; =0x02091648
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020720F0
	mov r2, #0x188
	mul r12, r4, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_020720F0:
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r5, #0x87e]
	addne r0, r5, #0xec
	strneb r4, [r5, #0x87e]
	addne r0, r0, #0x400
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02072110: .word unk_0209A250
_02072114: .word unk_02091648
	arm_func_end FUN_02072054

	arm_func_start FUN_02072118
FUN_02072118: ; 0x02072118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r0, [r6, #0x83c]
	mov r5, r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0x838]
	mov r4, #0
	cmp r0, #0
	bls _02072174
	mov r7, #0x29
_02072148:
	mul r8, r4, r7
	ldr r9, [r6, #0x83c]
	add r0, r9, r8
	bl FUN_0204b1d4
	cmp r5, r0
	addeq r0, r9, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0x838]
	add r4, r4, #1
	cmp r4, r0
	blo _02072148
_02072174:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02072118

	arm_func_start FUN_0207217c
FUN_0207217c: ; 0x0207217C
	ldr r12, _02072184 ; =FUN_02072118
	bx r12
_02072184: .word FUN_02072118
	arm_func_end FUN_0207217c

	arm_func_start FUN_02072188
FUN_02072188: ; 0x02072188
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_0204a2c4
	mov r0, r6
	mov r1, r5
	bl FUN_0204a2c4
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_020721bc
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02072188

	arm_func_start FUN_020721bc
FUN_020721bc: ; 0x020721BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, [r0, #0x83c]
	mov r4, r2
	cmp r3, #0
	mov r5, #1
	ldrb r1, [r1, #0x14]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02072118
	movs r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
_020721FC:
	add r1, r7, #2
	mov r0, r6
	and r1, r1, #0xff
	bl FUN_0204b1dc
	cmp r0, #0xff
	beq _0207221C
	cmp r4, r0
	bhs _02072228
_0207221C:
	add r0, r7, #1
	and r5, r0, #0xff
	b _0207223C
_02072228:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x13
	blt _020721FC
_0207223C:
	cmp r7, #0x13
	moveq r5, #0x14
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020721bc

	arm_func_start FUN_0207224c
FUN_0207224c: ; 0x0207224C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r2
	mov r9, #0
	mov r7, r0
	mov r0, r5, lsl #0x10
	mov r6, r1
	mov r4, r9
	mov r8, r0, lsr #0x10
_0207226C:
	mov r0, r6
	mov r1, r4
	bl FUN_0206cdf8
	cmp r5, r0
	bne _020722A0
	mov r0, r6
	bl FUN_0206dcd4
	add r0, r0, r4
	ldrb r2, [r0, #0x44]
	mov r0, r7
	mov r1, r8
	bl FUN_02072188
	mov r9, r0
_020722A0:
	add r4, r4, #1
	cmp r4, #6
	blt _0207226C
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0207224c

	arm_func_start FUN_020722b4
FUN_020722b4: ; 0x020722B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_020721bc
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r5, #0x14]
	mov r0, r6
	bl FUN_02072118
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	bl FUN_0204b20c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020722b4

	arm_func_start FUN_020722f4
FUN_020722f4: ; 0x020722F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, [r0, #0x840]
	mov r8, r1
	mov r5, #0
	mov r4, #0xc
_02072308:
	mla r6, r5, r4, r7
	mov r0, r6
	mov r1, r8
	bl strcmp
	cmp r0, #0
	ldreqh r0, [r6, #8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, #0x200
	blt _02072308
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020722f4

	arm_func_start FUN_02072338
FUN_02072338: ; 0x02072338
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, [r0, #0x840]
	mov r8, r1
	mov r5, #0
	mov r4, #0xc
_0207234C:
	mla r6, r5, r4, r7
	mov r0, r6
	mov r1, r8
	bl strcmp
	cmp r0, #0
	ldreqb r0, [r6, #0xa]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, #0x200
	blt _0207234C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02072338

	arm_func_start FUN_0207237c
FUN_0207237c: ; 0x0207237C
	ldr r0, [r0, #0x860]
	ldr r12, _02072388 ; =FUN_02043c2c
	bx r12
_02072388: .word FUN_02043c2c
	arm_func_end FUN_0207237c

	arm_func_start FUN_0207238c
FUN_0207238c: ; 0x0207238C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _020723AC
	bl FUN_02071f9c
	ldr r1, _020723C0 ; =0x0209A720
	ldr r1, [r1, #0xe8]
	sub r0, r1, r0
	ldmfd sp!, {r3, pc}
_020723AC:
	bl FUN_02071f9c
	ldr r1, _020723C0 ; =0x0209A720
	ldr r1, [r1, #0xe0]
	sub r0, r1, r0
	ldmfd sp!, {r3, pc}
_020723C0: .word unk_0209A720
	arm_func_end FUN_0207238c

	arm_func_start FUN_020723c4
FUN_020723c4: ; 0x020723C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_02073194
	cmp r0, #0
	bne _020723F4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0207238c
	ldmfd sp!, {r4, r5, r6, pc}
_020723F4:
	cmp r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bne _0207241C
	bl FUN_02071f9c
	ldr r1, _02072430 ; =0x0209A720
	ldr r1, [r1, #0x100]
	sub r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_0207241C:
	bl FUN_02071f9c
	ldr r1, _02072430 ; =0x0209A720
	ldr r1, [r1, #0xf8]
	sub r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_02072430: .word unk_0209A720
	arm_func_end FUN_020723c4

	arm_func_start FUN_02072434
FUN_02072434: ; 0x02072434
	stmfd sp!, {r3, r4, r5, lr}
	sub lr, r2, #1
	mov r12, #0xb
	mla r4, r1, r12, lr
	mov r5, r0
	cmp r2, #1
	blt _02072458
	cmp r2, #0xb
	ble _02072460
_02072458:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02072460:
	cmp r3, #0
	bne _02072484
	ldr r0, [r5, #0x7bc]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02072484:
	add r0, r5, r4
	ldrb r0, [r0, #0x84a]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02072434

	arm_func_start FUN_0207249c
FUN_0207249c: ; 0x0207249C
	add r2, r0, #0x24
	mov r0, #0x4c
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0207249c

	arm_func_start FUN_020724ac
FUN_020724ac: ; 0x020724AC
	add r0, r0, #0xbc
	add r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_020724ac

	arm_func_start FUN_020724b8
FUN_020724b8: ; 0x020724B8
	add r0, r0, #0x800
	strh r1, [r0, #0x64]
	strh r2, [r0, #0x66]
	bx lr
	arm_func_end FUN_020724b8

	arm_func_start FUN_020724c8
FUN_020724c8: ; 0x020724C8
	ldr r12, _020724D8 ; =FUN_0204f7c0
	mov r2, #0x25
	mov r3, #0
	bx r12
_020724D8: .word FUN_0204f7c0
	arm_func_end FUN_020724c8

	arm_func_start FUN_020724dc
FUN_020724dc: ; 0x020724DC
	add r0, r0, #4
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end FUN_020724dc

	arm_func_start FUN_020724e8
FUN_020724e8: ; 0x020724E8
	add r0, r0, r1
	ldrb r0, [r0, #0x7c6]
	bx lr
	arm_func_end FUN_020724e8

	arm_func_start FUN_020724f4
FUN_020724f4: ; 0x020724F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7cc]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, pc}
	ldr r3, _02072558 ; =0x0209A250
	ldr r1, _0207255C ; =0x02091664
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3cc
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02072558: .word unk_0209A250
_0207255C: .word unk_02091664
	arm_func_end FUN_020724f4

	arm_func_start FUN_02072560
FUN_02072560: ; 0x02072560
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_0207249c
	mov r4, r0
	mov r0, r7
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _0207259C
	mov r0, r7
	mov r1, r6
	bl FUN_020725ac
_0207259C:
	add r0, r7, r6
	ldrb r0, [r0, #0x7c6]
	strb r0, [r4, #0x43]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02072560

	arm_func_start FUN_020725ac
FUN_020725ac: ; 0x020725AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	str r1, [sp]
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	mov r0, r10
	mov r8, #0
	bl FUN_0205107c
	ldr r5, _020726C0 ; =0x0209BA20
	ldr r4, _020726C4 ; =0x0209A0AC
	mov r9, r0
	mov r7, r8
	mov r6, r8
	mov r11, r8
_020725EC:
	mov r0, r9
	mov r1, r6
	bl FUN_0204fbe8
	cmp r0, #0
	beq _02072658
	mov r0, r5
	bl FUN_020731a4
	cmp r0, #0
	mov r0, r9
	mov r1, r6
	beq _0207262C
	bl FUN_0204fbe8
	mov r1, r0
	mov r0, r4
	bl FUN_0206c718
	b _02072638
_0207262C:
	bl FUN_0204fbe8
	mov r1, r11
	bl FUN_ov16_020efa9c
_02072638:
	movs r1, r0
	beq _02072658
	mov r0, r10
	mov r2, #0x25
	mov r3, #0
	bl FUN_0204f02c
	add r8, r8, r0
	add r7, r7, #1
_02072658:
	add r6, r6, #1
	cmp r6, #0x10
	blt _020725EC
	cmp r7, #0
	moveq r0, #0
	beq _02072680
	add r0, r7, r7, lsr #31
	mov r1, r7
	add r0, r8, r0, asr #1
	bl _s32_div_f
_02072680:
	ldr r1, [r10, #0x7cc]
	mov r0, r0, lsl #1
	ldrsh r3, [r1, r0]
	ldr r1, [sp]
	add r0, r10, #0xc6
	add r4, r0, #0x700
	mov r2, r1
	mov r0, r10
	strb r3, [r4, r2]
	bl FUN_0207249c
	ldr r1, [sp]
	ldrb r2, [r4, r1]
	ldrb r1, [r0, #0x43]
	cmp r1, r2
	strhib r2, [r0, #0x43]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020726C0: .word unk_0209BA20
_020726C4: .word unk_0209A0AC
	arm_func_end FUN_020725ac

	arm_func_start FUN_020726c8
FUN_020726c8: ; 0x020726C8
	strb r1, [r0, #0x882]
	bx lr
	arm_func_end FUN_020726c8

	arm_func_start FUN_020726d0
FUN_020726d0: ; 0x020726D0
	ldr r0, _020726DC ; =0x020A0B00
	ldr r12, _020726E0 ; =FUN_02074588
	bx r12
_020726DC: .word unk_020A0B00
_020726E0: .word FUN_02074588
	arm_func_end FUN_020726d0

	arm_func_start FUN_020726e4
FUN_020726e4: ; 0x020726E4
	ldr r12, _020726F4 ; =FUN_020726d0
	mov r2, r1
	mov r1, #1
	bx r12
_020726F4: .word FUN_020726d0
	arm_func_end FUN_020726e4

	arm_func_start FUN_020726f8
FUN_020726f8: ; 0x020726F8
	stmfd sp!, {r4, lr}
	ldr r1, _02072738 ; =0x020A0640
	ldrb r2, [r1, #0x505]
	add r1, r1, #0x500
	ldrsb r4, [r1, #6]
	cmp r2, #0
	bne _02072720
	mov r1, #0
	bl FUN_020724c8
	add r4, r4, r0
_02072720:
	cmp r4, #0
	movle r4, #1
	cmp r4, #0x63
	movgt r4, #0x63
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02072738: .word unk_020A0640
	arm_func_end FUN_020726f8

	arm_func_start FUN_0207273c
FUN_0207273c: ; 0x0207273C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r3, _020727A0 ; =0x0209A250
	str r2, [sp, #0x10]
	ldr r0, [r3]
	ldr lr, _020727A4 ; =0x02091684
	cmp r0, #0
	moveq r0, #0
	beq _0207278C
	mov r2, #0x30
	mul r12, r1, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	mov r1, lr
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0207278C:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020727A0: .word unk_0209A250
_020727A4: .word unk_02091684
	arm_func_end FUN_0207273c

	arm_func_start FUN_020727a8
FUN_020727a8: ; 0x020727A8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	add r4, sp, #4
	mov r2, r4
	mov r5, r0
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r4
	add r1, r5, #0x2bc
	mov r2, #0x30
	bl MI_CpuCopy8
	ldrb r1, [sp, #6]
	ldrsb r2, [sp, #7]
	mov r0, r5
	bl FUN_020726d0
	ldrh r1, [sp, #4]
	mov r0, r5
	bl FUN_0207287c
	ldrh r1, [sp, #8]
	mov r0, r5
	bl FUN_020728a8
	ldrb r1, [sp, #0xe]
	mov r0, r5
	bl FUN_020728d4
	ldrh r1, [sp, #0x10]
	mov r0, r5
	bl FUN_020729dc
	mov r3, #0
	mov r0, #0x4c
_02072828:
	add r1, r4, r3, lsl #1
	ldrh r2, [r1, #6]
	cmp r2, #0
	mlane r1, r3, r0, r5
	add r3, r3, #1
	strneh r2, [r1, #0x4c]
	cmp r3, #2
	blt _02072828
	ldr r3, [sp, #0x18]
	cmp r3, #0
	beq _0207286C
	ldr r0, _02072878 ; =0x020AF81C
	mov r12, #0
	mov r1, #1
	mov r2, #2
	str r12, [sp]
	bl FUN_02044690
_0207286C:
	mov r0, #1
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, pc}
_02072878: .word unk_020AF81C
	arm_func_end FUN_020727a8

	arm_func_start FUN_0207287c
FUN_0207287c: ; 0x0207287C
	mov r1, r1, lsl #0x10
	ldr r0, _02072890 ; =0x020A0B00
	ldr r12, _02072894 ; =FUN_020747a0
	mov r1, r1, lsr #0x10
	bx r12
_02072890: .word unk_020A0B00
_02072894: .word FUN_020747a0
	arm_func_end FUN_0207287c

	arm_func_start FUN_02072898
FUN_02072898: ; 0x02072898
	ldr r0, _020728A4 ; =0x020A0A40
	ldrh r0, [r0, #0xf0]
	bx lr
_020728A4: .word unk_020A0A40
	arm_func_end FUN_02072898

	arm_func_start FUN_020728a8
FUN_020728a8: ; 0x020728A8
	mov r1, r1, lsl #0x10
	ldr r0, _020728BC ; =0x020A0B00
	ldr r12, _020728C0 ; =FUN_020747a8
	mov r1, r1, lsr #0x10
	bx r12
_020728BC: .word unk_020A0B00
_020728C0: .word FUN_020747a8
	arm_func_end FUN_020728a8

	arm_func_start FUN_020728c4
FUN_020728c4: ; 0x020728C4
	ldr r0, _020728D0 ; =0x020A0A40
	ldrh r0, [r0, #0xee]
	bx lr
_020728D0: .word unk_020A0A40
	arm_func_end FUN_020728c4

	arm_func_start FUN_020728d4
FUN_020728d4: ; 0x020728D4
	ldr r0, _020728E0 ; =0x020A0B00
	ldr r12, _020728E4 ; =FUN_02074580
	bx r12
_020728E0: .word unk_020A0B00
_020728E4: .word FUN_02074580
	arm_func_end FUN_020728d4

	arm_func_start FUN_020728e8
FUN_020728e8: ; 0x020728E8
	ldr r0, _020728F4 ; =0x020A0640
	ldrb r0, [r0, #0x504]
	bx lr
_020728F4: .word unk_020A0640
	arm_func_end FUN_020728e8

	arm_func_start FUN_020728f8
FUN_020728f8: ; 0x020728F8
	ldrb r0, [r0, #0x2fc]
	bx lr
	arm_func_end FUN_020728f8

	arm_func_start FUN_02072900
FUN_02072900: ; 0x02072900
	ldrb r0, [r0, #0x2f0]
	and r0, r0, #1
	bx lr
	arm_func_end FUN_02072900

	arm_func_start FUN_0207290c
FUN_0207290c: ; 0x0207290C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2bc
	add r2, sp, #0
	mov r5, r0
	mov r9, #0
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x2bc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrb r1, [sp, #0xa]
	add r2, sp, #0x19c
	mov r0, r5
	bl FUN_0206f950
	cmp r0, #0
	addeq sp, sp, #0x2bc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [sp]
	add r4, sp, #0x30
	mov r0, r5
	mov r2, r4
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x2bc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r6, r9
	ldr r8, _020729D4 ; =0x0209A11C
	ldr r7, _020729D8 ; =0x00000FFF
	mov r5, r6
_02072988:
	add r0, r4, r5, lsl #3
	ldrh r0, [r0, #0x4c]
	and r0, r0, r7
	mov r0, r0, lsl #0x10
	movs r1, r0, lsr #0x10
	beq _020729B4
	ldr r0, [r8]
	mov r2, r9
	bl FUN_0206c7dc
	cmp r0, #0
	addeq r6, r6, #1
_020729B4:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02072988
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	add sp, sp, #0x2bc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020729D4: .word unk_0209A11C
_020729D8: .word 0x00000FFF
	arm_func_end FUN_0207290c

	arm_func_start FUN_020729dc
FUN_020729dc: ; 0x020729DC
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x10
	ldr r0, _020729F8 ; =0x020A0B00
	mov r1, r1, lsr #0x10
	bl FUN_020747b0
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020729F8: .word unk_020A0B00
	arm_func_end FUN_020729dc

	arm_func_start FUN_020729fc
FUN_020729fc: ; 0x020729FC
	ldr r0, _02072A08 ; =0x020A0A40
	ldrh r0, [r0, #0xf2]
	bx lr
_02072A08: .word unk_020A0A40
	arm_func_end FUN_020729fc

	arm_func_start FUN_02072a0c
FUN_02072a0c: ; 0x02072A0C
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072a0c

	arm_func_start FUN_02072a24
FUN_02072a24: ; 0x02072A24
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _02072ABC
_02072A38: ; jump table
	b _02072A74 ; case 0
	b _02072A74 ; case 1
	b _02072A74 ; case 2
	b _02072A84 ; case 3
	b _02072A84 ; case 4
	b _02072A84 ; case 5
	b _02072A94 ; case 6
	b _02072A94 ; case 7
	b _02072A94 ; case 8
	b _02072AA4 ; case 9
	b _02072AA4 ; case 10
	b _02072AA4 ; case 11
	b _02072AB4 ; case 12
	b _02072AB4 ; case 13
	b _02072AB4 ; case 14
_02072A74:
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
_02072A84:
	tst r0, #4
	moveq r0, #1
	movne r0, #0
	bx lr
_02072A94:
	tst r0, #8
	moveq r0, #1
	movne r0, #0
	bx lr
_02072AA4:
	tst r0, #0x10
	moveq r0, #1
	movne r0, #0
	bx lr
_02072AB4:
	mov r0, #0
	bx lr
_02072ABC:
	mov r0, #1
	bx lr
	arm_func_end FUN_02072a24

	arm_func_start FUN_02072ac4
FUN_02072ac4: ; 0x02072AC4
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #0x20
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072ac4

	arm_func_start FUN_02072adc
FUN_02072adc: ; 0x02072ADC
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #0x40
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072adc

	arm_func_start FUN_02072af4
FUN_02072af4: ; 0x02072AF4
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072af4

	arm_func_start FUN_02072b0c
FUN_02072b0c: ; 0x02072B0C
	add r0, r0, #0x200
	ldrh r0, [r0, #0xda]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02072b0c

	arm_func_start FUN_02072b24
FUN_02072b24: ; 0x02072B24
	add r0, r0, #0x200
	ldrh r0, [r0, #0xda]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02072b24

	arm_func_start FUN_02072b3c
FUN_02072b3c: ; 0x02072B3C
	add r0, r0, #0x200
	ldrh r0, [r0, #0xda]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02072b3c

	arm_func_start FUN_02072b54
FUN_02072b54: ; 0x02072B54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r9, r1
	mov r10, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r9, #0x2ec
	add r0, r10, #0x24
	add r1, r1, #0x3800
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r0, r10, #0xc
	add r1, r9, #0x338
	mov r5, #0x20
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x3800
	bl MI_CpuCopy8
	add r0, r10, #0x4c
	add r1, r9, #0x358
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x3800
	bl MI_CpuCopy8
	add r0, r10, #0xcc
	add r1, r9, #0x378
	mov r4, #0x10
	add r0, r0, #0x400
	add r1, r1, #0x3800
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r10, #0x6c
	add r1, r9, #0x388
	add r0, r0, #0x400
	add r1, r1, #0x3800
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r10, #0x8c
	add r1, r9, #0x3a8
	add r0, r0, #0x400
	add r1, r1, #0x3800
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r10, #0xac
	add r1, r9, #0x3c8
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x3800
	bl MI_CpuCopy8
	add r0, r9, #0xbc
	mov r8, #0
	rsb r2, r4, #0x2a40
	add r0, r0, #0x1000
	mov r1, r8
	bl MI_CpuFill8
	ldr r1, _02072D1C ; =0x0209A11C
	ldr r0, _02072D20 ; =0x0209A0AC
	ldr r11, [r1]
	bl FUN_ov16_020efa04
	mov r0, r10
	bl FUN_020744b4
	add r0, r9, #0xbc
	mov r7, r8
	add r5, r0, #0x1000
	mov r4, #0x6c
	b _02072CC4
_02072C58:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02072CC0
	bl FUN_0206d5f0
	cmp r0, #0
	bne _02072CC0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _02072CC0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #4]
	cmp r0, #0x8000
	beq _02072CC0
	cmp r8, #0x64
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	mla r0, r8, r4, r5
	bl FUN_0206ed40
	add r8, r8, #1
_02072CC0:
	add r7, r7, #1
_02072CC4:
	cmp r7, #0x64
	blt _02072C58
	add r0, r9, #0xa8
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	add r0, r9, #0xa8
	ldr r1, _02072D24 ; =0x020A1640
	add r2, r0, #0x1000
	ldrb r3, [r1, #0x179]
	ldrb r1, [r2, #0x11]
	mov r0, r10
	orr r1, r1, r3
	strb r1, [r2, #0x11]
	bl FUN_02074478
	mov r0, r11
	bl FUN_ov16_020efa04
	mov r0, r10
	bl FUN_02074040
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02072D1C: .word unk_0209A11C
_02072D20: .word unk_0209A0AC
_02072D24: .word unk_020A1640
	arm_func_end FUN_02072b54

	arm_func_start FUN_02072d28
FUN_02072d28: ; 0x02072D28
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, r4, #0x394
	add r0, r5, #0x24
	add r1, r1, #0x400
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r0, r5, #0x4c
	add r0, r0, #0x400
	add r1, r4, #0x7e0
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r9, #0
	mov r8, r9
	add r6, r4, #0xd4
	mov r7, r9
	mov r5, #0x6c
_02072D78:
	mov r1, r8
	add r0, r4, #0x7e0
	bl FUN_0204fbe8
	mov r1, r7
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _02072DB8
	mla r10, r9, r5, r6
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r10
	bl FUN_0206ed40
	ldrb r1, [r10, #0x57]
	mov r0, r10
	add r9, r9, #1
	bl FUN_0206e84c
_02072DB8:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02072D78
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02072d28

	arm_func_start FUN_02072dcc
FUN_02072dcc: ; 0x02072DCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	movs r9, r1
	mov r10, r0
	addeq sp, sp, #0x94
	mov r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02073168 ; =0x0209A11C
	ldr r0, [r0]
	bl FUN_0206c62c
	add r0, r9, #0x2ec
	add r0, r0, #0x3800
	add r1, r10, #0x24
	mov r2, #0x4c
	bl MI_CpuCopy8
	ldrh r0, [r10, #0x6c]
	add r1, r10, #0xc
	mov r4, #0x20
	cmp r0, #0
	ldreqh r0, [r10, #0x46]
	mov r2, r4
	add r1, r1, #0x400
	streqh r0, [r10, #0x6c]
	add r0, r9, #0x338
	add r0, r0, #0x3800
	bl MI_CpuCopy8
	add r0, r9, #0x358
	add r1, r10, #0x4c
	mov r2, r4
	add r0, r0, #0x3800
	add r1, r1, #0x400
	bl MI_CpuCopy8
	add r0, r9, #0x378
	add r1, r10, #0xcc
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r9, #0x388
	add r1, r10, #0x6c
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r9, #0x3a8
	add r1, r10, #0x8c
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r9, #0x3c8
	add r1, r10, #0xac
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	mov r6, #0
	mov r0, r10
	mov r1, r6
	bl FUN_020740a4
	add r8, sp, #0x4c
	mov r0, r8
	mov r7, r6
	bl FS_InitFile
	ldr r1, _0207316C ; =0x020916A0
	mov r0, r8
	bl FS_OpenFile
	cmp r0, #0
	beq _02072F64
	ldr r0, _02073170 ; =0x0209A250
	add r1, r4, #0x2880
	bl FUN_0202de44
	movs r7, r0
	beq _02072F50
	mov r11, #0x68
	mov r4, #0x6c
	mvn r5, #0
	b _02072F48
_02072F04:
	mla r0, r6, r4, r9
	add r0, r0, #0x1000
	ldrh r1, [r0, #0xc0]
	mov r0, r10
	bl FUN_0204bc4c
	cmp r0, r5
	beq _02072F44
	mov r1, #0x68 ; =sizeof(Unitbase_FileEntry)
	mul r1, r0, r1
	mov r0, r8
	mov r2, #0
	bl FS_SeekFile
	mla r1, r6, r11, r7
	mov r0, r8
	mov r2, #0x68 ; =sizeof(Unitbase_FileEntry)
	bl FS_ReadFile
_02072F44:
	add r6, r6, #1
_02072F48:
	cmp r6, #0x64
	blt _02072F04
_02072F50:
	add r4, sp, #0x4c
_02072F54:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _02072F54
_02072F64:
	mov r6, #0
	add r0, sp, #0x4c
	mov r8, r6
	mov r4, #0x48
	bl FS_InitFile
	ldr r1, _02073174 ; =0x020916BC
	add r0, sp, #0x4c
	bl FS_OpenFile
	cmp r0, #0
	beq _0207303C
	ldr r0, _02073170 ; =0x0209A250
	ldr r1, _02073178 ; =0x00001C20
	bl FUN_0202de44
	movs r8, r0
	beq _02073028
	mvn r11, #0
	b _02073020
_02072FA8:
	mov r0, #0x6c
	mla r0, r6, r0, r9
	add r0, r0, #0x1000
	ldrh r1, [r0, #0xc0]
	mov r0, r10
	bl FUN_0204bc4c
	mov r5, r0
	cmp r5, r11
	beq _0207301C
	mul r1, r5, r4
	add r0, sp, #0x4c
	mov r2, #0
	bl FS_SeekFile
	add r0, sp, #0x4c
	add r1, sp, #4
	mov r2, r4
	bl FS_ReadFile
	ldr r0, _0207317C ; =0x0209BA20
	add r1, sp, #4
	mov r2, r4
	bl FUN_020748c8
	mla r1, r6, r4, r8
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5, lsl #0x10
	mov r1, r0, lsr #0x10
	mla r2, r6, r4, r8
	ldr r0, _0207317C ; =0x0209BA20
	bl FUN_02073f10
_0207301C:
	add r6, r6, #1
_02073020:
	cmp r6, #0x64
	blt _02072FA8
_02073028:
	add r4, sp, #0x4c
_0207302C:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0207302C
_0207303C:
	ldr r0, _0207317C ; =0x0209BA20
	mov r4, #0
	bl FUN_ov16_020eeca0
	add r0, r9, #0xbc
	mov r6, r4
	add r5, r0, #0x1000
	mov r11, #0x68
	b _02073084
_0207305C:
	mov r0, #0x48
	mla r2, r6, r0, r8
	mov r0, #0x6c
	mla r1, r6, r0, r5
	str r2, [sp]
	mla r3, r6, r11, r7
	mov r0, r10
	mov r2, r6
	bl FUN_02071c20
	add r6, r6, #1
_02073084:
	cmp r6, #0x64
	blt _0207305C
	ldr r0, _0207317C ; =0x0209BA20
	bl FUN_ov16_020eedb8
	cmp r8, #0
	beq _020730A8
	ldr r0, _02073170 ; =0x0209A250
	mov r1, r8
	bl FUN_0202e1c0
_020730A8:
	cmp r7, #0
	beq _020730BC
	ldr r0, _02073170 ; =0x0209A250
	mov r1, r7
	bl FUN_0202e1c0
_020730BC:
	ldr r1, _02073180 ; =0x020A1640
	add r0, r9, #0x1000
	ldrb r3, [r0, #0xb9]
	ldrb r2, [r1, #0x179]
	mov r0, r10
	orr r2, r2, r3
	strb r2, [r1, #0x179]
	bl FUN_02074478
	mov r0, r10
	bl FUN_02074040
	mov r6, #0
	mov r0, r10
	mov r1, r6
	bl FUN_02074078
	b _02073124
_020730F8:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _02073120
	mov r1, r4
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0206d9cc
_02073120:
	add r6, r6, #1
_02073124:
	cmp r6, #0x64
	blt _020730F8
	mov r0, r10
	mov r1, r4
	bl FUN_0207249c
	ldrh r2, [r0, #0x2e]
	mov r0, r10
	mov r1, r4
	bl FUN_0204d864
	mov r0, r10
	bl FUN_0204ce50
	mov r0, r10
	mov r1, r4
	bl FUN_0204d0b4
	mov r0, #1
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02073168: .word unk_0209A11C
_0207316C: .word unk_020916A0
_02073170: .word unk_0209A250
_02073174: .word unk_020916BC
_02073178: .word 0x00001C20
_0207317C: .word unk_0209BA20
_02073180: .word unk_020A1640
	arm_func_end FUN_02072dcc

	arm_func_start FUN_02073184
FUN_02073184: ; 0x02073184
	add r0, r0, #0x2bc
	bx lr
	arm_func_end FUN_02073184

	arm_func_start FUN_0207318c
FUN_0207318c: ; 0x0207318C
	add r0, r0, #0x2ec
	bx lr
	arm_func_end FUN_0207318c

	arm_func_start FUN_02073194
FUN_02073194: ; 0x02073194
	ldr r12, _020731A0 ; =FUN_02073e14
	add r0, r0, #0x2ec
	bx r12
_020731A0: .word FUN_02073e14
	arm_func_end FUN_02073194

	arm_func_start FUN_020731a4
FUN_020731a4: ; 0x020731A4
	ldr r12, _020731B0 ; =FUN_02073e7c
	add r0, r0, #0x2ec
	bx r12
_020731B0: .word FUN_02073e7c
	arm_func_end FUN_020731a4

	arm_func_start FUN_020731b4
FUN_020731b4: ; 0x020731B4
	ldr r0, _020731CC ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020731CC: .word unk_0209A454
	arm_func_end FUN_020731b4

	arm_func_start FUN_020731d0
FUN_020731d0: ; 0x020731D0
	ldr r0, _020731E8 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020731E8: .word unk_0209A454
	arm_func_end FUN_020731d0

	arm_func_start FUN_020731ec
FUN_020731ec: ; 0x020731EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r8, r1
	cmp r7, #2
	mov r6, #0xb
	beq _02073218
	cmp r7, #0
	bne _0207321C
	bl FUN_020731b4
	cmp r0, #0
	beq _0207321C
_02073218:
	mov r6, #4
_0207321C:
	cmp r6, #1
	mov r5, #1
	blt _02073258
	mov r4, r5
_0207322C:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_020efb6c
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, r6
	ble _0207322C
_02073258:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020731ec

	arm_func_start FUN_02073260
FUN_02073260: ; 0x02073260
	stmfd sp!, {r3, lr}
	sub lr, r2, #1
	mov r12, #0xb
	mla r12, r1, r12, lr
	cmp r3, #0
	beq _0207329C
	cmp r2, #0xc
	blt _0207329C
	cmp r2, #0x10
	bgt _0207329C
	bl FUN_020731a4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0207329C:
	cmp r2, #0
	cmpne r2, #0xc
	movge r0, #0
	ldmgefd sp!, {r3, pc}
	cmp r12, #0x16
	movhs r0, #0
	ldmhsfd sp!, {r3, pc}
	add r0, r0, r12
	ldrb r0, [r0, #0x84a]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02073260

	arm_func_start FUN_020732d0
FUN_020732d0: ; 0x020732D0
	strb r1, [r0, #0x88a]
	bx lr
	arm_func_end FUN_020732d0

	arm_func_start FUN_020732d8
FUN_020732d8: ; 0x020732D8
	ldrb r0, [r0, #0x88a]
	bx lr
	arm_func_end FUN_020732d8

	arm_func_start FUN_020732e0
FUN_020732e0: ; 0x020732E0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x82c]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _02073350 ; =0x0209A250
	ldr r1, _02073354 ; =0x020916D8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0207333C
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x2c
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0207333C:
	cmp r0, #0x600
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02073350: .word unk_0209A250
_02073354: .word unk_020916D8
	arm_func_end FUN_020732e0

	arm_func_start FUN_02073358
FUN_02073358: ; 0x02073358
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x82c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02073380 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x82c]
	ldmfd sp!, {r4, pc}
_02073380: .word unk_0209A250
	arm_func_end FUN_02073358

	arm_func_start FUN_02073384
FUN_02073384: ; 0x02073384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10, #0x82c]
	mov r1, #0
	str r1, [sp]
	cmp r2, #0
	bne _020733B4
	bl FUN_020732e0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	str r0, [sp]
_020733B4:
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r10
	bl FUN_020724c8
	mov r6, r0
	cmp r6, #0x63
	movgt r6, #0x63
	mov r9, #0
_020733D4:
	ldr r0, [r10, #0x82c]
	add r5, r0, r9, lsl #5
	b _020733F8
_020733E0:
	ldrb r0, [r5]
	cmp r6, r0
	movge r7, r0
	bge _02073400
	add r9, r9, #1
	add r5, r5, #0x20
_020733F8:
	cmp r9, #0x30
	blt _020733E0
_02073400:
	mov r4, r9
	b _0207341C
_02073408:
	ldrb r0, [r5]
	cmp r7, r0
	bne _02073424
	add r4, r4, #1
	add r5, r5, #0x20
_0207341C:
	cmp r4, #0x30
	blt _02073408
_02073424:
	ldr r0, [r10, #0x82c]
	mov r8, #0
	add r5, r0, r9, lsl #5
	sub r11, r8, #1
	b _02073474
_02073438:
	ldrb r1, [r5, #1]
	cmp r1, #0
	moveq r11, r9
	beq _0207347C
	mov r0, r10
	mov r2, #0
	bl FUN_0204f888
	cmp r8, r0
	bgt _0207346C
	ldr r1, [r5, #4]
	cmp r0, r1
	movge r8, r0
	movge r11, r9
_0207346C:
	add r9, r9, #1
	add r5, r5, #0x20
_02073474:
	cmp r9, r4
	blt _02073438
_0207347C:
	mvn r1, #0
	cmp r11, r1
	moveq r9, r4
	beq _020733D4
	cmp r11, #0x30
	bge _020734A4
	mov r1, r11, lsl #0x18
	ldr r0, _020734C4 ; =0x020A0B00
	mov r1, r1, asr #0x18
	b _020734A8
_020734A4:
	ldr r0, _020734C4 ; =0x020A0B00
_020734A8:
	bl FUN_0207478c
	ldr r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_02073358
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020734C4: .word unk_020A0B00
	arm_func_end FUN_02073384

	arm_func_start FUN_020734c8
FUN_020734c8: ; 0x020734C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r2, [sp, #0x20]
	mov r12, #0
	cmp r2, #0
	addeq sp, sp, #0x10
	moveq r0, r12
	ldmeqfd sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r1, #0x30
	addhs sp, sp, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, lr}
	addhs sp, sp, #0x10
	bxhs lr
	ldr r0, [r0, #0x82c]
	cmp r0, #0
	beq _0207353C
	add r0, r0, r1, lsl #5
	mov r1, r2
	mov r2, #0x20
	bl MI_CpuCopy8
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_0207353C:
	ldr r3, _02073598 ; =0x0209A250
	ldr lr, _0207359C ; =0x020916F4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r12
	beq _0207357C
	mov r1, r1, lsl #5
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x20
	mov r1, lr
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0207357C:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02073598: .word unk_0209A250
_0207359C: .word unk_020916F4
	arm_func_end FUN_020734c8

	arm_func_start FUN_020735a0
FUN_020735a0: ; 0x020735A0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr r2, [sp, #0x48]
	mov r5, r3
	cmp r2, #0
	beq _020735C4
	cmp r5, #0x13
	bge _020735D8
_020735C4:
	add sp, sp, #0x30
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020735D8:
	cmp r1, #0x30
	mov r4, #0
	addhs sp, sp, #0x30
	strb r4, [r2]
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, lr}
	addhs sp, sp, #0x10
	bxhs lr
	add r2, sp, #0x10
	bl FUN_020734c8
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r3, _0207366C ; =0x0209A250
	ldrh r2, [sp, #0x2e]
	ldr r0, [r3]
	ldr r1, _02073670 ; =0x02091710
	cmp r0, #0
	mov r2, r2, lsl #5
	beq _02073650
	stmia sp, {r2, r5}
	add r2, sp, #0x48
	str r4, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	mov r4, r0
_02073650:
	mov r0, #0
	cmp r4, #0
	movne r0, #1
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0207366C: .word unk_0209A250
_02073670: .word unk_02091710
	arm_func_end FUN_020735a0

	arm_func_start FUN_02073674
FUN_02073674: ; 0x02073674
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x830]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _020736E0 ; =0x0209A250
	ldr r1, _020736E4 ; =0x0209172C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020736CC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x830
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_020736CC:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020736E0: .word unk_0209A250
_020736E4: .word unk_0209172C
	arm_func_end FUN_02073674

	arm_func_start FUN_020736e8
FUN_020736e8: ; 0x020736E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x830]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02073718 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x830]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02073718: .word unk_0209A250
	arm_func_end FUN_020736e8

	arm_func_start FUN_0207371c
FUN_0207371c: ; 0x0207371C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10, #0x7ec]
	mov r7, #0
	mov r9, r1
	mov r11, r7
	cmp r2, #0
	ldr r5, _020737D4 ; =0x020A0DB0
	bne _02073754
	bl FUN_0204eba0
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
_02073754:
	ldr r6, [r10, #0x7ec]
	mov r8, #0
	add r4, r10, #0x800
	b _020737B0
_02073764:
	cmp r9, #0
	bne _0207377C
	ldrb r0, [r6, #0x2a]
	cmp r0, #1
	bne _020737A8
	b _02073794
_0207377C:
	cmp r9, #1
	bne _02073794
	ldrb r0, [r6, #0x2a]
	cmp r0, #0
	cmpne r0, #1
	beq _020737A8
_02073794:
	mov r0, r5
	mov r1, r8
	bl FUN_020508fc
	cmp r0, #0
	addne r7, r7, #1
_020737A8:
	add r8, r8, #1
	add r6, r6, #0x2c
_020737B0:
	ldrh r0, [r4, #0x6a]
	cmp r8, r0
	blt _02073764
	cmp r11, #0
	beq _020737CC
	mov r0, r10
	bl FUN_0204ec3c
_020737CC:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020737D4: .word unk_020A0DB0
	arm_func_end FUN_0207371c

	arm_func_start FUN_020737d8
FUN_020737d8: ; 0x020737D8
	ldr r2, _020737EC ; =0x00000FFF
	add r0, r0, #0x800
	and r1, r1, r2
	strh r1, [r0, #0x76]
	bx lr
_020737EC: .word 0x00000FFF
	arm_func_end FUN_020737d8

	arm_func_start FUN_020737f0
FUN_020737f0: ; 0x020737F0
	add r0, r0, #0x700
	strh r1, [r0, #0xc4]
	bx lr
	arm_func_end FUN_020737f0

	arm_func_start FUN_020737fc
FUN_020737fc: ; 0x020737FC
	add r0, r0, #0x700
	ldrh r0, [r0, #0xc4]
	bx lr
	arm_func_end FUN_020737fc

	arm_func_start FUN_02073808
FUN_02073808: ; 0x02073808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	movs r5, r1
	mov r4, r0
	mov r10, r2
	mov r9, r3
	mov r11, #0
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #7
	blo _020738A8
	cmp r5, #8
	bhi _020738A8
	cmp r9, #0
	mov r8, r11
	ble _020739D0
	ldr r0, _020739DC ; =0x0208C504
	sub r5, r5, #7
	ldr r7, [r0]
	ldr r6, [r0, #4]
	str r7, [sp]
	str r6, [sp, #4]
_02073864:
	ldr r1, [r10, r8, lsl #2]
	mov r0, r4
	mov r2, #0x25
	mov r3, r11
	bl FUN_0204f02c
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	add r1, sp, #8
	ldr r1, [r1, r5, lsl #2]
	cmp r1, r0
	addlt sp, sp, #0x10
	movlt r0, r11
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
	cmp r8, r9
	blt _02073864
	b _020739D0
_020738A8:
	cmp r5, #5
	blo _020738F0
	cmp r5, #6
	bhi _020738F0
	cmp r9, #0
	mov r1, #0
	ble _020739D0
	sub r2, r5, #4
_020738C8:
	ldr r0, [r10, r1, lsl #2]
	ldrb r0, [r0, #0x5a]
	cmp r2, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r1, #1
	cmp r1, r9
	blt _020738C8
	b _020739D0
_020738F0:
	cmp r5, #1
	blo _02073934
	cmp r5, #4
	bhi _02073934
	cmp r9, #0
	mov r1, #0
	ble _020739D0
_0207390C:
	ldr r0, [r10, r1, lsl #2]
	ldrb r0, [r0, #0x62]
	cmp r5, r0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r1, #1
	cmp r1, r9
	blt _0207390C
	b _020739D0
_02073934:
	cmp r5, #9
	blo _020739D0
	cmp r5, #0xa
	bhi _020739D0
	cmp r9, #0
	mov r6, #0
	ble _020739D0
	ldr r4, _020739E0 ; =0x0209BA20
_02073954:
	mov r7, r11
_02073958:
	ldr r0, [r10, r6, lsl #2]
	bl FUN_0206dcd4
	add r0, r0, r7, lsl #1
	ldrh r1, [r0, #0x38]
	cmp r1, #0
	beq _020739B8
	mov r0, r4
	bl FUN_0204a2c4
	cmp r0, #0
	beq _020739B8
	cmp r5, #9
	bne _020739A0
	ldrb r0, [r0]
	cmp r0, #7
	bne _020739B8
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020739A0:
	cmp r5, #0xa
	ldreqb r0, [r0]
	cmpeq r0, #8
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020739B8:
	add r7, r7, #1
	cmp r7, #6
	blt _02073958
	add r6, r6, #1
	cmp r6, r9
	blt _02073954
_020739D0:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020739DC: .word unk_0208C504
_020739E0: .word unk_0209BA20
	arm_func_end FUN_02073808

	arm_func_start FUN_020739e4
FUN_020739e4: ; 0x020739E4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x800
	strh r2, [r0, #0x78]
	bx lr
	arm_func_end FUN_020739e4

	arm_func_start FUN_020739f4
FUN_020739f4: ; 0x020739F4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x800
	ldrh r0, [r0, #0x78]
	bx lr
	arm_func_end FUN_020739f4

	arm_func_start FUN_02073a04
FUN_02073a04: ; 0x02073A04
	add r0, r0, #0x800
	strh r1, [r0, #0x7c]
	bx lr
	arm_func_end FUN_02073a04

	arm_func_start FUN_02073a10
FUN_02073a10: ; 0x02073A10
	add r0, r0, #0x800
	ldrh r0, [r0, #0x7c]
	bx lr
	arm_func_end FUN_02073a10

	arm_func_start FUN_02073a1c
FUN_02073a1c: ; 0x02073A1C
	stmfd sp!, {r4, lr}
	movs r4, r1
	beq _02073A38
	mov r0, r4
	bl STD_GetStringLength
	cmp r0, #2
	bge _02073A40
_02073A38:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02073A40:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r0, r0, r1, lsl #8
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02073CD0 ; =0x0000829F
	cmp r0, r1
	blo _02073A74
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073A98
_02073A74:
	ldr r1, _02073CD4 ; =0x00008340
	cmp r0, r1
	blo _02073A8C
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073A98
_02073A8C:
	ldr r2, _02073CD8 ; =0x00008394
	cmp r0, r2
	bne _02073AA0
_02073A98:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02073AA0:
	sub r1, r2, #0xeb
	cmp r0, r1
	blo _02073AB8
	sub r1, r2, #0xe1
	cmp r0, r1
	blo _02073AE8
_02073AB8:
	ldr r1, _02073CDC ; =0x0000834A
	cmp r0, r1
	blo _02073AD0
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073AE8
_02073AD0:
	add r1, r0, #0x6b
	add r1, r1, #0x7c00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _02073AF0
_02073AE8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02073AF0:
	ldr r1, _02073CE0 ; =0x000082B3
	cmp r0, r1
	blo _02073B08
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073B20
_02073B08:
	ldr r1, _02073CE4 ; =0x00008354
	cmp r0, r1
	blo _02073B28
	add r1, r1, #0xa
	cmp r0, r1
	bhs _02073B28
_02073B20:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_02073B28:
	ldr r1, _02073CE8 ; =0x000082BD
	cmp r0, r1
	blo _02073B40
	add r1, r1, #0xb
	cmp r0, r1
	blo _02073B58
_02073B40:
	ldr r1, _02073CEC ; =0x0000835E
	cmp r0, r1
	blo _02073B60
	add r1, r1, #0xb
	cmp r0, r1
	bhs _02073B60
_02073B58:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_02073B60:
	ldr r1, _02073CF0 ; =0x000082C8
	cmp r0, r1
	blo _02073B78
	add r1, r1, #5
	cmp r0, r1
	blo _02073B90
_02073B78:
	ldr r1, _02073CF4 ; =0x00008369
	cmp r0, r1
	blo _02073B98
	add r1, r1, #5
	cmp r0, r1
	bhs _02073B98
_02073B90:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_02073B98:
	ldr r1, _02073CF8 ; =0x000082CD
	cmp r0, r1
	blo _02073BB0
	add r1, r1, #0xf
	cmp r0, r1
	blo _02073BC8
_02073BB0:
	ldr r1, _02073CFC ; =0x0000836E
	cmp r0, r1
	blo _02073BD0
	add r1, r1, #0xf
	cmp r0, r1
	bhs _02073BD0
_02073BC8:
	mov r0, #5
	ldmfd sp!, {r4, pc}
_02073BD0:
	ldr r1, _02073D00 ; =0x000082DC
	cmp r0, r1
	blo _02073BE8
	add r1, r1, #5
	cmp r0, r1
	blo _02073C18
_02073BE8:
	ldr r1, _02073D04 ; =0x0000837D
	cmp r0, r1
	blo _02073C00
	add r1, r1, #2
	cmp r0, r1
	blo _02073C18
_02073C00:
	ldr r1, _02073D08 ; =0x00008380
	cmp r0, r1
	blo _02073C20
	add r1, r1, #3
	cmp r0, r1
	bhs _02073C20
_02073C18:
	mov r0, #6
	ldmfd sp!, {r4, pc}
_02073C20:
	ldr r1, _02073D0C ; =0x000082E1
	cmp r0, r1
	blo _02073C38
	add r1, r1, #6
	cmp r0, r1
	blo _02073C50
_02073C38:
	ldr r1, _02073D10 ; =0x00008383
	cmp r0, r1
	blo _02073C58
	add r1, r1, #6
	cmp r0, r1
	bhs _02073C58
_02073C50:
	mov r0, #7
	ldmfd sp!, {r4, pc}
_02073C58:
	ldr r1, _02073D14 ; =0x000082E7
	cmp r0, r1
	blo _02073C70
	add r1, r1, #5
	cmp r0, r1
	blo _02073C88
_02073C70:
	ldr r1, _02073D18 ; =0x00008389
	cmp r0, r1
	blo _02073C90
	add r1, r1, #5
	cmp r0, r1
	bhs _02073C90
_02073C88:
	mov r0, #8
	ldmfd sp!, {r4, pc}
_02073C90:
	ldr r1, _02073D1C ; =0x000082ED
	cmp r0, r1
	blo _02073CA8
	add r1, r1, #5
	cmp r0, r1
	blo _02073CC0
_02073CA8:
	ldr r1, _02073D20 ; =0x0000838E
	cmp r0, r1
	blo _02073CC8
	add r1, r1, #5
	cmp r0, r1
	bhi _02073CC8
_02073CC0:
	mov r0, #9
	ldmfd sp!, {r4, pc}
_02073CC8:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02073CD0: .word 0x0000829F
_02073CD4: .word 0x00008340
_02073CD8: .word 0x00008394
_02073CDC: .word 0x0000834A
_02073CE0: .word 0x000082B3
_02073CE4: .word 0x00008354
_02073CE8: .word 0x000082BD
_02073CEC: .word 0x0000835E
_02073CF0: .word 0x000082C8
_02073CF4: .word 0x00008369
_02073CF8: .word 0x000082CD
_02073CFC: .word 0x0000836E
_02073D00: .word 0x000082DC
_02073D04: .word 0x0000837D
_02073D08: .word 0x00008380
_02073D0C: .word 0x000082E1
_02073D10: .word 0x00008383
_02073D14: .word 0x000082E7
_02073D18: .word 0x00008389
_02073D1C: .word 0x000082ED
_02073D20: .word 0x0000838E
	arm_func_end FUN_02073a1c

	arm_func_start FUN_02073d24
FUN_02073d24: ; 0x02073D24
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, r1
	str r4, [r6, #0x10]
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x1e]
	strh r4, [r6, #0x20]
	strh r4, [r6, #0x22]
	strh r4, [r6, #0x24]
	strh r4, [r6, #0x26]
	strh r4, [r6, #0x28]
	strh r4, [r6, #0x2a]
	strb r4, [r6, #0x2c]
	strb r4, [r6, #0x2d]
	strb r4, [r6, #0x30]
	strh r4, [r6, #0x32]
	strb r4, [r6, #0x88]
	bl FUN_020404cc
	add r0, r6, #8
	bl FUN_020404cc
	sub r0, r4, #1
	strb r0, [r6, #0x2e]
	strb r5, [r6, #0x2f]
	strb r4, [r6, #0x8a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02073d24

	arm_func_start FUN_02073d8c
FUN_02073d8c: ; 0x02073D8C
	ldrh r1, [r0, #6]
	orr r1, r1, #0x20
	strh r1, [r0, #6]
	bx lr
	arm_func_end FUN_02073d8c

	arm_func_start FUN_02073d9c
FUN_02073d9c: ; 0x02073D9C
	ldrh r0, [r0, #6]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073d9c

	arm_func_start FUN_02073db0
FUN_02073db0: ; 0x02073DB0
	ldrh r0, [r0, #6]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073db0

	arm_func_start FUN_02073dc4
FUN_02073dc4: ; 0x02073DC4
	ldrh r0, [r0, #6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073dc4

	arm_func_start FUN_02073dd8
FUN_02073dd8: ; 0x02073DD8
	ldrh r0, [r0, #6]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073dd8

	arm_func_start FUN_02073dec
FUN_02073dec: ; 0x02073DEC
	ldrh r0, [r0, #6]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073dec

	arm_func_start FUN_02073e00
FUN_02073e00: ; 0x02073E00
	ldrh r0, [r0, #6]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e00

	arm_func_start FUN_02073e14
FUN_02073e14: ; 0x02073E14
	cmp r1, #0
	ldrh r0, [r0, #6]
	bne _02073E30
	tst r0, #0x400
	moveq r0, #1
	movne r0, #0
	bx lr
_02073E30:
	tst r0, #0x800
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e14

	arm_func_start FUN_02073e40
FUN_02073e40: ; 0x02073E40
	ldrh r0, [r0, #6]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e40

	arm_func_start FUN_02073e54
FUN_02073e54: ; 0x02073E54
	ldrh r0, [r0, #6]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073e54

	arm_func_start FUN_02073e68
FUN_02073e68: ; 0x02073E68
	ldrh r0, [r0, #6]
	tst r0, #0x2000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e68

	arm_func_start FUN_02073e7c
FUN_02073e7c: ; 0x02073E7C
	ldrh r0, [r0, #6]
	tst r0, #0x4000
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073e7c

	arm_func_start FUN_02073e90
FUN_02073e90: ; 0x02073E90
	ldrh r0, [r0, #6]
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073e90

	arm_func_start FUN_02073ea4
FUN_02073ea4: ; 0x02073EA4
	ldrb r0, [r0, r1, lsl #1]
	bx lr
	arm_func_end FUN_02073ea4

	arm_func_start FUN_02073eac
FUN_02073eac: ; 0x02073EAC
	add r0, r0, r1, lsl #1
	ldrsb r0, [r0, #1]
	bx lr
	arm_func_end FUN_02073eac

	arm_func_start FUN_02073eb8
FUN_02073eb8: ; 0x02073EB8
	ldrh r1, [r0, #6]
	orr r1, r1, #0xc
	strh r1, [r0, #6]
	bx lr
	arm_func_end FUN_02073eb8

	arm_func_start FUN_02073ec8
FUN_02073ec8: ; 0x02073EC8
	ldrh r2, [r0, #6]
	ldr r1, _02073EDC ; =0x0000FFF3
	and r1, r2, r1
	strh r1, [r0, #6]
	bx lr
_02073EDC: .word 0x0000FFF3
	arm_func_end FUN_02073ec8

	arm_func_start FUN_02073ee0
FUN_02073ee0: ; 0x02073EE0
	ldrh r1, [r0, #6]
	orr r1, r1, #0x10
	strh r1, [r0, #6]
	bx lr
	arm_func_end FUN_02073ee0

	arm_func_start FUN_02073ef0
FUN_02073ef0: ; 0x02073EF0
	ldrh r2, [r0, #6]
	ldr r1, _02073F04 ; =0x0000FFEF
	and r1, r2, r1
	strh r1, [r0, #6]
	bx lr
_02073F04: .word 0x0000FFEF
	arm_func_end FUN_02073ef0

	arm_func_start FUN_02073f08
FUN_02073f08: ; 0x02073F08
	ldrb r0, [r0, #0x88c]
	bx lr
	arm_func_end FUN_02073f08

	arm_func_start FUN_02073f10
FUN_02073f10: ; 0x02073F10
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	mov r0, r1
	mov r7, r2
	bl FUN_ov16_020efa80
	movs r5, r0
	cmpne r7, #0
	addeq sp, sp, #0x6c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_0206dcd4
	mov r6, r0
	add r4, sp, #0
	mov r1, r6
	mov r0, r4
	bl FUN_0206ed40
	mov r0, r5
	str r4, [r5, #0x68]
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x5f]
	cmp r0, #0
	bne _02073FB4
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, #1
	bl FUN_0206eabc
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x3e]
	bl FUN_0206eb24
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x40]
	bl FUN_0206eb8c
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x42]
	bl FUN_0206ebf4
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x44]
	bl FUN_0206ec5c
_02073FB4:
	mov r0, r5
	str r6, [r5, #0x68]
	bl FUN_0206dcd4
	add r1, sp, #0
	bl FUN_0206ed40
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_02073f10

	arm_func_start FUN_02073fd0
FUN_02073fd0: ; 0x02073FD0
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r1, r2
	mov r2, r3
	bl FUN_020747f8
	ldr r1, _02074014 ; =0x020A17A8
	ldr r1, [r1, r4, lsl #2]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02074018 ; =0x020A1640
	mov r1, #1
	mov r1, r1, lsl r4
	ldrb r2, [r0, #0x179]
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r0, #0x179]
	ldmfd sp!, {r4, pc}
_02074014: .word unk_020A17A8
_02074018: .word unk_020A1640
	arm_func_end FUN_02073fd0

	arm_func_start FUN_0207401c
FUN_0207401c: ; 0x0207401C
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r1, r2
	mov r2, r3
	bl FUN_020747f8
	ldr r1, _0207403C ; =0x020A17A8
	str r0, [r1, r4, lsl #2]
	ldmfd sp!, {r4, pc}
_0207403C: .word unk_020A17A8
	arm_func_end FUN_0207401c

	arm_func_start FUN_02074040
FUN_02074040: ; 0x02074040
	bx lr
	arm_func_end FUN_02074040

	arm_func_start FUN_02074044
FUN_02074044: ; 0x02074044
	ldr r0, _02074058 ; =0x020A1640
	ldrb r2, [r0, #0x179]
	orr r1, r2, r1
	strb r1, [r0, #0x179]
	bx lr
_02074058: .word unk_020A1640
	arm_func_end FUN_02074044

	arm_func_start FUN_0207405c
FUN_0207405c: ; 0x0207405C
	ldr r0, _02074074 ; =0x020A1640
	ldrb r0, [r0, #0x179]
	tst r0, r1
	movne r0, #1
	moveq r0, #0
	bx lr
_02074074: .word unk_020A1640
	arm_func_end FUN_0207405c

	arm_func_start FUN_02074078
FUN_02074078: ; 0x02074078
	ldr r0, _02074084 ; =0x020A1640
	strb r1, [r0, #0x178]
	bx lr
_02074084: .word unk_020A1640
	arm_func_end FUN_02074078

	arm_func_start FUN_02074088
FUN_02074088: ; 0x02074088
	ldr r0, _020740A0 ; =0x020A1640
	ldrb r0, [r0, #0x178]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020740A0: .word unk_020A1640
	arm_func_end FUN_02074088

	arm_func_start FUN_020740a4
FUN_020740a4: ; 0x020740A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r6, _02074200 ; =0x0209A11C
	mov r5, r0
	ldr r0, [r6]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_0206c2f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6]
	bl FUN_0206c884
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	ldr r0, [r6]
	beq _0207413C
	mov r1, r4
	bl FUN_0206c820
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6]
	bl FUN_0206c818
	sub r2, r4, r0
	ldr r1, _02074204 ; =0x2F684BDB
	mov r0, r5
	umull r1, r7, r2, r1
	sub r1, r2, r7
	add r7, r7, r1, lsr #1
	mov r1, r4
	mov r2, #0x6c
	mov r7, r7, lsr #6
	bl FUN_020747f8
	mov r2, r0
	ldr r0, [r6]
	mov r1, r7
	bl FUN_0206c86c
	b _02074194
_0207413C:
	bl FUN_0206c818
	mov r8, r0
	ldr r0, [r6]
	mov r9, #0
	bl FUN_0206c2f8
	cmp r0, #0
	ble _02074194
	mov r7, #0x6c
	mov r4, r7
_02074160:
	mla r1, r9, r4, r8
	mov r0, r5
	mov r2, r7
	bl FUN_020747f8
	mov r2, r0
	ldr r0, [r6]
	mov r1, r9
	bl FUN_0206c86c
	ldr r0, [r6]
	add r9, r9, #1
	bl FUN_0206c2f8
	cmp r9, r0
	blt _02074160
_02074194:
	ldr r4, _02074200 ; =0x0209A11C
	ldr r0, [r4]
	bl FUN_0206c2f8
	mov r8, r0, lsl #2
	ldr r0, [r4]
	bl FUN_0206c884
	mov r7, r0
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r1, r7, r0, lsl #2
	mov r6, #0x1a
	ldr r0, _02074208 ; =0x02091748
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r5
	mov r5, #0
	add r3, r8, #0x1a
	mov r1, r5
	mov r2, r7
	bl FUN_0207401c
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r0, r7, r0, lsl #2
	mov r1, r5
	mov r2, r6
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02074200: .word unk_0209A11C
_02074204: .word 0x2F684BDB
_02074208: .word unk_02091748
	arm_func_end FUN_020740a4

	arm_func_start FUN_0207420c
FUN_0207420c: ; 0x0207420C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _02074394 ; =0x0209A11C
	mov r10, r0
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206c2f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl FUN_0206c884
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	ldr r0, [r5]
	beq _020742B8
	mov r1, r6
	bl FUN_0206c820
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl FUN_0206c818
	sub r2, r6, r0
	ldr r1, _02074398 ; =0x2F684BDB
	mov r0, r10
	umull r1, r4, r2, r1
	sub r1, r2, r4
	add r4, r4, r1, lsr #1
	mov r1, r6
	mov r2, #0x6c
	mov r4, r4, lsr #6
	bl FUN_020747f8
	mov r6, r0
	ldr r0, [r5]
	mov r1, r4
	bl FUN_0206c878
	cmp r6, r0
	beq _02074328
	mov r0, r10
	mov r1, #1
	bl FUN_02074044
	b _02074328
_020742B8:
	bl FUN_0206c818
	mov r8, r0
	ldr r0, [r5]
	mov r9, #0
	bl FUN_0206c2f8
	cmp r0, #0
	ble _02074328
	mov r7, #0x6c
	mov r11, #1
	mov r4, r7
_020742E0:
	mla r1, r9, r4, r8
	mov r0, r10
	mov r2, r7
	bl FUN_020747f8
	mov r6, r0
	ldr r0, [r5]
	mov r1, r9
	bl FUN_0206c878
	cmp r6, r0
	beq _02074314
	mov r0, r10
	mov r1, r11
	bl FUN_02074044
_02074314:
	ldr r0, [r5]
	add r9, r9, #1
	bl FUN_0206c2f8
	cmp r9, r0
	blt _020742E0
_02074328:
	ldr r4, _02074394 ; =0x0209A11C
	ldr r0, [r4]
	bl FUN_0206c2f8
	mov r5, r0, lsl #2
	ldr r0, [r4]
	bl FUN_0206c884
	mov r7, r0
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r1, r7, r0, lsl #2
	mov r6, #0x1a
	ldr r0, _0207439C ; =0x02091764
	mov r2, r6
	bl MI_CpuCopy8
	add r3, r5, #0x1a
	mov r5, #0
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_02073fd0
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r0, r7, r0, lsl #2
	mov r1, r5
	mov r2, r6
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02074394: .word unk_0209A11C
_02074398: .word 0x2F684BDB
_0207439C: .word unk_02091764
	arm_func_end FUN_0207420c

	arm_func_start FUN_020743a0
FUN_020743a0: ; 0x020743A0
	stmfd sp!, {r3, lr}
	ldr r1, _020743C4 ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d4]
	mov r1, #1
	mov r3, #4
	str r12, [sp]
	bl FUN_0207401c
	ldmfd sp!, {r3, pc}
_020743C4: .word unk_020A0640
	arm_func_end FUN_020743a0

	arm_func_start FUN_020743c8
FUN_020743c8: ; 0x020743C8
	stmfd sp!, {r3, lr}
	ldr r1, _020743EC ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d4]
	mov r1, #1
	mov r3, #4
	str r12, [sp]
	bl FUN_02073fd0
	ldmfd sp!, {r3, pc}
_020743EC: .word unk_020A0640
	arm_func_end FUN_020743c8

	arm_func_start FUN_020743f0
FUN_020743f0: ; 0x020743F0
	stmfd sp!, {r3, lr}
	ldr r1, _02074414 ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d8]
	mov r1, #2
	mov r3, #4
	str r12, [sp]
	bl FUN_0207401c
	ldmfd sp!, {r3, pc}
_02074414: .word unk_020A0640
	arm_func_end FUN_020743f0

	arm_func_start FUN_02074418
FUN_02074418: ; 0x02074418
	stmfd sp!, {r3, lr}
	ldr r1, _0207443C ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d8]
	mov r1, #2
	mov r3, #4
	str r12, [sp]
	bl FUN_02073fd0
	ldmfd sp!, {r3, pc}
_0207443C: .word unk_020A0640
	arm_func_end FUN_02074418

	arm_func_start FUN_02074440
FUN_02074440: ; 0x02074440
	ldr r2, _02074454 ; =0x020A0700
	ldr r12, _02074458 ; =FUN_0207401c
	mov r1, #3
	mov r3, #0x400
	bx r12
_02074454: .word unk_020A0700
_02074458: .word FUN_0207401c
	arm_func_end FUN_02074440

	arm_func_start FUN_0207445c
FUN_0207445c: ; 0x0207445C
	ldr r2, _02074470 ; =0x020A0700
	ldr r12, _02074474 ; =FUN_02073fd0
	mov r1, #3
	mov r3, #0x400
	bx r12
_02074470: .word unk_020A0700
_02074474: .word FUN_02073fd0
	arm_func_end FUN_0207445c

	arm_func_start FUN_02074478
FUN_02074478: ; 0x02074478
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_02074078
	mov r0, r5
	mov r1, r4
	bl FUN_020740a4
	mov r0, r5
	bl FUN_020743a0
	mov r0, r5
	bl FUN_020743f0
	mov r0, r5
	bl FUN_02074440
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02074478

	arm_func_start FUN_020744b4
FUN_020744b4: ; 0x020744B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_02074078
	mov r0, r5
	mov r1, r4
	bl FUN_0207420c
	mov r0, r5
	bl FUN_020743c8
	mov r0, r5
	bl FUN_02074418
	mov r0, r5
	bl FUN_0207445c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020744b4

	arm_func_start FUN_020744f0
FUN_020744f0: ; 0x020744F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02074530 ; =0x0209BA20
	mov r4, r1
	bl FUN_02074418
	cmp r4, #0
	movlt r4, #0
	blt _0207451C
	ldr r0, _02074534 ; =0x000F423F
	cmp r4, r0
	movgt r4, r0
_0207451C:
	ldr r0, _02074530 ; =0x0209BA20
	str r4, [r5, #0x18]
	bl FUN_020743f0
	ldr r0, [r5, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_02074530: .word unk_0209BA20
_02074534: .word 0x000F423F
	arm_func_end FUN_020744f0

	arm_func_start FUN_02074538
FUN_02074538: ; 0x02074538
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02074578 ; =0x0209BA20
	mov r4, r1
	bl FUN_020743c8
	ldr r0, _0207457C ; =0x000F423F
	cmp r4, r0
	movgt r4, r0
	bgt _02074564
	cmp r4, #0
	movlt r4, #0
_02074564:
	ldr r0, _02074578 ; =0x0209BA20
	str r4, [r5, #0x14]
	bl FUN_020743a0
	ldr r0, [r5, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02074578: .word unk_0209BA20
_0207457C: .word 0x000F423F
	arm_func_end FUN_02074538

	arm_func_start FUN_02074580
FUN_02074580: ; 0x02074580
	strb r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_02074580

	arm_func_start FUN_02074588
FUN_02074588: ; 0x02074588
	strb r1, [r0, #0x45]
	strb r2, [r0, #0x46]
	bx lr
	arm_func_end FUN_02074588

	arm_func_start FUN_02074594
FUN_02074594: ; 0x02074594
	stmfd sp!, {r3, lr}
	mov r3, #0
	mov lr, r3, lsl r1
	rsb r3, r1, #0x20
	mov r12, #1
	orr lr, lr, r12, lsr r3
	sub r3, r1, #0x20
	cmp r2, #0
	orr lr, lr, r12, lsl r3
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #0x34]
	ldr r3, [r0, #0x38]
	orr r2, r2, r12, lsl r1
	orr r3, r3, lr
	str r2, [r0, #0x34]
	str r3, [r0, #0x38]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02074594

	arm_func_start FUN_020745d8
FUN_020745d8: ; 0x020745D8
	stmfd sp!, {r3, lr}
	mov r3, #0
	mov lr, r3, lsl r1
	rsb r3, r1, #0x20
	mov r12, #1
	orr lr, lr, r12, lsr r3
	sub r3, r1, #0x20
	cmp r2, #0
	orr lr, lr, r12, lsl r3
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #0x3c]
	ldr r3, [r0, #0x40]
	orr r2, r2, r12, lsl r1
	orr r3, r3, lr
	str r2, [r0, #0x3c]
	str r3, [r0, #0x40]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020745d8

	arm_func_start FUN_0207461c
FUN_0207461c: ; 0x0207461C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x100
	bxhs lr
	cmp r2, #0
	and r12, r1, #7
	beq _02074658
	add r3, r0, #0x4c
	mov r0, #1
	mov r0, r0, lsl r12
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_02074658:
	mov r2, #1
	add r3, r0, #0x4c
	mov r0, r2, lsl r12
	eor r0, r0, #0xff
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	and r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
	arm_func_end FUN_0207461c

	arm_func_start FUN_0207467c
FUN_0207467c: ; 0x0207467C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x100
	bxhs lr
	cmp r2, #0
	and r12, r1, #7
	beq _020746B8
	add r3, r0, #0x6c
	mov r0, #1
	mov r0, r0, lsl r12
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_020746B8:
	mov r2, #1
	add r3, r0, #0x6c
	mov r0, r2, lsl r12
	eor r0, r0, #0xff
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	and r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
	arm_func_end FUN_0207467c

	arm_func_start FUN_020746dc
FUN_020746dc: ; 0x020746DC
	ldr r2, [r0, #0x90]
	ldr r1, _020746F4 ; =0x0000270F
	cmp r2, r1
	addlt r1, r2, #1
	strlt r1, [r0, #0x90]
	bx lr
_020746F4: .word 0x0000270F
	arm_func_end FUN_020746dc

	arm_func_start FUN_020746f8
FUN_020746f8: ; 0x020746F8
	ldr r1, [r0, #0x94]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0x94]
	bx lr
	arm_func_end FUN_020746f8

	arm_func_start FUN_0207470c
FUN_0207470c: ; 0x0207470C
	ldr r1, [r0, #0x98]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0x98]
	bx lr
	arm_func_end FUN_0207470c

	arm_func_start FUN_02074720
FUN_02074720: ; 0x02074720
	ldr r1, [r0, #0x9c]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0x9c]
	bx lr
	arm_func_end FUN_02074720

	arm_func_start FUN_02074734
FUN_02074734: ; 0x02074734
	ldr r1, [r0, #0xa0]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0xa0]
	bx lr
	arm_func_end FUN_02074734

	arm_func_start FUN_02074748
FUN_02074748: ; 0x02074748
	strb r1, [r0, #0xa5]
	bx lr
	arm_func_end FUN_02074748

	arm_func_start FUN_02074750
FUN_02074750: ; 0x02074750
	strb r1, [r0, #0xa6]
	bx lr
	arm_func_end FUN_02074750

	arm_func_start FUN_02074758
FUN_02074758: ; 0x02074758
	add r0, r0, #0x100
	strh r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_02074758

	arm_func_start FUN_02074764
FUN_02074764: ; 0x02074764
	ldr r2, _02074778 ; =0x0CDFE5FF
	cmp r1, r2
	movhi r1, r2
	str r1, [r0, #0x1c]
	bx lr
_02074778: .word 0x0CDFE5FF
	arm_func_end FUN_02074764

	arm_func_start FUN_0207477c
FUN_0207477c: ; 0x0207477C
	strb r1, [r0, #0x48]
	bx lr
	arm_func_end FUN_0207477c

	arm_func_start FUN_02074784
FUN_02074784: ; 0x02074784
	strb r1, [r0, #0x47]
	bx lr
	arm_func_end FUN_02074784

	arm_func_start FUN_0207478c
FUN_0207478c: ; 0x0207478C
	strb r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_0207478c

	arm_func_start FUN_02074794
FUN_02074794: ; 0x02074794
	add r0, r0, r1, lsl #2
	str r2, [r0, #0xac]
	bx lr
	arm_func_end FUN_02074794

	arm_func_start FUN_020747a0
FUN_020747a0: ; 0x020747A0
	strh r1, [r0, #0x30]
	bx lr
	arm_func_end FUN_020747a0

	arm_func_start FUN_020747a8
FUN_020747a8: ; 0x020747A8
	strh r1, [r0, #0x2e]
	bx lr
	arm_func_end FUN_020747a8

	arm_func_start FUN_020747b0
FUN_020747b0: ; 0x020747B0
	strh r1, [r0, #0x32]
	bx lr
	arm_func_end FUN_020747b0

	arm_func_start FUN_020747b8
FUN_020747b8: ; 0x020747B8
	strb r1, [r0, #0x2d]
	bx lr
	arm_func_end FUN_020747b8

	arm_func_start FUN_020747c0
FUN_020747c0: ; 0x020747C0
	strb r1, [r0, #0x4a]
	bx lr
	arm_func_end FUN_020747c0

	arm_func_start FUN_020747c8
FUN_020747c8: ; 0x020747C8
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_020747c8

	arm_func_start FUN_020747d0
FUN_020747d0: ; 0x020747D0
	str r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_020747d0

	arm_func_start FUN_020747d8
FUN_020747d8: ; 0x020747D8
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_020747d8

	arm_func_start FUN_020747e0
FUN_020747e0: ; 0x020747E0
	ldr r12, _020747E8 ; =STD_CopyString
	bx r12
_020747E8: .word STD_CopyString
	arm_func_end FUN_020747e0

	arm_func_start FUN_020747ec
FUN_020747ec: ; 0x020747EC
	add r0, r0, r1
	strb r2, [r0, #0x8c]
	bx lr
	arm_func_end FUN_020747ec

	arm_func_start FUN_020747f8
FUN_020747f8: ; 0x020747F8
	stmfd sp!, {r4, lr}
	subs r12, r2, #1
	mvn r4, #0
	bmi _02074844
	cmp r12, #0
	blt _02074844
	ldr r0, _02074850 ; =0xEDB88320
	mov r2, #7
_02074818:
	ldrb r3, [r1]
	mov lr, r2
	eor r4, r4, r3
_02074824:
	tst r4, #1
	eorne r4, r0, r4, lsr #1
	moveq r4, r4, lsr #1
	subs lr, lr, #1
	bpl _02074824
	subs r12, r12, #1
	add r1, r1, #1
	bpl _02074818
_02074844:
	mvn r0, #0
	eor r0, r4, r0
	ldmfd sp!, {r4, pc}
_02074850: .word 0xEDB88320
	arm_func_end FUN_020747f8

	arm_func_start FUN_02074854
FUN_02074854: ; 0x02074854
	stmfd sp!, {r4, lr}
	subs lr, r2, #1
	ldr r12, _020748C0 ; =0x0000FFFF
	bmi _020748AC
	cmp lr, #0
	blt _020748AC
	ldr r2, _020748C4 ; =0x0000FDAA
	mov r3, #7
_02074874:
	ldrb r0, [r1]
	mov r4, r3
	mov r0, r0, lsl #0x10
	eor r12, r12, r0, lsr #16
_02074884:
	tst r12, #1
	eorne r0, r2, r12, asr #1
	moveq r0, r12, asr #1
	mov r0, r0, lsl #0x10
	mov r12, r0, lsr #0x10
	subs r4, r4, #1
	bpl _02074884
	subs lr, lr, #1
	add r1, r1, #1
	bpl _02074874
_020748AC:
	ldr r0, _020748C0 ; =0x0000FFFF
	eor r0, r12, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_020748C0: .word 0x0000FFFF
_020748C4: .word 0x0000FDAA
	arm_func_end FUN_02074854

	arm_func_start FUN_020748c8
FUN_020748c8: ; 0x020748C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _02074A24 ; =0x020B9DD4
	mov r6, #0
	ldr r3, _02074A28 ; =0x020B9DD8
	ldr r0, [r0]
	mov r5, r2
	add r4, r3, r0, lsl #7
	mov r0, r1
	mov r1, r4
	mov r7, r6
	bl MI_CpuCopy8
	cmp r5, #0
	mov r1, r6
	bls _02074918
_02074900:
	ldrb r0, [r4, r1]
	eor r0, r0, #0xad
	strb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, r5
	blo _02074900
_02074918:
	cmp r5, #0
	mov r1, #0
	bls _02074954
_02074924:
	ldrb r2, [r4, r1]
	mov r3, r7
_0207492C:
	mov r0, r2, lsl #7
	orr r0, r0, r2, asr #1
	add r3, r3, #1
	cmp r3, #2
	and r2, r0, #0xff
	blt _0207492C
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, r5
	blo _02074924
_02074954:
	subs r3, r5, #2
	mov r7, #0
	beq _02074980
_02074960:
	add r2, r4, r7
	ldrb r1, [r4, r7]
	ldrb r0, [r2, #2]
	strb r0, [r4, r7]
	add r7, r7, #3
	strb r1, [r2, #2]
	cmp r7, r3
	blo _02074960
_02074980:
	subs r3, r5, #4
	mov r7, #0
	beq _020749AC
_0207498C:
	add r2, r4, r7
	ldrb r1, [r4, r7]
	ldrb r0, [r2, #4]
	strb r0, [r4, r7]
	add r7, r7, #5
	strb r1, [r2, #4]
	cmp r7, r3
	blo _0207498C
_020749AC:
	subs r3, r5, #6
	mov r7, #0
	beq _020749D8
_020749B8:
	add r2, r4, r7
	ldrb r1, [r4, r7]
	ldrb r0, [r2, #6]
	strb r0, [r4, r7]
	add r7, r7, #7
	strb r1, [r2, #6]
	cmp r7, r3
	blo _020749B8
_020749D8:
	subs r3, r5, #1
	mov r5, #0
	beq _02074A04
_020749E4:
	add r2, r4, r5
	ldrb r1, [r4, r5]
	ldrb r0, [r2, #1]
	strb r0, [r4, r5]
	add r5, r5, #2
	strb r1, [r2, #1]
	cmp r5, r3
	blo _020749E4
_02074A04:
	ldr r0, _02074A24 ; =0x020B9DD4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	cmp r1, #4
	streq r6, [r0]
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02074A24: .word unk_020B9DD4
_02074A28: .word unk_020B9DD8
	arm_func_end FUN_020748c8

	arm_func_start FUN_02074a2c
FUN_02074a2c: ; 0x02074A2C
	cmp r1, #0x1e0
	bxgt lr
	cmp r1, #0
	bxlt lr
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #29
	ldr r3, _02074A68 ; =0x020A1612
	add r2, r2, r0, ror #29
	mov r0, #1
	mov r0, r0, lsl r2
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_02074A68: .word unk_020A1612
	arm_func_end FUN_02074a2c

	.rodata
	.global unk_0208C504
unk_0208C504:
	.byte 0x23, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.global unk_0208C50C
unk_0208C50C:
	.asciz "/data_iz/logic/shootchain.dat"
	.balign 4, 0

	.section .sinit, 4
__sinit__:
	.word FUN_02086768
	.word FUN_02086aec
	.word FUN_02086b40
	.word FUN_02086b94
	.word FUN_02086be8
	.word FUN_02086c3c
	.word FUN_02086c8c
	.word FUN_02086ce0
	.word FUN_02086d34
	.word FUN_02086d88
	.word FUN_02086ddc
	.word FUN_02086e30
	.word FUN_02086e84
	.word FUN_02086ed8
	.word FUN_02086f2c
	.word FUN_02086f80
	.word FUN_02086fd4
	.word FUN_02087028
	.word FUN_0208707c
	.word FUN_020870d0
	.word FUN_02087120
	.word FUN_02087174
	.word FUN_020871c8
	.word FUN_02087218
	.word FUN_02087268
	.word FUN_020872bc
	.word FUN_02087310
	.word FUN_02087360
	.word FUN_020873b4
	.word FUN_02087408
	.word FUN_0208745c
	.word FUN_020874b0
	.word FUN_02087500
	.word FUN_02087554
	.word FUN_020875a8
	.word FUN_020875fc
	.word FUN_02087650
	.word FUN_020876a4
	.word FUN_020876f8
	.word FUN_0208774c
	.word FUN_020877a0

	.data
	.global unk_02091290
unk_02091290:
	.word FUN_0206b9f4
	.word FUN_0206ba08
	.word FUN_02042e4c
	.word FUN_020430b0
	.word FUN_0206ba24
	.word FUN_0206bdac
	.word FUN_0206bc20
	.word FUN_0206bf74
	.global unk_020912B0
unk_020912B0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020912D0
unk_020912D0:
	.word FUN_0206c110
	.word FUN_0206c130
	.global unk_020912D8
unk_020912D8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020912F8
unk_020912F8:
	.word FUN_0206f150
	.word FUN_0206f170
	.global unk_02091300
unk_02091300:
	.asciz "GAME_TIME_STEPS"
	.balign 4, 0
	.global unk_02091310
unk_02091310:
	.asciz "CPU_USE_SPECIAL_PERCENT"
	.balign 4, 0
	.global unk_02091328
unk_02091328:
	.asciz "WAIT_NOTICE_FRAME"
	.balign 4, 0
	.global unk_0209133C
unk_0209133C:
	.asciz "OFFSIDE_EFFECTIVE"
	.balign 4, 0
	.global unk_02091350
unk_02091350:
	.asciz "/data_iz/logic/livetalk.dat"
	.balign 4, 0
	.global unk_0209136C
unk_0209136C:
	.asciz "/data_iz/logic/fieldinf.dat"
	.balign 4, 0
	.global unk_02091388
unk_02091388:
	.asciz "/data_iz/logic/fieldinf.dat"
	.balign 4, 0
	.global unk_020913A4
unk_020913A4:
	.asciz "/data_iz/logic/gamerule.dat"
	.balign 4, 0
	.global unk_020913C0
unk_020913C0:
	.asciz "/data_iz/logic/gamerule.dat"
	.balign 4, 0
	.global unk_020913DC
unk_020913DC:
	.asciz "/data_iz/logic/fmt.pkh"
	.balign 4, 0
	.global unk_020913F4
unk_020913F4:
	.asciz "/data_iz/logic/fmt.pkb"
	.balign 4, 0
	.global unk_0209140C
unk_0209140C:
	.asciz "/data_iz/logic/team.pkh"
	.balign 4, 0
	.global unk_02091424
unk_02091424:
	.asciz "/data_iz/logic/team.pkb"
	.balign 4, 0
	.global unk_0209143C
unk_0209143C:
	.asciz "/data_iz/logic/games.dat"
	.balign 4, 0
	.global unk_02091458
unk_02091458:
	.asciz "/data_iz/logic/team.pkh"
	.balign 4, 0
	.global unk_02091470
unk_02091470:
	.asciz "/data_iz/logic/team.pkb"
	.balign 4, 0
	.global unk_02091488
unk_02091488: ; shift-jis string
	.byte 0x82, 0xB7, 0x82, 0xAF, 0x82, 0xC1, 0x82, 0xC6, 0x00, 0x00, 0x00, 0x00
	.global unk_02091494
unk_02091494: ; shift-jis string
	.byte 0x81, 0x40, 0x00, 0x00
	.global unk_02091498
unk_02091498: ; shift-jis string
	.byte 0x81, 0x40, 0x82, 0xC6, 0x92, 0x87, 0x8A, 0xD4
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_020914A4
unk_020914A4: ; shift-jis string
	.byte 0x82, 0xE6, 0x82, 0xB9, 0x82, 0xA0, 0x82, 0xC2, 0x82, 0xDF, 0x00, 0x00
	.global unk_020914B0
unk_020914B0: ; shift-jis string
	.byte 0x83, 0x74, 0x83, 0x40, 0x83, 0x43, 0x83, 0x5E, 0x81, 0x5B, 0x00, 0x00
	.global unk_020914BC
unk_020914BC:
	.asciz "/data_iz/logic/action.dat"
	.balign 4, 0
	.global unk_020914D8
unk_020914D8:
	.asciz "logic/item.dat"
	.balign 4, 0
	.global unk_020914E8
unk_020914E8:
	.asciz "/data_iz/logic/unitno.dat"
	.balign 4, 0
	.global unk_02091504
unk_02091504:
	.asciz "/data_iz/logic/unitno_npc.dat"
	.balign 4, 0
	.global unk_02091524
unk_02091524:
	.asciz "/data_iz/logic/command.dat"
	.balign 4, 0
	.global unk_02091540
unk_02091540:
	.asciz "/data_iz/logic/lvup_command.dat"
	.balign 4, 0
	.global unk_02091560
unk_02091560:
	.asciz "/data_iz/logic/mapidx.dat"
	.balign 4, 0
	.global unk_0209157C
unk_0209157C:
	.asciz "/data_iz/logic/cmd_cond.dat"
	.balign 4, 0
	.global unk_02091598
unk_02091598:
	.asciz "/data_iz/logic/cmd_cond.dat"
	.balign 4, 0
	.global unk_020915B4
unk_020915B4:
	.asciz "/data_iz/logic/tacticscmd.dat"
	.balign 4, 0
	.global unk_020915D4
unk_020915D4:
	.asciz "/data_iz/logic/unitcalc.dat"
	.balign 4, 0
	.global unk_020915F0
unk_020915F0:
	.asciz "/data_iz/logic/calcbase.dat"
	.balign 4, 0
	.global unk_0209160C
unk_0209160C:
	.asciz "/data_iz/logic/status_up.dat"
	.balign 4, 0
	.global unk_0209162C
unk_0209162C:
	.asciz "/data_iz/logic/lvup_exp.dat"
	.balign 4, 0
	.global unk_02091648
unk_02091648:
	.asciz "/data_iz/logic/lvup_exp.dat"
	.balign 4, 0
	.global unk_02091664
unk_02091664:
	.asciz "/data_iz/logic/teamtpmax.dat"
	.balign 4, 0
	.global unk_02091684
unk_02091684:
	.asciz "/data_iz/logic/games.dat"
	.balign 4, 0
	.global unk_020916A0
unk_020916A0:
	.asciz "/data_iz/logic/unitbase.dat"
	.balign 4, 0
	.global unk_020916BC
unk_020916BC:
	.asciz "/data_iz/logic/unitstat.dat"
	.balign 4, 0
	.global unk_020916D8
unk_020916D8:
	.asciz "/data_iz/logic/rpgtitle.dat"
	.balign 4, 0
	.global unk_020916F4
unk_020916F4:
	.asciz "/data_iz/logic/rpgtitle.dat"
	.balign 4, 0
	.global unk_02091710
unk_02091710:
	.asciz "/data_iz/logic/rpgtitle.STR"
	.balign 4, 0
	.global unk_0209172C
unk_0209172C:
	.asciz "/data_iz/logic/uschool.dat"
	.balign 4, 0
	.global unk_02091748
unk_02091748:
	.asciz "ina3 hash key burial code!"
	.balign 4, 0
	.global unk_02091764
unk_02091764:
	.asciz "ina3 hash key burial code!"
	.balign 4, 0

	.bss
	.global unk_020B9D4C
unk_020B9D4C:
	.space 0x04
	.global unk_020B9D50
unk_020B9D50:
	.space 0x04
	.global unk_020B9D54
unk_020B9D54:
	.space 0x40
	.global unk_020B9D94
unk_020B9D94:
	.space 0x40
	.global unk_020B9DD4
unk_020B9DD4:
	.space 0x04
	.global unk_020B9DD8
unk_020B9DD8:
	.space 0x200

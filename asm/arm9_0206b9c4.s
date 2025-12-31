
	.include "/macros/function.inc"
	.include "/include/arm9_0206b9c4.inc"

	.text
	arm_func_start _ZN13FontManager_2C1Ev
_ZN13FontManager_2C1Ev: ; 0x0206B9C4
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
_0206B9F0: .word unk_0209128C+0x8
	arm_func_end _ZN13FontManager_2C1Ev

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
	bl _ZdlPv
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
	bl _ZdlPv
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
	ldr r8, _0206C268 ; =gAllocator
	mov r1, r6
	mov r0, r8
	bl _ZN9Allocator8allocateEm
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
	bl _ZN9Allocator8allocateEm
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
	bl _ZN9Allocator8allocateEm
	str r0, [r5, #0xc]
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r7
	mov r2, r10
	bl MI_CpuFill8
	mov r0, r8
	add r1, r9, #0x1a
	bl _ZN9Allocator8allocateEm
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
	ldr r0, _0206C26C ; =gLogicThink
	mov r1, r7
	strh r4, [r5, #0x18]
	str r2, [r5, #0x10]
	bl FUN_020740a4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206C268: .word gAllocator
_0206C26C: .word gLogicThink
	arm_func_end FUN_0206c158

	arm_func_start FUN_0206c270
FUN_0206c270: ; 0x0206C270
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	mov r4, #0
	cmp r1, #0
	beq _0206C294
	ldr r0, _0206C2F4 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r4, [r5, #4]
_0206C294:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0206C2AC
	ldr r0, _0206C2F4 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r4, [r5, #8]
_0206C2AC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0206C2C4
	ldr r0, _0206C2F4 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r4, [r5, #0xc]
_0206C2C4:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0206C2DC
	ldr r0, _0206C2F4 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r4, [r5, #0x14]
_0206C2DC:
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	str r4, [r5, #0x10]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x24]
	ldmfd sp!, {r3, r4, r5, pc}
_0206C2F4: .word gAllocator
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
	ldr r10, _0206C568 ; =gLogicThink
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
	ldr r10, _0206C568 ; =gLogicThink
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
	ldr r10, _0206C568 ; =gLogicThink
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
_0206C568: .word gLogicThink
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
	ldr r5, _0206CFCC ; =gLogicThink
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
_0206CFCC: .word gLogicThink
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
	ldr r5, _0206D0E4 ; =gLogicThink
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
_0206D0E4: .word gLogicThink
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
	ldr r0, _0206D30C ; 0x02099EF0
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
	ldr r0, _0206D310 ; =gLogicThink
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
_0206D310: .word gLogicThink
	arm_func_end FUN_0206d1e4

	arm_func_start FUN_0206d314
FUN_0206d314: ; 0x0206D314
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0206D384 ; =gLogicThink
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
_0206D384: .word gLogicThink
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
_0206D5D0: .word gWirelessUtil
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
	ldr r4, _0206D8A4 ; =gLogicThink
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
_0206D8A4: .word gLogicThink
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
	ldr r4, _0206D964 ; =gLogicThink
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
_0206D964: .word gLogicThink
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
	ldr r4, _0206DD50 ; =gLogicThink
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
_0206DD50: .word gLogicThink
_0206DD54: .word unk_0209A11C
	arm_func_end FUN_0206dcf0

	arm_func_start FUN_0206dd58
FUN_0206dd58: ; 0x0206DD58
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DDB8 ; =gLogicThink
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
_0206DDB8: .word gLogicThink
_0206DDBC: .word unk_0209A11C
	arm_func_end FUN_0206dd58

	arm_func_start FUN_0206ddc0
FUN_0206ddc0: ; 0x0206DDC0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DE20 ; =gLogicThink
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
_0206DE20: .word gLogicThink
_0206DE24: .word unk_0209A11C
	arm_func_end FUN_0206ddc0

	arm_func_start FUN_0206de28
FUN_0206de28: ; 0x0206DE28
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DE88 ; =gLogicThink
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
_0206DE88: .word gLogicThink
_0206DE8C: .word unk_0209A11C
	arm_func_end FUN_0206de28

	arm_func_start FUN_0206de90
FUN_0206de90: ; 0x0206DE90
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DEF0 ; =gLogicThink
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
_0206DEF0: .word gLogicThink
_0206DEF4: .word unk_0209A11C
	arm_func_end FUN_0206de90

	arm_func_start FUN_0206def8
FUN_0206def8: ; 0x0206DEF8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206DF64 ; =gLogicThink
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
_0206DF64: .word gLogicThink
_0206DF68: .word unk_0209A11C
	arm_func_end FUN_0206def8

	arm_func_start FUN_0206df6c
FUN_0206df6c: ; 0x0206DF6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206DFCC ; =gLogicThink
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
_0206DFCC: .word gLogicThink
_0206DFD0: .word unk_0209A11C
	arm_func_end FUN_0206df6c

	arm_func_start FUN_0206dfd4
FUN_0206dfd4: ; 0x0206DFD4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E034 ; =gLogicThink
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
_0206E034: .word gLogicThink
_0206E038: .word unk_0209A11C
	arm_func_end FUN_0206dfd4

	arm_func_start FUN_0206e03c
FUN_0206e03c: ; 0x0206E03C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0206E0B4 ; =gLogicThink
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
_0206E0B4: .word gLogicThink
_0206E0B8: .word unk_0209A11C
	arm_func_end FUN_0206e03c

	arm_func_start FUN_0206e0bc
FUN_0206e0bc: ; 0x0206E0BC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E11C ; =gLogicThink
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
_0206E11C: .word gLogicThink
_0206E120: .word unk_0209A11C
	arm_func_end FUN_0206e0bc

	arm_func_start FUN_0206e124
FUN_0206e124: ; 0x0206E124
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E184 ; =gLogicThink
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
_0206E184: .word gLogicThink
_0206E188: .word unk_0209A11C
	arm_func_end FUN_0206e124

	arm_func_start FUN_0206e18c
FUN_0206e18c: ; 0x0206E18C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0206E204 ; =gLogicThink
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
_0206E204: .word gLogicThink
_0206E208: .word unk_0209A11C
	arm_func_end FUN_0206e18c

	arm_func_start FUN_0206e20c
FUN_0206e20c: ; 0x0206E20C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0206E28C ; =gLogicThink
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
_0206E28C: .word gLogicThink
_0206E290: .word unk_0209A11C
	arm_func_end FUN_0206e20c

	arm_func_start FUN_0206e294
FUN_0206e294: ; 0x0206E294
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _0206E34C ; =gLogicThink
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
	ldr r0, _0206E34C ; =gLogicThink
	mov r1, r5
	bl FUN_020740a4
	ldmfd sp!, {r4, r5, r6, pc}
_0206E34C: .word gLogicThink
_0206E350: .word unk_0209A11C
	arm_func_end FUN_0206e294

	arm_func_start FUN_0206e354
FUN_0206e354: ; 0x0206E354
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206E3C0 ; =gLogicThink
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
_0206E3C0: .word gLogicThink
_0206E3C4: .word unk_0209A11C
	arm_func_end FUN_0206e354

	arm_func_start FUN_0206e3c8
FUN_0206e3c8: ; 0x0206E3C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206E434 ; =gLogicThink
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
_0206E434: .word gLogicThink
_0206E438: .word unk_0209A11C
	arm_func_end FUN_0206e3c8

	arm_func_start FUN_0206e43c
FUN_0206e43c: ; 0x0206E43C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E49C ; =gLogicThink
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
_0206E49C: .word gLogicThink
_0206E4A0: .word unk_0209A11C
	arm_func_end FUN_0206e43c

	arm_func_start FUN_0206e4a4
FUN_0206e4a4: ; 0x0206E4A4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E504 ; =gLogicThink
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
_0206E504: .word gLogicThink
_0206E508: .word unk_0209A11C
	arm_func_end FUN_0206e4a4

	arm_func_start FUN_0206e50c
FUN_0206e50c: ; 0x0206E50C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E56C ; =gLogicThink
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
_0206E56C: .word gLogicThink
_0206E570: .word unk_0209A11C
	arm_func_end FUN_0206e50c

	arm_func_start FUN_0206e574
FUN_0206e574: ; 0x0206E574
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E5D4 ; =gLogicThink
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
_0206E5D4: .word gLogicThink
_0206E5D8: .word unk_0209A11C
	arm_func_end FUN_0206e574

	arm_func_start FUN_0206e5dc
FUN_0206e5dc: ; 0x0206E5DC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E63C ; =gLogicThink
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
_0206E63C: .word gLogicThink
_0206E640: .word unk_0209A11C
	arm_func_end FUN_0206e5dc

	arm_func_start FUN_0206e644
FUN_0206e644: ; 0x0206E644
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E6A4 ; =gLogicThink
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
_0206E6A4: .word gLogicThink
_0206E6A8: .word unk_0209A11C
	arm_func_end FUN_0206e644

	arm_func_start FUN_0206e6ac
FUN_0206e6ac: ; 0x0206E6AC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E70C ; =gLogicThink
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
_0206E70C: .word gLogicThink
_0206E710: .word unk_0209A11C
	arm_func_end FUN_0206e6ac

	arm_func_start FUN_0206e714
FUN_0206e714: ; 0x0206E714
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E774 ; =gLogicThink
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
_0206E774: .word gLogicThink
_0206E778: .word unk_0209A11C
	arm_func_end FUN_0206e714

	arm_func_start FUN_0206e77c
FUN_0206e77c: ; 0x0206E77C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E7DC ; =gLogicThink
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
_0206E7DC: .word gLogicThink
_0206E7E0: .word unk_0209A11C
	arm_func_end FUN_0206e77c

	arm_func_start FUN_0206e7e4
FUN_0206e7e4: ; 0x0206E7E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E844 ; =gLogicThink
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
_0206E844: .word gLogicThink
_0206E848: .word unk_0209A11C
	arm_func_end FUN_0206e7e4

	arm_func_start FUN_0206e84c
FUN_0206e84c: ; 0x0206E84C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E8AC ; =gLogicThink
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
_0206E8AC: .word gLogicThink
_0206E8B0: .word unk_0209A11C
	arm_func_end FUN_0206e84c

	arm_func_start FUN_0206e8b4
FUN_0206e8b4: ; 0x0206E8B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E914 ; =gLogicThink
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
_0206E914: .word gLogicThink
_0206E918: .word unk_0209A11C
	arm_func_end FUN_0206e8b4

	arm_func_start FUN_0206e91c
FUN_0206e91c: ; 0x0206E91C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E97C ; =gLogicThink
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
_0206E97C: .word gLogicThink
_0206E980: .word unk_0209A11C
	arm_func_end FUN_0206e91c

	arm_func_start FUN_0206e984
FUN_0206e984: ; 0x0206E984
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206E9E4 ; =gLogicThink
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
_0206E9E4: .word gLogicThink
_0206E9E8: .word unk_0209A11C
	arm_func_end FUN_0206e984

	arm_func_start FUN_0206e9ec
FUN_0206e9ec: ; 0x0206E9EC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EA4C ; =gLogicThink
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
_0206EA4C: .word gLogicThink
_0206EA50: .word unk_0209A11C
	arm_func_end FUN_0206e9ec

	arm_func_start FUN_0206ea54
FUN_0206ea54: ; 0x0206EA54
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EAB4 ; =gLogicThink
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
_0206EAB4: .word gLogicThink
_0206EAB8: .word unk_0209A11C
	arm_func_end FUN_0206ea54

	arm_func_start FUN_0206eabc
FUN_0206eabc: ; 0x0206EABC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EB1C ; =gLogicThink
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
_0206EB1C: .word gLogicThink
_0206EB20: .word unk_0209A11C
	arm_func_end FUN_0206eabc

	arm_func_start FUN_0206eb24
FUN_0206eb24: ; 0x0206EB24
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EB84 ; =gLogicThink
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
_0206EB84: .word gLogicThink
_0206EB88: .word unk_0209A11C
	arm_func_end FUN_0206eb24

	arm_func_start FUN_0206eb8c
FUN_0206eb8c: ; 0x0206EB8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EBEC ; =gLogicThink
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
_0206EBEC: .word gLogicThink
_0206EBF0: .word unk_0209A11C
	arm_func_end FUN_0206eb8c

	arm_func_start FUN_0206ebf4
FUN_0206ebf4: ; 0x0206EBF4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EC54 ; =gLogicThink
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
_0206EC54: .word gLogicThink
_0206EC58: .word unk_0209A11C
	arm_func_end FUN_0206ebf4

	arm_func_start FUN_0206ec5c
FUN_0206ec5c: ; 0x0206EC5C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206ECBC ; =gLogicThink
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
_0206ECBC: .word gLogicThink
_0206ECC0: .word unk_0209A11C
	arm_func_end FUN_0206ec5c

	arm_func_start FUN_0206ecc4
FUN_0206ecc4: ; 0x0206ECC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0206ED38 ; =gLogicThink
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
_0206ED38: .word gLogicThink
_0206ED3C: .word unk_0209A11C
	arm_func_end FUN_0206ecc4

	arm_func_start FUN_0206ed40
FUN_0206ed40: ; 0x0206ED40
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0206EDB8 ; =gLogicThink
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
_0206EDB8: .word gLogicThink
_0206EDBC: .word unk_0209A11C
	arm_func_end FUN_0206ed40

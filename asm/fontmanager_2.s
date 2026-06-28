
	.include "/macros/function.inc"
	.include "/include/fontmanager_2.inc"

	.text
	arm_func_start _ZN13FontManager_2C1Ev
_ZN13FontManager_2C1Ev: ; 0x0206B9C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN12CFontManagerC2Ev
	ldr r3, _0206B9F0 ; =0x02091290
	ldr r2, [r4, #0x18]
	mov r0, r4
	mov r1, #0
	str r3, [r4]
	bl _ZN12CFontManager10setSpacingEii
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206B9F0: .word _ZTV14CFontManager_2+0x8
	arm_func_end _ZN13FontManager_2C1Ev

	arm_func_start FUN_0206b9f4
FUN_0206b9f4: ; 0x0206B9F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN12CFontManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0206b9f4

	arm_func_start FUN_0206ba08
FUN_0206ba08: ; 0x0206BA08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN12CFontManagerD2Ev
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
	bl _ZN12CFontManager13writeCharByteEPvh
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
	bl _ZN12CFontManager13writeCharByteEPvh
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
	bl _ZN12CFontManager13writeCharByteEPvh
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
	bl _ZN12CFontManager13writeCharByteEPvh
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

	.data
	.global _ZTV14CFontManager_2
_ZTV14CFontManager_2:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_0206b9f4
	.word FUN_0206ba08
	.word _ZN12CFontManager16drawTextTile4bppEiiPciNS_9AlignmentEPviiPNS_11GlyphBoundsEi
	.word _ZN12CFontManager16drawTextTile8bppEiiPciNS_9AlignmentEPviiPNS_11GlyphBoundsEi
	.word FUN_0206ba24
	.word FUN_0206bdac
	.word FUN_0206bc20
	.word FUN_0206bf74

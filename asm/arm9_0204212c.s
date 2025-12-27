
	.include "/macros/function.inc"
	.include "/include/arm9_0204212c.inc"

	.text
	arm_func_start FUN_0204212c ; https://decomp.me/scratch/Fbl5B
FUN_0204212c: ; 0x0204212C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r3, #1
	ldr r12, _02042184 ; =0x0208FFEC
	mov r0, r4
	add r1, r5, #4
	mov r2, #8
	str r12, [r5]
	str r4, [r5, #0xc]
	str r3, [r5, #0x14]
	str r3, [r5, #0x18]
	strb r4, [r5, #0x1e]
	strb r4, [r5, #0x1f]
	strb r4, [r5, #0x20]
	bl MIi_CpuClearFast
	mov r1, r4
	add r0, r5, #0x1c
	mov r2, #2
	bl MI_CpuFill8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02042184: .word unk_0208FFEC+0x8
	arm_func_end FUN_0204212c

	arm_func_start _ZN11FontManagerC1Ev
_ZN11FontManagerC1Ev: ; 0x02042188
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r3, #1
	ldr r12, _020421E0 ; =0x0208FFEC
	mov r0, r4
	add r1, r5, #4
	mov r2, #8
	str r12, [r5]
	str r4, [r5, #0xc]
	str r3, [r5, #0x14]
	str r3, [r5, #0x18]
	strb r4, [r5, #0x1e]
	strb r4, [r5, #0x1f]
	strb r4, [r5, #0x20]
	bl MIi_CpuClearFast
	mov r1, r4
	add r0, r5, #0x1c
	mov r2, #2
	bl MI_CpuFill8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020421E0: .word unk_0208FFEC+0x8
	arm_func_end _ZN11FontManagerC1Ev

	arm_func_start FUN_020421e4 ; https://decomp.me/scratch/Fbl5B
FUN_020421e4: ; 0x020421E4
	stmfd sp!, {r4, lr}
	ldr r1, _02042200 ; =0x0208FFEC
	mov r4, r0
	str r1, [r4]
	bl FUN_0204224c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02042200: .word unk_0208FFEC+0x8
	arm_func_end FUN_020421e4

	arm_func_start FUN_02042204
FUN_02042204: ; 0x02042204
	stmfd sp!, {r4, lr}
	ldr r1, _02042228 ; =0x0208FFEC
	mov r4, r0
	str r1, [r4]
	bl FUN_0204224c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02042228: .word unk_0208FFEC+0x8
	arm_func_end FUN_02042204

	arm_func_start FUN_0204222c
FUN_0204222c: ; 0x0204222C
	stmfd sp!, {r4, lr}
	ldr r1, _02042248 ; =0x0208FFEC
	mov r4, r0
	str r1, [r4]
	bl FUN_0204224c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02042248: .word unk_0208FFEC+0x8
	arm_func_end FUN_0204222c

	arm_func_start FUN_0204224c
FUN_0204224c: ; 0x0204224C
	mov r3, r0
	mov r0, #0
	ldr r12, _02042270 ; =MIi_CpuClearFast
	add r1, r3, #4
	mov r2, #8
	str r0, [r3, #0xc]
	strb r0, [r3, #0x1e]
	strb r0, [r3, #0x1f]
	bx r12
_02042270: .word MIi_CpuClearFast
	arm_func_end FUN_0204224c

	arm_func_start FUN_02042274
FUN_02042274: ; 0x02042274
	tst r1, #1
	bic r1, r1, #1
	ldrh r0, [r1]
	andne r0, r0, #0xff
	orrne r0, r0, r2, lsl #8
	andeq r0, r0, #0xff00
	orreq r0, r0, r2
	strh r0, [r1]
	bx lr
	arm_func_end FUN_02042274

	arm_func_start FUN_02042298
FUN_02042298: ; 0x02042298
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #4]
	ldr r4, [sp, #0x3c]
	ldr r5, [r0, #8]
	ldrsb r0, [r4]
	ldrsb r6, [r4, #2]
	ldr r4, [sp, #0x40]
	mov r9, r1
	str r4, [sp, #0x40]
	ldr r4, [sp, #0x44]
	ldr r1, [sp, #0x40]
	str r4, [sp, #0x44]
	ldrb r4, [r5]
	sub r11, r6, r0
	cmp r1, #0
	sub r1, r4, r11
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x44]
	str r2, [sp]
	add r0, r1, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r3, [sp, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	mov r5, #0x80
	str r0, [sp, #0x10]
	ble _02042414
	ldr r0, [sp, #0x44]
	tst r0, #1
	movne r0, #1
	strne r0, [sp, #8]
	ldreq r0, [sp, #0x10]
	streq r0, [sp, #8]
	ldrb r0, [sp, #0x38]
	and r7, r0, #0xf
_02042330:
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x10]
	cmp r11, #0
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r8, [sp, #8]
	mla r0, r1, r2, r0
	add r1, r0, r0, lsr #31
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r1, asr #1
	ble _020423CC
_02042364:
	ldrb r0, [r9]
	tst r0, r5
	beq _020423A0
	cmp r8, #0
	mov r0, r10
	mov r1, r6
	ldrb r2, [r6]
	beq _02042390
	and r2, r2, #0xf
	orr r2, r2, r7, lsl #4
	b _02042398
_02042390:
	and r2, r2, #0xf0
	orr r2, r2, r7
_02042398:
	and r2, r2, #0xff
	bl FUN_02042274
_020423A0:
	movs r5, r5, asr #1
	moveq r5, #0x80
	addeq r9, r9, #1
	cmp r8, #0
	addne r6, r6, #1
	cmp r8, #0
	moveq r8, #1
	add r4, r4, #1
	movne r8, #0
	cmp r4, r11
	blt _02042364
_020423CC:
	ldr r0, [sp, #0xc]
	mov r2, #0
	cmp r0, #0
	ble _020423FC
	mov r1, #0x80
_020423E0:
	ldr r0, [sp, #0xc]
	movs r5, r5, asr #1
	add r2, r2, #1
	moveq r5, r1
	addeq r9, r9, #1
	cmp r2, r0
	blt _020423E0
_020423FC:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02042330
_02042414:
	add r0, r11, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02042298

	arm_func_start FUN_02042420
FUN_02042420: ; 0x02042420
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, r0
	ldr r0, [r11, #4]
	ldr r4, [sp, #0x34]
	ldr r5, [r0, #8]
	ldrsb r0, [r4]
	ldrsb r6, [r4, #2]
	ldr r4, [sp, #0x38]
	mov r10, r1
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	str r4, [sp, #0x3c]
	cmp r1, #0
	ldrb r4, [r5]
	sub r6, r6, r0
	ldr r1, [sp, #0x3c]
	str r2, [sp]
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r3, [sp, #4]
	str r0, [sp, #0x40]
	mov r0, #0
	sub r7, r4, r6
	ldr r9, [sp, #0x30]
	mov r5, #0x80
	str r0, [sp, #8]
	ble _02042538
_02042498:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #8]
	cmp r6, #0
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r4, #0
	mla r2, r1, r2, r0
	ldr r0, [sp]
	add r8, r0, r2
	ble _020424FC
_020424C4:
	ldrb r0, [r10]
	tst r0, r5
	beq _020424E0
	mov r0, r11
	mov r1, r8
	mov r2, r9
	bl FUN_02042274
_020424E0:
	movs r5, r5, asr #1
	add r4, r4, #1
	moveq r5, #0x80
	addeq r10, r10, #1
	add r8, r8, #1
	cmp r4, r6
	blt _020424C4
_020424FC:
	cmp r7, #0
	mov r0, #0
	ble _02042520
_02042508:
	movs r5, r5, asr #1
	add r0, r0, #1
	moveq r5, #0x80
	addeq r10, r10, #1
	cmp r0, r7
	blt _02042508
_02042520:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x38]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02042498
_02042538:
	add r0, r6, #1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02042420

	arm_func_start FUN_02042544 ; https://decomp.me/scratch/Dygf7
FUN_02042544: ; 0x02042544
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r0]
	cmp r0, #0x20
	blo _02042564
	cmp r0, #0x7e
	bls _02042574
_02042564:
	cmp r0, #0xa1
	blo _0204257C
	cmp r0, #0xdf
	bhi _0204257C
_02042574:
	mov r0, #1
	bx lr
_0204257C:
	mov r0, #2
	bx lr
	arm_func_end FUN_02042544

	arm_func_start FUN_02042584
FUN_02042584: ; 0x02042584
	ldrb r1, [r0]
	cmp r1, #0
	ldreqb r0, [r0, #1]
	cmpeq r0, #0
	moveq r0, #0
	movne r0, #2
	bx lr
	arm_func_end FUN_02042584

	arm_func_start FUN_020425a0
FUN_020425a0: ; 0x020425A0
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0x20]
	cmp r0, #0
	mov r0, r1
	beq _020425BC
	bl FUN_02042584
	ldmfd sp!, {r3, pc}
_020425BC:
	bl FUN_02042544
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020425a0

	arm_func_start FUN_020425c4
FUN_020425c4: ; 0x020425C4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_020425a0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r0, #1
	ldreqb r0, [r4]
	ldrneb r1, [r4]
	ldrneb r0, [r4, #1]
	orrne r0, r0, r1, lsl #8
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020425c4

	arm_func_start FUN_020425fc
FUN_020425fc: ; 0x020425FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	movs r9, r1
	ldr r1, [sp, #0x58]
	mov r10, r0
	str r1, [sp, #0x58]
	ldr r1, [sp, #0x68]
	str r2, [sp, #0x14]
	str r1, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	mov r8, r3
	str r1, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	ldr r7, [sp, #0x5c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x74]
	ldr r6, [sp, #0x60]
	str r1, [sp, #0x74]
	mov r1, #0
	ldr r11, [sp, #0x64]
	str r1, [sp, #0x1c]
	beq _02042660
	movs r1, r2
	cmpne r8, #0
	bgt _0204266C
_02042660:
	add sp, sp, #0x30
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204266C:
	ldr r2, [r10, #4]
	ldr r4, [sp, #0x74]
	ldr r3, [r2, #8]
	mov r1, r7
	ldrb r5, [r3, #1]
	mov r2, r8
	mov r3, r9
	str r4, [sp]
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _020426D8
	mov r0, r10
	mov r1, r9
	bl FUN_020429fc
	str r7, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r10, #0x18]
	ldr r3, [sp, #0x58]
	add r1, r5, r1
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r0, r10
	mov r2, r8
	bl FUN_02043380
_020426D8:
	cmp r6, #0
	addlt sp, sp, #0x30
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r9]
	cmp r1, #0
	beq _0204293C
	and r0, r11, #0xff
	str r0, [sp, #0x2c]
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x28]
_02042708:
	cmp r1, #0xa
	bne _02042788
	ldr r0, [sp, #0x74]
	mov r1, r7
	str r0, [sp]
	mov r0, r10
	mov r2, r8
	add r3, r9, #1
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _02042778
	mov r0, r10
	add r1, r9, #1
	bl FUN_020429fc
	str r7, [sp]
	add r1, r6, r5
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r10, #0x18]
	ldr r3, [sp, #0x58]
	add r1, r5, r1
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r0, r10
	mov r2, r8
	bl FUN_02043380
_02042778:
	ldr r0, [r10, #0x18]
	add r0, r5, r0
	add r6, r6, r0
	b _02042930
_02042788:
	mov r0, r10
	mov r1, r9
	bl FUN_020425c4
	mov r11, r0
	add r0, r10, #4
	mov r1, r11
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _02042948 ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r10, #4]
	ldreqh r1, [r0, #2]
	add r0, r10, #4
	bl NNS_G2dFontGetCharWidthsFromIndex
	mov r1, r11
	str r0, [sp, #0x18]
	ldrsb r11, [r0, #2]
	add r0, r10, #4
	bl NNS_G2dFontFindGlyphIndex
	ldr r1, _02042948 ; =0x0000FFFF
	ldr r2, [r10, #4]
	cmp r0, r1
	ldreq r0, [r10, #4]
	ldr r2, [r2, #8]
	add r1, r4, r11
	ldreqh r0, [r0, #2]
	cmp r1, r8
	add r1, r2, #8
	str r1, [sp, #0x20]
	ldrh r1, [r2, #2]
	mul r1, r0, r1
	str r1, [sp, #0x24]
	ble _02042880
	ldr r0, [sp, #0x74]
	mov r1, r7
	str r0, [sp]
	mov r0, r10
	mov r2, r8
	mov r3, r9
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _02042874
	mov r0, r10
	mov r1, r9
	bl FUN_020429fc
	str r7, [sp]
	add r1, r6, r5
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r10, #0x18]
	ldr r3, [sp, #0x58]
	add r1, r5, r1
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r0, r10
	mov r2, r8
	bl FUN_02043380
_02042874:
	ldr r0, [r10, #0x18]
	add r0, r5, r0
	add r6, r6, r0
_02042880:
	ldr r0, [sp, #0x58]
	add r1, r6, r5
	cmp r1, r0
	bgt _0204293C
	ldr r0, [sp, #0x68]
	cmp r0, #0
	ldrne r1, [sp, #0x1c]
	ldrne r0, [sp, #0x6c]
	cmpne r1, r0
	bge _020428D4
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x28]
	strh r4, [r0]
	strh r6, [r0, #2]
	strh r11, [r0, #4]
	strh r1, [r0, #6]
	add r0, r0, #8
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_020428D4:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x14]
	add r1, r1, r0
	ldr r0, [sp, #0x2c]
	mov r3, r8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	stmib sp, {r0, r5}
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r10
	ldr r12, [r0]
	ldr r12, [r12, #0x14]
	blx r12
	ldr r1, [r10, #0x14]
	mov r0, r10
	add r1, r11, r1
	add r4, r4, r1
	mov r1, r9
	bl FUN_020425a0
	cmp r0, #2
	addeq r9, r9, #1
_02042930:
	ldrsb r1, [r9, #1]!
	cmp r1, #0
	bne _02042708
_0204293C:
	mov r0, #1
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02042948: .word 0x0000FFFF
	arm_func_end FUN_020425fc

	arm_func_start FUN_0204294c ; https://decomp.me/scratch/hLz9A
FUN_0204294c: ; 0x0204294C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	ldrsb r1, [r7]
	mov r6, #0
	mov r8, r0
	mov r5, r6
	cmp r1, #0
	beq _020429F0
	ldr r9, _020429F8 ; =0x0000FFFF
	mov r4, r6
_02042974:
	cmp r1, #0xa
	moveq r5, r4
	beq _020429E4
	mov r0, r8
	mov r1, r7
	bl FUN_020425c4
	mov r1, r0
	add r0, r8, #4
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	cmp r1, r9
	ldreq r0, [r8, #4]
	ldreqh r1, [r0, #2]
	add r0, r8, #4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrsb r1, [r0, #2]
	cmp r1, #0
	cmpne r5, #0
	ldrne r0, [r8, #0x14]
	addne r5, r5, r0
	add r5, r5, r1
	cmp r5, r6
	mov r0, r8
	mov r1, r7
	movgt r6, r5
	bl FUN_020425a0
	cmp r0, #2
	addeq r7, r7, #1
_020429E4:
	ldrsb r1, [r7, #1]!
	cmp r1, #0
	bne _02042974
_020429F0:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020429F8: .word 0x0000FFFF
	arm_func_end FUN_0204294c

	arm_func_start FUN_020429fc ; https://decomp.me/scratch/2a1CV
FUN_020429fc: ; 0x020429FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrsb r1, [r4]
	mov r8, #0
	mov r5, r0
	mov r7, r8
	cmp r1, #0
	beq _02042A98
	ldr r6, _02042AA0 ; =0x0000FFFF
_02042A20:
	cmp r1, #0xa
	beq _02042A98
	mov r0, r5
	mov r1, r4
	bl FUN_020425c4
	mov r1, r0
	add r0, r5, #4
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	cmp r1, r6
	ldreq r0, [r5, #4]
	ldreqh r1, [r0, #2]
	add r0, r5, #4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrsb r1, [r0, #2]
	cmp r1, #0
	cmpne r7, #0
	ldrne r0, [r5, #0x14]
	addne r7, r7, r0
	add r7, r7, r1
	cmp r7, r8
	mov r0, r5
	mov r1, r4
	movgt r8, r7
	bl FUN_020425a0
	cmp r0, #2
	addeq r4, r4, #1
	ldrsb r1, [r4, #1]!
	cmp r1, #0
	bne _02042A20
_02042A98:
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02042AA0: .word 0x0000FFFF
	arm_func_end FUN_020429fc

	arm_func_start FUN_02042aa4 ; https://decomp.me/scratch/GGEr4
FUN_02042aa4: ; 0x02042AA4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r2
	bmi _02042ABC
	cmp r5, r4
	ble _02042AC4
_02042ABC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02042AC4:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r3
	sub r4, r4, r5
	bl FUN_020429fc
	cmp r0, r4
	movgt r0, r5
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	cmp r1, #1
	addeq r1, r5, r4, asr #1
	subeq r0, r1, r0, asr #1
	addne r1, r5, r4
	subne r1, r1, #1
	subne r0, r1, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02042aa4

	arm_func_start FUN_02042b0c
FUN_02042b0c: ; 0x02042B0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020425c4
	mov r1, r0
	add r0, r4, #4
	bl NNS_G2dFontFindGlyphIndex
	ldr r2, _02042B48 ; =0x0000FFFF
	mov r1, r0
	cmp r1, r2
	ldreq r0, [r4, #4]
	ldreqh r1, [r0, #2]
	add r0, r4, #4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrsb r0, [r0, #2]
	ldmfd sp!, {r4, pc}
_02042B48: .word 0x0000FFFF
	arm_func_end FUN_02042b0c

	arm_func_start FUN_02042b4c
FUN_02042b4c: ; 0x02042B4C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #4]
	ldr r4, [sp, #0x3c]
	ldr r5, [r0, #8]
	ldrsb r0, [r4]
	ldrsb r6, [r4, #2]
	ldr r4, [sp, #0x40]
	mov r9, r1
	str r4, [sp, #0x40]
	ldr r4, [sp, #0x44]
	ldr r1, [sp, #0x40]
	str r4, [sp, #0x44]
	ldrb r4, [r5]
	sub r11, r6, r0
	cmp r1, #0
	sub r1, r4, r11
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x44]
	mov r8, r2
	add r0, r1, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	mov r5, #0x80
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x10]
	ble _02042CE4
	ldr r0, [sp, #0x44]
	mov r1, r3, asr #3
	tst r0, #1
	mov r0, r1, lsl #5
	str r0, [sp, #4]
	movne r0, #1
	strne r0, [sp]
	ldreq r0, [sp, #0x10]
	streq r0, [sp]
	ldrb r0, [sp, #0x38]
	and r6, r0, #0xf
_02042BEC:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x48]
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
	ble _02042C9C
_02042C20:
	ldr r0, [sp, #0x44]
	add r2, r4, r0
	ldr r0, [sp, #8]
	mov r1, r2, asr #3
	add r1, r0, r1, lsl #5
	and r0, r2, #7
	add r2, r1, r0, asr #1
	ldrb r0, [r9]
	tst r0, r5
	beq _02042C78
	add r1, r8, r2
	cmp r7, #0
	mov r0, r10
	ldrb r2, [r8, r2]
	beq _02042C68
	and r2, r2, #0xf
	orr r2, r2, r6, lsl #4
	b _02042C70
_02042C68:
	and r2, r2, #0xf0
	orr r2, r2, r6
_02042C70:
	and r2, r2, #0xff
	bl FUN_02042274
_02042C78:
	movs r5, r5, asr #1
	moveq r5, #0x80
	addeq r9, r9, #1
	cmp r7, #0
	moveq r7, #1
	add r4, r4, #1
	movne r7, #0
	cmp r4, r11
	blt _02042C20
_02042C9C:
	ldr r0, [sp, #0xc]
	mov r2, #0
	cmp r0, #0
	ble _02042CCC
	mov r1, #0x80
_02042CB0:
	ldr r0, [sp, #0xc]
	movs r5, r5, asr #1
	add r2, r2, #1
	moveq r5, r1
	addeq r9, r9, #1
	cmp r2, r0
	blt _02042CB0
_02042CCC:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02042BEC
_02042CE4:
	ldr r0, [r10, #0x14]
	add r0, r11, r0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02042b4c

	arm_func_start FUN_02042cf4
FUN_02042cf4: ; 0x02042CF4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, r0
	ldr r0, [r11, #4]
	ldr r4, [sp, #0x34]
	ldr r5, [r0, #8]
	ldrsb r0, [r4]
	ldrsb r6, [r4, #2]
	ldr r4, [sp, #0x38]
	ldr r9, [sp, #0x3c]
	str r4, [sp, #0x38]
	ldrb r4, [r5]
	sub r6, r6, r0
	add r9, r9, r0
	ldr r0, [sp, #0x30]
	mov r10, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x40]
	mov r0, #0
	str r2, [sp]
	cmp r1, #0
	sub r7, r4, r6
	mov r5, #0x80
	str r0, [sp, #8]
	ble _02042E3C
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r0, r0, asr #3
	mov r0, r0, lsl #6
	str r0, [sp, #4]
_02042D74:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x40]
	cmp r6, #0
	add r3, r1, r0
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r1, r0, asr #3
	ldr r0, [sp, #4]
	mov r4, #0
	mul r2, r1, r0
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #29
	add r0, r1, r0, ror #29
	add r8, r2, r0, lsl #3
	ble _02042DFC
_02042DB0:
	add r2, r4, r9
	mov r0, r2, asr #3
	add r1, r8, r0, lsl #6
	and r0, r2, #7
	add r1, r1, r0
	ldrb r0, [r10]
	tst r0, r5
	beq _02042DE4
	ldr r0, [sp]
	ldr r2, [sp, #0x30]
	add r1, r0, r1
	mov r0, r11
	bl FUN_02042274
_02042DE4:
	movs r5, r5, asr #1
	add r4, r4, #1
	moveq r5, #0x80
	addeq r10, r10, #1
	cmp r4, r6
	blt _02042DB0
_02042DFC:
	cmp r7, #0
	mov r1, #0
	ble _02042E24
	mov r0, #0x80
_02042E0C:
	movs r5, r5, asr #1
	add r1, r1, #1
	moveq r5, r0
	addeq r10, r10, #1
	cmp r1, r7
	blt _02042E0C
_02042E24:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x38]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02042D74
_02042E3C:
	ldr r0, [r11, #0x14]
	add r0, r6, r0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02042cf4

	arm_func_start FUN_02042e4c
FUN_02042e4c: ; 0x02042E4C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r9, r2
	ldr r2, [sp, #0x54]
	ldr r5, [sp, #0x50]
	str r2, [sp, #0x54]
	ldr r2, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	str r2, [sp, #0x58]
	ldr r2, [sp, #0x60]
	movs r8, r3
	str r2, [sp, #0x60]
	ldr r2, [sp, #0x64]
	mov r10, r0
	str r2, [sp, #0x64]
	ldr r2, [sp, #0x68]
	mov r11, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x68]
	addeq sp, sp, #0x2c
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r10, #4]
	mov r2, r7
	ldr r4, [r4, #8]
	ldrb r6, [r4, #1]
	ldr r4, [sp, #0x54]
	str r4, [sp]
	bl FUN_02042aa4
	cmp r9, #0
	mov r4, r0
	addlt sp, sp, #0x2c
	movlt r0, r11
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r8]
	cmp r1, #0
	beq _0204308C
	and r0, r5, #0xff
	str r0, [sp, #0x28]
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x24]
_02042EF4:
	cmp r1, #0xa
	bne _02042F2C
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, r10
	mov r2, r7
	add r3, r8, #1
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [r10, #0x18]
	add r0, r6, r0
	add r9, r9, r0
	b _02043080
_02042F2C:
	mov r0, r10
	mov r1, r8
	bl FUN_020425c4
	mov r5, r0
	add r0, r10, #4
	mov r1, r5
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _020430AC ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r10, #4]
	ldreqh r1, [r0, #2]
	add r0, r10, #4
	bl NNS_G2dFontGetCharWidthsFromIndex
	mov r1, r5
	str r0, [sp, #0x18]
	ldrsb r5, [r0, #2]
	add r0, r10, #4
	bl NNS_G2dFontFindGlyphIndex
	ldr r1, _020430AC ; =0x0000FFFF
	ldr r2, [r10, #4]
	cmp r0, r1
	ldreq r0, [r10, #4]
	ldr r2, [r2, #8]
	add r1, r4, r5
	ldreqh r0, [r0, #2]
	cmp r1, r7
	add r1, r2, #8
	str r1, [sp, #0x1c]
	ldrh r1, [r2, #2]
	mul r1, r0, r1
	str r1, [sp, #0x20]
	ble _02042FDC
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, r10
	mov r2, r7
	mov r3, r8
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [r10, #0x18]
	add r0, r6, r0
	add r9, r9, r0
_02042FDC:
	ldr r0, [sp, #0x60]
	add r1, r9, r6
	cmp r1, r0
	bgt _0204308C
	ldr r0, [sp, #0x64]
	cmp r0, #0
	ldrne r0, [sp, #0x68]
	cmpne r11, r0
	bge _02043024
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x24]
	strh r4, [r0]
	strh r9, [r0, #2]
	strh r5, [r0, #4]
	strh r1, [r0, #6]
	add r0, r0, #8
	str r0, [sp, #0x64]
	add r11, r11, #1
_02043024:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x58]
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	mov r3, r7
	str r0, [sp]
	ldr r0, [sp, #0x18]
	stmib sp, {r0, r6}
	str r4, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r0, r10
	ldr r12, [r0]
	ldr r12, [r12, #0x10]
	blx r12
	ldr r1, [r10, #0x14]
	mov r0, r10
	add r1, r5, r1
	add r4, r4, r1
	mov r1, r8
	bl FUN_020425a0
	cmp r0, #2
	addeq r8, r8, #1
_02043080:
	ldrsb r1, [r8, #1]!
	cmp r1, #0
	bne _02042EF4
_0204308C:
	ldr r0, [sp, #0x60]
	mul r1, r7, r0
	ldr r0, [sp, #0x58]
	mov r1, r1, asr #1
	bl DC_FlushRange
	mov r0, #1
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020430AC: .word 0x0000FFFF
	arm_func_end FUN_02042e4c

	arm_func_start FUN_020430b0
FUN_020430b0: ; 0x020430B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r9, r2
	ldr r2, [sp, #0x54]
	ldr r5, [sp, #0x50]
	str r2, [sp, #0x54]
	ldr r2, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	str r2, [sp, #0x58]
	ldr r2, [sp, #0x60]
	movs r8, r3
	str r2, [sp, #0x60]
	ldr r2, [sp, #0x64]
	mov r10, r0
	str r2, [sp, #0x64]
	ldr r2, [sp, #0x68]
	mov r11, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x68]
	addeq sp, sp, #0x2c
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r10, #4]
	mov r2, r7
	ldr r4, [r4, #8]
	ldrb r6, [r4, #1]
	ldr r4, [sp, #0x54]
	str r4, [sp]
	bl FUN_02042aa4
	cmp r9, #0
	mov r4, r0
	addlt sp, sp, #0x2c
	movlt r0, r11
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r8]
	cmp r1, #0
	beq _020432F0
	and r0, r5, #0xff
	str r0, [sp, #0x28]
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x24]
_02043158:
	cmp r1, #0xa
	bne _02043190
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, r10
	mov r2, r7
	add r3, r8, #1
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [r10, #0x18]
	add r0, r6, r0
	add r9, r9, r0
	b _020432E4
_02043190:
	mov r0, r10
	mov r1, r8
	bl FUN_020425c4
	mov r5, r0
	add r0, r10, #4
	mov r1, r5
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _0204330C ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r10, #4]
	ldreqh r1, [r0, #2]
	add r0, r10, #4
	bl NNS_G2dFontGetCharWidthsFromIndex
	mov r1, r5
	str r0, [sp, #0x18]
	ldrsb r5, [r0, #2]
	add r0, r10, #4
	bl NNS_G2dFontFindGlyphIndex
	ldr r1, _0204330C ; =0x0000FFFF
	ldr r2, [r10, #4]
	cmp r0, r1
	ldreq r0, [r10, #4]
	ldr r2, [r2, #8]
	add r1, r4, r5
	ldreqh r0, [r0, #2]
	cmp r1, r7
	add r1, r2, #8
	str r1, [sp, #0x1c]
	ldrh r1, [r2, #2]
	mul r1, r0, r1
	str r1, [sp, #0x20]
	ble _02043240
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, r10
	mov r2, r7
	mov r3, r8
	bl FUN_02042aa4
	mov r4, r0
	ldr r0, [r10, #0x18]
	add r0, r6, r0
	add r9, r9, r0
_02043240:
	ldr r0, [sp, #0x60]
	add r1, r9, r6
	cmp r1, r0
	bgt _020432F0
	ldr r0, [sp, #0x64]
	cmp r0, #0
	ldrne r0, [sp, #0x68]
	cmpne r11, r0
	bge _02043288
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x24]
	strh r4, [r0]
	strh r9, [r0, #2]
	strh r5, [r0, #4]
	strh r1, [r0, #6]
	add r0, r0, #8
	str r0, [sp, #0x64]
	add r11, r11, #1
_02043288:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x58]
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	mov r3, r7
	str r0, [sp]
	ldr r0, [sp, #0x18]
	stmib sp, {r0, r6}
	str r4, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r0, r10
	ldr r12, [r0]
	ldr r12, [r12, #0x18]
	blx r12
	ldr r1, [r10, #0x14]
	mov r0, r10
	add r1, r5, r1
	add r4, r4, r1
	mov r1, r8
	bl FUN_020425a0
	cmp r0, #2
	addeq r8, r8, #1
_020432E4:
	ldrsb r1, [r8, #1]!
	cmp r1, #0
	bne _02043158
_020432F0:
	ldr r0, [sp, #0x60]
	mul r1, r7, r0
	ldr r0, [sp, #0x58]
	bl DC_FlushRange
	mov r0, #1
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204330C: .word 0x0000FFFF
	arm_func_end FUN_020430b0

	arm_func_start FUN_02043310
FUN_02043310: ; 0x02043310
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	arm_func_end FUN_02043310

	arm_func_start FUN_0204331c
FUN_0204331c: ; 0x0204331C
	mov r1, #1
	ldr r12, _0204332C ; =FUN_02043310
	mov r2, r1
	bx r12
_0204332C: .word FUN_02043310
	arm_func_end FUN_0204331c

	arm_func_start _ZN11FontManager11G2dFontInitEPvmh ; https://decomp.me/scratch/KBAy4
_ZN11FontManager11G2dFontInitEPvmh: ; 0x02043330
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r3
	cmp r1, #0
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #0x10
	movhs r2, #0
	strb r0, [r5, #0x1f]
	str r1, [r5, #0xc]
	str r2, [r5, #0x10]
	cmp r4, #0
	add r0, r5, #4
	beq _02043370
	bl NNS_G2dFontInitUTF16
	b _02043374
_02043370:
	bl NNS_G2dFontInitShiftJIS
_02043374:
	strb r4, [r5, #0x20]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN11FontManager11G2dFontInitEPvmh

	arm_func_start FUN_02043380 ; https://decomp.me/scratch/YAxnt
FUN_02043380: ; 0x02043380
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r6, r0
	movs r0, r1
	ldr r0, [sp, #0x38]
	str r1, [sp]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r2, [sp, #4]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x44]
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	cmp r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r0
	mov r0, r2
	cmp r1, r0
	addge sp, sp, #0x14
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, r3
	addge sp, sp, #0x14
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x40]
	mov r11, #0
	add r1, r1, r0
	mov r0, r2
	cmp r1, r0
	ldrgt r0, [sp, #0x38]
	movgt r1, r2
	subgt r0, r1, r0
	strgt r0, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	add r0, r1, r0
	cmp r0, r3
	movgt r0, r1
	subgt r0, r3, r0
	strgt r0, [sp, #0x44]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x38]
	tst r0, #1
	movne r0, #1
	strne r0, [sp, #8]
	ldr r0, [sp, #0x38]
	streq r11, [sp, #8]
	and r0, r0, #7
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	add r1, r1, r0
	ldr r0, [sp, #0x10]
	and r5, r1, #3
	rsb r0, r0, #8
	str r0, [sp, #0xc]
_0204348C:
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #4]
	add r2, r0, r11
	ldr r0, [sp, #0x38]
	ldr r10, [sp, #8]
	mla r0, r1, r2, r0
	add r1, r0, r0, lsr #31
	ldr r0, [sp]
	add r4, r0, r1, asr #1
	ldr r0, [sp, #0x10]
	tst r0, #7
	mov r9, r0
	beq _0204350C
	mov r7, #0
	mov r8, #1
_020434C8:
	cmp r10, #0
	mov r0, r6
	mov r1, r4
	beq _020434E4
	ldrb r2, [r4], #1
	and r2, r2, #0xf
	b _020434F0
_020434E4:
	ldrb r2, [r4]
	and r2, r2, #0xf0
	and r2, r2, #0xff
_020434F0:
	bl FUN_02042274
	cmp r10, #0
	moveq r10, r8
	add r9, r9, #1
	movne r10, r7
	tst r9, #7
	bne _020434C8
_0204350C:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x40]
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	mov r10, #0
	subne r1, r1, r0
	bic r0, r1, #7
	add r7, r0, r0, lsr #31
	mov r2, r7, asr #1
	mov r0, r10
	mov r1, r4
	bl MIi_CpuClearFast
	add r4, r4, r7, asr #1
	cmp r5, #0
	mov r9, r10
	ble _02043598
	mov r7, r10
	mov r8, #1
_02043554:
	cmp r10, #0
	mov r0, r6
	mov r1, r4
	beq _02043570
	ldrb r2, [r4], #1
	and r2, r2, #0xf
	b _0204357C
_02043570:
	ldrb r2, [r4]
	and r2, r2, #0xf0
	and r2, r2, #0xff
_0204357C:
	bl FUN_02042274
	cmp r10, #0
	moveq r10, r8
	add r9, r9, #1
	movne r10, r7
	cmp r9, r5
	blt _02043554
_02043598:
	ldr r0, [sp, #0x44]
	add r11, r11, #1
	cmp r11, r0
	blt _0204348C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02043380

	arm_func_start FUN_020435b0
FUN_020435b0: ; 0x020435B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	movs r0, r1
	ldr r0, [sp, #0x40]
	str r1, [sp]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x44]
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x40]
	cmp r0, #0
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, r2
	addge sp, sp, #0x18
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x44]
	cmp r0, #0
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, r3
	addge sp, sp, #0x18
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x4c]
	add r8, r0, r1
	ldr r0, [sp, #0x44]
	str r8, [sp, #0x10]
	add r0, r0, r4
	str r0, [sp, #0xc]
	cmp r8, r2
	ldr r0, [sp, #0xc]
	strgt r2, [sp, #0x10]
	cmp r0, r3
	strgt r3, [sp, #0xc]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	addge sp, sp, #0x18
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp, #8]
_0204366C:
	ldr r5, [sp, #0x40]
	ldr r0, [sp, #0x10]
	mov r1, r5
	cmp r1, r0
	bge _02043760
	ldr r0, [sp, #0x44]
	mov r11, #0
	mov r1, r0, asr #2
	add r0, r0, r1, lsr #29
	mov r1, r0, asr #3
	ldr r0, [sp, #8]
	mov r4, #1
	mul r3, r1, r0
	ldr r0, [sp, #0x44]
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #29
	ldr r0, [sp]
	add r0, r0, r3, lsl #5
	str r0, [sp, #4]
	add r0, r2, r1, ror #29
	str r0, [sp, #0x14]
_020436C0:
	mov r0, r5, asr #2
	add r0, r5, r0, lsr #29
	mov r1, r0, asr #3
	ldr r0, [sp, #4]
	tst r5, #1
	add r1, r0, r1, lsl #5
	ldr r0, [sp, #0x14]
	movne r9, #1
	add r2, r1, r0, lsl #2
	mov r1, r5, lsr #0x1f
	rsb r0, r1, r5, lsl #29
	add r0, r1, r0, ror #29
	add r0, r0, r0, lsr #31
	add r7, r2, r0, asr #1
	moveq r9, #0
	and r6, r5, #7
	b _02043744
_02043704:
	cmp r9, #0
	mov r0, r10
	mov r1, r7
	beq _02043720
	ldrb r2, [r7], #1
	and r2, r2, #0xf
	b _0204372C
_02043720:
	ldrb r2, [r7]
	and r2, r2, #0xf0
	and r2, r2, #0xff
_0204372C:
	bl FUN_02042274
	cmp r9, #0
	moveq r9, r4
	add r5, r5, #1
	add r6, r6, #1
	movne r9, r11
_02043744:
	tst r6, #8
	bne _02043754
	cmp r5, r8
	blt _02043704
_02043754:
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _020436C0
_02043760:
	ldr r0, [sp, #0x44]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x44]
	cmp r1, r0
	blt _0204366C
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020435b0

	arm_func_start FUN_02043780
FUN_02043780: ; 0x02043780
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1d]
	bx lr
	arm_func_end FUN_02043780

	arm_func_start FUN_0204378c
FUN_0204378c: ; 0x0204378C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldrsb r4, [r2]
	mov r3, #0
	mov r12, r3
	mov lr, r3
	cmp r4, #0
	beq _020437E4
	ldr r4, _020438E0 ; =0x0000889F
	ldr r5, _020438E4 ; =0x00008140
	mov r7, #1
_020437B4:
	ldrsb r8, [r2]
	ldrb r6, [r2, #1]
	add r2, r2, #2
	mov r8, r8, lsl #0x18
	orr r6, r6, r8, lsr #16
	cmp r6, r5
	beq _020437E4
	cmp r6, r4
	ldrsb r6, [r2]
	movhs r12, r7
	cmp r6, #0
	bne _020437B4
_020437E4:
	ldrsb r7, [r2]
	cmp r7, #0
	beq _0204381C
	ldr r4, _020438E0 ; =0x0000889F
	mov r5, #1
_020437F8:
	ldrb r6, [r2, #1]
	mov r7, r7, lsl #0x18
	add r2, r2, #2
	orr r6, r6, r7, lsr #16
	ldrsb r7, [r2]
	cmp r6, r4
	movhs lr, r5
	cmp r7, #0
	bne _020437F8
_0204381C:
	ldrsb r2, [r1]
	cmp r2, #0
	beq _02043888
	ldr r2, _020438E4 ; =0x00008140
	mvn r6, #0x7e
	mov r5, #0x40
_02043834:
	ldrb r8, [r1]
	ldrb r7, [r1, #1]
	add r1, r1, #2
	orr r4, r7, r8, lsl #8
	cmp r4, r2
	streqb r8, [r0, r3]
	addeq r2, r3, #1
	streqb r7, [r0, r2]
	addeq r3, r3, #2
	beq _02043888
	cmp r12, #0
	strneb r8, [r0, r3]
	addne r4, r3, #1
	strneb r7, [r0, r4]
	streqb r6, [r0, r3]
	addeq r4, r3, #1
	streqb r5, [r0, r4]
	ldrsb r4, [r1]
	add r3, r3, #2
	cmp r4, #0
	bne _02043834
_02043888:
	ldrsb r4, [r1]
	cmp r4, #0
	beq _020438D4
	mvn r5, #0x7e
	mov r2, #0x40
_0204389C:
	ldrb r12, [r1, #1]
	and r4, r4, #0xff
	cmp lr, #0
	strneb r4, [r0, r3]
	addne r4, r3, #1
	strneb r12, [r0, r4]
	add r1, r1, #2
	streqb r5, [r0, r3]
	addeq r4, r3, #1
	streqb r2, [r0, r4]
	ldrsb r4, [r1]
	add r3, r3, #2
	cmp r4, #0
	bne _0204389C
_020438D4:
	mov r1, #0
	strb r1, [r0, r3]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020438E0: .word 0x0000889F
_020438E4: .word 0x00008140
	arm_func_end FUN_0204378c

	arm_func_start FUN_020438e8
FUN_020438e8: ; 0x020438E8
	ldr r2, _02043910 ; =0x0209002C
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
_02043910: .word unk_0209002C
	arm_func_end FUN_020438e8

	arm_func_start FUN_02043914
FUN_02043914: ; 0x02043914
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02043938
	ldr r0, _02043954 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #4]
_02043938:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_02043954: .word gL5Allocator
	arm_func_end FUN_02043914

	arm_func_start FUN_02043958
FUN_02043958: ; 0x02043958
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mul r1, r6, r5
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r4, r1, lsl #2
	cmp r0, r1, lsl #2
	bge _020439B0
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _02043990
	ldr r0, _020439C0 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_02043990:
	ldr r0, _020439C0 ; =gL5Allocator
	mov r1, r4
	bl _ZN11L5Allocator8allocateEm
	str r0, [r7, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r4, [r7, #0x10]
_020439B0:
	str r6, [r7, #8]
	str r5, [r7, #0xc]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020439C0: .word gL5Allocator
	arm_func_end FUN_02043958

	arm_func_start FUN_020439c4
FUN_020439c4: ; 0x020439C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0xc]
	mov r7, #0
	mov r9, r1
	str r2, [sp]
	mov r11, r7
	cmp r0, #0
	ldr r8, [r10, #4]
	ble _02043A70
_020439EC:
	ldr r2, [r10, #8]
	mov r6, #0
	mov r5, r6
	cmp r2, #0
	ble _02043A58
	smull r1, r0, r7, r7
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r4, r1, lsr #0xc
	cmp r2, #0
	orr r4, r4, r0, lsl #20
	ble _02043A58
_02043A1C:
	smull r1, r0, r6, r6
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r4, asr #4
	bl FX_Sqrt
	mov r0, r0, lsl #2
	str r0, [r8], #4
	ldr r0, [r10, #8]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, r9
	blt _02043A1C
_02043A58:
	ldr r0, [r10, #0xc]
	add r11, r11, #1
	cmp r11, r0
	ldr r0, [sp]
	add r7, r7, r0
	blt _020439EC
_02043A70:
	ldr r0, [sp]
	str r9, [r10, #0x14]
	str r0, [r10, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020439c4

	arm_func_start FUN_02043a80
FUN_02043a80: ; 0x02043A80
	stmfd sp!, {r4, lr}
	ldr r1, _02043AA4 ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043AA4: .word unk_0209002C
	arm_func_end FUN_02043a80

	arm_func_start FUN_02043aa8
FUN_02043aa8: ; 0x02043AA8
	stmfd sp!, {r4, lr}
	ldr r1, _02043AC4 ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043AC4: .word unk_0209002C
	arm_func_end FUN_02043aa8

	arm_func_start FUN_02043ac8
FUN_02043ac8: ; 0x02043AC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020438e8
	ldr r1, _02043AE4 ; =0x02090054
	mov r0, r4
	str r1, [r4]
	ldmfd sp!, {r4, pc}
_02043AE4: .word unk_02090054
	arm_func_end FUN_02043ac8

	arm_func_start FUN_02043ae8
FUN_02043ae8: ; 0x02043AE8
	stmfd sp!, {r4, lr}
	ldr r1, _02043B04 ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043B04: .word unk_0209002C
	arm_func_end FUN_02043ae8

	arm_func_start FUN_02043b08
FUN_02043b08: ; 0x02043B08
	stmfd sp!, {r4, lr}
	ldr r1, _02043B2C ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043B2C: .word unk_0209002C
	arm_func_end FUN_02043b08

	arm_func_start FUN_02043b30
FUN_02043b30: ; 0x02043B30
	mov r1, #0x20
	ldr r12, _02043B40 ; =FUN_02043958
	mov r2, r1
	bx r12
_02043B40: .word FUN_02043958
	arm_func_end FUN_02043b30

	arm_func_start FUN_02043b44
FUN_02043b44: ; 0x02043B44
	mov r1, #0x1000
	ldr r12, _02043B54 ; =FUN_020439c4
	mov r2, r1
	bx r12
_02043B54: .word FUN_020439c4
	arm_func_end FUN_02043b44

	arm_func_start FUN_02043b58
FUN_02043b58: ; 0x02043B58
	ldr r3, [r0, #4]
	add r0, r1, r2, lsl #5
	ldr r0, [r3, r0, lsl #2]
	bx lr
	arm_func_end FUN_02043b58

	arm_func_start FUN_02043b68
FUN_02043b68: ; 0x02043B68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r1, r6, asr #0xc
	orr r3, r1, r5, asr #12
	mov r2, r5, asr #0xc
	bics r3, r3, #0x1f
	mov r4, #0
	beq _02043BA4
_02043B8C:
	mov r1, r1, asr #1
	mov r2, r2, asr #1
	orr r3, r1, r2
	add r4, r4, #1
	bics r3, r3, #0x1f
	bne _02043B8C
_02043BA4:
	bl FUN_02043b58
	cmp r6, r5, lsl #1
	mov r2, #1
	ble _02043BCC
	add r1, r4, #0xc
	mov r1, r2, lsl r1
	sub r1, r1, #1
	and r1, r6, r1
	add r0, r1, r0, lsl r4
	ldmfd sp!, {r4, r5, r6, pc}
_02043BCC:
	add r1, r4, #0xc
	mov r1, r2, lsl r1
	cmp r5, r6, lsl #1
	subgt r1, r1, #1
	andgt r1, r5, r1
	addgt r0, r1, r0, lsl r4
	ldmgtfd sp!, {r4, r5, r6, pc}
	sub r3, r1, #1
	and r2, r6, r3
	and r1, r5, r3
	add r1, r2, r1
	mov r2, r1, asr #1
	orr r1, r6, r5
	add r2, r2, r0, lsl r4
	and r0, r3, r1
	add r0, r2, r0, asr #2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02043b68

	arm_func_start FUN_02043c10
FUN_02043c10: ; 0x02043C10
	ldr r12, _02043C28 ; =FUN_02043b68
	cmp r2, #0
	rsblt r2, r2, #0
	cmp r1, #0
	rsblt r1, r1, #0
	bx r12
_02043C28: .word FUN_02043b68
	arm_func_end FUN_02043c10

	arm_func_start FUN_02043c2c
FUN_02043c2c: ; 0x02043C2C
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #4]
	ldr r3, [r2, #4]
	subs r12, r12, r3
	ldr r3, [r1]
	ldr r1, [r2]
	rsbmi r12, r12, #0
	subs r1, r3, r1
	rsbmi r1, r1, #0
	mov r2, r12
	bl FUN_02043b68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02043c2c

	arm_func_start FUN_02043c5c
FUN_02043c5c: ; 0x02043C5C
	ldr r12, _02043C64 ; =FUN_02043c68
	bx r12
_02043C64: .word FUN_02043c68
	arm_func_end FUN_02043c5c

	arm_func_start FUN_02043c68
FUN_02043c68: ; 0x02043C68
	bx lr
	arm_func_end FUN_02043c68

	arm_func_start FUN_02043c6c
FUN_02043c6c: ; 0x02043C6C
	ldr r1, [r1, #0x84]
	ldr r2, [r2, #0x84]
	ldr r12, _02043C7C ; =FUN_02043c2c
	bx r12
_02043C7C: .word FUN_02043c2c
	arm_func_end FUN_02043c6c

	arm_func_start FUN_02043c80
FUN_02043c80: ; 0x02043C80
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, #1
	mov r6, r0
	mov r0, r5
	bl L5FS_SetNextArena
	mov r4, #0
	ldr r1, _02043D6C ; =0x020900CC
	mov r0, r4
	bl L5FS_OpenArchiveDirect
	ldr r7, _02043D70 ; =0x0209A200
	ldr r1, _02043D74 ; =0x020900DC
	str r0, [r7]
	mov r0, r4
	bl L5FS_OpenArchiveDirect
	str r0, [r7, #0x24]
	add r0, r6, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030260
	add r0, r6, #0x6000
	str r5, [r0, #0x20c]
	str r4, [r0, #0x210]
	str r4, [r0, #0x200]
	str r4, [r0, #0x224]
	add r0, r6, #0x1a8
	add r0, r0, #0x6000
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuFill8
	add r1, r6, #0x6000
	strb r4, [r1, #0x1e9]
	add r0, r6, #0x6100
	ldrsb r2, [r0, #0xe9]
	add r0, r6, #0x90
	strb r2, [r1, #0x1e8]
	bl FUN_02047af8
	add r0, r6, #0x90
	mov r1, r4
	mov r2, #2
	mov r3, r4
	str r4, [sp]
	bl FUN_02047f8c
	add r0, r6, #0x22c
	add r0, r0, #0x6000
	ldr r3, _02043D78 ; =gL5Allocator
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, _02043D7C ; =0x020900EC
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	str r4, [sp]
	mov r2, #4
	stmib sp, {r2, r4}
	add r2, sp, #0x10
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02043D6C: .word unk_020900CC
_02043D70: .word unk_0209A200
_02043D74: .word unk_020900DC
_02043D78: .word gL5Allocator
_02043D7C: .word unk_020900EC
	arm_func_end FUN_02043c80

	arm_func_start FUN_02043d80
FUN_02043d80: ; 0x02043D80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	cmp r1, #1
	mov r8, r0
	mov r5, #0
	mov r4, #1
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r2, r8, #0x6000
	ldr r1, [r2, #0x20c]
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r8, #0x6100
	ldrsb r3, [r1, #0xe8]
	add r1, r8, #0x1a8
	ldr r2, [r2, #0x224]
	add r1, r1, #0x6000
	cmp r2, #8
	add r6, r1, r3, lsl #3
	addls pc, pc, r2, lsl #2
	b _020442A4
_02043DE0: ; jump table
	b _02043E04 ; case 0
	b _02043F30 ; case 1
	b _02043F90 ; case 2
	b _02044000 ; case 3
	b _020440F0 ; case 4
	b _020441A0 ; case 5
	b _0204422C ; case 6
	b _02044270 ; case 7
	b _02044298 ; case 8
_02043E04:
	mov r1, r5
	mov r2, r5
	bl FUN_02044470
	ldrsh r0, [r6, #6]
	cmp r0, #0
	bne _02043F0C
	bl GetCurrentMode
	cmp r0, #3
	addne sp, sp, #0x10
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r8, #0x6000
	ldr r2, [r0, #0x1ec]
	cmp r2, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r8, #0x324
	mov r0, r8
	add r1, r1, #0x1c00
	bl FUN_02044470
	add r0, r8, #0x6000
	ldr r0, [r0, #0x1ec]
	bl FUN_ov0_020bdbe8
	cmp r0, #9
	bne _02043EEC
	ldr r0, _020442B0 ; =0x0208C384
	ldr r4, _020442B4 ; =0x0209A160
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r4]
	ldrsh r0, [r4, #4]
	str r1, [sp, #4]
	bl abs
	ldrsh r5, [r4, #6]
	mov r4, r0
	mov r0, #0x100
	mov r1, r5
	bl _s32_div_f
	mul r0, r5, r0
	cmp r0, r4
	bne _02043EEC
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02043ECC
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _02043EEC
_02043ECC:
	mov r4, #0
	b _02043EE4
_02043ED4:
	mov r1, r4
	add r0, r8, #0x90
	bl FUN_02048aac
	add r4, r4, #1
_02043EE4:
	cmp r4, #3
	blt _02043ED4
_02043EEC:
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
	add r0, r8, #0x90
	bl FUN_02048748
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02043F0C:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r0, #0x224]
	add r1, r1, #1
	str r1, [r0, #0x224]
_02043F30:
	mov r7, #0
	str r7, [sp]
	ldrsb r2, [r6, #5]
	add r1, r8, #0x324
	ldr r3, [r6]
	add r0, r8, #0x90
	add r1, r1, #0x1c00
	bl FUN_020486f0
	ldrsb r0, [r6, #5]
	add r1, r8, #0x6000
	mov r2, #1
	cmp r0, #0
	moveq r7, #1
	add r0, r8, #0x324
	cmp r7, #0
	ldr r1, [r1, #0x1ec]
	movne r2, #0
	add r0, r0, #0x1c00
	bl FUN_020304e4
	add r0, r8, #0x6000
	ldr r1, [r0, #0x224]
	str r4, [r0, #0x220]
	add r1, r1, #1
	str r1, [r0, #0x224]
_02043F90:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x214]
	cmp r1, #0
	beq _02043FCC
	bl FUN_ov16_020f17f0
	cmp r0, #0
	addne r0, r8, #0x6000
	strne r5, [r0, #0x220]
	add r0, r8, #0x6000
	ldr r0, [r0, #0x1ec]
	bl _ZN14CScreenManager13fadeMainBlackEv
	add r0, r8, #0x6000
	mov r1, #6
_02043FC4:
	str r1, [r0, #0x224]
	b _020442A4
_02043FCC:
	ldr r0, [r0, #0x21c]
	cmp r0, #0
	bne _020442A4
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
	add r0, r8, #0x90
	bl FUN_02048748
	cmp r0, #0
	addeq r0, r8, #0x6000
	ldreq r1, [r0, #0x224]
	addeq r1, r1, #1
	b _02044290
_02044000:
	add r0, r8, #0x90
	bl FUN_02048a04
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030584
	add r0, r8, #0x6100
	ldrsb r0, [r0, #0xe8]
	ldr r1, _020442B8 ; =0x00001014
	ldrsh r7, [r6, #6]
	add r0, r8, r0, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	cmp r0, r1
	bne _02044040
	ldr r0, _020442BC ; =0x020A9C40
	bl FUN_0204556c
_02044040:
	ldrsb r1, [r6, #5]
	cmp r1, #0xb
	blt _02044054
	add r0, r8, #0x90
	bl FUN_02048288
_02044054:
	add r0, r8, #0x6100
	ldrsb r1, [r0, #0xe8]
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	add r0, r0, r1, lsl #3
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r1, r8, #0x6100
	ldrsb r2, [r1, #0xe8]
	add r0, r8, #0x6000
	str r4, [r0, #0x224]
	add r2, r2, #1
	strb r2, [r0, #0x1e8]
	ldrsb r2, [r1, #0xe8]
	and r2, r2, #7
	strb r2, [r0, #0x1e8]
	ldrsb r1, [r1, #0xe8]
	add r1, r8, r1, lsl #3
	add r1, r1, #0x6100
	ldrsh r1, [r1, #0xae]
	cmp r1, #0
	bne _020442A4
	ldr r0, [r0, #0x214]
	cmp r0, #0
	bne _020440E4
	ldr r1, _020442C0 ; =0x00001002
	cmp r7, r1
	addne r0, r1, #0x1f
	cmpne r7, r0
	addne r0, r1, #0x20
	cmpne r7, r0
	addne r0, r1, #0x21
	cmpne r7, r0
	addeq r0, r8, #0x6000
	streq r5, [r0, #0x220]
_020440E4:
	add r0, r8, #0x6000
	mov r1, #4
	b _02043FC4
_020440F0:
	mov r6, r5
	mov r1, r6
	add r0, r8, #0x90
	bl FUN_020484a4
	cmp r0, #0
	beq _020442A4
	add r0, r8, #0x6000
	ldr r0, [r0, #0x200]
	cmp r0, #0
	add r0, r8, #0x90
	bne _02044138
	bl FUN_02048508
	add r1, r8, #0x6000
	str r0, [r1, #0x200]
	cmp r0, #0
	bne _020442A4
	str r6, [r1, #0x210]
	b _02044190
_02044138:
	sub r1, r6, #1
	bl FUN_02048178
	cmp r0, #0
	beq _020442A4
	add r7, r8, #0x6000
	str r6, [r7, #0x210]
	ldr r9, _020442C4 ; =0x00001023
	b _02044180
_02044158:
	ldr r0, [r7, #0x200]
	tst r0, r4, lsl r6
	beq _0204417C
	mov r0, r8
	mov r1, r6
	mov r2, r9
	bl FUN_02044d00
	cmp r0, #0
	strne r4, [r7, #0x210]
_0204417C:
	add r6, r6, #1
_02044180:
	cmp r6, #0x10
	blt _02044158
	add r0, r8, #0x6000
	str r5, [r0, #0x200]
_02044190:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x224]
	add r1, r1, #1
	str r1, [r0, #0x224]
_020441A0:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	bne _02044224
	ldr r1, [r0, #0x1fc]
	cmp r1, #0
	beq _020441FC
	cmp r1, #1
	bne _020441DC
	bl FUN_ov16_020f068c
	cmp r0, #0
	moveq r0, #0x12
	movne r0, #0x15
	mov r1, #1
	bl FUN_ov16_020f2604
_020441DC:
	mov r0, #6
	bl FUN_ov16_020f153c
	add r0, r8, #0x6000
	ldr r0, [r0, #0x1fc]
	bl _Z11SetNextMode8GameMode
	add r0, r8, #0x6000
	str r5, [r0, #0x1fc]
	b _02044208
_020441FC:
	ldr r1, [r0, #0x1ec]
	mov r0, r8
	bl FUN_02044e50
_02044208:
	add r0, r8, #0x6000
	str r5, [r0, #0x214]
	str r5, [r0, #0x218]
	str r5, [r0, #0x21c]
	str r4, [r0, #0x220]
	str r5, [r0, #0x224]
	b _020442A4
_02044224:
	str r4, [r0, #0x224]
	b _020442A4
_0204422C:
	bl FUN_ov16_020f1670
	cmp r0, #0
	bne _020442A4
	add r0, r8, #0x6000
	ldr r0, [r0, #0x218]
	cmp r0, #0
	add r0, r8, #0x90
	beq _02044254
	bl FUN_02048a68
	b _02044258
_02044254:
	bl FUN_02048a4c
_02044258:
	ldr r0, _020442C8 ; =gL5Movie
	bl _ZN7L5Movie12FUN_0202e958Ev
	add r0, r8, #0x6000
	ldr r1, [r0, #0x224]
	add r1, r1, #1
	str r1, [r0, #0x224]
_02044270:
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
	add r0, r8, #0x90
	bl FUN_02048748
	cmp r0, #0
	addeq r0, r8, #0x6000
	moveq r1, #3
_02044290:
	streq r1, [r0, #0x224]
	b _020442A4
_02044298:
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
_020442A4:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020442B0: .word unk_0208C384
_020442B4: .word unk_0209A160
_020442B8: .word 0x00001014
_020442BC: .word unk_020A9C40
_020442C0: .word 0x00001002
_020442C4: .word 0x00001023
_020442C8: .word gL5Movie
	arm_func_end FUN_02043d80

	arm_func_start FUN_020442cc
FUN_020442cc: ; 0x020442CC
	mov r0, #0
	bx lr
	arm_func_end FUN_020442cc

	arm_func_start FUN_020442d4
FUN_020442d4: ; 0x020442D4
	bx lr
	arm_func_end FUN_020442d4

	arm_func_start FUN_020442d8
FUN_020442d8: ; 0x020442D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	ands r4, r6, #1
	beq _020442F4
	bl FUN_02045124
_020442F4:
	cmp r4, #0
	beq _02044304
	mov r0, r7
	bl FUN_020452e0
_02044304:
	add r0, r7, #0x324
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x1c00
	bl FUN_02030010
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020442d8

	arm_func_start FUN_02044320
FUN_02044320: ; 0x02044320
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x6000
	mov r2, #0
	mov r4, r1
	str r2, [r0, #0x208]
	ldrh r1, [r4, #4]
	cmp r1, #1
	bne _02044364
	ldr r1, [r0, #0x204]
	cmp r1, #0
	moveq r1, #1
	streq r1, [r0, #0x208]
	add r0, r5, #0x6000
	mov r1, #1
	str r1, [r0, #0x204]
	b _02044368
_02044364:
	str r2, [r0, #0x204]
_02044368:
	add r0, r5, #0x6000
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _02044388
	mov r0, r5
	bl FUN_02045124
	mov r0, r5
	bl FUN_020452e0
_02044388:
	add r0, r5, #0x324
	mov r1, r4
	add r0, r0, #0x1c00
	bl FUN_0203003c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044320

	arm_func_start FUN_020443a0
FUN_020443a0: ; 0x020443A0
	bx lr
	arm_func_end FUN_020443a0

	arm_func_start FUN_020443a4
FUN_020443a4: ; 0x020443A4
	add r0, r0, #0x6000
	str r1, [r0, #0x1fc]
	bx lr
	arm_func_end FUN_020443a4

	arm_func_start FUN_020443b0
FUN_020443b0: ; 0x020443B0
	ldr r12, _020443BC ; =FUN_02047bc4
	add r0, r0, #0x90
	bx r12
_020443BC: .word FUN_02047bc4
	arm_func_end FUN_020443b0

	arm_func_start FUN_020443c0
FUN_020443c0: ; 0x020443C0
	add r0, r0, #0x324
	ldr r12, _020443D0 ; =FUN_020303B0
	add r0, r0, #0x1c00
	bx r12
_020443D0: .word FUN_020303B0
	arm_func_end FUN_020443c0

	arm_func_start FUN_020443d4
FUN_020443d4: ; 0x020443D4
	add r0, r0, #0x324
	ldr r12, _020443E4 ; =FUN_020303bc
	add r0, r0, #0x1c00
	bx r12
_020443E4: .word FUN_020303bc
	arm_func_end FUN_020443d4

	arm_func_start FUN_020443e8
FUN_020443e8: ; 0x020443E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	ldrne r0, [r0, #0x224]
	cmpne r0, #0
	beq _0204441C
	add r0, r4, #0x90
	bl FUN_02048a04
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030584
_0204441C:
	add r0, r4, #0x1a8
	mov r5, #0
	add r3, r4, #0x6000
	mov r1, r5
	add r0, r0, #0x6000
	mov r2, #0x40
	str r5, [r3, #0x214]
	str r5, [r3, #0x218]
	str r5, [r3, #0x21c]
	str r5, [r3, #0x210]
	str r5, [r3, #0x224]
	bl MI_CpuFill8
	add r1, r4, #0x6000
	strb r5, [r1, #0x1e9]
	add r0, r4, #0x6100
	ldrsb r0, [r0, #0xe9]
	strb r0, [r1, #0x1e8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020443e8

	arm_func_start FUN_02044464
FUN_02044464: ; 0x02044464
	add r0, r0, #0x6000
	str r1, [r0, #0x1ec]
	bx lr
	arm_func_end FUN_02044464

	arm_func_start FUN_02044470
FUN_02044470: ; 0x02044470
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r0, r5, #0x90
	bl FUN_02048aa0
	mov r1, r4
	add r0, r5, #0x90
	bl FUN_02048a94
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044470

	arm_func_start FUN_02044494
FUN_02044494: ; 0x02044494
	add r0, r0, #0x324
	add r0, r0, #0x1c00
	bx lr
	arm_func_end FUN_02044494

	arm_func_start FUN_020444a0
FUN_020444a0: ; 0x020444A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x234
	add r0, r0, #0x6000
	mov r2, #0x80
	mov r4, r1
	bl MI_CpuCopy8
	add r0, r5, #0x324
	add r0, r0, #0x1c00
	add r1, r4, #0x80
	bl FUN_02030438
	add r0, r5, #0x90
	add r1, r4, #0x280
	bl FUN_02047c7c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020444a0

	arm_func_start FUN_020444dc
FUN_020444dc: ; 0x020444DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, #0x234
	mov r0, r4
	add r1, r1, #0x6000
	mov r2, #0x80
	bl MI_CpuCopy8
	add r0, r5, #0x324
	add r0, r0, #0x1c00
	add r1, r4, #0x80
	bl FUN_02030480
	add r0, r5, #0x90
	add r1, r4, #0x280
	bl FUN_02047cdc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020444dc

	arm_func_start FUN_0204451c
FUN_0204451c: ; 0x0204451C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x6000
	ldr r5, [r0, #0x1ec]
	mov r6, r1
	cmp r5, #0
	beq _02044554
	mov r0, r5
	bl _ZN14CScreenManager15getCurSceneMainEv
	mov r4, r0
	mov r0, r5
	bl _ZN14CScreenManager16getNextSceneMainEv
	cmp r4, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02044554:
	add r0, r7, #0x6000
	str r6, [r0, #0x20c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204451c

	arm_func_start FUN_02044560
FUN_02044560: ; 0x02044560
	add r0, r0, #0x6100
	ldrsb r1, [r0, #0xe9]
	ldrsb r0, [r0, #0xe8]
	add r1, r1, #8
	sub r0, r1, r0
	and r0, r0, #7
	bx lr
	arm_func_end FUN_02044560

	arm_func_start FUN_0204457c
FUN_0204457c: ; 0x0204457C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #0x6000
	ldr r0, [r0, #0x210]
	cmp r0, #0
	beq _020445B8
	add r0, r8, #0x6100
	ldrsb r1, [r0, #0xe8]
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	add r2, r0, r1, lsl #3
	ldrsb r5, [r2, #4]
	ldrsb r6, [r2, #5]
	ldrsh r7, [r2, #6]
	ldr r4, [r0, r1, lsl #3]
_020445B8:
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	mov r1, #0
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r8, #0x6000
	ldr r0, [r0, #0x210]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x6100
	ldrsb r1, [r0, #0xe8]
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	str r4, [r0, r1, lsl #3]!
	strb r5, [r0, #4]
	strb r6, [r0, #5]
	strh r7, [r0, #6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204457c

	arm_func_start FUN_02044600
FUN_02044600: ; 0x02044600
	add r0, r0, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	ldrne r0, [r0, #0x224]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02044600

	arm_func_start FUN_02044620
FUN_02044620: ; 0x02044620
	add r0, r0, #0x6000
	str r1, [r0, #0x21c]
	bx lr
	arm_func_end FUN_02044620

	arm_func_start FUN_0204462c
FUN_0204462c: ; 0x0204462C
	add r1, r0, #0x6100
	ldrsb r1, [r1, #0xe8]
	add r0, r0, r1, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	bx lr
	arm_func_end FUN_0204462c

	arm_func_start FUN_02044644
FUN_02044644: ; 0x02044644
	stmfd sp!, {r3, lr}
	add r0, r0, #0x90
	bl FUN_02047e20
	ldr r0, [r0]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02044644

	arm_func_start FUN_02044658
FUN_02044658: ; 0x02044658
	ldr r12, _02044664 ; =FUN_02047e20
	add r0, r0, #0x90
	bx r12
_02044664: .word FUN_02047e20
	arm_func_end FUN_02044658

	arm_func_start FUN_02044668
FUN_02044668: ; 0x02044668
	stmfd sp!, {r4, lr}
	add r0, r0, #0x90
	mov r4, r2
	bl FUN_02047e20
	str r4, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02044668

	arm_func_start FUN_02044680
FUN_02044680: ; 0x02044680
	ldr r12, _0204468C ; =FUN_02048278
	add r0, r0, #0x90
	bx r12
_0204468C: .word FUN_02048278
	arm_func_end FUN_02044680

	arm_func_start FUN_02044690
FUN_02044690: ; 0x02044690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	add r0, r8, #0x6000
	ldr r0, [r0, #0x210]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	ldr r4, [sp, #0x20]
	bne _020446F8
	cmp r4, #0
	bne _020446CC
	add r0, r8, #0x90
	bl FUN_02048288
_020446CC:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r7
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x90
	str r4, [sp]
	bl FUN_02047f8c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020446F8:
	cmp r4, #0
	bne _02044708
	add r0, r8, #0x90
	bl FUN_0204836c
_02044708:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r7
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x90
	str r4, [sp]
	bl FUN_02048068
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02044690

	arm_func_start FUN_02044734
FUN_02044734: ; 0x02044734
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r12, #0
	mov r1, #2
	mov r2, #1
	str r12, [sp]
	bl FUN_02044690
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02044734

	arm_func_start FUN_02044754
FUN_02044754: ; 0x02044754
	stmfd sp!, {r3, lr}
	add r3, r0, #0x6000
	ldr r3, [r3, #0x210]
	cmp r3, #0
	beq _02044770
	cmp r2, #0
	beq _0204477C
_02044770:
	add r0, r0, #0x90
	bl FUN_02048288
	ldmfd sp!, {r3, pc}
_0204477C:
	add r0, r0, #0x90
	bl FUN_0204836c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02044754

	arm_func_start FUN_02044788
FUN_02044788: ; 0x02044788
	ldr r12, _02044794 ; =FUN_0204847c
	add r0, r0, #0x90
	bx r12
_02044794: .word FUN_0204847c
	arm_func_end FUN_02044788

	arm_func_start FUN_02044798
FUN_02044798: ; 0x02044798
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	mov r4, #0x80
	mov r9, r0
	mov r5, #0
	mov r8, r1
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	ldr r7, [sp, #0xa0]
	bl MI_CpuFill8
	ldr r0, _02044C4C ; =0x00010006
	cmp r8, r0
	bgt _020448A8
	bge _02044B20
	sub r1, r0, #4
	cmp r8, r1
	bgt _02044878
	sub r0, r0, #4
	cmp r8, r0
	bge _02044B00
	cmp r8, #0x19
	bgt _02044868
	cmp r8, #0
	addge pc, pc, r8, lsl #2
	b _02044B50
_02044800: ; jump table
	b _02044B50 ; case 0
	b _0204491C ; case 1
	b _02044A80 ; case 2
	b _02044924 ; case 3
	b _0204499C ; case 4
	b _0204492C ; case 5
	b _0204493C ; case 6
	b _02044944 ; case 7
	b _02044A70 ; case 8
	b _02044A78 ; case 9
	b _02044934 ; case 10
	b _02044914 ; case 11
	b _02044A88 ; case 12
	b _02044A90 ; case 13
	b _02044A98 ; case 14
	b _02044AA8 ; case 15
	b _02044AA0 ; case 16
	b _02044AB0 ; case 17
	b _02044AB8 ; case 18
	b _02044AC0 ; case 19
	b _02044AC8 ; case 20
	b _02044AD0 ; case 21
	b _02044AD8 ; case 22
	b _02044AE0 ; case 23
	b _02044AE8 ; case 24
	b _02044AF0 ; case 25
_02044868:
	ldr r0, _02044C50 ; =0x00010001
	cmp r8, r0
	beq _02044AF8
	b _02044B50
_02044878:
	sub r1, r0, #2
	cmp r8, r1
	bgt _02044898
	bge _02044B10
	sub r0, r0, #3
	cmp r8, r0
	beq _02044B08
	b _02044B50
_02044898:
	sub r0, r0, #1
	cmp r8, r0
	beq _02044B18
	b _02044B50
_020448A8:
	add r1, r0, #3
	cmp r8, r1
	bgt _020448E4
	bge _02044B30
	add r1, r0, #1
	cmp r8, r1
	bgt _020448D4
	add r0, r0, #1
	cmp r8, r0
	beq _02044B28
	b _02044B50
_020448D4:
	add r0, r0, #2
	cmp r8, r0
	beq _02044A68
	b _02044B50
_020448E4:
	add r1, r0, #5
	cmp r8, r1
	bgt _02044904
	bge _02044B40
	add r0, r0, #4
	cmp r8, r0
	beq _02044B38
	b _02044B50
_02044904:
	add r0, r0, #6
	cmp r8, r0
	beq _02044B48
	b _02044B50
_02044914:
	ldr r6, _02044C54 ; =0x00001013
	b _02044B5C
_0204491C:
	ldr r6, _02044C58 ; =0x00001022
	b _02044B5C
_02044924:
	ldr r6, _02044C5C ; =0x00001003
	b _02044B5C
_0204492C:
	ldr r6, _02044C60 ; =0x00001004
	b _02044B5C
_02044934:
	ldr r6, _02044C64 ; =0x00001026
	b _02044B5C
_0204493C:
	ldr r6, _02044C68 ; =0x0000100B
	b _02044B5C
_02044944:
	ldr r0, _02044C6C ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02044968
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x80
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02044968:
	ldr r0, _02044C6C ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _02044994
	bl FUN_0206d6b0
	cmp r0, #0
	ldrne r6, _02044C70 ; =0x0000100C
	bne _02044B5C
_02044994:
	ldr r6, _02044C74 ; =0x0000100D
	b _02044B5C
_0204499C:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _02044A1C
	cmp r0, #3
	blo _020449C4
	cmp r0, #5
	movls r0, #2
	bls _02044A1C
_020449C4:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #6
	blo _020449E0
	cmp r0, #8
	movls r0, #3
	bls _02044A1C
_020449E0:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #9
	blo _020449FC
	cmp r0, #0xb
	movls r0, #4
	bls _02044A1C
_020449FC:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	blo _02044A18
	cmp r0, #0xe
	movls r0, #5
	bls _02044A1C
_02044A18:
	mvn r0, #0
_02044A1C:
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02044B5C
_02044A28: ; jump table
	b _02044B5C ; case 0
	b _02044A40 ; case 1
	b _02044A48 ; case 2
	b _02044A50 ; case 3
	b _02044A58 ; case 4
	b _02044A60 ; case 5
_02044A40:
	ldr r6, _02044C7C ; =0x00001005
	b _02044B5C
_02044A48:
	ldr r6, _02044C80 ; =0x00001006
	b _02044B5C
_02044A50:
	ldr r6, _02044C84 ; =0x00001007
	b _02044B5C
_02044A58:
	ldr r6, _02044C88 ; =0x00001008
	b _02044B5C
_02044A60:
	ldr r6, _02044C8C ; =0x00001029
	b _02044B5C
_02044A68:
	ldr r6, _02044C90 ; =0x0000101C
	b _02044B5C
_02044A70:
	ldr r6, _02044C94 ; =0x0000101A
	b _02044B5C
_02044A78:
	ldr r6, _02044C98 ; =0x0000101B
	b _02044B5C
_02044A80:
	ldr r6, _02044C9C ; =0x00001021
	b _02044B5C
_02044A88:
	ldr r6, _02044CA0 ; =0x00001015
	b _02044B5C
_02044A90:
	ldr r6, _02044CA4 ; =0x00001014
	b _02044B5C
_02044A98:
	ldr r6, _02044CA8 ; =0x00001016
	b _02044B5C
_02044AA0:
	ldr r6, _02044CAC ; =0x0000101D
	b _02044B5C
_02044AA8:
	ldr r6, _02044CB0 ; =0x00001017
	b _02044B5C
_02044AB0:
	ldr r6, _02044CB4 ; =0x00001024
	b _02044B5C
_02044AB8:
	ldr r6, _02044CB8 ; =0x00001027
	b _02044B5C
_02044AC0:
	ldr r6, _02044CBC ; =0x00001025
	b _02044B5C
_02044AC8:
	ldr r6, _02044CC0 ; =0x00001028
	b _02044B5C
_02044AD0:
	ldr r6, _02044CC4 ; =0x0000102A
	b _02044B5C
_02044AD8:
	ldr r6, _02044CC8 ; =0x0000102B
	b _02044B5C
_02044AE0:
	ldr r6, _02044CCC ; =0x0000102C
	b _02044B5C
_02044AE8:
	ldr r6, _02044CD0 ; =0x0000102D
	b _02044B5C
_02044AF0:
	add r6, r4, #0xfb0
	b _02044B5C
_02044AF8:
	ldr r6, _02044CD4 ; =0x0000100E
	b _02044B5C
_02044B00:
	ldr r6, _02044CD8 ; =0x0000100F
	b _02044B5C
_02044B08:
	add r6, r4, #0xf90
	b _02044B5C
_02044B10:
	ldr r6, _02044CDC ; =0x00001011
	b _02044B5C
_02044B18:
	ldr r6, _02044CE0 ; =0x00001012
	b _02044B5C
_02044B20:
	ldr r6, _02044CE4 ; =0x00001019
	b _02044B5C
_02044B28:
	ldr r6, _02044CE8 ; =0x00001018
	b _02044B5C
_02044B30:
	ldr r6, _02044CEC ; =0x0000101E
	b _02044B5C
_02044B38:
	ldr r6, _02044CF0 ; =0x0000101F
	b _02044B5C
_02044B40:
	ldr r6, _02044CF4 ; =0x0000102E
	b _02044B5C
_02044B48:
	ldr r6, _02044CF8 ; =0x0000102F
	b _02044B5C
_02044B50:
	add sp, sp, #0x80
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02044B5C:
	mov r4, #0
	mov r5, #0xf
	and r10, r8, #0x10000
	b _02044B90
_02044B6C:
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_02044d00
	adds r4, r4, r0
	beq _02044B8C
	cmp r10, #0
	bne _02044B98
_02044B8C:
	sub r5, r5, #1
_02044B90:
	cmp r5, #0
	bge _02044B6C
_02044B98:
	cmp r4, #0
	bne _02044BF4
	ldr r0, _02044C9C ; =0x00001021
	cmp r6, r0
	beq _02044BB8
	add r0, r0, #1
	cmp r6, r0
	bne _02044BF4
_02044BB8:
	ldr r6, _02044CFC ; =0x00001002
	mov r5, #0xf
	and r8, r8, #0x10000
	b _02044BEC
_02044BC8:
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_02044d00
	adds r4, r4, r0
	beq _02044BE8
	cmp r8, #0
	bne _02044BF4
_02044BE8:
	sub r5, r5, #1
_02044BEC:
	cmp r5, #0
	bge _02044BC8
_02044BF4:
	cmp r4, #0
	cmpne r7, #0
	beq _02044C40
	add r1, r9, #0x6000
	mov r0, r7
	str r7, [r1, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	add r1, r9, #0x6000
	str r0, [r1, #0x1f0]
	mov r0, r7
	bl _ZN14CScreenManager14getCurSceneSubEv
	add r1, r9, #0x6000
	mov r3, #0
	mov r2, #1
	str r0, [r1, #0x1f4]
	str r3, [r1, #0x214]
	str r3, [r1, #0x218]
	str r3, [r1, #0x21c]
	str r2, [r1, #0x210]
_02044C40:
	mov r0, r4
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02044C4C: .word 0x00010006
_02044C50: .word 0x00010001
_02044C54: .word 0x00001013
_02044C58: .word 0x00001022
_02044C5C: .word 0x00001003
_02044C60: .word 0x00001004
_02044C64: .word 0x00001026
_02044C68: .word 0x0000100B
_02044C6C: .word unk_02099EF0
_02044C70: .word 0x0000100C
_02044C74: .word 0x0000100D
_02044C78: .word unk_020A0640
_02044C7C: .word 0x00001005
_02044C80: .word 0x00001006
_02044C84: .word 0x00001007
_02044C88: .word 0x00001008
_02044C8C: .word 0x00001029
_02044C90: .word 0x0000101C
_02044C94: .word 0x0000101A
_02044C98: .word 0x0000101B
_02044C9C: .word 0x00001021
_02044CA0: .word 0x00001015
_02044CA4: .word 0x00001014
_02044CA8: .word 0x00001016
_02044CAC: .word 0x0000101D
_02044CB0: .word 0x00001017
_02044CB4: .word 0x00001024
_02044CB8: .word 0x00001027
_02044CBC: .word 0x00001025
_02044CC0: .word 0x00001028
_02044CC4: .word 0x0000102A
_02044CC8: .word 0x0000102B
_02044CCC: .word 0x0000102C
_02044CD0: .word 0x0000102D
_02044CD4: .word 0x0000100E
_02044CD8: .word 0x0000100F
_02044CDC: .word 0x00001011
_02044CE0: .word 0x00001012
_02044CE4: .word 0x00001019
_02044CE8: .word 0x00001018
_02044CEC: .word 0x0000101E
_02044CF0: .word 0x0000101F
_02044CF4: .word 0x0000102E
_02044CF8: .word 0x0000102F
_02044CFC: .word 0x00001002
	arm_func_end FUN_02044798

	arm_func_start FUN_02044d00
FUN_02044d00: ; 0x02044D00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r10, r0
	mov r8, r2
	mov r0, r9, lsl #0x18
	mov r1, #0
	mov r2, r8, lsl #0x10
	add r3, r10, #0xe9
	mov r6, r0, asr #0x18
	add r0, r10, #0x6000
	mov r7, r1
	mov r11, r2, asr #0x10
	add r5, r3, #0x6100
	add r4, r10, #0x6100
	str r0, [sp, #4]
_02044D40:
	ldrsb r0, [r4, #0xe9]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r12, #0
	mov r2, r9
	mov r3, r8
	add r0, r10, #0x90
	str r12, [sp]
	bl FUN_02048674
	movs r1, r0
	beq _02044DD4
	ldrsb r0, [r4, #0xe9]
	add r7, r7, #1
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6000
	strb r6, [r0, #0x1ad]
	ldrsb r0, [r4, #0xe9]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6100
	strh r11, [r0, #0xae]
	ldrsb r0, [r4, #0xe9]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6000
	str r1, [r0, #0x1a8]
	ldrsb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrsb r0, [r4, #0xe9]
	and r2, r0, #7
	ldr r0, [sp, #4]
	strb r2, [r0, #0x1e9]
	b _02044D40
_02044DD4:
	mov r0, r7
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02044d00

	arm_func_start FUN_02044de0
FUN_02044de0: ; 0x02044DE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x6100
	ldrsb r0, [r0, #0xe8]
	mov r4, r1
	add r0, r5, r0, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #0x6000
	mov r0, r4
	str r4, [r1, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	add r1, r5, #0x6000
	str r0, [r1, #0x1f0]
	mov r0, r4
	bl _ZN14CScreenManager14getCurSceneSubEv
	add r1, r5, #0x6000
	str r0, [r1, #0x1f4]
	mov r0, #1
	str r0, [r1, #0x210]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044de0

	arm_func_start FUN_02044e40
FUN_02044e40: ; 0x02044E40
	add r0, r0, #0x6000
	str r1, [r0, #0x1f0]
	str r2, [r0, #0x1f4]
	bx lr
	arm_func_end FUN_02044e40

	arm_func_start FUN_02044e50
FUN_02044e50: ; 0x02044E50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x6000
	ldr r2, [r0, #0x1f0]
	mov r4, r1
	cmp r2, #0
	blt _02044E78
	mov r0, r4
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
_02044E78:
	add r0, r5, #0x6000
	ldr r2, [r0, #0x1f4]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044e50

	arm_func_start FUN_02044e98
FUN_02044e98: ; 0x02044E98
	add r0, r0, #0x6000
	str r1, [r0, #0x1f8]
	bx lr
	arm_func_end FUN_02044e98

	arm_func_start FUN_02044ea4
FUN_02044ea4: ; 0x02044EA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r1
	add r4, r6, #3
	mov r1, #0x88
	mul r1, r4, r1
	mov r7, r0
	mov r4, r2
	add r5, r1, #0x20
	ldr r0, _02044F70 ; =gL5Allocator
	add r1, r5, r4
	mov r8, r3
	bl _ZN11L5Allocator8allocateEm
	add r2, r5, r4
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	cmp r8, #0
	addne r0, r4, r5
	strne r0, [r8]
	ldr r0, _02044F74 ; =0x00030001
	add r12, r6, #3
	stmib r4, {r0, r5}
	strh r12, [r4, #0xc]
	mov r2, #0
	strh r2, [r4, #0xe]
	sub r0, r5, #0x20
	str r0, [r4, #0x10]
	mov r3, #1
	str r2, [r4, #0x14]
	strh r3, [r4, #0x20]
	mov r0, #0x88
	strh r0, [r4, #0x22]
	add r0, r3, #0x3000
	strh r0, [r4, #0x24]
	mov r1, #2
	strb r1, [r4, #0x26]
	strb r3, [r4, #0x27]
	mov r0, #0x11
	str r0, [r4, #0x28]
	str r2, [r4, #0x2c]
	rsb r0, r3, #0x2000
	str r0, [r4, #0x30]
	stmia sp, {r1, r2}
	mov r0, r7
	add r1, r4, #0x20
	add r2, r3, #0x6000
	str r12, [sp, #8]
	bl FUN_02045064
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02044F70: .word gL5Allocator
_02044F74: .word 0x00030001
	arm_func_end FUN_02044ea4

	arm_func_start FUN_02044f78
FUN_02044f78: ; 0x02044F78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, #2
	str r6, [sp]
	mov r5, #0
	mov r4, #1
	stmib sp, {r5, r6}
	mov r3, r4
	add r2, r6, #0x6000
	mov r8, r0
	bl FUN_02045064
	ldrh r12, [r0]
	mov r2, #0x88
	add r3, r4, #0x30000
	sub r1, r12, #1
	mul r7, r1, r2
	sub r1, r0, r7
	mul r0, r12, r2
	sub r7, r1, #0x20
	str r3, [r7, #4]
	strh r12, [r7, #0xc]
	strh r5, [r7, #0xe]
	str r0, [r7, #0x10]
	str r5, [r7, #0x14]
	str r6, [sp]
	mov r0, r8
	mov r3, r4
	add r2, r4, #0x6000
	stmib sp, {r5, r12}
	bl FUN_02045064
	mov r2, r7
	mov r3, r4
	add r0, r8, #0x90
	mov r1, #0xb
	bl FUN_020481c8
	add r2, r8, #0x6100
	ldrsb r1, [r2, #0xe9]
	rsb r4, r4, #0x2000
	add r3, r7, #0x20
	add r1, r8, r1, lsl #3
	add r1, r1, #0x6000
	strb r0, [r1, #0x1ad]
	ldrsb r0, [r2, #0xe9]
	add r1, r8, #0x6000
	add r0, r8, r0, lsl #3
	add r0, r0, #0x6100
	strh r4, [r0, #0xae]
	ldrsb r0, [r2, #0xe9]
	add r0, r8, r0, lsl #3
	add r0, r0, #0x6000
	str r3, [r0, #0x1a8]
	ldrsb r0, [r2, #0xe9]
	add r0, r0, #1
	strb r0, [r1, #0x1e9]
	ldrsb r0, [r2, #0xe9]
	and r0, r0, #7
	strb r0, [r1, #0x1e9]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02044f78

	arm_func_start FUN_02045064
FUN_02045064: ; 0x02045064
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r1]
	mov r0, #0x88
	strh r0, [r1, #0x8a]
	add r0, r4, #1
	strh r0, [r1, #0x88]
	strh r2, [r1, #0x8c]
	ldr r0, [sp, #0x20]
	strb r0, [r1, #0x8e]
	strb r3, [r1, #0x8f]
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _02045114
	and r0, r0, #0xff
	add r3, r0, #7
	add r2, sp, #0x20
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	bic r2, r2, #3
	mov r3, r0, asr #3
	cmp r4, #0
	add r2, r2, #4
	mov r0, #0
	ble _02045114
	add r12, r1, r3, lsl #2
	mov r4, #1
_020450D0:
	mov r3, r0, asr #2
	add r3, r0, r3, lsr #29
	mov r3, r3, asr #3
	add r5, r1, r3, lsl #2
	mov r3, r0, lsl #2
	ldr lr, [r5, #0x90]
	and r3, r3, #0x1f
	orr r3, lr, r4, lsl r3
	str r3, [r5, #0x90]
	add r2, r2, #4
	add r3, r12, r0, lsl #2
	ldr lr, [r2, #-4]
	add r0, r0, #1
	str lr, [r3, #0x90]
	ldr r3, [sp, #0x20]
	cmp r0, r3
	blt _020450D0
_02045114:
	add r0, r1, #0x88
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_02045064

	arm_func_start FUN_02045124
FUN_02045124: ; 0x02045124
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r5, #1
	bl GetCurrentMode
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, _020452D8 ; =gLogicThink
	mov r0, r7
	bl FUN_020731a4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r10, #0x6000
	ldr r0, [r0, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x36
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _020452DC ; 0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213246c
	movs r8, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r9, #0
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov132_02143114
	ldr r0, [r4]
	bl FUN_ov132_021447ec
	add r1, r10, #0x6000
	ldr r1, [r1, #0x1f4]
	mov r6, r0
	cmp r1, #0x39
	bne _02045214
	ldrsh r1, [r8]
	mov r0, r7
	bl FUN_0204a2c4
	mov r4, r0
	ldrsh r1, [r8, #2]
	mov r0, r7
	bl FUN_0204a2c4
	cmp r4, #0
	beq _020451E4
	ldrb r1, [r4]
	cmp r1, #5
	moveq r9, r5
_020451E4:
	cmp r0, #0
	beq _020451F8
	ldrb r0, [r0]
	cmp r0, #6
	moveq r9, #1
_020451F8:
	ldrb r0, [r8, #0x12]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r9, #0
	b _02045254
_02045214:
	cmp r1, #0x3a
	bne _02045254
	ldr r0, [r4]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesh r1, [r0, #8]
	cmpne r1, #0
	beq _02045254
	mov r0, r7
	bl FUN_0204a2c4
	cmp r0, #0
	beq _02045254
	ldrb r0, [r0]
	cmp r0, #7
	cmpeq r6, #1
	moveq r9, r5
_02045254:
	cmp r9, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r10, #0x6000
	ldr r0, [r0, #0x1ec]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_ov16_020f1670
	cmp r0, #0
	bne _0204528C
	bl FUN_ov16_020f17f0
	cmp r0, #0
	beq _02045294
_0204528C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02045294:
	add r0, r10, #0x6100
	ldrsb r0, [r0, #0xe8]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6100
	ldrsb r0, [r0, #0xac]
	cmp r0, #0
	bne _020452D0
	add r0, r10, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	beq _020452D0
	ldr r1, [r0, #0x224]
	cmp r1, #2
	streq r5, [r0, #0x214]
	streq r5, [r0, #0x218]
_020452D0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020452D8: .word gLogicThink
_020452DC: .word unk_02099EF0
	arm_func_end FUN_02045124

	arm_func_start FUN_020452e0
FUN_020452e0: ; 0x020452E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x6000
	ldr r0, [r0, #0x1ec]
	mov r6, #0
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl GetCurrentMode
	cmp r0, #3
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x6000
	ldr r0, [r0, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x83
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _020453A8 ; =0x020AF818
	ldrb r0, [r4]
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f1670
	cmp r0, #0
	bne _02045354
	bl FUN_ov16_020f17f0
	cmp r0, #0
	beq _0204535C
_02045354:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204535C:
	add r0, r5, #0x6100
	ldrsb r0, [r0, #0xe8]
	add r0, r5, r0, lsl #3
	add r0, r0, #0x6100
	ldrsb r0, [r0, #0xac]
	cmp r0, #0
	bne _0204539C
	add r0, r5, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	beq _0204539C
	ldr r1, [r0, #0x224]
	cmp r1, #2
	moveq r1, #1
	streq r1, [r0, #0x214]
	streq r1, [r0, #0x218]
_0204539C:
	strb r6, [r4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020453A8: .word unk_020AF818
	arm_func_end FUN_020452e0

	arm_func_start FUN_020453ac
FUN_020453ac: ; 0x020453AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_0203000c
	add r0, r4, #0x90
	bl FUN_02047ad4
	mov r0, r4
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020453ac

	arm_func_start FUN_020453e0
FUN_020453e0: ; 0x020453E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	add r3, r5, #0x5000
	add r0, r5, #4
	mov r6, #0x124
	sub r12, r4, #1
	mov r1, r4
	mov r2, r6
	add r0, r0, #0x400
	str r4, [r3, #0xad0]
	str r4, [r3, #0xad4]
	strb r4, [r5, #0x528]
	str r4, [r3, #0xaf4]
	str r12, [r3, #0xaf8]
	str r4, [r3, #0xab4]
	str r4, [r3, #0xab8]
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	add r2, r6, #0x2e0
	bl MI_CpuFill8
	add r1, r5, #0x5000
	add r2, r5, #0x5b00
	mov r3, #1
	mov r0, r5
	strb r3, [r5, #0x4cb]
	str r4, [r1, #0xb9c]
	strh r4, [r2, #0xd6]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020453e0

	arm_func_start FUN_02045458
FUN_02045458: ; 0x02045458
	bx lr
	arm_func_end FUN_02045458

	arm_func_start FUN_0204545c
FUN_0204545c: ; 0x0204545C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, #0
	add r3, r6, #0x5000
	ldr r2, _02045534 ; =0x000008BC
	mov r1, r5
	str r5, [r3, #0xad0]
	str r5, [r3, #0xad4]
	bl MI_CpuFill8
	add r2, r6, #0x5000
	mov r4, #1
	sub r7, r4, #2
	mov r3, #0x64
	mov r0, r6
	mov r1, #0x17
	strb r5, [r6, #0x528]
	strb r4, [r6, #0x5a3]
	str r5, [r2, #0xaf4]
	str r7, [r2, #0xaf8]
	str r5, [r2, #0xab4]
	str r5, [r2, #0xab8]
	str r5, [r2, #0xabc]
	str r5, [r6, #0x594]
	strb r5, [r6, #0x599]
	str r5, [r6, #0x59c]
	str r7, [r2, #0xb7c]
	str r7, [r2, #0xb80]
	strb r5, [r2, #0xbd5]
	strb r3, [r2, #0xbd4]
	str r7, [r6, #0x5c4]
	bl FUN_020455a0
	ldr r2, _02045538 ; =0x0000E4FA
	ldr r0, _0204553C ; =gL5Config
	ldr r1, _02045540 ; =0x02090124
	str r2, [r6, #0x54c]
	bl _ZN8L5Config8getParamEPc
	str r0, [r6, #0x550]
	strb r4, [r6, #0x4cb]
	add r0, r6, #0x5000
	strb r5, [r0, #0xb85]
	ldr r7, _02045544 ; =gL5Sound
	mov r1, r5
	mov r0, r7
	ldr r2, _02045548 ; =0x02090138
	mov r3, r5
	bl FUN_0202bfb8
	mov r0, r7
	mov r1, r4
	ldr r2, _0204554C ; =0x0209013C
	mov r3, r5
	bl FUN_0202bfb8
	add r0, r6, #0x5000
	strb r5, [r0, #0xbd8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02045534: .word 0x000008BC
_02045538: .word 0x0000E4FA
_0204553C: .word gL5Config
_02045540: .word unk_02090124
_02045544: .word gL5Sound
_02045548: .word unk_02090138
_0204554C: .word unk_0209013C
	arm_func_end FUN_0204545c

	arm_func_start FUN_02045550
FUN_02045550: ; 0x02045550
	add r0, r0, #0x5000
	str r1, [r0, #0xab8]
	bx lr
	arm_func_end FUN_02045550

	arm_func_start FUN_0204555c
FUN_0204555c: ; 0x0204555C
	add r0, r0, #0x5000
	str r1, [r0, #0xad0]
	str r2, [r0, #0xad4]
	bx lr
	arm_func_end FUN_0204555c

	arm_func_start FUN_0204556c
FUN_0204556c: ; 0x0204556C
	bx lr
	arm_func_end FUN_0204556c

	arm_func_start FUN_02045570
FUN_02045570: ; 0x02045570
	add r0, r0, #0x5000
	ldr r0, [r0, #0xad0]
	bx lr
	arm_func_end FUN_02045570

	arm_func_start FUN_0204557c
FUN_0204557c: ; 0x0204557C
	add r0, r0, #0x5000
	ldr r0, [r0, #0xad4]
	bx lr
	arm_func_end FUN_0204557c

	arm_func_start FUN_02045588
FUN_02045588: ; 0x02045588
	add r0, r0, #0x5000
	str r1, [r0, #0xab4]
	bx lr
	arm_func_end FUN_02045588

	arm_func_start FUN_02045594
FUN_02045594: ; 0x02045594
	add r0, r0, #0x5000
	ldr r0, [r0, #0xab4]
	bx lr
	arm_func_end FUN_02045594

	arm_func_start FUN_020455a0
FUN_020455a0: ; 0x020455A0
	add r0, r0, #0x5000
	str r1, [r0, #0xab0]
	bx lr
	arm_func_end FUN_020455a0

	arm_func_start FUN_020455ac
FUN_020455ac: ; 0x020455AC
	add r0, r0, #0x5000
	ldr r0, [r0, #0xab0]
	bx lr
	arm_func_end FUN_020455ac

	arm_func_start FUN_020455b8
FUN_020455b8: ; 0x020455B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	mov lr, r1
	mov r3, #0
	mov r0, #0x38
_020455CC:
	mla r1, r3, r0, r4
	add r1, r1, #0x4000
	ldr r2, [r1, #0xc3c]
	add r1, r4, r3
	add r3, r3, #1
	strb r2, [r1, #0x554]
	cmp r3, #0x40
	blt _020455CC
	mov r7, r4
	mov r6, lr
	mov r5, #0x40
_020455F8:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020455F8
	ldr r2, [r7]
	add r0, r4, #4
	add r1, lr, #4
	str r2, [r6]
	add r7, r0, #0x400
	add r6, r1, #0x400
	mov r5, #0x12
_02045624:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02045624
	ldr r2, [r7]
	add r0, r4, #0x128
	add r1, lr, #0x128
	str r2, [r6]
	add r5, r0, #0x400
	add r3, r1, #0x400
	mov r2, #0x10
_02045650:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02045650
	ldr r1, [r4, #0x548]
	add r0, r4, #0x154
	str r1, [lr, #0x548]
	ldr r2, [r4, #0x54c]
	add r1, lr, #0x154
	str r2, [lr, #0x54c]
	ldr r2, [r4, #0x550]
	add r5, r0, #0x400
	str r2, [lr, #0x550]
	add r3, r1, #0x400
	mov r2, #0x20
_02045698:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02045698
	ldr r0, [r4, #0x594]
	add r1, r4, #0x1a4
	str r0, [lr, #0x594]
	ldrb r0, [r4, #0x598]
	add r2, lr, #0x1a4
	add r3, r4, #0x1c8
	strb r0, [lr, #0x598]
	ldrb r6, [r4, #0x599]
	add r0, r4, #0x500
	add r12, r1, #0x400
	strb r6, [lr, #0x599]
	ldr r6, [r4, #0x59c]
	add r8, r2, #0x400
	str r6, [lr, #0x59c]
	ldrsb r1, [r0, #0xa0]
	add r5, lr, #0x1c8
	add r6, r5, #0x400
	strb r1, [lr, #0x5a0]
	ldrb r1, [r4, #0x5a1]
	add r7, r3, #0x400
	mov r5, #0xbc
	strb r1, [lr, #0x5a1]
	ldrb r1, [r4, #0x5a2]
	strb r1, [lr, #0x5a2]
	ldrsb r0, [r0, #0xa3]
	strb r0, [lr, #0x5a3]
	ldmia r12!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r0, [r4, #0x5c4]
	str r0, [lr, #0x5c4]
_02045734:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	subs r5, r5, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _02045734
	add r0, r4, #0x800
	ldrsh r2, [r0, #0xb8]
	add r1, lr, #0x800
	strh r2, [r1, #0xb8]
	ldrsh r0, [r0, #0xba]
	strh r0, [r1, #0xba]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020455b8

	arm_func_start FUN_0204576c
FUN_0204576c: ; 0x0204576C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrb r1, [r4, #0x5a2]
	mov r5, r0
	bl FUN_02045e08
	mov r8, r4
	mov r7, r5
	mov r6, #0x40
_0204578C:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _0204578C
	ldr r2, [r8]
	add r0, r4, #4
	add r1, r5, #4
	str r2, [r7]
	add r8, r0, #0x400
	add r7, r1, #0x400
	mov r6, #0x12
_020457B8:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _020457B8
	ldr r2, [r8]
	add r0, r4, #0x128
	add r1, r5, #0x128
	str r2, [r7]
	add r6, r0, #0x400
	add r3, r1, #0x400
	mov r2, #0x10
_020457E4:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020457E4
	ldr r1, [r4, #0x548]
	add r0, r4, #0x154
	str r1, [r5, #0x548]
	ldr r2, [r4, #0x54c]
	add r1, r5, #0x154
	str r2, [r5, #0x54c]
	ldr r2, [r4, #0x550]
	add r6, r0, #0x400
	str r2, [r5, #0x550]
	add r3, r1, #0x400
	mov r2, #0x20
_0204582C:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0204582C
	ldr r0, [r4, #0x594]
	add r1, r4, #0x1a4
	str r0, [r5, #0x594]
	ldrb r0, [r4, #0x598]
	add r2, r5, #0x1a4
	add r3, r4, #0x1c8
	strb r0, [r5, #0x598]
	ldrb r6, [r4, #0x599]
	add r0, r4, #0x500
	add r12, r1, #0x400
	strb r6, [r5, #0x599]
	ldr r6, [r4, #0x59c]
	add r8, r2, #0x400
	str r6, [r5, #0x59c]
	ldrsb r1, [r0, #0xa0]
	add lr, r5, #0x1c8
	add r6, lr, #0x400
	strb r1, [r5, #0x5a0]
	ldrb r1, [r4, #0x5a1]
	add r7, r3, #0x400
	mov lr, #0xbc
	strb r1, [r5, #0x5a1]
	ldrb r1, [r4, #0x5a2]
	strb r1, [r5, #0x5a2]
	ldrsb r0, [r0, #0xa3]
	strb r0, [r5, #0x5a3]
	ldmia r12!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r0, [r4, #0x5c4]
	str r0, [r5, #0x5c4]
_020458C8:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	subs lr, lr, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _020458C8
	add r0, r4, #0x800
	ldrsh r2, [r0, #0xb8]
	add r1, r5, #0x800
	strh r2, [r1, #0xb8]
	ldrsh r0, [r0, #0xba]
	strh r0, [r1, #0xba]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204576c

	arm_func_start FUN_02045900
FUN_02045900: ; 0x02045900
	add r0, r0, #0xbc
	add r0, r0, #0x800
	bx lr
	arm_func_end FUN_02045900

	arm_func_start FUN_0204590c
FUN_0204590c: ; 0x0204590C
	mov r12, #0
	mov r1, #0x38
_02045914:
	mla r2, r12, r1, r0
	add r3, r0, r12
	add r12, r12, #1
	ldrb r3, [r3, #0x554]
	add r2, r2, #0x4000
	cmp r12, #0x40
	str r3, [r2, #0xc3c]
	blt _02045914
	bx lr
	arm_func_end FUN_0204590c

	arm_func_start FUN_02045938
FUN_02045938: ; 0x02045938
	add r3, r0, #0x128
	str r2, [r0, #0x548]
	ldr r12, _0204594C ; =STD_CopyString
	add r0, r3, #0x400
	bx r12
_0204594C: .word STD_CopyString
	arm_func_end FUN_02045938

	arm_func_start FUN_02045950
FUN_02045950: ; 0x02045950
	add r0, r0, #0x128
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_02045950

	arm_func_start FUN_0204595c
FUN_0204595c: ; 0x0204595C
	add r0, r0, #0x5000
	str r1, [r0, #0xaf8]
	bx lr
	arm_func_end FUN_0204595c

	arm_func_start FUN_02045968
FUN_02045968: ; 0x02045968
	add r0, r0, #0x5000
	ldr r0, [r0, #0xaf8]
	bx lr
	arm_func_end FUN_02045968

	arm_func_start FUN_02045974
FUN_02045974: ; 0x02045974
	add r0, r0, #0x5000
	str r1, [r0, #0xaf4]
	bx lr
	arm_func_end FUN_02045974

	arm_func_start FUN_02045980
FUN_02045980: ; 0x02045980
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r0, r6, #0x1e
	add r12, r6, #0x5000
	mvn r7, #0
	add r0, r0, #0x5b00
	mov r5, r2
	mov r4, r3
	strb r7, [r12, #0xb3e]
	bl STD_CopyString
	ldr r0, _020459FC ; =0x0477D1A9
	add r1, r6, #0x5000
	umull r8, r7, r4, r0
	mov lr, r4, asr #0x1f
	mov r12, #0
	ldr r4, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	mla r7, lr, r0, r7
	adds r0, r8, #0x80000000
	adc r7, r7, #0
	strb r12, [r1, #0xb1d]
	add r0, r6, #0x5b00
	ldrsb r0, [r0, #0x1d]
	strb r5, [r1, #0xb3f]
	str r7, [r1, #0xb70]
	strb r0, [r1, #0xb1c]
	str r4, [r1, #0xb40]
	str r3, [r1, #0xb44]
	str r2, [r1, #0xb48]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020459FC: .word 0x0477D1A9
	arm_func_end FUN_02045980

	arm_func_start FUN_02045a00
FUN_02045a00: ; 0x02045A00
	add r1, r0, #0x5b00
	ldrsb r1, [r1, #0x3e]
	cmp r1, #0
	moveq r0, #0
	addne r1, r0, #0x5000
	addne r0, r0, #0x2fc
	movne r2, #0
	strneb r2, [r1, #0xb3e]
	addne r0, r0, #0x5800
	bx lr
	arm_func_end FUN_02045a00

	arm_func_start FUN_02045a28
FUN_02045a28: ; 0x02045A28
	stmfd sp!, {r3, lr}
	ldr r2, _02045A5C ; =0x0B60B60B
	mov r3, #0xb6
	umull lr, r12, r1, r2
	mla r12, r1, r3, r12
	mov r1, r1, asr #0x1f
	mla r12, r1, r2, r12
	adds r1, lr, #0
	adc r1, r12, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x54c]
	ldmfd sp!, {r3, pc}
_02045A5C: .word 0x0B60B60B
	arm_func_end FUN_02045a28

	arm_func_start FUN_02045a60
FUN_02045a60: ; 0x02045A60
	ldr r0, [r0, #0x54c]
	bx lr
	arm_func_end FUN_02045a60

	arm_func_start FUN_02045a68
FUN_02045a68: ; 0x02045A68
	str r1, [r0, #0x550]
	bx lr
	arm_func_end FUN_02045a68

	arm_func_start FUN_02045a70
FUN_02045a70: ; 0x02045A70
	ldr r0, [r0, #0x550]
	bx lr
	arm_func_end FUN_02045a70

	arm_func_start FUN_02045a78
FUN_02045a78: ; 0x02045A78
	strb r1, [r0, #0x5a3]
	bx lr
	arm_func_end FUN_02045a78

	arm_func_start FUN_02045a80
FUN_02045a80: ; 0x02045A80
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, [sp, #0x10]
	mov r5, #0
	mvn r12, #0
_02045A90:
	cmp r3, r12
	beq _02045AA0
	cmp r3, r5
	bne _02045AD4
_02045AA0:
	add r4, r0, r5, lsl #3
	ldr lr, [r4, #0x5a4]
	cmp r1, lr
	ldrne lr, [r4, #0x5a8]
	cmpne lr, #0
	beq _02045AC0
	cmp r6, #0
	beq _02045AD4
_02045AC0:
	add r0, r0, r5, lsl #3
	str r1, [r0, #0x5a4]
	str r2, [r0, #0x5a8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02045AD4:
	add r5, r5, #1
	cmp r5, #4
	blt _02045A90
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02045a80

	arm_func_start FUN_02045ae8
FUN_02045ae8: ; 0x02045AE8
	add r2, r0, #0x500
	ldrsb r2, [r2, #0xa3]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	mov r12, #0
_02045B00:
	add r3, r0, r12, lsl #3
	ldr r2, [r3, #0x5a8]
	cmp r2, #0
	beq _02045B2C
	sub r2, r2, r1
	cmp r2, #0
	str r2, [r3, #0x5a8]
	movle r0, #0
	strle r0, [r3, #0x5a8]
	ldrle r0, [r3, #0x5a4]
	bxle lr
_02045B2C:
	add r12, r12, #1
	cmp r12, #4
	blt _02045B00
	mov r0, #0
	bx lr
	arm_func_end FUN_02045ae8

	arm_func_start FUN_02045b40
FUN_02045b40: ; 0x02045B40
	add r0, r0, #0x5000
	str r1, [r0, #0xb74]
	str r2, [r0, #0xb78]
	bx lr
	arm_func_end FUN_02045b40

	arm_func_start FUN_02045b50
FUN_02045b50: ; 0x02045B50
	cmp r1, #0
	addne r3, r0, #0x5000
	ldrne r3, [r3, #0xb74]
	strne r3, [r1]
	cmp r2, #0
	addne r0, r0, #0x5000
	ldrne r0, [r0, #0xb78]
	strne r0, [r2]
	bx lr
	arm_func_end FUN_02045b50

	arm_func_start FUN_02045b74
FUN_02045b74: ; 0x02045B74
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r12, r5
	mov r3, r5
_02045B84:
	add lr, r0, r3, lsl #2
	ldrb r4, [lr, #0x5c8]
	cmp r4, #0
	beq _02045BD4
	cmp r1, r4
	bne _02045BAC
	add lr, lr, #0x500
	ldrh r4, [lr, #0xca]
	cmp r2, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_02045BAC:
	add r4, r0, r3, lsl #2
	ldrb r4, [r4, #0x5c9]
	tst r4, #0x20
	beq _02045BC8
	cmp r5, #0
	moveq r12, r3
	add r5, r5, #1
_02045BC8:
	add r3, r3, #1
	cmp r3, #0xbc
	blt _02045B84
_02045BD4:
	cmp r1, #6
	bge _02045C28
	cmp r5, #0x14
	blt _02045C28
	cmp r12, #0xbb
	bge _02045C24
_02045BEC:
	add r4, r0, r12, lsl #2
	ldrb lr, [r4, #0x5cc]
	add r3, r4, #0x500
	strb lr, [r4, #0x5c8]
	ldrb lr, [r4, #0x5cd]
	strb lr, [r4, #0x5c9]
	ldrh lr, [r3, #0xce]
	strh lr, [r3, #0xca]
	ldrb r3, [r4, #0x5c8]
	cmp r3, #0
	beq _02045C24
	add r12, r12, #1
	cmp r12, #0xbb
	blt _02045BEC
_02045C24:
	mov r3, r12
_02045C28:
	add lr, r0, r3, lsl #2
	strb r1, [lr, #0x5c8]
	mov r12, #1
	strb r12, [lr, #0x5c9]
	add r12, lr, #0x500
	strh r2, [r12, #0xca]
	cmp r1, #0xb
	addlt r2, r0, #0xc9
	addlt r12, r2, #0x500
	ldrltb r2, [r12, r3, lsl #2]
	orrlt r2, r2, #0x10
	strltb r2, [r12, r3, lsl #2]
	cmp r1, #6
	addlt r0, r0, #0xc9
	addlt r1, r0, #0x500
	ldrltb r0, [r1, r3, lsl #2]
	orrlt r0, r0, #0x20
	strltb r0, [r1, r3, lsl #2]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02045b74

	arm_func_start FUN_02045c74
FUN_02045c74: ; 0x02045C74
	mov r3, #0
_02045C78:
	add r2, r0, r3, lsl #2
	ldrb r2, [r2, #0x5c8]
	cmp r1, r2
	bne _02045CA0
	add r0, r0, #0xc9
	add r1, r0, #0x500
	ldrb r0, [r1, r3, lsl #2]
	orr r0, r0, #2
	strb r0, [r1, r3, lsl #2]
	bx lr
_02045CA0:
	add r3, r3, #1
	cmp r3, #0xbc
	blt _02045C78
	bx lr
	arm_func_end FUN_02045c74

	arm_func_start FUN_02045cb0
FUN_02045cb0: ; 0x02045CB0
	add r0, r0, #0x1c8
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_02045cb0

	arm_func_start FUN_02045cbc
FUN_02045cbc: ; 0x02045CBC
	cmp r1, #0
	ldrne r1, [r0, #0x5c4]
	mov r3, #1
	orrne r1, r1, r3, lsl r2
	mvneq r1, r3, lsl r2
	ldreq r2, [r0, #0x5c4]
	andeq r1, r2, r1
	str r1, [r0, #0x5c4]
	bx lr
	arm_func_end FUN_02045cbc

	arm_func_start FUN_02045ce0
FUN_02045ce0: ; 0x02045CE0
	ldr r2, [r0, #0x5c4]
	mov r0, #1
	and r0, r2, r0, lsl r1
	bx lr
	arm_func_end FUN_02045ce0

	arm_func_start FUN_02045cf0
FUN_02045cf0: ; 0x02045CF0
	add r0, r0, #0x800
	strh r1, [r0, #0xb8]
	strh r2, [r0, #0xba]
	bx lr
	arm_func_end FUN_02045cf0

	arm_func_start FUN_02045d00
FUN_02045d00: ; 0x02045D00
	add r3, r0, #0x800
	ldrsh r12, [r3, #0xb8]
	cmp r12, #0
	movle r12, #0xe0
	strleh r12, [r3, #0xb8]
	add r3, r0, #0x800
	ldrsh r3, [r3, #0xb8]
	cmp r3, #0xe0
	movgt r3, #0xe0
	bgt _02045D30
	cmp r3, #1
	movlt r3, #1
_02045D30:
	strh r3, [r1]
	add r0, r0, #0x800
	ldrsh r0, [r0, #0xba]
	cmp r0, #0xa0
	movgt r0, #0xa0
	bgt _02045D50
	cmp r0, #1
	movlt r0, #1
_02045D50:
	strh r0, [r2]
	bx lr
	arm_func_end FUN_02045d00

	arm_func_start FUN_02045d58
FUN_02045d58: ; 0x02045D58
	cmp r1, #0
	add r1, r0, #0x500
	ldrsb r1, [r1, #0xa0]
	orrne r1, r1, #1
	biceq r1, r1, #1
	strb r1, [r0, #0x5a0]
	bx lr
	arm_func_end FUN_02045d58

	arm_func_start FUN_02045d74
FUN_02045d74: ; 0x02045D74
	ldrb r1, [r0, #0x5a1]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #0x500
	ldrsb r0, [r0, #0xa0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02045d74

	arm_func_start FUN_02045d9c
FUN_02045d9c: ; 0x02045D9C
	cmp r1, #0
	add r1, r0, #0x500
	ldrsb r1, [r1, #0xa0]
	orrne r1, r1, #2
	biceq r1, r1, #2
	strb r1, [r0, #0x5a0]
	bx lr
	arm_func_end FUN_02045d9c

	arm_func_start FUN_02045db8
FUN_02045db8: ; 0x02045DB8
	ldrb r1, [r0, #0x5a1]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #0x500
	ldrsb r0, [r0, #0xa0]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02045db8

	arm_func_start FUN_02045de0
FUN_02045de0: ; 0x02045DE0
	add r0, r0, #0x5000
	ldr r0, [r0, #0xb9c]
	bx lr
	arm_func_end FUN_02045de0

	arm_func_start FUN_02045dec
FUN_02045dec: ; 0x02045DEC
	add r0, r0, #0x5000
	str r1, [r0, #0xb9c]
	bx lr
	arm_func_end FUN_02045dec

	arm_func_start FUN_02045df8
FUN_02045df8: ; 0x02045DF8
	strb r1, [r0, #0x5a1]
	bx lr
	arm_func_end FUN_02045df8

	arm_func_start FUN_02045e00
FUN_02045e00: ; 0x02045E00
	ldrb r0, [r0, #0x5a1]
	bx lr
	arm_func_end FUN_02045e00

	arm_func_start FUN_02045e08
FUN_02045e08: ; 0x02045E08
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r4, r1
	ldr r0, _02045EBC ; =gL5Config
	ldr r1, _02045EC0 ; =0x02090140
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	ldr r1, _02045EC4 ; =0x02090148
	ldrb r0, [r5, #0x5a2]
	ldrne r1, _02045EC8 ; =0x02090168
	cmp r0, r4
	beq _02045E90
	ldr r3, _02045ECC ; =gL5Allocator
	add r2, r5, #0xbb0
	ldr r0, [r3]
	add r2, r2, #0x5000
	cmp r0, #0
	str r2, [sp, #0x10]
	moveq r0, #0
	beq _02045E88
	sub r12, r4, #1
	mov r2, #0x24
	mul lr, r12, r2
	str lr, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_02045E88:
	cmp r0, #0
	moveq r4, #0
_02045E90:
	ldrb r0, [r5, #0x5a1]
	mov r1, #1
	strb r4, [r5, #0x5a2]
	cmp r0, #0
	addeq r0, r5, #0x5b00
	ldreqh r0, [r0, #0xb0]
	streqb r0, [r5, #0x5a1]
	add r0, r5, #0x5000
	str r1, [r0, #0xb9c]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02045EBC: .word gL5Config
_02045EC0: .word unk_02090140
_02045EC4: .word unk_02090148
_02045EC8: .word unk_02090168
_02045ECC: .word gL5Allocator
	arm_func_end FUN_02045e08

	arm_func_start FUN_02045ed0
FUN_02045ed0: ; 0x02045ED0
	add r0, r0, #0xbb0
	add r0, r0, #0x5000
	bx lr
	arm_func_end FUN_02045ed0

	arm_func_start FUN_02045edc
FUN_02045edc: ; 0x02045EDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x58
	mov r7, r0
	mov r4, r1
	ldr r0, _02046090 ; =gL5Config
	ldr r1, _02046094 ; =0x02090188
	mov r5, #0
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	ldr r1, _02046098 ; =0x02090190
	add r0, r7, #0xbb0
	ldrne r1, _0204609C ; =0x020901B0
	cmp r4, #0
	add r6, r0, #0x5000
	ldrneb r0, [r7, #0x5a2]
	cmpne r0, r4
	beq _02045F6C
	ldr r3, _020460A0 ; =gL5Allocator
	add r2, sp, #0x34
	ldr r0, [r3]
	str r2, [sp, #0x10]
	cmp r0, #0
	moveq r0, #0
	beq _02045F64
	sub r4, r4, #1
	mov r2, #0x24
	mul r7, r4, r2
	str r7, [sp]
	str r2, [sp, #4]
	add r2, sp, #0x10
	str r5, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_02045F64:
	cmp r0, #0
	addne r6, sp, #0x34
_02045F6C:
	mov r1, #0
	add r0, sp, #0x14
_02045F74:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #8
	blt _02045F74
	mov r7, #0
	add r4, sp, #0x14
_02045F8C:
	mov r0, r5
	mov r2, r7
	cmp r7, #8
	bge _02045FB8
_02045F9C:
	ldr r1, [r4, r2, lsl #2]
	add r2, r2, #1
	add r1, r6, r1, lsl #2
	ldrh r1, [r1, #6]
	cmp r2, #8
	add r0, r0, r1
	blt _02045F9C
_02045FB8:
	cmp r0, #0
	beq _02046010
	bl FUN_ov16_020ef928
	mov r2, r7
	cmp r7, #7
	bge _02045FF4
_02045FD0:
	ldr r1, [r4, r2, lsl #2]
	add r1, r6, r1, lsl #2
	ldrh r1, [r1, #6]
	sub r0, r0, r1
	cmp r0, #0
	ble _02045FF4
	add r2, r2, #1
	cmp r2, #7
	blt _02045FD0
_02045FF4:
	ldr r1, [r4, r7, lsl #2]
	ldr r0, [r4, r2, lsl #2]
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	str r1, [r4, r2, lsl #2]
	cmp r7, #7
	blt _02045F8C
_02046010:
	ldr r9, _020460A4 ; =gLogicThink
	mov r7, #0
	add r4, sp, #0x14
_0204601C:
	ldr r0, [r4, r7, lsl #2]
	add r0, r6, r0, lsl #2
	ldrh r8, [r0, #4]
	cmp r8, #0
	beq _02046048
	mov r0, r9
	mov r1, r8
	bl FUN_0207290c
	cmp r0, #0
	bne _02046054
	mov r8, r5
_02046048:
	add r7, r7, #1
	cmp r7, #7
	blt _0204601C
_02046054:
	cmp r8, #0
	bne _02046084
	mov r2, #0
	add r1, sp, #0x14
_02046064:
	ldr r0, [r1, r2, lsl #2]
	add r0, r6, r0, lsl #2
	ldrh r8, [r0, #4]
	cmp r8, #0
	bne _02046084
	add r2, r2, #1
	cmp r2, #7
	blt _02046064
_02046084:
	mov r0, r8
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02046090: .word gL5Config
_02046094: .word unk_02090188
_02046098: .word unk_02090190
_0204609C: .word unk_020901B0
_020460A0: .word gL5Allocator
_020460A4: .word gLogicThink
	arm_func_end FUN_02045edc

	arm_func_start FUN_020460a8
FUN_020460a8: ; 0x020460A8
	add r0, r0, #0x5000
	mov r3, #1
	str r3, [r0, #0xba0]
	str r1, [r0, #0xba8]
	str r2, [r0, #0xbac]
	bx lr
	arm_func_end FUN_020460a8

	arm_func_start FUN_020460c0
FUN_020460c0: ; 0x020460C0
	add r0, r0, #0x5000
	ldr r3, [r0, #0xba8]
	str r3, [r1]
	ldr r0, [r0, #0xbac]
	str r0, [r2]
	bx lr
	arm_func_end FUN_020460c0

	arm_func_start FUN_020460d8
FUN_020460d8: ; 0x020460D8
	add r2, r0, #0x5000
	ldr r0, [r2, #0xba0]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r2, #0xba0]
	bx lr
	arm_func_end FUN_020460d8

	arm_func_start FUN_020460f0
FUN_020460f0: ; 0x020460F0
	add r0, r0, #0x5000
	str r1, [r0, #0xba4]
	bx lr
	arm_func_end FUN_020460f0

	arm_func_start FUN_020460fc
FUN_020460fc: ; 0x020460FC
	add r0, r0, #0x5000
	ldr r0, [r0, #0xba4]
	bx lr
	arm_func_end FUN_020460fc

	arm_func_start FUN_02046108
FUN_02046108: ; 0x02046108
	stmfd sp!, {r3, lr}
	cmp r1, #0x11
	moveq r0, #3
	ldmeqfd sp!, {r3, pc}
	ldr lr, _02046154 ; =0x30C30C31
	mov r12, r1, lsr #0x1f
	smull r0, r2, lr, r1
	add r2, r12, r2, asr #2
	mov r3, #0x15
	smull r0, r2, r3, r2
	sub r2, r1, r0
	cmp r2, #0x12
	subge r0, r2, #0x12
	smulllt r0, r1, lr, r1
	ldrlt r0, _02046158 ; =0x0208C390
	addlt r1, r12, r1, asr #2
	ldrlt r0, [r0, r1, lsl #2]
	addlt r0, r2, r0
	ldmfd sp!, {r3, pc}
_02046154: .word 0x30C30C31
_02046158: .word unk_0208C390
	arm_func_end FUN_02046108

	arm_func_start FUN_0204615c
FUN_0204615c: ; 0x0204615C
	ldr r0, _02046174 ; =0x0208C390
	add r2, r1, #1
	ldr r2, [r0, r2, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	sub r0, r2, r0
	bx lr
_02046174: .word unk_0208C390
	arm_func_end FUN_0204615c

	arm_func_start FUN_02046178
FUN_02046178: ; 0x02046178
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046108
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r1, r1, asr #3
	add r2, r4, r1, lsl #3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r1, r1, r0, ror #29
	ldrb r2, [r2, #4]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046178

	arm_func_start FUN_020461b4
FUN_020461b4: ; 0x020461B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046108
	add r0, r4, r0, lsl #3
	ldr r0, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020461b4

	arm_func_start FUN_020461cc
FUN_020461cc: ; 0x020461CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r3
	bl FUN_02046108
	mov r7, r0
	mov r1, r4
	mov r0, r6
	mov r4, r7
	bl FUN_02046108
	cmp r7, r0
	movgt r4, r0
	movgt r0, r7
	cmp r4, r0
	bgt _02046254
	mov r3, #1
_0204620C:
	mov r1, r4, asr #2
	add r1, r4, r1, lsr #29
	mov r12, r1, asr #3
	mov r2, r4, lsr #0x1f
	rsb r1, r2, r4, lsl #29
	add r1, r2, r1, ror #29
	add r12, r6, r12, lsl #3
	mov r1, r3, lsl r1
	ldrb r2, [r12, #4]
	and r1, r1, #0xff
	cmp r5, #0
	orr r1, r2, r1
	strb r1, [r12, #4]
	addne r1, r6, r4, lsl #3
	add r4, r4, #1
	strne r5, [r1, #8]
	cmp r4, r0
	ble _0204620C
_02046254:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020461cc

	arm_func_start FUN_0204625c
FUN_0204625c: ; 0x0204625C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_02046108
	mov r6, r0
	mov r1, r4
	mov r0, r5
	mov r4, r6
	bl FUN_02046108
	cmp r6, r0
	movgt r4, r0
	movgt r0, r6
	cmp r4, r0
	ldmgtfd sp!, {r4, r5, r6, pc}
	mov r12, #1
	mov r3, #0
_0204629C:
	mov r1, r4, asr #2
	add r1, r4, r1, lsr #29
	mov r2, r4, lsr #0x1f
	mov lr, r1, asr #3
	rsb r1, r2, r4, lsl #29
	add r6, r5, lr, lsl #3
	add r1, r2, r1, ror #29
	mvn r2, r12, lsl r1
	add r1, r5, r4, lsl #3
	add r4, r4, #1
	ldrb lr, [r6, #4]
	and r2, r2, #0xff
	cmp r4, r0
	and r2, lr, r2
	strb r2, [r6, #4]
	str r3, [r1, #8]
	ble _0204629C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204625c

	arm_func_start FUN_020462e4
FUN_020462e4: ; 0x020462E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	bl FUN_02046108
	cmp r4, #0
	addne r0, r5, r0, lsl #3
	strne r4, [r0, #8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020462e4

	arm_func_start FUN_02046304
FUN_02046304: ; 0x02046304
	strh r1, [r0, #2]
	bx lr
	arm_func_end FUN_02046304

	arm_func_start FUN_0204630c
FUN_0204630c: ; 0x0204630C
	ldrh r0, [r0, #2]
	bx lr
	arm_func_end FUN_0204630c

	arm_func_start FUN_02046314
FUN_02046314: ; 0x02046314
	str r1, [r0, #0x594]
	cmp r1, #0
	addne r0, r0, #0x5000
	mvnne r1, #0
	strne r1, [r0, #0xb7c]
	strne r1, [r0, #0xb80]
	bx lr
	arm_func_end FUN_02046314

	arm_func_start FUN_02046330
FUN_02046330: ; 0x02046330
	ldr r0, [r0, #0x594]
	bx lr
	arm_func_end FUN_02046330

	arm_func_start FUN_02046338
FUN_02046338: ; 0x02046338
	add r0, r0, #0x37c
	add r0, r0, #0x5800
	bx lr
	arm_func_end FUN_02046338

	arm_func_start FUN_02046344
FUN_02046344: ; 0x02046344
	add r0, r0, #0x1b80
	add r0, r0, #0x4000
	bx lr
	arm_func_end FUN_02046344

	arm_func_start FUN_02046350
FUN_02046350: ; 0x02046350
	str r1, [r0, #0x59c]
	bx lr
	arm_func_end FUN_02046350

	arm_func_start FUN_02046358
FUN_02046358: ; 0x02046358
	ldr r0, [r0, #0x59c]
	bx lr
	arm_func_end FUN_02046358

	arm_func_start FUN_02046360
FUN_02046360: ; 0x02046360
	ldrb r0, [r0, #0x598]
	bx lr
	arm_func_end FUN_02046360

	arm_func_start FUN_02046368
FUN_02046368: ; 0x02046368
	strb r1, [r0, #0x598]
	bx lr
	arm_func_end FUN_02046368

	arm_func_start FUN_02046370
FUN_02046370: ; 0x02046370
	strb r1, [r0, #0x599]
	bx lr
	arm_func_end FUN_02046370

	arm_func_start FUN_02046378
FUN_02046378: ; 0x02046378
	ldrb r0, [r0, #0x599]
	bx lr
	arm_func_end FUN_02046378

	arm_func_start FUN_02046380
FUN_02046380: ; 0x02046380
	stmfd sp!, {r3, lr}
	add r2, r0, #0x85
	add lr, r2, #0x5b00
	mov r12, #0xa
_02046390:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r1, r1, #2
	subs r12, r12, #1
	strb r2, [lr, #1]
	strb r3, [lr], #2
	bne _02046390
	add r0, r0, #0x85
	add r0, r0, #0x5b00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02046380

	arm_func_start FUN_020463b8
FUN_020463b8: ; 0x020463B8
	add r0, r0, #0xf8
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_020463b8

	arm_func_start FUN_020463c4
FUN_020463c4: ; 0x020463C4
	add r0, r0, #0x5000
	strb r1, [r0, #0xbd5]
	bx lr
	arm_func_end FUN_020463c4

	arm_func_start FUN_020463d0
FUN_020463d0: ; 0x020463D0
	add r0, r0, #0x5000
	ldrb r0, [r0, #0xbd5]
	bx lr
	arm_func_end FUN_020463d0

	arm_func_start FUN_020463dc
FUN_020463dc: ; 0x020463DC
	add r0, r0, #0x5000
	strb r1, [r0, #0xbd4]
	bx lr
	arm_func_end FUN_020463dc

	arm_func_start FUN_020463e8
FUN_020463e8: ; 0x020463E8
	add r0, r0, #0x5000
	ldrb r0, [r0, #0xbd4]
	bx lr
	arm_func_end FUN_020463e8

	arm_func_start FUN_020463f4
FUN_020463f4: ; 0x020463F4
	stmfd sp!, {r4, lr}
	ldr r1, _02046410 ; =0x02090204
	mov r4, r0
	str r1, [r4]
	bl FUN_0204665c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02046410: .word unk_02090204
	arm_func_end FUN_020463f4

	arm_func_start FUN_02046414
FUN_02046414: ; 0x02046414
	stmfd sp!, {r4, lr}
	ldr r1, _02046438 ; =0x02090204
	mov r4, r0
	str r1, [r4]
	bl FUN_0204665c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02046438: .word unk_02090204
	arm_func_end FUN_02046414

	arm_func_start FUN_0204643c
FUN_0204643c: ; 0x0204643C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	ldr r1, _020464EC ; =0x020B5BF8
	str r5, [r4, #0x58]
	str r5, [r4, #0x60]
	str r5, [r4, #0x5c]
	strb r5, [r4, #0x67]
	strb r5, [r4, #0x66]
	add r0, r4, #4
	strb r5, [r1]
	bl OS_GetOwnerInfo
	add r0, r4, #0x2bc
	bl OS_GetMacAddress
	ldr r0, _020464F0 ; =0x020901D0
	add r1, r4, #0x2e0
	ldr r0, [r0, #0x10]
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r4, #0xc2
	ldr r1, _020464F4 ; =0x0209020C
	add r0, r0, #0x200
	bl sprintf
	mov r0, r5
	ldr r1, _020464F8 ; =0x0209AA60
	mov r2, #0x1e4
	bl MIi_CpuClearFast
	mov r0, r5
	ldr r1, _020464FC ; =0x0209E6C0
	mov r2, #0xf00
	bl MIi_CpuClearFast
	ldr r1, _02046500 ; =0x0209A10C
	ldr r0, _02046504 ; =0x0209A138
	str r5, [r1]
	str r5, [r0]
	strb r5, [r4, #0x88]
	mov r0, #0x78
	str r0, [r4, #0x78]
	str r0, [r4, #0x7c]
	add r0, r0, r0, lsl #1
	add r0, r0, #0x78
	add r0, r0, #4
	str r0, [r4, #0x90]
	ldmfd sp!, {r3, r4, r5, pc}
_020464EC: .word unk_020B5BF8
_020464F0: .word unk_020901D0
_020464F4: .word unk_0209020C
_020464F8: .word unk_0209AA60
_020464FC: .word unk_0209E6C0
_02046500: .word unk_0209A10C
_02046504: .word unk_0209A138
	arm_func_end FUN_0204643c

	arm_func_start FUN_02046508
FUN_02046508: ; 0x02046508
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r4, r3
	ldr r5, [r7, #0x78]
	ldr r3, [r7, #0x7c]
	sub r0, r4, #1
	mla r0, r3, r0, r5
	ldrb r12, [sp, #0x18]
	ldr r8, _020465EC ; =0x020A18A0
	mov r6, r1
	add r3, r0, #4
	ldr r1, _020465F0 ; =gL5Allocator
	mov r0, r8
	mov r5, r2
	strb r12, [r7, #0x65]
	str r3, [r7, #0x90]
	bl FUN_0203df88
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r3, r4
	ldr r2, [sp, #0x1c]
	bl FUN_0203e004
	mov r2, #0
	ldrb r1, [sp, #0x18]
	mov r4, r0
	strb r2, [r7, #0x97]
	cmp r1, #0
	strb r2, [r7, #0x96]
	strb r2, [r7, #0x95]
	strb r2, [r7, #0x94]
	bne _0204658C
	ldr r0, _020465F4 ; =FUN_02047150
	bl FUN_0203ea40
_0204658C:
	cmp r4, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	add r1, r7, #0x2f0
	mov r2, #0x11
	strb r6, [r7, #0x301]
	bl MI_CpuCopy8
	ldr r0, _020465F8 ; =0x020A0640
	add r1, r7, #0x2e0
	ldrb r0, [r0, #0x89]
	mov r2, #0x64
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	strb r0, [r7, #0x305]
	ldr r0, _020465EC ; =0x020A18A0
	bl FUN_0203e26c
	mov r0, r7
	bl FUN_020466a0
	mov r0, r7
	bl FUN_02046d60
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020465EC: .word unk_020A18A0
_020465F0: .word gL5Allocator
_020465F4: .word FUN_02047150
_020465F8: .word unk_020A0640
	arm_func_end FUN_02046508

	arm_func_start FUN_020465fc
FUN_020465fc: ; 0x020465FC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02046658 ; =0x020A18A0
	mov r5, r0
	mov r0, r4
	bl FUN_0203e1d0
	cmp r0, #0
	beq _02046630
_02046618:
	mov r0, r4
	bl FUN_0203e3f0
	mov r0, r4
	bl FUN_0203e52c
	cmp r0, #0
	beq _02046618
_02046630:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0204667c
	str r4, [r5, #0x60]
	str r4, [r5, #0x5c]
	strb r4, [r5, #0x67]
	strb r4, [r5, #0x66]
	strb r4, [r5, #0x65]
	ldmfd sp!, {r3, r4, r5, pc}
_02046658: .word unk_020A18A0
	arm_func_end FUN_020465fc

	arm_func_start FUN_0204665c
FUN_0204665c: ; 0x0204665C
	ldr r12, _02046664 ; =FUN_020465fc
	bx r12
_02046664: .word FUN_020465fc
	arm_func_end FUN_0204665c

	arm_func_start FUN_02046668
FUN_02046668: ; 0x02046668
	ldr r0, _02046674 ; =0x020A18A0
	ldr r12, _02046678 ; =FUN_0203e358
	bx r12
_02046674: .word unk_020A18A0
_02046678: .word FUN_0203e358
	arm_func_end FUN_02046668

	arm_func_start FUN_0204667c
FUN_0204667c: ; 0x0204667C
	str r1, [r0, #0x58]
	cmp r1, #0
	ldreq r0, _02046694 ; =0x0209A0F8
	moveq r1, #1
	streq r1, [r0]
	bx lr
_02046694: .word unk_0209A0F8
	arm_func_end FUN_0204667c

	arm_func_start FUN_02046698
FUN_02046698: ; 0x02046698
	ldr r0, [r0, #0x58]
	bx lr
	arm_func_end FUN_02046698

	arm_func_start FUN_020466a0
FUN_020466a0: ; 0x020466A0
	mov r3, #0
	mov r2, r3
_020466A8:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x27c]
	cmp r3, #0x10
	blt _020466A8
	bx lr
	arm_func_end FUN_020466a0

	arm_func_start FUN_020466c0
FUN_020466c0: ; 0x020466C0
	stmfd sp!, {r3, lr}
	ldr r0, _020466E0 ; =0x020A18A0
	bl FUN_0203e208
	cmp r0, #0
	movlt r0, #0
	cmp r0, #3
	movgt r0, #3
	ldmfd sp!, {r3, pc}
_020466E0: .word unk_020A18A0
	arm_func_end FUN_020466c0

	arm_func_start FUN_020466e4
FUN_020466e4: ; 0x020466E4
	stmfd sp!, {r3, lr}
	bl FUN_02046698
	cmp r0, #0xb
	cmpne r0, #5
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020466e4

	arm_func_start FUN_02046700
FUN_02046700: ; 0x02046700
	stmfd sp!, {r3, lr}
	bl FUN_02046698
	cmp r0, #0
	cmpne r0, #0xc
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02046700

	arm_func_start FUN_0204671c
FUN_0204671c: ; 0x0204671C
	ldr r0, _02046728 ; =0x020A18A0
	ldr r12, _0204672C ; =FUN_0203E1FC
	bx r12
_02046728: .word unk_020A18A0
_0204672C: .word FUN_0203E1FC
	arm_func_end FUN_0204671c

	arm_func_start FUN_02046730
FUN_02046730: ; 0x02046730
	ldr r0, _0204673C ; =0x020A18A0
	ldr r12, _02046740 ; =FUN_0203E1DC
	bx r12
_0204673C: .word unk_020A18A0
_02046740: .word FUN_0203E1DC
	arm_func_end FUN_02046730

	arm_func_start FUN_02046744
FUN_02046744: ; 0x02046744
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x65]
	cmp r1, #0
	bne _02046788
	ldr r1, [r0, #0x5c]
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	ldreqh r0, [r0, #0x6a]
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020467A0 ; =0x020A18A0
	bl FUN_0203e1e8
	orr r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
_02046788:
	ldr r0, _020467A0 ; =0x020A18A0
	bl FUN_0203e1f4
	orr r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
_020467A0: .word unk_020A18A0
	arm_func_end FUN_02046744

	arm_func_start FUN_020467a4
FUN_020467a4: ; 0x020467A4
	ldrh r0, [r0, #0x6c]
	bx lr
	arm_func_end FUN_020467a4

	arm_func_start FUN_020467ac
FUN_020467ac: ; 0x020467AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046744
	strh r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020467ac

	arm_func_start FUN_020467c0
FUN_020467c0: ; 0x020467C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046744
	ldrh r1, [r4, #0x6c]
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020467c0

	arm_func_start FUN_020467e0
FUN_020467e0: ; 0x020467E0
	stmfd sp!, {r3, lr}
	bl FUN_02046744
	mov r1, #0
	mov r3, r1
	mov r2, #1
_020467F4:
	tst r0, r2, lsl r3
	addne r1, r1, #1
	movne r1, r1, lsl #0x10
	add r3, r3, #1
	movne r1, r1, lsr #0x10
	cmp r3, #4
	blt _020467F4
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020467e0

	arm_func_start FUN_02046818
FUN_02046818: ; 0x02046818
	stmfd sp!, {r4, lr}
	ldr r4, _02046844 ; =0x020B5BF8
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02046848 ; =0x020A18A0
	mov r1, #0
	bl FUN_0203e214
	mov r0, #1
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_02046844: .word unk_020B5BF8
_02046848: .word unk_020A18A0
	arm_func_end FUN_02046818

	arm_func_start FUN_0204684c
FUN_0204684c: ; 0x0204684C
	stmfd sp!, {r4, lr}
	ldr r4, _02046878 ; =0x020B5BF8
	ldrb r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0204687C ; =0x020A18A0
	mov r1, #1
	bl FUN_0203e214
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_02046878: .word unk_020B5BF8
_0204687C: .word unk_020A18A0
	arm_func_end FUN_0204684c

	arm_func_start FUN_02046880
FUN_02046880: ; 0x02046880
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r4, [r8, #0x60]
	ldr r3, _02046940 ; =0x020A3CA0
	mov r7, r1
	mov r6, r2
	cmp r4, #1
	ldrh r5, [r3, #0x66]
	mov r4, #0
	bne _02046924
	ldr r0, [r8, #0x58]
	cmp r0, #5
	beq _020468BC
	cmp r0, #0xb
	bne _02046938
_020468BC:
	ldr r0, _02046944 ; =0x0209A10C
	ldr r4, _02046948 ; =0x0209E6C0
	ldr r9, [r0]
	mov r8, #0x3c0
	and r1, r9, #3
	mla r0, r1, r8, r4
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	and r0, r9, #3
	mla r3, r0, r8, r4
	mov r1, r6
	mov r2, r5
	add r0, r3, #0xf0
	bl MI_CpuCopy8
	ldr r2, _0204694C ; =0x0209A138
	mov r3, #0
	mov r0, r7
	mov r1, r5
	str r3, [r2]
	bl DC_FlushRange
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	mov r4, #1
	b _02046938
_02046924:
	bl FUN_02046698
	cmp r0, #0xc
	bne _02046938
	mov r0, r8
	bl FUN_020465fc
_02046938:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02046940: .word unk_020A3CA0
_02046944: .word unk_0209A10C
_02046948: .word unk_0209E6C0
_0204694C: .word unk_0209A138
	arm_func_end FUN_02046880

	arm_func_start FUN_02046950
FUN_02046950: ; 0x02046950
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldr r2, [r4, #0x60]
	str r1, [sp]
	mov r7, r1
	cmp r2, #1
	mov r10, #0
	bne _020469F8
	ldr r0, [r4, #0x58]
	cmp r0, #5
	beq _02046984
	cmp r0, #0xb
	bne _02046A0C
_02046984:
	ldr r0, _02046A14 ; =0x0209A138
	ldr r1, _02046A18 ; =0x0209A10C
	ldr r10, [r0]
	mov r11, #0xf0
	cmp r10, #4
	ldr r0, _02046A14 ; =0x0209A138
	mov r9, #0
	movgt r10, #4
	str r9, [r0]
	ldr r8, [r1]
	mov r5, r11, lsl #2
	ldr r6, _02046A1C ; =0x0209E6C0
	mov r4, #0x3c0
	b _020469DC
_020469BC:
	sub r0, r8, r9
	and r1, r0, #3
	mla r0, r1, r4, r6
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	add r7, r7, r5
	add r9, r9, #1
_020469DC:
	cmp r9, r10
	blt _020469BC
	mov r0, r11, lsl #2
	mul r1, r10, r0
	ldr r0, [sp]
	bl DC_FlushRange
	b _02046A0C
_020469F8:
	bl FUN_02046698
	cmp r0, #0xc
	bne _02046A0C
	mov r0, r4
	bl FUN_020465fc
_02046A0C:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02046A14: .word unk_0209A138
_02046A18: .word unk_0209A10C
_02046A1C: .word unk_0209E6C0
	arm_func_end FUN_02046950

	arm_func_start FUN_02046a20
FUN_02046a20: ; 0x02046A20
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r2
	mov r5, r0
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	ldrb r0, [r5, #0x65]
	cmp r0, #0
	bne _02046AE4
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02046AC0
	mov r0, r5
	bl FUN_02046744
	ldr r6, _02046B08 ; =0x0209AA60
	strb r0, [r6]
	ldrb r0, [r5, #0x88]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r6, #1]
	strneb r0, [r6, #2]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, [r5, #0x78]
	ldr r1, _02046B0C ; =0x0209AA64
	mov r0, r2, lsr #2
	strb r0, [r6, #1]
	ldr r3, [r5, #0x7c]
	mov r0, r4
	mov r3, r3, lsr #2
	strb r3, [r6, #2]
	bl MI_CpuCopy8
	ldr r1, [r5, #0x78]
	mov r0, r6
	add r1, r1, #4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02046AC0:
	ldr r6, _02046B08 ; =0x0209AA60
	ldr r2, [r5, #0x7c]
	mov r0, r4
	mov r1, r6
	bl MI_CpuCopy8
	ldr r1, [r5, #0x7c]
	mov r0, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02046AE4:
	ldr r5, _02046B08 ; =0x0209AA60
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02046B08: .word unk_0209AA60
_02046B0C: .word unk_0209AA64
	arm_func_end FUN_02046a20

	arm_func_start FUN_02046b10
FUN_02046b10: ; 0x02046B10
	cmp r2, #0
	ldrne r0, [r0, #0x78]
	add r3, r1, #2
	ldreq r0, [r0, #0x7c]
	mov r2, #0
	sub r1, r0, #2
	cmp r1, #0
	ble _02046B4C
_02046B30:
	ldrb r0, [r3], #1
	sub r1, r1, #1
	cmp r1, #0
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	bgt _02046B30
_02046B4C:
	mov r0, r2
	bx lr
	arm_func_end FUN_02046b10

	arm_func_start FUN_02046b54
FUN_02046b54: ; 0x02046B54
	stmfd sp!, {r4, lr}
	ldrb r2, [r0, #0x64]
	mov r4, r1
	bl FUN_02046b10
	strh r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046b54

	arm_func_start FUN_02046b6c
FUN_02046b6c: ; 0x02046B6C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_02046b10
	ldrh r1, [r4]
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046b6c

	arm_func_start FUN_02046b90
FUN_02046b90: ; 0x02046B90
	ldrb r3, [r0, #0x65]
	sub r12, r1, #1
	sub r1, r2, #1
	bic r2, r1, #3
	bic r12, r12, #3
	cmp r3, #0
	add r1, r12, #4
	add r2, r2, #4
	bxne lr
	ldr r3, [r0, #0x5c]
	cmp r3, #1
	moveq r3, #1
	movne r3, #0
	cmp r3, #0
	bxeq lr
	ldr r3, [r0, #0x78]
	cmp r1, r3
	ldreq r3, [r0, #0x7c]
	cmpeq r2, r3
	bxeq lr
	mov r12, #1
	mov r3, #0x78
	str r1, [r0, #0x80]
	str r2, [r0, #0x84]
	strb r12, [r0, #0x88]
	str r3, [r0, #0x8c]
	bx lr
	arm_func_end FUN_02046b90

	arm_func_start FUN_02046bfc
FUN_02046bfc: ; 0x02046BFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r7, #1
	bl FUN_02046744
	ldr r1, _02046C58 ; =0x020A3CA0
	ldrh r1, [r1, #0x5e]
	sub r2, r1, #1
	mov r1, r7
	b _02046C38
_02046C28:
	tst r0, r1, lsl r2
	movne r7, r2
	bne _02046C40
	sub r2, r2, #1
_02046C38:
	cmp r2, #0
	bgt _02046C28
_02046C40:
	mla r0, r4, r7, r5
	add r0, r0, #4
	str r5, [r6, #0x78]
	str r4, [r6, #0x7c]
	str r0, [r6, #0x90]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02046C58: .word unk_020A3CA0
	arm_func_end FUN_02046bfc

	arm_func_start FUN_02046c5c
FUN_02046c5c: ; 0x02046C5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x88]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x80]
	ldr r2, [r4, #0x84]
	bl FUN_02046bfc
	ldr r1, [r4, #0x90]
	ldr r0, _02046C94 ; =0x020A18A0
	bl FUN_0203ea9c
	mov r0, #0
	strb r0, [r4, #0x88]
	ldmfd sp!, {r4, pc}
_02046C94: .word unk_020A18A0
	arm_func_end FUN_02046c5c

	arm_func_start FUN_02046c98
FUN_02046c98: ; 0x02046C98
	cmp r1, #0
	moveq r0, #0
	ldrne r3, [r0, #0x78]
	ldrne r2, [r0, #0x7c]
	subne r0, r1, #1
	mlane r0, r2, r0, r3
	bx lr
	arm_func_end FUN_02046c98

	arm_func_start FUN_02046cb4
FUN_02046cb4: ; 0x02046CB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #7
	str r1, [r4, #0x70]
	moveq r1, #0xf0
	moveq r2, #0x50
	beq _02046CDC
	bl FUN_02046ce8
	mov r1, r0
	mov r2, r1
_02046CDC:
	mov r0, r4
	bl FUN_02046b90
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046cb4

	arm_func_start FUN_02046ce8
FUN_02046ce8: ; 0x02046CE8
	cmp r1, #0xc
	mov r0, #0x74
	addls pc, pc, r1, lsl #2
	b _02046D58
_02046CF8: ; jump table
	b _02046D58 ; case 0
	b _02046D58 ; case 1
	b _02046D2C ; case 2
	b _02046D34 ; case 3
	b _02046D3C ; case 4
	b _02046D44 ; case 5
	b _02046D48 ; case 6
	b _02046D58 ; case 7
	b _02046D4C ; case 8
	b _02046D58 ; case 9
	b _02046D58 ; case 10
	b _02046D58 ; case 11
	b _02046D54 ; case 12
_02046D2C:
	mov r0, #0x22
	b _02046D58
_02046D34:
	mov r0, #4
	b _02046D58
_02046D3C:
	mov r0, #0xc
	b _02046D58
_02046D44:
	mov r0, #4
_02046D48:
	b _02046D58
_02046D4C:
	mov r0, #0x18
	b _02046D58
_02046D54:
	mov r0, #0x30
_02046D58:
	add r0, r0, #4
	bx lr
	arm_func_end FUN_02046ce8

	arm_func_start FUN_02046d60
FUN_02046d60: ; 0x02046D60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
	ldr r2, _02046D98 ; =0x0209A0F8
	str r5, [r0, #0x5c]
	mov r1, r4
	str r5, [r2]
	bl FUN_0204667c
	ldr r0, _02046D9C ; =0x020A18A0
	mov r1, r4
	bl FUN_0203e214
	ldr r0, _02046DA0 ; =0x020B5BF8
	strb r5, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_02046D98: .word unk_0209A0F8
_02046D9C: .word unk_020A18A0
_02046DA0: .word unk_020B5BF8
	arm_func_end FUN_02046d60

	arm_func_start FUN_02046da4
FUN_02046da4: ; 0x02046DA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r2, #1
	mov r0, r4
	mov r1, #2
	str r2, [r4, #0x5c]
	bl FUN_0204667c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046da4

	arm_func_start FUN_02046dd0
FUN_02046dd0: ; 0x02046DD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r2, #2
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x5c]
	bl FUN_0204667c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046dd0

	arm_func_start FUN_02046dfc
FUN_02046dfc: ; 0x02046DFC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02046E24 ; =0x020A18A0
	bl FUN_0203f91c
	mov r2, #2
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x5c]
	bl FUN_0204667c
	ldmfd sp!, {r4, pc}
_02046E24: .word unk_020A18A0
	arm_func_end FUN_02046dfc

	arm_func_start FUN_02046e28
FUN_02046e28: ; 0x02046E28
	stmfd sp!, {r3, lr}
	bl FUN_02046700
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02046E44 ; =0x020A18A0
	bl FUN_0203e3f0
	ldmfd sp!, {r3, pc}
_02046E44: .word unk_020A18A0
	arm_func_end FUN_02046e28

	arm_func_start FUN_02046e48
FUN_02046e48: ; 0x02046E48
	stmfd sp!, {r3, lr}
	bl FUN_02046698
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, pc}
_02046E5C: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	ldmfd sp!, {r3, pc} ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	b _02046E8C ; case 6
	b _02046E8C ; case 7
	b _02046E8C ; case 8
	b _02046E98 ; case 9
	ldmfd sp!, {r3, pc} ; case 10
	b _02046E98 ; case 11
_02046E8C:
	ldr r0, _02046EA4 ; =0x020A18A0
	bl FUN_0203f7b0
	ldmfd sp!, {r3, pc}
_02046E98:
	ldr r0, _02046EA4 ; =0x020A18A0
	bl FUN_0203e3f0
	ldmfd sp!, {r3, pc}
_02046EA4: .word unk_020A18A0
	arm_func_end FUN_02046e48

	arm_func_start FUN_02046ea8
FUN_02046ea8: ; 0x02046EA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02046698
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #8
	strb r4, [r5, #0x67]
	bl FUN_0204667c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02046ea8

	arm_func_start FUN_02046ed4
FUN_02046ed4: ; 0x02046ED4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_02046698
	cmp r0, #2
	beq _02046EFC
	cmp r0, #3
	beq _02046F20
	cmp r0, #4
	beq _02046F48
	b _02046F94
_02046EFC:
	ldr r0, _02046F9C ; =0x020A18A0
	mov r1, #0
	bl FUN_0203ed6c
	cmp r0, #0
	beq _02046F94
	mov r0, r5
	mov r1, #3
_02046F18:
	bl FUN_0204667c
	b _02046F94
_02046F20:
	add r1, r5, #0xc2
	ldr r0, _02046F9C ; =0x020A18A0
	add r2, r1, #0x200
	mov r1, #3
	bl FUN_0203eca8
	cmp r0, #0
	beq _02046F94
	mov r0, r5
	mov r1, #4
	b _02046F18
_02046F48:
	ldrb r0, [r5, #0x65]
	mov r4, #0
	mov r1, #4
	cmp r0, #0
	ldr r0, _02046F9C ; =0x020A18A0
	movne r1, #2
	mov r2, r4
	mov r3, r4
	bl FUN_0203eefc
	cmp r0, #0
	beq _02046F94
	mov r0, r5
	mov r1, #5
	strb r4, [r5, #0x66]
	bl FUN_0204667c
	ldr r1, _02046FA0 ; =0x0209A0F8
	mov r0, #1
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_02046F94:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02046F9C: .word unk_020A18A0
_02046FA0: .word unk_0209A0F8
	arm_func_end FUN_02046ed4

	arm_func_start FUN_02046fa4
FUN_02046fa4: ; 0x02046FA4
	mov r0, #1
	bx lr
	arm_func_end FUN_02046fa4

	arm_func_start FUN_02046fac
FUN_02046fac: ; 0x02046FAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020466a0
	mov r0, r4
	bl FUN_02046698
	cmp r0, #6
	bne _02046FFC
	mov r1, #0
	ldr r0, _02047004 ; =0x020A18A0
	mov r2, r1
	bl FUN_0203f168
	cmp r0, #0
	beq _02046FFC
	mov r0, r4
	mov r1, #7
	bl FUN_0204667c
	ldr r1, _02047008 ; =0x0209A0F8
	mov r0, #1
	str r0, [r1]
	ldmfd sp!, {r4, pc}
_02046FFC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02047004: .word unk_020A18A0
_02047008: .word unk_0209A0F8
	arm_func_end FUN_02046fac

	arm_func_start FUN_0204700c
FUN_0204700c: ; 0x0204700C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02047144
_02047024: ; jump table
	b _02047144 ; case 0
	b _02047144 ; case 1
	b _02047144 ; case 2
	b _02047144 ; case 3
	b _02047144 ; case 4
	b _02047144 ; case 5
	b _02047144 ; case 6
	b _02047050 ; case 7
	b _02047080 ; case 8
	b _020470D0 ; case 9
	b _02047108 ; case 10
_02047050:
	mov r6, #0
	ldr r5, _0204714C ; =0x020A18A0
	b _02047074
_0204705C:
	mov r0, r5
	mov r1, r6
	bl FUN_0203e2d0
	add r1, r4, r6, lsl #2
	str r0, [r1, #0x27c]
	add r6, r6, #1
_02047074:
	cmp r6, #0x10
	blt _0204705C
	b _02047144
_02047080:
	ldr r5, _0204714C ; =0x020A18A0
	ldrb r1, [r4, #0x67]
	mov r0, r5
	bl FUN_0203e2d0
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0203f7b0
	add r1, r4, #0xc2
	mov r0, r5
	add r2, r1, #0x200
	mov r1, #3
	bl FUN_0203eca8
	cmp r0, #0
	beq _02047144
	mov r0, r4
	mov r1, #9
_020470C8:
	bl FUN_0204667c
	b _02047144
_020470D0:
	ldrb r0, [r4, #0x65]
	ldrb r2, [r4, #0x67]
	mov r1, #4
	cmp r0, #0
	ldr r0, _0204714C ; =0x020A18A0
	movne r1, #2
	bl FUN_0203f840
	cmp r0, #0
	beq _02047100
	mov r0, r4
	mov r1, #0xa
	b _020470C8
_02047100:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02047108:
	ldr r5, _0204714C ; =0x020A18A0
	mov r0, r5
	bl FUN_0203e1d0
	cmp r0, #9
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0203e1e8
	cmp r0, #0
	beq _02047144
	mov r0, r4
	mov r1, #0xb
	bl FUN_0204667c
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02047144:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204714C: .word unk_020A18A0
	arm_func_end FUN_0204700c

	arm_func_start FUN_02047150
FUN_02047150: ; 0x02047150
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r5, r1
	mov r6, r0
	beq _020471E0
	cmp r6, #0
	ldr r4, _020471F0 ; =0x0209AF58
	bne _020471AC
	ldrb r0, [r5]
	ldr r7, _020471F4 ; =0x0209AEC0
	strh r0, [r7, #0x6a]
	ldrb r1, [r5, #1]
	cmp r1, #0
	ldrneb r2, [r5, #2]
	cmpne r2, #0
	beq _020471D0
	mov r0, r7
	mov r1, r1, lsl #2
	mov r2, r2, lsl #2
	bl FUN_02046bfc
	ldr r2, [r7, #0x90]
	mov r1, r4
	add r0, r5, #4
	b _020471CC
_020471AC:
	ldr r0, _020471F4 ; =0x0209AEC0
	mov r1, r6
	ldr r7, [r0, #0x7c]
	bl FUN_02046c98
	mov r1, r0
	mov r0, r5
	mov r2, r7
	add r1, r4, r1
_020471CC:
	bl MI_CpuCopy8
_020471D0:
	ldr r0, _020471F8 ; =0x0209AF54
	mov r1, #1
	strb r1, [r0, r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020471E0:
	ldr r0, _020471F8 ; =0x0209AF54
	mov r1, #0
	strb r1, [r0, r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020471F0: .word unk_0209AF58
_020471F4: .word gWirelessUtil
_020471F8: .word unk_0209AF54
	arm_func_end FUN_02047150

	arm_func_start FUN_020471fc
FUN_020471fc: ; 0x020471FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _020473D0 ; =0x0208C408
	ldr r5, _020473D4 ; =0x020A18A0
	mov r4, r0
	add r6, sp, #0
	ldmia r1, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	mov r0, r5
	bl FUN_0203e1e8
	cmp r0, #0
	bne _02047280
	ldrb r0, [r4, #0x66]
	cmp r0, #0
	beq _02047274
	mov r0, r4
	bl FUN_02046700
	cmp r0, #0
	beq _02047274
	ldr r0, _020473D8 ; =0x020A0640
	ldrb r0, [r0, #0xae]
	cmp r0, #0
	bne _02047274
	mov r5, #0xc
	mov r0, r4
	mov r1, r5
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r5, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047274:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047280:
	mov r0, r5
	bl FUN_0203e1d0
	cmp r0, #9
	bne _020472CC
	mov r0, r4
	bl FUN_02046700
	cmp r0, #0
	beq _020472CC
	ldr r0, _020473D8 ; =0x020A0640
	ldrb r0, [r0, #0xae]
	cmp r0, #0
	bne _020472CC
	mov r5, #0xc
	mov r0, r4
	mov r1, r5
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r5, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020472CC:
	ldr r11, _020473D4 ; =0x020A18A0
	mov r0, r11
	bl FUN_0203e1d0
	cmp r0, #6
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020473DC ; =0x0209AA60
	mov r2, #1
	mov r0, r11
	strb r2, [r4, #0x66]
	bl FUN_0203e89c
	cmp r0, #0
	beq _020473C4
	ldr r0, _020473E0 ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, _020473E4 ; =0x0209A10C
	mov r9, r0
	ldr r0, [r1]
	ldr r2, _020473E8 ; =0x0209E6C0
	add r0, r0, #1
	and r1, r0, #3
	mov r0, #0x3c0
	mla r7, r1, r0, r2
	mov r10, #0
	add r6, sp, #0
	mov r8, #1
	mov r4, #0xf0
	ldr r5, _020473EC ; =0x020A3CA0
	b _0204736C
_02047344:
	tst r9, r8, lsl r10
	beq _02047368
	mla r2, r10, r4, r7
	mov r1, r10, lsl #0x10
	ldrh r3, [r5, #0x66]
	mov r0, r11
	mov r1, r1, lsr #0x10
	bl FUN_0203eab8
	str r0, [r6, r10, lsl #2]
_02047368:
	add r10, r10, #1
_0204736C:
	cmp r10, #4
	blt _02047344
	ldr r0, _020473F0 ; =0x0209A138
	ldr r2, [sp]
	ldr r3, [r0]
	ldr r1, _020473E4 ; =0x0209A10C
	add r3, r3, #1
	str r3, [r0]
	cmp r2, #0
	ldrne r0, [sp, #4]
	ldr r4, [r1]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	add r4, r4, #1
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	add sp, sp, #0x10
	cmpne r0, #0
	movne r0, #1
	str r4, [r1]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020473C4:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020473D0: .word unk_0208C408
_020473D4: .word unk_020A18A0
_020473D8: .word unk_020A0640
_020473DC: .word unk_0209AA60
_020473E0: .word gWirelessUtil
_020473E4: .word unk_0209A10C
_020473E8: .word unk_0209E6C0
_020473EC: .word unk_020A3CA0
_020473F0: .word unk_0209A138
	arm_func_end FUN_020471fc

	arm_func_start FUN_020473f4
FUN_020473f4: ; 0x020473F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _02047554 ; =0x0208C418
	add r4, sp, #0
	mov r5, r0
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _02047558 ; =0x020A18A0
	bl FUN_0203e1d0
	mov r4, r0
	cmp r4, #9
	bne _02047460
	mov r0, r5
	bl FUN_02046700
	cmp r0, #0
	beq _02047460
	ldr r0, _0204755C ; =0x020A0640
	ldrb r0, [r0, #0xae]
	cmp r0, #0
	bne _02047460
	mov r4, #0xc
	mov r0, r5
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047460:
	cmp r4, #6
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, _02047558 ; =0x020A18A0
	ldr r1, _02047560 ; =0x0209AA60
	mov r0, r11
	bl FUN_0203e89c
	cmp r0, #0
	beq _02047548
	ldr r0, _02047564 ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, _02047568 ; =0x0209A10C
	mov r9, r0
	ldr r0, [r1]
	ldr r2, _0204756C ; =0x0209E6C0
	add r0, r0, #1
	and r1, r0, #3
	mov r0, #0x3c0
	mla r7, r1, r0, r2
	mov r10, #0
	add r6, sp, #0
	mov r8, #1
	mov r4, #0xf0
	ldr r5, _02047570 ; =0x020A3CA0
	b _020474F0
_020474C8:
	tst r9, r8, lsl r10
	beq _020474EC
	mla r2, r10, r4, r7
	mov r1, r10, lsl #0x10
	ldrh r3, [r5, #0x66]
	mov r0, r11
	mov r1, r1, lsr #0x10
	bl FUN_0203eab8
	str r0, [r6, r10, lsl #2]
_020474EC:
	add r10, r10, #1
_020474F0:
	cmp r10, #4
	blt _020474C8
	ldr r0, _02047574 ; =0x0209A138
	ldr r2, [sp]
	ldr r3, [r0]
	ldr r1, _02047568 ; =0x0209A10C
	add r3, r3, #1
	str r3, [r0]
	cmp r2, #0
	ldrne r0, [sp, #4]
	ldr r4, [r1]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	add r4, r4, #1
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	add sp, sp, #0x10
	cmpne r0, #0
	movne r0, #1
	str r4, [r1]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047548:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047554: .word unk_0208C418
_02047558: .word unk_020A18A0
_0204755C: .word unk_020A0640
_02047560: .word unk_0209AA60
_02047564: .word gWirelessUtil
_02047568: .word unk_0209A10C
_0204756C: .word unk_0209E6C0
_02047570: .word unk_020A3CA0
_02047574: .word unk_0209A138
	arm_func_end FUN_020473f4

	arm_func_start FUN_02047578
FUN_02047578: ; 0x02047578
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02047590 ; =0x0209AEC0
	bl FUN_02046c5c
	ldmfd sp!, {r3, pc}
_02047590: .word gWirelessUtil
	arm_func_end FUN_02047578

	arm_func_start FUN_02047594
FUN_02047594: ; 0x02047594
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _02047870 ; =0x0208C3F8
	ldr r5, _02047874 ; =0x020A18A0
	mov r10, r0
	add r4, sp, #0
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r0, r5
	ldr r4, _02047878 ; =0x020A3CA0
	mov r7, #1
	bl FUN_0203e1e8
	cmp r0, #0
	bne _02047610
	ldrb r0, [r10, #0x66]
	cmp r0, #0
	beq _02047604
	mov r0, r10
	bl FUN_02046700
	cmp r0, #0
	beq _02047604
	mov r4, #0xc
	mov r0, r10
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047604:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047610:
	mov r0, r5
	bl FUN_0203e1d0
	cmp r0, #9
	bne _0204764C
	mov r0, r10
	bl FUN_02046700
	cmp r0, #0
	beq _0204764C
	mov r4, #0xc
	mov r0, r10
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204764C:
	ldr r0, _02047874 ; =0x020A18A0
	bl FUN_0203e1d0
	cmp r0, #4
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_02046744
	ldrb r11, [r10, #0x88]
	mov r8, r0
	cmp r11, #0
	bne _020476D8
	mov r9, #1
	add r6, r10, #0x98
	ldr r5, _0204787C ; =0x0209AA60
	b _020476C8
_0204768C:
	tst r8, r7, lsl r9
	addne r0, r10, r9
	ldrneb r0, [r0, #0x94]
	cmpne r0, #0
	beq _020476C4
	mov r1, r9, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_02046c98
	add r1, r0, #4
	ldr r2, [r10, #0x7c]
	add r0, r6, r0
	add r1, r5, r1
	bl MI_CpuCopy8
_020476C4:
	add r9, r9, #1
_020476C8:
	ldrh r0, [r4, #0x5e]
	cmp r9, r0
	blt _0204768C
	b _02047704
_020476D8:
	ldr r0, [r10, #0x8c]
	sub r0, r0, #1
	str r0, [r10, #0x8c]
	cmp r0, #0
	bgt _02047704
	mov r0, #0x78
	str r0, [r10, #0x8c]
	ldrh r1, [r4, #0x6c]
	ldr r0, _02047880 ; =0x0000FFEF
	and r0, r1, r0
	strh r0, [r4, #0x6c]
_02047704:
	ldr r1, [r10, #0x90]
	mov r0, #1
	mov r2, r1, lsl #0x10
	strb r0, [r10, #0x66]
	mov r3, #0
	cmp r11, #0
	ldrne r3, _02047884 ; =FUN_02047578
	ldr r0, _02047874 ; =0x020A18A0
	ldr r1, _0204787C ; =0x0209AA60
	mov r2, r2, lsr #0x10
	ldr r4, _02047878 ; =0x020A3CA0
	bl FUN_0203e930
	cmp r0, #0
	beq _02047864
	cmp r11, #0
	ldrneh r1, [r4, #0x6c]
	addne sp, sp, #0x10
	movne r0, #0
	orrne r1, r1, #0x10
	strneh r1, [r4, #0x6c]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02047888 ; =0x0209A10C
	ldr r5, _0204788C ; =0x0209E6C0
	ldr r1, [r0]
	mov r0, #0x3c0
	add r6, r1, #1
	and r2, r6, #3
	mla r1, r2, r0, r5
	ldr r2, [r10, #0x78]
	ldr r0, _02047890 ; =0x0209AA64
	bl MI_CpuCopy8
	and r1, r6, #3
	mov r0, #0x3c0
	mla r5, r1, r0, r5
	mov r9, #1
	add r6, r10, #0x98
	add r7, sp, #0
	mov r11, #0xf0
	b _020477E0
_020477A0:
	mov r0, #1
	tst r8, r0, lsl r9
	addne r0, r10, r9
	ldrneb r0, [r0, #0x94]
	strne r0, [r7, r9, lsl #2]
	cmpne r0, #0
	beq _020477DC
	mov r1, r9, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_02046c98
	mla r1, r9, r11, r5
	ldr r2, [r10, #0x7c]
	add r0, r6, r0
	bl MI_CpuCopy8
_020477DC:
	add r9, r9, #1
_020477E0:
	ldrh r0, [r4, #0x5e]
	cmp r9, r0
	blt _020477A0
	ldr r1, [sp]
	ldr r0, _02047878 ; =0x020A3CA0
	cmp r1, #0
	ldrne r1, [sp, #4]
	mov r3, #0
	cmpne r1, #0
	ldrne r1, [sp, #8]
	cmpne r1, #0
	ldrne r1, [sp, #0xc]
	cmpne r1, #0
	beq _02047858
	ldr r2, _02047888 ; =0x0209A10C
	ldr r1, _02047894 ; =0x0209A138
	ldr r5, [r2]
	ldr r4, [r1]
	add r5, r5, #1
	add r4, r4, #1
	str r5, [r2]
	str r4, [r1]
	mov r2, #1
	b _0204784C
_02047840:
	add r1, r10, r2
	strb r3, [r1, #0x94]
	add r2, r2, #1
_0204784C:
	ldrh r1, [r0, #0x5e]
	cmp r2, r1
	blt _02047840
_02047858:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047864:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047870: .word unk_0208C3F8
_02047874: .word unk_020A18A0
_02047878: .word unk_020A3CA0
_0204787C: .word unk_0209AA60
_02047880: .word 0x0000FFEF
_02047884: .word FUN_02047578
_02047888: .word unk_0209A10C
_0204788C: .word unk_0209E6C0
_02047890: .word unk_0209AA64
_02047894: .word unk_0209A138
	arm_func_end FUN_02047594

	arm_func_start FUN_02047898
FUN_02047898: ; 0x02047898
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _020479F4 ; =0x0208C428
	add r4, sp, #0
	mov r10, r0
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _020479F8 ; =0x020A18A0
	bl FUN_0203e1d0
	mov r4, r0
	cmp r4, #9
	bne _020478F4
	mov r0, r10
	bl FUN_02046700
	cmp r0, #0
	beq _020478F4
	mov r4, #0xc
	mov r0, r10
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020478F4:
	cmp r4, #4
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	ldr r0, _020479F8 ; =0x020A18A0
	ldr r1, _020479FC ; =0x0209AA60
	mov r3, r8
	mov r2, #0x78
	bl FUN_0203e930
	cmp r0, #0
	beq _020479E8
	mov r0, r10
	bl FUN_02046744
	ldrb r1, [r10, #0x94]
	mov r7, r0
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02047A00 ; =0x0209A10C
	strb r8, [r10, #0x94]
	ldr r0, [r0]
	ldr r2, _02047A04 ; =0x0209E6C0
	add r0, r0, #1
	and r1, r0, #3
	mov r0, #0x3c0
	mla r4, r1, r0, r2
	add r5, r10, #0x98
	mov r6, #1
	ldr r11, _02047A08 ; =0x020A3CA0
	b _020479B0
_02047974:
	tst r7, r6, lsl r8
	beq _020479AC
	cmp r8, #0
	ldreq r9, [r10, #0x78]
	mov r1, r8, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	ldrne r9, [r10, #0x7c]
	bl FUN_02046c98
	mov r1, #0xf0
	mla r1, r8, r1, r4
	mov r2, r9
	add r0, r5, r0
	bl MI_CpuCopy8
_020479AC:
	add r8, r8, #1
_020479B0:
	ldrh r0, [r11, #0x5e]
	cmp r8, r0
	blt _02047974
	ldr r0, _02047A0C ; =0x0209A138
	ldr r1, _02047A00 ; =0x0209A10C
	ldr r2, [r0]
	ldr r3, [r1]
	add r2, r2, #1
	add r3, r3, #1
	str r2, [r0]
	add sp, sp, #0x10
	str r3, [r1]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020479E8:
	mov r0, r8
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020479F4: .word unk_0208C428
_020479F8: .word unk_020A18A0
_020479FC: .word unk_0209AA60
_02047A00: .word unk_0209A10C
_02047A04: .word unk_0209E6C0
_02047A08: .word unk_020A3CA0
_02047A0C: .word unk_0209A138
	arm_func_end FUN_02047898

	arm_func_start _ZN13CWirelessUtil12FUN_02047a10Ev
_ZN13CWirelessUtil12FUN_02047a10Ev: ; 0x02047A10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #5
	beq _02047A30
	cmp r0, #0xb
	beq _02047A50
	b _02047A70
_02047A30:
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	mov r0, r4
	bne _02047A48
	bl FUN_02047594
	b _02047A74
_02047A48:
	bl FUN_020471fc
	b _02047A74
_02047A50:
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	mov r0, r4
	bne _02047A68
	bl FUN_02047898
	b _02047A74
_02047A68:
	bl FUN_020473f4
	b _02047A74
_02047A70:
	mvn r0, #0
_02047A74:
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN13CWirelessUtil12FUN_02047a10Ev

	arm_func_start FUN_02047a7c ; https://decomp.me/scratch/bY8Zx
FUN_02047a7c: ; 0x02047A7C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r12, _02047ACC ; =FUN_02048c80
	ldr r3, _02047AD0 ; =FUN_02048c5c
	mov r1, #0x10
	mov r2, #0x1b8
	mov r4, r0
	str r12, [sp]
	bl __cxa_vec_ctor
	mov r2, #0
	mov r1, r2
_02047AA8:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0xb88]
	cmp r2, #8
	blt _02047AA8
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02047ACC: .word FUN_02048c80
_02047AD0: .word FUN_02048c5c
	arm_func_end FUN_02047a7c

	arm_func_start FUN_02047ad4
FUN_02047ad4: ; 0x02047AD4
	stmfd sp!, {r4, lr}
	ldr r3, _02047AF4 ; =FUN_02048c80
	mov r1, #0x10
	mov r2, #0x1b8
	mov r4, r0
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02047AF4: .word FUN_02048c80
	arm_func_end FUN_02047ad4

	arm_func_start FUN_02047af8 ; https://decomp.me/scratch/Pj36Y
FUN_02047af8: ; 0x02047AF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x1000
	str r1, [r0, #0xbb8]
	mov r6, r1
_02047B10:
	add r0, r4, r1, lsl #2
	add r0, r0, #0x1000
	str r6, [r0, #0xccc]
	add r1, r1, #1
	str r6, [r0, #0xce4]
	cmp r1, #6
	blt _02047B10
	mov r5, #0x1b8
_02047B30:
	mla r0, r6, r5, r4
	mov r1, r4
	bl FUN_02048c98
	add r6, r6, #1
	cmp r6, #0x10
	blt _02047B30
	mov r6, #0
	mov r5, #0x2bc
_02047B50:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _02047B64
	bl FUN_ov16_020fe4f4
_02047B64:
	add r1, r4, r6, lsl #2
	add r2, r1, #0x1000
	mov r1, r4
	str r0, [r2, #0xb88]
	bl FUN_ov16_020fe51c
	add r6, r6, #1
	cmp r6, #0xb
	blt _02047B50
	add r0, r4, #0x1fc
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x1c00
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r4, #0x208
	mov r1, r5
	add r0, r0, #0x1c00
	mov r2, #0x84
	bl MI_CpuFill8
	add r1, r4, #0x1000
	mov r0, r4
	strb r5, [r1, #0xe8c]
	bl FUN_02047e30
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02047af8

	arm_func_start FUN_02047bc4 ; https://decomp.me/scratch/4xeSu
FUN_02047bc4: ; 0x02047BC4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0xfc
	mov r6, #0
	mov r5, #0x100
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x1c00
	bl MI_CpuFill8
	add r0, r4, #0x3bc
	mov r1, r6
	add r0, r0, #0x1800
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r4, #0x3cc
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x1800
	bl MI_CpuFill8
	mov r6, #1
	mov r5, #0x1b8
_02047C18:
	mla r0, r6, r5, r4
	bl FUN_0204912c
	add r6, r6, #1
	cmp r6, #0xb
	blt _02047C18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02047bc4

	arm_func_start FUN_02047c30 ; https://decomp.me/scratch/PCkTT
FUN_02047c30: ; 0x02047C30
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02047C64 ; =gL5Allocator
	mov r2, #2
	mov r3, #1
	mov r5, r1
	bl _ZN11L5Allocator8allocateEmii
	movs r4, r0
	beq _02047C5C
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
_02047C5C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02047C64: .word gL5Allocator
	arm_func_end FUN_02047c30

	arm_func_start FUN_02047c68
FUN_02047c68: ; 0x02047C68
	ldr r0, _02047C74 ; =gL5Allocator
	ldr r12, _02047C78 ; =_ZN11L5Allocator10deallocateEPv
	bx r12
_02047C74: .word gL5Allocator
_02047C78: .word _ZN11L5Allocator10deallocateEPv
	arm_func_end FUN_02047c68

	arm_func_start FUN_02047c7c ; https://decomp.me/scratch/ODQcL
FUN_02047c7c: ; 0x02047C7C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r0, r4, #0xfc
	add r0, r0, #0x1c00
	mov r2, #0x100
	mov r5, r1
	bl MI_CpuCopy8
	add r0, r4, #0x1fc
	add r0, r0, #0x1c00
	add r1, r5, #0x580
	mov r2, #0xc
	bl MI_CpuCopy8
	add r7, r5, #0x100
	mov r8, #0
	mov r5, #0x1b8
	mov r6, #0x48
_02047CBC:
	mla r0, r8, r5, r4
	mla r1, r8, r6, r7
	bl FUN_0204930c
	add r8, r8, #1
	cmp r8, #0x10
	blt _02047CBC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02047c7c

	arm_func_start FUN_02047cdc
FUN_02047cdc: ; 0x02047CDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r8, r0
	mov r7, r1
	add r1, r8, #0xfc
	mov r0, r7
	add r1, r1, #0x1c00
	mov r2, #0x100
	bl MI_CpuCopy8
	add r1, r8, #0x1fc
	add r0, r7, #0x580
	add r1, r1, #0x1c00
	mov r2, #0xc
	bl MI_CpuCopy8
	mov r6, #0
	add r11, r7, #0x100
	mov r10, r6
_02047D20:
	cmp r6, #0xd
	mov r0, #0x48
	bge _02047D70
	mul r9, r6, r0
	mov r0, #0x1b8
	mul r4, r6, r0
	add r0, r7, r9
	ldr r5, [r0, #0x100]
	add r0, r8, r4
	bl FUN_0204912c
	add r0, r8, r5, lsl #2
	add r3, r0, #0x1000
	add r0, r8, r4
	ldr r4, [r3, #0xce4]
	add r2, r11, r9
	str r4, [sp]
	ldr r3, [r3, #0xccc]
	mov r1, r6
	bl FUN_02049354
	b _02047E08
_02047D70:
	mla r0, r6, r0, r7
	ldr r4, [r0, #0x100]
	ldr r5, [r0, #0x104]
	cmp r4, #0
	sub r9, r6, #0xd
	bne _02047D90
	cmp r5, #0
	beq _02047E08
_02047D90:
	add r0, sp, #0xc
	mov r1, r10
	mov r2, #0x2c
	bl MI_CpuFill8
	add r2, r8, r9, lsl #2
	add r2, r2, #0x1000
	ldr r3, [r2, #0xdfc]
	mov r0, r8
	mov r1, r9
	add r2, sp, #0xc
	bl FUN_02048b4c
	movs r9, r0
	beq _02047E08
	add r0, r8, r4, lsl #2
	add r1, r0, #0x1000
	mov r0, #0x1b8
	str r6, [r9, #0x18]
	mov r2, r4
	ldr r4, [r1, #0xccc]
	mla r0, r6, r0, r8
	str r4, [sp]
	ldr r4, [r1, #0xce4]
	mov r3, r5
	mov r1, r6
	stmib sp, {r4, r10}
	bl FUN_02049038
	cmp r0, #0
	movne r0, #0x2000
	strne r0, [r9, #0x1c]
	strne r10, [r9, #0xc]
_02047E08:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02047D20
	mov r0, #1
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02047cdc

	arm_func_start FUN_02047e20
FUN_02047e20: ; 0x02047E20
	add r0, r0, #0xfc
	add r0, r0, #0x1c00
	add r0, r0, r1, lsl #2
	bx lr
	arm_func_end FUN_02047e20

	arm_func_start FUN_02047e30 ; https://decomp.me/scratch/M3XwK
FUN_02047e30: ; 0x02047E30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x78
	ldr r6, _02047F6C ; =0x02090278
	mov r9, r0
	ldmia r6!, {r0, r1, r2, r3}
	add r8, sp, #0x64
	mov r7, r8
	ldr r4, _02047F70 ; =0x0209028C
	stmia r8!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	ldr r6, [r6]
	add r5, sp, #0x50
	str r6, [r8]
	mov r6, r5
	stmia r5!, {r0, r1, r2, r3}
	ldr r4, [r4]
	mov r8, #1
	str r4, [r5]
	ldr r4, _02047F74 ; =gL5Allocator
	mov r11, #0
	add r5, sp, #0x10
_02047E84:
	add r0, r9, r8, lsl #2
	add r10, r0, #0xcc
	add r0, r0, #0x1000
	ldr r0, [r0, #0xccc]
	cmp r0, #0
	bne _02047EE8
	ldr r1, _02047F78 ; =0x020902A0
	ldr r2, [r7, r8, lsl #2]
	mov r0, r5
	bl sprintf
	mov r0, r4
	mov r1, #4
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r0, [r4]
	cmp r0, #0
	beq _02047EE8
	str r11, [sp]
	str r11, [sp, #4]
	str r11, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	add r2, r10, #0x1c00
	mov r1, r5
	mov r3, r4
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_02047EE8:
	add r0, r9, r8, lsl #2
	add r10, r0, #0xe4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xce4]
	cmp r0, #0
	bne _02047F58
	ldr r2, [r6, r8, lsl #2]
	cmp r2, #0
	beq _02047F58
	ldr r1, _02047F7C ; =0x020902B4
	mov r0, r5
	bl sprintf
	mov r0, r4
	mov r1, #4
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r0, [r4]
	cmp r0, #0
	beq _02047F58
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	add r2, r10, #0x1c00
	mov r1, r5
	mov r3, r4
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_02047F58:
	add r8, r8, #1
	cmp r8, #4
	ble _02047E84
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047F6C: .word unk_02090278
_02047F70: .word unk_0209028C
_02047F74: .word gL5Allocator
_02047F78: .word unk_020902A0
_02047F7C: .word unk_020902B4
	arm_func_end FUN_02047e30

	arm_func_start FUN_02047f80
FUN_02047f80: ; 0x02047F80
	mov r2, #0x1b8
	mla r0, r1, r2, r0
	bx lr
	arm_func_end FUN_02047f80

	arm_func_start FUN_02047f8c ; https://decomp.me/scratch/HBNFh
FUN_02047f8c: ; 0x02047F8C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r8, r2
	add r0, r10, r8, lsl #2
	add r0, r0, #0x1000
	ldr r5, [r0, #0xccc]
	mov r9, r1
	str r5, [sp]
	ldr r5, [r0, #0xce4]
	mov r4, #0x1b8
	mla r0, r9, r4, r10
	str r5, [sp, #4]
	mov r4, #0
	ldr r7, [sp, #0x30]
	mov r11, r3
	str r4, [sp, #8]
	bl FUN_02049038
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	addeq sp, sp, #0xc
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r10, r8, lsl #2
	add r0, r1, #0xe4
	add r1, r1, #0xcc
	add r4, r9, r7
	add r5, r0, #0x1c00
	add r6, r1, #0x1c00
	b _02048054
_02048010:
	mov r0, #0x1b8
	ldr r1, [r6]
	mla r0, r4, r0, r10
	str r1, [sp]
	ldr r2, [r5]
	mov r1, r9
	str r2, [sp, #4]
	mov r12, #0
	mov r2, r8
	mov r3, r11
	str r12, [sp, #8]
	bl FUN_02049038
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, r4, r7
_02048054:
	cmp r4, #0x10
	blo _02048010
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02047f8c

	arm_func_start FUN_02048068 ; https://decomp.me/scratch/SZ9lv
FUN_02048068: ; 0x02048068
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, [sp, #0x20]
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r4, #0
	mov r4, #0
	bne _020480C8
	mov r3, r4
	add r2, r8, #1
_02048094:
	add r0, r9, r3, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xbcc]
	cmp r2, r1
	bne _020480BC
	ldr r0, [r0, #0xbd4]
	cmp r6, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020480BC:
	add r3, r3, #1
	cmp r3, #0x10
	blt _02048094
_020480C8:
	mov r5, #0
	mov r10, #0x1b8
_020480D0:
	mla r0, r5, r10, r9
	mov r1, r7
	mov r2, r6
	bl FUN_02049178
	cmp r0, #0
	beq _02048120
	mov r6, #0
	add r2, r5, #1
_020480F0:
	add r3, r9, r6
	add r0, r3, #0x1b00
	ldrsb r1, [r0, #0xbc]
	add r0, r3, #0x3bc
	add r0, r0, #0x1800
	cmp r2, r1
	add r6, r6, #1
	streqb r4, [r0]
	cmp r6, #0x10
	blt _020480F0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02048120:
	add r5, r5, #1
	cmp r5, #0x10
	blt _020480D0
	mov r2, #0
_02048130:
	add r0, r9, r2, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xbcc]
	cmp r1, #0
	bne _02048164
	add r1, r8, #1
	str r1, [r0, #0xbcc]
	str r7, [r0, #0xbd0]
	ldr r1, [sp, #0x20]
	str r6, [r0, #0xbd4]
	str r1, [r0, #0xbd8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02048164:
	add r2, r2, #1
	cmp r2, #0x10
	blt _02048130
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02048068

	arm_func_start FUN_02048178 ; https://decomp.me/scratch/1Hepv
FUN_02048178: ; 0x02048178
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	bge _020481B8
	mov r5, #0
	mov r4, #0x1b8
_02048190:
	mla r0, r5, r4, r6
	bl FUN_020491b0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #0x10
	blt _02048190
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020481B8:
	mov r0, #0x1b8
	mla r0, r1, r0, r6
	bl FUN_020491b0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02048178

	arm_func_start FUN_020481c8
FUN_020481c8: ; 0x020481C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r9, r1
	mov r0, #0x1b8
	mla r0, r9, r0, r10
	mov r7, r3
	mov r3, #0
	mov r4, #5
	mov r8, r2
	str r3, [sp]
	mov r2, r4
	stmib sp, {r3, r8}
	bl FUN_02049038
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	addeq sp, sp, #0xc
	subeq r0, r4, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, r4
	add r6, r9, r7
	mov r5, #0
	mov r4, #0x1b8
	b _02048264
_02048234:
	mla r0, r6, r4, r10
	str r5, [sp]
	mov r1, r9
	mov r2, r11
	mov r3, r5
	stmib sp, {r5, r8}
	bl FUN_02049038
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r6, r6, r7
_02048264:
	cmp r6, #0x10
	blo _02048234
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020481c8

	arm_func_start FUN_02048278
FUN_02048278: ; 0x02048278
	stmfd sp!, {r3, lr}
	bl FUN_02047f80
	ldr r0, [r0, #0x28]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02048278

	arm_func_start FUN_02048288 ; https://decomp.me/scratch/WYCnc
FUN_02048288: ; 0x02048288
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r0, #0x1b8
	mla r0, r7, r0, r8
	bl FUN_0204912c
	ldr r0, _02048364 ; =0x02099E91
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r0, _02048368 ; =0x02099E90
	ldrneb r1, [r0]
	cmpne r1, #0
	beq _020482FC
	mov r4, #0
	strb r4, [r0]
	add r0, r8, #0x1000
	ldr r1, [r0, #0xbb8]
	cmp r1, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r0, #0xb90]
	bl FUN_ov16_020fe8b0
	add r0, r8, #0x1000
	ldr r0, [r0, #0xb90]
	bl FUN_ov16_020fe56c
	add r0, r8, #0x1000
	str r4, [r0, #0xbb8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020482FC:
	add r0, r8, #0x208
	mov r5, #0
	add r4, r0, #0x1c00
	mov r9, #0x2c
_0204830C:
	mul r6, r5, r9
	add r0, r8, r6
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	cmp r7, r1
	bne _02048350
	ldr r0, [r0, #0xe18]
	cmp r0, #0
	beq _02048350
	bl FUN_ov16_020fe8b0
	add r0, r8, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe56c
	mov r0, r8
	add r1, r4, r6
	bl FUN_02048be4
_02048350:
	add r5, r5, #1
	cmp r5, #3
	blt _0204830C
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02048364: .word unk_02099E91
_02048368: .word unk_02099E90
	arm_func_end FUN_02048288

	arm_func_start FUN_0204836c ; https://decomp.me/scratch/73s5D
FUN_0204836c: ; 0x0204836C
	stmfd sp!, {r3, lr}
	add r2, r1, #1
	mov r2, r2, lsl #0x18
	mov r12, #0
	mov r3, r2, asr #0x18
_02048380:
	add r2, r0, r12
	add r2, r2, #0x1b00
	ldrsb r2, [r2, #0xbc]
	cmp r3, r2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	add r12, r12, #1
	cmp r12, #0x10
	blt _02048380
	mov lr, #0
_020483A8:
	add r12, r0, lr
	add r2, r12, #0x1b00
	ldrsb r3, [r2, #0xbc]
	add r2, r12, #0x3bc
	add r2, r2, #0x1800
	cmp r3, #0
	addeq r0, r1, #1
	streqb r0, [r2]
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, #0x10
	blt _020483A8
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204836c

	arm_func_start FUN_020483e4 ; https://decomp.me/scratch/IActn
FUN_020483e4: ; 0x020483E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r2, #0
_020483F8:
	add r0, r6, r2, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xbcc]
	cmp r1, #0
	beq _0204842C
	ldr r1, [r0, #0xbd0]
	cmp r5, r1
	ldreq r1, [r0, #0xbd4]
	cmpeq r4, r1
	moveq r1, #0
	streq r1, [r0, #0xbcc]
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0204842C:
	add r2, r2, #1
	cmp r2, #0x10
	blt _020483F8
	mov r8, #0
	mov r7, #0x1b8
_02048440:
	mla r0, r8, r7, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02049178
	cmp r0, #0
	beq _02048468
	mov r0, r6
	mov r1, r8
	bl FUN_0204836c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02048468:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02048440
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020483e4

	arm_func_start FUN_0204847c
FUN_0204847c: ; 0x0204847C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #1
	mov r4, #0x1b8
_0204848C:
	mla r0, r5, r4, r6
	bl FUN_0204912c
	add r5, r5, #1
	cmp r5, #0xb
	blt _0204848C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204847c

	arm_func_start FUN_020484a4 ; https://decomp.me/scratch/pP8lN
FUN_020484a4: ; 0x020484A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02048504 ; =gL5Allocator
	mov r7, r0
	mov r6, #1
	mvn r5, #0
_020484B8:
	add r0, r7, r6, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0xccc]
	cmp r1, #0
	beq _020484E8
	ldr r0, [r4]
	cmp r0, #0
	moveq r0, r5
	beq _020484E0
	bl _ZN7CFileIO11tryFinalizeEPv
_020484E0:
	cmp r0, #0
	bgt _020484F4
_020484E8:
	add r6, r6, #1
	cmp r6, #6
	blt _020484B8
_020484F4:
	mov r0, #0
	cmp r6, #6
	moveq r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02048504: .word gL5Allocator
	arm_func_end FUN_020484a4

	arm_func_start FUN_02048508
FUN_02048508: ; 0x02048508
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mov r4, #0x1b8
_02048518:
	add r0, r7, r5
	add r0, r0, #0x1b00
	ldrsb r0, [r0, #0xbc]
	cmp r0, #0
	beq _02048538
	sub r1, r0, #1
	mla r0, r1, r4, r7
	bl FUN_0204912c
_02048538:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02048518
	add r0, r7, #0x3bc
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x1800
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, r5
	mov r4, #1
_02048564:
	add r0, r7, r6, lsl #4
	add r1, r0, #0x1000
	ldr r12, [r1, #0xbcc]
	cmp r12, #0
	beq _020485A8
	ldr r2, [r1, #0xbd8]
	mov r0, r7
	str r2, [sp]
	ldr r2, [r1, #0xbd0]
	ldr r3, [r1, #0xbd4]
	sub r1, r12, #1
	bl FUN_02047f8c
	add r0, r7, r6, lsl #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xbcc]
	sub r0, r0, #1
	orr r5, r5, r4, lsl r0
_020485A8:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02048564
	add r0, r7, #0x3cc
	add r0, r0, #0x1800
	mov r1, #0
	mov r2, #0x100
	bl MI_CpuFill8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02048508

	arm_func_start FUN_020485d0 ; https://decomp.me/scratch/gFpaQ
FUN_020485d0: ; 0x020485D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	cmp r1, #0
	addge r0, r5, r1, lsl #2
	addge r0, r0, #0x1000
	mov r4, r2
	ldrge r0, [r0, #0xb88]
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #0xd
	bge _02048634
	mov r6, #0
_020485FC:
	add r0, r5, r6, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xb88]
	mov r1, r4
	bl FUN_ov16_020fe530
	cmp r0, #0
	addne r0, r5, r6, lsl #2
	addne r0, r0, #0x1000
	ldrne r0, [r0, #0xb88]
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #8
	blt _020485FC
	b _0204866C
_02048634:
	mov r6, #8
_02048638:
	add r0, r5, r6, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xb88]
	mov r1, r4
	bl FUN_ov16_020fe530
	cmp r0, #0
	addne r0, r5, r6, lsl #2
	addne r0, r0, #0x1000
	ldrne r0, [r0, #0xb88]
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #0xb
	blt _02048638
_0204866C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020485d0

	arm_func_start FUN_02048674 ; https://decomp.me/scratch/wcJef
FUN_02048674: ; 0x02048674
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r1
	mvn r1, #0
	ldr r5, [sp, #0x20]
	mov r9, r0
	mov r7, r2
	mov r6, r3
	bl FUN_020485d0
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x1b8
	mul r10, r7, r0
_020486A8:
	mov r1, r8
	mov r2, r6
	add r0, r9, r10
	bl FUN_02049400
	movs r8, r0
	beq _020486D8
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020fe584
	cmp r0, #0
	beq _020486A8
_020486D8:
	cmp r4, #0
	beq _020486E8
	mov r0, r4
	bl FUN_ov16_020fe56c
_020486E8:
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02048674

	arm_func_start FUN_020486f0 ; https://decomp.me/scratch/nlqV3
FUN_020486f0: ; 0x020486F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r12, r7, #0x1000
	ldr r4, [r12, #0xbb8]
	mov r6, r1
	cmp r4, #0
	mov r5, r3
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, #0
	bl FUN_020485d0
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fe6e8
	add r0, r7, #0x1000
	str r4, [r0, #0xbb8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020486f0

	arm_func_start FUN_02048748 ; https://decomp.me/scratch/g27Q4
FUN_02048748: ; 0x02048748
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x1000
	mov r6, #0
	str r6, [r0, #0xe90]
	b _020489CC
_02048764:
	add r1, r4, #0x1000
	ldr r7, [r1, #0xe90]
	mov r5, #0x2c
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r2, [r0, #0xe18]
	cmp r2, #0
	bne _0204889C
	ldr r0, [r0, #0xe20]
	cmp r0, #0
	ldrne r0, [r1, #0xb84]
	cmpne r0, #0
	ldrne r1, [r1, #0xb80]
	cmpne r1, #0
	beq _020489BC
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x83
	bne _020489BC
	ldr r0, _020489FC ; =0x0208C438
	ldr r5, _02048A00 ; =0x0209A160
	add r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r5]
	ldrsh r0, [r5, #4]
	str r1, [sp, #8]
	bl abs
	ldrsh r1, [r5, #6]
	rsb r1, r1, #0x100
	cmp r1, r0
	bne _020489BC
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _020487FC
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _020489BC
_020487FC:
	mov r8, #0x2c
	mla r0, r7, r8, r4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	mov r0, r4
	bl FUN_02048178
	cmp r0, #0
	beq _020489BC
	mla r0, r7, r8, r4
	add r5, sp, #4
	str r6, [sp, #4]
	str r5, [sp]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe14]
	ldr r2, [r0, #0xe20]
	ldr r3, [r0, #0xe24]
	mov r0, r4
	bl FUN_02048674
	mla r1, r7, r8, r4
	add r1, r1, #0x1000
	str r0, [r1, #0xe14]
	cmp r0, #0
	bne _02048868
	ldr r1, [r1, #0xe20]
	mov r0, r4
	bl FUN_02048288
	b _020489BC
_02048868:
	ldr r2, [r1, #0xe20]
	mov r0, r4
	sub r1, r6, #1
	bl FUN_020485d0
	mla r1, r7, r8, r4
	add r2, r1, #0x1000
	str r0, [r2, #0xe18]
	add r1, r4, #0x1000
	ldr r1, [r1, #0xb80]
	ldr r2, [r2, #0xe14]
	mov r3, r5
	bl FUN_ov16_020fe6e8
	b _020489BC
_0204889C:
	bl GetCurrentMode
	cmp r0, #3
	bne _020489BC
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe92c
	cmp r0, #0
	bne _020489BC
	add r0, r4, r7, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r1, #0xdfc]
	cmp r0, #0
	beq _020489BC
	add r0, r4, #0x1fc
	add r2, r0, #0x1c00
	ldr r0, [r2, r7, lsl #2]
	subs r0, r0, #1
	str r0, [r2, r7, lsl #2]
	bne _02048938
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe8b0
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe56c
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	mov r0, r4
	bl FUN_02048288
	add r0, r4, #0x208
	add r0, r0, #0x1c00
	mla r1, r7, r5, r0
	mov r0, r4
	bl FUN_02048be4
	b _020489BC
_02048938:
	ldr r0, [r1, #0xdfc]
	cmp r0, #0
	sublt r0, r5, #0x2d
	mov r5, #0x2c
	strlt r0, [r1, #0xdfc]
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe9ac
	mla r1, r7, r5, r4
	add r1, r1, #0x1000
	mov r8, r0
	ldr r0, [r1, #0xe18]
	bl FUN_ov16_020fe9a4
	mla r1, r7, r5, r4
	mov r9, r0
	add r0, r1, #0x1000
	ldr r0, [r0, #0xe18]
	mov r1, r9
	bl FUN_ov16_020fe9b4
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	mov r1, #1
	bl FUN_ov16_020fe9bc
	mov r0, #0
	b _020489B4
_020489A4:
	strb r6, [r9, #0xb]
	strb r6, [r9, #0xa]
	add r9, r9, #0x2c
	add r0, r0, #1
_020489B4:
	cmp r0, r8
	blt _020489A4
_020489BC:
	add r0, r4, #0x1000
	ldr r1, [r0, #0xe90]
	add r1, r1, #1
	str r1, [r0, #0xe90]
_020489CC:
	add r0, r4, #0x1000
	ldr r1, [r0, #0xe90]
	cmp r1, #3
	blt _02048764
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_020fe92c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020489FC: .word unk_0208C438
_02048A00: .word unk_0209A160
	arm_func_end FUN_02048748

	arm_func_start FUN_02048a04
FUN_02048a04: ; 0x02048A04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
_02048A20:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xb88]
	bl FUN_ov16_020fe8b0
	add r4, r4, #1
	cmp r4, #8
	blt _02048A20
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0xbb8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02048a04

	arm_func_start FUN_02048a4c
FUN_02048a4c: ; 0x02048A4C
	stmfd sp!, {r3, lr}
	add r0, r0, #0x1000
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fe904
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02048a4c

	arm_func_start FUN_02048a68
FUN_02048a68: ; 0x02048A68
	stmfd sp!, {r3, lr}
	add r0, r0, #0x1000
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fe918
	ldr r0, _02048A90 ; =gL5Sound
	mov r1, #0x64
	bl FUN_0202cff8
	ldmfd sp!, {r3, pc}
_02048A90: .word gL5Sound
	arm_func_end FUN_02048a68

	arm_func_start FUN_02048a94
FUN_02048a94: ; 0x02048A94
	add r0, r0, #0x1000
	str r1, [r0, #0xb84]
	bx lr
	arm_func_end FUN_02048a94

	arm_func_start FUN_02048aa0
FUN_02048aa0: ; 0x02048AA0
	add r0, r0, #0x1000
	str r1, [r0, #0xb80]
	bx lr
	arm_func_end FUN_02048aa0

	arm_func_start FUN_02048aac
FUN_02048aac: ; 0x02048AAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x2c
	mul r4, r1, r2
	mov r5, r0
	add r0, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	cmp r0, #0
	beq _02048AF8
	bl FUN_ov16_020fe8b0
	add r0, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe56c
	add r0, r5, r4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	mov r0, r5
	bl FUN_02048288
_02048AF8:
	add r0, r5, #0x208
	add r1, r0, #0x1c00
	mov r0, r5
	add r1, r1, r4
	bl FUN_02048be4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02048aac

	arm_func_start FUN_02048b10
FUN_02048b10: ; 0x02048B10
	cmp r1, #0
	mov r3, #0
	blt _02048B44
	cmp r1, #3
	bge _02048B44
	add r3, r0, #0x208
	add r12, r3, #0x1c00
	mov r3, #0x2c
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xdfc]
	mla r3, r1, r3, r12
	str r0, [r2]
_02048B44:
	mov r0, r3
	bx lr
	arm_func_end FUN_02048b10

	arm_func_start FUN_02048b4c ; https://decomp.me/scratch/MtrUP
FUN_02048b4c: ; 0x02048B4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	mov r12, #0
	bmi _02048BDC
	cmp r6, #3
	bge _02048BDC
	bl FUN_02048aac
	mov r0, #0x2c
	mul r1, r6, r0
	add r0, r7, #0x208
	add r2, r0, #0x1c00
	ldr r0, [r5]
	add r12, r2, r1
	str r0, [r2, r1]
	ldr r1, [r5, #4]
	add r0, r7, r6, lsl #2
	str r1, [r12, #4]
	ldrsb r1, [r5, #8]
	add lr, r5, #0xc
	add r7, r12, #0xc
	strb r1, [r12, #8]
	ldrsb r1, [r5, #9]
	add r6, r0, #0x1000
	strb r1, [r12, #9]
	ldrsb r0, [r5, #0xa]
	strb r0, [r12, #0xa]
	ldrsb r0, [r5, #0xb]
	strb r0, [r12, #0xb]
	ldmia lr!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	str r4, [r6, #0xdfc]
_02048BDC:
	mov r0, r12
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02048b4c

	arm_func_start FUN_02048be4
FUN_02048be4: ; 0x02048BE4
	stmfd sp!, {r3, lr}
	add r2, r0, #0x208
	add r3, r2, #0x1c00
	mov lr, #0
	mov r2, #0x2c
_02048BF8:
	mla r12, lr, r2, r3
	cmp r12, r1
	bne _02048C24
	add r1, r0, lr, lsl #2
	add r3, r1, #0x1000
	mov r1, #0
	mov r0, r12
	mov r2, #0x2c
	str r1, [r3, #0xdfc]
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_02048C24:
	add lr, lr, #1
	cmp lr, #3
	blt _02048BF8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02048be4

	arm_func_start FUN_02048c34
FUN_02048c34: ; 0x02048C34
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe90]
	bx lr
	arm_func_end FUN_02048c34

	arm_func_start FUN_02048c40
FUN_02048c40: ; 0x02048C40
	add r0, r0, #0x1000
	mov r1, #0
	strb r1, [r0, #0xe8c]
	bx lr
	arm_func_end FUN_02048c40

	arm_func_start FUN_02048c50
FUN_02048c50: ; 0x02048C50
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xe8c]
	bx lr
	arm_func_end FUN_02048c50

	arm_func_start FUN_02048c5c
FUN_02048c5c: ; 0x02048C5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_0202fd38
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02048c5c

	arm_func_start FUN_02048c80
FUN_02048c80: ; 0x02048C80
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_0202fd44
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02048c80

	arm_func_start FUN_02048c98
FUN_02048c98: ; 0x02048C98
	mov r2, #0
	str r1, [r0]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	bx lr
	arm_func_end FUN_02048c98

	arm_func_start FUN_02048cac
FUN_02048cac: ; 0x02048CAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x108
	sub r1, r1, #9
	mov r5, r3
	mov r8, #1
	mov r4, #0
	cmp r1, #1
	movls r8, r4
	mov r10, r0
	mov r9, r2
	cmp r5, #0
	beq _02048EF0
	ldr r7, _0204900C ; =0x02090324
	add r11, sp, #0x34
	ldmia r7!, {r0, r1, r2, r3}
	mov r4, r11
	stmia r11!, {r0, r1, r2, r3}
	ldr r6, _02049010 ; =0x02090338
	ldr r7, [r7]
	ldmia r6!, {r0, r1, r2, r3}
	str r7, [r11]
	add r7, sp, #0x20
	stmia r7!, {r0, r1, r2, r3}
	ldr r6, [r6]
	add r2, sp, #0x14
	mov r0, r5
	mov r1, r9
	add r3, sp, #0x10
	str r6, [r7]
	bl FUN_ov16_020f34f0
	cmp r0, #0
	moveq r0, #0
	addeq sp, sp, #0x108
	streq r0, [r10, #0x24]
	streq r0, [r10, #0x28]
	subeq r0, r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, sp, #0x88
	ldr r1, _02049014 ; =0x0209034C
	mov r0, r7
	bl STD_CopyString
	ldr r1, [r10, #0x24]
	mov r0, r7
	ldr r1, [r4, r1, lsl #2]
	bl STD_ConcatenateString
	add r0, sp, #0x18
	str r0, [sp, #0x1c]
	mov r11, #0
	ldr r0, [sp, #0x14]
	mov r6, #4
	stmia sp, {r0, r6}
	ldr r4, _02049018 ; =gFileIO
	str r11, [sp, #8]
	mov r5, #1
	mov r0, r4
	mov r1, r7
	add r2, sp, #0x1c
	mov r3, r11
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	mov r1, r6
	ldr r6, _0204901C ; =gL5Allocator
	mov r0, r6
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r1, [sp, #0x18]
	mov r0, r6
	mov r3, r8
	mov r2, r5
	mov r1, r1, lsr #8
	bl _ZN11L5Allocator8allocateEmii
	str r0, [r10, #0x1c]
	ldr r0, [sp, #0x134]
	cmp r0, #0
	bne _02048E00
	ldr r1, [sp, #0x14]
	mov r0, r4
	str r1, [sp]
	ldr r2, [sp, #0x10]
	mov r1, r7
	stmib sp, {r2, r5}
	mov r3, r11
	add r2, r10, #0x1c
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	b _02048E28
_02048E00:
	ldr r1, [sp, #0x14]
	mov r0, r4
	str r1, [sp]
	ldr r2, [sp, #0x10]
	mov r1, r7
	stmib sp, {r2, r5}
	mov r3, r11
	add r2, r10, #0x1c
	str r5, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP11L5Allocatorimih
_02048E28:
	movs r5, r0
	mov r0, #0
	addeq sp, sp, #0x108
	streq r0, [r10, #0x24]
	streq r0, [r10, #0x28]
	subeq r0, r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x130]
	cmp r0, #0
	ldrne r1, [r10, #0x24]
	addne r0, sp, #0x20
	ldrne r2, [r0, r1, lsl #2]
	cmpne r2, #0
	beq _02048EA8
	add r4, sp, #0x48
	ldr r1, _02049020 ; =0x02090360
	mov r0, r4
	bl sprintf
	ldr r0, _02049018 ; =gFileIO
	mov r2, r4
	add r1, r10, #0x16c
	bl _ZN7CFileIO19convertPathToFileIDEP8FSFileIDPKc
	ldr r0, [sp, #0x130]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r9
	bl FUN_ov16_020f34f0
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	strne r0, [r10, #0x174]
	mvneq r0, #0
	streq r0, [r10, #0x174]
_02048EA8:
	add r4, sp, #0xc8
	mov r0, r10
	mov r1, r4
	bl FUN_0204927c
	ldr r1, _02049024 ; =0x02090374
	add r0, r10, #0x178
	bl STD_CopyString
	mov r1, r4
	add r0, r10, #0x178
	bl STD_ConcatenateString
	add r0, r10, #0x178
	bl STD_GetStringLength
	add r2, r10, #0x178
	sub r0, r0, #5
	ldr r1, _02049028 ; =0x02090388
	add r0, r2, r0
	bl STD_CopyString
	b _02049000
_02048EF0:
	add r5, sp, #0xc8
	mov r0, r10
	mov r1, r5
	bl FUN_0204927c
	add r6, sp, #0x88
	ldr r1, _0204902C ; =0x02090390
	mov r0, r6
	bl STD_CopyString
	mov r0, r6
	mov r1, r5
	bl STD_ConcatenateString
	ldr r5, _0204901C ; =gL5Allocator
	mov r1, #4
	mov r0, r5
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r0, [sp, #0x134]
	cmp r0, #0
	ldr r0, [r5]
	beq _02048F70
	cmp r0, #0
	moveq r5, #0
	beq _02048FA4
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, r6
	mov r3, r5
	add r2, r10, #0x1c
	str r8, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP11L5Allocatorimih
	b _02048FA0
_02048F70:
	cmp r0, #0
	moveq r5, #0
	beq _02048FA4
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, r6
	mov r3, r5
	add r2, r10, #0x1c
	str r8, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_02048FA0:
	mov r5, r0
_02048FA4:
	cmp r5, #0
	addeq sp, sp, #0x108
	streq r4, [r10, #0x24]
	streq r4, [r10, #0x28]
	subeq r0, r4, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02049030 ; =0x020903A4
	add r0, r10, #0x178
	bl STD_CopyString
	add r1, sp, #0xc8
	add r0, r10, #0x178
	bl STD_ConcatenateString
	add r0, r10, #0x178
	bl STD_GetStringLength
	add r2, r10, #0x178
	sub r0, r0, #5
	ldr r1, _02049034 ; =0x020903B8
	add r0, r2, r0
	bl STD_CopyString
	ldr r0, _02049018 ; =gFileIO
	add r1, r10, #0x16c
	add r2, r10, #0x178
	bl _ZN7CFileIO19convertPathToFileIDEP8FSFileIDPKc
_02049000:
	mov r0, r5
	add sp, sp, #0x108
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204900C: .word unk_02090324
_02049010: .word unk_02090338
_02049014: .word unk_0209034C
_02049018: .word gFileIO
_0204901C: .word gL5Allocator
_02049020: .word unk_02090360
_02049024: .word unk_02090374
_02049028: .word unk_02090388
_0204902C: .word unk_02090390
_02049030: .word unk_020903A4
_02049034: .word unk_020903B8
	arm_func_end FUN_02048cac

	arm_func_start FUN_02049038
FUN_02049038: ; 0x02049038
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r4, r0
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	addne sp, sp, #0x48
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r5, [sp, #0x60]
	str r2, [r4, #0x24]
	cmp r5, #0
	str r3, [r4, #0x28]
	strne r5, [r4, #0x1c]
	bne _0204909C
	ldr r5, [sp, #0x5c]
	mov r2, r3
	str r5, [sp]
	mov r5, #0
	ldr r3, [sp, #0x58]
	str r5, [sp, #4]
	bl FUN_02048cac
	cmp r0, #0
	addlt sp, sp, #0x48
	sublt r0, r5, #1
	ldmltfd sp!, {r3, r4, r5, pc}
_0204909C:
	ldr r1, [r4, #0x1c]
	ldr r2, _02049124 ; =SSD_FileIdentifier
	add r0, r4, #4
	bl SSD_InitFile
	cmp r0, #0
	bne _020490C0
	add r1, sp, #8
	mov r0, r4
	bl FUN_0204927c
_020490C0:
	mov r1, #0
	ldr r5, _02049128 ; =0x00003001
	str r1, [r4, #0x20]
_020490CC:
	mov r0, r4
	bl SSD_GetNextInstructionWraper
	movs r1, r0
	beq _020490F4
	ldrh r0, [r1, #4]
	cmp r0, r5
	ldreq r0, [r4, #0x20]
	addeq r0, r0, #1
	streq r0, [r4, #0x20]
	b _020490CC
_020490F4:
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x2c
	mov r2, #0x40
	bl MI_CpuFill8
	mov r1, r5
	add r0, r4, #0x6c
	mov r2, #0x100
	bl MI_CpuFill8
	mov r0, #1
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
_02049124: .word SSD_FileIdentifier
_02049128: .word 0x00003001
	arm_func_end FUN_02049038

	arm_func_start FUN_0204912c
FUN_0204912c: ; 0x0204912C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r4
	add r0, r5, #4
	bl SSD_InitFile
	ldr r1, [r5, #0x1c]
	ldr r0, _02049174 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	str r4, [r5, #0x24]
	str r4, [r5, #0x28]
	str r4, [r5, #0x20]
	str r4, [r5, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
_02049174: .word gL5Allocator
	arm_func_end FUN_0204912c

	arm_func_start FUN_02049178
FUN_02049178: ; 0x02049178
	ldr r3, [r0, #0x24]
	cmp r3, r1
	ldreq r0, [r0, #0x28]
	cmpeq r0, r2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02049178

	arm_func_start FUN_02049194
FUN_02049194: ; 0x02049194
	cmp r1, #0
	ldrne r3, [r0, #0x24]
	strne r3, [r1]
	cmp r2, #0
	ldrne r0, [r0, #0x28]
	strne r0, [r2]
	bx lr
	arm_func_end FUN_02049194

	arm_func_start FUN_020491b0
FUN_020491b0: ; 0x020491B0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	mov r5, r0
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	addeq sp, sp, #0x40
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02049270 ; =gL5Allocator
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _020491FC
	bl _ZN7CFileIO11tryFinalizeEPv
_020491FC:
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	ldr r2, _02049274 ; =SSD_FileIdentifier2
	add r0, r5, #4
	bl SSD_InitFile
	cmp r0, #0
	bne _02049230
	add r1, sp, #0
	mov r0, r5
	bl FUN_0204927c
_02049230:
	mov r1, #0
	ldr r4, _02049278 ; =0x00003001
	str r1, [r5, #0x20]
_0204923C:
	mov r0, r5
	bl SSD_GetNextInstructionWraper
	movs r1, r0
	beq _02049264
	ldrh r0, [r1, #4]
	cmp r0, r4
	ldreq r0, [r5, #0x20]
	addeq r0, r0, #1
	streq r0, [r5, #0x20]
	b _0204923C
_02049264:
	mov r0, #1
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, pc}
_02049270: .word gL5Allocator
_02049274: .word SSD_FileIdentifier2
_02049278: .word 0x00003001
	arm_func_end FUN_020491b0

	arm_func_start FUN_0204927c
FUN_0204927c: ; 0x0204927C
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, [r2, #0x24]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020492EC
_02049294: ; jump table
	b _020492EC ; case 0
	b _020492A8 ; case 1
	b _020492BC ; case 2
	b _020492CC ; case 3
	b _020492DC ; case 4
_020492A8:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _020492FC ; =0x020903C8
_020492B4:
	bl sprintf
	b _020492F4
_020492BC:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _02049300 ; =0x020903D8
	b _020492B4
_020492CC:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _02049304 ; =0x020903E8
	b _020492B4
_020492DC:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _02049308 ; =0x020903F8
	b _020492B4
_020492EC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020492F4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020492FC: .word unk_020903C8
_02049300: .word unk_020903D8
_02049304: .word unk_020903E8
_02049308: .word unk_020903F8
	arm_func_end FUN_0204927c

	arm_func_start FUN_0204930c
FUN_0204930c: ; 0x0204930C
	stmfd sp!, {r3, lr}
	mov r3, #0
	str r3, [r1, #4]
	str r3, [r1]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	moveq r0, r3
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r0, #0x24]
	mov r2, #0x40
	str r3, [r1]
	ldr r3, [r0, #0x28]
	add r0, r0, #0x2c
	str r3, [r1, #4]
	add r1, r1, #8
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204930c

	arm_func_start FUN_02049354
FUN_02049354: ; 0x02049354
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r2
	ldr r2, [r5]
	mov r6, r0
	cmp r2, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp, #0x20]
	str r3, [sp]
	str r0, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	ldr r3, [r5, #4]
	mov r0, r6
	bl FUN_02049038
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r5, #8
	add r1, r6, #0x2c
	mov r2, #0x40
	bl MI_CpuCopy8
	mov r1, r4
	add r0, r6, #0x6c
	mov r2, #0x100
	bl MI_CpuFill8
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_02049354

	arm_func_start FUN_020493dc
FUN_020493dc: ; 0x020493DC
	cmp r1, #0x10
	movge r1, #0
	add r0, r0, #0x2c
	add r0, r0, r1, lsl #2
	bx lr
	arm_func_end FUN_020493dc

	arm_func_start SSD_GetNextInstructionWraper
SSD_GetNextInstructionWraper: ; 0x020493F0
	ldr r12, _020493FC ; =SSD_GetNextInstruction
	add r0, r0, #4
	bx r12
_020493FC: .word SSD_GetNextInstruction
	arm_func_end SSD_GetNextInstructionWraper

	arm_func_start FUN_02049400
FUN_02049400: ; 0x02049400
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, r2
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, _02049478 ; =0x00003001
_02049420:
	mov r0, r5
	bl SSD_GetNextInstructionWraper
	movs r1, r0
	beq _02049470
	ldrh r0, [r1, #4]
	cmp r0, r6
	bne _02049420
	ldrb r0, [r1, #6]
	add r2, r0, #7
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	add r2, r1, r0, lsl #2
	ldr r0, [r2, #8]
	add r0, r5, r0
	ldrsb r0, [r0, #0x6c]
	cmp r0, #0
	ldreq r0, [r2, #0xc]
	cmpeq r4, r0
	bne _02049420
_02049470:
	mov r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_02049478: .word 0x00003001
	arm_func_end FUN_02049400

	arm_func_start FUN_0204947c
FUN_0204947c: ; 0x0204947C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204959c
	ldr r1, _02049498 ; =0x02090428
	mov r0, r4
	str r1, [r4]
	ldmfd sp!, {r4, pc}
_02049498: .word unk_02090428
	arm_func_end FUN_0204947c

	arm_func_start FUN_0204949c
FUN_0204949c: ; 0x0204949C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020495e4
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204949c

	arm_func_start FUN_020494b0
FUN_020494b0: ; 0x020494B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020495e4
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020494b0

	arm_func_start FUN_020494cc
FUN_020494cc: ; 0x020494CC
	ldr r12, _020494D4 ; =FUN_020497ec
	bx r12
_020494D4: .word FUN_020497ec
	arm_func_end FUN_020494cc

	arm_func_start FUN_020494d8
FUN_020494d8: ; 0x020494D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020f2700
	cmp r0, #0xa
	bne _0204950C
	mov r0, r4
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0204950C:
	cmp r0, #0xb
	bne _02049530
	mov r0, r4
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049530:
	mov r0, r5
	mov r1, r4
	bl FUN_02049840
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020494d8

	arm_func_start FUN_02049540
FUN_02049540: ; 0x02049540
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_020f2700
	cmp r0, #0xa
	bne _0204956C
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0204956C:
	cmp r0, #0xb
	bne _0204958C
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_0204958C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02049540

	arm_func_start FUN_02049594
FUN_02049594: ; 0x02049594
	mov r0, #0
	bx lr
	arm_func_end FUN_02049594

	arm_func_start FUN_0204959c
FUN_0204959c: ; 0x0204959C
	ldr r2, _020495B0 ; =0x02090484
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
_020495B0: .word unk_02090484
	arm_func_end FUN_0204959c

	arm_func_start FUN_020495b4
FUN_020495b4: ; 0x020495B4
	ldr r2, _020495C8 ; =0x02090484
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
_020495C8: .word unk_02090484
	arm_func_end FUN_020495b4

	arm_func_start FUN_020495cc
FUN_020495cc: ; 0x020495CC
	bx lr
	arm_func_end FUN_020495cc

	arm_func_start FUN_020495d0
FUN_020495d0: ; 0x020495D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020495d0

	arm_func_start FUN_020495e4
FUN_020495e4: ; 0x020495E4
	bx lr
	arm_func_end FUN_020495e4

	arm_func_start FUN_020495e8
FUN_020495e8: ; 0x020495E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _02049728 ; =0x020A0640
	mov r6, #0
	ldrb r3, [r0, #0x8f]
	cmp r3, #2
	movls r4, #1
	bls _02049664
	cmp r3, #3
	blo _02049618
	cmp r3, #5
	movls r4, #2
	bls _02049664
_02049618:
	ldrb r3, [r0, #0x8f]
	cmp r3, #6
	blo _02049630
	cmp r3, #8
	movls r4, #3
	bls _02049664
_02049630:
	ldrb r3, [r0, #0x8f]
	cmp r3, #9
	blo _02049648
	cmp r3, #0xb
	movls r4, #4
	bls _02049664
_02049648:
	ldrb r3, [r0, #0x8f]
	cmp r3, #0xc
	blo _02049660
	cmp r3, #0xe
	movls r4, #5
	bls _02049664
_02049660:
	mvn r4, #0
_02049664:
	ldr r3, _0204972C ; =0x020A0648
	sub r5, r4, #1
	ldr r4, [r0, #4]
	ldr r0, [r3, r5, lsl #2]
	cmp r4, r0
	movhs r4, #1
	movlo r4, #0
	cmp r1, #0
	cmpeq r2, #0
	bne _020496C4
	ldr r0, _02049730 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020496C4
	ldr r0, _02049730 ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020496C8
_020496C4:
	mov r4, #0
_020496C8:
	ldr r5, _02049734 ; 0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_02145838
	mov r7, r0
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	bl FUN_ov132_02145a44
	cmp r0, #0
	bne _02049708
	ldr r0, [r5]
	mov r2, r7
	mov r1, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	beq _02049710
_02049708:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02049710:
	ldr r0, [r5]
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, r6
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02049728: .word unk_020A0640
_0204972C: .word unk_020A0648
_02049730: .word unk_0209A2C0
_02049734: .word unk_02099EF0
	arm_func_end FUN_020495e8

	arm_func_start FUN_02049738
FUN_02049738: ; 0x02049738
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r4, r0
	mov r7, r6
	adds r0, r4, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r6
	mov r2, #0x58
	bl MI_CpuFill8
	mov r5, r6
_02049760:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020497BC
	bl FUN_0206d64c
	cmp r0, #0
	beq _020497BC
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _020497BC
	mov r0, r8
	bl FUN_ov16_020f0810
	cmp r0, #0
	moveq r1, r6
	addne r1, r7, #0xb
	add r0, r4, r1, lsl #2
	str r8, [r0, #8]
	ldr r0, [r8, #0x88]
	addeq r6, r6, #1
	addne r7, r7, #1
	cmp r0, #0
	strneb r1, [r0, #0x2c]
_020497BC:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02049760
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02049738

	arm_func_start FUN_020497cc
FUN_020497cc: ; 0x020497CC
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_020497cc

	arm_func_start FUN_020497d8
FUN_020497d8: ; 0x020497D8
	mov r3, #0xb
	mla r2, r1, r3, r2
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_020497d8

	arm_func_start FUN_020497ec
FUN_020497ec: ; 0x020497EC
	ldr r12, _02049800 ; =MI_CpuFill8
	add r0, r0, #8
	mov r1, #0
	mov r2, #0x58
	bx r12
_02049800: .word MI_CpuFill8
	arm_func_end FUN_020497ec

	arm_func_start FUN_02049804
FUN_02049804: ; 0x02049804
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_0207318c
	bl FUN_02073e54
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02049804

	arm_func_start FUN_02049818
FUN_02049818: ; 0x02049818
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_0207318c
	bl FUN_02073e68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02049818

	arm_func_start FUN_0204982c
FUN_0204982c: ; 0x0204982C
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204982c

	arm_func_start FUN_02049840
FUN_02049840: ; 0x02049840
	stmfd sp!, {r3, lr}
	ldr r2, _02049898 ; =0x0209A2C0
	ldr r0, [r2, #0x48]
	cmp r0, #0
	blt _0204986C
	ldrsh r1, [r1, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0204986C:
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	blt _02049890
	ldrsh r1, [r1, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02049890:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02049898: .word unk_0209A2C0
	arm_func_end FUN_02049840

	arm_func_start FUN_0204989c
FUN_0204989c: ; 0x0204989C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r0, r1
	bl FUN_02040188
	mov r1, r4
	bl FUN_02040764
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204989c

	arm_func_start FUN_020498b8
FUN_020498b8: ; 0x020498B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r5, r2
	mov r0, r7
	mov r4, r3
	bl FUN_02040188
	mov r1, r5
	mov r6, r0
	bl FUN_02040764
	cmp r0, #0
	beq _02049964
	cmp r7, #0
	ldreq r1, [r6, #4]
	ldr r3, [r5]
	subeq r2, r1, #0x6000
	ldrne r1, [r6, #0xc]
	ldr r12, [r6]
	addne r2, r1, #0x6000
	subs lr, r12, r3
	ldr r0, [r6, #8]
	rsbmi lr, lr, #0
	subs r6, r0, r3
	ldr r0, [r5, #4]
	rsbmi r6, r6, #0
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp lr, r6
	cmplt lr, r0
	ldrlt r0, [r5, #4]
	sublt r1, r12, #0x6000
	strlt r1, [r4]
	strlt r0, [r4, #4]
	blt _0204995C
	cmp r6, lr
	cmplt r6, r0
	ldrlt r0, [r5, #4]
	addlt r1, r12, #0x6000
	strlt r1, [r4]
	strlt r0, [r4, #4]
	strge r3, [r4]
	strge r2, [r4, #4]
_0204995C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02049964:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020498b8

	arm_func_start FUN_0204996c
FUN_0204996c: ; 0x0204996C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r0, r1
	mov r5, r3
	bl FUN_020401a0
	ldr r2, [r0]
	ldr r3, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r0, #4]
	sub r2, r3, r2
	sub r0, r1, r0
	mov r1, r2, asr #4
	mov r4, r0, asr #4
	smull r0, r2, r1, r1
	adds r3, r0, #0x800
	smull r1, r0, r4, r4
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	mov r4, #0
	bl FX_Sqrt
	ldr r1, _020499FC ; =0x00036E66
	ldr r2, _02049A00 ; =0x51EB851F
	mul r3, r5, r1
	smull r1, r5, r2, r3
	mov r1, r3, lsr #0x1f
	add r5, r1, r5, asr #5
	cmp r5, r0, lsl #4
	movgt r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020499FC: .word 0x00036E66
_02049A00: .word 0x51EB851F
	arm_func_end FUN_0204996c

	arm_func_start FUN_02049a04
FUN_02049a04: ; 0x02049A04
	ldr r0, _02049A1C ; =0x0209A83C
	cmp r1, #0
	ldrne r0, _02049A20 ; =0x0209A82C
	ldr r12, _02049A24 ; =FUN_02040764
	mov r1, r2
	bx r12
_02049A1C: .word unk_0209A83C
_02049A20: .word unk_0209A82C
_02049A24: .word FUN_02040764
	arm_func_end FUN_02049a04

	arm_func_start FUN_02049a28
FUN_02049a28: ; 0x02049A28
	mov r0, #1
	bx lr
	arm_func_end FUN_02049a28

	arm_func_start FUN_02049a30
FUN_02049a30: ; 0x02049A30
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_02049a30

	arm_func_start FUN_02049a38
FUN_02049a38: ; 0x02049A38
	mov r0, #1
	bx lr
	arm_func_end FUN_02049a38

	arm_func_start FUN_02049a40
FUN_02049a40: ; 0x02049A40
	cmp r1, #4
	moveq r0, #4
	bxeq lr
	cmp r1, #5
	moveq r0, #3
	bxeq lr
	cmp r1, #6
	moveq r0, #2
	bxeq lr
	mov r0, #1
	cmp r1, #7
	movne r0, #0
	bx lr
	arm_func_end FUN_02049a40

	arm_func_start FUN_02049a74
FUN_02049a74: ; 0x02049A74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	mov r5, r2
	ldrb r2, [r4, #2]
	ldrb r12, [r4]
	mov r3, #0
	cmp r2, #0xa
	moveq r3, #1
	cmp r12, #0xa
	addls pc, pc, r12, lsl #2
	b _02049BB4
_02049AA0: ; jump table
	b _02049ACC ; case 0
	b _02049AD4 ; case 1
	b _02049AE8 ; case 2
	b _02049AFC ; case 3
	b _02049B20 ; case 4
	b _02049B20 ; case 5
	b _02049B20 ; case 6
	b _02049B20 ; case 7
	b _02049B6C ; case 8
	b _02049B84 ; case 9
	b _02049B9C ; case 10
_02049ACC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02049AD4:
	ldrh r0, [r4, #4]
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049AE8:
	ldrh r0, [r4, #4]
	cmp r5, r0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049AFC:
	ldrh r0, [r4, #4]
	cmp r5, r0
	blt _02049B18
	ldrh r0, [r4, #6]
	cmp r5, r0
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, pc}
_02049B18:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B20:
	cmp r3, #0
	cmpeq r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r12
	bl FUN_02049a40
	cmp r0, #0
	mov r2, #0
	ble _02049B64
_02049B44:
	add r1, r4, r2, lsl #1
	ldrh r1, [r1, #4]
	cmp r5, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, r0
	blt _02049B44
_02049B64:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B6C:
	ldr r3, [sp, #0x10]
	bl FUN_0204f02c
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B84:
	ldr r3, [sp, #0x10]
	bl FUN_0204f02c
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B9C:
	ldr r3, [sp, #0x10]
	bl FUN_0204f02c
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049BB4:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02049a74

	arm_func_start FUN_02049bbc
FUN_02049bbc: ; 0x02049BBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r9, r1
	mov r5, r2
	mov r6, r0
	cmpne r5, #0
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_0204b1b8
	mov r8, r0
	cmp r8, #1
	bne _02049C14
	mov r0, r9
	bl FUN_0206cbf8
	mov r7, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r7, r0
	beq _02049C98
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C14:
	cmp r8, #5
	mov r0, r9
	bne _02049C38
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _02049C98
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C38:
	bl FUN_0206cbf8
	mov r7, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #2
	bne _02049C78
	mov r0, r9
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _02049C98
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C78:
	cmp r8, #3
	bne _02049C98
	mov r0, r9
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C98:
	ldrb r0, [r4, #2]
	mov r8, #1
	cmp r0, #0xe
	moveq r8, #6
	beq _02049CB4
	cmp r0, #0xd
	moveq r8, #6
_02049CB4:
	cmp r8, #0
	mov r7, #0
	ble _02049D04
_02049CC0:
	ldrb r2, [r4, #2]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	bl FUN_0204f02c
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r7, [sp]
	bl FUN_02049a74
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r7, r7, #1
	cmp r7, r8
	blt _02049CC0
_02049D04:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049bbc

	arm_func_start FUN_02049d0c
FUN_02049d0c: ; 0x02049D0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r5, sp, #0
	mov r7, #0
	movs r4, r1
	mov r9, r0
	mov r6, r2
	mov r8, r3
	strh r7, [r5]
	strh r7, [r5, #2]
	beq _02049D48
	mov r0, r4
	mov r1, r8
	bl FUN_0206cdf8
	cmp r6, r0
	beq _02049D50
_02049D48:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049D50:
	mov r0, r4
	mov r1, r8
	mov r2, r7
	mov r3, r7
	bl FUN_0206d150
	mov r0, r9
	mov r1, r6
	bl FUN_0204a2c4
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049D8C:
	cmp r7, r8
	beq _02049DEC
	mov r0, r4
	mov r1, r7
	bl FUN_0206cdf8
	cmp r6, r0
	bne _02049DEC
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl FUN_0206ce24
	mov r5, #1
	mov r6, r0
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl FUN_0206ce24
	mov r3, r0
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl FUN_0206d150
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049DEC:
	add r7, r7, #1
	cmp r7, #6
	blt _02049D8C
	ldrh r2, [sp]
	ldrh r3, [sp, #2]
	mov r0, r4
	mov r1, r8
	bl FUN_0206d150
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049d0c

	arm_func_start FUN_02049e14
FUN_02049e14: ; 0x02049E14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r8, r1
	mov r9, r0
	mov r7, r2
	mvn r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r3, #0
	movne r5, #0
	movne r6, #4
	moveq r5, #4
	moveq r6, #6
	cmp r5, r6
	bge _02049E80
_02049E4C:
	mov r0, r8
	mov r1, r5
	bl FUN_0206cdf8
	cmp r0, r7
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	bge _02049E74
	cmp r0, #0
	moveq r4, r5
_02049E74:
	add r5, r5, #1
	cmp r5, r6
	blt _02049E4C
_02049E80:
	cmp r4, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl FUN_02049ee8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049e14

	arm_func_start FUN_02049ea4
FUN_02049ea4: ; 0x02049EA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r0, r1
	mov r1, r4
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	movs r1, r0
	beq _02049EE0
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02049ee8
	mov r4, r0
_02049EE0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02049ea4

	arm_func_start FUN_02049ee8
FUN_02049ee8: ; 0x02049EE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r5
	bl FUN_0204a2c4
	movs r2, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r6
	mov r3, #1
	bl FUN_02049fc8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #4
	cmpne r4, #5
	beq _02049F84
	mov r1, r5, lsl #0x10
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_0206cfd0
	movs r9, r0
	beq _02049FA0
	mov r8, #0
_02049F5C:
	mov r0, r6
	mov r1, r8
	bl FUN_0206cdf8
	cmp r5, r0
	moveq r4, r8
	beq _02049FA0
	add r8, r8, #1
	cmp r8, #4
	blt _02049F5C
	b _02049FA0
_02049F84:
	mov r2, r5, lsl #0x10
	mov r0, r6
	mov r1, r4
	mov r2, r2, lsr #0x10
	mov r3, #1
	bl FUN_0206ceac
	mov r9, r0
_02049FA0:
	cmp r9, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_02049d0c
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049ee8

	arm_func_start FUN_02049fc8
FUN_02049fc8: ; 0x02049FC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldrb r2, [r2, #7]
	mov r8, r0
	mov r7, r1
	cmp r2, #0
	mov r5, r3
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r4, sp, #0
	mov r1, r4
	bl FUN_0204a1e0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl FUN_0204b1b8
	cmp r0, #1
	bne _0204A038
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r4
	bl FUN_02049bbc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204A038:
	cmp r5, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r5, r6
_0204A050:
	mov r0, r8
	mov r1, r5
	bl FUN_0204bbd0
	mov r2, r0
	mov r0, r8
	mov r1, r7
	mov r3, r4
	bl FUN_02049bbc
	cmp r0, #0
	beq _0204A08C
	mov r0, r4
	add r6, r6, #1
	bl FUN_0204b1c8
	cmp r6, r0
	bge _0204A098
_0204A08C:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0204A050
_0204A098:
	add r0, sp, #0
	bl FUN_0204b1c8
	cmp r6, r0
	movge r0, #1
	movlt r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02049fc8

	arm_func_start FUN_0204a0b4
FUN_0204a0b4: ; 0x0204A0B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r7, r1
	mov r5, r3
	mov r1, r6
	mov r8, r0
	mov r9, #0
	bl FUN_0204a2c4
	mov r4, r0
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	cmp r4, #0
	beq _0204A118
	ldrb r0, [r4]
	cmp r0, #0
	beq _0204A10C
	ldrsh r0, [r4, #4]
	cmp r0, #0
	movge r0, #1
	bge _0204A110
_0204A10C:
	mov r0, #0
_0204A110:
	cmp r0, #0
	bne _0204A130
_0204A118:
	cmp r5, #0
	movne r0, #3
	strne r0, [r5]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0204A130:
	mov r0, r7
	bl FUN_0206cc84
	mov r10, r0
	mov r0, r4
	mov r1, r7
	bl FUN_0204b114
	cmp r10, r0
	bge _0204A168
	cmp r5, #0
	movne r0, #4
	strne r0, [r5]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0204A168:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0204A1CC
	mov r4, #0
_0204A178:
	mov r0, r7
	mov r1, r4
	bl FUN_0206cdf8
	cmp r6, r0
	bne _0204A1C0
	add r3, sp, #0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_0204a318
	cmp r0, #0
	bne _0204A1CC
	cmp r5, #0
	movne r0, #8
	strne r0, [r5]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0204A1C0:
	add r4, r4, #1
	cmp r4, #6
	blt _0204A178
_0204A1CC:
	cmp r5, #0
	strne r9, [r5]
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204a0b4

	arm_func_start FUN_0204a1e0
FUN_0204a1e0: ; 0x0204A1E0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r2
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, r4
	bl FUN_0204a2a0
	cmp r0, #0
	beq _0204A23C
	ldr r1, [sp, #0x1c]
	mov r2, #0xc
	bl MI_CpuCopy8
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0204A23C:
	ldr r3, _0204A298 ; =gL5Allocator
	ldr r1, _0204A29C ; =0x020904D8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0204A27C
	mov r2, #0xc
	mul r12, r4, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x1c
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_0204A27C:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0204A298: .word gL5Allocator
_0204A29C: .word unk_020904D8
	arm_func_end FUN_0204a1e0

	arm_func_start FUN_0204a2a0
FUN_0204a2a0: ; 0x0204A2A0
	ldr r2, [r0, #0x808]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0x40
	movhs r0, #0
	movlo r0, #0xc
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0204a2a0

	arm_func_start FUN_0204a2c4
FUN_0204a2c4: ; 0x0204A2C4
	cmp r1, #0x200
	movhs r0, #0
	ldrlo r2, [r0, #0x7d4]
	movlo r0, #0x24
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0204a2c4

	arm_func_start FUN_0204a2dc
FUN_0204a2dc: ; 0x0204A2DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	mov r1, r2
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_0204a2c4
	cmp r0, #0
	ldrneb r0, [r0, #0xa]
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204a2dc

	arm_func_start FUN_0204a318
FUN_0204a318: ; 0x0204A318
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
_0204A340:
	mov r0, r7
	mov r1, r4
	bl FUN_0206cdf8
	cmp r6, r0
	beq _0204A360
	add r4, r4, #1
	cmp r4, #6
	blt _0204A340
_0204A360:
	cmp r4, #6
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r12, #1
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r12, [sp]
	bl FUN_0204a394
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204a318

	arm_func_start FUN_0204a394
FUN_0204a394: ; 0x0204A394
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r9, r3
	movs r10, r1
	mov r11, r0
	ldr r8, [sp, #0x98]
	str r2, [sp, #0xc]
	cmpne r9, #0
	mov r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strneh r0, [r9, #2]
	ldrneh r0, [r9, #2]
	ldr r1, [sp, #0xc]
	strneh r0, [r9]
	mov r0, r10
	bl FUN_0206cdf8
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	mov r0, r11
	bl FUN_0204a2c4
	movs r5, r0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r7, r6
	ble _0204A4C4
_0204A41C:
	ldr r1, [sp, #0xc]
	mov r0, r10
	mov r2, r7
	bl FUN_0206ce24
	cmp r0, #0
	beq _0204A4B4
	ldrb r3, [r5, #0xa]
	mov r2, #0
	cmp r3, #0
	ble _0204A460
_0204A444:
	mov r1, r2, lsl #1
	ldrh r1, [r9, r1]
	cmp r0, r1
	beq _0204A460
	add r2, r2, #1
	cmp r2, r3
	blt _0204A444
_0204A460:
	cmp r2, r3
	bne _0204A4B4
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _0204A4B4
	cmp r8, #0
	beq _0204A48C
	bl FUN_0206d688
	cmp r0, #0
	beq _0204A4B4
_0204A48C:
	mov r0, r4
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	strh r0, [r9, r1]
	ldrb r0, [r5, #0xa]
	add r6, r6, #1
	cmp r6, r0
	addeq sp, sp, #0x74
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204A4B4:
	ldrb r0, [r5, #0xa]
	add r7, r7, #1
	cmp r7, r0
	blt _0204A41C
_0204A4C4:
	cmp r8, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xb]
	cmp r0, #0x51
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xf]
	cmp r0, #0x51
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_0206d688
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _0204A740 ; 0x02099EF0
	ldr r0, [r8]
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r7, r4
_0204A534:
	mov r0, r11
	mov r1, r7
	bl FUN_0204bbd0
	cmp r10, r0
	bne _0204A55C
	ldr r0, [r8]
	mov r1, r7
	mov r2, #0
	bl FUN_ov132_02143088
	mov r4, r0
_0204A55C:
	add r7, r7, #1
	cmp r7, #0x16
	blt _0204A534
	cmp r4, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, sp, #0x1c
	str r1, [sp]
	ldr r0, _0204A744 ; =0x00060001
	add r7, sp, #0x48
	str r0, [sp, #4]
	ldr r0, _0204A740 ; 0x02099EF0
	str r10, [sp, #8]
	ldr r0, [r0]
	mov r1, r4
	mov r3, r7
	mov r2, #0xb
	bl FUN_ov132_0213f1d8
	str r0, [sp, #0x14]
	cmp r0, #0
	mov r4, #0
	ble _0204A5D0
_0204A5B8:
	ldr r0, [r7, r4, lsl #2]
	bl FUN_ov16_020efa80
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0204A5B8
_0204A5D0:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0204A5E8
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0204A734
_0204A5E8:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	ble _0204A734
_0204A5FC:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x48
	ldr r0, [r1, r0, lsl #2]
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _0204A71C
	bl FUN_0206cc00
	mov r4, r0
	mov r0, r10
	bl FUN_0206cc00
	cmp r4, r0
	beq _0204A71C
	ldrb r0, [r5, #0xa]
	mov r7, #0
	cmp r0, #0
	ble _0204A66C
	ldr r4, _0204A748 ; =0x00000FFF
_0204A640:
	mov r0, r8
	bl FUN_0206cc00
	mov r1, r7, lsl #1
	ldrh r1, [r9, r1]
	and r1, r1, r4
	cmp r1, r0
	beq _0204A66C
	ldrb r0, [r5, #0xa]
	add r7, r7, #1
	cmp r7, r0
	blt _0204A640
_0204A66C:
	ldrb r0, [r5, #0xa]
	cmp r7, r0
	bne _0204A71C
	ldrh r0, [r9]
	cmp r0, #0
	bne _0204A6C0
	mov r4, #0
	str r4, [sp]
	mov r4, #1
	ldr r2, [sp, #0x18]
	mov r0, r11
	mov r1, r10
	mov r3, r8
	str r4, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	bne _0204A71C
	mov r0, r8
	bl FUN_0206cbf8
	strh r0, [r9]
	b _0204A704
_0204A6C0:
	ldrh r0, [r9, #2]
	cmp r0, #0
	bne _0204A704
	mov r4, #0
	str r4, [sp]
	mov r4, #2
	ldr r2, [sp, #0x18]
	mov r0, r11
	mov r1, r10
	mov r3, r8
	str r4, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	bne _0204A71C
	mov r0, r8
	bl FUN_0206cbf8
	strh r0, [r9, #2]
_0204A704:
	ldrb r0, [r5, #0xa]
	add r6, r6, #1
	cmp r6, r0
	addeq sp, sp, #0x74
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204A71C:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _0204A5FC
_0204A734:
	mov r0, #0
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204A740: .word unk_02099EF0
_0204A744: .word 0x00060001
_0204A748: .word 0x00000FFF
	arm_func_end FUN_0204a394

	arm_func_start FUN_0204a74c
FUN_0204a74c: ; 0x0204A74C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r1, r2
	mov r4, r3
	bl FUN_0206cdf8
	ldrb r1, [sp, #0x18]
	mov r2, r0
	ldr r12, [sp, #0x1c]
	str r1, [sp]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp, #4]
	bl FUN_0204a798
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204a74c

	arm_func_start FUN_0204a798
FUN_0204a798: ; 0x0204A798
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	cmp r1, #0
	mov r10, r2
	mov r8, r3
	mov r7, #0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r1
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r8
	bl FUN_0206cbf8
	cmp r4, r0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r10
	bl FUN_0204a2c4
	movs r4, r0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	moveq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _0204A82C
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204A82C:
	ldr r0, [sp, #0x24]
	cmp r0, #1
	ldreqb r5, [r4, #0xb]
	ldreqsh r6, [r4, #0xc]
	beq _0204A84C
	cmp r0, #2
	ldreqb r5, [r4, #0xf]
	ldreqsh r6, [r4, #0x10]
_0204A84C:
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0x51
	mov r0, r9
	bne _0204A884
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	mov r7, #1
	cmp r0, #0
	moveq r7, #0
	b _0204A908
_0204A884:
	mov r1, r5
	bl FUN_0204ef90
	cmp r0, #0
	beq _0204A8E8
	mov r10, #1
	cmp r5, #0xe
	moveq r10, #6
	beq _0204A8AC
	cmp r5, #0xd
	moveq r10, #6
_0204A8AC:
	cmp r10, #0
	mov r4, #0
	ble _0204A908
_0204A8B8:
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204f02c
	cmp r6, r0
	moveq r7, #1
	beq _0204A908
	add r4, r4, #1
	cmp r4, r10
	blt _0204A8B8
	b _0204A908
_0204A8E8:
	mov r7, #0
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r7
	bl FUN_0204f02c
	cmp r0, r6
	movge r7, #1
_0204A908:
	mov r0, #4
	cmp r7, #0
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204a798

	arm_func_start FUN_0204a918
FUN_0204a918: ; 0x0204A918
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r6, r2
	movs r7, r1
	cmpne r6, #0
	mov r8, r0
	mov r5, r3
	mov r9, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r6
	bl FUN_0204a2c4
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, r9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	moveq r5, r9
	beq _0204A9B8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r9, [sp]
	mov r12, #1
	str r12, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_0206cbf8
	mov r5, r0
_0204A9B8:
	ldrb r0, [r4, #0xa]
	mov r4, #0
	cmp r0, #2
	bne _0204AA0C
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _0204AA0C
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r4, [sp]
	mov r8, #2
	str r8, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x28]
	bl FUN_0206cbf8
	mov r4, r0
_0204AA0C:
	mov r9, #0
	mov r8, r9
_0204AA14:
	mov r0, r7
	mov r1, r8
	bl FUN_0206cdf8
	cmp r6, r0
	bne _0204AA40
	mov r0, r7
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0206d150
	add r9, r9, #1
_0204AA40:
	add r8, r8, #1
	cmp r8, #6
	blt _0204AA14
	mov r0, #1
	cmp r9, #0
	movle r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0204a918

	arm_func_start FUN_0204aa60
FUN_0204aa60: ; 0x0204AA60
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r6, r0
	mov r4, r3
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, r5
	mov r1, r2
	bl FUN_0206cdf8
	ldr r12, [sp, #0x18]
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_0204a918
	ldr r0, _0204AAE4 ; =0x020A0640
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	beq _0204AAD8
	ldrsh r3, [r5, #0x94]
	cmp r3, #0
	blt _0204AAD8
	cmp r3, #0x20
	ldrlt r2, [r0, #0x78]
	movlt r1, #1
	orrlt r1, r2, r1, lsl r3
	strlt r1, [r0, #0x78]
_0204AAD8:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0204AAE4: .word unk_020A0640
	arm_func_end FUN_0204aa60

	arm_func_start FUN_0204aae8
FUN_0204aae8: ; 0x0204AAE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, #0
	mov r9, r3
	mov r11, r1
	mov r10, r2
	mov r5, r4
	mov r2, r4
	cmp r9, #0
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	mov r0, r4
	mov r1, r4
	ble _0204AB2C
_0204AB1C:
	str r1, [r10, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r9
	blt _0204AB1C
_0204AB2C:
	cmp r7, #0
	mov r1, #0
	ble _0204AB48
_0204AB38:
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r7
	blt _0204AB38
_0204AB48:
	mov r6, #0
_0204AB4C:
	mov r0, r11
	mov r1, r6
	bl FUN_0206cdf8
	cmp r4, r9
	strlt r0, [r10, r4, lsl #2]
	add r6, r6, #1
	addlt r4, r4, #1
	cmp r6, #4
	blt _0204AB4C
	cmp r6, #6
	bge _0204AB9C
_0204AB78:
	mov r0, r11
	mov r1, r6
	bl FUN_0206cdf8
	cmp r5, r7
	strlt r0, [r8, r5, lsl #2]
	add r6, r6, #1
	addlt r5, r5, #1
	cmp r6, #6
	blt _0204AB78
_0204AB9C:
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204aae8

	arm_func_start FUN_0204aba4
FUN_0204aba4: ; 0x0204ABA4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	cmp r1, #0
	ldr lr, [sp, #0x10]
	ldr r12, [sp, #0x14]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, #0
	bne _0204ABF8
	cmp r3, #0
	mov r2, lr
	mov r3, #0
	str r12, [sp]
	bne _0204ABEC
	bl FUN_0204aeb0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204ABEC:
	bl FUN_0204aed8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204ABF8:
	cmp r2, #2
	bne _0204AC20
	mov r2, #0x40
	str r2, [sp]
	mov r3, lr
	mov r2, #0
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204AC20:
	cmp r3, #0
	mov r2, lr
	mov r3, #0
	str r12, [sp]
	bne _0204AC40
	bl FUN_0204af00
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204AC40:
	bl FUN_0204af28
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204aba4

	arm_func_start FUN_0204ac4c
FUN_0204ac4c: ; 0x0204AC4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, #0
	mov r10, r0
	mov r9, r1
	add r4, sp, #8
	mov r7, #0x20
	mov r6, r8
	mov r5, #7
_0204AC70:
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r8
	str r6, [sp, #4]
	bl FUN_0204ad5c
	movs r2, r0
	addeq sp, sp, #0xc
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r9
	mov r3, r4
	bl FUN_0204a0b4
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r8, r8, #1
	cmp r8, #6
	blt _0204AC70
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204ac4c

	arm_func_start FUN_0204acd4
FUN_0204acd4: ; 0x0204ACD4
	tst r3, #1
	beq _0204ACEC
	mov r0, #1
	cmp r2, #0
	movne r0, #2
	bx lr
_0204ACEC:
	mov r0, #3
	cmp r2, #0
	movne r0, #2
	bx lr
	arm_func_end FUN_0204acd4

	arm_func_start FUN_0204acfc
FUN_0204acfc: ; 0x0204ACFC
	tst r3, #1
	beq _0204AD14
	mov r0, #0xc
	cmp r2, #0
	movne r0, #0xb
	bx lr
_0204AD14:
	mov r0, #0xa
	cmp r2, #0
	movne r0, #0xb
	bx lr
	arm_func_end FUN_0204acfc

	arm_func_start FUN_0204ad24
FUN_0204ad24: ; 0x0204AD24
	tst r3, #0x10
	beq _0204AD3C
	mov r0, #0x16
	cmp r2, #0
	movne r0, #0x17
	bx lr
_0204AD3C:
	mov r0, #0x14
	cmp r2, #0
	movne r0, #0x15
	bx lr
	arm_func_end FUN_0204ad24

	arm_func_start FUN_0204ad4c
FUN_0204ad4c: ; 0x0204AD4C
	mov r0, #0x1e
	cmp r2, #0
	movne r0, #0x1f
	bx lr
	arm_func_end FUN_0204ad4c

	arm_func_start FUN_0204ad5c
FUN_0204ad5c: ; 0x0204AD5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r6, [sp, #0x30]
	mov r4, #0
	ldr r9, [sp, #0x34]
	str r0, [sp]
	mov r10, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r5, r4
	and r11, r6, #0x40
	and r8, r6, #0x20
_0204AD8C:
	mov r0, r10
	mov r1, r5
	bl FUN_0206cdf8
	movs r6, r0
	beq _0204AE94
	ldr r0, [sp]
	mov r1, r6
	bl FUN_0204a2c4
	movs r7, r0
	beq _0204AE94
	cmp r9, #0
	bne _0204ADD0
	mov r0, r10
	mov r1, r5
	bl FUN_0206d194
	cmp r0, #0
	bne _0204AE94
_0204ADD0:
	cmp r11, #0
	beq _0204AE38
	ldr r0, _0204AEAC ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2f]
	ldrb r0, [r0, #0x2e]
	cmp r0, #1
	bne _0204AE20
	ldrb r0, [r7, #0x13]
	tst r0, #4
	movne r2, #1
	moveq r2, #0
	cmp r2, #1
	beq _0204AE20
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0204AE94
_0204AE20:
	cmp r1, #1
	bne _0204AE7C
	ldrb r0, [r7, #0x13]
	tst r0, #8
	beq _0204AE94
	b _0204AE7C
_0204AE38:
	cmp r8, #0
	beq _0204AE6C
	ldrb r0, [r7]
	cmp r0, #7
	bne _0204AE5C
	ldrb r0, [r7, #0x13]
	tst r0, #1
	movne r0, #1
	bne _0204AE60
_0204AE5C:
	mov r0, #0
_0204AE60:
	cmp r0, #1
	beq _0204AE7C
	b _0204AE94
_0204AE6C:
	ldrb r1, [r7]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0204AE94
_0204AE7C:
	ldr r0, [sp, #8]
	cmp r4, r0
	addeq sp, sp, #0xc
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, r4, #1
_0204AE94:
	add r5, r5, #1
	cmp r5, #6
	blt _0204AD8C
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204AEAC: .word unk_02099EF0
	arm_func_end FUN_0204ad5c

	arm_func_start FUN_0204aeb0
FUN_0204aeb0: ; 0x0204AEB0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #5
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204aeb0

	arm_func_start FUN_0204aed8
FUN_0204aed8: ; 0x0204AED8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #6
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204aed8

	arm_func_start FUN_0204af00
FUN_0204af00: ; 0x0204AF00
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #7
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204af00

	arm_func_start FUN_0204af28
FUN_0204af28: ; 0x0204AF28
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #8
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204af28

	arm_func_start FUN_0204af50
FUN_0204af50: ; 0x0204AF50
	ldr r0, [r0, #0x810]
	cmp r0, #0
	ldrnesb r0, [r0, r1]
	moveq r0, #0
	bx lr
	arm_func_end FUN_0204af50

	arm_func_start FUN_0204af64
FUN_0204af64: ; 0x0204AF64
	ldr r3, [r0, #0x810]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0x7f
	movgt r2, #0x7f
	mvn r0, #0x7e
	cmp r2, r0
	movlt r2, r0
	strb r2, [r3, r1]
	mov r0, #1
	bx lr
	arm_func_end FUN_0204af64

	arm_func_start FUN_0204af94
FUN_0204af94: ; 0x0204AF94
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r0, r1
	mov r1, r4
	mov r5, r2
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0x200
	movhs r0, #0
	ldrlo r1, [r0, #0x88]
	movlo r0, #1
	strloh r5, [r1, #0x32]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204af94

	arm_func_start FUN_0204afd0
FUN_0204afd0: ; 0x0204AFD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r0, r1
	mov r1, r6
	mov r4, r2
	mov r7, r3
	bl FUN_ov16_020efa9c
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r0, r6, #1
	cmp r4, r0
	bne _0204B054
	mov r4, #1
_0204B004:
	mov r0, r5
	mov r1, r6
	bl FUN_0206cdf8
	cmp r0, #0
	beq _0204B044
	ldr r3, [r5, #0x88]
	mov r2, r4, lsl r6
	ldrb r1, [r3, #0x88]
	rsb r0, r2, #0xff
	cmp r7, #0
	and r0, r1, r0
	strb r0, [r3, #0x88]
	ldrneb r1, [r3, #0x88]
	andne r0, r2, #0xff
	orrne r0, r1, r0
	strneb r0, [r3, #0x88]
_0204B044:
	add r6, r6, #1
	cmp r6, #6
	blt _0204B004
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204B054:
	mov r0, r5
	mov r1, r6
	bl FUN_0206cdf8
	cmp r4, r0
	bne _0204B09C
	ldr r3, [r5, #0x88]
	mov r0, #1
	mov r2, r0, lsl r6
	ldrb r1, [r3, #0x88]
	rsb r0, r2, #0xff
	cmp r7, #0
	and r0, r1, r0
	strb r0, [r3, #0x88]
	ldrneb r1, [r3, #0x88]
	andne r0, r2, #0xff
	orrne r0, r1, r0
	strneb r0, [r3, #0x88]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204B09C:
	add r6, r6, #1
	cmp r6, #6
	blt _0204B054
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204afd0

	arm_func_start FUN_0204b0ac
FUN_0204b0ac: ; 0x0204B0AC
	cmp r1, #0x40
	movhs r0, #0
	ldrlo r2, [r0, #0x80c]
	movlo r0, #0x14
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0204b0ac

	arm_func_start FUN_0204b0c4
FUN_0204b0c4: ; 0x0204B0C4
	ldrsh r0, [r0, #4]
	cmp r0, #0
	rsblt r0, r0, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r1, #0
	addne r1, r0, r0, lsl #1
	movne r0, r1, asr #1
	addne r0, r1, r0, lsr #30
	movne r0, r0, lsl #0xe
	movne r0, r0, lsr #0x10
	mul r1, r0, r2
	ldr r2, _0204B110 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0204B110: .word 0x51EB851F
	arm_func_end FUN_0204b0c4

	arm_func_start FUN_0204b114
FUN_0204b114: ; 0x0204B114
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r1
	ldrne r7, _0204B1AC ; 0x02099EF0
	mov r6, r0
	ldrne r0, [r7]
	mov r4, #0
	mov r5, #0x64
	cmpne r0, #0
	beq _0204B154
	mov r0, r8
	bl FUN_0206d5f0
	mov r1, r0
	ldr r0, [r7]
	bl FUN_ov132_02145190
	cmp r0, #0
	movne r4, #1
_0204B154:
	ldr r0, [r8, #0x90]
	tst r0, #0x200
	beq _0204B170
	ldr r0, _0204B1B0 ; =gLogicThink
	mov r1, #0x3c
	bl FUN_0204a2c4
	ldrb r5, [r0, #6]
_0204B170:
	ldr r0, [r8, #0x90]
	tst r0, #0x400
	beq _0204B198
	mov r0, #0x78
	mul r1, r5, r0
	ldr r2, _0204B1B4 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	and r5, r3, #0xff
_0204B198:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0204b0c4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204B1AC: .word unk_02099EF0
_0204B1B0: .word gLogicThink
_0204B1B4: .word 0x51EB851F
	arm_func_end FUN_0204b114

	arm_func_start FUN_0204b1b8
FUN_0204b1b8: ; 0x0204B1B8
	ldrb r0, [r0, #1]
	mov r0, r0, asr #5
	and r0, r0, #7
	bx lr
	arm_func_end FUN_0204b1b8

	arm_func_start FUN_0204b1c8
FUN_0204b1c8: ; 0x0204B1C8
	ldrb r0, [r0, #1]
	and r0, r0, #0x1f
	bx lr
	arm_func_end FUN_0204b1c8

	arm_func_start FUN_0204b1d4
FUN_0204b1d4: ; 0x0204B1D4
	ldrb r0, [r0]
	bx lr
	arm_func_end FUN_0204b1d4

	arm_func_start FUN_0204b1dc
FUN_0204b1dc: ; 0x0204B1DC
	cmp r1, #0
	beq _0204B1EC
	cmp r1, #0x14
	bls _0204B1F4
_0204B1EC:
	mov r0, #0
	bx lr
_0204B1F4:
	cmp r1, #1
	moveq r0, #0
	subne r1, r1, #2
	addne r0, r0, r1, lsl #1
	ldrneb r0, [r0, #1]
	bx lr
	arm_func_end FUN_0204b1dc

	arm_func_start FUN_0204b20c
FUN_0204b20c: ; 0x0204B20C
	cmp r1, #0
	beq _0204B21C
	cmp r1, #0x14
	bls _0204B224
_0204B21C:
	mov r0, #0
	bx lr
_0204B224:
	cmp r1, #1
	moveq r0, #0
	subne r1, r1, #2
	addne r0, r0, r1, lsl #1
	ldrneb r0, [r0, #2]
	bx lr
	arm_func_end FUN_0204b20c

	arm_func_start FUN_0204b23c
FUN_0204b23c: ; 0x0204B23C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	add r0, r0, #0xc
	mov r4, r1
	add r0, r0, #0x400
	add r8, r0, r4, lsl #5
	bl FUN_ov16_020f066c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0204fb78
	mov r10, #0
	mov r9, r10
	mov r6, #1
_0204B274:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0204B2E0
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B2E0
	mov r0, r7
	bl FUN_0206d660
	cmp r0, #0
	beq _0204B2E0
	mov r0, r7
	bl FUN_0206d5f0
	cmp r4, r0
	bne _0204B2E0
	mov r0, r7
	mov r1, r6
	bl FUN_0206d824
	movs r5, r0
	beq _0204B2E0
	mov r0, r7
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r8
	sub r1, r5, #1
	bl FUN_0204fb8c
	add r10, r10, #1
_0204B2E0:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0204B274
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204b23c

	arm_func_start FUN_0204b2f4
FUN_0204b2f4: ; 0x0204B2F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add r0, r0, #0xcc
	mov r10, r1
	add r0, r0, #0x400
	movs r9, r2
	add r5, r0, r10, lsl #4
	mov r11, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	mov r0, r9
	mov r1, r7
	mov r2, r11, lsl #1
	bl MI_CpuFill8
	mov r6, r7
	ldrb r4, [sp, #0x28]
	b _0204B3E0
_0204B338:
	cmp r7, r11
	bge _0204B3E8
	ldr r0, _0204B434 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0204B360
	mov r0, r5
	mov r1, r6
	bl FUN_02050244
	b _0204B390
_0204B360:
	cmp r4, #0
	cmpeq r10, #1
	mov r0, r5
	bne _0204B388
	mov r1, r6
	bl FUN_02050244
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	b _0204B394
_0204B388:
	mov r1, r6
	bl FUN_02050258
_0204B390:
	mov r8, r0
_0204B394:
	cmp r8, #0
	beq _0204B3DC
	mov r0, r8
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204B3DC
	cmp r4, #0
	cmpeq r10, #1
	ldreq r0, _0204B434 ; =0x020A0640
	add r7, r7, #1
	ldreqb r0, [r0, #0x1b]
	cmpeq r0, #0
	orreq r1, r8, #0x8000
	moveq r0, r6, lsl #1
	streqh r1, [r9, r0]
	movne r0, r6, lsl #1
	strneh r8, [r9, r0]
_0204B3DC:
	add r6, r6, #1
_0204B3E0:
	cmp r6, #4
	blt _0204B338
_0204B3E8:
	cmp r11, #4
	ble _0204B42C
	mov r0, r5
	bl FUN_02050284
	cmp r0, #0
	beq _0204B42C
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	cmpeq r10, #1
	mov r0, r5
	bne _0204B420
	bl FUN_02050284
	orr r0, r0, #0x8000
	b _0204B424
_0204B420:
	bl FUN_0205028c
_0204B424:
	strh r0, [r9, #8]
	add r7, r7, #1
_0204B42C:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B434: .word unk_020A0640
	arm_func_end FUN_0204b2f4

	arm_func_start FUN_0204b438
FUN_0204b438: ; 0x0204B438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	str r0, [sp, #4]
	add r0, r0, #0xc
	mov r10, r1
	add r0, r0, #0x400
	ldr r7, [sp, #0x30]
	movs r9, r2
	add r11, r0, r10, lsl #5
	mov r8, r3
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r5, r6
_0204B484:
	cmp r6, r8
	bge _0204B514
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204B508
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B508
	mov r0, r4
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204B508
	mov r0, r4
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r11
	bl FUN_0204fcd4
	cmp r0, #0
	bne _0204B508
	cmp r7, #0
	mov r0, r4
	bne _0204B4F0
	bl FUN_0206cbf8
	mov r1, r6, lsl #1
	strh r0, [r9, r1]
	b _0204B504
_0204B4F0:
	bl FUN_0206cbf8
	ldr r1, _0204B53C ; =0x00000FFF
	and r1, r0, r1
	mov r0, r6, lsl #1
	strh r1, [r9, r0]
_0204B504:
	add r6, r6, #1
_0204B508:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204B484
_0204B514:
	ldr r0, [sp, #4]
	mov r4, #1
	mov r1, r9
	mov r2, r6
	mov r3, #0x80
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r6
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B53C: .word 0x00000FFF
	arm_func_end FUN_0204b438

	arm_func_start FUN_0204b540
FUN_0204b540: ; 0x0204B540
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	str r0, [sp, #4]
	add r0, r0, #0xc
	movs r9, r2
	mov r10, r1
	add r0, r0, #0x400
	add r4, r0, r10, lsl #5
	mov r8, r3
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r5, r6
	ldrb r11, [sp, #0x30]
	b _0204B618
_0204B590:
	cmp r6, r8
	bge _0204B620
	ldr r0, _0204B648 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0204B5B8
	mov r0, r4
	mov r1, r5
	bl FUN_0204fbe8
	b _0204B5E8
_0204B5B8:
	cmp r11, #0
	cmpeq r10, #1
	mov r0, r4
	bne _0204B5E0
	mov r1, r5
	bl FUN_0204fbe8
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	b _0204B5EC
_0204B5E0:
	mov r1, r5
	bl FUN_0204fbfc
_0204B5E8:
	mov r7, r0
_0204B5EC:
	ldr r0, _0204B64C ; =0x00000FFF
	tst r7, r0
	beq _0204B614
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	movne r0, r6, lsl #1
	strneh r7, [r9, r0]
	addne r6, r6, #1
_0204B614:
	add r5, r5, #1
_0204B618:
	cmp r5, #0x10
	blt _0204B590
_0204B620:
	ldr r3, [sp, #0x34]
	mov r4, #1
	ldr r0, [sp, #4]
	mov r1, r9
	mov r2, r6
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r6
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B648: .word unk_020A0640
_0204B64C: .word 0x00000FFF
	arm_func_end FUN_0204b540

	arm_func_start FUN_0204b650
FUN_0204b650: ; 0x0204B650
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	movs r9, r2
	str r0, [sp, #4]
	mov r7, #0
	mov r10, r1
	mov r8, r3
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r7
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r6, r7
	ldrb r4, [sp, #0x30]
	ldr r11, _0204B750 ; =0x020A0640
	b _0204B720
_0204B698:
	cmp r7, r8
	bge _0204B728
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0204B71C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B71C
	mov r0, r5
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204B71C
	mov r0, r5
	bl FUN_0206cc00
	ldrb r1, [r11, #0x1b]
	cmp r1, #0
	beq _0204B6F4
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	strh r0, [r9, r1]
	b _0204B710
_0204B6F4:
	cmp r4, #0
	cmpeq r10, #1
	orreq r1, r0, #0x8000
	moveq r0, r7, lsl #1
	streqh r1, [r9, r0]
	movne r1, r7, lsl #1
	strneh r0, [r9, r1]
_0204B710:
	add r7, r7, #1
	cmp r7, r8
	bge _0204B728
_0204B71C:
	add r6, r6, #1
_0204B720:
	cmp r6, #0x64
	blt _0204B698
_0204B728:
	ldr r0, [sp, #4]
	mov r4, #1
	mov r1, r9
	mov r2, r7
	mov r3, #0x80
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r7
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B750: .word unk_020A0640
	arm_func_end FUN_0204b650

	arm_func_start FUN_0204b754
FUN_0204b754: ; 0x0204B754
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, #0
	bl FUN_0206d824
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020f07d0
	cmp r4, #0
	ble _0204B790
	cmp r4, #0xb
	ble _0204B798
_0204B790:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204B798:
	mov r1, #0xb
	mla r1, r0, r1, r4
	sub r0, r1, #1
	add r0, r6, r0
	ldrb r0, [r0, #0x84a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204b754

	arm_func_start FUN_0204b7b0
FUN_0204b7b0: ; 0x0204B7B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	ldr r2, _0204B9C0 ; =0x020A0640
	mov r6, #0
	ldrh r3, [r2, #0x92]
	ldrh r4, [r2, #0x94]
	mov r1, r6
	strh r3, [sp]
	mov r3, r3
	strh r4, [r2, #0x92]
	mov r7, r0
	strh r4, [sp, #2]
	strh r3, [r2, #0x94]
	bl FUN_0207249c
	add r9, sp, #0x34
	mov r8, #0x4c
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, r8
	bl DC_FlushRange
	mov r5, #1
	mov r0, r7
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	mov r0, r7
	mov r1, r6
	bl FUN_0207249c
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r6
	bl FUN_0207249c
	mov r1, r8
	bl DC_FlushRange
	mov r0, r7
	mov r1, r5
	bl FUN_0207249c
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r1, r5
	mov r0, r7
	bl FUN_0207249c
	mov r1, r8
	bl DC_FlushRange
	add r0, r7, #0xc
	add r5, sp, #4
	mov r4, #0x20
	add r0, r0, #0x400
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	add r0, r7, #0x2c
	add r1, r7, #0xc
	add r0, r0, #0x400
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0xc
	add r0, r0, #0x400
	mov r1, r4
	bl DC_FlushRange
	add r1, r7, #0x2c
	mov r0, r5
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0x2c
	mov r1, r4
	add r0, r0, #0x400
	bl DC_FlushRange
	add r5, sp, #0x24
	add r0, r7, #0xcc
	mov r4, #0x10
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x400
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	add r0, r7, #0xdc
	add r1, r7, #0xcc
	add r0, r0, #0x400
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0xcc
	add r0, r0, #0x400
	mov r1, r4
	bl DC_FlushRange
	add r1, r7, #0xdc
	mov r0, r5
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0xdc
	add r0, r0, #0x400
	mov r1, r4
	bl DC_FlushRange
	b _0204B9B0
_0204B968:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204B9AC
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B9AC
	mov r0, r4
	bl FUN_0206d5f0
	cmp r0, #2
	beq _0204B9AC
	mov r0, r4
	bl FUN_0206d5f0
	bl FUN_02040138
	mov r1, r0
	mov r0, r4
	bl FUN_0206d600
_0204B9AC:
	add r6, r6, #1
_0204B9B0:
	cmp r6, #0x64
	blt _0204B968
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0204B9C0: .word unk_020A0640
	arm_func_end FUN_0204b7b0

	arm_func_start FUN_0204b9c4
FUN_0204b9c4: ; 0x0204B9C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r4, r0
	add r0, r4, #0xc
	add r0, r0, #0x400
	add r7, r0, r1, lsl #5
	add r6, sp, #0
	mov r5, #0x20
	mov r8, r2
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r4, #0xc
	add r0, r0, #0x400
	add r8, r0, r8, lsl #5
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, #0
	bl FUN_0207249c
	ldrh r2, [r0, #0x22]
	ldrh r1, [r0, #0x48]
	strh r1, [r0, #0x22]
	strh r2, [r0, #0x48]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204b9c4

	arm_func_start FUN_0204ba48
FUN_0204ba48: ; 0x0204BA48
	stmfd sp!, {r4, lr}
	ldr r1, _0204BA74 ; =0x02099E98
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_0207249c
	ldrb r0, [r0, #0x43]
	strb r0, [r4, #0x8a0]
	ldmfd sp!, {r4, pc}
_0204BA74: .word unk_02099E98
	arm_func_end FUN_0204ba48

	arm_func_start FUN_0204ba78
FUN_0204ba78: ; 0x0204BA78
	stmfd sp!, {r4, lr}
	ldr r1, _0204BAA4 ; =0x02099E98
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_0207249c
	ldrb r1, [r4, #0x8a0]
	strb r1, [r0, #0x43]
	ldmfd sp!, {r4, pc}
_0204BAA4: .word unk_02099E98
	arm_func_end FUN_0204ba78

	arm_func_start FUN_0204baa8
FUN_0204baa8: ; 0x0204BAA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
_0204BAB0:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204BAE0
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204BAE0
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r4
	bl FUN_0206cc1c
_0204BAE0:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204BAB0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204baa8

	arm_func_start FUN_0204baf0
FUN_0204baf0: ; 0x0204BAF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r2
	mov r5, #0
_0204BB00:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204BB38
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204BB38
	mov r0, r4
	bl FUN_0206d5f0
	cmp r7, r0
	bne _0204BB38
	mov r0, r4
	mov r1, r6
	bl FUN_0206d4d4
_0204BB38:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204BB00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204baf0

	arm_func_start FUN_0204bb48
FUN_0204bb48: ; 0x0204BB48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r2, #0
	movle r4, #0
	ble _0204BB6C
	sub r2, r2, #1
	mov r3, #0x1000
	mov r2, r3, lsl r2
	mov r2, r2, lsl #0x10
	mov r4, r2, lsr #0x10
_0204BB6C:
	add r0, r0, #0xc
	add r0, r0, #0x400
	ldr r5, _0204BBBC ; =0x00000FFF
	add r7, r0, r1, lsl #5
	mov r6, #0
_0204BB80:
	mov r0, r7
	mov r1, r6
	bl FUN_0204fbe8
	movs r2, r0
	andne r0, r2, r5
	orrne r0, r0, r4
	movne r0, r0, lsl #0x10
	movne r2, r0, lsr #0x10
	mov r0, r7
	mov r1, r6
	bl FUN_0204fb8c
	add r6, r6, #1
	cmp r6, #0x10
	blt _0204BB80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204BBBC: .word 0x00000FFF
	arm_func_end FUN_0204bb48

	arm_func_start FUN_0204bbc0
FUN_0204bbc0: ; 0x0204BBC0
	ldr r0, [r0, #0x7bc]
	ldr r12, _0204BBCC ; =FUN_02049738
	bx r12
_0204BBCC: .word FUN_02049738
	arm_func_end FUN_0204bbc0

	arm_func_start FUN_0204bbd0
FUN_0204bbd0: ; 0x0204BBD0
	ldr r0, [r0, #0x7bc]
	ldr r12, _0204BBDC ; =FUN_020497cc
	bx r12
_0204BBDC: .word FUN_020497cc
	arm_func_end FUN_0204bbd0

	arm_func_start FUN_0204bbe0
FUN_0204bbe0: ; 0x0204BBE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #0
_0204BBF4:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204BC38
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204BC38
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r8, r0
	bne _0204BC38
	mov r0, r4
	mov r1, r6
	bl FUN_0206d824
	cmp r7, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0204BC38:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204BBF4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204bbe0

	arm_func_start FUN_0204bc4c
FUN_0204bc4c: ; 0x0204BC4C
	stmfd sp!, {r3, lr}
	ldr r2, _0204BCD0 ; =0x00000FFF
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	movs r12, r1, lsr #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _0204BCD4 ; =0x0209A120
	mov r2, #0
	ldr r1, [r1]
	subs r3, r1, #1
	bmi _0204BCC8
	ldr lr, [r0, #0x814]
_0204BC80:
	sub r0, r3, r2
	add r0, r2, r0, asr #1
	mov r1, r0, lsl #1
	ldrsh r1, [lr, r1]
	cmp r1, #0
	bne _0204BCAC
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	sub r3, r0, #1
	b _0204BCC0
_0204BCAC:
	cmp r1, r12
	subgt r3, r0, #1
	bgt _0204BCC0
	ldmgefd sp!, {r3, pc}
	add r2, r0, #1
_0204BCC0:
	cmp r2, r3
	ble _0204BC80
_0204BCC8:
	mvn r0, #0
	ldmfd sp!, {r3, pc}
_0204BCD0: .word 0x00000FFF
_0204BCD4: .word unk_0209A120
	arm_func_end FUN_0204bc4c

	arm_func_start FUN_0204bcd8
FUN_0204bcd8: ; 0x0204BCD8
	stmfd sp!, {r3, lr}
	ldr r2, _0204BD5C ; =0x00000FFF
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	movs r12, r1, lsr #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _0204BD60 ; =0x0209A130
	mov r2, #0
	ldr r1, [r1]
	subs r3, r1, #1
	bmi _0204BD54
	ldr lr, [r0, #0x818]
_0204BD0C:
	sub r0, r3, r2
	add r0, r2, r0, asr #1
	mov r1, r0, lsl #1
	ldrsh r1, [lr, r1]
	cmp r1, #0
	bne _0204BD38
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	sub r3, r0, #1
	b _0204BD4C
_0204BD38:
	cmp r1, r12
	subgt r3, r0, #1
	bgt _0204BD4C
	ldmgefd sp!, {r3, pc}
	add r2, r0, #1
_0204BD4C:
	cmp r2, r3
	ble _0204BD0C
_0204BD54:
	mvn r0, #0
	ldmfd sp!, {r3, pc}
_0204BD5C: .word 0x00000FFF
_0204BD60: .word unk_0209A130
	arm_func_end FUN_0204bcd8

	arm_func_start FUN_0204bd64
FUN_0204bd64: ; 0x0204BD64
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x68
	movs r5, r2
	mov r7, r0
	mov r9, #0
	mov r6, r1
	addeq sp, sp, #0x68
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _0204C068 ; =0x00000FFF
	mov r4, r9
	and r6, r6, r8
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204BDC0
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	add sp, sp, #0x68
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204BDC0:
	ldr r0, [r7, #0x81c]
	sub r1, r4, #1
	add r2, r8, #0xf000
_0204BDCC:
	ldrh r3, [r0, #0x4e]
	and r3, r3, r8
	mov r3, r3, lsl #0x10
	cmp r6, r3, lsr #16
	ldrh r3, [r0, #0x68]
	moveq r1, r4
	add r4, r4, #1
	cmp r3, r2
	addlo r3, r3, #1
	strloh r3, [r0, #0x68]
	cmp r4, #0x40
	add r0, r0, #0x6c
	blt _0204BDCC
	cmp r1, #0
	blt _0204BE34
	ldr r2, [r7, #0x81c]
	mov r0, #0x6c
	mla r4, r1, r0, r2
	mov r0, r4
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	add sp, sp, #0x68
	strh r9, [r4, #0x68]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204BE34:
	ldr r1, [r7, #0x81c]
	mvn r2, #0
	mov r0, r2
	mov r3, r1
	mov r4, #0
	add r8, r2, #0x1000
_0204BE4C:
	ldrh r9, [r3, #0x4e]
	and r9, r9, r8
	mov r9, r9, lsl #0x10
	movs r9, r9, lsr #0x10
	moveq r2, r4
	beq _0204BE84
	ldrh r9, [r3, #0x68]
	add r3, r3, #0x6c
	cmp r9, r0
	movgt r2, r4
	add r4, r4, #1
	movgt r0, r9
	cmp r4, #0x40
	blt _0204BE4C
_0204BE84:
	mov r0, #0x6c
	mul r4, r2, r0
	add r2, r1, r4
	mov r0, r7
	mov r1, r6
	str r2, [sp, #0x14]
	mov r10, #0x68
	mov r8, #1
	mov r9, #0
	bl FUN_0204bc4c
	cmp r0, #0
	blt _0204BF20
	ldr r3, _0204C06C ; =gL5Allocator
	ldr r1, _0204C070 ; =0x0209050C
	ldr r6, [r3]
	cmp r6, #0
	moveq r0, r9
	beq _0204BEE8
	mul r2, r0, r10
	stmia sp, {r2, r10}
	str r9, [sp, #8]
	add r2, sp, #0x14
	mov r0, r6
	str r8, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_0204BEE8:
	cmp r0, #0
	addeq sp, sp, #0x68
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x14]
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	ldr r0, [r7, #0x81c]
	add sp, sp, #0x68
	add r0, r0, r4
	strh r9, [r0, #0x68]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204BF20:
	mov r0, r7
	mov r1, r6
	bl FUN_0204bcd8
	cmp r0, #0
	blt _0204C05C
	ldr r3, _0204C06C ; =gL5Allocator
	add r1, sp, #0x18
	ldr r12, [r3]
	str r1, [sp, #0x10]
	cmp r12, #0
	ldr r10, [sp, #0x14]
	ldr r1, _0204C074 ; =0x02090528
	moveq r0, r9
	beq _0204BF7C
	mov r2, #0x50
	mul r6, r0, r2
	str r6, [sp]
	str r2, [sp, #4]
	str r9, [sp, #8]
	add r2, sp, #0x10
	mov r0, r12
	str r8, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_0204BF7C:
	cmp r0, #0
	mov r6, #1
	addeq sp, sp, #0x68
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #0x10
	add r0, sp, #0x18
	mov r1, r10
	mov r2, r8
	bl MIi_CpuCopyFast
	add r0, sp, #0x28
	mov r2, r8
	add r1, r10, #0x1c
	bl MIi_CpuCopyFast
	add r0, sp, #0x38
	add r1, r10, #0x2c
	mov r2, #0x20
	bl MIi_CpuCopyFast
	ldrh r0, [sp, #0x58]
	mov r1, r5
	mov r2, #0x68
	strh r0, [r10, #0x4e]
	ldrh r0, [sp, #0x5a]
	strh r0, [r10, #0x50]
	ldrb r0, [sp, #0x5c]
	strb r0, [r10, #0x52]
	ldrb r0, [sp, #0x5d]
	strb r0, [r10, #0x53]
	ldrh r0, [sp, #0x5e]
	strh r0, [r10, #0x54]
	ldrh r0, [sp, #0x60]
	strh r0, [r10, #0x56]
	ldrh r0, [sp, #0x62]
	strh r0, [r10, #0x58]
	ldrb r0, [sp, #0x64]
	strb r0, [r10, #0x5a]
	ldrb r0, [sp, #0x65]
	strb r0, [r10, #0x5b]
	ldrb r0, [sp, #0x66]
	strb r0, [r10, #0x5c]
	strb r6, [r10, #0x4c]
	strb r6, [r10, #0x4d]
	ldrb r0, [r10, #0x5d]
	and r0, r0, #0x1f
	and r0, r0, #0xe0
	strb r0, [r10, #0x5d]
	strb r6, [r10, #0x62]
	strh r9, [r10, #0x66]
	ldr r0, [sp, #0x14]
	bl MI_CpuCopy8
	ldr r1, [r7, #0x81c]
	add sp, sp, #0x68
	add r1, r1, r4
	mov r0, r6
	strh r9, [r1, #0x68]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204C05C:
	mov r0, r9
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204C068: .word 0x00000FFF
_0204C06C: .word gL5Allocator
_0204C070: .word unk_0209050C
_0204C074: .word unk_02090528
	arm_func_end FUN_0204bd64

	arm_func_start FUN_0204c078
FUN_0204c078: ; 0x0204C078
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x78
	mov r5, r2
	add r2, sp, #0x30
	mov r7, r0
	mov r6, r1
	str r2, [sp, #0x10]
	bl FUN_0204c1d4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0204C0D8
	mov r4, #0x48
	ldr r1, [sp, #0x10]
	mov r0, r7
	mov r2, r4
	bl FUN_020748c8
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	add sp, sp, #0x78
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C0D8:
	mov r0, r7
	mov r1, r6
	bl FUN_0204bc4c
	mov r4, r0
	cmn r4, #1
	addeq sp, sp, #0x78
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r12, _0204C1C8 ; =0x0208C444
	add r3, sp, #0x14
	mov r2, #0xe
_0204C104:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	mov r8, #0
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0204C104
	ldr r0, _0204C1CC ; =gL5Sound
	mov r1, #8
	bl FUN_0202db98
	ldr r3, _0204C1D0 ; =gL5Allocator
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r8
	beq _0204C168
	mov r1, #0x48
	mul r2, r4, r1
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	str r8, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_0204C168:
	cmp r0, #0
	addeq sp, sp, #0x78
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r6
	bl FUN_0204c254
	mov r6, #0x48
	ldr r1, [sp, #0x10]
	mov r0, r7
	mov r2, r6
	bl FUN_020748c8
	mov r1, r5
	mov r2, r6
	bl MI_CpuCopy8
	mov r1, r4, lsl #0x10
	mov r0, r7
	mov r2, r5
	mov r1, r1, lsr #0x10
	bl FUN_02073f10
	mov r0, #1
	add sp, sp, #0x78
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C1C8: .word unk_0208C444
_0204C1CC: .word gL5Sound
_0204C1D0: .word gL5Allocator
	arm_func_end FUN_0204c078

	arm_func_start FUN_0204c1d4
FUN_0204c1d4: ; 0x0204C1D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _0204C250 ; =0x00000FFF
	mov r5, r0
	and r0, r1, r3
	ldr r4, [r5, #0x7f4]
	mov r0, r0, lsl #0x10
	mov r3, #0
_0204C1F0:
	ldrh r1, [r4]
	cmp r1, r0, lsr #16
	bne _0204C238
	cmp r2, #0
	beq _0204C214
	mov r1, r2
	add r0, r4, #8
	mov r2, #0x48
	bl MI_CpuCopy8
_0204C214:
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x7f8]
	cmp r1, r0
	addne r0, r0, #1
	strne r0, [r5, #0x7f8]
	ldr r1, [r5, #0x7f8]
	mov r0, #1
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0204C238:
	add r3, r3, #1
	cmp r3, #0x40
	add r4, r4, #0x50
	blt _0204C1F0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0204C250: .word 0x00000FFF
	arm_func_end FUN_0204c1d4

	arm_func_start FUN_0204c254
FUN_0204c254: ; 0x0204C254
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mvn r4, #0
	mov r8, r0
	mov r7, r1
	add r0, r4, #0x1000
	ldr r5, [r8, #0x7f4]
	and r0, r7, r0
	mov r0, r0, lsl #0x10
	mov r3, r5
	mov r6, r4
	mov r7, r0, lsr #0x10
	mov r1, #0
_0204C284:
	ldrh r0, [r3]
	cmp r0, #0
	moveq r4, r1
	beq _0204C2B4
	ldr r0, [r3, #4]
	add r3, r3, #0x50
	cmp r6, r0
	movhi r4, r1
	add r1, r1, #1
	movhi r6, r0
	cmp r1, #0x40
	blt _0204C284
_0204C2B4:
	mov r0, #0x50
	mul r9, r4, r0
	add r6, r5, r9
	mov r0, r2
	add r1, r6, #8
	mov r2, #0x48
	bl MI_CpuCopy8
	strh r7, [r5, r9]
	ldr r1, [r8, #0x7f8]
	mov r0, r4
	add r1, r1, #1
	str r1, [r8, #0x7f8]
	str r1, [r6, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0204c254

	arm_func_start FUN_0204c2ec
FUN_0204c2ec: ; 0x0204C2EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r4
	bl FUN_0207249c
	cmp r0, #0
	beq _0204C324
	ldrb r0, [r0, #0x2c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0204C324:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204c2ec

	arm_func_start FUN_0204c32c
FUN_0204c32c: ; 0x0204C32C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r8, r1
	mov r6, r3
	cmp r7, #0
	ble _0204C34C
	cmp r7, #0x10
	ble _0204C354
_0204C34C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C354:
	cmp r6, #2
	beq _0204C370
	cmp r6, #0
	bne _0204C37C
	bl FUN_020731b4
	cmp r0, #0
	beq _0204C37C
_0204C370:
	cmp r7, #4
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C37C:
	mov r5, #0
_0204C380:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C3CC
	bl FUN_0206d64c
	cmp r0, #0
	bne _0204C3CC
	mov r0, r4
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0204C3CC
	cmp r4, #0
	beq _0204C3CC
	mov r0, r4
	mov r1, r6
	bl FUN_0206d824
	cmp r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C3CC:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C380
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204c32c

	arm_func_start FUN_0204c3e0
FUN_0204c3e0: ; 0x0204C3E0
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0xcc
	add r0, r0, #0x400
	mov r5, #0
	mov r4, r5
	add r6, r0, r1, lsl #4
_0204C3F8:
	mov r0, r6
	mov r1, r4
	bl FUN_02050244
	cmp r0, #0
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, #4
	blt _0204C3F8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204c3e0

	arm_func_start FUN_0204c420
FUN_0204c420: ; 0x0204C420
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_0204C430:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C45C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204C45C
	mov r0, r4
	bl FUN_0206d5f0
	cmp r7, r0
	addeq r6, r6, #1
_0204C45C:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C430
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c420

	arm_func_start FUN_0204c470
FUN_0204c470: ; 0x0204C470
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r1
	mov r7, r2
	mov r5, r6
_0204C484:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C4B8
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204C4B8
	mov r0, r4
	bl FUN_0206d5f0
	cmp r8, r0
	ldreqb r0, [r4, #0x4d]
	cmpeq r7, r0
	addeq r6, r6, #1
_0204C4B8:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C484
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204c470

	arm_func_start FUN_0204c4cc
FUN_0204c4cc: ; 0x0204C4CC
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0xc
	add r0, r0, #0x400
	mov r5, #0
	mov r4, r5
	add r6, r0, r1, lsl #5
_0204C4E4:
	mov r0, r6
	mov r1, r4
	bl FUN_0204fbe8
	cmp r0, #0
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, #0x10
	blt _0204C4E4
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204c4cc

	arm_func_start FUN_0204c50c
FUN_0204c50c: ; 0x0204C50C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xc
	mov r6, #0
	add r0, r0, #0x400
	mov r5, r6
	add r7, r0, r1, lsl #5
	mov r4, r6
_0204C528:
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204C54C
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r6, r6, #1
_0204C54C:
	add r5, r5, #1
	cmp r5, #0xb
	blt _0204C528
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c50c

	arm_func_start FUN_0204c560
FUN_0204c560: ; 0x0204C560
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r1
	mov r7, r2
	mov r5, r6
_0204C574:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C5BC
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204C5BC
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r8, r0
	bne _0204C5BC
	mov r0, r4
	mov r1, r7
	bl FUN_0206d824
	cmp r0, #1
	blt _0204C5BC
	cmp r0, #0xb
	addle r6, r6, #1
_0204C5BC:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C574
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204c560

	arm_func_start FUN_0204c5d0
FUN_0204c5d0: ; 0x0204C5D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_0204C5E0:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C60C
	bl FUN_0206d674
	cmp r0, #0
	beq _0204C60C
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r7, r0
	addeq r6, r6, #1
_0204C60C:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C5E0
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c5d0

	arm_func_start FUN_0204c620
FUN_0204c620: ; 0x0204C620
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_0204C630:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C66C
	bl FUN_0206d69c
	cmp r0, #0
	beq _0204C66C
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r7, r0
	bne _0204C66C
	mov r0, r4
	bl FUN_0206d6ec
	cmp r0, #0
	addne r6, r6, #1
_0204C66C:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C630
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c620

	arm_func_start FUN_0204c680
FUN_0204c680: ; 0x0204C680
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0204C6E8 ; =0x020A0640
	mov r4, r2
	ldrb r2, [r3, #0x1b]
	cmp r2, #0
	bne _0204C6A8
	ldr r2, _0204C6EC ; =0x00000FFF
	cmp r1, #1
	and r4, r4, r2
	orreq r4, r4, #0x8000
_0204C6A8:
	add r0, r0, #0xcc
	add r0, r0, #0x400
	mov r6, #0
	add r5, r0, r1, lsl #4
	b _0204C6D8
_0204C6BC:
	mov r0, r5
	mov r1, r6
	bl FUN_02050244
	cmp r4, r0
	addeq r0, r6, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
_0204C6D8:
	cmp r6, #4
	blt _0204C6BC
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204C6E8: .word unk_020A0640
_0204C6EC: .word 0x00000FFF
	arm_func_end FUN_0204c680

	arm_func_start FUN_0204c6f0
FUN_0204c6f0: ; 0x0204C6F0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0204C758 ; =0x020A0640
	mov r4, r2
	ldrb r2, [r3, #0x1b]
	cmp r2, #0
	bne _0204C718
	ldr r2, _0204C75C ; =0x00000FFF
	cmp r1, #1
	and r4, r4, r2
	orreq r4, r4, #0x8000
_0204C718:
	add r0, r0, #0xc
	add r0, r0, #0x400
	mov r6, #0
	add r5, r0, r1, lsl #5
	b _0204C748
_0204C72C:
	mov r0, r5
	mov r1, r6
	bl FUN_0204fbe8
	cmp r4, r0
	addeq r0, r6, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
_0204C748:
	cmp r6, #0x10
	blt _0204C72C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204C758: .word unk_020A0640
_0204C75C: .word 0x00000FFF
	arm_func_end FUN_0204c6f0

	arm_func_start FUN_0204c760
FUN_0204c760: ; 0x0204C760
	stmfd sp!, {r3, lr}
	bl FUN_0204c680
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204c760

	arm_func_start FUN_0204c778
FUN_0204c778: ; 0x0204C778
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r5, _0204C858 ; =0x0209A11C
	ldrb r12, [sp, #0x30]
	mov r8, r0
	ldr r0, [r5]
	mov r4, #0
	ldr r9, _0204C85C ; =0x00000FFF
	mov r6, r2
	and r6, r6, r9
	mov r7, r1
	mov r5, r3
	strh r6, [sp, #8]
	strb r4, [sp, #0xa]
	strb r12, [sp, #0xb]
	bl FUN_0206c788
	ldr r1, [sp, #0x34]
	mov r2, r0
	stmia sp, {r1, r4}
	mov r0, r8
	mov r1, r6
	mov r3, r7
	bl FUN_02071d74
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_0206dca4
	ldr r0, _0204C860 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _0204C824
	bl FUN_ov16_020f081c
	cmp r7, r0
	ldreqb r0, [sp, #0x38]
	cmpeq r0, #0
	bne _0204C824
	ldr r0, _0204C864 ; =0x020A108A
	and r1, r6, r9
	bl FUN_02050930
	ldr r0, _0204C868 ; =0x020A0DB0
	and r1, r6, r9
	bl FUN_02050854
_0204C824:
	cmp r5, #0
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	bl FUN_0204c92c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0204C858: .word unk_0209A11C
_0204C85C: .word 0x00000FFF
_0204C860: .word unk_020A0640
_0204C864: .word unk_020A108A
_0204C868: .word unk_020A0DB0
	arm_func_end FUN_0204c778

	arm_func_start FUN_0204c86c
FUN_0204c86c: ; 0x0204C86C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	add r6, sp, #0
	mov r5, r0
	mov r9, r2
	mov r8, #0
	mov r4, r1
	mov r0, r6
	mov r1, r8
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl FUN_0205107c
	mov r7, r0
	mov r4, #1
	mov r5, r8
_0204C8B0:
	mov r0, r7
	mov r1, r8
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204C8E8
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204C8E8
	mov r1, r9
	bl FUN_0206d9b0
	cmp r0, #0
	addne r0, r6, r0
	strneb r4, [r0, #-1]
_0204C8E8:
	add r8, r8, #1
	cmp r8, #0x10
	blt _0204C8B0
	mov r2, #0
	add r1, sp, #0
_0204C8FC:
	ldrb r0, [r1, r2]
	cmp r0, #0
	addeq r0, r2, #1
	addeq sp, sp, #0x14
	andeq r0, r0, #0xff
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r2, r2, #1
	cmp r2, #0x14
	blt _0204C8FC
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0204c86c

	arm_func_start FUN_0204c92c
FUN_0204c92c: ; 0x0204C92C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r4, #0
	bl FUN_0205107c
	mov r5, r0
	mov r0, #1
	cmp r10, #0
	moveq r0, r4
	mov r7, #1
	cmp r0, #0
	moveq r7, #0
	cmp r8, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r6, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	mov r1, r9
	bl FUN_0204fd68
	movs r1, r0
	beq _0204C9A8
	mov r0, r5
	mov r2, r4
	sub r1, r1, #1
	bl FUN_0204fb8c
_0204C9A8:
	sub r8, r8, #1
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204CA00
	mov r0, r5
	bl FUN_0204fda4
	movs r4, r0
	beq _0204C9F0
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r5
	sub r1, r4, #1
	bl FUN_0204fb8c
	b _0204CA00
_0204C9F0:
	mov r0, r6
	mov r2, r7
	mov r1, #0
	bl FUN_0206d9cc
_0204CA00:
	mov r0, r5
	mov r1, r8
	mov r2, r9
	bl FUN_0204fb8c
	mov r0, r6
	mov r1, r7
	bl FUN_0206d9b0
	cmp r0, #0
	bne _0204CA50
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _0204CA50
	ldr r0, _0204CA58 ; =gLogicThink
	mov r1, r10
	mov r2, r7
	bl FUN_0204c86c
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_0206d9cc
_0204CA50:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204CA58: .word gLogicThink
	arm_func_end FUN_0204c92c

	arm_func_start FUN_0204ca5c
FUN_0204ca5c: ; 0x0204CA5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, r0
	add r0, r9, #0xcc
	ldr r6, [sp, #0x4c]
	mov r8, r1
	add r1, r0, #0x400
	mov r0, r3
	sub r10, r0, #1
	str r3, [sp, #0xc]
	mov r0, #0
	cmp r6, #0
	strneh r0, [r6]
	ldr r0, [sp, #0xc]
	mov r7, r2
	add r4, r1, r8, lsl #4
	ldr r5, [sp, #0x50]
	cmp r0, #0
	bge _0204CAB8
	cmp r0, #4
	addge sp, sp, #0x20
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CAB8:
	ldr r0, _0204CE4C ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	mov r2, r8
	bl FUN_0206c7dc
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r11, r0
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_0204c760
	cmp r0, #0
	beq _0204CBCC
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_0204c680
	sub r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	mov r2, r7
	mov r7, r0
	mov r1, r10
	mov r0, r4
	mov r3, #0
	bl FUN_020501bc
	ldr r1, [sp, #0x14]
	mov r0, r4
	mov r3, #0
	mov r2, r7
	bl FUN_020501bc
	cmp r6, #0
	mov r0, r11
	strneh r7, [r6]
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CBC0
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CBB4
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CBB4:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CBC0:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CBCC:
	cmp r10, #0
	blt _0204CD08
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	cmp r0, #0
	bne _0204CC08
	mov r0, r4
	mov r1, r10
	mov r2, r7
	mov r3, #0
	bl FUN_020501bc
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CC08:
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	beq _0204CD08
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	str r0, [sp, #0x10]
	mov r1, #0
	bl FUN_ov16_020efa9c
	str r0, [sp, #0x18]
	bl FUN_0206d8a8
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	mov r0, r9
	mov r1, r8
	bl FUN_0204d2a4
	mov r1, r10
	mov r2, r7
	mov r0, r4
	mov r3, #0
	bl FUN_020501bc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r9
	mov r1, r8
	bl FUN_0204ca5c
	ldr r1, [sp, #0x10]
	mov r0, r4
	bl FUN_020502a8
	cmp r0, #0
	beq _0204CCA0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl FUN_0206d968
_0204CCA0:
	cmp r6, #0
	ldrne r0, [sp, #0x10]
	strneh r0, [r6]
	mov r0, r11
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CCFC
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CCF0
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CCF0:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CCFC:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CD08:
	mov r10, #0
_0204CD0C:
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	cmp r0, #0
	bne _0204CD90
	mov r0, r4
	mov r1, r10
	mov r2, r7
	mov r3, #0
	bl FUN_020501bc
	mov r0, r11
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CD84
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CD78
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CD78:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CD84:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CD90:
	add r10, r10, #1
	cmp r10, #4
	blt _0204CD0C
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	beq _0204CE40
	mov r0, r4
	mov r1, #3
	bl FUN_02050244
	mov r10, r0
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_0204d2a4
	mov r0, r4
	mov r1, #3
	mov r2, r7
	mov r3, #0
	bl FUN_020501bc
	cmp r6, #0
	mov r0, r11
	strneh r10, [r6]
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CE34
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CE28
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CE28:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CE34:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CE40:
	mov r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CE4C: .word unk_0209A11C
	arm_func_end FUN_0204ca5c

	arm_func_start FUN_0204ce50
FUN_0204ce50: ; 0x0204CE50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, #0
	mov r11, r0
	mov r1, r10
	mov r5, r10
	bl FUN_0205106c
	mov r7, r0
	mov r0, r11
	mov r1, r10
	bl FUN_0205107c
	mov r8, r0
	ldr r0, _0204D0AC ; =gLogicThink
	bl FUN_ov16_020edfb0
	cmp r0, #0
	ble _0204CF50
	ldr r4, _0204D0B0 ; =0x0209A11C
_0204CE90:
	mov r0, r7
	mov r1, r10
	bl FUN_02050244
	mov r1, r0
	ldr r0, [r4]
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0204CF34
	mov r9, #1
_0204CEB8:
	mov r0, r8
	sub r1, r9, #1
	bl FUN_0204fbe8
	mov r6, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	cmpne r6, #0
	beq _0204CF20
	mov r0, r7
	mov r1, r6
	bl FUN_020502a8
	cmp r0, #0
	bne _0204CF20
	mov r0, r7
	mov r1, r10
	mov r2, r6
	mov r3, r5
	bl FUN_020501bc
	mov r0, r11
	mov r1, r6
	mov r2, r10
	bl FUN_0204d524
	b _0204CF34
_0204CF20:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	cmp r9, #0x10
	bls _0204CEB8
_0204CF34:
	add r0, r10, #1
	mov r6, r0, lsl #0x10
	ldr r0, _0204D0AC ; =gLogicThink
	mov r10, r6, lsr #0x10
	bl FUN_ov16_020edfb0
	cmp r0, r6, lsr #16
	bgt _0204CE90
_0204CF50:
	mov r0, r7
	mov r1, #1
	mov r5, #0
	bl FUN_0204fed8
	movs r4, r0
	beq _0204CF84
	ldr r0, _0204D0B0 ; =0x0209A11C
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r4, r5
_0204CF84:
	cmp r4, #0
	bne _0204CFF8
	mov r6, #2
_0204CF90:
	mov r0, r7
	mov r1, r6
	bl FUN_0204fed8
	mov r1, r5
	mov r4, r0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204CFE4
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	bne _0204CFE4
	mov r0, r7
	mov r1, r4
	bl FUN_0204fff8
	mov r2, #1
	mov r1, r0
	mov r0, r7
	mov r3, r2
	bl FUN_02050144
	b _0204CFF8
_0204CFE4:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #0xb
	ble _0204CF90
_0204CFF8:
	ldr r5, _0204D0AC ; =gLogicThink
	mov r6, #0
	mov r0, r5
	bl FUN_ov16_020edfb0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D010:
	mov r0, r7
	mov r1, r6
	bl FUN_02050244
	cmp r0, #0
	bne _0204D08C
	mov r0, r5
	mov r8, r6
	bl FUN_ov16_020edfb0
	cmp r6, r0
	bge _0204D08C
_0204D038:
	mov r0, r7
	mov r1, r8
	bl FUN_02050244
	movs r4, r0
	beq _0204D070
	mov r0, r7
	mov r1, r4
	bl FUN_0205019c
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_020501bc
	b _0204D08C
_0204D070:
	add r0, r8, #1
	mov r4, r0, lsl #0x10
	mov r0, r5
	mov r8, r4, lsr #0x10
	bl FUN_ov16_020edfb0
	cmp r0, r4, lsr #16
	bgt _0204D038
_0204D08C:
	add r0, r6, #1
	mov r4, r0, lsl #0x10
	mov r0, r5
	mov r6, r4, lsr #0x10
	bl FUN_ov16_020edfb0
	cmp r0, r4, lsr #16
	bgt _0204D010
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D0AC: .word gLogicThink
_0204D0B0: .word unk_0209A11C
	arm_func_end FUN_0204ce50

	arm_func_start FUN_0204d0b4
FUN_0204d0b4: ; 0x0204D0B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl FUN_0205107c
	mov r6, #1
	mov r5, r0
	mov r4, #0
	mov r11, r6
_0204D0D4:
	mov r0, r5
	sub r1, r6, #1
	bl FUN_0204fbe8
	movs r7, r0
	beq _0204D104
	ldr r0, _0204D2A0 ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	mov r2, r4
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r7, r4
_0204D104:
	cmp r7, #0
	bne _0204D164
	mov r7, #0xc
_0204D110:
	sub r8, r7, #1
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204D150
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r10
	str r11, [sp]
	mov r1, r9
	mov r3, r6
	bl FUN_0204c92c
	b _0204D164
_0204D150:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x10
	ble _0204D110
_0204D164:
	add r6, r6, #1
	cmp r6, #0xb
	ble _0204D0D4
	mov r6, #0xc
	mov r4, #1
_0204D178:
	mov r0, r5
	sub r1, r6, #1
	bl FUN_0204fbe8
	cmp r0, #0
	bne _0204D1E0
	add r7, r6, #1
	cmp r7, #0x10
	bgt _0204D1E0
_0204D198:
	mov r0, r5
	sub r1, r7, #1
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204D1D4
	mov r0, r5
	sub r1, r7, #1
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r10
	mov r1, r9
	mov r3, r6
	str r4, [sp]
	bl FUN_0204c92c
	b _0204D1E0
_0204D1D4:
	add r7, r7, #1
	cmp r7, #0x10
	ble _0204D198
_0204D1E0:
	add r6, r6, #1
	cmp r6, #0x10
	ble _0204D178
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0204fbe8
	movs r6, r0
	beq _0204D220
	ldr r0, _0204D2A0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	mov r2, r4
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r6, r4
_0204D220:
	cmp r6, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #2
	mov r4, #0
_0204D230:
	sub r7, r6, #1
	mov r0, r5
	mov r1, r7
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D288
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	bne _0204D288
	mov r0, r5
	mov r1, r7
	bl FUN_0204fbe8
	mov r3, #1
	mov r2, r0
	mov r0, r10
	mov r1, r9
	str r3, [sp]
	bl FUN_0204c92c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D288:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #0xb
	ble _0204D230
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D2A0: .word unk_0209A11C
	arm_func_end FUN_0204d0b4

	arm_func_start FUN_0204d2a4
FUN_0204d2a4: ; 0x0204D2A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xcc
	ldr r3, _0204D34C ; =0x00000FFF
	mov r4, r2
	mov r5, r1
	add r0, r0, #0x400
	add r7, r0, r5, lsl #4
	and r4, r4, r3
	mov r6, #0
	b _0204D2FC
_0204D2CC:
	mov r0, r7
	mov r1, r6
	bl FUN_02050258
	cmp r4, r0
	bne _0204D2F8
	mov r2, #0
	mov r0, r7
	mov r1, r6
	mov r3, r2
	bl FUN_020501bc
	b _0204D304
_0204D2F8:
	add r6, r6, #1
_0204D2FC:
	cmp r6, #4
	blt _0204D2CC
_0204D304:
	cmp r6, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0204D350 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	cmpeq r5, #1
	orreq r4, r4, #0x8000
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D344
	mov r1, r5
	bl FUN_0206d968
_0204D344:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204D34C: .word 0x00000FFF
_0204D350: .word unk_020A0640
	arm_func_end FUN_0204d2a4

	arm_func_start FUN_0204d354
FUN_0204d354: ; 0x0204D354
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0xc
	add r0, r0, #0x400
	add r6, r0, r1, lsl #5
	ldr r0, _0204D3BC ; =0x00000FFF
	mov r5, #0
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0204D378:
	mov r0, r6
	mov r1, r5
	bl FUN_0204fbfc
	cmp r4, r0
	bne _0204D3A0
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_0204fb8c
	b _0204D3AC
_0204D3A0:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0204D378
_0204D3AC:
	mov r0, #0
	cmp r5, #0x10
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0204D3BC: .word 0x00000FFF
	arm_func_end FUN_0204d354

	arm_func_start FUN_0204d3c0
FUN_0204d3c0: ; 0x0204D3C0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0204D430 ; =0x020A0640
	mov r6, r0
	ldrb r0, [r3, #0x1b]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0204D3F0
	ldr r0, _0204D434 ; =0x00000FFF
	cmp r5, #1
	and r4, r4, r0
	orreq r4, r4, #0x8000
_0204D3F0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d2a4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d354
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d4e8
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0204D430: .word unk_020A0640
_0204D434: .word 0x00000FFF
	arm_func_end FUN_0204d3c0

	arm_func_start FUN_0204d438
FUN_0204d438: ; 0x0204D438
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xcc
	ldr r3, _0204D4E0 ; =0x00000FFF
	mov r4, r2
	mov r5, r1
	add r0, r0, #0x400
	add r7, r0, r5, lsl #4
	and r4, r4, r3
	mov r6, #0
	b _0204D490
_0204D460:
	mov r0, r7
	mov r1, r6
	bl FUN_02050258
	cmp r4, r0
	bne _0204D48C
	mov r2, #0
	mov r0, r7
	mov r1, r6
	mov r3, r2
	bl FUN_020501bc
	b _0204D498
_0204D48C:
	add r6, r6, #1
_0204D490:
	cmp r6, #4
	blt _0204D460
_0204D498:
	cmp r6, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0204D4E4 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	cmpeq r5, #1
	orreq r4, r4, #0x8000
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D4D8
	mov r1, r5
	bl FUN_0206d968
_0204D4D8:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204D4E0: .word 0x00000FFF
_0204D4E4: .word unk_020A0640
	arm_func_end FUN_0204d438

	arm_func_start FUN_0204d4e8
FUN_0204d4e8: ; 0x0204D4E8
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r2
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, pc}
	ldr r2, _0204D520 ; =0x0209A11C
	ldrsh r1, [r0, #0x94]
	ldr r0, [r2]
	bl FUN_0206c5d8
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0204D520: .word unk_0209A11C
	arm_func_end FUN_0204d4e8

	arm_func_start FUN_0204d524
FUN_0204d524: ; 0x0204D524
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xa0
	mov r4, r1
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r6, r2
	mov r10, #0x32
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D55C
	bl FUN_0206dcd4
	ldrh r9, [r0, #0xe]
	b _0204D580
_0204D55C:
	ldr r0, _0204D69C ; =gLogicThink
	add r2, sp, #0x38
	mov r1, r4
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r9, [sp, #0x90]
_0204D580:
	ldr r5, _0204D6A0 ; =0x02099ED8
	str r10, [sp]
	mov r8, #0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r8
	mov r3, r9
	bl FUN_02055004
	mov r7, r0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_02055890
	ldr r0, [r5]
	mov r1, r7
	bl FUN_020552cc
	mov r6, #1
	mov r1, r6
	bl FUN_02054424
	ldr r0, [r5]
	bl FUN_02055c20
	mov r1, r7
	bl FUN_02054854
	mov r2, r0
	ldr r1, [r5]
	add r0, sp, #0x20
	bl FUN_02055c28
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r2, [sp, #0x30]
	str r8, [sp]
	stmib sp, {r2, r8}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r1, [sp, #0x34]
	ldr r1, [r5]
	add r0, sp, #0x14
	mov r2, r7
	str r3, [sp, #0x2c]
	bl FUN_020555e8
	ldr r2, [sp, #0x34]
	ldr r0, [r5]
	mov r2, r2, lsl #0x10
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl FUN_02055558
	ldr r0, [r5]
	mov r1, r7
	bl FUN_02055324
	ldr r5, _0204D6A4 ; =0x02099EC0
	str r10, [sp]
	mov r7, r0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r9
	mov r3, r8
	bl FUN_02056ed4
	str r9, [sp]
	stmib sp, {r8, r10}
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl FUN_02056b24
	ldr r0, [r5]
	mov r1, r6
	bl FUN_02057020
	mov r0, r6
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204D69C: .word gLogicThink
_0204D6A0: .word unk_02099ED8
_0204D6A4: .word unk_02099EC0
	arm_func_end FUN_0204d524

	arm_func_start FUN_0204d6a8
FUN_0204d6a8: ; 0x0204D6A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r5, _0204D7F4 ; =0x02099ED8
	mov r10, #0
	ldr r0, [r5]
	mov r2, r10
	mov r11, r1
	bl FUN_020554b0
	str r0, [sp]
	ldr r0, [r5]
	bl FUN_02055c20
	ldr r1, [sp]
	mov r9, r0
	bl FUN_02054854
	sub r1, r10, #1
	cmp r0, r1
	beq _0204D7E8
	add r7, sp, #0x10
	add r6, sp, #4
	mov r4, #0xc
	b _0204D744
_0204D6FC:
	ldr r0, [r5]
	mov r1, r10
	bl FUN_020552dc
	movs r8, r0
	beq _0204D740
	bl FUN_0205430c
	mul r2, r10, r4
	ldr r3, [r0]
	ldr r1, [r0, #4]
	ldrh r12, [r8, #0x6a]
	mov r8, r10, lsl #1
	str r3, [r7, r2]
	add r2, r7, r2
	ldr r0, [r0, #8]
	str r1, [r2, #4]
	str r0, [r2, #8]
	strh r12, [r6, r8]
_0204D740:
	add r10, r10, #1
_0204D744:
	ldr r0, [r9, #0x10]
	cmp r10, r0
	blt _0204D6FC
	ldr r0, _0204D7F4 ; =0x02099ED8
	ldr r0, [r0]
	bl FUN_02055310
	movs r4, r0
	beq _0204D788
	bl FUN_0205430c
	ldrh r1, [r4, #0x6a]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	str r0, [sp, #0x48]
	strh r1, [sp, #0xc]
_0204D788:
	ldr r4, _0204D7F4 ; =0x02099ED8
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [sp]
	mov r2, r5
	bl FUN_02055938
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_02055274
	ldr r4, _0204D7F8 ; =0x02099EC0
	mov r1, r11
	ldr r0, [r4]
	mov r2, #0
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r4]
	mov r2, r5
	bl FUN_02056e04
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02057020
	add sp, sp, #0x4c
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D7E8:
	mov r0, r10
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D7F4: .word unk_02099ED8
_0204D7F8: .word unk_02099EC0
	arm_func_end FUN_0204d6a8

	arm_func_start FUN_0204d7fc
FUN_0204d7fc: ; 0x0204D7FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r3
	cmp r2, #0
	beq _0204D834
	bl FUN_020731a4
	cmp r0, #0
	ldrne r0, _0204D860 ; =0x0209A454
	movne r1, #1
	strneb r1, [r0, #0x30]
	ldreq r0, _0204D860 ; =0x0209A454
	moveq r1, #0
	streqb r1, [r0, #0x30]
_0204D834:
	ldrb r0, [r6, #0x889]
	cmp r0, #0
	cmpeq r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0204da5c
	mov r0, r6
	mov r1, r5
	bl FUN_0204d8cc
	ldmfd sp!, {r4, r5, r6, pc}
_0204D860: .word unk_0209A454
	arm_func_end FUN_0204d7fc

	arm_func_start FUN_0204d864
FUN_0204d864: ; 0x0204D864
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r2
	mov r6, #0
	mov r4, #0x400
_0204D878:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0204D8A0
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0204D8A0
	mov r0, r5
	mov r1, r4
	bl FUN_0206d634
_0204D8A0:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0204D878
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0x400
	bl FUN_0206d620
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204d864

	arm_func_start FUN_0204d8cc
FUN_0204d8cc: ; 0x0204D8CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r1
	bl FUN_0207249c
	add r1, sp, #0
	mov r0, #5
	mov r6, #0
_0204D8E8:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0204D8E8
	mov r5, #1
	mov r8, #0
	add r4, sp, #0
	mov r11, r5
_0204D914:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0204D990
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204D990
	mov r0, r7
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204D990
	mov r0, r7
	mov r1, r5
	bl FUN_0206d9b0
	mov r9, r0
	mov r0, r7
	bl FUN_0206d660
	cmp r0, #0
	cmpne r9, #0
	ble _0204D970
	cmp r9, #0x14
	addle r0, r4, r9
	strleb r5, [r0, #-1]
_0204D970:
	cmp r9, #0
	blt _0204D980
	cmp r9, #0x14
	ble _0204D990
_0204D980:
	mov r0, r7
	mov r1, r6
	mov r2, r11
	bl FUN_0206d9cc
_0204D990:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0204D914
	mov r11, #1
	mov r8, #0
	add r5, sp, #0
	mov r4, r11
_0204D9AC:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _0204DA48
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204DA48
	mov r0, r9
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204DA48
	mov r0, r9
	bl FUN_0206d660
	cmp r0, #0
	beq _0204DA48
	mov r0, r9
	mov r1, r11
	bl FUN_0206d9b0
	cmp r0, #0
	beq _0204DA10
	mov r0, r9
	mov r1, r11
	bl FUN_0206d9b0
	cmp r0, #0x14
	bls _0204DA48
_0204DA10:
	mov r7, r6
_0204DA14:
	ldrb r0, [r5, r7]
	cmp r0, #0
	bne _0204DA3C
	add r1, r7, #1
	mov r0, r9
	mov r2, r4
	and r1, r1, #0xff
	bl FUN_0206d9cc
	strb r4, [r5, r7]
	b _0204DA48
_0204DA3C:
	add r7, r7, #1
	cmp r7, #0x14
	blt _0204DA14
_0204DA48:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0204D9AC
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204d8cc

	arm_func_start FUN_0204da5c
FUN_0204da5c: ; 0x0204DA5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x9c
	str r0, [sp, #8]
	add r2, sp, #0x10
	mov r10, r1
	mov r0, #4
	mov r4, #0
_0204DA78:
	strh r4, [r2]
	strh r4, [r2, #2]
	strh r4, [r2, #4]
	strh r4, [r2, #6]
	add r2, r2, #8
	subs r0, r0, #1
	bne _0204DA78
	mov r5, #0
	mov r11, #0x4000
	add r8, sp, #0x30
	ldr r7, _0204DE5C ; =0x0000018E
	ldr r6, _0204DE60 ; =0x02099E91
	b _0204DB38
_0204DAAC:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _0204DB34
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204DB34
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r8
	bl FUN_0206ed40
	mov r0, r9
	mov r1, r7
	bl FUN_0206d634
	mov r0, r8
	mov r1, r4
	bl FUN_0206e84c
	mov r0, r8
	mov r1, r4
	bl FUN_0206e984
	mov r0, r8
	mov r1, r4
	bl FUN_0206ea54
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206ed40
	ldrb r0, [r6]
	cmp r0, #0
	beq _0204DB34
	mov r0, r9
	mov r1, r11
	bl FUN_0206dadc
_0204DB34:
	add r5, r5, #1
_0204DB38:
	cmp r5, #0x64
	blt _0204DAAC
	ldr r0, [sp, #8]
	bl FUN_020731b4
	cmp r0, #0
	beq _0204DC70
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0205106c
	mov r11, r0
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0205107c
	mov r8, r0
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0207249c
	mov r6, #0
	str r0, [sp, #0xc]
	mov r5, r6
	b _0204DC60
_0204DB8C:
	cmp r10, #1
	bne _0204DBB4
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	mov r7, r0
	mov r0, r8
	mov r1, r7
	bl FUN_0204fd68
	b _0204DBD0
_0204DBB4:
	mov r0, r11
	mov r1, r5
	bl FUN_02050244
	mov r7, r0
	mov r0, r11
	mov r1, r7
	bl FUN_0205019c
_0204DBD0:
	mov r9, r0
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r7, r0
	cmpne r9, #0
	beq _0204DC5C
	mov r1, r9
	bl FUN_0206d968
	mov r0, r7
	mov r1, #0xe
	bl FUN_0206d620
	cmp r9, #1
	bne _0204DC3C
	mov r0, r7
	mov r1, #0x80
	bl FUN_0206d620
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0204DC3C
	mov r0, r7
	bl FUN_0206dcd4
	ldr r2, [sp, #0xc]
	mov r1, r4
	ldrh r2, [r2, #0x32]
	bl FUN_0206def8
_0204DC3C:
	mov r0, #7
	stmia sp, {r0, r4}
	ldr r0, _0204DE64 ; =gLogicThink
	mov r1, r7
	mov r2, #1
	mov r3, r4
	bl FUN_0204e79c
	add r6, r6, #1
_0204DC5C:
	add r5, r5, #1
_0204DC60:
	cmp r5, #4
	blt _0204DB8C
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204DC70:
	ldr r0, _0204DE68 ; =0x020A0640
	mov r5, #0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0204DC94
	ldr r0, [sp, #8]
	bl FUN_020731d0
	cmp r0, #0
	movne r5, #1
_0204DC94:
	mov r9, #2
	cmp r5, #0
	moveq r9, r10
	ldr r0, [sp, #8]
	mov r1, r9
	bl FUN_0205107c
	mov r8, r0
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0207249c
	mov r6, #0
	mov r11, r0
	mov r5, r6
	b _0204DD1C
_0204DCCC:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	cmp r0, #0
	bne _0204DD18
	mov r7, r4
	b _0204DD10
_0204DCE8:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	movs r2, r0
	beq _0204DD0C
	mov r0, r8
	mov r1, r5
	bl FUN_0204fb8c
	b _0204DD18
_0204DD0C:
	add r7, r7, #1
_0204DD10:
	cmp r7, #5
	blt _0204DCE8
_0204DD18:
	add r5, r5, #1
_0204DD1C:
	cmp r5, #0x10
	blt _0204DCCC
	mov r5, #0
	b _0204DE4C
_0204DD2C:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	movs r10, r0
	beq _0204DE48
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _0204DE48
	ldr r0, _0204DE68 ; =0x020A0640
	mov r1, r10
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	mov r0, r8
	bne _0204DD70
	bl FUN_0204fd20
	b _0204DD74
_0204DD70:
	bl FUN_0204fd68
_0204DD74:
	movs r10, r0
	beq _0204DE48
	cmp r9, #2
	mov r0, r7
	mov r1, r10
	bne _0204DD94
	bl FUN_0206d998
	b _0204DD98
_0204DD94:
	bl FUN_0206d980
_0204DD98:
	mov r0, r7
	mov r1, #2
	bl FUN_0206d620
	cmp r10, #0xc
	bge _0204DDB8
	mov r0, r7
	mov r1, #0xc
	bl FUN_0206d620
_0204DDB8:
	cmp r10, #1
	bne _0204DDF0
	mov r0, r7
	mov r1, #0x80
	bl FUN_0206d620
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0204DDF0
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r4
	ldrh r2, [r11, #0x32]
	bl FUN_0206def8
_0204DDF0:
	mov r0, #7
	stmia sp, {r0, r4}
	ldr r0, _0204DE64 ; =gLogicThink
	mov r1, r7
	mov r2, #1
	mov r3, r4
	bl FUN_0204e79c
	ldr r0, _0204DE60 ; =0x02099E91
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r0, _0204DE6C ; =0x02099E97
	ldrneb r0, [r0]
	cmpne r0, #0
	beq _0204DE44
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0204DE44
	mov r0, r7
	mov r1, #0x4000
	bl FUN_0206dac4
_0204DE44:
	add r6, r6, #1
_0204DE48:
	add r5, r5, #1
_0204DE4C:
	cmp r5, #0x10
	blt _0204DD2C
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204DE5C: .word 0x0000018E
_0204DE60: .word unk_02099E91
_0204DE64: .word gLogicThink
_0204DE68: .word unk_020A0640
_0204DE6C: .word unk_02099E97
	arm_func_end FUN_0204da5c

	arm_func_start FUN_0204de70
FUN_0204de70: ; 0x0204DE70
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ble _0204DE84
	cmp r2, #4
	ble _0204DE8C
_0204DE84:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204DE8C:
	add r0, r0, #0xcc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #4
	sub r1, r2, #1
	bl FUN_02050244
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204de70

	arm_func_start FUN_0204dea4
FUN_0204dea4: ; 0x0204DEA4
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ble _0204DEB8
	cmp r2, #0x10
	ble _0204DEC0
_0204DEB8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204DEC0:
	add r0, r0, #0xc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #5
	sub r1, r2, #1
	bl FUN_0204fbe8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204dea4

	arm_func_start FUN_0204ded8
FUN_0204ded8: ; 0x0204DED8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r8, r1
	cmp r7, #0
	ble _0204DEF4
	cmp r7, #0x10
	ble _0204DEFC
_0204DEF4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204DEFC:
	mov r6, #0
	mov r4, r6
_0204DF04:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0204DF50
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204DF50
	mov r0, r5
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0204DF50
	mov r0, r5
	mov r1, r4
	bl FUN_0206d824
	cmp r7, r0
	bne _0204DF50
	mov r0, r5
	bl FUN_0206cbf8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204DF50:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0204DF04
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204ded8

	arm_func_start FUN_0204df64
FUN_0204df64: ; 0x0204DF64
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	cmp r0, #0x63
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0206dcd4
	ldr r4, [r0]
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r2, [r0, #0x4a]
	mov r0, r6
	mov r1, r5
	add r2, r2, #1
	bl FUN_0204e000
	sub r0, r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204df64

	arm_func_start FUN_0204dfb8
FUN_0204dfb8: ; 0x0204DFB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r7
	bl FUN_0206dcd4
	ldr r1, [r4]
	add r1, r6, r1
	bl FUN_0206dcf0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_0204e118
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204dfb8

	arm_func_start FUN_0204e000
FUN_0204e000: ; 0x0204E000
	stmfd sp!, {r4, lr}
	ldrb r1, [r1, #0x4c]
	mov r4, r2
	bl FUN_02072054
	mov r1, r4
	bl FUN_020506dc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204e000

	arm_func_start FUN_0204e01c
FUN_0204e01c: ; 0x0204E01C
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r1, [r4, #2]
	ldr r3, [r0, #0x7e8]
	mov r0, #0x68
	mla r0, r1, r0, r3
	mov r1, r2
	bl FUN_02050708
	ldrb r12, [r4]
	ldrb r2, [r4, #1]
	ldr r1, _0204E07C ; =0x51EB851F
	sub r2, r2, r12
	mul r2, r0, r2
	smull r0, r3, r1, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	adds r0, r12, r3
	movmi r0, #0
	cmp r0, #0xff
	movgt r0, #0xff
	and r0, r0, #0xff
	ldmfd sp!, {r4, pc}
_0204E07C: .word 0x51EB851F
	arm_func_end FUN_0204e01c

	arm_func_start FUN_0204e080
FUN_0204e080: ; 0x0204E080
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r1, [r4, #4]
	ldr r3, [r0, #0x7e8]
	mov r0, #0x68
	mla r0, r1, r0, r3
	mov r1, r2
	bl FUN_02050708
	ldrh r12, [r4]
	ldrh r2, [r4, #2]
	ldr r1, _0204E0E8 ; =0x51EB851F
	sub r2, r2, r12
	mul r2, r0, r2
	smull r0, r3, r1, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	adds r1, r12, r3
	ldr r0, _0204E0EC ; =0x000003E7
	movmi r1, #0
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_0204E0E8: .word 0x51EB851F
_0204E0EC: .word 0x000003E7
	arm_func_end FUN_0204e080

	arm_func_start FUN_0204e0f0
FUN_0204e0f0: ; 0x0204E0F0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, #0
	mov r3, r2
	str r12, [sp]
	mov r2, #1
	str r12, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204e0f0

	arm_func_start FUN_0204e118
FUN_0204e118: ; 0x0204E118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	mov r9, r1
	add r3, sp, #4
	mov r1, #0
	movs r8, r2
	mov r10, r0
	str r1, [r3]
	str r1, [r3, #4]
	str r1, [r3, #8]
	str r1, [r3, #0xc]
	beq _0204E154
	mov r0, r8
	mov r2, #0x10
	bl MI_CpuFill8
_0204E154:
	mov r0, r9
	bl FUN_0206dcdc
	cmp r0, #0
	addne sp, sp, #0xc8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206dcd4
	add r4, sp, #0x5c
	str r0, [sp]
	mov r1, r0
	mov r0, r4
	bl FUN_0206ed40
	str r4, [r9, #0x68]
	ldrb r5, [sp, #0xa6]
	mov r7, #1
	ldr r6, [sp, #0x5c]
	mov r0, r10
	mov r1, r9
	mov r2, r7
	mov r11, r5
	bl FUN_0204e000
	cmp r6, r0
	bhs _0204E1D0
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_0204e000
	mov r1, r0
	mov r0, r4
	bl FUN_0206dcf0
_0204E1D0:
	cmp r5, #0x63
	bge _0204E314
_0204E1D8:
	ldr r6, [r4]
	mov r0, r10
	mov r1, r9
	add r2, r5, #1
	bl FUN_0204e000
	cmp r6, r0
	blo _0204E314
	add r1, r5, #1
	mov r0, r4
	and r1, r1, #0xff
	bl FUN_0206e43c
	add r6, sp, #4
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_0204e0f0
	cmp r8, #0
	beq _0204E268
	mov r1, #0
	mov r2, r1
_0204E228:
	ldr r7, [r6, r2, lsl #2]
	cmp r7, #0
	beq _0204E25C
	mov r3, r1
_0204E238:
	ldr r0, [r8, r3, lsl #2]
	cmp r0, #0
	bgt _0204E250
	cmp r0, r7
	strne r7, [r8, r3, lsl #2]
	bne _0204E25C
_0204E250:
	add r3, r3, #1
	cmp r3, #4
	blt _0204E238
_0204E25C:
	add r2, r2, #1
	cmp r2, #4
	blt _0204E228
_0204E268:
	cmp r9, #0
	beq _0204E308
	mov r0, r9
	bl FUN_0206cbf8
	mov r1, r0
	add r2, sp, #0x14
	mov r0, r10
	bl FUN_0204c078
	cmp r0, #0
	beq _0204E308
	ldrsb r1, [r4, #0x60]
	ldrsb r0, [sp, #0x53]
	ldrsb r6, [r4, #0x61]
	ldrsb r7, [r4, #0x62]
	add r0, r1, r0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldrsb r0, [sp, #0x55]
	cmp r1, #0x64
	movge r1, #0x64
	add r0, r6, r0
	mov r0, r0, lsl #0x18
	mov r6, r0, asr #0x18
	ldrsb r0, [sp, #0x57]
	cmp r6, #0x64
	movge r6, #0x64
	add r0, r7, r0
	mov r0, r0, lsl #0x18
	mov r7, r0, asr #0x18
	cmp r7, #0x64
	mov r0, r4
	and r1, r1, #0xff
	movge r7, #0x64
	bl FUN_0206eb24
	mov r0, r4
	and r1, r6, #0xff
	bl FUN_0206eb8c
	mov r0, r4
	and r1, r7, #0xff
	bl FUN_0206ebf4
_0204E308:
	add r5, r5, #1
	cmp r5, #0x63
	blt _0204E1D8
_0204E314:
	ldr r1, [sp]
	mov r0, r9
	str r1, [r9, #0x68]
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206ed40
	ldrb r0, [r4, #0x4a]
	cmp r11, r0
	addeq sp, sp, #0xc8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206d5f0
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _0204E378
	mov r0, r9
	bl FUN_0206cbf8
	cmp r0, #1
	bne _0204E378
	mov r0, r10
	bl FUN_02073384
	mov r0, #1
	strb r0, [r10, #0x88b]
_0204E378:
	mov r0, #1
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204e118

	arm_func_start FUN_0204e384
FUN_0204e384: ; 0x0204E384
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #0
	add lr, r1, #0x6c
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmpne r2, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r5, r4
_0204E3A8:
	add r12, lr, r5
	ldrb r12, [r12, #0xf]
	add r5, r5, #1
	cmp r5, #7
	add r4, r4, r12
	blt _0204E3A8
	sub r3, r4, r3
	cmp r3, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r3, r2
	movgt r3, r2
	ldrsb r2, [r1]
	sub r2, r2, r3
	cmp r2, #0x7f
	ble _0204E3F4
	subs r2, r2, #0x7f
	rsbmi r2, r2, #0
	sub r3, r3, r2
	mov r2, #0x7f
_0204E3F4:
	cmn r2, #0x7f
	bge _0204E40C
	adds r2, r2, #0x7f
	rsbmi r2, r2, #0
	sub r3, r3, r2
	mvn r2, #0x7e
_0204E40C:
	strb r2, [r1]
	ldrb r1, [r0]
	sub r1, r1, r3
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204e384

	arm_func_start FUN_0204e420
FUN_0204e420: ; 0x0204E420
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r9, r1
	mov r10, r0
	mov r0, r9
	mov r8, r2
	str r3, [sp, #8]
	bl FUN_0206dcd4
	mov r5, r0
	mov r0, r9
	bl FUN_0206cc34
	ldr r1, _0204E794 ; =0x020A1540
	ldrb r2, [r8, #0x46]
	ldrh r1, [r1, #0xd0]
	mov r11, r0
	ldrh r7, [r8, #0x3c]
	mov r0, r1, asr r2
	tst r0, #1
	movne r12, #1
	moveq r12, #0
	mov r3, #0x14
	cmp r7, #0
	ldrsh r6, [r5, #0x18]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	ldreq r7, _0204E798 ; =0x00007FFF
	mul r4, r12, r3
	bl FUN_0204e080
	add r0, r0, r6
	strh r0, [r9, #0x70]
	ldrsh r6, [r5, #0x1a]
	mov r0, r10
	mov r2, r11
	add r1, r8, #8
	bl FUN_0204e080
	add r0, r0, r6
	strh r0, [r9, #0x72]
	add r6, r9, #0x7b
	mov r0, #0
	add r1, sp, #0x28
	b _0204E4D4
_0204E4C8:
	ldrb r2, [r6, r0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
_0204E4D4:
	cmp r0, #7
	blt _0204E4C8
	ldrsb r0, [r5, #0x4f]
	mov r2, r11
	add r1, r8, #0x10
	str r0, [sp, #0x20]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x20]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6]
	ldrsb r0, [r5, #0x50]
	add r1, r8, #0x14
	str r0, [sp, #0x1c]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x1c]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #1]
	ldrsb r0, [r5, #0x51]
	add r1, r8, #0x18
	str r0, [sp, #0x18]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x18]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #3]
	ldrsb r0, [r5, #0x52]
	add r1, r8, #0x1c
	str r0, [sp, #0x14]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x14]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #2]
	ldrsb r0, [r5, #0x53]
	add r1, r8, #0x20
	str r0, [sp, #0x10]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x10]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #4]
	ldrsb r0, [r5, #0x54]
	add r1, r8, #0x24
	str r0, [sp, #0xc]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0xc]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #6]
	add r1, r8, #0x28
	ldrsb r8, [r5, #0x55]
	mov r0, r10
	bl FUN_0204e01c
	add r0, r0, r8
	strb r0, [r6, #5]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0204E780
	mov r0, #0
	add r2, sp, #0x28
	b _0204E5FC
_0204E5E8:
	ldrb r3, [r6, r0]
	ldr r1, [r2, r0, lsl #2]
	sub r1, r3, r1
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
_0204E5FC:
	cmp r0, #7
	blt _0204E5E8
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	bne _0204E780
	ldrsb r0, [r5, #0x4f]
	add r8, sp, #0x24
	ldr r2, [sp, #0x28]
	strb r0, [sp, #0x24]
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	str r6, [sp, #4]
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e50c
	ldrsb r2, [r5, #0x50]
	add r1, r6, #1
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x2c]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e574
	ldrsb r2, [r5, #0x51]
	add r1, r6, #3
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x34]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e5dc
	ldrsb r2, [r5, #0x52]
	add r1, r6, #2
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x30]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e644
	ldrsb r2, [r5, #0x53]
	add r1, r6, #4
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x38]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e6ac
	ldrsb r2, [r5, #0x54]
	add r1, r6, #6
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x40]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e714
	ldrsb r0, [r5, #0x55]
	add r3, r6, #5
	ldr r2, [sp, #0x3c]
	strb r0, [sp, #0x24]
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	str r3, [sp, #4]
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e77c
_0204E780:
	add r0, r9, #0x6c
	bl FUN_02050cb4
	mov r0, #1
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204E794: .word unk_020A1540
_0204E798: .word 0x00007FFF
	arm_func_end FUN_0204e420

	arm_func_start FUN_0204e79c
FUN_0204e79c: ; 0x0204E79C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	mov r10, r0
	mov r9, r1
	mov r11, r2
	mov r8, r3
	ldr r4, [sp, #0xf0]
	mov r5, #0
	bl FUN_0204fb20
	mov r0, r5
_0204E7C4:
	cmp r8, #0
	strne r5, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #4
	blt _0204E7C4
	cmp r4, #3
	beq _0204E824
	ldr r0, [sp, #0xf4]
	cmp r0, #0
	beq _0204E7FC
	add r1, sp, #0x80
	mov r2, #0x48
	bl MI_CpuCopy8
	b _0204E824
_0204E7FC:
	mov r0, r9
	bl FUN_0206cbf8
	mov r1, r0
	add r2, sp, #0x80
	mov r0, r10
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0xc8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204E824:
	mov r0, r9
	bl FUN_0206dcd4
	add r5, sp, #0x14
	str r0, [sp]
	mov r1, r0
	mov r0, r5
	bl FUN_0206ed40
	str r5, [r9, #0x68]
	tst r4, #1
	bne _0204E878
	tst r4, #4
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	mov r3, #1
	moveq r3, #0
	add r2, sp, #0x80
	mov r0, r10
	mov r1, r9
	bl FUN_0204e420
	b _0204E880
_0204E878:
	add r0, r9, #0x6c
	bl FUN_02050cb4
_0204E880:
	tst r4, #2
	bne _0204E8E8
	mov r6, #0
	mov r7, r6
	mov r4, #1
	add r5, sp, #0x80
_0204E898:
	mov r0, r9
	bl FUN_0206cc34
	add r2, r5, r7, lsl #2
	ldrb r1, [r2, #0x2e]
	cmp r0, r1
	blt _0204E8DC
	ldrh r2, [r2, #0x2c]
	mov r0, r10
	mov r1, r9
	mov r3, r4
	bl FUN_02049e14
	cmp r0, #0
	cmpne r8, #0
	addne r0, r5, r7, lsl #2
	ldrneh r0, [r0, #0x2c]
	strne r0, [r8, r6, lsl #2]
	addne r6, r6, #1
_0204E8DC:
	add r7, r7, #1
	cmp r7, #4
	blt _0204E898
_0204E8E8:
	mov r6, #0
	add r4, sp, #4
_0204E8F0:
	mov r0, r9
	mov r1, r6
	bl FUN_0206cd90
	movs r1, r0
	beq _0204E944
	mov r0, r10
	bl FUN_ov16_020ee034
	movs r5, r0
	beq _0204E944
	bl FUN_ov16_020eef1c
	cmp r0, #0
	beq _0204E944
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020eee80
	cmp r0, #0
	bne _0204E944
	mov r1, r4
	add r0, r9, #0x6c
	bl FUN_02050ce0
_0204E944:
	add r6, r6, #1
	cmp r6, #4
	blt _0204E8F0
	cmp r11, #0
	beq _0204E9C8
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov16_020ee468
	mov r4, r0
	mov r0, r9
	bl FUN_0206d6d8
	cmp r0, #0
	cmpne r4, #0
	beq _0204E9C8
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_020ee034
	mov r5, r0
	bl FUN_ov16_020eef1c
	cmp r0, #0
	beq _0204E9C8
	add r4, sp, #4
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020eee80
	cmp r0, #0
	bne _0204E9C8
	mov r1, r4
	add r0, r9, #0x6c
	bl FUN_02050ce0
_0204E9C8:
	mov r0, r9
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r9
	bl FUN_0206ccec
	cmp r4, r0
	ble _0204E9F8
	mov r0, r9
	bl FUN_0206ccec
	mov r1, r0
	mov r0, r9
	bl FUN_0206cc9c
_0204E9F8:
	mov r0, r9
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r9
	bl FUN_0206cc94
	cmp r4, r0
	ble _0204EA28
	mov r0, r9
	bl FUN_0206cc94
	mov r1, r0
	mov r0, r9
	bl FUN_0206cc44
_0204EA28:
	ldr r1, [sp]
	mov r0, r9
	str r1, [r9, #0x68]
	bl FUN_0206dcd4
	add r1, sp, #0x14
	bl FUN_0206ed40
	mov r0, #1
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204e79c

	arm_func_start FUN_0204ea4c
FUN_0204ea4c: ; 0x0204EA4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	movle r6, #1
	ble _0204EA78
	cmp r6, #0x63
	movgt r6, #0x63
_0204EA78:
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	cmp r6, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_0204e000
	mov r1, r0
	mov r0, r4
	bl FUN_0206dcf0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_0204e118
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204ea4c

	arm_func_start FUN_0204eac8
FUN_0204eac8: ; 0x0204EAC8
	ldr r0, _0204EAD4 ; =0x020A0640
	ldrb r0, [r0, #0x4ed]
	bx lr
_0204EAD4: .word unk_020A0640
	arm_func_end FUN_0204eac8

	arm_func_start FUN_0204ead8
FUN_0204ead8: ; 0x0204EAD8
	cmp r1, #0
	movlt r1, #0
	cmp r1, #0xff
	movgt r1, #0xff
	ldr r0, _0204EAF8 ; =0x020A0B00
	ldr r12, _0204EAFC ; =FUN_020747b8
	and r1, r1, #0xff
	bx r12
_0204EAF8: .word unk_020A0B00
_0204EAFC: .word FUN_020747b8
	arm_func_end FUN_0204ead8

	arm_func_start FUN_0204eb00
FUN_0204eb00: ; 0x0204EB00
	stmfd sp!, {r3, lr}
	tst r1, #0x8000
	bne _0204EB1C
	add r0, r0, #0xc
	add r0, r0, #0x400
	bl FUN_0204fd68
	ldmfd sp!, {r3, pc}
_0204EB1C:
	add r0, r0, #0x2c
	add r0, r0, #0x400
	bl FUN_0204fd68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204eb00

	arm_func_start FUN_0204eb2c
FUN_0204eb2c: ; 0x0204EB2C
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_0206dca4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204eb2c

	arm_func_start FUN_0204eb4c
FUN_0204eb4c: ; 0x0204EB4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
_0204EB5C:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204EB80
	bl FUN_0206d5f0
	cmp r6, r0
	bne _0204EB80
	mov r0, r4
	bl FUN_0206dca4
_0204EB80:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204EB5C
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl FUN_02072560
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204eb4c

	arm_func_start FUN_0204eba0
FUN_0204eba0: ; 0x0204EBA0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x7ec]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x3ec
	mvn r4, #0
	ldr r1, _0204EC34 ; =0x02090548
	add r2, sp, #4
	add r0, r0, #0x400
	mov r3, #0
	str r4, [sp]
	bl L5FS_ReadFileDeferred
	mov r5, r0
	mov r4, #1
_0204EBE8:
	ldrsb r0, [sp, #4]
	bl L5FS_IsFileBusy
	cmp r0, #0
	beq _0204EC04
	mov r0, r4
	bl OS_Sleep
	b _0204EBE8
_0204EC04:
	cmp r5, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0204EC38 ; =0xBA2E8BA3
	add r1, r6, #0x800
	umull r0, r2, r5, r0
	mov r2, r2, lsr #5
	strh r2, [r1, #0x6a]
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0204EC34: .word unk_02090548
_0204EC38: .word 0xBA2E8BA3
	arm_func_end FUN_0204eba0

	arm_func_start FUN_0204ec3c
FUN_0204ec3c: ; 0x0204EC3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x7ec]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0204EC6C ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x7ec]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0204EC6C: .word gL5Allocator
	arm_func_end FUN_0204ec3c

	arm_func_start FUN_0204ec70
FUN_0204ec70: ; 0x0204EC70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x7ec]
	mov r4, r1
	cmp r2, #0
	mov r1, #0
	bne _0204EC94
	bl FUN_0204eba0
	mov r1, #1
_0204EC94:
	add r0, r5, #0x800
	ldrh r12, [r0, #0x6a]
	ldr r2, [r5, #0x7ec]
	mov r3, #0
	cmp r12, #0
	ble _0204ECEC
_0204ECAC:
	ldrh r0, [r2, #0x24]
	cmp r0, r4
	bne _0204ECDC
	ldrb r0, [r2, #0x2b]
	tst r0, #2
	beq _0204ECDC
	cmp r1, #0
	beq _0204ECD4
	mov r0, r5
	bl FUN_0204ec3c
_0204ECD4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0204ECDC:
	add r3, r3, #1
	cmp r3, r12
	add r2, r2, #0x2c
	blt _0204ECAC
_0204ECEC:
	cmp r1, #0
	beq _0204ECFC
	mov r0, r5
	bl FUN_0204ec3c
_0204ECFC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204ec70

	arm_func_start FUN_0204ed04
FUN_0204ed04: ; 0x0204ED04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, #1
	mov r9, r8
	b _0204EDFC
_0204ED18:
	sub r10, r2, #1
	cmp r10, #0
	mov r9, #0
	ble _0204EDF4
	mov r11, r9
_0204ED2C:
	add r5, r1, r10, lsl #3
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0204EDE8
	cmp r3, #0
	ldrh r0, [r5, #-4]
	beq _0204ED70
	cmp r0, #0
	beq _0204ED60
	ldr r4, [r1, r10, lsl #3]
	ldr r0, [r5, #-8]
	cmp r4, r0
	bge _0204ED68
_0204ED60:
	mov r0, r8
	b _0204ED90
_0204ED68:
	mov r0, r11
	b _0204ED90
_0204ED70:
	cmp r0, #0
	beq _0204ED88
	ldr r4, [r1, r10, lsl #3]
	ldr r0, [r5, #-8]
	cmp r4, r0
	ble _0204ED8C
_0204ED88:
	b _0204ED60
_0204ED8C:
	mov r0, #0
_0204ED90:
	cmp r0, #0
	beq _0204EDE8
	add r6, r1, r10, lsl #3
	ldrb r4, [r6, #6]
	ldrb lr, [r6, #7]
	ldrh r5, [r6, #4]
	ldr r7, [r1, r10, lsl #3]
	ldr r0, [r6, #-8]
	strb r4, [sp, #6]
	str r0, [r1, r10, lsl #3]
	ldrh r0, [r6, #-4]
	strb lr, [sp, #7]
	mov r9, r8
	strh r0, [r6, #4]
	ldrb r12, [r6, #-2]
	ldrb r0, [r6, #-1]
	strb r12, [r6, #6]
	strb r0, [r6, #7]
	str r7, [r6, #-8]
	strh r5, [r6, #-4]
	strb r4, [r6, #-2]
	strb lr, [r6, #-1]
_0204EDE8:
	sub r10, r10, #1
	cmp r10, #0
	bgt _0204ED2C
_0204EDF4:
	add r1, r1, #8
	sub r2, r2, #1
_0204EDFC:
	cmp r9, #0
	beq _0204EE0C
	cmp r2, #0
	bgt _0204ED18
_0204EE0C:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204ed04

	arm_func_start FUN_0204ee18
FUN_0204ee18: ; 0x0204EE18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	mov r7, r1
	mov r0, r6
	mov r4, #1
	bl STD_GetStringLength
	cmp r7, #0
	cmpne r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #1
	cmp r5, #0x1c
	movhs r4, #0
	bhs _0204EE5C
	mov r0, r7
	mov r1, r6
	bl STD_CopyString
_0204EE5C:
	cmp r5, #0x20
	movhs r4, #0
	bhs _0204EE74
	mov r1, r6
	add r0, r7, #0x2c
	bl STD_CopyString
_0204EE74:
	cmp r5, #0x10
	movhs r4, #0
	bhs _0204EE8C
	mov r1, r6
	add r0, r7, #0x1c
	bl STD_CopyString
_0204EE8C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204ee18

	arm_func_start FUN_0204ee94
FUN_0204ee94: ; 0x0204EE94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r9, r1
	mov r8, r2
	mov r10, r0
	cmpne r8, #0
	mov r11, r3
	mov r4, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0204EF8C ; =gL5Allocator
	mov r1, r8, lsl #3
	bl _ZN11L5Allocator8allocateEm
	str r0, [sp]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	mov r5, r0
	mov r6, r9
	mov r7, r4
	cmpgt r8, #0
	ble _0204EF34
_0204EEEC:
	ldrh r0, [r6]
	mov r1, r4
	bl FUN_ov16_020efa9c
	ldrh r2, [r6]
	movs r1, r0
	strh r2, [r5, #4]
	streq r4, [r5]
	beq _0204EF20
	mov r0, r10
	mov r2, r11
	mov r3, r4
	bl FUN_0204f02c
	str r0, [r5]
_0204EF20:
	add r7, r7, #1
	cmp r7, r8
	add r5, r5, #8
	add r6, r6, #2
	blt _0204EEEC
_0204EF34:
	ldrb r3, [sp, #0x28]
	ldr r1, [sp]
	mov r0, r10
	mov r2, r8
	bl FUN_0204ed04
	cmp r8, #0
	mov r4, r0
	ldr r1, [sp]
	mov r2, #0
	cmpgt r8, #0
	ble _0204EF78
_0204EF60:
	ldrh r0, [r1, #4]
	add r2, r2, #1
	cmp r2, r8
	strh r0, [r9], #2
	add r1, r1, #8
	blt _0204EF60
_0204EF78:
	ldr r0, _0204EF8C ; =gL5Allocator
	ldr r1, [sp]
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204EF8C: .word gL5Allocator
	arm_func_end FUN_0204ee94

	arm_func_start FUN_0204ef90
FUN_0204ef90: ; 0x0204EF90
	cmp r1, #0x46
	bgt _0204EFE8
	bge _0204F01C
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0204F024
_0204EFA8: ; jump table
	b _0204F024 ; case 0
	b _0204F004 ; case 1
	b _0204F004 ; case 2
	b _0204F004 ; case 3
	b _0204F004 ; case 4
	b _0204F004 ; case 5
	b _0204F024 ; case 6
	b _0204F024 ; case 7
	b _0204F024 ; case 8
	b _0204F024 ; case 9
	b _0204F00C ; case 10
	b _0204F00C ; case 11
	b _0204F00C ; case 12
	b _0204F014 ; case 13
	b _0204F014 ; case 14
	b _0204F00C ; case 15
_0204EFE8:
	cmp r1, #0x47
	bgt _0204EFF8
	beq _0204F01C
	b _0204F024
_0204EFF8:
	cmp r1, #0x48
	beq _0204F01C
	b _0204F024
_0204F004:
	mov r0, #1
	bx lr
_0204F00C:
	mov r0, #1
	bx lr
_0204F014:
	mov r0, #1
	bx lr
_0204F01C:
	mov r0, #1
	bx lr
_0204F024:
	mov r0, #0
	bx lr
	arm_func_end FUN_0204ef90

	arm_func_start FUN_0204f02c
FUN_0204f02c: ; 0x0204F02C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	movs r6, r1
	mov r7, r0
	mov r4, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r2, #0x84
	bgt _0204F1E8
	bge _0204F718
	cmp r2, #0x81
	bgt _0204F1CC
	bge _0204F64C
	cmp r2, #0x51
	bgt _0204F1C0
	cmp r2, #0
	addge pc, pc, r2, lsl #2
	b _0204F7B0
_0204F078: ; jump table
	b _0204F22C ; case 0
	b _0204F238 ; case 1
	b _0204F248 ; case 2
	b _0204F258 ; case 3
	b _0204F268 ; case 4
	b _0204F27C ; case 5
	b _0204F7B0 ; case 6
	b _0204F7B0 ; case 7
	b _0204F7B0 ; case 8
	b _0204F7B0 ; case 9
	b _0204F288 ; case 10
	b _0204F294 ; case 11
	b _0204F2A4 ; case 12
	b _0204F408 ; case 13
	b _0204F3E4 ; case 14
	b _0204F2B4 ; case 15
	b _0204F2C4 ; case 16
	b _0204F7B0 ; case 17
	b _0204F7B0 ; case 18
	b _0204F7B0 ; case 19
	b _0204F2D0 ; case 20
	b _0204F2E0 ; case 21
	b _0204F2F0 ; case 22
	b _0204F300 ; case 23
	b _0204F7B0 ; case 24
	b _0204F7B0 ; case 25
	b _0204F7B0 ; case 26
	b _0204F7B0 ; case 27
	b _0204F7B0 ; case 28
	b _0204F7B0 ; case 29
	b _0204F310 ; case 30
	b _0204F320 ; case 31
	b _0204F330 ; case 32
	b _0204F340 ; case 33
	b _0204F350 ; case 34
	b _0204F360 ; case 35
	b _0204F370 ; case 36
	b _0204F380 ; case 37
	b _0204F390 ; case 38
	b _0204F39C ; case 39
	b _0204F3A8 ; case 40
	b _0204F3B4 ; case 41
	b _0204F3C0 ; case 42
	b _0204F3CC ; case 43
	b _0204F3D8 ; case 44
	b _0204F7B0 ; case 45
	b _0204F7B0 ; case 46
	b _0204F7B0 ; case 47
	b _0204F7B0 ; case 48
	b _0204F7B0 ; case 49
	b _0204F7B0 ; case 50
	b _0204F7B0 ; case 51
	b _0204F7B0 ; case 52
	b _0204F7B0 ; case 53
	b _0204F7B0 ; case 54
	b _0204F7B0 ; case 55
	b _0204F7B0 ; case 56
	b _0204F7B0 ; case 57
	b _0204F7B0 ; case 58
	b _0204F7B0 ; case 59
	b _0204F7B0 ; case 60
	b _0204F7B0 ; case 61
	b _0204F7B0 ; case 62
	b _0204F7B0 ; case 63
	b _0204F7B0 ; case 64
	b _0204F7B0 ; case 65
	b _0204F7B0 ; case 66
	b _0204F7B0 ; case 67
	b _0204F7B0 ; case 68
	b _0204F7B0 ; case 69
	b _0204F580 ; case 70
	b _0204F594 ; case 71
	b _0204F5A4 ; case 72
	b _0204F7B0 ; case 73
	b _0204F7B0 ; case 74
	b _0204F7B0 ; case 75
	b _0204F7B0 ; case 76
	b _0204F7B0 ; case 77
	b _0204F7B0 ; case 78
	b _0204F7B0 ; case 79
	b _0204F44C ; case 80
	b _0204F458 ; case 81
_0204F1C0:
	cmp r2, #0x80
	beq _0204F5B4
	b _0204F7B0
_0204F1CC:
	cmp r2, #0x82
	bgt _0204F1DC
	beq _0204F6EC
	b _0204F7B0
_0204F1DC:
	cmp r2, #0x83
	beq _0204F6F8
	b _0204F7B0
_0204F1E8:
	cmp r2, #0x87
	bgt _0204F210
	bge _0204F778
	cmp r2, #0x85
	bgt _0204F204
	beq _0204F738
	b _0204F7B0
_0204F204:
	cmp r2, #0x86
	beq _0204F758
	b _0204F7B0
_0204F210:
	cmp r2, #0xa0
	bgt _0204F220
	beq _0204F4F4
	b _0204F7B0
_0204F220:
	cmp r2, #0xa1
	beq _0204F508
	b _0204F7B0
_0204F22C:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F238:
	mov r0, r6
	bl FUN_0206cc00
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F248:
	mov r0, r6
	bl FUN_0206cbf8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F258:
	mov r0, r6
	bl FUN_0206d5d4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F268:
	mov r0, r6
	bl FUN_0206dcd4
	add sp, sp, #0xc
	ldrb r0, [r0, #0x4b]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F27C:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x4d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F288:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F294:
	mov r0, r6
	bl FUN_0206cd70
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2A4:
	mov r0, r6
	bl FUN_0206cd7c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2B4:
	mov r0, r6
	bl FUN_0206cd88
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2C4:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x5a]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2D0:
	mov r0, r6
	bl FUN_0206ccdc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2E0:
	mov r0, r6
	bl FUN_0206ccec
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2F0:
	mov r0, r6
	bl FUN_0206cc84
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F300:
	mov r0, r6
	bl FUN_0206cc94
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F310:
	mov r0, r6
	bl FUN_0206cd50
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F320:
	mov r0, r6
	bl FUN_0206cd10
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F330:
	mov r0, r6
	bl FUN_0206cd00
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F340:
	mov r0, r6
	bl FUN_0206cd40
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F350:
	mov r0, r6
	bl FUN_0206cd60
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F360:
	mov r0, r6
	bl FUN_0206cd20
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F370:
	mov r0, r6
	bl FUN_0206cd30
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F380:
	mov r0, r6
	bl FUN_0206cc34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F390:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7b]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F39C:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3A8:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7e]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3B4:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3C0:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7f]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3CC:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x81]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3D8:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x80]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3E4:
	cmp r3, #6
	addhs sp, sp, #0xc
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r3
	bl FUN_0206cdf8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F408:
	mov r0, r6
	mov r1, r3
	bl FUN_0206cdf8
	movs r4, r0
	beq _0204F440
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl FUN_0204a0b4
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F440:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F44C:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F458:
	add r1, sp, #0
	mov r2, r3
	bl FUN_0204a1e0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [sp, #2]
	cmp r0, #1
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r1, [sp]
	mov r0, r7
	bl FUN_02049a40
	mov r5, r0
	add r7, sp, #4
	b _0204F4E0
_0204F4A0:
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r4, lsl #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	beq _0204F4D0
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r4, lsl #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _0204F4DC
_0204F4D0:
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F4DC:
	add r4, r4, #1
_0204F4E0:
	cmp r4, r5
	blt _0204F4A0
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F4F4:
	ldr r1, [r6, #0x84]
	ldr r2, _0204F7BC ; =0x0209A2C0
	bl FUN_0207237c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F508:
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r5, [r1, #4]
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_020723c4
	subs r0, r5, r0
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r5, [r1, #4]
	bpl _0204F560
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_020723c4
	sub r0, r5, r0
	add sp, sp, #0xc
	rsb r0, r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F560:
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_020723c4
	add sp, sp, #0xc
	sub r0, r5, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F580:
	mov r0, r6
	mov r1, r4
	bl FUN_0206d824
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F594:
	mov r0, r6
	bl FUN_0206d8b8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F5A4:
	mov r0, r6
	bl FUN_0206d8a8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F5B4:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xc
	add r1, r1, #0x400
	add r8, r1, r0, lsl #5
	mov r0, r6
	bl FUN_0206cbf8
	mov r5, r0
	mov r0, r6
	bl FUN_0206cc00
	mov r4, r0
	mov r0, r8
	mov r1, r5
	bl FUN_0204fca0
	cmp r0, #0
	mov r0, r8
	mov r1, r5
	subne r4, r4, #0x10000
	bl FUN_0204fd20
	cmp r0, #0
	ble _0204F61C
	mov r0, r8
	mov r1, r5
	bl FUN_0204fd20
	cmp r0, #0xb
	suble r4, r4, #0x20000
_0204F61C:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xcc
	add r2, r1, #0x400
	mov r1, r5
	add r0, r2, r0, lsl #4
	bl FUN_020502a8
	cmp r0, #0
	subne r4, r4, #0x40000
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F64C:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xc
	add r1, r1, #0x400
	add r8, r1, r0, lsl #5
	mov r0, r6
	bl FUN_0206cbf8
	mov r5, r0
	ldrsh r4, [r6, #0x94]
	mov r0, r8
	mov r1, r5
	bl FUN_0204fca0
	cmp r0, #0
	addeq sp, sp, #0xc
	addeq r0, r4, #0x70000000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl FUN_0204fd20
	cmp r0, #0
	bne _0204F6BC
	mov r0, r8
	mov r1, r5
	bl FUN_0204fd20
	cmp r0, #0xb
	addgt sp, sp, #0xc
	addgt r0, r4, #0x60000000
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F6BC:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xcc
	add r2, r1, #0x400
	mov r1, r5
	add r0, r2, r0, lsl #4
	bl FUN_020502a8
	cmp r0, #0
	subne r4, r4, #0x40000
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F6EC:
	add sp, sp, #0xc
	ldrsh r0, [r6, #0x94]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F6F8:
	mov r0, r6
	mov r1, r4
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F718:
	mov r0, r6
	mov r1, #1
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F738:
	mov r0, r6
	mov r1, #2
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F758:
	mov r0, r6
	mov r1, #3
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F778:
	mvn r5, #0xc0000000
	mov r0, r5
	bl FUN_ov16_020ef8d4
	mov r4, r0
	mov r0, r6
	bl FUN_0206cc00
	add r1, r7, #0x800
	ldrh r1, [r1, #0x76]
	add sp, sp, #0xc
	and r1, r1, r5, lsr #18
	cmp r1, r0
	addeq r4, r4, #0x40000000
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F7B0:
	mov r0, #0x80000000
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F7BC: .word unk_0209A2C0
	arm_func_end FUN_0204f02c

	arm_func_start FUN_0204f7c0
FUN_0204f7c0: ; 0x0204F7C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r2
	mov r8, r3
	mov r6, #0
	bl FUN_0205107c
	ldr r11, _0204F880 ; =gLogicThink
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204F7E8:
	mov r0, r7
	mov r1, r4
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204F854
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	mov r0, r7
	mov r1, r4
	beq _0204F828
	bl FUN_0204fbe8
	mov r1, r0
	ldr r0, _0204F884 ; =0x0209A0AC
	bl FUN_0206c718
	b _0204F834
_0204F828:
	bl FUN_0204fbe8
	mov r1, #0
	bl FUN_ov16_020efa9c
_0204F834:
	movs r1, r0
	beq _0204F854
	mov r0, r10
	mov r2, r9
	mov r3, r8
	bl FUN_0204f02c
	add r6, r6, r0
	add r5, r5, #1
_0204F854:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0204F7E8
	cmp r5, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r5, r5, lsr #31
	mov r1, r5
	add r0, r6, r0, asr #1
	bl _s32_div_f
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204F880: .word gLogicThink
_0204F884: .word unk_0209A0AC
	arm_func_end FUN_0204f7c0

	arm_func_start FUN_0204f888
FUN_0204f888: ; 0x0204F888
	stmfd sp!, {r3, lr}
	ldr lr, _0204FB14 ; =0x020A0640
	mov r3, r2
	cmp r1, #0x2b
	mov r12, #0
	addls pc, pc, r1, lsl #2
	b _0204FB0C
_0204F8A4: ; jump table
	b _0204F954 ; case 0
	b _0204F95C ; case 1
	b _0204F96C ; case 2
	b _0204F97C ; case 3
	b _0204F98C ; case 4
	b _0204F99C ; case 5
	b _0204F9AC ; case 6
	b _0204F9BC ; case 7
	b _0204FB0C ; case 8
	b _0204FB0C ; case 9
	b _0204FB0C ; case 10
	b _0204FB0C ; case 11
	b _0204FB0C ; case 12
	b _0204FB0C ; case 13
	b _0204FB0C ; case 14
	b _0204FB0C ; case 15
	b _0204FB0C ; case 16
	b _0204FB0C ; case 17
	b _0204FB0C ; case 18
	b _0204FB0C ; case 19
	b _0204F9CC ; case 20
	b _0204F9D4 ; case 21
	b _0204FB0C ; case 22
	b _0204FB0C ; case 23
	b _0204FB0C ; case 24
	b _0204F9DC ; case 25
	b _0204F9E8 ; case 26
	b _0204FB0C ; case 27
	b _0204FB0C ; case 28
	b _0204FB0C ; case 29
	b _0204F9F4 ; case 30
	b _0204F9FC ; case 31
	b _0204FA04 ; case 32
	b _0204FA0C ; case 33
	b _0204FA14 ; case 34
	b _0204FA4C ; case 35
	b _0204FA84 ; case 36
	b _0204FB0C ; case 37
	b _0204FB0C ; case 38
	b _0204FB0C ; case 39
	b _0204FABC ; case 40
	b _0204FAC4 ; case 41
	b _0204FAD0 ; case 42
	b _0204FAE4 ; case 43
_0204F954:
	mov r0, r12
	ldmfd sp!, {r3, pc}
_0204F95C:
	mov r1, r12
	mov r2, #0x22
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F96C:
	mov r1, r12
	mov r2, #0x23
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F97C:
	mov r1, r12
	mov r2, #0x21
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F98C:
	mov r1, r12
	mov r2, #0x20
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F99C:
	mov r1, r12
	mov r2, #0x24
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F9AC:
	mov r1, r12
	mov r2, #0x1e
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F9BC:
	mov r1, r12
	mov r2, #0x1f
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F9CC:
	ldr r0, [lr, #0x4d4]
	ldmfd sp!, {r3, pc}
_0204F9D4:
	ldr r0, [lr, #0x4d8]
	ldmfd sp!, {r3, pc}
_0204F9DC:
	mov r1, r12
	bl FUN_0207371c
	ldmfd sp!, {r3, pc}
_0204F9E8:
	mov r1, #1
	bl FUN_0207371c
	ldmfd sp!, {r3, pc}
_0204F9F4:
	ldr r0, [lr, #0x550]
	ldmfd sp!, {r3, pc}
_0204F9FC:
	ldr r0, [lr, #0x554]
	ldmfd sp!, {r3, pc}
_0204FA04:
	ldr r0, [lr, #0x558]
	ldmfd sp!, {r3, pc}
_0204FA0C:
	ldr r0, [lr, #0x55c]
	ldmfd sp!, {r3, pc}
_0204FA14:
	ldr r0, [lr, #0x550]
	ldr lr, [lr, #0x55c]
	adds r2, r0, lr
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	mov r3, #0x64
	umull r0, r1, lr, r3
	mla r1, lr, r12, r1
	mov r12, lr, asr #0x1f
	mla r1, r12, r3, r1
	mov r3, r2, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FA4C:
	ldr r2, [lr, #0x550]
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	ldr lr, [lr, #0x554]
	mov r3, #0x64
	umull r0, r1, lr, r3
	mla r1, lr, r12, r1
	mov r12, lr, asr #0x1f
	mla r1, r12, r3, r1
	mov r3, r2, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FA84:
	ldr r2, [lr, #0x550]
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	ldr lr, [lr, #0x558]
	mov r3, #0x64
	umull r0, r1, lr, r3
	mla r1, lr, r12, r1
	mov r12, lr, asr #0x1f
	mla r1, r12, r3, r1
	mov r3, r2, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FABC:
	ldrb r0, [lr, #0x50b]
	ldmfd sp!, {r3, pc}
_0204FAC4:
	ldr r0, _0204FB18 ; =0x020A0B40
	ldrh r0, [r0, #0x4e]
	ldmfd sp!, {r3, pc}
_0204FAD0:
	ldr r2, [lr, #0x4dc]
	ldr r0, _0204FB1C ; =0x91A2B3C5
	umull r1, r0, r2, r0
	mov r0, r0, lsr #0xb
	ldmfd sp!, {r3, pc}
_0204FAE4:
	ldr r2, [lr, #0x550]
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	ldr r0, [lr, #0x560]
	mov r3, r2, asr #0x1f
	mov r1, r0, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FB0C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204FB14: .word unk_020A0640
_0204FB18: .word unk_020A0B40
_0204FB1C: .word 0x91A2B3C5
	arm_func_end FUN_0204f888

	arm_func_start FUN_0204fb20
FUN_0204fb20: ; 0x0204FB20
	ldr r2, [r0, #0x820]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldr r0, _0204FB54 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrsh r1, [r1, #0x94]
	mov r0, #0x44
	smlabb r0, r1, r0, r2
	bx lr
_0204FB54: .word unk_02099EF0
	arm_func_end FUN_0204fb20

	arm_func_start FUN_0204fb58
FUN_0204fb58: ; 0x0204FB58
	ldr r0, [r0, #0x820]
	bx lr
	arm_func_end FUN_0204fb58

	arm_func_start FUN_0204fb60
FUN_0204fb60: ; 0x0204FB60
	ldrb r0, [r0, #0x5d]
	mov r0, r0, asr #5
	bx lr
	arm_func_end FUN_0204fb60

	arm_func_start FUN_0204fb6c
FUN_0204fb6c: ; 0x0204FB6C
	ldrb r0, [r0, #0x5d]
	and r0, r0, #0x1f
	bx lr
	arm_func_end FUN_0204fb6c

	arm_func_start FUN_0204fb78
FUN_0204fb78: ; 0x0204FB78
	ldr r12, _0204FB88 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r12
_0204FB88: .word MI_CpuFill8
	arm_func_end FUN_0204fb78

	arm_func_start FUN_0204fb8c
FUN_0204fb8c: ; 0x0204FB8C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldmltfd sp!, {r4, pc}
	cmp r1, #0x10
	ldmgefd sp!, {r4, pc}
	ldr r3, _0204FBE4 ; =0x00000FFF
	tst r2, r3
	moveq r2, #0
	cmp r2, #0
	beq _0204FBD8
	mov r4, #0
	mov r3, r4
_0204FBBC:
	mov lr, r4, lsl #1
	ldrh r12, [r0, lr]
	add r4, r4, #1
	cmp r2, r12
	streqh r3, [r0, lr]
	cmp r4, #0x10
	blt _0204FBBC
_0204FBD8:
	mov r1, r1, lsl #1
	strh r2, [r0, r1]
	ldmfd sp!, {r4, pc}
_0204FBE4: .word 0x00000FFF
	arm_func_end FUN_0204fb8c

	arm_func_start FUN_0204fbe8
FUN_0204fbe8: ; 0x0204FBE8
	cmp r1, #0x10
	movhs r0, #0
	movlo r1, r1, lsl #1
	ldrloh r0, [r0, r1]
	bx lr
	arm_func_end FUN_0204fbe8

	arm_func_start FUN_0204fbfc
FUN_0204fbfc: ; 0x0204FBFC
	cmp r1, #0x10
	movhs r0, #0
	bxhs lr
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, _0204FC24 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0204FC24: .word 0x00000FFF
	arm_func_end FUN_0204fbfc

	arm_func_start FUN_0204fc28
FUN_0204fc28: ; 0x0204FC28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub r4, r1, #1
	mov r7, r0
	mov r1, r4
	sub r5, r2, #1
	bl FUN_0204fbe8
	mov r6, r0
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	mov r2, r0
	cmp r4, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	cmpeq r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	bl FUN_0204fb8c
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_0204fb8c
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fc28

	arm_func_start FUN_0204fca0
FUN_0204fca0: ; 0x0204FCA0
	mov r3, #0
_0204FCA4:
	mov r2, r3, lsl #1
	ldrh r2, [r0, r2]
	cmp r2, #0
	beq _0204FCC0
	cmp r1, r2
	moveq r0, #1
	bxeq lr
_0204FCC0:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FCA4
	mov r0, #0
	bx lr
	arm_func_end FUN_0204fca0

	arm_func_start FUN_0204fcd4
FUN_0204fcd4: ; 0x0204FCD4
	ldr r2, _0204FD1C ; =0x00000FFF
	mov r3, #0
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
_0204FCE8:
	mov r1, r3, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _0204FD08
	and r1, r1, r2
	cmp r12, r1
	moveq r0, #1
	bxeq lr
_0204FD08:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FCE8
	mov r0, #0
	bx lr
_0204FD1C: .word 0x00000FFF
	arm_func_end FUN_0204fcd4

	arm_func_start FUN_0204fd20
FUN_0204fd20: ; 0x0204FD20
	ldr r2, _0204FD64 ; =0x00000FFF
	mov r3, #0
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
_0204FD34:
	mov r1, r3, lsl #1
	ldrh r1, [r0, r1]
	ands r1, r1, r2
	beq _0204FD50
	cmp r12, r1
	addeq r0, r3, #1
	bxeq lr
_0204FD50:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FD34
	mov r0, #0
	bx lr
_0204FD64: .word 0x00000FFF
	arm_func_end FUN_0204fd20

	arm_func_start FUN_0204fd68
FUN_0204fd68: ; 0x0204FD68
	ldr r2, _0204FDA0 ; =0x00000FFF
	mov r12, #0
_0204FD70:
	mov r3, r12, lsl #1
	ldrh r3, [r0, r3]
	tst r3, r2
	beq _0204FD8C
	cmp r1, r3
	addeq r0, r12, #1
	bxeq lr
_0204FD8C:
	add r12, r12, #1
	cmp r12, #0x10
	blt _0204FD70
	mov r0, #0
	bx lr
_0204FDA0: .word 0x00000FFF
	arm_func_end FUN_0204fd68

	arm_func_start FUN_0204fda4
FUN_0204fda4: ; 0x0204FDA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
_0204FDB4:
	mov r0, r5, lsl #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0204FDD8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r5, lsl #1
	streqh r4, [r6, r0]
_0204FDD8:
	mov r0, r5, lsl #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	addeq r0, r5, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #0x10
	blt _0204FDB4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204fda4

	arm_func_start FUN_0204fe00
FUN_0204fe00: ; 0x0204FE00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204FE14:
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r6, #1
	add r5, r5, #1
	andne r6, r0, #0xff
	cmp r5, #0xb
	blt _0204FE14
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fe00

	arm_func_start FUN_0204fe48
FUN_0204fe48: ; 0x0204FE48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204FE5C:
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r6, #1
	add r5, r5, #1
	andne r6, r0, #0xff
	cmp r5, #0x10
	blt _0204FE5C
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fe48

	arm_func_start FUN_0204fe90
FUN_0204fe90: ; 0x0204FE90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204FEA4:
	mov r0, r7
	mov r1, r5
	bl FUN_02050244
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r6, #1
	add r5, r5, #1
	andne r6, r0, #0xff
	cmp r5, #4
	blt _0204FEA4
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fe90

	arm_func_start FUN_0204fed8
FUN_0204fed8: ; 0x0204FED8
	mov r3, #0
_0204FEDC:
	add r2, r0, r3
	ldrb r2, [r2, #0xa]
	cmp r1, r2
	moveq r1, r3, lsl #1
	ldreqh r0, [r0, r1]
	bxeq lr
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FEDC
	mov r0, #0
	bx lr
	arm_func_end FUN_0204fed8

	arm_func_start FUN_0204ff08
FUN_0204ff08: ; 0x0204FF08
	stmdb sp!, {r3}
	sub sp, sp, #4
	mov r3, #0
	add r1, sp, #0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	mov r2, r3
_0204FF2C:
	mov r1, r3, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	addeq r1, r0, r3
	add r3, r3, #1
	streqb r2, [r1, #0xa]
	cmp r3, #4
	blt _0204FF2C
	mov r12, #0
	mov r3, #1
	add r2, sp, #0
_0204FF58:
	add r1, r0, r12
	ldrb r1, [r1, #0xa]
	add r12, r12, #1
	cmp r1, #0
	addne r1, r2, r1
	strneb r3, [r1, #-1]
	cmp r12, #4
	blt _0204FF58
	mov r2, #0
	add r1, sp, #0
_0204FF80:
	ldrb r0, [r1, r2]
	cmp r0, #0
	addeq sp, sp, #4
	addeq r0, r2, #1
	ldmeqia sp!, {r3}
	bxeq lr
	add r2, r2, #1
	cmp r2, #4
	blt _0204FF80
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
	arm_func_end FUN_0204ff08

	arm_func_start FUN_0204ffb4
FUN_0204ffb4: ; 0x0204FFB4
	cmp r1, #0
	ble _0204FFC4
	cmp r1, #5
	blt _0204FFCC
_0204FFC4:
	mov r0, #0
	bx lr
_0204FFCC:
	mov r3, #0
_0204FFD0:
	add r2, r0, r3
	ldrb r2, [r2, #0xa]
	cmp r1, r2
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	cmp r3, #4
	blt _0204FFD0
	mov r0, #1
	bx lr
	arm_func_end FUN_0204ffb4

	arm_func_start FUN_0204fff8
FUN_0204fff8: ; 0x0204FFF8
	ldr r2, _02050034 ; =0x00000FFF
	tst r1, r2
	subeq r0, r2, #0x1000
	bxeq lr
	mov r3, #0
_0205000C:
	mov r2, r3, lsl #1
	ldrh r2, [r0, r2]
	cmp r1, r2
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
	cmp r3, #4
	blt _0205000C
	mvn r0, #0
	bx lr
_02050034: .word 0x00000FFF
	arm_func_end FUN_0204fff8

	arm_func_start FUN_02050038
FUN_02050038: ; 0x02050038
	mov r2, #0
_0205003C:
	mov r1, r2, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	cmp r2, #4
	blt _0205003C
	mvn r0, #0
	bx lr
	arm_func_end FUN_02050038

	arm_func_start FUN_02050064
FUN_02050064: ; 0x02050064
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mvn r4, #0
	mov r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r4
	mov r1, #0
_02050080:
	add r0, r8, r1
	ldrb r0, [r0, #0xa]
	cmp r7, r0
	moveq r4, r1
	add r1, r1, #1
	cmp r1, #4
	blt _02050080
	mov r1, #0
_020500A0:
	add r0, r8, r1
	ldrb r0, [r0, #0xa]
	cmp r6, r0
	moveq r5, r1
	add r1, r1, #1
	cmp r1, #4
	blt _020500A0
	mvn r0, #0
	cmp r4, r0
	bne _020500F4
	cmp r5, r0
	beq _020500F4
	mov r0, r8
	mov r1, r5
	bl FUN_02050244
	mov r2, r0
	mov r0, r8
	mov r1, r5
	mov r3, r7
_020500EC:
	bl FUN_020501bc
	b _0205013C
_020500F4:
	mvn r0, #0
	cmp r4, r0
	beq _02050128
	cmp r5, r0
	bne _02050128
	mov r0, r8
	mov r1, r4
	bl FUN_02050244
	mov r2, r0
	mov r0, r8
	mov r1, r4
	mov r3, r6
	b _020500EC
_02050128:
	add r2, r8, #0xa
	ldrb r1, [r2, r4]
	ldrb r0, [r2, r5]
	strb r0, [r2, r4]
	strb r1, [r2, r5]
_0205013C:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02050064

	arm_func_start FUN_02050144
FUN_02050144: ; 0x02050144
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	ldmmifd sp!, {r4, r5, r6, pc}
	cmp r5, #4
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r1, r5, lsl #1
	ldrh r1, [r6, r1]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	bl FUN_0204ffb4
	cmp r0, #0
	add r0, r6, r5
	strneb r4, [r0, #0xa]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #0xa]
	mov r0, r6
	mov r2, r4
	bl FUN_02050064
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02050144

	arm_func_start FUN_0205019c
FUN_0205019c: ; 0x0205019C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204fff8
	cmp r0, #0
	movlt r0, #0
	addge r0, r4, r0
	ldrgeb r0, [r0, #0xa]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205019c

	arm_func_start FUN_020501bc
FUN_020501bc: ; 0x020501BC
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	ldmmifd sp!, {r4, r5, r6, pc}
	cmp r5, #4
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, _02050240 ; =0x00000FFF
	mov r2, #0
	tst r4, r0
	moveq r4, #0
_020501E8:
	mov r1, r2, lsl #1
	ldrh r0, [r6, r1]
	cmp r4, r0
	moveq r0, #0
	streqh r0, [r6, r1]
	beq _0205020C
	add r2, r2, #1
	cmp r2, #4
	blt _020501E8
_0205020C:
	cmp r3, #0
	bne _0205022C
	mov r0, r6
	mov r1, r5, lsl #1
	mov r2, #0
	strh r2, [r6, r1]
	bl FUN_0204ff08
	mov r3, r0
_0205022C:
	mov r0, r5, lsl #1
	strh r4, [r6, r0]
	add r0, r6, r5
	strb r3, [r0, #0xa]
	ldmfd sp!, {r4, r5, r6, pc}
_02050240: .word 0x00000FFF
	arm_func_end FUN_020501bc

	arm_func_start FUN_02050244
FUN_02050244: ; 0x02050244
	cmp r1, #4
	movhs r0, #0
	movlo r1, r1, lsl #1
	ldrloh r0, [r0, r1]
	bx lr
	arm_func_end FUN_02050244

	arm_func_start FUN_02050258
FUN_02050258: ; 0x02050258
	cmp r1, #4
	movhs r0, #0
	bxhs lr
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, _02050280 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_02050280: .word 0x00000FFF
	arm_func_end FUN_02050258

	arm_func_start FUN_02050284
FUN_02050284: ; 0x02050284
	ldrh r0, [r0, #8]
	bx lr
	arm_func_end FUN_02050284

	arm_func_start FUN_0205028c
FUN_0205028c: ; 0x0205028C
	ldrh r1, [r0, #8]
	ldr r0, _020502A4 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_020502A4: .word 0x00000FFF
	arm_func_end FUN_0205028c

	arm_func_start FUN_020502a8
FUN_020502a8: ; 0x020502A8
	mov r3, #0
_020502AC:
	mov r2, r3, lsl #1
	ldrh r2, [r0, r2]
	cmp r2, #0
	beq _020502C8
	cmp r1, r2
	moveq r0, #1
	bxeq lr
_020502C8:
	add r3, r3, #1
	cmp r3, #4
	blt _020502AC
	mov r0, #0
	bx lr
	arm_func_end FUN_020502a8

	arm_func_start FUN_020502dc
FUN_020502dc: ; 0x020502DC
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x20
	bl FUN_0206d3c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020502dc

	arm_func_start FUN_02050300
FUN_02050300: ; 0x02050300
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x20
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050300

	arm_func_start FUN_02050324
FUN_02050324: ; 0x02050324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_0206d4b4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x40
	bl FUN_0206d3c8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_0204d2a4
	mov r0, r7
	mov r1, r6
	bl FUN_0204d6a8
	mov r0, r7
	mov r2, r6
	mov r1, r5
	bl FUN_0204d354
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_0206d9cc
	mov r1, r5
	mov r0, r7
	bl FUN_0204d0b4
	mov r0, r7
	mov r1, #2
	bl FUN_0204d0b4
	mov r0, r7
	bl FUN_0204ce50
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02050324

	arm_func_start FUN_020503c0
FUN_020503c0: ; 0x020503C0
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x40
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020503c0

	arm_func_start FUN_020503e4
FUN_020503e4: ; 0x020503E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl FUN_0205107c
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_0204fca0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_0206d4a4
	cmp r0, #0
	beq _02050444
	mov r0, r5
	mov r1, #0x400
	bl FUN_0206d3fc
_02050444:
	mov r0, r5
	bl FUN_0206d484
	cmp r0, #0
	beq _02050460
	mov r0, r5
	mov r1, #0x100
	bl FUN_0206d3fc
_02050460:
	mov r0, r5
	mov r1, #0x80
	bl FUN_0206d3c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020503e4

	arm_func_start FUN_02050470
FUN_02050470: ; 0x02050470
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x80
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050470

	arm_func_start FUN_02050494
FUN_02050494: ; 0x02050494
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d474
	cmp r0, #0
	beq _020504C4
	mov r0, r4
	mov r1, #0x80
	bl FUN_0206d3fc
_020504C4:
	mov r0, r4
	mov r1, #0x100
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02050494

	arm_func_start FUN_020504d4
FUN_020504d4: ; 0x020504D4
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x100
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020504d4

	arm_func_start FUN_020504f8
FUN_020504f8: ; 0x020504F8
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d484
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x200
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020504f8

	arm_func_start FUN_0205052c
FUN_0205052c: ; 0x0205052C
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x200
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205052c

	arm_func_start FUN_02050550
FUN_02050550: ; 0x02050550
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d484
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02050550

	arm_func_start FUN_02050584
FUN_02050584: ; 0x02050584
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050584

	arm_func_start FUN_020505a8
FUN_020505a8: ; 0x020505A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl FUN_0205106c
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_020502a8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_0206d474
	cmp r0, #0
	beq _02050608
	mov r0, r5
	mov r1, #0x80
	bl FUN_0206d3fc
_02050608:
	mov r0, r5
	mov r1, #0x400
	bl FUN_0206d3c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020505a8

	arm_func_start FUN_02050618
FUN_02050618: ; 0x02050618
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x400
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050618

	arm_func_start FUN_0205063c
FUN_0205063c: ; 0x0205063C
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d4a4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x800
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205063c

	arm_func_start FUN_02050670
FUN_02050670: ; 0x02050670
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x800
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050670

	arm_func_start FUN_02050694
FUN_02050694: ; 0x02050694
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x1000
	bl FUN_0206d3c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050694

	arm_func_start FUN_020506b8
FUN_020506b8: ; 0x020506B8
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x1000
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020506b8

	arm_func_start FUN_020506dc
FUN_020506dc: ; 0x020506DC
	cmp r1, #0
	ble _020506EC
	cmp r1, #0x63
	ble _020506F4
_020506EC:
	mov r0, #0
	bx lr
_020506F4:
	cmp r1, #1
	moveq r0, #0
	subne r1, r1, #2
	ldrne r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end FUN_020506dc

	arm_func_start FUN_02050708
FUN_02050708: ; 0x02050708
	cmp r1, #0
	ble _02050718
	cmp r1, #0x63
	ble _02050720
_02050718:
	mov r0, #0
	bx lr
_02050720:
	sub r1, r1, #1
	ldrb r0, [r0, r1]
	bx lr
	arm_func_end FUN_02050708

	arm_func_start FUN_0205072c
FUN_0205072c: ; 0x0205072C
	ldr r12, _0205073C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x148
	bx r12
_0205073C: .word MI_CpuFill8
	arm_func_end FUN_0205072c

	arm_func_start FUN_02050740
FUN_02050740: ; 0x02050740
	and r2, r1, #7
	mov r3, #1
	cmp r1, #0
	mov r2, r3, lsl r2
	bxlt lr
	cmp r1, #0xa40
	ldrlsb r3, [r0, r1, asr #3]
	andls r2, r2, #0xff
	orrls r2, r3, r2
	strlsb r2, [r0, r1, asr #3]
	bx lr
	arm_func_end FUN_02050740

	arm_func_start FUN_0205076c
FUN_0205076c: ; 0x0205076C
	and r2, r1, #7
	mov r3, #1
	cmp r1, #0
	mov r2, r3, lsl r2
	bxlt lr
	cmp r1, #0xa40
	eorls r2, r2, #0xff
	ldrlsb r3, [r0, r1, asr #3]
	andls r2, r2, #0xff
	andls r2, r3, r2
	strlsb r2, [r0, r1, asr #3]
	bx lr
	arm_func_end FUN_0205076c

	arm_func_start FUN_0205079c
FUN_0205079c: ; 0x0205079C
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _020507B4
	cmp r1, #0xa40
	bls _020507BC
_020507B4:
	mov r0, #0
	bx lr
_020507BC:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_0205079c

	arm_func_start FUN_020507d0
FUN_020507d0: ; 0x020507D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r1, lsl #0x10
	ldr r0, _0205081C ; =gLogicThink
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	and r1, r0, #7
	mov r2, #1
	cmp r0, #0
	mov r2, r2, lsl r1
	ldmltfd sp!, {r4, pc}
	cmp r0, #0xa40
	ldmhifd sp!, {r4, pc}
	ldrb r1, [r4, r0, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	orreq r1, r1, r2
	streqb r1, [r4, r0, asr #3]
	ldmfd sp!, {r4, pc}
_0205081C: .word gLogicThink
	arm_func_end FUN_020507d0

	arm_func_start FUN_02050820
FUN_02050820: ; 0x02050820
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _02050838
	cmp r1, #0xa40
	bls _02050840
_02050838:
	mov r0, #0
	bx lr
_02050840:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_02050820

	arm_func_start FUN_02050854
FUN_02050854: ; 0x02050854
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x68
	mov r6, r1
	mov r1, r6, lsl #0x10
	ldr r5, _020508F4 ; =gLogicThink
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	cmp r0, #0
	and r1, r0, #7
	mov r4, #1
	addlt sp, sp, #0x68
	mov r2, r4, lsl r1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, r0, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	orr r2, r1, r2
	strb r2, [r7, r0, asr #3]
	mov r1, r6, lsl #0x10
	add r2, sp, #0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r0, [sp, #0x4d]
	cmp r0, #1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020508F8 ; =0x020A0EF8
	mov r1, r6
	mov r2, r4
	bl FUN_02050a0c
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020508F4: .word gLogicThink
_020508F8: .word unk_020A0EF8
	arm_func_end FUN_02050854

	arm_func_start FUN_020508fc
FUN_020508fc: ; 0x020508FC
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _02050914
	cmp r1, #0xa40
	bls _0205091C
_02050914:
	mov r0, #0
	bx lr
_0205091C:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_020508fc

	arm_func_start FUN_02050930
FUN_02050930: ; 0x02050930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x68
	mov r6, r1
	mov r1, r6, lsl #0x10
	ldr r5, _020509D0 ; =gLogicThink
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	cmp r0, #0
	and r1, r0, #7
	mov r4, #1
	addlt sp, sp, #0x68
	mov r2, r4, lsl r1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, r0, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	orr r2, r1, r2
	strb r2, [r7, r0, asr #3]
	mov r1, r6, lsl #0x10
	add r2, sp, #0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r0, [sp, #0x4d]
	cmp r0, #1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020509D4 ; =0x020A0EF8
	mov r1, r6
	mov r2, r4
	bl FUN_02050a0c
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020509D0: .word gLogicThink
_020509D4: .word unk_020A0EF8
	arm_func_end FUN_02050930

	arm_func_start FUN_020509d8
FUN_020509d8: ; 0x020509D8
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _020509F0
	cmp r1, #0xa40
	bls _020509F8
_020509F0:
	mov r0, #0
	bx lr
_020509F8:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_020509d8

	arm_func_start FUN_02050a0c
FUN_02050a0c: ; 0x02050A0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x68
	mov r9, r1
	mov r1, r9, lsl #0x10
	ldr r6, _02050B14 ; =gLogicThink
	mov r10, r0
	mov r0, r6
	mov r1, r1, lsr #0x10
	mov r8, r2
	bl FUN_0204bc4c
	movs r5, r0
	and r0, r5, #7
	mov r1, #1
	mov r7, r1, lsl r0
	addmi sp, sp, #0x68
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r10, r5, asr #3]
	and r1, r7, #0xff
	ldr r4, _02050B18 ; =0x020A108A
	tst r1, r0
	addne sp, sp, #0x68
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r9, lsl #0x10
	add r2, sp, #0
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r0, [sp, #0x4d]
	mov r1, r9, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r0, #1
	mov r0, r6
	bne _02050AE4
	bl FUN_0204ec70
	cmp r0, #0
	beq _02050AFC
	add r1, sp, #0x1c
	mov r0, r6
	bl FUN_02073a1c
	and r6, r0, #0xff
	mov r0, r4
	mov r1, r5
	bl FUN_020509d8
	cmp r0, #0
	bne _02050AD4
	cmp r8, #0
	beq _02050AFC
_02050AD4:
	mov r0, r10
	mov r1, r6
	bl FUN_02050c10
	b _02050AFC
_02050AE4:
	bl FUN_0204ec70
	cmp r0, #0
	beq _02050AFC
	ldrb r1, [sp, #0x4d]
	mov r0, r10
	bl FUN_02050c30
_02050AFC:
	ldrb r1, [r10, r5, asr #3]
	and r0, r7, #0xff
	orr r0, r1, r0
	strb r0, [r10, r5, asr #3]
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02050B14: .word gLogicThink
_02050B18: .word unk_020A108A
	arm_func_end FUN_02050a0c

	arm_func_start FUN_02050b1c
FUN_02050b1c: ; 0x02050B1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x68
	mov r7, r1
	mov r1, r7, lsl #0x10
	ldr r5, _02050BD8 ; =gLogicThink
	mov r8, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	movs r4, r0
	and r0, r4, #7
	mov r1, #1
	mov r6, r1, lsl r0
	addmi sp, sp, #0x68
	ldmmifd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r8, r4, asr #3]
	and r1, r6, #0xff
	tst r1, r0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7, lsl #0x10
	add r2, sp, #0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r1, [sp, #0x4d]
	cmp r1, #1
	bne _02050BB4
	add r1, sp, #0x1c
	mov r0, r5
	bl FUN_02073a1c
	and r1, r0, #0xff
	mov r0, r8
	bl FUN_02050c54
	b _02050BBC
_02050BB4:
	mov r0, r8
	bl FUN_02050c74
_02050BBC:
	ldrb r1, [r8, r4, asr #3]
	eor r0, r6, #0xff
	and r0, r0, #0xff
	and r0, r1, r0
	strb r0, [r8, r4, asr #3]
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02050BD8: .word gLogicThink
	arm_func_end FUN_02050b1c

	arm_func_start FUN_02050bdc
FUN_02050bdc: ; 0x02050BDC
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _02050BF4
	cmp r1, #0xa40
	bls _02050BFC
_02050BF4:
	mov r0, #0
	bx lr
_02050BFC:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_02050bdc

	arm_func_start FUN_02050c10
FUN_02050c10: ; 0x02050C10
	add r2, r0, #0x148
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	bxhs lr
	cmp r1, #0xa
	addle r0, r0, #1
	strleb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c10

	arm_func_start FUN_02050c30
FUN_02050c30: ; 0x02050C30
	add r0, r0, #0x52
	add r2, r0, #0x100
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	bxhs lr
	cmp r1, #0x40
	addlt r0, r0, #1
	strltb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c30

	arm_func_start FUN_02050c54
FUN_02050c54: ; 0x02050C54
	add r2, r0, #0x148
	ldrb r0, [r2, r1]
	cmp r0, #0
	bxeq lr
	cmp r1, #0xa
	suble r0, r0, #1
	strleb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c54

	arm_func_start FUN_02050c74
FUN_02050c74: ; 0x02050C74
	add r0, r0, #0x52
	add r2, r0, #0x100
	ldrb r0, [r2, r1]
	cmp r0, #0
	cmpne r1, #0x40
	sublt r0, r0, #1
	strltb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c74

	arm_func_start FUN_02050c94
FUN_02050c94: ; 0x02050C94
	add r3, r0, #8
	ldrb r0, [r3, r1]
	adds r0, r2, r0
	movmi r0, #0
	cmp r0, #0xff
	movgt r0, #0xff
	strb r0, [r3, r1]
	bx lr
	arm_func_end FUN_02050c94

	arm_func_start FUN_02050cb4
FUN_02050cb4: ; 0x02050CB4
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldrh r12, [lr, #4]
	ldrh r3, [lr, #6]
	add r0, lr, #0xf
	add r1, lr, #8
	mov r2, #7
	strh r12, [lr]
	strh r3, [lr, #2]
	bl MI_CpuCopy8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050cb4

	arm_func_start FUN_02050ce0
FUN_02050ce0: ; 0x02050CE0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	ldrh r2, [r5]
	ldrh r1, [r4]
	ldr r0, _02050DA8 ; =0x000003E7
	add r1, r2, r1
	strh r1, [r5]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	cmp r1, r0
	strhih r0, [r5]
	ldrh r1, [r4, #2]
	ldr r0, _02050DA8 ; =0x000003E7
	add r1, r2, r1
	strh r1, [r5, #2]
	ldrh r1, [r5, #2]
	cmp r1, r0
	strhih r0, [r5, #2]
	ldrsb r2, [r4, #4]
	mov r0, r5
	mov r1, #0
	bl FUN_02050c94
	mov r6, #1
	ldrsb r2, [r4, #5]
	mov r0, r5
	mov r1, r6
	bl FUN_02050c94
	ldrsb r2, [r4, #6]
	mov r0, r5
	mov r1, #3
	bl FUN_02050c94
	ldrsb r2, [r4, #7]
	mov r0, r5
	mov r1, #2
	bl FUN_02050c94
	ldrsb r2, [r4, #8]
	mov r0, r5
	mov r1, #4
	bl FUN_02050c94
	ldrsb r2, [r4, #9]
	mov r0, r5
	mov r1, #6
	bl FUN_02050c94
	ldrsb r2, [r4, #0xa]
	mov r0, r5
	mov r1, #5
	bl FUN_02050c94
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_02050DA8: .word 0x000003E7
	arm_func_end FUN_02050ce0

	arm_func_start FUN_02050dac
FUN_02050dac: ; 0x02050DAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r0, #0x4c
	mla r1, r9, r0, r10
	mov r4, r2
	add r0, r4, #0x394
	add r5, r0, #0x400
	add r3, r1, #0x24
	mov r2, #0x10
_02050DD4:
	ldrh r0, [r5, #2]
	ldrh r1, [r5], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02050DD4
	mov r0, #0x4c
	mla r0, r9, r0, r10
	add r1, r4, #0x700
	ldrh r3, [r1, #0xd4]
	ldrb r2, [r4, #0x7d6]
	ldrb r5, [r4, #0x7d7]
	strh r3, [r0, #0x64]
	strb r2, [r0, #0x66]
	strb r5, [r0, #0x67]
	ldrh r3, [r1, #0xd8]
	add r2, r10, r9, lsl #5
	ldrh r5, [r1, #0xda]
	strh r3, [r0, #0x68]
	ldrh r3, [r1, #0xdc]
	strh r5, [r0, #0x6a]
	ldrh r1, [r1, #0xde]
	strh r3, [r0, #0x6c]
	add r2, r2, #0xc
	add r3, r2, #0x400
	add r5, r4, #0x7e0
	strh r1, [r0, #0x6e]
	mov r2, #8
_02050E44:
	ldrh r0, [r5, #2]
	ldrh r1, [r5], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02050E44
	ldrh r2, [r4, #0xd2]
	add r0, r10, #0xc
	add r3, r0, #0x400
	ldr r0, _02050F44 ; =0x020A06BC
	mov r1, r9, lsl #1
	strh r2, [r0, r1]
	cmp r9, #1
	add r5, r3, r9, lsl #5
	bne _02050EC0
	mov r6, #0
	b _02050EB8
_02050E88:
	mov r0, r5
	mov r1, r6
	bl FUN_0204fbe8
	cmp r0, #0
	beq _02050EB4
	orr r0, r0, #0x8000
	mov r2, r0, lsl #0x10
	mov r0, r5
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_0204fb8c
_02050EB4:
	add r6, r6, #1
_02050EB8:
	cmp r6, #0x10
	blt _02050E88
_02050EC0:
	mov r8, #0
	add r7, r4, #0xd4
	mov r11, #0x40
	mov r6, r8
	ldr r4, _02050F48 ; =0x0209A11C
	b _02050F38
_02050ED8:
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, r6
	str r6, [sp]
	bl FUN_02071c20
	ldr r0, [r4]
	mov r1, r8
	bl FUN_0206c6fc
	movs r5, r0
	beq _02050F30
	mov r1, r9
	bl FUN_0206d600
	mov r0, r5
	mov r1, r9
	bl FUN_0206cc1c
	mov r0, r5
	mov r1, r11
	bl FUN_0206d620
	mov r0, r5
	mov r1, #0x20
	bl FUN_0206d634
_02050F30:
	add r8, r8, #1
	add r7, r7, #0x6c
_02050F38:
	cmp r8, #0x10
	blt _02050ED8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02050F44: .word unk_020A06BC
_02050F48: .word unk_0209A11C
	arm_func_end FUN_02050dac

	arm_func_start FUN_02050f4c
FUN_02050f4c: ; 0x02050F4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r2
	mov r7, #0x2000
	cmp r9, #2
	mov r10, r1
	mov r6, #0
	moveq r7, #0x4000
	beq _02050F74
	cmp r9, #3
	moveq r7, #0x8000
_02050F74:
	ldr r4, _02051068 ; =gLogicThink
	mov r8, #0
	mov r11, #2
_02050F80:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _02051058
	bl FUN_0206d64c
	cmp r0, #0
	beq _02051058
	mov r0, r5
	bl FUN_0206d5f0
	cmp r10, r0
	bne _02051058
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r7, r0
	beq _02051058
	cmp r6, #0
	bne _02051040
	cmp r9, #1
	bne _02050FF0
	mov r0, r5
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r4
	mov r1, r10
	bl FUN_0204c6f0
	cmp r0, #0
	beq _02051040
_02050FF0:
	cmp r9, #2
	bne _02051018
	mov r0, r5
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r4
	mov r1, r10
	bl FUN_0204c680
	cmp r0, #0
	beq _02051040
_02051018:
	cmp r9, #3
	bne _02051054
	mov r0, r5
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r4
	mov r1, r11
	bl FUN_0204c6f0
	cmp r0, #0
	bne _02051054
_02051040:
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r7
	bl FUN_0206e20c
	b _02051058
_02051054:
	mov r6, #1
_02051058:
	add r8, r8, #1
	cmp r8, #0x64
	blt _02050F80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02051068: .word gLogicThink
	arm_func_end FUN_02050f4c

	arm_func_start FUN_0205106c
FUN_0205106c: ; 0x0205106C
	add r0, r0, #0xcc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end FUN_0205106c

	arm_func_start FUN_0205107c
FUN_0205107c: ; 0x0205107C
	add r0, r0, #0xc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_0205107c

	arm_func_start FUN_0205108c
FUN_0205108c: ; 0x0205108C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _020510E0 ; =0x0209057C
	mov r4, #0
	mov r0, r4
	add r1, r5, #8
	mov r2, #4
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x10
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0x1c
	mov r2, #0x28
	bl MIi_CpuClearFast
	mov r0, r5
	strb r4, [r5, #0x44]
	strb r4, [r5, #0x45]
	ldmfd sp!, {r3, r4, r5, pc}
_020510E0: .word unk_0209057C
	arm_func_end FUN_0205108c

	arm_func_start FUN_020510e4
FUN_020510e4: ; 0x020510E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _02051140 ; =0x0209057C
	mov r4, #0
	mov r0, r4
	add r1, r5, #8
	mov r2, #4
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x10
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0x1c
	mov r2, #0x28
	bl MIi_CpuClearFast
	mov r0, r5
	strb r4, [r5, #0x44]
	strb r4, [r5, #0x45]
	bl _ZdlPv
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02051140: .word unk_0209057C
	arm_func_end FUN_020510e4

	arm_func_start FUN_02051144
FUN_02051144: ; 0x02051144
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x64
	mov r4, #0
	mov r5, r0
	ldr r12, _02051298 ; =0x04000060
	strb r4, [r5, #4]
	ldrh r3, [r12]
	ldr r2, _0205129C ; =0x0000CFFB
	mov r1, r4
	and r2, r3, r2
	strh r2, [r12]
	ldrh r6, [r12]
	mov r2, r4
	mov r3, r4
	bic r6, r6, #0x3000
	orr r6, r6, #8
	strh r6, [r12]
	bl FUN_020512a8
	mov r6, #1
	mov r0, r5
	mov r1, r6
	bl FUN_0205131c
	mov r0, r5
	mov r1, r4
	bl FUN_0205135c
	mov r0, r5
	mov r1, r6
	bl FUN_020512dc
	add r6, sp, #0x44
_020511B8:
	mov r2, r4, lsl #4
	add r0, r2, #4
	add r1, r2, #8
	orr r0, r2, r0, lsl #8
	add r2, r2, #0xc
	orr r0, r0, r1, lsl #16
	orr r0, r0, r2, lsl #24
	str r0, [r6, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #8
	blt _020511B8
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_02051384
	mov r0, r5
	mov r1, #1
	mov r2, #2
	mov r3, #0x5800
	bl FUN_020513a8
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_020513ec
	mov r0, r5
	mov r1, r6
	bl FUN_02051408
	add r0, sp, #4
_02051228:
	orr r1, r4, r4, lsl #5
	orr r2, r1, r4, lsl #10
	mov r1, r4, lsl #1
	add r4, r4, #1
	strh r2, [r0, r1]
	cmp r4, #0x20
	blt _02051228
	ldr r3, _02051298 ; =0x04000060
	ldr r1, _020512A0 ; =0xFFFFCFFD
	ldrh r2, [r3]
	and r1, r2, r1
	orr r1, r1, #2
	strh r1, [r3]
	bl G3X_SetToonTable
	ldr r3, _020512A4 ; =0xBFFF0000
	mov r4, #1
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x60
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r0, #8
	bl FUN_ov16_020ef624
	mov r0, #0
	bl NNS_G3dGeUseFastDma
	mov r0, r4
	add sp, sp, #0x64
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02051298: .word 0x04000060
_0205129C: .word 0x0000CFFB
_020512A0: .word 0xFFFFCFFD
_020512A4: .word 0xBFFF0000
	arm_func_end FUN_02051144

	arm_func_start FUN_020512a8
FUN_020512a8: ; 0x020512A8
	stmfd sp!, {r3, lr}
	mov r12, r0
	strb r2, [r12, #0xa]
	strh r1, [r12, #8]
	strb r3, [r12, #0xb]
	str r3, [sp]
	ldrh r0, [r12, #8]
	ldrb r1, [r12, #0xa]
	ldr r2, _020512D8 ; =0x00007FFF
	mov r3, #0x3f
	bl G3X_SetClearColor
	ldmfd sp!, {r3, pc}
_020512D8: .word 0x00007FFF
	arm_func_end FUN_020512a8

	arm_func_start FUN_020512dc
FUN_020512dc: ; 0x020512DC
	cmp r1, #0
	ldreq r2, _02051314 ; =0x04000060
	strb r1, [r0, #0x44]
	ldreqh r1, [r2]
	ldreq r0, _02051318 ; =0x0000CFEF
	andeq r0, r1, r0
	streqh r0, [r2]
	bxeq lr
	ldr r1, _02051314 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x3000
	orr r0, r0, #0x10
	strh r0, [r1]
	bx lr
_02051314: .word 0x04000060
_02051318: .word 0x0000CFEF
	arm_func_end FUN_020512dc

	arm_func_start FUN_0205131c
FUN_0205131c: ; 0x0205131C
	cmp r1, #0
	ldreq r2, _02051354 ; =0x04000060
	strb r1, [r0, #0x45]
	ldreqh r1, [r2]
	ldreq r0, _02051358 ; =0x0000CFDF
	andeq r0, r1, r0
	streqh r0, [r2]
	bxeq lr
	ldr r1, _02051354 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x3000
	orr r0, r0, #0x20
	strh r0, [r1]
	bx lr
_02051354: .word 0x04000060
_02051358: .word 0x0000CFDF
	arm_func_end FUN_0205131c

	arm_func_start FUN_0205135c
FUN_0205135c: ; 0x0205135C
	mov r3, #0
_02051360:
	add r2, r0, r3, lsl #1
	add r3, r3, #1
	strh r1, [r2, #0xc]
	cmp r3, #8
	blt _02051360
	ldr r12, _02051380 ; =G3X_SetEdgeColorTable
	add r0, r0, #0xc
	bx r12
_02051380: .word G3X_SetEdgeColorTable
	arm_func_end FUN_0205135c

	arm_func_start FUN_02051384
FUN_02051384: ; 0x02051384
	mov r3, r0
	strb r1, [r3, #0x1f]
	and r0, r1, #0xff
	ldrb r1, [r3, #0x20]
	ldrb r2, [r3, #0x21]
	ldrh r3, [r3, #0x22]
	ldr r12, _020513A4 ; =G3X_SetFog
	bx r12
_020513A4: .word G3X_SetFog
	arm_func_end FUN_02051384

	arm_func_start FUN_020513a8
FUN_020513a8: ; 0x020513A8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	movne r1, #0
	moveq r1, #1
	strb r1, [r0, #0x20]
	ldr r1, _020513E8 ; =0x00007FFF
	strb r2, [r0, #0x21]
	cmp r3, r1
	movhi r3, r1
	ldrb r1, [r0, #0x1f]
	strh r3, [r0, #0x22]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	bl FUN_02051384
	ldmfd sp!, {r3, pc}
_020513E8: .word 0x00007FFF
	arm_func_end FUN_020513a8

	arm_func_start FUN_020513ec
FUN_020513ec: ; 0x020513EC
	ldr r3, _02051404 ; =0x04000358
	strh r1, [r0, #0x1c]
	strb r2, [r0, #0x1e]
	orr r0, r1, r2, lsl #16
	str r0, [r3]
	bx lr
_02051404: .word 0x04000358
	arm_func_end FUN_020513ec

	arm_func_start FUN_02051408
FUN_02051408: ; 0x02051408
	stmfd sp!, {r4, lr}
	movs r4, r1
	mov r1, r0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	add r1, r1, #0x24
	mov r2, #0x20
	bl MIi_CpuCopyFast
	mov r0, r4
	bl G3X_SetFogTable
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051408

	arm_func_start FUN_02051434
FUN_02051434: ; 0x02051434
	stmfd sp!, {r3, lr}
	bl G3X_ClearFifo
	bl G3X_Reset
	bl G3X_ResetMtxStack
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02051434

	arm_func_start FUN_02051448
FUN_02051448: ; 0x02051448
	stmfd sp!, {r3, lr}
	ldr r0, _020514E0 ; =GXi_DmaId
	ldr r0, [r0]
	cmp r0, #3
	mvnhi r0, #0
	bl MI_WaitDma
	ldr r1, _020514E4 ; =0x04000060
	mov r3, #0
	ldrh r0, [r1]
	mov r2, r3
	tst r0, #0x1000
	ldrneh r0, [r1]
	orrne r0, r0, #0x1000
	strneh r0, [r1]
	ldr r1, _020514E4 ; =0x04000060
	ldrh r0, [r1]
	tst r0, #0x2000
	ldrneh r0, [r1]
	orrne r0, r0, #0x2000
	strneh r0, [r1]
	ldr r1, _020514E8 ; =0x04000600
	ldr r0, [r1]
	tst r0, #0x4000
	ldreq r0, [r1]
	subne r3, r3, #1
	andeq r2, r0, #0x8000
	cmp r3, #0
	bne _020514CC
	cmp r2, #0
	ldrne r1, _020514E8 ; =0x04000600
	ldrne r0, [r1]
	orrne r0, r0, #0x8000
	strne r0, [r1]
_020514CC:
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020514EC ; =0x04000540
	mov r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, pc}
_020514E0: .word GXi_DmaId
_020514E4: .word 0x04000060
_020514E8: .word 0x04000600
_020514EC: .word 0x04000540
	arm_func_end FUN_02051448

	arm_func_start FUN_020514f0
FUN_020514f0: ; 0x020514F0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	bl GX_GetSizeOfTex
	mov r5, r0
	bl GX_GetSizeOfTexPltt
	mov r6, r0
	cmp r5, #0
	beq _0205153C
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4]
	ldr r3, [r4, #0x24]
	mov r0, r5
	mov r1, #0
	bl NNS_GfdInitLnkTexVramManager
	ldr r0, [r4, #0x2c]
	orr r0, r0, #1
	str r0, [r4, #0x2c]
_0205153C:
	cmp r6, #0
	beq _02051564
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	mov r0, r6
	mov r3, #1
	bl NNS_GfdInitLnkPlttVramManager
	ldr r0, [r4, #0x2c]
	orr r0, r0, #2
	str r0, [r4, #0x2c]
_02051564:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_020514f0

	arm_func_start FUN_02051570
FUN_02051570: ; 0x02051570
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, r3
	ldr r12, [sp, #0xc]
	ldr r3, [sp, #8]
	str r12, [sp]
	bl FUN_02040f14
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02051570

	arm_func_start FUN_0205159c
FUN_0205159c: ; 0x0205159C
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, r3
	ldr r12, [sp, #0xc]
	ldr r3, [sp, #8]
	str r12, [sp]
	bl FUN_02041074
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205159c

	arm_func_start FUN_020515c8
FUN_020515c8: ; 0x020515C8
	mov r3, #8
	mov r12, r3, lsl r0
	mov r0, r3, lsl r1
	mul r0, r12, r0
	cmp r2, #7
	addls pc, pc, r2, lsl #2
	b _02051624
_020515E4: ; jump table
	b _02051624 ; case 0
	bx lr ; case 1
	b _02051604 ; case 2
	b _02051610 ; case 3
	bx lr ; case 4
	b _02051624 ; case 5
	bx lr ; case 6
	b _0205161C ; case 7
_02051604:
	add r0, r0, #3
	mov r0, r0, asr #2
	bx lr
_02051610:
	add r0, r0, #1
	mov r0, r0, asr #1
	bx lr
_0205161C:
	mov r0, r0, lsl #1
	bx lr
_02051624:
	mov r0, #0
	bx lr
	arm_func_end FUN_020515c8

	arm_func_start FUN_0205162c
FUN_0205162c: ; 0x0205162C
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02051688
_02051638: ; jump table
	b _02051688 ; case 0
	b _02051658 ; case 1
	b _02051660 ; case 2
	b _02051668 ; case 3
	b _02051670 ; case 4
	b _02051688 ; case 5
	b _02051678 ; case 6
	b _02051680 ; case 7
_02051658:
	mov r0, #0
	bx lr
_02051660:
	mov r0, #0x20
	bx lr
_02051668:
	mov r0, #0x20
	bx lr
_02051670:
	mov r0, #0x200
	bx lr
_02051678:
	mov r0, #0
	bx lr
_02051680:
	mov r0, #0
	bx lr
_02051688:
	mov r0, #0
	bx lr
	arm_func_end FUN_0205162c

	arm_func_start FUN_02051690
FUN_02051690: ; 0x02051690
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, #0
	mov r4, r1
	add r0, r8, #8
	mov r7, r2
	mov r6, r3
	str r5, [r8]
	str r5, [r8, #4]
	str r5, [r8, #0x20]
	str r5, [r8, #0x24]
	str r5, [r8, #0x28]
	str r5, [r8, #0x2c]
	str r5, [r8, #0x30]
	str r5, [r8, #0x34]
	bl OS_InitMutex
	cmp r4, #0
	cmpgt r7, #0
	str r5, [r8, #0x38]
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	mov r1, r0
	ldr r4, _02051774 ; =gL5Allocator
	str r1, [r8, #0x24]
	mov r0, r4
	bl _ZN11L5Allocator8allocateEm
	str r0, [r8]
	mov r0, r7
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	mov r1, r0
	mov r0, r4
	str r1, [r8, #0x28]
	bl _ZN11L5Allocator8allocateEm
	ldr r1, [r8]
	str r0, [r8, #4]
	cmp r1, #0
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r8, #0x24]
	mov r0, r5
	bl MIi_CpuClearFast
	ldr r1, [r8, #4]
	ldr r2, [r8, #0x28]
	mov r0, r5
	bl MIi_CpuClearFast
	mov r0, r8
	bl FUN_020514f0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_02040ea0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02051774: .word gL5Allocator
	arm_func_end FUN_02051690

	arm_func_start FUN_02051778
FUN_02051778: ; 0x02051778
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	tst r0, #1
	beq _02051790
	bl NNS_GfdResetLnkTexVramState
_02051790:
	ldr r0, [r4, #0x2c]
	tst r0, #2
	beq _020517A0
	bl NNS_GfdResetLnkPlttVramState
_020517A0:
	mov r0, r4
	bl FUN_020514f0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051778

	arm_func_start FUN_020517ac
FUN_020517ac: ; 0x020517AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r1
	bl FUN_02051858
	cmp r5, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	mov r4, #0
	bic r5, r0, #0x1f
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl NNS_GfdAllocLnkTexVram
	cmp r0, #0
	moveq r0, r4
	strne r0, [r6, #4]
	movne r0, #1
	strne r5, [r6]
	strneb r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020517ac

	arm_func_start FUN_02051800
FUN_02051800: ; 0x02051800
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r1
	bl FUN_02051858
	cmp r5, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	mov r4, #0
	bic r5, r0, #0x1f
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl NNS_GfdAllocLnkPlttVram
	cmp r0, #0
	moveq r0, r4
	movne r1, #2
	strne r0, [r6, #4]
	strne r5, [r6]
	strneb r1, [r6, #8]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02051800

	arm_func_start FUN_02051858
FUN_02051858: ; 0x02051858
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02051890
	ldrb r1, [r4, #8]
	cmp r1, #1
	beq _02051884
	cmp r1, #2
	beq _0205188C
	ldmfd sp!, {r4, pc}
_02051884:
	bl NNS_GfdFreeLnkTexVram
	b _02051890
_0205188C:
	bl NNS_GfdFreeLnkPlttVram
_02051890:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051858

	arm_func_start FUN_020518a8
FUN_020518a8: ; 0x020518A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x20]
	mov r6, r0
	add r4, r4, #3
	ldrb r0, [r1, #8]
	ldr lr, [r1]
	bic r4, r4, #3
	cmp lr, r4
	movlt r4, lr
	mov r5, r3
	ldr r12, [sp, #0x2c]
	cmp r0, #1
	beq _020518EC
	cmp r0, #2
	beq _0205195C
	b _020519CC
_020518EC:
	ldr r1, [r1, #4]
	ldr r0, [sp, #0x24]
	mov r1, r1, lsl #0x10
	cmp r0, #0
	add r7, r2, r1, lsr #13
	beq _02051934
	cmp r12, #0
	movne r0, #0
	strneb r0, [r12]
	mov r0, r6
	bl FUN_02051c7c
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTex
	mov r0, r6
	bl FUN_02051ca8
	b _020519D8
_02051934:
	ldr r1, [sp, #0x28]
	mov r0, r6
	str r1, [sp]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r12, [sp, #4]
	bl FUN_02051570
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205195C:
	ldr r1, [r1, #4]
	ldr r0, [sp, #0x24]
	mov r1, r1, lsl #0x10
	cmp r0, #0
	add r7, r2, r1, lsr #13
	beq _020519A4
	cmp r12, #0
	movne r0, #0
	strneb r0, [r12]
	mov r0, r6
	bl FUN_02051cdc
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTexPltt
	mov r0, r6
	bl FUN_02051d08
	b _020519D8
_020519A4:
	ldr r1, [sp, #0x28]
	mov r0, r6
	str r1, [sp]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r12, [sp, #4]
	bl FUN_0205159c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020519CC:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020519D8:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020518a8

	arm_func_start FUN_020519e4
FUN_020519e4: ; 0x020519E4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r12, [sp, #0x10]
	ldr r4, [r1]
	add r12, r12, #3
	bic r12, r12, #3
	cmp r4, r12
	movlt r12, r4
	ldrb r4, [r1, #8]
	cmp r4, #1
	beq _02051A1C
	cmp r4, #2
	beq _02051A48
	b _02051A70
_02051A1C:
	ldr r1, [r1, #4]
	ldr lr, [sp, #0x14]
	mov r1, r1, lsl #0x10
	add r1, r2, r1, lsr #13
	ldr r4, [sp, #0x18]
	str lr, [sp]
	mov r2, r12
	str r4, [sp, #4]
	bl FUN_02051570
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02051A48:
	ldr r1, [r1, #4]
	ldr r4, [sp, #0x14]
	mov r1, r1, lsl #0x10
	ldr lr, [sp, #0x18]
	add r1, r2, r1, lsr #13
	mov r2, r12
	stmia sp, {r4, lr}
	bl FUN_0205159c
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02051A70:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020519e4

	arm_func_start FUN_02051a7c
FUN_02051a7c: ; 0x02051A7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	mov r6, r0
	add r4, r4, #3
	ldrb r0, [r1, #8]
	ldr r12, [r1]
	bic r4, r4, #3
	cmp r12, r4
	movlt r4, r12
	mov r5, r3
	cmp r0, #1
	beq _02051AB8
	cmp r0, #2
	beq _02051AE8
	b _02051B18
_02051AB8:
	ldr r1, [r1, #4]
	mov r0, r6
	mov r1, r1, lsl #0x10
	add r7, r2, r1, lsr #13
	bl FUN_02051c7c
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTex
	mov r0, r6
	bl FUN_02051ca8
	b _02051B20
_02051AE8:
	ldr r1, [r1, #4]
	mov r0, r6
	mov r1, r1, lsl #0x10
	add r7, r2, r1, lsr #13
	bl FUN_02051cdc
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTexPltt
	mov r0, r6
	bl FUN_02051d08
	b _02051B20
_02051B18:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02051B20:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02051a7c

	arm_func_start FUN_02051b28
FUN_02051b28: ; 0x02051B28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl OS_LockMutex
	mov r0, r4
	bl NNS_G3dResDefaultSetup
	mov r4, r0
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051b28

	arm_func_start FUN_02051b58
FUN_02051b58: ; 0x02051B58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl OS_LockMutex
	mov r0, r4
	bl NNS_G3dResDefaultRelease
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051b58

	arm_func_start FUN_02051b84
FUN_02051b84: ; 0x02051B84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl OS_LockMutex
	mov r0, r5
	mov r1, r4
	bl FUN_02051e70
	mov r4, r0
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051b84

	arm_func_start FUN_02051bb8
FUN_02051bb8: ; 0x02051BB8
	ldr r3, [r1, #4]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #8]
	cmp r0, #1
	beq _02051BE0
	cmp r0, #2
	beq _02051BF4
	b _02051C08
_02051BE0:
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r2]
	mov r0, #1
	bx lr
_02051BF4:
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r2]
	mov r0, #1
	bx lr
_02051C08:
	mov r0, #0
	bx lr
	arm_func_end FUN_02051bb8

	arm_func_start FUN_02051c10
FUN_02051c10: ; 0x02051C10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl GX_GetBankForTex
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02051C74 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc1
	bgt _02051C3C
	mov r0, #0x188
	bl OS_SpinWaitSysCycles
_02051C3C:
	ldr r0, _02051C78 ; =0x04000600
	ldr r0, [r0]
	tst r0, #0x8000000
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	str r0, [r4, #0x38]
	bl FUN_020413b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_020411d4
	ldmfd sp!, {r4, pc}
_02051C74: .word 0x04000006
_02051C78: .word 0x04000600
	arm_func_end FUN_02051c10

	arm_func_start FUN_02051c7c
FUN_02051c7c: ; 0x02051C7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl OS_LockMutex
	ldr r1, [r4, #0x30]
	add r0, r1, #1
	str r0, [r4, #0x30]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	bl GX_BeginLoadTex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051c7c

	arm_func_start FUN_02051ca8
FUN_02051ca8: ; 0x02051CA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ble _02051CD0
	sub r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0
	bgt _02051CD0
	bl GX_EndLoadTex
_02051CD0:
	add r0, r4, #8
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051ca8

	arm_func_start FUN_02051cdc
FUN_02051cdc: ; 0x02051CDC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl OS_LockMutex
	ldr r1, [r4, #0x34]
	add r0, r1, #1
	str r0, [r4, #0x34]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	bl GX_BeginLoadTexPltt
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051cdc

	arm_func_start FUN_02051d08
FUN_02051d08: ; 0x02051D08
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	ble _02051D30
	sub r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #0
	bgt _02051D30
	bl GX_EndLoadTexPltt
_02051D30:
	add r0, r4, #8
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051d08

	arm_func_start FUN_02051d3c
FUN_02051d3c: ; 0x02051D3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #9]
	mov r5, r0
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #8
	bl OS_LockMutex
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02051DB4
	ldrb r1, [r4, #8]
	cmp r1, #1
	beq _02051D84
	cmp r1, #2
	beq _02051D8C
	b _02051D94
_02051D84:
	bl NNS_GfdFreeLnkTexVram
	b _02051DA4
_02051D8C:
	bl NNS_GfdFreeLnkPlttVram
	b _02051DA4
_02051D94:
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02051DA4:
	mov r1, #0
	mov r0, #1
	str r1, [r4, #4]
	strb r0, [r4, #9]
_02051DB4:
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051d3c

	arm_func_start FUN_02051dc4
FUN_02051dc4: ; 0x02051DC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #9]
	mov r5, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #8
	bl OS_LockMutex
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _02051E00
	cmp r0, #2
	beq _02051E14
	b _02051E28
_02051E00:
	ldr r2, [r4]
	mov r0, r5
	mov r1, r4
	bl FUN_020517ac
	b _02051E38
_02051E14:
	ldr r2, [r4]
	mov r0, r5
	mov r1, r4
	bl FUN_02051800
	b _02051E38
_02051E28:
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02051E38:
	mov r1, #0
	add r0, r5, #8
	strb r1, [r4, #9]
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051dc4

	arm_func_start FUN_02051e50
FUN_02051e50: ; 0x02051E50
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl OS_LockMutex
	bl FUN_0204142c
	add r0, r4, #8
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051e50

	arm_func_start FUN_02051e70
FUN_02051e70: ; 0x02051E70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	ldr r2, [r4]
	ldr r1, _02052088 ; =0x30415642
	mov r11, r0
	cmp r2, r1
	bhi _02051EC0
	bhs _02052078
	sub r0, r1, #0x900
	cmp r2, r0
	bhi _02051EB0
	bhs _02052078
	sub r0, r1, #0x1300
	cmp r2, r0
	beq _02052078
	b _02052080
_02051EB0:
	sub r0, r1, #0x200
	cmp r2, r0
	beq _02052078
	b _02052080
_02051EC0:
	ldr r0, _0205208C ; =0x30505442
	cmp r2, r0
	bhi _02051EE0
	bhs _02052078
	ldr r0, _02052090 ; =0x30444D42
	cmp r2, r0
	beq _02051EEC
	b _02052080
_02051EE0:
	add r0, r0, #0x80000
	cmp r2, r0
	bne _02052080
_02051EEC:
	mov r0, #1
	str r0, [sp]
	ldr r9, [sp]
	mov r0, r4
	mov r10, r9
	bl NNS_G3dGetTex
	movs r6, r0
	beq _02052048
	bl NNS_G3dTexGetRequiredSize
	mov r5, r0
	mov r0, r6
	bl NNS_G3dTex4x4GetRequiredSize
	mov r7, r0
	mov r0, r6
	bl NNS_G3dPlttGetRequiredSize
	mov r8, r0
	cmp r5, #0
	beq _02051F5C
	ldr r0, _02052094 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r1, #0
	ldr r3, [r0]
	mov r0, r5
	mov r2, r1
	blx r3
	movs r5, r0
	moveq r0, #0
	streq r0, [sp]
	b _02051F60
_02051F5C:
	mov r5, #0
_02051F60:
	cmp r7, #0
	beq _02051F8C
	ldr r0, _02052094 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r2, #0
	ldr r3, [r0]
	mov r0, r7
	mov r1, #1
	blx r3
	movs r7, r0
	moveq r9, #0
	b _02051F90
_02051F8C:
	mov r7, #0
_02051F90:
	cmp r8, #0
	beq _02051FC0
	ldrh r1, [r6, #0x20]
	ldr r0, _02052098 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r2, #0
	ldr r3, [r0]
	mov r0, r8
	and r1, r1, #0x8000
	blx r3
	movs r8, r0
	moveq r10, #0
	b _02051FC4
_02051FC0:
	mov r8, #0
_02051FC4:
	ldr r0, [sp]
	cmp r0, #0
	cmpne r9, #0
	cmpne r10, #0
	bne _0205200C
	ldr r1, _0205209C ; =NNS_GfdDefaultFuncFreePlttVram
	mov r0, r8
	ldr r1, [r1]
	blx r1
	ldr r4, _020520A0 ; =NNS_GfdDefaultFuncFreeTexVram
	mov r0, r7
	ldr r1, [r4]
	blx r1
	ldr r1, [r4]
	mov r0, r5
	blx r1
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205200C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl NNS_G3dTexSetTexKey
	mov r0, r6
	mov r1, r8
	bl NNS_G3dPlttSetPlttKey
	mov r0, r11
	mov r1, r6
	mov r2, #1
	bl FUN_020520a4
	mov r0, r11
	mov r1, r6
	mov r2, #1
	bl FUN_020520f8
_02052048:
	ldr r1, [r4]
	ldr r0, _02052090 ; =0x30444D42
	cmp r1, r0
	bne _02052070
	mov r0, r4
	bl NNS_G3dGetMdlSet
	cmp r6, #0
	beq _02052070
	mov r1, r6
	bl NNS_G3dBindMdlSet
_02052070:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052078:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052080:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052088: .word 0x30415642
_0205208C: .word 0x30505442
_02052090: .word 0x30444D42
_02052094: .word NNS_GfdDefaultFuncAllocTexVram
_02052098: .word NNS_GfdDefaultFuncAllocPlttVram
_0205209C: .word NNS_GfdDefaultFuncFreePlttVram
_020520A0: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end FUN_02051e70

	arm_func_start FUN_020520a4
FUN_020520a4: ; 0x020520A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	ldrh r1, [r4, #0xc]
	movs r2, r1, lsl #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	add r3, r4, r3
	bl FUN_02051570
	ldrh r0, [r4, #0x10]
	orr r0, r0, #1
	strh r0, [r4, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020520a4

	arm_func_start FUN_020520f8
FUN_020520f8: ; 0x020520F8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	mov r4, r1
	str r2, [sp, #4]
	ldr r1, [r4, #0x2c]
	ldrh r2, [r4, #0x30]
	ldr r3, [r4, #0x38]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	mov r2, r2, lsl #3
	add r3, r4, r3
	bl FUN_0205159c
	ldrh r0, [r4, #0x32]
	orr r0, r0, #1
	strh r0, [r4, #0x32]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020520f8

	arm_func_start FUN_02052144
FUN_02052144: ; 0x02052144
	ldr r2, _02052164 ; =0x020905D4
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
_02052164: .word unk_020905D4
	arm_func_end FUN_02052144

	arm_func_start FUN_02052168
FUN_02052168: ; 0x02052168
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r4, r1, r2
	mov r5, r0
	str r1, [r5, #4]
	ldr r0, _0205219C ; =gL5Allocator
	mov r1, r4
	bl _ZN11L5Allocator8allocateEm
	mov r2, r4
	mov r1, #0
	str r0, [r5, #8]
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0205219C: .word gL5Allocator
	arm_func_end FUN_02052168

	arm_func_start FUN_020521a0
FUN_020521a0: ; 0x020521A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020521BC
	ldr r0, _020521CC ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_020521BC:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020521CC: .word gL5Allocator
	arm_func_end FUN_020521a0

	arm_func_start FUN_020521d0
FUN_020521d0: ; 0x020521D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r3, [r6, #4]
	mov r5, r1
	cmp r5, r3
	mov r4, r2
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	bge _02052258
	cmp r3, #0
	mov r5, #0
	ble _02052250
	mov r7, #0xc
	mov r8, r7
_0205220C:
	mov r0, r6
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2]
	blx r2
	cmp r4, #0
	ldr r1, [r6, #8]
	beq _02052238
	mla r1, r5, r8, r1
	bl FUN_ov16_020f316c
	b _02052240
_02052238:
	mla r1, r5, r7, r1
	bl FUN_ov16_020f3054
_02052240:
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0205220C
_02052250:
	ldr r0, [r6, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02052258:
	ldr r2, [r0]
	ldr r2, [r2]
	blx r2
	ldr r2, [r6, #8]
	mov r1, #0xc
	mla r1, r5, r1, r2
	cmp r4, #0
	beq _02052280
	bl FUN_ov16_020f316c
	b _02052284
_02052280:
	bl FUN_ov16_020f3054
_02052284:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020521d0

	arm_func_start FUN_0205228c
FUN_0205228c: ; 0x0205228C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	mvnge r0, #0
	ldmgefd sp!, {r3, pc}
	cmp r1, #0
	bge _020522C4
	ldr r0, [r0, #8]
	mov r1, r2
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020522E4
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020522C4:
	ldr r2, [r0, #8]
	mov r0, #0xc
	mla r0, r1, r0, r2
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
_020522E4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205228c

	arm_func_start FUN_020522ec
FUN_020522ec: ; 0x020522EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #4]
	mov r9, r1
	cmp r9, r0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	bge _0205236C
	mov r9, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
_02052324:
	mul r6, r9, r4
	ldr r7, [r10, #8]
	mov r1, r11
	add r8, r7, r6
	mov r0, r8
	bl FUN_ov16_020f338c
	mov r0, r8
	bl FUN_ov16_020f33fc
	str r5, [r7, r6]
	str r5, [r8, #4]
	strb r5, [r8, #8]
	strb r5, [r8, #9]
	strb r5, [r8, #0xa]
	ldr r0, [r10, #4]
	add r9, r9, #1
	cmp r9, r0
	blt _02052324
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205236C:
	mov r0, #0xc
	mul r4, r9, r0
	ldr r5, [r10, #8]
	mov r1, #1
	add r6, r5, r4
	mov r0, r6
	bl FUN_ov16_020f338c
	mov r0, r6
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r5, r4]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020522ec

	arm_func_start FUN_020523ac
FUN_020523ac: ; 0x020523AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _020523F4
	mov r4, #0x1bc
_020523D8:
	ldr r0, [r6, #0x10]
	mla r0, r5, r4, r0
	bl FUN_ov16_020faac4
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _020523D8
_020523F4:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020523ac

	arm_func_start FUN_020523fc
FUN_020523fc: ; 0x020523FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _02052444
	mov r4, #0x1bc
_02052428:
	ldr r0, [r6, #0x10]
	mla r0, r5, r4, r0
	bl FUN_ov16_020fab94
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _02052428
_02052444:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020523fc

	arm_func_start FUN_0205244c
FUN_0205244c: ; 0x0205244C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _02052494
	ldr r4, _0205249C ; =0x000009A4
_02052478:
	ldr r0, [r6, #8]
	mla r0, r5, r4, r0
	bl FUN_ov16_020fc4bc
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _02052478
_02052494:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0205249C: .word 0x000009A4
	arm_func_end FUN_0205244c

	arm_func_start FUN_020524a0
FUN_020524a0: ; 0x020524A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _020524E8
	ldr r4, _020524F0 ; =0x000009A4
_020524CC:
	ldr r0, [r6, #8]
	mla r0, r5, r4, r0
	bl FUN_ov16_020fc4f0
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _020524CC
_020524E8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020524F0: .word 0x000009A4
	arm_func_end FUN_020524a0

	arm_func_start FUN_020524f4
FUN_020524f4: ; 0x020524F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x70
	bl FUN_ov16_020fa638
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _0205253C ; =0x02090630
	bl FUN_02053c20
	strh r0, [r5, #0x16]
	ldr r1, _02052540 ; =0x02090634
	mov r0, r4
	bl FUN_02053c20
	strh r0, [r5, #0x18]
	ldr r1, _02052544 ; =0x0209063C
	mov r0, r4
	bl FUN_02053c20
	strh r0, [r5, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_0205253C: .word unk_02090630
_02052540: .word unk_02090634
_02052544: .word unk_0209063C
	arm_func_end FUN_020524f4

	arm_func_start FUN_02052548
FUN_02052548: ; 0x02052548
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x70
	bl FUN_ov16_020fa154
	add r0, r5, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, [r5, #0x340]
	cmp r1, #0
	beq _0205257C
	ldr r0, _020525E4 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_0205257C:
	mov r4, #0
	sub r3, r4, #1
	mov r0, r4
	add r1, r5, #0x2c
	mov r2, #0x40
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	str r4, [r5, #0x24]
	strb r4, [r5, #0x15]
	strh r3, [r5, #0x16]
	strh r3, [r5, #0x18]
	strh r3, [r5, #0x1a]
	str r4, [r5, #0x28]
	bl MIi_CpuClearFast
	add r0, r5, #0x70
	str r4, [r5, #0x6c]
	bl FUN_ov16_020f9cdc
	add r0, r5, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r4, [r5, #0x340]
	str r4, [r5, #0x344]
	str r4, [r5, #0x348]
	str r4, [r5, #0x34c]
	ldmfd sp!, {r3, r4, r5, pc}
_020525E4: .word gL5Allocator
	arm_func_end FUN_02052548

	arm_func_start FUN_020525e8
FUN_020525e8: ; 0x020525E8
	stmfd sp!, {r4, lr}
	ldr r1, _02052614 ; =0x02118880
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r4, #0xc
	bl FUN_0202fd44
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02052614: .word ov16_02118880
	arm_func_end FUN_020525e8

	arm_func_start FUN_02052618
FUN_02052618: ; 0x02052618
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r2, _02052724 ; =0x02090608
	mov r4, r0
	ldr r0, _02052728 ; =0x02118854
	mov r6, #5
	ldr r5, _0205272C ; =FUN_02052760
	ldr r3, _02052730 ; =FUN_02052740
	mov r1, r6
	str r2, [r4]
	str r0, [r4, #0x70]
	add r0, r4, #0xbc
	mov r2, #0x14
	str r5, [sp]
	bl __cxa_vec_ctor
	ldr r5, _02052734 ; =FUN_020527ac
	ldr r3, _02052738 ; =FUN_02052780
	mov r1, r6
	add r0, r4, #0x120
	mov r2, #0x30
	str r5, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x210
	bl FUN_ov16_021110fc
	ldr r1, _0205273C ; =0x02118880
	add r0, r4, #0x238
	str r1, [r4, #0x22c]
	bl FUN_0202fd38
	add r0, r4, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, r4, #4
	mov r6, #0
	mov r1, r6
	mov r5, #0xc
	mov r2, r5
	bl MI_CpuFill8
	sub r0, r5, #0xd
	str r6, [r4, #0x10]
	strb r6, [r4, #0x14]
	str r6, [r4, #0x1c]
	str r6, [r4, #0x20]
	str r6, [r4, #0x24]
	strb r6, [r4, #0x15]
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	str r6, [r4, #0x28]
	mov r0, r6
	add r1, r4, #0x2c
	mov r2, #0x40
	bl MIi_CpuClearFast
	str r6, [r4, #0x6c]
	add r0, r4, #0x70
	bl FUN_ov16_020f9cdc
	add r0, r4, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r6, [r4, #0x340]
	str r6, [r4, #0x344]
	str r6, [r4, #0x348]
	str r6, [r4, #0x34c]
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02052724: .word unk_02090608
_02052728: .word ov16_02118854
_0205272C: .word FUN_02052760
_02052730: .word FUN_02052740
_02052734: .word FUN_020527ac
_02052738: .word FUN_02052780
_0205273C: .word ov16_02118880
	arm_func_end FUN_02052618

	arm_func_start FUN_02052740
FUN_02052740: ; 0x02052740
	stmfd sp!, {r4, lr}
	ldr r1, _0205275C ; =0x02090628
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fc538
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205275C: .word unk_02090628
	arm_func_end FUN_02052740

	arm_func_start FUN_02052760
FUN_02052760: ; 0x02052760
	stmfd sp!, {r4, lr}
	ldr r1, _0205277C ; =0x02090628
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fc550
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205277C: .word unk_02090628
	arm_func_end FUN_02052760

	arm_func_start FUN_02052780
FUN_02052780: ; 0x02052780
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _020527A8 ; =0x02090618
	add r0, r4, #0x14
	str r1, [r4]
	bl FUN_ov16_021110fc
	mov r0, r4
	bl FUN_ov16_02110b80
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020527A8: .word unk_02090618
	arm_func_end FUN_02052780

	arm_func_start FUN_020527ac
FUN_020527ac: ; 0x020527AC
	stmfd sp!, {r4, lr}
	ldr r1, _020527D0 ; =0x02090618
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02110bb0
	add r0, r4, #0x14
	bl FUN_ov16_0211111c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020527D0: .word unk_02090618
	arm_func_end FUN_020527ac

	arm_func_start FUN_020527d4
FUN_020527d4: ; 0x020527D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1a0
	bl FUN_ov16_0211111c
	mov r4, #5
	ldr r3, _02052818 ; =FUN_020527ac
	mov r1, r4
	add r0, r5, #0xb0
	mov r2, #0x30
	bl __cxa_vec_cleanup
	ldr r3, _0205281C ; =FUN_02052760
	mov r1, r4
	add r0, r5, #0x4c
	mov r2, #0x14
	bl __cxa_vec_cleanup
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02052818: .word FUN_020527ac
_0205281C: .word FUN_02052760
	arm_func_end FUN_020527d4

	arm_func_start FUN_02052820
FUN_02052820: ; 0x02052820
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02052890 ; =0x02090608
	mov r5, r0
	str r1, [r5]
	bl FUN_02052548
	ldr r1, _02052894 ; =0x02118880
	add r0, r5, #0x22c
	str r1, [r5, #0x22c]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0x238
	bl FUN_0202fd44
	add r0, r5, #0x210
	bl FUN_ov16_0211111c
	add r0, r5, #0x120
	mov r4, #5
	mov r1, r4
	mov r2, #0x30
	ldr r3, _02052898 ; =FUN_020527ac
	bl __cxa_vec_cleanup
	mov r1, r4
	add r0, r5, #0xbc
	mov r2, #0x14
	ldr r3, _0205289C ; =FUN_02052760
	bl __cxa_vec_cleanup
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02052890: .word unk_02090608
_02052894: .word ov16_02118880
_02052898: .word FUN_020527ac
_0205289C: .word FUN_02052760
	arm_func_end FUN_02052820

	arm_func_start FUN_020528a0
FUN_020528a0: ; 0x020528A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02052918 ; =0x02090608
	mov r5, r0
	str r1, [r5]
	bl FUN_02052548
	ldr r1, _0205291C ; =0x02118880
	add r0, r5, #0x22c
	str r1, [r5, #0x22c]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0x238
	bl FUN_0202fd44
	add r0, r5, #0x210
	bl FUN_ov16_0211111c
	add r0, r5, #0x120
	mov r4, #5
	mov r1, r4
	mov r2, #0x30
	ldr r3, _02052920 ; =FUN_020527ac
	bl __cxa_vec_cleanup
	mov r1, r4
	add r0, r5, #0xbc
	mov r2, #0x14
	ldr r3, _02052924 ; =FUN_02052760
	bl __cxa_vec_cleanup
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02052918: .word unk_02090608
_0205291C: .word ov16_02118880
_02052920: .word FUN_020527ac
_02052924: .word FUN_02052760
	arm_func_end FUN_020528a0

	arm_func_start FUN_02052928
FUN_02052928: ; 0x02052928
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052548
	mov r0, r4
	bl FUN_0205296c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02052928

	arm_func_start FUN_02052940
FUN_02052940: ; 0x02052940
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r0, _02052968 ; =0x02090644
	add r1, r1, #4
	bl FUN_ov16_020f316c
	ldmfd sp!, {r3, pc}
_02052968: .word unk_02090644
	arm_func_end FUN_02052940

	arm_func_start FUN_0205296c
FUN_0205296c: ; 0x0205296C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, #4
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205296c

	arm_func_start FUN_020529a4
FUN_020529a4: ; 0x020529A4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	add r0, r0, #4
	mov r1, #1
	bl FUN_ov16_020f330c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020529a4

	arm_func_start FUN_020529d8
FUN_020529d8: ; 0x020529D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r0
	mov r8, r1
	mov r6, r2
	mov r4, #1
	bl FUN_020529a4
	cmp r0, #0
	ldr r0, [r7, #4]
	bne _02052A34
	cmp r0, #0
	bne _02052A10
	mov r0, r7
	bl FUN_02052940
_02052A10:
	cmp r6, #0
	andne r0, r4, #0xff
	strb r4, [r7, #0x14]
	orrne r0, r0, #2
	strneb r0, [r7, #0x14]
	add sp, sp, #0x18
	str r8, [r7, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02052A34:
	mov r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r8
	str r5, [r7, #0x10]
	strb r5, [r7, #0x14]
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_02052548
	str r5, [r7, #0x340]
	cmp r6, #0
	beq _02052AAC
	ldr r3, _02052B14 ; =gL5Allocator
	ldr r12, [sp, #0x10]
	ldr r0, [r3]
	ldr r2, [sp, #0x14]
	cmp r0, #0
	ldr r1, _02052B18 ; =0x02090660
	beq _02052AA8
	stmia sp, {r2, r12}
	str r4, [sp, #8]
	add r2, r7, #0x340
	str r4, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP11L5Allocatorimih
	mov r5, r0
_02052AA8:
	b _02052AE0
_02052AAC:
	ldr r3, _02052B14 ; =gL5Allocator
	ldr r12, [sp, #0x10]
	ldr r0, [r3]
	ldr r2, [sp, #0x14]
	cmp r0, #0
	ldr r1, _02052B1C ; =0x0209067C
	beq _02052AE0
	stmia sp, {r2, r12}
	str r4, [sp, #8]
	add r2, r7, #0x340
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	mov r5, r0
_02052AE0:
	str r5, [r7, #0x344]
	ldr r0, [r7, #0x344]
	cmp r0, #0
	addle sp, sp, #0x18
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #1
	cmp r6, #0
	movne r0, #0
	str r0, [r7, #0x348]
	mov r0, #1
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02052B14: .word gL5Allocator
_02052B18: .word unk_02090660
_02052B1C: .word unk_0209067C
	arm_func_end FUN_020529d8

	arm_func_start FUN_02052b20
FUN_02052b20: ; 0x02052B20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_020529a4
	cmp r0, #0
	bne _02052B4C
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02052B4C:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _02052B80
	tst r0, #2
	movne r2, #1
	ldr r1, [r5, #0x10]
	moveq r2, #0
	mov r0, r5
	bl FUN_020529d8
	cmp r0, #0
	movne r0, #1
	mvneq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02052B80:
	mov r0, r5
	bl FUN_02052c0c
	movs r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x70
	bl FUN_ov16_020fa924
	cmp r0, #0
	beq _02052BBC
	ldr r0, [r5, #0x230]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_02052BBC:
	add r0, r5, #0x70
	bl FUN_ov16_020fa924
	cmp r0, #0
	bne _02052BDC
	add r0, r5, #0x70
	bl FUN_ov16_020fa93c
	movs r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
_02052BDC:
	ldr r0, [r5, #0x230]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02052C04
	add r0, r5, #0x22c
	bl FUN_ov16_020fb2ac
	movs r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
_02052C04:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02052b20

	arm_func_start FUN_02052c0c
FUN_02052c0c: ; 0x02052C0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x348]
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x340]
	cmp r1, #0
	beq _02052C3C
	ldr r0, [r4, #0x344]
	cmp r0, #0
	bge _02052C44
_02052C3C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02052C44:
	ldr r0, _02052C6C ; =gL5Allocator
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _02052C5C
	bl _ZN7CFileIO11tryFinalizeEPv
_02052C5C:
	cmp r0, #0
	moveq r1, #1
	streq r1, [r4, #0x348]
	ldmfd sp!, {r4, pc}
_02052C6C: .word gL5Allocator
	arm_func_end FUN_02052c0c

	arm_func_start FUN_02052c70
FUN_02052c70: ; 0x02052C70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x70
	bl FUN_ov16_020fa930
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x348]
	cmp r0, #0
	bne _02052CAC
	mov r0, r10
	bl FUN_02052c0c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052CAC:
	ldr r0, [r10, #0x340]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0
	bl FUN_020539c8
	mov r9, r0
	mov r11, #1
	ldr r0, [r10, #0x340]
	mov r1, r11
	bl FUN_020539c8
	mov r8, r0
	mov r4, #2
	ldr r0, [r10, #0x340]
	mov r1, r4
	bl FUN_020539c8
	mov r7, r0
	ldr r0, [r10, #0x340]
	mov r1, #0
	bl FUN_02053994
	mov r6, r0
	ldr r0, [r10, #0x340]
	mov r1, r11
	bl FUN_02053994
	mov r5, r0
	ldr r0, [r10, #0x340]
	mov r1, r4
	bl FUN_02053994
	cmp r9, #0
	cmpne r8, #0
	mov r4, r0
	cmpne r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r9
	mov r2, r6
	add r0, r10, #0x70
	bl FUN_ov16_020f9f40 ; may be ov17 ; ov16(Mica)
	mov r1, r8
	mov r2, r5
	mov r3, #0
	add r0, r10, #0x70
	bl FUN_ov16_020fa814
	add r0, r10, #0x22c
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #0x1c]
	mov r2, r4
	blx r3
	add r0, r10, #0x70
	mov r1, #0
	mov r2, r11
	bl FUN_ov16_020f9f7c
	mov r1, #0
	add r0, r10, #0x70
	mov r2, r1
	bl FUN_ov16_020fa838
	mov r1, #0
	add r0, r10, #0x70
	bl FUN_ov16_020fa8b8
	ldr r1, _02052DC4 ; =0x0208F6F0
	add r0, r10, #0x70
	ldr r1, [r1, #0x24]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	mov r0, r10
	bl FUN_020524f4
	mov r0, r11
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052DC4: .word unk_0208F6F0
	arm_func_end FUN_02052c70

	arm_func_start FUN_02052dc8
FUN_02052dc8: ; 0x02052DC8
	ldrsh r1, [r0, #0x16]
	cmp r1, #0
	ldrgesh r0, [r0, #0x18]
	cmpge r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_02052dc8

	arm_func_start FUN_02052de4
FUN_02052de4: ; 0x02052DE4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r10, r0
	ldr r4, [r10, #0x84]
	cmp r4, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_02052dc8
	cmp r0, #0
	ldrne r0, [r10, #0x34c]
	cmpne r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r10, #0x16]
	ldrsh r1, [r10, #0x18]
	mov r0, #0x30
	smlabb r6, r2, r0, r4
	smlabb r7, r1, r0, r4
	ldrsh r5, [r10, #0x1a]
	ldr r1, _02052F98 ; =0x02099F24
	ldr r3, [r6, #0x24]
	ldr r2, [r7, #0x24]
	smlabb r8, r5, r0, r4
	cmp r3, r2
	ldr r9, [r1]
	ldreq r1, [r6, #0x28]
	ldreq r0, [r7, #0x28]
	cmpeq r1, r0
	bne _02052E6C
	ldr r1, [r6, #0x2c]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052E6C:
	add r5, sp, #0x18
	ldr r11, [r6, #0x2c]
	ldr r4, [r6, #0x28]
	ldr r3, [r6, #0x24]
	add r0, sp, #0xc
	mov r2, r5
	add r1, r10, #0x1c
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	str r11, [sp, #0x14]
	bl VEC_Add
	mov r0, #2
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r11, #0x1000
	str r11, [sp, #8]
	mov r0, r9
	ldmia r5, {r1, r2, r3}
	bl FUN_ov16_020f794c
	ldr r3, [r7, #0x2c]
	ldr r2, [r7, #0x28]
	ldr r1, [r7, #0x24]
	mov r0, r5
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r1, r10, #0x1c
	mov r2, r5
	str r3, [sp, #0x20]
	bl VEC_Add
	mov r7, #1
	str r7, [sp]
	stmib sp, {r4, r11}
	mov r0, r9
	ldmia r5, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	ldrsh r1, [r10, #0x1a]
	sub r0, r7, #2
	cmp r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r6, #0x24]
	ldr r0, [r8, #0x24]
	cmp r1, r0
	ldreq r1, [r6, #0x28]
	ldreq r0, [r8, #0x28]
	cmpeq r1, r0
	ldreq r1, [r6, #0x2c]
	ldreq r0, [r8, #0x2c]
	cmpeq r1, r0
	bne _02052F58
	mov r0, r9
	str r4, [sp, #0x18]
	str r11, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldmia r5, {r1, r2, r3}
	bl FUN_ov16_020f7bb0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052F58:
	add r4, sp, #0x18
	ldr r6, [r8, #0x2c]
	ldr r5, [r8, #0x28]
	ldr r3, [r8, #0x24]
	add r1, sp, #0xc
	mov r0, r4
	mov r2, r4
	str r3, [sp, #0x18]
	str r5, [sp, #0x1c]
	str r6, [sp, #0x20]
	bl VEC_Subtract
	mov r0, r9
	ldmia r4, {r1, r2, r3}
	bl FUN_ov16_020f7bb0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052F98: .word unk_02099F24
	arm_func_end FUN_02052de4

	arm_func_start FUN_02052f9c
FUN_02052f9c: ; 0x02052F9C
	stmfd sp!, {r4, lr}
	ldr r2, _02053028 ; =0x02099F18
	mov r4, r0
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x22c
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldr r1, [r4, #0x250]
	add r0, r4, #0x70
	mvn r2, #0
	bl FUN_ov16_020fa340
	add r0, r4, #0x70
	bl FUN_ov16_020fa300
	add r0, r4, #0x22c
	bl FUN_ov16_020fb02c
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	ldrne r1, [r4, #0x28]
	cmpne r0, r1
	addlt r0, r0, #1
	strlt r0, [r4, #0x6c]
	cmplt r0, r1
	ldmgefd sp!, {r4, pc}
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x2c]
	add r0, r4, #0x22c
	bl FUN_ov16_020faf5c
	ldmfd sp!, {r4, pc}
_02053028: .word g3DDevice
	arm_func_end FUN_02052f9c

	arm_func_start FUN_0205302c
FUN_0205302c: ; 0x0205302C
	mov r1, #0
	str r1, [r0, #0x6c]
	str r1, [r0, #0x28]
	str r1, [r0, #0x34c]
	bx lr
	arm_func_end FUN_0205302c

	arm_func_start FUN_02053040
FUN_02053040: ; 0x02053040
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldr r3, [r0, #0x28]
	cmp r3, #0x10
	movge r0, #0
	bxge lr
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
	add r1, r0, r3, lsl #2
	str r2, [r1, #0x2c]
	ldr r1, [r0, #0x28]
	add r1, r1, #1
	str r1, [r0, #0x28]
	mov r0, #1
	bx lr
	arm_func_end FUN_02053040

	arm_func_start FUN_02053080
FUN_02053080: ; 0x02053080
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x22c
	bl FUN_ov16_020fb110
	mov r1, r0
	mov r0, r4
	bl FUN_02053040
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02053080

	arm_func_start FUN_020530a0
FUN_020530a0: ; 0x020530A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052dc8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x2c]
	mov r3, #0
	mov r2, #1
	add r0, r4, #0x22c
	str r3, [r4, #0x6c]
	str r2, [r4, #0x34c]
	bl FUN_ov16_020faf5c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020530a0

	arm_func_start FUN_020530e0
FUN_020530e0: ; 0x020530E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052dc8
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x6c]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _0205312C
	add r0, r4, #0x22c
	bl FUN_ov16_020fb02c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, pc}
_0205312C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020530e0

	arm_func_start FUN_02053134
FUN_02053134: ; 0x02053134
	stmfd sp!, {r4, lr}
	ldr r1, _02053160 ; =0x02090618
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02110bb0
	add r0, r4, #0x14
	bl FUN_ov16_0211111c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02053160: .word unk_02090618
	arm_func_end FUN_02053134

	arm_func_start FUN_02053164
FUN_02053164: ; 0x02053164
	stmfd sp!, {r4, lr}
	ldr r1, _02053188 ; =0x02090628
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fc550
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02053188: .word unk_02090628
	arm_func_end FUN_02053164

	arm_func_start FUN_0205318c
FUN_0205318c: ; 0x0205318C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r2
	movs r7, r0
	cmpne r1, #0
	cmpne r6, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r3, sp, #0xc
	bl FUN_02053214
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, sp, #0xc
	mov r0, r5
	mov r1, r5
	bl VEC_Normalize
	add r4, sp, #0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl VEC_Subtract
	mov r0, r5
	mov r1, r4
	bl VEC_DotProduct
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205318c

	arm_func_start FUN_02053214
FUN_02053214: ; 0x02053214
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r2
	movs r8, r0
	cmpne r1, #0
	mov r6, r3
	cmpne r7, #0
	cmpne r6, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, sp, #0xc
	mov r0, r1
	mov r1, r8
	mov r2, r5
	bl VEC_Subtract
	add r4, sp, #0
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl VEC_Subtract
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl VEC_CrossProduct
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl VEC_CrossProduct
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02053214

	arm_func_start FUN_0205328c
FUN_0205328c: ; 0x0205328C
	ldr r12, [r0]
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	ldr r0, [r1]
	smull r1, r3, r12, r3
	adds r12, r1, #0x800
	smull r1, r0, r2, r0
	adc r2, r3, #0
	adds r1, r1, #0x800
	mov r3, r12, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1
	bx lr
	arm_func_end FUN_0205328c

	arm_func_start FUN_020532cc
FUN_020532cc: ; 0x020532CC
	ldr r12, [r0]
	ldr r3, [r1]
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	smull r1, r3, r12, r3
	adds r12, r1, #0x800
	smull r1, r0, r2, r0
	adc r2, r3, #0
	adds r1, r1, #0x800
	mov r3, r12, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	bx lr
	arm_func_end FUN_020532cc

	arm_func_start FUN_0205330c
FUN_0205330c: ; 0x0205330C
	stmfd sp!, {r3, lr}
	bl FUN_0205328c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205330c

	arm_func_start FUN_02053324
FUN_02053324: ; 0x02053324
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r7, r0
	mov r0, r1
	add r9, sp, #0x18
	mov r5, r2
	mov r1, r7
	mov r2, r9
	mov r4, r3
	ldr r6, [sp, #0x40]
	bl VEC_Subtract
	add r8, sp, #0xc
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl VEC_Subtract
	mov r0, r9
	mov r1, r8
	bl FUN_0205330c
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r4, sp, #0
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl VEC_Subtract
	mov r0, r8
	mov r1, r4
	bl FUN_0205328c
	mov r5, r0
	mov r0, r8
	mov r1, r9
	bl FUN_0205328c
	ldr r1, [sp, #0x18]
	mov r4, r0
	smull r2, r0, r1, r5
	adds r1, r2, #0x800
	adc r2, r0, #0
	mov r0, r1, lsr #0xc
	mov r1, r4
	orr r0, r0, r2, lsl #20
	mov r8, #0
	bl FX_Div
	ldr r2, [r7]
	mov r1, r4
	add r0, r2, r0
	str r0, [r6]
	ldr r0, [sp, #0x1c]
	smull r3, r2, r0, r5
	adds r0, r3, #0x800
	adc r2, r2, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r7, #4]
	add r0, r1, r0
	stmib r6, {r0, r8}
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02053324

	arm_func_start FUN_0205341c
FUN_0205341c: ; 0x0205341C
	ldr r2, [r0, #4]
	ldr r3, [r0]
	rsb r2, r2, #0
	stmia r1, {r2, r3}
	mov r0, #0
	str r0, [r1, #8]
	bx lr
	arm_func_end FUN_0205341c

	arm_func_start FUN_02053438
FUN_02053438: ; 0x02053438
	mov r1, #0x1000
	rsb r1, r1, #0
	and r0, r0, r1
	add r0, r0, #0x1000
	bx lr
	arm_func_end FUN_02053438

	arm_func_start FUN_0205344c
FUN_0205344c: ; 0x0205344C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	add r7, sp, #0x24
	mov r4, r2
	mov r5, r0
	mov r8, r1
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl VEC_Subtract
	add r6, sp, #0x18
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl VEC_Subtract
	mov r0, r5
	add r5, sp, #0xc
	mov r1, r8
	mov r2, r5
	bl VEC_Subtract
	mov r0, r4
	add r4, sp, #0
	mov r1, r8
	mov r2, r4
	bl VEC_Subtract
	mov r0, r7
	mov r1, r6
	bl FUN_0205328c
	cmp r0, #0
	bne _020534F4
	mov r0, r7
	mov r1, r6
	bl FUN_020532cc
	cmp r0, #0
	ble _020534F4
	mov r0, r5
	mov r1, r4
	bl FUN_020532cc
	cmp r0, #0
	addgt sp, sp, #0x30
	movgt r0, #1
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_020534F4:
	mov r0, #0
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205344c

	arm_func_start FUN_02053500
FUN_02053500: ; 0x02053500
	stmfd sp!, {r4, lr}
	mov r3, r0
	ldr r0, [r1]
	ldr r1, [r3]
	mov r4, r2
	bl FX_Atan2Idx
	strh r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02053500

	arm_func_start FUN_02053520
FUN_02053520: ; 0x02053520
	stmfd sp!, {r3, lr}
	mov r0, r0, asr #4
	mov lr, r0, lsl #1
	add r0, lr, #1
	ldr r12, _02053550 ; =FX_SinCosTable_
	mov r3, r0, lsl #1
	mov r0, lr, lsl #1
	ldrsh r3, [r12, r3]
	ldrsh r0, [r12, r0]
	str r3, [r1]
	str r0, [r2]
	ldmfd sp!, {r3, pc}
_02053550: .word FX_SinCosTable_
	arm_func_end FUN_02053520

	arm_func_start FUN_02053554
FUN_02053554: ; 0x02053554
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r2
	mov r3, r0
	mov r0, r1
	add r2, sp, #0
	mov r4, #0
	mov r1, r3
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	bl VEC_Subtract
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, pc}
	add r0, sp, #0
	add r1, sp, #8
	mov r2, r5
	bl FUN_02053500
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_02053554

	arm_func_start FUN_020535bc
FUN_020535bc: ; 0x020535BC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, [r0, #8]
	ldr r0, [r0]
	mov r12, #0
	str r0, [sp]
	str r12, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [r1, #8]
	ldr r2, [r1]
	add r0, sp, #0
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	str r3, [sp, #0x14]
	bl VEC_Distance
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020535bc

	arm_func_start FUN_02053604
FUN_02053604: ; 0x02053604
	subs r1, r1, r3
	rsbmi r1, r1, #0
	subs r0, r0, r2
	rsbmi r0, r0, #0
	add r0, r0, r1
	bx lr
	arm_func_end FUN_02053604

	arm_func_start FUN_0205361c
FUN_0205361c: ; 0x0205361C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r4, [r0]
	ldr r0, [r0, #8]
	str r4, [sp]
	str r0, [sp, #0xc]
	ldr r0, [r3, #8]
	ldr r4, [r3]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr lr, [r1, #8]
	ldr r12, [r1]
	mov r1, r4
	sub r9, r1, r0
	ldr r8, [r2, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r5, [r2]
	sub r6, r1, r0
	sub r7, r8, r0
	ldr r1, [sp]
	ldr r0, [sp]
	str r4, [sp, #4]
	sub r4, r5, r0
	sub r3, r12, r1
	smull r2, r1, r4, r6
	ldr r0, [sp, #0xc]
	adds r2, r2, #0x800
	sub r11, lr, r0
	mov r0, r9, asr #0x1f
	str r0, [sp, #8]
	mov r0, r7, asr #0x1f
	str r0, [sp, #0x10]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x18]
	mov r0, r4, asr #0x1f
	str r0, [sp, #0x1c]
	mov r0, #0
	adc r1, r1, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r1, r10, r7, r9
	adds r1, r1, #0x800
	adc r10, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r10, lsl #20
	sub r1, r2, r1
	smull r2, r10, r6, r3
	adds r2, r2, #0x800
	adc r10, r10, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r10, lsl #20
	smull r10, r3, r7, r3
	str r3, [sp, #0x24]
	str r10, [sp, #0x20]
	smull r3, r10, r9, r11
	adds r3, r3, #0x800
	adc r10, r10, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r10, lsl #20
	sub r3, r2, r3
	smull r2, r10, r4, r11
	adds r2, r2, #0x800
	adc r10, r10, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r10, lsl #20
	ldr r10, [sp, #0x20]
	adds r11, r10, #0x800
	ldr r10, [sp, #0x24]
	mov r11, r11, lsr #0xc
	adc r10, r10, r0
	orr r11, r11, r10, lsl #20
	sub r2, r2, r11
	cmp r1, #0
	bge _02053778
	cmp r3, #0
	cmple r2, #0
	bgt _0205376C
	add r0, r3, r2
	bl _s32_div_f
	cmp r0, #1
	addge sp, sp, #0x28
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205376C:
	add sp, sp, #0x28
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02053778:
	ble _020537AC
	cmp r3, #0
	cmpge r2, #0
	blt _020537A0
	add r0, r3, r2
	bl _s32_div_f
	cmp r0, #1
	addge sp, sp, #0x28
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020537A0:
	add sp, sp, #0x28
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020537AC:
	ldr r3, [sp, #8]
	umull r2, r1, r4, r9
	mla r1, r4, r3, r1
	ldr r3, [sp, #0x1c]
	mla r1, r3, r9, r1
	adds r3, r2, #0x800
	adc r2, r1, r0
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	umull r4, r3, r7, r6
	ldr r2, [sp, #0x18]
	adds r4, r4, #0x800
	mla r3, r7, r2, r3
	ldr r2, [sp, #0x10]
	mla r3, r2, r6, r3
	adc r2, r3, r0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r1, r1, r3
	cmp r1, #0
	addle sp, sp, #0x28
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	sub r2, r5, r12
	sub r1, r1, r12
	smull r3, r1, r2, r1
	adds r2, r3, #0x800
	ldr r3, [sp, #0x14]
	sub r4, r8, lr
	sub r3, r3, lr
	smull r6, r3, r4, r3
	adc r7, r1, r0
	adds r4, r6, #0x800
	mov r6, r2, lsr #0xc
	adc r1, r3, r0
	mov r2, r4, lsr #0xc
	orr r6, r6, r7, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r6, r2
	cmp r1, #0
	addle sp, sp, #0x28
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	sub r2, r1, r5
	sub r1, r12, r5
	smull r3, r5, r2, r1
	ldr r1, [sp, #0xc]
	adds r6, r3, #0x800
	sub r2, r1, r8
	sub r1, lr, r8
	smull r4, r3, r2, r1
	adc r5, r5, r0
	adds r2, r4, #0x800
	mov r4, r6, lsr #0xc
	adc r1, r3, r0
	mov r2, r2, lsr #0xc
	orr r4, r4, r5, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r4, r2
	cmp r1, #0
	movle r0, #1
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0205361c

	arm_func_start FUN_020538b0
FUN_020538b0: ; 0x020538B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x5c
	bl strrchr
	movs r4, r0
	mov r1, #0x2f
	bne _020538E4
	mov r0, r6
	b _020538E4
_020538E4:
	bl strrchr
	cmp r0, #0
	bne _020538FC
	cmp r4, #0
	addne r6, r4, #1
	b _02053900
_020538FC:
	add r6, r0, #1
_02053900:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl strncpy
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020538b0

	arm_func_start FUN_02053914
FUN_02053914: ; 0x02053914
	ldrsb r2, [r1]
	mov r12, #0
	cmp r2, #0
	beq _02053950
	ldr r3, _0205395C ; =0x0208BFB8
_02053928:
	ldrsb r2, [r1, r12]
	cmp r2, #0
	blt _0205393C
	cmp r2, #0x80
	ldrltb r2, [r3, r2]
_0205393C:
	strb r2, [r0, r12]
	add r12, r12, #1
	ldrsb r2, [r1, r12]
	cmp r2, #0
	bne _02053928
_02053950:
	mov r1, #0
	strb r1, [r0, r12]
	bx lr
_0205395C: .word unk_0208BFB8
	arm_func_end FUN_02053914

	arm_func_start FUN_02053960
FUN_02053960: ; 0x02053960
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _02053980
	ldr r2, [r0]
	cmp r1, r2
	blo _02053988
_02053980:
	mov r0, #0
	bx lr
_02053988:
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #4]
	bx lr
	arm_func_end FUN_02053960

	arm_func_start FUN_02053994
FUN_02053994: ; 0x02053994
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _020539B4
	ldr r2, [r0]
	cmp r1, r2
	blo _020539BC
_020539B4:
	mov r0, #0
	bx lr
_020539BC:
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_02053994

	arm_func_start FUN_020539c8
FUN_020539c8: ; 0x020539C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02053960
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020539c8

	arm_func_start FUN_020539e4
FUN_020539e4: ; 0x020539E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	beq _02053A08
	mov r1, #0
	bl FUN_02053994
	str r0, [r6]
_02053A08:
	cmp r5, #0
	beq _02053A20
	mov r0, r7
	mov r1, #0
	bl FUN_020539c8
	str r0, [r5]
_02053A20:
	cmp r4, #0
	beq _02053A38
	mov r0, r7
	mov r1, #1
	bl FUN_02053994
	str r0, [r4]
_02053A38:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #1
	bl FUN_020539c8
	ldr r1, [sp, #0x18]
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020539e4

	arm_func_start FUN_02053a5c
FUN_02053a5c: ; 0x02053A5C
	ldr r1, _02053A6C ; =0x00000F3C
	add r0, r0, r0, lsl #1
	sub r0, r1, r0
	bx lr
_02053A6C: .word 0x00000F3C
	arm_func_end FUN_02053a5c

	arm_func_start FUN_02053a70
FUN_02053a70: ; 0x02053A70
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x54]
	mov r1, r1, asr #4
	mov r3, r2, asr #4
	ldr r4, [sp, #0x58]
	mov r8, r1, lsl #1
	mov r2, r4, asr #4
	mov r9, r0
	mov r6, r3, lsl #1
	mov r7, r2, lsl #1
	bl MTX_Identity43_
	add r0, r8, #1
	ldr r4, _02053B44 ; =FX_SinCosTable_
	mov r1, r8, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	add r5, sp, #0
	mov r0, r5
	blx MTX_RotZ43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r7, #1
	mov r1, r7, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotY43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r6, #1
	mov r1, r6, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotX43_
	mov r1, r5
	mov r0, r9
	mov r2, r9
	bl MTX_Concat43
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_02053B44: .word FX_SinCosTable_
	arm_func_end FUN_02053a70

	arm_func_start FUN_02053b48
FUN_02053b48: ; 0x02053B48
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x58]
	mov r3, r1, asr #4
	ldr r4, [sp, #0x5c]
	mov r2, r2, asr #4
	mov r1, r4, asr #4
	mov r6, r3, lsl #1
	mov r9, r0
	mov r7, r2, lsl #1
	mov r8, r1, lsl #1
	bl MTX_Identity43_
	add r0, r6, #1
	ldr r4, _02053C1C ; =FX_SinCosTable_
	mov r1, r6, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	add r5, sp, #0
	mov r0, r5
	blx MTX_RotX43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r7, #1
	mov r1, r7, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotY43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r8, #1
	mov r1, r8, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotZ43_
	mov r1, r5
	mov r0, r9
	mov r2, r9
	bl MTX_Concat43
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_02053C1C: .word FX_SinCosTable_
	arm_func_end FUN_02053b48

	arm_func_start FUN_02053c20
FUN_02053c20: ; 0x02053C20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	movs r7, r0
	cmpne r6, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, sp, #0
	mov r5, #0
	mov r0, r6
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	bl strlen
	mov r2, r0
	mov r0, r4
	mov r1, r6
	bl memcpy
	cmp r7, #0
	addne r5, r7, #0x40
	cmp r5, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r5
	bl NNS_G3dGetResDictIdxByName
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02053c20

	arm_func_start FUN_02053c9c
FUN_02053c9c: ; 0x02053C9C
	cmp r0, #0
	moveq r0, #0
	ldrne r1, [r0, #0x38]
	addne r0, r0, r1
	bx lr
	arm_func_end FUN_02053c9c

	arm_func_start FUN_02053cb0
FUN_02053cb0: ; 0x02053CB0
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl NNS_G3dGetTex
	bl FUN_02053c9c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02053cb0

	arm_func_start FUN_02053ccc
FUN_02053ccc: ; 0x02053CCC
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl NNS_G3dGetTex
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl NNS_G3dPlttGetRequiredSize
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02053ccc

	arm_func_start FUN_02053cf4
FUN_02053cf4: ; 0x02053CF4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r8, r1
	movs r9, r0
	mov r7, r3
	cmpne r8, #0
	cmpne r7, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, r2, asr #4
	mov r3, r2, lsl #1
	add r2, r3, #1
	mov r5, r3, lsl #1
	ldr r6, _02053DEC ; =FX_SinCosTable_
	add r4, sp, #0xc
	mov r3, r2, lsl #1
	ldrsh r5, [r6, r5]
	mov r2, r4
	ldrsh r6, [r6, r3]
	bl VEC_Subtract
	ldr lr, [sp, #0x14]
	ldr r12, [sp, #0xc]
	mov r1, r8
	smull r3, r0, lr, r5
	mov r2, r4
	smull r10, r8, r12, r6
	smull r5, r4, r12, r5
	smull r12, r6, lr, r6
	adds lr, r10, #0x800
	adc r10, r8, #0
	adds r3, r3, #0x800
	mov r8, lr, lsr #0xc
	adc r0, r0, #0
	mov r3, r3, lsr #0xc
	orr r8, r8, r10, lsl #20
	orr r3, r3, r0, lsl #20
	sub r0, r8, r3
	adds r3, r5, #0x800
	str r0, [sp]
	adc r0, r4, #0
	mov r4, r3, lsr #0xc
	adds r3, r12, #0x800
	orr r4, r4, r0, lsl #20
	adc r0, r6, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	add r3, r4, r3
	add r0, sp, #0
	str r3, [sp, #8]
	bl VEC_Add
	ldr r1, [r9, #4]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [r7]
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r7, #4]
	ldr r1, [sp, #0x14]
	str r1, [r7, #8]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02053DEC: .word FX_SinCosTable_
	arm_func_end FUN_02053cf4

	arm_func_start FUN_02053df0
FUN_02053df0: ; 0x02053DF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	add r7, sp, #0
	cmp r3, #0
	mov r6, r1
	mov r5, r2
	ldmia r0, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldr r4, [sp, #0x30]
	cmpne r3, #0x8000
	beq _02053E34
	mov r2, r3, lsl #0x10
	mov r0, r7
	mov r1, r6
	mov r3, r7
	mov r2, r2, lsr #0x10
	bl FUN_02053cf4
_02053E34:
	ldr r7, [r5]
	ldr r3, [r6]
	ldr r1, [r6, #4]
	sub r3, r3, r7, asr #1
	sub r12, r3, r4
	add r3, r12, r7
	ldr r2, [r5, #4]
	mov r0, #0
	ldr r7, [r5, #8]
	ldr r6, [r6, #8]
	sub r1, r1, r2, asr #1
	sub r8, r1, r4
	sub r6, r6, r7, asr #1
	sub r9, r6, r4
	ldr r1, [sp]
	add r10, r9, r7
	add r2, r8, r2
	mov r7, r0
	add r3, r3, r4, lsl #1
	cmp r12, r1
	cmple r1, r3
	movle r7, #1
	add r2, r2, r4, lsl #1
	mov r5, r0
	mov r6, r0
	mov lr, r0
	add r4, r10, r4, lsl #1
	cmp r7, #0
	beq _02053EB4
	ldr r1, [sp, #4]
	cmp r8, r1
	movle lr, #1
_02053EB4:
	cmp lr, #0
	beq _02053EC8
	ldr r1, [sp, #4]
	cmp r1, r2
	movle r6, #1
_02053EC8:
	cmp r6, #0
	beq _02053EDC
	ldr r1, [sp, #8]
	cmp r9, r1
	movle r5, #1
_02053EDC:
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [sp, #8]
	cmp r1, r4
	movle r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02053df0

	arm_func_start FUN_02053efc
FUN_02053efc: ; 0x02053EFC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r12, [r1, #4]
	ldr r4, [r0, #4]
	mov r5, r2
	subs r2, r12, r4
	rsbmi r2, r2, #0
	cmp r2, r3, asr #1
	addgt sp, sp, #0x18
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r2, [r1, #8]
	ldr r1, [r1]
	mov r4, #0
	str r1, [sp]
	str r4, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [r0, #8]
	ldr r2, [r0]
	add r0, sp, #0
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	str r4, [sp, #0x10]
	str r3, [sp, #0x14]
	bl VEC_Distance
	ldr r1, [sp, #0x28]
	add r1, r5, r1
	cmp r0, r1
	movle r4, #1
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02053efc

	arm_func_start FUN_02053f7c
FUN_02053f7c: ; 0x02053F7C
	stmfd sp!, {r3, lr}
	ldr r1, _02053FB8 ; =0x0209A1A8
	ldr r2, _02053FBC ; =0x04000320
	ldrb r3, [r1, #1]
	ldrh r1, [r2]
	cmp r3, #0
	ble _02053FB0
	cmp r1, r3
	ldmltfd sp!, {r3, pc}
	sub r1, r2, #0x2c0
	ldrh r1, [r1]
	tst r1, #0x1000
	ldmnefd sp!, {r3, pc}
_02053FB0:
	bl NNS_G3dDraw
	ldmfd sp!, {r3, pc}
_02053FB8: .word unk_0209A1A8
_02053FBC: .word 0x04000320
	arm_func_end FUN_02053f7c

	arm_func_start FUN_02053fc0
FUN_02053fc0: ; 0x02053FC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r2
	mov r8, r3
	mov r10, r1
	ldr r1, [r8]
	ldrh r7, [r9]
	add r5, r10, #8
	cmp r1, #0
	add r6, r5, r7, lsl #3
	bgt _02054060
	mov r11, #0x3f000000
	mov r4, r11
_02053FF0:
	ldrh r0, [r6, #2]
	mov r6, r5
	strh r0, [r9]
	add r0, r10, r0, lsl #3
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _02054024
	bl _ffltu
	mov r1, r0
	mov r0, r4
	bl _fadd
	b _02054030
_02054024:
	bl _ffltu
	mov r1, r11
	bl _fsub
_02054030:
	bl _ffix
	str r0, [r8]
	ldrh r1, [r9]
	cmp r1, #0
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, r1
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0
	ble _02053FF0
	b _02054068
_02054060:
	sub r0, r1, r0
	str r0, [r8]
_02054068:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02053fc0

	arm_func_start FUN_02054070
FUN_02054070: ; 0x02054070
	stmfd sp!, {r3, lr}
	mov r12, r0, asr #3
	cmp r12, #1
	mov lr, #0
	ble _02054094
_02054084:
	mov r12, r12, asr #1
	cmp r12, #1
	add lr, lr, #1
	bgt _02054084
_02054094:
	mov r12, #8
	mvn r12, r12, lsl lr
	tst r0, r12
	addne lr, lr, #1
	mov r0, r1, asr #3
	str lr, [r2]
	cmp r0, #1
	mov r2, #0
	ble _020540C8
_020540B8:
	mov r0, r0, asr #1
	cmp r0, #1
	add r2, r2, #1
	bgt _020540B8
_020540C8:
	mov r0, #8
	mvn r0, r0, lsl r2
	tst r1, r0
	addne r2, r2, #1
	str r2, [r3]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02054070

	arm_func_start FUN_020540e0
FUN_020540e0: ; 0x020540E0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_020540e0

	arm_func_start FUN_020540f0
FUN_020540f0: ; 0x020540F0
	bx lr
	arm_func_end FUN_020540f0

	arm_func_start FUN_020540f4
FUN_020540f4: ; 0x020540F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02054114
	bl L5FS_Deallocate
	mov r0, #0
	str r0, [r4, #0xc]
_02054114:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl L5FS_Deallocate
	ldr r0, [r4, #8]
	bl L5FS_Deallocate
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020540f4

	arm_func_start FUN_0205413c
FUN_0205413c: ; 0x0205413C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [sp, #0x18]
	mov r6, #0
	ldr r4, [sp, #0x1c]
	ldr lr, [sp, #0x20]
	strb r1, [r0, #0xc]
	strb r6, [r0, #0xd]
	str r5, [r0]
	ldr r12, [sp, #0x24]
	stmib r0, {r4, lr}
	sub r2, r6, #1
	ldr r3, [sp, #0x28]
	str r12, [r0, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_0205413c

	arm_func_start FUN_02054194
FUN_02054194: ; 0x02054194
	ldrsb r2, [r0, #0xd]
	orr r1, r2, r1
	strb r1, [r0, #0xd]
	bx lr
	arm_func_end FUN_02054194

	arm_func_start FUN_020541a4
FUN_020541a4: ; 0x020541A4
	ldrsb r2, [r0, #0xd]
	mvn r1, r1
	mov r1, r1, lsl #0x18
	and r1, r2, r1, asr #24
	strb r1, [r0, #0xd]
	bx lr
	arm_func_end FUN_020541a4

	arm_func_start FUN_020541bc
FUN_020541bc: ; 0x020541BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x1c
	bl MIi_CpuCopyFast
	ldrh r0, [r4, #0x4e]
	strh r0, [r5, #0x20]
	ldrb r0, [r4, #0x5c]
	strb r0, [r5, #0x23]
	ldrh r0, [r4, #0x54]
	strh r0, [r5, #0x24]
	ldrh r0, [r4, #0x56]
	strh r0, [r5, #0x26]
	ldrb r0, [r4, #0x53]
	strb r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020541bc

	arm_func_start FUN_02054204
FUN_02054204: ; 0x02054204
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	cmpeq r3, #0
	subne r4, r3, r1
	mov lr, r5
	addne r12, r4, r4, lsr #31
	movne lr, r12, asr #1
	cmp r2, #0
	ldreq r4, [sp, #0x10]
	str r1, [r0, #0x20]
	cmpeq r4, #0
	ldrne r4, [sp, #0x10]
	str r2, [r0, #0x24]
	subne r4, r4, r2
	addne r12, r4, r4, lsr #31
	movne r5, r12, asr #1
	add r4, r1, lr
	ldr r12, [sp, #0x10]
	add lr, r2, r5
	str r4, [r0, #0x14]
	str lr, [r0, #0x1c]
	str r3, [r0, #0x28]
	str r12, [r0, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054204

	arm_func_start FUN_02054268
FUN_02054268: ; 0x02054268
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0xd4
	bl MIi_CpuClearFast
	mov r2, #1
	mov r3, #0x1e
	mov r1, #0x100
	mov r0, #2
	strb r3, [r4, #0x68]
	strb r2, [r4, #0x69]
	str r1, [r4, #0xa0]
	strb r2, [r4, #0xa6]
	strb r0, [r4, #0xa7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054268

	arm_func_start FUN_020542a8
FUN_020542a8: ; 0x020542A8
	ldr r0, [r0, #0x5c]
	bx lr
	arm_func_end FUN_020542a8

	arm_func_start FUN_020542b0
FUN_020542b0: ; 0x020542B0
	ldr r0, [r0, #0x5c]
	mov r0, r0, asr #8
	bx lr
	arm_func_end FUN_020542b0

	arm_func_start FUN_020542bc
FUN_020542bc: ; 0x020542BC
	ldr r0, [r0, #0x5c]
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_020542bc

	arm_func_start FUN_020542c8
FUN_020542c8: ; 0x020542C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x84]
	ldr lr, [r0, #0x88]
	ldr r12, [r0, #0x8c]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r4, [r0, #0x78]
	str lr, [r0, #0x7c]
	str r12, [r0, #0x80]
	str r3, [r0, #0x84]
	str r2, [r0, #0x88]
	str r1, [r0, #0x8c]
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_020542c8

	arm_func_start FUN_0205430c
FUN_0205430c: ; 0x0205430C
	add r0, r0, #0x84
	bx lr
	arm_func_end FUN_0205430c

	arm_func_start FUN_02054314
FUN_02054314: ; 0x02054314
	add r0, r0, #0x78
	bx lr
	arm_func_end FUN_02054314

	arm_func_start FUN_0205431c
FUN_0205431c: ; 0x0205431C
	stmfd sp!, {r0, r1, r2, r3}
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	str r3, [r0, #0x6c]
	str r2, [r0, #0x70]
	str r1, [r0, #0x74]
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_0205431c

	arm_func_start FUN_02054340
FUN_02054340: ; 0x02054340
	str r1, [r0, #0x90]
	str r2, [r0, #0x94]
	str r3, [r0, #0x98]
	bx lr
	arm_func_end FUN_02054340

	arm_func_start FUN_02054350
FUN_02054350: ; 0x02054350
	cmp r1, #0
	movlt r1, #0
	blt _02054364
	cmp r1, #0x1f
	movge r1, #0x1e
_02054364:
	strb r1, [r0, #0x68]
	bx lr
	arm_func_end FUN_02054350

	arm_func_start FUN_0205436c
FUN_0205436c: ; 0x0205436C
	str r1, [r0, #0xa0]
	cmp r2, #0
	bxeq lr
	cmp r1, #0xef
	movge r1, #1
	strgeb r1, [r0, #0xa6]
	movlt r1, #0
	strltb r1, [r0, #0xa6]
	bx lr
	arm_func_end FUN_0205436c

	arm_func_start FUN_02054390
FUN_02054390: ; 0x02054390
	strb r1, [r0, #0xa6]
	bx lr
	arm_func_end FUN_02054390

	arm_func_start FUN_02054398
FUN_02054398: ; 0x02054398
	ldrh r2, [r0, #0x6a]
	cmp r2, r1
	movne r2, #1
	strneb r2, [r0, #0x69]
	strh r1, [r0, #0x6a]
	bx lr
	arm_func_end FUN_02054398

	arm_func_start FUN_020543b0
FUN_020543b0: ; 0x020543B0
	ldrh r0, [r0, #0xa4]
	and r0, r1, r0
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_020543b0

	arm_func_start FUN_020543c8
FUN_020543c8: ; 0x020543C8
	ldrh r2, [r0, #0xa4]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0xa4]
	bx lr
	arm_func_end FUN_020543c8

	arm_func_start FUN_020543dc
FUN_020543dc: ; 0x020543DC
	ldrh r2, [r0, #0xa4]
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #0xa4]
	bx lr
	arm_func_end FUN_020543dc

	arm_func_start FUN_020543f4
FUN_020543f4: ; 0x020543F4
	ldr r12, _02054400 ; =FUN_020543b0
	mov r1, #2
	bx r12
_02054400: .word FUN_020543b0
	arm_func_end FUN_020543f4

	arm_func_start FUN_02054404
FUN_02054404: ; 0x02054404
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r1, r4
	bl FUN_020543b0
	cmp r0, #0
	movne r4, #0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054404

	arm_func_start FUN_02054424
FUN_02054424: ; 0x02054424
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02054404
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	mov r0, r5
	mov r1, #2
	beq _02054454
	bl FUN_020543c8
	ldmfd sp!, {r3, r4, r5, pc}
_02054454:
	bl FUN_020543dc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054424

	arm_func_start FUN_0205445c
FUN_0205445c: ; 0x0205445C
	ldr r12, _02054468 ; =FUN_020543b0
	mov r1, #0x40
	bx r12
_02054468: .word FUN_020543b0
	arm_func_end FUN_0205445c

	arm_func_start FUN_0205446c
FUN_0205446c: ; 0x0205446C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r2, _02054498 ; =0x000004C8
	mov r1, r6
	mov r0, #0
	bl MIi_CpuClearFast
	str r5, [r6, #0x490]
	str r4, [r6, #0x494]
	ldmfd sp!, {r4, r5, r6, pc}
_02054498: .word 0x000004C8
	arm_func_end FUN_0205446c

	arm_func_start FUN_0205449c
FUN_0205449c: ; 0x0205449C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r5, [r4, #0x48c]
	mov r0, #0xc
	mul r0, r5, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	add r1, r4, #0xc
	str r7, [r4]
	str r6, [r4, #4]
	str r5, [r4, #8]
	add r2, r1, r0
	ldmia r2, {r0, r1}
	mov r2, r7
	mov r3, r6
	bl FUN_02053604
	ldrb r1, [sp, #0x20]
	cmp r1, #0
	bne _020544FC
	ldr r1, [r4, #0x490]
	cmp r0, r1
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020544FC:
	ldr r1, [r4, #0x48c]
	ldr r0, _020545AC ; =0x2AAAAAAB
	add r8, r1, #1
	smull r2, r9, r0, r8
	mov r1, r8, lsr #0x1f
	add r9, r1, r9, asr #4
	mov r3, #0x60
	smull r1, r2, r3, r9
	sub r9, r8, r1
	mov r1, #0xc
	mla r2, r9, r1, r4
	str r9, [r4, #0x48c]
	str r7, [r2, #0xc]
	ldr r7, [r4, #0x48c]
	mov lr, #0xc
	mla r3, r7, r1, r4
	str r6, [r3, #0x10]
	ldr r3, [r4, #0x48c]
	mov r2, #0
	mla r1, r3, r1, r4
	str r5, [r1, #0x14]
	ldr r1, [r4, #0x48c]
	mov r12, #0x60
	add r3, r1, #0x60
	mov r8, lr
_02054560:
	ldr r6, [r4, #0x494]
	mla r1, r2, r8, r4
	sub r3, r3, r6
	mov r6, r3, lsr #0x1f
	smull r7, r9, r0, r3
	add r9, r6, r9, asr #4
	smull r6, r7, r12, r9
	sub r9, r3, r6
	mla r7, r9, lr, r4
	ldr r6, [r7, #0xc]
	add r2, r2, #1
	str r6, [r1, #0x498]
	ldr r6, [r7, #0x10]
	cmp r2, #4
	str r6, [r1, #0x49c]
	str r5, [r1, #0x4a0]
	blt _02054560
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020545AC: .word 0x2AAAAAAB
	arm_func_end FUN_0205449c

	arm_func_start FUN_020545b0
FUN_020545b0: ; 0x020545B0
	stmfd sp!, {r4, lr}
	stmia r0, {r1, r2, r3}
	mov r4, #0
	mov r12, #0xc
_020545C0:
	mla lr, r4, r12, r0
	str r1, [lr, #0xc]
	str r2, [lr, #0x10]
	add r4, r4, #1
	str r3, [lr, #0x14]
	cmp r4, #0x60
	blt _020545C0
	mov r4, #0
	str r4, [r0, #0x48c]
	mov r12, #0xc
_020545E8:
	mla lr, r4, r12, r0
	str r1, [lr, #0x498]
	str r2, [lr, #0x49c]
	add r4, r4, #1
	str r3, [lr, #0x4a0]
	cmp r4, #4
	blt _020545E8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020545b0

	arm_func_start FUN_02054608
FUN_02054608: ; 0x02054608
	ldr r12, _0205461C ; =MIi_CpuClearFast
	mov r1, r0
	mov r0, #0
	mov r2, #0x18
	bx r12
_0205461C: .word MIi_CpuClearFast
	arm_func_end FUN_02054608

	arm_func_start FUN_02054620
FUN_02054620: ; 0x02054620
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	bl FUN_020547bc
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_02054834
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmn r6, #1
	beq _02054678
	cmp r7, #0
	blt _02054670
	ldr r2, [r5, r7, lsl #2]
	mov r0, r5
	mov r1, r4
	bl FUN_02054780
_02054670:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02054678:
	ldr r0, [r5, #0x10]
	cmp r0, #4
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	blt _020546D4
	cmp r7, #4
	bge _02054708
_02054698:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	bne _020546BC
	str r4, [r5, r7, lsl #2]
	ldr r1, [r5, #0x10]
	mov r0, #1
	add r1, r1, #1
	str r1, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020546BC:
	str r4, [r5, r7, lsl #2]
	add r7, r7, #1
	mov r4, r0
	cmp r7, #4
	blt _02054698
	b _02054708
_020546D4:
	mov r1, #0
_020546D8:
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #0
	bne _020546FC
	str r4, [r5, r1, lsl #2]
	ldr r1, [r5, #0x10]
	mov r0, #1
	add r1, r1, #1
	str r1, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020546FC:
	add r1, r1, #1
	cmp r1, #4
	blt _020546D8
_02054708:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02054620

	arm_func_start FUN_02054710
FUN_02054710: ; 0x02054710
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020547bc
	cmn r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	cmp r1, #0
	movle r0, #0
	ldmlefd sp!, {r4, pc}
	sub r1, r1, #1
	cmp r0, r1
	bge _02054764
_02054744:
	add r1, r4, r0, lsl #2
	ldr r1, [r1, #4]
	str r1, [r4, r0, lsl #2]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	sub r1, r1, #1
	cmp r0, r1
	blt _02054744
_02054764:
	mov r0, #0
	str r0, [r4, r1, lsl #2]
	ldr r1, [r4, #0x10]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r4, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054710

	arm_func_start FUN_02054780
FUN_02054780: ; 0x02054780
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r2
	mov r6, r1
	bl FUN_020547bc
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_020547bc
	mvn r1, #0
	cmp r4, r1
	cmpne r0, r1
	strne r5, [r7, r4, lsl #2]
	strne r6, [r7, r0, lsl #2]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02054780

	arm_func_start FUN_020547bc
FUN_020547bc: ; 0x020547BC
	ldr r2, [r0, #0x10]
	mov r3, #0
	cmp r2, #0
	ble _020547EC
_020547CC:
	ldr r2, [r0, r3, lsl #2]
	cmp r1, r2
	moveq r0, r3
	bxeq lr
	ldr r2, [r0, #0x10]
	add r3, r3, #1
	cmp r3, r2
	blt _020547CC
_020547EC:
	mvn r0, #0
	bx lr
	arm_func_end FUN_020547bc

	arm_func_start FUN_020547f4
FUN_020547f4: ; 0x020547F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020547bc
	cmp r0, #0
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x14]
	cmp r0, #0
	movgt r0, #0
	strle r4, [r5, #0x14]
	movle r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020547f4

	arm_func_start FUN_02054828
FUN_02054828: ; 0x02054828
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_02054828

	arm_func_start FUN_02054834
FUN_02054834: ; 0x02054834
	cmp r1, #0
	ble _0205484C
	ldr r0, [r0, #0x14]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
_0205484C:
	mov r0, #0
	bx lr
	arm_func_end FUN_02054834

	arm_func_start FUN_02054854
FUN_02054854: ; 0x02054854
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_020547bc
	mvn r4, #0
	cmp r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_02054834
	cmp r0, #0
	ldrne r4, [r6, #0x10]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02054854

	arm_func_start FUN_0205488c
FUN_0205488c: ; 0x0205488C
	cmp r1, #0
	ble _0205489C
	cmp r2, #0
	bge _020548A4
_0205489C:
	mvn r0, #0
	bx lr
_020548A4:
	and r0, r2, #0xff
	orr r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_0205488c

	arm_func_start FUN_020548b0
FUN_020548b0: ; 0x020548B0
	cmp r1, #0
	cmnne r1, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_020548b0

	arm_func_start FUN_020548c4
FUN_020548c4: ; 0x020548C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r1
	mov r8, r0
	mov r1, r5
	mov r6, r2
	bl FUN_02054938
	mov r4, r0
	mov r0, r8
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02054904:
	ldr r0, [r4, #0x5c]
	cmp r7, r0
	bne _02054920
	cmp r6, #0
	strne r5, [r6]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02054920:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02054904
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020548c4

	arm_func_start FUN_02054938
FUN_02054938: ; 0x02054938
	cmp r1, #0x18
	movhs r0, #0
	addlo r2, r0, #0x40
	movlo r0, #0xd4
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_02054938

	arm_func_start FUN_02054950
FUN_02054950: ; 0x02054950
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	bl FUN_02054938
	mov r4, r0
_02054968:
	mov r0, r4
	bl FUN_02054404
	cmp r0, #0
	beq _02054988
	cmp r6, #0
	strne r5, [r6]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02054988:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02054968
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02054950

	arm_func_start FUN_020549a0
FUN_020549a0: ; 0x020549A0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	beq _020549C0
	mov r0, r1
	bl FUN_02054404
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_020549C0:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020549a0

	arm_func_start FUN_020549c8
FUN_020549c8: ; 0x020549C8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	beq _020549F0
	ldr r1, [r1, #0x5c]
	add r0, r0, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r3, pc}
_020549F0:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020549c8

	arm_func_start FUN_020549f8
FUN_020549f8: ; 0x020549F8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r1, #0x5c]
	add r0, r0, #0x28
	bl FUN_02054834
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020549f8

	arm_func_start FUN_02054a18
FUN_02054a18: ; 0x02054A18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020549c8
	cmp r0, #0
	bne _02054A44
	mov r0, r5
	mov r1, r4
	bl FUN_020549f8
	cmp r0, #0
	beq _02054A4C
_02054A44:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02054A4C:
	mov r0, r4
	mov r1, #8
	bl FUN_020543b0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054a18

	arm_func_start FUN_02054a5c
FUN_02054a5c: ; 0x02054A5C
	ldr r12, _02054A6C ; =FUN_020543b0
	mov r0, r1
	mov r1, #0x20
	bx r12
_02054A6C: .word FUN_020543b0
	arm_func_end FUN_02054a5c

	arm_func_start FUN_02054a70
FUN_02054a70: ; 0x02054A70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020549c8
	cmp r0, #0
	bne _02054A9C
	mov r0, r5
	mov r1, r4
	bl FUN_020549f8
	cmp r0, #0
	beq _02054AA4
_02054A9C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02054AA4:
	mov r0, r4
	mov r1, #0x10
	bl FUN_020543b0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054a70

	arm_func_start FUN_02054ab4
FUN_02054ab4: ; 0x02054AB4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	mov r1, #0x8000
	bl FUN_020543b0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02054ab4

	arm_func_start FUN_02054ad4
FUN_02054ad4: ; 0x02054AD4
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r1, [r1, #0x5c]
	mov r2, #0
	cmp r1, #0
	ble _02054AFC
	ldr r0, [r0, #0x28]
	cmp r0, r1
	moveq r2, #1
_02054AFC:
	mov r0, r2
	bx lr
	arm_func_end FUN_02054ad4

	arm_func_start FUN_02054b04
FUN_02054b04: ; 0x02054B04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r9, r3
	ldr r3, [r9]
	mov r6, r0
	str r3, [sp]
	ldr r3, [r9, #4]
	mov r5, r1
	str r3, [sp, #4]
	ldr r3, [r9, #8]
	mov r4, r2
	str r3, [sp, #8]
	ldr r10, [sp, #0x30]
	mov r7, #1
	bl FUN_02054a5c
	cmp r0, #0
	bne _02054B6C
	ldr r1, [r9]
	add sp, sp, #0xc
	str r1, [r10]
	ldr r1, [r9, #4]
	mov r0, r7
	str r1, [r10, #4]
	ldr r1, [r9, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054B6C:
	mov r0, r6
	mov r1, r5
	bl FUN_02054a18
	cmp r0, #0
	add r0, r5, #0xac
	mov r1, #0x20
	beq _02054BC0
	bl FUN_020541a4
	ldr r0, _02054D48 ; =0x02099EE8
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, r4
	add r3, r5, #0xac
	bl FUN_ov0_020cd2a8
	ands r8, r0, #0xff
	ldrsb r0, [r5, #0xb9]
	orrne r0, r0, #4
	strneb r0, [r5, #0xb9]
	biceq r0, r0, #4
	streqb r0, [r5, #0xb9]
	b _02054BC4
_02054BC0:
	bl FUN_02054194
_02054BC4:
	ldr r0, _02054D4C ; =0x02099EB0
	add r1, sp, #0
	ldr r0, [r0]
	add r2, r5, #0xac
	bl FUN_ov0_020cd1f0
	cmp r0, #0
	bne _02054C04
	ldr r1, [r4]
	add sp, sp, #0xc
	str r1, [r10]
	ldr r1, [r4, #4]
	mov r0, #0
	str r1, [r10, #4]
	ldr r1, [r4, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054C04:
	ldrsb r0, [r5, #0xb9]
	tst r0, #2
	movne r9, #1
	moveq r9, #0
	cmp r8, #0
	bne _02054C40
	cmp r9, #0
	beq _02054C40
	ldr r0, _02054D48 ; =0x02099EE8
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, r4
	add r3, r5, #0xac
	bl FUN_ov0_020cd2a8
	and r8, r0, #0xff
_02054C40:
	cmp r8, #0
	cmpne r9, #0
	beq _02054C80
	ldrb r0, [sp, #0x34]
	add sp, sp, #0xc
	cmp r0, #0
	addne r0, r6, #0x1000
	strneb r7, [r0, #0x908]
	ldr r1, [r4]
	mov r0, #4
	str r1, [r10]
	ldr r1, [r4, #4]
	str r1, [r10, #4]
	ldr r1, [r4, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054C80:
	cmp r9, #0
	bne _02054C90
	cmp r8, #0
	beq _02054D24
_02054C90:
	add r1, sp, #0
	mov r0, r4
	bl FUN_020535bc
	ldrb r1, [sp, #0x34]
	cmp r1, #0
	beq _02054CD0
	cmp r9, #0
	cmpne r0, #0xc8
	addlt r1, r6, #0x1000
	strltb r7, [r1, #0x908]
	blt _02054CD0
	cmp r8, #0
	ldrne r1, _02054D50 ; =0x000005DC
	cmpne r0, r1
	addlt r1, r6, #0x1000
	strltb r7, [r1, #0x908]
_02054CD0:
	ldr r1, [r6, #0x14]
	cmp r0, r1
	bge _02054D00
	ldr r1, [r4]
	mov r0, #4
	str r1, [r10]
	ldr r1, [sp, #4]
	add sp, sp, #0xc
	str r1, [r10, #4]
	ldr r1, [r4, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054D00:
	ldr r1, [sp]
	mov r0, #5
	str r1, [r10]
	ldr r1, [sp, #4]
	str r1, [r10, #4]
	ldr r1, [sp, #8]
	add sp, sp, #0xc
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054D24:
	ldr r1, [sp]
	mov r0, #1
	str r1, [r10]
	ldr r1, [sp, #4]
	str r1, [r10, #4]
	ldr r1, [sp, #8]
	str r1, [r10, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054D48: .word unk_02099EE8
_02054D4C: .word unk_02099EB0
_02054D50: .word 0x000005DC
	arm_func_end FUN_02054b04

	arm_func_start FUN_02054d54
FUN_02054d54: ; 0x02054D54
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_02054ab4
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_02054e6c
	mov r1, r4
	mov r0, #0
	mov r2, #0xd4
	bl MIi_CpuClearFast
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054d54

	arm_func_start FUN_02054d9c
FUN_02054d9c: ; 0x02054D9C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	str r5, [r6, #0x60]
	strb r4, [r6, #0x65]
	bl FUN_02055be0
	strb r0, [r6, #0x67]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02054d9c

	arm_func_start FUN_02054dd8
FUN_02054dd8: ; 0x02054DD8
	stmfd sp!, {r3, lr}
	ldrb r3, [r1, #0xa6]
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _02054E44
_02054DEC: ; jump table
	b _02054DFC ; case 0
	b _02054E0C ; case 1
	b _02054E44 ; case 2
	b _02054E1C ; case 3
_02054DFC:
	ldr r2, _02054E4C ; =0x0000C352
	mov r3, #3
	bl FUN_02054d9c
	ldmfd sp!, {r3, pc}
_02054E0C:
	ldr r2, _02054E50 ; =0x0000C351
	mov r3, #3
	bl FUN_02054d9c
	ldmfd sp!, {r3, pc}
_02054E1C:
	cmp r2, #0
	ldr r12, _02054E50 ; =0x0000C351
	ble _02054E34
	ldr r3, [r0, #0x10]
	cmp r2, r3
	suble r12, r12, #1
_02054E34:
	mov r2, r12
	mov r3, #3
	bl FUN_02054d9c
	ldmfd sp!, {r3, pc}
_02054E44:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_02054E4C: .word 0x0000C352
_02054E50: .word 0x0000C351
	arm_func_end FUN_02054dd8

	arm_func_start FUN_02054e54
FUN_02054e54: ; 0x02054E54
	ldr r2, _02054E64 ; =0x0000C350
	ldr r12, _02054E68 ; =FUN_02054d9c
	mov r3, #3
	bx r12
_02054E64: .word 0x0000C350
_02054E68: .word FUN_02054d9c
	arm_func_end FUN_02054e54

	arm_func_start FUN_02054e6c
FUN_02054e6c: ; 0x02054E6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x5c]
	add r0, r5, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543dc
	ldr r1, [r4, #0x5c]
	add r0, r5, #0x28
	bl FUN_02054710
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x5c]
	mov r0, r5
	mov r2, #0
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054e6c

	arm_func_start FUN_02054edc
FUN_02054edc: ; 0x02054EDC
	cmp r1, #0
	ldrneb r0, [r1, #0x2d]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02054edc

	arm_func_start FUN_02054ef4
FUN_02054ef4: ; 0x02054EF4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r3, [r1, #0x2e]
	cmp r3, #0
	movgt r3, #1
	movle r3, #0
	strleh r3, [r1, #0x2e]
	strb r3, [r1, #0x2d]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02054e54
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02054ef4

	arm_func_start FUN_02054f28
FUN_02054f28: ; 0x02054F28
	stmfd sp!, {r4, lr}
	ldr r1, _02054F44 ; =0x020906E8
	mov r4, r0
	str r1, [r4]
	bl FUN_02054f60
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02054F44: .word unk_020906E8
	arm_func_end FUN_02054f28

	arm_func_start FUN_02054f48
FUN_02054f48: ; 0x02054F48
	bx lr
	arm_func_end FUN_02054f48

	arm_func_start FUN_02054f4c
FUN_02054f4c: ; 0x02054F4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054f4c

	arm_func_start FUN_02054f60
FUN_02054f60: ; 0x02054F60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x28
	bl FUN_02054608
	mov r4, #0
	ldr r2, _02055000 ; =0x000013E0
	mov r1, r4
	add r0, r5, #0x40
	bl MI_CpuFill8
	add r0, r5, #0x420
	mov r1, r4
	add r0, r0, #0x1000
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r5, #0x430
	add r0, r0, #0x1000
	mov r1, #0x200
	mov r2, #6
	bl FUN_0205446c
	add r0, r5, #0x1000
	str r4, [r0, #0x8f8]
	str r4, [r0, #0x8fc]
	strb r4, [r0, #0x908]
	add r0, r5, #0x1900
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	str r4, [r5, #0x10]
	str r4, [r5, #0x14]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	add r0, r5, #0x1000
	strb r4, [r0, #0x913]
	strb r4, [r0, #0x916]
	strb r4, [r0, #0x917]
	str r4, [r0, #0x918]
	strb r4, [r0, #0x91c]
	strb r4, [r0, #0x91d]
	ldmfd sp!, {r3, r4, r5, pc}
_02055000: .word 0x000013E0
	arm_func_end FUN_02054f60

	arm_func_start FUN_02055004
FUN_02055004: ; 0x02055004
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x74
	mov r4, r1
	cmp r4, #0
	mov r8, r0
	mov r6, r2
	mov r7, r3
	addle sp, sp, #0x74
	mvnle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _02055194 ; =0x00000FFF
	ldr r0, _02055198 ; =gLogicThink
	and r4, r4, r5
	mov r1, r4, lsl #0x10
	add r2, sp, #0xc
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x74
	subeq r0, r5, #0x1000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3]
	mov r2, r6
	blx r3
	mov r6, r0
	mov r0, r8
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	addeq sp, sp, #0x74
	subeq r0, r5, #0x1000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020550BC
	bl FUN_0206dcd4
	mov r1, r7, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206de90
_020550BC:
	mov r5, #0
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl FUN_020548c4
	cmp r0, #0
	ldrne r1, [sp, #0x90]
	addne sp, sp, #0x74
	strneb r1, [r0, #0x67]
	strneh r7, [r0, #0xa8]
	movne r0, r6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl FUN_02054950
	movs r4, r0
	addeq sp, sp, #0x74
	subeq r0, r5, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_02054268
	add r1, sp, #0xc
	mov r0, r4
	bl FUN_020541bc
	ldr r0, [sp, #0x90]
	mov r1, r5
	str r6, [r4, #0x5c]
	bl FUN_02055bd4
	str r0, [r4, #0x60]
	strb r5, [r4, #0x64]
	ldr r1, [sp, #0x90]
	strb r5, [r4, #0x65]
	strb r1, [r4, #0x67]
	ldr r0, _0205519C ; =0x00000555
	strh r7, [r4, #0xa8]
	str r0, [r4, #0x9c]
	mov r0, r4
	mov r1, #0x39
	bl FUN_020543c8
	ldr r0, [r4, #0x9c]
	sub r3, sp, #8
	stmib sp, {r0, r5}
	add r0, r4, #0x84
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r4, #0xac
	mov r1, #1
	ldmia r3, {r2, r3}
	bl FUN_0205413c
	ldrsb r0, [r4, #0xb9]
	orr r0, r0, #0x10
	strb r0, [r4, #0xb9]
	ldr r0, [r4, #0x5c]
	add sp, sp, #0x74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02055194: .word 0x00000FFF
_02055198: .word gLogicThink
_0205519C: .word 0x00000555
	arm_func_end FUN_02055004

	arm_func_start FUN_020551a0
FUN_020551a0: ; 0x020551A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x68
	mov r5, r1
	cmp r5, #0
	mov r6, r0
	mov r7, r2
	mov r4, r3
	addle sp, sp, #0x68
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0205526C ; =0x00000FFF
	ldr r0, _02055270 ; =gLogicThink
	and r5, r5, r1
	mov r1, r5, lsl #0x10
	add r2, sp, #0
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3]
	mov r2, r7
	blx r3
	mov r8, r0
	mov r0, r6
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_020efa9c
	mov r0, r6
	mov r1, r8
	mov r2, r7
	bl FUN_020548c4
	cmp r4, #0
	mov r1, #0x40
	beq _02055260
	bl FUN_020543c8
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02055260:
	bl FUN_020543dc
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205526C: .word 0x00000FFF
_02055270: .word gLogicThink
	arm_func_end FUN_020551a0

	arm_func_start FUN_02055274
FUN_02055274: ; 0x02055274
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054d54
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055274

	arm_func_start FUN_02055294
FUN_02055294: ; 0x02055294
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r1, r5
	mov r6, r0
	bl FUN_02054938
	mov r4, r0
_020552AC:
	mov r0, r6
	mov r1, r4
	bl FUN_02054d54
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _020552AC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055294

	arm_func_start FUN_020552cc
FUN_020552cc: ; 0x020552CC
	ldr r12, _020552D8 ; =FUN_020548c4
	mov r2, #0
	bx r12
_020552D8: .word FUN_020548c4
	arm_func_end FUN_020552cc

	arm_func_start FUN_020552dc
FUN_020552dc: ; 0x020552DC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	blt _020552F4
	ldr r2, [r0, #0x38]
	cmp r1, r2
	blt _020552FC
_020552F4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020552FC:
	add r1, r0, r1, lsl #2
	ldr r1, [r1, #0x28]
	mov r2, #0
	bl FUN_020548c4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020552dc

	arm_func_start FUN_02055310
FUN_02055310: ; 0x02055310
	ldr r1, [r0, #0x3c]
	ldr r12, _02055320 ; =FUN_020548c4
	mov r2, #0
	bx r12
_02055320: .word FUN_020548c4
	arm_func_end FUN_02055310

	arm_func_start FUN_02055324
FUN_02055324: ; 0x02055324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r1, r4
	mov r7, r0
	bl FUN_02054938
	movs r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #1
_0205534C:
	mov r0, r7
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	beq _02055370
	ldr r0, [r5, #0x5c]
	cmp r0, r6
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02055370:
	add r4, r4, #1
	cmp r4, #0x18
	add r5, r5, #0xd4
	ble _0205534C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055324

	arm_func_start FUN_02055388
FUN_02055388: ; 0x02055388
	stmfd sp!, {r3, r4, r5, lr}
	sub r1, r1, #1
	mov r5, r0
	bl FUN_02054938
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r4, #0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02055388

	arm_func_start FUN_020553c0
FUN_020553c0: ; 0x020553C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r1, r5
	mov r7, r0
	bl FUN_02054938
	mov r4, r0
	mov r6, r5
_020553DC:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	add r6, r6, #1
	addne r5, r5, #1
	cmp r6, #0x18
	add r4, r4, #0xd4
	blt _020553DC
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020553c0

	arm_func_start FUN_02055408
FUN_02055408: ; 0x02055408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	mov r7, r0
	bl FUN_02054938
	mov r4, r0
_02055424:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	beq _02055444
	subs r6, r6, #1
	ldrmi r0, [r4, #0x5c]
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
_02055444:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02055424
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055408

	arm_func_start FUN_0205545c
FUN_0205545c: ; 0x0205545C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	mov r7, r0
	bl FUN_02054938
	mov r4, r0
_02055478:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	beq _02055498
	subs r6, r6, #1
	movmi r0, r4
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
_02055498:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02055478
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205545c

	arm_func_start FUN_020554b0
FUN_020554b0: ; 0x020554B0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r3, _02055510 ; =0x00000FFF
	ldr r4, [r4]
	mov r5, r0
	and r1, r1, r3
	blx r4
	mov r4, r0
	mov r0, r5
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	beq _02055508
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
_02055508:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02055510: .word 0x00000FFF
	arm_func_end FUN_020554b0

	arm_func_start FUN_02055514
FUN_02055514: ; 0x02055514
	mov r0, r1, asr #8
	str r0, [r2]
	and r0, r1, #0xff
	str r0, [r3]
	bx lr
	arm_func_end FUN_02055514

	arm_func_start FUN_02055528
FUN_02055528: ; 0x02055528
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r0
	mov r4, r3
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl FUN_02054d9c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055528

	arm_func_start FUN_02055558
FUN_02055558: ; 0x02055558
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r2
	mov r2, r5
	mov r7, r0
	bl FUN_020548c4
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	bl FUN_02054398
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055558

	arm_func_start FUN_020555a0
FUN_020555a0: ; 0x020555A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r1
	mov r1, r5
	mov r8, r0
	mov r6, r2
	bl FUN_02054938
	mov r4, r0
_020555C0:
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_02054d9c
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _020555C0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020555a0

	arm_func_start FUN_020555e8
FUN_020555e8: ; 0x020555E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r5, r1
	mov r6, r0
	mov r4, #0
	add r7, sp, #8
	mov r1, r2
	mov r0, r5
	mov r2, r4
	mov r8, r3
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	bl FUN_020548c4
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	ldmeqia r7, {r0, r1, r2}
	addeq sp, sp, #0x14
	stmeqia r6, {r0, r1, r2}
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x30]
	str r8, [r4, #0x84]
	ldr r0, [sp, #0x34]
	str r1, [r4, #0x88]
	str r0, [r4, #0x8c]
	cmp r4, #0
	beq _02055690
	ldr r1, [r4, #0x5c]
	add r0, r5, #0x28
	bl FUN_02054854
	cmp r0, #0
	blt _02055690
	ldr r1, [sp, #0x40]
	cmp r1, #0
	movne r1, #0x55
	mulne r1, r0, r1
	ldrne r0, [r4, #0x8c]
	subne r0, r0, r1
	strne r0, [r4, #0x8c]
_02055690:
	add r2, r4, #0x84
	str r2, [sp]
	mov r12, #0
	mov r0, r5
	mov r1, r4
	mov r3, r2
	str r12, [sp, #4]
	bl FUN_02054b04
	ldr r0, [r4, #0x84]
	ldr r2, [sp, #0x3c]
	str r0, [r4, #0x78]
	ldr r1, [r4, #0x88]
	mov r0, r5
	str r1, [r4, #0x7c]
	ldr r3, [r4, #0x8c]
	mov r1, r4
	str r3, [r4, #0x80]
	bl FUN_02054ef4
	mov r0, r5
	mov r1, r4
	bl FUN_02054ad4
	cmp r0, #0
	ldrne r0, [sp, #0x38]
	cmpne r0, #0
	beq _0205570C
	ldrh r3, [r4, #0x6a]
	add r0, r5, #0x430
	ldr r1, [r4, #0x84]
	ldr r2, [r4, #0x8c]
	add r0, r0, #0x1000
	bl FUN_020545b0
_0205570C:
	add r0, r4, #0x84
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020555e8

	arm_func_start FUN_02055720
FUN_02055720: ; 0x02055720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r6, r2
	mov r2, r4
	mov r7, r0
	bl FUN_020548c4
	mov r5, r0
	mov r0, r7
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	beq _02055778
	add r2, r5, #0x84
	mov r0, r7
	mov r1, r5
	mov r3, r2
	stmia sp, {r2, r4}
	bl FUN_02054b04
_02055778:
	ldr r0, [r5, #0x84]
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x88]
	str r0, [r5, #0x7c]
	ldr r0, [r5, #0x8c]
	str r0, [r5, #0x80]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055720

	arm_func_start FUN_02055798
FUN_02055798: ; 0x02055798
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r4, r1
	mov r1, r6
	bl FUN_02054938
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	and r4, r4, #0xff
_020557B8:
	mov r0, r5
	mov r1, r4
	bl FUN_02054424
	add r6, r6, #1
	cmp r6, #0x18
	add r5, r5, #0xd4
	blt _020557B8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055798

	arm_func_start FUN_020557d8
FUN_020557d8: ; 0x020557D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r2, #0
	mov r6, r0
	bl FUN_020548c4
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, #1
	strb r5, [r4, #0x2c]
	bl FUN_02054ef4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020557d8

	arm_func_start FUN_0205581c
FUN_0205581c: ; 0x0205581C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	mov r2, #0
	mov r7, r0
	mov r5, r3
	bl FUN_020548c4
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x2c
	str r12, [sp]
	bl FUN_02054204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205581c

	arm_func_start FUN_0205586c
FUN_0205586c: ; 0x0205586C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_02054ef4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205586c

	arm_func_start FUN_02055890
FUN_02055890: ; 0x02055890
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r2
	mov r2, r5
	mov r8, r0
	mov r7, r1
	bl FUN_020548c4
	mov r4, r0
	mov r0, r8
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7
	add r0, r8, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movge r0, r5
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7
	add r0, r8, #0x28
	bl FUN_02054834
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x28
	bl FUN_02054620
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543c8
	mov r0, r8
	mov r1, r7
	mov r2, #2
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02055890

	arm_func_start FUN_02055938
FUN_02055938: ; 0x02055938
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r2
	mov r2, r5
	mov r8, r0
	mov r7, r1
	bl FUN_020548c4
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	bl FUN_02054e6c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	beq _02055998
	ldr r0, [r4, #0x5c]
	cmp r0, r7
	bne _02055998
	mov r0, r8
	bl FUN_02055af0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02055998:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02055938

	arm_func_start FUN_020559a0
FUN_020559a0: ; 0x020559A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054ab4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020559a0

	arm_func_start FUN_020559c0
FUN_020559c0: ; 0x020559C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x28
	mov r5, r1
	bl FUN_020547bc
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	ldr r4, [r6, #0x28]
	cmp r4, r5
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	mov r2, r5
	add r0, r6, #0x28
	bl FUN_02054780
	mov r0, r6
	mov r1, r4
	mov r2, #2
	bl FUN_020557d8
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020559c0

	arm_func_start FUN_02055a28
FUN_02055a28: ; 0x02055A28
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054ad4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055a28

	arm_func_start FUN_02055a48
FUN_02055a48: ; 0x02055A48
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_020549c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055a48

	arm_func_start FUN_02055a68
FUN_02055a68: ; 0x02055A68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r2, r5
	mov r7, r0
	mov r6, r1
	bl FUN_020548c4
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movge r0, r5
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x28
	bl FUN_020547f4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543c8
	mov r0, r7
	mov r1, r6
	mov r2, #2
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055a68

	arm_func_start FUN_02055af0
FUN_02055af0: ; 0x02055AF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r2, r5
	bl FUN_020548c4
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543dc
	add r0, r6, #0x28
	bl FUN_02054828
	ldr r1, [r4, #0x5c]
	mov r0, r6
	mov r2, r5
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055af0

	arm_func_start FUN_02055b5c
FUN_02055b5c: ; 0x02055B5C
	ldr r12, _02055B68 ; =FUN_02054834
	add r0, r0, #0x28
	bx r12
_02055B68: .word FUN_02054834
	arm_func_end FUN_02055b5c

	arm_func_start FUN_02055b6c
FUN_02055b6c: ; 0x02055B6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054edc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055b6c

	arm_func_start FUN_02055b8c
FUN_02055b8c: ; 0x02055B8C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	and r1, r4, #0x5e
	bl FUN_020543c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055b8c

	arm_func_start FUN_02055bb0
FUN_02055bb0: ; 0x02055BB0
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	and r1, r4, #0x5e
	bl FUN_020543dc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055bb0

	arm_func_start FUN_02055bd4
FUN_02055bd4: ; 0x02055BD4
	mov r2, #0x3e8
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_02055bd4

	arm_func_start FUN_02055be0
FUN_02055be0: ; 0x02055BE0
	ldr r3, _02055BF4 ; =0x10624DD3
	mov r1, r0, lsr #0x1f
	smull r2, r0, r3, r0
	add r0, r1, r0, asr #6
	bx lr
_02055BF4: .word 0x10624DD3
	arm_func_end FUN_02055be0

	arm_func_start FUN_02055bf8
FUN_02055bf8: ; 0x02055BF8
	ldr r3, _02055C1C ; =0x10624DD3
	mov r1, r0, lsr #0x1f
	smull r2, r12, r3, r0
	add r12, r1, r12, asr #6
	mov r3, #0x3e8
	smull r1, r2, r3, r12
	sub r12, r0, r1
	mov r0, r12
	bx lr
_02055C1C: .word 0x10624DD3
	arm_func_end FUN_02055bf8

	arm_func_start FUN_02055c20
FUN_02055c20: ; 0x02055C20
	add r0, r0, #0x28
	bx lr
	arm_func_end FUN_02055c20

	arm_func_start FUN_02055c28
FUN_02055c28: ; 0x02055C28
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r12, #0
	add lr, sp, #0
	cmp r2, #0
	movlt r2, r12
	mov r3, r0
	str r12, [lr]
	str r12, [lr, #4]
	str r12, [lr, #8]
	cmp r2, #0
	bne _02055C6C
	add r0, r1, #0x1000
	ldr r2, [r0, #0x430]
	ldr r1, [r0, #0x434]
	ldr r0, [r0, #0x438]
	b _02055C90
_02055C6C:
	cmp r2, #4
	bgt _02055C9C
	sub r2, r2, #1
	mov r0, #0xc
	mla r0, r2, r0, r1
	add r0, r0, #0x1000
	ldr r2, [r0, #0x8c8]
	ldr r1, [r0, #0x8cc]
	ldr r0, [r0, #0x8d0]
_02055C90:
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
_02055C9C:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_02055c28

	arm_func_start FUN_02055cb0
FUN_02055cb0: ; 0x02055CB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	mov r2, r7
	ldr r9, [sp, #0x2c]
	ldr r8, [sp, #0x30]
	mov r4, r0
	bl FUN_020548c4
	movs r6, r0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x28]
	mov r5, #1
	str r1, [r6, #0x30]
	str r9, [r6, #0x34]
	ldr r1, [sp, #0x34]
	mov r2, r5
	str r8, [r6, #0x38]
	mov r3, #2
	strb r3, [r6, #0x2d]
	bl FUN_0205436c
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_02054dd8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_02055cb0

	arm_func_start FUN_02055d2c
FUN_02055d2c: ; 0x02055D2C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	strneb r4, [r0, #0xa7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055d2c

	arm_func_start FUN_02055d48
FUN_02055d48: ; 0x02055D48
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r2, r4
	bl FUN_020548c4
	cmp r0, #0
	ldrneb r4, [r0, #0xa7]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055d48

	arm_func_start FUN_02055d68
FUN_02055d68: ; 0x02055D68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x54
	str r0, [sp, #4]
	mov r7, r1
	mov r5, #0
	bl FUN_02054f60
	mov r6, r5
	mov r4, #1
_02055D88:
	mov r0, r6, lsl #6
	ldrh r1, [r7, r0]
	cmp r1, #0
	beq _02055E74
	add r3, r7, r0
	ldrb r2, [r3, #0x39]
	ldr r0, [sp, #4]
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrh r3, [r3, #0x3a]
	bl FUN_02055004
	mov r1, r0
	ldr r0, [sp, #4]
	mov r2, r5
	bl FUN_020548c4
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r7, r6, lsl #6
	ldrb r2, [r1, #3]
	strb r2, [r0, #0x2c]
	ldr r2, [r1, #4]
	str r2, [r0, #0x40]
	ldr r2, [r1, #8]
	str r2, [r0, #0x44]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0x48]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x4c]
	ldr r2, [r1, #0x20]
	str r2, [r0, #0x50]
	ldr r2, [r1, #0x24]
	str r2, [r0, #0x54]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x58]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x84]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x88]
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x8c]
	strb r4, [r0, #0x69]
	ldrh r2, [r1, #0x2c]
	strh r2, [r0, #0x6a]
	ldrh r2, [r1, #0x2e]
	strh r2, [r0, #0xa4]
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x9c]
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x60]
	ldrb r2, [r1, #0x38]
	strb r2, [r0, #0x65]
	ldrb r2, [r1, #0x39]
	strb r2, [r0, #0x67]
	ldrh r2, [r1, #0x3a]
	strh r2, [r0, #0xa8]
	ldrb r1, [r1, #0x3c]
	strb r1, [r0, #0xa7]
_02055E74:
	add r6, r6, #1
	cmp r6, #0x18
	blt _02055D88
	mov r2, #0
_02055E84:
	add r0, r7, r2, lsl #2
	ldr r1, [r0, #0x600]
	ldr r0, [sp, #4]
	add r0, r0, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x28]
	cmp r2, #4
	blt _02055E84
	add r0, r7, #0x600
	ldrsb r3, [r0, #0x14]
	ldr r0, [sp, #4]
	mov r2, r0
	str r3, [r2, #0x38]
	ldr r1, [r0, #0x28]
	ldr r4, [r7, #0x610]
	mov r3, r0
	mov r2, #0
	str r4, [r3, #0x3c]
	bl FUN_020548c4
	cmp r0, #0
	beq _02055EF4
	ldr r1, [sp, #4]
	ldrh r3, [r0, #0x6a]
	add r4, r1, #0x430
	ldr r1, [r0, #0x84]
	ldr r2, [r0, #0x8c]
	add r0, r4, #0x1000
	bl FUN_020545b0
_02055EF4:
	mov r6, #0
	mov r7, r6
	add r4, sp, #0x18
	mov r8, #0xc
_02055F04:
	ldr r0, [sp, #4]
	mov r2, r5
	add r0, r0, r7, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [sp, #4]
	bl FUN_020548c4
	cmp r0, #0
	beq _02055F48
	mul r3, r7, r8
	ldr r2, [r0, #0x84]
	ldr r1, [r0, #0x8c]
	ldrh r0, [r0, #0x6a]
	str r2, [r4, r3]
	add r2, r4, r3
	str r1, [r2, #4]
	str r0, [r2, #8]
	add r6, r6, #1
_02055F48:
	add r7, r7, #1
	cmp r7, #4
	blt _02055F04
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r1, [r0, #0x3c]
	bl FUN_020548c4
	cmp r0, #0
	beq _02055F9C
	mov r1, #0xc
	mul r7, r6, r1
	ldr r5, [r0, #0x84]
	add r4, sp, #0x18
	ldr r3, [r0, #0x8c]
	ldrh r1, [r0, #0x6a]
	add r2, sp, #0x1c
	str r5, [r4, r7]
	add r0, sp, #0x20
	str r3, [r2, r7]
	str r1, [r0, r7]
	add r6, r6, #1
_02055F9C:
	sub r0, r6, #1
	str r0, [sp, #8]
	cmp r0, #0
	ble _02056084
	ldr r0, [sp, #4]
	add r0, r0, #0x430
	str r0, [sp, #0x10]
_02055FB8:
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x8c4]
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _02056070
	ldr r0, [sp, #8]
	mov r1, #0xc
	mul r1, r0, r1
	add r0, sp, #0x18
	add r0, r0, r1
	ldr r7, [r0, #-4]
	ldr r8, [r0, #-8]
	ldmib r0, {r2, r3}
	ldr r9, [r0, #-0xc]
	add r0, sp, #0x18
	ldr r1, [r0, r1]
	sub r0, r3, r7
	str r0, [sp, #0xc]
	sub r11, r2, r8
	sub r10, r1, r9
_0205600C:
	mul r0, r6, r10
	ldr r1, [sp, #0x14]
	ldr r4, [r1, #0x8c4]
	mov r1, r4
	bl _s32_div_f
	mov r5, r0
	mul r0, r6, r11
	mov r1, r4
	bl _s32_div_f
	mov r1, r4
	mov r4, r0
	ldr r0, [sp, #0xc]
	mul r0, r6, r0
	bl _u32_div_f
	mov r3, #1
	str r3, [sp]
	add r3, r7, r0
	ldr r0, [sp, #0x10]
	add r1, r9, r5
	add r2, r8, r4
	add r0, r0, #0x1000
	bl FUN_0205449c
	sub r6, r6, #1
	cmp r6, #0
	bgt _0205600C
_02056070:
	ldr r0, [sp, #8]
	sub r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0
	bgt _02055FB8
_02056084:
	ldr r0, [sp, #4]
	mov r4, #1
	add r0, r0, #0x430
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r0, #0x1000
	str r4, [sp]
	bl FUN_0205449c
	mov r0, r4
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02055d68

	arm_func_start FUN_020560b4
FUN_020560b4: ; 0x020560B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, #0x620
	bl MI_CpuFill8
_020560D4:
	mov r0, r7
	mov r1, r5
	bl FUN_02054938
	movs r4, r0
	beq _0205619C
	bl FUN_020542b0
	mov r1, r5, lsl #6
	strh r0, [r6, r1]
	mov r0, r4
	bl FUN_020542bc
	add r1, r6, r5, lsl #6
	strb r0, [r1, #2]
	ldrb r0, [r4, #0x2c]
	strb r0, [r1, #3]
	ldr r0, [r4, #0x40]
	str r0, [r1, #4]
	ldr r0, [r4, #0x44]
	str r0, [r1, #8]
	ldr r0, [r4, #0x48]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x4c]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x20]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x24]
	ldr r0, [r4, #0x58]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x84]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x88]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x8c]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x6a]
	strh r0, [r1, #0x2c]
	ldrh r0, [r4, #0xa4]
	strh r0, [r1, #0x2e]
	ldr r0, [r4, #0x9c]
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x60]
	str r0, [r1, #0x34]
	ldrb r0, [r4, #0x65]
	strb r0, [r1, #0x38]
	ldrb r0, [r4, #0x67]
	strb r0, [r1, #0x39]
	ldrh r0, [r4, #0xa8]
	strh r0, [r1, #0x3a]
	ldrb r0, [r4, #0xa7]
	strb r0, [r1, #0x3c]
_0205619C:
	add r5, r5, #1
	cmp r5, #0x18
	blt _020560D4
	mov r2, #0
_020561AC:
	add r0, r7, r2, lsl #2
	ldr r1, [r0, #0x28]
	add r0, r6, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x600]
	cmp r2, #4
	blt _020561AC
	ldr r0, [r7, #0x38]
	add r1, r7, #0x1000
	strb r0, [r6, #0x614]
	ldr r2, [r7, #0x3c]
	mov r0, #1
	str r2, [r6, #0x610]
	ldr r2, [r1, #0x900]
	str r2, [r6, #0x618]
	ldr r1, [r1, #0x904]
	str r1, [r6, #0x61c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020560b4

	arm_func_start FUN_020561f4
FUN_020561f4: ; 0x020561F4
	cmp r1, #0
	addge r3, r0, #0x1000
	strge r1, [r3, #0x900]
	cmp r2, #0
	addge r0, r0, #0x1000
	strge r2, [r0, #0x904]
	bx lr
	arm_func_end FUN_020561f4

	arm_func_start FUN_02056210
FUN_02056210: ; 0x02056210
	add r0, r0, #0x1000
	ldr r3, [r0, #0x900]
	str r3, [r1]
	ldr r0, [r0, #0x904]
	str r0, [r2]
	bx lr
	arm_func_end FUN_02056210

	arm_func_start FUN_02056228
FUN_02056228: ; 0x02056228
	ldr r2, [r0, #4]
	cmp r2, #0
	cmpne r1, #0
	ble _02056244
	ldr r0, [r0, #8]
	cmp r1, r0
	ble _0205624C
_02056244:
	mov r0, #0
	bx lr
_0205624C:
	sub r0, r1, #1
	add r0, r2, r0, lsl #3
	bx lr
	arm_func_end FUN_02056228

	arm_func_start FUN_02056258
FUN_02056258: ; 0x02056258
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r7, r3
	mov r9, r1
	mov r6, #0
	mov r8, r2
	mov r1, r7
	mov r2, r6
	mov r10, r0
	bl FUN_0205649c
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
	mov r0, r10
	mov r1, r6
	mov r2, r11
	bl FUN_0205649c
	mov r5, r0
	mov r0, r10
	mov r1, r5
	bl FUN_02056228
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02056338 ; =0x02099F58
	ldr r2, [r10, #0x20]
	ldr r0, [r0]
	mov r1, r9
	str r11, [sp]
	str r6, [sp, #4]
	mov r3, r8
	add r0, r0, #4
	str r6, [sp, #8]
	bl FUN_02058684
	mov r8, r0
	cmp r8, #0
	addle sp, sp, #0xc
	movle r0, r6
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02056338 ; =0x02099F58
	mov r1, r8
	ldr r0, [r0]
	bl FUN_ov16_02116920
	mov r0, r10
	mov r1, r5
	bl FUN_02056520
	strh r8, [r4]
	str r7, [r4, #4]
	mov r0, r5
	str r11, [r10, #0x10]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02056338: .word unk_02099F58
	arm_func_end FUN_02056258

	arm_func_start FUN_0205633c
FUN_0205633c: ; 0x0205633C
	stmfd sp!, {r4, lr}
	ldr r1, _02056358 ; =0x0209072C
	mov r4, r0
	str r1, [r4]
	bl FUN_020563a4
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02056358: .word unk_0209072C
	arm_func_end FUN_0205633c

	arm_func_start FUN_0205635c
FUN_0205635c: ; 0x0205635C
	stmfd sp!, {r4, lr}
	ldr r1, _02056378 ; =0x0209072C
	mov r4, r0
	str r1, [r4]
	bl FUN_02056418
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02056378: .word unk_0209072C
	arm_func_end FUN_0205635c

	arm_func_start FUN_0205637c
FUN_0205637c: ; 0x0205637C
	stmfd sp!, {r4, lr}
	ldr r1, _020563A0 ; =0x0209072C
	mov r4, r0
	str r1, [r4]
	bl FUN_02056418
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020563A0: .word unk_0209072C
	arm_func_end FUN_0205637c

	arm_func_start FUN_020563a4
FUN_020563a4: ; 0x020563A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	mov r4, #0xc
	mov r2, r4
	add r1, r5, #0x14
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	bl MIi_CpuClearFast
	sub r0, r4, #0xd
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020563a4

	arm_func_start FUN_020563dc
FUN_020563dc: ; 0x020563DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r4, r2
	bl FUN_020563a4
	mov r0, r5, lsl #3
	mvn r1, #0
	bl L5FS_AllocateClear
	cmp r0, #0
	str r0, [r6, #4]
	moveq r0, #0
	strne r5, [r6, #8]
	strne r4, [r6, #0xc]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020563dc

	arm_func_start FUN_02056418
FUN_02056418: ; 0x02056418
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r7, [r8, #4]
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r5, #0
	ldr r4, _02056498 ; =0x02099F58
	b _02056470
_0205643C:
	ldrh r1, [r7]
	cmp r1, #0
	beq _02056460
	ldr r0, [r4]
	bl FUN_ov16_02116910
	ldr r0, [r4]
	ldrh r1, [r7]
	add r0, r0, #4
	bl FUN_02058ee0
_02056460:
	strh r5, [r7]
	str r5, [r7, #4]
	add r6, r6, #1
	add r7, r7, #8
_02056470:
	ldr r0, [r8, #8]
	cmp r6, r0
	ble _0205643C
	ldr r0, [r8, #4]
	bl L5FS_Deallocate
	mov r0, r8
	bl FUN_02056684
	mov r0, r8
	bl FUN_020563a4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02056498: .word unk_02099F58
	arm_func_end FUN_02056418

	arm_func_start FUN_0205649c
FUN_0205649c: ; 0x0205649C
	ldr r3, [r0, #4]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0
	cmpeq r1, #0
	moveq r0, #0
	bxeq lr
	ldr r12, [r0, #8]
	mov r0, #1
	cmp r12, #1
	blt _020564E8
_020564CC:
	ldr r2, [r3, #4]
	cmp r2, r1
	bxeq lr
	add r0, r0, #1
	cmp r0, r12
	add r3, r3, #8
	ble _020564CC
_020564E8:
	mov r0, #0
	bx lr
	arm_func_end FUN_0205649c

	arm_func_start FUN_020564f0
FUN_020564f0: ; 0x020564F0
	stmfd sp!, {r3, lr}
	bl FUN_02056228
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _0205651C ; =0x02099F58
	ldrh r1, [r0]
	ldr r0, [r2]
	add r0, r0, #4
	bl FUN_02058e30
	ldmfd sp!, {r3, pc}
_0205651C: .word unk_02099F58
	arm_func_end FUN_020564f0

	arm_func_start FUN_02056520
FUN_02056520: ; 0x02056520
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	bl FUN_02056228
	movs r6, r0
	beq _02056570
	ldrh r0, [r6]
	ldr r4, _02056578 ; =0x02099F58
	ldrh r1, [r6]
	cmp r0, #0
	ldr r0, [r4]
	movne r5, #1
	bl FUN_ov16_02116910
	ldr r0, [r4]
	ldrh r1, [r6]
	add r0, r0, #4
	bl FUN_02058ee0
	mov r1, r6
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClearFast
_02056570:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02056578: .word unk_02099F58
	arm_func_end FUN_02056520

	arm_func_start FUN_0205657c
FUN_0205657c: ; 0x0205657C
	stmfd sp!, {r3, lr}
	bl FUN_02056228
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205657c

	arm_func_start FUN_02056594
FUN_02056594: ; 0x02056594
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #1
	mov r4, #1
	blt _020565E4
_020565C0:
	mov r0, r6
	mov r1, r4
	bl FUN_020564f0
	cmp r0, #1
	ldr r0, [r6, #8]
	add r4, r4, #1
	addeq r5, r5, #1
	cmp r4, r0
	ble _020565C0
_020565E4:
	cmp r5, #0
	moveq r0, #0
	streq r0, [r6, #0x10]
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02056594

	arm_func_start FUN_020565f8
FUN_020565f8: ; 0x020565F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #1
	mov r4, #1
	blt _02056638
_02056614:
	mov r0, r6
	mov r1, r4
	bl FUN_02056520
	cmp r0, #0
	ldr r0, [r6, #8]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, r0
	ble _02056614
_02056638:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020565f8

	arm_func_start FUN_02056640
FUN_02056640: ; 0x02056640
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	bl L5FS_OpenArchiveDeferred
	str r0, [r4, #0x20]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02056640

	arm_func_start FUN_0205665c
FUN_0205665c: ; 0x0205665C
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x20]
	cmp r0, #0
	blt _0205667C
	bl L5FS_IsArchiveReady
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_0205667C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205665c

	arm_func_start FUN_02056684
FUN_02056684: ; 0x02056684
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmltfd sp!, {r4, pc}
	bl L5FS_CloseArchive
	mvn r0, #0
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02056684

	arm_func_start FUN_020566a8
FUN_020566a8: ; 0x020566A8
	ldr r2, [r0, #0x94]
	cmp r2, #0
	cmpne r1, #0
	ble _020566C4
	ldr r0, [r0, #0x98]
	cmp r1, r0
	ble _020566CC
_020566C4:
	mov r0, #0
	bx lr
_020566CC:
	sub r1, r1, #1
	mov r0, #0x18
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_020566a8

	arm_func_start FUN_020566dc
FUN_020566dc: ; 0x020566DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #1
	mov r7, r1
	mov r1, r4
	mov r8, r0
	mov r6, r2
	mov r5, #0
	bl FUN_020566a8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r8, #0x98]
	cmp r2, #1
	blt _02056730
_02056714:
	ldrb r1, [r7, r0]
	add r4, r4, #1
	add r0, r0, #0x18
	cmp r6, r1
	addeq r5, r5, #1
	cmp r4, r2
	ble _02056714
_02056730:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020566dc

	arm_func_start FUN_02056738
FUN_02056738: ; 0x02056738
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_020414fc
	mov r0, r4
	mov r1, #0x200
	bl FUN_02041518
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02056738

	arm_func_start FUN_02056754
FUN_02056754: ; 0x02056754
	ldr r12, _0205675C ; =FUN_02041618
	bx r12
_0205675C: .word FUN_02041618
	arm_func_end FUN_02056754

	arm_func_start FUN_02056760
FUN_02056760: ; 0x02056760
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _020567A4 ; =0x0209071C
	mov r4, r0
	ldr r12, _020567A8 ; =FUN_0205635c
	str r1, [r4]
	ldr r3, _020567AC ; =FUN_0205633c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x24
	str r12, [sp]
	bl __cxa_vec_ctor
	mov r0, r4
	bl FUN_02056828
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020567A4: .word unk_0209071C
_020567A8: .word FUN_0205635c
_020567AC: .word FUN_0205633c
	arm_func_end FUN_02056760

	arm_func_start FUN_020567b0
FUN_020567b0: ; 0x020567B0
	stmfd sp!, {r4, lr}
	ldr r1, _020567E0 ; =0x0209071C
	mov r4, r0
	str r1, [r4]
	bl FUN_020568a4
	ldr r3, _020567E4 ; =FUN_0205635c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x24
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020567E0: .word unk_0209071C
_020567E4: .word FUN_0205635c
	arm_func_end FUN_020567b0

	arm_func_start FUN_020567e8
FUN_020567e8: ; 0x020567E8
	stmfd sp!, {r4, lr}
	ldr r1, _02056820 ; =0x0209071C
	mov r4, r0
	str r1, [r4]
	bl FUN_020568a4
	ldr r3, _02056824 ; =FUN_0205635c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x24
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02056820: .word unk_0209071C
_02056824: .word FUN_0205635c
	arm_func_end FUN_020567e8

	arm_func_start FUN_02056828
FUN_02056828: ; 0x02056828
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	add r6, r4, #4
	mov r5, #0x24
_0205683C:
	mla r0, r7, r5, r6
	bl FUN_020563a4
	add r7, r7, #1
	cmp r7, #4
	blt _0205683C
	ldr r0, _0205689C ; =gL5Config
	mov r2, #0
	ldr r1, _020568A0 ; =0x02090734
	str r2, [r4, #0x94]
	str r2, [r4, #0x98]
	str r2, [r4, #0x9c]
	str r2, [r4, #0xa0]
	str r2, [r4, #0xa4]
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0xa8]
	cmp r0, #0
	moveq r0, #0xaa
	movne r1, r0, asr #4
	addne r0, r0, r1, lsr #27
	movne r0, r0, asr #5
	str r0, [r4, #0xa8]
	mov r0, #0
	str r0, [r4, #0xac]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205689C: .word gL5Config
_020568A0: .word unk_02090734
	arm_func_end FUN_02056828

	arm_func_start FUN_020568a4
FUN_020568a4: ; 0x020568A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020569c0
	mov r0, r4
	bl FUN_02057c38
	mov r0, r4
	bl FUN_02056828
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020568a4

	arm_func_start FUN_020568c4
FUN_020568c4: ; 0x020568C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, [sp, #0x18]
	ldr r7, [sp, #0x20]
	mov r6, r0
	mov r4, r3
	add r0, r1, #3
	add r3, r7, #3
	mov r5, r2
	bic r2, r0, #3
	mov r1, r4
	add r0, r6, #0x28
	bic r7, r3, #3
	bl FUN_020563dc
	ldr r1, [sp, #0x1c]
	mov r2, r7
	add r0, r6, #4
	bl FUN_020563dc
	mov r7, #0x20
	mov r1, r4
	mov r2, r7
	add r0, r6, #0x70
	bl FUN_020563dc
	ldr r1, [sp, #0x1c]
	mov r2, r7
	add r0, r6, #0x4c
	bl FUN_020563dc
	mov r4, #0x18
	mul r1, r5, r4
	ldr r0, _020569B8 ; =gL5Allocator
	bl _ZN11L5Allocator8allocateEm
	ldr r7, _020569BC ; =0x02099F58
	str r0, [r6, #0x94]
	ldr r0, [r7]
	mov r1, #3
	mov r2, r5, lsl #1
	add r0, r0, #4
	bl FUN_020596ec
	mov r1, r0
	ldr r0, [r6, #0x94]
	str r1, [r6, #0x9c]
	cmp r0, #0
	str r5, [r6, #0x98]
	cmpne r1, #0
	bgt _02056984
	mov r0, r6
	bl FUN_020568a4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02056984:
	mov r8, #1
	ldr r0, [r7]
	mov r2, r8
	bl FUN_ov16_021168f8
	mul r2, r5, r4
	ldr r1, [r6, #0x94]
	mov r0, #0
	bl MIi_CpuClearFast
	mov r0, r6
	mov r1, r5, lsl #1
	bl FUN_02056738
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020569B8: .word gL5Allocator
_020569BC: .word unk_02099F58
	arm_func_end FUN_020568c4

	arm_func_start FUN_020569c0
FUN_020569c0: ; 0x020569C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x94]
	cmp r1, #0
	beq _02056A20
	mov r7, #1
	mov r1, r7
	bl FUN_020566a8
	mov r6, r0
	ldr r5, _02056A80 ; =0x02099F58
	b _02056A00
_020569EC:
	ldrh r1, [r6, #4]
	ldr r0, [r5]
	bl FUN_ov16_02116aa8
	add r7, r7, #1
	add r6, r6, #0x18
_02056A00:
	ldr r0, [r4, #0x98]
	cmp r7, r0
	ble _020569EC
	ldr r1, [r4, #0x94]
	ldr r0, _02056A84 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x94]
_02056A20:
	mov r7, #0
	add r6, r4, #4
	mov r5, #0x24
	b _02056A3C
_02056A30:
	mla r0, r7, r5, r6
	bl FUN_02056418
	add r7, r7, #1
_02056A3C:
	cmp r7, #4
	blt _02056A30
	ldr r1, [r4, #0x9c]
	cmp r1, #0
	ble _02056A74
	ldr r5, _02056A80 ; =0x02099F58
	ldr r0, [r5]
	bl FUN_ov16_02116910
	ldr r0, [r5]
	ldr r1, [r4, #0x9c]
	add r0, r0, #4
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x9c]
_02056A74:
	mov r0, r4
	bl FUN_02056754
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02056A80: .word unk_02099F58
_02056A84: .word gL5Allocator
	arm_func_end FUN_020569c0

	arm_func_start FUN_02056a88
FUN_02056a88: ; 0x02056A88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r3, [r7, #0x94]
	mov r6, r1
	cmp r3, #0
	mov r5, r2
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #1
	mov r1, r4
	bl FUN_020566a8
	ldr r2, [r7, #0x98]
	cmp r2, #1
	blt _02056AE8
_02056AC0:
	ldrh r1, [r0, #6]
	cmp r1, r6
	ldreqb r1, [r0, #8]
	cmpeq r1, r5
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
	cmp r4, r2
	add r0, r0, #0x18
	ble _02056AC0
_02056AE8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02056a88

	arm_func_start FUN_02056af0
FUN_02056af0: ; 0x02056AF0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x18]
	mov r4, r2
	stmia sp, {r3, lr}
	ldr r12, [sp, #0x1c]
	mov r2, r1
	mov r3, r4
	mov r1, #0
	str r12, [sp, #8]
	bl FUN_02056b24
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_02056af0

	arm_func_start FUN_02056b24
FUN_02056b24: ; 0x02056B24
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x70
	mov r10, r2
	mov r5, r0
	mov r6, r10, lsl #0x10
	mov r4, r1
	mov r1, r6, lsr #0x10
	ldr r0, _02056DFC ; =gLogicThink
	add r2, sp, #8
	mov r6, r3
	mov r8, #0
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x70
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r4, #0
	mov r0, r5
	mov r1, r10
	mov r2, r6
	beq _02056B80
	bl FUN_02056a88
	b _02056BAC
_02056B80:
	bl FUN_02056a88
	movs r4, r0
	bne _02056BAC
	mov r0, r5
	mov r1, r8
	mov r2, r8
	bl FUN_02056a88
	movs r4, r0
	addeq sp, sp, #0x70
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02056BAC:
	mov r0, r5
	mov r1, r4
	bl FUN_020566a8
	movs r9, r0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _02056C14
	ldr r0, _02056DFC ; =gLogicThink
	mov r1, r7
	bl FUN_ov16_020ee064
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	mov r1, r7
	strneh r0, [r9, #0x10]
	ldr r0, _02056DFC ; =gLogicThink
	streqh r8, [r9, #0x10]
	bl FUN_ov16_020ee478
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	strneh r0, [r9, #0xe]
	streqh r8, [r9, #0xe]
_02056C14:
	mov r7, #1
	strb r7, [r9, #0x14]
	strb r7, [r9, #0x15]
	strb r7, [r9, #0x16]
	strb r7, [r9, #0x17]
	ldrh r0, [sp, #0x5c]
	ldr r1, [sp, #0x98]
	bl FUN_ov16_020f3ba4
	mov r1, r0
	mov r2, r8
	add r0, r5, #0x28
	bl FUN_0205649c
	strb r0, [r9, #1]
	ldrh r0, [sp, #0x5e]
	bl FUN_ov16_020f3bb0
	mov r1, r0
	add r0, r5, #0x70
	mov r2, r8
	bl FUN_0205649c
	strb r0, [r9, #3]
	ldrb r0, [sp, #0x64]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl FUN_ov16_020f3bb4
	mov r1, r0
	add r0, r5, #4
	mov r2, r8
	bl FUN_0205649c
	strb r0, [r9]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	bl FUN_ov16_020f3c08
	mov r1, r0
	add r0, r5, #0x4c
	mov r2, r8
	bl FUN_0205649c
	strb r0, [r9, #2]
	strh r10, [r9, #6]
	ldr r1, [sp, #0x90]
	strb r6, [r9, #8]
	ldr r0, [sp, #0x94]
	strh r1, [r9, #0xa]
	strb r0, [r9, #0xc]
	ldr r0, [sp, #0x98]
	strb r0, [r9, #0xd]
	ldrb r0, [sp, #0x5b]
	strb r0, [r9, #0x12]
	ldrh r0, [r9, #4]
	cmp r0, #0
	bne _02056DA4
	ldr r10, _02056E00 ; =0x02099F58
	mov r6, #2
	ldr r0, [r10]
	mov r1, r6
	bl FUN_ov16_021169b0
	strh r0, [r9, #4]
	ldrh r1, [r9, #4]
	cmp r1, #0
	addeq sp, sp, #0x70
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r10]
	mov r2, r6
	bl FUN_ov16_021175dc
	ldr r0, [r5, #0xa0]
	ldrh r1, [r9, #4]
	orr r2, r0, #2
	ldr r0, [r10]
	mov r3, r7
	orr r2, r2, #0x200
	bl FUN_ov16_02116cb4
	sub r0, r4, #1
	mov r0, r0, lsl #1
	bl FUN_02041708
	mov r8, r0
	sub r0, r4, #1
	mov r0, r0, lsl #1
	bl FUN_020416d4
	mov r2, r7
	mov r3, r8
	str r0, [sp]
	ldr r0, [r10]
	ldrh r1, [r9, #4]
	bl FUN_ov16_02117160
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_02041708
	mov r7, r0
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_020416d4
	mov r2, r6
	mov r3, r7
	str r0, [sp]
	ldr r0, [r10]
	ldrh r1, [r9, #4]
	bl FUN_ov16_02117160
_02056DA4:
	ldrb r0, [sp, #0x64]
	mov r3, #0
	mov r2, #1
	cmp r0, #1
	bne _02056DD8
	ldr r0, [r5, #0xa4]
	cmp r0, #0
	mov r0, #0x1000
	bne _02056DD0
	rsb r0, r0, #0
	b _02056DD0
_02056DD0:
	stmia sp, {r0, r3}
	b _02056DE0
_02056DD8:
	str r3, [sp]
	str r3, [sp, #4]
_02056DE0:
	ldr r0, _02056E00 ; =0x02099F58
	ldrh r1, [r9, #4]
	ldr r0, [r0]
	bl FUN_ov16_0211771c
	mov r0, r4
	add sp, sp, #0x70
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02056DFC: .word gLogicThink
_02056E00: .word unk_02099F58
	arm_func_end FUN_02056b24

	arm_func_start FUN_02056e04
FUN_02056e04: ; 0x02056E04
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, r2
	bl FUN_020566a8
	movs r7, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r7, #4]
	cmp r1, #0
	beq _02056E34
	ldr r0, _02056E90 ; =0x02099F58
	ldr r0, [r0]
	bl FUN_ov16_02116aa8
_02056E34:
	cmp r4, #0
	beq _02056E7C
	mov r6, #0
	add r5, r8, #4
	mov r4, #0x24
	b _02056E74
_02056E4C:
	ldrb r2, [r7, r6]
	mov r0, r8
	mov r1, r6
	bl FUN_020566dc
	cmp r0, #1
	bgt _02056E70
	mla r0, r6, r4, r5
	ldrb r1, [r7, r6]
	bl FUN_02056520
_02056E70:
	add r6, r6, #1
_02056E74:
	cmp r6, #4
	blt _02056E4C
_02056E7C:
	mov r1, r7
	mov r0, #0
	mov r2, #0x18
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02056E90: .word unk_02099F58
	arm_func_end FUN_02056e04

	arm_func_start FUN_02056e94
FUN_02056e94: ; 0x02056E94
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x98]
	mov r5, r1
	mov r4, #1
	cmp r0, #1
	ldmltfd sp!, {r4, r5, r6, pc}
_02056EB0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02056e04
	ldr r0, [r6, #0x98]
	add r4, r4, #1
	cmp r4, r0
	ble _02056EB0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02056e94

	arm_func_start FUN_02056ed4
FUN_02056ed4: ; 0x02056ED4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x168
	mov r10, r0
	mov r1, r1, lsl #0x10
	add r7, sp, #0
	mov r9, r2
	ldr r0, _0205700C ; =gLogicThink
	mov r2, r7
	mov r1, r1, lsr #0x10
	mov r8, r3
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x168
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [sp, #0x54]
	ldr r1, [sp, #0x188]
	bl FUN_ov16_020f3ba4
	mov r4, r0
	add r6, sp, #0x68
	ldr r1, _02057010 ; =0x02090744
	mov r0, r6
	mov r2, r4
	bl STD_TSPrintf
	mov r5, #2
	mov r3, r4
	add r0, r10, #0x28
	mov r1, r5
	mov r2, r6
	bl FUN_02056258
	ldrh r0, [sp, #0x56]
	bl FUN_ov16_020f3bb0
	mov r4, r0
	ldr r1, _02057014 ; =0x02090754
	mov r0, r6
	mov r2, r4
	bl STD_TSPrintf
	mov r3, r4
	mov r4, #3
	add r0, r10, #0x70
	mov r1, r4
	mov r2, r6
	bl FUN_02056258
	mov r0, r7
	mov r1, r9
	bl FUN_ov16_020f0af4
	mov r9, r0
	ldrb r0, [sp, #0x5c]
	ldr r3, [sp, #0x188]
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_020f3bb4
	mov r7, r0
	ldr r1, _02057018 ; =0x02090760
	mov r0, r6
	mov r2, r7
	bl STD_TSPrintf
	mov r1, r5
	mov r3, r7
	add r0, r10, #4
	mov r2, r6
	bl FUN_02056258
	mov r0, r9
	mov r1, r8
	bl FUN_ov16_020f3c08
	mov r5, r0
	ldr r1, _0205701C ; =0x02090770
	mov r0, r6
	mov r2, r5
	bl STD_TSPrintf
	add r0, r10, #0x4c
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_02056258
	mov r0, #1
	add sp, sp, #0x168
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205700C: .word gLogicThink
_02057010: .word unk_02090744
_02057014: .word unk_02090754
_02057018: .word unk_02090760
_0205701C: .word unk_02090770
	arm_func_end FUN_02056ed4

	arm_func_start FUN_02057020
FUN_02057020: ; 0x02057020
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x200
	add r4, sp, #0
	mov r6, #0
	mov r11, r0
	mov r0, r6
	mov r1, r4
	mov r2, #0x200
	bl MIi_CpuClearFast
	mov r5, #1
	mov r0, r11
	mov r1, r5
	bl FUN_020566a8
	cmp r0, #0
	addeq sp, sp, #0x200
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r11, #0x98]
	cmp r1, #1
	blt _020570A8
_02057070:
	mov r7, r6
_02057074:
	ldrb r2, [r0, r7]
	add r3, r4, r7, lsl #7
	add r7, r7, #1
	ldr r1, [r3, r2, lsl #2]
	cmp r7, #4
	add r1, r1, #1
	str r1, [r3, r2, lsl #2]
	blt _02057074
	ldr r1, [r11, #0x98]
	add r5, r5, #1
	cmp r5, r1
	add r0, r0, #0x18
	ble _02057070
_020570A8:
	mov r8, #0
	mov r10, r8
	add r5, r11, #4
_020570B4:
	mov r0, #0x24
	mul r6, r10, r0
	add r0, r11, r6
	ldr r7, [r0, #0xc]
	mov r9, #1
	cmp r7, #1
	blt _02057104
	add r0, sp, #0
	add r4, r0, r10, lsl #7
_020570D8:
	ldr r0, [r4, r9, lsl #2]
	cmp r0, #0
	bgt _020570F8
	mov r1, r9
	add r0, r5, r6
	bl FUN_02056520
	cmp r0, #0
	addne r8, r8, #1
_020570F8:
	add r9, r9, #1
	cmp r9, r7
	ble _020570D8
_02057104:
	add r10, r10, #1
	cmp r10, #4
	blt _020570B4
	mov r0, r8
	add sp, sp, #0x200
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02057020

	arm_func_start FUN_0205711c
FUN_0205711c: ; 0x0205711C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	mov r6, r0
	mov r8, r4
	add r7, r6, #4
	mov r5, #0x24
_02057134:
	mla r0, r8, r5, r7
	bl FUN_020565f8
	add r8, r8, #1
	cmp r8, #4
	add r4, r4, r0
	blt _02057134
	ldr r0, [r6, #0x94]
	cmp r0, #0
	beq _020571A4
	mov r5, #1
	mov r0, r6
	mov r1, r5
	bl FUN_020566a8
	ldr r1, [r6, #0x98]
	cmp r1, #1
	blt _020571A4
	mov r2, #0
	mov r3, r2
_0205717C:
	mov r1, r3
_02057180:
	strb r2, [r0, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _02057180
	ldr r1, [r6, #0x98]
	add r5, r5, #1
	cmp r5, r1
	add r0, r0, #0x18
	ble _0205717C
_020571A4:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205711c

	arm_func_start FUN_020571ac
FUN_020571ac: ; 0x020571AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r6, r7
	add r5, r0, #4
	mov r4, #0x24
_020571C0:
	mla r0, r6, r4, r5
	bl FUN_02056594
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, r0
	blt _020571C0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020571ac

	arm_func_start FUN_020571e0
FUN_020571e0: ; 0x020571E0
	stmfd sp!, {r3, lr}
	bl FUN_020566a8
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0, #4]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020571e0

	arm_func_start FUN_020571f8
FUN_020571f8: ; 0x020571F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_020566a8
	movs r2, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #4
	mov r0, #0x24
	mla r0, r4, r0, r1
	ldrb r1, [r2, r4]
	bl FUN_0205657c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020571f8

	arm_func_start FUN_0205722c
FUN_0205722c: ; 0x0205722C
	ldr r12, _02057234 ; =FUN_02041668
	bx r12
_02057234: .word FUN_02041668
	arm_func_end FUN_0205722c

	arm_func_start FUN_02057238
FUN_02057238: ; 0x02057238
	stmfd sp!, {r3, lr}
	bl FUN_02041760
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02057238

	arm_func_start FUN_02057250
FUN_02057250: ; 0x02057250
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r0
	bl FUN_02041780
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_020566a8
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, r4
	mov r8, #2
	ldr r7, _02057330 ; =0x02099F58
	b _02057310
_02057290:
	sub r0, r4, #1
	mov r0, r0, lsl #1
	bl FUN_02041708
	sub r1, r4, #1
	mov r9, r0
	mov r0, r1, lsl #1
	bl FUN_020416d4
	mov r3, r9
	str r0, [sp]
	ldr r0, [r7]
	ldrh r1, [r5, #4]
	mov r2, r10
	bl FUN_ov16_02117160
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_02041708
	mov r9, r0
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_020416d4
	mov r3, r9
	str r0, [sp]
	ldr r0, [r7]
	ldrh r1, [r5, #4]
	mov r2, r8
	bl FUN_ov16_02117160
	strb r10, [r5, #0x16]
	strb r10, [r5, #0x17]
	add r4, r4, #1
	add r5, r5, #0x18
_02057310:
	ldr r0, [r6, #0x98]
	cmp r4, r0
	ble _02057290
	mov r0, r6
	bl FUN_0205722c
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02057330: .word unk_02099F58
	arm_func_end FUN_02057250

	arm_func_start FUN_02057334
FUN_02057334: ; 0x02057334
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	mov r9, r1
	bl FUN_020566a8
	movs r6, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	ldreqb r0, [r6, #0x15]
	cmpeq r0, #0
	ldreqb r0, [r6, #0x16]
	cmpeq r0, #0
	ldreqb r0, [r6, #0x17]
	cmpeq r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	add r5, r10, #4
	mov r4, #0x24
	b _020573BC
_02057394:
	ldrb r1, [r6, r7]
	cmp r1, #0
	beq _020573B8
	mla r0, r7, r4, r5
	bl FUN_020564f0
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020573B8:
	add r7, r7, #1
_020573BC:
	cmp r7, #4
	blt _02057394
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _02057428
	ldrb r1, [r6, #1]
	add r0, r10, #0x28
	strb r1, [r6, #1]
	bl FUN_0205657c
	ldr r1, [r10, #0x9c]
	mov r0, r0, lsl #0x10
	str r1, [sp]
	ldr r4, _02057690 ; =0x02099F58
	mov r3, r0, lsr #0x10
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, #1
	bl FUN_ov16_02117180
	mov r3, r9, lsl #1
	sub r3, r3, #2
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_0211726c
	mov r0, #0
	strb r0, [r6, #0x14]
_02057428:
	ldrb r0, [r6, #0x15]
	cmp r0, #0
	beq _02057490
	ldrb r1, [r6]
	add r0, r10, #4
	strb r1, [r6]
	bl FUN_0205657c
	ldr r1, [r10, #0x9c]
	mov r0, r0, lsl #0x10
	str r1, [sp]
	mov r5, #2
	ldr r4, _02057690 ; =0x02099F58
	mov r3, r0, lsr #0x10
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02117180
	mov r3, r9, lsl #1
	sub r3, r3, #1
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_0211726c
	mov r0, #0
	strb r0, [r6, #0x15]
_02057490:
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _02057558
	ldrb r1, [r6, #3]
	add r0, r10, #0x70
	strb r1, [r6, #3]
	bl FUN_0205657c
	ldr r1, _02057690 ; =0x02099F58
	mov r2, #0
	ldr r5, [r1]
	mov r1, r0
	add r0, r5, #4
	bl FUN_02059a78
	movs r4, r0
	beq _02057550
	mov r7, #0x20
	add r2, sp, #0x10
	mov r1, r7
	mov r3, #0
	add r0, r5, #4
	bl FUN_020594f4
	ldr r1, [sp, #0x10]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r6, #0x16]
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r2, r7
	bl MIi_CpuCopyFast
	ldr r1, _02057694 ; =pLogic_PalSkin2dFile
	ldr r0, [sp, #0x10]
	ldr r2, [r1]
	ldrb r1, [r6, #0x12]
	bl FUN_ov16_020f0d58
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, r9, lsl #1
	sub r1, r1, #2
	mov r1, r1, lsl #5
	str r1, [sp, #8]
	ldr r1, [r10, #0x9c]
	ldr r2, [sp, #0x10]
	add r0, r5, #4
	mov r3, r7
	bl FUN_020592d8
_02057550:
	mov r0, #0
	strb r0, [r6, #0x16]
_02057558:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	beq _02057684
	ldrb r1, [r6, #2]
	add r0, r10, #0x4c
	strb r1, [r6, #2]
	bl FUN_0205657c
	ldr r1, _02057690 ; =0x02099F58
	mov r2, #0
	ldr r4, [r1]
	mov r1, r0
	add r0, r4, #4
	bl FUN_02059a78
	movs r5, r0
	beq _0205767C
	add r2, sp, #0x10
	mov r3, #0
	add r0, r4, #4
	mov r1, #0x20
	bl FUN_020594f4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xac]
	mov r7, #0
	cmp r0, #0
	beq _020575F0
	cmp r0, #1
	beq _020575FC
	cmp r0, #2
	moveq r0, r7
	streqh r0, [r6, #0xe]
	moveq r11, r7
	moveq r8, r7
	streqh r0, [r6, #0x10]
	b _02057604
_020575F0:
	ldrh r11, [r6, #0xe]
	ldrh r8, [r6, #0x10]
	b _02057604
_020575FC:
	ldrh r11, [r6, #0xe]
	mov r8, #0x17
_02057604:
	ldr r1, [sp, #0x10]
	mov r0, r5
	mov r2, #0x20
	bl MIi_CpuCopyFast
	ldr r0, _02057694 ; =pLogic_PalSkin2dFile
	str r8, [sp]
	ldr r1, [r0]
	ldr r0, _02057698 ; =pLogic_GlovesInfoFile
	str r1, [sp, #4]
	ldr r1, [r0]
	ldr r0, _0205769C ; =pLogic_ShoesInfoFile
	str r1, [sp, #8]
	ldr r0, [r0]
	mov r3, r11
	str r0, [sp, #0xc]
	ldrb r1, [r6, #0x13]
	ldrb r2, [r6, #0x12]
	ldr r0, [sp, #0x10]
	bl FUN_ov16_020f0d7c
	mov r0, r9, lsl #1
	sub r0, r0, #1
	str r7, [sp]
	mov r1, r0, lsl #5
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r10, #0x9c]
	ldr r2, [sp, #0x10]
	add r0, r4, #4
	mov r3, #0x20
	bl FUN_020592d8
_0205767C:
	mov r0, #0
	strb r0, [r6, #0x17]
_02057684:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02057690: .word unk_02099F58
_02057694: .word pLogic_PalSkin2dFile
_02057698: .word pLogic_GlovesInfoFile
_0205769C: .word pLogic_ShoesInfoFile
	arm_func_end FUN_02057334

	arm_func_start FUN_020576a0
FUN_020576a0: ; 0x020576A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x98]
	mov r5, #0
	cmp r0, #1
	mov r4, #1
	blt _020576E0
_020576BC:
	mov r0, r6
	mov r1, r4
	bl FUN_02057334
	cmp r0, #0
	ldr r0, [r6, #0x98]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, r0
	ble _020576BC
_020576E0:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020576a0

	arm_func_start FUN_020576e8
FUN_020576e8: ; 0x020576E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, #1
	mov r4, #2
	mov r9, r0
	mov r8, r1
	mov r6, r4
	mov r5, r7
	ldr r10, _02057754 ; =0x02099F58
	b _02057744
_0205770C:
	mov r0, r9
	mov r1, r7
	bl FUN_020566a8
	ldrh r1, [r0, #4]
	cmp r8, #0
	ldr r0, [r10]
	beq _02057738
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02117598
	b _02057740
_02057738:
	mov r2, r4
	bl FUN_ov16_021175dc
_02057740:
	add r7, r7, #1
_02057744:
	ldr r0, [r9, #0x98]
	cmp r7, r0
	ble _0205770C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02057754: .word unk_02099F58
	arm_func_end FUN_020576e8

	arm_func_start FUN_02057758
FUN_02057758: ; 0x02057758
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_020566a8
	cmp r4, #0
	beq _02057788
	ldr r2, _020577A0 ; =0x02099F58
	ldrh r1, [r0, #4]
	ldr r0, [r2]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_02117598
	ldmfd sp!, {r4, pc}
_02057788:
	ldr r2, _020577A0 ; =0x02099F58
	ldrh r1, [r0, #4]
	ldr r0, [r2]
	mov r2, #2
	bl FUN_ov16_021175dc
	ldmfd sp!, {r4, pc}
_020577A0: .word unk_02099F58
	arm_func_end FUN_02057758

	arm_func_start FUN_020577a4
FUN_020577a4: ; 0x020577A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl FUN_020566a8
	movs r6, r0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020577FC ; =0x02099F58
	ldrh r1, [r6, #4]
	mov r5, #1
	ldr r0, [r4]
	mov r2, r5
	mov r7, #0
	bl FUN_ov16_02117744
	cmp r0, #0
	beq _020577F4
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, #2
	bl FUN_ov16_02117744
	cmp r0, #0
	movne r7, r5
_020577F4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020577FC: .word unk_02099F58
	arm_func_end FUN_020577a4

	arm_func_start FUN_02057800
FUN_02057800: ; 0x02057800
	str r1, [r0, #0xa0]
	bx lr
	arm_func_end FUN_02057800

	arm_func_start FUN_02057808
FUN_02057808: ; 0x02057808
	str r1, [r0, #0xa4]
	bx lr
	arm_func_end FUN_02057808

	arm_func_start FUN_02057810
FUN_02057810: ; 0x02057810
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xa4]
	cmp r2, #0
	bne _02057828
	bl FUN_02057b90
	ldmfd sp!, {r3, pc}
_02057828:
	bl FUN_02057830
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02057810

	arm_func_start FUN_02057830
FUN_02057830: ; 0x02057830
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	mov r5, #1
	b _02057B6C
_02057844:
	mov r0, r10
	mov r1, r5
	bl FUN_020566a8
	movs r7, r0
	ldrneh r1, [r7, #6]
	cmpne r1, #0
	beq _02057B68
	ldr r4, _02057B80 ; =0x02099ED8
	ldrb r2, [r7, #8]
	ldr r0, [r4]
	bl FUN_020554b0
	mov r1, r0
	ldr r0, [r4]
	bl FUN_020552cc
	mov r8, r0
	ldr r0, _02057B84 ; =0x02099F58
	ldrh r1, [r7, #4]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_0211689c
	mov r11, r0
	ldr r0, _02057B84 ; =0x02099F58
	mov r6, #2
	ldrh r1, [r7, #4]
	ldr r0, [r0]
	mov r2, r6
	bl FUN_ov16_0211689c
	mov r9, r0
	ldr r0, _02057B84 ; =0x02099F58
	ldrh r1, [r7, #4]
	ldr r0, [r0]
	bl FUN_ov16_0211685c
	cmp r8, #0
	cmpne r0, #0
	beq _02057B68
	bl FUN_ov16_02114bf8
	mov r4, r0
	mov r0, r8
	bl FUN_020543f4
	cmp r4, r0
	beq _02057924
	mov r0, r8
	bl FUN_020543f4
	cmp r0, #0
	ldrh r1, [r7, #4]
	bne _02057910
	ldr r0, _02057B84 ; =0x02099F58
	mov r2, r6
	ldr r0, [r0]
	bl FUN_ov16_021175dc
	b _02057924
_02057910:
	ldr r0, _02057B84 ; =0x02099F58
	mov r2, r6
	ldr r0, [r0]
	mov r3, #1
	bl FUN_ov16_02117598
_02057924:
	mov r0, r8
	ldr r4, _02057B84 ; =0x02099F58
	bl FUN_020543f4
	cmp r0, #0
	beq _02057B68
	ldr r0, [r8, #0x60]
	bl FUN_02055bf8
	ldrsb r1, [r8, #0x64]
	cmp r11, #0
	add r6, r1, r0, lsl #3
	ldrnesh r1, [r11, #0x10]
	movne r0, #0
	cmpne r1, r6
	beq _02057984
	ldrb r1, [r8, #0x65]
	mov r3, r6, lsl #0x10
	mov r2, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117414
_02057984:
	cmp r9, #0
	ldrnesh r0, [r9, #0x10]
	mov r1, #1
	cmpne r0, r6
	beq _020579C0
	ldrb r0, [r8, #0x65]
	mov r2, r6, lsl #0x10
	mov r3, r2, asr #0x10
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r1}
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	mov r2, #2
	bl FUN_ov16_02117414
_020579C0:
	ldrh r1, [r7, #4]
	ldrb r2, [r8, #0x68]
	ldr r0, [r4]
	bl FUN_ov16_0211748c
	mov r3, #2
	mov r1, #6
	mov r0, #0xd
	str r1, [sp, #0x10]
	str r3, [sp, #0xc]
	str r0, [sp, #0x14]
	mov r6, #0
	add r1, sp, #0x18
	b _02057A04
_020579F4:
	add r2, r6, #8
	add r0, r6, #1
	strb r2, [r1, r6]
	and r6, r0, #0xff
_02057A04:
	cmp r6, r3
	blt _020579F4
	mov r1, #0
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	b _02057A34
_02057A20:
	add r9, r1, #0xa
	add r6, r3, r1
	add r1, r1, #1
	strb r9, [r2, r6]
	and r1, r1, #0xff
_02057A34:
	cmp r1, r0
	blt _02057A20
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r11, #0
	add r3, r1, r0
	ldr r0, [sp, #0x14]
	add r2, sp, #0x18
	b _02057A6C
_02057A58:
	add r9, r11, #0x31
	add r6, r11, r3
	add r1, r11, #1
	strb r9, [r2, r6]
	and r11, r1, #0xff
_02057A6C:
	cmp r11, r0
	blt _02057A58
	cmp r5, #0x15
	bhi _02057A90
	add r0, sp, #0x18
	ldrb r2, [r0, r5]
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	bl FUN_ov16_021177c4
_02057A90:
	ldrb r0, [r8, #0xa7]
	mov r6, #0x800
	ldrh r1, [r7, #4]
	cmp r0, #2
	mov r3, #1
	ldr r0, [r4]
	movne r3, #0
	mov r2, r6
	bl FUN_ov16_02116cb4
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	ldr r2, [r8, #0x88]
	bl FUN_ov16_02117770
	ldr r1, [r8, #0x8c]
	ldr r0, [r8, #0x98]
	add r0, r1, r0
	str r0, [sp]
	ldr r3, [r8, #0x84]
	ldr r2, [r8, #0x90]
	ldrh r1, [r7, #4]
	add r2, r3, r2
	ldr r9, [r8, #0x88]
	ldr r3, [r8, #0x94]
	ldr r0, [r4]
	add r3, r9, r3
	bl FUN_ov16_021176c4
	ldr r0, _02057B88 ; =0x020A9C40
	bl FUN_02046358
	cmp r0, #0
	bne _02057B58
	ldr r0, _02057B8C ; =0x02099F24
	add r1, r8, #0x84
	ldr r9, [r0]
	mov r0, r9
	bl FUN_ov16_020f81a4
	mov r8, r0
	mov r0, r9
	bl FUN_ov16_020f7c44
	mov r1, r0
	mov r0, r8
	bl FX_Div
	ldrh r1, [r7, #4]
	ldr r3, [r10, #0xa8]
	smull r2, r0, r3, r0
	adds r2, r2, r6
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r0, [r4]
	b _02057B64
_02057B58:
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	ldr r2, [r10, #0xa8]
_02057B64:
	bl FUN_ov16_02117818
_02057B68:
	add r5, r5, #1
_02057B6C:
	ldr r0, [r10, #0x98]
	cmp r5, r0
	ble _02057844
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02057B80: .word unk_02099ED8
_02057B84: .word unk_02099F58
_02057B88: .word unk_020A9C40
_02057B8C: .word unk_02099F24
	arm_func_end FUN_02057830

	arm_func_start FUN_02057b90
FUN_02057b90: ; 0x02057B90
	bx lr
	arm_func_end FUN_02057b90

	arm_func_start FUN_02057b94
FUN_02057b94: ; 0x02057B94
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _02057BD4 ; =0x0209077C
	add r0, r4, #4
	bl FUN_02056640
	ldr r1, _02057BD8 ; =0x0209078C
	add r0, r4, #0x28
	bl FUN_02056640
	ldr r1, _02057BDC ; =0x0209079C
	add r0, r4, #0x4c
	bl FUN_02056640
	ldr r1, _02057BE0 ; =0x020907AC
	add r0, r4, #0x70
	bl FUN_02056640
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02057BD4: .word unk_0209077C
_02057BD8: .word unk_0209078C
_02057BDC: .word unk_0209079C
_02057BE0: .word unk_020907AC
	arm_func_end FUN_02057b94

	arm_func_start FUN_02057be4
FUN_02057be4: ; 0x02057BE4
	stmfd sp!, {r3, lr}
	bl FUN_02057b94
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02057be4

	arm_func_start FUN_02057bf4
FUN_02057bf4: ; 0x02057BF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #4
	mov r4, #0x24
_02057C04:
	mla r0, r6, r4, r5
	bl FUN_0205665c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #4
	blt _02057C04
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02057bf4

	arm_func_start FUN_02057c2c
FUN_02057c2c: ; 0x02057C2C
	ldr r12, _02057C34 ; =FUN_02057bf4
	bx r12
_02057C34: .word FUN_02057bf4
	arm_func_end FUN_02057c2c

	arm_func_start FUN_02057c38
FUN_02057c38: ; 0x02057C38
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #4
	mov r4, #0x24
_02057C48:
	mla r0, r6, r4, r5
	bl FUN_02056684
	add r6, r6, #1
	cmp r6, #4
	blt _02057C48
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02057c38

	arm_func_start FUN_02057c60
FUN_02057c60: ; 0x02057C60
	ldr r12, _02057C68 ; =FUN_02057c38
	bx r12
_02057C68: .word FUN_02057c38
	arm_func_end FUN_02057c60

	arm_func_start FUN_02057c6c
FUN_02057c6c: ; 0x02057C6C
	ldrh r1, [r0, #0xc]
	cmp r1, #0
	ldreqb r0, [r0, #0xf]
	cmpeq r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02057c6c

	arm_func_start FUN_02057c88
FUN_02057c88: ; 0x02057C88
	ldrsh r2, [r0, #0x10]
	mov r1, r1, lsl #0x10
	add r1, r2, r1, asr #16
	strh r1, [r0, #0x10]
	ldrsh r1, [r0, #0x10]
	cmp r1, #0
	movlt r1, #0
	strlth r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_02057c88

	arm_func_start FUN_02057cac
FUN_02057cac: ; 0x02057CAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r1, #0x34
	mul r0, r5, r1
	add r0, r0, #3
	bic r0, r0, #3
	sub r1, r1, #0x35
	bl L5FS_AllocateClear
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_02057d08
	mov r0, #0
	str r4, [r6]
	strh r5, [r6, #4]
	strh r0, [r6, #6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02057cac

	arm_func_start FUN_02057d08
FUN_02057d08: ; 0x02057D08
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02057D20
	bl L5FS_Deallocate
_02057D20:
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02057d08

	arm_func_start FUN_02057d2c
FUN_02057d2c: ; 0x02057D2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	movne r0, #0
	strne r0, [r6]
	ldr r4, [r7]
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #4]
	mov r5, #0
	cmp r0, #0
	ble _02057D94
_02057D60:
	mov r0, r4
	bl FUN_02057c6c
	cmp r0, #0
	beq _02057D80
	cmp r6, #0
	strne r4, [r6]
	add r0, r5, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02057D80:
	ldrsh r0, [r7, #4]
	add r5, r5, #1
	add r4, r4, #0x34
	cmp r5, r0
	blt _02057D60
_02057D94:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02057d2c

	arm_func_start FUN_02057d9c
FUN_02057d9c: ; 0x02057D9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	add r5, sp, #0
	mov r8, r1
	mov r4, #0x28
	mov r7, r2
	mov r1, r5
	mov r2, r4
	mov r0, #0
	mov r6, r3
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r8
	bl STD_CopyString
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	str r6, [sp, #0x24]
	bl L5FS_CalcCRC32
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02057d9c

	arm_func_start FUN_02057df0
FUN_02057df0: ; 0x02057DF0
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_02057d9c
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02057df0

	arm_func_start FUN_02057e10
FUN_02057e10: ; 0x02057E10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, [sp, #0x18]
	mov r6, r0
	cmp r5, #0
	movne r0, #0
	strne r0, [r5]
	ldr r0, [r6]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_02057d9c
	ldrsh r1, [r6, #4]
	mov r4, r0
	ldr r7, [r6]
	cmp r1, #0
	mov r8, #0
	ble _02057E94
_02057E58:
	mov r0, r7
	bl FUN_02057c6c
	cmp r0, #0
	ldreq r0, [r7]
	cmpeq r4, r0
	bne _02057E80
	cmp r5, #0
	strne r7, [r5]
	add r0, r8, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02057E80:
	ldrsh r0, [r6, #4]
	add r8, r8, #1
	add r7, r7, #0x34
	cmp r8, r0
	blt _02057E58
_02057E94:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02057e10

	arm_func_start FUN_02057e9c
FUN_02057e9c: ; 0x02057E9C
	cmp r1, #0
	ble _02057EB0
	ldrsh r2, [r0, #4]
	cmp r1, r2
	ble _02057EB8
_02057EB0:
	mov r0, #0
	bx lr
_02057EB8:
	ldr r2, [r0]
	sub r1, r1, #1
	mov r0, #0x34
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_02057e9c

	arm_func_start FUN_02057ecc
FUN_02057ecc: ; 0x02057ECC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r2, [r4, #0xc]
	mov r5, r0
	tst r2, #0x10
	beq _02057EF0
	mov r2, #1
	mov r3, #0
	bl FUN_02058220
_02057EF0:
	ldrh r0, [r4, #0xc]
	tst r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	mov r3, #0
	bl FUN_020583cc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02057ecc

	arm_func_start FUN_02057f14
FUN_02057f14: ; 0x02057F14
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02057F5C
_02057F30: ; jump table
	b _02057F5C ; case 0
	b _02057F5C ; case 1
	b _02057F54 ; case 2
	b _02057F5C ; case 3
	b _02057F54 ; case 4
	b _02057F54 ; case 5
	b _02057F5C ; case 6
	b _02057F54 ; case 7
	b _02057F54 ; case 8
_02057F54:
	mov r0, #1
	bx lr
_02057F5C:
	mov r0, #0
	bx lr
	arm_func_end FUN_02057f14

	arm_func_start FUN_02057f64
FUN_02057f64: ; 0x02057F64
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02057FAC
_02057F80: ; jump table
	b _02057FAC ; case 0
	b _02057FAC ; case 1
	b _02057FAC ; case 2
	b _02057FA4 ; case 3
	b _02057FA4 ; case 4
	b _02057FA4 ; case 5
	b _02057FAC ; case 6
	b _02057FAC ; case 7
	b _02057FA4 ; case 8
_02057FA4:
	mov r0, #1
	bx lr
_02057FAC:
	mov r0, #0
	bx lr
	arm_func_end FUN_02057f64

	arm_func_start FUN_02057fb4
FUN_02057fb4: ; 0x02057FB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, #0
	bl FUN_02058e50
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r1, [r4, #0xc]
	tst r1, #0x10
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02058090
_02057FF0: ; jump table
	b _02058090 ; case 0
	b _02058090 ; case 1
	b _02058014 ; case 2
	b _02058090 ; case 3
	b _02058014 ; case 4
	b _02058014 ; case 5
	b _02058090 ; case 6
	b _0205807C ; case 7
	b _0205807C ; case 8
_02058014:
	tst r1, #2
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r0, #5
	ldr r0, [r4, #4]
	bne _0205806C
	mov r1, r5
	bl FUN_02053994
	mov r6, r0
	ldr r0, [r4, #4]
	mov r1, #2
	bl FUN_020539c8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #2]
	strb r1, [r4, #0x12]
	ldrb r1, [r0, #3]
	strb r1, [r4, #0x13]
	ldrb r0, [r0, #4]
	strb r0, [r4, #0x14]
	b _02058098
_0205806C:
	mov r1, #1
	bl FUN_02053994
_02058074:
	mov r6, r0
	b _02058098
_0205807C:
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x14]
	bl FUN_020515c8
	b _02058074
_02058090:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058098:
	cmp r6, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r5, _020580E4 ; =0x02099F30
	mov r2, r6
	ldr r0, [r5]
	add r1, r4, #0x18
	bl FUN_020517ac
	cmp r0, #0
	ldrneh r1, [r4, #0xc]
	movne r0, #1
	orrne r1, r1, #0x10
	strneh r1, [r4, #0xc]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	add r1, r4, #0x18
	bl FUN_02051858
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020580E4: .word unk_02099F30
	arm_func_end FUN_02057fb4

	arm_func_start FUN_020580e8
FUN_020580e8: ; 0x020580E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r1, [r4, #0xc]
	tst r1, #0x20
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020581C8
_02058120: ; jump table
	b _020581C8 ; case 0
	b _020581C8 ; case 1
	b _020581C8 ; case 2
	b _02058144 ; case 3
	b _0205814C ; case 4
	b _0205814C ; case 5
	b _020581C8 ; case 6
	b _020581B4 ; case 7
	b _020581BC ; case 8
_02058144:
	ldr r6, [r4, #8]
	b _020581D0
_0205814C:
	tst r1, #2
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r0, #5
	ldr r0, [r4, #4]
	bne _020581A4
	mov r1, #1
	bl FUN_02053994
	mov r6, r0
	ldr r0, [r4, #4]
	mov r1, #2
	bl FUN_020539c8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #2]
	strb r1, [r4, #0x12]
	ldrb r1, [r0, #3]
	strb r1, [r4, #0x13]
	ldrb r0, [r0, #4]
	strb r0, [r4, #0x14]
	b _020581D0
_020581A4:
	mov r1, #2
	bl FUN_02053994
_020581AC:
	mov r6, r0
	b _020581D0
_020581B4:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020581BC:
	ldrb r0, [r4, #0x14]
	bl FUN_0205162c
	b _020581AC
_020581C8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020581D0:
	cmp r6, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r5, _0205821C ; =0x02099F30
	mov r2, r6
	ldr r0, [r5]
	add r1, r4, #0x24
	bl FUN_02051800
	cmp r0, #0
	ldrneh r1, [r4, #0xc]
	movne r0, #1
	orrne r1, r1, #0x20
	strneh r1, [r4, #0xc]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	add r1, r4, #0x24
	bl FUN_02051858
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0205821C: .word unk_02099F30
	arm_func_end FUN_020580e8

	arm_func_start FUN_02058220
FUN_02058220: ; 0x02058220
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r9, #0
	bl FUN_02058e50
	cmp r0, #0
	bne _02058254
	ldrh r1, [r6, #0xc]
	tst r1, #0x10
	bne _02058260
_02058254:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058260:
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02058344
_02058270: ; jump table
	b _02058344 ; case 0
	b _02058344 ; case 1
	b _02058294 ; case 2
	b _02058344 ; case 3
	b _02058294 ; case 4
	b _020582E8 ; case 5
	b _02058344 ; case 6
	b _02058338 ; case 7
	b _02058338 ; case 8
_02058294:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #1
	ldr r0, [r6, #4]
	mov r1, r10
	bl FUN_020539c8
	mov r8, r0
	ldr r0, [r6, #4]
	mov r1, r10
	bl FUN_02053994
	str r5, [sp]
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r8
	stmib sp, {r4, r9}
	bl FUN_02058350
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020582E8:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r6, #4]
	mov r1, r9
	bl FUN_020539c8
	mov r8, r0
	ldr r0, [r6, #4]
	mov r1, r9
	bl FUN_02053994
	str r5, [sp]
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r8
	stmib sp, {r4, r9}
	bl FUN_02058350
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058338:
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058344:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02058220

	arm_func_start FUN_02058350
FUN_02058350: ; 0x02058350
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl FUN_02058e50
	cmp r0, #0
	bne _0205837C
	ldrh r0, [r5, #0xc]
	tst r0, #0x10
	bne _02058388
_0205837C:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058388:
	ldrb r1, [sp, #0x20]
	str r6, [sp]
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r5, #0x30
	ldr r0, _020583C8 ; =0x02099F30
	str r1, [sp, #0xc]
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	mov r3, r4
	add r1, r5, #0x18
	bl FUN_020518a8
	and r0, r0, #0xff
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020583C8: .word unk_02099F30
	arm_func_end FUN_02058350

	arm_func_start FUN_020583cc
FUN_020583cc: ; 0x020583CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl FUN_02058e50
	cmp r0, #0
	bne _02058400
	ldrh r1, [r7, #0xc]
	tst r1, #0x20
	bne _0205840C
_02058400:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205840C:
	ldrb r0, [r7, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02058534
_0205841C: ; jump table
	b _02058534 ; case 0
	b _02058534 ; case 1
	b _02058534 ; case 2
	b _020584F0 ; case 3
	b _02058440 ; case 4
	b _02058498 ; case 5
	b _02058534 ; case 6
	b _02058528 ; case 7
	b _02058528 ; case 8
_02058440:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #2
	ldr r0, [r7, #4]
	mov r1, r10
	bl FUN_020539c8
	mov r9, r0
	ldr r0, [r7, #4]
	mov r1, r10
	bl FUN_02053994
	str r6, [sp]
	mov r3, r0
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r9
	str r4, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058498:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #1
	ldr r0, [r7, #4]
	mov r1, r10
	bl FUN_020539c8
	mov r9, r0
	ldr r0, [r7, #4]
	mov r1, r10
	bl FUN_02053994
	str r6, [sp]
	mov r3, r0
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r9
	str r4, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020584F0:
	ldr r2, [r7, #4]
	ldr r3, [r7, #8]
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	str r4, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058528:
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058534:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_020583cc

	arm_func_start FUN_02058540
FUN_02058540: ; 0x02058540
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl FUN_02058e50
	cmp r0, #0
	bne _0205856C
	ldrh r0, [r5, #0xc]
	tst r0, #0x20
	bne _02058578
_0205856C:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058578:
	ldrb r1, [sp, #0x20]
	str r6, [sp]
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r5, #0x31
	ldr r0, _020585B8 ; =0x02099F30
	str r1, [sp, #0xc]
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	mov r3, r4
	add r1, r5, #0x24
	bl FUN_020518a8
	and r0, r0, #0xff
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020585B8: .word unk_02099F30
	arm_func_end FUN_02058540

	arm_func_start FUN_020585bc
FUN_020585bc: ; 0x020585BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _020585F8 ; =0x020907FC
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #8
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x10
	bl MIi_CpuClearFast
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020585F8: .word unk_020907FC
	arm_func_end FUN_020585bc

	arm_func_start FUN_020585fc
FUN_020585fc: ; 0x020585FC
	stmfd sp!, {r4, lr}
	ldr r1, _02058618 ; =0x020907FC
	mov r4, r0
	str r1, [r4]
	bl FUN_0205866c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02058618: .word unk_020907FC
	arm_func_end FUN_020585fc

	arm_func_start FUN_0205861c
FUN_0205861c: ; 0x0205861C
	stmfd sp!, {r4, lr}
	ldr r1, _02058640 ; =0x020907FC
	mov r4, r0
	str r1, [r4]
	bl FUN_0205866c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02058640: .word unk_020907FC
	arm_func_end FUN_0205861c

	arm_func_start FUN_02058644
FUN_02058644: ; 0x02058644
	stmfd sp!, {r4, lr}
	add r0, r0, #4
	mov r4, #0
	bl FUN_02057cac
	cmp r0, #0
	addeq r4, r4, #1
	mov r0, #0
	cmp r4, #0
	movle r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02058644

	arm_func_start FUN_0205866c
FUN_0205866c: ; 0x0205866C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02058fb4
	add r0, r4, #4
	bl FUN_02057d08
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205866c

	arm_func_start FUN_02058684
FUN_02058684: ; 0x02058684
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r9, r0
	mov r4, r2
	mov r7, r3
	cmp r8, #1
	blt _020586AC
	cmp r8, #6
	ble _020586B8
_020586AC:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020586B8:
	mov r6, #0
	add r10, sp, #4
	mov r1, r7
	mov r2, r6
	mov r3, r6
	add r0, r9, #4
	str r10, [sp]
	bl FUN_02057e10
	movs r5, r0
	beq _020586F8
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020586F8:
	mov r1, r10
	add r0, r9, #4
	bl FUN_02057d2c
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [sp, #4]
	mov r0, r6
	mov r2, #0x34
	bl MIi_CpuClearFast
	ldr r0, [sp, #0x28]
	cmp r0, #0
	add r0, sp, #0x30
	beq _0205874C
	ldr r3, [sp, #4]
	mov r1, r4
	mov r2, r7
	add r3, r3, #0x15
	bl L5FS_ReadFileByNameDeferred
	b _02058758
_0205874C:
	mov r1, r4
	mov r2, r7
	bl L5FS_ReadFileByName
_02058758:
	mov r6, r0
	cmp r6, #0
	addle sp, sp, #8
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, #0
	str r4, [sp]
	ldr r1, [sp, #4]
	mov r2, r7
	mov r3, r4
	add r0, r9, #4
	bl FUN_02057df0
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #4]
	cmp r0, #0
	str r2, [r1, #4]
	ldr r1, [sp, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #4]
	movne r1, #1
	strh r4, [r0, #0xc]
	ldrne r0, [sp, #4]
	strneh r1, [r0, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	strb r8, [r1, #0xe]
	cmp r0, #0
	ldrne r0, [sp, #4]
	movne r1, #1
	ldreq r0, [sp, #4]
	moveq r1, #2
	strb r1, [r0, #0xf]
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	ldrsh r1, [r9, #0xa]
	mov r0, r5
	add r1, r1, #1
	strh r1, [r9, #0xa]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02058684

	arm_func_start FUN_02058800
FUN_02058800: ; 0x02058800
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, r1
	mov r10, r0
	mov r8, r2
	mov r7, r3
	cmp r9, #1
	ldr r6, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	blt _02058838
	cmp r9, #6
	bgt _02058838
	cmp r8, #0
	bne _02058844
_02058838:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058844:
	mov r0, r8
	mov r1, #0x2f
	mov r11, r8
	bl strrchr
	cmp r0, #0
	addne r11, r0, #1
	mov r0, r8
	mov r1, #0x5c
	bl strrchr
	cmp r0, #0
	addne r11, r0, #1
	add r4, sp, #0x14
	mov r1, r11
	mov r2, r6
	mov r3, r5
	add r0, r10, #4
	str r4, [sp]
	bl FUN_02057e10
	movs r4, r0
	beq _020588AC
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #0x18
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020588AC:
	add r1, sp, #0x14
	add r0, r10, #4
	bl FUN_02057d2c
	str r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	ldr r1, [sp, #0x14]
	mov r0, r4
	mov r2, #0x34
	bl MIi_CpuClearFast
	cmp r7, #0
	beq _02058920
	ldr r3, _02058A0C ; =gL5Allocator
	ldr r0, [r3]
	cmp r0, #0
	beq _02058958
	ldrb r4, [sp, #0x44]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x48
	mov r1, r8
	str r4, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP11L5Allocatorimih
	b _02058954
_02058920:
	ldr r3, _02058A0C ; =gL5Allocator
	ldr r0, [r3]
	cmp r0, #0
	beq _02058958
	ldrb r4, [sp, #0x44]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x48
	mov r1, r8
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_02058954:
	mov r4, r0
_02058958:
	cmp r4, #0
	mov r8, #1
	addle sp, sp, #0x18
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	ldr r1, [sp, #0x14]
	mov r2, r11
	mov r3, r5
	add r0, r10, #4
	bl FUN_02057df0
	ldrb r0, [sp, #0x40]
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x14]
	cmp r0, #0
	str r2, [r1, #4]
	ldr r1, [sp, #0x14]
	mov r0, #0
	str r4, [r1, #8]
	ldr r1, [sp, #0x14]
	strh r0, [r1, #0xc]
	ldrne r0, [sp, #0x14]
	movne r1, r8
	strneh r1, [r0, #0xc]
	ldr r0, [sp, #0x14]
	cmp r7, #0
	strb r9, [r0, #0xe]
	ldreq r0, [sp, #0x14]
	moveq r1, #2
	streqb r1, [r0, #0xf]
	beq _020589E8
	ldr r0, [sp, #0x14]
	sub r1, r8, #2
	strb r8, [r0, #0xf]
	ldr r0, [sp, #0x14]
	strb r1, [r0, #0x15]
_020589E8:
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl FUN_02057c88
	ldrsh r1, [r10, #0xa]
	ldr r0, [sp, #0x10]
	add r1, r1, #1
	strh r1, [r10, #0xa]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058A0C: .word gL5Allocator
	arm_func_end FUN_02058800

	arm_func_start FUN_02058a10
FUN_02058a10: ; 0x02058A10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r2
	mov r10, r0
	mov r4, r1
	mov r6, r3
	cmp r9, #1
	ldr r7, [sp, #0x3c]
	blt _02058A44
	cmp r9, #6
	bgt _02058A44
	cmp r6, #0
	bne _02058A50
_02058A44:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058A50:
	mov r0, r6
	mov r1, #0x2f
	mov r5, r6
	bl strrchr
	cmp r0, #0
	addne r5, r0, #1
	mov r0, r6
	mov r1, #0x5c
	bl strrchr
	cmp r0, #0
	addne r5, r0, #1
	add r8, sp, #4
	ldr r2, [sp, #0x38]
	mov r1, r5
	mov r3, r7
	add r0, r10, #4
	str r8, [sp]
	bl FUN_02057e10
	movs r6, r0
	beq _02058AB8
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #8
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058AB8:
	mov r1, r8
	add r0, r10, #4
	bl FUN_02057d2c
	movs r11, r0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0x34
	ldr r1, [sp, #4]
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x38]
	mov r0, r4
	mov r2, #0
	bl FS_SeekFile
	ldr r8, _02058C5C ; =gL5Allocator
	add r1, r6, #0xcd
	mov r0, r8
	bl _ZN11L5Allocator12setNextArenaEi
	mov r0, r8
	mov r1, r7
	bl _ZN11L5Allocator8allocateEm
	movs r6, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FS_ReadFile
	cmp r0, #0
	bge _02058B50
	mov r0, r8
	mov r1, r6
	bl _ZN11L5Allocator10deallocateEPv
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058B50:
	ldr r0, [r6]
	mov r2, #1
	mov r4, r0, lsr #8
	mov r0, r8
	mov r1, r4
	mov r3, r2
	bl _ZN11L5Allocator8allocateEmii
	movs r8, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r6]
	and r0, r0, #0xf0
	cmp r0, #0x10
	beq _02058B98
	cmp r0, #0x20
	beq _02058BA8
	b _02058BB8
_02058B98:
	mov r0, r6
	mov r1, r8
	bl MI_UncompressLZ8
	b _02058BBC
_02058BA8:
	mov r0, r6
	mov r1, r8
	bl MI_UncompressHuffman
	b _02058BBC
_02058BB8:
	bl OS_Terminate
_02058BBC:
	ldr r0, _02058C5C ; =gL5Allocator
	mov r1, r6
	mov r6, #0
	bl _ZN11L5Allocator10deallocateEPv
	cmp r4, #0
	addle sp, sp, #8
	movle r0, r6
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	mov r2, r5
	str r0, [sp]
	ldr r1, [sp, #4]
	mov r3, r7
	add r0, r10, #4
	bl FUN_02057df0
	ldr r1, [sp, #4]
	ldrb r0, [sp, #0x30]
	str r8, [r1, #4]
	ldr r1, [sp, #4]
	cmp r0, #0
	str r4, [r1, #8]
	ldr r1, [sp, #4]
	mov r2, #2
	strh r6, [r1, #0xc]
	ldrne r0, [sp, #4]
	movne r1, #1
	strneh r1, [r0, #0xc]
	ldr r0, [sp, #4]
	mov r1, #1
	strb r9, [r0, #0xe]
	ldr r0, [sp, #4]
	strb r2, [r0, #0xf]
	ldr r0, [sp, #4]
	bl FUN_02057c88
	ldrsh r1, [r10, #0xa]
	mov r0, r11
	add r1, r1, #1
	strh r1, [r10, #0xa]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058C5C: .word gL5Allocator
	arm_func_end FUN_02058a10

	arm_func_start FUN_02058c60
FUN_02058c60: ; 0x02058C60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, r2
	mov r10, r0
	mov r9, r1
	mov r4, r3
	cmp r8, #1
	blt _02058C90
	cmp r8, #6
	bgt _02058C90
	cmp r4, #0
	bne _02058C9C
_02058C90:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058C9C:
	mov r0, r4
	mov r1, #0x2f
	mov r6, r4
	bl strrchr
	cmp r0, #0
	addne r6, r0, #1
	mov r0, r4
	mov r1, #0x5c
	bl strrchr
	cmp r0, #0
	addne r6, r0, #1
	add r5, sp, #4
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r1, r6
	add r0, r10, #4
	str r5, [sp]
	bl FUN_02057e10
	movs r4, r0
	beq _02058D04
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058D04:
	mov r1, r5
	add r0, r10, #4
	bl FUN_02057d2c
	movs r11, r0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	mov r2, #0x34
	bl MIi_CpuClearFast
	ldr r4, [sp, #0x38]
	mov r2, #1
	ldr r1, [r9, r4]
	ldr r0, _02058E2C ; =gL5Allocator
	mov r5, r1, lsr #8
	mov r1, r5
	mov r3, r2
	bl _ZN11L5Allocator8allocateEmii
	movs r7, r0
	bne _02058D58
	bl OS_Terminate
_02058D58:
	ldr r0, [r9, r4]
	and r0, r0, #0xf0
	cmp r0, #0x10
	beq _02058D74
	cmp r0, #0x20
	beq _02058D84
	b _02058D94
_02058D74:
	mov r1, r7
	add r0, r9, r4
	bl MI_UncompressLZ8
	b _02058D98
_02058D84:
	mov r1, r7
	add r0, r9, r4
	bl MI_UncompressHuffman
	b _02058D98
_02058D94:
	bl OS_Terminate
_02058D98:
	cmp r5, #0
	addle sp, sp, #8
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	str r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r6
	add r0, r10, #4
	bl FUN_02057df0
	ldr r1, [sp, #4]
	ldrb r0, [sp, #0x30]
	str r7, [r1, #4]
	ldr r1, [sp, #4]
	cmp r0, #0
	str r5, [r1, #8]
	ldr r1, [sp, #4]
	mov r0, #0
	strh r0, [r1, #0xc]
	ldrne r0, [sp, #4]
	movne r1, #1
	strneh r1, [r0, #0xc]
	ldr r0, [sp, #4]
	mov r2, #2
	strb r8, [r0, #0xe]
	ldr r0, [sp, #4]
	mov r1, #1
	strb r2, [r0, #0xf]
	ldr r0, [sp, #4]
	bl FUN_02057c88
	ldrsh r1, [r10, #0xa]
	mov r0, r11
	add r1, r1, #1
	strh r1, [r10, #0xa]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058E2C: .word gL5Allocator
	arm_func_end FUN_02058c60

	arm_func_start FUN_02058e30
FUN_02058e30: ; 0x02058E30
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r4
	bl FUN_02058e50
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02058e30

	arm_func_start FUN_02058e50
FUN_02058e50: ; 0x02058E50
	stmfd sp!, {r4, lr}
	movs r4, r1
	beq _02058E6C
	mov r0, r4
	bl FUN_02057c6c
	cmp r0, #0
	beq _02058E74
_02058E6C:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02058E74:
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	beq _02058E8C
	cmp r0, #2
	beq _02058ECC
	b _02058ED4
_02058E8C:
	ldrsb r0, [r4, #0x15]
	cmp r0, #0
	blt _02058EA0
	bl L5FS_IsFileBusy
	b _02058EBC
_02058EA0:
	ldr r0, _02058EDC ; =gL5Allocator
	ldr r1, [r4, #4]
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _02058EBC
	bl _ZN7CFileIO11tryFinalizeEPv
_02058EBC:
	cmp r0, #0
	moveq r1, #2
	streqb r1, [r4, #0xf]
	ldmfd sp!, {r4, pc}
_02058ECC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02058ED4:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02058EDC: .word gL5Allocator
	arm_func_end FUN_02058e50

	arm_func_start FUN_02058ee0
FUN_02058ee0: ; 0x02058EE0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_02057e9c
	movs r6, r0
	beq _02058F04
	bl FUN_02057c6c
	cmp r0, #0
	beq _02058F0C
_02058F04:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058F0C:
	mov r0, r6
	mvn r1, #0
	bl FUN_02057c88
	ldrsh r0, [r6, #0x10]
	cmp r0, #0
	bgt _02058FA4
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02058F6C
	ldrh r0, [r6, #0xc]
	tst r0, #1
	bne _02058F6C
	ldrb r0, [r6, #0xf]
	cmp r0, #1
	bne _02058F64
	ldr r0, _02058FAC ; =gL5Allocator
	ldr r0, [r0]
	cmp r0, #0
	beq _02058F6C
	mov r2, #1
	bl _ZN7CFileIO5closeEPvi
	b _02058F6C
_02058F64:
	ldr r0, _02058FAC ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_02058F6C:
	ldr r5, _02058FB0 ; =0x02099F30
	add r1, r6, #0x18
	ldr r0, [r5]
	bl FUN_02051858
	ldr r0, [r5]
	add r1, r6, #0x24
	bl FUN_02051858
	mov r1, r6
	mov r0, #0
	mov r2, #0x34
	bl MIi_CpuClearFast
	ldrsh r0, [r4, #0xa]
	sub r0, r0, #1
	strh r0, [r4, #0xa]
_02058FA4:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02058FAC: .word gL5Allocator
_02058FB0: .word unk_02099F30
	arm_func_end FUN_02058ee0

	arm_func_start FUN_02058fb4
FUN_02058fb4: ; 0x02058FB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrsh r0, [r6, #8]
	mov r5, #0
	mov r4, r5
	cmp r0, #0
	ble _02058FF4
_02058FD0:
	mov r0, r6
	add r1, r4, #1
	bl FUN_02058ee0
	cmp r0, #0
	ldrsh r0, [r6, #8]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, r0
	blt _02058FD0
_02058FF4:
	mov r0, #1
	cmp r5, #0
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02058fb4

	arm_func_start FUN_02059004
FUN_02059004: ; 0x02059004
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #0xc]
	mov r0, #1
	tst r1, #0x10
	ldmnefd sp!, {r3, pc}
	tst r1, #0x20
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02059004

	arm_func_start FUN_02059038
FUN_02059038: ; 0x02059038
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	add r0, r8, #4
	mov r6, r2
	mov r5, r3
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r8
	mov r1, r7
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	bl FUN_02057f14
	cmp r0, #0
	beq _020590B4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02059100
	cmp r0, #0
	bne _020590B4
	mov r0, r8
	mov r1, r7
	bl FUN_020591e8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020590B4:
	mov r0, r8
	mov r1, r4
	bl FUN_02057f64
	cmp r0, #0
	beq _020590F8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02059174
	cmp r0, #0
	bne _020590F8
	mov r0, r8
	mov r1, r7
	bl FUN_020591e8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020590F8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02059038

	arm_func_start FUN_02059100
FUN_02059100: ; 0x02059100
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #4
	mov r6, r2
	mov r5, r3
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xc]
	tst r0, #0x10
	bne _0205916C
	mov r0, r7
	mov r1, r4
	bl FUN_02057fb4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_02058220
_0205916C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02059100

	arm_func_start FUN_02059174
FUN_02059174: ; 0x02059174
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #4
	mov r6, r2
	mov r5, r3
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xc]
	tst r0, #0x20
	bne _020591E0
	mov r0, r7
	mov r1, r4
	bl FUN_020580e8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_020583cc
_020591E0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02059174

	arm_func_start FUN_020591e8
FUN_020591e8: ; 0x020591E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02059208
	mov r0, r5
	mov r1, r4
	bl FUN_02059248
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020591e8

	arm_func_start FUN_02059208
FUN_02059208: ; 0x02059208
	stmfd sp!, {r4, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02059240 ; =0x02099F30
	add r1, r4, #0x18
	ldr r0, [r0]
	bl FUN_02051858
	ldrh r1, [r4, #0xc]
	ldr r0, _02059244 ; =0x0000FFEF
	and r0, r1, r0
	strh r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02059240: .word unk_02099F30
_02059244: .word 0x0000FFEF
	arm_func_end FUN_02059208

	arm_func_start FUN_02059248
FUN_02059248: ; 0x02059248
	stmfd sp!, {r4, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02059280 ; =0x02099F30
	add r1, r4, #0x24
	ldr r0, [r0]
	bl FUN_02051858
	ldrh r1, [r4, #0xc]
	ldr r0, _02059284 ; =0x0000FFDF
	and r0, r1, r0
	strh r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02059280: .word unk_02099F30
_02059284: .word 0x0000FFDF
	arm_func_end FUN_02059248

	arm_func_start FUN_02059288
FUN_02059288: ; 0x02059288
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	add r0, r6, #4
	mov r5, r2
	mov r4, r3
	bl FUN_02057e9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	ldr r0, [sp, #0x24]
	str r2, [sp]
	ldr r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_02058350
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_02059288

	arm_func_start FUN_020592d8
FUN_020592d8: ; 0x020592D8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	add r0, r6, #4
	mov r5, r2
	mov r4, r3
	bl FUN_02057e9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	ldr r0, [sp, #0x24]
	str r2, [sp]
	ldr r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_020592d8

	arm_func_start FUN_02059328
FUN_02059328: ; 0x02059328
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x30]
	cmp r1, #0
	ldreqb r0, [r0, #0x31]
	cmpeq r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02059328

	arm_func_start FUN_0205935c
FUN_0205935c: ; 0x0205935C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r6, r2
	mov r5, r3
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r0, [r6]
	cmp r5, #0
	strne r0, [r5]
	add r0, r7, #4
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0205940C
_020593B4: ; jump table
	b _0205940C ; case 0
	b _0205940C ; case 1
	b _020593D8 ; case 2
	b _0205940C ; case 3
	b _020593D8 ; case 4
	b _020593EC ; case 5
	b _0205940C ; case 6
	b _020593F8 ; case 7
	b _020593F8 ; case 8
_020593D8:
	ldr r0, [r4, #4]
	mov r1, #1
_020593E0:
	bl FUN_02053994
_020593E4:
	mov r1, r0
	b _02059414
_020593EC:
	ldr r0, [r4, #4]
	mov r1, #0
	b _020593E0
_020593F8:
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x14]
	bl FUN_020515c8
	b _020593E4
_0205940C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059414:
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_020594f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205935c

	arm_func_start FUN_02059428
FUN_02059428: ; 0x02059428
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r6, r2
	mov r5, r3
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r0, [r6]
	cmp r5, #0
	strne r0, [r5]
	add r0, r7, #4
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020594D8
_02059480: ; jump table
	b _020594D8 ; case 0
	b _020594D8 ; case 1
	b _020594D8 ; case 2
	b _020594A4 ; case 3
	b _020594B8 ; case 4
	b _020594CC ; case 5
	b _020594D8 ; case 6
	b _020594D8 ; case 7
	b _020594AC ; case 8
_020594A4:
	ldr r1, [r4, #8]
	b _020594E0
_020594AC:
	ldrb r0, [r4, #0x14]
	bl FUN_0205162c
	b _020594C4
_020594B8:
	ldr r0, [r4, #4]
	mov r1, #2
_020594C0:
	bl FUN_02053994
_020594C4:
	mov r1, r0
	b _020594E0
_020594CC:
	ldr r0, [r4, #4]
	mov r1, #1
	b _020594C0
_020594D8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020594E0:
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_020594f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02059428

	arm_func_start FUN_020594f4
FUN_020594f4: ; 0x020594F4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [sp, #0x14]
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	ble _02059518
	cmp r5, #0
	bne _02059528
_02059518:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02059528:
	mov r0, #0
	str r0, [r5]
	cmp r4, #0
	strne r0, [r4]
	add r0, sp, #0x14
	bl FUN_02041498
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	str r0, [r5]
	cmp r4, #0
	ldrne r0, [sp, #0x14]
	strne r0, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_020594f4

	arm_func_start FUN_02059574
FUN_02059574: ; 0x02059574
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	add r1, sp, #0
	add r0, r9, #4
	mov r7, r2
	mov r6, r3
	bl FUN_02057d2c
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
	ldr r1, [sp]
	mov r0, r4
	mov r2, #0x34
	bl MIi_CpuClearFast
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_020515c8
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [sp]
	mov r1, #8
	str r0, [r2, #8]
	ldr r0, [sp]
	mov r3, #2
	strh r4, [r0, #0xc]
	ldr r0, [sp]
	mov r2, #1
	strb r1, [r0, #0xe]
	ldr r1, [sp]
	mov r0, r5
	strb r3, [r1, #0xf]
	ldr r1, [sp]
	strh r2, [r1, #0x10]
	ldr r1, [sp]
	strb r8, [r1, #0x12]
	ldr r1, [sp]
	strb r7, [r1, #0x13]
	ldr r1, [sp]
	strb r6, [r1, #0x14]
	ldrsh r1, [r9, #0xa]
	add r1, r1, #1
	strh r1, [r9, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02059574

	arm_func_start FUN_02059630
FUN_02059630: ; 0x02059630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	add r1, sp, #0
	add r0, r9, #4
	mov r7, r2
	bl FUN_02057d2c
	movs r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	ldr r1, [sp]
	mov r0, r5
	mov r2, #0x34
	bl MIi_CpuClearFast
	mov r4, #3
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_020515c8
	cmp r0, #0
	movle r0, r5
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [sp]
	mov r1, #7
	str r0, [r2, #8]
	ldr r0, [sp]
	mov r3, #2
	strh r5, [r0, #0xc]
	ldr r0, [sp]
	mov r2, #1
	strb r1, [r0, #0xe]
	ldr r1, [sp]
	mov r0, r6
	strb r3, [r1, #0xf]
	ldr r1, [sp]
	strh r2, [r1, #0x10]
	ldr r1, [sp]
	strb r8, [r1, #0x12]
	ldr r1, [sp]
	strb r7, [r1, #0x13]
	ldr r1, [sp]
	strb r4, [r1, #0x14]
	ldrsh r1, [r9, #0xa]
	add r1, r1, #1
	strh r1, [r9, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02059630

	arm_func_start FUN_020596ec
FUN_020596ec: ; 0x020596EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	add r1, sp, #0
	add r0, r7, #4
	mov r8, r2
	bl FUN_02057d2c
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
	ldr r1, [sp]
	mov r0, r4
	mov r2, #0x34
	bl MIi_CpuClearFast
	mov r0, r6
	bl FUN_0205162c
	mul r2, r8, r0
	cmp r2, #0
	addle sp, sp, #4
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	mov r1, #3
	str r2, [r0, #8]
	ldr r0, [sp]
	mov r3, #2
	strh r4, [r0, #0xc]
	ldr r0, [sp]
	mov r2, #1
	strb r1, [r0, #0xe]
	ldr r1, [sp]
	mov r0, r5
	strb r3, [r1, #0xf]
	ldr r1, [sp]
	strh r2, [r1, #0x10]
	ldr r1, [sp]
	strb r6, [r1, #0x14]
	ldrsh r1, [r7, #0xa]
	add r1, r1, #1
	strh r1, [r7, #0xa]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020596ec

	arm_func_start FUN_020597a0
FUN_020597a0: ; 0x020597A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	addgt r0, r0, #1
	strgt r0, [r4, #0x18]
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
	ldr r5, _02059830 ; =0x02099F30
	mov r6, #0x20
	str r7, [r4, #0xc]
	str r7, [r4, #0x10]
	strb r7, [r4, #0x14]
	strb r7, [r4, #0x15]
	str r7, [r4, #0x18]
	ldr r0, [r5]
	mov r2, r6
	add r1, r4, #0xc
	bl FUN_02051800
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r6, [sp]
	ldr r0, [r5]
	ldr r3, _02059834 ; =0x020907D4
	mov r2, r7
	add r1, r4, #0xc
	bl FUN_02051a7c
	cmp r0, #0
	ldrne r1, [r4, #0x18]
	moveq r0, r7
	addne r1, r1, #1
	movne r0, #1
	strne r1, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059830: .word unk_02099F30
_02059834: .word unk_020907D4
	arm_func_end FUN_020597a0

	arm_func_start FUN_02059838
FUN_02059838: ; 0x02059838
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	ble _0205985C
	cmp r1, #0
	beq _02059874
_0205985C:
	ldr r0, _0205987C ; =0x02099F30
	add r1, r4, #0xc
	ldr r0, [r0]
	bl FUN_02051858
	mov r0, #0
	str r0, [r4, #0x18]
_02059874:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0205987C: .word unk_02099F30
	arm_func_end FUN_02059838

	arm_func_start FUN_02059880
FUN_02059880: ; 0x02059880
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r4, _020598E8 ; =0x02099F30
	b _020598C4
_02059894:
	add r0, r7, #4
	add r1, r6, #1
	bl FUN_02057e9c
	movs r5, r0
	beq _020598C0
	ldr r0, [r4]
	add r1, r5, #0x18
	bl FUN_02051d3c
	ldr r0, [r4]
	add r1, r5, #0x24
	bl FUN_02051d3c
_020598C0:
	add r6, r6, #1
_020598C4:
	ldrsh r0, [r7, #8]
	cmp r6, r0
	blt _02059894
	ldr r0, _020598E8 ; =0x02099F30
	add r1, r7, #0xc
	ldr r0, [r0]
	bl FUN_02051d3c
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020598E8: .word unk_02099F30
	arm_func_end FUN_02059880

	arm_func_start FUN_020598ec
FUN_020598ec: ; 0x020598EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r4, _02059984 ; =0x02099F30
	b _0205993C
_02059900:
	add r0, r7, #4
	add r1, r6, #1
	bl FUN_02057e9c
	movs r5, r0
	beq _02059938
	ldr r0, [r4]
	add r1, r5, #0x18
	bl FUN_02051dc4
	ldr r0, [r4]
	add r1, r5, #0x24
	bl FUN_02051dc4
	mov r0, r7
	mov r1, r5
	bl FUN_02057ecc
_02059938:
	add r6, r6, #1
_0205993C:
	ldrsh r0, [r7, #8]
	cmp r6, r0
	blt _02059900
	ldr r4, _02059984 ; =0x02099F30
	add r1, r7, #0xc
	ldr r0, [r4]
	bl FUN_02051dc4
	cmp r0, #0
	beq _0205997C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, _02059988 ; =0x020907D4
	add r1, r7, #0xc
	mov r2, #0
	bl FUN_02051a7c
_0205997C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059984: .word unk_02099F30
_02059988: .word unk_020907D4
	arm_func_end FUN_020598ec

	arm_func_start FUN_0205998c
FUN_0205998c: ; 0x0205998C
	ldr r12, _02059998 ; =FUN_02057e9c
	add r0, r0, #4
	bx r12
_02059998: .word FUN_02057e9c
	arm_func_end FUN_0205998c

	arm_func_start FUN_0205999c
FUN_0205999c: ; 0x0205999C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, #0
	bl FUN_02058e50
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02059A70
_020599CC: ; jump table
	b _02059A70 ; case 0
	b _02059A70 ; case 1
	b _020599F0 ; case 2
	b _02059A70 ; case 3
	b _020599F0 ; case 4
	b _02059A30 ; case 5
	b _02059A70 ; case 6
	b _02059A70 ; case 7
	b _02059A70 ; case 8
_020599F0:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, #1
	bl FUN_02053994
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #1
	bl FUN_020539c8
	ldmfd sp!, {r4, r5, r6, pc}
_02059A30:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, r4
	bl FUN_02053994
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #0
	bl FUN_020539c8
	ldmfd sp!, {r4, r5, r6, pc}
_02059A70:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205999c

	arm_func_start FUN_02059a78
FUN_02059a78: ; 0x02059A78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r0, r5, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_02059aa0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059a78

	arm_func_start FUN_02059aa0
FUN_02059aa0: ; 0x02059AA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02059B84
_02059ACC: ; jump table
	b _02059B84 ; case 0
	b _02059B84 ; case 1
	b _02059B84 ; case 2
	b _02059AF0 ; case 3
	b _02059B04 ; case 4
	b _02059B44 ; case 5
	b _02059B84 ; case 6
	b _02059B84 ; case 7
	b _02059B84 ; case 8
_02059AF0:
	cmp r4, #0
	ldrne r0, [r5, #8]
	strne r0, [r4]
	ldr r0, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02059B04:
	ldrh r0, [r5, #0xc]
	tst r0, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r1, #2
	bl FUN_02053994
	cmp r0, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	strne r0, [r4]
	ldr r0, [r5, #4]
	mov r1, #2
	bl FUN_020539c8
	ldmfd sp!, {r3, r4, r5, pc}
_02059B44:
	ldrh r0, [r5, #0xc]
	tst r0, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r1, #1
	bl FUN_02053994
	cmp r0, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	strne r0, [r4]
	ldr r0, [r5, #4]
	mov r1, #1
	bl FUN_020539c8
	ldmfd sp!, {r3, r4, r5, pc}
_02059B84:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059aa0

	arm_func_start FUN_02059b8c
FUN_02059b8c: ; 0x02059B8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r0, r5, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_02059bb4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059b8c

	arm_func_start FUN_02059bb4
FUN_02059bb4: ; 0x02059BB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, #0
	bl FUN_02058e50
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02059C88
_02059BE4: ; jump table
	b _02059C88 ; case 0
	b _02059C88 ; case 1
	b _02059C08 ; case 2
	b _02059C88 ; case 3
	b _02059C08 ; case 4
	b _02059C48 ; case 5
	b _02059C88 ; case 6
	b _02059C88 ; case 7
	b _02059C88 ; case 8
_02059C08:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, r4
	bl FUN_02053994
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #0
	bl FUN_020539c8
	ldmfd sp!, {r4, r5, r6, pc}
_02059C48:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, #2
	bl FUN_02053994
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #2
	bl FUN_020539c8
	ldmfd sp!, {r4, r5, r6, pc}
_02059C88:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02059bb4

	arm_func_start FUN_02059c90
FUN_02059c90: ; 0x02059C90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	add r0, r6, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl FUN_02059cc0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02059c90

	arm_func_start FUN_02059cc0
FUN_02059cc0: ; 0x02059CC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r2
	mov r4, r3
	mov r6, r0
	cmpeq r4, #0
	mov r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	mvnne r0, #0
	strne r0, [r7]
	cmp r4, #0
	mvnne r0, #0
	strne r0, [r4]
	mov r0, r6
	mov r1, r5
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	beq _02059D38
	ldr r0, _02059D98 ; =0x02099F30
	mov r2, r7
	ldr r0, [r0]
	add r1, r5, #0x18
	bl FUN_02051bb8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D38:
	cmp r4, #0
	beq _02059D90
	ldrb r0, [r5, #0xe]
	cmp r0, #7
	bne _02059D70
	ldr r0, _02059D98 ; =0x02099F30
	mov r2, r4
	ldr r0, [r0]
	add r1, r6, #0xc
	bl FUN_02051bb8
	cmp r0, #0
	bne _02059D90
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D70:
	ldr r0, _02059D98 ; =0x02099F30
	mov r2, r4
	ldr r0, [r0]
	add r1, r5, #0x24
	bl FUN_02051bb8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D90:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D98: .word unk_02099F30
	arm_func_end FUN_02059cc0

	arm_func_start FUN_02059d9c
FUN_02059d9c: ; 0x02059D9C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _02059E38 ; =gL5Config
	ldr r1, _02059E3C ; =0x0209081C
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	ble _02059DE0
	ldr r1, _02059E40 ; =0x0209082C
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02059DFC
_02059DE0:
	ldr r1, _02059E44 ; =0x0209083C
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02059DFC:
	bl _ffix
	cmp r0, #0
	ldreq r0, _02059E48 ; =0x01001000
	mov r2, #0x1000
	str r2, [sp]
	add r1, r0, #0x1000
	str r1, [sp, #4]
	ldr r0, _02059E4C ; =0x02099F24
	ldr r1, _02059E50 ; =0x00000536
	ldr r0, [r0]
	ldr r3, _02059E54 ; =0x00001555
	sub r2, r2, #0xdf
	bl FUN_ov16_020f77b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02059E38: .word gL5Config
_02059E3C: .word unk_0209081C
_02059E40: .word unk_0209082C
_02059E44: .word unk_0209083C
_02059E48: .word 0x01001000
_02059E4C: .word unk_02099F24
_02059E50: .word 0x00000536
_02059E54: .word 0x00001555
	arm_func_end FUN_02059d9c

	arm_func_start FUN_02059e58
FUN_02059e58: ; 0x02059E58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r5, _02059F80 ; =gL5Config
	ldr r1, _02059F84 ; =0x0209084C
	mov r0, r5
	mov r4, #0x1000
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	ble _02059EA0
	ldr r1, _02059F88 ; =0x02090860
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02059EBC
_02059EA0:
	ldr r1, _02059F8C ; =0x02090874
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02059EBC:
	bl _ffix
	movs r5, r0
	ldr r0, _02059F80 ; =gL5Config
	ldr r1, _02059F90 ; =0x02090888
	ldreq r5, _02059F94 ; =0x01001000
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	moveq r1, #0x800
	ldreq r2, _02059F98 ; =0x00000DDB
	beq _02059F5C
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02059F04
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02059F10
_02059F04:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02059F10:
	bl _ffix
	ldr r1, _02059F9C ; =0x0B60B60B
	mov r2, #0xb6
	umull r12, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r12, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _02059FA0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
_02059F5C:
	str r4, [sp]
	add r3, r5, r4
	ldr r0, _02059FA4 ; =0x02099F24
	str r3, [sp, #4]
	ldr r0, [r0]
	ldr r3, _02059FA8 ; =0x00001555
	bl FUN_ov16_020f77b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02059F80: .word gL5Config
_02059F84: .word unk_0209084C
_02059F88: .word unk_02090860
_02059F8C: .word unk_02090874
_02059F90: .word unk_02090888
_02059F94: .word 0x01001000
_02059F98: .word 0x00000DDB
_02059F9C: .word 0x0B60B60B
_02059FA0: .word FX_SinCosTable_
_02059FA4: .word unk_02099F24
_02059FA8: .word 0x00001555
	arm_func_end FUN_02059e58

	arm_func_start FUN_02059fac
FUN_02059fac: ; 0x02059FAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020f77e4
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f74dc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059fac

	arm_func_start FUN_02059fcc
FUN_02059fcc: ; 0x02059FCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x18
	mov r2, #0x78
	str r4, [r5, #0xc]
	str r4, [r5, #8]
	str r4, [r5, #0x10]
	str r4, [r5, #4]
	bl MIi_CpuClearFast
	str r4, [r5, #0x90]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059fcc

	arm_func_start FUN_0205a000
FUN_0205a000: ; 0x0205A000
	ldr r3, [r0, #0xc]
	cmp r1, #0
	movne r2, #0
	strne r2, [r1]
	ldr r12, [r0, #4]
	mov r2, #0
	cmp r12, #0
	ble _0205A04C
_0205A020:
	ldr r0, [r3, #8]
	tst r0, #1
	bne _0205A03C
	cmp r1, #0
	strne r3, [r1]
	add r0, r2, #1
	bx lr
_0205A03C:
	add r2, r2, #1
	cmp r2, r12
	add r3, r3, #0x1c
	blt _0205A020
_0205A04C:
	mov r0, #0
	bx lr
	arm_func_end FUN_0205a000

	arm_func_start FUN_0205a054
FUN_0205a054: ; 0x0205A054
	stmfd sp!, {r4, lr}
	ldr lr, [r0, #0xc]
	cmp r3, #0
	movne r12, #0
	strne r12, [r3]
	ldr r4, [r0, #4]
	mov r12, #0
	cmp r4, #0
	ble _0205A0B8
_0205A078:
	ldr r0, [lr, #8]
	tst r0, #1
	beq _0205A0A8
	ldr r0, [lr]
	cmp r0, r1
	ldreq r0, [lr, #4]
	cmpeq r0, r2
	bne _0205A0A8
	cmp r3, #0
	strne lr, [r3]
	add r0, r12, #1
	ldmfd sp!, {r4, pc}
_0205A0A8:
	add r12, r12, #1
	cmp r12, r4
	add lr, lr, #0x1c
	blt _0205A078
_0205A0B8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205a054

	arm_func_start FUN_0205a0c0
FUN_0205a0c0: ; 0x0205A0C0
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0205A0DC
	bl FUN_ov16_020fb7ac
_0205A0DC:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _0205A0F4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0205A0F4:
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _0205A10C
	ldr r0, _0205A130 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205A10C:
	mov r0, r6
	mov r1, #0
	mov r2, #0x1c
	ldr r5, [r6, #0x14]
	ldr r4, [r6, #0x10]
	bl MI_CpuFill8
	str r4, [r6, #0x10]
	str r5, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_0205A130: .word unk_02099EE4
	arm_func_end FUN_0205a0c0

	arm_func_start FUN_0205a134
FUN_0205a134: ; 0x0205A134
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #8]
	tst r0, #1
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xd]
	cmp r0, #3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x10]
	bl FUN_ov16_020fba10
	movs r4, r0
	beq _0205A19C
	cmp r4, #1
	moveq r1, #1
	streqb r1, [r5, #0xd]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205a0c0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0205A19C:
	mov r0, #2
	strb r0, [r5, #0xd]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205a134

	arm_func_start FUN_0205a1ac
FUN_0205a1ac: ; 0x0205A1AC
	ldr r0, [r1, #0x10]
	ldr r12, _0205A1B8 ; =FUN_ov16_020fbcdc
	bx r12
_0205A1B8: .word FUN_ov16_020fbcdc
	arm_func_end FUN_0205a1ac

	arm_func_start FUN_0205a1bc
FUN_0205a1bc: ; 0x0205A1BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl FUN_02059fcc
	mov r4, #8
	ldr r5, _0205A2D8 ; =FUN_0205a460
	str r9, [r10, #4]
	ldr r3, _0205A2DC ; =FUN_0205a324
	ldr r1, _0205A2E0 ; =0x000009A4
	mov r0, r9
	mov r2, r4
	str r5, [sp]
	bl __cxa_vec_new
	str r0, [r10, #8]
	ldr r0, _0205A2E4 ; =FUN_020525e8
	ldr r3, _0205A2E8 ; =FUN_0205a2f0
	str r0, [sp]
	mov r2, r4
	mov r0, r9
	mov r1, #0x114
	bl __cxa_vec_new
	mov r1, #0x1c
	str r0, [r10, #0x10]
	mul r1, r9, r1
	ldr r0, _0205A2EC ; =gL5Allocator
	bl _ZN11L5Allocator8allocateEm
	ldr r1, [r10, #8]
	str r0, [r10, #0xc]
	cmp r1, #0
	ldrne r1, [r10, #0x10]
	cmpne r1, #0
	cmpne r0, #0
	bne _0205A250
	mov r0, r10
	bl FUN_0205a504
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205A250:
	cmp r9, #0
	mov r5, #0
	ble _0205A2C8
	mov r11, #0x114
	mov r4, #0x1c
_0205A264:
	ldr r0, _0205A2E0 ; =0x000009A4
	mul r6, r5, r0
	ldr r0, [r10, #8]
	add r0, r0, r6
	bl FUN_ov16_020fb448
	mul r7, r5, r11
	ldr r0, [r10, #0x10]
	ldr r1, [r0, r7]!
	ldr r1, [r1, #8]
	blx r1
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #8]
	add r8, r1, r7
	add r7, r0, r6
	ldr r0, [r10, #0xc]
	mov r1, #0
	mla r6, r5, r4, r0
	mov r0, r6
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r6, #0x10]
	add r5, r5, #1
	str r8, [r6, #0x14]
	cmp r5, r9
	blt _0205A264
_0205A2C8:
	mov r0, #0
	strb r0, [r10, #0x14]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205A2D8: .word FUN_0205a460
_0205A2DC: .word FUN_0205a324
_0205A2E0: .word 0x000009A4
_0205A2E4: .word FUN_020525e8
_0205A2E8: .word FUN_0205a2f0
_0205A2EC: .word gL5Allocator
	arm_func_end FUN_0205a1bc

	arm_func_start FUN_0205a2f0
FUN_0205a2f0: ; 0x0205A2F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0205A320 ; =0x02118880
	add r0, r4, #0xc
	str r1, [r4]
	bl FUN_0202fd38
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205A320: .word ov16_02118880
	arm_func_end FUN_0205a2f0

	arm_func_start FUN_0205a324
FUN_0205a324: ; 0x0205A324
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r5, _0205A3D4 ; =FUN_020527d4
	ldr r3, _0205A3D8 ; =FUN_0205a3f0
	mov r1, #4
	mov r2, #0x1bc
	mov r4, r0
	str r5, [sp]
	bl __cxa_vec_ctor
	ldr r5, _0205A3DC ; =FUN_020527ac
	ldr r3, _0205A3E0 ; =FUN_02052780
	add r0, r4, #0x6f0
	mov r1, #1
	mov r2, #0x30
	str r5, [sp]
	bl __cxa_vec_ctor
	ldr r5, _0205A3E4 ; =FUN_02052760
	ldr r3, _0205A3E8 ; =FUN_02052740
	add r0, r4, #0x720
	mov r1, #2
	mov r2, #0x14
	str r5, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x348
	add r6, r0, #0x400
	ldr r5, _0205A3EC ; =0x02118880
	add r0, r6, #0xc
	str r5, [r4, #0x748]
	bl FUN_0202fd38
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r5, [r4, #0x860]
	add r5, r4, #0x860
	add r0, r5, #0xc
	bl FUN_0202fd38
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0205A3D4: .word FUN_020527d4
_0205A3D8: .word FUN_0205a3f0
_0205A3DC: .word FUN_020527ac
_0205A3E0: .word FUN_02052780
_0205A3E4: .word FUN_02052760
_0205A3E8: .word FUN_02052740
_0205A3EC: .word ov16_02118880
	arm_func_end FUN_0205a324

	arm_func_start FUN_0205a3f0
FUN_0205a3f0: ; 0x0205A3F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0205A44C ; =0x02118854
	mov r5, r0
	mov r4, #5
	ldr r12, _0205A450 ; =FUN_02052760
	str r1, [r5]
	ldr r3, _0205A454 ; =FUN_02052740
	mov r1, r4
	add r0, r5, #0x4c
	mov r2, #0x14
	str r12, [sp]
	bl __cxa_vec_ctor
	ldr r12, _0205A458 ; =FUN_020527ac
	ldr r3, _0205A45C ; =FUN_02052780
	mov r1, r4
	add r0, r5, #0xb0
	mov r2, #0x30
	str r12, [sp]
	bl __cxa_vec_ctor
	add r0, r5, #0x1a0
	bl FUN_ov16_021110fc
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_0205A44C: .word ov16_02118854
_0205A450: .word FUN_02052760
_0205A454: .word FUN_02052740
_0205A458: .word FUN_020527ac
_0205A45C: .word FUN_02052780
	arm_func_end FUN_0205a3f0

	arm_func_start FUN_0205a460
FUN_0205a460: ; 0x0205A460
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, _0205A4F4 ; =0x02118880
	add r5, r6, #0x860
	mov r0, r5
	str r4, [r6, #0x860]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0xc
	bl FUN_0202fd44
	add r0, r6, #0x348
	add r5, r0, #0x400
	mov r0, r5
	str r4, [r6, #0x748]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0xc
	bl FUN_0202fd44
	add r0, r6, #0x720
	mov r1, #2
	mov r2, #0x14
	ldr r3, _0205A4F8 ; =FUN_02052760
	bl __cxa_vec_cleanup
	add r0, r6, #0x6f0
	mov r1, #1
	mov r2, #0x30
	ldr r3, _0205A4FC ; =FUN_020527ac
	bl __cxa_vec_cleanup
	mov r0, r6
	mov r1, #4
	mov r2, #0x1bc
	ldr r3, _0205A500 ; =FUN_020527d4
	bl __cxa_vec_cleanup
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_0205A4F4: .word ov16_02118880
_0205A4F8: .word FUN_02052760
_0205A4FC: .word FUN_020527ac
_0205A500: .word FUN_020527d4
	arm_func_end FUN_0205a460

	arm_func_start FUN_0205a504
FUN_0205a504: ; 0x0205A504
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_0205aac0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0205A524
	ldr r0, _0205A5D8 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_0205A524:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0205A57C
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0205A568
	mov r5, #0x114
_0205A544:
	ldr r0, [r4, #0x10]
	mla r0, r6, r5, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0205A544
_0205A568:
	ldr r0, [r4, #0x10]
	ldr r3, _0205A5DC ; =FUN_020525e8
	mov r1, #0x114
	mov r2, #8
	bl __cxa_vec_delete
_0205A57C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0205A5CC
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0205A5B8
	ldr r5, _0205A5E0 ; =0x000009A4
_0205A59C:
	ldr r0, [r4, #8]
	mla r0, r6, r5, r0
	bl FUN_ov16_020fb4f8
	ldr r0, [r4, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0205A59C
_0205A5B8:
	ldr r0, [r4, #8]
	ldr r1, _0205A5E0 ; =0x000009A4
	ldr r3, _0205A5E4 ; =FUN_0205a460
	mov r2, #8
	bl __cxa_vec_delete
_0205A5CC:
	mov r0, r4
	bl FUN_02059fcc
	ldmfd sp!, {r4, r5, r6, pc}
_0205A5D8: .word gL5Allocator
_0205A5DC: .word FUN_020525e8
_0205A5E0: .word 0x000009A4
_0205A5E4: .word FUN_0205a460
	arm_func_end FUN_0205a504

	arm_func_start FUN_0205a5e8
FUN_0205a5e8: ; 0x0205A5E8
	strb r1, [r0, #0x14]
	mov r0, #1
	bx lr
	arm_func_end FUN_0205a5e8

	arm_func_start FUN_0205a5f4
FUN_0205a5f4: ; 0x0205A5F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0205aac0
	mov r0, r4
	bl FUN_0205b398
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205a5f4

	arm_func_start FUN_0205a60c
FUN_0205a60c: ; 0x0205A60C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #4]
	mov r8, r1
	cmp r0, #1
	blt _0205A630
	ldr r0, [r9, #0xc]
	cmp r0, #0
	bne _0205A638
_0205A630:
	mov r7, #0
	b _0205A640
_0205A638:
	add r0, r0, #0x1c
	sub r7, r0, #0x1c
_0205A640:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0205A738 ; =0x02099F18
	mov r6, #0
	ldr r0, [r0]
	mov r5, r6
	ldrb r0, [r0, #4]
	mov r4, #3
	cmp r0, #0
	movne r8, #0
	b _0205A728
_0205A66C:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	ldrne r0, [r7, #0x14]
	cmpne r0, #0
	beq _0205A720
	ldr r1, [r7, #8]
	tst r1, #1
	beq _0205A720
	ldrb r0, [r7, #0xd]
	cmp r0, #1
	beq _0205A6AC
	cmp r0, #2
	beq _0205A6BC
	cmp r0, #3
	beq _0205A708
	b _0205A720
_0205A6AC:
	mov r0, r9
	mov r1, r7
	bl FUN_0205a134
	b _0205A720
_0205A6BC:
	tst r1, #2
	bne _0205A720
	mov r0, r9
	mov r1, r7
	bl FUN_0205a1ac
	cmp r0, #0
	bne _0205A6E8
	mov r0, r9
	mov r1, r7
	bl FUN_0205a0c0
	b _0205A720
_0205A6E8:
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_020efa9c
	mov r1, r0
	ldrb r2, [r7, #0xf]
	ldr r0, [r7, #0x10]
	bl FUN_ov16_020fc288
	strb r4, [r7, #0xd]
_0205A708:
	ldr r0, [r7, #8]
	tst r0, #0x100
	beq _0205A720
	ldr r0, [r7, #0x10]
	mov r1, r8
	bl FUN_ov16_020fb504
_0205A720:
	add r6, r6, #1
	add r7, r7, #0x1c
_0205A728:
	ldr r0, [r9, #4]
	cmp r6, r0
	blt _0205A66C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205A738: .word g3DDevice
	arm_func_end FUN_0205a60c

	arm_func_start FUN_0205a73c
FUN_0205a73c: ; 0x0205A73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #4]
	mov r7, r1
	cmp r0, #1
	blt _0205A760
	ldr r6, [r8, #0xc]
	cmp r6, #0
	bne _0205A764
_0205A760:
	mov r6, #0
_0205A764:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
	mov r5, r4
	cmp r0, #0
	ble _0205A7EC
	ldr r9, _0205A824 ; =0x00000101
_0205A780:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0205A7D8
	ldr r1, [r6, #8]
	and r1, r1, r9
	cmp r1, r9
	ldreqb r1, [r6, #0xd]
	cmpeq r1, #3
	bne _0205A7D8
	cmp r7, #0
	beq _0205A7B8
	ldrb r1, [r6, #0xe]
	cmp r1, #0
	beq _0205A7D8
_0205A7B8:
	cmp r7, #0
	bne _0205A7CC
	ldrb r1, [r6, #0xe]
	cmp r1, #0
	bne _0205A7D8
_0205A7CC:
	bl FUN_ov16_020fb564
	cmp r0, #0
	addne r4, r4, #1
_0205A7D8:
	ldr r0, [r8, #4]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x1c
	blt _0205A780
_0205A7EC:
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205A824: .word 0x00000101
	arm_func_end FUN_0205a73c

	arm_func_start FUN_0205a828
FUN_0205a828: ; 0x0205A828
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r0, r1
	mov r1, #0
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020efa9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	ldrb r0, [sp, #0x24]
	str r2, [sp]
	ldrb r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_0205a87c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205a828

	arm_func_start FUN_0205a87c
FUN_0205a87c: ; 0x0205A87C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r10, #0
	movs r8, r1
	mov r4, r0
	str r10, [sp, #0xc]
	mov r7, r2
	mov r6, r3
	addeq sp, sp, #0x10
	subeq r0, r10, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0205b340
	cmp r0, #0
	addne sp, sp, #0x10
	subne r0, r10, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0206cbf8
	add r9, sp, #0xc
	mov r1, r0
	mov r0, r4
	mov r2, r7
	mov r3, r9
	bl FUN_0205a054
	mov r5, r0
	cmp r5, #0
	bgt _0205A908
	mov r0, r4
	mov r1, r9
	bl FUN_0205a000
	mov r5, r0
	cmp r5, #0
	addle sp, sp, #0x10
	suble r0, r10, #1
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205A908:
	ldrb r1, [sp, #0x34]
	add r0, r4, #0x18
	str r0, [sp]
	ldrb r0, [sp, #0x38]
	str r1, [sp, #4]
	mov r1, r8
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrb r3, [r4, #0x14]
	ldr r0, [r0, #0x10]
	mov r2, r6
	bl FUN_ov16_020fbf60
	cmp r0, #0
	bne _0205A958
	ldr r1, [sp, #0xc]
	mov r0, r4
	bl FUN_0205a0c0
	add sp, sp, #0x10
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205A958:
	ldr r0, _0205A9F4 ; =0x0208F6F0
	ldr r2, [sp, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, [r2, #0x10]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fbe94
	ldr r0, [sp, #0xc]
	mov r4, #1
	ldr r0, [r0, #0x10]
	mov r3, r4
	mov r1, #0x7000
	mov r2, #8
	bl FUN_ov16_020fbee8
	mov r0, r8
	bl FUN_0206cbf8
	ldr r2, [sp, #0xc]
	ldrb r1, [sp, #0x30]
	str r0, [r2]
	ldr r0, [sp, #0xc]
	cmp r1, #0
	str r7, [r0, #4]
	ldr r0, [sp, #0xc]
	ldrb r2, [sp, #0x34]
	str r4, [r0, #8]
	ldreq r1, [sp, #0xc]
	ldreq r0, [r1, #8]
	orreq r0, r0, #2
	streq r0, [r1, #8]
	ldr r0, [sp, #0xc]
	mov r1, #1
	strb r1, [r0, #0xd]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, r5
	strb r2, [r1, #0xf]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205A9F4: .word unk_0208F6F0
	arm_func_end FUN_0205a87c

	arm_func_start FUN_0205a9f8
FUN_0205a9f8: ; 0x0205A9F8
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ble _0205AA1C
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AA1C
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AA24
_0205AA1C:
	mov r4, #0
	b _0205AA30
_0205AA24:
	mov r2, #0x1c
	mla r2, r1, r2, r3
	sub r4, r2, #0x1c
_0205AA30:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #8]
	bic r1, r1, #2
	str r1, [r4, #8]
	ldrb r1, [r4, #0xd]
	cmp r1, #3
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	mov r1, r4
	bl FUN_0205a134
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205a9f8

	arm_func_start FUN_0205aa80
FUN_0205aa80: ; 0x0205AA80
	cmp r1, #0
	ble _0205AAA0
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AAA0
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AAA8
_0205AAA0:
	mov r1, #0
	b _0205AAB4
_0205AAA8:
	mov r2, #0x1c
	mla r2, r1, r2, r3
	sub r1, r2, #0x1c
_0205AAB4:
	ldr r12, _0205AABC ; =FUN_0205a0c0
	bx r12
_0205AABC: .word FUN_0205a0c0
	arm_func_end FUN_0205aa80

	arm_func_start FUN_0205aac0
FUN_0205aac0: ; 0x0205AAC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r6, #0
	ldr r5, _0205AB60 ; =0x02099EE4
	ldr r4, _0205AB64 ; =0x000009A4
	mov r11, #0x114
	b _0205AB50
_0205AADC:
	ldr r2, [r10, #0xc]
	mov r1, #0x1c
	mla r1, r6, r1, r2
	ldr r0, [r5]
	ldr r1, [r1, #0x18]
	bl FUN_ov16_020fd350
	ldr r1, [r10, #0xc]
	mov r0, #0x1c
	mla r7, r6, r0, r1
	ldr r1, [r10, #8]
	ldr r2, [r10, #0x10]
	mov r0, #0x114
	mla r9, r6, r0, r2
	mla r8, r6, r4, r1
	mov r0, r7
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r8, [r7, #0x10]
	str r9, [r7, #0x14]
	ldr r0, [r10, #0x10]
	mla r0, r6, r11, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r10, #8]
	mla r0, r6, r4, r0
	bl FUN_ov16_020fb4f8
	add r6, r6, #1
_0205AB50:
	ldr r0, [r10, #4]
	cmp r6, r0
	blt _0205AADC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205AB60: .word unk_02099EE4
_0205AB64: .word 0x000009A4
	arm_func_end FUN_0205aac0

	arm_func_start FUN_0205ab68
FUN_0205ab68: ; 0x0205AB68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10c
	mov r10, r0
	mov r9, r2
	cmp r1, #0
	ble _0205AB98
	ldr r0, [r10, #4]
	cmp r1, r0
	bgt _0205AB98
	ldr r2, [r10, #0xc]
	cmp r2, #0
	bne _0205ABA0
_0205AB98:
	mov r8, #0
	b _0205ABAC
_0205ABA0:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r8, r0, #0x1c
_0205ABAC:
	mov r0, r10
	bl FUN_0205b340
	cmp r0, #0
	addne sp, sp, #0x10c
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0
	beq _0205ABD8
	ldr r0, [r8, #8]
	tst r0, #1
	bne _0205ABE4
_0205ABD8:
	add sp, sp, #0x10c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205ABE4:
	mov r7, #0
	ldr r0, [r8]
	mov r1, r7
	bl FUN_ov16_020efa9c
	add r5, sp, #0xc
	add r4, sp, #0x8c
	mov r1, r9
	mov r2, r5
	mov r3, r4
	mov r6, r0
	bl FUN_ov16_020f395c
	add r0, sp, #4
	str r0, [sp]
	ldrb r1, [r6, #0x5c]
	ldr r0, [r10, #0x84]
	mov r2, r9
	add r3, sp, #8
	bl FUN_ov16_020f3afc
	cmp r0, #0
	addeq sp, sp, #0x10c
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #4]
	mov r1, r5
	str r0, [sp]
	ldr r0, [r8, #0x10]
	ldr r3, [sp, #8]
	mov r2, r4
	bl FUN_ov16_020fb94c
	cmp r0, #0
	moveq r0, r7
	movne r0, #1
	strneb r0, [r8, #0xd]
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0205ab68

	arm_func_start FUN_0205ac70
FUN_0205ac70: ; 0x0205AC70
	cmp r1, #0
	ble _0205AC90
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AC90
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AC98
_0205AC90:
	mov r1, #0
	b _0205ACA4
_0205AC98:
	mov r2, #0x1c
	mla r2, r1, r2, r3
	sub r1, r2, #0x1c
_0205ACA4:
	ldr r12, _0205ACAC ; =FUN_0205a134
	bx r12
_0205ACAC: .word FUN_0205a134
	arm_func_end FUN_0205ac70

	arm_func_start FUN_0205acb0
FUN_0205acb0: ; 0x0205ACB0
	cmp r1, #0
	ble _0205ACD0
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205ACD0
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205ACD8
_0205ACD0:
	mov r1, #0
	b _0205ACE4
_0205ACD8:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r1, r0, #0x1c
_0205ACE4:
	cmp r1, #0
	bxeq lr
	ldr r0, [r1, #8]
	tst r0, #1
	bxeq lr
	cmp r2, #0
	orrne r0, r0, #0x100
	strne r0, [r1, #8]
	biceq r0, r0, #0x100
	streq r0, [r1, #8]
	bx lr
	arm_func_end FUN_0205acb0

	arm_func_start FUN_0205ad10
FUN_0205ad10: ; 0x0205AD10
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AD34
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AD34
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205AD3C
_0205AD34:
	mov r0, #0
	b _0205AD48
_0205AD3C:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205AD48:
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205ad10

	arm_func_start FUN_0205ad60
FUN_0205ad60: ; 0x0205AD60
	cmp r1, #0
	ble _0205AD80
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AD80
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205AD88
_0205AD80:
	mov r0, #0
	b _0205AD94
_0205AD88:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205AD94:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	moveq r0, #0
	bx lr
	arm_func_end FUN_0205ad60

	arm_func_start FUN_0205ada4
FUN_0205ada4: ; 0x0205ADA4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205ADC8
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205ADC8
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205ADD0
_0205ADC8:
	mov r0, #0
	b _0205ADDC
_0205ADD0:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r0, r0, #0x1c
_0205ADDC:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	bl FUN_ov16_020fbf0c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205ada4

	arm_func_start FUN_0205adf8
FUN_0205adf8: ; 0x0205ADF8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AE1C
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205AE1C
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AE24
_0205AE1C:
	mov r0, #0
	b _0205AE30
_0205AE24:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r0, r0, #0x1c
_0205AE30:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	bl FUN_ov16_020fbf30 ; may be ov17 ; ov16(Mica)
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205adf8

	arm_func_start FUN_0205ae4c
FUN_0205ae4c: ; 0x0205AE4C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AE70
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205AE70
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AE78
_0205AE70:
	mov r0, #0
	b _0205AE84
_0205AE78:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r0, r0, #0x1c
_0205AE84:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	bl FUN_ov16_020fbf3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205ae4c

	arm_func_start FUN_0205aea0
FUN_0205aea0: ; 0x0205AEA0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AEC4
	ldr r12, [r0, #4]
	cmp r1, r12
	bgt _0205AEC4
	ldr r12, [r0, #0xc]
	cmp r12, #0
	bne _0205AECC
_0205AEC4:
	mov r0, #0
	b _0205AED8
_0205AECC:
	mov r0, #0x1c
	mla r0, r1, r0, r12
	sub r0, r0, #0x1c
_0205AED8:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020fbe5c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205aea0

	arm_func_start FUN_0205aefc
FUN_0205aefc: ; 0x0205AEFC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AF20
	ldr r12, [r0, #4]
	cmp r1, r12
	bgt _0205AF20
	ldr r12, [r0, #0xc]
	cmp r12, #0
	bne _0205AF28
_0205AF20:
	mov r0, #0
	b _0205AF34
_0205AF28:
	mov r0, #0x1c
	mla r0, r1, r0, r12
	sub r0, r0, #0x1c
_0205AF34:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020fbe6c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205aefc

	arm_func_start FUN_0205af58
FUN_0205af58: ; 0x0205AF58
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AF7C
	ldr r12, [r0, #4]
	cmp r1, r12
	bgt _0205AF7C
	ldr r12, [r0, #0xc]
	cmp r12, #0
	bne _0205AF84
_0205AF7C:
	mov r0, #0
	b _0205AF90
_0205AF84:
	mov r0, #0x1c
	mla r0, r1, r0, r12
	sub r0, r0, #0x1c
_0205AF90:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020fbe94
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205af58

	arm_func_start FUN_0205afb4
FUN_0205afb4: ; 0x0205AFB4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r12, sp, #0xc
	mov r3, #0
	mov r4, r0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	cmp r2, #0
	ble _0205AFF4
	ldr r0, [r1, #4]
	cmp r2, r0
	bgt _0205AFF4
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0205AFFC
_0205AFF4:
	mov r0, #0
	b _0205B008
_0205AFFC:
	mov r0, #0x1c
	mla r0, r2, r0, r1
	sub r0, r0, #0x1c
_0205B008:
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	cmpne r1, #0
	beq _0205B038
	add r0, sp, #0
	bl FUN_ov16_020fbea4
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_0205B038:
	add r0, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205afb4

	arm_func_start FUN_0205b04c
FUN_0205b04c: ; 0x0205B04C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r12, sp, #0xc
	mov r3, #0
	mov r4, r0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	cmp r2, #0
	ble _0205B08C
	ldr r0, [r1, #4]
	cmp r2, r0
	bgt _0205B08C
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0205B094
_0205B08C:
	mov r0, #0
	b _0205B0A0
_0205B094:
	mov r0, #0x1c
	mla r0, r2, r0, r1
	sub r0, r0, #0x1c
_0205B0A0:
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	cmpne r1, #0
	beq _0205B0D0
	add r0, sp, #0
	bl FUN_ov16_020fbeb8
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_0205B0D0:
	add r0, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205b04c

	arm_func_start FUN_0205b0e4
FUN_0205b0e4: ; 0x0205B0E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	ble _0205B110
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B110
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B118
_0205B110:
	mov r0, #0
	b _0205B124
_0205B118:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B124:
	cmp r0, #0
	moveq r6, #0
	beq _0205B13C
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
	mov r6, r0
_0205B13C:
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020faf80
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fb040
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205b0e4

	arm_func_start FUN_0205b174
FUN_0205b174: ; 0x0205B174
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	ble _0205B1A0
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B1A0
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B1A8
_0205B1A0:
	mov r0, #0
	b _0205B1B4
_0205B1A8:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B1B4:
	cmp r0, #0
	moveq r6, #0
	beq _0205B1CC
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
	mov r6, r0
_0205B1CC:
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020faf5c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fb040
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205b174

	arm_func_start FUN_0205b204
FUN_0205b204: ; 0x0205B204
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205B228
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B228
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B230
_0205B228:
	mov r0, #0
	b _0205B23C
_0205B230:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B23C:
	cmp r0, #0
	moveq r0, #0
	beq _0205B250
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
_0205B250:
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fb02c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205b204

	arm_func_start FUN_0205b264
FUN_0205b264: ; 0x0205B264
	cmp r1, #0
	ble _0205B284
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B284
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B28C
_0205B284:
	mov r0, #0
	b _0205B298
_0205B28C:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B298:
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r0, #0xd]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_0205b264

	arm_func_start FUN_0205b2b8
FUN_0205b2b8: ; 0x0205B2B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x128
	ldr r6, _0205B338 ; =0x020908FC
	add r5, sp, #0
	mov r4, r0
	mov r8, r5
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldr r5, _0205B33C ; =0x02090924
	add r9, r4, #0x84
	mov r10, #9
	mov r7, #0
	add r6, sp, #0x28
_0205B2FC:
	str r7, [r9]
	ldr r2, [r8, r10, lsl #2]
	mov r0, r6
	mov r1, r5
	bl sprintf
	mov r0, r6
	mov r1, r9
	bl FUN_ov16_020f316c
	sub r9, r9, #0xc
	subs r10, r10, #1
	bpl _0205B2FC
	mov r0, #1
	str r0, [r4, #0x90]
	add sp, sp, #0x128
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205B338: .word unk_020908FC
_0205B33C: .word unk_02090924
	arm_func_end FUN_0205b2b8

	arm_func_start FUN_0205b340
FUN_0205b340: ; 0x0205B340
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _0205B390
	cmp r0, #1
	beq _0205B36C
	cmp r0, #2
	bne _0205B390
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0205B36C:
	add r0, r4, #0x18
	mov r1, #0xa
	bl FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	strne r0, [r4, #0x90]
	movne r0, #0
	ldmfd sp!, {r4, pc}
_0205B390:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205b340

	arm_func_start FUN_0205b398
FUN_0205b398: ; 0x0205B398
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #0xa
	bl FUN_ov16_020f338c
	add r4, r4, #0x84
	mov r5, #9
_0205B3B4:
	mov r0, r4
	bl FUN_ov16_020f33fc
	sub r4, r4, #0xc
	subs r5, r5, #1
	bpl _0205B3B4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205b398

	arm_func_start FUN_0205b3cc
FUN_0205b3cc: ; 0x0205B3CC
	stmdb sp!, {r3}
	sub sp, sp, #0xc
	add r12, sp, #0
	mov r3, #0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	cmp r1, #0
	ble _0205B408
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205B408
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205B410
_0205B408:
	mov r1, #0
	b _0205B41C
_0205B410:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r1, r0, #0x1c
_0205B41C:
	cmp r1, #0
	ldrne r0, [r1, #0x10]
	cmpne r0, #0
	strneb r2, [r1, #0xe]
	add sp, sp, #0xc
	ldmia sp!, {r3}
	bx lr
	arm_func_end FUN_0205b3cc

	arm_func_start FUN_0205b438
FUN_0205b438: ; 0x0205B438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r9, r0
	mov r5, r6
	mov r4, r6
_0205B44C:
	ldr r0, [r9, #4]
	cmp r0, #1
	blt _0205B464
	ldr r8, [r9, #0xc]
	cmp r8, #0
	bne _0205B468
_0205B464:
	mov r8, r5
_0205B468:
	cmp r8, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, r4
	cmp r0, #0
	ble _0205B4DC
_0205B480:
	ldr r0, [r8, #0x10]
	cmp r0, #0
	ldrne r1, [r8, #0x14]
	cmpne r1, #0
	beq _0205B4C8
	ldr r1, [r8, #8]
	tst r1, #1
	beq _0205B4C8
	cmp r6, #0
	bne _0205B4BC
	bl FUN_ov16_020fc4a8
	cmp r0, #0
	bne _0205B4C8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205B4BC:
	cmp r6, #1
	bne _0205B4C8
	bl FUN_ov16_020fc48c
_0205B4C8:
	ldr r0, [r9, #4]
	add r7, r7, #1
	cmp r7, r0
	add r8, r8, #0x1c
	blt _0205B480
_0205B4DC:
	add r6, r6, #1
	cmp r6, #2
	blt _0205B44C
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0205b438

	arm_func_start FUN_0205b4f0
FUN_0205b4f0: ; 0x0205B4F0
	ldr r0, _0205B500 ; =0x02090978
	cmp r1, #0
	movne r0, #0
	bx lr
_0205B500: .word unk_02090978
	arm_func_end FUN_0205b4f0

	arm_func_start FUN_0205b504
FUN_0205b504: ; 0x0205B504
	ldr r0, _0205B514 ; =0x02090994
	cmp r1, #0
	movne r0, #0
	bx lr
_0205B514: .word unk_02090994
	arm_func_end FUN_0205b504

	arm_func_start FUN_0205b518
FUN_0205b518: ; 0x0205B518
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_0205b518

	arm_func_start FUN_0205b530
FUN_0205b530: ; 0x0205B530
	cmp r1, #0
	cmpge r2, #0
	mvnlt r0, #0
	addge r0, r2, #1
	andge r0, r0, #0xff
	bx lr
	arm_func_end FUN_0205b530

	arm_func_start FUN_0205b548
FUN_0205b548: ; 0x0205B548
	cmp r1, #0
	mvnlt r0, #0
	bxlt lr
	ands r0, r1, #0xff
	mvneq r0, #0
	subne r0, r0, #1
	bx lr
	arm_func_end FUN_0205b548

	arm_func_start FUN_0205b564
FUN_0205b564: ; 0x0205B564
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_0205b548
	cmp r0, #0
	blt _0205B594
	ldr r1, [r5, #0xc]
	cmp r0, r1
	bge _0205B594
	ldr r2, [r5, #0x14]
	cmp r2, #0
	bne _0205B59C
_0205B594:
	mov r2, #0
	b _0205B5A4
_0205B59C:
	mov r1, #0x3c
	mla r2, r0, r1, r2
_0205B5A4:
	cmp r2, #0
	beq _0205B5B8
	ldrh r1, [r2, #8]
	tst r1, #1
	bne _0205B5C0
_0205B5B8:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0205B5C0:
	cmp r4, #0
	strne r2, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205b564

	arm_func_start FUN_0205b5cc
FUN_0205b5cc: ; 0x0205B5CC
	ldr r12, [r0, #0xc]
	cmp r12, #0
	ble _0205B5E4
	ldr r3, [r0, #0x14]
	cmp r3, #0
	bne _0205B5E8
_0205B5E4:
	mov r3, #0
_0205B5E8:
	cmp r12, #0
	mov r0, #0
	ble _0205B61C
_0205B5F4:
	ldrh r2, [r3, #8]
	tst r2, #1
	bne _0205B60C
	cmp r1, #0
	strne r3, [r1]
	bx lr
_0205B60C:
	add r0, r0, #1
	cmp r0, r12
	add r3, r3, #0x3c
	blt _0205B5F4
_0205B61C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_0205b5cc

	arm_func_start FUN_0205b624
FUN_0205b624: ; 0x0205B624
	stmfd sp!, {r4, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0205B640
	bl FUN_ov16_020fa154
_0205B640:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0205B658
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0205B658:
	ldr r1, [r4, #0x38]
	cmp r1, #0
	beq _0205B670
	ldr r0, _0205B6C8 ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205B670:
	mov r3, #0
	sub r0, r3, #1
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #0x30]
	str r0, [r4]
	str r0, [r4, #4]
	strh r3, [r4, #8]
	strb r3, [r4, #0xa]
	strb r3, [r4, #0xb]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	str r3, [r4, #0x14]
	str r3, [r4, #0x18]
	str r3, [r4, #0x1c]
	str r3, [r4, #0x20]
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	str r3, [r4, #0x2c]
	str r1, [r4, #0x30]
	str r2, [r4, #0x34]
	str r3, [r4, #0x38]
	ldmfd sp!, {r4, pc}
_0205B6C8: .word unk_02099EE4
	arm_func_end FUN_0205b624

	arm_func_start FUN_0205b6cc
FUN_0205b6cc: ; 0x0205B6CC
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r1, #0
	cmpne r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #8]
	tst r0, #1
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0205B764 ; =0x02099EE4
	ldr r1, [r4, #0x38]
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	movs r6, r0
	beq _0205B754
	cmp r6, #1
	moveq r1, #1
	streqb r1, [r4, #0xb]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0205b624
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_0205B754:
	mov r0, #2
	strb r0, [r4, #0xb]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0205B764: .word unk_02099EE4
	arm_func_end FUN_0205b6cc

	arm_func_start FUN_0205b768
FUN_0205b768: ; 0x0205B768
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	movs r6, r1
	mov r5, r0
	mov r4, #0
	addeq sp, sp, #0x1c
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r2, [r6, #0xb]
	cmp r2, #3
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #2
	addne sp, sp, #0x1c
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0205b6cc
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _0205B9AC ; =0x0208C460
	add r7, sp, #0
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldr r0, [r6, #0x30]
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _0205B894
	ldr r7, _0205B9B0 ; =0x02099EE4
	ldr r1, [r6, #0x38]
	ldr r0, [r7]
	mov r2, #1
	mov r3, #4
	bl FUN_ov16_020fd6d8
	movs r8, r0
	bne _0205B820
	mov r0, r5
	mov r1, r6
	bl FUN_0205b624
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B820:
	ldr r0, [r6, #0x30]
	mov r1, r8
	bl FUN_ov16_020f9ddc
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_020fd350
	ldr r0, [r6, #0x30]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	bne _0205B868
	mov r0, r5
	mov r1, r6
	bl FUN_0205b624
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B868:
	ldr r0, [r6, #0x24]
	cmp r0, #0
	ldreq r0, [r6, #0x28]
	cmpeq r0, #0
	ldreq r0, [r6, #0x2c]
	cmpeq r0, #0
	ldreq r0, _0205B9B4 ; =0x0208F6F0
	ldreq r0, [r0, #0x18]
	streq r0, [r6, #0x24]
	streq r0, [r6, #0x28]
	streq r0, [r6, #0x2c]
_0205B894:
	ldr r7, _0205B9B0 ; =0x02099EE4
	mov r2, #2
	ldr r0, [r7]
	ldr r1, [r6, #0x38]
	mov r3, r2
	bl FUN_ov16_020fd6d8
	movs r8, r0
	bne _0205B8CC
	mov r0, r5
	mov r1, r6
	bl FUN_0205b624
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B8CC:
	ldr r0, [r6, #0x34]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_020fd350
	mov r5, #0
	mov r10, #1
	add r9, sp, #0
	b _0205B998
_0205B8FC:
	ldr r0, [r6, #0x30]
	mov r1, r5
	bl FUN_ov16_020faa1c
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, r10
	movne r0, r4
	cmp r0, #0
	beq _0205B994
	add r2, r5, #3
	ldr r0, [r7]
	ldr r1, [r6, #0x38]
	ldr r3, [r9, r2, lsl #2]
	bl FUN_ov16_020fd6d8
	movs r8, r0
	beq _0205B994
	ldr r0, [r6, #0x30]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020fa7f0
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_020fd350
	ldr r0, [r6, #0x30]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa838
	cmp r0, #0
	bne _0205B988
	ldr r0, [r6, #0x30]
	mov r1, r5
	bl FUN_ov16_020fa8a0
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B988:
	ldr r0, [r6, #0x30]
	mov r1, r5
	bl FUN_ov16_020fa8b8
_0205B994:
	add r5, r5, #1
_0205B998:
	cmp r5, #5
	blt _0205B8FC
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B9AC: .word unk_0208C460
_0205B9B0: .word unk_02099EE4
_0205B9B4: .word unk_0208F6F0
	arm_func_end FUN_0205b768

	arm_func_start FUN_0205b9b8
FUN_0205b9b8: ; 0x0205B9B8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x74
	movs r5, r1
	ldrne r0, [r5, #0x30]
	cmpne r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrb r1, [r5, #0xa]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0205BC7C
_0205B9E8: ; jump table
	b _0205BC7C ; case 0
	b _0205B9FC ; case 1
	b _0205BA20 ; case 2
	b _0205BAB8 ; case 3
	b _0205BC58 ; case 4
_0205B9FC:
	add r1, r5, #0xc
_0205BA00:
	bl FUN_ov16_020fa448
	ldr r0, [r5, #0x30]
	add r1, r5, #0x18
_0205BA0C:
	bl FUN_ov16_020fa464
	ldr r0, [r5, #0x30]
	add r1, r5, #0x24
	bl FUN_ov16_020fa4a0
	b _0205BC88
_0205BA20:
	ldr r4, _0205BC94 ; =0x02099EB0
	mov r7, #1
	ldr r1, [r4]
	add r0, sp, #0x2c
	mov r2, r7
	bl FUN_0205e084
	ldr r12, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r1, [r4]
	add r0, sp, #0x20
	mov r2, r7
	str r12, [sp, #0x68]
	str r6, [sp, #0x6c]
	str r3, [sp, #0x70]
	bl FUN_0205e0f4
	add r6, sp, #0x68
	ldr r12, [sp, #0x20]
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r0, r6
	mov r2, r6
	add r1, r5, #0xc
	str r12, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	bl VEC_Add
	add r4, sp, #0x5c
	add r1, r5, #0x18
	mov r0, r4
	mov r2, r4
	bl VEC_Add
	ldr r0, [r5, #0x30]
	mov r1, r6
	bl FUN_ov16_020fa448
	ldr r0, [r5, #0x30]
	mov r1, r4
_0205BAB4:
	b _0205BA0C
_0205BAB8:
	ldr r0, _0205BC98 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0205BAD4
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0205BB38
_0205BAD4:
	ldr r4, _0205BC9C ; =0x02099EEC
	ldr r2, [r5, #4]
	ldr r1, [r4]
	add r0, sp, #0x14
	bl FUN_0205afb4
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
	ldrh r0, [r5, #8]
	tst r0, #0x2000
	bne _0205BB34
	ldr r1, [r4]
	ldr r2, [r5, #4]
	add r0, sp, #8
	bl FUN_0205b04c
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x44]
	str r1, [sp, #0x48]
	b _0205BC3C
_0205BB34:
	b _0205BC28
_0205BB38:
	ldr r0, [r5, #4]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0205BC88
	ldr r6, [r4, #0x84]
	ldr r1, [r6, #4]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	add r2, sp, #4
	add r3, sp, #0
	ldmia r6, {r0, r1}
	bl FUN_ov16_020efe30
	ldr r0, [sp]
	ldr r7, [r5, #0x14]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0205BB9C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0205BBA8
_0205BB9C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0205BBA8:
	bl _ffix
	ldr r1, [sp, #4]
	mov r6, r0
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _0205BBD4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0205BBE0
_0205BBD4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0205BBE0:
	bl _ffix
	str r0, [sp, #0x50]
	str r6, [sp, #0x54]
	str r7, [sp, #0x58]
	ldrh r0, [r5, #8]
	tst r0, #0x2000
	bne _0205BC28
	ldr r0, [r4, #0x84]
	ldr r1, _0205BCA0 ; =FX_SinCosTable_
	ldrh r2, [r0, #0x18]
	mov r0, #0
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	b _0205BC40
_0205BC28:
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x44]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x48]
	ldr r0, [r5, #0x20]
_0205BC3C:
	str r0, [sp, #0x4c]
_0205BC40:
	ldr r0, [r5, #0x30]
	add r1, sp, #0x50
	bl FUN_ov16_020fa448
	ldr r0, [r5, #0x30]
	add r1, sp, #0x44
	b _0205BAB4
_0205BC58:
	ldr r1, [r5, #0x10]
	ldr r4, [r5, #0x14]
	ldr r2, [r5, #0xc]
	rsb r3, r1, #0
	add r1, sp, #0x38
	str r2, [sp, #0x38]
	str r3, [sp, #0x3c]
	str r4, [sp, #0x40]
	b _0205BA00
_0205BC7C:
	add sp, sp, #0x74
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205BC88:
	mov r0, #1
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205BC94: .word unk_02099EB0
_0205BC98: .word unk_02099EF0
_0205BC9C: .word unk_02099EEC
_0205BCA0: .word FX_SinCosTable_
	arm_func_end FUN_0205b9b8

	arm_func_start FUN_0205bca4
FUN_0205bca4: ; 0x0205BCA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl FUN_0205b518
	mov r0, r10
	mov r1, #1
	str r9, [r10, #0xc]
	bl FUN_02052168
	ldr r0, _0205BE0C ; =FUN_020527d4
	mov r4, #8
	str r0, [sp]
	ldr r3, _0205BE10 ; =FUN_0205a3f0
	mov r0, r9
	mov r1, #0x1bc
	mov r2, r4
	bl __cxa_vec_new
	str r0, [r10, #0x10]
	ldr r1, _0205BE14 ; =FUN_020525e8
	ldr r3, _0205BE18 ; =FUN_0205a2f0
	str r1, [sp]
	mov r2, r4
	mov r0, r9
	mov r1, #0x114
	bl __cxa_vec_new
	mov r1, #0x3c
	str r0, [r10, #0x18]
	mul r1, r9, r1
	ldr r0, _0205BE1C ; =gL5Allocator
	bl _ZN11L5Allocator8allocateEm
	ldr r1, [r10, #0x10]
	str r0, [r10, #0x14]
	cmp r1, #0
	ldrne r1, [r10, #0x18]
	cmpne r1, #0
	cmpne r0, #0
	bne _0205BD44
	mov r0, r10
	bl FUN_0205be20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205BD44:
	cmp r9, #0
	mov r6, #0
	ble _0205BDF4
	mvn r5, #0
	mov r4, r6
	mov r11, #0x3c
_0205BD5C:
	mov r0, #0x1bc
	mul r8, r6, r0
	ldr r0, [r10, #0x10]
	add r0, r0, r8
	bl FUN_ov16_020f9cdc
	mov r0, #0x114
	mul r7, r6, r0
	ldr r0, [r10, #0x18]
	ldr r1, [r0, r7]!
	ldr r1, [r1, #8]
	blx r1
	mul r0, r6, r11
	ldr r2, [r10, #0x18]
	ldr r1, [r10, #0x10]
	add r3, r2, r7
	add r2, r1, r8
	ldr r1, [r10, #0x14]
	add r6, r6, #1
	str r5, [r1, r0]
	add r0, r1, r0
	str r5, [r0, #4]
	strh r4, [r0, #8]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x20]
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	str r4, [r0, #0x2c]
	str r2, [r0, #0x30]
	str r3, [r0, #0x34]
	str r4, [r0, #0x38]
	cmp r6, r9
	blt _0205BD5C
_0205BDF4:
	mov r1, #0
	mov r0, r10
	mov r2, r1
	bl FUN_020521d0
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205BE0C: .word FUN_020527d4
_0205BE10: .word FUN_0205a3f0
_0205BE14: .word FUN_020525e8
_0205BE18: .word FUN_0205a2f0
_0205BE1C: .word gL5Allocator
	arm_func_end FUN_0205bca4

	arm_func_start FUN_0205be20
FUN_0205be20: ; 0x0205BE20
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mvn r1, #0
	bl FUN_020522ec
	mov r0, r4
	bl FUN_020521a0
	mov r0, r4
	bl FUN_0205c468
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0205BE54
	ldr r0, _0205BF08 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_0205BE54:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205BEAC
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205BE98
	mov r5, #0x114
_0205BE74:
	ldr r0, [r4, #0x18]
	mla r0, r6, r5, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205BE74
_0205BE98:
	ldr r0, [r4, #0x18]
	ldr r3, _0205BF0C ; =FUN_020525e8
	mov r1, #0x114
	mov r2, #8
	bl __cxa_vec_delete
_0205BEAC:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0205BEFC
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205BEE8
	mov r5, #0x1bc
_0205BECC:
	ldr r0, [r4, #0x10]
	mla r0, r6, r5, r0
	bl FUN_ov16_020f9d80
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205BECC
_0205BEE8:
	ldr r0, [r4, #0x10]
	ldr r3, _0205BF10 ; =FUN_020527d4
	mov r1, #0x1bc
	mov r2, #8
	bl __cxa_vec_delete
_0205BEFC:
	mov r0, r4
	bl FUN_0205b518
	ldmfd sp!, {r4, r5, r6, pc}
_0205BF08: .word gL5Allocator
_0205BF0C: .word FUN_020525e8
_0205BF10: .word FUN_020527d4
	arm_func_end FUN_0205be20

	arm_func_start FUN_0205bf14
FUN_0205bf14: ; 0x0205BF14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r0, [r9, #0xc]
	mov r8, r1
	cmp r0, #0
	ble _0205BF38
	ldr r0, [r9, #0x14]
	cmp r0, #0
	bne _0205BF40
_0205BF38:
	mov r7, #0
	b _0205BF44
_0205BF40:
	add r7, r0, #0
_0205BF44:
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0205C05C ; =0x02099F18
	mvn r4, #0
	ldr r0, [r0]
	mov r6, #0
	ldrb r0, [r0, #4]
	add r10, r4, #0xff00
	mov r5, #3
	cmp r0, #0
	movne r8, #0
	b _0205C04C
_0205BF74:
	ldrh r1, [r7, #8]
	tst r1, #1
	beq _0205C044
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _0205BFA0
	cmp r0, #2
	beq _0205BFB0
	cmp r0, #3
	beq _0205BFE0
	b _0205C044
_0205BFA0:
	mov r0, r9
	mov r1, r7
	bl FUN_0205b6cc
	b _0205C044
_0205BFB0:
	tst r1, #2
	bne _0205C044
	mov r0, r9
	mov r1, r7
	bl FUN_0205b768
	cmp r0, #0
	strneb r5, [r7, #0xb]
	bne _0205C044
	mov r0, r9
	mov r1, r7
	bl FUN_0205b624
	b _0205C044
_0205BFE0:
	tst r1, #0x100
	beq _0205C044
	mov r0, r9
	mov r1, r7
	bl FUN_0205b9b8
	ldr r0, [r7, #0x34]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldr r1, [r7, #0x34]
	ldr r0, [r7, #0x30]
	ldr r1, [r1, #0x24]
	mov r2, r4
	bl FUN_ov16_020fa340
	ldr r0, [r7, #0x34]
	bl FUN_ov16_020fb02c
	cmp r0, #0
	beq _0205C044
	ldr r0, [r7, #0x34]
	bl FUN_ov16_020fb048
	cmp r0, #0
	ldreqh r0, [r7, #8]
	andeq r0, r0, r10
	streqh r0, [r7, #8]
_0205C044:
	add r6, r6, #1
	add r7, r7, #0x3c
_0205C04C:
	ldr r0, [r9, #0xc]
	cmp r6, r0
	blt _0205BF74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205C05C: .word g3DDevice
	arm_func_end FUN_0205bf14

	arm_func_start FUN_0205c060
FUN_0205c060: ; 0x0205C060
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0205C084
	ldr r6, [r7, #0x14]
	cmp r6, #0
	bne _0205C088
_0205C084:
	mov r6, #0
_0205C088:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	mov r5, #0
	ble _0205C110
	ldr r9, _0205C148 ; 0x02099EF0
	ldr r8, _0205C14C ; =0x00000101
_0205C0A4:
	ldrh r0, [r6, #8]
	and r0, r0, r8
	cmp r0, r8
	ldreqb r0, [r6, #0xb]
	cmpeq r0, #3
	bne _0205C0FC
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	cmpne r0, #2
	beq _0205C0EC
	cmp r0, #3
	bne _0205C0FC
	ldr r0, [r9]
	cmp r0, #0
	beq _0205C0EC
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0205C0FC
_0205C0EC:
	ldr r0, [r6, #0x30]
	bl FUN_ov16_020fa300
	cmp r0, #0
	addne r4, r4, #1
_0205C0FC:
	ldr r0, [r7, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x3c
	blt _0205C0A4
_0205C110:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205C148: .word unk_02099EF0
_0205C14C: .word 0x00000101
	arm_func_end FUN_0205c060

	arm_func_start FUN_0205c150
FUN_0205c150: ; 0x0205C150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0205C174
	ldr r6, [r7, #0x14]
	cmp r6, #0
	bne _0205C178
_0205C174:
	mov r6, #0
_0205C178:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	mov r5, #0
	ble _0205C200
	ldr r9, _0205C238 ; 0x02099EF0
	ldr r8, _0205C23C ; =0x00000101
_0205C194:
	ldrh r0, [r6, #8]
	and r0, r0, r8
	cmp r0, r8
	ldreqb r0, [r6, #0xb]
	cmpeq r0, #3
	bne _0205C1EC
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _0205C1C4
	cmp r0, #4
	beq _0205C1DC
	b _0205C1EC
_0205C1C4:
	ldr r0, [r9]
	cmp r0, #0
	beq _0205C1EC
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0205C1EC
_0205C1DC:
	ldr r0, [r6, #0x30]
	bl FUN_ov16_020fa300
	cmp r0, #0
	addne r4, r4, #1
_0205C1EC:
	ldr r0, [r7, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x3c
	blt _0205C194
_0205C200:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205C238: .word unk_02099EF0
_0205C23C: .word 0x00000101
	arm_func_end FUN_0205c150

	arm_func_start FUN_0205C240
FUN_0205C240: ; 0x0205C240
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r8, r1
	add r1, sp, #0x18
	str r4, [sp, #0x18]
	mov r9, r0
	mov r7, r2
	bl FUN_0205b5cc
	ldr r1, [sp, #0x18]
	mov r6, r0
	cmp r1, #0
	addeq sp, sp, #0x1c
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	ldrne r0, [r1, #0x34]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	bl FUN_0205b624
	mov r0, r9
	mov r1, r4
	bl FUN_0205228c
	cmp r0, #0
	addne sp, sp, #0x1c
	subne r0, r4, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #8]
	add r2, sp, #0x14
	ldr r0, [r0]
	add r3, sp, #0x10
	mov r1, r8
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #4]
	blx r2
	ldr r1, [sp, #0x14]
	mov r5, #1
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, _0205C390 ; =0x02099EE4
	stmib sp, {r1, r5}
	str r5, [sp, #0xc]
	mov r1, r0
	mov r4, #0xd
	ldr r0, [r2]
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_020fcd08
	ldr r2, [sp, #0x18]
	sub r1, r4, #0xe
	str r0, [r2, #0x38]
	ldr r0, [sp, #0x18]
	cmp r7, #0
	str r8, [r0]
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
	ldrne r0, [sp, #0x18]
	strneh r5, [r0, #8]
	ldrne r0, [sp, #0x18]
	strneb r5, [r0, #0xb]
	bne _0205C378
	ldr r0, [sp, #0x18]
	mov r1, #3
	strh r1, [r0, #8]
	ldr r0, [sp, #0x18]
	mov r1, #2
	strb r1, [r0, #0xb]
_0205C378:
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_0205b530
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205C390: .word unk_02099EE4
	arm_func_end FUN_0205C240

	arm_func_start FUN_0205c394
FUN_0205c394: ; 0x0205C394
	ldr r12, _0205C3A0 ; =FUN_0205C240
	mov r2, #1
	bx r12
_0205C3A0: .word FUN_0205C240
	arm_func_end FUN_0205c394

	arm_func_start FUN_0205c3a4
FUN_0205c3a4: ; 0x0205C3A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	add r2, sp, #0
	str r4, [sp]
	mov r5, r0
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0x30]
	cmp r0, #0
	ldrne r0, [r2, #0x34]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r1, [r2, #8]
	ldr r0, _0205C434 ; =0x0000FFFD
	and r0, r1, r0
	strh r0, [r2, #8]
	ldr r1, [sp]
	ldrb r0, [r1, #0xb]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_0205b6cc
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	ldrb r0, [r0, #0xb]
	cmp r0, #2
	moveq r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0205C434: .word 0x0000FFFD
	arm_func_end FUN_0205c3a4

	arm_func_start FUN_0205c438
FUN_0205c438: ; 0x0205C438
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205b564
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205b624
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c438

	arm_func_start FUN_0205c468
FUN_0205c468: ; 0x0205C468
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	ble _0205C488
	ldr r5, [r6, #0x14]
	cmp r5, #0
	bne _0205C48C
_0205C488:
	mov r5, #0
_0205C48C:
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0205C498:
	mov r0, r6
	mov r1, r5
	bl FUN_0205b624
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x3c
	blt _0205C498
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205c468

	arm_func_start FUN_0205c4bc
FUN_0205c4bc: ; 0x0205C4BC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205b564
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205b6cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c4bc

	arm_func_start FUN_0205c4ec
FUN_0205c4ec: ; 0x0205C4EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	ble _0205C50C
	ldr r5, [r6, #0x14]
	cmp r5, #0
	bne _0205C510
_0205C50C:
	mov r5, #0
_0205C510:
	cmp r0, #0
	mov r4, #0
	ble _0205C550
_0205C51C:
	ldrh r0, [r5, #8]
	tst r0, #1
	beq _0205C53C
	mov r0, r6
	mov r1, r5
	bl FUN_0205b6cc
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0205C53C:
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x3c
	blt _0205C51C
_0205C550:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205c4ec

	arm_func_start FUN_0205c558
FUN_0205c558: ; 0x0205C558
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldrh r1, [r2, #8]
	tst r1, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	cmp r4, #0
	orrne r0, r1, #0x100
	strneh r0, [r2, #8]
	ldreq r0, _0205C5B4 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r2, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0205C5B4: .word 0x0000FEFF
	arm_func_end FUN_0205c558

	arm_func_start FUN_0205c5b8
FUN_0205c5b8: ; 0x0205C5B8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	strneb r4, [r0, #0xa]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c5b8

	arm_func_start FUN_0205c5e8
FUN_0205c5e8: ; 0x0205C5E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	strne r5, [r1, #0xc]
	ldrne r0, [sp, #0x10]
	strne r4, [r1, #0x10]
	strne r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c5e8

	arm_func_start FUN_0205c620
FUN_0205c620: ; 0x0205C620
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	strne r5, [r1, #0x18]
	ldrne r0, [sp, #0x10]
	strne r4, [r1, #0x1c]
	strne r0, [r1, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c620

	arm_func_start FUN_0205c658
FUN_0205c658: ; 0x0205C658
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	strne r5, [r1, #0x24]
	ldrne r0, [sp, #0x10]
	strne r4, [r1, #0x28]
	strne r0, [r1, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c658

	arm_func_start FUN_0205c690
FUN_0205c690: ; 0x0205C690
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	add r12, sp, #0x10
	mov r4, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x30]
	cmpne r1, #0
	beq _0205C6F8
	add r0, sp, #4
	bl FUN_ov16_020fa538
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205C6F8:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c690

	arm_func_start FUN_0205c70c
FUN_0205c70c: ; 0x0205C70C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	add r12, sp, #0x10
	mov r4, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x30]
	cmpne r1, #0
	beq _0205C774
	add r0, sp, #4
	bl FUN_ov16_020fa54c
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205C774:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c70c

	arm_func_start FUN_0205c788
FUN_0205c788: ; 0x0205C788
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	add r2, sp, #0
	str r4, [sp]
	mov r5, r3
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x34]
	cmpne r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r6
	bl FUN_ov16_020faf80
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp]
	mov r1, r5
	ldr r0, [r0, #0x34]
	bl FUN_ov16_020fb040
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205c788

	arm_func_start FUN_0205c7f8
FUN_0205c7f8: ; 0x0205C7F8
	stmfd sp!, {r3, lr}
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x34]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fb02c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205c7f8

	arm_func_start FUN_0205c82c
FUN_0205c82c: ; 0x0205C82C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r3, #0
	add r12, sp, #4
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	strne r4, [r0, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205c82c

	arm_func_start FUN_0205c86c
FUN_0205c86c: ; 0x0205C86C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	tst r4, #0x6000
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	cmp r3, #0
	bne _0205C898
	bl FUN_0205c8d0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0205C898:
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	ldrne r0, [r2, #0x34]
	cmpne r0, #0
	ldrneh r1, [r2, #8]
	movne r0, r4, lsl #0x10
	orrne r0, r1, r0, lsr #16
	strneh r0, [r2, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c86c

	arm_func_start FUN_0205c8d0
FUN_0205c8d0: ; 0x0205C8D0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	tst r4, #0x6000
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	ldrne r0, [r2, #0x34]
	cmpne r0, #0
	mvnne r0, r4
	ldrneh r1, [r2, #8]
	movne r0, r0, lsl #0x10
	andne r0, r1, r0, lsr #16
	strneh r0, [r2, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c8d0

	arm_func_start FUN_0205c924
FUN_0205c924: ; 0x0205C924
	stmfd sp!, {r3, lr}
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	ldrne r0, [r1, #0x34]
	cmpne r0, #0
	moveq r0, #0
	ldrneh r0, [r1, #8]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205c924

	arm_func_start FUN_0205c954
FUN_0205c954: ; 0x0205C954
	stmfd sp!, {r4, lr}
	ldr r1, _0205C978 ; =0x0209095C
	mov r4, r0
	str r1, [r4]
	bl FUN_0205be20
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205C978: .word unk_0209095C
	arm_func_end FUN_0205c954

	arm_func_start FUN_0205c97c
FUN_0205c97c: ; 0x0205C97C
	stmfd sp!, {r4, lr}
	ldr r1, _0205C998 ; =0x0209095C
	mov r4, r0
	str r1, [r4]
	bl FUN_0205be20
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205C998: .word unk_0209095C
	arm_func_end FUN_0205c97c

	arm_func_start FUN_0205c99c
FUN_0205c99c: ; 0x0205C99C
	mov r0, #0
	bx lr
	arm_func_end FUN_0205c99c

	arm_func_start FUN_0205c9a4
FUN_0205c9a4: ; 0x0205C9A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x8c
	bl MIi_CpuClearFast
	add r0, r5, #0x2c
	str r4, [r5, #0x5c]
	bl MTX_Identity43_
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c9a4

	arm_func_start FUN_0205c9d0
FUN_0205c9d0: ; 0x0205C9D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r8, #0
	mov r11, #0x3f000000
	mov r10, r0
	mov r7, r9, lsl #0xc
	mov r6, r11
	mov r4, r8
_0205C9F0:
	add r0, r10, r8, lsl #3
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _0205CA68
	cmp r9, #0
	mov r0, r7
	ble _0205CA20
	bl _fflt
	mov r1, r0
	mov r0, r6
	bl _fadd
	b _0205CA2C
_0205CA20:
	bl _fflt
	mov r1, r11
	bl _fsub
_0205CA2C:
	add r5, r10, r8, lsl #3
	bl _ffix
	ldr r1, [r5, #0x64]
	mov r2, r5
	add r0, r1, r0
	str r0, [r5, #0x64]
	ldr r1, [r2, #0x64]
	ldr r0, [r2, #0x68]
	cmp r1, r0
	strgt r4, [r2, #0x64]
	add r1, r10, r8, lsl #3
	ldr r0, [r10, #0x5c]
	ldr r1, [r1, #0x64]
	mov r2, r8
	bl FUN_ov16_020fa340
_0205CA68:
	add r8, r8, #1
	cmp r8, #5
	blt _0205C9F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0205c9d0

	arm_func_start FUN_0205ca78
FUN_0205ca78: ; 0x0205CA78
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0205CAB4
_0205CA84: ; jump table
	b _0205CAB4 ; case 0
	b _0205CA9C ; case 1
	b _0205CAB4 ; case 2
	b _0205CAAC ; case 3
	b _0205CAB4 ; case 4
	b _0205CAA4 ; case 5
_0205CA9C:
	ldr r0, _0205CABC ; =0x02090A4C
	bx lr
_0205CAA4:
	ldr r0, _0205CAC0 ; =0x02090A6C
	bx lr
_0205CAAC:
	ldr r0, _0205CAC4 ; =0x02090A8C
	bx lr
_0205CAB4:
	mov r0, #0
	bx lr
_0205CABC: .word unk_02090A4C
_0205CAC0: .word unk_02090A6C
_0205CAC4: .word unk_02090A8C
	arm_func_end FUN_0205ca78

	arm_func_start FUN_0205cac8
FUN_0205cac8: ; 0x0205CAC8
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0205CB04
_0205CAD4: ; jump table
	b _0205CB04 ; case 0
	b _0205CAEC ; case 1
	b _0205CB04 ; case 2
	b _0205CAFC ; case 3
	b _0205CB04 ; case 4
	b _0205CAF4 ; case 5
_0205CAEC:
	ldr r0, _0205CB0C ; =0x02090AAC
	bx lr
_0205CAF4:
	ldr r0, _0205CB10 ; =0x02090ACC
	bx lr
_0205CAFC:
	ldr r0, _0205CB14 ; =0x02090AEC
	bx lr
_0205CB04:
	mov r0, #0
	bx lr
_0205CB0C: .word unk_02090AAC
_0205CB10: .word unk_02090ACC
_0205CB14: .word unk_02090AEC
	arm_func_end FUN_0205cac8

	arm_func_start FUN_0205cb18
FUN_0205cb18: ; 0x0205CB18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	add r12, sp, #0
	mov r5, r2
	mov r4, r3
	mov r1, #4
	mov r0, #0
_0205CB3C:
	strb r0, [r12]
	strb r0, [r12, #1]
	strb r0, [r12, #2]
	strb r0, [r12, #3]
	add r12, r12, #4
	subs r1, r1, #1
	bne _0205CB3C
	cmp r6, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	cmp r0, #7
	cmpne r0, #8
	cmpne r0, #9
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0205CC58 ; =0x02090B0C
	mov r0, r6
	mov r2, #2
	bl STD_CompareNString
	cmp r0, #0
	bne _0205CC04
	ldr r0, [r5]
	cmp r0, #7
	beq _0205CBBC
	cmp r0, #8
	beq _0205CBEC
	cmp r0, #9
	beq _0205CBD8
	b _0205CBF8
_0205CBBC:
	add r0, sp, #0
	mov r3, #1
_0205CBC4:
	add r1, r6, #2
	mov r2, #5
	str r3, [r5]
_0205CBD0:
	bl strncpy
	b _0205CC10
_0205CBD8:
	mov r2, #5
	add r0, sp, #0
	add r1, r6, #2
	str r2, [r5]
	b _0205CBD0
_0205CBEC:
	add r0, sp, #0
	mov r3, #3
	b _0205CBC4
_0205CBF8:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205CC04:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205CC10:
	ldr r1, [r5]
	mov r0, #0xc
	mul r2, r1, r0
	ldr r1, [r7, #8]
	ldr r0, [r1, r2]
	cmp r0, #0
	addne r1, r1, r2
	ldrneb r1, [r1, #8]
	cmpne r1, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, sp, #0
	bl FUN_ov16_020f3c28
	str r0, [r4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205CC58: .word unk_02090B0C
	arm_func_end FUN_0205cb18

	arm_func_start FUN_0205cc5c
FUN_0205cc5c: ; 0x0205CC5C
	subs r2, r1, #1
	bmi _0205CC7C
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bge _0205CC7C
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0205CC84
_0205CC7C:
	mov r0, #0
	bx lr
_0205CC84:
	mov r0, #0x8c
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_0205cc5c

	arm_func_start FUN_0205cc90
FUN_0205cc90: ; 0x0205CC90
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r6, r0
	mov r4, #0
	mov r8, #1
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x24]
	cmp r0, #3
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x5c]
	bl FUN_ov16_020fa964
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x5c]
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _0205CD30
	ldr r0, [r7, #0x5c]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	bne _0205CD18
	mov r0, r6
	mov r1, r7
	bl FUN_0205d04c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205CD18:
	ldr r0, [r7, #0x5c]
	mov r1, #2
	bl FUN_ov16_020fabdc
	ldr r0, [r7, #0x5c]
	mov r1, #0x20
	bl FUN_ov16_020fa6d4
_0205CD30:
	mov r5, #0
_0205CD34:
	ldr r0, [r7, #0x5c]
	mov r1, r5
	bl FUN_ov16_020faa34
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, r8
	movne r0, r4
	cmp r0, #0
	bne _0205CDC4
	ldr r0, [r7, #0x5c]
	mov r1, r5
	bl FUN_ov16_020faa34
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, r8
	movne r1, r4
	cmp r1, #0
	bne _0205CD8C
	ldr r0, [r0, #0xc]
	tst r0, #1
	movne r0, r8
	bne _0205CD90
_0205CD8C:
	mov r0, r4
_0205CD90:
	cmp r0, #0
	bne _0205CDC4
	ldr r0, [r7, #0x5c]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa610
	cmp r0, #0
	bne _0205CDC4
	ldr r0, [r7, #0x5c]
	mov r1, r5
	bl FUN_ov16_020fa5f4
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205CDC4:
	add r5, r5, #1
	cmp r5, #5
	blt _0205CD34
	ldr r0, [r7, #0x5c]
	mov r1, #1
	mov r4, r1
	mov r5, #0
	bl FUN_ov16_020fac0c
	ldr r0, [r6, #0x18]
	ldrb r0, [r0, #0x28]
	cmp r0, #0
	beq _0205CE14
	ldr r0, [r7, #0x5c]
	mov r1, r5
	bl FUN_ov16_020faa34
	cmp r0, #0
	beq _0205CE0C
	bl FUN_ov16_02110ffc
_0205CE0C:
	ldr r0, [r6, #0x18]
	strb r5, [r0, #0x28]
_0205CE14:
	mov r6, #0
_0205CE18:
	ldr r0, [r7, #0x5c]
	mov r1, r6
	bl FUN_ov16_020faa1c
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, r4
	movne r0, r5
	cmp r0, #0
	bne _0205CEC8
	ldr r0, [r7, #0x5c]
	mov r1, r6
	bl FUN_ov16_020faa1c
	ldr r1, [r0, #4]
	cmp r1, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	movne r0, r4
	moveq r0, r5
	cmp r0, #0
	bne _0205CEC8
	ldr r0, [r7, #0x5c]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa838
	cmp r0, #0
	bne _0205CE94
	ldr r0, [r7, #0x5c]
	mov r1, r6
	bl FUN_ov16_020fa8a0
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205CE94:
	ldr r0, [r7, #0x5c]
	mov r1, r6
	bl FUN_ov16_020fa8b8
	ldr r0, [r7, #0x5c]
	mov r1, r6
	bl FUN_ov16_020faa1c
	cmp r0, #0
	beq _0205CEC8
	add r1, r7, r6, lsl #3
	str r5, [r1, #0x64]
	bl FUN_ov16_020fc788
	add r1, r7, r6, lsl #3
	str r0, [r1, #0x68]
_0205CEC8:
	add r6, r6, #1
	cmp r6, #5
	blt _0205CE18
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205cc90

	arm_func_start FUN_0205cedc
FUN_0205cedc: ; 0x0205CEDC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	movs r5, r1
	mov r6, r0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0205D044 ; =0x0208C47C
	add r4, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, [r5, #0x20]
	tst r0, #1
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r5, #0x24]
	cmp r0, #3
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0x5c]
	bl FUN_ov16_020fa964
	movs r7, r0
	beq _0205CF6C
	cmp r7, #1
	moveq r1, #1
	addeq sp, sp, #0x10
	streqb r1, [r5, #0x24]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205d04c
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205CF6C:
	ldr r1, [r5, #0x60]
	cmp r1, #0
	beq _0205D030
	ldr r7, _0205D048 ; =0x02099EE4
	ldr r0, [r7]
	bl FUN_ov16_020fd278
	movs r8, r0
	beq _0205CFB8
	cmp r8, #1
	moveq r1, #1
	addeq sp, sp, #0x10
	streqb r1, [r5, #0x24]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205d04c
	add sp, sp, #0x10
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205CFB8:
	ldr r0, [r5, #0x5c]
	bl FUN_ov16_020fa8fc
	mov r8, #0
	b _0205D010
_0205CFC8:
	ldr r0, [r7]
	ldr r1, [r5, #0x60]
	ldr r3, [r4, r8, lsl #2]
	mov r2, r8
	bl FUN_ov16_020fd6d8
	movs r6, r0
	beq _0205D00C
	ldr r0, [r5, #0x5c]
	mov r1, r6
	mov r2, r8
	bl FUN_ov16_020fa7f0
	cmp r0, #0
	ldr r0, [r7]
	mov r1, r6
	bne _0205D008
	b _0205D008
_0205D008:
	bl FUN_ov16_020fd350
_0205D00C:
	add r8, r8, #1
_0205D010:
	cmp r8, #5
	blt _0205CFC8
	ldr r0, _0205D048 ; =0x02099EE4
	ldr r1, [r5, #0x60]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	mov r0, #0
	str r0, [r5, #0x60]
_0205D030:
	mov r0, #2
	strb r0, [r5, #0x24]
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205D044: .word unk_0208C47C
_0205D048: .word unk_02099EE4
	arm_func_end FUN_0205cedc

	arm_func_start FUN_0205d04c
FUN_0205d04c: ; 0x0205D04C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, [r5, #0x5c]
	cmp r4, #0
	beq _0205D070
	mov r0, r4
	bl FUN_ov16_020fa154
_0205D070:
	ldr r1, [r5, #0x60]
	cmp r1, #0
	beq _0205D088
	ldr r0, _0205D09C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205D088:
	mov r0, r5
	mov r1, r4
	bl FUN_0205c9a4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0205D09C: .word unk_02099EE4
	arm_func_end FUN_0205d04c

	arm_func_start FUN_0205d0a0
FUN_0205d0a0: ; 0x0205D0A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #1
	mov r5, r0
	bl FUN_0205cc5c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0xc]
	mov r2, #0
	cmp r3, #0
	ble _0205D0FC
_0205D0D0:
	ldr r1, [r0, #0x20]
	tst r1, #1
	bne _0205D0EC
	cmp r4, #0
	strne r0, [r4]
	add r0, r2, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0205D0EC:
	add r2, r2, #1
	cmp r2, r3
	add r0, r0, #0x8c
	blt _0205D0D0
_0205D0FC:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205d0a0

	arm_func_start FUN_0205d104
FUN_0205d104: ; 0x0205D104
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052144
	mov r1, #0
	ldr r2, _0205D134 ; =0x02090A30
	mov r0, r4
	str r2, [r4]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x18]
	str r1, [r4, #0x14]
	ldmfd sp!, {r4, pc}
_0205D134: .word unk_02090A30
	arm_func_end FUN_0205d104

	arm_func_start FUN_0205d138
FUN_0205d138: ; 0x0205D138
	stmfd sp!, {r4, lr}
	ldr r1, _0205D154 ; =0x02090A30
	mov r4, r0
	str r1, [r4]
	bl FUN_0205d28c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205D154: .word unk_02090A30
	arm_func_end FUN_0205d138

	arm_func_start FUN_0205d158
FUN_0205d158: ; 0x0205D158
	stmfd sp!, {r4, lr}
	ldr r1, _0205D17C ; =0x02090A30
	mov r4, r0
	str r1, [r4]
	bl FUN_0205d28c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205D17C: .word unk_02090A30
	arm_func_end FUN_0205d158

	arm_func_start FUN_0205d180
FUN_0205d180: ; 0x0205D180
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r1
	mov r7, r0
	mov r1, #6
	str r6, [r7, #0xc]
	bl FUN_02052168
	ldr r1, _0205D280 ; =FUN_020527d4
	ldr r3, _0205D284 ; =FUN_0205a3f0
	mov r0, r6
	str r1, [sp]
	mov r1, #0x1bc
	mov r2, #8
	bl __cxa_vec_new
	str r0, [r7, #0x10]
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	beq _0205D1CC
	bl FUN_020540e0
_0205D1CC:
	mov r1, #0x8c
	mul r1, r6, r1
	str r0, [r7, #0x14]
	ldr r0, _0205D288 ; =gL5Allocator
	bl _ZN11L5Allocator8allocateEm
	ldr r1, [r7, #0x10]
	str r0, [r7, #0x18]
	cmp r1, #0
	ldrne r1, [r7, #0x14]
	cmpne r1, #0
	cmpne r0, #0
	bne _0205D20C
	mov r0, r7
	bl FUN_0205d28c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205D20C:
	mov r0, r1
	bl FUN_020540f4
	cmp r6, #0
	mov r4, #0
	ble _0205D258
	mov r8, #0x1bc
	mov r9, #0x8c
_0205D228:
	ldr r0, [r7, #0x18]
	mul r5, r4, r8
	ldr r1, [r7, #0x10]
	mla r0, r4, r9, r0
	add r1, r1, r5
	bl FUN_0205c9a4
	ldr r0, [r7, #0x10]
	add r0, r0, r5
	bl FUN_ov16_020f9cdc
	add r4, r4, #1
	cmp r4, r6
	blt _0205D228
_0205D258:
	mov r2, #0
	str r2, [r7, #0x1c]
	mvn r1, #0
_0205D264:
	add r0, r7, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x20]
	cmp r2, #6
	blt _0205D264
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205D280: .word FUN_020527d4
_0205D284: .word FUN_0205a3f0
_0205D288: .word gL5Allocator
	arm_func_end FUN_0205d180

	arm_func_start FUN_0205d28c
FUN_0205d28c: ; 0x0205D28C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mvn r1, #0
	bl FUN_020522ec
	mov r0, r6
	bl FUN_020521a0
	mov r0, r6
	bl FUN_0205ddb8
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _0205D2C0
	ldr r0, _0205D340 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_0205D2C0:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0205D310
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _0205D2FC
	mov r4, #0x1bc
_0205D2E0:
	ldr r0, [r6, #0x10]
	mla r0, r5, r4, r0
	bl FUN_ov16_020f9d80
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _0205D2E0
_0205D2FC:
	ldr r0, [r6, #0x10]
	ldr r3, _0205D344 ; =FUN_020527d4
	mov r1, #0x1bc
	mov r2, #8
	bl __cxa_vec_delete
_0205D310:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_020540f4
	ldr r4, [r6, #0x14]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_020540f0
	mov r0, r4
	bl _ZdlPv
	ldmfd sp!, {r4, r5, r6, pc}
_0205D340: .word gL5Allocator
_0205D344: .word FUN_020527d4
	arm_func_end FUN_0205d28c

	arm_func_start FUN_0205d348
FUN_0205d348: ; 0x0205D348
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r1, #1
	mov r7, r0
	bl FUN_0205cc5c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0205D41C ; =0x02099F18
	mov r5, #0
	ldr r0, [r0]
	mov r8, #3
	ldrb r0, [r0, #4]
	cmp r0, #0
	movne r6, #0
	b _0205D40C
_0205D384:
	ldr r1, [r4, #0x20]
	tst r1, #1
	beq _0205D404
	ldrb r0, [r4, #0x24]
	cmp r0, #1
	beq _0205D3B0
	cmp r0, #2
	beq _0205D3C0
	cmp r0, #3
	beq _0205D3F0
	b _0205D404
_0205D3B0:
	mov r0, r7
	mov r1, r4
	bl FUN_0205cedc
	b _0205D404
_0205D3C0:
	tst r1, #2
	bne _0205D404
	mov r0, r7
	mov r1, r4
	bl FUN_0205cc90
	cmp r0, #0
	strneb r8, [r4, #0x24]
	bne _0205D404
	mov r0, r7
	mov r1, r4
	bl FUN_0205d04c
	b _0205D404
_0205D3F0:
	tst r1, #0x100
	beq _0205D404
	mov r0, r4
	mov r1, r6
	bl FUN_0205c9d0
_0205D404:
	add r5, r5, #1
	add r4, r4, #0x8c
_0205D40C:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	blt _0205D384
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205D41C: .word g3DDevice
	arm_func_end FUN_0205d348

	arm_func_start FUN_0205d420
FUN_0205d420: ; 0x0205D420
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r8, #0
	mov r10, r0
	mov r1, r8
	mov r2, r8
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r10, #0xc]
	mov r7, #1
	cmp r0, #1
	blt _0205D510
	ldr r4, _0205D568 ; =0x0208F6F0
	mov r6, #0x15
	mov r5, #0x1b
	add r11, sp, #8
_0205D460:
	mov r0, r10
	mov r1, r7
	bl FUN_0205cc5c
	movs r9, r0
	ldrne r0, [r9, #0x5c]
	cmpne r0, #0
	beq _0205D500
	ldr r0, [r9, #0x20]
	tst r0, #0x100
	beq _0205D500
	mov r1, #0
	mov r0, r6
	mov r2, r1
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	ldr r0, [r9, #0x5c]
	bl FUN_ov16_020fa1e4
	ldr r0, [r9, #0x5c]
	bl FUN_ov16_020fa1fc
	ldr r0, [r9, #0x5c]
	bl FUN_ov16_020fa230
	ldr r1, [r4, #0x1c]
	mov r0, r5
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, r11
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r9, #0x27]
	cmp r0, #0
	beq _0205D4F0
	mov r0, #0x19
	mov r2, #0xc
	add r1, r9, #0x2c
	bl NNS_G3dGeBufferOP_N
_0205D4F0:
	ldr r0, [r9, #0x5c]
	bl FUN_ov16_020fa2bc
	cmp r0, #0
	addne r8, r8, #1
_0205D500:
	ldr r0, [r10, #0xc]
	add r7, r7, #1
	cmp r7, r0
	ble _0205D460
_0205D510:
	mov r4, #1
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x12
	str r4, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	cmp r8, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, #3
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x10
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205D568: .word unk_0208F6F0
	arm_func_end FUN_0205d420

	arm_func_start FUN_0205d56c
FUN_0205d56c: ; 0x0205D56C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x98
	ldr lr, _0205D5E0 ; =0x02090A10
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r12, r4
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia r4, {r0, r1}
	add r4, sp, #0x18
	ldr r2, [r12, r6, lsl #2]
	ldr r1, _0205D5E4 ; =0x02090B10
	mov r0, r4
	bl STD_TSPrintf
	cmp r5, #0
	mov r1, r4
	mov r0, #0
	beq _0205D5C8
	bl L5FS_OpenArchiveDeferred
	b _0205D5CC
_0205D5C8:
	bl L5FS_OpenArchiveDirect
_0205D5CC:
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x20]
	mov r0, #1
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205D5E0: .word unk_02090A10
_0205D5E4: .word unk_02090B10
	arm_func_end FUN_0205d56c

	arm_func_start FUN_0205d5e8
FUN_0205d5e8: ; 0x0205D5E8
	stmfd sp!, {r3, lr}
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x20]
	bl L5FS_IsArchiveReady
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205d5e8

	arm_func_start FUN_0205d608
FUN_0205d608: ; 0x0205D608
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x20]
	bl L5FS_CloseArchive
	add r0, r5, r4, lsl #2
	mvn r1, #0
	str r1, [r0, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205d608

	arm_func_start FUN_0205d630
FUN_0205d630: ; 0x0205D630
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	mov r6, r1
	mov r4, #0
	add r1, sp, #0
	mov r7, r0
	str r4, [sp]
	bl FUN_0205d0a0
	movs r5, r0
	addmi sp, sp, #0x84
	submi r0, r4, #1
	ldmmifd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	addeq sp, sp, #0x84
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _0205D72C ; =0x02090B1C
	add r0, sp, #4
	mov r2, r6
	bl STD_TSPrintf
	ldrsb r0, [r6, #1]
	cmp r0, #0x72
	beq _0205D698
	bl OS_Terminate
_0205D698:
	ldr r0, [sp]
	mov r4, #1
	ldr r0, [r0, #0x5c]
	ldr r1, [r7, #0x20]
	add r2, sp, #4
	mov r3, r4
	bl FUN_ov16_020f9e9c
	cmp r0, #0
	bne _0205D6D4
	ldr r1, [sp]
	mov r0, r7
	bl FUN_0205d04c
	add sp, sp, #0x84
	sub r0, r4, #2
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205D6D4:
	ldr r0, _0205D730 ; =0x0208F6F0
	ldr r2, [sp]
	ldr r1, [r0, #0x1c]
	ldr r0, [r2, #0x5c]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	ldr r0, [sp]
	mov r1, r4
	ldr r0, [r0, #0x5c]
	bl FUN_ov16_020fada4
	ldr r0, [sp]
	mov r1, r6
	bl strcpy
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0, #0x20]
	ldr r1, [sp]
	mov r0, r5
	strb r4, [r1, #0x24]
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205D72C: .word unk_02090B1C
_0205D730: .word unk_0208F6F0
	arm_func_end FUN_0205d630

	arm_func_start FUN_0205d734
FUN_0205d734: ; 0x0205D734
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x9c
	mov r8, r1
	mov r6, #0
	add r1, sp, #0x18
	mov r9, r0
	mov r7, r2
	str r6, [sp, #0x18]
	bl FUN_0205d0a0
	movs r5, r0
	addmi sp, sp, #0x9c
	submi r0, r6, #1
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	addeq sp, sp, #0x9c
	subeq r0, r6, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r4, sp, #0x1c
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f3b18
	mov r1, #7
	str r1, [sp, #0x14]
	mov r0, r9
	ldr r12, [r0]
	add r2, sp, #0x14
	ldr r12, [r12, #8]
	mov r1, r8
	add r3, sp, #0x10
	blx r12
	cmp r0, #0
	beq _0205D824
	ldr r1, [sp, #0x14]
	mov r0, #0xc
	mul r0, r1, r0
	ldr r2, [r9, #8]
	ldr r1, [sp, #0x10]
	ldr r0, [r2, r0]
	add r2, sp, #0xc
	add r3, sp, #8
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0205D848
	mov r0, r9
	ldr r2, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [sp, #8]
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	mov r1, r0
	ldr r0, [r2, #0x5c]
	ldr r3, [sp, #0xc]
	mov r2, r7
	b _0205D840
_0205D824:
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r1, r4
	ldr r0, [r0, #0x5c]
	mov r2, r7
	mov r3, r6
_0205D840:
	bl FUN_ov16_020f9e24
	mov r6, r0
_0205D848:
	cmp r6, #0
	bne _0205D868
	ldr r1, [sp, #0x18]
	mov r0, r9
	bl FUN_0205d04c
	add sp, sp, #0x9c
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205D868:
	ldr r0, _0205D8E0 ; =0x0208F6F0
	ldr r2, [sp, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r2, #0x5c]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	ldr r0, [sp, #0x18]
	mov r4, #1
	ldr r0, [r0, #0x5c]
	mov r1, r4
	bl FUN_ov16_020fada4
	ldr r0, [sp, #0x18]
	mov r1, r8
	bl strcpy
	ldr r0, [sp, #0x18]
	mov r1, #3
	str r1, [r0, #0x20]
	cmp r7, #0
	ldrne r0, [sp, #0x18]
	strneb r4, [r0, #0x24]
	bne _0205D8D4
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #0x24]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r1, #0x24]
_0205D8D4:
	mov r0, r5
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205D8E0: .word unk_0208F6F0
	arm_func_end FUN_0205d734

	arm_func_start FUN_0205d8e4
FUN_0205d8e4: ; 0x0205D8E4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x84
	mov r6, r0
	mov r5, r2
	mov r7, r3
	bl FUN_0205cc5c
	movs r4, r0
	ldrne r0, [r4, #0x5c]
	cmpne r0, #0
	addeq sp, sp, #0x84
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _0205D9A0 ; =0x02090B28
	add r0, sp, #4
	mov r2, r7
	bl STD_TSPrintf
	ldrsb r0, [r7, #1]
	mov r7, #4
	cmp r0, #0x72
	mvnne r7, #0
	cmp r7, #0
	bge _0205D940
	bl OS_Terminate
_0205D940:
	ldrb r0, [sp, #0x98]
	add r1, r6, r7, lsl #2
	add r2, sp, #4
	str r0, [sp]
	ldr r0, [r4, #0x5c]
	ldr r1, [r1, #0x20]
	mov r3, r5
	bl FUN_ov16_020fa598
	cmp r0, #0
	beq _0205D98C
	ldrb r1, [sp, #0x98]
	cmp r1, #0
	movne r1, #1
	strneb r1, [r4, #0x24]
	bne _0205D98C
	ldrb r1, [r4, #0x24]
	cmp r1, #1
	movne r1, #2
	strneb r1, [r4, #0x24]
_0205D98C:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205D9A0: .word unk_02090B28
	arm_func_end FUN_0205d8e4

	arm_func_start FUN_0205d9a4
FUN_0205d9a4: ; 0x0205D9A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	mov r8, r0
	mov r7, r2
	mov r6, r3
	bl FUN_0205cc5c
	movs r5, r0
	ldrne r0, [r5, #0x5c]
	cmpne r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r4, sp, #0x20
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f3b50
	mov r1, #9
	str r1, [sp, #0x1c]
	mov r0, r8
	ldr r12, [r0]
	mov r1, r6
	ldr r12, [r12, #8]
	add r2, sp, #0x1c
	add r3, sp, #0x18
	mov r6, #0
	blx r12
	cmp r0, #0
	beq _0205DA84
	ldr r1, [sp, #0x1c]
	mov r0, #0xc
	mul r0, r1, r0
	ldr r2, [r8, #8]
	ldr r1, [sp, #0x18]
	ldr r0, [r2, r0]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0205DAB0
	mov r0, r8
	ldr r2, [r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [sp, #0x14]
	ldrb r1, [sp, #0xbc]
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #1
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, r0
	ldrb r3, [sp, #0xb8]
	ldr r0, [r5, #0x5c]
	b _0205DAA4
_0205DA84:
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldrb r3, [sp, #0xb8]
	ldr r0, [r5, #0x5c]
	mov r1, r4
_0205DAA4:
	mov r2, r7
	bl FUN_ov16_020fa5b4 ; may be ov17 ; ov16(Mica)
	mov r6, r0
_0205DAB0:
	cmp r6, #0
	beq _0205DADC
	ldrb r0, [sp, #0xb8]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0x24]
	bne _0205DADC
	ldrb r0, [r5, #0x24]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r5, #0x24]
_0205DADC:
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205d9a4

	arm_func_start FUN_0205daf0
FUN_0205daf0: ; 0x0205DAF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	mov r7, r0
	mov r6, r2
	mov r5, r3
	bl FUN_0205cc5c
	movs r4, r0
	ldrne r0, [r4, #0x5c]
	cmpne r0, #0
	addeq sp, sp, #0x84
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r8, sp, #4
	mov r0, r6
	mov r1, r8
	bl FUN_ov16_020f3b34
	ldr r1, _0205DBD4 ; =0x02090B34
	mov r0, r8
	mov r2, r6
	bl STD_TSPrintf
	ldr r0, _0205DBD8 ; =0x02099EE4
	ldr r1, [r4, #0x60]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	mov r1, #0
	str r1, [r4, #0x60]
	ldrsb r0, [r6, #1]
	mov r6, #2
	cmp r0, #0x72
	subne r6, r1, #1
	cmp r6, #0
	bge _0205DB74
	bl OS_Terminate
_0205DB74:
	ldr r0, _0205DBD8 ; =0x02099EE4
	str r5, [sp]
	add r1, r7, r6, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	add r2, sp, #4
	mov r3, #0xf
	bl FUN_ov16_020fcb70
	cmp r0, #0
	str r0, [r4, #0x60]
	addeq sp, sp, #0x84
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	movne r0, #1
	strneb r0, [r4, #0x24]
	bne _0205DBC8
	ldrb r0, [r4, #0x24]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r4, #0x24]
_0205DBC8:
	mov r0, #1
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205DBD4: .word unk_02090B34
_0205DBD8: .word unk_02099EE4
	arm_func_end FUN_0205daf0

	arm_func_start FUN_0205dbdc
FUN_0205dbdc: ; 0x0205DBDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xa0
	mov r8, r0
	mov r4, r2
	mov r7, r3
	bl FUN_0205cc5c
	movs r6, r0
	ldrne r0, [r6, #0x5c]
	cmpne r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, sp, #0x20
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f3b34
	ldr r9, _0205DD34 ; =0x02099EE4
	ldr r1, [r6, #0x60]
	ldr r0, [r9]
	bl FUN_ov16_020fd350
	mov r1, r4
	mov r4, #0
	str r4, [r6, #0x60]
	mov r0, #8
	str r0, [sp, #0x1c]
	mov r0, r8
	ldr r12, [r0]
	add r2, sp, #0x1c
	ldr r12, [r12, #8]
	add r3, sp, #0x18
	blx r12
	cmp r0, #0
	beq _0205DCC8
	ldr r1, [sp, #0x1c]
	mov r0, #0xc
	mul r0, r1, r0
	ldr r2, [r8, #8]
	ldr r1, [sp, #0x18]
	ldr r0, [r2, r0]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0205DCF4
	mov r0, r8
	ldr r2, [r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, #4]
	blx r2
	ldr r1, [sp, #0x14]
	mov r2, #1
	str r1, [sp]
	ldr r3, [sp, #0x10]
	mov r1, r0
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r9]
	b _0205DCE4
_0205DCC8:
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r9]
	mov r1, r5
_0205DCE4:
	mov r3, r7
	mov r2, #0xf
	bl FUN_ov16_020fcd08
	str r0, [r6, #0x60]
_0205DCF4:
	ldr r0, [r6, #0x60]
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	movne r0, #1
	strneb r0, [r6, #0x24]
	bne _0205DD28
	ldrb r0, [r6, #0x24]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r6, #0x24]
_0205DD28:
	mov r0, #1
	add sp, sp, #0xa0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205DD34: .word unk_02099EE4
	arm_func_end FUN_0205dbdc

	arm_func_start FUN_0205dd38
FUN_0205dd38: ; 0x0205DD38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0205cc5c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x20]
	bic r0, r0, #2
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x24]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0205cedc
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x24]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205dd38

	arm_func_start FUN_0205dd98
FUN_0205dd98: ; 0x0205DD98
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0205cc5c
	movs r1, r0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_0205d04c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205dd98

	arm_func_start FUN_0205ddb8
FUN_0205ddb8: ; 0x0205DDB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #1
	mov r6, r0
	bl FUN_0205cc5c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _0205DE0C
_0205DDE0:
	ldr r0, [r4, #0x20]
	tst r0, #1
	beq _0205DDF8
	mov r0, r6
	mov r1, r4
	bl FUN_0205d04c
_0205DDF8:
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x8c
	blt _0205DDE0
_0205DE0C:
	ldr r0, [r6, #0x14]
	bl FUN_020540f4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205ddb8

	arm_func_start FUN_0205de18
FUN_0205de18: ; 0x0205DE18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0205cc5c
	mov r1, r0
	mov r0, r4
	bl FUN_0205cedc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205de18

	arm_func_start FUN_0205de34
FUN_0205de34: ; 0x0205DE34
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #1
	mov r6, r0
	bl FUN_0205cc5c
	movs r4, r0
	mov r0, #0
	subeq r0, r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #0xc]
	mov r5, r0
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0205DE64:
	ldr r1, [r4, #0x20]
	tst r1, #1
	beq _0205DE90
	cmp r4, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_0205cedc
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0205DE90:
	ldr r1, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r1
	add r4, r4, #0x8c
	blt _0205DE64
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205de34

	arm_func_start FUN_0205dea8
FUN_0205dea8: ; 0x0205DEA8
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_0205cc5c
	cmp r0, #0
	ldrne r1, [r0, #0x20]
	orrne r1, r1, r4
	strne r1, [r0, #0x20]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205dea8

	arm_func_start FUN_0205dec8
FUN_0205dec8: ; 0x0205DEC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x48
	add r7, sp, #0x3c
	mov r6, #0
	add r4, sp, #0x30
	mov r9, r2
	mov r8, r3
	str r6, [r7]
	str r6, [r7, #4]
	str r6, [r7, #8]
	str r6, [r4]
	str r6, [r4, #4]
	str r6, [r4, #8]
	bl FUN_0205cc5c
	movs r5, r0
	cmpne r9, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	mov r0, r9
	mov r1, r7
	bl FUN_ov16_020eff18
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0238
	add r0, r5, #0x2c
	bl MTX_Identity43_
	mov r1, #1
	ldr r0, _0205E010 ; =0x020A0640
	strb r1, [r5, #0x27]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0205DF90
	bl FUN_ov16_020f081c
	mov r4, r0
	mov r0, r6
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _0205DF90
	ldr r0, _0205E014 ; =0x02089874
	add r4, sp, #0
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	mov r0, r4
	blx MTX_RotY43_
	add r0, r5, #0x2c
	mov r1, r4
	mov r2, r0
	bl MTX_Concat43
_0205DF90:
	add r4, sp, #0
	mov r0, r4
	bl MTX_Identity43_
	ldr lr, [sp, #0x3c]
	ldr r12, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0x2c
	mov r1, r4
	mov r2, r0
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl MTX_Concat43
	ldr r0, [sp, #0x34]
	ldr r1, _0205E018 ; =FX_SinCosTable_
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r2, r0, #1
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	ldrsh r2, [r1, r2]
	ldrsh r1, [r1, r0]
	mov r0, r4
	blx MTX_RotY43_
	add r0, r5, #0x2c
	mov r1, r4
	mov r2, r0
	bl MTX_Concat43
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E010: .word unk_020A0640
_0205E014: .word unk_02089874
_0205E018: .word FX_SinCosTable_
	arm_func_end FUN_0205dec8

	arm_func_start FUN_0205e01c
FUN_0205e01c: ; 0x0205E01C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_0205cc5c
	cmp r0, #0
	ldrne r0, [r0, #0x5c]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa4bc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205e01c

	arm_func_start FUN_0205e050
FUN_0205e050: ; 0x0205E050
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_0205cc5c
	cmp r0, #0
	ldrne r0, [r0, #0x5c]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa4e0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205e050

	arm_func_start FUN_0205e084
FUN_0205e084: ; 0x0205E084
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r0, r1
	add r12, sp, #0xc
	mov r3, #0
	mov r1, r2
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205cc5c
	cmp r0, #0
	ldrne r1, [r0, #0x5c]
	cmpne r1, #0
	beq _0205E0E0
	add r0, sp, #0
	bl FUN_ov16_020fa538
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_0205E0E0:
	add r0, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e084

	arm_func_start FUN_0205e0f4
FUN_0205e0f4: ; 0x0205E0F4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	mov r0, r1
	add r12, sp, #0xc
	mov r3, #0
	mov r1, r2
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205cc5c
	cmp r0, #0
	ldrne r1, [r0, #0x5c]
	cmpne r1, #0
	beq _0205E150
	add r0, sp, #0
	bl FUN_ov16_020fa54c
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_0205E150:
	add r0, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e0f4

	arm_func_start FUN_0205e164
FUN_0205e164: ; 0x0205E164
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r1
	mov r6, r0
	cmpne r5, #1
	beq _0205E1E0
	cmp r5, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _0205E1E0
	ldr r0, [r6, #0xc]
	mov r4, #1
	cmp r0, #1
	blt _0205E1E0
	mov r7, #0
	mov r8, r7
_0205E1A4:
	mov r0, r6
	mov r1, r4
	bl FUN_0205cc5c
	cmp r0, #0
	beq _0205E1D0
	mov r2, r8
_0205E1BC:
	add r1, r0, r2, lsl #3
	add r2, r2, #1
	str r7, [r1, #0x64]
	cmp r2, #5
	blt _0205E1BC
_0205E1D0:
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	ble _0205E1A4
_0205E1E0:
	str r5, [r6, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205e164

	arm_func_start FUN_0205e1e8
FUN_0205e1e8: ; 0x0205E1E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r1, #1
	mov r5, r0
	bl FUN_0205cc5c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, [r5, #0xc]
	mov r5, #0
	cmp r6, #0
	ble _0205E24C
_0205E218:
	ldr r0, [r4, #0x20]
	tst r0, #1
	beq _0205E23C
	mov r0, r7
	mov r1, r4
	bl strstr
	cmp r0, #0
	addne r0, r5, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0205E23C:
	add r5, r5, #1
	cmp r5, r6
	add r4, r4, #0x8c
	blt _0205E218
_0205E24C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205e1e8

	arm_func_start FUN_0205e254
FUN_0205e254: ; 0x0205E254
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_0205cc5c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0x5c]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fab0c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205e254

	arm_func_start FUN_0205e280
FUN_0205e280: ; 0x0205E280
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_020523fc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205E2D0
	mov r5, #1
	mov r4, #0x1bc
_0205E2B0:
	ldr r0, [r7, #0x10]
	mov r1, r5
	mla r0, r6, r4, r0
	bl FUN_ov16_020fac0c
	ldr r0, [r7, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205E2B0
_0205E2D0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205e280

	arm_func_start FUN_0205e2d8
FUN_0205e2d8: ; 0x0205E2D8
	stmfd sp!, {r3, lr}
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0205E330
_0205E2E8: ; jump table
	b _0205E304 ; case 0
	b _0205E30C ; case 1
	b _0205E310 ; case 2
	b _0205E318 ; case 3
	b _0205E30C ; case 4
	b _0205E320 ; case 5
	b _0205E328 ; case 6
_0205E304:
	ldr r0, _0205E338 ; =0x02090C14
	ldmfd sp!, {r3, pc}
_0205E30C:
	bl OS_Terminate
_0205E310:
	ldr r0, _0205E33C ; =0x02090C34
	ldmfd sp!, {r3, pc}
_0205E318:
	ldr r0, _0205E340 ; =0x02090C54
	ldmfd sp!, {r3, pc}
_0205E320:
	ldr r0, _0205E344 ; =0x02090C78
	ldmfd sp!, {r3, pc}
_0205E328:
	ldr r0, _0205E348 ; =0x02090C9C
	ldmfd sp!, {r3, pc}
_0205E330:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0205E338: .word unk_02090C14
_0205E33C: .word unk_02090C34
_0205E340: .word unk_02090C54
_0205E344: .word unk_02090C78
_0205E348: .word unk_02090C9C
	arm_func_end FUN_0205e2d8

	arm_func_start FUN_0205e34c
FUN_0205e34c: ; 0x0205E34C
	stmfd sp!, {r3, lr}
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0205E3A4
_0205E35C: ; jump table
	b _0205E378 ; case 0
	b _0205E380 ; case 1
	b _0205E384 ; case 2
	b _0205E38C ; case 3
	b _0205E380 ; case 4
	b _0205E394 ; case 5
	b _0205E39C ; case 6
_0205E378:
	ldr r0, _0205E3AC ; =0x02090CBC
	ldmfd sp!, {r3, pc}
_0205E380:
	bl OS_Terminate
_0205E384:
	ldr r0, _0205E3B0 ; =0x02090CDC
	ldmfd sp!, {r3, pc}
_0205E38C:
	ldr r0, _0205E3B4 ; =0x02090CFC
	ldmfd sp!, {r3, pc}
_0205E394:
	ldr r0, _0205E3B8 ; =0x02090D20
	ldmfd sp!, {r3, pc}
_0205E39C:
	ldr r0, _0205E3BC ; =0x02090D44
	ldmfd sp!, {r3, pc}
_0205E3A4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0205E3AC: .word unk_02090CBC
_0205E3B0: .word unk_02090CDC
_0205E3B4: .word unk_02090CFC
_0205E3B8: .word unk_02090D20
_0205E3BC: .word unk_02090D44
	arm_func_end FUN_0205e34c

	arm_func_start FUN_0205e3c0
FUN_0205e3c0: ; 0x0205E3C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r6, sp, #0
	mov r7, r1
	mov r10, r2
	mov r9, r3
	mov r0, #4
	mov r5, #0
_0205E3E4:
	strb r5, [r6]
	strb r5, [r6, #1]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	add r6, r6, #4
	subs r0, r0, #1
	bne _0205E3E4
	cmp r7, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	mov r1, r7
	bl FUN_0205e634
	mov r6, r0
	mov r0, r7
	mov r1, #0x2e
	bl strrchr
	mov r7, r0
	cmp r6, #0
	cmpne r7, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _0205E5C0 ; =0x02090D64
	mov r2, #5
	bl STD_CompareNString
	cmp r0, #0
	mov r8, #1
	ldr r1, _0205E5C4 ; =0x02090D6C
	movne r8, #0
	mov r0, r6
	mov r2, #4
	bl STD_CompareNString
	cmp r0, #0
	cmpeq r8, #0
	bne _0205E494
	add r1, r6, #4
	mov r3, #3
_0205E480:
	add r0, sp, #0
	sub r2, r7, r1
	str r3, [r10]
_0205E48C:
	bl strncpy
	b _0205E564
_0205E494:
	ldr r1, _0205E5C8 ; =0x02090D74
	mov r0, r6
	mov r2, #3
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E4C8
	cmp r8, #0
	beq _0205E4C8
	add r1, r6, #3
	add r0, sp, #0
	sub r2, r7, r1
	str r5, [r10]
	b _0205E530
_0205E4C8:
	mov r5, #2
	ldr r1, _0205E5CC ; =0x02090D78
	mov r0, r6
	mov r2, r5
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E4FC
	mov r0, #1
	cmp r8, #0
	moveq r0, #4
	str r0, [r10]
	add r1, r6, #2
	b _0205E528
_0205E4FC:
	ldr r1, _0205E5D0 ; =0x02090D7C
	mov r0, r6
	mov r2, #3
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E534
	cmp r8, #0
	strne r5, [r10]
	moveq r0, #5
	streq r0, [r10]
	add r1, r6, #3
_0205E528:
	add r0, sp, #0
	sub r2, r7, r1
_0205E530:
	b _0205E48C
_0205E534:
	ldr r1, _0205E5D4 ; =0x02090D80
	mov r0, r6
	mov r2, r5
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E558
	add r1, r6, #2
	mov r3, #6
	b _0205E480
_0205E558:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205E564:
	ldr r3, [r10]
	mov r0, #0xc
	mul r2, r3, r0
	ldr r1, [r4, #8]
	ldr r0, [r1, r2]
	cmp r0, #0
	addne r1, r1, r2
	ldrneb r1, [r1, #8]
	cmpne r1, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #6
	bne _0205E5A8
	add r1, sp, #0
	bl FUN_ov16_020f3c28
	b _0205E5B0
_0205E5A8:
	add r0, sp, #0
	bl atoi
_0205E5B0:
	str r0, [r9]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205E5C0: .word unk_02090D64
_0205E5C4: .word unk_02090D6C
_0205E5C8: .word unk_02090D74
_0205E5CC: .word unk_02090D78
_0205E5D0: .word unk_02090D7C
_0205E5D4: .word unk_02090D80
	arm_func_end FUN_0205e3c0

	arm_func_start FUN_0205e5d8
FUN_0205e5d8: ; 0x0205E5D8
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0xc]
	str r1, [r0, #0x1c]
	bx lr
	arm_func_end FUN_0205e5d8

	arm_func_start FUN_0205e5f4
FUN_0205e5f4: ; 0x0205E5F4
	mvn r0, #0
	cmp r1, #0
	addge r0, r1, #1
	bx lr
	arm_func_end FUN_0205e5f4

	arm_func_start FUN_0205e604
FUN_0205e604: ; 0x0205E604
	cmp r1, #0
	blt _0205E624
	ldr r2, [r0, #0xc]
	cmp r1, r2
	bge _0205E624
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0205E62C
_0205E624:
	mov r0, #0
	bx lr
_0205E62C:
	add r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_0205e604

	arm_func_start FUN_0205e634
FUN_0205e634: ; 0x0205E634
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x2f
	bl strrchr
	cmp r0, #0
	bne _0205E664
	mov r0, r4
	mov r1, #0x5c
	bl strrchr
_0205E664:
	cmp r0, #0
	moveq r0, r4
	addne r0, r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e634

	arm_func_start FUN_0205e674
FUN_0205e674: ; 0x0205E674
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov lr, r1
	mov r12, r2
	mov r5, r3
	add r4, sp, #0
	mov r6, r0
	ldr r1, _0205E6BC ; =0x02090D84
	mov r0, r4
	mov r2, lr
	mov r3, r12
	bl sprintf
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0205e71c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0205E6BC: .word unk_02090D84
	arm_func_end FUN_0205e674

	arm_func_start FUN_0205e6c0
FUN_0205e6c0: ; 0x0205E6C0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	movs r12, r2
	mov r5, r0
	mov r2, r1
	bpl _0205E6E8
	ldr r2, [sp, #0x30]
	bl FUN_0205e738
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
_0205E6E8:
	add r4, sp, #4
	str r3, [sp]
	ldr r1, _0205E718 ; =0x02090D8C
	mov r0, r4
	mov r3, r12
	bl sprintf
	ldr r2, [sp, #0x30]
	mov r0, r5
	mov r1, r4
	bl FUN_0205e738
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
_0205E718: .word unk_02090D8C
	arm_func_end FUN_0205e6c0

	arm_func_start FUN_0205e71c
FUN_0205e71c: ; 0x0205E71C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r0, r1
	mov r1, r4
	bl FUN_ov16_020f3b6c
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e71c

	arm_func_start FUN_0205e738
FUN_0205e738: ; 0x0205E738
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r0, r1
	mov r1, r4
	bl FUN_ov16_020f3b88
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e738

	arm_func_start FUN_0205e754
FUN_0205e754: ; 0x0205E754
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r7, r0
	mov r1, r4
	mov r5, r2
	bl FUN_0205e604
	ldr r2, [r7, #0xc]
	cmp r2, #0
	ble _0205E7B4
_0205E77C:
	ldr r1, [r0, #8]
	tst r1, #1
	beq _0205E7A4
	ldr r1, [r0]
	cmp r1, r6
	bne _0205E7A4
	cmp r5, #0
	strne r0, [r5]
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205E7A4:
	add r4, r4, #1
	cmp r4, r2
	add r0, r0, #0x20
	blt _0205E77C
_0205E7B4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205e754

	arm_func_start FUN_0205e7bc
FUN_0205e7bc: ; 0x0205E7BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_0205e604
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ble _0205E7FC
_0205E7DC:
	ldr r1, [r0, #8]
	tst r1, #1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r4, r4, #1
	cmp r4, r2
	add r0, r0, #0x20
	blt _0205E7DC
_0205E7FC:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205e7bc

	arm_func_start FUN_0205e804
FUN_0205e804: ; 0x0205E804
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0205E820
	bl FUN_ov16_020fa154
_0205E820:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205E838
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0205E838:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0205E850
	ldr r0, _0205E88C ; =0x02099EE4
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205E850:
	mov r6, #0
	mov r5, #0x20
	mov r0, r4
	mov r1, r6
	mov r2, r5
	ldr r8, [r4, #0x18]
	ldr r7, [r4, #0x14]
	bl MI_CpuFill8
	sub r0, r5, #0x21
	str r7, [r4, #0x14]
	str r8, [r4, #0x18]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strb r6, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205E88C: .word unk_02099EE4
	arm_func_end FUN_0205e804

	arm_func_start FUN_0205e890
FUN_0205e890: ; 0x0205E890
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r2, _0205EA90 ; =0x0208C48C
	add r4, sp, #0
	movs r5, r1
	mov r6, r0
	ldmia r2, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r4, #1
	mov r8, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #8]
	tst r0, #1
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	addeq sp, sp, #0x10
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x14]
	bl FUN_ov16_020fa964
	movs r7, r0
	beq _0205E924
	cmp r7, #1
	addeq sp, sp, #0x10
	streqb r4, [r5, #0xc]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205e804
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E924:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, r4
	movne r0, r8
	cmp r0, #0
	bne _0205E978
	ldr r0, [r5, #0x18]
	bl FUN_ov16_020fb2ac
	movs r7, r0
	beq _0205E978
	cmp r7, #1
	addeq sp, sp, #0x10
	streqb r4, [r5, #0xc]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205e804
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E978:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _0205EA7C
	ldr r7, _0205EA94 ; =0x02099EE4
	ldr r0, [r7]
	bl FUN_ov16_020fd278
	movs r9, r0
	beq _0205E9C0
	cmp r9, #1
	addeq sp, sp, #0x10
	streqb r4, [r5, #0xc]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205e804
	add sp, sp, #0x10
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E9C0:
	ldr r0, [r7]
	ldr r1, [r5, #0x1c]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_020fd6d8
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x18]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov16_020fd350
	ldr r0, [r5, #0x14]
	bl FUN_ov16_020fa8fc
	mov r9, #0
	add r6, sp, #0
	b _0205EA60
_0205EA18:
	ldr r0, [r7]
	ldr r1, [r5, #0x1c]
	ldr r3, [r6, r9, lsl #2]
	add r2, r9, #2
	bl FUN_ov16_020fd6d8
	movs r4, r0
	beq _0205EA5C
	ldr r0, [r5, #0x14]
	mov r1, r4
	mov r2, r9
	bl FUN_ov16_020fa7f0
	cmp r0, #0
	ldr r0, [r7]
	mov r1, r4
	bne _0205EA58
	b _0205EA58
_0205EA58:
	bl FUN_ov16_020fd350
_0205EA5C:
	add r9, r9, #1
_0205EA60:
	cmp r9, #5
	blt _0205EA18
	ldr r0, _0205EA94 ; =0x02099EE4
	ldr r1, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	str r8, [r5, #0x1c]
_0205EA7C:
	mov r0, #2
	strb r0, [r5, #0xc]
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205EA90: .word unk_0208C48C
_0205EA94: .word unk_02099EE4
	arm_func_end FUN_0205e890

	arm_func_start FUN_0205ea98
FUN_0205ea98: ; 0x0205EA98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r8, r1
	mov r9, r0
	mov r6, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r8, #0xc]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #2
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x14]
	bl FUN_ov16_020fa964
	cmp r0, #0
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x14]
	mov r4, r6
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _0205EB2C
	ldrb r0, [r8, #0xe]
	mov r1, r6
	cmp r0, #0
	movne r4, #2
	ldr r0, [r8, #0x14]
	mov r2, r4
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	bne _0205EB2C
	mov r0, r9
	mov r1, r8
	bl FUN_0205e804
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205EB2C:
	mov r5, #1
	mov r7, #0
	mov r10, r5
_0205EB38:
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020faa1c
	ldr r0, [r0, #4]
	mov r4, #0
	cmp r0, #0
	moveq r0, r5
	movne r0, r6
	cmp r0, #0
	bne _0205EBC4
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020faa1c
	ldr r1, [r0, #4]
	cmp r1, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	movne r0, r10
	moveq r0, r6
	cmp r0, #0
	bne _0205EBB8
	ldr r0, [r8, #0x14]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020fa838
	cmp r0, #0
	bne _0205EBB8
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020fa8a0
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205EBB8:
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020fa8b8
_0205EBC4:
	add r7, r7, #1
	cmp r7, #5
	blt _0205EB38
	ldrb r0, [r8, #0xf]
	cmp r0, #0
	beq _0205EC30
	ldr r0, [r8]
	ldr r5, [r9, #0x1c]
	sub r1, r0, #1
	mov r6, #0x30
	mla r0, r1, r6, r5
	ldrsh r1, [r0, #6]
	ldr r0, [r8, #0x18]
	bl FUN_ov16_020faf5c
	ldr r1, [r8]
	ldr r0, [r8, #0x18]
	sub r2, r1, #1
	mla r1, r2, r6, r5
	ldr r1, [r1, #8]
	bl FUN_ov16_020fb024
	ldr r1, [r8]
	ldr r0, [r8, #0x18]
	sub r2, r1, #1
	mla r1, r2, r6, r5
	ldrb r1, [r1, #4]
	bl FUN_ov16_020fb040
	strb r4, [r8, #0xf]
_0205EC30:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0205ea98

	arm_func_start FUN_0205ec38
FUN_0205ec38: ; 0x0205EC38
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0205e634
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrsb r1, [r0]
	cmp r1, #0x6d
	cmpne r1, #0x4d
	bne _0205EC7C
	ldrsb r1, [r0, #1]
	cmp r1, #0x6f
	cmpne r1, #0x4f
	beq _0205EC84
_0205EC7C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0205EC84:
	mov r2, #0
_0205EC88:
	add r1, r0, r2
	ldrsb r1, [r1, #2]
	cmp r1, #0x30
	blt _0205ECA0
	cmp r1, #0x39
	ble _0205ECA8
_0205ECA0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0205ECA8:
	add r2, r2, #1
	cmp r2, #4
	blt _0205EC88
	cmp r4, #0
	beq _0205ECC8
	add r0, r0, #2
	bl atoi
	str r0, [r4]
_0205ECC8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205ec38

	arm_func_start FUN_0205ecd0
FUN_0205ecd0: ; 0x0205ECD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl FUN_0205e5d8
	mov r0, r10
	mov r1, #7
	str r9, [r10, #0xc]
	bl FUN_02052168
	ldr r0, _0205EE14 ; =FUN_020527d4
	mov r4, #8
	str r0, [sp]
	ldr r3, _0205EE18 ; =FUN_0205a3f0
	mov r0, r9
	mov r1, #0x1bc
	mov r2, r4
	bl __cxa_vec_new
	str r0, [r10, #0x10]
	ldr r1, _0205EE1C ; =FUN_020525e8
	ldr r3, _0205EE20 ; =FUN_0205a2f0
	str r1, [sp]
	mov r2, r4
	mov r0, r9
	mov r1, #0x114
	bl __cxa_vec_new
	ldr r4, _0205EE24 ; =gL5Allocator
	str r0, [r10, #0x18]
	mov r1, r9, lsl #5
	mov r0, r4
	bl _ZN11L5Allocator8allocateEm
	str r0, [r10, #0x14]
	mov r0, r4
	mov r1, #0x600
	bl _ZN11L5Allocator8allocateEm
	str r0, [r10, #0x1c]
	ldr r0, [r10, #0x10]
	cmp r0, #0
	ldrne r0, [r10, #0x18]
	cmpne r0, #0
	ldrne r0, [r10, #0x14]
	cmpne r0, #0
	bne _0205ED84
	mov r0, r10
	bl FUN_0205ee28
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205ED84:
	cmp r9, #0
	mov r5, #0
	ble _0205EE0C
	mov r11, r5
	mvn r4, #0
_0205ED98:
	mov r0, #0x1bc
	mul r6, r5, r0
	ldr r0, [r10, #0x10]
	add r0, r0, r6
	bl FUN_ov16_020f9cdc
	mov r0, #0x114
	mul r7, r5, r0
	ldr r0, [r10, #0x18]
	ldr r1, [r0, r7]!
	ldr r1, [r1, #8]
	blx r1
	ldr r1, [r10, #0x18]
	ldr r0, [r10, #0x10]
	add r8, r1, r7
	add r7, r0, r6
	ldr r0, [r10, #0x14]
	mov r1, r11
	add r6, r0, r5, lsl #5
	mov r0, r6
	mov r2, #0x20
	bl MI_CpuFill8
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	add r5, r5, #1
	strb r11, [r6, #0x10]
	cmp r5, r9
	blt _0205ED98
_0205EE0C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205EE14: .word FUN_020527d4
_0205EE18: .word FUN_0205a3f0
_0205EE1C: .word FUN_020525e8
_0205EE20: .word FUN_0205a2f0
_0205EE24: .word gL5Allocator
	arm_func_end FUN_0205ecd0

	arm_func_start FUN_0205ee28
FUN_0205ee28: ; 0x0205EE28
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mvn r1, #0
	bl FUN_020522ec
	mov r0, r4
	bl FUN_020521a0
	mov r0, r4
	bl FUN_0205f61c
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0205EE5C
	ldr r0, _0205EF24 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_0205EE5C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205EEB4
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205EEA0
	mov r5, #0x114
_0205EE7C:
	ldr r0, [r4, #0x18]
	mla r0, r6, r5, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205EE7C
_0205EEA0:
	ldr r0, [r4, #0x18]
	ldr r3, _0205EF28 ; =FUN_020525e8
	mov r1, #0x114
	mov r2, #8
	bl __cxa_vec_delete
_0205EEB4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0205EF04
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205EEF0
	mov r5, #0x1bc
_0205EED4:
	ldr r0, [r4, #0x10]
	mla r0, r6, r5, r0
	bl FUN_ov16_020f9d80
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205EED4
_0205EEF0:
	ldr r0, [r4, #0x10]
	ldr r3, _0205EF2C ; =FUN_020527d4
	mov r1, #0x1bc
	mov r2, #8
	bl __cxa_vec_delete
_0205EF04:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0205EF18
	ldr r0, _0205EF24 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
_0205EF18:
	mov r0, r4
	bl FUN_0205e5d8
	ldmfd sp!, {r4, r5, r6, pc}
_0205EF24: .word gL5Allocator
_0205EF28: .word FUN_020525e8
_0205EF2C: .word FUN_020527d4
	arm_func_end FUN_0205ee28

	arm_func_start FUN_0205ef30
FUN_0205ef30: ; 0x0205EF30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r7, r1
	mov r1, r4
	mov r8, r0
	bl FUN_0205e604
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0205F028 ; =0x02099F18
	mov r6, #0
	ldr r0, [r0]
	mvn r9, #0
	ldrb r0, [r0, #4]
	cmp r0, #0
	movne r7, r4
	mov r4, #3
	b _0205F018
_0205EF74:
	ldr r1, [r5, #8]
	tst r1, #1
	beq _0205F010
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _0205EFA0
	cmp r0, #2
	beq _0205EFB0
	cmp r0, #3
	beq _0205EFE0
	b _0205F010
_0205EFA0:
	mov r0, r8
	mov r1, r5
	bl FUN_0205e890
	b _0205F010
_0205EFB0:
	tst r1, #2
	bne _0205F010
	mov r0, r8
	mov r1, r5
	bl FUN_0205ea98
	cmp r0, #0
	strneb r4, [r5, #0xc]
	bne _0205F010
	mov r0, r8
	mov r1, r5
	bl FUN_0205e804
	b _0205F010
_0205EFE0:
	tst r1, #0x100
	beq _0205F010
	ldr r0, [r5, #0x18]
	mov r1, r7
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x14]
	ldr r1, [r1, #0x24]
	mov r2, r9
	bl FUN_ov16_020fa340
_0205F010:
	add r6, r6, #1
	add r5, r5, #0x20
_0205F018:
	ldr r0, [r8, #0xc]
	cmp r6, r0
	blt _0205EF74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F028: .word g3DDevice
	arm_func_end FUN_0205ef30

	arm_func_start FUN_0205f02c
FUN_0205f02c: ; 0x0205F02C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	strneb r4, [r0, #0x10]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f02c

	arm_func_start FUN_0205f05c
FUN_0205f05c: ; 0x0205F05C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	mov r7, r1
	mov r1, r5
	mov r8, r0
	bl FUN_0205e604
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0xc]
	mov r4, r5
	cmp r0, #0
	ble _0205F0F4
	ldr r9, _0205F12C ; =0x00000101
_0205F090:
	ldr r0, [r6, #8]
	and r0, r0, r9
	cmp r0, r9
	ldreqb r0, [r6, #0xc]
	cmpeq r0, #3
	bne _0205F0E0
	cmp r7, #0
	beq _0205F0BC
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0205F0E0
_0205F0BC:
	cmp r7, #0
	bne _0205F0D0
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0205F0E0
_0205F0D0:
	ldr r0, [r6, #0x14]
	bl FUN_ov16_020fa300
	cmp r0, #0
	addne r5, r5, #1
_0205F0E0:
	ldr r0, [r8, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r6, r6, #0x20
	blt _0205F090
_0205F0F4:
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F12C: .word 0x00000101
	arm_func_end FUN_0205f05c

	arm_func_start FUN_0205f130
FUN_0205f130: ; 0x0205F130
	ldr r12, _0205F13C ; =FUN_0205f05c
	mov r1, #0
	bx r12
_0205F13C: .word FUN_0205f05c
	arm_func_end FUN_0205f130

	arm_func_start FUN_0205f140
FUN_0205f140: ; 0x0205F140
	ldr r12, _0205F14C ; =FUN_0205f05c
	mov r1, #1
	bx r12
_0205F14C: .word FUN_0205f05c
	arm_func_end FUN_0205f140

	arm_func_start FUN_0205f150
FUN_0205f150: ; 0x0205F150
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x9c
	ldr lr, _0205F1C4 ; =0x02090BD4
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r12, r4
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add r4, sp, #0x1c
	ldr r2, [r12, r6, lsl #2]
	ldr r1, _0205F1C8 ; =0x02090D98
	mov r0, r4
	bl STD_TSPrintf
	cmp r5, #0
	mov r1, r4
	mov r0, #0
	beq _0205F1AC
	bl L5FS_OpenArchiveDeferred
	b _0205F1B0
_0205F1AC:
	bl L5FS_OpenArchiveDirect
_0205F1B0:
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x20]
	mov r0, #1
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205F1C4: .word unk_02090BD4
_0205F1C8: .word unk_02090D98
	arm_func_end FUN_0205f150

	arm_func_start FUN_0205f1cc
FUN_0205f1cc: ; 0x0205F1CC
	stmfd sp!, {r3, lr}
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x20]
	bl L5FS_IsArchiveReady
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205f1cc

	arm_func_start FUN_0205f1ec
FUN_0205f1ec: ; 0x0205F1EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x20]
	bl L5FS_CloseArchive
	add r0, r5, r4, lsl #2
	mvn r1, #0
	str r1, [r0, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205f1ec

	arm_func_start FUN_0205f214
FUN_0205f214: ; 0x0205F214
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl FUN_0205e7bc
	movs r1, r0
	addmi sp, sp, #0xc
	mvnmi r0, #0
	ldmmifd sp!, {r3, r4, r5, r6, pc}
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [sp]
	ldr r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_0205f2b8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205f214

	arm_func_start FUN_0205f26c
FUN_0205f26c: ; 0x0205F26C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_0205e7bc
	movs r1, r0
	addmi sp, sp, #8
	mvnmi r0, #0
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r12, [sp, #0x20]
	mov r0, r7
	mov r2, r6
	mov r3, r5
	stmia sp, {r4, r12}
	bl FUN_0205f3d0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205f26c

	arm_func_start FUN_0205f2b8
FUN_0205f2b8: ; 0x0205F2B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	mov r6, r2
	mov r8, r0
	mov r7, r1
	mov r5, r3
	cmp r6, #4
	bne _0205F2EC
	ldr r1, _0205F3C4 ; =0x02090DA4
	add r0, sp, #0
	mov r2, r5
	bl STD_TSPrintf
	b _0205F2F0
_0205F2EC:
	bl OS_Terminate
_0205F2F0:
	mov r0, r8
	mov r1, r7
	bl FUN_0205e604
	mov r4, r0
	add r1, r8, r6, lsl #2
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x20]
	ldr r3, [sp, #0x9c]
	add r2, sp, #0
	bl FUN_ov16_020f9e9c
	cmp r0, #0
	bne _0205F338
	mov r0, r8
	mov r1, r4
	bl FUN_0205e804
	add sp, sp, #0x80
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205F338:
	ldr r1, _0205F3C8 ; =0x0208F6F0
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x20]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	ldr r1, _0205F3CC ; =0x00001001
	ldr r0, [sp, #0xa0]
	str r1, [r4, #8]
	cmp r0, #0
	ldreq r0, [r4, #8]
	orreq r0, r0, #2
	streq r0, [r4, #8]
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0xc]
	bne _0205F390
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r4, #0xc]
_0205F390:
	mov r0, r8
	mov r1, r7
	bl FUN_0205e5f4
	ldr r1, [sp, #0x98]
	str r0, [r4]
	cmp r6, #4
	strb r1, [r4, #0xe]
	streqh r5, [r4, #4]
	mvnne r0, #0
	strneh r0, [r4, #4]
	ldr r0, [r4]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205F3C4: .word unk_02090DA4
_0205F3C8: .word unk_0208F6F0
_0205F3CC: .word 0x00001001
	arm_func_end FUN_0205f2b8

	arm_func_start FUN_0205f3d0
FUN_0205f3d0: ; 0x0205F3D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r4, #0
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	bl FUN_0205e604
	mov r4, r0
	mov r0, r9
	ldr r12, [r0]
	mov r1, r7
	ldr r12, [r12, #8]
	add r2, sp, #0x14
	add r3, sp, #0x10
	blx r12
	cmp r0, #0
	beq _0205F484
	ldr r1, [sp, #0x14]
	mov r0, #0xc
	mul r0, r1, r0
	ldr r2, [r9, #8]
	ldr r1, [sp, #0x10]
	ldr r0, [r2, r0]
	add r2, sp, #0xc
	add r3, sp, #8
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0205F4AC
	mov r0, r9
	ldr r2, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [sp, #8]
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, r0
	ldrb r2, [sp, #0x38]
	ldr r0, [r4, #0x14]
	ldr r3, [sp, #0xc]
	b _0205F4A4
_0205F484:
	ldr r1, [sp, #8]
	mov r0, #1
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r2, [sp, #0x38]
	ldr r0, [r4, #0x14]
	ldr r3, [sp, #0xc]
	mov r1, r7
_0205F4A4:
	bl FUN_ov16_020f9e24
	mov r5, r0
_0205F4AC:
	cmp r5, #0
	bne _0205F4CC
	mov r0, r9
	mov r1, r4
	bl FUN_0205e804
	add sp, sp, #0x18
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F4CC:
	ldr r1, _0205F564 ; =0x0208F6F0
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x20]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	ldrb r0, [sp, #0x3c]
	ldr r1, _0205F568 ; =0x00001001
	str r1, [r4, #8]
	cmp r0, #0
	ldreq r0, [r4, #8]
	orreq r0, r0, #2
	streq r0, [r4, #8]
	ldrb r0, [sp, #0x38]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0xc]
	bne _0205F524
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r4, #0xc]
_0205F524:
	mov r0, r9
	mov r1, r8
	bl FUN_0205e5f4
	str r0, [r4]
	add r2, sp, #0x10
	mov r0, r9
	mov r1, r7
	strb r6, [r4, #0xe]
	bl FUN_0205ec38
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	mvneq r0, #0
	strh r0, [r4, #4]
	ldr r0, [r4]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F564: .word unk_0208F6F0
_0205F568: .word 0x00001001
	arm_func_end FUN_0205f3d0

	arm_func_start FUN_0205f56c
FUN_0205f56c: ; 0x0205F56C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	add r2, sp, #0
	mov r5, r0
	str r4, [sp]
	bl FUN_0205e754
	cmp r0, #0
	movlt r0, r4
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	cmp r1, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r1, #8]
	bic r0, r0, #2
	str r0, [r1, #8]
	ldr r1, [sp]
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_0205e890
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	moveq r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205f56c

	arm_func_start FUN_0205f5ec
FUN_0205f5ec: ; 0x0205F5EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205e754
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205e804
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f5ec

	arm_func_start FUN_0205f61c
FUN_0205f61c: ; 0x0205F61C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r1, r5
	bl FUN_0205e604
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0205F640:
	mov r0, r6
	mov r1, r4
	bl FUN_0205e804
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x20
	blt _0205F640
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205f61c

	arm_func_start FUN_0205f664
FUN_0205f664: ; 0x0205F664
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r6, r2
	add r2, sp, #4
	str r4, [sp, #4]
	mov r7, r0
	mov r5, r3
	bl FUN_0205e754
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0205F6A8
	ldr r1, [r2, #8]
	tst r1, #1
	beq _0205F6A8
	cmp r0, #0
	bge _0205F6B4
_0205F6A8:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205F6B4:
	ldr r0, _0205F78C ; =0x02099EE4
	ldr r1, [r2, #0x1c]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	ldr r0, [sp, #4]
	mov r8, #1
	str r4, [r0, #0x1c]
	ldrsb r0, [r6, #1]
	cmp r0, #0x6f
	subne r8, r4, #1
	cmp r8, #0
	bge _0205F6E8
	bl OS_Terminate
_0205F6E8:
	ldr r0, _0205F78C ; =0x02099EE4
	str r5, [sp]
	add r1, r7, r8, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r2, r6
	mov r3, #0xf
	bl FUN_ov16_020fcb70
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r4, #1
	cmp r4, #0
	bne _0205F744
	cmp r5, #0
	ldrne r0, [sp, #4]
	movne r1, #1
	strneb r1, [r0, #0xc]
	ldreq r0, [sp, #4]
	moveq r1, #2
	streqb r1, [r0, #0xc]
_0205F744:
	ldr r0, [sp, #4]
	mvn r1, #0
	strh r1, [r0, #6]
	cmp r4, #0
	bne _0205F778
	add r2, sp, #8
	mov r0, r7
	mov r1, r6
	bl FUN_0205ec38
	cmp r0, #0
	ldrne r1, [sp, #8]
	ldrne r0, [sp, #4]
	strneh r1, [r0, #6]
_0205F778:
	mov r0, #1
	cmp r4, #0
	movne r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205F78C: .word unk_02099EE4
	arm_func_end FUN_0205f664

	arm_func_start FUN_0205f790
FUN_0205f790: ; 0x0205F790
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r6, r2
	add r2, sp, #0x10
	str r4, [sp, #0x10]
	mov r7, r0
	mov r5, r3
	bl FUN_0205e754
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0205F7D4
	ldr r1, [r2, #8]
	tst r1, #1
	beq _0205F7D4
	cmp r0, #0
	bge _0205F7E0
_0205F7D4:
	add sp, sp, #0x24
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205F7E0:
	ldr r8, _0205F92C ; =0x02099EE4
	ldr r1, [r2, #0x1c]
	ldr r0, [r8]
	bl FUN_ov16_020fd350
	ldr r1, [sp, #0x10]
	mov r0, r7
	str r4, [r1, #0x1c]
	ldr r9, [r0]
	add r2, sp, #0x20
	ldr r9, [r9, #8]
	add r3, sp, #0x1c
	mov r1, r6
	blx r9
	cmp r0, #0
	beq _0205F880
	ldr r1, [sp, #0x20]
	mov r0, #0xc
	mul r0, r1, r0
	ldr r2, [r7, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [r2, r0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	mov r9, #1
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0205F8B0
	mov r0, r7
	ldr r2, [r0]
	ldr r1, [sp, #0x20]
	ldr r2, [r2, #4]
	blx r2
	ldr r1, [sp, #0x18]
	str r1, [sp]
	ldr r2, [sp, #0x14]
	mov r1, r0
	stmib sp, {r2, r9}
	str r9, [sp, #0xc]
	ldr r0, [r8]
	b _0205F89C
_0205F880:
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r8]
	mov r1, r6
_0205F89C:
	mov r3, r5
	mov r2, #0xf
	bl FUN_ov16_020fcd08
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
_0205F8B0:
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r4, r1
	cmp r4, #0
	bne _0205F8E4
	cmp r5, #0
	ldrne r0, [sp, #0x10]
	strneb r1, [r0, #0xc]
	ldreq r0, [sp, #0x10]
	moveq r1, #2
	streqb r1, [r0, #0xc]
_0205F8E4:
	ldr r0, [sp, #0x10]
	mvn r1, #0
	strh r1, [r0, #6]
	cmp r4, #0
	bne _0205F918
	add r2, sp, #0x1c
	mov r0, r7
	mov r1, r6
	bl FUN_0205ec38
	cmp r0, #0
	ldrne r1, [sp, #0x1c]
	ldrne r0, [sp, #0x10]
	strneh r1, [r0, #6]
_0205F918:
	mov r0, #1
	cmp r4, #0
	movne r0, #0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205F92C: .word unk_02099EE4
	arm_func_end FUN_0205f790

	arm_func_start FUN_0205f930
FUN_0205f930: ; 0x0205F930
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r1, r5
	bl FUN_0205e604
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r1, #0
	ble _0205F988
_0205F954:
	ldr r0, [r4, #8]
	tst r0, #1
	beq _0205F974
	mov r0, r6
	mov r1, r4
	bl FUN_0205e890
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0205F974:
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x20
	blt _0205F954
_0205F988:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205f930

	arm_func_start FUN_0205f990
FUN_0205f990: ; 0x0205F990
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205e754
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205e890
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f990

	arm_func_start FUN_0205f9c0
FUN_0205f9c0: ; 0x0205F9C0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r1, [sp]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r1, #8]
	tst r0, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	cmp r4, #0
	orrne r0, r0, #0x100
	strne r0, [r1, #8]
	biceq r0, r0, #0x100
	streq r0, [r1, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f9c0

	arm_func_start FUN_0205fa18
FUN_0205fa18: ; 0x0205FA18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #0
	add r2, sp, #0
	str r4, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r4, [r0, #0x14]
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fa18

	arm_func_start FUN_0205fa48
FUN_0205fa48: ; 0x0205FA48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	add r2, sp, #0
	str r4, [sp]
	mov r5, r3
	bl FUN_0205e754
	ldr r1, [sp]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrb r0, [r1, #0x10]
	cmp r0, #4
	subeq r0, r4, #1
	muleq r0, r5, r0
	moveq r5, r0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa4bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205fa48

	arm_func_start FUN_0205fab4
FUN_0205fab4: ; 0x0205FAB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa4e0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205fab4

	arm_func_start FUN_0205faf8
FUN_0205faf8: ; 0x0205FAF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa504
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205faf8

	arm_func_start FUN_0205fb3c
FUN_0205fb3c: ; 0x0205FB3C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, r4
	bl FUN_ov16_020fa528
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fb3c

	arm_func_start FUN_0205fb80
FUN_0205fb80: ; 0x0205FB80
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	add r12, sp, #0x10
	mov r4, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	beq _0205FBE8
	add r0, sp, #4
	bl FUN_ov16_020fa538
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205FBE8:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fb80

	arm_func_start FUN_0205fbfc
FUN_0205fbfc: ; 0x0205FBFC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	add r12, sp, #0x10
	mov r4, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	beq _0205FC64
	add r0, sp, #4
	bl FUN_ov16_020fa54c
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205FC64:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fbfc

	arm_func_start FUN_0205fc78
FUN_0205fc78: ; 0x0205FC78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	add r2, sp, #0
	str r4, [sp]
	mov r5, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	beq _0205FD10
	ldr r0, [r0, #0x18]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r6
	bl FUN_ov16_020faf80
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #0
	bge _0205FCF4
	ldr r0, [sp]
	sub r1, r4, #1
	ldr r0, [r0, #0x18]
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	mov r5, r4
_0205FCF4:
	ldr r0, [sp]
	mov r1, r5
	ldr r0, [r0, #0x18]
	bl FUN_ov16_020fb040
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0205FD10:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205fc78

	arm_func_start FUN_0205fd1c
FUN_0205fd1c: ; 0x0205FD1C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #0
	add r2, sp, #0
	str r4, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0205FD5C
	bl FUN_ov16_020fb02c
	mov r4, r0
_0205FD5C:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fd1c

	arm_func_start FUN_0205fd68
FUN_0205fd68: ; 0x0205FD68
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020faa4c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205fd68

	arm_func_start FUN_0205fdac
FUN_0205fdac: ; 0x0205FDAC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, r4
	bl FUN_ov16_020faa7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fdac

	arm_func_start FUN_0205fdf0
FUN_0205fdf0: ; 0x0205FDF0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, r4
	bl FUN_ov16_020faa8c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fdf0

	arm_func_start FUN_0205fe34
FUN_0205fe34: ; 0x0205FE34
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	strneb r4, [r0, #0xd]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fe34

	arm_func_start FUN_0205fe64
FUN_0205fe64: ; 0x0205FE64
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r1, [sp]
	cmp r1, #0
	ldrne r0, [r1, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r1, #8]
	cmp r4, #0
	orrne r0, r0, #0x1000
	strne r0, [r1, #8]
	biceq r0, r0, #0x1000
	streq r0, [r1, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fe64

	arm_func_start FUN_0205feb8
FUN_0205feb8: ; 0x0205FEB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0x600
	ldr r0, [r0, #0x1c]
	mov r5, r1
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205feb8

	arm_func_start FUN_0205fee0
FUN_0205fee0: ; 0x0205FEE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r4, #0x600
	ldr r1, [r5, #0x1c]
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [r5, #0x1c]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205fee0

	arm_func_start FUN_0205ff0c
FUN_0205ff0c: ; 0x0205FF0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0x600
	ldr r0, [r5, #0x1c]
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0x1c]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205ff0c

	arm_func_start FUN_0205ff38
FUN_0205ff38: ; 0x0205FF38
	stmfd sp!, {r4, lr}
	ldr r1, _0205FF5C ; =0x02090BF8
	mov r4, r0
	str r1, [r4]
	bl FUN_0205ee28
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205FF5C: .word unk_02090BF8
	arm_func_end FUN_0205ff38

	arm_func_start FUN_0205ff60
FUN_0205ff60: ; 0x0205FF60
	stmfd sp!, {r4, lr}
	ldr r1, _0205FF7C ; =0x02090BF8
	mov r4, r0
	str r1, [r4]
	bl FUN_0205ee28
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205FF7C: .word unk_02090BF8
	arm_func_end FUN_0205ff60

	arm_func_start FUN_0205ff80
FUN_0205ff80: ; 0x0205FF80
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl _ZN16L5CardControllerC1Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205ff80

	arm_func_start FUN_0205ff98
FUN_0205ff98: ; 0x0205FF98
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl _ZN16L5CardControllerD1Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205ff98

	arm_func_start FUN_0205ffb0
FUN_0205ffb0: ; 0x0205FFB0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20c
	mov r5, r1
	cmp r0, #0
	sub r4, r2, #0xc
	ldr r6, _020603B8 ; =0x5D588B65
	ldr r7, _020603BC ; =0x00269EC3
	bne _020601A8
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x14
	mov r1, r0, lsl #0x10
	ldr r8, _020603C0 ; =0xB5BDCF5A
	movs r2, r1, lsr #0x10
	movne r1, r8, lsr #0x10
	mulne r1, r2, r1
	movne r1, r1, lsr #0x10
	moveq r12, r8, lsr #0x10
	movne r1, r1, lsl #0x10
	movne r12, r1, lsr #0x10
	add r9, r5, #0x20
	mov r1, r0, lsl #0x10
	add r0, r9, r12
	mov r9, r1, lsr #0x10
	add r3, r5, r4
	add r2, sp, #0
	mov r1, #0
_02060018:
	mla r8, r6, r8, r7
	mov r12, r8, lsr #0x10
	cmp r9, #0
	mulne lr, r12, r9
	movne r12, lr, lsr #0x10
	mov r12, r12, lsl #0x10
	mov r12, r12, lsr #0x10
	add r12, r12, #2
	ldrb lr, [r0, r12]!
	ldrb r12, [r3], #1
	add r1, r1, #1
	cmp r1, #0xc
	strb r12, [r0]
	strb lr, [r2], #1
	blo _02060018
	ldr r8, [sp]
	ldr r0, _020603B8 ; =0x5D588B65
	ldr r1, _020603BC ; =0x00269EC3
	mov r7, #0
	add r2, sp, #0xc
_02060068:
	mla r8, r0, r8, r1
	mov r3, r7, lsl #1
	mov r6, r8, lsr #0x10
	add r7, r7, #1
	strh r6, [r2, r3]
	cmp r7, #0x100
	ldr r9, _020603BC ; =0x00269EC3
	blt _02060068
	cmp r4, #0
	ldr r8, _020603B8 ; =0x5D588B65
	mov r7, #0
	bls _020600FC
	add r6, sp, #0xc
_0206009C:
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #24
	add r0, r1, r0, ror #24
	mov r0, r0, lsl #1
	ldrh r0, [r6, r0]
	mov r1, r4
	mul r0, r4, r0
	add r0, r7, r0, lsr #16
	bl _u32_div_f
	cmp r7, #4
	blt _020600D0
	cmp r7, #0x13
	ble _020600F0
_020600D0:
	cmp r1, #4
	blo _020600E0
	cmp r1, #0x13
	bls _020600F0
_020600E0:
	ldrb r2, [r5, r7]
	ldrb r0, [r5, r1]
	strb r0, [r5, r7]
	strb r2, [r5, r1]
_020600F0:
	add r7, r7, #1
	cmp r7, r4
	blo _0206009C
_020600FC:
	cmp r4, #0
	ldr r3, [sp, #4]
	mov r2, #0
	bls _02060148
_0206010C:
	mla r3, r8, r3, r9
	mov r0, r3, lsr #0x10
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r2, #4
	mov r0, r0, lsl #0x10
	blt _02060130
	cmp r2, #0x13
	ble _0206013C
_02060130:
	ldrb r1, [r5, r2]
	eor r0, r1, r0, lsr #16
	strb r0, [r5, r2]
_0206013C:
	add r2, r2, #1
	cmp r2, r4
	blo _0206010C
_02060148:
	cmp r4, #0
	ldr r3, [sp, #8]
	addls sp, sp, #0x20c
	mov r1, #0
	ldmlsfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0206015C:
	mla r3, r8, r3, r9
	mov r0, r3, lsr #0x10
	mov r0, r0, lsl #3
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	cmp r1, #4
	mov r2, r0, lsr #0x10
	blt _02060184
	cmp r1, #0x13
	ble _02060194
_02060184:
	ldrb r0, [r5, r1]
	orr r0, r0, r0, lsl #8
	mov r0, r0, asr r2
	strb r0, [r5, r1]
_02060194:
	add r1, r1, #1
	cmp r1, r4
	blo _0206015C
	add sp, sp, #0x20c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020601A8:
	bl OS_GetTickLo
	mov r1, #0
	add r8, sp, #0
_020601B4:
	mla r2, r0, r6, r7
	mla r0, r2, r6, r7
	mov r2, r2, lsr #0x10
	mov r3, r0, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r9, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r9, lsl #16
	str r2, [r8, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	ldr r3, _020603BC ; =0x00269EC3
	blt _020601B4
	cmp r4, #0
	ldr r1, [sp, #8]
	ldr r2, _020603B8 ; =0x5D588B65
	mov r0, #0
	bls _02060248
_02060200:
	mla r1, r2, r1, r3
	mov r6, r1, lsr #0x10
	mov r6, r6, lsl #3
	mov r6, r6, lsr #0x10
	mov r6, r6, lsl #0x10
	cmp r0, #4
	mov r6, r6, lsr #0x10
	blt _02060228
	cmp r0, #0x13
	ble _0206023C
_02060228:
	ldrb r7, [r5, r0]
	rsb r6, r6, #8
	orr r7, r7, r7, lsl #8
	mov r6, r7, asr r6
	strb r6, [r5, r0]
_0206023C:
	add r0, r0, #1
	cmp r0, r4
	blo _02060200
_02060248:
	cmp r4, #0
	ldr r7, [sp, #4]
	mov r6, #0
	bls _02060294
_02060258:
	mla r7, r2, r7, r3
	mov r0, r7, lsr #0x10
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r6, #4
	mov r0, r0, lsl #0x10
	blt _0206027C
	cmp r6, #0x13
	ble _02060288
_0206027C:
	ldrb r1, [r5, r6]
	eor r0, r1, r0, lsr #16
	strb r0, [r5, r6]
_02060288:
	add r6, r6, #1
	cmp r6, r4
	blo _02060258
_02060294:
	ldr r9, [sp]
	mov r8, #0
	add r0, sp, #0xc
_020602A0:
	mla r9, r2, r9, r3
	mov r1, r8, lsl #1
	mov r6, r9, lsr #0x10
	add r8, r8, #1
	strh r6, [r0, r1]
	cmp r8, #0x100
	ldr r7, _020603BC ; =0x00269EC3
	blt _020602A0
	subs r9, r4, #1
	ldr r6, _020603B8 ; =0x5D588B65
	bmi _0206032C
	add r8, sp, #0xc
_020602D0:
	mov r1, r9, lsr #0x1f
	rsb r0, r1, r9, lsl #24
	add r0, r1, r0, ror #24
	mov r0, r0, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r4
	mul r0, r4, r0
	add r0, r9, r0, lsr #16
	bl _u32_div_f
	cmp r9, #4
	blt _02060304
	cmp r9, #0x13
	ble _02060324
_02060304:
	cmp r1, #4
	blo _02060314
	cmp r1, #0x13
	bls _02060324
_02060314:
	ldrb r2, [r5, r9]
	ldrb r0, [r5, r1]
	strb r0, [r5, r9]
	strb r2, [r5, r1]
_02060324:
	subs r9, r9, #1
	bpl _020602D0
_0206032C:
	mov r0, r4, lsl #0x10
	mov r3, r0, lsr #0x14
	mov r0, r3, lsl #0x10
	ldr r8, _020603C0 ; =0xB5BDCF5A
	movs r1, r0, lsr #0x10
	movne r0, r8, lsr #0x10
	mulne r0, r1, r0
	movne r0, r0, lsr #0x10
	add r2, r5, r4
	mov r1, r3, lsl #0x10
	moveq r4, r8, lsr #0x10
	movne r0, r0, lsl #0x10
	movne r4, r0, lsr #0x10
	add r0, r5, #0x20
	add r0, r0, r4
	mov r4, r1, lsr #0x10
	add r3, sp, #0
	mov r1, #0
_02060374:
	mla r8, r6, r8, r7
	mov r5, r8, lsr #0x10
	cmp r4, #0
	mulne r9, r5, r4
	movne r5, r9, lsr #0x10
	mov r5, r5, lsl #0x10
	mov r5, r5, lsr #0x10
	add r5, r5, #2
	ldrb r9, [r0, r5]!
	ldrb r5, [r3], #1
	add r1, r1, #1
	strb r9, [r2], #1
	strb r5, [r0]
	cmp r1, #0xc
	blo _02060374
	add sp, sp, #0x20c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020603B8: .word 0x5D588B65
_020603BC: .word 0x00269EC3
_020603C0: .word 0xB5BDCF5A
	arm_func_end FUN_0205ffb0

	arm_func_start FUN_020603c4
FUN_020603c4: ; 0x020603C4
	mov r12, #0
	mov r2, #1
_020603CC:
	mov r3, r2, lsl r12
	cmp r1, r3, lsl #3
	bgt _020603FC
	cmp r12, #2
	movgt r12, #2
	mov r1, #1
	mov r1, r1, lsl r12
	sub r2, r1, #1
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	bx lr
_020603FC:
	add r12, r12, #1
	cmp r12, #0x10
	blt _020603CC
	bx lr
	arm_func_end FUN_020603c4

	arm_func_start FUN_0206040c
FUN_0206040c: ; 0x0206040C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	ldrsb r1, [r8]
	mov r9, r0
	cmp r1, #0x2a
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r7, [r9, #0x18]
	ldr r4, [r9, #0x14]
	cmp r7, #0
	mov r5, #0
	ble _02060494
_0206043C:
	ldrb r0, [r4, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060484
	ldrh r0, [r4]
	ldr r1, [r9, #0x1c]
	ldr r2, [r9, #0x20]
	mov r0, r0, lsl #0x13
	mov r6, r0, lsr #0x13
	mov r0, r6, lsl #1
	ldrh r0, [r1, r0]
	mov r1, r8
	add r0, r2, r0
	bl strcmp
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02060484:
	add r5, r5, #1
	cmp r5, r7
	add r4, r4, #8
	blt _0206043C
_02060494:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0206040c

	arm_func_start FUN_0206049c
FUN_0206049c: ; 0x0206049C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x170
	mov r10, r0
	mov r0, r2
	cmp r0, #3
	ldr r0, [sp, #0x198]
	str r2, [sp, #8]
	str r0, [sp, #0x198]
	ldr r0, [sp, #0x19c]
	mov r9, r1
	str r3, [sp, #0xc]
	str r0, [sp, #0x19c]
	bne _020604E4
	cmp r0, #0
	ldrne r0, [r0]
	addne r2, r0, #8
	strne r2, [sp, #0x14]
	bne _02060558
_020604E4:
	ldr r2, [r9, #0x14]
	mov r3, #0
	str r2, [sp, #0x14]
	ldr r0, [r9, #0x18]
	mov r4, r3
	cmp r0, #0
	ble _02060540
_02060500:
	ldrb r0, [r2, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	ldreqh r0, [r2]
	moveq r1, r0, lsl #0x13
	ldreq r0, [sp, #8]
	cmpeq r0, r1, lsr #19
	moveq r3, #1
	beq _02060540
	add r2, r2, #8
	str r2, [sp, #0x14]
	ldr r0, [r9, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _02060500
_02060540:
	cmp r3, #0
	addeq sp, sp, #0x170
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r2, #8
	str r2, [sp, #0x14]
_02060558:
	add r0, r9, #0x3c
	bl strlen
	mov r2, r0
	mov r0, r10
	add r1, r9, #0x3c
	bl strncmp
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x10]
	movne r0, #0
	strne r0, [sp, #0x10]
_02060584:
	ldr r8, [sp, #0x14]
	ldrh r3, [r8]
	mov r0, r3, lsl #0x13
	movs r4, r0, lsr #0x13
	ldrneb r0, [r8, #6]
	movne r0, r0, lsl #0x19
	movne r0, r0, lsr #0x19
	cmpne r0, #0x7f
	beq _02060884
	ldrh r2, [r8, #2]
	ldr r1, [r9, #0x1c]
	cmp r4, #2
	mov r2, r2, lsl #1
	ldr r5, [r9, #0x20]
	ldrh r4, [r1, r2]
	bne _020606C0
	mov r1, r3, lsl #0x11
	movs r1, r1, lsr #0x1f
	beq _02060638
	ldr r1, [sp, #0xc]
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _020605E8
	cmp r3, r0
	beq _02060604
_020605E8:
	ldr r1, [sp, #0xc]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0, #7]
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x10]
	b _02060638
_02060604:
	ldrb r2, [r8, #7]
	ldr r1, [r1, #0x10]
	add r2, r1, r2
	ldr r1, [sp, #0xc]
	cmp r2, r3
	str r2, [r1, #0x10]
	subgt r1, r2, r0
	ldrgt r0, [sp, #0xc]
	strgt r1, [r0, #0x10]
	bgt _02060638
	ldreq r0, [sp, #0xc]
	moveq r1, #0
	streq r1, [r0, #0xc]
_02060638:
	ldr r7, [sp, #0x14]
	ldrh r0, [r7]
	ldrh r6, [r7, #4]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	bne _02060874
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _020606AC
	add r0, r9, #0x3c
	bl strlen
	ldrsb r1, [r10, r0]
	add r0, r10, r0
	cmp r1, #0x2e
	bne _020606AC
	add r0, r0, #1
	add r1, r5, r4
	bl strcmp
	cmp r0, #0
	bne _020606AC
	ldr r1, _020608C8 ; =0x020B5BFC
	add sp, sp, #0x170
	str r7, [r1, #8]
	ldr r2, [r9, #0x2c]
	mov r0, #1
	str r2, [r1, #4]
	ldr r2, [r9, #0x38]
	str r2, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020606AC:
	ldrb r0, [r7, #7]
	ldr r1, [r9, #0x38]
	mla r1, r0, r6, r1
_020606B8:
	str r1, [r9, #0x38]
	b _02060874
_020606C0:
	add r2, sp, #0x58
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	ldrh r2, [r8, #2]
	ldr r4, [r9, #0x14]
	add r0, sp, #0x18
	mov r2, r2, lsl #1
	ldrh r3, [r1, r2]
	sub r2, r8, r4
	mov r1, r2, asr #2
	add r2, r2, r1, lsr #29
	add r1, r5, r3
	mov r7, r2, asr #3
	bl strcpy
	ldr r0, [sp, #0x14]
	ldr r5, [r9, #0x1c]
	ldrh r2, [r0, #2]
	add r4, sp, #0x70
	ldr r6, [r9, #0x20]
	mov r3, r2, lsl #1
	ldrh r3, [r5, r3]
	ldr r1, _020608CC ; =0x02090F54
	mov r0, r4
	add r2, r9, #0x3c
	add r3, r6, r3
	bl sprintf
	ldr r0, _020608D0 ; =0x020B5DD8
	ldr r5, [r0, r7, lsl #2]
	cmp r5, #0
	beq _02060780
	mov r0, r4
	bl strlen
	mov r1, r4
	mov r2, r0
	mov r0, r10
	bl strncmp
	cmp r0, #0
	beq _02060780
	ldr r0, [sp, #0x14]
	ldr r1, [r9, #0x38]
	ldrh r0, [r0, #4]
	mla r1, r0, r5, r1
	b _020606B8
_02060780:
	add r1, r9, #0x3c
	add r0, sp, #0xf0
	bl strcpy
	ldr r0, [sp, #0x14]
	mov r5, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _02060868
	ldr r0, [sp, #0x198]
	mov r6, r7, lsl #3
	add r11, r0, #1
_020607AC:
	str r8, [sp, #0x14]
	ldrh r0, [r8, #4]
	add r2, sp, #0xf0
	add r3, sp, #0x18
	cmp r0, #1
	bls _020607D4
	str r5, [sp]
	add r0, r9, #0x3c
	ldr r1, _020608D4 ; =0x02090F5C
	b _020607DC
_020607D4:
	ldr r1, _020608D8 ; =0x02090F68
	add r0, r9, #0x3c
_020607DC:
	bl sprintf
	ldr r4, [r9, #0x38]
	add r1, sp, #0x14
	str r11, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	mov r0, r10
	ldrh r2, [r2]
	mov r1, r9
	add r3, sp, #0x58
	mov r2, r2, lsl #0x13
	mov r2, r2, lsr #0x13
	bl FUN_0206049c
	cmp r0, #0
	addne sp, sp, #0x170
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020608D0 ; =0x020B5DD8
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _02060854
	ldr r0, [r9, #0x14]
	ldrh r0, [r0, r6]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x13
	cmp r0, #3
	ldrne r0, [r9, #0x38]
	subne r1, r0, r4
	ldrne r0, _020608D0 ; =0x020B5DD8
	strne r1, [r0, r7, lsl #2]
_02060854:
	add r5, r5, #1
	ldr r0, [sp, #0x14]
	ldrh r0, [r0, #4]
	cmp r5, r0
	blt _020607AC
_02060868:
	add r1, sp, #0xf0
	add r0, r9, #0x3c
	bl strcpy
_02060874:
	ldr r0, [sp, #0x14]
	add r2, r0, #8
	str r2, [sp, #0x14]
	b _02060584
_02060884:
	ldr r0, [sp, #8]
	mov r2, #0
	cmp r0, #3
	bne _020608A0
	ldr r0, [sp, #0x19c]
	cmp r0, #0
	strne r8, [r0]
_020608A0:
	ldr r0, [sp, #0x198]
	cmp r0, #0
	ldreq r0, _020608C8 ; =0x020B5BFC
	streq r2, [r0, #8]
	ldreq r1, [r0, #0x14]
	streq r1, [r0, #4]
	streq r2, [r0]
	mov r0, #0
	add sp, sp, #0x170
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020608C8: .word unk_020B5BFC
_020608CC: .word unk_02090F54
_020608D0: .word unk_020B5DD8
_020608D4: .word unk_02090F5C
_020608D8: .word unk_02090F68
	arm_func_end FUN_0206049c

	arm_func_start FUN_020608dc
FUN_020608dc: ; 0x020608DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _02060950 ; =0x020B5D1C
	mov r5, #0
	add r4, sp, #8
	mov r8, r0
	ldr r7, [r6, #0x38]
	ldr r1, _02060954 ; =0x020B5C20
	mov r0, r6
	str r5, [r6, #0x30]
	str r5, [r6, #0x34]
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	strb r5, [r6, #0x3c]
	bl FUN_0206040c
	mov r2, r0
	str r5, [sp]
	mov r0, r8
	mov r1, r6
	mov r3, r4
	str r5, [sp, #4]
	bl FUN_0206049c
	str r7, [r6, #0x38]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02060950: .word unk_020B5D1C
_02060954: .word unk_020B5C20
	arm_func_end FUN_020608dc

	arm_func_start FUN_02060958
FUN_02060958: ; 0x02060958
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [r0, #8]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_02060958

	arm_func_start FUN_02060974
FUN_02060974: ; 0x02060974
	stmfd sp!, {r3, lr}
	mov r3, #1
	mov r3, r3, lsl r2
	sub r12, r3, #1
	ldr r3, [r0, #0x34]
	ldr lr, [r0, #0x30]
	add r2, r3, r2
	and r1, r1, r12
	orr r1, lr, r1, lsl r3
	str r1, [r0, #0x30]
	str r2, [r0, #0x34]
	cmp r2, #8
	ldmlofd sp!, {r3, pc}
_020609A8:
	ldr r1, [r0, #8]
	add r2, r1, #1
	mov r3, r1
	ldr r1, [r0, #0x30]
	str r2, [r0, #8]
	strb r1, [r3]
	ldr r2, [r0, #0x30]
	ldr r1, [r0, #0x34]
	mov r2, r2, lsr #8
	sub r1, r1, #8
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	cmp r1, #8
	bhs _020609A8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02060974

	arm_func_start FUN_020609e4
FUN_020609e4: ; 0x020609E4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x34]
	cmp r2, r1
	bhs _02060A2C
_020609F4:
	ldr r2, [r0, #8]
	ldr lr, [r0, #0x30]
	mov r3, r2
	add r2, r2, #1
	str r2, [r0, #8]
	ldrb r12, [r3]
	ldr r3, [r0, #0x34]
	mov r2, r3
	add r2, r2, #8
	orr r3, lr, r12, lsl r3
	str r3, [r0, #0x30]
	str r2, [r0, #0x34]
	cmp r2, r1
	blo _020609F4
_02060A2C:
	mov r2, #1
	mov r3, r2, lsl r1
	ldr lr, [r0, #0x30]
	ldr r2, [r0, #0x34]
	sub r12, r3, #1
	mov r3, lr, lsr r1
	sub r1, r2, r1
	and r2, lr, r12
	str r3, [r0, #0x30]
	str r1, [r0, #0x34]
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020609e4

	arm_func_start FUN_02060a5c
FUN_02060a5c: ; 0x02060A5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r2
	cmp r1, #3
	mov r4, #0
	bne _02060A80
	cmp r9, #0
	addne r9, r9, #8
	bne _02060B04
_02060A80:
	ldr r8, [r10, #0x18]
	ldr r6, [r10, #0x1c]
	mov r0, r1, lsl #1
	cmp r8, #0
	ldr r7, [r10, #0x20]
	ldrh r11, [r6, r0]
	ldr r9, [r10, #0x14]
	mov r5, #0
	ble _02060B00
_02060AA4:
	ldrh r0, [r9]
	mov r0, r0, lsl #0x13
	movs r1, r0, lsr #0x13
	ldreqh r0, [r9, #2]
	cmpeq r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060AF0
	mov r0, r1, lsl #1
	ldrh r0, [r6, r0]
	add r1, r7, r11
	add r0, r7, r0
	bl strcmp
	cmp r0, #0
	beq _02060B00
_02060AF0:
	add r5, r5, #1
	cmp r5, r8
	add r9, r9, #8
	blt _02060AA4
_02060B00:
	add r9, r9, #8
_02060B04:
	mov r5, #1
_02060B08:
	ldrh r0, [r9]
	mov r0, r0, lsl #0x13
	movs r1, r0, lsr #0x13
	beq _02060B2C
	ldrb r0, [r9, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060B38
_02060B2C:
	subs r5, r5, #1
	beq _02060B68
	b _02060B60
_02060B38:
	cmp r1, #3
	addeq r5, r5, #1
	cmp r1, #2
	moveq r0, r0, lsr #3
	beq _02060B58
	mov r0, r10
	mov r2, r9
	bl FUN_02060a5c
_02060B58:
	cmp r0, r4
	movgt r4, r0
_02060B60:
	add r9, r9, #8
	b _02060B08
_02060B68:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02060a5c

	arm_func_start FUN_02060b70
FUN_02060b70: ; 0x02060B70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	mov r10, r0
	movs r0, r3
	ldr r0, [sp, #0x238]
	str r3, [sp, #0xc]
	str r0, [sp, #0x238]
	ldreq r0, [r10]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmpeq r0, #3
	bne _02060BA8
	ldr r0, _02061514 ; =0x020B5C20
	bl strcpy
_02060BA8:
	ldr r0, [sp, #4]
	ldrsb r1, [r0]
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	cmp r1, #0x2a
	str r0, [sp, #0x30]
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	str r0, [sp, #0x28]
	bne _02060BE8
	ldr r0, [sp, #0x238]
	cmp r0, #0
	ldrne r0, [r0]
	addne r2, r0, #8
	strne r2, [sp, #0x34]
	bne _02060C80
_02060BE8:
	ldr r1, [r10, #0x14]
	mov r4, #0
	str r1, [sp, #0x34]
	ldr r0, [r10, #0x18]
	cmp r0, #0
	ble _02060C74
_02060C00:
	ldrh r0, [r1]
	mov r0, r0, lsl #0x13
	movs r2, r0, lsr #0x13
	bne _02060C20
	ldrh r0, [r1, #2]
	cmp r0, #0
	addeq sp, sp, #0x210
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02060C20:
	ldrb r0, [r1, #6]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0x7f
	bne _02060C58
	ldr r1, [r10, #0x1c]
	mov r0, r2, lsl #1
	ldrh r0, [r1, r0]
	ldr r2, [r10, #0x20]
	ldr r1, [sp, #4]
	add r0, r2, r0
	bl strcmp
	cmp r0, #0
	beq _02060C74
_02060C58:
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r1, r0, #8
	str r1, [sp, #0x34]
	ldr r0, [r10, #0x18]
	cmp r4, r0
	blt _02060C00
_02060C74:
	ldr r0, [sp, #0x34]
	add r2, r0, #8
_02060C7C:
	str r2, [sp, #0x34]
_02060C80:
	ldrh r0, [r2]
	mov r0, r0, lsl #0x13
	movs r1, r0, lsr #0x13
	ldrneh r3, [r2, #2]
	cmpne r3, #0
	ldrneb r0, [r2, #6]
	movne r0, r0, lsl #0x19
	movne r9, r0, lsr #0x19
	cmpne r9, #0x7f
	beq _020614C8
	mov r0, r3, lsl #1
	cmp r1, #2
	ldr r8, [r10, #0x20]
	ldr r3, [r10, #0x1c]
	ldrh r4, [r3, r0]
	bne _020612D8
	ldrb r0, [r2, #7]
	str r0, [sp, #0x10]
	mov r0, r9, lsr #3
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	mov r1, r1, lsl #3
	bl FUN_020603c4
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x30]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _02060DAC
	ldrb r1, [r1, #6]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsl #0x19
	mov r1, r1, lsr #0x19
	cmp r0, #0
	beq _02060D1C
	cmp r0, r1
	beq _02060D60
_02060D1C:
	ldr r0, [sp, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x10]
	ldr r1, [r10, #0x28]
	ldr r0, [sp, #0x30]
	add r9, r1, r0
	ldrb r1, [r1, r0]
	ldrb r0, [r9, #1]
	ldrb r2, [r9, #2]
	ldrb r3, [r9, #3]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	orr r1, r0, r3, lsl #24
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	b _02060DA0
_02060D60:
	ldr r2, [sp, #8]
	ldr r3, [r2, #0x10]
	ldr r2, [sp, #0x10]
	add r3, r3, r2
	ldr r2, [sp, #8]
	cmp r3, r0
	str r3, [r2, #0x10]
	subgt r1, r3, r1
	movgt r0, r2
	strgt r1, [r0, #0x10]
	bgt _02060DA0
	moveq r1, #0
	moveq r0, r2
	streq r1, [r0, #0xc]
	mov r0, #0
	str r0, [sp, #0x2c]
_02060DA0:
	ldr r0, [sp, #8]
	add r0, r0, #0x14
	b _02060DB8
_02060DAC:
	ldr r1, [r10, #0x28]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
_02060DB8:
	str r0, [sp, #0x20]
	ldr r2, [sp, #0x34]
	ldr r1, [r10]
	ldrh r0, [r2, #4]
	cmp r1, #3
	str r0, [sp, #0x24]
	ldrh r0, [r2]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1f
	str r0, [sp, #0x1c]
	cmpeq r0, #0
	bne _02060E2C
	add r3, r8, r4
	add r4, sp, #0x90
	ldr r1, _02061518 ; =0x02090F70
	mov r0, r4
	add r2, r10, #0x3c
	bl sprintf
	mov r0, r4
	bl FUN_020608dc
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r3, [r0]
	ldr r0, [r0, #4]
	and r1, r3, #7
	add r2, r0, r3, lsr #3
	ldrb r0, [r0, r3, lsr #3]
	add r7, r2, #1
	rsb r6, r1, #8
	mov r5, r0, asr r1
_02060E2C:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	ble _020612A8
_02060E40:
	ldr r0, _02061520 ; =0x020B5C18
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldrb r8, [r3, #7]
	mla r9, r2, r1, r0
	ldr r0, [r10]
	cmp r0, #1
	ldrb r0, [r3, #6]
	mov r0, r0, lsl #0x18
	mov r4, r0, lsr #0x1f
	bne _02060F70
	cmp r8, #0
	cmpne r4, #0
	moveq r1, #0
	beq _02060EC8
	sub r2, r8, #1
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	and r0, r2, #7
	ldrb r2, [r9, r1, asr #3]
	mov r1, #1
	and r0, r2, r1, lsl r0
	and r1, r0, #0xff
_02060EC8:
	ldrb r0, [r3, #6]
	mov r2, #0
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x19
	cmp r0, #0
	ble _02060F70
_02060EE0:
	ldrh r0, [r3]
	mov r0, r0, lsl #0x12
	movs r0, r0, lsr #0x1f
	movne r0, #0xff
	bne _02060F20
	ldrb r0, [r3, #7]
	cmp r2, r0
	bgt _02060F1C
	sub r3, r0, r2
	cmp r3, #8
	movge r0, #0
	movlt r0, #0xff
	movlt r0, r0, lsl r3
	andlt r0, r0, #0xff
	b _02060F20
_02060F1C:
	mov r0, #0xff
_02060F20:
	cmp r1, #0
	movne r3, r2, asr #2
	addne r3, r2, r3, lsr #29
	ldrneb r11, [r9, r3, asr #3]
	orrne r0, r11, r0
	strneb r0, [r9, r3, asr #3]
	bne _02060F58
	mvn r0, r0
	and r3, r0, #0xff
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	ldrb r11, [r9, r0, asr #3]
	and r3, r11, r3
	strb r3, [r9, r0, asr #3]
_02060F58:
	add r2, r2, #8
	ldr r3, [sp, #0x34]
	ldrb r0, [r3, #6]
	mov r0, r0, lsl #0x19
	cmp r2, r0, lsr #25
	blt _02060EE0
_02060F70:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _020611B8
	ldr r0, [r10]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020611B8
_02060F8C: ; jump table
	b _02060F9C ; case 0
	b _020611B8 ; case 1
	b _02060FCC ; case 2
	b _020610B0 ; case 3
_02060F9C:
	cmp r8, #0
	ble _020611B8
_02060FA4:
	ldrb r1, [r9], #1
	mov r2, #8
	cmp r8, #8
	movle r2, r8
	mov r0, r10
	bl FUN_02060974
	sub r8, r8, #8
	cmp r8, #0
	bgt _02060FA4
	b _020611B8
_02060FCC:
	ldrh r0, [r3]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _0206100C
	cmp r8, #0
	ble _020611B8
_02060FE4:
	mov r1, #8
	cmp r8, #8
	movle r1, r8
	mov r0, r10
	bl FUN_020609e4
	sub r8, r8, #8
	strb r0, [r9], #1
	cmp r8, #0
	bgt _02060FE4
	b _020611B8
_0206100C:
	ldr r0, [sp, #0x2c]
	cmp r8, #0
	moveq r4, #0
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	ble _020611B8
_02061028:
	mov r11, #8
	cmp r8, #8
	movle r11, r8
	cmp r8, #0
	ble _02061084
	mov r0, r10
	mov r1, r11
	bl FUN_020609e4
	and r0, r0, #0xff
	cmp r4, #0
	beq _0206107C
	cmp r8, #8
	bgt _0206107C
	sub r2, r11, #1
	mov r1, #1
	tst r0, r1, lsl r2
	movne r1, #0xff
	movne r1, r1, lsl r11
	andne r1, r1, #0xff
	orrne r0, r0, r1
	moveq r4, #0
_0206107C:
	sub r8, r8, #8
	b _02061090
_02061084:
	mov r0, #0xff
	cmp r4, #0
	moveq r0, #0
_02061090:
	strb r0, [r9], #1
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02061028
	b _020611B8
_020610B0:
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r8, _02061520 ; =0x020B5C18
	ldr r0, [r0, #8]
	mov r12, #0
	cmp r0, #0
	ldreq r0, _0206151C ; =0x020B5BFC
	streq r3, [r0, #8]
	moveq r0, r3
	ldrb r11, [r0, #7]
	ldr r0, [sp, #0x2c]
	cmp r11, #0
	moveq r4, #0
	cmp r0, #0
	ble _0206118C
_020610E8:
	cmp r11, #0
	ble _0206116C
	mov r3, #8
	cmp r11, #8
	movle r3, r11
	cmp r6, r3
	bhs _02061118
_02061104:
	ldrb r0, [r7], #1
	orr r5, r5, r0, lsl r6
	add r6, r6, #8
	cmp r6, r3
	blo _02061104
_02061118:
	mov r0, #1
	mov r0, r0, lsl r3
	sub r0, r0, #1
	and r0, r5, r0
	cmp r4, #0
	and r2, r0, #0xff
	beq _0206115C
	cmp r11, #8
	bgt _0206115C
	sub r1, r3, #1
	mov r0, #1
	tst r2, r0, lsl r1
	movne r0, #0xff
	movne r0, r0, lsl r3
	andne r0, r0, #0xff
	orrne r2, r2, r0
	moveq r4, #0
_0206115C:
	mov r5, r5, lsr r3
	sub r6, r6, r3
	sub r11, r11, #8
	b _02061178
_0206116C:
	mov r2, #0xff
	cmp r4, #0
	moveq r2, #0
_02061178:
	ldr r0, [sp, #0x2c]
	add r12, r12, #1
	strb r2, [r8], #1
	cmp r12, r0
	blt _020610E8
_0206118C:
	ldr r0, [sp, #0x2c]
	mov r2, #0
	cmp r0, #0
	ble _020611B8
_0206119C:
	ldr r0, _02061520 ; =0x020B5C18
	ldrb r1, [r0, r2]
	ldr r0, [sp, #0x2c]
	add r2, r2, #1
	cmp r2, r0
	strb r1, [r9], #1
	blt _0206119C
_020611B8:
	ldr r0, [r10]
	cmp r0, #3
	bne _02061260
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x2c]
	add r1, r1, r0
	ldr r0, _0206151C ; =0x020B5BFC
	add r2, r1, r1, lsl #5
	str r1, [r0, #0xc]
	ldr r0, _02061524 ; =0x82529317
	umull r1, r0, r2, r0
	sub r1, r2, r0
	add r0, r0, r1, lsr #1
	ldr r1, _0206151C ; =0x020B5BFC
	mov r0, r0, lsr #0xf
	ldr r1, [r1, #0x10]
	cmp r1, r0
	bge _02061238
	ldr r1, _0206151C ; =0x020B5BFC
	cmp r0, #0
	str r0, [r1, #0x10]
	mov r3, #0
	ble _02061238
_02061218:
	mov r1, r3, lsl #1
	add r1, r1, #0x6000000
	add r2, r1, #0x500
	mov r1, #1
	add r3, r3, #1
	strh r1, [r2, #0xc0]
	cmp r3, r0
	blt _02061218
_02061238:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02061260
	ldr r0, _0206151C ; =0x020B5BFC
	ldr r1, [r0]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #7]
	add r1, r1, r0
	ldr r0, _0206151C ; =0x020B5BFC
	str r1, [r0]
_02061260:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldreq r1, [sp, #0x28]
	ldreq r0, [sp, #0x10]
	addeq r0, r1, r0
	streq r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldreq r1, [r10, #0x38]
	ldreq r0, [sp, #0x10]
	addeq r0, r1, r0
	streq r0, [r10, #0x38]
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _02060E40
_020612A8:
	ldr r0, [sp, #0x34]
	ldrh r0, [r0]
	mov r0, r0, lsl #0x11
	movs r0, r0, lsr #0x1f
	beq _020614A8
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x10]
	mov r1, r1, lsr r0
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	b _020614A8
_020612D8:
	mov r0, r10
	bl FUN_02060a5c
	mov r8, r0, lsl #3
	ldr r0, [sp, #0x30]
	mov r1, r8
	bl FUN_020603c4
	str r0, [sp, #0x30]
	add r1, sp, #0x78
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x34]
	str r0, [sp, #0x80]
	ldrh r2, [r4, #2]
	add r11, sp, #0x38
	ldr r3, [r10, #0x1c]
	mov r2, r2, lsl #1
	ldrh r2, [r3, r2]
	ldr r1, [r10, #0x20]
	mov r0, r11
	add r1, r1, r2
	bl strcpy
	ldr r0, [sp, #0x34]
	add r9, sp, #0x190
	ldrh r0, [r0, #4]
	add r1, r10, #0x3c
	str r0, [sp, #0x24]
	mov r0, r9
	bl strcpy
	ldr r0, [sp, #0x24]
	mov r2, r9
	cmp r0, #1
	mov r3, r11
	add r0, r10, #0x3c
	ble _02061380
	ldr r1, _02061528 ; =0x02090F78
	b _02061384
_02061380:
	ldr r1, _0206152C ; =0x02090F84
_02061384:
	bl sprintf
	add r1, sp, #0x34
	str r1, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0xc]
	ldrh r1, [r1]
	ldr r9, [r10, #0x1c]
	ldr r11, [r10, #0x20]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x12
	ldrh r1, [r9, r1]
	mov r0, r10
	add r2, sp, #0x78
	add r3, r3, #1
	add r1, r11, r1
	bl FUN_02060b70
	mov r1, r8
	ldr r8, [sp, #0x7c]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x78]
	mla r2, r8, r3, r2
	str r2, [sp, #0x28]
	bl FUN_020603c4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	cmp r0, #1
	ble _0206149C
	mov r8, #0
	ldr r0, [sp, #0x34]
	ldrh r0, [r0, #4]
	sub r0, r0, #1
	cmp r0, #0
	ble _02061494
_0206140C:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x30]
	str r0, [sp, #0x80]
	add r0, r8, #1
	str r0, [sp]
	ldr r1, _02061530 ; =0x02090F8C
	add r0, r10, #0x3c
	add r2, sp, #0x190
	add r3, sp, #0x38
	bl sprintf
	add r0, sp, #0x34
	str r0, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0xc]
	ldrh r1, [r1]
	ldr r9, [r10, #0x1c]
	ldr r11, [r10, #0x20]
	mov r1, r1, lsl #0x13
	mov r1, r1, lsr #0x12
	ldrh r1, [r9, r1]
	mov r0, r10
	add r2, sp, #0x78
	add r3, r3, #1
	add r1, r11, r1
	bl FUN_02060b70
	ldr r0, [sp, #0x34]
	add r8, r8, #1
	ldrh r0, [r0, #4]
	sub r0, r0, #1
	cmp r8, r0
	blt _0206140C
_02061494:
	mov r0, #1
	str r0, [sp, #0x24]
_0206149C:
	add r1, sp, #0x190
	add r0, r10, #0x3c
	bl strcpy
_020614A8:
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	mla r0, r2, r1, r0
	str r0, [sp, #0x30]
	add r2, r3, #8
	b _02060C7C
_020614C8:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [r0, #8]
	str r1, [r0, #4]
	ldr r0, [sp, #0x30]
	sub r1, r0, r2
	ldr r0, [sp, #8]
	str r1, [r0]
	ldr r0, [sp, #4]
	ldrsb r0, [r0]
	cmp r0, #0x2a
	addne sp, sp, #0x210
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x238]
	cmp r0, #0
	ldrne r1, [sp, #0x34]
	strne r1, [r0]
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02061514: .word unk_020B5C20
_02061518: .word unk_02090F70
_0206151C: .word unk_020B5BFC
_02061520: .word unk_020B5C18
_02061524: .word 0x82529317
_02061528: .word unk_02090F78
_0206152C: .word unk_02090F84
_02061530: .word unk_02090F8C
	arm_func_end FUN_02060b70

	arm_func_start FUN_02061534
FUN_02061534: ; 0x02061534
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x90
	mov r4, r0
	ldr r0, [r4, #0xc]
	mov r2, r1
	cmp r0, #0
	addne sp, sp, #0x90
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	cmn r2, #1
	bne _02061590
	ldr r3, _0206161C ; =0x02090F98
	add r5, sp, #0x10
	mov r2, #0xc
_0206156C:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _0206156C
	ldrb r0, [r3]
	strb r0, [r5]
	b _0206159C
_02061590:
	ldr r1, _02061620 ; =0x02090FB4
	add r0, sp, #0x10
	bl sprintf
_0206159C:
	mov r5, #1
	ldr r0, _02061624 ; =gL5Allocator
	mov r1, r5
	bl _ZN11L5Allocator12setNextArenaEi
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, _02061628 ; =gFileIO
	add r1, sp, #0x10
	str r5, [sp, #0xc]
	add r2, r4, #0xc
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020615E0
	bl OS_Terminate
_020615E0:
	ldr r2, [r4, #0xc]
	mov r0, #1
	str r2, [r4, #0x10]
	ldrh r1, [r2, #8]
	add r3, r2, #0x10
	str r1, [r4, #0x18]
	ldrh r12, [r2, #0xa]
	add r2, r3, r1, lsl #3
	add r1, r2, r12, lsl #1
	str r12, [r4, #0x24]
	str r3, [r4, #0x14]
	str r2, [r4, #0x1c]
	str r1, [r4, #0x20]
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, pc}
_0206161C: .word unk_02090F98
_02061620: .word unk_02090FB4
_02061624: .word gL5Allocator
_02061628: .word gFileIO
	arm_func_end FUN_02061534

	arm_func_start FUN_0206162c
FUN_0206162c: ; 0x0206162C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	ldr r5, _020616A0 ; =0x020B5C60
	mov r4, r0
	mov r6, r1
	mov r0, r5
	mvn r1, #0
	bl FUN_02061534
	mov r0, #1
	str r0, [r5]
	str r4, [r5, #0x28]
	mov r4, #0
	mov r0, r5
	str r4, [r5, #0x2c]
	bl FUN_02060958
	add r2, sp, #4
	mov r0, r5
	mov r1, r6
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	mov r3, r4
	str r4, [sp]
	bl FUN_02060b70
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020616A0: .word unk_020B5C60
	arm_func_end FUN_0206162c

	arm_func_start FUN_020616a4
FUN_020616a4: ; 0x020616A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r5, [sp, #0x38]
	mov r7, r1
	cmp r5, #0
	ldreq r5, _02061748 ; =0x020B5C60
	mov r8, r0
	mov r0, r5
	mov r1, r3
	mov r6, r2
	bl FUN_02061534
	mov r4, #0
	str r4, [r5]
	str r8, [r5, #0x28]
	mov r0, r5
	str r7, [r5, #0x2c]
	bl FUN_02060958
	add r2, sp, #4
	mov r0, r5
	mov r1, r6
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	mov r3, r4
	str r4, [sp]
	bl FUN_02060b70
	mov r0, r5
	mov r1, r4
	mov r2, #7
	bl FUN_02060974
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, _0206174C ; =0x020B5BFC
	add r0, r0, #7
	mov r0, r0, lsr #3
	str r2, [r1, #0x18]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02061748: .word unk_020B5C60
_0206174C: .word unk_020B5BFC
	arm_func_end FUN_020616a4

	arm_func_start FUN_02061750
FUN_02061750: ; 0x02061750
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	ldr r4, _020617D4 ; =0x020B5C60
	mov r7, r0
	mov r6, r1
	mov r0, r4
	mvn r1, #0
	mov r5, r2
	bl FUN_02061534
	mov r0, #2
	str r0, [r4]
	str r7, [r4, #0x2c]
	mov r0, r4
	str r6, [r4, #0x28]
	bl FUN_02060958
	mov r3, #0
	add r2, sp, #4
	strb r3, [r4, #0x3c]
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
	str r3, [r2, #0x14]
	mov r1, r5
	mov r0, r4
	str r3, [sp]
	bl FUN_02060b70
	ldr r0, [sp, #8]
	add r0, r0, #7
	mov r0, r0, lsr #3
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020617D4: .word unk_020B5C60
	arm_func_end FUN_02061750

	arm_func_start FUN_020617d8
FUN_020617d8: ; 0x020617D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_ov16_020f2dac
	mov r5, #0
	mov r1, r5
	add r0, r10, #0x4c
	str r5, [r10, #0x44]
	str r5, [r10, #0x128]
	str r5, [r10, #0x12c]
	bl _ZN16L5CardController4initE14CARDBackupType
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r5, #0x7e
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x4c
	bl _ZN16L5CardController4testEv
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r5, #0x7d
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02061B20 ; =0x00005258
	mov r1, r5
	mov r0, r4
	bl L5FS_Allocate
	ldr r1, _02061B24 ; =0x020A1640
	cmp r0, #0
	str r0, [r1, #0x230]
	beq _02061858
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
_02061858:
	bl CARD_GetRomHeader
	mov r0, #0
	str r0, [sp]
	ldr r4, _02061B28 ; =0x020B5C60
	ldr r1, [sp]
	mov r0, r4
	mov r2, #0x178
	bl MI_CpuFill8
	ldr r1, [sp]
	mov r0, r4
	sub r1, r1, #1
	bl FUN_02061534
	ldr r0, [r4, #0x10]
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	str r0, [r10, #0x40]
	mov r0, #0x8000
	bl L5FS_Allocate
	mov r1, r4
	mov r4, r0
	mov r0, #0x10000
	bl L5FS_Allocate
	ldr r11, [sp]
	mov r5, r0
	mov r0, r10
	mov r1, r11
	mov r2, #0x40
	mov r6, r11
	bl MI_CpuFill8
	ldr r7, [sp]
	b _02061A9C
_020618D8:
	add r9, sp, #8
	mov r3, r4
	mov r12, r7, lsl #1
	mov r8, #0
	add r0, r10, #0x4c
	mov r1, r7, lsl #0xf
	mov r2, #0x8000
	strh r8, [r9, r12]
	bl _ZN16L5CardController4readEmmPv
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r8, #0x7c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02061B2C ; =0x02090FD0
	add r0, r4, #4
	bl STD_CompareString
	cmp r0, #0
	bne _02061A98
	mov r0, #1
	mov r1, r8
	mov r9, r8
	str r0, [sp]
	b _02061944
_02061934:
	add r0, r1, #0x80
	ldrb r0, [r4, r0]
	add r1, r1, #1
	orr r8, r8, r0
_02061944:
	cmp r1, #0x80
	blt _02061934
	cmp r8, #0
	bne _02061978
	mov r0, r9
	mov r1, r4
	mov r2, #0x80
	bl FUN_0205ffb0
	mov r0, r9
	add r1, r4, #0x100
	mov r2, #0x7f00
	bl MIi_CpuClearFast
	b _02061988
_02061978:
	ldr r2, _02061B30 ; =0x00007F80
	mov r1, r4
	mov r0, #0
	bl FUN_0205ffb0
_02061988:
	mov r9, #0
	mov r0, r9
	mov r1, r5
	mov r2, #0x10000
	bl MIi_CpuClearFast
	ldr r2, _02061B34 ; =0x02090DB4
	mov r0, r4
	ldr r2, [r2, #0x20]
	mov r1, r5
	bl FUN_02061750
	ldr r2, _02061B34 ; =0x02090DB4
	add r0, r4, r0
	ldr r2, [r2, #0x1c]
	str r0, [sp, #4]
	add r1, r5, #0x40
	bl FUN_02061750
	ldr r1, [sp, #4]
	add r0, r1, r0
	ldr r1, _02061B34 ; =0x02090DB4
	ldr r2, [r1, #0x18]
	add r1, r5, #0x1cc
	add r1, r1, #0x5800
	bl FUN_02061750
	ldr r1, [r5, #0x18]
	ldr r0, [r10, #0x40]
	cmp r1, r0
	bne _02061A28
	cmp r8, #0
	bne _02061A10
	mov r0, r10
	mov r1, r5
	mov r2, r9
	mov r3, r9
	b _02061A20
_02061A10:
	ldrb r3, [r5, #0x25]
	mov r0, r10
	mov r1, r5
	add r2, r5, #0x40
_02061A20:
	bl FUN_02061d24
	mov r9, r0
_02061A28:
	cmp r9, #0
	beq _02061A94
	ldr r2, [r5, #0x14]
	cmp r8, #0
	add r0, sp, #8
	addne r11, r11, #1
	orr r3, r2, #0x8000
	mov r1, r7, lsl #1
	strh r3, [r0, r1]
	cmp r7, #0
	bne _02061A78
_02061A54:
	mov r0, r5
	mov r1, r10
	mov r2, #0x40
	bl MI_CpuCopy8
	ldr r1, _02061B38 ; =0x020A17F0
	add r0, r5, #0x40
	mov r2, #0x80
	bl MI_CpuCopy8
	b _02061A98
_02061A78:
	ldrh r0, [sp, #8]
	cmp r0, #0
	beq _02061A90
	sub r0, r0, r2
	tst r0, #0x80
	beq _02061A98
_02061A90:
	b _02061A54
_02061A94:
	add r6, r6, #1
_02061A98:
	add r7, r7, #1
_02061A9C:
	cmp r7, #2
	blt _020618D8
	mov r0, r10
	mov r1, r5
	bl FUN_02062fc8
	mov r0, r10
	mov r1, r4
	bl FUN_02062fc8
	ldr r0, [r10, #0x18]
	cmp r0, #0
	bne _02061AF8
	mov r4, #0x40
	mov r0, r10
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	sub r1, r4, #0x41
	ldr r0, _02061B3C ; =0x020A11DC
	str r1, [r10, #0x14]
	bl FUN_ov131_021423a8
	ldr r0, _02061B40 ; =0x020A0640
	ldr r0, [r0, #0xba4]
	str r0, [r10, #0x20]
_02061AF8:
	ldr r0, [sp]
	cmp r0, #0
	cmpne r6, #0
	movgt r0, #2
	strgtb r0, [r10, #0x24]
	mov r0, r10
	bl FUN_02061b44
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02061B20: .word 0x00005258
_02061B24: .word unk_020A1640
_02061B28: .word unk_020B5C60
_02061B2C: .word unk_02090FD0
_02061B30: .word 0x00007F80
_02061B34: .word unk_02090DB4
_02061B38: .word unk_020A17F0
_02061B3C: .word unk_020A11DC
_02061B40: .word unk_020A0640
	arm_func_end FUN_020617d8

	arm_func_start FUN_02061b44
FUN_02061b44: ; 0x02061B44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	ldr r6, _02061B88 ; =0x020B5C60
	mov r9, r0
	mov r5, r7
	mov r4, #0xbc
_02061B5C:
	mla r8, r7, r4, r6
	ldr r1, [r8, #0xc]
	cmp r1, #0
	beq _02061B78
	mov r0, r9
	bl FUN_02062fc8
	str r5, [r8, #0xc]
_02061B78:
	add r7, r7, #1
	cmp r7, #2
	blt _02061B5C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02061B88: .word unk_020B5C60
	arm_func_end FUN_02061b44

	arm_func_start FUN_02061b8c
FUN_02061b8c: ; 0x02061B8C
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x14]
	add r0, r0, #0x4c
	tst r12, #1
	addne r1, r1, #0x8000
	bl _ZN16L5CardController4readEmmPv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02061b8c

	arm_func_start FUN_02061ba8
FUN_02061ba8: ; 0x02061BA8
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x14]
	add r0, r0, #0x4c
	tst r12, #1
	addne r1, r1, #0x8000
	bl _ZN16L5CardController5writeEmmPv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02061ba8

	arm_func_start FUN_02061bc4
FUN_02061bc4: ; 0x02061BC4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x12c]
	cmp r1, #1
	ldreqb r1, [r0, #0x131]
	cmpeq r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r0, r0, #0x4c
	bl _ZN16L5CardController5readyEv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02061bc4

	arm_func_start FUN_02061bec
FUN_02061bec: ; 0x02061BEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	add r5, sp, #0
	mov r7, r0
	mov r0, r5
	mov r1, #0xfe
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, #0
	mov r4, #0x10
_02061C14:
	mov r1, r6, lsl #0xf
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x4c
	add r1, r1, #4
	bl _ZN16L5CardController5writeEmmPv
	add r6, r6, #1
	cmp r6, #2
	blt _02061C14
	mov r0, #0
	strb r0, [r7, #0x24]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02061bec

	arm_func_start FUN_02061c48
FUN_02061c48: ; 0x02061C48
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl _ZN16L5CardController4testEv
	cmp r0, #0
	ldrneb r0, [r4, #0x24]
	mvneq r0, #0x7c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02061c48

	arm_func_start FUN_02061c68
FUN_02061c68: ; 0x02061C68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r0
	mov r4, r2
	beq _02061CA4
	ldr r1, _02061D14 ; =0x02090FE0
	add r0, r6, #4
	bl STD_CopyString
	mov r3, #0x40
	mov r0, r5
	add r1, r6, #4
	mov r2, #0x3c
	str r3, [r6, #0x1c]
	bl FUN_02063018
	str r0, [r6]
_02061CA4:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr lr, _02061D18 ; =0x0000598C
	ldr r7, _02061D1C ; =0x19150A04
	ldr r6, _02061D20 ; =0x00004FD8
	mov r0, r5
	add r3, r4, #0x5000
	mov r12, #2
	add r1, r4, #0x80
	sub r2, lr, #0x80
	str r7, [r4, #8]
	str lr, [r4, #0xc]
	str r6, [r4, #0x50]
	str r12, [r3, #0x98c]
	bl FUN_02063018
	add r1, r4, #0x18c
	str r0, [r4, #4]
	mov r0, r5
	mov r2, r6
	add r1, r1, #0x5800
	bl FUN_02063018
	str r0, [r4, #0x4c]
	mov r0, r5
	add r1, r4, #4
	mov r2, #0x7c
	bl FUN_02063018
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02061D14: .word unk_02090FE0
_02061D18: .word 0x0000598C
_02061D1C: .word 0x19150A04
_02061D20: .word 0x00004FD8
	arm_func_end FUN_02061c68

	arm_func_start FUN_02061d24
FUN_02061d24: ; 0x02061D24
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r1
	mov r7, r0
	mov r6, r2
	mov r5, r3
	mov r4, #1
	beq _02061D7C
	ldr r1, _02061E1C ; =0x02090FF0
	add r0, r8, #4
	bl STD_CompareString
	cmp r0, #0
	ldr r0, [r8, #0x1c]
	movne r4, #0
	cmp r0, #0x40
	mov r0, r7
	add r1, r8, #4
	mov r2, #0x3c
	movne r4, #0
	bl FUN_02063018
	ldr r1, [r8]
	cmp r0, r1
	movne r4, #0
_02061D7C:
	cmp r6, #0
	beq _02061E14
	ldr r1, [r6, #8]
	ldr r0, _02061E20 ; =0x19150A04
	mov r2, #0x7c
	cmp r1, r0
	ldr r1, [r6, #0xc]
	ldr r0, _02061E24 ; =0x0000598C
	movne r4, #0
	cmp r1, r0
	ldr r1, [r6, #0x50]
	ldr r0, _02061E28 ; =0x00004FD8
	movne r4, #0
	cmp r1, r0
	mov r0, r7
	add r1, r6, #4
	movne r4, #0
	bl FUN_02063018
	ldr r1, [r6]
	ldr r2, _02061E2C ; =0x0000590C
	cmp r0, r1
	mov r0, r7
	add r1, r6, #0x80
	movne r4, #0
	bl FUN_02063018
	ldr r1, [r6, #4]
	cmp r0, r1
	movne r4, #0
	cmp r5, #0
	beq _02061E14
	add r1, r6, #0x18c
	ldr r2, _02061E28 ; =0x00004FD8
	mov r0, r7
	add r1, r1, #0x5800
	bl FUN_02063018
	ldr r1, [r6, #0x4c]
	cmp r0, r1
	movne r4, #0
_02061E14:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02061E1C: .word unk_02090FF0
_02061E20: .word 0x19150A04
_02061E24: .word 0x0000598C
_02061E28: .word 0x00004FD8
_02061E2C: .word 0x0000590C
	arm_func_end FUN_02061d24

	arm_func_start FUN_02061e30
FUN_02061e30: ; 0x02061E30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #0x25]
	mov r9, r1
	cmp r0, #0
	bne _02061E5C
	add r0, r9, #0x18c
	ldr r2, _02061FA0 ; =0x00004FD8
	add r0, r0, #0x5800
	mov r1, #0
	bl MI_CpuFill8
_02061E5C:
	ldr r1, [r10, #0x14]
	mov r6, #1
	ldr r0, [r10, #0x40]
	add r1, r1, #1
	str r0, [r10, #0x18]
	ldr r4, _02061FA4 ; =0x02090DB4
	strb r6, [r10, #0x25]
	strb r6, [r10, #0x24]
	str r1, [r10, #0x14]
	ldr r1, [r4, #0x20]
	mov r0, r10
	bl FUN_0206162c
	ldr r1, [r4, #0x1c]
	mov r0, r9
	bl FUN_0206162c
	add r0, r9, #0x18c
	ldr r1, [r4, #0x18]
	add r0, r0, #0x5800
	bl FUN_0206162c
	mov r0, r10
	mov r1, r10
	mov r2, r9
	bl FUN_02061c68
	ldr r1, _02061FA8 ; =0x00007F80
	mov r0, r10
	bl FUN_02062f94
	mov r8, r0
	sub r5, r6, #2
	ldr r2, _02061FA8 ; =0x00007F80
	mov r0, r5
	mov r1, r8
	bl MIi_CpuClearFast
	mov r7, #0
	str r7, [sp]
	ldr r2, [r4, #0x20]
	mov r0, r10
	mov r1, r8
	mov r3, r5
	bl FUN_020616a4
	mov r11, r0
	str r7, [sp]
	ldr r2, [r4, #0x1c]
	mov r0, r9
	add r1, r8, r11
	mov r3, r5
	bl FUN_020616a4
	add r0, r11, r0
	str r7, [sp]
	add r1, r8, r0
	add r0, r9, #0x18c
	ldr r2, [r4, #0x18]
	mov r3, r5
	add r0, r0, #0x5800
	bl FUN_020616a4
	ldr r2, _02061FA8 ; =0x00007F80
	mov r0, r6
	mov r1, r8
	bl FUN_0205ffb0
	ldr r2, _02061FA8 ; =0x00007F80
	mov r0, r10
	mov r1, r7
	mov r3, r8
	bl FUN_02061ba8
	cmp r0, #0
	beq _02061F74
	ldr r1, _02061FAC ; =0x020A17F0
	mov r0, r9
	mov r2, #0x80
	bl MI_CpuCopy8
	b _02061F8C
_02061F74:
	mov r4, #0x80
	ldr r0, _02061FAC ; =0x020A17F0
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	sub r7, r4, #0xfc
_02061F8C:
	mov r0, r10
	mov r1, r8
	bl FUN_02062fc8
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02061FA0: .word 0x00004FD8
_02061FA4: .word unk_02090DB4
_02061FA8: .word 0x00007F80
_02061FAC: .word unk_020A17F0
	arm_func_end FUN_02061e30

	arm_func_start FUN_02061fb0
FUN_02061fb0: ; 0x02061FB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	ldr r7, _02062080 ; =0x00007F80
	mov r8, r1
	mov r1, r7
	mov r4, r0
	bl FUN_02062f94
	mov r6, r0
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl FUN_02061b8c
	cmp r0, #0
	bne _02062008
	mov r0, r4
	mov r1, r6
	bl FUN_02062fc8
	add sp, sp, #0x40
	sub r0, r5, #0x7c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02062008:
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl FUN_0205ffb0
	ldr r2, _02062084 ; =0x0000FFC0
	mov r0, r8
	mov r1, r5
	bl MI_CpuFill8
	ldr r5, _02062088 ; =0x02090DB4
	add r1, sp, #0
	ldr r2, [r5, #0x20]
	mov r0, r6
	bl FUN_02061750
	add r7, r6, r0
	ldr r2, [r5, #0x1c]
	mov r0, r7
	mov r1, r8
	bl FUN_02061750
	add r1, r8, #0x18c
	ldr r2, [r5, #0x18]
	add r0, r7, r0
	add r1, r1, #0x5800
	bl FUN_02061750
	mov r1, r6
	mov r0, r4
	bl FUN_02062fc8
	mov r0, r4
	bl FUN_0206296c
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02062080: .word 0x00007F80
_02062084: .word 0x0000FFC0
_02062088: .word unk_02090DB4
	arm_func_end FUN_02061fb0

	arm_func_start FUN_0206208c
FUN_0206208c: ; 0x0206208C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, #0x4000
	mov r6, r0
	mov r5, #0
	mov r2, #1
	mov r1, r4
	strb r5, [r6, #0x131]
	strb r5, [r6, #0x130]
	str r2, [r6, #0x12c]
	bl FUN_02062f94
	str r0, [r6, #0x128]
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	ldr r3, [r6, #0x128]
	ldr r1, _020620F4 ; =FUN_020630d4
	mov r2, r6
	add r0, r6, #0x68
	add r3, r3, #0x4000
	bl OS_CreateThread
	add r0, r6, #0x68
	bl OS_WakeupThreadDirect
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020620F4: .word FUN_020630d4
	arm_func_end FUN_0206208c

	arm_func_start FUN_020620f8
FUN_020620f8: ; 0x020620F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r1
	cmp r0, #1
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, #0x4c
	bl _ZN16L5CardController4testEv
	cmp r0, #0
	addeq sp, sp, #0x18
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _02062688 ; =0x0000FFC0
	mov r0, r4
	mov r1, #0
	str r4, [r5, #0x44]
	bl MI_CpuFill8
	add r7, r4, #0x80
	ldr r8, _0206268C ; =0x020A0700
	mov r3, r7
	add r6, r4, #0x18c
	mov r2, #0x200
_0206215C:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0206215C
	ldr r12, _02062690 ; =0x020A0B00
	add r9, r7, #0x400
	mov r8, #0x13
_02062184:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _02062184
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x13c
	ldr r8, _02062694 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020621AC:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020621AC
	ldr r1, _02062698 ; =0x020A0640
	add r0, r7, #0x168
	ldrb r9, [r1, #0x624]
	ldrb r2, [r1, #0x625]
	add r3, r0, #0x400
	ldr r8, _0206269C ; =0x020A0C68
	strb r2, [r7, #0x565]
	strb r9, [r7, #0x564]
	ldrb r9, [r1, #0x626]
	ldrb r0, [r1, #0x627]
	mov r2, #0xa4
	strb r9, [r7, #0x566]
	strb r0, [r7, #0x567]
_020621FC:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020621FC
	ldr r8, _020626A0 ; =0x020A0DB0
	add r3, r7, #0x6b0
	mov r2, #0xa4
_02062224:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062224
	add r0, r7, #0x3f8
	ldr r8, _020626A4 ; =0x020A0EF8
	add r3, r0, #0x400
	mov r2, #0xc9
_02062250:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062250
	add r0, r7, #0x8a
	ldr r8, _020626A8 ; =0x020A108A
	add r3, r0, #0x900
	mov r2, #0xa4
_0206227C:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0206227C
	ldr r2, _020626AC ; =0x020A1140
	add r1, r7, #0x2dc
	ldrh r8, [r2, #0x92]
	ldrh r3, [r2, #0x94]
	add r0, r7, #0xa00
	ldr r12, _020626B0 ; =0x020A11DC
	strh r8, [r0, #0xd2]
	strh r3, [r0, #0xd4]
	ldrh r3, [r2, #0x96]
	ldrh r2, [r2, #0x98]
	add r9, r1, #0x800
	mov r8, #9
	strh r3, [r0, #0xd6]
	strh r2, [r0, #0xd8]
_020622D0:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _020622D0
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x378
	ldr r8, _020626B4 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020622F8:
	ldrh r1, [r8]
	ldrh r0, [r8, #2]
	add r8, r8, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020622F8
	ldrh r2, [r8]
	ldr r1, _020626B8 ; =0x020A1240
	add r0, r7, #0xb00
	strh r2, [r3]
	ldrh r3, [r1, #0x72]
	ldrh r2, [r1, #0x74]
	ldr r12, _020626BC ; =0x020A12C0
	add r9, r7, #0xbc0
	strh r3, [r0, #0xb2]
	strh r2, [r0, #0xb4]
	ldrh r3, [r1, #0x76]
	ldrh r2, [r1, #0x78]
	mov r8, #0x34
	strh r3, [r0, #0xb6]
	strh r2, [r0, #0xb8]
	ldrh r2, [r1, #0x7a]
	ldrh r1, [r1, #0x7c]
	strh r2, [r0, #0xba]
	strh r1, [r0, #0xbc]
_02062360:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _02062360
	ldmia r12, {r0, r1}
	stmia r9, {r0, r1}
	ldr r3, _02062698 ; =0x020A0640
	add r1, r7, #0x12
	ldrb r9, [r3, #0xfc8]
	ldrb r8, [r3, #0xfc9]
	ldr r2, _020626C0 ; =0x020A1540
	add r0, r7, #0xf00
	strb r9, [r7, #0xf08]
	strb r8, [r7, #0xf09]
	ldrb lr, [r3, #0xfca]
	ldrb r8, [r3, #0xfcb]
	add r9, r1, #0xf00
	ldr r12, _020626C4 ; =0x020A1612
	strb r8, [r7, #0xf0b]
	strb lr, [r7, #0xf0a]
	ldrb lr, [r3, #0xfcc]
	ldrb r1, [r3, #0xfcd]
	mov r8, #0x1e
	strb lr, [r7, #0xf0c]
	strb r1, [r7, #0xf0d]
	ldrb lr, [r3, #0xfce]
	ldrb r1, [r3, #0xfcf]
	strb lr, [r7, #0xf0e]
	strb r1, [r7, #0xf0f]
	ldrh r1, [r2, #0xd0]
	strh r1, [r0, #0x10]
_020623DC:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r8, r8, #1
	strb r0, [r9, #1]
	strb r1, [r9], #2
	bne _020623DC
	ldr r2, _020626C8 ; =0x020A1640
	add r1, r7, #0x364
	ldrh r3, [r2, #0xe]
	add r0, r7, #0xf00
	add r12, r1, #0xc00
	strh r3, [r0, #0x4e]
	ldrh r3, [r2, #0x10]
	ldr lr, _020626CC ; =0x020A1664
	mov r8, #0x14
	strh r3, [r0, #0x50]
	ldrb r1, [r2, #0x12]
	strb r1, [r7, #0xf52]
	ldrb r1, [r2, #0x13]
	strb r1, [r7, #0xf53]
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0x54]
	ldrh r3, [r2, #0x16]
	ldrh r1, [r2, #0x18]
	strh r3, [r0, #0x56]
	strh r1, [r0, #0x58]
	ldrh r1, [r2, #0x1a]
	strh r1, [r0, #0x5a]
	ldrh r3, [r2, #0x1c]
	ldrh r1, [r2, #0x1e]
	strh r3, [r0, #0x5c]
	strh r1, [r0, #0x5e]
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0x60]
	ldrb r0, [r2, #0x22]
	strb r0, [r7, #0xf62]
	ldrb r0, [r2, #0x23]
	strb r0, [r7, #0xf63]
_02062478:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r8, r8, #1
	bne _02062478
	ldr r1, [lr]
	add r0, r7, #0xa8
	ldr r9, _020626D0 ; =0x020A17A8
	str r1, [r12]
	add r8, r0, #0x1000
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	add r1, r7, #8
	ldr r2, [r9]
	ldr r0, _020626D4 ; =0x020A9C40
	add r1, r1, #0x4800
	str r2, [r8]
	bl FUN_020455b8
	add r1, r7, #0xc4
	ldr r0, _020626D8 ; =0x020AF81C
	add r1, r1, #0x5000
	bl FUN_020444a0
	add r1, r7, #0x8d0
	ldr r0, _020626DC ; =gL5Sound
	add r1, r1, #0x5000
	bl FUN_0202bcb0
	ldr r0, _020626E0 ; =gLogicThink
	mov r1, r7
	bl FUN_02072b54
	ldr r0, _020626E4 ; =0x02099ED8
	add r1, r7, #0x3e8
	ldr r0, [r0]
	add r1, r1, #0x3800
	bl FUN_020560b4
	ldr r0, _020626E8 ; =0x02099EE8
	add r1, r7, #0x208
	ldr r0, [r0]
	add r1, r1, #0x4000
	bl FUN_0205feb8
	ldr r0, _02062698 ; =0x020A0640
	add r1, r6, #0x5800
	bl FUN_02063248
	ldr r2, _020626EC ; =0x020A1740
	add r0, r7, #0x5800
	ldrsh r6, [r2, #0x7c]
	ldr r3, _020626C8 ; =0x020A1640
	add r1, r7, #0x5000
	strh r6, [r0, #0xdc]
	ldrsh r8, [r2, #0x7e]
	ldr r6, _020626F0 ; =0x020A17C1
	add r2, r7, #0xe1
	strh r8, [r0, #0xde]
	ldrb r0, [r3, #0x180]
	add r3, r2, #0x5800
	mov r2, #0x15
	strb r0, [r1, #0x8e0]
_02062554:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062554
	ldrb r2, [r6]
	ldr r1, _02062688 ; =0x0000FFC0
	mov r0, r7
	strb r2, [r3]
	bl DC_FlushRange
	ldr r6, _02062698 ; =0x020A0640
	ldr r9, _020626E0 ; =gLogicThink
	ldr r0, [r6, #0x4dc]
	mov r8, #0
	str r0, [r4, #0x10]
	ldrb r2, [r6, #0x50a]
	mov r0, r9
	mov r1, r8
	strb r2, [r4, #0x14]
	bl FUN_020724c8
	strb r0, [r4, #0x15]
	mov r0, r9
	mov r1, r8
	bl FUN_0204c4cc
	strb r0, [r4, #0x16]
	mov r0, r9
	mov r1, r8
	bl FUN_0204c420
	strb r0, [r4, #0x17]
	mov r0, r9
	bl FUN_ov16_020edf7c
	str r0, [r4, #0x18]
	ldr r1, [r6, #0x4e4]
	add r0, r6, #0x400
	str r1, [r4, #0x48]
	ldrsb r2, [r0, #0xec]
	ldr r1, _02062690 ; =0x020A0B00
	add r0, r4, #0x1c
	strb r2, [r4, #0x45]
	str r8, [r4, #0x54]
	bl STD_CopyString
	add r1, r7, #0x2ec
	add r0, r4, #0x34
	add r1, r1, #0x3800
	bl STD_CopyString
	mov r0, r8
	add r1, r4, #0x58
	mov r2, #8
	bl MIi_CpuClear16
	add r0, r7, #0x1e8
	add r12, r0, #0x4000
	add r7, sp, #0
	ldmia r12!, {r0, r1, r2, r3}
	mov r6, r7
	stmia r7!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1}
	stmia r7, {r0, r1}
	ldr r7, _020626E4 ; =0x02099ED8
	b _02062664
_02062648:
	ldr r1, [r6, r8, lsl #2]
	ldr r0, [r7]
	bl FUN_020552cc
	add r1, r4, r8, lsl #1
	ldrh r0, [r0, #0x20]
	add r8, r8, #1
	strh r0, [r1, #0x58]
_02062664:
	ldrsb r0, [sp, #0x14]
	cmp r8, r0
	blt _02062648
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x48]
	bl FUN_0206208c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02062688: .word 0x0000FFC0
_0206268C: .word unk_020A0700
_02062690: .word unk_020A0B00
_02062694: .word unk_020A0C3C
_02062698: .word unk_020A0640
_0206269C: .word unk_020A0C68
_020626A0: .word unk_020A0DB0
_020626A4: .word unk_020A0EF8
_020626A8: .word unk_020A108A
_020626AC: .word unk_020A1140
_020626B0: .word unk_020A11DC
_020626B4: .word unk_020A1278
_020626B8: .word unk_020A1240
_020626BC: .word unk_020A12C0
_020626C0: .word unk_020A1540
_020626C4: .word unk_020A1612
_020626C8: .word unk_020A1640
_020626CC: .word unk_020A1664
_020626D0: .word unk_020A17A8
_020626D4: .word unk_020A9C40
_020626D8: .word unk_020AF81C
_020626DC: .word gL5Sound
_020626E0: .word gLogicThink
_020626E4: .word unk_02099ED8
_020626E8: .word unk_02099EE8
_020626EC: .word unk_020A1740
_020626F0: .word unk_020A17C1
	arm_func_end FUN_020620f8

	arm_func_start FUN_020626f4
FUN_020626f4: ; 0x020626F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r2
	cmp r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x4c
	bl _ZN16L5CardController4testEv
	cmp r0, #0
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _02062798 ; =0x0000FFC0
	add r0, r4, #0x80
	str r4, [r5, #0x44]
	bl DC_FlushRange
	ldr r1, _0206279C ; =0x020A1640
	ldr r0, _020627A0 ; =0x020A0640
	ldr r3, [r1, #0x248]
	ldrb r2, [r4, #0x4ca]
	ldr r1, [r4, #0x494]
	str r3, [r4, #0x10]
	strb r2, [r4, #0x14]
	str r1, [r4, #0x18]
	ldr r1, [r0, #0x4e4]
	add r0, r0, #0x400
	str r1, [r4, #0x48]
	ldrsb r2, [r0, #0xec]
	add r0, r4, #0x1c
	add r1, r4, #0x480
	strb r2, [r4, #0x45]
	bl STD_CopyString
	add r1, r4, #0x36c
	add r0, r4, #0x34
	add r1, r1, #0x3800
	bl STD_CopyString
	mov r1, #1
	mov r0, r5
	str r1, [r5, #0x48]
	bl FUN_0206208c
	ldmfd sp!, {r3, r4, r5, pc}
_02062798: .word 0x0000FFC0
_0206279C: .word unk_020A1640
_020627A0: .word unk_020A0640
	arm_func_end FUN_020626f4

	arm_func_start FUN_020627a4
FUN_020627a4: ; 0x020627A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x128]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x68
	bl OS_IsThreadTerminated
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x128]
	mov r0, r4
	bl FUN_02062fc8
	ldr r0, [r4, #0x12c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x14]
	str r1, [r4, #0x128]
	subne r0, r0, #1
	strne r0, [r4, #0x14]
	ldr r0, [r4, #0x12c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020627a4

	arm_func_start FUN_02062800
FUN_02062800: ; 0x02062800
	stmfd sp!, {r3, lr}
	ldr r0, _02062818 ; =0x020A17F0
	mov r2, #0x80
	bl MI_CpuCopy8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02062818: .word unk_020A17F0
	arm_func_end FUN_02062800

	arm_func_start FUN_0206281c
FUN_0206281c: ; 0x0206281C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, #0x4000
	mov r6, r0
	mov r2, #1
	mov r5, #0
	mov r1, r4
	strb r2, [r6, #0x131]
	strb r5, [r6, #0x130]
	str r2, [r6, #0x12c]
	bl FUN_02062f94
	str r0, [r6, #0x128]
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	ldr r3, [r6, #0x128]
	ldr r1, _02062884 ; =FUN_020630d4
	mov r2, r6
	add r0, r6, #0x68
	add r3, r3, #0x4000
	bl OS_CreateThread
	add r0, r6, #0x68
	bl OS_WakeupThreadDirect
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02062884: .word FUN_020630d4
	arm_func_end FUN_0206281c

	arm_func_start FUN_02062888
FUN_02062888: ; 0x02062888
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r1
	cmp r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x4c
	bl _ZN16L5CardController4testEv
	cmp r0, #0
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	str r4, [r5, #0x44]
	mvneq r0, #0x78
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x48]
	bl FUN_0206281c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02062888

	arm_func_start FUN_020628dc
FUN_020628dc: ; 0x020628DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x12c]
	mov r4, r2
	cmp r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x4c
	bl _ZN16L5CardController4testEv
	cmp r0, #0
	mvneq r0, #0x7c
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	str r4, [r5, #0x44]
	str r1, [r5, #0x48]
	bl FUN_0206281c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020628dc

	arm_func_start FUN_02062924
FUN_02062924: ; 0x02062924
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x128]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x68
	bl OS_IsThreadTerminated
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x128]
	mov r0, r4
	bl FUN_02062fc8
	mov r1, #0
	ldr r0, [r4, #0x12c]
	str r1, [r4, #0x128]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02062924

	arm_func_start FUN_0206296c
FUN_0206296c: ; 0x0206296C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r4, #0x4c
	bl _ZN16L5CardController5readyEv
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, [r4, #0x44]
	ldr r1, _02062F18 ; =0x0000FFC0
	mov r0, r8
	add r7, r8, #0x80
	add r5, r8, #0x18c
	bl DC_FlushRange
	mov r6, #0
	ldrb r3, [r4, #0x25]
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl FUN_02061d24
	cmp r0, #0
	streq r6, [r4, #0x44]
	streqb r6, [r4, #0x24]
	streqb r6, [r4, #0x25]
	subeq r0, r6, #0x7a
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r7, #0x5000
	ldr r1, [r0, #0x444]
	add r0, r7, #0x44
	cmp r1, #0
	add r1, r0, #0x5400
	ldreq r0, [r1, #4]
	add r2, r7, #0xd4
	cmpeq r0, #0
	moveq r0, #2
	stmeqia r1, {r0, r6}
	add r0, r7, #0xd30
	ldr r1, _02062F1C ; =0x02091000
	add r0, r0, #0x4000
	add r6, r2, #0x5400
	bl strcmp
	cmp r0, #0
	beq _02062A38
	ldr r0, [r6]
	cmp r0, #0
	ldreq r0, [r6, #4]
	cmpeq r0, #0
	bne _02062A48
_02062A38:
	mov r1, #1
	ldr r0, _02062F20 ; =0x01F76394
	str r1, [r6]
	str r0, [r6, #4]
_02062A48:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _02062EF8
	ldr r3, _02062F24 ; =0x020A0700
	mov r6, r7
	mov r2, #0x200
_02062A60:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062A60
	ldr r9, _02062F28 ; =0x020A0B00
	add r12, r7, #0x400
	mov r6, #0x13
_02062A88:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062A88
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x13c
	ldr r6, _02062F2C ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_02062AB0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r6, #1]
	strb r1, [r6], #2
	bne _02062AB0
	ldrb r3, [r7, #0x564]
	ldrb r2, [r7, #0x565]
	ldr r1, _02062F30 ; =0x020A0640
	add r0, r7, #0x168
	strb r3, [r1, #0x624]
	strb r2, [r1, #0x625]
	ldrb r9, [r7, #0x566]
	ldrb r2, [r7, #0x567]
	ldr r3, _02062F34 ; =0x020A0C68
	add r6, r0, #0x400
	strb r9, [r1, #0x626]
	strb r2, [r1, #0x627]
	mov r2, #0xa4
_02062B00:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B00
	ldr r3, _02062F38 ; =0x020A0DB0
	add r6, r7, #0x6b0
	mov r2, #0xa4
_02062B28:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B28
	add r0, r7, #0x3f8
	ldr r3, _02062F3C ; =0x020A0EF8
	add r6, r0, #0x400
	mov r2, #0xc9
_02062B54:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B54
	add r0, r7, #0x8a
	ldr r3, _02062F40 ; =0x020A108A
	add r6, r0, #0x900
	mov r2, #0xa4
_02062B80:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02062B80
	add r0, r7, #0xa00
	ldrh r6, [r0, #0xd2]
	ldrh r3, [r0, #0xd4]
	ldr r2, _02062F44 ; =0x020A1140
	add r1, r7, #0x2dc
	strh r6, [r2, #0x92]
	strh r3, [r2, #0x94]
	ldrh r3, [r0, #0xd6]
	ldrh r0, [r0, #0xd8]
	ldr r9, _02062F48 ; =0x020A11DC
	add r12, r1, #0x800
	strh r3, [r2, #0x96]
	strh r0, [r2, #0x98]
	mov r6, #9
_02062BD4:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062BD4
	ldmia r12, {r0, r1, r2}
	stmia r9, {r0, r1, r2}
	add r3, r7, #0x378
	ldr r6, _02062F4C ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_02062BFC:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _02062BFC
	ldrh r2, [r3]
	add r0, r7, #0xb00
	ldr r1, _02062F50 ; =0x020A1240
	strh r2, [r6]
	ldrh r3, [r0, #0xb2]
	ldrh r2, [r0, #0xb4]
	ldr r9, _02062F54 ; =0x020A12C0
	add r12, r7, #0xbc0
	strh r3, [r1, #0x72]
	strh r2, [r1, #0x74]
	ldrh r3, [r0, #0xb6]
	ldrh r2, [r0, #0xb8]
	mov r6, #0x34
	strh r3, [r1, #0x76]
	strh r2, [r1, #0x78]
	ldrh r2, [r0, #0xba]
	ldrh r0, [r0, #0xbc]
	strh r2, [r1, #0x7a]
	strh r0, [r1, #0x7c]
_02062C64:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062C64
	ldmia r12, {r0, r1}
	stmia r9, {r0, r1}
	ldrb r2, [r7, #0xf08]
	ldrb r0, [r7, #0xf09]
	ldr r3, _02062F30 ; =0x020A0640
	add r1, r7, #0x12
	strb r2, [r3, #0xfc8]
	strb r0, [r3, #0xfc9]
	ldrb r9, [r7, #0xf0a]
	ldrb r6, [r7, #0xf0b]
	add lr, r1, #0xf00
	add r0, r7, #0xf00
	strb r9, [r3, #0xfca]
	strb r6, [r3, #0xfcb]
	ldrb r9, [r7, #0xf0c]
	ldrb r6, [r7, #0xf0d]
	ldr r2, _02062F58 ; =0x020A1540
	ldr r12, _02062F5C ; =0x020A1612
	strb r9, [r3, #0xfcc]
	strb r6, [r3, #0xfcd]
	ldrb r9, [r7, #0xf0e]
	ldrb r1, [r7, #0xf0f]
	mov r6, #0x1e
	strb r9, [r3, #0xfce]
	strb r1, [r3, #0xfcf]
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xd0]
_02062CE0:
	ldrb r1, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	subs r6, r6, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _02062CE0
	add r0, r7, #0xf00
	ldrh r3, [r0, #0x4e]
	ldr r2, _02062F60 ; =0x020A1640
	add r1, r7, #0x364
	strh r3, [r2, #0xe]
	ldrh r3, [r0, #0x50]
	add lr, r1, #0xc00
	ldr r12, _02062F64 ; =0x020A1664
	strh r3, [r2, #0x10]
	ldrb r1, [r7, #0xf52]
	mov r6, #0x14
	strb r1, [r2, #0x12]
	ldrb r1, [r7, #0xf53]
	strb r1, [r2, #0x13]
	ldrh r1, [r0, #0x54]
	strh r1, [r2, #0x14]
	ldrh r3, [r0, #0x56]
	ldrh r1, [r0, #0x58]
	strh r3, [r2, #0x16]
	strh r1, [r2, #0x18]
	ldrh r1, [r0, #0x5a]
	strh r1, [r2, #0x1a]
	ldrh r3, [r0, #0x5c]
	ldrh r1, [r0, #0x5e]
	strh r3, [r2, #0x1c]
	strh r1, [r2, #0x1e]
	ldrh r0, [r0, #0x60]
	strh r0, [r2, #0x20]
	ldrb r0, [r7, #0xf62]
	strb r0, [r2, #0x22]
	ldrb r0, [r7, #0xf63]
	strb r0, [r2, #0x23]
_02062D7C:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _02062D7C
	ldr r1, [lr]
	add r0, r7, #0xa8
	add r6, r0, #0x1000
	str r1, [r12]
	ldr lr, _02062F68 ; =0x020A17A8
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r0, [r6]
	ldr r6, _02062F60 ; =0x020A1640
	str r0, [lr]
	ldr r1, [r7, #0x41c]
	add r0, r7, #0x5800
	str r1, [r6, #0x248]
	ldrsh r1, [r0, #0xdc]
	ldr r3, _02062F6C ; =0x020A1740
	add r2, r7, #0x5000
	strh r1, [r3, #0x7c]
	ldrsh r12, [r0, #0xde]
	add r0, r7, #0xe1
	ldr r1, _02062F70 ; =0x020A17C1
	strh r12, [r3, #0x7e]
	ldrb r2, [r2, #0x8e0]
	add r12, r0, #0x5800
	mov r3, #0x15
	strb r2, [r6, #0x180]
_02062DF0:
	ldrb r2, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r0, [r1, #1]
	strb r2, [r1], #2
	bne _02062DF0
	ldrb r6, [r12]
	add r2, r7, #8
	ldr r3, _02062F60 ; =0x020A1640
	ldr r0, _02062F74 ; =0x020A9C40
	strb r6, [r1]
	mov r6, #0
	add r1, r2, #0x4800
	strb r6, [r3, #0x245]
	bl FUN_0204576c
	add r1, r7, #0xc4
	ldr r0, _02062F78 ; =0x020AF81C
	add r1, r1, #0x5000
	bl FUN_020444dc
	ldr r0, _02062F30 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02062E60
	add r1, r7, #0x8d0
	ldr r0, _02062F7C ; =gL5Sound
	add r1, r1, #0x5000
	bl FUN_0202bd54
_02062E60:
	ldr r0, _02062F80 ; =gLogicThink
	mov r1, r7
	bl FUN_02072dcc
	ldr r0, _02062F84 ; =0x02099ED8
	add r1, r7, #0x3e8
	ldr r0, [r0]
	add r1, r1, #0x3800
	bl FUN_02055d68
	ldr r0, _02062F88 ; =0x02099EE8
	add r1, r7, #0x208
	ldr r0, [r0]
	add r1, r1, #0x4000
	bl FUN_0205fee0
	ldr r6, _02062F30 ; =0x020A0640
	add r1, r5, #0x5800
	mov r0, r6
	bl FUN_020630e8
	ldr r1, _02062F60 ; =0x020A1640
	ldr r0, _02062F8C ; =0x02099E8E
	ldrb r1, [r1, #0x180]
	strb r1, [r0]
	ldrb r0, [r6, #0xb92]
	cmp r0, #0
	bne _02062EC8
	mov r0, #2
	b _02062ED4
_02062EC8:
	cmp r0, #1
	bne _02062ED8
	mov r0, #7
_02062ED4:
	bl FUN_02075698
_02062ED8:
	ldr r5, _02062F44 ; =0x020A1140
	ldr r6, _02062F7C ; =gL5Sound
	ldrh r1, [r5, #0x94]
	mov r0, r6
	bl FUN_0202bb58
	ldrh r1, [r5, #0x96]
	mov r0, r6
	bl FUN_0202bb94
_02062EF8:
	ldr r1, _02062F90 ; =0x020A17F0
	mov r5, #0
	mov r0, r8
	mov r2, #0x80
	str r5, [r4, #0x44]
	bl MI_CpuCopy8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02062F18: .word 0x0000FFC0
_02062F1C: .word unk_02091000
_02062F20: .word 0x01F76394
_02062F24: .word unk_020A0700
_02062F28: .word unk_020A0B00
_02062F2C: .word unk_020A0C3C
_02062F30: .word unk_020A0640
_02062F34: .word unk_020A0C68
_02062F38: .word unk_020A0DB0
_02062F3C: .word unk_020A0EF8
_02062F40: .word unk_020A108A
_02062F44: .word unk_020A1140
_02062F48: .word unk_020A11DC
_02062F4C: .word unk_020A1278
_02062F50: .word unk_020A1240
_02062F54: .word unk_020A12C0
_02062F58: .word unk_020A1540
_02062F5C: .word unk_020A1612
_02062F60: .word unk_020A1640
_02062F64: .word unk_020A1664
_02062F68: .word unk_020A17A8
_02062F6C: .word unk_020A1740
_02062F70: .word unk_020A17C1
_02062F74: .word unk_020A9C40
_02062F78: .word unk_020AF81C
_02062F7C: .word gL5Sound
_02062F80: .word gLogicThink
_02062F84: .word unk_02099ED8
_02062F88: .word unk_02099EE8
_02062F8C: .word unk_02099E8E
_02062F90: .word unk_020A17F0
	arm_func_end FUN_0206296c

	arm_func_start FUN_02062f94
FUN_02062f94: ; 0x02062F94
	stmfd sp!, {r4, lr}
	ldr r0, _02062FC4 ; =gL5Allocator
	mov r4, r1
	mov r2, #0x10
	mov r3, #1
	bl _ZN11L5Allocator8allocateEmii
	mov r2, r4
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02062FC4: .word gL5Allocator
	arm_func_end FUN_02062f94

	arm_func_start FUN_02062fc8
FUN_02062fc8: ; 0x02062FC8
	ldr r0, _02062FD4 ; =gL5Allocator
	ldr r12, _02062FD8 ; =_ZN11L5Allocator10deallocateEPv
	bx r12
_02062FD4: .word gL5Allocator
_02062FD8: .word _ZN11L5Allocator10deallocateEPv
	arm_func_end FUN_02062fc8

	arm_func_start FUN_02062fdc
FUN_02062fdc: ; 0x02062FDC
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	cmp r1, #0
	ble _02063010
	sub r2, r1, #1
	mov r12, #1
_02062FF8:
	tst r0, r12, lsl r4
	subne r3, r2, r4
	add r4, r4, #1
	orrne lr, lr, r12, lsl r3
	cmp r4, r1
	blt _02062FF8
_02063010:
	mov r0, lr
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02062fdc

	arm_func_start FUN_02063018
FUN_02063018: ; 0x02063018
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r2
	cmp r4, #0
	mov r5, r1
	mvn r9, #0
	mov r10, #0
	cmpgt r4, #0
	ble _02063080
	ldr r6, _0206309C ; =0x04C11DB7
	mov r8, #8
	mov r7, r10
_02063044:
	ldrb r0, [r5]
	mov r1, r8
	bl FUN_02062fdc
	mov r1, r7
	eor r9, r9, r0, lsl #24
_02063058:
	tst r9, #0x80000000
	eorne r9, r6, r9, lsl #1
	add r1, r1, #1
	moveq r9, r9, lsl #1
	cmp r1, #8
	blt _02063058
	add r10, r10, #1
	cmp r10, r4
	add r5, r5, #1
	blt _02063044
_02063080:
	mov r4, #0x20
	mov r0, r9
	mov r1, r4
	bl FUN_02062fdc
	sub r1, r4, #0x21
	eor r0, r0, r1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0206309C: .word 0x04C11DB7
	arm_func_end FUN_02063018

	arm_func_start FUN_020630a0
FUN_020630a0: ; 0x020630A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x131]
	cmp r1, #0
	ldr r1, [r4, #0x44]
	bne _020630C0
	bl FUN_02061e30
	b _020630C4
_020630C0:
	bl FUN_02061fb0
_020630C4:
	str r0, [r4, #0x12c]
	mov r0, #0
	str r0, [r4, #0x44]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020630a0

	arm_func_start FUN_020630d4
FUN_020630d4: ; 0x020630D4
	ldr r12, _020630DC ; =FUN_020630a0
	bx r12
_020630DC: .word FUN_020630a0
	arm_func_end FUN_020630d4

	arm_func_start FUN_020630e0
FUN_020630e0: ; 0x020630E0
	ldr r0, [r0, #0x20]
	bx lr
	arm_func_end FUN_020630e0

	arm_func_start FUN_020630e8
FUN_020630e8: ; 0x020630E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r5, r1
	mov r11, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r5]
	cmp r2, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r11, #0x1000
	ldr r1, [r0, #0x230]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r2, [r1]
	ldrh r2, [r5, #4]
	ldr r1, [r0, #0x230]
	add r8, r5, #8
	strh r2, [r1, #4]
	ldr r0, [r0, #0x230]
	mov r4, #0
	add r7, r0, #8
_02063134:
	mov r0, r8
	mov r1, r7
	mov r2, #0x4c
	bl MI_CpuCopy8
	ldr r6, _02063240 ; =0x02090DB4
	ldr r0, [r6, #0x24]
	bl STD_GetStringLength
	add r3, r8, #0x4c
	add r9, r7, #0x4c
	mov lr, #0
	mov r1, #3
	mov r2, #0x20
_02063164:
	ldrb r10, [r3, lr]
	cmp r10, #0
	bne _02063188
	mov r1, lr, lsl #1
	mov r0, r9
	rsb r2, r1, #0x80
	mov r1, #0
	bl MI_CpuFill8
	b _020631D0
_02063188:
	cmp r10, #1
	streqb r2, [r9], #1
	beq _020631C4
	mov r10, r10, lsl #0x11
	cmp r0, r10, lsr #16
	mov r12, r10, lsr #0x10
	ldr r10, [r6, #0x24]
	movle r12, r1
	ldrsb r10, [r10, r12]
	strb r10, [r9]
	ldr r10, [r6, #0x24]
	add r10, r10, r12
	ldrsb r10, [r10, #1]
	strb r10, [r9, #1]
	add r9, r9, #2
_020631C4:
	add lr, lr, #1
	cmp lr, #0x40
	blo _02063164
_020631D0:
	ldr r2, _02063244 ; =0x0000073C
	add r0, r8, #0x8c
	add r1, r7, #0xcc
	bl MI_CpuCopy8
	add r0, r7, #8
	add r1, r8, #0x3c8
	add r4, r4, #1
	cmp r4, #0xa
	add r7, r0, #0x800
	add r8, r1, #0x400
	blt _02063134
	add r0, r11, #0x1000
	ldr r1, [r0, #0x230]
	add r0, r5, #0x1d8
	add r1, r1, #0x58
	add r0, r0, #0x4c00
	add r1, r1, #0x5000
	mov r2, #0x190
	bl MI_CpuCopy8
	add r0, r11, #0x1000
	ldr r1, [r0, #0x230]
	add r0, r5, #0x368
	add r1, r1, #0x1e8
	add r0, r0, #0x4c00
	add r1, r1, #0x5000
	mov r2, #0x70
	bl MI_CpuCopy8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02063240: .word unk_02090DB4
_02063244: .word 0x0000073C
	arm_func_end FUN_020630e8

	arm_func_start FUN_02063248
FUN_02063248: ; 0x02063248
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	str r0, [sp]
	movs r0, r1
	ldrne r0, [sp]
	str r1, [sp, #4]
	addne r1, r0, #0x1000
	ldrne r0, [r1, #0x230]
	cmpne r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r0]
	ldr r0, [sp, #4]
	str r2, [r0]
	ldr r2, [r1, #0x230]
	add r4, r0, #8
	mov r0, #0
	str r0, [sp, #8]
	ldrh r2, [r2, #4]
	ldr r0, [sp, #4]
	strh r2, [r0, #4]
	ldr r0, [r1, #0x230]
	add r11, r0, #8
_020632A4:
	mov r0, r11
	mov r1, r4
	mov r2, #0x4c
	bl MI_CpuCopy8
	ldr r0, _020633F8 ; =0x02090DB4
	ldr r0, [r0, #0x24]
	bl STD_GetStringLength
	add r0, r0, r0, lsr #31
	mov r12, r0, asr #1
	add r3, r11, #0x4c
	add r0, r4, #0x4c
	mov r5, #0
	mov r1, #3
	mov r2, #1
_020632DC:
	ldrsb r8, [r3]
	cmp r8, #0
	bne _020632F8
	rsb r2, r5, #0x40
	mov r1, #0
	bl MI_CpuFill8
	b _02063360
_020632F8:
	cmp r8, #0x20
	moveq lr, r2
	addeq r3, r3, #1
	beq _02063350
	cmp r12, #0
	mov lr, r1
	mov r6, #0
	ble _0206334C
	ldr r7, _020633F8 ; =0x02090DB4
	ldr r7, [r7, #0x24]
_02063320:
	mov r9, r6, lsl #1
	ldrsb r9, [r7, r9]
	add r10, r7, r6, lsl #1
	cmp r8, r9
	ldreqsb r9, [r10, #1]
	ldreqsb r10, [r3, #1]
	cmpeq r10, r9
	andeq lr, r6, #0xff
	add r6, r6, #1
	cmp r6, r12
	blt _02063320
_0206334C:
	add r3, r3, #2
_02063350:
	strb lr, [r0], #1
	add r5, r5, #1
	cmp r5, #0x40
	blo _020632DC
_02063360:
	ldr r2, _020633FC ; =0x0000073C
	add r0, r11, #0xcc
	add r1, r4, #0x8c
	bl MI_CpuCopy8
	ldr r0, [sp, #8]
	add r1, r11, #8
	add r0, r0, #1
	add r2, r4, #0x3c8
	str r0, [sp, #8]
	cmp r0, #0xa
	add r11, r1, #0x800
	add r4, r2, #0x400
	blt _020632A4
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x230]
	ldr r0, [sp, #4]
	add r1, r0, #0x1d8
	add r0, r2, #0x58
	add r0, r0, #0x5000
	add r1, r1, #0x4c00
	mov r2, #0x190
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x230]
	ldr r0, [sp, #4]
	add r1, r0, #0x368
	add r0, r2, #0x1e8
	add r0, r0, #0x5000
	add r1, r1, #0x4c00
	mov r2, #0x70
	bl MI_CpuCopy8
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020633F8: .word unk_02090DB4
_020633FC: .word 0x0000073C
	arm_func_end FUN_02063248

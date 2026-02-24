
	.include "/macros/function.inc"
	.include "/include/fontmanager.inc"

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

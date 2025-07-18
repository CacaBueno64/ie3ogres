
	.include "asm/macros/function.inc"
	.include "libnnsg2d.inc"

	.text
	arm_func_start NNS_G2dFindBinaryBlock
NNS_G2dFindBinaryBlock: ; 0x02018154
	ldrh r2, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	mov r3, #0
	add r0, r0, r2
	cmp r12, #0
	bls _02018194
_0201816C:
	ldr r2, [r0]
	cmp r2, r1
	bxeq lr
	add r2, r3, #1
	mov r2, r2, lsl #0x10
	ldr r3, [r0, #4]
	cmp r12, r2, lsr #16
	add r0, r0, r3
	mov r3, r2, lsr #0x10
	bhi _0201816C
_02018194:
	mov r0, #0
	bx lr
	arm_func_end NNS_G2dFindBinaryBlock

	arm_func_start GetGlyphIndex
GetGlyphIndex: ; 0x0201819C
	stmfd sp!, {r3, lr}
	ldrh r3, [r0, #4]
	ldr r2, _02018260 ; =0x0000FFFF
	cmp r3, #0
	beq _020181C4
	cmp r3, #1
	beq _020181E0
	cmp r3, #2
	beq _020181F4
	b _02018258
_020181C4:
	ldrh r2, [r0]
	ldrh r3, [r0, #0xc]
	sub r0, r1, r2
	add r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	b _02018258
_020181E0:
	ldrh r2, [r0]
	sub r1, r1, r2
	add r0, r0, r1, lsl #1
	ldrh r2, [r0, #0xc]
	b _02018258
_020181F4:
	ldrh r3, [r0, #0xc]
	add r12, r0, #0xe
	sub r0, r3, #1
	add lr, r12, r0, lsl #2
	cmp r12, lr
	bhi _02018258
_0201820C:
	sub r3, lr, r12
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r0, r0, asr #2
	add r0, r0, r0, lsr #31
	mov r3, r0, asr #1
	mov r0, r3, lsl #2
	ldrh r0, [r12, r0]
	add r3, r12, r3, lsl #2
	cmp r0, r1
	addlo r12, r3, #4
	blo _02018250
	cmp r1, r0
	sublo lr, r3, #4
	blo _02018250
	ldrh r2, [r3, #2]
	b _02018258
_02018250:
	cmp r12, lr
	bls _0201820C
_02018258:
	mov r0, r2
	ldmfd sp!, {r3, pc}
_02018260: .word 0x0000FFFF
	arm_func_end GetGlyphIndex

	arm_func_start NNS_G2dFontInitUTF16
NNS_G2dFontInitUTF16: ; 0x02018264
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	bl NNSi_G2dGetUnpackedFont
	ldr r0, _02018284 ; =NNSi_G2dSplitCharUTF16
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_02018284: .word NNSi_G2dSplitCharUTF16
	arm_func_end NNS_G2dFontInitUTF16

	arm_func_start NNS_G2dFontInitShiftJIS
NNS_G2dFontInitShiftJIS: ; 0x02018288
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	bl NNSi_G2dGetUnpackedFont
	ldr r0, _020182A8 ; =NNSi_G2dSplitCharShiftJIS
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020182A8: .word NNSi_G2dSplitCharShiftJIS
	arm_func_end NNS_G2dFontInitShiftJIS

	arm_func_start NNS_G2dFontFindGlyphIndex
NNS_G2dFontFindGlyphIndex: ; 0x020182AC
	stmfd sp!, {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020182E8
_020182C0:
	ldrh r2, [r0]
	cmp r2, r1
	ldrlsh r2, [r0, #2]
	cmpls r1, r2
	bhi _020182DC
	bl GetGlyphIndex
	ldmfd sp!, {r3, pc}
_020182DC:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020182C0
_020182E8:
	ldr r0, _020182F0 ; =0x0000FFFF
	ldmfd sp!, {r3, pc}
_020182F0: .word 0x0000FFFF
	arm_func_end NNS_G2dFontFindGlyphIndex

	arm_func_start NNS_G2dFontGetCharWidthsFromIndex
NNS_G2dFontGetCharWidthsFromIndex: ; 0x020182F4
	ldr r12, [r0]
	ldr r3, [r12, #0xc]
	cmp r3, #0
	beq _02018334
_02018304:
	ldrh r2, [r3]
	cmp r2, r1
	ldrlsh r0, [r3, #2]
	cmpls r1, r0
	subls r0, r1, r2
	addls r1, r3, #8
	addls r0, r0, r0, lsl #1
	addls r0, r1, r0
	bxls lr
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _02018304
_02018334:
	add r0, r12, #4
	bx lr
	arm_func_end NNS_G2dFontGetCharWidthsFromIndex

	arm_func_start NNSi_G2dFontGetStringWidth
NNSi_G2dFontGetStringWidth: ; 0x0201833C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	add r4, sp, #0
	ldr r6, [r9, #4]
	mov r0, r4
	mov r8, r1
	mov r7, r3
	str r2, [sp]
	mov r5, #0
	blx r6
	movs r1, r0
	beq _020183B8
	ldr r10, _020183E4 ; =0x0000FFFF
_02018374:
	cmp r1, #0xa
	beq _020183B8
	mov r0, r9
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	cmp r1, r10
	ldreq r0, [r9]
	ldreqh r1, [r0, #2]
	mov r0, r9
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrsb r1, [r0, #2]
	mov r0, r4
	add r1, r8, r1
	add r5, r5, r1
	blx r6
	movs r1, r0
	bne _02018374
_020183B8:
	cmp r7, #0
	beq _020183D0
	cmp r1, #0xa
	ldreq r0, [sp]
	movne r0, #0
	str r0, [r7]
_020183D0:
	cmp r5, #0
	subgt r5, r5, r8
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020183E4: .word 0x0000FFFF
	arm_func_end NNSi_G2dFontGetStringWidth

	arm_func_start NNSi_G2dFontGetTextHeight
NNSi_G2dFontGetTextHeight: ; 0x020183E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	add r5, sp, #8
	ldr r7, [r8, #4]
	add r12, sp, #0
	mov r3, #0
	mov r0, r5
	mov r4, r1
	str r2, [sp, #8]
	str r3, [r12]
	str r3, [r12, #4]
	mov r6, #1
	blx r7
	cmp r0, #0
	beq _02018440
_02018428:
	cmp r0, #0xa
	mov r0, r5
	addeq r6, r6, #1
	blx r7
	cmp r0, #0
	bne _02018428
_02018440:
	ldr r0, [r8]
	ldrsb r0, [r0, #1]
	add r0, r4, r0
	mul r0, r6, r0
	sub r0, r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G2dFontGetTextHeight

	arm_func_start NNSi_G2dFontGetTextRect
NNSi_G2dFontGetTextRect: ; 0x0201845C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r6, r2
	ldr r2, [sp, #0x28]
	add r9, sp, #0
	mov r4, #0
	mov r8, r0
	mov r7, r1
	mov r5, r3
	str r4, [r9]
	str r4, [r9, #4]
	cmp r2, #0
	mov r4, #1
	beq _020184C4
	add r9, sp, #0x28
_02018498:
	mov r0, r7
	mov r1, r6
	mov r3, r9
	bl NNSi_G2dFontGetStringWidth
	ldr r1, [sp]
	ldr r2, [sp, #0x28]
	cmp r0, r1
	strgt r0, [sp]
	add r4, r4, #1
	cmp r2, #0
	bne _02018498
_020184C4:
	ldr r0, [r7]
	sub r2, r4, #1
	ldrsb r1, [r0, #1]
	ldr r0, [sp]
	add r1, r5, r1
	mul r1, r2, r1
	sub r1, r1, r5
	stmia r8, {r0, r1}
	str r1, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NNSi_G2dFontGetTextRect

	arm_func_start GetCharIndex1D
GetCharIndex1D: ; 0x020184F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov lr, #3
	ldr r8, [sp, #0x20]
	ldr r7, [sp, #0x24]
	ldr r9, _020185D4 ; =0x0208BF20
	mov r6, #0
	mov r12, lr
	mvn r5, #0
_02018510:
	and r10, r3, r5, lsl r7
	cmp r10, r1
	and r4, r2, r5, lsl r8
	bhi _02018550
	mla r6, r2, r10, r6
	cmp r4, r0
	movhi r2, r4
	subhi r1, r1, r10
	subhi r3, r3, r10
	bhi _02018594
	sub r3, r3, r10
	mla r6, r4, r3, r6
	sub r0, r0, r4
	sub r1, r1, r10
	sub r2, r2, r4
	b _02018594
_02018550:
	cmp r4, r0
	mvn r3, r5, lsl r7
	mlals r6, r4, r10, r6
	movls r3, r10
	subls r0, r0, r4
	subls r2, r2, r4
	bls _02018594
	and r2, r1, r5, lsl r7
	mla r6, r4, r2, r6
	and r2, r0, r5, lsl r8
	mvn r4, r5, lsl r8
	add r2, r6, r2, lsl r7
	and r1, r1, r3
	add r1, r2, r1, lsl r8
	and r0, r0, r4
	add r0, r1, r0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02018594:
	cmp r2, #8
	movlt r4, r2
	movge r8, lr
	clzlt r4, r4
	rsblt r8, r4, #0x1f
	cmp r3, #8
	movge r4, r12
	movlt r4, r3
	clzlt r4, r4
	rsblt r4, r4, #0x1f
	add r4, r9, r4, lsl #3
	add r7, r4, r8, lsl #1
	ldrb r8, [r4, r8, lsl #1]
	ldrb r7, [r7, #1]
	b _02018510
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020185D4: .word unk_0208BF20
	arm_func_end GetCharIndex1D

	arm_func_start OBJSizeToShape
OBJSizeToShape: ; 0x020185D8
	ldrb r3, [r0, #1]
	ldr r2, _020185F0 ; =0x0208BF40
	ldrb r1, [r0]
	add r0, r2, r3, lsl #4
	ldr r0, [r0, r1, lsl #2]
	bx lr
_020185F0: .word unk_0208BF40
	arm_func_end OBJSizeToShape

	arm_func_start ClearChar
ClearChar: ; 0x020185F4
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #8
	ldreq r4, [sp, #0x10]
	mov r12, r0
	ldr r0, [sp, #0x14]
	cmpeq r4, #8
	bne _02018624
	ldr r2, [sp, #0x18]
	mov r1, r12
	mov r2, r2, lsl #3
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, pc}
_02018624:
	ldr r4, [sp, #0x18]
	cmp r4, #4
	bne _02018684
	mov r5, r1, lsl #2
	add r4, r5, r3, lsl #2
	mvn r3, #0
	rsb r4, r4, #0x20
	mov r3, r3, lsr r5
	add r1, r4, r1, lsl #2
	mov r3, r3, lsl r1
	ldr r1, [sp, #0x10]
	add r2, r12, r2, lsl #2
	add r5, r2, r1, lsl #2
	and r1, r0, r3, lsr r4
	mvn r3, r3, lsr r4
	cmp r2, r5
	ldmhsfd sp!, {r3, r4, r5, pc}
_02018668:
	ldr r0, [r2]
	and r0, r0, r3
	orr r0, r1, r0
	str r0, [r2], #4
	cmp r2, r5
	blo _02018668
	ldmfd sp!, {r3, r4, r5, pc}
_02018684:
	mov r1, r1, lsl #3
	add r3, r1, r3, lsl #3
	rsb r3, r3, #0x40
	mvn r4, #0
	cmp r3, #0x20
	mov r5, r4, lsr r1
	subhs lr, r3, #0x20
	addhs r4, r1, lr
	movhs r4, r5, lsl r4
	movhs r5, r4, lsr lr
	mvn lr, #0
	movlo r5, r5, lsl r1
	cmp r1, #0x20
	mov r4, lr, lsl r3
	subhs lr, r1, #0x20
	addhs r1, lr, r3
	movhs r1, r4, lsr r1
	movhs r3, r1, lsl lr
	movlo r3, r4, lsr r3
	add r4, r12, r2, lsl #3
	ldr r1, [sp, #0x10]
	and r2, r0, r3
	add r12, r4, r1, lsl #3
	and r1, r0, r5
	mvn r5, r5
	mvn r3, r3
	cmp r4, r12
	ldmhsfd sp!, {r3, r4, r5, pc}
_020186F4:
	ldr r0, [r4]
	and r0, r0, r5
	orr r0, r1, r0
	str r0, [r4]
	ldr r0, [r4, #4]
	and r0, r0, r3
	orr r0, r2, r0
	str r0, [r4, #4]
	add r4, r4, #8
	cmp r4, r12
	blo _020186F4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end ClearChar

	arm_func_start LetterChar
LetterChar: ; 0x02018724
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r5, [r0, #8]
	ldr r4, [r0, #0xc]
	cmp r5, #0
	strge r5, [sp]
	movlt r1, #0
	strlt r1, [sp]
	ldr r1, [r0, #0x10]
	mov r2, r4
	add r10, r5, r1
	ldr r1, [r0, #0x14]
	cmp r4, #0
	movlt r2, #0
	cmp r10, #8
	add r3, r4, r1
	movge r10, #8
	cmp r3, #8
	movge r3, #8
	cmp r4, #0
	movgt r4, #0
	cmp r5, #0
	ldr r7, [r0, #0x20]
	movgt r5, #0
	rsb r1, r4, #0
	mul r6, r10, r7
	ldr r8, [r0, #0x1c]
	rsb r4, r5, #0
	mul r9, r8, r4
	ldr r4, [r0, #0x18]
	mov r10, r6
	str r4, [sp, #0x10]
	ldr r4, [sp]
	cmp r7, #4
	mul r5, r4, r7
	ldr r4, [sp, #0x10]
	str r5, [sp]
	mla r4, r1, r4, r9
	ldr r1, [r0, #4]
	str r1, [sp, #0x14]
	ldr r1, [r0]
	bne _02018890
	ldr r7, [r0, #0x24]
	add r0, r1, r2, lsl #2
	str r0, [sp, #0xc]
	add r0, r1, r3, lsl #2
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	cmp r1, r0
	addhs sp, sp, #0x28
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0xf
	add r5, sp, #0x20
_020187F8:
	ldr r0, [sp, #0xc]
	mov r1, r4, lsr #0x1f
	ldr r9, [r0]
	ldr r0, [sp, #0x14]
	rsb r2, r1, r4, lsl #29
	add r0, r0, r4, lsr #3
	str r0, [sp, #0x20]
	mov r0, #0
	strb r0, [sp, #0x24]
	strb r0, [sp, #0x25]
	mov r0, r5
	add r1, r1, r2, ror #29
	bl NNSi_G2dBitReaderRead
	ldr r6, [sp]
	mov r0, r6
	cmp r0, r10
	bhs _02018868
_0201883C:
	mov r0, r5
	mov r1, r8
	bl NNSi_G2dBitReaderRead
	cmp r0, #0
	mvnne r1, r11, lsl r6
	addne r0, r7, r0
	andne r1, r9, r1
	orrne r9, r1, r0, lsl r6
	add r6, r6, #4
	cmp r6, r10
	blo _0201883C
_02018868:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r9, [r1], #4
	cmp r1, r0
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	add r4, r4, r0
	blo _020187F8
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02018890:
	ldr r5, [r0, #0x24]
	add r0, r1, r3, lsl #3
	add r11, r1, r2, lsl #3
	str r0, [sp, #4]
	cmp r11, r0
	addhs sp, sp, #0x28
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020188AC:
	mov r1, r4, lsr #0x1f
	rsb r0, r1, r4, lsl #29
	add r1, r1, r0, ror #29
	ldmia r11, {r6, r7}
	mov r0, #0
	strb r0, [sp, #0x1c]
	strb r0, [sp, #0x1d]
	ldr r0, [sp, #0x14]
	add r0, r0, r4, lsr #3
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	bl NNSi_G2dBitReaderRead
	ldr r9, [sp]
	mov r0, r9
	cmp r0, r10
	bhs _02018934
_020188EC:
	add r0, sp, #0x18
	mov r1, r8
	bl NNSi_G2dBitReaderRead
	cmp r0, #0
	beq _02018928
	add r1, r5, r0
	cmp r9, #0x20
	mov r0, #0xff
	mvnlo r0, r0, lsl r9
	andlo r0, r6, r0
	subhs r2, r9, #0x20
	orrlo r6, r0, r1, lsl r9
	mvnhs r0, r0, lsl r2
	andhs r0, r7, r0
	orrhs r7, r0, r1, lsl r2
_02018928:
	add r9, r9, #8
	cmp r9, r10
	blo _020188EC
_02018934:
	ldr r0, [sp, #4]
	str r7, [r11, #4]
	str r6, [r11], #8
	cmp r11, r0
	ldr r0, [sp, #0x10]
	add r4, r4, r0
	blo _020188AC
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end LetterChar

	arm_func_start DrawGlyphLine
DrawGlyphLine: ; 0x02018958
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, [sp, #0x54]
	ldrb r6, [r0, #0xc]
	str r4, [sp, #0x54]
	ldr r4, [r4]
	ldr r5, [r1]
	mov r7, r6, lsl #6
	ldrb r4, [r4, #1]
	mov r6, r7, asr #2
	add r6, r7, r6, lsr #29
	cmp r4, #0
	ldr r5, [r5, #8]
	mov r10, r2
	mov r9, r3
	mov r8, r6, asr #3
	addeq sp, sp, #0x2c
	ldmib r0, {r11, r12}
	ldr lr, [r0]
	ldrb r2, [r5, #1]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	adds r7, r10, r4
	addmi sp, sp, #0x2c
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	adds r3, r9, r2
	addmi sp, sp, #0x2c
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	cmp r10, #0
	movgt r5, r10, lsr #3
	mov r6, #0
	cmp r9, #0
	add r7, r7, #7
	movgt r6, r9, lsr #3
	cmp r11, r7, lsr #3
	mov r7, r7, lsr #3
	add r3, r3, #7
	movls r7, r11
	mov r11, r3, lsr #3
	cmp r12, r3, lsr #3
	movls r11, r12
	subs r3, r7, r5
	addmi sp, sp, #0x2c
	sub r12, r11, r6
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r12, #0
	addlt sp, sp, #0x2c
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, [r0, #0x10]
	cmp r10, #0
	mla r6, r7, r6, r5
	sub r5, r7, r3
	mla r7, r8, r6, lr
	ldr r6, [sp, #0x54]
	mul r11, r8, r5
	ldr r6, [r6, #4]
	ldr r5, [sp, #0x50]
	str r4, [sp, #0x14]
	sub r5, r5, #1
	andge r10, r10, #7
	str r6, [sp, #8]
	cmp r9, #0
	ldr r1, [r1]
	str r5, [sp, #0x28]
	str r2, [sp, #0x18]
	ldr r2, [r1, #8]
	ldrb r4, [r0, #0xc]
	ldrb r0, [r2, #6]
	andge r9, r9, #7
	sub r2, r9, r12, lsl #3
	str r0, [sp, #0x20]
	str r4, [sp, #0x24]
	ldr r1, [r1, #8]
	str r2, [sp]
	ldrb r1, [r1]
	cmp r9, r2
	sub r6, r10, r3, lsl #3
	smulbb r0, r0, r1
	str r0, [sp, #0x1c]
	addle sp, sp, #0x2c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, sp, #4
_02018AA0:
	mov r5, r10
	str r9, [sp, #0x10]
	cmp r10, r6
	ble _02018AD0
_02018AB0:
	mov r0, r4
	str r7, [sp, #4]
	str r5, [sp, #0xc]
	bl LetterChar
	sub r5, r5, #8
	cmp r5, r6
	add r7, r7, r8
	bgt _02018AB0
_02018AD0:
	ldr r0, [sp]
	sub r9, r9, #8
	cmp r9, r0
	add r7, r7, r11
	bgt _02018AA0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end DrawGlyphLine

	arm_func_start DrawGlyph1D
DrawGlyph1D: ; 0x02018AEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r4, [sp, #0x74]
	ldrb r6, [r0, #0xc]
	ldr r7, [r1]
	ldr r5, [r4]
	ldr r7, [r7, #8]
	mov r8, r6, lsl #6
	ldrb r6, [r5, #1]
	mov r5, r8, asr #2
	add r5, r8, r5, lsr #29
	ldrb r7, [r7, #1]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r6, #0
	mov r9, r5, asr #3
	addeq sp, sp, #0x4c
	ldmib r0, {r2, r3}
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, [sp, #8]
	adds r5, r5, r6
	addmi sp, sp, #0x4c
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, [sp, #0xc]
	adds r8, r8, r7
	addmi sp, sp, #0x4c
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, [sp, #8]
	add r5, r5, #7
	cmp r10, #0
	movle r10, #0
	strle r10, [sp, #0x10]
	movgt r10, r10, lsr #3
	strgt r10, [sp, #0x10]
	ldr r10, [sp, #0xc]
	cmp r10, #0
	movle r10, #0
	movgt r10, r10, lsr #3
	cmp r2, r5, lsr #3
	mov r5, r5, lsr #3
	movls r5, r2
	add r2, r8, #7
	cmp r3, r2, lsr #3
	mov r8, r2, lsr #3
	ldr r2, [sp, #0x10]
	movls r8, r3
	subs r3, r5, r2
	sub r5, r8, r10
	addmi sp, sp, #0x4c
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	addlt sp, sp, #0x4c
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [sp, #8]
	ldr r8, [r4, #4]
	cmp r2, #0
	andge r2, r2, #7
	strge r2, [sp, #8]
	ldr r2, [sp, #0xc]
	str r6, [sp, #0x34]
	cmp r2, #0
	andge r2, r2, #7
	strge r2, [sp, #0xc]
	ldr r2, [sp, #0x70]
	str r7, [sp, #0x38]
	sub r4, r2, #1
	str r4, [sp, #0x48]
	ldr r2, [r1]
	str r8, [sp, #0x28]
	ldr r1, [r2, #8]
	ldr r4, [sp, #0xc]
	ldrb r1, [r1, #6]
	ldrb r7, [r0, #0xc]
	sub r4, r4, r5, lsl #3
	str r1, [sp, #0x40]
	str r7, [sp, #0x44]
	ldr r2, [r2, #8]
	ldr r6, [r0, #0x10]
	ldrb r5, [r2]
	str r4, [sp, #0x1c]
	mov r7, r6, lsl #0x18
	smulbb r1, r1, r5
	str r1, [sp, #0x3c]
	ldr r1, [sp, #8]
	ldr r4, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	sub r5, r1, r3, lsl #3
	ldr r1, [r0, #4]
	ldr r11, [r0]
	ldr r0, [r0, #8]
	mov r6, r6, lsl #0x10
	mov r8, r7, lsr #0x18
	cmp r4, r2
	mov r7, r6, lsr #0x18
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	addle sp, sp, #0x4c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02018C74:
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [sp, #8]
	cmp r0, r5
	mov r4, r0
	ble _02018CD0
_02018C90:
	ldr r2, [sp, #0x14]
	str r8, [sp]
	ldr r3, [sp, #0x18]
	mov r0, r6
	mov r1, r10
	str r7, [sp, #4]
	bl GetCharIndex1D
	mla r1, r0, r9, r11
	add r0, sp, #0x24
	str r4, [sp, #0x2c]
	str r1, [sp, #0x24]
	bl LetterChar
	sub r4, r4, #8
	add r6, r6, #1
	cmp r4, r5
	bgt _02018C90
_02018CD0:
	ldr r0, [sp, #0xc]
	add r10, r10, #1
	sub r1, r0, #8
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _02018C74
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end DrawGlyph1D

	arm_func_start ClearContinuous
ClearContinuous: ; 0x02018CF4
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldrb r2, [r3, #0xc]
	ldr r12, [r3, #4]
	cmp r2, #4
	orreq r0, r1, r1, lsl #4
	orreq r0, r0, r0, lsl #8
	orrne r0, r1, r1, lsl #8
	orr r1, r0, r0, lsl #16
	ldr r0, [r3, #8]
	mov r2, r2, lsl #6
	mul lr, r12, r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r2, r0, asr #3
	mov r0, r1
	mul r2, lr, r2
	ldr r1, [r3]
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, pc}
	arm_func_end ClearContinuous

	arm_func_start ClearLine
ClearLine: ; 0x02018D44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldrb r2, [r7, #0xc]
	mov r6, r1
	ldr r9, [r7]
	cmp r2, #4
	orreq r0, r6, r6, lsl #4
	orreq r0, r0, r0, lsl #8
	orrne r0, r6, r6, lsl #8
	mov r1, r2, lsl #6
	orr r6, r0, r0, lsl #16
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r3, r0, asr #3
	ldr r2, [r7, #0x10]
	ldr r1, [r7, #4]
	ldr r0, [r7, #8]
	mul r5, r3, r2
	mul r4, r3, r1
	mov r8, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02018D9C:
	mov r0, r6
	mov r1, r9
	mov r2, r4
	bl MIi_CpuClearFast
	ldr r0, [r7, #8]
	add r8, r8, #1
	cmp r8, r0
	add r9, r9, r5
	blt _02018D9C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end ClearLine

	arm_func_start ClearAreaLine
ClearAreaLine: ; 0x02018DC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	ldr r4, [sp, #0x58]
	mov r9, r2
	ldrb r11, [r0, #0xc]
	mov r10, r1
	add r1, r9, r4
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x5c]
	mov r1, r3
	add r1, r1, r2
	cmp r11, #4
	str r1, [sp, #0x24]
	orreq r1, r10, r10, lsl #4
	orreq r1, r1, r1, lsl #8
	orrne r1, r10, r10, lsl #8
	str r3, [sp, #0xc]
	orr r10, r1, r1, lsl #16
	ldr r1, [sp, #0xc]
	mov r6, r11, lsl #6
	bic r1, r1, #7
	mov r4, r6, asr #2
	mov r2, r1, asr #2
	str r1, [sp, #0x2c]
	add r1, r1, r2, lsr #29
	ldr r2, [r0, #0x10]
	mov r3, r1, asr #3
	mul r1, r3, r2
	bic r3, r9, #7
	mov r5, r3, asr #2
	add r4, r6, r4, lsr #29
	str r3, [sp, #0x18]
	add r5, r3, r5, lsr #29
	mov r3, r4, asr #3
	str r3, [sp, #0x14]
	add r4, r1, r5, asr #3
	ldr r3, [sp, #0x24]
	ldr r5, [r0]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	mla r4, r1, r4, r5
	add r3, r3, #7
	bic r1, r3, #7
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x14]
	add r0, r0, #7
	mul r1, r2, r1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	str r4, [sp, #0x1c]
	cmp r2, r1
	bic r6, r0, #7
	addge sp, sp, #0x30
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02018EA0:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x1c]
	cmp r1, r0
	movlt r1, r0
	ldrlt r0, [sp, #0x2c]
	sublt r8, r1, r0
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	movge r8, #0
	sub r0, r1, r0
	cmp r0, #8
	movgt r0, #8
	sub r5, r0, r8
	ldr r0, [sp, #0x18]
	cmp r0, r6
	mov r4, r0
	bge _02018F2C
_02018EE8:
	ldr r0, [sp, #0x28]
	sub r1, r9, r4
	sub r0, r0, r4
	cmp r4, r9
	movge r1, #0
	cmp r0, #8
	movgt r0, #8
	sub r3, r0, r1
	mov r0, r7
	mov r2, r8
	stmia sp, {r5, r10, r11}
	bl ClearChar
	ldr r0, [sp, #0x14]
	add r4, r4, #8
	add r7, r7, r0
	cmp r4, r6
	blt _02018EE8
_02018F2C:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r1, r0, #8
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x2c]
	cmp r1, r0
	blt _02018EA0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end ClearAreaLine

	arm_func_start ClearArea1D
ClearArea1D: ; 0x02018F5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	ldrb r4, [r0, #0xc]
	mov r10, r2
	mov r11, r1
	str r4, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r4, [sp, #0x70]
	cmp r1, #4
	add r1, r10, r4
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x74]
	mov r1, r3
	add r1, r1, r2
	bic r2, r10, #7
	str r1, [sp, #0x38]
	str r3, [sp, #0xc]
	str r2, [sp, #0x28]
	ldr r2, [sp, #0xc]
	orreq r1, r11, r11, lsl #4
	bic r2, r2, #7
	str r2, [sp, #0x40]
	ldr r2, [sp, #0x10]
	orreq r1, r1, r1, lsl #8
	mov r5, r2, lsl #6
	ldr r2, [sp, #0x38]
	mov r3, r5, asr #2
	add r6, r2, #7
	ldr r2, [sp, #0x28]
	add r3, r5, r3, lsr #29
	mov r4, r2, asr #2
	ldr r2, [sp, #0x40]
	orrne r1, r11, r11, lsl #8
	mov r5, r2, asr #2
	bic r2, r6, #7
	str r2, [sp, #0x34]
	mov r2, r3, asr #3
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x28]
	orr r11, r1, r1, lsl #16
	add r2, r2, r4, lsr #29
	mov r2, r2, asr #3
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x40]
	add r2, r2, r5, lsr #29
	mov r8, r2, asr #3
	ldr r2, [sp, #0x34]
	ldr r1, [r0, #0x10]
	cmp r3, r2
	ldr r2, [sp, #0x3c]
	add r2, r2, #7
	bic r7, r2, #7
	ldr r2, [r0, #4]
	str r2, [sp, #0x18]
	ldr r2, [r0, #8]
	ldr r0, [r0]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x30]
	mov r0, r1, lsl #0x18
	mov r0, r0, lsr #0x18
	str r0, [sp, #0x20]
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x18
	str r0, [sp, #0x24]
	addge sp, sp, #0x48
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02019068:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x2c]
	cmp r1, r0
	movlt r1, r0
	ldrlt r0, [sp, #0x40]
	sublt r9, r1, r0
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x40]
	movge r9, #0
	sub r0, r1, r0
	cmp r0, #8
	movgt r0, #8
	sub r5, r0, r9
	ldr r0, [sp, #0x28]
	cmp r0, r7
	mov r4, r0
	bge _02019124
_020190B0:
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r8
	bl GetCharIndex1D
	ldr r2, [sp, #0x3c]
	sub r1, r10, r4
	cmp r4, r10
	sub r2, r2, r4
	movge r1, #0
	cmp r2, #8
	movgt r2, #8
	stmia sp, {r5, r11}
	sub r3, r2, r1
	ldr r2, [sp, #0x10]
	ldr r12, [sp, #0x14]
	str r2, [sp, #8]
	ldr r2, [sp, #0x30]
	mla r0, r12, r0, r2
	mov r2, r9
	bl ClearChar
	add r4, r4, #8
	add r6, r6, #1
	cmp r4, r7
	blt _020190B0
_02019124:
	ldr r0, [sp, #0x40]
	add r8, r8, #1
	add r1, r0, #8
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x40]
	cmp r1, r0
	blt _02019068
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end ClearArea1D

	arm_func_start InitCharCanvas
InitCharCanvas: ; 0x02019148
	stmfd sp!, {r4, lr}
	ldr r4, [sp, #8]
	str r3, [r0, #8]
	strb r4, [r0, #0xc]
	ldr lr, [sp, #0xc]
	stmia r0, {r1, r2}
	ldr r12, [sp, #0x10]
	str lr, [r0, #0x14]
	str r12, [r0, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end InitCharCanvas

	arm_func_start NNS_G2dCharCanvasDrawChar
NNS_G2dCharCanvasDrawChar: ; 0x02019170
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r1
	ldrh r1, [sp, #0x2c]
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl NNS_G2dFontFindGlyphIndex
	ldr r1, _02019288 ; =0x0000FFFF
	mov r4, r0
	cmp r4, r1
	ldreq r0, [r7]
	ldreqh r4, [r0, #2]
	mov r0, r7
	mov r1, r4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldr r3, [r7]
	str r0, [sp, #8]
	ldr r2, [r3, #8]
	ldrh r1, [r2, #2]
	add r2, r2, #8
	mla r1, r4, r1, r2
	str r1, [sp, #0xc]
	ldr r3, [r3, #8]
	ldrb r1, [r3, #7]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0201924C
_020191E4: ; jump table
	b _02019204 ; case 0
	b _02019210 ; case 1
	b _02019210 ; case 2
	b _02019224 ; case 3
	b _02019224 ; case 4
	b _0201923C ; case 5
	b _0201923C ; case 6
	b _02019204 ; case 7
_02019204:
	ldrsb r0, [r0]
	add r6, r6, r0
	b _0201924C
_02019210:
	ldrb r1, [r3]
	ldrsb r0, [r0]
	sub r6, r6, r1
	add r5, r5, r0
	b _0201924C
_02019224:
	ldrsb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r0, [r3, #1]
	add r1, r2, r1
	sub r6, r6, r1
	b _02019248
_0201923C:
	ldrsb r1, [r0]
	ldrb r0, [r3, #1]
	add r0, r1, r0
_02019248:
	sub r5, r5, r0
_0201924C:
	ldr r0, [sp, #0x28]
	add r1, sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r8, #0x14]
	mov r1, r7
	ldr r4, [r0]
	mov r0, r8
	mov r2, r6
	mov r3, r5
	blx r4
	ldr r0, [sp, #8]
	ldrsb r0, [r0, #2]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02019288: .word 0x0000FFFF
	arm_func_end NNS_G2dCharCanvasDrawChar

	arm_func_start NNS_G2dCharCanvasInitForBG
NNS_G2dCharCanvasInitForBG: ; 0x0201928C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x10]
	ldr r12, _020192B4 ; =0x0208BF08
	str lr, [sp]
	str r12, [sp, #4]
	str r2, [sp, #8]
	bl InitCharCanvas
	add sp, sp, #0xc
	ldmia sp!, {pc}
_020192B4: .word VTABLE_BG
	arm_func_end NNS_G2dCharCanvasInitForBG

	arm_func_start NNS_G2dCharCanvasInitForOBJ1D
NNS_G2dCharCanvasInitForOBJ1D: ; 0x020192B8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	cmp r2, #8
	movlt r4, r2
	movge r6, #3
	clzlt r4, r4
	rsblt r6, r4, #0x1f
	cmp r3, #8
	movlt r4, r3
	movge r5, #3
	clzlt r4, r4
	rsblt r5, r4, #0x1f
	ldr r4, _02019334 ; =0x0208BF20
	ldr lr, [sp, #0x20]
	add r5, r4, r5, lsl #3
	add r4, r5, r6, lsl #1
	ldrb r4, [r4, #1]
	ldr r12, [sp, #0xc]
	ldrb r5, [r5, r6, lsl #1]
	bic r6, r12, #0xff
	ldr r12, _02019338 ; =0x0208BF14
	str lr, [sp]
	orr r5, r6, r5
	bic lr, r5, #0xff00
	mov r4, r4, lsl #0x18
	str r12, [sp, #4]
	orr r4, lr, r4, lsr #16
	str r4, [sp, #8]
	bl InitCharCanvas
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_02019334: .word unk_0208BF20
_02019338: .word VTABLE_OBJ1D
	arm_func_end NNS_G2dCharCanvasInitForOBJ1D

	arm_func_start NNS_G2dMapScrToCharText
NNS_G2dMapScrToCharText: ; 0x0201933C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x24]
	ldr lr, [sp, #0x20]
	cmp r5, #0x20
	ldr r12, [sp, #0x28]
	bgt _02019378
	mla r4, r5, lr, r3
	ldr lr, [sp, #0x2c]
	mov r3, r5
	add r0, r0, r4, lsl #1
	stmia sp, {r12, lr}
	bl NNS_G2dMapScrToChar256x16Pltt
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02019378:
	add r6, lr, r2
	ldr r4, [sp, #0x2c]
	cmp lr, r6
	add r5, r3, r1
	addge sp, sp, #8
	mov r1, r4, lsl #0x1c
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
_02019394:
	mov r2, lr
	cmp lr, #0x20
	addge r2, lr, #0x20
	mov r7, r3
	cmp r3, r5
	add r8, r0, r2, lsl #6
	bge _020193D8
_020193B0:
	mov r2, r7
	cmp r7, #0x20
	addge r2, r7, #0x3e0
	orr r4, r12, r1, lsr #16
	mov r2, r2, lsl #1
	add r7, r7, #1
	strh r4, [r8, r2]
	cmp r7, r5
	add r12, r12, #1
	blt _020193B0
_020193D8:
	add lr, lr, #1
	cmp lr, r6
	blt _02019394
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_G2dMapScrToCharText

	arm_func_start NNS_G2dMapScrToChar256x16Pltt
NNS_G2dMapScrToChar256x16Pltt: ; 0x020193EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [sp, #0x1c]
	ldr r8, [sp, #0x18]
	mov r6, #0
	cmp r2, #0
	mov r12, r4, lsl #0x1c
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, r6
_0201940C:
	mov r7, r0
	mov r5, r4
	cmp r1, #0
	ble _02019434
_0201941C:
	orr lr, r8, r12, lsr #16
	add r5, r5, #1
	cmp r5, r1
	add r8, r8, #1
	strh lr, [r7], #2
	blt _0201941C
_02019434:
	add r6, r6, #1
	cmp r6, r2
	add r0, r0, r3, lsl #1
	blt _0201940C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_G2dMapScrToChar256x16Pltt

	arm_func_start NNSi_G2dCalcRequiredOBJ
NNSi_G2dCalcRequiredOBJ: ; 0x02019448
	stmfd sp!, {r3, r4, r5, lr}
	mov r3, r0, lsr #3
	mov r5, r1, lsr #3
	mul lr, r3, r5
	and r4, r0, #2
	and r2, r0, #1
	add r2, r2, r4, lsr #1
	and r0, r0, #4
	mov r12, r2, lsl #1
	add lr, lr, #0
	add r12, r12, r0, lsr #2
	mla r12, r5, r12, lr
	and r4, r1, #2
	and lr, r1, #1
	add r4, lr, r4, lsr #1
	and lr, r1, #4
	mov r1, r4, lsl #1
	add r1, r1, lr, lsr #2
	mla r12, r3, r1, r12
	add r1, r2, r0, lsr #2
	add r0, r4, lr, lsr #2
	mla r0, r1, r0, r12
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G2dCalcRequiredOBJ

	arm_func_start NNS_G2dArrangeOBJ1D
NNS_G2dArrangeOBJ1D: ; 0x020194A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r6, r0
	mov r0, r1
	cmp r0, #8
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x10]
	str r0, [sp, #0x60]
	str r2, [sp, #0x14]
	ldrlt r0, [sp, #0x10]
	str r3, [sp, #0x38]
	ldr r11, [sp, #0x64]
	ldr r5, [sp, #0x68]
	ldr r4, [sp, #0x6c]
	movge r2, #3
	clzlt r0, r0
	rsblt r2, r0, #0x1f
	ldr r0, [sp, #0x14]
	cmp r0, #8
	ldrlt r0, [sp, #0x14]
	movge r1, #3
	clzlt r0, r0
	rsblt r1, r0, #0x1f
	ldr r0, _02019798 ; =0x0208BF20
	mvn r3, #0
	add r1, r0, r1, lsl #3
	add r0, r1, r2, lsl #1
	ldrb r1, [r1, r2, lsl #1]
	ldr r2, [sp, #0x10]
	cmp r11, #0
	str r1, [sp, #0x34]
	ldrb r1, [r0, #1]
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x34]
	and r1, r2, r3, lsl r1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x30]
	and r1, r2, r3, lsl r1
	str r1, [sp, #0x28]
	moveq r1, #1
	streq r1, [sp, #0x18]
	movne r1, #2
	strne r1, [sp, #0x18]
	mov r1, #0
	str r1, [sp, #0x24]
	bl OBJSizeToShape
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x34]
	mov r9, r2, asr r1
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x30]
	mov r1, r2, asr r1
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x34]
	mov r2, r2, lsl r1
	ldr r1, [sp, #0x30]
	mov r8, r2, lsl r1
	ldr r1, [sp, #0x24]
	b _02019628
_02019598:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	mov r10, #0
	mov r2, r2, lsl r1
	ldr r1, [sp, #0x60]
	add r1, r1, r2, lsl #3
	mov r2, #0x400
	and r12, r1, #0xff
	rsb r2, r2, #0
	b _02019618
_020195C0:
	ldr r1, [sp, #0x34]
	ldr lr, [r6]
	mov r3, r10, lsl r1
	ldr r1, [sp, #0x38]
	add r10, r10, #1
	add r1, r1, r3, lsl #3
	mov r7, r1, lsl #0x17
	ldr r1, _0201979C ; =0xFE00FF00
	ldrh r3, [r6, #4]
	and r1, lr, r1
	orr r1, r1, r12
	orr r7, r1, r7, lsr #7
	ldr r1, _020197A0 ; =0x3FFF3FFF
	and r3, r3, r2
	orr r3, r3, r5
	and r1, r7, r1
	orr r1, r1, r0
	bic r1, r1, #0x2000
	orr r1, r1, r11, lsl #13
	strh r3, [r6, #4]
	add r5, r5, r8, asr r4
	str r1, [r6], #8
_02019618:
	cmp r10, r9
	blt _020195C0
	ldr r1, [sp, #0x1c]
	add r1, r1, #1
_02019628:
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	cmp r2, r1
	blt _02019598
	ldr r0, [sp, #0x24]
	mla r0, r9, r1, r0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhs _020196B4
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x10]
	stmia sp, {r0, r11}
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x2c]
	sub r7, r1, r0
	ldr r1, [sp, #0x38]
	str r5, [sp, #8]
	add r3, r1, r2, lsl #3
	ldr r2, [sp, #0x28]
	mov r0, r6
	mov r1, r7
	str r4, [sp, #0xc]
	bl NNS_G2dArrangeOBJ1D
	ldr r1, [sp, #0x18]
	add r6, r6, r0, lsl #3
	mul r2, r1, r7
	ldr r1, [sp, #0x28]
	mul r2, r1, r2
	ldr r1, [sp, #0x24]
	add r5, r5, r2, lsr r4
	add r0, r1, r0
	str r0, [sp, #0x24]
_020196B4:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _02019720
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x38]
	add r0, r1, r0, lsl #3
	stmia sp, {r0, r11}
	str r5, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	str r4, [sp, #0xc]
	sub r7, r1, r0
	ldr r1, [sp, #0x2c]
	mov r0, r6
	mov r2, r7
	bl NNS_G2dArrangeOBJ1D
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	add r6, r6, r0, lsl #3
	mul r1, r2, r1
	mul r1, r7, r1
	add r5, r5, r1, lsr r4
	ldr r1, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x24]
_02019720:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	ldrlo r1, [sp, #0x28]
	ldrlo r0, [sp, #0x14]
	cmplo r1, r0
	bhs _0201978C
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	add r0, r1, r0, lsl #3
	stmia sp, {r0, r11}
	str r5, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x14]
	sub r1, r2, r1
	ldr r2, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	sub r2, r3, r2
	ldr r3, [sp, #0x38]
	mov r0, r6
	add r3, r3, r5, lsl #3
	str r4, [sp, #0xc]
	bl NNS_G2dArrangeOBJ1D
	ldr r1, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0x24]
_0201978C:
	ldr r0, [sp, #0x24]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02019798: .word unk_0208BF20
_0201979C: .word 0xFE00FF00
_020197A0: .word 0x3FFF3FFF
	arm_func_end NNS_G2dArrangeOBJ1D

	arm_func_start NNSi_G2dTextCanvasDrawString
NNSi_G2dTextCanvasDrawString: ; 0x020197A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r0, [sp, #0x38]
	ldr r4, [r10, #4]
	str r0, [sp, #0xc]
	ldr r5, [r4, #4]
	add r0, sp, #0xc
	mov r9, r1
	mov r8, r2
	str r3, [sp, #8]
	ldrsb r7, [sp, #0x41]
	ldr r11, [r10, #8]
	blx r5
	cmp r0, #0
	beq _0201982C
	ldrsb r6, [sp, #0x40]
_020197E8:
	cmp r0, #0xa
	beq _0201982C
	ldr r1, [sp, #8]
	mov r2, r9
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r10]
	mov r1, r4
	mov r3, r8
	bl NNS_G2dCharCanvasDrawChar
	add r0, r11, r0
	mla r9, r0, r6, r9
	mla r8, r0, r7, r8
	add r0, sp, #0xc
	blx r5
	cmp r0, #0
	bne _020197E8
_0201982C:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0xa
	ldreq r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	movne r1, #0
	str r1, [r0]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NNSi_G2dTextCanvasDrawString

	arm_func_start NNSi_G2dTextCanvasDrawTextAlign
NNSi_G2dTextCanvasDrawTextAlign: ; 0x02019858
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	ldr r0, [r10, #4]
	ldr r4, [sp, #0x60]
	ldr r0, [r0]
	ldrsb r7, [sp, #0x65]
	ldrsb r0, [r0, #1]
	ldr r5, [r10, #0xc]
	ldrsb r8, [sp, #0x64]
	add r5, r5, r0
	rsb r0, r7, #0
	mul r0, r5, r0
	str r0, [sp, #0x1c]
	mul r0, r5, r8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x58]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r9, r3
	str r4, [sp, #0x2c]
	cmp r4, #0
	str r0, [sp, #0x58]
	mov r4, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [sp, #0x5c]
	add r1, r9, #1
	and r0, r2, #0x800
	str r0, [sp, #0x14]
	add r0, r1, r1, lsr #31
	str r0, [sp, #0x28]
	ldrb r0, [sp, #0x64]
	and r11, r2, #0x400
	str r0, [sp, #0x20]
	ldrb r0, [sp, #0x65]
	str r0, [sp, #0x24]
_020198EC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	cmp r0, #0
	ldr r0, [sp, #0xc]
	mla r5, r4, r1, r0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mla r6, r4, r1, r0
	beq _02019928
	ldr r2, [sp, #0x2c]
	mov r3, #0
	ldmib r10, {r0, r1}
	bl NNSi_G2dFontGetStringWidth
	sub r0, r9, r0
	b _02019954
_02019928:
	cmp r11, #0
	beq _0201995C
	ldr r2, [sp, #0x2c]
	mov r3, #0
	ldmib r10, {r0, r1}
	bl NNSi_G2dFontGetStringWidth
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	mov r1, r0, asr #1
	ldr r0, [sp, #0x28]
	rsb r0, r1, r0, asr #1
_02019954:
	mla r5, r0, r8, r5
	mla r6, r0, r7, r6
_0201995C:
	ldr r3, [sp, #0x2c]
	mov r1, r5
	str r3, [sp]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	mov r2, r6
	strb r3, [sp, #8]
	ldr r3, [sp, #0x24]
	mov r0, r10
	strb r3, [sp, #9]
	ldr r3, [sp, #0x58]
	bl NNSi_G2dTextCanvasDrawString
	ldr r0, [sp, #0x2c]
	add r4, r4, #1
	cmp r0, #0
	bne _020198EC
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NNSi_G2dTextCanvasDrawTextAlign

	arm_func_start NNSi_G2dTextCanvasDrawText
NNSi_G2dTextCanvasDrawText: ; 0x020199A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldr r4, [sp, #0x44]
	mov r5, r3
	str r4, [sp]
	ldr r3, [r8, #0xc]
	add r0, sp, #0x18
	mov r7, r1
	mov r6, r2
	ldmib r8, {r1, r2}
	ldr r4, [sp, #0x40]
	bl NNSi_G2dFontGetTextRect
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	tst r4, #0x10
	beq _02019A20
	add r0, r2, #1
	rsb r0, r0, #0
	add r0, r0, r0, lsr #31
	ldrsb r1, [sp, #0x48]
	mov r2, r0, asr #1
	ldrsb r0, [sp, #0x49]
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
	b _02019A38
_02019A20:
	tst r4, #0x20
	ldrnesb r1, [sp, #0x48]
	rsbne r2, r2, #0
	ldrnesb r0, [sp, #0x49]
	mlane r7, r2, r1, r7
	mlane r6, r2, r0, r6
_02019A38:
	tst r4, #2
	beq _02019A6C
	ldr r0, [sp, #0x24]
	ldrsb r2, [sp, #0x49]
	add r0, r0, #1
	rsb r0, r0, #0
	add r0, r0, r0, lsr #31
	ldrsb r1, [sp, #0x48]
	mov r3, r0, asr #1
	rsb r0, r2, #0
	mla r7, r3, r0, r7
	mla r6, r3, r1, r6
	b _02019A90
_02019A6C:
	tst r4, #4
	beq _02019A90
	ldrsb r1, [sp, #0x49]
	ldr r2, [sp, #0x24]
	ldrsb r0, [sp, #0x48]
	rsb r2, r2, #0
	rsb r1, r1, #0
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
_02019A90:
	str r5, [sp]
	ldr r1, [sp, #0x44]
	str r4, [sp, #4]
	ldrb r0, [sp, #0x48]
	str r1, [sp, #8]
	ldrb r4, [sp, #0x49]
	strb r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	strb r4, [sp, #0xd]
	bl NNSi_G2dTextCanvasDrawTextAlign
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G2dTextCanvasDrawText

	arm_func_start NNSi_G2dTextCanvasDrawTextRect
NNSi_G2dTextCanvasDrawTextRect: ; 0x02019ACC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r12, [sp, #0x30]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	tst r12, #0x100
	beq _02019B20
	ldr r0, [r7, #4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x34]
	bl NNSi_G2dFontGetTextHeight
	ldrsb r2, [sp, #0x39]
	ldr r3, [sp, #0x28]
	ldrsb r1, [sp, #0x38]
	sub r3, r3, r0
	rsb r0, r2, #0
	mla r6, r3, r0, r6
	mla r5, r3, r1, r5
	b _02019B68
_02019B20:
	tst r12, #0x80
	beq _02019B68
	ldr r0, [r7, #4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x34]
	bl NNSi_G2dFontGetTextHeight
	ldr r1, [sp, #0x28]
	add r0, r0, #1
	ldrsb r3, [sp, #0x39]
	add r12, r1, #1
	add r1, r0, r0, lsr #31
	ldrsb r2, [sp, #0x38]
	add r0, r12, r12, lsr #31
	mov r1, r1, asr #1
	rsb r1, r1, r0, asr #1
	rsb r0, r3, #0
	mla r6, r1, r0, r6
	mla r5, r1, r2, r5
_02019B68:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x34]
	str r0, [sp, #4]
	ldrb r0, [sp, #0x38]
	str r1, [sp, #8]
	ldrb r12, [sp, #0x39]
	strb r0, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb r12, [sp, #0xd]
	bl NNSi_G2dTextCanvasDrawTextAlign
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_G2dTextCanvasDrawTextRect

	arm_func_start NNSi_G2dGetUnpackedFont
NNSi_G2dGetUnpackedFont: ; 0x02019BAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	movs r7, r0
	mov r6, r1
	mov r5, r4
	beq _02019C28
	cmp r7, #0
	beq _02019BE0
	ldr r1, [r7]
	ldr r0, _02019D60 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _02019BE4
_02019BE0:
	mov r0, #0
_02019BE4:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02019C2C
	cmp r7, #0
	beq _02019C14
	ldrh r1, [r7, #6]
	ldr r0, _02019D64 ; =0x00000102
	cmp r1, r0
	movhs r0, #1
	bhs _02019C18
_02019C14:
	mov r0, #0
_02019C18:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _02019C2C
_02019C28:
	mov r0, r5
_02019C2C:
	cmp r0, #0
	bne _02019D20
	cmp r7, #0
	beq _02019C9C
	beq _02019C54
	ldr r1, [r7]
	ldr r0, _02019D60 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _02019C58
_02019C54:
	mov r0, #0
_02019C58:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02019CA0
	cmp r7, #0
	beq _02019C88
	ldrh r1, [r7, #6]
	ldr r0, _02019D68 ; =0x00000101
	cmp r1, r0
	movhs r0, #1
	bhs _02019C8C
_02019C88:
	mov r0, #0
_02019C8C:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _02019CA0
_02019C9C:
	mov r0, #0
_02019CA0:
	cmp r0, #0
	bne _02019D20
	cmp r7, #0
	beq _02019D0C
	beq _02019CC8
	ldr r1, [r7]
	ldr r0, _02019D60 ; =0x4E465452
	cmp r1, r0
	moveq r0, #1
	beq _02019CCC
_02019CC8:
	mov r0, #0
_02019CCC:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02019D10
	cmp r7, #0
	beq _02019CF8
	ldrh r0, [r7, #6]
	cmp r0, #0x100
	movhs r0, #1
	bhs _02019CFC
_02019CF8:
	mov r0, #0
_02019CFC:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	b _02019D10
_02019D0C:
	mov r0, #0
_02019D10:
	cmp r0, #0
	bne _02019D1C
	bl OS_Terminate
_02019D1C:
	mov r5, #1
_02019D20:
	mov r0, r7
	bl NNSi_G2dUnpackNFT
	ldr r1, _02019D6C ; =0x46494E46
	mov r0, r7
	bl NNS_G2dFindBinaryBlock
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #8
	str r0, [r6]
	cmp r5, #0
	ldrne r0, [r0, #8]
	strneb r4, [r0, #7]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02019D60: .word 0x4E465452
_02019D64: .word 0x00000102
_02019D68: .word 0x00000101
_02019D6C: .word 0x46494E46
	arm_func_end NNSi_G2dGetUnpackedFont

	arm_func_start NNSi_G2dUnpackNFT
NNSi_G2dUnpackNFT: ; 0x02019D70
	stmfd sp!, {r4, r5, r6, lr}
	ldrh r1, [r0, #0xc]
	ldrh r3, [r0, #0xe]
	mov r2, #0
	add r1, r0, r1
	cmp r3, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r3, _02019E38 ; =0x46494E46
	ldr r12, _02019E3C ; =0x43574448
	ldr r4, _02019E40 ; =0x434D4150
	ldr lr, _02019E44 ; =0x43474C50
_02019D9C:
	ldr r5, [r1]
	cmp r5, r4
	bhi _02019DB0
	bhs _02019E0C
	b _02019E1C
_02019DB0:
	cmp r5, r12
	bhi _02019DC0
	beq _02019DF8
	b _02019E1C
_02019DC0:
	cmp r5, r3
	bne _02019E1C
	ldr r5, [r1, #0x10]
	add r5, r5, r0
	str r5, [r1, #0x10]
	ldr r5, [r1, #0x14]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x14]
	ldr r5, [r1, #0x18]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x18]
	b _02019E1C
_02019DF8:
	ldr r5, [r1, #0xc]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0xc]
	b _02019E1C
_02019E0C:
	ldr r5, [r1, #0x10]
	cmp r5, #0
	addne r5, r5, r0
	strne r5, [r1, #0x10]
_02019E1C:
	ldrh r5, [r0, #0xe]
	ldr r6, [r1, #4]
	add r2, r2, #1
	cmp r2, r5
	add r1, r1, r6
	blt _02019D9C
	ldmfd sp!, {r4, r5, r6, pc}
_02019E38: .word 0x46494E46
_02019E3C: .word 0x43574448
_02019E40: .word 0x434D4150
_02019E44: .word 0x43474C50
	arm_func_end NNSi_G2dUnpackNFT

	arm_func_start NNSi_G2dBitReaderRead
NNSi_G2dBitReaderRead: ; 0x02019E48
	stmfd sp!, {r4, r5, r6, lr}
	ldrsb r3, [r0, #4]
	ldrb r4, [r0, #5]
	mov r5, r1
	cmp r3, r5
	subge r1, r3, r5
	movge r2, r4, lsr r1
	strgeb r1, [r0, #4]
	bge _02019E98
	ldr r2, [r0]
	sub r6, r5, r3
	add r1, r2, #1
	str r1, [r0]
	ldrb r3, [r2]
	mov r2, #8
	mov r1, r6
	strb r3, [r0, #5]
	strb r2, [r0, #4]
	bl NNSi_G2dBitReaderRead
	orr r2, r0, r4, lsl r6
_02019E98:
	rsb r0, r5, #8
	mov r1, #0xff
	and r0, r2, r1, asr r0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G2dBitReaderRead

	arm_func_start NNSi_G2dSplitCharUTF16
NNSi_G2dSplitCharUTF16: ; 0x02019EA8
	ldr r1, [r0]
	ldrh r2, [r1], #2
	str r1, [r0]
	mov r0, r2
	bx lr
	arm_func_end NNSi_G2dSplitCharUTF16

	arm_func_start NNSi_G2dSplitCharShiftJIS
NNSi_G2dSplitCharShiftJIS: ; 0x02019EBC
	ldr r1, [r0]
	ldrb r3, [r1]
	cmp r3, #0x81
	blo _02019ED4
	cmp r3, #0xa0
	blo _02019EDC
_02019ED4:
	cmp r3, #0xe0
	blo _02019EFC
_02019EDC:
	ldrb r1, [r1, #1]
	ldr r2, [r0]
	orr r1, r1, r3, lsl #8
	mov r1, r1, lsl #0x10
	add r2, r2, #2
	str r2, [r0]
	mov r3, r1, lsr #0x10
	b _02019F08
_02019EFC:
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
_02019F08:
	mov r0, r3
	bx lr
	arm_func_end NNSi_G2dSplitCharShiftJIS

	.rodata
	.global g2d_unk
g2d_unk:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.word DrawGlyphLine
	.word ClearLine
	.word ClearAreaLine
	.global VTABLE_BG
VTABLE_BG:
	.word DrawGlyphLine
	.word ClearContinuous
	.word ClearAreaLine
	.global VTABLE_OBJ1D
VTABLE_OBJ1D:
	.word DrawGlyph1D
	.word ClearContinuous
	.word ClearArea1D
	.global unk_0208BF20
unk_0208BF20:
	.byte 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x01, 0x02, 0x01
	.byte 0x00, 0x02, 0x01, 0x02, 0x02, 0x02, 0x03, 0x02, 0x00, 0x02, 0x01, 0x02, 0x02, 0x03, 0x03, 0x03
	.global unk_0208BF40
unk_0208BF40:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x40, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x40, 0x00, 0x80, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x40, 0x00, 0xC0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xC0

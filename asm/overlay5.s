
	.include "/macros/function.inc"
	.include "/include/overlay5.inc"

	.text
	arm_func_start FUN_ov5_020bcb40
FUN_ov5_020bcb40: ; 0x020BCB40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xc]
	mov r4, r0
	blx r2
	mov r7, #0
	mov r0, r4
	mov r1, r7
	mov r2, r7
	str r7, [r4, #0x80]
	str r7, [r4, #0x84]
	bl FUN_02041f74
	mov r6, #1
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_02041f74
	mov r0, r4
	mov r1, r7
	mov r5, #0xa
	mov r2, r5
	bl FUN_02041eac
	mov r2, r5
	mov r0, r4
	mov r1, r6
	bl FUN_02041eac
	strb r6, [r4, #0x88]
	strb r7, [r4, #0x89]
	bl FUN_ov16_020f13d4
	ldr r6, _020BCC40 ; =gL5Sound
	mov r1, #4
	mov r0, r6
	mov r2, r7
	mov r3, r7
	bl FUN_0202b838
	mov r0, r6
	bl FUN_0202b7b4
	cmp r0, #0
	bne _020BCBFC
	mov r5, #0x14
_020BCBE4:
	mov r0, r5
	bl OS_Sleep
	mov r0, r6
	bl FUN_0202b7b4
	cmp r0, #0
	beq _020BCBE4
_020BCBFC:
	ldr r6, _020BCC40 ; =gL5Sound
	mov r0, r6
	bl FUN_0202b7f0
	cmp r0, #0
	bne _020BCC2C
	mov r5, #0x14
_020BCC14:
	mov r0, r5
	bl OS_Sleep
	mov r0, r6
	bl FUN_0202b7f0
	cmp r0, #0
	beq _020BCC14
_020BCC2C:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BCC40: .word gL5Sound
	arm_func_end FUN_ov5_020bcb40

	arm_func_start FUN_ov5_020bcc44
FUN_ov5_020bcc44: ; 0x020BCC44
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCC64
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCC64:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BCC7C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCC7C:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0x28]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bcc44

	arm_func_start FUN_ov5_020bcc94
FUN_ov5_020bcc94: ; 0x020BCC94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0204201c
	mov r4, r0
	mov r0, r5
	bl FUN_02041fec
	cmp r4, r0
	bne _020BCCC0
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _020BCD48
_020BCCC0:
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCCE0
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BCD48
_020BCCE0:
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCCF8
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCCF8:
	cmp r4, #1
	beq _020BCD18
	cmp r4, #0xa
	addeq r0, r5, #0x90
	streq r0, [r5, #0x80]
	movne r0, #0
	strne r0, [r5, #0x80]
	b _020BCD20
_020BCD18:
	add r0, r5, #0xd0
	str r0, [r5, #0x80]
_020BCD20:
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041f74
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCD48
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BCD48:
	mov r0, r5
	bl FUN_02042084
	mov r4, r0
	mov r0, r5
	bl FUN_02042054
	cmp r4, r0
	bne _020BCD70
	ldrb r0, [r5, #5]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BCD70:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BCD90
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_020BCD90:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BCDA8
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCDA8:
	cmp r4, #0xa
	addeq r0, r5, #0x118
	movne r0, #0
	str r0, [r5, #0x84]
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041f74
	ldr r0, [r5, #0x84]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov5_020bcc94

	arm_func_start FUN_ov5_020bcde4
FUN_ov5_020bcde4: ; 0x020BCDE4
	stmfd sp!, {r4, lr}
	ldr r2, _020BCE24 ; =0x04000304
	movs r4, r1
	ldrh r0, [r2]
	cmpne r4, #2
	orr r0, r0, #0x8000
	strh r0, [r2]
	bne _020BCE0C
	mov r0, #5
	bl FUN_ov16_020f3f60
_020BCE0C:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #5
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
_020BCE24: .word 0x04000304
	arm_func_end FUN_ov5_020bcde4

	arm_func_start FUN_ov5_020bce28
FUN_ov5_020bce28: ; 0x020BCE28
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BCE3C
	bl FUN_ov16_020f47fc
_020BCE3C:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020BCE4C
	bl FUN_ov16_020f51a8
_020BCE4C:
	cmp r4, #2
	bne _020BCE64
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
_020BCE64:
	ldr r1, _020BCE78 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldmfd sp!, {r4, pc}
_020BCE78: .word 0x04000304
	arm_func_end FUN_ov5_020bce28

	arm_func_start FUN_ov5_020bce7c
FUN_ov5_020bce7c: ; 0x020BCE7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bce7c

	arm_func_start FUN_ov5_020bce98
FUN_ov5_020bce98: ; 0x020BCE98
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bce98

	arm_func_start FUN_ov5_020bceac
FUN_ov5_020bceac: ; 0x020BCEAC
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x10]
	cmp r2, #0x1e
	ldrgeb r0, [r0, #0xc]
	cmpge r0, #0
	ldmnefd sp!, {r3, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020BCED8 ; =gL5Movie
	bl _ZN7L5Movie12FUN_0202e958Ev
	ldmfd sp!, {r3, pc}
_020BCED8: .word gL5Movie
	arm_func_end FUN_ov5_020bceac

	arm_func_start FUN_ov5_020bcedc
FUN_ov5_020bcedc: ; 0x020BCEDC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0x1e
	ldmltfd sp!, {r4, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _020BCF10
	ldrh r0, [r1, #6]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BCF10:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _020BCF24
	ldr r0, _020BCF30 ; =gL5Movie
	bl _ZN7L5Movie12FUN_0202e958Ev
_020BCF24:
	mov r0, #0
	strb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BCF30: .word gL5Movie
	arm_func_end FUN_ov5_020bcedc

	arm_func_start FUN_ov5_020bcf34
FUN_ov5_020bcf34: ; 0x020BCF34
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	mov r2, #1
	ldr r0, [r4, #4]
	str r2, [r4, #8]
	strb r1, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldr r0, _020BCF9C ; =gL5Config
	ldr r1, _020BCFA0 ; =0x020BD9BC
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	beq _020BCF7C
	cmp r0, #1
	beq _020BCF8C
_020BCF7C:
	ldr r1, _020BCFA4 ; =0x020BD9C4
	add r0, r4, #0x14
	bl FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
_020BCF8C:
	ldr r1, _020BCFA8 ; =0x020BD9CC
	add r0, r4, #0x14
	bl FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
_020BCF9C: .word gL5Config
_020BCFA0: .word ov5_020BD9BC
_020BCFA4: .word ov5_020BD9C4
_020BCFA8: .word ov5_020BD9CC
	arm_func_end FUN_ov5_020bcf34

	arm_func_start FUN_ov5_020bcfac
FUN_ov5_020bcfac: ; 0x020BCFAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #0x10]
	cmp r0, #1
	beq _020BCFD4
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
_020BCFD4:
	bl FUN_ov16_020f2aa4
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x14
	bl FUN_ov16_020f2a74
	mov r1, #0
	mov r0, #1
	str r1, [r4, #8]
	bl FUN_02029d44
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bcfac

	arm_func_start FUN_ov5_020bcffc
FUN_ov5_020bcffc:
	ldr r12, _020BD004 ; =FUN_ov16_020f2ab4
	bx r12
_020BD004: .word FUN_ov16_020f2ab4
	arm_func_end FUN_ov5_020bcffc

	arm_func_start FUN_ov5_020bd008
FUN_ov5_020bd008: ; 0x020BD008
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl GX_ResetBankForBG
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bd008

	arm_func_start FUN_ov5_020bd02c
FUN_ov5_020bd02c: ; 0x020BD02C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bd02c

	arm_func_start FUN_ov5_020bd040
FUN_ov5_020bd040: ; 0x020BD040
	ldr r1, [r0, #8]
	cmp r1, #4
	bx lr
	arm_func_end FUN_ov5_020bd040

	arm_func_start FUN_ov5_020bd04c
FUN_ov5_020bd04c: ; 0x020BD04C
	ldr r2, [r0, #8]
	cmp r2, #4
	bxne lr
	ldrh r2, [r1, #4]
	cmp r2, #1
	bne _020BD094
	ldrh r2, [r1, #6]
	cmp r2, #0
	bxne lr
	ldrb r2, [r0, #0x14]
	cmp r2, #0
	moveq r2, #1
	streqb r2, [r0, #0x14]
	ldrh r2, [r1]
	str r2, [r0, #0x18]
	ldrh r1, [r1, #2]
	str r1, [r0, #0x1c]
	bx lr
_020BD094:
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov5_020bd04c

	arm_func_start FUN_ov5_020bd0a0
FUN_ov5_020bd0a0: ; 0x020BD0A0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020BD0E8 ; =gL5Allocator
	mov r4, #1
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r0, _020BD0EC ; =0x020BDA60
	add r1, r6, #0x24
	bl FUN_ov16_020f3054
	mov r0, r5
	mov r1, r4
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r0, _020BD0F0 ; =0x020BDA84
	add r1, r6, #0x30
	bl FUN_ov16_020f3054
	str r4, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD0E8: .word gL5Allocator
_020BD0EC: .word ov5_020BDA60
_020BD0F0: .word ov5_020BDA84
	arm_func_end FUN_ov5_020bd0a0

	arm_func_start FUN_ov5_020bd0f4
FUN_ov5_020bd0f4: ; 0x020BD0F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	ldr r6, _020BD138 ; =gL5Allocator
	mov r9, r0
	mov r5, r7
	mov r4, #0xc
_020BD10C:
	mla r8, r7, r4, r9
	ldr r1, [r8, #0x24]
	cmp r1, #0
	beq _020BD128
	mov r0, r6
	bl _ZN11L5Allocator10deallocateEPv
	str r5, [r8, #0x24]
_020BD128:
	add r7, r7, #1
	cmp r7, #2
	blt _020BD10C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD138: .word gL5Allocator
	arm_func_end FUN_ov5_020bd0f4

	arm_func_start FUN_ov5_020bd13c
FUN_ov5_020bd13c: ; 0x020BD13C
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mla r0, r1, r2, r0
	ldr r5, [r0, #0x24]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Char
	bl GX_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov5_020bd13c

	arm_func_start FUN_ov5_020bd19c
FUN_ov5_020bd19c: ; 0x020BD19C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #1
	beq _020BD1C0
	cmp r1, #2
	beq _020BD1CC
	ldmfd sp!, {r3, pc}
_020BD1C0:
	mov r1, #0
	bl FUN_ov5_020bd13c
	ldmfd sp!, {r3, pc}
_020BD1CC:
	mov r1, #1
	bl FUN_ov5_020bd13c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov5_020bd19c

	arm_func_start FUN_ov5_020bd1d8
FUN_ov5_020bd1d8: ; 0x020BD1D8
	ldr r12, _020BD1F8 ; =FUN_ov5_020bd0a0
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x20]
	strb r1, [r0, #0x22]
	bx r12
_020BD1F8: .word FUN_ov5_020bd0a0
	arm_func_end FUN_ov5_020bd1d8

	arm_func_start FUN_ov5_020bd1fc
FUN_ov5_020bd1fc: ; 0x020BD1FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, #0
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020BD218: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _020BD234 ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	b _020BD240 ; case 3
	b _020BD2D4 ; case 4
	b _020BD34C ; case 5
	b _020BD3C4 ; case 6
_020BD234:
	mov r0, #2
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD240:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020BD260
	mov r6, #8
	mov r1, r6
	mov r0, r4
	bl FUN_ov16_020f1560
	b _020BD290
_020BD260:
	cmp r0, #1
	bne _020BD280
	ldr r0, _020BD3F8 ; =gL5Sound
	ldr r1, _020BD3FC ; =0x000083DE
	bl FUN_0202cf6c
	mov r0, #6
	bl FUN_ov16_020f1490
	b _020BD29C
_020BD280:
	mov r6, #8
	mov r1, r6
	mov r0, r4
	bl FUN_ov16_020f14b4
_020BD290:
	mov r1, r6
	mov r0, #1
	bl FUN_ov16_020f14b4
_020BD29C:
	ldr r0, [r5, #0xc]
	mov r1, #4
	cmp r0, #0
	moveq r0, #0xe10
	str r1, [r5, #8]
	strb r4, [r5, #0x20]
	streq r0, [r5, #0x10]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #1
	moveq r0, #0x50
	streq r0, [r5, #0x10]
	movne r0, #0x78
	strne r0, [r5, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD2D4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020BD2F8
	ldrb r0, [r5, #0x22]
	cmp r0, #0
	ldrne r0, [r5, #0x10]
	cmpne r0, #0x1e
	movgt r0, #0x1e
	strgt r0, [r5, #0x10]
_020BD2F8:
	bl FUN_ov16_020f1670
	cmp r0, #0
	ldreq r0, _020BD400 ; =0x0209A110
	ldreq r1, [r5, #0x10]
	ldreq r0, [r0]
	subeq r0, r1, r0
	streq r0, [r5, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _020BD338
	mov r0, #8
	bl FUN_ov16_020f15dc
	b _020BD340
_020BD338:
	mov r0, #6
	bl FUN_ov16_020f153c
_020BD340:
	mov r0, #5
	str r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD34C:
	bl FUN_ov16_020f1670
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020BD390
	mov r1, #1
	mov r2, #2
	ldr r0, [r5, #4]
	str r1, [r5, #0xc]
	strb r1, [r5, #0x3c]
	str r2, [r5, #8]
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	strb r4, [r5, #0x22]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD390:
	cmp r0, #1
	movne r0, #6
	strne r0, [r5, #8]
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, #2
	ldr r0, [r5, #4]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	strb r1, [r5, #0x3c]
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
_020BD3C4:
	ldr r0, [r5, #4]
	mov r1, r4
	strb r4, [r0, #0x88]
	ldr r6, [r5, #4]
	mov r5, #1
	mov r0, r6
	mov r2, r5
	bl FUN_02041eac
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_020BD3F8: .word gL5Sound
_020BD3FC: .word 0x000083DE
_020BD400: .word unk_0209A110
	arm_func_end FUN_ov5_020bd1fc

	arm_func_start FUN_ov5_020bd404
FUN_ov5_020bd404: ; 0x020BD404
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020BD424
	cmp r1, #4
	beq _020BD434
	ldmfd sp!, {r4, pc}
_020BD424:
	bl FUN_ov5_020bd19c
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020BD434:
	ldr r0, _020BD444 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020BD444: .word unk_0209F5C0
	arm_func_end FUN_ov5_020bd404

	arm_func_start FUN_ov5_020bd448
FUN_ov5_020bd448: ; 0x020BD448
	cmp r1, #1
	moveq r1, #1
	streqb r1, [r0, #0x22]
	mov r0, #0
	bx lr
	arm_func_end FUN_ov5_020bd448

	arm_func_start FUN_ov5_020bd45c
FUN_ov5_020bd45c: ; 0x020BD45C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BD47C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	mov r0, r4
	bl FUN_ov5_020bd0f4
	ldmfd sp!, {r4, pc}
_020BD47C: .word unk_0209F5C0
	arm_func_end FUN_ov5_020bd45c

	arm_func_start FUN_ov5_020bd480
FUN_ov5_020bd480: ; 0x020BD480
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bd480

	arm_func_start FUN_ov5_020bd494
FUN_ov5_020bd494: ; 0x020BD494
	mov r2, #0
	strb r1, [r0, #8]
	strb r2, [r0, #9]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov5_020bd494

	arm_func_start FUN_ov5_020bd4a8
FUN_ov5_020bd4a8: ; 0x020BD4A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BD4E4 ; =gL5Allocator
	mov r1, #1
	bl _ZN11L5Allocator12setNextArenaEi
	ldr r0, _020BD4E8 ; =0x020BDB40
	add r1, r4, #0x18
	bl FUN_ov16_020f3054
	ldr r0, _020BD4EC ; =0x020BDB64
	add r1, r4, #0x24
	bl FUN_ov16_020f3054
	ldr r0, _020BD4F0 ; =0x020BDB8C
	add r1, r4, #0x30
	bl FUN_ov16_020f3054
	ldmfd sp!, {r4, pc}
_020BD4E4: .word gL5Allocator
_020BD4E8: .word ov5_020BDB40
_020BD4EC: .word ov5_020BDB64
_020BD4F0: .word ov5_020BDB8C
	arm_func_end FUN_ov5_020bd4a8

	arm_func_start FUN_ov5_020bd4f4
FUN_ov5_020bd4f4: ; 0x020BD4F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r4, r1, r2
	mov r5, r0
	add r0, r5, r4
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldrneb r0, [r0, #0x21]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020BD534 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	add r0, r5, r4
	mov r1, #0
	str r1, [r0, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD534: .word gL5Allocator
	arm_func_end FUN_ov5_020bd4f4

	arm_func_start FUN_ov5_020bd538
FUN_ov5_020bd538: ; 0x020BD538
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020BD544:
	mov r0, r5
	mov r1, r4
	bl FUN_ov5_020bd4f4
	add r4, r4, #1
	cmp r4, #3
	blt _020BD544
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov5_020bd538

	arm_func_start FUN_ov5_020bd560
FUN_ov5_020bd560: ; 0x020BD560
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #8]
	cmp r1, #0
	beq _020BD584
	cmp r1, #1
	beq _020BD58C
	cmp r1, #2
	ldreq r5, [r0, #0x30]
	b _020BD590
_020BD584:
	ldr r5, [r0, #0x18]
	b _020BD590
_020BD58C:
	ldr r5, [r0, #0x24]
_020BD590:
	cmp r5, #0
	beq _020BD5DC
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG2Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG2Char
	bl GXS_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	add r0, r5, r0
	mov r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
_020BD5DC:
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov5_020bd560

	arm_func_start FUN_ov5_020bd5e4
FUN_ov5_020bd5e4: ; 0x020BD5E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #9]
	mov r4, r1
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020f1660
	cmp r0, #0
	ldreqb r0, [r5, #0x14]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #9
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #8]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r2, [r0]
	ldr r2, [r2, #0x40]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov5_020bd5e4

	arm_func_start FUN_ov5_020bd63c
FUN_ov5_020bd63c: ; 0x020BD63C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #9]
	mov r4, r1
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020f1660
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _020BD69C
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r5, #0xa]
	ldrh r0, [r4]
	str r0, [r5, #0xc]
	ldrh r0, [r4, #2]
	str r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD69C:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _020BD6D0
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	ldreqb r0, [r5, #8]
	cmpeq r0, #0
	bne _020BD6D0
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r2, [r0]
	ldr r2, [r2, #0x40]
	blx r2
_020BD6D0:
	mov r0, #0
	strb r0, [r5, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov5_020bd63c

	arm_func_start FUN_ov5_020bd6dc
FUN_ov5_020bd6dc: ; 0x020BD6DC
	ldr r12, _020BD6F8 ; =FUN_ov5_020bd4a8
	mov r1, #0
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0x14]
	bx r12
_020BD6F8: .word FUN_ov5_020bd4a8
	arm_func_end FUN_ov5_020bd6dc

	arm_func_start FUN_ov5_020bd6fc
FUN_ov5_020bd6fc: ; 0x020BD6FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #9]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov5_020bd560
	mov r0, #1
	strb r0, [r4, #9]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bd6fc

	arm_func_start FUN_ov5_020bd720
FUN_ov5_020bd720: ; 0x020BD720
	bx lr
	arm_func_end FUN_ov5_020bd720

	arm_func_start FUN_ov5_020bd724
FUN_ov5_020bd724: ; 0x020BD724
	ldr r12, _020BD72C ; =FUN_ov5_020bd538
	bx r12
_020BD72C: .word FUN_ov5_020bd538
	arm_func_end FUN_ov5_020bd724

	arm_func_start FUN_ov5_020bd730
FUN_ov5_020bd730: ; 0x020BD730
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov5_020bd730

	.section .init, 4
	arm_func_start FUN_ov5_020bd744
FUN_ov5_020bd744: ; 0x020BD744
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD78C ; =0x020BD8C0
	str r0, [r4, #0x14]
	ldr r0, _020BD790 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD794 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD78C: .word ov5_020BD8C0
_020BD790: .word 0x00009CCD
_020BD794: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd744

	arm_func_start FUN_ov5_020bd798
FUN_ov5_020bd798: ; 0x020BD798
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD7E0 ; =0x020BD930
	str r0, [r4, #0x14]
	ldr r0, _020BD7E4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD7E8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7E0: .word ov5_020BD930
_020BD7E4: .word 0x00009CCD
_020BD7E8: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd798

	arm_func_start FUN_ov5_020bd7ec
FUN_ov5_020bd7ec: ; 0x020BD7EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD834 ; =0x020BD9D4
	str r0, [r4, #0x14]
	ldr r0, _020BD838 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD83C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD834: .word ov5_020BD9D4
_020BD838: .word 0x00009CCD
_020BD83C: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd7ec

	arm_func_start FUN_ov5_020bd840
FUN_ov5_020bd840: ; 0x020BD840
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BD888 ; =0x020BDAB4
	str r0, [r4, #0x14]
	ldr r0, _020BD88C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD890 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD888: .word ov5_020BDAB4
_020BD88C: .word 0x00009CCD
_020BD890: .word 0x0000EA3C
	arm_func_end FUN_ov5_020bd840

	.section .sinit, 4
ov5_020BD894:
	.word FUN_ov5_020bd744
	.word FUN_ov5_020bd798
	.word FUN_ov5_020bd7ec
	.word FUN_ov5_020bd840

	.data
	.global ov5_020BD8C0
ov5_020BD8C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov5_020BD8E0
ov5_020BD8E0:
	.word FUN_ov5_020bce98
	.word FUN_ov5_020bce7c
	.word FUN_ov5_020bcb40
	.word FUN_ov5_020bcde4
	.word FUN_02029d10
	.word FUN_02041b64
	.word FUN_02041bec
	.word FUN_02041c58
	.word FUN_02029d0c
	.word FUN_02041cc8
	.word FUN_ov5_020bce28
	.word FUN_ov5_020bcc44
	.word FUN_020420bc
	.word FUN_ov5_020bcc94
	.word FUN_02041dd4
	.word FUN_02041df8
	.word FUN_02041e1c
	.word FUN_02041e40
	.word FUN_02041e64
	.word FUN_02041e88
	.global ov5_020BD930
ov5_020BD930:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov5_020BD950
ov5_020BD950:
	.word FUN_0202a018
	.word FUN_ov5_020bd02c
	.word FUN_ov5_020bceac
	.word FUN_ov5_020bcedc
	.word FUN_ov5_020bcf34
	.word FUN_0202b208
	.word FUN_ov5_020bcfac
	.word FUN_ov5_020bcffc
	.word FUN_ov5_020bd008
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b320
	.word FUN_0202b310
	.word FUN_0202b304
	.word FUN_0202b2f8
	.word FUN_0202b2e8
	.word FUN_0202b2d8
	.word FUN_0202b2c8
	.word FUN_0202b2bc
	.word FUN_0202b2b0
	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov5_020BD9BC
ov5_020BD9BC:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov5_020BD9C4
ov5_020BD9C4:
	.asciz "op00f"
	.balign 4, 0
	.global ov5_020BD9CC
ov5_020BD9CC:
	.asciz "op00b"
	.balign 4, 0
	.global ov5_020BD9D4
ov5_020BD9D4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov5_020BD9F4
ov5_020BD9F4:
	.word FUN_0202a014
	.word FUN_ov5_020bd480
	.word FUN_ov5_020bd040
	.word FUN_ov5_020bd04c
	.word FUN_ov5_020bd1d8
	.word FUN_0202b208
	.word FUN_ov5_020bd1fc
	.word FUN_ov5_020bd404
	.word FUN_ov5_020bd45c
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b320
	.word FUN_0202b310
	.word FUN_0202b304
	.word FUN_0202b2f8
	.word FUN_0202b2e8
	.word FUN_0202b2d8
	.word FUN_0202b2c8
	.word FUN_0202b2bc
	.word FUN_0202b2b0
	.word FUN_0202b1d8
	.word FUN_ov5_020bd448
	.word FUN_0202b1c8
	.global ov5_020BDA60
ov5_020BDA60:
	.asciz "/data_iz/pic2d/title/level5.pac_"
	.balign 4, 0
	.global ov5_020BDA84
ov5_020BDA84:
	.asciz "/data_iz/pic2d/title/ActimagineOriginal.pac_"
	.balign 4, 0
	.global ov5_020BDAB4
ov5_020BDAB4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov5_020BDAD4
ov5_020BDAD4:
	.word FUN_0202a01c
	.word FUN_ov5_020bd730
	.word FUN_ov5_020bd5e4
	.word FUN_ov5_020bd63c
	.word FUN_ov5_020bd6dc
	.word FUN_0202b208
	.word FUN_ov5_020bd6fc
	.word FUN_ov5_020bd720
	.word FUN_ov5_020bd724
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b294
	.word FUN_0202b284
	.word FUN_0202b278
	.word FUN_0202b26c
	.word FUN_0202b25c
	.word FUN_0202b24c
	.word FUN_0202b23c
	.word FUN_0202b230
	.word FUN_0202b224
	.word FUN_0202b1d8
	.word FUN_ov5_020bd494
	.word FUN_0202b1c8
	.global ov5_020BDB40
ov5_020BDB40:
	.asciz "/data_iz/pic2d/title/cesa_00.pac_"
	.balign 4, 0
	.global ov5_020BDB64
ov5_020BDB64:
	.asciz "/data_iz/pic2d/title/level5_bottom.pac_"
	.balign 4, 0
	.global ov5_020BDB8C
ov5_020BDB8C:
	.asciz "/data_iz/pic2d/title/Nintendo.pac_"
	.balign 4, 0

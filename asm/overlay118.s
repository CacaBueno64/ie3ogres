
	.include "/macros/function.inc"
	.include "/include/overlay118.inc"

	.text
	arm_func_start FUN_ov118_02124d00
FUN_ov118_02124d00: ; 0x02124D00
	mov r1, r0
	ldrb r0, [r1, #0x10]
	ldr r2, _02124D24 ; =0x02125BC8
	ldr r12, _02124D28 ; = FUN_ov1_020dbfdc
	cmp r0, #0
	ldr r0, [r1, #0x40]
	ldrne r2, _02124D2C ; =0x02125C30
	add r1, r1, #0x40
	bx r12
_02124D24: .word ov118_02125BC8
_02124D28: .word FUN_ov1_020dbfdc
_02124D2C: .word ov118_02125C30
	arm_func_end FUN_ov118_02124d00

	arm_func_start FUN_ov118_02124d30
FUN_ov118_02124d30: ; 0x02124D30
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	str r1, [r10, #0xc]
	cmp r1, #1
	beq _02124D5C
	cmp r1, #2
	beq _02124DA0
	cmp r1, #3
	beq _02124DA8
	b _02124E30
_02124D5C:
	mov r5, #0
	mov r4, #0x800
	ldr r1, _02124E44 ; =0x020A8C40
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	ldr r1, _02124E48 ; =0x020A8440
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	ldr r0, _02124E4C ; =0x02125F0C
	add r1, r10, #0x40
	bl FUN_ov1_020dbe00
	ldr r0, _02124E50 ; =0x02125F1C
	add r1, r10, #0x100
	bl FUN_ov16_020f316c
	b _02124E30
_02124DA0:
	bl FUN_ov118_02124d00
	b _02124E30
_02124DA8:
	mov r9, #0
	add r5, r10, #0x40
	mov r6, #1
	add r7, sp, #8
	add r11, sp, #4
	ldr r8, _02124E54 ; =0x0209BA20
	mov r4, #0xc
	b _02124E28
_02124DC8:
	ldr r0, [r10, #0x3c]
	add r0, r0, r9, lsl #1
	ldrh r1, [r0, #0x42]
	cmp r1, #0
	beq _02124E30
	mov r0, r8
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _02124E24
	ldrh r1, [r0, #0x22]
	ldr r0, [r10, #0x100]
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02124E24
	add r0, r9, #0xd
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124E58 ; =0x02125F34
	bl FUN_ov16_020f31fc
_02124E24:
	add r9, r9, #1
_02124E28:
	cmp r9, #3
	blt _02124DC8
_02124E30:
	mov r0, r10
	mov r1, #1
	bl FUN_ov118_02124f54
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02124E44: .word unk_020A8C40
_02124E48: .word unk_020A8440
_02124E4C: .word ov118_02125F0C
_02124E50: .word ov118_02125F1C
_02124E54: .word unk_0209BA20
_02124E58: .word ov118_02125F34
	arm_func_end FUN_ov118_02124d30

	arm_func_start FUN_ov118_02124e5c
FUN_ov118_02124e5c: ; 0x02124E5C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r1, [r6, #0xc]
	cmp r1, #1
	beq _02124E84
	cmp r1, #2
	beq _02124E90
	cmp r1, #3
	beq _02124EA8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124E84:
	mov r1, #2
	bl FUN_ov118_02124d30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124E90:
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #3
	bl FUN_ov118_02124d30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124EA8:
	ldr r4, [r6, #0x18]
	cmp r4, #0
	beq _02124F0C
	mov r5, #0
	mov r8, #2
	mov r7, #0xc
_02124EC0:
	ldr r0, [r6, #0x3c]
	add r0, r0, r5, lsl #1
	ldrh r0, [r0, #0x42]
	cmp r0, #0
	beq _02124F0C
	mla r0, r5, r7, r6
	ldr r12, [r0, #0xdc]
	cmp r12, #0
	beq _02124EFC
	ldr r0, [r12, #4]
	mov r1, r8
	mov r2, r8
	mov r3, r4
	add r0, r12, r0
	bl FUN_ov16_020f1ee4
_02124EFC:
	add r5, r5, #1
	cmp r5, #3
	add r4, r4, #0x80
	blt _02124EC0
_02124F0C:
	mov r0, r6
	mov r1, #2
	bl FUN_ov118_02124f54
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov118_02124e5c

	arm_func_start FUN_ov118_02124f1c
FUN_ov118_02124f1c: ; 0x02124F1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	add r5, r7, #0x40
	mov r4, #0xc
_02124F30:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x11
	blt _02124F30
	add r0, r7, #0x14
	mov r1, #2
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov118_02124f1c

	arm_func_start FUN_ov118_02124f54
FUN_ov118_02124f54: ; 0x02124F54
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, r1
	ldmeqfd sp!, {r3, pc}
	str r1, [r0, #8]
	cmp r1, #5
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov118_02124f54

	arm_func_start FUN_ov118_02124f80
FUN_ov118_02124f80: ; 0x02124F80
	cmp r1, #0
	mvneq r0, #0
	bxeq lr
	str r1, [r0, #0x3c]
	ldr r1, [r1]
	cmp r1, #0x45
	movne r1, #0
	strne r1, [r0, #0x3c]
	subne r0, r1, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov118_02124f80

	arm_func_start FUN_ov118_02124fac
FUN_ov118_02124fac: ; 0x02124FAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r6, #0
	mov r10, r0
	mov r11, #1
	mov r4, #7
	mov r7, r6
	bl FUN_ov1_020db2f0
	cmp r0, #0
	ldr r0, [r10, #0x4c]
	mvn r1, #0
	mov r2, #1
	movne r7, r11
	bl FUN_ov1_020dc13c
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	bl FUN_ov1_020db2f0
	cmp r0, #0
	mov r2, #4
	beq _02125020
	ldr r0, [r10, #0xa0]
	b _02125024
_02125020:
	ldr r0, [r10, #0xac]
_02125024:
	mov r1, r6
	bl FUN_ov1_020dc13c
	mov r5, r0
	ldr r0, [r10, #0xb8]
	mov r1, r5
	mov r2, #2
	bl FUN_ov1_020dc13c
	mov r1, r0
	cmp r7, #0
	mov r2, #3
	beq _02125058
	ldr r0, [r10, #0xd0]
	b _0212505C
_02125058:
	ldr r0, [r10, #0xc4]
_0212505C:
	bl FUN_ov1_020dc13c
	ldr r0, _0212540C ; =0x0209A144
	mov r5, #6
	ldr r1, [r0]
	ldr r0, [r10, #0x58]
	ldr r1, [r1, #0x18]
	mov r2, r5
	mov r1, r1, lsr #5
	sub r1, r1, #1
	bl FUN_ov1_020dc13c
	mov r1, r0
	cmp r7, #0
	beq _0212509C
	ldr r0, [r10, #0x88]
	mov r2, #7
	b _021250B4
_0212509C:
	ldr r0, [r10, #0x64]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r10, #0x70]
	mov r2, r5
_021250B4:
	bl FUN_ov1_020dc13c
	mov r5, r0
	ldrb r0, [r10, #0x10]
	cmp r0, #0
	beq _021250CC
	b _021250D0
_021250CC:
	mov r4, #6
_021250D0:
	ldr r0, [r10, #0x7c]
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r10, #0x94]
	mov r2, r4
	bl FUN_ov1_020dc13c
	mov r5, r0
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x18]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _021251C0
	mov r6, #8
	ldr r8, [r10, #0x14]
	mov r9, #0
	mov r4, r6
	b _0212515C
_02125128:
	mov r1, #2
	mov r0, r8
	mov r2, r1
	bl FUN_ov16_020f2ea8
	mov r0, r8
	mov r1, r4
	add r2, r5, #1
	mov r3, r6
	bl FUN_ov16_020f1868
	mov r5, r0
	add r8, r8, #8
	add r9, r9, #1
	add r6, r6, #1
_0212515C:
	cmp r9, #3
	blt _02125128
	mov r6, #8
	mov r4, #0
	mov r8, #0xc
	b _021251B8
_02125174:
	ldr r0, [r10, #0x3c]
	add r0, r0, r4, lsl #1
	ldrh r0, [r0, #0x42]
	cmp r0, #0
	beq _021251C0
	add r1, r4, #0xd
	mla r0, r1, r8, r10
	ldr r3, [r0, #0x40]
	cmp r3, #0
	beq _021251B0
	ldr r0, [r3, #0xc]
	mov r1, r11
	mov r2, r6
	add r0, r3, r0
	bl FUN_ov16_020f1160
_021251B0:
	add r4, r4, #1
	add r6, r6, #1
_021251B8:
	cmp r4, #3
	blt _02125174
_021251C0:
	ldr r0, [r10, #0x28]
	mov r6, #0
	cmp r0, #0
	ldrne r0, [r10, #0x2c]
	mov r1, r6
	cmpne r0, #0
	movne r1, #1
	ldr r11, _02125410 ; =0x020A8C40
	cmp r1, #0
	beq _021252C8
	ldrh r1, [r10, #0x34]
	ldrh r2, [r10, #0x36]
	ldr r0, [r10, #0x28]
	bl FUN_ov16_020f2ea8
	ldrh r2, [r10, #0x34]
	ldrh r1, [r10, #0x36]
	mov r4, #0
	ldr r0, [r10, #0x28]
	mul r1, r2, r1
	mov r3, r4
	mov r1, r1, lsl #1
	add r2, r5, #1
	bl FUN_ov16_020f1868
	add r0, r10, #0x28
	bl FUN_ov16_020f2f20
	mov r8, #3
	ldr r9, _02125414 ; =0x0209BA20
	ldr r5, _02125418 ; =0x02099F50
	b _021252A8
_02125234:
	ldr r0, [r10, #0x3c]
	add r0, r0, r4, lsl #1
	ldrh r1, [r0, #0x42]
	cmp r1, #0
	beq _021252B0
	mov r0, r9
	bl FUN_ov16_020ee034
	movs r3, r0
	beq _021252A4
	str r8, [sp]
	str r6, [sp, #4]
	ldr r1, [r10, #0x2c]
	mov r0, r4, lsl #4
	str r1, [sp, #8]
	ldrh r12, [r10, #0x34]
	mov r1, r6
	add r2, r0, #2
	mov r0, r12, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r10, #0x36]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [r5]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
_021252A4:
	add r4, r4, #1
_021252A8:
	cmp r4, #3
	blt _02125234
_021252B0:
	ldrh r2, [r10, #0x34]
	ldrh r1, [r10, #0x36]
	ldr r0, [r10, #0x2c]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_021252C8:
	bl FUN_ov1_020db2f0
	cmp r0, #0
	beq _021252E4
	ldr r1, [r10, #0xa0]
	cmp r1, #0
	beq _02125314
	b _021252F0
_021252E4:
	ldr r1, [r10, #0xac]
	cmp r1, #0
	beq _02125314
_021252F0:
	ldr r0, [r1, #0xc]
	mov r2, #0x12
	add r0, r1, r0
	str r0, [sp]
	mov r0, #7
	mov r1, #0
	mov r3, #4
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_02125314:
	ldr r1, [r10, #0xb8]
	cmp r1, #0
	beq _02125344
	ldr r0, [r1, #0xc]
	mov r2, #0x1c
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	mov r1, #5
	mov r3, #7
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_02125344:
	cmp r7, #0
	beq _02125378
	ldr r1, [r10, #0xd0]
	cmp r1, #0
	beq _021253A8
	ldr r0, [r1, #0xc]
	mov r2, #0x16
	add r0, r1, r0
	str r0, [sp]
	mov r0, #5
	mov r1, #0xe
	mov r3, #7
	b _021253A0
_02125378:
	ldr r2, [r10, #0xc4]
	cmp r2, #0
	beq _021253A8
	ldr r0, [r2, #0xc]
	mov r1, #0xc
	add r0, r2, r0
	str r0, [sp]
	mov r3, r1
	mov r0, #2
	mov r2, #0x1c
_021253A0:
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_021253A8:
	ldr r2, [r10, #0x94]
	cmp r2, #0
	beq _02125400
	ldrb r0, [r10, #0x10]
	mov r1, #9
	mov r3, #2
	cmp r0, #0
	ldr r0, [r2, #0xc]
	beq _021253E4
	add r0, r2, r0
	str r0, [sp]
	ldr r4, _0212541C ; =0x020A8440
	mov r0, #7
	mov r2, #0x10
	b _021253F8
_021253E4:
	add r0, r2, r0
	str r0, [sp]
	ldr r4, _0212541C ; =0x020A8440
	mov r2, r1
	mov r0, #0xb
_021253F8:
	str r4, [sp, #4]
	bl FUN_ov16_020f191c
_02125400:
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212540C: .word unk_0209A144
_02125410: .word unk_020A8C40
_02125414: .word unk_0209BA20
_02125418: .word unk_02099F50
_0212541C: .word unk_020A8440
	arm_func_end FUN_ov118_02124fac

	arm_func_start FUN_ov118_02125420
FUN_ov118_02125420: ; 0x02125420
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r5, r0
	mov r6, #1
	mov r4, r7
	bl FUN_ov1_020db2f0
	cmp r0, #0
	ldr r8, [r5, #0x4c]
	movne r4, r6
	cmp r8, #0
	beq _02125470
	mov r0, r7
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_020f1a60
	ldr r0, [r8, #0xc]
	ldr r2, [r8, #0x10]
	mov r1, r7
	add r0, r8, r0
	bl GXS_LoadBG0Scr
_02125470:
	bl FUN_ov1_020db2f0
	cmp r0, #0
	mov r0, #1
	mov r2, #0x20
	beq _0212548C
	ldr r1, [r5, #0xa0]
	b _02125490
_0212548C:
	ldr r1, [r5, #0xac]
_02125490:
	bl FUN_ov16_020f1a60
	ldr r1, [r5, #0xb8]
	mov r2, r0
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	cmp r4, #0
	beq _021254B8
	ldr r1, [r5, #0xd0]
	b _021254BC
_021254B8:
	ldr r1, [r5, #0xc4]
_021254BC:
	mov r0, r6
	bl FUN_ov16_020f1a60
	ldr r0, _021255BC ; =0x0209A144
	mov r1, #0
	ldr r7, [r0]
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	add r0, r7, r0
	bl GXS_LoadBG2Char
	mov r6, #2
	ldr r1, [r5, #0x58]
	ldr r2, [r7, #0x18]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	cmp r4, #0
	beq _02125508
	ldr r1, [r5, #0x88]
	b _0212551C
_02125508:
	ldr r1, [r5, #0x64]
	mov r0, r6
	bl FUN_ov16_020f1a60
	ldr r1, [r5, #0x70]
	mov r2, r0
_0212551C:
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r4, #2
	mov r2, r0
	ldr r1, [r5, #0x7c]
	mov r0, r4
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r5, #0x94]
	mov r0, r4
	bl FUN_ov16_020f1a60
	ldr r1, [r5, #0x14]
	mov r4, r0
	cmp r1, #0
	ldrne r0, [r5, #0x18]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02125580
	ldr r0, [r5, #0x18]
	mov r1, r4
	mov r2, #0x180
	bl GXS_LoadBG2Char
	add r4, r4, #0x180
_02125580:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ldrne r0, [r5, #0x2c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _021255B0
	ldr r0, [r5, #0x2c]
	mov r1, r4
	mov r2, #0xfc0
	bl GXS_LoadBG2Char
_021255B0:
	bl FUN_ov16_020f10c8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021255BC: .word unk_0209A144
	arm_func_end FUN_ov118_02125420

	arm_func_start FUN_ov118_021255c0
FUN_ov118_021255c0: ; 0x021255C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x34]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x40]
	mov r10, r1
	cmp r4, #0
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	ldr r0, [sp, #0x30]
	add r7, r4, r1
	cmp r8, r0
	ldr r6, _0212566C ; =0x020A8440
	ldr r5, _02125670 ; =0x66666667
	movgt r8, r0
	mov r11, #1
	mov r4, #0xa
_02125614:
	smull r1, r2, r5, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r4, r2
	sub r2, r8, r0
	add r0, r7, r2, lsl #2
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, #2
	str r6, [sp, #4]
	bl FUN_ov16_020f191c
	mov r1, r8
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #2
	cmp r8, #0
	sub r10, r10, #1
	bgt _02125614
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212566C: .word unk_020A8440
_02125670: .word 0x66666667
	arm_func_end FUN_ov118_021255c0

	arm_func_start FUN_ov118_02125674
FUN_ov118_02125674: ; 0x02125674
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, #0
	ldr r7, [r10, #0x14]
	ldr r8, [r10, #0x28]
	mov r6, #0x11
	mov r11, r9
	ldr r5, _0212576C ; =0x020A8440
	mov r4, #0xc
	b _02125754
_021256A0:
	ldr r0, [r10, #0x3c]
	add r0, r0, r9, lsl #1
	ldrh r0, [r0, #0x42]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x14]
	mov r1, r11
	cmp r0, #0
	ldrne r0, [r10, #0x18]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0212570C
	add r1, r9, #0xd
	mla r0, r1, r4, r10
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _02125708
	mov r2, #2
	str r7, [sp]
	mov r0, #9
	mov r1, r6
	mov r3, r2
	str r5, [sp, #4]
	bl FUN_ov16_020f191c
_02125708:
	add r7, r7, #8
_0212570C:
	ldr r0, [r10, #0x28]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x2c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0212574C
	str r8, [sp]
	mov r0, #0xd
	mov r1, r6
	mov r2, #0x15
	mov r3, #2
	str r5, [sp, #4]
	bl FUN_ov16_020f191c
	add r8, r8, #0x54
_0212574C:
	add r6, r6, #2
	add r9, r9, #1
_02125754:
	ldr r0, [r10, #0x3c]
	ldrh r0, [r0, #0x40]
	cmp r9, r0
	blt _021256A0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212576C: .word unk_020A8440
	arm_func_end FUN_ov118_02125674

	arm_func_start FUN_ov118_02125770
FUN_ov118_02125770: ; 0x02125770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, #0
	bl FUN_ov1_020db2f0
	cmp r0, #0
	ldr r0, [r10, #0x3c]
	mov r6, #0x1b
	ldr r3, [r0, #0x10]
	ldr r8, _0212599C ; =0x000F423F
	mov r5, #5
	mov r0, r10
	mov r1, r6
	mov r2, r5
	str r8, [sp]
	mov r7, #2
	movne r9, #1
	str r7, [sp, #4]
	bl FUN_ov118_021255c0
	rsb r0, r5, #0x3ec
	stmia sp, {r0, r7}
	ldr r0, [r10, #0x3c]
	mov r4, #0x10
	mov r11, #7
	ldr r3, [r0, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl FUN_ov118_021255c0
	ldr r0, [r10, #0x3c]
	mov r1, #0x63
	ldr r3, [r0, #0x14]
	mov r0, r10
	stmia sp, {r1, r7}
	mov r1, #0x13
	mov r2, r11
	bl FUN_ov118_021255c0
	ldr r1, [r10, #0x3c]
	mov r0, r10
	ldr r3, [r1, #0x18]
	mov r1, r6
	str r8, [sp]
	str r7, [sp, #4]
	mov r2, r11
	bl FUN_ov118_021255c0
	ldr r0, [r10, #0x3c]
	ldr r2, _021259A0 ; =0x0098967F
	ldr r3, [r0, #0x1c]
	mov r1, r6
	stmia sp, {r2, r5}
	mov r5, #9
	mov r0, r10
	mov r2, r5
	bl FUN_ov118_021255c0
	cmp r9, #0
	ldr r0, [r10, #0x3c]
	beq _021258A0
	ldr r3, [r0, #0x20]
	mov r4, #0x18
	mov r5, #6
	str r8, [sp]
	mov r0, r10
	mov r1, r4
	str r5, [sp, #4]
	mov r2, #0xf
	bl FUN_ov118_021255c0
	ldr r1, [r10, #0x3c]
	mov r0, r10
	ldr r3, [r1, #0x24]
	mov r1, r4
	str r8, [sp]
	mov r2, #0x12
	str r5, [sp, #4]
	bl FUN_ov118_021255c0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021258A0:
	ldr r3, [r0, #0x20]
	mov r6, #0x1a
	mov r2, #3
	str r8, [sp]
	str r2, [sp, #4]
	mov r0, r10
	mov r1, r6
	mov r2, #0xc
	bl FUN_ov118_021255c0
	ldr r1, [r10, #0x3c]
	mov r0, r10
	ldr r3, [r1, #0x24]
	mov r1, r6
	str r8, [sp]
	mov r6, #4
	mov r2, #0xe
	str r6, [sp, #4]
	bl FUN_ov118_021255c0
	mov r0, r10
	bl FUN_ov118_02125674
	ldrb r0, [r10, #0x10]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [r10, #0x12]
	cmp r0, #0
	subgt r0, r0, #1
	addgt sp, sp, #8
	strgth r0, [r10, #0x12]
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x94]
	cmp r1, #0
	beq _0212598C
	ldrb r0, [r10, #0x11]
	cmp r0, #0
	beq _0212595C
	mov r8, #0
	ldr r6, _021259A4 ; =0x020A8440
	str r8, [sp]
	mov r0, r11
	mov r1, r5
	mov r2, r4
	mov r3, r7
	str r6, [sp, #4]
	bl FUN_ov16_020f197c
	strb r8, [r10, #0x11]
	b _0212598C
_0212595C:
	ldr r0, [r1, #0xc]
	ldr r6, _021259A4 ; =0x020A8440
	add r0, r1, r0
	str r0, [sp]
	mov r0, r11
	mov r1, r5
	mov r2, r4
	mov r3, r7
	str r6, [sp, #4]
	bl FUN_ov16_020f191c
	mov r0, #1
	strb r0, [r10, #0x11]
_0212598C:
	mov r0, #5
	strh r0, [r10, #0x12]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212599C: .word 0x000F423F
_021259A0: .word 0x0098967F
_021259A4: .word unk_020A8440
	arm_func_end FUN_ov118_02125770

	arm_func_start FUN_ov118_021259a8
FUN_ov118_021259a8: ; 0x021259A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_021259C0: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _021259D8 ; case 1
	b _021259F8 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _02125A14 ; case 4
	b _02125A48 ; case 5
_021259D8:
	add r0, r4, #0x40
	mov r1, #0x11
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov118_02124e5c
	ldmfd sp!, {r4, pc}
_021259F8:
	bl FUN_ov118_02124fac
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #3
	bl FUN_ov118_02124f54
	ldmfd sp!, {r4, pc}
_02125A14:
	bl FUN_ov118_02125770
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r2, [r0]
	ldr r2, [r2, #0x40]
	blx r2
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #5
	bl FUN_ov118_02124f54
	ldmfd sp!, {r4, pc}
_02125A48:
	bl FUN_ov118_02125770
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov118_021259a8

	arm_func_start FUN_ov118_02125a50
FUN_ov118_02125a50: ; 0x02125A50
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #3
	beq _02125A70
	cmp r1, #5
	beq _02125A84
	ldmfd sp!, {r4, r5, r6, pc}
_02125A70:
	bl FUN_ov118_02125420
	mov r0, r4
	mov r1, #4
	bl FUN_ov118_02124f54
	ldmfd sp!, {r4, r5, r6, pc}
_02125A84:
	ldr r4, _02125AD0 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl GXS_LoadBG1Scr
	ldr r4, _02125AD4 ; =0x020A8440
	mov r1, r6
	mov r0, r4
	bl DC_FlushRange
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl GXS_LoadBG2Scr
	ldmfd sp!, {r4, r5, r6, pc}
_02125AD0: .word unk_020A8C40
_02125AD4: .word unk_020A8440
	arm_func_end FUN_ov118_02125a50

	arm_func_start FUN_ov118_02125ad8
FUN_ov118_02125ad8: ; 0x02125AD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _02125B7C ; =0x020A0640
	str r1, [r4, #8]
	str r1, [r4, #0x3c]
	strb r1, [r4, #0x10]
	ldrb r0, [r0, #0x8d]
	mov r7, #1
	mov r3, #5
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x10]
	add r0, r4, #0x40
	mov r1, #0
	mov r2, #0xcc
	strb r7, [r4, #0x11]
	strh r3, [r4, #0x12]
	bl MI_CpuFill8
	mov r6, #2
	mov r1, r6
	add r0, r4, #0x14
	bl FUN_ov16_020f2f7c
	ldr r0, _02125B80 ; =0x0209BA20
	bl FUN_ov16_020eeca0
	bl FUN_ov1_020db2ac
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #6
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x14
	bl FUN_ov16_020f2fa8
	mov r2, r5
	add r0, r4, #0x28
	mov r1, #0x15
	bl FUN_ov16_020f2fa8
	mov r0, r4
	mov r1, r7
	bl FUN_ov118_02124d30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125B7C: .word unk_020A0640
_02125B80: .word unk_0209BA20
	arm_func_end FUN_ov118_02125ad8

	arm_func_start FUN_ov118_02125b84
FUN_ov118_02125b84: ; 0x02125B84
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x40
	mov r1, #0x11
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov118_02124f1c
	ldr r0, _02125BAC ; =0x0209BA20
	bl FUN_ov16_020eedb8
	ldmfd sp!, {r4, pc}
_02125BAC: .word unk_0209BA20
	arm_func_end FUN_ov118_02125b84

	arm_func_start FUN_ov118_02125bb0
FUN_ov118_02125bb0: ; 0x02125BB0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov118_02125bb0

	arm_func_start FUN_ov118_02125bc4
FUN_ov118_02125bc4: ; 0x02125BC4
	bx lr
	arm_func_end FUN_ov118_02125bc4

	.rodata
	.global ov118_02125BC8
ov118_02125BC8:
	.word ov118_02125E88
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov118_02125E38
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov118_02125D58
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov118_02125D28
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov118_02125E08
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov118_02125DF8
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov118_02125DE8
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov118_02125DD8
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov118_02125DA8
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov118_02125DB8
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov118_02125E18
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov118_02125E28
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125C30
ov118_02125C30:
	.word ov118_02125E78
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov118_02125E48
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov118_02125D38
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov118_02125D48
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov118_02125D78
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov118_02125DC8
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov118_02125E58
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov118_02125D88
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov118_02125D68
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov118_02125D98
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov118_02125E68
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov118_02125D18
	.byte 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov118_02125c98
FUN_ov118_02125c98: ; 0x02125C98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125CE0 ; =0x02125D00
	str r0, [r4]
	ldr r0, _02125CE4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02125CE8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125CE0: .word ov118_02125D00
_02125CE4: .word 0x00009CCD
_02125CE8: .word 0x0000EA3C
	arm_func_end FUN_ov118_02125c98

	.section .sinit, 4
ov118_02125CEC:
	.word FUN_ov118_02125c98

	.data
	.global ov118_02125D00
ov118_02125D00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D18
ov118_02125D18:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D28
ov118_02125D28:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D38
ov118_02125D38:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D48
ov118_02125D48:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D58
ov118_02125D58:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D68
ov118_02125D68:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x75, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D78
ov118_02125D78:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D88
ov118_02125D88:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x75, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125D98
ov118_02125D98:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125DA8
ov118_02125DA8:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x75, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125DB8
ov118_02125DB8:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125DC8
ov118_02125DC8:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125DD8
ov118_02125DD8:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x75, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125DE8
ov118_02125DE8:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125DF8
ov118_02125DF8:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E08
ov118_02125E08:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E18
ov118_02125E18:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E28
ov118_02125E28:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E38
ov118_02125E38:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E48
ov118_02125E48:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x73, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E58
ov118_02125E58:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E68
ov118_02125E68:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125E78
ov118_02125E78:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.global ov118_02125E88
ov118_02125E88:
	.byte 0x6D, 0x62, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125EA0
ov118_02125EA0:
	.word FUN_ov118_02125bc4
	.word FUN_ov118_02125bb0
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word FUN_ov118_02125ad8
	.word FUN_0202b208
	.word FUN_ov118_021259a8
	.word FUN_ov118_02125a50
	.word FUN_ov118_02125b84
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
	.word FUN_ov118_02124f80
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov118_02125F0C
ov118_02125F0C:
	.byte 0x53, 0x50, 0x53, 0x43
	.byte 0x6C, 0x72, 0x4D, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov118_02125F1C
ov118_02125F1C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x6F, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov118_02125F34
ov118_02125F34:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x6F, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

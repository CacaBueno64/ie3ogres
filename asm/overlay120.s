
	arm_func_start FUN_ov120_02124d00
FUN_ov120_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r5, r0
	str r1, [r5, #0xc]
	cmp r1, #1
	mov r4, #1
	beq _02124D28
	cmp r1, #2
	beq _02124DA8
	b _02124F14
_02124D28:
	ldr r0, _02124F20 ; =0x02125C48
	add r1, r5, #0x3c
	bl FUN_020DBE00
	ldr r0, _02124F24 ; =0x02125C54
	add r1, r5, #0xc0
	bl FUN_020DBEC4
	ldr r0, _02124F28 ; =0x02125C60
	add r1, r5, #0xcc
	bl FUN_020DBEC4
	ldr r0, _02124F2C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02124D68
	bl FUN_020F068C
	cmp r0, #0
	beq _02124F14
_02124D68:
	mov r6, #0
	mov r0, r6
	bl FUN_020DC150
	cmp r0, #0
	beq _02124D88
	mov r1, r6
	add r0, r5, #0x14
	bl FUN_020DB4F0
_02124D88:
	mov r0, r4
	bl FUN_020DC150
	cmp r0, #0
	beq _02124F14
	mov r1, r4
	add r0, r5, #0x28
	bl FUN_020DB4F0
	b _02124F14
_02124DA8:
	mov r6, #0
	ldr r0, _02124F30 ; =0x0209BA20
	mov r1, r6
	bl FUN_0207249c
	mov r0, r6
	bl FUN_020DC1F4
	mov r6, r0
	ldr r0, [r5, #0xc0]
	add r2, sp, #8
	mov r1, r6
	add r3, sp, #4
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124DF8
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124F34 ; =0x02125C6C
	add r1, r5, #0x90
	bl FUN_020DBEFC
_02124DF8:
	mov r0, #0
	bl FUN_020DC150
	cmp r0, #0
	bne _02124E3C
	ldr r0, [r5, #0xcc]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r6
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124E3C
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124F38 ; =0x02125C78
	add r1, r5, #0xa8
	bl FUN_020DBEFC
_02124E3C:
	ldr r0, _02124F30 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	mov r0, r4
	bl FUN_020DC1F4
	mov r6, r0
	ldr r0, [r5, #0xc0]
	add r2, sp, #8
	mov r1, r6
	add r3, sp, #4
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124E88
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124F3C ; =0x02125C84
	add r1, r5, #0x9c
	bl FUN_020DBEFC
_02124E88:
	mov r0, r4
	bl FUN_020DC150
	cmp r0, #0
	bne _02124ECC
	ldr r0, [r5, #0xcc]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r6
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124ECC
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124F40 ; =0x02125C90
	add r1, r5, #0xb4
	bl FUN_020DBEFC
_02124ECC:
	ldr r6, _02124F44 ; =0x020A8C40
	mov r8, #0
	mov r7, #0x800
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl FUN_0200787c
	mov r0, r6
	mov r1, r7
	bl FUN_020026d0
	ldr r6, _02124F48 ; =0x020A8440
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl FUN_0200787c
	mov r0, r6
	mov r1, r7
	bl FUN_020026d0
_02124F14:
	str r4, [r5, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02124F20: .word 0x02125C48
_02124F24: .word 0x02125C54
_02124F28: .word 0x02125C60
_02124F2C: .word 0x020A0640
_02124F30: .word 0x0209BA20
_02124F34: .word 0x02125C6C
_02124F38: .word 0x02125C78
_02124F3C: .word 0x02125C84
_02124F40: .word 0x02125C90
_02124F44: .word 0x020A8C40
_02124F48: .word 0x020A8440
	arm_func_end FUN_ov120_02124d00

	arm_func_start FUN_ov120_02124f4c
FUN_ov120_02124f4c: ; 0x02124F4C
	mov r1, r0
	ldr r0, [r1, #0x3c]
	ldr r2, _02124F64 ; =0x02125ACC
	ldr r12, _02124F68 ; =FUN_020DBFDC
	add r1, r1, #0x3c
	bx r12
_02124F64: .word 0x02125ACC
_02124F68: .word FUN_020DBFDC
	arm_func_end FUN_ov120_02124f4c

	arm_func_start FUN_ov120_02124f6c
FUN_ov120_02124f6c: ; 0x02124F6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	add r5, r7, #0x3c
	mov r4, #0xc
_02124F80:
	mla r0, r6, r4, r5
	bl FUN_020F33FC
	add r6, r6, #1
	cmp r6, #0xd
	blt _02124F80
	add r0, r7, #0x14
	mov r1, #2
	bl FUN_020F2FE4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov120_02124f6c

	arm_func_start FUN_ov120_02124fa4
FUN_ov120_02124fa4: ; 0x02124FA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r0, [r4, #0x60]
	mov r2, #1
	mvn r1, #0
	ldr r7, _021256F0 ; =0x020A8C40
	ldr r5, _021256F4 ; =0x020A0640
	mov r8, r2
	bl FUN_020DC13C
	mov r11, #0
	ldr r0, [r4, #0x78]
	mov r1, r11
	mov r2, #2
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0x90]
	mov r2, #3
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0x9c]
	mov r2, #4
	bl FUN_020DC13C
	mov r6, r0
	mov r0, r11
	bl FUN_020DC150
	cmp r0, #0
	bne _02125028
	ldr r0, [r4, #0xa8]
	mov r1, r6
	mov r2, #5
	bl FUN_020DC13C
	mov r6, r0
_02125028:
	mov r0, #1
	bl FUN_020DC150
	cmp r0, #0
	bne _0212504C
	ldr r0, [r4, #0xb4]
	mov r1, r6
	mov r2, #6
	bl FUN_020DC13C
	mov r6, r0
_0212504C:
	ldr r0, [r4, #0x48]
	mov r1, r6
	mov r2, #7
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0x54]
	mov r2, #8
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0x6c]
	mov r2, #9
	bl FUN_020DC13C
	ldr r0, _021256F8 ; =0x0209A144
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	ldr r1, [r1, #0x18]
	cmp r0, #0
	mov r0, r1, lsr #5
	sub r6, r0, #1
	bne _021250A8
	bl FUN_020F068C
	cmp r0, #0
	beq _02125158
_021250A8:
	mov r9, #0
	mov r0, r9
	bl FUN_020DC150
	cmp r0, #0
	beq _02125100
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldrne r0, [r4, #0x18]
	cmpne r0, #0
	movne r9, #1
	cmp r9, #0
	beq _02125100
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	mov r2, #2
	bl FUN_020F2EA8
	ldr r0, [r4, #0x14]
	add r2, r6, #1
	mov r1, #0x30
	mov r3, #0
	bl FUN_020F1868
	mov r6, r0
_02125100:
	mov r0, r8
	bl FUN_020DC150
	cmp r0, #0
	beq _02125158
	ldr r0, [r4, #0x28]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x2c]
	cmpne r0, #0
	movne r1, r8
	cmp r1, #0
	beq _02125158
	ldr r0, [r4, #0x28]
	mov r1, #0xc
	mov r2, #2
	bl FUN_020F2EA8
	ldr r0, [r4, #0x28]
	add r2, r6, #1
	mov r1, #0x30
	mov r3, #0
	bl FUN_020F1868
	mov r6, r0
_02125158:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _02125174
	ldr r0, [r4, #0x84]
	mov r1, r6
	mov r2, #0xa
	bl FUN_020DC13C
_02125174:
	bl FUN_020F10C8
	ldr r1, [r4, #0x60]
	mov r0, r11
	mov r2, r11
	bl FUN_020F1A60
	bl FUN_02004fac
	mov r6, #0x20
	mov r1, r0
	mov r0, r11
	mov r2, r6
	bl FUN_0200787c
	bl FUN_02004fac
	mov r1, r6
	bl FUN_020026d0
	ldr r1, [r4, #0x78]
	mov r2, r6
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0x90]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0x9c]
	mov r0, r8
	bl FUN_020F1A60
	mov r9, r0
	mov r0, r11
	bl FUN_020DC150
	cmp r0, #0
	bne _02125204
	ldr r1, [r4, #0xa8]
	mov r0, r8
	mov r2, r9
	bl FUN_020F1A60
	mov r9, r0
_02125204:
	mov r0, r8
	mov r6, #0xc
	bl FUN_020DC150
	cmp r0, #0
	bne _0212522C
	ldr r1, [r4, #0xb4]
	mov r0, r8
	mov r2, r9
	bl FUN_020F1A60
	mov r9, r0
_0212522C:
	ldr r1, [r4, #0x48]
	mov r0, r8
	mov r2, r9
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0x54]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0x6c]
	mov r0, r8
	bl FUN_020F1A60
	ldr r0, _021256F8 ; =0x0209A144
	mov r1, #0
	ldr r10, [r0]
	ldr r0, [r10, #0x14]
	ldr r2, [r10, #0x18]
	add r0, r10, r0
	bl FUN_020059ac
	ldrb r0, [r5, #0x1a]
	ldr r9, [r10, #0x18]
	cmp r0, #0
	bne _02125294
	bl FUN_020F068C
	cmp r0, #0
	beq _0212531C
_02125294:
	mov r10, #0
	mov r0, r10
	bl FUN_020DC150
	cmp r0, #0
	beq _021252D8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldrne r0, [r4, #0x18]
	cmpne r0, #0
	movne r10, #1
	cmp r10, #0
	beq _021252D8
	ldr r0, [r4, #0x18]
	mov r1, r9
	mov r2, #0x300
	bl FUN_020059ac
	add r9, r9, #0x300
_021252D8:
	mov r0, r8
	bl FUN_020DC150
	cmp r0, #0
	beq _0212531C
	ldr r0, [r4, #0x28]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x2c]
	cmpne r0, #0
	movne r1, r8
	cmp r1, #0
	beq _0212531C
	ldr r0, [r4, #0x2c]
	mov r1, r9
	mov r2, #0x300
	bl FUN_020059ac
	add r9, r9, #0x300
_0212531C:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0212533C
	ldr r1, [r4, #0x84]
	mov r2, r9
	mov r0, #2
	bl FUN_020F1A60
	mov r9, r0
_0212533C:
	ldr r10, [r4, #0x84]
	cmp r10, #0
	beq _02125368
	bl FUN_0200501c
	add r0, r9, r0
	str r0, [r4, #0x10]
	ldr r0, [r10, #0xc]
	ldr r2, [r10, #0x10]
	mov r1, r9
	add r0, r10, r0
	bl FUN_020059ac
_02125368:
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _02125388
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl FUN_0200546c
_02125388:
	ldrb r0, [r5, #0x8c]
	ldr r10, [r4, #0x78]
	cmp r0, #0
	movne r1, #4
	bne _02125410
	ldrb r0, [r5, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _0212540C
	cmp r0, #3
	blo _021253C0
	cmp r0, #5
	movls r0, #2
	bls _0212540C
_021253C0:
	ldrb r0, [r5, #0x8f]
	cmp r0, #6
	blo _021253D8
	cmp r0, #8
	movls r0, #3
	bls _0212540C
_021253D8:
	ldrb r0, [r5, #0x8f]
	cmp r0, #9
	blo _021253F0
	cmp r0, #0xb
	movls r0, #4
	bls _0212540C
_021253F0:
	ldrb r0, [r5, #0x8f]
	cmp r0, #0xc
	blo _02125408
	cmp r0, #0xe
	movls r0, #5
	bls _0212540C
_02125408:
	mvn r0, #0
_0212540C:
	sub r1, r0, #1
_02125410:
	cmp r10, #0
	beq _02125444
	mov r2, #0x12
	mul r0, r1, r2
	ldr r1, [r10, #0xc]
	mov r3, #4
	add r1, r10, r1
	add r0, r1, r0, lsl #3
	str r0, [sp]
	mov r0, #7
	mov r1, #0
	str r7, [sp, #4]
	bl FUN_020F191C
_02125444:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	beq _02125474
	ldr r0, [r2, #0xc]
	mov r1, #4
	add r0, r2, r0
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #5
	str r7, [sp, #4]
	bl FUN_020F191C
_02125474:
	ldr r2, [r4, #0x9c]
	cmp r2, #0
	beq _021254A4
	ldr r0, [r2, #0xc]
	mov r1, #4
	add r0, r2, r0
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #0x17
	str r7, [sp, #4]
	bl FUN_020F191C
_021254A4:
	mov r0, r11
	bl FUN_020DC150
	cmp r0, #0
	bne _021254E4
	ldr r1, [r4, #0xa8]
	cmp r1, #0
	beq _021254E4
	ldr r0, [r1, #0xc]
	mov r2, #0xf
	add r0, r1, r0
	str r0, [sp]
	mov r0, r11
	mov r1, #9
	mov r3, #2
	str r7, [sp, #4]
	bl FUN_020F191C
_021254E4:
	mov r0, #1
	bl FUN_020DC150
	cmp r0, #0
	bne _02125524
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	beq _02125524
	ldr r0, [r1, #0xc]
	mov r2, #0xf
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x11
	mov r1, #9
	mov r3, #2
	str r7, [sp, #4]
	bl FUN_020F191C
_02125524:
	ldr r9, _021256FC ; =0x02099EF0
	mov r1, #0
	ldr r0, [r9]
	bl FUN_02143C28
	mov r3, r0
	mov r0, r4
	mov r2, r6
	mov r1, #2
	bl FUN_ov120_02125704
	ldr r0, [r9]
	mov r1, #1
	bl FUN_02143C28
	mov r3, r0
	mov r2, r6
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov120_02125704
	bl FUN_020DB338
	cmp r0, #0
	beq _021255E0
	ldr r0, [r9]
	add r1, sp, #8
	ldr r9, _021256F0 ; =0x020A8C40
	bl FUN_02136E2C
	mov r6, #0x14
	ldr r3, [sp, #8]
	mov r0, r4
	mov r2, r6
	mov r1, #5
	bl FUN_ov120_021257ec
	ldr r3, [sp, #0xc]
	mov r0, r4
	mov r1, #0x17
	mov r2, r6
	bl FUN_ov120_021257ec
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _021255E0
	ldr r0, [r1, #0xc]
	mov r2, #6
	add r0, r1, r0
	str r0, [sp]
	mov r1, r6
	mov r0, #0xd
	mov r3, #4
	str r9, [sp, #4]
	bl FUN_020F191C
_021255E0:
	mov r6, #0x800
	mov r0, r7
	mov r1, r6
	bl FUN_020026d0
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl FUN_0200554c
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _02125618
	bl FUN_020F068C
	cmp r0, #0
	beq _021256C0
_02125618:
	mov r5, #0
	mov r0, r5
	bl FUN_020DC150
	cmp r0, #0
	beq _0212566C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldrne r0, [r4, #0x18]
	cmpne r0, #0
	movne r5, #1
	cmp r5, #0
	beq _0212566C
	ldr r0, [r4, #0x14]
	ldr r5, _02125700 ; =0x020A8440
	str r0, [sp]
	mov r0, #1
	mov r1, #9
	mov r2, #0xc
	mov r3, #2
	str r5, [sp, #4]
	bl FUN_020F191C
_0212566C:
	mov r0, r8
	bl FUN_020DC150
	cmp r0, #0
	beq _021256C0
	ldr r0, [r4, #0x28]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x2c]
	cmpne r0, #0
	movne r1, r8
	cmp r1, #0
	beq _021256C0
	ldr r0, [r4, #0x28]
	ldr r4, _02125700 ; =0x020A8440
	str r0, [sp]
	mov r0, #0x13
	mov r1, #9
	mov r2, #0xc
	mov r3, #2
	str r4, [sp, #4]
	bl FUN_020F191C
_021256C0:
	ldr r5, _02125700 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl FUN_020026d0
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_0200562c
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021256F0: .word 0x020A8C40
_021256F4: .word 0x020A0640
_021256F8: .word 0x0209A144
_021256FC: .word 0x02099EF0
_02125700: .word 0x020A8440
	arm_func_end FUN_ov120_02124fa4

	arm_func_start FUN_ov120_02125704
FUN_ov120_02125704: ; 0x02125704
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, [r0, #0x48]
	ldr r6, _021257E4 ; =0x020A8C40
	cmp r4, #0
	mov r10, r1
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	add r0, r6, r9, lsl #6
	add r7, r4, r1
	add r4, r0, r10, lsl #1
	mov r5, #6
	mov r11, #0
	b _02125760
_02125748:
	mov r0, r11
	mov r1, r4
	mov r2, #0x16
	bl FUN_02007804
	sub r5, r5, #1
	add r4, r4, #0x40
_02125760:
	cmp r5, #0
	bgt _02125748
	cmp r8, #0x63
	movgt r8, #0x63
	add r10, r10, #6
	cmp r8, #0xa
	ldr r5, _021257E8 ; =0x66666667
	sublt r10, r10, #3
	mov r11, #0xa
	mov r4, #0x1e
_02125788:
	smull r1, r2, r5, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	sub r2, r8, r0
	mul r0, r2, r4
	add r0, r7, r0, lsl #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, #5
	mov r3, #6
	str r6, [sp, #4]
	bl FUN_020F191C
	mov r1, r8
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #2
	cmp r8, #0
	sub r10, r10, #6
	bgt _02125788
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021257E4: .word 0x020A8C40
_021257E8: .word 0x66666667
	arm_func_end FUN_ov120_02125704

	arm_func_start FUN_ov120_021257ec
FUN_ov120_021257ec: ; 0x021257EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, [r0, #0x54]
	ldr r6, _021258CC ; =0x020A8C40
	cmp r4, #0
	mov r10, r1
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	add r0, r6, r9, lsl #6
	add r7, r4, r1
	add r4, r0, r10, lsl #1
	mov r5, #3
	mov r11, #0
	b _02125848
_02125830:
	mov r0, r11
	mov r1, r4
	mov r2, #8
	bl FUN_02007804
	sub r5, r5, #1
	add r4, r4, #0x40
_02125848:
	cmp r5, #0
	bgt _02125830
	cmp r8, #0x63
	movgt r8, #0x63
	add r10, r10, #2
	cmp r8, #0xa
	ldr r5, _021258D0 ; =0x66666667
	sublt r10, r10, #1
	mov r11, #0xa
	mov r4, #6
_02125870:
	smull r1, r2, r5, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	sub r2, r8, r0
	mul r0, r2, r4
	add r0, r7, r0, lsl #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, #2
	mov r3, #3
	str r6, [sp, #4]
	bl FUN_020F191C
	mov r1, r8
	smull r0, r8, r5, r1
	mov r0, r1, lsr #0x1f
	add r8, r0, r8, asr #2
	cmp r8, #0
	sub r10, r10, #2
	bgt _02125870
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021258CC: .word 0x020A8C40
_021258D0: .word 0x66666667
	arm_func_end FUN_ov120_021257ec

	arm_func_start FUN_ov120_021258d4
FUN_ov120_021258d4: ; 0x021258D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _021258F4
	cmp r0, #3
	beq _02125954
	ldmfd sp!, {r4, pc}
_021258F4:
	add r0, r4, #0x3c
	mov r1, #0xd
	bl FUN_020F330C
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02125920
	cmp r0, #2
	beq _02125930
	ldmfd sp!, {r4, pc}
_02125920:
	mov r0, r4
	mov r1, #2
	bl FUN_ov120_02124d00
	ldmfd sp!, {r4, pc}
_02125930:
	add r0, r4, #0xc0
	bl FUN_020F33FC
	add r0, r4, #0xcc
	bl FUN_020F33FC
	mov r0, r4
	bl FUN_ov120_02124f4c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125954:
	ldr r2, [r4, #0x10]
	ldr r3, _0212596C ; =0x020A8440
	mov r0, #0x1e
	mov r1, #0
	bl FUN_020DBCCC
	ldmfd sp!, {r4, pc}
_0212596C: .word 0x020A8440
	arm_func_end FUN_ov120_021258d4

	arm_func_start FUN_ov120_02125970
FUN_ov120_02125970: ; 0x02125970
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02125990
	cmp r1, #3
	beq _021259C0
	ldmfd sp!, {r3, r4, r5, pc}
_02125990:
	bl FUN_ov120_02124fa4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	bl FUN_ov120_02124f6c
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_021259C0:
	ldr r5, _021259E8 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl FUN_020026d0
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_0200562c
	ldmfd sp!, {r3, r4, r5, pc}
_021259E8: .word 0x020A8440
	arm_func_end FUN_ov120_02125970

	arm_func_start FUN_ov120_021259ec
FUN_ov120_021259ec: ; 0x021259EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x3c
	mov r2, #0x9c
	str r1, [r4, #8]
	str r1, [r4, #0x10]
	bl MemWrite
	add r0, r4, #0x14
	mov r1, #2
	bl FUN_020F2F7C
	bl FUN_020DB274
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02125A90 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02125A40
	bl FUN_020F068C
	cmp r0, #0
	beq _02125A80
_02125A40:
	mov r0, #0
	bl FUN_020DC150
	cmp r0, #0
	beq _02125A60
	add r0, r4, #0x14
	mov r1, #0xc
	mov r2, #2
	bl FUN_020F2FA8
_02125A60:
	mov r0, #1
	bl FUN_020DC150
	cmp r0, #0
	beq _02125A80
	add r0, r4, #0x28
	mov r1, #0xc
	mov r2, #2
	bl FUN_020F2FA8
_02125A80:
	mov r0, r4
	mov r1, #1
	bl FUN_ov120_02124d00
	ldmfd sp!, {r4, pc}
_02125A90: .word 0x020A0640
	arm_func_end FUN_ov120_021259ec

	arm_func_start FUN_ov120_02125a94
FUN_ov120_02125a94: ; 0x02125A94
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3c
	mov r1, #0xd
	bl FUN_020F338C
	mov r0, r4
	bl FUN_ov120_02124f6c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov120_02125a94

	arm_func_start FUN_ov120_02125ab4
FUN_ov120_02125ab4: ; 0x02125AB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov120_02125ab4

	arm_func_start FUN_ov120_02125ac8
FUN_ov120_02125ac8: ; 0x02125AC8
	bx lr
	arm_func_end FUN_ov120_02125ac8
_02125ACC:
	.byte 0x78, 0x5B, 0x12, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x94, 0x5B, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0xB4, 0x5B, 0x12, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xC4, 0x5B, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xA4, 0x5B, 0x12, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x84, 0x5B, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov120_02125b04
FUN_ov120_02125b04: ; 0x02125B04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125B4C ; =0x02125B60
	str r0, [r4, #0xc]
	ldr r0, _02125B50 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02125B54 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125B4C: .word 0x02125B60
_02125B50: .word 0x00009CCD
_02125B54: .word 0x0000EA3C
	arm_func_end FUN_ov120_02125b04
	; 0x02125B58
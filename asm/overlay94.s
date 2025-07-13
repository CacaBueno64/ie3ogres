
	.include "/macros/function.inc"
	.include "/include/overlay94.inc"

	.text
	arm_func_start FUN_ov94_02124d00
FUN_ov94_02124d00: ; 0x02124D00
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	mov r6, #8
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _02124D28
	bl FUN_ov94_02127908
_02124D28:
	ldr r0, [r5, #8]
	cmp r0, #0
	cmpne r0, #1
	beq _02124D44
	sub r0, r0, #3
	cmp r0, #2
	bhi _02124D4C
_02124D44:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02124D4C:
	ldr r1, [r4]
	ldr r0, [r5, #0x18]
	cmp r0, r1
	beq _02124E8C
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #9
	cmpne r0, #0xe
	beq _02124D80
	cmp r0, #2
	bne _02124E8C
	cmp r1, #2
	beq _02124E8C
_02124D80:
	cmp r1, #0xe
	bne _02124D90
	mov r0, #0xd
	b _02124D94
_02124D90:
	mov r0, #6
_02124D94:
	bl  FUN_ov16_020f4894
	mov r1, #0
	ldr r0, [r4]
	strb r1, [r4, #0xf]
	str r0, [r5, #0x18]
	ldrh r0, [r4, #4]
	add r12, r4, #0x1e
	add r3, r5, #0x36
	strh r0, [r5, #0x1c]
	ldrh r0, [r4, #6]
	mov r2, #8
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #8]
	strh r0, [r5, #0x20]
	ldrsh r0, [r4, #0xa]
	strh r0, [r5, #0x22]
	ldrb r0, [r4, #0xc]
	strb r0, [r5, #0x24]
	ldrb r0, [r4, #0xd]
	strb r0, [r5, #0x25]
	ldrb r0, [r4, #0xe]
	strb r0, [r5, #0x26]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #0x27]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x28]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0x2c]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #0x1c]
	strb r0, [r5, #0x34]
_02124E14:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124E14
	add r12, r4, #0x3e
	add r3, r5, #0x56
	mov r2, #8
_02124E3C:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124E3C
	ldrb r0, [r4, #0x5e]
	strb r0, [r5, #0x76]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	strne r6, [r5, #8]
	bne _02124E80
	mov r1, #7
	mov r0, #3
	str r1, [r5, #8]
	bl  FUN_ov16_020f1528
_02124E80:
	mov r0, #1
	strb r0, [r5, #0x11]
	ldmfd sp!, {r4, r5, r6, pc}
_02124E8C:
	ldrh r1, [r5, #0x1c]
	ldrh r0, [r4, #4]
	cmp r1, r0
	ldreqh r1, [r5, #0x1e]
	ldreqh r0, [r4, #6]
	cmpeq r1, r0
	ldreqh r1, [r5, #0x20]
	ldreqh r0, [r4, #8]
	cmpeq r1, r0
	ldreqsh r1, [r5, #0x22]
	ldreqsh r0, [r4, #0xa]
	cmpeq r1, r0
	ldreqb r1, [r5, #0x24]
	ldreqb r0, [r4, #0xc]
	cmpeq r1, r0
	ldreq r1, [r5, #0x30]
	ldreq r0, [r4, #0x18]
	cmpeq r1, r0
	bne _02124EE4
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _02124FCC
_02124EE4:
	mov r1, #0
	ldr r0, [r4]
	strb r1, [r4, #0xf]
	str r0, [r5, #0x18]
	ldrh r0, [r4, #4]
	add r12, r4, #0x1e
	add r3, r5, #0x36
	strh r0, [r5, #0x1c]
	ldrh r0, [r4, #6]
	mov r2, #8
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #8]
	strh r0, [r5, #0x20]
	ldrsh r0, [r4, #0xa]
	strh r0, [r5, #0x22]
	ldrb r0, [r4, #0xc]
	strb r0, [r5, #0x24]
	ldrb r0, [r4, #0xd]
	strb r0, [r5, #0x25]
	ldrb r0, [r4, #0xe]
	strb r0, [r5, #0x26]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #0x27]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x28]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0x2c]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #0x1c]
	strb r0, [r5, #0x34]
_02124F60:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124F60
	add r12, r4, #0x3e
	add r3, r5, #0x56
	mov r2, #8
_02124F88:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124F88
	ldrb r1, [r4, #0x5e]
	mov r0, r5
	strb r1, [r5, #0x76]
	bl FUN_ov94_02125774
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov94_0212559c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02124FCC:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov94_02124d00

	arm_func_start FUN_ov94_02124fd4
FUN_ov94_02124fd4: ; 0x02124FD4
	ldrb r1, [r0, #0x3d1]
	cmp r1, #0
	movne r0, #0
	bxne lr
	mov r2, #0
	mov r3, #1
	mov r1, #9
	strb r3, [r0, #0x3d1]
	strb r2, [r0, #0x3d0]
	strb r2, [r0, #0x3d2]
	str r1, [r0, #8]
	mov r0, r3
	bx lr
	arm_func_end FUN_ov94_02124fd4

	arm_func_start FUN_ov94_02125008
FUN_ov94_02125008: ; 0x02125008
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02125030
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
_02125030:
	cmp r0, #0
	ldrne r1, [r4, #0x23c]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02125050 ; =0x02099F04
	ldr r2, [r2]
	bl  FUN_ov16_020f0c30 ; may be ov17
	ldmfd sp!, {r4, pc}
_02125050: .word unk_02099F04
	arm_func_end FUN_ov94_02125008

	arm_func_start FUN_ov94_02125054
FUN_ov94_02125054: ; 0x02125054
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x374
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _021250A8 ; =0x02128FE8
	add r1, r4, #0x374
	bl  FUN_ov16_020f316c
	ldr r0, _021250AC ; =0x02129000
	add r1, r4, #0x380
	bl  FUN_ov16_020f316c
	ldr r0, _021250B0 ; =0x02129018
	add r1, r4, #0x38c
	bl  FUN_ov16_020f316c
	ldr r0, _021250B4 ; =0x02129030
	add r1, r4, #0x398
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021250A8: .word ov94_02128FE8
_021250AC: .word ov94_02129000
_021250B0: .word ov94_02129018
_021250B4: .word ov94_02129030
	arm_func_end FUN_ov94_02125054

	arm_func_start FUN_ov94_021250b8
FUN_ov94_021250b8: ; 0x021250B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x374
	mov r1, #4
	bl  FUN_ov16_020f338c
	add r5, r4, #0x374
	mov r6, #0
	mov r4, #0xc
_021250D8:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _021250D8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov94_021250b8

	arm_func_start FUN_ov94_021250f0
FUN_ov94_021250f0: ; 0x021250F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x150
	mov r12, r0
	ldr r4, [r12, #0x14c]
	cmp r4, #0
	addeq sp, sp, #0x150
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r12, #0x18]
	cmp r0, #9
	beq _02125174
	ldr lr, _021251D0 ; =0x02128ACC
	add r6, sp, #0xb0
	mov r5, #0xa
_02125124:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02125124
	ldr r0, [sp, #0xb0]
	add r7, sp, #0xb0
	cmp r0, #0
	addeq sp, sp, #0x150
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r12, #0x128
	mov r5, #0xc
_02125150:
	ldr r3, [r7, #4]
	mov r2, r4
	mla r1, r3, r5, r6
	bl  FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _02125150
	add sp, sp, #0x150
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125174:
	ldr lr, _021251D4 ; =0x02128B6C
	add r6, sp, #0
	mov r5, #0xb
_02125180:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02125180
	ldr r0, [sp]
	add r7, sp, #0
	cmp r0, #0
	addeq sp, sp, #0x150
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r12, #0x128
	mov r5, #0xc
_021251AC:
	ldr r3, [r7, #4]
	mov r2, r4
	mla r1, r3, r5, r6
	bl  FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _021251AC
	add sp, sp, #0x150
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021251D0: .word 0x02128ACC
_021251D4: .word 0x02128B6C
	arm_func_end FUN_ov94_021250f0

	arm_func_start FUN_ov94_021251d8
FUN_ov94_021251d8: ; 0x021251D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r6, [r7, #0x28]
	cmp r6, #0
	bne _02125200
	ldrh r0, [r7, #0x1c]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r6, r0
_02125200:
	cmp r6, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl  FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _0212533C ; =0x0209BA20
	bl FUN_0207249c
	mov r5, r0
	ldr r0, [r7, #0x374]
	cmp r0, #0
	beq _0212526C
	add r4, sp, #8
	add r3, sp, #0xc
	mov r1, r6
	mov r2, #0
	str r4, [sp]
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _0212526C
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125340 ; =0x02129050
	add r1, r7, #0x224
	bl  FUN_ov16_020f31fc
_0212526C:
	mov r0, r5
	mov r1, r6
	bl  FUN_ov16_020f0bcc
	ldrh r1, [r5, #0x28]
	mov r4, r0
	mov r0, r6
	cmp r1, #0
	ldreqh r1, [r5, #0x26]
	bl  FUN_ov16_020f0b3c
	mov r5, r0
	ldr r0, [r7, #0x380]
	cmp r0, #0
	beq _021252E4
	add r1, sp, #0xc
	str r1, [sp]
	add r12, sp, #8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #4]
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _021252E4
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125344 ; =0x02129068
	add r1, r7, #0x230
	bl  FUN_ov16_020f31fc
_021252E4:
	ldr r0, [r7, #0x38c]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, sp, #8
	add r3, sp, #0xc
	mov r1, r5
	mov r2, r4
	str r6, [sp]
	bl  FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125348 ; =0x02129080
	add r1, r7, #0x23c
	bl  FUN_ov16_020f31fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212533C: .word unk_0209BA20
_02125340: .word ov94_02129050
_02125344: .word ov94_02129068
_02125348: .word ov94_02129080
	arm_func_end FUN_ov94_021251d8

	arm_func_start FUN_ov94_0212534c
FUN_ov94_0212534c: ; 0x0212534C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r4, #0
	mov r1, r4
	add r0, r10, #0x80
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r8, [r10, #0x398]
	cmp r8, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x28]
	cmp r1, #0
	bne _02125398
	ldrh r0, [r10, #0x1c]
	mov r1, r4
	bl  FUN_ov16_020efa9c
	mov r1, r0
_02125398:
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r10, #0x90
	str r2, [sp]
	mov r4, #2
	ldr r0, _02125434 ; =0x0209BA20
	add r2, r10, #0x80
	mov r3, #4
	str r4, [sp, #4]
	bl FUN_0204aae8
	mov r9, #0
	add r5, r10, #0x128
	mov r6, r9
	add r7, sp, #0xc
	add r11, sp, #8
	mov r4, #0xc
_021253DC:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x80]
	cmp r1, #0
	beq _02125420
	mov r0, r8
	mov r2, r7
	mov r3, r11
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _02125420
	add r0, r9, #0x21
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125438 ; =0x02129098
	bl  FUN_ov16_020f31fc
_02125420:
	add r9, r9, #1
	cmp r9, #6
	blt _021253DC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125434: .word unk_0209BA20
_02125438: .word ov94_02129098
	arm_func_end FUN_ov94_0212534c

	arm_func_start FUN_ov94_0212543c
FUN_ov94_0212543c: ; 0x0212543C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x50
	mov r3, r1
	mov r5, r2
	add r4, sp, #0
	mov r6, r0
	ldr r1, _02125480 ; =0x021290B8
	mov r0, r4
	mov r2, r3
	bl sprintf
	add r1, r6, #0x128
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl  FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, pc}
_02125480: .word ov94_021290B8
	arm_func_end FUN_ov94_0212543c

	arm_func_start FUN_ov94_02125484
FUN_ov94_02125484: ; 0x02125484
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _02125500
	cmp r0, #2
	beq _021254B4
	cmp r0, #0xe
	beq _02125540
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021254B4:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021254CC
	ldrh r0, [r4, #0x1c]
	mov r1, #0
	bl  FUN_ov16_020efa9c
_021254CC:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x66]
	ldr r0, _02125584 ; =0x021290D4
	add r1, r4, #0x248
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02125500:
	ldrh r1, [r4, #0x20]
	ldr r0, _02125588 ; =0x0209BA20
	bl  FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x2a]
	ldr r0, _0212558C ; =0x021290F0
	add r1, r4, #0x248
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02125540:
	ldr r0, _02125590 ; =0x020A9C40
	bl FUN_020460fc
	ldr r2, _02125594 ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r0, r3, r2, r0
	add r3, r1, r3, asr #2
	mov r12, #0
	and r1, r3, #0xff
	mov r0, #0x24
	smulbb r2, r1, r0
	ldr r0, _02125598 ; =0x02129108
	add r1, r4, #0x248
	mov r3, #0x20
	str r12, [sp]
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02125584: .word ov94_021290D4
_02125588: .word unk_0209BA20
_0212558C: .word ov94_021290F0
_02125590: .word unk_020A9C40
_02125594: .word 0x66666667
_02125598: .word ov94_02129108
	arm_func_end FUN_ov94_02125484

	arm_func_start FUN_ov94_0212559c
FUN_ov94_0212559c: ; 0x0212559C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _021255BC
	cmp r1, #2
	beq _02125704
	b _02125738
_021255BC:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x128
	mov r2, #0x24c
	bl MI_CpuFill8
	ldr r5, _02125744 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _02125748 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, _0212574C ; =0x02129128
	add r1, r4, #0x134
	bl  FUN_ov16_020f316c
	ldr r0, [r4, #0x18]
	cmp r0, #9
	bgt _02125660
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02125700
_02125638: ; jump table
	b _0212566C ; case 0
	b _02125680 ; case 1
	b _02125694 ; case 2
	b _02125700 ; case 3
	b _02125700 ; case 4
	b _02125700 ; case 5
	b _02125700 ; case 6
	b _02125700 ; case 7
	b _02125700 ; case 8
	b _021256AC ; case 9
_02125660:
	cmp r0, #0xe
	beq _021256BC
	b _02125700
_0212566C:
	ldr r1, _02125750 ; =0x02129148
	mov r0, r4
	mov r2, r7
	bl FUN_ov94_0212543c
	b _02125700
_02125680:
	ldr r1, _02125754 ; =0x02129154
	mov r0, r4
	mov r2, r7
	bl FUN_ov94_0212543c
	b _021256F8
_02125694:
	ldr r1, _02125758 ; =0x02129160
	mov r0, r4
	mov r2, r7
	bl FUN_ov94_0212543c
	ldr r0, _0212575C ; =0x0212916C
	b _021256F0
_021256AC:
	ldr r0, _02125760 ; =0x0212918C
	add r1, r4, #0x14c
	bl  FUN_ov16_020f316c
	b _02125700
_021256BC:
	ldr r1, _02125764 ; =0x021291B0
	mov r0, r4
	mov r2, #0
	bl FUN_ov94_0212543c
	ldr r1, _02125768 ; =0x021291BC
	mov r0, r4
	mov r2, #0x28
	bl FUN_ov94_0212543c
	ldr r1, _0212576C ; =0x021291C8
	mov r0, r4
	mov r2, #0x29
	bl FUN_ov94_0212543c
	ldr r0, _02125770 ; =0x021291D4
_021256F0:
	add r1, r4, #0x14c
	bl  FUN_ov16_020f316c
_021256F8:
	mov r0, r4
	bl FUN_ov94_02125484
_02125700:
	b _02125730
_02125704:
	ldr r1, [r4, #0x18]
	cmp r1, #2
	beq _0212571C
	cmp r1, #9
	beq _02125724
	b _02125730
_0212571C:
	bl FUN_ov94_021251d8
	b _02125730
_02125724:
	bl FUN_ov94_021251d8
	mov r0, r4
	bl FUN_ov94_0212534c
_02125730:
	mov r0, #1
	strb r0, [r4, #0x11]
_02125738:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125744: .word unk_020A8C40
_02125748: .word unk_020A8440
_0212574C: .word ov94_02129128
_02125750: .word ov94_02129148
_02125754: .word ov94_02129154
_02125758: .word ov94_02129160
_0212575C: .word ov94_0212916C
_02125760: .word ov94_0212918C
_02125764: .word ov94_021291B0
_02125768: .word ov94_021291BC
_0212576C: .word ov94_021291C8
_02125770: .word ov94_021291D4
	arm_func_end FUN_ov94_0212559c

	arm_func_start FUN_ov94_02125774
FUN_ov94_02125774: ; 0x02125774
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x128
	mov r1, #0x31
	bl  FUN_ov16_020f338c
	add r5, r4, #0x128
	mov r6, #0
	mov r4, #0xc
_02125794:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x31
	blt _02125794
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov94_02125774

	arm_func_start FUN_ov94_021257ac
FUN_ov94_021257ac: ; 0x021257AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _021257DC
	ldr r0, _02125854 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_021257DC:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021257F8
	ldr r0, _02125854 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_021257F8:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125830
_02125818:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125818
_02125830:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_02125854: .word unk_0209A250
	arm_func_end FUN_ov94_021257ac

	arm_func_start FUN_ov94_02125858
FUN_ov94_02125858: ; 0x02125858
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x3c
	movs r7, r2
	mov r8, r0
	mov r9, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0xc
	mul r10, r1, r0
	add r1, r8, #0x98
	mov r0, r7
	add r4, r1, r10
	bl STD_GetStringLength
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	mov r5, #1
	cmp r0, #8
	movlt r5, r9
	ldr r1, [r4]
	mov r6, #3
	cmp r5, #0
	moveq r6, #0
	cmp r1, #0
	beq _021258C8
	ldr r0, _02125ABC ; =0x0209A250
	bl FUN_0202e1c0
	add r0, r8, r10
	str r9, [r0, #0x98]
_021258C8:
	add r0, r8, r10
	ldr r1, [r0, #0x9c]
	cmp r1, #0
	beq _021258E8
	ldr r0, _02125ABC ; =0x0209A250
	bl FUN_0202e1c0
	add r0, r8, r10
	str r9, [r0, #0x9c]
_021258E8:
	mov r0, r8
	mov r1, r4
	mov r2, #0x14
	mov r3, #5
	bl FUN_ov94_021257ac
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0
	bne _02125930
	ldr r0, _02125AC0 ; =0x02099ED0
	add r1, r7, #0x2c
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r6, r0, asr #1
_02125930:
	add r9, sp, #0x1c
	mov r2, r7
	mov r0, r9
	add r1, r7, #0x2c
	bl FUN_0204378c
	mov r0, #3
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [r4, #4]
	mov r3, r9
	str r1, [sp, #8]
	ldrh r10, [r4, #8]
	ldr r0, _02125AC0 ; =0x02099ED0
	mov r1, r6
	mov r9, r10, lsl #3
	str r9, [sp, #0xc]
	ldrh r9, [r4, #0xa]
	mov r9, r9, lsl #3
	str r9, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r0]
	ldr r9, [r0]
	ldr r9, [r9, #8]
	blx r9
	cmp r5, #0
	bne _021259BC
	ldr r0, _02125AC4 ; =0x02099F50
	mov r1, r7
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r6, r0, asr #1
_021259BC:
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r9, _02125AC4 ; =0x02099F50
	str r1, [sp, #8]
	ldrh r2, [r4, #8]
	mov r1, r6
	mov r5, #0xc
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r6, [r4, #0xa]
	mov r2, r5
	mov r3, r7
	mov r6, r6, lsl #3
	str r6, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r9]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
	ldr r0, [r9]
	add r1, r7, #0x1c
	bl FUN_0204294c
	ldr r1, [r8, #0x18]
	mov r8, #0
	cmp r1, #0xb
	rsbne r0, r0, #0x60
	addne r0, r0, r0, lsr #31
	movne r1, r0, asr #1
	rsbeq r0, r0, #0x72
	addeq r0, r0, r0, lsr #31
	moveq r1, r0, asr #1
	mov r0, #3
	str r0, [sp]
	str r8, [sp, #4]
	ldr r2, [r4, #4]
	movne r5, #0x1c
	str r2, [sp, #8]
	ldrh r6, [r4, #8]
	mov r2, r5
	ldr r0, _02125AC4 ; =0x02099F50
	mov r5, r6, lsl #3
	str r5, [sp, #0xc]
	ldrh r5, [r4, #0xa]
	add r3, r7, #0x1c
	mov r5, r5, lsl #3
	str r5, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02125ABC: .word unk_0209A250
_02125AC0: .word unk_02099ED0
_02125AC4: .word unk_02099F50
	arm_func_end FUN_ov94_02125858

	arm_func_start FUN_ov94_02125ac8
FUN_ov94_02125ac8: ; 0x02125AC8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r3, r5, #0x98
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1e
	mov r3, #6
	bl FUN_ov94_021257ac
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r5, #0x248]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r2, #3
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r3, #2
	str r3, [sp, #0xc]
	mov r2, #8
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r2, #0
	str r2, [sp, #0x18]
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	mov r2, r2, lsl #3
	add r2, r2, #2
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov94_02125ac8

	arm_func_start FUN_ov94_02125b58
FUN_ov94_02125b58: ; 0x02125B58
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	add r3, r6, #0x98
	mov r2, #0xc
	mla r5, r1, r2, r3
	mov r4, #3
	mov r1, r5
	mov r3, r4
	mov r2, #0x14
	bl FUN_ov94_021257ac
	ldr r1, [r5, #4]
	cmp r1, #0
	ldrne r0, [r6, #0x248]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r3, #2
	str r3, [sp, #0xc]
	mov r2, #4
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r2, #0
	str r2, [sp, #0x18]
	ldrh r2, [r5, #8]
	ldrh r3, [r5, #0xa]
	mov r2, r2, lsl #3
	add r2, r2, #2
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov94_02125b58

	arm_func_start FUN_ov94_02125be8
FUN_ov94_02125be8: ; 0x02125BE8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x98
	mov r3, #0xc
	mla r4, r1, r3, r4
	mov r7, #3
	mov r5, r2
	mov r1, r4
	mov r3, r7
	mov r2, #0x10
	bl FUN_ov94_021257ac
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _02125CC8 ; =0x0209BA20
	mov r1, r5
	bl  FUN_ov16_020ee064
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r5, _02125CCC ; =0x02099F50
	mov r1, #1
	ldr r0, [r5]
	mov r2, #4
	bl FUN_02043310
	str r7, [sp]
	mov r12, #0
	str r12, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, r7
	str r0, [sp, #8]
	ldrh r0, [r4, #8]
	mov r3, r6
	mov r2, #7
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r12, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r0, [r5]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02125CC8: .word unk_0209BA20
_02125CCC: .word unk_02099F50
	arm_func_end FUN_ov94_02125be8

	arm_func_start FUN_ov94_02125cd0
FUN_ov94_02125cd0: ; 0x02125CD0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x98
	mov r3, #0xc
	mla r9, r1, r3, r4
	mov r10, r2
	mov r1, r9
	mov r2, #0x10
	mov r3, #6
	bl FUN_ov94_021257ac
	ldr r0, [r9, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _02125E4C ; =0x0209BA20
	mov r7, #0
	mov r0, r8
	mov r1, r10
	mov r2, r7
	bl  FUN_ov16_020ee008
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02125E50 ; =0x02099F50
	mov r11, #1
	ldr r0, [r4]
	mov r1, r11
	mov r2, #4
	bl FUN_02043310
	mov r5, #3
	stmia sp, {r5, r7}
	ldr r0, [r9, #4]
	mov r3, r6
	str r0, [sp, #8]
	ldrh r0, [r9, #8]
	mov r1, r5
	mov r2, #7
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
	ldr r0, [r4]
	bl FUN_0204331c
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	mov r0, r8
	mov r1, r10
	mov r2, r11
	bl  FUN_ov16_020ee008
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	mov r1, r11
	mov r2, #4
	bl FUN_02043310
	stmia sp, {r5, r7}
	ldr r0, [r9, #4]
	mov r1, r5
	str r0, [sp, #8]
	ldrh r0, [r9, #8]
	mov r3, r6
	mov r2, #0x17
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	ldr r0, [r4]
	bl FUN_0204331c
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125E4C: .word unk_0209BA20
_02125E50: .word unk_02099F50
	arm_func_end FUN_ov94_02125cd0

	arm_func_start FUN_ov94_02125e54
FUN_ov94_02125e54: ; 0x02125E54
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x11]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x28]
	strb r4, [r6, #0x11]
	cmp r0, #0
	bne _02125E98
	ldrh r0, [r6, #0x1c]
	cmp r0, #0
	beq _02125E9C
	mov r1, r4
	bl  FUN_ov16_020efa9c
	b _02125E98
_02125E98:
	mov r4, r0
_02125E9C:
	cmp r5, #1
	beq _02125EB0
	cmp r5, #2
	beq _02125F00
	ldmfd sp!, {r4, r5, r6, pc}
_02125EB0:
	ldr r0, [r6, #0x18]
	cmp r0, #2
	beq _02125EC8
	cmp r0, #9
	beq _02125EDC
	ldmfd sp!, {r4, r5, r6, pc}
_02125EC8:
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_ov94_02125858
	ldmfd sp!, {r4, r5, r6, pc}
_02125EDC:
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_ov94_02125858
	mov r0, r6
	mov r2, r4
	mov r1, #5
	bl FUN_ov94_02125be8
	ldmfd sp!, {r4, r5, r6, pc}
_02125F00:
	ldr r0, [r6, #0x18]
	cmp r0, #9
	bgt _02125F2C
	bge _02125F48
	cmp r0, #2
	ldmgtfd sp!, {r4, r5, r6, pc}
	cmp r0, #1
	ldmltfd sp!, {r4, r5, r6, pc}
	cmpne r0, #2
	beq _02125F38
	ldmfd sp!, {r4, r5, r6, pc}
_02125F2C:
	cmp r0, #0xe
	beq _02125F60
	ldmfd sp!, {r4, r5, r6, pc}
_02125F38:
	mov r0, r6
	mov r1, #4
	bl FUN_ov94_02125ac8
	ldmfd sp!, {r4, r5, r6, pc}
_02125F48:
	mov r0, r6
	mov r2, r4
	mov r1, #6
	mov r3, #0
	bl FUN_ov94_02125cd0
	ldmfd sp!, {r4, r5, r6, pc}
_02125F60:
	mov r0, r6
	mov r1, #8
	bl FUN_ov94_02125b58
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov94_02125e54

	arm_func_start FUN_ov94_02125f70
FUN_ov94_02125f70: ; 0x02125F70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x4c]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x128]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	cmp r9, r0
	movgt r9, r0
	ldr r0, [r4, #0xc]
	cmn r9, #1
	add r8, r4, r0
	ble _021260E8
	ldr r0, [sp, #0x4c]
	mov r7, #2
	cmp r0, #0xe
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	mov r6, #1
	ldr r4, _02126140 ; =0x66666667
	beq _02126060
	mov r11, #4
_02125FDC:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	str r7, [sp]
	add r9, r0, r9, asr #2
	mov r0, r10, lsl #0x18
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r2, r8, r2, lsl #2
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02126144 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125FDC
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126060:
	mov r11, #5
_02126064:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	str r7, [sp]
	add r9, r0, r9, asr #2
	mov r0, r10, lsl #0x18
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r2, r8, r2, lsl #2
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02126144 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02126064
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021260E8:
	mov r4, #2
	mov r0, r10, lsl #0x18
	mov r3, r2, lsl #0x18
	str r4, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	mov r2, #0
	str r0, [sp, #8]
	mov r0, r3, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r4, #4
	ldr r0, _02126144 ; =0x0209F5C0
	mov r3, r2
	str r4, [sp, #0x18]
	add r4, r8, #0x28
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126140: .word 0x66666667
_02126144: .word unk_0209F5C0
	arm_func_end FUN_ov94_02125f70

	arm_func_start FUN_ov94_02126148
FUN_ov94_02126148: ; 0x02126148
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r8, #0x1a0]
	cmp r5, #0
	movgt r12, #0
	movgt r4, #8
	rsble r5, r5, #0
	movle r12, #4
	movle r4, #9
	cmp r3, #0
	beq _021261E8
	add r1, r7, #1
	mov r0, #2
	mov r2, r1, lsl #0x18
	mov lr, r6, lsl #0x18
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r2, r2, asr #0x18
	str r2, [sp, #8]
	mov r2, lr, asr #0x18
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, #0
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr lr, [r3, #0xc]
	ldr r0, _02126218 ; =0x0209F5C0
	add r3, r3, lr
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021261E8:
	add r0, r7, #3
	ldr r2, _0212621C ; =0x000003E7
	mov r1, r0, lsl #0x10
	str r2, [sp]
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, r1, asr #0x10
	str r4, [sp, #4]
	bl FUN_ov94_02125f70
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02126218: .word unk_0209F5C0
_0212621C: .word 0x000003E7
	arm_func_end FUN_ov94_02126148

	arm_func_start FUN_ov94_02126220
FUN_ov94_02126220: ; 0x02126220
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0x230]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02126294
	mov r2, #2
	mov r0, r5, lsl #0x18
	mov r1, #1
	str r2, [sp]
	mov r2, r4, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02126304 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126294:
	ldr r3, [r6, #0x224]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #2
	mov r0, r5, lsl #0x18
	mov r2, r4, lsl #0x18
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	mov r2, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r4, [r3, #0xc]
	ldr r0, _02126304 ; =0x0209F5C0
	add r4, r3, r4
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02126304: .word unk_0209F5C0
	arm_func_end FUN_ov94_02126220

	arm_func_start FUN_ov94_02126308
FUN_ov94_02126308: ; 0x02126308
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r5, r0
	ldr r7, [r5, #0x98]
	mov r4, r1
	cmp r7, #0
	mov r6, #4
	mov r0, #9
	mov r9, #2
	mov r8, #1
	beq _02126378
	ldrh r3, [r5, #0xa2]
	ldrh r2, [r5, #0xa0]
	mov r1, r8
	str r9, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	and r0, r2, #0xff
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	and r0, r3, #0xff
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r2, r1
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126378:
	mov r0, r4
	mov r1, r8
	bl FUN_0206d9b0
	cmp r0, #1
	blo _0212640C
	mov r0, r4
	mov r1, r8
	bl FUN_0206d9b0
	cmp r0, #0x14
	bhi _0212640C
	ldr r7, [r5, #0x1ac]
	cmp r7, #0
	beq _0212640C
	mov r0, r4
	mov r1, r8
	bl FUN_0206d9b0
	ldr r2, [r7, #0xc]
	sub r1, r0, #1
	str r9, [sp]
	add r2, r7, r2
	mov r0, #0xc
	mla r7, r1, r0, r2
	mov r2, #0
	str r8, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r9, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r1, r8
	mov r3, r2
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212640C:
	ldr r8, [r5, #0x1b8]
	cmp r8, #0
	beq _0212645C
	ldr r7, [r8, #0xc]
	mov r2, #0
	str r9, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	mov r6, #5
	str r6, [sp, #0x18]
	add r6, r8, r7
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r3, r2
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212645C:
	mov r8, #0
	ldr r0, _02126A6C ; =0x0209BA20
	mov r1, r4
	mov r3, r8
	mov r2, #0xf
	sub r9, r8, #1
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021264BC
_02126484: ; jump table
	b _021264BC ; case 0
	b _02126498 ; case 1
	b _021264A4 ; case 2
	b _021264AC ; case 3
	b _021264B4 ; case 4
_02126498:
	mov r9, #0x11
_0212649C:
	mov r8, #0xa
	b _021264BC
_021264A4:
	mov r9, #0x12
	b _0212649C
_021264AC:
	mov r9, #0x13
	b _021264B8
_021264B4:
	mov r9, #0x14
_021264B8:
	mov r8, #0xb
_021264BC:
	cmp r9, #0
	mov r10, #4
	mov r7, #2
	mov r6, #1
	blt _0212652C
	mov r0, #0xc
	mla r0, r9, r0, r5
	ldr r11, [r0, #0x128]
	cmp r11, #0
	beq _0212652C
	ldr r9, [r11, #0xc]
	mov r2, #0
	str r7, [sp]
	mov r1, r6
	str r1, [sp, #4]
	mov r0, #0x1b
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	and r8, r8, #0xff
	str r8, [sp, #0x18]
	add r8, r11, r9
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r3, r2
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212652C:
	mov r0, r4
	bl FUN_0204fb60
	cmp r0, #4
	mvn r8, #0
	addls pc, pc, r0, lsl #2
	b _02126574
_02126544: ; jump table
	b _02126574 ; case 0
	b _02126558 ; case 1
	b _02126560 ; case 2
	b _02126568 ; case 3
	b _02126570 ; case 4
_02126558:
	mov r8, #1
	b _02126574
_02126560:
	mov r8, #2
	b _02126574
_02126568:
	mov r8, #3
	b _02126574
_02126570:
	mov r8, #0
_02126574:
	cmp r8, #0
	blt _021265D0
	ldr r9, [r5, #0x1c4]
	cmp r9, #0
	beq _021265D0
	ldr r3, [r9, #0xc]
	mov r1, #1
	str r7, [sp]
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	mov r2, #0
	add r11, r9, r3
	str r2, [sp, #0xc]
	str r10, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r9, #5
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r3, r2
	str r9, [sp, #0x18]
	add r8, r11, r8, lsl #4
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021265D0:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	ldrne r0, [r5, #0x78]
	cmpne r0, #0
	mov r0, r4
	beq _021265EC
	b _021265EC
_021265EC:
	bl FUN_0206ccdc
	mov r9, r0
	mov r0, r4
	bl FUN_0206ccec
	mov r11, r0
	mov r0, r4
	bl FUN_0206cc84
	str r0, [sp, #0x24]
	mov r0, r4
	bl FUN_0206cc94
	str r0, [sp, #0x20]
	ldr r2, [r5, #0x1dc]
	cmp r2, #0
	beq _0212677C
	ldr r1, [r2, #0xc]
	mov r10, #2
	str r10, [sp]
	str r6, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r8, r2, r1
	mov r0, #3
	str r0, [sp, #0x10]
	mov r2, #0
	str r10, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, #3
	mov r3, r9
	add r9, r0, #0x3e4
	str r9, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0xe
	mov r2, #6
	bl FUN_ov94_02125f70
	str r9, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, r11
	mov r0, r5
	mov r1, #0x12
	mov r2, #6
	bl FUN_ov94_02125f70
	mov r1, #0xf
	sub r11, r1, #0x10
	str r6, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, r5
	mov r2, #6
	mov r3, r11
	bl FUN_ov94_02125f70
	str r10, [sp]
	str r6, [sp, #4]
	mov r1, #0x14
	str r1, [sp, #8]
	mov r1, #6
	str r1, [sp, #0xc]
	mov r1, #3
	str r1, [sp, #0x10]
	str r10, [sp, #0x14]
	mov r1, #4
	str r1, [sp, #0x18]
	add r2, r8, #0xc
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f5da0
	ldr r3, [sp, #0x24]
	mov r8, #5
	str r9, [sp]
	mov r0, r5
	mov r1, #0x19
	mov r2, #6
	str r8, [sp, #4]
	bl FUN_ov94_02125f70
	str r9, [sp]
	ldr r3, [sp, #0x20]
	mov r0, r5
	mov r2, #6
	mov r1, #0x1d
	str r8, [sp, #4]
	bl FUN_ov94_02125f70
	mov r0, r5
	mov r2, #6
	mov r3, r11
	mov r1, #0x1a
	stmia sp, {r6, r8}
	bl FUN_ov94_02125f70
_0212677C:
	ldr r0, [r5, #0x1d0]
	mov r9, #4
	cmp r0, #0
	mov r6, #0xe
	beq _021267B8
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r3, [r0, #0x4a]
	mov r0, #0x63
	mov r1, #0x19
	str r0, [sp]
	mov r0, r5
	mov r2, #0
	str r6, [sp, #4]
	bl FUN_ov94_02125f70
_021267B8:
	ldr r1, [r5, #0x1e8]
	cmp r1, #0
	beq _02126814
	ldrb r0, [r4, #0x5a]
	mov r2, #0
	mov r3, r2
	cmp r0, #1
	ldr r0, [r1, #0xc]
	addeq r8, r1, r0
	addne r0, r1, r0
	addne r8, r0, #8
	str r7, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126814:
	mov r9, #0
	mov r0, r4
	mov r10, r9
	add r8, r4, #0x6c
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _02126A6C ; =0x0209BA20
	add r2, sp, #0x28
	bl FUN_0204c078
	mov r11, #9
	b _02126850
_02126840:
	add r0, r8, r10
	ldrb r0, [r0, #0xf]
	add r10, r10, #1
	add r9, r9, r0
_02126850:
	cmp r10, #7
	blt _02126840
	ldrh r8, [sp, #0x64]
	cmp r8, #0
	ldreq r8, _02126A70 ; =0x00007FFF
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	bne _02126880
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x1d
	bne _021268A0
_02126880:
	mov r0, r4
	ldrb r4, [sp, #0x6e]
	bl  FUN_ov16_020f0810
	ldr r1, _02126A74 ; =0x020A06BC
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	mov r0, r0, asr r4
	b _02126924
_021268A0:
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x10
	beq _021268C0
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021268C8
_021268C0:
	mov r1, #0
	b _02126930
_021268C8:
	ldr r0, _02126A78 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _02126914
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x76
	beq _02126914
	mov r0, r4
	bl FUN_0206d4fc
	cmp r0, #4
	bge _02126910
	ldr r1, _02126A74 ; =0x020A06BC
	mov r0, r0, lsl #1
	ldrb r2, [sp, #0x6e]
	ldrh r0, [r1, r0]
	mov r0, r0, asr r2
	b _02126924
_02126910:
	b _021268C0
_02126914:
	ldr r0, _02126A7C ; =0x020A1540
	ldrb r1, [sp, #0x6e]
	ldrh r0, [r0, #0xd0]
	mov r0, r0, asr r1
_02126924:
	tst r0, #1
	movne r1, #1
	moveq r1, #0
_02126930:
	ldrh r0, [sp, #0x64]
	cmp r0, #0
	ldreq r0, _02126A70 ; =0x00007FFF
	cmp r1, #0
	add r0, r0, #0x14
	beq _021269A8
	cmp r9, r0
	blt _021269A8
	ldr r3, [r5, #0x368]
	cmp r3, #0
	addeq sp, sp, #0x70
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r3, #0xc]
	mov r1, #1
	str r7, [sp]
	stmib sp, {r1, r11}
	mov r0, #8
	str r0, [sp, #0xc]
	add r3, r3, r2
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r4, r3, #0x70
	str r6, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021269A8:
	cmp r1, #0
	beq _02126A08
	ldr r3, [r5, #0x368]
	cmp r3, #0
	addeq sp, sp, #0x70
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r3, #0xc]
	mov r1, #1
	str r7, [sp]
	stmib sp, {r1, r11}
	mov r0, #8
	str r0, [sp, #0xc]
	add r3, r3, r2
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r4, r3, #0x38
	str r6, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126A08:
	cmp r9, r8
	addlt sp, sp, #0x70
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r5, #0x368]
	cmp r4, #0
	addeq sp, sp, #0x70
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r4, #0xc]
	mov r1, #1
	str r7, [sp]
	stmib sp, {r1, r11}
	mov r0, #8
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r4, r4, r3
	str r6, [sp, #0x18]
	ldr r0, _02126A68 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126A68: .word unk_0209F5C0
_02126A6C: .word unk_0209BA20
_02126A70: .word 0x00007FFF
_02126A74: .word unk_020A06BC
_02126A78: .word unk_020A0640
_02126A7C: .word unk_020A1540
	arm_func_end FUN_ov94_02126308

	arm_func_start FUN_ov94_02126a80
FUN_ov94_02126a80: ; 0x02126A80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r4, r1
	mov r5, r0
	mov r0, r4
	ldr r7, _02126F54 ; =0x0209BA20
	bl  FUN_ov16_020f0810
	ldr r0, [r5, #0x18]
	cmp r0, #3
	beq _02126AB0
	cmp r0, #7
	bne _02126D74
_02126AB0:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _02126D74
	ldr r1, [r5, #0x78]
	cmp r1, #0
	ldrne r0, [r5, #0x7c]
	cmpne r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0x98
	mov r0, r4
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, [r5, #0x78]
	bl FUN_0206dcd4
	mov r1, r0
	ldr r0, [r5, #0x7c]
	bl FUN_0206ed40
	ldr r2, [r5, #0x7c]
	ldr r1, [r5, #0x78]
	mov r0, r4
	str r2, [r1, #0x68]
	bl FUN_0206d5f0
	ldrb r0, [r5, #0x2c]
	ldrsh r3, [r5, #0x22]
	cmp r0, #0
	ldrne r0, [r5, #0x30]
	subne r8, r6, #0x99
	movne r0, r0, lsl #0x10
	movne r2, r0, lsr #0x10
	ldreqh r2, [r5, #0x20]
	moveq r8, #1
	cmp r3, #4
	bne _02126B3C
	b _02126B5C
_02126B3C:
	cmp r3, #3
	beq _02126B5C
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x78]
	ldr r0, _02126F54 ; =0x0209BA20
	bl  FUN_ov16_020eea8c
	b _02126B68
_02126B5C:
	ldr r1, [r5, #0x78]
	ldr r0, _02126F54 ; =0x0209BA20
	bl  FUN_ov16_020ee1e4
_02126B68:
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #0x1e
	mov r6, #0
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	mov r9, r0
	ldr r1, [r5, #0x78]
	mov r0, r7
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	sub r0, r0, r9
	mul r3, r8, r0
	mov r0, r5
	mov r1, #0xc
	mov r2, #9
	bl FUN_ov94_02126148
	mov r9, #0x1f
	mov r0, r7
	mov r1, r4
	mov r2, r9
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r9
	mov r9, r0
	ldr r1, [r5, #0x78]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r0, r0, r9
	ldr r9, _02126F58 ; =0x02128CC0
	mul r3, r8, r0
	ldrsh r1, [r9, #8]
	ldrsh r2, [r9, #0xa]
	mov r0, r5
	bl FUN_ov94_02126148
	mov r10, #0x21
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r10
	mov r10, r0
	ldr r1, [r5, #0x78]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r0, r0, r10
	mul r3, r8, r0
	ldrsh r1, [r9, #0x10]
	ldrsh r2, [r9, #0x12]
	mov r0, r5
	bl FUN_ov94_02126148
	mov r10, #0x20
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r10
	mov r10, r0
	ldr r1, [r5, #0x78]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r0, r0, r10
	mul r3, r8, r0
	ldrsh r1, [r9, #0x30]
	ldrsh r2, [r9, #0x32]
	mov r0, r5
	bl FUN_ov94_02126148
	mov r10, #0x22
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r10
	mov r10, r0
	ldr r1, [r5, #0x78]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r0, r0, r10
	mul r3, r8, r0
	ldrsh r1, [r9]
	ldrsh r2, [r9, #2]
	mov r0, r5
	bl FUN_ov94_02126148
	mov r10, #0x24
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r10
	mov r10, r0
	ldr r1, [r5, #0x78]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r0, r0, r10
	mul r3, r8, r0
	ldrsh r1, [r9, #0x14]
	ldrsh r2, [r9, #0x16]
	mov r0, r5
	bl FUN_ov94_02126148
	mov r10, #0x23
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r6
	bl FUN_0204f02c
	mov r3, r6
	mov r6, r0
	ldr r1, [r5, #0x78]
	mov r2, r10
	mov r0, r7
	bl FUN_0204f02c
	sub r0, r0, r6
	mul r3, r8, r0
	ldrsh r1, [r9, #0x1c]
	ldrsh r2, [r9, #0x1e]
	mov r0, r5
	bl FUN_ov94_02126148
_02126D74:
	ldrb r0, [r5, #0x2c]
	ldr r9, _02126F5C ; =0x02128AB0
	ldr r7, _02126F54 ; =0x0209BA20
	cmp r0, #0
	ldrne r8, [r5, #0x78]
	ldmia r9!, {r0, r1, r2, r3}
	cmpne r8, #0
	moveq r8, r4
	add r4, sp, #8
	stmia r4!, {r0, r1, r2, r3}
	mov r6, #0
	ldmia r9, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r0, r7
	mov r1, r8
	mov r3, r6
	mov r2, #0x1e
	bl FUN_0204f02c
	ldr r4, _02126F60 ; =0x000003E7
	mov r3, r0
	str r4, [sp]
	ldr r2, [sp, #8]
	mov r0, r5
	str r2, [sp, #4]
	mov r1, #0xc
	mov r2, #9
	bl FUN_ov94_02125f70
	mov r0, r7
	mov r1, r8
	mov r2, #0x1f
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0xc]
	mov r3, r0
	ldr r9, _02126F58 ; =0x02128CC0
	str r1, [sp, #4]
	ldrsh r1, [r9, #8]
	ldrsh r2, [r9, #0xa]
	mov r0, r5
	bl FUN_ov94_02125f70
	mov r0, r7
	mov r1, r8
	mov r2, #0x21
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x10]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x10]
	ldrsh r2, [r9, #0x12]
	mov r0, r5
	bl FUN_ov94_02125f70
	mov r0, r7
	mov r1, r8
	mov r2, #0x20
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x14]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x30]
	ldrsh r2, [r9, #0x32]
	mov r0, r5
	bl FUN_ov94_02125f70
	mov r0, r7
	mov r1, r8
	mov r2, #0x22
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x18]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9]
	ldrsh r2, [r9, #2]
	mov r0, r5
	bl FUN_ov94_02125f70
	mov r0, r7
	mov r1, r8
	mov r2, #0x24
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x1c]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x14]
	ldrsh r2, [r9, #0x16]
	mov r0, r5
	bl FUN_ov94_02125f70
	mov r0, r7
	mov r3, r6
	mov r1, r8
	mov r2, #0x23
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x20]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x1c]
	ldrsh r2, [r9, #0x1e]
	mov r0, r5
	bl FUN_ov94_02125f70
	mov r0, r8
	bl FUN_0206dcd4
	ldr r2, _02126F64 ; =0x000F423F
	mov r3, r0
	mov r1, #4
	str r2, [sp]
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x28]
	ldrsh r2, [r9, #0x2a]
	ldr r3, [r3]
	mov r0, r5
	bl FUN_ov94_02125f70
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02126F54: .word unk_0209BA20
_02126F58: .word ov94_02128CC0
_02126F5C: .word 0x02128AB0
_02126F60: .word 0x000003E7
_02126F64: .word 0x000F423F
	arm_func_end FUN_ov94_02126a80

	arm_func_start FUN_ov94_02126f68
FUN_ov94_02126f68: ; 0x02126F68
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r1, [r0, #0x18]
	ldr r12, [r0, #0xc8]
	mov r2, #1
	cmp r1, #0xf
	moveq r2, #0
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r3, [r0, #0xd0]
	ldrh r0, [r0, #0xd2]
	mov r5, #2
	rsb r1, r3, #0x20
	add r1, r1, r1, lsr #31
	mov lr, r1, lsl #0x17
	rsb r1, r0, #0x18
	mov r4, r1, lsl #0x18
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov lr, lr, asr #0x18
	str lr, [sp, #8]
	mov r4, r4, asr #0x18
	str r4, [sp, #0xc]
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _02126FF8 ; =0x0209F5C0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_02126FF8: .word unk_0209F5C0
	arm_func_end FUN_ov94_02126f68

	arm_func_start FUN_ov94_02126ffc
FUN_ov94_02126ffc: ; 0x02126FFC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr lr, [r0, #0xf8]
	add r12, r0, #0xf8
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldrh r3, [r12, #8]
	mov r2, #0
	ldr r0, _02127070 ; =0x0209F5C0
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r12, [r12, #0xa]
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02127070: .word unk_0209F5C0
	arm_func_end FUN_ov94_02126ffc

	arm_func_start FUN_ov94_02127074
FUN_ov94_02127074: ; 0x02127074
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x28]
	cmp r4, #0
	bne _021270A0
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r4, r0
_021270A0:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov94_02126220
	mov r0, r5
	mov r1, r4
	bl FUN_ov94_02126a80
	mov r0, r5
	mov r1, r4
	bl FUN_ov94_02126308
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov94_02127074

	arm_func_start FUN_ov94_021270d4
FUN_ov94_021270d4: ; 0x021270D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r0, [r5, #0x28]
	mov r6, #2
	str r0, [sp, #0x20]
	cmp r0, #0
	mov r7, #1
	mov r10, #0
	bne _02127118
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r10
	bl  FUN_ov16_020efa9c
	str r0, [sp, #0x20]
_02127118:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r7
	bl FUN_ov94_02126220
	ldr r1, [sp, #0x20]
	mov r0, r5
	bl FUN_ov94_02126308
	ldr r4, [r5, #0xd4]
	cmp r4, #0
	beq _02127198
	mov r0, #2
	stmia sp, {r0, r7}
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0xdc]
	ldr r0, _02127740 ; =0x0209F5C0
	mov r1, r7
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r8, [r5, #0xde]
	mov r2, r7
	and r8, r8, #0xff
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02127198:
	ldr r4, [r5, #0xe0]
	cmp r4, #0
	beq _021271EC
	mov r1, #1
	str r6, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldrh r8, [r5, #0xe8]
	ldr r0, _02127740 ; =0x0209F5C0
	mov r2, r1
	and r8, r8, #0xff
	str r8, [sp, #0x10]
	ldrh r8, [r5, #0xea]
	and r8, r8, #0xff
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021271EC:
	mov r0, #0x21
	mov r8, #0xb
	mov r11, #0
	str r0, [sp, #0x2c]
_021271FC:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x21
	addne r0, r8, #2
	addne r11, r11, #1
	movne r0, r0, lsl #0x10
	add r1, r5, r11, lsl #2
	movne r8, r0, asr #0x10
	ldr r0, _02127744 ; =0x0209BA20
	ldr r1, [r1, #0x80]
	bl FUN_0204a2c4
	mov r4, r0
	ldr r1, [sp, #0x2c]
	mov r0, #0xc
	mla r0, r1, r0, r5
	ldr r1, [r0, #0x128]
	cmp r1, #0
	beq _021274AC
	stmia sp, {r6, r7}
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _02127740 ; =0x0209F5C0
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	ldr r2, [r5, #0x260]
	cmp r4, #0
	cmpne r2, #0
	beq _0212734C
	ldrb r0, [r4]
	mov r1, r10
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _021272F8
_021272B0: ; jump table
	b _021272F8 ; case 0
	b _021272F8 ; case 1
	b _021272F8 ; case 2
	b _021272F8 ; case 3
	b _021272F8 ; case 4
	b _021272D8 ; case 5
	b _021272DC ; case 6
	b _021272E4 ; case 7
	b _021272EC ; case 8
	b _021272F4 ; case 9
_021272D8:
	b _021272F8
_021272DC:
	mov r1, r7
	b _021272F8
_021272E4:
	mov r1, r6
	b _021272F8
_021272EC:
	mov r1, #3
	b _021272F8
_021272F4:
	mov r1, #5
_021272F8:
	stmia sp, {r6, r7}
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #0xc
	str r0, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _02127740 ; =0x0209F5C0
	add r3, r2, r3
	mov r2, #0xc
	mla r2, r1, r2, r3
	str r2, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_0212734C:
	ldrb r0, [r4]
	cmp r0, #9
	ldrne r1, [r5, #0x29c]
	cmpne r1, #0
	beq _02127568
	stmia sp, {r6, r7}
	mov r0, #0x1d
	str r0, [sp, #8]
	add r0, r8, #1
	str r0, [sp, #0x28]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _02127740 ; =0x0209F5C0
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	mov r0, r4
	mov r1, r10
	mov r2, #0x64
	bl FUN_0204b0c4
	mov r9, r0
	ldr r0, [r5, #0x2a8]
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02127568
	cmp r9, #0xa
	blt _02127444
	stmia sp, {r6, r7}
	mov r0, #0x1e
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r2, _02127748 ; =0x66666667
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldr r1, [r0, #0xc]
	smull r3, r0, r2, r9
	ldr r2, [sp, #0x24]
	mov r3, r10
	add r2, r2, r1
	mov r1, r9, lsr #0x1f
	add r0, r1, r0, asr #2
	add r0, r2, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _02127740 ; =0x0209F5C0
	mov r1, r7
	mov r2, r10
	bl  FUN_ov16_020f5da0
_02127444:
	ldr r0, [sp, #0x28]
	stmia sp, {r6, r7}
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #0x1f
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldr r2, _02127748 ; =0x66666667
	ldr r1, [r0, #0xc]
	smull r3, r0, r2, r9
	ldr r2, [sp, #0x24]
	add r1, r2, r1
	mov r2, r9, lsr #0x1f
	add r0, r2, r0, asr #2
	mov r2, #0xa
	smull r0, r3, r2, r0
	sub r0, r9, r0
	add r0, r1, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _02127740 ; =0x0209F5C0
	b _02127558
_021274AC:
	cmp r11, #4
	bge _02127568
	ldr r1, [r5, #0x254]
	cmp r1, #0
	beq _0212750C
	stmia sp, {r6, r7}
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _02127740 ; =0x0209F5C0
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_0212750C:
	ldr r1, [r5, #0x260]
	cmp r1, #0
	beq _02127568
	stmia sp, {r6, r7}
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #0xc
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _02127740 ; =0x0209F5C0
	add r1, r1, r2
	add r1, r1, #0x30
	str r1, [sp, #0x1c]
_02127558:
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_02127568:
	cmp r4, #0
	beq _02127724
	add r2, r5, r11, lsl #2
	ldr r0, _02127744 ; =0x0209BA20
	ldr r1, [sp, #0x20]
	ldr r2, [r2, #0x80]
	bl FUN_0207224c
	movs r9, r0
	ldrneb r3, [r4, #0x14]
	cmpne r3, #0
	beq _02127724
	ldr r0, _0212774C ; =0x51EB851F
	cmp r9, #1
	smull r1, r2, r0, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #5
	and r4, r2, #0xff
	ble _02127724
	cmp r4, #0
	mov r1, r10
	beq _021275D0
	cmp r4, #1
	beq _021275D8
	cmp r4, #2
	beq _021275F4
	b _02127724
_021275D0:
	ldr r2, [r5, #0x26c]
	b _021275F8
_021275D8:
	sub r0, r9, #2
	mov r1, #6
	mul r1, r0, r1
	ldr r2, [r5, #0x284]
	mov r3, #0xd
	mov r0, #3
	b _02127600
_021275F4:
	ldr r2, [r5, #0x290]
_021275F8:
	mov r3, #0xd
	mov r0, r7
_02127600:
	stmia sp, {r6, r7}
	and r12, r3, #0xff
	mov r3, #0x1d
	str r3, [sp, #8]
	mov r3, r8, lsl #0x18
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _02127740 ; =0x0209F5C0
	add r2, r2, r3
	add r1, r2, r1
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	cmp r4, #1
	beq _02127724
	ldr r4, [r5, #0x278]
	mov r0, r8, lsl #0x18
	stmia sp, {r6, r7}
	mov r1, r0, asr #0x18
	mov r0, #0x1e
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _02127748 ; =0x66666667
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	smull r2, r0, r1, r9
	ldr r3, [r4, #0xc]
	mov r2, r9, lsr #0x1f
	add r0, r2, r0, asr #2
	mov r2, #0xa
	add r1, r4, r3
	smull r0, r3, r2, r0
	sub r0, r9, r0
	add r0, r1, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _02127740 ; =0x0209F5C0
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	cmp r9, #0xa
	blt _02127724
	stmia sp, {r6, r7}
	mov r0, #0x1d
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, _02127748 ; =0x66666667
	ldr r3, [r4, #0xc]
	smull r1, r2, r0, r9
	mov r0, r9, lsr #0x1f
	add r1, r4, r3
	add r2, r0, r2, asr #2
	add r0, r1, r2, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _02127740 ; =0x0209F5C0
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_02127724:
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #0x26
	ble _021271FC
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02127740: .word unk_0209F5C0
_02127744: .word unk_0209BA20
_02127748: .word 0x66666667
_0212774C: .word 0x51EB851F
	arm_func_end FUN_ov94_021270d4

	arm_func_start FUN_ov94_02127750
FUN_ov94_02127750: ; 0x02127750
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x28]
	cmp r4, #0
	bne _0212777C
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r4, r0
_0212777C:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov94_02126220
	mov r0, r5
	mov r1, r4
	bl FUN_ov94_02126308
	mov r0, r5
	mov r1, r4
	bl FUN_ov94_021270d4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov94_02127750

	arm_func_start FUN_ov94_021277b0
FUN_ov94_021277b0: ; 0x021277B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, _02127850 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_020f5f64
	ldr r0, [r4, #0x18]
	cmp r0, #9
	bgt _0212780C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_021277E4: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02127818 ; case 1
	b _02127824 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	ldmfd sp!, {r4, pc} ; case 7
	ldmfd sp!, {r4, pc} ; case 8
	b _02127838 ; case 9
_0212780C:
	cmp r0, #0xe
	beq _02127844
	ldmfd sp!, {r4, pc}
_02127818:
	mov r0, r4
	bl FUN_ov94_02126f68
	ldmfd sp!, {r4, pc}
_02127824:
	mov r0, r4
	bl FUN_ov94_02127074
	mov r0, r4
	bl FUN_ov94_02126f68
	ldmfd sp!, {r4, pc}
_02127838:
	mov r0, r4
	bl FUN_ov94_02127750
	ldmfd sp!, {r4, pc}
_02127844:
	mov r0, r4
	bl FUN_ov94_02126ffc
	ldmfd sp!, {r4, pc}
_02127850: .word unk_0209F5C0
	arm_func_end FUN_ov94_021277b0

	arm_func_start FUN_ov94_02127854
FUN_ov94_02127854: ; 0x02127854
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r1, _021278FC ; =0x020A0640
	mov r7, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _02127900 ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5eec
	ldr r0, _02127904 ; =0x0209AEC0
	bl FUN_020466c0
	ldr r3, [r7, #0x134]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r3, #0xc]
	mov r1, #0x1e
	str r5, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r2, r3, r2
	add r12, r2, r0, lsl #3
	str r1, [sp, #0x18]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021278FC: .word unk_020A0640
_02127900: .word unk_0209F5C0
_02127904: .word unk_0209AEC0
	arm_func_end FUN_ov94_02127854

	arm_func_start FUN_ov94_02127908
FUN_ov94_02127908: ; 0x02127908
	stmfd sp!, {r3, lr}
	ldr r12, _02127934 ; =0x04001000
	mov r1, #1
	ldr r2, [r12]
	ldr r0, _02127938 ; =0x0209F5C0
	bic lr, r2, #0xe000
	mov r2, r1
	mov r3, #0
	str lr, [r12]
	bl  FUN_ov16_020f5eec
	ldmfd sp!, {r3, pc}
_02127934: .word 0x04001000
_02127938: .word unk_0209F5C0
	arm_func_end FUN_ov94_02127908

	arm_func_start FUN_ov94_0212793c
FUN_ov94_0212793c: ; 0x0212793C
	stmfd sp!, {r3, lr}
	bl FUN_ov94_02127854
	ldr r0, _02127954 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_02127954: .word unk_0209F5C0
	arm_func_end FUN_ov94_0212793c

	arm_func_start FUN_ov94_02127958
FUN_ov94_02127958: ; 0x02127958
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x98
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02127998
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_02127998:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov94_02127958

	arm_func_start FUN_ov94_021279a0
FUN_ov94_021279a0: ; 0x021279A0
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x98
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021279E8
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_021279E8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov94_021279a0

	arm_func_start FUN_ov94_021279f0
FUN_ov94_021279f0: ; 0x021279F0
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x98
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02127A38
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_02127A38:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov94_021279f0

	arm_func_start FUN_ov94_02127a40
FUN_ov94_02127a40: ; 0x02127A40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x128
	ldr r6, [r4, r5]
	ldr r7, [sp, #0x20]
	mov r9, r2
	mov r8, r3
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8]
	mov r0, r6
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r8]
	ldr r1, [r4, r5]
	ldr r2, [r7]
	mov r0, #2
	bl  FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov94_02127a40

	arm_func_start FUN_ov94_02127aa4
FUN_ov94_02127aa4: ; 0x02127AA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x128
	ldr r8, [r6, r7]
	ldr r9, [sp, #0x20]
	mov r4, r2
	mov r5, r3
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5]
	mov r0, r8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [r5]
	mov r5, #1
	ldr r1, [r6, r7]
	ldr r2, [r9]
	mov r0, r5
	bl  FUN_ov16_020f1a60
	str r0, [r9]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov94_02127aa4

	arm_func_start FUN_ov94_02127b0c
FUN_ov94_02127b0c: ; 0x02127B0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r4, r2
	mov r7, #4
	mov r6, r0
	mov r1, r7
	mov r2, r7
	mov r3, r5
	str r4, [sp]
	bl FUN_ov94_02127a40
	mov r0, r6
	mov r2, r7
	mov r3, r5
	str r4, [sp]
	mov r1, #5
	bl FUN_ov94_02127a40
	str r4, [sp]
	mov r0, r6
	mov r1, #6
	mov r2, r7
	mov r3, r5
	bl FUN_ov94_02127a40
	ldr r0, [r6, #0x18]
	mov r2, r7
	cmp r0, #0xb
	mov r0, r6
	mov r3, r5
	bne _02127B88
	mov r1, #7
	b _02127B8C
_02127B88:
	mov r1, #0xf
_02127B8C:
	str r4, [sp]
	bl FUN_ov94_02127a40
	mov r8, #0xb
	mov r7, #5
	mov r0, r6
	mov r1, r8
	mov r2, r7
	mov r3, r5
	str r4, [sp]
	bl FUN_ov94_02127a40
	mov r0, r6
	mov r2, r7
	mov r3, r5
	mov r1, #0xc
	str r4, [sp]
	bl FUN_ov94_02127a40
	mov r0, r6
	str r4, [sp]
	mov r1, #0xd
	mov r2, r7
	mov r3, r5
	bl FUN_ov94_02127a40
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r7, #0xe
	mov r1, r7
	mov r3, r5
	bl FUN_ov94_02127a40
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r1, #0x10
	mov r3, r5
	bl FUN_ov94_02127a40
	str r4, [sp]
	mov r0, r6
	mov r1, #0x11
	mov r7, #0xa
	mov r2, r7
	mov r3, r5
	bl FUN_ov94_02127a40
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r1, #0x12
	mov r3, r5
	bl FUN_ov94_02127a40
	str r4, [sp]
	mov r0, r6
	mov r1, #0x13
	mov r2, r8
	mov r3, r5
	bl FUN_ov94_02127a40
	str r4, [sp]
	mov r0, r6
	mov r2, r8
	mov r3, r5
	mov r1, #0x14
	bl FUN_ov94_02127a40
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov94_02127b0c

	arm_func_start FUN_ov94_02127c84
FUN_ov94_02127c84: ; 0x02127C84
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r0, [r7, #0x18]
	mov r6, #1
	cmp r0, #0xe
	mov r4, #0
	ldr r5, [r7, #0x128]
	bne _02127CF8
	cmp r5, #0
	beq _02127D50
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG0Char
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG0Scr
	bl GXS_BeginLoadBGExtPltt
	ldr r0, [r5, #4]
	ldr r2, [r5, #8]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	b _02127D50
_02127CF8:
	cmp r5, #0
	beq _02127D50
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, r4
	mov r3, r6
	add r0, r5, r0
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG0Char
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG0Scr
_02127D50:
	mov r6, #8
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r4, [sp, #0x10]
	str r5, [sp, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r4, [sp, #0xc]
	str r5, [sp, #4]
	ldr r5, [r7, #0x134]
	cmp r5, #0
	beq _02127E08
	ldr r0, [r5, #0xc]
	mov r8, #2
	ldr r1, [r5, #0x10]
	mov r3, r8
	add r0, r5, r0
	add r2, r4, #1
	bl  FUN_ov16_020f1868
	str r0, [sp, #0xc]
	mov r0, r5
	mov r2, r8
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r5, r0
	bl GXS_LoadBG2Char
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
_02127E08:
	ldr r0, [r7, #0x18]
	cmp r0, #9
	bgt _02127E48
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02128228
_02127E20: ; jump table
	b _02127E54 ; case 0
	b _02127E7C ; case 1
	b _02127EAC ; case 2
	b _02128228 ; case 3
	b _02128228 ; case 4
	b _02128228 ; case 5
	b _02128228 ; case 6
	b _02128228 ; case 7
	b _02128228 ; case 8
	b _02127FE8 ; case 9
_02127E48:
	cmp r0, #0xe
	beq _021281F0
	b _02128228
_02127E54:
	mov r5, #0x800
	ldr r0, _02128234 ; =0x020A8C40
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG1Scr
	ldr r0, _02128238 ; =0x020A8440
	mov r1, r4
	mov r2, r5
	bl GXS_LoadBG2Scr
	b _02128228
_02127E7C:
	mov r4, #4
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_02127958
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_021279a0
	str r0, [sp, #8]
	b _02128228
_02127EAC:
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_02127958
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_021279a0
	mov r4, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_02127958
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_021279a0
	str r0, [sp, #8]
	ldr r0, [r7, #0x230]
	cmp r0, #0
	beq _02127F34
	ldr r1, [sp, #0x10]
	mov r2, #8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [r7, #0x230]
	mov r0, #1
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_02127F34:
	ldr r0, [r7, #0x23c]
	cmp r0, #0
	beq _02127F4C
	mov r1, #1
	mov r2, #8
	bl  FUN_ov16_020f1160
_02127F4C:
	add r4, sp, #8
	add r3, sp, #0x10
	mov r0, r7
	mov r1, #0x30
	mov r2, #0xe
	str r4, [sp]
	bl FUN_ov94_02127aa4
	add r4, sp, #0xc
	mov r5, #6
	add r6, sp, #4
	mov r0, r7
	mov r2, r5
	mov r3, r4
	mov r1, #8
	str r6, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r2, r5
	mov r1, #9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov94_02127a40
	mov r2, r5
	mov r0, r7
	mov r1, #0xa
	mov r3, r4
	str r6, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_ov94_02127b0c
	mov r0, r7
	mov r3, r4
	mov r1, #0x15
	mov r2, #7
	str r6, [sp]
	bl FUN_ov94_02127a40
	b _02128228
_02127FE8:
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_02127958
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_021279a0
	mov r4, #5
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_02127958
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_021279a0
	mov r4, #6
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov94_02127958
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r4
	mov r0, r7
	bl FUN_ov94_021279a0
	str r0, [sp, #8]
	ldr r0, [r7, #0x230]
	cmp r0, #0
	beq _0212809C
	ldr r1, [sp, #0x10]
	mov r2, #8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [r7, #0x230]
	mov r0, #1
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_0212809C:
	ldr r0, [r7, #0x23c]
	cmp r0, #0
	beq _021280B4
	mov r1, #1
	mov r2, #8
	bl  FUN_ov16_020f1160
_021280B4:
	add r4, sp, #0xc
	add r5, sp, #4
	mov r0, r7
	mov r3, r4
	mov r1, #0x15
	mov r2, #7
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov94_02127b0c
	mov r0, r7
	mov r3, r4
	mov r1, #0x19
	mov r2, #9
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, #0x1a
	mov r2, #0xc
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r6, #0xd
	mov r0, r7
	mov r1, #0x1b
	mov r2, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, #0x1c
	mov r2, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, #0x1d
	mov r2, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, #0x1e
	mov r2, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r0, r7
	mov r1, #0x1f
	mov r2, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r2, r6
	mov r0, r7
	mov r1, #0x20
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
	mov r6, #0x21
	mov r9, #9
	mov r8, #0xc
	b _021281E4
_021281B8:
	mla r0, r6, r8, r7
	ldr r0, [r0, #0x128]
	cmp r0, #0
	beq _021281E0
	mov r0, r7
	mov r1, r6
	mov r2, r9
	mov r3, r4
	str r5, [sp]
	bl FUN_ov94_02127a40
_021281E0:
	add r6, r6, #1
_021281E4:
	cmp r6, #0x26
	ble _021281B8
	b _02128228
_021281F0:
	ldr r0, _02128238 ; =0x020A8440
	mov r1, #0
	mov r2, #0x800
	bl GXS_LoadBG2Scr
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	bl FUN_ov94_02127958
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r7
	mov r1, r6
	bl FUN_ov94_021279f0
	str r0, [sp, #4]
_02128228:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02128234: .word unk_020A8C40
_02128238: .word unk_020A8440
	arm_func_end FUN_ov94_02127c84

	arm_func_start FUN_ov94_0212823c
FUN_ov94_0212823c: ; 0x0212823C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _021282E4 ; =0x02128AA8
	add r1, r0, #0x300
	ldrb lr, [r2]
	ldrb r12, [r2, #1]
	ldrb r4, [r2, #2]
	ldrb r3, [r2, #3]
	ldrb r2, [r2, #4]
	ldrsb r1, [r1, #0xd0]
	add r5, sp, #0
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r4, [sp, #2]
	strb r3, [sp, #3]
	strb r2, [sp, #4]
	ldrb r2, [r5, r1]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r5, [r0, #0x128]
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x14]
	mov r4, #0
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG0Char
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG0Scr
	bl GXS_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_021282E4: .word 0x02128AA8
	arm_func_end FUN_ov94_0212823c

	arm_func_start FUN_ov94_021282e8
FUN_ov94_021282e8: ; 0x021282E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r7, #0
	mov r9, #0x20
	mov r10, r0
	add r1, sp, #0x54
	mov r0, r7
	mov r2, r9
	mov r5, r7
	add r4, sp, #0x54
	mov r6, r7
	mov r8, r7
	bl MIi_CpuClear16
	mov r0, r7
	mov r2, r9
	add r1, r10, #0x3a4
	bl MIi_CpuClear16
	ldr r0, _021285B0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0212834C
	ldr r0, _021285B4 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	bne _02128360
_0212834C:
	ldr r0, _021285B4 ; =0x0209A454
	mov r11, #1
	ldrb r0, [r0, #0x28]
	str r0, [sp, #8]
	b _021283C8
_02128360:
	ldr r0, _021285B8 ; =0x0209BA20
	mov r1, #2
	bl FUN_0205107c
	mov r9, r0
	b _021283B8
_02128374:
	mov r0, r9
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _021283B4
	bl FUN_0206d64c
	cmp r0, #0
	beq _021283B4
	mov r0, r4
	bl FUN_0206cbf8
	add r1, r10, r7, lsl #1
	add r1, r1, #0x300
	strh r0, [r1, #0xa4]
	add r7, r7, #1
_021283B4:
	add r5, r5, #1
_021283B8:
	cmp r5, #0x10
	blt _02128374
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021283C8:
	ldr r0, _021285B8 ; =0x0209BA20
	ldr r1, [sp, #8]
	bl FUN_0205107c
	mov r9, r0
	mov r5, #0
	b _02128428
_021283E0:
	mov r0, r9
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r8
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _02128424
	bl FUN_0206d64c
	cmp r0, #0
	beq _02128424
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	add r7, r7, #1
	strh r0, [r4, r1]
	cmp r7, #0x10
	bge _02128430
_02128424:
	add r5, r5, #1
_02128428:
	cmp r5, #0x64
	blt _021283E0
_02128430:
	ldr r0, _021285B0 ; =0x020A0640
	add r4, sp, #0x54
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldreq r0, _021285BC ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	movne r11, #0
	cmp r11, #0
	beq _02128560
	add r6, sp, #0xc
	mov r9, #0
	mov r0, r9
	mov r1, r6
	mov r2, #8
	bl MIi_CpuClear16
	add r8, sp, #0x34
	mov r11, #0x20
	mov r0, r9
	mov r1, r8
	mov r2, r11
	bl MIi_CpuClear16
	add r5, sp, #0x14
	mov r0, r9
	mov r2, r11
	mov r1, r5
	bl MIi_CpuClear16
	mov r2, r11
	mov r0, r4
	mov r1, r5
	bl MIi_CpuCopy16
	ldr r11, _021285B8 ; =0x0209BA20
	ldr r1, [sp, #8]
	mov r0, r11
	mov r2, r6
	mov r3, #4
	str r9, [sp]
	bl FUN_0204b2f4
	mov r2, r8
	str r9, [sp]
	mov r8, r0
	ldr r1, [sp, #8]
	mov r0, r11
	mov r3, #0x10
	str r9, [sp, #4]
	bl FUN_0204b540
	mov r1, r8
	mov r11, r9
	mov r12, #1
	b _02128548
_021284F8:
	mov r0, r9, lsl #1
	mov r2, r11
	mov r3, r11
	ldrh r0, [r5, r0]
	b _02128524
_0212850C:
	mov lr, r3, lsl #1
	ldrh lr, [r6, lr]
	cmp r0, lr
	moveq r2, r12
	beq _0212852C
	add r3, r3, #1
_02128524:
	cmp r3, r8
	blt _0212850C
_0212852C:
	cmp r2, #0
	moveq r0, r9, lsl #1
	ldreqh r2, [r5, r0]
	moveq r0, r1, lsl #1
	addeq r1, r1, #1
	streqh r2, [r4, r0]
	add r9, r9, #1
_02128548:
	cmp r9, #0x10
	blt _021284F8
	add r0, sp, #0xc
	add r1, sp, #0x54
	mov r2, r8, lsl #1
	bl MI_CpuCopy8
_02128560:
	mov r5, #0
	b _021285A0
_02128568:
	mov r0, r5, lsl #1
	ldrh r0, [r4, r0]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0212859C
	bl FUN_0206d64c
	cmp r0, #0
	movne r0, r5, lsl #1
	ldrneh r1, [r4, r0]
	addne r0, r10, r5, lsl #1
	addne r0, r0, #0x300
	strneh r1, [r0, #0xa4]
_0212859C:
	add r5, r5, #1
_021285A0:
	cmp r5, r7
	blt _02128568
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021285B0: .word unk_020A0640
_021285B4: .word unk_0209A454
_021285B8: .word unk_0209BA20
_021285BC: .word unk_02099E98
	arm_func_end FUN_ov94_021282e8

	arm_func_start FUN_ov94_021285c0
FUN_ov94_021285c0: ; 0x021285C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	mov r5, #0
	ldr r0, [r6, #4]
	strb r5, [r6, #0x3d1]
	strb r5, [r6, #0x3d0]
	strb r5, [r6, #0x3d2]
	ldr r2, [r0]
	mov r4, #1
	ldr r2, [r2, #0x28]
	mov r1, r4
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	mov r1, r5
	add r0, r6, #0x98
	mov r2, #0x90
	bl MI_CpuFill8
	add r0, r6, #0x128
	mov r1, r5
	mov r2, #0x24c
	bl MI_CpuFill8
	ldr r9, _021286F8 ; =0x0209A250
	mov r1, #0x98
	mov r0, r9
	bl FUN_0202de44
	str r0, [r6, #0x78]
	mov r0, r9
	mov r8, #0x6c
	mov r1, r8
	bl FUN_0202de44
	str r0, [r6, #0x7c]
	mov r0, r9
	mov r7, #0x980
	mov r1, r7
	bl FUN_0202de44
	str r0, [r6, #0x3c8]
	mov r0, r9
	mov r1, #0x6c0
	bl FUN_0202de44
	mov r2, r7
	str r0, [r6, #0x3cc]
	mov r0, r5
	ldr r1, [r6, #0x3c8]
	bl MIi_CpuClearFast
	sub r0, r8, #0x6d
	strb r5, [r6, #0x11]
	str r5, [r6, #0x18]
	strh r5, [r6, #0x1c]
	strh r5, [r6, #0x1e]
	strh r5, [r6, #0x20]
	strh r0, [r6, #0x22]
	str r0, [r6, #0x30]
	strb r5, [r6, #0x24]
	strb r5, [r6, #0x25]
	strb r5, [r6, #0x27]
	str r5, [r6, #0x28]
	strb r5, [r6, #0x2c]
	strb r5, [r6, #0x34]
	strb r5, [r6, #0x26]
	add r0, r6, #0x36
	mov r1, r5
	mov r7, #0x20
	mov r2, r7
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r7
	add r0, r6, #0x56
	bl MI_CpuFill8
	mov r0, r6
	strb r5, [r6, #0x76]
	bl FUN_ov94_02125054
	ldr r0, _021286FC ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5a58
	mov r0, r6
	bl FUN_ov94_021282e8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021286F8: .word unk_0209A250
_021286FC: .word unk_0209F5C0
	arm_func_end FUN_ov94_021285c0

	arm_func_start FUN_ov94_02128700
FUN_ov94_02128700: ; 0x02128700
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02128718: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0212873C ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02128758 ; case 3
	b _021287B8 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _02128824 ; case 6
	b _02128830 ; case 7
	b _0212885C ; case 8
_0212873C:
	add r0, r4, #0x374
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02128758:
	ldr r1, [r4, #0xc]
	bl FUN_ov94_02125e54
	add r0, r4, #0x128
	mov r1, #0x31
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0212878C
	cmp r0, #2
	beq _0212879C
	ldmfd sp!, {r4, pc}
_0212878C:
	mov r0, r4
	mov r1, #2
	bl FUN_ov94_0212559c
	ldmfd sp!, {r4, pc}
_0212879C:
	mov r0, r4
	bl FUN_ov94_021250f0
	mov r0, r4
	bl FUN_ov94_02125008
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021287B8:
	bl FUN_ov94_021277b0
	ldr r0, _02128870 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02128814
	ldr r2, _02128874 ; =0x04001040
	ldr r1, _02128878 ; =0x0000F0FF
	mov r0, #0xf
	strh r1, [r2]
	strh r0, [r2, #4]
	sub r1, r2, #0x40
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldrh r0, [r2, #8]
	bic r0, r0, #0x3f
	orr r0, r0, #0xf
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	bic r0, r0, #0x3f
	orr r0, r0, #0x2f
	strh r0, [r2, #0xa]
_02128814:
	mov r0, #3
	bl  FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_02128824:
	mov r0, r4
	bl FUN_ov94_0212793c
	ldmfd sp!, {r4, pc}
_02128830:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov94_02125774
	mov r0, r4
	mov r1, #1
	bl FUN_ov94_0212559c
	ldmfd sp!, {r4, pc}
_0212885C:
	bl FUN_ov94_02125774
	mov r0, r4
	mov r1, #1
	bl FUN_ov94_0212559c
	ldmfd sp!, {r4, pc}
_02128870: .word unk_020A0640
_02128874: .word 0x04001040
_02128878: .word 0x0000F0FF
	arm_func_end FUN_ov94_02128700

	arm_func_start FUN_ov94_0212887c
FUN_ov94_0212887c: ; 0x0212887C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _021288A4
	cmp r1, #6
	beq _021288B4
	cmp r1, #9
	beq _02128924
	ldmfd sp!, {r4, pc}
_021288A4:
	bl FUN_ov94_02127c84
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021288B4:
	ldrb r0, [r4, #0x3d1]
	cmp r0, #0
	beq _02128914
	add r0, r4, #0x300
	ldrsb r2, [r0, #0xd0]
	ldrb r1, [r4, #0x3d2]
	add r2, r2, #1
	strb r2, [r4, #0x3d0]
	cmp r1, #0
	beq _021288F4
	ldrsb r0, [r0, #0xd0]
	cmp r0, #3
	moveq r1, #1
	moveq r0, #0
	streqb r1, [r4, #0x3d0]
	streqb r0, [r4, #0x3d2]
_021288F4:
	add r0, r4, #0x300
	ldrsb r0, [r0, #0xd0]
	cmp r0, #5
	moveq r0, #0
	streqb r0, [r4, #0x3d1]
	streqb r0, [r4, #0x3d0]
	movne r0, #9
	strne r0, [r4, #8]
_02128914:
	ldr r0, _02128934 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02128924:
	bl FUN_ov94_0212823c
	mov r0, #6
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02128934: .word unk_0209F5C0
	arm_func_end FUN_ov94_0212887c

	arm_func_start FUN_ov94_02128938
FUN_ov94_02128938: ; 0x02128938
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r8, _02128A70 ; =0x0209A250
	mov r7, #0
	bl FUN_ov94_02125774
	mov r0, r10
	bl FUN_ov94_021250b8
	ldr r0, _02128A74 ; =0x020A0640
	mov r5, #0xc
	ldrb r0, [r0, #0x1a]
	mov r9, #0
	mov r6, r5
	cmp r0, #0
	ldrne r1, _02128A78 ; =0x04001000
	mov r11, r5
	ldrne r0, [r1]
	mov r4, r5
	bicne r0, r0, #0xe000
	strne r0, [r1]
	b _021289CC
_02128988:
	mla r0, r9, r6, r10
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _021289A8
	mov r0, r8
	bl FUN_0202e1c0
	mla r0, r9, r5, r10
	str r7, [r0, #0x98]
_021289A8:
	mla r0, r9, r4, r10
	ldr r1, [r0, #0x9c]
	cmp r1, #0
	beq _021289C8
	mov r0, r8
	bl FUN_0202e1c0
	mla r0, r9, r11, r10
	str r7, [r0, #0x9c]
_021289C8:
	add r9, r9, #1
_021289CC:
	cmp r9, #0xc
	blt _02128988
	ldr r1, [r10, #0x78]
	cmp r1, #0
	beq _021289EC
	ldr r0, _02128A70 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x78]
_021289EC:
	ldr r1, [r10, #0x7c]
	cmp r1, #0
	beq _02128A04
	ldr r0, _02128A70 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x7c]
_02128A04:
	ldr r1, [r10, #0x3c8]
	cmp r1, #0
	beq _02128A1C
	ldr r0, _02128A70 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x3c8]
_02128A1C:
	ldr r1, [r10, #0x3cc]
	cmp r1, #0
	beq _02128A34
	ldr r0, _02128A70 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x3cc]
_02128A34:
	mov r4, #1
	ldr r0, _02128A7C ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r10, #4]
	bl FUN_02041fec
	cmp r0, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02128A70: .word unk_0209A250
_02128A74: .word unk_020A0640
_02128A78: .word 0x04001000
_02128A7C: .word unk_0209F5C0
	arm_func_end FUN_ov94_02128938

	arm_func_start FUN_ov94_02128a80
FUN_ov94_02128a80: ; 0x02128A80
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov94_02128a80

	arm_func_start FUN_ov94_02128a94
FUN_ov94_02128a94: ; 0x02128A94
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov94_02128a94

	arm_func_start FUN_ov94_02128a9c
FUN_ov94_02128a9c: ; 0x02128A9C
	bx lr
	arm_func_end FUN_ov94_02128a9c

	arm_func_start FUN_ov94_02128aa0
FUN_ov94_02128aa0: ; 0x02128AA0
	bx lr
	arm_func_end FUN_ov94_02128aa0

	arm_func_start FUN_ov94_02128aa4
FUN_ov94_02128aa4: ; 0x02128AA4
	bx lr
	arm_func_end FUN_ov94_02128aa4
_02128AA8:
	.byte 0x00, 0x28, 0x29, 0x28, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x44, 0x8D, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x04, 0x8D, 0x12, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0xE4, 0x8E, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xD4, 0x8E, 0x12, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0xC4, 0x8E, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0xB4, 0x8E, 0x12, 0x02
	.byte 0x27, 0x00, 0x00, 0x00, 0xA4, 0x8E, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x94, 0x8E, 0x12, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x84, 0x8D, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x94, 0x8D, 0x12, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x64, 0x8E, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x54, 0x8E, 0x12, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x44, 0x8E, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xC4, 0x8D, 0x12, 0x02
	.byte 0x10, 0x00, 0x00, 0x00, 0x24, 0x8E, 0x12, 0x02, 0x30, 0x00, 0x00, 0x00, 0xE4, 0x8D, 0x12, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x04, 0x8E, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00, 0x14, 0x8E, 0x12, 0x02
	.byte 0x13, 0x00, 0x00, 0x00, 0x74, 0x8E, 0x12, 0x02, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x8F, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x8F, 0x12, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x14, 0x8F, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x24, 0x8F, 0x12, 0x02
	.byte 0x10, 0x00, 0x00, 0x00, 0x44, 0x8F, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x54, 0x8F, 0x12, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x64, 0x8D, 0x12, 0x02, 0x1B, 0x00, 0x00, 0x00, 0xF4, 0x8C, 0x12, 0x02
	.byte 0x1D, 0x00, 0x00, 0x00, 0x54, 0x8D, 0x12, 0x02, 0x1E, 0x00, 0x00, 0x00, 0x14, 0x8D, 0x12, 0x02
	.byte 0x1F, 0x00, 0x00, 0x00, 0x24, 0x8D, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00, 0x34, 0x8D, 0x12, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x74, 0x8D, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xA4, 0x8D, 0x12, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0xB4, 0x8D, 0x12, 0x02, 0x1C, 0x00, 0x00, 0x00, 0xD4, 0x8D, 0x12, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0xF4, 0x8D, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00, 0x34, 0x8E, 0x12, 0x02
	.byte 0x12, 0x00, 0x00, 0x00, 0x84, 0x8E, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00, 0xF4, 0x8E, 0x12, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0x34, 0x8F, 0x12, 0x02, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov94_02128c1c
FUN_ov94_02128c1c:
	stmdb sp!,{r3,r4,r5,lr}
	mov r5,#0x2000
	mov r0,r5
	bl FX_Sqrt
	ldr r4, _02128CA0
	str r0,[r4,#0x24 ]
	ldr r0, _02128CA4 ; =00009CCD
	bl FX_Sqrt
	mov r1,#0x800
	str r0,[r4,#0x2c ]
	ldr r0, _02128CA8 ; =0000EA3C
	str r1,[r4,#0xc ]
	str r0,[r4,#0x18 ]
	add r0,r5,#0x4e0000
	str r0,[r4,#0x20 ]
	add r0,r1,#0x840000
	str r0,[r4,#0x4 ]
	mov r0,#0xc
	strh r0,[r4,#0x8 ]
	strh r0,[r4,#0x10 ]
	strh r0,[r4,#0x30 ]
	mov r0,#0x9
	strh r0,[r4,#0x2 ]
	ldrsh r1,[r4,#0x0 ]
	strh r1,[r4,#0x14 ]
	ldrsh r0,[r4,#0xa ]
	strh r0,[r4,#0x16 ]
	strh r1,[r4,#0x1c ]
	ldrsh r0,[r4,#0x12 ]
	strh r0,[r4,#0x1e ]
	ldrsh r0,[r4,#0x32 ]
	strh r0,[r4,#0x2a ]
	ldmia sp!,{r3,r4,r5,pc}
_02128CA0: .word 0x02128CC0
_02128CA4: .word 0x00009CCD
_02128CA8: .word 0x0000EA3C
	arm_func_end FUN_ov94_02128c1c

	.section .sinit, 4
ov94_02128CAC:
	.word FUN_ov94_02128c1c

	.data
	.global ov94_02128CC0
ov94_02128CC0:
	.byte 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x0F, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x39, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x39, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA4, 0x8A, 0x12, 0x02
	.byte 0x80, 0x8A, 0x12, 0x02, 0xA0, 0x8A, 0x12, 0x02, 0x9C, 0x8A, 0x12, 0x02, 0xC0, 0x85, 0x12, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x00, 0x87, 0x12, 0x02, 0x7C, 0x88, 0x12, 0x02, 0x38, 0x89, 0x12, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02
	.byte 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02
	.byte 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0x00, 0x4D, 0x12, 0x02
	.byte 0xD4, 0x4F, 0x12, 0x02, 0x94, 0x8A, 0x12, 0x02
	.global ov94_02128FE8
ov94_02128FE8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov94_02129000
ov94_02129000:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov94_02129018
ov94_02129018:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov94_02129030
ov94_02129030:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63
	.byte 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov94_02129050
ov94_02129050:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov94_02129068
ov94_02129068:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov94_02129080
ov94_02129080:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov94_02129098
ov94_02129098:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63
	.byte 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov94_021290B8
ov94_021290B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x25, 0x73, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00
	.global ov94_021290D4
ov94_021290D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x75, 0x6E, 0x69, 0x74, 0x62, 0x61, 0x73, 0x65, 0x2E, 0x53, 0x54, 0x52, 0x00
	.global ov94_021290F0
ov94_021290F0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69
	.byte 0x74, 0x65, 0x6D, 0x2E, 0x53, 0x54, 0x52, 0x00
	.global ov94_02129108
ov94_02129108:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x43, 0x61, 0x70, 0x73, 0x75, 0x6C, 0x65, 0x50, 0x6F
	.byte 0x69, 0x6E, 0x74, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov94_02129128
ov94_02129128:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov94_02129148
ov94_02129148:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x00, 0x00, 0x00
	.global ov94_02129154
ov94_02129154:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov94_02129160
ov94_02129160:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x00, 0x00, 0x00
	.global ov94_0212916C
ov94_0212916C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov94_0212918C
ov94_0212918C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x70, 0x43, 0x6D, 0x64, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov94_021291B0
ov94_021291B0:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x37, 0x00, 0x00, 0x00
	.global ov94_021291BC
ov94_021291BC:
	.byte 0x6D, 0x73, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x30, 0x38, 0x00, 0x00, 0x00
	.global ov94_021291C8
ov94_021291C8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x39, 0x00, 0x00, 0x00
	.global ov94_021291D4
ov94_021291D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53
	.byte 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

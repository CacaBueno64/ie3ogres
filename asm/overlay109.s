
	.include "/macros/function.inc"
	.include "/include/overlay109.inc"

	.text
	arm_func_start FUN_ov109_02124d00
FUN_ov109_02124d00: ; 0x02124D00
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	mov r6, #8
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _02124D28
	bl FUN_ov109_02128d50
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
	beq _02124EB4
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #7
	cmpne r0, #0xb
	cmpne r0, #6
	cmpne r0, #0xc
	cmpne r0, #0xd
	cmpne r0, #0xf
	beq _02124DC0
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	cmpne r0, #7
	cmpne r0, #0xb
	beq _02124DA8
	cmp r0, #5
	bne _02124EB4
_02124DA8:
	cmp r1, #2
	cmpne r1, #3
	cmpne r1, #4
	cmpne r1, #7
	cmpne r1, #5
	beq _02124EB4
_02124DC0:
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
_02124E3C:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124E3C
	add r12, r4, #0x3e
	add r3, r5, #0x56
	mov r2, #8
_02124E64:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124E64
	ldrb r0, [r4, #0x5e]
	strb r0, [r5, #0x76]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	strne r6, [r5, #8]
	bne _02124EA8
	mov r1, #7
	mov r0, #3
	str r1, [r5, #8]
	bl  FUN_ov16_020f1528
_02124EA8:
	mov r0, #1
	strb r0, [r5, #0x11]
	ldmfd sp!, {r4, r5, r6, pc}
_02124EB4:
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
	bne _02124F0C
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _02124FF4
_02124F0C:
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
_02124F88:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124F88
	add r12, r4, #0x3e
	add r3, r5, #0x56
	mov r2, #8
_02124FB0:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02124FB0
	ldrb r1, [r4, #0x5e]
	mov r0, r5
	strb r1, [r5, #0x76]
	bl FUN_ov109_02125834
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov109_0212561c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02124FF4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov109_02124d00

	arm_func_start FUN_ov109_02124ffc
FUN_ov109_02124ffc: ; 0x02124FFC
	mov r0, #0
	bx lr
	arm_func_end FUN_ov109_02124ffc

	arm_func_start FUN_ov109_02125004
FUN_ov109_02125004: ; 0x02125004
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0212502C
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
_0212502C:
	cmp r0, #0
	ldrne r1, [r4, #0x23c]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _0212504C ; =0x02099F04
	ldr r2, [r2]
	bl  FUN_ov16_020f0c30 ; may be ov17
	ldmfd sp!, {r4, pc}
_0212504C: .word unk_02099F04
	arm_func_end FUN_ov109_02125004

	arm_func_start FUN_ov109_02125050
FUN_ov109_02125050: ; 0x02125050
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x374
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _021250A4 ; =0x0212A724
	add r1, r4, #0x374
	bl  FUN_ov16_020f316c
	ldr r0, _021250A8 ; =0x0212A73C
	add r1, r4, #0x380
	bl  FUN_ov16_020f316c
	ldr r0, _021250AC ; =0x0212A754
	add r1, r4, #0x38c
	bl  FUN_ov16_020f316c
	ldr r0, _021250B0 ; =0x0212A76C
	add r1, r4, #0x398
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021250A4: .word ov109_0212A724
_021250A8: .word ov109_0212A73C
_021250AC: .word ov109_0212A754
_021250B0: .word ov109_0212A76C
	arm_func_end FUN_ov109_02125050

	arm_func_start FUN_ov109_021250b4
FUN_ov109_021250b4: ; 0x021250B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x374
	mov r1, #4
	bl  FUN_ov16_020f338c
	add r5, r4, #0x374
	mov r6, #0
	mov r4, #0xc
_021250D4:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _021250D4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov109_021250b4

	arm_func_start FUN_ov109_021250ec
FUN_ov109_021250ec: ; 0x021250EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x190
	mov r12, r0
	ldr r5, [r12, #0x14c]
	cmp r5, #0
	addeq sp, sp, #0x190
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r12, #0x18]
	cmp r0, #9
	beq _02125170
	cmp r0, #0xf
	beq _02125140
	ldr r7, _021251CC ; =0x0212A0C0
	add r6, sp, #0xf0
	mov r4, #0xa
_02125128:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02125128
	add r4, sp, #0xf0
	b _02125190
_02125140:
	ldr r7, _021251D0 ; =0x0212A080
	add r6, sp, #0
	ldmia r7!, {r0, r1, r2, r3}
	mov r4, r6
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	b _02125190
_02125170:
	ldr r7, _021251D4 ; =0x0212A160
	add r6, sp, #0x40
	mov r4, #0xb
_0212517C:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0212517C
	add r4, sp, #0x40
_02125190:
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x190
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r12, #0x128
	mov r6, #0xc
_021251A8:
	ldr r3, [r4, #4]
	mov r2, r5
	mla r1, r3, r6, r7
	bl  FUN_ov16_020f32b4
	ldr r0, [r4, #8]!
	cmp r0, #0
	bne _021251A8
	add sp, sp, #0x190
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021251CC: .word 0x0212A0C0
_021251D0: .word 0x0212A080
_021251D4: .word 0x0212A160
	arm_func_end FUN_ov109_021250ec

	arm_func_start FUN_ov109_021251d8
FUN_ov109_021251d8: ; 0x021251D8
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
	ldr r0, _02125340 ; =0x0212A78C
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
	ldr r0, _02125344 ; =0x0212A7A4
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
	ldr r0, _02125348 ; =0x0212A7BC
	add r1, r7, #0x23c
	bl  FUN_ov16_020f31fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212533C: .word unk_0209BA20
_02125340: .word ov109_0212A78C
_02125344: .word ov109_0212A7A4
_02125348: .word ov109_0212A7BC
	arm_func_end FUN_ov109_021251d8

	arm_func_start FUN_ov109_0212534c
FUN_ov109_0212534c: ; 0x0212534C
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
	ldr r0, _02125438 ; =0x0212A7D4
	bl  FUN_ov16_020f31fc
_02125420:
	add r9, r9, #1
	cmp r9, #6
	blt _021253DC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125434: .word unk_0209BA20
_02125438: .word ov109_0212A7D4
	arm_func_end FUN_ov109_0212534c

	arm_func_start FUN_ov109_0212543c
FUN_ov109_0212543c: ; 0x0212543C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r3, r1
	mov r5, r2
	add r4, sp, #0
	mov r6, r0
	ldr r1, _02125480 ; =0x0212A7F4
	mov r0, r4
	mov r2, r3
	bl sprintf
	add r1, r6, #0x128
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl  FUN_ov16_020f316c
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125480: .word ov109_0212A7F4
	arm_func_end FUN_ov109_0212543c

	arm_func_start FUN_ov109_02125484
FUN_ov109_02125484: ; 0x02125484
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x18]
	mov r6, #0
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _02125600
_021254A4: ; jump table
	b _02125600 ; case 0
	b _0212552C ; case 1
	b _021254E4 ; case 2
	b _021254E4 ; case 3
	b _0212552C ; case 4
	b _02125568 ; case 5
	b _02125600 ; case 6
	b _0212552C ; case 7
	b _0212552C ; case 8
	b _02125600 ; case 9
	b _02125600 ; case 10
	b _0212552C ; case 11
	b _02125600 ; case 12
	b _021255B0 ; case 13
	b _02125600 ; case 14
	b _0212552C ; case 15
_021254E4:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021254FC
	ldrh r0, [r4, #0x1c]
	mov r1, r6
	bl  FUN_ov16_020efa9c
_021254FC:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r6, [sp]
	ldrh r2, [r0, #0x66]
	ldr r0, _02125608 ; =0x0212A810
	add r1, r4, #0x248
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212552C:
	ldrh r1, [r4, #0x20]
	ldr r0, _0212560C ; =0x0209BA20
	bl  FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r6, [sp]
	ldrh r2, [r0, #0x2a]
	ldr r0, _02125610 ; =0x0212A82C
	add r1, r4, #0x248
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125568:
	ldrh r1, [r4, #0x1e]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0212560C ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r6, [sp]
	ldrh r2, [r0, #0x1a]
	ldr r0, _02125614 ; =0x0212A844
	add r1, r4, #0x248
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021255B0:
	ldr r5, _0212560C ; =0x0209BA20
	ldrh r1, [r4, #0x20]
	mov r0, r5
	bl  FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r1, [r0, #0x26]
	mov r0, r5
	bl FUN_0204b0ac
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r6, [sp]
	ldrh r2, [r0, #0xe]
	ldr r0, _02125618 ; =0x0212A860
	add r1, r4, #0x248
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
_02125600:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125608: .word ov109_0212A810
_0212560C: .word unk_0209BA20
_02125610: .word ov109_0212A82C
_02125614: .word ov109_0212A844
_02125618: .word ov109_0212A860
	arm_func_end FUN_ov109_02125484

	arm_func_start FUN_ov109_0212561c
FUN_ov109_0212561c: ; 0x0212561C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _0212563C
	cmp r1, #2
	beq _02125798
	b _021257EC
_0212563C:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x128
	mov r2, #0x24c
	bl MI_CpuFill8
	ldr r5, _021257F8 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021257FC ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, _02125800 ; =0x0212A880
	add r1, r4, #0x134
	bl  FUN_ov16_020f316c
	ldr r0, [r4, #0x18]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _02125794
_021256B0: ; jump table
	b _021256F0 ; case 0
	b _02125704 ; case 1
	b _02125720 ; case 2
	b _02125720 ; case 3
	b _02125720 ; case 4
	b _02125720 ; case 5
	b _02125720 ; case 6
	b _02125720 ; case 7
	b _02125718 ; case 8
	b _02125750 ; case 9
	b _02125794 ; case 10
	b _02125738 ; case 11
	b _02125760 ; case 12
	b _02125778 ; case 13
	b _02125794 ; case 14
	b _02125780 ; case 15
_021256F0:
	ldr r1, _02125804 ; =0x0212A8A0
	mov r0, r4
	mov r2, r7
	bl FUN_ov109_0212543c
	b _02125794
_02125704:
	ldr r1, _02125808 ; =0x0212A8AC
_02125708:
	mov r0, r4
	mov r2, r7
	bl FUN_ov109_0212543c
	b _0212578C
_02125718:
	ldr r1, _0212580C ; =0x0212A8B8
	b _02125708
_02125720:
	ldr r1, _02125810 ; =0x0212A8C4
	mov r0, r4
	mov r2, r7
	bl FUN_ov109_0212543c
	ldr r0, _02125814 ; =0x0212A8D0
	b _02125784
_02125738:
	ldr r1, _02125818 ; =0x0212A8F0
	mov r0, r4
	mov r2, r7
	bl FUN_ov109_0212543c
	ldr r0, _0212581C ; =0x0212A8FC
	b _02125784
_02125750:
	ldr r0, _02125820 ; =0x0212A91C
_02125754:
	add r1, r4, #0x14c
	bl  FUN_ov16_020f316c
	b _02125794
_02125760:
	ldr r1, _02125824 ; =0x0212A940
	mov r0, r4
	mov r2, r7
	bl FUN_ov109_0212543c
	ldr r0, _02125828 ; =0x0212A94C
	b _02125754
_02125778:
	ldr r1, _0212582C ; =0x0212A96C
	b _02125708
_02125780:
	ldr r0, _02125830 ; =0x0212A978
_02125784:
	add r1, r4, #0x14c
	bl  FUN_ov16_020f316c
_0212578C:
	mov r0, r4
	bl FUN_ov109_02125484
_02125794:
	b _021257E4
_02125798:
	ldr r1, [r4, #0x18]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _021257E4
_021257A8: ; jump table
	b _021257E4 ; case 0
	b _021257E4 ; case 1
	b _021257D0 ; case 2
	b _021257D0 ; case 3
	b _021257D0 ; case 4
	b _021257D0 ; case 5
	b _021257D0 ; case 6
	b _021257D0 ; case 7
	b _021257E4 ; case 8
	b _021257D8 ; case 9
_021257D0:
	bl FUN_ov109_021251d8
	b _021257E4
_021257D8:
	bl FUN_ov109_021251d8
	mov r0, r4
	bl FUN_ov109_0212534c
_021257E4:
	mov r0, #1
	strb r0, [r4, #0x11]
_021257EC:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021257F8: .word unk_020A8C40
_021257FC: .word unk_020A8440
_02125800: .word ov109_0212A880
_02125804: .word ov109_0212A8A0
_02125808: .word ov109_0212A8AC
_0212580C: .word ov109_0212A8B8
_02125810: .word ov109_0212A8C4
_02125814: .word ov109_0212A8D0
_02125818: .word ov109_0212A8F0
_0212581C: .word ov109_0212A8FC
_02125820: .word ov109_0212A91C
_02125824: .word ov109_0212A940
_02125828: .word ov109_0212A94C
_0212582C: .word ov109_0212A96C
_02125830: .word ov109_0212A978
	arm_func_end FUN_ov109_0212561c

	arm_func_start FUN_ov109_02125834
FUN_ov109_02125834: ; 0x02125834
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x128
	mov r1, #0x31
	bl  FUN_ov16_020f338c
	add r5, r4, #0x128
	mov r6, #0
	mov r4, #0xc
_02125854:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x31
	blt _02125854
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov109_02125834

	arm_func_start FUN_ov109_0212586c
FUN_ov109_0212586c: ; 0x0212586C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _0212589C
	ldr r0, _02125914 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_0212589C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021258B8
	ldr r0, _02125914 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_021258B8:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _021258F0
_021258D8:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _021258D8
_021258F0:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_02125914: .word unk_0209A250
	arm_func_end FUN_ov109_0212586c

	arm_func_start FUN_ov109_02125918
FUN_ov109_02125918: ; 0x02125918
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	movs r9, r2
	mov r10, r0
	mov r11, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xc
	mul r6, r1, r0
	add r1, r10, #0x98
	mov r0, r9
	add r5, r1, r6
	bl STD_GetStringLength
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	cmp r0, #8
	mov r7, #1
	movlt r7, r11
	ldr r0, [r10, #0x18]
	ldr r1, [r5]
	mov r8, #3
	cmp r7, #0
	moveq r8, #0
	mov r4, #0x28
	cmp r0, #0xb
	moveq r4, #0x20
	cmp r1, #0
	beq _02125998
	ldr r0, _02125BA0 ; =0x0209A250
	bl FUN_0202e1c0
	add r0, r10, r6
	str r11, [r0, #0x98]
_02125998:
	add r0, r10, r6
	ldr r1, [r0, #0x9c]
	cmp r1, #0
	beq _021259B8
	ldr r0, _02125BA0 ; =0x0209A250
	bl FUN_0202e1c0
	add r0, r10, r6
	str r11, [r0, #0x9c]
_021259B8:
	mov r0, r4, asr #2
	add r2, r4, r0, lsr #29
	mov r3, r2, asr #3
	mov r0, r10
	mov r1, r5
	mov r2, #0x14
	bl FUN_ov109_0212586c
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x18]
	mov r4, #0
	cmp r0, #0xb
	beq _02125A80
	cmp r7, #0
	bne _02125A18
	ldr r0, _02125BA4 ; =0x02099ED0
	add r1, r9, #0x2c
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
_02125A18:
	add r6, sp, #0x1c
	mov r2, r9
	mov r0, r6
	add r1, r9, #0x2c
	bl FUN_0204378c
	mov r0, #3
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [r5, #4]
	mov r3, r6
	str r1, [sp, #8]
	ldrh r11, [r5, #8]
	ldr r0, _02125BA4 ; =0x02099ED0
	mov r1, r8
	mov r6, r11, lsl #3
	str r6, [sp, #0xc]
	ldrh r6, [r5, #0xa]
	mov r6, r6, lsl #3
	str r6, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r0]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
_02125A80:
	ldr r0, [r10, #0x18]
	cmp r0, #0xb
	beq _02125B00
	cmp r7, #0
	bne _02125AB0
	ldr r0, _02125BA8 ; =0x02099F50
	mov r1, r9
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
_02125AB0:
	mov r0, #3
	stmia sp, {r0, r4}
	ldr r1, [r5, #4]
	ldr r0, _02125BA8 ; =0x02099F50
	str r1, [sp, #8]
	ldrh r2, [r5, #8]
	mov r1, r8
	mov r3, r9
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r6, [r5, #0xa]
	mov r2, #0xc
	mov r6, r6, lsl #3
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r0]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
_02125B00:
	ldr r0, _02125BA8 ; =0x02099F50
	add r1, r9, #0x1c
	ldr r0, [r0]
	bl FUN_0204294c
	ldr r1, [r10, #0x18]
	cmp r1, #0xb
	rsbne r0, r0, #0x60
	addne r0, r0, r0, lsr #31
	movne r1, r0, asr #1
	rsbeq r0, r0, #0x72
	addeq r0, r0, r0, lsr #31
	moveq r1, r0, asr #1
	mov r0, #3
	stmia sp, {r0, r4}
	ldr r3, [r5, #4]
	movne r2, #0x1c
	str r3, [sp, #8]
	ldrh r6, [r5, #8]
	ldr r0, _02125BA8 ; =0x02099F50
	moveq r2, #0xc
	mov r6, r6, lsl #3
	str r6, [sp, #0xc]
	ldrh r6, [r5, #0xa]
	add r3, r9, #0x1c
	mov r6, r6, lsl #3
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125BA0: .word unk_0209A250
_02125BA4: .word unk_02099ED0
_02125BA8: .word unk_02099F50
	arm_func_end FUN_ov109_02125918

	arm_func_start FUN_ov109_02125bac
FUN_ov109_02125bac: ; 0x02125BAC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r3, r5, #0x98
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1e
	mov r3, #6
	bl FUN_ov109_0212586c
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r5, #0x248]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r2, [r5, #0x18]
	mov r3, #2
	cmp r2, #0xf
	mov r2, #3
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r2, #8
	str r2, [sp, #0x10]
	moveq r3, #4
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
	arm_func_end FUN_ov109_02125bac

	arm_func_start FUN_ov109_02125c4c
FUN_ov109_02125c4c: ; 0x02125C4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r8, r0
	add r2, r8, #0x98
	mov r0, #0xc
	mla r7, r1, r0, r2
	ldr r6, _02125DF0 ; =0x0209BA20
	ldrh r1, [r8, #0x20]
	mov r0, r6
	bl  FUN_ov16_020ee034
	ldr lr, _02125DF4 ; =0x0212A678
	mov r5, r0
	add r12, sp, #0x1c
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	mov r4, #2
	mov r3, r4
	mov r0, r8
	mov r1, r7
	mov r2, #0x18
	bl FUN_ov109_0212586c
	ldr r0, [r7, #4]
	cmp r0, #0
	cmpne r5, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl  FUN_ov16_020eef1c
	cmp r0, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r2, sp, #0x38
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020eee80
	cmp r0, #0
	addne sp, sp, #0x48
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	str r1, [r8, #0x3c4]
	ldrsb r0, [sp, #0x3c]
	cmp r0, #0
	strne r1, [r8, #0x3c4]
	bne _02125D74
	ldrsb r0, [sp, #0x3d]
	cmp r0, #0
	movne r0, #1
	strne r0, [r8, #0x3c4]
	bne _02125D74
	ldrsb r0, [sp, #0x3f]
	cmp r0, #0
	strne r4, [r8, #0x3c4]
	bne _02125D74
	ldrsb r0, [sp, #0x3e]
	cmp r0, #0
	movne r0, #3
	strne r0, [r8, #0x3c4]
	bne _02125D74
	ldrsb r0, [sp, #0x40]
	cmp r0, #0
	movne r0, #4
	strne r0, [r8, #0x3c4]
	bne _02125D74
	ldrsb r0, [sp, #0x42]
	cmp r0, #0
	movne r0, #5
	strne r0, [r8, #0x3c4]
	bne _02125D74
	ldrsb r0, [sp, #0x41]
	cmp r0, #0
	movne r0, #6
	strne r0, [r8, #0x3c4]
_02125D74:
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldr r0, [r7, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldrh r4, [r7, #8]
	ldr r0, _02125DF8 ; =0x02099F50
	add r3, sp, #0x1c
	mov r4, r4, lsl #3
	str r4, [sp, #0xc]
	ldrh r4, [r7, #0xa]
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r8, #0x3c4]
	ldr r4, [r0]
	ldr r3, [r3, r5, lsl #2]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r7, #8]
	ldrh r1, [r7, #0xa]
	ldr r0, [r7, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125DF0: .word unk_0209BA20
_02125DF4: .word ov109_0212A678
_02125DF8: .word unk_02099F50
	arm_func_end FUN_ov109_02125c4c

	arm_func_start FUN_ov109_02125dfc
FUN_ov109_02125dfc: ; 0x02125DFC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	add r8, r10, #0x110
	mov r1, r8
	mov r2, #9
	mov r3, #0x11
	bl FUN_ov109_0212586c
	ldr r0, [r8, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02125FE8 ; =0x02099F50
	mov r9, #0
	ldr r0, [r4]
	mov r2, r9
	mov r1, #1
	bl FUN_02043310
	mov r5, #3
	mov r11, #2
	mov r7, r9
_02125E50:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x300
	ldrh r0, [r0, #0xa4]
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _02125EC4
	bl FUN_0206d64c
	cmp r0, #0
	beq _02125EC4
	stmia sp, {r5, r7}
	ldr r1, [r8, #4]
	mov r0, r9, lsl #4
	str r1, [sp, #8]
	ldrh r3, [r8, #8]
	add r2, r0, #3
	mov r1, r11
	mov r0, r3, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r8, #0xa]
	add r3, r6, #0x1c
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
_02125EC4:
	add r9, r9, #1
	cmp r9, #8
	blt _02125E50
	ldr r4, _02125FE8 ; =0x02099F50
	ldr r0, [r4]
	bl FUN_0204331c
	ldrh r2, [r8, #8]
	ldrh r1, [r8, #0xa]
	ldr r0, [r8, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add r8, r10, #0x11c
	mov r0, r10
	mov r1, r8
	mov r2, #9
	mov r3, #0x11
	bl FUN_ov109_0212586c
	ldr r0, [r8, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	ldr r0, [r4]
	mov r2, r9
	mov r1, #1
	bl FUN_02043310
	mov r5, #3
	mov r11, #2
	mov r7, r9
_02125F3C:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x300
	ldrh r0, [r0, #0xb4]
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _02125FB0
	bl FUN_0206d64c
	cmp r0, #0
	beq _02125FB0
	stmia sp, {r5, r7}
	ldr r1, [r8, #4]
	mov r0, r9, lsl #4
	str r1, [sp, #8]
	ldrh r3, [r8, #8]
	add r2, r0, #3
	mov r1, r11
	mov r0, r3, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r8, #0xa]
	add r3, r6, #0x1c
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
_02125FB0:
	add r9, r9, #1
	cmp r9, #8
	blt _02125F3C
	ldr r0, _02125FE8 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldrh r2, [r8, #8]
	ldrh r1, [r8, #0xa]
	ldr r0, [r8, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125FE8: .word unk_02099F50
	arm_func_end FUN_ov109_02125dfc

	arm_func_start FUN_ov109_02125fec
FUN_ov109_02125fec: ; 0x02125FEC
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
	bl FUN_ov109_0212586c
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021260CC ; =0x0209BA20
	mov r1, r5
	bl  FUN_ov16_020ee064
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r5, _021260D0 ; =0x02099F50
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
_021260CC: .word unk_0209BA20
_021260D0: .word unk_02099F50
	arm_func_end FUN_ov109_02125fec

	arm_func_start FUN_ov109_021260d4
FUN_ov109_021260d4: ; 0x021260D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x98
	mov r3, #0xc
	mla r9, r1, r3, r4
	mov r10, r2
	mov r1, r9
	mov r2, #0x10
	mov r3, #6
	bl FUN_ov109_0212586c
	ldr r0, [r9, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _02126250 ; =0x0209BA20
	mov r7, #0
	mov r0, r8
	mov r1, r10
	mov r2, r7
	bl  FUN_ov16_020ee008
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02126254 ; =0x02099F50
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
_02126250: .word unk_0209BA20
_02126254: .word unk_02099F50
	arm_func_end FUN_ov109_021260d4

	arm_func_start FUN_ov109_02126258
FUN_ov109_02126258: ; 0x02126258
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x74
	mov r5, r0
	add r3, r5, #0x98
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1c
	mov r3, #6
	bl FUN_ov109_0212586c
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrneh r0, [r5, #0x1c]
	movne r5, #0
	movne r6, r5
	cmpne r0, #0
	addeq sp, sp, #0x74
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r5
	bl  FUN_ov16_020efa9c
	mov r7, r0
	bl FUN_0206cd50
	str r0, [sp, #0x38]
	mov r0, r7
	bl FUN_0206cd10
	str r0, [sp, #0x3c]
	mov r0, r7
	bl FUN_0206cd40
	str r0, [sp, #0x40]
	mov r0, r7
	bl FUN_0206cd00
	str r0, [sp, #0x44]
	mov r0, r7
	bl FUN_0206cd60
	str r0, [sp, #0x48]
	mov r0, r7
	bl FUN_0206cd30
	str r0, [sp, #0x4c]
	mov r0, r7
	bl FUN_0206cd20
	mov r2, r5
	str r0, [sp, #0x50]
	add r1, sp, #0x38
_02126304:
	ldr r0, [r1, r2, lsl #2]
	cmp r6, r0
	movlt r6, r0
	add r0, r2, #1
	movlt r5, r2
	and r2, r0, #0xff
	cmp r2, #7
	blo _02126304
	ldr lr, _021263A8 ; =0x0212A694
	add r6, sp, #0x1c
	ldmia lr!, {r0, r1, r2, r3}
	mov r12, r6
	stmia r6!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r6, sp, #0x54
	ldr r2, [r12, r5, lsl #2]
	ldr r1, _021263AC ; =0x0212A99C
	mov r0, r6
	bl STD_TSNPrintf
	mov r1, #3
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #4
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r1, [r4, #4]
	mov r0, r6
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, pc}
_021263A8: .word ov109_0212A694
_021263AC: .word ov109_0212A99C
	arm_func_end FUN_ov109_02126258

	arm_func_start FUN_ov109_021263b0
FUN_ov109_021263b0: ; 0x021263B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r5, #0
	mov r4, r0
	mov r7, r1
	mov r3, r5
	mov r6, r5
	mov r1, r5
	add r0, sp, #4
_021263D4:
	mov r2, r3, lsl #1
	add r3, r3, #1
	strh r1, [r0, r2]
	cmp r3, #4
	blt _021263D4
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0x28]
	strb r1, [r4, #0x11]
	cmp r0, #0
	bne _0212641C
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _02126420
	bl  FUN_ov16_020efa9c
	b _0212641C
_0212641C:
	mov r5, r0
_02126420:
	cmp r7, #1
	beq _02126438
	cmp r7, #2
	beq _021265D8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02126438:
	ldr r0, [r4, #0x18]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _0212668C
_02126448: ; jump table
	b _0212668C ; case 0
	b _0212668C ; case 1
	b _02126478 ; case 2
	b _02126478 ; case 3
	b _02126478 ; case 4
	b _02126478 ; case 5
	b _02126478 ; case 6
	b _02126478 ; case 7
	b _0212668C ; case 8
	b _021265B0 ; case 9
	b _0212668C ; case 10
	b _02126490 ; case 11
_02126478:
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl FUN_ov109_02125918
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02126490:
	ldr r0, _02126694 ; =0x02099E98
	mov r8, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0212652C
	ldr r1, _02126698 ; =0x0209A454
	ldr r0, _0212669C ; =0x0209BA20
	ldrb r1, [r1, #0x28]
	bl FUN_0205107c
	mov r7, r0
	mov r9, r8
	add r10, sp, #4
_021264C0:
	mov r0, r7
	mov r1, r9
	bl FUN_0204fbe8
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r5, r0
	beq _02126518
	bl FUN_0206d64c
	cmp r0, #0
	beq _02126518
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r8, lsl #1
	strh r0, [r10, r1]
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl FUN_ov109_02125918
	add r8, r8, #1
	cmp r8, #4
	addge sp, sp, #0xc
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02126518:
	add r9, r9, #1
	cmp r9, #0x10
	blt _021264C0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0212652C:
	bl  FUN_ov16_020f081c
	mov r1, r0
	mov r5, #4
	ldr r0, _0212669C ; =0x0209BA20
	add r2, sp, #4
	mov r3, r5
	str r6, [sp]
	bl FUN_0204b2f4
	mov r7, r0
	cmp r7, #4
	movgt r7, r5
	cmp r7, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r5, sp, #4
_02126568:
	mov r0, r8, lsl #1
	ldrh r0, [r5, r0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r2, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	mov r1, r8
	bl FUN_ov109_02125918
	add r8, r8, #1
	cmp r8, r7
	blt _02126568
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021265B0:
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl FUN_ov109_02125918
	mov r0, r4
	mov r2, r5
	mov r1, #5
	bl FUN_ov109_02125fec
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021265D8:
	ldr r0, [r4, #0x18]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0212668C
_021265E8: ; jump table
	b _0212668C ; case 0
	b _02126628 ; case 1
	b _02126628 ; case 2
	b _02126628 ; case 3
	b _02126628 ; case 4
	b _02126628 ; case 5
	b _02126658 ; case 6
	b _02126628 ; case 7
	b _02126628 ; case 8
	b _0212663C ; case 9
	b _0212668C ; case 10
	b _02126628 ; case 11
	b _0212668C ; case 12
	b _02126628 ; case 13
	b _0212668C ; case 14
	b _0212666C ; case 15
_02126628:
	mov r0, r4
	mov r1, #4
	bl FUN_ov109_02125bac
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0212663C:
	mov r0, r4
	mov r2, r5
	mov r1, #6
	mov r3, #0
	bl FUN_ov109_021260d4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02126658:
	mov r0, r4
	mov r1, #4
	bl FUN_ov109_02126258
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0212666C:
	mov r0, r4
	mov r1, #9
	bl FUN_ov109_02125c4c
	mov r0, r4
	mov r1, #4
	bl FUN_ov109_02125bac
	mov r0, r4
	bl FUN_ov109_02125dfc
_0212668C:
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02126694: .word unk_02099E98
_02126698: .word unk_0209A454
_0212669C: .word unk_0209BA20
	arm_func_end FUN_ov109_021263b0

	arm_func_start FUN_ov109_021266a0
FUN_ov109_021266a0: ; 0x021266A0
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
	ble _02126818
	ldr r0, [sp, #0x4c]
	mov r7, #2
	cmp r0, #0xe
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	mov r6, #1
	ldr r4, _02126870 ; =0x66666667
	beq _02126790
	mov r11, #4
_0212670C:
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
	ldr r0, _02126874 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _0212670C
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126790:
	mov r11, #5
_02126794:
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
	ldr r0, _02126874 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	bl  FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02126794
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126818:
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
	ldr r0, _02126874 ; =0x0209F5C0
	mov r3, r2
	str r4, [sp, #0x18]
	add r4, r8, #0x28
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126870: .word 0x66666667
_02126874: .word unk_0209F5C0
	arm_func_end FUN_ov109_021266a0

	arm_func_start FUN_ov109_02126878
FUN_ov109_02126878: ; 0x02126878
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
	beq _02126918
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
	ldr r0, _02126948 ; =0x0209F5C0
	add r3, r3, lr
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126918:
	add r0, r7, #3
	ldr r2, _0212694C ; =0x000003E7
	mov r1, r0, lsl #0x10
	str r2, [sp]
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, r1, asr #0x10
	str r4, [sp, #4]
	bl FUN_ov109_021266a0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02126948: .word unk_0209F5C0
_0212694C: .word 0x000003E7
	arm_func_end FUN_ov109_02126878

	arm_func_start FUN_ov109_02126950
FUN_ov109_02126950: ; 0x02126950
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0x230]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _021269C4
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
	ldr r0, _02126A34 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021269C4:
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
	ldr r0, _02126A34 ; =0x0209F5C0
	add r4, r3, r4
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02126A34: .word unk_0209F5C0
	arm_func_end FUN_ov109_02126950

	arm_func_start FUN_ov109_02126a38
FUN_ov109_02126a38: ; 0x02126A38
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
	beq _02126AA8
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r2, r1
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126AA8:
	mov r0, r4
	mov r1, r8
	bl FUN_0206d9b0
	cmp r0, #1
	blo _02126B3C
	mov r0, r4
	mov r1, r8
	bl FUN_0206d9b0
	cmp r0, #0x14
	bhi _02126B3C
	ldr r7, [r5, #0x1ac]
	cmp r7, #0
	beq _02126B3C
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r1, r8
	mov r3, r2
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126B3C:
	ldr r8, [r5, #0x1b8]
	cmp r8, #0
	beq _02126B8C
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r3, r2
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126B8C:
	mov r8, #0
	ldr r0, _0212719C ; =0x0209BA20
	mov r1, r4
	mov r3, r8
	mov r2, #0xf
	sub r9, r8, #1
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02126BEC
_02126BB4: ; jump table
	b _02126BEC ; case 0
	b _02126BC8 ; case 1
	b _02126BD4 ; case 2
	b _02126BDC ; case 3
	b _02126BE4 ; case 4
_02126BC8:
	mov r9, #0x11
_02126BCC:
	mov r8, #0xa
	b _02126BEC
_02126BD4:
	mov r9, #0x12
	b _02126BCC
_02126BDC:
	mov r9, #0x13
	b _02126BE8
_02126BE4:
	mov r9, #0x14
_02126BE8:
	mov r8, #0xb
_02126BEC:
	cmp r9, #0
	mov r10, #4
	mov r7, #2
	mov r6, #1
	blt _02126C5C
	mov r0, #0xc
	mla r0, r9, r0, r5
	ldr r11, [r0, #0x128]
	cmp r11, #0
	beq _02126C5C
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r3, r2
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126C5C:
	mov r0, r4
	bl FUN_0204fb60
	cmp r0, #4
	mvn r8, #0
	addls pc, pc, r0, lsl #2
	b _02126CA4
_02126C74: ; jump table
	b _02126CA4 ; case 0
	b _02126C88 ; case 1
	b _02126C90 ; case 2
	b _02126C98 ; case 3
	b _02126CA0 ; case 4
_02126C88:
	mov r8, #1
	b _02126CA4
_02126C90:
	mov r8, #2
	b _02126CA4
_02126C98:
	mov r8, #3
	b _02126CA4
_02126CA0:
	mov r8, #0
_02126CA4:
	cmp r8, #0
	blt _02126D00
	ldr r9, [r5, #0x1c4]
	cmp r9, #0
	beq _02126D00
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r3, r2
	str r9, [sp, #0x18]
	add r8, r11, r8, lsl #4
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126D00:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	ldrne r0, [r5, #0x78]
	cmpne r0, #0
	mov r0, r4
	beq _02126D1C
	b _02126D1C
_02126D1C:
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
	beq _02126EAC
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
	ldr r0, _02127198 ; =0x0209F5C0
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
	bl FUN_ov109_021266a0
	str r9, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, r11
	mov r0, r5
	mov r1, #0x12
	mov r2, #6
	bl FUN_ov109_021266a0
	mov r1, #0xf
	sub r11, r1, #0x10
	str r6, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, r5
	mov r2, #6
	mov r3, r11
	bl FUN_ov109_021266a0
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
	ldr r0, _02127198 ; =0x0209F5C0
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
	bl FUN_ov109_021266a0
	str r9, [sp]
	ldr r3, [sp, #0x20]
	mov r0, r5
	mov r2, #6
	mov r1, #0x1d
	str r8, [sp, #4]
	bl FUN_ov109_021266a0
	mov r0, r5
	mov r2, #6
	mov r3, r11
	mov r1, #0x1a
	stmia sp, {r6, r8}
	bl FUN_ov109_021266a0
_02126EAC:
	ldr r0, [r5, #0x1d0]
	mov r9, #4
	cmp r0, #0
	mov r6, #0xe
	beq _02126EE8
	mov r0, r4
	bl FUN_0206dcd4
	ldrb r3, [r0, #0x4a]
	mov r0, #0x63
	mov r1, #0x19
	str r0, [sp]
	mov r0, r5
	mov r2, #0
	str r6, [sp, #4]
	bl FUN_ov109_021266a0
_02126EE8:
	ldr r1, [r5, #0x1e8]
	cmp r1, #0
	beq _02126F44
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
	ldr r0, _02127198 ; =0x0209F5C0
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02126F44:
	mov r9, #0
	mov r0, r4
	mov r10, r9
	add r8, r4, #0x6c
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _0212719C ; =0x0209BA20
	add r2, sp, #0x28
	bl FUN_0204c078
	mov r11, #9
	b _02126F80
_02126F70:
	add r0, r8, r10
	ldrb r0, [r0, #0xf]
	add r10, r10, #1
	add r9, r9, r0
_02126F80:
	cmp r10, #7
	blt _02126F70
	ldrh r8, [sp, #0x64]
	cmp r8, #0
	ldreq r8, _021271A0 ; =0x00007FFF
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	bne _02126FB0
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x1d
	bne _02126FD0
_02126FB0:
	mov r0, r4
	ldrb r4, [sp, #0x6e]
	bl  FUN_ov16_020f0810
	ldr r1, _021271A4 ; =0x020A06BC
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	mov r0, r0, asr r4
	b _02127054
_02126FD0:
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x10
	beq _02126FF0
	mov r0, r4
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02126FF8
_02126FF0:
	mov r1, #0
	b _02127060
_02126FF8:
	ldr r0, _021271A8 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _02127044
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x76
	beq _02127044
	mov r0, r4
	bl FUN_0206d4fc
	cmp r0, #4
	bge _02127040
	ldr r1, _021271A4 ; =0x020A06BC
	mov r0, r0, lsl #1
	ldrb r2, [sp, #0x6e]
	ldrh r0, [r1, r0]
	mov r0, r0, asr r2
	b _02127054
_02127040:
	b _02126FF0
_02127044:
	ldr r0, _021271AC ; =0x020A1540
	ldrb r1, [sp, #0x6e]
	ldrh r0, [r0, #0xd0]
	mov r0, r0, asr r1
_02127054:
	tst r0, #1
	movne r1, #1
	moveq r1, #0
_02127060:
	ldrh r0, [sp, #0x64]
	cmp r0, #0
	ldreq r0, _021271A0 ; =0x00007FFF
	cmp r1, #0
	add r0, r0, #0x14
	beq _021270D8
	cmp r9, r0
	blt _021270D8
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021270D8:
	cmp r1, #0
	beq _02127138
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02127138:
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
	ldr r0, _02127198 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02127198: .word unk_0209F5C0
_0212719C: .word unk_0209BA20
_021271A0: .word 0x00007FFF
_021271A4: .word unk_020A06BC
_021271A8: .word unk_020A0640
_021271AC: .word unk_020A1540
	arm_func_end FUN_ov109_02126a38

	arm_func_start FUN_ov109_021271b0
FUN_ov109_021271b0: ; 0x021271B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x34
	mov r4, r1
	mov r5, r0
	mov r0, r4
	ldr r7, _02127748 ; =0x0209BA20
	bl  FUN_ov16_020f0810
	ldr r0, [r5, #0x18]
	cmp r0, #3
	beq _021271E0
	cmp r0, #7
	bne _021274A4
_021271E0:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _021274A4
	ldr r1, [r5, #0x78]
	cmp r1, #0
	ldrne r0, [r5, #0x7c]
	cmpne r0, #0
	addeq sp, sp, #0x34
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
	bne _0212726C
	b _0212728C
_0212726C:
	cmp r3, #3
	beq _0212728C
	mov r0, #1
	str r0, [sp]
	ldr r1, [r5, #0x78]
	ldr r0, _02127748 ; =0x0209BA20
	bl  FUN_ov16_020eea8c
	b _02127298
_0212728C:
	ldr r1, [r5, #0x78]
	ldr r0, _02127748 ; =0x0209BA20
	bl  FUN_ov16_020ee1e4
_02127298:
	cmp r0, #0
	addne sp, sp, #0x34
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
	bl FUN_ov109_02126878
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
	ldr r9, _0212774C ; =0x0212A2C0
	mul r3, r8, r0
	ldrsh r1, [r9, #0x24]
	ldrsh r2, [r9, #0x26]
	mov r0, r5
	bl FUN_ov109_02126878
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
	ldrsh r1, [r9, #0x30]
	ldrsh r2, [r9, #0x32]
	mov r0, r5
	bl FUN_ov109_02126878
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
	ldrsh r1, [r9, #0x20]
	ldrsh r2, [r9, #0x22]
	mov r0, r5
	bl FUN_ov109_02126878
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
	ldrsh r1, [r9, #0x14]
	ldrsh r2, [r9, #0x16]
	mov r0, r5
	bl FUN_ov109_02126878
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
	ldrsh r1, [r9, #4]
	ldrsh r2, [r9, #6]
	mov r0, r5
	bl FUN_ov109_02126878
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
	ldrsh r1, [r9, #0x28]
	ldrsh r2, [r9, #0x2a]
	mov r0, r5
	bl FUN_ov109_02126878
_021274A4:
	ldrb r0, [r5, #0x2c]
	ldr r9, _02127750 ; =0x0212A02C
	ldr r7, _02127748 ; =0x0209BA20
	cmp r0, #0
	ldrne r8, [r5, #0x78]
	ldmia r9!, {r0, r1, r2, r3}
	cmpne r8, #0
	moveq r8, r4
	add r4, sp, #0x18
	stmia r4!, {r0, r1, r2, r3}
	ldmia r9, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r5, #0x18]
	mov r6, #8
	cmp r0, #7
	bne _02127598
	ldrb r0, [r5, #0x76]
	ldr r9, _02127748 ; =0x0209BA20
	cmp r0, #0
	beq _02127598
	ldrh r1, [r5, #0x20]
	mov r0, r9
	bl  FUN_ov16_020ee034
	movs r4, r0
	beq _02127598
	bl  FUN_ov16_020eef1c
	cmp r0, #0
	beq _02127598
	add r2, sp, #8
	mov r0, r9
	mov r1, r4
	bl  FUN_ov16_020eee80
	cmp r0, #0
	bne _02127598
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	strne r6, [sp, #0x18]
	bne _02127598
	ldrsb r0, [sp, #0xd]
	cmp r0, #0
	strne r6, [sp, #0x1c]
	bne _02127598
	ldrsb r0, [sp, #0xf]
	cmp r0, #0
	strne r6, [sp, #0x20]
	bne _02127598
	ldrsb r0, [sp, #0xe]
	cmp r0, #0
	strne r6, [sp, #0x24]
	bne _02127598
	ldrsb r0, [sp, #0x10]
	cmp r0, #0
	strne r6, [sp, #0x28]
	bne _02127598
	ldrsb r0, [sp, #0x12]
	cmp r0, #0
	strne r6, [sp, #0x2c]
	bne _02127598
	ldrsb r0, [sp, #0x11]
	cmp r0, #0
	strne r6, [sp, #0x30]
_02127598:
	mov r6, #0
	mov r0, r7
	mov r1, r8
	mov r3, r6
	mov r2, #0x1e
	bl FUN_0204f02c
	ldr r4, _02127754 ; =0x000003E7
	mov r3, r0
	str r4, [sp]
	ldr r9, [sp, #0x18]
	mov r0, r5
	mov r1, #0xc
	mov r2, #9
	str r9, [sp, #4]
	bl FUN_ov109_021266a0
	mov r0, r7
	mov r1, r8
	mov r2, #0x1f
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x1c]
	mov r3, r0
	ldr r9, _0212774C ; =0x0212A2C0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x24]
	ldrsh r2, [r9, #0x26]
	mov r0, r5
	bl FUN_ov109_021266a0
	mov r0, r7
	mov r1, r8
	mov r2, #0x21
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x20]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x30]
	ldrsh r2, [r9, #0x32]
	mov r0, r5
	bl FUN_ov109_021266a0
	mov r0, r7
	mov r1, r8
	mov r2, #0x20
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x24]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x20]
	ldrsh r2, [r9, #0x22]
	mov r0, r5
	bl FUN_ov109_021266a0
	mov r0, r7
	mov r1, r8
	mov r2, #0x22
	mov r3, r6
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x28]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x14]
	ldrsh r2, [r9, #0x16]
	mov r0, r5
	bl FUN_ov109_021266a0
	mov r0, r7
	mov r1, r8
	mov r3, r6
	mov r2, #0x24
	bl FUN_0204f02c
	str r4, [sp]
	ldr r1, [sp, #0x2c]
	mov r3, r0
	str r1, [sp, #4]
	ldrsh r1, [r9, #4]
	ldrsh r2, [r9, #6]
	mov r0, r5
	bl FUN_ov109_021266a0
	mov r0, r7
	mov r3, r6
	mov r1, r8
	mov r2, #0x23
	bl FUN_0204f02c
	str r4, [sp]
	mov r3, r0
	ldr r1, [sp, #0x30]
	mov r0, r5
	str r1, [sp, #4]
	ldrsh r1, [r9, #0x28]
	ldrsh r2, [r9, #0x2a]
	bl FUN_ov109_021266a0
	mov r0, r8
	bl FUN_0206dcd4
	mov r3, r0
	mov r0, r5
	ldr r2, _02127758 ; =0x000F423F
	mov r1, #4
	str r2, [sp]
	str r1, [sp, #4]
	ldr r3, [r3]
	ldrsh r1, [r9, #0x2c]
	ldrsh r2, [r9, #0x2e]
	bl FUN_ov109_021266a0
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02127748: .word unk_0209BA20
_0212774C: .word ov109_0212A2C0
_02127750: .word 0x0212A02C
_02127754: .word 0x000003E7
_02127758: .word 0x000F423F
	arm_func_end FUN_ov109_021271b0

	arm_func_start FUN_ov109_0212775c
FUN_ov109_0212775c: ; 0x0212775C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x2c
	ldr r1, _02127894 ; =0x02099E98
	ldr r2, _02127898 ; =0x0212A00C
	ldrb r5, [r1]
	mov r4, r0
	add r6, sp, #0x1c
	ldmia r2, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r7, _0212789C ; =0x0212A01C
	add r6, sp, #0xc
	ldmia r7, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	cmp r5, #0
	mov r8, #0
	beq _02127810
	ldr r1, _021278A0 ; =0x0209A454
	ldr r0, _021278A4 ; =0x0209BA20
	ldrb r1, [r1, #0x28]
	bl FUN_0205107c
	mov r6, r0
	mov r7, r8
	add r9, sp, #4
	mov r5, r8
_021277BC:
	mov r0, r6
	mov r1, r7
	bl FUN_0204fbe8
	mov r1, r5
	bl  FUN_ov16_020efa9c
	movs r10, r0
	beq _02127800
	bl FUN_0206d64c
	cmp r0, #0
	beq _02127800
	mov r0, r10
	bl FUN_0206cbf8
	mov r1, r8, lsl #1
	add r8, r8, #1
	strh r0, [r9, r1]
	cmp r8, #4
	bge _02127830
_02127800:
	add r7, r7, #1
	cmp r7, #0x10
	blt _021277BC
	b _02127830
_02127810:
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _021278A4 ; =0x0209BA20
	add r2, sp, #4
	mov r3, #4
	str r8, [sp]
	bl FUN_0204b2f4
	mov r8, r0
_02127830:
	cmp r8, #0
	mov r9, #0
	addle sp, sp, #0x2c
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r5, sp, #0xc
	add r10, sp, #0x1c
	add r7, sp, #4
	mov r6, r9
_02127850:
	mov r0, r9, lsl #1
	ldrh r0, [r7, r0]
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r2, r0
	beq _02127880
	ldr r1, [r5, r9, lsl #2]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r10, r9, lsl #2]
	mov r1, r9
	bl FUN_ov109_021278a8
_02127880:
	add r9, r9, #1
	cmp r9, r8
	blt _02127850
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02127894: .word unk_02099E98
_02127898: .word 0x0212A00C
_0212789C: .word 0x0212A01C
_021278A0: .word unk_0209A454
_021278A4: .word unk_0209BA20
	arm_func_end FUN_ov109_0212775c

	arm_func_start FUN_ov109_021278a8
FUN_ov109_021278a8: ; 0x021278A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r4, #0xc
	mul r7, r1, r4
	mov r5, r0
	add r0, r5, #0x98
	ldr r6, [r0, r7]
	mov r4, r2
	mov r8, r3
	cmp r6, #0
	add r0, r0, r7
	ldr r10, [sp, #0x50]
	beq _02127944
	add r2, r8, #8
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r3, r10, asr #2
	mov r7, #2
	mov r2, r1, lsl #0x15
	add r3, r10, r3, lsr #29
	mov r1, #1
	str r7, [sp]
	mov r3, r3, lsl #0x15
	str r1, [sp, #4]
	mov r2, r2, asr #0x18
	str r2, [sp, #8]
	mov r2, r3, asr #0x18
	str r2, [sp, #0xc]
	ldrh r2, [r0, #8]
	mov r0, #3
	mov r3, #0
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, _02127D18 ; =0x0209F5C0
	mov r2, r1
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02127944:
	mov r6, #1
	mov r0, r4
	mov r1, r6
	bl FUN_0206d9b0
	cmp r0, #1
	blo _02127A08
	mov r0, r4
	mov r1, r6
	bl FUN_0206d9b0
	cmp r0, #0x14
	bhi _02127A08
	ldr r7, [r5, #0x1ac]
	cmp r7, #0
	beq _02127A08
	mov r0, r4
	mov r1, r6
	bl FUN_0206d9b0
	mov r1, r8, asr #2
	add r1, r8, r1, lsr #29
	mov r3, r1, asr #3
	mov r2, r10, asr #2
	add r1, r10, r2, lsr #29
	ldr r2, [r7, #0xc]
	add r3, r3, #1
	mov r9, r1, asr #3
	mov r1, #2
	mov r3, r3, lsl #0x18
	add r2, r7, r2
	mov r7, r3, asr #0x18
	add r3, r9, #6
	str r1, [sp]
	mov r3, r3, lsl #0x18
	mov r9, r3, asr #0x18
	stmib sp, {r6, r7}
	sub r0, r0, #1
	mov r3, #0xc
	mla r7, r0, r3, r2
	mov r2, #0
	str r9, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r0, _02127D18 ; =0x0209F5C0
	mov r1, r6
	mov r3, r2
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02127A08:
	ldr r3, [r5, #0x1b8]
	cmp r3, #0
	beq _02127AC0
	mov r1, r8, asr #2
	mov r0, r10, asr #2
	add r1, r8, r1, lsr #29
	add r0, r10, r0, lsr #29
	mov r2, r0, asr #3
	add r6, r2, #4
	mov r7, r1, asr #3
	add r1, r7, #1
	mov r9, r1, lsl #0x18
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	mov r11, r6, lsl #0x18
	str r1, [sp, #4]
	mov r9, r9, asr #0x18
	str r9, [sp, #8]
	mov r9, r11, asr #0x18
	str r9, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r9, [r3, #0xc]
	mov r2, #0
	add r9, r3, r9
	ldr r0, _02127D18 ; =0x0209F5C0
	mov r3, r2
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r4
	bl FUN_0206dcd4
	mov r3, #0x63
	str r3, [sp]
	mov r3, #0xe
	add r1, r7, #4
	str r3, [sp, #4]
	ldrb r3, [r0, #0x4a]
	mov r1, r1, lsl #0x10
	mov r2, r6, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	mov r0, r5
	bl FUN_ov109_021266a0
_02127AC0:
	ldr r1, [r5, #0x17c]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r3, r8, #0x30
	add r7, r10, #0x20
	mov r0, r3, asr #2
	add r6, r3, r0, lsr #29
	mov r2, r7, asr #2
	add r3, r7, r2, lsr #29
	ldr r0, [r1, #0xc]
	mov r2, r6, asr #3
	add r9, r1, r0
	mov r7, r3, asr #3
	str r2, [sp, #0x24]
	mov r3, r2, lsl #0x18
	mov r2, #2
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r3, asr #0x18
	mov r2, r7, lsl #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r2, #0
	ldr r0, _02127D18 ; =0x0209F5C0
	mov r1, #1
	mov r3, r2
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r1, r8, #0x50
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r11, r0, asr #3
	mov r0, r4
	bl FUN_0206ccdc
	mov r3, r0
	mov r0, #1
	rsb r6, r0, #0x3e8
	mov r1, r11, lsl #0x10
	mov r2, r7, lsl #0x10
	str r6, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	bl FUN_ov109_021266a0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	mov r2, r7, lsl #0x10
	mov r3, #6
	sub r3, r3, #7
	add r1, r8, #0x58
	str r0, [sp, #4]
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	mov r0, r5
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	str r3, [sp, #0x28]
	bl FUN_ov109_021266a0
	add r1, r8, #0x70
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r8, r0, asr #3
	mov r0, r4
	bl FUN_0206ccec
	mov r1, r7, lsl #0x10
	mov r2, r1, asr #0x10
	mov r3, r0
	str r6, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, r8, lsl #0x10
	mov r0, r5
	mov r1, r1, asr #0x10
	bl FUN_ov109_021266a0
	ldr r0, [sp, #0x24]
	mov r3, #2
	mov r0, r0, lsl #0x18
	mov r7, r0, asr #0x18
	str r3, [sp]
	mov r3, #1
	add r2, r10, #0x30
	stmib sp, {r3, r7}
	mov r3, r2, asr #2
	add r2, r2, r3, lsr #29
	mov r7, r2, asr #3
	mov r2, r7, lsl #0x18
	mov r2, r2, asr #0x18
	str r2, [sp, #0xc]
	mov r2, #2
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, #4
	str r2, [sp, #0x18]
	add r1, r9, #8
	mov r2, #0
	str r1, [sp, #0x1c]
	ldr r0, _02127D18 ; =0x0209F5C0
	mov r1, #1
	mov r3, r2
	bl  FUN_ov16_020f5da0
	mov r0, r4
	bl FUN_0206cc84
	mov r1, r11, lsl #0x10
	mov r2, r7, lsl #0x10
	mov r3, r0
	mov r1, r1, asr #0x10
	str r6, [sp]
	mov r9, #5
	mov r0, r5
	mov r2, r2, asr #0x10
	str r9, [sp, #4]
	bl FUN_ov109_021266a0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, r7, lsl #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r3, [sp, #0x28]
	mov r0, r5
	mov r2, r2, asr #0x10
	str r9, [sp, #4]
	bl FUN_ov109_021266a0
	mov r0, r4
	bl FUN_0206cc94
	mov r1, r8, lsl #0x10
	mov r2, r7, lsl #0x10
	mov r3, r0
	mov r1, r1, asr #0x10
	mov r2, r2, asr #0x10
	mov r0, r5
	stmia sp, {r6, r9}
	bl FUN_ov109_021266a0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02127D18: .word unk_0209F5C0
	arm_func_end FUN_ov109_021278a8

	arm_func_start FUN_ov109_02127d1c
FUN_ov109_02127d1c: ; 0x02127D1C
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
	ldr r0, _02127DAC ; =0x0209F5C0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_02127DAC: .word unk_0209F5C0
	arm_func_end FUN_ov109_02127d1c

	arm_func_start FUN_ov109_02127db0
FUN_ov109_02127db0: ; 0x02127DB0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x35c]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _02127E1C ; =0x0209F5C0
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02127E1C: .word unk_0209F5C0
	arm_func_end FUN_ov109_02127db0

	arm_func_start FUN_ov109_02127e20
FUN_ov109_02127e20: ; 0x02127E20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	mov r10, r0
	ldr r5, _02127F6C ; =0x0209BA20
	ldrh r1, [r10, #0x20]
	mov r0, r5
	add r9, r10, #0x104
	ldr r8, [r10, #0x338]
	bl  FUN_ov16_020ee034
	add r6, sp, #0x20
	ldr r11, _02127F70 ; =0x0212A048
	mov r4, r0
	mov r7, r6
	ldmia r11!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r11, {r0, r1, r2}
	cmp r8, #0
	stmia r6, {r0, r1, r2}
	ldrne r0, [r9]
	cmpne r0, #0
	cmpne r4, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl  FUN_ov16_020eef1c
	cmp r0, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, sp, #0x3c
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020eee80
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #2
	mov r5, #1
	str r6, [sp]
	mov r4, #0
	str r5, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r0, [r9, #8]
	ldr r11, _02127F74 ; =0x0209F5C0
	mov r1, r5
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	ldrh r3, [r9, #0xa]
	mov r0, r11
	mov r2, r4
	and r3, r3, #0xff
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r9, [r9]
	mov r3, r4
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r2, [r10, #0x3c4]
	mov r3, #0xb
	str r6, [sp]
	str r5, [sp, #4]
	ldr r7, [r7, r2, lsl #2]
	mov r0, r11
	mov r1, r7, asr #2
	add r1, r7, r1, lsr #29
	mov r1, r1, lsl #0x15
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [r8, #0xc]
	mov r1, r5
	add r3, r8, r3
	add r5, r3, r2, lsl #3
	mov r2, r4
	mov r3, r4
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02127F6C: .word unk_0209BA20
_02127F70: .word 0x0212A048
_02127F74: .word unk_0209F5C0
	arm_func_end FUN_ov109_02127e20

	arm_func_start FUN_ov109_02127f78
FUN_ov109_02127f78: ; 0x02127F78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldr r12, [r8, #0x110]
	add r1, r8, #0x110
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #2
	mov r6, #1
	str r7, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r0, [r1, #8]
	mov r5, #0
	ldr r4, _02128050 ; =0x0209F5C0
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	ldrh r2, [r1, #0xa]
	mov r0, r4
	mov r1, r6
	and r2, r2, #0xff
	str r2, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r2, r6
	mov r3, r5
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldr r12, [r8, #0x11c]
	add r3, r8, #0x11c
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r2, [r3, #8]
	mov r0, r4
	mov r1, r6
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r4, [r3, #0xa]
	mov r2, r6
	mov r3, r5
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02128050: .word unk_0209F5C0
	arm_func_end FUN_ov109_02127f78

	arm_func_start FUN_ov109_02128054
FUN_ov109_02128054: ; 0x02128054
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	ldr r11, _0212822C ; =0x0209BA20
	ldrh r1, [r5, #0x20]
	mov r0, r11
	bl  FUN_ov16_020ee034
	add r4, sp, #0x10
	ldr r6, _02128230 ; =0x0212A064
	mov r8, r0
	mov r7, r4
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r4, #0
	ldr r1, [r5, #0x3c8]
	mov r0, r4
	mov r2, #0x980
	bl MIi_CpuClearFast
	cmp r8, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021280B0:
	add r0, r5, r4, lsl #1
	add r0, r0, #0x300
	ldrh r0, [r0, #0xa4]
	cmp r0, #0
	beq _02128218
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _02128218
	bl FUN_0206d64c
	cmp r0, #0
	beq _02128218
	mov r9, #0
	mov r0, r11
	mov r1, r8
	add r2, sp, #0
	mov r10, r9
	bl  FUN_ov16_020eee80
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r10, r0
	ldrneb r9, [r6, #0x7b]
	bne _0212818C
	ldrsb r0, [sp, #5]
	cmp r0, #0
	movne r10, r0
	ldrneb r9, [r6, #0x7c]
	bne _0212818C
	ldrsb r0, [sp, #7]
	cmp r0, #0
	movne r10, r0
	ldrneb r9, [r6, #0x7d]
	bne _0212818C
	ldrsb r0, [sp, #6]
	cmp r0, #0
	movne r10, r0
	ldrneb r9, [r6, #0x7e]
	bne _0212818C
	ldrsb r0, [sp, #8]
	cmp r0, #0
	movne r10, r0
	ldrneb r9, [r6, #0x7f]
	bne _0212818C
	ldrsb r0, [sp, #0xa]
	cmp r0, #0
	movne r10, r0
	ldrneb r9, [r6, #0x80]
	bne _0212818C
	ldrsb r0, [sp, #9]
	cmp r0, #0
	ldrneb r9, [r6, #0x81]
	movne r10, r0
_0212818C:
	ldr r2, [r5, #0x3c4]
	mov r0, r11
	ldr r2, [r7, r2, lsl #2]
	mov r1, r6
	mov r3, #0
	bl FUN_0204f02c
	ldrh r2, [r5, #0x20]
	add r1, r9, r10
	sub r9, r1, r0
	cmp r2, #0
	beq _021281D0
	add r1, r5, r4, lsl #1
	ldrh r0, [r1, #0x36]
	cmp r2, r0
	ldrneh r0, [r1, #0x56]
	cmpne r2, r0
	ldreq r9, _02128234 ; =0x000003E7
_021281D0:
	mov r0, r4, asr #2
	mov r2, r4, lsr #0x1f
	add r0, r4, r0, lsr #29
	rsb r1, r2, r4, lsl #29
	mov r3, r0, asr #3
	add r0, r2, r1, ror #29
	mov r10, r3, lsl #7
	mov r6, r0, lsl #4
	mov r0, r5
	mov r1, r9
	add r2, r10, #0x60
	add r3, r6, #0x10
	bl FUN_ov109_02128238
	mov r1, r9
	add r2, r10, #0x70
	add r3, r6, #0x10
	mov r0, r5
	bl FUN_ov109_021282f4
_02128218:
	add r4, r4, #1
	cmp r4, #0x10
	blt _021280B0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212822C: .word unk_0209BA20
_02128230: .word 0x0212A064
_02128234: .word 0x000003E7
	arm_func_end FUN_ov109_02128054

	arm_func_start FUN_ov109_02128238
FUN_ov109_02128238: ; 0x02128238
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov lr, #0
	cmp r1, #0
	ldr r12, [r0, #0x320]
	movlt lr, #1
	blt _02128270
	cmp r1, #0
	moveq lr, #2
	beq _02128270
	ldr r4, _021282EC ; =0x000003E7
	cmp r1, r4
	ldreq r12, [r0, #0x32c]
	addeq r2, r2, #8
_02128270:
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r0, r2, asr #2
	ldr r4, [r12, #0xc]
	add r0, r2, r0, lsr #29
	mov r1, r3, asr #2
	add r2, r3, r1, lsr #29
	mov r3, #2
	mov r0, r0, lsl #0x15
	mov r1, #1
	str r3, [sp]
	mov r2, r2, lsl #0x15
	add r4, r12, r4
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, #0xa
	ldr r0, _021282F0 ; =0x0209F5C0
	mov r2, r1
	str r3, [sp, #0x18]
	add r4, r4, lr, lsl #2
	mov r3, #0
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_021282EC: .word 0x000003E7
_021282F0: .word unk_0209F5C0
	arm_func_end FUN_ov109_02128238

	arm_func_start FUN_ov109_021282f4
FUN_ov109_021282f4: ; 0x021282F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	movs r10, r1
	ldrne r1, _021283F0 ; =0x000003E7
	mov r9, r2
	cmpne r10, r1
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, #0x2d
	cmp r10, #0
	sublt r1, r2, #0x2e
	mullt r1, r10, r1
	movlt r10, r1
	movlt r2, #0x2e
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r8, [r0, #0x128]
	cmp r8, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r0, r0, lsl #0x15
	ldr r4, _021283F4 ; =0x66666667
	mov r5, r0, asr #0x18
	mov r7, #2
	mov r6, #1
	mov r11, #0xa
_02128364:
	mov r0, r9, asr #2
	add r0, r9, r0, lsr #29
	str r7, [sp]
	mov r0, r0, lsl #0x15
	smull r3, r1, r4, r10
	mov r2, r10, lsr #0x1f
	mov r0, r0, asr #0x18
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r1, r2, r1, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r1
	str r11, [sp, #0x18]
	ldr r2, [r8, #0xc]
	sub r1, r10, r1
	add r2, r8, r2
	add r1, r2, r1, lsl #2
	str r1, [sp, #0x1c]
	ldr r0, _021283F8 ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, #0
	bl  FUN_ov16_020f5da0
	mov r1, r10
	smull r0, r10, r4, r1
	mov r0, r1, lsr #0x1f
	add r10, r0, r10, asr #2
	cmp r10, #0
	sub r9, r9, #8
	bgt _02128364
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021283F0: .word 0x000003E7
_021283F4: .word 0x66666667
_021283F8: .word unk_0209F5C0
	arm_func_end FUN_ov109_021282f4

	arm_func_start FUN_ov109_021283fc
FUN_ov109_021283fc: ; 0x021283FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x28]
	cmp r4, #0
	bne _02128428
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r4, r0
_02128428:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov109_02126950
	mov r0, r5
	mov r1, r4
	bl FUN_ov109_021271b0
	mov r0, r5
	mov r1, r4
	bl FUN_ov109_02126a38
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov109_021283fc

	arm_func_start FUN_ov109_0212845c
FUN_ov109_0212845c: ; 0x0212845C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r0, [r5, #0x28]
	mov r6, #2
	str r0, [sp, #0x20]
	cmp r0, #0
	mov r7, #1
	mov r10, #0
	bne _021284A0
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r10
	bl  FUN_ov16_020efa9c
	str r0, [sp, #0x20]
_021284A0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r7
	bl FUN_ov109_02126950
	ldr r1, [sp, #0x20]
	mov r0, r5
	bl FUN_ov109_02126a38
	ldr r4, [r5, #0xd4]
	cmp r4, #0
	beq _02128520
	mov r0, #2
	stmia sp, {r0, r7}
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0xdc]
	ldr r0, _02128AC8 ; =0x0209F5C0
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
_02128520:
	ldr r4, [r5, #0xe0]
	cmp r4, #0
	beq _02128574
	mov r1, #1
	str r6, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldrh r8, [r5, #0xe8]
	ldr r0, _02128AC8 ; =0x0209F5C0
	mov r2, r1
	and r8, r8, #0xff
	str r8, [sp, #0x10]
	ldrh r8, [r5, #0xea]
	and r8, r8, #0xff
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02128574:
	mov r0, #0x21
	mov r8, #0xb
	mov r11, #0
	str r0, [sp, #0x2c]
_02128584:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x21
	addne r0, r8, #2
	addne r11, r11, #1
	movne r0, r0, lsl #0x10
	add r1, r5, r11, lsl #2
	movne r8, r0, asr #0x10
	ldr r0, _02128ACC ; =0x0209BA20
	ldr r1, [r1, #0x80]
	bl FUN_0204a2c4
	mov r4, r0
	ldr r1, [sp, #0x2c]
	mov r0, #0xc
	mla r0, r1, r0, r5
	ldr r1, [r0, #0x128]
	cmp r1, #0
	beq _02128834
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	ldr r2, [r5, #0x260]
	cmp r4, #0
	cmpne r2, #0
	beq _021286D4
	ldrb r0, [r4]
	mov r1, r10
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02128680
_02128638: ; jump table
	b _02128680 ; case 0
	b _02128680 ; case 1
	b _02128680 ; case 2
	b _02128680 ; case 3
	b _02128680 ; case 4
	b _02128660 ; case 5
	b _02128664 ; case 6
	b _0212866C ; case 7
	b _02128674 ; case 8
	b _0212867C ; case 9
_02128660:
	b _02128680
_02128664:
	mov r1, r7
	b _02128680
_0212866C:
	mov r1, r6
	b _02128680
_02128674:
	mov r1, #3
	b _02128680
_0212867C:
	mov r1, #5
_02128680:
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	add r3, r2, r3
	mov r2, #0xc
	mla r2, r1, r2, r3
	str r2, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_021286D4:
	ldrb r0, [r4]
	cmp r0, #9
	ldrne r1, [r5, #0x29c]
	cmpne r1, #0
	beq _021288F0
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
	ldr r0, _02128AC8 ; =0x0209F5C0
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
	beq _021288F0
	cmp r9, #0xa
	blt _021287CC
	stmia sp, {r6, r7}
	mov r0, #0x1e
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r2, _02128AD0 ; =0x66666667
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	mov r1, r7
	mov r2, r10
	bl  FUN_ov16_020f5da0
_021287CC:
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
	ldr r2, _02128AD0 ; =0x66666667
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	b _021288E0
_02128834:
	cmp r11, #4
	bge _021288F0
	ldr r1, [r5, #0x254]
	cmp r1, #0
	beq _02128894
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_02128894:
	ldr r1, [r5, #0x260]
	cmp r1, #0
	beq _021288F0
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	add r1, r1, r2
	add r1, r1, #0x30
	str r1, [sp, #0x1c]
_021288E0:
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_021288F0:
	cmp r4, #0
	beq _02128AAC
	add r2, r5, r11, lsl #2
	ldr r0, _02128ACC ; =0x0209BA20
	ldr r1, [sp, #0x20]
	ldr r2, [r2, #0x80]
	bl FUN_0207224c
	movs r9, r0
	ldrneb r3, [r4, #0x14]
	cmpne r3, #0
	beq _02128AAC
	ldr r0, _02128AD4 ; =0x51EB851F
	cmp r9, #1
	smull r1, r2, r0, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #5
	and r4, r2, #0xff
	ble _02128AAC
	cmp r4, #0
	mov r1, r10
	beq _02128958
	cmp r4, #1
	beq _02128960
	cmp r4, #2
	beq _0212897C
	b _02128AAC
_02128958:
	ldr r2, [r5, #0x26c]
	b _02128980
_02128960:
	sub r0, r9, #2
	mov r1, #6
	mul r1, r0, r1
	ldr r2, [r5, #0x284]
	mov r3, #0xd
	mov r0, #3
	b _02128988
_0212897C:
	ldr r2, [r5, #0x290]
_02128980:
	mov r3, #0xd
	mov r0, r7
_02128988:
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	add r2, r2, r3
	add r1, r2, r1
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	cmp r4, #1
	beq _02128AAC
	ldr r4, [r5, #0x278]
	mov r0, r8, lsl #0x18
	stmia sp, {r6, r7}
	mov r1, r0, asr #0x18
	mov r0, #0x1e
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _02128AD0 ; =0x66666667
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
	ldr r0, _02128AC8 ; =0x0209F5C0
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
	cmp r9, #0xa
	blt _02128AAC
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
	ldr r0, _02128AD0 ; =0x66666667
	ldr r3, [r4, #0xc]
	smull r1, r2, r0, r9
	mov r0, r9, lsr #0x1f
	add r1, r4, r3
	add r2, r0, r2, asr #2
	add r0, r1, r2, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _02128AC8 ; =0x0209F5C0
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl  FUN_ov16_020f5da0
_02128AAC:
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #0x26
	ble _02128584
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02128AC8: .word unk_0209F5C0
_02128ACC: .word unk_0209BA20
_02128AD0: .word 0x66666667
_02128AD4: .word 0x51EB851F
	arm_func_end FUN_ov109_0212845c

	arm_func_start FUN_ov109_02128ad8
FUN_ov109_02128ad8: ; 0x02128AD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x28]
	cmp r4, #0
	bne _02128B04
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl  FUN_ov16_020efa9c
	mov r4, r0
_02128B04:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov109_02126950
	mov r0, r5
	mov r1, r4
	bl FUN_ov109_02126a38
	mov r0, r5
	mov r1, r4
	bl FUN_ov109_0212845c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov109_02128ad8

	arm_func_start FUN_ov109_02128b38
FUN_ov109_02128b38: ; 0x02128B38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r6, _02128C98 ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5f64
	ldr r0, [r7, #0x18]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _02128C90
_02128B74: ; jump table
	b _02128C90 ; case 0
	b _02128BB4 ; case 1
	b _02128BC4 ; case 2
	b _02128BC4 ; case 3
	b _02128BC4 ; case 4
	b _02128BC4 ; case 5
	b _02128BC4 ; case 6
	b _02128BC4 ; case 7
	b _02128BB4 ; case 8
	b _02128BF4 ; case 9
	b _02128C90 ; case 10
	b _02128BDC ; case 11
	b _02128C04 ; case 12
	b _02128BB4 ; case 13
	b _02128C90 ; case 14
	b _02128C68 ; case 15
_02128BB4:
	mov r0, r7
	bl FUN_ov109_02127d1c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02128BC4:
	mov r0, r7
	bl FUN_ov109_021283fc
	mov r0, r7
	bl FUN_ov109_02127d1c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02128BDC:
	mov r0, r7
	bl FUN_ov109_0212775c
	mov r0, r7
	bl FUN_ov109_02127d1c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02128BF4:
	mov r0, r7
	bl FUN_ov109_02128ad8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02128C04:
	ldr r2, [r7, #0x2fc]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
	mov r1, r5
	mov r2, r4
	mov r3, r4
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02128C68:
	mov r0, r7
	bl FUN_ov109_02127e20
	mov r0, r7
	bl FUN_ov109_02127f78
	mov r0, r7
	bl FUN_ov109_02128054
	mov r0, r7
	bl FUN_ov109_02127db0
	mov r0, r7
	bl FUN_ov109_02127d1c
_02128C90:
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02128C98: .word unk_0209F5C0
	arm_func_end FUN_ov109_02128b38

	arm_func_start FUN_ov109_02128c9c
FUN_ov109_02128c9c: ; 0x02128C9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r1, _02128D44 ; =0x020A0640
	mov r7, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _02128D48 ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_020f5eec
	ldr r0, _02128D4C ; =0x0209AEC0
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
_02128D44: .word unk_020A0640
_02128D48: .word unk_0209F5C0
_02128D4C: .word unk_0209AEC0
	arm_func_end FUN_ov109_02128c9c

	arm_func_start FUN_ov109_02128d50
FUN_ov109_02128d50: ; 0x02128D50
	stmfd sp!, {r3, lr}
	ldr r12, _02128D7C ; =0x04001000
	mov r1, #1
	ldr r2, [r12]
	ldr r0, _02128D80 ; =0x0209F5C0
	bic lr, r2, #0xe000
	mov r2, r1
	mov r3, #0
	str lr, [r12]
	bl  FUN_ov16_020f5eec
	ldmfd sp!, {r3, pc}
_02128D7C: .word 0x04001000
_02128D80: .word unk_0209F5C0
	arm_func_end FUN_ov109_02128d50

	arm_func_start FUN_ov109_02128d84
FUN_ov109_02128d84: ; 0x02128D84
	stmfd sp!, {r3, lr}
	bl FUN_ov109_02128c9c
	ldr r0, _02128D9C ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_02128D9C: .word unk_0209F5C0
	arm_func_end FUN_ov109_02128d84

	arm_func_start FUN_ov109_02128da0
FUN_ov109_02128da0: ; 0x02128DA0
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x98
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02128DE0
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_02128DE0:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov109_02128da0

	arm_func_start FUN_ov109_02128de8
FUN_ov109_02128de8: ; 0x02128DE8
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x98
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02128E30
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
_02128E30:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov109_02128de8

	arm_func_start FUN_ov109_02128e38
FUN_ov109_02128e38: ; 0x02128E38
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x98
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02128E80
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
_02128E80:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov109_02128e38

	arm_func_start FUN_ov109_02128e88
FUN_ov109_02128e88: ; 0x02128E88
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
	arm_func_end FUN_ov109_02128e88

	arm_func_start FUN_ov109_02128eec
FUN_ov109_02128eec: ; 0x02128EEC
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
	arm_func_end FUN_ov109_02128eec

	arm_func_start FUN_ov109_02128f54
FUN_ov109_02128f54: ; 0x02128F54
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
	bl FUN_ov109_02128e88
	mov r0, r6
	mov r2, r7
	mov r3, r5
	str r4, [sp]
	mov r1, #5
	bl FUN_ov109_02128e88
	str r4, [sp]
	mov r0, r6
	mov r1, #6
	mov r2, r7
	mov r3, r5
	bl FUN_ov109_02128e88
	ldr r0, [r6, #0x18]
	mov r2, r7
	cmp r0, #0xb
	mov r0, r6
	mov r3, r5
	bne _02128FD0
	mov r1, #7
	b _02128FD4
_02128FD0:
	mov r1, #0xf
_02128FD4:
	str r4, [sp]
	bl FUN_ov109_02128e88
	mov r8, #0xb
	mov r7, #5
	mov r0, r6
	mov r1, r8
	mov r2, r7
	mov r3, r5
	str r4, [sp]
	bl FUN_ov109_02128e88
	mov r0, r6
	mov r2, r7
	mov r3, r5
	mov r1, #0xc
	str r4, [sp]
	bl FUN_ov109_02128e88
	mov r0, r6
	str r4, [sp]
	mov r1, #0xd
	mov r2, r7
	mov r3, r5
	bl FUN_ov109_02128e88
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r7, #0xe
	mov r1, r7
	mov r3, r5
	bl FUN_ov109_02128e88
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r1, #0x10
	mov r3, r5
	bl FUN_ov109_02128e88
	str r4, [sp]
	mov r0, r6
	mov r1, #0x11
	mov r7, #0xa
	mov r2, r7
	mov r3, r5
	bl FUN_ov109_02128e88
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r1, #0x12
	mov r3, r5
	bl FUN_ov109_02128e88
	str r4, [sp]
	mov r0, r6
	mov r1, #0x13
	mov r2, r8
	mov r3, r5
	bl FUN_ov109_02128e88
	str r4, [sp]
	mov r0, r6
	mov r2, r8
	mov r3, r5
	mov r1, #0x14
	bl FUN_ov109_02128e88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov109_02128f54

	arm_func_start FUN_ov109_021290cc
FUN_ov109_021290cc: ; 0x021290CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r5, [r4, #0x128]
	add r6, sp, #4
	cmp r5, #0
	mov r9, #0
	mov r8, #1
	beq _02129140
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, r9
	mov r3, r8
	add r0, r5, r0
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r1, r8
	mov r2, r8
	bl  FUN_ov16_020f1138
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r0, r5, r0
	mov r1, r9
	bl GXS_LoadBG0Char
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r9
	add r0, r5, r0
	bl GXS_LoadBG0Scr
_02129140:
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r9, [sp, #0x10]
	str r5, [sp, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r9
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r9, [sp, #0xc]
	str r5, [sp, #4]
	ldr r5, [r4, #0x134]
	cmp r5, #0
	beq _021291F4
	ldr r0, [r5, #0xc]
	mov r7, #2
	ldr r1, [r5, #0x10]
	mov r3, r7
	add r0, r5, r0
	add r2, r9, #1
	bl  FUN_ov16_020f1868
	str r0, [sp, #0xc]
	mov r0, r5
	mov r2, r7
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
_021291F4:
	ldr r0, [r4, #0x18]
	add r5, sp, #0xc
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _021298B0
_02129208: ; jump table
	b _02129248 ; case 0
	b _02129270 ; case 1
	b _02129420 ; case 2
	b _02129420 ; case 3
	b _02129420 ; case 4
	b _02129420 ; case 5
	b _02129420 ; case 6
	b _02129420 ; case 7
	b _02129270 ; case 8
	b _02129550 ; case 9
	b _021298B0 ; case 10
	b _021292A0 ; case 11
	b _02129750 ; case 12
	b _02129270 ; case 13
	b _021298B0 ; case 14
	b _02129768 ; case 15
_02129248:
	mov r4, #0x800
	ldr r0, _021298BC ; =0x020A8C40
	mov r1, r9
	mov r2, r4
	bl GXS_LoadBG1Scr
	ldr r0, _021298C0 ; =0x020A8440
	mov r1, r9
	mov r2, r4
	bl GXS_LoadBG2Scr
	b _021298B0
_02129270:
	mov r5, #4
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r5
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r5
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	b _021298B0
_021292A0:
	mov r7, #4
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r7
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r9
	mov r0, r4
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r8
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r8
	mov r0, r4
	bl FUN_ov109_02128de8
	mov r8, #2
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r8
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r8
	mov r0, r4
	bl FUN_ov109_02128de8
	mov r8, #3
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r8
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r8
	mov r0, r4
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	mov r0, r4
	mov r1, r7
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r8, #5
	mov r0, r4
	mov r1, r8
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r2, r7
	mov r3, r5
	mov r1, #6
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r2, r7
	mov r3, r5
	mov r1, #7
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r2, r8
	str r6, [sp]
	mov r1, #0xe
	mov r3, r5
	bl FUN_ov109_02128e88
	str r6, [sp]
	mov r0, r4
	mov r1, #0xb
	mov r2, r8
	mov r3, r5
	bl FUN_ov109_02128e88
	str r6, [sp]
	mov r0, r4
	mov r2, r8
	mov r3, r5
	mov r1, #0xc
	b _021298AC
_02129420:
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128de8
	mov r7, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r7
	mov r0, r4
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	ldr r0, [r4, #0x230]
	cmp r0, #0
	beq _021294A8
	ldr r1, [sp, #0x10]
	mov r2, #8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x230]
	mov r0, #1
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_021294A8:
	ldr r0, [r4, #0x23c]
	cmp r0, #0
	beq _021294C0
	mov r1, #1
	mov r2, #8
	bl  FUN_ov16_020f1160
_021294C0:
	add r7, sp, #8
	add r3, sp, #0x10
	mov r0, r4
	mov r1, #0x30
	mov r2, #0xe
	str r7, [sp]
	bl FUN_ov109_02128eec
	mov r7, #6
	mov r0, r4
	mov r2, r7
	mov r3, r5
	mov r1, #8
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r2, r7
	mov r1, #9
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r2, r7
	mov r0, r4
	mov r1, #0xa
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov109_02128f54
	str r6, [sp]
	mov r0, r4
	mov r3, r5
	mov r1, #0x15
	mov r2, #7
	b _021298AC
_02129550:
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128de8
	mov r7, #5
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r7
	mov r0, r4
	bl FUN_ov109_02128de8
	mov r7, #6
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r1, r7
	mov r0, r4
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	ldr r0, [r4, #0x230]
	cmp r0, #0
	beq _02129604
	ldr r1, [sp, #0x10]
	mov r2, #8
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x230]
	mov r0, #1
	bl  FUN_ov16_020f1a60
	str r0, [sp, #8]
_02129604:
	ldr r0, [r4, #0x23c]
	cmp r0, #0
	beq _0212961C
	mov r1, #1
	mov r2, #8
	bl  FUN_ov16_020f1160
_0212961C:
	mov r0, r4
	mov r3, r5
	mov r1, #0x15
	mov r2, #7
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov109_02128f54
	mov r0, r4
	mov r3, r5
	mov r1, #0x19
	mov r2, #9
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, #0x1a
	mov r2, #0xc
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r7, #0xd
	mov r0, r4
	mov r1, #0x1b
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, #0x1c
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, #0x1d
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, #0x1e
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r0, r4
	mov r1, #0x1f
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r2, r7
	mov r0, r4
	mov r1, #0x20
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
	mov r7, #0x21
	mov r9, #9
	mov r8, #0xc
	b _02129744
_02129718:
	mla r0, r7, r8, r4
	ldr r0, [r0, #0x128]
	cmp r0, #0
	beq _02129740
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r5
	str r6, [sp]
	bl FUN_ov109_02128e88
_02129740:
	add r7, r7, #1
_02129744:
	cmp r7, #0x26
	ble _02129718
	b _021298B0
_02129750:
	add r3, sp, #0xc
	mov r0, r4
	mov r1, #0x27
	mov r2, #3
	str r6, [sp]
	b _021298AC
_02129768:
	mov r9, #0xa
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r9
	bl FUN_ov109_02128de8
	mov r8, #0xb
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r8
	bl FUN_ov109_02128da0
	str r0, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r8
	bl FUN_ov109_02128de8
	str r0, [sp, #8]
	add r7, sp, #8
	add r5, sp, #0x10
	mov r0, r4
	str r7, [sp]
	mov r1, #0x2a
	mov r2, r9
	mov r3, r5
	bl FUN_ov109_02128eec
	str r7, [sp]
	mov r0, r4
	mov r1, #0x2b
	mov r2, r9
	mov r3, r5
	bl FUN_ov109_02128eec
	str r7, [sp]
	mov r0, r4
	mov r1, #0x2d
	mov r2, r9
	mov r3, r5
	bl FUN_ov109_02128eec
	mov r2, r9
	str r7, [sp]
	mov r0, r4
	mov r1, #0x2e
	mov r3, r5
	bl FUN_ov109_02128eec
	str r7, [sp]
	mov r3, r5
	mov r0, r4
	mov r1, #0x2f
	mov r2, r8
	bl FUN_ov109_02128eec
	mov r5, #9
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov109_02128da0
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r1, r5
	mov r0, r4
	bl FUN_ov109_02128e38
	mov r5, #4
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov109_02128da0
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r1, r5
	mov r0, r4
	bl FUN_ov109_02128e38
	str r0, [sp, #4]
	mov r2, r8
	str r6, [sp]
	mov r0, r4
	mov r1, #0x2c
	add r3, sp, #0xc
_021298AC:
	bl FUN_ov109_02128e88
_021298B0:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021298BC: .word unk_020A8C40
_021298C0: .word unk_020A8440
	arm_func_end FUN_ov109_021290cc

	arm_func_start FUN_ov109_021298c4
FUN_ov109_021298c4: ; 0x021298C4
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
	ldr r0, _02129B8C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02129928
	ldr r0, _02129B90 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	bne _0212993C
_02129928:
	ldr r0, _02129B90 ; =0x0209A454
	mov r11, #1
	ldrb r0, [r0, #0x28]
	str r0, [sp, #8]
	b _021299A4
_0212993C:
	ldr r0, _02129B94 ; =0x0209BA20
	mov r1, #2
	bl FUN_0205107c
	mov r9, r0
	b _02129994
_02129950:
	mov r0, r9
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _02129990
	bl FUN_0206d64c
	cmp r0, #0
	beq _02129990
	mov r0, r4
	bl FUN_0206cbf8
	add r1, r10, r7, lsl #1
	add r1, r1, #0x300
	strh r0, [r1, #0xa4]
	add r7, r7, #1
_02129990:
	add r5, r5, #1
_02129994:
	cmp r5, #0x10
	blt _02129950
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021299A4:
	ldr r0, _02129B94 ; =0x0209BA20
	ldr r1, [sp, #8]
	bl FUN_0205107c
	mov r9, r0
	mov r5, #0
	b _02129A04
_021299BC:
	mov r0, r9
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r8
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _02129A00
	bl FUN_0206d64c
	cmp r0, #0
	beq _02129A00
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	add r7, r7, #1
	strh r0, [r4, r1]
	cmp r7, #0x10
	bge _02129A0C
_02129A00:
	add r5, r5, #1
_02129A04:
	cmp r5, #0x64
	blt _021299BC
_02129A0C:
	ldr r0, _02129B8C ; =0x020A0640
	add r4, sp, #0x54
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldreq r0, _02129B98 ; =0x02099E98
	ldreqb r0, [r0]
	cmpeq r0, #0
	movne r11, #0
	cmp r11, #0
	beq _02129B3C
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
	ldr r11, _02129B94 ; =0x0209BA20
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
	b _02129B24
_02129AD4:
	mov r0, r9, lsl #1
	mov r2, r11
	mov r3, r11
	ldrh r0, [r5, r0]
	b _02129B00
_02129AE8:
	mov lr, r3, lsl #1
	ldrh lr, [r6, lr]
	cmp r0, lr
	moveq r2, r12
	beq _02129B08
	add r3, r3, #1
_02129B00:
	cmp r3, r8
	blt _02129AE8
_02129B08:
	cmp r2, #0
	moveq r0, r9, lsl #1
	ldreqh r2, [r5, r0]
	moveq r0, r1, lsl #1
	addeq r1, r1, #1
	streqh r2, [r4, r0]
	add r9, r9, #1
_02129B24:
	cmp r9, #0x10
	blt _02129AD4
	add r0, sp, #0xc
	add r1, sp, #0x54
	mov r2, r8, lsl #1
	bl MI_CpuCopy8
_02129B3C:
	mov r5, #0
	b _02129B7C
_02129B44:
	mov r0, r5, lsl #1
	ldrh r0, [r4, r0]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _02129B78
	bl FUN_0206d64c
	cmp r0, #0
	movne r0, r5, lsl #1
	ldrneh r1, [r4, r0]
	addne r0, r10, r5, lsl #1
	addne r0, r0, #0x300
	strneh r1, [r0, #0xa4]
_02129B78:
	add r5, r5, #1
_02129B7C:
	cmp r5, r7
	blt _02129B44
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02129B8C: .word unk_020A0640
_02129B90: .word unk_0209A454
_02129B94: .word unk_0209BA20
_02129B98: .word unk_02099E98
	arm_func_end FUN_ov109_021298c4

	arm_func_start FUN_ov109_02129b9c
FUN_ov109_02129b9c: ; 0x02129B9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, #1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	mov r4, #0
	mov r1, r4
	add r0, r6, #0x98
	mov r2, #0x90
	bl MI_CpuFill8
	add r0, r6, #0x128
	mov r1, r4
	mov r2, #0x24c
	bl MI_CpuFill8
	ldr r9, _02129CC8 ; =0x0209A250
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
	mov r0, r4
	ldr r1, [r6, #0x3c8]
	bl MIi_CpuClearFast
	sub r0, r8, #0x6d
	strb r4, [r6, #0x11]
	str r4, [r6, #0x18]
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x1e]
	strh r4, [r6, #0x20]
	strh r0, [r6, #0x22]
	str r0, [r6, #0x30]
	strb r4, [r6, #0x24]
	strb r4, [r6, #0x25]
	strb r4, [r6, #0x27]
	str r4, [r6, #0x28]
	strb r4, [r6, #0x2c]
	strb r4, [r6, #0x34]
	strb r4, [r6, #0x26]
	add r0, r6, #0x36
	mov r1, r4
	mov r7, #0x20
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0x56
	mov r1, r4
	bl MI_CpuFill8
	mov r0, r6
	strb r4, [r6, #0x76]
	bl FUN_ov109_02125050
	ldr r0, _02129CCC ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5a58
	mov r0, r6
	bl FUN_ov109_021298c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02129CC8: .word unk_0209A250
_02129CCC: .word unk_0209F5C0
	arm_func_end FUN_ov109_02129b9c

	arm_func_start FUN_ov109_02129cd0
FUN_ov109_02129cd0: ; 0x02129CD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02129CE8: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02129D0C ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02129D28 ; case 3
	b _02129D88 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _02129DF4 ; case 6
	b _02129E00 ; case 7
	b _02129E2C ; case 8
_02129D0C:
	add r0, r4, #0x374
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02129D28:
	ldr r1, [r4, #0xc]
	bl FUN_ov109_021263b0
	add r0, r4, #0x128
	mov r1, #0x31
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02129D5C
	cmp r0, #2
	beq _02129D6C
	ldmfd sp!, {r4, pc}
_02129D5C:
	mov r0, r4
	mov r1, #2
	bl FUN_ov109_0212561c
	ldmfd sp!, {r4, pc}
_02129D6C:
	mov r0, r4
	bl FUN_ov109_021250ec
	mov r0, r4
	bl FUN_ov109_02125004
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02129D88:
	bl FUN_ov109_02128b38
	ldr r0, _02129E40 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02129DE4
	ldr r2, _02129E44 ; =0x04001040
	ldr r1, _02129E48 ; =0x0000F0FF
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
_02129DE4:
	mov r0, #3
	bl  FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_02129DF4:
	mov r0, r4
	bl FUN_ov109_02128d84
	ldmfd sp!, {r4, pc}
_02129E00:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov109_02125834
	mov r0, r4
	mov r1, #1
	bl FUN_ov109_0212561c
	ldmfd sp!, {r4, pc}
_02129E2C:
	bl FUN_ov109_02125834
	mov r0, r4
	mov r1, #1
	bl FUN_ov109_0212561c
	ldmfd sp!, {r4, pc}
_02129E40: .word unk_020A0640
_02129E44: .word 0x04001040
_02129E48: .word 0x0000F0FF
	arm_func_end FUN_ov109_02129cd0

	arm_func_start FUN_ov109_02129e4c
FUN_ov109_02129e4c: ; 0x02129E4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02129E78
	cmp r1, #6
	beq _02129E88
	cmp r1, #9
	moveq r0, #6
	streq r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02129E78:
	bl FUN_ov109_021290cc
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02129E88:
	ldr r0, _02129E98 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02129E98: .word unk_0209F5C0
	arm_func_end FUN_ov109_02129e4c

	arm_func_start FUN_ov109_02129e9c
FUN_ov109_02129e9c: ; 0x02129E9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r8, _02129FD4 ; =0x0209A250
	mov r7, #0
	bl FUN_ov109_02125834
	mov r0, r10
	bl FUN_ov109_021250b4
	ldr r0, _02129FD8 ; =0x020A0640
	mov r5, #0xc
	ldrb r0, [r0, #0x1a]
	mov r9, #0
	mov r6, r5
	cmp r0, #0
	ldrne r1, _02129FDC ; =0x04001000
	mov r11, r5
	ldrne r0, [r1]
	mov r4, r5
	bicne r0, r0, #0xe000
	strne r0, [r1]
	b _02129F30
_02129EEC:
	mla r0, r9, r6, r10
	ldr r1, [r0, #0x98]
	cmp r1, #0
	beq _02129F0C
	mov r0, r8
	bl FUN_0202e1c0
	mla r0, r9, r5, r10
	str r7, [r0, #0x98]
_02129F0C:
	mla r0, r9, r4, r10
	ldr r1, [r0, #0x9c]
	cmp r1, #0
	beq _02129F2C
	mov r0, r8
	bl FUN_0202e1c0
	mla r0, r9, r11, r10
	str r7, [r0, #0x9c]
_02129F2C:
	add r9, r9, #1
_02129F30:
	cmp r9, #0xc
	blt _02129EEC
	ldr r1, [r10, #0x78]
	cmp r1, #0
	beq _02129F50
	ldr r0, _02129FD4 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x78]
_02129F50:
	ldr r1, [r10, #0x7c]
	cmp r1, #0
	beq _02129F68
	ldr r0, _02129FD4 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x7c]
_02129F68:
	ldr r1, [r10, #0x3c8]
	cmp r1, #0
	beq _02129F80
	ldr r0, _02129FD4 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x3c8]
_02129F80:
	ldr r1, [r10, #0x3cc]
	cmp r1, #0
	beq _02129F98
	ldr r0, _02129FD4 ; =0x0209A250
	bl FUN_0202e1c0
	str r7, [r10, #0x3cc]
_02129F98:
	mov r4, #1
	ldr r0, _02129FE0 ; =0x0209F5C0
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
_02129FD4: .word unk_0209A250
_02129FD8: .word unk_020A0640
_02129FDC: .word 0x04001000
_02129FE0: .word unk_0209F5C0
	arm_func_end FUN_ov109_02129e9c

	arm_func_start FUN_ov109_02129fe4
FUN_ov109_02129fe4: ; 0x02129FE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov109_02129fe4

	arm_func_start FUN_ov109_02129ff8
FUN_ov109_02129ff8: ; 0x02129FF8
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov109_02129ff8

	arm_func_start FUN_ov109_0212a000
FUN_ov109_0212a000: ; 0x0212A000
	bx lr
	arm_func_end FUN_ov109_0212a000

	arm_func_start FUN_ov109_0212a004
FUN_ov109_0212a004: ; 0x0212A004
	bx lr
	arm_func_end FUN_ov109_0212a004

	arm_func_start FUN_ov109_0212a008
FUN_ov109_0212a008: ; 0x0212A008
	bx lr
	arm_func_end FUN_ov109_0212a008
_0212A00C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0x48, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x58, 0xA6, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD8, 0xA4, 0x12, 0x02, 0x2A, 0x00, 0x00, 0x00
	.byte 0xC8, 0xA4, 0x12, 0x02, 0x2B, 0x00, 0x00, 0x00, 0x08, 0xA4, 0x12, 0x02, 0x2D, 0x00, 0x00, 0x00
	.byte 0x18, 0xA4, 0x12, 0x02, 0x2E, 0x00, 0x00, 0x00, 0x48, 0xA4, 0x12, 0x02, 0x2C, 0x00, 0x00, 0x00
	.byte 0x58, 0xA4, 0x12, 0x02, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x28, 0xA5, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x18, 0xA6, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x08, 0xA6, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xF8, 0xA5, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xA8, 0xA5, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0xC8, 0xA5, 0x12, 0x02, 0x27, 0x00, 0x00, 0x00
	.byte 0xD8, 0xA5, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x28, 0xA6, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x38, 0xA6, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x98, 0xA5, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x88, 0xA5, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x78, 0xA5, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x68, 0xA3, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00, 0x58, 0xA5, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x48, 0xA5, 0x12, 0x02, 0x30, 0x00, 0x00, 0x00, 0xA8, 0xA3, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00
	.byte 0xB8, 0xA3, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00, 0x18, 0xA5, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00
	.byte 0x08, 0xA5, 0x12, 0x02, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0xA6, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00, 0x68, 0xA4, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x78, 0xA4, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x88, 0xA4, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x98, 0xA4, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xB8, 0xA4, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0xE8, 0xA4, 0x12, 0x02, 0x1B, 0x00, 0x00, 0x00, 0xF8, 0xA4, 0x12, 0x02, 0x1D, 0x00, 0x00, 0x00
	.byte 0x38, 0xA5, 0x12, 0x02, 0x1E, 0x00, 0x00, 0x00, 0x68, 0xA5, 0x12, 0x02, 0x1F, 0x00, 0x00, 0x00
	.byte 0xB8, 0xA5, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00, 0xE8, 0xA5, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x48, 0xA6, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0x98, 0xA3, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x78, 0xA3, 0x12, 0x02, 0x1C, 0x00, 0x00, 0x00, 0x88, 0xA3, 0x12, 0x02, 0x20, 0x00, 0x00, 0x00
	.byte 0xC8, 0xA3, 0x12, 0x02, 0x11, 0x00, 0x00, 0x00, 0xD8, 0xA3, 0x12, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0xE8, 0xA3, 0x12, 0x02, 0x13, 0x00, 0x00, 0x00, 0xF8, 0xA3, 0x12, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x28, 0xA4, 0x12, 0x02, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov109_0212a210
FUN_ov109_0212a210: ; 0x0212A210
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0212A294 ; =0x0212A2C0
	str r0, [r4]
	ldr r0, _0212A298 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0212A29C ; =0x0000EA3C
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	mov r0, #0xc
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x20]
	mov r0, #9
	strh r0, [r4, #0x16]
	ldrsh r1, [r4, #0x14]
	strh r1, [r4, #4]
	ldrsh r0, [r4, #0x26]
	strh r0, [r4, #6]
	strh r1, [r4, #0x28]
	ldrsh r0, [r4, #0x32]
	strh r0, [r4, #0x2a]
	ldrsh r0, [r4, #0x22]
	strh r0, [r4, #0x2e]
	ldmfd sp!, {r3, r4, r5, pc}
_0212A294: .word ov109_0212A2C0
_0212A298: .word 0x00009CCD
_0212A29C: .word 0x0000EA3C
	arm_func_end FUN_ov109_0212a210

	.section .sinit, 4
ov109_0212A2A0:
	.word FUN_ov109_0212a210

	.data
	.global ov109_0212A2C0
ov109_0212A2C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x0D, 0x00, 0x83, 0x4B, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x83, 0x7B, 0x83, 0x66
	.byte 0x83, 0x42, 0x00, 0x00, 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4E, 0x00, 0x00, 0x83, 0x7B, 0x83, 0x66
	.byte 0x83, 0x42, 0x00, 0x00, 0x83, 0x4B, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x83, 0x4B, 0x83, 0x62
	.byte 0x83, 0x63, 0x00, 0x00, 0x83, 0x4B, 0x83, 0x62, 0x83, 0x63, 0x00, 0x00, 0x83, 0x58, 0x83, 0x73
	.byte 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x00, 0x00, 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4E, 0x97, 0xCD
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x58, 0x83, 0x5E, 0x83, 0x7E, 0x83, 0x69, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x58, 0x83, 0x5E, 0x83, 0x7E, 0x83, 0x69, 0x00, 0x00, 0x00, 0x00, 0x83, 0x58, 0x83, 0x73
	.byte 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x83, 0x52, 0x83, 0x93, 0x83, 0x67, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x8B, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x83, 0x52, 0x83, 0x93, 0x83, 0x67, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x8B, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x39
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x39
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x62, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x73, 0x63, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.global ov109_0212A678
ov109_0212A678:
	.byte 0x04, 0xA3, 0x12, 0x02, 0x0C, 0xA3, 0x12, 0x02
	.byte 0xA8, 0xA4, 0x12, 0x02, 0xF4, 0xA2, 0x12, 0x02, 0x5C, 0xA3, 0x12, 0x02, 0x50, 0xA3, 0x12, 0x02
	.byte 0x1C, 0xA3, 0x12, 0x02
	.global ov109_0212A694
ov109_0212A694:
	.byte 0x38, 0xA3, 0x12, 0x02, 0xFC, 0xA2, 0x12, 0x02, 0x38, 0xA4, 0x12, 0x02
	.byte 0x14, 0xA3, 0x12, 0x02, 0x2C, 0xA3, 0x12, 0x02, 0x44, 0xA3, 0x12, 0x02, 0x24, 0xA3, 0x12, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0xA0, 0x12, 0x02, 0xE4, 0x9F, 0x12, 0x02
	.byte 0x04, 0xA0, 0x12, 0x02, 0x00, 0xA0, 0x12, 0x02, 0x9C, 0x9B, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xD0, 0x9C, 0x12, 0x02, 0x4C, 0x9E, 0x12, 0x02, 0x9C, 0x9E, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02
	.byte 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02
	.byte 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0x00, 0x4D, 0x12, 0x02, 0xFC, 0x4F, 0x12, 0x02
	.byte 0xF8, 0x9F, 0x12, 0x02
	.global ov109_0212A724
ov109_0212A724:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov109_0212A73C
ov109_0212A73C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov109_0212A754
ov109_0212A754:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov109_0212A76C
ov109_0212A76C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D
	.byte 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov109_0212A78C
ov109_0212A78C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov109_0212A7A4
ov109_0212A7A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov109_0212A7BC
ov109_0212A7BC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov109_0212A7D4
ov109_0212A7D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov109_0212A7F4
ov109_0212A7F4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov109_0212A810
ov109_0212A810:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x75
	.byte 0x6E, 0x69, 0x74, 0x62, 0x61, 0x73, 0x65, 0x2E, 0x53, 0x54, 0x52, 0x00
	.global ov109_0212A82C
ov109_0212A82C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x2E
	.byte 0x53, 0x54, 0x52, 0x00
	.global ov109_0212A844
ov109_0212A844:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x2E, 0x53, 0x54, 0x52, 0x00, 0x00
	.global ov109_0212A860
ov109_0212A860:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x74
	.byte 0x61, 0x63, 0x74, 0x69, 0x63, 0x73, 0x63, 0x6D, 0x64, 0x2E, 0x53, 0x54, 0x52, 0x00, 0x00, 0x00
	.global ov109_0212A880
ov109_0212A880:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x77
	.byte 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov109_0212A8A0
ov109_0212A8A0:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00
	.global ov109_0212A8AC
ov109_0212A8AC:
	.byte 0x6D, 0x73, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov109_0212A8B8
ov109_0212A8B8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x35, 0x00, 0x00, 0x00
	.global ov109_0212A8C4
ov109_0212A8C4:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x00, 0x00, 0x00
	.global ov109_0212A8D0
ov109_0212A8D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov109_0212A8F0
ov109_0212A8F0:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x34, 0x00, 0x00, 0x00
	.global ov109_0212A8FC
ov109_0212A8FC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov109_0212A91C
ov109_0212A91C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x70, 0x43, 0x6D, 0x64, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov109_0212A940
ov109_0212A940:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00
	.global ov109_0212A94C
ov109_0212A94C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov109_0212A96C
ov109_0212A96C:
	.byte 0x6D, 0x73, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov109_0212A978
ov109_0212A978:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x45, 0x71
	.byte 0x75, 0x69, 0x70, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov109_0212A99C
ov109_0212A99C:
	.byte 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xCC, 0x25, 0x73, 0x82, 0xAA, 0x83, 0x41, 0x83, 0x62, 0x83, 0x76, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

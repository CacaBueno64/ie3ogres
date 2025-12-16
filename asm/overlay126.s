
	.include "/macros/function.inc"
	.include "/include/overlay126.inc"

	.text
	arm_func_start FUN_ov126_0212a9c0
FUN_ov126_0212a9c0: ; 0x0212A9C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	mov r0, r7
	mov r1, r4
	bl FUN_0206d824
	mov r5, r0
	mov r0, r7
	mov r1, #8
	bl FUN_0206d634
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_0206d8d8
	mov r0, r7
	bl FUN_0206d6d8
	cmp r0, #0
	beq _0212AA24
	mov r0, r8
	mov r1, r7
	bl FUN_0206fca4
_0212AA24:
	mov r0, r8
	bl FUN_0204bbc0
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov126_0212a9c0

	arm_func_start FUN_ov126_0212aa34
FUN_ov126_0212aa34: ; 0x0212AA34
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r4, r2
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov126_0212a9c0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0212aa34

	arm_func_start FUN_ov126_0212aa60
FUN_ov126_0212aa60: ; 0x0212AA60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r2
	mov r5, r0
	mov r0, r7
	mov r4, r1
	mov r6, r3
	bl FUN_02040ac8
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r5
	mov r2, r7
	mov r3, #0
	bl FUN_02072434
	cmp r0, #0
	mov r0, r5
	mov r1, r4
	beq _0212AAD4
	bl FUN_0206fc44
	b _0212AAD8
_0212AAD4:
	bl FUN_0206fca4
_0212AAD8:
	mov r0, r4
	bl FUN_0206da98
	ldr r0, _0212AB98 ; 0x02099EF0
	mov r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0212AAFC
	bl FUN_ov132_02144780
	mov r5, r0
_0212AAFC:
	mov r0, r4
	mov r1, #8
	bl FUN_0206d620
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl FUN_0206d8d8
	ldr r1, [sp, #0x20]
	mov r0, r6
	bl FUN_02040644
	cmp r0, #0
	bne _0212AB3C
	cmp r5, #5
	beq _0212AB3C
	cmp r5, #7
	bne _0212AB50
_0212AB3C:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	strne r6, [r0]
	ldrne r1, [sp, #0x20]
	b _0212AB84
_0212AB50:
	ldr r0, _0212AB98 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0212AB70
	add r2, sp, #0
	mov r1, r4
	mov r3, #1
	bl FUN_ov126_02138b3c
_0212AB70:
	ldr r1, [r4, #0x84]
	cmp r1, #0
	ldrne r0, [sp]
	strne r0, [r1]
	ldrne r1, [sp, #4]
_0212AB84:
	ldrne r0, [r4, #0x84]
	strne r1, [r0, #4]
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212AB98: .word unk_02099EF0
	arm_func_end FUN_ov126_0212aa60

	arm_func_start FUN_ov126_0212ab9c
FUN_ov126_0212ab9c: ; 0x0212AB9C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, r1
	mov r1, #0
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020efa9c
	ldr r12, [sp, #0x18]
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov126_0212aa60
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov126_0212ab9c

	arm_func_start FUN_ov126_0212abe0
FUN_ov126_0212abe0: ; 0x0212ABE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_0206d8d8
	mov r0, r5
	bl FUN_02040ac8
	cmp r0, #0
	beq _0212AC3C
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov126_0212aa60
	b _0212AC4C
_0212AC3C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov126_0212a9c0
_0212AC4C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_0212abe0

	arm_func_start FUN_ov126_0212ac54
FUN_ov126_0212ac54: ; 0x0212AC54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r8, r1
	mov r7, r2
	mov r5, #0
	mov r9, r0
	mov r6, r3
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_020efb44
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020efb44
	mov r5, r0
	add r0, sp, #0xc
	bl FUN_020404cc
	add r0, sp, #4
	bl FUN_020404cc
	cmp r4, #0
	beq _0212ACD4
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	ldrne r1, [r4, #0x84]
	cmpne r1, #0
	ldrne r0, [r1]
	strne r0, [sp, #0xc]
	ldrne r0, [r1, #4]
	strne r0, [sp, #0x10]
_0212ACD4:
	cmp r5, #0
	beq _0212AD00
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	ldrne r1, [r5, #0x84]
	cmpne r1, #0
	ldrne r0, [r1]
	strne r0, [sp, #4]
	ldrne r0, [r1, #4]
	strne r0, [sp, #8]
_0212AD00:
	cmp r4, #0
	cmpeq r5, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	beq _0212AD38
	ldr r1, [sp, #8]
	mov r0, r9
	str r1, [sp]
	ldr r3, [sp, #4]
	mov r1, r4
	mov r2, r6
	bl FUN_ov126_0212abe0
_0212AD38:
	cmp r5, #0
	beq _0212AD5C
	ldr r1, [sp, #0x10]
	mov r0, r9
	str r1, [sp]
	ldr r3, [sp, #0xc]
	mov r1, r5
	mov r2, r7
	bl FUN_ov126_0212abe0
_0212AD5C:
	mov r0, r9
	bl FUN_020731b4
	cmp r0, #0
	mov r0, r9
	beq _0212AD88
	mov r1, r8
	bl FUN_0205106c
	mov r1, r7
	mov r2, r6
	bl FUN_02050064
	b _0212ADB4
_0212AD88:
	bl FUN_020731d0
	cmp r0, #0
	mov r0, r9
	beq _0212ADA0
	mov r1, #2
	b _0212ADA4
_0212ADA0:
	mov r1, r8
_0212ADA4:
	bl FUN_0205107c
	mov r1, r7
	mov r2, r6
	bl FUN_0204fc28
_0212ADB4:
	mov r0, r9
	mov r1, r8
	bl FUN_0204da5c
	mov r0, r9
	bl FUN_0204bbc0
	mov r0, r9
	bl FUN_ov126_0212adfc
	ldr r0, _0212ADF8 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0212ADEC
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
_0212ADEC:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0212ADF8: .word unk_02099EF0
	arm_func_end FUN_ov126_0212ac54

	arm_func_start FUN_ov126_0212adfc
FUN_ov126_0212adfc: ; 0x0212ADFC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r8, r0
	mov r4, r7
_0212AE0C:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0212AE70
	bl FUN_0206d688
	cmp r0, #0
	beq _0212AE70
	mov r0, r6
	bl FUN_0206d5f0
	mov r5, r0
	mov r0, r6
	mov r1, r4
	bl FUN_0206d824
	mov r2, r0
	mov r1, r5
	mov r0, r8
	mov r3, r4
	bl FUN_02072434
	cmp r0, #0
	mov r0, r8
	mov r1, r6
	beq _0212AE6C
	bl FUN_0206fc44
	b _0212AE70
_0212AE6C:
	bl FUN_0206fca4
_0212AE70:
	add r7, r7, #1
	cmp r7, #0x20
	blt _0212AE0C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov126_0212adfc

	arm_func_start FUN_ov126_0212ae80
FUN_ov126_0212ae80: ; 0x0212AE80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x2ec
	mov r4, r1
	bl FUN_02073e54
	cmp r0, #0
	beq _0212AEB4
	mov r1, r4
	add r0, r5, #0x2ec
	bl FUN_02073e14
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_0212AEB4:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0212ae80

	arm_func_start FUN_ov126_0212aebc
FUN_ov126_0212aebc: ; 0x0212AEBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r3
	mov r8, r0
	mov r5, r1
	mov r4, r2
	bl FUN_0207249c
	cmp r6, #0
	addne r7, r0, #0x24
	bne _0212AEF4
	ldrb r1, [sp, #0x20]
	add r7, r0, #0x48
	cmp r1, #0
	addeq r7, r0, #0x22
_0212AEF4:
	ldr r6, _0212AF4C ; 0x02099EF0
	ldr r0, [r6]
	cmp r0, #0
	beq _0212AF40
	mov r1, r5
	bl FUN_ov132_02143cd0
	mov r2, r0
	add r3, sp, #0
	mov r0, r8
	mov r1, r4
	bl FUN_0206fb74
	ldrb r0, [sp, #0x24]
	cmp r0, #0
	ldrneb r0, [sp]
	cmpne r0, #0
	beq _0212AF40
	ldr r0, [r6]
	mov r1, r5
	bl FUN_ov126_021335dc
_0212AF40:
	strh r4, [r7]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212AF4C: .word unk_02099EF0
	arm_func_end FUN_ov126_0212aebc

	arm_func_start FUN_ov126_0212af50
FUN_ov126_0212af50: ; 0x0212AF50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_0207249c
	cmp r5, #0
	ldrneh r0, [r0, #0x24]
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldrneh r0, [r0, #0x48]
	ldreqh r0, [r0, #0x22]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0212af50

	arm_func_start FUN_ov126_0212af7c
FUN_ov126_0212af7c: ; 0x0212AF7C
	ldr r0, _0212AF94 ; =0x0209A720
	ldr r1, [r0, #0xdc]
	ldr r0, [r0, #0xe4]
	add r0, r1, r0
	mov r0, r0, asr #1
	bx lr
_0212AF94: .word unk_0209A720
	arm_func_end FUN_ov126_0212af7c

	arm_func_start FUN_ov126_0212af98
FUN_ov126_0212af98: ; 0x0212AF98
	ldr r0, _0212AFB0 ; =0x0209A720
	ldr r1, [r0, #0xe0]
	ldr r0, [r0, #0xe8]
	add r0, r1, r0
	mov r0, r0, asr #1
	bx lr
_0212AFB0: .word unk_0209A720
	arm_func_end FUN_ov126_0212af98

	arm_func_start FUN_ov126_0212afb4
FUN_ov126_0212afb4: ; 0x0212AFB4
	ldrsh r0, [r0, #0xc4]
	tst r0, #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov126_0212afb4

	arm_func_start FUN_ov126_0212afc8
FUN_ov126_0212afc8: ; 0x0212AFC8
	ldrsh r2, [r0, #0xc4]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov126_0212afc8

	arm_func_start FUN_ov126_0212afdc
FUN_ov126_0212afdc: ; 0x0212AFDC
	ldrh r0, [r0]
	mov r0, r0, asr #8
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov126_0212afdc

	arm_func_start FUN_ov126_0212afec
FUN_ov126_0212afec: ; 0x0212AFEC
	ldrh r0, [r0]
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov126_0212afec

	arm_func_start FUN_ov126_0212aff8
FUN_ov126_0212aff8: ; 0x0212AFF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r8, r3
	ldr r0, [r8, #0x20]
	mov r10, r1
	cmp r0, #0x80000000
	ldr r0, [sp, #0x48]
	mov r9, r2
	str r0, [sp, #0x48]
	ldrgt r0, [r8, #0x18]
	mov r4, #0
	cmpgt r0, #0x80000000
	ble _0212B044
	ldrb r0, [r8, #0x5a]
	cmp r0, #0
	bne _0212B044
	ldr r1, [r8, #0x38]
	cmp r1, #0
	bgt _0212B050
_0212B044:
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B050:
	ldrh r2, [r8, #0x52]
	cmp r1, #0
	ldr r0, _0212B37C ; =FX_SinCosTable_
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r2, r2, #1
	mov r2, r2, lsl #1
	ldrsh r0, [r0, r2]
	moveq r7, r4
	str r0, [sp, #0x1c]
	beq _0212B088
	ldr r0, [r8, #0x3c]
	bl FX_Div
	mov r7, r0
_0212B088:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ldreq r0, [sp, #0x1c]
	cmpeq r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r8, #0x38]
	smull r1, r0, r2, r2
	adds r1, r1, #0x800
	adc r0, r0, r4
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0xd
	mov r0, #0x800
	adds r0, r0, r1, lsl #13
	orr r2, r2, r1, lsr #19
	mov r1, r0, lsr #0xc
	adc r2, r2, r4
	ldr r0, _0212B380 ; =0x00009CCD
	orr r1, r1, r2, lsl #20
	bl FX_Div
	ldr r1, [r8, #0x20]
	cmp r9, #1
	str r1, [r10]
	ldr r1, [r8, #0x24]
	mov r4, #1
	str r1, [r10, #4]
	add r10, r10, #8
	ble _0212B360
	str r0, [sp, #0x10]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x14]
	mov r0, r7, asr #0x1f
	mov r5, r9, lsl #0xc
	str r0, [sp, #0xc]
_0212B11C:
	cmp r9, #0
	mov r0, r5
	ble _0212B13C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212B148
_0212B13C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212B148:
	str r0, [sp, #4]
	ldr r1, [r8, #0x18]
	ldr r0, [r8, #0x20]
	mov r6, r4, lsl #0xc
	sub r11, r1, r0
	cmp r4, #0
	mov r0, r6
	ble _0212B17C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212B188
_0212B17C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212B188:
	bl _ffix
	smull r1, r0, r11, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r11, r1, lsr #0xc
	orr r11, r11, r0, lsl #20
	ldr r0, [sp, #4]
	bl _ffix
	mov r1, r0
	mov r0, r11
	bl FX_Div
	mov r11, r0
	cmp r9, #0
	mov r0, r5
	ble _0212B1D8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212B1E4
_0212B1D8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212B1E4:
	str r0, [sp]
	ldr r1, [r8, #0x1c]
	ldr r0, [r8, #0x24]
	cmp r4, #0
	sub r0, r1, r0
	str r0, [sp, #0x18]
	mov r0, r6
	ble _0212B218
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212B224
_0212B218:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212B224:
	bl _ffix
	ldr r1, [sp, #0x18]
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	adc r0, r0, #0
	mov r6, r1, lsr #0xc
	orr r6, r6, r0, lsl #20
	ldr r0, [sp]
	bl _ffix
	mov r1, r0
	mov r0, r6
	bl FX_Div
	ldr r1, [sp, #0x48]
	cmp r1, #0
	ldr r1, [r8, #0x20]
	add r1, r1, r11
	str r1, [r10]
	ldr r1, [r8, #0x24]
	add r0, r1, r0
	str r0, [r10, #4]
	beq _0212B350
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #0
	beq _0212B294
	ldr r1, [sp, #0x1c]
	mov r0, r11
	bl FX_Div
_0212B294:
	cmp r7, #0
	bne _0212B2E0
	smull r2, r1, r0, r0
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r0, [sp, #0x10]
	mov r1, r2, asr #0x1f
	umull r6, r3, r0, r2
	mla r3, r0, r1, r3
	ldr r0, [sp, #0x14]
	adds r1, r6, #0x800
	mla r3, r0, r2, r3
	adc r0, r3, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	rsb r1, r1, #0
	b _0212B344
_0212B2E0:
	umull r2, r11, r0, r7
	adds r2, r2, #0x800
	mov r3, r2, lsr #0xc
	ldr r2, [sp, #0xc]
	mov r1, r0, asr #0x1f
	mla r11, r0, r2, r11
	smull r6, r2, r0, r0
	mla r11, r1, r7, r11
	adc r0, r11, #0
	orr r3, r3, r0, lsl #20
	adds r0, r6, #0x800
	adc r1, r2, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r6, [sp, #0x10]
	mov r11, r0, asr #0x1f
	umull r2, r1, r6, r0
	mla r1, r6, r11, r1
	ldr r6, [sp, #0x14]
	adds r2, r2, #0x800
	mla r1, r6, r0, r1
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r1, r3, r1
_0212B344:
	ldr r0, [r10, #4]
	sub r0, r0, r1
	str r0, [r10, #4]
_0212B350:
	add r10, r10, #8
	add r4, r4, #1
	cmp r4, r9
	blt _0212B11C
_0212B360:
	ldr r1, [r8, #0x18]
	mov r0, #1
	str r1, [r10]
	ldr r1, [r8, #0x1c]
	str r1, [r10, #4]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B37C: .word FX_SinCosTable_
_0212B380: .word 0x00009CCD
	arm_func_end FUN_ov126_0212aff8

	arm_func_start FUN_ov126_0212b384
FUN_ov126_0212b384: ; 0x0212B384
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_02040148
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02144854
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0212b384

	arm_func_start FUN_ov126_0212b3b0
FUN_ov126_0212b3b0: ; 0x0212B3B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r8, r2
	str r8, [sp]
	mov r2, r3
	str r2, [sp, #4]
	mov r5, #0
	ldr r11, _0212B67C ; =0x0209A2C0
	ldr r7, [sp, #0x38]
	str r5, [sp, #8]
	str r3, [sp, #0xc]
	mov r10, r0
	ldmia r11, {r2, r3}
	mov r9, r1
	bl FUN_ov132_021408a4
	cmp r0, #0
	mov r0, r10
	mov r1, r7
	movne r5, #1
	bl FUN_ov126_0212d4dc
	cmp r0, #0
	mov r6, #1
	mov r0, r10
	moveq r6, #0
	bl FUN_ov126_021375d4
	ldrb r1, [r11, #0x5c]
	mov r4, r0
	mov r0, #1
	cmp r1, #0
	moveq r0, #0
	cmp r0, #0
	movne r5, #1
	cmp r6, #0
	bne _0212B44C
	ldr r1, [r11, #0x30]
	mov r0, r10
	bl FUN_ov126_0212d5f8
	cmp r0, #0
	movne r6, #1
_0212B44C:
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #1
	beq _0212B474
	cmp r0, #2
	beq _0212B4C8
	b _0212B4E4
_0212B474:
	ldr r1, _0212B67C ; =0x0209A2C0
	mov r0, r10
	ldmia r1, {r2, r3}
	mov r1, r9
	bl FUN_ov132_02140a44
	cmp r0, #0
	bne _0212B4E4
	ldr r0, _0212B680 ; =0x0209BA20
	mov r1, r9
	bl FUN_0204ac4c
	cmp r0, #1
	movne r7, #0x13
	bne _0212B4E4
	mov r0, r9
	mov r7, #5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	mov r2, #2
	bl FUN_ov132_02147e84
	b _0212B4E4
_0212B4C8:
	mov r0, r9
	mov r7, #5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	mov r2, #2
	bl FUN_ov132_02147e84
_0212B4E4:
	ldr r1, [sp, #0x3c]
	mov r0, r10
	bl FUN_ov132_0214532c
	cmp r0, #0
	movne r7, #4
	bne _0212B630
	ldr r0, [sp, #0x3c]
	cmp r0, #5
	moveq r7, #0xe
	beq _0212B630
	cmp r5, #0
	beq _0212B5F4
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d510
	cmp r0, #0
	ldrne r0, [sp, #0x3c]
	cmpne r0, #3
	beq _0212B5F4
	ldrb r0, [r11, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212B588
	ldr r3, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov132_02140b68
	cmp r0, #0
	beq _0212B588
	mov r0, r9
	mov r7, #0x11
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	movne r7, #0x12
	b _0212B630
_0212B588:
	ldrb r0, [r11, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212B5C0
	ldr r3, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov126_0212b384
	cmp r0, #0
	movne r7, #0x12
	bne _0212B630
_0212B5C0:
	cmp r4, #0
	beq _0212B5D4
	ldrsh r0, [r4, #8]
	cmp r0, #0x15
	beq _0212B5E4
_0212B5D4:
	mov r7, #0xc
	cmp r6, #0
	moveq r7, #4
	b _0212B630
_0212B5E4:
	mov r7, #0xd
	cmp r6, #0
	moveq r7, #6
	b _0212B630
_0212B5F4:
	ldrb r0, [r11, #0x5f]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r7, #0x16
	bne _0212B630
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d510
	cmp r0, #0
	beq _0212B630
	mov r7, #0xa
	cmp r6, #0
	moveq r7, #2
_0212B630:
	cmp r7, #2
	beq _0212B640
	cmp r7, #0xa
	bne _0212B670
_0212B640:
	ldr r3, [sp, #0xc]
	mov r4, #0x10000
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r4, [sp]
	bl FUN_01ffb1c0
	cmp r0, #0
	beq _0212B670
	cmp r7, #2
	moveq r7, #3
	movne r7, #0xb
_0212B670:
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212B67C: .word unk_0209A2C0
_0212B680: .word gLogicThink
	arm_func_end FUN_ov126_0212b3b0

	arm_func_start FUN_ov126_0212b684
FUN_ov126_0212b684: ; 0x0212B684
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	ldr r4, [sp, #0x6c]
	str r2, [sp, #0x10]
	str r4, [sp, #0x6c]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x10]
	ldr r5, [sp, #0x74]
	mvn r4, #0x80000000
	str r4, [r5]
	ldr r2, [sp, #0x6c]
	mov r6, r1
	mov r7, r0
	ldr r4, [sp, #0x78]
	ldr r10, [r3, #8]
	bl FUN_ov126_0212d584
	mov r11, r0
	mov r0, r6
	bl FUN_02040128
	mov r9, #0
	mov r1, r0
	mov r0, r7
	mov r2, r9
	bl FUN_ov132_0213f5d4
	mov r8, r0
	mov r0, r7
	bl FUN_ov126_0212f398
	ldr r1, _0212BC18 ; =0x0209A80C
	ldr r3, _0212BC1C ; =FX_SinCosTable_
	ldr r2, [r1, #8]
	ldr r1, [r1]
	str r2, [sp, #0x38]
	str r1, [sp, #0x30]
	ldrh r1, [sp, #0x68]
	mov r0, r0, lsl #1
	str r8, [sp, #0x34]
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	mov r2, r1, lsl #1
	add r1, r1, #1
	mov r1, r1, lsl #1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	str r8, [sp, #0x3c]
	smull r8, r3, r0, r2
	smull r2, r1, r0, r1
	adds r0, r8, #0x800
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r0, r0, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #0x10]
	orr r0, r0, r3, lsl #20
	ldr r3, [r1, #4]
	ldr r1, [r1]
	add r0, r3, r0
	str r0, [sp, #0x2c]
	add r0, r1, r2
	str r1, [sp, #0x20]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x6c]
	mov r0, r7
	str r3, [sp, #0x24]
	bl FUN_ov126_0212d534
	cmp r0, #0
	beq _0212B820
	ldr r2, _0212BC20 ; =0x00001C71
	ldr r0, [sp, #0x14]
	mov r1, r11
	strh r2, [r4]
	bl FX_Div
	ldr r2, _0212BC24 ; =0x00004E66
	mov r3, r0, asr #0x1f
	umull r12, r8, r0, r2
	mla r8, r0, r9, r8
	ldr r0, _0212BC24 ; =0x00004E66
	adds r2, r12, #0x800
	mla r8, r3, r0, r8
	ldr r1, [sp, #0x14]
	mov r2, r2, lsr #0xc
	adc r0, r8, r9
	rsb lr, r10, #0x1e000
	orr r2, r2, r0, lsl #20
	mov r1, r1, asr #1
	add r0, lr, r2
	bl FX_Atan2Idx
	ldrh r1, [r4]
	ldr r2, [sp, #0x14]
	cmp r0, r1
	strloh r0, [r4]
	str r10, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	ldrh r3, [r4]
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_02140d98
	str r0, [r5]
	b _0212BBA4
_0212B820:
	ldr r1, [sp, #0x6c]
	mov r0, r7
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	bne _0212B8CC
	ldr r0, _0212BC28 ; =0x000018E3
	strh r0, [r4]
	b _0212B8C0
_0212B840:
	add r0, r9, r9, lsl #2
	add r0, r0, #0xa
	ldr r1, _0212BC2C ; =0xB60B60B7
	rsb r3, r0, r0, lsl #16
	smull r2, r0, r1, r3
	str r10, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #8
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r3, r8
	bl FUN_ov132_02140d98
	cmp r0, #0
	ble _0212B8BC
	cmp r0, r11
	strlt r0, [r5]
	strlth r8, [r4]
	blt _0212BBA4
	ldr r1, [r5]
	cmp r0, r1
	strle r0, [r5]
	strleh r8, [r4]
_0212B8BC:
	add r9, r9, #1
_0212B8C0:
	cmp r9, #7
	blt _0212B840
	b _0212BBA4
_0212B8CC:
	ldr r0, [sp, #0x6c]
	cmp r0, #0x13
	bne _0212B97C
	b _0212B970
_0212B8DC:
	ldr r0, _0212BC30 ; =0x0213A7A0
	mov r1, r9, lsl #1
	ldrh r2, [r0, r1]
	ldr r3, _0212BC2C ; =0xB60B60B7
	mov r0, r7
	add r2, r2, #0xa
	rsb r12, r2, r2, lsl #16
	smull r8, r2, r3, r12
	add r2, r12, r2
	mov r3, r12, lsr #0x1f
	add r2, r3, r2, asr #8
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #0x10
	ldr r2, [sp, #0x6c]
	mov r1, r6
	bl FUN_ov126_0212d584
	str r10, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r3, r8
	bl FUN_ov132_02140d98
	cmp r0, #0
	ble _0212B96C
	cmp r0, r11
	strlt r0, [r5]
	strlth r8, [r4]
	blt _0212BBA4
	ldr r1, [r5]
	cmp r0, r1
	strle r0, [r5]
	strleh r8, [r4]
_0212B96C:
	add r9, r9, #1
_0212B970:
	cmp r9, #4
	blt _0212B8DC
	b _0212BBA4
_0212B97C:
	cmp r0, #5
	bne _0212BA2C
	b _0212BA20
_0212B988:
	ldr r0, _0212BC34 ; =0x0213A7A8
	mov r1, r9, lsl #1
	ldrh r2, [r0, r1]
	ldr r3, _0212BC2C ; =0xB60B60B7
	mov r0, r7
	add r2, r2, #0xa
	rsb r12, r2, r2, lsl #16
	smull r8, r2, r3, r12
	add r2, r12, r2
	mov r3, r12, lsr #0x1f
	add r2, r3, r2, asr #8
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #0x10
	ldr r2, [sp, #0x6c]
	mov r1, r6
	bl FUN_ov126_0212d584
	ldr r2, [sp, #0x14]
	str r10, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	add r2, r2, #0xa000
	mov r3, r8
	bl FUN_ov132_02140d98
	cmp r0, #0
	ble _0212BA1C
	cmp r0, r11
	strlt r0, [r5]
	strlth r8, [r4]
	blt _0212BBA4
	ldr r1, [r5]
	cmp r0, r1
	strle r0, [r5]
	strleh r8, [r4]
_0212BA1C:
	add r9, r9, #1
_0212BA20:
	cmp r9, #7
	blt _0212B988
	b _0212BBA4
_0212BA2C:
	mov r0, r7
	bl FUN_ov126_021375d4
	mov r8, r0
	ldr r2, [sp, #0x6c]
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0212d584
	mov r1, #0x800
	str r0, [r5]
	sub r1, r1, #0xe4
	strh r1, [r4]
	ldr r1, [sp, #0x70]
	mov r0, r7
	bl FUN_ov132_0214532c
	cmp r0, #0
	cmpne r8, #0
	beq _0212BAA8
	mov r0, #3
	bl FUN_ov16_020ef928
	add r1, r0, #1
	cmp r1, #1
	ldreq r0, _0212BC38 ; =0x000004FA
	add sp, sp, #0x40
	streqh r0, [r4]
	cmp r1, #2
	ldreq r0, _0212BC3C ; =0x0000071C
	streqh r0, [r4]
	cmp r1, #3
	ldreq r0, _0212BC40 ; =0x00000AAA
	streqh r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BAA8:
	add r8, sp, #0x18
	add r0, sp, #0x30
	add r1, sp, #0x20
	mov r2, r8
	bl FUN_01ff852c
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	mov r2, r8
	mov r0, r7
	mov r8, #0
	bl FUN_01ffba50
	ldr r1, [r5]
	mov r5, r0
	bl FX_Div
	cmp r0, #0
	moveq r0, #1
	smull r2, r1, r0, r0
	adds r0, r2, #0x800
	adc r1, r1, r8
	mov r0, r0, lsr #0xc
	ldr r2, _0212BC24 ; =0x00004E66
	orr r0, r0, r1, lsl #20
	umull r1, r9, r0, r2
	mla r9, r0, r8, r9
	mov r0, r0, asr #0x1f
	ldr r3, [r7, #0x288]
	adds r1, r1, #0x800
	mla r9, r0, r2, r9
	sub r3, r3, #0x1000
	mov r1, r1, lsr #0xc
	adc r0, r9, r8
	orr r1, r1, r0, lsl #20
	sub r3, r3, r10
	mov r0, r6
	add r6, r3, r1
	bl FUN_02040148
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_021461e8
	cmp r0, #0
	ldrne r0, [sp, #0x6c]
	cmpne r0, #0x13
	beq _0212BB74
	mov r1, r5
	add r0, r6, #0x3000
	bl FX_Atan2Idx
	add sp, sp, #0x40
	strh r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BB74:
	mov r0, r6
	mov r1, r5
	bl FX_Atan2Idx
	ldrh r1, [r4]
	cmp r0, r1
	blo _0212BB98
	cmp r0, #0xc000
	addls sp, sp, #0x40
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BB98:
	add sp, sp, #0x40
	strh r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BBA4:
	ldr r1, [r5]
	mov r0, #0
	cmn r1, #0x80000001
	streq r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	bge _0212BBDC
	ldr r2, [sp, #0x6c]
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0212d584
	str r0, [r5]
	mov r0, #0x2000
	strh r0, [r4]
_0212BBDC:
	ldr r2, [sp, #0x6c]
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0212d584
	ldr r1, [r5]
	cmp r1, r0
	addle sp, sp, #0x40
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [sp, #0x6c]
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0212d584
	str r0, [r5]
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BC18: .word unk_0209A80C
_0212BC1C: .word FX_SinCosTable_
_0212BC20: .word 0x00001C71
_0212BC24: .word 0x00004E66
_0212BC28: .word 0x000018E3
_0212BC2C: .word 0xB60B60B7
_0212BC30: .word ov126_0213A7A0
_0212BC34: .word ov126_0213A7A8
_0212BC38: .word 0x000004FA
_0212BC3C: .word 0x0000071C
_0212BC40: .word 0x00000AAA
	arm_func_end FUN_ov126_0212b684

	arm_func_start FUN_ov126_0212bc44
FUN_ov126_0212bc44: ; 0x0212BC44
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x28]
	mvn r5, #0x80000000
	ldr r12, [sp, #0x2c]
	str r5, [r4]
	mov r5, #0
	ldr lr, _0212BCD8 ; =0x0209A2C0
	strh r5, [r12]
	cmp r3, #0
	ldr r7, [lr, #8]
	beq _0212BC84
	cmp r3, #1
	beq _0212BC8C
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212BC84:
	mov r3, #0xa
	b _0212BC90
_0212BC8C:
	mov r3, #0x28
_0212BC90:
	ldr lr, _0212BCDC ; =0xB60B60B7
	rsb r5, r3, r3, lsl #16
	smull r3, r6, lr, r5
	add r6, r5, r6
	mov r3, r5, lsr #0x1f
	add r6, r3, r6, asr #8
	strh r6, [r12]
	str r7, [sp]
	mov lr, #0
	str lr, [sp, #4]
	ldr r3, [sp, #0x30]
	str lr, [sp, #8]
	str r3, [sp, #0xc]
	ldrh r3, [r12]
	bl FUN_ov132_02140d98
	str r0, [r4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212BCD8: .word unk_0209A2C0
_0212BCDC: .word 0xB60B60B7
	arm_func_end FUN_ov126_0212bc44

	arm_func_start FUN_ov126_0212bce0
FUN_ov126_0212bce0: ; 0x0212BCE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020efd3c
	cmp r0, #0
	beq _0212BCFC
	cmp r0, #4
	ldmnefd sp!, {r4, pc}
_0212BCFC:
	cmp r4, #0x4000
	blo _0212BD1C
	cmp r4, #0xc000
	bhs _0212BD1C
	cmp r0, #0
	moveq r0, #7
	movne r0, #5
	ldmfd sp!, {r4, pc}
_0212BD1C:
	cmp r0, #0
	moveq r0, #1
	movne r0, #3
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0212bce0

	arm_func_start FUN_ov126_0212bd2c
FUN_ov126_0212bd2c: ; 0x0212BD2C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, [sp, #0x60]
	mov r11, r0
	str r4, [sp, #0x60]
	mov r0, r4
	ldr r6, [sp, #0x68]
	mov r10, r1
	mov r9, r2
	str r3, [sp]
	ldr r8, [sp, #0x50]
	ldr r7, [sp, #0x54]
	bl FUN_02040170
	mov r4, r0
	ldr r1, [sp, #0x60]
	mov r0, r11
	mov r2, #0
	bl FUN_ov132_0213f59c
	mov r5, r0
	cmp r6, #0
	beq _0212BD88
	mov r0, r6
	bl FUN_020404cc
_0212BD88:
	mov r0, r11
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #0x2c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x60]
	mov r0, r11
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x2c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x64]
	cmp r0, #2
	beq _0212BDE4
	cmp r0, #3
	beq _0212BE0C
	cmp r0, #5
	bne _0212BE18
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BDE4:
	ldr r0, [sp, #0x5c]
	cmn r0, #1
	ble _0212BE18
	bl FUN_ov16_020f07a8
	ldr r1, [sp, #0x60]
	cmp r1, r0
	bne _0212BE18
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BE0C:
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BE18:
	ldr r1, [r11, #0x288]
	ldr r0, [sp, #0x58]
	cmp r0, r1
	ldrge r0, [sp]
	cmpge r0, r1
	addge sp, sp, #0x2c
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x60]
	bl FUN_02040118
	mov r3, r0
	mov r0, r11
	mov r1, r9
	mov r2, r5
	bl FUN_01ffb9b0
	cmp r0, #0
	addne sp, sp, #0x2c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r4]
	cmp r10, r2
	blt _0212BEFC
	ldr r0, [r4, #8]
	cmp r10, r0
	bgt _0212BEFC
	ldr r1, [r4, #4]
	cmp r9, r1
	blt _0212BEFC
	ldr r3, [r4, #0xc]
	cmp r9, r3
	bgt _0212BEFC
	cmp r10, r8
	cmpeq r9, r7
	bne _0212BEB8
	cmp r6, #0
	strne r10, [r6]
	add sp, sp, #0x2c
	strne r9, [r6, #4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BEB8:
	cmp r8, r2
	blt _0212BEFC
	cmp r8, r0
	bgt _0212BEFC
	cmp r7, r1
	blt _0212BEFC
	cmp r7, r3
	ldrle r1, [sp, #0x58]
	ldrle r0, [r11, #0x288]
	cmple r1, r0
	bge _0212BEFC
	cmp r6, #0
	strne r8, [r6]
	add sp, sp, #0x2c
	strne r7, [r6, #4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BEFC:
	cmp r9, r5
	cmplt r7, r5
	blt _0212BF14
	cmp r9, r5
	cmpgt r7, r5
	ble _0212BF20
_0212BF14:
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BF20:
	cmp r10, r2
	cmplt r8, r2
	blt _0212BF3C
	ldr r0, [r4, #8]
	cmp r10, r0
	cmpgt r8, r0
	ble _0212BF48
_0212BF3C:
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212BF48:
	str r10, [sp, #0xc]
	str r9, [sp, #0x10]
	str r8, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r1, [r4, #8]
	ldr r0, [r4]
	str r0, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r1, [sp, #0x24]
	str r5, [sp, #0x28]
	ldr r1, [r4]
	ldr r0, [r4, #8]
	add r4, sp, #0xc
	subs r1, r1, r0
	rsbmi r1, r1, #0
	mov r0, r4
	bl FUN_0203fb5c
	add r0, sp, #0x1c
	add r2, sp, #4
	mov r1, r4
	bl FUN_0203fdf0
	cmp r0, #0
	addeq sp, sp, #0x2c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	ldrne r0, [sp, #4]
	strne r0, [r6]
	ldrne r0, [sp, #8]
	strne r0, [r6, #4]
	mov r0, #1
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_0212bd2c

	arm_func_start FUN_ov126_0212bfcc
FUN_ov126_0212bfcc: ; 0x0212BFCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r1, [sp, #0x18]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl FUN_ov132_02143ca4
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_021461e8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov126_0212f140
	ldr r1, [r6, #8]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r5]
	ldr r3, [r4]
	mov r1, r6
	bl FUN_ov126_0212ed54
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_0212bfcc

	arm_func_start FUN_ov126_0212c040
FUN_ov126_0212c040: ; 0x0212C040
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, r2
	mov r11, #0
	mov r9, r1
	mov r1, r8
	mov r2, r11
	mov r10, r0
	mov r7, r3
	ldr r6, [sp, #0x40]
	bl FUN_ov132_0213f5d4
	mov r0, r8
	bl FUN_02040170
	mov r4, r0
	mov r0, r9
	bl FUN_ov126_0212fdac
	mov r5, r0
	cmp r6, #0
	mov r0, r10
	mov r1, r8
	strneb r11, [r6]
	bl FUN_ov132_021461f8
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x58]
	mov r0, r10
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0212C0CC
	mov r0, r10
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesb r5, [r0, #0xc]
_0212C0CC:
	ldr r1, [r9, #0xc]
	mov r0, r10
	str r1, [sp]
	ldr r1, [r9, #0x10]
	str r1, [sp, #4]
	ldr r1, [r9, #0x14]
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r8, [sp, #0x10]
	ldrb r1, [r9, #0x5e]
	str r1, [sp, #0x14]
	str r7, [sp, #0x18]
	ldmia r9, {r1, r2, r3}
	bl FUN_ov126_0212bd2c
	cmp r0, #0
	beq _0212C158
	mov r0, r10
	mov r1, r9
	mov r2, r9
	str r8, [sp]
	mov r4, #0
	add r3, r9, #4
	str r4, [sp, #4]
	bl FUN_ov126_0212bfcc
	cmp r0, #0
	beq _0212C14C
	cmp r6, #0
	movne r0, #1
	strneb r0, [r6]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C14C:
	add sp, sp, #0x1c
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C158:
	ldr r0, [r9, #0x48]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	beq _0212C1C0
	ldr r2, [r9]
	ldr r0, [r4]
	cmp r2, r0
	blt _0212C1C0
	ldr r0, [r4, #8]
	cmp r2, r0
	bgt _0212C1C0
	ldr r1, [r9, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _0212C1C0
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bgt _0212C1C0
	add sp, sp, #0x1c
	cmp r7, #0
	strne r2, [r7]
	strne r1, [r7, #4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C1C0:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_0212c040

	arm_func_start FUN_ov126_0212c1cc
FUN_ov126_0212c1cc: ; 0x0212C1CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x78
	add r6, sp, #0x18
	mov r4, r1
	mov r10, r0
	mov r9, r2
	ldmia r4, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r0, r4, #0xc
	add r7, sp, #0x24
	ldmia r0, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldrh r2, [r4, #0x50]
	ldrh r1, [r4, #0x52]
	ldrsh r0, [r4, #0x54]
	strh r2, [sp, #0x68]
	ldrh r2, [r4, #0x56]
	strh r1, [sp, #0x6a]
	ldrb r1, [r4, #0x58]
	strh r2, [sp, #0x6e]
	ldrb r2, [r4, #0x5a]
	strb r1, [sp, #0x70]
	ldrb r1, [r4, #0x5b]
	strb r2, [sp, #0x72]
	ldrb r2, [r4, #0x5d]
	strb r1, [sp, #0x73]
	ldrb r1, [r4, #0x5e]
	strb r2, [sp, #0x75]
	ldr r2, [r4, #0x18]
	strb r1, [sp, #0x76]
	ldr r1, [r4, #0x1c]
	str r2, [sp, #0x30]
	ldr r2, [r4, #0x20]
	str r1, [sp, #0x34]
	ldr r1, [r4, #0x24]
	str r2, [sp, #0x38]
	ldr r2, [r4, #0x28]
	str r1, [sp, #0x3c]
	ldr r1, [r4, #0x2c]
	strh r0, [sp, #0x6c]
	ldrb r0, [r4, #0x59]
	str r2, [sp, #0x40]
	ldr r2, [r4, #0x30]
	str r1, [sp, #0x44]
	ldr r1, [r4, #0x34]
	strb r0, [sp, #0x71]
	ldrb r0, [r4, #0x5c]
	str r2, [sp, #0x48]
	ldr r2, [r4, #0x38]
	str r1, [sp, #0x4c]
	ldr r1, [r4, #0x3c]
	str r2, [sp, #0x50]
	ldr r2, [r4, #0x40]
	str r1, [sp, #0x54]
	ldr r1, [r4, #0x44]
	strb r0, [sp, #0x74]
	ldrb r0, [r4, #0x5f]
	str r2, [sp, #0x58]
	ldr r2, [r4, #0x48]
	str r1, [sp, #0x5c]
	ldr r1, [r4, #0x4c]
	mov r5, #0
	strb r5, [sp, #0xc]
	str r2, [sp, #0x60]
	str r1, [sp, #0x64]
	strb r0, [sp, #0x77]
	subs r7, r3, #1
	ldr r8, [sp, #0xa0]
	bmi _0212C3A8
	add r11, sp, #0x14
	mov r4, #1
_0212C2E8:
	add r12, sp, #0xc
	mov r0, r10
	mov r1, r6
	mov r2, r9
	mov r3, r8
	str r12, [sp]
	bl FUN_ov126_0212c040
	cmp r0, #0
	addne sp, sp, #0x78
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_0212eab0
	mov r0, r10
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x10
	bl FUN_ov126_0212eac8
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_0212ec50
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_0212eca8
	str r9, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, r10
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x10
	bl FUN_ov126_0212ed74
	ldr r1, [sp, #0x48]
	mov r0, r10
	str r1, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r1, r6
	bl FUN_ov126_0212ed54
	subs r7, r7, #1
	bpl _0212C2E8
_0212C3A8:
	mov r0, r8
	bl FUN_020404cc
	mov r0, #0
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_0212c1cc

	arm_func_start FUN_ov126_0212c3bc
FUN_ov126_0212c3bc: ; 0x0212C3BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa4
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0xc8]
	ldr r11, _0212CA04 ; =0x0209A2C0
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0212C3F4
	mov r0, r10
	mov r1, #0
	bl FUN_ov132_02147c64
_0212C3F4:
	mov r0, r10
	bl FUN_ov132_021447c8
	cmp r0, #0
	beq _0212C410
	cmp r0, #1
	addne sp, sp, #0xa4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C410:
	ldr r0, [r11, #0x48]
	bl FUN_ov16_020efa80
	movs r4, r0
	addeq sp, sp, #0xa4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #1
	cmp r6, #7
	movne r1, #0
	mov r0, r10
	bl FUN_ov132_021587a8
	str r7, [sp]
	mov r0, r10
	mov r1, r4
	mov r2, r9
	mov r3, r8
	str r6, [sp, #4]
	bl FUN_ov126_0212b3b0
	ldr r12, _0212CA04 ; =0x0209A2C0
	add r5, sp, #0x44
	mov r7, r0
	mov lr, #6
_0212C464:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs lr, lr, #1
	bne _0212C464
	mov r0, r10
	mov r5, #0
	bl FUN_ov126_021375d4
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_0214532c
	cmp r0, #0
	bne _0212C4B8
	cmp r6, #5
	beq _0212C4B8
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #0
	beq _0212C4BC
_0212C4B8:
	strb r5, [sp, #0xcc]
_0212C4BC:
	ldrb r0, [sp, #0xcc]
	cmp r0, #0
	beq _0212C554
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d524
	cmp r0, #0
	bne _0212C554
	mov r0, #0x10
	bl FUN_ov16_020ef928
	ldr r1, [r11, #4]
	mov r5, r0, lsl #0xc
	subs r2, r1, r8
	ldr r0, [r11]
	rsbmi r2, r2, #0
	subs r1, r0, r9
	rsbmi r1, r1, #0
	mov r0, r10
	bl FUN_01ffba80
	mov r2, r0
	mov r0, r10
	mov r1, r4
	mov r3, r7
	bl FUN_ov132_021410b0
	mov r1, r5, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r2, r1, #1
	ldr r1, _0212CA08 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	ldrsh r1, [r1, r2]
	smull r2, r1, r0, r1
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r9, r9, r1
_0212C554:
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0212C578
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov126_0212d470
_0212C578:
	ldr r1, [r11, #4]
	mov r0, r10
	str r1, [sp]
	ldr r3, [r11]
	mov r1, r9
	mov r2, r8
	bl FUN_01ffba98
	str r0, [sp, #0x1c]
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #2
	beq _0212C65C
	mov r0, r4
	mov r5, #0
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #1
	bne _0212C5E4
	ldr r0, [sp, #0x1c]
	cmp r0, #0xc3000
	movgt r5, #0xc3000
	bgt _0212C624
_0212C5E4:
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	cmpne r0, #0xfa000
	movgt r5, #0xfa000
	bgt _0212C624
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0212C624
	ldr r0, [sp, #0x1c]
	cmp r0, #0xc8000
	movgt r5, #0xc8000
_0212C624:
	cmp r5, #0
	ble _0212C65C
	str r8, [sp]
	add r0, sp, #0x28
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, r10
	mov r3, r9
	ldmia r11, {r1, r2}
	bl FUN_ov132_0213f65c
	cmp r0, #0
	ldrne r9, [sp, #0x28]
	ldrne r8, [sp, #0x2c]
	strne r5, [sp, #0x1c]
_0212C65C:
	ldr r0, [r11, #4]
	ldr r1, [r11]
	sub r0, r8, r0
	sub r1, r9, r1
	bl FX_Atan2Idx
	str r0, [sp, #0x20]
	mov r0, r4
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _0212C780
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0212C6B8
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d534
	cmp r0, #0
	beq _0212C780
_0212C6B8:
	mov r0, r4
	bl FUN_02040128
	mov r1, r0
	mov r0, r10
	mov r2, #0
	bl FUN_ov132_0213f5d4
	ldr r2, [sp, #0x20]
	str r0, [sp, #0x18]
	mov r2, r2, lsl #0x10
	str r0, [sp, #0x38]
	str r0, [sp, #0x40]
	ldr r0, _0212CA0C ; =0x0209A80C
	mov r2, r2, lsr #0x10
	ldr r1, [r0, #8]
	ldr r0, [r0]
	add r1, r1, #0x4000
	sub r0, r0, #0x4000
	add r3, sp, #0x34
	str r1, [sp, #0x3c]
	str r0, [sp, #0x34]
	ldmia r11, {r0, r1}
	bl FUN_020404dc
	cmp r0, #0
	beq _0212C780
	ldr r0, [r11, #4]
	ldr r1, [r11, #4]
	sub r0, r0, r8
	movs r2, r0, lsl #1
	ldr r0, [sp, #0x18]
	rsbmi r2, r2, #0
	subs r0, r0, r1
	rsbmi r0, r0, #0
	cmp r0, r2
	bge _0212C780
	ldr r0, _0212CA10 ; =0x0209A720
	ldmia r11, {r1, r2}
	ldr r0, [r0, #0xd4]
	ldr r8, [sp, #0x18]
	cmp r9, r0
	ldrlt r0, _0212CA0C ; =0x0209A80C
	ldrlt r0, [r0]
	sublt r9, r0, #0x4000
	ldrge r0, _0212CA0C ; =0x0209A80C
	ldrge r0, [r0, #8]
	addge r9, r0, #0x4000
	ldr r0, [sp, #0x18]
	sub r1, r9, r1
	sub r0, r0, r2
	bl FX_Atan2Idx
	str r0, [sp, #0x20]
_0212C780:
	ldr r0, [sp, #0x20]
	ldr r2, _0212CA04 ; =0x0209A2C0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r7}
	add r0, sp, #0x30
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	add r5, sp, #0x24
	ldr r3, [sp, #0x1c]
	mov r0, r10
	mov r1, r4
	str r5, [sp, #0x10]
	bl FUN_ov126_0212b684
	cmp r7, #0xf
	beq _0212C7DC
	ldr r0, [sp, #0x1c]
	cmp r0, #0x50000
	blt _0212C7D4
	mov r0, #3
	b _0212C7D8
_0212C7D4:
	mov r0, #4
_0212C7D8:
	bl FUN_ov16_020f05c8
_0212C7DC:
	mvn r5, #0
	cmp r7, #0xe
	cmpne r6, #5
	moveq r5, #5
	beq _0212C7F8
	cmp r7, #0xf
	movne r5, #4
_0212C7F8:
	ldr r0, [r4, #0x84]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub r1, r9, r1
	sub r0, r8, r0
	bl FX_Atan2Idx
	cmp r7, #0xe
	beq _0212C824
	cmp r7, #0xf
	beq _0212C83C
	b _0212C848
_0212C824:
	mov r0, r0, lsl #0x10
	ldr r1, [r4, #0x84]
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0x18]
	bl FUN_ov126_0212bce0
	b _0212C85C
_0212C83C:
	ldr r0, [r4, #0x84]
	ldrb r3, [r0, #0x1a]
	b _0212C860
_0212C848:
	mov r0, r0, lsl #0x10
	ldr r1, [r4, #0x84]
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
_0212C85C:
	mov r3, r0
_0212C860:
	cmp r5, #0
	ldr r8, _0212CA04 ; =0x0209A2C0
	mov r9, #0
	blt _0212C888
	ldr r0, _0212CA14 ; =0x02099F14
	str r9, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	bl FUN_ov1_020e3c14
_0212C888:
	str r9, [sp]
	mov r5, #1
	mov r0, r10
	mov r1, r4
	mov r3, r9
	mov r2, #0xf
	str r5, [sp, #4]
	bl FUN_ov132_0213c29c
	ldr r0, [r8, #0x48]
	bl FUN_ov16_020efa80
	ldr r1, [sp, #0x20]
	mov r2, r0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r3, [sp, #0x24]
	ldr r1, [sp, #0xd4]
	mov r0, r10
	stmib sp, {r3, r7}
	str r6, [sp, #0xc]
	str r9, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x30]
	mov r1, r8
	bl FUN_ov126_0212cda0
	ldrb r0, [r8, #0x5c]
	cmp r0, #0
	bne _0212C92C
	mov r0, r10
	mov r2, r4
	mov r3, r9
	mov r1, #0x1a
	bl FUN_ov126_0213a490
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _0212CA18 ; =0x0209BA20
	bl FUN_020724dc
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
_0212C92C:
	cmp r7, #0x11
	ldr r5, _0212CA04 ; =0x0209A2C0
	mov r6, #0
	cmpne r7, #0x12
	bne _0212C974
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r3, r0
	mov r0, r10
	mov r1, r4
	mov r2, r7
	bl FUN_ov132_0214a444
	mov r0, r10
	mov r2, r4
	mov r1, #4
	bl FUN_ov132_0214f3cc
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C974:
	cmp r7, #0x13
	cmpne r7, #0x16
	bne _0212C9B0
	ldr r2, _0212CA04 ; =0x0209A2C0
	mov r0, r10
	mov r1, r4
	mov r3, r6
	bl FUN_ov132_0213af10
	mov r0, r10
	mov r2, r4
	mov r3, r6
	mov r1, #0x1b
	bl FUN_ov126_0213a490
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212C9B0:
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	addeq sp, sp, #0xa4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r3, [sp, #0xd0]
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl FUN_ov132_0213af10
	ldrb r0, [r5, #0x5c]
	cmp r0, #2
	addne sp, sp, #0xa4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r2, r4
	mov r1, #4
	bl FUN_ov132_0214f3cc
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212CA04: .word unk_0209A2C0
_0212CA08: .word FX_SinCosTable_
_0212CA0C: .word unk_0209A80C
_0212CA10: .word unk_0209A720
_0212CA14: .word unk_02099F14
_0212CA18: .word gLogicThink
	arm_func_end FUN_ov126_0212c3bc

	arm_func_start FUN_ov126_0212ca1c
FUN_ov126_0212ca1c: ; 0x0212CA1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r9, [sp, #0x40]
	mov r6, r0
	mov r7, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov126_0213922c
	movs r8, r0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0212CBD4 ; =0x0209A2C0
	ldrsh r1, [r8, #0x94]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	addne sp, sp, #0x20
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r9, #0
	blt _0212CA94
	cmp r9, #1
	ble _0212CAA0
_0212CA94:
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212CAA0:
	cmp r9, #0
	moveq r10, #2
	beq _0212CAB4
	cmp r9, #1
	moveq r10, #3
_0212CAB4:
	ldr r7, _0212CBD4 ; =0x0209A2C0
	mov r0, r6
	ldr r2, [r7, #4]
	mov r1, r5
	str r2, [sp]
	ldr r3, [r7]
	mov r2, r4
	bl FUN_01ffba98
	ldmia r7, {r1, r2}
	mov r7, r0
	sub r0, r4, r2
	sub r1, r5, r1
	bl FX_Atan2Idx
	add r1, sp, #0x1c
	mov r3, r9
	mov r9, r0
	str r1, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	mov r0, #0x1f4000
	str r0, [sp, #8]
	mov r0, r6
	mov r1, r8
	mov r2, r7
	bl FUN_ov126_0212bc44
	cmp r7, #0x50000
	blt _0212CB28
	mov r0, #3
	b _0212CB2C
_0212CB28:
	mov r0, #4
_0212CB2C:
	bl FUN_ov16_020f05c8
	ldr r0, [r8, #0x84]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub r1, r5, r1
	sub r0, r4, r0
	bl FX_Atan2Idx
	mov r0, r0, lsl #0x10
	ldr r1, [r8, #0x84]
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
	mov r4, #0
	ldr r1, _0212CBD8 ; =0x02099F14
	str r4, [sp]
	mov r3, r0
	ldr r0, [r1]
	mov r1, r8
	mov r2, #4
	bl FUN_ov1_020e3c14
	str r9, [sp]
	ldrh r1, [sp, #0x18]
	mov r0, r6
	mov r6, #1
	stmib sp, {r1, r10}
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r5, _0212CBD4 ; =0x0209A2C0
	str r4, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	mov r2, r8
	mov r1, r5
	bl FUN_ov126_0212cda0
	mov r0, r5
	mov r1, r6
	bl FUN_ov126_0212fce8
	mov r0, r5
	mov r1, r6
	bl FUN_ov126_0212fc58
	mov r0, r6
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212CBD4: .word unk_0209A2C0
_0212CBD8: .word unk_02099F14
	arm_func_end FUN_ov126_0212ca1c

	arm_func_start FUN_ov126_0212cbdc
FUN_ov126_0212cbdc: ; 0x0212CBDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r6, [sp, #0x54]
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldr r5, [sp, #0x58]
	bl FUN_ov132_021447c8
	ldr r1, [r6, #0x48]
	cmp r1, #0
	addlt sp, sp, #0x28
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0
	cmpne r0, #1
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	bne _0212CC48
	mov r0, r1
	bl FUN_ov16_020efa80
	movs r5, r0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212CC48:
	ldr r4, [sp, #0x50]
	str r7, [sp]
	mov r0, r10
	mov r1, r5
	mov r2, r9
	mov r3, r8
	str r4, [sp, #4]
	bl FUN_ov126_0212b3b0
	ldr r1, [r6, #4]
	mov r7, r0
	str r1, [sp]
	ldr r3, [r6]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_01ffba98
	mov r4, r0
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0212CCA8
	cmp r4, #0xfa000
	bgt _0212CCC4
_0212CCA8:
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0212CCF8
	cmp r4, #0xc8000
	ble _0212CCF8
_0212CCC4:
	str r8, [sp]
	mov r11, #0xc8000
	add r0, sp, #0x1c
	str r11, [sp, #4]
	str r0, [sp, #8]
	mov r0, r10
	mov r3, r9
	ldmia r6, {r1, r2}
	bl FUN_ov132_0213f65c
	cmp r0, #0
	ldrne r9, [sp, #0x1c]
	ldrne r8, [sp, #0x20]
	movne r4, r11
_0212CCF8:
	ldr r0, [r6, #4]
	ldr r1, [r6]
	sub r0, r8, r0
	sub r1, r9, r1
	bl FX_Atan2Idx
	mov r8, r0
	mov r0, r8, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r7}
	ldr r1, [sp, #0x50]
	add r0, sp, #0x24
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r9, sp, #0x18
	mov r0, r10
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r9, [sp, #0x10]
	bl FUN_ov126_0212b684
	ldr r0, [r6, #0x48]
	bl FUN_ov16_020efa80
	mov r1, r8, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp]
	ldrh r3, [sp, #0x18]
	mov r2, r0
	ldr r1, [sp, #0x50]
	stmib sp, {r3, r7}
	str r1, [sp, #0xc]
	mov r5, #1
	str r5, [sp, #0x10]
	mov r4, #0
	str r4, [sp, #0x14]
	ldr r3, [sp, #0x24]
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_0212cda0
	strb r4, [r6, #0x5c]
	mov r0, r5
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_0212cbdc

	arm_func_start FUN_ov126_0212cda0
FUN_ov126_0212cda0: ; 0x0212CDA0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r7, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	str r0, [sp, #4]
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r4, #0
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	str r0, [sp]
	mov r2, r6, lsl #0x10
	ldr r3, [r10, #8]
	ldr r0, [sp, #4]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov132_02140f18
	mov r1, r7, asr #4
	mov r1, r1, lsl #1
	add r2, r1, #1
	ldr r3, _0212D25C ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	mov r1, r1, lsl #1
	mov r11, r0
	ldrsh r2, [r3, r2]
	ldrsh r0, [r3, r1]
	smull r1, r5, r11, r2
	adds r1, r1, #0x800
	smull r3, r2, r11, r0
	adc r0, r5, r4
	adds r3, r3, #0x800
	adc r2, r2, r4
	mov r1, r1, lsr #0xc
	mov r3, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r4, [r10]
	ldr r0, [r10, #4]
	orr r3, r3, r2, lsl #20
	add r5, r4, r1
	cmp r9, #0
	add r4, r0, r3
	ldrnesh r0, [r9, #0x94]
	strne r0, [r10, #0x4c]
	bne _0212CE84
	ldr r0, [r10, #0x4c]
	bl FUN_ov16_020efa80
	movs r9, r0
	bne _0212CE84
	ldr r0, [r10, #0x48]
	str r0, [r10, #0x4c]
	bl FUN_ov16_020efa80
	mov r9, r0
	mov r8, #0x10000
_0212CE84:
	ldr r12, [r10]
	ldr r3, [r10, #4]
	ldr r2, [sp, #0x50]
	mvn r0, #0
	str r0, [r10, #0x48]
	mov r1, #0
	str r4, [r10, #0x1c]
	mov r4, r1
	mov r0, r10
	str r5, [r10, #0x18]
	str r4, [r10, #0x44]
	str r12, [r10, #0x20]
	str r3, [r10, #0x24]
	strb r2, [r10, #0x58]
	bl FUN_ov126_0212fc1c
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212fbe0
	ldr r0, [r10, #0x30]
	ldr r2, _0212D25C ; =FX_SinCosTable_
	cmp r0, #0
	strge r0, [r10, #0x40]
	movlt r0, r4
	strlt r0, [r10, #0x40]
	strlt r0, [r10, #0x30]
	mov r0, r6, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r0, [r2, r0]
	ldr r2, [sp, #0x50]
	smull r1, r5, r8, r1
	smull r4, r3, r8, r0
	adds r1, r1, #0x800
	adc r0, r5, #0
	mov r5, r1, lsr #0xc
	adds r4, r4, #0x800
	adc r1, r3, #0
	mov r3, r4, lsr #0xc
	orr r5, r5, r0, lsl #20
	orr r3, r3, r1, lsl #20
	cmp r2, #0x16
	str r8, [r10, #0x34]
	str r5, [r10, #0x38]
	str r3, [r10, #0x3c]
	strh r6, [r10, #0x50]
	mov r2, #0
	beq _0212CF64
	ldrb r1, [r10, #0x5f]
	mov r0, r2
	tst r1, #0x40
	movne r2, #1
	cmp r2, #0
	beq _0212D1D4
_0212CF64:
	mov r4, #2
	mov r0, r4
	bl FUN_ov16_020ef8d4
	cmp r0, #0
	subne r0, r4, #3
	moveq r0, #1
	mov r0, r0, lsl #0x18
	movs r5, r0, asr #0x18
	ldrmi r1, _0212D260 ; =0x0000EAAB
	ldr r0, _0212D264 ; =0x00000AAA
	ldrpl r1, _0212D268 ; =0x00001555
	mov r4, r1, lsl #0x10
	bl FUN_ov16_020ef8d4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mul r1, r0, r5
	str r0, [sp, #8]
	adds r2, r1, r4, lsr #16
	ldr r0, [sp, #8]
	rsbmi r2, r2, #0
	mul r1, r0, r5
	add r0, r1, r4, lsr #16
	mov r0, r0, lsl #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	mov r2, r2, lsl #0x10
	ldr r0, [r0, #0x194]
	mov r2, r2, lsr #0x10
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x18]
	mov r1, r10
	mov r4, r2, lsr #0x10
	bl FUN_ov132_02159124
	add r1, r11, r11, lsr #31
	str r0, [sp, #0x10]
	mov r0, r1, asr #1
	ldr r1, [sp, #0x10]
	bl FX_Div
	ldr r1, [sp, #0x18]
	ldr r12, _0212D25C ; =FX_SinCosTable_
	add r1, r7, r1, lsr #16
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	mov r11, r0
	mov r0, r1, lsl #1
	ldrsh r3, [r12, r0]
	ldr r0, [r10, #0x20]
	add r1, r1, #1
	str r0, [sp, #0x14]
	mov r1, r1, lsl #1
	ldr r0, [sp, #0x10]
	ldrsh r1, [r12, r1]
	smull r12, r3, r0, r3
	smull r1, lr, r0, r1
	adds r0, r12, #0x800
	adc r3, r3, #0
	mov r12, r0, lsr #0xc
	orr r12, r12, r3, lsl #20
	smull r3, r0, r12, r11
	adds r3, r3, #0x800
	adc r0, r0, #0
	mov r3, r3, lsr #0xc
	ldr r2, [r10, #0x24]
	orr r3, r3, r0, lsl #20
	add r0, r2, r3
	adds r1, r1, #0x800
	str r0, [sp, #0x20]
	adc r0, lr, #0
	mov r2, r1, lsr #0xc
	orr r2, r2, r0, lsl #20
	smull r1, r0, r2, r11
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r0, r9
	bl FUN_02040128
	ldr r2, _0212D26C ; =0x0209A80C
	add r1, r10, #0x18
	add r0, r2, r0, lsl #4
	bl FUN_02040764
	ldrsh r1, [r10, #0x54]
	cmp r1, #0
	bne _0212D140
	cmp r0, #0
	beq _0212D0FC
	sub r0, r7, r4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #8]
	add r0, r10, #0x20
	add r1, r10, #0x18
	bl FUN_020403a8
	mov r1, r0
	ldr r0, [sp, #8]
	mov r2, #0x4000
	bl FUN_020405a4
_0212D0FC:
	ldr r0, _0212D270 ; =0x0209A7FC
	add r1, sp, #0x1c
	bl FUN_02040764
	cmp r0, #0
	rsbeq r0, r5, #0
	addeq r0, r4, r0, lsl #14
	moveq r0, r0, lsl #0x10
	moveq r4, r0, lsr #0x10
	add r0, r7, r4
	strh r0, [r10, #0x52]
	ldrh r0, [r10, #0x52]
	mov r1, r11
	sub r0, r7, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl FX_Div
	strh r0, [r10, #0x54]
_0212D140:
	ldr r0, [sp, #0xc]
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r0, _0212D25C ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r1, [r0, r1]
	smull r2, r1, r6, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r1, r2, lsl #0x10
	add r1, r6, r1, lsr #16
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r3, asr #4
	mov r1, r1, lsl #1
	add r2, r1, #1
	mov r2, r2, lsl #1
	ldrsh r2, [r0, r2]
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	smull r1, r2, r8, r2
	strh r3, [r10, #0x50]
	adds r3, r1, #0x800
	smull r1, r0, r8, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r3, [r10, #0x38]
	str r1, [r10, #0x3c]
	b _0212D1DC
_0212D1D4:
	strh r7, [r10, #0x52]
	strh r0, [r10, #0x54]
_0212D1DC:
	ldrb r1, [r10, #0x5f]
	ldrh r2, [r10, #0x52]
	ldr r0, [r10, #0x38]
	and r1, r1, #0x48
	strb r1, [r10, #0x5f]
	mov r2, r2, asr #8
	cmp r0, #0
	mov r1, #1
	movle r1, #0
	mov r0, r10
	strb r2, [r10, #0x5d]
	bl FUN_ov126_0212fc44
	ldr r4, [sp, #0x54]
	ldr r2, [sp, #0x5c]
	ldrb r1, [sp, #0x58]
	ldr r0, _0212D274 ; =0x0209A2C0
	strb r4, [r10, #0x5e]
	cmp r1, #0
	ldrb r3, [r0, #0x5f]
	and r2, r2, #0xff
	addne sp, sp, #0x24
	orr r1, r3, r2
	strb r1, [r0, #0x5f]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [sp, #0x50]
	ldr r0, [sp, #4]
	mov r1, r9
	mov r2, r10
	str r4, [sp]
	bl FUN_ov132_02150334
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212D25C: .word FX_SinCosTable_
_0212D260: .word 0x0000EAAB
_0212D264: .word 0x00000AAA
_0212D268: .word 0x00001555
_0212D26C: .word unk_0209A80C
_0212D270: .word unk_0209A7FC
_0212D274: .word unk_0209A2C0
	arm_func_end FUN_ov126_0212cda0

	arm_func_start FUN_ov126_0212d278
FUN_ov126_0212d278: ; 0x0212D278
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	mov r9, r1
	bl FUN_ov126_021375d4
	ldr r4, _0212D460 ; =0x0209A2C0
	mov r5, r0
	ldr r0, [r4, #0x4c]
	bl FUN_ov16_020efa80
	mov r8, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_021399d0
	mov r1, r4
	mov r0, r10
	ldrsh r2, [r9, #0x94]
	bl FUN_01ff8bf4
	mov r0, r10
	bl FUN_ov132_0213bdec
	ldr r0, _0212D464 ; =0x0209BA20
	ldrb r0, [r0, #0x887]
	cmp r0, #0
	beq _0212D30C
	ldr r0, [r9, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212D30C
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldrsh r1, [r9, #0x94]
	mov r0, r10
	sub r2, r3, #2
	bl FUN_ov132_0214f5b0
_0212D30C:
	ldr r0, _0212D460 ; =0x0209A2C0
	ldr r4, [r0, #0x38]
	cmp r4, #0
	movle r4, #0x5000
	ble _0212D340
	ldr r0, _0212D468 ; =0x00000CCD
	mov r1, r4, asr #0x1f
	umull r3, r2, r4, r0
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, #0
	mov r4, r3, lsr #0xc
	orr r4, r4, r0, lsl #20
_0212D340:
	mov r0, #8
	bl FUN_ov16_020ef928
	mov r1, #0xa
	mul r1, r0, r1
	add r1, r1, #5
	ldr r0, _0212D46C ; =0x6C16C16D
	mov r2, r1, lsl #0x10
	umull r0, r3, r2, r0
	rsb r0, r3, r1, lsl #16
	add r3, r3, r0, lsr #1
	mov r1, r3, lsl #8
	mov r0, #0x64
	mov r7, r1, lsr #0x10
	bl FUN_ov16_020ef928
	cmp r0, #0x46
	ldrhs r0, _0212D460 ; =0x0209A2C0
	ldrhsh r0, [r0, #0x52]
	addhs r0, r0, #0x8000
	movhs r0, r0, lsl #0x10
	movhs r0, r0, lsr #0x10
	bhs _0212D39C
	mov r0, #0x10000
	bl FUN_ov16_020ef928
_0212D39C:
	mov r11, #9
	mov r3, r0, lsl #0x10
	mov r0, r10
	mov r1, r9
	mov r2, r11
	sub r4, r4, #0x1000
	mov r6, r3, lsr #0x10
	bl FUN_ov126_0212d584
	cmp r4, r0
	ble _0212D3D8
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov126_0212d584
	mov r4, r0
_0212D3D8:
	mov r0, #6
	bl FUN_ov16_020f05c8
	str r6, [sp]
	ldr r6, _0212D460 ; =0x0209A2C0
	str r7, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r7, #0
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	mov r2, r9
	mov r3, r4
	str r7, [sp, #0x14]
	bl FUN_ov126_0212cda0
	mov r1, r8
	mov r0, r10
	mov r2, r9
	mov r3, r6
	bl FUN_ov126_0212f790
	strb r7, [r6, #0x5c]
	cmp r5, #0
	beq _0212D448
	ldrsb r1, [r5, #0xd]
	ldrsh r0, [r9, #0x94]
	cmp r1, r0
	streqb r7, [r5, #0xe]
_0212D448:
	ldrsh r1, [r9, #0x94]
	mov r0, r10
	mov r2, #1
	bl FUN_ov132_02152ec4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212D460: .word unk_0209A2C0
_0212D464: .word gLogicThink
_0212D468: .word 0x00000CCD
_0212D46C: .word 0x6C16C16D
	arm_func_end FUN_ov126_0212d278

	arm_func_start FUN_ov126_0212d470
FUN_ov126_0212d470: ; 0x0212D470
	str r1, [r0, #0x6c]
	str r2, [r0, #0x70]
	bx lr
	arm_func_end FUN_ov126_0212d470

	arm_func_start FUN_ov126_0212d47c
FUN_ov126_0212d47c: ; 0x0212D47C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov132_021447fc
	str r5, [r0]
	str r4, [r0, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0212d47c

	arm_func_start FUN_ov126_0212d498
FUN_ov126_0212d498: ; 0x0212D498
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov132_02144808
	str r5, [r0]
	str r4, [r0, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0212d498

	arm_func_start FUN_ov126_0212d4b4
FUN_ov126_0212d4b4: ; 0x0212D4B4
	sub r3, r1, #4
	cmp r3, #0xf
	mov r0, #0
	bxhi lr
	ldr r1, _0212D4D8 ; =0x0000F307
	mov r2, #1
	tst r1, r2, lsl r3
	movne r0, r2
	bx lr
_0212D4D8: .word 0x0000F307
	arm_func_end FUN_ov126_0212d4b4

	arm_func_start FUN_ov126_0212d4dc
FUN_ov126_0212d4dc: ; 0x0212D4DC
	sub r3, r1, #1
	cmp r3, #0xc
	mov r0, #0
	bxhi lr
	mov r2, #1
	add r1, r2, #0x1e00
	tst r1, r2, lsl r3
	movne r0, r2
	bx lr
	arm_func_end FUN_ov126_0212d4dc

	arm_func_start FUN_ov126_0212d500
FUN_ov126_0212d500: ; 0x0212D500
	mov r0, #1
	cmp r1, #9
	movne r0, #0
	bx lr
	arm_func_end FUN_ov126_0212d500

	arm_func_start FUN_ov126_0212d510
FUN_ov126_0212d510: ; 0x0212D510
	cmp r1, #0
	cmpne r1, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov126_0212d510

	arm_func_start FUN_ov126_0212d524
FUN_ov126_0212d524: ; 0x0212D524
	mov r0, #1
	cmp r1, #0x11
	movne r0, #0
	bx lr
	arm_func_end FUN_ov126_0212d524

	arm_func_start FUN_ov126_0212d534
FUN_ov126_0212d534: ; 0x0212D534
	sub r3, r1, #3
	cmp r3, #0xa
	mov r0, #0
	bxhi lr
	ldr r1, _0212D558 ; =0x00000509
	mov r2, #1
	tst r1, r2, lsl r3
	movne r0, r2
	bx lr
_0212D558: .word 0x00000509
	arm_func_end FUN_ov126_0212d534

	arm_func_start FUN_ov126_0212d55c
FUN_ov126_0212d55c: ; 0x0212D55C
	mov r0, #1
	cmp r1, #0xe
	movne r0, #0
	bx lr
	arm_func_end FUN_ov126_0212d55c

	arm_func_start FUN_ov126_0212d56c
FUN_ov126_0212d56c: ; 0x0212D56C
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x194]
	ldr r2, [r0]
	ldr r2, [r2, #0x14]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212d56c

	arm_func_start FUN_ov126_0212d584
FUN_ov126_0212d584: ; 0x0212D584
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r1, r4
	mov r5, r0
	bl FUN_ov126_0212d4dc
	cmp r0, #0
	beq _0212D5B8
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	moveq r0, #0x28000
	ldmeqfd sp!, {r3, r4, r5, pc}
_0212D5B8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212d55c
	cmp r0, #0
	movne r0, #0x28000
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	moveq r0, #0x32000
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0x64000
	cmp r4, #5
	movne r0, #0x41000
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0212d584

	arm_func_start FUN_ov126_0212d5f8
FUN_ov126_0212d5f8: ; 0x0212D5F8
	mov r0, #1
	cmp r1, #0x6000
	movle r0, #0
	bx lr
	arm_func_end FUN_ov126_0212d5f8

	arm_func_start FUN_ov126_0212d608
FUN_ov126_0212d608: ; 0x0212D608
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov132_02144780
	mov r2, r0
	ldr r0, [r6, #0x194]
	mov r1, r5
	ldr r12, [r0]
	mov r3, r4
	ldr r12, [r12, #0x10]
	blx r12
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_0212d608

	arm_func_start FUN_ov126_0212d63c
FUN_ov126_0212d63c: ; 0x0212D63C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f0810
	add r1, r6, #0xa4
	str r5, [r1, r0, lsl #3]
	add r0, r1, r0, lsl #3
	str r4, [r0, #4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_0212d63c

	arm_func_start FUN_ov126_0212d668
FUN_ov126_0212d668: ; 0x0212D668
	stmfd sp!, {r4, lr}
	cmp r1, #0
	blt _0212D680
	cmp r2, #0x80000000
	cmpne r3, #0x80000000
	bne _0212D688
_0212D680:
	bl FUN_ov126_0212d6b0
	ldmfd sp!, {r4, pc}
_0212D688:
	ldrb lr, [sp, #0xc]
	ldrb r12, [sp, #0x10]
	ldr r4, [sp, #8]
	strb r1, [r0, #0x32c]
	str r2, [r0, #0x278]
	str r3, [r0, #0x27c]
	strb r4, [r0, #0x32d]
	strb lr, [r0, #0x32e]
	strb r12, [r0, #0x32f]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0212d668

	arm_func_start FUN_ov126_0212d6b0
FUN_ov126_0212d6b0: ; 0x0212D6B0
	mov r1, #0
	mov r2, #0x80000000
	mvn r3, #0
	strb r3, [r0, #0x32c]
	str r2, [r0, #0x278]
	str r2, [r0, #0x27c]
	strb r1, [r0, #0x32d]
	strb r1, [r0, #0x32e]
	strb r1, [r0, #0x32f]
	bx lr
	arm_func_end FUN_ov126_0212d6b0

	arm_func_start FUN_ov126_0212d6d8
FUN_ov126_0212d6d8: ; 0x0212D6D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov132_021447c8
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _0212D824 ; =0x0209A2C0
	mov r1, #0
	mov r0, r5
	bl FUN_ov126_0212fc30
	ldr r0, [r5, #0x48]
	bl FUN_ov16_020efa80
	ldrb r1, [r4, #0x36d]
	mov r5, r0
	cmp r1, #0
	beq _0212D720
	mov r0, r4
	mov r1, r5
	bl FUN_ov126_0212fad8
_0212D720:
	ldr r0, _0212D824 ; =0x0209A2C0
	cmp r5, #0
	ldr r1, [r0]
	str r1, [r0, #0xc]
	ldr r1, [r0, #4]
	str r1, [r0, #0x10]
	ldr r1, [r0, #8]
	str r1, [r0, #0x14]
	beq _0212D754
	mov r0, r4
	mov r1, r5
	bl FUN_ov126_0212f7cc
	b _0212D7BC
_0212D754:
	ldrb r0, [r0, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	bne _0212D778
	bl FUN_ov126_0212d82c
	b _0212D7BC
_0212D778:
	bl FUN_ov132_02144780
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02145340
	cmp r0, #0
	beq _0212D7BC
	ldr r0, _0212D828 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xd
	bne _0212D7BC
	mov r0, r4
	mov r1, #8
	bl FUN_ov132_0214478c
	mov r0, r4
	mov r1, #2
	bl FUN_ov126_02136d84
	ldmfd sp!, {r3, r4, r5, pc}
_0212D7BC:
	ldr r0, _0212D824 ; =0x0209A2C0
	ldrb r1, [r0, #0x5a]
	cmp r1, #1
	beq _0212D7D8
	ldr r0, [r0, #0x48]
	cmn r0, #1
	ble _0212D7E4
_0212D7D8:
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_021587a8
_0212D7E4:
	mov r0, r4
	bl FUN_01ff8958
	ldr r0, _0212D824 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov132_02157aa4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_01ff89c0
	ldmfd sp!, {r3, r4, r5, pc}
_0212D824: .word unk_0209A2C0
_0212D828: .word unk_020A0640
	arm_func_end FUN_ov126_0212d6d8

	arm_func_start FUN_ov126_0212d82c
FUN_ov126_0212d82c: ; 0x0212D82C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r4, _0212DB98 ; =0x0209A2C0
	mov r10, r0
	mov r0, r4
	bl FUN_ov126_0212fdac
	mov r6, r0
	mov r0, r10
	mov r1, r4
	mov r8, #0
	bl FUN_ov126_0212eab0
	mov r0, r4
	mov r1, r8
	bl FUN_ov126_0212fbe0
	ldr r0, [r4]
	mov r1, r4
	str r0, [sp, #0x1c]
	mov r0, r10
	add r2, sp, #0x24
	add r3, sp, #0x20
	ldmib r4, {r5, r11}
	bl FUN_ov126_0212eac8
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212ec50
	ldr r1, [r10, #0x288]
	ldr r0, [r4, #0x30]
	cmp r0, r1
	ldrb r1, [r4, #0x58]
	mov r0, r10
	movgt r8, #1
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0212D8CC
	mov r0, r10
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesb r6, [r0, #0xc]
_0212D8CC:
	mov r0, r10
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x20]
	cmp r1, r0
	cmpgt r5, r0
	mov r1, #0
	mov r0, r10
	mov r2, r1
	movle r7, #1
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x20]
	mov r9, #0
	cmp r1, r0
	cmplt r5, r0
	ldr r0, [sp, #0x1c]
	movge r7, #0
	stmia sp, {r0, r5, r11}
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	ldrb r1, [r4, #0x5e]
	mov r0, r10
	str r1, [sp, #0x14]
	str r9, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	ldr r3, [r4, #0x30]
	bl FUN_ov126_0212bd2c
	cmp r0, #0
	movne r9, #1
	cmp r9, #0
	beq _0212D978
	str r7, [sp]
	mov r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x20
	mov r0, r10
	mov r1, r4
	str r7, [sp, #4]
	bl FUN_ov126_0212bfcc
	cmp r0, #0
	movne r9, r7
_0212D978:
	cmp r9, #0
	mov r7, #1
	bne _0212DA10
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _0212DA10
	ldr r0, [sp, #0x1c]
	mov r1, r5
	mov r2, r11
	bl FUN_02040840
	cmp r0, #0
	movne r9, r7
	bne _0212DA10
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [r4, #0x30]
	bl FUN_02040840
	cmp r0, #0
	beq _0212DA10
	mov r0, r10
	mov r1, r7
	mov r2, #0
	bl FUN_ov132_0213f59c
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bgt _0212D9EC
	cmp r5, r0
	movgt r9, r7
_0212D9EC:
	mov r1, #0
	mov r0, r10
	mov r2, r1
	bl FUN_ov132_0213f59c
	ldr r1, [sp, #0x20]
	cmp r1, r0
	blt _0212DA10
	cmp r5, r0
	movlt r9, #1
_0212DA10:
	add r5, sp, #0x24
	add r11, sp, #0x20
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, r11
	str r9, [sp]
	bl FUN_ov126_0212ef6c
	cmp r8, #0
	bne _0212DAE0
	mov r8, #1
	mov r0, r10
	mov r1, r8
	mov r7, #0
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0212DA94
	mov r2, #0x6000
	mov r0, r10
	mov r1, r8
	rsb r2, r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bgt _0212DA94
	stmia sp, {r8, r9}
	mov r2, r5
	mov r5, r7
	mov r0, r10
	mov r1, r4
	mov r3, r11
	str r5, [sp, #8]
	bl FUN_ov126_0212ed74
_0212DA94:
	mov r0, r10
	mov r1, r7
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0212DAE0
	mov r0, r10
	mov r1, r7
	sub r2, r7, #0x6000
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x20]
	cmp r1, r0
	blt _0212DAE0
	stmia sp, {r7, r9}
	add r2, sp, #0x24
	add r3, sp, #0x20
	mov r0, r10
	mov r1, r4
	str r7, [sp, #8]
	bl FUN_ov126_0212ed74
_0212DAE0:
	mov r7, #1
	str r7, [sp]
	mov r5, #0
	str r5, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212eca8
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212ec90
	ldr r1, [r4, #0x30]
	mov r0, r10
	str r1, [sp]
	mov r1, r4
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	bl FUN_ov126_0212ed54
	ldrb r0, [r4, #0x5a]
	cmp r0, #1
	bne _0212DB84
	ldr r0, _0212DB9C ; =0x0209A114
	ldr r0, [r0]
	ldrb r0, [r0, #0x10d]
	cmp r0, #1
	movne r7, r5
	cmp r7, #0
	beq _0212DB60
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_02147c64
_0212DB60:
	mov r0, r6
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0212DB84
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	mov r2, #0
	bl FUN_ov132_02147e84
_0212DB84:
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212d56c
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DB98: .word unk_0209A2C0
_0212DB9C: .word unk_0209A114
	arm_func_end FUN_ov126_0212d82c

	arm_func_start FUN_ov126_0212dba0
FUN_ov126_0212dba0: ; 0x0212DBA0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r4, _0212DCFC ; =0x0209A2C0
	mov r10, r0
	mov r0, r4
	bl FUN_ov126_0212fdac
	mov r8, r0
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212eab0
	mov r11, #0
	mov r0, r4
	mov r1, r11
	bl FUN_ov126_0212fbe0
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x20
	add r3, sp, #0x1c
	ldmia r4, {r5, r6, r7}
	bl FUN_ov126_0212eac8
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212ec50
	mov r2, r11
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	cmpgt r6, r0
	mov r1, #0
	mov r0, r10
	mov r2, r1
	movle r9, #1
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x1c]
	stmia sp, {r5, r6, r7}
	cmp r1, r0
	cmplt r6, r0
	mov r6, #0
	movge r9, #0
	str r8, [sp, #0xc]
	str r9, [sp, #0x10]
	ldrb r1, [r4, #0x5e]
	mov r0, r10
	mov r5, r6
	str r1, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [r4, #0x30]
	bl FUN_ov126_0212bd2c
	cmp r0, #0
	movne r6, #1
	cmp r6, #0
	beq _0212DCA4
	str r9, [sp]
	add r2, sp, #0x20
	add r3, sp, #0x1c
	mov r0, r10
	mov r1, r4
	str r5, [sp, #4]
	bl FUN_ov126_0212bfcc
_0212DCA4:
	mov r0, #1
	stmia sp, {r0, r5}
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212eca8
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212ec90
	ldr r1, [r4, #0x30]
	mov r0, r10
	str r1, [sp]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r1, r4
	bl FUN_ov126_0212ed54
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0212d56c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DCFC: .word unk_0209A2C0
	arm_func_end FUN_ov126_0212dba0

	arm_func_start FUN_ov126_0212dd00
FUN_ov126_0212dd00: ; 0x0212DD00
	stmfd sp!, {r3, lr}
	ldr r1, _0212DD24 ; =0x0209A2C0
	ldr r1, [r1, #0x48]
	cmp r1, #0
	bge _0212DD1C
	bl FUN_ov126_0212dd28
	ldmfd sp!, {r3, pc}
_0212DD1C:
	bl FUN_ov126_0212e92c
	ldmfd sp!, {r3, pc}
_0212DD24: .word unk_0209A2C0
	arm_func_end FUN_ov126_0212dd00

	arm_func_start FUN_ov126_0212dd28
FUN_ov126_0212dd28: ; 0x0212DD28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, r0
	mvn r11, #0
	ldr r6, _0212E7DC ; =0x0209A2C0
	ldr r5, _0212E7E0 ; =0x020A0640
	mov r10, #0
	bl FUN_ov132_02144780
	mov r7, r0
	mov r0, #0x1f4000
	str r0, [sp, #0x24]
	cmp r7, #5
	mov r8, #9
	beq _0212DD74
	ldmia r6, {r0, r1}
	bl FUN_02040644
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DD74:
	ldrb r0, [r4, #0x328]
	cmp r0, #0
	beq _0212DD8C
	cmp r7, #0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DD8C:
	mov r0, r4
	bl FUN_ov132_021447c8
	cmp r0, #6
	bne _0212DDB4
	mov r0, r4
	bl FUN_ov132_021447ec
	cmp r0, #1
	cmpne r0, #6
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DDB4:
	cmp r7, #1
	bne _0212DE04
	mov r0, r4
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r4
	bl FUN_ov126_02135884
	ldr r1, [r6]
	cmp r1, r0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r4
	bl FUN_ov126_02135a5c
	ldr r1, [r6, #4]
	cmp r1, r0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212DE04:
	mov r0, r4
	bl FUN_ov126_0213777c
	mov r9, r0
	ldrsb r0, [r9, #0x20]
	bl FUN_ov16_020efa80
	ldrsb r1, [r9, #0x20]
	mov r7, r0
	cmp r1, r11
	beq _0212E1DC
	ldrb r0, [r9, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212E1DC
	ldrb r0, [r9, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212E1DC
	ldr r0, _0212E7E4 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _0212E038
	ldrb r0, [r5, #0x8f]
	cmp r0, #2
	movls r6, #1
	bls _0212DEE8
	cmp r0, #3
	blo _0212DE9C
	cmp r0, #5
	movls r6, #2
	bls _0212DEE8
_0212DE9C:
	ldrb r0, [r5, #0x8f]
	cmp r0, #6
	blo _0212DEB4
	cmp r0, #8
	movls r6, #3
	bls _0212DEE8
_0212DEB4:
	ldrb r0, [r5, #0x8f]
	cmp r0, #9
	blo _0212DECC
	cmp r0, #0xb
	movls r6, #4
	bls _0212DEE8
_0212DECC:
	ldrb r0, [r5, #0x8f]
	cmp r0, #0xc
	blo _0212DEE4
	cmp r0, #0xe
	movls r6, #5
	bls _0212DEE8
_0212DEE4:
	mvn r6, #0
_0212DEE8:
	ldr r0, _0212E7E4 ; =0x0209BA20
	bl FUN_0207318c
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _0212DF30
_0212DEFC: ; jump table
	b _0212DF30 ; case 0
	b _0212DF10 ; case 1
	b _0212DF18 ; case 2
	b _0212DF1C ; case 3
	b _0212DF2C ; case 4
_0212DF10:
	ldrh r1, [r0, #8]
	b _0212DF20
_0212DF18:
	b _0212DF10
_0212DF1C:
	ldrh r1, [r0, #0xa]
_0212DF20:
	mov r0, #0x1e
	mul r2, r1, r0
	b _0212DF34
_0212DF2C:
	b _0212DF1C
_0212DF30:
	mov r2, #0
_0212DF34:
	ldr r0, [r5, #4]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	cmp r0, #1
	bne _0212E038
	ldrb r0, [r5, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _0212DFBC
	cmp r0, #3
	blo _0212DF70
	cmp r0, #5
	movls r0, #2
	bls _0212DFBC
_0212DF70:
	ldrb r0, [r5, #0x8f]
	cmp r0, #6
	blo _0212DF88
	cmp r0, #8
	movls r0, #3
	bls _0212DFBC
_0212DF88:
	ldrb r0, [r5, #0x8f]
	cmp r0, #9
	blo _0212DFA0
	cmp r0, #0xb
	movls r0, #4
	bls _0212DFBC
_0212DFA0:
	ldrb r0, [r5, #0x8f]
	cmp r0, #0xc
	blo _0212DFB8
	cmp r0, #0xe
	movls r0, #5
	bls _0212DFBC
_0212DFB8:
	mvn r0, #0
_0212DFBC:
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0212E038
_0212DFC8: ; jump table
	b _0212E038 ; case 0
	b _0212DFDC ; case 1
	b _0212DFF4 ; case 2
	b _0212E00C ; case 3
	b _0212E024 ; case 4
_0212DFDC:
	ldr r0, _0212E7E8 ; =0x0213AAD8
	ldr r1, [r5, #8]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #8]
	b _0212E038
_0212DFF4:
	ldr r0, _0212E7E8 ; =0x0213AAD8
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0xc]
	b _0212E038
_0212E00C:
	ldr r0, _0212E7E8 ; =0x0213AAD8
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x10]
	b _0212E038
_0212E024:
	ldr r0, _0212E7E8 ; =0x0213AAD8
	ldr r1, [r5, #0x14]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x14]
_0212E038:
	mov r0, r4
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r4
	mov r1, #0x12
	bl FUN_ov132_021447f4
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_02147cfc
	ldrb r0, [r9, #0x2f]
	cmp r0, #0
	ldreqb r0, [r9, #0x2e]
	cmpeq r0, #0
	beq _0212E094
	mov r0, r4
	bl FUN_ov126_021375d4
	mov r5, r0
	mov r0, r4
	bl FUN_ov126_02137544
	mov r1, r0
	mov r0, r5
	mov r2, #0x18
	bl MI_CpuCopy8
_0212E094:
	ldr r1, [r9, #0x1c]
	ldr r0, _0212E7E4 ; =0x0209BA20
	ldrsh r1, [r1, #8]
	mov r8, #0
	bl FUN_0204a2c4
	ldr r1, [r9, #0x1c]
	mov r5, r0
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, r8
	mov r2, r1
	cmp r3, #0
	bne _0212E0EC
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_0212E0EC:
	cmp r2, #0
	bne _0212E100
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_0212E100:
	cmp r1, #0
	movne r6, #9
	bne _0212E14C
	ldr r0, [r9, #0x1c]
	ldrb r0, [r0, #0xf]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r6, #6
	bne _0212E14C
	ldr r0, [r9, #0x1c]
	mov r6, #5
	ldrb r0, [r0, #0xf]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r6, #4
_0212E14C:
	ldr r0, [r9, #0x1c]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	subne r8, r0, #1
	ldr r0, [r9, #0x1c]
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	movs r11, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp]
	mov r0, #1
	stmib sp, {r0, r7}
	mov r0, r4
	mov r1, r11
	mov r2, r5
	mov r3, r6
	str r10, [sp, #0xc]
	bl FUN_ov132_021417d8
	mov r1, r0
	ldr r0, [r9, #0x1c]
	bl FUN_ov126_02138694
	str r10, [sp]
	mov r2, #1
	stmib sp, {r2, r11}
	mov r0, r4
	mov r1, r7
	mov r2, r10
	str r10, [sp, #0xc]
	mov r3, #0x1c
	bl FUN_ov132_02141778
	mov r1, r0
	ldr r0, [r9, #0x1c]
	bl FUN_ov126_021386cc
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E1DC:
	mov r0, r4
	ldr r9, _0212E7E4 ; =0x0209BA20
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r0, [r5, #0x20]
	bl FUN_ov16_020efa80
	ldrsb r1, [r5, #0x20]
	mov r7, r0
	cmn r1, #1
	beq _0212E400
	ldrb r0, [r5, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0212E400
	ldrb r0, [r5, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212E400
	ldrb r0, [r5, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212E400
	ldrb r0, [r9, #0x887]
	cmp r0, #1
	bne _0212E2B0
	ldr r0, [r7, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0212E2B0
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldrsh r1, [r7, #0x94]
	mov r0, r4
	sub r2, r3, #2
	bl FUN_ov132_0214f5b0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E2B0:
	ldrsh r2, [r5, #0x2c]
	ldr r1, [r6, #0x1c]
	ldr r0, [r7, #0x84]
	sub r3, r1, r2, lsl #12
	add r9, r3, r3, lsr #31
	ldr r11, [r0]
	add r1, r1, r9, asr #1
	mov r9, r9, asr #1
	ldrsh r5, [r5, #0x2a]
	ldr r3, [r6, #0x18]
	ldr r0, [r0, #4]
	rsb r2, r9, r2, lsl #12
	stmia sp, {r1, r11}
	sub r9, r3, r5, lsl #12
	add r9, r9, r9, lsr #31
	mov r1, r9, asr #1
	str r0, [sp, #8]
	add r11, sp, #0x1c
	rsb r1, r1, r5, lsl #12
	add r5, sp, #0x18
	str r11, [sp, #0xc]
	ldr r0, _0212E7EC ; =0x0209A114
	str r5, [sp, #0x10]
	ldr r0, [r0]
	add r3, r3, r9, asr #1
	bl FUN_ov1_020de5dc
	ldr r3, [sp, #0x1c]
	ldr r1, [r6]
	ldr r2, [sp, #0x18]
	ldr r0, [r6, #4]
	sub r5, r3, r1
	sub r1, r2, r0
	smull r0, r2, r1, r1
	adds r3, r0, #0x800
	smull r1, r0, r5, r5
	adc r2, r2, r10
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, r10
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r1, r3
	bl FX_Sqrt
	ldr r1, [r7, #0x84]
	ldr r2, [r6]
	ldr r5, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r6, #4]
	sub r7, r5, r2
	sub r2, r3, r1
	smull r1, r3, r2, r2
	adds r5, r1, #0x800
	smull r2, r1, r7, r7
	adc r3, r3, r10
	adds r2, r2, #0x800
	mov r7, r5, lsr #0xc
	adc r1, r1, r10
	mov r2, r2, lsr #0xc
	orr r7, r7, r3, lsl #20
	orr r2, r2, r1, lsl #20
	mov r5, r0
	add r0, r2, r7
	bl FX_Sqrt
	cmp r5, #0x19000
	bge _0212E3D8
	mov r0, r4
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov132_021447f4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E3D8:
	cmp r0, #0x19000
	bge _0212E400
	mov r0, r4
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov132_021447f4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E400:
	add r2, sp, #0x24
	mov r0, r4
	mov r1, r6
	bl FUN_ov126_0212f550
	mov r9, r0
	bl FUN_ov16_020efa80
	movs r7, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212E450
	ldr r0, [r6, #0x30]
	cmp r0, #0x1e000
	blt _0212E474
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E450:
	mov r0, r4
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0212E474
	ldr r0, [r6, #0x30]
	cmp r0, #0x10000
	addge sp, sp, #0x38
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E474:
	ldr r3, [r6, #0x10]
	ldr r2, [r6, #0xc]
	ldmia r6, {r5, r11}
	mvn r1, #0x80000000
	mov r0, r7
	str r2, [sp, #0x28]
	str r3, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r11, [sp, #0x34]
	str r1, [sp, #0x20]
	bl FUN_ov16_020f0810
	bl FUN_02040138
	mov r1, r9, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp]
	stmib sp, {r0, r10}
	mov r11, #1
	add r1, sp, #0x20
	str r1, [sp, #0xc]
	mov r0, r4
	mov r3, r11
	ldmia r6, {r1, r2}
	bl FUN_ov132_0214c60c
	mov r5, r0
	ldrb r0, [r6, #0x5c]
	ldr r6, _0212E7DC ; =0x0209A2C0
	cmp r0, #0
	moveq r11, r10
	cmp r11, #0
	mov r10, #0
	bne _0212E56C
	ldr r0, [r6, #0x38]
	cmp r0, #0x5000
	ble _0212E5B0
	cmp r5, #0
	ldrnesh r0, [r5, #0x94]
	ldrne r1, [r6, #0x4c]
	cmpne r1, r0
	ldrne r0, [sp, #0x20]
	cmpne r0, #0x10000
	bge _0212E5B0
	add r1, sp, #0x28
	mov r0, r4
	mov r2, r7
	mov r3, r10
	bl FUN_ov132_0214eecc
	cmp r0, #0
	beq _0212E5B0
	add r3, sp, #0x14
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl FUN_ov132_02149eb8
	mov r8, r0
	cmp r8, #0xa
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x14]
	sub r0, r10, #1
	cmp r1, r0
	movne r9, r1
	b _0212E5B0
_0212E56C:
	ldrb r0, [r6, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, r10
	cmp r0, #0
	bne _0212E5B0
	ldr r1, [r6, #0x4c]
	mov r0, r9
	bl FUN_ov16_020f06d8
	cmp r0, #0
	beq _0212E5B0
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	bne _0212E5B0
	cmp r5, #0
	ldrnesh r9, [r5, #0x94]
	mvneq r9, #0
_0212E5B0:
	cmp r8, #9
	ldr r6, _0212E7E4 ; =0x0209BA20
	ldr r5, _0212E7DC ; =0x0209A2C0
	bne _0212E60C
	mov r0, r9
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r2, [sp, #0x24]
	mov r0, r4
	bl FUN_ov132_0214daac
	ldrb r1, [r6, #0x883]
	mov r8, r0
	cmp r1, #0
	beq _0212E5F0
	cmp r8, #2
	moveq r8, #0
_0212E5F0:
	cmp r8, #0xb
	bne _0212E60C
	mov r0, r4
	mov r1, #0x11
	bl FUN_ov132_021447d0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E60C:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r7, r0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, r8
	bl FUN_ov132_02142db0
	cmp r0, #0
	beq _0212E668
	mov r0, r7
	bl FUN_0206da78
	cmp r0, #0x1d
	beq _0212E65C
	mov r0, r7
	bl FUN_0206da78
	cmp r0, #0x20
	ldrne r0, [r7, #0x84]
	ldrne r0, [r0]
	strne r0, [r5]
_0212E65C:
	ldr r0, [r7, #0x84]
	ldr r0, [r0, #4]
	str r0, [r5, #4]
_0212E668:
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0212E698
	mov r0, r4
	bl FUN_ov132_021448f4
	cmp r0, #0
	bne _0212E698
	cmp r8, #2
	cmpne r8, #4
	cmpne r8, #5
	moveq r8, #0
_0212E698:
	cmp r8, #9
	cmpne r8, #5
	beq _0212E6CC
	mov r0, r4
	bl FUN_ov132_02147e9c
	mov r0, r4
	mov r1, #0
	bl FUN_ov132_02143114
	ldrb r1, [r0, #0x25]
	cmp r1, #0x13
	cmpne r1, #0x16
	moveq r1, #4
	streqb r1, [r0, #0x25]
_0212E6CC:
	cmp r8, #0xb
	addls pc, pc, r8, lsl #2
	b _0212E7B0
_0212E6D8: ; jump table
	b _0212E740 ; case 0
	b _0212E708 ; case 1
	b _0212E71C ; case 2
	b _0212E72C ; case 3
	b _0212E750 ; case 4
	b _0212E760 ; case 5
	b _0212E770 ; case 6
	b _0212E780 ; case 7
	b _0212E790 ; case 8
	b _0212E7B0 ; case 9
	b _0212E7B0 ; case 10
	b _0212E7A0 ; case 11
_0212E708:
	mov r0, r4
	mov r1, r7
	bl FUN_ov132_02151210
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E71C:
	mov r0, r4
	mov r1, r7
	bl FUN_ov126_0212d278
	b _0212E7B8
_0212E72C:
	mov r0, r4
	mov r1, r7
	mov r2, #0x14
_0212E738:
	bl FUN_ov132_02150b54
	b _0212E7B8
_0212E740:
	mov r0, r4
	mov r1, r9
	bl FUN_ov132_02150fe4
	b _0212E7B8
_0212E750:
	mov r0, r4
	mov r1, r7
	bl FUN_ov132_02150990
	b _0212E7B8
_0212E760:
	mov r0, r4
	mov r1, r7
	mov r2, #0
	b _0212E738
_0212E770:
	mov r0, r4
	mov r1, r7
	mov r2, #0xf
	b _0212E738
_0212E780:
	mov r0, r4
	mov r1, r7
	bl FUN_ov132_02150eb0
	b _0212E7B8
_0212E790:
	mov r0, r4
	mov r1, r7
	bl FUN_ov132_02151270
	b _0212E7B8
_0212E7A0:
	mov r0, r4
	mov r1, #0x11
	bl FUN_ov132_021447d0
	b _0212E7B8
_0212E7B0:
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E7B8:
	cmp r8, #5
	cmpne r8, #0xb
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_ov132_02147c64
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212E7DC: .word unk_0209A2C0
_0212E7E0: .word unk_020A0640
_0212E7E4: .word gLogicThink
_0212E7E8: .word ov126_0213AAD8
_0212E7EC: .word unk_0209A114
	arm_func_end FUN_ov126_0212dd28

	arm_func_start FUN_ov126_0212e7f0
FUN_ov126_0212e7f0: ; 0x0212E7F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	ldrne r0, _0212E920 ; =0x0209A2C0
	movne r5, #9
	ldrne r0, [r0, #0x30]
	cmpne r0, #0x10000
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #9
	bne _0212E864
	mov r4, #0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov132_0214dfdc
	ldr r1, _0212E924 ; =0x0209BA20
	mov r5, r0
	ldrb r0, [r1, #0x883]
	cmp r0, #0
	beq _0212E864
	cmp r5, #2
	moveq r5, r4
_0212E864:
	mov r0, r7
	mov r1, r5
	bl FUN_ov132_02142db0
	cmp r0, #0
	beq _0212E8DC
	ldr r8, _0212E920 ; =0x0209A2C0
	ldr r3, [r8, #0x10]
	ldr r0, [r8, #4]
	ldr r2, [r8, #0xc]
	ldr r1, [r8]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldr r1, [r6, #0x84]
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
	mov r4, #0
	ldr r1, _0212E928 ; =0x02099F14
	str r4, [sp]
	mov r3, r0
	ldr r0, [r1]
	mov r1, r6
	mov r2, #8
	bl FUN_ov1_020e3c14
	ldr r1, [r6, #0x84]
	ldr r0, [r1]
	str r0, [r8]
	ldr r0, [r1, #4]
	stmib r8, {r0, r4}
	str r4, [r8, #0x30]
_0212E8DC:
	cmp r5, #0
	beq _0212E8F4
	cmp r5, #5
	beq _0212E908
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212E8F4:
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_02151094
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212E908:
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl FUN_ov132_02150b54
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212E920: .word unk_0209A2C0
_0212E924: .word gLogicThink
_0212E928: .word unk_02099F14
	arm_func_end FUN_ov126_0212e7f0

	arm_func_start FUN_ov126_0212e92c
FUN_ov126_0212e92c: ; 0x0212E92C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	bl FUN_01ff9578
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0212EAAC ; =0x0209A2C0
	mvn r4, #0
	ldr r0, [r0, #0x48]
	mov r5, #0x1f4000
	bl FUN_ov16_020efa80
	mov r1, r0
	mov r0, r9
	bl FUN_ov132_0213c448
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r9, #0x328]
	cmp r0, #0
	beq _0212E994
	mov r0, r9
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0212E994:
	ldr r10, _0212EAAC ; =0x0209A2C0
	ldr r0, [r10, #0x48]
	bl FUN_ov16_020f07f4
	bl FUN_02040138
	mov r7, r0
	mov r8, #0xa
	b _0212EA54
_0212E9B0:
	mov r0, r9
	mov r1, r7
	mov r2, r8
	bl FUN_ov126_0213938c
	movs r6, r0
	beq _0212EA50
	bl FUN_0206d660
	cmp r0, #0
	beq _0212EA50
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	beq _0212EA50
	mov r0, r6
	bl FUN_0206da14
	cmp r0, #0
	beq _0212EA50
	ldr r1, [r6, #0x84]
	ldr r0, [r10]
	ldr r1, [r1]
	subs r2, r1, r0
	ldr r1, [r6, #0x84]
	ldr r0, [r10, #4]
	ldr r1, [r1, #4]
	rsbmi r2, r2, #0
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r2, r5
	cmple r0, r5
	bgt _0212EA50
	ldr r2, [r6, #0x84]
	mov r0, r9
	ldr r1, [r2, #4]
	ldr r3, [r2]
	str r1, [sp]
	ldmia r10, {r1, r2}
	bl FUN_01ffba98
	cmp r5, r0
	ldrgtsh r4, [r6, #0x94]
	movgt r5, r0
_0212EA50:
	sub r8, r8, #1
_0212EA54:
	cmp r8, #0
	bge _0212E9B0
	cmp r4, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0xe000
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	bl FUN_ov126_0213252c
	cmp r0, #0
	blt _0212EA90
	mov r0, r9
	bl FUN_ov126_0213252c
	mov r4, r0
_0212EA90:
	ldr r1, _0212EAAC ; =0x0209A2C0
	mov r0, r9
	ldr r1, [r1, #0x48]
	mov r2, r4
	bl FUN_ov126_02130be4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0212EAAC: .word unk_0209A2C0
	arm_func_end FUN_ov126_0212e92c

	arm_func_start FUN_ov126_0212eab0
FUN_ov126_0212eab0: ; 0x0212EAB0
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x194]
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212eab0

	arm_func_start FUN_ov126_0212eac8
FUN_ov126_0212eac8: ; 0x0212EAC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r0, [r0, #0x194]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov132_02159124
	ldrh r2, [r7, #0x52]
	mov r4, r0
	ldr r1, _0212EC48 ; =FX_SinCosTable_
	mov r0, r2, asr #4
	mov r0, r0, lsl #1
	add r0, r0, #1
	mov r0, r0, lsl #1
	ldrsh r9, [r1, r0]
	mov r0, r9
	bl _fflt
	ldr r8, _0212EC4C ; =0x45800000
	mov r1, r8
	bl _fdiv
	mov r1, #0
	bl _fgr
	mov r0, r9
	bls _0212EB4C
	bl _fflt
	mov r1, r8
	bl _fdiv
	mov r1, r0
	mov r0, r8
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212EB6C
_0212EB4C:
	bl _fflt
	mov r1, r8
	bl _fdiv
	mov r1, r0
	mov r0, r8
	bl _fmul
	mov r1, #0x3f000000
	bl _fsub
_0212EB6C:
	bl _ffix
	ldrh r2, [r7, #0x52]
	str r0, [r6]
	ldr r1, _0212EC48 ; =FX_SinCosTable_
	mov r0, r2, asr #4
	mov r0, r0, lsl #2
	ldrsh r9, [r1, r0]
	mov r0, r9
	bl _fflt
	ldr r8, _0212EC4C ; =0x45800000
	mov r1, r8
	bl _fdiv
	mov r1, #0
	bl _fgr
	mov r0, r9
	bls _0212EBD4
	bl _fflt
	mov r1, r8
	bl _fdiv
	mov r1, r0
	mov r0, r8
	bl _fmul
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212EBF4
_0212EBD4:
	bl _fflt
	mov r1, r8
	bl _fdiv
	mov r1, r0
	mov r0, r8
	bl _fmul
	mov r1, #0x3f000000
	bl _fsub
_0212EBF4:
	bl _ffix
	str r0, [r5]
	ldr r0, [r6]
	ldr r2, [r7]
	smull r1, r0, r4, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r6]
	ldr r0, [r5]
	ldr r2, [r7, #4]
	smull r1, r0, r4, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212EC48: .word FX_SinCosTable_
_0212EC4C: .word 0x45800000
	arm_func_end FUN_ov126_0212eac8

	arm_func_start FUN_ov126_0212ec50
FUN_ov126_0212ec50: ; 0x0212EC50
	stmfd sp!, {r4, lr}
	ldr r0, [r0, #0x194]
	mov r4, r1
	ldr r12, [r0]
	ldr r12, [r12, #0x1c]
	blx r12
	ldrb r0, [r4, #0x5f]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneh r1, [r4, #0x52]
	ldrnesh r0, [r4, #0x54]
	addne r0, r1, r0
	strneh r0, [r4, #0x52]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0212ec50

	arm_func_start FUN_ov126_0212ec90
FUN_ov126_0212ec90: ; 0x0212EC90
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x194]
	ldr r2, [r0]
	ldr r2, [r2, #0x20]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212ec90

	arm_func_start FUN_ov126_0212eca8
FUN_ov126_0212eca8: ; 0x0212ECA8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	ldrb r1, [r7, #0x5b]
	mov r8, r0
	mov r4, #1
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r8
	mov r6, r2
	mov r5, r3
	moveq r4, #0
	bl FUN_ov132_021447c8
	ldrb r1, [sp, #0x20]
	mov r2, r6
	mov r3, r5
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	stmia sp, {r0, r1}
	ldr r0, [r8, #0x194]
	mov r1, r7
	ldr r12, [r0]
	ldr r12, [r12, #0x18]
	blx r12
	ldrb r0, [sp, #0x24]
	cmp r0, #0
	cmpeq r4, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_ov132_0214fd58
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov126_0212eca8

	arm_func_start FUN_ov126_0212ed54
FUN_ov126_0212ed54: ; 0x0212ED54
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	str r12, [sp]
	ldr r0, [r0, #0x194]
	ldr r12, [r0]
	ldr r12, [r12, #0x2c]
	blx r12
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212ed54

	arm_func_start FUN_ov126_0212ed74
FUN_ov126_0212ed74: ; 0x0212ED74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r11, r2
	ldr r2, [r11]
	mov r8, r3
	str r2, [sp, #0x20]
	ldr r2, [r8]
	mov r10, r0
	str r2, [sp, #0x1c]
	ldrb r0, [r10, #0x328]
	mov r9, r1
	ldrb r4, [r9, #0x58]
	tst r0, #2
	movne r1, #1
	ldrb r0, [sp, #0x4c]
	moveq r1, #0
	add r3, sp, #0x1c
	orrs r0, r0, r1
	movne r2, #1
	add r1, sp, #0x18
	str r1, [sp]
	ldr r0, [sp, #0x48]
	moveq r2, #0
	str r0, [sp, #4]
	and r0, r2, #0xff
	str r0, [sp, #8]
	ldr r0, [r10, #0x194]
	add r2, sp, #0x20
	ldr r5, [r0]
	mov r1, r9
	ldr r5, [r5, #0xc]
	blx r5
	movs r5, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x20]
	mov r0, r10
	str r1, [r9]
	ldr r1, [sp, #0x1c]
	str r1, [r9, #4]
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _0212EEA4
	ldr r0, _0212EF60 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	mov r6, r0
	ldrsb r0, [r4, #0xd]
	bl FUN_ov16_020efa80
	cmp r4, #0
	mov r7, r0
	cmpne r6, #0
	cmpne r7, #0
	beq _0212EE98
	ldrb r0, [r9, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212EE98
	mov r0, r6
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r7
	bl FUN_0206d5f0
	cmp r4, r0
	movne r1, #3
	movne r0, #7
	strne r1, [r10, #0x1c0]
	strne r0, [r10, #0x1bc]
_0212EE98:
	mov r0, #0
	strb r0, [r9, #0x5c]
	mov r4, #2
_0212EEA4:
	tst r5, #1
	beq _0212EF1C
	ldrb r0, [sp, #0x50]
	ldrh r1, [sp, #0x18]
	mov r3, #1
	cmp r0, #0
	str r1, [sp]
	ldr r0, _0212EF64 ; =0x0000038E
	mov r2, #0
	stmib sp, {r0, r4}
	moveq r3, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	ldr r3, [r9, #0x38]
	ldr r1, _0212EF68 ; =0x00000CCD
	mov r0, r2
	umull r6, r4, r3, r1
	mla r4, r3, r0, r4
	mov r0, r3, asr #0x1f
	mla r4, r0, r1, r4
	adds r3, r6, #0x800
	mov r0, r2
	adc r4, r4, r0
	mov r3, r3, lsr #0xc
	mov r0, r10
	mov r1, r9
	orr r3, r3, r4, lsl #20
	bl FUN_ov126_0212cda0
_0212EF1C:
	tst r5, #2
	beq _0212EF3C
	mov r0, r9
	mov r1, #1
	bl FUN_ov126_0212fc6c
	mov r0, #0x1000
	rsb r0, r0, #0
	str r0, [r9, #0x30]
_0212EF3C:
	ldr r1, [sp, #0x20]
	mov r0, r10
	str r1, [r11]
	ldr r2, [sp, #0x1c]
	mov r1, #1
	str r2, [r8]
	bl FUN_ov132_02147c64
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212EF60: .word unk_02099EF0
_0212EF64: .word 0x0000038E
_0212EF68: .word 0x00000CCD
	arm_func_end FUN_ov126_0212ed74

	arm_func_start FUN_ov126_0212ef6c
FUN_ov126_0212ef6c: ; 0x0212EF6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r8, r2
	ldr r2, [r8]
	mov r7, r3
	str r2, [sp, #0x20]
	ldr r2, [r7]
	mov r10, r0
	str r2, [sp, #0x1c]
	ldrb r0, [r10, #0x328]
	mov r9, r1
	ldrb r4, [r9, #0x58]
	tst r0, #2
	movne r1, #1
	ldrb r0, [sp, #0x48]
	moveq r1, #0
	orrs r0, r0, r1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0212EFD4
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_02147c64
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212EFD4:
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r10, #0x194]
	add r2, sp, #0x20
	ldr r5, [r0]
	add r3, sp, #0x1c
	ldr r5, [r5, #8]
	mov r1, r9
	blx r5
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x20]
	mov r0, r10
	str r1, [r9]
	ldr r1, [sp, #0x1c]
	mov r11, #0
	str r1, [r9, #4]
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _0212F0B8
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _0212F0B0
	ldr r0, _0212F134 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r4, #0xd]
	bl FUN_ov16_020efa80
	cmp r4, #0
	mov r6, r0
	cmpne r5, #0
	cmpne r6, #0
	beq _0212F0B0
	ldrb r0, [r9, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, r11
	cmp r0, #0
	beq _0212F0B0
	mov r0, r5
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r6
	bl FUN_0206d5f0
	cmp r4, r0
	movne r1, #3
	movne r0, #7
	strne r1, [r10, #0x1c0]
	strne r0, [r10, #0x1bc]
_0212F0B0:
	strb r11, [r9, #0x5c]
	mov r4, #2
_0212F0B8:
	ldrh r1, [sp, #0x18]
	ldr r0, _0212F138 ; =0x0000038E
	mov r2, #0
	str r1, [sp]
	stmib sp, {r0, r4}
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	ldr r1, [r9, #0x38]
	ldr r0, _0212F13C ; =0x00000CCD
	umull r4, r3, r1, r0
	mla r3, r1, r11, r3
	mov r1, r1, asr #0x1f
	mla r3, r1, r0, r3
	adds r5, r4, #0x800
	adc r4, r3, r11
	mov r3, r5, lsr #0xc
	mov r0, r10
	mov r1, r9
	orr r3, r3, r4, lsl #20
	bl FUN_ov126_0212cda0
	ldr r1, [sp, #0x20]
	mov r0, r10
	str r1, [r8]
	ldr r2, [sp, #0x1c]
	mov r1, #1
	str r2, [r7]
	bl FUN_ov132_02147c64
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212F134: .word unk_02099EF0
_0212F138: .word 0x0000038E
_0212F13C: .word 0x00000CCD
	arm_func_end FUN_ov126_0212ef6c

	arm_func_start FUN_ov126_0212f140
FUN_ov126_0212f140: ; 0x0212F140
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r1
	mov r8, r2
	mov r11, r3
	mov r10, r0
	ldr r4, [r8]
	ldr r5, [r11]
	ldr r6, [r9, #4]
	ldr r0, [r9, #0x48]
	stmia r9, {r4, r5}
	ldrh r1, [r9, #0x52]
	str r1, [sp, #0x1c]
	ldrb r7, [r9, #0x58]
	bl FUN_ov16_020efa80
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x48]
	mov r0, r10
	mov r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [sp, #0x48]
	cmp r1, #1
	bne _0212F1E0
	cmp r5, r6
	addgt sp, sp, #0x24
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	subs r1, r0, r5
	rsbmi r1, r1, #0
	add r5, r0, r1
	cmp r5, r0
	addle r5, r0, #1
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl FUN_02040430
	str r0, [sp, #0x18]
	mov r6, #0x4000
	mov r0, r6
	ldr r1, [sp, #0x18]
	mov r2, r6
	b _0212F220
_0212F1E0:
	cmp r5, r6
	addlt sp, sp, #0x24
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	subs r1, r5, r0
	rsbmi r1, r1, #0
	sub r5, r0, r1
	cmp r5, r0
	subge r5, r0, #1
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl FUN_02040430
	str r0, [sp, #0x18]
	mov r6, #0xc000
	ldr r1, [sp, #0x18]
	mov r0, r6
	mov r2, #0x4000
_0212F220:
	bl FUN_020405a4
	cmp r0, #0
	streq r6, [sp, #0x18]
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _0212F2D4
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _0212F2C8
	ldr r0, _0212F360 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	mov r6, r0
	ldrsb r0, [r6, #0xc]
	bl FUN_ov16_020efa80
	mov r7, r0
	ldrsb r0, [r6, #0xd]
	bl FUN_ov16_020efa80
	cmp r6, #0
	mov r6, r0
	cmpne r7, #0
	cmpne r6, #0
	beq _0212F2C8
	ldrb r0, [r9, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212F2C8
	mov r0, r7
	bl FUN_0206d5f0
	mov r7, r0
	mov r0, r6
	bl FUN_0206d5f0
	cmp r7, r0
	movne r1, #3
	movne r0, #7
	strne r1, [r10, #0x1c0]
	strne r0, [r10, #0x1bc]
_0212F2C8:
	mov r0, #0
	strb r0, [r9, #0x5c]
	mov r7, #2
_0212F2D4:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0212F2F0
	ldr r1, [sp, #0x20]
	mov r0, r10
	mov r7, #9
	bl FUN_ov126_021399d0
_0212F2F0:
	stmia r9, {r4, r5}
	ldr r1, _0212F364 ; =0x0000038E
	ldr r0, [sp, #0x18]
	mov r2, #0
	stmia sp, {r0, r1, r7}
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	ldr r3, [r9, #0x38]
	ldr r0, _0212F368 ; =0x00000CCD
	mov r1, r3, asr #0x1f
	umull r7, r6, r3, r0
	mla r6, r1, r0, r6
	adds r3, r7, #0x800
	adc r6, r6, #0
	mov r3, r3, lsr #0xc
	mov r0, r10
	mov r1, r9
	orr r3, r3, r6, lsl #20
	bl FUN_ov126_0212cda0
	str r4, [r8]
	mov r0, r10
	mov r1, #1
	str r5, [r11]
	bl FUN_ov132_02147c64
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212F360: .word unk_02099EF0
_0212F364: .word 0x0000038E
_0212F368: .word 0x00000CCD
	arm_func_end FUN_ov126_0212f140

	arm_func_start FUN_ov126_0212f36c
FUN_ov126_0212f36c: ; 0x0212F36C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_0206d6c4
	cmp r0, #0
	mov r0, r4
	beq _0212F390
	bl FUN_ov126_0212f3e8
	ldmfd sp!, {r4, pc}
_0212F390:
	bl FUN_ov126_0212f398
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0212f36c

	arm_func_start FUN_ov126_0212f398
FUN_ov126_0212f398: ; 0x0212F398
	stmfd sp!, {r3, lr}
	ldr r0, _0212F3E4 ; =0x0209A720
	ldrh r0, [r0, #0xc8]
	cmp r0, #0
	moveq r0, #0xc0000
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0212F3D0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212F3DC
_0212F3D0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212F3DC:
	bl _ffix
	ldmfd sp!, {r3, pc}
_0212F3E4: .word unk_0209A720
	arm_func_end FUN_ov126_0212f398

	arm_func_start FUN_ov126_0212f3e8
FUN_ov126_0212f3e8: ; 0x0212F3E8
	stmfd sp!, {r3, lr}
	bl FUN_ov126_0212f398
	ldr r1, _0212F414 ; =0x00000CCD
	mov r2, r0, asr #0x1f
	umull r12, r3, r0, r1
	adds r0, r12, #0x800
	mla r3, r2, r1, r3
	adc r1, r3, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmfd sp!, {r3, pc}
_0212F414: .word 0x00000CCD
	arm_func_end FUN_ov126_0212f3e8

	arm_func_start FUN_ov126_0212f418
FUN_ov126_0212f418: ; 0x0212F418
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r0
	mov r0, r1
	mov r1, r5
	bl FUN_02040764
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0212F498
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0212F498
	mov r0, r4
	bl FUN_02040170
	ldr r2, [r5]
	ldr r1, [r0]
	cmp r2, r1
	blt _0212F4F0
	ldr r0, [r0, #8]
	cmp r2, r0
	bgt _0212F4F0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0212F498:
	mov r4, #1
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov132_02140b50
	cmp r0, #0
	beq _0212F4F0
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _0212F4F0
	mov r0, r4
	bl FUN_02040170
	ldr r2, [r5]
	ldr r1, [r0]
	cmp r2, r1
	blt _0212F4F0
	ldr r0, [r0, #8]
	cmp r2, r0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
_0212F4F0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_0212f418

	arm_func_start FUN_ov126_0212f4f8
FUN_ov126_0212f4f8: ; 0x0212F4F8
	stmfd sp!, {r3, lr}
	ldr r0, [r1, #0x48]
	cmp r0, #0
	bge _0212F528
	ldrb r0, [r1, #0x5a]
	cmp r0, #0
	bne _0212F528
	add r0, r1, #0x18
	bl FUN_02040a80
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_0212F528:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212f4f8

	arm_func_start FUN_ov126_0212f530
FUN_ov126_0212f530: ; 0x0212F530
	stmfd sp!, {r3, lr}
	ldr r1, _0212F54C ; =0x0209A2C0
	mov r3, #0x1f4000
	add r2, sp, #0
	str r3, [sp]
	bl FUN_ov126_0212f550
	ldmfd sp!, {r3, pc}
_0212F54C: .word unk_0209A2C0
	arm_func_end FUN_ov126_0212f530

	arm_func_start FUN_ov126_0212f550
FUN_ov126_0212f550: ; 0x0212F550
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	movs r9, r1
	mov r10, r0
	str r2, [sp]
	beq _0212F578
	movs r0, r2
	ldrne r0, [r10, #0x198]
	cmpne r0, #0
	bne _0212F584
_0212F578:
	add sp, sp, #0x10
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212F584:
	ldrb r1, [r9, #0x5f]
	mvn r0, #0
	mov r8, #1
	tst r1, #2
	str r0, [sp, #8]
	movne r0, r8
	moveq r0, #0
	ldr r11, [r9]
	ldr r7, [r9, #4]
	cmp r0, #0
	bne _0212F5C4
	tst r1, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r8, #0
_0212F5C4:
	ldr r1, [r10, #0x5b8]
	mov r4, #0xa
	mul r0, r1, r4
	str r0, [sp, #4]
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #5
	beq _0212F600
	mov r0, r11
	mov r1, r7
	bl FUN_02040644
	cmp r0, #0
	addeq sp, sp, #0x10
	subeq r0, r4, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212F600:
	ldr r0, _0212F78C ; =0x0209BA20
	ldrb r0, [r0, #0x87f]
	cmp r0, #0
	bne _0212F620
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _0212F62C
_0212F620:
	mov r0, r10
	mov r1, #6
	b _0212F634
_0212F62C:
	mov r0, r10
	mov r1, #5
_0212F634:
	bl FUN_ov132_02144a84
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r5, #0
	ldr r6, [r0]
_0212F648:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0212F768
	bl FUN_0206d660
	cmp r0, #0
	beq _0212F768
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	beq _0212F768
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0212F768
	ldr r0, _0212F78C ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _0212F6AC
	ldr r1, [sp, #0xc]
	ldr r2, [r4, #0x84]
	mov r0, r10
	bl FUN_ov126_0212f418
	cmp r0, #0
	beq _0212F768
_0212F6AC:
	ldr r0, [r9, #0x4c]
	cmp r0, r5
	bne _0212F728
	ldrb r0, [r9, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0212F6E4
	mov r0, r10
	ldrb r1, [r9, #0x58]
	bl FUN_ov126_0212d500
	cmp r0, #0
	beq _0212F710
_0212F6E4:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_0212f4f8
	cmp r0, #0
	beq _0212F728
	ldrb r0, [r9, #0x5f]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212F728
_0212F710:
	cmp r8, #0
	bne _0212F728
	ldr r1, [r9, #0x44]
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _0212F768
_0212F728:
	ldr r2, [r4, #0x84]
	ldr r0, [r2]
	subs r1, r0, r11
	ldr r0, [r2, #4]
	rsbmi r1, r1, #0
	subs r2, r0, r7
	rsbmi r2, r2, #0
	cmp r1, r6
	cmple r2, r6
	bgt _0212F768
	mov r0, r10
	bl FUN_01ffba80
	cmp r6, r0
	movgt r6, r0
	ldrgtsh r0, [r4, #0x94]
	strgt r0, [sp, #8]
_0212F768:
	add r5, r5, #1
	cmp r5, #0x20
	blt _0212F648
	ldr r0, [sp]
	cmp r0, #0
	strne r6, [r0]
	ldr r0, [sp, #8]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212F78C: .word gLogicThink
	arm_func_end FUN_ov126_0212f550

	arm_func_start FUN_ov126_0212f790
FUN_ov126_0212f790: ; 0x0212F790
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r1, #0
	cmpne r2, #0
	cmpne r4, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	mov r1, r2
	bl FUN_ov16_020f0728
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_ov126_0212fc80
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0212f790

	arm_func_start FUN_ov126_0212f7cc
FUN_ov126_0212f7cc: ; 0x0212F7CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0
	ldr r5, _0212FAB0 ; =0x0209A2C0
	bl FUN_ov132_02144780
	cmp r0, #5
	beq _0212F844
	mov r0, #0x80000000
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldr r1, [r5]
	mov r0, r5
	str r1, [r5, #0xc]
	ldr r2, [r5, #4]
	mov r1, #1
	str r2, [r5, #0x10]
	ldr r2, [r5, #8]
	str r2, [r5, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212fc1c
	str r4, [r5, #0x34]
	str r4, [r5, #0x38]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x30]
	str r4, [r5, #0x40]
	strb r4, [r5, #0x5c]
	strh r4, [r5, #0x54]
_0212F844:
	mov r0, r8
	bl FUN_ov132_02144780
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138ee8
	cmp r0, #0
	beq _0212FA30
	mov r0, r5
	mov r1, #0
	bl FUN_ov126_0212fbe0
	ldrh r2, [r5, #0x52]
	ldr r1, [r7, #0x84]
	mov r0, #0x14000
	mov r2, r2, asr #8
	strb r2, [r5, #0x5d]
	ldrh r1, [r1, #0x18]
	strh r1, [r5, #0x52]
	str r0, [r5, #0x38]
	ldrb r0, [r8, #0x345]
	add r0, r0, #1
	and r0, r0, #0xff
	and r0, r0, #0xf
	strb r0, [r8, #0x345]
	cmp r0, #6
	ldreqb r0, [r8, #0x346]
	cmpeq r0, #0
	bne _0212F8C0
	mov r0, #5
	bl FUN_ov16_020f05c8
_0212F8C0:
	ldrb r0, [r8, #0x345]
	mov r1, #8
	cmp r0, #7
	bhs _0212F90C
	mov r0, r0, asr #1
	mov r0, r1, asr r0
	rsb r0, r0, #0xc
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0212F8FC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212F908
_0212F8FC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212F908:
	b _0212F948
_0212F90C:
	rsb r0, r0, #0xf
	mov r0, r0, asr #1
	mov r0, r1, asr r0
	rsb r0, r0, #0xc
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0212F93C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0212F948
_0212F93C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0212F948:
	bl _ffix
	mov r6, r0
	ldr r0, [r7, #0x84]
	ldrb r0, [r0, #0x1a]
	bl FUN_ov16_020efd54
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	ldr r2, _0212FAB4 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r0, [r2, r0]
	ldr r7, [r7, #0x84]
	smull r1, r2, r6, r1
	adds r3, r1, #0x800
	smull r1, r0, r6, r0
	adc r6, r2, r4
	adds r1, r1, #0x800
	mov r12, r3, lsr #0xc
	mov r2, r1, lsr #0xc
	adc r0, r0, r4
	orr r2, r2, r0, lsl #20
	ldr r3, [r7]
	ldr r1, [r7, #4]
	orr r12, r12, r6, lsl #20
	str r4, [r5, #8]
	add r7, r1, r2
	mov r0, r8
	add r6, r3, r12
	mov r1, #8
	str r4, [r5, #0x30]
	bl FUN_ov132_02144a84
	mov r1, r6
	mov r2, r7
	bl FUN_0204071c
	cmp r0, #0
	bne _0212FA14
	ldr r2, [r5, #8]
	mov r0, r6
	mov r1, r7
	bl FUN_02040840
	cmp r0, #0
	bne _0212FA14
	ldrb r1, [r8, #0x345]
	mov r0, #1
	add r1, r1, #0xf
	and r1, r1, #0xf
	strb r1, [r8, #0x345]
	str r4, [r5, #0x38]
	b _0212FA1C
_0212FA14:
	stmia r5, {r6, r7}
	mov r0, #0
_0212FA1C:
	strb r0, [r8, #0x346]
	ldr r1, _0212FAB0 ; =0x0209A2C0
	mov r0, r8
	bl FUN_ov126_0212ec90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212FA30:
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x84]
	ldr r2, [r0]
	str r2, [r5]
	ldr r1, [r0, #4]
	mov r0, #0x80000000
	stmib r5, {r1, r4}
	str r4, [r5, #0x30]
	strb r4, [r5, #0x58]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r2, [r5, #0xc]
	str r1, [r5, #0x10]
	mov r0, r5
	mov r1, #1
	str r4, [r5, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0212fc1c
	str r4, [r5, #0x34]
	str r4, [r5, #0x38]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x30]
	str r4, [r5, #0x40]
	strb r4, [r5, #0x5c]
	strh r4, [r5, #0x54]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212FAB0: .word unk_0209A2C0
_0212FAB4: .word FX_SinCosTable_
	arm_func_end FUN_ov126_0212f7cc

	arm_func_start FUN_ov126_0212fab8
FUN_ov126_0212fab8: ; 0x0212FAB8
	stmfd sp!, {r3, lr}
	ldr r2, [r1, #0x84]
	ldrb r2, [r2, #0x1d]
	cmp r2, #8
	cmpne r2, #4
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov126_0212f7cc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212fab8

	arm_func_start FUN_ov126_0212fad8
FUN_ov126_0212fad8: ; 0x0212FAD8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r2, _0212FB88 ; =0x0209A2C0
	movs r5, r1
	ldr r3, [r2, #0x4c]
	mvn r1, #0
	str r3, [r2, #0x48]
	mov r4, r0
	str r1, [r2, #0x4c]
	mov r6, #0
	beq _0212FB40
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02147e90
	cmp r0, #2
	moveq r6, #5
	beq _0212FB40
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02147e90
	cmp r0, #1
	moveq r6, #0x13
_0212FB40:
	ldr r0, _0212FB88 ; =0x0209A2C0
	mov r1, #1
	ldrb r2, [r0, #0x5e]
	mov r5, #0
	mov r0, r4
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x70]
	mov r3, r6
	bl FUN_ov126_0212c3bc
	mov r0, r4
	bl FUN_ov132_02147e9c
	strb r5, [r4, #0x36d]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0212FB88: .word unk_0209A2C0
	arm_func_end FUN_ov126_0212fad8

	arm_func_start FUN_ov126_0212fb8c
FUN_ov126_0212fb8c: ; 0x0212FB8C
	cmp r2, #0
	ldrb r2, [r0, #0x5b]
	orrne r1, r2, r1
	mvneq r1, r1
	andeq r1, r1, #0xff
	andeq r1, r2, r1
	strb r1, [r0, #0x5b]
	bx lr
	arm_func_end FUN_ov126_0212fb8c

	arm_func_start FUN_ov126_0212fbac
FUN_ov126_0212fbac: ; 0x0212FBAC
	cmp r2, #0
	ldrb r2, [r0, #0x5f]
	orrne r1, r2, r1
	mvneq r1, r1
	andeq r1, r1, #0xff
	andeq r1, r2, r1
	strb r1, [r0, #0x5f]
	bx lr
	arm_func_end FUN_ov126_0212fbac

	arm_func_start FUN_ov126_0212fbcc
FUN_ov126_0212fbcc: ; 0x0212FBCC
	ldr r12, _0212FBDC ; =FUN_ov126_0212fb8c
	mov r2, r1
	mov r1, #0x10
	bx r12
_0212FBDC: .word FUN_ov126_0212fb8c
	arm_func_end FUN_ov126_0212fbcc

	arm_func_start FUN_ov126_0212fbe0
FUN_ov126_0212fbe0: ; 0x0212FBE0
	ldr r12, _0212FBF0 ; =FUN_ov126_0212fb8c
	mov r2, r1
	mov r1, #1
	bx r12
_0212FBF0: .word FUN_ov126_0212fb8c
	arm_func_end FUN_ov126_0212fbe0

	arm_func_start FUN_ov126_0212fbf4
FUN_ov126_0212fbf4: ; 0x0212FBF4
	ldr r12, _0212FC04 ; =FUN_ov126_0212fb8c
	mov r2, r1
	mov r1, #2
	bx r12
_0212FC04: .word FUN_ov126_0212fb8c
	arm_func_end FUN_ov126_0212fbf4

	arm_func_start FUN_ov126_0212fc08
FUN_ov126_0212fc08: ; 0x0212FC08
	ldr r12, _0212FC18 ; =FUN_ov126_0212fb8c
	mov r2, r1
	mov r1, #0x40
	bx r12
_0212FC18: .word FUN_ov126_0212fb8c
	arm_func_end FUN_ov126_0212fc08

	arm_func_start FUN_ov126_0212fc1c
FUN_ov126_0212fc1c: ; 0x0212FC1C
	ldr r12, _0212FC2C ; =FUN_ov126_0212fb8c
	mov r2, r1
	mov r1, #4
	bx r12
_0212FC2C: .word FUN_ov126_0212fb8c
	arm_func_end FUN_ov126_0212fc1c

	arm_func_start FUN_ov126_0212fc30
FUN_ov126_0212fc30: ; 0x0212FC30
	ldr r12, _0212FC40 ; =FUN_ov126_0212fb8c
	mov r2, r1
	mov r1, #0x80
	bx r12
_0212FC40: .word FUN_ov126_0212fb8c
	arm_func_end FUN_ov126_0212fc30

	arm_func_start FUN_ov126_0212fc44
FUN_ov126_0212fc44: ; 0x0212FC44
	ldr r12, _0212FC54 ; =FUN_ov126_0212fbac
	mov r2, r1
	mov r1, #1
	bx r12
_0212FC54: .word FUN_ov126_0212fbac
	arm_func_end FUN_ov126_0212fc44

	arm_func_start FUN_ov126_0212fc58
FUN_ov126_0212fc58: ; 0x0212FC58
	ldr r12, _0212FC68 ; =FUN_ov126_0212fbac
	mov r2, r1
	mov r1, #2
	bx r12
_0212FC68: .word FUN_ov126_0212fbac
	arm_func_end FUN_ov126_0212fc58

	arm_func_start FUN_ov126_0212fc6c
FUN_ov126_0212fc6c: ; 0x0212FC6C
	ldr r12, _0212FC7C ; =FUN_ov126_0212fbac
	mov r2, r1
	mov r1, #4
	bx r12
_0212FC7C: .word FUN_ov126_0212fbac
	arm_func_end FUN_ov126_0212fc6c

	arm_func_start FUN_ov126_0212fc80
FUN_ov126_0212fc80: ; 0x0212FC80
	ldr r12, _0212FC90 ; =FUN_ov126_0212fbac
	mov r2, r1
	mov r1, #8
	bx r12
_0212FC90: .word FUN_ov126_0212fbac
	arm_func_end FUN_ov126_0212fc80

	arm_func_start FUN_ov126_0212fc94
FUN_ov126_0212fc94: ; 0x0212FC94
	ldr r12, _0212FCA4 ; =FUN_ov126_0212fbac
	mov r2, r1
	mov r1, #0x40
	bx r12
_0212FCA4: .word FUN_ov126_0212fbac
	arm_func_end FUN_ov126_0212fc94

	arm_func_start FUN_ov126_0212fca8
FUN_ov126_0212fca8: ; 0x0212FCA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_ov16_020efa80
	mov r4, r0
	ldr r0, [r6, #0x4c]
	bl FUN_ov16_020efa80
	cmp r4, #0
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x4c]
	mov r1, r5
	bl FUN_ov16_020f06d8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_0212fca8

	arm_func_start FUN_ov126_0212fce8
FUN_ov126_0212fce8: ; 0x0212FCE8
	stmfd sp!, {r3, lr}
	strb r1, [r0, #0x5a]
	cmp r1, #0
	bne _0212FD04
	mov r1, #1
	bl FUN_ov126_0212fc08
	ldmfd sp!, {r3, pc}
_0212FD04:
	mov r1, #0
	bl FUN_ov126_0212fc08
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0212fce8

	arm_func_start FUN_ov126_0212fd10
FUN_ov126_0212fd10: ; 0x0212FD10
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0x18]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x1c]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x38]
	ldrsh r2, [r1, #0x1c]
	mov r2, r2, lsl #0x18
	mov r2, r2, asr #0x18
	str r2, [r0, #0x48]
	ldrsh r2, [r1, #0x1e]
	mov r2, r2, lsl #0x18
	mov r2, r2, asr #0x18
	str r2, [r0, #0x4c]
	ldrh r2, [r1, #0x20]
	strh r2, [r0, #0x52]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #0x56]
	ldrb r2, [r1, #0x24]
	strb r2, [r0, #0x5c]
	ldrb r2, [r1, #0x25]
	strb r2, [r0, #0x58]
	ldrb r2, [r1, #0x26]
	strb r2, [r0, #0x59]
	ldrb r2, [r1, #0x27]
	strb r2, [r0, #0x5d]
	ldrb r2, [r1, #0x28]
	strb r2, [r0, #0x5a]
	ldrb r1, [r1, #0x29]
	strb r1, [r0, #0x5b]
	bx lr
	arm_func_end FUN_ov126_0212fd10

	arm_func_start FUN_ov126_0212fdac
FUN_ov126_0212fdac: ; 0x0212FDAC
	ldr r1, [r0, #0x48]
	cmp r1, #0
	ldrlt r1, [r0, #0x4c]
	mov r0, r1
	bx lr
	arm_func_end FUN_ov126_0212fdac

	arm_func_start FUN_ov126_0212fdc0
FUN_ov126_0212fdc0: ; 0x0212FDC0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r1
	mov r5, r0
	str r2, [sp, #8]
	mov r8, r3
	ldr r9, [sp, #0x54]
	mov r4, #0
	bl FUN_ov126_021375d4
	mov r11, r0
	mov r0, r10
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02145190
	mov r7, #0x20
	mov r5, r0
	add r6, sp, #0xc
	mov r0, r9
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	mov r0, r6
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, [sp, #0x50]
	orr r7, r4, #1
	cmp r0, #0
	orrne r7, r4, #2
	ldr r0, [sp, #8]
	ldr r4, _021300D4 ; =0x0209BA20
	cmp r0, #0
	bne _0212FF08
	cmp r8, #0
	mov r8, #0
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bne _0212FEB4
	mov r3, r7
	bl FUN_0204acd4
	str r0, [r6]
	mov r0, r4
	mov r1, r10
	mov r2, #1
	mov r3, r7
	bl FUN_0204acd4
	str r0, [r6, #4]
	add r6, r6, #8
_0212FE88:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	mov r3, r7
	str r5, [sp]
	bl FUN_0204aeb0
	add r8, r8, #1
	cmp r8, #6
	str r0, [r6], #4
	blt _0212FE88
	b _02130040
_0212FEB4:
	mov r3, r7
	bl FUN_0204acfc
	str r0, [r6]
	mov r0, r4
	mov r1, r10
	mov r2, #1
	mov r3, r7
	bl FUN_0204acfc
	str r0, [r6, #4]
	add r6, r6, #8
_0212FEDC:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	mov r3, r7
	str r5, [sp]
	bl FUN_0204aed8
	add r8, r8, #1
	cmp r8, #6
	str r0, [r6], #4
	blt _0212FEDC
	b _02130040
_0212FF08:
	cmp r0, #2
	bne _0212FF4C
	orr r7, r7, #0x40
	mov r8, #0
	mov r11, #6
_0212FF1C:
	str r7, [sp]
	mov r0, r4
	mov r1, r10
	mov r2, r11
	mov r3, r8
	str r5, [sp, #4]
	bl FUN_0204ad5c
	add r8, r8, #1
	cmp r8, #6
	str r0, [r6], #4
	blt _0212FF1C
	b _02130040
_0212FF4C:
	cmp r8, #0
	mov r8, #0
	bne _0212FFE4
	ldrb r0, [r11, #0xf]
	mov r2, r8
	tst r0, #0x20
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	orrne r7, r7, #0x20
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	orrne r7, r7, #0x10
	mov r0, r4
	mov r1, r10
	mov r3, r7
	bl FUN_0204ad24
	str r0, [r6]
	mov r0, r4
	mov r1, r10
	mov r2, #1
	mov r3, r7
	bl FUN_0204ad24
	str r0, [r6, #4]
	add r6, r6, #8
_0212FFB8:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	mov r3, r7
	str r5, [sp]
	bl FUN_0204af00
	add r8, r8, #1
	cmp r8, #6
	str r0, [r6], #4
	blt _0212FFB8
	b _02130040
_0212FFE4:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	mov r3, r7
	bl FUN_0204ad4c
	str r0, [r6]
	mov r0, r4
	mov r1, r10
	mov r2, #1
	mov r3, r7
	bl FUN_0204ad4c
	str r0, [r6, #4]
	add r6, r6, #8
_02130018:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	mov r3, r7
	str r5, [sp]
	bl FUN_0204af28
	add r8, r8, #1
	cmp r8, #6
	str r0, [r6], #4
	blt _02130018
_02130040:
	ldr r0, [sp, #8]
	mov r2, #0
	mov r6, r2
	cmp r0, #2
	streq r6, [r9, #4]
	add r5, sp, #0xc
	streq r6, [r9]
	beq _02130074
_02130060:
	ldr r0, [r5], #4
	str r0, [r9, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #2
	blt _02130060
_02130074:
	cmp r6, #8
	addge sp, sp, #0x2c
	mov r0, r6
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130084:
	mov r3, r2
	b _0213009C
_0213008C:
	ldr r1, [r9, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r1
	streq r2, [r5]
_0213009C:
	ldr r4, [r5]
	cmp r4, #0
	beq _021300B0
	cmp r3, r0
	blt _0213008C
_021300B0:
	add r6, r6, #1
	cmp r4, #0
	strne r4, [r9, r0, lsl #2]
	addne r0, r0, #1
	cmp r6, #8
	add r5, r5, #4
	blt _02130084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021300D4: .word gLogicThink
	arm_func_end FUN_ov126_0212fdc0

	arm_func_start FUN_ov126_021300d8
FUN_ov126_021300d8: ; 0x021300D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	str r0, [sp, #0x14]
	mov r9, r3
	mov r10, r1
	ldr r0, _021307AC ; =0x0209BA20
	mov r1, r9
	str r2, [sp, #0x18]
	ldr r8, [sp, #0x40]
	ldr r11, [sp, #0x44]
	ldr r7, [sp, #0x4c]
	bl FUN_0204a2c4
	mov r1, #1
	mov r5, r0
	ldrb r0, [r5]
	mov r3, r1
	mov r2, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	cmp r3, #0
	bne _0213013C
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_0213013C:
	cmp r2, #0
	bne _02130150
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_02130150:
	cmp r1, #0
	beq _021301A0
	mov r6, #0
	b _02130178
_02130160:
	mov r0, r10
	mov r1, r6
	bl FUN_0206cdf8
	cmp r9, r0
	beq _02130180
	add r6, r6, #1
_02130178:
	cmp r6, #6
	blt _02130160
_02130180:
	cmp r6, #6
	bne _021301A0
	cmp r7, #0
	movne r0, #2
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021301A0:
	ldr r0, _021307AC ; =0x0209BA20
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl FUN_0204a0b4
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	bne _021301FC
	mov r0, r10
	mov r1, r9
	bl FUN_0206d19c
	cmp r0, #0
	beq _021301FC
	cmp r7, #0
	movne r0, #9
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021301FC:
	cmp r8, #0
	mov r1, #1
	bne _02130268
	ldrb r0, [r5]
	mov r3, r1
	mov r2, r1
	cmp r0, #1
	cmpne r0, #5
	movne r3, #0
	cmp r3, #0
	bne _02130234
	ldrb r0, [r5]
	cmp r0, #2
	movne r2, #0
_02130234:
	cmp r2, #0
	bne _02130248
	ldrb r0, [r5]
	cmp r0, #6
	movne r1, #0
_02130248:
	cmp r1, #0
	bne _02130390
	cmp r7, #0
	movne r0, #0xa
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130268:
	cmp r8, #2
	ldrb r0, [r5]
	mov r2, r1
	bne _0213032C
	cmp r0, #7
	mov r3, #0
	bne _0213029C
	ldrb r0, [r5, #0x13]
	tst r0, #4
	movne r0, r1
	moveq r0, r3
	cmp r0, #0
	movne r3, #1
_0213029C:
	cmp r3, #0
	bne _021302D4
	ldrb r0, [r5]
	mov r3, #0
	cmp r0, #6
	bne _021302CC
	ldrb r0, [r5, #0x13]
	tst r0, #2
	movne r0, #1
	moveq r0, r3
	cmp r0, #0
	movne r3, #1
_021302CC:
	cmp r3, #0
	moveq r2, #0
_021302D4:
	cmp r2, #0
	bne _0213030C
	ldrb r0, [r5]
	mov r2, #0
	cmp r0, #7
	bne _02130304
	ldrb r0, [r5, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, r2
	cmp r0, #0
	movne r2, #1
_02130304:
	cmp r2, #0
	moveq r1, #0
_0213030C:
	cmp r1, #0
	bne _02130390
	cmp r7, #0
	movne r0, #0xa
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213032C:
	mov r3, r1
	cmp r0, #1
	cmpne r0, #5
	movne r3, #0
	cmp r3, #0
	bne _02130350
	ldrb r0, [r5]
	cmp r0, #2
	movne r2, #0
_02130350:
	cmp r2, #0
	bne _02130364
	ldrb r0, [r5]
	cmp r0, #6
	movne r1, #0
_02130364:
	mov r0, #1
	cmp r1, #0
	movne r0, #0
	cmp r0, #0
	bne _02130390
	cmp r7, #0
	movne r0, #0xa
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130390:
	cmp r8, #2
	beq _02130464
	mov r1, #1
	cmp r11, #0
	ldrb r0, [r5]
	mov r2, r1
	mov r3, r1
	bne _02130404
	cmp r0, #1
	cmpne r0, #5
	movne r3, #0
	cmp r3, #0
	bne _021303D0
	ldrb r0, [r5]
	cmp r0, #3
	movne r2, #0
_021303D0:
	cmp r2, #0
	bne _021303E4
	ldrb r0, [r5]
	cmp r0, #7
	movne r1, #0
_021303E4:
	cmp r1, #0
	bne _02130464
	cmp r7, #0
	movne r0, #0xb
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130404:
	cmp r0, #1
	cmpne r0, #5
	movne r3, #0
	cmp r3, #0
	bne _02130424
	ldrb r0, [r5]
	cmp r0, #3
	movne r2, #0
_02130424:
	cmp r2, #0
	bne _02130438
	ldrb r0, [r5]
	cmp r0, #7
	movne r1, #0
_02130438:
	mov r0, #1
	cmp r1, #0
	movne r0, #0
	cmp r0, #0
	bne _02130464
	cmp r7, #0
	movne r0, #0xb
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130464:
	ldr r0, [r10, #0x88]
	ldrh r3, [r0, #0x32]
	cmp r3, #0
	beq _02130564
	ldr r0, _021307B0 ; =0x000001FF
	cmp r3, r0
	bne _02130510
	ldrb r0, [r5]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _021304B0
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_021304B0:
	cmp r2, #0
	bne _021304C4
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_021304C4:
	cmp r1, #0
	mov r4, #0
	bne _02130564
	str r11, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r1, r10
	mov r3, r8
	str r4, [sp, #8]
	bl FUN_ov126_021307b8
	cmp r0, #0
	beq _02130564
	cmp r7, #0
	movne r0, #0xc
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130510:
	cmp r9, r3
	mov r0, #0
	beq _02130564
	ldrb r1, [sp, #0x48]
	stmia sp, {r8, r11}
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r4, [sp, #0x50]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r1, r10
	str r4, [sp, #0x10]
	bl FUN_ov126_021300d8
	cmp r0, #0
	beq _02130564
	cmp r7, #0
	movne r0, #0xc
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130564:
	mov r6, #0
	mov r4, #1
	b _021305AC
_02130570:
	mov r0, r10
	mov r1, r6
	bl FUN_0206cdf8
	cmp r9, r0
	bne _021305A8
	ldr r0, [r10, #0x88]
	ldrb r0, [r0, #0x88]
	tst r0, r4, lsl r6
	movne r0, r4
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021305A8:
	add r6, r6, #1
_021305AC:
	cmp r6, #6
	blt _02130570
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	beq _0213061C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _0213061C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl FUN_ov126_02138ec0
	cmp r0, #0
	cmpne r8, #2
	beq _0213061C
	ldrb r0, [r5]
	cmp r0, #5
	beq _02130604
	cmp r0, #6
	bne _0213061C
_02130604:
	cmp r7, #0
	movne r0, #5
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213061C:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0213064C
	ldr r0, _021307AC ; =0x0209BA20
	mov r1, r10
	mov r2, r5
	mov r3, r4
	bl FUN_02049fc8
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213064C:
	cmp r11, #0
	ldreqb r0, [sp, #0x50]
	cmpeq r0, #1
	bne _02130694
	ldrb r0, [r5]
	mov r1, #0
	cmp r0, #7
	bne _02130678
	ldrb r0, [r5, #0x13]
	tst r0, #1
	movne r1, #1
_02130678:
	cmp r1, #0
	bne _02130694
	cmp r9, #0x14
	cmpne r9, #0x16
	addne sp, sp, #0x1c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130694:
	cmp r9, #0x15
	bne _02130714
	ldr r0, [sp, #0x14]
	bl FUN_ov126_021375d4
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r0, #0xf]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _021306E4
	cmp r7, #0
	movne r0, #6
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021306E4:
	ldrb r0, [r0, #0xf]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02130714
	cmp r7, #0
	movne r0, #7
	strne r0, [r7]
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130714:
	ldr r0, _021307B4 ; =0x0209A2C0
	ldrsh r1, [r10, #0x94]
	ldr r0, [r0, #0x4c]
	cmp r0, r1
	beq _021307A0
	ldrb r0, [r5, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _021307A0
	ldr r1, [r10, #0x84]
	ldr r0, [sp, #0x14]
	ldmia r1, {r2, r3}
	mov r1, r10
	bl FUN_ov132_02140a44
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _021307A0
	ldrb r0, [r5]
	mov r1, #0
	cmp r0, #7
	bne _02130784
	ldrb r0, [r5, #0x13]
	tst r0, #1
	movne r1, #1
_02130784:
	mov r0, #1
	cmp r1, #0
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021307A0:
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021307AC: .word gLogicThink
_021307B0: .word 0x000001FF
_021307B4: .word unk_0209A2C0
	arm_func_end FUN_ov126_021300d8

	arm_func_start FUN_ov126_021307b8
FUN_ov126_021307b8: ; 0x021307B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r9, [sp, #0x48]
	ldr r8, [sp, #0x4c]
	ldr r7, [sp, #0x50]
	movs r10, r1
	str r0, [sp, #0x14]
	mov r6, #0
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	addeq sp, sp, #0x20
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, [sp, #0x14]
	bl FUN_ov132_02145190
	mov r11, r0
	mov r5, r6
_02130808:
	ldr r0, _02130894 ; =0x0209BA20
	ldr r2, [sp, #0x1c]
	mov r1, r10
	mov r3, r9
	stmia sp, {r5, r11}
	bl FUN_0204aba4
	movs r4, r0
	beq _0213087C
	ldr r0, [sp, #0x1c]
	mov r1, #0
	stmia sp, {r0, r9, r11}
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r1, r10
	mov r3, r4
	bl FUN_ov126_021300d8
	cmp r0, #0
	beq _0213087C
	cmp r8, #0
	cmpne r6, r7
	strlt r4, [r8, r6, lsl #2]
	cmp r8, #0
	beq _02130878
	cmp r6, r7
	bge _0213087C
_02130878:
	add r6, r6, #1
_0213087C:
	add r5, r5, #1
	cmp r5, #6
	blt _02130808
	mov r0, r6
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130894: .word gLogicThink
	arm_func_end FUN_ov126_021307b8

	arm_func_start FUN_ov126_02130898
FUN_ov126_02130898: ; 0x02130898
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r4, r0
	mov r0, r9
	mov r8, r2
	mov r7, r3
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r4
	bl FUN_ov132_02145190
	ldr r4, _02130910 ; =0x0209BA20
	mov r6, r0
	mov r5, #0
_021308D0:
	mov r0, r4
	mov r1, r9
	mov r2, r8
	mov r3, r7
	stmia sp, {r5, r6}
	bl FUN_0204aba4
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, r5, #1
	cmp r5, #6
	blt _021308D0
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02130910: .word gLogicThink
	arm_func_end FUN_ov126_02130898

	arm_func_start FUN_ov126_02130914
FUN_ov126_02130914: ; 0x02130914
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r1
	mov r10, r0
	mov r0, r9
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x38]
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02145190
	mov r4, #0
	mov r5, r0
	mov r11, r4
_02130950:
	ldr r0, _021309BC ; =0x0209BA20
	mov r1, r9
	mov r2, r7
	mov r3, r6
	stmia sp, {r4, r5}
	bl FUN_0204aba4
	movs r3, r0
	beq _021309A4
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	str r11, [sp, #0x10]
	bl FUN_ov126_021300d8
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021309A4:
	add r4, r4, #1
	cmp r4, #6
	blt _02130950
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021309BC: .word gLogicThink
	arm_func_end FUN_ov126_02130914

	arm_func_start FUN_ov126_021309c0
FUN_ov126_021309c0: ; 0x021309C0
	ldr r1, _02130A28 ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _021309EC
	ldr r1, _02130A2C ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x1a4]
	ldreq r0, [r0, #0x210]
	bxeq lr
_021309EC:
	ldrb r1, [r0, #0x1a4]
	mov r3, #0
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0, #0x1a4]
	cmp r1, #4
	movhs r1, #0
	strhsb r1, [r0, #0x1a4]
	ldrb r1, [r0, #0x1a4]
	ldr r2, [r0, #0x210]
	strb r3, [r2, r1]
	ldrb r1, [r0, #0x1a4]
	ldr r0, [r0, #0x210]
	add r0, r0, r1
	bx lr
_02130A28: .word unk_020A0640
_02130A2C: .word gWirelessUtil
	arm_func_end FUN_ov126_021309c0

	arm_func_start FUN_ov126_02130a30
FUN_ov126_02130a30: ; 0x02130A30
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02130A90 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x1a]
	ldrb r4, [r5, #0x1a4]
	cmp r0, #0
	beq _02130A60
	ldr r0, _02130A94 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldreq r0, [r5, #0x210]
	ldmeqfd sp!, {r3, r4, r5, pc}
_02130A60:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _02130A7C
	mov r0, r5
	bl FUN_ov132_02143058
	ldrb r4, [r0, #8]
_02130A7C:
	cmp r4, #0
	movlt r0, #0
	ldrge r0, [r5, #0x210]
	addge r0, r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02130A90: .word unk_020A0640
_02130A94: .word gWirelessUtil
	arm_func_end FUN_ov126_02130a30

	arm_func_start FUN_ov126_02130a98
FUN_ov126_02130a98: ; 0x02130A98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, r1
	mov r5, r2
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
_02130AC0:
	mov r0, r7
	mov r1, r6
	bl FUN_0206cdf8
	cmp r5, r0
	beq _02130AE8
	add r0, r6, #1
	mov r0, r0, lsl #0x18
	mov r6, r0, asr #0x18
	cmp r6, #6
	blt _02130AC0
_02130AE8:
	cmp r6, #6
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_ov126_021309c0
	mov r5, r0
	mov r0, r7
	bl FUN_0206dcd4
	add r0, r0, r6
	ldrb r2, [r0, #0x44]
	mov r0, r4
	mov r1, #0
	strb r2, [r5]
	bl FUN_ov132_02142df8
	ldrb r1, [r4, #0x1a4]
	strb r1, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_02130a98

	arm_func_start FUN_ov126_02130b28
FUN_ov126_02130b28: ; 0x02130B28
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r9, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #0
	ldr r7, _02130BE0 ; =0x0209BA20
	mov r4, r8
	mov r5, #1
_02130B48:
	mov r0, r9
	mov r1, r8
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r7
	bl FUN_0204a2c4
	movs r6, r0
	beq _02130BC4
	mov r0, r9
	bl FUN_0206cc84
	mov r10, r0
	mov r0, r6
	mov r1, r9
	bl FUN_0204b114
	cmp r10, r0
	blt _02130BC4
	ldrb r0, [r6, #0x13]
	tst r0, #6
	beq _02130BC4
	ldr r0, [r9, #0x88]
	ldrb r0, [r0, #0x88]
	tst r0, r5, lsl r8
	bne _02130BC4
	mov r0, r7
	mov r1, r9
	mov r2, r6
	mov r3, r4
	bl FUN_02049fc8
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02130BC4:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #6
	blt _02130B48
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02130BE0: .word gLogicThink
	arm_func_end FUN_ov126_02130b28

	arm_func_start FUN_ov126_02130be4
FUN_ov126_02130be4: ; 0x02130BE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	ldr r3, _0213103C ; =0x020A0640
	mov r5, r0
	ldrb r0, [r3, #0x1a]
	mov r4, r1
	mov r11, r2
	cmp r0, #0
	add r6, sp, #0x10
	beq _02130C20
	ldr r0, _02131040 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	addeq sp, sp, #0x50
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02130C20:
	mov r0, r5
	bl FUN_ov132_021447c8
	cmp r0, #0
	addne sp, sp, #0x50
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #0x50
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r7, #0x80000000
	mov r8, #0
	sub r1, r7, #0x80000000
	add r3, sp, #0x30
	add r2, sp, #0x40
	add r0, sp, #0x20
	b _02130C78
_02130C64:
	str r7, [r3, r8, lsl #2]
	str r1, [r6, r8, lsl #2]
	str r7, [r2, r8, lsl #2]
	str r1, [r0, r8, lsl #2]
	add r8, r8, #1
_02130C78:
	cmp r8, #4
	blt _02130C64
	ldr r6, _02131044 ; =0x0209A2C0
	mov r7, #0
	ldr r0, [r6, #0x48]
	bl FUN_ov16_020f07a8
	ldr r1, [r6, #0x48]
	add r8, sp, #0x10
	add r2, sp, #0x30
	mov r3, #0x80000000
	str r3, [r2, r0, lsl #4]
	str r1, [r8, r0, lsl #4]
	mov r9, r7
	b _02130DA8
_02130CB0:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r10, r0
	beq _02130DA4
	bl FUN_0206d64c
	cmp r0, #0
	beq _02130DA4
	mov r0, r10
	bl FUN_0206d688
	cmp r0, #0
	ldrne r0, [r6, #0x48]
	cmpne r9, r0
	beq _02130DA4
	mov r0, r10
	bl FUN_0206da14
	cmp r0, #0
	beq _02130DA4
	ldr r1, [r10, #0x84]
	ldr r0, [r6]
	ldr r1, [r1]
	subs r2, r1, r0
	ldr r0, [r10, #0x84]
	rsbmi r2, r2, #0
	ldr r1, [r0, #4]
	ldr r0, [r6, #4]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r2, #0x30000
	cmple r0, #0x30000
	bgt _02130DA4
	ldr r0, [r10, #0x84]
	ldr r1, [r0, #4]
	ldr r3, [r0]
	mov r0, r5
	str r1, [sp]
	ldmia r6, {r1, r2}
	bl FUN_01ffba98
	mov r10, r0
	cmp r10, #0x30000
	bgt _02130DA4
	mov r0, r9
	bl FUN_ov16_020f07a8
	add r1, sp, #0x30
	add r12, r1, r0, lsl #4
	add r3, r8, r0, lsl #4
	str r10, [r12, #0xc]
	str r9, [r3, #0xc]
	mov lr, #2
	b _02130D9C
_02130D74:
	ldr r2, [r12, lr, lsl #2]
	cmp r2, r10
	ble _02130DA4
	ldr r0, [r3, lr, lsl #2]
	add r1, lr, #1
	str r2, [r12, r1, lsl #2]
	str r0, [r3, r1, lsl #2]
	str r10, [r12, lr, lsl #2]
	str r9, [r3, lr, lsl #2]
	sub lr, lr, #1
_02130D9C:
	cmp lr, #0
	bge _02130D74
_02130DA4:
	add r9, r9, #1
_02130DA8:
	cmp r9, #0x20
	blt _02130CB0
	mov r9, #1
	add r10, sp, #0x20
	b _02130E48
_02130DBC:
	ldr r0, [r8, r9, lsl #2]
	bl FUN_ov16_020efa80
	sub r1, r9, #1
	ldr r3, [r8, r1, lsl #2]
	ldr r2, [r8, r9, lsl #2]
	mov r1, r0
	cmp r3, r2
	beq _02130DF4
	cmp r1, #0
	beq _02130E00
	mov r0, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02130E00
_02130DF4:
	add r0, r9, #1
	ldr r0, [r8, r0, lsl #2]
	str r0, [r8, r9, lsl #2]
_02130E00:
	ldr r0, [r10, r9, lsl #2]
	bl FUN_ov16_020efa80
	sub r1, r9, #1
	ldr r3, [r10, r1, lsl #2]
	ldr r2, [r10, r9, lsl #2]
	mov r1, r0
	cmp r3, r2
	beq _02130E38
	cmp r1, #0
	beq _02130E44
	mov r0, r5
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02130E44
_02130E38:
	add r0, r9, #1
	ldr r0, [r10, r0, lsl #2]
	str r0, [r10, r9, lsl #2]
_02130E44:
	add r9, r9, #1
_02130E48:
	cmp r9, #3
	blt _02130DBC
	mov r0, r5
	bl FUN_ov126_021323b4
	mov r10, r0
	mov r0, r5
	bl FUN_ov126_02137644
	strb r7, [r0, #0x2e]
	mov r0, r5
	mov r1, r4
	mov r2, r11
	bl FUN_ov126_02132330
	cmp r0, #0
	ldrb r0, [r10, #0x12]
	orrne r0, r0, #8
	andeq r0, r0, #0xf7
	strb r0, [r10, #0x12]
	ldr r0, [r6, #0x48]
	bl FUN_ov16_020f07a8
	cmp r0, #0
	mov r3, #1
	movne r3, #0
	mov r1, r4, lsl #0x18
	mov r2, r11, lsl #0x18
	mov r9, #0
	mov r1, r1, asr #0x18
	add r0, r8, r0, lsl #4
	add r6, r8, r3, lsl #4
	mov r2, r2, asr #0x18
	mov r8, #1
	mov lr, #2
	b _02130F9C
_02130EC8:
	ldr r3, [r0, r9, lsl #2]
	cmp r3, #0
	blt _02130F30
	cmp r4, r3
	bne _02130F0C
	ldrb r3, [r10, #0x10]
	cmp r3, #0
	beq _02130F00
	add r3, r10, r3
	ldrsb r12, [r10, #4]
	strb r12, [r3, #4]
	ldrb r3, [r10, #0x10]
	add r3, r10, r3
	strb r7, [r3, #0xa]
_02130F00:
	strb r1, [r10, #4]
	strb r8, [r10, #0xa]
	b _02130F24
_02130F0C:
	ldrb r12, [r10, #0x10]
	add r12, r10, r12
	strb r3, [r12, #4]
	ldrb r3, [r10, #0x10]
	add r3, r10, r3
	strb r7, [r3, #0xa]
_02130F24:
	ldrb r3, [r10, #0x10]
	add r3, r3, #1
	strb r3, [r10, #0x10]
_02130F30:
	ldr r3, [r6, r9, lsl #2]
	cmp r3, #0
	blt _02130F98
	cmp r11, r3
	bne _02130F74
	ldrb r3, [r10, #0x11]
	cmp r3, #0
	beq _02130F68
	add r3, r10, r3
	ldrsb r12, [r10, #7]
	strb r12, [r3, #7]
	ldrb r3, [r10, #0x11]
	add r3, r10, r3
	strb r7, [r3, #0xd]
_02130F68:
	strb r2, [r10, #7]
	strb lr, [r10, #0xd]
	b _02130F8C
_02130F74:
	ldrb r12, [r10, #0x11]
	add r12, r10, r12
	strb r3, [r12, #7]
	ldrb r3, [r10, #0x11]
	add r3, r10, r3
	strb r7, [r3, #0xd]
_02130F8C:
	ldrb r3, [r10, #0x11]
	add r3, r3, #1
	strb r3, [r10, #0x11]
_02130F98:
	add r9, r9, #1
_02130F9C:
	cmp r9, #3
	blt _02130EC8
	ldrsb r0, [r10, #4]
	bl FUN_ov16_020efa80
	mov r8, r0
	ldrsb r0, [r10, #7]
	bl FUN_ov16_020efa80
	mov r6, #0
	mov r4, #1
	mov r7, r0
	str r6, [sp]
	stmib sp, {r4, r7}
	mov r0, r5
	mov r1, r8
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0xc]
	bl FUN_ov132_02141778
	mov r1, r0
	mov r0, r10
	bl FUN_ov126_02132748
	str r6, [sp]
	stmib sp, {r4, r8}
	mov r1, r7
	mov r0, r5
	mov r2, r6
	mov r3, #3
	str r6, [sp, #0xc]
	bl FUN_ov132_02141778
	mov r1, r0
	mov r0, r10
	bl FUN_ov126_02132780
	mov r0, r5
	strb r6, [r10, #0x15]
	bl FUN_ov132_02152eb0
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_021447d0
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213103C: .word unk_020A0640
_02131040: .word gWirelessUtil
_02131044: .word unk_0209A2C0
	arm_func_end FUN_ov126_02130be4

	arm_func_start FUN_ov126_02131048
FUN_ov126_02131048: ; 0x02131048
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	mov r4, r1
	mov r9, r2
	bl FUN_ov126_0213246c
	ldrb r0, [r0, #0x12]
	mov r11, #1
	tst r0, #8
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	mov r0, #0x64
	moveq r11, #0
	bl FUN_ov16_020ef928
	str r0, [sp, #0xc]
	mov r0, r10
	bl FUN_ov126_021324dc
	bl FUN_ov16_020f07f4
	cmp r4, r0
	mov r0, r10
	bne _021310C4
	bl FUN_ov126_021324dc
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r10
	bl FUN_ov126_0213252c
	bl FUN_ov16_020efa80
	mov r2, r0
	mov r6, #0
	b _021310E4
_021310C4:
	bl FUN_ov126_0213252c
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r10
	bl FUN_ov126_021324dc
	bl FUN_ov16_020efa80
	mov r2, r0
	mov r6, #1
_021310E4:
	mov r8, #0
	add r4, sp, #0x10
	str r6, [sp]
	mov r0, r10
	mov r1, r5
	mov r3, r8
	str r4, [sp, #4]
	mov r7, #4
	str r7, [sp, #8]
	bl FUN_ov126_021307b8
	mov r7, r0
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_ov132_02153174
	ldr r1, [r5, #0x88]
	ldrh r2, [r1, #0x32]
	cmp r2, #0
	cmpne r7, #0
	ble _02131154
_02131134:
	ldr r1, [r4, r8, lsl #2]
	cmp r1, r2
	addeq sp, sp, #0x30
	streq r1, [r9]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
	cmp r8, r7
	blt _02131134
_02131154:
	cmp r7, #0
	ble _02131188
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bhs _02131188
	mov r0, r1
	mov r1, r7
	bl _u32_div_f
	add r0, sp, #0x10
	ldr r0, [r0, r1, lsl #2]
	add sp, sp, #0x30
	str r0, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131188:
	add r4, sp, #0x10
	str r11, [sp]
	mov r0, r10
	mov r1, r5
	mov r3, r6
	mov r2, #0
	str r4, [sp, #4]
	bl FUN_ov126_0212fdc0
	mov r0, #2
	bl FUN_ov16_020ef928
	ldr r0, [r4, r0, lsl #2]
	str r0, [r9]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_02131048

	arm_func_start FUN_ov126_021311c0
FUN_ov126_021311c0: ; 0x021311C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r6, r3
	mov r9, r1
	mov r1, r6
	mov r10, r0
	mov r8, r2
	ldr r5, [sp, #0x40]
	mov r7, #2
	mov r4, #1
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02131228
	mov r0, r6
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _02131228
	mov r0, r9
	mov r1, r7
	bl FUN_ov126_021325d4
	add sp, sp, #0x1c
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131228:
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02131270
	mov r0, r8
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _02131270
	mov r0, r9
	mov r1, r4
	bl FUN_ov126_021325d4
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131270:
	ldrb r0, [r5]
	mov r1, #0
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #6
	bhi _02131294
	mov r0, r4, lsl r0
	tst r0, #0x55
	movne r1, r4
_02131294:
	cmp r1, #0
	movne r4, r5
	mov r0, r8
	ldrne r5, [sp, #0x44]
	ldreq r4, [sp, #0x44]
	bl FUN_0206dc98
	ldrsh r1, [r9]
	ldr r11, _021315C8 ; =0x0209BA20
	mov r7, r0
	mov r0, r11
	bl FUN_0204af50
	add r1, r7, r0
	mov r0, r6
	str r1, [sp, #0x18]
	bl FUN_0206dc98
	mov r7, r0
	ldrsh r1, [r9, #2]
	mov r0, r11
	bl FUN_0204af50
	add r1, r7, r0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x14]
	cmp r0, r1
	ble _02131310
	mov r4, #1
	mov r0, r9
	mov r1, r4
	bl FUN_ov126_021325d4
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131310:
	cmp r0, r1
	mov r0, #2
	mov r7, #1
	bge _0213133C
	mov r4, r0
	mov r0, r9
	mov r1, r4
	bl FUN_ov126_021325d4
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213133C:
	ldrb r1, [r4]
	mov r11, #0
	add r1, r1, #0xfb
	and r1, r1, #0xff
	cmp r1, #3
	movls r1, r7
	movhi r1, r11
	cmp r1, #0
	beq _02131380
	mov r11, #0
	str r11, [sp]
	stmib sp, {r0, r6}
	mov r0, r10
	mov r1, r8
	mov r2, r4
	mov r3, #0x19
	b _02131398
_02131380:
	str r11, [sp]
	stmib sp, {r0, r6}
	mov r0, r10
	mov r1, r8
	mov r2, r4
	mov r3, #1
_02131398:
	str r11, [sp, #0xc]
	bl FUN_ov132_021417d8
	str r0, [sp, #0x18]
	ldrb r0, [r5]
	mov r4, #0
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r1, #1
	movhi r1, r4
	cmp r1, #0
	mov r0, #2
	str r4, [sp]
	stmib sp, {r0, r8}
	mov r0, r10
	mov r1, r6
	beq _021313E8
	mov r2, r5
	mov r3, #0x1b
	b _021313F0
_021313E8:
	mov r2, r5
	mov r3, #3
_021313F0:
	str r4, [sp, #0xc]
	bl FUN_ov132_021417d8
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x14]
	cmp r1, #1
	strlt r7, [sp, #0x18]
	blt _02131418
	cmp r1, #0x4b0
	movgt r1, #0x4b0
	strgt r1, [sp, #0x18]
_02131418:
	cmp r0, #1
	movlt r0, #1
	strlt r0, [sp, #0x14]
	blt _02131434
	cmp r0, #0x4b0
	movgt r0, #0x4b0
	strgt r0, [sp, #0x18]
_02131434:
	ldr r1, [sp, #0x18]
	mov r0, r9
	bl FUN_ov126_02132748
	ldr r1, [sp, #0x14]
	mov r0, r9
	bl FUN_ov126_02132780
	mov r4, #1
	ldr r3, [sp, #0x18]
	ldr r6, [sp, #0x14]
	mov r5, r4
	mov r2, #2
_02131460:
	mul r0, r4, r3
	mul r1, r5, r6
	mov r4, r0
	mov r5, r1
	subs r2, r2, #1
	bpl _02131460
	add r2, r3, r6
	mov r11, #0
	cmp r0, r1
	add r0, r0, r1
	mov r1, r2, asr #1
	mov r6, r11
	mov r7, r11
	str r1, [sp, #0x10]
	bhs _021314C8
	mov r5, #2
	bl FUN_ov16_020ef8d4
	cmp r4, r0
	strlsb r5, [r9, #0x15]
	bls _021314F0
	mov r0, #3
	strb r0, [r9, #0x15]
	mov r11, #1
	add r6, sp, #0x18
	add r7, sp, #0x14
	b _021314F0
_021314C8:
	mov r4, #1
	bl FUN_ov16_020ef8d4
	cmp r5, r0
	strlsb r4, [r9, #0x15]
	bls _021314F0
	mov r0, #4
	strb r0, [r9, #0x15]
	mov r11, r4
	add r6, sp, #0x14
	add r7, sp, #0x18
_021314F0:
	cmp r11, #0
	cmpne r7, #0
	cmpne r6, #0
	beq _02131588
	mov r0, #0x15
	bl FUN_ov16_020ef8d4
	mov r5, r0
	ldr r0, [sp, #0x10]
	bl _fflt
	mov r4, r0
	mov r0, r5
	bl _ffltu
	mov r1, r0
	ldr r0, _021315CC ; =0x42700000
	bl _fadd
	mov r1, r0
	mov r0, r4
	bl _fmul
	ldr r1, _021315D0 ; =0x42C80000
	bl _fdiv
	bl _ffix
	str r0, [r7]
	mov r0, #4
	bl FUN_ov16_020ef8d4
	ldr r1, [r7]
	add r0, r1, r0
	add r1, r0, #2
	str r1, [r6]
	ldr r0, [r7]
	cmp r1, r0
	addle r0, r0, #2
	strle r0, [r6]
	ldr r1, [sp, #0x18]
	mov r0, r9
	bl FUN_ov126_02132748
	ldr r1, [sp, #0x14]
	mov r0, r9
	bl FUN_ov126_02132780
_02131588:
	mov r0, r8
	bl FUN_0206d5f0
	bl FUN_ov16_020f0a14
	cmp r0, #0
	mov r0, r9
	beq _021315A8
	mov r1, #1
	b _021315AC
_021315A8:
	mov r1, #2
_021315AC:
	bl FUN_ov126_021327b8
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02149128
	ldrb r0, [r9, #0x15]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021315C8: .word gLogicThink
_021315CC: .word 0x42700000
_021315D0: .word 0x42C80000
	arm_func_end FUN_ov126_021311c0

	arm_func_start FUN_ov126_021315d4
FUN_ov126_021315d4: ; 0x021315D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r10, r0
	mov r9, r1
	mov r8, r3
	bl FUN_ov126_0213246c
	mov r4, r0
	ldrsb r0, [r4, #4]
	bl FUN_ov16_020efa80
	mov r11, r0
	ldrsb r0, [r4, #7]
	bl FUN_ov16_020efa80
	ldr r6, _021319FC ; =0x0209BA20
	str r0, [sp, #8]
	mov r0, r6
	mov r1, r9
	bl FUN_0204a2c4
	mov r5, r0
	mov r0, r6
	mov r1, r8
	bl FUN_0204a2c4
	mov r6, r0
	mov r0, r11
	bl FUN_ov16_020f0810
	cmp r0, #0
	mov r0, #0
	streqh r9, [r4]
	streqh r8, [r4, #2]
	strneh r8, [r4]
	strneh r9, [r4, #2]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	b _021316A4
_02131658:
	ldrb r1, [r4, #0x10]
	cmp r0, r1
	bge _0213167C
	add r1, r4, r0
	ldrb r1, [r1, #0xa]
	cmp r1, #0
	ldreq r1, [sp, #0xc]
	addeq r1, r1, #1
	streq r1, [sp, #0xc]
_0213167C:
	ldrb r1, [r4, #0x11]
	cmp r0, r1
	bge _021316A0
	add r1, r4, r0
	ldrb r1, [r1, #0xd]
	cmp r1, #0
	ldreq r1, [sp, #0x10]
	addeq r1, r1, #1
	streq r1, [sp, #0x10]
_021316A0:
	add r0, r0, #1
_021316A4:
	cmp r0, #3
	blt _02131658
	ldr r0, [sp, #0xc]
	cmp r0, #1
	ldrgt r0, [sp, #0x10]
	cmpgt r0, #1
	ble _02131718
	mov r0, #0
	mov r7, #3
	mov r1, #4
	b _0213170C
_021316D0:
	ldrb r2, [r4, #0x10]
	cmp r0, r2
	bge _021316EC
	add r3, r4, r0
	ldrb r2, [r3, #0xa]
	cmp r2, #0
	streqb r7, [r3, #0xa]
_021316EC:
	ldrb r2, [r4, #0x11]
	cmp r0, r2
	bge _02131708
	add r3, r4, r0
	ldrb r2, [r3, #0xd]
	cmp r2, #0
	streqb r1, [r3, #0xd]
_02131708:
	add r0, r0, #1
_0213170C:
	cmp r0, #3
	blt _021316D0
	b _0213176C
_02131718:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldrgt r0, [sp, #0x10]
	cmpgt r0, #0
	ble _0213176C
	mov r0, #2
	bl FUN_ov16_020ef8d4
	ldr r1, [sp, #0xc]
	cmp r1, #1
	cmpne r0, #0
	moveq r1, #3
	streqb r1, [r4, #0xb]
	movne r1, #3
	strneb r1, [r4, #0xc]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	cmpne r0, #0
	moveq r0, #4
	streqb r0, [r4, #0xe]
	movne r0, #4
	strneb r0, [r4, #0xf]
_0213176C:
	mov r0, #0
	mov r7, #5
	mov r1, #6
	b _021317B8
_0213177C:
	ldrb r2, [r4, #0x10]
	cmp r0, r2
	bge _02131798
	add r3, r4, r0
	ldrb r2, [r3, #0xa]
	cmp r2, #0
	streqb r7, [r3, #0xa]
_02131798:
	ldrb r2, [r4, #0x11]
	cmp r0, r2
	bge _021317B4
	add r3, r4, r0
	ldrb r2, [r3, #0xd]
	cmp r2, #0
	streqb r1, [r3, #0xd]
_021317B4:
	add r0, r0, #1
_021317B8:
	cmp r0, #3
	blt _0213177C
	mov r0, r10
	mov r7, #1
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _021317F8
	ldr r0, _02131A00 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021317F4
	ldr r0, _02131A04 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _021317F8
_021317F4:
	strb r7, [r10, #0x329]
_021317F8:
	ldrb r0, [r4, #0x12]
	ldr r3, [sp, #8]
	mov r7, #0
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r10
	mov r1, r4
	mov r2, r11
	moveq r7, #1
	stmia sp, {r5, r6}
	bl FUN_ov126_021311c0
	ldr r1, _02131A08 ; =0x0213ACA0
	ldr r2, _02131A0C ; =0x0209A0DC
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _021319A0
	ldr r0, _02131A00 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02131864
	ldr r0, _02131A04 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _021319A0
_02131864:
	ldrb r0, [r5]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _02131894
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_02131894:
	cmp r2, #0
	bne _021318A8
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_021318A8:
	cmp r1, #0
	bne _021319A0
	ldrb r0, [r6]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _021318E0
	ldrb r0, [r6]
	cmp r0, #7
	movne r2, #0
_021318E0:
	cmp r2, #0
	bne _021318F4
	ldrb r0, [r6]
	cmp r0, #8
	movne r1, #0
_021318F4:
	cmp r1, #0
	bne _021319A0
	ldr r0, _02131A10 ; =0x0209C220
	ldrh r0, [r0, #0x66]
	tst r0, #0x200
	beq _021319A0
	mov r0, r11
	bl FUN_0206d6b0
	cmp r0, #0
	add r5, sp, #0x14
	mov r2, #0
	str r7, [sp]
	mov r0, r10
	beq _02131938
	mov r1, r11
	mov r3, r2
	b _02131940
_02131938:
	ldr r1, [sp, #8]
	mov r3, #1
_02131940:
	str r5, [sp, #4]
	bl FUN_ov126_0212fdc0
	ldr r1, [sp, #0x14]
	ldr r0, _02131A08 ; =0x0213ACA0
	cmp r1, r9
	cmpne r1, r8
	bne _02131974
	ldrb r2, [r4, #0x12]
	mov r1, #2
	orr r2, r2, #0x20
	strb r2, [r4, #0x12]
	str r1, [r0]
	b _02131994
_02131974:
	ldr r1, [sp, #0x18]
	cmp r1, r9
	cmpne r1, r8
	ldreqb r2, [r4, #0x12]
	moveq r1, #2
	orreq r2, r2, #0x40
	streqb r2, [r4, #0x12]
	streq r1, [r0]
_02131994:
	ldr r1, [r0]
	mov r0, r4
	bl FUN_ov126_021325d4
_021319A0:
	mov r5, #0x1e
	mov r0, r10
	mov r1, r5
	mov r2, r11
	mov r3, r4
	bl FUN_ov126_0213a490
	ldr r2, [sp, #8]
	mov r0, r10
	mov r1, r5
	add r3, r4, #2
	bl FUN_ov126_0213a490
	ldrsh r2, [r4]
	mov r0, r10
	mov r1, r11
	bl FUN_ov126_0213a6c8
	ldrsh r2, [r4, #2]
	ldr r1, [sp, #8]
	mov r0, r10
	bl FUN_ov126_0213a6c8
	ldr r0, _02131A08 ; =0x0213ACA0
	ldr r0, [r0]
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021319FC: .word gLogicThink
_02131A00: .word unk_020A0640
_02131A04: .word gWirelessUtil
_02131A08: .word ov126_0213ACA0
_02131A0C: .word unk_0209A0DC
_02131A10: .word unk_0209C220
	arm_func_end FUN_ov126_021315d4

	arm_func_start FUN_ov126_02131a14
FUN_ov126_02131a14: ; 0x02131A14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
	mov r10, r1
	mov r9, r8
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [r10, #4]
	bl FUN_ov16_020efa80
	mov r4, r0
	ldrsb r0, [r10, #7]
	bl FUN_ov16_020efa80
	ldrsh r1, [r10]
	ldr r11, _02131BFC ; =0x0209BA20
	mov r5, r0
	mov r0, r11
	bl FUN_0204a2c4
	mov r6, r0
	ldrsh r1, [r10, #2]
	mov r0, r11
	bl FUN_0204a2c4
	mov r7, r0
	cmp r4, #0
	beq _02131A8C
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r11
	bl FUN_020724dc
	mov r8, r0
_02131A8C:
	cmp r5, #0
	beq _02131AAC
	mov r0, r5
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _02131BFC ; =0x0209BA20
	bl FUN_020724dc
	mov r9, r0
_02131AAC:
	mov r0, r10
	mov r1, #1
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _02131B54
	cmp r4, #0
	beq _02131B2C
	mov r0, r4
	bl FUN_0206d744
	cmp r0, #0
	bne _02131B2C
	ldr r0, _02131BFC ; =0x0209BA20
	ldrb r0, [r0, #0x884]
	cmp r0, #0
	beq _02131B2C
	mov r0, r4
	bl FUN_0206cc84
	mov r5, r0
	mov r0, r6
	mov r1, r4
	bl FUN_0204b114
	mov r1, #0x64
	mul r1, r0, r1
	ldr r2, _02131C00 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	sub r0, r5, r3
	mov r1, r0, lsl #0x10
	mov r0, r4
	mov r1, r1, asr #0x10
	bl FUN_0206cc44
_02131B2C:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	ldrneh r0, [r8, #4]
	addne r0, r0, #1
	strneh r0, [r8, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131B54:
	mov r0, r10
	mov r1, #2
	bl FUN_ov126_021327b8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	beq _02131BD4
	mov r0, r5
	bl FUN_0206d744
	cmp r0, #0
	bne _02131BD4
	ldr r0, _02131BFC ; =0x0209BA20
	ldrb r0, [r0, #0x884]
	cmp r0, #0
	beq _02131BD4
	mov r0, r5
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_0204b114
	mov r1, #0x64
	mul r1, r0, r1
	ldr r2, _02131C00 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	sub r0, r4, r3
	mov r1, r0, lsl #0x10
	mov r0, r5
	mov r1, r1, asr #0x10
	bl FUN_0206cc44
_02131BD4:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7]
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	ldrneh r0, [r9, #6]
	addne r0, r0, #1
	strneh r0, [r9, #6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131BFC: .word gLogicThink
_02131C00: .word 0x51EB851F
	arm_func_end FUN_ov126_02131a14

	arm_func_start FUN_ov126_02131c04
FUN_ov126_02131c04: ; 0x02131C04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r8, r0
	str r1, [sp, #8]
	bl FUN_ov126_0213246c
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r2, [sp, #0x14]
	mov r4, #1
	mov r5, r0
	str r2, [sp, #0x10]
	mov r1, r4
	ldrsb r7, [r5, #4]
	ldrsb r6, [r5, #7]
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _02131C80
	mov r0, r7
	str r6, [sp, #0x20]
	bl FUN_ov16_020efa80
	mov r11, r0
	mov r0, r6
	bl FUN_ov16_020efa80
	str r0, [sp, #0x1c]
	ldrsh r1, [r5]
	ldr r0, _021321B0 ; =0x0209BA20
	bl FUN_0204a2c4
	str r0, [sp, #0x18]
	ldrsh r0, [r5]
_02131C78:
	str r0, [sp, #0xc]
	b _02131CF8
_02131C80:
	mov r0, r5
	mov r1, #2
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _02131CC8
	mov r0, r6
	str r7, [sp, #0x20]
	bl FUN_ov16_020efa80
	mov r11, r0
	mov r0, r7
	bl FUN_ov16_020efa80
	str r0, [sp, #0x1c]
	ldrsh r1, [r5, #2]
	ldr r0, _021321B0 ; =0x0209BA20
	bl FUN_0204a2c4
	str r0, [sp, #0x18]
	ldrsh r0, [r5, #2]
	b _02131C78
_02131CC8:
	ldrb r2, [r5, #0x12]
	ldr r1, [sp, #0x14]
	mov r0, r8
	orr r2, r2, #0x80
	strb r2, [r5, #0x12]
	bl FUN_ov132_021447d0
	mov r0, r8
	bl FUN_ov132_021434f8
	cmp r0, #0
	add sp, sp, #0x2c
	streqb r4, [r8, #0x329]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02131CF8:
	ldr r0, _021321B4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02131D18
	ldr r0, _021321B8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _02131D60
_02131D18:
	ldrb r0, [r5, #0x12]
	mov r2, #0
	tst r0, #0x40
	movne r2, #3
	bne _02131D34
	tst r0, #0x20
	movne r2, #2
_02131D34:
	cmp r2, #0
	beq _02131D60
	mov r0, #1
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, r8
	mov r1, r6
	mov r2, r7
	mov r3, #2
	bl FUN_ov132_0214f5b0
	str r0, [sp, #0x14]
_02131D60:
	ldr r0, _021321B4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02131D8C
	ldr r0, _021321B8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldrne r0, [sp, #0x18]
	ldrneb r0, [r0, #1]
	cmpne r0, #0
	beq _02131E08
_02131D8C:
	mov r0, #0x64
	bl FUN_ov16_020ef928
	ldr r1, [sp, #0x1c]
	and r4, r0, #0xff
	ldr r1, [r1, #0x90]
	ldr r0, [sp, #0x18]
	tst r1, #0x40
	ldrb r0, [r0, #1]
	beq _02131DD0
	ldr r0, _021321B0 ; =0x0209BA20
	mov r1, #0x39
	bl FUN_0204a2c4
	ldr r1, [sp, #0x18]
	ldrb r0, [r0, #6]
	ldrb r1, [r1, #1]
	add r0, r1, r0
	and r0, r0, #0xff
_02131DD0:
	cmp r0, r4
	bls _02131E08
	ldr r1, [sp, #0x18]
	mov r0, r8
	bl FUN_ov126_021325c0
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldrsh r1, [r11, #0x94]
	ldrsh r2, [r2, #0x94]
	mov r0, r8
	bl FUN_ov132_0214f5b0
	str r0, [sp, #0x14]
_02131E08:
	mov r7, #0
	b _02132000
_02131E10:
	cmp r7, #3
	bge _02131E30
	ldrb r0, [r5, #0x10]
	cmp r7, r0
	bge _02131FFC
	add r0, r5, r7
	ldrsb r9, [r0, #4]
	b _02131E48
_02131E30:
	sub r1, r7, #3
	ldrb r0, [r5, #0x11]
	cmp r1, r0
	bge _02131FFC
	add r0, r5, r1
	ldrsb r9, [r0, #7]
_02131E48:
	mov r0, r9
	bl FUN_ov16_020efa80
	mov r4, r0
	ldr r0, [sp, #0x20]
	mov r1, r9
	bl FUN_ov16_020f06d8
	cmp r0, #0
	beq _02131FB4
	cmp r9, r6
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	bne _02131EB0
	mov r0, r6
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _02131E94
	ldr r0, _021321BC ; =gL5Sound
	mov r1, #0x20
	b _02131E9C
_02131E94:
	ldr r0, _021321BC ; =gL5Sound
	mov r1, #0x1f
_02131E9C:
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #3
	mov r2, #0x3c
	b _02131EBC
_02131EB0:
	mov r1, #0
	mov r0, r4
	mov r2, r1
_02131EBC:
	bl FUN_0206dbb4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r8
	mov r1, r4
	mov r2, #0x5a
	mov r3, #1
	bl FUN_ov132_0213c29c
	mov r0, r8
	mov r1, r4
	mov r2, #0
	bl FUN_01ff9384
	mov r0, r4
	bl FUN_0206da98
	ldr r1, [r11, #0x84]
	ldr r0, [r4, #0x84]
	ldr r3, [r1]
	ldr r2, [r1, #4]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub r1, r1, r3
	sub r0, r0, r2
	bl FX_Atan2Idx
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r2, r0, lsl #1
	ldr r0, _021321C0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r10, [r0, r2]
	ldrsh r1, [r0, r1]
	ldr r3, [r4, #0x84]
	mov r12, r10, asr #0x1f
	mov r0, r1, asr #0x1f
	str r0, [sp, #0x24]
	mov r0, #0xa000
	umull r9, lr, r10, r0
	mov r0, #0xa000
	adds r9, r9, #0x800
	mla lr, r12, r0, lr
	ldr r2, [r3]
	adc r0, lr, #0
	mov r9, r9, lsr #0xc
	orr r9, r9, r0, lsl #20
	add r0, r2, r9
	str r0, [r3]
	mov r2, #0xa000
	umull r9, r3, r1, r2
	ldr r1, [sp, #0x24]
	mov r2, #0xa000
	mla r3, r1, r2, r3
	adds r2, r9, #0x800
	ldr r0, [r4, #0x84]
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	b _02131FE8
_02131FB4:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl FUN_0206dbb4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r2, #0
	str r0, [sp, #4]
	mov r0, r8
	mov r1, r4
	mov r3, r2
	bl FUN_ov132_0213c29c
_02131FE8:
	mov r2, r4
	mov r0, r8
	mov r1, #0x1c
	mov r3, #0
	bl FUN_ov126_0213a490
_02131FFC:
	add r7, r7, #1
_02132000:
	cmp r7, #6
	blt _02131E10
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x84]
	mov r0, r8
	ldmia r1, {r2, r3}
	mov r1, r11
	bl FUN_ov126_021390b0
	cmp r0, #0
	ldr r0, [r11, #0x84]
	mov r2, #0
	ldrb r3, [r0, #0x1a]
	beq _0213204C
	ldr r0, _021321C4 ; =0x02099F14
	str r2, [sp]
	mov r1, r11
	ldr r0, [r0]
	mov r2, #2
	b _02132060
_0213204C:
	ldr r0, _021321C4 ; =0x02099F14
	str r2, [sp]
	ldr r0, [r0]
	mov r1, r11
	mov r2, #3
_02132060:
	bl FUN_ov1_020e3c14
	cmp r11, #0
	beq _021320A8
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021320A8
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	ldr r1, [sp, #0x18]
	ldrb r1, [r1, #9]
	cmp r0, r1
	bhs _021320A8
	mov r0, r8
	mov r1, r11
	bl FUN_ov126_02138ec0
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x10]
_021320A8:
	mov r0, r5
	mov r1, #2
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _021320E0
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	ldr r4, [sp, #0x10]
	mov r0, r8
	mov r1, r6
	mov r3, r2
	str r4, [sp, #4]
	bl FUN_01ff8c44
_021320E0:
	ldr r0, [sp, #0x10]
	mov r4, #1
	cmp r0, #0
	beq _02132100
	mov r0, r8
	mov r1, r11
	mov r2, r5
	bl FUN_ov126_021321c8
_02132100:
	cmp r11, #0
	beq _02132130
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02132130
	mov r0, r11
	bl FUN_0206d5f0
	add r2, r8, #0x2e8
	mov r1, r0, lsl #1
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
_02132130:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02132158
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02132158
	mov r0, r8
	mov r2, r11
	mov r1, #2
	bl FUN_ov132_0214f3cc
_02132158:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02132180
	ldr r0, [sp, #0xc]
	add r3, sp, #0x28
	mov r1, r0, lsl #0x10
	mov r0, r11
	mov r1, r1, asr #0x10
	mov r2, #1
	bl FUN_0206d1e4
_02132180:
	ldrb r2, [r5, #0x12]
	mov r0, r8
	mov r1, #0
	orr r2, r2, #0x80
	strb r2, [r5, #0x12]
	bl FUN_ov132_021447d0
	mov r0, r8
	bl FUN_ov132_021434f8
	cmp r0, #0
	streqb r4, [r8, #0x329]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021321B0: .word gLogicThink
_021321B4: .word unk_020A0640
_021321B8: .word gWirelessUtil
_021321BC: .word gL5Sound
_021321C0: .word FX_SinCosTable_
_021321C4: .word unk_02099F14
	arm_func_end FUN_ov126_02131c04

	arm_func_start FUN_ov126_021321c8
FUN_ov126_021321c8: ; 0x021321C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov126_021375d4
	mov r7, #5
	mov r0, r7
	bl FUN_ov16_020ef8d4
	adds r0, r0, #0x19
	mov r0, r7
	beq _02132218
	bl FUN_ov16_020ef8d4
	add r0, r0, #0x19
	mov r0, r0, lsl #0xc
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02132230
_02132218:
	bl FUN_ov16_020ef8d4
	add r0, r0, #0x19
	mov r0, r0, lsl #0xc
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_02132230:
	bl _ffix
	ldr r1, [r5, #0x84]
	mov r9, r0
	ldrh r7, [r1, #0x18]
	mov r0, #0x6000
	bl FUN_ov16_020ef8d4
	sub r0, r0, #0x3000
	add r1, r7, #0x10000
	add r0, r1, r0
	mov r1, r0, lsl #0x10
	mov r0, #5
	mov r7, r1, lsr #0x10
	bl FUN_ov16_020ef8d4
	add r2, r0, #0xa
	mov r3, r2, lsl #0x10
	ldr r1, _02132328 ; =0x6C16C16D
	mov r0, r6
	umull r1, r8, r3, r1
	rsb r1, r8, r2, lsl #16
	add r8, r8, r1, lsr #1
	mov r1, r8, lsl #8
	mov r8, r1, lsr #0x10
	mov r1, r5
	mov r10, #9
	mov r2, r10
	bl FUN_ov126_0212d584
	cmp r9, r0
	ble _021322B4
	mov r0, r6
	mov r1, r5
	mov r2, r10
	bl FUN_ov126_0212d584
	mov r9, r0
_021322B4:
	mov r0, #6
	bl FUN_ov16_020f05c8
	str r7, [sp]
	ldr r7, _0213232C ; =0x0209A2C0
	str r8, [sp, #4]
	mov r8, #9
	str r8, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, r6
	mov r1, r7
	mov r2, r5
	str r3, [sp, #0x14]
	mov r3, r9
	bl FUN_ov126_0212cda0
	ldrb r1, [r4, #0x12]
	mov r0, r6
	orr r1, r1, #4
	strb r1, [r4, #0x12]
	bl FUN_ov132_02144780
	mov r1, r5
	mov r2, r7
	mov r3, r8
	str r0, [sp]
	mov r0, r6
	bl FUN_ov132_02150334
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02132328: .word 0x6C16C16D
_0213232C: .word unk_0209A2C0
	arm_func_end FUN_ov126_021321c8

	arm_func_start FUN_ov126_02132330
FUN_ov126_02132330: ; 0x02132330
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r0, r1
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020efa80
	cmp r4, #0
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x84]
	ldr r0, [r4, #0x84]
	ldrb r3, [r1, #0x1a]
	ldrb r2, [r0, #0x1a]
	add r0, r3, #4
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
	cmp r2, r0
	addne r0, r3, #5
	movne r1, r0, lsr #0x1f
	rsbne r0, r1, r0, lsl #29
	addne r0, r1, r0, ror #29
	cmpne r2, r0
	addne r0, r3, #3
	movne r1, r0, lsr #0x1f
	rsbne r0, r1, r0, lsl #29
	addne r0, r1, r0, ror #29
	cmpne r2, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_02132330

	arm_func_start FUN_ov126_021323b4
FUN_ov126_021323b4: ; 0x021323B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02132464 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _021323E8
	ldr r0, _02132468 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r4, #0x19e]
	ldreq r0, [r4, #0x204]
	ldmeqfd sp!, {r4, r5, r6, pc}
_021323E8:
	add r0, r4, #0x100
	ldrsb r1, [r0, #0x9e]
	mov r2, #0x18
	mov r6, #0
	add r1, r1, #1
	strb r1, [r4, #0x19e]
	ldrsb r0, [r0, #0x9e]
	ldr r1, [r4, #0x204]
	cmp r0, #0x10
	movge r0, #0
	strgeb r0, [r4, #0x19e]
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x9e]
	mla r5, r0, r2, r1
	mov r0, r5
	mov r1, r6
	bl MI_CpuFill8
	mvn r1, #0
	b _02132444
_02132434:
	add r0, r5, r6
	strb r1, [r0, #4]
	strb r1, [r0, #7]
	add r6, r6, #1
_02132444:
	cmp r6, #3
	blt _02132434
	add r0, r4, #0x100
	ldrsb r1, [r0, #0x9e]
	ldr r2, [r4, #0x204]
	mov r0, #0x18
	mla r0, r1, r0, r2
	ldmfd sp!, {r4, r5, r6, pc}
_02132464: .word unk_020A0640
_02132468: .word gWirelessUtil
	arm_func_end FUN_ov126_021323b4

	arm_func_start FUN_ov126_0213246c
FUN_ov126_0213246c: ; 0x0213246C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021324D4 ; =0x020A0640
	mov r5, r0
	ldrb r1, [r1, #0x1a]
	add r0, r5, #0x100
	ldrsb r4, [r0, #0x9e]
	cmp r1, #0
	beq _021324A0
	ldr r0, _021324D8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldreq r0, [r5, #0x204]
	ldmeqfd sp!, {r3, r4, r5, pc}
_021324A0:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _021324BC
	mov r0, r5
	bl FUN_ov132_02143058
	ldrsb r4, [r0, #2]
_021324BC:
	cmp r4, #0
	movlt r0, #0
	ldrge r1, [r5, #0x204]
	movge r0, #0x18
	mlage r0, r4, r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
_021324D4: .word unk_020A0640
_021324D8: .word gWirelessUtil
	arm_func_end FUN_ov126_0213246c

	arm_func_start FUN_ov126_021324dc
FUN_ov126_021324dc: ; 0x021324DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_02143058
	ldrsb r1, [r0, #2]
	cmp r1, #0
	mvnlt r0, #0
	ldmltfd sp!, {r4, pc}
	mov r0, #0x18
	mul r2, r1, r0
	ldr r1, [r4, #0x204]
	add r0, r1, r2
	ldrb r0, [r0, #0x12]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mvnne r0, #0
	addeq r0, r1, r2
	ldreqsb r0, [r0, #4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_021324dc

	arm_func_start FUN_ov126_0213252c
FUN_ov126_0213252c: ; 0x0213252C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov132_02143058
	ldrsb r1, [r0, #2]
	cmp r1, #0
	mvnlt r0, #0
	ldmltfd sp!, {r4, pc}
	mov r0, #0x18
	mul r2, r1, r0
	ldr r1, [r4, #0x204]
	add r0, r1, r2
	ldrb r0, [r0, #0x12]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mvnne r0, #0
	addeq r0, r1, r2
	ldreqsb r0, [r0, #7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0213252c

	arm_func_start FUN_ov126_0213257c
FUN_ov126_0213257c: ; 0x0213257C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov126_021323b4
	mov r4, r0
	mov r1, #1
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	strb r7, [r4, #4]
	mov r1, r5
	strb r6, [r4, #7]
	bl FUN_ov126_021325d4
	ldrb r0, [r4, #0x12]
	orr r0, r0, #0x80
	strb r0, [r4, #0x12]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_0213257c

	arm_func_start FUN_ov126_021325c0
FUN_ov126_021325c0: ; 0x021325C0
	stmfd sp!, {r3, lr}
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_021325c0

	arm_func_start FUN_ov126_021325d4
FUN_ov126_021325d4: ; 0x021325D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0x63
	mov r5, r0
	mov r0, r6
	mov r4, r1
	bl FUN_ov16_020ef8d4
	add r7, r0, #1
	mov r0, r6
	bl FUN_ov16_020ef8d4
	add r6, r0, #1
	cmp r7, r6
	movlt r0, r7
	movlt r7, r6
	movlt r6, r0
	blt _02132620
	bne _02132620
	cmp r6, #1
	subgt r6, r6, #1
	addle r7, r7, #1
_02132620:
	and r0, r4, #0xff
	strb r4, [r5, #0x15]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02132680
_02132634: ; jump table
	b _02132680 ; case 0
	b _02132648 ; case 1
	b _02132664 ; case 2
	b _02132664 ; case 3
	b _02132648 ; case 4
_02132648:
	mov r0, r5
	mov r1, r7
	bl FUN_ov126_02132748
	mov r0, r5
	mov r1, r6
	bl FUN_ov126_02132780
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02132664:
	mov r0, r5
	mov r1, r6
	bl FUN_ov126_02132748
	mov r0, r5
	mov r1, r7
	bl FUN_ov126_02132780
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02132680:
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02132748
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02132780
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_021325d4

	arm_func_start FUN_ov126_021326a0
FUN_ov126_021326a0: ; 0x021326A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #1
	mov r5, r0
	bl FUN_ov126_021327b8
	cmp r0, #0
	ldrnesb r0, [r5, #4]
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #2
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_021327b8
	cmp r0, #0
	ldrnesb r0, [r5, #7]
	subeq r0, r4, #3
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_021326a0

	arm_func_start FUN_ov126_021326dc
FUN_ov126_021326dc: ; 0x021326DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #1
	mov r5, r0
	bl FUN_ov126_021327b8
	cmp r0, #0
	ldrnesb r0, [r5, #7]
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #2
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_021327b8
	cmp r0, #0
	ldrnesb r0, [r5, #4]
	subeq r0, r4, #3
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_021326dc

	arm_func_start FUN_ov126_02132718
FUN_ov126_02132718: ; 0x02132718
	ldrb r1, [r0, #0x17]
	ldrb r0, [r0, #0x13]
	and r1, r1, #0xc0
	mov r1, r1, asr #6
	orr r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_ov126_02132718

	arm_func_start FUN_ov126_02132730
FUN_ov126_02132730: ; 0x02132730
	ldrb r1, [r0, #0x17]
	ldrb r0, [r0, #0x14]
	and r1, r1, #0x30
	mov r1, r1, asr #4
	orr r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_ov126_02132730

	arm_func_start FUN_ov126_02132748
FUN_ov126_02132748: ; 0x02132748
	ldr r2, _0213277C ; =0x000003E7
	cmp r1, #1
	movlt r1, #1
	cmp r1, r2
	movgt r1, r2
	ldrb r2, [r0, #0x17]
	and r3, r1, #0x300
	mov r3, r3, asr #8
	and r2, r2, #0x3f
	orr r2, r2, r3, lsl #6
	strb r2, [r0, #0x17]
	strb r1, [r0, #0x13]
	bx lr
_0213277C: .word 0x000003E7
	arm_func_end FUN_ov126_02132748

	arm_func_start FUN_ov126_02132780
FUN_ov126_02132780: ; 0x02132780
	ldr r2, _021327B4 ; =0x000003E7
	cmp r1, #1
	movlt r1, #1
	cmp r1, r2
	movgt r1, r2
	ldrb r2, [r0, #0x17]
	and r3, r1, #0x300
	mov r3, r3, asr #8
	and r2, r2, #0xcf
	orr r2, r2, r3, lsl #4
	strb r2, [r0, #0x17]
	strb r1, [r0, #0x14]
	bx lr
_021327B4: .word 0x000003E7
	arm_func_end FUN_ov126_02132780

	arm_func_start FUN_ov126_021327b8
FUN_ov126_021327b8: ; 0x021327B8
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0213281C
_021327C4: ; jump table
	b _02132808 ; case 0
	b _021327D8 ; case 1
	b _021327F0 ; case 2
	b _021327D8 ; case 3
	b _021327F0 ; case 4
_021327D8:
	ldrb r1, [r0, #0x15]
	mov r0, #1
	cmp r1, #1
	cmpne r1, #3
	movne r0, #0
	bx lr
_021327F0:
	ldrb r1, [r0, #0x15]
	mov r0, #1
	cmp r1, #2
	cmpne r1, #4
	movne r0, #0
	bx lr
_02132808:
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_0213281C:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov126_021327b8

	arm_func_start FUN_ov126_02132824
FUN_ov126_02132824: ; 0x02132824
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	mov r4, r1
	bl FUN_ov132_02144770
	mov r6, r0
	mov r0, r9
	mov r1, r6
	ldr r7, _02132C1C ; =0x0209A2C0
	ldr r8, _02132C20 ; =0x0209A7FC
	bl FUN_ov132_02143cd0
	bl FUN_02040118
	mov r2, r0
	mov r0, r9
	mov r1, #2
	bl FUN_ov132_02144b00
	mov r5, r0
	cmp r4, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	str r4, [r7]
	str r4, [r7, #4]
	mov r10, #0x80000000
	str r4, [r7, #8]
	str r10, [r7, #0x18]
	str r10, [r7, #0x1c]
	sub r11, r10, #0x80000001
	str r11, [r7, #0x48]
	mov r0, r7
	mov r1, r4
	str r11, [r7, #0x4c]
	bl FUN_ov126_0212fbf4
	strb r4, [r7, #0x5c]
	strb r4, [r7, #0x5e]
	strb r4, [r7, #0x59]
	strb r4, [r7, #0x5f]
	strh r4, [r7, #0x54]
	str r11, [r7, #0x48]
	str r11, [r7, #0x4c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x34]
	str r4, [r7, #0x3c]
	mov r11, #1
	str r4, [r7, #0x38]
	mov r0, r7
	mov r1, r11
	strb r4, [r7, #0x58]
	bl FUN_ov126_0212fbe0
	ldr r0, _02132C24 ; 0x02099EF0
	str r4, [r7]
	ldr r0, [r0]
	str r4, [r7, #4]
	bl FUN_ov132_02147e9c
	mov r0, r9
	bl FUN_ov132_02144780
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132908: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	b _0213292C ; case 1
	b _02132958 ; case 2
	b _02132958 ; case 3
	b _021329E8 ; case 4
	b _02132A6C ; case 5
	b _02132AF8 ; case 6
	b _02132B7C ; case 7
	b _021329E8 ; case 8
_0213292C:
	mov r0, r9
	bl FUN_01ff9904
	mov r0, r9
	mov r1, r6
	bl FUN_ov126_02135884
	str r0, [r7]
	mov r0, r9
	mov r1, r6
	bl FUN_ov126_02135a5c
	str r0, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132958:
	add r0, r9, #0x74
	bl FUN_02040a80
	cmp r0, #0
	mov r0, r9
	bne _021329E0
	add r1, r9, #0x74
	mov r2, #0x1000
	bl FUN_ov132_0213f644
	str r10, [r7, #0x18]
	str r10, [r7, #0x1c]
	ldr r1, [r7]
	mov r0, r7
	str r1, [r7, #0xc]
	ldr r2, [r7, #4]
	mov r1, r11
	str r2, [r7, #0x10]
	ldr r2, [r7, #8]
	str r2, [r7, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r7
	mov r1, r11
	bl FUN_ov126_0212fc1c
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x40]
	strb r4, [r7, #0x5c]
	strh r4, [r7, #0x54]
	ldr r0, [r9, #0x74]
	str r0, [r7]
	ldr r0, [r9, #0x78]
	str r0, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021329E0:
	bl FUN_01ff9904
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021329E8:
	str r10, [r7, #0x18]
	str r10, [r7, #0x1c]
	ldr r1, [r7]
	mov r0, r7
	str r1, [r7, #0xc]
	ldr r2, [r7, #4]
	mov r1, r11
	str r2, [r7, #0x10]
	ldr r2, [r7, #8]
	str r2, [r7, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r7
	mov r1, r11
	bl FUN_ov126_0212fc1c
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x40]
	strb r4, [r7, #0x5c]
	ldr r1, _02132C28 ; =0x0209A87C
	strh r4, [r7, #0x54]
	ldr r0, _02132C2C ; =0x0209A880
	ldr r1, [r1, r6, lsl #3]
	ldr r0, [r0, r6, lsl #3]
	str r1, [r7]
	str r0, [r7, #4]
	bl FUN_ov16_020f081c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	bl FUN_ov16_020f0298
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132A6C:
	str r10, [r7, #0x18]
	str r10, [r7, #0x1c]
	ldr r1, [r7]
	mov r0, r7
	str r1, [r7, #0xc]
	ldr r2, [r7, #4]
	mov r1, r11
	str r2, [r7, #0x10]
	ldr r2, [r7, #8]
	str r2, [r7, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r7
	mov r1, r11
	bl FUN_ov126_0212fc1c
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x40]
	strb r4, [r7, #0x5c]
	strh r4, [r7, #0x54]
	ldr r2, [r7, #0x28]
	ldr r0, _02132C30 ; =0x0209A720
	str r2, [r7]
	ldr r1, [r7, #0x2c]
	str r1, [r7, #4]
	ldr r0, [r0, #0xd4]
	cmp r2, r0
	ldrlt r0, [r8]
	sublt r0, r0, #0x8000
	strlt r0, [r7]
	ldrge r0, [r8, #8]
	addge r0, r0, #0x8000
	strge r0, [r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132AF8:
	str r10, [r7, #0x18]
	str r10, [r7, #0x1c]
	ldr r1, [r7]
	mov r0, r7
	str r1, [r7, #0xc]
	ldr r2, [r7, #4]
	mov r1, r11
	str r2, [r7, #0x10]
	ldr r2, [r7, #8]
	str r2, [r7, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r7
	mov r1, r11
	bl FUN_ov126_0212fc1c
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x40]
	strb r4, [r7, #0x5c]
	mov r0, r6
	strh r4, [r7, #0x54]
	bl FUN_ov16_020f078c
	cmp r0, #0
	ldreq r0, [r5, #8]
	streq r0, [r7]
	ldreq r0, [r5, #4]
	streq r0, [r7, #4]
	ldrne r0, [r5]
	strne r0, [r7]
	ldrne r0, [r5, #0xc]
	strne r0, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132B7C:
	str r10, [r7, #0x18]
	str r10, [r7, #0x1c]
	ldr r1, [r7]
	mov r0, r7
	str r1, [r7, #0xc]
	ldr r2, [r7, #4]
	mov r1, r11
	str r2, [r7, #0x10]
	ldr r2, [r7, #8]
	str r2, [r7, #0x14]
	bl FUN_ov126_0212fbe0
	mov r0, r7
	mov r1, r11
	bl FUN_ov126_0212fc1c
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x40]
	strb r4, [r7, #0x5c]
	strh r4, [r7, #0x54]
	ldr r0, _02132C30 ; =0x0209A720
	ldr r1, [r7, #0x28]
	ldr r0, [r0, #0xd4]
	cmp r1, r0
	ldrlt r0, [r8]
	addlt r0, r0, #0x3000
	ldrge r0, [r8, #8]
	subge r0, r0, #0x3000
	str r0, [r7]
	mov r0, r6
	bl FUN_ov16_020f078c
	cmp r0, #0
	ldreq r0, [r8, #4]
	addeq r0, r0, #0x3000
	streq r0, [r7, #4]
	ldrne r0, [r8, #0xc]
	subne r0, r0, #0x3000
	strne r0, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132C1C: .word unk_0209A2C0
_02132C20: .word unk_0209A7FC
_02132C24: .word unk_02099EF0
_02132C28: .word unk_0209A87C
_02132C2C: .word unk_0209A880
_02132C30: .word unk_0209A720
	arm_func_end FUN_ov126_02132824

	arm_func_start FUN_ov126_02132c34
FUN_ov126_02132c34: ; 0x02132C34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	ldr r3, _02132E1C ; =0x0209A720
	ldr r5, _02132E20 ; =0x0213A7B8
	ldr r2, [r3, #0xd4]
	ldr r11, [r3, #0xd8]
	str r2, [sp, #4]
	add r4, sp, #0x4c
	mov r9, r0
	mov r6, r1
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	ldr r5, _02132E24 ; =0x0213A7E0
	add r4, sp, #0x24
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	mov r0, r9
	mov r8, #0
	bl FUN_ov132_02144770
	cmp r6, r0
	mov r0, r9
	moveq r8, #1
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r9
	bl FUN_ov126_0213454c
	mov r4, r0
	mov r5, #0x1000
	rsb r5, r5, #0
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl FUN_ov126_02132e30
	cmp r4, #0
	addeq sp, sp, #0x74
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r7, [r4, #0x94]
	mov r0, r9
	mov r1, r6
	add r2, sp, #0xc
	mov r3, #0xb
	strb r7, [r9, #0x334]
	bl FUN_ov126_02136e50
	mov r7, #0
	sub r0, r5, #0x13000
	mov r6, r7
	str r0, [sp, #8]
	b _02132E0C
_02132D14:
	mov r1, r6, lsl #1
	add r0, sp, #0xc
	ldrh r0, [r0, r1]
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _02132E08
	cmp r8, #0
	beq _02132D58
	bl FUN_0206cbf8
	mov r10, r0
	mov r0, r4
	bl FUN_0206cbf8
	cmp r10, r0
	beq _02132E08
	mov r0, #0x14000
	b _02132D68
_02132D58:
	bl FUN_0206d6d8
	cmp r0, #0
	bne _02132E08
	ldr r0, [sp, #8]
_02132D68:
	add r1, sp, #0x4c
	ldr r10, [r1, r7, lsl #2]
	ldr r1, [sp, #4]
	add r2, r0, r0, lsr #31
	mla r1, r0, r10, r1
	ldr r3, [r5, #0x84]
	add r0, r1, r2, asr #1
	str r0, [r3]
	add r0, sp, #0x24
	ldr r0, [r0, r7, lsl #2]
	ldr r1, [r5, #0x84]
	add r0, r0, r0, lsl #2
	add r0, r11, r0, lsl #14
	sub r0, r0, #0x1a000
	str r0, [r1, #4]
	ldr r0, _02132E28 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02132DD4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r10, r0
	bl FUN_ov16_020f081c
	cmp r10, r0
	beq _02132DD4
	ldr r0, [r5, #0x84]
	bl FUN_ov16_020f0298
_02132DD4:
	mov r0, r9
	mov r1, r5
	bl FUN_ov132_0213ca8c
	ldr r0, [r5, #0x84]
	mov r1, r5
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	mov r0, #0
	str r0, [sp]
	ldr r0, _02132E2C ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
	add r7, r7, #1
_02132E08:
	add r6, r6, #1
_02132E0C:
	cmp r6, #0xb
	blt _02132D14
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02132E1C: .word unk_0209A720
_02132E20: .word ov126_0213A7B8
_02132E24: .word ov126_0213A7E0
_02132E28: .word unk_020A0640
_02132E2C: .word unk_02099F14
	arm_func_end FUN_ov126_02132c34

	arm_func_start FUN_ov126_02132e30
FUN_ov126_02132e30: ; 0x02132E30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _02132E7C ; =0x0209A2C0
	mov r5, r2
	movs r6, r1
	mov r7, r0
	ldmia r3, {r2, r4}
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x84]
	mov r0, r6
	str r2, [r1]
	bl FUN_ov16_020f07d0
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl FUN_01ffb1b0
	ldr r1, [r6, #0x84]
	add r0, r4, r0
	str r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02132E7C: .word unk_0209A2C0
	arm_func_end FUN_ov126_02132e30

	arm_func_start FUN_ov126_02132e80
FUN_ov126_02132e80: ; 0x02132E80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r3, _02132EEC ; =0x0209A2C0
	mov r6, r2
	ldr r4, [r3]
	ldr r2, [r3, #4]
	mvn r3, #0
	str r3, [sp]
	str r1, [sp, #4]
	mov r5, #0
	str r5, [sp, #8]
	mov r1, r4
	mov r3, r5
	mov r7, r0
	str r5, [sp, #0xc]
	bl FUN_ov132_0214c60c
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_ov126_02132e30
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02132EEC: .word unk_0209A2C0
	arm_func_end FUN_ov126_02132e80

	arm_func_start FUN_ov126_02132ef0
FUN_ov126_02132ef0: ; 0x02132EF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov126_02132e80
	movs r4, r0
	beq _02132F58
	ldrsh r2, [r4, #0x94]
	ldr r1, _02132F6C ; =0x0209A720
	str r2, [r5, #0x5c4]
	ldr r2, [r4, #0x84]
	ldr r1, [r1, #0xd4]
	ldr r2, [r2]
	cmp r2, r1
	mov r2, #1
	bge _02132F44
	mov r1, #2
	b _02132F48
_02132F44:
	mov r1, #6
_02132F48:
	bl FUN_0206daf8
	ldr r1, [r4, #0x84]
	ldrb r0, [r1, #0x1a]
	strb r0, [r1, #0x1b]
_02132F58:
	ldr r0, _02132F70 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02132F6C: .word unk_0209A720
_02132F70: .word gLogicThink
	arm_func_end FUN_ov126_02132ef0

	arm_func_start FUN_ov126_02132f74
FUN_ov126_02132f74: ; 0x02132F74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _02133000 ; =0x0209A2C0
	mov r4, r0
	ldmia r2, {r6, r7}
	mov r8, r1
	mov r5, #0
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r7
	bl FUN_ov126_021345b0
	mov r6, r0
	mov r0, r4
	mov r1, r6
	sub r2, r5, #0x1000
	bl FUN_ov126_02132e30
	cmp r6, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrsh r2, [r6, #0x94]
	mov r0, r4
	mov r1, r8
	strb r2, [r4, #0x334]
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _02132FF8
	mov r0, r6
	bl FUN_02040148
	mov r1, r0
	ldrsh r2, [r6, #0x94]
	mov r0, r4
	bl FUN_ov126_02134734
_02132FF8:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02133000: .word unk_0209A2C0
	arm_func_end FUN_ov126_02132f74

	arm_func_start FUN_ov126_02133004
FUN_ov126_02133004: ; 0x02133004
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_ov132_02144770
	cmp r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0213302c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_02133004

	arm_func_start FUN_ov126_0213302c
FUN_ov126_0213302c: ; 0x0213302C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r2, _02133190 ; =0x0209A2C0
	mov r10, r0
	str r1, [sp]
	ldr r5, [r2, #4]
	bl FUN_ov132_02143cd0
	mov r7, r0
	mov r6, #0
	mov r0, r10
	mov r1, r7
	mov r2, r6
	bl FUN_ov132_0213f5d4
	mov r11, r0
	b _02133184
_02133064:
	ldr r1, [sp]
	mov r0, r10
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02133180
	ldr r0, [r4, #0x84]
	mov r1, r4
	ldr r0, [r0, #4]
	subs r8, r5, r0
	movmi r9, #1
	movpl r9, #0
	cmp r8, #0
	mov r0, r10
	rsblt r8, r8, #0
	bl FUN_ov126_0213a310
	cmp r0, #0
	beq _021330D8
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldr r1, [r1, #4]
	mov r2, r5
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	moveq r0, r8, asr #2
	addeq r8, r0, r0, lsl #1
	movne r8, #0
	b _02133118
_021330D8:
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0213a354
	cmp r0, #0
	beq _02133114
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldr r1, [r1, #4]
	mov r2, r5
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	moveq r8, r8, asr #2
	movne r8, r8, asr #3
	b _02133118
_02133114:
	mov r8, #0
_02133118:
	cmp r9, #0
	ldreq r1, [r4, #0x84]
	ldreq r0, [r1, #4]
	addeq r0, r0, r8
	streq r0, [r1, #4]
	beq _02133144
	ldr r2, [r4, #0x84]
	rsb r0, r8, #0
	ldr r1, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #4]
_02133144:
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldr r1, [r1, #4]
	mov r2, r11
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _02133180
	mov r0, r10
	mov r1, r7
	mov r2, #0x10000
	bl FUN_01ffb1b0
	ldr r1, [r4, #0x84]
	add r0, r11, r0
	str r0, [r1, #4]
_02133180:
	add r6, r6, #1
_02133184:
	cmp r6, #0xb
	blt _02133064
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133190: .word unk_0209A2C0
	arm_func_end FUN_ov126_0213302c

	arm_func_start FUN_ov126_02133194
FUN_ov126_02133194: ; 0x02133194
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _02133340 ; =0x0209A2C0
	mov r10, r0
	str r1, [sp]
	ldr r5, [r4, #4]
	bl FUN_ov132_02143cd0
	mov r7, r0
	mov r0, r10
	mov r1, r7
	mov r2, #0
	bl FUN_ov132_0213f5d4
	mov r11, r0
	mov r0, r10
	bl FUN_ov132_02144770
	ldr r1, [sp]
	cmp r1, r0
	beq _0213320C
	mov r0, r10
	bl FUN_ov126_02135a40
	mov r2, r0
	mov r0, r10
	mov r1, r5
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _0213320C
	ldr r0, [r4, #4]
	mov r1, r11
	bl FUN_0203fc70
	mov r5, r0
_0213320C:
	mov r6, #0
	b _02133334
_02133214:
	ldr r1, [sp]
	mov r0, r10
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02133330
	ldr r0, [r4, #0x84]
	mov r1, r4
	ldr r0, [r0, #4]
	subs r8, r5, r0
	movmi r9, #1
	movpl r9, #0
	cmp r8, #0
	mov r0, r10
	rsblt r8, r8, #0
	bl FUN_ov126_0213a310
	cmp r0, #0
	beq _02133288
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldr r1, [r1, #4]
	mov r2, r5
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	moveq r0, r8, asr #2
	addeq r8, r0, r0, lsl #1
	movne r8, #0
	b _021332C8
_02133288:
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_0213a354
	cmp r0, #0
	beq _021332C4
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldr r1, [r1, #4]
	mov r2, r5
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	moveq r8, r8, asr #2
	movne r8, r8, asr #3
	b _021332C8
_021332C4:
	mov r8, #0
_021332C8:
	cmp r9, #0
	ldreq r1, [r4, #0x84]
	ldreq r0, [r1, #4]
	addeq r0, r0, r8
	streq r0, [r1, #4]
	beq _021332F4
	ldr r2, [r4, #0x84]
	rsb r0, r8, #0
	ldr r1, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #4]
_021332F4:
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldr r1, [r1, #4]
	mov r2, r11
	mov r3, r7
	bl FUN_01ffb9b0
	cmp r0, #0
	beq _02133330
	mov r0, r10
	mov r1, r7
	mov r2, #0x10000
	bl FUN_01ffb1b0
	ldr r1, [r4, #0x84]
	add r0, r11, r0
	str r0, [r1, #4]
_02133330:
	add r6, r6, #1
_02133334:
	cmp r6, #0xb
	blt _02133214
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133340: .word unk_0209A2C0
	arm_func_end FUN_ov126_02133194

	arm_func_start FUN_ov126_02133344
FUN_ov126_02133344: ; 0x02133344
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	ldr r1, _02133418 ; =0x0209A2C0
	mov r8, #0
	ldmia r1, {r9, r10}
	mov r5, r0
	bl FUN_ov132_02144770
	mov r7, r0
	sub r6, r8, #1
	stmia sp, {r6, r7, r8}
	mov r0, r5
	mov r1, r9
	mov r2, r10
	mov r3, #0x10
	str r8, [sp, #0xc]
	bl FUN_ov132_0214c60c
	movs r4, r0
	bne _021333AC
	stmia sp, {r6, r7, r8}
	mov r0, r5
	mov r1, r9
	mov r2, r10
	mov r3, r8
	str r8, [sp, #0xc]
	bl FUN_ov132_0214c60c
	mov r4, r0
_021333AC:
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_ov126_02132e30
	cmp r4, #0
	beq _02133400
	ldrsh r1, [r4, #0x94]
	ldr r0, _0213341C ; =0x0209A720
	mov r2, #1
	str r1, [r5, #0x5c4]
	ldr r1, [r4, #0x84]
	ldr r0, [r0, #0xd4]
	ldr r1, [r1]
	mov r5, #2
	cmp r1, r0
	movge r5, #6
	mov r0, r4
	mov r1, r5
	bl FUN_0206daf8
	ldr r0, [r4, #0x84]
	strb r5, [r0, #0x1b]
_02133400:
	ldr r0, _02133420 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02133418: .word unk_0209A2C0
_0213341C: .word unk_0209A720
_02133420: .word gLogicThink
	arm_func_end FUN_ov126_02133344

	arm_func_start FUN_ov126_02133424
FUN_ov126_02133424: ; 0x02133424
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _021335D4 ; =0x0209A2C0
	ldr r7, [sp, #0x28]
	str r1, [sp]
	mov r10, r0
	mov r9, r2
	mov r8, r3
	ldr r11, [sp, #0x30]
	ldr r4, [r4]
	mov r5, #0
	bl FUN_ov132_02144770
	cmp r7, r0
	mov r6, #1
	ldr r0, [sp]
	movne r6, r5
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _021335B0
_0213346C: ; jump table
	b _021335B0 ; case 0
	b _02133490 ; case 1
	b _02133588 ; case 2
	b _02133588 ; case 3
	b _021335A4 ; case 4
	b _02133560 ; case 5
	b _02133528 ; case 6
	b _021334A0 ; case 7
	b _021335A4 ; case 8
_02133490:
	cmp r6, #0
	addne r5, r8, #8
	addeq r5, r8, #0x10
	b _021335B0
_021334A0:
	cmp r6, #0
	beq _021334E8
	cmp r9, #0
	bne _021334C0
	ldr r0, _021335D8 ; =0x0209A720
	ldr r0, [r0, #0xd4]
	cmp r4, r0
	blt _021334D8
_021334C0:
	cmp r9, #0
	beq _021334E0
	ldr r0, _021335D8 ; =0x0209A720
	ldr r0, [r0, #0xd4]
	cmp r4, r0
	blt _021334E0
_021334D8:
	add r5, r8, #0x28
	b _021335B0
_021334E0:
	add r5, r8, #0x30
	b _021335B0
_021334E8:
	cmp r9, #0
	bne _02133500
	ldr r0, _021335D8 ; =0x0209A720
	ldr r0, [r0, #0xd4]
	cmp r4, r0
	blt _02133518
_02133500:
	cmp r9, #0
	beq _02133520
	ldr r0, _021335D8 ; =0x0209A720
	ldr r0, [r0, #0xd4]
	cmp r4, r0
	blt _02133520
_02133518:
	add r5, r8, #0x38
	b _021335B0
_02133520:
	add r5, r8, #0x40
	b _021335B0
_02133528:
	cmp r6, #0
	mov r0, r10
	mov r1, r7
	mov r2, r8
	beq _02133544
	bl FUN_ov126_02138abc
	b _02133548
_02133544:
	bl FUN_ov126_02138afc
_02133548:
	mov r5, r0
	ldrb r0, [sp, #0x2c]
	cmp r0, #0
	cmpne r6, #0
	ldrne r5, _021335D4 ; =0x0209A2C0
	b _021335B0
_02133560:
	cmp r6, #0
	mov r0, r10
	mov r1, r7
	mov r2, r8
	beq _0213357C
_02133574:
	bl FUN_ov126_02138abc
	b _02133580
_0213357C:
	bl FUN_ov126_02138afc
_02133580:
	mov r5, r0
	b _021335B0
_02133588:
	cmp r6, #0
	mov r0, r10
	mov r1, r7
	mov r2, r8
	beq _021335A0
	b _02133574
_021335A0:
	b _0213357C
_021335A4:
	add r5, r8, #0x48
	cmp r6, #0
	addeq r5, r8, #0x50
_021335B0:
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5]
	mov r0, #1
	str r1, [r11]
	ldr r1, [r5, #4]
	str r1, [r11, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021335D4: .word unk_0209A2C0
_021335D8: .word unk_0209A720
	arm_func_end FUN_ov126_02133424

	arm_func_start FUN_ov126_021335dc
FUN_ov126_021335dc: ; 0x021335DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r10, r0
	str r1, [sp, #0xc]
	mov r8, #0
	bl FUN_ov132_02144780
	ldr r1, _02133AF8 ; =0x0209BA20
	mov r9, r0
	ldrb r0, [r1, #0x88c]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov132_02144780
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0xc]
	mov r0, r10
	ldr r11, _02133AFC ; =0x0209A7FC
	bl FUN_ov126_02138a54
	mov r0, r10
	bl FUN_ov126_0213921c
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl FUN_ov132_02143cd0
	cmp r0, #0
	movne r0, #4
	strne r0, [sp, #0x18]
	streq r8, [sp, #0x18]
	mov r7, #0
	b _021337F0
_0213365C:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _021337EC
	ldr r1, [r4, #0x88]
	str r8, [r1, #0x10]
	ldr r1, [r4, #0x88]
	str r8, [r1, #0x14]
	ldr r1, [r4, #0x88]
	str r8, [r1, #0x18]
	bl FUN_0206da98
	str r8, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r4
	mov r2, r8
	mov r3, r8
	bl FUN_ov132_0213c29c
	ldr r1, [r4, #0x84]
	mov r0, r4
	strb r8, [r1, #0x1c]
	strh r8, [r1, #0x12]
	strh r8, [r1, #0x14]
	bl FUN_0206d5f0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bne _021337EC
	mov r0, r10
	bl FUN_ov132_02144770
	mov r0, r4
	bl FUN_0206d5f0
	ldr r2, [r4, #0x84]
	mov r0, #1
	strb r0, [r2, #0x1d]
	str r0, [sp]
	ldr r0, _02133B00 ; =0x02099F14
	ldr r3, [sp, #0x18]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r8
	bl FUN_ov1_020e3c14
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	beq _021337EC
	ldr r1, [r4, #0x84]
	mov r0, r10
	ldmia r1, {r5, r6}
	mov r1, r4
	bl FUN_ov126_02135124
	str r0, [sp, #0x20]
	mov r0, r4
	bl FUN_ov16_020f07d0
	str r0, [sp, #0x14]
	mov r0, r4
	bl FUN_0206d5f0
	str r0, [sp, #0x10]
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	mov r1, #1
	ldr r0, [sp, #0x10]
	moveq r1, r8
	stmia sp, {r0, r1}
	add r0, sp, #0x2c
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x20]
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02133424
	cmp r0, #0
	ldrne r5, [sp, #0x2c]
	ldrne r6, [sp, #0x30]
	bne _021337C4
	ldr r0, [r11]
	cmp r5, r0
	movlt r5, r0
	blt _021337A8
	ldr r0, [r11, #8]
	cmp r5, r0
	movgt r5, r0
_021337A8:
	ldr r0, [r11, #4]
	cmp r6, r0
	movlt r6, r0
	blt _021337C4
	ldr r0, [r11, #0xc]
	cmp r6, r0
	movgt r6, r0
_021337C4:
	ldr r1, [r4, #0x84]
	mov r0, r4
	str r5, [r1]
	ldr r2, [r4, #0x84]
	mov r1, #0x98
	str r6, [r2, #4]
	ldr r3, [r4, #0x84]
	ldrb r2, [r3, #0x1a]
	strb r2, [r3, #0x1b]
	bl DC_FlushRange
_021337EC:
	add r7, r7, #1
_021337F0:
	cmp r7, #0x20
	blt _0213365C
	ldr r0, _02133AF8 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	str r0, [sp, #0x1c]
	bl FUN_02043c5c
	mov r0, r10
	bl FUN_ov132_02144770
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bne _02133960
	str r8, [r10, #0x5c4]
	cmp r9, #7
	mov r0, r10
	bne _02133834
	bl FUN_ov126_02132ef0
	b _021339D8
_02133834:
	mov r1, r9
	bl FUN_ov132_02145318
	cmp r0, #0
	bne _0213384C
	cmp r9, #4
	bne _0213385C
_0213384C:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02132f74
	b _021339D8
_0213385C:
	cmp r9, #5
	bne _0213387C
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl FUN_ov126_02133194
	mov r0, r10
	bl FUN_ov126_02133344
	b _021339D8
_0213387C:
	cmp r9, #6
	mov r0, r10
	bne _02133944
	ldr r1, [sp, #0xc]
	bl FUN_ov126_02133004
	mov r0, r10
	bl FUN_ov132_02144770
	mov r2, #0x1000
	mov r1, r0
	mov r0, r10
	rsb r2, r2, #0
	bl FUN_ov126_02132e80
	movs r5, r0
	beq _021339D8
	bl FUN_0206d5f0
	mov r6, r0
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r7, r0
	mov r8, #0
	add r11, sp, #0x24
	b _02133938
_021338D4:
	mov r0, r10
	mov r1, r8
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _02133934
	bl FUN_0206d5f0
	cmp r6, r0
	bne _02133934
	cmp r4, r5
	beq _02133934
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	bne _02133934
	ldr r2, [r4, #0x84]
	mov r0, r10
	mov r1, r7
	mov r3, r11
	bl FUN_ov132_02140b38
	cmp r0, #0
	ldrne r2, [sp, #0x28]
	ldrne r1, [sp, #0x24]
	ldrne r0, [r4, #0x84]
	stmneia r0, {r1, r2}
_02133934:
	add r8, r8, #1
_02133938:
	cmp r8, #0x16
	blt _021338D4
	b _021339D8
_02133944:
	bl FUN_ov132_02144770
	mov r2, #0x1000
	mov r1, r0
	mov r0, r10
	rsb r2, r2, #0
	bl FUN_ov126_02132e80
	b _021339D8
_02133960:
	mov r0, r1
	bl FUN_02040138
	ldr r3, _02133B04 ; =0x0209A2C0
	mov r1, r0
	mov r0, r10
	ldmia r3, {r2, r3}
	bl FUN_ov126_021345b0
	cmp r9, #4
	bne _021339A0
	cmp r0, #0
	ldrnesh r2, [r0, #0x94]
	ldr r1, [sp, #0xc]
	mov r0, r10
	mvneq r2, #0
	bl FUN_ov126_02134734
	b _021339D8
_021339A0:
	mov r0, r10
	mov r1, r9
	bl FUN_ov132_02145318
	cmp r0, #0
	beq _021339B8
	b _021339CC
_021339B8:
	cmp r9, #5
	bne _021339D8
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl FUN_ov126_02133194
_021339CC:
	mov r0, r10
	mov r1, r9
	bl FUN_ov126_02134808
_021339D8:
	cmp r9, #8
	bne _021339EC
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl FUN_ov126_02132c34
_021339EC:
	ldr r0, [sp, #0x1c]
	bl FUN_02043c5c
	cmp r9, #8
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #7
	cmpne r9, #8
	cmpne r9, #1
	cmpne r9, #4
	beq _02133AE8
	mov r0, r10
	bl FUN_ov132_02144770
	mov r2, #0x1000
	mov r1, r0
	mov r0, r10
	rsb r2, r2, #0
	bl FUN_ov126_02132e80
	mov r11, #0x3f000000
	mov r9, r0
	mov r7, #0
	mov r8, #0x30
	mov r6, r11
	b _02133AE0
_02133A48:
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_0213922c
	movs r4, r0
	cmpne r9, r4
	beq _02133ADC
	mov r0, r8
	bl FUN_ov16_020ef8d4
	add r0, r0, #0x10
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02133A90
	bl _fflt
	mov r1, r0
	mov r0, r6
	bl _fadd
	b _02133A9C
_02133A90:
	bl _fflt
	mov r1, r11
	bl _fsub
_02133A9C:
	bl _ffix
	mov r2, r0
	mov r0, #1
	str r0, [sp]
	mov r0, r10
	mov r1, r4
	mov r3, #1
	bl FUN_ov132_0213f55c
	mov r5, r0
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	ldreq r0, [r4, #0x84]
	streq r5, [r0, #4]
_02133ADC:
	add r7, r7, #1
_02133AE0:
	cmp r7, #0x16
	blt _02133A48
_02133AE8:
	ldr r0, [sp, #0x1c]
	bl FUN_02043c5c
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133AF8: .word gLogicThink
_02133AFC: .word unk_0209A7FC
_02133B00: .word unk_02099F14
_02133B04: .word unk_0209A2C0
	arm_func_end FUN_ov126_021335dc

	arm_func_start FUN_ov126_02133b08
FUN_ov126_02133b08: ; 0x02133B08
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov132_02144780
	mov r4, r0
	mov r0, r6
	bl FUN_ov132_02144770
	mov r5, r0
	mov r0, r6
	mov r1, #0
	bl FUN_ov126_021335dc
	mov r0, r6
	mov r1, #1
	bl FUN_ov126_021335dc
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02145318
	cmp r0, #0
	bne _02133B64
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _02133B70
_02133B64:
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_02134808
_02133B70:
	cmp r4, #6
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mvn r2, #0
	bl FUN_ov126_0213468c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02133b08

	arm_func_start FUN_ov126_02133b8c
FUN_ov126_02133b8c: ; 0x02133B8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl FUN_ov126_0213921c
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_02132824
	cmp r4, #0
	beq _02133BC4
	mov r0, r6
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
	ldmfd sp!, {r4, r5, r6, pc}
_02133BC4:
	ldr r4, _02133C6C ; =0x0209BA20
	ldr r0, [r4, #0x860]
	bl FUN_02043c5c
	mov r5, #0
	strb r5, [r6, #0x328]
	mov r1, #1
	strb r1, [r4, #0x87f]
	mov r0, r6
	strb r1, [r6, #0x330]
	bl FUN_ov132_02152eb0
	mov r0, r6
	str r5, [r6, #0x5c4]
	bl FUN_ov126_02133b08
	mov r0, r6
	bl FUN_ov132_02144f4c
	cmp r0, #0
	bne _02133C10
	mov r0, r6
	bl FUN_ov132_02143c40
_02133C10:
	mov r0, r6
	bl FUN_ov126_0213921c
	mov r0, r6
	bl FUN_ov132_0214352c
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_021435c0
	mov r0, r6
	bl FUN_ov132_02145354
	mov r0, r6
	bl FUN_ov132_0213ef94
	mov r0, r6
	mov r1, r4
	mov r2, r4
	bl FUN_ov132_02151f58
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_02151f58
	ldmfd sp!, {r4, r5, r6, pc}
_02133C6C: .word gLogicThink
	arm_func_end FUN_ov126_02133b8c

	arm_func_start FUN_ov126_02133c70
FUN_ov126_02133c70: ; 0x02133C70
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov132_02144780
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_ov126_02133cbc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_02133c70

	arm_func_start FUN_ov126_02133cbc
FUN_ov126_02133cbc: ; 0x02133CBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r7, [sp, #0x38]
	mov r10, r0
	mov r11, r1
	mov r9, r2
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	bl FUN_ov132_02144770
	str r0, [sp, #4]
	bl FUN_02040138
	mov r4, r0
	cmp r7, #1
	bne _02133D3C
	mov r0, r11
	bl FUN_ov16_020f07d0
	cmp r0, #0
	bne _02133D24
	ldr r0, _02134084 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	cmp r8, r0
	bge _02133D3C
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133D24:
	ldr r0, _02134084 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	cmp r8, r0
	addgt sp, sp, #0x14
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133D3C:
	cmp r7, #8
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #4
	bne _02133DF0
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_02143cd0
	str r0, [sp, #8]
	bl FUN_020401a0
	ldr r2, [r0, #4]
	ldr r3, [sp, #8]
	mov r0, r10
	mov r1, r8
	bl FUN_01ffb9b0
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #8]
	add r2, sp, #0xc
	mov r0, r10
	str r9, [sp, #0xc]
	str r8, [sp, #0x10]
	bl FUN_ov132_02140b08
	cmp r0, #0
	beq _02133DC4
	mov r0, r11
	bl FUN_ov16_020f0810
	cmp r4, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133DC4:
	mov r0, r10
	mov r1, r11
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02133DF0
	mov r0, r11
	bl FUN_ov16_020f0810
	cmp r4, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133DF0:
	cmp r7, #6
	bne _02133EB0
	ldr r1, [sp, #4]
	mov r0, r10
	bl FUN_ov132_02143cd0
	str r0, [sp]
	mov r0, r11
	bl FUN_ov16_020f0810
	cmp r4, r0
	bne _02133E4C
	mov r0, r9
	mov r1, r8
	bl FUN_02040644
	cmp r0, #0
	bne _02133E4C
	cmp r6, #0
	cmpeq r5, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_020406a4
_02133E4C:
	cmp r6, #0
	cmpne r5, #0
	ldrne r1, [r5]
	ldrne r0, [r6]
	add r2, sp, #0xc
	strne r1, [sp, #0x10]
	strne r0, [sp, #0xc]
	ldr r1, [sp]
	mov r0, r10
	streq r9, [sp, #0xc]
	streq r8, [sp, #0x10]
	bl FUN_ov132_02140b08
	cmp r0, #0
	beq _02133EB0
	mov r0, r11
	bl FUN_ov16_020f0810
	cmp r4, r0
	bne _02133EB0
	cmp r6, #0
	cmpne r5, #0
	strne r9, [r6]
	add sp, sp, #0x14
	strne r8, [r5]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133EB0:
	mov r0, r10
	mov r1, #1
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _02133F04
	mov r0, #1
	bl FUN_02040170
	ldr r1, [r0]
	cmp r9, r1
	blt _02133F04
	ldr r1, [r0, #8]
	cmp r9, r1
	ldrle r1, [r0, #0xc]
	cmple r8, r1
	bge _02133F04
	cmp r5, #0
	movne r0, #1
	add sp, sp, #0x14
	strne r1, [r5]
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133F04:
	mov r4, #0
	mov r0, r10
	mov r1, r4
	bl FUN_ov132_021461f8
	cmp r0, #0
	beq _02133F60
	mov r0, r4
	bl FUN_02040170
	ldr r1, [r0]
	cmp r9, r1
	blt _02133F60
	ldr r1, [r0, #8]
	cmp r9, r1
	bgt _02133F60
	ldr r0, [r0, #4]
	cmp r8, r0
	ble _02133F60
	cmp r5, #0
	strne r0, [r5]
	movne r0, #1
	add sp, sp, #0x14
	moveq r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133F60:
	mov r0, r11
	bl FUN_0206d5f0
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _02133FEC
	cmp r7, #0
	beq _0213402C
	cmp r7, #5
	beq _02133F90
	cmp r7, #7
	beq _0213402C
	b _02133FAC
_02133F90:
	mov r0, r8
	bl FUN_02040618
	cmp r0, #0
	bne _0213402C
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133FAC:
	mov r0, r9
	mov r1, r8
	bl FUN_02040644
	cmp r0, #0
	bne _0213402C
	cmp r6, #0
	cmpeq r5, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_020406a4
	add sp, sp, #0x14
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02133FEC:
	mov r0, r9
	mov r1, r8
	bl FUN_02040644
	cmp r0, #0
	bne _0213402C
	cmp r6, #0
	cmpeq r5, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_020406a4
	add sp, sp, #0x14
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213402C:
	mov r0, r10
	mov r1, #9
	bl FUN_ov132_02144a84
	mov r1, r9
	mov r2, r8
	bl FUN_0204071c
	cmp r0, #0
	bne _02134078
	cmp r6, #0
	cmpeq r5, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_020406a4
	add sp, sp, #0x14
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134078:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134084: .word unk_0209A720
	arm_func_end FUN_ov126_02133cbc

	arm_func_start FUN_ov126_02134088
FUN_ov126_02134088: ; 0x02134088
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r9, r0
	bl FUN_ov132_02144780
	mov r8, r0
	mov r0, r9
	bl FUN_ov132_02144770
	bl FUN_02040138
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, r9
	bl FUN_ov132_02143cd0
	mov r11, r0
	bl FUN_020401a0
	mov r7, r0
	mov r1, #1
	cmp r8, #7
	movne r1, #0
	mov r0, #0x8000
	mov r0, r0, asr r1
	add r0, r0, #0x1000
	str r0, [sp, #4]
	mvn r0, #0
	str r0, [sp, #0xc]
	bl FUN_ov16_020f081c
	mov r4, r0
	mov r0, r9
	bl FUN_ov132_02144770
	cmp r4, r0
	bne _02134330
	ldr r0, [sp, #0xc]
	ldr r5, [sp, #4]
	str r0, [sp, #0x14]
	mov r4, #0
	str r0, [sp, #0x18]
	b _02134304
_02134118:
	mov r0, r4
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02134300
	bl FUN_0206d660
	cmp r0, #0
	beq _02134300
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	beq _02134300
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	bne _02134300
	mov r0, r6
	bl FUN_ov16_020f0810
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02134300
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _02134228
	mov r0, r9
	mov r1, r6
	ldr r2, [r7, #4]
	bl FUN_01ffb9e4
	cmp r0, #0
	bne _021341D4
	ldr r1, [r6, #0x84]
	ldr r0, [r7, #4]
	ldr r1, [r1, #4]
	cmp r0, r1
	beq _021341D4
	ldr r0, _02134538 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021341C8
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _021341D4
_021341C8:
	add sp, sp, #0x1c
	mvn r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021341D4:
	mov r0, r9
	mov r1, r11
	ldr r2, [r6, #0x84]
	bl FUN_ov132_02140b08
	cmp r0, #0
	bne _02134208
	ldr r2, [r6, #0x84]
	mov r0, r9
	mov r1, r11
	mov r3, #0x87
	bl FUN_ov132_02140b20
	cmp r0, #0
	beq _02134228
_02134208:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	addne sp, sp, #0x1c
	mvnne r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r0, [r6, #0x94]
	str r0, [sp, #0xc]
_02134228:
	mov r0, r6
	bl FUN_ov16_020f0810
	mov r10, r0
	mov r0, r9
	bl FUN_ov132_02144770
	cmp r10, r0
	bne _02134300
	ldr r1, [r6, #0x84]
	ldr r0, _0213453C ; =0x0209A2C0
	ldr r1, [r1]
	ldr r0, [r0]
	ldr r2, [r6, #0x84]
	subs r0, r1, r0
	ldr r1, _0213453C ; =0x0209A2C0
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	rsbmi r0, r0, #0
	subs r1, r2, r1
	rsbmi r1, r1, #0
	cmp r0, r5
	cmple r1, r5
	bgt _02134300
	ldr r2, [r6, #0x84]
	mov r0, r9
	ldr r1, [r2, #4]
	ldr r3, [r2]
	ldr r2, _0213453C ; =0x0209A2C0
	str r1, [sp]
	ldr r1, _0213453C ; =0x0209A2C0
	ldr r2, [r2, #4]
	ldr r1, [r1]
	bl FUN_01ffba98
	mov r10, r0
	cmp r5, r10
	ble _02134300
	cmp r8, #5
	bne _021342D4
	ldr r1, [r6, #0x84]
	ldr r0, _02134540 ; =0x0209A7FC
	bl FUN_02040764
	cmp r0, #0
	bne _02134300
	b _021342F8
_021342D4:
	cmp r8, #2
	cmpne r8, #3
	cmpne r8, #7
	bne _021342F8
	ldr r1, [r6, #0x84]
	ldr r0, _02134540 ; =0x0209A7FC
	bl FUN_02040764
	cmp r0, #0
	beq _02134300
_021342F8:
	mov r5, r10
	str r4, [sp, #0x14]
_02134300:
	add r4, r4, #1
_02134304:
	cmp r4, #0x20
	blt _02134118
	ldr r0, [sp, #0x14]
	cmp r0, #0
	blt _02134324
	ldr r0, [sp, #4]
	cmp r5, r0
	ble _02134330
_02134324:
	add sp, sp, #0x1c
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134330:
	bl FUN_ov16_020f081c
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _0213452C
	mvn r0, #0
	cmp r8, #5
	str r0, [sp, #0x14]
	moveq r5, #0x20000
	beq _02134360
	ldr r5, _02134544 ; =0x00042E66
	cmp r8, #1
	ldrne r5, _02134548 ; =0x00036E66
_02134360:
	mov r4, #0
	mov r0, r9
	mov r1, r11
	mov r2, r4
	bl FUN_ov132_0213f5d4
	str r0, [sp, #0x10]
	b _02134510
_0213437C:
	mov r0, r4
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0213450C
	bl FUN_0206d660
	cmp r0, #0
	beq _0213450C
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	beq _0213450C
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	bne _0213450C
	mov r0, r6
	bl FUN_ov16_020f0810
	mov r10, r0
	mov r0, r9
	bl FUN_ov132_02144770
	cmp r10, r0
	beq _0213450C
	ldr r0, _02134538 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021343F4
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _0213450C
_021343F4:
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _0213446C
	mov r0, r9
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _0213450C
	ldr r2, [r7, #4]
	mov r0, r9
	mov r1, r6
	bl FUN_01ffb9e4
	cmp r0, #0
	ldrne r1, [r6, #0x84]
	ldrne r0, [r7, #4]
	ldrne r1, [r1, #4]
	cmpne r0, r1
	addne sp, sp, #0x1c
	mvnne r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r6, #0x84]
	mov r0, r9
	mov r1, r11
	bl FUN_ov132_02140b08
	cmp r0, #0
	addne sp, sp, #0x1c
	mvnne r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213446C:
	mov r0, r9
	mov r1, r8
	bl FUN_ov132_02145318
	cmp r0, #0
	beq _0213449C
	ldr r0, [r6, #0x84]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x10]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r0, #0x4000
	blt _0213450C
_0213449C:
	ldr r1, [r6, #0x84]
	ldr r0, _0213453C ; =0x0209A2C0
	ldr r1, [r1]
	ldr r0, [r0]
	ldr r2, [r6, #0x84]
	subs r0, r1, r0
	ldr r1, _0213453C ; =0x0209A2C0
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	rsbmi r0, r0, #0
	subs r1, r2, r1
	rsbmi r1, r1, #0
	cmp r0, r5
	cmple r1, r5
	bgt _0213450C
	ldr r2, [r6, #0x84]
	mov r0, r9
	ldr r1, [r2, #4]
	ldr r3, [r2]
	ldr r2, _0213453C ; =0x0209A2C0
	str r1, [sp]
	ldr r1, _0213453C ; =0x0209A2C0
	ldr r2, [r2, #4]
	ldr r1, [r1]
	bl FUN_01ffba98
	cmp r5, r0
	movgt r5, r0
	strgt r4, [sp, #0x14]
_0213450C:
	add r4, r4, #1
_02134510:
	cmp r4, #0x20
	blt _0213437C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addge sp, sp, #0x1c
	mvnge r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213452C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134538: .word unk_020A0640
_0213453C: .word unk_0209A2C0
_02134540: .word unk_0209A7FC
_02134544: .word 0x00042E66
_02134548: .word 0x00036E66
	arm_func_end FUN_ov126_02134088

	arm_func_start FUN_ov126_0213454c
FUN_ov126_0213454c: ; 0x0213454C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r3, #0xb
	mov r2, r4
	mov r6, r0
	mov r5, r1
	bl FUN_ov126_02136e50
	cmp r0, #0
	bne _02134590
	ldr r1, _021345AC ; =0x0209A2C0
	mov r0, r6
	ldmia r1, {r2, r3}
	mov r1, r5
	bl FUN_ov126_021345b0
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_02134590:
	ldrb r0, [r6, #0x363]
	mov r1, #0
	mov r0, r0, lsl #1
	ldrh r0, [r4, r0]
	bl FUN_ov16_020efa9c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_021345AC: .word unk_0209A2C0
	arm_func_end FUN_ov126_0213454c

	arm_func_start FUN_ov126_021345b0
FUN_ov126_021345b0: ; 0x021345B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r6, _02134688 ; =0x0209BA20
	mov r4, #0
	mov r9, r2
	mov r2, r4
	str r4, [sp, #4]
	mov r10, r0
	mov r11, r1
	mov r8, r3
	sub r5, r2, #0x80000001
	ldr r7, [r6, #0x860]
	bl FUN_ov132_02143cd0
	str r0, [sp]
	mov r6, r4
_021345EC:
	mov r0, r10
	mov r1, r11
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02134670
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02134640
	ldr r1, [sp]
	mov r0, r10
	add r2, sp, #8
	str r9, [sp, #8]
	str r8, [sp, #0xc]
	bl FUN_ov132_02140b50
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134640:
	ldr r1, [r4, #0x84]
	ldr r0, [r1, #4]
	subs r2, r8, r0
	ldr r0, [r1]
	rsbmi r2, r2, #0
	subs r1, r9, r0
	rsbmi r1, r1, #0
	mov r0, r7
	bl FUN_02043b68
	cmp r0, r5
	strlt r4, [sp, #4]
	movlt r5, r0
_02134670:
	add r6, r6, #1
	cmp r6, #0xb
	blt _021345EC
	ldr r0, [sp, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134688: .word gLogicThink
	arm_func_end FUN_ov126_021345b0

	arm_func_start FUN_ov126_0213468c
FUN_ov126_0213468c: ; 0x0213468C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl FUN_02040138
	mov r0, r7
	mov r1, r6
	bl FUN_ov132_02143cd0
	mov r9, r0
	bl FUN_02040188
	mov r10, r0
	mov r0, r9
	bl FUN_020401a0
	mov r4, #0
_021346C8:
	mov r0, r7
	mov r1, r4
	bl FUN_ov126_0213922c
	movs r8, r0
	ldrnesh r1, [r8, #0x94]
	cmpne r1, r5
	beq _02134724
	bl FUN_0206d5f0
	cmp r6, r0
	beq _02134724
	ldr r8, [r8, #0x84]
	mov r2, r10
	ldmia r8, {r0, r1}
	bl FUN_02040ae4
	cmp r0, #0
	beq _02134724
	cmp r9, #1
	ldreq r0, [r10, #0xc]
	addeq r0, r0, #0x6000
	streq r0, [r8, #4]
	ldrne r0, [r10, #4]
	subne r0, r0, #0x6000
	strne r0, [r8, #4]
_02134724:
	add r4, r4, #1
	cmp r4, #0x16
	blt _021346C8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov126_0213468c

	arm_func_start FUN_ov126_02134734
FUN_ov126_02134734: ; 0x02134734
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r0
	mov r6, r1
	mov r11, r2
	bl FUN_ov132_02143cd0
	mov r8, r0
	bl FUN_02040188
	mov r9, r0
	mov r0, r8
	bl FUN_020401a0
	mov r4, r0
	mov r5, #0
_02134764:
	mov r0, r7
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r10, r0
	ldrnesh r0, [r10, #0x94]
	cmpne r0, r11
	beq _021347F8
	mov r0, r7
	mov r1, r10
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _021347A4
	ldrsh r0, [r10, #0x94]
	bl FUN_ov16_020f07f4
	cmp r6, r0
	beq _021347F8
_021347A4:
	ldr r10, [r10, #0x84]
	ldr r2, [r4, #4]
	ldr r1, [r10, #4]
	mov r0, r7
	mov r3, r8
	bl FUN_01ffb9b0
	cmp r0, #0
	ldrne r0, [r4, #4]
	mov r2, r9
	strne r0, [r10, #4]
	ldmia r10, {r0, r1}
	bl FUN_02040ae4
	cmp r0, #0
	beq _021347F8
	cmp r8, #1
	ldreq r0, [r9, #0xc]
	addeq r0, r0, #0x6000
	streq r0, [r10, #4]
	ldrne r0, [r9, #4]
	subne r0, r0, #0x6000
	strne r0, [r10, #4]
_021347F8:
	add r5, r5, #1
	cmp r5, #0x16
	blt _02134764
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_02134734

	arm_func_start FUN_ov126_02134808
FUN_ov126_02134808: ; 0x02134808
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x300
	ldrsb r0, [r0, #0x34]
	ldr r4, _02134870 ; =0x00042E66
	mov r5, r1
	cmp r5, #5
	moveq r4, #0x20000
	bl FUN_ov16_020efa80
	movs r1, r0
	bne _02134854
	mov r0, r6
	bl FUN_ov132_02144770
	ldr r3, _02134874 ; =0x0209A2C0
	mov r1, r0
	mov r0, r6
	ldmia r3, {r2, r3}
	bl FUN_ov126_021345b0
	mov r1, r0
_02134854:
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov126_02134878
	ldmfd sp!, {r4, r5, r6, pc}
_02134870: .word 0x00042E66
_02134874: .word unk_0209A2C0
	arm_func_end FUN_ov126_02134808

	arm_func_start FUN_ov126_02134878
FUN_ov126_02134878: ; 0x02134878
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x90
	mov r10, r0
	mov r0, r2
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	str r3, [sp, #0x14]
	cmp r0, #0
	addle sp, sp, #0x90
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r1
	bl FUN_02040148
	ldr r1, [sp, #0xc]
	mov r6, #0
	ldr r1, [r1, #0x84]
	str r0, [sp, #0x18]
	mov r11, r6
	ldmia r1, {r7, r8}
	b _02134A44
_021348C4:
	ldr r1, [sp, #0x18]
	mov r0, r10
	mov r2, r11
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02134A40
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x84]
	ldr r1, [r0, #0x84]
	mov r0, r10
	bl FUN_01ffba50
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _02134A40
	ldr r0, [r4, #0x84]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub r1, r1, r7
	sub r0, r0, r8
	bl FX_Atan2Idx
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	add r0, r2, #1
	ldr r1, _02134BC8 ; =FX_SinCosTable_
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	ldr r5, [sp, #0x10]
	str r0, [sp, #0x20]
	mov r0, r2, lsl #1
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x24]
_02134940:
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x24]
	smull r2, r1, r0, r5
	smull r12, r9, r3, r5
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r7, r1
	str r0, [sp, #0x1c]
	adds r12, r12, #0x800
	adc r3, r9, #0
	mov r9, r12, lsr #0xc
	orr r9, r9, r3, lsl #20
	add r9, r8, r9
	ldrsh r1, [r4, #0x94]
	ldr r2, [sp, #0x1c]
	mov r0, r10
	mov r3, r9
	add r5, r5, #0x8000
	bl FUN_ov132_0213c0d4
	cmp r0, #0
	bne _02134940
	mov r0, r10
	mov r1, r4
	bl FUN_ov126_02138e80
	cmp r0, #0
	beq _02134A08
	ldr r0, [sp, #0xc]
	mov r1, r4
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _02134A08
	ldr r1, [sp, #0x14]
	mov r0, r10
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _02134A08
	ldr r1, [r4, #0x84]
	mov r0, r4
	str r7, [r1]
	bl FUN_ov16_020f07d0
	mov r2, #0x4000
	mov r1, r0
	mov r0, r10
	rsb r2, r2, #0
	bl FUN_ov132_0213f5d4
	ldr r1, [r4, #0x84]
	str r0, [r1, #4]
	b _02134A40
_02134A08:
	ldr r0, [sp, #0x1c]
	mov r1, r9
	bl FUN_02040644
	cmp r0, #0
	beq _02134A34
	ldr r1, [r4, #0x84]
	ldr r0, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [r4, #0x84]
	str r9, [r0, #4]
	b _02134A40
_02134A34:
	ldr r0, [r4, #0x84]
	bl FUN_020404cc
	add r6, r6, #1
_02134A40:
	add r11, r11, #1
_02134A44:
	cmp r11, #0xb
	blt _021348C4
	ldr r1, [sp, #0x14]
	mov r0, r10
	mov r5, #2
	bl FUN_ov132_0214532c
	cmp r0, #0
	bne _02134A8C
	ldr r0, [sp, #0x14]
	cmp r0, #5
	beq _02134A8C
	ldr r1, _02134BCC ; =0x0209A720
	mov r0, r10
	ldr r2, [r1, #0xd8]
	ldr r1, [sp, #0xc]
	bl FUN_01ffb9e4
	cmp r0, #0
	beq _02134A90
_02134A8C:
	mov r5, #0
_02134A90:
	cmp r6, r5
	bge _02134B00
	add r1, sp, #0x38
	add r4, sp, #0x64
	str r7, [sp, #0x28]
	str r8, [sp, #0x2c]
	str r1, [sp]
	ldr r0, _02134BD0 ; =0x00010010
	ldr r9, [sp, #0xc]
	str r0, [sp, #4]
	add r1, sp, #0x28
	mov r0, r10
	mov r3, r4
	sub r2, r5, r6
	str r9, [sp, #8]
	bl FUN_ov132_0213f1d8
	mov r11, #0
	sub r5, r5, r6
	b _02134AF8
_02134ADC:
	ldr r0, [r4, r11, lsl #2]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _02134AF4
	ldr r0, [r0, #0x84]
	bl FUN_020404cc
_02134AF4:
	add r11, r11, #1
_02134AF8:
	cmp r11, r5
	blt _02134ADC
_02134B00:
	mov r5, #0
	mov r6, r5
	mov r11, r5
	add r9, sp, #0x30
	b _02134BB8
_02134B14:
	ldr r1, [sp, #0x18]
	mov r0, r10
	mov r2, r11
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02134BB4
	ldr r0, [r4, #0x84]
	bl FUN_02040a80
	cmp r0, #0
	bne _02134B4C
	mov r0, r4
	mov r1, #0x400
	bl FUN_0206dadc
	b _02134BB4
_02134B4C:
	stmia sp, {r6, r9}
	ldr r1, [sp, #0x18]
	mov r0, r10
	str r5, [sp, #8]
	mov r2, r7
	mov r3, r8
	bl FUN_ov126_02134bd4
	ldr r2, [sp, #0x30]
	ldr r1, [r4, #0x84]
	mov r0, r4
	str r2, [r1]
	ldr r3, [sp, #0x34]
	ldr r2, [r4, #0x84]
	mov r1, #0x400
	str r3, [r2, #4]
	bl FUN_0206dac4
	ldrsh r1, [r4, #0x94]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	mov r0, r10
	add r6, r6, #1
	bl FUN_ov132_0213c0d4
	cmp r0, #0
	bne _02134B4C
	mov r6, #0
	add r5, r5, #1
_02134BB4:
	add r11, r11, #1
_02134BB8:
	cmp r11, #0xb
	blt _02134B14
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134BC8: .word FX_SinCosTable_
_02134BCC: .word unk_0209A720
_02134BD0: .word 0x00010010
	arm_func_end FUN_ov126_02134878

	arm_func_start FUN_ov126_02134bd4
FUN_ov126_02134bd4: ; 0x02134BD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r6, [sp, #0x34]
	mov r9, r0
	cmp r6, #0
	mov r4, r1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov132_02143cd0
	mov r11, r0
	mov r0, r9
	mov r1, r4
	bl FUN_ov132_02144854
	mov r4, r0
	add r5, sp, #0
	str r8, [sp]
	str r7, [sp, #4]
	ldr r2, [r4, #0x84]
	mov r0, r9
	mov r1, r5
	bl FUN_01ffba50
	ldr r2, _02134DAC ; =0x0000099A
	ldr r1, [r4, #0x84]
	umull r10, r4, r0, r2
	mov r3, r0, asr #0x1f
	mla r4, r3, r2, r4
	adds r2, r10, #0x800
	adc r0, r4, #0
	mov r4, r2, lsr #0xc
	orr r4, r4, r0, lsl #20
	mov r0, r5
	bl FUN_020403a8
	mov r10, r0
	mov r0, r10, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r2, r0, lsl #1
	ldr r3, _02134DB0 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldr r0, [sp, #0x30]
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	mov r0, r0, lsl #1
	smull r5, r3, r4, r2
	smull r2, r1, r4, r1
	adds r4, r5, #0x800
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r4, r4, lsr #0xc
	add r0, r0, #0xa
	adc r1, r1, #0
	mov r5, r2, lsr #0xc
	cmp r0, #0
	orr r4, r4, r3, lsl #20
	orr r5, r5, r1, lsl #20
	mov r0, r0, lsl #0xc
	ble _02134CD8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02134CE4
_02134CD8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02134CE4:
	bl _ffix
	rsbs r1, r10, #0x4000
	addmi r1, r1, #0x10000
	mov r1, r1, asr #4
	mov r10, r1, lsl #1
	add r1, r10, #1
	mov r3, r1, lsl #1
	ldr r2, _02134DB0 ; =FX_SinCosTable_
	mov r1, r10, lsl #1
	ldrsh r10, [r2, r3]
	ldrsh r3, [r2, r1]
	ldr r2, [sp, #0x38]
	smull r1, lr, r0, r10
	adds r10, r1, #0x800
	smull r12, r3, r0, r3
	mov r1, r2, lsr #0x1f
	adc r0, lr, #0
	adds r12, r12, #0x800
	mov r10, r10, lsr #0xc
	rsb r2, r1, r2, lsl #31
	adc r3, r3, #0
	orr r10, r10, r0, lsl #20
	adds r0, r1, r2, ror #31
	mov r12, r12, lsr #0xc
	add r0, r8, r4
	subne r1, r0, r10
	orr r12, r12, r3, lsl #20
	addne r0, r7, r5
	addne r0, r12, r0
	strne r1, [r6]
	addeq r1, r10, r0
	addeq r0, r7, r5
	streq r1, [r6]
	subeq r0, r0, r12
	str r0, [r6, #4]
	mov r0, r9
	mov r1, r11
	mov r2, #0
	bl FUN_ov132_0213f5d4
	mov r4, r0
	ldr r1, [r6, #4]
	mov r0, r9
	mov r2, r4
	mov r3, r11
	bl FUN_01ffb9b0
	cmp r0, #0
	strne r4, [r6, #4]
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02134DAC: .word 0x0000099A
_02134DB0: .word FX_SinCosTable_
	arm_func_end FUN_ov126_02134bd4

	arm_func_start FUN_ov126_02134db4
FUN_ov126_02134db4: ; 0x02134DB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r4, #0
	str r1, [sp, #0xc]
	ldr r6, [r1, #0x84]
	str r4, [sp, #0x18]
	ldr r1, _02135024 ; =0x0209BA20
	mov r8, r0
	ldr r1, [r1, #0x860]
	ldr r11, [r6]
	ldr r0, [sp, #0xc]
	ldr r6, [r6, #4]
	mov r7, r2
	str r3, [sp, #0x10]
	mov r5, r4
	str r1, [sp, #0x14]
	bl FUN_0206d688
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [sp, #0x20]
_02134E0C:
	ldr r1, [sp, #0x20]
	mov r0, r8
	bl FUN_ov126_0213922c
	str r0, [sp, #0x24]
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	ldrnesh r1, [r0, #0x94]
	ldrne r0, [sp, #0x24]
	ldrnesh r0, [r0, #0x94]
	cmpne r1, r0
	beq _02134FEC
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0x84]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	sub r9, r11, r1
	subs r10, r6, r0
	rsbmi r0, r10, #0
	movpl r0, r10
	cmp r0, #0xc000
	bgt _02134FEC
	rsb r0, r9, #0
	cmp r9, #0
	movge r0, r9
	cmp r0, #0xc000
	bgt _02134FEC
	ldr r0, [sp, #0x14]
	mov r1, r9
	mov r2, r10
	bl FUN_02043c10
	str r0, [sp, #0x1c]
	cmp r0, #0xc000
	bgt _02134FEC
	mov r0, r10
	mov r1, r9
	bl FX_Atan2Idx
	cmp r9, #0
	mov r9, r0
	cmpeq r10, #0
	cmpeq r9, #0
	bne _02134EBC
	bl FUN_ov16_020f081c
	cmp r0, #1
	moveq r9, #0x8000
_02134EBC:
	str r7, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, r9, asr #4
	mov r3, r0, lsl #1
	str r1, [sp, #8]
	ldr r1, _02135028 ; =FX_SinCosTable_
	ldr r0, [sp, #0x1c]
	add r1, r1, r3, lsl #1
	mov r2, r3, lsl #1
	ldrsh r3, [r1, #2]
	ldr r1, _02135028 ; =FX_SinCosTable_
	rsb r0, r0, #0xc800
	ldrsh r2, [r1, r2]
	mov r1, #1
	smull r9, r3, r0, r3
	str r1, [sp, #0x18]
	adds r9, r9, #0x800
	smull r2, r1, r0, r2
	adc r0, r3, #0
	mov r10, r9, lsr #0xc
	adds r2, r2, #0x800
	orr r10, r10, r0, lsl #20
	adc r0, r1, #0
	mov r9, r2, lsr #0xc
	orr r9, r9, r0, lsl #20
	ldr r1, [sp, #0xc]
	mov r0, r8
	add r2, r11, r10
	add r3, r6, r9
	bl FUN_ov126_02133cbc
	cmp r0, #0
	bne _02134FA4
	str r7, [sp]
	mov r0, #0
	add r9, r10, r9
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r0, r8
	add r2, r11, r9
	mov r3, r6
	bl FUN_ov126_02133cbc
	cmp r0, #0
	addne r4, r4, r9
	bne _02134FEC
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r0, r8
	mov r2, r11
	add r3, r6, r9
	bl FUN_ov126_02133cbc
	cmp r0, #0
	addeq r5, r5, r9
	b _02134FEC
_02134FA4:
	ldr r0, [sp, #0x24]
	ldr r2, [r0, #0x84]
	mov r1, r0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [r2, #4]
	ldr r12, [r2]
	mov r0, r8
	sub r2, r12, r10
	sub r3, r3, r9
	bl FUN_ov126_02133cbc
	cmp r0, #0
	addeq r4, r4, r10, lsl #1
	addeq r5, r5, r9, lsl #1
	addne r4, r4, r10
	addne r5, r5, r9
_02134FEC:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #0x16
	blt _02134E0C
	ldr r0, [sp, #0x18]
	cmp r4, #0xc000
	movgt r4, #0xc000
	cmp r5, #0xc000
	ldr r1, [sp, #0x10]
	movgt r5, #0xc000
	stmia r1, {r4, r5}
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135024: .word gLogicThink
_02135028: .word FX_SinCosTable_
	arm_func_end FUN_ov126_02134db4

	arm_func_start FUN_ov126_0213502c
FUN_ov126_0213502c: ; 0x0213502C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov132_02144780
	mov r5, r0
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov126_021351e0
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl FUN_ov126_021351e0
_02135060:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_021354d4
	cmp r0, #0
	beq _02135080
	add r4, r4, #1
	cmp r4, #4
	blt _02135060
_02135080:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02135140
	mov r0, r6
	bl FUN_ov132_0213be1c
	mov r0, r6
	bl FUN_ov132_02151f70
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_0213502c

	arm_func_start FUN_ov126_021350a0
FUN_ov126_021350a0: ; 0x021350A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	sub r5, r2, #1
	bl FUN_ov132_02143cd0
	cmp r0, #1
	moveq r4, #1
	cmp r4, #0
	addne r5, r5, #0xb
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_021350a0

	arm_func_start FUN_ov126_021350c8
FUN_ov126_021350c8: ; 0x021350C8
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	mov r1, #0
	bl FUN_0206d824
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_021350a0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_021350c8

	arm_func_start FUN_ov126_02135108
FUN_ov126_02135108: ; 0x02135108
	stmfd sp!, {r3, lr}
	bl FUN_ov126_021350a0
	ldr r2, _02135120 ; =0x0209CC10
	mov r1, #0x88
	mla r0, r1, r0, r2
	ldmfd sp!, {r3, pc}
_02135120: .word unk_0209CC10
	arm_func_end FUN_ov126_02135108

	arm_func_start FUN_ov126_02135124
FUN_ov126_02135124: ; 0x02135124
	stmfd sp!, {r3, lr}
	bl FUN_ov126_021350c8
	ldr r2, _0213513C ; =0x0209CC10
	mov r1, #0x88
	mla r0, r1, r0, r2
	ldmfd sp!, {r3, pc}
_0213513C: .word unk_0209CC10
	arm_func_end FUN_ov126_02135124

	arm_func_start FUN_ov126_02135140
FUN_ov126_02135140: ; 0x02135140
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	cmp r1, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021351D4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02135170
	ldr r0, _021351D8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02135170:
	ldr r0, _021351DC ; =0x0209A2C0
	mov r5, #0
	ldmia r0, {r6, r7}
	b _021351C8
_02135180:
	mov r0, r4
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _021351C4
	ldr r0, [r1, #0x84]
	ldmia r0, {r2, r3}
	subs r0, r2, r6
	rsbmi r0, r0, #0
	cmp r0, #0x2000
	bge _021351BC
	subs r0, r3, r7
	rsbmi r0, r0, #0
	cmp r0, #0x4000
	blt _021351C4
_021351BC:
	mov r0, r4
	bl FUN_ov126_02138a88
_021351C4:
	add r5, r5, #1
_021351C8:
	cmp r5, #0x16
	blt _02135180
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021351D4: .word unk_020A0640
_021351D8: .word gWirelessUtil
_021351DC: .word unk_0209A2C0
	arm_func_end FUN_ov126_02135140

	arm_func_start FUN_ov126_021351e0
FUN_ov126_021351e0: ; 0x021351E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r7, r0
	mov r0, r2
	str r2, [sp, #0xc]
	mov r11, r1
	mov r4, #0
	bl FUN_02040138
	mov r1, r0
	mov r0, r7
	bl FUN_ov132_02143cd0
	mov r1, r0
	str r4, [sp]
	mov r3, #1
	mov r0, r7
	sub r2, r4, #0x5000
	str r3, [sp, #0x10]
	bl FUN_ov132_0213f37c
	mov r5, r0
	mov r0, r7
	bl FUN_ov132_02144770
	str r0, [sp, #0x18]
	mov r0, r7
	mov r1, r11
	bl FUN_ov132_02145318
	cmp r0, #0
	streq r4, [sp, #0x10]
	cmp r11, #1
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	mov r1, r11
	bl FUN_ov132_0214532c
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, _021354C4 ; =0x0209A2C0
	mov r0, r7
	ldr r1, [r2]
	str r1, [sp, #0x20]
	ldr r1, [r2, #4]
	ldr r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl FUN_ov126_021345b0
	mov r9, r0
	ldr r1, [sp, #0xc]
	mov r0, r7
	bl FUN_ov132_02143cd0
	cmp r0, #0
	movne r0, #4
	strne r0, [sp, #0x14]
	moveq r0, #0
	streq r0, [sp, #0x14]
	mov r6, #0
	b _02135494
_021352C4:
	ldr r1, [sp, #0xc]
	mov r0, r7
	mov r2, r6
	bl FUN_ov126_0213938c
	movs r8, r0
	beq _02135490
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _021352F4
	bl FUN_0206db9c
	cmp r0, #0
	bne _02135490
_021352F4:
	cmp r9, #0
	ldr r0, [r8, #0x84]
	ldr r10, [r0]
	ldr r4, [r0, #4]
	beq _02135320
	mov r0, r7
	mov r1, r8
	mov r2, r9
	bl FUN_ov126_02139a30
	cmp r0, #0
	bne _02135490
_02135320:
	ldr r0, [r8, #0x84]
	ldr r3, [sp, #0x14]
	ldrb r2, [r0, #0x1d]
	mov r0, #1
	mov r1, r8
	str r0, [sp]
	ldr r0, _021354C8 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3c14
	mov r0, r7
	mov r1, r8
	bl FUN_ov126_02138e80
	cmp r0, #0
	bne _02135490
	mov r0, r8
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02135490
	mov r0, #0x41
	bl FUN_ov16_020ef8d4
	sub r0, r0, #0x20
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02135394
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021353A0
_02135394:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021353A0:
	bl _ffix
	add r10, r10, r0
	mov r0, #0x41
	bl FUN_ov16_020ef8d4
	sub r0, r0, #0x20
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021353D4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021353E0
_021353D4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021353E0:
	bl _ffix
	add r4, r4, r0
	mov r0, r8
	bl FUN_0206d5f0
	ldr r1, [sp, #0x18]
	cmp r1, r0
	beq _02135424
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, r7
	mov r1, r10
	mov r2, r4
	bl FUN_01ffba30
	ldr r1, _021354CC ; =0x00042E66
	cmp r0, r1
	blt _02135490
_02135424:
	mov r0, r10
	mov r1, r4
	bl FUN_02040644
	cmp r0, #0
	beq _02135490
	str r11, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, r7
	mov r1, r8
	mov r2, r10
	mov r3, r4
	bl FUN_ov126_02133cbc
	cmp r0, #0
	beq _02135490
	ldr r1, [r8, #0x84]
	mov r0, r7
	str r10, [r1]
	ldr r2, [r8, #0x84]
	mov r1, r8
	str r4, [r2, #4]
	mov r2, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	ldreq r0, [r8, #0x84]
	streq r5, [r0, #4]
_02135490:
	add r6, r6, #1
_02135494:
	cmp r6, #0xb
	blt _021352C4
	ldr r0, [sp, #0xc]
	bl FUN_ov16_020f0a30
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _021354D0 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021354C4: .word unk_0209A2C0
_021354C8: .word unk_02099F14
_021354CC: .word 0x00042E66
_021354D0: .word gLogicThink
	arm_func_end FUN_ov126_021351e0

	arm_func_start FUN_ov126_021354d4
FUN_ov126_021354d4: ; 0x021354D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xb0
	mov r6, #0
	mov r8, r0
	mov r7, r1
	mov r5, r6
	add r4, sp, #0
	mov r9, r6
	mov r10, #1
_021354F8:
	mov r0, r8
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _02135528
	mov r0, r8
	mov r2, r7
	add r3, r4, r5, lsl #3
	bl FUN_ov126_02134db4
	orrs r0, r6, r0
	movne r6, r10
	moveq r6, r9
_02135528:
	add r5, r5, #1
	cmp r5, #0x16
	blt _021354F8
	cmp r6, #0
	addeq sp, sp, #0xb0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, #0
	add r4, sp, #0
_0213554C:
	mov r0, r8
	mov r1, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0213558C
	ldr r7, [r0, #0x84]
	ldr r2, [r4, r5, lsl #3]
	ldr r3, [r7]
	add r1, r4, r5, lsl #3
	add r2, r3, r2
	str r2, [r7]
	ldr r2, [r0, #0x84]
	ldr r0, [r1, #4]
	ldr r1, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #4]
_0213558C:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0213554C
	ldr r0, _021355B0 ; =0x0209BA20
	ldr r0, [r0, #0x860]
	bl FUN_02043c5c
	mov r0, r6
	add sp, sp, #0xb0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021355B0: .word gLogicThink
	arm_func_end FUN_ov126_021354d4

	arm_func_start FUN_ov126_021355b4
FUN_ov126_021355b4: ; 0x021355B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r0, r6, #0x298
	mov r1, #0
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r0, _02135654 ; =0x0209BA20
	bl FUN_020731a4
	mov r5, #2
	cmp r0, #0
	moveq r5, #1
	mov r4, #0
_021355E4:
	mov r0, r4
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _02135644
	bl FUN_0206d64c
	cmp r0, #0
	beq _02135644
	mov r0, r8
	mov r1, r5
	bl FUN_0206d824
	mov r7, r0
	cmp r7, #1
	blt _02135644
	cmp r7, #0x10
	bgt _02135644
	mov r0, r8
	bl FUN_0206d5f0
	sub r1, r7, #1
	add r7, r1, r0, lsl #4
	mov r0, r8
	bl FUN_0206cbf8
	add r1, r6, r7, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x98]
_02135644:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021355E4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02135654: .word gLogicThink
	arm_func_end FUN_ov126_021355b4

	arm_func_start FUN_ov126_02135658
FUN_ov126_02135658: ; 0x02135658
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02135698 ; =0x0209BA20
	mov r5, r1
	bl FUN_0207318c
	mov r4, r0
	bl FUN_02073e54
	cmp r0, #0
	beq _02135690
	mov r0, r4
	mov r1, r5
	bl FUN_02073e14
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_02135690:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02135698: .word gLogicThink
	arm_func_end FUN_ov126_02135658

	arm_func_start FUN_ov126_0213569c
FUN_ov126_0213569c: ; 0x0213569C
	stmfd sp!, {r4, lr}
	ldr r0, _021356C0 ; =0x0209BA20
	mov r4, r1
	bl FUN_0207318c
	add r0, r0, r4
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #0xb
	ldmfd sp!, {r4, pc}
_021356C0: .word gLogicThink
	arm_func_end FUN_ov126_0213569c

	arm_func_start FUN_ov126_021356c4
FUN_ov126_021356c4: ; 0x021356C4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02135718 ; =0x0209BA20
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl FUN_0207318c
	add r1, r6, r5
	ldrb r2, [r1, #0x326]
	cmp r2, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r4, #0x885]
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r0, r5
	ldrb r0, [r0, #0xc]
	cmp r2, r0
	movhs r2, r0
	mov r0, r2
	ldmfd sp!, {r4, r5, r6, pc}
_02135718: .word gLogicThink
	arm_func_end FUN_ov126_021356c4

	arm_func_start FUN_ov126_0213571c
FUN_ov126_0213571c: ; 0x0213571C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	mov r4, r1
	bl FUN_ov132_02144780
	mov r5, r0
	mov r0, r6
	bl FUN_ov126_0213921c
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_02139a54
	ldr r9, _02135874 ; =0x0209BA20
	mov r8, r0
	mov r0, r9
	mov r1, r4
	bl FUN_0204c620
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_0213569c
	add r1, r8, r7
	cmp r1, r0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_02139a54
	mov r8, r0
	mov r0, r9
	mov r1, r4
	bl FUN_0204c620
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_021356c4
	add r1, r8, r7
	cmp r1, r0
	movlt r0, #2
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02143cd0
	mov r1, r0
	mov r0, r6
	bl FUN_ov126_02135658
	cmp r0, #0
	beq _021357EC
	mov r0, r6
	mov r1, r4
	bl FUN_ov132_02144854
	cmp r0, #0
	moveq r0, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021357EC:
	mov r0, r4, lsl #4
	mov r4, #0xc
	add r8, r6, r0, lsl #1
	mov r7, #0
_021357FC:
	add r0, r8, r4, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0x96]
	mov r1, r7
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _02135824
	mov r1, r7
	bl FUN_0206d824
	bl FUN_02040ac8
_02135824:
	add r4, r4, #1
	cmp r4, #0x10
	ble _021357FC
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_02145318
	cmp r0, #0
	bne _02135858
	mov r0, r6
	mov r1, r5
	bl FUN_ov132_0214532c
	cmp r0, #0
	beq _02135864
_02135858:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02134808
_02135864:
	mvn r0, #0
	strb r0, [r6, #0x334]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02135874: .word gLogicThink
	arm_func_end FUN_ov126_0213571c

	arm_func_start FUN_ov126_02135878
FUN_ov126_02135878: ; 0x02135878
	mvn r1, #0
	strb r1, [r0, #0x334]
	bx lr
	arm_func_end FUN_ov126_02135878

	arm_func_start FUN_ov126_02135884
FUN_ov126_02135884: ; 0x02135884
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	mov r6, #0
	ldr r0, _02135A18 ; =0x0209BA20
	mov r4, r1
	mov r7, r6
	bl FUN_0207318c
	mov r8, r0
	ldrb r0, [r8, #5]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02135A0C
_021358B4: ; jump table
	b _02135A0C ; case 0
	b _021359BC ; case 1
	b _021359B0 ; case 2
	b _02135978 ; case 3
	b _021358D0 ; case 4
	b _021358D0 ; case 5
	b _021359EC ; case 6
_021358D0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02143cd0
	ldrb r1, [r8, #5]
	mov r10, r0
	cmp r1, #4
	bne _021358F4
	bl FUN_02040118
	mov r10, r0
_021358F4:
	mov r9, #1
	mov r11, #0
	mov r6, r9
	b _02135960
_02135904:
	mov r0, r5
	mov r1, r4
	mov r2, r9
	bl FUN_ov126_02135108
	movs r8, r0
	beq _0213595C
	ldrb r0, [r8]
	cmp r0, #0
	movne r0, r6
	moveq r0, r11
	cmp r0, #0
	beq _0213595C
	cmp r7, #0
	moveq r7, r8
	beq _0213595C
	ldr r1, [r8, #0xc]
	ldr r2, [r7, #0xc]
	mov r0, r5
	mov r3, r10
	bl FUN_01ffb9b0
	cmp r0, #0
	movne r7, r8
_0213595C:
	add r9, r9, #1
_02135960:
	cmp r9, #0xb
	ble _02135904
	cmp r7, #0
	beq _02135A0C
	ldr r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135978:
	mov r8, #1
	mov r0, r5
	mov r1, r4
	mov r2, r8
	bl FUN_ov126_02135108
	movs r7, r0
	beq _02135A0C
	ldrb r0, [r7]
	cmp r0, #0
	moveq r8, r6
	cmp r8, #0
	beq _02135A0C
	ldr r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021359B0:
	mov r0, r5
	bl FUN_ov126_02135a24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021359BC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02143cd0
	bl FUN_02040118
	mov r2, r0
	mov r0, r5
	mov r1, #2
	bl FUN_ov132_02144b00
	cmp r4, #0
	ldreq r0, [r0]
	ldrne r0, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021359EC:
	mov r0, r4
	bl FUN_02040138
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02143cd0
	ldr r1, _02135A1C ; =0x0209A87C
	ldr r0, [r1, r0, lsl #3]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135A0C:
	ldr r0, _02135A20 ; =0x0209A720
	ldr r0, [r0, #0xd4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135A18: .word gLogicThink
_02135A1C: .word unk_0209A87C
_02135A20: .word unk_0209A720
	arm_func_end FUN_ov126_02135884

	arm_func_start FUN_ov126_02135a24
FUN_ov126_02135a24: ; 0x02135A24
	ldr r0, _02135A3C ; =0x0209A720
	ldr r1, [r0, #0xdc]
	ldr r0, [r0, #0xe4]
	add r0, r1, r0
	mov r0, r0, asr #1
	bx lr
_02135A3C: .word unk_0209A720
	arm_func_end FUN_ov126_02135a24

	arm_func_start FUN_ov126_02135a40
FUN_ov126_02135a40: ; 0x02135A40
	ldr r0, _02135A58 ; =0x0209A720
	ldr r1, [r0, #0xe0]
	ldr r0, [r0, #0xe8]
	add r0, r1, r0
	mov r0, r0, asr #1
	bx lr
_02135A58: .word unk_0209A720
	arm_func_end FUN_ov126_02135a40

	arm_func_start FUN_ov126_02135a5c
FUN_ov126_02135a5c: ; 0x02135A5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	mov r6, #0
	ldr r0, _02135BF0 ; =0x0209BA20
	mov r4, r1
	mov r7, r6
	bl FUN_0207318c
	mov r8, r0
	ldrb r0, [r8, #5]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02135BE4
_02135A8C: ; jump table
	b _02135BE4 ; case 0
	b _02135B90 ; case 1
	b _02135B84 ; case 2
	b _02135B50 ; case 3
	b _02135AA8 ; case 4
	b _02135AA8 ; case 5
	b _02135BC4 ; case 6
_02135AA8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02143cd0
	ldrb r1, [r8, #5]
	mov r10, r0
	cmp r1, #4
	bne _02135ACC
	bl FUN_02040118
	mov r10, r0
_02135ACC:
	mov r9, #1
	mov r11, #0
	mov r6, r9
	b _02135B38
_02135ADC:
	mov r0, r5
	mov r1, r4
	mov r2, r9
	bl FUN_ov126_02135108
	movs r8, r0
	beq _02135B34
	ldrb r0, [r8]
	cmp r0, #0
	movne r0, r6
	moveq r0, r11
	cmp r0, #0
	beq _02135B34
	cmp r7, #0
	moveq r7, r8
	beq _02135B34
	ldr r1, [r8, #0xc]
	ldr r2, [r7, #0xc]
	mov r0, r5
	mov r3, r10
	bl FUN_01ffb9b0
	cmp r0, #0
	movne r7, r8
_02135B34:
	add r9, r9, #1
_02135B38:
	cmp r9, #0xb
	ble _02135ADC
	cmp r7, #0
	beq _02135BE4
	ldr r0, [r7, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135B50:
	mov r8, #1
	mov r0, r5
	mov r1, r4
	mov r2, r8
	bl FUN_ov126_02135108
	mov r7, r0
	ldrb r0, [r7]
	cmp r0, #0
	moveq r8, r6
	cmp r8, #0
	beq _02135BE4
	ldr r0, [r7, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135B84:
	mov r0, r5
	bl FUN_ov126_02135a40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135B90:
	mov r0, r5
	mov r1, r4
	bl FUN_ov132_02143cd0
	bl FUN_02040118
	mov r4, r0
	mov r0, r5
	mov r2, r4
	mov r1, #2
	bl FUN_ov132_02144b00
	cmp r4, #1
	ldreq r0, [r0, #0xc]
	ldrne r0, [r0, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135BC4:
	mov r0, r4
	bl FUN_02040138
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02143cd0
	ldr r1, _02135BF4 ; =0x0209A880
	ldr r0, [r1, r0, lsl #3]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135BE4:
	ldr r0, _02135BF8 ; =0x0209A720
	ldr r0, [r0, #0xd8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135BF0: .word gLogicThink
_02135BF4: .word unk_0209A880
_02135BF8: .word unk_0209A720
	arm_func_end FUN_ov126_02135a5c

	arm_func_start FUN_ov126_02135bfc
FUN_ov126_02135bfc: ; 0x02135BFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, _02135D58 ; =0x0209BA20
	mov r10, r0
	mov r0, r11
	mov r9, r1
	mov r5, #0
	bl FUN_0204c4cc
	sub r0, r0, #0xb
	mov r1, r0, lsl #0x18
	mov r0, r11
	mov r8, r1, asr #0x18
	bl FUN_020731a4
	cmp r0, #0
	bne _02135C3C
	cmp r8, #0
	bgt _02135C44
_02135C3C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135C44:
	mov r0, r5
	str r0, [sp]
_02135C4C:
	ldr r2, [sp]
	mov r0, r11
	mov r1, r9
	add r2, r2, #1
	bl FUN_0204dea4
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _02135D34
	bl FUN_0206d6c4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl FUN_ov126_02135d5c
	cmp r0, #0
	movne r6, r5
	cmpne r8, #0
	ble _02135D34
_02135CA4:
	mov r0, r11
	mov r1, r9
	add r2, r6, #0xc
	bl FUN_0204dea4
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _02135D20
	mov r0, r10
	mov r1, r4
	mov r2, r7
	mov r3, #1
	bl FUN_ov126_02135d5c
	cmp r0, #0
	beq _02135D20
	mov r0, r10
	mov r1, r7
	mov r2, r4
	bl FUN_ov126_02136224
	mov r0, #1
	strb r0, [r7, #0x83]
	ldr r2, [sp]
	mov r5, #1
	mov r0, r11
	mov r1, r9
	add r2, r2, #1
	add r3, r6, #0xc
	strb r5, [r4, #0x83]
	bl FUN_ov126_0212ac54
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135D20:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, asr #16
	mov r6, r0, asr #0x10
	bgt _02135CA4
_02135D34:
	ldr r0, [sp]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	cmp r0, #0xb
	blt _02135C4C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135D58: .word gLogicThink
	arm_func_end FUN_ov126_02135bfc

	arm_func_start FUN_ov126_02135d5c
FUN_ov126_02135d5c: ; 0x02135D5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0213620C ; =0x020A0640
	movs r9, r1
	mov r11, #0
	mov r8, r2
	mov r7, r3
	mov r10, #1
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r9, #0x83]
	mov r0, r9
	bl FUN_0206cc84
	mov r5, r0
	cmp r6, #0x1c
	movhs r0, r11
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #1
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0x18
	blo _02135DE0
	cmp r6, #0x1b
	bhi _02135DE0
	cmp r8, #0
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	sub r4, r6, #0x17
	bl FUN_0206cd70
	cmp r4, r0
	moveq r0, r10
	movne r0, r11
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135DE0:
	cmp r8, #0
	beq _02135E0C
	mov r0, r9
	bl FUN_0206cd70
	str r0, [sp]
	mov r0, r8
	bl FUN_0206cd70
	ldr r1, [sp]
	cmp r1, r0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135E0C:
	cmp r6, #0
	bne _02135EB4
	mov r8, #0
	mov r6, #5
	ldr r4, _02136210 ; =0x0209BA20
	b _02135E84
_02135E24:
	mov r0, r9
	mov r1, r6
	bl FUN_0206cdf8
	mov r1, r0
	cmp r1, #0
	ble _02135E78
	mov r0, r4
	bl FUN_0204a2c4
	cmp r0, #0
	beq _02135E78
	add r1, r8, #1
	mov r2, r1, lsl #0x18
	mov r1, r9
	mov r8, r2, asr #0x18
	bl FUN_0204b114
	cmp r5, r0
	movgt r0, r10
	movle r0, r11
	cmp r7, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135E78:
	sub r0, r6, #1
	mov r0, r0, lsl #0x18
	mov r6, r0, asr #0x18
_02135E84:
	cmp r6, #0
	bge _02135E24
	cmp r8, #0
	bne _02135EA4
	mov r0, #0xa
	bl FUN_ov16_020ef8d4
	mov r0, r0, lsl #0x18
	mov r8, r0, asr #0x18
_02135EA4:
	mov r0, #1
	cmp r8, #0
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02135EB4:
	cmp r6, #0xe
	blo _02136104
	cmp r6, #0x17
	bhi _02136104
	ldrb r0, [r4, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _02135F34
	cmp r0, #3
	blo _02135EE8
	cmp r0, #5
	movls r0, #2
	bls _02135F34
_02135EE8:
	ldrb r0, [r4, #0x8f]
	cmp r0, #6
	blo _02135F00
	cmp r0, #8
	movls r0, #3
	bls _02135F34
_02135F00:
	ldrb r0, [r4, #0x8f]
	cmp r0, #9
	blo _02135F18
	cmp r0, #0xb
	movls r0, #4
	bls _02135F34
_02135F18:
	ldrb r0, [r4, #0x8f]
	cmp r0, #0xc
	blo _02135F30
	cmp r0, #0xe
	movls r0, #5
	bls _02135F34
_02135F30:
	mvn r0, #0
_02135F34:
	sub r1, r6, #0xe
	mov r2, r1, lsl #0x18
	mov r8, r2, asr #0x18
	ldr r7, _02136214 ; =0x66666667
	mov r6, r8, lsr #0x1f
	smull r1, r3, r7, r8
	add r3, r6, r3, asr #1
	mov r1, #5
	smull r3, r5, r1, r3
	rsb r3, r3, r2, asr #24
	mov r1, r3, lsl #0x18
	smull r2, r3, r7, r8
	add r3, r6, r3, asr #1
	mov r2, r3, lsl #0x19
	ldr r3, _02136218 ; =0x55555556
	mov r6, r1, asr #0x18
	smull r1, r5, r3, r6
	add r5, r5, r6, lsr #31
	sub r3, r0, #1
	add r0, r5, r2, asr #24
	cmp r0, r3
	mov r1, r2, asr #0x18
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, r3
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _021360FC
_02135FAC: ; jump table
	b _02135FC0 ; case 0
	b _02136050 ; case 1
	b _021360EC ; case 2
	b _02135FC0 ; case 3
	b _02136050 ; case 4
_02135FC0:
	ldrb r0, [r4, #0x8f]
	cmp r0, #2
	movls r1, #1
	bls _02136030
	cmp r0, #3
	blo _02135FE4
	cmp r0, #5
	movls r1, #2
	bls _02136030
_02135FE4:
	ldrb r0, [r4, #0x8f]
	cmp r0, #6
	blo _02135FFC
	cmp r0, #8
	movls r1, #3
	bls _02136030
_02135FFC:
	ldrb r0, [r4, #0x8f]
	cmp r0, #9
	blo _02136014
	cmp r0, #0xb
	movls r1, #4
	bls _02136030
_02136014:
	ldrb r0, [r4, #0x8f]
	cmp r0, #0xc
	blo _0213602C
	cmp r0, #0xe
	movls r1, #5
	bls _02136030
_0213602C:
	mvn r1, #0
_02136030:
	ldr r0, _0213621C ; =0x020A0648
	sub r1, r1, #1
	ldr r1, [r0, r1, lsl #2]
	ldr r0, [r4]
	cmp r0, r1, lsr #1
	movhs r0, #1
	movlo r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02136050:
	ldrb r0, [r4, #0x8f]
	cmp r0, #2
	movls r1, #1
	bls _021360C0
	cmp r0, #3
	blo _02136074
	cmp r0, #5
	movls r1, #2
	bls _021360C0
_02136074:
	ldrb r0, [r4, #0x8f]
	cmp r0, #6
	blo _0213608C
	cmp r0, #8
	movls r1, #3
	bls _021360C0
_0213608C:
	ldrb r0, [r4, #0x8f]
	cmp r0, #9
	blo _021360A4
	cmp r0, #0xb
	movls r1, #4
	bls _021360C0
_021360A4:
	ldrb r0, [r4, #0x8f]
	cmp r0, #0xc
	blo _021360BC
	cmp r0, #0xe
	movls r1, #5
	bls _021360C0
_021360BC:
	mvn r1, #0
_021360C0:
	ldr r0, _0213621C ; =0x020A0648
	sub r1, r1, #1
	ldr r2, [r0, r1, lsl #2]
	ldr r0, _02136220 ; =0xAAAAAAAB
	umull r0, r1, r2, r0
	ldr r0, [r4]
	mov r1, r1, lsr #1
	cmp r0, r1, lsl #1
	movhs r0, #1
	movlo r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021360EC:
	mov r0, #1
	cmp r1, r3
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021360FC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02136104:
	ldr r1, _02136218 ; =0x55555556
	sub r2, r6, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r4, #3
	smull r0, r1, r4, r3
	sub r3, r2, r0
	mov r0, r3, lsl #0x18
	movs r0, r0, asr #0x18
	movne r4, #5
	cmpne r0, #1
	movne r4, #8
	mov r1, r4, lsl #0x18
	mov r0, r9
	mov r4, r1, asr #0x18
	bl FUN_0206cc94
	mul r1, r4, r0
	ldr r10, _02136214 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r2, r10, r1
	add r2, r0, r2, asr #2
	mov r0, r9
	mov r8, r2, lsl #0x10
	bl FUN_0206ccec
	ldr r2, _02136218 ; =0x55555556
	sub r3, r6, #2
	mul r0, r4, r0
	smull r1, r4, r2, r3
	add r4, r4, r3, lsr #31
	add r1, r4, #1
	and r6, r1, #0xff
	smull r1, r2, r10, r0
	mov r0, r0, lsr #0x1f
	add r2, r0, r2, asr #2
	tst r6, #5
	mov r10, r2, lsl #0x10
	mov r4, #0
	beq _021361B8
	mov r0, #1
	cmp r5, r8, asr #16
	movgt r0, r4
	cmp r7, r0
	addne r0, r4, #1
	movne r0, r0, lsl #0x18
	movne r4, r0, asr #0x18
_021361B8:
	tst r6, #6
	beq _021361E4
	mov r0, r9
	bl FUN_0206ccdc
	cmp r0, r10, asr #16
	movle r0, #1
	movgt r0, #0
	cmp r7, r0
	addne r0, r4, #1
	movne r0, r0, lsl #0x18
	movne r4, r0, asr #0x18
_021361E4:
	cmp r4, #0
	ble _02136204
	cmp r6, #3
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #2
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02136204:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213620C: .word unk_020A0640
_02136210: .word gLogicThink
_02136214: .word 0x66666667
_02136218: .word 0x55555556
_0213621C: .word unk_020A0648
_02136220: .word 0xAAAAAAAB
	arm_func_end FUN_ov126_02135d5c

	arm_func_start FUN_ov126_02136224
FUN_ov126_02136224: ; 0x02136224
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r1
	mov r4, r2
	mov r5, r0
	cmpne r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_0206d5f0
	mov r6, r0
	mov r0, r4
	bl FUN_0206d5f0
	cmp r6, r0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r5, #0x500
	ldrsb r0, [r1, #0x74]
	cmp r0, #5
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r0, lsl #2
	str r7, [r0, #0x54c]
	ldrsb r2, [r1, #0x74]
	mov r0, #1
	add r2, r5, r2, lsl #2
	str r4, [r2, #0x560]
	ldrsb r1, [r1, #0x74]
	add r1, r1, #1
	strb r1, [r5, #0x574]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_02136224

	arm_func_start FUN_ov126_0213629c
FUN_ov126_0213629c: ; 0x0213629C
	mov r3, #0
	mov r1, r3
_021362A4:
	add r2, r0, r3, lsl #2
	str r1, [r2, #0x54c]
	add r3, r3, #1
	str r1, [r2, #0x560]
	cmp r3, #5
	blt _021362A4
	mvn r3, #0
	add r2, r0, #0x17c
	ldr r12, _021362E0 ; =MI_CpuFill8
	strb r1, [r0, #0x574]
	strb r1, [r0, #0x575]
	str r3, [r0, #0x578]
	add r0, r2, #0x400
	mov r2, #0x20
	bx r12
_021362E0: .word MI_CpuFill8
	arm_func_end FUN_ov126_0213629c

	arm_func_start FUN_ov126_021362e4
FUN_ov126_021362e4: ; 0x021362E4
	add r0, r0, #0x500
	ldrsb r0, [r0, #0x74]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov126_021362e4

	arm_func_start FUN_ov126_021362fc
FUN_ov126_021362fc: ; 0x021362FC
	add r0, r0, #0x500
	ldrsb r0, [r0, #0x74]
	bx lr
	arm_func_end FUN_ov126_021362fc

	arm_func_start FUN_ov126_02136308
FUN_ov126_02136308: ; 0x02136308
	cmp r1, #0
	blt _02136320
	add r3, r0, #0x500
	ldrsb r3, [r3, #0x74]
	cmp r1, r3
	blt _02136328
_02136320:
	mov r0, #0
	bx lr
_02136328:
	add r0, r0, r1, lsl #2
	cmp r2, #0
	ldrne r0, [r0, #0x560]
	ldreq r0, [r0, #0x54c]
	bx lr
	arm_func_end FUN_ov126_02136308

	arm_func_start FUN_ov126_0213633c
FUN_ov126_0213633c: ; 0x0213633C
	stmfd sp!, {r3, lr}
	add r1, r0, #0x500
	ldrsb r1, [r1, #0x74]
	cmp r1, #5
	bgt _02136358
	cmp r1, #0
	bgt _02136360
_02136358:
	mvn r0, #0
	ldmfd sp!, {r3, pc}
_02136360:
	ldr r0, [r0, #0x54c]
	bl FUN_0206d5f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0213633c

	arm_func_start FUN_ov126_0213636c
FUN_ov126_0213636c: ; 0x0213636C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _021363A8 ; =0x0209BA20
	mov r4, r1
	bl FUN_0205107c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #0x17c
	add r1, r1, #0x400
	mov r2, #0x20
	bl MI_CpuCopy8
	str r4, [r5, #0x578]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_021363A8: .word gLogicThink
	arm_func_end FUN_ov126_0213636c

	arm_func_start FUN_ov126_021363ac
FUN_ov126_021363ac: ; 0x021363AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x578]
	ldr r0, _021363F0 ; =0x0209BA20
	bl FUN_0205107c
	movs r1, r0
	beq _021363E8
	add r0, r4, #0x17c
	add r0, r0, #0x400
	mov r2, #0x16
	bl memcmp
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_021363E8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_021363F0: .word gLogicThink
	arm_func_end FUN_ov126_021363ac

	arm_func_start FUN_ov126_021363f4
FUN_ov126_021363f4: ; 0x021363F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r11, r0
	bl FUN_ov126_021362e4
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r11, #0x578]
	cmn r1, #1
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02136594 ; =0x0209BA20
	add r2, r11, #0x17c
	add r7, r2, #0x400
	bl FUN_0205107c
	mov r8, r0
	cmp r7, #0
	cmpne r8, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r5, r4
	mov r9, #0xb
_0213645C:
	mov r10, #0xb
_02136460:
	mov r0, r8
	mov r1, r9
	bl FUN_0204fbe8
	mov r6, r0
	mov r0, r7
	mov r1, r10
	bl FUN_0204fbe8
	cmp r6, r0
	beq _02136490
	add r10, r10, #1
	cmp r10, #0x10
	blt _02136460
_02136490:
	cmp r10, #0x10
	addeq r0, sp, #0x2c
	streq r9, [r0, r4, lsl #2]
	add r9, r9, #1
	addeq r4, r4, #1
	cmp r9, #0x10
	blt _0213645C
	mov r9, #0
_021364B0:
	mov r10, #0
_021364B4:
	mov r0, r8
	mov r1, r9
	bl FUN_0204fbe8
	mov r6, r0
	mov r0, r7
	mov r1, r10
	bl FUN_0204fbe8
	cmp r6, r0
	beq _021364E4
	add r10, r10, #1
	cmp r10, #0xb
	blt _021364B4
_021364E4:
	cmp r10, #0xb
	addeq r0, sp, #0
	streq r9, [r0, r5, lsl #2]
	add r9, r9, #1
	addeq r5, r5, #1
	mov r10, #0
	cmp r9, #0xb
	blt _021364B0
	cmp r4, #0
	cmpeq r5, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #0
	mov r9, #0
	ble _02136588
	add r7, sp, #0x2c
	add r5, sp, #0
_0213652C:
	ldr r1, [r7, r9, lsl #2]
	mov r0, r8
	bl FUN_0204fbe8
	mov r1, r10
	bl FUN_ov16_020efa9c
	mov r6, r0
	ldr r1, [r5, r9, lsl #2]
	mov r0, r8
	bl FUN_0204fbe8
	mov r1, r10
	bl FUN_ov16_020efa9c
	mov r2, r0
	cmp r6, #0
	cmpne r2, #0
	beq _0213657C
	mov r0, r11
	mov r1, r6
	bl FUN_ov126_02136224
	cmp r0, #0
	beq _02136588
_0213657C:
	add r9, r9, #1
	cmp r9, r4
	blt _0213652C
_02136588:
	mov r0, #1
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02136594: .word gLogicThink
	arm_func_end FUN_ov126_021363f4

	arm_func_start FUN_ov126_02136598
FUN_ov126_02136598: ; 0x02136598
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r8, #0
	mov r7, #1
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _02136608
	mov r0, r9
	bl FUN_ov126_021375d4
	movs r7, r0
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020efa80
	bl FUN_ov16_020f0810
	cmp r6, r0
	ldreqsh r0, [r7, #8]
	streq r0, [r5]
	ldreqb r0, [r7, #0x12]
	ldrnesh r0, [r7, #0xa]
	strne r0, [r5]
	ldrneb r0, [r7, #0x13]
	str r0, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02136608:
	ldr r0, _02136734 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0213662C
	ldr r0, _02136738 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213662C:
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _02136650
	mov r0, r7
	bl FUN_ov16_020f0a30
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02136650:
	str r8, [r5]
	ldr r7, _0213673C ; =0x0209A2C0
	str r8, [r4]
	ldr r0, [r7, #0x48]
	bl FUN_ov16_020efa80
	cmp r0, #0
	bne _02136674
	ldr r0, [r7, #0x4c]
	bl FUN_ov16_020efa80
_02136674:
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_020f0810
	cmp r6, r0
	ldreq r0, _02136740 ; =0x000001F6
	ldrne r0, _02136744 ; =0x000001F9
	str r0, [r5]
	mov r0, #3
	bl FUN_ov16_020ef928
	add r2, r0, #1
	ldr r0, _02136748 ; =gL5Config
	ldr r1, _0213674C ; =0x0213AB54
	str r2, [r4]
	bl _ZN8L5Config8getParamEPc
	mov r4, r0
	mov r0, #0x64
	bl FUN_ov16_020ef928
	add r0, r0, #1
	mov r5, #1
	cmp r0, r4
	movgt r5, #0
	cmp r5, #1
	bne _02136704
	ldr r4, _02136750 ; 0x02099EF0
	mov r1, r6
	ldr r0, [r4]
	bl FUN_ov126_02136ec0
	cmp r0, #0
	bne _0213672C
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov126_02136ed8
	cmp r0, #0
	ble _0213672C
	b _0213671C
_02136704:
	ldr r4, _02136750 ; 0x02099EF0
	mov r1, r6
	ldr r0, [r4]
	bl FUN_ov126_02136ec0
	cmp r0, #1
	bne _0213672C
_0213671C:
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_ov126_02136eb4
_0213672C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02136734: .word unk_020A0640
_02136738: .word gWirelessUtil
_0213673C: .word unk_0209A2C0
_02136740: .word 0x000001F6
_02136744: .word 0x000001F9
_02136748: .word gL5Config
_0213674C: .word ov126_0213AB54
_02136750: .word unk_02099EF0
	arm_func_end FUN_ov126_02136598

	arm_func_start FUN_ov126_02136754
FUN_ov126_02136754: ; 0x02136754
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	mov r9, r1
	mov r11, r2
	mov r8, r3
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov126_021375d4
	ldr r1, _02136A10 ; =0x0209A2C0
	mov r4, r0
	ldr r6, [r1, #0x4c]
	mov r0, r6
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r6
	bl FUN_ov16_020f07f4
	mov r6, r0
	mov r0, r5
	bl FUN_02040148
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	mov r0, r10
	bl FUN_ov132_02144854
	cmp r6, #0
	mov r7, r0
	ldrne r0, [sp, #0x40]
	strneh r11, [r4, #8]
	strneb r0, [r4, #0x12]
	strneh r9, [r4, #0xa]
	strneb r8, [r4, #0x13]
	bne _021367F8
	strh r9, [r4, #8]
	strb r8, [r4, #0x12]
	ldr r0, [sp, #0x40]
	strh r11, [r4, #0xa]
	strb r0, [r4, #0x13]
_021367F8:
	ldrb r9, [r4, #0x12]
	mov r0, r5
	bl FUN_02040128
	mov r3, r0
	add r2, sp, #0x14
	str r9, [sp]
	mov r0, r10
	mov r1, r7
	bl FUN_ov126_02136a34
	ldr r1, [sp, #0x14]
	mov r0, #1
	str r1, [r10, #0x6c]
	ldr r1, [sp, #0x18]
	mov r11, #0
	strb r0, [r10, #0x36d]
	str r1, [r10, #0x70]
	ldrsh r1, [r4, #8]
	ldr r0, _02136A14 ; =0x0209BA20
	mov r9, #4
	bl FUN_0204a2c4
	mov r2, r0
	str r11, [sp]
	mov r1, #2
	stmib sp, {r1, r7}
	mov r3, r9
	str r11, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	bl FUN_ov132_021417d8
	mov r9, r0
	ldrsh r1, [r4, #0xa]
	ldr r0, _02136A14 ; =0x0209BA20
	bl FUN_0204a2c4
	mov r2, r0
	str r11, [sp]
	mov r1, #2
	stmib sp, {r1, r5}
	mov r3, #7
	mov r0, r10
	mov r1, r7
	str r11, [sp, #0xc]
	bl FUN_ov132_021417d8
	add r1, r9, r0
	mov r0, #0x64
	mul r0, r9, r0
	bl _s32_div_f
	mov r9, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02136ec0
	cmp r0, #1
	bne _021368F4
	ldr r0, _02136A18 ; =gL5Config
	ldr r1, _02136A1C ; =0x0213AB68
	bl _ZN8L5Config8getParamEPc
	add r9, r9, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02136ed8
	mov r1, r6
	sub r2, r0, #1
	mov r0, r10
	bl FUN_ov126_02136ecc
_021368F4:
	ldr r1, [sp, #0x10]
	mov r0, r10
	mov r5, #0
	bl FUN_ov126_02136ec0
	cmp r0, #1
	bne _02136938
	ldr r0, _02136A18 ; =gL5Config
	ldr r1, _02136A20 ; =0x0213AB88
	bl _ZN8L5Config8getParamEPc
	sub r9, r9, r0
	ldr r1, [sp, #0x10]
	mov r0, r10
	bl FUN_ov126_02136ed8
	sub r2, r0, #1
	ldr r1, [sp, #0x10]
	mov r0, r10
	bl FUN_ov126_02136ecc
_02136938:
	ldr r0, [sp, #0x40]
	cmp r8, r0
	moveq r0, #1
	movne r0, #0
	cmp r0, #1
	bne _02136964
	ldr r0, _02136A18 ; =gL5Config
	ldr r1, _02136A24 ; =0x0213ABA8
	bl _ZN8L5Config8getParamEPc
	sub r9, r9, r0
	b _02136974
_02136964:
	ldr r0, _02136A18 ; =gL5Config
	ldr r1, _02136A28 ; =0x0213ABC4
	bl _ZN8L5Config8getParamEPc
	add r9, r9, r0
_02136974:
	mov r0, #0x65
	bl FUN_ov16_020ef8d4
	cmp r0, r9
	strleb r5, [r4, #0x11]
	movgt r0, #2
	strgtb r0, [r4, #0x11]
	ldr r1, [sp, #0x10]
	mov r0, r10
	bl FUN_ov132_021461e8
	cmp r0, #0
	beq _021369B4
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	movne r0, #2
	strneb r0, [r4, #0x11]
_021369B4:
	ldr r0, _02136A2C ; =0x0209A0DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _021369E4
	ldr r0, _02136A30 ; =0x0209C220
	ldrh r0, [r0, #0x66]
	tst r0, #0x200
	movne r0, #2
	strneb r0, [r4, #0x11]
	bne _021369E4
	tst r0, #0x100
	strneb r5, [r4, #0x11]
_021369E4:
	mov r0, r10
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02136A04
	mov r1, #1
	mov r0, r10
	mov r2, r1
	bl FUN_ov132_02143598
_02136A04:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02136A10: .word unk_0209A2C0
_02136A14: .word gLogicThink
_02136A18: .word gL5Config
_02136A1C: .word ov126_0213AB68
_02136A20: .word ov126_0213AB88
_02136A24: .word ov126_0213ABA8
_02136A28: .word ov126_0213ABC4
_02136A2C: .word unk_0209A0DC
_02136A30: .word unk_0209C220
	arm_func_end FUN_ov126_02136754

	arm_func_start FUN_ov126_02136a34
FUN_ov126_02136a34: ; 0x02136A34
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r3
	mov r0, r5
	mov r6, r1
	mov r4, r2
	bl FUN_02040170
	ldr r1, [sp, #0x10]
	mov r2, #1
	cmp r1, #1
	ldr r1, [r6, #0x84]
	movne r2, #0
	ldr r1, [r1, #4]
	cmp r5, #0
	str r1, [r4, #4]
	bne _02136A7C
	cmp r2, #0
	moveq r2, #1
	movne r2, #0
_02136A7C:
	ldr r1, [sp, #0x10]
	cmp r1, #2
	cmpne r1, #0
	bne _02136AA4
	ldr r1, [r0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	mov r0, r0, asr #1
	str r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
_02136AA4:
	cmp r2, #0
	ldrne r0, [r0]
	addne r0, r0, #0xc000
	strne r0, [r4]
	ldreq r0, [r0, #8]
	subeq r0, r0, #0xc000
	streq r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02136a34

	arm_func_start FUN_ov126_02136ac4
FUN_ov126_02136ac4: ; 0x02136AC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r6, #0
	mov r4, #0x18
	mov r1, r6
	mov r2, r4
	add r0, r5, #0x164
	bl MI_CpuFill8
	mov r1, r6
	mov r2, r4
	add r0, r5, #0x17c
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r6
	str r6, [r5, #0x16c]
	str r6, [r5, #0x164]
	str r6, [r5, #0x168]
	str r6, [r5, #0x170]
	str r6, [r5, #0x174]
	strb r6, [r5, #0x363]
	bl FUN_ov126_02139a54
	strb r0, [r5, #0x362]
	mov r0, r5
	mov r1, #1
	bl FUN_ov126_02139a54
	ldrb r1, [r5, #0x362]
	cmp r1, r0
	strgtb r0, [r5, #0x362]
	mov r0, r5
	bl FUN_ov126_0213921c
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x2ec
	mov r2, #0x2c
	bl MI_CpuFill8
_02136B54:
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _02136B78
	bl FUN_0206cbf8
	add r1, r5, r4, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0xec]
_02136B78:
	add r4, r4, #1
	cmp r4, #0x16
	blt _02136B54
	ldr r8, _02136C34 ; =0x0209BA20
	mov r7, #0xb
	mov r6, #0x1e
	mov r4, #0
	mov r0, r8
	mov r2, r7
	mov r3, r6
	add r1, r5, #0x2ec
	str r4, [sp]
	bl FUN_0204ee94
	add r1, r5, #2
	mov r0, r8
	mov r2, r7
	mov r3, r6
	add r1, r1, #0x300
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r5
	mov r1, r4
	bl FUN_ov126_02133b8c
	ldr r5, _02136C38 ; 0x02099EF0
	mov r1, r4
	ldr r0, [r5]
	mov r2, r4
	bl FUN_ov126_02136eb4
	ldr r0, [r5]
	mov r6, #1
	mov r1, r6
	mov r2, r4
	bl FUN_ov126_02136eb4
	ldr r0, _02136C3C ; =gL5Config
	ldr r1, _02136C40 ; =0x0213ABE0
	bl _ZN8L5Config8getParamEPc
	mov r1, r4
	mov r4, r0
	ldr r0, [r5]
	mov r2, r4
	bl FUN_ov126_02136ecc
	ldr r0, [r5]
	mov r1, r6
	mov r2, r4
	bl FUN_ov126_02136ecc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02136C34: .word gLogicThink
_02136C38: .word unk_02099EF0
_02136C3C: .word gL5Config
_02136C40: .word ov126_0213ABE0
	arm_func_end FUN_ov126_02136ac4

	arm_func_start FUN_ov126_02136c44
FUN_ov126_02136c44: ; 0x02136C44
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov132_02143c40
	mov r0, r4
	bl FUN_ov132_021458e4
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x174]
	cmp r0, #0
	beq _02136CB0
	ldr r0, [r4, #0x16c]
	mov r3, #0
	add r0, r0, #1
	ldrb r1, [r4, #0x363]
	str r0, [r4, #0x16c]
	cmp r0, #0xc8
	add r2, r1, #1
	moveq r0, #0x64
	streq r0, [r4, #0x16c]
	ldrb r0, [r4, #0x362]
	and r1, r2, #0xff
	strb r2, [r4, #0x363]
	cmp r1, r0
	str r3, [r4, #0x170]
	str r3, [r4, #0x174]
	strhsb r3, [r4, #0x363]
_02136CB0:
	ldr r5, _02136D48 ; =0x0209A2C0
	mov r6, #0
	str r6, [r5]
	str r6, [r5, #4]
	mov r0, #0x80000000
	str r6, [r5, #8]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	sub r2, r0, #0x80000001
	str r2, [r5, #0x48]
	mov r0, r5
	mov r1, r6
	str r2, [r5, #0x4c]
	bl FUN_ov126_0212fbf4
	str r6, [r5, #0x34]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	strb r6, [r5, #0x5c]
	strb r6, [r5, #0x5e]
	strb r6, [r5, #0x58]
	strb r6, [r5, #0x59]
	strb r6, [r5, #0x5f]
	mov r0, r4
	mov r1, r6
	strh r6, [r5, #0x54]
	bl FUN_ov126_02133b8c
	ldr r4, _02136D4C ; 0x02099EF0
	mov r1, r6
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov126_02136eb4
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl FUN_ov126_02136eb4
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02136D48: .word unk_0209A2C0
_02136D4C: .word unk_02099EF0
	arm_func_end FUN_ov126_02136c44

	arm_func_start FUN_ov126_02136d50
FUN_ov126_02136d50: ; 0x02136D50
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_ov126_02138654
	cmp r0, #0
	mov r0, r4
	beq _02136D78
	mov r1, #1
	bl FUN_ov126_02136d84
	ldmfd sp!, {r4, pc}
_02136D78:
	mov r1, #2
	bl FUN_ov126_02136d84
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02136d50

	arm_func_start FUN_ov126_02136d84
FUN_ov126_02136d84: ; 0x02136D84
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x16c]
	mov r4, #0
	cmp r0, #0
	moveq r0, #1
	streq r0, [r5, #0x16c]
	ldr r0, [r5, #0x170]
	mov r6, r1
	cmp r0, #0
	movne r4, #1
	add r1, r5, r4, lsl #2
	mov r0, r4
	str r6, [r1, #0x170]
	bl FUN_02040138
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02144778
	mov r0, r5
	mov r1, #8
	bl FUN_ov132_0214478c
	cmp r6, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r2, r5, #0x164
	ldr r0, [r2, r4, lsl #2]
	add r1, r5, r4, lsl #2
	add r0, r0, #1
	str r0, [r2, r4, lsl #2]
	ldr r0, [r1, #0x164]
	cmp r0, #0xc8
	moveq r0, #0x64
	streq r0, [r1, #0x164]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02136d84

	arm_func_start FUN_ov126_02136e08
FUN_ov126_02136e08: ; 0x02136E08
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r0, r0, #0x164
	mov r2, #0x18
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_02136e08

	arm_func_start FUN_ov126_02136e2c
FUN_ov126_02136e2c: ; 0x02136E2C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r0, r0, #0x17c
	mov r2, #0x18
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_02136e2c

	arm_func_start FUN_ov126_02136e50
FUN_ov126_02136e50: ; 0x02136E50
	stmfd sp!, {r4, lr}
	mov r12, #0xb
	mul r12, r1, r12
	ldrb r4, [r0, #0x362]
	add r0, r0, #0x2ec
	mov r1, r2
	cmp r4, r3
	add r0, r0, r12, lsl #1
	mov r2, r3, lsl #1
	movgt r4, r3
	bl MI_CpuCopy8
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02136e50

	arm_func_start FUN_ov126_02136e84
FUN_ov126_02136e84: ; 0x02136E84
	stmfd sp!, {r3, lr}
	mov r12, #0xb
	mul r12, r1, r12
	add r1, r0, #0x2ec
	cmp r3, #0xb
	movgt r3, #0xb
	mov r0, r2
	add r1, r1, r12, lsl #1
	mov r2, r3, lsl #1
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_02136e84

	arm_func_start FUN_ov126_02136eb4
FUN_ov126_02136eb4: ; 0x02136EB4
	add r0, r0, r1
	strb r2, [r0, #0x3a4]
	bx lr
	arm_func_end FUN_ov126_02136eb4

	arm_func_start FUN_ov126_02136ec0
FUN_ov126_02136ec0: ; 0x02136EC0
	add r0, r0, r1
	ldrb r0, [r0, #0x3a4]
	bx lr
	arm_func_end FUN_ov126_02136ec0

	arm_func_start FUN_ov126_02136ecc
FUN_ov126_02136ecc: ; 0x02136ECC
	add r0, r0, r1, lsl #2
	str r2, [r0, #0x3a8]
	bx lr
	arm_func_end FUN_ov126_02136ecc

	arm_func_start FUN_ov126_02136ed8
FUN_ov126_02136ed8: ; 0x02136ED8
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x3a8]
	bx lr
	arm_func_end FUN_ov126_02136ed8

	arm_func_start FUN_ov126_02136ee4
FUN_ov126_02136ee4: ; 0x02136EE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	mov r0, #0x64
	mov r6, r1
	mov r9, r2
	bl FUN_ov16_020ef928
	ldr r4, _021371B8 ; =0x0209A2C0
	mov r8, r0
	ldr r0, [r4, #0x48]
	bl FUN_ov16_020efa80
	movs r5, r0
	bne _02136F24
	ldr r0, [r4, #0x4c]
	bl FUN_ov16_020efa80
	mov r5, r0
_02136F24:
	mov r0, r5
	bl FUN_ov16_020f0810
	cmp r6, r0
	bne _021370BC
	mov r0, r5
	bl FUN_02040148
	mov r1, r0
	mov r0, r10
	bl FUN_ov126_02139800
	mov r7, #0
	mov r2, r0
	str r7, [sp]
	add r4, sp, #0x10
	mov r0, #4
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r5
	mov r3, #1
	bl FUN_ov126_021307b8
	mov r6, r0
	mov r0, r10
	mov r1, r5
	mov r2, r6
	bl FUN_ov132_02153174
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x88]
	ldrh r0, [r0, #0x32]
	cmp r0, #0
	beq _02136FC8
	b _02136FC0
_02136FA0:
	ldr r1, [r5, #0x88]
	ldr r0, [r4, r7, lsl #2]
	ldrh r1, [r1, #0x32]
	cmp r0, r1
	addeq sp, sp, #0x20
	streq r0, [r9]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, #1
_02136FC0:
	cmp r7, r6
	blt _02136FA0
_02136FC8:
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov132_02147e90
	cmp r0, #0
	beq _0213701C
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0
	ldr r0, _021371BC ; =0x0209BA20
	mov r1, r5
	str r3, [sp, #4]
	mov r2, #7
	bl FUN_0204ad5c
	str r0, [r9]
	cmp r0, #0
	moveq r0, #0x14
	add sp, sp, #0x20
	streq r0, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213701C:
	cmp r6, #0
	ble _02137050
	ldr r0, [sp, #0xc]
	cmp r8, r0
	bhs _02137050
	mov r0, r8
	mov r1, r6
	bl _u32_div_f
	add r0, sp, #0x10
	ldr r0, [r0, r1, lsl #2]
	add sp, sp, #0x20
	str r0, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02137050:
	ldr r0, _021371B8 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _021370A0
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r4, r0
	mov r0, r10
	mov r1, #0x16
	bl FUN_ov132_021448a8
	cmp r4, r0
	movlo r0, #0x15
	strlo r0, [r9]
	movhs r0, #0x14
	add sp, sp, #0x20
	strhs r0, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021370A0:
	tst r8, #1
	movne r0, #0x16
	strne r0, [r9]
	moveq r0, #0x17
	add sp, sp, #0x20
	streq r0, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021370BC:
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_02139800
	mov r4, r0
	mov r2, r5
	mov r3, #1
	add r11, sp, #0x10
	stmia sp, {r3, r11}
	mov r5, #4
	mov r0, r10
	mov r1, r4
	str r5, [sp, #8]
	bl FUN_ov126_021307b8
	mov r6, r0
	mov r0, r10
	mov r1, r4
	mov r2, r6
	bl FUN_ov132_02153174
	ldr r1, [r4, #0x88]
	str r0, [sp, #0xc]
	ldrh r0, [r1, #0x32]
	cmp r0, #0
	beq _02137148
	mov r7, #0
	b _02137140
_02137120:
	ldr r1, [r4, #0x88]
	ldr r0, [r11, r7, lsl #2]
	ldrh r1, [r1, #0x32]
	cmp r0, r1
	addeq sp, sp, #0x20
	streq r0, [r9]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, #1
_02137140:
	cmp r7, r6
	blt _02137120
_02137148:
	cmp r6, #0
	ble _0213717C
	ldr r0, [sp, #0xc]
	cmp r8, r0
	bhs _0213717C
	mov r0, r8
	mov r1, r6
	bl _u32_div_f
	add r0, sp, #0x10
	ldr r0, [r0, r1, lsl #2]
	add sp, sp, #0x20
	str r0, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213717C:
	cmp r4, #0
	moveq r0, #0x1e
	addeq sp, sp, #0x20
	streq r0, [r9]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #2
	bl FUN_ov16_020ef928
	mov r2, r0
	ldr r0, _021371BC ; =0x0209BA20
	mov r1, r4
	mov r3, #0
	bl FUN_0204ad4c
	str r0, [r9]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021371B8: .word unk_0209A2C0
_021371BC: .word gLogicThink
	arm_func_end FUN_ov126_02136ee4

	arm_func_start FUN_ov126_021371c0
FUN_ov126_021371c0: ; 0x021371C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	mov r9, r1
	mov r11, r2
	str r3, [sp]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r4, #0xd]
	bl FUN_ov16_020efa80
	ldr r7, _021374A0 ; =0x0209BA20
	mov r6, r0
	mov r0, r7
	mov r1, r9
	bl FUN_0204a2c4
	mov r8, r0
	mov r0, r7
	mov r1, r11
	bl FUN_0204a2c4
	str r0, [sp, #8]
	mov r0, r10
	mov r7, #0
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _021374A4 ; =0x0209A2C0
	ldr r0, [r0, #0x4c]
	bl FUN_ov16_020f07f4
	str r0, [sp, #4]
	cmp r0, #0
	bne _02137270
	cmp r8, #0
	beq _02137264
	ldrb r0, [r8]
	cmp r0, #7
	moveq r7, #1
_02137264:
	strh r11, [r4, #0xa]
	strh r9, [r4, #8]
	b _02137290
_02137270:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02137288
	ldrb r0, [r0]
	cmp r0, #7
	moveq r7, #1
_02137288:
	strh r9, [r4, #0xa]
	strh r11, [r4, #8]
_02137290:
	ldr r0, [sp]
	strb r0, [r4, #0x12]
	bl FUN_ov16_020f066c
	cmp r0, #0
	bne _02137304
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02137304
	ldrsh r0, [r4, #8]
	cmp r0, #0x15
	bne _02137304
	mov r0, r5
	bl FUN_0206dc98
	mov r9, r0
	ldrsh r1, [r4, #8]
	ldr r0, _021374A0 ; =0x0209BA20
	bl FUN_0204af50
	add r9, r9, r0
	mov r0, r6
	bl FUN_0206dc98
	mov r11, r0
	ldrsh r1, [r4, #0xa]
	ldr r0, _021374A0 ; =0x0209BA20
	bl FUN_0204af50
	add r0, r11, r0
	cmp r9, r0
	movgt r0, #0x14
	strgth r0, [r4, #8]
_02137304:
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02137378
	cmp r7, #0
	bne _02137334
	ldrb r0, [r4, #0xf]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02137378
_02137334:
	ldrb r0, [r4, #0xf]
	add r7, sp, #0xc
	mov r1, r5
	tst r0, #0x20
	movne r2, #2
	moveq r2, #0
	mov r0, r10
	mov r3, r7
	orr r2, r2, #0xe00
	bl FUN_01ffb93c
	mov r0, r7
	bl FUN_02040a80
	cmp r0, #0
	ldreq r0, [sp, #0xc]
	streq r0, [r10, #0x6c]
	ldreq r0, [sp, #0x10]
	streq r0, [r10, #0x70]
_02137378:
	ldr r0, [sp, #4]
	mov r1, r5
	cmp r0, #0
	ldrne r8, [sp, #8]
	mov r0, r10
	mov r2, r8
	bl FUN_ov132_02147024
	ldrsh r0, [r4, #8]
	cmp r0, #0x15
	bne _021373F0
	cmp r6, #0
	beq _021373F0
	mov r0, r6
	bl FUN_0206d6c4
	cmp r0, #0
	beq _021373F0
	bl FUN_ov16_020f066c
	cmp r0, #0
	ldreqsh r0, [r4, #0xa]
	cmpeq r0, #0x1e
	bne _021373F0
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	mov r7, r0
	mov r0, r10
	mov r1, #0x15
	bl FUN_ov132_021448a8
	cmp r7, r0
	movlo r0, #0x1f
	strloh r0, [r4, #0xa]
_021373F0:
	ldrsh r0, [r4, #8]
	mov r7, #1
	cmp r0, #0x15
	ldreqb r0, [r4, #0xf]
	orreq r0, r0, #4
	streqb r0, [r4, #0xf]
	ldrsh r0, [r4, #8]
	cmp r0, #0x17
	ldreqb r0, [r4, #0xf]
	orreq r0, r0, #2
	streqb r0, [r4, #0xf]
	mov r0, r10
	strb r7, [r10, #0x36d]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02137440
	mov r0, r10
	mov r1, r7
	mov r2, r7
	bl FUN_ov132_02143598
_02137440:
	mov r7, #0x1e
	mov r0, r10
	mov r1, r7
	mov r2, r5
	add r3, r4, #8
	bl FUN_ov126_0213a490
	ldrsh r2, [r4, #8]
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_0213a6c8
	cmp r6, #0
	beq _02137494
	ldrsh r2, [r4, #0xa]
	mov r0, r10
	mov r1, r6
	bl FUN_ov126_0213a6c8
	mov r0, r10
	mov r1, r7
	mov r2, r6
	add r3, r4, #0xa
	bl FUN_ov126_0213a490
_02137494:
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021374A0: .word gLogicThink
_021374A4: .word unk_0209A2C0
	arm_func_end FUN_ov126_021371c0

	arm_func_start FUN_ov126_021374a8
FUN_ov126_021374a8: ; 0x021374A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldrb r6, [r1, #0x10]
	mov r9, r0
	mov r5, r2
	tst r6, #8
	movne r0, #1
	moveq r0, #0
	mov r4, r3
	cmp r0, #0
	bne _021374F8
	ldrb r2, [r1, #0x10]
	orr r0, r4, #8
	and r0, r0, #0xff
	orr r2, r2, r0
	strb r2, [r1, #0x10]
	add sp, sp, #0x18
	mov r0, r1
	strb r5, [r1, #0x11]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021374F8:
	mov r7, #0x18
	add r8, sp, #0
	mov r0, r1
	mov r1, r8
	mov r2, r7
	bl MI_CpuCopy8
	mov r0, r9
	bl FUN_ov126_02137544
	mov r6, r0
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl MI_CpuCopy8
	strb r5, [r6, #0x11]
	orr r1, r4, #8
	mov r0, r6
	strb r1, [r6, #0x10]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov126_021374a8

	arm_func_start FUN_ov126_02137544
FUN_ov126_02137544: ; 0x02137544
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021375CC ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _02137574
	ldr r1, _021375D0 ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	moveq r1, #0
	streqb r1, [r0, #0x19f]
	ldreq r0, [r0, #0x200]
	ldmeqfd sp!, {r3, r4, r5, pc}
_02137574:
	add r1, r0, #0x100
	ldrsb r2, [r1, #0x9f]
	mov r4, #0
	add r2, r2, #1
	strb r2, [r0, #0x19f]
	ldrsb r1, [r1, #0x9f]
	mov r2, #0x18
	cmp r1, #0x10
	movge r1, #0
	strgeb r1, [r0, #0x19f]
	add r1, r0, #0x100
	ldrsb r1, [r1, #0x9f]
	ldr r0, [r0, #0x200]
	mla r5, r1, r2, r0
	mov r0, r5
	mov r1, r4
	bl MI_CpuFill8
	sub r1, r4, #1
	strb r1, [r5, #0xd]
	mov r0, r5
	strb r1, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_021375CC: .word unk_020A0640
_021375D0: .word gWirelessUtil
	arm_func_end FUN_ov126_02137544

	arm_func_start FUN_ov126_021375d4
FUN_ov126_021375d4: ; 0x021375D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0213763C ; =0x020A0640
	mov r5, r0
	ldrb r1, [r1, #0x1a]
	add r0, r5, #0x100
	ldrsb r4, [r0, #0x9f]
	cmp r1, #0
	beq _02137608
	ldr r0, _02137640 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldreq r0, [r5, #0x200]
	ldmeqfd sp!, {r3, r4, r5, pc}
_02137608:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _02137624
	mov r0, r5
	bl FUN_ov132_02143058
	ldrsb r4, [r0, #3]
_02137624:
	cmp r4, #0
	movlt r0, #0
	ldrge r1, [r5, #0x200]
	movge r0, #0x18
	mlage r0, r4, r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
_0213763C: .word unk_020A0640
_02137640: .word gWirelessUtil
	arm_func_end FUN_ov126_021375d4

	arm_func_start FUN_ov126_02137644
FUN_ov126_02137644: ; 0x02137644
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02137774 ; =0x020A0640
	mov r6, r0
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _021376E0
	ldr r1, _02137778 ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	bne _021376E0
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _021376E0
	ldr r5, [r6, #0x208]
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x30
	strb r4, [r6, #0x1a3]
	bl MI_CpuFill8
	mov r0, #0xff
	strb r0, [r5]
	sub r0, r0, #0x100
	strb r0, [r5, #0x20]
	strh r4, [r5, #0x22]
	strb r0, [r5, #0x24]
	strh r4, [r5, #0x26]
	strb r0, [r5, #0x28]
	ldrb r0, [r5, #0x29]
	bic r0, r0, #0xf
	and r0, r0, #0xff
	bic r0, r0, #0xf0
	strb r0, [r5, #0x29]
	strh r4, [r5, #0x2a]
	strh r4, [r5, #0x2c]
	strb r4, [r5, #0x2e]
	strb r4, [r5, #0x2f]
	ldr r0, [r6, #0x208]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021376E0:
	add r0, r6, #0x100
	ldrsb r1, [r0, #0xa3]
	mov r2, #0x30
	mov r4, #0
	add r1, r1, #1
	strb r1, [r6, #0x1a3]
	ldrsb r0, [r0, #0xa3]
	mov r1, r4
	cmp r0, #0x10
	movge r0, #0
	strgeb r0, [r6, #0x1a3]
	add r0, r6, #0x100
	ldrsb r0, [r0, #0xa3]
	ldr r6, [r6, #0x208]
	smulbb r7, r0, r2
	add r5, r6, r7
	mov r0, r5
	bl MI_CpuFill8
	mov r0, #0xff
	strb r0, [r6, r7]
	sub r0, r0, #0x100
	strb r0, [r5, #0x20]
	strh r4, [r5, #0x22]
	strb r0, [r5, #0x24]
	strh r4, [r5, #0x26]
	strb r0, [r5, #0x28]
	ldrb r1, [r5, #0x29]
	mov r0, r5
	bic r1, r1, #0xf
	and r1, r1, #0xff
	bic r1, r1, #0xf0
	strb r1, [r5, #0x29]
	strh r4, [r5, #0x2a]
	strh r4, [r5, #0x2c]
	strb r4, [r5, #0x2e]
	strb r4, [r5, #0x2f]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02137774: .word unk_020A0640
_02137778: .word gWirelessUtil
	arm_func_end FUN_ov126_02137644

	arm_func_start FUN_ov126_0213777c
FUN_ov126_0213777c: ; 0x0213777C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021377F0 ; =0x020A0640
	mov r5, r0
	ldrb r2, [r1, #0x1a]
	add r1, r5, #0x100
	ldrsb r4, [r1, #0xa3]
	cmp r2, #0
	beq _021377BC
	ldr r1, _021377F4 ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	bne _021377BC
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldrne r0, [r5, #0x208]
	ldmnefd sp!, {r3, r4, r5, pc}
_021377BC:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _021377D8
	mov r0, r5
	bl FUN_ov132_02143058
	ldrsb r4, [r0, #7]
_021377D8:
	cmp r4, #0
	movlt r0, #0
	ldrge r1, [r5, #0x208]
	movge r0, #0x30
	mlage r0, r4, r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
_021377F0: .word unk_020A0640
_021377F4: .word gWirelessUtil
	arm_func_end FUN_ov126_0213777c

	arm_func_start FUN_ov126_021377f8
FUN_ov126_021377f8: ; 0x021377F8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0213787C ; =0x020A0640
	mov r4, r0
	ldrb r3, [r2, #0x1a]
	add r2, r4, #0x100
	mov r6, r1
	cmp r3, #0
	ldrsb r5, [r2, #0xa3]
	beq _0213783C
	ldr r1, _02137880 ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	bne _0213783C
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldrne r0, [r4, #0x208]
	ldmnefd sp!, {r4, r5, r6, pc}
_0213783C:
	mov r0, r4
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _02137858
	mov r0, r4
	bl FUN_ov132_02143058
	ldrsb r5, [r0, #7]
_02137858:
	cmp r5, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	subs r5, r5, r6
	ldr r1, [r4, #0x208]
	addmi r5, r5, #0x10
	mov r0, #0x30
	mla r0, r5, r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_0213787C: .word unk_020A0640
_02137880: .word gWirelessUtil
	arm_func_end FUN_ov126_021377f8

	arm_func_start FUN_ov126_02137884
FUN_ov126_02137884: ; 0x02137884
	stmfd sp!, {r4, lr}
	ldr r4, _021378B4 ; 0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldr r0, [r4]
	beq _021378A8
	bl FUN_ov126_0213777c
	ldmfd sp!, {r4, pc}
_021378A8:
	mov r1, #1
	bl FUN_ov126_021377f8
	ldmfd sp!, {r4, pc}
_021378B4: .word unk_02099EF0
	arm_func_end FUN_ov126_02137884

	arm_func_start FUN_ov126_021378b8
FUN_ov126_021378b8: ; 0x021378B8
	mov r1, #1
	str r1, [r0, #0x31c]
	bx lr
	arm_func_end FUN_ov126_021378b8

	arm_func_start FUN_ov126_021378c4
FUN_ov126_021378c4: ; 0x021378C4
	cmp r1, #0
	ldrnesb r2, [r1, #0x20]
	cmnne r2, #1
	bxeq lr
	ldrb r1, [r1, #0x29]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	cmpne r1, #2
	cmpne r1, #5
	streq r1, [r0, #0x31c]
	bx lr
	arm_func_end FUN_ov126_021378c4

	arm_func_start FUN_ov126_021378f4
FUN_ov126_021378f4: ; 0x021378F4
	ldr r0, [r0, #0x31c]
	bx lr
	arm_func_end FUN_ov126_021378f4

	arm_func_start FUN_ov126_021378fc
FUN_ov126_021378fc: ; 0x021378FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	mov r8, r1
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	mov r5, r0
	mov r0, r8
	bl FUN_0206d5f0
	bl FUN_ov16_020f0a30
	cmp r0, #1
	bne _021379A4
	mov r7, #1
	add r3, sp, #0xc
	str r7, [sp]
	mov r2, r5
	str r3, [sp, #4]
	mov r5, #4
	mov r0, r4
	mov r1, r8
	mov r3, #2
	str r5, [sp, #8]
	bl FUN_ov126_021307b8
	mov r6, r0
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl FUN_ov132_02153174
	mov r5, r0
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r6, #0
	ble _02137994
	cmp r0, r5
	addlo sp, sp, #0x1c
	strlo r7, [r4, #0x3b0]
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02137994:
	mov r0, #2
	add sp, sp, #0x1c
	str r0, [r4, #0x3b0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021379A4:
	mov r0, #0
	str r0, [r4, #0x3b0]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov126_021378fc

	arm_func_start FUN_ov126_021379b4
FUN_ov126_021379b4: ; 0x021379B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	mov r6, r2
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r0, [r5, #0x20]
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r8
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	ldr r1, [r8, #0x3b0]
	mov r2, r0
	cmp r1, #0
	beq _02137A10
	cmp r1, #1
	beq _02137A20
	cmp r1, #2
	beq _02137A7C
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02137A10:
	mov r0, #0
	add sp, sp, #0x1c
	str r0, [r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02137A20:
	mov r0, #1
	str r0, [sp]
	add r7, sp, #0xc
	mov r0, r8
	mov r1, r4
	str r7, [sp, #4]
	mov r5, #4
	mov r3, #2
	str r5, [sp, #8]
	bl FUN_ov126_021307b8
	mov r5, r0
	mov r0, #0x64
	bl FUN_ov16_020ef928
	mov r1, r5
	bl _u32_div_f
	ldr r1, [r7, r1, lsl #2]
	ldr r0, _02137AB0 ; 0x02099EF0
	str r1, [r6]
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov132_02149b64
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02137A7C:
	mov r0, #0
	str r0, [r6]
	ldrb r1, [r5, #0x29]
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	orr r0, r0, #2
	and r0, r0, #0xff
	bic r1, r1, #0xf
	and r0, r0, #0xf
	orr r0, r1, r0
	strb r0, [r5, #0x29]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02137AB0: .word unk_02099EF0
	arm_func_end FUN_ov126_021379b4

	arm_func_start FUN_ov126_02137ab4
FUN_ov126_02137ab4: ; 0x02137AB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r6, r1
	str r2, [sp, #0x10]
	bl FUN_ov126_021375d4
	mov r7, r0
	mov r0, r5
	bl FUN_ov126_0213777c
	mov r8, r0
	ldr r0, [sp, #0x10]
	strh r0, [r8, #0x22]
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020efa80
	str r0, [sp, #0x24]
	mov r0, r6
	bl FUN_ov16_020efa80
	ldr r6, _02138468 ; =0x0209BA20
	mov r9, r0
	ldrsh r1, [r7, #8]
	mov r0, r6
	bl FUN_0204a2c4
	mov r10, r0
	ldrsh r1, [r8, #0x22]
	mov r0, r6
	bl FUN_0204a2c4
	mov r11, r0
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldrneb r0, [r8, #0x29]
	movne r0, r0, lsl #0x18
	movne r4, r0, lsr #0x1c
	bne _02138034
	ldrb r0, [r8, #0x2f]
	cmp r0, #1
	bne _02137C74
	ldrb r0, [r11, #0x13]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _02137C74
	ldr r0, _02138468 ; =0x0209BA20
	ldrb r0, [r0, #0x887]
	cmp r0, #1
	bne _02137BC4
	ldr r0, [r9, #0x84]
	ldrh r0, [r0, #0x16]
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _02137BC4
	ldrb r1, [r8, #0x29]
	mov r4, #1
	mov r0, r4, lsl #0x1c
	bic r1, r1, #0xf0
	orr r0, r1, r0, lsr #24
	strb r0, [r8, #0x29]
	str r4, [sp]
	str r4, [sp, #4]
	ldrsh r1, [r9, #0x94]
	mov r0, r5
	mov r3, r4
	sub r2, r4, #2
	bl FUN_ov132_0214f5b0
	b _02138034
_02137BC4:
	ldrsb r0, [r8, #0x20]
	bl FUN_ov16_020efa80
	mov r4, r0
	ldrsh r1, [r8, #0x22]
	ldr r0, _02138468 ; =0x0209BA20
	mov r6, #0
	bl FUN_0204a2c4
	mov r2, #1
	ldrb r1, [r0]
	mov r10, r2
	mov r3, r2
	cmp r1, #5
	cmpne r1, #6
	movne r10, r6
	cmp r10, #0
	bne _02137C10
	ldrb r1, [r0]
	cmp r1, #7
	movne r3, #0
_02137C10:
	cmp r3, #0
	bne _02137C24
	ldrb r0, [r0]
	cmp r0, #8
	movne r2, #0
_02137C24:
	mov r0, #1
	cmp r2, #0
	moveq r0, #0
	cmp r0, #0
	beq _02137C5C
	ldr r0, _0213846C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02137C5C
	ldr r0, _02138470 ; 0x02099EF0
	ldrh r2, [r8, #0x22]
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov126_02130a98
_02137C5C:
	mov r0, r5
	mov r1, #0
	bl FUN_ov132_02147cfc
	ldrb r1, [r8, #0x29]
	mov r4, #5
	b _02138024
_02137C74:
	ldr r0, [sp, #0x24]
	bl FUN_0206dc98
	mov r6, r0
	ldrsh r1, [r7, #8]
	ldr r0, _02138468 ; =0x0209BA20
	bl FUN_0204af50
	add r6, r6, r0
	mov r0, r9
	bl FUN_0206dc98
	str r0, [sp, #0x28]
	ldrsh r1, [r8, #0x22]
	ldr r0, _02138468 ; =0x0209BA20
	bl FUN_0204af50
	ldr r1, [sp, #0x28]
	add r0, r1, r0
	cmp r6, r0
	mvngt r0, #0
	strgt r0, [sp, #0x14]
	bgt _02137D64
	movlt r0, #1
	strlt r0, [sp, #0x14]
	blt _02137D64
	ldr r0, [sp, #0x24]
	bl FUN_0206cc34
	mov r6, r0
	mov r0, r9
	bl FUN_0206cc34
	sub r0, r6, r0
	cmp r0, #0x14
	movge r6, #0x5a
	bge _02137D44
	cmp r0, #0x12
	movge r6, #0x32
	bge _02137D44
	cmp r0, #0x10
	movge r6, #0x28
	bge _02137D44
	cmp r0, #0xe
	movge r6, #0x1e
	bge _02137D44
	cmp r0, #0xc
	movge r6, #0x14
	bge _02137D44
	cmp r0, #0xa
	movge r6, #0xa
	bge _02137D44
	cmp r0, #8
	movge r6, #8
	bge _02137D44
	mov r6, #5
	cmp r0, #6
	movlt r6, #0
_02137D44:
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	cmp r6, r0
	movhi r0, #0x64
	subhi r0, r0, #0x65
	strhi r0, [sp, #0x14]
	movls r0, #0
	strls r0, [sp, #0x14]
_02137D64:
	ldr r0, [sp, #0x14]
	cmn r0, #1
	moveq r4, #0
	beq _02138020
	ldrb r1, [r7, #0x12]
	mov r2, #1
	mov r0, #0
	cmp r1, #0
	subne r0, r1, #1
	ldrb r1, [r10]
	mov r6, r2
	mov r3, r2
	cmp r1, #5
	cmpne r1, #6
	movne r6, #0
	cmp r6, #0
	bne _02137DB4
	ldrb r1, [r10]
	cmp r1, #7
	movne r3, #0
_02137DB4:
	cmp r3, #0
	bne _02137DC8
	ldrb r1, [r10]
	cmp r1, #8
	movne r2, #0
_02137DC8:
	cmp r2, #0
	beq _02137DFC
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r9, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, r5
	mov r2, r10
	ldr r1, [sp, #0x24]
	mov r3, #9
	b _02137E94
_02137DFC:
	ldrb r1, [r7, #0xf]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _02137E40
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r9, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, r5
	mov r2, r10
	ldr r1, [sp, #0x24]
	mov r3, #6
	b _02137E94
_02137E40:
	ldrb r1, [r7, #0xf]
	mov r2, r10
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	str r0, [sp]
	mov r0, #2
	cmp r1, #0
	str r0, [sp, #4]
	mov r1, #0
	mov r0, r5
	beq _02137E84
	str r9, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r3, #5
	b _02137E94
_02137E84:
	str r9, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r3, #4
_02137E94:
	bl FUN_ov132_021417d8
	mov r6, r0
	mov r0, r5
	bl FUN_ov132_021471fc
	mul r1, r6, r0
	ldr r2, _02138474 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	add r6, r6, r3
	cmp r6, #1
	ldrb r0, [r11, #0x13]
	movlt r6, #1
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02137F18
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, r9
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, r5
	mov r2, r11
	mov r3, #0x20
	bl FUN_ov132_021417d8
	mov r4, r0
	mov r0, #1
	str r0, [sp, #0x20]
_02137F18:
	ldrb r0, [r11, #0x13]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02137F6C
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, r9
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	mov r0, r5
	str r3, [sp, #0xc]
	mov r2, r11
	mov r3, #0x1c
	bl FUN_ov132_021417d8
	mov r4, r0
_02137F6C:
	ldr r0, [sp, #0x14]
	cmp r4, #1
	movlt r4, #1
	cmp r0, #1
	bne _02137F98
	cmp r4, #3
	mov r6, #1
	bge _02137F98
	mov r0, #5
	bl FUN_ov16_020ef8d4
	add r4, r0, #3
_02137F98:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02137FC4
	cmp r6, r4
	movge r4, #0
	bge _02138020
	mov r0, r5
	mov r1, #0
	bl FUN_ov132_02147cfc
	mov r4, #2
	b _02138020
_02137FC4:
	mov r0, #0x4b
	mul r1, r6, r0
	ldr r2, _02138474 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	cmp r3, r4
	movge r4, #0
	bge _02138020
	mov r0, #0x7d
	mul r1, r6, r0
	smull r0, r3, r2, r1
	mov r0, r1, lsr #0x1f
	add r3, r0, r3, asr #5
	cmp r3, r4
	mov r0, r5
	mov r1, #1
	ble _02138018
	bl FUN_ov132_02147cfc
	mov r4, #3
	b _02138020
_02138018:
	bl FUN_ov132_02147cfc
	mov r4, #4
_02138020:
	ldrb r1, [r8, #0x29]
_02138024:
	mov r0, r4, lsl #0x1c
	bic r1, r1, #0xf0
	orr r0, r1, r0, lsr #24
	strb r0, [r8, #0x29]
_02138034:
	cmp r4, #5
	addls pc, pc, r4, lsl #2
	b _021382F0
_02138040: ; jump table
	b _02138058 ; case 0
	b _021382F0 ; case 1
	b _021380C0 ; case 2
	b _02138104 ; case 3
	b _021381D0 ; case 4
	b _021382D4 ; case 5
_02138058:
	ldrsb r0, [r8, #0x20]
	bl FUN_ov16_020efa80
	mov r3, #0
	mov r6, #0x1e
	mov r1, r0
	mov r0, r5
	mov r2, r6
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	bl FUN_ov132_0213c29c
	mov r0, r9
	mov r2, r6
	mov r1, #3
	bl FUN_0206dbb4
	ldrsb r0, [r8, #0x20]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _021380B4
	ldr r0, _02138478 ; =gL5Sound
	mov r1, #0x20
_021380AC:
	bl _ZN7L5Sound12FUN_0202cf6cEm
	b _021382F0
_021380B4:
	ldr r0, _02138478 ; =gL5Sound
	mov r1, #0x1f
	b _021380AC
_021380C0:
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020efa80
	mov r2, #0
	mov r1, r0
	mov r0, r5
	str r2, [sp]
	mov r3, #1
	mov r2, #0xf
	str r3, [sp, #4]
	bl FUN_ov132_0213c29c
	mov r3, r11
	mov r0, #2
	str r0, [sp]
	mov r0, r5
	mov r1, r8
	mov r2, r9
	b _021382EC
_02138104:
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020efa80
	mov r10, #1
	mov r6, #0
	mov r11, #0x1e
	mov r1, r0
	stmia sp, {r6, r10}
	mov r0, r5
	mov r2, r11
	mov r3, r10
	bl FUN_ov132_0213c29c
	ldrsb r0, [r8, #0x20]
	bl FUN_ov16_020efa80
	mov r1, r0
	mov r0, r5
	mov r2, r11
	mov r3, r10
	stmia sp, {r6, r10}
	bl FUN_ov132_0213c29c
	sub r1, r11, #0x50
	mov r0, r5
	bl FUN_ov132_021472f4
	mov r0, r5
	mov r1, r10
	bl FUN_ov132_02147cfc
	mov r0, r5
	bl FUN_ov126_0213246c
	ldrsb r1, [r8, #0x20]
	mov r6, r0
	mov r11, #4
	strb r1, [r6, #7]
	ldrsb r3, [r7, #0xc]
	mov r2, #3
	mov r1, #0x28
	strb r3, [r6, #4]
	strb r11, [r6, #0xd]
	strb r2, [r6, #0xa]
	ldrb r2, [r6, #0x12]
	orr r2, r2, #9
	strb r2, [r6, #0x12]
	strh r10, [r6]
	ldr r2, [sp, #0x10]
	strh r2, [r6, #2]
	strb r10, [r6, #0x10]
	strb r10, [r6, #0x11]
	bl FUN_ov126_02132748
	mov r0, r6
	mov r1, #0x32
	bl FUN_ov126_02132780
	strb r11, [r6, #0x15]
	b _021382F0
_021381D0:
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020efa80
	mov r10, #0
	mov r6, #1
	str r10, [sp]
	mov r1, r0
	str r6, [sp, #4]
	mov r0, r5
	mov r2, #0x1e
	mov r3, r6
	bl FUN_ov132_0213c29c
	str r10, [sp]
	str r10, [sp, #4]
	ldrsb r1, [r8, #0x20]
	mov r3, r6
	mov r2, r10
	mov r0, r5
	bl FUN_01ff8c44
	mov r0, r9
	bl FUN_ov16_020f07d0
	cmp r0, #1
	moveq r0, #0x4000
	streq r0, [sp, #0x1c]
	beq _0213823C
	cmp r0, #0
	moveq r0, #0xc000
	streq r0, [sp, #0x1c]
_0213823C:
	ldr r2, [sp, #0x1c]
	mov r0, r5
	mov r1, r9
	bl FUN_ov132_021451ac
	mov r0, r5
	mov r1, r9
	bl FUN_ov132_02144720
	mov r10, #1
	mov r0, r5
	mov r1, r10
	bl FUN_ov132_02147cfc
	mov r0, r5
	bl FUN_ov126_0213246c
	ldrsb r1, [r8, #0x20]
	mov r6, r0
	mov r3, #4
	strb r1, [r6, #7]
	ldrsb r7, [r7, #0xc]
	mov r2, #3
	mov r1, #0x28
	strb r7, [r6, #4]
	strb r3, [r6, #0xd]
	strb r2, [r6, #0xa]
	ldrb r2, [r6, #0x12]
	orr r2, r2, #9
	strb r2, [r6, #0x12]
	strh r10, [r6]
	ldr r2, [sp, #0x10]
	strh r2, [r6, #2]
	strb r10, [r6, #0x10]
	strb r10, [r6, #0x11]
	bl FUN_ov126_02132748
	mov r0, r6
	mov r1, #0x32
	bl FUN_ov126_02132780
	mov r0, #2
	strb r0, [r6, #0x15]
	b _021382F0
_021382D4:
	mov r6, #3
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r11
	str r6, [sp]
_021382EC:
	bl FUN_ov126_02138700
_021382F0:
	ldrb r1, [r8, #0x29]
	cmp r4, #2
	mov r10, #4
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	orr r0, r0, #4
	and r0, r0, #0xff
	bic r1, r1, #0xf
	and r0, r0, #0xf
	orr r0, r1, r0
	strb r0, [r8, #0x29]
	beq _02138328
	cmp r4, #5
	bne _02138418
_02138328:
	mov r0, r5
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02138418
	bl FUN_0206d6c4
	cmp r0, #1
	bne _02138418
	mov r3, #1
	add r6, sp, #0x2c
	mov r0, r5
	mov r1, r7
	mov r2, r9
	stmia sp, {r3, r6, r10}
	bl FUN_ov126_021307b8
	mov r10, r0
	mov r0, #0x64
	bl FUN_ov16_020ef8d4
	mov r11, r0
	mov r0, r5
	mov r1, r7
	mov r2, r10
	bl FUN_ov132_02153174
	ldr r1, [r7, #0x88]
	ldrh r1, [r1, #0x32]
	cmp r1, #0
	beq _021383C4
	mov r2, #0
	b _021383B8
_021383A0:
	ldr r1, [r7, #0x88]
	ldr r0, [r6, r2, lsl #2]
	ldrh r1, [r1, #0x32]
	add r2, r2, #1
	cmp r0, r1
	streq r0, [sp, #0x18]
_021383B8:
	cmp r2, r10
	blt _021383A0
	b _02138408
_021383C4:
	cmp r10, #0
	ble _021383E8
	cmp r11, r0
	bhs _021383E8
	mov r0, r11
	mov r1, r10
	bl _u32_div_f
	ldr r0, [r6, r1, lsl #2]
	b _02138404
_021383E8:
	mov r0, #2
	bl FUN_ov16_020ef8d4
	mov r2, r0
	ldr r0, _02138468 ; =0x0209BA20
	mov r1, r7
	mov r3, #0
	bl FUN_0204ad4c
_02138404:
	str r0, [sp, #0x18]
_02138408:
	mov r0, r5
	bl FUN_ov126_021375d4
	ldr r1, [sp, #0x18]
	strh r1, [r0, #0xa]
_02138418:
	mov r0, r5
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0213845C
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov132_02143598
	mov r0, r5
	mov r2, r9
	add r3, r8, #0x22
	mov r1, #0x1e
	bl FUN_ov126_0213a490
	ldrsh r2, [r8, #0x26]
	mov r0, r5
	mov r1, r9
	bl FUN_ov126_0213a6c8
_0213845C:
	mov r0, r4
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02138468: .word gLogicThink
_0213846C: .word unk_020A0640
_02138470: .word unk_02099EF0
_02138474: .word 0x51EB851F
_02138478: .word gL5Sound
	arm_func_end FUN_ov126_02137ab4

	arm_func_start FUN_ov126_0213847c
FUN_ov126_0213847c: ; 0x0213847C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r9, r0
	mov r0, #0x64
	mov r5, r1
	mov r8, r2
	bl FUN_ov16_020ef928
	ldr r4, _021385C4 ; =0x0209A2C0
	mov r7, r0
	ldr r0, [r4, #0x48]
	bl FUN_ov16_020efa80
	movs r6, r0
	bne _021384BC
	ldr r0, [r4, #0x4c]
	bl FUN_ov16_020efa80
	mov r6, r0
_021384BC:
	mov r0, r6
	bl FUN_ov16_020f0810
	cmp r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r5
	bl FUN_ov126_02139800
	mov r5, r0
	mov r2, r6
	mov r3, #1
	add r4, sp, #0xc
	stmia sp, {r3, r4}
	mov r6, #4
	mov r0, r9
	mov r1, r5
	str r6, [sp, #8]
	bl FUN_ov126_021307b8
	mov r6, r0
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_ov132_02153174
	ldr r1, [r5, #0x88]
	ldrh r1, [r1, #0x32]
	cmp r1, #0
	beq _02138558
	mov r3, #0
	b _02138550
_02138530:
	ldr r2, [r5, #0x88]
	ldr r1, [r4, r3, lsl #2]
	ldrh r2, [r2, #0x32]
	cmp r1, r2
	addeq sp, sp, #0x1c
	streq r1, [r8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r3, r3, #1
_02138550:
	cmp r3, r6
	blt _02138530
_02138558:
	cmp r6, #0
	ble _02138588
	cmp r7, r0
	bhs _02138588
	mov r0, r7
	mov r1, r6
	bl _u32_div_f
	add r0, sp, #0xc
	ldr r0, [r0, r1, lsl #2]
	add sp, sp, #0x1c
	str r0, [r8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02138588:
	cmp r5, #0
	moveq r0, #0x1e
	addeq sp, sp, #0x1c
	streq r0, [r8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, #2
	bl FUN_ov16_020ef928
	mov r2, r0
	ldr r0, _021385C8 ; =0x0209BA20
	mov r1, r5
	mov r3, #0
	bl FUN_0204ad4c
	str r0, [r8]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_021385C4: .word unk_0209A2C0
_021385C8: .word gLogicThink
	arm_func_end FUN_ov126_0213847c

	arm_func_start FUN_ov126_021385cc
FUN_ov126_021385cc: ; 0x021385CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl FUN_ov126_021375d4
	mov r5, r0
	ldrsb r0, [r5, #0xd]
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r7
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #1
	mov r0, r7
	mov r2, r1
	strh r6, [r5, #0xa]
	bl FUN_ov132_02143598
	cmp r4, #0
	beq _02138630
	mov r0, r7
	mov r2, r4
	add r3, r5, #0xa
	mov r1, #0x1e
	bl FUN_ov126_0213a490
_02138630:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_021385cc

	arm_func_start FUN_ov126_02138638
FUN_ov126_02138638: ; 0x02138638
	ldrsh r1, [r0, #8]
	ldr r0, _02138650 ; =0x000001F6
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
_02138650: .word 0x000001F6
	arm_func_end FUN_ov126_02138638

	arm_func_start FUN_ov126_02138654
FUN_ov126_02138654: ; 0x02138654
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov126_02138654

	arm_func_start FUN_ov126_02138668
FUN_ov126_02138668: ; 0x02138668
	ldrb r1, [r0, #0x17]
	ldrb r0, [r0, #0x15]
	and r1, r1, #0xc
	mov r1, r1, asr #2
	orr r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_ov126_02138668

	arm_func_start FUN_ov126_02138680
FUN_ov126_02138680: ; 0x02138680
	ldrb r1, [r0, #0x17]
	ldrb r0, [r0, #0x16]
	mov r1, r1, lsl #0x1e
	orr r0, r0, r1, lsr #22
	bx lr
	arm_func_end FUN_ov126_02138680

	arm_func_start FUN_ov126_02138694
FUN_ov126_02138694: ; 0x02138694
	ldr r2, _021386C8 ; =0x000003E7
	cmp r1, #1
	movlt r1, #1
	cmp r1, r2
	movgt r1, r2
	ldrb r2, [r0, #0x17]
	and r3, r1, #0x300
	mov r3, r3, asr #8
	and r2, r2, #0xf3
	orr r2, r2, r3, lsl #2
	strb r2, [r0, #0x17]
	strb r1, [r0, #0x15]
	bx lr
_021386C8: .word 0x000003E7
	arm_func_end FUN_ov126_02138694

	arm_func_start FUN_ov126_021386cc
FUN_ov126_021386cc: ; 0x021386CC
	ldr r2, _021386FC ; =0x000003E7
	cmp r1, #1
	movlt r1, #1
	cmp r1, r2
	movgt r1, r2
	ldrb r2, [r0, #0x17]
	and r3, r1, #0x300
	strb r1, [r0, #0x16]
	and r1, r2, #0xfc
	orr r1, r1, r3, asr #8
	strb r1, [r0, #0x17]
	bx lr
_021386FC: .word 0x000003E7
	arm_func_end FUN_ov126_021386cc

	arm_func_start FUN_ov126_02138700
FUN_ov126_02138700: ; 0x02138700
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r8, r2
	movs r9, r1
	mov r7, r3
	cmpne r8, #0
	cmpne r7, #0
	mov r10, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	cmp r0, #2
	bne _02138750
	ldr r4, _02138A08 ; =gL5Config
	ldr r1, _02138A0C ; =0x0213AC10
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	mov r2, r0, lsl #0x10
	ldr r1, _02138A10 ; =0x0213AC2C
	b _02138774
_02138750:
	cmp r0, #3
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02138A08 ; =gL5Config
	ldr r1, _02138A14 ; =0x0213AC48
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	ldr r1, _02138A18 ; =0x0213AC60
	mov r2, r0, lsl #0x10
_02138774:
	mov r0, r4
	mov r6, r2, lsr #0x10
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0x10
	mov r11, r0, lsr #0x10
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldrsb r1, [r9, #0x20]
	mov r0, r10
	mov r2, r4
	mov r3, #1
	bl FUN_01ff8c44
	ldr r3, [r8, #0x84]
	ldr r2, _02138A1C ; =0x0209A2C0
	ldr r1, [r3]
	mov r0, r10
	str r1, [r2]
	ldr r3, [r3, #4]
	mov r1, r4
	stmib r2, {r3, r4}
	str r4, [r2, #0x30]
	bl FUN_ov132_021447d0
	mov r0, r8
	bl FUN_02040128
	mov r4, r0
	bl FUN_02040170
	cmp r4, #1
	ldreq r5, [r0, #4]
	ldr r2, [r0]
	ldr r1, [r0, #8]
	ldrne r5, [r0, #0xc]
	add r3, r2, r1
	ldr r1, _02138A1C ; =0x0209A2C0
	mov r0, r8
	ldr r2, [r1]
	ldr r1, [r1, #4]
	rsb r4, r2, r3, asr #1
	sub r5, r5, r1
	bl FUN_0206cd40
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r2, #0x64
	movhi r2, #0x64
	sub r0, r6, r11
	mul r1, r2, r0
	ldr r2, _02138A20 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	sub r0, r6, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	add r0, r1, r1, lsr #31
	mov r11, r0, asr #1
	add r0, r1, #1
	mvn r6, #0
	bl FUN_ov16_020ef8d4
	mla r1, r11, r6, r0
	ldr r0, _02138A24 ; =0x6C16C16D
	mov r2, r1, lsl #0x10
	umull r0, r3, r2, r0
	rsb r0, r3, r1, lsl #16
	add r3, r3, r0, lsr #1
	mov r0, r3, lsl #8
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	add r0, r2, #1
	ldr r1, _02138A28 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	ldrsh r12, [r1, r2]
	ldrsh r0, [r1, r0]
	ldr lr, _02138A1C ; =0x0209A2C0
	smull r1, r6, r5, r12
	smull r3, r2, r4, r0
	adds r11, r1, #0x800
	smull r1, r0, r5, r0
	smull r12, r5, r4, r12
	adc r4, r6, #0
	adds r3, r3, #0x800
	mov r6, r11, lsr #0xc
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r6, r6, r4, lsl #20
	orr r3, r3, r2, lsl #20
	sub r2, r3, r6
	adds r1, r1, #0x800
	str r2, [sp, #0x10]
	adc r0, r0, #0
	mov r2, r1, lsr #0xc
	adds r1, r12, #0x800
	orr r2, r2, r0, lsl #20
	adc r0, r5, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldrb r0, [r7]
	add r5, r1, r2
	mov r1, #0
	cmp r0, #7
	ldmia lr, {r4, r11}
	mov r6, #4
	bne _02138924
	ldrb r0, [r7, #0x13]
	tst r0, #1
	movne r1, #1
_02138924:
	cmp r1, #1
	bne _02138948
	mov r0, r8
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	mov r2, #2
	bl FUN_ov132_02147e84
	mov r6, #5
_02138948:
	mov r0, r10
	bl FUN_ov132_02144780
	str r0, [sp]
	mov r7, #0
	ldr r1, [sp, #0x10]
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r0, r10
	mov r3, r6
	add r1, r4, r1
	add r2, r11, r5
	str r7, [sp, #0xc]
	bl FUN_ov126_0212c3bc
	ldr r0, _02138A2C ; =0x020A0640
	ldrsh r4, [r9, #0x22]
	ldrb r0, [r0, #0x1a]
	ldrsb r5, [r9, #0x20]
	cmp r0, #1
	ldreq r0, _02138A30 ; =0x0209AEC0
	ldreqb r0, [r0, #0x64]
	cmpeq r0, #0
	bne _021389CC
	mov r0, r10
	mov r1, r7
	bl FUN_ov132_02143114
	ldrb r2, [r0, #0x25]
	ldr r6, _02138A1C ; =0x0209A2C0
	mov r0, r10
	mov r1, r7
	strb r2, [r6, #0x58]
	bl FUN_ov132_02143114
	ldrb r0, [r0, #0x26]
	strb r0, [r6, #0x59]
_021389CC:
	mov r0, r10
	mov r1, #0
	bl FUN_ov132_02147cfc
	mov r0, r10
	bl FUN_ov126_021375d4
	mov r6, r0
	strb r5, [r6, #0xc]
	mov r1, #0x32
	strh r4, [r6, #8]
	bl FUN_ov126_02138694
	mov r0, r6
	mov r1, #0x28
	bl FUN_ov126_021386cc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02138A08: .word gL5Config
_02138A0C: .word ov126_0213AC10
_02138A10: .word ov126_0213AC2C
_02138A14: .word ov126_0213AC48
_02138A18: .word ov126_0213AC60
_02138A1C: .word unk_0209A2C0
_02138A20: .word 0x51EB851F
_02138A24: .word 0x6C16C16D
_02138A28: .word FX_SinCosTable_
_02138A2C: .word unk_020A0640
_02138A30: .word gWirelessUtil
	arm_func_end FUN_ov126_02138700

	arm_func_start FUN_ov126_02138a34
FUN_ov126_02138a34: ; 0x02138A34
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	bl FUN_ov126_02138a54
	mov r0, r4
	mov r1, #1
	bl FUN_ov126_02138a54
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02138a34

	arm_func_start FUN_ov126_02138a54
FUN_ov126_02138a54: ; 0x02138A54
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0xb
	mul r5, r1, r2
	add r6, r5, #0xb
	cmp r5, r6
	ldmgefd sp!, {r4, r5, r6, pc}
	add r4, r0, #0xb4
_02138A70:
	add r0, r4, r5, lsl #3
	bl FUN_020404cc
	add r5, r5, #1
	cmp r5, r6
	blt _02138A70
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02138a54

	arm_func_start FUN_ov126_02138a88
FUN_ov126_02138a88: ; 0x02138A88
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	mov r5, r2
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov126_021350c8
	add r0, r6, r0, lsl #3
	str r5, [r0, #0xb4]
	str r4, [r0, #0xb8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02138a88

	arm_func_start FUN_ov126_02138abc
FUN_ov126_02138abc: ; 0x02138ABC
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov132_02146348
	cmp r0, #0
	beq _02138AF4
	cmp r0, #1
	beq _02138AE4
	cmp r0, #2
	beq _02138AEC
	b _02138AF4
_02138AE4:
	add r0, r4, #0x58
	ldmfd sp!, {r4, pc}
_02138AEC:
	add r0, r4, #0x68
	ldmfd sp!, {r4, pc}
_02138AF4:
	add r0, r4, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02138abc

	arm_func_start FUN_ov126_02138afc
FUN_ov126_02138afc: ; 0x02138AFC
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov132_02146348
	cmp r0, #0
	beq _02138B34
	cmp r0, #1
	beq _02138B24
	cmp r0, #2
	beq _02138B2C
	b _02138B34
_02138B24:
	add r0, r4, #0x60
	ldmfd sp!, {r4, pc}
_02138B2C:
	add r0, r4, #0x70
	ldmfd sp!, {r4, pc}
_02138B34:
	add r0, r4, #0x20
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02138afc

	arm_func_start FUN_ov126_02138b3c
FUN_ov126_02138b3c: ; 0x02138B3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	mov r8, r3
	bl FUN_0206d688
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_021350c8
	mov r7, r0
	cmp r8, #0
	bne _02138BB0
	add r0, r6, #0xb4
	add r0, r0, r7, lsl #3
	bl FUN_02040a80
	cmp r0, #0
	bne _02138BB0
	add r1, r6, r7, lsl #3
	ldr r0, [r1, #0xb4]
	str r0, [r4]
	ldr r0, [r1, #0xb8]
	str r0, [r4, #4]
	b _02138C64
_02138BB0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02135124
	mov r10, r0
	mov r0, r6
	bl FUN_ov132_02144780
	mov r9, r0
	mov r0, r5
	bl FUN_ov16_020f07d0
	mov r8, r0
	mov r0, r5
	bl FUN_0206d5f0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov126_02138e80
	str r7, [sp]
	stmib sp, {r0, r4}
	mov r1, r9
	mov r2, r8
	mov r0, r6
	mov r3, r10
	bl FUN_ov126_02133424
	cmp r0, #0
	bne _02138C64
	mov r0, r6
	mov r1, r5
	bl FUN_01ffba18
	cmp r0, #0
	mov r0, r5
	beq _02138C44
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r6
	mov r2, r10
	bl FUN_ov126_02138abc
	b _02138C58
_02138C44:
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r6
	mov r2, r10
	bl FUN_ov126_02138afc
_02138C58:
	ldr r1, [r0, #4]
	ldr r0, [r0]
	stmia r4, {r0, r1}
_02138C64:
	ldr r0, _02138CC0 ; =0x020A0640
	ldrb r1, [r0, #0x1b]
	cmp r1, #0
	bne _02138C94
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02138CB4
	ldr r0, _02138CC4 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _02138CB4
	b _02138CAC
_02138C94:
	bl FUN_ov16_020f081c
	mov r5, r0
	mov r0, #0
	bl FUN_ov16_020f085c
	cmp r5, r0
	beq _02138CB4
_02138CAC:
	mov r0, r4
	bl FUN_ov16_020f0298
_02138CB4:
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02138CC0: .word unk_020A0640
_02138CC4: .word gWirelessUtil
	arm_func_end FUN_ov126_02138b3c

	arm_func_start FUN_ov126_02138cc8
FUN_ov126_02138cc8: ; 0x02138CC8
	stmfd sp!, {r3, lr}
	mov r0, r1
	bl FUN_0206da78
	ldr r2, _02138CE8 ; =0x0209BA20
	mov r1, #0x18
	ldr r2, [r2, #0x7d0]
	mla r0, r1, r0, r2
	ldmfd sp!, {r3, pc}
_02138CE8: .word gLogicThink
	arm_func_end FUN_ov126_02138cc8

	arm_func_start FUN_ov126_02138cec
FUN_ov126_02138cec: ; 0x02138CEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	movs r9, r2
	mov r10, r0
	mov r8, r3
	str r1, [sp]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r5, r6
_02138D28:
	cmp r6, r8
	bge _02138D90
	mov r0, r10
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _02138D84
	ldr r3, [sp]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl FUN_ov126_021393a8
	cmp r0, #0
	bne _02138D84
	cmp r7, #0
	mov r0, r4
	beq _02138D74
	bl FUN_0206cc00
	b _02138D78
_02138D74:
	bl FUN_0206cbf8
_02138D78:
	mov r1, r6, lsl #1
	strh r0, [r9, r1]
	add r6, r6, #1
_02138D84:
	add r5, r5, #1
	cmp r5, #0x16
	blt _02138D28
_02138D90:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov126_02138cec

	arm_func_start FUN_ov126_02138d98
FUN_ov126_02138d98: ; 0x02138D98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r7, [sp, #0x28]
	movs r9, r2
	mov r10, r1
	mov r8, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r5, r6
	mov r11, r6
_02138DD0:
	cmp r6, r8
	bge _02138E50
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _02138E44
	bl FUN_0206d64c
	cmp r0, #0
	beq _02138E44
	mov r0, r4
	bl FUN_0206d5f0
	cmp r10, r0
	bne _02138E44
	mov r0, r4
	mov r1, r11
	bl FUN_0206d824
	cmp r0, #0
	ble _02138E44
	cmp r0, #0x10
	bgt _02138E44
	cmp r7, #0
	mov r0, r4
	beq _02138E34
	bl FUN_0206cc00
	b _02138E38
_02138E34:
	bl FUN_0206cbf8
_02138E38:
	mov r1, r6, lsl #1
	strh r0, [r9, r1]
	add r6, r6, #1
_02138E44:
	add r5, r5, #1
	cmp r5, #0x64
	blt _02138DD0
_02138E50:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _02138E74
	ldr r0, _02138E7C ; =0x0209BA20
	mov r4, #1
	mov r1, r9
	mov r2, r6
	str r4, [sp]
	bl FUN_0204ee94
_02138E74:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02138E7C: .word gLogicThink
	arm_func_end FUN_ov126_02138d98

	arm_func_start FUN_ov126_02138e80
FUN_ov126_02138e80: ; 0x02138E80
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov132_021531f4
	cmp r0, #0
	beq _02138EA8
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_02138EA8:
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02138e80

	arm_func_start FUN_ov126_02138ec0
FUN_ov126_02138ec0: ; 0x02138EC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldrsh r0, [r4, #0x94]
	bl FUN_ov16_020f07a8
	mov r1, r0
	ldr r2, [r4, #0x84]
	mov r0, r5
	bl FUN_ov132_02140b08
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_02138ec0

	arm_func_start FUN_ov126_02138ee8
FUN_ov126_02138ee8: ; 0x02138EE8
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r0, r4
	bl FUN_0206d9f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_02040b4c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r12, [r4, #0x88]
	ldr r2, [r12]
	cmp r2, #0x80000000
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [r4, #0x84]
	mov r0, #1
	ldr r1, [r3]
	cmp r2, r1
	ldreq r2, [r12, #4]
	ldreq r1, [r3, #4]
	cmpeq r2, r1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02138ee8

	arm_func_start FUN_ov126_02138f50
FUN_ov126_02138f50: ; 0x02138F50
	stmfd sp!, {r3, lr}
	bl FUN_ov126_02138f98
	add r0, r0, #0xc000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020efd3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_02138f50

	arm_func_start FUN_ov126_02138f6c
FUN_ov126_02138f6c: ; 0x02138F6C
	stmfd sp!, {r4, lr}
	ldrb r0, [r1, #0x1a]
	mov r4, r2
	bl FUN_ov16_020efd54
	subs r4, r4, r0
	bpl _02138F8C
_02138F84:
	adds r4, r4, #0x10000
	bmi _02138F84
_02138F8C:
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02138f6c

	arm_func_start FUN_ov126_02138f98
FUN_ov126_02138f98: ; 0x02138F98
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldmia r4, {r1, r12}
	mov r5, r0
	sub r0, r3, r12
	sub r1, r2, r1
	bl FX_Atan2Idx
	mov r2, r0, lsl #0x10
	mov r0, r5
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov126_02138f6c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_02138f98

	arm_func_start FUN_ov126_02138fcc
FUN_ov126_02138fcc: ; 0x02138FCC
	stmfd sp!, {r3, lr}
	ldrb r2, [r2, #0x27]
	mov r2, r2, lsl #8
	orr r2, r2, #0x7f
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r2, r2, #0x8000
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov126_02138f6c
	add r0, r0, #0xc000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020efd3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_02138fcc

	arm_func_start FUN_ov126_02139010
FUN_ov126_02139010: ; 0x02139010
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #0x84]
	ldr r1, [r0, #4]
	sub r0, r3, r1
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldr r1, [r4, #0x84]
	ldrh r1, [r1, #0x18]
	subs r0, r0, r1
	bpl _02139044
_0213903C:
	adds r0, r0, #0x10000
	bmi _0213903C
_02139044:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_02139010

	arm_func_start FUN_ov126_02139050
FUN_ov126_02139050: ; 0x02139050
	cmp r1, #0
	addlt r1, r1, #0x10000
	cmp r2, #0
	addlt r2, r2, #0x10000
	mov r1, r1, lsl #0x10
	mov r3, #0x8000
	mov r0, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	rsb r0, r1, r0, lsr #16
	rsb r3, r3, #0
	cmp r0, r3
	bge _0213908C
_02139080:
	add r0, r0, #0x10000
	cmp r0, r3
	blt _02139080
_0213908C:
	cmp r0, #0x8000
	ble _021390A0
_02139094:
	sub r0, r0, #0x10000
	cmp r0, #0x8000
	bgt _02139094
_021390A0:
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov126_02139050

	arm_func_start FUN_ov126_021390b0
FUN_ov126_021390b0: ; 0x021390B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov126_02139010
	mov r2, r0
	mov r0, r4
	mov r1, #0
	bl FUN_ov126_02139050
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_021390b0

	arm_func_start FUN_ov126_021390d0
FUN_ov126_021390d0: ; 0x021390D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0x40
	mov r9, r1
	mov r8, r2
	mov r7, #0
	mov r5, r4
_021390E8:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02139134
	bl FUN_0206d64c
	cmp r0, #0
	beq _02139134
	mov r0, r6
	bl FUN_ov16_020f0810
	cmp r9, r0
	bne _02139134
	cmp r8, #0
	mov r0, r6
	beq _0213912C
	mov r1, r5
	bl FUN_0206d620
	b _02139134
_0213912C:
	mov r1, r4
	bl FUN_0206d634
_02139134:
	add r7, r7, #1
	cmp r7, #0x64
	blt _021390E8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov126_021390d0

	arm_func_start FUN_ov126_02139144
FUN_ov126_02139144: ; 0x02139144
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0x20
	mov r9, r1
	mov r8, r2
	mov r7, #0
	mov r5, r4
_0213915C:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _021391A8
	bl FUN_0206d64c
	cmp r0, #0
	beq _021391A8
	mov r0, r6
	bl FUN_ov16_020f0810
	cmp r9, r0
	bne _021391A8
	cmp r8, #0
	mov r0, r6
	beq _021391A0
	mov r1, r5
	bl FUN_0206d620
	b _021391A8
_021391A0:
	mov r1, r4
	bl FUN_0206d634
_021391A8:
	add r7, r7, #1
	cmp r7, #0x64
	blt _0213915C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov126_02139144

	arm_func_start FUN_ov126_021391b8
FUN_ov126_021391b8: ; 0x021391B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0x20
	mov r7, #0
	mov r5, r4
_021391C8:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0213920C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0213920C
	mov r0, r6
	bl FUN_ov16_020f08bc
	cmp r0, #0
	mov r0, r6
	beq _02139204
	mov r1, r5
	bl FUN_0206d620
	b _0213920C
_02139204:
	mov r1, r4
	bl FUN_0206d634
_0213920C:
	add r7, r7, #1
	cmp r7, #0x64
	blt _021391C8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_021391b8

	arm_func_start FUN_ov126_0213921c
FUN_ov126_0213921c: ; 0x0213921C
	ldr r0, [r0, #0x198]
	ldr r12, _02139228 ; =FUN_02049738
	bx r12
_02139228: .word FUN_02049738
	arm_func_end FUN_ov126_0213921c

	arm_func_start FUN_ov126_0213922c
FUN_ov126_0213922c: ; 0x0213922C
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x198]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_020497cc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0213922c

	arm_func_start FUN_ov126_02139248
FUN_ov126_02139248: ; 0x02139248
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r1
	mov r6, r5
_02139258:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _02139284
	bl FUN_0206d5f0
	cmp r7, r0
	bne _02139284
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	addne r5, r5, #1
_02139284:
	add r6, r6, #1
	cmp r6, #0x64
	blt _02139258
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_02139248

	arm_func_start FUN_ov126_02139298
FUN_ov126_02139298: ; 0x02139298
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_021392A8:
	mov r0, r6
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, r5
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x16
	blt _021392A8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02139298

	arm_func_start FUN_ov126_021392d4
FUN_ov126_021392d4: ; 0x021392D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x58
	mov r9, r0
	mov r4, r1
	mov r8, #0
	ldr r5, _02139384 ; =0x02710000
	add r6, sp, #0
	ldr r7, _02139388 ; =0x0209A2C0
	b _0213932C
_021392F8:
	mov r0, r9
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	streq r5, [r6, r8, lsl #2]
	beq _02139324
	ldr r1, [r0, #0x84]
	mov r0, r9
	mov r2, r7
	bl FUN_01ffba50
	str r0, [r6, r8, lsl #2]
_02139324:
	strb r8, [r4, r8]
	add r8, r8, #1
_0213932C:
	cmp r8, #0x16
	blt _021392F8
	mov r5, #0
	add r3, sp, #0
	b _02139374
_02139340:
	add r6, r5, #1
	b _02139368
_02139348:
	ldrb r12, [r4, r5]
	ldrb r1, [r4, r6]
	ldr r2, [r3, r12, lsl #2]
	ldr r0, [r3, r1, lsl #2]
	cmp r2, r0
	strgtb r1, [r4, r5]
	strgtb r12, [r4, r6]
	add r6, r6, #1
_02139368:
	cmp r6, #0x16
	blt _02139348
	add r5, r5, #1
_02139374:
	cmp r5, #0x15
	blt _02139340
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139384: .word 0x02710000
_02139388: .word unk_0209A2C0
	arm_func_end FUN_ov126_021392d4

	arm_func_start FUN_ov126_0213938c
FUN_ov126_0213938c: ; 0x0213938C
	ldr r0, [r0, #0x198]
	ldr r12, _02139398 ; =FUN_020497d8
	bx r12
_02139398: .word FUN_020497d8
	arm_func_end FUN_ov126_0213938c

	arm_func_start FUN_ov126_0213939c
FUN_ov126_0213939c: ; 0x0213939C
	ldr r12, _021393A4 ; =FUN_ov126_0213938c
	bx r12
_021393A4: .word FUN_ov126_0213938c
	arm_func_end FUN_ov126_0213939c

	arm_func_start FUN_ov126_021393a8
FUN_ov126_021393a8: ; 0x021393A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_0206d688
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	tst r5, #9
	beq _02139418
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	beq _02139418
	tst r5, #8
	beq _02139410
	ldr r0, [r6, #0x88]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0x1e
	bls _02139418
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02139410:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02139418:
	tst r5, #2
	beq _02139434
	mov r0, r6
	bl FUN_02040b4c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02139434:
	tst r5, #0x10
	beq _02139454
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02139454:
	tst r5, #0x20
	beq _02139474
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0213a310
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02139474:
	tst r5, #0x40
	beq _02139494
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0213a354
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02139494:
	tst r5, #0x80
	beq _021394B4
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_021394B4:
	tst r5, #0x80000
	beq _021394D4
	ldr r0, _021395F0 ; =0x0209A2C0
	ldrsh r1, [r6, #0x94]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_021394D4:
	tst r5, #0x100
	beq _021394F4
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_02130b28
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_021394F4:
	tst r5, #0x200
	beq _02139514
	mov r0, r7
	mov r1, r6
	bl FUN_ov126_02130b28
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02139514:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	tst r5, #0x10000
	beq _02139548
	mov r0, r6
	bl FUN_0206d5f0
	mov r8, r0
	mov r0, r4
	bl FUN_0206d5f0
	cmp r8, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02139548:
	tst r5, #0x20000
	beq _02139570
	mov r0, r6
	bl FUN_0206d5f0
	mov r8, r0
	mov r0, r4
	bl FUN_0206d5f0
	cmp r8, r0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_02139570:
	tst r5, #0x40000
	beq _02139598
	mov r0, r6
	bl FUN_0206cbf8
	mov r8, r0
	mov r0, r4
	bl FUN_0206cbf8
	cmp r8, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02139598:
	tst r5, #0x100000
	beq _021395C0
	ldr r1, [r6, #0x84]
	mov r0, r7
	ldr r2, [r1, #4]
	mov r1, r4
	bl FUN_01ffb9e4
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_021395C0:
	tst r5, #0x200000
	beq _021395E8
	ldr r1, [r6, #0x84]
	mov r0, r7
	ldr r2, [r1, #4]
	mov r1, r4
	bl FUN_01ffb9e4
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_021395E8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021395F0: .word unk_0209A2C0
	arm_func_end FUN_ov126_021393a8

	arm_func_start FUN_ov126_021395f4
FUN_ov126_021395f4: ; 0x021395F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	ldr r4, [r7, #0x84]
	movs r6, r2
	mov r8, r0
	mov r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	tst r6, #1
	beq _02139644
	ldrh r0, [r4, #0x16]
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139644:
	tst r6, #0x10
	beq _02139664
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02138e80
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139664:
	tst r6, #0x20
	beq _02139684
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_0213a310
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139684:
	tst r6, #0x40
	beq _021396A4
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_0213a354
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021396A4:
	tst r6, #0x80
	beq _021396C4
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_0213a2cc
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021396C4:
	tst r6, #0x80000
	ldrne r0, [sp, #0x20]
	cmpne r0, #0
	beq _021396E8
	ldrsh r1, [r7, #0x94]
	ldrsh r0, [r0, #0x1c]
	cmp r1, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021396E8:
	tst r6, #0x100
	beq _02139708
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02130b28
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139708:
	tst r6, #0x200
	beq _02139728
	mov r0, r8
	mov r1, r7
	bl FUN_ov126_02130b28
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139728:
	cmp r5, #0
	cmpne r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	tst r6, #0x10000
	beq _02139760
	mov r0, r7
	bl FUN_0206d5f0
	mov r9, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r9, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139760:
	tst r6, #0x20000
	beq _02139788
	mov r0, r7
	bl FUN_0206d5f0
	mov r9, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r9, r0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02139788:
	tst r6, #0x40000
	beq _021397B0
	mov r0, r7
	bl FUN_0206cbf8
	mov r7, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r7, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021397B0:
	tst r6, #0x100000
	beq _021397D4
	ldr r2, [r4, #4]
	mov r0, r8
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021397D4:
	tst r6, #0x200000
	beq _021397F8
	ldr r2, [r4, #4]
	mov r0, r8
	mov r1, r5
	bl FUN_01ffb9e4
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021397F8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov126_021395f4

	arm_func_start FUN_ov126_02139800
FUN_ov126_02139800: ; 0x02139800
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
_02139810:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov126_0213938c
	movs r4, r0
	beq _02139838
	bl FUN_0206d6d8
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02139838:
	add r5, r5, #1
	cmp r5, #0xb
	blt _02139810
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_02139800

	arm_func_start FUN_ov126_0213984c
FUN_ov126_0213984c: ; 0x0213984C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov126_02139878
	cmp r0, #0
	mov r0, r4
	mov r1, #0x200
	beq _02139870
	bl FUN_0206dac4
	ldmfd sp!, {r4, pc}
_02139870:
	bl FUN_0206dadc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov126_0213984c

	arm_func_start FUN_ov126_02139878
FUN_ov126_02139878: ; 0x02139878
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02145190
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r5
	mov r1, #0xf
	bl FUN_ov132_021448a8
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_02139878

	arm_func_start FUN_ov126_021398cc
FUN_ov126_021398cc: ; 0x021398CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r5
	bl FUN_ov132_02145190
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r5
	mov r1, #0x10
	bl FUN_ov132_021448a8
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_021398cc

	arm_func_start FUN_ov126_02139920
FUN_ov126_02139920: ; 0x02139920
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl FUN_0206d9f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _02139998 ; =0x0209BA20
	mov r0, r5
	ldrb r4, [r1, #0x881]
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213998C
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	beq _02139970
	tst r4, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_02139970:
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	bne _0213998C
	tst r4, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_0213998C:
	ldr r0, [r5, #0x88]
	ldr r0, [r0, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02139998: .word gLogicThink
	arm_func_end FUN_ov126_02139920

	arm_func_start FUN_ov126_0213999c
FUN_ov126_0213999c: ; 0x0213999C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov126_02138cc8
	cmp r0, #0
	beq _021399C8
	ldrh r0, [r0, #0x12]
	tst r0, #0x80
	movne r0, #1
	ldmnefd sp!, {r3, pc}
_021399C8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_0213999c

	arm_func_start FUN_ov126_021399d0
FUN_ov126_021399d0: ; 0x021399D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r1
	mov r5, #0x1e
	mov r7, r0
	mov r0, r6
	mov r2, r5
	mov r1, #2
	bl FUN_0206dbb4
	mov r4, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r4, [sp]
	mov r12, #1
	str r12, [sp, #4]
	bl FUN_ov132_0213c29c
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_01ff9384
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_021399d0

	arm_func_start FUN_ov126_02139a30
FUN_ov126_02139a30: ; 0x02139A30
	ldrsh r1, [r1, #0x94]
	ldrsh r0, [r2, #0x94]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov126_02139a30

	arm_func_start FUN_ov126_02139a54
FUN_ov126_02139a54: ; 0x02139A54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_02139A64:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _02139A90
	bl FUN_0206d688
	cmp r0, #0
	beq _02139A90
	mov r0, r4
	bl FUN_0206d5f0
	cmp r7, r0
	addeq r6, r6, #1
_02139A90:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02139A64
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov126_02139a54

	arm_func_start FUN_ov126_02139aa4
FUN_ov126_02139aa4: ; 0x02139AA4
	ldr r0, [r1, #0x90]
	orr r0, r0, r2
	str r0, [r1, #0x90]
	bx lr
	arm_func_end FUN_ov126_02139aa4

	arm_func_start FUN_ov126_02139ab4
FUN_ov126_02139ab4: ; 0x02139AB4
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	ldmlefd sp!, {r3, pc}
_02139AC4:
	ldr r12, [r1, lr, lsl #2]
	add lr, lr, #1
	ldr r0, [r12, #0x90]
	cmp lr, r2
	orr r0, r0, r3
	str r0, [r12, #0x90]
	blt _02139AC4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov126_02139ab4

	arm_func_start FUN_ov126_02139ae4
FUN_ov126_02139ae4: ; 0x02139AE4
	mov r0, #0
	str r0, [r1, #0x90]
	bx lr
	arm_func_end FUN_ov126_02139ae4

	arm_func_start FUN_ov126_02139af0
FUN_ov126_02139af0: ; 0x02139AF0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, #0
	mov r6, r0
	mov r0, r1
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r4, #0x84]
	cmp r2, #0
	ldrneh r1, [r2, #0x16]
	ldrne r0, _02139BF4 ; =0x0000EFFF
	andne r0, r1, r0
	strneh r0, [r2, #0x16]
	ldr r0, [r4, #0x84]
	cmp r0, #0
	ldreq r0, _02139BF8 ; =0x0209A2C0
	moveq r1, #0
	streq r1, [r0]
	beq _02139B60
	ldr r1, [r0]
	ldr r0, _02139BF8 ; =0x0209A2C0
	str r1, [r0]
	ldr r1, [r4, #0x84]
	ldr r1, [r1, #4]
_02139B60:
	str r1, [r0, #4]
	ldr r0, _02139BF8 ; =0x0209A2C0
	ldrsh r1, [r4, #0x94]
	ldr r0, [r0, #0x48]
	cmp r0, r1
	beq _02139BC0
	mov r5, #0
	strb r5, [r6, #0x36d]
	b _02139BB8
_02139B84:
	mov r0, r5
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _02139BB4
	ldr r2, [r0, #0x84]
	ldr r1, [r0, #0x88]
	ldr r2, [r2]
	str r2, [r1]
	ldr r1, [r0, #0x84]
	ldr r0, [r0, #0x88]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
_02139BB4:
	add r5, r5, #1
_02139BB8:
	cmp r5, #0x20
	blt _02139B84
_02139BC0:
	ldr r0, _02139BF8 ; =0x0209A2C0
	mov r2, #0
	str r2, [r0, #8]
	str r2, [sp]
	str r2, [sp, #4]
	ldrsh r1, [r4, #0x94]
	mov r4, #1
	mov r0, r6
	mov r3, r4
	bl FUN_01ff8c44
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02139BF4: .word 0x0000EFFF
_02139BF8: .word unk_0209A2C0
	arm_func_end FUN_ov126_02139af0

	arm_func_start FUN_ov126_02139bfc
FUN_ov126_02139bfc: ; 0x02139BFC
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr r0, _02139C54 ; =0x0209A2C0
	ldmeqfd sp!, {r4, pc}
	ldr r12, [r1, #0x84]
	ldmia r12, {r4, lr}
	str r2, [r12]
	ldr r12, [r1, #0x84]
	str r3, [r12, #4]
	ldrsh r1, [r1, #0x94]
	ldr r12, [r0, #0x48]
	cmp r12, r1
	ldmnefd sp!, {r4, pc}
	ldr r12, [r0]
	sub r1, r2, r4
	add r12, r12, r1
	ldr r2, [r0, #4]
	sub r1, r3, lr
	add r1, r2, r1
	str r12, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_02139C54: .word unk_0209A2C0
	arm_func_end FUN_ov126_02139bfc

	arm_func_start FUN_ov126_02139c58
FUN_ov126_02139c58: ; 0x02139C58
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, r1
	mov r5, r2
	mov r4, r3
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov126_02139bfc
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov126_02139c58

	arm_func_start FUN_ov126_02139c8c
FUN_ov126_02139c8c: ; 0x02139C8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02139D5C ; =0x0209A7FC
	mov r7, r0
	mov r0, r1
	mov r1, #0
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	movs r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	ldmia r4, {r0, r3}
	ldr r2, [r4, #8]
	ldr r12, _02139D60 ; =0x51EB851F
	blt _02139CE4
	sub r2, r2, r0
	mul lr, r6, r2
	smull r2, r6, r12, lr
	mov r2, lr, lsr #0x1f
	add r6, r2, r6, asr #5
	add r2, r0, r6
	b _02139D00
_02139CE4:
	rsb r6, r6, #0
	sub r2, r2, r0
	mul lr, r6, r2
	mov r2, lr, lsr #0x1f
	smull r6, lr, r12, lr
	add lr, r2, lr, asr #5
	sub r2, r0, lr
_02139D00:
	cmp r5, #0
	ldr r6, [r4, #0xc]
	ldr r0, [r4, #4]
	blt _02139D30
	sub r0, r6, r0
	mul r6, r5, r0
	ldr r4, _02139D60 ; =0x51EB851F
	smull r0, r5, r4, r6
	mov r0, r6, lsr #0x1f
	add r5, r0, r5, asr #5
	add r3, r3, r5
	b _02139D50
_02139D30:
	rsb r4, r5, #0
	sub r0, r6, r0
	mul r6, r4, r0
	ldr r5, _02139D60 ; =0x51EB851F
	mov r0, r6, lsr #0x1f
	smull r4, r6, r5, r6
	add r6, r0, r6, asr #5
	sub r3, r3, r6
_02139D50:
	mov r0, r7
	bl FUN_ov126_02139bfc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02139D5C: .word unk_0209A7FC
_02139D60: .word 0x51EB851F
	arm_func_end FUN_ov126_02139c8c

	arm_func_start FUN_ov126_02139d64
FUN_ov126_02139d64: ; 0x02139D64
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r0, r1
	ldr r5, _02139DD4 ; =0x0209A7FC
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0x84]
	ldr r3, [r5, #8]
	ldr r2, [r5]
	ldr r1, [r0]
	sub r12, r3, r2
	mov r0, r12, asr #0xb
	sub r3, r1, r2
	add r0, r12, r0, lsr #20
	mov r1, r0, asr #0xc
	mov r2, r3, asr #0xb
	add r0, r3, r2, lsr #20
	cmp r1, #0
	mov r2, r0, asr #0xc
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, pc}
	mov r0, #0x64
	mul r0, r2, r0
	bl _s32_div_f
	ldmfd sp!, {r3, r4, r5, pc}
_02139DD4: .word unk_0209A7FC
	arm_func_end FUN_ov126_02139d64

	arm_func_start FUN_ov126_02139dd8
FUN_ov126_02139dd8: ; 0x02139DD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r0, r1
	ldr r5, _02139E48 ; =0x0209A7FC
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0x84]
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #4]
	ldr r1, [r0, #4]
	sub r12, r3, r2
	mov r0, r12, asr #0xb
	sub r3, r1, r2
	add r0, r12, r0, lsr #20
	mov r1, r0, asr #0xc
	mov r2, r3, asr #0xb
	add r0, r3, r2, lsr #20
	cmp r1, #0
	mov r2, r0, asr #0xc
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, pc}
	mov r0, #0x64
	mul r0, r2, r0
	bl _s32_div_f
	ldmfd sp!, {r3, r4, r5, pc}
_02139E48: .word unk_0209A7FC
	arm_func_end FUN_ov126_02139dd8

	arm_func_start FUN_ov126_02139e4c
FUN_ov126_02139e4c: ; 0x02139E4C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r10, r0
	mov r0, r1
	mov r5, r2
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r7, r0
	sub r8, r4, #1
	mov r0, r10
	mov r9, r8
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	cmpne r7, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	ldrsh r4, [r6, #0x94]
	ldrsh r5, [r7, #0x94]
	bl FUN_ov126_0213246c
	movs r11, r0
	beq _02139ED8
	bl FUN_ov126_021326a0
	mov r8, r0
	mov r0, r11
	bl FUN_ov126_021326dc
	mov r9, r0
_02139ED8:
	cmp r8, r4
	bne _02139EE8
	cmp r9, r5
	beq _02139F0C
_02139EE8:
	cmp r8, r5
	cmpeq r9, r4
	beq _02139F0C
	ldr r1, [r6, #0x84]
	ldr r2, [r7, #0x84]
	mov r0, r10
	bl FUN_ov132_021446f0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02139F0C:
	cmp r4, r9
	bne _02139F20
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02144720
_02139F20:
	cmp r5, r9
	bne _02139F34
	mov r0, r10
	mov r1, r7
	bl FUN_ov132_02144720
_02139F34:
	mov r0, r6
	bl FUN_02040b4c
	cmp r0, #0
	bne _02139F6C
	mov r0, r7
	bl FUN_02040b4c
	cmp r0, #0
	bne _02139F6C
	ldr r1, [r6, #0x84]
	ldr r2, [r7, #0x84]
	mov r0, r10
	bl FUN_ov132_021446f0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02139F6C:
	mov r0, r7
	bl FUN_02040b4c
	cmp r0, #0
	movne r0, r7
	movne r7, r6
	movne r6, r0
	ldr r1, [r6, #0x84]
	mov r0, r10
	ldmia r1, {r2, r3}
	mov r1, r7
	bl FUN_ov126_02139bfc
	ldr r1, [r6, #0x84]
	ldr r0, [r6, #0x88]
	ldr r8, [r1]
	ldr r0, [r0, #0x10]
	ldr r9, [r1, #4]
	str r0, [sp, #4]
	mov r5, #0x1000
	add r4, sp, #8
	add r11, sp, #0x10
	b _0213A03C
_02139FC0:
	ldr r1, [r6, #0x88]
	mov r0, r10
	str r5, [r1, #0x10]
	mov r1, r6
	str r4, [sp]
	mov r2, r11
	add r3, sp, #0xc
	bl FUN_ov132_0213ccc4
	ldr r0, [sp, #0x10]
	cmp r8, r0
	ldreq r0, [sp, #0x14]
	cmpeq r9, r0
	bne _0213A004
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02144720
	b _0213A068
_0213A004:
	ldr r8, [sp, #0x10]
	ldr r1, [r6, #0x84]
	mov r0, r6
	str r8, [r1]
	ldr r9, [sp, #0x14]
	ldr r1, [r6, #0x84]
	mov r2, #0
	str r9, [r1, #4]
	ldr r1, [sp, #0xc]
	and r1, r1, #7
	bl FUN_0206daf8
	ldr r1, [sp, #8]
	ldr r0, [r6, #0x88]
	strb r1, [r0, #0x84]
_0213A03C:
	mov r0, r6
	bl FUN_02040b4c
	cmp r0, #0
	beq _0213A068
	mov r0, r10
	mov r1, r6
	mov r2, r7
	add r3, sp, #0x18
	bl FUN_ov132_0213c000
	cmp r0, #0
	bne _02139FC0
_0213A068:
	ldr r2, [r6, #0x88]
	ldr r1, [sp, #4]
	mov r0, r6
	str r1, [r2, #0x10]
	bl FUN_02040b4c
	cmp r0, #0
	bne _0213A090
	mov r0, r10
	mov r1, r6
	bl FUN_ov132_02144720
_0213A090:
	add r3, sp, #0x18
	mov r0, r10
	mov r1, r6
	mov r2, r7
	bl FUN_ov132_0213c000
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, [r7, #0x84]
	ldr r2, [r6, #0x84]
	ldr r3, [r5]
	ldr r4, [r2]
	cmp r4, r3
	ldreq r1, [r2, #4]
	ldreq r0, [r5, #4]
	cmpeq r1, r0
	ldreqh r0, [r2, #0x18]
	beq _0213A0EC
	ldr r2, [r2, #4]
	ldr r0, [r5, #4]
	sub r1, r4, r3
	sub r0, r2, r0
	bl FX_Atan2Idx
_0213A0EC:
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r3, _0213A178 ; =FX_SinCosTable_
	mov r0, r0, lsl #1
	ldrsh r2, [r3, r0]
	mov r0, #0xc000
	mov r1, r1, lsl #1
	umull r8, r5, r2, r0
	ldrsh r1, [r3, r1]
	mov r2, r2, asr #0x1f
	ldr r4, [r7, #0x84]
	adds r8, r8, #0x800
	mla r5, r2, r0, r5
	umull r3, r2, r1, r0
	mov r1, r1, asr #0x1f
	adc r5, r5, #0
	mov r8, r8, lsr #0xc
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	ldr r1, [r4]
	orr r8, r8, r5, lsl #20
	ldr r0, [r6, #0x84]
	add r1, r8, r1
	str r1, [r0]
	ldr r0, [r7, #0x84]
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	ldr r1, [r0, #4]
	orr r3, r3, r2, lsl #20
	ldr r0, [r6, #0x84]
	add r1, r3, r1
	str r1, [r0, #4]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213A178: .word FX_SinCosTable_
	arm_func_end FUN_ov126_02139e4c

	arm_func_start FUN_ov126_0213a17c
FUN_ov126_0213a17c: ; 0x0213A17C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r0, r1
	mov r1, r4
	mov r5, r2
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0x7f
	movgt r5, #0x7f
	mvn r1, #0x7e
	cmp r5, r1
	movlt r5, r1
	ldr r1, [r0, #0x84]
	mov r0, #1
	strb r5, [r1, #0x1e]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov126_0213a17c

	arm_func_start FUN_ov126_0213a1c4
FUN_ov126_0213a1c4: ; 0x0213A1C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, #0
	mov r0, r1
	mov r1, r9
	mov r10, r2
	bl FUN_ov16_020efa9c
	movs r8, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206d660
	cmp r0, #0
	cmpne r10, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	bl FUN_0206d5f0
	ldr r4, _0213A2C8 ; =0x0209BA20
	mov r7, r0
	mov r11, r9
	mov r5, #1
_0213A20C:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0213A2A8
	bl FUN_0206d64c
	cmp r0, #0
	beq _0213A2A8
	mov r0, r6
	mov r1, r5
	bl FUN_0206d9b0
	cmp r10, r0
	bne _0213A2A8
	mov r0, r6
	bl FUN_0206d5f0
	cmp r7, r0
	bne _0213A2A8
	mov r0, r8
	mov r1, r5
	bl FUN_0206d9b0
	cmp r0, #0
	bne _0213A27C
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl FUN_0204c86c
	mov r1, r0
	mov r0, r6
	b _0213A2A0
_0213A27C:
	mov r0, r8
	mov r1, r5
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_0206d9cc
	mov r0, r8
	mov r1, r11
_0213A2A0:
	mov r2, r5
	bl FUN_0206d9cc
_0213A2A8:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0213A20C
	mov r0, r8
	mov r1, r10
	mov r2, #1
	bl FUN_0206d9cc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0213A2C8: .word gLogicThink
	arm_func_end FUN_ov126_0213a1c4

	arm_func_start FUN_ov126_0213a2cc
FUN_ov126_0213a2cc: ; 0x0213A2CC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0213A30C ; =0x0209BA20
	mov r5, r1
	mov r0, r4
	bl FUN_0204b754
	cmp r0, #4
	beq _0213A2FC
	mov r0, r4
	mov r1, r5
	bl FUN_0204b754
	cmp r0, #8
	bne _0213A304
_0213A2FC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0213A304:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0213A30C: .word gLogicThink
	arm_func_end FUN_ov126_0213a2cc

	arm_func_start FUN_ov126_0213a310
FUN_ov126_0213a310: ; 0x0213A310
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0213A350 ; =0x0209BA20
	mov r5, r1
	mov r0, r4
	bl FUN_0204b754
	cmp r0, #2
	beq _0213A340
	mov r0, r4
	mov r1, r5
	bl FUN_0204b754
	cmp r0, #5
	bne _0213A348
_0213A340:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0213A348:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0213A350: .word gLogicThink
	arm_func_end FUN_ov126_0213a310

	arm_func_start FUN_ov126_0213a354
FUN_ov126_0213a354: ; 0x0213A354
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0213A3A8 ; =0x0209BA20
	mov r5, r1
	mov r0, r4
	bl FUN_0204b754
	cmp r0, #3
	beq _0213A398
	mov r0, r4
	mov r1, r5
	bl FUN_0204b754
	cmp r0, #6
	beq _0213A398
	mov r0, r4
	mov r1, r5
	bl FUN_0204b754
	cmp r0, #7
	bne _0213A3A0
_0213A398:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0213A3A0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0213A3A8: .word gLogicThink
	arm_func_end FUN_ov126_0213a354

	arm_func_start FUN_ov126_0213a3ac
FUN_ov126_0213a3ac: ; 0x0213A3AC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0213A414 ; =0x0209BA20
	bl FUN_0204b754
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, pc}
_0213A3D0: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _0213A3F4 ; case 1
	b _0213A40C ; case 2
	b _0213A404 ; case 3
	b _0213A3FC ; case 4
	b _0213A40C ; case 5
	b _0213A404 ; case 6
	b _0213A404 ; case 7
	b _0213A3FC ; case 8
_0213A3F4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0213A3FC:
	mov r0, #4
	ldmfd sp!, {r3, pc}
_0213A404:
	mov r0, #3
	ldmfd sp!, {r3, pc}
_0213A40C:
	mov r0, #2
	ldmfd sp!, {r3, pc}
_0213A414: .word gLogicThink
	arm_func_end FUN_ov126_0213a3ac

	arm_func_start FUN_ov126_0213a418
FUN_ov126_0213a418: ; 0x0213A418
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _0213A48C ; =0x0209BA20
	bl FUN_02073184
	ldrb r1, [r4, #0x366]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	mov r5, #0
_0213A444:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0213A47C
	bl FUN_0206d69c
	cmp r0, #0
	beq _0213A47C
	mov r0, r4
	bl FUN_0206d5f0
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _0213A47C
	mov r0, r4
	bl FUN_0206d7ac
_0213A47C:
	add r5, r5, #1
	cmp r5, #0x20
	blt _0213A444
	ldmfd sp!, {r3, r4, r5, pc}
_0213A48C: .word gLogicThink
	arm_func_end FUN_ov126_0213a418

	arm_func_start FUN_ov126_0213a490
FUN_ov126_0213a490: ; 0x0213A490
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r7, r2
	mov r9, r0
	mov r8, r1
	mov r6, r3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #0x17
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #0x1f
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov132_021448a8
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #0x17
	beq _0213A594
	mov r0, r9
	mov r2, r7
	mov r1, #7
	bl FUN_ov132_021484fc
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0213A4FC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0213A508
_0213A4FC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0213A508:
	bl _ffix
	mvn r2, #0
	sub r1, r2, #0xd
	umull r5, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r2, r5, #0x800
	adc r0, r3, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r1, #0xe
	add r5, r0, #0x1000
	cmp r4, #0
	mov r0, r4, lsl #0xc
	ble _0213A55C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0213A568
_0213A55C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0213A568:
	bl _ffix
	smull r2, r1, r0, r5
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r1, r1, #0x800
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, lsl #4
	mov r5, r0, asr #0x10
_0213A594:
	sub r0, r8, #0x17
	cmp r5, #0
	movle r5, #1
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0213A6A0
_0213A5AC: ; jump table
	b _0213A5D0 ; case 0
	b _0213A6A0 ; case 1
	b _0213A6A0 ; case 2
	b _0213A6A0 ; case 3
	b _0213A6A0 ; case 4
	b _0213A6A0 ; case 5
	b _0213A6A0 ; case 6
	b _0213A5D8 ; case 7
	b _0213A62C ; case 8
_0213A5D0:
	mov r5, r4
	b _0213A6A0
_0213A5D8:
	cmp r6, #0
	beq _0213A6A0
	ldr r1, [r6]
	ldr r0, _0213A6C0 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	ldrneb r0, [r0, #1]
	cmpne r0, #0
	beq _0213A6A0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0213A61C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0213A628
_0213A61C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0213A628:
	b _0213A664
_0213A62C:
	cmp r6, #0
	beq _0213A6A0
	ldrsb r0, [r6, #6]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0213A658
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0213A664
_0213A658:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0213A664:
	bl _ffix
	ldr r1, _0213A6C4 ; =0x0000019A
	mov r2, r0, asr #0x1f
	umull r4, r3, r0, r1
	mla r3, r2, r1, r3
	adds r4, r4, #0x800
	adc r0, r3, #0
	mov r1, r4, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r1, r1, #0x800
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	add r0, r5, r0, asr #12
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
_0213A6A0:
	mov r0, r7
	bl FUN_0206ccdc
	sub r0, r0, r5
	mov r1, r0, lsl #0x10
	mov r0, r7
	mov r1, r1, asr #0x10
	bl FUN_0206cc9c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0213A6C0: .word gLogicThink
_0213A6C4: .word 0x0000019A
	arm_func_end FUN_ov126_0213a490

	arm_func_start FUN_ov126_0213a6c8
FUN_ov126_0213a6c8: ; 0x0213A6C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	ldrsh r1, [sp, #0x20]
	ldr r0, _0213A794 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r4, #0
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldrb r0, [r0]
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r3, sp, #0x20
	mov r0, r5
	mov r2, r4
	mov r1, #0x1f
	bl FUN_ov126_0213a490
	ldr r0, [r4, #0x90]
	tst r0, #0x4000000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, r4
	bl FUN_0206ccdc
	mov r6, #0x18
	mov r7, r0
	mov r0, r5
	mov r1, r6
	bl FUN_ov132_021448a8
	cmp r7, r0
	ldmltfd sp!, {r3, r4, r5, r6, r7, lr}
	addlt sp, sp, #0x10
	bxlt lr
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl FUN_ov126_0213a490
	ldmfd sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_0213A794: .word gLogicThink
	arm_func_end FUN_ov126_0213a6c8

	.rodata
	.byte 0x00, 0x90, 0x01, 0x00, 0x00, 0x90, 0x01, 0x00
	.global ov126_0213A7A0
ov126_0213A7A0:
	.byte 0x05, 0x00, 0x07, 0x00, 0x09, 0x00, 0x2D, 0x00
	.global ov126_0213A7A8
ov126_0213A7A8:
	.byte 0x05, 0x00, 0x07, 0x00, 0x0A, 0x00, 0x0D, 0x00
	.byte 0x10, 0x00, 0x13, 0x00, 0x2D, 0x00, 0x00, 0x00
	.global ov126_0213A7B8
ov126_0213A7B8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov126_0213A7E0
ov126_0213A7E0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov126_0213a808
FUN_ov126_0213a808: ; 0x0213A808
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213A84C ; =0x0213AAC0
	str r0, [r4, #0x10]
	ldr r0, _0213A850 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0213A854 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0213A84C: .word ov126_0213AAC0
_0213A850: .word 0x00009CCD
_0213A854: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a808

	arm_func_start FUN_ov126_0213a858
FUN_ov126_0213a858: ; 0x0213A858
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213A8A0 ; =0x0213AAD8
	str r0, [r4]
	ldr r0, _0213A8A4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x18]
	ldr r0, _0213A8A8 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0213A8A0: .word ov126_0213AAD8
_0213A8A4: .word 0x00009CCD
_0213A8A8: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a858

	arm_func_start FUN_ov126_0213a8ac
FUN_ov126_0213a8ac: ; 0x0213A8AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213A8F0 ; =0x0213AAF4
	str r0, [r4, #0x10]
	ldr r0, _0213A8F4 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0213A8F8 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0213A8F0: .word ov126_0213AAF4
_0213A8F4: .word 0x00009CCD
_0213A8F8: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a8ac

	arm_func_start FUN_ov126_0213a8fc
FUN_ov126_0213a8fc: ; 0x0213A8FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213A944 ; =0x0213AB0C
	str r0, [r4, #0x14]
	ldr r0, _0213A948 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0213A94C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0213A944: .word ov126_0213AB0C
_0213A948: .word 0x00009CCD
_0213A94C: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a8fc

	arm_func_start FUN_ov126_0213a950
FUN_ov126_0213a950: ; 0x0213A950
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213A998 ; =0x0213AB24
	str r0, [r4]
	ldr r0, _0213A99C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0213A9A0 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0213A998: .word ov126_0213AB24
_0213A99C: .word 0x00009CCD
_0213A9A0: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a950

	arm_func_start FUN_ov126_0213a9a4
FUN_ov126_0213a9a4: ; 0x0213A9A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213A9E8 ; =0x0213AB3C
	str r0, [r4, #0x10]
	ldr r0, _0213A9EC ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0213A9F0 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0213A9E8: .word ov126_0213AB3C
_0213A9EC: .word 0x00009CCD
_0213A9F0: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a9a4

	arm_func_start FUN_ov126_0213a9f4
FUN_ov126_0213a9f4: ; 0x0213A9F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213AA38 ; =0x0213ABF8
	str r0, [r4, #0x10]
	ldr r0, _0213AA3C ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0213AA40 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0213AA38: .word ov126_0213ABF8
_0213AA3C: .word 0x00009CCD
_0213AA40: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213a9f4

	arm_func_start FUN_ov126_0213aa44
FUN_ov126_0213aa44: ; 0x0213AA44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0213AA88 ; =0x0213AC78
	str r0, [r4, #0x10]
	ldr r0, _0213AA8C ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0213AA90 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0213AA88: .word ov126_0213AC78
_0213AA8C: .word 0x00009CCD
_0213AA90: .word 0x0000EA3C
	arm_func_end FUN_ov126_0213aa44

	.section .sinit, 4
ov126_0213AA94:
	.word FUN_ov126_0213a808
	.word FUN_ov126_0213a858
	.word FUN_ov126_0213a8ac
	.word FUN_ov126_0213a8fc
	.word FUN_ov126_0213a950
	.word FUN_ov126_0213a9a4
	.word FUN_ov126_0213a9f4
	.word FUN_ov126_0213aa44

	.data
	.global ov126_0213AAC0
ov126_0213AAC0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AAD8
ov126_0213AAD8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x07, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AAF4
ov126_0213AAF4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AB0C
ov126_0213AB0C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AB24
ov126_0213AB24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AB3C
ov126_0213AB3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AB54
ov126_0213AB54:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x50, 0x4B, 0x5F, 0x50, 0x55, 0x5F
	.byte 0x43, 0x4F, 0x4D, 0x5F, 0x50, 0x45, 0x52, 0x00
	.global ov126_0213AB68
ov126_0213AB68:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x50, 0x4B
	.byte 0x5F, 0x50, 0x55, 0x5F, 0x4B, 0x49, 0x43, 0x4B, 0x45, 0x52, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49
	.byte 0x5F, 0x50, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AB88
ov126_0213AB88:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x50, 0x4B
	.byte 0x5F, 0x50, 0x55, 0x5F, 0x4B, 0x45, 0x45, 0x50, 0x45, 0x52, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49
	.byte 0x5F, 0x50, 0x45, 0x52, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213ABA8
ov126_0213ABA8:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x50, 0x4B
	.byte 0x5F, 0x4F, 0x4E, 0x41, 0x4A, 0x49, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49, 0x5F, 0x50, 0x45, 0x52
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov126_0213ABC4
ov126_0213ABC4:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x50, 0x4B, 0x5F, 0x43, 0x48, 0x49
	.byte 0x47, 0x41, 0x55, 0x5F, 0x48, 0x4F, 0x53, 0x45, 0x49, 0x5F, 0x50, 0x45, 0x52, 0x00, 0x00, 0x00
	.global ov126_0213ABE0
ov126_0213ABE0:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x50, 0x4B, 0x5F, 0x50, 0x55, 0x5F, 0x43, 0x4F, 0x55, 0x4E
	.byte 0x54, 0x45, 0x52, 0x5F, 0x4D, 0x41, 0x58, 0x00
	.global ov126_0213ABF8
ov126_0213ABF8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AC10
ov126_0213AC10:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x42, 0x53, 0x5F, 0x47, 0x4F, 0x53, 0x41, 0x5F, 0x41
	.byte 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AC2C
ov126_0213AC2C:
	.byte 0x4D, 0x41, 0x54, 0x43
	.byte 0x48, 0x5F, 0x53, 0x42, 0x53, 0x5F, 0x47, 0x4F, 0x53, 0x41, 0x5F, 0x41, 0x4E, 0x47, 0x4C, 0x45
	.byte 0x5F, 0x4D, 0x49, 0x4E, 0x00, 0x00, 0x00, 0x00
	.global ov126_0213AC48
ov126_0213AC48:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x43
	.byte 0x5F, 0x47, 0x4F, 0x53, 0x41, 0x5F, 0x41, 0x4E, 0x47, 0x4C, 0x45, 0x5F, 0x4D, 0x41, 0x58, 0x00
	.global ov126_0213AC60
ov126_0213AC60:
	.byte 0x4D, 0x41, 0x54, 0x43, 0x48, 0x5F, 0x53, 0x43, 0x5F, 0x47, 0x4F, 0x53, 0x41, 0x5F, 0x41, 0x4E
	.byte 0x47, 0x4C, 0x45, 0x5F, 0x4D, 0x49, 0x4E, 0x00
	.global ov126_0213AC78
ov126_0213AC78:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov126_0213ACA0
ov126_0213ACA0:
	.space 0x20


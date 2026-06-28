
	.include "/macros/function.inc"

	.text

.public _ZN12CFontManager13writeCharByteEPvh

	arm_func_start _ZN12CFontManager9clearVramEPviiiiii
_ZN12CFontManager9clearVramEPviiiiii: ; 0x020435B0
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
	bl _ZN12CFontManager13writeCharByteEPvh
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
	arm_func_end _ZN12CFontManager9clearVramEPviiiiii

	arm_func_start _ZN12CFontManager12FUN_02043780Eii
_ZN12CFontManager12FUN_02043780Eii: ; 0x02043780
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1d]
	bx lr
	arm_func_end _ZN12CFontManager12FUN_02043780Eii

	arm_func_start _ZN12CFontManager15getNameFuriganaEPaS0_S0_
_ZN12CFontManager15getNameFuriganaEPaS0_S0_: ; 0x0204378C
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
	arm_func_end _ZN12CFontManager15getNameFuriganaEPaS0_S0_

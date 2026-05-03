
	.include "/macros/function.inc"
	.include "/include/3dgamemap.inc"

    .text
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
	bl _ZN7Archive14GetMapNameHashEPvPKc
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
	ldr r7, _0205D048 ; =gNsbResourceMan
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
	ldr r0, _0205D048 ; =gNsbResourceMan
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
_0205D048: .word gNsbResourceMan
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
	ldr r0, _0205D09C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205D088:
	mov r0, r5
	mov r1, r4
	bl FUN_0205c9a4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0205D09C: .word gNsbResourceMan
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

	arm_func_start _ZN10C3DGameMapC1Ev
_ZN10C3DGameMapC1Ev: ; 0x0205D104
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN11C3DGameBaseC2Ev
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
	arm_func_end _ZN10C3DGameMapC1Ev

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

	arm_func_start _ZN10C3DGameMap4initEi
_ZN10C3DGameMap4initEi: ; 0x0205D180
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
	ldr r0, _0205D288 ; =gAllocator
	bl _ZN10CAllocator8allocateEm
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
_0205D288: .word gAllocator
	arm_func_end _ZN10C3DGameMap4initEi

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
	ldr r0, _0205D340 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
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
_0205D340: .word gAllocator
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
	ldr r0, _0205D41C ; =g3DDevice
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
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	b _0205D5CC
_0205D5C8:
	bl _ZN10FileSystem17OpenArchiveDirectEPvPKc
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
	bl _ZN10FileSystem14IsArchiveReadyEi
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
	bl _ZN10FileSystem12CloseArchiveEi
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
	bl _ZN7Archive15GetMapModelPathEPKcPc
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
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
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
	bl _ZN7Archive17GetMapTexturePathEPKcPc
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
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
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
	bl _ZN7Archive16GetMapMotionPathEPKcPc
	ldr r1, _0205DBD4 ; =0x02090B34
	mov r0, r8
	mov r2, r6
	bl STD_TSPrintf
	ldr r0, _0205DBD8 ; =gNsbResourceMan
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
	ldr r0, _0205DBD8 ; =gNsbResourceMan
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
_0205DBD8: .word gNsbResourceMan
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
	bl _ZN7Archive16GetMapMotionPathEPKcPc
	ldr r9, _0205DD34 ; =gNsbResourceMan
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
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
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
_0205DD34: .word gNsbResourceMan
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

	.rodata
	.global unk_0208C47C
unk_0208C47C:
	.byte 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00

	.data
	.global unk_020909B0
unk_020909B0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020909C8
unk_020909C8:
	.asciz "pac/mr_pac"
	.balign 4, 0
	.global unk_020909D4
unk_020909D4:
	.asciz "_pac/mv_pac"
	.balign 4, 0
	.global unk_020909E0
unk_020909E0:
	.asciz "obj/mr_nsbtx"
	.balign 4, 0
	.global unk_020909F0
unk_020909F0:
	.asciz "obj/mr_nsbmd"
	.balign 4, 0
	.global unk_02090A00
unk_02090A00:
	.asciz "_obj/mv_nsbmd"
	.balign 4, 0
	.global unk_02090A10
unk_02090A10:
	.word unk_020909F0
	.word unk_02090A00
	.word unk_020909C8
	.word unk_020909D4
	.word unk_020909E0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_02090A30
unk_02090A30:
	.word FUN_0205ca78
	.word FUN_0205cac8
	.word FUN_0205cb18
	.word FUN_020523ac
	.word FUN_0205e280
	.word FUN_0205d138
	.word FUN_0205d158
	.global unk_02090A4C
unk_02090A4C:
	.asciz "/data_iz/model/obj/mv_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090A6C
unk_02090A6C:
	.asciz "/data_iz/model/obj/mv_nsbtx.pkh"
	.balign 4, 0
	.global unk_02090A8C
unk_02090A8C:
	.asciz "/data_iz/model/pac/mv_pac.pkh"
	.balign 4, 0
	.global unk_02090AAC
unk_02090AAC:
	.asciz "/data_iz/model/obj/mv_nsbmd.pkb"
	.balign 4, 0
	.global unk_02090ACC
unk_02090ACC:
	.asciz "/data_iz/model/obj/mv_nsbtx.pkb"
	.balign 4, 0
	.global unk_02090AEC
unk_02090AEC:
	.asciz "/data_iz/model/pac/mv_pac.pkb"
	.balign 4, 0
	.global unk_02090B0C
unk_02090B0C:
	.asciz "mv"
	.balign 4, 0
	.global unk_02090B10
unk_02090B10:
	.asciz "model/%s"
	.balign 4, 0
	.global unk_02090B1C
unk_02090B1C:
	.asciz "%s.nsbmd_"
	.balign 4, 0
	.global unk_02090B28
unk_02090B28:
	.asciz "%s.nsbtx_"
	.balign 4, 0
	.global unk_02090B34
unk_02090B34:
	.asciz "%s.pac_"
	.balign 4, 0

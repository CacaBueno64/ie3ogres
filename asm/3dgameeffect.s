
	.include "/macros/function.inc"
	.include "/include/3dgameeffect.inc"

    .text
	arm_func_start FUN_0205b4f0
FUN_0205b4f0: ; 0x0205B4F0
	ldr r0, _0205B500 ; =0x02090978
	cmp r1, #0
	movne r0, #0
	bx lr
_0205B500: .word unk_02090978
	arm_func_end FUN_0205b4f0

	arm_func_start FUN_0205b504
FUN_0205b504: ; 0x0205B504
	ldr r0, _0205B514 ; =0x02090994
	cmp r1, #0
	movne r0, #0
	bx lr
_0205B514: .word unk_02090994
	arm_func_end FUN_0205b504

	arm_func_start _ZN13C3DGameEffect5resetEv
_ZN13C3DGameEffect5resetEv: ; 0x0205B518
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end _ZN13C3DGameEffect5resetEv

	arm_func_start FUN_0205b530
FUN_0205b530: ; 0x0205B530
	cmp r1, #0
	cmpge r2, #0
	mvnlt r0, #0
	addge r0, r2, #1
	andge r0, r0, #0xff
	bx lr
	arm_func_end FUN_0205b530

	arm_func_start FUN_0205b548
FUN_0205b548: ; 0x0205B548
	cmp r1, #0
	mvnlt r0, #0
	bxlt lr
	ands r0, r1, #0xff
	mvneq r0, #0
	subne r0, r0, #1
	bx lr
	arm_func_end FUN_0205b548

	arm_func_start FUN_0205b564
FUN_0205b564: ; 0x0205B564
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_0205b548
	cmp r0, #0
	blt _0205B594
	ldr r1, [r5, #0xc]
	cmp r0, r1
	bge _0205B594
	ldr r2, [r5, #0x14]
	cmp r2, #0
	bne _0205B59C
_0205B594:
	mov r2, #0
	b _0205B5A4
_0205B59C:
	mov r1, #0x3c
	mla r2, r0, r1, r2
_0205B5A4:
	cmp r2, #0
	beq _0205B5B8
	ldrh r1, [r2, #8]
	tst r1, #1
	bne _0205B5C0
_0205B5B8:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0205B5C0:
	cmp r4, #0
	strne r2, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205b564

	arm_func_start FUN_0205b5cc
FUN_0205b5cc: ; 0x0205B5CC
	ldr r12, [r0, #0xc]
	cmp r12, #0
	ble _0205B5E4
	ldr r3, [r0, #0x14]
	cmp r3, #0
	bne _0205B5E8
_0205B5E4:
	mov r3, #0
_0205B5E8:
	cmp r12, #0
	mov r0, #0
	ble _0205B61C
_0205B5F4:
	ldrh r2, [r3, #8]
	tst r2, #1
	bne _0205B60C
	cmp r1, #0
	strne r3, [r1]
	bx lr
_0205B60C:
	add r0, r0, #1
	cmp r0, r12
	add r3, r3, #0x3c
	blt _0205B5F4
_0205B61C:
	mvn r0, #0
	bx lr
	arm_func_end FUN_0205b5cc

	arm_func_start FUN_0205b624
FUN_0205b624: ; 0x0205B624
	stmfd sp!, {r4, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0205B640
	bl FUN_ov16_020fa154
_0205B640:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0205B658
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0205B658:
	ldr r1, [r4, #0x38]
	cmp r1, #0
	beq _0205B670
	ldr r0, _0205B6C8 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205B670:
	mov r3, #0
	sub r0, r3, #1
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #0x30]
	str r0, [r4]
	str r0, [r4, #4]
	strh r3, [r4, #8]
	strb r3, [r4, #0xa]
	strb r3, [r4, #0xb]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	str r3, [r4, #0x14]
	str r3, [r4, #0x18]
	str r3, [r4, #0x1c]
	str r3, [r4, #0x20]
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	str r3, [r4, #0x2c]
	str r1, [r4, #0x30]
	str r2, [r4, #0x34]
	str r3, [r4, #0x38]
	ldmfd sp!, {r4, pc}
_0205B6C8: .word gNsbResourceMan
	arm_func_end FUN_0205b624

	arm_func_start FUN_0205b6cc
FUN_0205b6cc: ; 0x0205B6CC
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r1, #0
	cmpne r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #8]
	tst r0, #1
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0205B764 ; =gNsbResourceMan
	ldr r1, [r4, #0x38]
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	movs r6, r0
	beq _0205B754
	cmp r6, #1
	moveq r1, #1
	streqb r1, [r4, #0xb]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0205b624
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_0205B754:
	mov r0, #2
	strb r0, [r4, #0xb]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0205B764: .word gNsbResourceMan
	arm_func_end FUN_0205b6cc

	arm_func_start FUN_0205b768
FUN_0205b768: ; 0x0205B768
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	movs r6, r1
	mov r5, r0
	mov r4, #0
	addeq sp, sp, #0x1c
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r2, [r6, #0xb]
	cmp r2, #3
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #2
	addne sp, sp, #0x1c
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0205b6cc
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _0205B9AC ; =0x0208C460
	add r7, sp, #0
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldr r0, [r6, #0x30]
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _0205B894
	ldr r7, _0205B9B0 ; =gNsbResourceMan
	ldr r1, [r6, #0x38]
	ldr r0, [r7]
	mov r2, #1
	mov r3, #4
	bl FUN_ov16_020fd6d8
	movs r8, r0
	bne _0205B820
	mov r0, r5
	mov r1, r6
	bl FUN_0205b624
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B820:
	ldr r0, [r6, #0x30]
	mov r1, r8
	bl FUN_ov16_020f9ddc
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_020fd350
	ldr r0, [r6, #0x30]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	bne _0205B868
	mov r0, r5
	mov r1, r6
	bl FUN_0205b624
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B868:
	ldr r0, [r6, #0x24]
	cmp r0, #0
	ldreq r0, [r6, #0x28]
	cmpeq r0, #0
	ldreq r0, [r6, #0x2c]
	cmpeq r0, #0
	ldreq r0, _0205B9B4 ; =0x0208F6F0
	ldreq r0, [r0, #0x18]
	streq r0, [r6, #0x24]
	streq r0, [r6, #0x28]
	streq r0, [r6, #0x2c]
_0205B894:
	ldr r7, _0205B9B0 ; =gNsbResourceMan
	mov r2, #2
	ldr r0, [r7]
	ldr r1, [r6, #0x38]
	mov r3, r2
	bl FUN_ov16_020fd6d8
	movs r8, r0
	bne _0205B8CC
	mov r0, r5
	mov r1, r6
	bl FUN_0205b624
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B8CC:
	ldr r0, [r6, #0x34]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_020fd350
	mov r5, #0
	mov r10, #1
	add r9, sp, #0
	b _0205B998
_0205B8FC:
	ldr r0, [r6, #0x30]
	mov r1, r5
	bl FUN_ov16_020faa1c
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, r10
	movne r0, r4
	cmp r0, #0
	beq _0205B994
	add r2, r5, #3
	ldr r0, [r7]
	ldr r1, [r6, #0x38]
	ldr r3, [r9, r2, lsl #2]
	bl FUN_ov16_020fd6d8
	movs r8, r0
	beq _0205B994
	ldr r0, [r6, #0x30]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020fa7f0
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov16_020fd350
	ldr r0, [r6, #0x30]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa838
	cmp r0, #0
	bne _0205B988
	ldr r0, [r6, #0x30]
	mov r1, r5
	bl FUN_ov16_020fa8a0
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B988:
	ldr r0, [r6, #0x30]
	mov r1, r5
	bl FUN_ov16_020fa8b8
_0205B994:
	add r5, r5, #1
_0205B998:
	cmp r5, #5
	blt _0205B8FC
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205B9AC: .word unk_0208C460
_0205B9B0: .word gNsbResourceMan
_0205B9B4: .word unk_0208F6F0
	arm_func_end FUN_0205b768

	arm_func_start FUN_0205b9b8
FUN_0205b9b8: ; 0x0205B9B8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x74
	movs r5, r1
	ldrne r0, [r5, #0x30]
	cmpne r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrb r1, [r5, #0xa]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0205BC7C
_0205B9E8: ; jump table
	b _0205BC7C ; case 0
	b _0205B9FC ; case 1
	b _0205BA20 ; case 2
	b _0205BAB8 ; case 3
	b _0205BC58 ; case 4
_0205B9FC:
	add r1, r5, #0xc
_0205BA00:
	bl FUN_ov16_020fa448
	ldr r0, [r5, #0x30]
	add r1, r5, #0x18
_0205BA0C:
	bl FUN_ov16_020fa464
	ldr r0, [r5, #0x30]
	add r1, r5, #0x24
	bl FUN_ov16_020fa4a0
	b _0205BC88
_0205BA20:
	ldr r4, _0205BC94 ; =g3DGameMap
	mov r7, #1
	ldr r1, [r4]
	add r0, sp, #0x2c
	mov r2, r7
	bl FUN_0205e084
	ldr r12, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r1, [r4]
	add r0, sp, #0x20
	mov r2, r7
	str r12, [sp, #0x68]
	str r6, [sp, #0x6c]
	str r3, [sp, #0x70]
	bl FUN_0205e0f4
	add r6, sp, #0x68
	ldr r12, [sp, #0x20]
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x28]
	mov r0, r6
	mov r2, r6
	add r1, r5, #0xc
	str r12, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	bl VEC_Add
	add r4, sp, #0x5c
	add r1, r5, #0x18
	mov r0, r4
	mov r2, r4
	bl VEC_Add
	ldr r0, [r5, #0x30]
	mov r1, r6
	bl FUN_ov16_020fa448
	ldr r0, [r5, #0x30]
	mov r1, r4
_0205BAB4:
	b _0205BA0C
_0205BAB8:
	ldr r0, _0205BC98 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0205BAD4
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0205BB38
_0205BAD4:
	ldr r4, _0205BC9C ; =g3DGameChar
	ldr r2, [r5, #4]
	ldr r1, [r4]
	add r0, sp, #0x14
	bl FUN_0205afb4
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	str r0, [sp, #0x58]
	ldrh r0, [r5, #8]
	tst r0, #0x2000
	bne _0205BB34
	ldr r1, [r4]
	ldr r2, [r5, #4]
	add r0, sp, #8
	bl FUN_0205b04c
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x44]
	str r1, [sp, #0x48]
	b _0205BC3C
_0205BB34:
	b _0205BC28
_0205BB38:
	ldr r0, [r5, #4]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0205BC88
	ldr r6, [r4, #0x84]
	ldr r1, [r6, #4]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	add r2, sp, #4
	add r3, sp, #0
	ldmia r6, {r0, r1}
	bl FUN_ov16_020efe30
	ldr r0, [sp]
	ldr r7, [r5, #0x14]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0205BB9C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0205BBA8
_0205BB9C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0205BBA8:
	bl _ffix
	ldr r1, [sp, #4]
	mov r6, r0
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _0205BBD4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0205BBE0
_0205BBD4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0205BBE0:
	bl _ffix
	str r0, [sp, #0x50]
	str r6, [sp, #0x54]
	str r7, [sp, #0x58]
	ldrh r0, [r5, #8]
	tst r0, #0x2000
	bne _0205BC28
	ldr r0, [r4, #0x84]
	ldr r1, _0205BCA0 ; =FX_SinCosTable_
	ldrh r2, [r0, #0x18]
	mov r0, #0
	mov r2, r2, asr #4
	mov r2, r2, lsl #2
	ldrsh r1, [r1, r2]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	b _0205BC40
_0205BC28:
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x44]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x48]
	ldr r0, [r5, #0x20]
_0205BC3C:
	str r0, [sp, #0x4c]
_0205BC40:
	ldr r0, [r5, #0x30]
	add r1, sp, #0x50
	bl FUN_ov16_020fa448
	ldr r0, [r5, #0x30]
	add r1, sp, #0x44
	b _0205BAB4
_0205BC58:
	ldr r1, [r5, #0x10]
	ldr r4, [r5, #0x14]
	ldr r2, [r5, #0xc]
	rsb r3, r1, #0
	add r1, sp, #0x38
	str r2, [sp, #0x38]
	str r3, [sp, #0x3c]
	str r4, [sp, #0x40]
	b _0205BA00
_0205BC7C:
	add sp, sp, #0x74
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205BC88:
	mov r0, #1
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205BC94: .word g3DGameMap
_0205BC98: .word gUtilGame
_0205BC9C: .word g3DGameChar
_0205BCA0: .word FX_SinCosTable_
	arm_func_end FUN_0205b9b8

	arm_func_start _ZN13C3DGameEffect4initEi
_ZN13C3DGameEffect4initEi: ; 0x0205BCA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl _ZN13C3DGameEffect5resetEv
	mov r0, r10
	mov r1, #1
	str r9, [r10, #0xc]
	bl FUN_02052168
	ldr r0, _0205BE0C ; =FUN_020527d4
	mov r4, #8
	str r0, [sp]
	ldr r3, _0205BE10 ; =FUN_0205a3f0
	mov r0, r9
	mov r1, #0x1bc
	mov r2, r4
	bl __cxa_vec_new
	str r0, [r10, #0x10]
	ldr r1, _0205BE14 ; =FUN_020525e8
	ldr r3, _0205BE18 ; =FUN_0205a2f0
	str r1, [sp]
	mov r2, r4
	mov r0, r9
	mov r1, #0x114
	bl __cxa_vec_new
	mov r1, #0x3c
	str r0, [r10, #0x18]
	mul r1, r9, r1
	ldr r0, _0205BE1C ; =gAllocator
	bl _ZN9Allocator8allocateEm
	ldr r1, [r10, #0x10]
	str r0, [r10, #0x14]
	cmp r1, #0
	ldrne r1, [r10, #0x18]
	cmpne r1, #0
	cmpne r0, #0
	bne _0205BD44
	mov r0, r10
	bl FUN_0205be20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205BD44:
	cmp r9, #0
	mov r6, #0
	ble _0205BDF4
	mvn r5, #0
	mov r4, r6
	mov r11, #0x3c
_0205BD5C:
	mov r0, #0x1bc
	mul r8, r6, r0
	ldr r0, [r10, #0x10]
	add r0, r0, r8
	bl FUN_ov16_020f9cdc
	mov r0, #0x114
	mul r7, r6, r0
	ldr r0, [r10, #0x18]
	ldr r1, [r0, r7]!
	ldr r1, [r1, #8]
	blx r1
	mul r0, r6, r11
	ldr r2, [r10, #0x18]
	ldr r1, [r10, #0x10]
	add r3, r2, r7
	add r2, r1, r8
	ldr r1, [r10, #0x14]
	add r6, r6, #1
	str r5, [r1, r0]
	add r0, r1, r0
	str r5, [r0, #4]
	strh r4, [r0, #8]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x20]
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	str r4, [r0, #0x2c]
	str r2, [r0, #0x30]
	str r3, [r0, #0x34]
	str r4, [r0, #0x38]
	cmp r6, r9
	blt _0205BD5C
_0205BDF4:
	mov r1, #0
	mov r0, r10
	mov r2, r1
	bl FUN_020521d0
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205BE0C: .word FUN_020527d4
_0205BE10: .word FUN_0205a3f0
_0205BE14: .word FUN_020525e8
_0205BE18: .word FUN_0205a2f0
_0205BE1C: .word gAllocator
	arm_func_end _ZN13C3DGameEffect4initEi

	arm_func_start FUN_0205be20
FUN_0205be20: ; 0x0205BE20
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mvn r1, #0
	bl FUN_020522ec
	mov r0, r4
	bl FUN_020521a0
	mov r0, r4
	bl FUN_0205c468
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0205BE54
	ldr r0, _0205BF08 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_0205BE54:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205BEAC
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205BE98
	mov r5, #0x114
_0205BE74:
	ldr r0, [r4, #0x18]
	mla r0, r6, r5, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205BE74
_0205BE98:
	ldr r0, [r4, #0x18]
	ldr r3, _0205BF0C ; =FUN_020525e8
	mov r1, #0x114
	mov r2, #8
	bl __cxa_vec_delete
_0205BEAC:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0205BEFC
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205BEE8
	mov r5, #0x1bc
_0205BECC:
	ldr r0, [r4, #0x10]
	mla r0, r6, r5, r0
	bl FUN_ov16_020f9d80
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205BECC
_0205BEE8:
	ldr r0, [r4, #0x10]
	ldr r3, _0205BF10 ; =FUN_020527d4
	mov r1, #0x1bc
	mov r2, #8
	bl __cxa_vec_delete
_0205BEFC:
	mov r0, r4
	bl _ZN13C3DGameEffect5resetEv
	ldmfd sp!, {r4, r5, r6, pc}
_0205BF08: .word gAllocator
_0205BF0C: .word FUN_020525e8
_0205BF10: .word FUN_020527d4
	arm_func_end FUN_0205be20

	arm_func_start FUN_0205bf14
FUN_0205bf14: ; 0x0205BF14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r0, [r9, #0xc]
	mov r8, r1
	cmp r0, #0
	ble _0205BF38
	ldr r0, [r9, #0x14]
	cmp r0, #0
	bne _0205BF40
_0205BF38:
	mov r7, #0
	b _0205BF44
_0205BF40:
	add r7, r0, #0
_0205BF44:
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0205C05C ; =g3DDevice
	mvn r4, #0
	ldr r0, [r0]
	mov r6, #0
	ldrb r0, [r0, #4]
	add r10, r4, #0xff00
	mov r5, #3
	cmp r0, #0
	movne r8, #0
	b _0205C04C
_0205BF74:
	ldrh r1, [r7, #8]
	tst r1, #1
	beq _0205C044
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	beq _0205BFA0
	cmp r0, #2
	beq _0205BFB0
	cmp r0, #3
	beq _0205BFE0
	b _0205C044
_0205BFA0:
	mov r0, r9
	mov r1, r7
	bl FUN_0205b6cc
	b _0205C044
_0205BFB0:
	tst r1, #2
	bne _0205C044
	mov r0, r9
	mov r1, r7
	bl FUN_0205b768
	cmp r0, #0
	strneb r5, [r7, #0xb]
	bne _0205C044
	mov r0, r9
	mov r1, r7
	bl FUN_0205b624
	b _0205C044
_0205BFE0:
	tst r1, #0x100
	beq _0205C044
	mov r0, r9
	mov r1, r7
	bl FUN_0205b9b8
	ldr r0, [r7, #0x34]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldr r1, [r7, #0x34]
	ldr r0, [r7, #0x30]
	ldr r1, [r1, #0x24]
	mov r2, r4
	bl FUN_ov16_020fa340
	ldr r0, [r7, #0x34]
	bl FUN_ov16_020fb02c
	cmp r0, #0
	beq _0205C044
	ldr r0, [r7, #0x34]
	bl FUN_ov16_020fb048
	cmp r0, #0
	ldreqh r0, [r7, #8]
	andeq r0, r0, r10
	streqh r0, [r7, #8]
_0205C044:
	add r6, r6, #1
	add r7, r7, #0x3c
_0205C04C:
	ldr r0, [r9, #0xc]
	cmp r6, r0
	blt _0205BF74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205C05C: .word g3DDevice
	arm_func_end FUN_0205bf14

	arm_func_start FUN_0205c060
FUN_0205c060: ; 0x0205C060
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0205C084
	ldr r6, [r7, #0x14]
	cmp r6, #0
	bne _0205C088
_0205C084:
	mov r6, #0
_0205C088:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	mov r5, #0
	ble _0205C110
	ldr r9, _0205C148 ; 0x02099EF0
	ldr r8, _0205C14C ; =0x00000101
_0205C0A4:
	ldrh r0, [r6, #8]
	and r0, r0, r8
	cmp r0, r8
	ldreqb r0, [r6, #0xb]
	cmpeq r0, #3
	bne _0205C0FC
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	cmpne r0, #2
	beq _0205C0EC
	cmp r0, #3
	bne _0205C0FC
	ldr r0, [r9]
	cmp r0, #0
	beq _0205C0EC
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0205C0FC
_0205C0EC:
	ldr r0, [r6, #0x30]
	bl FUN_ov16_020fa300
	cmp r0, #0
	addne r4, r4, #1
_0205C0FC:
	ldr r0, [r7, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x3c
	blt _0205C0A4
_0205C110:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205C148: .word gUtilGame
_0205C14C: .word 0x00000101
	arm_func_end FUN_0205c060

	arm_func_start FUN_0205c150
FUN_0205c150: ; 0x0205C150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0205C174
	ldr r6, [r7, #0x14]
	cmp r6, #0
	bne _0205C178
_0205C174:
	mov r6, #0
_0205C178:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	mov r5, #0
	ble _0205C200
	ldr r9, _0205C238 ; 0x02099EF0
	ldr r8, _0205C23C ; =0x00000101
_0205C194:
	ldrh r0, [r6, #8]
	and r0, r0, r8
	cmp r0, r8
	ldreqb r0, [r6, #0xb]
	cmpeq r0, #3
	bne _0205C1EC
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _0205C1C4
	cmp r0, #4
	beq _0205C1DC
	b _0205C1EC
_0205C1C4:
	ldr r0, [r9]
	cmp r0, #0
	beq _0205C1EC
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _0205C1EC
_0205C1DC:
	ldr r0, [r6, #0x30]
	bl FUN_ov16_020fa300
	cmp r0, #0
	addne r4, r4, #1
_0205C1EC:
	ldr r0, [r7, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x3c
	blt _0205C194
_0205C200:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205C238: .word gUtilGame
_0205C23C: .word 0x00000101
	arm_func_end FUN_0205c150

	arm_func_start FUN_0205C240
FUN_0205C240: ; 0x0205C240
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r8, r1
	add r1, sp, #0x18
	str r4, [sp, #0x18]
	mov r9, r0
	mov r7, r2
	bl FUN_0205b5cc
	ldr r1, [sp, #0x18]
	mov r6, r0
	cmp r1, #0
	addeq sp, sp, #0x1c
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	ldrne r0, [r1, #0x34]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	bl FUN_0205b624
	mov r0, r9
	mov r1, r4
	bl FUN_0205228c
	cmp r0, #0
	addne sp, sp, #0x1c
	subne r0, r4, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #8]
	add r2, sp, #0x14
	ldr r0, [r0]
	add r3, sp, #0x10
	mov r1, r8
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	addeq sp, sp, #0x1c
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #4]
	blx r2
	ldr r1, [sp, #0x14]
	mov r5, #1
	str r1, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, _0205C390 ; =gNsbResourceMan
	stmib sp, {r1, r5}
	str r5, [sp, #0xc]
	mov r1, r0
	mov r4, #0xd
	ldr r0, [r2]
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_020fcd08
	ldr r2, [sp, #0x18]
	sub r1, r4, #0xe
	str r0, [r2, #0x38]
	ldr r0, [sp, #0x18]
	cmp r7, #0
	str r8, [r0]
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
	ldrne r0, [sp, #0x18]
	strneh r5, [r0, #8]
	ldrne r0, [sp, #0x18]
	strneb r5, [r0, #0xb]
	bne _0205C378
	ldr r0, [sp, #0x18]
	mov r1, #3
	strh r1, [r0, #8]
	ldr r0, [sp, #0x18]
	mov r1, #2
	strb r1, [r0, #0xb]
_0205C378:
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_0205b530
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205C390: .word gNsbResourceMan
	arm_func_end FUN_0205C240

	arm_func_start FUN_0205c394
FUN_0205c394: ; 0x0205C394
	ldr r12, _0205C3A0 ; =FUN_0205C240
	mov r2, #1
	bx r12
_0205C3A0: .word FUN_0205C240
	arm_func_end FUN_0205c394

	arm_func_start FUN_0205c3a4
FUN_0205c3a4: ; 0x0205C3A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	add r2, sp, #0
	str r4, [sp]
	mov r5, r0
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0x30]
	cmp r0, #0
	ldrne r0, [r2, #0x34]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r1, [r2, #8]
	ldr r0, _0205C434 ; =0x0000FFFD
	and r0, r1, r0
	strh r0, [r2, #8]
	ldr r1, [sp]
	ldrb r0, [r1, #0xb]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_0205b6cc
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	ldrb r0, [r0, #0xb]
	cmp r0, #2
	moveq r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0205C434: .word 0x0000FFFD
	arm_func_end FUN_0205c3a4

	arm_func_start FUN_0205c438
FUN_0205c438: ; 0x0205C438
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205b564
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205b624
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c438

	arm_func_start FUN_0205c468
FUN_0205c468: ; 0x0205C468
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	ble _0205C488
	ldr r5, [r6, #0x14]
	cmp r5, #0
	bne _0205C48C
_0205C488:
	mov r5, #0
_0205C48C:
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0205C498:
	mov r0, r6
	mov r1, r5
	bl FUN_0205b624
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x3c
	blt _0205C498
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205c468

	arm_func_start FUN_0205c4bc
FUN_0205c4bc: ; 0x0205C4BC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205b564
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205b6cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c4bc

	arm_func_start FUN_0205c4ec
FUN_0205c4ec: ; 0x0205C4EC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	ble _0205C50C
	ldr r5, [r6, #0x14]
	cmp r5, #0
	bne _0205C510
_0205C50C:
	mov r5, #0
_0205C510:
	cmp r0, #0
	mov r4, #0
	ble _0205C550
_0205C51C:
	ldrh r0, [r5, #8]
	tst r0, #1
	beq _0205C53C
	mov r0, r6
	mov r1, r5
	bl FUN_0205b6cc
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0205C53C:
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x3c
	blt _0205C51C
_0205C550:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205c4ec

	arm_func_start FUN_0205c558
FUN_0205c558: ; 0x0205C558
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldrh r1, [r2, #8]
	tst r1, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	cmp r4, #0
	orrne r0, r1, #0x100
	strneh r0, [r2, #8]
	ldreq r0, _0205C5B4 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r2, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0205C5B4: .word 0x0000FEFF
	arm_func_end FUN_0205c558

	arm_func_start FUN_0205c5b8
FUN_0205c5b8: ; 0x0205C5B8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	strneb r4, [r0, #0xa]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c5b8

	arm_func_start FUN_0205c5e8
FUN_0205c5e8: ; 0x0205C5E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	strne r5, [r1, #0xc]
	ldrne r0, [sp, #0x10]
	strne r4, [r1, #0x10]
	strne r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c5e8

	arm_func_start FUN_0205c620
FUN_0205c620: ; 0x0205C620
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	strne r5, [r1, #0x18]
	ldrne r0, [sp, #0x10]
	strne r4, [r1, #0x1c]
	strne r0, [r1, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c620

	arm_func_start FUN_0205c658
FUN_0205c658: ; 0x0205C658
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	strne r5, [r1, #0x24]
	ldrne r0, [sp, #0x10]
	strne r4, [r1, #0x28]
	strne r0, [r1, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205c658

	arm_func_start FUN_0205c690
FUN_0205c690: ; 0x0205C690
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	add r12, sp, #0x10
	mov r4, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x30]
	cmpne r1, #0
	beq _0205C6F8
	add r0, sp, #4
	bl FUN_ov16_020fa538
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205C6F8:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c690

	arm_func_start FUN_0205c70c
FUN_0205c70c: ; 0x0205C70C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	add r12, sp, #0x10
	mov r4, r0
	mov r0, r1
	mov r1, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x30]
	cmpne r1, #0
	beq _0205C774
	add r0, sp, #4
	bl FUN_ov16_020fa54c
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205C774:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c70c

	arm_func_start FUN_0205c788
FUN_0205c788: ; 0x0205C788
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	add r2, sp, #0
	str r4, [sp]
	mov r5, r3
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x34]
	cmpne r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r6
	bl FUN_ov16_020faf80
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp]
	mov r1, r5
	ldr r0, [r0, #0x34]
	bl FUN_ov16_020fb040
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205c788

	arm_func_start FUN_0205c7f8
FUN_0205c7f8: ; 0x0205C7F8
	stmfd sp!, {r3, lr}
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x34]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fb02c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205c7f8

	arm_func_start FUN_0205c82c
FUN_0205c82c: ; 0x0205C82C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r3, #0
	add r12, sp, #4
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	bl FUN_0205b564
	ldr r0, [sp]
	cmp r0, #0
	strne r4, [r0, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205c82c

	arm_func_start FUN_0205c86c
FUN_0205c86c: ; 0x0205C86C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	tst r4, #0x6000
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	cmp r3, #0
	bne _0205C898
	bl FUN_0205c8d0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0205C898:
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	ldrne r0, [r2, #0x34]
	cmpne r0, #0
	ldrneh r1, [r2, #8]
	movne r0, r4, lsl #0x10
	orrne r0, r1, r0, lsr #16
	strneh r0, [r2, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c86c

	arm_func_start FUN_0205c8d0
FUN_0205c8d0: ; 0x0205C8D0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	tst r4, #0x6000
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r2, [sp]
	cmp r2, #0
	ldrne r0, [r2, #0x34]
	cmpne r0, #0
	mvnne r0, r4
	ldrneh r1, [r2, #8]
	movne r0, r0, lsl #0x10
	andne r0, r1, r0, lsr #16
	strneh r0, [r2, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205c8d0

	arm_func_start FUN_0205c924
FUN_0205c924: ; 0x0205C924
	stmfd sp!, {r3, lr}
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205b564
	ldr r1, [sp]
	cmp r1, #0
	ldrne r0, [r1, #0x34]
	cmpne r0, #0
	moveq r0, #0
	ldrneh r0, [r1, #8]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205c924

	arm_func_start FUN_0205c954
FUN_0205c954: ; 0x0205C954
	stmfd sp!, {r4, lr}
	ldr r1, _0205C978 ; =0x0209095C
	mov r4, r0
	str r1, [r4]
	bl FUN_0205be20
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205C978: .word _ZTV13C3DGameEffect+0x8
	arm_func_end FUN_0205c954

	arm_func_start FUN_0205c97c
FUN_0205c97c: ; 0x0205C97C
	stmfd sp!, {r4, lr}
	ldr r1, _0205C998 ; =0x0209095C
	mov r4, r0
	str r1, [r4]
	bl FUN_0205be20
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205C998: .word _ZTV13C3DGameEffect+0x8
	arm_func_end FUN_0205c97c

	arm_func_start FUN_0205c99c
FUN_0205c99c: ; 0x0205C99C
	mov r0, #0
	bx lr
	arm_func_end FUN_0205c99c

	.rodata
	.global unk_0208C460
unk_0208C460:
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00

	.data
	.global unk_0209093C
unk_0209093C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global _ZTV13C3DGameEffect
_ZTV13C3DGameEffect:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_0205b4f0
	.word FUN_0205b504
	.word FUN_0205c99c
	.word FUN_020523ac
	.word FUN_020523fc
	.word FUN_0205c97c
	.word FUN_0205c954
	.global unk_02090978
unk_02090978:
	.asciz "/data_iz/effect3d/eff.pkh"
	.balign 4, 0
	.global unk_02090994
unk_02090994:
	.asciz "/data_iz/effect3d/eff.pkb"
	.balign 4, 0

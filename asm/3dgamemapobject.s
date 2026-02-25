
	.include "/macros/function.inc"
	.include "/include/3dgamemapobject.inc"

    .text
	arm_func_start FUN_0205e2d8
FUN_0205e2d8: ; 0x0205E2D8
	stmfd sp!, {r3, lr}
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0205E330
_0205E2E8: ; jump table
	b _0205E304 ; case 0
	b _0205E30C ; case 1
	b _0205E310 ; case 2
	b _0205E318 ; case 3
	b _0205E30C ; case 4
	b _0205E320 ; case 5
	b _0205E328 ; case 6
_0205E304:
	ldr r0, _0205E338 ; =0x02090C14
	ldmfd sp!, {r3, pc}
_0205E30C:
	bl OS_Terminate
_0205E310:
	ldr r0, _0205E33C ; =0x02090C34
	ldmfd sp!, {r3, pc}
_0205E318:
	ldr r0, _0205E340 ; =0x02090C54
	ldmfd sp!, {r3, pc}
_0205E320:
	ldr r0, _0205E344 ; =0x02090C78
	ldmfd sp!, {r3, pc}
_0205E328:
	ldr r0, _0205E348 ; =0x02090C9C
	ldmfd sp!, {r3, pc}
_0205E330:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0205E338: .word unk_02090C14
_0205E33C: .word unk_02090C34
_0205E340: .word unk_02090C54
_0205E344: .word unk_02090C78
_0205E348: .word unk_02090C9C
	arm_func_end FUN_0205e2d8

	arm_func_start FUN_0205e34c
FUN_0205e34c: ; 0x0205E34C
	stmfd sp!, {r3, lr}
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0205E3A4
_0205E35C: ; jump table
	b _0205E378 ; case 0
	b _0205E380 ; case 1
	b _0205E384 ; case 2
	b _0205E38C ; case 3
	b _0205E380 ; case 4
	b _0205E394 ; case 5
	b _0205E39C ; case 6
_0205E378:
	ldr r0, _0205E3AC ; =0x02090CBC
	ldmfd sp!, {r3, pc}
_0205E380:
	bl OS_Terminate
_0205E384:
	ldr r0, _0205E3B0 ; =0x02090CDC
	ldmfd sp!, {r3, pc}
_0205E38C:
	ldr r0, _0205E3B4 ; =0x02090CFC
	ldmfd sp!, {r3, pc}
_0205E394:
	ldr r0, _0205E3B8 ; =0x02090D20
	ldmfd sp!, {r3, pc}
_0205E39C:
	ldr r0, _0205E3BC ; =0x02090D44
	ldmfd sp!, {r3, pc}
_0205E3A4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0205E3AC: .word unk_02090CBC
_0205E3B0: .word unk_02090CDC
_0205E3B4: .word unk_02090CFC
_0205E3B8: .word unk_02090D20
_0205E3BC: .word unk_02090D44
	arm_func_end FUN_0205e34c

	arm_func_start FUN_0205e3c0
FUN_0205e3c0: ; 0x0205E3C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r6, sp, #0
	mov r7, r1
	mov r10, r2
	mov r9, r3
	mov r0, #4
	mov r5, #0
_0205E3E4:
	strb r5, [r6]
	strb r5, [r6, #1]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	add r6, r6, #4
	subs r0, r0, #1
	bne _0205E3E4
	cmp r7, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	mov r1, r7
	bl FUN_0205e634
	mov r6, r0
	mov r0, r7
	mov r1, #0x2e
	bl strrchr
	mov r7, r0
	cmp r6, #0
	cmpne r7, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _0205E5C0 ; =0x02090D64
	mov r2, #5
	bl STD_CompareNString
	cmp r0, #0
	mov r8, #1
	ldr r1, _0205E5C4 ; =0x02090D6C
	movne r8, #0
	mov r0, r6
	mov r2, #4
	bl STD_CompareNString
	cmp r0, #0
	cmpeq r8, #0
	bne _0205E494
	add r1, r6, #4
	mov r3, #3
_0205E480:
	add r0, sp, #0
	sub r2, r7, r1
	str r3, [r10]
_0205E48C:
	bl strncpy
	b _0205E564
_0205E494:
	ldr r1, _0205E5C8 ; =0x02090D74
	mov r0, r6
	mov r2, #3
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E4C8
	cmp r8, #0
	beq _0205E4C8
	add r1, r6, #3
	add r0, sp, #0
	sub r2, r7, r1
	str r5, [r10]
	b _0205E530
_0205E4C8:
	mov r5, #2
	ldr r1, _0205E5CC ; =0x02090D78
	mov r0, r6
	mov r2, r5
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E4FC
	mov r0, #1
	cmp r8, #0
	moveq r0, #4
	str r0, [r10]
	add r1, r6, #2
	b _0205E528
_0205E4FC:
	ldr r1, _0205E5D0 ; =0x02090D7C
	mov r0, r6
	mov r2, #3
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E534
	cmp r8, #0
	strne r5, [r10]
	moveq r0, #5
	streq r0, [r10]
	add r1, r6, #3
_0205E528:
	add r0, sp, #0
	sub r2, r7, r1
_0205E530:
	b _0205E48C
_0205E534:
	ldr r1, _0205E5D4 ; =0x02090D80
	mov r0, r6
	mov r2, r5
	bl STD_CompareNString
	cmp r0, #0
	bne _0205E558
	add r1, r6, #2
	mov r3, #6
	b _0205E480
_0205E558:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205E564:
	ldr r3, [r10]
	mov r0, #0xc
	mul r2, r3, r0
	ldr r1, [r4, #8]
	ldr r0, [r1, r2]
	cmp r0, #0
	addne r1, r1, r2
	ldrneb r1, [r1, #8]
	cmpne r1, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #6
	bne _0205E5A8
	add r1, sp, #0
	bl _ZN7Archive14GetMapNameHashEPvPKc
	b _0205E5B0
_0205E5A8:
	add r0, sp, #0
	bl atoi
_0205E5B0:
	str r0, [r9]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205E5C0: .word unk_02090D64
_0205E5C4: .word unk_02090D6C
_0205E5C8: .word unk_02090D74
_0205E5CC: .word unk_02090D78
_0205E5D0: .word unk_02090D7C
_0205E5D4: .word unk_02090D80
	arm_func_end FUN_0205e3c0

	arm_func_start _ZN16C3DGameMapObject5resetEv
_ZN16C3DGameMapObject5resetEv: ; 0x0205E5D8
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r1, [r0, #0xc]
	str r1, [r0, #0x1c]
	bx lr
	arm_func_end _ZN16C3DGameMapObject5resetEv

	arm_func_start FUN_0205e5f4
FUN_0205e5f4: ; 0x0205E5F4
	mvn r0, #0
	cmp r1, #0
	addge r0, r1, #1
	bx lr
	arm_func_end FUN_0205e5f4

	arm_func_start FUN_0205e604
FUN_0205e604: ; 0x0205E604
	cmp r1, #0
	blt _0205E624
	ldr r2, [r0, #0xc]
	cmp r1, r2
	bge _0205E624
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0205E62C
_0205E624:
	mov r0, #0
	bx lr
_0205E62C:
	add r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_0205e604

	arm_func_start FUN_0205e634
FUN_0205e634: ; 0x0205E634
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x2f
	bl strrchr
	cmp r0, #0
	bne _0205E664
	mov r0, r4
	mov r1, #0x5c
	bl strrchr
_0205E664:
	cmp r0, #0
	moveq r0, r4
	addne r0, r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e634

	arm_func_start FUN_0205e674
FUN_0205e674: ; 0x0205E674
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov lr, r1
	mov r12, r2
	mov r5, r3
	add r4, sp, #0
	mov r6, r0
	ldr r1, _0205E6BC ; =0x02090D84
	mov r0, r4
	mov r2, lr
	mov r3, r12
	bl sprintf
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0205e71c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_0205E6BC: .word unk_02090D84
	arm_func_end FUN_0205e674

	arm_func_start FUN_0205e6c0
FUN_0205e6c0: ; 0x0205E6C0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	movs r12, r2
	mov r5, r0
	mov r2, r1
	bpl _0205E6E8
	ldr r2, [sp, #0x30]
	bl FUN_0205e738
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
_0205E6E8:
	add r4, sp, #4
	str r3, [sp]
	ldr r1, _0205E718 ; =0x02090D8C
	mov r0, r4
	mov r3, r12
	bl sprintf
	ldr r2, [sp, #0x30]
	mov r0, r5
	mov r1, r4
	bl FUN_0205e738
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
_0205E718: .word unk_02090D8C
	arm_func_end FUN_0205e6c0

	arm_func_start FUN_0205e71c
FUN_0205e71c: ; 0x0205E71C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r0, r1
	mov r1, r4
	bl _ZN7Archive21GetMapObjectModelPathEPKcPc
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e71c

	arm_func_start FUN_0205e738
FUN_0205e738: ; 0x0205E738
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r0, r1
	mov r1, r4
	bl _ZN7Archive16GetBallModelPathEPKcPc
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205e738

	arm_func_start FUN_0205e754
FUN_0205e754: ; 0x0205E754
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r7, r0
	mov r1, r4
	mov r5, r2
	bl FUN_0205e604
	ldr r2, [r7, #0xc]
	cmp r2, #0
	ble _0205E7B4
_0205E77C:
	ldr r1, [r0, #8]
	tst r1, #1
	beq _0205E7A4
	ldr r1, [r0]
	cmp r1, r6
	bne _0205E7A4
	cmp r5, #0
	strne r0, [r5]
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205E7A4:
	add r4, r4, #1
	cmp r4, r2
	add r0, r0, #0x20
	blt _0205E77C
_0205E7B4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205e754

	arm_func_start FUN_0205e7bc
FUN_0205e7bc: ; 0x0205E7BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_0205e604
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ble _0205E7FC
_0205E7DC:
	ldr r1, [r0, #8]
	tst r1, #1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r4, r4, #1
	cmp r4, r2
	add r0, r0, #0x20
	blt _0205E7DC
_0205E7FC:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205e7bc

	arm_func_start FUN_0205e804
FUN_0205e804: ; 0x0205E804
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0205E820
	bl FUN_ov16_020fa154
_0205E820:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205E838
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0205E838:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0205E850
	ldr r0, _0205E88C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205E850:
	mov r6, #0
	mov r5, #0x20
	mov r0, r4
	mov r1, r6
	mov r2, r5
	ldr r8, [r4, #0x18]
	ldr r7, [r4, #0x14]
	bl MI_CpuFill8
	sub r0, r5, #0x21
	str r7, [r4, #0x14]
	str r8, [r4, #0x18]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strb r6, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205E88C: .word gNsbResourceMan
	arm_func_end FUN_0205e804

	arm_func_start FUN_0205e890
FUN_0205e890: ; 0x0205E890
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r2, _0205EA90 ; =0x0208C48C
	add r4, sp, #0
	movs r5, r1
	mov r6, r0
	ldmia r2, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r4, #1
	mov r8, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #8]
	tst r0, #1
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	addeq sp, sp, #0x10
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x14]
	bl FUN_ov16_020fa964
	movs r7, r0
	beq _0205E924
	cmp r7, #1
	addeq sp, sp, #0x10
	streqb r4, [r5, #0xc]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205e804
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E924:
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, r4
	movne r0, r8
	cmp r0, #0
	bne _0205E978
	ldr r0, [r5, #0x18]
	bl FUN_ov16_020fb2ac
	movs r7, r0
	beq _0205E978
	cmp r7, #1
	addeq sp, sp, #0x10
	streqb r4, [r5, #0xc]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205e804
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E978:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _0205EA7C
	ldr r7, _0205EA94 ; =gNsbResourceMan
	ldr r0, [r7]
	bl FUN_ov16_020fd278
	movs r9, r0
	beq _0205E9C0
	cmp r9, #1
	addeq sp, sp, #0x10
	streqb r4, [r5, #0xc]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205e804
	add sp, sp, #0x10
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205E9C0:
	ldr r0, [r7]
	ldr r1, [r5, #0x1c]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_020fd6d8
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x18]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov16_020fd350
	ldr r0, [r5, #0x14]
	bl FUN_ov16_020fa8fc
	mov r9, #0
	add r6, sp, #0
	b _0205EA60
_0205EA18:
	ldr r0, [r7]
	ldr r1, [r5, #0x1c]
	ldr r3, [r6, r9, lsl #2]
	add r2, r9, #2
	bl FUN_ov16_020fd6d8
	movs r4, r0
	beq _0205EA5C
	ldr r0, [r5, #0x14]
	mov r1, r4
	mov r2, r9
	bl FUN_ov16_020fa7f0
	cmp r0, #0
	ldr r0, [r7]
	mov r1, r4
	bne _0205EA58
	b _0205EA58
_0205EA58:
	bl FUN_ov16_020fd350
_0205EA5C:
	add r9, r9, #1
_0205EA60:
	cmp r9, #5
	blt _0205EA18
	ldr r0, _0205EA94 ; =gNsbResourceMan
	ldr r1, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	str r8, [r5, #0x1c]
_0205EA7C:
	mov r0, #2
	strb r0, [r5, #0xc]
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205EA90: .word unk_0208C48C
_0205EA94: .word gNsbResourceMan
	arm_func_end FUN_0205e890

	arm_func_start FUN_0205ea98
FUN_0205ea98: ; 0x0205EA98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r8, r1
	mov r9, r0
	mov r6, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r8, #0xc]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #2
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x14]
	bl FUN_ov16_020fa964
	cmp r0, #0
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x14]
	mov r4, r6
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _0205EB2C
	ldrb r0, [r8, #0xe]
	mov r1, r6
	cmp r0, #0
	movne r4, #2
	ldr r0, [r8, #0x14]
	mov r2, r4
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	bne _0205EB2C
	mov r0, r9
	mov r1, r8
	bl FUN_0205e804
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205EB2C:
	mov r5, #1
	mov r7, #0
	mov r10, r5
_0205EB38:
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020faa1c
	ldr r0, [r0, #4]
	mov r4, #0
	cmp r0, #0
	moveq r0, r5
	movne r0, r6
	cmp r0, #0
	bne _0205EBC4
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020faa1c
	ldr r1, [r0, #4]
	cmp r1, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	movne r0, r10
	moveq r0, r6
	cmp r0, #0
	bne _0205EBB8
	ldr r0, [r8, #0x14]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020fa838
	cmp r0, #0
	bne _0205EBB8
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020fa8a0
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205EBB8:
	ldr r0, [r8, #0x14]
	mov r1, r7
	bl FUN_ov16_020fa8b8
_0205EBC4:
	add r7, r7, #1
	cmp r7, #5
	blt _0205EB38
	ldrb r0, [r8, #0xf]
	cmp r0, #0
	beq _0205EC30
	ldr r0, [r8]
	ldr r5, [r9, #0x1c]
	sub r1, r0, #1
	mov r6, #0x30
	mla r0, r1, r6, r5
	ldrsh r1, [r0, #6]
	ldr r0, [r8, #0x18]
	bl FUN_ov16_020faf5c
	ldr r1, [r8]
	ldr r0, [r8, #0x18]
	sub r2, r1, #1
	mla r1, r2, r6, r5
	ldr r1, [r1, #8]
	bl FUN_ov16_020fb024
	ldr r1, [r8]
	ldr r0, [r8, #0x18]
	sub r2, r1, #1
	mla r1, r2, r6, r5
	ldrb r1, [r1, #4]
	bl FUN_ov16_020fb040
	strb r4, [r8, #0xf]
_0205EC30:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0205ea98

	arm_func_start FUN_0205ec38
FUN_0205ec38: ; 0x0205EC38
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0205e634
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrsb r1, [r0]
	cmp r1, #0x6d
	cmpne r1, #0x4d
	bne _0205EC7C
	ldrsb r1, [r0, #1]
	cmp r1, #0x6f
	cmpne r1, #0x4f
	beq _0205EC84
_0205EC7C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0205EC84:
	mov r2, #0
_0205EC88:
	add r1, r0, r2
	ldrsb r1, [r1, #2]
	cmp r1, #0x30
	blt _0205ECA0
	cmp r1, #0x39
	ble _0205ECA8
_0205ECA0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0205ECA8:
	add r2, r2, #1
	cmp r2, #4
	blt _0205EC88
	cmp r4, #0
	beq _0205ECC8
	add r0, r0, #2
	bl atoi
	str r0, [r4]
_0205ECC8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205ec38

	arm_func_start _ZN16C3DGameMapObject4initEi
_ZN16C3DGameMapObject4initEi: ; 0x0205ECD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl _ZN16C3DGameMapObject5resetEv
	mov r0, r10
	mov r1, #7
	str r9, [r10, #0xc]
	bl FUN_02052168
	ldr r0, _0205EE14 ; =FUN_020527d4
	mov r4, #8
	str r0, [sp]
	ldr r3, _0205EE18 ; =FUN_0205a3f0
	mov r0, r9
	mov r1, #0x1bc
	mov r2, r4
	bl __cxa_vec_new
	str r0, [r10, #0x10]
	ldr r1, _0205EE1C ; =FUN_020525e8
	ldr r3, _0205EE20 ; =FUN_0205a2f0
	str r1, [sp]
	mov r2, r4
	mov r0, r9
	mov r1, #0x114
	bl __cxa_vec_new
	ldr r4, _0205EE24 ; =gAllocator
	str r0, [r10, #0x18]
	mov r1, r9, lsl #5
	mov r0, r4
	bl _ZN9Allocator8allocateEm
	str r0, [r10, #0x14]
	mov r0, r4
	mov r1, #0x600
	bl _ZN9Allocator8allocateEm
	str r0, [r10, #0x1c]
	ldr r0, [r10, #0x10]
	cmp r0, #0
	ldrne r0, [r10, #0x18]
	cmpne r0, #0
	ldrne r0, [r10, #0x14]
	cmpne r0, #0
	bne _0205ED84
	mov r0, r10
	bl FUN_0205ee28
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205ED84:
	cmp r9, #0
	mov r5, #0
	ble _0205EE0C
	mov r11, r5
	mvn r4, #0
_0205ED98:
	mov r0, #0x1bc
	mul r6, r5, r0
	ldr r0, [r10, #0x10]
	add r0, r0, r6
	bl FUN_ov16_020f9cdc
	mov r0, #0x114
	mul r7, r5, r0
	ldr r0, [r10, #0x18]
	ldr r1, [r0, r7]!
	ldr r1, [r1, #8]
	blx r1
	ldr r1, [r10, #0x18]
	ldr r0, [r10, #0x10]
	add r8, r1, r7
	add r7, r0, r6
	ldr r0, [r10, #0x14]
	mov r1, r11
	add r6, r0, r5, lsl #5
	mov r0, r6
	mov r2, #0x20
	bl MI_CpuFill8
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	add r5, r5, #1
	strb r11, [r6, #0x10]
	cmp r5, r9
	blt _0205ED98
_0205EE0C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205EE14: .word FUN_020527d4
_0205EE18: .word FUN_0205a3f0
_0205EE1C: .word FUN_020525e8
_0205EE20: .word FUN_0205a2f0
_0205EE24: .word gAllocator
	arm_func_end _ZN16C3DGameMapObject4initEi

	arm_func_start FUN_0205ee28
FUN_0205ee28: ; 0x0205EE28
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mvn r1, #0
	bl FUN_020522ec
	mov r0, r4
	bl FUN_020521a0
	mov r0, r4
	bl FUN_0205f61c
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0205EE5C
	ldr r0, _0205EF24 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_0205EE5C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0205EEB4
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205EEA0
	mov r5, #0x114
_0205EE7C:
	ldr r0, [r4, #0x18]
	mla r0, r6, r5, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205EE7C
_0205EEA0:
	ldr r0, [r4, #0x18]
	ldr r3, _0205EF28 ; =FUN_020525e8
	mov r1, #0x114
	mov r2, #8
	bl __cxa_vec_delete
_0205EEB4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0205EF04
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0205EEF0
	mov r5, #0x1bc
_0205EED4:
	ldr r0, [r4, #0x10]
	mla r0, r6, r5, r0
	bl FUN_ov16_020f9d80
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0205EED4
_0205EEF0:
	ldr r0, [r4, #0x10]
	ldr r3, _0205EF2C ; =FUN_020527d4
	mov r1, #0x1bc
	mov r2, #8
	bl __cxa_vec_delete
_0205EF04:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0205EF18
	ldr r0, _0205EF24 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_0205EF18:
	mov r0, r4
	bl _ZN16C3DGameMapObject5resetEv
	ldmfd sp!, {r4, r5, r6, pc}
_0205EF24: .word gAllocator
_0205EF28: .word FUN_020525e8
_0205EF2C: .word FUN_020527d4
	arm_func_end FUN_0205ee28

	arm_func_start FUN_0205ef30
FUN_0205ef30: ; 0x0205EF30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r7, r1
	mov r1, r4
	mov r8, r0
	bl FUN_0205e604
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0205F028 ; =g3DDevice
	mov r6, #0
	ldr r0, [r0]
	mvn r9, #0
	ldrb r0, [r0, #4]
	cmp r0, #0
	movne r7, r4
	mov r4, #3
	b _0205F018
_0205EF74:
	ldr r1, [r5, #8]
	tst r1, #1
	beq _0205F010
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _0205EFA0
	cmp r0, #2
	beq _0205EFB0
	cmp r0, #3
	beq _0205EFE0
	b _0205F010
_0205EFA0:
	mov r0, r8
	mov r1, r5
	bl FUN_0205e890
	b _0205F010
_0205EFB0:
	tst r1, #2
	bne _0205F010
	mov r0, r8
	mov r1, r5
	bl FUN_0205ea98
	cmp r0, #0
	strneb r4, [r5, #0xc]
	bne _0205F010
	mov r0, r8
	mov r1, r5
	bl FUN_0205e804
	b _0205F010
_0205EFE0:
	tst r1, #0x100
	beq _0205F010
	ldr r0, [r5, #0x18]
	mov r1, r7
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x14]
	ldr r1, [r1, #0x24]
	mov r2, r9
	bl FUN_ov16_020fa340
_0205F010:
	add r6, r6, #1
	add r5, r5, #0x20
_0205F018:
	ldr r0, [r8, #0xc]
	cmp r6, r0
	blt _0205EF74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F028: .word g3DDevice
	arm_func_end FUN_0205ef30

	arm_func_start FUN_0205f02c
FUN_0205f02c: ; 0x0205F02C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	strneb r4, [r0, #0x10]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f02c

	arm_func_start FUN_0205f05c
FUN_0205f05c: ; 0x0205F05C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	mov r7, r1
	mov r1, r5
	mov r8, r0
	bl FUN_0205e604
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0xc]
	mov r4, r5
	cmp r0, #0
	ble _0205F0F4
	ldr r9, _0205F12C ; =0x00000101
_0205F090:
	ldr r0, [r6, #8]
	and r0, r0, r9
	cmp r0, r9
	ldreqb r0, [r6, #0xc]
	cmpeq r0, #3
	bne _0205F0E0
	cmp r7, #0
	beq _0205F0BC
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0205F0E0
_0205F0BC:
	cmp r7, #0
	bne _0205F0D0
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0205F0E0
_0205F0D0:
	ldr r0, [r6, #0x14]
	bl FUN_ov16_020fa300
	cmp r0, #0
	addne r5, r5, #1
_0205F0E0:
	ldr r0, [r8, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r6, r6, #0x20
	blt _0205F090
_0205F0F4:
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
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
_0205F12C: .word 0x00000101
	arm_func_end FUN_0205f05c

	arm_func_start FUN_0205f130
FUN_0205f130: ; 0x0205F130
	ldr r12, _0205F13C ; =FUN_0205f05c
	mov r1, #0
	bx r12
_0205F13C: .word FUN_0205f05c
	arm_func_end FUN_0205f130

	arm_func_start FUN_0205f140
FUN_0205f140: ; 0x0205F140
	ldr r12, _0205F14C ; =FUN_0205f05c
	mov r1, #1
	bx r12
_0205F14C: .word FUN_0205f05c
	arm_func_end FUN_0205f140

	arm_func_start FUN_0205f150
FUN_0205f150: ; 0x0205F150
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x9c
	ldr lr, _0205F1C4 ; =0x02090BD4
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r12, r4
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add r4, sp, #0x1c
	ldr r2, [r12, r6, lsl #2]
	ldr r1, _0205F1C8 ; =0x02090D98
	mov r0, r4
	bl STD_TSPrintf
	cmp r5, #0
	mov r1, r4
	mov r0, #0
	beq _0205F1AC
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	b _0205F1B0
_0205F1AC:
	bl _ZN10FileSystem17OpenArchiveDirectEPvPKc
_0205F1B0:
	add r1, r7, r6, lsl #2
	str r0, [r1, #0x20]
	mov r0, #1
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0205F1C4: .word unk_02090BD4
_0205F1C8: .word unk_02090D98
	arm_func_end FUN_0205f150

	arm_func_start FUN_0205f1cc
FUN_0205f1cc: ; 0x0205F1CC
	stmfd sp!, {r3, lr}
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x20]
	bl _ZN10FileSystem14IsArchiveReadyEi
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205f1cc

	arm_func_start FUN_0205f1ec
FUN_0205f1ec: ; 0x0205F1EC
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
	arm_func_end FUN_0205f1ec

	arm_func_start FUN_0205f214
FUN_0205f214: ; 0x0205F214
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl FUN_0205e7bc
	movs r1, r0
	addmi sp, sp, #0xc
	mvnmi r0, #0
	ldmmifd sp!, {r3, r4, r5, r6, pc}
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [sp]
	ldr r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_0205f2b8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205f214

	arm_func_start FUN_0205f26c
FUN_0205f26c: ; 0x0205F26C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_0205e7bc
	movs r1, r0
	addmi sp, sp, #8
	mvnmi r0, #0
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r12, [sp, #0x20]
	mov r0, r7
	mov r2, r6
	mov r3, r5
	stmia sp, {r4, r12}
	bl FUN_0205f3d0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205f26c

	arm_func_start FUN_0205f2b8
FUN_0205f2b8: ; 0x0205F2B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x80
	mov r6, r2
	mov r8, r0
	mov r7, r1
	mov r5, r3
	cmp r6, #4
	bne _0205F2EC
	ldr r1, _0205F3C4 ; =0x02090DA4
	add r0, sp, #0
	mov r2, r5
	bl STD_TSPrintf
	b _0205F2F0
_0205F2EC:
	bl OS_Terminate
_0205F2F0:
	mov r0, r8
	mov r1, r7
	bl FUN_0205e604
	mov r4, r0
	add r1, r8, r6, lsl #2
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x20]
	ldr r3, [sp, #0x9c]
	add r2, sp, #0
	bl FUN_ov16_020f9e9c
	cmp r0, #0
	bne _0205F338
	mov r0, r8
	mov r1, r4
	bl FUN_0205e804
	add sp, sp, #0x80
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205F338:
	ldr r1, _0205F3C8 ; =0x0208F6F0
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x20]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	ldr r1, _0205F3CC ; =0x00001001
	ldr r0, [sp, #0xa0]
	str r1, [r4, #8]
	cmp r0, #0
	ldreq r0, [r4, #8]
	orreq r0, r0, #2
	streq r0, [r4, #8]
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0xc]
	bne _0205F390
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r4, #0xc]
_0205F390:
	mov r0, r8
	mov r1, r7
	bl FUN_0205e5f4
	ldr r1, [sp, #0x98]
	str r0, [r4]
	cmp r6, #4
	strb r1, [r4, #0xe]
	streqh r5, [r4, #4]
	mvnne r0, #0
	strneh r0, [r4, #4]
	ldr r0, [r4]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205F3C4: .word unk_02090DA4
_0205F3C8: .word unk_0208F6F0
_0205F3CC: .word 0x00001001
	arm_func_end FUN_0205f2b8

	arm_func_start FUN_0205f3d0
FUN_0205f3d0: ; 0x0205F3D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r4, #0
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	bl FUN_0205e604
	mov r4, r0
	mov r0, r9
	ldr r12, [r0]
	mov r1, r7
	ldr r12, [r12, #8]
	add r2, sp, #0x14
	add r3, sp, #0x10
	blx r12
	cmp r0, #0
	beq _0205F484
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
	beq _0205F4AC
	mov r0, r9
	ldr r2, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [sp, #8]
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, r0
	ldrb r2, [sp, #0x38]
	ldr r0, [r4, #0x14]
	ldr r3, [sp, #0xc]
	b _0205F4A4
_0205F484:
	ldr r1, [sp, #8]
	mov r0, #1
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r2, [sp, #0x38]
	ldr r0, [r4, #0x14]
	ldr r3, [sp, #0xc]
	mov r1, r7
_0205F4A4:
	bl FUN_ov16_020f9e24
	mov r5, r0
_0205F4AC:
	cmp r5, #0
	bne _0205F4CC
	mov r0, r9
	mov r1, r4
	bl FUN_0205e804
	add sp, sp, #0x18
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F4CC:
	ldr r1, _0205F564 ; =0x0208F6F0
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x20]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	ldrb r0, [sp, #0x3c]
	ldr r1, _0205F568 ; =0x00001001
	str r1, [r4, #8]
	cmp r0, #0
	ldreq r0, [r4, #8]
	orreq r0, r0, #2
	streq r0, [r4, #8]
	ldrb r0, [sp, #0x38]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0xc]
	bne _0205F524
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	movne r0, #2
	strneb r0, [r4, #0xc]
_0205F524:
	mov r0, r9
	mov r1, r8
	bl FUN_0205e5f4
	str r0, [r4]
	add r2, sp, #0x10
	mov r0, r9
	mov r1, r7
	strb r6, [r4, #0xe]
	bl FUN_0205ec38
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	mvneq r0, #0
	strh r0, [r4, #4]
	ldr r0, [r4]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205F564: .word unk_0208F6F0
_0205F568: .word 0x00001001
	arm_func_end FUN_0205f3d0

	arm_func_start FUN_0205f56c
FUN_0205f56c: ; 0x0205F56C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	add r2, sp, #0
	mov r5, r0
	str r4, [sp]
	bl FUN_0205e754
	cmp r0, #0
	movlt r0, r4
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	cmp r1, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r1, #8]
	bic r0, r0, #2
	str r0, [r1, #8]
	ldr r1, [sp]
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_0205e890
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	moveq r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205f56c

	arm_func_start FUN_0205f5ec
FUN_0205f5ec: ; 0x0205F5EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205e754
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205e804
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f5ec

	arm_func_start FUN_0205f61c
FUN_0205f61c: ; 0x0205F61C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r1, r5
	bl FUN_0205e604
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_0205F640:
	mov r0, r6
	mov r1, r4
	bl FUN_0205e804
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x20
	blt _0205F640
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205f61c

	arm_func_start FUN_0205f664
FUN_0205f664: ; 0x0205F664
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r6, r2
	add r2, sp, #4
	str r4, [sp, #4]
	mov r7, r0
	mov r5, r3
	bl FUN_0205e754
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0205F6A8
	ldr r1, [r2, #8]
	tst r1, #1
	beq _0205F6A8
	cmp r0, #0
	bge _0205F6B4
_0205F6A8:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205F6B4:
	ldr r0, _0205F78C ; =gNsbResourceMan
	ldr r1, [r2, #0x1c]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	ldr r0, [sp, #4]
	mov r8, #1
	str r4, [r0, #0x1c]
	ldrsb r0, [r6, #1]
	cmp r0, #0x6f
	subne r8, r4, #1
	cmp r8, #0
	bge _0205F6E8
	bl OS_Terminate
_0205F6E8:
	ldr r0, _0205F78C ; =gNsbResourceMan
	str r5, [sp]
	add r1, r7, r8, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r2, r6
	mov r3, #0xf
	bl FUN_ov16_020fcb70
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r4, #1
	cmp r4, #0
	bne _0205F744
	cmp r5, #0
	ldrne r0, [sp, #4]
	movne r1, #1
	strneb r1, [r0, #0xc]
	ldreq r0, [sp, #4]
	moveq r1, #2
	streqb r1, [r0, #0xc]
_0205F744:
	ldr r0, [sp, #4]
	mvn r1, #0
	strh r1, [r0, #6]
	cmp r4, #0
	bne _0205F778
	add r2, sp, #8
	mov r0, r7
	mov r1, r6
	bl FUN_0205ec38
	cmp r0, #0
	ldrne r1, [sp, #8]
	ldrne r0, [sp, #4]
	strneh r1, [r0, #6]
_0205F778:
	mov r0, #1
	cmp r4, #0
	movne r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0205F78C: .word gNsbResourceMan
	arm_func_end FUN_0205f664

	arm_func_start FUN_0205f790
FUN_0205f790: ; 0x0205F790
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r6, r2
	add r2, sp, #0x10
	str r4, [sp, #0x10]
	mov r7, r0
	mov r5, r3
	bl FUN_0205e754
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0205F7D4
	ldr r1, [r2, #8]
	tst r1, #1
	beq _0205F7D4
	cmp r0, #0
	bge _0205F7E0
_0205F7D4:
	add sp, sp, #0x24
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205F7E0:
	ldr r8, _0205F92C ; =gNsbResourceMan
	ldr r1, [r2, #0x1c]
	ldr r0, [r8]
	bl FUN_ov16_020fd350
	ldr r1, [sp, #0x10]
	mov r0, r7
	str r4, [r1, #0x1c]
	ldr r9, [r0]
	add r2, sp, #0x20
	ldr r9, [r9, #8]
	add r3, sp, #0x1c
	mov r1, r6
	blx r9
	cmp r0, #0
	beq _0205F880
	ldr r1, [sp, #0x20]
	mov r0, #0xc
	mul r0, r1, r0
	ldr r2, [r7, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [r2, r0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	mov r9, #1
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	beq _0205F8B0
	mov r0, r7
	ldr r2, [r0]
	ldr r1, [sp, #0x20]
	ldr r2, [r2, #4]
	blx r2
	ldr r1, [sp, #0x18]
	str r1, [sp]
	ldr r2, [sp, #0x14]
	mov r1, r0
	stmib sp, {r2, r9}
	str r9, [sp, #0xc]
	ldr r0, [r8]
	b _0205F89C
_0205F880:
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r8]
	mov r1, r6
_0205F89C:
	mov r3, r5
	mov r2, #0xf
	bl FUN_ov16_020fcd08
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
_0205F8B0:
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	moveq r4, r1
	cmp r4, #0
	bne _0205F8E4
	cmp r5, #0
	ldrne r0, [sp, #0x10]
	strneb r1, [r0, #0xc]
	ldreq r0, [sp, #0x10]
	moveq r1, #2
	streqb r1, [r0, #0xc]
_0205F8E4:
	ldr r0, [sp, #0x10]
	mvn r1, #0
	strh r1, [r0, #6]
	cmp r4, #0
	bne _0205F918
	add r2, sp, #0x1c
	mov r0, r7
	mov r1, r6
	bl FUN_0205ec38
	cmp r0, #0
	ldrne r1, [sp, #0x1c]
	ldrne r0, [sp, #0x10]
	strneh r1, [r0, #6]
_0205F918:
	mov r0, #1
	cmp r4, #0
	movne r0, #0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0205F92C: .word gNsbResourceMan
	arm_func_end FUN_0205f790

	arm_func_start FUN_0205f930
FUN_0205f930: ; 0x0205F930
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r1, r5
	bl FUN_0205e604
	ldr r1, [r6, #0xc]
	mov r4, r0
	cmp r1, #0
	ble _0205F988
_0205F954:
	ldr r0, [r4, #8]
	tst r0, #1
	beq _0205F974
	mov r0, r6
	mov r1, r4
	bl FUN_0205e890
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0205F974:
	ldr r0, [r6, #0xc]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x20
	blt _0205F954
_0205F988:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205f930

	arm_func_start FUN_0205f990
FUN_0205f990: ; 0x0205F990
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	add r2, sp, #0
	str r3, [sp]
	mov r4, r0
	bl FUN_0205e754
	ldr r1, [sp]
	mov r0, r4
	bl FUN_0205e890
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f990

	arm_func_start FUN_0205f9c0
FUN_0205f9c0: ; 0x0205F9C0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r1, [sp]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r1, #8]
	tst r0, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	cmp r4, #0
	orrne r0, r0, #0x100
	strne r0, [r1, #8]
	biceq r0, r0, #0x100
	streq r0, [r1, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205f9c0

	arm_func_start FUN_0205fa18
FUN_0205fa18: ; 0x0205FA18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #0
	add r2, sp, #0
	str r4, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r4, [r0, #0x14]
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fa18

	arm_func_start FUN_0205fa48
FUN_0205fa48: ; 0x0205FA48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	add r2, sp, #0
	str r4, [sp]
	mov r5, r3
	bl FUN_0205e754
	ldr r1, [sp]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrb r0, [r1, #0x10]
	cmp r0, #4
	subeq r0, r4, #1
	muleq r0, r5, r0
	moveq r5, r0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa4bc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205fa48

	arm_func_start FUN_0205fab4
FUN_0205fab4: ; 0x0205FAB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa4e0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205fab4

	arm_func_start FUN_0205faf8
FUN_0205faf8: ; 0x0205FAF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020fa504
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205faf8

	arm_func_start FUN_0205fb3c
FUN_0205fb3c: ; 0x0205FB3C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, r4
	bl FUN_ov16_020fa528
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fb3c

	arm_func_start FUN_0205fb80
FUN_0205fb80: ; 0x0205FB80
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
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	beq _0205FBE8
	add r0, sp, #4
	bl FUN_ov16_020fa538
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205FBE8:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fb80

	arm_func_start FUN_0205fbfc
FUN_0205fbfc: ; 0x0205FBFC
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
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [r0, #0x14]
	cmpne r1, #0
	beq _0205FC64
	add r0, sp, #4
	bl FUN_ov16_020fa54c
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
_0205FC64:
	add r0, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fbfc

	arm_func_start FUN_0205fc78
FUN_0205fc78: ; 0x0205FC78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r2
	add r2, sp, #0
	str r4, [sp]
	mov r5, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	beq _0205FD10
	ldr r0, [r0, #0x18]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r6
	bl FUN_ov16_020faf80
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #0
	bge _0205FCF4
	ldr r0, [sp]
	sub r1, r4, #1
	ldr r0, [r0, #0x18]
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	mov r5, r4
_0205FCF4:
	ldr r0, [sp]
	mov r1, r5
	ldr r0, [r0, #0x18]
	bl FUN_ov16_020fb040
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0205FD10:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205fc78

	arm_func_start FUN_0205fd1c
FUN_0205fd1c: ; 0x0205FD1C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #0
	add r2, sp, #0
	str r4, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0205FD5C
	bl FUN_ov16_020fb02c
	mov r4, r0
_0205FD5C:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fd1c

	arm_func_start FUN_0205fd68
FUN_0205fd68: ; 0x0205FD68
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0
	mov r5, r2
	add r2, sp, #0
	str r12, [sp]
	mov r4, r3
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [sp, #0x10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020faa4c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205fd68

	arm_func_start FUN_0205fdac
FUN_0205fdac: ; 0x0205FDAC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, r4
	bl FUN_ov16_020faa7c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fdac

	arm_func_start FUN_0205fdf0
FUN_0205fdf0: ; 0x0205FDF0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, r4
	bl FUN_ov16_020faa8c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fdf0

	arm_func_start FUN_0205fe34
FUN_0205fe34: ; 0x0205FE34
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r0, [sp]
	cmp r0, #0
	strneb r4, [r0, #0xd]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fe34

	arm_func_start FUN_0205fe64
FUN_0205fe64: ; 0x0205FE64
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r2
	add r2, sp, #0
	str r3, [sp]
	bl FUN_0205e754
	ldr r1, [sp]
	cmp r1, #0
	ldrne r0, [r1, #0x14]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r1, #8]
	cmp r4, #0
	orrne r0, r0, #0x1000
	strne r0, [r1, #8]
	biceq r0, r0, #0x1000
	streq r0, [r1, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_0205fe64

	arm_func_start FUN_0205feb8
FUN_0205feb8: ; 0x0205FEB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0x600
	ldr r0, [r0, #0x1c]
	mov r5, r1
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205feb8

	arm_func_start FUN_0205fee0
FUN_0205fee0: ; 0x0205FEE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r4, #0x600
	ldr r1, [r5, #0x1c]
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [r5, #0x1c]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205fee0

	arm_func_start FUN_0205ff0c
FUN_0205ff0c: ; 0x0205FF0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0x600
	ldr r0, [r5, #0x1c]
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0x1c]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205ff0c

	arm_func_start FUN_0205ff38
FUN_0205ff38: ; 0x0205FF38
	stmfd sp!, {r4, lr}
	ldr r1, _0205FF5C ; =0x02090BF8
	mov r4, r0
	str r1, [r4]
	bl FUN_0205ee28
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205FF5C: .word _ZTV16C3DGameMapObject+0x8
	arm_func_end FUN_0205ff38

	arm_func_start FUN_0205ff60
FUN_0205ff60: ; 0x0205FF60
	stmfd sp!, {r4, lr}
	ldr r1, _0205FF7C ; =0x02090BF8
	mov r4, r0
	str r1, [r4]
	bl FUN_0205ee28
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205FF7C: .word _ZTV16C3DGameMapObject+0x8
	arm_func_end FUN_0205ff60

	.rodata
	.global unk_0208C48C
unk_0208C48C:
	.byte 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00

	.data
	.global unk_02090B3C
unk_02090B3C:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_02090B54
unk_02090B54:
	.asciz "pac/mo_pac"
	.balign 4, 0
	.global unk_02090B60
unk_02090B60:
	.asciz "obj/mo_nsbmd"
	.balign 4, 0
	.global unk_02090B70
unk_02090B70:
	.asciz "_pac/bal_pac.pkh"
	.balign 4, 0
	.global unk_02090B84
unk_02090B84:
	.asciz "_pac/gol_pac.pkh"
	.balign 4, 0
	.global unk_02090B98
unk_02090B98:
	.asciz "_obj/mf_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090BAC
unk_02090BAC:
	.asciz "_obj/gol_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090BC0
unk_02090BC0:
	.asciz "_obj/ball_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090BD4
unk_02090BD4:
	.word unk_02090B70
	.word unk_02090B54
	.word unk_02090B84
	.word unk_02090BC0
	.word unk_02090B60
	.word unk_02090BAC
	.word unk_02090B98
	.global _ZTV16C3DGameMapObject
_ZTV16C3DGameMapObject:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_0205e2d8
	.word FUN_0205e34c
	.word FUN_0205e3c0
	.word FUN_020523ac
	.word FUN_020523fc
	.word FUN_0205ff60
	.word FUN_0205ff38
	.global unk_02090C14
unk_02090C14:
	.asciz "/data_iz/model/pac/bal_pac.pkh"
	.balign 4, 0
	.global unk_02090C34
unk_02090C34:
	.asciz "/data_iz/model/pac/gol_pac.pkh"
	.balign 4, 0
	.global unk_02090C54
unk_02090C54:
	.asciz "/data_iz/model/obj/ball_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090C78
unk_02090C78:
	.asciz "/data_iz/model/obj/gol_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090C9C
unk_02090C9C:
	.asciz "/data_iz/model/obj/mf_nsbmd.pkh"
	.balign 4, 0
	.global unk_02090CBC
unk_02090CBC:
	.asciz "/data_iz/model/pac/bal_pac.pkb"
	.balign 4, 0
	.global unk_02090CDC
unk_02090CDC:
	.asciz "/data_iz/model/pac/gol_pac.pkb"
	.balign 4, 0
	.global unk_02090CFC
unk_02090CFC:
	.asciz "/data_iz/model/obj/ball_nsbmd.pkb"
	.balign 4, 0
	.global unk_02090D20
unk_02090D20:
	.asciz "/data_iz/model/obj/gol_nsbmd.pkb"
	.balign 4, 0
	.global unk_02090D44
unk_02090D44:
	.asciz "/data_iz/model/obj/mf_nsbmd.pkb"
	.balign 4, 0
	.global unk_02090D64
unk_02090D64:
	.asciz ".pac_"
	.balign 4, 0
	.global unk_02090D6C
unk_02090D6C:
	.asciz "ball"
	.balign 4, 0
	.global unk_02090D74
unk_02090D74:
	.asciz "bal"
	.balign 4, 0
	.global unk_02090D78
unk_02090D78:
	.asciz "mo"
	.balign 4, 0
	.global unk_02090D7C
unk_02090D7C:
	.asciz "gol"
	.balign 4, 0
	.global unk_02090D80
unk_02090D80:
	.asciz "mf"
	.balign 4, 0
	.global unk_02090D84
unk_02090D84:
	.asciz "%s%04d"
	.balign 4, 0
	.global unk_02090D8C
unk_02090D8C:
	.asciz "%s%06d%02d"
	.balign 4, 0
	.global unk_02090D98
unk_02090D98:
	.asciz "model/%s"
	.balign 4, 0
	.global unk_02090DA4
unk_02090DA4:
	.asciz "mo%04d.nsbmd_"
	.balign 4, 0


	.include "/macros/function.inc"
	.include "/include/overlay44.inc"

	.text
	arm_func_start FUN_ov44_02119f00
FUN_ov44_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, #0
	ldr r0, _0211A0E8 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204da5c
	mov r0, #0x4000000
	ldr r1, [r0]
	ldr r0, _0211A0EC ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #8]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A0F0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A0F4 ; =0x0209A0AC
	bl FUN_ov16_020efa04
	add r0, r5, #0x14
	mov r1, r4
	mov r2, #0x60
	bl MI_CpuFill8
	str r4, [r5, #0x74]
	str r4, [r5, #0x78]
	str r4, [r5, #0x7c]
	mov r6, #1
	str r6, [r5, #0x14]
	add r0, r5, #0x9000
	str r4, [r0, #0x36c]
	str r4, [r0, #0x674]
	strb r4, [r0, #0x370]
	str r4, [r0, #0x368]
	str r4, [r0, #0x53c]
	mov r0, r5
	bl FUN_ov44_0211c28c
	add r0, r5, #0x9000
	str r4, [r0, #0x394]
	mov r0, r5
	mov r1, r4
	bl FUN_ov44_0211c3ac
	mov r0, r5
	bl FUN_ov44_0211c624
	mov r0, r5
	bl FUN_ov44_0211d4ec
	mov r0, r5
	bl FUN_ov44_0211d63c
	mov r0, r5
	bl FUN_ov44_0211d870
	mov r0, r5
	bl FUN_ov44_0211feb4
	mov r0, r5
	mov r1, r4
	bl FUN_ov44_02120704
	mov r1, r6
	mov r0, r5
	bl FUN_ov44_02120704
	mov r0, r5
	mov r1, #2
	bl FUN_ov44_02120704
	mov r0, r5
	mov r1, #4
	bl FUN_ov44_02120704
	mov r0, r5
	mov r1, #3
	bl FUN_ov44_02120704
	mov r0, r5
	mov r1, #5
	bl FUN_ov44_02120704
	add r0, r5, #0x9000
	str r4, [r0, #0x670]
	str r4, [r0, #0x67c]
	str r4, [r0, #0x680]
	str r4, [r0, #0x684]
	str r4, [r0, #0x688]
	str r4, [r0, #0x68c]
	mov r0, r5
	bl FUN_ov44_02121774
	mov r0, r5
	bl FUN_ov44_0211ba44
	ldr r1, _0211A0F8 ; =0x0209A454
	ldrb r0, [r1, #0x34]
	cmp r0, #0
	beq _0211A090
	ldrb r3, [r1, #0x35]
	add r0, r5, #0x9000
	str r3, [r0, #0x53c]
	ldrb r1, [r1, #0x36]
	cmp r3, #0
	str r1, [r0, #0x538]
	beq _0211A090
	mov r0, r5
	mov r2, r4
	and r1, r3, #0xff
	bl FUN_ov44_02120b9c
_0211A090:
	ldr r0, _0211A0F8 ; =0x0209A454
	ldrb r1, [r0, #0x37]
	cmp r1, #0
	beq _0211A0BC
	mov r1, #1
	str r1, [sp]
	ldrb r2, [r0, #0x37]
	mov r1, #0
	mov r0, r5
	mov r3, r1
	bl FUN_ov44_02120798
_0211A0BC:
	ldr r0, _0211A0F8 ; =0x0209A454
	mov r1, #1
	strb r1, [r0, #0x34]
	mov r1, #0
	add r0, r5, #0x9000
	str r1, [r5, #0xc]
	str r1, [r5, #0x10]
	str r1, [r0, #0x6c8]
	strb r1, [r0, #0x6cc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A0E8: .word unk_0209BA20
_0211A0EC: .word unk_02099EB4
_0211A0F0: .word unk_02099ED4
_0211A0F4: .word unk_0209A0AC
_0211A0F8: .word unk_0209A454
	arm_func_end FUN_ov44_02119f00

	arm_func_start FUN_ov44_0211a0fc
FUN_ov44_0211a0fc: ; 0x0211A0FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r1, _0211A27C ; =0x02099ED8
	mov r8, r0
	mov r7, #0
	ldr r0, [r1]
	mov r1, r7
	bl FUN_020552dc
	mov r6, r0
	bl FUN_0205430c
	add r5, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r3, [r8, #8]
	bic r1, r1, #0x1f00
	orr r1, r1, r3, lsl #8
	ldr r0, _0211A280 ; =0x02099EB4
	str r1, [r2]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A284 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r8
	bl FUN_ov44_0211f734
	mov r0, r8
	bl FUN_ov44_0211f4a4
	mov r0, r8
	bl FUN_ov44_0211edcc
	mov r0, r8
	bl FUN_ov44_0211eb48
	mov r0, r8
	bl FUN_ov44_0211d98c
	mov r0, r8
	bl FUN_ov44_0211d88c
	mov r0, r8
	bl FUN_ov44_0211e940
	mov r0, r8
	bl FUN_ov44_0211e83c
	mov r0, r8
	bl FUN_ov44_0211fee0
	mov r0, r8
	bl FUN_ov44_0211c66c
	mov r0, r8
	mov r1, r7
	bl FUN_ov44_0211c3dc
	mov r4, #2
	mov r0, r8
	mov r1, r4
	bl FUN_ov44_0211c2a8
	ldr r0, _0211A288 ; =0x02099F44
	add r1, r8, #0x9000
	ldr r1, [r1, #0x53c]
	ldr r0, [r0]
	and r1, r1, #0xff
	bl FUN_ov131_0213acfc
	mov r0, r8
	mov r1, r7
	mov r2, r7
	bl FUN_ov44_02120b9c
	mov r0, r8
	bl FUN_ov44_0212117c
	mov r0, r6
	ldmia r5, {r1, r2, r3}
	bl FUN_020542c8
	ldr r5, _0211A28C ; =0x0209BA20
	mov r0, r5
	bl FUN_0204ce50
	mov r0, r5
	mov r1, r7
	bl FUN_0204d0b4
	mov r0, r5
	mov r1, r4
	bl FUN_0204d0b4
	mov r5, #1
	mov r4, r7
	b _0211A26C
_0211A238:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0211A260
	mov r1, r5
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_0206d9cc
_0211A260:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
_0211A26C:
	cmp r7, #0x64
	blt _0211A238
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A27C: .word unk_02099ED8
_0211A280: .word unk_02099EB4
_0211A284: .word unk_02099ED4
_0211A288: .word unk_02099F44
_0211A28C: .word unk_0209BA20
	arm_func_end FUN_ov44_0211a0fc

	arm_func_start FUN_ov44_0211a290
FUN_ov44_0211a290: ; 0x0211A290
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211A448 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x9000
	ldr r1, [r0, #0x530]
	cmp r1, #0
	ldreq r1, [r0, #0x58c]
	cmpeq r1, #0
	ldreq r0, [r0, #0x52c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211A30C
_0211A2F4:
	mla r1, r4, r0, r6
	add r1, r1, #0x9000
	ldr r1, [r1, #0x5b4]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211A30C:
	cmp r4, #6
	blt _0211A2F4
	ldr r0, _0211A44C ; =0x0209A0F4
	ldr r4, _0211A450 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	bne _0211A35C
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211A35C:
	ldr r0, [r6, #0x10]
	cmp r0, #9
	bne _0211A390
	tst r7, #0x20
	beq _0211A37C
	mov r0, r6
	bl FUN_ov44_0211aad0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A37C:
	tst r7, #0x10
	beq _0211A390
	mov r0, r6
	bl FUN_ov44_0211abe4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A390:
	tst r5, #1
	beq _0211A3A4
	mov r0, r6
	bl FUN_ov44_0211a454
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3A4:
	tst r5, #0x800
	beq _0211A3B8
	mov r0, r6
	bl FUN_ov44_0211a704
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3B8:
	tst r5, #2
	beq _0211A3CC
	mov r0, r6
	bl FUN_ov44_0211a5b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3CC:
	tst r5, #0x400
	beq _0211A3E0
	mov r0, r6
	bl FUN_ov44_0211a75c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3E0:
	tst r5, #0x200
	beq _0211A3F4
	mov r0, r6
	bl FUN_ov44_0211a7b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3F4:
	tst r5, #0x100
	beq _0211A408
	mov r0, r6
	bl FUN_ov44_0211a8b4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A408:
	tst r5, #0x20
	beq _0211A41C
	mov r0, r6
	bl FUN_ov44_0211aad0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A41C:
	tst r5, #0x10
	beq _0211A430
	mov r0, r6
	bl FUN_ov44_0211abe4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A430:
	tst r7, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov44_0211ad00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A448: .word unk_02099ED4
_0211A44C: .word unk_0209A0F4
_0211A450: .word unk_02099EB4
	arm_func_end FUN_ov44_0211a290

	arm_func_start FUN_ov44_0211a454
FUN_ov44_0211a454: ; 0x0211A454
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x10]
	cmp r2, #0
	bne _0211A490
	add r0, r4, #0x9000
	ldr r1, [r0, #0x538]
	cmp r1, #0
	ldreq r0, [r0, #0x53c]
	cmpeq r0, #0
	beq _0211A490
	ldr r0, _0211A5AC ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A490:
	cmp r2, #0
	beq _0211A4A4
	cmp r2, #5
	beq _0211A4B0
	b _0211A4BC
_0211A4A4:
	mov r0, r4
	bl FUN_ov44_02121920
	ldmfd sp!, {r4, pc}
_0211A4B0:
	mov r0, r4
	bl FUN_ov44_02121b40
	ldmfd sp!, {r4, pc}
_0211A4BC:
	cmp r2, #1
	bne _0211A518
	add r0, r4, #0x9000
	ldr r1, [r0, #0x5bc]
	cmp r1, #1
	bne _0211A4F0
	ldr r0, [r0, #0x684]
	cmp r0, #0
	beq _0211A4F0
	ldr r0, _0211A5AC ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A4F0:
	cmp r1, #2
	bne _0211A518
	add r0, r4, #0x9000
	ldr r0, [r0, #0x678]
	cmp r0, #0
	beq _0211A518
	ldr r0, _0211A5AC ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A518:
	cmp r2, #9
	bne _0211A550
	mov r0, r4
	bl FUN_ov44_0211fcc0
	mov r0, r4
	mov r1, #0
	bl FUN_ov44_0211ba34
	mov r0, r4
	mov r1, #0x38
	bl FUN_ov44_0211af94
	ldr r0, _0211A5AC ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A550:
	cmp r2, #0
	cmpne r2, #7
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	sub r3, r2, #1
	add r0, r4, #0x9000
	mov r2, #1
	str r3, [r0, #0x590]
	str r2, [r0, #0x58c]
	cmp r1, #4
	bne _0211A59C
	ldr r1, [r0, #0x628]
	cmp r1, #0
	bne _0211A598
	ldr r0, _0211A5AC ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A598:
	strb r2, [r0, #0x6cc]
_0211A59C:
	ldr r0, _0211A5AC ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A5AC: .word gL5Sound
	arm_func_end FUN_ov44_0211a454

	arm_func_start FUN_ov44_0211a5b0
FUN_ov44_0211a5b0: ; 0x0211A5B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211A6E8
_0211A5C8: ; jump table
	b _0211A5F0 ; case 0
	b _0211A63C ; case 1
	b _0211A63C ; case 2
	b _0211A63C ; case 3
	b _0211A674 ; case 4
	b _0211A65C ; case 5
	b _0211A6E4 ; case 6
	b _0211A6E8 ; case 7
	b _0211A6E4 ; case 8
	b _0211A6DC ; case 9
_0211A5F0:
	add r1, r5, #0x9000
	ldr r1, [r1, #0x53c]
	cmp r1, #0
	bne _0211A61C
	mov r1, #0x14
	bl FUN_ov44_0211af94
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl FUN_ov44_0211d450
	b _0211A6E8
_0211A61C:
	mov r1, #0x37
	bl FUN_ov44_0211af94
	add r1, r5, #0x9000
	mov r2, #1
	mov r0, r5
	str r2, [r1, #0x6c8]
	bl FUN_ov44_0211ae04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A63C:
	mov r1, #0x15
	bl FUN_ov44_0211af94
	ldr r1, [r5, #0x10]
	ldr r0, _0211A6F8 ; =0x02121F84
	sub r1, r1, #1
	ldr r1, [r0, r1, lsl #2]
	mov r0, r5
	b _0211A66C
_0211A65C:
	mov r1, #0x15
_0211A660:
	bl FUN_ov44_0211af94
	mov r0, r5
	mov r1, #0
_0211A66C:
	bl FUN_ov44_0211ba34
	b _0211A6E8
_0211A674:
	add r0, r5, #0x9000
	ldr r6, _0211A6FC ; =0x02099F38
	mov r8, #2
	ldr r9, [r0, #0x474]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_02113f7c
	add r0, r5, #0x9000
	mov r4, #0
	str r4, [r0, #0x628]
	mov r7, #1
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r3, r8
	mov r2, #3
	bl FUN_ov16_02113ec0
	add r0, r5, #0x9000
	ldr r1, [r5, #0x10]
	str r7, [r0, #0x58c]
	sub r1, r1, #1
	str r1, [r0, #0x590]
	str r4, [r0, #0x628]
	b _0211A6E8
_0211A6DC:
	mov r1, #0x39
	b _0211A660
_0211A6E4:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A6E8:
	ldr r0, _0211A700 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A6F8: .word ov44_02121F84
_0211A6FC: .word unk_02099F38
_0211A700: .word gL5Sound
	arm_func_end FUN_ov44_0211a5b0

	arm_func_start FUN_ov44_0211a704
FUN_ov44_0211a704: ; 0x0211A704
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	cmp r1, #5
	bne _0211A728
	ldr r0, _0211A758 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A728:
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #1
	mov r1, r4
	bl FUN_ov44_0211ba34
	mov r0, r5
	mov r1, #0xc
	bl FUN_ov44_0211af94
	ldr r0, _0211A758 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A758: .word gL5Sound
	arm_func_end FUN_ov44_0211a704

	arm_func_start FUN_ov44_0211a75c
FUN_ov44_0211a75c: ; 0x0211A75C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #4
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov44_02120afc
	cmp r0, #0
	bne _0211A78C
	ldr r0, _0211A7B4 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A78C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #5
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211A7B4 ; =gL5Sound
	add r2, r4, #0x9000
	mov r1, #1
	str r1, [r2, #0x530]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A7B4: .word gL5Sound
	arm_func_end FUN_ov44_0211a75c

	arm_func_start FUN_ov44_0211a7b8
FUN_ov44_0211a7b8: ; 0x0211A7B8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _0211A880
	add r1, r4, #0x9000
	ldr r3, [r1, #0x538]
	ldr r1, _0211A8A8 ; =0x02121F70
	mov r2, r3, lsl #1
	ldr lr, [r1]
	ldr r12, [r1, #4]
	add r1, r3, #3
	add r3, r2, #1
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r1, [sp]
	bl FUN_ov44_0211afac
	add r3, r4, #0x9000
	ldr r2, [r3, #0x538]
	ldr r0, [sp, #8]
	ldr r1, _0211A8AC ; =0x92492493
	add r12, r2, r0
	smull r0, lr, r1, r12
	add lr, r12, lr
	mov r0, r12, lsr #0x1f
	add lr, r0, lr, asr #2
	mov r2, #7
	smull r0, r1, r2, lr
	sub lr, r12, r0
	mov r0, r4
	mov r1, #0xa
	str lr, [r3, #0x538]
	bl FUN_ov44_0211af94
	add r0, r4, #0x9000
	ldr r2, [r0, #0x538]
	mov r0, r4
	add r1, r2, #3
	mov r3, r2, lsl #1
	add r2, r3, #1
	add r3, r3, #1
	str r1, [sp]
	bl FUN_ov44_0211afac
	add r0, r4, #0x9000
	mov r1, #1
	str r1, [r0, #0x52c]
	ldr r0, _0211A8B0 ; =gL5Sound
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A880:
	cmp r1, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, pc}
	mov r1, #0xa
	bl FUN_ov44_0211af94
	ldr r0, _0211A8B0 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A8A8: .word ov44_02121F70
_0211A8AC: .word 0x92492493
_0211A8B0: .word gL5Sound
	arm_func_end FUN_ov44_0211a7b8

	arm_func_start FUN_ov44_0211a8b4
FUN_ov44_0211a8b4: ; 0x0211A8B4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _0211A97C
	add r1, r4, #0x9000
	ldr r3, [r1, #0x538]
	ldr r1, _0211A9A4 ; =0x02121F60
	mov r2, r3, lsl #1
	ldr lr, [r1]
	ldr r12, [r1, #4]
	add r1, r3, #3
	add r3, r2, #1
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r1, [sp]
	bl FUN_ov44_0211afac
	add r3, r4, #0x9000
	ldr r2, [r3, #0x538]
	ldr r0, [sp, #4]
	ldr r1, _0211A9A8 ; =0x92492493
	add r12, r2, r0
	smull r0, lr, r1, r12
	add lr, r12, lr
	mov r0, r12, lsr #0x1f
	add lr, r0, lr, asr #2
	mov r2, #7
	smull r0, r1, r2, lr
	sub lr, r12, r0
	mov r0, r4
	mov r1, #0xb
	str lr, [r3, #0x538]
	bl FUN_ov44_0211af94
	add r0, r4, #0x9000
	ldr r2, [r0, #0x538]
	mov r0, r4
	add r1, r2, #3
	mov r3, r2, lsl #1
	add r2, r3, #1
	add r3, r3, #1
	str r1, [sp]
	bl FUN_ov44_0211afac
	add r0, r4, #0x9000
	mov r1, #1
	str r1, [r0, #0x52c]
	ldr r0, _0211A9AC ; =gL5Sound
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A97C:
	cmp r1, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, pc}
	mov r1, #0xb
	bl FUN_ov44_0211af94
	ldr r0, _0211A9AC ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211A9A4: .word ov44_02121F60
_0211A9A8: .word 0x92492493
_0211A9AC: .word gL5Sound
	arm_func_end FUN_ov44_0211a8b4

	arm_func_start FUN_ov44_0211a9b0
FUN_ov44_0211a9b0: ; 0x0211A9B0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r2, [r6, #0x10]
	mov r5, r1
	cmp r2, #0
	bne _0211AAA4
	add r1, r6, #0x9000
	ldr r3, [r1, #0x538]
	ldr r1, _0211AAC4 ; =0x02121F40
	mov r2, r3, lsl #1
	ldr r12, [r1]
	ldr r4, [r1, #4]
	add r1, r3, #3
	str r4, [sp, #8]
	add r3, r2, #1
	str r12, [sp, #4]
	str r1, [sp]
	mov r4, r5, lsr #9
	bl FUN_ov44_0211afac
	cmp r5, #0x200
	cmpne r5, #0x100
	subne r1, r5, #3
	addne r0, r6, #0x9000
	strne r1, [r0, #0x538]
	bne _0211AA64
	add r0, sp, #4
	add r3, r6, #0x9000
	ldr r2, [r3, #0x538]
	ldr r0, [r0, r4, lsl #2]
	ldr r1, _0211AAC8 ; =0x92492493
	add r5, r2, r0
	smull r0, r12, r1, r5
	rsb r0, r4, #0xb
	mov r4, r0, lsl #0x10
	add r12, r5, r12
	mov r0, r5, lsr #0x1f
	add r12, r0, r12, asr #2
	mov r2, #7
	smull r0, r1, r2, r12
	sub r12, r5, r0
	mov r0, r6
	mov r1, r4, lsr #0x10
	str r12, [r3, #0x538]
	bl FUN_ov44_0211af94
_0211AA64:
	add r0, r6, #0x9000
	ldr r1, [r0, #0x538]
	mov r0, r6
	mov r3, r1, lsl #1
	add r1, r1, #3
	add r2, r3, #1
	add r3, r3, #1
	str r1, [sp]
	bl FUN_ov44_0211afac
	ldr r0, _0211AACC ; =gL5Sound
	add r2, r6, #0x9000
	mov r1, #1
	str r1, [r2, #0x52c]
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AAA4:
	cmp r2, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211AACC ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AAC4: .word ov44_02121F40
_0211AAC8: .word 0x92492493
_0211AACC: .word gL5Sound
	arm_func_end FUN_ov44_0211a9b0

	arm_func_start FUN_ov44_0211aad0
FUN_ov44_0211aad0: ; 0x0211AAD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _0211AB20
	add r1, r4, #0x9000
	ldr r1, [r1, #0x598]
	subs r5, r1, #8
	bpl _0211AAFC
	bl FUN_ov44_0211a7b8
	add r5, r5, #0x10
_0211AAFC:
	mov r1, #0
	mov r0, r4
	mov r2, r5
	mov r3, #1
	str r1, [sp]
	bl FUN_ov44_02120798
	mov r0, r4
	bl FUN_ov44_0211b068
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB20:
	cmp r1, #5
	bne _0211AB5C
	add r1, r4, #0x9000
	ldr r2, [r1, #0x598]
	mov r1, #0
	add r2, r2, #8
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	mov r3, #1
	str r1, [sp]
	bl FUN_ov44_02120798
	mov r0, r4
	bl FUN_ov44_0211b068
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB5C:
	cmp r1, #4
	bne _0211ABC8
	add r0, r4, #0x9000
	ldr r1, [r0, #0x628]
	cmp r1, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211ABDC ; =0x02099F38
	ldr r7, [r0, #0x474]
	mov r6, #2
	ldr r0, [r5]
	mov r1, r7
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113f7c
	add r0, r4, #0x9000
	mov r1, #1
	str r1, [r0, #0x628]
	str r1, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, _0211ABE0 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABC8:
	cmp r1, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	bl FUN_ov44_0211fc0c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABDC: .word unk_02099F38
_0211ABE0: .word gL5Sound
	arm_func_end FUN_ov44_0211aad0

	arm_func_start FUN_ov44_0211abe4
FUN_ov44_0211abe4: ; 0x0211ABE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _0211AC38
	add r1, r4, #0x9000
	ldr r1, [r1, #0x598]
	add r5, r1, #8
	cmp r5, #0x10
	blt _0211AC14
	bl FUN_ov44_0211a8b4
	sub r5, r5, #0x10
_0211AC14:
	mov r1, #0
	mov r0, r4
	mov r2, r5
	mov r3, #1
	str r1, [sp]
	bl FUN_ov44_02120798
	mov r0, r4
	bl FUN_ov44_0211b068
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC38:
	cmp r1, #5
	bne _0211AC74
	add r1, r4, #0x9000
	ldr r2, [r1, #0x598]
	mov r1, #0
	add r2, r2, #8
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	mov r3, #1
	str r1, [sp]
	bl FUN_ov44_02120798
	mov r0, r4
	bl FUN_ov44_0211b068
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC74:
	cmp r1, #4
	bne _0211ACE4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x628]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211ACF8 ; =0x02099F38
	ldr r7, [r0, #0x474]
	mov r6, #2
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02113f7c
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x628]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113ec0
	ldr r0, _0211ACFC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ACE4:
	cmp r1, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #1
	bl FUN_ov44_0211fc0c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ACF8: .word unk_02099F38
_0211ACFC: .word gL5Sound
	arm_func_end FUN_ov44_0211abe4

	arm_func_start FUN_ov44_0211ad00
FUN_ov44_0211ad00: ; 0x0211AD00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	mov r6, r0
	ldr r5, [r6, #0x10]
	mov r2, #1
	mov r0, r2, lsl r5
	tst r0, #0x350
	addne sp, sp, #0x34
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	and r1, r1, #0xc0
	mov r0, r1, asr #6
	add r0, r1, r0, lsr #25
	cmp r5, #0
	mov r4, r0, asr #7
	beq _0211AD4C
	cmp r5, #1
	beq _0211AD54
	cmp r5, #5
	bne _0211AD58
_0211AD4C:
	mov r5, #0
	b _0211AD58
_0211AD54:
	mov r5, r2
_0211AD58:
	ldr r8, _0211ADFC ; =0x021220AC
	add lr, sp, #0x14
	mov r7, lr
	ldmia r8!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	mov r12, #0x24
	mla r12, r5, r12, r6
	ldmia r8, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add r0, r7, r5, lsl #3
	ldr r1, _0211AE00 ; =0x02122014
	ldr lr, [r0, r4, lsl #2]
	add r7, sp, #4
	ldmia r1, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r12, r12, #0x9000
	ldr r8, [r12, #0x598]
	ldr r1, [r7, r5, lsl #2]
	add r0, r8, lr
	bl _s32_div_f
	cmp r4, #0
	mov r7, r1
	cmpeq r8, #0
	bne _0211ADC4
	mov r0, r6
	bl FUN_ov44_0211a7b8
	b _0211ADD8
_0211ADC4:
	cmp r4, #1
	cmpeq r8, #0xf
	bne _0211ADD8
	mov r0, r6
	bl FUN_ov44_0211a8b4
_0211ADD8:
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #1
	str r4, [sp]
	bl FUN_ov44_02120798
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211ADFC: .word ov44_021220AC
_0211AE00: .word ov44_02122014
	arm_func_end FUN_ov44_0211ad00

	arm_func_start FUN_ov44_0211ae04
FUN_ov44_0211ae04: ; 0x0211AE04
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #1
	mov r2, r4
	mov r1, #0
	mov r5, r0
	bl FUN_ov44_02120b9c
	ldr r0, _0211AE34 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	add r0, r5, #0x9000
	str r4, [r0, #0x52c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE34: .word gL5Sound
	arm_func_end FUN_ov44_0211ae04

	arm_func_start FUN_ov44_0211ae38
FUN_ov44_0211ae38: ; 0x0211AE38
	bx lr
	arm_func_end FUN_ov44_0211ae38

	arm_func_start FUN_ov44_0211ae3c
FUN_ov44_0211ae3c: ; 0x0211AE3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211AF8C ; =0x02099F38
	mov r9, r0
	ldr r0, [r4]
	mov r7, r2
	mov r11, #2
	mov r8, r1
	mov r1, r11
	mov r2, #1
	mov r6, r3
	mov r10, #0
	mov r5, #0x64
	bl FUN_ov16_02112724
	add r1, r9, r8, lsl #2
	add r2, r9, r7, lsl #2
	add r1, r1, #0x9000
	str r0, [r1, #0x430]
	add r1, r2, #0x9000
	ldr r1, [r1, #0x398]
	mov r7, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r4]
	mov r3, r6
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r7
	mov r2, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #1
	mov r1, r7
	mov r3, r11
	bl FUN_ov16_02113ec0
	ldr r0, [sp, #0x38]
	sub r0, r0, #0x38
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211AF48
_0211AF34: ; jump table
	b _0211AF44 ; case 0
	b _0211AF44 ; case 1
	b _0211AF44 ; case 2
	b _0211AF44 ; case 3
_0211AF44:
	add r5, r11, #0x260
_0211AF48:
	mov r1, #1
	ldr r2, [sp, #0x38]
	ldr r0, _0211AF90 ; =0x02099EB4
	stmia sp, {r1, r5}
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r7
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0, #0x10]
	strneb r1, [r0, #0xf]
	strneh r1, [r0, #0xc]
	strneb r1, [r0, #0x11]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF8C: .word unk_02099F38
_0211AF90: .word unk_02099EB4
	arm_func_end FUN_ov44_0211ae3c

	arm_func_start FUN_ov44_0211af94
FUN_ov44_0211af94: ; 0x0211AF94
	ldr r0, _0211AFA4 ; =0x02099EB4
	ldr r12, _0211AFA8 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211AFA4: .word unk_02099EB4
_0211AFA8: .word FUN_ov16_0210efac
	arm_func_end FUN_ov44_0211af94

	arm_func_start FUN_ov44_0211afac
FUN_ov44_0211afac: ; 0x0211AFAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211B060 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, r8, lsl #2
	ldr r0, _0211B064 ; =0x02099F38
	str r5, [sp]
	add r1, r1, #0x9000
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x430]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211B060: .word unk_02099EB4
_0211B064: .word unk_02099F38
	arm_func_end FUN_ov44_0211afac

	arm_func_start FUN_ov44_0211b068
FUN_ov44_0211b068: ; 0x0211B068
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r2, _0211B1FC ; =0x02121F50
	mov r7, r0
	ldr r5, [r2]
	ldr r4, [r2, #4]
	ldr r1, _0211B200 ; =0x02121F58
	ldr r3, [r7, #0x10]
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #4]
	str r1, [sp, #8]
	cmp r3, #1
	mov r4, #0x35
	add r6, sp, #0xc
	add r5, sp, #4
	bne _0211B128
	add r0, r7, #0x9000
	ldr r1, [r0, #0x5bc]
	cmp r1, #1
	bne _0211B0D0
	ldr r0, [r0, #0x684]
	cmp r0, #0
	bne _0211B0E8
_0211B0D0:
	cmp r1, #2
	bne _0211B108
	add r0, r7, #0x9000
	ldr r0, [r0, #0x678]
	cmp r0, #0
	beq _0211B108
_0211B0E8:
	mov r2, #5
	mov r0, r7
	mov r3, r2
	mov r1, #0x14
	str r4, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B108:
	mov r0, r7
	mov r1, #0x14
	mov r2, #3
	mov r3, #4
	str r4, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B128:
	sub r1, r3, #2
	cmp r1, #1
	bhi _0211B150
	mov r1, #0x14
	mov r2, #3
	mov r3, #4
	str r4, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B150:
	add r1, r7, #0x9000
	ldr r2, [r1, #0x538]
	cmp r2, #1
	bge _0211B16C
	ldr r1, [r1, #0x53c]
	cmp r1, #0
	beq _0211B18C
_0211B16C:
	mov r2, #2
	mov r0, r7
	mov r3, r2
	mov r1, #0x14
	str r4, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B18C:
	cmp r3, #0
	beq _0211B1A4
	cmp r3, #5
	beq _0211B1CC
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B1A4:
	mov r1, #0
	bl FUN_ov44_021219b8
	ldr r2, [r6, r0, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	mov r0, r7
	mov r1, #0x14
	str r4, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B1CC:
	mov r1, #0
	bl FUN_ov44_02121c08
	ldr r2, [r6, r0, lsl #2]
	ldr r1, [r5, r0, lsl #2]
	mov r0, r7
	add r3, r1, #3
	add r2, r2, #3
	mov r1, #0x14
	str r4, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B1FC: .word ov44_02121F50
_0211B200: .word ov44_02121F58
	arm_func_end FUN_ov44_0211b068

	arm_func_start FUN_ov44_0211b204
FUN_ov44_0211b204: ; 0x0211B204
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B364 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x9000
	ldr r1, [r0, #0x530]
	cmp r1, #0
	ldreq r1, [r0, #0x58c]
	cmpeq r1, #0
	ldreq r0, [r0, #0x52c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211B280
_0211B268:
	mla r1, r4, r0, r6
	add r1, r1, #0x9000
	ldr r1, [r1, #0x5b4]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211B280:
	cmp r4, #6
	blt _0211B268
	ldr r4, _0211B368 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211B344
_0211B2AC: ; jump table
	b _0211B344 ; case 0
	b _0211B2C4 ; case 1
	b _0211B2F4 ; case 2
	b _0211B30C ; case 3
	b _0211B328 ; case 4
	b _0211B2DC ; case 5
_0211B2C4:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov44_0211b36c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2DC:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov44_0211b4ac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B2F4:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov44_0211b580
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B30C:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov44_0211b750
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B328:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov44_0211b750
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B344:
	ldr r1, [r6, #0x10]
	cmp r1, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	sub r1, r1, #1
	mov r2, #0
	bl FUN_ov44_0211e5b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B364: .word unk_02099ED4
_0211B368: .word unk_02099EB4
	arm_func_end FUN_ov44_0211b204

	arm_func_start FUN_ov44_0211b36c
FUN_ov44_0211b36c: ; 0x0211B36C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	ldr r2, _0211B4A4 ; =0x02122034
	ldr r4, _0211B4A8 ; =0x02122044
	add r12, sp, #0x14
	add r7, sp, #4
	mov r6, r0
	mov r5, r1
	ldmia r2, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r0, r6, #0x9000
	str r5, [r0, #0x6c4]
	mov r4, #0
_0211B3A8:
	ldr r1, [r12, r4, lsl #2]
	cmp r5, r1
	blt _0211B400
	ldr r0, [r7, r4, lsl #2]
	cmp r5, r0
	bgt _0211B400
	sub r5, r5, r1
	mov r7, #1
	mov r12, #0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, r7
	str r12, [sp]
	bl FUN_ov44_02120798
	cmp r4, #1
	blt _0211B40C
	mov r0, r6
	mov r2, r7
	sub r1, r4, #1
	bl FUN_ov44_0211e5b8
	b _0211B40C
_0211B400:
	add r4, r4, #1
	cmp r4, #4
	blt _0211B3A8
_0211B40C:
	cmp r5, #0x36
	bgt _0211B444
	bge _0211B494
	cmp r5, #0x1b
	addgt sp, sp, #0x24
	ldmgtfd sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0x1a
	addlt sp, sp, #0x24
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	beq _0211B474
	cmp r5, #0x1b
	beq _0211B484
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B444:
	cmp r5, #0x3b
	addgt sp, sp, #0x24
	ldmgtfd sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0x3a
	addlt sp, sp, #0x24
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	cmpne r5, #0x3b
	addeq r0, r6, #0x9000
	moveq r1, #0
	streq r1, [r0, #0x688]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B474:
	mov r0, r6
	bl FUN_ov44_0211aad0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B484:
	mov r0, r6
	bl FUN_ov44_0211abe4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B494:
	mov r0, r6
	bl FUN_ov44_0211ae38
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211B4A4: .word ov44_02122034
_0211B4A8: .word ov44_02122044
	arm_func_end FUN_ov44_0211b36c

	arm_func_start FUN_ov44_0211b4ac
FUN_ov44_0211b4ac: ; 0x0211B4AC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	cmp r1, #0x36
	beq _0211B4D4
	cmp r1, #0x3a
	cmpne r1, #0x3b
	beq _0211B500
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211B4D4:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x488]
	mov r2, #1
	str r2, [sp]
	ldr r0, _0211B578 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211B500:
	add r0, r4, #0x9000
	ldr r2, [r0, #0x688]
	sub r1, r1, #0x3a
	cmp r2, #7
	addlt r1, r2, #1
	strlt r1, [r0, #0x688]
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, pc}
	ldr r0, [r0, #0x68c]
	cmp r0, #0
	bne _0211B544
	cmp r1, #0
	mov r0, r4
	beq _0211B540
	bl FUN_ov44_0211abe4
	b _0211B544
_0211B540:
	bl FUN_ov44_0211aad0
_0211B544:
	add r3, r4, #0x9000
	ldr r0, [r3, #0x68c]
	ldr r2, _0211B57C ; =0x66666667
	add r12, r0, #1
	mov r0, r12, lsr #0x1f
	smull r1, lr, r2, r12
	add lr, r0, lr, asr #1
	mov r2, #5
	smull r0, r1, r2, lr
	sub lr, r12, r0
	str lr, [r3, #0x68c]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211B578: .word unk_02099F38
_0211B57C: .word 0x66666667
	arm_func_end FUN_ov44_0211b4ac

	arm_func_start FUN_ov44_0211b580
FUN_ov44_0211b580: ; 0x0211B580
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x15
	bgt _0211B5EC
	bge _0211B664
	cmp r4, #0xa
	bgt _0211B5C0
	bge _0211B69C
	cmp r4, #2
	bgt _0211B6CC
	cmp r4, #1
	blt _0211B6CC
	cmpne r4, #2
	beq _0211B690
	b _0211B6CC
_0211B5C0:
	cmp r4, #0xc
	bgt _0211B5E0
	cmp r4, #0xb
	blt _0211B6CC
	beq _0211B6A4
	cmp r4, #0xc
	beq _0211B678
	b _0211B6CC
_0211B5E0:
	cmp r4, #0x14
	beq _0211B664
	b _0211B6CC
_0211B5EC:
	cmp r4, #0x34
	bgt _0211B620
	bge _0211B664
	cmp r4, #0x1b
	bgt _0211B614
	cmp r4, #0x1a
	blt _0211B6CC
	cmpne r4, #0x1b
	beq _0211B658
	b _0211B6CC
_0211B614:
	cmp r4, #0x33
	beq _0211B664
	b _0211B6CC
_0211B620:
	cmp r4, #0x35
	bgt _0211B630
	beq _0211B680
	b _0211B6CC
_0211B630:
	sub r1, r4, #0x36
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211B6CC
_0211B640: ; jump table
	b _0211B658 ; case 0
	b _0211B6AC ; case 1
	b _0211B6C4 ; case 2
	b _0211B6C8 ; case 3
	b _0211B6BC ; case 4
	b _0211B6B4 ; case 5
_0211B658:
	mov r0, r5
_0211B65C:
	bl FUN_ov44_0211a454
	b _0211B6CC
_0211B664:
	ldr r0, [r5, #0x10]
	cmp r0, #4
	beq _0211B6CC
	mov r0, r5
	b _0211B6C8
_0211B678:
	bl FUN_ov44_0211a704
	b _0211B6CC
_0211B680:
	ldr r1, [r5, #0x10]
	cmp r1, #4
	beq _0211B6CC
	b _0211B65C
_0211B690:
	mov r0, r5
	bl FUN_ov44_0211a75c
	b _0211B6CC
_0211B69C:
	bl FUN_ov44_0211a7b8
	b _0211B6CC
_0211B6A4:
	bl FUN_ov44_0211a8b4
	b _0211B6CC
_0211B6AC:
	bl FUN_ov44_0211ae04
	b _0211B6CC
_0211B6B4:
	bl FUN_ov44_0211abe4
	b _0211B6CC
_0211B6BC:
	bl FUN_ov44_0211aad0
	b _0211B6CC
_0211B6C4:
	b _0211B65C
_0211B6C8:
	bl FUN_ov44_0211a5b0
_0211B6CC:
	cmp r4, #0x23
	blt _0211B6F4
	cmp r4, #0x32
	addle r0, r5, #0x9000
	ldrle r0, [r0, #0x670]
	suble r1, r4, #0x23
	cmple r1, r0
	bne _0211B6F4
	mov r0, r5
	bl FUN_ov44_0211a454
_0211B6F4:
	cmp r4, #0xd
	blt _0211B704
	cmp r4, #0x12
	ble _0211B724
_0211B704:
	cmp r4, #0x16
	blt _0211B714
	cmp r4, #0x19
	ble _0211B724
_0211B714:
	cmp r4, #0x1c
	blt _0211B72C
	cmp r4, #0x22
	bgt _0211B72C
_0211B724:
	mov r0, r5
	bl FUN_ov44_0211a454
_0211B72C:
	cmp r4, #3
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #9
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r1, r4, lsl #0x10
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_ov44_0211a9b0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov44_0211b580

	arm_func_start FUN_ov44_0211b750
FUN_ov44_0211b750: ; 0x0211B750
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r6, _0211B7FC ; =0x02099EB4
	mov r5, r0
	ldr r0, [r6]
	mov r9, r1
	mov r4, #0
	add r1, sp, #4
	mov r8, r2
	str r4, [sp, #8]
	bl FUN_ov16_0210f48c
	mov r7, #1
	str r7, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r6]
	add r3, sp, #8
	bl FUN_ov16_0210ecb8
	cmp r8, #0
	bne _0211B7EC
	cmp r9, #0x33
	cmpne r9, #0x34
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5, #0x10]
	cmp r0, #1
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #8]
	ldr r1, [r5, #0x10]
	cmp r0, #0
	movne r4, r7
	ldr r3, [sp, #8]
	mov r0, r5
	mov r2, r4
	sub r1, r1, #1
	bl FUN_ov44_0211e780
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211B7EC:
	add r0, r5, #0x9000
	str r4, [r0, #0x6c4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211B7FC: .word unk_02099EB4
	arm_func_end FUN_ov44_0211b750

	arm_func_start FUN_ov44_0211b800
FUN_ov44_0211b800: ; 0x0211B800
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211B87C
_0211B818: ; jump table
	b _0211B840 ; case 0
	b _0211B844 ; case 1
	b _0211B87C ; case 2
	b _0211B850 ; case 3
	b _0211B858 ; case 4
	b _0211B860 ; case 5
	b _0211B868 ; case 6
	b _0211B87C ; case 7
	b _0211B870 ; case 8
	b _0211B878 ; case 9
_0211B840:
	bl FUN_ov44_0211c35c
_0211B844:
	mov r0, r4
	bl FUN_ov44_0211c404
	b _0211B87C
_0211B850:
	bl FUN_ov44_0211c710
	b _0211B87C
_0211B858:
	bl FUN_ov44_0211cd14
	b _0211B87C
_0211B860:
	bl FUN_ov44_0211cda4
	b _0211B87C
_0211B868:
	bl FUN_ov44_0211cf98
	b _0211B87C
_0211B870:
	bl FUN_ov44_0211d380
	b _0211B87C
_0211B878:
	bl FUN_ov44_0211d3b4
_0211B87C:
	add r0, r4, #0x9000
	ldrb r0, [r0, #0x6cc]
	cmp r0, #0
	bne _0211B894
	mov r0, r4
	bl FUN_ov44_0211b9c4
_0211B894:
	ldr r0, _0211B9B4 ; =0x02099ED4
	ldr r5, _0211B9B8 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211B8CC
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211B8D8
_0211B8CC:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211B8D8:
	bl _ffix
	ldr r2, _0211B9BC ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	add r0, r4, #0x9000
	ldr r1, [r0, #0x52c]
	cmp r1, #0
	beq _0211B918
	ldr r1, [r0, #0x6c8]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0x6c8]
	bgt _0211B918
	mov r0, r4
	bl FUN_ov44_021205bc
_0211B918:
	mov r6, #0
	mov r5, #0x24
	b _0211B948
_0211B924:
	mla r0, r6, r5, r4
	add r0, r0, #0x9000
	ldr r0, [r0, #0x5b4]
	cmp r0, #0
	beq _0211B944
	mov r0, r4
	mov r1, r6
	bl FUN_ov44_02120980
_0211B944:
	add r6, r6, #1
_0211B948:
	cmp r6, #6
	blt _0211B924
	add r0, r4, #0x9000
	ldr r0, [r0, #0x530]
	cmp r0, #0
	beq _0211B968
	mov r0, r4
	bl FUN_ov44_0211d564
_0211B968:
	add r0, r4, #0x9000
	ldr r0, [r0, #0x58c]
	cmp r0, #0
	beq _0211B980
	mov r0, r4
	bl FUN_ov44_0211de00
_0211B980:
	add r0, r4, #0x9000
	ldr r0, [r0, #0x69c]
	cmp r0, #0
	beq _0211B998
	mov r0, r4
	bl FUN_ov44_02121a18
_0211B998:
	add r0, r4, #0x9000
	ldr r0, [r0, #0x6b0]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov44_02121c80
	ldmfd sp!, {r4, r5, r6, pc}
_0211B9B4: .word unk_02099ED4
_0211B9B8: .word unk_0209A110
_0211B9BC: .word unk_02099F58
	arm_func_end FUN_ov44_0211b800

	arm_func_start FUN_ov44_0211b9c0
FUN_ov44_0211b9c0: ; 0x0211B9C0
	bx lr
	arm_func_end FUN_ov44_0211b9c0

	arm_func_start FUN_ov44_0211b9c4
FUN_ov44_0211b9c4: ; 0x0211B9C4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211BA30 ; =0x02121F48
	mov r4, r0
	ldr r12, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r4, #0x74]
	add r2, sp, #0
	str r12, [sp]
	str r3, [sp, #4]
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4, #0x14]
	bl FUN_ov44_02120afc
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	moveq r0, #1
	moveq r1, #0
	streqb r0, [r4, #0x21]
	streq r1, [r4, #0x14]
	ldr r0, [r4, #4]
	add r1, r4, #0x14
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211BA30: .word ov44_02121F48
	arm_func_end FUN_ov44_0211b9c4

	arm_func_start FUN_ov44_0211ba34
FUN_ov44_0211ba34: ; 0x0211BA34
	mov r2, #6
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov44_0211ba34

	arm_func_start FUN_ov44_0211ba44
FUN_ov44_0211ba44: ; 0x0211BA44
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x104
	ldr r6, _0211C034 ; =0x0209BA20
	mov r4, #0
	mov r10, r0
	mov r0, r6
	mov r1, r4
	mov r5, r4
	bl FUN_0205107c
	str r0, [sp, #8]
	mov r0, r6
	mov r1, r4
	bl FUN_0205106c
	str r0, [sp, #4]
	add r0, sp, #0x1c
	mov r1, r4
	mov r2, #0xe8
	bl MI_CpuFill8
	add r0, sp, #0x14
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	ldr r6, _0211C038 ; =0x000030F0
	add r0, r10, #0x80
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0x170
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, r10, #0x260
	mov r2, r6
	add r0, r0, #0x6000
	mov r1, r4
	bl MI_CpuFill8
	add r0, r10, #0x9000
	str r4, [r0, #0x350]
	str r4, [r0, #0x354]
	str r4, [r0, #0x358]
	str r4, [r0, #0x364]
_0211BAEC:
	mov r0, r4
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0211BB24
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, [sp, #8]
	bl FUN_0204fca0
	cmp r0, #1
	beq _0211BB24
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_0206d9cc
_0211BB24:
	add r4, r4, #1
	cmp r4, #0x64
	blt _0211BAEC
	mov r6, #0
_0211BB34:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0211BB5C
	mov r1, r5
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r4
	mov r2, r5
	bl FUN_0206d9cc
_0211BB5C:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0211BB34
	add r0, r10, #0x350
	add r1, r10, #0x358
	mov r8, #0
	add r5, r0, #0x9000
	add r4, r1, #0x9000
	add r9, r10, #0x9000
	add r7, sp, #0x1c
_0211BB84:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0211BBE8
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211BBE8
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r0
	ldr r0, [sp, #8]
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211BBE8
	mov r0, r6
	bl FUN_0206cc00
	ldr r1, [r9, #0x350]
	mov r1, r1, lsl #1
	strh r0, [r7, r1]
	ldr r1, [r5]
	ldr r0, [r4]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [r5]
	str r0, [r4]
_0211BBE8:
	add r8, r8, #1
	cmp r8, #0x64
	mov r6, #0
	blt _0211BB84
	add r0, r10, #0x350
	mov r9, r6
	add r11, r0, #0x9000
	add r5, sp, #0x1c
_0211BC08:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _0211BC88
	add r4, r10, #0x9000
	ldr r0, [r4, #0x350]
	mov r7, r6
	cmp r0, #0
	ble _0211BC54
_0211BC2C:
	mov r0, r8
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	ldrh r1, [r5, r1]
	cmp r1, r0
	beq _0211BC54
	ldr r0, [r4, #0x350]
	add r7, r7, #1
	cmp r7, r0
	blt _0211BC2C
_0211BC54:
	add r0, r10, #0x9000
	ldr r0, [r0, #0x350]
	cmp r7, r0
	bne _0211BC88
	mov r0, r8
	bl FUN_0206cbf8
	add r1, r10, #0x9000
	ldr r1, [r1, #0x350]
	mov r1, r1, lsl #1
	strh r0, [r5, r1]
	ldr r0, [r11]
	add r0, r0, #1
	str r0, [r11]
_0211BC88:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0211BC08
	add r8, sp, #0x1c
	mov r0, r10
	mov r1, r8
	bl FUN_ov44_0211c040
	add r11, r10, #0x9000
	ldr r1, [r11, #0x350]
	ldr r0, [r11, #0x368]
	mov r5, #0
	add r0, r1, r0
	cmp r0, #0
	ble _0211BF48
	add r0, r10, #0x9c
	str r0, [sp, #0xc]
	add r0, r10, #0xbc
	ldr r7, _0211C034 ; =0x0209BA20
	str r0, [sp, #0x10]
_0211BCD4:
	mov r0, r5, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _0211BF30
	mov r0, #0x6c
	mla r9, r5, r0, r10
	mov r3, r5, lsl #1
	ldrh r2, [r8, r3]
	mov r0, r7
	mov r1, r4
	strh r2, [r9, #0x80]
	ldrh r3, [r8, r3]
	ldr r2, _0211C03C ; =0x00000FFF
	and r2, r3, r2
	strh r2, [r9, #0x82]
	bl FUN_0204b754
	strh r0, [r9, #0x84]
	mov r0, r4
	bl FUN_0204fb60
	strh r0, [r9, #0x86]
	mov r1, r5, lsl #1
	ldrh r1, [r8, r1]
	ldr r0, [sp, #8]
	bl FUN_0204fd68
	str r0, [r9, #0x8c]
	mov r1, r5, lsl #1
	ldrh r1, [r8, r1]
	ldr r0, [sp, #4]
	bl FUN_0205019c
	str r0, [r9, #0x90]
	mov r0, #1
	strb r0, [r9, #0x95]
	str r6, [r9, #0x98]
	ldr r0, [r11, #0x358]
	cmp r5, r0
	bge _0211BD7C
	mov r0, r4
	mov r1, #1
	bl FUN_0206d9b0
	strb r0, [r9, #0x88]
_0211BD7C:
	mov r0, r4
	bl FUN_0206d454
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x20
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d464
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x40
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d474
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x80
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d484
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x100
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d494
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x200
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d4a4
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x400
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d4b4
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	orrne r0, r0, #0x800
	strne r0, [r9, #0x98]
	mov r0, r4
	bl FUN_0206d4c4
	cmp r0, #0
	ldrne r0, [r9, #0x98]
	ldr r1, [sp, #0xc]
	orrne r0, r0, #0x1000
	strne r0, [r9, #0x98]
	mov r0, #0x6c
	mul r9, r5, r0
	add r0, r4, #0x2c
	add r1, r1, r9
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r1, [sp, #0x10]
	add r0, r4, #0x1c
	add r1, r1, r9
	mov r2, #0x10
	bl MI_CpuCopy8
	add r9, r10, r9
	mov r0, r7
	mov r1, r4
	mov r2, #0x25
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xcc]
	mov r0, r7
	mov r1, r4
	mov r2, #0x1e
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xd0]
	mov r0, r7
	mov r1, r4
	mov r2, #0x1f
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xd4]
	mov r0, r7
	mov r1, r4
	mov r2, #0x21
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xd8]
	mov r0, r7
	mov r1, r4
	mov r2, #0x20
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xdc]
	mov r0, r7
	mov r1, r4
	mov r2, #0x22
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xe0]
	mov r0, r7
	mov r1, r4
	mov r2, #0x24
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xe4]
	mov r1, r4
	mov r0, r7
	mov r2, #0x23
	mov r3, r6
	bl FUN_0204f02c
	str r0, [r9, #0xe8]
_0211BF30:
	add r5, r5, #1
	ldr r1, [r11, #0x350]
	ldr r0, [r11, #0x368]
	add r0, r1, r0
	cmp r5, r0
	blt _0211BCD4
_0211BF48:
	mov r4, #0
	add r6, sp, #0x14
	ldr r0, _0211C034 ; =0x0209BA20
	mov r1, r4
	mov r2, r6
	mov r3, #4
	str r4, [sp]
	mov r5, r4
	bl FUN_0204b2f4
	add r11, r10, #0x9000
	ldr r2, [r11, #0x350]
	ldr r1, [r11, #0x368]
	add r1, r2, r1
	cmp r1, #0
	ble _0211C010
	add r1, r10, #0x354
	add r1, r1, #0x9000
	mov r2, #1
	mov r9, #0x6c
_0211BF94:
	mov r8, r5
	cmp r0, #0
	ble _0211BFF8
	mla r7, r4, r9, r10
	ldrh r3, [r7, #0x80]
_0211BFA8:
	mov r12, r8, lsl #1
	ldrh r12, [r6, r12]
	cmp r3, r12
	bne _0211BFEC
	strb r2, [r7, #0x96]
	ldr r3, [r1]
	add r3, r3, #1
	str r3, [r1]
	cmp r3, r0
	bne _0211BFF8
	add r1, r10, #0x170
	ldr r2, _0211C038 ; =0x000030F0
	add r0, r10, #0x80
	add r1, r1, #0x3000
	bl MI_CpuCopy8
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BFEC:
	add r8, r8, #1
	cmp r8, r0
	blt _0211BFA8
_0211BFF8:
	ldr r7, [r11, #0x350]
	ldr r3, [r11, #0x368]
	add r4, r4, #1
	add r3, r7, r3
	cmp r4, r3
	blt _0211BF94
_0211C010:
	add r1, r10, #0x9000
	add r3, r10, #0x170
	str r0, [r1, #0x354]
	ldr r2, _0211C038 ; =0x000030F0
	add r0, r10, #0x80
	add r1, r3, #0x3000
	bl MI_CpuCopy8
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C034: .word unk_0209BA20
_0211C038: .word 0x000030F0
_0211C03C: .word 0x00000FFF
	arm_func_end FUN_ov44_0211ba44

	arm_func_start FUN_ov44_0211c040
FUN_ov44_0211c040: ; 0x0211C040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x110
	mov r5, #0
	mov r7, #0xe8
	mov r9, r1
	add r8, sp, #0x28
	mov r10, r0
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r6, r5
	bl MI_CpuFill8
	add r4, sp, #0
	mov r1, r5
	mov r0, r4
	mov r2, #8
	bl MI_CpuFill8
	add r0, sp, #8
	mov r1, r5
	mov r2, #0x20
	bl MI_CpuFill8
	mov r1, r8
	mov r2, r7
	mov r0, r9
	bl MI_CpuCopy8
	ldr r0, _0211C288 ; =0x0209BA20
	mov r1, r5
	bl FUN_0205106c
	mov r7, r0
	mov r8, r5
_0211C0B8:
	mov r0, r7
	mov r1, r8
	bl FUN_02050244
	cmp r0, #0
	movne r1, r5, lsl #1
	strneh r0, [r4, r1]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	addne r5, r5, #1
	cmp r8, #4
	blt _0211C0B8
	mov r8, #0
	ldr r0, _0211C288 ; =0x0209BA20
	mov r1, r8
	bl FUN_0205107c
	mov r7, r0
	add r11, sp, #8
_0211C100:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0211C14C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211C14C
	mov r0, r4
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r7
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211C14C
	mov r0, r4
	bl FUN_0206cc00
	mov r1, r6, lsl #1
	strh r0, [r11, r1]
	add r6, r6, #1
_0211C14C:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #0x64
	blt _0211C100
	mov r1, r5
	mov r2, #0
	add r7, sp, #0
	add r0, sp, #0x28
	mov r6, #1
_0211C174:
	mov r4, #0
	mov r8, r4
	cmp r5, #0
	ble _0211C1AC
	mov r3, r2, lsl #1
	ldrh r11, [r0, r3]
_0211C18C:
	mov r3, r8, lsl #1
	ldrh r3, [r7, r3]
	cmp r11, r3
	moveq r4, r6
	beq _0211C1AC
	add r8, r8, #1
	cmp r8, r5
	blt _0211C18C
_0211C1AC:
	cmp r4, #0
	moveq r3, r2, lsl #1
	ldreqh r4, [r0, r3]
	moveq r3, r1, lsl #1
	add r2, r2, #1
	streqh r4, [r9, r3]
	addeq r1, r1, #1
	cmp r2, #0x10
	mov r4, #0
	blt _0211C174
	add r3, r10, #0x9000
	add r0, sp, #0
	mov r1, r9
	mov r2, r5, lsl #1
	str r5, [r3, #0x354]
	bl MI_CpuCopy8
	add r0, r10, #0x9000
	ldr r0, [r0, #0x358]
	cmp r0, #0x10
	addge sp, sp, #0x110
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, sp, #0x28
	mov r0, r5
	mov r1, r4
	mov r2, #0xe8
	bl MI_CpuFill8
	add r0, r10, #0x9000
	ldr r3, [r0, #0x358]
	ldr r0, [r0, #0x350]
	mov r1, r5
	sub r2, r0, r3
	add r0, r9, r3, lsl #1
	mov r2, r2, lsl #1
	bl MI_CpuCopy8
	add r0, r10, #0x9000
	ldr r2, [r0, #0x350]
	ldr r1, [r0, #0x358]
	mov r0, r5
	sub r2, r2, r1
	add r1, r9, #0x20
	mov r2, r2, lsl #1
	bl MI_CpuCopy8
	add r0, r10, #0x9000
	ldr r0, [r0, #0x358]
	mov r1, r4
	rsb r2, r0, #0x10
	add r0, r9, r0, lsl #1
	mov r2, r2, lsl #1
	bl MI_CpuFill8
	add r0, r10, #0x9000
	ldr r1, [r0, #0x358]
	rsb r1, r1, #0x10
	str r1, [r0, #0x368]
	add sp, sp, #0x110
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C288: .word unk_0209BA20
	arm_func_end FUN_ov44_0211c040

	arm_func_start FUN_ov44_0211c28c
FUN_ov44_0211c28c: ; 0x0211C28C
	add r0, r0, #0x374
	ldr r12, _0211C2A4 ; =MI_CpuFill8
	add r0, r0, #0x9000
	mov r1, #0
	mov r2, #0x18
	bx r12
_0211C2A4: .word MI_CpuFill8
	arm_func_end FUN_ov44_0211c28c

	arm_func_start FUN_ov44_0211c2a8
FUN_ov44_0211c2a8: ; 0x0211C2A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	cmp r1, #2
	blo _0211C314
	mov r7, #0
	add r0, r9, #0x374
	add r6, r0, #0x9000
	mov r5, #1
	mov r4, r7
	mov r10, #0xc
_0211C2D0:
	mul r8, r7, r10
	mov r1, r5
	add r0, r6, r8
	bl FUN_ov16_020f338c
	add r0, r6, r8
	bl FUN_ov16_020f33fc
	add r0, r9, r8
	add r7, r7, #1
	str r4, [r6, r8]
	add r0, r0, #0x9000
	str r4, [r0, #0x378]
	strb r4, [r0, #0x37c]
	strb r4, [r0, #0x37d]
	strb r4, [r0, #0x37e]
	cmp r7, #2
	blt _0211C2D0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C314:
	mov r0, #0xc
	mul r5, r1, r0
	add r0, r9, #0x374
	add r4, r0, #0x9000
	add r0, r4, r5
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r5
	bl FUN_ov16_020f33fc
	add r0, r9, r5
	mov r1, #0
	str r1, [r4, r5]
	add r0, r0, #0x9000
	str r1, [r0, #0x378]
	strb r1, [r0, #0x37c]
	strb r1, [r0, #0x37d]
	strb r1, [r0, #0x37e]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov44_0211c2a8

	arm_func_start FUN_ov44_0211c35c
FUN_ov44_0211c35c: ; 0x0211C35C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x374
	ldr r0, _0211C39C ; =0x021226AC
	add r1, r1, #0x9000
	bl FUN_ov16_020f3054
	ldr r0, _0211C3A0 ; =gL5Allocator
	ldr r1, _0211C3A4 ; =0x00000101
	bl _ZN11L5Allocator12setNextArenaEi
	add r1, r4, #0x1380
	ldr r0, _0211C3A8 ; =0x021226C4
	add r1, r1, #0x8000
	bl FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211C39C: .word ov44_021226AC
_0211C3A0: .word gL5Allocator
_0211C3A4: .word 0x00000101
_0211C3A8: .word ov44_021226C4
	arm_func_end FUN_ov44_0211c35c

	arm_func_start FUN_ov44_0211c3ac
FUN_ov44_0211c3ac: ; 0x0211C3AC
	stmfd sp!, {r4, lr}
	add r0, r0, #0x38c
	add r0, r0, #0x9000
	add r4, r0, r1, lsl #3
	mov r0, r4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r0, r4
	mov r1, #0x10
	bl FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_0211c3ac

	arm_func_start FUN_ov44_0211c3dc
FUN_ov44_0211c3dc: ; 0x0211C3DC
	stmfd sp!, {r4, lr}
	add r0, r0, #0x38c
	add r0, r0, #0x9000
	add r4, r0, r1, lsl #3
	mov r0, r4
	mvn r1, #0
	bl FUN_ov16_020f57b0
	mov r0, r4
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_0211c3dc

	arm_func_start FUN_ov44_0211c404
FUN_ov44_0211c404: ; 0x0211C404
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x374
	add r0, r0, #0x9000
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_ov44_0211c43c
	mov r0, #3
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_0211c404

	arm_func_start FUN_ov44_0211c43c
FUN_ov44_0211c43c: ; 0x0211C43C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	mov r10, r0
	add r2, r10, #0x9000
	ldr r11, [r2, #0x374]
	add r0, r10, #0x38c
	ldr r2, [r2, #0x394]
	add r0, r0, #0x9000
	add r5, r0, r2, lsl #3
	cmp r11, #0
	cmpne r5, #0
	ldrne r7, [r5]
	mov r0, #1
	cmpne r7, #0
	cmpne r0, #0
	addle sp, sp, #0x60
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r8, #0x10
	mov r0, #0xc
	b _0211C4A4
_0211C490:
	mla r3, r4, r0, r7
	ldr r2, [r3, #4]
	add r4, r4, #1
	add r2, r2, r8
	str r2, [r3, #4]
_0211C4A4:
	ldr r2, [r5, #4]
	cmp r4, r2
	blt _0211C490
	cmp r1, #1
	addeq r0, r10, #0x9000
	ldreq r0, [r0, #0x538]
	add r4, sp, #0x18
	moveq r9, r0, lsl #4
	addeq r8, r9, #0x10
	addne r0, r8, r8, lsr #31
	movne r9, r0, asr #1
	mov r0, r4
	bl FS_InitFile
	ldr r1, _0211C5E4 ; =0x021226E4
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0211C5CC
_0211C4F4:
	mvn r6, #0
	mov r4, #0xc
	mov r1, #0
	mov r3, r6
	mov r2, r4
	b _0211C544
_0211C50C:
	mla r12, r1, r4, r7
	ldrh r0, [r12, #8]
	cmp r0, #0
	moveq r6, r1
	beq _0211C550
	cmp r6, r3
	beq _0211C53C
	ldr r0, [r12, #4]
	mla r12, r6, r2, r7
	ldr r12, [r12, #4]
	cmp r0, r12
	ble _0211C540
_0211C53C:
	mov r6, r1
_0211C540:
	add r1, r1, #1
_0211C544:
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0211C50C
_0211C550:
	mov r0, #0x6c
	mla r0, r9, r0, r10
	ldrh r4, [r0, #0x82]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r0, r11
	mov r1, r4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211C5C8
	ldr r0, _0211C5E8 ; =0x02099F38
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r3}
	str r2, [sp, #0xc]
	ldr r3, _0211C5E4 ; =0x021226E4
	add r1, sp, #0x18
	mov r2, #5
	bl FUN_02058a10
	mov r1, #0xc
	mul r1, r6, r1
	str r4, [r7, r1]
	add r1, r7, r1
	strh r0, [r1, #8]
	mov r0, #0
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
_0211C5C8:
	add r9, r9, #1
_0211C5CC:
	cmp r9, r8
	blt _0211C4F4
	add r0, sp, #0x18
	bl FS_CloseFile
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C5E4: .word ov44_021226E4
_0211C5E8: .word unk_02099F38
	arm_func_end FUN_ov44_0211c43c

	arm_func_start FUN_ov44_0211c5ec
FUN_ov44_0211c5ec: ; 0x0211C5EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	bl FUN_0206cc00
	add r2, r4, #0x9000
	add r1, r4, #0x38c
	ldr r2, [r2, #0x394]
	add r1, r1, #0x9000
	add r1, r1, r2, lsl #3
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_0211c5ec

	arm_func_start FUN_ov44_0211c624
FUN_ov44_0211c624: ; 0x0211C624
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x398
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x9000
	mov r2, #0x98
	bl MI_CpuFill8
	add r0, r5, #0x430
	mov r1, r4
	add r0, r0, #0x9000
	mov r2, #0x7c
	bl MI_CpuFill8
	ldr r0, _0211C668 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211C668: .word unk_02099F38
	arm_func_end FUN_ov44_0211c624

	arm_func_start FUN_ov44_0211c66c
FUN_ov44_0211c66c: ; 0x0211C66C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211C70C ; =0x02099F38
	b _0211C6B0
_0211C684:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x430]
	cmp r1, #0
	beq _0211C6AC
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	str r7, [r0, #0x430]
_0211C6AC:
	add r4, r4, #1
_0211C6B0:
	cmp r4, #0x1f
	blt _0211C684
	mov r4, #0
	mov r7, r4
	ldr r6, _0211C70C ; =0x02099F38
	b _0211C6F4
_0211C6C8:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x398]
	cmp r1, #0
	beq _0211C6F0
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	str r7, [r0, #0x398]
_0211C6F0:
	add r4, r4, #1
_0211C6F4:
	cmp r4, #0x26
	blt _0211C6C8
	ldr r0, _0211C70C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C70C: .word unk_02099F38
	arm_func_end FUN_ov44_0211c66c

	arm_func_start FUN_ov44_0211c710
FUN_ov44_0211c710: ; 0x0211C710
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14c
	mov r4, r0
	add r1, r4, #0x9000
	add r0, r4, #0x38c
	ldr r1, [r1, #0x394]
	add r0, r0, #0x9000
	add r0, r0, r1, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x14c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _0211C7F8 ; =0x0212212C
	add r6, sp, #0x14
	mov r5, #0x13
_0211C74C:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211C74C
	ldmia r7, {r0, r1}
	stmia r6, {r0, r1}
	ldr r6, _0211C7FC ; =gL5Allocator
	mov r7, #0
	ldr r1, _0211C800 ; =0x00000101
	mov r0, r6
	str r7, [sp, #0x10]
	ldr r8, _0211C804 ; =0x021226FC
	bl _ZN11L5Allocator12setNextArenaEi
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r5, #1
	ldr r0, _0211C808 ; =gL5FileRequestManager
	add r2, sp, #0x10
	mov r1, r8
	str r5, [sp, #0xc]
	mov r3, r7
	bl _ZN20L5FileRequestManager10readDirectEPKcPPvP11L5Allocatoriiih
	str r7, [sp]
	ldr r2, [sp, #0x10]
	add r3, r4, #0x398
	str r2, [sp, #4]
	add r1, r4, #0x9000
	ldr r1, [r1, #0x380]
	mov r0, r8
	add r2, sp, #0x14
	add r3, r3, #0x9000
	bl FUN_ov16_020f5504
	ldr r1, [sp, #0x10]
	mov r0, r6
	bl _ZN11L5Allocator10deallocateEPv
	mov r1, r5
	mov r0, r4
	bl FUN_ov44_0211c2a8
	mov r0, #4
	str r0, [r4, #0xc]
	add sp, sp, #0x14c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C7F8: .word ov44_0212212C
_0211C7FC: .word gL5Allocator
_0211C800: .word 0x00000101
_0211C804: .word ov44_021226FC
_0211C808: .word gL5FileRequestManager
	arm_func_end FUN_ov44_0211c710

	arm_func_start FUN_ov44_0211c80c
FUN_ov44_0211c80c: ; 0x0211C80C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	cmp r3, #0
	mov r5, r1
	mov r4, r2
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, pc}
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	add r0, r0, #0x9000
	ldr r6, _0211C8D8 ; =0x02099F38
	ldr r3, [r0, #0x398]
	ldr r0, [r6]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r1, r1, lsl #0x10
	ldr r0, [r6]
	mov r3, r1, asr #0x10
	mov r1, r5
	ldr r2, [r4]
	bl FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r5
	ldr r2, [r4]
	ldr r3, [sp, #0x24]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r1, r5
	ldrb r0, [sp, #0x28]
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C8D8: .word unk_02099F38
	arm_func_end FUN_ov44_0211c80c

	arm_func_start FUN_ov44_0211c8dc
FUN_ov44_0211c8dc: ; 0x0211C8DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r7, #0
	mov r6, r0
	str r1, [sp, #0x20]
	mov r11, #4
	mov r10, r2
	add r0, sp, #0x30
	mov r1, r7
	mov r2, r11
	ldr r8, [sp, #0x58]
	mov r9, r3
	str r7, [sp, #0x28]
	mov r4, #0x80
	mov r5, #0x10
	bl MI_CpuFill8
	mov r2, r11
	add r0, sp, #0x2c
	mov r1, r7
	bl MI_CpuFill8
	str r7, [r8]
	ldr r0, [r6, #0x10]
	add r2, sp, #0x30
	cmp r0, #4
	cmpne r0, #6
	cmpne r0, #8
	moveq r4, #0x100
	moveq r5, #0x20
	add r3, sp, #0x2c
	mov r0, r4
	mov r1, r5
	moveq r7, #1
	bl FUN_02054070
	ldr r4, _0211CB04 ; =0x02099F38
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [r4]
	bl FUN_02059630
	mov r2, #0
	str r0, [r8]
	mov r1, r0
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	ldr r1, [r8]
	mov r2, #0
	str r2, [sp, #0x24]
	ldr r0, [r4]
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r8]
	ldr r6, [sp, #0x24]
	bl FUN_ov16_02111438
	mov r11, r0
	ldr r0, [r4]
	ldr r1, [r8]
	bl FUN_ov16_02111458
	mov r5, r0
	ldr r0, _0211CB08 ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211CB08 ; =0x02099F50
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r6
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211CB08 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r3, [sp, #0x28]
	mov r2, r6
	ldr r1, [r8]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, r6
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r6
	mov r1, r10
	bl FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl FUN_ov16_02113d08
	ldr r0, [sp, #0x60]
	ldr r3, [sp, #0x5c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x64]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CB04: .word unk_02099F38
_0211CB08: .word unk_02099F50
	arm_func_end FUN_ov44_0211c8dc

	arm_func_start FUN_ov44_0211cb0c
FUN_ov44_0211cb0c: ; 0x0211CB0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
_0211CB18:
	add r0, r4, r5, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x430]
	mov r0, r4
	bl FUN_ov44_0211ccec
	add r5, r5, #1
	cmp r5, #0x1f
	blt _0211CB18
	mov r5, #0
_0211CB3C:
	add r0, r4, r5, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x4ac]
	mov r0, r4
	bl FUN_ov44_0211ccec
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211CB3C
	ldr r0, [r4, #0x10]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211CCB0
_0211CB6C: ; jump table
	b _0211CB94 ; case 0
	b _0211CBE0 ; case 1
	b _0211CBE0 ; case 2
	b _0211CBE0 ; case 3
	b _0211CC24 ; case 4
	b _0211CB94 ; case 5
	b _0211CC38 ; case 6
	b _0211CB94 ; case 7
	b _0211CC38 ; case 8
	b _0211CC4C ; case 9
_0211CB94:
	mov r5, #0
_0211CB98:
	add r0, r4, r5, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x430]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r5, r5, #1
	cmp r5, #0x1f
	blt _0211CB98
	mov r5, #0
_0211CBBC:
	add r0, r4, r5, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x4ac]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211CBBC
	b _0211CCB0
_0211CBE0:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x464]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x470]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x478]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x480]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	b _0211CCB0
_0211CC24:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x474]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC38:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x488]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC4C:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x494]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x498]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x49c]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x4a0]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x4a4]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	add r0, r4, #0x9000
	ldr r1, [r0, #0x4a8]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	ldmfd sp!, {r3, r4, r5, pc}
_0211CCB0:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x46c]
	mov r0, r4
	bl FUN_ov44_0211ccc4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov44_0211cb0c

	arm_func_start FUN_ov44_0211ccc4
FUN_ov44_0211ccc4: ; 0x0211CCC4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211CCE4 ; =0x02099F38
	ldr r2, _0211CCE8 ; =0x00007FFF
	ldr r0, [r0]
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, pc}
_0211CCE4: .word unk_02099F38
_0211CCE8: .word 0x00007FFF
	arm_func_end FUN_ov44_0211ccc4

	arm_func_start FUN_ov44_0211ccec
FUN_ov44_0211ccec: ; 0x0211CCEC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211CD0C ; =0x02099F38
	ldr r2, _0211CD10 ; =0x00004210
	ldr r0, [r0]
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, pc}
_0211CD0C: .word unk_02099F38
_0211CD10: .word 0x00004210
	arm_func_end FUN_ov44_0211ccec

	arm_func_start FUN_ov44_0211cd14
FUN_ov44_0211cd14: ; 0x0211CD14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211CDA0 ; =0x02099F38
	b _0211CD8C
_0211CD2C:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x398]
	cmp r1, #0
	beq _0211CD88
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x398]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211CD88
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x398]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211CD88:
	add r4, r4, #1
_0211CD8C:
	cmp r4, #0x26
	blt _0211CD2C
	mov r0, #5
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CDA0: .word unk_02099F38
	arm_func_end FUN_ov44_0211cd14

	arm_func_start FUN_ov44_0211cda4
FUN_ov44_0211cda4: ; 0x0211CDA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov44_0211ce2c
	mov r0, r4
	bl FUN_ov44_0211d508
	mov r0, r4
	bl FUN_ov44_0211d64c
	mov r0, r4
	bl FUN_ov44_0211d738
	mov r0, r4
	bl FUN_ov44_0211d8d8
	mov r0, r4
	bl FUN_ov44_0211ff74
	mov r0, r4
	bl FUN_ov44_02120724
	mov r0, r4
	bl FUN_ov44_021217a0
	add r0, r4, #0x9000
	ldr r0, [r0, #0x53c]
	cmp r0, #0
	mov r0, r4
	beq _0211CE1C
	bl FUN_ov44_0211cefc
	mov r0, r4
	bl FUN_ov44_0211ea94
	add r0, r4, #0x9000
	ldr r1, [r0, #0x53c]
	mov r0, r4
	bl FUN_ov44_0211fe08
	b _0211CE20
_0211CE1C:
	bl FUN_ov44_0211e888
_0211CE20:
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_0211cda4

	arm_func_start FUN_ov44_0211ce2c
FUN_ov44_0211ce2c: ; 0x0211CE2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldr r1, _0211CEF8 ; =0x02099F38
	mov r7, r0
	mov r6, #1
	ldr r0, [r1]
	mov r2, r6
	mov r1, #3
	bl FUN_ov16_02112724
	mov r4, #0
	mov r5, r0
	add r9, sp, #0x14
	str r4, [sp, #0x14]
	add r0, r7, #0x9000
	str r5, [r0, #0x430]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r8, #0x1f4
	str r8, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r2, r9
	str r6, [sp, #0x10]
	mov r3, r4
	bl FUN_ov44_0211c80c
	str r4, [sp]
	str r4, [sp, #4]
	sub r8, r8, #1
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r7
	mov r1, r5
	mov r2, r9
	mov r3, #0x1c
	bl FUN_ov44_0211c80c
	str r4, [sp]
	mov r3, #8
	str r3, [sp, #4]
	mov r3, #0x18
	str r3, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r6, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CEF8: .word unk_02099F38
	arm_func_end FUN_ov44_0211ce2c

	arm_func_start FUN_ov44_0211cefc
FUN_ov44_0211cefc: ; 0x0211CEFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r0, r6, #0x9000
	ldr r1, [r0, #0x53c]
	ldr r5, [r0, #0x430]
	cmp r1, #0
	mov r4, #0
	beq _0211CF58
	ldr r7, _0211CF94 ; =0x02099F38
	ldr r3, [r0, #0x3ac]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add r0, r6, #0x9000
	ldr r3, [r0, #0x40c]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CF58:
	ldr r7, _0211CF94 ; =0x02099F38
	ldr r3, [r0, #0x398]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add r0, r6, #0x9000
	ldr r3, [r0, #0x408]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CF94: .word unk_02099F38
	arm_func_end FUN_ov44_0211cefc

	arm_func_start FUN_ov44_0211cf98
FUN_ov44_0211cf98: ; 0x0211CF98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _0211D378 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r1]
	mov r4, #0x35
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211D350
_0211CFD4: ; jump table
	b _0211CFFC ; case 0
	b _0211D100 ; case 1
	b _0211D180 ; case 2
	b _0211D26C ; case 3
	b _0211D19C ; case 4
	b _0211D278 ; case 5
	b _0211D1F8 ; case 6
	b _0211D350 ; case 7
	b _0211D220 ; case 8
	b _0211D2CC ; case 9
_0211CFFC:
	mov r0, r6
	bl FUN_ov44_0211f734
	mov r0, r6
	bl FUN_ov44_0211edcc
	mov r0, r6
	bl FUN_ov44_0211d98c
	mov r0, r6
	bl FUN_ov44_0211e940
	mov r0, r6
	bl FUN_ov44_0211d8d8
	add r0, r6, #0x9000
	ldr r0, [r0, #0x53c]
	cmp r0, #0
	bne _0211D03C
	mov r0, r6
	bl FUN_ov44_0211e888
_0211D03C:
	add r1, r6, #0x9000
	ldr r0, [r1, #0x680]
	cmp r0, #0
	beq _0211D068
	mov r0, r6
	str r5, [r1, #0x680]
	bl FUN_ov44_0211fee0
	mov r0, r6
	bl FUN_ov44_0211ff74
	mov r0, #1
	strb r0, [r6, #0x23]
_0211D068:
	mov r0, r6
	bl FUN_ov44_021218e0
	mov r8, #0x14
	mov r7, #1
	mov r0, r6
	mov r1, r8
	mov r2, r5
	mov r3, r7
	str r4, [sp]
	bl FUN_ov44_0211afac
	mov r1, #0xc
	mov r0, r6
	mov r2, r5
	mov r3, r7
	str r1, [sp]
	bl FUN_ov44_0211afac
	mov r0, r6
	mov r1, #0xe
	mov r2, r5
	mov r3, r7
	str r8, [sp]
	bl FUN_ov44_0211afac
	mov r0, r6
	bl FUN_ov44_0211d5dc
	ldr r4, _0211D37C ; =0x0209A454
	ldrb r0, [r4, #0x37]
	cmp r0, #0
	beq _0211D0F4
	str r7, [sp]
	ldrb r2, [r4, #0x37]
	mov r0, r6
	mov r1, r5
	mov r3, r5
	bl FUN_ov44_02120798
	strb r5, [r4, #0x37]
_0211D0F4:
	mov r0, r6
	bl FUN_ov44_0211b068
	b _0211D350
_0211D100:
	mov r0, r6
	bl FUN_ov44_0211eb48
	mov r0, r6
	bl FUN_ov44_0211d88c
	mov r0, r6
	bl FUN_ov44_0211e83c
	mov r0, r6
	bl FUN_ov44_0211e940
	mov r0, r6
	bl FUN_ov44_0211da18
	mov r0, r6
	bl FUN_ov44_0211e98c
	mov r0, r6
	mov r1, #0x14
	mov r2, #3
	mov r3, #4
	str r4, [sp]
	bl FUN_ov44_0211afac
	mov r0, r6
	bl FUN_ov44_0211d60c
	ldr r4, _0211D37C ; =0x0209A454
	ldrb r0, [r4, #0x38]
	cmp r0, #0
	beq _0211D350
	mov r1, #1
	str r1, [sp]
	ldrb r2, [r4, #0x38]
	mov r0, r6
	mov r3, r5
	bl FUN_ov44_02120798
	strb r5, [r4, #0x38]
	b _0211D350
_0211D180:
	mov r0, r6
	bl FUN_ov44_0211f4a4
	mov r0, r6
	bl FUN_ov44_0211ebd0
_0211D190:
	mov r0, r6
	bl FUN_ov44_0211d60c
	b _0211D350
_0211D19C:
	mov r0, r6
	bl FUN_ov44_0211ee4c
	add r0, r6, #0x9000
	ldr r0, [r0, #0x53c]
	cmp r0, #0
	bne _0211D1D4
	mov r2, r5
	mov r5, #0x15
	mov r0, r6
	mov r3, r2
	mov r1, #0xf
	str r5, [sp]
	bl FUN_ov44_0211afac
	b _0211D1E4
_0211D1D4:
	mov r0, r6
	bl FUN_ov44_0211e940
	mov r0, r6
	bl FUN_ov44_0211e83c
_0211D1E4:
	mov r2, #3
	mov r0, r6
	mov r3, r2
	mov r1, #0x10
	b _0211D214
_0211D1F8:
	mov r0, r6
	bl FUN_ov44_0211f0b8
	mov r2, r5
	mov r4, #0x15
	mov r0, r6
	mov r3, r2
	mov r1, #0xf
_0211D214:
	str r4, [sp]
	bl FUN_ov44_0211afac
	b _0211D190
_0211D220:
	mov r0, r6
	bl FUN_ov44_0211f2e8
	add r0, r6, #0x9000
	ldr r0, [r0, #0x53c]
	cmp r0, #0
	bne _0211D258
	mov r2, r5
	mov r4, #0x15
	mov r0, r6
	mov r3, r2
	mov r1, #0xf
	str r4, [sp]
	bl FUN_ov44_0211afac
	b _0211D268
_0211D258:
	mov r0, r6
	bl FUN_ov44_0211e940
	mov r0, r6
	bl FUN_ov44_0211e83c
_0211D268:
	b _0211D190
_0211D26C:
	mov r0, r6
	bl FUN_ov44_0211f52c
	b _0211D190
_0211D278:
	mov r7, #0x14
	mov r5, #4
	mov r0, r6
	mov r1, r7
	mov r3, r5
	mov r2, #3
	str r4, [sp]
	bl FUN_ov44_0211afac
	mov r2, #2
	mov r1, #0xc
	mov r0, r6
	mov r3, r2
	str r1, [sp]
	bl FUN_ov44_0211afac
	mov r0, r6
	mov r2, r5
	mov r1, #0xe
	mov r3, #5
	str r7, [sp]
	bl FUN_ov44_0211afac
	b _0211D0F4
_0211D2CC:
	mov r0, r6
	bl FUN_ov44_0211d98c
	mov r0, r6
	bl FUN_ov44_0211e940
	mov r0, r6
	bl FUN_ov44_0211f808
	mov r0, r6
	bl FUN_ov44_0211d8d8
	add r0, r6, #0x9000
	ldr r0, [r0, #0x53c]
	cmp r0, #0
	bne _0211D304
	mov r0, r6
	bl FUN_ov44_0211e888
_0211D304:
	mov r7, #0x14
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r5
	str r4, [sp]
	bl FUN_ov44_0211afac
	mov r1, #0xc
	mov r0, r6
	mov r2, r5
	mov r3, r5
	str r1, [sp]
	bl FUN_ov44_0211afac
	mov r0, r6
	mov r2, r5
	mov r3, r5
	mov r1, #0xe
	str r7, [sp]
	bl FUN_ov44_0211afac
_0211D350:
	mov r0, r6
	bl FUN_ov44_0211cb0c
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	str r0, [r6, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D378: .word unk_02099ED4
_0211D37C: .word unk_0209A454
	arm_func_end FUN_ov44_0211cf98

	arm_func_start FUN_ov44_0211d380
FUN_ov44_0211d380: ; 0x0211D380
	stmfd sp!, {r4, lr}
	ldr r1, _0211D3B0 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #9
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211D3B0: .word unk_02099ED4
	arm_func_end FUN_ov44_0211d380

	arm_func_start FUN_ov44_0211d3b4
FUN_ov44_0211d3b4: ; 0x0211D3B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r4, #0x9000
	ldr r1, [r0, #0x674]
	ldr r5, [r4, #0x78]
	cmp r1, #0
	ldr r6, [r4, #0x7c]
	beq _0211D400
	mov r1, #0
	str r1, [r0, #0x674]
	bl FUN_ov0_020be3f8
	ldr r0, _0211D44C ; =0x0209A454
	mov r1, #0x83
	str r1, [r0, #0x84]
_0211D400:
	cmp r5, r6
	cmpeq r5, #0
	ldr r4, [r4, #4]
	mov r1, #0
	bne _0211D42C
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r4, r5, r6, pc}
_0211D42C:
	mov r2, r5
	mov r0, r4
	bl FUN_02041eac
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_0211D44C: .word unk_0209A454
	arm_func_end FUN_ov44_0211d3b4

	arm_func_start FUN_ov44_0211d450
FUN_ov44_0211d450: ; 0x0211D450
	stmfd sp!, {r4, lr}
	ldr r3, _0211D4E8 ; =0x0209A454
	mov r4, r0
	ldrb r0, [r3, #0x29]
	cmp r0, #0
	beq _0211D474
	cmp r1, #0
	cmpeq r2, #0
	ldmnefd sp!, {r4, pc}
_0211D474:
	str r1, [r4, #0x78]
	str r2, [r4, #0x7c]
	cmp r1, #0
	beq _0211D4BC
	mov r0, r4
	bl FUN_ov44_02120afc
	ldr r2, _0211D4E8 ; =0x0209A454
	add r1, r4, #0x9000
	strh r0, [r2, #0x2c]
	ldr r0, [r1, #0x53c]
	strb r0, [r2, #0x35]
	ldr r0, [r1, #0x538]
	strb r0, [r2, #0x36]
	ldr r0, [r1, #0x598]
	strb r0, [r2, #0x37]
	ldr r0, [r1, #0x5bc]
	strb r0, [r2, #0x38]
	b _0211D4DC
_0211D4BC:
	ldr r0, _0211D4E8 ; =0x0209A454
	mov r1, #0
	strb r1, [r0, #0x34]
	strh r1, [r0, #0x2c]
	strb r1, [r0, #0x35]
	strb r1, [r0, #0x36]
	strb r1, [r0, #0x37]
	strb r1, [r0, #0x38]
_0211D4DC:
	mov r0, #8
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211D4E8: .word unk_0209A454
	arm_func_end FUN_ov44_0211d450

	arm_func_start FUN_ov44_0211d4ec
FUN_ov44_0211d4ec: ; 0x0211D4EC
	add r0, r0, #0x530
	ldr r12, _0211D504 ; =MI_CpuFill8
	add r0, r0, #0x9000
	mov r1, #0
	mov r2, #8
	bx r12
_0211D504: .word MI_CpuFill8
	arm_func_end FUN_ov44_0211d4ec

	arm_func_start FUN_ov44_0211d508
FUN_ov44_0211d508: ; 0x0211D508
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r1, #0xd8
	stmia sp, {r1, r4}
	mov r1, #1
	mov r3, r4
	str r1, [sp, #8]
	mov r12, #0x6e
	mov r2, #0xb
	str r12, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, pc}
	mov r12, #0x10
	mov r2, r4
	mov r1, #0xa0
	mov r3, #0x60
	str r12, [sp]
	bl FUN_ov16_0210e674
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_0211d508

	arm_func_start FUN_ov44_0211d564
FUN_ov44_0211d564: ; 0x0211D564
	stmfd sp!, {r3, lr}
	add r12, r0, #0x9000
	ldr r2, [r12, #0x534]
	ldr r1, [r12, #0x434]
	add r3, r2, #1
	str r3, [r12, #0x534]
	cmp r3, #0xa
	mov r2, #1
	mov lr, #0
	bge _0211D5A4
	ldr r0, _0211D5D8 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	mov r3, #2
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211D5A4:
	cmp r3, #0xa
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0x74]
	str lr, [r12, #0x530]
	eor r3, r3, #1
	str lr, [r12, #0x534]
	str r3, [r0, #0x74]
	strb lr, [r0, #0x21]
	ldr r0, _0211D5D8 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211D5D8: .word unk_02099F38
	arm_func_end FUN_ov44_0211d564

	arm_func_start FUN_ov44_0211d5dc
FUN_ov44_0211d5dc: ; 0x0211D5DC
	stmfd sp!, {r3, lr}
	add r1, r0, #0x9000
	ldr r1, [r1, #0x434]
	ldr r3, [r0, #0x74]
	mov r2, #0
	ldr r0, _0211D608 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211D608: .word unk_02099F38
	arm_func_end FUN_ov44_0211d5dc

	arm_func_start FUN_ov44_0211d60c
FUN_ov44_0211d60c: ; 0x0211D60C
	stmfd sp!, {r3, lr}
	add r0, r0, #0x9000
	ldr r1, [r0, #0x434]
	mov r2, #0
	ldr r0, _0211D638 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211D638: .word unk_02099F38
	arm_func_end FUN_ov44_0211d60c

	arm_func_start FUN_ov44_0211d63c
FUN_ov44_0211d63c: ; 0x0211D63C
	add r0, r0, #0x9000
	mov r1, #0
	str r1, [r0, #0x538]
	bx lr
	arm_func_end FUN_ov44_0211d63c

	arm_func_start FUN_ov44_0211d64c
FUN_ov44_0211d64c: ; 0x0211D64C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r7, #0
	mov r6, #3
	mov r11, r0
	mov r9, r6
	mov r10, r7
	mov r8, #0x48
	mov r4, r7
_0211D670:
	str r8, [sp]
	mov r0, #0x10
	stmib sp, {r0, r9}
	mov r3, #0x64
	str r3, [sp, #0xc]
	mov r0, r11
	mov r1, r6
	mov r2, #0xa
	mov r3, r7
	bl FUN_ov44_0211ae3c
	movs r5, r0
	beq _0211D6F0
	mov r1, r4
	mov r2, #1
	add r0, r5, #0x3a
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3a
	mov r1, r4
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r4
	mov r2, #1
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	add r2, r7, #1
	mov r3, r4
	bl FUN_ov16_0210e720
_0211D6F0:
	add r10, r10, #1
	cmp r10, #7
	add r6, r6, #1
	add r7, r7, #2
	add r8, r8, #0x10
	add r9, r9, #1
	blt _0211D670
	add r0, r11, #0x9000
	ldr r1, [r0, #0x538]
	mov r0, r11
	mov r3, r1, lsl #1
	add r1, r1, #3
	add r2, r3, #1
	add r3, r3, #1
	str r1, [sp]
	bl FUN_ov44_0211afac
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov44_0211d64c

	arm_func_start FUN_ov44_0211d738
FUN_ov44_0211d738: ; 0x0211D738
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r1, #0x28
	str r1, [sp]
	mov r1, #0x10
	mov r7, #0
	str r1, [sp, #4]
	mov r1, #0xa
	mov r3, r7
	str r1, [sp, #8]
	mov r5, #0x64
	mov r2, #9
	mov r4, r0
	str r5, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r6, r0
	beq _0211D7D0
	mov r5, #1
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r7
	mov r3, r7
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r7
	mov r2, r5
	add r0, r6, #0x3e
	mov r3, r7
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r5
	mov r1, r7
	mov r3, r7
	bl FUN_ov16_0210e720
_0211D7D0:
	mov r0, #0xb8
	str r0, [sp]
	mov r0, #0x10
	mov r7, #2
	str r0, [sp, #4]
	mov r1, #0xb
	mov r0, r4
	mov r3, r7
	str r1, [sp, #8]
	mov r4, #0x64
	mov r2, #9
	str r4, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r5
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov44_0211d738

	arm_func_start FUN_ov44_0211d870
FUN_ov44_0211d870: ; 0x0211D870
	add r0, r0, #0x1540
	ldr r12, _0211D888 ; =MI_CpuFill8
	add r0, r0, #0x8000
	mov r1, #0
	mov r2, #0x58
	bx r12
_0211D888: .word MI_CpuFill8
	arm_func_end FUN_ov44_0211d870

	arm_func_start FUN_ov44_0211d88c
FUN_ov44_0211d88c: ; 0x0211D88C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x460]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211D8D0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r2, #0
	ldr r1, _0211D8D4 ; =0x02099EB4
	str r2, [r0, #0x460]
	ldr r0, [r1]
	mov r1, #0xc
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211D8D0: .word unk_02099F38
_0211D8D4: .word unk_02099EB4
	arm_func_end FUN_ov44_0211d88c

	arm_func_start FUN_ov44_0211d8d8
FUN_ov44_0211d8d8: ; 0x0211D8D8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	add r1, r0, #0x9000
	ldr r1, [r1, #0x460]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, #0x98
	str r1, [sp]
	mov r1, #0xa8
	mov r6, #0
	str r1, [sp, #4]
	mov r1, #0xc
	mov r3, r6
	str r1, [sp, #8]
	mov r4, #0x64
	mov r2, #8
	str r4, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov44_0211d8d8

	arm_func_start FUN_ov44_0211d98c
FUN_ov44_0211d98c: ; 0x0211D98C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x9000
	ldr r1, [r0, #0x464]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211DA10 ; =0x02099F38
	mov r4, #0
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, #0x9000
	str r4, [r0, #0x464]
	mov r7, r4
	b _0211D9E8
_0211D9C4:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x540]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	str r7, [r0, #0x540]
	add r4, r4, #1
_0211D9E8:
	cmp r4, #6
	blt _0211D9C4
	ldr r4, _0211DA14 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r4]
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x23
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DA10: .word unk_02099F38
_0211DA14: .word unk_02099EB4
	arm_func_end FUN_ov44_0211d98c

	arm_func_start FUN_ov44_0211da18
FUN_ov44_0211da18: ; 0x0211DA18
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r10, r0
	add r0, r10, #0x9000
	ldr r0, [r0, #0x464]
	mov r5, #1
	cmp r0, #0
	bne _0211DDC8
	ldr r0, _0211DDF4 ; =0x02099F38
	mov r2, r5
	ldr r0, [r0]
	mov r1, #0xe
	bl FUN_ov16_02112724
	add r6, sp, #0x1c
	ldr r7, _0211DDF8 ; =0x02122604
	mov r4, r0
	mov r9, #0
	mov r8, r6
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1}
	stmia r6, {r0, r1}
	str r9, [sp, #0x18]
	str r9, [sp, #0x14]
	add r0, r10, #0x9000
	str r4, [r0, #0x464]
	str r9, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r1, #0xc8
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0x1f
	bl FUN_ov44_0211c80c
	str r9, [sp]
	mov r0, #0x90
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #0xc6
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0x12
	str r9, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r5, #0x8a
	mov r6, #0x43
	mov r7, #0xc4
	mov r11, r9
	b _0211DB34
_0211DAFC:
	add r0, sp, #0x14
	stmia sp, {r0, r5, r6}
	str r7, [sp, #0xc]
	ldr r1, [r8, r9, lsl #2]
	mov r0, r10
	mov r2, r4
	add r3, sp, #0x18
	bl FUN_ov44_0211c8dc
	add r0, r10, r9, lsl #2
	ldr r1, [sp, #0x14]
	add r0, r0, #0x9000
	str r1, [r0, #0x540]
	add r6, r6, #0x10
	add r9, r9, #1
_0211DB34:
	cmp r9, #6
	blt _0211DAFC
	str r11, [sp]
	mov r0, #0x88
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	mov r3, #0xc3
	str r3, [sp, #0xc]
	mov r8, #1
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r4
	mov r3, #0x13
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add r1, r10, #0x9000
	mov r0, r10
	str r11, [r1, #0x684]
	bl FUN_ov44_02120afc
	cmp r0, #0
	beq _0211DBA4
	add r0, r10, #0x9000
	ldr r1, [r0, #0x53c]
	cmp r1, #0
	ldreq r0, [r0, #0x538]
	cmpeq r0, #0
	beq _0211DBE0
_0211DBA4:
	add r0, r10, #0x9000
	str r8, [r0, #0x684]
	str r11, [sp]
	mov r0, #0x88
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	mov r0, #0xc5
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r4
	mov r3, #0x21
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
_0211DBE0:
	add r1, r10, #0x9000
	mov r0, r10
	str r11, [r1, #0x678]
	mov r5, #0x88
	bl FUN_ov44_02120afc
	cmp r0, #0
	beq _0211DC1C
	mov r0, r10
	bl FUN_ov44_02120b3c
	tst r0, #0x1000
	bne _0211DC1C
	mov r0, r10
	bl FUN_ov44_02121138
	cmp r0, #1
	bne _0211DC54
_0211DC1C:
	add r0, r10, #0x9000
	str r8, [r0, #0x678]
	str r11, [sp]
	str r5, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #0xc5
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r4
	mov r3, #0x21
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
_0211DC54:
	mov r9, r11
	mov r5, #0x88
	mov r6, #0x70
	mov r7, #0xc7
	b _0211DC94
_0211DC68:
	str r11, [sp]
	stmib sp, {r5, r6}
	str r7, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0x22
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add r6, r6, #0x10
	add r9, r9, #1
_0211DC94:
	cmp r9, #3
	blt _0211DC68
	mov r4, #0
	mov r9, r4
	sub r7, r7, #1
	mov r8, #0xd
	mov r5, #0x88
	mov r6, #0x40
	mov r11, r4
	b _0211DD00
_0211DCBC:
	str r6, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0211DDFC ; =0x02099EB4
	str r7, [sp, #0xc]
	ldr r0, [r0]
	mov r1, r11
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0210fba4
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	add r6, r6, #0x10
	add r9, r9, #1
_0211DD00:
	cmp r9, #6
	blt _0211DCBC
	str r6, [sp]
	mov r0, #0x38
	mov r1, r4, lsl #0x10
	str r0, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	ldr r4, _0211DDFC ; =0x02099EB4
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r2, r8
	mov r1, r1, lsr #0x10
	mov r3, #0x9a
	bl FUN_ov16_0210fba4
	mov r6, #0
	mov r9, #0x23
	mov r8, #0x33
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r5, #0xa8
	str r5, [sp, #8]
	sub r7, r7, #1
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0210fba4
	mov r3, r6
	add r6, r10, #0x9000
	str r0, [r6, #0x6bc]
	add r1, r8, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	str r5, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov16_0210fba4
	mov r1, r6
	str r0, [r1, #0x6c0]
	mov r0, r10
	mov r1, #1
	bl FUN_ov44_02120704
_0211DDC8:
	add r0, r10, #0x9000
	mov r4, #0xc3
	ldr r0, [r0, #0x6bc]
	mov r1, r4
	bl FUN_ov16_0210e694
	add r0, r10, #0x9000
	ldr r0, [r0, #0x6c0]
	mov r1, r4
	bl FUN_ov16_0210e694
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DDF4: .word unk_02099F38
_0211DDF8: .word ov44_02122604
_0211DDFC: .word unk_02099EB4
	arm_func_end FUN_ov44_0211da18

	arm_func_start FUN_ov44_0211de00
FUN_ov44_0211de00: ; 0x0211DE00
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xbc
	mov r9, r0
	add r2, r9, #0x9000
	mov r0, #0
	ldr r6, [r2, #0x628]
	add r3, sp, #0x9c
	mov r1, r0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3, {r0, r1}
	ldr r1, [r2, #0x464]
	ldr r0, _0211E580 ; =0x02121F68
	str r1, [sp, #0x9c]
	ldr r1, [r2, #0x470]
	ldr r7, [r0]
	str r1, [sp, #0xa0]
	ldr r1, [r2, #0x478]
	ldr r4, _0211E584 ; =0x021220CC
	str r1, [sp, #0xa4]
	ldr r1, [r2, #0x474]
	add r10, sp, #0x7c
	str r1, [sp, #0xa8]
	ldr r1, [r2, #0x488]
	str r7, [sp, #8]
	str r1, [sp, #0xb0]
	str r1, [sp, #0xb8]
	ldr r5, [r0, #4]
	ldmia r4!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia r10, {r0, r1, r2, r3}
	ldr r8, _0211E588 ; =0x02121F38
	add r0, sp, #8
	str r5, [sp, #0xc]
	ldr r0, [r0, r6, lsl #2]
	ldrh r1, [r8]
	str r0, [sp, #0x88]
	ldrh r0, [r8, #2]
	ldr r4, _0211E58C ; =0x02121FB4
	add r3, sp, #0x6c
	strh r1, [sp, #4]
	strh r0, [sp, #6]
	mov r2, #4
_0211DEB4:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _0211DEB4
	add r0, sp, #4
	mov r1, r6, lsl #1
	ldrsh r0, [r0, r1]
	ldr r4, _0211E590 ; =0x02121FC4
	add r3, sp, #0x5c
	strh r0, [sp, #0x72]
	mov r2, #4
_0211DEE8:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _0211DEE8
	add r0, r9, #0x9000
	ldr r7, [r0, #0x5bc]
	ldr r5, [r0, #0x5e0]
	ldr r4, [r0, #0x604]
	ldr r0, _0211E594 ; =0x02121FD4
	add r8, sp, #0x4c
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r10, _0211E598 ; =0x0212208C
	mov r5, r5, lsl #4
	mov r7, r7, lsl #4
	mov r4, r4, lsl #4
	add r5, r5, #0x48
	add r7, r7, #0x40
	add r4, r4, #0x20
	strh r5, [sp, #0x5e]
	add r8, sp, #0x2c
	ldmia r10!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldmia r10, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r5, _0211E59C ; =0x02121FF4
	strh r7, [sp, #0x5c]
	add r3, sp, #0x1c
	strh r4, [sp, #0x60]
	mov r2, #4
_0211DF68:
	ldrh r0, [r5, #2]
	ldrh r1, [r5], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _0211DF68
	add r0, r9, #0x9000
	ldr r7, [r0, #0x590]
	ldr r4, [r0, #0x594]
	add r2, sp, #0x5c
	mov r3, r7, lsl #1
	add r8, r4, #1
	ldrsh r2, [r2, r3]
	add r1, sp, #0x6c
	str r8, [r0, #0x594]
	ldr r10, _0211E5A0 ; =0x02099F38
	str r2, [sp]
	add r4, sp, #0x7c
	add r5, sp, #0x9c
	ldrsh r3, [r1, r3]
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	bl FUN_ov16_02113b78
	add r0, sp, #0x1c
	mov r1, r7, lsl #1
	ldrh r3, [r0, r1]
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	bl FUN_ov16_021139bc
	cmp r8, #3
	mov r0, #0
	bge _0211E050
	cmp r7, #3
	str r0, [sp]
	bne _0211E01C
	add r3, sp, #0x4c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	ldr r3, [r3, r6, lsl #3]
	bl FUN_ov16_0211401c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E01C:
	add r3, sp, #0x2c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	ldr r3, [r3, r7, lsl #2]
	bl FUN_ov16_0211401c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E050:
	cmp r8, #6
	mov r11, #1
	bge _0211E0CC
	cmp r7, #3
	mov r1, r0
	bne _0211E090
	add r0, sp, #0x4c
	str r1, [sp]
	add r3, r0, r6, lsl #3
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	ldr r3, [r3, #4]
	bl FUN_ov16_0211401c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E090:
	str r1, [sp]
	add r3, sp, #0x2c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	ldr r3, [r3, r7, lsl #2]
	bl FUN_ov16_0211401c
	str r11, [sp]
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113ec0
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E0CC:
	cmp r8, #9
	bge _0211E134
	cmp r7, #3
	str r0, [sp]
	bne _0211E100
	add r3, sp, #0x4c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	ldr r3, [r3, r6, lsl #3]
	bl FUN_ov16_0211401c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E100:
	add r3, sp, #0x2c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	ldr r3, [r3, r7, lsl #2]
	bl FUN_ov16_0211401c
	ldr r0, [r10]
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r7, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E134:
	addne sp, sp, #0xbc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x10]
	add r3, r9, #0x9000
	mov r4, #0
	str r4, [r3, #0x58c]
	str r4, [r3, #0x594]
	cmp r0, #1
	bne _0211E228
	ldr r0, _0211E5A4 ; =0x02121F9C
	add r4, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r0, [r3, #0x358]
	ldr r4, [r3, #0x5bc]
	cmp r0, #0xb
	bgt _0211E18C
	mov r0, r9
	bl FUN_ov44_02120b5c
	cmp r0, #0
	movne r0, r11
	bne _0211E190
_0211E18C:
	mov r0, #0
_0211E190:
	cmp r4, #5
	addls pc, pc, r4, lsl #2
	b _0211E578
_0211E19C: ; jump table
	b _0211E1B4 ; case 0
	b _0211E1C8 ; case 1
	b _0211E1DC ; case 2
	b _0211E208 ; case 3
	b _0211E208 ; case 4
	b _0211E208 ; case 5
_0211E1B4:
	mov r0, r9
	mov r1, #2
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1C8:
	mov r0, r9
	mov r1, #9
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1DC:
	cmp r0, #0
	mov r0, r9
	beq _0211E1F8
	mov r1, #8
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1F8:
	mov r1, #4
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E208:
	add r0, sp, #0x10
	sub r1, r4, #3
	ldr r1, [r0, r1, lsl #2]
	mov r0, r9
	mov r2, r1
	bl FUN_ov44_0211d450
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E228:
	cmp r0, #2
	bne _0211E2AC
	ldr r0, [r3, #0x5e0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211E578
_0211E240: ; jump table
	b _0211E250 ; case 0
	b _0211E268 ; case 1
	b _0211E280 ; case 2
	b _0211E298 ; case 3
_0211E250:
	mov r1, r11
	mov r0, r9
	mov r2, r1
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E268:
	mov r0, r9
	mov r1, #2
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E280:
	mov r0, r9
	mov r1, #3
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E298:
	mov r0, r9
	mov r1, #3
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E2AC:
	cmp r0, #3
	bne _0211E388
	ldr r0, [r3, #0x604]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211E578
_0211E2C4: ; jump table
	b _0211E2E0 ; case 0
	b _0211E2F8 ; case 1
	b _0211E310 ; case 2
	b _0211E328 ; case 3
	b _0211E340 ; case 4
	b _0211E358 ; case 5
	b _0211E370 ; case 6
_0211E2E0:
	mov r0, r9
	mov r1, #4
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E2F8:
	mov r0, r9
	mov r1, #5
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E310:
	mov r0, r9
	mov r1, #6
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E328:
	mov r0, r9
	mov r1, #7
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E340:
	mov r0, r9
	mov r1, #8
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E358:
	mov r0, r9
	mov r1, #9
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E370:
	mov r0, r9
	mov r1, #0xa
	mov r2, r11
	bl FUN_ov44_02120b9c
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E388:
	cmp r0, #6
	bne _0211E3AC
	mov r0, r9
	bl FUN_ov44_0211f038
	mov r0, r9
	mov r1, r4
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E3AC:
	cmp r0, #8
	bne _0211E3D0
	mov r0, r9
	bl FUN_ov44_0211f274
	mov r0, r9
	mov r1, r11
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E3D0:
	cmp r0, #4
	addne sp, sp, #0xbc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r3, #0x628]
	cmp r0, #0
	mov r0, r9
	bne _0211E3FC
	mov r1, r4
	bl FUN_ov44_0211ba34
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E3FC:
	bl FUN_ov44_02120afc
	mov r6, r0
	ldr r0, _0211E5A8 ; =0x02099ED8
	mov r1, r6
	ldr r0, [r0]
	mov r2, r4
	bl FUN_020554b0
	add r1, r9, #0x9000
	ldr r2, [r1, #0x598]
	ldr r1, [r1, #0x538]
	mov r7, r0
	mov r0, #0x6c
	add r1, r2, r1, lsl #4
	mla r2, r1, r0, r9
	mov r0, r6
	mov r1, r4
	ldrb r8, [r2, #0x96]
	bl FUN_ov16_020efa9c
	movs r10, r0
	beq _0211E478
	ldr r5, _0211E5AC ; =0x0209BA20
	b _0211E470
_0211E454:
	mov r0, r10
	mov r1, r4
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r5
	bl FUN_02074a2c
	add r4, r4, #1
_0211E470:
	cmp r4, #6
	blt _0211E454
_0211E478:
	cmp r8, #1
	mov r4, #0
	bne _0211E4E4
	ldr r0, _0211E5AC ; =0x0209BA20
	mov r1, r4
	mov r2, r6
	bl FUN_0204d2a4
	ldr r5, _0211E5A8 ; =0x02099ED8
	mov r1, r7
	ldr r0, [r5]
	mov r2, r11
	bl FUN_02055938
	ldr r0, [r5]
	mov r1, r7
	bl FUN_02055274
	ldr r5, _0211E5B0 ; =0x02099EC0
	mov r2, r4
	ldr r0, [r5]
	mov r1, r6
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r5]
	mov r2, r11
	bl FUN_02056e04
	ldr r0, [r5]
	mov r1, r11
	bl FUN_02057020
_0211E4E4:
	ldr r5, _0211E5AC ; =0x0209BA20
	mov r1, r4
	mov r0, r5
	mov r2, r6
	bl FUN_0204d354
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_0204d3c0
	add r0, r9, #0x9000
	ldr r0, [r0, #0x53c]
	mov r3, #0
	cmp r0, #0
	addeq r5, r9, #0x80
	addne r0, r9, #0x260
	addne r5, r0, #0x6000
	mov r0, #0x6c
	b _0211E550
_0211E52C:
	mul r2, r3, r0
	ldrh r1, [r5, r2]
	add r3, r3, #1
	cmp r6, r1
	streqh r4, [r5, r2]
	addeq r1, r5, r2
	streqh r4, [r1, #2]
	streq r4, [r1, #0xc]
	streq r4, [r1, #0x10]
_0211E550:
	cmp r3, #0x74
	blt _0211E52C
	ldr r3, _0211E5B4 ; =0x020A0640
	mov r1, #0
	strh r6, [r3, #0xa4]
	add r3, r9, #0x9000
	mov r0, r9
	mov r2, r1
	str r11, [r3, #0x674]
	bl FUN_ov44_0211d450
_0211E578:
	add sp, sp, #0xbc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E580: .word ov44_02121F68
_0211E584: .word ov44_021220CC
_0211E588: .word ov44_02121F38
_0211E58C: .word ov44_02121FB4
_0211E590: .word ov44_02121FC4
_0211E594: .word ov44_02121FD4
_0211E598: .word ov44_0212208C
_0211E59C: .word ov44_02121FF4
_0211E5A0: .word unk_02099F38
_0211E5A4: .word ov44_02121F9C
_0211E5A8: .word unk_02099ED8
_0211E5AC: .word unk_0209BA20
_0211E5B0: .word unk_02099EC0
_0211E5B4: .word unk_020A0640
	arm_func_end FUN_ov44_0211de00

	arm_func_start FUN_ov44_0211e5b8
FUN_ov44_0211e5b8: ; 0x0211E5B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	ldr r6, _0211E76C ; =0x02121FA8
	ldr r8, _0211E770 ; =0x02121F78
	ldrh r5, [r6, #6]
	add r0, r0, #0x9000
	ldrh r7, [r6, #0xa]
	strh r5, [sp, #0x3a]
	ldr r5, [r0, #0x604]
	strh r7, [sp, #0x3e]
	mov r7, r1
	mov r1, r5, lsl #4
	add r5, r1, #0x20
	ldrh r3, [r8, #8]
	ldrh r1, [r6]
	ldrh r12, [r8, #6]
	ldrh r9, [r8, #0xa]
	strh r3, [sp, #0x30]
	ldrh r3, [r6, #2]
	strh r1, [sp, #0x34]
	ldrh r1, [r6, #4]
	ldrh r4, [r6, #8]
	ldr r10, _0211E774 ; =0x02121F90
	strh r3, [sp, #0x36]
	ldrh r6, [r10]
	ldrh r3, [r10, #2]
	strh r1, [sp, #0x38]
	ldrh r1, [r10, #4]
	strh r9, [sp, #0x32]
	strh r5, [sp, #0x2c]
	strh r4, [sp, #0x3c]
	strh r6, [sp, #4]
	ldr r11, [r0, #0x5bc]
	strh r12, [sp, #0x2e]
	ldr r8, [r0, #0x5e0]
	mov r12, r11, lsl #4
	mov r11, r8, lsl #4
	add r8, r12, #0x40
	strh r8, [sp, #0x28]
	add r11, r11, #0x48
	ldr r9, [r0, #0x464]
	ldr r8, [r0, #0x470]
	ldr lr, [r0, #0x478]
	ldr r12, [r0, #0x488]
	ldr r5, _0211E778 ; =0x02122074
	add r4, sp, #0x10
	strh r11, [sp, #0x2a]
	mov r6, r2
	strh r3, [sp, #6]
	strh r1, [sp, #8]
	mov r11, r4
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	ldrh r2, [r10, #8]
	ldrh r1, [r10, #0xa]
	ldrh r3, [r10, #6]
	strh r2, [sp, #0xc]
	add r4, sp, #0x40
	mov r5, #0
	str r5, [r4]
	str r9, [sp, #0x40]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0x14]
	str r8, [sp, #0x44]
	add r9, sp, #0x28
	mov r2, r7, lsl #1
	strh r1, [sp, #0xe]
	ldrsh r1, [r9, r2]
	add r0, sp, #0x34
	strh r3, [sp, #0xa]
	ldrsh r3, [r0, r2]
	ldr r9, _0211E77C ; =0x02099F38
	str r1, [sp]
	str lr, [sp, #0x48]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r12, [sp, #0x54]
	ldr r0, [r9]
	ldr r1, [r4, r7, lsl #2]
	mov r2, #2
	add r8, sp, #4
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r9]
	ldr r1, [r4, r7, lsl #2]
	ldr r3, [r11, r7, lsl #2]
	mov r2, #2
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #1
	ldrh r3, [r8, r0]
	ldr r0, [r9]
	ldr r1, [r4, r7, lsl #2]
	mov r2, #2
	bl FUN_ov16_021139bc
	cmp r6, #0
	movne r5, #1
	add r1, sp, #0x40
	mov r2, #2
	ldr r0, _0211E77C ; =0x02099F38
	str r5, [sp]
	ldr r0, [r0]
	ldr r1, [r1, r7, lsl #2]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E76C: .word ov44_02121FA8
_0211E770: .word ov44_02121F78
_0211E774: .word ov44_02121F90
_0211E778: .word ov44_02122074
_0211E77C: .word unk_02099F38
	arm_func_end FUN_ov44_0211e5b8

	arm_func_start FUN_ov44_0211e780
FUN_ov44_0211e780: ; 0x0211E780
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x24
	mov r12, r0
	mov r0, #0
	mov lr, r1
	add r4, sp, #4
	mov r1, r0
	stmia r4!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r4!, {r0, r1}
	stmia r4, {r0, r1}
	add r1, r12, #0x9000
	ldr r4, [r1, #0x464]
	cmp r2, #0
	str r4, [sp, #4]
	ldr r4, [r1, #0x470]
	mov r12, #2
	str r4, [sp, #8]
	ldr r4, [r1, #0x478]
	str r4, [sp, #0xc]
	ldr r4, [r1, #0x488]
	str r4, [sp, #0x18]
	str r4, [sp, #0x20]
	beq _0211E804
	ldrh r3, [r3, #8]
	ldr r1, [r1, #0x6c4]
	mov r2, r0
	cmp r1, r3
	bne _0211E804
	cmp r1, #0xd
	blt _0211E804
	cmp r1, #0x12
	movle r2, #1
_0211E804:
	mov r1, #1
	cmp r2, #0
	moveq r1, #0
	str r1, [sp]
	ldr r0, _0211E838 ; =0x02099F38
	add r1, sp, #4
	ldr r0, [r0]
	ldr r1, [r1, lr, lsl #2]
	mov r2, r12
	mov r3, #2
	bl FUN_ov16_02113ec0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, pc}
_0211E838: .word unk_02099F38
	arm_func_end FUN_ov44_0211e780

	arm_func_start FUN_ov44_0211e83c
FUN_ov44_0211e83c: ; 0x0211E83C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x468]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211E880 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r2, #0
	ldr r1, _0211E884 ; =0x02099EB4
	str r2, [r0, #0x468]
	ldr r0, [r1]
	mov r1, #0x14
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211E880: .word unk_02099F38
_0211E884: .word unk_02099EB4
	arm_func_end FUN_ov44_0211e83c

	arm_func_start FUN_ov44_0211e888
FUN_ov44_0211e888: ; 0x0211E888
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	add r1, r0, #0x9000
	ldr r1, [r1, #0x468]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	mov r6, #0
	str r1, [sp, #4]
	mov r1, #0x14
	str r1, [sp, #8]
	mov r4, #0x64
	mov r3, r6
	mov r1, #0xe
	mov r2, #6
	str r4, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov44_0211e888

	arm_func_start FUN_ov44_0211e940
FUN_ov44_0211e940: ; 0x0211E940
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x46c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211E984 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r2, #0
	ldr r1, _0211E988 ; =0x02099EB4
	str r2, [r0, #0x46c]
	ldr r0, [r1]
	mov r1, #0x15
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211E984: .word unk_02099F38
_0211E988: .word unk_02099EB4
	arm_func_end FUN_ov44_0211e940

	arm_func_start FUN_ov44_0211e98c
FUN_ov44_0211e98c: ; 0x0211E98C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	add r1, r0, #0x9000
	ldr r1, [r1, #0x46c]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	mov r7, #2
	str r1, [sp, #4]
	mov r1, #0x15
	str r1, [sp, #8]
	mov r4, #0x63
	mov r3, r7
	mov r1, #0xf
	mov r2, #6
	str r4, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r5
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov44_0211e98c

	arm_func_start FUN_ov44_0211ea48
FUN_ov44_0211ea48: ; 0x0211EA48
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x48c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211EA8C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r2, #0
	ldr r1, _0211EA90 ; =0x02099EB4
	str r2, [r0, #0x48c]
	ldr r0, [r1]
	mov r1, #0x37
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211EA8C: .word unk_02099F38
_0211EA90: .word unk_02099EB4
	arm_func_end FUN_ov44_0211ea48

	arm_func_start FUN_ov44_0211ea94
FUN_ov44_0211ea94: ; 0x0211EA94
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	add r1, r0, #0x9000
	ldr r1, [r1, #0x48c]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r6, #0
	str r6, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #0x37
	str r1, [sp, #8]
	mov r4, #0x63
	mov r3, r6
	mov r1, #0x17
	mov r2, #0xe
	str r4, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov44_0211ea94

	arm_func_start FUN_ov44_0211eb48
FUN_ov44_0211eb48: ; 0x0211EB48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x9000
	ldr r1, [r0, #0x470]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211EBC8 ; =0x02099F38
	mov r4, #0
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, #0x9000
	str r4, [r0, #0x470]
	mov r7, r4
	b _0211EBAC
_0211EB80:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x558]
	cmp r1, #0
	beq _0211EBA8
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	str r7, [r0, #0x558]
_0211EBA8:
	add r4, r4, #1
_0211EBAC:
	cmp r4, #4
	blt _0211EB80
	ldr r0, _0211EBCC ; =0x02099EB4
	mov r1, #4
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EBC8: .word unk_02099F38
_0211EBCC: .word unk_02099EB4
	arm_func_end FUN_ov44_0211eb48

	arm_func_start FUN_ov44_0211ebd0
FUN_ov44_0211ebd0: ; 0x0211EBD0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	add r0, r10, #0x9000
	ldr r0, [r0, #0x470]
	cmp r0, #0
	bne _0211ED94
	ldr r0, _0211EDC0 ; =0x02099F38
	mov r2, #1
	ldr r0, [r0]
	mov r1, #7
	bl FUN_ov16_02112724
	ldr r1, _0211EDC4 ; =0x021225F4
	mov r9, #0
	mov r4, r0
	add r11, sp, #0x1c
	ldmia r1, {r0, r1, r2, r3}
	stmia r11, {r0, r1, r2, r3}
	str r9, [sp, #0x18]
	str r9, [sp, #0x14]
	add r0, r10, #0x9000
	str r4, [r0, #0x470]
	mov r2, #0x58
	str r9, [sp]
	str r2, [sp, #4]
	mov r1, #0x40
	str r1, [sp, #8]
	mov r5, #0xaf
	str r5, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0x20
	mov r8, #0x16
	bl FUN_ov44_0211c80c
	mov r0, #1
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0x48
	str r0, [sp, #8]
	sub r7, r5, #1
	str r7, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0x12
	str r9, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r5, #0x61
	mov r6, #0x4b
	sub r7, r7, #1
	b _0211ECE4
_0211ECAC:
	add r0, sp, #0x14
	stmia sp, {r0, r5, r6}
	str r7, [sp, #0xc]
	ldr r1, [r11, r9, lsl #2]
	mov r0, r10
	mov r2, r4
	add r3, sp, #0x18
	bl FUN_ov44_0211c8dc
	add r0, r10, r9, lsl #2
	ldr r1, [sp, #0x14]
	add r0, r0, #0x9000
	add r6, r6, #0x10
	str r1, [r0, #0x558]
	add r9, r9, #1
_0211ECE4:
	cmp r9, #4
	blt _0211ECAC
	mov r0, #1
	str r0, [sp]
	mov r5, #0x60
	str r5, [sp, #4]
	mov r6, #0x48
	mov r1, r4
	str r6, [sp, #8]
	sub r3, r7, #1
	str r3, [sp, #0xc]
	mov r4, #1
	add r2, sp, #0x18
	mov r0, r10
	mov r3, #0x13
	str r4, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, #4
	mov r7, #0xca
	mov r9, #0
	mov r4, r0
	ldr r11, _0211EDC8 ; =0x02099EB4
	b _0211ED80
_0211ED40:
	str r6, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r11]
	mov r1, r4
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0210fba4
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	add r6, r6, #0x10
	add r9, r9, #1
_0211ED80:
	cmp r9, #4
	blt _0211ED40
	mov r0, r10
	mov r1, #2
	bl FUN_ov44_02120704
_0211ED94:
	add r0, r10, #0x9000
	mov r4, #0xc9
	ldr r0, [r0, #0x6bc]
	mov r1, r4
	bl FUN_ov16_0210e694
	add r0, r10, #0x9000
	ldr r0, [r0, #0x6c0]
	mov r1, r4
	bl FUN_ov16_0210e694
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EDC0: .word unk_02099F38
_0211EDC4: .word ov44_021225F4
_0211EDC8: .word unk_02099EB4
	arm_func_end FUN_ov44_0211ebd0

	arm_func_start FUN_ov44_0211edcc
FUN_ov44_0211edcc: ; 0x0211EDCC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x474]
	cmp r1, #0
	beq _0211EDFC
	ldr r0, _0211EE44 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x474]
_0211EDFC:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x584]
	cmp r1, #0
	beq _0211EE24
	ldr r0, _0211EE44 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x584]
_0211EE24:
	ldr r4, _0211EE48 ; =0x02099EB4
	mov r1, #0x1a
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #0x1b
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_0211EE44: .word unk_02099F38
_0211EE48: .word unk_02099EB4
	arm_func_end FUN_ov44_0211edcc

	arm_func_start FUN_ov44_0211ee4c
FUN_ov44_0211ee4c: ; 0x0211EE4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r10, r0
	add r0, r10, #0x9000
	ldr r0, [r0, #0x474]
	cmp r0, #0
	bne _0211F000
	ldr r0, _0211F02C ; =0x02099F38
	mov r1, #4
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r2, #0
	mov r9, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r3, #0xaf
	mov r0, #0x10
_0211EE94:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211EE94
	add r0, r10, #0x9000
	str r9, [r0, #0x474]
	mov r8, #0
	str r8, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	add r6, sp, #0x14
	str r3, [sp, #0xc]
	mov r7, #1
	mov r0, r10
	mov r1, r9
	mov r2, r6
	str r7, [sp, #0x10]
	mov r3, #0x23
	bl FUN_ov44_0211c80c
	str r8, [sp]
	mov r11, #0x38
	str r11, [sp, #4]
	mov r4, #0x68
	str r4, [sp, #8]
	mov r5, #0xae
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, #0xc
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, #2
	str r0, [sp]
	mov r0, #0x98
	stmib sp, {r0, r4}
	str r5, [sp, #0xc]
	mov r3, #0xc
	mov r0, r10
	mov r1, r9
	mov r2, r6
	str r7, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, r10
	bl FUN_ov44_02120b1c
	add r7, sp, #0x18
	mov r2, r0
	ldr r1, _0211F030 ; =0x0212271C
	mov r0, r7
	bl sprintf
	add r0, r10, #0x184
	add r0, r0, #0x9400
	stmia sp, {r0, r8}
	mov r0, #0x4a
	str r0, [sp, #8]
	mov r1, r7
	mov r2, r9
	mov r3, r6
	str r5, [sp, #0xc]
	mov r0, r10
	bl FUN_ov44_0211c8dc
	mov r9, #4
	str r4, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r7, #0x18
	str r7, [sp, #8]
	mov r6, #0xcb
	ldr r5, _0211F034 ; =0x02099EB4
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r3, r11
	mov r2, #0x1a
	mov r1, r9
	bl FUN_ov16_0210fba4
	stmia sp, {r4, r8}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r3, #0x98
	mov r2, #0x1b
	mov r1, r9
	bl FUN_ov16_0210fba4
	mov r1, r9
	mov r0, r10
	bl FUN_ov44_02120704
_0211F000:
	add r0, r10, #0x9000
	mov r4, #0xca
	ldr r0, [r0, #0x6bc]
	mov r1, r4
	bl FUN_ov16_0210e694
	add r0, r10, #0x9000
	ldr r0, [r0, #0x6c0]
	mov r1, r4
	bl FUN_ov16_0210e694
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F02C: .word unk_02099F38
_0211F030: .word ov44_0212271C
_0211F034: .word unk_02099EB4
	arm_func_end FUN_ov44_0211ee4c

	arm_func_start FUN_ov44_0211f038
FUN_ov44_0211f038: ; 0x0211F038
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x488]
	cmp r1, #0
	beq _0211F084
	ldr r0, _0211F0B0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r1, #0
	ldr r5, _0211F0B4 ; =0x02099EB4
	str r1, [r0, #0x488]
	ldr r0, [r5]
	mov r1, #4
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #0x23
	bl FUN_ov16_0210eb3c
_0211F084:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x588]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211F0B0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x588]
	ldmfd sp!, {r3, r4, r5, pc}
_0211F0B0: .word unk_02099F38
_0211F0B4: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f038

	arm_func_start FUN_ov44_0211f0b8
FUN_ov44_0211f0b8: ; 0x0211F0B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x58
	mov r8, r0
	add r0, r8, #0x9000
	ldr r0, [r0, #0x488]
	cmp r0, #0
	bne _0211F250
	ldr r0, _0211F268 ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r2, #0
	mov r7, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r3, #0xaf
	mov r0, #0x10
_0211F100:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211F100
	add r0, r8, #0x9000
	str r7, [r0, #0x488]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	add r10, sp, #0x14
	str r3, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r10
	mov r3, #0x24
	bl FUN_ov44_0211c80c
	str r6, [sp]
	mov r4, #0x68
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r5, #0xae
	str r5, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r10
	mov r3, #0xd
	str r6, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, r8
	bl FUN_ov44_02120b1c
	add r9, sp, #0x18
	mov r2, r0
	ldr r1, _0211F26C ; =0x0212273C
	mov r0, r9
	bl sprintf
	add r0, r8, #0x188
	add r0, r0, #0x9400
	stmia sp, {r0, r6}
	mov r0, #0x48
	str r0, [sp, #8]
	mov r1, r9
	mov r2, r7
	mov r3, r10
	str r5, [sp, #0xc]
	mov r0, r8
	bl FUN_ov44_0211c8dc
	str r4, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x18
	mov r3, r4
	str r0, [sp, #8]
	mov r5, #0xcb
	ldr r4, _0211F270 ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x36
	bl FUN_ov16_0210fba4
	mov r0, r8
	mov r1, #5
	bl FUN_ov44_02120704
	sub r0, r5, #1
	str r6, [sp]
	mov r5, #0x100
	str r5, [sp, #4]
	mov r5, #0xc0
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r6
	mov r1, #0x23
	mov r2, #0x33
	bl FUN_ov16_0210fba4
	add r1, r8, #0x9000
	str r0, [r1, #0x6bc]
_0211F250:
	add r0, r8, #0x9000
	ldr r0, [r0, #0x6bc]
	mov r1, #0xca
	bl FUN_ov16_0210e694
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F268: .word unk_02099F38
_0211F26C: .word ov44_0212273C
_0211F270: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f0b8

	arm_func_start FUN_ov44_0211f274
FUN_ov44_0211f274: ; 0x0211F274
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x488]
	cmp r1, #0
	beq _0211F2B4
	ldr r0, _0211F2E0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r2, #0
	ldr r1, _0211F2E4 ; =0x02099EB4
	str r2, [r0, #0x488]
	ldr r0, [r1]
	mov r1, #4
	bl FUN_ov16_0210eb3c
_0211F2B4:
	add r0, r4, #0x9000
	ldr r1, [r0, #0x588]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211F2E0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x588]
	ldmfd sp!, {r4, pc}
_0211F2E0: .word unk_02099F38
_0211F2E4: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f274

	arm_func_start FUN_ov44_0211f2e8
FUN_ov44_0211f2e8: ; 0x0211F2E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x58
	mov r8, r0
	add r0, r8, #0x9000
	ldr r0, [r0, #0x488]
	cmp r0, #0
	bne _0211F480
	ldr r0, _0211F498 ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r2, #0
	mov r7, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r3, #0xaf
	mov r0, #0x10
_0211F330:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211F330
	add r0, r8, #0x9000
	str r7, [r0, #0x488]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	add r10, sp, #0x14
	str r3, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r10
	mov r3, #0x24
	bl FUN_ov44_0211c80c
	str r6, [sp]
	mov r4, #0x68
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r5, #0xae
	str r5, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r10
	mov r3, #0xd
	str r6, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, r8
	bl FUN_ov44_02120b1c
	add r9, sp, #0x18
	mov r2, r0
	ldr r1, _0211F49C ; =0x0212275C
	mov r0, r9
	bl sprintf
	add r0, r8, #0x188
	add r0, r0, #0x9400
	stmia sp, {r0, r6}
	mov r0, #0x48
	str r0, [sp, #8]
	mov r1, r9
	mov r2, r7
	mov r3, r10
	str r5, [sp, #0xc]
	mov r0, r8
	bl FUN_ov44_0211c8dc
	str r4, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x18
	mov r3, r4
	str r0, [sp, #8]
	mov r5, #0xcb
	ldr r4, _0211F4A0 ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x36
	bl FUN_ov16_0210fba4
	mov r0, r8
	mov r1, #5
	bl FUN_ov44_02120704
	sub r0, r5, #1
	str r6, [sp]
	mov r5, #0x100
	str r5, [sp, #4]
	mov r5, #0xc0
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r6
	mov r1, #0x23
	mov r2, #0x33
	bl FUN_ov16_0210fba4
	add r1, r8, #0x9000
	str r0, [r1, #0x6bc]
_0211F480:
	add r0, r8, #0x9000
	ldr r0, [r0, #0x6bc]
	mov r1, #0xca
	bl FUN_ov16_0210e694
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F498: .word unk_02099F38
_0211F49C: .word ov44_0212275C
_0211F4A0: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f2e8

	arm_func_start FUN_ov44_0211f4a4
FUN_ov44_0211f4a4: ; 0x0211F4A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0x9000
	ldr r1, [r0, #0x478]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211F524 ; =0x02099F38
	mov r4, #0
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, #0x9000
	str r4, [r0, #0x478]
	mov r7, r4
	b _0211F508
_0211F4DC:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x568]
	cmp r1, #0
	beq _0211F504
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x9000
	str r7, [r0, #0x568]
_0211F504:
	add r4, r4, #1
_0211F508:
	cmp r4, #7
	blt _0211F4DC
	ldr r0, _0211F528 ; =0x02099EB4
	mov r1, #8
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F524: .word unk_02099F38
_0211F528: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f4a4

	arm_func_start FUN_ov44_0211f52c
FUN_ov44_0211f52c: ; 0x0211F52C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	add r0, r10, #0x9000
	ldr r0, [r0, #0x478]
	cmp r0, #0
	bne _0211F6FC
	ldr r0, _0211F728 ; =0x02099F38
	mov r2, #1
	ldr r0, [r0]
	mov r1, #0xa
	bl FUN_ov16_02112724
	add r6, sp, #0x1c
	ldr r7, _0211F72C ; =0x0212261C
	mov r4, r0
	mov r11, r6
	mov r9, #0
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	str r9, [sp, #0x18]
	str r9, [sp, #0x14]
	add r5, r10, #0x9000
	mov r12, #0x28
	mov lr, #0x18
	str r4, [r5, #0x478]
	mov r0, #1
	stmia sp, {r0, r12, lr}
	mov r0, #0x96
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r3, #0x20
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r8, #0x1c
	bl FUN_ov44_0211c80c
	mov r0, #0x96
	sub r7, r0, #1
	mov r0, #1
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x18
	mov r3, #0x12
	str r9, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r5, #0x31
	mov r6, #0x23
	sub r7, r7, #1
	b _0211F64C
_0211F614:
	add r0, sp, #0x14
	stmia sp, {r0, r5, r6}
	str r7, [sp, #0xc]
	ldr r1, [r11, r9, lsl #2]
	mov r0, r10
	mov r2, r4
	add r3, sp, #0x18
	bl FUN_ov44_0211c8dc
	add r0, r10, r9, lsl #2
	ldr r1, [sp, #0x14]
	add r0, r0, #0x9000
	add r6, r6, #0x10
	str r1, [r0, #0x568]
	add r9, r9, #1
_0211F64C:
	cmp r9, #7
	blt _0211F614
	mov r0, #1
	str r0, [sp]
	mov r5, #0x30
	str r5, [sp, #4]
	mov r6, #0x20
	mov r1, r4
	str r6, [sp, #8]
	sub r3, r7, #1
	str r3, [sp, #0xc]
	mov r4, #1
	add r2, sp, #0x18
	mov r0, r10
	mov r3, #0x13
	str r4, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, #8
	mov r7, #0xcc
	mov r9, #0
	mov r4, r0
	ldr r11, _0211F730 ; =0x02099EB4
	b _0211F6E8
_0211F6A8:
	str r6, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r11]
	mov r1, r4
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0210fba4
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	add r6, r6, #0x10
	add r9, r9, #1
_0211F6E8:
	cmp r9, #7
	blt _0211F6A8
	mov r0, r10
	mov r1, #3
	bl FUN_ov44_02120704
_0211F6FC:
	add r0, r10, #0x9000
	mov r4, #0xcb
	ldr r0, [r0, #0x6bc]
	mov r1, r4
	bl FUN_ov16_0210e694
	add r0, r10, #0x9000
	ldr r0, [r0, #0x6c0]
	mov r1, r4
	bl FUN_ov16_0210e694
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F728: .word unk_02099F38
_0211F72C: .word ov44_0212261C
_0211F730: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f52c

	arm_func_start FUN_ov44_0211f734
FUN_ov44_0211f734: ; 0x0211F734
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x9000
	ldr r1, [r0, #0x494]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, _0211F800 ; =0x02099F38
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r1, r5, #0x9000
	mov r4, #0
	str r4, [r1, #0x494]
	ldr r0, [r6]
	ldr r1, [r1, #0x498]
	bl FUN_ov16_021128c4
	add r1, r5, #0x9000
	str r4, [r1, #0x498]
	ldr r0, [r6]
	ldr r1, [r1, #0x49c]
	bl FUN_ov16_021128c4
	add r1, r5, #0x9000
	str r4, [r1, #0x49c]
	ldr r0, [r6]
	ldr r1, [r1, #0x4a0]
	bl FUN_ov16_021128c4
	add r1, r5, #0x9000
	str r4, [r1, #0x4a0]
	ldr r0, [r6]
	ldr r1, [r1, #0x4a4]
	bl FUN_ov16_021128c4
	add r0, r5, #0x9000
	ldr r6, _0211F804 ; =0x02099EB4
	str r4, [r0, #0x4a4]
	ldr r0, [r6]
	mov r1, #0x38
	bl FUN_ov16_0210eab4
	ldr r0, [r6]
	mov r1, #0x39
	bl FUN_ov16_0210eab4
	ldr r0, [r6]
	mov r1, #0x3a
	bl FUN_ov16_0210eab4
	ldr r0, [r6]
	mov r1, #0x3b
	bl FUN_ov16_0210eab4
	ldr r0, [r6]
	mov r1, #0x23
	bl FUN_ov16_0210eb3c
	mov r0, r5
	bl FUN_ov44_0211fb14
	ldmfd sp!, {r4, r5, r6, pc}
_0211F800: .word unk_02099F38
_0211F804: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f734

	arm_func_start FUN_ov44_0211f808
FUN_ov44_0211f808: ; 0x0211F808
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r6, r0
	add r0, r6, #0x9000
	ldr r0, [r0, #0x494]
	mov r4, #0
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211FB0C ; =0x02099F38
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r4, [sp, #0x14]
	add r0, r6, #0x9000
	str r4, [r0, #0x67c]
	str r1, [r0, #0x494]
	str r4, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r7, #0x38
	str r7, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r6
	mov r3, #0x25
	str r5, [sp, #0x10]
	bl FUN_ov44_0211c80c
	mov r0, #0x78
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r1, #0x64
	str r1, [sp, #0xc]
	mov r0, r6
	mov r3, r4
	mov r1, #0x1a
	mov r2, #0x10
	bl FUN_ov44_0211ae3c
	movs r7, r0
	beq _0211F910
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r5
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e720
_0211F910:
	mov r0, #0xa8
	str r0, [sp]
	mov r0, #0x60
	mov r8, #2
	str r0, [sp, #4]
	mov r1, #0x39
	str r1, [sp, #8]
	mov r5, #0x64
	mov r0, r6
	mov r3, r8
	mov r1, #0x1b
	mov r2, #0x10
	str r5, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r7, r0
	beq _0211F9A4
	mov r5, #1
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r8
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r4
	mov r3, r4
	mov r2, #3
	bl FUN_ov16_0210e720
_0211F9A4:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r1, #0x3a
	str r1, [sp, #8]
	mov r5, #0x64
	mov r0, r6
	mov r3, r4
	mov r1, #0x1c
	mov r2, #0xf
	str r5, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r7, r0
	beq _0211FA34
	mov r5, #1
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3e
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r5
	mov r1, r4
	mov r3, r4
	bl FUN_ov16_0210e720
_0211FA34:
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0x50
	mov r8, #2
	str r0, [sp, #4]
	mov r1, #0x3b
	str r1, [sp, #8]
	mov r5, #0x64
	mov r0, r6
	mov r3, r8
	mov r1, #0x1d
	mov r2, #0xf
	str r5, [sp, #0xc]
	bl FUN_ov44_0211ae3c
	movs r7, r0
	beq _0211FAC8
	mov r5, #1
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r4
	mov r2, r8
	mov r3, r4
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r4
	mov r2, r5
	mov r3, r4
	add r0, r7, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r4
	mov r3, r4
	mov r2, #3
	bl FUN_ov16_0210e720
_0211FAC8:
	mov r0, r6
	bl FUN_ov44_0211fb4c
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r4, #0x258
	ldr r0, _0211FB10 ; =0x02099EB4
	str r4, [sp, #0xc]
	ldr r0, [r0]
	mov r1, #0x23
	mov r2, #0x3c
	bl FUN_ov16_0210fba4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FB0C: .word unk_02099F38
_0211FB10: .word unk_02099EB4
	arm_func_end FUN_ov44_0211f808

	arm_func_start FUN_ov44_0211fb14
FUN_ov44_0211fb14: ; 0x0211FB14
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x4a8]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211FB48 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x4a8]
	ldmfd sp!, {r4, pc}
_0211FB48: .word unk_02099F38
	arm_func_end FUN_ov44_0211fb14

	arm_func_start FUN_ov44_0211fb4c
FUN_ov44_0211fb4c: ; 0x0211FB4C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	add r0, r6, #0x9000
	ldr r0, [r0, #0x4a8]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211FC04 ; =0x02099F38
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r4, r0
	mov r1, #0
	mov r0, r6
	str r1, [sp, #0x14]
	bl FUN_ov44_02120b7c
	add r1, r6, #0x9000
	ldr r2, [r1, #0x67c]
	sub r0, r0, #1
	add r12, r2, r0
	ldr r2, _0211FC08 ; =0x66666667
	str r4, [r1, #0x4a8]
	smull r1, r3, r2, r12
	mov r0, r12, lsr #0x1f
	add r3, r0, r3, asr #3
	mov r1, r4
	mov r4, #0x14
	smull r2, r3, r4, r3
	sub r3, r12, r2
	str r3, [sp]
	mov r2, #0x70
	str r2, [sp, #4]
	mov r2, #0x50
	str r2, [sp, #8]
	mov r2, #0x7c
	str r2, [sp, #0xc]
	mov r0, r6
	add r2, sp, #0x14
	mov r3, #0x19
	str r5, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0211FC04: .word unk_02099F38
_0211FC08: .word 0x66666667
	arm_func_end FUN_ov44_0211fb4c

	arm_func_start FUN_ov44_0211fc0c
FUN_ov44_0211fc0c: ; 0x0211FC0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r4, r0
	add lr, r4, #0x9000
	ldr r2, [lr, #0x67c]
	ldr r11, _0211FCB4 ; =0x66666667
	add r7, r2, #0x13
	smull r3, r8, r11, r7
	ldr r6, _0211FCB8 ; =0x02121F3C
	add r5, r2, #1
	mov r2, r7, lsr #0x1f
	add r8, r2, r8, asr #3
	ldrh r10, [r6]
	ldrh r9, [r6, #2]
	mov r3, r5, lsr #0x1f
	smull r12, r6, r11, r5
	mov r2, #0x14
	add r6, r3, r6, asr #3
	smull r3, r8, r2, r8
	sub r8, r7, r3
	smull r3, r6, r2, r6
	sub r6, r5, r3
	add r2, sp, #0
	str r8, [sp]
	str r6, [sp, #4]
	ldr r2, [r2, r1, lsl #2]
	add r3, sp, #8
	strh r10, [sp, #8]
	strh r9, [sp, #0xa]
	mov r1, r1, lsl #1
	ldrh r1, [r3, r1]
	str r2, [lr, #0x67c]
	bl FUN_ov44_0211af94
	ldr r0, _0211FCBC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov44_0211fb14
	mov r0, r4
	bl FUN_ov44_0211fb4c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FCB4: .word 0x66666667
_0211FCB8: .word ov44_02121F3C
_0211FCBC: .word gL5Sound
	arm_func_end FUN_ov44_0211fc0c

	arm_func_start FUN_ov44_0211fcc0
FUN_ov44_0211fcc0: ; 0x0211FCC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	bl FUN_ov44_02120b7c
	add r3, r10, #0x9000
	ldr r1, [r3, #0x67c]
	ldr r2, _0211FDCC ; =0x66666667
	add r4, r0, r1
	smull r1, r5, r2, r4
	str r0, [sp, #4]
	mov r0, r4, lsr #0x1f
	add r5, r0, r5, asr #3
	mov r2, #0x14
	smull r0, r1, r2, r5
	sub r5, r4, r0
	ands r7, r5, #0xff
	ldr r1, [r3, #0x598]
	ldr r0, [r3, #0x538]
	moveq r7, r2
	add r0, r1, r0, lsl #4
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, r7
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	mov r11, #1
	mov r6, r8
	mov r4, #0x6c
_0211FD34:
	mul r9, r8, r4
	add r0, r10, r9
	ldrh r0, [r0, #0x80]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _0211FD80
	mov r1, r11
	bl FUN_0206d9b0
	cmp r7, r0
	bne _0211FD80
	ldr r1, [sp, #4]
	mov r0, r5
	mov r2, r11
	bl FUN_0206d9cc
	ldr r0, [sp, #4]
	add r1, r10, r9
	strb r0, [r1, #0x88]
	b _0211FD8C
_0211FD80:
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211FD34
_0211FD8C:
	mov r0, r10
	bl FUN_ov44_02120afc
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r4, #1
	mov r1, r7
	mov r2, r4
	bl FUN_0206d9cc
	ldr r0, [sp]
	mov r1, #0x6c
	mla r1, r0, r1, r10
	strb r7, [r1, #0x88]
	add r0, r10, #0x9000
	str r4, [r0, #0x680]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FDCC: .word 0x66666667
	arm_func_end FUN_ov44_0211fcc0

	arm_func_start FUN_ov44_0211fdd0
FUN_ov44_0211fdd0: ; 0x0211FDD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x9000
	ldr r1, [r0, #0x490]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211FE04 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x9000
	mov r1, #0
	str r1, [r0, #0x490]
	ldmfd sp!, {r4, pc}
_0211FE04: .word unk_02099F38
	arm_func_end FUN_ov44_0211fdd0

	arm_func_start FUN_ov44_0211fe08
FUN_ov44_0211fe08: ; 0x0211FE08
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r7, r0
	mov r5, #0
	str r5, [sp, #0x14]
	add r0, r7, #0x9000
	sub r6, r1, #1
	ldr r1, [r0, #0x490]
	cmp r1, #0
	bne _0211FE88
	ldr r0, _0211FEAC ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_02112724
	mov r1, r0
	add r0, r7, #0x9000
	str r1, [r0, #0x490]
	str r6, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	ldr r0, _0211FEB0 ; =0x000001F2
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r7
	mov r3, #0x1e
	str r4, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211FE88:
	add r2, r5, #1
	str r2, [sp, #0x14]
	ldr r0, _0211FEAC ; =0x02099F38
	str r5, [sp]
	ldr r0, [r0]
	mov r3, r6
	bl FUN_ov16_0211401c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211FEAC: .word unk_02099F38
_0211FEB0: .word 0x000001F2
	arm_func_end FUN_ov44_0211fe08

	arm_func_start FUN_ov44_0211feb4
FUN_ov44_0211feb4: ; 0x0211FEB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0xac
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x9400
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0x9000
	str r4, [r0, #0x52c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov44_0211feb4

	arm_func_start FUN_ov44_0211fee0
FUN_ov44_0211fee0: ; 0x0211FEE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r8, r0
	mov r6, r7
	mov r5, r7
	ldr r4, _0211FF6C ; =0x02099F38
	b _0211FF50
_0211FEFC:
	add r0, r8, r7, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x4ac]
	cmp r1, #0
	beq _0211FF24
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r8, r7, lsl #2
	add r0, r0, #0x9000
	str r6, [r0, #0x4ac]
_0211FF24:
	add r0, r8, r7, lsl #2
	add r0, r0, #0x9000
	ldr r1, [r0, #0x4ec]
	cmp r1, #0
	beq _0211FF4C
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #2
	add r0, r0, #0x9000
	str r5, [r0, #0x4ec]
_0211FF4C:
	add r7, r7, #1
_0211FF50:
	cmp r7, #0x10
	blt _0211FEFC
	ldr r0, _0211FF70 ; =0x02099EB4
	mov r1, #0x10
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211FF6C: .word unk_02099F38
_0211FF70: .word unk_02099EB4
	arm_func_end FUN_ov44_0211fee0

	arm_func_start FUN_ov44_0211ff74
FUN_ov44_0211ff74: ; 0x0211FF74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x5c
	mov r2, #0
	mov r9, r0
	str r2, [sp, #0x58]
	str r2, [sp, #0x54]
	add r1, r9, #0x9000
	ldr r3, [r1, #0x538]
	mov r11, #1
	cmp r3, #0
	ldreq r1, [r1, #0x53c]
	mov r4, #0x35
	cmpeq r1, #0
	bne _0211FFB8
	mov r1, #0x14
	mov r3, r11
	b _0211FFC8
_0211FFB8:
	mov r2, #2
	mov r0, r9
	mov r3, r2
	mov r1, #0x14
_0211FFC8:
	str r4, [sp]
	bl FUN_ov44_0211afac
	mov r0, #0
	b _02120598
_0211FFD8:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #0x78
	mul r1, r0, r1
	add r0, r1, #0x14
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x2c]
	add r0, r9, #0xbc
	str r0, [sp, #0x34]
	mov r0, #0
	add r0, r0, #3
	str r0, [sp, #0x44]
	mov r0, #0
	add r0, r0, #2
	str r0, [sp, #0x40]
	mov r0, #0
	add r0, r0, #1
	str r0, [sp, #0x3c]
	mvn r0, #0
	str r0, [sp, #0x4c]
	mov r0, r1
	add r0, r0, #8
	str r0, [sp, #0x28]
	mov r0, r1
	add r0, r0, #0x70
	str r0, [sp, #0x38]
	mov r0, r1
	add r0, r0, #0x78
	str r0, [sp, #0x48]
	mov r0, r1
	add r0, r0, #0x31
	str r0, [sp, #0x30]
	add r0, r9, #0x9000
	str r1, [sp, #0x24]
	str r0, [sp, #0x50]
	b _02120584
_02120070:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r5, r1, r0, lsl #3
	ldr r0, [sp, #0x50]
	ldr r1, [r0, #0x538]
	ldr r0, [sp, #0x14]
	add r4, r5, r1, lsl #4
	mov r7, r0, lsl #4
	mov r0, #0
	str r0, [sp, #0x58]
	mov r0, #0x6c
	mla r0, r4, r0, r9
	ldrb r0, [r0, #0x95]
	cmp r0, #1
	add r0, r9, r5, lsl #2
	add r0, r0, #0x9000
	ldr r0, [r0, #0x4ac]
	bne _0212049C
	cmp r0, #0
	addne sp, sp, #0x5c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _021205B0 ; =0x02099F38
	mov r1, #0xa
	ldr r0, [r0]
	mov r2, r11
	bl FUN_ov16_02112724
	add r1, r9, r5, lsl #2
	add r1, r1, #0x9000
	str r0, [r1, #0x4ac]
	mov r6, r0
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	cmp r4, #0x10
	str r0, [sp, #0x1c]
	add r10, r7, #0x20
	mov r8, #0xfa
	blt _02120140
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	mov r1, r6
	stmib sp, {r0, r10}
	mov r0, r8
	str r0, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r0, r9
	add r2, sp, #0x58
	bl FUN_ov44_0211c80c
_02120140:
	mov r0, #0x6c
	mla r0, r4, r0, r9
	ldrb r0, [r0, #0x96]
	cmp r0, #0
	beq _02120188
	mov r0, #3
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	mov r1, r6
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x58
	stmib sp, {r0, r10}
	str r8, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r0, r9
	bl FUN_ov44_0211c80c
_02120188:
	mov r0, #0x6c
	mla r0, r4, r0, r9
	ldrh r0, [r0, #0x86]
	mov r8, #0xf9
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021201D8
_021201A4: ; jump table
	b _021201D8 ; case 0
	b _021201B8 ; case 1
	b _021201C0 ; case 2
	b _021201C8 ; case 3
	b _021201D0 ; case 4
_021201B8:
	mov r0, #3
	b _021201D4
_021201C0:
	mov r0, #2
	b _021201D4
_021201C8:
	str r11, [sp, #0x20]
	b _021201D8
_021201D0:
	mov r0, #0
_021201D4:
	str r0, [sp, #0x20]
_021201D8:
	mov r0, #0x16
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x28]
	cmp r4, #0x10
	str r0, [sp, #0x1c]
	movge r0, #0x17
	strge r0, [sp, #0x54]
	ldrge r0, [sp, #0x24]
	add r10, r7, #0x20
	addge r0, r0, #0xd
	strge r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, r6
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x58
	stmib sp, {r0, r10}
	str r8, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r0, r9
	bl FUN_ov44_0211c80c
	cmp r4, #0x10
	bge _0212027C
	mov r0, #0x1b
	str r0, [sp, #0x54]
	mov r0, #0x6c
	mla r0, r4, r0, r9
	ldrb r1, [r0, #0x88]
	add r2, r7, #0x28
	mov r0, r9
	sub r1, r1, #1
	str r1, [sp]
	ldr r1, [sp, #0x28]
	stmib sp, {r1, r2}
	str r8, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r1, r6
	add r2, sp, #0x58
	bl FUN_ov44_0211c80c
_0212027C:
	ldr r1, [sp, #0x58]
	mov r0, r9
	add r1, r1, #1
	str r1, [sp, #0x58]
	mov r1, #0x6c
	mla r1, r4, r1, r9
	ldrh r1, [r1, #0x80]
	bl FUN_ov44_0211c5ec
	str r0, [sp, #0x54]
	and r3, r0, #0xff
	ldr r0, _021205B0 ; =0x02099F38
	ldr r2, [sp, #0x58]
	ldr r0, [r0]
	mov r1, r6
	add r10, r7, #0x18
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, _021205B0 ; =0x02099F38
	ldr r2, [sp, #0x58]
	ldr r0, [r0]
	mov r1, r6
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _021205B0 ; =0x02099F38
	ldr r2, [sp, #0x58]
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	mov r1, r6
	bl FUN_ov16_02113b78
	ldr r0, _021205B0 ; =0x02099F38
	mov r3, r8, lsl #0x10
	ldr r0, [r0]
	ldr r2, [sp, #0x58]
	mov r1, r6
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add r0, r9, r5, lsl #2
	add r0, r0, #0x9000
	ldr r0, [r0, #0x4ec]
	add r1, r7, #0x23
	str r0, [sp, #0x54]
	add r0, sp, #0x54
	str r0, [sp]
	ldr r0, [sp, #0x30]
	mov r2, #0x6c
	stmib sp, {r0, r1}
	ldr r1, [sp, #0x34]
	str r8, [sp, #0xc]
	mla r1, r4, r2, r1
	mov r0, r9
	mov r2, r6
	add r3, sp, #0x58
	bl FUN_ov44_0211c8dc
	add r0, r9, r5, lsl #2
	ldr r1, [sp, #0x54]
	add r0, r0, #0x9000
	str r1, [r0, #0x4ec]
	mov r1, #0x6c
	mov r0, #0x18
	str r0, [sp, #0x54]
	mla r1, r4, r1, r9
	ldr r1, [r1, #0x98]
	add r0, r7, #0x20
	tst r1, #0x400
	beq _02120398
	mov r1, #0
	b _021203C4
_02120398:
	tst r1, #0x80
	beq _021203A8
	ldr r1, [sp, #0x3c]
	b _021203C4
_021203A8:
	tst r1, #0x20
	beq _021203B8
	ldr r1, [sp, #0x40]
	b _021203C4
_021203B8:
	tst r1, #0x1000
	beq _021203F0
	ldr r1, [sp, #0x44]
_021203C4:
	str r1, [sp]
	ldr r1, [sp, #0x38]
	add r2, sp, #0x58
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r0, r9
	mov r1, r6
	bl FUN_ov44_0211c80c
_021203F0:
	mov r0, #0x1a
	str r0, [sp, #0x54]
	mov r0, #0x6c
	mla r0, r4, r0, r9
	ldr r1, [r0, #0xcc]
	ldr r3, _021205B4 ; =0x66666667
	add r0, r7, #0x28
	smull r10, r2, r3, r1
	mov r3, r1, lsr #0x1f
	add r2, r3, r2, asr #2
	mov r3, #0xa
	smull r2, r10, r3, r2
	sub r2, r1, r2
	str r2, [sp]
	ldr r1, [sp, #0x48]
	add r2, sp, #0x58
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r0, r9
	mov r1, r6
	bl FUN_ov44_0211c80c
	mov r0, #0x6c
	mla r0, r4, r0, r9
	ldr r4, [r0, #0xcc]
	cmp r4, #0xa
	blt _02120538
	mov r0, #0x1a
	str r0, [sp, #0x54]
	ldr r0, _021205B4 ; =0x66666667
	mov r1, r6
	smull r2, r3, r0, r4
	mov r0, r4, lsr #0x1f
	add r3, r0, r3, asr #2
	ldr r0, [sp, #0x38]
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r7, #0x28
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	b _02120524
_0212049C:
	cmp r0, #0
	addne sp, sp, #0x5c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _021205B0 ; =0x02099F38
	mov r1, r11
	ldr r0, [r0]
	mov r2, r11
	bl FUN_ov16_02112724
	add r1, r9, r5, lsl #2
	add r1, r1, #0x9000
	str r0, [r1, #0x4ac]
	mov r6, r0
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	add r10, r7, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	mov r8, #0xfa
	ldr r0, [r0, #0x538]
	mov r1, r6
	cmp r0, #0
	ldreq r0, [sp, #0x50]
	ldreq r0, [r0, #0x53c]
	cmpeq r0, #0
	ldreq r0, [sp, #0x4c]
	streq r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	stmib sp, {r0, r10}
	str r8, [sp, #0xc]
_02120524:
	str r11, [sp, #0x10]
	ldr r3, [sp, #0x54]
	mov r0, r9
	add r2, sp, #0x58
	bl FUN_ov44_0211c80c
_02120538:
	add r0, r5, #0x23
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	add r0, r7, #0x20
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	ldr r0, _021205B8 ; =0x02099EB4
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r1, #0x10
	bl FUN_ov16_0210fba4
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_02120584:
	ldr r0, [sp, #0x14]
	cmp r0, #8
	blt _02120070
	ldr r0, [sp, #0x18]
	add r0, r0, #1
_02120598:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #2
	blt _0211FFD8
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021205B0: .word unk_02099F38
_021205B4: .word 0x66666667
_021205B8: .word unk_02099EB4
	arm_func_end FUN_ov44_0211ff74

	arm_func_start FUN_ov44_021205bc
FUN_ov44_021205bc: ; 0x021205BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r1, r10, #0x9000
	ldr r2, [r1, #0x52c]
	cmp r2, #1
	bne _02120660
	ldr r5, [r1, #0x538]
	mov r4, #0
	mov r9, r5, lsl #4
	mov r1, r4
	add r8, r9, #0x10
	bl FUN_ov44_0211c3dc
	mov r0, r10
	mov r1, r4
	bl FUN_ov44_0211c3ac
	cmp r8, r5, lsl #4
	ble _0212064C
	add r5, r10, #0x38c
	add r4, r10, #0x9000
	mov r7, #0
	mov r6, #1
	mov r11, #0x6c
_02120618:
	mla r0, r9, r11, r10
	str r7, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r2, [r0, #0x82]
	ldr r0, [r4, #0x374]
	ldr r1, _02120700 ; =0x02122798
	add r3, r5, #0x9000
	bl FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, r8
	blt _02120618
_0212064C:
	add r0, r10, #0x9000
	mov r1, #2
	str r1, [r0, #0x52c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120660:
	cmp r2, #2
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x38c
	add r0, r0, #0x9000
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov44_0211fee0
	mov r0, r10
	bl FUN_ov44_0211cefc
	add r0, r10, #0x9000
	ldr r0, [r0, #0x53c]
	cmp r0, #0
	mov r0, r10
	bne _021206C0
	bl FUN_ov44_0211ea48
	mov r0, r10
	bl FUN_ov44_0211fdd0
	mov r0, r10
	bl FUN_ov44_0211e888
	b _021206DC
_021206C0:
	bl FUN_ov44_0211e83c
	mov r0, r10
	bl FUN_ov44_0211ea94
	add r0, r10, #0x9000
	ldr r1, [r0, #0x53c]
	mov r0, r10
	bl FUN_ov44_0211fe08
_021206DC:
	mov r0, r10
	bl FUN_ov44_0211ff74
	mov r0, r10
	bl FUN_ov44_0211b068
	add r0, r10, #0x9000
	mov r1, #0
	str r1, [r0, #0x52c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120700: .word ov44_02122798
	arm_func_end FUN_ov44_021205bc

	arm_func_start FUN_ov44_02120704
FUN_ov44_02120704: ; 0x02120704
	add r0, r0, #0x198
	add r0, r0, #0x9400
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _02120720 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_02120720: .word MI_CpuFill8
	arm_func_end FUN_ov44_02120704

	arm_func_start FUN_ov44_02120724
FUN_ov44_02120724: ; 0x02120724
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _02120794 ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_02112724
	mov r2, #0
	mov r1, r0
	str r2, [sp, #0x14]
	add r0, r5, #0x9000
	str r1, [r0, #0x47c]
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0xf8
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	mov r3, #0x11
	str r4, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_02120794: .word unk_02099F38
	arm_func_end FUN_ov44_02120724

	arm_func_start FUN_ov44_02120798
FUN_ov44_02120798: ; 0x02120798
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	movs r12, r1
	mov r1, #0x24
	mul r8, r12, r1
	mov r9, r0
	ldr r0, _02120974 ; =0x02121FE4
	add r5, r9, r8
	add r6, sp, #0x30
	mov r4, r2
	mov r11, r3
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	add r0, r5, #0x9000
	ldr r1, [r0, #0x598]
	mov r3, #0x78
	mov r2, r1, asr #2
	add r2, r1, r2, lsr #29
	mov r2, r2, asr #3
	mul r5, r2, r3
	mov r3, r1, lsr #0x1f
	rsb r2, r3, r1, lsl #29
	add r2, r3, r2, ror #29
	mov r0, r1, lsl #4
	add r6, r5, #8
	mov r2, r2, lsl #4
	add r5, r2, #0x20
	add r3, r0, #0x40
	add r2, r0, #0x48
	add r0, r0, #0x20
	str r0, [sp, #0x2c]
	str r6, [sp, #0x30]
	addeq r0, r9, #0x9000
	streq r1, [r0, #0x670]
	mov r0, #0x24
	mul r6, r12, r0
	add r0, r9, #0x198
	str r5, [sp, #0x20]
	add r5, r0, #0x9400
	str r4, [r5, r6]
	ldr r0, _02120978 ; =0x02122004
	add r4, sp, #0x10
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r4, [r5, r6]
	add r3, sp, #0x20
	mov r0, r4, asr #2
	add r0, r4, r0, lsr #29
	mov r1, #0x78
	mov r0, r0, asr #3
	mul r1, r0, r1
	add r10, r1, #8
	mov r0, r4, lsr #0x1f
	rsb r5, r0, r4, lsl #29
	add r0, r0, r5, ror #29
	mov r2, r4, lsl #4
	add r1, r9, r6
	add r5, r9, #0x5a0
	mov r0, r0, lsl #4
	str r10, [sp, #0x10]
	add r10, r0, #0x20
	str r10, [sp]
	add r10, r2, #0x48
	add r0, r2, #0x40
	str r10, [sp, #8]
	ldrb r10, [sp, #0x68]
	str r0, [sp, #4]
	add r2, r2, #0x20
	str r2, [sp, #0xc]
	add r0, r9, #0x1a4
	ldr lr, [r3, r12, lsl #2]
	add r3, r0, #0x9400
	add r4, r9, #0x19c
	cmp r10, #0
	mov r7, #4
	add r2, r9, #0x1a8
	add r10, r4, #0x9400
	add r0, sp, #0
	add r4, r2, #0x9400
	ldr r2, [r0, r12, lsl #2]
	add r1, r1, #0x9000
	mov r0, #1
	str r0, [r1, #0x5b4]
	add r0, sp, #0x30
	ldr r0, [r0, r12, lsl #2]
	movne r7, #1
	str r0, [r10, r6]
	add r5, r5, #0x9000
	str lr, [r5, r6]
	add r0, sp, #0x10
	ldr r0, [r0, r12, lsl #2]
	mov r1, r7
	str r0, [r3, r6]
	str r2, [r4, r6]
	ldr r2, [r3, r6]
	ldr r0, [r10, r6]
	sub r0, r2, r0
	bl _s32_div_f
	add r1, r9, r8
	add r1, r1, #0x9000
	str r0, [r1, #0x5ac]
	ldr r2, [r4, r6]
	ldr r0, [r5, r6]
	mov r1, r7
	sub r0, r2, r0
	bl _s32_div_f
	add r1, r9, r8
	add r1, r1, #0x9000
	cmp r11, #0
	str r0, [r1, #0x5b0]
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0212097C ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120974: .word ov44_02121FE4
_02120978: .word ov44_02122004
_0212097C: .word gL5Sound
	arm_func_end FUN_ov44_02120798

	arm_func_start FUN_ov44_02120980
FUN_ov44_02120980: ; 0x02120980
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r4, r1
	mov r10, r0
	add r0, r10, #0x9000
	mov r1, #0x24
	mul r5, r4, r1
	ldr r9, [r0, #0x47c]
	ldr r8, [r0, #0x464]
	ldr r7, [r0, #0x470]
	ldr r6, [r0, #0x478]
	ldr r0, _02120AF0 ; =0x02122024
	add r11, sp, #0x14
	ldmia r0, {r0, r1, r2, r3}
	stmia r11, {r0, r1, r2, r3}
	ldr r0, _02120AF4 ; =0x02122064
	add lr, r10, r5
	str r7, [sp, #0x2c]
	add r7, lr, #0x9000
	str r8, [sp, #0x28]
	str r6, [sp, #0x30]
	ldr r8, [r7, #0x59c]
	ldr r6, [r7, #0x5a0]
	add r12, r10, #0x1b8
	str r9, [sp, #0x24]
	add r11, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	add r9, r12, #0x9400
	stmia r11, {r0, r1, r2, r3}
	ldr r0, [r9, r5]
	add r0, r0, #1
	str r0, [r9, r5]
	ldr r2, [r7, #0x5ac]
	ldr r1, [r7, #0x5b8]
	ldr r0, [r7, #0x5b0]
	mla r5, r2, r1, r8
	mla r6, r0, r1, r6
	cmp r2, #0
	ldr r0, [r7, #0x5a4]
	bge _02120A2C
	cmp r5, r0
	movlt r5, r0
	b _02120A34
_02120A2C:
	cmp r5, r0
	movgt r5, r0
_02120A34:
	mov r0, #0x24
	mla r0, r4, r0, r10
	add r0, r0, #0x9000
	ldr r1, [r0, #0x5b0]
	ldr r0, [r0, #0x5a8]
	cmp r1, #0
	bge _02120A5C
	cmp r6, r0
	movlt r6, r0
	b _02120A64
_02120A5C:
	cmp r6, r0
	movgt r6, r0
_02120A64:
	mov r0, #0x24
	mla r0, r4, r0, r10
	add r1, r0, #0x9000
	ldr r0, [r1, #0x5a4]
	cmp r5, r0
	ldreq r0, [r1, #0x5a8]
	cmpeq r6, r0
	bne _02120A98
	mov r2, #0
	str r2, [r1, #0x5b4]
	mov r0, r10
	str r2, [r1, #0x5b8]
	bl FUN_ov44_0211b068
_02120A98:
	mov r0, #0
	add r9, sp, #0x24
	ldr r7, _02120AF8 ; =0x02099F38
	str r0, [sp]
	add r8, sp, #0x14
	add r3, sp, #4
	ldr r0, [r7]
	ldr r1, [r9, r4, lsl #2]
	ldr r2, [r8, r4, lsl #2]
	ldr r3, [r3, r4, lsl #2]
	bl FUN_ov16_0211401c
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r5, lsl #0x10
	ldr r0, [r7]
	ldr r1, [r9, r4, lsl #2]
	ldr r2, [r8, r4, lsl #2]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120AF0: .word ov44_02122024
_02120AF4: .word ov44_02122064
_02120AF8: .word unk_02099F38
	arm_func_end FUN_ov44_02120980

	arm_func_start FUN_ov44_02120afc
FUN_ov44_02120afc: ; 0x02120AFC
	add r1, r0, #0x9000
	ldr r3, [r1, #0x598]
	ldr r2, [r1, #0x538]
	mov r1, #0x6c
	add r2, r3, r2, lsl #4
	mla r0, r2, r1, r0
	ldrh r0, [r0, #0x80]
	bx lr
	arm_func_end FUN_ov44_02120afc

	arm_func_start FUN_ov44_02120b1c
FUN_ov44_02120b1c: ; 0x02120B1C
	add r1, r0, #0x9000
	ldr r2, [r1, #0x598]
	ldr r1, [r1, #0x538]
	add r3, r0, #0xbc
	add r1, r2, r1, lsl #4
	mov r0, #0x6c
	mla r0, r1, r0, r3
	bx lr
	arm_func_end FUN_ov44_02120b1c

	arm_func_start FUN_ov44_02120b3c
FUN_ov44_02120b3c: ; 0x02120B3C
	add r1, r0, #0x9000
	ldr r3, [r1, #0x598]
	ldr r2, [r1, #0x538]
	mov r1, #0x6c
	add r2, r3, r2, lsl #4
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x98]
	bx lr
	arm_func_end FUN_ov44_02120b3c

	arm_func_start FUN_ov44_02120b5c
FUN_ov44_02120b5c: ; 0x02120B5C
	add r1, r0, #0x9000
	ldr r3, [r1, #0x598]
	ldr r2, [r1, #0x538]
	mov r1, #0x6c
	add r2, r3, r2, lsl #4
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x8c]
	bx lr
	arm_func_end FUN_ov44_02120b5c

	arm_func_start FUN_ov44_02120b7c
FUN_ov44_02120b7c: ; 0x02120B7C
	add r1, r0, #0x9000
	ldr r3, [r1, #0x598]
	ldr r2, [r1, #0x538]
	mov r1, #0x6c
	add r2, r3, r2, lsl #4
	mla r0, r2, r1, r0
	ldrb r0, [r0, #0x88]
	bx lr
	arm_func_end FUN_ov44_02120b7c

	arm_func_start FUN_ov44_02120b9c
FUN_ov44_02120b9c: ; 0x02120B9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	mov r9, r0
	str r2, [sp, #4]
	mov r2, #0x6c
	mov r4, #0
	str r1, [sp]
	add r3, r9, #0x9000
	add r0, sp, #0x18
	mov r1, r4
	ldr r6, [r3, #0x350]
	mov r5, r2
	bl MI_CpuFill8
	ldr r0, [sp]
	add r1, r9, #0x9000
	str r0, [r1, #0x53c]
	ldr r0, [sp]
	cmp r0, #0
	ldrb r0, [r1, #0x370]
	bne _02120C24
	cmp r0, #0
	addeq sp, sp, #0x84
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #0x260
	ldr r2, _02121130 ; =0x000030F0
	add r0, r0, #0x6000
	add r1, r9, #0x80
	bl MI_CpuCopy8
	add r0, r9, #0x9000
	ldr r1, [r0, #0x36c]
	add sp, sp, #0x84
	str r1, [r0, #0x368]
	strb r4, [r0, #0x370]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120C24:
	cmp r0, #0
	bne _02120C4C
	add r1, r9, #0x260
	ldr r2, _02121130 ; =0x000030F0
	add r0, r9, #0x80
	add r1, r1, #0x6000
	bl MI_CpuCopy8
	add r0, r9, #0x9000
	mov r1, #1
	strb r1, [r0, #0x370]
_02120C4C:
	add r0, r9, #0x9000
	ldr r0, [r0, #0x368]
	cmp r0, #0
	beq _02120CF4
	ldr r0, _02121130 ; =0x000030F0
	bl operator_new_array
	mov r1, #0
	mov r2, #4
	mov r4, r0
	bl MI_CpuFill8
	add r2, r9, #0x9000
	ldr r3, [r2, #0x350]
	ldr r2, [r2, #0x358]
	add r0, r9, #0x740
	sub r3, r3, r2
	mul r2, r3, r5
	mov r1, r4
	bl MI_CpuCopy8
	add r0, r9, #0x9000
	ldr r3, [r0, #0x358]
	ldr r1, [r0, #0x350]
	mov r0, r4
	sub r1, r1, r3
	mul r2, r1, r5
	add r1, r9, #0x80
	mla r1, r3, r5, r1
	bl MI_CpuCopy8
	add r0, r9, #0x9000
	ldr r1, [r0, #0x350]
	add r0, r9, #0x80
	mla r0, r1, r5, r0
	rsb r1, r1, #0x74
	mul r2, r1, r5
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r4
	bl operator_delete_array
	add r1, r9, #0x9000
	ldr r0, [r1, #0x368]
	str r0, [r1, #0x36c]
	mov r0, #0
	str r0, [r1, #0x368]
_02120CF4:
	ldr r0, [sp]
	cmp r0, #1
	bne _02120DB4
	mov r0, #0
	cmp r6, #0
	str r0, [sp, #0x10]
	ble _021210E0
_02120D10:
	sub r11, r6, #1
	cmp r11, #0
	mov r8, #0
	ble _02120D9C
	add r7, r9, #0x80
	add r4, sp, #0x18
_02120D28:
	mul r10, r8, r5
	add r0, r9, r10
	ldrb r3, [r0, #0x9d]
	ldrb r2, [r0, #0x109]
	ldrb r1, [r0, #0x9f]
	ldrb r0, [r0, #0x10b]
	cmp r3, r2
	ble _02120D4C
	b _02120D58
_02120D4C:
	bne _02120D90
	cmp r1, r0
	ble _02120D90
_02120D58:
	add r0, r7, r10
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #1
	add r1, r7, r10
	mul r10, r0, r5
	add r0, r7, r10
	mov r2, r5
	bl MI_CpuCopy8
	add r1, r7, r10
	mov r0, r4
	mov r2, r5
	bl MI_CpuCopy8
_02120D90:
	add r8, r8, #1
	cmp r8, r11
	blt _02120D28
_02120D9C:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r6
	blt _02120D10
	b _021210E0
_02120DB4:
	cmp r0, #2
	bne _02120EB0
	mov r0, #0
	cmp r6, #0
	str r0, [sp, #8]
	ble _021210E0
_02120DCC:
	sub r0, r6, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	mov r10, #0
	ble _02120E98
	add r7, r9, #0x80
	add r4, sp, #0x18
_02120DE8:
	mul r8, r10, r5
	add r12, r9, r8
	ldrsb r2, [r12, #0xbc]
	ldrb r1, [r12, #0xbd]
	add r0, r12, #0x100
	mov r2, r2, lsl #0x18
	orr r11, r1, r2, lsr #16
	ldrsb r2, [r0, #0x28]
	ldrsb r0, [r0, #0x2a]
	ldrb r1, [r12, #0x129]
	mov r2, r2, lsl #0x18
	mov r0, r0, lsl #0x18
	orr r3, r1, r2, lsr #16
	cmp r11, r3
	ldrsb r2, [r12, #0xbe]
	ldrb r1, [r12, #0xbf]
	ldrb r12, [r12, #0x12b]
	mov r2, r2, lsl #0x18
	orr r1, r1, r2, lsr #16
	orr r0, r12, r0, lsr #16
	ble _02120E40
	b _02120E50
_02120E40:
	cmp r11, r3
	bne _02120E88
	cmp r1, r0
	ble _02120E88
_02120E50:
	add r0, r7, r8
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r10, #1
	add r1, r7, r8
	mul r8, r0, r5
	add r0, r7, r8
	mov r2, r5
	bl MI_CpuCopy8
	add r1, r7, r8
	mov r0, r4
	mov r2, r5
	bl MI_CpuCopy8
_02120E88:
	ldr r0, [sp, #0x14]
	add r10, r10, #1
	cmp r10, r0
	blt _02120DE8
_02120E98:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r6
	blt _02120DCC
	b _021210E0
_02120EB0:
	mov r0, r6, lsl #2
	bl operator_new_array
	mov r7, r0
	ldr r0, [sp]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02121034
_02120ECC: ; jump table
	b _02121034 ; case 0
	b _02121034 ; case 1
	b _02121034 ; case 2
	b _02120EF8 ; case 3
	b _02120F20 ; case 4
	b _02120F48 ; case 5
	b _02120F70 ; case 6
	b _02120F98 ; case 7
	b _02120FC0 ; case 8
	b _02120FE8 ; case 9
	b _02121010 ; case 10
_02120EF8:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120F04:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xcc]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120F04
	b _02121034
_02120F20:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120F2C:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xd0]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120F2C
	b _02121034
_02120F48:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120F54:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xd4]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120F54
	b _02121034
_02120F70:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120F7C:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xd8]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120F7C
	b _02121034
_02120F98:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120FA4:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xdc]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120FA4
	b _02121034
_02120FC0:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120FCC:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xe0]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120FCC
	b _02121034
_02120FE8:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_02120FF4:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xe4]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _02120FF4
	b _02121034
_02121010:
	cmp r6, #0
	mov r1, #0
	ble _02121034
_0212101C:
	mla r0, r1, r5, r9
	ldr r0, [r0, #0xe8]
	str r0, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _0212101C
_02121034:
	mov r0, #0
	cmp r6, #0
	str r0, [sp, #0xc]
	ble _021210D8
	add r4, r9, #0x80
	sub r11, r6, #1
_0212104C:
	mov r8, #0
	cmp r11, #0
	ble _021210C4
_02121058:
	ldr r1, [r7, r8, lsl #2]
	add r0, r7, r8, lsl #2
	ldr r0, [r0, #4]
	cmp r1, r0
	bge _021210B8
	mul r10, r8, r5
	add r0, r4, r10
	add r1, sp, #0x18
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #1
	add r1, r4, r10
	mul r10, r0, r5
	add r0, r4, r10
	mov r2, r5
	bl MI_CpuCopy8
	add r1, r4, r10
	add r0, sp, #0x18
	mov r2, r5
	bl MI_CpuCopy8
	add r1, r7, r8, lsl #2
	ldr r2, [r7, r8, lsl #2]
	ldr r0, [r1, #4]
	stmia r1, {r0, r2}
_021210B8:
	add r8, r8, #1
	cmp r8, r11
	blt _02121058
_021210C4:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r6
	blt _0212104C
_021210D8:
	mov r0, r7
	bl operator_delete_array
_021210E0:
	mov r0, r9
	bl FUN_ov44_0211f4a4
	mov r0, r9
	bl FUN_ov44_0211eb48
	mov r0, r9
	bl FUN_ov44_0211d98c
	mov r0, r9
	bl FUN_ov44_0211e940
	ldr r2, [sp, #4]
	add r3, r9, #0x9000
	mov r0, r9
	mov r1, #0
	str r2, [r3, #0x52c]
	bl FUN_ov44_0211ba34
	ldr r0, _02121134 ; =0x02099F44
	ldr r1, [sp]
	ldr r0, [r0]
	bl FUN_ov131_0213acfc
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121130: .word 0x000030F0
_02121134: .word unk_02099F44
	arm_func_end FUN_ov44_02120b9c

	arm_func_start FUN_ov44_02121138
FUN_ov44_02121138: ; 0x02121138
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov44_02120afc
	mov r4, #0
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r5, r0
	ldr r0, _02121178 ; =0x0209BA20
	mov r1, r4
	bl FUN_0205107c
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_0204fca0
	ldmfd sp!, {r3, r4, r5, pc}
_02121178: .word unk_0209BA20
	arm_func_end FUN_ov44_02121138

	arm_func_start FUN_ov44_0212117c
FUN_ov44_0212117c: ; 0x0212117C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov44_021211c0
	mov r0, r4
	bl FUN_ov44_021212a8
	mov r0, r4
	bl FUN_ov44_02121344
	mov r0, r4
	bl FUN_ov44_021213d8
	mov r0, r4
	bl FUN_ov44_02121464
	ldr r0, _021211BC ; =0x0209BA20
	mov r1, #0
	mov r2, #2
	bl FUN_02050f4c
	ldmfd sp!, {r4, pc}
_021211BC: .word unk_0209BA20
	arm_func_end FUN_ov44_0212117c

	arm_func_start FUN_ov44_021211c0
FUN_ov44_021211c0: ; 0x021211C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, #0
	add r0, r11, #0x9000
	str r0, [sp]
	mov r8, r10
	mov r6, #1
	ldr r5, _0212129C ; =0x02099ED8
	ldr r4, _021212A0 ; =0x02099EC0
	b _02121280
_021211E8:
	mov r0, #0x6c
	mla r1, r10, r0, r11
	add r0, r1, #0x3100
	ldrh r9, [r0, #0x70]
	cmp r9, #0
	beq _0212127C
	add r0, r1, #0x3000
	ldrb r0, [r0, #0x186]
	cmp r0, #1
	bne _0212127C
	ldr r0, _021212A4 ; =0x0209BA20
	mov r1, r8
	mov r2, r9
	bl FUN_0204d2a4
	ldr r0, [r5]
	mov r1, r9
	mov r2, r8
	bl FUN_020554b0
	mov r7, r0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_02055938
	ldr r0, [r5]
	mov r1, r7
	bl FUN_02055274
	ldr r0, [r4]
	mov r1, r9
	mov r2, r8
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	bl FUN_02056e04
	ldr r0, [r4]
	mov r1, r6
	bl FUN_02057020
_0212127C:
	add r10, r10, #1
_02121280:
	ldr r0, [sp]
	ldr r1, [r0, #0x350]
	ldr r0, [r0, #0x368]
	add r0, r1, r0
	cmp r10, r0
	blt _021211E8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212129C: .word unk_02099ED8
_021212A0: .word unk_02099EC0
_021212A4: .word unk_0209BA20
	arm_func_end FUN_ov44_021211c0

	arm_func_start FUN_ov44_021212a8
FUN_ov44_021212a8: ; 0x021212A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	ldr r7, _0212133C ; =0x021220EC
	add r6, sp, #0
	mov r4, r0
	mov r8, r6
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	add r5, r4, #0x9000
	ldmia r7, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r0, [r5, #0x358]
	mov r4, #0
	cmp r0, #0
	addle sp, sp, #0x40
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _02121340 ; =0x0209BA20
	mov r6, r4
_02121300:
	ldr r2, [r8, r4, lsl #2]
	mov r0, r7
	mov r1, r6
	bl FUN_0204dea4
	movs r2, r0
	beq _02121324
	mov r0, r7
	mov r1, r6
	bl FUN_0204d354
_02121324:
	ldr r0, [r5, #0x358]
	add r4, r4, #1
	cmp r4, r0
	blt _02121300
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212133C: .word ov44_021220EC
_02121340: .word unk_0209BA20
	arm_func_end FUN_ov44_021212a8

	arm_func_start FUN_ov44_02121344
FUN_ov44_02121344: ; 0x02121344
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r4, r10, #0x9000
	ldr r0, [r4, #0x358]
	mov r7, #0
	mov r8, r7
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _021213D4 ; =0x0209A11C
	mov r11, #0x6c
_0212136C:
	mla r0, r8, r11, r10
	ldrh r6, [r0, #0x80]
	cmp r6, #0
	beq _021213C0
	mov r9, #0
_02121380:
	mov r0, r9
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _021213B4
	bl FUN_0206cbf8
	cmp r6, r0
	bne _021213B4
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	bl FUN_0206c664
	add r7, r7, #1
	b _021213C0
_021213B4:
	add r9, r9, #1
	cmp r9, #0x64
	blt _02121380
_021213C0:
	ldr r0, [r4, #0x358]
	add r8, r8, #1
	cmp r8, r0
	blt _0212136C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021213D4: .word unk_0209A11C
	arm_func_end FUN_ov44_02121344

	arm_func_start FUN_ov44_021213d8
FUN_ov44_021213d8: ; 0x021213D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r5, r10, #0x9000
	ldr r0, [r5, #0x358]
	mov r9, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
	ldr r7, _02121460 ; =0x0209BA20
	mov r6, r11
	mov r4, #0x6c
_02121404:
	mla r0, r9, r4, r10
	ldrh r8, [r0, #0x80]
	cmp r8, #0
	beq _0212144C
	ldr r3, [r0, #0x8c]
	cmp r3, #0
	bne _02121438
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r7
	mov r2, r11
	bl FUN_020731ec
	mov r3, r0
_02121438:
	mov r0, r7
	mov r1, #0
	mov r2, r8
	str r6, [sp]
	bl FUN_0204c92c
_0212144C:
	ldr r0, [r5, #0x358]
	add r9, r9, #1
	cmp r9, r0
	blt _02121404
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121460: .word unk_0209BA20
	arm_func_end FUN_ov44_021213d8

	arm_func_start FUN_ov44_02121464
FUN_ov44_02121464: ; 0x02121464
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r5, _021215D8 ; =0x0209BA20
	mov r4, #0
	mov r10, r0
	mov r0, r5
	mov r1, r4
	bl FUN_0205106c
	mov r7, r0
	mov r0, r5
	mov r1, r4
	bl FUN_0205107c
	str r0, [sp]
	mov r0, r5
	bl FUN_ov16_020edfb0
	mov r11, r0
	cmp r11, #0
	ble _021214B4
	cmp r11, #5
	blt _021214B8
_021214B4:
	mov r11, #4
_021214B8:
	mov r2, #0
	mov r0, #0x6c
_021214C0:
	mla r1, r2, r0, r10
	ldrh r1, [r1, #0x80]
	add r2, r2, #1
	cmp r1, #0
	addne r4, r4, #1
	cmp r2, #0x10
	blt _021214C0
	cmp r4, r11
	addlt r0, r10, #0x9000
	ldrlt r1, [r0, #0x350]
	ldrlt r0, [r0, #0x368]
	mov r8, #0
	addlt r0, r1, r0
	cmplt r0, r11
	movlt r11, r4
	cmp r11, #0
	mov r9, r8
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x9000
	str r0, [sp, #4]
_02121514:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x358]
	cmp r9, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x6c
	mla r5, r9, r0, r10
	ldrh r4, [r5, #0x80]
	cmp r4, #0
	beq _021215C4
	ldr r0, [sp]
	mov r1, r4
	bl FUN_0204fca0
	cmp r0, #0
	beq _021215C4
	ldr r5, [r5, #0x90]
	add r6, r8, #1
	cmp r5, #0
	bne _02121578
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _021215D8 ; =0x0209BA20
	mov r2, #2
	bl FUN_020731ec
	mov r5, r0
_02121578:
	mov r0, r7
	sub r1, r6, #1
	mov r2, r4
	mov r3, #0
	bl FUN_020501bc
	sub r1, r6, #1
	mov r2, r5
	mov r0, r7
	mov r3, #1
	bl FUN_02050144
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _021215C4
	mov r0, r10
	mov r1, r4
	bl FUN_ov44_021215dc
	add r8, r8, #1
_021215C4:
	cmp r8, r11
	add r9, r9, #1
	blt _02121514
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021215D8: .word unk_0209BA20
	arm_func_end FUN_ov44_02121464

	arm_func_start FUN_ov44_021215dc
FUN_ov44_021215dc: ; 0x021215DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xa0
	ldr r0, _02121768 ; =0x02099ED8
	mov r5, #0
	ldr r0, [r0]
	mov r10, r1
	mov r1, r5
	bl FUN_020552dc
	mov r4, r0
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mov r9, #0x32
	beq _02121630
	cmp r4, #0
	ldrneh r8, [r4, #0xa8]
	bne _02121650
	bl FUN_0206dcd4
	ldrh r8, [r0, #0xe]
	b _02121650
_02121630:
	ldr r0, _0212176C ; =0x0209BA20
	add r2, sp, #0x38
	mov r1, r10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xa0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r8, [sp, #0x90]
_02121650:
	ldr r4, _02121768 ; =0x02099ED8
	str r9, [sp]
	mov r7, #0
	ldr r0, [r4]
	mov r1, r10
	mov r2, r7
	mov r3, r8
	bl FUN_02055004
	mov r6, r0
	ldr r0, [r4]
	mov r1, r6
	sub r2, r7, #1
	bl FUN_02055890
	ldr r0, [r4]
	mov r1, r6
	bl FUN_020552cc
	mov r5, #1
	mov r1, r5
	bl FUN_02054424
	ldr r0, [r4]
	bl FUN_02055c20
	mov r1, r6
	bl FUN_02054854
	mov r2, r0
	ldr r1, [r4]
	add r0, sp, #0x20
	bl FUN_02055c28
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r2, [sp, #0x30]
	str r7, [sp]
	stmib sp, {r2, r7}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r1, [sp, #0x34]
	ldr r1, [r4]
	add r0, sp, #0x14
	mov r2, r6
	str r3, [sp, #0x2c]
	bl FUN_020555e8
	ldr r2, [sp, #0x34]
	ldr r0, [r4]
	mov r2, r2, lsl #0x10
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_02055558
	ldr r0, [r4]
	mov r1, r6
	bl FUN_02055324
	ldr r4, _02121770 ; =0x02099EC0
	str r9, [sp]
	mov r6, r0
	ldr r0, [r4]
	mov r1, r10
	mov r2, r8
	mov r3, r7
	bl FUN_02056ed4
	str r8, [sp]
	stmib sp, {r7, r9}
	ldr r0, [r4]
	mov r1, r6
	mov r2, r10
	mov r3, r7
	bl FUN_02056b24
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02057020
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121768: .word unk_02099ED8
_0212176C: .word unk_0209BA20
_02121770: .word unk_02099EC0
	arm_func_end FUN_ov44_021215dc

	arm_func_start FUN_ov44_02121774
FUN_ov44_02121774: ; 0x02121774
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x690
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x9000
	mov r2, #0x28
	bl MI_CpuFill8
	add r0, r5, #0x9000
	str r4, [r0, #0x6b8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov44_02121774

	arm_func_start FUN_ov44_021217a0
FUN_ov44_021217a0: ; 0x021217A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	add r1, r10, #0x9000
	ldr r1, [r1, #0x484]
	cmp r1, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #7
	str r1, [sp, #0x14]
	mov r2, #0x60
	str r2, [sp]
	mov r2, #0xa8
	mov r1, #0x35
	str r2, [sp, #4]
	str r1, [sp, #8]
	rsb r1, r1, #0x228
	str r1, [sp, #0xc]
	mov r11, #0x14
	mov r8, #0
	ldr r2, [sp, #0x14]
	mov r1, r11
	mov r3, r8
	bl FUN_ov44_0211ae3c
	ldr r0, _021218DC ; =0x02099F38
	mov r1, #4
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r7, r0
	add r0, r10, #0x9000
	str r7, [r0, #0x484]
	str r8, [sp, #0x14]
	str r8, [sp]
	mov r6, #8
	str r6, [sp, #4]
	mov r5, #0x20
	str r5, [sp, #8]
	mov r4, #0xaf
	str r4, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #0x15
	bl FUN_ov44_0211c80c
	str r8, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x14
	mov r3, r11
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add r9, r8, #1
	str r9, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x14
	mov r3, r11
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add r0, r9, #1
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x14
	mov r3, r11
	str r8, [sp, #0x10]
	bl FUN_ov44_0211c80c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021218DC: .word unk_02099F38
	arm_func_end FUN_ov44_021217a0

	arm_func_start FUN_ov44_021218e0
FUN_ov44_021218e0: ; 0x021218E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x690
	add r0, r0, #0x9000
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, _0212191C ; =0x02099F38
	add r1, r4, #0x9000
	ldr r0, [r0]
	ldr r1, [r1, #0x484]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r4, pc}
_0212191C: .word unk_02099F38
	arm_func_end FUN_ov44_021218e0

	arm_func_start FUN_ov44_02121920
FUN_ov44_02121920: ; 0x02121920
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #1
	mov r1, r4
	mov r5, r0
	bl FUN_ov44_021219b8
	cmp r0, #1
	bne _02121998
	add r3, r5, #0x9000
	ldr r2, [r3, #0x598]
	mov r1, #0x78
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	mul r12, r0, r1
	mov r1, r2, lsr #0x1f
	rsb r0, r1, r2, lsl #29
	add r0, r1, r0, ror #29
	mov r0, r0, lsl #4
	add lr, r12, #8
	add r12, r0, #0x20
	mov r0, r5
	mov r1, #5
	str r4, [r3, #0x69c]
	str lr, [r3, #0x694]
	str r12, [r3, #0x698]
	str r2, [r3, #0x690]
	bl FUN_ov44_0211ba34
	ldr r0, _021219B4 ; =gL5Sound
	mov r1, r4
	b _021219A0
_02121998:
	ldr r0, _021219B4 ; =gL5Sound
	mov r1, #9
_021219A0:
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0x35
	bl FUN_ov44_0211af94
	ldmfd sp!, {r3, r4, r5, pc}
_021219B4: .word gL5Sound
	arm_func_end FUN_ov44_02121920

	arm_func_start FUN_ov44_021219b8
FUN_ov44_021219b8: ; 0x021219B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov44_02120afc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov44_02120b3c
	tst r0, #0x400
	beq _02121A00
	cmp r4, #0
	beq _021219F8
	mov r0, r5
	mov r1, #6
	bl FUN_ov44_0211ba34
_021219F8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02121A00:
	mov r0, r5
	bl FUN_ov44_02120b3c
	tst r0, #0x20
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov44_021219b8

	arm_func_start FUN_ov44_02121a18
FUN_ov44_02121a18: ; 0x02121A18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	add r2, r9, #0x9000
	ldr r0, [r2, #0x6a0]
	mov r4, #0xf
	ldr r8, [r2, #0x698]
	ldr r7, [r2, #0x694]
	mov r1, r4
	add r0, r0, #1
	ldr r5, [r2, #0x484]
	mov r6, #1
	bl _s32_div_f
	mov r3, r7, lsl #0x10
	add r0, r9, #0x9000
	str r1, [r0, #0x6a0]
	mov r2, r8, lsl #0x10
	mov r0, r2, asr #0x10
	ldr r7, _02121AC8 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, r9, #0x9000
	ldr r1, [r0, #0x6a0]
	add r0, r4, r4, lsr #31
	cmp r1, r0, asr #1
	rsbgt r0, r1, #0
	addgt r1, r0, r4
	add r3, r1, r1, lsl #1
	ldr r0, _02121AC8 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_02113a80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02121AC8: .word unk_02099F38
	arm_func_end FUN_ov44_02121a18

	arm_func_start FUN_ov44_02121acc
FUN_ov44_02121acc: ; 0x02121ACC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x2a4
	add r0, r0, #0x9400
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r4, _02121B3C ; =0x02099F38
	add r1, r6, #0x9000
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x484]
	mov r3, r5
	mov r2, #1
	bl FUN_ov16_02113f7c
	add r1, r6, #0x9000
	ldr r0, [r4]
	ldr r1, [r1, #0x484]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113f7c
	ldr r0, [r4]
	add r1, r6, #0x9000
	ldr r1, [r1, #0x484]
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r4, r5, r6, pc}
_02121B3C: .word unk_02099F38
	arm_func_end FUN_ov44_02121acc

	arm_func_start FUN_ov44_02121b40
FUN_ov44_02121b40: ; 0x02121B40
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, #1
	mov r1, r4
	mov r5, r0
	bl FUN_ov44_02121c08
	cmp r0, #1
	bne _02121BE0
	ldr r0, _02121C00 ; =0x02122054
	add r12, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	add r2, r5, #0x9000
	ldr r0, [r2, #0x598]
	mov r3, #0x78
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r1, r1, asr #3
	mul lr, r1, r3
	mov r3, r0, lsr #0x1f
	rsb r1, r3, r0, lsl #29
	add r1, r3, r1, ror #29
	mov r3, r1, lsl #4
	mov r1, r0, asr #1
	add lr, lr, #8
	add r3, r3, #0x20
	add r1, r0, r1, lsr #30
	str r0, [r2, #0x6a4]
	mov r0, r1, asr #2
	str r4, [r2, #0x6b0]
	str lr, [r2, #0x6a8]
	str r3, [r2, #0x6ac]
	ldr r3, [r12, r0, lsl #2]
	mov r0, r5
	mov r1, #7
	str r3, [r2, #0x6b8]
	bl FUN_ov44_0211ba34
	ldr r0, _02121C04 ; =gL5Sound
	mov r1, #0x18
	b _02121BE8
_02121BE0:
	ldr r0, _02121C04 ; =gL5Sound
	mov r1, #9
_02121BE8:
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0x35
	bl FUN_ov44_0211af94
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02121C00: .word ov44_02122054
_02121C04: .word gL5Sound
	arm_func_end FUN_ov44_02121b40

	arm_func_start FUN_ov44_02121c08
FUN_ov44_02121c08: ; 0x02121C08
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov44_02120afc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov44_02120b3c
	tst r0, #0x400
	beq _02121C50
	cmp r4, #0
	beq _02121C48
	mov r0, r5
	mov r1, #6
	bl FUN_ov44_0211ba34
_02121C48:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02121C50:
	mov r0, r5
	bl FUN_ov44_02120b3c
	tst r0, #0x20
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x9000
	ldr r1, [r0, #0x690]
	ldr r0, [r0, #0x598]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov44_02121c08

	arm_func_start FUN_ov44_02121c80
FUN_ov44_02121c80: ; 0x02121C80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r2, r10, #0x9000
	ldr r0, [r2, #0x6b4]
	mov r4, #0xb
	add r8, r4, #1
	ldr r7, [r2, #0x6ac]
	add r0, r0, #1
	add r1, r8, #1
	ldr r6, [r2, #0x6a8]
	ldr r5, [r2, #0x484]
	mov r11, #0
	bl _s32_div_f
	mov r0, r7, lsl #0x10
	mov r9, r1
	mov r1, r0, asr #0x10
	mov r0, r6, lsl #0x10
	mov r3, r0, asr #0x10
	add r0, r10, #0x9000
	str r9, [r0, #0x6b4]
	str r1, [sp]
	ldr r6, _02121DB8 ; =0x02099F38
	mov r1, r5
	ldr r0, [r6]
	mov r2, #2
	bl FUN_ov16_02113b78
	cmp r9, #2
	bgt _02121D10
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [r6]
	mov r1, r5
	mov r3, r2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121D10:
	cmp r9, #5
	bgt _02121D30
	mov r2, #2
	ldr r0, [r6]
	mov r1, r5
	mov r3, r2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121D30:
	cmp r9, #8
	bgt _02121D58
	mov r0, #1
	str r0, [sp]
	mov r2, #2
	ldr r0, [r6]
	mov r1, r5
	mov r3, r2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121D58:
	cmp r9, r4
	bgt _02121D78
	mov r2, #2
	ldr r0, [r6]
	mov r1, r5
	mov r3, r2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121D78:
	cmp r9, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov44_02121dbc
	mov r0, r10
	bl FUN_ov44_0211fee0
	mov r0, r10
	bl FUN_ov44_0211ff74
	mov r0, r10
	mov r1, r11
	bl FUN_ov44_0211ba34
	mov r0, r10
	bl FUN_ov44_021218e0
	mov r0, r10
	bl FUN_ov44_02121acc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121DB8: .word unk_02099F38
	arm_func_end FUN_ov44_02121c80

	arm_func_start FUN_ov44_02121dbc
FUN_ov44_02121dbc: ; 0x02121DBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x6c
	mov r8, r0
	add r0, r8, #0x9000
	ldr r1, [r0, #0x690]
	mov r11, #0x6c
	ldr r0, [r0, #0x6a4]
	mul r7, r1, r11
	mul r6, r0, r11
	add r5, r8, #0x96
	add r0, sp, #0
	mov r1, #0
	mov r2, r11
	ldrb r9, [r5, r7]
	ldrb r10, [r5, r6]
	bl MI_CpuFill8
	add r4, r8, #0x80
	add r0, r4, r7
	add r1, sp, #0
	mov r2, r11
	bl MI_CpuCopy8
	cmp r9, #1
	bne _02121E9C
	cmp r10, #1
	bne _02121E4C
	mov r5, r4
	mov r2, r11
	add r0, r5, r6
	add r1, r4, r7
	bl MI_CpuCopy8
	add r0, sp, #0
	mov r2, r11
	add r1, r5, r6
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121E4C:
	add r9, r8, #0x90
	add r8, r8, #0x80
	add r1, r4, r7
	mov r2, r11
	add r0, r8, r6
	ldr r4, [r9, r7]
	ldr r10, [r9, r6]
	bl MI_CpuCopy8
	add r0, sp, #0
	mov r2, r11
	add r1, r8, r6
	bl MI_CpuCopy8
	str r4, [r9, r7]
	mov r0, #1
	strb r0, [r5, r7]
	str r10, [r9, r6]
	mov r0, #0
	add sp, sp, #0x6c
	strb r0, [r5, r6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121E9C:
	cmp r10, #1
	bne _02121EF4
	add r9, r8, #0x90
	add r8, r8, #0x80
	add r1, r4, r7
	mov r2, r11
	add r0, r8, r6
	ldr r4, [r9, r7]
	ldr r10, [r9, r6]
	bl MI_CpuCopy8
	add r0, sp, #0
	mov r2, r11
	add r1, r8, r6
	bl MI_CpuCopy8
	str r4, [r9, r7]
	mov r0, #0
	strb r0, [r5, r7]
	str r10, [r9, r6]
	mov r0, #1
	add sp, sp, #0x6c
	strb r0, [r5, r6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121EF4:
	mov r5, r4
	mov r2, r11
	add r0, r5, r6
	add r1, r4, r7
	bl MI_CpuCopy8
	add r0, sp, #0
	mov r2, r11
	add r1, r5, r6
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov44_02121dbc

	arm_func_start FUN_ov44_02121f20
FUN_ov44_02121f20: ; 0x02121F20
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov44_02121f20

	arm_func_start FUN_ov44_02121f34
FUN_ov44_02121f34: ; 0x02121F34
	bx lr
	arm_func_end FUN_ov44_02121f34

	.rodata
	.global ov44_02121F38
ov44_02121F38:
	.byte 0x98, 0x00, 0x38, 0x00
	.global ov44_02121F3C
ov44_02121F3C:
	.byte 0x3A, 0x00, 0x3B, 0x00
	.global ov44_02121F40
ov44_02121F40:
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.global ov44_02121F48
ov44_02121F48:
	.byte 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.global ov44_02121F50
ov44_02121F50:
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov44_02121F58
ov44_02121F58:
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov44_02121F60
ov44_02121F60:
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.global ov44_02121F68
ov44_02121F68:
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.global ov44_02121F70
ov44_02121F70:
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.global ov44_02121F78
ov44_02121F78:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x68, 0x00
	.global ov44_02121F84
ov44_02121F84:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.global ov44_02121F90
ov44_02121F90:
	.byte 0xC7, 0x00, 0xAE, 0x00, 0x95, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAE, 0x00
	.global ov44_02121F9C
ov44_02121F9C:
	.byte 0x5D, 0x00, 0x00, 0x00
	.byte 0x5C, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00
	.global ov44_02121FA8
ov44_02121FA8:
	.byte 0x88, 0x00, 0x60, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x68, 0x00
	.global ov44_02121FB4
ov44_02121FB4:
	.byte 0x88, 0x00, 0x60, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00
	.byte 0x00, 0x00, 0x68, 0x00
	.global ov44_02121FC4
ov44_02121FC4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x68, 0x00
	.byte 0x00, 0x00, 0x68, 0x00
	.global ov44_02121FD4
ov44_02121FD4:
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov44_02121FE4
ov44_02121FE4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00
	.global ov44_02121FF4
ov44_02121FF4:
	.byte 0xC7, 0x00, 0xAE, 0x00, 0x95, 0x00, 0xAE, 0x00, 0x00, 0x00, 0xAE, 0x00
	.byte 0x00, 0x00, 0xAE, 0x00
	.global ov44_02122004
ov44_02122004:
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00
	.global ov44_02122014
ov44_02122014:
	.byte 0x10, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00
	.global ov44_02122024
ov44_02122024:
	.byte 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov44_02122034
ov44_02122034:
	.byte 0x23, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00
	.global ov44_02122044
ov44_02122044:
	.byte 0x32, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00
	.global ov44_02122054
ov44_02122054:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
	.global ov44_02122064
ov44_02122064:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov44_02122074
ov44_02122074:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov44_0212208C
ov44_0212208C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov44_021220AC
ov44_021220AC:
	.byte 0x0F, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov44_021220CC
ov44_021220CC:
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.global ov44_021220EC
ov44_021220EC:
	.byte 0x10, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov44_0212212C
ov44_0212212C:
	.word ov44_021224B4
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov44_02122384
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov44_021224C4
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov44_021224E4
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov44_02122504
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov44_021225D4
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov44_021225C4
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov44_02122534
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov44_02122544
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov44_02122554
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov44_02122564
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov44_02122574
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov44_02122584
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov44_02122594
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov44_021225A4
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov44_021225B4
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov44_021225E4
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov44_02122514
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov44_02122364
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov44_021224F4
	.byte 0x13, 0x00, 0x00, 0x00
	.word ov44_02122374
	.byte 0x14, 0x00, 0x00, 0x00
	.word ov44_021224D4
	.byte 0x15, 0x00, 0x00, 0x00
	.word ov44_02122394
	.byte 0x16, 0x00, 0x00, 0x00
	.word ov44_021223A4
	.byte 0x17, 0x00, 0x00, 0x00
	.word ov44_021223B4
	.byte 0x18, 0x00, 0x00, 0x00
	.word ov44_02122494
	.byte 0x19, 0x00, 0x00, 0x00
	.word ov44_021223D4
	.byte 0x1A, 0x00, 0x00, 0x00
	.word ov44_021223E4
	.byte 0x1B, 0x00, 0x00, 0x00
	.word ov44_021223F4
	.byte 0x1C, 0x00, 0x00, 0x00
	.word ov44_02122404
	.byte 0x1D, 0x00, 0x00, 0x00
	.word ov44_02122414
	.byte 0x1E, 0x00, 0x00, 0x00
	.word ov44_02122424
	.byte 0x1F, 0x00, 0x00, 0x00
	.word ov44_02122434
	.byte 0x20, 0x00, 0x00, 0x00
	.word ov44_02122444
	.byte 0x21, 0x00, 0x00, 0x00
	.word ov44_02122454
	.byte 0x22, 0x00, 0x00, 0x00
	.word ov44_02122464
	.byte 0x23, 0x00, 0x00, 0x00
	.word ov44_02122474
	.byte 0x24, 0x00, 0x00, 0x00
	.word ov44_02122484
	.byte 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov44_02122264
FUN_ov44_02122264: ; 0x02122264
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021222AC ; =0x021222C0
	str r0, [r4, #0xc]
	ldr r0, _021222B0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021222B4 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021222AC: .word ov44_021222C0
_021222B0: .word 0x00009CCD
_021222B4: .word 0x0000EA3C
	arm_func_end FUN_ov44_02122264

	.section .sinit, 4
ov44_021222B8:
	.word FUN_ov44_02122264

	.data
	.global ov44_021222C0
ov44_021222C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov44_021222D8
ov44_021222D8:
	.byte 0x82, 0xC8, 0x82, 0xDC, 0x82, 0xA6, 0x00, 0x00
	.global ov44_021222E0
ov44_021222E0:
	.byte 0x83, 0x8C, 0x83, 0x78, 0x83, 0x8B, 0x00, 0x00
	.global ov44_021222E8
ov44_021222E8:
	.byte 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4E, 0x00, 0x00
	.global ov44_021222F0
ov44_021222F0:
	.byte 0x83, 0x7B, 0x83, 0x66, 0x83, 0x42, 0x00, 0x00
	.global ov44_021222F8
ov44_021222F8:
	.byte 0x83, 0x4B, 0x83, 0x62, 0x83, 0x63, 0x00, 0x00
	.global ov44_02122300
ov44_02122300:
	.byte 0x82, 0xBB, 0x82, 0xA4, 0x82, 0xD1, 0x00, 0x00
	.global ov44_02122308
ov44_02122308:
	.byte 0x83, 0x4B, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00
	.global ov44_02122310
ov44_02122310:
	.byte 0x82, 0xB9, 0x82, 0xA2, 0x82, 0xEA, 0x82, 0xC2, 0x00, 0x00, 0x00, 0x00
	.global ov44_0212231C
ov44_0212231C:
	.byte 0x83, 0x58, 0x83, 0x73
	.byte 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov44_02122328
ov44_02122328:
	.byte 0x83, 0x58, 0x83, 0x5E, 0x83, 0x7E, 0x83, 0x69
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122334
ov44_02122334:
	.byte 0x83, 0x5B, 0x83, 0x62, 0x83, 0x50, 0x83, 0x93, 0x00, 0x00, 0x00, 0x00
	.global ov44_02122340
ov44_02122340:
	.byte 0x82, 0xED, 0x82, 0xA9, 0x82, 0xEA, 0x82, 0xE9, 0x00, 0x00, 0x00, 0x00
	.global ov44_0212234C
ov44_0212234C:
	.byte 0x83, 0x41, 0x83, 0x43
	.byte 0x83, 0x65, 0x83, 0x80, 0x00, 0x00, 0x00, 0x00
	.global ov44_02122358
ov44_02122358:
	.byte 0x82, 0xCC, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5
	.byte 0x82, 0xAD, 0x00, 0x00
	.global ov44_02122364
ov44_02122364:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122374
ov44_02122374:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122384
ov44_02122384:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122394
ov44_02122394:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021223A4
ov44_021223A4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021223B4
ov44_021223B4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021223C4
ov44_021223C4:
	.byte 0x83, 0x52, 0x83, 0x93, 0x83, 0x67, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x8B
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021223D4
ov44_021223D4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021223E4
ov44_021223E4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021223F4
ov44_021223F4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122404
ov44_02122404:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x74, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122414
ov44_02122414:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x74, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122424
ov44_02122424:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122434
ov44_02122434:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122444
ov44_02122444:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122454
ov44_02122454:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122464
ov44_02122464:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122474
ov44_02122474:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122484
ov44_02122484:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x77, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122494
ov44_02122494:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021224A4
ov44_021224A4:
	.byte 0x83, 0x6A, 0x83, 0x62, 0x83, 0x4E, 0x83, 0x6C, 0x81, 0x5B, 0x83, 0x80
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021224B4
ov44_021224B4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021224C4
ov44_021224C4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021224D4
ov44_021224D4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021224E4
ov44_021224E4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021224F4
ov44_021224F4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122504
ov44_02122504:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122514
ov44_02122514:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122524
ov44_02122524:
	.byte 0x82, 0xD0, 0x82, 0xC1, 0x82, 0xB3, 0x82, 0xC2, 0x82, 0xED, 0x82, 0xB4
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122534
ov44_02122534:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122544
ov44_02122544:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122554
ov44_02122554:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122564
ov44_02122564:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122574
ov44_02122574:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122584
ov44_02122584:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_02122594
ov44_02122594:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021225A4
ov44_021225A4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x38, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021225B4
ov44_021225B4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021225C4
ov44_021225C4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021225D4
ov44_021225D4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021225E4
ov44_021225E4:
	.byte 0x6D, 0x6D, 0x64, 0x5F, 0x62, 0x32, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov44_021225F4
ov44_021225F4:
	.word ov44_021222D8
	.word ov44_021224A4
	.word ov44_021222E0
	.word ov44_02122358
	.global ov44_02122604
ov44_02122604:
	.word ov44_02122310
	.word ov44_02122334
	.word ov44_02122340
	.word ov44_02122300
	.word ov44_02122524
	.word ov44_0212234C
	.global ov44_0212261C
ov44_0212261C:
	.word ov44_021222E8
	.word ov44_021222F0
	.word ov44_021223C4
	.word ov44_02122308
	.word ov44_0212231C
	.word ov44_02122328
	.word ov44_021222F8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov44_02122640
ov44_02122640:
	.word FUN_ov44_02121f34
	.word FUN_ov44_02121f20
	.word FUN_ov44_0211a290
	.word FUN_ov44_0211b204
	.word FUN_ov44_02119f00
	.word FUN_0202b208
	.word FUN_ov44_0211b800
	.word FUN_ov44_0211b9c0
	.word FUN_ov44_0211a0fc
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
	.global ov44_021226AC
ov44_021226AC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov44_021226C4
ov44_021226C4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x6D, 0x69, 0x6E, 0x6E, 0x61, 0x2E, 0x53, 0x50
	.byte 0x4C, 0x00, 0x00, 0x00
	.global ov44_021226E4
ov44_021226E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov44_021226FC
ov44_021226FC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F
	.byte 0x6D, 0x69, 0x6E, 0x6E, 0x61, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00
	.global ov44_0212271C
ov44_0212271C:
	.byte 0x25, 0x73, 0x82, 0xC6
	.byte 0x82, 0xD9, 0x82, 0xF1, 0x82, 0xC6, 0x82, 0xA4, 0x82, 0xC9, 0x0A, 0x82, 0xED, 0x82, 0xA9, 0x82
	.byte 0xEA, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov44_0212273C
ov44_0212273C:
	.byte 0x8D, 0xA1, 0x82, 0xCD
	.byte 0x25, 0x73, 0x82, 0xCC, 0x97, 0xCD, 0x82, 0xAA, 0x0A, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x65, 0x83
	.byte 0x42, 0x82, 0xC9, 0x95, 0x4B, 0x97, 0x76, 0x82, 0xBE, 0x81, 0x42, 0x00
	.global ov44_0212275C
ov44_0212275C:
	.byte 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xA9, 0x82, 0xE7, 0x82, 0xCD, 0x82, 0xB1, 0x82, 0xEA, 0x88, 0xC8, 0x8F, 0xE3
	.byte 0x81, 0x40, 0x91, 0x49, 0x8E, 0xE8, 0x82, 0xC6, 0x0A, 0x82, 0xED, 0x82, 0xA9, 0x82, 0xEA, 0x82
	.byte 0xE9, 0x81, 0x40, 0x82, 0xB1, 0x82, 0xC6, 0x82, 0xCD, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov44_02122798
ov44_02122798:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

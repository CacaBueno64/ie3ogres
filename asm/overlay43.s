
	.include "/macros/function.inc"
	.include "/include/overlay43.inc"

	.text
	arm_func_start FUN_ov43_02119f00
FUN_ov43_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	mov r5, r0
	ldr r0, _0211A0E8 ; =0x0209BA20
	mov r1, r8
	mov r4, r8
	bl FUN_0205107c
	mov r7, r0
	b _02119F68
_02119F24:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02119F5C
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r7
	bl FUN_0204fca0
	cmp r0, #0
	bne _02119F5C
	mov r0, r6
	mov r1, r4
	mov r2, r4
	bl FUN_0206d9cc
_02119F5C:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
_02119F68:
	cmp r8, #0x64
	blt _02119F24
	mov r8, #0
	b _02119FAC
_02119F78:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02119FA0
	mov r1, r4
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_0206d9cc
_02119FA0:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
_02119FAC:
	cmp r8, #0x64
	blt _02119F78
	mov r0, #0x4000000
	ldr r1, [r0]
	ldr r0, _0211A0EC ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #0x70]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A0F0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r1, r4
	add r0, r5, #8
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r5, #0x3000
	mov r6, #1
	str r4, [r0, #0x65c]
	mov r0, r5
	str r4, [r5, #0x68]
	strb r4, [r5, #0x6c]
	strb r4, [r5, #0x6d]
	str r4, [r5, #0x74]
	str r4, [r5, #0x78]
	str r6, [r5, #8]
	bl FUN_ov43_0211bb38
	add r0, r5, #0x3000
	str r4, [r0, #0x1b0]
	str r4, [r0, #0x1b4]
	mov r0, r5
	mov r1, r4
	bl FUN_ov43_0211bc2c
	mov r0, r5
	mov r1, r6
	bl FUN_ov43_0211bc2c
	mov r0, r5
	mov r1, r4
	bl FUN_ov43_0211bc5c
	mov r1, r6
	mov r0, r5
	bl FUN_ov43_0211bc5c
	mov r0, r5
	bl FUN_ov43_0211c0c8
	mov r0, r5
	bl FUN_ov43_0211dec0
	mov r0, r5
	bl FUN_ov43_0211e644
	mov r0, r5
	bl FUN_ov43_0211d800
	mov r0, r5
	bl FUN_ov43_0211e3c8
	mov r0, r5
	bl FUN_ov43_0211e7dc
	add r0, r5, #0x250
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0x2d0
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, #0x340
	bl MI_CpuFill8
	add r0, r5, #0x170
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x3000
	str r4, [r0, #0x6cc]
	mov r0, r5
	bl FUN_ov43_0211ae84
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A0E8: .word unk_0209BA20
_0211A0EC: .word unk_02099EB4
_0211A0F0: .word unk_02099ED4
	arm_func_end FUN_ov43_02119f00

	arm_func_start FUN_ov43_0211a0f4
FUN_ov43_0211a0f4: ; 0x0211A0F4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _0211A1E4 ; =0x02099ED8
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	bl FUN_020552dc
	movs r4, r0
	beq _0211A134
	bl FUN_0205430c
	ldr r2, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
_0211A134:
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r5, #0x70]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A1E8 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A1EC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r5
	bl FUN_ov43_0211d544
	mov r0, r5
	bl FUN_ov43_0211c110
	mov r7, #0
	mov r0, r5
	mov r1, r7
	bl FUN_ov43_0211bc90
	mov r6, #1
	mov r0, r5
	mov r1, r6
	bl FUN_ov43_0211bc90
	mov r1, r7
	mov r0, r5
	bl FUN_ov43_0211bcb8
	mov r1, r6
	mov r0, r5
	bl FUN_ov43_0211bcb8
	mov r0, r5
	mov r1, #2
	bl FUN_ov43_0211bb3c
	mov r0, r5
	bl FUN_ov43_0211f1c4
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_020542c8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A1E4: .word unk_02099ED8
_0211A1E8: .word unk_02099EB4
_0211A1EC: .word unk_02099ED4
	arm_func_end FUN_ov43_0211a0f4

	arm_func_start FUN_ov43_0211a1f0
FUN_ov43_0211a1f0: ; 0x0211A1F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r0, [r6, #0x6c]
	mov r5, r1
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A364 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x3000
	ldr r1, [r0, #0x618]
	cmp r1, #0
	ldreq r1, [r0, #0x634]
	cmpeq r1, #0
	ldreq r1, [r0, #0x67c]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6c8]
	cmpeq r1, #0
	ldreq r0, [r0, #0x688]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x6d]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A368 ; =0x0209A0F4
	ldr r7, _0211A36C ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r7]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #0
	ldrne r0, [r7]
	addne r0, r0, #0xf00
	ldrneh r2, [r0, #0x38]
	cmpne r2, #0
	movne r1, #0
	movne r5, r2
	movne r4, r2
	strneh r1, [r0, #0x38]
	tst r5, #1
	beq _0211A2B0
	mov r0, r6
	bl FUN_ov43_0211a370
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2B0:
	tst r5, #2
	beq _0211A2C4
	mov r0, r6
	bl FUN_ov43_0211a39c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2C4:
	tst r5, #0x800
	beq _0211A2D8
	mov r0, r6
	bl FUN_ov43_0211a48c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2D8:
	tst r5, #0x400
	beq _0211A2EC
	mov r0, r6
	bl FUN_ov43_0211a490
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2EC:
	tst r5, #0x200
	beq _0211A300
	mov r0, r6
	bl FUN_ov43_0211a514
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A300:
	tst r5, #0x100
	beq _0211A314
	mov r0, r6
	bl FUN_ov43_0211a578
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A314:
	tst r5, #0x20
	beq _0211A328
	mov r0, r6
	bl FUN_ov43_0211a5dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A328:
	tst r5, #0x10
	beq _0211A33C
	mov r0, r6
	bl FUN_ov43_0211a634
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A33C:
	tst r4, #0x40
	beq _0211A350
	mov r0, r6
	bl FUN_ov43_0211a68c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A350:
	tst r4, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov43_0211a6dc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A364: .word unk_02099ED4
_0211A368: .word unk_0209A0F4
_0211A36C: .word unk_02099EB4
	arm_func_end FUN_ov43_0211a1f0

	arm_func_start FUN_ov43_0211a370
FUN_ov43_0211a370: ; 0x0211A370
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x6d]
	cmp r1, #0
	beq _0211A38C
	cmp r1, #1
	beq _0211A394
	ldmfd sp!, {r3, pc}
_0211A38C:
	bl FUN_ov43_0211ecc4
	ldmfd sp!, {r3, pc}
_0211A394:
	bl FUN_ov43_0211ef3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211a370

	arm_func_start FUN_ov43_0211a39c
FUN_ov43_0211a39c: ; 0x0211A39C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x6d]
	cmp r1, #0
	beq _0211A3BC
	cmp r1, #1
	beq _0211A3CC
	b _0211A46C
_0211A3BC:
	mov r1, #0
	mov r2, r1
	bl FUN_ov43_0211c818
	b _0211A46C
_0211A3CC:
	add r1, r4, #0x3000
	ldr r2, [r1, #0x654]
	cmp r2, #0
	beq _0211A460
	ldr r2, [r1, #0x658]
	cmp r2, #0
	beq _0211A3F4
	cmp r2, #1
	beq _0211A420
	b _0211A438
_0211A3F4:
	ldr r3, [r1, #0x678]
	ldr r2, [r1, #0x660]
	cmp r3, r2
	beq _0211A438
	str r3, [r1, #0x660]
	bl FUN_ov43_0211e064
	mov r0, r4
	bl FUN_ov43_0211d68c
	mov r0, r4
	bl FUN_ov43_0211c84c
	b _0211A438
_0211A420:
	ldr r2, [r1, #0x68c]
	ldr r0, [r1, #0x684]
	cmp r2, r0
	movne r0, #1
	strne r2, [r1, #0x684]
	strne r0, [r1, #0x688]
_0211A438:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x654]
	ldr r2, [r0, #0x658]
	mov r0, r4
	bl FUN_ov43_0211db7c
	add r0, r4, #0x3000
	ldr r1, [r0, #0x658]
	mov r2, #0
	str r2, [r0, #0x654]
	str r1, [r0, #0x65c]
_0211A460:
	mov r0, r4
	mov r1, #0
	bl FUN_ov43_0211ae74
_0211A46C:
	mov r0, r4
	mov r1, #0xa
	bl FUN_ov43_0211a85c
	ldr r0, _0211A488 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A488: .word gL5Sound
	arm_func_end FUN_ov43_0211a39c

	arm_func_start FUN_ov43_0211a48c
FUN_ov43_0211a48c: ; 0x0211A48C
	bx lr
	arm_func_end FUN_ov43_0211a48c

	arm_func_start FUN_ov43_0211a490
FUN_ov43_0211a490: ; 0x0211A490
	stmfd sp!, {r4, lr}
	ldr r1, _0211A50C ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210f484
	ldr r1, [r4, #0x68]
	sub r2, r0, #8
	cmp r1, r2
	bne _0211A4C4
	cmp r0, #8
	beq _0211A4C4
	cmp r0, #9
	ldmnefd sp!, {r4, pc}
_0211A4C4:
	mov r0, r4
	bl FUN_ov43_0211ddf4
	cmp r0, #0
	bne _0211A4E4
	ldr r0, _0211A510 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A4E4:
	ldrb r0, [r4, #0x6d]
	cmp r0, #0
	cmpne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211A510 ; =gL5Sound
	add r2, r4, #0x3000
	mov r1, #1
	str r1, [r2, #0x67c]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A50C: .word unk_02099EB4
_0211A510: .word gL5Sound
	arm_func_end FUN_ov43_0211a490

	arm_func_start FUN_ov43_0211a514
FUN_ov43_0211a514: ; 0x0211A514
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x6d]
	cmp r1, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	add r12, r0, #0x3000
	ldr r1, [r12, #0x684]
	mov r4, #1
	add lr, r1, #0xc
	ldr r3, _0211A570 ; =0x4EC4EC4F
	mov r1, lr, lsr #0x1f
	smull r2, r5, r3, lr
	add r5, r1, r5, asr #2
	mov r3, #0xd
	smull r1, r2, r3, r5
	sub r5, lr, r1
	mov r1, #6
	str r5, [r12, #0x684]
	str r4, [r12, #0x688]
	bl FUN_ov43_0211a85c
	ldr r0, _0211A574 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A570: .word 0x4EC4EC4F
_0211A574: .word gL5Sound
	arm_func_end FUN_ov43_0211a514

	arm_func_start FUN_ov43_0211a578
FUN_ov43_0211a578: ; 0x0211A578
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x6d]
	cmp r1, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	add r12, r0, #0x3000
	ldr r1, [r12, #0x684]
	mov r4, #1
	add lr, r1, #1
	ldr r3, _0211A5D4 ; =0x4EC4EC4F
	mov r1, lr, lsr #0x1f
	smull r2, r5, r3, lr
	add r5, r1, r5, asr #2
	mov r3, #0xd
	smull r1, r2, r3, r5
	sub r5, lr, r1
	mov r1, #7
	str r5, [r12, #0x684]
	str r4, [r12, #0x688]
	bl FUN_ov43_0211a85c
	ldr r0, _0211A5D8 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A5D4: .word 0x4EC4EC4F
_0211A5D8: .word gL5Sound
	arm_func_end FUN_ov43_0211a578

	arm_func_start FUN_ov43_0211a5dc
FUN_ov43_0211a5dc: ; 0x0211A5DC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0x6d]
	cmp r1, #1
	addhi sp, sp, #8
	ldmhifd sp!, {r3, pc}
	add r1, r0, #0x3000
	ldr r3, [r1, #0x65c]
	mov r2, #0
	eor r3, r3, #1
	str r3, [r1, #0x65c]
	str r2, [sp]
	mov r2, #7
	str r2, [sp, #4]
	ldr r2, [r1, #0x65c]
	mov r1, #0x88
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov43_0211d8f0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211a5dc

	arm_func_start FUN_ov43_0211a634
FUN_ov43_0211a634: ; 0x0211A634
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0x6d]
	cmp r1, #1
	addhi sp, sp, #8
	ldmhifd sp!, {r3, pc}
	add r1, r0, #0x3000
	ldr r3, [r1, #0x65c]
	mov r2, #0
	eor r3, r3, #1
	str r3, [r1, #0x65c]
	str r2, [sp]
	mov r2, #7
	str r2, [sp, #4]
	ldr r2, [r1, #0x65c]
	mov r1, #0x88
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov43_0211d8f0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211a634

	arm_func_start FUN_ov43_0211a68c
FUN_ov43_0211a68c: ; 0x0211A68C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0x6d]
	cmp r1, #0
	cmpne r1, #1
	addne sp, sp, #8
	ldmnefd sp!, {r3, pc}
	mvn r1, #0
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0x3000
	ldr r2, [r1, #0x65c]
	mov r1, #0x88
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov43_0211d8f0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211a68c

	arm_func_start FUN_ov43_0211a6dc
FUN_ov43_0211a6dc: ; 0x0211A6DC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r1, [r0, #0x6d]
	cmp r1, #0
	cmpne r1, #1
	addne sp, sp, #8
	ldmnefd sp!, {r3, pc}
	mov r1, #1
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0x3000
	ldr r2, [r1, #0x65c]
	mov r1, #0x88
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov43_0211d8f0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211a6dc

	arm_func_start FUN_ov43_0211a72c
FUN_ov43_0211a72c: ; 0x0211A72C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211A854 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r11, #2
	mov r9, r1
	mov r5, #1
	mov r8, r2
	mov r1, r11
	mov r2, r5
	mov r7, r3
	mov r6, #0
	bl FUN_ov16_02112724
	add r1, r10, r9, lsl #2
	add r2, r10, r8, lsl #2
	add r1, r1, #0x3000
	str r0, [r1, #0x214]
	add r1, r2, #0x3000
	ldr r1, [r1, #0x1b8]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r7
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	str r5, [sp]
	mov r0, #0x190
	str r0, [sp, #4]
	ldr r0, _0211A858 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	cmp r0, #0
	strneb r6, [r0, #0x10]
	strneb r6, [r0, #0xf]
	strneh r6, [r0, #0xc]
	strneb r6, [r0, #0x11]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A854: .word unk_02099F38
_0211A858: .word unk_02099EB4
	arm_func_end FUN_ov43_0211a72c

	arm_func_start FUN_ov43_0211a85c
FUN_ov43_0211a85c: ; 0x0211A85C
	ldr r0, _0211A86C ; =0x02099EB4
	ldr r12, _0211A870 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211A86C: .word unk_02099EB4
_0211A870: .word FUN_ov16_0210efac
	arm_func_end FUN_ov43_0211a85c

	arm_func_start FUN_ov43_0211a874
FUN_ov43_0211a874: ; 0x0211A874
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211A928 ; =0x02099EB4
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
	ldr r0, _0211A92C ; =0x02099F38
	str r5, [sp]
	add r1, r1, #0x3000
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x214]
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
_0211A928: .word unk_02099EB4
_0211A92C: .word unk_02099F38
	arm_func_end FUN_ov43_0211a874

	arm_func_start FUN_ov43_0211a930
FUN_ov43_0211a930: ; 0x0211A930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrb r0, [r5, #0x6c]
	mov r4, r1
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AA50 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addeq r0, r5, #0x3000
	ldreq r1, [r0, #0x618]
	cmpeq r1, #0
	ldreq r1, [r0, #0x634]
	cmpeq r1, #0
	ldreq r1, [r0, #0x67c]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6c8]
	cmpeq r1, #0
	ldreq r0, [r0, #0x688]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x6d]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211AA54 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A9B8: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211A9D0 ; case 1
	b _0211AA00 ; case 2
	b _0211AA18 ; case 3
	b _0211AA34 ; case 4
	b _0211A9E8 ; case 5
_0211A9D0:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov43_0211aa58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A9E8:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov43_0211ab4c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA00:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov43_0211ab74
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA18:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov43_0211abdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA34:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov43_0211abdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA50: .word unk_02099ED4
_0211AA54: .word unk_02099EB4
	arm_func_end FUN_ov43_0211a930

	arm_func_start FUN_ov43_0211aa58
FUN_ov43_0211aa58: ; 0x0211AA58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r2, r8, #0x3000
	mov r7, r1
	ldr r6, [r2, #0x610]
	cmp r7, #5
	sub r4, r7, #0xc
	sub r5, r7, #0x15
	addls pc, pc, r7, lsl #2
	b _0211AAAC
_0211AA80: ; jump table
	b _0211AAAC ; case 0
	b _0211AAA0 ; case 1
	b _0211AAA0 ; case 2
	b _0211AAA0 ; case 3
	b _0211AAA0 ; case 4
	b _0211AA98 ; case 5
_0211AA98:
	bl FUN_ov43_0211e250
	b _0211AAAC
_0211AAA0:
	mov r3, #0
	str r3, [r2, #0x668]
	bl FUN_ov43_0211e0d8
_0211AAAC:
	cmp r7, #0xc
	blt _0211AAFC
	cmp r7, #0x14
	bgt _0211AAFC
	cmp r4, r6
	addeq r0, r8, #0x3000
	ldreq r0, [r0, #0x65c]
	cmpeq r0, #0
	bne _0211AADC
	mov r0, r8
	bl FUN_ov43_0211a370
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AADC:
	mov r4, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov43_0211db7c
	add r0, r8, #0x3000
	str r4, [r0, #0x65c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AAFC:
	cmp r7, #0x15
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0x1d
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, r6
	addeq r0, r8, #0x3000
	ldreq r0, [r0, #0x65c]
	cmpeq r0, #1
	bne _0211AB2C
	mov r0, r8
	bl FUN_ov43_0211a370
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AB2C:
	mov r4, #1
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov43_0211db7c
	add r0, r8, #0x3000
	str r4, [r0, #0x65c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov43_0211aa58

	arm_func_start FUN_ov43_0211ab4c
FUN_ov43_0211ab4c: ; 0x0211AB4C
	stmfd sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #3
	beq _0211AB6C
	cmp r1, #5
	ldmnefd sp!, {r3, pc}
	bl FUN_ov43_0211e284
	ldmfd sp!, {r3, pc}
_0211AB6C:
	bl FUN_ov43_0211e1ec
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211ab4c

	arm_func_start FUN_ov43_0211ab74
FUN_ov43_0211ab74: ; 0x0211AB74
	stmfd sp!, {r3, lr}
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211AB84: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	ldmfd sp!, {r3, pc} ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	b _0211ABCC ; case 6
	b _0211ABD4 ; case 7
	b _0211ABC4 ; case 8
	b _0211ABC4 ; case 9
	b _0211ABB4 ; case 10
	b _0211ABBC ; case 11
_0211ABB4:
	bl FUN_ov43_0211a39c
	ldmfd sp!, {r3, pc}
_0211ABBC:
	bl FUN_ov43_0211a370
	ldmfd sp!, {r3, pc}
_0211ABC4:
	bl FUN_ov43_0211a490
	ldmfd sp!, {r3, pc}
_0211ABCC:
	bl FUN_ov43_0211a514
	ldmfd sp!, {r3, pc}
_0211ABD4:
	bl FUN_ov43_0211a578
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211ab74

	arm_func_start FUN_ov43_0211abdc
FUN_ov43_0211abdc: ; 0x0211ABDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r4, _0211AC6C ; =0x02099EB4
	mov r8, r0
	mov r5, #0
	mov r7, r1
	ldr r0, [r4]
	add r1, sp, #4
	str r5, [sp, #8]
	mov r6, r2
	bl FUN_ov16_0210f48c
	str r5, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r4]
	add r3, sp, #8
	bl FUN_ov16_0210ecb8
	cmp r6, #0
	bne _0211AC5C
	ldrb r0, [r8, #0x6d]
	cmp r0, #0
	beq _0211AC40
	cmp r0, #1
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AC40:
	cmp r7, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_ov43_0211e284
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AC5C:
	add r0, r8, #0x3000
	str r5, [r0, #0x6cc]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AC6C: .word unk_02099EB4
	arm_func_end FUN_ov43_0211abdc

	arm_func_start FUN_ov43_0211ac70
FUN_ov43_0211ac70: ; 0x0211AC70
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x6c]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211ACE8
_0211AC88: ; jump table
	b _0211ACAC ; case 0
	b _0211ACB4 ; case 1
	b _0211ACBC ; case 2
	b _0211ACC4 ; case 3
	b _0211ACCC ; case 4
	b _0211ACD4 ; case 5
	b _0211ACE8 ; case 6
	b _0211ACDC ; case 7
	b _0211ACE4 ; case 8
_0211ACAC:
	bl FUN_ov43_0211bbf0
	b _0211ACE8
_0211ACB4:
	bl FUN_ov43_0211bce0
	b _0211ACE8
_0211ACBC:
	bl FUN_ov43_0211c1b4
	b _0211ACE8
_0211ACC4:
	bl FUN_ov43_0211c4d8
	b _0211ACE8
_0211ACCC:
	bl FUN_ov43_0211c568
	b _0211ACE8
_0211ACD4:
	bl FUN_ov43_0211c674
	b _0211ACE8
_0211ACDC:
	bl FUN_ov43_0211c774
	b _0211ACE8
_0211ACE4:
	bl FUN_ov43_0211c7a8
_0211ACE8:
	mov r0, r4
	bl FUN_ov43_0211ae04
	ldr r0, _0211ADF4 ; =0x02099ED4
	ldr r5, _0211ADF8 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211AD28
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211AD34
_0211AD28:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211AD34:
	bl _ffix
	ldr r2, _0211ADFC ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	add r0, r4, #0x3000
	ldr r0, [r0, #0x6c8]
	cmp r0, #0
	beq _0211AD60
	mov r0, r4
	bl FUN_ov43_0211bdd4
_0211AD60:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x688]
	cmp r0, #0
	beq _0211AD78
	mov r0, r4
	bl FUN_ov43_0211befc
_0211AD78:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x618]
	cmp r0, #0
	beq _0211AD90
	mov r0, r4
	bl FUN_ov43_0211dc88
_0211AD90:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x634]
	cmp r0, #0
	beq _0211ADA8
	mov r0, r4
	bl FUN_ov43_0211dd2c
_0211ADA8:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x67c]
	cmp r0, #0
	beq _0211ADC0
	mov r0, r4
	bl FUN_ov43_0211e6c0
_0211ADC0:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x690]
	cmp r0, #0
	beq _0211ADD8
	mov r0, r4
	bl FUN_ov43_0211ea24
_0211ADD8:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x6a8]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov43_0211eb74
	ldmfd sp!, {r3, r4, r5, pc}
_0211ADF4: .word unk_02099ED4
_0211ADF8: .word unk_0209A110
_0211ADFC: .word unk_02099F58
	arm_func_end FUN_ov43_0211ac70

	arm_func_start FUN_ov43_0211ae00
FUN_ov43_0211ae00: ; 0x0211AE00
	bx lr
	arm_func_end FUN_ov43_0211ae00

	arm_func_start FUN_ov43_0211ae04
FUN_ov43_0211ae04: ; 0x0211AE04
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211AE70 ; =0x0211F8D8
	mov r4, r0
	ldr r12, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r4, #0x68]
	add r2, sp, #0
	str r12, [sp]
	str r3, [sp, #4]
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4, #8]
	bl FUN_ov43_0211ddf4
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #1
	moveq r1, #0
	streqb r0, [r4, #0x15]
	streq r1, [r4, #8]
	ldr r0, [r4, #4]
	add r1, r4, #8
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211AE70: .word ov43_0211F8D8
	arm_func_end FUN_ov43_0211ae04

	arm_func_start FUN_ov43_0211ae74
FUN_ov43_0211ae74: ; 0x0211AE74
	mov r2, #5
	strb r1, [r0, #0x6d]
	strb r2, [r0, #0x6c]
	bx lr
	arm_func_end FUN_ov43_0211ae74

	arm_func_start FUN_ov43_0211ae84
FUN_ov43_0211ae84: ; 0x0211AE84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xf0
	ldr r4, _0211B6A8 ; =0x0209BA20
	mov r9, #0
	mov r10, r0
	mov r0, r4
	mov r1, r9
	mov r11, r9
	bl FUN_0205107c
	mov r0, r4
	mov r1, r9
	bl FUN_0205106c
	add r7, sp, #0x20
	mov r1, r9
	mov r0, r7
	mov r2, #0xd0
	bl MI_CpuFill8
	add r0, sp, #0x18
	mov r1, r9
	mov r2, #8
	bl MI_CpuFill8
	mov r5, #0x5c0
	add r0, r10, #0x7c
	mov r1, r9
	mov r2, r5
	bl MI_CpuFill8
	add r0, r10, #0x23c
	mov r2, r5
	add r0, r0, #0x400
	mov r1, r9
	bl MI_CpuFill8
	add r0, r10, #0x3fc
	ldr r2, _0211B6AC ; =0x00002560
	add r0, r0, #0x800
	mov r1, r9
	bl MI_CpuFill8
	add r0, r10, #0x3000
	strb r9, [r0, #0x15c]
	str r9, [r0, #0x160]
	str r9, [r0, #0x16c]
	mov r0, r4
	mov r1, r9
	bl FUN_0207249c
	mov r5, r0
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f078c
	mov r2, r0
	ldrh r1, [r5, #0x22]
	mov r0, r4
	mov r3, r9
	bl FUN_0206fb74
	mov r0, r4
	mov r1, r9
	bl FUN_0205106c
	mov r6, r0
	add r0, r10, #0x15c
	mov r8, r9
	add r5, r0, #0x3000
	add r4, r10, #0x3000
_0211AF70:
	mov r0, r6
	mov r1, r8
	bl FUN_02050244
	mov r1, r11
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211AFC0
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211AFC0
	mov r0, r6
	mov r1, r8
	bl FUN_02050244
	ldrb r1, [r4, #0x15c]
	add r9, r9, #1
	mov r1, r1, lsl #1
	strh r0, [r7, r1]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_0211AFC0:
	add r8, r8, #1
	cmp r8, #4
	blt _0211AF70
	mov r8, #0
	ldr r0, _0211B6A8 ; =0x0209BA20
	mov r1, r8
	bl FUN_0205107c
	str r0, [sp, #4]
	add r0, r10, #0x15c
	add r7, r0, #0x3000
	add r4, r10, #0x3000
_0211AFEC:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0211B068
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211B068
	mov r0, r5
	bl FUN_0206cc00
	mov r1, r0
	ldr r0, [sp, #4]
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211B068
	mov r0, r5
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r6
	bl FUN_020502a8
	cmp r0, #0
	bne _0211B068
	mov r0, r5
	bl FUN_0206cc00
	ldrb r1, [r4, #0x15c]
	add r9, r9, #1
	mov r2, r1, lsl #1
	add r1, sp, #0x20
	strh r0, [r1, r2]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_0211B068:
	add r8, r8, #1
	cmp r8, #0x64
	add r5, sp, #0x20
	blt _0211AFEC
	add r0, r10, #0x15c
	add r0, r0, #0x3000
	mov r11, #0
	str r0, [sp, #8]
_0211B088:
	mov r0, r11
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0211B124
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211B124
	add r4, r10, #0x3000
	ldrb r0, [r4, #0x15c]
	mov r8, #0
	cmp r0, #0
	ble _0211B0E8
_0211B0B8:
	mov r0, r7
	bl FUN_0206cbf8
	mov r1, r8, lsl #1
	ldrh r1, [r5, r1]
	cmp r1, r0
	beq _0211B0E8
	ldrb r1, [r4, #0x15c]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, asr #16
	mov r8, r0, asr #0x10
	bgt _0211B0B8
_0211B0E8:
	add r0, r10, #0x3000
	ldrb r0, [r0, #0x15c]
	cmp r8, r0
	bne _0211B124
	mov r0, r7
	bl FUN_0206cbf8
	add r1, r10, #0x3000
	ldrb r1, [r1, #0x15c]
	mov r1, r1, lsl #1
	strh r0, [r5, r1]
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	strb r1, [r0]
_0211B124:
	add r0, r11, #1
	mov r0, r0, lsl #0x10
	mov r11, r0, asr #0x10
	cmp r11, #0x64
	blt _0211B088
	cmp r9, #0
	add r7, sp, #0x20
	mov r4, #0
	ble _0211B30C
	add r0, r10, #0x23c
	add r11, r0, #0x400
_0211B150:
	mov r0, r4, lsl #1
	ldrh r0, [r7, r0]
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _0211B300
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211B300
	mov r0, #0x5c
	mul r8, r4, r0
	add r0, r5, #0x1c
	add r1, r11, r8
	mov r2, #0x10
	bl MI_CpuCopy8
	ldr r0, _0211B6A8 ; =0x0209BA20
	add r8, r10, r8
	mov r1, r5
	mov r2, #0x25
	mov r3, #0
	bl FUN_0204f02c
	str r0, [r8, #0x64c]
	mov r0, r4, lsl #1
	ldrh r2, [r7, r0]
	add r1, r8, #0x600
	mov r0, r5
	strh r2, [r1, #0x50]
	bl FUN_0206cc00
	add r1, r8, #0x600
	strh r0, [r1, #0x52]
	ldr r0, _0211B6A8 ; =0x0209BA20
	mov r1, r5
	bl FUN_0204b754
	add r1, r8, #0x600
	strh r0, [r1, #0x54]
	mov r0, r5
	bl FUN_0204fb60
	add r1, r8, #0x600
	strh r0, [r1, #0x56]
	mov r1, r4, lsl #1
	ldrh r1, [r7, r1]
	ldr r0, [sp, #4]
	bl FUN_0204fd68
	str r0, [r8, #0x658]
	mov r1, r4, lsl #1
	ldrh r1, [r7, r1]
	mov r0, r6
	bl FUN_0205019c
	str r0, [r8, #0x65c]
	mov r0, r5
	bl FUN_0206d714
	strb r0, [r8, #0x666]
	mov r0, #1
	strb r0, [r8, #0x667]
	mov r0, #0
	str r0, [r8, #0x660]
	mov r0, r5
	mov r1, #0
	bl FUN_0206d9b0
	strb r0, [r8, #0x664]
	mov r0, r5
	bl FUN_0206d454
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x20
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d464
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x40
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d474
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x80
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d484
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x100
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d494
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x200
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d4a4
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x400
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d4b4
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x800
	strne r0, [r8, #0x660]
	mov r0, r5
	bl FUN_0206d4c4
	cmp r0, #0
	ldrne r0, [r8, #0x660]
	orrne r0, r0, #0x1000
	strne r0, [r8, #0x660]
_0211B300:
	add r4, r4, #1
	cmp r4, r9
	blt _0211B150
_0211B30C:
	cmp r9, #0x10
	ldr r7, _0211B6A8 ; =0x0209BA20
	mov r8, #0
	cmplt r9, #0x10
	bge _0211B338
_0211B320:
	mov r0, #0x5c
	mla r0, r9, r0, r10
	add r9, r9, #1
	str r8, [r0, #0x658]
	cmp r9, #0x10
	blt _0211B320
_0211B338:
	add r0, r10, #0x3000
	str r0, [sp, #0x14]
	ldrb r0, [r0, #0x15c]
	add r11, sp, #0x20
	mov r4, #0
	cmp r0, #0
	ble _0211B5F8
	add r0, r10, #0x3fc
	add r0, r0, #0x800
	add r1, r10, #0x28
	str r0, [sp, #0xc]
	add r0, r1, #0xc00
	str r0, [sp, #0x10]
_0211B36C:
	mov r0, r4, lsl #1
	ldrh r0, [r11, r0]
	mov r1, r8
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _0211B5E4
	mov r0, #0x5c
	mul r9, r4, r0
	ldr r1, [sp, #0xc]
	add r0, r5, #0x1c
	add r1, r1, r9
	mov r2, #0x10
	bl MI_CpuCopy8
	add r9, r10, r9
	mov r0, r7
	mov r1, r5
	mov r2, #0x25
	mov r3, r8
	bl FUN_0204f02c
	str r0, [r9, #0xc0c]
	mov r0, r4, lsl #1
	ldrh r2, [r11, r0]
	add r1, r9, #0xc00
	mov r0, r5
	strh r2, [r1, #0x10]
	bl FUN_0206cc00
	add r1, r9, #0xc00
	strh r0, [r1, #0x12]
	mov r0, r7
	mov r1, r5
	bl FUN_0204b754
	add r1, r9, #0xc00
	strh r0, [r1, #0x14]
	mov r0, r5
	bl FUN_0204fb60
	add r1, r9, #0xc00
	strh r0, [r1, #0x16]
	mov r1, r4, lsl #1
	ldrh r1, [r11, r1]
	ldr r0, [sp, #4]
	bl FUN_0204fd68
	str r0, [r9, #0xc18]
	mov r1, r4, lsl #1
	ldrh r1, [r11, r1]
	mov r0, r6
	bl FUN_0205019c
	str r0, [r9, #0xc1c]
	mov r0, r5
	bl FUN_0206d714
	strb r0, [r9, #0xc26]
	mov r0, #1
	strb r0, [r9, #0xc27]
	str r8, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d454
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x20
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d464
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x40
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d474
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x80
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d484
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x100
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d494
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x200
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d4a4
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x400
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d4b4
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	orrne r0, r0, #0x800
	strne r0, [r9, #0xc20]
	mov r0, r5
	bl FUN_0206d4c4
	cmp r0, #0
	ldrne r0, [r9, #0xc20]
	ldr r1, [sp, #0x10]
	orrne r0, r0, #0x1000
	strne r0, [r9, #0xc20]
	mov r0, #0x5c
	mul r9, r4, r0
	add r0, r5, #0x2c
	add r1, r1, r9
	mov r2, #0x20
	bl MI_CpuCopy8
	add r9, r10, r9
	mov r0, r7
	mov r1, r5
	mov r2, #0x1e
	mov r3, r8
	bl FUN_0204f02c
	add r1, r9, #0xc00
	strh r0, [r1, #0x48]
	mov r0, r7
	mov r1, r5
	mov r2, #0x1f
	mov r3, r8
	bl FUN_0204f02c
	add r1, r9, #0xc00
	strh r0, [r1, #0x4a]
	mov r0, r7
	mov r1, r5
	mov r2, #0x21
	mov r3, r8
	bl FUN_0204f02c
	add r1, r9, #0xc00
	strh r0, [r1, #0x4c]
	mov r0, r7
	mov r1, r5
	mov r2, #0x20
	mov r3, r8
	bl FUN_0204f02c
	add r1, r9, #0xc00
	strh r0, [r1, #0x4e]
	mov r0, r7
	mov r1, r5
	mov r2, #0x22
	mov r3, r8
	bl FUN_0204f02c
	add r1, r9, #0xc00
	strh r0, [r1, #0x50]
	mov r0, r7
	mov r1, r5
	mov r2, #0x24
	mov r3, r8
	bl FUN_0204f02c
	add r2, r9, #0xc00
	strh r0, [r2, #0x52]
	mov r1, r5
	mov r0, r7
	mov r2, #0x23
	mov r3, r8
	bl FUN_0204f02c
	add r1, r9, #0xc00
	strh r0, [r1, #0x54]
_0211B5E4:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	ldrb r0, [r0, #0x15c]
	cmp r4, r0
	blt _0211B36C
_0211B5F8:
	mov r6, #0
	add r5, sp, #0x18
	ldr r0, _0211B6A8 ; =0x0209BA20
	mov r1, r6
	mov r2, r5
	mov r3, #4
	str r6, [sp]
	mov r7, #0x5c
	mov r4, r6
	bl FUN_0204b2f4
	mov r2, #1
_0211B624:
	mov r3, r4
	cmp r0, #0
	ble _0211B660
	mla r9, r6, r7, r10
	add r1, r9, #0x600
	ldrh r8, [r1, #0x50]
_0211B63C:
	mov r1, r3, lsl #1
	ldrh r1, [r5, r1]
	cmp r8, r1
	streqb r2, [r9, #0x665]
	streqb r2, [r9, #0xc25]
	beq _0211B660
	add r3, r3, #1
	cmp r3, r0
	blt _0211B63C
_0211B660:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211B624
	add r1, r10, #0x3000
	add r2, r10, #0x23c
	str r0, [r1, #0x160]
	add r0, r2, #0x400
	add r1, r10, #0x7c
	mov r2, #0x5c0
	bl MI_CpuCopy8
	ldr r0, _0211B6B0 ; =0x02099F44
	ldr r0, [r0]
	bl FUN_ov131_0213ad10
	mov r1, r0
	mov r0, r10
	bl FUN_ov43_0211b6b4
	add sp, sp, #0xf0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B6A8: .word unk_0209BA20
_0211B6AC: .word 0x00002560
_0211B6B0: .word unk_02099F44
	arm_func_end FUN_ov43_0211ae84

	arm_func_start FUN_ov43_0211b6b4
FUN_ov43_0211b6b4: ; 0x0211B6B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x64
	mov r9, r0
	add r0, r9, #0x3000
	ldrb r0, [r0, #0x15c]
	movs r5, r1
	mov r4, #0x5c
	str r0, [sp]
	addeq sp, sp, #0x64
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	add r0, sp, #8
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	cmp r5, #1
	bne _0211B7B4
	ldr r0, [sp]
	cmp r0, #0
	addle sp, sp, #0x64
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B708:
	ldr r0, [sp]
	mov r7, #0
	sub r11, r0, #1
	cmp r11, #0
	ble _0211B79C
	add r0, r9, #0x3fc
	add r6, r0, #0x800
	add r5, sp, #8
_0211B728:
	mul r10, r7, r4
	add r0, r9, r10
	ldrb r3, [r0, #0xc29]
	ldrb r2, [r0, #0xc85]
	ldrb r1, [r0, #0xc2b]
	ldrb r0, [r0, #0xc87]
	cmp r3, r2
	ble _0211B74C
	b _0211B758
_0211B74C:
	bne _0211B790
	cmp r1, r0
	ble _0211B790
_0211B758:
	add r0, r6, r10
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #1
	add r1, r6, r10
	mul r10, r0, r4
	add r0, r6, r10
	mov r2, r4
	bl MI_CpuCopy8
	add r1, r6, r10
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
_0211B790:
	add r7, r7, #1
	cmp r7, r11
	blt _0211B728
_0211B79C:
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B708
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B7B4:
	cmp r5, #2
	bne _0211B8BC
	ldr r0, [sp]
	cmp r0, #0
	addle sp, sp, #0x64
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B7CC:
	ldr r0, [sp]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	ble _0211B8A4
	add r0, r9, #0x3fc
	add r10, r0, #0x800
	add r7, sp, #8
_0211B7F0:
	mul r5, r6, r4
	add r11, r9, r5
	add r0, r11, #0xb00
	ldrsb r2, [r0, #0xfc]
	ldrsb r0, [r0, #0xfe]
	ldrb r1, [r11, #0xbfd]
	mov r2, r2, lsl #0x18
	mov r0, r0, lsl #0x18
	orr r3, r1, r2, lsr #16
	add r1, r11, #0xc00
	ldrsb r2, [r1, #0x58]
	ldrsb r12, [r1, #0x5a]
	ldrb r1, [r11, #0xc59]
	mov r2, r2, lsl #0x18
	mov r12, r12, lsl #0x18
	orr r2, r1, r2, lsr #16
	cmp r3, r2
	ldrb r1, [r11, #0xbff]
	ldrb r11, [r11, #0xc5b]
	orr r1, r1, r0, lsr #16
	orr r0, r11, r12, lsr #16
	ble _0211B84C
	b _0211B85C
_0211B84C:
	cmp r3, r2
	bne _0211B894
	cmp r1, r0
	ble _0211B894
_0211B85C:
	add r0, r10, r5
	mov r1, r7
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r6, #1
	add r1, r10, r5
	mul r5, r0, r4
	add r0, r10, r5
	mov r2, r4
	bl MI_CpuCopy8
	add r1, r10, r5
	mov r0, r7
	mov r2, r4
	bl MI_CpuCopy8
_0211B894:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0211B7F0
_0211B8A4:
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B7CC
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8BC:
	ldr r0, [sp]
	mov r0, r0, lsl #2
	bl operator_new_array
	mov r7, r0
	cmp r5, #0xa
	addls pc, pc, r5, lsl #2
	b _0211BA7C
_0211B8D8: ; jump table
	b _0211BA7C ; case 0
	b _0211BA7C ; case 1
	b _0211BA7C ; case 2
	b _0211B904 ; case 3
	b _0211B930 ; case 4
	b _0211B960 ; case 5
	b _0211B990 ; case 6
	b _0211B9C0 ; case 7
	b _0211B9F0 ; case 8
	b _0211BA20 ; case 9
	b _0211BA50 ; case 10
_0211B904:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211B910:
	mla r0, r8, r4, r9
	ldr r0, [r0, #0xc0c]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B910
	b _0211BA7C
_0211B930:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211B93C:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x48]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B93C
	b _0211BA7C
_0211B960:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211B96C:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x4a]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B96C
	b _0211BA7C
_0211B990:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211B99C:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x4c]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B99C
	b _0211BA7C
_0211B9C0:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211B9CC:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x4e]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B9CC
	b _0211BA7C
_0211B9F0:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211B9FC:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x50]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B9FC
	b _0211BA7C
_0211BA20:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211BA2C:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x52]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211BA2C
	b _0211BA7C
_0211BA50:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA7C
_0211BA5C:
	mla r0, r8, r4, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x54]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211BA5C
_0211BA7C:
	ldr r0, [sp]
	mov r11, #0
	cmp r0, #0
	ble _0211BB28
	add r0, r9, #0x3fc
	add r5, r0, #0x800
	ldr r0, [sp]
	add r10, sp, #8
	sub r6, r0, #1
_0211BAA0:
	mov r8, #0
	cmp r6, #0
	ble _0211BB18
_0211BAAC:
	add r0, r7, r8, lsl #2
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	bge _0211BB0C
	mul r9, r8, r4
	mov r1, r10
	mov r2, r4
	add r0, r5, r9
	bl MI_CpuCopy8
	add r0, r8, #1
	add r1, r5, r9
	mul r9, r0, r4
	add r0, r5, r9
	mov r2, r4
	bl MI_CpuCopy8
	add r1, r5, r9
	mov r0, r10
	mov r2, r4
	bl MI_CpuCopy8
	add r1, r7, r8, lsl #2
	ldr r2, [r7, r8, lsl #2]
	ldr r0, [r1, #4]
	stmia r1, {r0, r2}
_0211BB0C:
	add r8, r8, #1
	cmp r8, r6
	blt _0211BAAC
_0211BB18:
	ldr r0, [sp]
	add r11, r11, #1
	cmp r11, r0
	blt _0211BAA0
_0211BB28:
	mov r0, r7
	bl operator_delete_array
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov43_0211b6b4

	arm_func_start FUN_ov43_0211bb38
FUN_ov43_0211bb38: ; 0x0211BB38
	bx lr
	arm_func_end FUN_ov43_0211bb38

	arm_func_start FUN_ov43_0211bb3c
FUN_ov43_0211bb3c: ; 0x0211BB3C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	cmp r1, #2
	blo _0211BBA8
	mov r7, #0
	add r0, r9, #0x178
	add r6, r0, #0x3000
	mov r5, #1
	mov r4, r7
	mov r10, #0xc
_0211BB64:
	mul r8, r7, r10
	mov r1, r5
	add r0, r6, r8
	bl FUN_ov16_020f338c
	add r0, r6, r8
	bl FUN_ov16_020f33fc
	add r0, r9, r8
	add r7, r7, #1
	str r4, [r6, r8]
	add r0, r0, #0x3000
	str r4, [r0, #0x17c]
	strb r4, [r0, #0x180]
	strb r4, [r0, #0x181]
	strb r4, [r0, #0x182]
	cmp r7, #2
	blt _0211BB64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BBA8:
	mov r0, #0xc
	mul r5, r1, r0
	add r0, r9, #0x178
	add r4, r0, #0x3000
	add r0, r4, r5
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r5
	bl FUN_ov16_020f33fc
	add r0, r9, r5
	mov r1, #0
	str r1, [r4, r5]
	add r0, r0, #0x3000
	str r1, [r0, #0x17c]
	strb r1, [r0, #0x180]
	strb r1, [r0, #0x181]
	strb r1, [r0, #0x182]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov43_0211bb3c

	arm_func_start FUN_ov43_0211bbf0
FUN_ov43_0211bbf0: ; 0x0211BBF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x178
	ldr r0, _0211BC24 ; =0x0211FC3C
	add r1, r1, #0x3000
	bl FUN_ov16_020f3054
	add r1, r4, #0x184
	ldr r0, _0211BC28 ; =0x0211FC54
	add r1, r1, #0x3000
	bl FUN_ov16_020f3054
	mov r0, #1
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
_0211BC24: .word ov43_0211FC3C
_0211BC28: .word ov43_0211FC54
	arm_func_end FUN_ov43_0211bbf0

	arm_func_start FUN_ov43_0211bc2c
FUN_ov43_0211bc2c: ; 0x0211BC2C
	stmfd sp!, {r4, lr}
	add r0, r0, #0x190
	add r0, r0, #0x3000
	add r4, r0, r1, lsl #3
	mov r0, r4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r0, r4
	mov r1, #0x10
	bl FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov43_0211bc2c

	arm_func_start FUN_ov43_0211bc5c
FUN_ov43_0211bc5c: ; 0x0211BC5C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x1a0
	add r0, r0, #0x3000
	add r5, r0, r1, lsl #3
	mov r4, #8
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f5278
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov43_0211bc5c

	arm_func_start FUN_ov43_0211bc90
FUN_ov43_0211bc90: ; 0x0211BC90
	stmfd sp!, {r4, lr}
	add r0, r0, #0x190
	add r0, r0, #0x3000
	add r4, r0, r1, lsl #3
	mov r0, r4
	mvn r1, #0
	bl FUN_ov16_020f57b0
	mov r0, r4
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov43_0211bc90

	arm_func_start FUN_ov43_0211bcb8
FUN_ov43_0211bcb8: ; 0x0211BCB8
	stmfd sp!, {r4, lr}
	add r0, r0, #0x1a0
	add r0, r0, #0x3000
	add r4, r0, r1, lsl #3
	mov r0, r4
	mvn r1, #0
	bl FUN_ov16_020f57b0
	mov r0, r4
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov43_0211bcb8

	arm_func_start FUN_ov43_0211bce0
FUN_ov43_0211bce0: ; 0x0211BCE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r0, r10, #0x178
	add r0, r0, #0x3000
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	add r0, r10, #0x190
	ldr r11, _0211BDCC ; =0x0211FC74
	add r6, r0, #0x3000
	add r5, r10, #0x3000
	mov r9, r8
	mov r7, #1
	mov r4, #0x5c
_0211BD28:
	mla r0, r8, r4, r10
	str r9, [sp]
	str r9, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0x600
	ldr r3, [r5, #0x1b0]
	ldrh r2, [r0, #0x52]
	ldr r0, [r5, #0x178]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl FUN_ov16_020f55b4
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211BD28
	add r0, r10, #0x1a0
	ldr r11, _0211BDD0 ; =0x0211FC8C
	add r6, r0, #0x3000
	add r5, r10, #0x3000
	mov r8, #0
	mov r7, #1
	mov r4, #0x5c
_0211BD80:
	mla r0, r9, r4, r10
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0xc00
	ldr r3, [r5, #0x1b4]
	ldrh r2, [r0, #0x12]
	ldr r0, [r5, #0x178]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #8
	blt _0211BD80
	mov r0, #2
	strb r0, [r10, #0x6c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDCC: .word ov43_0211FC74
_0211BDD0: .word ov43_0211FC8C
	arm_func_end FUN_ov43_0211bce0

	arm_func_start FUN_ov43_0211bdd4
FUN_ov43_0211bdd4: ; 0x0211BDD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r2, r10, #0x3000
	ldr r1, [r2, #0x6c8]
	cmp r1, #1
	beq _0211BE00
	cmp r1, #2
	beq _0211BE88
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE00:
	ldr r1, [r2, #0x1b0]
	eor r1, r1, #1
	str r1, [r2, #0x1b0]
	bl FUN_ov43_0211bc90
	add r0, r10, #0x3000
	ldr r1, [r0, #0x1b0]
	mov r0, r10
	bl FUN_ov43_0211bc2c
	mov r9, #0
	add r0, r10, #0x190
	ldr r11, _0211BEF8 ; =0x0211FCA4
	add r6, r0, #0x3000
	add r5, r10, #0x3000
	mov r8, r9
	mov r7, #1
	mov r4, #0x5c
_0211BE40:
	mla r0, r9, r4, r10
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0x600
	ldr r3, [r5, #0x1b0]
	ldrh r2, [r0, #0x52]
	ldr r0, [r5, #0x178]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211BE40
	add r0, r10, #0x3000
	mov r1, #2
	str r1, [r0, #0x6c8]
_0211BE88:
	add r1, r10, #0x3000
	add r0, r10, #0x190
	ldr r1, [r1, #0x1b0]
	add r0, r0, #0x3000
	add r0, r0, r1, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x3000
	ldr r1, [r0, #0x1b0]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov43_0211bc90
	add r0, r10, #0x3000
	ldr r1, [r0, #0x1b0]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov43_0211bc2c
	mov r0, r10
	bl FUN_ov43_0211d68c
	mov r0, r10
	bl FUN_ov43_0211c84c
	add r0, r10, #0x3000
	mov r1, #0
	str r1, [r0, #0x6c8]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BEF8: .word ov43_0211FCA4
	arm_func_end FUN_ov43_0211bdd4

	arm_func_start FUN_ov43_0211befc
FUN_ov43_0211befc: ; 0x0211BEFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r2, r10, #0x3000
	ldr r3, [r2, #0x684]
	ldr r1, [r2, #0x688]
	mov r9, r3, lsl #3
	cmp r1, #1
	add r8, r9, #8
	beq _0211BF34
	cmp r1, #2
	beq _0211BFBC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF34:
	ldr r1, [r2, #0x1b4]
	eor r1, r1, #1
	str r1, [r2, #0x1b4]
	bl FUN_ov43_0211bcb8
	add r0, r10, #0x3000
	ldr r1, [r0, #0x1b4]
	mov r0, r10
	bl FUN_ov43_0211bc5c
	cmp r9, r8
	bge _0211BFB0
	add r0, r10, #0x1a0
	add r5, r0, #0x3000
	add r4, r10, #0x3000
	mov r7, #0
	mov r6, #1
	mov r11, #0x5c
_0211BF74:
	mla r0, r9, r11, r10
	str r7, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	add r0, r0, #0xc00
	ldr r3, [r4, #0x1b4]
	ldrh r2, [r0, #0x12]
	ldr r0, [r4, #0x178]
	ldr r1, _0211C03C ; =0x0211FCBC
	add r3, r5, r3, lsl #3
	bl FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, r8
	blt _0211BF74
_0211BFB0:
	add r0, r10, #0x3000
	mov r1, #2
	str r1, [r0, #0x688]
_0211BFBC:
	add r1, r10, #0x3000
	add r0, r10, #0x1a0
	ldr r1, [r1, #0x1b4]
	add r0, r0, #0x3000
	add r0, r0, r1, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x3000
	ldr r1, [r0, #0x1b4]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov43_0211bcb8
	add r0, r10, #0x3000
	ldr r1, [r0, #0x1b4]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov43_0211bcb8
	mov r0, r10
	bl FUN_ov43_0211e60c
	mov r0, r10
	bl FUN_ov43_0211e520
	mov r0, r10
	bl FUN_ov43_0211d744
	mov r0, r10
	bl FUN_ov43_0211ce60
	add r0, r10, #0x3000
	mov r1, #0
	str r1, [r0, #0x688]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C03C: .word ov43_0211FCBC
	arm_func_end FUN_ov43_0211befc

	arm_func_start FUN_ov43_0211c040
FUN_ov43_0211c040: ; 0x0211C040
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r1
	mov r0, r2
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206cc00
	add r1, r6, #0x190
	add r1, r1, #0x3000
	add r1, r1, r5, lsl #3
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov43_0211c040

	arm_func_start FUN_ov43_0211c084
FUN_ov43_0211c084: ; 0x0211C084
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r1
	mov r0, r2
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206cc00
	add r1, r6, #0x1a0
	add r1, r1, #0x3000
	add r1, r1, r5, lsl #3
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov43_0211c084

	arm_func_start FUN_ov43_0211c0c8
FUN_ov43_0211c0c8: ; 0x0211C0C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1b8
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0x5c
	bl MI_CpuFill8
	add r0, r5, #0x214
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r0, _0211C10C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211C10C: .word unk_02099F38
	arm_func_end FUN_ov43_0211c0c8

	arm_func_start FUN_ov43_0211c110
FUN_ov43_0211c110: ; 0x0211C110
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211C1B0 ; =0x02099F38
	b _0211C154
_0211C128:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x214]
	cmp r1, #0
	beq _0211C150
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	str r7, [r0, #0x214]
_0211C150:
	add r4, r4, #1
_0211C154:
	cmp r4, #0xf
	blt _0211C128
	mov r4, #0
	mov r7, r4
	ldr r6, _0211C1B0 ; =0x02099F38
	b _0211C198
_0211C16C:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1b8]
	cmp r1, #0
	beq _0211C194
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	str r7, [r0, #0x1b8]
_0211C194:
	add r4, r4, #1
_0211C198:
	cmp r4, #0x17
	blt _0211C16C
	ldr r0, _0211C1B0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C1B0: .word unk_02099F38
	arm_func_end FUN_ov43_0211c110

	arm_func_start FUN_ov43_0211c1b4
FUN_ov43_0211c1b4: ; 0x0211C1B4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc4
	mov r4, r0
	add r1, r4, #0x3000
	add r0, r4, #0x190
	ldr r1, [r1, #0x1b0]
	add r0, r0, #0x3000
	add r0, r0, r1, lsl #3
	bl FUN_ov16_020f5868
	add r2, r4, #0x3000
	add r1, r4, #0x1a0
	ldr r2, [r2, #0x1b4]
	add r1, r1, #0x3000
	mov r5, r0
	add r0, r1, r2, lsl #3
	bl FUN_ov16_020f5868
	cmp r5, #0
	cmpeq r0, #0
	addne sp, sp, #0xc4
	ldmnefd sp!, {r4, r5, pc}
	ldr r5, _0211C260 ; =0x0211F910
	add lr, sp, #4
	mov r12, #0xc
_0211C210:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211C210
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0x3000
	add r3, r4, #0x1b8
	ldr r1, [r0, #0x184]
	ldr r0, _0211C264 ; =0x0211FCD4
	add r2, sp, #4
	add r3, r3, #0x3000
	bl FUN_ov16_020f5450
	mov r0, r4
	mov r1, #1
	bl FUN_ov43_0211bb3c
	mov r0, #3
	strb r0, [r4, #0x6c]
	add sp, sp, #0xc4
	ldmfd sp!, {r4, r5, pc}
_0211C260: .word ov43_0211F910
_0211C264: .word ov43_0211FCD4
	arm_func_end FUN_ov43_0211c1b4

	arm_func_start FUN_ov43_0211c268
FUN_ov43_0211c268: ; 0x0211C268
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	add r0, r0, #0x3000
	ldr r3, [r0, #0x1b8]
	ldr r6, _0211C328 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C328: .word unk_02099F38
	arm_func_end FUN_ov43_0211c268

	arm_func_start FUN_ov43_0211c32c
FUN_ov43_0211c32c: ; 0x0211C32C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r4, _0211C4CC ; =0x02099F38
	mov r5, #0
	ldr r7, _0211C4D0 ; =0x00004210
	b _0211C360
_0211C344:
	add r0, r6, r5, lsl #2
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x214]
	mov r2, r7
	bl FUN_ov16_02114204
	add r5, r5, #1
_0211C360:
	cmp r5, #0xf
	blt _0211C344
	mov r5, #0
	ldr r7, _0211C4D0 ; =0x00004210
	b _0211C390
_0211C374:
	add r0, r6, r5, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x250]
	mov r2, r7
	bl FUN_ov16_02114204
	add r5, r5, #1
_0211C390:
	cmp r5, #0x10
	blt _0211C374
	mov r5, #0
	ldr r7, _0211C4D0 ; =0x00004210
	b _0211C3C0
_0211C3A4:
	add r0, r6, r5, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x2d0]
	mov r2, r7
	bl FUN_ov16_02114204
	add r5, r5, #1
_0211C3C0:
	cmp r5, #0x78
	blt _0211C3A4
	add r1, r6, #0x3000
	ldr r5, _0211C4D0 ; =0x00004210
	ldr r0, [r4]
	ldr r1, [r1, #0x170]
	mov r2, r5
	bl FUN_ov16_02114204
	add r1, r6, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x174]
	mov r2, r5
	bl FUN_ov16_02114204
	ldrb r0, [r6, #0x6d]
	cmp r0, #0
	cmpne r0, #1
	beq _0211C40C
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211C40C:
	mov r5, #0
	ldr r7, _0211C4D4 ; =0x00007FFF
	b _0211C434
_0211C418:
	add r0, r6, r5, lsl #2
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x214]
	mov r2, r7
	bl FUN_ov16_02114204
	add r5, r5, #1
_0211C434:
	cmp r5, #0xf
	blt _0211C418
	mov r5, #0
	ldr r7, _0211C4D4 ; =0x00007FFF
	b _0211C464
_0211C448:
	add r0, r6, r5, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x250]
	mov r2, r7
	bl FUN_ov16_02114204
	add r5, r5, #1
_0211C464:
	cmp r5, #0x10
	blt _0211C448
	mov r5, #0
	ldr r7, _0211C4D4 ; =0x00007FFF
	b _0211C494
_0211C478:
	add r0, r6, r5, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x2d0]
	mov r2, r7
	bl FUN_ov16_02114204
	add r5, r5, #1
_0211C494:
	cmp r5, #0x78
	blt _0211C478
	add r1, r6, #0x3000
	ldr r5, _0211C4D4 ; =0x00007FFF
	ldr r0, [r4]
	ldr r1, [r1, #0x170]
	mov r2, r5
	bl FUN_ov16_02114204
	add r1, r6, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x174]
	mov r2, r5
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C4CC: .word unk_02099F38
_0211C4D0: .word 0x00004210
_0211C4D4: .word 0x00007FFF
	arm_func_end FUN_ov43_0211c32c

	arm_func_start FUN_ov43_0211c4d8
FUN_ov43_0211c4d8: ; 0x0211C4D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211C564 ; =0x02099F38
	b _0211C550
_0211C4F0:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1b8]
	cmp r1, #0
	beq _0211C54C
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1b8]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211C54C
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1b8]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211C54C:
	add r4, r4, #1
_0211C550:
	cmp r4, #0x17
	blt _0211C4F0
	mov r0, #4
	strb r0, [r5, #0x6c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C564: .word unk_02099F38
	arm_func_end FUN_ov43_0211c4d8

	arm_func_start FUN_ov43_0211c568
FUN_ov43_0211c568: ; 0x0211C568
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov43_0211c5d4
	mov r0, r4
	bl FUN_ov43_0211deec
	mov r0, r4
	bl FUN_ov43_0211d880
	mov r0, r4
	bl FUN_ov43_0211e3e0
	mov r0, r4
	bl FUN_ov43_0211e520
	mov r0, r4
	bl FUN_ov43_0211e660
	mov r0, r4
	bl FUN_ov43_0211e738
	mov r0, r4
	bl FUN_ov43_0211e828
	mov r0, r4
	bl FUN_ov43_0211c84c
	mov r0, r4
	bl FUN_ov43_0211ce60
	mov r0, r4
	mov r1, #0
	bl FUN_ov43_0211d86c
	mov r0, #5
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov43_0211c568

	arm_func_start FUN_ov43_0211c5d4
FUN_ov43_0211c5d4: ; 0x0211C5D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldr r1, _0211C670 ; =0x02099F38
	mov r7, r0
	mov r6, #1
	ldr r0, [r1]
	mov r2, r6
	mov r1, #2
	bl FUN_ov16_02112724
	mov r4, #0
	mov r5, r0
	add r8, sp, #0x14
	str r4, [sp, #0x14]
	add r0, r7, #0x3000
	str r5, [r0, #0x214]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r9, #0x1f4
	str r9, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r2, r8
	str r6, [sp, #0x10]
	mov r3, r4
	bl FUN_ov43_0211c268
	str r4, [sp]
	str r4, [sp, #4]
	sub r3, r9, #1
	str r4, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r2, r8
	mov r3, #0x15
	str r6, [sp, #0x10]
	bl FUN_ov43_0211c268
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C670: .word unk_02099F38
	arm_func_end FUN_ov43_0211c5d4

	arm_func_start FUN_ov43_0211c674
FUN_ov43_0211c674: ; 0x0211C674
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211C770 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x6d]
	cmp r0, #0
	beq _0211C6B8
	cmp r0, #1
	beq _0211C704
	cmp r0, #2
	addeq r0, r4, #0x3000
	moveq r1, #1
	streq r1, [r0, #0x6a8]
	b _0211C74C
_0211C6B8:
	mov r7, #0
	mov r6, #1
	mov r5, #0xa
	mov r0, r4
	mov r2, r7
	mov r3, r6
	mov r1, #0xc
	str r5, [sp]
	bl FUN_ov43_0211a874
	mov r5, #0xb
	mov r0, r4
	mov r2, r7
	mov r3, r6
	mov r1, #0xd
	str r5, [sp]
	bl FUN_ov43_0211a874
	mov r0, r4
	bl FUN_ov43_0211e998
	b _0211C74C
_0211C704:
	mov r5, #4
	add r1, r4, #0x3000
	mov r2, #1
	str r2, [r1, #0x690]
	mov r12, #0xb
	mov r0, r4
	mov r3, r5
	mov r1, #0xd
	mov r2, #3
	str r12, [sp]
	bl FUN_ov43_0211a874
	mov r12, #0xa
	mov r0, r4
	mov r2, r5
	mov r1, #0xc
	mov r3, #5
	str r12, [sp]
	bl FUN_ov43_0211a874
_0211C74C:
	mov r0, r4
	bl FUN_ov43_0211c32c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C770: .word unk_02099ED4
	arm_func_end FUN_ov43_0211c674

	arm_func_start FUN_ov43_0211c774
FUN_ov43_0211c774: ; 0x0211C774
	stmfd sp!, {r4, lr}
	ldr r1, _0211C7A4 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #8
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
_0211C7A4: .word unk_02099ED4
	arm_func_end FUN_ov43_0211c774

	arm_func_start FUN_ov43_0211c7a8
FUN_ov43_0211c7a8: ; 0x0211C7A8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x74]
	ldr r4, [r5, #0x78]
	mov r1, #0
	cmp r2, r4
	cmpeq r2, #0
	bne _0211C7F8
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211C7F8:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov43_0211c7a8

	arm_func_start FUN_ov43_0211c818
FUN_ov43_0211c818: ; 0x0211C818
	ldr r3, _0211C848 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211C834
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211C834:
	mov r3, #7
	str r1, [r0, #0x74]
	str r2, [r0, #0x78]
	strb r3, [r0, #0x6c]
	bx lr
_0211C848: .word unk_0209A454
	arm_func_end FUN_ov43_0211c818

	arm_func_start FUN_ov43_0211c84c
FUN_ov43_0211c84c: ; 0x0211C84C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	mov r4, #0
	mov r9, r0
	str r4, [sp, #0x40]
	mov r5, #4
	str r4, [sp, #0x3c]
	add r3, r9, #0x3000
	ldr r3, [r3, #0x660]
	add r0, sp, #0x48
	str r3, [sp, #0x20]
	mov r3, #0xc
	mov r1, r4
	mov r2, r5
	str r3, [sp, #0x24]
	bl MI_CpuFill8
	add r0, sp, #0x44
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
	add r0, r9, #0x250
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	ldr r0, _0211CE4C ; =0x000001EF
	ldr r8, [sp, #0x20]
	sub r4, r0, #5
	mov r0, r8
	add r0, r0, #8
	str r0, [sp, #0x28]
	add r0, r9, #0x3000
	str r0, [sp, #0x34]
	add r11, sp, #0x40
	b _0211CC14
_0211C8D8:
	ldr r0, [sp, #0x20]
	sub r0, r8, r0
	mov r7, r0, lsl #4
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0x667]
	cmp r0, #1
	bne _0211CBC4
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, _0211CE50 ; =0x02099F38
	mov r1, #7
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, #0x5c
	mov r5, r0
	add r0, r9, r8, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x250]
	mla r1, r8, r1, r9
	ldrb r1, [r1, #0x665]
	mov r10, #0
	add r0, r7, #0x20
	cmp r1, #1
	bne _0211C974
	mov r1, r10
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0211CE4C ; =0x000001EF
	mov r1, r5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r2, r11
	mov r3, #1
	bl FUN_ov43_0211c268
_0211C974:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	add r0, r0, #0x600
	ldrh r0, [r0, #0x56]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211C9C0
_0211C990: ; jump table
	b _0211C9C0 ; case 0
	b _0211C9A4 ; case 1
	b _0211C9AC ; case 2
	b _0211C9B4 ; case 3
	b _0211C9BC ; case 4
_0211C9A4:
	mov r10, #3
	b _0211C9C0
_0211C9AC:
	mov r10, #2
	b _0211C9C0
_0211C9B4:
	mov r10, #1
	b _0211C9C0
_0211C9BC:
	mov r10, #0
_0211C9C0:
	add r6, r7, #0x20
	str r10, [sp]
	mov r0, #3
	stmib sp, {r0, r6}
	str r4, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, #0xf
	bl FUN_ov43_0211c268
	mov r2, #0x5c
	mla r2, r8, r2, r9
	ldr r1, [sp, #0x40]
	add r2, r2, #0x600
	add r1, r1, #1
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x34]
	ldrh r2, [r2, #0x50]
	ldr r1, [r1, #0x1b0]
	mov r0, r9
	bl FUN_ov43_0211c040
	mov r3, r0
	ldr r0, _0211CE50 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	mov r1, r5
	add r6, r7, #0x18
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211CE50 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	mov r1, r5
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211CE50 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	mov r1, r5
	mov r3, #0xc
	bl FUN_ov16_02113b78
	ldr r0, _0211CE50 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	mov r1, r5
	mov r3, r4
	bl FUN_ov16_021139bc
	mov r1, #0x5c
	mla r1, r8, r1, r9
	ldr r1, [r1, #0x660]
	add r0, r7, #0x20
	tst r1, #0x400
	beq _0211CAB4
	mov r1, #0
	b _0211CAE0
_0211CAB4:
	tst r1, #0x80
	beq _0211CAC4
	mov r1, #1
	b _0211CAE0
_0211CAC4:
	tst r1, #0x20
	beq _0211CAD4
	mov r1, #2
	b _0211CAE0
_0211CAD4:
	tst r1, #0x1000
	beq _0211CB10
	mov r1, #3
_0211CAE0:
	str r1, [sp]
	mov r1, #0x68
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, #0x11
	bl FUN_ov43_0211c268
_0211CB10:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldr r1, [r0, #0x64c]
	ldr r3, _0211CE54 ; =0x66666667
	add r0, r7, #0x28
	smull r6, r2, r3, r1
	mov r3, r1, lsr #0x1f
	add r2, r3, r2, asr #2
	mov r3, #0xa
	smull r2, r6, r3, r2
	sub r2, r1, r2
	str r2, [sp]
	mov r1, #0x70
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r1, r5
	mov r2, r11
	mov r3, #0x13
	bl FUN_ov43_0211c268
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldr r6, [r0, #0x64c]
	cmp r6, #0xa
	blt _0211CBC4
	ldr r0, _0211CE54 ; =0x66666667
	mov r1, r5
	smull r2, r3, r0, r6
	mov r0, r6, lsr #0x1f
	add r3, r0, r3, asr #2
	str r3, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r7, #0x28
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r2, r11
	mov r3, #0x13
	bl FUN_ov43_0211c268
_0211CBC4:
	add r0, r7, #0x20
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x12c
	str r0, [sp, #0xc]
	ldr r0, _0211CE58 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	mov r3, r1
	bl FUN_ov16_0210fba4
	ldr r0, [sp, #0x24]
	add r8, r8, #1
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x24]
_0211CC14:
	ldr r0, [sp, #0x28]
	cmp r8, r0
	blt _0211C8D8
	ldr r4, _0211CE50 ; =0x02099F38
	mov r3, #0
	ldr r0, [r4]
	mov r1, #8
	mov r2, #1
	str r3, [sp, #0x40]
	bl FUN_ov16_02112724
	mov r5, r0
	add r1, r9, #0x3000
	str r5, [r1, #0x170]
	add r2, sp, #0x48
	add r3, sp, #0x44
	mov r0, #0x40
	mov r1, #0xc
	bl FUN_02054070
	add r0, r9, #0x23c
	add r0, r0, #0x400
	ldr r8, [sp, #0x20]
	str r0, [sp, #0x2c]
	mov r0, r8
	add r0, r0, #8
	str r0, [sp, #0x30]
	b _0211CE38
_0211CC7C:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0x667]
	cmp r0, #1
	bne _0211CE34
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	ldr r0, [r4]
	bl FUN_02059630
	mov r6, r0
	add r0, r9, r8, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x254]
	mov r2, #0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r2
	bl FUN_02059038
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, [r4]
	mov r1, r6
	add r2, sp, #0x38
	add r3, sp, #0x3c
	bl FUN_0205935c
	ldr r0, [r4]
	mov r1, r6
	ldr r10, [sp, #0x38]
	bl FUN_ov16_02111438
	mov r11, r0
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_02111458
	mov r7, r0
	ldr r0, _0211CE5C ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _0211CE5C ; =0x02099F50
	ldr r1, [sp, #0x2c]
	mov r2, #0x5c
	mla r1, r8, r2, r1
	ldr r0, [r0]
	mov r2, r10
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211CE5C ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r10
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r10, #0
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, r6
	str r10, [sp, #8]
	bl FUN_02059288
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x40]
	sub r0, r8, r0
	add r2, r1, #1
	mov r0, r0, lsl #4
	and r3, r6, #0xff
	add r6, r0, #0x23
	ldr r0, [r4]
	mov r1, r5
	str r2, [sp, #0x40]
	bl FUN_ov16_021137dc
	mov r0, r10
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [sp, #0x40]
	mov r1, r5
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [sp, #0x40]
	mov r1, r5
	bl FUN_ov16_02113d08
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [sp, #0x40]
	mov r1, r5
	mov r3, #0x29
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r2, [sp, #0x40]
	mov r1, r5
	mov r3, #0xc8
	bl FUN_ov16_021139bc
_0211CE34:
	add r8, r8, #1
_0211CE38:
	ldr r0, [sp, #0x30]
	cmp r8, r0
	blt _0211CC7C
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CE4C: .word 0x000001EF
_0211CE50: .word unk_02099F38
_0211CE54: .word 0x66666667
_0211CE58: .word unk_02099EB4
_0211CE5C: .word unk_02099F50
	arm_func_end FUN_ov43_0211c84c

	arm_func_start FUN_ov43_0211ce60
FUN_ov43_0211ce60: ; 0x0211CE60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r7, #0
	mov r9, r0
	mov r4, #4
	str r7, [sp, #0x34]
	str r7, [sp, #0x30]
	add r0, r9, #0x3000
	ldr r3, [r0, #0x684]
	add r0, sp, #0x3c
	mov r1, r7
	mov r2, r4
	mov r6, r3, lsl #3
	bl MI_CpuFill8
	add r0, sp, #0x38
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	add r0, r9, #0x2d0
	mov r1, r7
	add r0, r0, #0x3000
	mov r2, #0x340
	bl MI_CpuFill8
	mov r8, r6
	b _0211D29C
_0211CEC4:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0xc27]
	cmp r0, #1
	bne _0211D214
	ldr r0, _0211D52C ; =0x02099F38
	mov r10, #0
	ldr r0, [r0]
	mov r1, #7
	mov r2, #1
	str r10, [sp, #0x34]
	bl FUN_ov16_02112724
	add r3, r9, r8, lsl #3
	mov r4, r0
	add r0, r3, #0x3000
	str r4, [r0, #0x2d0]
	mov r0, #0x5c
	sub r1, r8, r6
	mov r2, r1, lsl #4
	mla r0, r8, r0, r9
	add r5, r2, #0x20
	mov r1, r10
	mov r11, #0x88
	add r2, r0, #0xc00
	mov lr, r10
	mov r3, #0x5c
	b _0211CF54
_0211CF30:
	mla r12, r1, r3, r9
	add r12, r12, #0x600
	ldrh r0, [r2, #0x10]
	ldrh r12, [r12, #0x50]
	mov r7, lr
	cmp r0, r12
	moveq r7, #1
	beq _0211CF5C
	add r1, r1, #1
_0211CF54:
	cmp r1, #0x10
	blt _0211CF30
_0211CF5C:
	cmp r7, #0
	mov r12, #1
	bne _0211CF90
	stmia sp, {r10, r11}
	ldr r0, _0211D530 ; =0x000001EF
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #0x34
	mov r0, r9
	mov r1, r4
	mov r3, #2
	str r12, [sp, #0x10]
	bl FUN_ov43_0211c268
_0211CF90:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x16]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CFDC
_0211CFAC: ; jump table
	b _0211CFDC ; case 0
	b _0211CFC0 ; case 1
	b _0211CFC8 ; case 2
	b _0211CFD0 ; case 3
	b _0211CFD8 ; case 4
_0211CFC0:
	mov r10, #3
	b _0211CFDC
_0211CFC8:
	mov r10, #2
	b _0211CFDC
_0211CFD0:
	mov r10, #1
	b _0211CFDC
_0211CFD8:
	mov r10, #0
_0211CFDC:
	sub r0, r8, r6
	mov r11, #0x8b
	stmia sp, {r10, r11}
	mov r0, r0, lsl #4
	add r5, r0, #0x20
	ldr r10, _0211D534 ; =0x000001EA
	str r5, [sp, #8]
	mov r3, #0xf
	cmp r7, #0
	moveq r3, #0x10
	mov r0, r9
	mov r1, r4
	str r10, [sp, #0xc]
	mov r11, #1
	add r2, sp, #0x34
	str r11, [sp, #0x10]
	bl FUN_ov43_0211c268
	mov r2, #0x5c
	mla r2, r8, r2, r9
	ldr r0, [sp, #0x34]
	add r2, r2, #0xc00
	add r0, r0, #1
	str r0, [sp, #0x34]
	add r1, r9, #0x3000
	ldrh r2, [r2, #0x10]
	ldr r1, [r1, #0x1b4]
	mov r0, r9
	bl FUN_ov43_0211c084
	mov r3, r0
	sub r0, r8, r6
	mov r0, r0, lsl #4
	add r5, r0, #0x18
	ldr r0, _0211D52C ; =0x02099F38
	ldr r2, [sp, #0x34]
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211D52C ; =0x02099F38
	ldr r2, [sp, #0x34]
	ldr r0, [r0]
	mov r1, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211D52C ; =0x02099F38
	ldr r2, [sp, #0x34]
	ldr r0, [r0]
	mov r3, #0x94
	mov r1, r4
	bl FUN_ov16_02113b78
	ldr r0, _0211D52C ; =0x02099F38
	ldr r2, [sp, #0x34]
	ldr r0, [r0]
	mov r1, r4
	mov r3, r10
	bl FUN_ov16_021139bc
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldr r2, [r0, #0xc20]
	sub r0, r8, r6
	mov r0, r0, lsl #4
	mov r1, #0xf0
	tst r2, #0x400
	add r0, r0, #0x20
	beq _0211D0F8
	mov r2, #0
	b _0211D124
_0211D0F8:
	tst r2, #0x80
	beq _0211D108
	str r11, [sp]
	b _0211D128
_0211D108:
	tst r2, #0x20
	beq _0211D118
	mov r2, #2
	b _0211D124
_0211D118:
	tst r2, #0x1000
	beq _0211D14C
	mov r2, #3
_0211D124:
	str r2, [sp]
_0211D128:
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	add r2, sp, #0x34
	mov r3, #0x11
	str r11, [sp, #0x10]
	bl FUN_ov43_0211c268
_0211D14C:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldr r3, [r0, #0xc0c]
	ldr r0, _0211D538 ; =0x66666667
	mov r1, r3, lsr #0x1f
	smull r2, r5, r0, r3
	add r5, r1, r5, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r5
	sub r5, r3, r0
	sub r0, r8, r6
	mov r0, r0, lsl #4
	add r10, sp, #0x34
	str r5, [sp]
	mov r1, #0xf8
	add r0, r0, #0x28
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r5, r1, #0xf2
	str r5, [sp, #0xc]
	mov r11, #1
	mov r0, r9
	mov r1, r4
	mov r2, r10
	mov r3, #0x13
	str r11, [sp, #0x10]
	bl FUN_ov43_0211c268
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldr r3, [r0, #0xc0c]
	cmp r3, #0xa
	blt _0211D298
	ldr r0, _0211D538 ; =0x66666667
	smull r1, r2, r0, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #2
	sub r0, r8, r6
	str r2, [sp]
	mov r0, r0, lsl #4
	mov r1, r4
	mov r4, #0xf0
	add r0, r0, #0x28
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r2, r10
	mov r3, #0x13
	mov r0, r9
	str r11, [sp, #0x10]
	b _0211D294
_0211D214:
	ldr r0, _0211D52C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r3, #0
	mov r2, r1
	str r3, [sp, #0x34]
	bl FUN_ov16_02112724
	sub r1, r8, r6
	mov r2, r1, lsl #4
	add r3, r9, r8, lsl #3
	mov r1, r0
	add r0, r3, #0x3000
	str r1, [r0, #0x2d0]
	mov r3, #0x88
	mov r0, #0
	stmia sp, {r0, r3}
	add r2, r2, #0x20
	mov r0, #1
	str r2, [sp, #8]
	cmp r8, #0x64
	mov r4, #1
	add r2, sp, #0x34
	rsb r0, r0, #0x1f0
	blt _0211D284
	str r0, [sp, #0xc]
	mov r0, r9
	mov r3, #4
	b _0211D290
_0211D284:
	str r0, [sp, #0xc]
	mov r0, r9
	mov r3, #2
_0211D290:
	str r4, [sp, #0x10]
_0211D294:
	bl FUN_ov43_0211c268
_0211D298:
	add r8, r8, #1
_0211D29C:
	add r0, r6, #8
	cmp r8, r0
	blt _0211CEC4
	ldr r7, _0211D52C ; =0x02099F38
	mov r3, #0
	ldr r0, [r7]
	mov r1, #8
	mov r2, #1
	str r3, [sp, #0x34]
	bl FUN_ov16_02112724
	mov r4, r0
	add r1, r9, #0x3000
	str r4, [r1, #0x174]
	add r2, sp, #0x3c
	add r3, sp, #0x38
	mov r0, #0x40
	mov r1, #0x10
	bl FUN_02054070
	add r0, r9, #0x3fc
	add r0, r0, #0x800
	str r0, [sp, #0x24]
	add r0, r6, #8
	mov r8, r6
	str r0, [sp, #0x28]
	b _0211D4BC
_0211D300:
	mov r0, #0x5c
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0xc27]
	cmp r0, #1
	bne _0211D4B8
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r0, [r7]
	bl FUN_02059630
	mov r5, r0
	add r0, r9, r8, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x2d4]
	mov r2, #0
	ldr r0, [r7]
	mov r1, r5
	mov r3, r2
	bl FUN_02059038
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [r7]
	mov r1, r5
	add r2, sp, #0x2c
	add r3, sp, #0x30
	bl FUN_0205935c
	ldr r0, [r7]
	mov r1, r5
	ldr r10, [sp, #0x2c]
	bl FUN_ov16_02111438
	str r0, [sp, #0x20]
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_02111458
	mov r11, r0
	ldr r0, _0211D53C ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	str r11, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _0211D53C ; =0x02099F50
	ldr r1, [sp, #0x24]
	mov r2, #0x5c
	mla r1, r8, r2, r1
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r2, r10
	bl FUN_020425fc
	ldr r0, _0211D53C ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r10
	ldr r3, [sp, #0x30]
	ldr r0, [r7]
	mov r10, #0
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, r5
	str r10, [sp, #8]
	bl FUN_02059288
	sub r0, r8, r6
	ldr r1, [sp, #0x34]
	mov r0, r0, lsl #4
	add r2, r1, #1
	and r3, r5, #0xff
	add r5, r0, #0x23
	ldr r0, [r7]
	mov r1, r4
	str r2, [sp, #0x34]
	bl FUN_ov16_021137dc
	mov r0, r10
	str r0, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x34]
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov16_02113d08
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, #0xb1
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, #0xc8
	bl FUN_ov16_021139bc
_0211D4B8:
	add r8, r8, #1
_0211D4BC:
	ldr r0, [sp, #0x28]
	cmp r8, r0
	blt _0211D300
	mov r6, #0x15
	mov r11, #0x88
	mov r5, #0x20
	mov r7, #0x78
	mov r9, #0x10
	mov r8, #0
	mov r4, #0x12c
	ldr r10, _0211D540 ; =0x02099EB4
	b _0211D51C
_0211D4EC:
	stmia sp, {r5, r7, r9}
	str r4, [sp, #0xc]
	ldr r0, [r10]
	mov r1, #8
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_0210fba4
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	add r5, r5, #0x10
	add r8, r8, #1
_0211D51C:
	cmp r8, #8
	blt _0211D4EC
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D52C: .word unk_02099F38
_0211D530: .word 0x000001EF
_0211D534: .word 0x000001EA
_0211D538: .word 0x66666667
_0211D53C: .word unk_02099F50
_0211D540: .word unk_02099EB4
	arm_func_end FUN_ov43_0211ce60

	arm_func_start FUN_ov43_0211d544
FUN_ov43_0211d544: ; 0x0211D544
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r5, r6
	mov r7, r6
	ldr r4, _0211D684 ; =0x02099F38
	b _0211D5B4
_0211D560:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x250]
	cmp r1, #0
	beq _0211D588
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x250]
_0211D588:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x254]
	cmp r1, #0
	beq _0211D5B0
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x254]
_0211D5B0:
	add r7, r7, #1
_0211D5B4:
	cmp r7, #0x10
	blt _0211D560
	mov r7, #0
	ldr r4, _0211D684 ; =0x02099F38
	b _0211D61C
_0211D5C8:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x2d0]
	cmp r1, #0
	beq _0211D5F0
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x2d0]
_0211D5F0:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x2d4]
	cmp r1, #0
	beq _0211D618
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x2d4]
_0211D618:
	add r7, r7, #1
_0211D61C:
	cmp r7, #0x68
	blt _0211D5C8
	mov r7, #0
	ldr r4, _0211D684 ; =0x02099F38
	b _0211D65C
_0211D630:
	add r0, r8, r7, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x170]
	cmp r1, #0
	beq _0211D658
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r8, r7, lsl #2
	add r0, r0, #0x3000
	str r5, [r0, #0x170]
_0211D658:
	add r7, r7, #1
_0211D65C:
	cmp r7, #2
	blt _0211D630
	ldr r4, _0211D688 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r4]
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #8
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D684: .word unk_02099F38
_0211D688: .word unk_02099EB4
	arm_func_end FUN_ov43_0211d544

	arm_func_start FUN_ov43_0211d68c
FUN_ov43_0211d68c: ; 0x0211D68C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r5, r6
	mov r7, r6
	ldr r4, _0211D73C ; =0x02099F38
	b _0211D6FC
_0211D6A8:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x250]
	cmp r1, #0
	beq _0211D6D0
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x250]
_0211D6D0:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x254]
	cmp r1, #0
	beq _0211D6F8
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x254]
_0211D6F8:
	add r7, r7, #1
_0211D6FC:
	cmp r7, #0x10
	blt _0211D6A8
	add r0, r8, #0x3000
	ldr r1, [r0, #0x170]
	cmp r1, #0
	beq _0211D728
	ldr r0, _0211D73C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r8, #0x3000
	str r5, [r0, #0x170]
_0211D728:
	ldr r0, _0211D740 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D73C: .word unk_02099F38
_0211D740: .word unk_02099EB4
	arm_func_end FUN_ov43_0211d68c

	arm_func_start FUN_ov43_0211d744
FUN_ov43_0211d744: ; 0x0211D744
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r8, r0
	mov r6, r7
	mov r5, r7
	ldr r4, _0211D7F8 ; =0x02099F38
	b _0211D7B4
_0211D760:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x2d0]
	cmp r1, #0
	beq _0211D788
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x2d0]
_0211D788:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x2d4]
	cmp r1, #0
	beq _0211D7B0
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x2d4]
_0211D7B0:
	add r7, r7, #1
_0211D7B4:
	cmp r7, #0x68
	blt _0211D760
	add r0, r8, #0x3000
	ldr r1, [r0, #0x174]
	cmp r1, #0
	beq _0211D7E4
	ldr r0, _0211D7F8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r8, #0x3000
	mov r1, #0
	str r1, [r0, #0x174]
_0211D7E4:
	ldr r0, _0211D7FC ; =0x02099EB4
	mov r1, #8
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D7F8: .word unk_02099F38
_0211D7FC: .word unk_02099EB4
	arm_func_end FUN_ov43_0211d744

	arm_func_start FUN_ov43_0211d800
FUN_ov43_0211d800: ; 0x0211D800
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x610
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x3000
	str r4, [r0, #0x618]
	str r4, [r0, #0x61c]
	str r4, [r0, #0x620]
	str r4, [r0, #0x624]
	str r4, [r0, #0x628]
	str r4, [r0, #0x62c]
	str r4, [r0, #0x630]
	str r4, [r0, #0x634]
	str r4, [r0, #0x638]
	str r4, [r0, #0x63c]
	str r4, [r0, #0x640]
	str r4, [r0, #0x644]
	str r4, [r0, #0x648]
	str r4, [r0, #0x64c]
	str r4, [r0, #0x650]
	str r4, [r0, #0x654]
	str r4, [r0, #0x658]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov43_0211d800

	arm_func_start FUN_ov43_0211d86c
FUN_ov43_0211d86c: ; 0x0211D86C
	add r0, r0, r1, lsl #2
	add r0, r0, #0x3000
	mov r1, #0
	str r1, [r0, #0x610]
	bx lr
	arm_func_end FUN_ov43_0211d86c

	arm_func_start FUN_ov43_0211d880
FUN_ov43_0211d880: ; 0x0211D880
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _0211D8EC ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_02112724
	mov r2, #0
	mov r1, r0
	str r2, [sp, #0x14]
	add r0, r5, #0x3000
	str r1, [r0, #0x218]
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0x12c
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	mov r3, #0xd
	str r4, [sp, #0x10]
	bl FUN_ov43_0211c268
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211D8EC: .word unk_02099F38
	arm_func_end FUN_ov43_0211d880

	arm_func_start FUN_ov43_0211d8f0
FUN_ov43_0211d8f0: ; 0x0211D8F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r4, #0
	add r12, r9, #0x3000
	add r6, r9, r4, lsl #2
	mov r5, #1
	str r5, [r12, #0x618]
	str r4, [r12, #0x61c]
	add r6, r6, #0x3000
	ldr r8, [r6, #0x610]
	mov r7, r2
	mov r6, r3
	mla r3, r6, r8, r7
	add r2, r9, #0x610
	str r3, [r12, #0x624]
	add lr, r2, #0x3000
	ldr r3, [lr, r4, lsl #2]
	ldr r2, [sp, #0x20]
	mov r8, r1
	add r1, r3, r2
	str r1, [lr, r4, lsl #2]
	ldr r1, [r12, #0x61c]
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	ldr r3, [r1, #0x610]
	cmp r3, #0
	bge _0211DA40
	str r4, [r1, #0x610]
	ldr r1, [r12, #0x65c]
	cmp r1, #0
	bne _0211DA20
	ldr r1, [r12, #0x660]
	cmp r1, #0
	ble _0211D9C0
	sub r1, r1, #1
	str r1, [r12, #0x660]
	bl FUN_ov43_0211d68c
	mov r0, r9
	bl FUN_ov43_0211c84c
	mov r0, r9
	mov r1, #2
	bl FUN_ov43_0211a85c
	mov r0, r9
	bl FUN_ov43_0211e064
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x694]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6a0]
	addeq r1, r1, #0x10
	b _0211DB04
_0211D9C0:
	bgt _0211DB2C
	ldr r1, [r12, #0x61c]
	mov r2, #7
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	str r2, [r1, #0x610]
	mov r1, #8
	str r1, [r12, #0x660]
	bl FUN_ov43_0211d68c
	mov r0, r9
	bl FUN_ov43_0211c84c
	mov r0, r9
	mov r1, #4
	bl FUN_ov43_0211a85c
	mov r0, r9
	bl FUN_ov43_0211e064
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x694]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6a0]
	subeq r1, r1, #0x80
	b _0211DB04
_0211DA20:
	bl FUN_ov43_0211a514
	mov r0, r9
	mov r2, r5
	mov r1, #0x1c
	bl FUN_ov43_0211db7c
	add r0, r9, #0x3000
	str r4, [r0, #0x618]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DA40:
	ldr r2, [sp, #0x24]
	cmp r3, r2
	ble _0211DB2C
	str r2, [r1, #0x610]
	ldr r1, [r12, #0x65c]
	cmp r1, #0
	bne _0211DB0C
	ldr r1, [r12, #0x660]
	cmp r1, #8
	bge _0211DAB0
	add r1, r1, #1
	str r1, [r12, #0x660]
	bl FUN_ov43_0211d68c
	mov r0, r9
	bl FUN_ov43_0211c84c
	mov r0, r9
	mov r1, #3
	bl FUN_ov43_0211a85c
	mov r0, r9
	bl FUN_ov43_0211e064
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x694]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6a0]
	subeq r1, r1, #0x10
	b _0211DB04
_0211DAB0:
	blt _0211DB2C
	ldr r1, [r12, #0x61c]
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	str r4, [r1, #0x610]
	str r4, [r12, #0x660]
	bl FUN_ov43_0211d68c
	mov r0, r9
	bl FUN_ov43_0211c84c
	mov r0, r9
	mov r1, r5
	bl FUN_ov43_0211a85c
	mov r0, r9
	bl FUN_ov43_0211e064
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x694]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6a0]
	addeq r1, r1, #0x80
_0211DB04:
	streq r1, [r0, #0x6a0]
	b _0211DB2C
_0211DB0C:
	bl FUN_ov43_0211a578
	mov r0, r9
	mov r2, r5
	mov r1, #0x15
	bl FUN_ov43_0211db7c
	add r0, r9, #0x3000
	str r4, [r0, #0x618]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DB2C:
	add r1, r9, #0x3000
	ldr r0, [r1, #0x61c]
	str r8, [r1, #0x620]
	add r0, r9, r0, lsl #2
	add r0, r0, #0x3000
	ldr r0, [r0, #0x610]
	mov r2, #0xc
	mla r3, r6, r0, r7
	ldr r0, [r1, #0x624]
	str r2, [r1, #0x62c]
	cmp r0, r3
	subgt r0, r2, #0xd
	mulgt r0, r2, r0
	strgt r0, [r1, #0x62c]
	str r3, [r1, #0x628]
	ldr r0, _0211DB78 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DB78: .word gL5Sound
	arm_func_end FUN_ov43_0211d8f0

	arm_func_start FUN_ov43_0211db7c
FUN_ov43_0211db7c: ; 0x0211DB7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0x3000
	ldr r6, [r4, #0x65c]
	mov r3, #0x88
	mul r5, r6, r3
	ldr r3, [r4, #0x610]
	mov r6, #1
	mov r3, r3, lsl #4
	add r3, r3, #0x20
	str r6, [r4, #0x634]
	str r5, [r4, #0x638]
	str r3, [r4, #0x63c]
	cmp r2, #0
	beq _0211DBC4
	cmp r2, #1
	subeq r1, r1, #0x15
	streq r1, [r4, #0x610]
	b _0211DBCC
_0211DBC4:
	sub r1, r1, #0xc
	str r1, [r4, #0x610]
_0211DBCC:
	mov r1, #0x88
	mul r12, r2, r1
	add r5, r0, #0x3000
	ldr r1, [r5, #0x638]
	ldr r2, [r5, #0x610]
	sub r7, r12, r1
	mov r2, r2, lsl #4
	add r3, r2, #0x20
	ldr r2, [r5, #0x63c]
	ldr r4, _0211DC80 ; =0x66666667
	sub r6, r3, r2
	smull lr, r2, r4, r7
	mov lr, r7, lsr #0x1f
	add r2, lr, r2, asr #1
	smull lr, r7, r4, r6
	mov lr, r6, lsr #0x1f
	add r7, lr, r7, asr #1
	str r12, [r5, #0x640]
	str r3, [r5, #0x644]
	str r2, [r5, #0x648]
	str r7, [r5, #0x64c]
	cmp r1, r12
	ble _0211DC40
	sub r2, r1, r12
	smull r1, r3, r4, r2
	mov r1, r2, lsr #0x1f
	add r3, r1, r3, asr #1
	rsb r1, r3, #0
	str r1, [r5, #0x648]
_0211DC40:
	add r2, r0, #0x3000
	ldr r3, [r2, #0x644]
	ldr r0, [r2, #0x63c]
	cmp r0, r3
	ble _0211DC70
	ldr r1, _0211DC80 ; =0x66666667
	sub r3, r0, r3
	smull r0, r4, r1, r3
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #1
	rsb r0, r4, #0
	str r0, [r2, #0x64c]
_0211DC70:
	ldr r0, _0211DC84 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC80: .word 0x66666667
_0211DC84: .word gL5Sound
	arm_func_end FUN_ov43_0211db7c

	arm_func_start FUN_ov43_0211dc88
FUN_ov43_0211dc88: ; 0x0211DC88
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r3, r0, #0x3000
	ldr r1, [r3, #0x630]
	ldr r12, [r3, #0x62c]
	add lr, r1, #1
	ldr r2, [r3, #0x624]
	mov r1, #0
	mla r4, r12, lr, r2
	str lr, [r3, #0x630]
	cmp r12, #0
	mov r2, r1
	ldr lr, [r3, #0x620]
	ldr r12, [r3, #0x628]
	bge _0211DCD8
	cmp r4, r12
	movlt r4, r12
	strlt r1, [r3, #0x618]
	strlt r1, [r3, #0x630]
	b _0211DCE8
_0211DCD8:
	cmp r4, r12
	movgt r4, r12
	strgt r1, [r3, #0x618]
	strgt r1, [r3, #0x630]
_0211DCE8:
	ldrb r3, [r0, #0x6d]
	cmp r3, #0
	cmpne r3, #1
	addeq r0, r0, #0x3000
	ldreq r1, [r0, #0x218]
	mov r0, r4, lsl #0x10
	mov r3, r0, asr #0x10
	str r3, [sp]
	ldr r0, _0211DD28 ; =0x02099F38
	mov r3, lr, lsl #0x10
	ldr r0, [r0]
	moveq r2, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211DD28: .word unk_02099F38
	arm_func_end FUN_ov43_0211dc88

	arm_func_start FUN_ov43_0211dd2c
FUN_ov43_0211dd2c: ; 0x0211DD2C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add lr, r0, #0x3000
	ldr r1, [lr, #0x650]
	ldr r2, [lr, #0x648]
	add r1, r1, #1
	ldr r3, [lr, #0x638]
	ldr r12, [lr, #0x63c]
	ldr r4, [lr, #0x64c]
	mla r3, r2, r1, r3
	cmp r2, #0
	mla r12, r4, r1, r12
	str r1, [lr, #0x650]
	ldr r1, [lr, #0x218]
	mov r2, #1
	ldr lr, [lr, #0x640]
	bge _0211DD7C
	cmp r3, lr
	movlt r3, lr
	b _0211DD84
_0211DD7C:
	cmp r3, lr
	movgt r3, lr
_0211DD84:
	add lr, r0, #0x3000
	cmp r4, #0
	ldr lr, [lr, #0x644]
	bge _0211DDA0
	cmp r12, lr
	movlt r12, lr
	b _0211DDA8
_0211DDA0:
	cmp r12, lr
	movgt r12, lr
_0211DDA8:
	add r0, r0, #0x3000
	ldr lr, [r0, #0x640]
	cmp r3, lr
	ldreq lr, [r0, #0x644]
	mov r3, r3, lsl #0x10
	cmpeq r12, lr
	moveq lr, #0
	streq lr, [r0, #0x634]
	streq lr, [r0, #0x650]
	mov r0, r12, lsl #0x10
	mov r12, r0, asr #0x10
	ldr r0, _0211DDF0 ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211DDF0: .word unk_02099F38
	arm_func_end FUN_ov43_0211dd2c

	arm_func_start FUN_ov43_0211ddf4
FUN_ov43_0211ddf4: ; 0x0211DDF4
	add r1, r0, #0x3000
	ldr r2, [r1, #0x65c]
	ldr r3, [r1, #0x610]
	cmp r2, #0
	bne _0211DE24
	ldr r2, [r1, #0x660]
	mov r1, #0x5c
	add r2, r3, r2
	mla r0, r2, r1, r0
	add r0, r0, #0x600
	ldrh r0, [r0, #0x50]
	bx lr
_0211DE24:
	ldr r2, [r1, #0x684]
	mov r1, #0x5c
	add r2, r3, r2, lsl #3
	mla r0, r2, r1, r0
	add r0, r0, #0xc00
	ldrh r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov43_0211ddf4

	arm_func_start FUN_ov43_0211de40
FUN_ov43_0211de40: ; 0x0211DE40
	add r1, r0, #0x3000
	ldr r2, [r1, #0x65c]
	ldr r3, [r1, #0x610]
	cmp r2, #0
	ldrne r2, [r1, #0x684]
	movne r1, #0x5c
	addne r2, r3, r2, lsl #3
	mlane r0, r2, r1, r0
	ldrne r0, [r0, #0xc20]
	bxne lr
	ldr r2, [r1, #0x660]
	mov r1, #0x5c
	add r2, r3, r2
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x660]
	bx lr
	arm_func_end FUN_ov43_0211de40

	arm_func_start FUN_ov43_0211de80
FUN_ov43_0211de80: ; 0x0211DE80
	add r1, r0, #0x3000
	ldr r2, [r1, #0x65c]
	ldr r3, [r1, #0x610]
	cmp r2, #0
	ldrne r2, [r1, #0x684]
	movne r1, #0x5c
	addne r2, r3, r2, lsl #3
	mlane r0, r2, r1, r0
	ldrneb r0, [r0, #0xc25]
	bxne lr
	ldr r2, [r1, #0x660]
	mov r1, #0x5c
	add r2, r3, r2
	mla r0, r2, r1, r0
	ldrb r0, [r0, #0x665]
	bx lr
	arm_func_end FUN_ov43_0211de80

	arm_func_start FUN_ov43_0211dec0
FUN_ov43_0211dec0: ; 0x0211DEC0
	add r0, r0, #0x3000
	mov r2, #0
	mov r1, #0x40
	str r2, [r0, #0x660]
	str r2, [r0, #0x664]
	str r2, [r0, #0x668]
	str r2, [r0, #0x66c]
	str r2, [r0, #0x670]
	str r1, [r0, #0x674]
	str r2, [r0, #0x678]
	bx lr
	arm_func_end FUN_ov43_0211dec0

	arm_func_start FUN_ov43_0211deec
FUN_ov43_0211deec: ; 0x0211DEEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r1, _0211E060 ; =0x0211F900
	add r4, sp, #0x10
	mov r10, r0
	ldmia r1, {r0, r1, r2, r3}
	mov r7, #0
	stmia r4, {r0, r1, r2, r3}
	mov r8, #1
	mov r9, r7
	mov r6, #2
	mov r4, r7
	mov r11, r8
_0211DF20:
	mov r0, #0x78
	str r0, [sp]
	add r0, sp, #0x10
	ldr r1, [r0, r9, lsl #2]
	mov r3, #0x190
	stmib sp, {r1, r8}
	str r3, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	mov r2, #8
	mov r3, r7
	bl FUN_ov43_0211a72c
	movs r5, r0
	beq _0211DFA8
	mov r1, r4
	mov r2, r11
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
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	add r2, r7, #1
	mov r3, r4
	bl FUN_ov16_0210e720
_0211DFA8:
	add r9, r9, #1
	cmp r9, #4
	add r6, r6, #1
	add r7, r7, #2
	add r8, r8, #1
	blt _0211DF20
	mov r0, #0x78
	str r0, [sp]
	mov r0, #0x40
	mov r6, #0
	str r0, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	mov r4, #0x190
	mov r0, r10
	mov r3, r6
	mov r1, #6
	mov r2, #9
	str r4, [sp, #0xc]
	bl FUN_ov43_0211a72c
	movs r5, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
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
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E060: .word ov43_0211F900
	arm_func_end FUN_ov43_0211deec

	arm_func_start FUN_ov43_0211e064
FUN_ov43_0211e064: ; 0x0211E064
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x20
	add r2, r0, #0x3000
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	ldr r1, [r2, #0x660]
	mov r0, r0, asr #3
	mul r1, r0, r1
	add r5, r1, #0x40
	mov r0, r5, lsl #0x10
	mov r4, #0x78
	ldr r1, [r2, #0x22c]
	str r5, [r2, #0x674]
	mov r2, r0, asr #0x10
	ldr r0, _0211E0D0 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r4
	mov r2, #1
	bl FUN_ov16_02113b78
	ldr r0, _0211E0D4 ; =0x02099EB4
	mov r2, r4
	ldr r0, [r0]
	mov r3, r5
	mov r1, #5
	bl FUN_ov16_0210fd0c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E0D0: .word unk_02099F38
_0211E0D4: .word unk_02099EB4
	arm_func_end FUN_ov43_0211e064

	arm_func_start FUN_ov43_0211e0d8
FUN_ov43_0211e0d8: ; 0x0211E0D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r2, _0211E1E0 ; =0x0211F8E0
	add r10, sp, #0x10
	mov r4, r0
	sub r7, r1, #1
	ldmia r2, {r0, r1, r2, r3}
	stmia r10, {r0, r1, r2, r3}
	add r12, r4, #0x3000
	ldr r6, [r12, #0x660]
	mov r8, #0
	rsb r0, r6, #8
	mov r0, r0, lsl #4
	mov r2, r6, lsl #4
	rsb r0, r0, #0
	ldr r1, _0211E1E4 ; =0x0211F8F0
	add r11, sp, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x1c]
	ldmia r1, {r0, r1, r2, r3}
	stmia r11, {r0, r1, r2, r3}
	sub r5, r6, #1
	add lr, r6, #1
	cmp r7, #3
	mov r9, r8
	str r5, [sp, #4]
	str lr, [sp, #8]
	addls pc, pc, r7, lsl #2
	b _0211E188
_0211E14C: ; jump table
	b _0211E15C ; case 0
	b _0211E15C ; case 1
	b _0211E174 ; case 2
	b _0211E174 ; case 3
_0211E15C:
	cmp r6, #0
	ldrgt r0, [r11, r7, lsl #2]
	movgt r8, #1
	strgt r0, [r12, #0x660]
	ldrgt r9, [r10, r7, lsl #2]
	b _0211E188
_0211E174:
	cmp r6, #8
	ldrlt r0, [r11, r7, lsl #2]
	movlt r8, #1
	strlt r0, [r12, #0x660]
	ldrlt r9, [r10, r7, lsl #2]
_0211E188:
	cmp r8, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x6d]
	cmp r0, #1
	addeq r0, r4, #0x3000
	ldreq r1, [r0, #0x694]
	cmpeq r1, #0
	ldreq r1, [r0, #0x6a0]
	addeq r1, r1, r9
	streq r1, [r0, #0x6a0]
	mov r0, r4
	bl FUN_ov43_0211d68c
	mov r0, r4
	bl FUN_ov43_0211c84c
	mov r0, r4
	bl FUN_ov43_0211e064
	ldr r0, _0211E1E8 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E1E0: .word ov43_0211F8E0
_0211E1E4: .word ov43_0211F8F0
_0211E1E8: .word gL5Sound
	arm_func_end FUN_ov43_0211e0d8

	arm_func_start FUN_ov43_0211e1ec
FUN_ov43_0211e1ec: ; 0x0211E1EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x3000
	ldr r3, [r2, #0x668]
	cmp r3, #0xf
	addlt r0, r3, #1
	strlt r0, [r2, #0x668]
	ldmltfd sp!, {r4, pc}
	ldr r2, [r2, #0x66c]
	cmp r2, #0
	bne _0211E21C
	bl FUN_ov43_0211e0d8
_0211E21C:
	add r3, r4, #0x3000
	ldr r0, [r3, #0x66c]
	ldr r2, _0211E24C ; =0x66666667
	add r12, r0, #1
	mov r0, r12, lsr #0x1f
	smull r1, lr, r2, r12
	add lr, r0, lr, asr #1
	mov r2, #5
	smull r0, r1, r2, lr
	sub lr, r12, r0
	str lr, [r3, #0x66c]
	ldmfd sp!, {r4, pc}
_0211E24C: .word 0x66666667
	arm_func_end FUN_ov43_0211e1ec

	arm_func_start FUN_ov43_0211e250
FUN_ov43_0211e250: ; 0x0211E250
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0211E280 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	add r1, sp, #0
	bl FUN_ov16_0210f48c
	ldrsh r1, [sp, #2]
	add r0, r4, #0x3000
	str r1, [r0, #0x670]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211E280: .word unk_02099EB4
	arm_func_end FUN_ov43_0211e250

	arm_func_start FUN_ov43_0211e284
FUN_ov43_0211e284: ; 0x0211E284
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r1, _0211E3C0 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	add r2, r4, #0x3000
	add r1, sp, #4
	ldr r6, [r2, #0x22c]
	mov r7, #1
	mov r8, #0x78
	mov r5, #0x40
	mov r10, #0x60
	bl FUN_ov16_0210f48c
	ldrsh r0, [sp, #4]
	cmp r0, #0x78
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #0x88
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r4, #0x3000
	ldr r1, [r0, #0x670]
	ldrsh r2, [sp, #6]
	ldr r0, [r0, #0x674]
	ldrb r3, [r4, #0x6d]
	sub r1, r2, r1
	add r9, r0, r1
	cmp r9, r5
	movlt r9, r5
	cmp r9, r10
	movgt r9, r10
	sub r1, r9, #0x40
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	add r2, r4, #0x3000
	ldrsh r10, [sp, #6]
	ldr r0, [r2, #0x660]
	mov r5, r1, asr #2
	cmp r3, #1
	ldreq r1, [r2, #0x694]
	str r10, [r2, #0x670]
	str r9, [r2, #0x674]
	str r5, [r2, #0x660]
	cmpeq r1, #0
	bne _0211E368
	cmp r0, r5
	ldrlt r3, [r2, #0x6a0]
	sublt r1, r5, r0
	sublt r1, r3, r1, lsl #4
	strlt r1, [r2, #0x6a0]
	add r1, r4, #0x3000
	ldr r3, [r1, #0x660]
	cmp r0, r3
	ldrgt r2, [r1, #0x6a0]
	subgt r0, r0, r3
	addgt r0, r2, r0, lsl #4
	strgt r0, [r1, #0x6a0]
_0211E368:
	mov r0, r4
	bl FUN_ov43_0211d68c
	mov r0, r4
	bl FUN_ov43_0211c84c
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r8, lsl #0x10
	str r0, [sp]
	ldr r0, _0211E3C4 ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r2, r7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r2, r8
	mov r3, r9
	ldr r0, _0211E3C0 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl FUN_ov16_0210fd0c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E3C0: .word unk_02099EB4
_0211E3C4: .word unk_02099F38
	arm_func_end FUN_ov43_0211e284

	arm_func_start FUN_ov43_0211e3c8
FUN_ov43_0211e3c8: ; 0x0211E3C8
	add r0, r0, #0x3000
	mov r1, #0
	str r1, [r0, #0x684]
	str r1, [r0, #0x688]
	str r1, [r0, #0x68c]
	bx lr
	arm_func_end FUN_ov43_0211e3c8

	arm_func_start FUN_ov43_0211e3e0
FUN_ov43_0211e3e0: ; 0x0211E3E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r1, #0xa8
	str r1, [sp]
	mov r1, #0x10
	mov r7, #0
	str r1, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r5, #0x190
	mov r3, r7
	mov r1, #7
	mov r2, #0xa
	mov r4, r0
	str r5, [sp, #0xc]
	bl FUN_ov43_0211a72c
	movs r6, r0
	beq _0211E47C
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
_0211E47C:
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x10
	mov r7, #2
	str r0, [sp, #4]
	mov r1, #7
	mov r0, r4
	str r1, [sp, #8]
	mov r4, #0x190
	mov r3, r7
	mov r1, #8
	mov r2, #0xa
	str r4, [sp, #0xc]
	bl FUN_ov43_0211a72c
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
	arm_func_end FUN_ov43_0211e3e0

	arm_func_start FUN_ov43_0211e520
FUN_ov43_0211e520: ; 0x0211E520
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	ldr r1, _0211E604 ; =0x02099F38
	mov r8, r0
	mov r4, #1
	ldr r0, [r1]
	mov r2, r4
	mov r1, #2
	bl FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	add r1, r8, #0x3000
	ldr r2, [r1, #0x684]
	mov r5, r0
	add r7, r2, #1
	str r5, [r1, #0x238]
	cmp r7, #0xa
	rsb r6, r4, #0x1f0
	blt _0211E5AC
	ldr r2, _0211E608 ; =0x66666667
	mov r0, r7, lsr #0x1f
	smull r1, r3, r2, r7
	add r3, r0, r3, asr #2
	str r3, [sp]
	mov r0, #0xb8
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r8
	mov r1, r5
	mov r3, #0x14
	str r4, [sp, #0x10]
	bl FUN_ov43_0211c268
_0211E5AC:
	ldr r2, _0211E608 ; =0x66666667
	mov r0, r7, lsr #0x1f
	smull r1, r3, r2, r7
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r7, r0
	str r3, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	add r2, sp, #0x14
	mov r0, r8
	mov r1, r5
	str r6, [sp, #0xc]
	mov r4, #1
	mov r3, #0x14
	str r4, [sp, #0x10]
	bl FUN_ov43_0211c268
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E604: .word unk_02099F38
_0211E608: .word 0x66666667
	arm_func_end FUN_ov43_0211e520

	arm_func_start FUN_ov43_0211e60c
FUN_ov43_0211e60c: ; 0x0211E60C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x238]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211E640 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x238]
	ldmfd sp!, {r4, pc}
_0211E640: .word unk_02099F38
	arm_func_end FUN_ov43_0211e60c

	arm_func_start FUN_ov43_0211e644
FUN_ov43_0211e644: ; 0x0211E644
	add r0, r0, #0x27c
	ldr r12, _0211E65C ; =MI_CpuFill8
	add r0, r0, #0x3400
	mov r1, #0
	mov r2, #8
	bx r12
_0211E65C: .word MI_CpuFill8
	arm_func_end FUN_ov43_0211e644

	arm_func_start FUN_ov43_0211e660
FUN_ov43_0211e660: ; 0x0211E660
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r1, #0xd8
	stmia sp, {r1, r4}
	mov r1, #8
	str r1, [sp, #8]
	mov r12, #0x190
	mov r3, r4
	mov r1, #0xa
	mov r2, #0xb
	str r12, [sp, #0xc]
	bl FUN_ov43_0211a72c
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
	arm_func_end FUN_ov43_0211e660

	arm_func_start FUN_ov43_0211e6c0
FUN_ov43_0211e6c0: ; 0x0211E6C0
	stmfd sp!, {r3, lr}
	add r12, r0, #0x3000
	ldr r2, [r12, #0x680]
	ldr r1, [r12, #0x23c]
	add r3, r2, #1
	str r3, [r12, #0x680]
	cmp r3, #0xa
	mov r2, #1
	mov lr, #0
	bge _0211E700
	ldr r0, _0211E734 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	mov r3, #2
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211E700:
	cmp r3, #0xa
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0x68]
	str lr, [r12, #0x67c]
	eor r3, r3, #1
	str lr, [r12, #0x680]
	str r3, [r0, #0x68]
	strb lr, [r0, #0x15]
	ldr r0, _0211E734 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211E734: .word unk_02099F38
	arm_func_end FUN_ov43_0211e6c0

	arm_func_start FUN_ov43_0211e738
FUN_ov43_0211e738: ; 0x0211E738
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	mov r6, #0
	str r1, [sp, #4]
	mov r1, #0xa
	str r1, [sp, #8]
	mov r4, #0x190
	mov r3, r6
	mov r1, #0xc
	mov r2, #5
	str r4, [sp, #0xc]
	bl FUN_ov43_0211a72c
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
	arm_func_end FUN_ov43_0211e738

	arm_func_start FUN_ov43_0211e7dc
FUN_ov43_0211e7dc: ; 0x0211E7DC
	mov r2, #0
	add r0, r0, #0x3000
	sub r1, r2, #1
	str r2, [r0, #0x690]
	str r2, [r0, #0x694]
	str r2, [r0, #0x698]
	str r2, [r0, #0x69c]
	str r2, [r0, #0x6a0]
	str r2, [r0, #0x6a4]
	str r2, [r0, #0x6a8]
	str r2, [r0, #0x6ac]
	str r2, [r0, #0x6b0]
	str r2, [r0, #0x6b4]
	str r2, [r0, #0x6b8]
	str r1, [r0, #0x6bc]
	str r1, [r0, #0x6c0]
	str r1, [r0, #0x6c4]
	str r2, [r0, #0x6c8]
	bx lr
	arm_func_end FUN_ov43_0211e7dc

	arm_func_start FUN_ov43_0211e828
FUN_ov43_0211e828: ; 0x0211E828
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r1, #6
	str r1, [sp, #0x14]
	mov r1, #0x98
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #0xb
	str r1, [sp, #8]
	mov r1, #0x190
	str r1, [sp, #0xc]
	mov r6, #0
	ldr r2, [sp, #0x14]
	mov r3, r6
	mov r1, #0xd
	mov r10, r0
	bl FUN_ov43_0211a72c
	movs r5, r0
	beq _0211E8CC
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
	mov r1, r6
	add r2, r6, #1
	mov r3, r6
	bl FUN_ov16_0210e720
_0211E8CC:
	ldr r0, _0211E994 ; =0x02099F38
	mov r9, #3
	ldr r0, [r0]
	mov r1, r9
	mov r2, #1
	bl FUN_ov16_02112724
	mov r8, r0
	mov r7, #0
	add r11, sp, #0x14
	str r7, [sp, #0x14]
	add r0, r10, #0x3000
	str r8, [r0, #0x24c]
	str r7, [sp]
	mov r6, #0x10
	str r6, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r4, #0xc3
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	str r7, [sp, #0x10]
	mov r3, #0xe
	bl FUN_ov43_0211c268
	str r7, [sp]
	str r6, [sp, #4]
	mov r5, #0x30
	add r4, r4, #0x12c
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	mov r3, r9
	str r7, [sp, #0x10]
	bl FUN_ov43_0211c268
	mov r1, r8
	add r8, r7, #1
	str r8, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r2, r11
	mov r3, r9
	str r7, [sp, #0x10]
	bl FUN_ov43_0211c268
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E994: .word unk_02099F38
	arm_func_end FUN_ov43_0211e828

	arm_func_start FUN_ov43_0211e998
FUN_ov43_0211e998: ; 0x0211E998
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r2, #0
	add r1, r6, #0x3000
	sub r0, r2, #1
	mov r5, #2
	ldr r4, _0211EA20 ; =0x02099F38
	str r2, [r1, #0x690]
	str r2, [r1, #0x694]
	str r2, [r1, #0x698]
	str r2, [r1, #0x69c]
	str r2, [r1, #0x6a0]
	str r2, [r1, #0x6a4]
	str r0, [r1, #0x6bc]
	str r0, [r1, #0x6c0]
	str r0, [r1, #0x6c4]
	ldr r0, [r4]
	ldr r1, [r1, #0x24c]
	mov r3, r5
	mov r2, #1
	bl FUN_ov16_02113f7c
	add r1, r6, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x24c]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113f7c
	add r1, r6, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x24c]
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r4, r5, r6, pc}
_0211EA20: .word unk_02099F38
	arm_func_end FUN_ov43_0211e998

	arm_func_start FUN_ov43_0211ea24
FUN_ov43_0211ea24: ; 0x0211EA24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	add r0, r9, #0x3000
	ldr r1, [r0, #0x694]
	ldr r4, [r0, #0x24c]
	cmp r1, #0
	ldr r6, [r0, #0x69c]
	ldr r7, [r0, #0x6a0]
	mov r5, #1
	mov r8, #0xf
	bne _0211EA7C
	cmp r7, #0x20
	blt _0211EA60
	cmp r7, #0x90
	ble _0211EAA8
_0211EA60:
	ldr r0, _0211EB40 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EA7C:
	ldr r1, [r0, #0x6a4]
	ldr r0, [r0, #0x684]
	cmp r1, r0
	beq _0211EAA8
	ldr r0, _0211EB40 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EAA8:
	add r0, r9, #0x3000
	ldr r0, [r0, #0x698]
	mov r1, r8
	add r0, r0, #1
	bl _s32_div_f
	mov r3, r6, lsl #0x10
	add r0, r9, #0x3000
	str r1, [r0, #0x698]
	mov r2, r7, lsl #0x10
	mov r0, r2, asr #0x10
	ldr r6, _0211EB40 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, r9, #0x3000
	ldr r1, [r0, #0x698]
	add r0, r8, r8, lsr #31
	cmp r1, r0, asr #1
	rsbgt r0, r1, #0
	addgt r1, r0, r8
	add r3, r1, r1, lsl #1
	ldr r0, _0211EB40 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_02113a80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EB40: .word unk_02099F38
	arm_func_end FUN_ov43_0211ea24

	arm_func_start FUN_ov43_0211eb44
FUN_ov43_0211eb44: ; 0x0211EB44
	mov r2, #0
	add r0, r0, #0x3000
	sub r1, r2, #1
	str r2, [r0, #0x6a8]
	str r2, [r0, #0x6ac]
	str r2, [r0, #0x6b0]
	str r2, [r0, #0x6b4]
	str r2, [r0, #0x6b8]
	str r1, [r0, #0x6bc]
	str r1, [r0, #0x6c0]
	str r1, [r0, #0x6c4]
	bx lr
	arm_func_end FUN_ov43_0211eb44

	arm_func_start FUN_ov43_0211eb74
FUN_ov43_0211eb74: ; 0x0211EB74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r2, r10, #0x3000
	ldr r0, [r2, #0x6ac]
	mov r4, #0xb
	add r9, r4, #1
	ldr r8, [r2, #0x6b4]
	add r0, r0, #1
	add r1, r9, #1
	ldr r6, [r2, #0x24c]
	ldr r5, [r2, #0x6b8]
	ldr r7, [r2, #0x6b0]
	mov r11, #2
	bl _s32_div_f
	add r0, r10, #0x3000
	str r1, [r0, #0x6ac]
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r7, lsl #0x10
	ldr r7, _0211ECC0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r7]
	mov r3, r1, asr #0x10
	mov r1, r6
	add r2, r5, #2
	bl FUN_ov16_02113b78
	add r0, r10, #0x3000
	ldr r0, [r0, #0x6ac]
	cmp r0, #2
	bgt _0211EC0C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC0C:
	cmp r0, #5
	bgt _0211EC2C
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC2C:
	cmp r0, #8
	bgt _0211EC54
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC54:
	cmp r0, r4
	bgt _0211EC74
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC74:
	cmp r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov43_0211f0cc
	mov r0, r10
	add r1, r10, #0x3000
	mov r2, #1
	str r2, [r1, #0x6c8]
	bl FUN_ov43_0211d744
	mov r0, r10
	bl FUN_ov43_0211ce60
	mov r0, r10
	mov r1, #0
	bl FUN_ov43_0211ae74
	mov r0, r10
	bl FUN_ov43_0211e998
	mov r0, r10
	bl FUN_ov43_0211eb44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ECC0: .word unk_02099F38
	arm_func_end FUN_ov43_0211eb74

	arm_func_start FUN_ov43_0211ecc4
FUN_ov43_0211ecc4: ; 0x0211ECC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x3000
	mvn r3, #0
	mov r1, #0xb
	str r3, [r2, #0x658]
	bl FUN_ov43_0211a85c
	add r0, r5, #0x3000
	ldr r0, [r0, #0x65c]
	cmp r0, #0
	mov r0, r5
	bne _0211ED30
	bl FUN_ov43_0211eec4
	cmp r0, #0
	beq _0211ED20
	add r0, r5, #0x3000
	ldr r3, [r0, #0x610]
	ldr r2, [r0, #0x660]
	mov r1, #0
	add r2, r3, r2
	str r2, [r0, #0x6bc]
_0211ED18:
	str r1, [r0, #0x658]
	b _0211ED68
_0211ED20:
	ldr r0, _0211EEC0 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED30:
	bl FUN_ov43_0211eedc
	cmp r0, #1
	bne _0211ED58
	add r0, r5, #0x3000
	ldr r3, [r0, #0x610]
	ldr r2, [r0, #0x684]
	mov r1, #1
	add r2, r3, r2, lsl #3
	str r2, [r0, #0x6c0]
	b _0211ED18
_0211ED58:
	ldr r0, _0211EEC0 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED68:
	add r3, r5, #0x3000
	ldr lr, [r3, #0x65c]
	mov r0, #0x88
	mul r12, lr, r0
	ldr r2, [r3, #0x610]
	ldr r1, [r3, #0x684]
	mov r4, r2, lsl #4
	ldr r0, [r3, #0x658]
	add r4, r4, #0x20
	str lr, [r3, #0x694]
	str r12, [r3, #0x69c]
	str r4, [r3, #0x6a0]
	str r1, [r3, #0x6a4]
	cmp r0, #0
	bne _0211EDD4
	ldr r12, [r3, #0x660]
	mov r4, #1
	add lr, r2, #0xc
	mov r0, r5
	mov r2, r4
	mov r1, #0x15
	str lr, [r3, #0x654]
	str r12, [r3, #0x678]
_0211EDC4:
	bl FUN_ov43_0211db7c
	add r0, r5, #0x3000
	str r4, [r0, #0x65c]
	b _0211EEA0
_0211EDD4:
	cmp r0, #1
	bne _0211EEA0
	add r0, r2, #0x15
	str r0, [r3, #0x654]
	str r1, [r3, #0x68c]
	mov r4, #0
	mov r0, #0x5c
_0211EDF0:
	mla r1, r4, r0, r5
	add r1, r1, #0x600
	ldrh r1, [r1, #0x50]
	cmp r1, #0
	bne _0211EE94
	cmp r4, #8
	bge _0211EE28
	add r1, r5, #0x3000
	ldr r0, [r1, #0x660]
	cmp r0, r4
	ble _0211EE50
	mov r0, r5
	str r4, [r1, #0x660]
	b _0211EE4C
_0211EE28:
	add r0, r5, #0x3000
	ldr r2, [r0, #0x660]
	cmp r2, r4
	bge _0211EE48
	sub r1, r4, #8
	cmp r2, r1
	suble r1, r4, #7
	strle r1, [r0, #0x660]
_0211EE48:
	mov r0, r5
_0211EE4C:
	bl FUN_ov43_0211e064
_0211EE50:
	mov r0, r5
	bl FUN_ov43_0211d68c
	mov r0, r5
	bl FUN_ov43_0211c84c
	add r3, r5, #0x3000
	ldr r0, [r3, #0x660]
	ldr r2, [r3, #0x610]
	sub r1, r4, r0
	ldr r12, [r3, #0x684]
	mov r4, #0
	add lr, r2, #0x15
	mov r0, r5
	mov r2, r4
	str lr, [r3, #0x654]
	add r1, r1, #0xc
	str r12, [r3, #0x68c]
	b _0211EDC4
_0211EE94:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211EDF0
_0211EEA0:
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov43_0211ae74
	ldr r0, _0211EEC0 ; =gL5Sound
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211EEC0: .word gL5Sound
	arm_func_end FUN_ov43_0211ecc4

	arm_func_start FUN_ov43_0211eec4
FUN_ov43_0211eec4: ; 0x0211EEC4
	stmfd sp!, {r3, lr}
	bl FUN_ov43_0211de40
	tst r0, #0x5a0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211eec4

	arm_func_start FUN_ov43_0211eedc
FUN_ov43_0211eedc: ; 0x0211EEDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov43_0211ddf4
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov43_0211de40
	tst r0, #0x40
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r2, #0
	mov r0, #0x5c
_0211EF10:
	mla r1, r2, r0, r5
	add r1, r1, #0x600
	ldrh r1, [r1, #0x50]
	cmp r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, #0x10
	blt _0211EF10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov43_0211eedc

	arm_func_start FUN_ov43_0211ef3c
FUN_ov43_0211ef3c: ; 0x0211EF3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0xb
	mov r4, r0
	mov r1, r5
	bl FUN_ov43_0211a85c
	add r0, r4, #0x3000
	ldr r0, [r0, #0x65c]
	cmp r0, #0
	mov r0, r4
	bne _0211EFA8
	bl FUN_ov43_0211f040
	cmp r0, #0
	beq _0211EF98
	add r0, r4, #0x3000
	ldr r2, [r0, #0x6bc]
	sub r1, r5, #0xc
	cmp r2, r1
	ldr r2, [r0, #0x610]
	ldr r1, [r0, #0x660]
	add r1, r2, r1
	streq r1, [r0, #0x6bc]
	strne r1, [r0, #0x6c4]
	b _0211EFDC
_0211EF98:
	ldr r0, _0211F03C ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211EFA8:
	bl FUN_ov43_0211f058
	cmp r0, #1
	bne _0211EFCC
	add r0, r4, #0x3000
	ldr r2, [r0, #0x610]
	ldr r1, [r0, #0x684]
	add r1, r2, r1, lsl #3
	str r1, [r0, #0x6c0]
	b _0211EFDC
_0211EFCC:
	ldr r0, _0211F03C ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211EFDC:
	add r1, r4, #0x3000
	ldr r2, [r1, #0x65c]
	mov r0, #0x88
	mul r12, r2, r0
	ldr r0, [r1, #0x610]
	mov r2, #1
	mov r0, r0, lsl #4
	add r3, r0, #0x20
	mov r0, r4
	str r12, [r1, #0x6b0]
	str r3, [r1, #0x6b4]
	str r2, [r1, #0x6b8]
	bl FUN_ov43_0211de80
	cmp r0, #1
	addeq r0, r4, #0x3000
	moveq r1, #0
	streq r1, [r0, #0x6b8]
	mov r0, r4
	mov r1, #2
	bl FUN_ov43_0211ae74
	ldr r0, _0211F03C ; =gL5Sound
	mov r1, #0x18
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F03C: .word gL5Sound
	arm_func_end FUN_ov43_0211ef3c

	arm_func_start FUN_ov43_0211f040
FUN_ov43_0211f040: ; 0x0211F040
	stmfd sp!, {r3, lr}
	bl FUN_ov43_0211de40
	tst r0, #0x5a0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov43_0211f040

	arm_func_start FUN_ov43_0211f058
FUN_ov43_0211f058: ; 0x0211F058
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov43_0211ddf4
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov43_0211de40
	tst r0, #0x40
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x3000
	ldr r0, [r0, #0x6c0]
	cmn r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r2, #0
	mov r0, #0x5c
_0211F0A0:
	mla r1, r2, r0, r5
	add r1, r1, #0x600
	ldrh r1, [r1, #0x50]
	cmp r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, #0x10
	blt _0211F0A0
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov43_0211f058

	arm_func_start FUN_ov43_0211f0cc
FUN_ov43_0211f0cc: ; 0x0211F0CC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x5c
	add r3, r0, #0x3000
	add r1, r0, #0x23c
	ldr r6, [r3, #0x6bc]
	mov r2, #0x5c
	add r1, r1, #0x400
	mla r4, r6, r2, r1
	ldr r6, [r3, #0x6c0]
	sub r1, r2, #0x5d
	mov r5, #0
	cmp r6, r1
	addne r1, r0, #0x3fc
	mov r3, r5
	addne r1, r1, #0x800
	mlane r3, r6, r2, r1
	add r1, r0, #0x3000
	ldr r2, [r1, #0x6c4]
	cmn r2, #1
	addne r0, r0, #0x23c
	addne r1, r0, #0x400
	movne r0, #0x5c
	mlane r5, r2, r0, r1
	cmp r4, #0
	cmpne r3, #0
	beq _0211F154
	ldrb r2, [r4, #0x28]
	mov r0, r3
	mov r1, r4
	strb r2, [r3, #0x28]
	ldrb r6, [r4, #0x29]
	mov r2, #0x5c
	strb r6, [r3, #0x29]
	bl MI_CpuCopy8
_0211F154:
	cmp r4, #0
	cmpne r5, #0
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r7, sp, #0
	mov r6, #0x5c
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	ldrb r2, [r5, #0x29]
	mov r0, r5
	mov r1, r4
	strb r2, [sp, #0x29]
	ldrb r3, [r4, #0x29]
	mov r2, r6
	strb r3, [r5, #0x29]
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MI_CpuCopy8
	ldrb r1, [r5, #0x28]
	ldrb r0, [r4, #0x28]
	strb r0, [r5, #0x28]
	strb r1, [r4, #0x28]
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov43_0211f0cc

	arm_func_start FUN_ov43_0211f1c4
FUN_ov43_0211f1c4: ; 0x0211F1C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov43_0211f244
	mov r0, r5
	bl FUN_ov43_0211f310
	mov r0, r5
	bl FUN_ov43_0211f380
	mov r0, r5
	bl FUN_ov43_0211f474
	mov r0, r5
	bl FUN_ov43_0211f520
	ldr r4, _0211F23C ; =0x02099E94
	ldrb r0, [r4]
	cmp r0, #0
	beq _0211F210
	mov r0, r5
	bl FUN_ov43_0211f778
	mov r0, #0
	strb r0, [r4]
_0211F210:
	ldr r5, _0211F240 ; =0x0209BA20
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_02050f4c
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_02050f4c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F23C: .word unk_02099E94
_0211F240: .word unk_0209BA20
	arm_func_end FUN_ov43_0211f1c4

	arm_func_start FUN_ov43_0211f244
FUN_ov43_0211f244: ; 0x0211F244
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, #0
	add r0, r11, #0x3000
	str r0, [sp]
	mov r8, r10
	mov r6, #1
	ldr r5, _0211F304 ; =0x02099ED8
	ldr r4, _0211F308 ; =0x02099EC0
	b _0211F2F0
_0211F26C:
	mov r0, #0x5c
	mla r0, r10, r0, r11
	ldrh r9, [r0, #0x90]
	cmp r9, #0
	beq _0211F2EC
	ldr r0, _0211F30C ; =0x0209BA20
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
_0211F2EC:
	add r10, r10, #1
_0211F2F0:
	ldr r0, [sp]
	ldr r0, [r0, #0x160]
	cmp r10, r0
	blt _0211F26C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F304: .word unk_02099ED8
_0211F308: .word unk_02099EC0
_0211F30C: .word unk_0209BA20
	arm_func_end FUN_ov43_0211f244

	arm_func_start FUN_ov43_0211f310
FUN_ov43_0211f310: ; 0x0211F310
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	ldr r8, _0211F37C ; =0x0209BA20
	mov r5, r0
	mov r7, r4
	mov r6, #0x5c
_0211F328:
	rsb r1, r4, #0xf
	mla r0, r1, r6, r5
	ldrh r9, [r0, #0x90]
	cmp r9, #0
	beq _0211F36C
	mov r0, r8
	mov r1, r7
	mov r2, r9
	bl FUN_0204d354
	mov r0, r9
	mov r1, r7
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211F36C
	mov r1, r7
	mov r2, r7
	bl FUN_0206d9cc
_0211F36C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211F328
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F37C: .word unk_0209BA20
	arm_func_end FUN_ov43_0211f310

	arm_func_start FUN_ov43_0211f380
FUN_ov43_0211f380: ; 0x0211F380
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	ldr r5, _0211F470 ; =0x0209A11C
	mov r10, r0
	mov r9, r7
	mov r8, r7
	mov r4, #0x5c
_0211F39C:
	mla r6, r9, r4, r10
	add r1, r6, #0x600
	ldrh r0, [r6, #0x90]
	ldrh r1, [r1, #0x50]
	cmp r0, r1
	beq _0211F3EC
	mov r1, r8
	bl FUN_ov16_020efa9c
	add r1, r6, #0x600
	mov r6, r0
	ldrh r0, [r1, #0x50]
	mov r1, r8
	bl FUN_ov16_020efa9c
	cmp r6, #0
	cmpne r0, #0
	beq _0211F3EC
	ldrsh r1, [r6, #0x94]
	ldrsh r2, [r0, #0x94]
	ldr r0, [r5]
	bl FUN_0206c664
_0211F3EC:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211F39C
	mov r9, #0
	ldr r5, _0211F470 ; =0x0209A11C
	mov r11, r9
	mov r4, #0x5c
_0211F408:
	mla r0, r9, r4, r10
	add r0, r0, #0x600
	ldrh r6, [r0, #0x50]
	cmp r6, #0
	beq _0211F460
	mov r8, r11
_0211F420:
	mov r0, r8
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _0211F454
	bl FUN_0206cbf8
	cmp r6, r0
	bne _0211F454
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	bl FUN_0206c664
	add r7, r7, #1
	b _0211F460
_0211F454:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0211F420
_0211F460:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211F408
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F470: .word unk_0209A11C
	arm_func_end FUN_ov43_0211f380

	arm_func_start FUN_ov43_0211f474
FUN_ov43_0211f474: ; 0x0211F474
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov16_020f081c
	mov r5, r0
	ldr r0, _0211F51C ; =0x0209BA20
	mov r1, r5
	bl FUN_0205107c
	mov r7, #0
	mov r8, r0
	mov r11, r7
_0211F49C:
	mov r0, #0x5c
	mla r1, r7, r0, r10
	add r0, r1, #0x600
	ldrh r4, [r0, #0x50]
	ldrb r9, [r1, #0x664]
	cmp r4, #0
	beq _0211F50C
	ldr r6, [r1, #0x658]
	cmp r6, #0
	bne _0211F4D0
	mov r0, r8
	bl FUN_0204fda4
	mov r6, r0
_0211F4D0:
	mov r0, r4
	mov r1, r11
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211F4F0
	mov r1, r9
	mov r2, r11
	bl FUN_0206d9cc
_0211F4F0:
	ldr r0, _0211F51C ; =0x0209BA20
	mov r2, r4
	mov r4, #1
	mov r1, r5
	mov r3, r6
	str r4, [sp]
	bl FUN_0204c92c
_0211F50C:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211F49C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F51C: .word unk_0209BA20
	arm_func_end FUN_ov43_0211f474

	arm_func_start FUN_ov43_0211f520
FUN_ov43_0211f520: ; 0x0211F520
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	mov r10, r0
	ldr r0, _0211F5DC ; =0x0209BA20
	mov r1, r7
	bl FUN_0205106c
	mov r9, r0
	ldr r0, _0211F5DC ; =0x0209BA20
	mov r8, r7
	bl FUN_ov16_020edfb0
	cmp r0, #0
	ble _0211F5D0
	mov r11, #0x5c
_0211F554:
	mla r1, r8, r11, r10
	add r0, r1, #0x600
	ldrh r4, [r0, #0x50]
	cmp r4, #0
	beq _0211F5BC
	add r6, r7, #1
	ldr r5, [r1, #0x65c]
	mov r0, r9
	mov r2, r4
	sub r1, r6, #1
	mov r3, #0
	bl FUN_020501bc
	cmp r5, #0
	beq _0211F5A0
	mov r0, r9
	mov r2, r5
	mov r3, #1
	sub r1, r6, #1
	bl FUN_02050144
_0211F5A0:
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r0, r10
	mov r1, r4
	bl FUN_ov43_0211f5e0
	add r7, r7, #1
_0211F5BC:
	ldr r0, _0211F5DC ; =0x0209BA20
	add r8, r8, #1
	bl FUN_ov16_020edfb0
	cmp r8, r0
	blt _0211F554
_0211F5D0:
	ldr r0, _0211F5DC ; =0x0209BA20
	bl FUN_0204ce50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F5DC: .word unk_0209BA20
	arm_func_end FUN_ov43_0211f520

	arm_func_start FUN_ov43_0211f5e0
FUN_ov43_0211f5e0: ; 0x0211F5E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xa0
	ldr r0, _0211F76C ; =0x02099ED8
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
	beq _0211F634
	cmp r4, #0
	ldrneh r8, [r4, #0xa8]
	bne _0211F654
	bl FUN_0206dcd4
	ldrh r8, [r0, #0xe]
	b _0211F654
_0211F634:
	ldr r0, _0211F770 ; =0x0209BA20
	add r2, sp, #0x38
	mov r1, r10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xa0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r8, [sp, #0x90]
_0211F654:
	ldr r4, _0211F76C ; =0x02099ED8
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
	ldr r4, _0211F774 ; =0x02099EC0
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
_0211F76C: .word unk_02099ED8
_0211F770: .word unk_0209BA20
_0211F774: .word unk_02099EC0
	arm_func_end FUN_ov43_0211f5e0

	arm_func_start FUN_ov43_0211f778
FUN_ov43_0211f778: ; 0x0211F778
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r5, _0211F8B8 ; =0x0209BA20
	mov r8, #0
	mov r0, r5
	mov r1, r8
	mov r4, r8
	bl FUN_0205107c
	mov r6, r0
	mov r0, r5
	mov r1, r8
	bl FUN_0207249c
	mov r7, r0
	mov r10, r8
	mov r9, r8
_0211F7B0:
	mov r0, r6
	mov r1, r9
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _0211F828
	bl FUN_0206cbf8
	cmp r0, #1
	orreq r10, r10, #1
	beq _0211F800
	mov r0, r5
	bl FUN_0206cbf8
	cmp r0, #0x1e
	orreq r10, r10, #2
	beq _0211F800
	mov r0, r5
	bl FUN_0206cbf8
	cmp r0, #2
	orreq r10, r10, #4
_0211F800:
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r6
	bl FUN_0204fd68
	cmp r0, #1
	bne _0211F828
	mov r0, r5
	bl FUN_0206cbf8
	mov r8, r0
_0211F828:
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211F7B0
	tst r10, #1
	beq _0211F854
	ldr r0, _0211F8B8 ; =0x0209BA20
	mov r2, #1
	mov r1, #0
	strh r2, [r7, #0x2e]
	bl FUN_0204d864
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F854:
	tst r10, #2
	beq _0211F878
	ldr r3, _0211F8BC ; =0x00000449
	ldr r0, _0211F8B8 ; =0x0209BA20
	mov r1, #0
	mov r2, #0x1e
	strh r3, [r7, #0x2e]
	bl FUN_0204d864
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F878:
	tst r10, #4
	beq _0211F898
	ldr r0, _0211F8B8 ; =0x0209BA20
	mov r2, #2
	mov r1, #0
	strh r2, [r7, #0x2e]
	bl FUN_0204d864
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F898:
	cmp r8, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211F8B8 ; =0x0209BA20
	mov r2, r8
	mov r1, #0
	strh r8, [r7, #0x2e]
	bl FUN_0204d864
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211F8B8: .word unk_0209BA20
_0211F8BC: .word 0x00000449
	arm_func_end FUN_ov43_0211f778

	arm_func_start FUN_ov43_0211f8c0
FUN_ov43_0211f8c0: ; 0x0211F8C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov43_0211f8c0

	arm_func_start FUN_ov43_0211f8d4
FUN_ov43_0211f8d4: ; 0x0211F8D4
	bx lr
	arm_func_end FUN_ov43_0211f8d4

	.rodata
	.global ov43_0211F8D8
ov43_0211F8D8:
	.byte 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.global ov43_0211F8E0
ov43_0211F8E0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211F8F0
ov43_0211F8F0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.global ov43_0211F900
ov43_0211F900:
	.byte 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00
	.global ov43_0211F910
ov43_0211F910:
	.word ov43_0211FB88
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov43_0211FB78
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov43_0211FB68
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov43_0211FB58
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov43_0211FA88
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov43_0211FB38
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov43_0211FB28
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov43_0211FB18
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov43_0211FAD8
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov43_0211FAF8
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov43_0211FB08
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov43_0211FB98
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov43_0211FBA8
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov43_0211FAB8
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov43_0211FAA8
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov43_0211FA98
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov43_0211FA68
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov43_0211FAC8
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov43_0211FAE8
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov43_0211FB48
	.byte 0x13, 0x00, 0x00, 0x00
	.word ov43_0211FBB8
	.byte 0x14, 0x00, 0x00, 0x00
	.word ov43_0211FA58
	.byte 0x15, 0x00, 0x00, 0x00
	.word ov43_0211FA78
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov43_0211f9d0
FUN_ov43_0211f9d0: ; 0x0211F9D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211FA18 ; =0x0211FA40
	str r0, [r4, #8]
	ldr r0, _0211FA1C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0211FA20 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FA18: .word ov43_0211FA40
_0211FA1C: .word 0x00009CCD
_0211FA20: .word 0x0000EA3C
	arm_func_end FUN_ov43_0211f9d0

	.section .sinit, 4
ov43_0211FA24:
	.word FUN_ov43_0211f9d0

	.data
	.global ov43_0211FA40
ov43_0211FA40:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FA58
ov43_0211FA58:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x74, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FA68
ov43_0211FA68:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FA78
ov43_0211FA78:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FA88
ov43_0211FA88:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FA98
ov43_0211FA98:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FAA8
ov43_0211FAA8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FAB8
ov43_0211FAB8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FAC8
ov43_0211FAC8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FAD8
ov43_0211FAD8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FAE8
ov43_0211FAE8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FAF8
ov43_0211FAF8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB08
ov43_0211FB08:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB18
ov43_0211FB18:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB28
ov43_0211FB28:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB38
ov43_0211FB38:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB48
ov43_0211FB48:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB58
ov43_0211FB58:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB68
ov43_0211FB68:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB78
ov43_0211FB78:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB88
ov43_0211FB88:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FB98
ov43_0211FB98:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FBA8
ov43_0211FBA8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x37, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FBB8
ov43_0211FBB8:
	.byte 0x68, 0x6D, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov43_0211FBD0
ov43_0211FBD0:
	.word FUN_ov43_0211f8d4
	.word FUN_ov43_0211f8c0
	.word FUN_ov43_0211a1f0
	.word FUN_ov43_0211a930
	.word FUN_ov43_02119f00
	.word FUN_0202b208
	.word FUN_ov43_0211ac70
	.word FUN_ov43_0211ae00
	.word FUN_ov43_0211a0f4
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
	.global ov43_0211FC3C
ov43_0211FC3C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov43_0211FC54
ov43_0211FC54:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x68, 0x65, 0x6E, 0x73, 0x65, 0x69, 0x2E, 0x53
	.byte 0x50, 0x4C, 0x00, 0x00
	.global ov43_0211FC74
ov43_0211FC74:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov43_0211FC8C
ov43_0211FC8C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov43_0211FCA4
ov43_0211FCA4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov43_0211FCBC
ov43_0211FCBC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov43_0211FCD4
ov43_0211FCD4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x68, 0x65, 0x6E, 0x73, 0x65, 0x69, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay42.inc"

	.text
	arm_func_start FUN_ov42_02119f00
FUN_ov42_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	mov r5, r0
	ldr r0, _0211A11C ; =0x0209BA20
	mov r1, r8
	mov r4, r8
	bl FUN_0205107c
	mov r7, r0
	b _02119F68
_02119F24:
	mov r0, r8
	bl  FUN_ov16_020efa80
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
	bl  FUN_ov16_020efa80
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
	ldr r0, _0211A11C ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	strh r4, [r0, #0x28]
	mov r0, #0x4000000
	ldr r1, [r0]
	ldr r0, _0211A120 ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #0x70]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A124 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r5, #8
	mov r1, r4
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r5, #0x3000
	mov r6, #1
	str r4, [r0, #0x444]
	mov r0, r5
	str r4, [r5, #0x68]
	strb r4, [r5, #0x6c]
	strb r4, [r5, #0x6d]
	str r4, [r5, #0x74]
	str r4, [r5, #0x78]
	str r6, [r5, #8]
	bl FUN_ov42_0211bb48
	add r0, r5, #0x2000
	str r4, [r0, #0xf8c]
	str r4, [r0, #0xf90]
	mov r0, r5
	mov r1, r4
	bl FUN_ov42_0211bc3c
	mov r0, r5
	mov r1, r6
	bl FUN_ov42_0211bc3c
	mov r0, r5
	mov r1, r4
	bl FUN_ov42_0211bc6c
	mov r1, r6
	mov r0, r5
	bl FUN_ov42_0211bc6c
	mov r0, r5
	bl FUN_ov42_0211c0e8
	mov r0, r5
	bl FUN_ov42_0211e0b8
	mov r0, r5
	bl FUN_ov42_0211e5c0
	mov r0, r5
	bl FUN_ov42_0211e83c
	mov r0, r5
	bl FUN_ov42_0211da20
	mov r0, r5
	bl FUN_ov42_0211e9f4
	mov r0, r5
	bl FUN_ov42_0211f074
	add r0, r5, #0x38
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0xb8
	add r0, r0, #0x3000
	mov r1, r4
	mov r2, #0x340
	bl MI_CpuFill8
	add r0, r5, #0x34c
	add r0, r0, #0x2c00
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x3000
	ldr r1, _0211A128 ; =0x02099F44
	str r4, [r0, #0x4c4]
	ldr r0, [r1]
	cmp r0, #0
	beq _0211A110
	ldr r1, _0211A12C ; =0x020A1640
	ldrb r1, [r1, #0x22]
	bl  FUN_ov131_021421f4
_0211A110:
	mov r0, r5
	bl FUN_ov42_0211b238
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A11C: .word unk_0209BA20
_0211A120: .word unk_02099EB4
_0211A124: .word unk_02099ED4
_0211A128: .word unk_02099F44
_0211A12C: .word unk_020A1640
	arm_func_end FUN_ov42_02119f00

	arm_func_start FUN_ov42_0211a130
FUN_ov42_0211a130: ; 0x0211A130
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	beq _0211A17C
	ldr r0, _0211A258 ; =0x02099ED8
	mov r1, #0
	ldr r0, [r0]
	bl FUN_020552dc
	mov r4, r0
	bl FUN_0205430c
	ldr r2, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
_0211A17C:
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r5, #0x70]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A25C ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A260 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r5
	bl FUN_ov42_0211ec70
	mov r0, r5
	bl FUN_ov42_0211d764
	mov r0, r5
	bl FUN_ov42_0211c130
	mov r7, #0
	mov r0, r5
	mov r1, r7
	bl FUN_ov42_0211bca0
	mov r0, r5
	mov r6, #1
	mov r1, r6
	bl FUN_ov42_0211bca0
	mov r1, r7
	mov r0, r5
	bl FUN_ov42_0211bcc8
	mov r1, r6
	mov r0, r5
	bl FUN_ov42_0211bcc8
	mov r0, r5
	mov r1, #2
	bl FUN_ov42_0211bb4c
	mov r0, r5
	bl FUN_ov42_0211fac4
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	beq _0211A230
	add r1, sp, #0
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_020542c8
_0211A230:
	ldr r0, _0211A264 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _0211A268 ; =0x020A1640
	ldrb r1, [r1, #0x22]
	bl  FUN_ov131_021422e4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A258: .word unk_02099ED8
_0211A25C: .word unk_02099EB4
_0211A260: .word unk_02099ED4
_0211A264: .word unk_02099F44
_0211A268: .word unk_020A1640
	arm_func_end FUN_ov42_0211a130

	arm_func_start FUN_ov42_0211a26c
FUN_ov42_0211a26c: ; 0x0211A26C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrb r0, [r5, #0x6c]
	mov r4, r1
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A3EC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0x3000
	ldr r1, [r0, #0x400]
	cmp r1, #0
	ldreq r1, [r0, #0x41c]
	cmpeq r1, #0
	ldreq r1, [r0, #0x470]
	cmpeq r1, #0
	ldreq r1, [r0, #0x480]
	cmpeq r1, #0
	ldreq r1, [r0, #0x4c0]
	cmpeq r1, #0
	ldreq r0, [r0, #0x468]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x6d]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211A3F0 ; =0x0209A0F4
	ldr r6, _0211A3F4 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r6]
	orr r1, r1, r4
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl  FUN_ov16_0210f468
	cmp r0, #1
	bne _0211A324
	ldr r0, [r6]
	add r0, r0, #0xf00
	ldrh r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r4
	strh r1, [r0, #0x38]
_0211A324:
	tst r4, #1
	beq _0211A338
	mov r0, r5
	bl FUN_ov42_0211a3f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A338:
	tst r4, #2
	beq _0211A34C
	mov r0, r5
	bl FUN_ov42_0211a434
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A34C:
	tst r4, #0x800
	beq _0211A360
	mov r0, r5
	bl FUN_ov42_0211a5e8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A360:
	tst r4, #0x400
	beq _0211A374
	mov r0, r5
	bl FUN_ov42_0211a624
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A374:
	tst r4, #0x200
	beq _0211A388
	mov r0, r5
	bl FUN_ov42_0211a6a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A388:
	tst r4, #0x100
	beq _0211A39C
	mov r0, r5
	bl FUN_ov42_0211a70c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A39C:
	tst r4, #0x20
	beq _0211A3B0
	mov r0, r5
	bl FUN_ov42_0211a770
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3B0:
	tst r4, #0x10
	beq _0211A3C4
	mov r0, r5
	bl FUN_ov42_0211a85c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3C4:
	tst r7, #0x40
	beq _0211A3D8
	mov r0, r5
	bl FUN_ov42_0211a94c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3D8:
	tst r7, #0x80
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov42_0211a99c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3EC: .word unk_02099ED4
_0211A3F0: .word unk_0209A0F4
_0211A3F4: .word unk_02099EB4
	arm_func_end FUN_ov42_0211a26c

	arm_func_start FUN_ov42_0211a3f8
FUN_ov42_0211a3f8: ; 0x0211A3F8
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x6d]
	cmp r1, #0
	beq _0211A41C
	cmp r1, #1
	beq _0211A424
	cmp r1, #3
	beq _0211A42C
	ldmfd sp!, {r3, pc}
_0211A41C:
	bl FUN_ov42_0211f550
	ldmfd sp!, {r3, pc}
_0211A424:
	bl FUN_ov42_0211f7a4
	ldmfd sp!, {r3, pc}
_0211A42C:
	bl FUN_ov42_0211ecd0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov42_0211a3f8

	arm_func_start FUN_ov42_0211a434
FUN_ov42_0211a434: ; 0x0211A434
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	ldrb r1, [r9, #0x6d]
	mov r7, #0
	cmp r1, #0
	beq _0211A464
	cmp r1, #1
	beq _0211A494
	cmp r1, #3
	beq _0211A534
	b _0211A5B0
_0211A464:
	ldr r0, [r9, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	cmpne r0, #0x1e
	bne _0211A48C
	mov r1, #0x5a
_0211A47C:
	mov r0, r9
	mov r2, r1
	bl FUN_ov42_0211cafc
	b _0211A5B0
_0211A48C:
	mov r1, r7
	b _0211A47C
_0211A494:
	add r1, r9, #0x3000
	ldr r2, [r1, #0x43c]
	cmp r2, #0
	beq _0211A524
	ldr r2, [r1, #0x440]
	cmp r2, #0
	beq _0211A4BC
	cmp r2, #1
	beq _0211A4E8
	b _0211A500
_0211A4BC:
	ldr r3, [r1, #0x460]
	ldr r2, [r1, #0x448]
	cmp r3, r2
	beq _0211A500
	str r3, [r1, #0x448]
	bl FUN_ov42_0211e25c
	mov r0, r9
	bl FUN_ov42_0211d8ac
	mov r0, r9
	bl FUN_ov42_0211cb30
	b _0211A500
_0211A4E8:
	ldr r2, [r1, #0x46c]
	ldr r0, [r1, #0x464]
	cmp r2, r0
	movne r0, #1
	strne r2, [r1, #0x464]
	strne r0, [r1, #0x468]
_0211A500:
	add r0, r9, #0x3000
	ldr r1, [r0, #0x43c]
	ldr r2, [r0, #0x440]
	mov r0, r9
	bl FUN_ov42_0211dd9c
	add r0, r9, #0x3000
	ldr r1, [r0, #0x440]
	str r7, [r0, #0x43c]
	str r1, [r0, #0x444]
_0211A524:
	mov r0, r9
	mov r1, #0
	bl FUN_ov42_0211b228
	b _0211A5B0
_0211A534:
	add r0, r9, #0x3000
	ldr r3, [r0, #0x478]
	cmp r3, #1
	bne _0211A5A0
	ldr r1, _0211A5DC ; =0x0211FBFC
	ldr r4, _0211A5E0 ; =0x02099F38
	ldr r2, [r1]
	ldr r1, [r1, #4]
	ldr r8, [r0, #0x2c]
	str r1, [sp, #8]
	add r6, sp, #4
	str r2, [sp, #4]
	mov r5, #2
	ldr r2, [r6, r3, lsl #2]
	ldr r0, [r4]
	mov r1, r8
	mov r3, r5
	bl  FUN_ov16_02113f7c
	add r0, r9, #0x3000
	str r7, [r0, #0x478]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r6, r7, lsl #2]
	mov r1, r8
	mov r3, r5
	bl  FUN_ov16_02113ec0
_0211A5A0:
	add r0, r9, #0x3000
	mov r1, #1
	str r1, [r0, #0x480]
	str r7, [r0, #0x478]
_0211A5B0:
	ldrb r0, [r9, #0x6d]
	cmp r0, #3
	beq _0211A5C8
	mov r0, r9
	mov r1, #0xa
	bl FUN_ov42_0211ab1c
_0211A5C8:
	ldr r0, _0211A5E4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A5DC: .word 0x0211FBFC
_0211A5E0: .word unk_02099F38
_0211A5E4: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a434

	arm_func_start FUN_ov42_0211a5e8
FUN_ov42_0211a5e8: ; 0x0211A5E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x6d]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	mov r1, #3
	bl FUN_ov42_0211b228
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov42_0211ab1c
	ldr r0, _0211A620 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A620: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a5e8

	arm_func_start FUN_ov42_0211a624
FUN_ov42_0211a624: ; 0x0211A624
	stmfd sp!, {r4, lr}
	ldr r1, _0211A6A0 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210f484
	ldr r1, [r4, #0x68]
	sub r2, r0, #8
	cmp r1, r2
	bne _0211A658
	cmp r0, #8
	beq _0211A658
	cmp r0, #9
	ldmnefd sp!, {r4, pc}
_0211A658:
	mov r0, r4
	bl FUN_ov42_0211e02c
	cmp r0, #0
	bne _0211A678
	ldr r0, _0211A6A4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A678:
	ldrb r0, [r4, #0x6d]
	cmp r0, #0
	cmpne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211A6A4 ; =0x0209AC44
	add r2, r4, #0x3000
	mov r1, #1
	str r1, [r2, #0x470]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A6A0: .word unk_02099EB4
_0211A6A4: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a624

	arm_func_start FUN_ov42_0211a6a8
FUN_ov42_0211a6a8: ; 0x0211A6A8
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x6d]
	cmp r1, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	add r12, r0, #0x3000
	ldr r1, [r12, #0x464]
	mov r4, #1
	add lr, r1, #0xc
	ldr r3, _0211A704 ; =0x4EC4EC4F
	mov r1, lr, lsr #0x1f
	smull r2, r5, r3, lr
	add r5, r1, r5, asr #2
	mov r3, #0xd
	smull r1, r2, r3, r5
	sub r5, lr, r1
	mov r1, #6
	str r5, [r12, #0x464]
	str r4, [r12, #0x468]
	bl FUN_ov42_0211ab1c
	ldr r0, _0211A708 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A704: .word 0x4EC4EC4F
_0211A708: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a6a8

	arm_func_start FUN_ov42_0211a70c
FUN_ov42_0211a70c: ; 0x0211A70C
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0x6d]
	cmp r1, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	add r12, r0, #0x3000
	ldr r1, [r12, #0x464]
	mov r4, #1
	add lr, r1, #1
	ldr r3, _0211A768 ; =0x4EC4EC4F
	mov r1, lr, lsr #0x1f
	smull r2, r5, r3, lr
	add r5, r1, r5, asr #2
	mov r3, #0xd
	smull r1, r2, r3, r5
	sub r5, lr, r1
	mov r1, #7
	str r5, [r12, #0x464]
	str r4, [r12, #0x468]
	bl FUN_ov42_0211ab1c
	ldr r0, _0211A76C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211A768: .word 0x4EC4EC4F
_0211A76C: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a70c

	arm_func_start FUN_ov42_0211a770
FUN_ov42_0211a770: ; 0x0211A770
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldrb r0, [r5, #0x6d]
	cmp r0, #0
	cmpne r0, #1
	add r0, r5, #0x3000
	bne _0211A7D0
	ldr r2, [r0, #0x444]
	mov r1, #0
	eor r2, r2, #1
	str r2, [r0, #0x444]
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	ldr r2, [r0, #0x444]
	mov r0, #0x88
	mul r1, r2, r0
	mov r0, r5
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov42_0211db10
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A7D0:
	ldr r3, [r0, #0x478]
	cmp r3, #1
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0211A850 ; =0x0211FC1C
	ldr r6, _0211A854 ; =0x02099F38
	ldr r2, [r1]
	ldr r1, [r1, #4]
	ldr r4, [r0, #0x2c]
	str r1, [sp, #0xc]
	add r8, sp, #8
	str r2, [sp, #8]
	mov r7, #2
	ldr r2, [r8, r3, lsl #2]
	ldr r0, [r6]
	mov r1, r4
	mov r3, r7
	bl  FUN_ov16_02113f7c
	mov r1, #1
	add r0, r5, #0x3000
	str r1, [r0, #0x478]
	str r1, [sp]
	ldr r2, [r8, r1, lsl #2]
	ldr r0, [r6]
	mov r1, r4
	mov r3, r7
	bl  FUN_ov16_02113ec0
	ldr r0, _0211A858 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A850: .word 0x0211FC1C
_0211A854: .word unk_02099F38
_0211A858: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a770

	arm_func_start FUN_ov42_0211a85c
FUN_ov42_0211a85c: ; 0x0211A85C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldrb r0, [r7, #0x6d]
	cmp r0, #0
	cmpne r0, #1
	add r0, r7, #0x3000
	bne _0211A8BC
	ldr r2, [r0, #0x444]
	mov r1, #0
	eor r2, r2, #1
	str r2, [r0, #0x444]
	str r1, [sp]
	mov r1, #7
	str r1, [sp, #4]
	ldr r2, [r0, #0x444]
	mov r0, #0x88
	mul r1, r2, r0
	mov r0, r7
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov42_0211db10
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A8BC:
	ldr r3, [r0, #0x478]
	cmp r3, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0211A940 ; =0x0211FC04
	ldr r8, _0211A944 ; =0x02099F38
	ldr r2, [r1]
	ldr r1, [r1, #4]
	ldr r6, [r0, #0x2c]
	str r1, [sp, #0xc]
	add r5, sp, #8
	str r2, [sp, #8]
	mov r4, #2
	ldr r2, [r5, r3, lsl #2]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	bl  FUN_ov16_02113f7c
	mov r1, #0
	add r0, r7, #0x3000
	str r1, [r0, #0x478]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r5, r1, lsl #2]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	bl  FUN_ov16_02113ec0
	ldr r0, _0211A948 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A940: .word 0x0211FC04
_0211A944: .word unk_02099F38
_0211A948: .word unk_0209AC44
	arm_func_end FUN_ov42_0211a85c

	arm_func_start FUN_ov42_0211a94c
FUN_ov42_0211a94c: ; 0x0211A94C
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
	ldr r2, [r1, #0x444]
	mov r1, #0x88
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov42_0211db10
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov42_0211a94c

	arm_func_start FUN_ov42_0211a99c
FUN_ov42_0211a99c: ; 0x0211A99C
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
	ldr r2, [r1, #0x444]
	mov r1, #0x88
	mul r1, r2, r1
	mov r2, #0x20
	mov r3, #0x10
	bl FUN_ov42_0211db10
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov42_0211a99c

	arm_func_start FUN_ov42_0211a9ec
FUN_ov42_0211a9ec: ; 0x0211A9EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211AB14 ; =0x02099F38
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
	bl  FUN_ov16_02112724
	add r1, r10, r9, lsl #2
	add r2, r10, r8, lsl #2
	add r1, r1, #0x2000
	str r0, [r1, #0xff4]
	add r1, r2, #0x2000
	ldr r1, [r1, #0xf94]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r7
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_0211401c
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
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	str r5, [sp]
	mov r0, #0x190
	str r0, [sp, #4]
	ldr r0, _0211AB18 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	cmp r0, #0
	strneb r6, [r0, #0x10]
	strneb r6, [r0, #0xf]
	strneh r6, [r0, #0xc]
	strneb r6, [r0, #0x11]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB14: .word unk_02099F38
_0211AB18: .word unk_02099EB4
	arm_func_end FUN_ov42_0211a9ec

	arm_func_start FUN_ov42_0211ab1c
FUN_ov42_0211ab1c: ; 0x0211AB1C
	ldr r0, _0211AB2C ; =0x02099EB4
	ldr r12, _0211AB30 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211AB2C: .word unk_02099EB4
_0211AB30: .word  FUN_ov16_0210efac
	arm_func_end FUN_ov42_0211ab1c

	arm_func_start FUN_ov42_0211ab34
FUN_ov42_0211ab34: ; 0x0211AB34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211ABE8 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, r8, lsl #2
	ldr r0, _0211ABEC ; =0x02099F38
	str r5, [sp]
	add r1, r1, #0x2000
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0xff4]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ABE8: .word unk_02099EB4
_0211ABEC: .word unk_02099F38
	arm_func_end FUN_ov42_0211ab34

	arm_func_start FUN_ov42_0211abf0
FUN_ov42_0211abf0: ; 0x0211ABF0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r12, _0211AC4C ; =0x02099EB4
	mov r6, r0
	mov r3, r3, lsl #0x10
	mov r5, r1
	ldr r0, [r12]
	mov r1, r3, lsr #0x10
	mov r4, r2
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r6, r4, lsl #2
	add r1, r6, r5, lsl #2
	add r0, r0, #0x2000
	ldr r2, _0211AC50 ; =0x02099F38
	add r1, r1, #0x2000
	ldr r3, [r0, #0xf94]
	ldr r0, [r2]
	ldr r1, [r1, #0xff4]
	and r3, r3, #0xff
	mov r2, #1
	bl  FUN_ov16_021137dc
	ldmfd sp!, {r4, r5, r6, pc}
_0211AC4C: .word unk_02099EB4
_0211AC50: .word unk_02099F38
	arm_func_end FUN_ov42_0211abf0

	arm_func_start FUN_ov42_0211ac54
FUN_ov42_0211ac54: ; 0x0211AC54
	bx lr
	arm_func_end FUN_ov42_0211ac54

	arm_func_start FUN_ov42_0211ac58
FUN_ov42_0211ac58: ; 0x0211AC58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrb r0, [r5, #0x6c]
	mov r4, r1
	cmp r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AD84 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0x3000
	ldr r1, [r0, #0x400]
	cmp r1, #0
	ldreq r1, [r0, #0x41c]
	cmpeq r1, #0
	ldreq r1, [r0, #0x470]
	cmpeq r1, #0
	ldreq r1, [r0, #0x480]
	cmpeq r1, #0
	ldreq r1, [r0, #0x4c0]
	cmpeq r1, #0
	ldreq r0, [r0, #0x468]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0x6d]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211AD88 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ACEC: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211AD04 ; case 1
	b _0211AD34 ; case 2
	b _0211AD4C ; case 3
	b _0211AD68 ; case 4
	b _0211AD1C ; case 5
_0211AD04:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov42_0211ad8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD1C:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov42_0211aeb0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD34:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov42_0211aed8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD4C:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, #0
	bl FUN_ov42_0211af60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD68:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl FUN_ov42_0211af60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD84: .word unk_02099ED4
_0211AD88: .word unk_02099EB4
	arm_func_end FUN_ov42_0211ac58

	arm_func_start FUN_ov42_0211ad8c
FUN_ov42_0211ad8c: ; 0x0211AD8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r2, r8, #0x3000
	mov r7, r1
	ldr r6, [r2, #0x3f8]
	cmp r7, #0xd
	sub r4, r7, #0x10
	sub r5, r7, #0x19
	addls pc, pc, r7, lsl #2
	b _0211AE10
_0211ADB4: ; jump table
	b _0211AE10 ; case 0
	b _0211AE04 ; case 1
	b _0211AE04 ; case 2
	b _0211AE04 ; case 3
	b _0211AE04 ; case 4
	b _0211ADFC ; case 5
	b _0211AE10 ; case 6
	b _0211AE10 ; case 7
	b _0211AE10 ; case 8
	b _0211AE10 ; case 9
	b _0211AE10 ; case 10
	b _0211AE10 ; case 11
	b _0211ADEC ; case 12
	b _0211ADF4 ; case 13
_0211ADEC:
	bl FUN_ov42_0211a770
	b _0211AE10
_0211ADF4:
	bl FUN_ov42_0211a85c
	b _0211AE10
_0211ADFC:
	bl FUN_ov42_0211e448
	b _0211AE10
_0211AE04:
	mov r3, #0
	str r3, [r2, #0x450]
	bl FUN_ov42_0211e2d0
_0211AE10:
	cmp r7, #0x10
	blt _0211AE60
	cmp r7, #0x18
	bgt _0211AE60
	cmp r4, r6
	addeq r0, r8, #0x3000
	ldreq r0, [r0, #0x444]
	cmpeq r0, #0
	bne _0211AE40
	mov r0, r8
	bl FUN_ov42_0211a3f8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE40:
	mov r4, #0
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov42_0211dd9c
	add r0, r8, #0x3000
	str r4, [r0, #0x444]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE60:
	cmp r7, #0x19
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0x21
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, r6
	addeq r0, r8, #0x3000
	ldreq r0, [r0, #0x444]
	cmpeq r0, #1
	bne _0211AE90
	mov r0, r8
	bl FUN_ov42_0211a3f8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE90:
	mov r4, #1
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_ov42_0211dd9c
	add r0, r8, #0x3000
	str r4, [r0, #0x444]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov42_0211ad8c

	arm_func_start FUN_ov42_0211aeb0
FUN_ov42_0211aeb0: ; 0x0211AEB0
	stmfd sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #3
	beq _0211AED0
	cmp r1, #5
	ldmnefd sp!, {r3, pc}
	bl FUN_ov42_0211e47c
	ldmfd sp!, {r3, pc}
_0211AED0:
	bl FUN_ov42_0211e3e4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov42_0211aeb0

	arm_func_start FUN_ov42_0211aed8
FUN_ov42_0211aed8: ; 0x0211AED8
	stmfd sp!, {r3, lr}
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211AEE8: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	ldmfd sp!, {r3, pc} ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	b _0211AF50 ; case 6
	b _0211AF58 ; case 7
	b _0211AF48 ; case 8
	b _0211AF48 ; case 9
	b _0211AF28 ; case 10
	b _0211AF38 ; case 11
	b _0211AF40 ; case 12
	b _0211AF40 ; case 13
	ldmfd sp!, {r3, pc} ; case 14
	b _0211AF30 ; case 15
_0211AF28:
	bl FUN_ov42_0211a434
	ldmfd sp!, {r3, pc}
_0211AF30:
	bl FUN_ov42_0211a3f8
	ldmfd sp!, {r3, pc}
_0211AF38:
	bl FUN_ov42_0211a5e8
	ldmfd sp!, {r3, pc}
_0211AF40:
	bl FUN_ov42_0211a3f8
	ldmfd sp!, {r3, pc}
_0211AF48:
	bl FUN_ov42_0211a624
	ldmfd sp!, {r3, pc}
_0211AF50:
	bl FUN_ov42_0211a6a8
	ldmfd sp!, {r3, pc}
_0211AF58:
	bl FUN_ov42_0211a70c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov42_0211aed8

	arm_func_start FUN_ov42_0211af60
FUN_ov42_0211af60: ; 0x0211AF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r4, _0211AFF0 ; =0x02099EB4
	mov r8, r0
	mov r5, #0
	mov r7, r1
	ldr r0, [r4]
	add r1, sp, #4
	str r5, [sp, #8]
	mov r6, r2
	bl  FUN_ov16_0210f48c
	str r5, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r4]
	add r3, sp, #8
	bl  FUN_ov16_0210ecb8
	cmp r6, #0
	bne _0211AFE0
	ldrb r0, [r8, #0x6d]
	cmp r0, #0
	beq _0211AFC4
	cmp r0, #1
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AFC4:
	cmp r7, #5
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_ov42_0211e47c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AFE0:
	add r0, r8, #0x3000
	str r5, [r0, #0x4c4]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AFF0: .word unk_02099EB4
	arm_func_end FUN_ov42_0211af60

	arm_func_start FUN_ov42_0211aff4
FUN_ov42_0211aff4: ; 0x0211AFF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x6c]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211B06C
_0211B00C: ; jump table
	b _0211B030 ; case 0
	b _0211B038 ; case 1
	b _0211B040 ; case 2
	b _0211B048 ; case 3
	b _0211B050 ; case 4
	b _0211B058 ; case 5
	b _0211B06C ; case 6
	b _0211B060 ; case 7
	b _0211B068 ; case 8
_0211B030:
	bl FUN_ov42_0211bc00
	b _0211B06C
_0211B038:
	bl FUN_ov42_0211bcf0
	b _0211B06C
_0211B040:
	bl FUN_ov42_0211c1d4
	b _0211B06C
_0211B048:
	bl FUN_ov42_0211c6c0
	b _0211B06C
_0211B050:
	bl FUN_ov42_0211c750
	b _0211B06C
_0211B058:
	bl FUN_ov42_0211c874
	b _0211B06C
_0211B060:
	bl FUN_ov42_0211ca58
	b _0211B06C
_0211B068:
	bl FUN_ov42_0211ca8c
_0211B06C:
	mov r0, r4
	bl FUN_ov42_0211b1b8
	ldr r0, _0211B1A8 ; =0x02099ED4
	ldr r5, _0211B1AC ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211B0AC
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211B0B8
_0211B0AC:
	bl _ffltu
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211B0B8:
	bl FUN_0201fdac
	ldr r2, _0211B1B0 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	add r0, r4, #0x3000
	ldr r0, [r0, #0x4c0]
	cmp r0, #0
	beq _0211B0E4
	mov r0, r4
	bl FUN_ov42_0211bde4
_0211B0E4:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x468]
	cmp r0, #0
	beq _0211B0FC
	mov r0, r4
	bl FUN_ov42_0211bf10
_0211B0FC:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x400]
	cmp r0, #0
	beq _0211B114
	mov r0, r4
	bl FUN_ov42_0211dea8
_0211B114:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x41c]
	cmp r0, #0
	beq _0211B12C
	mov r0, r4
	bl FUN_ov42_0211df58
_0211B12C:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x470]
	cmp r0, #0
	beq _0211B144
	mov r0, r4
	bl FUN_ov42_0211e8b8
_0211B144:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x480]
	cmp r0, #0
	beq _0211B15C
	mov r0, r4
	bl FUN_ov42_0211ed0c
_0211B15C:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x48c]
	cmp r0, #0
	beq _0211B174
	mov r0, r4
	bl FUN_ov42_0211f2b4
_0211B174:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x4a4]
	cmp r0, #0
	beq _0211B18C
	mov r0, r4
	bl FUN_ov42_0211f400
_0211B18C:
	add r0, r4, #0x3000
	ldr r0, [r0, #0x488]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov42_0211ef38
	ldmfd sp!, {r3, r4, r5, pc}
_0211B1A8: .word unk_02099ED4
_0211B1AC: .word unk_0209A110
_0211B1B0: .word unk_02099F58
	arm_func_end FUN_ov42_0211aff4

	arm_func_start FUN_ov42_0211b1b4
FUN_ov42_0211b1b4: ; 0x0211B1B4
	bx lr
	arm_func_end FUN_ov42_0211b1b4

	arm_func_start FUN_ov42_0211b1b8
FUN_ov42_0211b1b8: ; 0x0211B1B8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211B224 ; =0x0211FC0C
	mov r4, r0
	ldr r12, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r4, #0x68]
	add r2, sp, #0
	str r12, [sp]
	str r3, [sp, #4]
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4, #8]
	bl FUN_ov42_0211e02c
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
_0211B224: .word 0x0211FC0C
	arm_func_end FUN_ov42_0211b1b8

	arm_func_start FUN_ov42_0211b228
FUN_ov42_0211b228: ; 0x0211B228
	mov r2, #5
	strb r1, [r0, #0x6d]
	strb r2, [r0, #0x6c]
	bx lr
	arm_func_end FUN_ov42_0211b228

	arm_func_start FUN_ov42_0211b238
FUN_ov42_0211b238: ; 0x0211B238
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x138
	ldr r5, _0211B6BC ; =0x0211FC64
	add r4, sp, #8
	mov r10, r0
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r6, sp, #0x68
	mov r7, #0
	mov r0, r6
	mov r1, r7
	mov r2, #0xd0
	bl MI_CpuFill8
	add r5, sp, #0x48
	mov r1, r7
	mov r0, r5
	mov r2, #0x20
	bl MI_CpuFill8
	mov r4, #0x580
	add r0, r10, #0x7c
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	add r0, r10, #0x1fc
	mov r2, r4
	add r0, r0, #0x400
	mov r1, r7
	bl MI_CpuFill8
	add r0, r10, #0x37c
	add r0, r0, #0x800
	mov r1, r7
	mov r2, #0x23c0
	bl MI_CpuFill8
	add r0, r10, #0x2000
	strb r7, [r0, #0xf3c]
	str r7, [r0, #0xf48]
	str r7, [sp]
	ldr r0, _0211B6C0 ; =0x0209BA20
	mov r2, r5
	mov r1, r7
	mov r3, #0x10
	str r7, [sp, #4]
	bl FUN_0204b540
	mov r5, r0
	add r0, r10, #0x33c
	add r4, r0, #0x2c00
	add r8, r10, #0x2000
_0211B30C:
	mov r0, r7
	bl  FUN_ov16_020efa80
	movs r9, r0
	beq _0211B348
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211B348
	mov r0, r9
	bl FUN_0206cbf8
	ldrb r1, [r8, #0xf3c]
	mov r1, r1, lsl #1
	strh r0, [r6, r1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0211B348:
	add r7, r7, #1
	cmp r7, #0x64
	blt _0211B30C
	mov r6, #0
_0211B358:
	add r0, sp, #8
	ldr r4, [r0, r6, lsl #2]
	ldr r11, _0211B6C0 ; =0x0209BA20
	mov r2, r4
	mov r0, r11
	mov r1, #2
	bl FUN_0204dea4
	mov r8, #0
	mov r1, r8
	bl  FUN_ov16_020efa9c
	movs r7, r0
	beq _0211B46C
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211B46C
	mov r0, #0x58
	mul r9, r6, r0
	add r0, r10, #0x1fc
	add r1, r0, #0x400
	add r0, r7, #0x1c
	add r1, r1, r9
	mov r2, #0x10
	bl MI_CpuCopy8
	mov r0, r11
	add r9, r10, r9
	mov r1, r7
	mov r2, #0x25
	mov r3, r8
	bl FUN_0204f02c
	str r0, [r9, #0x60c]
	mov r0, r7
	bl FUN_0206cbf8
	add r1, r9, #0x600
	strh r0, [r1, #0x10]
	mov r0, r7
	bl FUN_0206cc00
	add r1, r9, #0x600
	strh r0, [r1, #0x12]
	mov r0, r11
	mov r1, r7
	bl FUN_0204b754
	add r1, r9, #0x600
	strh r0, [r1, #0x14]
	mov r0, r7
	bl FUN_0204fb60
	add r1, r9, #0x600
	strh r0, [r1, #0x16]
	str r4, [r9, #0x618]
	mov r0, r7
	bl FUN_0206d714
	strb r0, [r9, #0x621]
	mov r0, #1
	cmp r5, #0
	strb r0, [r9, #0x622]
	ble _0211B46C
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r0, r0, #0x600
	ldrh r2, [r0, #0x10]
	add r1, sp, #0x48
_0211B448:
	mov r0, r8, lsl #1
	ldrh r0, [r1, r0]
	cmp r2, r0
	moveq r0, #1
	streqb r0, [r9, #0x623]
	beq _0211B46C
	add r8, r8, #1
	cmp r8, r5
	blt _0211B448
_0211B46C:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211B358
	add r0, r10, #0x2000
	ldrb r0, [r0, #0xf3c]
	mov r8, #0
	cmp r0, #0
	ble _0211B688
_0211B48C:
	mov r1, r8, lsl #1
	add r0, sp, #0x68
	ldrh r0, [r0, r1]
	mov r9, #0
	mov r1, r9
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _0211B674
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211B674
	mov r0, #0x58
	mul r6, r8, r0
	add r0, r10, #0x37c
	add r1, r0, #0x800
	add r0, r4, #0x1c
	add r1, r1, r6
	mov r2, #0x10
	bl MI_CpuCopy8
	ldr r11, _0211B6C0 ; =0x0209BA20
	mov r1, r4
	add r7, r10, r6
	mov r0, r11
	mov r2, #0x25
	mov r3, r9
	bl FUN_0204f02c
	str r0, [r7, #0xb8c]
	mov r1, r8, lsl #1
	add r0, sp, #0x68
	ldrh r2, [r0, r1]
	add r1, r7, #0xb00
	mov r0, r4
	strh r2, [r1, #0x90]
	bl FUN_0206cc00
	add r1, r7, #0xb00
	strh r0, [r1, #0x92]
	mov r0, r11
	mov r1, r4
	bl FUN_0204b754
	add r1, r7, #0xb00
	strh r0, [r1, #0x94]
	mov r0, r4
	bl FUN_0204fb60
	add r1, r7, #0xb00
	strh r0, [r1, #0x96]
	mov r0, r4
	bl FUN_0206d714
	add r1, r10, #0x3a4
	add r1, r1, #0x800
	strb r0, [r7, #0xba1]
	mov r0, #1
	add r1, r1, r6
	mov r6, #0x20
	strb r0, [r7, #0xba2]
	add r0, r4, #0x2c
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r11
	mov r1, r4
	mov r2, #0x1e
	mov r3, r9
	bl FUN_0204f02c
	add r1, r7, #0xb00
	strh r0, [r1, #0xc4]
	mov r0, r11
	mov r1, r4
	mov r2, #0x1f
	mov r3, r9
	bl FUN_0204f02c
	add r1, r7, #0xb00
	strh r0, [r1, #0xc6]
	mov r0, r11
	mov r1, r4
	mov r2, #0x21
	mov r3, r9
	bl FUN_0204f02c
	add r1, r7, #0xb00
	strh r0, [r1, #0xc8]
	mov r2, r6
	mov r0, r11
	mov r1, r4
	mov r3, r9
	bl FUN_0204f02c
	add r1, r7, #0xb00
	strh r0, [r1, #0xca]
	mov r0, r11
	mov r1, r4
	mov r2, #0x22
	mov r3, r9
	bl FUN_0204f02c
	add r1, r7, #0xb00
	strh r0, [r1, #0xcc]
	mov r0, r11
	mov r1, r4
	mov r2, #0x24
	mov r3, r9
	bl FUN_0204f02c
	add r2, r7, #0xb00
	strh r0, [r2, #0xce]
	mov r1, r4
	mov r0, r11
	mov r2, #0x23
	mov r3, r9
	bl FUN_0204f02c
	add r1, r7, #0xb00
	cmp r5, #0
	strh r0, [r1, #0xd0]
	ble _0211B674
	mov r0, #0x58
	mla r0, r8, r0, r10
	add r0, r0, #0xb00
	ldrh r2, [r0, #0x90]
	add r1, sp, #0x48
_0211B650:
	mov r0, r9, lsl #1
	ldrh r0, [r1, r0]
	cmp r2, r0
	moveq r0, #1
	streqb r0, [r7, #0xba3]
	beq _0211B674
	add r9, r9, #1
	cmp r9, r5
	blt _0211B650
_0211B674:
	add r0, r10, #0x2000
	ldrb r0, [r0, #0xf3c]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B48C
_0211B688:
	add r0, r10, #0x1fc
	add r0, r0, #0x400
	add r1, r10, #0x7c
	mov r2, #0x580
	bl MI_CpuCopy8
	ldr r0, _0211B6C4 ; =0x02099F44
	ldr r0, [r0]
	bl  FUN_ov131_0213ad10
	mov r1, r0
	mov r0, r10
	bl FUN_ov42_0211b6c8
	add sp, sp, #0x138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B6BC: .word 0x0211FC64
_0211B6C0: .word unk_0209BA20
_0211B6C4: .word unk_02099F44
	arm_func_end FUN_ov42_0211b238

	arm_func_start FUN_ov42_0211b6c8
FUN_ov42_0211b6c8: ; 0x0211B6C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	mov r9, r0
	add r0, r9, #0x2000
	ldrb r0, [r0, #0xf3c]
	movs r5, r1
	mov r4, #0x58
	str r0, [sp]
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	add r0, sp, #8
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	cmp r5, #1
	bne _0211B7C8
	ldr r0, [sp]
	cmp r0, #0
	addle sp, sp, #0x60
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B71C:
	ldr r0, [sp]
	mov r7, #0
	sub r11, r0, #1
	cmp r11, #0
	ble _0211B7B0
	add r0, r9, #0x37c
	add r6, r0, #0x800
	add r5, sp, #8
_0211B73C:
	mul r10, r7, r4
	add r0, r9, r10
	ldrb r3, [r0, #0xba5]
	ldrb r2, [r0, #0xbfd]
	ldrb r1, [r0, #0xba7]
	ldrb r0, [r0, #0xbff]
	cmp r3, r2
	ble _0211B760
	b _0211B76C
_0211B760:
	bne _0211B7A4
	cmp r1, r0
	ble _0211B7A4
_0211B76C:
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
_0211B7A4:
	add r7, r7, #1
	cmp r7, r11
	blt _0211B73C
_0211B7B0:
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B71C
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B7C8:
	cmp r5, #2
	bne _0211B8CC
	ldr r0, [sp]
	cmp r0, #0
	addle sp, sp, #0x60
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B7E0:
	ldr r0, [sp]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0
	ble _0211B8B4
	add r0, r9, #0x37c
	add r10, r0, #0x800
	add r7, sp, #8
_0211B804:
	mul r5, r6, r4
	add r3, r9, r5
	add r11, r3, #0xb00
	ldrsb r2, [r11, #0x7c]
	ldrb r1, [r3, #0xb7d]
	ldrsb r0, [r11, #0xd4]
	mov r2, r2, lsl #0x18
	orr r2, r1, r2, lsr #16
	mov r12, r0, lsl #0x18
	ldrb r1, [r3, #0xbd5]
	ldrsb r0, [r11, #0x7e]
	ldrsb r11, [r11, #0xd6]
	orr r1, r1, r12, lsr #16
	mov r0, r0, lsl #0x18
	mov r11, r11, lsl #0x18
	cmp r2, r1
	ldrb r12, [r3, #0xb7f]
	ldrb r3, [r3, #0xbd7]
	orr r12, r12, r0, lsr #16
	orr r0, r3, r11, lsr #16
	ble _0211B85C
	b _0211B86C
_0211B85C:
	cmp r2, r1
	bne _0211B8A4
	cmp r12, r0
	ble _0211B8A4
_0211B86C:
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
_0211B8A4:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0211B804
_0211B8B4:
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B7E0
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8CC:
	ldr r0, [sp]
	mov r0, r0, lsl #2
	bl operator_new_array
	mov r7, r0
	cmp r5, #0xa
	addls pc, pc, r5, lsl #2
	b _0211BA8C
_0211B8E8: ; jump table
	b _0211BA8C ; case 0
	b _0211BA8C ; case 1
	b _0211BA8C ; case 2
	b _0211B914 ; case 3
	b _0211B940 ; case 4
	b _0211B970 ; case 5
	b _0211B9A0 ; case 6
	b _0211B9D0 ; case 7
	b _0211BA00 ; case 8
	b _0211BA30 ; case 9
	b _0211BA60 ; case 10
_0211B914:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211B920:
	mla r0, r8, r4, r9
	ldr r0, [r0, #0xb8c]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B920
	b _0211BA8C
_0211B940:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211B94C:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xc4]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B94C
	b _0211BA8C
_0211B970:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211B97C:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xc6]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B97C
	b _0211BA8C
_0211B9A0:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211B9AC:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xc8]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B9AC
	b _0211BA8C
_0211B9D0:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211B9DC:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xca]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B9DC
	b _0211BA8C
_0211BA00:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211BA0C:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xcc]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211BA0C
	b _0211BA8C
_0211BA30:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211BA3C:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xce]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211BA3C
	b _0211BA8C
_0211BA60:
	ldr r0, [sp]
	cmp r0, #0
	ble _0211BA8C
_0211BA6C:
	mla r0, r8, r4, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0xd0]
	str r0, [r7, r8, lsl #2]
	ldr r0, [sp]
	add r8, r8, #1
	cmp r8, r0
	blt _0211BA6C
_0211BA8C:
	ldr r0, [sp]
	mov r11, #0
	cmp r0, #0
	ble _0211BB38
	add r0, r9, #0x37c
	add r5, r0, #0x800
	ldr r0, [sp]
	add r10, sp, #8
	sub r6, r0, #1
_0211BAB0:
	mov r8, #0
	cmp r6, #0
	ble _0211BB28
_0211BABC:
	add r0, r7, r8, lsl #2
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	bge _0211BB1C
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
_0211BB1C:
	add r8, r8, #1
	cmp r8, r6
	blt _0211BABC
_0211BB28:
	ldr r0, [sp]
	add r11, r11, #1
	cmp r11, r0
	blt _0211BAB0
_0211BB38:
	mov r0, r7
	bl operator_delete_array
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov42_0211b6c8

	arm_func_start FUN_ov42_0211bb48
FUN_ov42_0211bb48: ; 0x0211BB48
	bx lr
	arm_func_end FUN_ov42_0211bb48

	arm_func_start FUN_ov42_0211bb4c
FUN_ov42_0211bb4c: ; 0x0211BB4C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	cmp r1, #2
	blo _0211BBB8
	mov r7, #0
	add r0, r9, #0x354
	add r6, r0, #0x2c00
	mov r5, #1
	mov r4, r7
	mov r10, #0xc
_0211BB74:
	mul r8, r7, r10
	mov r1, r5
	add r0, r6, r8
	bl  FUN_ov16_020f338c
	add r0, r6, r8
	bl  FUN_ov16_020f33fc
	add r0, r9, r8
	add r7, r7, #1
	str r4, [r6, r8]
	add r0, r0, #0x2000
	str r4, [r0, #0xf58]
	strb r4, [r0, #0xf5c]
	strb r4, [r0, #0xf5d]
	strb r4, [r0, #0xf5e]
	cmp r7, #2
	blt _0211BB74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BBB8:
	mov r0, #0xc
	mul r5, r1, r0
	add r0, r9, #0x354
	add r4, r0, #0x2c00
	add r0, r4, r5
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r5
	bl  FUN_ov16_020f33fc
	add r0, r9, r5
	mov r1, #0
	str r1, [r4, r5]
	add r0, r0, #0x2000
	str r1, [r0, #0xf58]
	strb r1, [r0, #0xf5c]
	strb r1, [r0, #0xf5d]
	strb r1, [r0, #0xf5e]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov42_0211bb4c

	arm_func_start FUN_ov42_0211bc00
FUN_ov42_0211bc00: ; 0x0211BC00
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x354
	ldr r0, _0211BC34 ; =0x0212002C
	add r1, r1, #0x2c00
	bl  FUN_ov16_020f3054
	add r1, r4, #0xf60
	ldr r0, _0211BC38 ; =0x02120044
	add r1, r1, #0x2000
	bl  FUN_ov16_020f3054
	mov r0, #1
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
_0211BC34: .word ov42_0212002C
_0211BC38: .word ov42_02120044
	arm_func_end FUN_ov42_0211bc00

	arm_func_start FUN_ov42_0211bc3c
FUN_ov42_0211bc3c: ; 0x0211BC3C
	stmfd sp!, {r4, lr}
	add r0, r0, #0x36c
	add r0, r0, #0x2c00
	add r4, r0, r1, lsl #3
	mov r0, r4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r0, r4
	mov r1, #0x10
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211bc3c

	arm_func_start FUN_ov42_0211bc6c
FUN_ov42_0211bc6c: ; 0x0211BC6C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x37c
	add r0, r0, #0x2c00
	add r5, r0, r1, lsl #3
	mov r4, #8
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov42_0211bc6c

	arm_func_start FUN_ov42_0211bca0
FUN_ov42_0211bca0: ; 0x0211BCA0
	stmfd sp!, {r4, lr}
	add r0, r0, #0x36c
	add r0, r0, #0x2c00
	add r4, r0, r1, lsl #3
	mov r0, r4
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	mov r0, r4
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211bca0

	arm_func_start FUN_ov42_0211bcc8
FUN_ov42_0211bcc8: ; 0x0211BCC8
	stmfd sp!, {r4, lr}
	add r0, r0, #0x37c
	add r0, r0, #0x2c00
	add r4, r0, r1, lsl #3
	mov r0, r4
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	mov r0, r4
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211bcc8

	arm_func_start FUN_ov42_0211bcf0
FUN_ov42_0211bcf0: ; 0x0211BCF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r0, r10, #0x354
	add r0, r0, #0x2c00
	mov r1, #2
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	add r0, r10, #0x36c
	ldr r11, _0211BDDC ; =0x02120064
	add r6, r0, #0x2c00
	add r5, r10, #0x2000
	mov r9, r8
	mov r7, #1
	mov r4, #0x58
_0211BD38:
	mla r0, r8, r4, r10
	str r9, [sp]
	str r9, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0x600
	ldr r3, [r5, #0xf8c]
	ldrh r2, [r0, #0x12]
	ldr r0, [r5, #0xf54]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl  FUN_ov16_020f55b4
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211BD38
	add r0, r10, #0x37c
	ldr r11, _0211BDE0 ; =0x0212007C
	add r6, r0, #0x2c00
	add r5, r10, #0x2000
	mov r8, #0
	mov r7, #1
	mov r4, #0x58
_0211BD90:
	mla r0, r9, r4, r10
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0xb00
	ldr r3, [r5, #0xf90]
	ldrh r2, [r0, #0x92]
	ldr r0, [r5, #0xf54]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl  FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #8
	blt _0211BD90
	mov r0, #2
	strb r0, [r10, #0x6c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDDC: .word ov42_02120064
_0211BDE0: .word ov42_0212007C
	arm_func_end FUN_ov42_0211bcf0

	arm_func_start FUN_ov42_0211bde4
FUN_ov42_0211bde4: ; 0x0211BDE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r1, r10, #0x3000
	ldr r1, [r1, #0x4c0]
	cmp r1, #1
	beq _0211BE10
	cmp r1, #2
	beq _0211BE9C
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE10:
	add r2, r10, #0x2000
	ldr r1, [r2, #0xf8c]
	eor r1, r1, #1
	str r1, [r2, #0xf8c]
	bl FUN_ov42_0211bca0
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf8c]
	mov r0, r10
	bl FUN_ov42_0211bc3c
	mov r9, #0
	add r0, r10, #0x36c
	ldr r11, _0211BF0C ; =0x02120094
	add r6, r0, #0x2c00
	add r5, r10, #0x2000
	mov r8, r9
	mov r7, #1
	mov r4, #0x58
_0211BE54:
	mla r0, r9, r4, r10
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0x600
	ldr r3, [r5, #0xf8c]
	ldrh r2, [r0, #0x12]
	ldr r0, [r5, #0xf54]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl  FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211BE54
	add r0, r10, #0x3000
	mov r1, #2
	str r1, [r0, #0x4c0]
_0211BE9C:
	add r1, r10, #0x2000
	add r0, r10, #0x36c
	ldr r1, [r1, #0xf8c]
	add r0, r0, #0x2c00
	add r0, r0, r1, lsl #3
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf8c]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov42_0211bca0
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf8c]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov42_0211bc3c
	mov r0, r10
	bl FUN_ov42_0211d8ac
	mov r0, r10
	bl FUN_ov42_0211cb30
	add r0, r10, #0x3000
	mov r1, #0
	str r1, [r0, #0x4c0]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF0C: .word ov42_02120094
	arm_func_end FUN_ov42_0211bde4

	arm_func_start FUN_ov42_0211bf10
FUN_ov42_0211bf10: ; 0x0211BF10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r1, r10, #0x3000
	ldr r2, [r1, #0x464]
	ldr r1, [r1, #0x468]
	mov r9, r2, lsl #3
	cmp r1, #1
	add r8, r9, #8
	beq _0211BF48
	cmp r1, #2
	beq _0211BFD4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF48:
	add r2, r10, #0x2000
	ldr r1, [r2, #0xf90]
	eor r1, r1, #1
	str r1, [r2, #0xf90]
	bl FUN_ov42_0211bcc8
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf90]
	mov r0, r10
	bl FUN_ov42_0211bc6c
	cmp r9, r8
	bge _0211BFC8
	add r0, r10, #0x37c
	add r5, r0, #0x2c00
	add r4, r10, #0x2000
	mov r7, #0
	mov r6, #1
	mov r11, #0x58
_0211BF8C:
	mla r0, r9, r11, r10
	str r7, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	add r0, r0, #0xb00
	ldr r3, [r4, #0xf90]
	ldrh r2, [r0, #0x92]
	ldr r0, [r4, #0xf54]
	ldr r1, _0211C05C ; =0x021200AC
	add r3, r5, r3, lsl #3
	bl  FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, r8
	blt _0211BF8C
_0211BFC8:
	add r0, r10, #0x3000
	mov r1, #2
	str r1, [r0, #0x468]
_0211BFD4:
	add r1, r10, #0x2000
	add r0, r10, #0x37c
	ldr r1, [r1, #0xf90]
	add r0, r0, #0x2c00
	add r0, r0, r1, lsl #3
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf90]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov42_0211bcc8
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf90]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov42_0211bcc8
	mov r0, r10
	bl FUN_ov42_0211e804
	mov r0, r10
	bl FUN_ov42_0211e718
	mov r0, r10
	bl FUN_ov42_0211d964
	mov r0, r10
	bl FUN_ov42_0211d0b8
	mov r0, r10
	bl FUN_ov42_0211ac54
	add r0, r10, #0x3000
	mov r1, #0
	str r1, [r0, #0x468]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C05C: .word ov42_021200AC
	arm_func_end FUN_ov42_0211bf10

	arm_func_start FUN_ov42_0211c060
FUN_ov42_0211c060: ; 0x0211C060
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r1
	mov r0, r2
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206cc00
	add r1, r6, #0x36c
	add r1, r1, #0x2c00
	add r1, r1, r5, lsl #3
	bl  FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov42_0211c060

	arm_func_start FUN_ov42_0211c0a4
FUN_ov42_0211c0a4: ; 0x0211C0A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r1
	mov r0, r2
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206cc00
	add r1, r6, #0x37c
	add r1, r1, #0x2c00
	add r1, r1, r5, lsl #3
	bl  FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov42_0211c0a4

	arm_func_start FUN_ov42_0211c0e8
FUN_ov42_0211c0e8: ; 0x0211C0E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x394
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x2c00
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r5, #0x3f4
	mov r1, r4
	add r0, r0, #0x2c00
	mov r2, #0x44
	bl MI_CpuFill8
	ldr r0, _0211C12C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211C12C: .word unk_02099F38
	arm_func_end FUN_ov42_0211c0e8

	arm_func_start FUN_ov42_0211c130
FUN_ov42_0211c130: ; 0x0211C130
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211C1D0 ; =0x02099F38
	b _0211C174
_0211C148:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	ldr r1, [r0, #0xff4]
	cmp r1, #0
	beq _0211C170
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	str r7, [r0, #0xff4]
_0211C170:
	add r4, r4, #1
_0211C174:
	cmp r4, #0x11
	blt _0211C148
	mov r4, #0
	mov r7, r4
	ldr r6, _0211C1D0 ; =0x02099F38
	b _0211C1B8
_0211C18C:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	ldr r1, [r0, #0xf94]
	cmp r1, #0
	beq _0211C1B4
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	str r7, [r0, #0xf94]
_0211C1B4:
	add r4, r4, #1
_0211C1B8:
	cmp r4, #0x18
	blt _0211C18C
	ldr r0, _0211C1D0 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C1D0: .word unk_02099F38
	arm_func_end FUN_ov42_0211c130

	arm_func_start FUN_ov42_0211c1d4
FUN_ov42_0211c1d4: ; 0x0211C1D4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xcc
	mov r4, r0
	add r1, r4, #0x2000
	add r0, r4, #0x36c
	ldr r1, [r1, #0xf8c]
	add r0, r0, #0x2c00
	add r0, r0, r1, lsl #3
	bl  FUN_ov16_020f5868
	add r2, r4, #0x2000
	add r1, r4, #0x37c
	ldr r2, [r2, #0xf90]
	add r1, r1, #0x2c00
	mov r5, r0
	add r0, r1, r2, lsl #3
	bl  FUN_ov16_020f5868
	cmp r5, #0
	cmpeq r0, #0
	addne sp, sp, #0xcc
	ldmnefd sp!, {r4, r5, pc}
	ldr r5, _0211C288 ; =0x0211FCE4
	add lr, sp, #4
	mov r12, #0xc
_0211C230:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211C230
	ldmia r5, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0x2000
	add r3, r4, #0x394
	ldr r1, [r0, #0xf60]
	ldr r0, _0211C28C ; =0x021200C4
	add r2, sp, #4
	add r3, r3, #0x2c00
	bl  FUN_ov16_020f5450
	mov r0, r4
	mov r1, #1
	bl FUN_ov42_0211bb4c
	mov r0, #3
	strb r0, [r4, #0x6c]
	add sp, sp, #0xcc
	ldmfd sp!, {r4, r5, pc}
_0211C288: .word 0x0211FCE4
_0211C28C: .word ov42_021200C4
	arm_func_end FUN_ov42_0211c1d4

	arm_func_start FUN_ov42_0211c290
FUN_ov42_0211c290: ; 0x0211C290
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	add r0, r0, #0x2000
	ldr r3, [r0, #0xf94]
	ldr r6, _0211C350 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl  FUN_ov16_0211401c
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
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C350: .word unk_02099F38
	arm_func_end FUN_ov42_0211c290

	arm_func_start FUN_ov42_0211c354
FUN_ov42_0211c354: ; 0x0211C354
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r6, r0
	mov r10, r1
	mov r11, #4
	mov r9, r2
	add r0, sp, #0x20
	mov r1, r4
	mov r2, r11
	ldr r7, [sp, #0x48]
	mov r8, r3
	str r4, [sp, #0x18]
	mov r5, #0x80
	bl MI_CpuFill8
	mov r2, r11
	add r0, sp, #0x1c
	mov r1, r4
	bl MI_CpuFill8
	str r4, [r7]
	ldrb r0, [r6, #0x6d]
	add r2, sp, #0x20
	add r3, sp, #0x1c
	cmp r0, #3
	moveq r5, #0x100
	mov r0, r5
	mov r1, #0x40
	bl FUN_02054070
	ldr r4, _0211C4FC ; =0x02099F38
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r4]
	bl FUN_02059630
	mov r11, #0
	str r0, [r7]
	mov r1, r0
	ldr r0, [r4]
	mov r2, r11
	mov r3, r11
	bl FUN_02059038
	ldr r1, [r7]
	ldr r0, [r4]
	str r11, [sp, #0x14]
	add r2, sp, #0x14
	add r3, sp, #0x18
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r7]
	bl  FUN_ov16_02111438
	mov r6, r0
	ldr r0, [r4]
	ldr r1, [r7]
	bl  FUN_ov16_02111458
	mov r5, r0
	ldr r0, [r8]
	mov r1, r9
	add r2, r0, #1
	str r2, [r8]
	ldr r3, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	ldr r2, [r8]
	mov r1, r9
	mov r3, r11
	bl  FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r6, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r8]
	mov r1, r9
	bl  FUN_ov16_02113d08
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r1, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r8]
	mov r1, r9
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r1, [sp, #0x54]
	ldr r0, [r4]
	mov r3, r1, lsl #0x10
	ldr r2, [r8]
	mov r1, r9
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r2, #1
	stmia sp, {r2, r11}
	str r11, [sp, #8]
	str r11, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r7]
	mov r0, r10
	mov r3, r2
	bl  FUN_ov16_020f2304
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C4FC: .word unk_02099F38
	arm_func_end FUN_ov42_0211c354

	arm_func_start FUN_ov42_0211c500
FUN_ov42_0211c500: ; 0x0211C500
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r5, _0211C6B4 ; =0x00007FFF
	ldr r4, _0211C6B8 ; =0x02099F38
	mov r6, #0
	ldr r8, _0211C6BC ; =0x00004210
	b _0211C538
_0211C51C:
	add r0, r7, r6, lsl #2
	add r1, r0, #0x2000
	ldr r0, [r4]
	ldr r1, [r1, #0xff4]
	mov r2, r8
	bl  FUN_ov16_02114204
	add r6, r6, #1
_0211C538:
	cmp r6, #0x11
	blt _0211C51C
	mov r6, #0
	ldr r8, _0211C6BC ; =0x00004210
	b _0211C568
_0211C54C:
	add r0, r7, r6, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x38]
	mov r2, r8
	bl  FUN_ov16_02114204
	add r6, r6, #1
_0211C568:
	cmp r6, #0x10
	blt _0211C54C
	mov r6, #0
	ldr r8, _0211C6BC ; =0x00004210
	b _0211C598
_0211C57C:
	add r0, r7, r6, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0xb8]
	mov r2, r8
	bl  FUN_ov16_02114204
	add r6, r6, #1
_0211C598:
	cmp r6, #0x78
	blt _0211C57C
	add r1, r7, #0x2000
	ldr r6, _0211C6BC ; =0x00004210
	ldr r0, [r4]
	ldr r1, [r1, #0xf4c]
	mov r2, r6
	bl  FUN_ov16_02114204
	add r1, r7, #0x2000
	ldr r0, [r4]
	ldr r1, [r1, #0xf50]
	mov r2, r6
	bl  FUN_ov16_02114204
	ldrb r0, [r7, #0x6d]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C5DC: ; jump table
	b _0211C5EC ; case 0
	b _0211C5EC ; case 1
	b _0211C5EC ; case 2
	b _0211C69C ; case 3
_0211C5EC:
	mov r6, #0
	b _0211C610
_0211C5F4:
	add r0, r7, r6, lsl #2
	add r1, r0, #0x2000
	ldr r0, [r4]
	ldr r1, [r1, #0xff4]
	mov r2, r5
	bl  FUN_ov16_02114204
	add r6, r6, #1
_0211C610:
	cmp r6, #0x11
	blt _0211C5F4
	mov r6, #0
	b _0211C63C
_0211C620:
	add r0, r7, r6, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x38]
	mov r2, r5
	bl  FUN_ov16_02114204
	add r6, r6, #1
_0211C63C:
	cmp r6, #0x10
	blt _0211C620
	mov r6, #0
	b _0211C668
_0211C64C:
	add r0, r7, r6, lsl #3
	add r1, r0, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0xb8]
	mov r2, r5
	bl  FUN_ov16_02114204
	add r6, r6, #1
_0211C668:
	cmp r6, #0x78
	blt _0211C64C
	add r1, r7, #0x2000
	ldr r0, [r4]
	ldr r1, [r1, #0xf4c]
	mov r2, r5
	bl  FUN_ov16_02114204
	add r1, r7, #0x2000
	ldr r0, [r4]
	ldr r1, [r1, #0xf50]
	mov r2, r5
	bl  FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C69C:
	add r1, r7, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x2c]
	ldr r2, _0211C6B4 ; =0x00007FFF
	bl  FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C6B4: .word 0x00007FFF
_0211C6B8: .word unk_02099F38
_0211C6BC: .word 0x00004210
	arm_func_end FUN_ov42_0211c500

	arm_func_start FUN_ov42_0211c6c0
FUN_ov42_0211c6c0: ; 0x0211C6C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211C74C ; =0x02099F38
	b _0211C738
_0211C6D8:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	ldr r1, [r0, #0xf94]
	cmp r1, #0
	beq _0211C734
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	ldr r1, [r0, #0xf94]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211C734
	add r0, r5, r4, lsl #2
	add r0, r0, #0x2000
	ldr r1, [r0, #0xf94]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211C734:
	add r4, r4, #1
_0211C738:
	cmp r4, #0x18
	blt _0211C6D8
	mov r0, #4
	strb r0, [r5, #0x6c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C74C: .word unk_02099F38
	arm_func_end FUN_ov42_0211c6c0

	arm_func_start FUN_ov42_0211c750
FUN_ov42_0211c750: ; 0x0211C750
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov42_0211c7c4
	mov r0, r4
	bl FUN_ov42_0211e0e4
	mov r0, r4
	bl FUN_ov42_0211daa0
	mov r0, r4
	bl FUN_ov42_0211e5d8
	mov r0, r4
	bl FUN_ov42_0211e718
	mov r0, r4
	bl FUN_ov42_0211e858
	mov r0, r4
	bl FUN_ov42_0211e930
	mov r0, r4
	bl FUN_ov42_0211ea10
	mov r0, r4
	bl FUN_ov42_0211f0bc
	mov r0, r4
	bl FUN_ov42_0211cb30
	mov r0, r4
	bl FUN_ov42_0211d0b8
	mov r0, r4
	mov r1, #0
	bl FUN_ov42_0211da8c
	mov r0, #5
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211c750

	arm_func_start FUN_ov42_0211c7c4
FUN_ov42_0211c7c4: ; 0x0211C7C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	ldr r1, _0211C86C ; =0x02099F38
	mov r7, r0
	mov r6, #1
	ldr r0, [r1]
	mov r2, r6
	mov r1, #2
	bl  FUN_ov16_02112724
	mov r4, #0
	mov r5, r0
	add r8, sp, #0x14
	str r4, [sp, #0x14]
	add r0, r7, #0x2000
	str r5, [r0, #0xff4]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r9, #0x1f4
	str r9, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r2, r8
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov42_0211c290
	mov r1, r5
	ldr r5, _0211C870 ; =0x020A1640
	sub r12, r9, #1
	ldrb r5, [r5, #0x22]
	mov r0, r7
	mov r2, r8
	add r5, r5, #1
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r12, [sp, #0xc]
	mov r3, #0x16
	str r6, [sp, #0x10]
	bl FUN_ov42_0211c290
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C86C: .word unk_02099F38
_0211C870: .word unk_020A1640
	arm_func_end FUN_ov42_0211c7c4

	arm_func_start FUN_ov42_0211c874
FUN_ov42_0211c874: ; 0x0211C874
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211CA54 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	mov r6, #1
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x6d]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211CA30
_0211C8A4: ; jump table
	b _0211C8B4 ; case 0
	b _0211C95C ; case 1
	b _0211CA04 ; case 2
	b _0211CA10 ; case 3
_0211C8B4:
	mov r0, r4
	bl FUN_ov42_0211ec70
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	cmpne r0, #0x1e
	mov r5, #0xa
	bne _0211C900
	mov r7, #0xc
	mov r0, r4
	mov r1, r7
	mov r3, r5
	mov r2, #0xd
	bl FUN_ov42_0211abf0
	mov r0, r4
	mov r1, r7
	mov r2, #0
	mov r3, #1
	b _0211C910
_0211C900:
	mov r0, r4
	mov r1, #0xc
	mov r2, #0
	mov r3, r6
_0211C910:
	str r5, [sp]
	bl FUN_ov42_0211ab34
	mov r5, #0
	mov r7, #0xb
	mov r0, r4
	mov r2, r5
	mov r3, r6
	mov r1, #0xd
	str r7, [sp]
	bl FUN_ov42_0211ab34
	mov r1, #0xf
	mov r0, r4
	mov r2, r5
	mov r3, r6
	str r1, [sp]
	bl FUN_ov42_0211ab34
	mov r0, r4
	bl FUN_ov42_0211f22c
	b _0211CA30
_0211C95C:
	mov r5, #4
	add r1, r4, #0x3000
	str r6, [r1, #0x48c]
	mov r1, #0xf
	mov r0, r4
	mov r3, r5
	mov r2, #3
	str r1, [sp]
	bl FUN_ov42_0211ab34
	mov r1, #0xb
	mov r2, #2
	str r1, [sp]
	mov r0, r4
	mov r3, r2
	mov r1, #0xd
	bl FUN_ov42_0211ab34
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0xf
	cmpne r0, #0x1e
	bne _0211C9E8
	mov r7, #0xc
	mov r6, #5
	mov r5, #0xa
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov42_0211abf0
	mov r0, r4
	mov r1, r7
	mov r3, r6
	mov r2, #4
	str r5, [sp]
	b _0211CA2C
_0211C9E8:
	mov r12, #0xa
	mov r0, r4
	mov r2, r5
	mov r1, #0xc
	mov r3, #5
	str r12, [sp]
	b _0211CA2C
_0211CA04:
	add r0, r4, #0x3000
	str r6, [r0, #0x4a4]
	b _0211CA30
_0211CA10:
	mov r0, r4
	bl FUN_ov42_0211eab4
	mov r2, #2
	mov r1, #0xf
	mov r0, r4
	mov r3, r2
	str r1, [sp]
_0211CA2C:
	bl FUN_ov42_0211ab34
_0211CA30:
	mov r0, r4
	bl FUN_ov42_0211c500
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CA54: .word unk_02099ED4
	arm_func_end FUN_ov42_0211c874

	arm_func_start FUN_ov42_0211ca58
FUN_ov42_0211ca58: ; 0x0211CA58
	stmfd sp!, {r4, lr}
	ldr r1, _0211CA88 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #8
	strb r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
_0211CA88: .word unk_02099ED4
	arm_func_end FUN_ov42_0211ca58

	arm_func_start FUN_ov42_0211ca8c
FUN_ov42_0211ca8c: ; 0x0211CA8C
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
	bne _0211CADC
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211CADC:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov42_0211ca8c

	arm_func_start FUN_ov42_0211cafc
FUN_ov42_0211cafc: ; 0x0211CAFC
	ldr r3, _0211CB2C ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211CB18
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211CB18:
	mov r3, #7
	str r1, [r0, #0x74]
	str r2, [r0, #0x78]
	strb r3, [r0, #0x6c]
	bx lr
_0211CB2C: .word unk_0209A454
	arm_func_end FUN_ov42_0211cafc

	arm_func_start FUN_ov42_0211cb30
FUN_ov42_0211cb30: ; 0x0211CB30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	mov r8, #0
	mov r6, r0
	mov r4, #4
	mov r9, #0x10
	str r8, [sp, #0x44]
	str r8, [sp, #0x40]
	add r3, r6, #0x3000
	ldr r3, [r3, #0x448]
	add r0, sp, #0x4c
	mov r1, r8
	mov r2, r4
	str r9, [sp, #0x24]
	str r3, [sp, #0x20]
	bl MI_CpuFill8
	add r0, sp, #0x48
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	add r0, r6, #0x38
	add r0, r0, #0x3000
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	ldr r11, _0211D0A4 ; =0x000001EA
	ldr r5, [sp, #0x20]
	sub r0, r11, #1
	str r0, [sp, #0x28]
	mov r0, r5
	add r0, r0, #8
	str r0, [sp, #0x2c]
	add r0, r6, #0x2000
	str r0, [sp, #0x38]
	ldr r10, _0211D0A8 ; =0x02099F38
	b _0211CE6C
_0211CBC0:
	ldr r0, [sp, #0x20]
	sub r0, r5, r0
	mov r4, r0, lsl #4
	mov r0, #0x58
	mla r0, r5, r0, r6
	ldrb r0, [r0, #0x622]
	cmp r0, #1
	bne _0211CE24
	mov r0, #0
	str r0, [sp, #0x44]
	ldr r0, [r10]
	mov r1, #6
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r7, r0
	add r0, r6, r5, lsl #3
	add r0, r0, #0x3000
	str r7, [r0, #0x38]
	mov r0, #0x58
	mla r0, r5, r0, r6
	add r0, r0, #0x600
	ldrh r0, [r0, #0x16]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CC54
_0211CC24: ; jump table
	b _0211CC54 ; case 0
	b _0211CC38 ; case 1
	b _0211CC40 ; case 2
	b _0211CC48 ; case 3
	b _0211CC50 ; case 4
_0211CC38:
	mov r8, #3
	b _0211CC54
_0211CC40:
	mov r8, #2
	b _0211CC54
_0211CC48:
	mov r8, #1
	b _0211CC54
_0211CC50:
	mov r8, #0
_0211CC54:
	str r8, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r4, #0x20
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r6
	mov r1, r7
	add r2, sp, #0x44
	mov r3, #0x10
	bl FUN_ov42_0211c290
	mov r2, #0x58
	mla r2, r5, r2, r6
	ldr r1, [sp, #0x44]
	add r2, r2, #0x600
	add r1, r1, #1
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x38]
	ldrh r2, [r2, #0x10]
	ldr r1, [r1, #0xf8c]
	mov r0, r6
	bl FUN_ov42_0211c060
	mov r3, r0
	ldr r0, [r10]
	ldr r2, [sp, #0x44]
	mov r1, r7
	add r8, r4, #0x18
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r10]
	ldr r2, [sp, #0x44]
	mov r1, r7
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r10]
	ldr r2, [sp, #0x44]
	mov r1, r7
	mov r3, #0xc
	bl  FUN_ov16_02113b78
	ldr r0, [r10]
	ldr r2, [sp, #0x44]
	mov r1, r7
	mov r3, r11
	bl  FUN_ov16_021139bc
	mov r0, #0x58
	mla r0, r5, r0, r6
	ldr r1, [r0, #0x60c]
	ldr r2, _0211D0AC ; =0x66666667
	add r0, r4, #0x28
	smull r3, r8, r2, r1
	mov r2, r1, lsr #0x1f
	add r8, r2, r8, asr #2
	mov r2, #0xa
	smull r3, r8, r2, r8
	sub r8, r1, r3
	str r8, [sp]
	mov r1, #0x70
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r6
	mov r1, r7
	add r2, sp, #0x44
	mov r3, #0x14
	bl FUN_ov42_0211c290
	mov r0, #0x58
	mla r0, r5, r0, r6
	ldr r2, [r0, #0x60c]
	cmp r2, #0xa
	blt _0211CDD0
	ldr r0, _0211D0AC ; =0x66666667
	mov r3, #0x14
	smull r1, r8, r0, r2
	mov r0, r2, lsr #0x1f
	add r8, r0, r8, asr #2
	str r8, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r4, #0x28
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r6
	mov r1, r7
	add r2, sp, #0x44
	bl FUN_ov42_0211c290
_0211CDD0:
	mov r0, #0x58
	mla r0, r5, r0, r6
	ldrb r0, [r0, #0x623]
	cmp r0, #1
	bne _0211CE24
	mov r0, #0
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r4, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, r7
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r6
	add r2, sp, #0x44
	mov r3, #0x13
	mov r8, #0
	bl FUN_ov42_0211c290
_0211CE24:
	add r0, r4, #0x20
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x12c
	str r0, [sp, #0xc]
	ldr r0, _0211D0B0 ; =0x02099EB4
	mov r2, r9
	ldr r0, [r0]
	mov r3, r1
	bl  FUN_ov16_0210fba4
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	add r5, r5, #1
_0211CE6C:
	ldr r0, [sp, #0x2c]
	cmp r5, r0
	blt _0211CBC0
	ldr r4, _0211D0A8 ; =0x02099F38
	mov r3, #0
	ldr r0, [r4]
	mov r1, #8
	mov r2, #1
	str r3, [sp, #0x44]
	bl  FUN_ov16_02112724
	mov r7, r0
	add r1, r6, #0x2000
	str r7, [r1, #0xf4c]
	add r2, sp, #0x4c
	add r3, sp, #0x48
	mov r0, #0x40
	mov r1, #0x10
	bl FUN_02054070
	add r0, r6, #0x1fc
	add r0, r0, #0x400
	ldr r5, [sp, #0x20]
	str r0, [sp, #0x30]
	mov r0, r5
	add r0, r0, #8
	str r0, [sp, #0x34]
	b _0211D090
_0211CED4:
	mov r0, #0x58
	mla r0, r5, r0, r6
	ldrb r0, [r0, #0x622]
	cmp r0, #1
	bne _0211D08C
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r0, [r4]
	bl FUN_02059630
	mov r8, r0
	add r0, r6, r5, lsl #3
	add r0, r0, #0x3000
	str r8, [r0, #0x3c]
	mov r2, #0
	ldr r0, [r4]
	mov r1, r8
	mov r3, r2
	bl FUN_02059038
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [r4]
	mov r1, r8
	add r2, sp, #0x3c
	add r3, sp, #0x40
	bl FUN_0205935c
	ldr r0, [r4]
	mov r1, r8
	ldr r10, [sp, #0x3c]
	bl  FUN_ov16_02111438
	mov r11, r0
	ldr r0, [r4]
	mov r1, r8
	bl  FUN_ov16_02111458
	mov r9, r0
	ldr r0, _0211D0B4 ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_02043310
	str r9, [sp]
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
	ldr r0, _0211D0B4 ; =0x02099F50
	ldr r1, [sp, #0x30]
	mov r2, #0x58
	mla r1, r5, r2, r1
	ldr r0, [r0]
	mov r2, r10
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211D0B4 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r10
	ldr r3, [sp, #0x40]
	ldr r0, [r4]
	mov r10, #0
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, r8
	str r10, [sp, #8]
	bl FUN_02059288
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x44]
	sub r0, r5, r0
	add r2, r1, #1
	mov r0, r0, lsl #4
	and r3, r8, #0xff
	add r8, r0, #0x23
	ldr r0, [r4]
	mov r1, r7
	str r2, [sp, #0x44]
	bl  FUN_ov16_021137dc
	mov r0, r10
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [sp, #0x44]
	mov r1, r7
	mov r3, r10
	bl  FUN_ov16_02113d88
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [sp, #0x44]
	mov r1, r7
	bl  FUN_ov16_02113d08
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [sp, #0x44]
	mov r1, r7
	mov r3, #0x29
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r2, [sp, #0x44]
	mov r1, r7
	mov r3, #0xc8
	bl  FUN_ov16_021139bc
_0211D08C:
	add r5, r5, #1
_0211D090:
	ldr r0, [sp, #0x34]
	cmp r5, r0
	blt _0211CED4
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D0A4: .word 0x000001EA
_0211D0A8: .word unk_02099F38
_0211D0AC: .word 0x66666667
_0211D0B0: .word unk_02099EB4
_0211D0B4: .word unk_02099F50
	arm_func_end FUN_ov42_0211cb30

	arm_func_start FUN_ov42_0211d0b8
FUN_ov42_0211d0b8: ; 0x0211D0B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r7, #0
	mov r9, r0
	mov r4, #4
	str r7, [sp, #0x34]
	str r7, [sp, #0x30]
	add r0, r9, #0x3000
	ldr r3, [r0, #0x464]
	add r0, sp, #0x3c
	mov r1, r7
	mov r2, r4
	mov r6, r3, lsl #3
	bl MI_CpuFill8
	add r0, sp, #0x38
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	add r0, r9, #0xb8
	mov r1, r7
	add r0, r0, #0x3000
	mov r2, #0x340
	bl MI_CpuFill8
	mov r8, r6
	b _0211D4BC
_0211D11C:
	mov r0, #0x58
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0xba2]
	cmp r0, #1
	bne _0211D434
	ldr r0, _0211D74C ; =0x02099F38
	mov r10, #0
	ldr r0, [r0]
	mov r1, #6
	mov r2, #1
	str r10, [sp, #0x34]
	bl  FUN_ov16_02112724
	add r3, r9, r8, lsl #3
	mov r4, r0
	add r0, r3, #0x3000
	str r4, [r0, #0xb8]
	mov r0, #0x58
	sub r1, r8, r6
	mov r2, r1, lsl #4
	mla r0, r8, r0, r9
	add r5, r2, #0x20
	mov r1, r10
	mov r11, #0x88
	add r2, r0, #0xb00
	mov lr, r10
	mov r3, #0x58
	b _0211D1AC
_0211D188:
	mla r12, r1, r3, r9
	add r12, r12, #0x600
	ldrh r0, [r2, #0x90]
	ldrh r12, [r12, #0x10]
	mov r7, lr
	cmp r0, r12
	moveq r7, #1
	beq _0211D1B4
	add r1, r1, #1
_0211D1AC:
	cmp r1, #0x10
	blt _0211D188
_0211D1B4:
	cmp r7, #0
	mov r12, #1
	bne _0211D1E8
	stmia sp, {r10, r11}
	ldr r0, _0211D750 ; =0x000001EF
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #0x34
	mov r0, r9
	mov r1, r4
	mov r3, #2
	str r12, [sp, #0x10]
	bl FUN_ov42_0211c290
_0211D1E8:
	mov r0, #0x58
	mla r0, r8, r0, r9
	add r0, r0, #0xb00
	ldrh r0, [r0, #0x96]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211D234
_0211D204: ; jump table
	b _0211D234 ; case 0
	b _0211D218 ; case 1
	b _0211D220 ; case 2
	b _0211D228 ; case 3
	b _0211D230 ; case 4
_0211D218:
	mov r10, #3
	b _0211D234
_0211D220:
	mov r10, #2
	b _0211D234
_0211D228:
	mov r10, #1
	b _0211D234
_0211D230:
	mov r10, #0
_0211D234:
	sub r0, r8, r6
	mov r11, #0x8b
	mov r0, r0, lsl #4
	stmia sp, {r10, r11}
	add r5, r0, #0x20
	ldr r10, _0211D754 ; =0x000001EA
	str r5, [sp, #8]
	mov r3, #0x10
	cmp r7, #0
	str r10, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	moveq r3, #0x11
	mov r0, r9
	mov r1, r4
	add r2, sp, #0x34
	bl FUN_ov42_0211c290
	mov r2, #0x58
	mla r2, r8, r2, r9
	ldr r0, [sp, #0x34]
	add r2, r2, #0xb00
	add r0, r0, #1
	str r0, [sp, #0x34]
	add r1, r9, #0x2000
	ldrh r2, [r2, #0x90]
	ldr r1, [r1, #0xf90]
	mov r0, r9
	bl FUN_ov42_0211c0a4
	mov r3, r0
	sub r0, r8, r6
	mov r0, r0, lsl #4
	ldr r11, _0211D74C ; =0x02099F38
	add r5, r0, #0x18
	ldr r0, [r11]
	ldr r2, [sp, #0x34]
	mov r1, r4
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	mov r3, r0
	ldr r0, [r11]
	ldr r2, [sp, #0x34]
	mov r1, r4
	bl  FUN_ov16_0211401c
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r11]
	ldr r2, [sp, #0x34]
	mov r3, #0x94
	mov r1, r4
	bl  FUN_ov16_02113b78
	ldr r0, [r11]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, r10
	bl  FUN_ov16_021139bc
	mov r0, #0x58
	mla r0, r8, r0, r9
	ldr r0, [r0, #0xb8c]
	ldr r5, _0211D758 ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r2, r11, r5, r0
	add r11, r1, r11, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r11
	sub r11, r0, r1
	str r11, [sp]
	mov r0, #0xf8
	str r0, [sp, #4]
	sub r0, r8, r6
	mov r0, r0, lsl #4
	add r0, r0, #0x28
	str r0, [sp, #8]
	mov r11, #0x14
	str r10, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r1, r4
	add r2, sp, #0x34
	mov r3, r11
	bl FUN_ov42_0211c290
	mov r0, #0x58
	mla r0, r8, r0, r9
	ldr r2, [r0, #0xb8c]
	cmp r2, #0xa
	blt _0211D3DC
	smull r0, r1, r5, r2
	mov r0, r2, lsr #0x1f
	add r1, r0, r1, asr #2
	sub r0, r8, r6
	str r1, [sp]
	mov r0, r0, lsl #4
	mov r1, #0xf0
	str r1, [sp, #4]
	add r0, r0, #0x28
	str r0, [sp, #8]
	add r2, sp, #0x34
	mov r3, r11
	str r10, [sp, #0xc]
	mov r5, #1
	mov r0, r9
	mov r1, r4
	str r5, [sp, #0x10]
	bl FUN_ov42_0211c290
_0211D3DC:
	mov r0, #0x58
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0xba3]
	mov r5, #1
	mov r2, #0
	cmp r0, #1
	bne _0211D4B8
	sub r0, r8, r6
	mov r0, r0, lsl #4
	str r2, [sp]
	mov r1, #0xf0
	str r1, [sp, #4]
	add r0, r0, #0x20
	str r0, [sp, #8]
	add r0, r1, #0xf9
	str r0, [sp, #0xc]
	add r2, sp, #0x34
	mov r0, r9
	mov r1, r4
	mov r3, #0x13
	str r5, [sp, #0x10]
	b _0211D4B4
_0211D434:
	ldr r0, _0211D74C ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r3, #0
	mov r2, r1
	str r3, [sp, #0x34]
	bl  FUN_ov16_02112724
	sub r1, r8, r6
	mov r2, r1, lsl #4
	add r3, r9, r8, lsl #3
	mov r1, r0
	add r0, r3, #0x3000
	str r1, [r0, #0xb8]
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
	blt _0211D4A4
	str r0, [sp, #0xc]
	mov r0, r9
	mov r3, #4
	b _0211D4B0
_0211D4A4:
	str r0, [sp, #0xc]
	mov r0, r9
	mov r3, #2
_0211D4B0:
	str r4, [sp, #0x10]
_0211D4B4:
	bl FUN_ov42_0211c290
_0211D4B8:
	add r8, r8, #1
_0211D4BC:
	add r0, r6, #8
	cmp r8, r0
	blt _0211D11C
	ldr r7, _0211D74C ; =0x02099F38
	mov r3, #0
	ldr r0, [r7]
	mov r1, #8
	mov r2, #1
	str r3, [sp, #0x34]
	bl  FUN_ov16_02112724
	mov r4, r0
	add r1, r9, #0x2000
	str r4, [r1, #0xf50]
	add r2, sp, #0x3c
	add r3, sp, #0x38
	mov r0, #0x40
	mov r1, #0x10
	bl FUN_02054070
	add r0, r9, #0x37c
	add r0, r0, #0x800
	str r0, [sp, #0x24]
	add r0, r6, #8
	mov r8, r6
	str r0, [sp, #0x28]
	b _0211D6DC
_0211D520:
	mov r0, #0x58
	mla r0, r8, r0, r9
	ldrb r0, [r0, #0xba2]
	cmp r0, #1
	bne _0211D6D8
	ldr r2, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r0, [r7]
	bl FUN_02059630
	mov r5, r0
	add r0, r9, r8, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0xbc]
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
	bl  FUN_ov16_02111438
	str r0, [sp, #0x20]
	ldr r0, [r7]
	mov r1, r5
	bl  FUN_ov16_02111458
	mov r11, r0
	ldr r0, _0211D75C ; =0x02099F50
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
	ldr r0, _0211D75C ; =0x02099F50
	ldr r1, [sp, #0x24]
	mov r2, #0x58
	mla r1, r8, r2, r1
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r2, r10
	bl FUN_020425fc
	ldr r0, _0211D75C ; =0x02099F50
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
	bl  FUN_ov16_021137dc
	mov r0, r10
	str r0, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, r10
	bl  FUN_ov16_02113d88
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x34]
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r7]
	mov r1, r4
	bl  FUN_ov16_02113d08
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, #0xb1
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	ldr r2, [sp, #0x34]
	mov r1, r4
	mov r3, #0xc8
	bl  FUN_ov16_021139bc
_0211D6D8:
	add r8, r8, #1
_0211D6DC:
	ldr r0, [sp, #0x28]
	cmp r8, r0
	blt _0211D520
	mov r6, #0x19
	mov r11, #0x88
	mov r5, #0x20
	mov r7, #0x78
	mov r9, #0x10
	mov r8, #0
	mov r4, #0x12c
	ldr r10, _0211D760 ; =0x02099EB4
	b _0211D73C
_0211D70C:
	stmia sp, {r5, r7, r9}
	str r4, [sp, #0xc]
	ldr r0, [r10]
	mov r1, #8
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_0210fba4
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	add r5, r5, #0x10
	add r8, r8, #1
_0211D73C:
	cmp r8, #8
	blt _0211D70C
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D74C: .word unk_02099F38
_0211D750: .word 0x000001EF
_0211D754: .word 0x000001EA
_0211D758: .word 0x66666667
_0211D75C: .word unk_02099F50
_0211D760: .word unk_02099EB4
	arm_func_end FUN_ov42_0211d0b8

	arm_func_start FUN_ov42_0211d764
FUN_ov42_0211d764: ; 0x0211D764
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r5, r6
	mov r7, r6
	ldr r4, _0211D8A4 ; =0x02099F38
	b _0211D7D4
_0211D780:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x38]
	cmp r1, #0
	beq _0211D7A8
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x38]
_0211D7A8:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211D7D0
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x3c]
_0211D7D0:
	add r7, r7, #1
_0211D7D4:
	cmp r7, #0x10
	blt _0211D780
	mov r7, #0
	ldr r4, _0211D8A4 ; =0x02099F38
	b _0211D83C
_0211D7E8:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0xb8]
	cmp r1, #0
	beq _0211D810
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0xb8]
_0211D810:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	beq _0211D838
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0xbc]
_0211D838:
	add r7, r7, #1
_0211D83C:
	cmp r7, #0x68
	blt _0211D7E8
	mov r7, #0
	ldr r4, _0211D8A4 ; =0x02099F38
	b _0211D87C
_0211D850:
	add r0, r8, r7, lsl #2
	add r0, r0, #0x2000
	ldr r1, [r0, #0xf4c]
	cmp r1, #0
	beq _0211D878
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #2
	add r0, r0, #0x2000
	str r5, [r0, #0xf4c]
_0211D878:
	add r7, r7, #1
_0211D87C:
	cmp r7, #2
	blt _0211D850
	ldr r4, _0211D8A8 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #8
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D8A4: .word unk_02099F38
_0211D8A8: .word unk_02099EB4
	arm_func_end FUN_ov42_0211d764

	arm_func_start FUN_ov42_0211d8ac
FUN_ov42_0211d8ac: ; 0x0211D8AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r5, r6
	mov r7, r6
	ldr r4, _0211D95C ; =0x02099F38
	b _0211D91C
_0211D8C8:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x38]
	cmp r1, #0
	beq _0211D8F0
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x38]
_0211D8F0:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211D918
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x3c]
_0211D918:
	add r7, r7, #1
_0211D91C:
	cmp r7, #0x10
	blt _0211D8C8
	add r0, r8, #0x2000
	ldr r1, [r0, #0xf4c]
	cmp r1, #0
	beq _0211D948
	ldr r0, _0211D95C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r8, #0x2000
	str r5, [r0, #0xf4c]
_0211D948:
	ldr r0, _0211D960 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D95C: .word unk_02099F38
_0211D960: .word unk_02099EB4
	arm_func_end FUN_ov42_0211d8ac

	arm_func_start FUN_ov42_0211d964
FUN_ov42_0211d964: ; 0x0211D964
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r8, r0
	mov r6, r7
	mov r5, r7
	ldr r4, _0211DA18 ; =0x02099F38
	b _0211D9D4
_0211D980:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0xb8]
	cmp r1, #0
	beq _0211D9A8
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0xb8]
_0211D9A8:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	beq _0211D9D0
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0xbc]
_0211D9D0:
	add r7, r7, #1
_0211D9D4:
	cmp r7, #0x68
	blt _0211D980
	add r0, r8, #0x2000
	ldr r1, [r0, #0xf50]
	cmp r1, #0
	beq _0211DA04
	ldr r0, _0211DA18 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r8, #0x2000
	mov r1, #0
	str r1, [r0, #0xf50]
_0211DA04:
	ldr r0, _0211DA1C ; =0x02099EB4
	mov r1, #8
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DA18: .word unk_02099F38
_0211DA1C: .word unk_02099EB4
	arm_func_end FUN_ov42_0211d964

	arm_func_start FUN_ov42_0211da20
FUN_ov42_0211da20: ; 0x0211DA20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x3f8
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x3000
	str r4, [r0, #0x400]
	str r4, [r0, #0x404]
	str r4, [r0, #0x408]
	str r4, [r0, #0x40c]
	str r4, [r0, #0x410]
	str r4, [r0, #0x414]
	str r4, [r0, #0x418]
	str r4, [r0, #0x41c]
	str r4, [r0, #0x420]
	str r4, [r0, #0x424]
	str r4, [r0, #0x428]
	str r4, [r0, #0x42c]
	str r4, [r0, #0x430]
	str r4, [r0, #0x434]
	str r4, [r0, #0x438]
	str r4, [r0, #0x43c]
	str r4, [r0, #0x440]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov42_0211da20

	arm_func_start FUN_ov42_0211da8c
FUN_ov42_0211da8c: ; 0x0211DA8C
	add r0, r0, r1, lsl #2
	add r0, r0, #0x3000
	mov r1, #0
	str r1, [r0, #0x3f8]
	bx lr
	arm_func_end FUN_ov42_0211da8c

	arm_func_start FUN_ov42_0211daa0
FUN_ov42_0211daa0: ; 0x0211DAA0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _0211DB0C ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_02112724
	mov r2, #0
	mov r1, r0
	str r2, [sp, #0x14]
	add r0, r5, #0x2000
	str r1, [r0, #0xff8]
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0x12c
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	mov r3, #0xe
	str r4, [sp, #0x10]
	bl FUN_ov42_0211c290
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211DB0C: .word unk_02099F38
	arm_func_end FUN_ov42_0211daa0

	arm_func_start FUN_ov42_0211db10
FUN_ov42_0211db10: ; 0x0211DB10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r4, #0
	add r12, r9, #0x3000
	add r6, r9, r4, lsl #2
	mov r5, #1
	str r5, [r12, #0x400]
	str r4, [r12, #0x404]
	add r6, r6, #0x3000
	ldr r8, [r6, #0x3f8]
	mov r7, r2
	mov r6, r3
	mla r3, r6, r8, r7
	add r2, r9, #0x3f8
	str r3, [r12, #0x40c]
	add lr, r2, #0x3000
	ldr r3, [lr, r4, lsl #2]
	ldr r2, [sp, #0x20]
	mov r8, r1
	add r1, r3, r2
	str r1, [lr, r4, lsl #2]
	ldr r1, [r12, #0x404]
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	ldr r3, [r1, #0x3f8]
	cmp r3, #0
	bge _0211DC60
	str r4, [r1, #0x3f8]
	ldr r1, [r12, #0x444]
	cmp r1, #0
	bne _0211DC40
	ldr r1, [r12, #0x448]
	cmp r1, #0
	ble _0211DBE0
	sub r1, r1, #1
	str r1, [r12, #0x448]
	bl FUN_ov42_0211d8ac
	mov r0, r9
	bl FUN_ov42_0211cb30
	mov r0, r9
	mov r1, #2
	bl FUN_ov42_0211ab1c
	mov r0, r9
	bl FUN_ov42_0211e25c
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x490]
	cmpeq r1, #0
	ldreq r1, [r0, #0x49c]
	addeq r1, r1, #0x10
	b _0211DD24
_0211DBE0:
	bgt _0211DD4C
	ldr r1, [r12, #0x404]
	mov r2, #7
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	str r2, [r1, #0x3f8]
	mov r1, #8
	str r1, [r12, #0x448]
	bl FUN_ov42_0211d8ac
	mov r0, r9
	bl FUN_ov42_0211cb30
	mov r0, r9
	mov r1, #4
	bl FUN_ov42_0211ab1c
	mov r0, r9
	bl FUN_ov42_0211e25c
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x490]
	cmpeq r1, #0
	ldreq r1, [r0, #0x49c]
	subeq r1, r1, #0x80
	b _0211DD24
_0211DC40:
	bl FUN_ov42_0211a6a8
	mov r0, r9
	mov r2, r5
	mov r1, #0x20
	bl FUN_ov42_0211dd9c
	add r0, r9, #0x3000
	str r4, [r0, #0x400]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DC60:
	ldr r2, [sp, #0x24]
	cmp r3, r2
	ble _0211DD4C
	str r2, [r1, #0x3f8]
	ldr r1, [r12, #0x444]
	cmp r1, #0
	bne _0211DD2C
	ldr r1, [r12, #0x448]
	cmp r1, #8
	bge _0211DCD0
	add r1, r1, #1
	str r1, [r12, #0x448]
	bl FUN_ov42_0211d8ac
	mov r0, r9
	bl FUN_ov42_0211cb30
	mov r0, r9
	mov r1, #3
	bl FUN_ov42_0211ab1c
	mov r0, r9
	bl FUN_ov42_0211e25c
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x490]
	cmpeq r1, #0
	ldreq r1, [r0, #0x49c]
	subeq r1, r1, #0x10
	b _0211DD24
_0211DCD0:
	blt _0211DD4C
	ldr r1, [r12, #0x404]
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	str r4, [r1, #0x3f8]
	str r4, [r12, #0x448]
	bl FUN_ov42_0211d8ac
	mov r0, r9
	bl FUN_ov42_0211cb30
	mov r0, r9
	mov r1, r5
	bl FUN_ov42_0211ab1c
	mov r0, r9
	bl FUN_ov42_0211e25c
	ldrb r0, [r9, #0x6d]
	cmp r0, #1
	addeq r0, r9, #0x3000
	ldreq r1, [r0, #0x490]
	cmpeq r1, #0
	ldreq r1, [r0, #0x49c]
	addeq r1, r1, #0x80
_0211DD24:
	streq r1, [r0, #0x49c]
	b _0211DD4C
_0211DD2C:
	bl FUN_ov42_0211a70c
	mov r0, r9
	mov r2, r5
	mov r1, #0x19
	bl FUN_ov42_0211dd9c
	add r0, r9, #0x3000
	str r4, [r0, #0x400]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DD4C:
	add r1, r9, #0x3000
	ldr r0, [r1, #0x404]
	str r8, [r1, #0x408]
	add r0, r9, r0, lsl #2
	add r0, r0, #0x3000
	ldr r0, [r0, #0x3f8]
	mov r2, #0xc
	mla r3, r6, r0, r7
	ldr r0, [r1, #0x40c]
	str r2, [r1, #0x414]
	cmp r0, r3
	subgt r0, r2, #0xd
	mulgt r0, r2, r0
	strgt r0, [r1, #0x414]
	str r3, [r1, #0x410]
	ldr r0, _0211DD98 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DD98: .word unk_0209AC44
	arm_func_end FUN_ov42_0211db10

	arm_func_start FUN_ov42_0211dd9c
FUN_ov42_0211dd9c: ; 0x0211DD9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0x3000
	ldr r6, [r4, #0x444]
	mov r3, #0x88
	mul r5, r6, r3
	ldr r3, [r4, #0x3f8]
	mov r6, #1
	mov r3, r3, lsl #4
	add r3, r3, #0x20
	str r6, [r4, #0x41c]
	str r5, [r4, #0x420]
	str r3, [r4, #0x424]
	cmp r2, #0
	beq _0211DDE4
	cmp r2, #1
	subeq r1, r1, #0x19
	streq r1, [r4, #0x3f8]
	b _0211DDEC
_0211DDE4:
	sub r1, r1, #0x10
	str r1, [r4, #0x3f8]
_0211DDEC:
	mov r1, #0x88
	mul r12, r2, r1
	add r5, r0, #0x3000
	ldr r1, [r5, #0x420]
	ldr r2, [r5, #0x3f8]
	sub r7, r12, r1
	mov r2, r2, lsl #4
	add r3, r2, #0x20
	ldr r2, [r5, #0x424]
	ldr r4, _0211DEA0 ; =0x66666667
	sub r6, r3, r2
	smull lr, r2, r4, r7
	mov lr, r7, lsr #0x1f
	add r2, lr, r2, asr #1
	smull lr, r7, r4, r6
	mov lr, r6, lsr #0x1f
	add r7, lr, r7, asr #1
	str r12, [r5, #0x428]
	str r3, [r5, #0x42c]
	str r2, [r5, #0x430]
	str r7, [r5, #0x434]
	cmp r1, r12
	ble _0211DE60
	sub r2, r1, r12
	smull r1, r3, r4, r2
	mov r1, r2, lsr #0x1f
	add r3, r1, r3, asr #1
	rsb r1, r3, #0
	str r1, [r5, #0x430]
_0211DE60:
	add r2, r0, #0x3000
	ldr r3, [r2, #0x42c]
	ldr r0, [r2, #0x424]
	cmp r0, r3
	ble _0211DE90
	ldr r1, _0211DEA0 ; =0x66666667
	sub r3, r0, r3
	smull r0, r4, r1, r3
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #1
	rsb r0, r4, #0
	str r0, [r2, #0x434]
_0211DE90:
	ldr r0, _0211DEA4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DEA0: .word 0x66666667
_0211DEA4: .word unk_0209AC44
	arm_func_end FUN_ov42_0211dd9c

	arm_func_start FUN_ov42_0211dea8
FUN_ov42_0211dea8: ; 0x0211DEA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	add r1, r8, #0x3000
	ldr r3, [r1, #0x418]
	ldr r2, [r1, #0x414]
	add r3, r3, #1
	ldr r5, [r1, #0x40c]
	mov r4, #0
	mla r7, r2, r3, r5
	cmp r2, #0
	mov r5, r4
	str r3, [r1, #0x418]
	ldr r6, [r1, #0x408]
	ldr r2, [r1, #0x410]
	bge _0211DEF4
	cmp r7, r2
	bge _0211DF0C
	b _0211DEFC
_0211DEF4:
	cmp r7, r2
	ble _0211DF0C
_0211DEFC:
	mov r7, r2
	str r4, [r1, #0x400]
	str r4, [r1, #0x418]
	bl FUN_ov42_0211ac54
_0211DF0C:
	ldrb r0, [r8, #0x6d]
	mov r3, r6, lsl #0x10
	mov r3, r3, asr #0x10
	cmp r0, #0
	cmpne r0, #1
	addeq r0, r8, #0x2000
	ldreq r4, [r0, #0xff8]
	mov r0, r7, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [sp]
	ldr r0, _0211DF54 ; =0x02099F38
	moveq r5, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211DF54: .word unk_02099F38
	arm_func_end FUN_ov42_0211dea8

	arm_func_start FUN_ov42_0211df58
FUN_ov42_0211df58: ; 0x0211DF58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0x3000
	ldr r1, [r3, #0x438]
	ldr r5, [r3, #0x430]
	add r4, r1, #1
	ldr r6, [r3, #0x420]
	ldr r7, [r3, #0x424]
	ldr r1, [r3, #0x434]
	mla r6, r5, r4, r6
	cmp r5, #0
	mla r7, r1, r4, r7
	add r2, r0, #0x2000
	str r4, [r3, #0x438]
	ldr r4, [r2, #0xff8]
	mov r5, #1
	ldr r2, [r3, #0x428]
	bge _0211DFA8
	cmp r6, r2
	movlt r6, r2
	b _0211DFB0
_0211DFA8:
	cmp r6, r2
	movgt r6, r2
_0211DFB0:
	cmp r1, #0
	add r1, r0, #0x3000
	ldr r1, [r1, #0x42c]
	bge _0211DFCC
	cmp r7, r1
	movlt r7, r1
	b _0211DFD4
_0211DFCC:
	cmp r7, r1
	movgt r7, r1
_0211DFD4:
	add r1, r0, #0x3000
	ldr r2, [r1, #0x428]
	cmp r6, r2
	ldreq r2, [r1, #0x42c]
	cmpeq r7, r2
	bne _0211DFFC
	mov r2, #0
	str r2, [r1, #0x41c]
	str r2, [r1, #0x438]
	bl FUN_ov42_0211ac54
_0211DFFC:
	mov r0, r7, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, _0211E028 ; =0x02099F38
	str r1, [sp]
	mov r3, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r4
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E028: .word unk_02099F38
	arm_func_end FUN_ov42_0211df58

	arm_func_start FUN_ov42_0211e02c
FUN_ov42_0211e02c: ; 0x0211E02C
	add r1, r0, #0x3000
	ldr r2, [r1, #0x444]
	ldr r3, [r1, #0x3f8]
	cmp r2, #0
	bne _0211E05C
	ldr r2, [r1, #0x448]
	mov r1, #0x58
	add r2, r3, r2
	mla r0, r2, r1, r0
	add r0, r0, #0x600
	ldrh r0, [r0, #0x10]
	bx lr
_0211E05C:
	ldr r2, [r1, #0x464]
	mov r1, #0x58
	add r2, r3, r2, lsl #3
	mla r0, r2, r1, r0
	add r0, r0, #0xb00
	ldrh r0, [r0, #0x90]
	bx lr
	arm_func_end FUN_ov42_0211e02c

	arm_func_start FUN_ov42_0211e078
FUN_ov42_0211e078: ; 0x0211E078
	add r1, r0, #0x3000
	ldr r2, [r1, #0x444]
	ldr r3, [r1, #0x3f8]
	cmp r2, #0
	ldrne r2, [r1, #0x464]
	movne r1, #0x58
	addne r2, r3, r2, lsl #3
	mlane r0, r2, r1, r0
	ldrneb r0, [r0, #0xba0]
	bxne lr
	ldr r2, [r1, #0x448]
	mov r1, #0x58
	add r2, r3, r2
	mla r0, r2, r1, r0
	ldrb r0, [r0, #0x620]
	bx lr
	arm_func_end FUN_ov42_0211e078

	arm_func_start FUN_ov42_0211e0b8
FUN_ov42_0211e0b8: ; 0x0211E0B8
	add r0, r0, #0x3000
	mov r2, #0
	mov r1, #0x40
	str r2, [r0, #0x448]
	str r2, [r0, #0x44c]
	str r2, [r0, #0x450]
	str r2, [r0, #0x454]
	str r2, [r0, #0x458]
	str r1, [r0, #0x45c]
	str r2, [r0, #0x460]
	bx lr
	arm_func_end FUN_ov42_0211e0b8

	arm_func_start FUN_ov42_0211e0e4
FUN_ov42_0211e0e4: ; 0x0211E0E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r1, _0211E258 ; =0x0211FC24
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
_0211E118:
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
	bl FUN_ov42_0211a9ec
	movs r5, r0
	beq _0211E1A0
	mov r1, r4
	mov r2, r11
	add r0, r5, #0x3a
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3a
	mov r1, r4
	mov r2, r7
	mov r3, r4
	bl  FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r4
	mov r2, r11
	mov r3, r4
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r4
	add r2, r7, #1
	mov r3, r4
	bl  FUN_ov16_0210e720
_0211E1A0:
	add r9, r9, #1
	cmp r9, #4
	add r6, r6, #1
	add r7, r7, #2
	add r8, r8, #1
	blt _0211E118
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
	bl FUN_ov42_0211a9ec
	movs r5, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e720
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E258: .word 0x0211FC24
	arm_func_end FUN_ov42_0211e0e4

	arm_func_start FUN_ov42_0211e25c
FUN_ov42_0211e25c: ; 0x0211E25C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x20
	add r2, r0, #0x3000
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	ldr r1, [r2, #0x448]
	mov r0, r0, asr #3
	mul r1, r0, r1
	add r5, r1, #0x40
	mov r0, r5, lsl #0x10
	mov r4, #0x78
	ldr r1, [r2, #0xc]
	str r5, [r2, #0x45c]
	mov r2, r0, asr #0x10
	ldr r0, _0211E2C8 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r4
	mov r2, #1
	bl  FUN_ov16_02113b78
	ldr r0, _0211E2CC ; =0x02099EB4
	mov r2, r4
	ldr r0, [r0]
	mov r3, r5
	mov r1, #5
	bl  FUN_ov16_0210fd0c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E2C8: .word unk_02099F38
_0211E2CC: .word unk_02099EB4
	arm_func_end FUN_ov42_0211e25c

	arm_func_start FUN_ov42_0211e2d0
FUN_ov42_0211e2d0: ; 0x0211E2D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r2, _0211E3D8 ; =0x0211FC34
	add r10, sp, #0x10
	mov r4, r0
	sub r7, r1, #1
	ldmia r2, {r0, r1, r2, r3}
	stmia r10, {r0, r1, r2, r3}
	add r12, r4, #0x3000
	ldr r6, [r12, #0x448]
	mov r8, #0
	rsb r0, r6, #8
	mov r0, r0, lsl #4
	mov r2, r6, lsl #4
	rsb r0, r0, #0
	ldr r1, _0211E3DC ; =0x0211FC54
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
	b _0211E380
_0211E344: ; jump table
	b _0211E354 ; case 0
	b _0211E354 ; case 1
	b _0211E36C ; case 2
	b _0211E36C ; case 3
_0211E354:
	cmp r6, #0
	ldrgt r0, [r11, r7, lsl #2]
	movgt r8, #1
	strgt r0, [r12, #0x448]
	ldrgt r9, [r10, r7, lsl #2]
	b _0211E380
_0211E36C:
	cmp r6, #8
	ldrlt r0, [r11, r7, lsl #2]
	movlt r8, #1
	strlt r0, [r12, #0x448]
	ldrlt r9, [r10, r7, lsl #2]
_0211E380:
	cmp r8, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x6d]
	cmp r0, #1
	addeq r0, r4, #0x3000
	ldreq r1, [r0, #0x490]
	cmpeq r1, #0
	ldreq r1, [r0, #0x49c]
	addeq r1, r1, r9
	streq r1, [r0, #0x49c]
	mov r0, r4
	bl FUN_ov42_0211d8ac
	mov r0, r4
	bl FUN_ov42_0211cb30
	mov r0, r4
	bl FUN_ov42_0211e25c
	ldr r0, _0211E3E0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E3D8: .word 0x0211FC34
_0211E3DC: .word 0x0211FC54
_0211E3E0: .word unk_0209AC44
	arm_func_end FUN_ov42_0211e2d0

	arm_func_start FUN_ov42_0211e3e4
FUN_ov42_0211e3e4: ; 0x0211E3E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r2, r4, #0x3000
	ldr r3, [r2, #0x450]
	cmp r3, #0xf
	addlt r0, r3, #1
	strlt r0, [r2, #0x450]
	ldmltfd sp!, {r4, pc}
	ldr r2, [r2, #0x454]
	cmp r2, #0
	bne _0211E414
	bl FUN_ov42_0211e2d0
_0211E414:
	add r3, r4, #0x3000
	ldr r0, [r3, #0x454]
	ldr r2, _0211E444 ; =0x66666667
	add r12, r0, #1
	mov r0, r12, lsr #0x1f
	smull r1, lr, r2, r12
	add lr, r0, lr, asr #1
	mov r2, #5
	smull r0, r1, r2, lr
	sub lr, r12, r0
	str lr, [r3, #0x454]
	ldmfd sp!, {r4, pc}
_0211E444: .word 0x66666667
	arm_func_end FUN_ov42_0211e3e4

	arm_func_start FUN_ov42_0211e448
FUN_ov42_0211e448: ; 0x0211E448
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0211E478 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	add r1, sp, #0
	bl  FUN_ov16_0210f48c
	ldrsh r1, [sp, #2]
	add r0, r4, #0x3000
	str r1, [r0, #0x458]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211E478: .word unk_02099EB4
	arm_func_end FUN_ov42_0211e448

	arm_func_start FUN_ov42_0211e47c
FUN_ov42_0211e47c: ; 0x0211E47C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r1, _0211E5B8 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	add r2, r4, #0x3000
	add r1, sp, #4
	ldr r6, [r2, #0xc]
	mov r7, #1
	mov r8, #0x78
	mov r5, #0x40
	mov r10, #0x60
	bl  FUN_ov16_0210f48c
	ldrsh r0, [sp, #4]
	cmp r0, #0x78
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #0x88
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r4, #0x3000
	ldr r1, [r0, #0x458]
	ldrsh r2, [sp, #6]
	ldr r0, [r0, #0x45c]
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
	ldr r0, [r2, #0x448]
	mov r5, r1, asr #2
	cmp r3, #1
	ldreq r1, [r2, #0x490]
	str r10, [r2, #0x458]
	str r9, [r2, #0x45c]
	str r5, [r2, #0x448]
	cmpeq r1, #0
	bne _0211E560
	cmp r0, r5
	ldrlt r3, [r2, #0x49c]
	sublt r1, r5, r0
	sublt r1, r3, r1, lsl #4
	strlt r1, [r2, #0x49c]
	add r1, r4, #0x3000
	ldr r3, [r1, #0x448]
	cmp r0, r3
	ldrgt r2, [r1, #0x49c]
	subgt r0, r0, r3
	addgt r0, r2, r0, lsl #4
	strgt r0, [r1, #0x49c]
_0211E560:
	mov r0, r4
	bl FUN_ov42_0211d8ac
	mov r0, r4
	bl FUN_ov42_0211cb30
	mov r0, r9, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r8, lsl #0x10
	str r0, [sp]
	ldr r0, _0211E5BC ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r2, r7
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r2, r8
	mov r3, r9
	ldr r0, _0211E5B8 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210fd0c
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E5B8: .word unk_02099EB4
_0211E5BC: .word unk_02099F38
	arm_func_end FUN_ov42_0211e47c

	arm_func_start FUN_ov42_0211e5c0
FUN_ov42_0211e5c0: ; 0x0211E5C0
	add r0, r0, #0x3000
	mov r1, #0
	str r1, [r0, #0x464]
	str r1, [r0, #0x468]
	str r1, [r0, #0x46c]
	bx lr
	arm_func_end FUN_ov42_0211e5c0

	arm_func_start FUN_ov42_0211e5d8
FUN_ov42_0211e5d8: ; 0x0211E5D8
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
	bl FUN_ov42_0211a9ec
	movs r6, r0
	beq _0211E674
	mov r5, #1
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r7
	mov r3, r7
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r7
	mov r2, r5
	add r0, r6, #0x3e
	mov r3, r7
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r5
	mov r1, r7
	mov r3, r7
	bl  FUN_ov16_0210e720
_0211E674:
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
	bl FUN_ov42_0211a9ec
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r1, r5
	mov r3, r5
	mov r2, #3
	bl  FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov42_0211e5d8

	arm_func_start FUN_ov42_0211e718
FUN_ov42_0211e718: ; 0x0211E718
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	ldr r1, _0211E7FC ; =0x02099F38
	mov r8, r0
	mov r4, #1
	ldr r0, [r1]
	mov r2, r4
	mov r1, #2
	bl  FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	add r1, r8, #0x3000
	ldr r2, [r1, #0x464]
	mov r5, r0
	add r7, r2, #1
	str r5, [r1, #0x18]
	cmp r7, #0xa
	rsb r6, r4, #0x1f0
	blt _0211E7A4
	ldr r2, _0211E800 ; =0x66666667
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
	mov r3, #0x15
	str r4, [sp, #0x10]
	bl FUN_ov42_0211c290
_0211E7A4:
	ldr r2, _0211E800 ; =0x66666667
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
	mov r3, #0x15
	str r4, [sp, #0x10]
	bl FUN_ov42_0211c290
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E7FC: .word unk_02099F38
_0211E800: .word 0x66666667
	arm_func_end FUN_ov42_0211e718

	arm_func_start FUN_ov42_0211e804
FUN_ov42_0211e804: ; 0x0211E804
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211E838 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x18]
	ldmfd sp!, {r4, pc}
_0211E838: .word unk_02099F38
	arm_func_end FUN_ov42_0211e804

	arm_func_start FUN_ov42_0211e83c
FUN_ov42_0211e83c: ; 0x0211E83C
	add r0, r0, #0x470
	ldr r12, _0211E854 ; =MI_CpuFill8
	add r0, r0, #0x3000
	mov r1, #0
	mov r2, #8
	bx r12
_0211E854: .word MI_CpuFill8
	arm_func_end FUN_ov42_0211e83c

	arm_func_start FUN_ov42_0211e858
FUN_ov42_0211e858: ; 0x0211E858
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
	bl FUN_ov42_0211a9ec
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, pc}
	mov r12, #0x10
	mov r2, r4
	mov r1, #0xa0
	mov r3, #0x60
	str r12, [sp]
	bl  FUN_ov16_0210e674
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211e858

	arm_func_start FUN_ov42_0211e8b8
FUN_ov42_0211e8b8: ; 0x0211E8B8
	stmfd sp!, {r3, lr}
	add r12, r0, #0x3000
	ldr r2, [r12, #0x474]
	ldr r1, [r12, #0x1c]
	add r3, r2, #1
	str r3, [r12, #0x474]
	cmp r3, #0xa
	mov r2, #1
	mov lr, #0
	bge _0211E8F8
	ldr r0, _0211E92C ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211E8F8:
	cmp r3, #0xa
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0x68]
	str lr, [r12, #0x470]
	eor r3, r3, #1
	str lr, [r12, #0x474]
	str r3, [r0, #0x68]
	strb lr, [r0, #0x15]
	ldr r0, _0211E92C ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211E92C: .word unk_02099F38
	arm_func_end FUN_ov42_0211e8b8

	arm_func_start FUN_ov42_0211e930
FUN_ov42_0211e930: ; 0x0211E930
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #5
	bl FUN_0204204c
	cmp r0, #0xf
	cmpne r0, #0x1e
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0xa8
	moveq r4, #0xd
	mov r6, #0
	str r0, [sp, #4]
	mov r1, #0xa
	mov r2, r4
	str r1, [sp, #8]
	mov r4, #0x190
	mov r0, r5
	mov r3, r6
	mov r1, #0xc
	str r4, [sp, #0xc]
	bl FUN_ov42_0211a9ec
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov42_0211e930

	arm_func_start FUN_ov42_0211e9f4
FUN_ov42_0211e9f4: ; 0x0211E9F4
	add r0, r0, #0x78
	ldr r12, _0211EA0C ; =MI_CpuFill8
	add r0, r0, #0x3400
	mov r1, #0
	mov r2, #0x14
	bx r12
_0211EA0C: .word MI_CpuFill8
	arm_func_end FUN_ov42_0211e9f4

	arm_func_start FUN_ov42_0211ea10
FUN_ov42_0211ea10: ; 0x0211EA10
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r1, #0xa0
	str r1, [sp]
	mov r1, #0xa8
	mov r6, #0
	str r1, [sp, #4]
	mov r1, #0xb
	str r1, [sp, #8]
	mov r4, #0x190
	mov r3, r6
	mov r1, #0xd
	mov r2, #7
	str r4, [sp, #0xc]
	bl FUN_ov42_0211a9ec
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210e720
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov42_0211ea10

	arm_func_start FUN_ov42_0211eab4
FUN_ov42_0211eab4: ; 0x0211EAB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	add r0, r10, #0x3000
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211EC64 ; =0x02099F38
	mov r5, #1
	ldr r0, [r0]
	mov r2, r5
	mov r1, #4
	bl  FUN_ov16_02112724
	mov r4, r0
	mov r9, #0
	str r9, [sp, #0x14]
	add r0, r10, #0x3000
	str r4, [r0, #0x2c]
	str r9, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x34
	str r0, [sp, #8]
	mov r6, #0x96
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	str r5, [sp, #0x10]
	mov r3, #0x17
	ldr r7, _0211EC68 ; =0x021200E4
	bl FUN_ov42_0211c290
	str r9, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r8, #0x6c
	sub r6, r6, #1
	str r8, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	mov r3, #0xc
	str r9, [sp, #0x10]
	bl FUN_ov42_0211c290
	mov r0, #2
	str r0, [sp]
	mov r11, #0x98
	str r11, [sp, #4]
	str r8, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	mov r3, #0xc
	str r5, [sp, #0x10]
	bl FUN_ov42_0211c290
	add r0, r10, #0x7c
	add r0, r0, #0x3400
	stmia sp, {r0, r9}
	mov r2, r4
	mov r4, #0x3c
	sub r5, r6, #1
	str r4, [sp, #8]
	mov r1, r7
	add r3, sp, #0x14
	str r5, [sp, #0xc]
	mov r0, r10
	bl FUN_ov42_0211c354
	str r8, [sp]
	mov r7, #0x30
	str r7, [sp, #4]
	mov r6, #0x18
	str r6, [sp, #8]
	mov r5, #0x258
	ldr r4, _0211EC6C ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #0xc
	mov r3, #0x38
	mov r1, #0x10
	bl  FUN_ov16_0210fba4
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r11
	mov r2, #0xd
	mov r1, #0x10
	bl  FUN_ov16_0210fba4
	str r9, [sp]
	mov r3, #0x100
	str r3, [sp, #4]
	mov r3, #0xc0
	str r3, [sp, #8]
	sub r0, r5, #1
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #0x10
	mov r2, #0xe
	mov r3, r9
	bl  FUN_ov16_0210fba4
	add r0, r10, #0x3000
	str r9, [r0, #0x478]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EC64: .word unk_02099F38
_0211EC68: .word ov42_021200E4
_0211EC6C: .word unk_02099EB4
	arm_func_end FUN_ov42_0211eab4

	arm_func_start FUN_ov42_0211ec70
FUN_ov42_0211ec70: ; 0x0211EC70
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x3000
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211ECC8 ; =0x02099F38
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r6, #0x3000
	mov r5, #0
	str r5, [r0, #0x2c]
	ldr r1, [r0, #0x47c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, #0x3000
	ldr r1, _0211ECCC ; =0x02099EB4
	str r5, [r0, #0x47c]
	ldr r0, [r1]
	mov r1, #0x10
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, pc}
_0211ECC8: .word unk_02099F38
_0211ECCC: .word unk_02099EB4
	arm_func_end FUN_ov42_0211ec70

	arm_func_start FUN_ov42_0211ecd0
FUN_ov42_0211ecd0: ; 0x0211ECD0
	stmfd sp!, {r3, lr}
	add r0, r0, #0x3000
	ldr r2, [r0, #0x478]
	mov r1, #1
	str r1, [r0, #0x480]
	cmp r2, #0
	bne _0211ECFC
	ldr r0, _0211ED08 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211ECFC:
	ldr r0, _0211ED08 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211ED08: .word unk_0209AC44
	arm_func_end FUN_ov42_0211ecd0

	arm_func_start FUN_ov42_0211ed0c
FUN_ov42_0211ed0c: ; 0x0211ED0C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r6, _0211EE28 ; =0x0211FC14
	add r5, r4, #0x3000
	ldr r7, [r6, #4]
	ldr r0, _0211EE2C ; =0x0211FC44
	ldr lr, [r5, #0x2c]
	add r12, sp, #0xc
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldr r0, [r5, #0x484]
	ldr r1, [r6]
	add r0, r0, #1
	str r1, [sp, #4]
	str r7, [sp, #8]
	str r0, [r5, #0x484]
	cmp r0, #3
	ldr r1, [r5, #0x478]
	mov r3, #0
	add r2, sp, #4
	bge _0211ED8C
	mov r0, r3
	str r0, [sp]
	ldr r0, _0211EE30 ; =0x02099F38
	ldr r2, [r2, r1, lsl #2]
	ldr r3, [r12, r1, lsl #3]
	ldr r0, [r0]
	mov r1, lr
	bl  FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211ED8C:
	cmp r0, #6
	bge _0211EDBC
	ldr r0, _0211EE30 ; =0x02099F38
	str r3, [sp]
	add r3, r12, r1, lsl #3
	ldr r2, [r2, r1, lsl #2]
	ldr r0, [r0]
	ldr r3, [r3, #4]
	mov r1, lr
	bl  FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211EDBC:
	cmp r0, #9
	bge _0211EDE8
	ldr r0, _0211EE30 ; =0x02099F38
	str r3, [sp]
	ldr r2, [r2, r1, lsl #2]
	ldr r3, [r12, r1, lsl #3]
	ldr r0, [r0]
	mov r1, lr
	bl  FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211EDE8:
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	str r3, [r5, #0x480]
	str r3, [r5, #0x484]
	cmp r1, #0
	beq _0211EE14
	mov r0, r4
	bl FUN_ov42_0211ee38
	ldr r0, _0211EE34 ; =0x0209AC44
	mov r1, #0x18
	bl FUN_0202cf6c
_0211EE14:
	mov r0, r4
	mov r1, #0
	bl FUN_ov42_0211b228
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211EE28: .word 0x0211FC14
_0211EE2C: .word 0x0211FC44
_0211EE30: .word unk_02099F38
_0211EE34: .word unk_0209AC44
	arm_func_end FUN_ov42_0211ed0c

	arm_func_start FUN_ov42_0211ee38
FUN_ov42_0211ee38: ; 0x0211EE38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r7, #0
	ldr r0, _0211EF34 ; =0x0209BA20
	mov r1, r7
	bl FUN_0205107c
	add r2, r10, #0x1fc
	mov r9, r0
	add r0, r2, #0x400
	mov r1, r7
	mov r2, #0x580
	bl MI_CpuFill8
	add r0, r10, #0x37c
	add r1, r10, #0x1fc
	mov r8, r7
	add r5, r0, #0x800
	add r4, r1, #0x400
	mov r11, r7
_0211EE80:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r6, r0
	beq _0211EF18
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211EF18
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r9
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211EF18
	mov r0, r6
	bl FUN_0206cbf8
	add r1, r10, #0x2000
	ldrb r2, [r1, #0xf3c]
	mov r1, r11
	cmp r2, #0
	ble _0211EF18
	mov r6, #0x58
_0211EED8:
	mul r3, r1, r6
	add r12, r10, r3
	add r12, r12, #0xb00
	ldrh r12, [r12, #0x90]
	cmp r0, r12
	bne _0211EF0C
	mov r0, #0x58
	mla r1, r7, r0, r4
	mov r2, r0
	add r0, r5, r3
	bl MI_CpuCopy8
	add r7, r7, #1
	b _0211EF18
_0211EF0C:
	add r1, r1, #1
	cmp r1, r2
	blt _0211EED8
_0211EF18:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0211EE80
	add r0, r10, #0x3000
	mov r1, #1
	str r1, [r0, #0x488]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF34: .word unk_0209BA20
	arm_func_end FUN_ov42_0211ee38

	arm_func_start FUN_ov42_0211ef38
FUN_ov42_0211ef38: ; 0x0211EF38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r1, r10, #0x3000
	ldr r1, [r1, #0x488]
	cmp r1, #1
	beq _0211EF64
	cmp r1, #2
	beq _0211EFF0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF64:
	add r2, r10, #0x2000
	ldr r1, [r2, #0xf8c]
	eor r1, r1, #1
	str r1, [r2, #0xf8c]
	bl FUN_ov42_0211bca0
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf8c]
	mov r0, r10
	bl FUN_ov42_0211bc3c
	mov r9, #0
	add r0, r10, #0x36c
	ldr r11, _0211F070 ; =0x02120124
	add r6, r0, #0x2c00
	add r5, r10, #0x2000
	mov r8, r9
	mov r7, #1
	mov r4, #0x58
_0211EFA8:
	mla r0, r9, r4, r10
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r0, #0x600
	ldr r3, [r5, #0xf8c]
	ldrh r2, [r0, #0x12]
	ldr r0, [r5, #0xf54]
	mov r1, r11
	add r3, r6, r3, lsl #3
	bl  FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211EFA8
	add r0, r10, #0x3000
	mov r1, #2
	str r1, [r0, #0x488]
_0211EFF0:
	add r1, r10, #0x2000
	add r0, r10, #0x36c
	ldr r1, [r1, #0xf8c]
	add r0, r0, #0x2c00
	add r0, r0, r1, lsl #3
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf8c]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov42_0211bca0
	add r0, r10, #0x2000
	ldr r1, [r0, #0xf8c]
	mov r0, r10
	eor r1, r1, #1
	bl FUN_ov42_0211bc3c
	mov r0, r10
	bl FUN_ov42_0211d8ac
	mov r0, r10
	bl FUN_ov42_0211cb30
	mov r0, r10
	bl FUN_ov42_0211d964
	mov r0, r10
	bl FUN_ov42_0211d0b8
	add r0, r10, #0x3000
	mov r1, #0
	str r1, [r0, #0x488]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F070: .word ov42_02120124
	arm_func_end FUN_ov42_0211ef38

	arm_func_start FUN_ov42_0211f074
FUN_ov42_0211f074: ; 0x0211F074
	mov r2, #0
	add r0, r0, #0x3000
	sub r1, r2, #1
	str r2, [r0, #0x48c]
	str r2, [r0, #0x490]
	str r2, [r0, #0x494]
	str r2, [r0, #0x498]
	str r2, [r0, #0x49c]
	str r2, [r0, #0x4a0]
	str r2, [r0, #0x4a4]
	str r2, [r0, #0x4a8]
	str r2, [r0, #0x4ac]
	str r2, [r0, #0x4b0]
	str r2, [r0, #0x4b4]
	str r1, [r0, #0x4b8]
	str r1, [r0, #0x4bc]
	str r2, [r0, #0x4c0]
	bx lr
	arm_func_end FUN_ov42_0211f074

	arm_func_start FUN_ov42_0211f0bc
FUN_ov42_0211f0bc: ; 0x0211F0BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r1, #6
	str r1, [sp, #0x14]
	mov r1, #0x68
	str r1, [sp]
	mov r1, #0xa8
	str r1, [sp, #4]
	mov r1, #0xf
	mov r6, #0
	str r1, [sp, #8]
	mov r2, #0x190
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x14]
	mov r3, r6
	mov r10, r0
	bl FUN_ov42_0211a9ec
	movs r5, r0
	beq _0211F15C
	mov r4, #1
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r6
	mov r3, r6
	add r0, r5, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r5, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	add r2, r6, #1
	mov r3, r6
	bl  FUN_ov16_0210e720
_0211F15C:
	ldr r0, _0211F228 ; =0x02099F38
	mov r9, #3
	ldr r0, [r0]
	mov r1, r9
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r8, r0
	mov r7, #0
	add r11, sp, #0x14
	mov r4, #0xf
	str r7, [sp, #0x14]
	add r0, r10, #0x3000
	str r8, [r0, #0x34]
	str r7, [sp]
	mov r6, #0x10
	str r6, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r0, #0xc3
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	str r7, [sp, #0x10]
	mov r3, r4
	bl FUN_ov42_0211c290
	str r7, [sp]
	str r6, [sp, #4]
	mov r5, #0x30
	add r4, r4, #0x1e0
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	mov r3, r9
	str r7, [sp, #0x10]
	bl FUN_ov42_0211c290
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
	bl FUN_ov42_0211c290
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F228: .word unk_02099F38
	arm_func_end FUN_ov42_0211f0bc

	arm_func_start FUN_ov42_0211f22c
FUN_ov42_0211f22c: ; 0x0211F22C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r2, #0
	add r1, r6, #0x3000
	sub r0, r2, #1
	mov r5, #2
	ldr r4, _0211F2B0 ; =0x02099F38
	str r2, [r1, #0x48c]
	str r2, [r1, #0x490]
	str r2, [r1, #0x494]
	str r2, [r1, #0x498]
	str r2, [r1, #0x49c]
	str r2, [r1, #0x4a0]
	str r0, [r1, #0x4b8]
	str r0, [r1, #0x4bc]
	ldr r0, [r4]
	ldr r1, [r1, #0x34]
	mov r3, r5
	mov r2, #1
	bl  FUN_ov16_02113f7c
	add r1, r6, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x34]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_02113f7c
	add r1, r6, #0x3000
	ldr r0, [r4]
	ldr r1, [r1, #0x34]
	mov r3, r5
	mov r2, #3
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r4, r5, r6, pc}
_0211F2B0: .word unk_02099F38
	arm_func_end FUN_ov42_0211f22c

	arm_func_start FUN_ov42_0211f2b4
FUN_ov42_0211f2b4: ; 0x0211F2B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	add r0, r9, #0x3000
	ldr r1, [r0, #0x490]
	ldr r4, [r0, #0x34]
	cmp r1, #0
	ldr r6, [r0, #0x498]
	ldr r7, [r0, #0x49c]
	mov r5, #1
	mov r8, #0xf
	bne _0211F30C
	cmp r7, #0x20
	blt _0211F2F0
	cmp r7, #0x90
	ble _0211F338
_0211F2F0:
	ldr r0, _0211F3D0 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F30C:
	ldr r1, [r0, #0x4a0]
	ldr r0, [r0, #0x464]
	cmp r1, r0
	beq _0211F338
	ldr r0, _0211F3D0 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F338:
	add r0, r9, #0x3000
	ldr r0, [r0, #0x494]
	mov r1, r8
	add r0, r0, #1
	bl _s32_div_f
	mov r3, r6, lsl #0x10
	add r0, r9, #0x3000
	str r1, [r0, #0x494]
	mov r2, r7, lsl #0x10
	mov r0, r2, asr #0x10
	ldr r6, _0211F3D0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add r0, r9, #0x3000
	ldr r1, [r0, #0x494]
	add r0, r8, r8, lsr #31
	cmp r1, r0, asr #1
	rsbgt r0, r1, #0
	addgt r1, r0, r8
	add r3, r1, r1, lsl #1
	ldr r0, _0211F3D0 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	and r3, r3, #0xff
	bl  FUN_ov16_02113a80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F3D0: .word unk_02099F38
	arm_func_end FUN_ov42_0211f2b4

	arm_func_start FUN_ov42_0211f3d4
FUN_ov42_0211f3d4: ; 0x0211F3D4
	mov r2, #0
	add r0, r0, #0x3000
	sub r1, r2, #1
	str r2, [r0, #0x4a4]
	str r2, [r0, #0x4a8]
	str r2, [r0, #0x4ac]
	str r2, [r0, #0x4b0]
	str r2, [r0, #0x4b4]
	str r1, [r0, #0x4b8]
	str r1, [r0, #0x4bc]
	bx lr
	arm_func_end FUN_ov42_0211f3d4

	arm_func_start FUN_ov42_0211f400
FUN_ov42_0211f400: ; 0x0211F400
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r2, r10, #0x3000
	ldr r0, [r2, #0x4a8]
	mov r4, #0xb
	add r9, r4, #1
	ldr r8, [r2, #0x4b0]
	add r0, r0, #1
	add r1, r9, #1
	ldr r6, [r2, #0x34]
	ldr r5, [r2, #0x4b4]
	ldr r7, [r2, #0x4ac]
	mov r11, #2
	bl _s32_div_f
	add r0, r10, #0x3000
	str r1, [r0, #0x4a8]
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r7, lsl #0x10
	ldr r7, _0211F54C ; =0x02099F38
	str r0, [sp]
	ldr r0, [r7]
	mov r3, r1, asr #0x10
	mov r1, r6
	add r2, r5, #2
	bl  FUN_ov16_02113b78
	add r0, r10, #0x3000
	ldr r0, [r0, #0x4a8]
	cmp r0, #2
	bgt _0211F498
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F498:
	cmp r0, #5
	bgt _0211F4B8
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F4B8:
	cmp r0, #8
	bgt _0211F4E0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F4E0:
	cmp r0, r4
	bgt _0211F500
	ldr r0, [r7]
	mov r1, r6
	mov r3, r11
	add r2, r5, #2
	bl  FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F500:
	cmp r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov42_0211f90c
	mov r0, r10
	add r1, r10, #0x3000
	mov r2, #1
	str r2, [r1, #0x4c0]
	bl FUN_ov42_0211d964
	mov r0, r10
	bl FUN_ov42_0211d0b8
	mov r0, r10
	mov r1, #0
	bl FUN_ov42_0211b228
	mov r0, r10
	bl FUN_ov42_0211f22c
	mov r0, r10
	bl FUN_ov42_0211f3d4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F54C: .word unk_02099F38
	arm_func_end FUN_ov42_0211f400

	arm_func_start FUN_ov42_0211f550
FUN_ov42_0211f550: ; 0x0211F550
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r2, r5, #0x3000
	mvn r3, #0
	mov r1, #0xf
	str r3, [r2, #0x440]
	bl FUN_ov42_0211ab1c
	add r0, r5, #0x3000
	ldr r0, [r0, #0x444]
	cmp r0, #0
	mov r0, r5
	bne _0211F5BC
	bl FUN_ov42_0211f750
	cmp r0, #1
	bne _0211F5AC
	add r0, r5, #0x3000
	ldr r3, [r0, #0x3f8]
	ldr r2, [r0, #0x448]
	mov r1, #0
	add r2, r3, r2
	str r2, [r0, #0x4b8]
_0211F5A4:
	str r1, [r0, #0x440]
	b _0211F5F4
_0211F5AC:
	ldr r0, _0211F74C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F5BC:
	bl FUN_ov42_0211f758
	cmp r0, #1
	bne _0211F5E4
	add r0, r5, #0x3000
	ldr r3, [r0, #0x3f8]
	ldr r2, [r0, #0x464]
	mov r1, #1
	add r2, r3, r2, lsl #3
	str r2, [r0, #0x4bc]
	b _0211F5A4
_0211F5E4:
	ldr r0, _0211F74C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F5F4:
	add r3, r5, #0x3000
	ldr lr, [r3, #0x444]
	mov r0, #0x88
	mul r12, lr, r0
	ldr r2, [r3, #0x3f8]
	ldr r1, [r3, #0x464]
	mov r4, r2, lsl #4
	ldr r0, [r3, #0x440]
	add r4, r4, #0x20
	str lr, [r3, #0x490]
	str r12, [r3, #0x498]
	str r4, [r3, #0x49c]
	str r1, [r3, #0x4a0]
	cmp r0, #0
	bne _0211F660
	ldr r12, [r3, #0x448]
	mov r4, #1
	add lr, r2, #0x10
	mov r0, r5
	mov r2, r4
	mov r1, #0x19
	str lr, [r3, #0x43c]
	str r12, [r3, #0x460]
_0211F650:
	bl FUN_ov42_0211dd9c
	add r0, r5, #0x3000
	str r4, [r0, #0x444]
	b _0211F72C
_0211F660:
	cmp r0, #1
	bne _0211F72C
	add r0, r2, #0x19
	str r0, [r3, #0x43c]
	str r1, [r3, #0x46c]
	mov r4, #0
	mov r0, #0x58
_0211F67C:
	mla r1, r4, r0, r5
	add r1, r1, #0x600
	ldrh r1, [r1, #0x10]
	cmp r1, #0
	bne _0211F720
	cmp r4, #8
	bge _0211F6B4
	add r1, r5, #0x3000
	ldr r0, [r1, #0x448]
	cmp r0, r4
	ble _0211F6DC
	mov r0, r5
	str r4, [r1, #0x448]
	b _0211F6D8
_0211F6B4:
	add r0, r5, #0x3000
	ldr r2, [r0, #0x448]
	cmp r2, r4
	bge _0211F6D4
	sub r1, r4, #8
	cmp r2, r1
	suble r1, r4, #7
	strle r1, [r0, #0x448]
_0211F6D4:
	mov r0, r5
_0211F6D8:
	bl FUN_ov42_0211e25c
_0211F6DC:
	mov r0, r5
	bl FUN_ov42_0211d8ac
	mov r0, r5
	bl FUN_ov42_0211cb30
	add r3, r5, #0x3000
	ldr r0, [r3, #0x448]
	ldr r2, [r3, #0x3f8]
	sub r1, r4, r0
	ldr r12, [r3, #0x464]
	mov r4, #0
	add lr, r2, #0x19
	mov r0, r5
	mov r2, r4
	str lr, [r3, #0x43c]
	add r1, r1, #0x10
	str r12, [r3, #0x46c]
	b _0211F650
_0211F720:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211F67C
_0211F72C:
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov42_0211b228
	ldr r0, _0211F74C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211F74C: .word unk_0209AC44
	arm_func_end FUN_ov42_0211f550

	arm_func_start FUN_ov42_0211f750
FUN_ov42_0211f750: ; 0x0211F750
	mov r0, #1
	bx lr
	arm_func_end FUN_ov42_0211f750

	arm_func_start FUN_ov42_0211f758
FUN_ov42_0211f758: ; 0x0211F758
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov42_0211e02c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r3, #0
	mov r1, #0x58
_0211F778:
	mla r2, r3, r1, r4
	add r2, r2, #0x600
	ldrh r2, [r2, #0x10]
	cmp r0, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, #0x10
	blt _0211F778
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211f758

	arm_func_start FUN_ov42_0211f7a4
FUN_ov42_0211f7a4: ; 0x0211F7A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0xf
	bl FUN_ov42_0211ab1c
	add r0, r4, #0x3000
	ldr r0, [r0, #0x444]
	cmp r0, #0
	mov r0, r4
	bne _0211F7FC
	bl FUN_ov42_0211f894
	cmp r0, #1
	bne _0211F7EC
	add r0, r4, #0x3000
	ldr r2, [r0, #0x3f8]
	ldr r1, [r0, #0x448]
	add r1, r2, r1
	str r1, [r0, #0x4b8]
	b _0211F830
_0211F7EC:
	ldr r0, _0211F890 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211F7FC:
	bl FUN_ov42_0211f8ac
	cmp r0, #1
	bne _0211F820
	add r0, r4, #0x3000
	ldr r2, [r0, #0x3f8]
	ldr r1, [r0, #0x464]
	add r1, r2, r1, lsl #3
	str r1, [r0, #0x4bc]
	b _0211F830
_0211F820:
	ldr r0, _0211F890 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211F830:
	add r1, r4, #0x3000
	ldr r2, [r1, #0x444]
	mov r0, #0x88
	mul r12, r2, r0
	ldr r0, [r1, #0x3f8]
	mov r2, #1
	mov r0, r0, lsl #4
	add r3, r0, #0x20
	mov r0, r4
	str r12, [r1, #0x4ac]
	str r3, [r1, #0x4b0]
	str r2, [r1, #0x4b4]
	bl FUN_ov42_0211e078
	cmp r0, #1
	addeq r0, r4, #0x3000
	moveq r1, #0
	streq r1, [r0, #0x4b4]
	mov r0, r4
	mov r1, #2
	bl FUN_ov42_0211b228
	ldr r0, _0211F890 ; =0x0209AC44
	mov r1, #0x18
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211F890: .word unk_0209AC44
	arm_func_end FUN_ov42_0211f7a4

	arm_func_start FUN_ov42_0211f894
FUN_ov42_0211f894: ; 0x0211F894
	add r0, r0, #0x3000
	ldr r0, [r0, #0x4b8]
	cmn r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov42_0211f894

	arm_func_start FUN_ov42_0211f8ac
FUN_ov42_0211f8ac: ; 0x0211F8AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov42_0211e02c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r1, r4, #0x3000
	ldr r1, [r1, #0x4bc]
	cmn r1, #1
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r3, #0
	mov r1, #0x58
_0211F8E0:
	mla r2, r3, r1, r4
	add r2, r2, #0x600
	ldrh r2, [r2, #0x10]
	cmp r0, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, #0x10
	blt _0211F8E0
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211f8ac

	arm_func_start FUN_ov42_0211f90c
FUN_ov42_0211f90c: ; 0x0211F90C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r10, r0
	add r0, r10, #0x3000
	ldr r1, [r0, #0x4bc]
	mov r11, #0x58
	mul r9, r1, r11
	ldr r0, [r0, #0x4b8]
	add r3, r10, r9
	mul r8, r0, r11
	add r5, r10, #0x620
	add r0, sp, #0
	mov r2, r11
	mov r1, #0
	ldrb r6, [r5, r8]
	ldrb r7, [r3, #0xba0]
	bl MI_CpuFill8
	add r0, r10, #0x1fc
	add r4, r0, #0x400
	add r1, sp, #0
	mov r2, r11
	add r0, r4, r8
	bl MI_CpuCopy8
	cmp r6, #1
	bne _0211FA04
	add r0, r10, #0x37c
	cmp r7, #1
	add r0, r0, #0x800
	bne _0211F998
	mov r2, r11
	add r0, r0, r9
	add r1, r4, r8
	bl MI_CpuCopy8
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F998:
	add r0, r0, r9
	add r1, r4, r8
	mov r2, #0x10
	bl MI_CpuCopy8
	add r6, r10, r9
	ldr r1, [r6, #0xb8c]
	add r4, r10, r8
	str r1, [r4, #0x60c]
	add r0, r6, #0xb00
	ldrh r3, [r0, #0x90]
	add r1, r4, #0x600
	mov r2, #1
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #0x92]
	add sp, sp, #0x58
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0x94]
	strh r3, [r1, #0x14]
	ldrh r0, [r0, #0x96]
	strh r0, [r1, #0x16]
	ldr r0, [r6, #0xb98]
	str r0, [r4, #0x618]
	strb r2, [r5, r8]
	ldrb r0, [r6, #0xba1]
	strb r0, [r4, #0x621]
	strb r2, [r4, #0x622]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FA04:
	add r0, r10, #0x37c
	cmp r7, #0
	add r0, r0, #0x800
	bne _0211FA2C
	mov r2, r11
	add r0, r0, r9
	add r1, r4, r8
	bl MI_CpuCopy8
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FA2C:
	add r0, r0, r9
	add r1, r4, r8
	mov r2, #0x10
	bl MI_CpuCopy8
	add r5, r10, r9
	ldr r1, [r5, #0xb8c]
	add r4, r10, r8
	str r1, [r4, #0x60c]
	add r0, r5, #0xb00
	ldrh r3, [r0, #0x90]
	add r1, r4, #0x600
	mov r2, #1
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #0x92]
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0x94]
	strh r3, [r1, #0x14]
	ldrh r0, [r0, #0x96]
	strh r0, [r1, #0x16]
	ldrb r0, [r5, #0xba1]
	strb r0, [r4, #0x621]
	strb r2, [r4, #0x622]
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov42_0211f90c

	arm_func_start FUN_ov42_0211fa8c
FUN_ov42_0211fa8c: ; 0x0211FA8C
	mov r12, #0
	mov r1, #0x58
_0211FA94:
	mla r3, r12, r1, r0
	add r2, r3, #0x600
	ldrh r3, [r3, #0x90]
	ldrh r2, [r2, #0x10]
	cmp r3, r2
	movne r0, #1
	bxne lr
	add r12, r12, #1
	cmp r12, #0x10
	blt _0211FA94
	mov r0, #0
	bx lr
	arm_func_end FUN_ov42_0211fa8c

	arm_func_start FUN_ov42_0211fac4
FUN_ov42_0211fac4: ; 0x0211FAC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov42_0211fa8c
	cmp r0, #0
	ldrne r0, _0211FB04 ; =0x0209A454
	movne r1, #1
	strneb r1, [r0, #0x88]
	mov r0, r4
	bl FUN_ov42_0211fb0c
	mov r0, r4
	bl FUN_ov42_0211fb8c
	ldr r0, _0211FB08 ; =0x0209BA20
	mov r1, #0
	mov r2, #3
	bl FUN_02050f4c
	ldmfd sp!, {r4, pc}
_0211FB04: .word unk_0209A454
_0211FB08: .word unk_0209BA20
	arm_func_end FUN_ov42_0211fac4

	arm_func_start FUN_ov42_0211fb0c
FUN_ov42_0211fb0c: ; 0x0211FB0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x40
	ldr r5, _0211FB84 ; =0x0211FCA4
	add r4, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	mov r6, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r5, _0211FB88 ; =0x0209BA20
	mov r7, #0
	mov r4, #2
_0211FB4C:
	ldr r2, [r6, r7, lsl #2]
	mov r0, r5
	mov r1, r4
	bl FUN_0204dea4
	movs r2, r0
	beq _0211FB70
	mov r0, r5
	mov r1, r4
	bl FUN_0204d354
_0211FB70:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211FB4C
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211FB84: .word 0x0211FCA4
_0211FB88: .word unk_0209BA20
	arm_func_end FUN_ov42_0211fb0c

	arm_func_start FUN_ov42_0211fb8c
FUN_ov42_0211fb8c: ; 0x0211FB8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	ldr r8, _0211FBE0 ; =0x0209BA20
	mov r5, r0
	mov r9, r4
	mov r7, #2
	mov r6, #0x58
_0211FBA8:
	mla r0, r4, r6, r5
	add r0, r0, #0x600
	ldrh r2, [r0, #0x10]
	cmp r2, #0
	beq _0211FBD0
	mov r0, r8
	mov r1, r7
	add r3, r4, #1
	str r9, [sp]
	bl FUN_0204c92c
_0211FBD0:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0211FBA8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211FBE0: .word unk_0209BA20
	arm_func_end FUN_ov42_0211fb8c

	arm_func_start FUN_ov42_0211fbe4
FUN_ov42_0211fbe4: ; 0x0211FBE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov42_0211fbe4

	arm_func_start FUN_ov42_0211fbf8
FUN_ov42_0211fbf8: ; 0x0211FBF8
	bx lr
	arm_func_end FUN_ov42_0211fbf8
_0211FBFC:
	.byte 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x90, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xA8, 0xFF, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0xFF, 0x11, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x48, 0xFF, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x38, 0xFF, 0x11, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x38, 0xFE, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x18, 0xFF, 0x11, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x08, 0xFF, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x78, 0xFE, 0x11, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x88, 0xFE, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0xD8, 0xFE, 0x11, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0xA8, 0xFE, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0xC8, 0xFE, 0x11, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0xE8, 0xFE, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x28, 0xFF, 0x11, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x68, 0xFF, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00, 0x88, 0xFF, 0x11, 0x02
	.byte 0x0F, 0x00, 0x00, 0x00, 0x98, 0xFF, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00, 0x58, 0xFE, 0x11, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x48, 0xFE, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00, 0x68, 0xFE, 0x11, 0x02
	.byte 0x13, 0x00, 0x00, 0x00, 0x98, 0xFE, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00, 0xB8, 0xFE, 0x11, 0x02
	.byte 0x15, 0x00, 0x00, 0x00, 0xF8, 0xFE, 0x11, 0x02, 0x16, 0x00, 0x00, 0x00, 0x78, 0xFF, 0x11, 0x02
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov42_0211fdac
FUN_ov42_0211fdac: ; 0x0211FDAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211FDF4 ; =0x0211FE20
	str r0, [r4, #4]
	ldr r0, _0211FDF8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0211FDFC ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FDF4: .word ov42_0211FE20
_0211FDF8: .word 0x00009CCD
_0211FDFC: .word 0x0000EA3C
	arm_func_end FUN_ov42_0211fdac

	.section .sinit, 4
ov42_0211FE00:
	.word FUN_ov42_0211fdac

	.data
	.global ov42_0211FE20
ov42_0211FE20:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x37, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x74, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x38, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x63, 0x30, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x68, 0x6D, 0x64, 0x5F, 0x61, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF8, 0xFB, 0x11, 0x02, 0xE4, 0xFB, 0x11, 0x02, 0x6C, 0xA2, 0x11, 0x02, 0x58, 0xAC, 0x11, 0x02
	.byte 0x00, 0x9F, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xF4, 0xAF, 0x11, 0x02, 0xB4, 0xB1, 0x11, 0x02
	.byte 0x30, 0xA1, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov42_0212002C
ov42_0212002C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov42_02120044
ov42_02120044:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x68, 0x65, 0x6E, 0x73, 0x65, 0x69, 0x2E, 0x53
	.byte 0x50, 0x4C, 0x00, 0x00
	.global ov42_02120064
ov42_02120064:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov42_0212007C
ov42_0212007C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov42_02120094
ov42_02120094:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov42_021200AC
ov42_021200AC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov42_021200C4
ov42_021200C4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x68, 0x65, 0x6E, 0x73, 0x65, 0x69, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00
	.global ov42_021200E4
ov42_021200E4:
	.byte 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xF0, 0x83, 0x58
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x83, 0x82, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xCC
	.byte 0x0A, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x5B, 0x93, 0xAF, 0x2F, 0x82, 0xA8, 0x82
	.byte 0xC8, 0x5D, 0x82, 0xB6, 0x82, 0xC9, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov42_02120124
ov42_02120124:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

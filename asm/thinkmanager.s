
	.include "/macros/function.inc"
	.include "/include/thinkmanager.inc"

    .text
	arm_func_start FUN_0204959c
FUN_0204959c: ; 0x0204959C
	ldr r2, _020495B0 ; =0x02090484
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
_020495B0: .word unk_02090484
	arm_func_end FUN_0204959c

	arm_func_start FUN_020495b4
FUN_020495b4: ; 0x020495B4
	ldr r2, _020495C8 ; =0x02090484
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
_020495C8: .word unk_02090484
	arm_func_end FUN_020495b4

	arm_func_start FUN_020495cc
FUN_020495cc: ; 0x020495CC
	bx lr
	arm_func_end FUN_020495cc

	arm_func_start FUN_020495d0
FUN_020495d0: ; 0x020495D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020495d0

	arm_func_start FUN_020495e4
FUN_020495e4: ; 0x020495E4
	bx lr
	arm_func_end FUN_020495e4

	arm_func_start FUN_020495e8
FUN_020495e8: ; 0x020495E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _02049728 ; =0x020A0640
	mov r6, #0
	ldrb r3, [r0, #0x8f]
	cmp r3, #2
	movls r4, #1
	bls _02049664
	cmp r3, #3
	blo _02049618
	cmp r3, #5
	movls r4, #2
	bls _02049664
_02049618:
	ldrb r3, [r0, #0x8f]
	cmp r3, #6
	blo _02049630
	cmp r3, #8
	movls r4, #3
	bls _02049664
_02049630:
	ldrb r3, [r0, #0x8f]
	cmp r3, #9
	blo _02049648
	cmp r3, #0xb
	movls r4, #4
	bls _02049664
_02049648:
	ldrb r3, [r0, #0x8f]
	cmp r3, #0xc
	blo _02049660
	cmp r3, #0xe
	movls r4, #5
	bls _02049664
_02049660:
	mvn r4, #0
_02049664:
	ldr r3, _0204972C ; =0x020A0648
	sub r5, r4, #1
	ldr r4, [r0, #4]
	ldr r0, [r3, r5, lsl #2]
	cmp r4, r0
	movhs r4, #1
	movlo r4, #0
	cmp r1, #0
	cmpeq r2, #0
	bne _020496C4
	ldr r0, _02049730 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020496C4
	ldr r0, _02049730 ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020496C8
_020496C4:
	mov r4, #0
_020496C8:
	ldr r5, _02049734 ; 0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_02145838
	mov r7, r0
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	bl FUN_ov132_02145a44
	cmp r0, #0
	bne _02049708
	ldr r0, [r5]
	mov r2, r7
	mov r1, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	beq _02049710
_02049708:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02049710:
	ldr r0, [r5]
	bl FUN_ov132_02144f4c
	cmp r0, #0
	movne r0, r6
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02049728: .word unk_020A0640
_0204972C: .word unk_020A0648
_02049730: .word unk_0209A2C0
_02049734: .word gUtilGame
	arm_func_end FUN_020495e8

	arm_func_start FUN_02049738
FUN_02049738: ; 0x02049738
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r4, r0
	mov r7, r6
	adds r0, r4, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r6
	mov r2, #0x58
	bl MI_CpuFill8
	mov r5, r6
_02049760:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020497BC
	bl FUN_0206d64c
	cmp r0, #0
	beq _020497BC
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _020497BC
	mov r0, r8
	bl FUN_ov16_020f0810
	cmp r0, #0
	moveq r1, r6
	addne r1, r7, #0xb
	add r0, r4, r1, lsl #2
	str r8, [r0, #8]
	ldr r0, [r8, #0x88]
	addeq r6, r6, #1
	addne r7, r7, #1
	cmp r0, #0
	strneb r1, [r0, #0x2c]
_020497BC:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02049760
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02049738

	arm_func_start FUN_020497cc
FUN_020497cc: ; 0x020497CC
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_020497cc

	arm_func_start FUN_020497d8
FUN_020497d8: ; 0x020497D8
	mov r3, #0xb
	mla r2, r1, r3, r2
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_020497d8

	arm_func_start FUN_020497ec
FUN_020497ec: ; 0x020497EC
	ldr r12, _02049800 ; =MI_CpuFill8
	add r0, r0, #8
	mov r1, #0
	mov r2, #0x58
	bx r12
_02049800: .word MI_CpuFill8
	arm_func_end FUN_020497ec

	arm_func_start FUN_02049804
FUN_02049804: ; 0x02049804
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_0207318c
	bl FUN_02073e54
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02049804

	arm_func_start FUN_02049818
FUN_02049818: ; 0x02049818
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_0207318c
	bl FUN_02073e68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02049818

	arm_func_start FUN_0204982c
FUN_0204982c: ; 0x0204982C
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204982c

	arm_func_start FUN_02049840
FUN_02049840: ; 0x02049840
	stmfd sp!, {r3, lr}
	ldr r2, _02049898 ; =0x0209A2C0
	ldr r0, [r2, #0x48]
	cmp r0, #0
	blt _0204986C
	ldrsh r1, [r1, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0204986C:
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	blt _02049890
	ldrsh r1, [r1, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02049890:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02049898: .word unk_0209A2C0
	arm_func_end FUN_02049840

	arm_func_start FUN_0204989c
FUN_0204989c: ; 0x0204989C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r0, r1
	bl FUN_02040188
	mov r1, r4
	bl FUN_02040764
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204989c

	arm_func_start FUN_020498b8
FUN_020498b8: ; 0x020498B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r5, r2
	mov r0, r7
	mov r4, r3
	bl FUN_02040188
	mov r1, r5
	mov r6, r0
	bl FUN_02040764
	cmp r0, #0
	beq _02049964
	cmp r7, #0
	ldreq r1, [r6, #4]
	ldr r3, [r5]
	subeq r2, r1, #0x6000
	ldrne r1, [r6, #0xc]
	ldr r12, [r6]
	addne r2, r1, #0x6000
	subs lr, r12, r3
	ldr r0, [r6, #8]
	rsbmi lr, lr, #0
	subs r6, r0, r3
	ldr r0, [r5, #4]
	rsbmi r6, r6, #0
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp lr, r6
	cmplt lr, r0
	ldrlt r0, [r5, #4]
	sublt r1, r12, #0x6000
	strlt r1, [r4]
	strlt r0, [r4, #4]
	blt _0204995C
	cmp r6, lr
	cmplt r6, r0
	ldrlt r0, [r5, #4]
	addlt r1, r12, #0x6000
	strlt r1, [r4]
	strlt r0, [r4, #4]
	strge r3, [r4]
	strge r2, [r4, #4]
_0204995C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02049964:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020498b8

	arm_func_start FUN_0204996c
FUN_0204996c: ; 0x0204996C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r0, r1
	mov r5, r3
	bl FUN_020401a0
	ldr r2, [r0]
	ldr r3, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r0, #4]
	sub r2, r3, r2
	sub r0, r1, r0
	mov r1, r2, asr #4
	mov r4, r0, asr #4
	smull r0, r2, r1, r1
	adds r3, r0, #0x800
	smull r1, r0, r4, r4
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	mov r4, #0
	bl FX_Sqrt
	ldr r1, _020499FC ; =0x00036E66
	ldr r2, _02049A00 ; =0x51EB851F
	mul r3, r5, r1
	smull r1, r5, r2, r3
	mov r1, r3, lsr #0x1f
	add r5, r1, r5, asr #5
	cmp r5, r0, lsl #4
	movgt r4, #1
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020499FC: .word 0x00036E66
_02049A00: .word 0x51EB851F
	arm_func_end FUN_0204996c

	arm_func_start FUN_02049a04
FUN_02049a04: ; 0x02049A04
	ldr r0, _02049A1C ; =0x0209A83C
	cmp r1, #0
	ldrne r0, _02049A20 ; =0x0209A82C
	ldr r12, _02049A24 ; =FUN_02040764
	mov r1, r2
	bx r12
_02049A1C: .word unk_0209A83C
_02049A20: .word unk_0209A82C
_02049A24: .word FUN_02040764
	arm_func_end FUN_02049a04

	arm_func_start FUN_02049a28
FUN_02049a28: ; 0x02049A28
	mov r0, #1
	bx lr
	arm_func_end FUN_02049a28

	arm_func_start FUN_02049a30
FUN_02049a30: ; 0x02049A30
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_02049a30

	arm_func_start FUN_02049a38
FUN_02049a38: ; 0x02049A38
	mov r0, #1
	bx lr
	arm_func_end FUN_02049a38

	.data
	.global unk_02090464
unk_02090464:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_02090484
unk_02090484:
	.word FUN_020495cc
	.word FUN_020495d0
	.word FUN_020495e8
	.word FUN_020497ec
	.word FUN_02049804
	.word FUN_02049818
	.word FUN_0204982c
	.word FUN_02049a38
	.word FUN_0204989c
	.word FUN_0204996c
	.word FUN_020498b8
	.word FUN_02049a04
	.word FUN_02049840
	.word FUN_02049a28
	.word FUN_02049a30

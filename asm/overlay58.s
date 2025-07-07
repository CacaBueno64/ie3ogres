
	.include "/macros/function.inc"
	.include "/include/overlay58.inc"

	.text
	arm_func_start FUN_ov58_02119f00
FUN_ov58_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02119F88 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e980
	ldr r0, _02119F8C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r0, r5
	bl FUN_ov58_0211a8c8
	mov r0, r5
	bl FUN_ov58_0211ab28
	mov r4, #0
	ldr r0, _02119F90 ; =0x020A9C40
	strb r4, [r5, #0x108]
	strb r4, [r5, #0x10f]
	str r4, [r5, #0x110]
	str r0, [r5, #0x118]
	ldrh r3, [r0]
	ldr r2, _02119F94 ; =0x30C30C31
	mov r0, r5
	smull r1, r12, r2, r3
	mov r1, r3, lsr #0x1f
	add r12, r1, r12, asr #2
	strb r12, [r5, #0x10e]
	bl FUN_ov58_0211ad68
	mov r0, r5
	bl FUN_ov58_0211b26c
	str r4, [r5, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F88: .word unk_02099EB4
_02119F8C: .word unk_02099ED4
_02119F90: .word unk_020A9C40
_02119F94: .word 0x30C30C31
	arm_func_end FUN_ov58_02119f00

	arm_func_start FUN_ov58_02119f98
FUN_ov58_02119f98: ; 0x02119F98
	stmfd sp!, {r4, lr}
	ldr r1, _02119FD0 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _02119FD4 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov58_0211ab6c
	mov r0, r4
	mov r1, #4
	bl FUN_ov58_0211a49c
	ldmfd sp!, {r4, pc}
_02119FD0: .word unk_02099EB4
_02119FD4: .word unk_02099ED4
	arm_func_end FUN_ov58_02119f98

	arm_func_start FUN_ov58_02119fd8
FUN_ov58_02119fd8: ; 0x02119FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211A05C
_02119FF0: ; jump table
	b _0211A018 ; case 0
	b _0211A020 ; case 1
	b _0211A028 ; case 2
	b _0211A030 ; case 3
	b _0211A038 ; case 4
	b _0211A040 ; case 5
	b _0211A048 ; case 6
	b _0211A050 ; case 7
	b _0211A05C ; case 8
	b _0211A058 ; case 9
_0211A018:
	bl FUN_ov58_0211b36c
	b _0211A05C
_0211A020:
	bl FUN_ov58_0211b308
	b _0211A05C
_0211A028:
	bl FUN_ov58_0211a450
	b _0211A05C
_0211A030:
	bl FUN_ov58_0211a540
	b _0211A05C
_0211A038:
	bl FUN_ov58_0211acf4
	b _0211A05C
_0211A040:
	bl FUN_ov58_0211a614
	b _0211A05C
_0211A048:
	bl FUN_ov58_0211a698
	b _0211A05C
_0211A050:
	bl FUN_ov58_0211ac00
	b _0211A05C
_0211A058:
	bl FUN_ov58_0211b090
_0211A05C:
	ldr r0, _0211A0CC ; =0x02099ED4
	ldr r5, _0211A0D0 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A094
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A0A0
_0211A094:
	bl _ffltu
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A0A0:
	bl FUN_0201fdac
	ldr r2, _0211A0D4 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldr r0, [r4, #8]
	cmp r0, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov58_0211b0c4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A0CC: .word unk_02099ED4
_0211A0D0: .word unk_0209A110
_0211A0D4: .word unk_02099F58
	arm_func_end FUN_ov58_02119fd8

	arm_func_start FUN_ov58_0211a0d8
FUN_ov58_0211a0d8: ; 0x0211A0D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r6, r1
	cmp r0, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _0211A1E4 ; =0x02099EB4
	ldr r0, [r5]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	mov r1, r6
	bl  FUN_ov16_0210f400
	ldr r0, _0211A1E8 ; =0x0209A454
	ldr r0, [r0]
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	tst r6, #2
	beq _0211A164
	ldrb r0, [r4, #0x10e]
	cmp r0, #0
	cmpne r0, #0xa
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x11c]
	mov r0, r0, lsr #0x13
	tst r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r2, #0x13
	add r1, r2, #0
	mov r0, r4
	and r1, r1, #0xff
	str r2, [r4, #0x110]
	bl FUN_ov58_0211ae80
	ldmfd sp!, {r4, r5, r6, pc}
_0211A164:
	tst r6, #1
	beq _0211A184
	ldr r1, [r4, #0x110]
	mov r0, r4
	add r1, r1, #0
	and r1, r1, #0xff
	bl FUN_ov58_0211ae80
	ldmfd sp!, {r4, r5, r6, pc}
_0211A184:
	tst r6, #0x40
	beq _0211A19C
	mov r0, r4
	mov r1, #0
	bl FUN_ov58_0211a3b0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A19C:
	tst r6, #0x80
	beq _0211A1B4
	mov r0, r4
	mov r1, #1
	bl FUN_ov58_0211a3b0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1B4:
	tst r6, #0x20
	beq _0211A1CC
	mov r0, r4
	mov r1, #2
	bl FUN_ov58_0211a3b0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1CC:
	tst r6, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #3
	bl FUN_ov58_0211a3b0
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1E4: .word unk_02099EB4
_0211A1E8: .word unk_0209A454
	arm_func_end FUN_ov58_0211a0d8

	arm_func_start FUN_ov58_0211a1ec
FUN_ov58_0211a1ec: ; 0x0211A1EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #8
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	str r1, [sp, #4]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211A25C
	ldrb r0, [r5, #0x10f]
	cmp r0, #0
	bne _0211A260
	mov r0, #1
	strb r0, [r5, #0x10f]
	str r1, [sp]
	ldr r0, _0211A3A4 ; =0x02099EB4
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r0]
	add r3, sp, #4
	bl  FUN_ov16_0210ecb8
	ldr r0, [sp, #4]
	str r0, [r5, #0x100]
	b _0211A260
_0211A25C:
	strb r1, [r5, #0x10f]
_0211A260:
	ldr r6, _0211A3A4 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211A38C
_0211A284: ; jump table
	b _0211A38C ; case 0
	b _0211A29C ; case 1
	b _0211A2FC ; case 2
	b _0211A39C ; case 3
	b _0211A39C ; case 4
	b _0211A39C ; case 5
_0211A29C:
	ldrh r0, [r4, #6]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	cmp r0, #1
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x14
	addgt sp, sp, #8
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r5, #0x108]
	str r0, [r5, #0xfc]
	cmp r1, #0
	ldr r1, [r5, #0x110]
	streqb r7, [r5, #0x108]
	add r0, r5, r1, lsl #2
	str r1, [r5, #0x104]
	ldr r1, [r0, #0x94]
	mov r0, r5
	bl FUN_ov58_0211b24c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2FC:
	ldrb r0, [r5, #0x108]
	cmp r0, #0
	ldrne r0, _0211A3A8 ; =0x0209A454
	ldrne r0, [r0]
	cmpne r0, #1
	beq _0211A37C
	ldr r1, [r5, #0xfc]
	ldr r0, [r5, #0xf4]
	cmp r1, r0
	bne _0211A334
	ldr r1, [r5, #0x110]
	mov r0, r5
	bl FUN_ov58_0211b280
	b _0211A37C
_0211A334:
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	ldr r2, [r5, #0x110]
	ldr r1, [r5, #0x104]
	mov r4, r0
	str r2, [r5, #0xf4]
	add r0, r5, r1, lsl #2
	ldr r1, [r0, #0x94]
	mov r0, r5
	bl FUN_ov58_0211b24c
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x94]
	mov r0, r5
	bl FUN_ov58_0211b24c
	ldr r0, _0211A3AC ; =0x0209AC44
	mov r1, #8
	str r4, [r5, #0x110]
	bl FUN_0202cf6c
_0211A37C:
	mov r0, #0
	add sp, sp, #8
	strb r0, [r5, #0x10f]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A38C:
	ldr r1, [r5, #0x110]
	mov r0, #0
	str r1, [r5, #0xf4]
	strb r0, [r5, #0x108]
_0211A39C:
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3A4: .word unk_02099EB4
_0211A3A8: .word unk_0209A454
_0211A3AC: .word unk_0209AC44
	arm_func_end FUN_ov58_0211a1ec

	arm_func_start FUN_ov58_0211a3b0
FUN_ov58_0211a3b0: ; 0x0211A3B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0x18]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x110]
	mov r0, #0x24
	sub r2, r2, #1
	mla r0, r2, r0, r3
	mov r2, #0
	add r1, r0, r1, lsl #3
_0211A3DC:
	add r0, r2, r1
	ldrb r4, [r0, #4]
	cmp r4, #0
	beq _0211A438
	ldr r0, [r5, #0x11c]
	mov r0, r0, lsr r4
	tst r0, #1
	beq _0211A438
	ldr r0, _0211A448 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r5, #0x110]
	mov r0, r5
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x94]
	bl FUN_ov58_0211b24c
	mov r0, r5
	bl FUN_ov58_0211b26c
	ldr r0, [r5, #0x110]
	str r4, [r5, #0xf4]
	str r0, [r5, #0x104]
	str r4, [r5, #0x110]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A438:
	add r2, r2, #1
	cmp r2, #8
	blt _0211A3DC
	ldmfd sp!, {r3, r4, r5, pc}
_0211A448: .word unk_0209AC44
	arm_func_end FUN_ov58_0211a3b0

	arm_func_start FUN_ov58_0211a44c
FUN_ov58_0211a44c: ; 0x0211A44C
	bx lr
	arm_func_end FUN_ov58_0211a44c

	arm_func_start FUN_ov58_0211a450
FUN_ov58_0211a450: ; 0x0211A450
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	ldrb r0, [r5, #0x10e]
	ldr r3, [r5, #0x24]
	add r4, sp, #0
	rsb r2, r0, r0, lsl #5
	ldr r1, _0211A498 ; =0x0211B72C
	mov r0, r4
	add r2, r3, r2
	bl STD_TSNPrintf
	mov r0, r4
	add r1, r5, #0xc
	bl  FUN_ov16_020f316c
	mov r0, #3
	str r0, [r5, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_0211A498: .word ov58_0211B72C
	arm_func_end FUN_ov58_0211a450

	arm_func_start FUN_ov58_0211a49c
FUN_ov58_0211a49c: ; 0x0211A49C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	cmp r1, #4
	blo _0211A500
	mov r9, #0
	add r8, r4, #0xc
	mov r7, #1
	mov r6, r9
	mov r5, #0xc
_0211A4C0:
	mul r10, r9, r5
	mov r1, r7
	add r0, r8, r10
	bl  FUN_ov16_020f338c
	add r0, r8, r10
	bl  FUN_ov16_020f33fc
	add r0, r4, r10
	str r6, [r0, #0xc]
	str r6, [r0, #0x10]
	strb r6, [r0, #0x14]
	strb r6, [r0, #0x15]
	add r9, r9, #1
	strb r6, [r0, #0x16]
	cmp r9, #4
	blt _0211A4C0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A500:
	mov r0, #0xc
	mul r6, r1, r0
	add r5, r4, #0xc
	add r0, r5, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r5, r6
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r5, r6]
	add r0, r4, r6
	str r1, [r0, #0x10]
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x15]
	strb r1, [r0, #0x16]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov58_0211a49c

	arm_func_start FUN_ov58_0211a540
FUN_ov58_0211a540: ; 0x0211A540
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x134
	mov r4, r0
	add r0, r4, #0xc
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x134
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r6, [r4, #0x30]
	mov r12, #0
	add r5, r6, #2
	mov r1, r12
	add r3, sp, #4
_0211A578:
	ldrb r0, [r6]
	cmp r12, r0
	strge r1, [r3, r12, lsl #3]
	addge r0, r3, r12, lsl #3
	strge r1, [r0, #4]
	bge _0211A5AC
	rsb r2, r12, r12, lsl #4
	add r0, r5, r2
	str r0, [r3, r12, lsl #3]
	add r0, r6, r2
	ldrb r2, [r0, #1]
	add r0, r3, r12, lsl #3
	str r2, [r0, #4]
_0211A5AC:
	add r12, r12, #1
	cmp r12, #0x16
	blt _0211A578
	ldrb r0, [r4, #0x10e]
	ldr r3, [r4, #0x24]
	add r6, sp, #0xb4
	rsb r2, r0, r0, lsl #5
	ldr r1, _0211A610 ; =0x0211B744
	mov r0, r6
	add r2, r3, r2
	bl STD_TSNPrintf
	mov r5, #0
	str r5, [sp]
	ldr r1, [r4, #0xc]
	add r2, sp, #4
	mov r0, r6
	add r3, r4, #0x3c
	bl  FUN_ov16_020f5450
	mov r0, r4
	mov r1, r5
	bl FUN_ov58_0211a49c
	mov r0, #4
	str r0, [r4, #8]
	add sp, sp, #0x134
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A610: .word ov58_0211B744
	arm_func_end FUN_ov58_0211a540

	arm_func_start FUN_ov58_0211a614
FUN_ov58_0211a614: ; 0x0211A614
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211A694 ; =0x02099F38
	b _0211A680
_0211A62C:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A67C
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A67C
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211A67C:
	add r7, r7, #1
_0211A680:
	cmp r7, #0x16
	blt _0211A62C
	mov r0, #6
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A694: .word unk_02099F38
	arm_func_end FUN_ov58_0211a614

	arm_func_start FUN_ov58_0211a698
FUN_ov58_0211a698: ; 0x0211A698
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov58_0211a6c0
	mov r0, r4
	bl FUN_ov58_0211a724
	mov r0, r4
	bl FUN_ov58_0211a7a4
	mov r0, #7
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov58_0211a698

	arm_func_start FUN_ov58_0211a6c0
FUN_ov58_0211a6c0: ; 0x0211A6C0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r1, _0211A720 ; =0x02099F38
	mov r4, #1
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_02112724
	mov r3, #0
	mov r1, r0
	str r3, [sp, #0x14]
	str r1, [r5, #0x94]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x1f4
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	str r4, [sp, #0x10]
	bl FUN_ov58_0211aa68
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211A720: .word unk_02099F38
	arm_func_end FUN_ov58_0211a6c0

	arm_func_start FUN_ov58_0211a724
FUN_ov58_0211a724: ; 0x0211A724
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r5, #1
	ldr r4, [r7, #0x18]
	mov r6, r5
	mov r10, #0x190
	mov r9, r5
	mov r8, #0
_0211A748:
	ldr r0, [r7, #0x11c]
	mov r0, r0, lsr r5
	tst r0, #1
	beq _0211A788
	ldrb r2, [r4]
	mov r0, r7
	mov r1, r6
	str r2, [sp]
	ldrb r12, [r4, #1]
	mov r2, r6
	mov r3, r8
	str r12, [sp, #4]
	str r6, [sp, #8]
	str r10, [sp, #0xc]
	str r9, [sp, #0x10]
	bl FUN_ov58_0211a8e0
_0211A788:
	add r6, r6, #1
	cmp r6, #0x14
	add r5, r5, #1
	add r4, r4, #0x24
	ble _0211A748
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov58_0211a724

	arm_func_start FUN_ov58_0211a7a4
FUN_ov58_0211a7a4: ; 0x0211A7A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r2, _0211A8C4 ; =0x02099F38
	mov r4, r0
	mov r1, #1
	ldr r0, [r2]
	mov r2, r1
	bl  FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r12, [r4, #0x18]
	mov r1, r0
	cmp r12, #0
	addeq sp, sp, #0x18
	str r1, [r4, #0xe8]
	ldmeqfd sp!, {r4, pc}
	ldr r3, [r4, #0x114]
	mov r0, #0x24
	add r2, r3, #0
	sub r2, r2, #1
	mla r0, r2, r0, r12
	cmp r3, #0x14
	cmpne r3, #0x13
	bne _0211A828
	ldrb r2, [r0]
	ldrb r0, [r0, #1]
	add r3, r2, #8
	add r2, r0, #8
	mov r0, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r12, r0, asr #0x10
	mov lr, r2, asr #0x10
	b _0211A894
_0211A828:
	ldrb r2, [r4, #0x10e]
	cmp r2, #0
	bne _0211A854
	ldrb r3, [r0]
	ldrb r2, [r0, #2]
	ldrb lr, [r0, #1]
	add r0, r3, r2
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r12, r0, asr #0x10
	b _0211A894
_0211A854:
	ldrb r2, [r0, #2]
	ldrb r12, [r0]
	ldrb r3, [r0, #3]
	add r2, r2, r2, lsr #31
	add r2, r12, r2, asr #1
	mov r2, r2, lsl #0x10
	cmp r3, #4
	mov r12, r2, asr #0x10
	ldrlsb lr, [r0, #1]
	bls _0211A894
	ldrb r2, [r0, #1]
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	add r0, r2, r0, asr #2
	mov r0, r0, lsl #0x10
	mov lr, r0, asr #0x10
_0211A894:
	mov r0, #0
	stmia sp, {r0, r12, lr}
	mov r3, #0x32
	mov r0, r4
	str r3, [sp, #0xc]
	mov r4, #1
	add r2, sp, #0x14
	mov r3, #0x15
	str r4, [sp, #0x10]
	bl FUN_ov58_0211aa68
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_0211A8C4: .word unk_02099F38
	arm_func_end FUN_ov58_0211a7a4

	arm_func_start FUN_ov58_0211a8c8
FUN_ov58_0211a8c8: ; 0x0211A8C8
	ldr r12, _0211A8DC ; =MI_CpuFill8
	add r0, r0, #0xc
	mov r1, #0
	mov r2, #0x30
	bx r12
_0211A8DC: .word MI_CpuFill8
	arm_func_end FUN_ov58_0211a8c8

	arm_func_start FUN_ov58_0211a8e0
FUN_ov58_0211a8e0: ; 0x0211A8E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211AA60 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r5, #1
	mov r9, r1
	mov r8, r2
	mov r1, r5
	mov r2, r5
	mov r7, r3
	mov r11, #0
	mov r6, #0x64
	bl  FUN_ov16_02112724
	add r2, r10, r9, lsl #2
	add r1, r10, r8, lsl #2
	str r0, [r2, #0x94]
	ldr r1, [r1, #0x3c]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r7
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
	mov r1, r8
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	stmia sp, {r5, r6}
	ldr r0, _0211AA64 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [sp, #0x40]
	strb r11, [r4, #0x10]
	strb r11, [r4, #0xf]
	strh r11, [r4, #0xc]
	cmp r0, #1
	addne sp, sp, #8
	strb r11, [r4, #0x11]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r7
	mov r3, r11
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	add r2, r7, #1
	mov r1, r11
	mov r3, r11
	bl  FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA60: .word unk_02099F38
_0211AA64: .word unk_02099EB4
	arm_func_end FUN_ov58_0211a8e0

	arm_func_start FUN_ov58_0211aa68
FUN_ov58_0211aa68: ; 0x0211AA68
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x3c]
	ldr r6, _0211AB24 ; =0x02099F38
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
_0211AB24: .word unk_02099F38
	arm_func_end FUN_ov58_0211aa68

	arm_func_start FUN_ov58_0211ab28
FUN_ov58_0211ab28: ; 0x0211AB28
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x58
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3c
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x94
	bl MI_CpuFill8
	ldr r0, _0211AB68 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB68: .word unk_02099F38
	arm_func_end FUN_ov58_0211ab28

	arm_func_start FUN_ov58_0211ab6c
FUN_ov58_0211ab6c: ; 0x0211AB6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211ABFC ; =0x02099F38
	b _0211ABA8
_0211AB84:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x94]
	cmp r1, #0
	beq _0211ABA4
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x94]
_0211ABA4:
	add r4, r4, #1
_0211ABA8:
	cmp r4, #0x16
	blt _0211AB84
	mov r4, #0
	mov r7, r4
	ldr r6, _0211ABFC ; =0x02099F38
	b _0211ABE4
_0211ABC0:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211ABE0
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x3c]
_0211ABE0:
	add r4, r4, #1
_0211ABE4:
	cmp r4, #0x16
	blt _0211ABC0
	ldr r0, _0211ABFC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ABFC: .word unk_02099F38
	arm_func_end FUN_ov58_0211ab6c

	arm_func_start FUN_ov58_0211ac00
FUN_ov58_0211ac00: ; 0x0211AC00
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211AC54 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	bl FUN_ov58_0211ac58
	mov r0, #8
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211AC54: .word unk_02099ED4
	arm_func_end FUN_ov58_0211ac00

	arm_func_start FUN_ov58_0211ac58
FUN_ov58_0211ac58: ; 0x0211AC58
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r1, #0
	mov r4, r0
	str r1, [sp, #8]
	ldr r12, [r4, #0x18]
	mov lr, #1
	b _0211ACB4
_0211AC78:
	ldr r0, [r4, #0x110]
	cmp lr, r0
	bne _0211ACAC
	ldrb r0, [r12, #2]
	ldrb r1, [r12, #3]
	ldrb r3, [r12]
	add r0, r0, r0, lsr #31
	ldrb r2, [r12, #1]
	add r1, r1, r1, lsr #31
	add r3, r3, r0, asr #1
	add r0, r2, r1, asr #1
	strh r3, [sp, #4]
	strh r0, [sp, #6]
_0211ACAC:
	add r12, r12, #0x24
	add lr, lr, #1
_0211ACB4:
	ldr r0, [r4, #0x110]
	cmp lr, r0
	ble _0211AC78
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211ACF0 ; =0x02099EB4
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r0]
	add r3, sp, #8
	bl  FUN_ov16_0210ecb8
	ldr r0, [sp, #8]
	str r0, [r4, #0x100]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211ACF0: .word unk_02099EB4
	arm_func_end FUN_ov58_0211ac58

	arm_func_start FUN_ov58_0211acf4
FUN_ov58_0211acf4: ; 0x0211ACF4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	add r0, r5, #0xc
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x80
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x10e]
	ldr r1, [r5, #0x24]
	add r4, sp, #0
	rsb r0, r0, r0, lsl #5
	add r2, r1, r0
	ldr r1, _0211AD64 ; =0x0211B75C
	mov r0, r4
	add r2, r2, #8
	bl STD_TSNPrintf
	mov r0, r4
	add r1, r5, #0x18
	bl  FUN_ov16_020f316c
	mov r2, #5
	mov r0, r5
	mov r1, #2
	str r2, [r5, #8]
	bl FUN_ov58_0211a49c
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD64: .word ov58_0211B75C
	arm_func_end FUN_ov58_0211acf4

	arm_func_start FUN_ov58_0211ad68
FUN_ov58_0211ad68: ; 0x0211AD68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	ldr r1, [r5, #0x118]
	ldr r3, _0211AE78 ; =0x30C30C31
	ldrh r4, [r1]
	mov r6, #0x15
	mov r1, r4, lsr #0x1f
	smull r2, r7, r3, r4
	add r7, r1, r7, asr #2
	smull r1, r2, r6, r7
	sub r7, r4, r1
	str r7, [r5, #0x110]
	bl FUN_ov58_0211b460
	ldr r2, [r5, #0x110]
	ldrb r4, [r5, #0x10e]
	ldr r7, _0211AE7C ; =0x020A9C40
	mov r9, #0
	mov r0, r7
	mov r1, r4
	str r9, [r5, #0x11c]
	str r2, [r5, #0xf4]
	str r2, [r5, #0xfc]
	bl FUN_0204615c
	mov r8, r0
	cmp r8, #0
	ble _0211AE00
	mul r6, r4, r6
	mov r10, #1
_0211ADD8:
	mov r0, r7
	add r1, r9, r6
	bl FUN_02046178
	cmp r0, #0
	ldrne r0, [r5, #0x11c]
	orrne r0, r0, r10, lsl r9
	add r9, r9, #1
	strne r0, [r5, #0x11c]
	cmp r9, r8
	blt _0211ADD8
_0211AE00:
	mov r6, #1
	ldr r9, _0211AE7C ; =0x020A9C40
	mov r10, #0
	mov r7, r6
	mov r8, #0x11
_0211AE14:
	mov r0, r9
	add r1, r10, #0x12
	bl FUN_02046178
	cmp r0, #0
	beq _0211AE68
	cmp r4, #0
	cmpeq r10, #1
	bne _0211AE58
	mov r0, r9
	mov r1, r8
	bl FUN_02046178
	cmp r0, #0
	ldrne r1, [r5, #0x11c]
	addne r0, r10, #0x12
	orrne r0, r1, r7, lsl r0
	strne r0, [r5, #0x11c]
	b _0211AE68
_0211AE58:
	ldr r1, [r5, #0x11c]
	add r0, r10, #0x12
	orr r0, r1, r6, lsl r0
	str r0, [r5, #0x11c]
_0211AE68:
	add r10, r10, #1
	cmp r10, #3
	blt _0211AE14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AE78: .word 0x30C30C31
_0211AE7C: .word unk_020A9C40
	arm_func_end FUN_ov58_0211ad68

	arm_func_start FUN_ov58_0211ae80
FUN_ov58_0211ae80: ; 0x0211AE80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B088 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldrb r2, [r5, #0x10e]
	mov r1, #0x15
	ldr r0, _0211B08C ; =0x020A9C40
	mla r1, r2, r1, r4
	bl FUN_020461b4
	mov r6, r0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldrb r0, [r5, #0x10e]
	cmp r0, #0
	bne _0211AED8
	cmp r4, #0x12
	blo _0211AF10
_0211AED8:
	cmp r0, #0xa
	bne _0211AEE8
	cmp r4, #0xf
	blo _0211AF10
_0211AEE8:
	cmp r0, #0
	beq _0211AEF8
	cmp r4, #0x13
	beq _0211AF10
_0211AEF8:
	cmp r0, #0
	cmpeq r4, #0x13
	beq _0211AF10
	cmp r0, #0xa
	cmpeq r4, #0x13
	bne _0211B074
_0211AF10:
	mov r0, r5
	bl FUN_ov58_0211b414
	cmp r4, #0x13
	bne _0211AFF4
	mov r6, #0
	ldr r4, _0211B08C ; =0x020A9C40
	mov r7, r6
_0211AF2C:
	mov r0, r4
	mov r1, r7
	bl FUN_02046178
	cmp r0, #0
	movne r6, #1
	bne _0211AF50
	add r7, r7, #1
	cmp r7, #0x15
	blt _0211AF2C
_0211AF50:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r5, #0x10e]
	cmp r1, #0
	cmpne r1, #0xa
	ldreq r0, [r5, #0x118]
	moveq r1, #0x13
	streqh r1, [r0]
	beq _0211AFB4
	cmp r1, #0
	beq _0211AF84
	cmp r1, #0xa
	blo _0211AF8C
_0211AF84:
	cmp r1, #0x18
	bne _0211AFA4
_0211AF8C:
	ldr r0, [r5, #0x118]
	cmp r1, #0x18
	moveq r1, #0xa
	streqh r1, [r0]
	strneh r1, [r0]
	b _0211AFB4
_0211AFA4:
	cmp r1, #0xa
	ldrhi r0, [r5, #0x118]
	subhi r1, r1, #0xa
	strhih r1, [r0]
_0211AFB4:
	ldrb r0, [r5, #0x10e]
	cmp r0, #0xa
	blo _0211AFC8
	cmp r0, #0x18
	bne _0211AFDC
_0211AFC8:
	cmp r0, #0
	moveq r0, #0xa
	streqb r0, [r5, #0x10e]
	movne r0, #0
	b _0211AFEC
_0211AFDC:
	cmp r0, #0xa
	moveq r0, #0
	streqb r0, [r5, #0x10e]
	movne r0, #0xa
_0211AFEC:
	strneb r0, [r5, #0x10e]
	b _0211B054
_0211AFF4:
	cmp r6, #0
	bne _0211B040
	ldrb r0, [r5, #0x10e]
	cmp r0, #0xa
	addeq r0, r4, #0xa
	streqb r0, [r5, #0x10e]
	beq _0211B020
	cmp r4, #0xa
	moveq r0, #0x18
	streqb r0, [r5, #0x10e]
	strneb r4, [r5, #0x10e]
_0211B020:
	mov r0, #0x15
	mul r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, [r5, #0x118]
	add r1, r1, #0x13
	strh r1, [r0]
	b _0211B054
_0211B040:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov58_0211b3c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B054:
	add r0, r5, #0xc
	mov r1, #0x16
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov58_0211b2bc
	mov r0, r5
	bl FUN_ov58_0211b390
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B074:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov58_0211b3c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B088: .word unk_0209AC44
_0211B08C: .word unk_020A9C40
	arm_func_end FUN_ov58_0211ae80

	arm_func_start FUN_ov58_0211b090
FUN_ov58_0211b090: ; 0x0211B090
	stmfd sp!, {r4, lr}
	ldr r1, _0211B0C0 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #0xa
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211B0C0: .word unk_02099ED4
	arm_func_end FUN_ov58_0211b090

	arm_func_start FUN_ov58_0211b0c4
FUN_ov58_0211b0c4: ; 0x0211B0C4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r5, _0211B1D4 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r5]
	mov r6, #0
	str r6, [sp, #8]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B1A4
	ldr r0, [r5]
	add r1, sp, #4
	bl  FUN_ov16_0210f48c
	str r6, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r5]
	add r3, sp, #8
	bl  FUN_ov16_0210ecb8
	ldr r1, [r4, #0x100]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _0211B174
	cmp r1, #0
	bne _0211B144
	ldr r1, [r4, #0x110]
	mov r0, r4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x94]
	bl FUN_ov58_0211b24c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B144:
	ldr r1, [r4, #0x11c]
	ldr r0, [r4, #0xfc]
	mov r1, r1, lsr r0
	tst r1, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x94]
	mov r0, r4
	bl FUN_ov58_0211b1d8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B174:
	ldr r1, [r4, #0x110]
	mov r0, r4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x94]
	bl FUN_ov58_0211b24c
	ldr r1, [r4, #0xfc]
	mov r0, r4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x94]
	bl FUN_ov58_0211b24c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B1A4:
	ldr r1, [r4, #0x11c]
	ldr r0, [r4, #0x110]
	mov r1, r1, lsr r0
	tst r1, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x94]
	mov r0, r4
	bl FUN_ov58_0211b1d8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B1D4: .word unk_02099EB4
	arm_func_end FUN_ov58_0211b0c4

	arm_func_start FUN_ov58_0211b1d8
FUN_ov58_0211b1d8: ; 0x0211B1D8
	ldrb r2, [r0, #0xf0]
	cmp r2, #0
	ldr r2, [r0, #0xec]
	addne r2, r2, #2
	subeq r2, r2, #2
	str r2, [r0, #0xec]
	mov r2, r2
	cmp r2, #0x1f
	movgt r3, #0x1f
	movgt r2, #0
	strgt r3, [r0, #0xec]
	strgtb r2, [r0, #0xf0]
	bgt _0211B220
	cmp r2, #0x10
	movlt r3, #0x10
	movlt r2, #1
	strlt r3, [r0, #0xec]
	strltb r2, [r0, #0xf0]
_0211B220:
	ldr r3, [r0, #0xec]
	ldr r0, _0211B244 ; =0x02099F38
	orr r2, r3, r3, lsl #5
	orr r2, r2, r3, lsl #10
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	ldr r12, _0211B248 ; = FUN_ov16_02114204
	mov r2, r2, lsr #0x10
	bx r12
_0211B244: .word unk_02099F38
_0211B248: .word  FUN_ov16_02114204
	arm_func_end FUN_ov58_0211b1d8

	arm_func_start FUN_ov58_0211b24c
FUN_ov58_0211b24c: ; 0x0211B24C
	ldr r0, _0211B260 ; =0x02099F38
	ldr r2, _0211B264 ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B268 ; = FUN_ov16_02114204
	bx r12
_0211B260: .word unk_02099F38
_0211B264: .word 0x00007FFF
_0211B268: .word  FUN_ov16_02114204
	arm_func_end FUN_ov58_0211b24c

	arm_func_start FUN_ov58_0211b26c
FUN_ov58_0211b26c: ; 0x0211B26C
	mov r2, #0x1f
	mov r1, #0
	str r2, [r0, #0xec]
	strb r1, [r0, #0xf0]
	bx lr
	arm_func_end FUN_ov58_0211b26c

	arm_func_start FUN_ov58_0211b280
FUN_ov58_0211b280: ; 0x0211B280
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x110]
	mov r4, r1
	cmp r4, r2
	bne _0211B2A4
	and r1, r2, #0xff
	bl FUN_ov58_0211ae80
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2A4:
	ldr r0, _0211B2B8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r5, #0x110]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2B8: .word unk_0209AC44
	arm_func_end FUN_ov58_0211b280

	arm_func_start FUN_ov58_0211b2bc
FUN_ov58_0211b2bc: ; 0x0211B2BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov58_0211ab6c
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov58_0211a49c
	ldr r4, _0211B304 ; =0x02099EB4
	b _0211B2F8
_0211B2E0:
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_0210eb3c
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_0211B2F8:
	cmp r5, #0x15
	blo _0211B2E0
	ldmfd sp!, {r3, r4, r5, pc}
_0211B304: .word unk_02099EB4
	arm_func_end FUN_ov58_0211b2bc

	arm_func_start FUN_ov58_0211b308
FUN_ov58_0211b308: ; 0x0211B308
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	add r0, r5, #0xc
	mov r1, #4
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x80
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x10e]
	ldr r3, [r5, #0x24]
	add r4, sp, #0
	rsb r2, r0, r0, lsl #5
	ldr r1, _0211B368 ; =0x0211B770
	mov r0, r4
	add r2, r3, r2
	bl STD_TSNPrintf
	mov r0, r4
	add r1, r5, #0x30
	bl  FUN_ov16_020f316c
	mov r0, #2
	str r0, [r5, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_0211B368: .word ov58_0211B770
	arm_func_end FUN_ov58_0211b308

	arm_func_start FUN_ov58_0211b36c
FUN_ov58_0211b36c: ; 0x0211B36C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211B38C ; =0x0211B78C
	add r1, r4, #0x24
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211B38C: .word ov58_0211B78C
	arm_func_end FUN_ov58_0211b36c

	arm_func_start FUN_ov58_0211b390
FUN_ov58_0211b390: ; 0x0211B390
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	add r1, r4, #0x100
	str r2, [r4, #8]
	strb r2, [r4, #0x108]
	strb r2, [r4, #0x10f]
	str r2, [r4, #0x110]
	strh r2, [r1, #0xa]
	bl FUN_ov58_0211b26c
	mov r0, r4
	bl FUN_ov58_0211ad68
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov58_0211b390

	arm_func_start FUN_ov58_0211b3c4
FUN_ov58_0211b3c4: ; 0x0211B3C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r12, [r5, #0x10e]
	mov r3, #0x15
	ldr r0, _0211B40C ; =0x020A9C40
	mla r1, r12, r3, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r4, r2
	bl FUN_02046304
	ldr r0, _0211B410 ; =0x020AF81C
	mov r1, r4
	bl FUN_02044734
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x82
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211B40C: .word unk_020A9C40
_0211B410: .word unk_020AF81C
	arm_func_end FUN_ov58_0211b3c4

	arm_func_start FUN_ov58_0211b414
FUN_ov58_0211b414: ; 0x0211B414
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x40
	ldr r3, _0211B458 ; =0x0211B7B0
	add r12, sp, #0
	mov r2, #5
_0211B428:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _0211B428
	ldr r0, _0211B45C ; =0x020A9C40
	add r1, sp, #0
	mvn r2, #0
	bl FUN_02045938
	add sp, sp, #0x40
	ldmfd sp!, {r3, pc}
_0211B458: .word ov58_0211B7B0
_0211B45C: .word unk_020A9C40
	arm_func_end FUN_ov58_0211b414

	arm_func_start FUN_ov58_0211b460
FUN_ov58_0211b460: ; 0x0211B460
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, _0211B60C ; =0x020AF81C
	mov r7, r0
	mov r0, r8
	mov r1, #0x19
	mov r4, #0x13
	mov r5, #0x14
	bl FUN_02044658
	ldr r6, [r0]
	mov r0, r8
	mov r1, #0xd
	bl FUN_02044658
	ldr r3, [r0]
	ldr r2, _0211B610 ; =0x30C30C31
	ldrb r8, [r7, #0x10e]
	mov r0, r3, lsr #0x1f
	smull r1, r12, r2, r3
	add r12, r0, r12, asr #2
	mov r2, #0x15
	smull r0, r1, r2, r12
	cmp r8, #0
	sub r12, r3, r0
	bne _0211B528
	cmp r6, #0xa
	blt _0211B4CC
	cmp r6, #0x19
	bne _0211B514
_0211B4CC:
	cmp r6, #0
	cmpeq r12, #0x14
	streq r5, [r7, #0x114]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	cmpeq r12, #0x12
	beq _0211B4F4
	cmp r6, #0xa
	cmpeq r12, #0x12
	bne _0211B500
_0211B4F4:
	mov r0, #0x12
	str r0, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B500:
	cmp r6, #0x19
	moveq r0, #0xa
	streq r0, [r7, #0x114]
	strne r6, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B514:
	cmp r6, #0xa
	cmpeq r12, #0x14
	streq r5, [r7, #0x114]
	strne r4, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B528:
	cmp r8, #0
	beq _0211B538
	cmp r8, #0xa
	blo _0211B540
_0211B538:
	cmp r8, #0x18
	bne _0211B58C
_0211B540:
	cmp r6, #0xa
	blt _0211B550
	cmp r6, #0x19
	bne _0211B584
_0211B550:
	cmp r6, #0
	beq _0211B564
	cmp r12, #0x14
	streq r5, [r7, #0x114]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B564:
	cmp r8, r6
	streq r12, [r7, #0x114]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0x18
	cmpeq r6, #0x19
	streq r12, [r7, #0x114]
	strne r4, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B584:
	str r4, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B58C:
	cmp r8, #0xa
	bne _0211B5D0
	cmp r6, #0xa
	blt _0211B5A4
	cmp r6, #0x19
	bne _0211B5B8
_0211B5A4:
	cmp r6, #0
	cmpeq r12, #0x14
	streq r5, [r7, #0x114]
	strne r4, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5B8:
	cmp r6, #0xa
	cmpeq r12, #0x14
	streq r5, [r7, #0x114]
	subne r0, r6, #0xa
	strne r0, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5D0:
	cmp r6, #0xa
	blt _0211B5E0
	cmp r6, #0x19
	bne _0211B5E8
_0211B5E0:
	str r4, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5E8:
	cmp r6, #0xa
	beq _0211B5FC
	cmp r12, #0x14
	streq r5, [r7, #0x114]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B5FC:
	cmp r8, r6
	streq r12, [r7, #0x114]
	strne r4, [r7, #0x114]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B60C: .word unk_020AF81C
_0211B610: .word 0x30C30C31
	arm_func_end FUN_ov58_0211b460

	arm_func_start FUN_ov58_0211b614
FUN_ov58_0211b614: ; 0x0211B614
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov58_0211b614

	arm_func_start FUN_ov58_0211b628
FUN_ov58_0211b628: ; 0x0211B628
	bx lr
	arm_func_end FUN_ov58_0211b628

	arm_func_start FUN_ov58_0211b62c
FUN_ov58_0211b62c: ; 0x0211B62C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211B674 ; =0x0211B6A0
	str r0, [r4, #0x14]
	ldr r0, _0211B678 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211B67C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B674: .word ov58_0211B6A0
_0211B678: .word 0x00009CCD
_0211B67C: .word 0x0000EA3C
	arm_func_end FUN_ov58_0211b62c

	.section .sinit, 4
ov58_0211B680:
	.word FUN_ov58_0211b62c

	.data
	.global ov58_0211B6A0
ov58_0211B6A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x28, 0xB6, 0x11, 0x02, 0x14, 0xB6, 0x11, 0x02, 0xD8, 0xA0, 0x11, 0x02, 0xEC, 0xA1, 0x11, 0x02
	.byte 0x00, 0x9F, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xD8, 0x9F, 0x11, 0x02, 0x4C, 0xA4, 0x11, 0x02
	.byte 0x98, 0x9F, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02
	.byte 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov58_0211B72C
ov58_0211B72C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x25, 0x73, 0x2E, 0x53, 0x50, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov58_0211B744
ov58_0211B744:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x25, 0x73, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov58_0211B75C
ov58_0211B75C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00
	.global ov58_0211B770
ov58_0211B770:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x25, 0x73
	.byte 0x5F, 0x53, 0x50, 0x44, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov58_0211B78C
ov58_0211B78C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x67, 0x6D, 0x61, 0x70, 0x5F
	.byte 0x6C, 0x6F, 0x61, 0x64, 0x5F, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov58_0211B7B0
ov58_0211B7B0:
	.byte 0x67, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x6D, 0x61, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

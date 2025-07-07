
	.include "/macros/function.inc"
	.include "/include/overlay84.inc"

	.text
	arm_func_start FUN_ov84_02119f00
FUN_ov84_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	ldr r4, _02119FB8 ; =0x0209AEC0
	mov r0, r4
	bl FUN_02046744
	mov r6, r0
	mov r0, r4
	bl FUN_02046730
	mov r8, #0
	mov r7, r0
	add r10, sp, #0
	mov r4, r8
	mov r5, #1
	ldr r9, _02119FBC ; =0x02099EF0
	b _02119FA8
_02119F3C:
	mov r0, r8
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	bne _02119FA4
	mov r0, r8
	bl  FUN_ov16_020f0920
	cmp r0, r7
	beq _02119FA4
	tst r6, r5, lsl r0
	beq _02119FA4
	mov r1, r4
	bl  FUN_ov16_020f0634
	mov r12, r4
	ldrh r3, [r0, #4]
	b _02119F8C
_02119F78:
	add r1, r0, r12, lsl #1
	ldrh r1, [r1, #6]
	mov r2, r12, lsl #1
	add r12, r12, #1
	strh r1, [r10, r2]
_02119F8C:
	cmp r12, #0xb
	blt _02119F78
	ldr r0, [r9]
	mov r1, r8
	mov r2, r10
	bl  FUN_ov126_02136e84
_02119FA4:
	add r8, r8, #1
_02119FA8:
	cmp r8, #2
	blt _02119F3C
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02119FB8: .word unk_0209AEC0
_02119FBC: .word unk_02099EF0
	arm_func_end FUN_ov84_02119f00

	arm_func_start FUN_ov84_02119fc0
FUN_ov84_02119fc0: ; 0x02119FC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r4, _0211A090 ; =0x0209AEC0
	mov r6, r0
	mov r0, r4
	bl FUN_02046744
	mov r5, r0
	mov r0, r4
	bl FUN_02046730
	mov r4, r0
	bl  FUN_ov16_020f081c
	bl  FUN_ov16_020f0920
	cmp r0, r4
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #1
	tst r5, r1, lsl r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #0
	bl  FUN_ov16_020f0634
	mov r4, r0
	ldrb r0, [r4, #3]
	cmp r0, #4
	beq _0211A030
	cmp r0, #5
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A030:
	mov r5, #0
	mov r8, r5
	ldr r7, _0211A094 ; =0x0211BBDC
	b _0211A080
_0211A040:
	add r12, r6, r5, lsl #1
	add r0, r4, r5, lsl #1
	ldrh r1, [r12, #0xb0]
	ldrh r3, [r0, #6]
	cmp r1, r3
	beq _0211A07C
	mov r1, r5, lsl #2
	add r0, r7, r5, lsl #2
	ldrsh r2, [r7, r1]
	strh r3, [r12, #0xb0]
	ldrsh r3, [r0, #2]
	mov r0, r6
	mov r1, r5
	str r8, [sp]
	bl FUN_ov84_0211af68
_0211A07C:
	add r5, r5, #1
_0211A080:
	cmp r5, #0xb
	blt _0211A040
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A090: .word unk_0209AEC0
_0211A094: .word 0x0211BBDC
	arm_func_end FUN_ov84_02119fc0

	arm_func_start FUN_ov84_0211a098
FUN_ov84_0211a098: ; 0x0211A098
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	mov r1, #0x47
	mov r0, #0xe
	str r1, [r6, #0xd4]
	str r5, [r6, #0xd8]
	str r5, [r6, #0xdc]
	str r5, [r6, #0xe0]
	str r5, [r6, #0xe4]
	str r0, [r6, #0xe8]
	mov r4, r5
	ldr r8, _0211A170 ; =0x0209AEC0
	mvn r7, #0
	b _0211A0F0
_0211A0D4:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	add r0, r6, r5, lsl #2
	streq r4, [r0, #0xec]
	strne r7, [r0, #0xec]
	add r5, r5, #1
_0211A0F0:
	cmp r5, #4
	blt _0211A0D4
	mov r8, #0
	ldr r7, _0211A170 ; =0x0209AEC0
	mvn r5, #0
	b _0211A124
_0211A108:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r6, r8, lsl #2
	streq r4, [r0, #0xfc]
	strne r5, [r0, #0xfc]
	add r8, r8, #1
_0211A124:
	cmp r8, #4
	blt _0211A108
	mov r1, #0
	b _0211A140
_0211A134:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0x10c]
	add r1, r1, #1
_0211A140:
	cmp r1, #4
	blt _0211A134
	mov r1, r4
	add r0, r6, #0x120
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _0211A174 ; =0x0209A4E0
	strb r4, [r6, #0x480]
	mov r1, #0x47
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A170: .word unk_0209AEC0
_0211A174: .word unk_0209A4E0
	arm_func_end FUN_ov84_0211a098

	arm_func_start FUN_ov84_0211a178
FUN_ov84_0211a178: ; 0x0211A178
	mov r0, #1
	bx lr
	arm_func_end FUN_ov84_0211a178

	arm_func_start FUN_ov84_0211a180
FUN_ov84_0211a180: ; 0x0211A180
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	cmp r0, #5
	beq _0211A1A0
	cmp r0, #6
	beq _0211A1F0
	b _0211A210
_0211A1A0:
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211A1B4
	mov r0, r6
	bl FUN_ov84_02119fc0
_0211A1B4:
	mov r5, #6
	mov r4, #0
	mov r1, r5
	mov r3, r4
	sub r2, r5, #7
	mov r0, #5
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A210
	mov r0, r6
	bl FUN_ov84_02119f00
	ldr r0, _0211A218 ; =0x020E9482
	strb r4, [r0]
	str r5, [r6, #8]
	b _0211A210
_0211A1F0:
	mov r4, #7
	mov r1, r4
	mov r0, #6
	mov r2, #8
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	strne r4, [r6, #8]
_0211A210:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A218: .word 0x020E9482
	arm_func_end FUN_ov84_0211a180

	arm_func_start FUN_ov84_0211a21c
FUN_ov84_0211a21c: ; 0x0211A21C
	ldr r0, [r0, #8]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov84_0211a21c

	arm_func_start FUN_ov84_0211a234
FUN_ov84_0211a234: ; 0x0211A234
	ldr r1, _0211A280 ; =0x0209A4E0
	mov r2, #0x47
	strb r2, [r1, #2]
	ldr r2, [r0, #8]
	mov r12, #0
	strb r2, [r1, #3]
	ldr r2, [r0, #0xc8]
	strh r2, [r1, #4]
	ldr r1, _0211A284 ; =0x0209A4E6
	b _0211A270
_0211A25C:
	add r2, r0, r12, lsl #1
	ldrh r2, [r2, #0xb0]
	mov r3, r12, lsl #1
	add r12, r12, #1
	strh r2, [r1, r3]
_0211A270:
	cmp r12, #0xb
	blt _0211A25C
	mov r0, #1
	bx lr
_0211A280: .word unk_0209A4E0
_0211A284: .word unk_0209A4E6
	arm_func_end FUN_ov84_0211a234

	arm_func_start FUN_ov84_0211a288
FUN_ov84_0211a288: ; 0x0211A288
	mov r1, r0
	ldr r0, _0211A29C ; =0x0211BE34
	ldr r12, _0211A2A0 ; = FUN_ov16_020f316c
	add r1, r1, #0x10
	bx r12
_0211A29C: .word ov84_0211BE34
_0211A2A0: .word  FUN_ov16_020f316c
	arm_func_end FUN_ov84_0211a288

	arm_func_start FUN_ov84_0211a2a4
FUN_ov84_0211a2a4: ; 0x0211A2A4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0211A314 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _0211A2CC
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _0211A2E4
_0211A2CC:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x10]
	ldr r0, _0211A318 ; =0x0211BE54
	ldr r2, _0211A31C ; =0x0211BC08
	b _0211A2F8
_0211A2E4:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x10]
	ldr r0, _0211A320 ; =0x0211BE74
	ldr r2, _0211A324 ; =0x0211BC40
_0211A2F8:
	add r3, r4, #0x1c
	bl  FUN_ov16_020f5450
	mov r0, r4
	mov r1, #0
	bl FUN_ov84_0211a3f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A314: .word unk_020A0640
_0211A318: .word ov84_0211BE54
_0211A31C: .word 0x0211BC08
_0211A320: .word ov84_0211BE74
_0211A324: .word 0x0211BC40
	arm_func_end FUN_ov84_0211a2a4

	arm_func_start FUN_ov84_0211a328
FUN_ov84_0211a328: ; 0x0211A328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A3F0 ; =0x0209BA20
	bl FUN_0207249c
	mov r7, #0
	mov r9, r0
	mov r6, r7
	mov r5, r7
	mov r11, r7
	ldr r4, _0211A3F4 ; =0x02099EC0
	b _0211A3DC
_0211A360:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0xb0]
	cmp r0, #0
	beq _0211A3D8
	mov r1, r11
	bl  FUN_ov16_020efa9c
	movs r1, r0
	beq _0211A3D8
	mov r0, r9
	bl  FUN_ov16_020f0bcc
	ldrh r2, [r9, #0x28]
	mov r8, r0
	add r0, r10, r7, lsl #1
	cmp r2, #0
	ldreqh r2, [r9, #0x26]
	mov r3, r8
	str r6, [sp]
	ldrh r1, [r0, #0xb0]
	ldr r0, [r4]
	bl FUN_02056ed4
	ldrh r3, [r9, #0x28]
	add r0, r10, r7, lsl #1
	mov r2, r5
	cmp r3, #0
	ldreqh r3, [r9, #0x26]
	str r8, [sp]
	str r5, [sp, #4]
	ldrh r1, [r0, #0xb0]
	ldr r0, [r4]
	bl FUN_02056af0
_0211A3D8:
	add r7, r7, #1
_0211A3DC:
	ldr r0, [r10, #0xc8]
	cmp r7, r0
	blt _0211A360
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A3F0: .word unk_0209BA20
_0211A3F4: .word unk_02099EC0
	arm_func_end FUN_ov84_0211a328

	arm_func_start FUN_ov84_0211a3f8
FUN_ov84_0211a3f8: ; 0x0211A3F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #1
	blo _0211A438
	add r0, r6, #0x10
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r6, #0x10
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r6, #0x10]
	str r0, [r6, #0x14]
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	strb r0, [r6, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A438:
	mov r0, #0xc
	mul r5, r1, r0
	add r4, r6, #0x10
	add r0, r4, r5
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r5
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	strb r1, [r0, #0x19]
	strb r1, [r0, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov84_0211a3f8

	arm_func_start FUN_ov84_0211a478
FUN_ov84_0211a478: ; 0x0211A478
	stmfd sp!, {r4, r5, r6, lr}
	mvn r1, #0
	mov r5, r0
	bl FUN_ov84_0211a3f8
	ldr r0, _0211A52C ; =0x02099EC0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_02056e94
	mov r4, #0
	ldr r6, _0211A530 ; =0x02099F38
	b _0211A4C0
_0211A4A4:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x38]
	cmp r1, #0
	beq _0211A4BC
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
_0211A4BC:
	add r4, r4, #1
_0211A4C0:
	cmp r4, #5
	blt _0211A4A4
	mov r4, #0
	ldr r6, _0211A530 ; =0x02099F38
	b _0211A4F0
_0211A4D4:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211A4EC
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A4EC:
	add r4, r4, #1
_0211A4F0:
	cmp r4, #6
	blt _0211A4D4
	mov r4, #0
	ldr r6, _0211A530 ; =0x02099F38
	b _0211A520
_0211A504:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _0211A51C
	ldr r0, [r6]
	bl FUN_02058ee0
_0211A51C:
	add r4, r4, #1
_0211A520:
	cmp r4, #1
	blt _0211A504
	ldmfd sp!, {r4, r5, r6, pc}
_0211A52C: .word unk_02099EC0
_0211A530: .word unk_02099F38
	arm_func_end FUN_ov84_0211a478

	arm_func_start FUN_ov84_0211a534
FUN_ov84_0211a534: ; 0x0211A534
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r0
	mov r6, r5
	ldr r4, _0211A5DC ; =0x02099F38
	b _0211A5A4
_0211A54C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211A5A0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x1c]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A5A0
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x1c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A5A0:
	add r6, r6, #1
_0211A5A4:
	cmp r6, #6
	blt _0211A54C
	ldr r4, _0211A5E0 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_020571ac
	cmp r0, #0
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	bl FUN_020576a0
	cmp r0, #0
	movgt r0, #0
	movle r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A5DC: .word unk_02099F38
_0211A5E0: .word unk_02099EC0
	arm_func_end FUN_ov84_0211a534

	arm_func_start FUN_ov84_0211a5e4
FUN_ov84_0211a5e4: ; 0x0211A5E4
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, [r2, #0xcc]
	mov r1, #0
	cmp r0, #0
	addge r0, r2, r0, lsl #1
	ldrgeh r1, [r0, #0xb0]
	mov r0, #0
	cmp r1, #0
	movne r0, #2
	str r0, [r2, #0x50]
	strh r1, [r2, #0x54]
	ldr r0, [r2, #4]
	add r1, r2, #0x50
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov84_0211a5e4

	arm_func_start FUN_ov84_0211a62c
FUN_ov84_0211a62c: ; 0x0211A62C
	cmp r1, r3
	ldrgt r0, [sp, #4]
	cmpgt r0, r1
	ldrgt r0, [sp]
	cmpgt r2, r0
	ldrgt r0, [sp, #8]
	cmpgt r0, r2
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov84_0211a62c

	arm_func_start FUN_ov84_0211a654
FUN_ov84_0211a654: ; 0x0211A654
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x44]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A6E8 ; =0x02099F38
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r6, #0x44]
	mov r2, #0xc8
	ldr r0, [r4]
	mov r1, r5
	sub r3, r2, #0xc9
	bl  FUN_ov16_02112c90
	ldr r2, [r6, #0x2c]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0x28
	mov r3, #0x54
	bl  FUN_ov16_02112f04
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl  FUN_ov16_02114370
	ldmfd sp!, {r4, r5, r6, pc}
_0211A6E8: .word unk_02099F38
	arm_func_end FUN_ov84_0211a654

	arm_func_start FUN_ov84_0211a6ec
FUN_ov84_0211a6ec: ; 0x0211A6EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x38]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _0211A858 ; =0x02099F38
	mov r4, #1
	ldr r0, [r7]
	mov r2, r4
	mov r1, #3
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r6, #0x38]
	ldr r0, [r7]
	mov r1, r5
	sub r3, r4, #2
	mov r2, #0x1f4
	bl  FUN_ov16_02112c90
	ldr r1, [r6, #0x1c]
	ldr r0, [r7]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_021137dc
	mov r8, #0
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl  FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	ldr r3, [r6, #0x24]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r8, [sp]
	mov r3, r8
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	bl  FUN_ov16_0211401c
	mov r0, #8
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #1
	mov r3, #0x50
	bl  FUN_ov16_02113b78
	ldr r0, _0211A85C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A7DC
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A7DC:
	mov r0, r6
	bl FUN_ov84_0211a860
	ldr r7, _0211A858 ; =0x02099F38
	ldr r3, [r6, #0x34]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #2
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #2
	bl  FUN_ov16_02113d88
	mov r6, #8
	str r6, [sp]
	ldr r0, [r7]
	mov r1, r5
	add r2, r4, #2
	mov r3, #0xc0
	bl  FUN_ov16_02113d08
	mov r1, r5
	add r2, r4, #2
	mov r3, r6
	mov r0, #0xac
	str r0, [sp]
	ldr r0, [r7]
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A858: .word unk_02099F38
_0211A85C: .word unk_020A0640
	arm_func_end FUN_ov84_0211a6ec

	arm_func_start FUN_ov84_0211a860
FUN_ov84_0211a860: ; 0x0211A860
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r6, r0
	ldr r0, [r6, #0x34]
	mov r5, #0
	cmp r0, #0
	bne _0211A8A8
	ldr r4, _0211A95C ; =0x02099F38
	mov r2, r5
	ldr r0, [r4]
	mov r1, #6
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x34]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A8A8:
	ldr r5, _0211A95C ; =0x02099F38
	ldr r9, [r6, #0x34]
	ldr r0, [r5]
	mov r8, #0
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r9
	str r8, [sp, #0x20]
	bl FUN_0205935c
	ldr r0, [r5]
	mov r1, r9
	ldr r10, [sp, #0x20]
	bl  FUN_ov16_02111458
	mov r6, #1
	ldr r4, _0211A960 ; =0x02099ED0
	mov r7, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	bl FUN_02043310
	stmia sp, {r7, r8}
	str r8, [sp, #8]
	str r6, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r6, [sp, #0x18]
	str r8, [sp, #0x1c]
	ldr r0, [r4]
	ldr r1, _0211A964 ; =0x0211BE94
	mov r2, r10
	mov r3, #0x200
	bl FUN_020425fc
	ldr r0, [r4]
	bl FUN_0204331c
	ldr r0, [r5]
	ldr r3, [sp, #0x24]
	mov r2, r10
	str r8, [sp]
	str r8, [sp, #4]
	mov r1, r9
	str r8, [sp, #8]
	bl FUN_02059288
	mov r0, r9
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A95C: .word unk_02099F38
_0211A960: .word unk_02099ED0
_0211A964: .word ov84_0211BE94
	arm_func_end FUN_ov84_0211a860

	arm_func_start FUN_ov84_0211a968
FUN_ov84_0211a968: ; 0x0211A968
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r9, r0
	mov r8, r2
	mov r7, r3
	bmi _0211A98C
	cmp r4, #5
	blt _0211A998
_0211A98C:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211A998:
	cmp r8, #6
	addhs sp, sp, #4
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r9, r4, lsl #2
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _0211A9D4
	ldr r0, _0211AAB0 ; =0x02099F38
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_02112724
	add r1, r9, r4, lsl #2
	str r0, [r1, #0x38]
_0211A9D4:
	add r0, r9, r4, lsl #2
	ldr r6, [r0, #0x38]
	ldr r10, _0211AAB0 ; =0x02099F38
	mov r5, #2
	mov r4, #1
	ldr r0, [r10]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_021142fc
	add r0, r9, r8, lsl #2
	ldr r2, [r0, #0x1c]
	ldr r0, [r10]
	mov r1, r6
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	ldr r0, [r10]
	mov r2, r7
	mov r1, r6
	mov r3, #0
	bl  FUN_ov16_0211346c
	ldr r0, [r10]
	add r2, r5, #0x1c0
	mov r1, r6
	bl  FUN_ov16_02112b98
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r10]
	mov r1, r6
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02114248
	ldr r2, [sp, #0x34]
	ldr r0, _0211AAB4 ; =0x02099EB4
	str r2, [sp]
	ldr r2, [sp, #0x30]
	ldr r0, [r0]
	mov r2, r2, lsl #0x10
	mov r1, r4
	mov r3, r6
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fbe8
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r3, [sp, #0x3c]
	ldrb r2, [sp, #0x40]
	ldrh r1, [sp, #0x38]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	strh r1, [r0, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211AAB0: .word unk_02099F38
_0211AAB4: .word unk_02099EB4
	arm_func_end FUN_ov84_0211a968

	arm_func_start FUN_ov84_0211aab8
FUN_ov84_0211aab8: ; 0x0211AAB8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r1, #0xd0
	str r1, [sp]
	mov r6, #1
	mov r1, #0xa8
	stmib sp, {r1, r6}
	mov r5, #0
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r1, r6
	mov r2, r6
	mov r3, r5
	str r5, [sp, #0x18]
	bl FUN_ov84_0211a968
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov84_0211aab8

	arm_func_start FUN_ov84_0211ab5c
FUN_ov84_0211ab5c: ; 0x0211AB5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r9, #0
	mov r10, r0
	mov r5, #1
	mov r8, r9
	ldr r7, _0211AC00 ; =0x0211BBDC
	mov r6, #0x20
	mov r11, #2
	ldr r4, _0211AC04 ; =0x02099EB4
	b _0211ABF0
_0211AB88:
	mov r1, r9, lsl #2
	add r0, r7, r9, lsl #2
	ldrsh r2, [r7, r1]
	ldrsh r3, [r0, #2]
	mov r0, r10
	mov r1, r9
	str r8, [sp]
	bl FUN_ov84_0211af68
	add r0, r7, r9, lsl #2
	ldrsh r0, [r0, #2]
	mov r1, r9, lsl #2
	ldrsh r1, [r7, r1]
	sub r0, r0, #0x20
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	add r0, r9, #2
	mov r0, r0, lsl #0x10
	sub r3, r1, #0x10
	str r8, [sp, #0xc]
	mov r2, r0, lsr #0x10
	ldr r0, [r4]
	mov r1, r11
	bl  FUN_ov16_0210fba4
	cmp r0, #0
	strneb r5, [r0, #0x12]
	add r9, r9, #1
_0211ABF0:
	cmp r9, #0xb
	blt _0211AB88
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC00: .word 0x0211BBDC
_0211AC04: .word unk_02099EB4
	arm_func_end FUN_ov84_0211ab5c

	arm_func_start FUN_ov84_0211ac08
FUN_ov84_0211ac08: ; 0x0211AC08
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x40]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211AC88 ; =0x02099F38
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r6, #0x40]
	ldr r2, [r6, #0x28]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0x32
	mov r3, #0x64
	bl  FUN_ov16_02113528
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl  FUN_ov16_02114370
	ldmfd sp!, {r4, r5, r6, pc}
_0211AC88: .word unk_02099F38
	arm_func_end FUN_ov84_0211ac08

	arm_func_start FUN_ov84_0211ac8c
FUN_ov84_0211ac8c: ; 0x0211AC8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl  FUN_ov16_020f066c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211AD18 ; =0x02099F38
	mov r1, #0x10
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_02112724
	movs r5, r0
	str r5, [r6, #0x48]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x30]
	ldr r0, [r4]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r2, #0
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	bl  FUN_ov16_0211346c
	ldr r0, [r4]
	ldr r2, _0211AD1C ; =0x0000019A
	mov r1, r5
	bl  FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	bl  FUN_ov16_02113390
	ldmfd sp!, {r4, r5, r6, pc}
_0211AD18: .word unk_02099F38
_0211AD1C: .word 0x0000019A
	arm_func_end FUN_ov84_0211ac8c

	arm_func_start FUN_ov84_0211ad20
FUN_ov84_0211ad20: ; 0x0211AD20
	mov r2, #3
	str r1, [r0, #0xc]
	str r2, [r0, #8]
	bx lr
	arm_func_end FUN_ov84_0211ad20

	arm_func_start FUN_ov84_0211ad30
FUN_ov84_0211ad30: ; 0x0211AD30
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov84_0211ad30

	arm_func_start FUN_ov84_0211ad38
FUN_ov84_0211ad38: ; 0x0211AD38
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r4, r0
	mov r1, r5
	b _0211AD94
_0211AD50:
	add r0, r4, r5, lsl #1
	ldrh r0, [r0, #0xb0]
	cmp r0, #0
	bne _0211AD90
	mov r6, r5
	b _0211AD80
_0211AD68:
	add r3, r6, #1
	add r0, r4, r3, lsl #1
	ldrh r2, [r0, #0xb0]
	add r0, r4, r6, lsl #1
	mov r6, r3
	strh r2, [r0, #0xb0]
_0211AD80:
	cmp r6, #0xa
	blt _0211AD68
	strh r1, [r4, #0xc4]
	sub r5, r5, #1
_0211AD90:
	add r5, r5, #1
_0211AD94:
	ldr r0, [r4, #0xc8]
	cmp r5, r0
	blt _0211AD50
	bl  FUN_ov16_020f081c
	ldr r2, _0211AE30 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	ldr r3, [r4, #0xc8]
	add r2, r4, #0xb0
	bl  FUN_ov126_02136e84
	ldr r0, _0211AE34 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	moveq r0, #7
	addeq sp, sp, #0x14
	streq r0, [r4, #8]
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r5, _0211AE38 ; =0x02099ED4
	mov r0, #5
	str r0, [r4, #8]
	mov r7, #2
	mov r6, #0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_0210e5f0
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, [r5]
	ldr r3, [r4, #0x44]
	mov r1, r7
	mov r2, r6
	bl  FUN_ov16_0210e4f0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211AE30: .word unk_02099EF0
_0211AE34: .word unk_020A0640
_0211AE38: .word unk_02099ED4
	arm_func_end FUN_ov84_0211ad38

	arm_func_start FUN_ov84_0211ae3c
FUN_ov84_0211ae3c: ; 0x0211AE3C
	mov r2, #0
	mov r1, #1
	strh r2, [r0, #0x4e]
	strh r1, [r0, #0x4c]
	bx lr
	arm_func_end FUN_ov84_0211ae3c

	arm_func_start FUN_ov84_0211ae50
FUN_ov84_0211ae50: ; 0x0211AE50
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	bl FUN_ov84_0211aea0
	and r0, r4, r0
	mov r1, r0, lsl #0x10
	ldr r4, _0211AE9C ; =0x02099EB4
	add r2, sp, #0
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r4]
	ldr r1, [sp]
	bl  FUN_ov16_0210ef88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211AE9C: .word unk_02099EB4
	arm_func_end FUN_ov84_0211ae50

	arm_func_start FUN_ov84_0211aea0
FUN_ov84_0211aea0: ; 0x0211AEA0
	ldrh r1, [r0, #0x4e]
	ldrh r2, [r0, #0x4c]
	mvn r0, r1
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov84_0211aea0

	arm_func_start FUN_ov84_0211aebc
FUN_ov84_0211aebc: ; 0x0211AEBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, #0
	mov r10, r0
	mov r8, r9
	mov r6, #1
	mov r11, #4
	ldr r5, _0211AF60 ; =0x02099EC0
	ldr r4, _0211AF64 ; =0x02099F58
	b _0211AF50
_0211AEE4:
	add r0, r10, r9, lsl #1
	ldrh r1, [r0, #0xb0]
	ldr r0, [r5]
	mov r2, r8
	bl FUN_02056a88
	mov r1, r0
	cmp r1, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl FUN_020571e0
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp]
	str r6, [sp, #4]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, #3
	bl  FUN_ov16_0211702c
	ldr r0, [r4]
	mov r1, r7
	mov r2, #2
	mov r3, r6
	bl  FUN_ov16_02117598
	add r9, r9, #1
_0211AF50:
	cmp r9, #0xb
	blt _0211AEE4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF60: .word unk_02099EC0
_0211AF64: .word unk_02099F58
	arm_func_end FUN_ov84_0211aebc

	arm_func_start FUN_ov84_0211af68
FUN_ov84_0211af68: ; 0x0211AF68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	movs r5, r1
	mov r6, r0
	mov r4, r2
	mov r10, r3
	addmi sp, sp, #0x1c
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r6, r5, lsl #1
	ldrh r1, [r0, #0xb0]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, _0211B124 ; =0x02099EC0
	mov r2, #0
	ldr r0, [r7]
	bl FUN_02056a88
	mov r1, r0
	cmp r1, #0
	addle sp, sp, #0x1c
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r7]
	bl FUN_020571e0
	movs r8, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r6, #0xcc]
	mov r1, #0x190
	cmp r0, r5
	ldr r0, _0211B128 ; =0x02099F58
	subeq r1, r1, #1
	mov r2, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r8
	mov r2, r2, asr #0x10
	bl  FUN_ov16_021174ac
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x40]
	str r10, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r2, #1
	ldr r0, _0211B12C ; =0x02099ED4
	str r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r8
	bl  FUN_ov16_0210e29c
	ldr r0, _0211B130 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r6, r5, lsl #1
	ldrh r0, [r0, #0xb0]
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r8, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0206d4fc
	bl  FUN_ov16_020f08a4
	mov r7, r0
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	sub r0, r10, #8
	add r9, r7, #5
	mov r0, r0, lsl #0x10
	addne r9, r7, #1
	mov r0, r0, asr #0x10
	str r0, [sp]
	sub r0, r4, #0x10
	mov r3, r0, lsl #0x10
	ldr r7, _0211B134 ; =0x02099F38
	ldr r1, [r6, #0x48]
	ldr r0, [r7]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r8, #1
	str r8, [sp]
	mov r4, #2
	ldr r0, [r7]
	ldr r1, [r6, #0x48]
	mov r3, r4
	add r2, r5, #1
	bl  FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x48]
	mov r3, r9
	add r2, r5, #1
	bl  FUN_ov16_0211401c
	ldr r0, [r6, #0xcc]
	add r1, r4, #0x198
	cmp r0, r5
	ldr r0, _0211B134 ; =0x02099F38
	addeq r1, r8, #0x198
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r6, #0x48]
	add r2, r5, #1
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211B124: .word unk_02099EC0
_0211B128: .word unk_02099F58
_0211B12C: .word unk_02099ED4
_0211B130: .word unk_020A0640
_0211B134: .word unk_02099F38
	arm_func_end FUN_ov84_0211af68

	arm_func_start FUN_ov84_0211b138
FUN_ov84_0211b138: ; 0x0211B138
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211B174 ; =0x02099F38
	mov r5, r0
	mov r3, r1, lsl #0x10
	mov r12, r2, lsl #0x10
	mov r2, r3, asr #0x10
	ldr r0, [r4]
	ldr r1, [r5, #0x40]
	mov r3, r12, asr #0x10
	bl  FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r5, #0x40]
	ldr r2, _0211B178 ; =0x00000186
	bl  FUN_ov16_02112b98
	ldmfd sp!, {r3, r4, r5, pc}
_0211B174: .word unk_02099F38
_0211B178: .word 0x00000186
	arm_func_end FUN_ov84_0211b138

	arm_func_start FUN_ov84_0211b17c
FUN_ov84_0211b17c: ; 0x0211B17C
	stmfd sp!, {r3, lr}
	ldr r2, _0211B1A0 ; =0x02099F38
	mov r12, r0
	mov r3, r1
	ldr r0, [r2]
	ldr r1, [r12, #0x40]
	mov r2, #2
	bl  FUN_ov16_021142fc
	ldmfd sp!, {r3, pc}
_0211B1A0: .word unk_02099F38
	arm_func_end FUN_ov84_0211b17c

	arm_func_start FUN_ov84_0211b1a4
FUN_ov84_0211b1a4: ; 0x0211B1A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0xd0]
	mov r6, #0
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	and r0, r1, #0xf
	mov r2, r0, asr #2
	ldr r5, _0211B218 ; =0x02099F38
	str r1, [r4, #0xd0]
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	mov r3, r6
	and r2, r2, #0xff
	bl  FUN_ov16_0211346c
	ldr r1, [r4, #0xd0]
	ldr r0, _0211B21C ; =0x000001FF
	str r6, [sp]
	and r0, r1, r0
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r4, #0x38]
	mov r3, r2, asr #0x10
	mov r2, #3
	bl  FUN_ov16_02113d88
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B218: .word unk_02099F38
_0211B21C: .word 0x000001FF
	arm_func_end FUN_ov84_0211b1a4

	arm_func_start FUN_ov84_0211b220
FUN_ov84_0211b220: ; 0x0211B220
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r0
	bmi _0211B248
	cmp r5, #0xb
	bge _0211B248
	add r0, r4, r5, lsl #1
	ldrh r0, [r0, #0xb0]
	cmp r0, #0
	bne _0211B24C
_0211B248:
	mvn r5, #0
_0211B24C:
	mov r1, #1
	cmp r5, #0
	movlt r1, #0
	mov r0, r4
	str r5, [r4, #0xcc]
	bl FUN_ov84_0211b17c
	cmp r5, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B298 ; =0x0211BBDE
	mov r3, r5, lsl #2
	ldr r1, _0211B29C ; =0x0211BBDC
	ldrsh r2, [r0, r3]
	ldrsh r1, [r1, r3]
	mov r0, r4
	add r2, r2, #2
	bl FUN_ov84_0211b138
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0211B298: .word 0x0211BBDE
_0211B29C: .word 0x0211BBDC
	arm_func_end FUN_ov84_0211b220

	arm_func_start FUN_ov84_0211b2a0
FUN_ov84_0211b2a0: ; 0x0211B2A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211B2D4 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r4]
	bl  FUN_ov126_02136ac4
	bl  FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r4]
	add r2, r5, #0xb0
	mov r3, #0xb
	bl  FUN_ov126_02136e50
	str r0, [r5, #0xc8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B2D4: .word unk_02099EF0
	arm_func_end FUN_ov84_0211b2a0

	arm_func_start FUN_ov84_0211b2d8
FUN_ov84_0211b2d8: ; 0x0211B2D8
	cmp r1, #0
	cmpge r2, #0
	bxlt lr
	cmp r1, #0xb
	cmplt r2, #0xb
	bxge lr
	add r3, r0, r1, lsl #1
	add r1, r0, r2, lsl #1
	ldrh r2, [r3, #0xb0]
	ldrh r0, [r1, #0xb0]
	strh r0, [r3, #0xb0]
	strh r2, [r1, #0xb0]
	bx lr
	arm_func_end FUN_ov84_0211b2d8

	arm_func_start FUN_ov84_0211b30c
FUN_ov84_0211b30c: ; 0x0211B30C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #2
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #0xd
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B35C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, r5
	sub r1, r4, #2
	bl FUN_ov84_0211b220
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B360 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210f47c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B35C: .word unk_0209AC44
_0211B360: .word unk_02099EB4
	arm_func_end FUN_ov84_0211b30c

	arm_func_start FUN_ov84_0211b364
FUN_ov84_0211b364: ; 0x0211B364
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211B3DC ; =0x02099EB4
	mov r5, r1
	mov r6, r0
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #1
	blt _0211B3B0
	bgt _0211B3B0
	ldrh r1, [r0, #0xc]
	cmp r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B3B0:
	cmp r5, #2
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r5, #0xd
	ldmgtfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mvn r1, #0
	bl FUN_ov84_0211b220
	ldr r0, _0211B3E0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B3DC: .word unk_02099EB4
_0211B3E0: .word unk_0209AC44
	arm_func_end FUN_ov84_0211b364

	arm_func_start FUN_ov84_0211b3e4
FUN_ov84_0211b3e4: ; 0x0211B3E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, _0211B598 ; =0x02099EB4
	mov r8, r1
	mov r7, r0
	mov r1, r8, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	mov r6, r2
	bl  FUN_ov16_0210e7d0
	mov r5, r0
	ldr r0, [r4]
	add r1, sp, #0xc
	bl  FUN_ov16_0210f48c
	cmp r5, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl  FUN_ov16_0210e6f4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #2
	bge _0211B450
	cmp r8, #0xd
	addgt sp, sp, #0x10
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B450:
	mov r5, #0
	ldr r4, _0211B59C ; =0x0211BBDC
	b _0211B4B8
_0211B45C:
	add r0, r4, r5, lsl #2
	ldrsh r2, [r0, #2]
	mov r1, r5, lsl #2
	ldrsh r3, [r4, r1]
	sub r12, r2, #0x20
	str r12, [sp]
	add r1, r3, #0x10
	stmib sp, {r1, r2}
	ldrsh r1, [sp, #0xc]
	ldrsh r2, [sp, #0xe]
	mov r0, r7
	sub r3, r3, #0x10
	bl FUN_ov84_0211a62c
	cmp r0, #0
	beq _0211B4B4
	mov r1, r5, lsl #2
	add r0, r4, r5, lsl #2
	ldrsh r1, [r4, r1]
	ldrsh r0, [r0, #2]
	strh r1, [sp, #0xc]
	strh r0, [sp, #0xe]
	b _0211B4C0
_0211B4B4:
	add r5, r5, #1
_0211B4B8:
	cmp r5, #0xb
	blt _0211B45C
_0211B4C0:
	cmp r6, #0
	beq _0211B560
	cmp r5, #0xb
	bge _0211B4E0
	add r0, r7, r5, lsl #1
	ldrh r0, [r0, #0xb0]
	cmp r0, #0
	bne _0211B528
_0211B4E0:
	mov r4, #8
	str r4, [sp]
	ldr r1, [r7, #0xcc]
	ldr r2, _0211B59C ; =0x0211BBDC
	mov r3, r1, lsl #2
	add r0, r2, r1, lsl #2
	ldrsh r2, [r2, r3]
	ldrsh r3, [r0, #2]
	mov r0, r7
	bl FUN_ov84_0211af68
	mov r0, r7
	sub r1, r4, #9
	bl FUN_ov84_0211b220
	ldr r0, _0211B5A0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B528:
	ldr r1, [r7, #0xcc]
	mov r0, r7
	mov r2, r5
	bl FUN_ov84_0211b2d8
	mov r0, r7
	mvn r1, #0
	bl FUN_ov84_0211b220
	mov r0, r7
	bl FUN_ov84_0211ab5c
	ldr r0, _0211B5A0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B560:
	mov r0, #0
	str r0, [sp]
	ldrsh r2, [sp, #0xc]
	ldrsh r3, [sp, #0xe]
	ldr r1, [r7, #0xcc]
	mov r0, r7
	bl FUN_ov84_0211af68
	ldrsh r2, [sp, #0xe]
	ldrsh r1, [sp, #0xc]
	mov r0, r7
	add r2, r2, #2
	bl FUN_ov84_0211b138
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B598: .word unk_02099EB4
_0211B59C: .word 0x0211BBDC
_0211B5A0: .word unk_0209AC44
	arm_func_end FUN_ov84_0211b3e4

	arm_func_start FUN_ov84_0211b5a4
FUN_ov84_0211b5a4: ; 0x0211B5A4
	ldr r2, _0211B5B4 ; =0x0211BDB8
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211B5B4: .word ov84_0211BDB8
	arm_func_end FUN_ov84_0211b5a4

	arm_func_start FUN_ov84_0211b5b8
FUN_ov84_0211b5b8: ; 0x0211B5B8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211B64C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r6, r1
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #8]
	cmpeq r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _0211B650 ; =0x02099EB4
	ldr r0, [r5]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B610
	ldr r0, [r5]
	add r0, r0, #0xf00
	ldrh r6, [r0, #0x38]
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211B610:
	mov r0, r4
	mov r1, r6
	bl FUN_ov84_0211ae50
	tst r6, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov84_0211ad30
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B654 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov84_0211ad38
	ldmfd sp!, {r4, r5, r6, pc}
_0211B64C: .word unk_02099ED4
_0211B650: .word unk_02099EB4
_0211B654: .word unk_0209AC44
	arm_func_end FUN_ov84_0211b5b8

	arm_func_start FUN_ov84_0211b658
FUN_ov84_0211b658: ; 0x0211B658
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B720 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B724 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl  FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B6A4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211B6B8 ; case 1
	b _0211B6D0 ; case 2
	b _0211B6E8 ; case 3
	b _0211B704 ; case 4
_0211B6B8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov84_0211b30c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B6D0:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov84_0211b364
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B6E8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl FUN_ov84_0211b3e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B704:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, #1
	bl FUN_ov84_0211b3e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B720: .word unk_02099ED4
_0211B724: .word unk_02099EB4
	arm_func_end FUN_ov84_0211b658

	arm_func_start FUN_ov84_0211b728
FUN_ov84_0211b728: ; 0x0211B728
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _0211B834 ; =0x02099EB4
	mov r6, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e980
	ldr r0, _0211B838 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r6, #0xb0
	mov r5, #0
	mov r1, r5
	mov r4, #0x16
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r6
	bl FUN_ov84_0211b2a0
	sub r0, r4, #0x17
	str r0, [r6, #0xcc]
	str r5, [r6, #8]
	str r5, [r6, #0xc]
	add r0, r6, #0x10
	mov r1, r5
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r6, #0x38
	mov r1, r5
	mov r2, #0x14
	bl MI_CpuFill8
	add r0, r6, #0x34
	mov r1, r5
	mov r2, #4
	bl MI_CpuFill8
	add r0, r6, #0x50
	mov r1, r5
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r6, #0x1c
	mov r1, r5
	mov r2, #0x18
	bl MI_CpuFill8
	strh r5, [r6, #0x4c]
	strh r5, [r6, #0x4e]
	ldr r0, _0211B83C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldr r4, _0211B840 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_02056828
	mov r0, #0x4000
	str r0, [sp]
	mov r2, #0xb
	str r2, [sp, #4]
	mov r0, #0x6400
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0x94000
	mov r3, r2
	bl FUN_020568c4
	ldr r0, [r4]
	bl FUN_02057be4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B834: .word unk_02099EB4
_0211B838: .word unk_02099ED4
_0211B83C: .word unk_02099F38
_0211B840: .word unk_02099EC0
	arm_func_end FUN_ov84_0211b728

	arm_func_start FUN_ov84_0211b844
FUN_ov84_0211b844: ; 0x0211B844
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, #1
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211BA44
_0211B864: ; jump table
	b _0211B888 ; case 0
	b _0211B8A8 ; case 1
	b _0211B8D4 ; case 2
	b _0211B944 ; case 3
	b _0211BA44 ; case 4
	b _0211BA44 ; case 5
	b _0211BA44 ; case 6
	b _0211B9E0 ; case 7
	b _0211BA04 ; case 8
_0211B888:
	ldr r0, _0211BAD4 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_02057c2c
	cmp r0, #0
	bne _0211BA44
	mov r0, r5
	bl FUN_ov84_0211a288
	str r4, [r5, #8]
_0211B8A8:
	add r0, r5, #0x10
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211BA44
	mov r0, r5
	bl FUN_ov84_0211a2a4
	mov r0, r5
	bl FUN_ov84_0211a328
	mov r0, #2
	str r0, [r5, #8]
_0211B8D4:
	mov r0, r5
	bl FUN_ov84_0211a534
	cmp r0, #0
	beq _0211BA44
	mov r0, r5
	bl FUN_ov84_0211a654
	mov r0, r5
	bl FUN_ov84_0211a6ec
	ldr r0, _0211BAD8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211B910
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _0211B920
_0211B910:
	mov r0, r5
	bl FUN_ov84_0211aab8
	mov r0, r5
	bl FUN_ov84_0211ac08
_0211B920:
	mov r0, r5
	bl FUN_ov84_0211ac8c
	mov r0, r5
	bl FUN_ov84_0211ab5c
	mov r0, r5
	bl FUN_ov84_0211aebc
	mov r0, r5
	mov r1, #1
	bl FUN_ov84_0211ad20
_0211B944:
	ldr r6, _0211BADC ; =0x02099ED4
	ldr r0, [r6]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211BA44
	mov r0, r5
	bl FUN_ov84_0211ae3c
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r1, #4
	ldr r0, _0211BAD8 ; =0x020A0640
	str r1, [r5, #8]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211BA44
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _0211BA44
	mov r0, #5
	str r0, [r5, #8]
	mov r8, #2
	mov r7, #0
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_0210e5f0
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r0, [r6]
	ldr r3, [r5, #0x44]
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_0210e4f0
	b _0211BA44
_0211B9E0:
	ldr r0, _0211BADC ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211BA44
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #8
	str r0, [r5, #8]
_0211BA04:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211BA44
	ldr r6, [r5, #4]
	mov r4, #0x46
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
_0211BA44:
	mov r0, r5
	bl FUN_ov84_0211a5e4
	ldr r4, _0211BAE0 ; =0x0209A110
	mov r0, r5
	ldr r1, [r4]
	bl FUN_ov84_0211b1a4
	ldr r0, _0211BADC ; =0x02099ED4
	ldr r1, [r4]
	ldr r0, [r0]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211BA90
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211BA9C
_0211BA90:
	bl _ffltu
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211BA9C:
	bl FUN_0201fdac
	ldr r2, _0211BAE4 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldr r0, [r5, #8]
	cmp r0, #4
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211BAD4 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BAD4: .word unk_02099EC0
_0211BAD8: .word unk_020A0640
_0211BADC: .word unk_02099ED4
_0211BAE0: .word unk_0209A110
_0211BAE4: .word unk_02099F58
	arm_func_end FUN_ov84_0211b844

	arm_func_start FUN_ov84_0211bae8
FUN_ov84_0211bae8: ; 0x0211BAE8
	bx lr
	arm_func_end FUN_ov84_0211bae8

	arm_func_start FUN_ov84_0211baec
FUN_ov84_0211baec: ; 0x0211BAEC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211BBAC ; =0x02099EB4
	mov r5, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211BBB0 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r4, _0211BBB4 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_020568a4
	ldr r0, [r4]
	bl FUN_02057c60
	mov r0, r5
	bl FUN_ov84_0211a478
	ldr r0, _0211BBB8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldr r4, _0211BBBC ; =0x0209A2C0
	mov r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	mov r0, #0x80000000
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	sub r0, r0, #0x80000001
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	mov r0, r4
	mov r1, r5
	bl  FUN_ov126_0212fbf4
	str r5, [r4, #0x34]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	strb r5, [r4, #0x5c]
	strb r5, [r4, #0x5e]
	strb r5, [r4, #0x58]
	strb r5, [r4, #0x59]
	strb r5, [r4, #0x5f]
	strh r5, [r4, #0x54]
	mov r1, r5
	ldr r4, _0211BBC0 ; =0x02099EF0
	ldr r0, [r4]
	bl  FUN_ov126_02133b8c
	ldr r0, [r4]
	bl  FUN_ov132_02148bac
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBAC: .word unk_02099EB4
_0211BBB0: .word unk_02099ED4
_0211BBB4: .word unk_02099EC0
_0211BBB8: .word unk_02099F38
_0211BBBC: .word unk_0209A2C0
_0211BBC0: .word unk_02099EF0
	arm_func_end FUN_ov84_0211baec

	arm_func_start FUN_ov84_0211bbc4
FUN_ov84_0211bbc4: ; 0x0211BBC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov84_0211bbc4

	arm_func_start FUN_ov84_0211bbd8
FUN_ov84_0211bbd8: ; 0x0211BBD8
	bx lr
	arm_func_end FUN_ov84_0211bbd8
_0211BBDC:
	.byte 0x1C, 0x00, 0x5A, 0x00
	.byte 0x44, 0x00, 0x5A, 0x00, 0x6C, 0x00, 0x5A, 0x00, 0x94, 0x00, 0x5A, 0x00, 0xBC, 0x00, 0x5A, 0x00
	.byte 0xE4, 0x00, 0x5A, 0x00, 0x30, 0x00, 0x92, 0x00, 0x58, 0x00, 0x92, 0x00, 0x80, 0x00, 0x92, 0x00
	.byte 0xA8, 0x00, 0x92, 0x00, 0xD0, 0x00, 0x92, 0x00, 0xA0, 0xBD, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0xBD, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x60, 0xBD, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x30, 0xBD, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xF8, 0xBC, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x10, 0xBD, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x90, 0xBD, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x50, 0xBD, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x70, 0xBD, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x40, 0xBD, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0xBD, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x20, 0xBD, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov84_0211bc78
FUN_ov84_0211bc78: ; 0x0211BC78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BCC0 ; =0x0211BCE0
	str r0, [r4, #4]
	ldr r0, _0211BCC4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _0211BCC8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BCC0: .word ov84_0211BCE0
_0211BCC4: .word 0x00009CCD
_0211BCC8: .word 0x0000EA3C
	arm_func_end FUN_ov84_0211bc78

	.section .sinit, 4
ov84_0211BCCC:
	.word FUN_ov84_0211bc78

	.data
	.global ov84_0211BCE0
ov84_0211BCE0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x6D, 0x73, 0x67, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00, 0x77, 0x63, 0x5F, 0x6D, 0x73, 0x67, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.byte 0x70, 0x6C, 0x79, 0x5F, 0x73, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x6C, 0x79, 0x5F, 0x73, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x70, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov84_0211BDB8
ov84_0211BDB8:
	.byte 0xD8, 0xBB, 0x11, 0x02, 0xC4, 0xBB, 0x11, 0x02
	.byte 0xB8, 0xB5, 0x11, 0x02, 0x58, 0xB6, 0x11, 0x02, 0x28, 0xB7, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0x44, 0xB8, 0x11, 0x02, 0xE8, 0xBA, 0x11, 0x02, 0xEC, 0xBA, 0x11, 0x02, 0x98, 0xA0, 0x11, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0x78, 0xA1, 0x11, 0x02, 0x80, 0xA1, 0x11, 0x02, 0x1C, 0xA2, 0x11, 0x02
	.byte 0x34, 0xA2, 0x11, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02, 0x00, 0xE6, 0x0B, 0x02, 0x5C, 0xE5, 0x0B, 0x02, 0xBC, 0xE5, 0x0B, 0x02
	.byte 0xE0, 0xE5, 0x0B, 0x02
	.global ov84_0211BE34
ov84_0211BE34:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x6B, 0x70, 0x72, 0x65, 0x70, 0x61, 0x72, 0x65, 0x2E, 0x53, 0x50, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov84_0211BE54
ov84_0211BE54:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x6B, 0x70, 0x72, 0x65, 0x70, 0x61, 0x72, 0x65, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov84_0211BE74
ov84_0211BE74:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x6B, 0x70, 0x72, 0x65, 0x70, 0x61, 0x72, 0x65, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov84_0211BE94
ov84_0211BE94:
	.byte 0x83, 0x5E, 0x83, 0x62, 0x83, 0x60, 0x83, 0x79, 0x83, 0x93, 0x82, 0xC5
	.byte 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xF0, 0x82, 0xA2, 0x82, 0xC7, 0x82, 0xA4, 0x82, 0xB3
	.byte 0x82, 0xB9, 0x82, 0xC4, 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4A, 0x81, 0x5B, 0x82, 0xCC, 0x82, 0xB6
	.byte 0x82, 0xE3, 0x82, 0xF1, 0x82, 0xCE, 0x82, 0xF1, 0x82, 0xF0, 0x8C, 0x88, 0x82, 0xDF, 0x82, 0xC4
	.byte 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

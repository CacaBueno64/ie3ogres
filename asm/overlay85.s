
	.include "/macros/function.inc"
	.include "/include/overlay85.inc"

	.text
	arm_func_start FUN_ov85_02119f00
FUN_ov85_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	mov r1, #0x34
	mov r0, #0xe
	str r1, [r6, #0x6c]
	str r5, [r6, #0x70]
	str r5, [r6, #0x74]
	str r5, [r6, #0x78]
	str r5, [r6, #0x7c]
	str r0, [r6, #0x80]
	mov r4, r5
	ldr r8, _02119FD8 ; =0x0209AEC0
	mvn r7, #0
	b _02119F58
_02119F3C:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	add r0, r6, r5, lsl #2
	streq r4, [r0, #0x84]
	strne r7, [r0, #0x84]
	add r5, r5, #1
_02119F58:
	cmp r5, #4
	blt _02119F3C
	mov r8, #0
	ldr r7, _02119FD8 ; =0x0209AEC0
	mvn r5, #0
	b _02119F8C
_02119F70:
	mov r0, r7
	bl FUN_02046730
	cmp r8, r0
	add r0, r6, r8, lsl #2
	streq r4, [r0, #0x94]
	strne r5, [r0, #0x94]
	add r8, r8, #1
_02119F8C:
	cmp r8, #4
	blt _02119F70
	mov r1, #0
	b _02119FA8
_02119F9C:
	add r0, r6, r1, lsl #2
	str r4, [r0, #0xa4]
	add r1, r1, #1
_02119FA8:
	cmp r1, #4
	blt _02119F9C
	mov r1, r4
	add r0, r6, #0xb8
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _02119FDC ; =0x0209A4E0
	strb r4, [r6, #0x418]
	mov r1, #0x34
	strb r1, [r0, #2]
	strb r4, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02119FD8: .word unk_0209AEC0
_02119FDC: .word unk_0209A4E0
	arm_func_end FUN_ov85_02119f00

	arm_func_start FUN_ov85_02119fe0
FUN_ov85_02119fe0: ; 0x02119FE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0211A00C ; =0x0211CDE8
	add r0, r4, #0x6c
	bl  FUN_ov1_020e62c0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #8
	bl FUN_ov85_0211a140
	ldmfd sp!, {r4, pc}
_0211A00C: .word 0x0211CDE8
	arm_func_end FUN_ov85_02119fe0

	arm_func_start FUN_ov85_0211a010
FUN_ov85_0211a010: ; 0x0211A010
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	ldr r0, _0211A0E0 ; =0x0209AEC0
	cmp r1, #6
	ldrb r0, [r0, #0x64]
	beq _0211A038
	cmp r1, #7
	beq _0211A068
	b _0211A0D8
_0211A038:
	mov r5, #7
	mov r1, r5
	sub r2, r5, #8
	mov r0, #6
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A0D8
	mov r0, r4
	mov r1, r5
_0211A060:
	bl FUN_ov85_0211a140
	b _0211A0D8
_0211A068:
	cmp r0, #0
	bne _0211A0B4
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #3]
	cmp r0, #8
	beq _0211A0A8
	mov r0, r5
	mov r1, r5
	bl  FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _0211A0B4
_0211A0A8:
	mov r0, r4
	mov r1, #8
	b _0211A060
_0211A0B4:
	mov r0, #7
	sub r1, r0, #8
	mov r2, r1
	mov r3, #0
	bl  FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A0D8
	mov r0, r4
	bl FUN_ov85_02119fe0
_0211A0D8:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0211A0E0: .word unk_0209AEC0
	arm_func_end FUN_ov85_0211a010

	arm_func_start FUN_ov85_0211a0e4
FUN_ov85_0211a0e4: ; 0x0211A0E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #7
	bne _0211A104
	add r0, r4, #0x6c
	mov r1, #0xa
	bl  FUN_ov1_020e6eac
_0211A104:
	ldr r1, [r4, #8]
	add r0, r4, #0x6c
	bl  FUN_ov1_020e5328
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov85_0211a0e4

	arm_func_start FUN_ov85_0211a118
FUN_ov85_0211a118: ; 0x0211A118
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov85_0211a118

	arm_func_start FUN_ov85_0211a12c
FUN_ov85_0211a12c: ; 0x0211A12C
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov85_0211a12c

	arm_func_start FUN_ov85_0211a140
FUN_ov85_0211a140: ; 0x0211A140
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r7, #1
	mov r6, #0
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r1, [r4, #8]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A16C: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 4
	b _0211A194 ; case 5
	b _0211A1A0 ; case 6
	b _0211A260 ; case 7
	b _0211A288 ; case 8
	b _0211A308 ; case 9
_0211A194:
	str r7, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A1A0:
	mov r8, r6
	mov r1, #0x34
	mov r0, #0xe
	str r1, [r4, #0x6c]
	str r8, [r4, #0x70]
	str r8, [r4, #0x74]
	str r8, [r4, #0x78]
	str r8, [r4, #0x7c]
	str r0, [r4, #0x80]
	ldr r5, _0211A414 ; =0x0209AEC0
	mvn r9, #0
	b _0211A1EC
_0211A1D0:
	mov r0, r5
	bl FUN_02046730
	cmp r8, r0
	add r0, r4, r8, lsl #2
	streq r6, [r0, #0x84]
	strne r9, [r0, #0x84]
	add r8, r8, #1
_0211A1EC:
	cmp r8, #4
	blt _0211A1D0
	mov r8, #0
	ldr r5, _0211A414 ; =0x0209AEC0
	mvn r9, #0
	b _0211A220
_0211A204:
	mov r0, r5
	bl FUN_02046730
	cmp r8, r0
	add r0, r4, r8, lsl #2
	streq r6, [r0, #0x94]
	strne r9, [r0, #0x94]
	add r8, r8, #1
_0211A220:
	cmp r8, #4
	blt _0211A204
	mov r1, #0
	b _0211A23C
_0211A230:
	add r0, r4, r1, lsl #2
	str r6, [r0, #0xa4]
	add r1, r1, #1
_0211A23C:
	cmp r1, #4
	blt _0211A230
	mov r1, r6
	add r0, r4, #0xb8
	mov r2, #0x60
	bl MI_CpuFill8
	strb r6, [r4, #0x418]
	strb r7, [r4, #0x21]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A260:
	ldr r1, _0211A418 ; =0x0211CDE8
	mov r0, r6
	bl  FUN_ov1_020e5634
	mov r1, r0
	add r0, r4, #0x6c
	bl  FUN_ov1_020e5030
	ldr r0, _0211A41C ; =0x020E9482
	strb r7, [r4, #0x21]
	strb r6, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A288:
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r0, [r4, #4]
	mov r1, #5
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	ldr r0, _0211A420 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	beq _0211A2DC
	ldr r4, [r4, #4]
	mov r1, r6
	mov r0, r4
	mov r2, #0x37
	bl FUN_02041eac
	mov r0, r4
	mov r1, r7
	mov r2, #0x38
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A2DC:
	ldr r5, [r4, #4]
	mov r4, #0x47
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, r7
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A308:
	bl  FUN_ov16_020f081c
	ldr r1, [r4, #0xc]
	mov r5, r7
	cmp r1, #1
	mov r1, r6
	bne _0211A328
	cmp r0, #0
	movne r1, r5
_0211A328:
	cmp r1, #0
	bne _0211A350
	ldr r1, [r4, #0xc]
	mov r2, #0
	cmp r1, #2
	bne _0211A348
	cmp r0, #1
	movne r2, #1
_0211A348:
	cmp r2, #0
	moveq r5, #0
_0211A350:
	ldr r0, _0211A420 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A36C
	bl  FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	moveq r5, #1
_0211A36C:
	ldr r0, [r4, #0xc]
	ldr r8, _0211A424 ; =0x0209A454
	cmp r0, #1
	strb r7, [r8, #0x2e]
	strb r7, [r8, #0x2f]
	strb r6, [r8, #0x30]
	strb r6, [r8, #0x31]
	moveq r0, #0
	strb r6, [r8, #0x32]
	movne r0, #1
	strb r6, [r8, #0x33]
	strb r0, [r8, #0x28]
	strb r5, [r8, #0x29]
	strb r6, [r8, #0x2a]
	ldr r0, _0211A428 ; =0x0209BA20
	strb r6, [r8, #0x2b]
	bl FUN_020731a4
	strb r0, [r8, #0x30]
	ldr r0, _0211A42C ; =0x02099EF0
	strb r6, [r8, #0x31]
	ldr r0, [r0]
	strb r7, [r8, #0x33]
	bl  FUN_ov126_021355b4
	mov r5, #6
	mov r0, r5
	bl  FUN_ov16_020f153c
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	ldr r5, [r4, #4]
	mov r4, #0x5a
	mov r1, r6
	mov r0, r5
	mov r2, r4
	bl FUN_02041ef0
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A414: .word unk_0209AEC0
_0211A418: .word 0x0211CDE8
_0211A41C: .word 0x020E9482
_0211A420: .word unk_020A0640
_0211A424: .word unk_0209A454
_0211A428: .word unk_0209BA20
_0211A42C: .word unk_02099EF0
	arm_func_end FUN_ov85_0211a140

	arm_func_start FUN_ov85_0211a430
FUN_ov85_0211a430: ; 0x0211A430
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0211A454
	ldr r0, _0211A490 ; =0x0209AC44
	ldr r2, _0211A494 ; =0x0211CFF0
	mov r1, #0
	bl FUN_0202d594
	ldmfd sp!, {r3, r4, r5, pc}
_0211A454:
	cmp r1, #1
	ldreqb r0, [r0, #0x10]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r5, _0211A490 ; =0x0209AC44
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_0202c3b4
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_0202c3b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A490: .word unk_0209AC44
_0211A494: .word ov85_0211CFF0
	arm_func_end FUN_ov85_0211a430

	arm_func_start FUN_ov85_0211a498
FUN_ov85_0211a498: ; 0x0211A498
	cmp r1, #4
	moveq r1, #1
	streqb r1, [r0, #0x20]
	mov r0, #0
	bx lr
	arm_func_end FUN_ov85_0211a498

	arm_func_start FUN_ov85_0211a4ac
FUN_ov85_0211a4ac: ; 0x0211A4AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r4, r0
	add r0, r4, #0x1c
	mov r8, #0
	mov r1, r8
	add r0, r0, #0x400
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r9, [r4, #0x5f0]
	cmp r9, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0xc]
	mov r10, r8
	sub r7, r0, #1
	add r5, sp, #0
	mov r6, r8
_0211A4F4:
	ldrb r1, [r9]
	cmp r1, #0
	beq _0211A534
	mov r0, r7
	mov r2, r6
	bl  FUN_ov16_020efabc
	cmp r0, #0
	beq _0211A534
	bl FUN_0206cbf8
	add r1, r4, r8, lsl #2
	add r1, r1, #0x400
	strh r0, [r1, #0x1c]
	strh r10, [r1, #0x1e]
	ldrb r0, [r9, #6]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
_0211A534:
	add r10, r10, #1
	cmp r10, #6
	add r9, r9, #7
	blt _0211A4F4
	sub r1, r8, #1
	cmp r1, #0
	addle sp, sp, #0x18
	mov r2, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, sp, #0
_0211A55C:
	add r3, r2, #1
	cmp r3, r8
	bge _0211A5BC
	add r5, r4, r2, lsl #2
	add r5, r5, #0x400
_0211A570:
	ldr lr, [r0, r3, lsl #2]
	ldr r12, [r0, r2, lsl #2]
	cmp r12, lr
	ble _0211A5B0
	add r6, r4, r3, lsl #2
	add r6, r6, #0x400
	ldrh r10, [r5, #0x1c]
	ldrh r9, [r5, #0x1e]
	ldrh r7, [r6, #0x1c]
	str lr, [r0, r2, lsl #2]
	str r12, [r0, r3, lsl #2]
	strh r7, [r5, #0x1c]
	ldrh r7, [r6, #0x1e]
	strh r7, [r5, #0x1e]
	strh r10, [r6, #0x1c]
	strh r9, [r6, #0x1e]
_0211A5B0:
	add r3, r3, #1
	cmp r3, r8
	blt _0211A570
_0211A5BC:
	add r2, r2, #1
	cmp r2, r1
	blt _0211A55C
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov85_0211a4ac

	arm_func_start FUN_ov85_0211a5d0
FUN_ov85_0211a5d0: ; 0x0211A5D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	ldr r7, _0211A630 ; =0x02099F04
	mov r5, r0
	mov r8, r4
	mov r6, #0xc
_0211A5E8:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x400
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	beq _0211A620
	mov r1, r8
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r4, r6, r5
	ldrne r1, [r1, #0x5a8]
	cmpne r1, #0
	beq _0211A620
	ldr r2, [r7]
	bl  FUN_ov16_020f0c30 ; may be ov17
_0211A620:
	add r4, r4, #1
	cmp r4, #6
	blt _0211A5E8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A630: .word unk_02099F04
	arm_func_end FUN_ov85_0211a5d0

	arm_func_start FUN_ov85_0211a634
FUN_ov85_0211a634: ; 0x0211A634
	stmfd sp!, {r3, lr}
	mov r12, #0xc
	mla lr, r1, r12, r0
	mla r0, r2, r12, r0
	ldr r12, [lr, #0x434]
	ldr lr, [r0, #0x434]
	cmp r12, #0
	cmpne lr, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r12, #8]
	cmp r0, #0x20
	ldreq r0, [lr, #8]
	cmpeq r0, #0x20
	ldmnefd sp!, {r3, pc}
	ldr r1, [r12, #4]
	ldr r0, [lr, #4]
	ldr r2, [sp, #8]
	add r12, r12, r1
	add r1, lr, r0
	add r0, r12, r3, lsl #1
	add r1, r1, r3, lsl #1
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov85_0211a634

	arm_func_start FUN_ov85_0211a694
FUN_ov85_0211a694: ; 0x0211A694
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r5, #0
	ldr r0, _0211A7F0 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	mov r0, r5
	bl  FUN_ov1_020dc1f4
	mov r5, r0
	ldr r0, [r4, #0x620]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r5
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A6F8
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0xc4
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A7F4 ; =0x0211CFF8
	add r1, r1, #0x400
	bl  FUN_ov1_020dbefc
_0211A6F8:
	mov r0, #0
	bl  FUN_ov1_020dc150
	cmp r0, #0
	bne _0211A744
	ldr r0, [r4, #0x62c]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r5
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A744
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0xdc
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A7F8 ; =0x0211D004
	add r1, r1, #0x400
	bl  FUN_ov1_020dbefc
_0211A744:
	mov r5, #1
	ldr r0, _0211A7F0 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	mov r0, r5
	bl  FUN_ov1_020dc1f4
	mov r6, r0
	ldr r0, [r4, #0x620]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r6
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A794
	str r5, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A7FC ; =0x0211D010
	add r1, r4, #0x4d0
	bl  FUN_ov1_020dbefc
_0211A794:
	mov r5, #1
	mov r0, r5
	bl  FUN_ov1_020dc150
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r4, #0x62c]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r6
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [sp]
	add r1, r4, #0xe8
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A800 ; =0x0211D01C
	add r1, r1, #0x400
	bl  FUN_ov1_020dbefc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A7F0: .word unk_0209BA20
_0211A7F4: .word ov85_0211CFF8
_0211A7F8: .word ov85_0211D004
_0211A7FC: .word ov85_0211D010
_0211A800: .word ov85_0211D01C
	arm_func_end FUN_ov85_0211a694

	arm_func_start FUN_ov85_0211a804
FUN_ov85_0211a804: ; 0x0211A804
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0xc]
	mov r5, #1
	cmp r0, #1
	mov r7, #0
	movne r7, r5
	ldr r0, _0211A920 ; =0x0209BA20
	mov r1, r7
	bl FUN_0207249c
	mov r6, r0
	mov r0, r7
	bl  FUN_ov1_020dc150
	cmp r0, #0
	movne r8, #0xc9
	bne _0211A854
	ldrh r8, [r6, #0x2a]
	cmp r8, #0
	ldreqh r8, [r6, #0x20]
_0211A854:
	ldr r0, [r4, #0x638]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r8
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A88C
	str r5, [sp]
	add r1, r4, #0xf4
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A924 ; =0x0211D028
	add r1, r1, #0x400
	bl  FUN_ov1_020dbefc
_0211A88C:
	mov r0, r7
	bl  FUN_ov1_020dc150
	cmp r0, #0
	ldrneb r8, [r6, #0x2d]
	ldr r0, [r4, #0x644]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r8
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211A8D0
	str r5, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A928 ; =0x0211D034
	add r1, r4, #0x500
	bl  FUN_ov1_020dbefc
_0211A8D0:
	ldr r0, [r4, #0xc]
	mov r1, #1
	cmp r0, #1
	ldr r0, [r4, #0x650]
	movne r1, #2
	add r2, sp, #8
	add r3, sp, #4
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r5, [sp]
	add r1, r4, #0x10c
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0211A92C ; =0x0211D040
	add r1, r1, #0x400
	bl  FUN_ov1_020dbefc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A920: .word unk_0209BA20
_0211A924: .word ov85_0211D028
_0211A928: .word ov85_0211D034
_0211A92C: .word ov85_0211D040
	arm_func_end FUN_ov85_0211a804

	arm_func_start FUN_ov85_0211a930
FUN_ov85_0211a930: ; 0x0211A930
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r4, r0
	str r1, [r4, #0x14]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211AC8C
_0211A94C: ; jump table
	b _0211AC8C ; case 0
	b _0211A960 ; case 1
	b _0211AA80 ; case 2
	b _0211AAE4 ; case 3
	b _0211AAE4 ; case 4
_0211A960:
	add r0, r4, #0x34
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x400
	mov r2, #0x228
	bl MI_CpuFill8
	add r1, r4, #0x34
	ldr r0, _0211ACA0 ; =0x0211D04C
	add r1, r1, #0x400
	bl  FUN_ov1_020dbe00
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211A9E4
	ldr r0, _0211ACA4 ; =0x0211D058
	add r1, r4, #0x620
	bl  FUN_ov1_020dbec4
	ldr r0, _0211ACA8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A9D0
	mov r0, r5
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	bne _0211A9D0
	mov r0, #1
	bl  FUN_ov16_020f0a30
	cmp r0, #0
	beq _0211AC8C
_0211A9D0:
	add r1, r4, #0x22c
	ldr r0, _0211ACAC ; =0x0211D064
	add r1, r1, #0x400
	bl  FUN_ov1_020dbec4
	b _0211AC8C
_0211A9E4:
	cmp r0, #1
	movne r5, #1
	ldr r0, _0211ACB0 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	ldrh r0, [r0, #0x22]
	mov r3, #0x60
	mul r1, r0, r3
	str r1, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r0, _0211ACB4 ; =0x0211D070
	add r1, r4, #0x5f0
	bl  FUN_ov16_020f31fc
	add r1, r4, #0x238
	ldr r0, _0211ACB8 ; =0x0211D08C
	add r1, r1, #0x400
	bl  FUN_ov1_020dbec4
	add r1, r4, #0x244
	ldr r0, _0211ACBC ; =0x0211D098
	add r1, r1, #0x400
	bl  FUN_ov1_020dbec4
	ldr r0, _0211ACC0 ; =0x0211D0A4
	add r1, r4, #0x650
	bl  FUN_ov1_020dbec4
	add r0, r4, #0x1fc
	add r1, r0, #0x400
	ldr r0, _0211ACC4 ; =0x0211D0B0
	bl  FUN_ov1_020dbf50
	add r1, r4, #0x208
	ldr r0, _0211ACC8 ; =0x0211D0B8
	add r1, r1, #0x400
	bl  FUN_ov1_020dbf50
	add r1, r4, #0x214
	ldr r0, _0211ACCC ; =0x0211D0C0
	add r1, r1, #0x400
	bl  FUN_ov1_020dbf50
	b _0211AC8C
_0211AA80:
	ldr r0, _0211ACD0 ; =0x02099EDC
	mov r5, #0
	ldr r0, [r0]
	mov r1, r5
	mov r2, r5
	bl FUN_02043310
	ldr r0, [r4, #0xc]
	cmp r0, #0
	mov r0, r4
	bne _0211AAC4
	bl FUN_ov85_0211a694
	mov r1, r5
	add r0, r4, #0x3c
	bl  FUN_ov1_020db4f0
	add r0, r4, #0x50
	mov r1, #1
	b _0211AADC
_0211AAC4:
	bl FUN_ov85_0211a804
	ldr r0, [r4, #0xc]
	cmp r0, #1
	movne r5, #1
	mov r1, r5
	add r0, r4, #0x3c
_0211AADC:
	bl  FUN_ov1_020db4f0
	b _0211AC8C
_0211AAE4:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0211AAF8
	cmp r0, #2
	bne _0211AC8C
_0211AAF8:
	ldr r0, [r4, #0xc]
	mov r1, #0
	cmp r0, #1
	ldr r0, _0211ACB0 ; =0x0209BA20
	movne r1, #1
	bl FUN_0207249c
	mov r8, r0
	add r0, r4, #0x34
	mov r9, #0
	add r5, r0, #0x400
	add r11, sp, #0x10
	b _0211AC84
_0211AB28:
	add r0, r4, r9, lsl #2
	add r0, r0, #0x400
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	beq _0211AC80
	mov r1, #0
	bl  FUN_ov16_020efa9c
	movs r7, r0
	beq _0211AC80
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bne _0211ABAC
	ldr r0, [r4, #0x5fc]
	cmp r0, #0
	beq _0211AC80
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [r4, #0x5fc]
	mov r1, r7
	mov r2, #0
	mov r3, r11
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _0211AC80
	add r2, r9, #0x19
	mov r1, #0xc
	mov r0, #1
	str r0, [sp]
	mla r1, r2, r1, r5
	ldr r0, _0211ACD4 ; =0x0211D0C8
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	b _0211AC7C
_0211ABAC:
	mov r0, r8
	mov r1, r7
	bl  FUN_ov16_020f0bcc
	ldrh r1, [r8, #0x28]
	mov r6, r0
	mov r0, r7
	cmp r1, #0
	ldreqh r1, [r8, #0x26]
	bl  FUN_ov16_020f0b3c
	mov r10, r0
	ldr r0, [r4, #0x608]
	cmp r0, #0
	beq _0211AC2C
	str r11, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #0x608]
	mov r1, r7
	mov r2, r10
	mov r3, r6
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211AC2C
	add r2, r9, #0x13
	mov r1, #0xc
	mla r1, r2, r1, r5
	mov r0, #1
	str r0, [sp]
	ldr r0, _0211ACD8 ; =0x0211D0D0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #8]
	bl  FUN_ov1_020dbf88
_0211AC2C:
	ldr r0, [r4, #0x614]
	cmp r0, #0
	beq _0211AC80
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [r4, #0x614]
	mov r1, r10
	mov r2, r6
	mov r3, r11
	bl  FUN_ov16_020f3744
	cmp r0, #0
	beq _0211AC80
	add r2, r9, #0x1f
	mov r1, #0xc
	mla r1, r2, r1, r5
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211ACDC ; =0x0211D0D8
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #8]
_0211AC7C:
	bl  FUN_ov1_020dbf88
_0211AC80:
	add r9, r9, #1
_0211AC84:
	cmp r9, #6
	blt _0211AB28
_0211AC8C:
	mov r0, r4
	mov r1, #1
	bl FUN_ov85_0211a140
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACA0: .word ov85_0211D04C
_0211ACA4: .word ov85_0211D058
_0211ACA8: .word unk_020A0640
_0211ACAC: .word ov85_0211D064
_0211ACB0: .word unk_0209BA20
_0211ACB4: .word ov85_0211D070
_0211ACB8: .word ov85_0211D08C
_0211ACBC: .word ov85_0211D098
_0211ACC0: .word ov85_0211D0A4
_0211ACC4: .word ov85_0211D0B0
_0211ACC8: .word ov85_0211D0B8
_0211ACCC: .word ov85_0211D0C0
_0211ACD0: .word unk_02099EDC
_0211ACD4: .word ov85_0211D0C8
_0211ACD8: .word ov85_0211D0D0
_0211ACDC: .word ov85_0211D0D8
	arm_func_end FUN_ov85_0211a930

	arm_func_start FUN_ov85_0211ace0
FUN_ov85_0211ace0: ; 0x0211ACE0
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0x434]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	add r1, r1, #0x34
	ldr r2, _0211AD08 ; =0x0211CDFC
	add r1, r1, #0x400
	bl  FUN_ov1_020dbfdc
	ldmfd sp!, {r3, pc}
_0211AD08: .word 0x0211CDFC
	arm_func_end FUN_ov85_0211ace0

	arm_func_start FUN_ov85_0211ad0c
FUN_ov85_0211ad0c: ; 0x0211AD0C
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x34
	mov r6, #0
	add r5, r0, #0x400
	mov r4, #0xc
_0211AD20:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x2e
	blt _0211AD20
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov85_0211ad0c

	arm_func_start FUN_ov85_0211ad38
FUN_ov85_0211ad38: ; 0x0211AD38
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	add r0, r0, #0x400
	add r0, r0, #0x1c8
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x400
	add r0, r0, #0x1d4
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x5e0
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x400
	add r0, r0, #0x204
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x610
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x400
	add r0, r0, #0x1ec
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x400
	add r0, r0, #0x1f8
	bl  FUN_ov16_020f33fc
	add r0, r4, #0x34
	add r0, r0, #0x400
	add r0, r0, #0x21c
	bl  FUN_ov16_020f33fc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov85_0211ad38

	arm_func_start FUN_ov85_0211adbc
FUN_ov85_0211adbc: ; 0x0211ADBC
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #4
	ldreq r2, [r0, #0x18]
	cmpeq r2, #0
	ldreqb r2, [r0, #0x23]
	cmpeq r2, #0
	ldreq r2, [r0, #0xc]
	cmpeq r2, #0
	ldmnefd sp!, {r3, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov85_0211b044
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov85_0211adbc

	arm_func_start FUN_ov85_0211adf4
FUN_ov85_0211adf4: ; 0x0211ADF4
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0xc]
	mov r3, r2
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211AE20 ; =0x0209F5C0
	mov r2, r1
	mov r1, #0
	bl  FUN_ov16_020f6b3c
	ldmfd sp!, {r3, pc}
_0211AE20: .word unk_0209F5C0
	arm_func_end FUN_ov85_0211adf4

	arm_func_start FUN_ov85_0211ae24
FUN_ov85_0211ae24: ; 0x0211AE24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211AE40
	bl FUN_ov85_0211b044
	ldmfd sp!, {r4, pc}
_0211AE40:
	ldr r1, [r4, #0x2c]
	cmp r1, #8
	bne _0211AE94
	ldr r0, _0211AEA4 ; =0x0209BA20
	bl FUN_020732d8
	cmp r0, #0
	beq _0211AE78
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _0211AE78
	ldr r0, _0211AEA8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211AE78:
	ldr r0, _0211AEA8 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #9
	bl FUN_ov85_0211a140
	ldmfd sp!, {r4, pc}
_0211AE94:
	cmp r1, #9
	ldmnefd sp!, {r4, pc}
	bl FUN_ov85_0211b044
	ldmfd sp!, {r4, pc}
_0211AEA4: .word unk_0209BA20
_0211AEA8: .word unk_0209AC44
	arm_func_end FUN_ov85_0211ae24

	arm_func_start FUN_ov85_0211aeac
FUN_ov85_0211aeac: ; 0x0211AEAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #8]
	mov r4, r1
	cmp r2, #4
	ldreq r1, [r5, #0x18]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r1, [r4, #4]
	cmp r1, #1
	bne _0211AF34
	ldrh r1, [r4, #6]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x34]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x23]
	cmp r1, #0
	bne _0211AF14
	mov r1, #1
	strb r1, [r5, #0x23]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	bl FUN_ov85_0211adf4
	str r0, [r5, #0x2c]
_0211AF14:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0x24]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x28]
	bl FUN_ov85_0211adf4
	str r0, [r5, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AF34:
	ldrb r1, [r5, #0x23]
	cmp r1, #0
	beq _0211AF60
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl FUN_ov85_0211adf4
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _0211AF60
	mov r0, r5
	bl FUN_ov85_0211ae24
_0211AF60:
	mov r1, #0
	mov r0, #1
	str r1, [r5, #0x30]
	str r1, [r5, #0x2c]
	strb r1, [r5, #0x23]
	strb r0, [r5, #0x34]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov85_0211aeac

	arm_func_start FUN_ov85_0211af7c
FUN_ov85_0211af7c: ; 0x0211AF7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #6
	bl  FUN_ov16_020f153c
	cmp r4, #1
	ldr r0, [r5, #4]
	bne _0211AFA4
	mov r1, #1
	b _0211AFA8
_0211AFA4:
	mov r1, #2
_0211AFA8:
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	mov r0, r5
	mov r1, #5
	str r4, [r5, #0xc]
	bl FUN_ov85_0211a140
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov85_0211af7c

	arm_func_start FUN_ov85_0211afc8
FUN_ov85_0211afc8: ; 0x0211AFC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0211B010
	ldrb r0, [r4, #0x22]
	cmp r0, #0
	beq _0211B010
	ldr r0, _0211B034 ; =0x0209AC44
	ldr r1, _0211B038 ; =0x0211D0E0
	bl FUN_0202d724
	cmp r0, #0
	ldrne r0, [r4, #0x68]
	cmpne r0, #0xf0
	blt _0211B010
	mov r0, r4
	mov r1, #1
	bl FUN_ov85_0211af7c
_0211B010:
	ldr r2, [r4, #0x65c]
	ldr r1, [r4, #0x660]
	ldr r0, _0211B03C ; =0x01FF0000
	add r2, r2, r1
	ldr r1, _0211B040 ; =0x04000018
	str r2, [r4, #0x65c]
	and r0, r0, r2, lsl #16
	str r0, [r1]
	ldmfd sp!, {r4, pc}
_0211B034: .word unk_0209AC44
_0211B038: .word ov85_0211D0E0
_0211B03C: .word 0x01FF0000
_0211B040: .word 0x04000018
	arm_func_end FUN_ov85_0211afc8

	arm_func_start FUN_ov85_0211b044
FUN_ov85_0211b044: ; 0x0211B044
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0x22]
	ldmeqfd sp!, {r4, pc}
	cmp r0, #1
	bne _0211B084
	ldr r0, _0211B0C4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #2
	bl FUN_ov85_0211af7c
	ldmfd sp!, {r4, pc}
_0211B084:
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211B0C4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _0211B0C8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _0211B0B8
	mov r1, #6
	bl FUN_ov85_0211a140
	ldmfd sp!, {r4, pc}
_0211B0B8:
	mov r1, #8
	bl FUN_ov85_0211a140
	ldmfd sp!, {r4, pc}
_0211B0C4: .word unk_0209AC44
_0211B0C8: .word unk_020A0640
	arm_func_end FUN_ov85_0211b044

	arm_func_start FUN_ov85_0211b0cc
FUN_ov85_0211b0cc: ; 0x0211B0CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r4, #0x20
	mov r7, #0
	mov r10, r0
	str r4, [sp, #4]
	bl G2_GetBG3CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r4, #3
	add r5, sp, #4
	str r5, [sp]
	ldr r0, [r10, #0x4c4]
	mov r1, r7
	mov r2, r4
	mov r3, r4
	bl  FUN_ov1_020dc020
	str r5, [sp]
	mov r1, r0
	ldr r0, [r10, #0x4d0]
	mov r2, #4
	mov r3, r4
	bl  FUN_ov1_020dc020
	mov r8, r0
	ldr r0, _0211B39C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211B15C
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211B2D4
_0211B15C:
	mov r6, #0x14
	mov r9, #0
	mov r11, r6
	mov r4, r6
	mov r5, r6
	b _0211B1EC
_0211B174:
	mla r1, r9, r6, r10
	ldr r0, [r1, #0x3c]
	mov r2, r7
	cmp r0, #0
	ldrne r0, [r1, #0x40]
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _0211B1E8
	mla r0, r9, r11, r10
	ldr r0, [r0, #0x3c]
	mov r1, #0xf
	mov r2, #2
	bl  FUN_ov16_020f2ea8
	mla r0, r9, r4, r10
	ldr r0, [r0, #0x3c]
	mov r1, #0x3c
	add r2, r8, #1
	mov r3, r7
	bl  FUN_ov16_020f1868
	mov r8, r0
	mla r0, r9, r5, r10
	ldr r0, [r0, #0x40]
	ldr r1, [sp, #4]
	mov r2, #0x3c0
	bl FUN_02005a1c
	ldr r0, [sp, #4]
	add r0, r0, #0x3c0
	str r0, [sp, #4]
_0211B1E8:
	add r9, r9, #1
_0211B1EC:
	cmp r9, #2
	blt _0211B174
	add r6, sp, #4
	str r6, [sp]
	mov r5, #3
	ldr r0, [r10, #0x464]
	mov r1, r8
	mov r3, r5
	mov r2, #7
	bl  FUN_ov1_020dc020
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x470]
	mov r3, r5
	mov r2, #8
	bl  FUN_ov1_020dc020
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x47c]
	mov r2, #6
	mov r3, r5
	bl  FUN_ov1_020dc020
	mov r4, #1
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x488]
	mov r2, r4
	mov r3, r5
	bl  FUN_ov1_020dc020
	str r6, [sp]
	mov r1, r0
	ldr r0, [r10, #0x494]
	mov r2, r4
	mov r3, r5
	bl  FUN_ov1_020dc020
	mov r8, r0
	mov r0, #0
	bl  FUN_ov1_020dc150
	cmp r0, #0
	bne _0211B2A8
	str r6, [sp]
	ldr r0, [r10, #0x4dc]
	mov r1, r8
	mov r3, r5
	mov r2, #5
	bl  FUN_ov1_020dc020
	mov r8, r0
_0211B2A8:
	mov r0, #1
	bl  FUN_ov1_020dc150
	cmp r0, #0
	bne _0211B308
	add r0, sp, #4
	str r0, [sp]
	mov r1, r8
	ldr r0, [r10, #0x4e8]
	mov r2, #5
	mov r3, #3
	b _0211B304
_0211B2D4:
	str r5, [sp]
	mov r6, #5
	ldr r0, [r10, #0x4dc]
	mov r1, r8
	mov r2, r6
	mov r3, r4
	bl  FUN_ov1_020dc020
	str r5, [sp]
	mov r1, r0
	ldr r0, [r10, #0x4e8]
	mov r2, r6
	mov r3, r4
_0211B304:
	bl  FUN_ov1_020dc020
_0211B308:
	mov r6, #0
	add r5, sp, #4
	str r6, [sp, #4]
	str r5, [sp]
	sub r4, r6, #1
	mov r2, #2
	ldr r0, [r10, #0x440]
	mov r1, r4
	mov r3, r2
	bl  FUN_ov1_020dc020
	str r6, [sp, #4]
	str r5, [sp]
	ldr r0, [r10, #0x44c]
	mov r1, r4
	mov r2, #9
	mov r3, #1
	bl  FUN_ov1_020dc020
	bl  FUN_ov16_020f10ac
	ldr r3, [r10, #0x440]
	cmp r3, #0
	beq _0211B370
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r6
	add r0, r3, r0
	bl FUN_020055bc
_0211B370:
	ldr r1, [r10, #0x44c]
	cmp r1, #0
	beq _0211B390
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl FUN_020054dc
_0211B390:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B39C: .word unk_020A0640
	arm_func_end FUN_ov85_0211b0cc

	arm_func_start FUN_ov85_0211b3a0
FUN_ov85_0211b3a0: ; 0x0211B3A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, #0
	add r7, sp, #0x1c
	str r9, [sp, #0x1c]
	mov r2, #2
	mov r10, r0
	str r7, [sp]
	ldr r0, [r10, #0x458]
	mov r3, r2
	sub r1, r9, #1
	mov r6, r9
	bl  FUN_ov1_020dc020
	bl G2_GetBG1CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r0, r9
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #0x1c]
	mov r5, #4
	str r5, [sp]
	mov r0, r10
	mov r1, #0x12
	mov r2, #0x11
	mov r3, #0xc
	bl FUN_ov85_0211a634
	str r7, [sp]
	ldr r0, [r10, #0x500]
	mov r1, r9
	mov r2, #3
	mov r3, #1
	bl  FUN_ov1_020dc020
	mov r7, r0
	mov r4, #0x13
	mov r11, #0xc
	b _0211B4C8
_0211B440:
	add r0, r10, r9, lsl #2
	add r0, r0, #0x400
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	mlane r1, r4, r11, r10
	ldrne r8, [r1, #0x434]
	cmpne r8, #0
	beq _0211B4BC
	mov r1, r6
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211B4BC
	add r1, r9, #0x1f
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r0, [r0, #0x434]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020f1160
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	add r0, r8, r0
	add r2, r7, #1
	mov r3, r5
	bl  FUN_ov16_020f1868
	mov r7, r0
	ldr r2, [sp, #0x1c]
	mov r1, r8
	mov r0, #1
	bl  FUN_ov16_020f19d4
	str r0, [sp, #0x1c]
_0211B4BC:
	add r9, r9, #1
	add r5, r5, #1
	add r4, r4, #1
_0211B4C8:
	cmp r9, #6
	blt _0211B440
	mov r11, #1
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #0x1c]
	add r7, sp, #0x1c
	str r7, [sp]
	mov r5, #2
	mov r4, #3
	ldr r0, [r10, #0x4ac]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl  FUN_ov1_020dc020
	str r7, [sp]
	mov r1, r0
	ldr r0, [r10, #0x4b8]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov1_020dc020
	str r7, [sp]
	mov r1, r0
	ldr r0, [r10, #0x4a0]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov1_020dc020
	str r7, [sp]
	mov r1, r0
	ldr r0, [r10, #0x4f4]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov1_020dc088
	mov r7, r0
	ldr r0, [r10, #0x38]
	cmp r0, #0
	beq _0211B59C
	mov r1, #6
	mov r2, #0xc
	bl  FUN_ov16_020f2ea8
	ldr r0, [r10, #0x38]
	mov r3, r4
	add r2, r7, #1
	mov r1, #0x90
	bl  FUN_ov16_020f1868
	mov r7, r0
_0211B59C:
	ldr r8, [r10, #0x50c]
	cmp r8, #0
	beq _0211B660
	mov r9, #0
	ldr r1, [sp, #0x1c]
	mov r4, #0xf
	b _0211B658
_0211B5B8:
	add r0, r10, r9, lsl #2
	add r0, r0, #0x400
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	beq _0211B644
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	add r0, r8, r0
	bl FUN_02005a1c
	add r0, r10, r9, lsl #2
	add r0, r0, #0x400
	ldrh r0, [r0, #0x1c]
	mov r1, r6
	bl  FUN_ov16_020efa9c
	movs r5, r0
	beq _0211B644
	bl G2_GetBG3CharPtr
	stmia sp, {r4, r11}
	ldr r2, [sp, #0x1c]
	add r3, r5, #0x1c
	add r0, r2, r0
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, _0211B818 ; =0x02099ED0
	str r6, [sp, #0x18]
	ldr r0, [r0]
	mov r1, r6
	ldr r5, [r0]
	mov r2, #4
	ldr r5, [r5, #8]
	blx r5
_0211B644:
	ldr r1, [sp, #0x1c]
	ldr r0, [r8, #0x18]
	add r9, r9, #1
	add r1, r1, r0
	str r1, [sp, #0x1c]
_0211B658:
	cmp r9, #6
	blt _0211B5B8
_0211B660:
	ldr r0, _0211B81C ; =0x020A0640
	mov r6, #0xc
	ldrb r0, [r0, #0x1a]
	mov r5, #1
	mov r11, #0
	cmp r0, #0
	bne _0211B688
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211B774
_0211B688:
	ldr r0, [r10, #0x3c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x40]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211B6EC
	ldr r0, [r10, #0x3c]
	mov r1, #0xf
	mov r2, #2
	bl  FUN_ov16_020f2ea8
	ldr r0, [r10, #0x3c]
	add r2, r7, #1
	mov r1, #0x3c
	mov r3, #0
	bl  FUN_ov16_020f1868
	mov r7, r0
	ldr r0, [r10, #0x40]
	ldr r1, [sp, #0x1c]
	mov r2, #0x3c0
	bl FUN_02005a1c
	ldr r0, [sp, #0x1c]
	add r0, r0, #0x3c0
	str r0, [sp, #0x1c]
_0211B6EC:
	bl  FUN_ov16_020f081c
	ldr r1, [r10, #0xc]
	cmp r1, #1
	cmpeq r0, #0
	beq _0211B710
	ldr r1, [r10, #0xc]
	cmp r1, #2
	cmpeq r0, #1
	bne _0211B718
_0211B710:
	mov r4, #4
	b _0211B71C
_0211B718:
	mov r4, #5
_0211B71C:
	mla r0, r4, r6, r10
	add r4, sp, #0x1c
	str r4, [sp]
	mov r8, #3
	ldr r0, [r0, #0x434]
	mov r1, r7
	mov r3, r8
	mov r2, #0
	bl  FUN_ov1_020dc020
	str r4, [sp]
	mov r1, r0
	ldr r0, [r10, #0x488]
	mov r2, r5
	mov r3, r8
	bl  FUN_ov1_020dc020
	str r4, [sp]
	mov r1, r0
	ldr r0, [r10, #0x494]
	mov r2, r5
	mov r3, r8
	bl  FUN_ov1_020dc020
	mov r7, r0
_0211B774:
	mov r4, #0x19
	mov r5, #0xa
	mov r9, #0
	b _0211B7E0
_0211B784:
	mla r0, r4, r6, r10
	ldr r8, [r0, #0x434]
	cmp r8, #0
	beq _0211B7D4
	mov r0, r8
	mov r1, r11
	mov r2, r5
	bl  FUN_ov16_020f1138
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	add r0, r8, r0
	add r2, r7, #1
	mov r3, r5
	bl  FUN_ov16_020f1868
	mov r7, r0
	ldr r2, [sp, #0x1c]
	mov r1, r8
	mov r0, #3
	bl  FUN_ov16_020f19d4
	str r0, [sp, #0x1c]
_0211B7D4:
	add r9, r9, #1
	add r5, r5, #1
	add r4, r4, #1
_0211B7E0:
	cmp r9, #6
	blt _0211B784
	bl  FUN_ov16_020f10ac
	ldr r1, [r10, #0x458]
	cmp r1, #0
	beq _0211B80C
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl FUN_020055bc
_0211B80C:
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B818: .word unk_02099ED0
_0211B81C: .word unk_020A0640
	arm_func_end FUN_ov85_0211b3a0

	arm_func_start FUN_ov85_0211b820
FUN_ov85_0211b820: ; 0x0211B820
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0211B868 ; =0x0209F5C0
	mov r4, #0
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f5a58
	ldr r0, [r6, #0xc]
	cmp r0, #0
	mov r0, r6
	bne _0211B860
	bl FUN_ov85_0211b0cc
	ldmfd sp!, {r4, r5, r6, pc}
_0211B860:
	bl FUN_ov85_0211b3a0
	ldmfd sp!, {r4, r5, r6, pc}
_0211B868: .word unk_0209F5C0
	arm_func_end FUN_ov85_0211b820

	arm_func_start FUN_ov85_0211b86c
FUN_ov85_0211b86c: ; 0x0211B86C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r6, r3
	mov r9, r0
	add r3, r6, #0x13
	mov r0, #0xc
	mla r0, r3, r0, r9
	ldr r11, [r0, #0x434]
	ldr r5, [sp, #0x58]
	ldr r4, [sp, #0x5c]
	ldr r10, [sp, #0x60]
	cmp r11, #0
	mov r8, r1
	mov r7, r2
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, r6, lsl #2
	add r0, r0, #0x400
	ldrh r0, [r0, #0x1c]
	mov r1, #0
	bl  FUN_ov16_020efa9c
	str r0, [sp, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x10]
	add r0, r6, #4
	mov r0, r0, lsl #0x10
	cmp r1, #0
	mov r1, r0, lsr #0x10
	ldr r0, [r11, #0xc]
	movne r5, #0
	add r0, r11, r0
	strb r1, [sp, #0x28]
	mov r1, #8
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	mov r1, #0
	str r0, [sp, #0x2c]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	add r11, sp, #0x18
	mov r0, r1
	stmia sp, {r0, r11}
	movne r4, r5
	str r5, [sp, #8]
	ldr r0, _0211BB14 ; =0x0209F5C0
	movne r10, r5
	str r4, [sp, #0xc]
	mov r2, #1
	mov r3, #6
	str r10, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r1, r6, #0x19
	mov r0, #0xc
	mla r0, r1, r0, r9
	ldr r2, [r0, #0x434]
	cmp r2, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r2, #0xc]
	add r0, r6, #0xa
	strb r0, [sp, #0x28]
	mov r0, #8
	add r1, r2, r1
	str r1, [sp, #0x2c]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0
	mov r1, #0
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r0, [sp, #0x24]
	strh r0, [sp, #0x26]
	stmia sp, {r0, r11}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, _0211BB14 ; =0x0209F5C0
	str r10, [sp, #0x10]
	mov r2, r1
	mov r3, #6
	bl  FUN_ov16_020f5c34
	ldr r1, [r9, #0x38]
	cmp r1, #0
	beq _0211BA48
	mov r0, #0xc
	mul r0, r6, r0
	add r0, r1, r0, lsl #1
	add r2, r8, #2
	add r1, r7, #7
	strh r2, [sp, #0x18]
	mov r2, #6
	mov r3, #2
	strh r1, [sp, #0x1a]
	mov r1, #3
	strh r2, [sp, #0x1c]
	mov r2, #0
	strh r3, [sp, #0x1e]
	strb r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strh r2, [sp, #0x24]
	strh r2, [sp, #0x26]
	mov r0, r2
	stmia sp, {r0, r11}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, _0211BB14 ; =0x0209F5C0
	mov r1, r2
	mov r3, #7
	str r10, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BA48:
	ldr r5, [r9, #0x4a0]
	cmp r5, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	ldr r0, _0211BB18 ; =0x0209BA20
	ldr r1, [sp, #0x14]
	mov r3, r4
	mov r2, #0xf
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211BAA8
_0211BA7C: ; jump table
	b _0211BAA8 ; case 0
	b _0211BA90 ; case 1
	b _0211BA94 ; case 2
	b _0211BA9C ; case 3
	b _0211BAA4 ; case 4
_0211BA90:
	b _0211BAA8
_0211BA94:
	mov r4, #1
	b _0211BAA8
_0211BA9C:
	mov r4, #2
	b _0211BAA8
_0211BAA4:
	mov r4, #3
_0211BAA8:
	ldr r0, [r5, #0xc]
	mov r1, #0
	add r2, r5, r0
	mov r0, #2
	add r3, r2, r4, lsl #3
	add r2, r7, #7
	strh r2, [sp, #0x1a]
	str r3, [sp, #0x2c]
	strh r8, [sp, #0x18]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strb r0, [sp, #0x28]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	add r0, sp, #0x18
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211BB14 ; =0x0209F5C0
	mov r2, r1
	mov r3, #7
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB14: .word unk_0209F5C0
_0211BB18: .word unk_0209BA20
	arm_func_end FUN_ov85_0211b86c

	arm_func_start FUN_ov85_0211bb1c
FUN_ov85_0211bb1c: ; 0x0211BB1C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, #0
	mov r6, r0
	ldr r0, _0211BBD4 ; =0x0209F5C0
	mov r1, r5
	mov r3, r5
	mov r2, #5
	strb r5, [r6, #0x20]
	bl  FUN_ov16_020f5eec
	ldr r4, [r6, #0x5f0]
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
_0211BB54:
	add r0, r6, r5, lsl #2
	add r0, r0, #0x400
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211BBA0
	ldrh r1, [r0, #0x1e]
	mov r0, r6
	mov r3, r5
	rsb r1, r1, r1, lsl #3
	add r2, r4, r1
	ldrb r1, [r2, #5]
	str r1, [sp]
	ldrsb r1, [r2, #3]
	str r1, [sp, #4]
	ldrsb r1, [r2, #4]
	str r1, [sp, #8]
	ldrb r1, [r2, #1]
	ldrb r2, [r2, #2]
	bl FUN_ov85_0211b86c
_0211BBA0:
	add r5, r5, #1
	cmp r5, #6
	blt _0211BB54
	ldrb r0, [r6, #0x10]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0211BBD4 ; =0x0209F5C0
	mov r1, #0
	mov r2, #7
	bl  FUN_ov16_020f6084
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BBD4: .word unk_0209F5C0
	arm_func_end FUN_ov85_0211bb1c

	arm_func_start FUN_ov85_0211bbd8
FUN_ov85_0211bbd8: ; 0x0211BBD8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x30]
	mov r4, #0
	cmp r2, #8
	ldreq r1, [r0, #0x2c]
	cmpeq r2, r1
	bne _0211BC1C
	ldr r5, _0211BC7C ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	mov r2, #0xa
	bl  FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0xb
	bl  FUN_ov16_020f6084
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC1C:
	cmp r2, #9
	ldreq r0, [r0, #0x2c]
	cmpeq r2, r0
	bne _0211BC54
	ldr r5, _0211BC7C ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	mov r2, #0xa
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0xb
	bl  FUN_ov16_020f60f8
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC54:
	ldr r5, _0211BC7C ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	mov r2, #0xa
	bl  FUN_ov16_020f6084
	mov r0, r5
	mov r1, r4
	mov r2, #0xb
	bl  FUN_ov16_020f6084
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC7C: .word unk_0209F5C0
	arm_func_end FUN_ov85_0211bbd8

	arm_func_start FUN_ov85_0211bc80
FUN_ov85_0211bc80: ; 0x0211BC80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r7, r0
	ldr r1, [r7, #0x18]
	mov r6, #0
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211BEEC
_0211BCA0: ; jump table
	b _0211BED4 ; case 0
	b _0211BCB8 ; case 1
	b _0211BD14 ; case 2
	b _0211BDE0 ; case 3
	b _0211BE34 ; case 4
	b _0211BEC4 ; case 5
_0211BCB8:
	ldr r0, [r7, #8]
	cmp r0, #5
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x1c]
	cmp r0, #6
	bge _0211BCF0
	add r0, r0, #1
	str r0, [r7, #0x1c]
	cmp r0, #6
	bne _0211BCF0
	ldr r0, _0211BEF4 ; =0x0209AC44
	ldr r1, _0211BEF8 ; =0x00004096
	bl FUN_0202cf6c
_0211BCF0:
	ldr r0, _0211BEFC ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6678
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x2c
	streq r0, [r7, #0x18]
	streq r6, [r7, #0x1c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BD14:
	ldr r0, [r7, #0x1c]
	add r0, r0, #1
	cmp r0, #0xf
	addlt sp, sp, #0x2c
	str r0, [r7, #0x1c]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _0211BEFC ; =0x0209F5C0
	mov r4, #5
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r6
	bl  FUN_ov16_020f5eec
	ldr r1, [r7, #0x4f4]
	cmp r1, #0
	beq _0211BDCC
	ldr r0, [r1, #0xc]
	sub lr, r4, #0x45
	add r8, r1, r0
	mov r12, #0xa
	mov r3, #0x20
	mov r2, #4
	mov r1, #2
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strb r1, [sp, #0x24]
	strh lr, [sp, #0x14]
	strh r12, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r8, [sp, #0x28]
	add r1, sp, #0x14
	str r6, [sp]
	str r1, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	sub r0, r0, #0x14
	str r0, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BDCC:
	mov r0, #3
	add sp, sp, #0x2c
	str r0, [r7, #0x18]
	str r6, [r7, #0x1c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BDE0:
	ldr r0, _0211BEFC ; =0x0209F5C0
	mov r1, r6
	bl  FUN_ov16_020f6678
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_ov85_0211bb1c
	ldr r0, [r7, #4]
	mov r1, #3
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	mov r2, #4
	ldr r0, _0211BF00 ; =0x0211CEC0
	mov r1, #1
	add sp, sp, #0x2c
	str r2, [r7, #0x18]
	strb r1, [r0]
	str r6, [r7, #0x1c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BE34:
	ldr r0, _0211BF00 ; =0x0211CEC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0211BE50
	ldr r0, _0211BEF4 ; =0x0209AC44
	ldr r1, _0211BF04 ; =0x00004097
	bl FUN_0202cf6c
_0211BE50:
	ldr r0, _0211BF00 ; =0x0211CEC0
	ldr r5, _0211BEFC ; =0x0209F5C0
	ldrb r0, [r0]
	mov r2, #1
	ldr r4, _0211BF00 ; =0x0211CEC0
	cmp r0, #0
	movne r2, #0
	mov r0, r5
	mov r1, r6
	strb r2, [r4]
	bl  FUN_ov16_020f6678
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r6
	mov r2, #7
	bl  FUN_ov16_020f60f8
	mov r1, #5
	mov r0, #1
	add sp, sp, #0x2c
	str r1, [r7, #0x18]
	str r6, [r7, #0x1c]
	strb r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BEC4:
	add sp, sp, #0x2c
	str r6, [r7, #0x18]
	str r6, [r7, #0x1c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BED4:
	ldrb r1, [r7, #0x10]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_ov85_0211bb1c
	strb r6, [r7, #0x10]
_0211BEEC:
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BEF4: .word unk_0209AC44
_0211BEF8: .word 0x00004096
_0211BEFC: .word unk_0209F5C0
_0211BF00: .word ov85_0211CEC0
_0211BF04: .word 0x00004097
	arm_func_end FUN_ov85_0211bc80

	arm_func_start FUN_ov85_0211bf08
FUN_ov85_0211bf08: ; 0x0211BF08
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	ldr r1, _0211C0DC ; =0x020A0640
	mov r7, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	ldrneb r0, [r7, #0x21]
	cmpne r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #8]
	mov r6, #0
	strb r6, [r7, #0x21]
	cmp r0, #6
	beq _0211BF54
	cmp r0, #7
	beq _0211C01C
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211BF54:
	ldr r4, _0211C0E0 ; =0x0209F5C0
	mov r1, r6
	mov r0, r4
	bl  FUN_ov16_020f5af0
	mov r0, r4
	mov r1, r6
	bl  FUN_ov16_020f5a58
	ldr r1, [r7, #0x488]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r1, #0xc]
	mov r7, #3
	add r0, r1, r0
	add r3, r0, #0x108
	mov r2, #5
	mov r1, #0xf
	mov r0, #0x16
	mov r5, #1
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r0, [sp, #0x18]
	str r3, [sp, #0x28]
	strh r7, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r5, [sp, #0x24]
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, r7
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r4
	mov r1, r6
	mov r2, r7
	mov r3, #0x1e
	bl  FUN_ov16_020f637c
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl  FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C01C:
	ldr r5, _0211C0E0 ; =0x0209F5C0
	mov r1, r6
	mov r0, r5
	bl  FUN_ov16_020f5af0
	mov r0, r5
	mov r1, r6
	bl  FUN_ov16_020f5a58
	mov r4, #1
	mov r0, r6
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_020f0e9c
	ldr r1, [r7, #0x494]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r1, #0xc]
	mov r2, #0x1d
	add r3, r1, r0
	mov r1, #3
	mov r0, #2
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r6, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r4, [sp, #0x24]
	str r3, [sp, #0x28]
	mov r7, #4
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r7
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl  FUN_ov16_020f63b0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C0DC: .word unk_020A0640
_0211C0E0: .word unk_0209F5C0
	arm_func_end FUN_ov85_0211bf08

	arm_func_start FUN_ov85_0211c0e4
FUN_ov85_0211c0e4: ; 0x0211C0E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0211C130
	ldr r0, [r4, #0x47c]
	mov r1, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r12, #6
	mov r2, r1
	mov r3, r1
	mov r0, #0x1e
	str r12, [sp, #8]
	bl  FUN_ov1_020dbd38
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211C130:
	bl FUN_ov85_0211bc80
	mov r0, r4
	bl FUN_ov85_0211bbd8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov85_0211c0e4

	arm_func_start FUN_ov85_0211c144
FUN_ov85_0211c144: ; 0x0211C144
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r0, [r10, #0xc]
	mov r4, #0xc
	cmp r0, #0
	mov r8, #5
	mov r5, #2
	mov r6, #4
	mov r7, #1
	ldr r11, _0211C89C ; =0x0209F5C0
	mov r9, #0
	bne _0211C520
	ldr r9, [r10, #0x4c4]
	mov r11, #0x10
	cmp r9, #0
	beq _0211C1D0
	ldr r3, [r9, #0xc]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r2, #3
	str r2, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r9, r9, r3
	str r2, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C1D0:
	ldr r12, [r10, #0x4d0]
	cmp r12, #0
	beq _0211C224
	ldr r9, [r12, #0xc]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	add r9, r12, r9
	str r6, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C224:
	ldr r0, _0211C8A0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211C240
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211C484
_0211C240:
	mov r9, #0
	mov r0, r9
	bl  FUN_ov1_020dc150
	cmp r0, #0
	beq _0211C2B0
	ldr r0, [r10, #0x3c]
	cmp r0, #0
	ldrne r0, [r10, #0x40]
	cmpne r0, #0
	movne r9, #1
	cmp r9, #0
	beq _0211C2F4
	ldr r9, [r10, #0x3c]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r9, [sp, #0x1c]
	b _0211C2F0
_0211C2B0:
	ldr r1, [r10, #0x4dc]
	cmp r1, #0
	beq _0211C2F4
	ldr r0, [r1, #0xc]
	mov r2, r9
	stmia sp, {r7, r9}
	str r7, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	add r12, r1, r0
	str r8, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r1, r9
	mov r3, r9
	str r12, [sp, #0x1c]
_0211C2F0:
	bl  FUN_ov16_020f5da0
_0211C2F4:
	mov r0, r7
	mov r9, #0x10
	bl  FUN_ov1_020dc150
	cmp r0, #0
	beq _0211C364
	ldr r0, [r10, #0x50]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x54]
	cmpne r0, #0
	movne r1, r7
	cmp r1, #0
	beq _0211C3B0
	ldr r8, [r10, #0x50]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	b _0211C3A8
_0211C364:
	ldr r12, [r10, #0x4e8]
	cmp r12, #0
	beq _0211C3B0
	ldr r11, [r12, #0xc]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	str r9, [sp, #0xc]
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	add r8, r12, r11
_0211C3A8:
	str r8, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C3B0:
	bl  FUN_ov16_020f081c
	cmp r0, #0
	moveq r1, #4
	movne r1, #5
	mla r0, r1, r4, r10
	moveq r8, #5
	moveq lr, #7
	moveq r9, #8
	ldr r12, [r0, #0x434]
	movne r8, #4
	movne lr, #8
	movne r9, #7
	cmp r12, #0
	beq _0211C424
	ldr r11, [r12, #0xc]
	mov r1, #0
	str r7, [sp]
	stmib sp, {r1, r6}
	str r5, [sp, #0xc]
	mov r0, #6
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str lr, [sp, #0x18]
	add r6, r12, r11
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C424:
	mla r0, r8, r4, r10
	ldr r6, [r0, #0x434]
	mov r0, #6
	cmp r6, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r6, #0xc]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r2, #0x16
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r9, [sp, #0x18]
	add r4, r6, r4
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C484:
	ldr r9, [r10, #0x4dc]
	cmp r9, #0
	beq _0211C4C8
	ldr r5, [r9, #0xc]
	mov r1, #0
	str r7, [sp]
	stmib sp, {r1, r7}
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r8, [sp, #0x18]
	add r5, r9, r5
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C4C8:
	ldr r9, [r10, #0x4e8]
	cmp r9, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, [r9, #0xc]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r8, [sp, #0x18]
	add r4, r9, r5
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C520:
	ldr r12, [r10, #0x500]
	mov r8, #0x10
	cmp r12, #0
	beq _0211C578
	ldr r3, [r12, #0xc]
	mov r2, r7
	mov r1, r9
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	add r12, r12, r3
	str r6, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C578:
	ldr r0, _0211C8A0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211C594
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211C694
_0211C594:
	ldr r0, [r10, #0x3c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x40]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211C60C
	ldr r0, [r10, #0xc]
	sub r0, r0, #1
	bl  FUN_ov1_020dc150
	cmp r0, #0
	beq _0211C60C
	ldr r12, [r10, #0x3c]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C60C:
	bl  FUN_ov16_020f081c
	ldr r1, [r10, #0xc]
	cmp r1, #1
	cmpeq r0, #0
	beq _0211C630
	ldr r1, [r10, #0xc]
	cmp r1, #2
	cmpeq r0, #1
	bne _0211C638
_0211C630:
	mov r1, #4
	b _0211C63C
_0211C638:
	mov r1, #5
_0211C63C:
	mla r0, r1, r4, r10
	ldr r12, [r0, #0x434]
	mov r0, #6
	cmp r12, #0
	beq _0211C694
	ldr r4, [r12, #0xc]
	mov r1, #0
	str r7, [sp]
	str r1, [sp, #4]
	mov r2, #0x1a
	str r2, [sp, #8]
	mov r2, #0x12
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r1, [sp, #0x18]
	add r4, r12, r4
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0211C694:
	ldr r2, [r10, #0x4f4]
	cmp r2, #0
	beq _0211C704
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r3, r2, r0
	mov r2, #0xa
	mov r0, #0x20
	strh r2, [sp, #0x22]
	strh r0, [sp, #0x24]
	str r3, [sp, #0x34]
	strh r1, [sp, #0x20]
	strh r6, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r5, [sp, #0x30]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r8}
	sub r0, r8, #0x14
	str r0, [sp, #0xc]
	ldr r0, _0211C89C ; =0x0209F5C0
	mov r2, r1
	mov r3, #5
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211C704:
	mov r2, #0xa5
	mov r1, #0x36
	mov r0, #0x16
	strh r2, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r9, [sp, #0x20]
	strh r9, [sp, #0x22]
	strh r9, [sp, #0x24]
	strh r9, [sp, #0x26]
	strh r5, [sp, #0x28]
	strb r9, [sp, #0x30]
	str r9, [sp, #0x34]
	add r0, sp, #0x20
	str r9, [sp]
	stmib sp, {r0, r9}
	str r9, [sp, #0xc]
	mov r0, r11
	mov r1, r9
	mov r2, r9
	str r9, [sp, #0x10]
	mov r3, #8
	bl  FUN_ov16_020f5c34
	ldr r7, [r10, #0x4ac]
	cmp r7, #0
	beq _0211C7C4
	ldr r6, [r7, #0xc]
	mov r4, #0xa
	stmia sp, {r4, r9}
	str r9, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #7
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	add r5, r7, r6
	mov r0, r11
	mov r1, r9
	mov r2, r9
	mov r3, r9
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r11
	mov r1, r9
	mov r2, r4
	bl  FUN_ov16_020f6084
_0211C7C4:
	mov r3, #0xc8
	mov r2, #0xa5
	mov r1, #0x36
	mov r0, #0x16
	strh r3, [sp, #0x28]
	strh r2, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r9, [sp, #0x20]
	strh r9, [sp, #0x22]
	strh r9, [sp, #0x24]
	strh r9, [sp, #0x26]
	strb r9, [sp, #0x30]
	str r9, [sp, #0x34]
	add r0, sp, #0x20
	str r9, [sp]
	stmib sp, {r0, r9}
	str r9, [sp, #0xc]
	mov r0, r11
	mov r1, r9
	mov r2, r9
	str r9, [sp, #0x10]
	mov r3, #9
	mov r4, #2
	mov r5, #4
	bl  FUN_ov16_020f5c34
	ldr r8, [r10, #0x4b8]
	cmp r8, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, [r8, #0xc]
	mov r6, #0xb
	stmia sp, {r6, r9}
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #7
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	add r4, r8, r7
	mov r0, r11
	mov r1, r9
	mov r2, r9
	mov r3, r9
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r11
	mov r1, r9
	mov r2, r6
	bl  FUN_ov16_020f6084
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C89C: .word unk_0209F5C0
_0211C8A0: .word unk_020A0640
	arm_func_end FUN_ov85_0211c144

	arm_func_start FUN_ov85_0211c8a4
FUN_ov85_0211c8a4: ; 0x0211C8A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r7, #0
	mov r6, #1
	add r0, r4, #0x3c
	mov r1, #2
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	str r7, [r4, #0x18]
	str r7, [r4, #0x1c]
	strb r6, [r4, #0x34]
	str r7, [r4, #0x30]
	str r7, [r4, #0x2c]
	strb r7, [r4, #0x23]
	strb r7, [r4, #0x22]
	strb r6, [r4, #0x21]
	str r7, [r4, #0x68]
	str r7, [r4, #0x38]
	bl  FUN_ov16_020f2f7c
	add r0, r4, #0x34
	mov r1, r7
	add r0, r0, #0x400
	mov r2, #0x228
	bl MI_CpuFill8
	ldr r0, _0211CA94 ; =0x0209F5C0
	mov r1, r7
	bl  FUN_ov16_020f5a58
	bl  FUN_ov1_020db260
	cmp r0, #0
	beq _0211C9AC
	ldr r0, [r4, #4]
	bl FUN_0204204c
	mov r1, r0
	ldr r0, [r4, #4]
	bl FUN_02042110
	strb r0, [r4, #0x10]
	tst r0, #0xff
	ldrne r0, _0211CA98 ; =0x020EAAAC
	mov r1, #1
	ldrnesb r0, [r0]
	strne r0, [r4, #0xc]
	mov r0, r4
	bl FUN_ov85_0211a930
	mov r0, #6
	mov r1, #0xc
	bl  FUN_ov16_020f2edc
	ldr r1, _0211CA9C ; =0x020A0640
	str r0, [r4, #0x38]
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _0211C980
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211CA74
_0211C980:
	mov r6, #0xf
	mov r5, #2
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x3c
	bl  FUN_ov16_020f2fa8
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x50
	bl  FUN_ov16_020f2fa8
	b _0211CA74
_0211C9AC:
	ldr r5, _0211CAA0 ; =0x02099EF0
	mov r1, r7
	ldr r0, [r5]
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211CA08
	ldr r0, [r5]
	mov r1, r6
	bl  FUN_ov132_02145190
	cmp r0, #0
	bne _0211CA08
	ldr r5, _0211CAA4 ; =0x0209AC44
	mov r1, r7
	mov r0, r5
	mov r2, r7
	mov r3, r7
	bl FUN_0202c314
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, r7
	bl FUN_0202c314
	b _0211CA68
_0211CA08:
	ldr r6, _0211CAA0 ; =0x02099EF0
	mov r8, #0
	ldr r0, [r6]
	mov r1, r8
	bl  FUN_ov132_02144f78
	ldr r5, _0211CAA8 ; =0x020E9485
	mov r7, #1
	strb r0, [r5]
	ldr r0, [r6]
	mov r1, r7
	bl  FUN_ov132_02144f78
	strb r0, [r5, #1]
	ldr r5, _0211CAA4 ; =0x0209AC44
	mov r1, r8
	mov r0, r5
	str r8, [sp]
	mov r2, #9
	mov r3, r8
	bl FUN_0202c184
	mov r0, r5
	mov r1, r7
	mov r2, r8
	mov r3, r8
	bl FUN_0202c314
_0211CA68:
	mov r0, r4
	mov r1, #8
	bl FUN_ov85_0211a140
_0211CA74:
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x65c]
	cmp r0, #0
	moveq r1, #0x19
	str r1, [r4, #0x660]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CA94: .word unk_0209F5C0
_0211CA98: .word 0x020EAAAC
_0211CA9C: .word unk_020A0640
_0211CAA0: .word unk_02099EF0
_0211CAA4: .word unk_0209AC44
_0211CAA8: .word 0x020E9485
	arm_func_end FUN_ov85_0211c8a4

	arm_func_start FUN_ov85_0211caac
FUN_ov85_0211caac: ; 0x0211CAAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0211CC34
_0211CAC4: ; jump table
	b _0211CC34 ; case 0
	b _0211CAEC ; case 1
	b _0211CC34 ; case 2
	b _0211CB80 ; case 3
	b _0211CBA0 ; case 4
	b _0211CBD4 ; case 5
	b _0211CC24 ; case 6
	b _0211CC24 ; case 7
	b _0211CBA0 ; case 8
	b _0211CBA0 ; case 9
_0211CAEC:
	add r0, r4, #0x34
	add r0, r0, #0x400
	mov r1, #0x2e
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _0211CC34
	ldr r0, [r4, #0x14]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CC34
_0211CB14: ; jump table
	b _0211CC34 ; case 0
	b _0211CB28 ; case 1
	b _0211CB44 ; case 2
	b _0211CB54 ; case 3
	b _0211CB60 ; case 4
_0211CB28:
	mov r0, r4
	bl FUN_ov85_0211a4ac
	mov r0, r4
	bl FUN_ov85_0211ace0
	mov r0, r4
	mov r1, #2
	bl FUN_ov85_0211a930
_0211CB44:
	mov r0, r4
	mov r1, #3
_0211CB4C:
	bl FUN_ov85_0211a930
	b _0211CC34
_0211CB54:
	mov r0, r4
	mov r1, #4
	b _0211CB4C
_0211CB60:
	mov r0, r4
	bl FUN_ov85_0211a5d0
	mov r0, r4
	bl FUN_ov85_0211ad38
	mov r0, r4
	mov r1, #2
	bl FUN_ov85_0211a140
	b _0211CC34
_0211CB80:
	bl FUN_ov85_0211c144
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #4
	bl FUN_ov85_0211a140
_0211CBA0:
	mov r0, r4
	bl FUN_ov85_0211c0e4
	ldr r0, _0211CC44 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f672c
	mov r0, r4
	bl FUN_ov85_0211afc8
	ldr r0, _0211CC48 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211CC34
	bl  FUN_ov1_020dbb44
	b _0211CC34
_0211CBD4:
	bl FUN_ov85_0211c0e4
	mov r5, #0
	ldr r0, _0211CC44 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f672c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211CC34
	ldr r1, _0211CC4C ; =0x04000018
	mov r0, r4
	str r5, [r1]
	str r5, [r4, #0x660]
	str r5, [r4, #0x65c]
	bl FUN_ov85_0211ad0c
	mov r0, r4
	mov r1, #1
	b _0211CB4C
_0211CC24:
	bl FUN_ov85_0211bf08
	ldr r0, _0211CC44 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f672c
_0211CC34:
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC44: .word unk_0209F5C0
_0211CC48: .word unk_020A0640
_0211CC4C: .word 0x04000018
	arm_func_end FUN_ov85_0211caac

	arm_func_start FUN_ov85_0211cc50
FUN_ov85_0211cc50: ; 0x0211CC50
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	cmpne r1, #1
	ldmeqfd sp!, {r4, pc}
	cmp r1, #2
	bne _0211CC94
	bl FUN_ov85_0211b820
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov85_0211a430
	mov r0, r4
	mov r1, #3
	bl FUN_ov85_0211a140
	ldmfd sp!, {r4, pc}
_0211CC94:
	ldr r0, _0211CCA4 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211CCA4: .word unk_0209F5C0
	arm_func_end FUN_ov85_0211cc50

	arm_func_start FUN_ov85_0211cca8
FUN_ov85_0211cca8: ; 0x0211CCA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl  FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _0211CD20
	ldr r0, _0211CD98 ; =0x04000006
	ldr r1, _0211CD9C ; =0x02FFFC3C
	ldrh r3, [r0]
	ldr r0, _0211CDA0 ; =0x020A0640
	ldr r1, [r1]
	ldr r2, [r0, #0x4dc]
	add r0, r1, r3
	add r6, r2, r0
	ldr r1, _0211CDA4 ; =0x0209A178
	mov r5, #0
	ldr r12, _0211CDA8 ; =0x6C078965
	str r6, [r1]
	ldr lr, _0211CDAC ; =0x5D588B65
	stmib r1, {r5, r12}
	ldr r2, _0211CDB0 ; =0x00269EC3
	str lr, [r1, #0xc]
	str r2, [r1, #0x10]
	mov r3, r5
	ldr r0, _0211CDB4 ; =0x0209A190
	str r3, [r1, #0x14]
	str r6, [r0]
	stmib r0, {r5, r12}
	str lr, [r0, #0xc]
	str r2, [r0, #0x10]
	str r3, [r0, #0x14]
_0211CD20:
	add r0, r4, #0x34
	add r0, r0, #0x400
	mov r1, #0x2e
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov85_0211ad0c
	mov r5, #0
	ldr r3, [r4, #0xc]
	ldr r2, _0211CDB8 ; =0x020EAAAC
	ldr r0, _0211CDBC ; =0x0209F5C0
	mov r1, r5
	strb r3, [r2]
	bl  FUN_ov16_020f5af0
	ldr r1, [r4, #0x38]
	cmp r1, #0
	beq _0211CD6C
	ldr r0, _0211CDC0 ; =0x0209A250
	bl FUN_0202e1c0
	str r5, [r4, #0x38]
_0211CD6C:
	add r0, r4, #0x3c
	mov r1, #2
	bl  FUN_ov16_020f2fe4
	ldr r1, _0211CDC4 ; =0x04000018
	mov r2, #0
	mov r0, r4
	str r2, [r1]
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_0211CD98: .word 0x04000006
_0211CD9C: .word 0x02FFFC3C
_0211CDA0: .word unk_020A0640
_0211CDA4: .word unk_0209A178
_0211CDA8: .word 0x6C078965
_0211CDAC: .word 0x5D588B65
_0211CDB0: .word 0x00269EC3
_0211CDB4: .word unk_0209A190
_0211CDB8: .word 0x020EAAAC
_0211CDBC: .word unk_0209F5C0
_0211CDC0: .word unk_0209A250
_0211CDC4: .word 0x04000018
	arm_func_end FUN_ov85_0211cca8

	arm_func_start FUN_ov85_0211cdc8
FUN_ov85_0211cdc8: ; 0x0211CDC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov85_0211cdc8

	arm_func_start FUN_ov85_0211cddc
FUN_ov85_0211cddc: ; 0x0211CDDC
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov85_0211cddc

	arm_func_start FUN_ov85_0211cde4
FUN_ov85_0211cde4: ; 0x0211CDE4
	bx lr
	arm_func_end FUN_ov85_0211cde4
_0211CDE8:
	.byte 0x0D, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0xDC, 0xCE, 0x11, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x3C, 0xCF, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x4C, 0xCF, 0x11, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xF4, 0xCE, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x11, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0C, 0xCF, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0x18, 0xCF, 0x11, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x24, 0xCF, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00, 0xE8, 0xCE, 0x11, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x5C, 0xCF, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x30, 0xCF, 0x11, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov85_0211ce5c
FUN_ov85_0211ce5c: ; 0x0211CE5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211CEA4 ; =0x0211CEC0
	str r0, [r4, #0x18]
	ldr r0, _0211CEA8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0211CEAC ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CEA4: .word ov85_0211CEC0
_0211CEA8: .word 0x00009CCD
_0211CEAC: .word 0x0000EA3C
	arm_func_end FUN_ov85_0211ce5c

	.section .sinit, 4
ov85_0211CEB0:
	.word FUN_ov85_0211ce5c

	.data
	.global ov85_0211CEC0
ov85_0211CEC0:
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x62
	.byte 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x70, 0x6F, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x69
	.byte 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x77, 0x63, 0x5F, 0x6D, 0x73, 0x67, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x62
	.byte 0x30, 0x32, 0x5F, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x62
	.byte 0x30, 0x32, 0x5F, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x6C
	.byte 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE4, 0xCD, 0x11, 0x02, 0xC8, 0xCD, 0x11, 0x02, 0xBC, 0xAD, 0x11, 0x02
	.byte 0xAC, 0xAE, 0x11, 0x02, 0xA4, 0xC8, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xAC, 0xCA, 0x11, 0x02
	.byte 0x50, 0xCC, 0x11, 0x02, 0xA8, 0xCC, 0x11, 0x02, 0x00, 0x9F, 0x11, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0x2C, 0xA1, 0x11, 0x02, 0x10, 0xA0, 0x11, 0x02, 0x18, 0xA1, 0x11, 0x02, 0xE4, 0xA0, 0x11, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0x98, 0xA4, 0x11, 0x02, 0xDC, 0xCD, 0x11, 0x02
	.byte 0x00, 0xE6, 0x0B, 0x02, 0x5C, 0xE5, 0x0B, 0x02, 0xBC, 0xE5, 0x0B, 0x02, 0xE0, 0xE5, 0x0B, 0x02
	.global ov85_0211CFF0
ov85_0211CFF0:
	.byte 0x4A, 0x30, 0x32, 0x2E, 0x53, 0x41, 0x44, 0x00
	.global ov85_0211CFF8
ov85_0211CFF8:
	.byte 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D004
ov85_0211D004:
	.byte 0x70, 0x6F, 0x5F, 0x6E, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D010
ov85_0211D010:
	.byte 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D01C
ov85_0211D01C:
	.byte 0x70, 0x6F, 0x5F, 0x6E
	.byte 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D028
ov85_0211D028:
	.byte 0x70, 0x6F, 0x5F, 0x74, 0x2E, 0x70, 0x6B, 0x62
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D034
ov85_0211D034:
	.byte 0x70, 0x6F, 0x5F, 0x73, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D040
ov85_0211D040:
	.byte 0x70, 0x6F, 0x5F, 0x77, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D04C
ov85_0211D04C:
	.byte 0x4D, 0x50, 0x53, 0x50
	.byte 0x49, 0x6E, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov85_0211D058
ov85_0211D058:
	.byte 0x70, 0x6F, 0x5F, 0x65, 0x2E, 0x70, 0x6B, 0x68
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D064
ov85_0211D064:
	.byte 0x70, 0x6F, 0x5F, 0x6E, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D070
ov85_0211D070:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x70
	.byte 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov85_0211D08C
ov85_0211D08C:
	.byte 0x70, 0x6F, 0x5F, 0x74
	.byte 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D098
ov85_0211D098:
	.byte 0x70, 0x6F, 0x5F, 0x73, 0x2E, 0x70, 0x6B, 0x68
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D0A4
ov85_0211D0A4:
	.byte 0x70, 0x6F, 0x5F, 0x77, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov85_0211D0B0
ov85_0211D0B0:
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov85_0211D0B8
ov85_0211D0B8:
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov85_0211D0C0
ov85_0211D0C0:
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov85_0211D0C8
ov85_0211D0C8:
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov85_0211D0D0
ov85_0211D0D0:
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov85_0211D0D8
ov85_0211D0D8:
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov85_0211D0E0
ov85_0211D0E0:
	.byte 0x4A, 0x30, 0x32, 0x2E, 0x53, 0x41, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

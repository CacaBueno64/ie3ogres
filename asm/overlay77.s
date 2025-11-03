
	.include "/macros/function.inc"
	.include "/include/overlay77.inc"

	.text
	arm_func_start FUN_ov77_02119f00
FUN_ov77_02119f00: ; 0x02119F00
	ldr r0, _02119F10 ; =0x0209AEC0
	ldr r12, _02119F14 ; =FUN_02046cb4
	mov r1, #0xc
	bx r12
_02119F10: .word unk_0209AEC0
_02119F14: .word FUN_02046cb4
	arm_func_end FUN_ov77_02119f00

	arm_func_start FUN_ov77_02119f18
FUN_ov77_02119f18: ; 0x02119F18
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0
	mov r1, r0
	bl FUN_ov16_020f0634
	mov r5, r0
	ldr r1, [r5, #4]
	ldr r4, _02119FE4 ; =0x020A0640
	add r0, r5, #4
	str r1, [r4]
	ldr r1, [r5, #8]
	str r1, [r4, #4]
	bl FUN_ov1_020cbf70
	strb r0, [r4, #0x8f]
	add r0, r5, #4
	bl FUN_ov1_020c8124
	add r0, r5, #4
	bl FUN_ov1_020cbf30
	cmp r0, #0xd
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrsh r0, [r5, #0x30]
	cmp r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, _02119FE8 ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov132_02143b6c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r4, #6]
	ldrb r0, [r5, #0x2e]
	cmp r1, r0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	bl FUN_ov132_02143a28
	ldrsh r1, [r5, #0x30]
	cmp r0, r1
	ldreqsh r1, [r4, #4]
	ldreqsh r0, [r5, #0x2c]
	cmpeq r1, r0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r4]
	ldr r0, [r5, #0x28]
	cmp r1, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r0, [r4]
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02143c94
	ldmfd sp!, {r4, r5, r6, pc}
_02119FE4: .word unk_020A0640
_02119FE8: .word unk_02099EF0
	arm_func_end FUN_ov77_02119f18

	arm_func_start FUN_ov77_02119fec
FUN_ov77_02119fec: ; 0x02119FEC
	stmfd sp!, {r3, lr}
	ldr r1, _0211A00C ; =0x0209AEC0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	bne _0211A004
	bl FUN_ov77_02119f18
_0211A004:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0211A00C: .word unk_0209AEC0
	arm_func_end FUN_ov77_02119fec

	arm_func_start FUN_ov77_0211a010
FUN_ov77_0211a010: ; 0x0211A010
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211A0A0 ; =0x0209A4E4
	mov r7, #0xd
	mov r0, r4
	mov r1, r7
	bl FUN_ov1_020cbe38
	ldr r1, _0211A0A4 ; =0x020A0640
	mov r0, r4
	ldr r3, [r1]
	ldr r2, [r1, #4]
	ldrb r1, [r1, #0x8f]
	str r3, [r4]
	str r2, [r4, #4]
	bl FUN_ov1_020cbeb0
	mov r0, r4
	bl FUN_ov1_020ca880
	ldr r5, _0211A0A8 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_02143b6c
	movs r6, r0
	subeq r1, r7, #0xe
	moveq r0, #0
	streqh r1, [r4, #0x2c]
	streq r0, [r4, #0x24]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r6, #6]
	ldr r0, [r5]
	bl FUN_ov132_02143a28
	strh r0, [r4, #0x2c]
	ldr r0, [r6]
	str r0, [r4, #0x24]
	ldrsh r0, [r6, #4]
	strh r0, [r4, #0x28]
	ldrb r0, [r6, #6]
	strb r0, [r4, #0x2a]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0A0: .word unk_0209A4E4
_0211A0A4: .word unk_020A0640
_0211A0A8: .word unk_02099EF0
	arm_func_end FUN_ov77_0211a010

	arm_func_start FUN_ov77_0211a0ac
FUN_ov77_0211a0ac: ; 0x0211A0AC
	stmfd sp!, {r3, lr}
	ldr r1, _0211A0D8 ; =0x0209AEC0
	ldr r2, _0211A0DC ; =0x0209A4E0
	ldrb r1, [r1, #0x64]
	mov r3, #0x36
	strb r3, [r2, #2]
	cmp r1, #0
	beq _0211A0D0
	bl FUN_ov77_0211a010
_0211A0D0:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0211A0D8: .word unk_0209AEC0
_0211A0DC: .word unk_0209A4E0
	arm_func_end FUN_ov77_0211a0ac

	arm_func_start FUN_ov77_0211a0e0
FUN_ov77_0211a0e0: ; 0x0211A0E0
	mov r0, #1
	bx lr
	arm_func_end FUN_ov77_0211a0e0

	arm_func_start FUN_ov77_0211a0e8
FUN_ov77_0211a0e8: ; 0x0211A0E8
	stmfd sp!, {r3, lr}
	ldr r0, _0211A124 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b340
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211A128 ; =0x02099EE8
	mvn r1, #0
	ldr r0, [r0]
	bl FUN_0205228c
	cmp r0, #1
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_0211A124: .word unk_02099EEC
_0211A128: .word unk_02099EE8
	arm_func_end FUN_ov77_0211a0e8

	arm_func_start FUN_ov77_0211a12c
FUN_ov77_0211a12c: ; 0x0211A12C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r2, #0x4000000
	ldr r1, [r2]
	mov r6, #0
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r0, #0xc]
	ldr r1, [r2]
	ldr r0, _0211A274 ; =0x0209A720
	bic r1, r1, #0x1f00
	orr r1, r1, #0x100
	str r1, [r2]
	ldrh r1, [r0, #0xc6]
	ldr r0, _0211A278 ; =0x02099F18
	mov r3, r6
	bic r1, r1, #0x8000
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, #0x1f
	bl FUN_020512a8
	ldr r0, _0211A27C ; =0x02099F58
	ldr r0, [r0]
	bl FUN_ov16_0211661c
	ldr r0, _0211A280 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _0211A284 ; =0x02099F24
	mov r1, #4
	ldr r7, [r0]
	str r6, [sp, #0x18]
	stmia sp, {r1, r6}
	mov r5, #0x1000
	str r6, [sp, #0x1c]
	str r6, [sp, #0x20]
	add r1, sp, #0x18
	mov r0, r7
	str r5, [sp, #8]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	mov r0, #0xf800
	mov r4, #2
	str r0, [sp, #0xc]
	mov r0, #0x7000
	stmia sp, {r4, r6}
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	add r1, sp, #0xc
	mov r0, r7
	str r5, [sp, #8]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	mov r0, r7
	mov r1, #0x3c000
	mov r2, r4
	mov r3, r6
	str r5, [sp]
	bl FUN_ov16_020f7b50
	ldr r0, _0211A288 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b2b8
	ldr r5, _0211A28C ; =0x02099EE8
	mov r1, r6
	mov r6, #1
	ldr r0, [r5]
	mov r2, r6
	bl FUN_020521d0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r6
	bl FUN_020521d0
	ldr r0, [r5]
	mov r1, #3
	mov r2, r6
	bl FUN_020521d0
	ldr r0, [r5]
	mov r2, r6
	mov r1, #5
	bl FUN_020521d0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A274: .word unk_0209A720
_0211A278: .word unk_02099F18
_0211A27C: .word unk_02099F58
_0211A280: .word unk_02099F38
_0211A284: .word unk_02099F24
_0211A288: .word unk_02099EEC
_0211A28C: .word unk_02099EE8
	arm_func_end FUN_ov77_0211a12c

	arm_func_start FUN_ov77_0211a290
FUN_ov77_0211a290: ; 0x0211A290
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0211A3B8 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b340
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A3BC ; =0x02099EE8
	mvn r1, #0
	ldr r0, [r0]
	bl FUN_0205228c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0211A3C0 ; =0x020AF81C
	mov r1, #1
	mov r0, r4
	bl FUN_0204451c
	mov r0, r4
	bl FUN_02044560
	cmp r0, #0
	bne _0211A2F8
	ldr r0, _0211A3C4 ; =0x02099F18
	mov r1, #0
	ldr r0, [r0]
	mov r3, r1
	mov r2, #0x1f
	bl FUN_020512a8
_0211A2F8:
	ldr r0, _0211A3C8 ; =0x02099EB0
	ldr r5, _0211A3CC ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_0205d348
	ldr r0, _0211A3D0 ; =0x02099F10
	ldr r1, [r5]
	ldr r0, [r0]
	bl FUN_0205bf14
	ldr r0, _0211A3B8 ; =0x02099EEC
	ldr r1, [r5]
	ldr r0, [r0]
	bl FUN_0205a60c
	ldr r0, _0211A3BC ; =0x02099EE8
	ldr r1, [r5]
	ldr r0, [r0]
	bl FUN_0205ef30
	ldr r4, _0211A3D4 ; =0x02099EB8
	ldr r1, [r5]
	ldr r0, [r4]
	bl FUN_02052f9c
	ldr r0, [r4]
	bl FUN_02052de4
	ldr r4, _0211A3D8 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A3C0 ; =0x020AF81C
	bl FUN_0204462c
	ldr r1, _0211A3DC ; =0x00001011
	cmp r0, r1
	bne _0211A39C
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	bl FUN_01ff95b0
	ldr r0, [r4]
	mov r1, r5
	bl FUN_01ff96c0
	ldmfd sp!, {r3, r4, r5, pc}
_0211A39C:
	ldr r0, [r4]
	mov r1, #0
	bl FUN_01ff95b0
	ldr r0, [r4]
	mov r1, #1
	bl FUN_01ff96c0
	ldmfd sp!, {r3, r4, r5, pc}
_0211A3B8: .word unk_02099EEC
_0211A3BC: .word unk_02099EE8
_0211A3C0: .word unk_020AF81C
_0211A3C4: .word unk_02099F18
_0211A3C8: .word unk_02099EB0
_0211A3CC: .word unk_0209A110
_0211A3D0: .word unk_02099F10
_0211A3D4: .word unk_02099EB8
_0211A3D8: .word unk_02099EF0
_0211A3DC: .word 0x00001011
	arm_func_end FUN_ov77_0211a290

	arm_func_start FUN_ov77_0211a3e0
FUN_ov77_0211a3e0: ; 0x0211A3E0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A478 ; =0x02099F18
	mov r4, #0
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl FUN_020512a8
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r5, #0xc]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A47C ; =0x02099F58
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_02116650
	ldr r0, _0211A480 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r0, _0211A484 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205b398
	ldr r5, _0211A488 ; =0x02099EE8
	mov r1, r4
	ldr r0, [r5]
	bl FUN_020522ec
	ldr r0, [r5]
	mov r1, #2
	bl FUN_020522ec
	ldr r0, [r5]
	mov r1, #3
	bl FUN_020522ec
	ldr r0, [r5]
	mov r1, #5
	bl FUN_020522ec
	ldmfd sp!, {r3, r4, r5, pc}
_0211A478: .word unk_02099F18
_0211A47C: .word unk_02099F58
_0211A480: .word unk_02099F38
_0211A484: .word unk_02099EEC
_0211A488: .word unk_02099EE8
	arm_func_end FUN_ov77_0211a3e0

	arm_func_start FUN_ov77_0211a48c
FUN_ov77_0211a48c: ; 0x0211A48C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov77_0211a48c

	arm_func_start FUN_ov77_0211a4a0
FUN_ov77_0211a4a0: ; 0x0211A4A0
	bx lr
	arm_func_end FUN_ov77_0211a4a0

	arm_func_start FUN_ov77_0211a4a4
FUN_ov77_0211a4a4: ; 0x0211A4A4
	bx lr
	arm_func_end FUN_ov77_0211a4a4

	arm_func_start FUN_ov77_0211a4a8
FUN_ov77_0211a4a8: ; 0x0211A4A8
	bx lr
	arm_func_end FUN_ov77_0211a4a8

	arm_func_start FUN_ov77_0211a4ac
FUN_ov77_0211a4ac: ; 0x0211A4AC
	bx lr
	arm_func_end FUN_ov77_0211a4ac

	.section .init, 4
	arm_func_start FUN_ov77_0211a4b0
FUN_ov77_0211a4b0: ; 0x0211A4B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A4F8 ; =0x0211A520
	str r0, [r4, #0x14]
	ldr r0, _0211A4FC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211A500 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4F8: .word ov77_0211A520
_0211A4FC: .word 0x00009CCD
_0211A500: .word 0x0000EA3C
	arm_func_end FUN_ov77_0211a4b0

	.section .sinit, 4
ov77_0211A504:
	.word FUN_ov77_0211a4b0

	.data
	.global ov77_0211A520
ov77_0211A520:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov77_0211A540
ov77_0211A540:
	.word FUN_ov77_0211a4ac
	.word FUN_ov77_0211a48c
	.word FUN_ov77_0211a4a8
	.word FUN_ov77_0211a4a4
	.word FUN_ov77_0211a12c
	.word FUN_0202b208
	.word FUN_ov77_0211a290
	.word FUN_ov77_0211a4a0
	.word FUN_ov77_0211a3e0
	.word FUN_ov77_02119f00
	.word FUN_0202b200
	.word FUN_ov77_0211a0e8
	.word FUN_ov77_02119fec
	.word FUN_ov77_0211a0e0
	.word FUN_ov77_0211a0ac
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
	.word FUN_ov1_020be600
	.word FUN_ov1_020be55c
	.word FUN_ov1_020be5bc
	.word FUN_ov1_020be5e0
	.byte 0x00, 0x00, 0x00, 0x00

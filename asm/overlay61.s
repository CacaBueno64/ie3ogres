
	.include "/macros/function.inc"
	.include "/include/overlay61.inc"

	.text
	arm_func_start FUN_ov61_02119f00
FUN_ov61_02119f00: ; 0x02119F00
	ldr r2, _02119F10 ; =0x0211F5E0
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
_02119F10: .word 0x0211F5E0
	arm_func_end FUN_ov61_02119f00

	arm_func_start FUN_ov61_02119f14
FUN_ov61_02119f14: ; 0x02119F14
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	stmia sp, {r1, r2, r3}
	ldrsb r3, [sp, #0x30]
	ldrb r1, [sp, #0x34]
	ldrb r2, [sp, #0x38]
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r5, r0
	ldrb r1, [sp, #0x3c]
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r4, _02119F88 ; =0x0211F5E0
	ldr r0, _02119F8C ; =0x0209F5C0
	ldr r1, [r4, #4]
	ldr r2, [r4]
	mov r3, #0
	bl  FUN_ov16_020f5da0
	ldr r2, [sp, #0x44]
	cmp r2, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #4]
	mov r0, r5
	bl  FUN_ov16_020f1138
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_02119F88: .word 0x0211F5E0
_02119F8C: .word 0x0209F5C0
	arm_func_end FUN_ov61_02119f14

	arm_func_start FUN_ov61_02119f90
FUN_ov61_02119f90: ; 0x02119F90
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	stmia sp, {r1, r2}
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, r0
	ldr r0, _02119FCC ; =0x0211F5E0
	str r1, [sp, #0x10]
	ldr r1, [r0, #4]
	ldr r2, [r0]
	ldr r0, _02119FD0 ; =0x0209F5C0
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x14
	ldmia sp!, {pc}
_02119FCC: .word 0x0211F5E0
_02119FD0: .word 0x0209F5C0
	arm_func_end FUN_ov61_02119f90

	arm_func_start FUN_ov61_02119fd4
FUN_ov61_02119fd4: ; 0x02119FD4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r12, [sp, #0x10]
	str r2, [sp]
	mov r2, r3, lsl #3
	str r2, [sp, #4]
	mov r2, r0
	mov r12, r12, lsl #3
	ldr r0, _0211A014 ; =0x0211F5E0
	str r12, [sp, #8]
	mov r3, r1
	ldr r1, [r0, #4]
	ldr r0, _0211A018 ; =0x0209F5C0
	bl  FUN_ov16_020f6470
	add sp, sp, #0xc
	ldmia sp!, {pc}
_0211A014: .word 0x0211F5E0
_0211A018: .word 0x0209F5C0
	arm_func_end FUN_ov61_02119fd4

	arm_func_start FUN_ov61_0211a01c
FUN_ov61_0211a01c: ; 0x0211A01C
	mov r3, #0
	mov r2, #1
_0211A024:
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #0x56]
	cmp r3, #2
	blo _0211A024
	bx lr
	arm_func_end FUN_ov61_0211a01c

	arm_func_start FUN_ov61_0211a03c
FUN_ov61_0211a03c: ; 0x0211A03C
	ldr r12, _0211A048 ; =FUN_ov61_0211a340
	mov r1, #2
	bx r12
_0211A048: .word FUN_ov61_0211a340
	arm_func_end FUN_ov61_0211a03c

	arm_func_start FUN_ov61_0211a04c
FUN_ov61_0211a04c: ; 0x0211A04C
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov61_0211a04c

	arm_func_start FUN_ov61_0211a060
FUN_ov61_0211a060: ; 0x0211A060
	ldr r12, _0211A06C ; =FUN_ov61_0211a340
	mov r1, #5
	bx r12
_0211A06C: .word FUN_ov61_0211a340
	arm_func_end FUN_ov61_0211a060

	arm_func_start FUN_ov61_0211a070
FUN_ov61_0211a070: ; 0x0211A070
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #7
	ldr r1, _0211A0B4 ; =0x0209A454
	str r2, [r4, #8]
	ldr r1, [r1, #0x24]
	cmp r1, #2
	ldr r1, [r0]
	bne _0211A09C
	ldr r1, [r1, #0x54]
	b _0211A0A0
_0211A09C:
	ldr r1, [r1, #0x50]
_0211A0A0:
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02041f2c
	ldmfd sp!, {r4, pc}
_0211A0B4: .word 0x0209A454
	arm_func_end FUN_ov61_0211a070

	arm_func_start FUN_ov61_0211a0b8
FUN_ov61_0211a0b8: ; 0x0211A0B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211A218 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x84]
	mov r4, #0
	cmp r0, #0
	beq _0211A110
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x61
	bne _0211A110
	ldr r6, [r5, #4]
	mov r1, r4
_0211A0EC:
	mov r0, r6
	mov r2, #0x22
	bl FUN_02041eac
	mov r4, #1
	mov r0, r6
	mov r1, r4
	mov r2, #0xa
_0211A108:
	bl FUN_02041eac
	b _0211A1D8
_0211A110:
	ldr r0, _0211A218 ; =0x020A0640
	ldrb r0, [r0, #0x86]
	cmp r0, #0
	beq _0211A14C
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x61
	beq _0211A140
	ldr r0, [r5, #4]
	bl FUN_0204204c
	cmp r0, #0x26
	bne _0211A14C
_0211A140:
	ldr r6, [r5, #4]
	mov r1, #0
	b _0211A0EC
_0211A14C:
	ldr r0, _0211A21C ; =0x02099E8F
	ldrb r0, [r0]
	cmp r0, #0
	beq _0211A170
	ldr r0, _0211A220 ; =0x0209A124
	mov r1, #0x17
	str r1, [r0]
_0211A168:
	bl FUN_0206ee5c
	b _0211A168
_0211A170:
	ldr r1, _0211A224 ; =0x0209A454
	ldrb r2, [r1, #0x83]
	mov r0, r2, lsl #0x1d
	movs r0, r0, lsr #0x1d
	beq _0211A1B0
	ldr r7, [r5, #4]
	mov r6, #0xf
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl FUN_02041eac
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r6
	b _0211A108
_0211A1B0:
	mov r0, r2, lsl #0x1a
	movs r0, r0, lsr #0x1d
	beq _0211A1D8
	bic r2, r2, #0x38
	mov r0, r5
	strb r2, [r1, #0x83]
	ldr r1, [r0]
	ldr r1, [r1, #0x88]
	blx r1
	mov r4, #1
_0211A1D8:
	cmp r4, #0
	beq _0211A210
	mov r1, #7
	ldr r0, _0211A224 ; =0x0209A454
	str r1, [r5, #8]
	ldr r0, [r0, #0x24]
	cmp r0, #2
	mov r0, r5
	ldr r1, [r0]
	bne _0211A208
	ldr r1, [r1, #0x54]
	b _0211A20C
_0211A208:
	ldr r1, [r1, #0x50]
_0211A20C:
	blx r1
_0211A210:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A218: .word 0x020A0640
_0211A21C: .word 0x02099E8F
_0211A220: .word 0x0209A124
_0211A224: .word 0x0209A454
	arm_func_end FUN_ov61_0211a0b8

	arm_func_start FUN_ov61_0211a228
FUN_ov61_0211a228: ; 0x0211A228
	bx lr
	arm_func_end FUN_ov61_0211a228

	arm_func_start FUN_ov61_0211a22c
FUN_ov61_0211a22c: ; 0x0211A22C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	mov r6, #2
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x56
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r6
	add r0, r5, #0x54
	bl MI_CpuFill8
	ldr r7, _0211A2CC ; =0x0209A5D0
	mov r6, #1
_0211A264:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x50]
	cmp r1, #0
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_02062800
	add r1, r0, #0x7d
	cmp r1, #1
	movls r0, #2
	ldmlsfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #0x7b
	cmp r0, #1
	movls r0, #1
	ldmlsfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r4
	add r4, r4, #1
	strb r6, [r0, #0x54]
	cmp r4, #1
	blt _0211A264
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x74]
	blx r1
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2CC: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211a22c

	arm_func_start FUN_ov61_0211a2d0
FUN_ov61_0211a2d0: ; 0x0211A2D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov61_0211a22c
	str r0, [r5, #0x1d4]
	mov r0, r5
	bl FUN_ov61_0211c6a0
	ldr r0, [r5, #0x1d4]
	cmp r0, #0
	beq _0211A304
	cmp r0, #1
	beq _0211A314
	b _0211A324
_0211A304:
	mov r0, r5
	mov r1, r4
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211A314:
	mov r0, r5
	mov r1, #0xa
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211A324:
	mov r1, #7
	mov r0, r5
	str r1, [r5, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x78]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov61_0211a2d0

	arm_func_start FUN_ov61_0211a340
FUN_ov61_0211a340: ; 0x0211A340
	ldr r2, [r0, #0xc]
	cmp r2, r1
	movne r2, #1
	strne r1, [r0, #0xc]
	strneb r2, [r0, #0x35]
	bx lr
	arm_func_end FUN_ov61_0211a340

	arm_func_start FUN_ov61_0211a358
FUN_ov61_0211a358: ; 0x0211A358
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _0211A434 ; =0x0209A5D0
	bl FUN_020627a4
	cmp r0, #0
	bgt _0211A3A4
	bge _0211A3DC
	mvn r2, #0x78
	cmp r0, r2
	bgt _0211A3AC
	sub r1, r2, #4
	cmp r0, r1
	blt _0211A3AC
	beq _0211A3AC
	sub r1, r2, #3
	cmp r0, r1
	cmpne r0, r2
	beq _0211A3C4
	b _0211A3AC
_0211A3A4:
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_0211A3AC:
	mov r2, #7
	mov r0, r4
	mov r1, #9
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211A3C4:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211A3DC:
	ldr r0, _0211A438 ; =0x0209AC44
	mov r5, #4
	mov r1, #0x13
	str r5, [r4, #8]
	bl FUN_0202cf6c
	ldr r0, _0211A43C ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	ldreqb r0, [r0, #0x86]
	cmpeq r0, #0
	bne _0211A414
	mov r0, r4
	mov r1, r5
	bl FUN_ov61_0211d840
_0211A414:
	ldr r1, [r4, #0x50]
	ldr r0, _0211A434 ; =0x0209A5D0
	bl FUN_02062800
	mov r0, r4
	bl FUN_ov61_0211a22c
	mov r0, r4
	bl FUN_ov61_0211c6a0
	ldmfd sp!, {r3, r4, r5, pc}
_0211A434: .word 0x0209A5D0
_0211A438: .word 0x0209AC44
_0211A43C: .word 0x020A0640
	arm_func_end FUN_ov61_0211a358

	arm_func_start FUN_ov61_0211a440
FUN_ov61_0211a440: ; 0x0211A440
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x200]
	mov r5, #5
	ldr r0, _0211A4EC ; =0x0209A5D0
	str r5, [r4, #8]
	bl FUN_020620f8
	cmp r0, #0
	bgt _0211A49C
	bge _0211A4D4
	sub r1, r5, #0x7e
	cmp r0, r1
	bgt _0211A4A4
	sub r1, r5, #0x82
	cmp r0, r1
	blt _0211A4A4
	beq _0211A4A4
	sub r1, r5, #0x81
	cmp r0, r1
	subne r1, r5, #0x7e
	cmpne r0, r1
	beq _0211A4BC
	b _0211A4A4
_0211A49C:
	cmp r0, #1
	beq _0211A4D4
_0211A4A4:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4BC:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4D4:
	mov r2, #5
	mov r0, r4
	mov r1, #3
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4EC: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211a440

	arm_func_start FUN_ov61_0211a4f0
FUN_ov61_0211a4f0: ; 0x0211A4F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A5D4 ; =0x0209A454
	mov r4, r0
	ldr r0, [r1, #0x24]
	mov r5, #1
	cmp r0, #6
	ldr r0, _0211A5D8 ; =0x0209A5D0
	movne r5, #0
	bl FUN_02062924
	cmp r0, #0
	bgt _0211A54C
	bge _0211A584
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211A554
_0211A530: ; jump table
	b _0211A56C ; case 0
	b _0211A554 ; case 1
	b _0211A554 ; case 2
	b _0211A554 ; case 3
	b _0211A56C ; case 4
	b _0211A56C ; case 5
	b _0211A554 ; case 6
_0211A54C:
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_0211A554:
	mov r2, #7
	mov r0, r4
	mov r1, #9
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211A56C:
	mov r2, #4
	mov r0, r4
	mov r1, #0xa
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211A584:
	mov r0, #4
	str r0, [r4, #8]
	cmp r5, #0
	beq _0211A5B8
	mov r0, r4
	bl FUN_ov61_0211a0b8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x84]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211A5B8:
	ldr r0, _0211A5DC ; =0x0209AC44
	mov r1, #0x14
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, #8
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211A5D4: .word 0x0209A454
_0211A5D8: .word 0x0209A5D0
_0211A5DC: .word 0x0209AC44
	arm_func_end FUN_ov61_0211a4f0

	arm_func_start FUN_ov61_0211a5e0
FUN_ov61_0211a5e0: ; 0x0211A5E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211A680 ; =0x020A0B00
	mov r1, #0
	bl FUN_0207477c
	ldr r1, [r4, #0x200]
	ldr r0, _0211A684 ; =0x0209A5D0
	bl FUN_02062888
	cmp r0, #0
	bgt _0211A638
	bge _0211A668
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211A640
_0211A61C: ; jump table
	b _0211A658 ; case 0
	b _0211A640 ; case 1
	b _0211A640 ; case 2
	b _0211A640 ; case 3
	b _0211A658 ; case 4
	b _0211A658 ; case 5
	b _0211A640 ; case 6
_0211A638:
	cmp r0, #1
	beq _0211A668
_0211A640:
	mov r2, #7
	mov r0, r4
	mov r1, #9
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r4, pc}
_0211A658:
	mov r0, r4
	mov r1, #0xa
	bl FUN_ov61_0211a340
	ldmfd sp!, {r4, pc}
_0211A668:
	mov r2, #6
	mov r0, r4
	mov r1, #7
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r4, pc}
_0211A680: .word 0x020A0B00
_0211A684: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211a5e0

	arm_func_start FUN_ov61_0211a688
FUN_ov61_0211a688: ; 0x0211A688
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	mov r1, #3
	str r1, [r5, #8]
	cmp r4, #0xe
	addls pc, pc, r4, lsl #2
	b _0211A824
_0211A6A8: ; jump table
	b _0211A824 ; case 0
	b _0211A6E4 ; case 1
	b _0211A768 ; case 2
	b _0211A824 ; case 3
	b _0211A78C ; case 4
	b _0211A824 ; case 5
	b _0211A824 ; case 6
	b _0211A824 ; case 7
	b _0211A7C0 ; case 8
	b _0211A824 ; case 9
	b _0211A810 ; case 10
	b _0211A810 ; case 11
	b _0211A7D8 ; case 12
	b _0211A824 ; case 13
	b _0211A7FC ; case 14
_0211A6E4:
	ldr r1, [r5, #0x28]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211A824
_0211A6F4: ; jump table
	b _0211A824 ; case 0
	b _0211A824 ; case 1
	b _0211A714 ; case 2
	b _0211A72C ; case 3
	b _0211A72C ; case 4
	b _0211A824 ; case 5
	b _0211A824 ; case 6
	b _0211A758 ; case 7
_0211A714:
	mov r1, #0
	str r1, [r5, #0x20c]
	ldr r2, [r0]
	ldr r2, [r2, #0x7c]
	blx r2
	b _0211A824
_0211A72C:
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _0211A83C ; =0x020A0640
	mov r1, #2
	strb r1, [r0, #0x9c]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x22
	bl FUN_02041eac
	b _0211A824
_0211A758:
	ldr r1, [r0]
	ldr r1, [r1, #0x84]
_0211A760:
	blx r1
	b _0211A824
_0211A768:
	ldr r1, [r5, #0x28]
	cmp r1, #0xc
	bne _0211A780
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
_0211A77C:
	b _0211A760
_0211A780:
	cmp r1, #0xd
	bne _0211A824
	b _0211A81C
_0211A78C:
	ldr r1, [r5, #0x28]
	cmp r1, #0xe
	bne _0211A824
	ldrb r1, [r5, #0x1e5]
	cmp r1, #0
	bne _0211A7B0
	mov r1, #0xd
	bl FUN_ov61_0211a2d0
	b _0211A824
_0211A7B0:
	mov r0, #0x13
	mov r1, #1
	bl  FUN_ov16_020f2604
	b _0211A824
_0211A7C0:
	ldr r1, [r5, #0x28]
	cmp r1, #0xe
	bne _0211A824
	ldr r1, [r0]
	ldr r1, [r1, #0x88]
	b _0211A77C
_0211A7D8:
	ldr r1, [r5, #0x28]
	cmp r1, #0xc
	bne _0211A7F0
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	b _0211A77C
_0211A7F0:
	cmp r1, #0xd
	bne _0211A824
	b _0211A758
_0211A7FC:
	bl FUN_ov61_0211a0b8
	cmp r0, #0
	bne _0211A824
	mov r0, r5
	b _0211A758
_0211A810:
	ldr r1, [r5, #0x28]
	cmp r1, #0xe
	bne _0211A824
_0211A81C:
	mov r1, #1
	bl FUN_ov61_0211a340
_0211A824:
	ldr r1, [r5, #0xc]
	mov r0, #0
	strb r0, [r5, #0x2c]
	cmp r1, r4
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0211A83C: .word 0x020A0640
	arm_func_end FUN_ov61_0211a688

	arm_func_start FUN_ov61_0211a840
FUN_ov61_0211a840: ; 0x0211A840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x2c]
	mov r6, r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #3
	moveq r0, #1
	streq r0, [r7, #0x20c]
	add r5, r7, #0x36
	mov r4, #1
	ldrb r1, [r5, r6]
	ldr r0, _0211A890 ; =0x0209A070
	mov r2, r4
	bl  FUN_ov16_020f6e8c
	ldrb r1, [r5, r6]
	ldr r0, _0211A894 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	strb r4, [r7, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A890: .word 0x0209A070
_0211A894: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211a840

	arm_func_start FUN_ov61_0211a898
FUN_ov61_0211a898: ; 0x0211A898
	cmp r2, #0
	sub r3, r1, #2
	bne _0211A8BC
	add r0, r0, r3
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	moveq r1, #0
	mov r0, r1
	bx lr
_0211A8BC:
	ldrb r0, [r0, #0x1d8]
	cmp r0, #0
	moveq r0, r1
	bxeq lr
	add r0, r3, #2
	add r0, r2, r0
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	add r0, r1, r0, ror #31
	add r0, r0, #2
	bx lr
	arm_func_end FUN_ov61_0211a898

	arm_func_start FUN_ov61_0211a8e8
FUN_ov61_0211a8e8: ; 0x0211A8E8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	cmp r0, #4
	ldreqb r0, [r6, #0x11]
	mov r7, #0
	mov r4, #1
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211ACA8 ; =0x0209F5C0
	mov r1, r7
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0xc]
	cmp r1, #4
	bne _0211A93C
	ldrb r0, [r6, #0x1ff]
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A93C:
	ldr r0, _0211ACAC ; =0x0209A0F4
	cmp r1, #0xe
	ldrh r0, [r0]
	orr r0, r0, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A95C: ; jump table
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 0
	b _0211A998 ; case 1
	b _0211AAD4 ; case 2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 3
	b _0211AC2C ; case 4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 7
	b _0211AC2C ; case 8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 9
	b _0211AC2C ; case 10
	b _0211AC2C ; case 11
	b _0211AAD4 ; case 12
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 13
	b _0211AAD4 ; case 14
_0211A998:
	ldr r1, [r6, #0x24]
	tst r0, #0x80
	sub r8, r1, #2
	beq _0211A9F4
	mov r0, r6
	mov r2, r4
	bl FUN_ov61_0211a898
	ldr r1, [r6, #0x24]
	cmp r1, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r0, [r6, #0x24]
	str r0, [r6, #0x28]
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r6, #0x24]
	ldr r0, _0211ACB4 ; =0x0209A070
	add r1, r1, #1
	add r1, r6, r1
	ldrb r1, [r1, #0x36]
	mov r2, r4
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A9F4:
	tst r0, #0x40
	beq _0211AA48
	mov r0, r6
	mvn r2, #0
	bl FUN_ov61_0211a898
	ldr r1, [r6, #0x24]
	cmp r1, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r0, [r6, #0x24]
	str r0, [r6, #0x28]
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r1, [r6, #0x24]
	ldr r0, _0211ACB4 ; =0x0209A070
	add r1, r1, #1
	add r1, r6, r1
	ldrb r1, [r1, #0x36]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AA48:
	tst r5, #1
	beq _0211AA8C
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add r0, r8, #2
	str r0, [r6, #0x24]
	str r0, [r6, #0x28]
	cmp r8, #0
	mov r0, r6
	bne _0211AA80
	mov r1, #3
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AA80:
	mov r1, #5
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AA8C:
	tst r5, #2
	beq _0211AAC8
	mov r4, #4
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldrb r0, [r6, #0x1e5]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r2, #7
	mov r0, r6
	mov r1, r4
	str r2, [r6, #0x28]
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AAC8:
	str r7, [r6, #0x20]
	str r7, [r6, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AAD4:
	tst r5, #0x20
	beq _0211AB1C
	ldr r0, [r6, #0x28]
	cmp r0, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xc]
	mov r1, #0xc
	str r1, [r6, #0x28]
	cmp r0, #0xe
	beq _0211AB08
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211AB08:
	ldrb r1, [r6, #0x36]
	ldr r0, _0211ACB4 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AB1C:
	tst r5, #0x10
	beq _0211AB64
	ldr r0, [r6, #0x28]
	cmp r0, #0xd
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xc]
	mov r1, #0xd
	str r1, [r6, #0x28]
	cmp r0, #0xe
	beq _0211AB50
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211AB50:
	ldrb r1, [r6, #0x37]
	ldr r0, _0211ACB4 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AB64:
	ands r0, r5, #1
	bne _0211AB74
	tst r5, #2
	beq _0211AC20
_0211AB74:
	cmp r1, #0xe
	bne _0211AB90
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	strb r4, [r6, #0x2c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AB90:
	cmp r0, #0
	beq _0211ABE4
	ldr r0, [r6, #0x28]
	cmp r0, #0xc
	bne _0211ABC0
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #0
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211ABC0:
	cmp r0, #0xd
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #1
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211ABE4:
	tst r5, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r6, #0x37]
	ldr r0, _0211ACB4 ; =0x0209A070
	mov r3, #0xd
	mov r2, r4
	str r3, [r6, #0x28]
	bl  FUN_ov16_020f6e8c
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, r4
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AC20:
	str r7, [r6, #0x20]
	str r7, [r6, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AC2C:
	tst r5, #1
	beq _0211AC9C
	ldr r0, [r6, #0x28]
	cmp r0, #0xe
	movne r0, #0xe
	strne r0, [r6, #0x28]
	ldr r0, [r6, #0xc]
	cmp r0, #8
	bne _0211AC5C
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #6
	b _0211AC88
_0211AC5C:
	cmp r0, #4
	bne _0211AC80
	ldrb r0, [r6, #0x1ff]
	cmp r0, #0
	bne _0211AC8C
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #1
	strb r1, [r6, #0x1ff]
	b _0211AC88
_0211AC80:
	ldr r0, _0211ACB0 ; =0x0209AC44
	mov r1, #1
_0211AC88:
	bl FUN_0202cf6c
_0211AC8C:
	mov r0, r6
	mov r1, #2
	bl FUN_ov61_0211a840
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AC9C:
	str r7, [r6, #0x20]
	str r7, [r6, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211ACA8: .word 0x0209F5C0
_0211ACAC: .word 0x0209A0F4
_0211ACB0: .word 0x0209AC44
_0211ACB4: .word 0x0209A070
	arm_func_end FUN_ov61_0211a8e8

	arm_func_start FUN_ov61_0211acb8
FUN_ov61_0211acb8: ; 0x0211ACB8
	ldr r0, _0211ACD0 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _0211ACD4 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_0211ACD0: .word 0x0209F5C0
_0211ACD4: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov61_0211acb8

	arm_func_start FUN_ov61_0211acd8
FUN_ov61_0211acd8: ; 0x0211ACD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211ACF0: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211AD2C ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0211AD2C ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	b _0211AD70 ; case 7
	ldmfd sp!, {r4, pc} ; case 8
	ldmfd sp!, {r4, pc} ; case 9
	ldmfd sp!, {r4, pc} ; case 10
	ldmfd sp!, {r4, pc} ; case 11
	b _0211AD94 ; case 12
	b _0211ADC4 ; case 13
	b _0211ADF4 ; case 14
_0211AD2C:
	mov r2, #0
	bl FUN_ov61_0211a898
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	streq r0, [r4, #0x28]
	streq r0, [r4, #0x24]
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r4, #0x1c]
	ldr r0, _0211AE18 ; =0x0209A070
	add r1, r2, #1
	str r2, [r4, #0x28]
	str r2, [r4, #0x24]
	add r1, r4, r1
	ldrb r1, [r1, #0x36]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211AD70:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #0x28]
	ldrb r1, [r4, #0x3a]
	ldr r0, _0211AE18 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211AD94:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211AE1C ; =0x0209AC44
	str r1, [r4, #0x28]
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r1, [r4, #0x36]
	ldr r0, _0211AE18 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211ADC4:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211AE1C ; =0x0209AC44
	str r1, [r4, #0x28]
	mov r1, #8
	bl FUN_0202cf6c
	ldrb r1, [r4, #0x37]
	ldr r0, _0211AE18 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211ADF4:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #0x28]
	ldrb r1, [r4, #0x38]
	ldr r0, _0211AE18 ; =0x0209A070
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_0211AE18: .word 0x0209A070
_0211AE1C: .word 0x0209AC44
	arm_func_end FUN_ov61_0211acd8

	arm_func_start FUN_ov61_0211ae20
FUN_ov61_0211ae20: ; 0x0211AE20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r0, r1
	bne _0211AE54
	ldr r0, _0211AE80 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldr r0, [r5, #0x1c]
	cmp r0, #2
	moveq r0, #1
	streq r0, [r5, #0x20c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE54:
	ldr r4, _0211AE80 ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	bmi _0211AE74
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
_0211AE74:
	mov r0, #0
	str r0, [r5, #0x20c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE80: .word 0x0209A070
	arm_func_end FUN_ov61_0211ae20

	arm_func_start FUN_ov61_0211ae84
FUN_ov61_0211ae84: ; 0x0211AE84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #0x1c]
	mov r4, #1
	cmp r0, #0xe
	mvn r5, #0
	addls pc, pc, r0, lsl #2
	b _0211AFA8
_0211AEA4: ; jump table
	b _0211AFA8 ; case 0
	b _0211AFA8 ; case 1
	b _0211AEE0 ; case 2
	b _0211AFA8 ; case 3
	b _0211AEE0 ; case 4
	b _0211AFA8 ; case 5
	b _0211AFA8 ; case 6
	b _0211AF2C ; case 7
	b _0211AFA8 ; case 8
	b _0211AFA8 ; case 9
	b _0211AFA8 ; case 10
	b _0211AFA8 ; case 11
	b _0211AF3C ; case 12
	b _0211AF4C ; case 13
	b _0211AF5C ; case 14
_0211AEE0:
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r2, [r6, #0x24]
	ldr r1, [r6, #0x1c]
	mov r0, #0
	str r0, [r6, #0x20c]
	cmp r2, r1
	add r5, r2, #1
	beq _0211AFA8
	ldr r7, _0211AFC4 ; =0x0209A070
	mov r0, r7
	bl  FUN_ov16_020f6d3c
	add r0, r6, r5
	ldrb r1, [r0, #0x36]
	mov r0, r7
	mov r2, r4
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF2C:
	mov r5, #4
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, r5
	b _0211AFA4
_0211AF3C:
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, r4
	mov r5, #0
	b _0211AFA4
_0211AF4C:
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, #4
	mov r5, r4
	b _0211AFA4
_0211AF5C:
	ldr r0, [r6, #0xc]
	mov r5, #2
	cmp r0, #8
	bne _0211AF78
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, #6
	b _0211AFA4
_0211AF78:
	cmp r0, #4
	bne _0211AF9C
	ldrb r0, [r6, #0x1ff]
	cmp r0, #0
	bne _0211AFA8
	mov r1, r4
	ldr r0, _0211AFC0 ; =0x0209AC44
	strb r1, [r6, #0x1ff]
	b _0211AFA4
_0211AF9C:
	ldr r0, _0211AFC0 ; =0x0209AC44
	mov r1, r4
_0211AFA4:
	bl FUN_0202cf6c
_0211AFA8:
	cmp r5, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov61_0211a840
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AFC0: .word 0x0209AC44
_0211AFC4: .word 0x0209A070
	arm_func_end FUN_ov61_0211ae84

	arm_func_start FUN_ov61_0211afc8
FUN_ov61_0211afc8: ; 0x0211AFC8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B110 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #4
	bne _0211B00C
	ldrb r0, [r5, #0x1ff]
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211B00C:
	ldr r6, _0211B114 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r6]
	mov r2, #0
	bl  FUN_ov16_0210f20c
	cmp r0, #2
	bne _0211B050
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	cmp r0, #1
	bne _0211B050
	mov r4, #1
	ldr r0, _0211B118 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	strb r4, [r5, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B050:
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0211B0D4
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	bne _0211B0A0
	mov r0, #1
	strb r0, [r5, #0x11]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov61_0211acb8
	str r0, [r5, #0x1c]
	cmp r0, #0
	beq _0211B0A0
	mov r0, r5
	bl FUN_ov61_0211acd8
_0211B0A0:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0x14]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x18]
	bl FUN_ov61_0211acb8
	ldr r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov61_0211ae20
	ldmfd sp!, {r4, r5, r6, pc}
_0211B0D4:
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	ldrne r1, [r5, #0x1c]
	cmpne r1, #0
	beq _0211B0FC
	ldr r0, [r5, #0x20]
	cmp r0, r1
	bne _0211B0FC
	mov r0, r5
	bl FUN_ov61_0211ae84
_0211B0FC:
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	strb r0, [r5, #0x11]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B110: .word 0x0209F5C0
_0211B114: .word 0x02099EB4
_0211B118: .word 0x0209AC44
	arm_func_end FUN_ov61_0211afc8

	arm_func_start FUN_ov61_0211b11c
FUN_ov61_0211b11c: ; 0x0211B11C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x58
	mov r1, #0
	mov r2, #0x168
	bl MI_CpuFill8
	ldr r0, _0211B14C ; =0x0211F360
	add r1, r4, #0x58
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211B14C: .word 0x0211F360
	arm_func_end FUN_ov61_0211b11c

	arm_func_start FUN_ov61_0211b150
FUN_ov61_0211b150: ; 0x0211B150
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x58]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x1d8]
	ldr r7, _0211B1A8 ; =0x0211EC68
	cmp r1, #0
	ldreq r7, _0211B1AC ; =0x0211EB78
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x58
	mov r4, #0xc
_0211B184:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _0211B184
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1A8: .word 0x0211EC68
_0211B1AC: .word 0x0211EB78
	arm_func_end FUN_ov61_0211b150

	arm_func_start FUN_ov61_0211b1b0
FUN_ov61_0211b1b0: ; 0x0211B1B0
	ldr r1, [r0, #0x50]
	add r2, r0, #0xe6
	ldrsb r1, [r1, #0x45]
	ldr r0, _0211B1D0 ; =0x0209BA20
	ldr r12, _0211B1D4 ; =FUN_020735a0
	add r2, r2, #0x100
	mov r3, #0x19
	bx r12
_0211B1D0: .word 0x0209BA20
_0211B1D4: .word FUN_020735a0
	arm_func_end FUN_ov61_0211b1b0

	arm_func_start FUN_ov61_0211b1d8
FUN_ov61_0211b1d8: ; 0x0211B1D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x1c0
	bl  FUN_ov16_020f33fc
	mov r6, #0
	str r6, [r4, #0x1c0]
	str r6, [r4, #0x1c4]
	strb r6, [r4, #0x1c8]
	strb r6, [r4, #0x1c9]
	strb r6, [r4, #0x1ca]
	add r5, r4, #0x58
	mov r4, #0xc
_0211B208:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x1e
	blt _0211B208
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov61_0211b1d8

	arm_func_start FUN_ov61_0211b220
FUN_ov61_0211b220: ; 0x0211B220
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r4, #1
	mov r8, #3
	ldr r0, [r6, #0xd0]
	mov r1, r4
	mov r2, r8
	bl  FUN_ov16_020f18e8
	mov r7, r0
	mov r5, #0
	ldr r0, [r6, #0xd0]
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020f1138
	ldr r0, [r6, #0xdc]
	mov r2, r8
	add r1, r7, #1
	bl  FUN_ov16_020f18e8
	mov r2, r8
	mov r7, r0
	ldr r0, [r6, #0xdc]
	mov r1, r5
	bl  FUN_ov16_020f1138
	add r1, r7, #1
	ldr r0, [r6, #0xe8]
	mov r7, #9
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	ldr r0, [r6, #0xe8]
	mov r1, r5
	bl  FUN_ov16_020f1138
	add r1, r7, #1
	ldr r0, [r6, #0xf4]
	mov r7, #0xa
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	ldr r0, [r6, #0xf4]
	mov r1, r5
	bl  FUN_ov16_020f1138
	add r1, r7, #1
	ldr r0, [r6, #0x100]
	mov r7, #0xb
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	ldr r0, [r6, #0x100]
	mov r1, r5
	bl  FUN_ov16_020f1138
	add r1, r7, #1
	ldr r0, [r6, #0x10c]
	mov r7, #0xd
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r8, r0
	ldr r0, [r6, #0x10c]
	mov r1, r5
	bl  FUN_ov16_020f1138
	mov r7, #0xf
	ldr r0, [r6, #0x1b4]
	mov r2, r7
	add r1, r8, #1
	bl  FUN_ov16_020f18e8
	mov r8, r0
	ldr r0, [r6, #0x1b4]
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_020f1138
	mov r7, #7
	ldr r0, [r6, #0xc4]
	mov r2, r7
	add r1, r8, #1
	bl  FUN_ov16_020f18e8
	mov r8, r0
	ldr r0, [r6, #0xc4]
	mov r2, r7
	mov r1, r5
	bl  FUN_ov16_020f1138
	mov r7, #8
	ldr r0, [r6, #0x118]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x130]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x13c]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x148]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x154]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x16c]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x178]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x184]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x190]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x19c]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x124]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0x160]
	add r1, r8, #1
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r7, #4
	ldr r0, [r6, #0xac]
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	ldr r0, [r6, #0xac]
	mov r1, r5
	bl  FUN_ov16_020f1138
	add r1, r7, #1
	mov r7, #0xc
	ldr r0, [r6, #0xb8]
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	ldr r0, [r6, #0xb8]
	mov r1, r5
	bl  FUN_ov16_020f1138
	add r1, r7, #1
	mov r7, #0xe
	ldr r0, [r6, #0x1a8]
	mov r2, r7
	bl  FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	ldr r0, [r6, #0x1a8]
	mov r1, r5
	bl  FUN_ov16_020f1138
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	ldrne r1, [r6, #0x40]
	cmpne r1, #0
	movne r5, r4
	cmp r5, #0
	beq _0211B4E0
	ldrh r4, [r6, #0x48]
	ldrh r1, [r6, #0x4a]
	add r2, r7, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
_0211B4E0:
	mov r4, #1
	ldr r0, [r6, #0x64]
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f18e8
	mov r1, r0
	ldr r0, [r6, #0x70]
	mov r2, r4
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	mov r1, r0
	ldr r0, [r6, #0x7c]
	mov r2, r4
	add r1, r1, #1
	bl  FUN_ov16_020f18e8
	mov r1, r0
	mov r5, #5
	ldr r0, [r6, #0x88]
	add r1, r1, #1
	mov r2, r5
	bl  FUN_ov16_020f18e8
	mov r2, r5
	mov r7, r0
	mov r5, #0
	ldr r0, [r6, #0x88]
	mov r1, r5
	bl  FUN_ov16_020f1138
	ldr r0, [r6, #0x94]
	add r1, r7, #1
	mov r2, r4
	bl  FUN_ov16_020f18e8
	add r1, r0, #1
	mov r4, #6
	ldr r0, [r6, #0xa0]
	mov r2, r4
	bl  FUN_ov16_020f18e8
	ldr r0, [r6, #0xa0]
	mov r1, r5
	mov r2, r4
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov61_0211b220

	arm_func_start FUN_ov61_0211b584
FUN_ov61_0211b584: ; 0x0211B584
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl FUN_0200505c
	mov r6, #0x20
	mov r7, #0
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r6
	bl DC_FlushRange
	mov r5, #3
	mov r0, r5
	ldr r1, [r4, #0xd0]
	mov r2, r6
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0xdc]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0xe8]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0xf4]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x100]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x10c]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x1b4]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0xc4]
	bl  FUN_ov16_020f19d4
	str r0, [r4, #0x30]
	bl FUN_02004f78
	mov r1, r0
	mov r0, r7
	mov r2, r6
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r6
	bl DC_FlushRange
	mov r5, #1
	ldr r1, [r4, #0xac]
	mov r0, r5
	mov r2, r6
	bl  FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r4, #0xb8]
	mov r0, r5
	bl  FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r4, #0x1a8]
	mov r0, r5
	bl  FUN_ov16_020f19d4
	mov r1, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	ldrne r0, [r4, #0x40]
	cmpne r0, #0
	moveq r5, #0
	cmp r5, #0
	beq _0211B6CC
	ldrh r3, [r4, #0x48]
	ldrh r2, [r4, #0x4a]
	ldr r0, [r4, #0x40]
	str r1, [r4, #0x44]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_0200585c
_0211B6CC:
	bl FUN_02004fcc
	mov r6, #0x20
	mov r1, r0
	mov r2, r6
	mov r0, #0
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r6
	bl DC_FlushRange
	mov r5, #2
	mov r2, r6
	mov r0, r5
	ldr r1, [r4, #0x64]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x70]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x7c]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x88]
	bl  FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x94]
	bl  FUN_ov16_020f19d4
	ldr r1, [r4, #0xa0]
	mov r2, r0
	mov r0, r5
	bl  FUN_ov16_020f19d4
	bl  FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov61_0211b584

	arm_func_start FUN_ov61_0211b75c
FUN_ov61_0211b75c: ; 0x0211B75C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x35]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	mov r1, #0
	strb r1, [r4, #0x35]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _0211B844
_0211B788: ; jump table
	b _0211B844 ; case 0
	b _0211B844 ; case 1
	b _0211B7C4 ; case 2
	b _0211B7CC ; case 3
	b _0211B7E4 ; case 4
	b _0211B7EC ; case 5
	b _0211B7F4 ; case 6
	b _0211B7FC ; case 7
	b _0211B814 ; case 8
	b _0211B81C ; case 9
	b _0211B824 ; case 10
	b _0211B82C ; case 11
	b _0211B834 ; case 12
	b _0211B844 ; case 13
	b _0211B83C ; case 14
_0211B7C4:
	mov r1, #0x12
	b _0211B848
_0211B7CC:
	ldr r1, [r4, #0x10c]
	ldr r2, [r4, #0x30]
	mov r0, #3
	bl  FUN_ov16_020f19d4
	mov r1, #0x13
	b _0211B848
_0211B7E4:
	mov r1, #0x14
	b _0211B848
_0211B7EC:
	mov r1, #0x15
	b _0211B848
_0211B7F4:
	mov r1, #0x16
	b _0211B848
_0211B7FC:
	ldr r1, [r4, #0x10c]
	ldr r2, [r4, #0x30]
	mov r0, #3
	bl  FUN_ov16_020f19d4
	mov r1, #0x17
	b _0211B848
_0211B814:
	mov r1, #0x18
	b _0211B848
_0211B81C:
	mov r1, #0x19
	b _0211B848
_0211B824:
	mov r1, #0x10
	b _0211B848
_0211B82C:
	mov r1, #0x11
	b _0211B848
_0211B834:
	mov r1, #0x1a
	b _0211B848
_0211B83C:
	mov r1, #0x1b
	b _0211B848
_0211B844:
	ldmfd sp!, {r4, pc}
_0211B848:
	mov r0, #0xc
	mla r0, r1, r0, r4
	ldr r1, [r0, #0x58]
	ldr r2, [r4, #0x30]
	mov r0, #3
	bl  FUN_ov16_020f19d4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211b75c

	arm_func_start FUN_ov61_0211b864
FUN_ov61_0211b864: ; 0x0211B864
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x3c]
	cmp r0, #0
	ldrne r0, [lr, #0x40]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x4c]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x48]
	ldrh r1, [lr, #0x4a]
	mov r12, #0
	ldr r0, [lr, #0x40]
	mul r3, r2, r1
	ldr r1, [lr, #0x44]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x4c]
	bl FUN_0200585c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov61_0211b864

	arm_func_start FUN_ov61_0211b8bc
FUN_ov61_0211b8bc: ; 0x0211B8BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #1
	beq _0211B8E4
	cmp r0, #3
	cmpne r0, #7
	beq _0211B92C
	b _0211B9A8
_0211B8E4:
	ldrb r0, [r5, #0x1d8]
	cmp r0, #0
	beq _0211B9A8
	ldr r0, [r5, #0x24]
	mov r2, #6
	cmp r0, #2
	ldr r0, _0211B9C4 ; =0x0209F5C0
	movne r2, #5
	mov r1, #0
	bl  FUN_ov16_020f6084
	ldr r0, [r5, #0x24]
	mov r2, #5
	cmp r0, #2
	ldr r0, _0211B9C4 ; =0x0209F5C0
	movne r2, #6
	mov r1, #0
	bl  FUN_ov16_020f60f8
	b _0211B9A8
_0211B92C:
	ldr r0, _0211B9C8 ; =0x0209A110
	ldr r1, [r5, #0x1e0]
	ldr r0, [r0]
	add r1, r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r1, [r5, #0x1e0]
	movs r0, r0, asr #3
	beq _0211B96C
	ldrb r0, [r5, #0x1e4]
	str r4, [r5, #0x1e0]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r5, #0x1e4]
	cmp r0, #7
	strhib r4, [r5, #0x1e4]
_0211B96C:
	ldr r6, [r5, #0x10c]
	cmp r6, #0
	beq _0211B9A8
	ldr r0, [r6, #0xc]
	ldrb r2, [r5, #0x1e4]
	add r3, r6, r0
	ldr r0, _0211B9C4 ; =0x0209F5C0
	add r3, r3, r2, lsl #3
	mov r1, r4
	mov r2, #0xe
	bl  FUN_ov16_020f6be8
	mov r0, r6
	mov r1, r4
	mov r2, #8
	bl  FUN_ov16_020f1138
_0211B9A8:
	ldr r4, _0211B9C4 ; =0x0209F5C0
	mov r0, r4
	bl  FUN_ov16_020f6274
	mov r0, r4
	mov r1, #0
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_0211B9C4: .word 0x0209F5C0
_0211B9C8: .word 0x0209A110
	arm_func_end FUN_ov61_0211b8bc

	arm_func_start FUN_ov61_0211b9cc
FUN_ov61_0211b9cc: ; 0x0211B9CC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x26c
	mov r6, r0
	ldr r0, [r6, #0x1c0]
	mov r4, #0
	cmp r0, #0
	bne _0211BA14
	ldr r0, _0211BB4C ; =0x0211F380
	add r1, r6, #0x1c0
	bl  FUN_ov16_020f316c
	mov r5, #1
_0211B9F8:
	mov r1, r5
	add r0, r6, #0x1c0
	bl  FUN_ov16_020f330c
	cmp r0, #0
	bne _0211BA14
	bl FUN_0206ee5c
	b _0211B9F8
_0211BA14:
	mov r5, #0
_0211BA18:
	ldr r0, [r6, #0x50]
	add r0, r0, r5, lsl #1
	ldrh r1, [r0, #0x58]
	cmp r1, #0
	beq _0211BB18
	ldr r0, [r6, #0x1c0]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211BB18
	add r1, sp, #0x1c
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r7, _0211BB50 ; =0x0209C2C4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r12, #1
	str r0, [sp, #4]
	str r12, [sp, #8]
	ldr r1, _0211BB54 ; =0x0211F398
	add r2, sp, #0x10
	mov r0, r7
	mov r3, #0
	str r12, [sp, #0xc]
	bl FUN_0202f294
_0211BA80:
	ldr r1, [sp, #0x10]
	mov r0, r7
	bl FUN_0202f57c
	cmp r0, #0
	beq _0211BA9C
	bl FUN_0206ee5c
	b _0211BA80
_0211BA9C:
	ldr r0, _0211BB58 ; =0x0211F5E0
	add r1, sp, #0x3c
	ldr r0, [r0, #0xc]
	mov r2, #0
	add r12, r0, r5, lsl #9
_0211BAB0:
	mov r3, r4
_0211BAB4:
	mov r7, r4
_0211BAB8:
	mov r0, r7, lsl #2
	ldr r0, [r1, r0, lsl #2]
	add r7, r7, #1
	cmp r7, #8
	str r0, [r12], #4
	blt _0211BAB8
	add r3, r3, #1
	cmp r3, #4
	add r1, r1, #4
	blt _0211BAB4
	add r2, r2, #1
	cmp r2, #4
	add r1, r1, #0x70
	blt _0211BAB0
	ldr r0, _0211BB58 ; =0x0211F5E0
	add r2, sp, #0x23c
	ldr r0, [r0, #0x14]
	mov r1, #0
	add r3, r0, r5, lsl #5
_0211BB04:
	ldr r0, [r2], #4
	add r1, r1, #1
	cmp r1, #8
	str r0, [r3], #4
	blt _0211BB04
_0211BB18:
	add r5, r5, #1
	cmp r5, #4
	blt _0211BA18
	ldr r4, _0211BB58 ; =0x0211F5E0
	ldr r0, _0211BB5C ; =0x00007FFF
	ldr r1, [r4, #0x14]
	mov r2, #0x20
	add r1, r1, #0x80
	bl MIi_CpuClear16
	mov r0, #1
	str r0, [r4, #8]
	add sp, sp, #0x26c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211BB4C: .word 0x0211F380
_0211BB50: .word 0x0209C2C4
_0211BB54: .word 0x0211F398
_0211BB58: .word 0x0211F5E0
_0211BB5C: .word 0x00007FFF
	arm_func_end FUN_ov61_0211b9cc

	arm_func_start FUN_ov61_0211bb60
FUN_ov61_0211bb60: ; 0x0211BB60
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, _0211BC14 ; =0x0209F5C0
	mov r1, #0
	mov r2, #2
	bl  FUN_ov16_020f66c0
	cmp r0, #0
	ldrne r0, [r4, #0x20c]
	ldr r2, _0211BC18 ; =0x0211F600
	cmpne r0, #0
	movne r3, #1
	moveq r3, #0
	mov r12, #0
	mov r1, #0xc0
	mov r0, #5
	mov r5, #0x1c
_0211BBA0:
	ldr r6, [r4, #0x50]
	mov lr, r0
	add r6, r6, r12, lsl #1
	ldrh r6, [r6, #0x58]
	cmp r6, #0
	ldrne r6, [r4, #0x1dc]
	movne r6, r6, lsl #3
	addne r6, r6, #0x3c
	addne r7, r3, r6
	moveq r7, r1
	ldr r6, [r4, #0x20c]
	and r7, r7, #0xff
	cmp r6, #0
	mul r6, r12, r5
	add r8, r6, #0x68
	mov r6, r12, lsl #4
	addeq lr, r12, #1
	orr r6, r6, #0x400
	add r12, r12, #1
	mov r8, r8, lsl #0x17
	orr r7, r7, #0x80000000
	orr r7, r7, r8, lsr #7
	mov r8, r2
	str r7, [r2], #8
	orr r6, r6, lr, lsl #12
	strh r6, [r8, #4]
	cmp r12, #4
	blt _0211BBA0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BC14: .word 0x0209F5C0
_0211BC18: .word 0x0211F600
	arm_func_end FUN_ov61_0211bb60

	arm_func_start FUN_ov61_0211bc1c
FUN_ov61_0211bc1c: ; 0x0211BC1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r5, r1
	mov r10, r0
	cmp r5, #0x1a
	mvneq r0, #1
	ldrne r0, [r10, #0x1dc]
	mov r4, #0
	movne r0, r0, lsl #0x19
	movne r0, r0, asr #0x18
	mov r2, r0, lsl #0x18
	mov r0, r4
	mov r1, r4
	mov r7, r2, asr #0x18
	bl FUN_ov61_02119f00
	mov r0, #0xc
	mla r0, r5, r0, r10
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0211BCC0
	add r1, r7, #8
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	mov r1, #0xa
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r1, [r0, #0xc]
	mov r4, #8
	bic r1, r1, #1
	add r1, r0, r1
	str r1, [sp, #0x10]
	mov r1, #9
	mov r2, #3
	mov r3, #4
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
	mov r0, #1
	strb r0, [r10, #0x34]
_0211BCC0:
	ldr r9, [r10, #0xe8]
	cmp r9, #0
	beq _0211BD54
	add r8, r7, #0xe
	mov r0, r8, lsl #0x18
	ldr r1, [r9, #0xc]
	mov r0, r0, asr #0x18
	mov r11, #3
	str r0, [sp]
	mov r0, #6
	stmib sp, {r0, r11}
	mov r5, #0
	bic r1, r1, #1
	add r6, r9, r1
	str r5, [sp, #0xc]
	mov r0, r9
	mov r2, r11
	str r6, [sp, #0x10]
	sub r4, r5, #1
	mov r1, #0xa
	mov r3, #7
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp]
	mov r0, #6
	stmib sp, {r0, r11}
	str r5, [sp, #0xc]
	add r0, r6, #0x24
	str r0, [sp, #0x10]
	mov r0, r9
	mov r2, r11
	mov r1, #0xb
	mov r3, #0x13
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211BD54:
	ldr r2, [r10, #0xf4]
	cmp r2, #0
	beq _0211BE20
	ldr r1, [r2, #0xc]
	add r0, r7, #0xe
	mov r6, #3
	mov r5, #0
	bic r1, r1, #1
	add r9, r2, r1
	mov r0, r0, lsl #0x18
	mov r8, r0, asr #0x18
	mov r3, #7
	mov r7, #6
	mov r4, #0x30
	mov r11, #0x18
	mov r1, r6
	add r2, sp, #0x18
	mov r0, #0xc
	strh r3, [sp, #0x18]
	strh r8, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r11, [sp, #0x26]
	strb r5, [sp, #0x28]
	str r9, [sp, #0x2c]
	bl FUN_ov61_02119f90
	add r0, r9, #0x24
	mov r1, #0x13
	strh r1, [sp, #0x18]
	str r0, [sp, #0x2c]
	strh r8, [sp, #0x1a]
	strh r7, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r11, [sp, #0x26]
	strb r5, [sp, #0x28]
	str r6, [sp]
	add r0, sp, #0x18
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _0211BE88 ; =0x0209F5C0
	mov r1, r5
	mov r2, r5
	mov r3, #0xd
	str r5, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BE20:
	ldr r6, _0211BE8C ; =0x0209A070
	mov r7, #0xa
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r3, r7
	mov r2, #0xc
	str r7, [sp]
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x36]
	mov r4, #0xd
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0xb
	str r7, [sp]
	bl  FUN_ov16_020f6c8c
	mov r3, r0
	mov r0, r6
	and r1, r3, #0xff
	mov r2, #1
	strb r3, [r10, #0x37]
	str r4, [r10, #0x28]
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE88: .word 0x0209F5C0
_0211BE8C: .word 0x0209A070
	arm_func_end FUN_ov61_0211bc1c

	arm_func_start FUN_ov61_0211be90
FUN_ov61_0211be90: ; 0x0211BE90
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r1, #1
	ldr r0, _0211BED0 ; =0x02099EB4
	str r3, [sp, #0xc]
	ldr r0, [r0]
	mov r2, r1
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0211BED0: .word 0x02099EB4
	arm_func_end FUN_ov61_0211be90

	arm_func_start FUN_ov61_0211bed4
FUN_ov61_0211bed4: ; 0x0211BED4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r0
	mov r0, #0xc
	mla r0, r1, r0, r6
	ldr r1, [r6, #0x1dc]
	ldr r4, [r0, #0x58]
	mov r5, r1, lsl #1
	cmp r4, #0
	beq _0211BF70
	mov r2, #9
	add r0, r5, #8
	mov r0, r0, lsl #0x18
	str r2, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r7, #0
	mov r1, #4
	str r1, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r1, [r4, #0xc]
	ldr r0, _0211C038 ; =0x0209F5C0
	add r12, r4, r1
	mov r1, r7
	mov r2, r7
	mov r3, r7
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r4
	mov r1, r7
	mov r2, #8
	bl  FUN_ov16_020f1138
	mov r0, #1
	strb r0, [r6, #0x34]
_0211BF70:
	ldr r2, [r6, #0xf4]
	cmp r2, #0
	beq _0211BFF0
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r2, r0
	add r12, r5, #0xd
	add r0, r0, #0x48
	mov lr, #0xd
	mov r5, #6
	mov r4, #3
	mov r3, #0x30
	mov r2, #0x18
	strh r3, [sp, #0x2c]
	strh r2, [sp, #0x2e]
	str r0, [sp, #0x34]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r5, [sp, #0x24]
	strh r4, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	add r0, sp, #0x20
	str r4, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _0211C038 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xe
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_0211BFF0:
	ldr r5, _0211C03C ; =0x0209A070
	mov r1, #0
	mov r4, #0xe
	mov r12, #0xa
	mov r0, r5
	mov r2, r4
	mov r3, r1
	str r12, [sp]
	bl  FUN_ov16_020f6c8c
	mov r3, r0
	mov r0, r5
	and r1, r3, #0xff
	mov r2, #1
	strb r3, [r6, #0x38]
	str r4, [r6, #0x28]
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C038: .word 0x0209F5C0
_0211C03C: .word 0x0209A070
	arm_func_end FUN_ov61_0211bed4

	arm_func_start FUN_ov61_0211c040
FUN_ov61_0211c040: ; 0x0211C040
	ldr r12, _0211C048 ; =FUN_ov61_0211c04c
	bx r12
_0211C048: .word FUN_ov61_0211c04c
	arm_func_end FUN_ov61_0211c040

	arm_func_start FUN_ov61_0211c04c
FUN_ov61_0211c04c: ; 0x0211C04C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x38
	mov r8, r0
	mov r0, #0xc
	mla r0, r1, r0, r8
	ldr r1, [r8, #0x1dc]
	ldr r6, [r0, #0x58]
	mov r7, r1, lsl #1
	cmp r6, #0
	beq _0211C0E4
	mov r2, #9
	add r0, r7, #8
	mov r0, r0, lsl #0x18
	str r2, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r4, #0
	mov r5, #1
	str r5, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r6, #0xc]
	ldr r0, _0211C17C ; =0x0209F5C0
	add r12, r6, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r6
	mov r1, r4
	mov r2, #8
	bl  FUN_ov16_020f1138
	strb r5, [r8, #0x34]
_0211C0E4:
	ldr r4, [r8, #0x10c]
	cmp r4, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r4, #0xc]
	mov r5, #0
	mov r1, #2
	mov r0, #0x10
	add r6, r4, r2
	add r2, r7, #9
	mov r3, #4
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	strh r5, [sp, #0x28]
	strh r5, [sp, #0x2a]
	strh r0, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strb r5, [sp, #0x30]
	str r6, [sp, #0x34]
	mov r1, #3
	str r1, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _0211C17C ; =0x0209F5C0
	mov r1, r5
	mov r2, r5
	mov r3, #0xe
	str r5, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	mov r0, r4
	mov r1, r5
	mov r2, #8
	bl  FUN_ov16_020f1138
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C17C: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211c04c

	arm_func_start FUN_ov61_0211c180
FUN_ov61_0211c180: ; 0x0211C180
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r0
	ldr r0, [r6, #0x1dc]
	mov r4, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	mov r2, r0, lsl #0x19
	mov r5, r1
	mov r0, r4
	mov r1, r4
	mov r7, r2, asr #0x18
	bl FUN_ov61_02119f00
	mov r0, #0xc
	mla r0, r5, r0, r6
	ldr r0, [r0, #0x58]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r7, #8
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	mov r5, #8
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0, #0xc]
	mov r1, #9
	bic r2, r2, #1
	add r2, r0, r2
	str r2, [sp, #0x10]
	mov r2, #3
	mov r3, #4
	str r5, [sp, #0x14]
	bl FUN_ov61_02119f14
	mov r0, #1
	strb r0, [r6, #0x34]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov61_0211c180

	arm_func_start FUN_ov61_0211c224
FUN_ov61_0211c224: ; 0x0211C224
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r1, [r5, #0x1dc]
	mov r0, #0
	mov r2, r1, lsl #0x18
	mov r1, r0
	mov r4, r2, asr #0x18
	bl FUN_ov61_02119f00
	ldr r0, [r5, #0xc]
	mov r1, #0x10
	cmp r0, #0xa
	movne r1, #0x11
	mov r0, #0xc
	mla r0, r1, r0, r5
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _0211C2C4
	add r1, r4, #0xa
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp]
	mov r1, #0x1a
	str r1, [sp, #4]
	mov r1, #0xa
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r1, [r0, #0xc]
	mov r2, #3
	bic r1, r1, #1
	add r1, r0, r1
	mov r3, r2
	str r1, [sp, #0x10]
	mov r6, #8
	mov r1, #9
	str r6, [sp, #0x14]
	bl FUN_ov61_02119f14
	mov r0, #1
	strb r0, [r5, #0x34]
_0211C2C4:
	ldr r1, [r5, #0x100]
	cmp r1, #0
	beq _0211C32C
	ldr r0, [r1, #0xc]
	mov r6, #0
	bic r0, r0, #1
	add r8, r1, r0
	add lr, r4, #0x11
	mov r7, #0xd
	mov r12, #6
	mov r1, #3
	mov r4, #0x30
	mov r3, #0x18
	add r2, sp, #0x18
	mov r0, #0xe
	strh r7, [sp, #0x18]
	strh lr, [sp, #0x1a]
	strh r12, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r3, [sp, #0x26]
	strb r6, [sp, #0x28]
	str r8, [sp, #0x2c]
	bl FUN_ov61_02119f90
_0211C32C:
	ldr r6, _0211C374 ; =0x0209A070
	mov r1, #0
	mov r4, #0xe
	mov r12, #0xa
	mov r0, r6
	mov r2, r4
	mov r3, r1
	str r12, [sp]
	bl  FUN_ov16_020f6c8c
	mov r3, r0
	mov r0, r6
	and r1, r3, #0xff
	mov r2, #1
	strb r3, [r5, #0x38]
	str r4, [r5, #0x28]
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C374: .word 0x0209A070
	arm_func_end FUN_ov61_0211c224

	arm_func_start FUN_ov61_0211c378
FUN_ov61_0211c378: ; 0x0211C378
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r3, [r0, #0x1b4]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #0x14
	mov r1, #0
	stmia sp, {r0, r1}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _0211C3DC ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0211C3DC: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211c378

	arm_func_start FUN_ov61_0211c3e0
FUN_ov61_0211c3e0: ; 0x0211C3E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	ldr r6, [r7, #0x7c]
	cmp r6, #0
	beq _0211C458
	mov r5, #1
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x18
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r6, #0xc]
	ldr r0, _0211C46C ; =0x0209F5C0
	add r12, r6, r1
	mov r1, r4
	mov r3, r4
	mov r2, #2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl  FUN_ov16_020f1138
	strb r5, [r7, #0x34]
_0211C458:
	mov r0, r7
	mov r1, #0x1a
	bl FUN_ov61_0211bc1c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C46C: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211c3e0

	arm_func_start FUN_ov61_0211c470
FUN_ov61_0211c470: ; 0x0211C470
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	movs r9, r1
	mov r10, r0
	mov r8, r2
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r0, r4
	mov r2, #0x3800
	bl MIi_CpuClearFast
	cmp r8, #0
	ldrne r0, [r8, #8]
	cmpne r0, #0
	beq _0211C674
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	stmib sp, {r0, r9}
	mov r0, #0xe0
	str r0, [sp, #0xc]
	mov r0, #0x80
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, _0211C688 ; =0x02099F50
	str r4, [sp, #0x18]
	ldr r0, [r0]
	mov r7, #0xa
	ldr r5, [r0]
	mov r1, r4
	ldr r5, [r5, #8]
	mov r2, r7
	add r3, r8, #0x1c
	blx r5
	ldrsb r6, [r8, #0x14]
	add r5, sp, #0x1c
	ldr r1, _0211C68C ; =0x0211F3B0
	cmp r6, #0xa
	movgt r6, r7
	cmp r6, #1
	movlt r6, #1
	mov r0, r5
	bl FUN_02023c40
	cmp r6, #0xa
	blt _0211C59C
	cmp r6, #0x14
	blt _0211C56C
	ldr r4, _0211C690 ; =0x66666667
	mov r0, r6, lsr #0x1f
	smull r1, r2, r4, r6
	ldr r1, _0211C694 ; =0x0211EF00
	add r2, r0, r2, asr #2
	ldr r1, [r1, r2, lsl #2]
	mov r0, r5
	bl STD_ConcatenateString
	mov r0, r6, lsr #0x1f
	smull r1, r3, r4, r6
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	subs r3, r6, r0
	bne _0211C57C
	b _0211C56C
_0211C56C:
	ldr r1, _0211C698 ; =0x0211EEE8
	mov r0, r5
	ldr r1, [r1, #0x18]
	bl STD_ConcatenateString
_0211C57C:
	mov r3, r6
	ldr r2, _0211C690 ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r6, r2, r6
	add r6, r0, r6, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r3, r0
_0211C59C:
	cmp r6, #0
	ble _0211C5B4
	ldr r1, _0211C694 ; =0x0211EF00
	add r0, sp, #0x1c
	ldr r1, [r1, r6, lsl #2]
	bl STD_ConcatenateString
_0211C5B4:
	ldr r1, _0211C69C ; =0x0211F3B4
	add r0, sp, #0x1c
	bl STD_ConcatenateString
	mov r7, #3
	str r7, [sp]
	mov r6, #0
	stmib sp, {r6, r9}
	mov r5, #0xe0
	str r5, [sp, #0xc]
	mov r4, #0x80
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r11, _0211C688 ; =0x02099F50
	str r6, [sp, #0x18]
	ldr r0, [r11]
	add r3, sp, #0x1c
	ldr r12, [r0]
	mov r1, #0x10
	ldr r12, [r12, #8]
	mov r2, #0x42
	blx r12
	add r3, r8, #0x34
	str r7, [sp]
	mov r8, #1
	stmib sp, {r8, r9}
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [r11]
	mov r1, #0x50
	ldr r12, [r0]
	mov r2, #0x5a
	ldr r12, [r12, #8]
	blx r12
	stmia sp, {r7, r8, r9}
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r6, [sp, #0x14]
	add r0, r10, #0xe6
	str r6, [sp, #0x18]
	add r3, r0, #0x100
	ldr r0, [r11]
	mov r1, #0x50
	ldr r4, [r0]
	mov r2, #0x6a
	ldr r4, [r4, #8]
	blx r4
_0211C674:
	mov r0, r9
	mov r1, #0x3800
	bl DC_FlushRange
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C688: .word 0x02099F50
_0211C68C: .word 0x0211F3B0
_0211C690: .word 0x66666667
_0211C694: .word 0x0211EF00
_0211C698: .word 0x0211EEE8
_0211C69C: .word 0x0211F3B4
	arm_func_end FUN_ov61_0211c470

	arm_func_start FUN_ov61_0211c6a0
FUN_ov61_0211c6a0: ; 0x0211C6A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x50]
	bl FUN_ov61_0211c470
	mov r0, #1
	strb r0, [r4, #0x4c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211c6a0

	arm_func_start FUN_ov61_0211c6c0
FUN_ov61_0211c6c0: ; 0x0211C6C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r7, [sp, #0x4c]
	ldr r4, [sp, #0x50]
	str r2, [sp, #0x20]
	cmp r7, r4
	ldr r0, [sp, #0x54]
	movgt r7, r4
	ldrb r11, [sp, #0x5c]
	ldrb r4, [sp, #0x58]
	ldr r8, [sp, #0x48]
	ldr r6, [sp, #0x60]
	ldr r5, [sp, #0x64]
	mov r10, r1
	mov r9, r3
	str r0, [sp, #0x54]
_0211C700:
	stmia sp, {r4, r11}
	str r10, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r1, _0211C78C ; =0x66666667
	str r0, [sp, #0xc]
	smull r2, r0, r1, r7
	mov r1, r7, lsr #0x1f
	add r0, r1, r0, asr #2
	mov r1, #0xa
	smull r0, r2, r1, r0
	sub r0, r7, r0
	mul r1, r0, r9
	mul r0, r8, r1
	str r9, [sp, #0x10]
	str r8, [sp, #0x14]
	str r6, [sp, #0x18]
	add r0, r5, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _0211C78C ; =0x66666667
	mov r2, r7
	smull r1, r7, r0, r2
	mov r0, r2, lsr #0x1f
	add r7, r0, r7, asr #2
	mov r1, #0
	ldr r0, _0211C790 ; =0x0209F5C0
	ldr r2, [sp, #0x54]
	mov r3, r1
	bl  FUN_ov16_020f5da0
	sub r0, r10, r9
	mov r0, r0, lsl #0x18
	cmp r7, #0
	mov r10, r0, asr #0x18
	bgt _0211C700
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C78C: .word 0x66666667
_0211C790: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211c6c0

	arm_func_start FUN_ov61_0211c794
FUN_ov61_0211c794: ; 0x0211C794
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r4, [sp, #0x64]
	str r0, [sp, #0x20]
	str r4, [sp, #0x64]
	ldrb r4, [r4, #0x15]
	mov r10, r1
	mov r9, r2
	mov r11, r3
	cmp r4, #0x3c
	ldr r8, [sp, #0x50]
	ldr r7, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r5, [sp, #0x5c]
	bhs _0211C814
	mov r1, #2
	stmia sp, {r1, r4}
	mov r1, #0x63
	str r1, [sp, #8]
	str r11, [sp, #0xc]
	str r8, [sp, #0x10]
	add r1, r10, #0xc
	add r2, r9, #3
	str r7, [sp, #0x14]
	mov r1, r1, lsl #0x18
	mov r2, r2, lsl #0x18
	str r6, [sp, #0x18]
	mov r1, r1, asr #0x18
	mov r2, r2, asr #0x18
	mov r3, #1
	str r5, [sp, #0x1c]
	bl FUN_ov61_0211c6c0
_0211C814:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #0x64]
	add r1, r10, #0x17
	ldrb r2, [r0, #0x17]
	mov r1, r1, lsl #0x18
	add r0, r9, #3
	str r2, [sp, #4]
	mov r2, #0x64
	str r2, [sp, #8]
	mov r2, r0, lsl #0x18
	str r11, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, r1, asr #0x18
	mov r2, r2, asr #0x18
	mov r3, #1
	str r5, [sp, #0x1c]
	bl FUN_ov61_0211c6c0
	ldr r0, [sp, #0x64]
	ldr r1, _0211C9AC ; =0x91A2B3C5
	ldr r2, [r0, #0x10]
	mov r0, #2
	str r0, [sp]
	umull r0, r4, r2, r1
	mov r4, r4, lsr #0xb
	ldr r0, _0211C9B0 ; =0x88888889
	mov r1, r4, lsr #0x1f
	smull r2, r3, r0, r4
	add r3, r3, r4
	add r3, r1, r3, asr #5
	mov r0, #1
	str r3, [sp, #4]
	rsb r0, r0, #0x3e8
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r8, [sp, #0x10]
	add r1, r10, #0x11
	add r2, r9, #5
	str r0, [sp, #0x24]
	str r7, [sp, #0x14]
	mov r1, r1, lsl #0x18
	mov r2, r2, lsl #0x18
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, r1, asr #0x18
	mov r2, r2, asr #0x18
	mov r3, #1
	str r5, [sp, #0x1c]
	bl FUN_ov61_0211c6c0
	ldr r1, _0211C9B0 ; =0x88888889
	mov r3, #1
	smull r2, r0, r1, r4
	mov r1, #2
	str r1, [sp]
	add r0, r0, r4
	mov r1, r4, lsr #0x1f
	add r0, r1, r0, asr #5
	mov r2, #0x3c
	smull r0, r1, r2, r0
	rsb r0, r0, r4
	str r0, [sp, #4]
	mov r0, #0x63
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r8, [sp, #0x10]
	add r1, r10, #0x17
	add r2, r9, #5
	str r7, [sp, #0x14]
	mov r1, r1, lsl #0x18
	mov r2, r2, lsl #0x18
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, r1, asr #0x18
	mov r2, r2, asr #0x18
	str r5, [sp, #0x1c]
	bl FUN_ov61_0211c6c0
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #0x64]
	add r2, r9, #0xd
	ldr r1, [r0, #0x48]
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x20]
	str r1, [sp, #8]
	str r11, [sp, #0xc]
	str r8, [sp, #0x10]
	add r1, r10, #4
	str r7, [sp, #0x14]
	mov r1, r1, lsl #0x18
	str r6, [sp, #0x18]
	mov r1, r1, asr #0x18
	mov r2, r2, asr #0x18
	mov r3, #1
	str r5, [sp, #0x1c]
	bl FUN_ov61_0211c6c0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9AC: .word 0x91A2B3C5
_0211C9B0: .word 0x88888889
	arm_func_end FUN_ov61_0211c794

	arm_func_start FUN_ov61_0211c9b4
FUN_ov61_0211c9b4: ; 0x0211C9B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r6, [r10, #0xac]
	cmp r6, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r6, #0xc]
	mov r4, #0
	mov r5, #1
	ldr r2, [r10, #0x1dc]
	add r7, r6, r3
	mov r0, r4
	mov r1, r5
	add r6, r2, #1
	bl FUN_ov61_02119f00
	ldr r3, [r10, #0x3c]
	cmp r3, #0
	ldrne r0, [r10, #0x40]
	cmpne r0, #0
	movne r4, r5
	cmp r4, #0
	beq _0211CA58
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp]
	ldrh r1, [r10, #0x48]
	mov r0, #0
	mov r2, r0
	and r1, r1, #0xff
	str r1, [sp, #4]
	ldrh r5, [r10, #0x4a]
	sub r4, r0, #1
	mov r1, #0x14
	and r5, r5, #0xff
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r3, #2
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211CA58:
	ldr r8, [r10, #0x50]
	cmp r8, #0
	ldrne r0, [r8, #8]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [r8, #0x14]
	cmp r0, #0xa
	ble _0211CB1C
	ldr r0, [r10, #0xb8]
	cmp r0, #0
	beq _0211CB1C
	ldr r1, [r10, #0x1dc]
	ldr r2, [r0, #0xc]
	add r1, r1, #9
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp]
	mov r11, #3
	bic r2, r2, #1
	mov r5, #0xc
	add r9, r0, r2
	mov r0, #0
	str r11, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r9, [sp, #0x10]
	sub r4, r5, #0xd
	mov r2, r0
	str r4, [sp, #0x14]
	mov r1, #0x10
	mov r3, #9
	bl FUN_ov61_02119f14
	ldr r2, [r10, #0x1dc]
	mov r1, #2
	add r2, r2, #9
	mov r2, r2, lsl #0x18
	mov r2, r2, asr #0x18
	stmia sp, {r2, r11}
	mov r2, r1
	str r2, [sp, #8]
	add r9, r9, #0xc
	str r5, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r0, #0
	mov r3, #9
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211CB1C:
	ldrb r0, [r8, #0x15]
	cmp r0, #0x3c
	blo _0211CB88
	ldr r0, [r10, #0x1a8]
	cmp r0, #0
	beq _0211CB88
	ldr r1, [r10, #0x1dc]
	mov r2, #0xe
	add r1, r1, #4
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r0, #0xc]
	sub r4, r2, #0xf
	bic r1, r1, #1
	add r1, r0, r1
	str r1, [sp, #0x10]
	mov r1, #0x13
	mov r2, #0
	mov r3, #0xd
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211CB88:
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, r10
	mov r2, r6
	mov r1, #2
	mov r3, #1
	str r8, [sp, #0x14]
	bl FUN_ov61_0211c794
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov61_0211c9b4

	arm_func_start FUN_ov61_0211cbcc
FUN_ov61_0211cbcc: ; 0x0211CBCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	ldr r0, [r10, #0x1dc]
	ldr r1, _0211D054 ; =0x0209A454
	mov r0, r0, lsl #0x18
	mov r2, r0, asr #0x18
	add r0, r2, #1
	add r3, r2, #0x11
	ldr r2, [r1, #0x24]
	mov r0, r0, lsl #0x18
	mov r1, r3, lsl #0x18
	mov r8, r0, asr #0x18
	ldr r0, [r10, #0x24]
	cmp r2, #6
	mov r9, r1, asr #0x18
	mov r11, #0
	moveq r1, #1
	movne r1, r11
	mov r6, #0x1c
	mov r7, #2
	cmp r0, #0
	bne _0211CC48
	str r7, [r10, #0x24]
	str r7, [r10, #0x28]
	cmp r1, #0
	beq _0211CC48
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
_0211CC48:
	ldrb r0, [r10, #0x1d8]
	mov r4, #1
	mov r1, #2
	cmp r0, #1
	mov r0, r11
	movne r4, #2
	bl FUN_ov61_02119f00
	mov r0, #0xc
	mul r1, r4, r0
	add r0, r10, #0x58
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0211CCC0
	str r11, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #0x18
	str r1, [sp, #8]
	str r11, [sp, #0xc]
	ldr r1, [r0, #0xc]
	mov r4, #1
	bic r1, r1, #1
	add r1, r0, r1
	str r1, [sp, #0x10]
	mov r1, r4
	mov r2, r11
	mov r3, r11
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
	strb r4, [r10, #0x34]
_0211CCC0:
	ldr r1, [r10, #0x88]
	mov r4, #1
	cmp r1, #0
	beq _0211CD3C
	ldr r0, [r1, #0xc]
	mov r5, #0x10
	bic r0, r0, #1
	add r3, r1, r0
	add r2, sp, #0x18
	mov r0, r7
	mov r1, r7
	str r3, [sp, #0x2c]
	strh r7, [sp, #0x18]
	strh r8, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r11, [sp, #0x22]
	strh r11, [sp, #0x24]
	strh r11, [sp, #0x26]
	strb r11, [sp, #0x28]
	bl FUN_ov61_02119f90
	ldr r0, [r10, #0xc]
	cmp r0, #1
	bne _0211CD3C
	mov r0, r7
	mov r1, r11
	mov r2, r11
	mov r3, r6
	str r5, [sp]
	bl FUN_ov61_02119fd4
_0211CD3C:
	ldrb r0, [r10, #0x1d8]
	cmp r0, #1
	bne _0211CE24
	ldr r1, [r10, #0xa0]
	cmp r1, #0
	beq _0211CDC4
	ldr r0, [r1, #0xc]
	mov r5, #4
	bic r0, r0, #1
	add r3, r1, r0
	mov r1, #2
	mov r0, #0x11
	strh r0, [sp, #0x1a]
	add r2, sp, #0x18
	str r3, [sp, #0x2c]
	mov r0, r5
	strh r1, [sp, #0x18]
	strh r6, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r11, [sp, #0x22]
	strh r11, [sp, #0x24]
	strh r11, [sp, #0x26]
	strb r11, [sp, #0x28]
	bl FUN_ov61_02119f90
	ldr r0, [r10, #0xc]
	cmp r0, #1
	bne _0211CDC4
	mov r0, r5
	mov r1, r11
	mov r2, r11
	mov r3, r6
	str r5, [sp]
	bl FUN_ov61_02119fd4
_0211CDC4:
	ldr r5, [r10, #0x94]
	cmp r5, #0
	beq _0211CE24
	mov r0, #0x11
	stmia sp, {r0, r6}
	mov r0, #4
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	ldr r0, [r5, #0xc]
	mov r2, r4
	bic r0, r0, #1
	add r1, r5, r0
	str r1, [sp, #0x10]
	sub r7, r11, #1
	mov r0, r5
	mov r1, #3
	mov r3, #2
	str r7, [sp, #0x14]
	bl FUN_ov61_02119f14
	mov r0, r5
	mov r1, r11
	mov r2, r4
	bl  FUN_ov16_020f1138
	strb r4, [r10, #0x34]
_0211CE24:
	mov r0, r10
	bl FUN_ov61_0211c9b4
	mov r0, r11
	mov r1, r11
	bl FUN_ov61_02119f00
	ldr r0, [r10, #0xd0]
	cmp r0, #0
	beq _0211CE80
	str r8, [sp]
	mov r3, #0x10
	str r6, [sp, #4]
	str r3, [sp, #8]
	str r11, [sp, #0xc]
	ldr r1, [r0, #0xc]
	sub r4, r3, #0x11
	bic r1, r1, #1
	add r1, r0, r1
	str r1, [sp, #0x10]
	mov r2, r11
	mov r1, #5
	mov r3, #2
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211CE80:
	ldr r0, [r10, #0xdc]
	cmp r0, #0
	beq _0211CEC8
	str r9, [sp]
	str r6, [sp, #4]
	mov r1, #4
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r0, #0xc]
	sub r4, r2, #1
	bic r1, r1, #1
	add r1, r0, r1
	str r1, [sp, #0x10]
	mov r1, #6
	mov r3, #2
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211CEC8:
	ldr r0, _0211D058 ; =0x0209F5C0
	mov r1, r11
	mov r2, #6
	bl  FUN_ov16_020f6084
	mov r0, r11
	mov r1, r11
	bl FUN_ov61_02119f00
	ldr r0, _0211D054 ; =0x0209A454
	ldr r0, [r0, #0x24]
	cmp r0, #4
	cmpne r0, #6
	cmpne r0, #5
	beq _0211CFE0
	ldr r0, [r10, #0xc]
	cmp r0, #1
	beq _0211CF14
	sub r0, r0, #0xd
	cmp r0, #1
	bhi _0211CFE0
_0211CF14:
	ldr r8, [r10, #0xc4]
	cmp r8, #0
	beq _0211CFE0
	ldr r0, [r8, #0xc]
	mov r9, #0x19
	bic r0, r0, #1
	add r7, r8, r0
	mov r3, #0x15
	mov r6, #6
	mov r5, #3
	mov r4, #7
	add r2, sp, #0x18
	mov r0, r4
	mov r1, r11
	strh r9, [sp, #0x18]
	strh r3, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r11, [sp, #0x22]
	strh r11, [sp, #0x24]
	strh r11, [sp, #0x26]
	strb r11, [sp, #0x28]
	str r7, [sp, #0x2c]
	bl FUN_ov61_02119f90
	ldr r0, [r10, #0xc]
	cmp r0, #1
	bne _0211CF9C
	mov r0, r4
	mov r1, r11
	mov r2, r11
	mov r3, r6
	str r5, [sp]
	bl FUN_ov61_02119fd4
_0211CF9C:
	mov r0, #0x15
	str r0, [sp]
	mov r0, #6
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r1, r7, #0x24
	mov r0, r8
	str r1, [sp, #0x10]
	sub r4, r2, #1
	mov r1, #8
	mov r2, #2
	mov r3, #0x19
	str r4, [sp, #0x14]
	bl FUN_ov61_02119f14
_0211CFE0:
	ldr r4, _0211D05C ; =0x0209A070
	mov r1, r11
	mov r0, r4
	mov r3, r11
	str r11, [sp]
	mov r2, #2
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x39]
	mov r0, r4
	mov r1, r11
	mov r3, r11
	str r11, [sp]
	mov r2, #4
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x3b]
	mov r1, #0xa
	str r1, [sp]
	mov r0, r4
	mov r3, r11
	mov r1, #7
	mov r2, #8
	bl  FUN_ov16_020f6c8c
	strb r0, [r10, #0x3a]
	ldrb r1, [r10, #0x39]
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D054: .word 0x0209A454
_0211D058: .word 0x0209F5C0
_0211D05C: .word 0x0209A070
	arm_func_end FUN_ov61_0211cbcc

	arm_func_start FUN_ov61_0211d060
FUN_ov61_0211d060: ; 0x0211D060
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _0211D1AC ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	ldr r0, _0211D1B0 ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	ldr r0, _0211D1B4 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r5, #0xc]
	str r4, [r5, #0x28]
	cmp r0, #0xc
	mov r0, r5
	bne _0211D0B0
	bl FUN_ov61_0211c3e0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D0B0:
	bl FUN_ov61_0211cbcc
	ldrb r0, [r5, #0x1d9]
	cmp r0, #0
	beq _0211D0C8
	mov r0, r5
	bl FUN_ov61_0211c378
_0211D0C8:
	ldr r0, [r5, #0xc]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211D0D8: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	b _0211D114 ; case 2
	b _0211D124 ; case 3
	b _0211D134 ; case 4
	b _0211D164 ; case 5
	b _0211D174 ; case 6
	b _0211D144 ; case 7
	b _0211D154 ; case 8
	b _0211D184 ; case 9
	b _0211D194 ; case 10
	b _0211D194 ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, pc} ; case 13
	b _0211D1A0 ; case 14
_0211D114:
	mov r0, r5
	mov r1, #0x12
	bl FUN_ov61_0211bc1c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D124:
	mov r0, r5
	mov r1, #0x13
	bl FUN_ov61_0211c04c
	ldmfd sp!, {r3, r4, r5, pc}
_0211D134:
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov61_0211bed4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D144:
	mov r0, r5
	mov r1, #0x17
	bl FUN_ov61_0211c040
	ldmfd sp!, {r3, r4, r5, pc}
_0211D154:
	mov r0, r5
	mov r1, #0x18
	bl FUN_ov61_0211bed4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D164:
	mov r0, r5
	mov r1, #0x15
	bl FUN_ov61_0211c180
	ldmfd sp!, {r3, r4, r5, pc}
_0211D174:
	mov r0, r5
	mov r1, #0x16
	bl FUN_ov61_0211c180
	ldmfd sp!, {r3, r4, r5, pc}
_0211D184:
	mov r0, r5
	mov r1, #0x19
	bl FUN_ov61_0211c180
	ldmfd sp!, {r3, r4, r5, pc}
_0211D194:
	mov r0, r5
	bl FUN_ov61_0211c224
	ldmfd sp!, {r3, r4, r5, pc}
_0211D1A0:
	mov r0, r5
	bl FUN_ov61_0211be90
	ldmfd sp!, {r3, r4, r5, pc}
_0211D1AC: .word 0x0209F5C0
_0211D1B0: .word 0x0209A070
_0211D1B4: .word 0x02099EB4
	arm_func_end FUN_ov61_0211d060

	arm_func_start FUN_ov61_0211d1b8
FUN_ov61_0211d1b8: ; 0x0211D1B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, _0211D45C ; =0x0209A250
	mov r6, r0
	mov r0, r8
	mov r1, #0xc000
	bl FUN_0202de44
	mov r3, r0
	ldr r0, _0211D460 ; =FUN_ov61_0211d9e0
	mov r1, r6
	add r2, r3, #0xc000
	str r3, [r6, #0x208]
	bl FUN_0206efa0
	str r0, [r6, #0x204]
	ldr r0, _0211D464 ; =FUN_ov61_0211d9f4
	bl  FUN_ov16_020f5248
	mov r4, #0x800
	mov r0, r8
	mov r1, r4
	bl FUN_0202de44
	mov r2, r4
	ldr r7, _0211D468 ; =0x0211F5E0
	mov r1, r0
	mov r4, #0
	mov r0, r4
	str r1, [r7, #0xc]
	bl MIi_CpuClearFast
	mov r0, r8
	mov r1, #0xa0
	bl FUN_0202de44
	str r0, [r7, #0x14]
	mov r5, #0xc0
	ldr r0, _0211D46C ; =0x0211F600
	mov r1, r5
	mov r2, #0x20
	bl MI_CpuFill8
	add r1, r5, #0xff00
	mov r5, #1
	mov r0, r8
	mov r2, #0x10
	mov r3, r5
	bl FUN_0202de58
	str r0, [r6, #0x200]
	str r4, [r6, #0x20c]
	str r5, [r7, #8]
	mov r7, #0xc
	add r0, r6, #0x1c0
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, _0211D470 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	mov r0, r5
	mov r1, r4
	mov r2, r5
	bl FUN_020044e0
	ldr r3, _0211D474 ; =0x04000008
	ldr r0, _0211D478 ; =0x0209A454
	ldrh r2, [r3]
	sub r1, r7, #0xd
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r3]
	str r4, [r6, #8]
	str r5, [r6, #0xc]
	strb r4, [r6, #0x10]
	strb r4, [r6, #0x11]
	str r4, [r6, #0x20]
	str r4, [r6, #0x1c]
	str r4, [r6, #0x24]
	str r4, [r6, #0x28]
	strb r4, [r6, #0x2c]
	strb r4, [r6, #0x34]
	strb r4, [r6, #0x35]
	str r4, [r6, #0x1e0]
	strb r4, [r6, #0x1e4]
	str r1, [r6, #0x14]
	str r1, [r6, #0x18]
	ldr r1, [r0, #0x24]
	mov r2, #1
	cmp r1, #1
	movne r5, r4
	strb r5, [r6, #0x2d]
	ldr r1, [r0, #0x24]
	cmp r1, #5
	moveq r1, #1
	movne r1, #0
	strb r1, [r6, #0x1e5]
	ldr r1, [r0, #0x24]
	cmp r1, #3
	cmpne r1, #6
	movne r2, #0
	strb r2, [r6, #0x1d8]
	mov r2, #1
	ldr r1, [r0, #0x24]
	mov r5, r2
	cmp r1, #0
	cmpne r1, #1
	movne r5, #0
	mov r3, r2
	cmp r5, #0
	bne _0211D35C
	ldr r1, [r0, #0x24]
	cmp r1, #4
	movne r3, #0
_0211D35C:
	cmp r3, #0
	bne _0211D370
	ldr r0, [r0, #0x24]
	cmp r0, #5
	movne r2, #0
_0211D370:
	ldrb r0, [r6, #0x1d8]
	strb r2, [r6, #0x1d9]
	mov r5, #0
	cmp r0, #1
	mov r2, #0
	movne r2, #2
	ldr r0, _0211D47C ; =0x0209F5C0
	mov r1, r5
	str r2, [r6, #0x1dc]
	bl  FUN_ov16_020f5a58
	mov r7, #6
	ldr r0, _0211D480 ; =0x0209A070
	mov r1, r7
	bl  FUN_ov16_020f6c20
	mov r1, r5
	add r0, r6, #0x3c
	mov r2, #0x14
	bl MI_CpuFill8
	mov r1, r5
	add r0, r6, #0x56
	mov r2, #2
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0x36
	mov r1, r5
	bl MI_CpuFill8
	add r0, r6, #0xe6
	add r0, r0, #0x100
	mov r1, r5
	mov r2, #0x19
	str r5, [r6, #0x50]
	bl MI_CpuFill8
	add r0, r6, #0x3c
	mov r1, #0x1c
	mov r2, #0x10
	bl  FUN_ov16_020f2fa8
	ldr r8, _0211D45C ; =0x0209A250
	mov r7, #0x80
	b _0211D438
_0211D40C:
	mov r0, r8
	mov r1, r7
	bl FUN_0202de44
	add r1, r6, r5, lsl #2
	str r0, [r1, #0x50]
	cmp r0, #0
	beq _0211D434
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
_0211D434:
	add r5, r5, #1
_0211D438:
	cmp r5, #1
	blt _0211D40C
	mov r0, r6
	bl FUN_ov61_0211a22c
	str r0, [r6, #0x1d4]
	mov r0, r6
	strb r4, [r6, #0x1ff]
	bl FUN_ov61_0211b11c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D45C: .word 0x0209A250
_0211D460: .word FUN_ov61_0211d9e0
_0211D464: .word FUN_ov61_0211d9f4
_0211D468: .word 0x0211F5E0
_0211D46C: .word 0x0211F600
_0211D470: .word 0x02099EB4
_0211D474: .word 0x04000008
_0211D478: .word 0x0209A454
_0211D47C: .word 0x0209F5C0
_0211D480: .word 0x0209A070
	arm_func_end FUN_ov61_0211d1b8

	arm_func_start FUN_ov61_0211d484
FUN_ov61_0211d484: ; 0x0211D484
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov61_0211b8bc
	mov r0, r5
	bl FUN_ov61_0211bb60
	mov r4, #2
	ldr r0, _0211D4D4 ; =0x0209F5C0
	mov r2, r4
	mov r1, #0
	bl  FUN_ov16_020f66c0
	cmp r0, #0
	ldrne r0, [r5, #0x20c]
	cmpne r0, #0
	ldrne r0, _0211D4D8 ; =0x0211F5E0
	subne r1, r4, #3
	strneh r1, [r0, #0x1a]
	ldreq r0, _0211D4D8 ; =0x0211F5E0
	moveq r1, #0
	streqh r1, [r0, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D4D4: .word 0x0209F5C0
_0211D4D8: .word 0x0211F5E0
	arm_func_end FUN_ov61_0211d484

	arm_func_start FUN_ov61_0211d4dc
FUN_ov61_0211d4dc: ; 0x0211D4DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211D4F4: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211D514 ; case 2
	b _0211D524 ; case 3
	b _0211D524 ; case 4
	b _0211D524 ; case 5
	b _0211D524 ; case 6
	b _0211D524 ; case 7
_0211D514:
	bl FUN_ov61_0211b584
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211D524:
	bl FUN_ov61_0211b864
	mov r0, r4
	bl FUN_ov61_0211b75c
	ldrb r0, [r4, #0x34]
	cmp r0, #0
	beq _0211D548
	bl  FUN_ov16_020f10ac
	mov r0, #0
	strb r0, [r4, #0x34]
_0211D548:
	ldr r0, _0211D558 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0211D558: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211d4dc

	arm_func_start FUN_ov61_0211d55c
FUN_ov61_0211d55c: ; 0x0211D55C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, _0211D6A0 ; =0x0211F600
	mov r6, #0x20
	mov r5, r0
	mov r0, r8
	mov r2, r6
	mov r1, #0xc0
	ldr r7, _0211D6A4 ; =0x0209A250
	bl MI_CpuFill8
	mov r4, #0
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl FUN_02005274
	mov r0, r4
	bl  FUN_ov16_020f5248
	ldr r0, [r5, #0x204]
	bl FUN_0206efc4
	ldr r6, _0211D6A8 ; =0x0211F5E0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _0211D5C0
	ldr r0, _0211D6A4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r6, #0x14]
_0211D5C0:
	ldr r6, _0211D6A8 ; =0x0211F5E0
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _0211D5DC
	ldr r0, _0211D6A4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r6, #0xc]
_0211D5DC:
	ldr r1, [r5, #0x208]
	cmp r1, #0
	beq _0211D5F4
	ldr r0, _0211D6A4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #0x208]
_0211D5F4:
	ldr r0, _0211D6AC ; =0x0209A5D0
	bl FUN_02061b44
	ldr r0, _0211D6B0 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211D6B4 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	ldr r0, _0211D6B8 ; =0x0209A070
	bl  FUN_ov16_020f6c58
	add r0, r5, #0x3c
	mov r1, #1
	bl  FUN_ov16_020f2fe4
	ldr r1, [r5, #0x200]
	cmp r1, #0
	beq _0211D640
	ldr r0, _0211D6A4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r5, #0x200]
_0211D640:
	mov r6, #0
	b _0211D66C
_0211D648:
	add r0, r5, r6, lsl #2
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0211D668
	mov r0, r7
	bl FUN_0202e1c0
	add r0, r5, r6, lsl #2
	str r4, [r0, #0x50]
_0211D668:
	add r6, r6, #1
_0211D66C:
	cmp r6, #1
	blt _0211D648
	add r0, r5, #0x58
	mov r1, #0x1e
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov61_0211b1d8
	ldr r1, _0211D6BC ; =0x04000008
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D6A0: .word 0x0211F600
_0211D6A4: .word 0x0209A250
_0211D6A8: .word 0x0211F5E0
_0211D6AC: .word 0x0209A5D0
_0211D6B0: .word 0x02099EB4
_0211D6B4: .word 0x0209F5C0
_0211D6B8: .word 0x0209A070
_0211D6BC: .word 0x04000008
	arm_func_end FUN_ov61_0211d55c

	arm_func_start FUN_ov61_0211d6c0
FUN_ov61_0211d6c0: ; 0x0211D6C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #6
	bne _0211D6DC
_0211D6D4:
	bl FUN_0206ee5c
	b _0211D6D4
_0211D6DC:
	mov r0, #4
	ldr r4, _0211D728 ; =0x0209A0F0
	str r0, [r6, #8]
	mov r5, #0
_0211D6EC:
	bl FUN_0206ee5c
	cmp r5, #0
	beq _0211D704
	ldrb r0, [r6, #0x11]
	cmp r0, #0
	beq _0211D714
_0211D704:
	ldrh r0, [r4]
	tst r0, #1
	ldreqb r5, [r6, #0x11]
	beq _0211D6EC
_0211D714:
	ldr r0, _0211D72C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	bl FUN_0206ee5c
	ldmfd sp!, {r4, r5, r6, pc}
_0211D728: .word 0x0209A0F0
_0211D72C: .word 0x0209AC44
	arm_func_end FUN_ov61_0211d6c0

	arm_func_start FUN_ov61_0211d730
FUN_ov61_0211d730: ; 0x0211D730
	stmfd sp!, {r4, lr}
	mov r4, r0
_0211D738:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
	ldr r0, [r4, #0xc]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #9
	beq _0211D768
	mov r0, r4
	mov r1, #3
	bl FUN_ov61_0211a340
_0211D768:
	mov r0, r4
	bl FUN_ov61_0211d060
	ldr r0, [r4, #0xc]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #9
	bne _0211D788
	b _0211D7B8
_0211D788:
	mov r0, r4
	bl FUN_ov61_0211a358
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _0211D7A4
	bl FUN_0206ee5c
	b _0211D788
_0211D7A4:
	ldr r0, [r4, #0xc]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #9
	bne _0211D7E0
_0211D7B8:
	mov r0, r4
	bl FUN_ov61_0211d6c0
	mov r2, #3
	mov r0, r4
	mov r1, #1
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	mov r0, #4
	bl FUN_0206eed0
	b _0211D738
_0211D7E0:
	mov r0, r4
	bl FUN_ov61_0211b9cc
	mov r0, r4
	bl FUN_ov61_0211b1b0
	mov r0, r4
	bl FUN_ov61_0211d060
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211d730

	arm_func_start FUN_ov61_0211d7fc
FUN_ov61_0211d7fc: ; 0x0211D7FC
	stmfd sp!, {r4, lr}
	mov r4, r0
_0211D804:
	mov r0, r4
	bl FUN_ov61_0211a4f0
	ldr r0, [r4, #8]
	cmp r0, #6
	bne _0211D820
	bl FUN_0206ee5c
	b _0211D804
_0211D820:
	mov r0, r4
	bl FUN_ov61_0211d060
	ldr r0, [r4, #0xc]
	cmp r0, #9
	ldmnefd sp!, {r4, pc}
_0211D834:
	bl FUN_0206ee5c
	b _0211D834
	arm_func_end FUN_ov61_0211d7fc

	arm_func_start FUN_ov61_0211d83c
FUN_ov61_0211d83c: ; 0x0211D83C
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211d83c

	arm_func_start FUN_ov61_0211d840
FUN_ov61_0211d840: ; 0x0211D840
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov61_0211a340
	mov r0, r4
	bl FUN_ov61_0211d060
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211d840

	arm_func_start FUN_ov61_0211d864
FUN_ov61_0211d864: ; 0x0211D864
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bl FUN_ov61_0211d840
	mov r0, #4
	str r0, [r5, #8]
_0211D878:
	bl FUN_0206ee5c
	ldr r1, _0211D9A0 ; =0x0209A0E8
	ldr r0, _0211D9A4 ; =0x0000040C
	ldrh r1, [r1]
	and r1, r1, r0
	cmp r1, r0
	bne _0211D970
	ldr r0, _0211D9A8 ; =0x0209A0F0
	mov r4, #0
	ldrh r0, [r0]
	tst r0, #0x40
	beq _0211D8B8
	ldr r0, _0211D9AC ; =0x0209BA20
	mov r1, #0xf
	bl FUN_0207405c
	orr r4, r4, r0
_0211D8B8:
	ldr r0, _0211D9A8 ; =0x0209A0F0
	ldrh r0, [r0]
	tst r0, #0x20
	beq _0211D8D8
	ldr r0, _0211D9AC ; =0x0209BA20
	mov r1, #1
	bl FUN_0207405c
	orr r4, r4, r0
_0211D8D8:
	ldr r0, _0211D9A8 ; =0x0209A0F0
	ldrh r0, [r0]
	tst r0, #0x10
	beq _0211D8F8
	ldr r0, _0211D9AC ; =0x0209BA20
	mov r1, #6
	bl FUN_0207405c
	orr r4, r4, r0
_0211D8F8:
	ldr r0, _0211D9A8 ; =0x0209A0F0
	ldrh r0, [r0]
	tst r0, #0x80
	beq _0211D918
	ldr r0, _0211D9AC ; =0x0209BA20
	mov r1, #8
	bl FUN_0207405c
	orr r4, r4, r0
_0211D918:
	cmp r4, #0
	beq _0211D970
	ldr r0, [r5, #0x1dc]
	mov r8, #0
	sub r0, r0, #3
	str r0, [r5, #0x1dc]
	mov r7, #1
	mov r6, #2
	mov r4, r8
_0211D93C:
	mov r0, r6
	str r7, [r5, #0x20c]
	bl FUN_0206eed0
	mov r0, r6
	str r4, [r5, #0x20c]
	bl FUN_0206eed0
	add r8, r8, #1
	cmp r8, #4
	blt _0211D93C
	ldr r0, [r5, #0x1dc]
	add r0, r0, #3
	str r0, [r5, #0x1dc]
	bl FUN_0206ee5c
_0211D970:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _0211D878
	mov r4, #0
	ldr r0, _0211D9B0 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f65a4
	cmp r0, #0
	bne _0211D878
	ldr r0, [r5, #0x28]
	strb r4, [r5, #0x2c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D9A0: .word 0x0209A0E8
_0211D9A4: .word 0x0000040C
_0211D9A8: .word 0x0209A0F0
_0211D9AC: .word 0x0209BA20
_0211D9B0: .word 0x0209F5C0
	arm_func_end FUN_ov61_0211d864

	arm_func_start FUN_ov61_0211d9b4
FUN_ov61_0211d9b4: ; 0x0211D9B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0x1e
_0211D9C0:
	mov r1, r4
	add r0, r5, #0x58
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_0206ee5c
	b _0211D9C0
	arm_func_end FUN_ov61_0211d9b4

	arm_func_start FUN_ov61_0211d9dc
FUN_ov61_0211d9dc: ; 0x0211D9DC
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov61_0211d9dc

	arm_func_start FUN_ov61_0211d9e0
FUN_ov61_0211d9e0: ; 0x0211D9E0
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	ldr r1, [r1, #0x8c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov61_0211d9e0

	arm_func_start FUN_ov61_0211d9f4
FUN_ov61_0211d9f4: ; 0x0211D9F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211DA7C ; =0x0211F5E0
	ldr r0, _0211DA80 ; =0x01FF0000
	ldrsh r3, [r4, #0x1a]
	ldr r1, _0211DA84 ; =0x04000014
	mov r2, #0x4000000
	and r0, r0, r3, lsl #16
	str r0, [r1]
	ldr r1, [r2]
	ldr r0, _0211DA88 ; =0xFFCFFFEF
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r2]
	ldr r0, [r2]
	orr r0, r0, #0x1000
	str r0, [r2]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0211DA68
	mov r5, #0
	ldr r0, [r4, #0xc]
	mov r1, r5
	mov r2, #0x800
	bl FUN_02005334
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	mov r2, #0xa0
	bl FUN_020051bc
	str r5, [r4, #8]
_0211DA68:
	ldr r0, _0211DA8C ; =0x0211F600
	mov r1, #0
	mov r2, #0x20
	bl FUN_02005274
	ldmfd sp!, {r3, r4, r5, pc}
_0211DA7C: .word 0x0211F5E0
_0211DA80: .word 0x01FF0000
_0211DA84: .word 0x04000014
_0211DA88: .word 0xFFCFFFEF
_0211DA8C: .word 0x0211F600
	arm_func_end FUN_ov61_0211d9f4

	arm_func_start FUN_ov61_0211da90
FUN_ov61_0211da90: ; 0x0211DA90
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, _0211DE48 ; =0x0209A454
	mov r4, r0
	ldr r0, [r1, #0x24]
	mov r10, #1
	cmp r0, #6
	ldr r0, _0211DE48 ; =0x0209A454
	mov r5, r10
	ldr r0, [r0, #0x24]
	movne r5, #0
	cmp r0, #4
	mov r6, #1
	mov r0, r4
	movne r6, #0
	bl FUN_ov61_0211d9b4
	mov r0, r4
	bl FUN_ov61_0211b1b0
	mov r0, r4
	bl FUN_ov61_0211b150
	mov r0, r4
	bl FUN_ov61_0211b220
	mov r0, #2
	str r0, [r4, #8]
_0211DAEC:
	bl FUN_0206ee5c
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _0211DB00
	b _0211DAEC
_0211DB00:
	mov r0, r4
	bl FUN_ov61_0211b9cc
	ldrb r0, [r4, #0x2d]
	cmp r0, #0
	beq _0211DB8C
	mov r7, #0xc
	mov r0, r4
	mov r1, r7
	bl FUN_ov61_0211d840
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, r7
	bl FUN_ov61_0211d864
	ldr r0, [r4, #0x28]
	cmp r0, #0xd
	mov r0, r4
	ldr r1, [r0]
	bne _0211DB64
	ldr r1, [r1, #0x84]
	blx r1
_0211DB5C:
	bl FUN_0206ee5c
	b _0211DB5C
_0211DB64:
	ldr r1, [r1, #0x50]
	blx r1
_0211DB6C:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211DB8C
	bl FUN_0206ee5c
	b _0211DB6C
_0211DB8C:
	cmp r5, #0
	beq _0211DBD0
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211a340
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211a2d0
	mov r0, r4
	bl FUN_ov61_0211d060
	mov r0, #6
	bl  FUN_ov16_020f1468
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211d7fc
_0211DBC8:
	bl FUN_0206ee5c
	b _0211DBC8
_0211DBD0:
	cmp r6, #0
	ldrne r0, _0211DE4C ; =0x020A0640
	ldrneb r0, [r0, #0x84]
	cmpne r0, #0
	bne _0211DBF8
	cmp r6, #0
	ldrne r0, _0211DE4C ; =0x020A0640
	ldrneb r0, [r0, #0x86]
	cmpne r0, #0
	beq _0211DC54
_0211DBF8:
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211a340
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211a2d0
	mov r0, r4
	bl FUN_ov61_0211d060
	mov r0, #6
	bl  FUN_ov16_020f1468
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211d730
	mov r0, r4
	bl FUN_ov61_0211a0b8
	cmp r0, #0
	bne _0211DC4C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x84]
	blx r1
_0211DC4C:
	bl FUN_0206ee5c
	b _0211DC4C
_0211DC54:
	ldr r7, _0211DE50 ; =0x0209A5D0
	mov r5, #0
	mov r8, #3
	mov r6, #4
	mov r9, #6
_0211DC68:
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211a340
	mov r0, r4
	mov r1, r10
	bl FUN_ov61_0211a2d0
	mov r0, r4
	bl FUN_ov61_0211d060
	mov r0, r9
	bl  FUN_ov16_020f1468
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bne _0211DCD4
	mov r0, r4
	bl FUN_ov61_0211d6c0
	ldr r1, [r4, #0x50]
	mov r0, r7
	str r8, [r4, #8]
	bl FUN_02062800
	bl FUN_0206ee5c
	mov r0, r4
	bl FUN_ov61_0211b9cc
	mov r0, r4
	bl FUN_ov61_0211b1b0
	mov r0, r6
	bl FUN_0206eed0
	b _0211DC68
_0211DCD4:
	cmp r1, #9
	bne _0211DCE4
_0211DCDC:
	bl FUN_0206ee5c
	b _0211DCDC
_0211DCE4:
	mov r0, r4
	bl FUN_ov61_0211d864
	mov r0, r4
	bl FUN_ov61_0211a688
	cmp r0, #0
	beq _0211DD04
	mov r0, r4
	bl FUN_ov61_0211d060
_0211DD04:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0211DC68
	cmp r0, #2
	beq _0211DD24
	cmp r0, #7
	beq _0211DDD0
	b _0211DE40
_0211DD24:
	mov r0, r7
	bl FUN_02061c48
	cmp r0, #0
	beq _0211DD48
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl FUN_ov61_0211d864
	cmp r0, #0xc
	bne _0211DC68
_0211DD48:
	mov r0, r4
	mov r1, #0
	bl FUN_ov61_0211d730
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl FUN_ov61_0211d864
	ldr r0, [r4, #0x28]
	cmp r0, #0xe
	bne _0211DD94
	ldrb r0, [r4, #0x1e5]
	cmp r0, #0
	bne _0211DD88
	mov r0, r4
	mov r1, #0xd
	bl FUN_ov61_0211a2d0
	b _0211DD94
_0211DD88:
	mov r0, #0x13
	mov r1, #1
	bl  FUN_ov16_020f2604
_0211DD94:
	mov r0, #4
	bl FUN_0206eed0
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov61_0211d864
	mov r1, #7
	mov r0, r4
	str r1, [r4, #8]
	bl FUN_ov61_0211a0b8
	cmp r0, #0
	bne _0211DE40
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x84]
	b _0211DE3C
_0211DDD0:
	mov r0, r4
	mov r1, r5
	bl FUN_ov61_0211d7fc
	ldr r1, [r4, #0xc]
	mov r0, r4
	bl FUN_ov61_0211d864
	ldr r0, [r4, #0xc]
	cmp r0, #0xa
	bne _0211DE0C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x84]
	blx r1
_0211DE04:
	bl FUN_0206ee5c
	b _0211DE04
_0211DE0C:
	cmp r0, #8
	beq _0211DE30
	mov r0, r4
	bl FUN_ov61_0211a688
	cmp r0, #0
	beq _0211DC68
	mov r0, r4
	bl FUN_ov61_0211d060
	b _0211DC68
_0211DE30:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x88]
_0211DE3C:
	blx r1
_0211DE40:
	bl FUN_0206ee5c
	b _0211DE40
_0211DE48: .word 0x0209A454
_0211DE4C: .word 0x020A0640
_0211DE50: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211da90

	arm_func_start FUN_ov61_0211de54
FUN_ov61_0211de54: ; 0x0211DE54
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211de54

	arm_func_start FUN_ov61_0211de68
FUN_ov61_0211de68: ; 0x0211DE68
	bx lr
	arm_func_end FUN_ov61_0211de68

	arm_func_start FUN_ov61_0211de6c
FUN_ov61_0211de6c: ; 0x0211DE6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x210]
	cmp r0, #0
	beq _0211DEBC
	ldrb r1, [r0, #2]
	ldr r0, [r4, #0x200]
	mov r2, #0x60
	strb r1, [r0, #0xb5e]
	ldr r1, [r4, #0x210]
	ldr r0, [r4, #0x200]
	ldrh r1, [r1]
	add r0, r0, #0xb00
	strh r1, [r0, #0x5c]
	ldr r0, [r4, #0x200]
	ldr r3, [r4, #0x210]
	add r1, r0, #0x368
	add r0, r3, #0xc
	add r1, r1, #0x800
	bl MI_CpuCopy8
_0211DEBC:
	ldr r1, [r4, #0x200]
	ldr r0, _0211DED4 ; =0x020A9C40
	add r1, r1, #0x88
	add r1, r1, #0x4800
	bl FUN_020455b8
	ldmfd sp!, {r4, pc}
_0211DED4: .word 0x020A9C40
	arm_func_end FUN_ov61_0211de6c

	arm_func_start FUN_ov61_0211ded8
FUN_ov61_0211ded8: ; 0x0211DED8
	mov r1, #1
	strb r1, [r0, #0x56]
	bx lr
	arm_func_end FUN_ov61_0211ded8

	arm_func_start FUN_ov61_0211dee4
FUN_ov61_0211dee4: ; 0x0211DEE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211DF40 ; =0x020A0B00
	and r1, r4, #0xff
	bl FUN_0207477c
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #8]
	cmp r0, #0
	mov r0, r5
	bne _0211DF34
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211DF34:
	mov r1, #2
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211DF40: .word 0x020A0B00
	arm_func_end FUN_ov61_0211dee4

	arm_func_start FUN_ov61_0211df44
FUN_ov61_0211df44: ; 0x0211DF44
	ldr r12, _0211DF50 ; =FUN_ov61_0211a340
	mov r1, #9
	bx r12
_0211DF50: .word FUN_ov61_0211a340
	arm_func_end FUN_ov61_0211df44

	arm_func_start FUN_ov61_0211df54
FUN_ov61_0211df54: ; 0x0211DF54
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #8
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x17
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211df54

	arm_func_start FUN_ov61_0211df84
FUN_ov61_0211df84: ; 0x0211DF84
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x200]
	cmp r2, #0
	bne _0211DFAC
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r4, pc}
_0211DFAC:
	ldr r0, _0211E038 ; =0x0209A5D0
	mov r1, #0
	bl FUN_020628dc
	cmp r0, #0
	bgt _0211DFF0
	bge _0211E02C
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211DFF8
_0211DFD4: ; jump table
	b _0211E014 ; case 0
	b _0211DFF8 ; case 1
	b _0211DFF8 ; case 2
	b _0211E014 ; case 3
	b _0211E014 ; case 4
	b _0211E014 ; case 5
	b _0211E014 ; case 6
_0211DFF0:
	cmp r0, #1
	beq _0211E02C
_0211DFF8:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
_0211E00C:
	bl FUN_0206ee5c
	b _0211E00C
_0211E014:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r4, pc}
_0211E02C:
	mov r0, #6
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211E038: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211df84

	arm_func_start FUN_ov61_0211e03c
FUN_ov61_0211e03c: ; 0x0211E03C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x200]
	cmp r1, #0
	bne _0211E064
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211E064:
	ldr r1, [r0]
	ldr r1, [r1, #0x90]
	blx r1
	mov r5, #0
	ldr r2, [r4, #0x200]
	ldr r0, _0211E108 ; =0x0209A5D0
	mov r1, r5
	bl FUN_020626f4
	cmp r0, #0
	bgt _0211E0C4
	bge _0211E0FC
	sub r1, r5, #0x79
	cmp r0, r1
	bgt _0211E0CC
	sub r1, r5, #0x7d
	cmp r0, r1
	blt _0211E0CC
	beq _0211E0CC
	sub r1, r5, #0x7c
	cmp r0, r1
	subne r1, r5, #0x79
	cmpne r0, r1
	beq _0211E0E4
	b _0211E0CC
_0211E0C4:
	cmp r0, #1
	beq _0211E0FC
_0211E0CC:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211E0E4:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211E0FC:
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E108: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211e03c

	arm_func_start FUN_ov61_0211e10c
FUN_ov61_0211e10c: ; 0x0211E10C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211E184 ; =0x0209A5D0
	mov r5, r0
_0211E118:
	mov r0, r4
	bl FUN_02062924
	cmp r0, #0
	bgt _0211E158
	ldmgefd sp!, {r3, r4, r5, pc}
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211E160
_0211E13C: ; jump table
	b _0211E160 ; case 0
	b _0211E160 ; case 1
	b _0211E160 ; case 2
	b _0211E160 ; case 3
	b _0211E160 ; case 4
	b _0211E160 ; case 5
	b _0211E160 ; case 6
_0211E158:
	cmp r0, #1
	beq _0211E178
_0211E160:
	mov r2, #7
	mov r0, r5
	mov r1, #5
	str r2, [r5, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211E178:
	bl FUN_0206ee5c
	b _0211E118
	arm_func_end FUN_ov61_0211e10c

	arm_func_start FUN_ov61_0211e180
FUN_ov61_0211e180: ; 0x0211E180
	ldmfd sp!, {r3, r4, r5, pc}
_0211E184: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211e180

	arm_func_start FUN_ov61_0211e188
FUN_ov61_0211e188: ; 0x0211E188
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov61_0211d1b8
	mov r0, #0
	str r0, [r4, #0x210]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e188

	arm_func_start FUN_ov61_0211e1a0
FUN_ov61_0211e1a0: ; 0x0211E1A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov61_0211bb60
	mov r0, r4
	bl FUN_ov61_0211b8bc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e1a0

	arm_func_start FUN_ov61_0211e1b8
FUN_ov61_0211e1b8: ; 0x0211E1B8
	ldr r12, _0211E1C0 ; =FUN_ov61_0211d4dc
	bx r12
_0211E1C0: .word FUN_ov61_0211d4dc
	arm_func_end FUN_ov61_0211e1b8

	arm_func_start FUN_ov61_0211e1c4
FUN_ov61_0211e1c4: ; 0x0211E1C4
	ldr r12, _0211E1CC ; =FUN_ov61_0211d55c
	bx r12
_0211E1CC: .word FUN_ov61_0211d55c
	arm_func_end FUN_ov61_0211e1c4

	arm_func_start FUN_ov61_0211e1d0
FUN_ov61_0211e1d0: ; 0x0211E1D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov61_0211d9b4
	mov r0, r10
	bl FUN_ov61_0211b1b0
	mov r0, r10
	bl FUN_ov61_0211b150
	mov r0, r10
	bl FUN_ov61_0211b220
	mov r0, #2
	str r0, [r10, #8]
_0211E1FC:
	bl FUN_0206ee5c
	ldr r0, [r10, #8]
	cmp r0, #3
	bne _0211E1FC
	mov r0, r10
	bl FUN_ov61_0211b9cc
	mov r0, r10
	mov r1, #1
	bl FUN_ov61_0211a2d0
	mov r1, #6
	mov r0, r10
	str r1, [r10, #8]
	bl FUN_ov61_0211d060
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	bl  FUN_ov16_020f2cdc
	mov r6, #3
	mov r8, #1
	mov r7, #4
	mov r9, r6
	mov r5, r6
	mov r4, r8
	mov r11, r7
_0211E260:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	mov r0, r10
	bne _0211E2A0
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r8
	str r9, [r10, #8]
	bl FUN_ov61_0211d840
	mov r0, r7
	b _0211E2E0
_0211E2A0:
	mov r1, r6
	bl FUN_ov61_0211d840
	bl FUN_0206ee5c
	mov r0, r10
	bl FUN_ov61_0211e10c
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	bne _0211E2E8
	mov r0, r10
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r4
	str r5, [r10, #8]
	bl FUN_ov61_0211d840
	mov r0, r11
_0211E2E0:
	bl FUN_0206eed0
	b _0211E260
_0211E2E8:
	mov r0, r10
	mov r1, #0
	bl FUN_ov61_0211d730
	mov r0, r10
	mov r1, #4
	bl FUN_ov61_0211d864
	mov r0, r10
	bl FUN_ov61_0211a688
	cmp r0, #0
	beq _0211E318
	mov r0, r10
	bl FUN_ov61_0211d060
_0211E318:
	mov r0, #4
	bl FUN_0206eed0
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x94]
	blx r1
_0211E330:
	bl FUN_0206ee5c
	b _0211E330
	arm_func_end FUN_ov61_0211e1d0

	arm_func_start FUN_ov61_0211e338
FUN_ov61_0211e338: ; 0x0211E338
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e338

	arm_func_start FUN_ov61_0211e34c
FUN_ov61_0211e34c: ; 0x0211E34C
	str r1, [r0, #0x210]
	bx lr
	arm_func_end FUN_ov61_0211e34c

	arm_func_start FUN_ov61_0211e354
FUN_ov61_0211e354: ; 0x0211E354
	bx lr
	arm_func_end FUN_ov61_0211e354

	arm_func_start FUN_ov61_0211e358
FUN_ov61_0211e358: ; 0x0211E358
	ldrb r1, [r0, #0x54]
	cmp r1, #0
	movne r1, #1
	strneb r1, [r0, #0x56]
	bx lr
	arm_func_end FUN_ov61_0211e358

	arm_func_start FUN_ov61_0211e36c
FUN_ov61_0211e36c: ; 0x0211E36C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, r1
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	bne _0211E394
	ldr r0, _0211E484 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E394:
	ldr r6, _0211E484 ; =0x0209AC44
	ldr r5, _0211E488 ; =0x00008385
	mov r0, r6
	mov r1, r5
	bl FUN_0202d00c
	cmp r0, #0
	bne _0211E3C4
	mov r0, r6
	add r1, r5, #1
	bl FUN_0202d00c
	cmp r0, #0
	beq _0211E3F0
_0211E3C4:
	ldr r7, _0211E484 ; =0x0209AC44
	ldr r6, _0211E488 ; =0x00008385
	mov r5, #0x64
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_0202cfd8
	mov r0, r7
	mov r2, r5
	add r1, r6, #1
	bl FUN_0202cfd8
_0211E3F0:
	ldr r0, _0211E48C ; =0x020A1640
	ldr r0, [r0, #0x1b8]
	cmp r0, #0
	bne _0211E434
	mov r5, #0xa
	mov r0, r4
	mov r1, r5
	bl FUN_ov61_0211d864
	bl FUN_0206ee5c
	ldr r0, _0211E490 ; =0x0209A5D0
	bl FUN_02061bec
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl FUN_02041eac
_0211E42C:
	bl FUN_0206ee5c
	b _0211E42C
_0211E434:
	ldr r0, _0211E490 ; =0x0209A5D0
	bl FUN_02061c48
	cmp r0, #2
	bne _0211E470
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov61_0211d864
	mov r0, r4
	bl FUN_ov61_0211a688
	cmp r0, #0
	beq _0211E468
	mov r0, r4
	bl FUN_ov61_0211d060
_0211E468:
	mov r0, #1
	str r0, [r4, #0xc]
_0211E470:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E484: .word 0x0209AC44
_0211E488: .word 0x00008385
_0211E48C: .word 0x020A1640
_0211E490: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211e36c

	arm_func_start FUN_ov61_0211e494
FUN_ov61_0211e494: ; 0x0211E494
	ldr r12, _0211E4A0 ; =FUN_ov61_0211a340
	mov r1, #9
	bx r12
_0211E4A0: .word FUN_ov61_0211a340
	arm_func_end FUN_ov61_0211e494

	arm_func_start FUN_ov61_0211e4a4
FUN_ov61_0211e4a4: ; 0x0211E4A4
	stmfd sp!, {r3, lr}
	mov r2, #7
	str r2, [r0, #8]
	ldr r1, _0211E50C ; =0x020A0640
	mov r2, #0
	ldrb r1, [r1, #0x85]
	ldr r0, [r0, #4]
	cmp r1, #0
	ldr r1, _0211E50C ; =0x020A0640
	movne r2, #1
	ldrb r1, [r1, #0x86]
	cmp r1, #0
	ldr r1, _0211E50C ; =0x020A0640
	movne r2, #1
	ldrb r1, [r1, #0x84]
	cmp r1, #0
	movne r2, #1
	cmp r2, #0
	mov r1, #0
	beq _0211E500
	mov r2, #0x22
	bl FUN_02041eac
	ldmfd sp!, {r3, pc}
_0211E500:
	mov r2, #0xa
	bl FUN_02041eac
	ldmfd sp!, {r3, pc}
_0211E50C: .word 0x020A0640
	arm_func_end FUN_ov61_0211e4a4

	arm_func_start FUN_ov61_0211e510
FUN_ov61_0211e510: ; 0x0211E510
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r1, #7
	mov r0, #6
	str r1, [r4, #8]
	bl  FUN_ov16_020f153c
	ldr r5, _0211E628 ; =0x020A0640
	mov r1, #0
	ldrb r0, [r5, #0x85]
	cmp r0, #0
	ldrb r0, [r5, #0x86]
	movne r1, #1
	cmp r0, #0
	ldrb r0, [r5, #0x84]
	movne r1, #1
	cmp r0, #0
	ldr r0, _0211E62C ; =0x0209A454
	movne r1, #1
	ldr r0, [r0, #0x24]
	cmp r0, #6
	beq _0211E610
	cmp r1, #0
	beq _0211E5FC
	ldrb r0, [r5, #0x85]
	cmp r0, #0
	beq _0211E59C
	mov r6, #0x25
	ldr r0, [r4, #4]
	mov r2, r6
	mov r1, #0
	bl FUN_02041eac
	ldr r0, [r4, #4]
	mov r2, r6
	mov r1, #1
	bl FUN_02041eac
_0211E59C:
	ldrb r0, [r5, #0x86]
	cmp r0, #0
	beq _0211E5C8
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x23
	bl FUN_02041eac
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0x26
	bl FUN_02041eac
_0211E5C8:
	ldrb r0, [r5, #0x84]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0x23
	bl FUN_02041eac
	mov r0, r4
	mov r1, #1
	mov r2, #0x24
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_0211E5FC:
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xb
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_0211E610:
	ldr r0, _0211E630 ; =0x020A9C40
	mov r1, #8
	bl FUN_020455a0
	mov r0, #3
	bl FUN_02029d44
	ldmfd sp!, {r4, r5, r6, pc}
_0211E628: .word 0x020A0640
_0211E62C: .word 0x0209A454
_0211E630: .word 0x020A9C40
	arm_func_end FUN_ov61_0211e510

	arm_func_start FUN_ov61_0211e634
FUN_ov61_0211e634: ; 0x0211E634
	stmfd sp!, {r3, lr}
	tst r1, #0x400
	ldmnefd sp!, {r3, pc}
	bl FUN_ov61_0211a8e8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov61_0211e634

	arm_func_start FUN_ov61_0211e648
FUN_ov61_0211e648: ; 0x0211E648
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e648

	arm_func_start FUN_ov61_0211e65c
FUN_ov61_0211e65c: ; 0x0211E65C
	bx lr
	arm_func_end FUN_ov61_0211e65c

	arm_func_start FUN_ov61_0211e660
FUN_ov61_0211e660: ; 0x0211E660
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x210]
	cmp r0, #0
	beq _0211E6AC
	ldrb r1, [r0, #3]
	ldr r0, [r4, #0x200]
	mov r2, #0x30
	strb r1, [r0, #0xb5f]
	ldr r1, [r4, #0x210]
	ldr r0, [r4, #0x200]
	ldrb r1, [r1, #4]
	strb r1, [r0, #0xb60]
	ldr r0, [r4, #0x200]
	ldr r3, [r4, #0x210]
	add r1, r0, #0x3c8
	add r0, r3, #0x6c
	add r1, r1, #0x800
	bl MI_CpuCopy8
_0211E6AC:
	ldr r1, [r4, #0x200]
	ldr r0, _0211E6C4 ; =0x020A9C40
	add r1, r1, #0x88
	add r1, r1, #0x4800
	bl FUN_020455b8
	ldmfd sp!, {r4, pc}
_0211E6C4: .word 0x020A9C40
	arm_func_end FUN_ov61_0211e660

	arm_func_start FUN_ov61_0211e6c8
FUN_ov61_0211e6c8: ; 0x0211E6C8
	mov r1, #1
	strb r1, [r0, #0x56]
	bx lr
	arm_func_end FUN_ov61_0211e6c8

	arm_func_start FUN_ov61_0211e6d4
FUN_ov61_0211e6d4: ; 0x0211E6D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211E730 ; =0x020A0B00
	and r1, r4, #0xff
	bl FUN_0207477c
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #8]
	cmp r0, #0
	mov r0, r5
	bne _0211E724
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211E724:
	mov r1, #2
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211E730: .word 0x020A0B00
	arm_func_end FUN_ov61_0211e6d4

	arm_func_start FUN_ov61_0211e734
FUN_ov61_0211e734: ; 0x0211E734
	ldr r12, _0211E740 ; =FUN_ov61_0211a340
	mov r1, #9
	bx r12
_0211E740: .word FUN_ov61_0211a340
	arm_func_end FUN_ov61_0211e734

	arm_func_start FUN_ov61_0211e744
FUN_ov61_0211e744: ; 0x0211E744
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #8
	str r1, [r4, #8]
	bl FUN_0204204c
	cmp r0, #0x1a
	bne _0211E780
	ldr r0, [r4, #4]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xe
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_0211E780:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x13
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e744

	arm_func_start FUN_ov61_0211e7a4
FUN_ov61_0211e7a4: ; 0x0211E7A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x200]
	cmp r2, #0
	bne _0211E7CC
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r4, pc}
_0211E7CC:
	ldr r0, _0211E858 ; =0x0209A5D0
	mov r1, #0
	bl FUN_020628dc
	cmp r0, #0
	bgt _0211E810
	bge _0211E84C
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211E818
_0211E7F4: ; jump table
	b _0211E834 ; case 0
	b _0211E818 ; case 1
	b _0211E818 ; case 2
	b _0211E834 ; case 3
	b _0211E834 ; case 4
	b _0211E834 ; case 5
	b _0211E834 ; case 6
_0211E810:
	cmp r0, #1
	beq _0211E84C
_0211E818:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
_0211E82C:
	bl FUN_0206ee5c
	b _0211E82C
_0211E834:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r4, pc}
_0211E84C:
	mov r0, #6
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211E858: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211e7a4

	arm_func_start FUN_ov61_0211e85c
FUN_ov61_0211e85c: ; 0x0211E85C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x200]
	cmp r1, #0
	bne _0211E884
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211E884:
	ldr r1, [r0]
	ldr r1, [r1, #0x90]
	blx r1
	mov r5, #0
	ldr r2, [r4, #0x200]
	ldr r0, _0211E928 ; =0x0209A5D0
	mov r1, r5
	bl FUN_020626f4
	cmp r0, #0
	bgt _0211E8E4
	bge _0211E91C
	sub r1, r5, #0x79
	cmp r0, r1
	bgt _0211E8EC
	sub r1, r5, #0x7d
	cmp r0, r1
	blt _0211E8EC
	beq _0211E8EC
	sub r1, r5, #0x7c
	cmp r0, r1
	subne r1, r5, #0x79
	cmpne r0, r1
	beq _0211E904
	b _0211E8EC
_0211E8E4:
	cmp r0, #1
	beq _0211E91C
_0211E8EC:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211E904:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211a340
	ldmfd sp!, {r3, r4, r5, pc}
_0211E91C:
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E928: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211e85c

	arm_func_start FUN_ov61_0211e92c
FUN_ov61_0211e92c: ; 0x0211E92C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211E9A4 ; =0x0209A5D0
	mov r5, r0
_0211E938:
	mov r0, r4
	bl FUN_02062924
	cmp r0, #0
	bgt _0211E978
	ldmgefd sp!, {r3, r4, r5, pc}
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211E980
_0211E95C: ; jump table
	b _0211E980 ; case 0
	b _0211E980 ; case 1
	b _0211E980 ; case 2
	b _0211E980 ; case 3
	b _0211E980 ; case 4
	b _0211E980 ; case 5
	b _0211E980 ; case 6
_0211E978:
	cmp r0, #1
	beq _0211E998
_0211E980:
	mov r2, #7
	mov r0, r5
	mov r1, #5
	str r2, [r5, #8]
	bl FUN_ov61_0211d840
	ldmfd sp!, {r3, r4, r5, pc}
_0211E998:
	bl FUN_0206ee5c
	b _0211E938
	arm_func_end FUN_ov61_0211e92c

	arm_func_start FUN_ov61_0211e9a0
FUN_ov61_0211e9a0: ; 0x0211E9A0
	ldmfd sp!, {r3, r4, r5, pc}
_0211E9A4: .word 0x0209A5D0
	arm_func_end FUN_ov61_0211e9a0

	arm_func_start FUN_ov61_0211e9a8
FUN_ov61_0211e9a8: ; 0x0211E9A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov61_0211d1b8
	mov r0, #0
	str r0, [r4, #0x210]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e9a8

	arm_func_start FUN_ov61_0211e9c0
FUN_ov61_0211e9c0: ; 0x0211E9C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov61_0211bb60
	mov r0, r4
	bl FUN_ov61_0211b8bc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211e9c0

	arm_func_start FUN_ov61_0211e9d8
FUN_ov61_0211e9d8: ; 0x0211E9D8
	ldr r12, _0211E9E0 ; =FUN_ov61_0211d4dc
	bx r12
_0211E9E0: .word FUN_ov61_0211d4dc
	arm_func_end FUN_ov61_0211e9d8

	arm_func_start FUN_ov61_0211e9e4
FUN_ov61_0211e9e4: ; 0x0211E9E4
	ldr r12, _0211E9EC ; =FUN_ov61_0211d55c
	bx r12
_0211E9EC: .word FUN_ov61_0211d55c
	arm_func_end FUN_ov61_0211e9e4

	arm_func_start FUN_ov61_0211e9f0
FUN_ov61_0211e9f0: ; 0x0211E9F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov61_0211d9b4
	mov r0, r10
	bl FUN_ov61_0211b1b0
	mov r0, r10
	bl FUN_ov61_0211b150
	mov r0, r10
	bl FUN_ov61_0211b220
	mov r0, #2
	str r0, [r10, #8]
_0211EA1C:
	bl FUN_0206ee5c
	ldr r0, [r10, #8]
	cmp r0, #3
	bne _0211EA1C
	mov r0, r10
	bl FUN_ov61_0211b9cc
	mov r0, r10
	mov r1, #1
	bl FUN_ov61_0211a2d0
	mov r1, #6
	mov r0, r10
	str r1, [r10, #8]
	bl FUN_ov61_0211d060
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	bl  FUN_ov16_020f2cdc
	mov r6, #3
	mov r8, #1
	mov r7, #4
	mov r9, r6
	mov r5, r6
	mov r4, r8
	mov r11, r7
_0211EA80:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	mov r0, r10
	bne _0211EAC0
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r8
	str r9, [r10, #8]
	bl FUN_ov61_0211d840
	mov r0, r7
	b _0211EB00
_0211EAC0:
	mov r1, r6
	bl FUN_ov61_0211d840
	bl FUN_0206ee5c
	mov r0, r10
	bl FUN_ov61_0211e92c
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	bne _0211EB08
	mov r0, r10
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r4
	str r5, [r10, #8]
	bl FUN_ov61_0211d840
	mov r0, r11
_0211EB00:
	bl FUN_0206eed0
	b _0211EA80
_0211EB08:
	mov r0, r10
	mov r1, #0
	bl FUN_ov61_0211d730
	mov r0, r10
	mov r1, #4
	bl FUN_ov61_0211d864
	mov r0, r10
	bl FUN_ov61_0211a688
	cmp r0, #0
	beq _0211EB38
	mov r0, r10
	bl FUN_ov61_0211d060
_0211EB38:
	mov r0, #4
	bl FUN_0206eed0
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x94]
	blx r1
_0211EB50:
	bl FUN_0206ee5c
	b _0211EB50
	arm_func_end FUN_ov61_0211e9f0

	arm_func_start FUN_ov61_0211eb58
FUN_ov61_0211eb58: ; 0x0211EB58
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov61_0211eb58

	arm_func_start FUN_ov61_0211eb6c
FUN_ov61_0211eb6c: ; 0x0211EB6C
	str r1, [r0, #0x210]
	bx lr
	arm_func_end FUN_ov61_0211eb6c

	arm_func_start FUN_ov61_0211eb74
FUN_ov61_0211eb74: ; 0x0211EB74
	bx lr
	arm_func_end FUN_ov61_0211eb74
_0211EB78:
	.byte 0x28, 0xF2, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x38, 0xF2, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00, 0x48, 0xF0, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x48, 0xF2, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x58, 0xF2, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x68, 0xF2, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x98, 0xF0, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0x08, 0xF1, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x18, 0xF1, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x98, 0xF1, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0xC8, 0xF1, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x08, 0xF2, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x78, 0xEF, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0x68, 0xEF, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00, 0x38, 0xEF, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x88, 0xEF, 0x11, 0x02, 0x15, 0x00, 0x00, 0x00, 0x98, 0xEF, 0x11, 0x02, 0x16, 0x00, 0x00, 0x00
	.byte 0xB8, 0xEF, 0x11, 0x02, 0x17, 0x00, 0x00, 0x00, 0xC8, 0xEF, 0x11, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0xF8, 0xEF, 0x11, 0x02, 0x19, 0x00, 0x00, 0x00, 0x08, 0xF0, 0x11, 0x02, 0x1A, 0x00, 0x00, 0x00
	.byte 0x28, 0xF0, 0x11, 0x02, 0x1B, 0x00, 0x00, 0x00, 0x38, 0xF0, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x58, 0xF0, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x88, 0xF0, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xC8, 0xF0, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x88, 0xF1, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x18, 0xF2, 0x11, 0x02, 0x1C, 0x00, 0x00, 0x00, 0x28, 0xEF, 0x11, 0x02, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0xF2, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x88, 0xF2, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00, 0xF8, 0xF1, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x98, 0xF2, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xF2, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xB8, 0xF2, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0xA8, 0xF1, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xB8, 0xF1, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0xD8, 0xF1, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xE8, 0xF1, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0x78, 0xF1, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x68, 0xF1, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x58, 0xF1, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0x48, 0xF1, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00, 0x38, 0xF1, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x28, 0xF1, 0x11, 0x02, 0x15, 0x00, 0x00, 0x00, 0x48, 0xEF, 0x11, 0x02, 0x16, 0x00, 0x00, 0x00
	.byte 0x58, 0xEF, 0x11, 0x02, 0x17, 0x00, 0x00, 0x00, 0xF8, 0xF0, 0x11, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0xE8, 0xF0, 0x11, 0x02, 0x19, 0x00, 0x00, 0x00, 0xD8, 0xF0, 0x11, 0x02, 0x1A, 0x00, 0x00, 0x00
	.byte 0xA8, 0xEF, 0x11, 0x02, 0x1B, 0x00, 0x00, 0x00, 0xB8, 0xF0, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0xA8, 0xF0, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00, 0xD8, 0xEF, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xE8, 0xEF, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x78, 0xF0, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x68, 0xF0, 0x11, 0x02, 0x1C, 0x00, 0x00, 0x00, 0x18, 0xF0, 0x11, 0x02, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov61_0211ed58
FUN_ov61_0211ed58: ; 0x0211ED58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211EDA0 ; =0x0211EEE8
	str r0, [r4, #0xc]
	ldr r0, _0211EDA4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211EDA8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211EDA0: .word 0x0211EEE8
_0211EDA4: .word 0x00009CCD
_0211EDA8: .word 0x0000EA3C
	arm_func_end FUN_ov61_0211ed58

	arm_func_start FUN_ov61_0211edac
FUN_ov61_0211edac: ; 0x0211EDAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211EDF4 ; =0x0211F3B8
	str r0, [r4, #0x14]
	ldr r0, _0211EDF8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211EDFC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211EDF4: .word 0x0211F3B8
_0211EDF8: .word 0x00009CCD
_0211EDFC: .word 0x0000EA3C
	arm_func_end FUN_ov61_0211edac

	arm_func_start FUN_ov61_0211ee00
FUN_ov61_0211ee00: ; 0x0211EE00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211EE48 ; =0x0211F474
	str r0, [r4, #0x14]
	ldr r0, _0211EE4C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211EE50 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211EE48: .word 0x0211F474
_0211EE4C: .word 0x00009CCD
_0211EE50: .word 0x0000EA3C
	arm_func_end FUN_ov61_0211ee00

	arm_func_start FUN_ov61_0211ee54
FUN_ov61_0211ee54: ; 0x0211EE54
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211EE9C ; =0x0211F524
	str r0, [r4, #0x14]
	ldr r0, _0211EEA0 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211EEA4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211EE9C: .word 0x0211F524
_0211EEA0: .word 0x00009CCD
_0211EEA4: .word 0x0000EA3C
	arm_func_end FUN_ov61_0211ee54

_0211EEA8:
	.byte 0x58, 0xed, 0x11, 0x02, 0xac, 0xed, 0x11, 0x02, 0x00, 0xee, 0x11, 0x02, 0x54, 0xee, 0x11, 0x02 ; 0211EEA8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8e, 0xb5, 0x00, 0x00, 0x8c, 0xdc, 0x00, 0x00 ; 0211EEB8
	.byte 0x94, 0xaa, 0x00, 0x00, 0x98, 0x5a, 0x00, 0x00, 0x8e, 0x4f, 0x00, 0x00, 0x8b, 0xe3, 0x00, 0x00 ; 0211EEC8
	.byte 0x93, 0xf1, 0x00, 0x00, 0x8f, 0x5c, 0x00, 0x00, 0x88, 0xea, 0x00, 0x00, 0x8e, 0x6c, 0x00, 0x00 ; 0211EED8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211EEE8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdc, 0xee, 0x11, 0x02, 0xe0, 0xee, 0x11, 0x02 ; 0211EEF8
	.byte 0xd8, 0xee, 0x11, 0x02, 0xd0, 0xee, 0x11, 0x02, 0xe4, 0xee, 0x11, 0x02, 0xc4, 0xee, 0x11, 0x02 ; 0211EF08
	.byte 0xcc, 0xee, 0x11, 0x02, 0xc0, 0xee, 0x11, 0x02, 0xc8, 0xee, 0x11, 0x02, 0xd4, 0xee, 0x11, 0x02 ; 0211EF18
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF28
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x36, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF38
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x38, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF48
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF58
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF68
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF78
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x39, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF88
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x38, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EF98
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x37, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EFA8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EFB8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EFC8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EFD8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EFE8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211EFF8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F008
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F018
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x37, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F028
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F038
	.byte 0x61, 0x74, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F048
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F058
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F068
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F078
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F088
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F098
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F0A8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F0B8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F0C8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F0D8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F0E8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F0F8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x36, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F108
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x6e, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F118
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x39, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F128
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x36, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F138
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F148
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F158
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F168
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F178
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F188
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F198
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F1A8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F1B8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F1C8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x6e, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F1D8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F1E8
	.byte 0x61, 0x74, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F1F8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F208
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 0211F218
	.byte 0x61, 0x74, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F228
	.byte 0x61, 0x74, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F238
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F248
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F258
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F268
	.byte 0x61, 0x74, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F278
	.byte 0x61, 0x74, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F288
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F298
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F2A8
	.byte 0x73, 0x66, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 0211F2B8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0xde, 0x11, 0x02, 0x54, 0xde, 0x11, 0x02 ; 0211F2C8
	.byte 0xe8, 0xa8, 0x11, 0x02, 0xc8, 0xaf, 0x11, 0x02, 0xb8, 0xd1, 0x11, 0x02, 0x08, 0xb2, 0x02, 0x02 ; 0211F2D8
	.byte 0x84, 0xd4, 0x11, 0x02, 0xdc, 0xd4, 0x11, 0x02, 0x5c, 0xd5, 0x11, 0x02, 0x04, 0xb2, 0x02, 0x02 ; 0211F2E8
	.byte 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02 ; 0211F2F8
	.byte 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02 ; 0211F308
	.byte 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02 ; 0211F318
	.byte 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02 ; 0211F328
	.byte 0xc8, 0xb1, 0x02, 0x02, 0x40, 0xa4, 0x11, 0x02, 0xe0, 0xa5, 0x11, 0x02, 0x1c, 0xa0, 0x11, 0x02 ; 0211F338
	.byte 0x60, 0xa0, 0x11, 0x02, 0x3c, 0xa0, 0x11, 0x02, 0x4c, 0xa0, 0x11, 0x02, 0x70, 0xa0, 0x11, 0x02 ; 0211F348
	.byte 0x28, 0xa2, 0x11, 0x02, 0x90, 0xda, 0x11, 0x02, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 0211F358
	.byte 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x6d, 0x65, 0x6e, 0x75, 0x2f, 0x4d, 0x4d, 0x53, 0x6c ; 0211F368
	.byte 0x6f, 0x74, 0x2e, 0x53, 0x50, 0x46, 0x5f, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 0211F378
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00 ; 0211F388
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69 ; 0211F398
	.byte 0x68, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00, 0x91, 0xe6, 0x00, 0x00, 0x8f, 0xcd, 0x00, 0x00 ; 0211F3A8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F3B8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F3C8
	.byte 0x54, 0xe3, 0x11, 0x02, 0x38, 0xe3, 0x11, 0x02, 0xe8, 0xa8, 0x11, 0x02, 0xc8, 0xaf, 0x11, 0x02 ; 0211F3D8
	.byte 0x88, 0xe1, 0x11, 0x02, 0x08, 0xb2, 0x02, 0x02, 0xa0, 0xe1, 0x11, 0x02, 0xb8, 0xe1, 0x11, 0x02 ; 0211F3E8
	.byte 0xc4, 0xe1, 0x11, 0x02, 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02 ; 0211F3F8
	.byte 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02 ; 0211F408
	.byte 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02 ; 0211F418
	.byte 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02 ; 0211F428
	.byte 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x3c, 0xe0, 0x11, 0x02 ; 0211F438
	.byte 0x84, 0xdf, 0x11, 0x02, 0xd8, 0xde, 0x11, 0x02, 0x44, 0xdf, 0x11, 0x02, 0xe4, 0xde, 0x11, 0x02 ; 0211F448
	.byte 0x4c, 0xa0, 0x11, 0x02, 0x70, 0xa0, 0x11, 0x02, 0x28, 0xa2, 0x11, 0x02, 0xd0, 0xe1, 0x11, 0x02 ; 0211F458
	.byte 0x6c, 0xde, 0x11, 0x02, 0x54, 0xdf, 0x11, 0x02, 0x4c, 0xe3, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00 ; 0211F468
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F478
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0xe6, 0x11, 0x02 ; 0211F488
	.byte 0x48, 0xe6, 0x11, 0x02, 0x34, 0xe6, 0x11, 0x02, 0xc8, 0xaf, 0x11, 0x02, 0xb8, 0xd1, 0x11, 0x02 ; 0211F498
	.byte 0x08, 0xb2, 0x02, 0x02, 0x84, 0xd4, 0x11, 0x02, 0xdc, 0xd4, 0x11, 0x02, 0x5c, 0xd5, 0x11, 0x02 ; 0211F4A8
	.byte 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02 ; 0211F4B8
	.byte 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02 ; 0211F4C8
	.byte 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02 ; 0211F4D8
	.byte 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02 ; 0211F4E8
	.byte 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x40, 0xa4, 0x11, 0x02, 0xe0, 0xa5, 0x11, 0x02 ; 0211F4F8
	.byte 0x58, 0xe3, 0x11, 0x02, 0x94, 0xe4, 0x11, 0x02, 0x6c, 0xe3, 0x11, 0x02, 0x4c, 0xa0, 0x11, 0x02 ; 0211F508
	.byte 0xa4, 0xe4, 0x11, 0x02, 0x10, 0xe5, 0x11, 0x02, 0x90, 0xda, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00 ; 0211F518
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211F528
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0xeb, 0x11, 0x02 ; 0211F538
	.byte 0x58, 0xeb, 0x11, 0x02, 0xe8, 0xa8, 0x11, 0x02, 0xc8, 0xaf, 0x11, 0x02, 0xa8, 0xe9, 0x11, 0x02 ; 0211F548
	.byte 0x08, 0xb2, 0x02, 0x02, 0xc0, 0xe9, 0x11, 0x02, 0xd8, 0xe9, 0x11, 0x02, 0xe4, 0xe9, 0x11, 0x02 ; 0211F558
	.byte 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02 ; 0211F568
	.byte 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02 ; 0211F578
	.byte 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02 ; 0211F588
	.byte 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02 ; 0211F598
	.byte 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x5c, 0xe8, 0x11, 0x02, 0xa4, 0xe7, 0x11, 0x02 ; 0211F5A8
	.byte 0xc8, 0xe6, 0x11, 0x02, 0x34, 0xe7, 0x11, 0x02, 0xd4, 0xe6, 0x11, 0x02, 0x4c, 0xa0, 0x11, 0x02 ; 0211F5B8
	.byte 0x70, 0xa0, 0x11, 0x02, 0x28, 0xa2, 0x11, 0x02, 0xf0, 0xe9, 0x11, 0x02, 0x60, 0xe6, 0x11, 0x02 ; 0211F5C8
	.byte 0x44, 0xe7, 0x11, 0x02, 0x6c, 0xeb, 0x11, 0x02


	.include "/macros/function.inc"
	.include "/include/overlay64.inc"

	.text
	arm_func_start FUN_ov64_02119f00
FUN_ov64_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _02119FD0 ; =0x02099ED4
	str r1, [r4, #8]
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _02119FD4 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r6, #0
	mov r5, #0xc
	add r0, r4, #0x10
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	mov r0, r6
	add r1, r4, #0x1c
	mov r2, #0x28
	bl MIi_CpuClear32
	mov r0, r6
	add r1, r4, #0x44
	mov r2, #0x14
	bl MIi_CpuClear32
	ldr r0, _02119FD8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	str r6, [r4, #0x6c]
	str r6, [r4, #0x70]
	str r6, [r4, #0x74]
	mov r0, r4
	bl FUN_ov64_0211a2e4
	mov r2, r5
	add r0, r4, #0x7c
	mov r1, r6
	bl MI_CpuFill8
	str r6, [r4, #0x88]
	str r6, [r4, #0x8c]
	str r6, [r4, #0x90]
	str r6, [r4, #0x94]
	str r6, [r4, #0x98]
	str r6, [r4, #0x9c]
	str r6, [r4, #0xa0]
	str r6, [r4, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_02119FD0: .word 0x02099ED4
_02119FD4: .word 0x02099EB4
_02119FD8: .word 0x02099F38
	arm_func_end FUN_ov64_02119f00

	arm_func_start FUN_ov64_02119fdc
FUN_ov64_02119fdc: ; 0x02119FDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r1, #0x4000000
	mov r10, r0
	ldr r0, [r1]
	ldr r2, [r10, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A1A0 ; =0x02099ED4
	str r2, [r1]
	ldr r0, [r0]
	ldr r4, _0211A1A4 ; =0x02099F38
	mov r8, #0
	bl  FUN_ov16_0210e0d8
	ldr r0, _0211A1A8 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r5, _0211A1AC ; =0x0209A250
	ldr r1, [r10, #0x60]
	mov r0, r5
	bl FUN_0202e1c0
	ldr r1, [r10, #0x90]
	mov r0, r5
	bl FUN_0202e1c0
	ldr r1, [r10, #0x8c]
	mov r0, r5
	bl FUN_0202e1c0
	mov r0, r5
	ldr r1, [r10, #0x94]
	bl FUN_0202e1c0
	ldr r1, [r10, #0x9c]
	cmp r1, #0
	beq _0211A064
	ldr r0, [r4]
	bl FUN_02058ee0
_0211A064:
	ldr r1, [r10, #0x98]
	cmp r1, #0
	beq _0211A078
	ldr r0, [r4]
	bl FUN_02058ee0
_0211A078:
	ldr r1, [r10, #0xa0]
	cmp r1, #0
	beq _0211A08C
	ldr r0, [r4]
	bl FUN_02058ee0
_0211A08C:
	ldr r1, [r10, #0x88]
	cmp r1, #0
	beq _0211A0A4
	ldr r0, [r4]
	bl FUN_02058ee0
	str r8, [r10, #0x88]
_0211A0A4:
	mov r9, #0
	b _0211A0D0
_0211A0AC:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x7c]
	cmp r1, #0
	beq _0211A0CC
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r10, r9, lsl #2
	str r8, [r0, #0x7c]
_0211A0CC:
	add r9, r9, #1
_0211A0D0:
	cmp r9, #3
	blt _0211A0AC
	mov r9, #0
	b _0211A104
_0211A0E0:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x44]
	cmp r1, #0
	beq _0211A100
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r10, r9, lsl #2
	str r8, [r0, #0x44]
_0211A100:
	add r9, r9, #1
_0211A104:
	cmp r9, #5
	blt _0211A0E0
	mov r9, #0
	b _0211A138
_0211A114:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211A134
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r10, r9, lsl #2
	str r8, [r0, #0x1c]
_0211A134:
	add r9, r9, #1
_0211A138:
	cmp r9, #0xa
	blt _0211A114
	ldr r0, [r4]
	bl  FUN_ov16_021123c4
	mov r4, #0xc
	mov r9, #0
	add r7, r10, #0x10
	mov r11, #1
	mov r5, r4
	mov r6, r4
	b _0211A194
_0211A164:
	mla r0, r9, r4, r7
	mov r1, r11
	bl  FUN_ov16_020f338c
	mla r0, r9, r5, r7
	bl  FUN_ov16_020f33fc
	mla r0, r9, r6, r10
	str r8, [r0, #0x10]
	str r8, [r0, #0x14]
	strb r8, [r0, #0x18]
	strb r8, [r0, #0x19]
	strb r8, [r0, #0x1a]
	add r9, r9, #1
_0211A194:
	cmp r9, #1
	blt _0211A164
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A1A0: .word 0x02099ED4
_0211A1A4: .word 0x02099F38
_0211A1A8: .word 0x02099EB4
_0211A1AC: .word 0x0209A250
	arm_func_end FUN_ov64_02119fdc

	arm_func_start FUN_ov64_0211a1b0
FUN_ov64_0211a1b0: ; 0x0211A1B0
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xc]
	cmp r2, #5
	ldmnefd sp!, {r3, pc}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #6
	str r1, [r0, #0xc]
	ldr r0, _0211A1E0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211A1E0: .word 0x0209AC44
	arm_func_end FUN_ov64_0211a1b0

	arm_func_start FUN_ov64_0211a1e4
FUN_ov64_0211a1e4: ; 0x0211A1E4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xc]
	cmp r2, #5
	ldreqh r1, [r1, #4]
	cmpeq r1, #1
	ldmnefd sp!, {r3, pc}
	mov r1, #6
	str r1, [r0, #0xc]
	ldr r0, _0211A214 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211A214: .word 0x0209AC44
	arm_func_end FUN_ov64_0211a1e4

	arm_func_start FUN_ov64_0211a218
FUN_ov64_0211a218: ; 0x0211A218
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211A278
_0211A22C: ; jump table
	b _0211A24C ; case 0
	b _0211A254 ; case 1
	b _0211A278 ; case 2
	b _0211A25C ; case 3
	b _0211A264 ; case 4
	b _0211A278 ; case 5
	b _0211A26C ; case 6
	b _0211A274 ; case 7
_0211A24C:
	bl FUN_ov64_0211a628
	b _0211A278
_0211A254:
	bl FUN_ov64_0211a700
	b _0211A278
_0211A25C:
	bl FUN_ov64_0211a77c
	b _0211A278
_0211A264:
	bl FUN_ov64_0211a800
	b _0211A278
_0211A26C:
	bl FUN_ov64_0211a858
	b _0211A278
_0211A274:
	bl FUN_ov64_0211a88c
_0211A278:
	ldr r0, _0211A2D4 ; =0x02099ED4
	ldr r4, _0211A2D8 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A2B0
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A2BC
_0211A2B0:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A2BC:
	bl FUN_0201fdac
	ldr r2, _0211A2DC ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldmfd sp!, {r4, pc}
_0211A2D4: .word 0x02099ED4
_0211A2D8: .word 0x0209A110
_0211A2DC: .word 0x02099F58
	arm_func_end FUN_ov64_0211a218

	arm_func_start FUN_ov64_0211a2e0
FUN_ov64_0211a2e0: ; 0x0211A2E0
	bx lr
	arm_func_end FUN_ov64_0211a2e0

	arm_func_start FUN_ov64_0211a2e4
FUN_ov64_0211a2e4: ; 0x0211A2E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r5, #0
	ldr r3, _0211A60C ; =0x0209A250
	str r5, [r4, #0x60]
	ldr r0, [r3]
	ldr r1, _0211A610 ; =0x0211BA6C
	cmp r0, #0
	beq _0211A328
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r6, #1
	add r2, r4, #0x60
	str r6, [sp, #0xc]
	bl FUN_0202eff0
_0211A328:
	mov r0, #0x64
	mov r8, #2
	bl  FUN_ov16_020ef8d4
	cmp r0, #0x46
	movlo r8, #0
	blo _0211A348
	cmp r0, #0x5a
	movlo r8, #1
_0211A348:
	ldr r0, _0211A614 ; =0x0209BA20
	bl FUN_02073a10
	strh r0, [r4, #0x58]
	ldrh r0, [r4, #0x58]
	mov r1, r5
	bl  FUN_ov16_020efa9c
	mov r6, r0
	ldr r0, _0211A618 ; =0x020A9C40
	bl FUN_020460fc
	ldr r1, _0211A61C ; =0x0211B82C
	str r0, [r4, #0x5c]
	ldr r7, [r1, r0, lsl #3]
	str r5, [r4, #0x64]
	sub r0, r7, #0x14
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _0211A43C
_0211A38C: ; jump table
	b _0211A424 ; case 0
	b _0211A43C ; case 1
	b _0211A430 ; case 2
	b _0211A43C ; case 3
	b _0211A43C ; case 4
	b _0211A43C ; case 5
	b _0211A43C ; case 6
	b _0211A43C ; case 7
	b _0211A43C ; case 8
	b _0211A43C ; case 9
	b _0211A3D0 ; case 10
	b _0211A3DC ; case 11
	b _0211A3F4 ; case 12
	b _0211A3E8 ; case 13
	b _0211A400 ; case 14
	b _0211A40C ; case 15
	b _0211A418 ; case 16
_0211A3D0:
	mov r0, r6
	bl FUN_0206cd50
	b _0211A438
_0211A3DC:
	mov r0, r6
	bl FUN_0206cd10
	b _0211A438
_0211A3E8:
	mov r0, r6
	bl FUN_0206cd40
	b _0211A438
_0211A3F4:
	mov r0, r6
	bl FUN_0206cd00
	b _0211A438
_0211A400:
	mov r0, r6
	bl FUN_0206cd60
	b _0211A438
_0211A40C:
	mov r0, r6
	bl FUN_0206cd20
	b _0211A438
_0211A418:
	mov r0, r6
	bl FUN_0206cd30
	b _0211A438
_0211A424:
	mov r0, r6
	bl FUN_0206ccec
	b _0211A438
_0211A430:
	mov r0, r6
	bl FUN_0206cc94
_0211A438:
	str r0, [r4, #0x64]
_0211A43C:
	ldr r2, [r4, #0x5c]
	ldr r1, _0211A620 ; =0x0211B828
	mov r0, r6
	ldr r1, [r1, r2, lsl #3]
	add r9, r8, r1
	bl FUN_0206dcd4
	ldrb r8, [r0, #0x5d]
	ldr r5, _0211A624 ; =0x02099F44
	ldr r1, [r4, #0x60]
	mov r0, #0x28
	mla r0, r9, r0, r1
	mov r1, r8, lsl #1
	ldrh r9, [r1, r0]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	bl  FUN_ov131_021419ac
	mov r10, r0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	mov r3, r9
	bl  FUN_ov131_02141784
	mov r11, r0
	cmp r11, #0
	ble _0211A5B0
	ldr r0, [r5]
	mov r1, r7
	bl  FUN_ov131_02141364
	mov r5, r0
	sub r0, r5, #0x14
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _0211A57C
_0211A4CC: ; jump table
	b _0211A564 ; case 0
	b _0211A57C ; case 1
	b _0211A570 ; case 2
	b _0211A57C ; case 3
	b _0211A57C ; case 4
	b _0211A57C ; case 5
	b _0211A57C ; case 6
	b _0211A57C ; case 7
	b _0211A57C ; case 8
	b _0211A57C ; case 9
	b _0211A510 ; case 10
	b _0211A51C ; case 11
	b _0211A534 ; case 12
	b _0211A528 ; case 13
	b _0211A540 ; case 14
	b _0211A54C ; case 15
	b _0211A558 ; case 16
_0211A510:
	mov r0, r6
	bl FUN_0206cd50
	b _0211A578
_0211A51C:
	mov r0, r6
	bl FUN_0206cd10
	b _0211A578
_0211A528:
	mov r0, r6
	bl FUN_0206cd40
	b _0211A578
_0211A534:
	mov r0, r6
	bl FUN_0206cd00
	b _0211A578
_0211A540:
	mov r0, r6
	bl FUN_0206cd60
	b _0211A578
_0211A54C:
	mov r0, r6
	bl FUN_0206cd20
	b _0211A578
_0211A558:
	mov r0, r6
	bl FUN_0206cd30
	b _0211A578
_0211A564:
	mov r0, r6
	bl FUN_0206ccec
	b _0211A578
_0211A570:
	mov r0, r6
	bl FUN_0206cc94
_0211A578:
	str r0, [r4, #0x6c]
_0211A57C:
	ldr r1, [r4, #0x6c]
	ldr r2, _0211A620 ; =0x0211B828
	sub r1, r1, r11
	mov r0, #0
	str r1, [r4, #0x70]
_0211A590:
	add r1, r2, r0, lsl #3
	ldr r1, [r1, #4]
	cmp r5, r1
	streq r0, [r4, #0x74]
	beq _0211A5B0
	add r0, r0, #1
	cmp r0, #0xa
	blt _0211A590
_0211A5B0:
	mov r5, #1
	ldr r0, _0211A624 ; =0x02099F44
	str r5, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r7
	mov r3, r9
	bl  FUN_ov131_02141528
	mov r1, #0
	str r1, [r4, #0x78]
	cmp r0, r10
	ldr r1, [r4, #0x64]
	streq r5, [r4, #0x78]
	add r0, r1, r0
	cmp r8, #0x13
	str r0, [r4, #0x68]
	addlt r8, r8, #1
	mov r0, r6
	bl FUN_0206dcd4
	and r1, r8, #0xff
	bl FUN_0206e9ec
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A60C: .word 0x0209A250
_0211A610: .word 0x0211BA6C
_0211A614: .word 0x0209BA20
_0211A618: .word 0x020A9C40
_0211A61C: .word 0x0211B82C
_0211A620: .word 0x0211B828
_0211A624: .word 0x02099F44
	arm_func_end FUN_ov64_0211a2e4

	arm_func_start FUN_ov64_0211a628
FUN_ov64_0211a628: ; 0x0211A628
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _0211A6EC ; =0x0211BA8C
	add r1, r4, #0x10
	bl  FUN_ov16_020f3054
	ldr r3, _0211A6F0 ; =0x0209A250
	ldr r1, _0211A6F4 ; =0x0211BAB0
	ldr r0, [r3]
	cmp r0, #0
	beq _0211A674
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x8c
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0211A674:
	ldr r3, _0211A6F0 ; =0x0209A250
	ldr r1, _0211A6F8 ; =0x0211BAC8
	ldr r0, [r3]
	cmp r0, #0
	beq _0211A6A8
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x90
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0211A6A8:
	ldr r3, _0211A6F0 ; =0x0209A250
	ldr r1, _0211A6FC ; =0x0211BAE0
	ldr r0, [r3]
	cmp r0, #0
	beq _0211A6DC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x94
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0211A6DC:
	mov r0, #1
	str r0, [r4, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211A6EC: .word 0x0211BA8C
_0211A6F0: .word 0x0209A250
_0211A6F4: .word 0x0211BAB0
_0211A6F8: .word 0x0211BAC8
_0211A6FC: .word 0x0211BAE0
	arm_func_end FUN_ov64_0211a628

	arm_func_start FUN_ov64_0211a700
FUN_ov64_0211a700: ; 0x0211A700
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x5c
	mov r5, r0
	add r0, r5, #0x10
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r4, _0211A774 ; =0x0211B880
	add lr, sp, #4
	mov r12, #5
_0211A730:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211A730
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x10]
	ldr r0, _0211A778 ; =0x0211BAF8
	add r2, sp, #4
	add r3, r5, #0x1c
	bl  FUN_ov16_020f5450
	mov r0, #3
	str r0, [r5, #0xc]
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, pc}
_0211A774: .word 0x0211B880
_0211A778: .word 0x0211BAF8
	arm_func_end FUN_ov64_0211a700

	arm_func_start FUN_ov64_0211a77c
FUN_ov64_0211a77c: ; 0x0211A77C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211A7FC ; =0x02099F38
	b _0211A7E8
_0211A794:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211A7E4
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x1c]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #1
	beq _0211A7E4
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x1c]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211A7E4:
	add r7, r7, #1
_0211A7E8:
	cmp r7, #0xa
	blt _0211A794
	mov r0, #4
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A7FC: .word 0x02099F38
	arm_func_end FUN_ov64_0211a77c

	arm_func_start FUN_ov64_0211a800
FUN_ov64_0211a800: ; 0x0211A800
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov64_0211a8c8
	mov r0, r4
	bl FUN_ov64_0211a93c
	mov r0, r4
	bl FUN_ov64_0211acc0
	mov r0, r4
	bl FUN_ov64_0211ae2c
	mov r0, r4
	bl FUN_ov64_0211b13c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r0, _0211A854 ; =0x0209AC44
	mov r1, #0x16
	bl FUN_0202cf6c
	mov r0, #5
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211A854: .word 0x0209AC44
	arm_func_end FUN_ov64_0211a800

	arm_func_start FUN_ov64_0211a858
FUN_ov64_0211a858: ; 0x0211A858
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #6
	bl  FUN_ov16_020f153c
	ldr r0, _0211A884 ; =0x020A9C40
	ldr r1, _0211A888 ; =0x00000193
	mov r2, #0
	bl FUN_020460a8
	mov r0, #7
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211A884: .word 0x020A9C40
_0211A888: .word 0x00000193
	arm_func_end FUN_ov64_0211a858

	arm_func_start FUN_ov64_0211a88c
FUN_ov64_0211a88c: ; 0x0211A88C
	stmfd sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov64_0211a88c

	arm_func_start FUN_ov64_0211a8c8
FUN_ov64_0211a8c8: ; 0x0211A8C8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r0, [r5, #0x44]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A938 ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_02112724
	mov r1, r0
	str r1, [r5, #0x44]
	mov r3, #0
	str r3, [sp, #0x14]
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x1f4
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r5
	str r4, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211A938: .word 0x02099F38
	arm_func_end FUN_ov64_0211a8c8

	arm_func_start FUN_ov64_0211a93c
FUN_ov64_0211a93c: ; 0x0211A93C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	mov r10, r0
	ldrh r0, [r10, #0x58]
	mov r1, #0
	ldr r11, _0211ACA0 ; =0x02099F38
	mov r7, r1
	bl  FUN_ov16_020efa9c
	mov r4, r0
	bl  FUN_ov16_020f081c
	ldr r5, _0211ACA4 ; =0x0209BA20
	mov r1, r0
	mov r0, r5
	bl FUN_0207249c
	mov r6, r0
	ldrh r1, [r10, #0x58]
	mov r0, r5
	add r2, sp, #0x1c
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x84
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r4
	bl  FUN_ov16_020f0bcc
	ldrh r9, [r6, #0x28]
	mov r5, r0
	ldr r0, [r11]
	cmp r9, #0
	ldreqh r9, [r6, #0x26]
	mov r2, #1
	mov r1, #3
	str r7, [sp, #0x18]
	str r7, [sp, #0x14]
	bl  FUN_ov16_02112724
	mov r6, r0
	add r0, sp, #0x14
	str r6, [r10, #0x48]
	str r0, [sp]
	ldr r0, [r10, #0x8c]
	add r3, sp, #0x18
	mov r1, r4
	mov r2, r7
	mov r8, #0x30
	bl  FUN_ov16_020f366c
	cmp r0, #0
	beq _0211AA2C
	ldr r12, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [r11]
	mov r1, #1
	str r7, [sp]
	stmib sp, {r1, r7}
	str r3, [sp, #0xc]
	ldr r2, _0211ACA8 ; =0x0211BB1C
	mov r3, r7
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	str r0, [r10, #0x98]
_0211AA2C:
	mov r0, r4
	mov r1, r9
	bl  FUN_ov16_020f0b3c
	mov r9, r0
	mov r0, r4
	mov r2, r5
	mov r1, r9
	bl  FUN_ov16_020f369c
	add r1, sp, #0x18
	str r1, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r5, #0
	ldr r0, [r10, #0x94]
	mov r1, r4
	mov r2, r9
	mov r3, r5
	bl  FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211AAB4
	ldr r0, _0211ACA0 ; =0x02099F38
	ldr r11, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #1
	str r5, [sp]
	stmib sp, {r1, r5}
	str r2, [sp, #0xc]
	ldr r2, _0211ACAC ; =0x0211BB34
	mov r3, r5
	mov r1, #5
	str r11, [sp, #0x10]
	bl FUN_02058800
	str r0, [r10, #0xa0]
_0211AAB4:
	add r0, sp, #0x14
	mov r5, #0
	str r0, [sp]
	ldr r0, [r10, #0x90]
	add r3, sp, #0x18
	mov r1, r9
	mov r2, r5
	bl  FUN_ov16_020f3744
	cmp r0, #0
	beq _0211AB14
	ldr r0, _0211ACA0 ; =0x02099F38
	ldr r9, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _0211ACB0 ; =0x0211BB4C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, r5
	mov r1, #3
	str r9, [sp, #0x10]
	bl FUN_02058800
	str r0, [r10, #0x9c]
_0211AB14:
	ldr r5, _0211ACA0 ; =0x02099F38
	ldr r1, [r10, #0x98]
	ldr r0, [r5]
	bl  FUN_ov16_021146a4
	mov r11, #0
	ldr r1, [r10, #0x98]
	ldr r0, [r5]
	mov r2, r11
	mov r3, r11
	bl FUN_02059038
	ldr r3, [r10, #0x98]
	ldr r0, [r5]
	mov r1, r6
	add r2, r7, #1
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r6
	add r2, r7, #1
	mov r3, r11
	bl  FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, #0x10
	ldr r0, [r5]
	mov r1, r6
	add r2, r7, #1
	mov r3, r3
	bl  FUN_ov16_02113b78
	ldr r0, [r5]
	ldr r3, _0211ACB4 ; =0x000001C2
	mov r1, r6
	add r2, r7, #1
	bl  FUN_ov16_021139bc
	ldr r0, [r5]
	ldr r1, [r10, #0xa0]
	bl  FUN_ov16_021146a4
	ldr r1, [r10, #0x9c]
	cmp r1, #0
	beq _0211AC14
	ldr r0, [r5]
	bl FUN_0205998c
	movs r9, r0
	beq _0211AC14
	ldr r0, _0211ACB8 ; =0x02099F04
	ldr r1, [r9, #4]
	ldr r2, [r0]
	mov r0, r4
	bl  FUN_ov16_020f0c30 ; may be ov17
	ldr r0, [r5]
	ldr r1, [r10, #0xa0]
	mov r2, r11
	bl FUN_02059a78
	mov r5, r0
	mov r4, #0x20
	ldr r0, [r9, #4]
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
_0211AC14:
	ldr r4, _0211ACA0 ; =0x02099F38
	mov r5, #0
	ldr r1, [r10, #0xa0]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r3, [r10, #0xa0]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r5
	mov r1, r6
	add r2, r7, #2
	bl  FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, #0x10
	mov r3, r0
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	bl  FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r3, _0211ACBC ; =0x000001C3
	mov r1, r6
	add r2, r7, #2
	bl  FUN_ov16_021139bc
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACA0: .word 0x02099F38
_0211ACA4: .word 0x0209BA20
_0211ACA8: .word 0x0211BB1C
_0211ACAC: .word 0x0211BB34
_0211ACB0: .word 0x0211BB4C
_0211ACB4: .word 0x000001C2
_0211ACB8: .word 0x02099F04
_0211ACBC: .word 0x000001C3
	arm_func_end FUN_ov64_0211a93c

	arm_func_start FUN_ov64_0211acc0
FUN_ov64_0211acc0: ; 0x0211ACC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x38
	mov r8, r0
	ldr r0, [r8, #0x4c]
	cmp r0, #0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r0, [r8, #0x58]
	mov r7, #0
	mov r1, r7
	bl  FUN_ov16_020efa9c
	mov r4, #1
	ldr r1, _0211AE20 ; =0x02099F38
	mov r6, r0
	ldr r0, [r1]
	mov r2, r4
	mov r1, #3
	bl  FUN_ov16_02112724
	mov r5, r0
	add r9, sp, #0x18
	str r5, [r8, #0x4c]
	mov r0, r9
	add r1, r6, #0x2c
	mov r2, r6
	str r7, [sp, #0x14]
	bl FUN_0204378c
	ldr r0, _0211AE24 ; =0x02099ED0
	add r1, r6, #0x2c
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x96
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	mov r1, r9
	add r9, r0, #0x5a
	add r0, r8, #0x7c
	stmia sp, {r0, r9}
	mov r3, #0x26
	mov r2, #0x190
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	str r4, [sp, #0x10]
	add r4, sp, #0x14
	mov r0, r8
	mov r2, r5
	mov r3, r4
	bl FUN_ov64_0211b5b0
	ldr r9, _0211AE28 ; =0x02099F50
	mov r1, r6
	ldr r0, [r9]
	bl FUN_0204294c
	rsb r0, r0, #0x96
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r3, r0, #0x58
	add r0, r8, #0x80
	stmia sp, {r0, r3}
	mov r2, #0x2f
	add r1, r2, #0x160
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov64_0211b5b0
	ldr r0, [r9]
	add r1, r6, #0x1c
	bl FUN_0204294c
	rsb r0, r0, #0x96
	add r0, r0, r0, lsr #31
	mov r2, r5
	mov r0, r0, asr #1
	add r1, r6, #0x1c
	add r6, r0, #0x58
	add r0, r8, #0x84
	stmia sp, {r0, r6}
	mov r5, #0x3e
	mov r3, r4
	add r4, r5, #0x150
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r8
	str r7, [sp, #0x10]
	bl FUN_ov64_0211b5b0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AE20: .word 0x02099F38
_0211AE24: .word 0x02099ED0
_0211AE28: .word 0x02099F50
	arm_func_end FUN_ov64_0211acc0

	arm_func_start FUN_ov64_0211ae2c
FUN_ov64_0211ae2c: ; 0x0211AE2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r0, [r10, #0x50]
	mov r11, #1
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211B130 ; =0x02099F38
	mov r2, r11
	ldr r0, [r0]
	mov r1, #0x11
	bl  FUN_ov16_02112724
	mov r5, r0
	str r5, [r10, #0x50]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r10, #0x5c]
	mov r8, #0x50
	sub r0, r0, #1
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	ldr r9, _0211B134 ; =0x000001EA
	str r8, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #2
	str r11, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	ldr r6, [r10, #0x64]
	ldr r4, _0211B138 ; =0x66666667
	mov r7, #0xb0
_0211AEB8:
	smull r1, r2, r4, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r6, r1
	stmia sp, {r2, r7, r8}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #5
	str r11, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	mov r1, r6
	smull r0, r6, r4, r1
	mov r0, r1, lsr #0x1f
	add r6, r0, r6, asr #2
	cmp r6, #0
	sub r7, r7, #8
	bgt _0211AEB8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb8
	str r0, [sp, #4]
	mov r8, #0x50
	str r8, [sp, #8]
	str r9, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #3
	mov r11, #1
	bl FUN_ov64_0211b4f0
	ldr r6, [r10, #0x68]
	ldr r4, _0211B138 ; =0x66666667
	mov r7, #0xd0
_0211AF50:
	smull r1, r2, r4, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r6, r1
	stmia sp, {r2, r7, r8}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #6
	str r11, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	mov r1, r6
	smull r0, r6, r4, r1
	mov r0, r1, lsr #0x1f
	add r6, r0, r6, asr #2
	cmp r6, #0
	sub r7, r7, #8
	bgt _0211AF50
	ldr r0, [r10, #0x6c]
	cmp r0, #0
	ldrne r1, [r10, #0x74]
	cmpne r1, #0
	ldrne r0, [r10, #0x70]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r0, r1, #1
	str r0, [sp]
	mov r8, #0x68
	str r8, [sp, #4]
	str r8, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #2
	str r11, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	ldr r6, [r10, #0x6c]
	ldr r4, _0211B138 ; =0x66666667
	mov r7, #0xb0
	mov r11, #0xa
_0211B004:
	smull r1, r2, r4, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	sub r2, r6, r0
	stmia sp, {r2, r7, r8}
	str r9, [sp, #0xc]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #5
	bl FUN_ov64_0211b4f0
	mov r1, r6
	smull r0, r6, r4, r1
	mov r0, r1, lsr #0x1f
	add r6, r0, r6, asr #2
	cmp r6, #0
	sub r7, r7, #8
	bgt _0211B004
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb8
	str r0, [sp, #4]
	mov r8, #0x68
	str r8, [sp, #8]
	mov r4, #1
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #4
	str r4, [sp, #0x10]
	mov r11, r4
	bl FUN_ov64_0211b4f0
	ldr r6, [r10, #0x70]
	ldr r4, _0211B138 ; =0x66666667
	mov r7, #0xd0
_0211B0A0:
	smull r1, r2, r4, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r6, r1
	stmia sp, {r2, r7, r8}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, #7
	str r11, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	mov r1, r6
	smull r0, r6, r4, r1
	mov r0, r1, lsr #0x1f
	add r6, r0, r6, asr #2
	cmp r6, #0
	sub r7, r7, #8
	bgt _0211B0A0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x14
	mov r3, r11
	str r11, [sp, #0x10]
	bl FUN_ov64_0211b4f0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B130: .word 0x02099F38
_0211B134: .word 0x000001EA
_0211B138: .word 0x66666667
	arm_func_end FUN_ov64_0211ae2c

	arm_func_start FUN_ov64_0211b13c
FUN_ov64_0211b13c: ; 0x0211B13C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xd4
	mov r4, r0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	addne sp, sp, #0xd4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r4, #0x58]
	mov r8, #0
	mov r1, r8
	bl  FUN_ov16_020efa9c
	mov r6, #1
	ldr r1, _0211B4B4 ; =0x02099F38
	str r0, [sp, #0x18]
	ldr r0, [r1]
	mov r2, r6
	mov r1, #5
	bl  FUN_ov16_02112724
	str r0, [r4, #0x54]
	str r8, [sp, #0x20]
	str r0, [sp, #0x14]
	ldr r2, [r4, #0x68]
	ldr r1, [r4, #0x64]
	add r0, sp, #0x54
	sub r7, r2, r1
	mov r1, r8
	mov r2, #0x80
	bl MI_CpuFill8
	add r5, sp, #0x44
	mov r9, #0x10
	mov r1, r8
	mov r0, r5
	mov r2, r9
	bl MI_CpuFill8
	add r0, sp, #0x34
	mov r1, r8
	mov r2, r9
	bl MI_CpuFill8
	mov r2, r9
	add r0, sp, #0x24
	mov r1, r8
	bl MI_CpuFill8
	str r8, [sp]
	str r8, [sp, #4]
	mov r0, #0x88
	str r0, [sp, #8]
	ldr r1, _0211B4B8 ; =0x000001EA
	mov r3, #9
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r0, r4
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	bl FUN_ov64_0211b4f0
	ldr r0, [r4, #0x5c]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211B298
_0211B224: ; jump table
	b _0211B298 ; case 0
	b _0211B24C ; case 1
	b _0211B254 ; case 2
	b _0211B25C ; case 3
	b _0211B264 ; case 4
	b _0211B26C ; case 5
	b _0211B274 ; case 6
	b _0211B27C ; case 7
	b _0211B284 ; case 8
	b _0211B28C ; case 9
_0211B24C:
	ldr r1, _0211B4BC ; =0x0211BB64
	b _0211B290
_0211B254:
	ldr r1, _0211B4C0 ; =0x0211BB6C
	b _0211B290
_0211B25C:
	ldr r1, _0211B4C4 ; =0x0211BB74
	b _0211B290
_0211B264:
	ldr r1, _0211B4C8 ; =0x0211BB84
	b _0211B290
_0211B26C:
	ldr r1, _0211B4CC ; =0x0211BB8C
	b _0211B290
_0211B274:
	ldr r1, _0211B4D0 ; =0x0211BB98
	b _0211B290
_0211B27C:
	ldr r1, _0211B4D4 ; =0x0211BBA4
	b _0211B290
_0211B284:
	ldr r1, _0211B4D8 ; =0x0211BBAC
	b _0211B290
_0211B28C:
	ldr r1, _0211B4DC ; =0x0211BBB4
_0211B290:
	mov r0, r5
	bl FUN_02023c40
_0211B298:
	mov r6, #0
	ldr r11, _0211B4E0 ; =0x40240000
	mov r9, r6
_0211B2A4:
	mov r0, r6
	bl FUN_0201f1c4
	mov r2, r0
	mov r3, r1
	mov r0, r9
	mov r1, r11
	bl FUN_02028820
	mov r5, r0
	mov r10, r1
	mov r0, r7
	bl FUN_0201f1c4
	mov r2, r5
	mov r3, r10
	bl FUN_02020af8
	bl FUN_0201fe20
	cmp r0, #0
	addne r8, r8, #1
	addne r6, r6, #1
	bne _0211B2A4
	sub r5, r8, #1
	add r11, sp, #0x34
	b _0211B36C
_0211B2FC:
	mov r0, r9
	bl FUN_0201f204
	mov r3, r1
	mov r2, r0
	ldr r1, _0211B4E0 ; =0x40240000
	mov r0, #0
	bl FUN_02028820
	mov r6, r0
	mov r10, r1
	mov r0, r7
	bl FUN_0201f1c4
	mov r2, r6
	mov r3, r10
	bl FUN_02020af8
	bl FUN_0201fe20
	ldr r1, _0211B4E4 ; =0x66666667
	smull r2, r3, r1, r0
	mov r1, r0, lsr #0x1f
	add r3, r1, r3, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r3
	sub r3, r0, r2
	add r1, r3, #0x30
	sub r0, r5, r9
	strb r1, [r11, r0]
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_0211B36C:
	cmp r9, r8
	blt _0211B2FC
	add r6, sp, #0x24
	add r0, sp, #0x34
	mov r1, r6
	mov r5, #0
	bl  FUN_ov16_020f1f5c
	ldr r0, [r4, #0x78]
	add r3, sp, #0x44
	cmp r0, #0
	beq _0211B3B4
	ldr r0, [sp, #0x18]
	str r6, [sp]
	add r2, r0, #0x1c
	add r0, sp, #0x54
	ldr r1, _0211B4E8 ; =0x0211BBBC
	stmib sp, {r2, r3}
	b _0211B3C8
_0211B3B4:
	ldr r2, [sp, #0x18]
	ldr r1, _0211B4EC ; =0x0211BBF8
	add r0, sp, #0x54
	add r2, r2, #0x1c
	str r6, [sp]
_0211B3C8:
	bl FUN_02023c40
	ldr r6, _0211B4B4 ; =0x02099F38
	mov r1, #5
	ldr r0, [r6]
	mov r2, #3
	bl FUN_02059630
	mov r1, r0
	str r1, [r4, #0x88]
	ldr r0, [r6]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [sp, #0x20]
	ldr r0, [r6]
	add r2, r1, #1
	str r2, [sp, #0x20]
	ldr r3, [r4, #0x88]
	ldr r1, [sp, #0x14]
	and r3, r3, #0xff
	mov r8, #0x8c
	mov r7, #0x190
	bl  FUN_ov16_021137dc
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	mov r3, #0x100
	bl  FUN_ov16_02113d08
	str r5, [sp]
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	mov r3, r5
	bl  FUN_ov16_02113d88
	str r8, [sp]
	mov r3, r5, lsl #0x10
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	mov r2, r7, lsl #0x10
	mov r3, r2, lsr #0x10
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	bl  FUN_ov16_021139bc
	mov r2, #1
	str r2, [sp]
	stmib sp, {r2, r5}
	str r5, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r4, #0x88]
	add r0, sp, #0x54
	mov r3, #9
	bl  FUN_ov16_020f2304
	add sp, sp, #0xd4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B4B4: .word 0x02099F38
_0211B4B8: .word 0x000001EA
_0211B4BC: .word 0x0211BB64
_0211B4C0: .word 0x0211BB6C
_0211B4C4: .word 0x0211BB74
_0211B4C8: .word 0x0211BB84
_0211B4CC: .word 0x0211BB8C
_0211B4D0: .word 0x0211BB98
_0211B4D4: .word 0x0211BBA4
_0211B4D8: .word 0x0211BBAC
_0211B4DC: .word 0x0211BBB4
_0211B4E0: .word 0x40240000
_0211B4E4: .word 0x66666667
_0211B4E8: .word 0x0211BBBC
_0211B4EC: .word 0x0211BBF8
	arm_func_end FUN_ov64_0211b13c

	arm_func_start FUN_ov64_0211b4f0
FUN_ov64_0211b4f0: ; 0x0211B4F0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x1c]
	ldr r6, _0211B5AC ; =0x02099F38
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
_0211B5AC: .word 0x02099F38
	arm_func_end FUN_ov64_0211b4f0

	arm_func_start FUN_ov64_0211b5b0
FUN_ov64_0211b5b0: ; 0x0211B5B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	add r10, sp, #0x2c
	mov r8, #0
	mov r11, r1
	mov r6, r2
	mov r0, r10
	mov r1, r8
	mov r2, #4
	mov r5, r3
	str r8, [sp, #0x24]
	ldr r4, [sp, #0x58]
	mov r9, #0x100
	mov r7, #0x10
	bl MI_CpuFill8
	mov r2, #4
	mov r1, r8
	add r0, sp, #0x28
	bl MI_CpuFill8
	mov r0, r9
	mov r1, r7
	mov r2, r10
	add r3, sp, #0x28
	str r8, [r4]
	bl FUN_02054070
	ldr r7, _0211B804 ; =0x02099F38
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [r7]
	bl FUN_02059630
	str r0, [r4]
	mov r1, r0
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
	ldr r1, [r4]
	ldr r0, [r7]
	str r8, [sp, #0x20]
	add r2, sp, #0x20
	add r3, sp, #0x24
	bl FUN_0205935c
	ldr r0, [r7]
	ldr r1, [r4]
	ldr r9, [sp, #0x20]
	bl  FUN_ov16_02111438
	mov r10, r0
	ldr r0, [r7]
	ldr r1, [r4]
	bl  FUN_ov16_02111458
	mov r7, r0
	ldrb r0, [sp, #0x68]
	mov r1, #1
	cmp r0, #0
	beq _0211B6DC
	ldr r0, _0211B808 ; =0x02099ED0
	mov r2, #2
	ldr r0, [r0]
	bl FUN_02043310
	stmia sp, {r7, r8}
	str r8, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, _0211B808 ; =0x02099ED0
	str r8, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r11
	mov r2, r9
	mov r3, r10
	bl FUN_020425fc
	ldr r0, _0211B808 ; =0x02099ED0
	b _0211B728
_0211B6DC:
	ldr r0, _0211B80C ; =0x02099F50
	mov r2, r8
	ldr r0, [r0]
	bl FUN_02043310
	stmia sp, {r7, r8}
	str r8, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	ldr r0, _0211B80C ; =0x02099F50
	str r8, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r11
	mov r2, r9
	mov r3, r10
	bl FUN_020425fc
	ldr r0, _0211B80C ; =0x02099F50
_0211B728:
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r8, _0211B804 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r4]
	ldr r0, [r8]
	mov r11, #0
	str r11, [sp]
	str r11, [sp, #4]
	mov r2, r9
	str r11, [sp, #8]
	bl FUN_02059288
	ldr r0, [r5]
	mov r1, r6
	add r2, r0, #1
	str r2, [r5]
	ldr r3, [r4]
	ldr r0, [r8]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	str r11, [sp]
	mov r3, r11
	ldr r0, [r8]
	mov r1, r6
	ldr r2, [r5]
	bl  FUN_ov16_02113d88
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r10, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r8]
	mov r1, r6
	ldr r2, [r5]
	bl  FUN_ov16_02113d08
	ldr r0, [sp, #0x60]
	mov r1, r6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [r5]
	ldr r3, [sp, #0x5c]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r0, [r8]
	mov r1, r6
	ldr r2, [r5]
	ldr r3, [sp, #0x64]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B804: .word 0x02099F38
_0211B808: .word 0x02099ED0
_0211B80C: .word 0x02099F50
	arm_func_end FUN_ov64_0211b5b0

	arm_func_start FUN_ov64_0211b810
FUN_ov64_0211b810: ; 0x0211B810
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov64_0211b810

	arm_func_start FUN_ov64_0211b824
FUN_ov64_0211b824: ; 0x0211B824
	bx lr
	arm_func_end FUN_ov64_0211b824
_0211B828:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x19, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xD8, 0xB9, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0xE8, 0xB9, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x98, 0xB9, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0xA8, 0xB9, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xB8, 0xB9, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x58, 0xB9, 0x11, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0x68, 0xB9, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x88, 0xB9, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xC8, 0xB9, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0x78, 0xB9, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov64_0211b8d8
FUN_ov64_0211b8d8: ; 0x0211B8D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211B91C ; =0x0211B940
	str r0, [r4, #0x10]
	ldr r0, _0211B920 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _0211B924 ; =0x0000EA3C
	mov r1, #0x800
	stmia r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B91C: .word 0x0211B940
_0211B920: .word 0x00009CCD
_0211B924: .word 0x0000EA3C
	arm_func_end FUN_ov64_0211b8d8

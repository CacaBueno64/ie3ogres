
	.include "/macros/function.inc"
	.include "/include/overlay26.inc"

	.text
	arm_func_start FUN_ov26_02119f00
FUN_ov26_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x98]
	cmp r0, #0
	bne _02119F38
	ldr r0, _02119F44 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x98]
_02119F38:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x98]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F44: .word unk_02099F38
	arm_func_end FUN_ov26_02119f00

	arm_func_start FUN_ov26_02119f48
FUN_ov26_02119f48: ; 0x02119F48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _02119FD4 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [sp, #0x24]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r1, [sp, #0x20]
	ldr r0, [r4]
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_021139bc
	mov r1, r6
	mov r2, r5
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02119FD4: .word unk_02099F38
	arm_func_end FUN_ov26_02119f48

	arm_func_start FUN_ov26_02119fd8
FUN_ov26_02119fd8: ; 0x02119FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x98]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A010 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x98]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A010: .word unk_02099F38
	arm_func_end FUN_ov26_02119fd8

	arm_func_start FUN_ov26_0211a014
FUN_ov26_0211a014: ; 0x0211A014
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x48]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A05C ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x48]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0x48]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A05C: .word unk_02099F38
	arm_func_end FUN_ov26_0211a014

	arm_func_start FUN_ov26_0211a060
FUN_ov26_0211a060: ; 0x0211A060
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, _0211A090 ; =0x0211B910
	add r0, r5, #0xa4
	mov r4, r1
	str r2, [r5]
	bl FUN_0206c0d8
	add r0, r5, #0xec
	bl FUN_ov16_02110558
	mov r0, r5
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A090: .word ov26_0211B910
	arm_func_end FUN_ov26_0211a060

	arm_func_start FUN_ov26_0211a094
FUN_ov26_0211a094: ; 0x0211A094
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xec
	bl FUN_ov16_02110578
	add r0, r4, #0xa4
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov26_0211a094

	arm_func_start FUN_ov26_0211a0b4
FUN_ov26_0211a0b4: ; 0x0211A0B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xec
	bl FUN_ov16_02110578
	add r0, r4, #0xa4
	bl FUN_0206c110
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov26_0211a0b4

	arm_func_start FUN_ov26_0211a0dc
FUN_ov26_0211a0dc: ; 0x0211A0DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x184
	mov r6, r0
	bl FUN_ov16_020f47fc
	mov r0, #0xf
	bl FUN_ov16_020f3f60
	mov r5, #1
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, r5
	bl GX_SetGraphicsMode
	ldr r2, _0211A2CC ; =0x04000008
	mov r0, r6
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A2D0 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A2D4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211A2D8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	add r0, r6, #0xc
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r6, #8]
	mov r1, r4
	mov r2, #0x3c
	bl MI_CpuFill8
	add r0, r6, #0x48
	mov r1, r4
	mov r2, #0x50
	bl MI_CpuFill8
	add r0, r6, #0x98
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	ldr r0, _0211A2DC ; =0x020A9C40
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_02045b50
	ldr r1, [sp, #8]
	ldr r0, _0211A2E0 ; =0x0209A0AC
	mov r1, r1, lsl #0x10
	mov r2, r4
	mov r1, r1, lsr #0x10
	bl FUN_0206c7dc
	strb r0, [r6, #0x160]
	mov r1, r5
	add r0, r6, #0xa4
	bl FUN_0206c158
	add r0, r6, #0xa4
	bl FUN_ov16_020efa04
	ldr r1, [sp, #4]
	add r0, r6, #0xa4
	str r1, [sp]
	ldr r3, [sp, #8]
	mov r1, r4
	mov r3, r3, lsl #0x10
	mov r2, r4
	mov r3, r3, lsr #0x10
	bl FUN_0206c300
	strb r4, [r6, #0x161]
	mov r4, r0
	ldr r0, _0211A2E4 ; =0x0211B97C
	add r1, r6, #0xc
	bl FUN_ov16_020f3054
	ldr r0, _0211A2E8 ; =0x0211B998
	add r1, r6, #0x18
	bl FUN_ov16_020f316c
	ldrb r0, [r4, #0x4d]
	ldr r3, [r6, #0x18]
	add r1, r6, #0xcc
	mov r2, #0x20
	add r0, r3, r0, lsl #5
	bl MIi_CpuCopyFast
	ldr r0, _0211A2EC ; =0x0211B9B4
	add r1, r6, #0x24
	bl FUN_ov16_020f316c
	ldr r0, _0211A2F0 ; =0x0211B9CC
	add r1, r6, #0x30
	bl FUN_ov16_020f316c
	ldr r0, _0211A2F4 ; =0x0211B9E4
	add r1, r6, #0x3c
	bl FUN_ov16_020f316c
	ldrb r2, [r4, #0x62]
	ldr r1, _0211A2F8 ; =0x0211B9FC
	add r0, sp, #0x84
	bl sprintf
	ldr r12, _0211A2FC ; =0x0211B738
	add r5, sp, #0xc
	mov r4, #7
_0211A280:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211A280
	ldmia r12, {r0, r1}
	stmia r5, {r0, r1}
	add r1, sp, #0x84
	mov r0, #0
	str r1, [sp, #0x64]
	str r0, [sp]
	ldr r1, [r6, #0xc]
	ldr r0, _0211A300 ; =0x0211BA0C
	add r2, sp, #0xc
	add r3, r6, #0x48
	bl FUN_ov16_020f5450
	mov r0, #2
	strb r0, [r6, #0xa0]
	add sp, sp, #0x184
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A2CC: .word 0x04000008
_0211A2D0: .word unk_02099EB4
_0211A2D4: .word unk_02099ED4
_0211A2D8: .word unk_02099F38
_0211A2DC: .word unk_020A9C40
_0211A2E0: .word unk_0209A0AC
_0211A2E4: .word ov26_0211B97C
_0211A2E8: .word ov26_0211B998
_0211A2EC: .word ov26_0211B9B4
_0211A2F0: .word ov26_0211B9CC
_0211A2F4: .word ov26_0211B9E4
_0211A2F8: .word ov26_0211B9FC
_0211A2FC: .word ov26_0211B738
_0211A300: .word ov26_0211BA0C
	arm_func_end FUN_ov26_0211a0dc

	arm_func_start FUN_ov26_0211a304
FUN_ov26_0211a304: ; 0x0211A304
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xe0
	mov r5, #0
	mov r4, r0
	mov r1, r5
	add r0, r4, #0xa4
	mov r11, #1
	mov r8, r5
	bl FUN_0206c6fc
	ldr r1, _0211B2C4 ; =0x0209A110
	ldr r7, _0211B2C8 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r7]
	ldr r1, [r1]
	ldr r9, _0211B2CC ; =0x000001DF
	bl FUN_ov16_0210e10c
	mov r0, r4
	bl FUN_ov26_0211b6d0
	cmp r0, #0
	addeq sp, sp, #0xe0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7]
	ldr r7, _0211B2D0 ; =0x02099F38
	mov r10, #0x1f4
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0xe0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0xa0]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0211B334
_0211A384: ; jump table
	b _0211B334 ; case 0
	b _0211B334 ; case 1
	b _0211A3AC ; case 2
	b _0211A4D8 ; case 3
	b _0211B15C ; case 4
	b _0211B0DC ; case 5
	b _0211B1DC ; case 6
	b _0211B334 ; case 7
	b _0211B244 ; case 8
	b _0211B270 ; case 9
_0211A3AC:
	add r0, sp, #0x34
	str r0, [sp]
	ldr r0, [r4, #0x24]
	add r3, sp, #0x38
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _0211A404
	ldr r0, _0211B2D0 ; =0x02099F38
	ldr r10, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r0, [r0]
	mov r3, r11
	str r5, [sp]
	stmib sp, {r3, r5}
	str r1, [sp, #0xc]
	ldr r2, _0211B2D4 ; =0x0211BA28
	mov r1, #5
	str r10, [sp, #0x10]
	bl FUN_02058800
	str r0, [r4, #0x84]
_0211A404:
	mov r0, r6
	mov r1, r9
	bl FUN_ov16_020f0b3c
	mov r9, r0
	add r1, sp, #0x38
	str r1, [sp]
	add r0, sp, #0x34
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, r6
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211A470
	ldr r5, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r0, [r7]
	mov r3, #1
	str r8, [sp]
	stmib sp, {r3, r8}
	str r1, [sp, #0xc]
	ldr r2, _0211B2D8 ; =0x0211BA40
	mov r1, #5
	str r5, [sp, #0x10]
	bl FUN_02058800
	str r0, [r4, #0x88]
_0211A470:
	add r0, sp, #0x34
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	add r3, sp, #0x38
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_020f3744
	cmp r0, #0
	beq _0211A4C8
	ldr r5, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r0, [r7]
	ldr r2, _0211B2DC ; =0x0211BA58
	str r8, [sp]
	str r8, [sp, #4]
	str r8, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #3
	mov r3, #1
	str r5, [sp, #0x10]
	bl FUN_02058800
	str r0, [r4, #0x8c]
_0211A4C8:
	mov r0, #3
	add sp, sp, #0xe0
	strb r0, [r4, #0xa0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A4D8:
	mov r0, r4
	mov r1, r5
	mov r2, #0x16
	bl FUN_ov26_02119f00
	mov r7, r0
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #0x258
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r4, #0x48]
	mov r0, r4
	mov r1, r7
	mov r2, r11
	bl FUN_ov26_02119f48
	ldr r8, _0211B2D0 ; =0x02099F38
	ldr r1, [r4, #0x84]
	ldr r0, [r8]
	bl FUN_ov16_021146a4
	ldr r0, [r8]
	ldr r1, [r4, #0x88]
	bl FUN_ov16_021146a4
	mov r9, #0x10
	str r9, [sp]
	mov r11, #8
	str r11, [sp, #4]
	str r10, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r4, #0x84]
	mov r0, r4
	mov r1, r7
	mov r2, #0x14
	bl FUN_ov26_02119f48
	stmia sp, {r9, r11}
	str r10, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r4, #0x88]
	mov r0, r4
	mov r1, r7
	mov r2, #0x15
	bl FUN_ov26_02119f48
	ldr r1, [r4, #0x8c]
	ldr r0, [r8]
	bl FUN_0205998c
	movs r9, r0
	beq _0211A5D8
	ldr r0, _0211B2E0 ; =0x02099F04
	ldr r1, [r9, #4]
	ldr r2, [r0]
	mov r0, r6
	bl FUN_ov16_020f0c30 ; may be ov17
	ldr r0, [r8]
	ldr r1, [r4, #0x88]
	mov r2, r5
	bl FUN_02059a78
	mov r8, r0
	mov r5, #0x20
	ldr r0, [r9, #4]
	mov r1, r8
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r5
	bl DC_FlushRange
_0211A5D8:
	mov r0, #0xd8
	str r0, [sp]
	mov r9, #0
	str r9, [sp, #4]
	mov r0, #0x258
	str r0, [sp, #8]
	str r9, [sp, #0xc]
	ldr r3, [r4, #0x5c]
	mov r0, r4
	mov r1, r7
	mov r2, #0xb
	mov r11, r9
	bl FUN_ov26_02119f48
	mov r8, #1
	b _0211A6C4
_0211A614:
	rsb r0, r9, #1
	bl _dflt
	mov r3, r1
	mov r2, r0
	ldr r1, _0211B2E4 ; =0x40240000
	mov r0, r11
	bl pow
	mov r5, r0
	mov r0, r6
	mov r10, r1
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	bl _dfltu
	mov r2, r5
	mov r3, r10
	bl _ddiv
	bl _dfix
	ldr r2, _0211B2E8 ; =0x66666667
	smull r3, r1, r2, r0
	mov r2, r0, lsr #0x1f
	add r1, r2, r1, asr #2
	mov r2, #0xa
	smull r1, r3, r2, r1
	subs r1, r0, r1
	movne r8, r11
	cmp r8, #0
	bne _0211A6B8
	mov r0, r9, lsl #3
	add r0, r0, #0xe8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x64]
	mov r0, r4
	and r3, r2, #0xff
	mov r1, r7
	add r2, r9, #0xd
	bl FUN_ov26_02119f48
_0211A6B8:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_0211A6C4:
	cmp r9, #2
	blo _0211A614
	mov r0, #0x58
	str r0, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	mov r9, #0
	str r9, [sp, #0xc]
	ldr r3, [r4, #0x58]
	mov r0, r4
	mov r1, r7
	mov r2, #9
	mov r11, r9
	bl FUN_ov26_02119f48
	mov r8, #1
	b _0211A7B8
_0211A70C:
	rsb r0, r9, #2
	bl _dflt
	mov r3, r1
	mov r2, r0
	ldr r1, _0211B2E4 ; =0x40240000
	mov r0, r11
	bl pow
	mov r5, r0
	mov r10, r1
	mov r0, r6
	bl FUN_0206ccec
	bl _dflt
	mov r2, r5
	mov r3, r10
	bl _ddiv
	bl _dfix
	ldr r2, _0211B2E8 ; =0x66666667
	smull r3, r1, r2, r0
	mov r2, r0, lsr #0x1f
	add r1, r2, r1, asr #2
	mov r2, #0xa
	smull r1, r3, r2, r1
	subs r1, r0, r1
	movne r8, r11
	cmp r8, #0
	bne _0211A7AC
	mov r0, r9, lsl #3
	add r0, r0, #0x68
	str r0, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, r4
	and r3, r2, #0xff
	mov r1, r7
	add r2, r9, #6
	bl FUN_ov26_02119f48
_0211A7AC:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_0211A7B8:
	cmp r9, #3
	blo _0211A70C
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	mov r8, #1
	str r8, [sp, #0xc]
	ldr r3, [r4, #0x58]
	mov r0, r4
	mov r1, r7
	mov r2, #0xa
	mov r11, #0
	bl FUN_ov26_02119f48
	mov r9, r11
	b _0211A8AC
_0211A800:
	rsb r0, r9, #2
	bl _dflt
	mov r3, r1
	mov r2, r0
	ldr r1, _0211B2E4 ; =0x40240000
	mov r0, r11
	bl pow
	mov r5, r0
	mov r10, r1
	mov r0, r6
	bl FUN_0206cc94
	bl _dflt
	mov r2, r5
	mov r3, r10
	bl _ddiv
	bl _dfix
	ldr r2, _0211B2E8 ; =0x66666667
	smull r3, r1, r2, r0
	mov r2, r0, lsr #0x1f
	add r1, r2, r1, asr #2
	mov r2, #0xa
	smull r1, r3, r2, r1
	subs r1, r0, r1
	movne r8, r11
	cmp r8, #0
	bne _0211A8A0
	mov r0, r9, lsl #3
	add r0, r0, #0x98
	str r0, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x50]
	mov r0, r4
	and r3, r2, #0xff
	mov r1, r7
	add r2, r9, #3
	bl FUN_ov26_02119f48
_0211A8A0:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_0211A8AC:
	cmp r9, #3
	blo _0211A800
	mov r0, r6
	mov r9, #0
	bl FUN_0206cd70
	mov r1, #0xc0
	str r1, [sp]
	mov r8, #0x38
	str r8, [sp, #4]
	mov r5, #0x1f4
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r4, #0x60]
	mov r0, r4
	mov r1, r7
	mov r2, #0xc
	bl FUN_ov26_02119f48
	mov r0, #0xe0
	stmia sp, {r0, r8}
	str r5, [sp, #8]
	mov r5, r9
	str r5, [sp, #0xc]
	ldr r3, [r4, #0x74]
	mov r0, r4
	mov r1, r7
	mov r2, #0x10
	bl FUN_ov26_02119f48
	ldrb r0, [r6, #0x5a]
	mov r1, r7
	mov r11, #1
	cmp r0, #1
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	movne r5, #1
	str r5, [sp, #0xc]
	mov r5, #2
	ldr r3, [r4, #0x4c]
	mov r0, r4
	mov r2, r5
	bl FUN_ov26_02119f48
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _0211A994
	ldr r8, _0211B2D0 ; =0x02099F38
	mov r2, r5
	ldr r0, [r8]
	mov r1, #5
	bl FUN_02059630
	mov r1, r0
	str r1, [r4, #0x78]
	mov r2, #0
	ldr r0, [r8]
	mov r3, r2
	bl FUN_02059038
_0211A994:
	ldr r5, _0211B2D0 ; =0x02099F38
	ldr r3, [r4, #0x78]
	mov r8, #0x11
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_02113b78
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r11, [sp]
	ldr r0, [r5]
	mov r2, r8
	mov r1, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r1, [r4, #0x78]
	ldr r0, [r5]
	str r9, [sp, #0x30]
	add r2, sp, #0x30
	add r3, sp, #0x3c
	bl FUN_0205935c
	ldr r0, [r5]
	ldr r1, [r4, #0x78]
	ldr r10, [sp, #0x30]
	bl FUN_ov16_02111438
	str r0, [sp, #0x20]
	ldr r0, [r5]
	ldr r1, [r4, #0x78]
	bl FUN_ov16_02111458
	mov r8, r0
	add r1, r6, #0x2c
	add r0, sp, #0xc0
	mov r2, r6
	bl FUN_0204378c
	str r8, [sp]
	mov r0, #0x42
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211B2EC ; =0x02099F50
	str r11, [sp, #0x1c]
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r1, r6
	mov r2, r10
	bl FUN_020425fc
	str r8, [sp]
	mov r0, #0x42
	stmib sp, {r0, r9}
	str r11, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211B2F0 ; =0x02099ED0
	str r11, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r0, [r0]
	add r1, sp, #0xc0
	mov r2, r10
	bl FUN_020425fc
	ldr r1, [sp, #0x3c]
	mov r0, r10
	bl DC_FlushRange
	ldr r3, [sp, #0x3c]
	ldr r1, [r4, #0x78]
	ldr r0, [r5]
	mov r2, r10
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	bl FUN_02059288
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _0211AB40
	ldr r0, [r5]
	mov r2, #2
	mov r1, #5
	bl FUN_02059630
	mov r1, r0
	str r1, [r4, #0x7c]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211AB40:
	ldr r5, _0211B2D0 ; =0x02099F38
	ldr r3, [r4, #0x7c]
	mov r8, #0x12
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r9, #0
	str r9, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_02113d88
	mov r0, #0x27
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_02113b78
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, #0x100
	bl FUN_ov16_02113d08
	mov r11, #1
	str r11, [sp]
	ldr r0, [r5]
	mov r2, r8
	mov r1, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r1, [r4, #0x7c]
	ldr r0, [r5]
	str r9, [sp, #0x2c]
	add r2, sp, #0x2c
	add r3, sp, #0x3c
	bl FUN_0205935c
	ldr r0, [r5]
	ldr r1, [r4, #0x7c]
	ldr r10, [sp, #0x2c]
	bl FUN_ov16_02111438
	mov r8, r0
	ldr r0, [r5]
	ldr r1, [r4, #0x7c]
	bl FUN_ov16_02111458
	str r0, [sp]
	mov r0, #0x42
	stmib sp, {r0, r9}
	str r11, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211B2EC ; =0x02099F50
	str r11, [sp, #0x1c]
	ldr r0, [r0]
	mov r3, r8
	add r1, r4, #0xcc
	mov r2, r10
	bl FUN_020425fc
	ldr r1, [sp, #0x3c]
	mov r0, r10
	bl DC_FlushRange
	ldr r3, [sp, #0x3c]
	ldr r1, [r4, #0x7c]
	ldr r0, [r5]
	mov r2, r10
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	bl FUN_02059288
	ldr r0, [r4, #0x80]
	cmp r0, #0
	bne _0211ACA0
	ldr r0, [r5]
	mov r2, #2
	mov r1, #5
	bl FUN_02059630
	mov r1, r0
	str r1, [r4, #0x80]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211ACA0:
	ldr r8, _0211B2D0 ; =0x02099F38
	ldr r3, [r4, #0x80]
	mov r9, #0x13
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_02113d88
	mov r0, #0x56
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_02113b78
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, #0x100
	bl FUN_ov16_02113d08
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r1, [r4, #0x80]
	ldr r0, [r8]
	str r5, [sp, #0x28]
	add r2, sp, #0x28
	add r3, sp, #0x3c
	bl FUN_0205935c
	ldr r0, [r8]
	ldr r1, [r4, #0x80]
	ldr r10, [sp, #0x28]
	bl FUN_ov16_02111438
	mov r9, r0
	ldr r0, [r8]
	ldr r1, [r4, #0x80]
	bl FUN_ov16_02111458
	mov r11, #0x40
	mov r7, r0
	mov r0, r5
	add r1, sp, #0x80
	mov r2, r11
	bl MIi_CpuClearFast
	ldr r1, _0211B2F4 ; =0x0211BA70
	add r0, sp, #0x80
	add r2, r6, #0x1c
	bl sprintf
	str r7, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _0211B2EC ; =0x02099F50
	mov r3, r9
	ldr r0, [r0]
	add r1, sp, #0x80
	mov r2, r10
	bl FUN_020425fc
	ldr r1, [sp, #0x3c]
	mov r0, r10
	bl DC_FlushRange
	ldr r0, [r8]
	ldr r3, [sp, #0x3c]
	ldr r1, [r4, #0x80]
	mov r2, r10
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	ldrb r0, [r4, #0x160]
	cmp r0, #0
	beq _0211AF28
	add r7, sp, #0x40
	mov r0, r5
	mov r1, r7
	mov r2, r11
	bl MIi_CpuClearFast
	ldr r1, _0211B2F8 ; =0x0211BA88
	mov r0, r7
	add r2, r6, #0x1c
	bl sprintf
	add r0, r4, #0xec
	bl FUN_ov16_021109a0
	add r0, r4, #0xec
	bl FUN_ov16_021105c0
	ldr r2, [r4, #0x6c]
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_02110624
	add r0, r4, #0xec
	mov r1, #2
	mov r2, r5
	bl FUN_ov16_02110624
	sub r6, r11, #0x41
	mov r0, #1
	stmia sp, {r0, r6}
	ldr r3, [r4, #0x6c]
	add r0, r4, #0xec
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_021107a0
	stmia sp, {r5, r6}
	ldr r3, [r4, #0x94]
	mov r2, #2
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_021107a0
	add r0, r4, #0xec
	mov r1, #0x1f4
	bl FUN_ov16_02110864
	mov r6, #3
	add r0, r4, #0xec
	mov r1, #1
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02110830
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_0211085c
	add r0, r4, #0xec
	mov r1, #0x10
	mov r2, #0x70
	bl FUN_ov16_021108b4
	add r0, r4, #0xec
	mov r1, #0x68
	mov r2, #0xa0
	bl FUN_ov16_021108d8
	add r0, r4, #0xec
	mov r1, #0xf
	mov r2, #1
	bl FUN_ov16_021108e4
	mov r2, r6
	add r0, r4, #0xec
	mov r1, #5
	bl FUN_ov16_021108f0
	mov r1, #1
	mov r6, r1
	mov r2, r7
	mov r3, r1
	add r0, r4, #0xec
	str r6, [sp]
	bl FUN_ov16_02110938
	mov r1, r6
	mov r2, r5
	b _0211B0C4
_0211AF28:
	mov r0, r5
	add r1, sp, #0x80
	mov r2, r11
	bl MIi_CpuClearFast
	ldr r1, _0211B2FC ; =0x0211BAAC
	add r0, sp, #0x80
	bl sprintf
	add r0, r4, #0xec
	bl FUN_ov16_021109a0
	add r0, r4, #0xec
	bl FUN_ov16_021105c0
	ldr r2, [r4, #0x68]
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_02110624
	add r0, r4, #0xec
	mov r1, #2
	mov r2, r5
	bl FUN_ov16_02110624
	sub r6, r11, #0x41
	mov r0, #1
	stmia sp, {r0, r6}
	ldr r3, [r4, #0x68]
	add r0, r4, #0xec
	mov r1, #1
	mov r2, r5
	bl FUN_ov16_021107a0
	stmia sp, {r5, r6}
	mov r1, #1
	ldr r3, [r4, #0x90]
	add r0, r4, #0xec
	mov r2, r1
	bl FUN_ov16_021107a0
	mov r0, #1
	stmia sp, {r0, r6}
	ldr r3, [r4, #0x90]
	add r0, r4, #0xec
	mov r1, #1
	mov r2, #2
	bl FUN_ov16_021107a0
	mov r0, #2
	stmia sp, {r0, r6}
	ldr r3, [r4, #0x68]
	add r0, r4, #0xec
	mov r1, #2
	mov r2, r5
	bl FUN_ov16_021107a0
	mov r0, #2
	stmia sp, {r0, r6}
	ldr r3, [r4, #0x90]
	add r0, r4, #0xec
	mov r1, #2
	mov r2, #1
	bl FUN_ov16_021107a0
	mov r8, #3
	str r8, [sp]
	str r6, [sp, #4]
	mov r1, #2
	ldr r3, [r4, #0x90]
	add r0, r4, #0xec
	mov r2, r1
	bl FUN_ov16_021107a0
	add r0, r4, #0xec
	mov r1, #0x1f4
	bl FUN_ov16_02110864
	mov r1, #1
	mov r2, r1
	mov r3, #2
	add r0, r4, #0xec
	bl FUN_ov16_02110830
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_0211085c
	mov r7, #0x10
	add r0, r4, #0xec
	mov r1, r7
	mov r2, #0x70
	bl FUN_ov16_021108b4
	mov r6, #0xa0
	add r0, r4, #0xec
	mov r1, #0x38
	mov r2, r6
	bl FUN_ov16_021108c0
	mov r2, r6
	add r0, r4, #0xec
	mov r1, #0x98
	bl FUN_ov16_021108cc
	mov r2, r7
	add r0, r4, #0xec
	mov r1, #0xf
	bl FUN_ov16_021108e4
	mov r2, r8
	add r0, r4, #0xec
	mov r1, #5
	bl FUN_ov16_021108f0
	mov r1, #2
	add r2, sp, #0x80
	add r0, r4, #0xec
	mov r3, #1
	str r5, [sp]
	bl FUN_ov16_02110938
	mov r1, r5
	mov r2, #1
_0211B0C4:
	add r0, r4, #0xec
	bl FUN_ov16_02110a04
	mov r0, #6
	add sp, sp, #0xe0
	strb r0, [r4, #0xa0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B0DC:
	add r6, sp, #0x80
	mov r0, r5
	mov r1, r6
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r1, _0211B300 ; =0x0211BAC0
	mov r0, r6
	bl sprintf
	add r0, r4, #0xec
	bl FUN_ov16_021109a0
	ldr r2, [r4, #0x70]
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_02110624
	add r0, r4, #0xec
	mov r1, #0xf
	mov r2, r11
	bl FUN_ov16_021108e4
	mov r2, r6
	add r0, r4, #0xec
	mov r1, #2
	mov r3, r11
	str r11, [sp]
	bl FUN_ov16_02110938
	mov r1, r5
	mov r2, r11
	add r0, r4, #0xec
	bl FUN_ov16_02110a04
	mov r0, #7
	add sp, sp, #0xe0
	strb r0, [r4, #0xa0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B15C:
	add r6, sp, #0x80
	mov r0, r5
	mov r1, r6
	mov r2, #0x40
	bl MIi_CpuClearFast
	ldr r1, _0211B304 ; =0x0211BAE4
	mov r0, r6
	bl sprintf
	add r0, r4, #0xec
	bl FUN_ov16_021109a0
	ldr r2, [r4, #0x68]
	add r0, r4, #0xec
	mov r1, r5
	bl FUN_ov16_02110624
	add r0, r4, #0xec
	mov r1, #0xf
	mov r2, #0x10
	bl FUN_ov16_021108e4
	mov r2, r6
	add r0, r4, #0xec
	mov r1, #2
	mov r3, r11
	str r5, [sp]
	bl FUN_ov16_02110938
	mov r1, r5
	mov r2, r11
	add r0, r4, #0xec
	bl FUN_ov16_02110a04
	mov r0, #7
	add sp, sp, #0xe0
	strb r0, [r4, #0xa0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B1DC:
	b _0211B21C
_0211B1E0:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x48]
	cmp r1, #0
	beq _0211B218
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B218
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x48]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
_0211B218:
	add r5, r5, #1
_0211B21C:
	cmp r5, #0x14
	blt _0211B1E0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	add sp, sp, #0xe0
	strb r0, [r4, #0xa0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B244:
	mov r6, #8
	mov r0, r5
	mov r1, r6
	bl FUN_ov16_020f1560
	mov r1, r6
	mov r0, r11
	bl FUN_ov16_020f1560
	mov r0, #9
	add sp, sp, #0xe0
	strb r0, [r4, #0xa0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B270:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0xe0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x161]
	cmp r0, #0
	ldreqb r0, [r4, #0x160]
	cmpeq r0, #0
	beq _0211B308
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x22
	bl FUN_02041eac
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0xa
	bl FUN_02041eac
	b _0211B330
_0211B2C4: .word unk_0209A110
_0211B2C8: .word unk_02099ED4
_0211B2CC: .word 0x000001DF
_0211B2D0: .word unk_02099F38
_0211B2D4: .word ov26_0211BA28
_0211B2D8: .word ov26_0211BA40
_0211B2DC: .word ov26_0211BA58
_0211B2E0: .word unk_02099F04
_0211B2E4: .word 0x40240000
_0211B2E8: .word 0x66666667
_0211B2EC: .word unk_02099F50
_0211B2F0: .word unk_02099ED0
_0211B2F4: .word ov26_0211BA70
_0211B2F8: .word ov26_0211BA88
_0211B2FC: .word ov26_0211BAAC
_0211B300: .word ov26_0211BAC0
_0211B304: .word ov26_0211BAE4
_0211B308:
	ldr r7, [r4, #4]
	mov r6, #0x61
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_02041eac
	mov r0, r7
	mov r2, r6
	mov r1, r11
	bl FUN_02041eac
_0211B330:
	strb r8, [r4, #0xa0]
_0211B334:
	add sp, sp, #0xe0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov26_0211a304

	arm_func_start FUN_ov26_0211b33c
FUN_ov26_0211b33c: ; 0x0211B33C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r4, #0
	b _0211B35C
_0211B34C:
	mov r0, r10
	mov r1, r4
	bl FUN_ov26_0211a014
	add r4, r4, #1
_0211B35C:
	cmp r4, #0x14
	blt _0211B34C
	mov r4, #0
	b _0211B380
_0211B36C:
	mov r0, r10
	mov r1, r4
	bl FUN_ov26_02119fd8
	add r0, r4, #1
	and r4, r0, #0xff
_0211B380:
	cmp r4, #2
	blo _0211B36C
	mov r9, #0
	add r7, r10, #0xc
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
	b _0211B3D4
_0211B3A0:
	mul r6, r9, r4
	add r8, r7, r6
	mov r0, r8
	mov r1, r11
	bl FUN_ov16_020f338c
	mov r0, r8
	bl FUN_ov16_020f33fc
	str r5, [r7, r6]
	str r5, [r8, #4]
	strb r5, [r8, #8]
	strb r5, [r8, #9]
	strb r5, [r8, #0xa]
	add r9, r9, #1
_0211B3D4:
	cmp r9, #5
	blt _0211B3A0
	add r0, r10, #0xec
	bl FUN_ov16_021109a0
	add r0, r10, #0xec
	bl FUN_ov16_021105c0
	ldr r0, _0211B424 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211B428 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, _0211B42C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	mov r0, #1
	bl FUN_ov16_020f3f60
	ldr r0, _0211B430 ; =0x0209A0AC
	bl FUN_ov16_020efa04
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B424: .word unk_02099EB4
_0211B428: .word unk_02099ED4
_0211B42C: .word unk_02099F38
_0211B430: .word unk_0209A0AC
	arm_func_end FUN_ov26_0211b33c

	arm_func_start FUN_ov26_0211b434
FUN_ov26_0211b434: ; 0x0211B434
	bx lr
	arm_func_end FUN_ov26_0211b434

	arm_func_start FUN_ov26_0211b438
FUN_ov26_0211b438: ; 0x0211B438
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xa0]
	mov r4, r1
	cmp r2, #7
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #4
	beq _0211B464
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211B464:
	ldr r0, _0211B534 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x160]
	cmp r0, #0
	beq _0211B498
	tst r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov26_0211b6a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211B498:
	tst r4, #1
	beq _0211B4C4
	add r0, r5, #0xec
	bl FUN_ov16_02110b04
	cmp r0, #1
	mov r0, r5
	bne _0211B4BC
	bl FUN_ov26_0211b620
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4BC:
	bl FUN_ov26_0211b668
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4C4:
	tst r4, #2
	beq _0211B4E8
	add r0, r5, #0xec
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	mov r0, r5
	bl FUN_ov26_0211b668
	ldmfd sp!, {r3, r4, r5, pc}
_0211B4E8:
	tst r4, #0x30
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B538 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r5, #0xec
	bl FUN_ov16_02110b04
	cmp r0, #1
	add r0, r5, #0xec
	bne _0211B51C
	mov r1, #0
	mov r2, #1
	b _0211B524
_0211B51C:
	mov r1, #1
	mov r2, #0
_0211B524:
	bl FUN_ov16_02110a04
	add r0, r5, #0xec
	bl FUN_ov16_02110b0c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B534: .word unk_02099ED4
_0211B538: .word gL5Sound
	arm_func_end FUN_ov26_0211b438

	arm_func_start FUN_ov26_0211b53c
FUN_ov26_0211b53c: ; 0x0211B53C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0xa0]
	mov r5, r1
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B618 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B61C ; =0x02099EB4
	mov r6, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_0210f20c
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	cmp r5, #2
	bne _0211B5D4
	cmp r0, #1
	beq _0211B5B0
	cmp r0, #2
	beq _0211B5BC
	cmp r0, #3
	beq _0211B5C8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5B0:
	mov r0, r7
	bl FUN_ov26_0211b620
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5BC:
	mov r0, r7
	bl FUN_ov26_0211b668
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5C8:
	mov r0, r7
	bl FUN_ov26_0211b6a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5D4:
	cmp r5, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #1
	beq _0211B5F0
	cmp r0, #2
	beq _0211B604
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B5F0:
	mov r1, r6
	add r0, r7, #0xec
	mov r2, #0
	bl FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B604:
	mov r2, r6
	add r0, r7, #0xec
	mov r1, #0
	bl FUN_ov16_02110a04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B618: .word unk_02099ED4
_0211B61C: .word unk_02099EB4
	arm_func_end FUN_ov26_0211b53c

	arm_func_start FUN_ov26_0211b620
FUN_ov26_0211b620: ; 0x0211B620
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #8
	add r0, r4, #0xec
	strb r1, [r4, #0xa0]
	bl FUN_ov16_02110b0c
	ldrb r0, [r4, #0x161]
	cmp r0, #0
	beq _0211B654
	ldr r0, _0211B664 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B654:
	ldr r0, _0211B664 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211B664: .word gL5Sound
	arm_func_end FUN_ov26_0211b620

	arm_func_start FUN_ov26_0211b668
FUN_ov26_0211b668: ; 0x0211B668
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x161]
	cmp r1, #0
	movne r2, #4
	movne r1, #0
	moveq r2, #5
	moveq r1, #1
	strb r2, [r0, #0xa0]
	strb r1, [r0, #0x161]
	add r0, r0, #0xec
	bl FUN_ov16_02110b0c
	ldr r0, _0211B6A4 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211B6A4: .word gL5Sound
	arm_func_end FUN_ov26_0211b668

	arm_func_start FUN_ov26_0211b6a8
FUN_ov26_0211b6a8: ; 0x0211B6A8
	stmfd sp!, {r3, lr}
	mov r1, #8
	strb r1, [r0, #0xa0]
	add r0, r0, #0xec
	bl FUN_ov16_02110b0c
	ldr r0, _0211B6CC ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_0211B6CC: .word gL5Sound
	arm_func_end FUN_ov26_0211b6a8

	arm_func_start FUN_ov26_0211b6d0
FUN_ov26_0211b6d0: ; 0x0211B6D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #5
	bl FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211B734 ; =0x02099F38
	b _0211B724
_0211B6FC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x48]
	cmp r1, #0
	beq _0211B720
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211B720:
	add r5, r5, #1
_0211B724:
	cmp r5, #0x14
	blt _0211B6FC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211B734: .word unk_02099F38
	arm_func_end FUN_ov26_0211b6d0

	.rodata
	.global ov26_0211B738
ov26_0211B738:
	.word ov26_0211B8F8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov26_0211B8E8
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov26_0211B8A8
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov26_0211B898
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov26_0211B888
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov26_0211B848
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov26_0211B868
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov26_0211B878
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov26_0211B8C8
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov26_0211B8D8
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov26_0211B838
	.byte 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.word ov26_0211B858
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov26_0211B8B8
	.byte 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov26_0211b7b0
FUN_ov26_0211b7b0: ; 0x0211B7B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211B7F8 ; =0x0211B820
	str r0, [r4]
	ldr r0, _0211B7FC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211B800 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B7F8: .word ov26_0211B820
_0211B7FC: .word 0x00009CCD
_0211B800: .word 0x0000EA3C
	arm_func_end FUN_ov26_0211b7b0

	.section .sinit, 4
ov26_0211B804:
	.word FUN_ov26_0211b7b0

	.data
	.global ov26_0211B820
ov26_0211B820:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov26_0211B838
ov26_0211B838:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B848
ov26_0211B848:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B858
ov26_0211B858:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B868
ov26_0211B868:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x39
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B878
ov26_0211B878:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B888
ov26_0211B888:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B898
ov26_0211B898:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B8A8
ov26_0211B8A8:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B8B8
ov26_0211B8B8:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B8C8
ov26_0211B8C8:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B8D8
ov26_0211B8D8:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B8E8
ov26_0211B8E8:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov26_0211B8F8
ov26_0211B8F8:
	.byte 0x6B, 0x6C, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov26_0211B910
ov26_0211B910:
	.word FUN_ov26_0211a094
	.word FUN_ov26_0211a0b4
	.word FUN_ov26_0211b438
	.word FUN_ov26_0211b53c
	.word FUN_ov26_0211a0dc
	.word FUN_0202b208
	.word FUN_ov26_0211a304
	.word FUN_ov26_0211b434
	.word FUN_ov26_0211b33c
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
	.global ov26_0211B97C
ov26_0211B97C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x68, 0x6F, 0x6E, 0x65
	.byte 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov26_0211B998
ov26_0211B998:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x73, 0x63, 0x68, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x64
	.byte 0x61, 0x74, 0x00, 0x00
	.global ov26_0211B9B4
ov26_0211B9B4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov26_0211B9CC
ov26_0211B9CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov26_0211B9E4
ov26_0211B9E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov26_0211B9FC
ov26_0211B9FC:
	.byte 0x6B, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x7A, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov26_0211BA0C
ov26_0211BA0C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x68, 0x6F, 0x6E, 0x65
	.byte 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov26_0211BA28
ov26_0211BA28:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov26_0211BA40
ov26_0211BA40:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov26_0211BA58
ov26_0211BA58:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov26_0211BA70
ov26_0211BA70:
	.byte 0x25, 0x73, 0x82, 0xCC, 0x83, 0x70, 0x83, 0x58, 0x83, 0x8F, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xBE
	.byte 0x82, 0xC1, 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00
	.global ov26_0211BA88
ov26_0211BA88:
	.byte 0x25, 0x73, 0x82, 0xCD, 0x0A, 0x82, 0xB7, 0x82
	.byte 0xC5, 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xC1, 0x82
	.byte 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov26_0211BAAC
ov26_0211BAAC:
	.byte 0x82, 0xC8, 0x82, 0xA9
	.byte 0x82, 0xDC, 0x82, 0xC9, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov26_0211BAC0
ov26_0211BAC0:
	.byte 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x82, 0xC9, 0x82, 0xB7, 0x82, 0xE9, 0x82, 0xCC, 0x82, 0xF0
	.byte 0x0A, 0x82, 0xA0, 0x82, 0xAB, 0x82, 0xE7, 0x82, 0xDF, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81
	.byte 0x48, 0x00, 0x00, 0x00
	.global ov26_0211BAE4
ov26_0211BAE4:
	.byte 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x82, 0xC9, 0x82, 0xB5, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

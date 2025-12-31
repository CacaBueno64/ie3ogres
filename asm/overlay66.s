
	.include "/macros/function.inc"
	.include "/include/overlay66.inc"

	.text
	arm_func_start FUN_ov66_02119f00
FUN_ov66_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #4
	ldmnefd sp!, {r4, pc}
	ldr r0, _02119F40 ; =0x00002FFF
	tst r1, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02119F44 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	bl FUN_ov66_0211a200
	mov r0, #6
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
_02119F40: .word 0x00002FFF
_02119F44: .word gAudioPlayer
	arm_func_end FUN_ov66_02119f00

	arm_func_start FUN_ov66_02119f48
FUN_ov66_02119f48: ; 0x02119F48
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x28]
	cmp r0, #0
	bne _02119F68
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r4, pc}
_02119F68:
	ldr r0, [r4, #0x20]
	mov r2, #1
	strb r2, [r4, #0x28]
	cmp r0, #4
	ldreqh r0, [r1, #4]
	cmpeq r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _02119FA4 ; =gAudioPlayer
	mov r1, r2
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	bl FUN_ov66_0211a200
	mov r0, #6
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
_02119FA4: .word gAudioPlayer
	arm_func_end FUN_ov66_02119f48

	arm_func_start FUN_ov66_02119fa8
FUN_ov66_02119fa8: ; 0x02119FA8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x114
	mov r6, r0
	mov r5, #1
	ldr r0, _0211A020 ; =0x020AF81C
	mov r1, #0x17
	str r5, [r6, #0x20]
	bl FUN_02044658
	ldr r3, [r0]
	add r4, sp, #0x14
	ldr r1, _0211A024 ; =0x0211A4EC
	ldr r2, _0211A028 ; =0x0211A508
	mov r0, r4
	str r3, [r6, #0x18]
	bl sprintf
	ldr r0, _0211A02C ; =0x02099F38
	mov r1, #0
	ldr r0, [r0]
	mov r2, r4
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r3, r5
	mov r1, #5
	bl FUN_02058800
	str r0, [r6, #0x10]
	add sp, sp, #0x114
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A020: .word unk_020AF81C
_0211A024: .word ov66_0211A4EC
_0211A028: .word ov66_0211A508
_0211A02C: .word unk_02099F38
	arm_func_end FUN_ov66_02119fa8

	arm_func_start FUN_ov66_0211a030
FUN_ov66_0211a030: ; 0x0211A030
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211A0B4 ; =0x02099F38
	b _0211A06C
_0211A048:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0211A068
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x14]
_0211A068:
	add r4, r4, #1
_0211A06C:
	cmp r4, #1
	blt _0211A048
	mov r4, #0
	mov r7, r4
	ldr r6, _0211A0B4 ; =0x02099F38
	b _0211A0A8
_0211A084:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0211A0A4
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x10]
_0211A0A4:
	add r4, r4, #1
_0211A0A8:
	cmp r4, #1
	blt _0211A084
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0B4: .word unk_02099F38
	arm_func_end FUN_ov66_0211a030

	arm_func_start FUN_ov66_0211a0b8
FUN_ov66_0211a0b8: ; 0x0211A0B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x10]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A12C ; =0x02099F38
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, r5, lsl #2
	mov r2, #0
	ldr r1, [r0, #0x10]
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A12C: .word unk_02099F38
	arm_func_end FUN_ov66_0211a0b8

	arm_func_start FUN_ov66_0211a130
FUN_ov66_0211a130: ; 0x0211A130
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x14]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _0211A1FC ; =0x02099F38
	mov r5, #1
	ldr r0, [r8]
	mov r2, r5
	add r1, r6, #1
	bl FUN_ov16_02112724
	mov r4, r0
	add r0, r7, r6, lsl #2
	ldr r3, [r0, #0x10]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add r0, r7, r6, lsl #2
	mov r6, #0
	str r4, [r0, #0x14]
	str r6, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02113b78
	mov r3, r6
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021139bc
	mov r1, r4
	str r5, [sp]
	ldr r0, [r8]
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A1FC: .word unk_02099F38
	arm_func_end FUN_ov66_0211a130

	arm_func_start FUN_ov66_0211a200
FUN_ov66_0211a200: ; 0x0211A200
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x24]
	mov r1, #0
	add r6, r0, #1
	cmp r6, #3
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #1
	mov r5, r4
_0211A224:
	cmp r6, #1
	beq _0211A238
	cmp r6, #2
	beq _0211A240
	b _0211A254
_0211A238:
	mov r1, r5
	b _0211A254
_0211A240:
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r1, r4
_0211A254:
	cmp r1, #0
	strne r6, [r7, #0x24]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r6, #1
	cmp r6, #3
	blt _0211A224
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov66_0211a200

	arm_func_start FUN_ov66_0211a270
FUN_ov66_0211a270: ; 0x0211A270
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	cmp r1, #2
	bne _0211A290
	ldr r0, [r0, #0x1c]
	mov r1, #0
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	ldmfd sp!, {r3, pc}
_0211A290:
	mov r1, #3
	str r1, [r0, #0x20]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov66_0211a270

	arm_func_start FUN_ov66_0211a2a8
FUN_ov66_0211a2a8: ; 0x0211A2A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r1, r5
	add r0, r6, #4
	mov r2, #0xc
	bl MI_CpuFill8
	mov r4, #4
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x10
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x14
	bl MI_CpuFill8
	mov r0, r6
	str r5, [r6, #0x20]
	strb r5, [r6, #0x28]
	str r5, [r6, #0x24]
	bl FUN_ov66_02119fa8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov66_0211a2a8

	arm_func_start FUN_ov66_0211a300
FUN_ov66_0211a300: ; 0x0211A300
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x20]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211A318: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0211A334 ; case 1
	b _0211A350 ; case 2
	b _0211A384 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	b _0211A3A0 ; case 6
_0211A334:
	add r0, r4, #4
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A350:
	mov r5, #0
	mov r1, r5
	bl FUN_ov66_0211a0b8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl FUN_ov66_0211a130
	mov r0, r4
	bl FUN_ov66_0211a200
	mov r0, r4
	bl FUN_ov66_0211a270
	ldmfd sp!, {r3, r4, r5, pc}
_0211A384:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r0, #4
	streq r0, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A3A0:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov66_0211a270
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov66_0211a300

	arm_func_start FUN_ov66_0211a3c0
FUN_ov66_0211a3c0: ; 0x0211A3C0
	bx lr
	arm_func_end FUN_ov66_0211a3c0

	arm_func_start FUN_ov66_0211a3c4
FUN_ov66_0211a3c4: ; 0x0211A3C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov66_0211a030
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov66_0211a3c4

	arm_func_start FUN_ov66_0211a3e4
FUN_ov66_0211a3e4: ; 0x0211A3E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov66_0211a3e4

	arm_func_start FUN_ov66_0211a3f8
FUN_ov66_0211a3f8: ; 0x0211A3F8
	bx lr
	arm_func_end FUN_ov66_0211a3f8

	.section .init, 4
	arm_func_start FUN_ov66_0211a3fc
FUN_ov66_0211a3fc: ; 0x0211A3FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A444 ; =0x0211A460
	str r0, [r4, #0x14]
	ldr r0, _0211A448 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211A44C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A444: .word ov66_0211A460
_0211A448: .word 0x00009CCD
_0211A44C: .word 0x0000EA3C
	arm_func_end FUN_ov66_0211a3fc

	.section .sinit, 4
ov66_0211A450:
	.word FUN_ov66_0211a3fc

	.data
	.global ov66_0211A460
ov66_0211A460:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov66_0211A480
ov66_0211A480:
	.word FUN_ov66_0211a3f8
	.word FUN_ov66_0211a3e4
	.word FUN_ov66_02119f00
	.word FUN_ov66_02119f48
	.word FUN_ov66_0211a2a8
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov66_0211a300
	.word FUN_ov66_0211a3c0
	.word FUN_ov66_0211a3c4
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN16CommonMainScreen9fadeResetEv
	.word _ZN16CommonMainScreen10fadeUpdateEv
	.word _ZN16CommonMainScreen8blackOutEv
	.word _ZN16CommonMainScreen8whiteOutEv
	.word _ZN16CommonMainScreen6fadeInEv
	.word _ZN16CommonMainScreen9fadeBlackEv
	.word _ZN16CommonMainScreen9fadeWhiteEv
	.word _ZN16CommonMainScreen8isFadingEv
	.word _ZN16CommonMainScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen7vFUN_60Ei
	.word _ZN12CommonScreen7vFUN_64Ei
	.word _ZN12CommonScreen7vFUN_68Ev
	.global ov66_0211A4EC
ov66_0211A4EC:
	.byte 0x25, 0x73, 0x70, 0x69
	.byte 0x63, 0x33, 0x64, 0x2F, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2F, 0x74, 0x6E, 0x25, 0x30, 0x32
	.byte 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov66_0211A508
ov66_0211A508:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

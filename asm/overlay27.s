
	.include "/macros/function.inc"
	.include "/include/overlay27.inc"

	.text
	arm_func_start FUN_ov27_02119f00
FUN_ov27_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _02119F38
	ldr r0, _02119F44 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x48]
_02119F38:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F44: .word unk_02099F38
	arm_func_end FUN_ov27_02119f00

	arm_func_start FUN_ov27_02119f48
FUN_ov27_02119f48: ; 0x02119F48
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
	arm_func_end FUN_ov27_02119f48

	arm_func_start FUN_ov27_02119fd8
FUN_ov27_02119fd8: ; 0x02119FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x48]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A010 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A010: .word unk_02099F38
	arm_func_end FUN_ov27_02119fd8

	arm_func_start FUN_ov27_0211a014
FUN_ov27_0211a014: ; 0x0211A014
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A05C ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0x3c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A05C: .word unk_02099F38
	arm_func_end FUN_ov27_0211a014

	arm_func_start FUN_ov27_0211a060
FUN_ov27_0211a060: ; 0x0211A060
	ldr r2, _0211A070 ; =0x0211A7D0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211A070: .word ov27_0211A7D0
	arm_func_end FUN_ov27_0211a060

	arm_func_start FUN_ov27_0211a074
FUN_ov27_0211a074: ; 0x0211A074
	bx lr
	arm_func_end FUN_ov27_0211a074

	arm_func_start FUN_ov27_0211a078
FUN_ov27_0211a078: ; 0x0211A078
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov27_0211a078

	arm_func_start FUN_ov27_0211a08c
FUN_ov27_0211a08c: ; 0x0211A08C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r5, r0
	bl FUN_ov16_020f47fc
	mov r6, #1
	mov r0, r6
	bl FUN_ov16_020f3f60
	mov r4, #0
	mov r0, r6
	mov r1, r4
	mov r2, r6
	bl GX_SetGraphicsMode
	ldr r2, _0211A198 ; =0x04000008
	mov r0, r5
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A19C ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A1A0 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211A1A4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	add r0, r5, #0xc
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r5, #8]
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r5, #0x3c
	mov r1, r4
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r5, #0x48
	mov r1, r4
	mov r2, #4
	bl MI_CpuFill8
	ldr r0, _0211A1A8 ; =0x0211A83C
	add r1, r5, #0xc
	bl FUN_ov16_020f3054
	ldr r6, _0211A1AC ; =0x0211A6F4
	add lr, sp, #4
	ldmia r6!, {r0, r1, r2, r3}
	mov r12, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	str r4, [sp]
	ldr r0, _0211A1B0 ; =0x0211A858
	ldr r1, [r5, #0xc]
	mov r2, r12
	add r3, r5, #0x3c
	bl FUN_ov16_020f5450
	mov r0, #3
	strb r0, [r5, #0x4c]
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A198: .word 0x04000008
_0211A19C: .word unk_02099EB4
_0211A1A0: .word unk_02099ED4
_0211A1A4: .word unk_02099F38
_0211A1A8: .word ov27_0211A83C
_0211A1AC: .word ov27_0211A6F4
_0211A1B0: .word ov27_0211A858
	arm_func_end FUN_ov27_0211a08c

	arm_func_start FUN_ov27_0211a1b4
FUN_ov27_0211a1b4: ; 0x0211A1B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r1, _0211A4B4 ; =0x0209A110
	ldr r4, _0211A4B8 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r4]
	ldr r1, [r1]
	mov r6, #0
	bl FUN_ov16_0210e10c
	mov r0, r7
	bl FUN_ov27_0211a68c
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x4c]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0211A4AC
_0211A210: ; jump table
	b _0211A4AC ; case 0
	b _0211A4AC ; case 1
	b _0211A4AC ; case 2
	b _0211A230 ; case 3
	b _0211A394 ; case 4
	b _0211A4AC ; case 5
	b _0211A404 ; case 6
	b _0211A424 ; case 7
_0211A230:
	mov r4, #3
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov27_02119f00
	ldr r1, _0211A4BC ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x84]
	cmp r0, #0
	beq _0211A280
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r7, #0x3c]
	mov r0, r7
	mov r1, r5
	mov r2, #2
	b _0211A2B0
_0211A280:
	ldrb r0, [r1, #0x86]
	cmp r0, #0
	beq _0211A2B4
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r7, #0x40]
	mov r0, r7
	mov r1, r5
	mov r2, r4
_0211A2B0:
	bl FUN_ov27_02119f48
_0211A2B4:
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r8, #0
	str r8, [sp, #0xc]
	mov r6, #1
	ldr r3, [r7, #0x44]
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov27_02119f48
	ldr r4, _0211A4C0 ; =0x02099EB4
	stmia sp, {r6, r8}
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0210fc74
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_0210e7d0
	movs r4, r0
	beq _0211A384
	strb r8, [r4, #0x10]
	strb r8, [r4, #0xf]
	strh r8, [r4, #0xc]
	mov r1, r8
	mov r2, r6
	mov r3, r8
	add r0, r4, #0x3a
	strb r8, [r4, #0x11]
	bl FUN_ov16_0210e6fc
	mov r1, r8
	mov r2, r8
	mov r3, r8
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r8
	mov r2, r6
	add r0, r4, #0x3e
	mov r3, r8
	bl FUN_ov16_0210e6fc
	mov r2, r6
	add r0, r4, #0x3e
	mov r1, r8
	mov r3, r8
	bl FUN_ov16_0210e720
	mov r0, r4
	bl FUN_ov16_0210e69c
_0211A384:
	mov r0, #4
	add sp, sp, #0x10
	strb r0, [r7, #0x4c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A394:
	mov r5, r6
	ldr r4, _0211A4C4 ; =0x02099F38
	b _0211A3DC
_0211A3A0:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A3D8
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A3D8
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A3D8:
	add r6, r6, #1
_0211A3DC:
	cmp r6, #3
	blt _0211A3A0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	add sp, sp, #0x10
	strb r0, [r7, #0x4c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A404:
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	add sp, sp, #0x10
	strb r0, [r7, #0x4c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A424:
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A4BC ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	beq _0211A488
	ldr r0, _0211A4C8 ; =0x0209A454
	mov r1, #5
	str r6, [r0, #8]
	strb r6, [r0, #0xc]
	str r1, [r0, #4]
	strb r6, [r0, #0x1e]
	mov r1, #1
	strb r1, [r0, #0x1f]
	strb r6, [r0, #0x20]
	strb r6, [r0, #0x1d]
	ldr r0, [r7, #4]
	mov r1, r6
	mov r2, #0x5f
	b _0211A4A0
_0211A488:
	ldrb r0, [r0, #0x86]
	cmp r0, #0
	beq _0211A4A4
	ldr r0, [r7, #4]
	mov r1, r6
	mov r2, #0x26
_0211A4A0:
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
_0211A4A4:
	mov r0, #0
	strb r0, [r7, #0x4c]
_0211A4AC:
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A4B4: .word unk_0209A110
_0211A4B8: .word unk_02099ED4
_0211A4BC: .word unk_020A0640
_0211A4C0: .word unk_02099EB4
_0211A4C4: .word unk_02099F38
_0211A4C8: .word unk_0209A454
	arm_func_end FUN_ov27_0211a1b4

	arm_func_start FUN_ov27_0211a4cc
FUN_ov27_0211a4cc: ; 0x0211A4CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	mov r4, #0
	b _0211A4EC
_0211A4DC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov27_0211a014
	add r4, r4, #1
_0211A4EC:
	cmp r4, #3
	blt _0211A4DC
	mov r4, #0
	b _0211A510
_0211A4FC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov27_02119fd8
	add r0, r4, #1
	and r4, r0, #0xff
_0211A510:
	cmp r4, #1
	blo _0211A4FC
	mov r10, #0
	add r8, r5, #0xc
	mov r6, #1
	mov r5, r10
	mov r4, #0xc
	b _0211A564
_0211A530:
	mul r7, r10, r4
	add r9, r8, r7
	mov r0, r9
	mov r1, r6
	bl FUN_ov16_020f338c
	mov r0, r9
	bl FUN_ov16_020f33fc
	str r5, [r8, r7]
	str r5, [r9, #4]
	strb r5, [r9, #8]
	strb r5, [r9, #9]
	strb r5, [r9, #0xa]
	add r10, r10, #1
_0211A564:
	cmp r10, #4
	blt _0211A530
	ldr r0, _0211A594 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A598 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, _0211A59C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A594: .word unk_02099EB4
_0211A598: .word unk_02099ED4
_0211A59C: .word unk_02099F38
	arm_func_end FUN_ov27_0211a4cc

	arm_func_start FUN_ov27_0211a5a0
FUN_ov27_0211a5a0: ; 0x0211A5A0
	bx lr
	arm_func_end FUN_ov27_0211a5a0

	arm_func_start FUN_ov27_0211a5a4
FUN_ov27_0211a5a4: ; 0x0211A5A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	tst r4, #4
	beq _0211A5C4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211A5C4:
	ldr r0, _0211A5EC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov27_0211a650
	ldmfd sp!, {r3, r4, r5, pc}
_0211A5EC: .word unk_02099ED4
	arm_func_end FUN_ov27_0211a5a4

	arm_func_start FUN_ov27_0211a5f0
FUN_ov27_0211a5f0: ; 0x0211A5F0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0211A648 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A64C ; =0x02099EB4
	mov r1, r5
	ldr r0, [r4]
	mov r2, #1
	bl FUN_ov16_0210f20c
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	cmp r5, #2
	cmpeq r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov27_0211a650
	ldmfd sp!, {r4, r5, r6, pc}
_0211A648: .word unk_02099ED4
_0211A64C: .word unk_02099EB4
	arm_func_end FUN_ov27_0211a5f0

	arm_func_start FUN_ov27_0211a650
FUN_ov27_0211a650: ; 0x0211A650
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A684 ; =0x02099EB4
	mov r5, r0
	mov r4, #1
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov16_0210efac
	mov r2, #6
	ldr r0, _0211A688 ; =gAudioPlayer
	mov r1, r4
	strb r2, [r5, #0x4c]
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211A684: .word unk_02099EB4
_0211A688: .word gAudioPlayer
	arm_func_end FUN_ov27_0211a650

	arm_func_start FUN_ov27_0211a68c
FUN_ov27_0211a68c: ; 0x0211A68C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #4
	bl FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211A6F0 ; =0x02099F38
	b _0211A6E0
_0211A6B8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A6DC
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A6DC:
	add r5, r5, #1
_0211A6E0:
	cmp r5, #3
	blt _0211A6B8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A6F0: .word unk_02099F38
	arm_func_end FUN_ov27_0211a68c

	.rodata
	.global ov27_0211A6F4
ov27_0211A6F4:
	.word ov27_0211A798
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov27_0211A7A8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov27_0211A7B8
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov27_0211a714
FUN_ov27_0211a714: ; 0x0211A714
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A75C ; =0x0211A780
	str r0, [r4, #8]
	ldr r0, _0211A760 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211A764 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A75C: .word ov27_0211A780
_0211A760: .word 0x00009CCD
_0211A764: .word 0x0000EA3C
	arm_func_end FUN_ov27_0211a714

	.section .sinit, 4
ov27_0211A768:
	.word FUN_ov27_0211a714

	.data
	.global ov27_0211A780
ov27_0211A780:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov27_0211A798
ov27_0211A798:
	.byte 0x65, 0x78, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov27_0211A7A8
ov27_0211A7A8:
	.byte 0x65, 0x78, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov27_0211A7B8
ov27_0211A7B8:
	.byte 0x65, 0x78, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov27_0211A7D0
ov27_0211A7D0:
	.word FUN_ov27_0211a074
	.word FUN_ov27_0211a078
	.word FUN_ov27_0211a5a4
	.word FUN_ov27_0211a5f0
	.word FUN_ov27_0211a08c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov27_0211a1b4
	.word FUN_ov27_0211a5a0
	.word FUN_ov27_0211a4cc
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
	.global ov27_0211A83C
ov27_0211A83C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x65, 0x78, 0x70, 0x6C, 0x61
	.byte 0x69, 0x6E, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov27_0211A858
ov27_0211A858:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x65, 0x78, 0x70, 0x6C, 0x61, 0x69, 0x6E, 0x2E, 0x53
	.byte 0x50, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

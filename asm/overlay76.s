
	.include "/macros/function.inc"
	.include "/include/overlay76.inc"

	.text
	arm_func_start FUN_ov76_02119f00
FUN_ov76_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02119FD8 ; =0x020A0640
	mov r4, #0
	ldrb r0, [r5, #0x96]
	mov r6, #1
	mov r7, #1
	cmp r0, #0
	ldrb r0, [r5, #0x96]
	movne r6, #0
	mov r2, #1
	cmp r0, #2
	ldr r0, _02119FDC ; 0x02099EF0
	movne r7, #0
	cmp r6, #0
	ldr r0, [r0]
	moveq r2, #0
	mov r1, r4
	bl FUN_ov126_02139144
	ldr r0, _02119FDC ; 0x02099EF0
	cmp r7, #0
	movne r4, #1
	mov r6, #0
	ldr r0, [r0]
	mov r1, r6
	mov r2, r4
	bl FUN_ov126_021390d0
	ldrb r0, [r5, #0x97]
	mov r7, #1
	mov r2, #1
	cmp r0, #0
	ldrb r0, [r5, #0x97]
	moveq r6, #1
	cmp r0, #2
	ldr r0, _02119FDC ; 0x02099EF0
	movne r7, #0
	cmp r6, #0
	mov r6, #1
	ldr r0, [r0]
	moveq r2, #0
	mov r1, r6
	bl FUN_ov126_02139144
	ldr r4, _02119FDC ; 0x02099EF0
	cmp r7, #0
	moveq r6, #0
	ldr r0, [r4]
	mov r2, r6
	mov r1, #1
	bl FUN_ov126_021390d0
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	bl FUN_ov126_021391b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02119FD8: .word unk_020A0640
_02119FDC: .word unk_02099EF0
	arm_func_end FUN_ov76_02119f00

	arm_func_start FUN_ov76_02119fe0
FUN_ov76_02119fe0: ; 0x02119FE0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r5, #0
	ldr r4, _0211A078 ; =0x020AF81C
	ldr r12, [r6, #4]
	mov r0, r4
	mov r2, r5
	mov r3, r5
	mov r1, #3
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _0211A048
	mov r1, #0x34
	mov r0, r4
	mov r2, r1
	bl FUN_02044e40
	ldr r0, [r6, #4]
	mov r1, r5
	mov r2, #0x35
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A048:
	ldr r6, [r6, #4]
	mov r4, #0x34
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A078: .word unk_020AF81C
	arm_func_end FUN_ov76_02119fe0

	arm_func_start FUN_ov76_0211a07c
FUN_ov76_0211a07c: ; 0x0211A07C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #8]
	cmp r2, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #8]
	cmp r1, #1
	beq _0211A0A8
	cmp r1, #2
	beq _0211A0B0
	ldmfd sp!, {r4, pc}
_0211A0A8:
	bl FUN_ov76_0211a0d0
	ldmfd sp!, {r4, pc}
_0211A0B0:
	bl FUN_ov76_02119f00
	ldr r0, _0211A0CC ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_01ffa12c
	mov r0, r4
	bl FUN_ov76_02119fe0
	ldmfd sp!, {r4, pc}
_0211A0CC: .word unk_02099EF0
	arm_func_end FUN_ov76_0211a07c

	arm_func_start FUN_ov76_0211a0d0
FUN_ov76_0211a0d0: ; 0x0211A0D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211A10C ; =0x0209BA20
	mov r5, r0
	mov r0, r4
	bl FUN_020728c4
	ldr r1, _0211A110 ; =0x020A0640
	add r2, r5, #0xc
	strh r0, [r1, #0xa2]
	ldrh r1, [r1, #0xa2]
	mov r0, r4
	bl FUN_0206f8d0
	mov r0, r4
	add r1, r5, #0x24
	bl FUN_02071894
	ldmfd sp!, {r3, r4, r5, pc}
_0211A10C: .word unk_0209BA20
_0211A110: .word unk_020A0640
	arm_func_end FUN_ov76_0211a0d0

	arm_func_start FUN_ov76_0211a114
FUN_ov76_0211a114: ; 0x0211A114
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _0211A1A0 ; =0x0209BA20
	mov r0, r6
	bl FUN_020726f8
	ldr r1, _0211A1A4 ; =0x020A0640
	mov r5, #1
	mov r3, r0
	ldrh r2, [r1, #0x94]
	mov r0, r6
	mov r1, r5
	bl FUN_02070530
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl FUN_0204d7fc
	bl FUN_ov16_020f067c
	cmp r0, #0
	bne _0211A16C
	mov r0, r6
	bl FUN_0204baa8
	b _0211A190
_0211A16C:
	mov r4, #4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204baf0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204bb48
_0211A190:
	ldr r0, _0211A1A0 ; =0x0209BA20
	mov r1, #1
	bl FUN_0204eb4c
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1A0: .word unk_0209BA20
_0211A1A4: .word unk_020A0640
	arm_func_end FUN_ov76_0211a114

	arm_func_start FUN_ov76_0211a1a8
FUN_ov76_0211a1a8: ; 0x0211A1A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, _0211A1DC ; =0x0209BA20
	bl FUN_ov16_020eedb8
	add r5, r4, #0xc
	mov r6, #0
	mov r4, #0xc
_0211A1C4:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _0211A1C4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1DC: .word unk_0209BA20
	arm_func_end FUN_ov76_0211a1a8

	arm_func_start FUN_ov76_0211a1e0
FUN_ov76_0211a1e0: ; 0x0211A1E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	mov r1, r7
	add r0, r4, #0xc
	mov r2, #0x24
	str r7, [r4, #8]
	bl MI_CpuFill8
	ldr r5, _0211A2A8 ; =0x0209BA20
	mov r0, r5
	bl FUN_ov16_020eeca0
	mov r0, #0x80000000
	ldr r6, _0211A2AC ; =0x0209A2C0
	strb r7, [r5, #0x849]
	str r7, [r6]
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	sub r2, r0, #0x80000001
	str r2, [r6, #0x48]
	mov r0, r6
	mov r1, r7
	str r2, [r6, #0x4c]
	bl FUN_ov126_0212fbf4
	str r7, [r6, #0x34]
	str r7, [r6, #0x38]
	str r7, [r6, #0x3c]
	strb r7, [r6, #0x5c]
	strb r7, [r6, #0x5e]
	strb r7, [r6, #0x58]
	strb r7, [r6, #0x59]
	strb r7, [r6, #0x5f]
	ldr r5, _0211A2B0 ; 0x02099EF0
	strh r7, [r6, #0x54]
	ldr r0, [r5]
	bl FUN_ov132_02147e9c
	b _0211A284
_0211A278:
	ldr r0, [r5]
	bl FUN_ov126_02137644
	add r7, r7, #1
_0211A284:
	cmp r7, #0x10
	blt _0211A278
	ldr r0, _0211A2B0 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02149238
	mov r0, r4
	mov r1, #1
	bl FUN_ov76_0211a07c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A2A8: .word unk_0209BA20
_0211A2AC: .word unk_0209A2C0
_0211A2B0: .word unk_02099EF0
	arm_func_end FUN_ov76_0211a1e0

	arm_func_start FUN_ov76_0211a2b4
FUN_ov76_0211a2b4: ; 0x0211A2B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r4, #0xc
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0211A370 ; 0x02099EF0
	ldr r0, [r5]
	bl FUN_01ff998c
	ldr r0, [r5]
	bl FUN_01ff9904
	ldr r0, _0211A374 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _0211A314
	mov r2, #1
	ldr r0, _0211A378 ; =0x0209BA20
	mov r3, r2
	mov r1, #0
	bl FUN_0204d7fc
_0211A314:
	ldr r5, _0211A370 ; 0x02099EF0
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02148ad8
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02148ba4
	ldr r0, [r5]
	bl FUN_ov132_02148bac
	ldr r0, _0211A374 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _0211A358
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _0211A360
_0211A358:
	mov r0, r4
	bl FUN_ov76_0211a114
_0211A360:
	mov r0, r4
	mov r1, #2
	bl FUN_ov76_0211a07c
	ldmfd sp!, {r4, r5, r6, pc}
_0211A370: .word unk_02099EF0
_0211A374: .word unk_020A0640
_0211A378: .word unk_0209BA20
	arm_func_end FUN_ov76_0211a2b4

	arm_func_start FUN_ov76_0211a37c
FUN_ov76_0211a37c: ; 0x0211A37C
	bx lr
	arm_func_end FUN_ov76_0211a37c

	arm_func_start FUN_ov76_0211a380
FUN_ov76_0211a380: ; 0x0211A380
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x6c]
	blx r1
	add r0, r4, #0xc
	mov r1, #3
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov76_0211a1a8
	ldr r5, _0211A480 ; =0x0209BA20
	mov r1, #0
	mov r0, r5
	bl FUN_0207249c
	mov r4, #1
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	mov r5, r0
	strb r4, [r6, #0x2c]
	strb r4, [r5, #0x2c]
	ldrh r0, [r6, #0x28]
	ldrh r2, [r5, #0x28]
	mov r1, r0
	cmp r0, #0
	ldreqh r1, [r6, #0x26]
	cmp r2, #0
	ldreqh r2, [r5, #0x26]
	cmp r1, r2
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r0, #0
	ldreqh r0, [r6, #0x26]
	bl FUN_ov16_020f0b8c
	ldrb r0, [r0, #0xa]
	mov r4, #1
	cmp r0, #3
	moveq r4, #0
	cmp r4, #0
	bne _0211A448
	ldrh r0, [r6, #0x28]
	cmp r0, #0
	ldreqh r0, [r6, #0x26]
	sub r0, r0, #2
	strh r0, [r6, #0x28]
	ldrh r0, [r5, #0x28]
	cmp r0, #0
	ldreqh r0, [r5, #0x26]
	sub r0, r0, #2
	strh r0, [r5, #0x28]
_0211A448:
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	mov r0, #1
	bne _0211A46C
	cmp r4, #0
	movne r0, #0
	strb r0, [r5, #0x2c]
	strb r4, [r6, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A46C:
	cmp r4, #0
	movne r0, #0
	strb r0, [r6, #0x2c]
	strb r4, [r5, #0x2c]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A480: .word unk_0209BA20
	arm_func_end FUN_ov76_0211a380

	arm_func_start FUN_ov76_0211a484
FUN_ov76_0211a484: ; 0x0211A484
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov76_0211a484

	arm_func_start FUN_ov76_0211a498
FUN_ov76_0211a498: ; 0x0211A498
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov76_0211a498

	arm_func_start FUN_ov76_0211a4a0
FUN_ov76_0211a4a0: ; 0x0211A4A0
	bx lr
	arm_func_end FUN_ov76_0211a4a0

	arm_func_start FUN_ov76_0211a4a4
FUN_ov76_0211a4a4: ; 0x0211A4A4
	bx lr
	arm_func_end FUN_ov76_0211a4a4

	arm_func_start FUN_ov76_0211a4a8
FUN_ov76_0211a4a8: ; 0x0211A4A8
	bx lr
	arm_func_end FUN_ov76_0211a4a8

	.section .init, 4
	arm_func_start FUN_ov76_0211a4ac
FUN_ov76_0211a4ac: ; 0x0211A4AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A4F4 ; =0x0211A520
	str r0, [r4, #0x14]
	ldr r0, _0211A4F8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211A4FC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A4F4: .word ov76_0211A520
_0211A4F8: .word 0x00009CCD
_0211A4FC: .word 0x0000EA3C
	arm_func_end FUN_ov76_0211a4ac

	.section .sinit, 4
ov76_0211A500:
	.word FUN_ov76_0211a4ac

	.data
	.global ov76_0211A520
ov76_0211A520:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov76_0211A540
ov76_0211A540:
	.word FUN_ov76_0211a4a8
	.word FUN_ov76_0211a484
	.word FUN_ov76_0211a4a4
	.word FUN_ov76_0211a4a0
	.word FUN_ov76_0211a1e0
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov76_0211a2b4
	.word FUN_ov76_0211a37c
	.word FUN_ov76_0211a380
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
	.word FUN_ov76_0211a498
	.word FUN_ov1_020be600
	.word FUN_ov1_020be55c
	.word FUN_ov1_020be5bc
	.word FUN_ov1_020be5e0
	.byte 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay75.inc"

	.text
	arm_func_start FUN_ov75_02119f00
FUN_ov75_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0211A038 ; =0x0209BA20
	mov r4, #0
	mov r0, r6
	bl FUN_02072898
	ldr r5, _0211A03C ; =0x020A0640
	mov r1, r4
	strh r0, [r5, #0x94]
	strb r1, [r5, #0x9a]
	strb r1, [r5, #0x96]
	mov r0, #2
	strb r0, [r5, #0x97]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _02119FFC
	ldr r0, _0211A040 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _02119F5C
	mov r0, r6
	bl FUN_020724c8
	ldr r1, _0211A044 ; =0x020E9490
	str r0, [r1]
_02119F5C:
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	beq _02119FD8
	mov r0, r4
	bl FUN_ov16_020f09c0
	mov r7, #1
	mov r8, r0
	mov r0, r7
	bl FUN_ov16_020f09c0
	mov r6, r0
	ldr r0, _0211A040 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r0, #0
	bne _02119FB0
	strb r4, [r5, #0x96]
	cmp r6, #0
	strneb r7, [r5, #0x97]
	moveq r0, #2
	streqb r0, [r5, #0x97]
	b _02119FC4
_02119FB0:
	strb r4, [r5, #0x97]
	cmp r8, #0
	strneb r7, [r5, #0x96]
	moveq r0, #2
	streqb r0, [r5, #0x96]
_02119FC4:
	ldr r0, _0211A040 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	strb r0, [r5, #0x9a]
	b _02119FFC
_02119FD8:
	ldr r0, _0211A040 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	mov r0, #1
	strneb r4, [r5, #0x96]
	strneb r0, [r5, #0x97]
	streqb r0, [r5, #0x9a]
	streqb r0, [r5, #0x96]
	streqb r4, [r5, #0x97]
_02119FFC:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _0211A014
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A014:
	ldrb r0, [r5, #0x87]
	cmp r0, #0
	ldreqb r0, [r5, #0x88]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A038 ; =0x0209BA20
	mov r1, #0
	bl FUN_0204eb4c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A038: .word unk_0209BA20
_0211A03C: .word unk_020A0640
_0211A040: .word unk_0209AEC0
_0211A044: .word ov1_020E9490
	arm_func_end FUN_ov75_02119f00

	arm_func_start FUN_ov75_0211a048
FUN_ov75_0211a048: ; 0x0211A048
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _0211A208 ; =0x02099F18
	mov r5, r0
	mov r4, #1
	ldr r0, [r1]
	mov r1, r4
	bl FUN_0205131c
	mov r0, r5
	bl FUN_ov1_020be6f8
	mov r0, r5
	bl FUN_ov1_020be73c
	ldr r1, _0211A20C ; =0x020EAA94
	ldr r3, _0211A210 ; =0x0209A12C
	mov r12, #0
	ldr r2, _0211A214 ; =0x0209A140
	ldr r0, _0211A218 ; =0x020EAAF0
	mov r6, #0xe8
	str r12, [r3]
	str r12, [r2]
	strb r4, [r1]
	strh r6, [r0]
	ldr r1, _0211A21C ; =0x020EAAEC
	strh r12, [r0, #2]
	strh r6, [r1]
	mov r2, #0x18
	ldr r0, _0211A220 ; =0x020EAAE8
	strh r2, [r1, #2]
	strh r6, [r0]
	mov r2, #0x30
	ldr r1, _0211A224 ; =0x0209BA20
	strh r2, [r0, #2]
	ldr r0, _0211A228 ; =0x020A0640
	ldrb r2, [r1, #0x890]
	ldrb r1, [r0, #0x1b]
	ldr r0, _0211A22C ; =0x020EAAA8
	str r2, [r0]
	cmp r1, #0
	bne _0211A0F0
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	beq _0211A104
_0211A0F0:
	ldr r0, _0211A22C ; =0x020EAAA8
	ldr r1, [r0]
	cmp r1, #2
	moveq r1, #0
	streq r1, [r0]
_0211A104:
	ldr r2, _0211A230 ; =0x020EAAF4
	mov r0, #0
	ldr r4, _0211A234 ; =0x020EAAD4
	ldr r3, _0211A238 ; =0x020EAAD8
	ldr r1, _0211A23C ; =0x020EAA98
	strh r0, [r2]
	str r0, [r4]
	str r0, [r3]
	strb r0, [r1]
	ldr lr, _0211A240 ; =0x020EAAAC
	mvn r6, #0
	ldr r12, _0211A244 ; =0x020EAAB8
	strb r6, [lr]
	str r6, [r12]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	ldr r1, _0211A248 ; =0x020EAACC
	ldr r2, _0211A24C ; =0x020EAADC
	str r0, [r1]
	strb r0, [r2, #3]
	strb r0, [r2, #2]
	strb r0, [r2, #1]
	ldr r12, _0211A228 ; =0x020A0640
	strb r0, [r2]
	ldr r1, _0211A250 ; =0x020EAB04
	mov r3, #0x80000000
	str r3, [r1]
	str r0, [r12, #0x78]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	str r0, [r12]
	ldr r1, _0211A254 ; =0x0209AEC0
	str r0, [r12, #4]
	ldr lr, [r1, #0x5c]
	strb r0, [r12, #0x8c]
	ldr r1, _0211A258 ; =0x020EAAE0
	strb r0, [r12, #0x8f]
	ldr r2, _0211A25C ; =0x020EAABC
	strb r0, [r12, #0x98]
	str r0, [r1]
	strb r0, [r2]
	strb r0, [r12, #0x99]
	ldr r4, _0211A260 ; =0x020EAAC4
	mov r6, #1
	ldr r3, _0211A264 ; =0x020EAAB0
	ldr r1, _0211A254 ; =0x0209AEC0
	str r6, [r4]
	strb r6, [r3]
	cmp lr, #1
	movne r6, r0
	strb r0, [r2, #1]
	str r0, [r12, #0xbc]
	mov r0, r5
	strb r6, [r1, #0x64]
	bl FUN_ov75_02119f00
	ldr r4, [r5, #4]
	mov r2, #0
	ldr r0, _0211A268 ; =0x020AF81C
	mov r3, r2
	mov r1, #1
	str r4, [sp]
	bl FUN_02044798
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A208: .word unk_02099F18
_0211A20C: .word ov1_020EAA94
_0211A210: .word unk_0209A12C
_0211A214: .word unk_0209A140
_0211A218: .word ov1_020EAAF0
_0211A21C: .word ov1_020EAAEC
_0211A220: .word ov1_020EAAE8
_0211A224: .word unk_0209BA20
_0211A228: .word unk_020A0640
_0211A22C: .word ov1_020EAAA8
_0211A230: .word ov1_020EAAF4
_0211A234: .word ov1_020EAAD4
_0211A238: .word ov1_020EAAD8
_0211A23C: .word ov1_020EAA98
_0211A240: .word ov1_020EAAAC
_0211A244: .word ov1_020EAAB8
_0211A248: .word ov1_020EAACC
_0211A24C: .word ov1_020EAADC
_0211A250: .word ov1_020EAB04
_0211A254: .word unk_0209AEC0
_0211A258: .word ov1_020EAAE0
_0211A25C: .word ov1_020EAABC
_0211A260: .word ov1_020EAAC4
_0211A264: .word ov1_020EAAB0
_0211A268: .word unk_020AF81C
	arm_func_end FUN_ov75_0211a048

	arm_func_start FUN_ov75_0211a26c
FUN_ov75_0211a26c: ; 0x0211A26C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0211A370 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A374 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0211A344
	ldr r0, _0211A378 ; =0x0209A454
	ldr r1, _0211A37C ; =0x0211A4BC
	mov r2, #0
	strb r2, [r0, #0x40]
	strb r2, [r0, #0x60]
	cmp r1, #0
	ldr r4, _0211A380 ; =0x0211A4D0
	beq _0211A2C0
	ldr r0, _0211A384 ; =0x0209A494
	mov r2, #0x20
	bl STD_CopyLString
_0211A2C0:
	cmp r4, #0
	beq _0211A2D8
	ldr r0, _0211A388 ; =0x0209A4B4
	mov r1, r4
	mov r2, #0x20
	bl STD_CopyLString
_0211A2D8:
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f09c0
	cmp r0, #2
	blt _0211A314
	ldr r5, [r5, #4]
	mov r4, #0x76
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r3, r4, r5, pc}
_0211A314:
	bl FUN_ov16_020f083c
	bl FUN_ov16_020f09c0
	ldr r4, [r5, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0x76
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r1, #1
	mov r2, #0x4c
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r3, r4, r5, pc}
_0211A344:
	ldr r5, [r5, #4]
	mov r4, #0x3f
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r3, r4, r5, pc}
_0211A370: .word unk_020AF81C
_0211A374: .word unk_020A0640
_0211A378: .word unk_0209A454
_0211A37C: .word ov75_0211A4BC
_0211A380: .word ov75_0211A4D0
_0211A384: .word unk_0209A494
_0211A388: .word unk_0209A4B4
	arm_func_end FUN_ov75_0211a26c

	arm_func_start FUN_ov75_0211a38c
FUN_ov75_0211a38c: ; 0x0211A38C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov75_0211a38c

	arm_func_start FUN_ov75_0211a3a0
FUN_ov75_0211a3a0: ; 0x0211A3A0
	bx lr
	arm_func_end FUN_ov75_0211a3a0

	arm_func_start FUN_ov75_0211a3a4
FUN_ov75_0211a3a4: ; 0x0211A3A4
	bx lr
	arm_func_end FUN_ov75_0211a3a4

	arm_func_start FUN_ov75_0211a3a8
FUN_ov75_0211a3a8: ; 0x0211A3A8
	bx lr
	arm_func_end FUN_ov75_0211a3a8

	arm_func_start FUN_ov75_0211a3ac
FUN_ov75_0211a3ac: ; 0x0211A3AC
	bx lr
	arm_func_end FUN_ov75_0211a3ac

	arm_func_start FUN_ov75_0211a3b0
FUN_ov75_0211a3b0: ; 0x0211A3B0
	bx lr
	arm_func_end FUN_ov75_0211a3b0

	.section .init, 4
	arm_func_start FUN_ov75_0211a3b4
FUN_ov75_0211a3b4: ; 0x0211A3B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A3FC ; =0x0211A420
	str r0, [r4, #0x14]
	ldr r0, _0211A400 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211A404 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A3FC: .word ov75_0211A420
_0211A400: .word 0x00009CCD
_0211A404: .word 0x0000EA3C
	arm_func_end FUN_ov75_0211a3b4

	.section .sinit, 4
ov75_0211A408:
	.word FUN_ov75_0211a3b4

	.data
	.global ov75_0211A420
ov75_0211A420:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov75_0211A440
ov75_0211A440:
	.word FUN_ov75_0211a3b0
	.word FUN_ov75_0211a38c
	.word FUN_ov75_0211a3ac
	.word FUN_ov75_0211a3a8
	.word FUN_ov75_0211a048
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov75_0211a26c
	.word FUN_ov75_0211a3a4
	.word FUN_ov75_0211a3a0
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
	.word FUN_ov1_020be600
	.word FUN_ov1_020be55c
	.word FUN_ov1_020be5bc
	.word FUN_ov1_020be5e0
	.global ov75_0211A4BC
ov75_0211A4BC:
	.byte 0x70, 0x69, 0x63, 0x32
	.byte 0x64, 0x2F, 0x53, 0x54, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00
	.global ov75_0211A4D0
ov75_0211A4D0:
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/arm9_0202a020.inc"

	.text
	arm_func_start FUN_0202a020
FUN_0202a020: ; 0x0202A020
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0202A14C ; =0x00003078
	bl _Znwm
	movs r4, r0
	beq _0202A144
	bl _ZN14CScreenManagerC2Ev
	add r0, r4, #0x15c
	ldr r1, _0202A150 ; =0x020D9574
	add r0, r0, #0x1800
	str r1, [r4]
	bl FUN_0206c0d8
	add r0, r4, #0x184
	add r2, r4, #0x234
	add r8, r4, #0x278
	add r9, r4, #0x1bc
	add r1, r4, #0x204
	add lr, r4, #0x2cc
	add r6, r4, #0x360
	add r7, r4, #0x3e0
	add r12, r0, #0x1800
	add r3, r2, #0x1800
	add r0, r8, #0x1800
	add r2, r9, #0x2000
	add r1, r1, #0x2000
	add r8, lr, #0x2000
	add lr, r6, #0x2000
	add r6, r7, #0x2000
	add r7, r4, #0x1000
	ldr r10, _0202A154 ; =0x020D9998
	ldr r9, _0202A158 ; =0x020D9734
	str r10, [r7, #0x984]
	str r4, [r12, #4]
	str r9, [r7, #0xa34]
	str r4, [r3, #4]
	ldr r9, _0202A15C ; =0x020DA084
	add r3, r4, #0x2000
	str r9, [r7, #0xa78]
	add r7, r4, #0x5f0
	str r4, [r0, #4]
	ldr r9, _0202A160 ; =0x020D94C8
	add r0, r7, #0x2000
	str r9, [r3, #0x1bc]
	ldr r7, _0202A164 ; =0x020DBCBC
	str r4, [r2, #8]
	str r7, [r3, #0x204]
	ldr r2, _0202A168 ; =0x020DBE2C
	str r4, [r1, #4]
	str r2, [r3, #0x2cc]
	ldr r1, _0202A16C ; =0x020D93E4
	str r4, [r8, #4]
	str r1, [r3, #0x360]
	ldr r1, _0202A170 ; =0x0211F2D0
	str r4, [lr, #4]
	str r1, [r3, #0x3e0]
	ldr r2, _0202A174 ; =0x020DB1B4
	str r4, [r6, #4]
	mov r1, r4
	str r2, [r3, #0x3e0]
	bl FUN_ov4_020cc0b4
	add r0, r4, #0x14
	ldr r2, _0202A178 ; =0x020D9220
	add r1, r4, #0x3000
	str r2, [r1, #0x14]
	add r0, r0, #0x3000
	str r4, [r0, #4]
	mov r0, #0
	str r0, [r1, #0x70]
	str r0, [r1, #0x74]
_0202A144:
	str r4, [r5, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0202A14C: .word 0x00003078
_0202A150: .word ov4_020D9574
_0202A154: .word ov4_020D9998
_0202A158: .word ov4_020D9734
_0202A15C: .word ov4_020DA084
_0202A160: .word ov4_020D94C8
_0202A164: .word ov4_020DBCBC
_0202A168: .word ov4_020DBE2C
_0202A16C: .word ov4_020D93E4
_0202A170: .word ov61_0211F2D0
_0202A174: .word ov4_020DB1B4
_0202A178: .word ov4_020D9220
	arm_func_end FUN_0202a020

	arm_func_start FUN_0202a17c
FUN_0202a17c: ; 0x0202A17C
	bx lr
	arm_func_end FUN_0202a17c

	arm_func_start FUN_0202a180
FUN_0202a180: ; 0x0202A180
	bx lr
	arm_func_end FUN_0202a180

	arm_func_start FUN_0202a184
FUN_0202a184: ; 0x0202A184
	bx lr
	arm_func_end FUN_0202a184

	arm_func_start FUN_0202a188
FUN_0202a188: ; 0x0202A188
	bx lr
	arm_func_end FUN_0202a188

	arm_func_start FUN_0202a18c
FUN_0202a18c: ; 0x0202A18C
	bx lr
	arm_func_end FUN_0202a18c

	arm_func_start FUN_0202a190
FUN_0202a190: ; 0x0202A190
	bx lr
	arm_func_end FUN_0202a190

	arm_func_start FUN_0202a194
FUN_0202a194: ; 0x0202A194
	bx lr
	arm_func_end FUN_0202a194

	arm_func_start FUN_0202a198
FUN_0202a198: ; 0x0202A198
	bx lr
	arm_func_end FUN_0202a198

	arm_func_start FUN_0202a19c
FUN_0202a19c: ; 0x0202A19C
	bx lr
	arm_func_end FUN_0202a19c

	arm_func_start FUN_0202a1a0
FUN_0202a1a0: ; 0x0202A1A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0202A250 ; =0x00001228
	bl _Znwm
	movs r4, r0
	beq _0202A248
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _0202A254 ; =0x020E8400
	ldr r0, _0202A258 ; =0x020E871C
	str r1, [r4]
	str r0, [r4, #0x90]
	str r4, [r4, #0x94]
	str r0, [r4, #0x78c]
	add r0, r4, #0x38c
	ldr r1, _0202A25C ; =0x020E8C0C
	str r4, [r0, #0x404]
	ldr r0, _0202A260 ; =0x020E8AE4
	str r1, [r4, #0x78c]
	str r0, [r4, #0xe88]
	add r0, r4, #0x288
	ldr r1, _0202A264 ; =0x020E8B80
	str r4, [r0, #0xc04]
	str r1, [r4, #0xe90]
	ldr r0, _0202A268 ; =0x020E8A58
	str r4, [r4, #0xe94]
	str r0, [r4, #0xe98]
	add r0, r4, #0x298
	ldr r1, _0202A26C ; =0x020E8F10
	str r4, [r0, #0xc04]
	str r1, [r4, #0xea4]
	add r0, r4, #0x2a4
	str r4, [r0, #0xc04]
	add r1, r4, #0x1000
	mov r2, #0
	str r2, [r1, #0x1f8]
	add r0, r4, #0x1200
	str r2, [r1, #0x1fc]
	bl FUN_0206c0d8
_0202A248:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0202A250: .word 0x00001228
_0202A254: .word ov1_020E8400
_0202A258: .word ov1_020E871C
_0202A25C: .word ov1_020E8C0C
_0202A260: .word ov1_020E8AE4
_0202A264: .word ov1_020E8B80
_0202A268: .word ov1_020E8A58
_0202A26C: .word ov1_020E8F10
	arm_func_end FUN_0202a1a0

	arm_func_start FUN_0202a270
FUN_0202a270: ; 0x0202A270
	bx lr
	arm_func_end FUN_0202a270

	arm_func_start FUN_0202a274
FUN_0202a274: ; 0x0202A274
	bx lr
	arm_func_end FUN_0202a274

	arm_func_start FUN_0202a278
FUN_0202a278: ; 0x0202A278
	bx lr
	arm_func_end FUN_0202a278

	arm_func_start FUN_0202a27c
FUN_0202a27c: ; 0x0202A27C
	bx lr
	arm_func_end FUN_0202a27c

	arm_func_start FUN_0202a280
FUN_0202a280: ; 0x0202A280
	bx lr
	arm_func_end FUN_0202a280

	arm_func_start FUN_0202a284
FUN_0202a284: ; 0x0202A284
	bx lr
	arm_func_end FUN_0202a284

	arm_func_start FUN_0202a288
FUN_0202a288: ; 0x0202A288
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #0xf70
	bl _Znwm
	movs r4, r0
	beq _0202A334
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _0202A33C ; =0x020D5540
	ldr r0, _0202A340 ; =0x020D56C8
	str r1, [r4]
	str r0, [r4, #0x90]
	mov r1, r4
	add r0, r4, #0x104
	str r4, [r4, #0x94]
	bl FUN_ov0_020bff3c
	ldr r1, _0202A344 ; =0x020D55B0
	ldr r0, _0202A348 ; =0x020D563C
	str r1, [r4, #0x280]
	str r4, [r4, #0x284]
	str r0, [r4, #0x28c]
	ldr r1, _0202A34C ; =0x0208F90C
	str r4, [r4, #0x290]
	add r0, r4, #0x2a0
	str r1, [r4, #0x29c]
	bl FUN_ov0_020d17c8
	ldr r1, _0202A350 ; =0x020D5C9C
	add r6, r4, #0xd40
	ldr r0, _0202A354 ; =0x020D5D10
	str r1, [r4, #0x29c]
	str r0, [r4, #0x2a0]
	ldr r0, _0202A358 ; =0x020D5E48
	str r4, [r4, #0x2ac]
	str r0, [r4, #0xd40]
	add r0, r6, #8
	bl FUN_0206c0d8
	str r4, [r6, #4]
	mov r0, #0
	str r0, [r4, #0xf68]
	str r0, [r4, #0xf6c]
_0202A334:
	str r4, [r5, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_0202A33C: .word ov0_020D5540
_0202A340: .word ov0_020D56C8
_0202A344: .word ov0_020D55B0
_0202A348: .word ov0_020D563C
_0202A34C: .word unk_0208F904+0x8
_0202A350: .word ov0_020D5C9C
_0202A354: .word ov0_020D5D10
_0202A358: .word ov0_020D5E48
	arm_func_end FUN_0202a288

	arm_func_start FUN_0202a35c
FUN_0202a35c: ; 0x0202A35C
	bx lr
	arm_func_end FUN_0202a35c

	arm_func_start FUN_0202a360
FUN_0202a360: ; 0x0202A360
	bx lr
	arm_func_end FUN_0202a360

	arm_func_start FUN_0202a364
FUN_0202a364: ; 0x0202A364
	bx lr
	arm_func_end FUN_0202a364

	arm_func_start FUN_0202a368
FUN_0202a368: ; 0x0202A368
	bx lr
	arm_func_end FUN_0202a368

	arm_func_start FUN_0202a36c
FUN_0202a36c: ; 0x0202A36C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_ov0_020d182c
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202a36c

	arm_func_start FUN_0202a384
FUN_0202a384: ; 0x0202A384
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202a384

	arm_func_start FUN_0202a39c
FUN_0202a39c: ; 0x0202A39C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0202A4D0 ; =0x020B5AE0
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0202A3DC
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r4, #0x30]
_0202A3DC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0202A468
	bl FUN_02029d64
	movs r5, r0
	beq _0202A46C
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0202A40C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0202A40C:
	mov r6, #0
	str r6, [r5, #4]
	ldr r1, [r5, #8]
	mov r0, r6
	bl FS_UnloadOverlay
	ldr r0, [r4, #8]
	cmp r0, #2
	ldr r0, [r4, #4]
	moveq r6, #1
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r6, #0
	beq _0202A450
	cmp r0, #0
	bne _0202A450
	b _0202A468
_0202A450:
	cmp r6, #0
	bne _0202A46C
	cmp r0, #0
	beq _0202A46C
	bl FUN_ov16_020f2e2c
	b _0202A46C
_0202A468:
	bl FUN_ov16_020f2dac
_0202A46C:
	ldr r0, [r4, #4]
	bl FUN_02029d64
	movs r5, r0
	beq _0202A4A0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _0202A490
	bl FUN_02029d98
	b _0202A498
_0202A490:
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
_0202A498:
	ldr r0, [r5, #4]
	str r0, [r4, #0x30]
_0202A4A0:
	ldr r1, [r4, #8]
	mov r0, #0
	str r1, [r4, #0xc]
	ldr r1, [r4, #4]
	stmib r4, {r0, r1}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_0202A4D0: .word unk_020B5AE0
	arm_func_end FUN_0202a39c

	arm_func_start FUN_0202a4d4
FUN_0202a4d4: ; 0x0202A4D4
	stmfd sp!, {r3, lr}
	ldr r2, _0202A610 ; =0x0208F898
	mov r1, #0
	b _0202A4EC
_0202A4E4:
	str r1, [r2, #4]
	add r2, r2, #0xc
_0202A4EC:
	ldr r0, [r2]
	cmp r0, #0
	bne _0202A4E4
	ldr r2, _0202A614 ; =0x020B5AE0
	mov r12, #0
	str r12, [r2, #0xc]
	ldr r0, _0202A618 ; =gIsValidSave
	str r12, [r2, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne _0202A600
	ldr r0, _0202A61C ; =0x02FFFC20
	ldr r1, _0202A620 ; =0x020A0640
	ldr r3, [r0]
	cmp r3, #0
	strb r12, [r1, #0x8a]
	moveq r0, #4
	streq r0, [r2, #4]
	beq _0202A608
	cmp r3, #0x16
	cmpne r3, #0x15
	bne _0202A564
	ldr r1, _0202A624 ; =0x0209A454
	mov r3, #1
	strb r3, [r1, #0x80]
	mov r2, #6
	ldr r0, _0202A614 ; =0x020B5AE0
	strb r2, [r1, #0x82]
	str r3, [r0, #4]
	b _0202A608
_0202A564:
	cmp r3, #0x17
	blo _0202A5A4
	cmp r3, #0x19
	bhi _0202A5A4
	ldr r0, _0202A624 ; =0x0209A454
	sub r3, r3, #0x16
	strb r12, [r0, #0x80]
	ldrb r12, [r0, #0x83]
	and r3, r3, #0xff
	and r3, r3, #7
	bic r12, r12, #7
	orr r3, r12, r3
	strb r3, [r0, #0x83]
	mov r0, #1
	strb r0, [r1, #0x8a]
	b _0202A604
_0202A5A4:
	cmp r3, #0x1a
	blo _0202A5EC
	cmp r3, #0x1c
	bhi _0202A5EC
	ldr r1, _0202A624 ; =0x0209A454
	mov r0, #0
	strb r0, [r1, #0x80]
	ldrb r2, [r1, #0x83]
	sub r0, r3, #0x19
	and r0, r0, #0xff
	bic r2, r2, #0x38
	mov r0, r0, lsl #0x1d
	orr r2, r2, r0, lsr #26
	ldr r0, _0202A614 ; =0x020B5AE0
	strb r2, [r1, #0x83]
_0202A5E0:
	mov r1, #1
	str r1, [r0, #4]
	b _0202A608
_0202A5EC:
	ldr r1, _0202A624 ; =0x0209A454
	mov r2, #0
	ldr r0, _0202A614 ; =0x020B5AE0
	strb r2, [r1, #0x80]
	b _0202A5E0
_0202A600:
	mov r0, #5
_0202A604:
	str r0, [r2, #4]
_0202A608:
	bl FUN_0202a39c
	ldmfd sp!, {r3, pc}
_0202A610: .word unk_0208F898
_0202A614: .word unk_020B5AE0
_0202A618: .word gIsValidSave
_0202A61C: .word 0x02FFFC20
_0202A620: .word unk_020A0640
_0202A624: .word unk_0209A454
	arm_func_end FUN_0202a4d4

	arm_func_start FUN_0202a628
FUN_0202a628: ; 0x0202A628
	stmfd sp!, {r4, lr}
	ldr r0, _0202A664 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r0, _0202A668 ; =gMoviePlayer
	bl _ZN11MoviePlayer5sleepEv
	ldr r0, _0202A66C ; =gAudioPlayer
	bl _ZN11AudioPlayer12FUN_0202b768Ev
	mov r0, #0x14
	bl OS_Sleep
	mov r4, #0
	mov r0, r4
	bl DSE_SsdSuspend
	mov r0, r4
	bl DSE_SsdStopEffectAll
	ldmfd sp!, {r4, pc}
_0202A664: .word gWirelessUtil
_0202A668: .word gMoviePlayer
_0202A66C: .word gAudioPlayer
	arm_func_end FUN_0202a628

	arm_func_start FUN_0202a670
FUN_0202a670: ; 0x0202A670
	stmfd sp!, {r3, lr}
	mov r0, #0x14
	bl OS_Sleep
	ldr r0, _0202A690 ; =gAudioPlayer
	bl _ZN11AudioPlayer6wakeUpEv
	ldr r0, _0202A694 ; =gMoviePlayer
	bl _ZN11MoviePlayer6wakeUpEv
	ldmfd sp!, {r3, pc}
_0202A690: .word gAudioPlayer
_0202A694: .word gMoviePlayer
	arm_func_end FUN_0202a670

	arm_func_start FUN_0202a698
FUN_0202a698: ; 0x0202A698
	stmfd sp!, {r3, lr}
	ldr r0, _0202A6D0 ; =FUN_0202a628
	ldr r1, _0202A6D4 ; =0x020B5AE0
	mov r2, #0
	str r0, [r1, #0x34]
	ldr r0, _0202A6D8 ; =FUN_0202a670
	str r2, [r1, #0x38]
	str r0, [r1, #0x44]
	ldr r0, _0202A6DC ; =0x020B5B14
	str r2, [r1, #0x48]
	bl PM_AppendPreSleepCallback
	ldr r0, _0202A6E0 ; =0x020B5B24
	bl PM_AppendPostSleepCallback
	ldmfd sp!, {r3, pc}
_0202A6D0: .word FUN_0202a628
_0202A6D4: .word unk_020B5AE0
_0202A6D8: .word FUN_0202a670
_0202A6DC: .word unk_020B5B14
_0202A6E0: .word unk_020B5B24
	arm_func_end FUN_0202a698

	arm_func_start FUN_0202a6e4
FUN_0202a6e4: ; 0x0202A6E4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0202A794 ; =0x0209A0F8
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0202A798 ; =gRecordManager
	bl FUN_02061bc4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	bl FUN_ov16_020f06ac
	cmp r0, #0
	ldreq r0, _0202A79C ; =0x020A0640
	ldreqb r0, [r0, #0xae]
	cmpeq r0, #0
	movne r5, #1
	bne _0202A744
	ldr r4, _0202A7A0 ; =0x0209AEC0
	mov r0, r4
	bl FUN_020466e4
	cmp r0, #0
	beq _0202A744
	mov r0, r4
	bl FUN_020465fc
_0202A744:
	cmp r5, #0
	beq _0202A780
	bl PM_GetLCDPower
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl OS_WaitVBlankIntr
	bl GX_DispOff
	ldr r1, _0202A7A4 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl OS_WaitVBlankIntr
	mov r0, #0
	bl PM_SetLCDPower
	ldmfd sp!, {r3, r4, r5, pc}
_0202A780:
	mov r1, #0
	mov r2, r1
	mov r0, #0xc
	bl PM_GoSleepMode
	ldmfd sp!, {r3, r4, r5, pc}
_0202A794: .word unk_0209A0F8
_0202A798: .word gRecordManager
_0202A79C: .word unk_020A0640
_0202A7A0: .word gWirelessUtil
_0202A7A4: .word 0x04001000
	arm_func_end FUN_0202a6e4

	arm_func_start FUN_0202a7a8
FUN_0202a7a8: ; 0x0202A7A8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0202A844 ; =gCameraController
	ldr r0, [r0]
	bl _ZN16CameraController4initEv
	ldr r5, _0202A848 ; =gConfig
	ldr r1, _0202A84C ; =0x0208F978
	mov r0, r5
	bl _ZN6Config8getParamEPc
	ldr r4, _0202A850 ; =0x0208F6F0
	ldr r1, _0202A854 ; =0x0208F988
	str r0, [r4]
	mov r0, r5
	bl _ZN6Config8getParamEPc
	str r0, [r4, #4]
	ldr r1, _0202A858 ; =0x0208F99C
	mov r0, r5
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0xc]
	ldr r1, _0202A85C ; =0x0208F9B0
	mov r0, r5
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0x10]
	ldr r1, _0202A860 ; =0x0208F9C4
	mov r0, r5
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0x28]
	mov r0, r5
	ldr r1, _0202A864 ; =0x0208F9D4
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0x2c]
	mov r0, r5
	ldr r1, _0202A868 ; =0x0208F9E8
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0x30]
	mov r0, r5
	ldr r1, _0202A86C ; =0x0208F9FC
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0x34]
	ldmfd sp!, {r3, r4, r5, pc}
_0202A844: .word gCameraController
_0202A848: .word gConfig
_0202A84C: .word unk_0208F978
_0202A850: .word unk_0208F6F0
_0202A854: .word unk_0208F988
_0202A858: .word unk_0208F99C
_0202A85C: .word unk_0208F9B0
_0202A860: .word unk_0208F9C4
_0202A864: .word unk_0208F9D4
_0202A868: .word unk_0208F9E8
_0202A86C: .word unk_0208F9FC
	arm_func_end FUN_0202a7a8

	arm_func_start FUN_0202a870
FUN_0202a870: ; 0x0202A870
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr lr, _0202A8DC ; =0x0209A0F0
	ldr r12, _0202A8E0 ; =0x0209A0E8
	ldr r3, _0202A8E4 ; =0x0209A0F4
	ldr r0, _0202A8E8 ; =0x020B5B58
	mov r1, r4
	mov r2, #0x20
	strh r4, [lr]
	strh r4, [r12]
	strh r4, [r3]
	bl MI_CpuFill8
	ldr r1, _0202A8EC ; =0x04000130
	ldr r0, _0202A8F0 ; =0x02FFFFA8
	ldrh r1, [r1]
	ldrh r0, [r0]
	bl TP_RequestSamplingAsync
	ldr r0, _0202A8F4 ; =0x020B5B00
	bl TP_WaitCalibratedResult
	ldr r3, _0202A8F8 ; =0x020B5AE0
	ldr r0, _0202A8FC ; =0x020B5B40
	strb r4, [r3]
	mov r1, r4
	mov r2, #0x18
	str r4, [r3, #0x10]
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
_0202A8DC: .word unk_0209A0F0
_0202A8E0: .word unk_0209A0E8
_0202A8E4: .word unk_0209A0F4
_0202A8E8: .word unk_020B5B58
_0202A8EC: .word 0x04000130
_0202A8F0: .word 0x02FFFFA8
_0202A8F4: .word unk_020B5B00
_0202A8F8: .word unk_020B5AE0
_0202A8FC: .word unk_020B5B40
	arm_func_end FUN_0202a870

	arm_func_start FUN_0202a900
FUN_0202a900: ; 0x0202A900
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0202A9FC ; =0x02FFFFA8
	ldrh r0, [r2]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r12, #0
	bne _0202A95C
	ldr r0, _0202AA00 ; =0x04000130
	ldrh r1, [r0]
	ldrh r0, [r2]
	orr r0, r1, r0
	eor r0, r0, r2, lsr #12
	and r0, r0, r2, lsr #12
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	and r1, r2, #0x40
	and r2, r2, #0x20
	mvn r1, r1, lsl #1
	mvn r2, r2, asr #1
	and r0, r1, r0, lsr #16
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r12, r0, lsr #0x10
_0202A95C:
	ldr r0, _0202AA04 ; =0x0209A0E8
	mov r1, #1
	ldrh r3, [r0]
	ldr lr, _0202AA08 ; =0x0209A0F4
	mov r2, #0
	ldr r0, _0202AA0C ; =0x020B5B58
	strh r2, [lr]
	mov r5, r1
	mov r7, #0xe
_0202A980:
	tst r12, r1
	beq _0202A9CC
	tst r3, r1
	beq _0202A9B8
	mov r6, r2, lsl #1
	ldrh r4, [r0, r6]
	cmp r4, #0x10
	ldrhih r4, [lr]
	strhih r7, [r0, r6]
	orrhi r4, r4, r1
	strhih r4, [lr]
	addls r4, r4, #1
	strlsh r4, [r0, r6]
	b _0202A9CC
_0202A9B8:
	ldrh r6, [lr]
	mov r4, r2, lsl #1
	strh r5, [r0, r4]
	orr r4, r6, r1
	strh r4, [lr]
_0202A9CC:
	mov r1, r1, lsl #0x11
	add r2, r2, #1
	cmp r2, #0x10
	mov r1, r1, lsr #0x10
	blt _0202A980
	eor r2, r12, r3
	ldr r0, _0202AA04 ; =0x0209A0E8
	ldr r1, _0202AA10 ; =0x0209A0F0
	and r2, r12, r2
	strh r2, [r1]
	strh r12, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202A9FC: .word 0x02FFFFA8
_0202AA00: .word 0x04000130
_0202AA04: .word unk_0209A0E8
_0202AA08: .word unk_0209A0F4
_0202AA0C: .word unk_020B5B58
_0202AA10: .word unk_0209A0F0
	arm_func_end FUN_0202a900

	arm_func_start FUN_0202aa14
FUN_0202aa14: ; 0x0202AA14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0202AB70 ; =0x020B5AE0
	ldr r5, _0202AB74 ; =0x020B5B40
	ldr r0, [r4, #0x10]
	add r6, r5, r0, lsl #3
	bl TP_RequestSamplingAsync
	mov r0, r6
	bl TP_WaitCalibratedResult
	ldrb r0, [r4]
	cmp r0, #0
	bne _0202AA60
	ldr r0, [r4, #0x10]
	add r1, r5, r0, lsl #3
	ldrh r0, [r1, #4]
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r1, #4]
	movne r0, #1
	strneb r0, [r4]
_0202AA60:
	ldr r0, _0202AB78 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _0202AA8C
	ldr r0, _0202AB70 ; =0x020B5AE0
	ldr r1, _0202AB74 ; =0x020B5B40
	ldr r0, [r0, #0x10]
	mov r2, #0
	add r0, r1, r0, lsl #3
	strh r2, [r0, #4]
_0202AA8C:
	ldr r5, _0202AB70 ; =0x020B5AE0
	ldr lr, _0202AB7C ; =0x55555556
	ldr r7, [r5, #0x10]
	mov r4, #3
	add r2, r7, #2
	smull r0, r1, lr, r2
	add r1, r1, r2, lsr #31
	smull r0, r1, r4, r1
	sub r1, r2, r0
	ldr r2, _0202AB74 ; =0x020B5B40
	mov r3, r1, lsl #3
	add r1, r2, r1, lsl #3
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _0202AB24
	add r0, r2, r7, lsl #3
	ldrh r6, [r0, #4]
	cmp r6, #1
	bne _0202AAF8
_0202AAD8:
	ldrh r1, [r0]
	strh r1, [r5, #0x20]
	ldrh r1, [r0, #2]
	strh r1, [r5, #0x22]
	ldrh r1, [r0, #4]
	strh r1, [r5, #0x24]
	ldrh r0, [r0, #6]
	b _0202AB40
_0202AAF8:
	add r6, r7, #1
	smull r12, r7, lr, r6
	add r7, r7, r6, lsr #31
	smull r12, lr, r4, r7
	sub r7, r6, r12
	add r4, r2, r7, lsl #3
	ldrh r4, [r4, #4]
	cmp r4, #1
	bne _0202AB20
	b _0202AB24
_0202AB20:
	b _0202AAD8
_0202AB24:
	ldrh r0, [r2, r3]
	strh r0, [r5, #0x20]
	ldrh r0, [r1, #2]
	strh r0, [r5, #0x22]
	ldrh r0, [r1, #4]
	strh r0, [r5, #0x24]
	ldrh r0, [r1, #6]
_0202AB40:
	strh r0, [r5, #0x26]
	ldr r3, _0202AB70 ; =0x020B5AE0
	ldr r1, _0202AB7C ; =0x55555556
	ldr r0, [r3, #0x10]
	mov r2, #3
	add r5, r0, #1
	smull r0, r4, r1, r5
	add r4, r4, r5, lsr #31
	smull r0, r1, r2, r4
	sub r4, r5, r0
	str r4, [r3, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202AB70: .word unk_020B5AE0
_0202AB74: .word unk_020B5B40
_0202AB78: .word 0x02FFFFA8
_0202AB7C: .word 0x55555556
	arm_func_end FUN_0202aa14

	arm_func_start FUN_0202ab80
FUN_0202ab80: ; 0x0202AB80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _0202AC10 ; =0x020B5B08
	ldr r5, _0202AC14 ; =0x0209A0F0
	ldr r4, _0202AC18 ; =0x0209A0E8
	b _0202ABC4
_0202AB98:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _0202ABC0
	ldr r3, [r0]
	ldrh r1, [r5]
	ldrh r2, [r4]
	ldr r3, [r3, #0x14]
	blx r3
	cmp r0, #0
	bne _0202ABCC
_0202ABC0:
	add r7, r7, #1
_0202ABC4:
	cmp r7, #3
	blt _0202AB98
_0202ABCC:
	mov r6, #0
	ldr r4, _0202AC1C ; =0x020B5B00
	ldr r5, _0202AC10 ; =0x020B5B08
	b _0202AC04
_0202ABDC:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _0202AC00
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0202AC00:
	add r6, r6, #1
_0202AC04:
	cmp r6, #3
	blt _0202ABDC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202AC10: .word unk_020B5B08
_0202AC14: .word unk_0209A0F0
_0202AC18: .word unk_0209A0E8
_0202AC1C: .word unk_020B5B00
	arm_func_end FUN_0202ab80

	arm_func_start FUN_0202ac20
FUN_0202ac20: ; 0x0202AC20
	stmfd sp!, {r3, lr}
	ldr r0, _0202AC44 ; =0x020B5AE0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, pc}
_0202AC44: .word unk_020B5AE0
	arm_func_end FUN_0202ac20

	arm_func_start FUN_0202ac48
FUN_0202ac48: ; 0x0202AC48
	stmfd sp!, {r3, lr}
	ldr r0, _0202AC6C ; =0x020B5AE0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmfd sp!, {r3, pc}
_0202AC6C: .word unk_020B5AE0
	arm_func_end FUN_0202ac48

	arm_func_start FUN_0202ac70
FUN_0202ac70: ; 0x0202AC70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, #0
	ldr r6, _0202ACE8 ; =0x020B5B08
	strb r7, [sp]
	strb r7, [sp, #1]
	add r4, sp, #0
	mov r5, r7
_0202AC90:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _0202ACD0
	mov r8, r5
_0202ACA0:
	ldrb r0, [r4, r8]
	cmp r0, #0
	bne _0202ACC4
	ldr r0, [r6, r7, lsl #2]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0x1c]
	blx r2
	strb r0, [r4, r8]
_0202ACC4:
	add r8, r8, #1
	cmp r8, #2
	blt _0202ACA0
_0202ACD0:
	add r7, r7, #1
	cmp r7, #3
	blt _0202AC90
	bl FUN_0202ac48
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0202ACE8: .word unk_020B5B08
	arm_func_end FUN_0202ac70

	arm_func_start FUN_0202acec
FUN_0202acec: ; 0x0202ACEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, #0
	ldr r6, _0202AD60 ; =0x020B5B08
	strb r7, [sp]
	strb r7, [sp, #1]
	add r4, sp, #0
	mov r5, r7
_0202AD0C:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _0202AD4C
	mov r8, r5
_0202AD1C:
	ldrb r0, [r4, r8]
	cmp r0, #0
	bne _0202AD40
	ldr r0, [r6, r7, lsl #2]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	strb r0, [r4, r8]
_0202AD40:
	add r8, r8, #1
	cmp r8, #2
	blt _0202AD1C
_0202AD4C:
	add r7, r7, #1
	cmp r7, #3
	blt _0202AD0C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0202AD60: .word unk_020B5B08
	arm_func_end FUN_0202acec

	arm_func_start FUN_0202ad64
FUN_0202ad64: ; 0x0202AD64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0202AE18 ; =gCameraController
	ldr r1, _0202AE1C ; =gDeltaTime
	ldr r0, [r4]
	ldr r1, [r1]
	bl FUN_02059fac
	bl NNS_G3dGeFlushBuffer
	ldr r9, _0202AE20 ; =g3DSpriteCtrl
	ldr r0, [r9]
	bl FUN_ov16_0211680c
	ldr r0, _0202AE24 ; =g3DGameMap
	ldr r0, [r0]
	bl FUN_0205d420
	ldr r0, [r9]
	bl FUN_ov16_02116820
	ldr r8, _0202AE28 ; =g3DGameMapObject
	ldr r0, [r8]
	bl FUN_0205f130
	ldr r7, _0202AE2C ; =g3DGameChar
	mov r1, #0
	ldr r0, [r7]
	bl FUN_0205a73c
	ldr r6, _0202AE30 ; =0x02099F10
	ldr r0, [r6]
	bl FUN_0205c060
	ldr r5, _0202AE34 ; =g3DPlaneCtrl
	ldr r0, [r5]
	bl FUN_ov16_02112714
	bl NNS_G3dGeFlushBuffer
	ldr r0, [r4]
	bl FUN_ov16_020f7908
	ldr r0, [r8]
	bl FUN_0205f140
	ldr r0, [r7]
	mov r1, #1
	bl FUN_0205a73c
	ldr r0, [r5]
	bl FUN_ov16_02112704
	ldr r0, [r6]
	bl FUN_0205c150
	ldr r0, [r9]
	bl FUN_ov16_021167f8
	ldr r0, [r4]
	bl FUN_ov16_020f792c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202AE18: .word gCameraController
_0202AE1C: .word gDeltaTime
_0202AE20: .word g3DSpriteCtrl
_0202AE24: .word g3DGameMap
_0202AE28: .word g3DGameMapObject
_0202AE2C: .word g3DGameChar
_0202AE30: .word g3DGameEffect
_0202AE34: .word g3DPlaneCtrl
	arm_func_end FUN_0202ad64

	arm_func_start FUN_0202ae38
FUN_0202ae38: ; 0x0202AE38
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0202AF68 ; =gDeltaTime
	mov r4, #0
	ldr r0, _0202AF6C ; =0x0209A0F8
	mov r6, #1
	str r4, [r1]
	str r6, [r0]
	bl FUN_0202a7a8
	bl FUN_ov16_020f3f00
	bl FUN_0202a870
	ldr r5, _0202AF70 ; =0x0209A144
	ldr r1, _0202AF74 ; =0x0209A0DC
	ldr r0, _0202AF78 ; =0x0208FA10
	strb r4, [r1]
	mov r1, r5
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r5, [r5]
	mov r1, r4
	mov r0, r5
	mov r2, r4
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	bl _ZN6Thread4InitEv
	ldr r0, _0202AF7C ; =0x020B5B08
	mov r1, r4
_0202AEA8:
	str r1, [r0, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #3
	blt _0202AEA8
	ldr r0, _0202AF80 ; =0x0209A3E0
	ldr r4, _0202AF84 ; =0x020B5AE0
	str r0, [r4, #0x28]
	bl FUN_ov16_020fe23c
	ldr r0, _0202AF88 ; =0x020AF81C
	str r0, [r4, #0x2c]
	bl FUN_02043c80
	ldr r0, _0202AF8C ; =0x02FFFC20
	ldr r0, [r0]
	cmp r0, #0x11
	bne _0202AF38
	ldr r4, _0202AF90 ; =0x00008003
	mov r5, #0x10
	mov r0, r4
	mov r1, r5
	bl _ZN8Graphics19SetScreenBrightnessEti
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0202AF94 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
_0202AF10:
	mov r0, r4
	mov r1, r5
	bl _ZN8Graphics19SetScreenBrightnessEti
	bl OS_WaitVBlankIntr
	subs r5, r5, #1
	bpl _0202AF10
	mov r0, r4
	mvn r1, #0xf
	bl _ZN8Graphics19SetScreenBrightnessEti
	bl OS_WaitVBlankIntr
_0202AF38:
	ldr r4, _0202AF98 ; =gAllocator
	mov r1, #1
	mov r0, r4
	bl _ZN9Allocator15setDefaultArenaEi
	bl FUN_0202a4d4
	mov r0, r4
	mov r1, #0
	bl _ZN9Allocator15setDefaultArenaEi
	ldr r0, _0202AF9C ; =gLogicThink
	bl FUN_0206f29c
	bl FUN_0202a698
	ldmfd sp!, {r4, r5, r6, pc}
_0202AF68: .word gDeltaTime
_0202AF6C: .word unk_0209A0F8
_0202AF70: .word gDebugFont
_0202AF74: .word unk_0209A0DC
_0202AF78: .word unk_0208FA10
_0202AF7C: .word unk_020B5B08
_0202AF80: .word unk_0209A3E0
_0202AF84: .word unk_020B5AE0
_0202AF88: .word unk_020AF81C
_0202AF8C: .word 0x02FFFC20
_0202AF90: .word 0x00008003
_0202AF94: .word 0x04001000
_0202AF98: .word gAllocator
_0202AF9C: .word gLogicThink
	arm_func_end FUN_0202ae38

	arm_func_start FUN_0202afa0
FUN_0202afa0: ; 0x0202AFA0
	ldr r1, _0202AFC0 ; =gDeltaTime
	ldr r0, _0202AFC4 ; =0x020A0640
	ldr r2, [r1]
	ldr r1, [r0, #0x4dc]
	ldr r0, _0202AFC8 ; =0x020A0B00
	ldr r12, _0202AFCC ; =FUN_02074764
	add r1, r2, r1
	bx r12
_0202AFC0: .word gDeltaTime
_0202AFC4: .word unk_020A0640
_0202AFC8: .word unk_020A0B00
_0202AFCC: .word FUN_02074764
	arm_func_end FUN_0202afa0

	arm_func_start FUN_0202afd0
FUN_0202afd0: ; 0x0202AFD0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	bl FUN_0202ae38
	ldr r0, _0202B190 ; =0x02FFFC3C
	ldr r4, [r0]
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r3, _0202B194 ; =0x04001000
	ldr r0, _0202B198 ; =gAllocator
	ldr r2, [r3]
	mov r1, #1
	orr r2, r2, #0x10000
	str r2, [r3]
	bl _ZN9Allocator15setDefaultArenaEi
	ldr r1, _0202B19C ; =gWaitVBlank
	mov r2, #0
	ldr r0, _0202B1A0 ; =0x0209A124
	str r2, [r1]
	str r2, [r0]
_0202B01C:
	ldr r0, _0202B1A4 ; =0x02118490
	mov r6, #1
	str r6, [r0]
	ldr r5, _0202B1A8 ; =0x02FFFFA8
	str r6, [r0, #4]
	ldrh r0, [r5]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _0202B04C
	bl FUN_0202a6e4
	ldr r4, [r5, #-0x36c]
	b _0202B080
_0202B04C:
	bl PM_GetLCDPower
	cmp r0, #0
	bne _0202B080
	mov r0, r6
	bl PM_SetLCDPower
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0202B194 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl _ZN8Graphics16ResetScreenFadesEv
	bl OS_WaitVBlankIntr
_0202B080:
	ldr r5, _0202B1AC ; =g3DDevice
	ldr r0, [r5]
	bl FUN_02051434
	bl FUN_0202ac20
	bl FUN_0202a900
	bl FUN_0202aa14
	bl FUN_0202ab80
	ldr r0, _0202B1A0 ; =0x0209A124
	mov r1, #0
	str r1, [r0]
	bl _ZN6Thread9WakeUpAllEv
	bl FUN_0202ac70
	bl FUN_0202ad64
	ldr r0, _0202B1B0 ; =gResourceManager
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #0x38]
	ldr r0, [r5]
	bl FUN_02051448
	ldr r0, _0202B1B4 ; =0x0209A0E8
	ldrh r0, [r0]
	tst r0, #0x100
	beq _0202B100
	ldr r0, _0202B1B8 ; =0x0209A0F0
	ldrh r0, [r0]
	tst r0, #0x200
	beq _0202B100
	ldr r0, _0202B198 ; =gAllocator
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl _ZN9Allocator11getHeapInfoEPiS0_S0_
_0202B100:
	ldr r0, _0202B1A0 ; =0x0209A124
	ldr r2, _0202B19C ; =gWaitVBlank
	ldr r0, [r0]
	mov r1, #1
	str r1, [r2]
	cmp r0, #0
	beq _0202B120
	bl FUN_ov16_020f2604
_0202B120:
	ldr r5, _0202B19C ; =gWaitVBlank
_0202B124:
	bl OS_WaitVBlankIntr
	ldr r0, [r5]
	cmp r0, #0
	beq _0202B13C
	bl FUN_0202aa14
	b _0202B124
_0202B13C:
	ldr r1, _0202B190 ; =0x02FFFC3C
	ldr r0, _0202B1BC ; =gDeltaTime
	ldr r2, [r1]
	sub r1, r2, r4
	mov r4, r2
	str r1, [r0]
	bl FUN_0202acec
	ldr r5, _0202B1C0 ; =0x020B5AE0
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	ldr r1, [r1, #0x30]
	blx r1
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r0, _0202B1C4 ; =gAudioPlayer
	bl _ZN11AudioPlayer12FUN_0202b768Ev
	bl FUN_0202afa0
	bl FUN_0202a39c
	b _0202B01C
_0202B190: .word 0x02FFFC3C
_0202B194: .word 0x04001000
_0202B198: .word gAllocator
_0202B19C: .word gWaitVBlank
_0202B1A0: .word unk_0209A124
_0202B1A4: .word ov16_02118490
_0202B1A8: .word 0x02FFFFA8
_0202B1AC: .word g3DDevice
_0202B1B0: .word gResourceManager
_0202B1B4: .word unk_0209A0E8
_0202B1B8: .word unk_0209A0F0
_0202B1BC: .word gDeltaTime
_0202B1C0: .word unk_020B5AE0
_0202B1C4: .word gAudioPlayer
	arm_func_end FUN_0202afd0

	arm_func_start _ZN12CommonScreen5stateEv
_ZN12CommonScreen5stateEv: ; 0x0202B1C8
	mvn r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen5stateEv

	arm_func_start _ZN12CommonScreen6signalEi
_ZN12CommonScreen6signalEi: ; 0x0202B1D0
	mvn r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen6signalEi

	arm_func_start _ZN12CommonScreen8transferEPv
_ZN12CommonScreen8transferEPv: ; 0x0202B1D8
	mvn r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen8transferEPv

	arm_func_start _ZN12CommonScreen7vFUN_38Ev
_ZN12CommonScreen7vFUN_38Ev: ; 0x0202B1E0
	mov r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_38Ev

	arm_func_start _ZN12CommonScreen7vFUN_34Ev
_ZN12CommonScreen7vFUN_34Ev: ; 0x0202B1E8
	mov r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_34Ev

	arm_func_start _ZN12CommonScreen7vFUN_30Ev
_ZN12CommonScreen7vFUN_30Ev: ; 0x0202B1F0
	mov r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_30Ev

	arm_func_start _ZN12CommonScreen7vFUN_2CEv
_ZN12CommonScreen7vFUN_2CEv: ; 0x0202B1F8
	mov r0, #1
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_2CEv

	arm_func_start _ZN12CommonScreen7vFUN_28Ev
_ZN12CommonScreen7vFUN_28Ev: ; 0x0202B200
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_28Ev

	arm_func_start _ZN12CommonScreen7vFUN_24Ev
_ZN12CommonScreen7vFUN_24Ev: ; 0x0202B204
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_24Ev

	arm_func_start _ZN12CommonScreen7vFUN_14Ev
_ZN12CommonScreen7vFUN_14Ev: ; 0x0202B208
	mov r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_14Ev

	arm_func_start FUN_0202b210
FUN_0202b210: ; 0x0202B210
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202b210

	arm_func_start _ZN15CommonSubScreen16isBrightAdjustedEv
_ZN15CommonSubScreen16isBrightAdjustedEv: ; 0x0202B224
	ldr r12, _0202B22C ; =_ZN8Graphics19IsSubBrightAdjustedEv
	bx r12
_0202B22C: .word _ZN8Graphics19IsSubBrightAdjustedEv
	arm_func_end _ZN15CommonSubScreen16isBrightAdjustedEv

	arm_func_start _ZN15CommonSubScreen8isFadingEv
_ZN15CommonSubScreen8isFadingEv: ; 0x0202B230
	ldr r12, _0202B238 ; =_ZN8Graphics11IsSubFadingEv
	bx r12
_0202B238: .word _ZN8Graphics11IsSubFadingEv
	arm_func_end _ZN15CommonSubScreen8isFadingEv

	arm_func_start _ZN15CommonSubScreen9fadeWhiteEv
_ZN15CommonSubScreen9fadeWhiteEv: ; 0x0202B23C
	ldr r12, _0202B248 ; =_ZN8Graphics12FadeSubWhiteEl
	mov r0, #8
	bx r12
_0202B248: .word _ZN8Graphics12FadeSubWhiteEl
	arm_func_end _ZN15CommonSubScreen9fadeWhiteEv

	arm_func_start _ZN15CommonSubScreen9fadeBlackEv
_ZN15CommonSubScreen9fadeBlackEv: ; 0x0202B24C
	ldr r12, _0202B258 ; =_ZN8Graphics12FadeSubBlackEl
	mov r0, #6
	bx r12
_0202B258: .word _ZN8Graphics12FadeSubBlackEl
	arm_func_end _ZN15CommonSubScreen9fadeBlackEv

	arm_func_start _ZN15CommonSubScreen6fadeInEv
_ZN15CommonSubScreen6fadeInEv: ; 0x0202B25C
	ldr r12, _0202B268 ; =_ZN8Graphics9FadeInSubEl
	mov r0, #6
	bx r12
_0202B268: .word _ZN8Graphics9FadeInSubEl
	arm_func_end _ZN15CommonSubScreen6fadeInEv

	arm_func_start _ZN15CommonSubScreen8whiteOutEv
_ZN15CommonSubScreen8whiteOutEv: ; 0x0202B26C
	ldr r12, _0202B274 ; =_ZN8Graphics11WhiteOutSubEv
	bx r12
_0202B274: .word _ZN8Graphics11WhiteOutSubEv
	arm_func_end _ZN15CommonSubScreen8whiteOutEv

	arm_func_start _ZN15CommonSubScreen8blackOutEv
_ZN15CommonSubScreen8blackOutEv: ; 0x0202B278
	ldr r12, _0202B280 ; =_ZN8Graphics11BlackOutSubEv
	bx r12
_0202B280: .word _ZN8Graphics11BlackOutSubEv
	arm_func_end _ZN15CommonSubScreen8blackOutEv

	arm_func_start _ZN15CommonSubScreen10fadeUpdateEv
_ZN15CommonSubScreen10fadeUpdateEv: ; 0x0202B284
	ldr r12, _0202B290 ; =_ZN8Graphics16UpdateScreenFadeE12EngineSelect
	mov r0, #1
	bx r12
_0202B290: .word _ZN8Graphics16UpdateScreenFadeE12EngineSelect
	arm_func_end _ZN15CommonSubScreen10fadeUpdateEv

	arm_func_start _ZN15CommonSubScreen9fadeResetEv
_ZN15CommonSubScreen9fadeResetEv: ; 0x0202B294
	ldr r12, _0202B2A0 ; =_ZN8Graphics15ResetScreenFadeE12EngineSelect
	mov r0, #1
	bx r12
_0202B2A0: .word _ZN8Graphics15ResetScreenFadeE12EngineSelect
	arm_func_end _ZN15CommonSubScreen9fadeResetEv

	arm_func_start _ZN15CommonSubScreen8updateTPEP6TPData
_ZN15CommonSubScreen8updateTPEP6TPData: ; 0x0202B2A4
	bx lr
	arm_func_end _ZN15CommonSubScreen8updateTPEP6TPData

	arm_func_start _ZN15CommonSubScreen10updateKeysEtt
_ZN15CommonSubScreen10updateKeysEtt: ; 0x0202B2A8
	bx lr
	arm_func_end _ZN15CommonSubScreen10updateKeysEtt

	arm_func_start FUN_0202b2ac
FUN_0202b2ac: ; 0x0202B2AC
	bx lr
	arm_func_end FUN_0202b2ac

	arm_func_start _ZN16CommonMainScreen16isBrightAdjustedEv
_ZN16CommonMainScreen16isBrightAdjustedEv: ; 0x0202B2B0
	ldr r12, _0202B2B8 ; =_ZN8Graphics20IsMainBrightAdjustedEv
	bx r12
_0202B2B8: .word _ZN8Graphics20IsMainBrightAdjustedEv
	arm_func_end _ZN16CommonMainScreen16isBrightAdjustedEv

	arm_func_start _ZN16CommonMainScreen8isFadingEv
_ZN16CommonMainScreen8isFadingEv: ; 0x0202B2BC
	ldr r12, _0202B2C4 ; =_ZN8Graphics12IsMainFadingEv
	bx r12
_0202B2C4: .word _ZN8Graphics12IsMainFadingEv
	arm_func_end _ZN16CommonMainScreen8isFadingEv

	arm_func_start _ZN16CommonMainScreen9fadeWhiteEv
_ZN16CommonMainScreen9fadeWhiteEv: ; 0x0202B2C8
	ldr r12, _0202B2D4 ; =_ZN8Graphics13FadeMainWhiteEl
	mov r0, #8
	bx r12
_0202B2D4: .word _ZN8Graphics13FadeMainWhiteEl
	arm_func_end _ZN16CommonMainScreen9fadeWhiteEv

	arm_func_start _ZN16CommonMainScreen9fadeBlackEv
_ZN16CommonMainScreen9fadeBlackEv: ; 0x0202B2D8
	ldr r12, _0202B2E4 ; =_ZN8Graphics13FadeMainBlackEl
	mov r0, #6
	bx r12
_0202B2E4: .word _ZN8Graphics13FadeMainBlackEl
	arm_func_end _ZN16CommonMainScreen9fadeBlackEv

	arm_func_start _ZN16CommonMainScreen6fadeInEv
_ZN16CommonMainScreen6fadeInEv: ; 0x0202B2E8
	ldr r12, _0202B2F4 ; =_ZN8Graphics10FadeInMainEl
	mov r0, #6
	bx r12
_0202B2F4: .word _ZN8Graphics10FadeInMainEl
	arm_func_end _ZN16CommonMainScreen6fadeInEv

	arm_func_start _ZN16CommonMainScreen8whiteOutEv
_ZN16CommonMainScreen8whiteOutEv: ; 0x0202B2F8
	ldr r12, _0202B300 ; =_ZN8Graphics12WhiteOutMainEv
	bx r12
_0202B300: .word _ZN8Graphics12WhiteOutMainEv
	arm_func_end _ZN16CommonMainScreen8whiteOutEv

	arm_func_start _ZN16CommonMainScreen8blackOutEv
_ZN16CommonMainScreen8blackOutEv: ; 0x0202B304
	ldr r12, _0202B30C ; =_ZN8Graphics12BlackOutMainEv
	bx r12
_0202B30C: .word _ZN8Graphics12BlackOutMainEv
	arm_func_end _ZN16CommonMainScreen8blackOutEv

	arm_func_start _ZN16CommonMainScreen10fadeUpdateEv
_ZN16CommonMainScreen10fadeUpdateEv: ; 0x0202B310
	ldr r12, _0202B31C ; =_ZN8Graphics16UpdateScreenFadeE12EngineSelect
	mov r0, #0
	bx r12
_0202B31C: .word _ZN8Graphics16UpdateScreenFadeE12EngineSelect
	arm_func_end _ZN16CommonMainScreen10fadeUpdateEv

	arm_func_start _ZN16CommonMainScreen9fadeResetEv
_ZN16CommonMainScreen9fadeResetEv: ; 0x0202B320
	ldr r12, _0202B32C ; =_ZN8Graphics15ResetScreenFadeE12EngineSelect
	mov r0, #0
	bx r12
_0202B32C: .word _ZN8Graphics15ResetScreenFadeE12EngineSelect
	arm_func_end _ZN16CommonMainScreen9fadeResetEv

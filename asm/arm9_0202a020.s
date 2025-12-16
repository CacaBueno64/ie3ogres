
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
	bl FUN_ov16_020f1670
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
	ldr r0, _0202A618 ; =0x02099EC8
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
_0202A618: .word unk_02099EC8
_0202A61C: .word 0x02FFFC20
_0202A620: .word unk_020A0640
_0202A624: .word unk_0209A454
	arm_func_end FUN_0202a4d4

	arm_func_start FUN_0202a628
FUN_0202a628: ; 0x0202A628
	stmfd sp!, {r4, lr}
	ldr r0, _0202A664 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r0, _0202A668 ; =gL5Movie
	bl _ZN7L5Movie12FUN_0202e978Ev
	ldr r0, _0202A66C ; =gL5Sound
	bl FUN_0202b768
	mov r0, #0x14
	bl OS_Sleep
	mov r4, #0
	mov r0, r4
	bl FUN_02074fb8
	mov r0, r4
	bl DseSe_StopAll
	ldmfd sp!, {r4, pc}
_0202A664: .word gWirelessUtil
_0202A668: .word gL5Movie
_0202A66C: .word gL5Sound
	arm_func_end FUN_0202a628

	arm_func_start FUN_0202a670
FUN_0202a670: ; 0x0202A670
	stmfd sp!, {r3, lr}
	mov r0, #0x14
	bl OS_Sleep
	ldr r0, _0202A690 ; =gL5Sound
	bl FUN_0202b714
	ldr r0, _0202A694 ; =gL5Movie
	bl _ZN7L5Movie12FUN_0202e9c8Ev
	ldmfd sp!, {r3, pc}
_0202A690: .word gL5Sound
_0202A694: .word gL5Movie
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
	ldr r0, _0202A798 ; =0x0209A5D0
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
_0202A798: .word unk_0209A5D0
_0202A79C: .word unk_020A0640
_0202A7A0: .word gWirelessUtil
_0202A7A4: .word 0x04001000
	arm_func_end FUN_0202a6e4

	arm_func_start FUN_0202a7a8
FUN_0202a7a8: ; 0x0202A7A8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0202A844 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7374
	ldr r5, _0202A848 ; =gL5Config
	ldr r1, _0202A84C ; =0x0208F978
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	ldr r4, _0202A850 ; =0x0208F6F0
	ldr r1, _0202A854 ; =0x0208F988
	str r0, [r4]
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #4]
	ldr r1, _0202A858 ; =0x0208F99C
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0xc]
	ldr r1, _0202A85C ; =0x0208F9B0
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x10]
	ldr r1, _0202A860 ; =0x0208F9C4
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x28]
	mov r0, r5
	ldr r1, _0202A864 ; =0x0208F9D4
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x2c]
	mov r0, r5
	ldr r1, _0202A868 ; =0x0208F9E8
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x30]
	mov r0, r5
	ldr r1, _0202A86C ; =0x0208F9FC
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x34]
	ldmfd sp!, {r3, r4, r5, pc}
_0202A844: .word unk_02099F24
_0202A848: .word gL5Config
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
	ldr r4, _0202AE18 ; =0x02099F24
	ldr r1, _0202AE1C ; =0x0209A110
	ldr r0, [r4]
	ldr r1, [r1]
	bl FUN_02059fac
	bl NNS_G3dGeFlushBuffer
	ldr r9, _0202AE20 ; =0x02099F58
	ldr r0, [r9]
	bl FUN_ov16_0211680c
	ldr r0, _0202AE24 ; =0x02099EB0
	ldr r0, [r0]
	bl FUN_0205d420
	ldr r0, [r9]
	bl FUN_ov16_02116820
	ldr r8, _0202AE28 ; =0x02099EE8
	ldr r0, [r8]
	bl FUN_0205f130
	ldr r7, _0202AE2C ; =0x02099EEC
	mov r1, #0
	ldr r0, [r7]
	bl FUN_0205a73c
	ldr r6, _0202AE30 ; =0x02099F10
	ldr r0, [r6]
	bl FUN_0205c060
	ldr r5, _0202AE34 ; =0x02099F38
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
_0202AE18: .word unk_02099F24
_0202AE1C: .word unk_0209A110
_0202AE20: .word unk_02099F58
_0202AE24: .word unk_02099EB0
_0202AE28: .word unk_02099EE8
_0202AE2C: .word unk_02099EEC
_0202AE30: .word unk_02099F10
_0202AE34: .word unk_02099F38
	arm_func_end FUN_0202ad64

	arm_func_start FUN_0202ae38
FUN_0202ae38: ; 0x0202AE38
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0202AF68 ; =0x0209A110
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
	bl FUN_ov16_020f3054
	ldr r5, [r5]
	mov r1, r4
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020f1138
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f1138
	bl L5Thread_Init
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
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0202AF94 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
_0202AF10:
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	subs r5, r5, #1
	bpl _0202AF10
	mov r0, r4
	mvn r1, #0xf
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
_0202AF38:
	ldr r4, _0202AF98 ; =gL5Allocator
	mov r1, #1
	mov r0, r4
	bl _ZN11L5Allocator15setDefaultArenaEi
	bl FUN_0202a4d4
	mov r0, r4
	mov r1, #0
	bl _ZN11L5Allocator15setDefaultArenaEi
	ldr r0, _0202AF9C ; =0x0209BA20
	bl FUN_0206f29c
	bl FUN_0202a698
	ldmfd sp!, {r4, r5, r6, pc}
_0202AF68: .word unk_0209A110
_0202AF6C: .word unk_0209A0F8
_0202AF70: .word unk_0209A144
_0202AF74: .word unk_0209A0DC
_0202AF78: .word unk_0208FA10
_0202AF7C: .word unk_020B5B08
_0202AF80: .word unk_0209A3E0
_0202AF84: .word unk_020B5AE0
_0202AF88: .word unk_020AF81C
_0202AF8C: .word 0x02FFFC20
_0202AF90: .word 0x00008003
_0202AF94: .word 0x04001000
_0202AF98: .word gL5Allocator
_0202AF9C: .word gLogicThink
	arm_func_end FUN_0202ae38

	arm_func_start FUN_0202afa0
FUN_0202afa0: ; 0x0202AFA0
	ldr r1, _0202AFC0 ; =0x0209A110
	ldr r0, _0202AFC4 ; =0x020A0640
	ldr r2, [r1]
	ldr r1, [r0, #0x4dc]
	ldr r0, _0202AFC8 ; =0x020A0B00
	ldr r12, _0202AFCC ; =FUN_02074764
	add r1, r2, r1
	bx r12
_0202AFC0: .word unk_0209A110
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
	ldr r0, _0202B198 ; =gL5Allocator
	ldr r2, [r3]
	mov r1, #1
	orr r2, r2, #0x10000
	str r2, [r3]
	bl _ZN11L5Allocator15setDefaultArenaEi
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
	bl FUN_ov16_020f129c
	bl OS_WaitVBlankIntr
_0202B080:
	ldr r5, _0202B1AC ; =0x02099F18
	ldr r0, [r5]
	bl FUN_02051434
	bl FUN_0202ac20
	bl FUN_0202a900
	bl FUN_0202aa14
	bl FUN_0202ab80
	ldr r0, _0202B1A0 ; =0x0209A124
	mov r1, #0
	str r1, [r0]
	bl L5Thread_WakeUpAll
	bl FUN_0202ac70
	bl FUN_0202ad64
	ldr r0, _0202B1B0 ; =0x02099F30
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
	ldr r0, _0202B198 ; =gL5Allocator
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_0202e38c
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
	ldr r0, _0202B1BC ; =0x0209A110
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
	ldr r0, _0202B1C4 ; =gL5Sound
	bl FUN_0202b768
	bl FUN_0202afa0
	bl FUN_0202a39c
	b _0202B01C
_0202B190: .word 0x02FFFC3C
_0202B194: .word 0x04001000
_0202B198: .word gL5Allocator
_0202B19C: .word gWaitVBlank
_0202B1A0: .word unk_0209A124
_0202B1A4: .word ov16_02118490
_0202B1A8: .word 0x02FFFFA8
_0202B1AC: .word unk_02099F18
_0202B1B0: .word unk_02099F30
_0202B1B4: .word unk_0209A0E8
_0202B1B8: .word unk_0209A0F0
_0202B1BC: .word unk_0209A110
_0202B1C0: .word unk_020B5AE0
_0202B1C4: .word gL5Sound
	arm_func_end FUN_0202afd0

	arm_func_start _ZN12CommonScreen7vFUN_68Ev
_ZN12CommonScreen7vFUN_68Ev: ; 0x0202B1C8
	mvn r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_68Ev

	arm_func_start _ZN12CommonScreen7vFUN_64Ei
_ZN12CommonScreen7vFUN_64Ei: ; 0x0202B1D0
	mvn r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_64Ei

	arm_func_start _ZN12CommonScreen7vFUN_60Ei
_ZN12CommonScreen7vFUN_60Ei: ; 0x0202B1D8
	mvn r0, #0
	bx lr
	arm_func_end _ZN12CommonScreen7vFUN_60Ei

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
	ldr r12, _0202B22C ; =FUN_ov16_020f1800
	bx r12
_0202B22C: .word FUN_ov16_020f1800
	arm_func_end _ZN15CommonSubScreen16isBrightAdjustedEv

	arm_func_start _ZN15CommonSubScreen8isFadingEv
_ZN15CommonSubScreen8isFadingEv: ; 0x0202B230
	ldr r12, _0202B238 ; =FUN_ov16_020f1660
	bx r12
_0202B238: .word FUN_ov16_020f1660
	arm_func_end _ZN15CommonSubScreen8isFadingEv

	arm_func_start _ZN15CommonSubScreen9fadeWhiteEv
_ZN15CommonSubScreen9fadeWhiteEv: ; 0x0202B23C
	ldr r12, _0202B248 ; =FUN_ov16_020f15c8
	mov r0, #8
	bx r12
_0202B248: .word FUN_ov16_020f15c8
	arm_func_end _ZN15CommonSubScreen9fadeWhiteEv

	arm_func_start _ZN15CommonSubScreen9fadeBlackEv
_ZN15CommonSubScreen9fadeBlackEv: ; 0x0202B24C
	ldr r12, _0202B258 ; =FUN_ov16_020f1528
	mov r0, #6
	bx r12
_0202B258: .word FUN_ov16_020f1528
	arm_func_end _ZN15CommonSubScreen9fadeBlackEv

	arm_func_start _ZN15CommonSubScreen6fadeInEv
_ZN15CommonSubScreen6fadeInEv: ; 0x0202B25C
	ldr r12, _0202B268 ; =FUN_ov16_020f147c
	mov r0, #6
	bx r12
_0202B268: .word FUN_ov16_020f147c
	arm_func_end _ZN15CommonSubScreen6fadeInEv

	arm_func_start _ZN15CommonSubScreen8whiteOutEv
_ZN15CommonSubScreen8whiteOutEv: ; 0x0202B26C
	ldr r12, _0202B274 ; =FUN_ov16_020f13c4
	bx r12
_0202B274: .word FUN_ov16_020f13c4
	arm_func_end _ZN15CommonSubScreen8whiteOutEv

	arm_func_start _ZN15CommonSubScreen8blackOutEv
_ZN15CommonSubScreen8blackOutEv: ; 0x0202B278
	ldr r12, _0202B280 ; =FUN_ov16_020f1310
	bx r12
_0202B280: .word FUN_ov16_020f1310
	arm_func_end _ZN15CommonSubScreen8blackOutEv

	arm_func_start _ZN15CommonSubScreen10fadeUpdateEv
_ZN15CommonSubScreen10fadeUpdateEv: ; 0x0202B284
	ldr r12, _0202B290 ; =FUN_ov16_020f16c8
	mov r0, #1
	bx r12
_0202B290: .word FUN_ov16_020f16c8
	arm_func_end _ZN15CommonSubScreen10fadeUpdateEv

	arm_func_start _ZN15CommonSubScreen9fadeResetEv
_ZN15CommonSubScreen9fadeResetEv: ; 0x0202B294
	ldr r12, _0202B2A0 ; =FUN_ov16_020f12b4
	mov r0, #1
	bx r12
_0202B2A0: .word FUN_ov16_020f12b4
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
	ldr r12, _0202B2B8 ; =FUN_ov16_020f17f0
	bx r12
_0202B2B8: .word FUN_ov16_020f17f0
	arm_func_end _ZN16CommonMainScreen16isBrightAdjustedEv

	arm_func_start _ZN16CommonMainScreen8isFadingEv
_ZN16CommonMainScreen8isFadingEv: ; 0x0202B2BC
	ldr r12, _0202B2C4 ; =FUN_ov16_020f1650
	bx r12
_0202B2C4: .word FUN_ov16_020f1650
	arm_func_end _ZN16CommonMainScreen8isFadingEv

	arm_func_start _ZN16CommonMainScreen9fadeWhiteEv
_ZN16CommonMainScreen9fadeWhiteEv: ; 0x0202B2C8
	ldr r12, _0202B2D4 ; =FUN_ov16_020f15b4
	mov r0, #8
	bx r12
_0202B2D4: .word FUN_ov16_020f15b4
	arm_func_end _ZN16CommonMainScreen9fadeWhiteEv

	arm_func_start _ZN16CommonMainScreen9fadeBlackEv
_ZN16CommonMainScreen9fadeBlackEv: ; 0x0202B2D8
	ldr r12, _0202B2E4 ; =FUN_ov16_020f1514
	mov r0, #6
	bx r12
_0202B2E4: .word FUN_ov16_020f1514
	arm_func_end _ZN16CommonMainScreen9fadeBlackEv

	arm_func_start _ZN16CommonMainScreen6fadeInEv
_ZN16CommonMainScreen6fadeInEv: ; 0x0202B2E8
	ldr r12, _0202B2F4 ; =FUN_ov16_020f1468
	mov r0, #6
	bx r12
_0202B2F4: .word FUN_ov16_020f1468
	arm_func_end _ZN16CommonMainScreen6fadeInEv

	arm_func_start _ZN16CommonMainScreen8whiteOutEv
_ZN16CommonMainScreen8whiteOutEv: ; 0x0202B2F8
	ldr r12, _0202B300 ; =FUN_ov16_020f13b4
	bx r12
_0202B300: .word FUN_ov16_020f13b4
	arm_func_end _ZN16CommonMainScreen8whiteOutEv

	arm_func_start _ZN16CommonMainScreen8blackOutEv
_ZN16CommonMainScreen8blackOutEv: ; 0x0202B304
	ldr r12, _0202B30C ; =FUN_ov16_020f1300
	bx r12
_0202B30C: .word FUN_ov16_020f1300
	arm_func_end _ZN16CommonMainScreen8blackOutEv

	arm_func_start _ZN16CommonMainScreen10fadeUpdateEv
_ZN16CommonMainScreen10fadeUpdateEv: ; 0x0202B310
	ldr r12, _0202B31C ; =FUN_ov16_020f16c8
	mov r0, #0
	bx r12
_0202B31C: .word FUN_ov16_020f16c8
	arm_func_end _ZN16CommonMainScreen10fadeUpdateEv

	arm_func_start _ZN16CommonMainScreen9fadeResetEv
_ZN16CommonMainScreen9fadeResetEv: ; 0x0202B320
	ldr r12, _0202B32C ; =FUN_ov16_020f12b4
	mov r0, #0
	bx r12
_0202B32C: .word FUN_ov16_020f12b4
	arm_func_end _ZN16CommonMainScreen9fadeResetEv

	arm_func_start FUN_0202b330
FUN_0202b330: ; 0x0202B330
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r5, r0
	mov r6, r2
	cmp r1, #0
	bne _0202B37C
	cmp r3, #2
	bne _0202B370
	ldr r0, _0202B3D0 ; =0x020B5B78
	ldr r0, [r0]
	cmp r0, #1
	blt _0202B370
	ldr r0, _0202B3D4 ; =gL5Allocator
	ldr r1, _0202B3D8 ; =0x00000102
	b _0202B378
_0202B370:
	ldr r0, _0202B3D4 ; =gL5Allocator
	mov r1, #2
_0202B378:
	bl _ZN11L5Allocator12setNextArenaEi
_0202B37C:
	cmp r6, #0
	beq _0202B3AC
	ldr r0, _0202B3D0 ; =0x020B5B78
	ldr r3, [sp, #0x10]
	ldr r1, [r0, #4]
	mov r0, r4
	mov r2, r5
	bl L5FS_ReadFileByIdxDeferred
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0202B3AC:
	ldr r1, _0202B3D0 ; =0x020B5B78
	mov r0, r4
	ldr r1, [r1, #4]
	mov r2, r5
	bl L5FS_ReadFileByIdx
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0202B3D0: .word unk_020B5B78
_0202B3D4: .word gL5Allocator
_0202B3D8: .word 0x00000102
	arm_func_end FUN_0202b330

	arm_func_start FUN_0202b3dc
FUN_0202b3dc: ; 0x0202B3DC
	bx lr
	arm_func_end FUN_0202b3dc

	arm_func_start FUN_0202b3e0 ; https://decomp.me/scratch/Ibjml
FUN_0202b3e0: ; 0x0202B3E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202B3EC:
	mov r0, r5
	mov r1, r4
	bl FUN_0202d08c
	add r4, r4, #1
	cmp r4, #2
	blt _0202B3EC
	mov r4, #0
_0202B408:
	mov r0, r5
	mov r1, r4
	bl FUN_0202cf00
	add r4, r4, #1
	cmp r4, #2
	blt _0202B408
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl _ZN7L5Sound12FUN_0202d774Emm
	mov r0, r5
	mov r1, r4
	bl _ZN7L5Sound12FUN_0202d578Em
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202b3e0

	arm_func_start FUN_0202b448
FUN_0202b448: ; 0x0202B448
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r4, r0
	str r1, [r4]
	bl SND_Init
	ldr r8, _0202B704 ; =0x0000FFFF
	mov r9, #0
	mov r0, r8
	mov r1, r9
	bl SND_LockChannel
	mov r7, #4
	mov r6, #1
	ldr r0, [r4]
	add r1, r8, #0x10
	mov r2, r7
	mov r3, r6
	bl _ZN11L5Allocator8allocateEiii
	add r5, sp, #0
	mov r10, r0
	mov r0, r5
	bl DseDriver_LoadDefaultSettings
	add r0, r10, #0xf
	bic r1, r0, #0xf
	mov r0, r5
	mov r2, #0x10000
	bl DseDriver_ConfigureHeap
	mov r0, r5
	mov r1, r9
	mov r2, r7
	bl FUN_02074c58
	mov r0, r5
	mov r1, #5
	bl FUN_02074c8c
	mov r10, #0xf
	mov r0, r5
	mov r1, r9
	mov r2, r10
	bl FUN_02074cbc
	mov r0, r5
	bl DseDriver_Init
	mov r0, r7
	mov r1, r7
	bl DseSe_SysReset
	add r0, r4, #4
	bl FUN_0207c2ec
	add r0, r4, #4
	mov r1, #6
	bl FUN_0207c348
	add r0, r4, #4
	mov r1, #0x14
	bl FUN_0207c368
	mov r1, r6
	add r0, r4, #4
	bl FUN_0207c388
	mov r2, r10
	add r0, r4, #4
	mov r1, #8
	bl FUN_0207c3b8
	mov r5, #0x1000
	add r0, r4, #4
	mov r1, r5
	bl FUN_0207c3f0
	mov r1, r5
	add r0, r4, #4
	bl FUN_0207c430
	add r0, r4, #4
	bl FUN_0207c5c0
	mov r1, #0x7f
	add r0, r4, #0x200
	strh r1, [r0, #0x58]
	strh r1, [r0, #0x5a]
	strh r1, [r0, #0x5c]
	mov r1, #0x3e8
	strh r1, [r0, #0x5e]
	strh r1, [r0, #0x60]
	add r0, r4, #0x58
	mov r1, r9
	mov r2, #0x64
	bl MI_CpuFill8
	sub r2, r8, #0x10000
	mov r5, r9
	mov r0, #0x14
_0202B590:
	mla r1, r9, r0, r4
	add r9, r9, #1
	strh r2, [r1, #0x5c]
	cmp r9, #5
	blt _0202B590
	mov r6, #0
	mov r1, r6
	add r0, r4, #0xbc
	mov r2, #4
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0xc0
	mov r2, #0x18
	bl MI_CpuFill8
	mvn r2, #0
	mov r0, #0xc
_0202B5D0:
	mla r1, r6, r0, r4
	add r6, r6, #1
	strh r2, [r1, #0xc0]
	cmp r6, #2
	blt _0202B5D0
	mov r6, #0
	mov r1, r6
	add r0, r4, #0xd8
	mov r2, #0x30
	bl MI_CpuFill8
	mov r7, #0x38
	mov r1, r6
	mov r2, r7
	add r0, r4, #0x108
	bl MI_CpuFill8
	mov r1, r6
	mov r2, r7
	add r0, r4, #0x140
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0x178
	mov r2, r7
	bl MI_CpuFill8
	add r0, r4, #0x1b0
	mov r1, r6
	mov r2, r7
	bl MI_CpuFill8
	add r0, r4, #0x1e8
	mov r1, r6
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	add r0, r4, #0x220
	mov r1, r6
	bl MI_CpuFill8
	mvn r2, #0
	mov r0, #0x1c
_0202B664:
	mla r3, r6, r0, r4
	add r1, r3, #0x100
	strh r2, [r1, #0x18]
	strh r2, [r1, #0x50]
	strh r2, [r1, #0x88]
	strh r2, [r1, #0xc0]
	add r6, r6, #1
	strh r2, [r1, #0xf8]
	add r1, r3, #0x200
	strh r2, [r1, #0x30]
	cmp r6, #2
	blt _0202B664
	mov r3, #0
	mvn r2, #0
	mov r0, #0xc
_0202B6A0:
	mla r1, r3, r0, r4
	add r3, r3, #1
	strb r2, [r1, #0xc3]
	cmp r3, #2
	blt _0202B6A0
	ldr r0, [r4]
	mov r2, #4
	ldr r1, _0202B708 ; =0x00064010
	mov r3, #1
	strb r2, [r4, #0x5f]
	bl _ZN11L5Allocator8allocateEiii
	mov r1, #5
	str r0, [r4, #0x58]
	str r0, [r4, #0x6c]
	mov r0, #2
	strb r1, [r4, #0x73]
	bl L5FS_SetNextArena
	ldr r1, _0202B70C ; =0x0208FACC
	mov r0, r5
	bl L5FS_OpenArchiveDirect
	ldr r1, _0202B710 ; =0x020B5B78
	str r0, [r1, #4]
	str r5, [r4, #0x264]
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0202B704: .word 0x0000FFFF
_0202B708: .word 0x00064010
_0202B70C: .word unk_0208FACC
_0202B710: .word unk_020B5B78
	arm_func_end FUN_0202b448

	arm_func_start FUN_0202b714
FUN_0202b714: ; 0x0202B714
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r0, r4
	bl FUN_0207504c
	ldrh r0, [r5, #0xfe]
	tst r0, #4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x100]
	mov r1, r4
	bl FUN_0207d1c4
	ldrh r1, [r5, #0xfe]
	ldr r0, _0202B754 ; =0x0000FFFB
	and r0, r1, r0
	strh r0, [r5, #0xfe]
	ldmfd sp!, {r3, r4, r5, pc}
_0202B754: .word 0x0000FFFB
	arm_func_end FUN_0202b714

	arm_func_start FUN_0202b758
FUN_0202b758: ; 0x0202B758
	ldr r12, _0202B764 ; =FUN_02074F18
	mov r0, #1
	bx r12
_0202B764: .word FUN_02074F18
	arm_func_end FUN_0202b758

	arm_func_start FUN_0202b768
FUN_0202b768: ; 0x0202B768
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0202c5e8
	mov r0, r5
	bl FUN_0202d228
	mov r0, r5
	bl FUN_0202d7ec
	mov r4, #0
_0202B788:
	add r1, r5, r4, lsl #1
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	beq _0202B7A4
	ldrsb r1, [r1, #0xbc]
	mov r0, r5
	bl FUN_0202cc34
_0202B7A4:
	add r4, r4, #1
	cmp r4, #2
	blt _0202B788
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202b768

	arm_func_start _ZN7L5Sound12FUN_0202b7b4Ev
_ZN7L5Sound12FUN_0202b7b4Ev: ; 0x0202B7B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0202d228
	mov r2, #0
	mov r0, #0xc
_0202B7C8:
	mla r1, r2, r0, r4
	ldrh r1, [r1, #0xc4]
	tst r1, #0x11
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	add r2, r2, #1
	cmp r2, #2
	blt _0202B7C8
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN7L5Sound12FUN_0202b7b4Ev

	arm_func_start _ZN7L5Sound12FUN_0202b7f0Ev
_ZN7L5Sound12FUN_0202b7f0Ev: ; 0x0202B7F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202B7FC:
	add r1, r5, r4, lsl #1
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	beq _0202B824
	ldrsb r1, [r1, #0xbc]
	mov r0, r5
	bl FUN_0202cc34
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0202B824:
	add r4, r4, #1
	cmp r4, #2
	blt _0202B7FC
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN7L5Sound12FUN_0202b7f0Ev

	arm_func_start _ZN7L5Sound12FUN_0202b838Eiii
_ZN7L5Sound12FUN_0202b838Eiii: ; 0x0202B838
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r5, [r4, #0x264]
	mov r9, r1
	mov r8, r2
	mov r6, r3
	cmp r5, r9
	mov r7, #0
	beq _0202B864
	bl FUN_0202bad8
_0202B864:
	str r9, [r4, #0x264]
	cmp r9, #0xb
	addls pc, pc, r9, lsl #2
	b _0202BAA0
_0202B874: ; jump table
	b _0202BAA0 ; case 0
	b _0202BAA0 ; case 1
	b _0202B8A4 ; case 2
	b _0202B8C8 ; case 3
	b _0202B904 ; case 4
	b _0202B928 ; case 5
	b _0202B980 ; case 6
	b _0202B95C ; case 7
	b _0202B9D4 ; case 8
	b _0202BA60 ; case 9
	b _0202BAA0 ; case 10
	b _0202BAA0 ; case 11
_0202B8A4:
	ldr r2, _0202BAAC ; =0x0208FAD8
	mov r0, r4
	mov r1, r7
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B8C8:
	ldr r0, _0202BAB0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	mov r1, #0
	beq _0202B8E4
	ldr r2, _0202BAB4 ; =0x0208FAE0
	b _0202B8E8
_0202B8E4:
	ldr r2, _0202BAB8 ; =0x0208FAE8
_0202B8E8:
	mov r0, r4
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B904:
	ldr r2, _0202BABC ; =0x0208FAF0
	mov r0, r4
	mov r1, #2
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B928:
	mov r0, r4
	mov r1, r7
	mov r2, #6
	bl FUN_0202bea4
	ldr r2, _0202BAC0 ; =0x0208FAF8
	mov r0, r4
	mov r1, #2
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B95C:
	ldr r2, _0202BAC4 ; =0x0208FB00
	mov r0, r4
	mov r1, #1
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B980:
	ldr r2, _0202BAC8 ; =0x0208FB08
	mov r0, r4
	mov r1, #1
	bl FUN_0202cdd4
	cmp r5, #5
	bne _0202BAA0
	mov r8, #0
	add r6, r4, #0x1e8
	mov r5, #0x1c
_0202B9A4:
	mov r0, r4
	mov r1, r8
	mov r2, r7
	mov r3, r7
	bl FUN_0202c364
	mla r1, r8, r5, r6
	mov r0, r4
	bl FUN_0202be18
	add r8, r8, #1
	cmp r8, #2
	blt _0202B9A4
	b _0202BAA0
_0202B9D4:
	cmp r8, #0
	beq _0202BA08
	add r5, sp, #0
	ldr r1, _0202BACC ; =0x0208FB10
	mov r0, r5
	mov r2, r8
	bl sprintf
	mov r0, r4
	mov r2, r5
	mov r1, #0
	mov r3, #1
	bl FUN_0202bec0
	b _0202BA18
_0202BA08:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl FUN_0202bea4
_0202BA18:
	cmp r6, #0
	beq _0202BA4C
	add r5, sp, #0
	ldr r1, _0202BAD0 ; =0x0208FB18
	mov r0, r5
	mov r2, r6
	bl sprintf
	mov r1, #1
	mov r0, r4
	mov r2, r5
	mov r3, r1
	bl FUN_0202bec0
	b _0202BAA0
_0202BA4C:
	mov r0, r4
	mov r1, #1
	mov r2, #0
	bl FUN_0202bea4
	b _0202BAA0
_0202BA60:
	mov r6, #4
	mov r0, r4
	mov r1, r6
	bl FUN_0202db98
	ldr r2, _0202BAD4 ; =0x0208FB20
	mov r0, r4
	mov r1, #1
	bl FUN_0202cdd4
	mov r5, r0
	mov r0, r4
	mov r1, r6
	bl FUN_0202db98
	cmp r5, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BAA0:
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BAAC: .word unk_0208FAD8
_0202BAB0: .word gLogicThink
_0202BAB4: .word unk_0208FAE0
_0202BAB8: .word unk_0208FAE8
_0202BABC: .word unk_0208FAF0
_0202BAC0: .word unk_0208FAF8
_0202BAC4: .word unk_0208FB00
_0202BAC8: .word unk_0208FB08
_0202BACC: .word unk_0208FB10
_0202BAD0: .word unk_0208FB18
_0202BAD4: .word unk_0208FB20
	arm_func_end _ZN7L5Sound12FUN_0202b838Eiii

	arm_func_start FUN_0202bad8
FUN_0202bad8: ; 0x0202BAD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x264]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0202BB4C
_0202BAF0: ; jump table
	b _0202BB4C ; case 0
	b _0202BB4C ; case 1
	b _0202BB4C ; case 2
	b _0202BB4C ; case 3
	b _0202BB20 ; case 4
	b _0202BB24 ; case 5
	b _0202BB30 ; case 6
	b _0202BB28 ; case 7
	b _0202BB4C ; case 8
	b _0202BB34 ; case 9
	b _0202BB38 ; case 10
	b _0202BB4C ; case 11
_0202BB20:
	b _0202BB44
_0202BB24:
	b _0202BB20
_0202BB28:
	mov r1, #1
	b _0202BB48
_0202BB30:
	b _0202BB38
_0202BB34:
	b _0202BB28
_0202BB38:
	mov r1, #1
	bl FUN_0202cf00
	mov r0, r4
_0202BB44:
	mov r1, #2
_0202BB48:
	bl FUN_0202cf00
_0202BB4C:
	mov r0, #0
	str r0, [r4, #0x264]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202bad8

	arm_func_start FUN_0202bb58
FUN_0202bb58: ; 0x0202BB58
	add r2, r0, #0x200
	strh r1, [r2, #0x5a]
	ldrh r1, [r2, #0x5e]
	ldr r12, _0202BB6C ; =FUN_0202bbac
	bx r12
_0202BB6C: .word FUN_0202bbac
	arm_func_end FUN_0202bb58

	arm_func_start FUN_0202bb70
FUN_0202bb70: ; 0x0202BB70
	add r2, r0, #0x200
	strh r1, [r2, #0x5e]
	ldrh r1, [r2, #0x5e]
	ldr r12, _0202BB84 ; =FUN_0202bbac
	bx r12
_0202BB84: .word FUN_0202bbac
	arm_func_end FUN_0202bb70

	arm_func_start FUN_0202bb88
FUN_0202bb88: ; 0x0202BB88
	add r0, r0, #0x200
	ldrh r0, [r0, #0x5a]
	bx lr
	arm_func_end FUN_0202bb88

	arm_func_start FUN_0202bb94
FUN_0202bb94: ; 0x0202BB94
	add r0, r0, #0x200
	strh r1, [r0, #0x5c]
	bx lr
	arm_func_end FUN_0202bb94

	arm_func_start FUN_0202bba0
FUN_0202bba0: ; 0x0202BBA0
	add r0, r0, #0x200
	ldrh r0, [r0, #0x5c]
	bx lr
	arm_func_end FUN_0202bba0

	arm_func_start FUN_0202bbac
FUN_0202bbac: ; 0x0202BBAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r2, r5, #0x200
	ldrh r3, [r2, #0x5a]
	ldrh r4, [r2, #0x58]
	ldr r2, _0202BC44 ; =0x10624DD3
	mul r1, r3, r1
	mul r1, r4, r1
	mov r3, r1, asr #7
	smull r1, r4, r2, r3
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #6
	mov r1, r4, lsl #0x18
	mov r1, r1, asr #0x18
	mov r2, #0x3e8
	bl FUN_0202bc48
	mov r4, #0
	mov r6, #0x14
	mov r7, #0xc
_0202BBF8:
	mla r1, r4, r7, r5
	ldrh r0, [r1, #0xc6]
	tst r0, #2
	beq _0202BC1C
	ldrsb r2, [r1, #0xc3]
	add r1, r5, #0x44
	mla r0, r2, r6, r5
	ldr r0, [r0, #0x64]
	bl DseBgm_SetFades
_0202BC1C:
	add r4, r4, #1
	cmp r4, #2
	blt _0202BBF8
	ldrh r0, [r5, #0xfe]
	tst r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x100]
	add r1, r5, #0x44
	bl FUN_0207d3e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202BC44: .word 0x10624DD3
	arm_func_end FUN_0202bbac

	arm_func_start FUN_0202bc48
FUN_0202bc48: ; 0x0202BC48
	cmp r1, #0
	moveq r2, #0
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r1, r1, r2, lsl #16
	mov r2, #4
	str r1, [r0, #0x50]
	str r2, [r0, #0x44]
	bx lr
	arm_func_end FUN_0202bc48

	arm_func_start FUN_0202bc6c
FUN_0202bc6c: ; 0x0202BC6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_0202c470
	mov r0, r5
	mov r1, r4
	bl FUN_0202cff8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202bc6c

	arm_func_start FUN_0202bc90
FUN_0202bc90: ; 0x0202BC90
	ldrsh r0, [r2, #0x10]
	add r0, r0, #1
	strh r0, [r1, #4]
	ldrsh r0, [r2, #0x14]
	strh r0, [r1, #6]
	ldr r0, [r2, #0x18]
	str r0, [r1, #8]
	bx lr
	arm_func_end FUN_0202bc90

	arm_func_start FUN_0202bcb0
FUN_0202bcb0: ; 0x0202BCB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r3, r5
	mov r2, #0x14
_0202BCC0:
	add lr, r0, r5, lsl #1
	ldrb r12, [lr, #0xbd]
	mov r4, r5, lsl #1
	cmp r12, #0
	streqh r3, [r1, r4]
	beq _0202BCEC
	ldrsb lr, [lr, #0xbc]
	mla r12, lr, r2, r0
	ldrsh r12, [r12, #0x5c]
	add r12, r12, #1
	strh r12, [r1, r4]
_0202BCEC:
	add r5, r5, #1
	cmp r5, #2
	blt _0202BCC0
	add r2, r0, #0x200
	ldrsh r2, [r2, #0x32]
	cmp r2, #0
	beq _0202BD14
	add r2, r0, #0x220
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
_0202BD14:
	add r2, r0, #0x100
	ldrsh r3, [r2, #0x8a]
	cmp r3, #0
	beq _0202BD30
	add r2, r0, #0x178
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
_0202BD30:
	ldrsh r2, [r2, #0x52]
	cmp r2, #0
	beq _0202BD48
	add r2, r0, #0x140
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
_0202BD48:
	add r2, r0, #0x1e8
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202bcb0

	arm_func_start FUN_0202bd54
FUN_0202bd54: ; 0x0202BD54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0202BE10 ; =0x020B5B78
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0202BD68:
	mov r0, r4, lsl #1
	ldrsh r1, [r5, r0]
	cmp r1, #0
	ble _0202BDA4
	ldr r0, [r7, #4]
	sub r1, r1, #1
	bl L5FS_GetFile
	cmp r0, #0
	beq _0202BDA4
	mov r0, r4, lsl #1
	ldrsh r2, [r5, r0]
	mov r0, r6
	mov r1, r4
	sub r2, r2, #1
	bl FUN_0202cd48
_0202BDA4:
	add r4, r4, #1
	cmp r4, #2
	blt _0202BD68
	ldrsh r2, [r5, #4]
	ldr r1, _0202BE14 ; =0x0208FB28
	add r0, r6, #0x1e8
	bl STD_TSPrintf
	ldrsh r1, [r5, #4]
	ldr r0, _0202BE10 ; =0x020B5B78
	ldr r0, [r0, #4]
	sub r1, r1, #1
	bl L5FS_GetFile
	cmp r0, #0
	ldrnesh r1, [r5, #4]
	addne r0, r6, #0x100
	addeq r0, r6, #0x100
	subne r1, r1, #1
	mvneq r1, #0
	strh r1, [r0, #0xf8]
	add r0, r6, #0x100
	mov r1, #1
	strh r1, [r0, #0xfa]
	ldrsh r1, [r5, #6]
	strh r1, [r0, #0xfc]
	ldr r0, [r5, #8]
	str r0, [r6, #0x200]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202BE10: .word unk_020B5B78
_0202BE14: .word unk_0208FB28
	arm_func_end FUN_0202bd54

	arm_func_start FUN_0202be18
FUN_0202be18: ; 0x0202BE18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, #0x1c
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	sub r0, r4, #0x1d
	strh r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202be18

	arm_func_start FUN_0202be40
FUN_0202be40: ; 0x0202BE40
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r6, r1
	mov r5, r2
	mov r0, r6
	mov r1, r5
	bl STD_CopyString
	ldrsh r0, [r6, #0x12]
	cmp r0, #1
	addne sp, sp, #0x80
	ldmnefd sp!, {r4, r5, r6, pc}
	add r4, sp, #0
	ldr r1, _0202BE9C ; =0x0208FB30
	mov r0, r4
	mov r2, r5
	bl STD_TSPrintf
	ldr r0, _0202BEA0 ; =0x020B5B78
	mov r1, r4
	ldr r0, [r0, #4]
	bl L5FS_FindFileIdx
	strh r0, [r6, #0x10]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0202BE9C: .word unk_0208FB30
_0202BEA0: .word unk_020B5B78
	arm_func_end FUN_0202be40

	arm_func_start FUN_0202bea4
FUN_0202bea4: ; 0x0202BEA4
	stmfd sp!, {r3, lr}
	ldr r12, _0202BEBC ; =0x0208FA48
	mov r3, #0
	ldr r2, [r12, r2, lsl #2]
	bl FUN_0202bec0
	ldmfd sp!, {r3, pc}
_0202BEBC: .word unk_0208FA48
	arm_func_end FUN_0202bea4

	arm_func_start FUN_0202bec0
FUN_0202bec0: ; 0x0202BEC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	mov r9, r0
	mov r8, r1
	mov r0, r7
	mov r1, #0x2e
	mov r6, r3
	mov r4, #1
	bl strrchr
	movs r5, r0
	beq _0202BF14
	ldr r1, _0202BFB0 ; =0x0208FB38
	bl STD_CompareString
	cmp r0, #0
	beq _0202BF10
	ldr r1, _0202BFB4 ; =0x0208FB40
	mov r0, r5
	bl STD_CompareString
	cmp r0, #0
	bne _0202BF14
_0202BF10:
	mov r4, #2
_0202BF14:
	mov r0, #0x1c
	mul r5, r8, r0
	add r0, r9, r5
	add r3, r0, #0x100
	add r1, r9, #0x108
	mov r0, r9
	mov r2, r7
	add r1, r1, r5
	strh r4, [r3, #0x1a]
	bl FUN_0202be40
	cmp r4, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, r5
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x52]
	cmp r1, #1
	beq _0202BF6C
	ldrsh r2, [r0, #0x18]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BF6C:
	mov r0, #0xc
	mla r0, r8, r0, r9
	add r4, r9, #0x118
	ldrsh r1, [r0, #0xc0]
	ldrsh r0, [r4, r5]
	cmp r1, r0
	cmpne r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_0202c44c
	ldrsh r2, [r4, r5]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BFB0: .word unk_0208FB38
_0202BFB4: .word unk_0208FB40
	arm_func_end FUN_0202bec0

	arm_func_start FUN_0202bfb8
FUN_0202bfb8: ; 0x0202BFB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	mov r9, r0
	mov r8, r1
	mov r0, r7
	mov r1, #0x2e
	mov r6, r3
	mov r4, #1
	bl strrchr
	movs r5, r0
	beq _0202C00C
	ldr r1, _0202C0A8 ; =0x0208FB48
	bl STD_CompareString
	cmp r0, #0
	beq _0202C008
	ldr r1, _0202C0AC ; =0x0208FB50
	mov r0, r5
	bl STD_CompareString
	cmp r0, #0
	bne _0202C00C
_0202C008:
	mov r4, #2
_0202C00C:
	mov r0, #0x1c
	mul r5, r8, r0
	add r0, r9, r5
	add r3, r0, #0x100
	add r1, r9, #0x1e8
	mov r0, r9
	mov r2, r7
	add r1, r1, r5
	strh r4, [r3, #0xfa]
	bl FUN_0202be40
	cmp r4, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, r5
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x52]
	cmp r1, #1
	beq _0202C064
	ldrsh r2, [r0, #0xf8]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C064:
	mov r0, #0xc
	mla r0, r8, r0, r9
	add r4, r9, #0x1f8
	ldrsh r1, [r0, #0xc0]
	ldrsh r0, [r4, r5]
	cmp r1, r0
	cmpne r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_0202c44c
	ldrsh r2, [r4, r5]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C0A8: .word unk_0208FB48
_0202C0AC: .word unk_0208FB50
	arm_func_end FUN_0202bfb8

	arm_func_start FUN_0202c0b0
FUN_0202c0b0: ; 0x0202C0B0
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #0
	bge _0202C104
	mov r12, #0x1c
	mul r5, r1, r12
	add lr, r0, r5
	add r12, lr, #0x100
	ldrsh r4, [r12, #0x8a]
	cmp r4, #0
	beq _0202C104
	add r3, lr, #0x200
	mov r4, #1
	add r0, r0, #0x220
	ldr r1, [sp, #0x10]
	strh r4, [r3, #0x32]
	str r1, [lr, #0x238]
	ldr r1, _0202C17C ; =0x0208FB58
	add r0, r0, r5
	strh r2, [r3, #0x30]
	bl STD_TSPrintf
	ldmfd sp!, {r3, r4, r5, pc}
_0202C104:
	mov r12, #0x1c
	mul r12, r1, r12
	add r4, r0, r12
	add r1, r4, #0x100
	ldrsh r1, [r1, #0x50]
	cmp r2, r1
	bne _0202C130
	add r1, r0, #0x200
	ldrh r1, [r1, #0x5e]
	bl FUN_0202bbac
	ldmfd sp!, {r3, r4, r5, pc}
_0202C130:
	cmp r3, #0
	bge _0202C148
	ldr r1, [r4, #0x158]
	mov r3, #0
	cmp r1, #0
	movgt r3, r1
_0202C148:
	add r4, r0, r12
	str r3, [r4, #0x158]
	add r0, r0, #0x178
	add r3, r4, #0x100
	mov lr, #1
	ldr r1, [sp, #0x10]
	strh lr, [r3, #0x8a]
	str r1, [r4, #0x190]
	ldr r1, _0202C180 ; =0x0208FB60
	add r0, r0, r12
	strh r2, [r3, #0x88]
	bl STD_TSPrintf
	ldmfd sp!, {r3, r4, r5, pc}
_0202C17C: .word unk_0208FB58
_0202C180: .word unk_0208FB60
	arm_func_end FUN_0202c0b0

	arm_func_start FUN_0202c184
FUN_0202c184: ; 0x0202C184
	stmfd sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr r12, _0202C1A0 ; =0x0208FA48
	str lr, [sp]
	ldr r2, [r12, r2, lsl #2]
	bl FUN_0202c1a4
	ldmfd sp!, {r3, pc}
_0202C1A0: .word unk_0208FA48
	arm_func_end FUN_0202c184

	arm_func_start FUN_0202c1a4
FUN_0202c1a4: ; 0x0202C1A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r2
	ldrsb r2, [r5]
	mov r7, r0
	mov r6, r1
	mov r4, r3
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	mov r1, #0x2e
	mov r8, #1
	bl strrchr
	movs r9, r0
	beq _0202C204
	ldr r1, _0202C308 ; =0x0208FB68
	bl STD_CompareString
	cmp r0, #0
	beq _0202C200
	ldr r1, _0202C30C ; =0x0208FB70
	mov r0, r9
	bl STD_CompareString
	cmp r0, #0
	bne _0202C204
_0202C200:
	mov r8, #2
_0202C204:
	cmp r8, #1
	bne _0202C23C
	ldr r0, _0202C310 ; =0x020B5B78
	mov r1, r5
	ldr r0, [r0, #4]
	bl L5FS_FindFileIdx
	ldr r5, [sp, #0x20]
	mov r2, r0
	mov r0, r7
	mov r1, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_0202c0b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C23C:
	cmp r4, #0
	bge _0202C288
	mov r0, #0x1c
	mul r1, r6, r0
	add r3, r7, r1
	add r0, r3, #0x100
	ldrsh r0, [r0, #0x8a]
	cmp r0, #0
	beq _0202C288
	add r0, r3, #0x200
	add r4, r7, #0x220
	strh r8, [r0, #0x32]
	ldr r6, [sp, #0x20]
	mov r0, r7
	mov r2, r5
	add r1, r4, r1
	str r6, [r3, #0x238]
	bl FUN_0202be40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C288:
	mov r0, #0x1c
	mul r9, r6, r0
	add r0, r7, #0x140
	mov r1, r5
	add r0, r0, r9
	bl STD_CompareString
	cmp r0, #0
	bne _0202C2BC
	add r0, r7, #0x200
	ldrh r1, [r0, #0x5e]
	mov r0, r7
	bl FUN_0202bbac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C2BC:
	cmp r4, #0
	bge _0202C2D8
	add r0, r7, r9
	ldr r0, [r0, #0x158]
	mov r4, #0
	cmp r0, #0
	movgt r4, r0
_0202C2D8:
	add r6, r7, r9
	add r1, r7, #0x178
	str r4, [r6, #0x158]
	add r0, r6, #0x100
	ldr r3, [sp, #0x20]
	strh r8, [r0, #0x8a]
	mov r0, r7
	mov r2, r5
	add r1, r1, r9
	str r3, [r6, #0x190]
	bl FUN_0202be40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C308: .word unk_0208FB68
_0202C30C: .word unk_0208FB70
_0202C310: .word unk_020B5B78
	arm_func_end FUN_0202c1a4

	arm_func_start FUN_0202c314
FUN_0202c314: ; 0x0202C314
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0x1c
	mul r4, r1, r12
	add r12, r0, r4
	add r12, r12, #0x100
	ldrsh lr, [r12, #0x1a]
	mov r5, r2
	cmp lr, #1
	bne _0202C34C
	str r3, [sp]
	ldrsh r2, [r12, #0x18]
	mov r3, r5
	bl FUN_0202c0b0
	ldmfd sp!, {r3, r4, r5, pc}
_0202C34C:
	add r2, r0, #0x108
	str r3, [sp]
	mov r3, r5
	add r2, r2, r4
	bl FUN_0202c1a4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202c314

	arm_func_start FUN_0202c364
FUN_0202c364: ; 0x0202C364
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0x1c
	mul r4, r1, r12
	add r12, r0, r4
	add r12, r12, #0x100
	ldrsh lr, [r12, #0xfa]
	mov r5, r2
	cmp lr, #1
	bne _0202C39C
	str r3, [sp]
	ldrsh r2, [r12, #0xf8]
	mov r3, r5
	bl FUN_0202c0b0
	ldmfd sp!, {r3, r4, r5, pc}
_0202C39C:
	add r2, r0, #0x1e8
	str r3, [sp]
	mov r3, r5
	add r2, r2, r4
	bl FUN_0202c1a4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202c364

	arm_func_start FUN_0202c3b4
FUN_0202c3b4: ; 0x0202C3B4
	ldr r12, _0202C3C4 ; =FUN_0202c314
	mov r3, r2
	mov r2, #0
	bx r12
_0202C3C4: .word FUN_0202c314
	arm_func_end FUN_0202c3b4

	arm_func_start FUN_0202c3c8
FUN_0202c3c8: ; 0x0202C3C8
	stmfd sp!, {r3, lr}
	ldr r12, _0202C3DC ; =0x0208FA48
	ldr r2, [r12, r2, lsl #2]
	bl FUN_0202c3e0
	ldmfd sp!, {r3, pc}
_0202C3DC: .word unk_0208FA48
	arm_func_end FUN_0202c3c8

	arm_func_start FUN_0202c3e0
FUN_0202c3e0: ; 0x0202C3E0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r0, r5
	mov r1, #0x2e
	mov r4, r3
	bl strrchr
	cmp r0, #0
	add r0, sp, #4
	bne _0202C420
	ldr r1, _0202C448 ; =0x0208FB78
	mov r2, r5
	bl STD_TSPrintf
	b _0202C428
_0202C420:
	mov r1, r5
	bl STD_CopyString
_0202C428:
	add r2, sp, #4
	mov r0, r7
	mov r1, r6
	mov r3, #0
	str r4, [sp]
	bl FUN_0202c1a4
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0202C448: .word unk_0208FB78
	arm_func_end FUN_0202c3e0

	arm_func_start FUN_0202c44c
FUN_0202c44c: ; 0x0202C44C
	mov r3, #0x1c
	mla r12, r1, r3, r0
	str r2, [r12, #0x158]
	sub r1, r3, #0x1d
	add r0, r12, #0x100
	strh r1, [r0, #0x8a]
	mov r0, #0
	str r0, [r12, #0x190]
	bx lr
	arm_func_end FUN_0202c44c

	arm_func_start FUN_0202c470
FUN_0202c470: ; 0x0202C470
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0202C480:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0202c44c
	add r4, r4, #1
	cmp r4, #2
	blt _0202C480
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202c470

	arm_func_start _ZN7L5Sound12FUN_0202c4a0Em
_ZN7L5Sound12FUN_0202c4a0Em: ; 0x0202C4A0
	ldr r12, _0202C4A8 ; =FUN_0202c470
	bx r12
_0202C4A8: .word FUN_0202c470
	arm_func_end _ZN7L5Sound12FUN_0202c4a0Em

	arm_func_start FUN_0202c4ac
FUN_0202c4ac: ; 0x0202C4AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0x1c
	mul r3, r1, r3
	add r1, r0, #0x1b0
	add r4, r0, r3
	add r12, r1, r3
	add r7, r4, #0x178
	mov r6, #8
_0202C4CC:
	ldrb r5, [r12]
	ldrb r4, [r12, #1]
	add r12, r12, #2
	subs r6, r6, #1
	strb r4, [r7, #1]
	strb r5, [r7], #2
	bne _0202C4CC
	add r7, r0, r3
	add r12, r7, #0x100
	ldrsh r6, [r12, #0xc0]
	add r5, r0, #0x18c
	add r4, r0, #0x190
	strh r6, [r12, #0x88]
	ldrsh r6, [r12, #0xc2]
	mov lr, #1
	add r1, r1, r3
	strh r6, [r12, #0x8a]
	ldrsh r12, [r12, #0xc4]
	strh r12, [r5, r3]
	ldr r12, [r7, #0x1c8]
	str r12, [r4, r3]
	strh lr, [r5, r3]
	str r2, [r4, r3]
	bl FUN_0202be18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202c4ac

	arm_func_start FUN_0202c530
FUN_0202c530: ; 0x0202C530
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0202C540:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0202c4ac
	add r4, r4, #1
	cmp r4, #2
	blt _0202C540
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202c530

	arm_func_start FUN_0202c560
FUN_0202c560: ; 0x0202C560
	stmfd sp!, {r3, lr}
	mov r2, #0x1c
	mla r2, r1, r2, r0
	add r2, r2, #0x100
	ldrsh r2, [r2, #0x52]
	cmp r2, #1
	beq _0202C588
	cmp r2, #2
	beq _0202C590
	b _0202C59C
_0202C588:
	bl FUN_0202d184
	ldmfd sp!, {r3, pc}
_0202C590:
	mov r1, #0
	bl _ZN7L5Sound12FUN_0202d6c4Em
	ldmfd sp!, {r3, pc}
_0202C59C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202c560

	arm_func_start FUN_0202c5a4
FUN_0202c5a4: ; 0x0202C5A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x1c
	mul r2, r4, r1
	mov r5, r0
	add r0, r5, #0x140
	add r1, r5, #0x108
	add r0, r0, r2
	add r1, r1, r2
	bl STD_CompareString
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0202c560
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202c5a4

	arm_func_start FUN_0202c5e8
FUN_0202c5e8: ; 0x0202C5E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, #0
_0202C5F4:
	mov r0, #0x1c
	mul r1, r6, r0
	add r5, r4, r1
	add r0, r5, #0x100
	ldrsh r2, [r0, #0x8a]
	cmp r2, #0
	beq _0202C8D4
	ldrsh r0, [r0, #0x50]
	cmp r0, #0
	blt _0202C6A4
	mov r0, #0xc
	mla r0, r6, r0, r4
	ldrsb r2, [r0, #0xc3]
	mov r0, #0x14
	mla r0, r2, r0, r4
	ldrb r0, [r0, #0x5e]
	cmp r0, #1
	bne _0202C648
	mov r0, #1
	bl OS_Sleep
	b _0202C8D4
_0202C648:
	add r12, r5, #0x140
	add r7, r5, #0x1b0
	mov r3, #8
_0202C654:
	ldrb r2, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r0, [r7, #1]
	strb r2, [r7], #2
	mov r2, #0
	bne _0202C654
	add r0, r5, #0x100
	ldrsh r7, [r0, #0x50]
	mvn r3, #0
	strh r7, [r0, #0xc0]
	ldrsh r7, [r0, #0x52]
	strh r7, [r0, #0xc2]
	ldrsh r7, [r0, #0x54]
	strh r7, [r0, #0xc4]
	ldr r7, [r5, #0x158]
	str r7, [r5, #0x1c8]
	strh r3, [r0, #0x50]
	strb r2, [r5, #0x140]
_0202C6A4:
	add r0, r5, #0x100
	ldrsh r0, [r0, #0x52]
	cmp r0, #1
	bne _0202C6F0
	mov r2, #0xc
	mla r2, r6, r2, r4
	ldrh r2, [r2, #0xc6]
	tst r2, #2
	beq _0202C6E4
	ldr r2, [r5, #0x158]
	cmp r2, #0
	blt _0202C8D4
	mov r0, r4
	mov r1, r6
	bl FUN_0202d1ec
	b _0202C8D4
_0202C6E4:
	tst r2, #4
	bne _0202C8D4
	b _0202C728
_0202C6F0:
	cmp r0, #2
	bne _0202C728
	ldrh r2, [r4, #0xfe]
	tst r2, #2
	beq _0202C720
	ldr r2, [r5, #0x158]
	cmp r2, #0
	blt _0202C8D4
	mov r0, r4
	mov r1, #0
	bl _ZN7L5Sound12FUN_0202d774Emm
	b _0202C8D4
_0202C720:
	tst r2, #4
	bne _0202C8D4
_0202C728:
	add r2, r5, #0x100
	ldrsh r3, [r2, #0x8a]
	cmn r3, #1
	beq _0202C7CC
	cmp r3, #1
	beq _0202C74C
	cmp r3, #2
	beq _0202C794
	b _0202C7E0
_0202C74C:
	mov r0, #0x1c
	mla r7, r6, r0, r4
	add r0, r7, #0x100
	ldrsh r2, [r0, #0x88]
	mov r0, r4
	mov r1, r6
	bl FUN_0202d020
	add r0, r7, #0x100
	ldrsh r0, [r0, #0x8c]
	ldr r2, [r5, #0x190]
	mov r1, r6
	cmp r0, #0
	mov r0, r4
	beq _0202C78C
	bl FUN_0202d148
	b _0202C7F0
_0202C78C:
	bl FUN_0202d10c
	b _0202C7F0
_0202C794:
	ldrsh r0, [r2, #0x8c]
	cmp r0, #0
	beq _0202C7B4
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl _ZN7L5Sound12FUN_0202d5d4Emm
	b _0202C7F0
_0202C7B4:
	add r2, r4, #0x178
	mov r0, r4
	add r2, r2, r1
	mov r1, #0
	bl _ZN7L5Sound12FUN_0202d594Emm
	b _0202C7F0
_0202C7CC:
	mov r1, #0x1c
	mla r1, r6, r1, r4
	add r1, r1, #0x100
	strh r0, [r1, #0x8a]
	b _0202C7F0
_0202C7E0:
	add r2, r4, #0x178
	mov r0, r4
	add r1, r2, r1
	bl FUN_0202be18
_0202C7F0:
	mov r0, #0x1c
	mul r7, r6, r0
	add r5, r4, r7
	add r12, r5, #0x178
	add r3, r5, #0x140
	mov r2, #8
_0202C808:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0202C808
	add r2, r5, #0x100
	ldrsh r3, [r2, #0x88]
	add r1, r4, #0x178
	mov r0, r4
	strh r3, [r2, #0x50]
	ldrsh r3, [r2, #0x8a]
	add r1, r1, r7
	strh r3, [r2, #0x52]
	ldrsh r3, [r2, #0x8c]
	strh r3, [r2, #0x54]
	ldr r2, [r5, #0x190]
	str r2, [r5, #0x158]
	bl FUN_0202be18
	add r0, r5, #0x200
	ldrsh r0, [r0, #0x32]
	cmp r0, #0
	beq _0202C8D4
	add r2, r4, r7
	mvn r0, #0
	str r0, [r2, #0x158]
	add r12, r2, #0x220
	add r5, r2, #0x178
	mov r3, #8
_0202C880:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _0202C880
	add r3, r2, #0x200
	ldrsh r0, [r3, #0x30]
	add r5, r2, #0x100
	add r1, r4, #0x220
	strh r0, [r5, #0x88]
	ldrsh r12, [r3, #0x32]
	mov r0, r4
	add r1, r1, r7
	strh r12, [r5, #0x8a]
	ldrsh r3, [r3, #0x34]
	strh r3, [r5, #0x8c]
	ldr r3, [r2, #0x238]
	str r3, [r2, #0x190]
	bl FUN_0202be18
_0202C8D4:
	add r6, r6, #1
	cmp r6, #2
	blt _0202C5F4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202c5e8

	arm_func_start FUN_0202c8e4
FUN_0202c8e4: ; 0x0202C8E4
	stmfd sp!, {r4, lr}
	mov r2, #0x14
	mov r4, #0
	mov r3, r2
_0202C8F4:
	cmp r1, #4
	cmpne r1, #5
	beq _0202C92C
	mla lr, r4, r3, r0
	ldrb r12, [lr, #0x5f]
	cmp r12, #4
	cmpne r12, #5
	beq _0202C944
	ldrb r12, [lr, #0x5e]
	cmp r12, #0
	bne _0202C944
	mov r0, r4, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, pc}
_0202C92C:
	mla r12, r4, r2, r0
	ldrb r12, [r12, #0x5f]
	cmp r1, r12
	moveq r0, r4, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqfd sp!, {r4, pc}
_0202C944:
	add r4, r4, #1
	cmp r4, #5
	blt _0202C8F4
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202c8e4

	arm_func_start FUN_0202c958
FUN_0202c958: ; 0x0202C958
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r10, r0
	mov r9, r1
	mov r8, r2
	bl FUN_0202c8e4
	movs r6, r0
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x14
	mul r7, r6, r0
	add r5, r10, #0x5e
	ldrb r0, [r5, r7]
	cmp r0, #0
	beq _0202C9B4
	cmp r0, #1
	beq _0202C9A4
	cmp r0, #2
	bne _0202C9F4
_0202C9A4:
	add r0, r10, r7
	ldrsh r0, [r0, #0x5c]
	cmp r8, r0
	beq _0202C9F4
_0202C9B4:
	add r0, r10, r7
	add r1, r10, #0x58
	mov r4, #0
	strh r8, [r0, #0x5c]
	mov r0, r8
	mov r2, r4
	mov r3, r9
	add r1, r1, r7
	str r4, [sp]
	bl FUN_0202b330
	cmp r0, #0
	addle sp, sp, #4
	suble r0, r4, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #2
	strb r0, [r5, r7]
_0202C9F4:
	add r2, r10, r7
	mov r0, r10
	mov r1, r6
	strb r9, [r2, #0x5f]
	bl FUN_0202cc34
	mov r0, r6
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0202c958

	arm_func_start FUN_0202ca14
FUN_0202ca14: ; 0x0202CA14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0x14
	mul r6, r1, r2
	mov r7, r0
	add r5, r7, #0x5e
	ldrb r0, [r5, r6]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #3
	bne _0202CAD4
	add r1, r7, r6
	ldrb r0, [r1, #0x5f]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0202CAD4
_0202CA50: ; jump table
	b _0202CAD4 ; case 0
	b _0202CA68 ; case 1
	b _0202CA7C ; case 2
	b _0202CAB8 ; case 3
	b _0202CA68 ; case 4
	b _0202CAB8 ; case 5
_0202CA68:
	ldr r0, [r1, #0x64]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseBank_UnloadById
	b _0202CAD4
_0202CA7C:
	add r4, r7, #0x64
	ldr r0, [r4, r6]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseSe_StopSeq
	add r0, r7, r6
	ldr r0, [r0, #0x68]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseBank_UnloadById
	ldr r0, [r4, r6]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseSe_Unload
	b _0202CAD4
_0202CAB8:
	ldr r0, [r1, #0x68]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseBank_UnloadById
	add r0, r7, r6
	ldr r0, [r0, #0x64]
	bl DseBgm_Unload
_0202CAD4:
	add r1, r7, #0x5f
	ldrb r0, [r1, r6]
	cmp r0, #4
	cmpne r0, #5
	beq _0202CB48
	ldrb r0, [r5, r6]
	cmp r0, #1
	bne _0202CB14
	ldr r0, [r7]
	add r1, r7, r6
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	cmp r0, #0
	beq _0202CB14
	mov r2, #0
	bl _ZN7CFileIO5closeEPvi
_0202CB14:
	add r5, r7, #0x58
	ldr r0, [r7]
	ldr r1, [r5, r6]
	bl _ZN11L5Allocator10deallocateEPv
	mov r4, #0x14
	mov r2, r4
	add r0, r5, r6
	mov r1, #0
	bl MI_CpuFill8
	sub r1, r4, #0x15
	add r0, r7, r6
	strh r1, [r0, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202CB48:
	mov r0, #2
	strb r0, [r5, r6]
	ldrb r0, [r1, r6]
	cmp r0, #4
	moveq r0, #0
	streq r0, [r7, #0x6c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202ca14

	arm_func_start FUN_0202cb64
FUN_0202cb64: ; 0x0202CB64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl FUN_0202c8e4
	movs r5, r0
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x14
	mul r6, r5, r0
	add r4, r9, #0x5e
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _0202CBDC
	cmp r0, #1
	beq _0202CBB0
	cmp r0, #2
	bne _0202CC20
_0202CBB0:
	add r1, r9, r6
	ldrsh r0, [r1, #0x5c]
	cmp r7, r0
	beq _0202CC20
	ldr r0, [r9]
	ldr r1, [r1, #0x58]
	ldr r0, [r0]
	cmp r0, #0
	beq _0202CBDC
	mov r2, #0
	bl _ZN7CFileIO5closeEPvi
_0202CBDC:
	add lr, r9, r6
	add r1, r9, #0x58
	mov r10, #1
	add r12, r9, #0x60
	mov r0, r7
	strh r7, [lr, #0x5c]
	add r7, r12, r6
	mov r2, r10
	mov r3, r8
	add r1, r1, r6
	str r7, [sp]
	bl FUN_0202b330
	cmp r0, #0
	addle sp, sp, #4
	suble r0, r10, #2
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	strb r10, [r4, r6]
_0202CC20:
	add r1, r9, r6
	mov r0, r5
	strb r8, [r1, #0x5f]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0202cb64

	arm_func_start FUN_0202cc34
FUN_0202cc34: ; 0x0202CC34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r2, #0x14
	mul r6, r1, r2
	mov r7, r0
	add r4, r7, #0x5e
	ldrb r0, [r4, r6]
	cmp r0, #1
	beq _0202CC68
	cmp r0, #2
	beq _0202CC9C
	cmp r0, #3
	beq _0202CC8C
	b _0202CC94
_0202CC68:
	add r0, r7, r6
	ldrsb r0, [r0, #0x60]
	bl L5FS_IsFileBusy
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	strb r0, [r4, r6]
	b _0202CC9C
_0202CC8C:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202CC94:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202CC9C:
	add r2, r7, r6
	ldrb r0, [r2, #0x5f]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0202CD38
_0202CCB0: ; jump table
	b _0202CD38 ; case 0
	b _0202CCC8 ; case 1
	b _0202CCE4 ; case 2
	b _0202CCFC ; case 3
	b _0202CCC8 ; case 4
	b _0202CCFC ; case 5
_0202CCC8:
	mov r1, #0
	ldr r0, [r2, #0x58]
	mov r2, r1
	bl DseSwd_LoadBank
	add r1, r7, r6
	str r0, [r1, #0x64]
	b _0202CD38
_0202CCE4:
	add r8, r7, #0x58
	ldr r5, [r8, r6]
	ldr r0, [r5]
	add r0, r5, r0
	bl DseSe_Load
	b _0202CD10
_0202CCFC:
	add r8, r7, #0x58
	ldr r5, [r8, r6]
	ldr r0, [r5]
	add r0, r5, r0
	bl DseBgm_Load
_0202CD10:
	add r1, r7, r6
	str r0, [r1, #0x64]
	ldr r3, [r8, r6]
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, r1
	add r0, r3, r0
	bl DseSwd_LoadBank
	add r1, r7, r6
	str r0, [r1, #0x68]
_0202CD38:
	mov r0, #3
	strb r0, [r4, r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0202cc34

	arm_func_start FUN_0202cd48
FUN_0202cd48: ; 0x0202CD48
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #2
	ldr r0, _0202CDD0 ; =0x020B5B78
	movge r5, #1
	mov r4, r2
	str r5, [r0]
	add r2, r6, r5, lsl #1
	ldrsb r1, [r2, #0xbc]
	mov r0, #0x14
	mla r0, r1, r0, r6
	ldrsh r0, [r0, #0x5c]
	cmp r4, r0
	beq _0202CDC0
	ldrb r0, [r2, #0xbd]
	cmp r0, #0
	beq _0202CD98
	mov r0, r6
	bl FUN_0202ca14
_0202CD98:
	mov r0, r6
	mov r2, r4
	mov r1, #2
	bl FUN_0202c958
	add r1, r6, r5, lsl #1
	strb r0, [r1, #0xbc]
	ldrsb r0, [r1, #0xbc]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
_0202CDC0:
	add r1, r6, r5, lsl #1
	mov r0, #1
	strb r0, [r1, #0xbd]
	ldmfd sp!, {r4, r5, r6, pc}
_0202CDD0: .word unk_020B5B78
	arm_func_end FUN_0202cd48

	arm_func_start FUN_0202cdd4
FUN_0202cdd4: ; 0x0202CDD4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	add r4, sp, #0
	mov r6, r0
	ldr r1, _0202CE1C ; =0x0208FB80
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0202CE20 ; =0x020B5B78
	mov r1, r4
	ldr r0, [r0, #4]
	bl L5FS_FindFileIdx
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl FUN_0202cd48
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0202CE1C: .word unk_0208FB80
_0202CE20: .word unk_020B5B78
	arm_func_end FUN_0202cdd4

	arm_func_start FUN_0202ce24
FUN_0202ce24: ; 0x0202CE24
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #2
	ldr r0, _0202CEAC ; =0x020B5B78
	movge r5, #1
	mov r4, r2
	str r5, [r0]
	add r2, r6, r5, lsl #1
	ldrsb r1, [r2, #0xbc]
	mov r0, #0x14
	mla r0, r1, r0, r6
	ldrsh r0, [r0, #0x5c]
	cmp r4, r0
	beq _0202CE9C
	ldrb r0, [r2, #0xbd]
	cmp r0, #0
	beq _0202CE74
	mov r0, r6
	bl FUN_0202ca14
_0202CE74:
	mov r0, r6
	mov r2, r4
	mov r1, #2
	bl FUN_0202cb64
	add r1, r6, r5, lsl #1
	strb r0, [r1, #0xbc]
	ldrsb r0, [r1, #0xbc]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
_0202CE9C:
	add r1, r6, r5, lsl #1
	mov r0, #1
	strb r0, [r1, #0xbd]
	ldmfd sp!, {r4, r5, r6, pc}
_0202CEAC: .word unk_020B5B78
	arm_func_end FUN_0202ce24

	arm_func_start FUN_0202ceb0
FUN_0202ceb0: ; 0x0202CEB0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	add r4, sp, #0
	mov r6, r0
	ldr r1, _0202CEF8 ; =0x0208FB88
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0202CEFC ; =0x020B5B78
	mov r1, r4
	ldr r0, [r0, #4]
	bl L5FS_FindFileIdx
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl FUN_0202ce24
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0202CEF8: .word unk_0208FB88
_0202CEFC: .word unk_020B5B78
	arm_func_end FUN_0202ceb0

	arm_func_start FUN_0202cf00
FUN_0202cf00: ; 0x0202CF00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	cmp r4, #2
	mov r5, r0
	movge r4, #1
	add r1, r5, r4, lsl #1
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsb r1, [r1, #0xbc]
	mov r0, r5
	bl FUN_0202ca14
	add r0, r5, r4, lsl #1
	mov r1, #0
	strb r1, [r0, #0xbd]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202cf00

	arm_func_start FUN_0202cf40
FUN_0202cf40: ; 0x0202CF40
	mov r2, r1, asr #0xe
	cmp r2, #2
	movge r2, #1
	add r2, r0, r2, lsl #1
	ldrsb r3, [r2, #0xbc]
	mov r2, #0x14
	mov r1, r1, lsl #0x12
	mla r0, r3, r2, r0
	ldr r0, [r0, #0x64]
	add r0, r0, r1, lsr #2
	bx lr
	arm_func_end FUN_0202cf40

	arm_func_start _ZN7L5Sound12FUN_0202cf6cEm
_ZN7L5Sound12FUN_0202cf6cEm: ; 0x0202CF6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r2, r4, #0x200
	ldrh r12, [r2, #0x5c]
	ldrh r3, [r2, #0x60]
	mov r5, #0
	ldrh lr, [r2, #0x58]
	mul r2, r12, r3
	mul r2, lr, r2
	mov r3, r2, asr #7
	ldr r12, _0202CFD4 ; =0x10624DD3
	mov r2, r3, lsr #0x1f
	smull r3, lr, r12, r3
	add lr, r2, lr, asr #6
	mov r3, lr, lsl #0x18
	mov r6, r1
	mov r2, r5
	mov r1, r3, asr #0x18
	bl FUN_0202bc48
	mov r0, r4
	mov r1, r6
	bl FUN_0202cf40
	mov r1, r5
	add r2, r4, #0x44
	bl DseSe_Play
	ldmfd sp!, {r4, r5, r6, pc}
_0202CFD4: .word 0x10624DD3
	arm_func_end _ZN7L5Sound12FUN_0202cf6cEm

	arm_func_start FUN_0202cfd8
FUN_0202cfd8: ; 0x0202CFD8
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_0202cf40
	mov r1, r4, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, #0
	bl DseSe_Stop
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202cfd8

	arm_func_start FUN_0202cff8
FUN_0202cff8: ; 0x0202CFF8
	mov r0, r1, lsl #0x10
	ldr r12, _0202D008 ; =DseSe_StopAll
	mov r0, r0, lsr #0x10
	bx r12
_0202D008: .word DseSe_StopAll
	arm_func_end FUN_0202cff8

	arm_func_start FUN_0202d00c
FUN_0202d00c: ; 0x0202D00C
	stmfd sp!, {r3, lr}
	bl FUN_0202cf40
	mov r1, #0
	bl DseSe_HasPlayingInstances
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202d00c

	arm_func_start FUN_0202d020
FUN_0202d020: ; 0x0202D020
	mov r3, #0xc
	mul r12, r1, r3
	add r3, r0, #0xc0
	ldrsh r1, [r3, r12]
	cmp r2, r1
	bxeq lr
	strh r2, [r3, r12]
	add r1, r0, #0xc4
	ldrh r0, [r1, r12]
	cmp r2, #0
	orr r0, r0, #0xc
	strh r0, [r1, r12]
	ldrgeh r0, [r1, r12]
	orrge r0, r0, #0x10
	strgeh r0, [r1, r12]
	bx lr
	arm_func_end FUN_0202d020

	arm_func_start FUN_0202d060
FUN_0202d060: ; 0x0202D060
	mov r2, #0xc
	mla r2, r1, r2, r0
	ldrh r0, [r2, #0xc4]
	tst r0, #0x10
	movne r0, #0
	bxne lr
	ldrh r0, [r2, #0xc6]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0202d060

	arm_func_start FUN_0202d08c
FUN_0202d08c: ; 0x0202D08C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0xc
	mul r5, r1, r2
	mov r6, r0
	add r4, r6, #0xc6
	ldrh r0, [r4, r5]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, r5
	ldrsb r1, [r0, #0xc3]
	mov r0, #0x14
	mla r0, r1, r0, r6
	ldr r7, [r0, #0x64]
	mov r0, r7
	bl DseBgm_IsPlaying
	cmp r0, #0
	ble _0202D0DC
	mov r0, r7
	mov r1, #0
	bl DseBgm_Stop
_0202D0DC:
	add r7, r6, #0xc3
	ldrsb r1, [r7, r5]
	mov r0, r6
	bl FUN_0202ca14
	mvn r0, #0
	strb r0, [r7, r5]
	ldrh r1, [r4, r5]
	ldr r0, _0202D108 ; =0x0000FFFC
	and r0, r1, r0
	strh r0, [r4, r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202D108: .word 0x0000FFFC
	arm_func_end FUN_0202d08c

	arm_func_start FUN_0202d10c
FUN_0202d10c: ; 0x0202D10C
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul lr, r1, r3
	add r12, r0, #0xc4
	ldrh r3, [r12, lr]
	ldr r1, _0202D144 ; =0x0000FFFB
	add r0, r0, lr
	and r1, r3, r1
	strh r1, [r12, lr]
	ldrh r1, [r12, lr]
	orr r1, r1, #2
	strh r1, [r12, lr]
	str r2, [r0, #0xc8]
	ldmfd sp!, {r3, pc}
_0202D144: .word 0x0000FFFB
	arm_func_end FUN_0202d10c

	arm_func_start FUN_0202d148
FUN_0202d148: ; 0x0202D148
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul lr, r1, r3
	add r12, r0, #0xc4
	ldrh r3, [r12, lr]
	ldr r1, _0202D180 ; =0x0000FFFB
	add r0, r0, lr
	and r1, r3, r1
	strh r1, [r12, lr]
	ldrh r1, [r12, lr]
	orr r1, r1, #0x82
	strh r1, [r12, lr]
	str r2, [r0, #0xc8]
	ldmfd sp!, {r3, pc}
_0202D180: .word 0x0000FFFB
	arm_func_end FUN_0202d148

	arm_func_start FUN_0202d184
FUN_0202d184: ; 0x0202D184
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r5, r1, r2
	add r4, r0, #0xc6
	ldrh r1, [r4, r5]
	tst r1, #4
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r1, #2
	beq _0202D1D0
	add r1, r0, r5
	ldrsb r2, [r1, #0xc3]
	mov r1, #0x14
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x64]
	bl DseBgm_IsPlaying
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
_0202D1D0:
	ldrh r2, [r4, r5]
	ldr r1, _0202D1E8 ; =0x0000FFFD
	mov r0, #0
	and r1, r2, r1
	strh r1, [r4, r5]
	ldmfd sp!, {r3, r4, r5, pc}
_0202D1E8: .word 0x0000FFFD
	arm_func_end FUN_0202d184

	arm_func_start FUN_0202d1ec
FUN_0202d1ec: ; 0x0202D1EC
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul lr, r1, r3
	add r12, r0, #0xc4
	ldrh r3, [r12, lr]
	ldr r1, _0202D224 ; =0x0000FF7D
	add r0, r0, lr
	and r1, r3, r1
	strh r1, [r12, lr]
	ldrh r1, [r12, lr]
	orr r1, r1, #4
	strh r1, [r12, lr]
	str r2, [r0, #0xc8]
	ldmfd sp!, {r3, pc}
_0202D224: .word 0x0000FF7D
	arm_func_end FUN_0202d1ec

	arm_func_start FUN_0202d228
FUN_0202d228: ; 0x0202D228
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r0, r10, #0x200
	str r0, [sp, #0xc]
	ldr r0, _0202D4BC ; =0x0000FFEF
	mov r7, #0
	add r4, r0, #0xc
	add r5, r0, #0xe
	add r0, r0, #0xf
	str r0, [sp, #4]
	ldr r0, _0202D4BC ; =0x0000FFEF
	mov r11, r4
	add r0, r0, #8
	str r0, [sp]
	ldr r0, _0202D4BC ; =0x0000FFEF
	add r0, r0, #0xf
	str r0, [sp, #8]
	ldr r0, _0202D4BC ; =0x0000FFEF
	sub r0, r0, #0x72
	str r0, [sp, #0x10]
_0202D27C:
	mov r0, #0xc
	mla r9, r7, r0, r10
	ldrsb r2, [r9, #0xc3]
	mov r0, #0x14
	ldrh r1, [r9, #0xc4]
	mla r0, r2, r0, r10
	tst r1, #4
	ldr r6, [r0, #0x64]
	beq _0202D2E8
	mov r0, r6
	bl DseBgm_IsPlaying
	cmp r0, #0
	ble _0202D2D4
	ldr r1, [r9, #0xc8]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl DseBgm_Stop
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #4
	and r0, r0, r5
	strh r0, [r9, #0xc6]
_0202D2D4:
	mov r0, #0
	str r0, [r9, #0xc8]
	ldrh r0, [r9, #0xc4]
	and r0, r0, r4
	strh r0, [r9, #0xc4]
_0202D2E8:
	ldrh r0, [r9, #0xc6]
	tst r0, #4
	beq _0202D314
	mov r0, r6
	bl DseBgm_IsPlaying
	cmp r0, #0
	addgt sp, sp, #0x14
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r9, #0xc6]
	and r0, r0, r11
	strh r0, [r9, #0xc6]
_0202D314:
	ldrh r0, [r9, #0xc4]
	tst r0, #8
	beq _0202D358
	ldrh r0, [r9, #0xc6]
	tst r0, #1
	beq _0202D338
	mov r0, r10
	mov r1, r7
	bl FUN_0202d08c
_0202D338:
	ldrh r1, [r9, #0xc6]
	ldr r0, [sp, #4]
	and r0, r1, r0
	strh r0, [r9, #0xc6]
	ldrh r1, [r9, #0xc4]
	ldr r0, [sp]
	and r0, r1, r0
	strh r0, [r9, #0xc4]
_0202D358:
	ldrh r1, [r9, #0xc4]
	tst r1, #0x10
	beq _0202D3B8
	ldr r0, _0202D4BC ; =0x0000FFEF
	cmp r7, #0
	and r0, r1, r0
	strh r0, [r9, #0xc4]
	mov r0, r10
	bne _0202D384
	mov r1, #5
	b _0202D388
_0202D384:
	mov r1, #3
_0202D388:
	ldrsh r2, [r9, #0xc0]
	bl FUN_0202cb64
	strb r0, [r9, #0xc3]
	ldrsb r0, [r9, #0xc3]
	cmp r0, #0
	blt _0202D4A8
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #0x10
	strh r0, [r9, #0xc6]
	ldrh r0, [r9, #0xc4]
	orr r0, r0, #1
	strh r0, [r9, #0xc4]
_0202D3B8:
	ldrh r0, [r9, #0xc4]
	tst r0, #1
	beq _0202D404
	mov r0, r10
	ldrsb r1, [r9, #0xc3]
	bl FUN_0202cc34
	cmp r0, #0
	beq _0202D4A8
	ldrsb r2, [r9, #0xc3]
	mov r0, #0x14
	ldrh r1, [r9, #0xc4]
	mla r0, r2, r0, r10
	ldr r6, [r0, #0x64]
	ldr r0, [sp, #8]
	and r0, r1, r0
	strh r0, [r9, #0xc4]
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #1
	strh r0, [r9, #0xc6]
_0202D404:
	ldrh r1, [r9, #0xc4]
	tst r1, #2
	beq _0202D4A8
	ldrh r0, [r9, #0xc6]
	tst r0, #1
	beq _0202D498
	tst r0, #2
	bne _0202D484
	tst r1, #0x80
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldrh r3, [r1, #0x58]
	ldrh r12, [r2, #0x5e]
	ldrh r1, [r1, #0x5a]
	mov r8, #1
	ldr r2, [r9, #0xc8]
	mul r12, r1, r12
	mul r1, r3, r12
	mov r3, r1, asr #7
	ldr r1, _0202D4C0 ; =0x10624DD3
	movne r8, #0
	smull lr, r12, r1, r3
	mov r1, r3, lsr #0x1f
	add r12, r1, r12, asr #6
	mov r1, r12, lsl #0x18
	mov r0, r10
	mov r1, r1, asr #0x18
	bl FUN_0202bc48
	mov r0, r6
	mov r2, r8
	add r1, r10, #0x44
	bl DseBgm_Resume
_0202D484:
	mov r0, #0
	str r0, [r9, #0xc8]
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #2
	strh r0, [r9, #0xc6]
_0202D498:
	ldrh r1, [r9, #0xc4]
	ldr r0, [sp, #0x10]
	and r0, r1, r0
	strh r0, [r9, #0xc4]
_0202D4A8:
	add r7, r7, #1
	cmp r7, #2
	blt _0202D27C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202D4BC: .word 0x0000FFEF
_0202D4C0: .word 0x10624DD3
	arm_func_end FUN_0202d228

	arm_func_start _ZN7L5Sound7openSADEPvPch
_ZN7L5Sound7openSADEPvPch: ; 0x0202D4C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r7, r1
	add r4, sp, #8
	mov r8, r0
	ldr r1, _0202D574 ; =0x0208FB90
	mov r6, r2
	mov r0, r4
	mov r5, r3
	bl STD_CopyString
	mov r0, r4
	mov r1, r6
	bl STD_ConcatenateString
	add r0, sp, #0
	mov r1, r4
	bl FS_ConvertPathToFileID
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x30
	mul r4, r7, r0
	add r0, r8, #0xd8
	mov r1, r6
	add r0, r0, r4
	bl STD_CompareString
	cmp r0, #0
	beq _0202D540
	mov r0, r8
	mov r1, r7
	bl _ZN7L5Sound12FUN_0202d578Em
_0202D540:
	add r0, r8, #0xd8
	mov r1, r6
	add r0, r0, r4
	bl STD_CopyString
	add r0, r8, r4
	strb r5, [r0, #0xf9]
	add r2, r8, #0xfc
	ldrh r1, [r2, r4]
	mov r0, #1
	orr r1, r1, #1
	strh r1, [r2, r4]
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202D574: .word unk_0208FB90
	arm_func_end _ZN7L5Sound7openSADEPvPch

	arm_func_start _ZN7L5Sound12FUN_0202d578Em
_ZN7L5Sound12FUN_0202d578Em: ; 0x0202D578
	mov r2, #0x30
	mul r2, r1, r2
	add r1, r0, #0xfc
	ldrh r0, [r1, r2]
	orr r0, r0, #0xc
	strh r0, [r1, r2]
	bx lr
	arm_func_end _ZN7L5Sound12FUN_0202d578Em

	arm_func_start _ZN7L5Sound12FUN_0202d594Emm
_ZN7L5Sound12FUN_0202d594Emm: ; 0x0202D594
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	beq _0202D5B8
	mov r3, #0
	bl _ZN7L5Sound7openSADEPvPch
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0202D5B8:
	mov r0, #0x30
	mul r1, r4, r0
	add r2, r5, #0xfc
	ldrh r0, [r2, r1]
	orr r0, r0, #2
	strh r0, [r2, r1]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN7L5Sound12FUN_0202d594Emm

	arm_func_start _ZN7L5Sound12FUN_0202d5d4Emm
_ZN7L5Sound12FUN_0202d5d4Emm: ; 0x0202D5D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0202D6B8 ; =gL5Movie
	mov r8, r0
	mov r0, r6
	mov r7, r2
	mov r4, r1
	bl _ZN7L5Movie11getVideoFpsEv
	mov r5, r0
	mov r0, #0x30
	cmp r7, #0
	mul r7, r4, r0
	ble _0202D690
	add r4, r8, #0x100
	ldr r0, [r4, r7]
	mov r1, #0x3e8
	bl FUN_0207d690
	ldr r1, _0202D6BC ; =0x00022140
	mov r2, #0xe8000000
	cmp r0, r1
	ldr r1, [r6, #0x1a0]
	ldr r0, [r6, #0x198]
	mov r3, #3
	add r6, r1, r0
	umull r0, r1, r6, r2
	bge _0202D65C
	mla r1, r6, r3, r1
	mov r3, r6, asr #0x1f
	mla r1, r3, r2, r1
	mov r2, r5
	mov r3, #0
	bl _ll_udiv
	mov r1, r0
	ldr r0, [r4, r7]
	b _0202D69C
_0202D65C:
	mla r1, r6, r3, r1
	mov r3, r6, asr #0x1f
	mla r1, r3, r2, r1
	mov r2, r5
	mov r3, #0
	bl _ll_udiv
	ldr r5, _0202D6C0 ; =0x88888889
	mov r2, r0, lsr #0x1f
	smull r3, r1, r5, r0
	add r1, r0, r1
	ldr r0, [r4, r7]
	add r1, r2, r1, asr #4
	b _0202D69C
_0202D690:
	add r0, r8, r7
	ldr r0, [r0, #0x100]
	mov r1, #0
_0202D69C:
	bl FUN_0207d4c0
	add r2, r8, #0xfc
	ldrh r1, [r2, r7]
	mov r0, #1
	orr r1, r1, #0x82
	strh r1, [r2, r7]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202D6B8: .word gL5Movie
_0202D6BC: .word 0x00022140
_0202D6C0: .word 0x88888889
	arm_func_end _ZN7L5Sound12FUN_0202d5d4Emm

	arm_func_start _ZN7L5Sound12FUN_0202d6c4Em
_ZN7L5Sound12FUN_0202d6c4Em: ; 0x0202D6C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x30
	mul r4, r1, r2
	add r2, r0, r4
	ldrh r1, [r2, #0xfc]
	tst r1, #4
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r0, #0xfe
	ldrh r0, [r5, r4]
	tst r0, #2
	beq _0202D708
	ldr r0, [r2, #0x100]
	bl FUN_0207cf94
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
_0202D708:
	ldrh r2, [r5, r4]
	ldr r1, _0202D720 ; =0x0000FFFD
	mov r0, #0
	and r1, r2, r1
	strh r1, [r5, r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0202D720: .word 0x0000FFFD
	arm_func_end _ZN7L5Sound12FUN_0202d6c4Em

	arm_func_start FUN_0202d724
FUN_0202d724: ; 0x0202D724
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, #0
	add r5, r8, #0xd8
	mov r4, #0x30
_0202D73C:
	mla r0, r6, r4, r5
	mov r1, r7
	bl STD_CompareString
	cmp r0, #0
	bne _0202D760
	mov r0, r8
	mov r1, r6
	bl _ZN7L5Sound12FUN_0202d6c4Em
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202D760:
	add r6, r6, #1
	cmp r6, #1
	blt _0202D73C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0202d724

	arm_func_start _ZN7L5Sound12FUN_0202d774Emm
_ZN7L5Sound12FUN_0202d774Emm: ; 0x0202D774
	mov r3, #0x30
	mul r3, r1, r3
	add r1, r0, r3
	str r2, [r1, #0x104]
	add r1, r0, #0xfc
	ldrh r0, [r1, r3]
	orr r0, r0, #4
	strh r0, [r1, r3]
	bx lr
	arm_func_end _ZN7L5Sound12FUN_0202d774Emm

	arm_func_start FUN_0202d798
FUN_0202d798: ; 0x0202D798
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	add r5, r9, #0xd8
	mov r4, #0x30
_0202D7B4:
	mla r0, r6, r4, r5
	mov r1, r8
	bl STD_CompareString
	cmp r0, #0
	bne _0202D7DC
	mov r0, r9
	mov r1, r6
	mov r2, r7
	bl _ZN7L5Sound12FUN_0202d774Emm
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202D7DC:
	add r6, r6, #1
	cmp r6, #1
	blt _0202D7B4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0202d798

	arm_func_start FUN_0202d7ec
FUN_0202d7ec: ; 0x0202D7EC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x5c
	mov r6, r0
	ldr r0, _0202DB88 ; =0x0000FFFB
	mov r9, #0
	add r0, r0, #2
	str r0, [sp]
	ldr r0, _0202DB88 ; =0x0000FFFB
	add r11, r6, #0xd8
	sub r0, r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _0202DB88 ; =0x0000FFFB
	add r7, sp, #0x1c
	sub r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _0202DB88 ; =0x0000FFFB
	sub r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0202DB88 ; =0x0000FFFB
	add r0, r0, #3
	str r0, [sp, #0x10]
	add r0, r6, #0x200
	str r0, [sp, #0x14]
	ldr r0, _0202DB88 ; =0x0000FFFB
	sub r0, r0, #0x7e
	str r0, [sp, #0x18]
_0202D854:
	mov r0, #0x30
	mul r4, r9, r0
	add r10, r6, r4
	ldrsb r1, [r10, #0xf8]
	ldr r8, [r10, #0x100]
	cmp r1, #0
	beq _0202D894
	ldr r0, _0202DB8C ; =0x0209A110
	ldr r0, [r0]
	mov r0, r0, lsl #0x18
	sub r0, r1, r0, asr #24
	strb r0, [r10, #0xf8]
	ldrsb r0, [r10, #0xf8]
	cmp r0, #0
	movlt r0, #0
	strltb r0, [r10, #0xf8]
_0202D894:
	ldrh r1, [r10, #0xfc]
	tst r1, #4
	beq _0202D8F0
	ldr r0, _0202DB88 ; =0x0000FFFB
	and r0, r1, r0
	strh r0, [r10, #0xfc]
	mov r0, r8
	bl FUN_0207cf94
	cmp r0, #0
	ble _0202D8D0
	mov r0, r8
	ldr r1, [r10, #0x104]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0207d1c4
_0202D8D0:
	add r2, r6, r4
	ldrh r0, [r2, #0xfe]
	orr r1, r0, #4
	ldr r0, [sp]
	and r0, r1, r0
	strh r0, [r2, #0xfe]
	mov r0, #0
	str r0, [r2, #0x104]
_0202D8F0:
	ldrh r0, [r10, #0xfe]
	tst r0, #4
	beq _0202D92C
	mov r0, r8
	bl FUN_0207cf94
	cmp r0, #0
	addgt sp, sp, #0x5c
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r6, r4
	ldrh r1, [r2, #0xfe]
	ldr r0, _0202DB88 ; =0x0000FFFB
	and r0, r1, r0
	strh r0, [r2, #0xfe]
	mov r0, #0
	strb r0, [r2, #0xf8]
_0202D92C:
	ldrh r0, [r10, #0xfc]
	tst r0, #8
	beq _0202D984
	ldrh r0, [r10, #0xfe]
	tst r0, #4
	bne _0202D984
	tst r0, #1
	beq _0202D960
	mov r0, r8
	bl FUN_0207ce1c
	ldrh r0, [r10, #0xfe]
	orr r0, r0, #8
	strh r0, [r10, #0xfe]
_0202D960:
	add r0, r6, r4
	ldrh r2, [r0, #0xfe]
	ldr r1, [sp, #8]
	and r1, r2, r1
	strh r1, [r0, #0xfe]
	ldrh r2, [r0, #0xfc]
	ldr r1, [sp, #4]
	and r1, r2, r1
	strh r1, [r0, #0xfc]
_0202D984:
	ldrh r0, [r10, #0xfe]
	tst r0, #8
	beq _0202D9C0
	mov r0, r8
	bl FUN_0207c990
	cmp r0, #0
	addgt sp, sp, #0x5c
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r6, r4
	ldrh r1, [r2, #0xfe]
	ldr r0, [sp, #0xc]
	and r0, r1, r0
	strh r0, [r2, #0xfe]
	mov r0, #0
	strb r0, [r2, #0xf8]
_0202D9C0:
	ldrh r0, [r10, #0xfc]
	tst r0, #1
	beq _0202DA58
	add r5, r6, r4
	ldrh r1, [r5, #0xfc]
	ldr r0, [sp, #0x10]
	and r0, r1, r0
	strh r0, [r5, #0xfc]
	ldrh r0, [r5, #0xfe]
	tst r0, #1
	bne _0202DA4C
	ldr r1, _0202DB90 ; =0x0208FBA0
	mov r0, r7
	bl STD_CopyString
	mov r0, r7
	add r1, r11, r4
	bl STD_ConcatenateString
	mov r8, r5
	ldrsb r0, [r8, #0xf9]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl FUN_0207c97c
	mov r0, #0
	strb r0, [r8, #0xf9]
	mov r0, r7
	mov r1, #0x2000
	mov r2, #1
	bl FUN_0207ca24
	cmp r0, #0
	blt _0202DB74
	str r0, [r5, #0x100]
	mov r8, r0
_0202DA4C:
	ldrh r0, [r10, #0xfe]
	orr r0, r0, #1
	strh r0, [r10, #0xfe]
_0202DA58:
	ldrh r0, [r10, #0xfc]
	tst r0, #2
	beq _0202DB4C
	ldrsb r0, [r10, #0xf8]
	cmp r0, #0
	bne _0202DB4C
	ldrh r0, [r10, #0xfe]
	tst r0, #1
	beq _0202DB3C
	mov r0, r8
	bl FUN_0207c990
	cmp r0, #0
	addle sp, sp, #0x5c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r10, #0xfe]
	tst r0, #0x20
	addeq r1, r6, #0xfe
	ldreqh r0, [r1, r4]
	addeq sp, sp, #0x5c
	orreq r0, r0, #0x20
	streqh r0, [r1, r4]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r9
	bl _ZN7L5Sound12FUN_0202d6c4Em
	cmp r0, #0
	bne _0202DB30
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldrh r5, [r2, #0x5a]
	ldrh r3, [r2, #0x5e]
	add r4, r6, r4
	ldrh r1, [r1, #0x58]
	mul r3, r5, r3
	mul r3, r1, r3
	mov r12, r3, asr #7
	ldr r3, _0202DB94 ; =0x10624DD3
	ldr r2, [r4, #0x104]
	smull r5, r1, r3, r12
	mov r3, r12, lsr #0x1f
	add r1, r3, r1, asr #6
	mov r1, r1, lsl #0x18
	mov r0, r6
	mov r1, r1, asr #0x18
	bl FUN_0202bc48
	ldrh r0, [r4, #0xfc]
	add r1, r6, #0x44
	tst r0, #0x80
	mov r0, r8
	bne _0202DB28
	mov r2, #1
	b _0202DB2C
_0202DB28:
	mov r2, #0
_0202DB2C:
	bl FUN_0207cfe4
_0202DB30:
	ldrh r0, [r10, #0xfe]
	orr r0, r0, #2
	strh r0, [r10, #0xfe]
_0202DB3C:
	ldrh r1, [r10, #0xfc]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	strh r0, [r10, #0xfc]
_0202DB4C:
	ldrh r0, [r10, #0xfe]
	tst r0, #2
	beq _0202DB74
	mov r0, r8
	bl FUN_0207cf94
	cmp r0, #0
	bne _0202DB74
	mov r0, r6
	mov r1, r9
	bl _ZN7L5Sound12FUN_0202d578Em
_0202DB74:
	add r9, r9, #1
	cmp r9, #1
	blt _0202D854
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DB88: .word 0x0000FFFB
_0202DB8C: .word unk_0209A110
_0202DB90: .word unk_0208FBA0
_0202DB94: .word 0x10624DD3
	arm_func_end FUN_0202d7ec

	arm_func_start FUN_0202db98
FUN_0202db98: ; 0x0202DB98
	stmfd sp!, {r4, lr}
	ldrh r3, [r0, #0xfc]
	ldrh r2, [r0, #0xfe]
	mov r4, r1
	orr r1, r3, r2
	tst r1, #3
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0x100]
	bl FUN_0207cf94
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl OS_Sleep
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202db98

	arm_func_start FUN_0202dbd0
FUN_0202dbd0: ; 0x0202DBD0
	mov r2, #0x30
	mla r2, r1, r2, r0
	ldrh r0, [r2, #0xfc]
	ldrh r1, [r2, #0xfe]
	tst r0, #0xc
	orr r0, r1, r0, lsl #16
	movne r0, #0
	tst r1, #0xc
	movne r0, #0
	bx lr
	arm_func_end FUN_0202dbd0

	arm_func_start FUN_0202dbf8
FUN_0202dbf8: ; 0x0202DBF8
	mov r3, #0
	mov r2, r3
_0202DC00:
	add r1, r0, r3, lsl #2
	str r2, [r1, #0x24]
	add r3, r3, #1
	str r2, [r1, #0x38]
	cmp r3, #5
	blt _0202DC00
	bx lr
	arm_func_end FUN_0202dbf8

	arm_func_start FUN_0202dc1c
FUN_0202dc1c: ; 0x0202DC1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202DC28:
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x24]
	cmp r2, #0
	beq _0202DC40
	ldmib r5, {r0, r1}
	bl OS_FreeToHeap
_0202DC40:
	add r4, r4, #1
	cmp r4, #5
	blt _0202DC28
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202dc1c

	arm_func_start _ZN11L5Allocator12FUN_0202dc54E9OSArenaIdPvS1_
_ZN11L5Allocator12FUN_0202dc54E9OSArenaIdPvS1_: ; 0x0202DC54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, r1
	str r1, [r10, #4]
	mov r1, r2
	mov r2, r3
	bl OS_CreateHeap
	str r0, [r10, #8]
	add r0, r10, #0xc
	bl OS_InitMutex
	mov r7, #1
_0202DC80:
	mov r8, #0
	ldr r5, _0202DD9C ; =0x0208C348
	mov r6, r8
	mov r11, r8
	mov r4, #0x14
_0202DC94:
	cmp r7, #1
	bne _0202DCA4
	cmp r8, #1
	beq _0202DD70
_0202DCA4:
	cmp r7, #2
	bne _0202DCB4
	cmp r8, #1
	bne _0202DD70
_0202DCB4:
	add r0, r10, r8, lsl #2
	str r6, [r0, #0x24]
	str r6, [r0, #0x38]
	ldmib r10, {r0, r1}
	bl OS_GetTotalFreeSize
	cmp r0, #0
	beq _0202DD7C
	ldr r1, [r5, r8, lsl #2]
	mov r9, r0
	mov r1, r1, lsl #0xa
	cmp r7, #2
	movne r9, r1
	cmp r9, #0
	beq _0202DD68
	cmp r7, #1
	bne _0202DCFC
	cmp r9, r1
	bhi _0202DD0C
_0202DCFC:
	cmp r7, #2
	bne _0202DD1C
	cmp r9, r0
	bls _0202DD1C
_0202DD0C:
	cmp r7, #1
	bne _0202DD1C
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD1C:
	ldmib r10, {r0, r1}
	mov r2, r9
	bl OS_AllocFromHeap
	add r1, r10, r8, lsl #2
	str r0, [r1, #0x24]
	cmp r0, #0
	bne _0202DD40
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD40:
	str r9, [r1, #0x38]
	ldr r1, [r1, #0x24]
	mov r0, r11
	mov r2, r9
	bl MIi_CpuClearFast
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x24]
	sub r0, r9, #0x10
	str r0, [r1, #4]
	strh r4, [r1, #2]
_0202DD68:
	cmp r7, #2
	beq _0202DD7C
_0202DD70:
	add r8, r8, #1
	cmp r8, #5
	blt _0202DC94
_0202DD7C:
	add r7, r7, #1
	cmp r7, #2
	ble _0202DC80
	mvn r1, #0
	mov r0, #1
	str r1, [r10, #0x4c]
	str r0, [r10, #0x50]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD9C: .word unk_0208C348
	arm_func_end _ZN11L5Allocator12FUN_0202dc54E9OSArenaIdPvS1_

	arm_func_start FUN_0202dda0
FUN_0202dda0: ; 0x0202DDA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r0, #4]
	ldr r2, [r0, #0xc]
	add r1, r0, r1
	add r1, r1, #0x10
	cmp r2, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r4]
	cmp r1, #0
	ldreqb r1, [r0]
	cmpeq r1, #0
	sub r1, r0, r4
	beq _0202DDF0
	sub r1, r1, #0x10
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	str r4, [r0, #8]
	b _0202DE18
_0202DDF0:
	sub r2, r1, #0x10
	str r2, [r4, #4]
	ldr r1, [r0, #4]
	add r1, r1, #0x10
	add r1, r2, r1
	str r1, [r4, #4]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0xc]
	cmp r0, #0
	strne r4, [r0, #8]
_0202DE18:
	mov r5, #0x10
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0202DE3C
	mov r1, r5
	bl DC_FlushRange
_0202DE3C:
	bl DC_WaitWriteBufferEmpty
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202dda0

	arm_func_start FUN_0202de44
FUN_0202de44: ; 0x0202DE44
	ldr r12, _0202DE54 ; =_ZN11L5Allocator8allocateEiii
	mov r2, #0
	mov r3, #1
	bx r12
_0202DE54: .word _ZN11L5Allocator8allocateEiii
	arm_func_end FUN_0202de44

	arm_func_start _ZN11L5Allocator8allocateEiii
_ZN11L5Allocator8allocateEiii: ; 0x0202DE58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r7, _0202E198 ; =0x0208C340
	mov r10, r0
	ldrb r11, [r7]
	ldrb r6, [r7, #1]
	ldrb r5, [r7, #2]
	ldrb r4, [r7, #3]
	ldrb r12, [r7, #4]
	add r0, r10, #0xc
	mov r9, r1
	mov r8, r2
	mov r7, r3
	strb r11, [sp]
	strb r6, [sp, #1]
	strb r5, [sp, #2]
	strb r4, [sp, #3]
	strb r12, [sp, #4]
	bl OS_LockMutex
	bl OS_DisableInterrupts
	ldr r2, [r10, #0x4c]
	add r1, r9, #3
	mov r11, r0
	cmp r2, #0
	mvnge r0, #0
	bic r9, r1, #3
	strge r0, [r10, #0x4c]
	bge _0202DF10
	cmp r8, #4
	bgt _0202DED8
	beq _0202DF04
	b _0202DF0C
_0202DED8:
	cmp r8, #0x13
	bgt _0202DF0C
	cmp r8, #0xd
	blt _0202DF0C
	cmpne r8, #0xe
	beq _0202DEF8
	cmp r8, #0x13
	bne _0202DF0C
_0202DEF8:
	mov r2, #3
	mov r7, #1
	b _0202DF10
_0202DF04:
	mov r2, #2
	b _0202DF10
_0202DF0C:
	ldr r2, [r10, #0x50]
_0202DF10:
	cmp r8, #4
	moveq r2, #2
	tst r2, #0x100
	bicne r2, r2, #0x100
	add r0, r10, r2, lsl #2
	ldr r5, [r0, #0x24]
	movne r7, #0
	cmp r2, #2
	mov r6, r5
	mov r4, #0
	beq _0202DF44
	cmp r9, #0x32000
	movge r7, r4
_0202DF44:
	cmp r7, #0
	beq _0202DFD4
	cmp r5, #0
	beq _0202E028
_0202DF54:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0202DFC4
	ldr r0, [r5, #4]
	cmp r0, r9
	blo _0202DFC4
	ldrb r1, [r6]
	cmp r1, #0
	movne r6, r5
	ldr r1, [r6, #4]
	cmp r1, r9
	movlo r6, r5
	cmp r0, r9, lsl #1
	bhs _0202DF98
	ldr r1, [r6, #4]
	cmp r1, r0
	movhi r6, r5
_0202DF98:
	ldr r1, [r6, #4]
	cmp r1, r9
	beq _0202E028
	ldr r1, [r5, #0xc]
	cmp r1, #0
	addne r0, r5, r0
	addne r0, r0, #0x10
	cmpne r1, r0
	beq _0202DFC4
	mov r0, r5
	bl FUN_0202dda0
_0202DFC4:
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _0202DF54
	b _0202E028
_0202DFD4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202DFF0
_0202DFE0:
	mov r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0202DFE0
_0202DFF0:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0202E024
_0202DFFC:
	ldr r0, [r5, #4]
	cmp r0, r9
	blo _0202E014
	ldrb r0, [r5]
	cmp r0, #0
	beq _0202E024
_0202E014:
	mov r5, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _0202DFFC
_0202E024:
	mov r6, r5
_0202E028:
	ldrb r1, [r6]
	mov r0, #0
	cmp r1, #0
	bne _0202E044
	ldr r2, [r6, #4]
	cmp r2, r9
	bhs _0202E088
_0202E044:
	cmp r4, #5
	bge _0202E06C
	add r0, sp, #0
	ldrb r0, [r0, r4]
	mov r7, #1
	add r4, r4, #1
	add r0, r10, r0, lsl #2
	ldr r5, [r0, #0x24]
	mov r6, r5
	b _0202DF44
_0202E06C:
	mov r0, r11
	bl OS_RestoreInterrupts
	add r0, r10, #0xc
	bl OS_UnlockMutex
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202E088:
	cmp r7, #1
	add r1, r9, #0x40
	bne _0202E0E4
	cmp r2, r1
	bls _0202E134
	add r1, r6, #0x10
	strb r0, [r1, r9]
	ldr r0, [r6, #4]
	add r1, r1, r9
	sub r0, r0, r9
	sub r0, r0, #0x10
	str r0, [r1, #4]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	str r6, [r1, #8]
	ldr r0, [r6, #0xc]
	str r0, [r1, #0xc]
	str r1, [r6, #0xc]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	strne r1, [r0, #8]
	str r9, [r6, #4]
	b _0202E134
_0202E0E4:
	cmp r2, r1
	bls _0202E134
	ldr r1, [r5, #4]
	add r2, r6, #0x10
	sub r1, r1, r9
	add r1, r2, r1
	strb r0, [r1, #-0x10]
	sub r6, r1, #0x10
	str r9, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r5, #0xc]
	str r0, [r6, #0xc]
	str r6, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	strne r6, [r0, #8]
	ldr r1, [r5, #4]
	add r0, r9, #0x10
	sub r0, r1, r0
	str r0, [r5, #4]
_0202E134:
	mov r0, #1
	strb r0, [r6]
	mov r4, #0x10
	mov r0, r6
	mov r1, r4
	strh r8, [r6, #2]
	bl DC_FlushRange
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0202E164
	mov r1, r4
	bl DC_FlushRange
_0202E164:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0202E178
	mov r1, #0x10
	bl DC_FlushRange
_0202E178:
	bl DC_WaitWriteBufferEmpty
	mov r0, r11
	bl OS_RestoreInterrupts
	add r0, r10, #0xc
	bl OS_UnlockMutex
	add r0, r6, #0x10
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202E198: .word unk_0208C340
	arm_func_end _ZN11L5Allocator8allocateEiii

	arm_func_start _ZN11L5Allocator12setNextArenaEi
_ZN11L5Allocator12setNextArenaEi: ; 0x0202E19C
	ldr r2, [r0, #0x4c]
	str r1, [r0, #0x4c]
	mov r0, r2
	bx lr
	arm_func_end _ZN11L5Allocator12setNextArenaEi

	arm_func_start _ZN11L5Allocator15setDefaultArenaEi
_ZN11L5Allocator15setDefaultArenaEi: ; 0x0202E1AC
	ldr r2, [r0, #0x50]
	cmp r1, #0
	strge r1, [r0, #0x50]
	mov r0, r2
	bx lr
	arm_func_end _ZN11L5Allocator15setDefaultArenaEi

	arm_func_start _ZN11L5Allocator10deallocateEPv ; https://decomp.me/scratch/lyon1
_ZN11L5Allocator10deallocateEPv: ; 0x0202E1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	mov r3, r2
_0202E1D8:
	add r0, r7, r3, lsl #2
	ldr r1, [r0, #0x24]
	cmp r6, r1
	blo _0202E1FC
	ldr r0, [r0, #0x38]
	add r0, r1, r0
	cmp r6, r0
	movlo r2, r1
	blo _0202E208
_0202E1FC:
	add r3, r3, #1
	cmp r3, #5
	blt _0202E1D8
_0202E208:
	cmp r2, #0
	bne _0202E218
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E218:
	add r0, r7, #0xc
	bl OS_LockMutex
	bl OS_DisableInterrupts
	sub r5, r6, #0x10
	ldrb r1, [r5]
	mov r4, r0
	cmp r1, #0
	bne _0202E248
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E248:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldrne r1, [r5, #4]
	addne r1, r6, r1
	cmpne r2, r1
	beq _0202E270
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E270:
	mov r0, #0
	strb r0, [r5]
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _0202E2C4
	ldrb r0, [r2]
	cmp r0, #0
	bne _0202E2C4
	ldr r0, [r5, #4]
	ldr r1, [r2, #4]
	add r0, r0, #0x10
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	str r1, [r0, #0xc]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldrne r0, [r5, #8]
	strne r0, [r1, #8]
	ldr r5, [r5, #8]
_0202E2C4:
	mov r6, #0x10
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202E2E8
	mov r1, r6
	bl DC_FlushRange
_0202E2E8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202E2FC
	mov r1, #0x10
	bl DC_FlushRange
_0202E2FC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0202E33C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0202E33C
	ldr r0, [r1, #4]
	ldr r1, [r5, #4]
	add r0, r0, #0x10
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0xc]
	cmp r0, #0
	strne r5, [r0, #8]
_0202E33C:
	mov r6, #0x10
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202E360
	mov r1, r6
	bl DC_FlushRange
_0202E360:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202E374
	mov r1, #0x10
	bl DC_FlushRange
_0202E374:
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end _ZN11L5Allocator10deallocateEPv

	arm_func_start FUN_0202e38c
FUN_0202e38c: ; 0x0202E38C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	movne r0, #0
	mov r6, r2
	strne r0, [r7]
	cmp r6, #0
	movne r0, #0
	mov r5, r3
	strne r0, [r6]
	cmp r5, #0
	mvnne r0, #0
	strne r0, [r5]
	ldmib r8, {r0, r1}
	bl OS_GetTotalFreeSize
	mov r4, #0
	mov r0, r4
	bl OS_GetArenaLo
	mov r0, r4
	bl OS_GetArenaHi
	mov r0, r4
_0202E3E0:
	add r1, r8, r4, lsl #2
	ldr r12, [r1, #0x24]
	cmp r12, #0
	beq _0202E464
	mov r2, r0
	mov r1, r0
	mov lr, r0
	beq _0202E42C
_0202E400:
	ldrb r3, [r12]
	cmp r3, #0
	ldr r3, [r12, #4]
	addne lr, lr, r3
	bne _0202E420
	cmp r3, r2
	add r1, r1, r3
	movhi r2, r3
_0202E420:
	ldr r12, [r12, #0xc]
	cmp r12, #0
	bne _0202E400
_0202E42C:
	cmp r7, #0
	ldrne r3, [r7]
	addne r3, r3, lr
	strne r3, [r7]
	cmp r6, #0
	ldrne r3, [r6]
	addne r1, r3, r1
	strne r1, [r6]
	cmp r5, #0
	beq _0202E464
	ldr r1, [r5]
	cmp r1, #0
	cmpge r1, r2
	strlt r2, [r5]
_0202E464:
	add r4, r4, #1
	cmp r4, #5
	blt _0202E3E0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0202e38c

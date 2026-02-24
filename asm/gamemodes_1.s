
	.include "/macros/function.inc"
	.include "/include/gamemodes_1.inc"

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

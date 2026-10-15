
.public FUN_ov16_020fa638
.public FUN_02053c20
.public FUN_ov16_020fa760
.public FUN_ov16_020f9cdc
.public FUN_ov16_02110b80
.public FUN_ov16_020fc538
.public FUN_ov16_020fa340
.public NNS_G3dGeBufferOP_N
.public NNS_G3dGlbFlushVP
.public FUN_02053b48
.public FUN_ov16_020fa248
.public FUN_ov16_020fa154
.public FUN_ov16_020fa5f4
.public FUN_ov16_02110db4
.public FUN_ov16_020fc5f8
.public FUN_ov16_020fa8a0
.public FUN_ov16_020fd350
.public gNsbResourceMan
.public FUN_ov16_020f9edc
.public FUN_ov16_02110c64
.public FUN_ov16_020fa574
.public FUN_ov16_020fcef8
.public sprintf
.public FUN_ov16_020fd0f4
.public FUN_ov16_020fd278
.public FUN_ov16_020fd6d8
.public FUN_ov16_020fc578
.public FUN_ov16_020fa7f0
.public FUN_ov16_020faf5c
.public FUN_ov16_02110f00
.public FUN_ov16_020fa924
.public FUN_ov16_020fa93c
.public FUN_ov16_020fa930
.public FUN_ov16_020f9f7c
.public FUN_ov16_020faa1c
.public FUN_ov16_020fa838
.public FUN_ov16_020faa34
.public FUN_ov16_02110f78
.public FUN_ov16_020faa4c
.public FUN_ov16_020faa7c
.public FUN_ov16_020faa8c
.public FUN_ov16_020f0810
.public _ZN11CLogicThink11getTeamInfoEi
.public FUN_ov16_020f0b3c
.public FUN_ov16_020f0bcc
.public FUN_0206dcd4
.public FUN_ov16_020ee064
.public FUN_0206d9b0
.public _ZN7Archive25GetBodyModelOffsetAndSizeEPvP4UnitiiPlPm
.public _ZN7Archive16GetBodyModelPathEP4UnitiiiPcS2_
.public _ZN7Archive25GetHairModelOffsetAndSizeEPvP4UnitPlPm
.public _ZN7Archive16GetHairModelPathEP4UnitiPcS2_
.public _ZN7Archive25GetFaceModelOffsetAndSizeEPvP4UnitPlPm
.public _ZN7Archive16GetFaceModelPathEP4UnitiPcS2_
.public _ZN7Archive26GetShoesModelOffsetAndSizeEPvP4UnitiPlPm
.public _ZN7Archive17GetShoesModelPathEP4UnitiiPcS2_
.public _ZN7Archive28GetKitNumberTexOffsetAndSizeEPviiPlPm
.public _ZN7Archive19GetKitNumberTexPathEiiPcS0_
.public gLogicThink
.public FUN_ov16_02111084
.public FUN_ov16_02110f20
.public NNS_G3dGetResDataByName
.public FUN_ov16_020ee008
.public FUN_ov16_020ee478
.public FUN_ov16_020f0c60
.public FUN_ov16_02111098
.public gPalSkin3dFile
.public gGlovesInfoFile
.public gMissInfoFile
.public FUN_ov16_02110ffc
.public _ZN6CModel5closeEv
.public FUN_ov16_021110ac
.public _ZN6CModel5setupEv
.public FUN_ov16_021110d4
.public FX_Sqrt

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_020fb334
FUN_ov16_020fb334: ; 0x020FB334
	ldr r0, [r0, #0x99c]
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb334

	arm_func_start FUN_ov16_020fb348
FUN_ov16_020fb348: ; 0x020FB348
	add r0, r0, #0x348
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_ov16_020fb348

	arm_func_start FUN_ov16_020fb354
FUN_ov16_020fb354: ; 0x020FB354
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020FB378
_020FB360: ; jump table
	b _020FB370 ; case 0
	b _020FB378 ; case 1
	b _020FB370 ; case 2
	b _020FB378 ; case 3
_020FB370:
	mov r0, #1
	bx lr
_020FB378:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb354

	arm_func_start FUN_ov16_020fb380
FUN_ov16_020fb380: ; 0x020FB380
	stmfd sp!, {r3, lr}
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_020FB390: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	b _020FB3A0 ; case 3
_020FB3A0:
	ldr r3, _020FB3B0 ; =0x021188C0
	mov r2, #0
	bl FUN_ov16_020fb3b4
	ldmfd sp!, {r3, pc}
_020FB3B0: .word ov16_021188C0
	arm_func_end FUN_ov16_020fb380

	arm_func_start FUN_ov16_020fb3b4
FUN_ov16_020fb3b4: ; 0x020FB3B4
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #4
	mov r6, r3
	movhs r4, #0
	movlo r3, #0x1bc
	mlalo r4, r1, r3, r0
	cmp r2, #4
	movhs r5, #0
	movlo r1, #0x1bc
	mlalo r5, r2, r1, r0
	mov r0, r5
	bl FUN_ov16_020fa638
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r6
	bl FUN_02053c20
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020fa760
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fb3b4

	arm_func_start FUN_ov16_020fb41c
FUN_ov16_020fb41c: ; 0x020FB41C
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020FB440
_020FB428: ; jump table
	b _020FB438 ; case 0
	b _020FB438 ; case 1
	b _020FB438 ; case 2
	b _020FB440 ; case 3
_020FB438:
	mov r0, #1
	bx lr
_020FB440:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb41c

	arm_func_start FUN_ov16_020fb448
FUN_ov16_020fb448: ; 0x020FB448
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, #0
	mov r5, #0x1bc
_020FB458:
	mla r0, r6, r5, r4
	bl FUN_ov16_020f9cdc
	add r6, r6, #1
	cmp r6, #4
	blt _020FB458
	add r0, r4, #0x6f0
	bl FUN_ov16_02110b80
	mov r7, #0
	add r6, r4, #0x720
	mov r5, #0x14
_020FB480:
	mla r0, r7, r5, r6
	bl FUN_ov16_020fc538
	add r7, r7, #1
	cmp r7, #2
	blt _020FB480
	add r0, r4, #0x348
	add r0, r0, #0x400
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r5, #0
	str r5, [r4, #0x85c]
	add r0, r4, #0x860
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, #0x1000
	str r5, [r4, #0x974]
	str r5, [r4, #0x990]
	str r5, [r4, #0x994]
	str r5, [r4, #0x998]
	str r5, [r4, #0x978]
	str r5, [r4, #0x97c]
	str r5, [r4, #0x980]
	str r0, [r4, #0x984]
	str r0, [r4, #0x988]
	str r0, [r4, #0x98c]
	str r5, [r4, #0x99c]
	str r5, [r4, #0x9a0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fb448

	arm_func_start FUN_ov16_020fb4f8
FUN_ov16_020fb4f8: ; 0x020FB4F8
	ldr r12, _020FB500 ; =FUN_ov16_020fb7ac
	bx r12
_020FB500: .word FUN_ov16_020fb7ac
	arm_func_end FUN_ov16_020fb4f8

	arm_func_start FUN_ov16_020fb504
FUN_ov16_020fb504: ; 0x020FB504
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #0x348
	add r0, r0, #0x400
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	mov r7, #0
	mov r6, r0
	mov r5, r7
	mov r4, #0x1bc
_020FB530:
	mla r0, r7, r4, r8
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa340
	add r7, r7, #1
	cmp r7, #4
	blt _020FB530
	ldr r1, [r8, #0x884]
	mov r0, r8
	mov r2, #1
	bl FUN_ov16_020fa340
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fb504

	arm_func_start FUN_ov16_020fb564
FUN_ov16_020fb564: ; 0x020FB564
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r10, r0
	bl FUN_ov16_020fb334
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	mov r1, r8
	mov r2, r8
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	add r0, r10, #0x178
	mov r9, r8
	add r5, r0, #0x800
	add r4, r10, #0x184
	mov r7, #3
	add r6, sp, #4
	mov r11, #0x1bc
_020FB5B4:
	mov r1, #0
	mov r0, #0x15
	mov r2, r1
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, #0x1c
	add r1, r10, #0x990
	mov r2, r7
	bl NNS_G3dGeBufferOP_N
	mov r0, r6
	ldmia r5, {r1, r2, r3}
	bl FUN_02053b48
	mov r0, #0x19
	mov r1, r6
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x1b
	add r1, r4, #0x800
	mov r2, r7
	bl NNS_G3dGeBufferOP_N
	mla r0, r9, r11, r10
	mov r1, #1
	bl FUN_ov16_020fa248
	cmp r0, #0
	add r9, r9, #1
	addne r8, r8, #1
	cmp r9, #4
	blt _020FB5B4
	mov r4, #1
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x12
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
	cmp r8, #0
	movle r4, #0
	mov r0, r4
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020fb564

	arm_func_start FUN_ov16_020fb650
FUN_ov16_020fb650: ; 0x020FB650
	stmfd sp!, {r3, lr}
	cmp r1, #4
	movhs r0, #0
	movlo r2, #0x1bc
	mlalo r0, r1, r2, r0
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fa154
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fb650

	arm_func_start FUN_ov16_020fb674
FUN_ov16_020fb674: ; 0x020FB674
	stmfd sp!, {r4, lr}
	cmp r1, #1
	movhs r4, #0
	addlo r3, r0, #0x6f0
	movlo r2, #0x30
	mlalo r4, r1, r2, r3
	cmp r4, #0
	mov r2, #0
	ldmeqfd sp!, {r4, pc}
	cmp r1, #0
	moveq r2, r0
	moveq r0, #1
	movne r0, r2
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r2
	bl FUN_ov16_020fa5f4
	mov r0, r4
	bl FUN_ov16_02110db4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fb674

	arm_func_start FUN_ov16_020fb6c4
FUN_ov16_020fb6c4: ; 0x020FB6C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	bmi _020FB6DC
	cmp r6, #2
	blt _020FB6E4
_020FB6DC:
	mov r0, #0
	b _020FB6F0
_020FB6E4:
	add r1, r7, #0x720
	mov r0, #0x14
	mla r0, r6, r0, r1
_020FB6F0:
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020fc5f8
	mov r5, #0
	mov r4, #0x1bc
_020FB704:
	mla r0, r5, r4, r7
	mov r1, r6
	bl FUN_ov16_020fa8a0
	add r5, r5, #1
	cmp r5, #4
	blt _020FB704
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fb6c4

	arm_func_start FUN_ov16_020fb720
FUN_ov16_020fb720: ; 0x020FB720
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x85c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FB74C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	mov r0, #0
	str r0, [r4, #0x85c]
	ldmfd sp!, {r4, pc}
_020FB74C: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fb720

	arm_func_start FUN_ov16_020fb750
FUN_ov16_020fb750: ; 0x020FB750
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x860
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, [r4, #0x974]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FB78C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	mov r0, #0
	str r0, [r4, #0x974]
	ldmfd sp!, {r4, pc}
_020FB78C: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fb750

	arm_func_start FUN_ov16_020fb790
FUN_ov16_020fb790: ; 0x020FB790
	stmfd sp!, {r3, lr}
	add r0, r0, #0x348
	add r0, r0, #0x400
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fb790

	arm_func_start FUN_ov16_020fb7ac
FUN_ov16_020fb7ac: ; 0x020FB7AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020fb790
	mov r4, #0
_020FB7BC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb6c4
	add r4, r4, #1
	cmp r4, #2
	blt _020FB7BC
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb674
_020FB7E4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb650
	add r4, r4, #1
	cmp r4, #4
	blt _020FB7E4
	mov r0, r5
	bl FUN_ov16_020fb720
	mov r0, r5
	bl FUN_ov16_020fb750
	mov r0, r5
	bl FUN_ov16_020fb448
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fb7ac

	arm_func_start FUN_ov16_020fb818
FUN_ov16_020fb818: ; 0x020FB818
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	cmp r3, #4
	mov r6, r1
	movhs r4, #0
	movlo r1, #0x1bc
	mlalo r4, r3, r1, r0
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r3
	bl FUN_ov16_020fb650
	ldr r0, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	str r0, [sp]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, #1
	str r12, [sp, #4]
	bl FUN_ov16_020f9edc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fb818

	arm_func_start FUN_ov16_020fb87c
FUN_ov16_020fb87c: ; 0x020FB87C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	movs r7, r3
	mov r10, r0
	mov r9, r1
	mov r8, r2
	bmi _020FB8A0
	cmp r7, #1
	blt _020FB8A8
_020FB8A0:
	mov r6, #0
	b _020FB8B4
_020FB8A8:
	add r1, r10, #0x6f0
	mov r0, #0x30
	mla r6, r7, r0, r1
_020FB8B4:
	cmp r6, #0
	mov r4, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020fb674
	cmp r7, #0
	moveq r4, r10
	moveq r0, #1
	movne r0, r4
	moveq r5, r7
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	mov r0, r6
	mov r1, r9
	mov r2, r8
	str r3, [sp, #4]
	mov r7, #0
	mov r3, #1
	str r7, [sp, #8]
	bl FUN_ov16_02110c64
	cmp r0, #0
	beq _020FB940
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fa574
	mov r7, r0
_020FB940:
	mov r0, r7
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fb87c

	arm_func_start FUN_ov16_020fb94c
FUN_ov16_020fb94c: ; 0x020FB94C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, #1
	str r5, [sp]
	str r3, [sp, #4]
	ldr r4, [sp, #0x28]
	ldr r3, _020FB9A8 ; =gNsbResourceMan
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	mov r7, r0
	ldr r0, [r3]
	mov r3, #0xf
	mov r6, #0
	bl FUN_ov16_020fcef8
	mov r4, r0
	mov r0, r7
	bl FUN_ov16_020fb720
	cmp r4, #0
	moveq r0, r6
	movne r0, r5
	strne r4, [r7, #0x85c]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB9A8: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fb94c

	arm_func_start FUN_ov16_020fb9ac
FUN_ov16_020fb9ac: ; 0x020FB9AC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	add r4, sp, #0
	mov r6, r0
	ldr r1, _020FBA08 ; =0x021188C8
	mov r0, r4
	mov r5, #0
	bl sprintf
	ldr r0, _020FBA0C ; =gNsbResourceMan
	mov r1, r4
	ldr r0, [r0]
	mov r2, #0xf
	bl FUN_ov16_020fd0f4
	movs r4, r0
	addeq sp, sp, #0x80
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov16_020fb750
	str r4, [r6, #0x974]
	mov r0, #1
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_020FBA08: .word ov16_021188C8
_020FBA0C: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fb9ac

	arm_func_start FUN_ov16_020fba10
FUN_ov16_020fba10: ; 0x020FBA10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r7, _020FBCD0 ; =0x02117928
	mov r10, r0
	ldmia r7!, {r0, r1, r2, r3}
	add r6, sp, #8
	mov r11, r6
	stmia r6!, {r0, r1, r2, r3}
	ldr r0, [r7]
	ldr r4, _020FBCD4 ; =0x02117920
	str r0, [r6]
	ldr r5, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r10, #0x85c]
	str r5, [sp]
	str r0, [sp, #4]
	cmp r1, #0
	mov r6, #0
	beq _020FBB4C
	ldr r0, _020FBCD8 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov16_020fb790
	mov r8, r6
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020fb6c4
	add r5, r10, #0x348
	mov r4, #0x1bc
	b _020FBB30
_020FBA98:
	ldr r0, _020FBCD8 ; =gNsbResourceMan
	ldr r1, [r10, #0x85c]
	ldr r0, [r0]
	ldr r3, [r11, r8, lsl #2]
	add r2, r8, #1
	bl FUN_ov16_020fd6d8
	movs r9, r0
	beq _020FBB2C
	cmp r8, #0
	bne _020FBAD8
	add r0, r5, #0x400
	ldr r2, [r0]
	mov r1, r9
	ldr r2, [r2, #0xc]
	blx r2
	b _020FBB1C
_020FBAD8:
	mov r1, r9
	add r0, r10, #0x720
	bl FUN_ov16_020fc578
	mov r7, r6
	b _020FBB14
_020FBAEC:
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020fb41c
	cmp r0, #0
	beq _020FBB10
	mla r0, r7, r4, r10
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_020fa7f0
_020FBB10:
	add r7, r7, #1
_020FBB14:
	cmp r7, #4
	blt _020FBAEC
_020FBB1C:
	ldr r0, _020FBCD8 ; =gNsbResourceMan
	mov r1, r9
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FBB2C:
	add r8, r8, #1
_020FBB30:
	cmp r8, #2
	blt _020FBA98
	ldr r0, _020FBCD8 ; =gNsbResourceMan
	ldr r1, [r10, #0x85c]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	str r6, [r10, #0x85c]
_020FBB4C:
	ldr r1, [r10, #0x974]
	cmp r1, #0
	beq _020FBC30
	ldr r5, _020FBCD8 ; =gNsbResourceMan
	ldr r0, [r5]
	bl FUN_ov16_020fd278
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x860
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r10
	mov r1, #1
	bl FUN_ov16_020fb6c4
	mov r8, #0
	add r4, r10, #0x334
	mov r11, #1
	add r7, sp, #0
	b _020FBC14
_020FBBA0:
	ldr r0, [r5]
	ldr r1, [r10, #0x974]
	ldr r3, [r7, r8, lsl #2]
	mov r2, r8
	bl FUN_ov16_020fd6d8
	movs r9, r0
	beq _020FBC10
	cmp r8, #0
	bne _020FBBE8
	add r0, r10, #0x860
	ldr r2, [r0]
	mov r1, r9
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, [r10, #0x9a0]
	add r0, r10, #0x860
	bl FUN_ov16_020faf5c
	b _020FBC04
_020FBBE8:
	mov r1, r9
	add r0, r4, #0x400
	bl FUN_ov16_020fc578
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov16_020fa7f0
_020FBC04:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov16_020fd350
_020FBC10:
	add r8, r8, #1
_020FBC14:
	cmp r8, #2
	blt _020FBBA0
	ldr r0, _020FBCD8 ; =gNsbResourceMan
	ldr r1, [r10, #0x974]
	ldr r0, [r0]
	bl FUN_ov16_020fd350
	str r6, [r10, #0x974]
_020FBC30:
	mov r5, #0x30
	mov r7, #0
	add r8, r10, #0x6f0
	mov r9, #1
	mov r4, r5
	b _020FBC7C
_020FBC48:
	mla r0, r7, r5, r10
	ldr r0, [r0, #0x6f4]
	cmp r0, #0
	moveq r0, r9
	movne r0, r6
	cmp r0, #0
	bne _020FBC78
	mla r0, r7, r4, r8
	bl FUN_ov16_02110f00
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBC78:
	add r7, r7, #1
_020FBC7C:
	cmp r7, #1
	blt _020FBC48
	mov r4, #0x1bc
	mov r7, #0
	mov r5, r4
	b _020FBCBC
_020FBC94:
	mla r0, r7, r5, r10
	bl FUN_ov16_020fa924
	cmp r0, #0
	bne _020FBCB8
	mla r0, r7, r4, r10
	bl FUN_ov16_020fa93c
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBCB8:
	add r7, r7, #1
_020FBCBC:
	cmp r7, #4
	blt _020FBC94
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBCD0: .word ov16_02117928
_020FBCD4: .word ov16_02117920
_020FBCD8: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fba10

	arm_func_start FUN_ov16_020fbcdc
FUN_ov16_020fbcdc: ; 0x020FBCDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	mov r10, r0
	mov r5, #1
	mov r8, r6
_020FBCF0:
	mov r0, #0x1bc
	mul r7, r8, r0
	add r0, r10, r7
	bl FUN_ov16_020fa924
	cmp r0, #0
	bne _020FBE24
	add r0, r10, r7
	bl FUN_ov16_020fa930
	cmp r0, #0
	bne _020FBD40
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020fb354
	mov r2, r0
	mov r1, r6
	add r0, r10, r7
	bl FUN_ov16_020f9f7c
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBD40:
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020fb380
	mov r4, #0
_020FBD50:
	mov r1, r4
	add r0, r10, r7
	bl FUN_ov16_020faa1c
	ldr r1, [r0, #4]
	mov r2, r5
	cmp r1, #0
	movne r2, r6
	cmp r2, #0
	bne _020FBDAC
	cmp r1, #0
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	movne r0, r5
	moveq r0, r6
	cmp r0, #0
	bne _020FBDAC
	mov r1, r4
	mov r2, r6
	add r0, r10, r7
	bl FUN_ov16_020fa838
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBDAC:
	add r4, r4, #1
	cmp r4, #2
	blt _020FBD50
	mov r11, #0
	mov r4, #1
	mov r9, r11
_020FBDC4:
	mov r1, r9
	add r0, r10, r7
	bl FUN_ov16_020faa34
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, r4
	movne r1, r11
	cmp r1, #0
	bne _020FBE18
	bne _020FBDFC
	ldr r1, [r0, #0xc]
	tst r1, #1
	movne r1, r4
	bne _020FBE00
_020FBDFC:
	mov r1, #0
_020FBE00:
	cmp r1, #0
	bne _020FBE18
	bl FUN_ov16_02110f78
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FBE18:
	add r9, r9, #1
	cmp r9, #5
	blt _020FBDC4
_020FBE24:
	add r8, r8, #1
	cmp r8, #4
	blt _020FBCF0
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020fbe44
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020fbcdc

	arm_func_start FUN_ov16_020fbe44
FUN_ov16_020fbe44: ; 0x020FBE44
	cmp r1, #0
	ldr r1, [r0, #0x99c]
	orrne r1, r1, #0x100
	biceq r1, r1, #0x100
	str r1, [r0, #0x99c]
	bx lr
	arm_func_end FUN_ov16_020fbe44

	arm_func_start FUN_ov16_020fbe5c
FUN_ov16_020fbe5c: ; 0x020FBE5C
	str r1, [r0, #0x990]
	str r2, [r0, #0x994]
	str r3, [r0, #0x998]
	bx lr
	arm_func_end FUN_ov16_020fbe5c

	arm_func_start FUN_ov16_020fbe6c
FUN_ov16_020fbe6c: ; 0x020FBE6C
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	mov r1, r3, lsr #0x10
	str r12, [r0, #0x978]
	str r2, [r0, #0x97c]
	str r1, [r0, #0x980]
	bx lr
	arm_func_end FUN_ov16_020fbe6c

	arm_func_start FUN_ov16_020fbe94
FUN_ov16_020fbe94: ; 0x020FBE94
	str r1, [r0, #0x984]
	str r2, [r0, #0x988]
	str r3, [r0, #0x98c]
	bx lr
	arm_func_end FUN_ov16_020fbe94

	arm_func_start FUN_ov16_020fbea4
FUN_ov16_020fbea4: ; 0x020FBEA4
	mov r3, r0
	add r0, r1, #0x990
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fbea4

	arm_func_start FUN_ov16_020fbeb8
FUN_ov16_020fbeb8: ; 0x020FBEB8
	add r1, r1, #0x178
	mov r3, r0
	add r0, r1, #0x800
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fbeb8

	arm_func_start FUN_ov16_020fbed0
FUN_ov16_020fbed0: ; 0x020FBED0
	add r1, r1, #0x184
	mov r3, r0
	add r0, r1, #0x800
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fbed0

	arm_func_start FUN_ov16_020fbee8
FUN_ov16_020fbee8: ; 0x020FBEE8
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x984]
	smull lr, r12, r1, r12
	adds r1, lr, #0x800
	adc r12, r12, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r12, lsl #20
	bl FUN_ov16_020faa4c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fbee8

	arm_func_start FUN_ov16_020fbf0c
FUN_ov16_020fbf0c: ; 0x020FBF0C
	ldr r2, [r0, #0x984]
	ldr r12, _020FBF2C ; =FUN_ov16_020faa7c
	smull r3, r2, r1, r2
	adds r1, r3, #0x800
	adc r2, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r2, lsl #20
	bx r12
_020FBF2C: .word FUN_ov16_020faa7c
	arm_func_end FUN_ov16_020fbf0c

	arm_func_start FUN_ov16_020fbf30
FUN_ov16_020fbf30: ; 0x020FBF30
	ldr r12, _020FBF38 ; =FUN_ov16_020faa8c
	bx r12
_020FBF38: .word FUN_ov16_020faa8c
	arm_func_end FUN_ov16_020fbf30

	arm_func_start FUN_ov16_020fbf3c
FUN_ov16_020fbf3c: ; 0x020FBF3C
	mov r12, #0
	mov r2, #0x1bc
_020FBF44:
	mla r3, r12, r2, r0
	adds r3, r3, #4
	add r12, r12, #1
	strneh r1, [r3, #0xa]
	cmp r12, #4
	blt _020FBF44
	bx lr
	arm_func_end FUN_ov16_020fbf3c

	arm_func_start FUN_ov16_020fbf60
FUN_ov16_020fbf60: ; 0x020FBF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	ldr r4, [sp, #0x238]
	movs r7, r1
	mov r8, r0
	add r11, sp, #0xc
	mov r6, r2
	mov r5, r3
	addeq sp, sp, #0x210
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _020FC284 ; =gLogicThink
	bl _ZN11CLogicThink11getTeamInfoEi
	movs r10, r0
	addeq sp, sp, #0x210
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [r10, #0x28]
	mov r0, r7
	cmp r1, #0
	ldreqh r1, [r10, #0x26]
	bl FUN_ov16_020f0b3c
	mov r9, r0
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f0bcc
	ldrb r1, [sp, #0x23c]
	mov r10, r0
	ldrb r0, [sp, #0x240]
	cmp r1, #0
	moveq r10, #0
	cmp r0, #0
	bne _020FC000
	mov r0, r7
	bl FUN_0206dcd4
	ldrh r9, [r0, #0xe]
	mov r10, #0
_020FC000:
	cmp r5, #0
	movne r5, #0x17
	bne _020FC024
	ldr r0, _020FC284 ; =gLogicThink
	mov r1, r7
	bl FUN_ov16_020ee064
	cmp r0, #0
	ldrneh r5, [r0, #0x26]
	moveq r5, #0
_020FC024:
	mov r0, r7
	mov r1, #1
	bl FUN_0206d9b0
	sub r0, r0, #1
	str r0, [r8, #0x9a0]
	mov r1, #4
	cmp r6, #1
	movne r1, #5
	mov r0, #0xc
	mul r0, r1, r0
	add r1, sp, #8
	str r11, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	mov r1, r7
	mov r2, r9
	mov r3, r10
	bl _ZN7Archive25GetBodyModelOffsetAndSizeEPvP4UnitiiPlPm
	cmp r0, #0
	beq _020FC0BC
	add r11, sp, #0x10
	str r11, [sp]
	add r12, sp, #0x110
	mov r0, r7
	mov r1, r6
	mov r2, r9
	mov r3, r10
	str r12, [sp, #4]
	bl _ZN7Archive16GetBodyModelPathEP4UnitiiiPcS2_
	ldr r0, [sp, #0xc]
	mov r1, r11
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x110
	str r0, [sp, #4]
	mov r0, r8
	mov r3, #0
	bl FUN_ov16_020fb818
_020FC0BC:
	mov r1, #0
	cmp r6, #1
	movne r1, #1
	mov r0, #0xc
	mul r0, r1, r0
	ldr r0, [r4, r0]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r1, r7
	bl _ZN7Archive25GetHairModelOffsetAndSizeEPvP4UnitPlPm
	cmp r0, #0
	beq _020FC128
	add r11, sp, #0x10
	mov r0, r7
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x110
	bl _ZN7Archive16GetHairModelPathEP4UnitiPcS2_
	ldr r0, [sp, #0xc]
	mov r1, r11
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x110
	str r0, [sp, #4]
	mov r0, r8
	mov r3, #2
	bl FUN_ov16_020fb818
_020FC128:
	mov r1, #2
	cmp r6, #1
	movne r1, #3
	mov r0, #0xc
	mul r0, r1, r0
	ldr r0, [r4, r0]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r1, r7
	bl _ZN7Archive25GetFaceModelOffsetAndSizeEPvP4UnitPlPm
	cmp r0, #0
	beq _020FC194
	add r11, sp, #0x10
	mov r0, r7
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x110
	bl _ZN7Archive16GetFaceModelPathEP4UnitiPcS2_
	ldr r0, [sp, #0xc]
	mov r1, r11
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0x110
	str r0, [sp, #4]
	mov r0, r8
	mov r3, #3
	bl FUN_ov16_020fb818
_020FC194:
	mov r2, #6
	cmp r6, #1
	movne r2, #7
	mov r0, #0xc
	mul r0, r2, r0
	add r1, sp, #8
	str r1, [sp]
	ldr r0, [r4, r0]
	add r3, sp, #0xc
	mov r1, r7
	mov r2, r5
	bl _ZN7Archive26GetShoesModelOffsetAndSizeEPvP4UnitiPlPm
	cmp r0, #0
	beq _020FC20C
	add r11, sp, #0x110
	mov r0, r7
	mov r1, r6
	mov r2, r5
	add r3, sp, #0x10
	str r11, [sp]
	bl _ZN7Archive17GetShoesModelPathEP4UnitiiPcS2_
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r1, [sp]
	ldr r5, [sp, #8]
	add r1, sp, #0x10
	mov r2, r11
	mov r3, #1
	str r5, [sp, #4]
	bl FUN_ov16_020fb818
_020FC20C:
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [r4, #0x60]
	add r3, sp, #0xc
	mov r1, r9
	mov r2, r10
	add r5, sp, #0x110
	add r6, sp, #0x10
	bl _ZN7Archive28GetKitNumberTexOffsetAndSizeEPviiPlPm
	cmp r0, #0
	beq _020FC270
	mov r0, r9
	mov r1, r10
	mov r2, r6
	mov r3, r5
	bl _ZN7Archive19GetKitNumberTexPathEiiPcS0_
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r1, [sp]
	ldr r4, [sp, #8]
	mov r1, r6
	mov r2, r5
	mov r3, #0
	str r4, [sp, #4]
	bl FUN_ov16_020fb87c
_020FC270:
	mov r0, r8
	bl FUN_ov16_020fb9ac
	mov r0, #1
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FC284: .word gLogicThink
	arm_func_end FUN_ov16_020fbf60

	arm_func_start FUN_ov16_020fc288
FUN_ov16_020fc288: ; 0x020FC288
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r1
	mov r5, r0
	mov r0, r10
	mov r4, r2
	bl FUN_ov16_020f0810
	mov r1, r0
	ldr r0, _020FC474 ; =gLogicThink
	bl _ZN11CLogicThink11getTeamInfoEi
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r9, [r0, #0x28]
	mov r1, r10
	cmp r9, #0
	ldreqh r9, [r0, #0x26]
	bl FUN_ov16_020f0bcc
	cmp r4, #0
	mov r11, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0
	moveq r11, #0
	bl FUN_ov16_020faa34
	mov r6, r0
	ldr r0, [r6, #4]
	cmp r0, #0
	moveq r0, #1
	movne r0, r4
	cmp r0, #0
	bne _020FC318
	ldr r0, [r6, #0xc]
	tst r0, #1
	movne r4, #1
_020FC318:
	cmp r4, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_ov16_02111084
	mov r5, r0
	mov r0, r6
	bl FUN_ov16_02110f20
	movs r4, r0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #0
	ldrneh r0, [r4, #0x34]
	cmpne r0, #0
	moveq r0, #0
	beq _020FC36C
	ldr r1, _020FC478 ; =0x02117950
	add r0, r4, r0
	bl NNS_G3dGetResDataByName
_020FC36C:
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r0]
	cmp r4, #0
	str r0, [sp, #0x18]
	ldrneh r0, [r4, #0x34]
	cmpne r0, #0
	moveq r0, #0
	beq _020FC3A4
	ldr r1, _020FC47C ; =0x0211793C
	add r0, r4, r0
	bl NNS_G3dGetResDataByName
_020FC3A4:
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r0]
	mov r7, #0
	mov r8, r7
	str r0, [sp, #0x1c]
	ldr r4, _020FC474 ; =gLogicThink
	b _020FC3F8
_020FC3CC:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bl FUN_ov16_020ee008
	cmp r0, #0
	beq _020FC3F4
	ldrb r1, [r0, #0x1d]
	cmp r1, #0x18
	ldreqh r7, [r0, #0x26]
	beq _020FC400
_020FC3F4:
	add r8, r8, #1
_020FC3F8:
	cmp r8, #2
	blt _020FC3CC
_020FC400:
	ldr r0, _020FC474 ; =gLogicThink
	mov r1, r10
	bl FUN_ov16_020ee478
	cmp r0, #0
	ldrneh r3, [r0, #0x26]
	ldr r0, _020FC480 ; =gPalSkin3dFile
	mov r2, r10
	stmia sp, {r7, r9, r11}
	ldr r1, [r0]
	ldr r0, _020FC484 ; =gGlovesInfoFile
	str r1, [sp, #0xc]
	ldr r1, [r0]
	ldr r0, _020FC488 ; =gMissInfoFile
	str r1, [sp, #0x10]
	ldr r4, [r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	moveq r3, #0
	add r0, r5, r0, lsl #3
	add r1, r5, r1, lsl #3
	str r4, [sp, #0x14]
	bl FUN_ov16_020f0c60
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_02111098
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FC474: .word gLogicThink
_020FC478: .word ov16_02117950
_020FC47C: .word ov16_0211793C
_020FC480: .word gPalSkin3dFile
_020FC484: .word gGlovesInfoFile
_020FC488: .word gMissInfoFile
	arm_func_end FUN_ov16_020fc288

	arm_func_start FUN_ov16_020fc48c
FUN_ov16_020fc48c: ; 0x020FC48C
	stmfd sp!, {r3, lr}
	mov r1, #0
	bl FUN_ov16_020faa34
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_02110ffc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fc48c

	arm_func_start FUN_ov16_020fc4a8
FUN_ov16_020fc4a8: ; 0x020FC4A8
	ldrb r0, [r0, #0x42]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_020fc4a8

	arm_func_start FUN_ov16_020fc4bc
FUN_ov16_020fc4bc: ; 0x020FC4BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x1bc
_020FC4CC:
	mla r0, r5, r4, r6
	bl _ZN6CModel5closeEv
	add r5, r5, #1
	cmp r5, #4
	blt _020FC4CC
	add r0, r6, #0x6f0
	bl FUN_ov16_021110ac
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc4bc

	arm_func_start FUN_ov16_020fc4f0
FUN_ov16_020fc4f0: ; 0x020FC4F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #0x1bc
_020FC500:
	mla r0, r5, r4, r6
	bl _ZN6CModel5setupEv
	add r5, r5, #1
	cmp r5, #4
	blt _020FC500
	add r0, r6, #0x6f0
	bl FUN_ov16_021110d4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc4f0

	.rodata
	.global ov16_02117920
ov16_02117920:
	.byte 0x02, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.global ov16_02117928
ov16_02117928:
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.global ov16_0211793C
ov16_0211793C:
	.asciz "socks00_pl"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02117950
ov16_02117950:
	.asciz "uni01_pl"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov16_02117f68
FUN_ov16_02117f68: ; 0x02117F68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117FB0 ; =0x021188A8
	str r0, [r4, #8]
	ldr r0, _02117FB4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02117FB8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02117FB0: .word ov16_021188A8
_02117FB4: .word 0x00009CCD
_02117FB8: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117f68

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117f68

	.data
	.global ov16_021188A8
ov16_021188A8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_021188C0
ov16_021188C0:
	.asciz "head"
	.balign 4, 0
	.global ov16_021188C8
ov16_021188C8:
	.asciz "/data_iz/model/char/body_no.pac_"
	.balign 4, 0

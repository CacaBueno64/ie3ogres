
	.include "/macros/function.inc"
	.include "/include/overlay0.inc"

	.text
	arm_func_start FUN_ov0_020bcb40
FUN_ov0_020bcb40: ; 0x020BCB40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r2, [r0]
	mov r7, #2
	ldr r2, [r2, #0xc]
	mov r1, r7
	mov r8, r0
	blx r2
	bl FUN_02059e58
	mov r6, #0
	mov r1, r6
	add r0, r8, #0x104
	bl FUN_ov0_020c6c98
	ldr r0, _020BCC94 ; =0x0209A3E0
	mov r5, #3
	str r5, [r0, #0x2c]
	mov r4, #1
	str r4, [r0, #0x30]
	str r6, [r8, #0x80]
	str r6, [r8, #0x84]
	mov r0, r8
	mov r1, r6
	mov r2, r6
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	mov r0, r8
	mov r1, r6
	mov r2, #0x82
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	strb r6, [r8, #0x89]
	strb r6, [r8, #0x88]
	ldr r9, _020BCC98 ; =0x020AF81C
	mov r1, r8
	mov r0, r9
	bl FUN_02044464
	mov r0, r9
	mov r1, #0x83
	bl FUN_02044e98
	mov r0, r9
	bl FUN_020443c0
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r8, _020BCC9C ; =g3DGameMapObject
	mov r1, r4
	ldr r0, [r8]
	mov r2, r4
	bl FUN_0205f150
	ldr r0, [r8]
	mov r9, #4
	mov r1, r9
	mov r2, r4
	bl FUN_0205f150
	ldr r8, _020BCCA0 ; =g3DGameMap
	mov r1, r7
	ldr r0, [r8]
	mov r2, r4
	bl FUN_0205d56c
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	bl FUN_0205d56c
	mov r1, r9
	ldr r0, [r8]
	mov r2, r4
	bl FUN_0205d56c
	mov r1, r5
	ldr r0, [r8]
	mov r2, r4
	bl FUN_020521d0
	ldr r0, [r8]
	mov r1, r4
	mov r2, r4
	bl FUN_020521d0
	ldr r0, _020BCCA4 ; =0x020A0640
	strb r6, [r0, #0x96]
	strb r7, [r0, #0x97]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BCC94: .word unk_0209A3E0
_020BCC98: .word unk_020AF81C
_020BCC9C: .word g3DGameMapObject
_020BCCA0: .word g3DGameMap
_020BCCA4: .word unk_020A0640
	arm_func_end FUN_ov0_020bcb40

	arm_func_start FUN_ov0_020bcca8
FUN_ov0_020bcca8: ; 0x020BCCA8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCCC8
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCCC8:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BCCE0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCCE0:
	ldr r0, _020BCDC0 ; =0x02099E91
	ldrb r0, [r0]
	cmp r0, #0
	beq _020BCD10
	ldr r1, [r4, #0x80]
	ldr r2, [r4, #0xf68]
	mov r0, r4
	bl _ZN14CScreenManager12deleteScreenEP12CommonScreenP17ScreenLoadContext
	ldr r1, [r4, #0x84]
	ldr r2, [r4, #0xf6c]
	mov r0, r4
	bl _ZN14CScreenManager12deleteScreenEP12CommonScreenP17ScreenLoadContext
_020BCD10:
	ldr r1, _020BCDC4 ; =0x0209A3E0
	mvn r2, #0
	ldr r0, _020BCDC8 ; =0x020AF81C
	str r2, [r1, #0x2c]
	bl FUN_020443d4
	mov r0, r4
	ldr r2, [r0]
	mov r8, #2
	ldr r2, [r2, #0x28]
	mov r1, r8
	blx r2
	ldr r5, _020BCDCC ; =g3DGameMapObject
	mov r7, #1
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0205f1ec
	mov r6, #4
	ldr r0, [r5]
	mov r1, r6
	bl FUN_0205f1ec
	ldr r5, _020BCDD0 ; =g3DGameMap
	mov r1, r8
	ldr r0, [r5]
	bl FUN_0205d608
	ldr r0, [r5]
	mov r1, #0
	bl FUN_0205d608
	mov r1, r6
	ldr r0, [r5]
	bl FUN_0205d608
	ldr r0, [r5]
	mov r1, #3
	bl FUN_020522ec
	ldr r0, [r5]
	mov r1, r7
	bl FUN_020522ec
	ldr r5, _020BCDD4 ; =gAllocator
	ldr r1, [r4, #0xf68]
	mov r0, r5
	bl _ZN9Allocator10deallocateEPv
	mov r0, r5
	ldr r1, [r4, #0xf6c]
	bl _ZN9Allocator10deallocateEPv
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BCDC0: .word unk_02099E91
_020BCDC4: .word unk_0209A3E0
_020BCDC8: .word unk_020AF81C
_020BCDCC: .word g3DGameMapObject
_020BCDD0: .word g3DGameMap
_020BCDD4: .word gAllocator
	arm_func_end FUN_ov0_020bcca8

	arm_func_start FUN_ov0_020bcdd8
FUN_ov0_020bcdd8: ; 0x020BCDD8
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _020BCE0C
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCE38
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mov r1, r0
	ldr r0, [r5, #0x80]
	b _020BCE2C
_020BCE0C:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BCE38
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	mov r1, r0
	ldr r0, [r5, #0x84]
_020BCE2C:
	ldr r2, [r0]
	ldr r2, [r2, #0x18]
	blx r2
_020BCE38:
	mov r0, r4
	bl _ZN8Graphics16UpdateScreenFadeE12EngineSelect
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020bcdd8

	arm_func_start FUN_ov0_020bce48
FUN_ov0_020bce48: ; 0x020BCE48
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl _ZN8Graphics16UpdateScreenFadeE12EngineSelect
	cmp r4, #0
	bne _020BCE74
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCE8C
	b _020BCE80
_020BCE74:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BCE8C
_020BCE80:
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
_020BCE8C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020bce48

	arm_func_start FUN_ov0_020bce94
FUN_ov0_020bce94: ; 0x020BCE94
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	sub r0, r0, #0x5a
	cmp r0, #0x35
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020BCED0: ; jump table
	b _020BCFC4 ; case 0
	b _020BCFE4 ; case 1
	b _020BD000 ; case 2
	b _020BCFA8 ; case 3
	b _020BD080 ; case 4
	b _020BD394 ; case 5
	b _020BD3C0 ; case 6
	b _020BD09C ; case 7
	b _020BD2A0 ; case 8
	b _020BD140 ; case 9
	b _020BD040 ; case 10
	b _020BD060 ; case 11
	b _020BD0C8 ; case 12
	b _020BD020 ; case 13
	b _020BD2C0 ; case 14
	ldmfd sp!, {r4, r5, r6, pc} ; case 15
	b _020BD260 ; case 16
	b _020BD2E0 ; case 17
	b _020BD2FC ; case 18
	b _020BD318 ; case 19
	b _020BD338 ; case 20
	b _020BD358 ; case 21
	b _020BD378 ; case 22
	b _020BD3DC ; case 23
	b _020BD3F8 ; case 24
	b _020BD414 ; case 25
	b _020BD280 ; case 26
	ldmfd sp!, {r4, r5, r6, pc} ; case 27
	ldmfd sp!, {r4, r5, r6, pc} ; case 28
	ldmfd sp!, {r4, r5, r6, pc} ; case 29
	b _020BD430 ; case 30
	b _020BD46C ; case 31
	b _020BD488 ; case 32
	b _020BD44C ; case 33
	ldmfd sp!, {r4, r5, r6, pc} ; case 34
	b _020BD0E4 ; case 35
	ldmfd sp!, {r4, r5, r6, pc} ; case 36
	ldmfd sp!, {r4, r5, r6, pc} ; case 37
	ldmfd sp!, {r4, r5, r6, pc} ; case 38
	ldmfd sp!, {r4, r5, r6, pc} ; case 39
	ldmfd sp!, {r4, r5, r6, pc} ; case 40
	ldmfd sp!, {r4, r5, r6, pc} ; case 41
	ldmfd sp!, {r4, r5, r6, pc} ; case 42
	b _020BD160 ; case 43
	b _020BD180 ; case 44
	b _020BD1A0 ; case 45
	b _020BD1C0 ; case 46
	b _020BD1E0 ; case 47
	b _020BD200 ; case 48
	b _020BD100 ; case 49
	b _020BD120 ; case 50
	ldmfd sp!, {r4, r5, r6, pc} ; case 51
	b _020BD220 ; case 52
	b _020BD240 ; case 53
_020BCFA8:
	ldr r0, _020BD4A4 ; =0x00001618
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4A8 ; =0x02121330
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BCFC4:
	ldr r0, _020BD4AC ; =0x000010AC
	bl _Znwm
	cmp r0, #0
	beq _020BCFDC
	mov r1, r5
	bl FUN_ov57_0211f8f8
_020BCFDC:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BCFE4:
	ldr r0, _020BD4B0 ; =0x00001218
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4B4 ; =0x0211EF40
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD000:
	ldr r0, _020BD4B8 ; =0x000020FC
	bl _Znwm
	cmp r0, #0
	beq _020BD018
	mov r1, r5
	bl FUN_ov63_021223fc
_020BD018:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD020:
	mov r0, #0x16c0
	bl _Znwm
	cmp r0, #0
	beq _020BD038
	mov r1, r5
	bl FUN_ov52_02119fa0
_020BD038:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD040:
	mov r0, #0xd0
	bl _Znwm
	cmp r0, #0
	beq _020BD058
	mov r1, r5
	bl FUN_ov54_0211b0b0
_020BD058:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD060:
	mov r0, #0x58
	bl _Znwm
	cmp r0, #0
	beq _020BD078
	mov r1, r5
	bl FUN_ov54_0211bf6c ; may be ov65 ; ov54(Mica)
_020BD078:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD080:
	mov r0, #0x120
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4BC ; =0x0211B6C0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD09C:
	ldr r0, _020BD4C0 ; =0x000033E8
	bl _Znwm
	movs r6, r0
	beq _020BD0C0
	ldr r1, _020BD4C4 ; =0x02120110
	add r0, r6, #0x33c0
	str r1, [r6]
	bl FUN_0206c0d8
	str r5, [r6, #4]
_020BD0C0:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD0C8:
	ldr r0, _020BD4C8 ; =0x0000091C
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4CC ; =0x02120EE8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD0E4:
	ldr r0, _020BD4D0 ; =0x00003524
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4D4 ; =0x0211F288
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD100:
	mov r0, #0x230
	bl _Znwm
	cmp r0, #0
	beq _020BD118
	mov r1, r5
	bl FUN_ov45_0211b604
_020BD118:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD120:
	mov r0, #0x2b8
	bl _Znwm
	cmp r0, #0
	beq _020BD138
	mov r1, r5
	bl FUN_ov52_0211d888 ; may be ov45 ; ov52(Mica)
_020BD138:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD140:
	ldr r0, _020BD4D8 ; =0x00000F0C
	bl _Znwm
	cmp r0, #0
	beq _020BD158
	mov r1, r5
	bl FUN_ov18_02119f00 ; may be ov19 to ov91 ; ov18(Mica)
_020BD158:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD160:
	mov r0, #0x3f8
	bl _Znwm
	cmp r0, #0
	beq _020BD178
	mov r1, r5
	bl FUN_ov51_0211d370
_020BD178:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD180:
	mov r0, #0x3d0
	bl _Znwm
	cmp r0, #0
	beq _020BD198
	mov r1, r5
	bl FUN_ov50_0211d514 ; may be ov55 ; ov50(Mica)
_020BD198:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD1A0:
	mov r0, #0xa20
	bl _Znwm
	cmp r0, #0
	beq _020BD1B8
	mov r1, r5
	bl FUN_ov46_0211f12c
_020BD1B8:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD1C0:
	ldr r0, _020BD4DC ; =0x00000B04
	bl _Znwm
	cmp r0, #0
	beq _020BD1D8
	mov r1, r5
	bl FUN_ov21_0211c674 ; may be ov21 ov43 ov86 ; ov21(Mica)
_020BD1D8:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD1E0:
	mov r0, #0x3c4
	bl _Znwm
	cmp r0, #0
	beq _020BD1F8
	mov r1, r5
	bl FUN_ov20_0211d634
_020BD1F8:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD200:
	ldr r0, _020BD4E0 ; =0x000013D4
	bl _Znwm
	cmp r0, #0
	beq _020BD218
	mov r1, r5
	bl FUN_ov47_0211e17c
_020BD218:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD220:
	ldr r0, _020BD4E4 ; =0x00000C14
	bl _Znwm
	cmp r0, #0
	beq _020BD238
	mov r1, r5
	bl FUN_ov49_0211b7d8 ; may be ov65 ov67 ; ov49(Mica)
_020BD238:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD240:
	ldr r0, _020BD4E8 ; =0x000056E4
	bl _Znwm
	cmp r0, #0
	beq _020BD258
	mov r1, r5
	bl FUN_ov48_0211ace4 ; may be ov81 ; ov48(Mica)
_020BD258:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD260:
	mov r0, #0x1cc
	bl _Znwm
	cmp r0, #0
	beq _020BD278
	mov r1, r5
	bl FUN_ov19_02119f00 ; may be ov18 to ov91 ; ov19(Mica)
_020BD278:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD280:
	mov r0, #0x394
	bl _Znwm
	cmp r0, #0
	beq _020BD298
	mov r1, r5
	bl FUN_ov39_02119f00 ; may be ov18 to ov91 ; ov39Mica)
_020BD298:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD2A0:
	mov r0, #0x1e4
	bl _Znwm
	cmp r0, #0
	beq _020BD2B8
	mov r1, r5
	bl FUN_ov67_0211d248 ; may be ov45 ; ov67(Mica)
_020BD2B8:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD2C0:
	mov r0, #0x58
	bl _Znwm
	cmp r0, #0
	beq _020BD2D8
	mov r1, r5
	bl FUN_ov71_0211aa5c ; may be ov 83 ; ov71(Mica)
_020BD2D8:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD2E0:
	mov r0, #0xa4
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4EC ; =0x0211BA00
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD2FC:
	ldr r0, _020BD4F0 ; =0x000004C8
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4F4 ; =0x0211CEC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD318:
	mov r0, #0x260
	bl _Znwm
	cmp r0, #0
	beq _020BD330
	mov r1, r5
	bl FUN_ov68_0211e144
_020BD330:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD338:
	mov r0, #0x7d0
	bl _Znwm
	cmp r0, #0
	beq _020BD350
	mov r1, r5
	bl FUN_ov69_0211bbdc ; may be ov39 ; ov69(Mica)
_020BD350:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD358:
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4F8 ; =0x0211A480
	strne r1, [r0]
	strne r5, [r0, #0x1c]
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD378:
	mov r0, #0xa00
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD4FC ; =0x0211EA50
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD394:
	mov r0, #0x1c0
	bl _Znwm
	movs r6, r0
	beq _020BD3B8
	ldr r1, _020BD500 ; =0x0211D784
	add r0, r6, #0x194
	str r1, [r6]
	bl FUN_ov55_0211d128 ; may be ov82 ; ov55(Mica)
	str r5, [r6, #4]
_020BD3B8:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD3C0:
	mov r0, #0x210
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD504 ; =0x0211F2D0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD3DC:
	ldr r0, _020BD508 ; =0x000096D0
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD50C ; =0x02122640
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD3F8:
	ldr r0, _020BD510 ; =0x000036D0
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD514 ; =0x0211FBD0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD414:
	ldr r0, _020BD518 ; =0x000034C8
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD51C ; =0x0211FFC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD430:
	ldr r0, _020BD520 ; =0x000004E4
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD524 ; =0x0211BEE0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD44C:
	mov r0, #0x26c
	bl _Znwm
	cmp r0, #0
	beq _020BD464
	mov r1, r5
	bl FUN_ov29_0211a158 ; may be ov57 ov 70 ; ov29(Mica)
_020BD464:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD46C:
	ldr r0, _020BD528 ; =0x00000B7C
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD52C ; =0x02122B44
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD488:
	mov r0, #0x10
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD530 ; =0x02122680
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BD4A4: .word 0x00001618
_020BD4A8: .word ov56_02121330
_020BD4AC: .word 0x000010AC
_020BD4B0: .word 0x00001218
_020BD4B4: .word ov59_0211EF40
_020BD4B8: .word 0x000020FC
_020BD4BC: .word ov58_0211B6C0
_020BD4C0: .word 0x000033E8
_020BD4C4: .word ov60_02120110
_020BD4C8: .word 0x0000091C
_020BD4CC: .word ov62_02120EE8
_020BD4D0: .word 0x00003524
_020BD4D4: .word ov70_0211F288
_020BD4D8: .word 0x00000F0C
_020BD4DC: .word 0x00000B04
_020BD4E0: .word 0x000013D4
_020BD4E4: .word 0x00000C14
_020BD4E8: .word 0x000056E4
_020BD4EC: .word ov64_0211BA00
_020BD4F0: .word 0x000004C8
_020BD4F4: .word ov65_0211CEC0
_020BD4F8: .word ov66_0211A480
_020BD4FC: .word ov53_0211EA50
_020BD500: .word ov55_0211D784
_020BD504: .word ov61_0211F2D0
_020BD508: .word 0x000096D0
_020BD50C: .word ov44_02122640
_020BD510: .word 0x000036D0
_020BD514: .word ov43_0211FBD0
_020BD518: .word 0x000034C8
_020BD51C: .word ov42_0211FFC0
_020BD520: .word 0x000004E4
_020BD524: .word ov31_0211BEE0
_020BD528: .word 0x00000B7C
_020BD52C: .word ov22_02122B44
_020BD530: .word ov80_02122680
	arm_func_end FUN_ov0_020bce94

	arm_func_start FUN_ov0_020bd534
FUN_ov0_020bd534: ; 0x020BD534
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	sub r0, r0, #0x5a
	cmp r0, #0x34
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020BD570: ; jump table
	b _020BD6B4 ; case 0
	b _020BD6B4 ; case 1
	b _020BD6B4 ; case 2
	b _020BD6B4 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _020BD6B4 ; case 7
	b _020BD6B4 ; case 8
	b _020BD660 ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, pc} ; case 11
	b _020BD67C ; case 12
	b _020BD644 ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, pc} ; case 15
	b _020BD7C0 ; case 16
	ldmfd sp!, {r3, r4, r5, pc} ; case 17
	b _020BD6B4 ; case 18
	b _020BD7A0 ; case 19
	b _020BD6B4 ; case 20
	b _020BD780 ; case 21
	b _020BD6B4 ; case 22
	b _020BD6B4 ; case 23
	b _020BD6B4 ; case 24
	b _020BD6B4 ; case 25
	b _020BD7DC ; case 26
	ldmfd sp!, {r3, r4, r5, pc} ; case 27
	ldmfd sp!, {r3, r4, r5, pc} ; case 28
	ldmfd sp!, {r3, r4, r5, pc} ; case 29
	b _020BD6B4 ; case 30
	b _020BD7F8 ; case 31
	b _020BD7F8 ; case 32
	b _020BD6D0 ; case 33
	ldmfd sp!, {r3, r4, r5, pc} ; case 34
	b _020BD6EC ; case 35
	ldmfd sp!, {r3, r4, r5, pc} ; case 36
	ldmfd sp!, {r3, r4, r5, pc} ; case 37
	ldmfd sp!, {r3, r4, r5, pc} ; case 38
	ldmfd sp!, {r3, r4, r5, pc} ; case 39
	ldmfd sp!, {r3, r4, r5, pc} ; case 40
	ldmfd sp!, {r3, r4, r5, pc} ; case 41
	ldmfd sp!, {r3, r4, r5, pc} ; case 42
	ldmfd sp!, {r3, r4, r5, pc} ; case 43
	b _020BD708 ; case 44
	b _020BD740 ; case 45
	ldmfd sp!, {r3, r4, r5, pc} ; case 46
	b _020BD724 ; case 47
	b _020BD760 ; case 48
	b _020BD698 ; case 49
	b _020BD698 ; case 50
	ldmfd sp!, {r3, r4, r5, pc} ; case 51
	b _020BD760 ; case 52
_020BD644:
	mov r0, #0x190
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD814 ; =0x021273CC
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD660:
	mov r0, #0x128
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD818 ; =0x021268D0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD67C:
	mov r0, #0x13c
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD81C ; =0x02126FCC
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD698:
	mov r0, #0xe4
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD820 ; =0x02125E40
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD6B4:
	mov r0, #0x3d4
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD824 ; =0x0212A6B8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD6D0:
	mov r0, #0x3d4
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD828 ; =0x02128F7C
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD6EC:
	mov r0, #0x17c
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD82C ; =0x0212589C
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD708:
	mov r0, #0x228
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD830 ; =0x02127960
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD724:
	mov r0, #0x3ec
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD834 ; =0x021280B0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD740:
	mov r0, #0x250
	bl _Znwm
	cmp r0, #0
	beq _020BD758
	mov r1, r5
	bl FUN_ov97_02124d00 ; may be ov92 to ov125 ; ov97(Mica)
_020BD758:
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD760:
	mov r0, #0xd8
	bl _Znwm
	cmp r0, #0
	beq _020BD778
	mov r1, r5
	bl FUN_ov104_02124d00 ; may be ov92 to ov125 ; ov104(Mica)
_020BD778:
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD780:
	mov r0, #0x2c
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD838 ; =0x0211A480
	strne r1, [r0]
	strne r5, [r0, #0x1c]
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7A0:
	mov r0, #0x1a8
	bl _Znwm
	cmp r0, #0
	beq _020BD7B8
	mov r1, r5
	bl FUN_ov111_02124d00 ; may be ov92 to ov125 ; ov111(Mica)
_020BD7B8:
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7C0:
	mov r0, #0xd0
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD83C ; =0x02125340
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7DC:
	mov r0, #0xd0
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD840 ; =0x02125380
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7F8:
	mov r0, #0x2cc
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020BD844 ; =0x02126430
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD814: .word ov108_021273CC
_020BD818: .word ov92_021268D0
_020BD81C: .word ov110_02126FCC
_020BD820: .word ov96_02125E40
_020BD824: .word ov109_0212A6B8
_020BD828: .word ov94_02128F7C
_020BD82C: .word ov112_0212589C
_020BD830: .word ov105_02127960
_020BD834: .word ov95_021280B0
_020BD838: .word ov66_0211A480
_020BD83C: .word ov93_02125340
_020BD840: .word ov106_02125380
_020BD844: .word ov98_02126430
	arm_func_end FUN_ov0_020bd534

	arm_func_start FUN_ov0_020bd848
FUN_ov0_020bd848: ; 0x020BD848
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r2
	ldr r2, [r6]
	mov r8, r0
	mov r7, r1
	mov r5, r3
	cmp r2, #0
	mov r4, #0
	beq _020BD8B0
_020BD86C:
	cmp r5, r2
	bne _020BD8A4
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _020BD89C
	cmp r7, #0
	mov r0, r8
	mov r1, r6
	bne _020BD898
	bl FUN_ov0_020bce94
	b _020BD89C
_020BD898:
	bl FUN_ov0_020bd534
_020BD89C:
	ldr r4, [r6, #4]
	b _020BD8B0
_020BD8A4:
	ldr r2, [r6, #0x10]!
	cmp r2, #0
	bne _020BD86C
_020BD8B0:
	cmp r7, #0
	mov r0, r8
	mov r2, r5
	bne _020BD8C8
	mov r1, #0
	b _020BD8CC
_020BD8C8:
	mov r1, #1
_020BD8CC:
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	cmp r4, #0
	beq _020BD8E8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BD8E8:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov0_020bd848

	arm_func_start FUN_ov0_020bd8f0
FUN_ov0_020bd8f0: ; 0x020BD8F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r1
	mov r0, r4, lsl #4
	mov r1, #3
	bl _ZN10FileSystem13AllocateClearEii
	mov r3, #0
	mov r2, r0
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_020BD918:
	ldr r1, [r5]
	add r3, r3, #1
	mov r1, r1, lsl #8
	mov r1, r1, asr #8
	str r1, [r2]
	ldr r1, [r5]
	mov r1, r1, asr #0x18
	strb r1, [r2, #8]
	ldr r1, [r5]
	movs r1, r1, asr #0x18
	ldr r1, [r5, #4]
	add r5, r5, #8
	strne r1, [r2, #0xc]
	streq r1, [r2, #4]
	cmp r3, r4
	add r2, r2, #0x10
	blt _020BD918
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020bd8f0

	arm_func_start FUN_ov0_020bd960
FUN_ov0_020bd960: ; 0x020BD960
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x268
	mov r4, r0
	ldr r0, [r4, #0xf68]
	cmp r0, #0
	bne _020BD9C8
	ldr lr, _020BDB5C ; =0x020D4D28
	add r12, sp, #0xf8
	mov r5, #0x17
_020BD984:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020BD984
	add lr, r4, #0x90
	add r12, r4, #0x104
	add r5, r4, #0x280
	add r3, r4, #0x28c
	add r1, sp, #0xf8
	mov r0, r4
	mov r2, #0x2e
	str lr, [sp, #0xfc]
	str r12, [sp, #0x104]
	str r5, [sp, #0x10c]
	str r3, [sp, #0x114]
	bl FUN_ov0_020bd8f0
	str r0, [r4, #0xf68]
_020BD9C8:
	ldr r0, [r4, #0xf6c]
	cmp r0, #0
	bne _020BDA1C
	ldr r5, _020BDB60 ; =0x020D4C30
	add lr, sp, #0
	mov r12, #0xf
_020BD9E0:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020BD9E0
	ldmia r5, {r0, r1}
	stmia lr, {r0, r1}
	add r12, r4, #0x29c
	add r3, r4, #0xd40
	add r1, sp, #0
	mov r0, r4
	mov r2, #0x1f
	str r12, [sp, #4]
	str r3, [sp, #0xc]
	bl FUN_ov0_020bd8f0
	str r0, [r4, #0xf6c]
_020BDA1C:
	mov r0, r4
	bl _ZN14CScreenManager16getNextSceneMainEv
	mov r5, r0
	mov r0, r4
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r5, r0
	bne _020BDA44
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _020BDAB4
_020BDA44:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BDA64
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BDAB4
_020BDA64:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BDA9C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r1, [r4, #0x80]
	ldr r2, [r4, #0xf68]
	mov r0, r4
	bl _ZN14CScreenManager12deleteScreenEP12CommonScreenP17ScreenLoadContext
_020BDA9C:
	ldr r2, [r4, #0xf68]
	mov r0, r4
	mov r3, r5
	mov r1, #0
	bl FUN_ov0_020bd848
	str r0, [r4, #0x80]
_020BDAB4:
	mov r0, r4
	bl _ZN14CScreenManager15getNextSceneSubEv
	mov r5, r0
	mov r0, r4
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r5, r0
	bne _020BDAE0
	ldrb r0, [r4, #5]
	cmp r0, #0
	addeq sp, sp, #0x268
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BDAE0:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BDB04
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x268
	ldmnefd sp!, {r3, r4, r5, pc}
_020BDB04:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BDB3C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r1, [r4, #0x84]
	ldr r2, [r4, #0xf6c]
	mov r0, r4
	bl _ZN14CScreenManager12deleteScreenEP12CommonScreenP17ScreenLoadContext
_020BDB3C:
	ldr r2, [r4, #0xf6c]
	mov r0, r4
	mov r3, r5
	mov r1, #1
	bl FUN_ov0_020bd848
	str r0, [r4, #0x84]
	add sp, sp, #0x268
	ldmfd sp!, {r3, r4, r5, pc}
_020BDB5C: .word ov0_020D4D28
_020BDB60: .word ov0_020D4C30
	arm_func_end FUN_ov0_020bd960

	arm_func_start FUN_ov0_020bdb64
FUN_ov0_020bdb64: ; 0x020BDB64
	stmfd sp!, {r4, lr}
	ldr r2, _020BDBA4 ; =0x04000304
	movs r4, r1
	ldrh r0, [r2]
	cmpne r4, #2
	bic r0, r0, #0x8000
	strh r0, [r2]
	bne _020BDB8C
	mov r0, #4
	bl FUN_ov16_020f3f60
_020BDB8C:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #4
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
_020BDBA4: .word 0x04000304
	arm_func_end FUN_ov0_020bdb64

	arm_func_start FUN_ov0_020bdba8
FUN_ov0_020bdba8: ; 0x020BDBA8
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BDBBC
	bl FUN_ov16_020f47fc
_020BDBBC:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020BDBCC
	bl FUN_ov16_020f51a8
_020BDBCC:
	cmp r4, #2
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020bdba8

	arm_func_start FUN_ov0_020bdbe8
FUN_ov0_020bdbe8: ; 0x020BDBE8
	ldr r12, _020BDBF4 ; =FUN_ov0_020c6ca0
	add r0, r0, #0x104
	bx r12
_020BDBF4: .word FUN_ov0_020c6ca0
	arm_func_end FUN_ov0_020bdbe8

	arm_func_start FUN_ov0_020bdbf8
FUN_ov0_020bdbf8: ; 0x020BDBF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x148
	add r0, r0, #0xc00
	bl FUN_0206c110
	add r0, r4, #0x2a0
	bl FUN_ov0_020d182c
	mov r0, r4
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020bdbf8

	arm_func_start FUN_ov0_020bdc2c
FUN_ov0_020bdc2c: ; 0x020BDC2C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x148
	add r0, r0, #0xc00
	bl FUN_0206c110
	add r0, r4, #0x2a0
	bl FUN_ov0_020d182c
	mov r0, r4
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020bdc2c

	arm_func_start FUN_ov0_020bdc58
FUN_ov0_020bdc58: ; 0x020BDC58
	stmfd sp!, {r3, lr}
	tst r1, #8
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020BDC70 ; =gMoviePlayer
	bl _ZN11MoviePlayer12FUN_0202e958Ev
	ldmfd sp!, {r3, pc}
_020BDC70: .word gMoviePlayer
	arm_func_end FUN_ov0_020bdc58

	arm_func_start FUN_ov0_020bdc74
FUN_ov0_020bdc74: ; 0x020BDC74
	bx lr
	arm_func_end FUN_ov0_020bdc74

	arm_func_start FUN_ov0_020bdc78
FUN_ov0_020bdc78: ; 0x020BDC78
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f1d64
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020bdc78

	arm_func_start FUN_ov0_020bdc9c
FUN_ov0_020bdc9c: ; 0x020BDC9C
	ldr r0, _020BDCAC ; =0x020AF81C
	ldr r12, _020BDCB0 ; =FUN_0204451c
	mov r1, #1
	bx r12
_020BDCAC: .word unk_020AF81C
_020BDCB0: .word FUN_0204451c
	arm_func_end FUN_ov0_020bdc9c

	arm_func_start FUN_ov0_020bdcb4
FUN_ov0_020bdcb4: ; 0x020bdcb4
	ldr r12, _020BDCBC ; =FUN_ov16_020f2ab4
	bx r12
_020BDCBC: .word FUN_ov16_020f2ab4
	arm_func_end FUN_ov0_020bdcb4

	arm_func_start FUN_ov0_020bdcc0
FUN_ov0_020bdcc0: ; 0x020BDCC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl GX_ResetBankForBG
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	bl FUN_ov16_020f1e14
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020bdcc0

	arm_func_start FUN_ov0_020bdce8
FUN_ov0_020bdce8: ; 0x020BDCE8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020bdce8

	arm_func_start FUN_ov0_020bdcfc
FUN_ov0_020bdcfc: ; 0x020BDCFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r4, r0
	bl FUN_ov16_020f2e2c
	bl FUN_02059d9c
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r5, _020BDE98 ; =g3DDevice
	and r0, r0, #0x1f00
	mov r0, r0, lsr #8
	str r0, [r4, #8]
	ldr r0, [r1]
	mov r7, #1
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r1]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0205131c
	ldr r1, [r5]
	ldr r0, _020BDE9C ; =0x0209A720
	ldrh r1, [r1, #8]
	mov r6, #0
	mov r2, #0x1f
	strh r1, [r4, #0xc]
	ldr r1, [r5]
	mov r3, r6
	ldrb r1, [r1, #0xa]
	strb r1, [r4, #0xe]
	ldr r1, [r5]
	ldrb r1, [r1, #0xb]
	strb r1, [r4, #0xf]
	ldrh r1, [r0, #0xc6]
	ldr r0, [r5]
	bic r1, r1, #0x8000
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl _ZN9C3DDevice13setClearColorEthi
	ldr r0, _020BDEA0 ; =g3DSpriteCtrl
	ldr r0, [r0]
	bl FUN_ov16_0211661c
	ldr r0, _020BDEA4 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _020BDEA8 ; =gCameraController
	mov r1, #4
	ldr r8, [r0]
	str r6, [sp, #0x18]
	stmia sp, {r1, r6}
	mov r5, #0x1000
	str r6, [sp, #0x1c]
	str r6, [sp, #0x20]
	add r1, sp, #0x18
	mov r0, r8
	str r5, [sp, #8]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	mov r0, #0xf800
	mov r4, #2
	str r0, [sp, #0xc]
	mov r0, #0x7000
	stmia sp, {r4, r6}
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	add r1, sp, #0xc
	mov r0, r8
	str r5, [sp, #8]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	mov r0, r8
	mov r1, #0x3c000
	mov r2, r4
	mov r3, r6
	str r5, [sp]
	bl FUN_ov16_020f7b50
	ldr r0, _020BDEAC ; =g3DGameChar
	ldr r0, [r0]
	bl FUN_0205b2b8
	ldr r5, _020BDEB0 ; =g3DGameMapObject
	mov r1, r6
	ldr r0, [r5]
	mov r2, r7
	bl FUN_020521d0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r7
	bl FUN_020521d0
	ldr r0, [r5]
	mov r2, r7
	mov r1, #3
	bl FUN_020521d0
	ldr r0, [r5]
	mov r4, #5
	mov r1, r4
	mov r2, r7
	bl FUN_020521d0
	mov r1, r4
	mov r2, r7
	ldr r0, _020BDEB4 ; =g3DGameMap
	ldr r0, [r0]
	bl FUN_020521d0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BDE98: .word g3DDevice
_020BDE9C: .word unk_0209A720
_020BDEA0: .word g3DSpriteCtrl
_020BDEA4: .word g3DPlaneCtrl
_020BDEA8: .word gCameraController
_020BDEAC: .word g3DGameChar
_020BDEB0: .word g3DGameMapObject
_020BDEB4: .word g3DGameMap
	arm_func_end FUN_ov0_020bdcfc

	arm_func_start FUN_ov0_020bdeb8
FUN_ov0_020bdeb8: ; 0x020BDEB8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020BDF98 ; =g3DGameChar
	ldr r0, [r0]
	bl FUN_0205b340
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020BDF9C ; =g3DGameMapObject
	mvn r1, #0
	ldr r0, [r0]
	bl FUN_0205228c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020BDFA0 ; =g3DGameMap
	mov r1, #5
	ldr r0, [r0]
	bl FUN_0205228c
	cmp r0, #1
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r4, _020BDFA4 ; =0x020AF81C
	mov r1, #1
	mov r0, r4
	bl FUN_0204451c
	mov r0, r4
	bl FUN_02044560
	cmp r0, #0
	bne _020BDF38
	ldr r0, _020BDFA8 ; =g3DDevice
	mov r1, #0
	ldr r0, [r0]
	mov r3, r1
	mov r2, #0x1f
	bl _ZN9C3DDevice13setClearColorEthi
_020BDF38:
	ldr r0, _020BDFA0 ; =g3DGameMap
	ldr r5, _020BDFAC ; =gDeltaTime
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_0205d348
	ldr r0, _020BDFB0 ; =0x02099F10
	ldr r1, [r5]
	ldr r0, [r0]
	bl FUN_0205bf14
	ldr r0, _020BDF98 ; =g3DGameChar
	ldr r1, [r5]
	ldr r0, [r0]
	bl FUN_0205a60c
	ldr r0, _020BDF9C ; =g3DGameMapObject
	ldr r1, [r5]
	ldr r0, [r0]
	bl FUN_0205ef30
	ldr r4, _020BDFB4 ; =g3DMagicCamera
	ldr r1, [r5]
	ldr r0, [r4]
	bl FUN_02052f9c
	ldr r0, [r4]
	bl FUN_02052de4
	ldmfd sp!, {r3, r4, r5, pc}
_020BDF98: .word g3DGameChar
_020BDF9C: .word g3DGameMapObject
_020BDFA0: .word g3DGameMap
_020BDFA4: .word unk_020AF81C
_020BDFA8: .word g3DDevice
_020BDFAC: .word gDeltaTime
_020BDFB0: .word g3DGameEffect
_020BDFB4: .word g3DMagicCamera
	arm_func_end FUN_ov0_020bdeb8

	arm_func_start FUN_ov0_020bdfb8
FUN_ov0_020bdfb8: ; 0x020BDFB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _020BE094 ; =g3DSpriteCtrl
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_02116650
	ldr r0, _020BE098 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r5, _020BE09C ; =g3DDevice
	mov r6, #0
	ldr r0, [r5]
	mov r1, r6
	bl FUN_0205131c
	ldr r0, [r5]
	ldrh r1, [r4, #0xc]
	ldrb r2, [r4, #0xe]
	ldrb r3, [r4, #0xf]
	bl _ZN9C3DDevice13setClearColorEthi
	ldr r0, _020BE0A0 ; =g3DGameChar
	ldr r0, [r0]
	bl FUN_0205b398
	mov r1, r6
	ldr r4, _020BE0A4 ; =g3DGameMapObject
	ldr r0, [r4]
	bl FUN_020522ec
	ldr r0, [r4]
	mov r5, #2
	mov r1, r5
	bl FUN_020522ec
	ldr r0, [r4]
	mov r1, #3
	bl FUN_020522ec
	ldr r0, [r4]
	mov r4, #5
	mov r1, r4
	bl FUN_020522ec
	mov r1, r4
	ldr r0, _020BE0A8 ; =g3DGameMap
	ldr r0, [r0]
	bl FUN_020522ec
	mov r1, r5
	ldr r0, _020BE0AC ; =gAudioPlayer
	bl _ZN11AudioPlayer12FUN_0202cf00Ei
	ldr r0, _020BE0B0 ; =g3DMagicCamera
	ldr r0, [r0]
	bl FUN_02052928
	bl FUN_02059e58
	bl FUN_ov16_020f2dac
	ldmfd sp!, {r4, r5, r6, pc}
_020BE094: .word g3DSpriteCtrl
_020BE098: .word g3DPlaneCtrl
_020BE09C: .word g3DDevice
_020BE0A0: .word g3DGameChar
_020BE0A4: .word g3DGameMapObject
_020BE0A8: .word g3DGameMap
_020BE0AC: .word gAudioPlayer
_020BE0B0: .word g3DMagicCamera
	arm_func_end FUN_ov0_020bdfb8

	arm_func_start FUN_ov0_020be0b4
FUN_ov0_020be0b4: ; 0x020BE0B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020be0b4

	arm_func_start FUN_ov0_020be0c8
FUN_ov0_020be0c8: ; 0x020BE0C8
	bx lr
	arm_func_end FUN_ov0_020be0c8

	arm_func_start FUN_ov0_020be0cc
FUN_ov0_020be0cc: ; 0x020BE0CC
	bx lr
	arm_func_end FUN_ov0_020be0cc

	arm_func_start FUN_ov0_020be0d0
FUN_ov0_020be0d0: ; 0x020BE0D0
	bx lr
	arm_func_end FUN_ov0_020be0d0

	arm_func_start FUN_ov0_020be0d4
FUN_ov0_020be0d4: ; 0x020BE0D4
	bx lr
	arm_func_end FUN_ov0_020be0d4

	arm_func_start FUN_ov0_020be0d8
FUN_ov0_020be0d8: ; 0x020BE0D8
	bx lr
	arm_func_end FUN_ov0_020be0d8

	arm_func_start FUN_ov0_020be0dc
FUN_ov0_020be0dc: ; 0x020BE0DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x44]
	blx r1
	ldr r5, _020BE1C0 ; =g3DDevice
	mov r7, #0
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0205131c
	ldr r0, [r5]
	mov r1, r7
	mov r3, r7
	mov r2, #0x1f
	bl _ZN9C3DDevice13setClearColorEthi
	ldr r6, _020BE1C4 ; =gAudioPlayer
	mov r1, #6
	mov r0, r6
	mov r2, r7
	mov r3, r7
	bl _ZN11AudioPlayer12FUN_0202b838Eiii
	mov r5, #0x14
	b _020BE154
_020BE138:
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7b4Ev
	cmp r0, #0
	bne _020BE15C
	mov r0, r5
	bl OS_Sleep
	add r7, r7, #1
_020BE154:
	cmp r7, #0x80
	blt _020BE138
_020BE15C:
	mov r7, #0
	ldr r6, _020BE1C4 ; =gAudioPlayer
	mov r5, #0x14
	b _020BE188
_020BE16C:
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	bne _020BE190
	mov r0, r5
	bl OS_Sleep
	add r7, r7, #1
_020BE188:
	cmp r7, #0x80
	blt _020BE16C
_020BE190:
	ldr r0, _020BE1C8 ; =0x020A9C40
	bl FUN_020455ac
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r4, #4]
	mov r2, #0
	ldr r0, _020BE1CC ; =0x020AF81C
	mov r3, r2
	mov r1, #2
	str r4, [sp]
	bl FUN_02044798
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE1C0: .word g3DDevice
_020BE1C4: .word gAudioPlayer
_020BE1C8: .word unk_020A9C40
_020BE1CC: .word unk_020AF81C
	arm_func_end FUN_ov0_020be0dc

	arm_func_start FUN_ov0_020be1d0
FUN_ov0_020be1d0: ; 0x020BE1D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _020BE300 ; =0x02099E91
	mov r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _020BE218
	mov r1, #0
	strb r1, [r2]
	ldr r5, [r4, #4]
	mov r4, #0x79
	mov r0, r5
	mov r2, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE218:
	ldr r5, _020BE304 ; =0x020AF81C
	mov r8, #1
	mov r0, r5
	mov r1, r8
	bl FUN_0204451c
	mov r0, r5
	bl FUN_02044600
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _020BE308 ; =g3DGameMapObject
	mov r1, r8
	ldr r0, [r5]
	bl FUN_0205f1cc
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #4
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0205f1cc
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r5, _020BE30C ; =g3DGameMap
	mov r1, #2
	ldr r0, [r5]
	bl FUN_0205d5e8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	ldr r0, [r5]
	mov r1, r6
	bl FUN_0205d5e8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mov r1, r7
	bl FUN_0205d5e8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mov r1, #3
	bl FUN_0205228c
	cmp r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mov r1, r8
	bl FUN_0205228c
	cmp r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0x83
	ldr r0, [r4, #4]
	mov r1, r6
	mov r2, r5
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, [r4, #4]
	mov r1, r8
	mov r2, r5
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE300: .word unk_02099E91
_020BE304: .word unk_020AF81C
_020BE308: .word g3DGameMapObject
_020BE30C: .word g3DGameMap
	arm_func_end FUN_ov0_020be1d0

	arm_func_start FUN_ov0_020be310
FUN_ov0_020be310: ; 0x020BE310
	bx lr
	arm_func_end FUN_ov0_020be310

	arm_func_start FUN_ov0_020be314
FUN_ov0_020be314: ; 0x020BE314
	bx lr
	arm_func_end FUN_ov0_020be314

	arm_func_start FUN_ov0_020be318
FUN_ov0_020be318: ; 0x020BE318
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020be318

	arm_func_start FUN_ov0_020be32c
FUN_ov0_020be32c: ; 0x020BE32C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020BE384 ; =gLogicThink
	mov r6, #0
	mov r7, r0
	mov r0, r5
	mov r1, r6
	bl FUN_0204c3e0
	str r0, [r7, #0x11c]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, r6
_020BE358:
	mov r0, r5
	mov r1, r4
	add r2, r6, #1
	bl FUN_0204de70
	add r1, r7, r6, lsl #1
	strh r0, [r1, #0x2c]
	ldr r0, [r7, #0x11c]
	add r6, r6, #1
	cmp r6, r0
	blt _020BE358
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE384: .word gLogicThink
	arm_func_end FUN_ov0_020be32c

	arm_func_start FUN_ov0_020be388
FUN_ov0_020be388: ; 0x020BE388
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r1, #0
	ldr r0, _020BE3C0 ; =gLogicThink
	str r1, [sp]
	mov r12, #0x80
	add r2, r4, #0x34
	mov r3, #0x10
	str r12, [sp, #4]
	bl FUN_0204b540
	str r0, [r4, #0x120]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020BE3C0: .word gLogicThink
	arm_func_end FUN_ov0_020be388

	arm_func_start FUN_ov0_020be3c4
FUN_ov0_020be3c4: ; 0x020BE3C4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r1, #0
	ldr r0, _020BE3F4 ; =gLogicThink
	add r2, r4, #0x54
	mov r3, #0x20
	str r1, [sp]
	bl FUN_0204b438
	str r0, [r4, #0x124]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020BE3F4: .word gLogicThink
	arm_func_end FUN_ov0_020be3c4

	arm_func_start FUN_ov0_020be3f8
FUN_ov0_020be3f8: ; 0x020BE3F8
	ldr r0, _020BE40C ; =0x020D612C
	ldr r12, _020BE410 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x70
	bx r12
_020BE40C: .word ov0_020D612C
_020BE410: .word MI_CpuFill8
	arm_func_end FUN_ov0_020be3f8

	arm_func_start FUN_ov0_020be414
FUN_ov0_020be414: ; 0x020BE414
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _020BE4B0 ; =0x020D619C
	mov r7, #0
	ldr r2, [r4]
	cmp r2, #0
	ble _020BE480
	ldr r6, _020BE4B4 ; =0x020D610C
	ldr r5, _020BE4B8 ; =0x020D612C
	mov r10, #0xc
_020BE438:
	mul r2, r7, r10
	add r0, r4, r7, lsl #2
	ldr r8, [r6, r7, lsl #2]
	ldr r1, [r0, #4]
	mov r0, r8
	str r1, [r5, r2]
	add r9, r5, r2
	bl FUN_ov0_020d0694
	ldr r1, [r0, #0xb0]
	mov r0, r8
	str r1, [r9, #4]
	bl FUN_ov0_020d0694
	ldr r0, [r0, #0xb4]
	ldr r2, [r4]
	add r7, r7, #1
	str r0, [r9, #8]
	cmp r7, r2
	blt _020BE438
_020BE480:
	ldr r1, _020BE4B8 ; =0x020D612C
	mov r0, #1
	str r2, [r1, #0x60]
	strb r0, [r1, #0x6c]
	mov r2, #0
	ldr r0, _020BE4B0 ; =0x020D619C
	str r2, [r1, #0x64]
	ldrh r2, [r0, #0x28]
	strh r2, [r1, #0x68]
	ldrh r0, [r0, #0x2a]
	strh r0, [r1, #0x6a]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BE4B0: .word ov0_020D619C
_020BE4B4: .word ov0_020D610C
_020BE4B8: .word ov0_020D612C
	arm_func_end FUN_ov0_020be414

	arm_func_start FUN_ov0_020be4bc
FUN_ov0_020be4bc: ; 0x020BE4BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020BE574 ; =0x020D612C
	ldr r4, [r1, #0x64]
	ldr r0, [r1, #0x60]
	cmp r4, r0
	movge r0, #1
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r1, #0x6c]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	ldreqh r2, [r1, #0x68]
	ldreq r0, _020BE578 ; =0x020D619C
	ldr r5, _020BE574 ; =0x020D612C
	streqh r2, [r0, #0x28]
	ldreqh r1, [r1, #0x6a]
	streqh r1, [r0, #0x2a]
	mov r0, #0xc
	mul r6, r4, r0
	ldr r0, [r5, r6]
	bl FUN_ov0_020be8c0
	ldr r1, _020BE57C ; =0x020D610C
	mov r7, #1
	ldr r8, [r1, r4, lsl #2]
	ldr r0, _020BE580 ; =0x020D6130
	mov r4, #0
	ldr r1, [r0, r6]
	mov r0, r8
	mov r2, r4
	mov r3, r7
	bl FUN_ov0_020d0af4
	ldr r1, _020BE584 ; =0x020D6134
	mov r0, r8
	ldr r1, [r1, r6]
	mov r2, r4
	mov r3, r7
	bl FUN_ov0_020d0bcc
	ldr r0, [r5, #0x64]
	add r1, r0, #1
	str r1, [r5, #0x64]
	ldr r0, [r5, #0x60]
	cmp r1, r0
	movlt r7, r4
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE574: .word ov0_020D612C
_020BE578: .word ov0_020D619C
_020BE57C: .word ov0_020D610C
_020BE580: .word ov0_020D6130
_020BE584: .word ov0_020D6134
	arm_func_end FUN_ov0_020be4bc

	arm_func_start FUN_ov0_020be588
FUN_ov0_020be588: ; 0x020BE588
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	mov r7, #0
	ldr r5, _020BE734 ; =0x020D57EC
	mov r6, #0x154
	ldr r4, _020BE738 ; =0x020D610C
	b _020BE5E0
_020BE5A8:
	mov r0, r6
	bl _Znwm
	movs r8, r0
	beq _020BE5C0
	str r5, [r8]
	bl FUN_ov0_020d05cc
_020BE5C0:
	mov r0, r8
	str r8, [r4, r7, lsl #2]
	bl FUN_ov0_020d05cc
	ldr r0, [r4, r7, lsl #2]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	add r7, r7, #1
_020BE5E0:
	cmp r7, #8
	blt _020BE5A8
	mov r0, #0x34
	bl _Znwm
	movs r5, r0
	beq _020BE604
	ldr r1, _020BE73C ; =0x020D5808
	str r1, [r5]
	bl FUN_ov0_020cddf4
_020BE604:
	ldr r4, _020BE740 ; =0x020D6100
	mov r0, r5
	str r5, [r4, #4]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	mov r8, #2
	str r8, [sp]
	mov r7, #0x10
	ldr r0, [r4, #4]
	mov r1, r7
	mov r2, #3
	mov r3, #5
	bl FUN_ov0_020cde64
	ldr r0, [r4, #4]
	mov r1, #0x78
	mov r2, #0xa0
	mov r3, #0xd2
	bl FUN_ov0_020cde7c
	ldr r6, _020BE744 ; =0x020D619C
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r4, #0x140
	mov r2, r4
	bl MI_CpuFill8
	str r9, [r6, #0x12c]
	ldr r9, _020BE748 ; =g3DPlaneCtrl
	mov r10, #1
	ldr r0, [r9]
	mov r1, r10
	mov r2, r10
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x24]
	ldr r0, [r9]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_021131bc
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	mov r2, #8
	mov r3, r2
	bl FUN_ov16_02113100
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	mov r2, #0xc80
	mov r3, #0x960
	bl FUN_ov16_02113020
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	sub r2, r4, #0xa
	bl FUN_ov16_02112b98
	mov r2, r7
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	bl FUN_ov16_02112dac
	mov r2, r5
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	bl FUN_ov16_02112e5c
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	mov r2, #0x3e
	bl FUN_ov16_02113734
	add r2, r4, #0x7f00
	mov r3, r10
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	bl FUN_ov16_0211329c
	ldr r0, [r9]
	ldr r1, [r6, #0x24]
	mov r2, r8
	bl FUN_ov16_02113390
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020BE734: .word ov0_020D57EC
_020BE738: .word ov0_020D610C
_020BE73C: .word ov0_020D5808
_020BE740: .word ov0_020D6100
_020BE744: .word ov0_020D619C
_020BE748: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020be588

	arm_func_start FUN_ov0_020be74c
FUN_ov0_020be74c: ; 0x020BE74C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _020BE7EC ; =0x020D610C
	mov r4, r6
	b _020BE788
_020BE760:
	ldr r0, [r5, r6, lsl #2]
	bl FUN_ov0_020d0674
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _020BE780
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BE780:
	str r4, [r5, r6, lsl #2]
	add r6, r6, #1
_020BE788:
	cmp r6, #8
	blt _020BE760
	ldr r0, _020BE7F0 ; =0x020D619C
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020BE7AC
	ldr r0, _020BE7F4 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021128c4
_020BE7AC:
	ldr r4, _020BE7F8 ; =0x020D6100
	ldr r0, [r4, #4]
	bl FUN_ov0_020cde3c
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020BE7D0
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BE7D0:
	ldr r3, _020BE7F8 ; =0x020D6100
	mov r1, #0
	ldr r0, _020BE7F0 ; =0x020D619C
	mov r2, #0x140
	str r1, [r3, #4]
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020BE7EC: .word ov0_020D610C
_020BE7F0: .word ov0_020D619C
_020BE7F4: .word g3DPlaneCtrl
_020BE7F8: .word ov0_020D6100
	arm_func_end FUN_ov0_020be74c

	arm_func_start FUN_ov0_020be7fc
FUN_ov0_020be7fc: ; 0x020BE7FC
	stmfd sp!, {r4, lr}
	ldr r1, _020BE820 ; =0x020D57EC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d0674
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020BE820: .word ov0_020D57EC
	arm_func_end FUN_ov0_020be7fc

	arm_func_start FUN_ov0_020be824
FUN_ov0_020be824: ; 0x020BE824
	stmfd sp!, {r4, lr}
	ldr r1, _020BE848 ; =0x020D5808
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020cde3c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020BE848: .word ov0_020D5808
	arm_func_end FUN_ov0_020be824

	arm_func_start FUN_ov0_020be84c
FUN_ov0_020be84c: ; 0x020BE84C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020BE8B8 ; =0x020D610C
	mov r5, #0
_020BE858:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _020BE87C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BE87C:
	add r5, r5, #1
	cmp r5, #8
	blt _020BE858
	ldr r0, _020BE8BC ; =0x020D6100
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020BE8B0
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BE8B0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020BE8B8: .word ov0_020D610C
_020BE8BC: .word ov0_020D6100
	arm_func_end FUN_ov0_020be84c

	arm_func_start FUN_ov0_020be8c0
FUN_ov0_020be8c0: ; 0x020BE8C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb8
	ldr r1, _020BEE60 ; =0x020D619C
	ldr r2, _020BEE64 ; =0x020D610C
	ldr r1, [r1]
	mov r10, r0
	cmp r1, #0
	ldr r8, [r2, r1, lsl #2]
	mov r5, #0x64
	mov r4, #0x118
	mov r6, #1
	mov r11, #0
	bne _020BE984
	ldr r9, _020BEE68 ; =gLogicThink
	ldr r1, _020BEE6C ; =0x0209A454
	mov r2, #0x8d
	mov r0, r9
	str r2, [r1, #0x84]
	bl FUN_ov16_020edf7c
	add r7, sp, #0x38
	mov r2, r0
	ldr r1, _020BEE70 ; =0x020D58D8
	mov r0, r7
	bl sprintf
	mov r0, r9
	bl FUN_ov16_020edfc0
	add r9, sp, #0x58
	mov r2, r0
	ldr r1, _020BEE74 ; =0x020D58DC
	mov r0, r9
	bl sprintf
	mov r0, r7
	add r7, sp, #0x78
	mov r1, r7
	bl FUN_ov16_020f1f5c
	mov r0, r9
	add r9, sp, #0x98
	mov r1, r9
	bl FUN_ov16_020f1f5c
	mov r2, r7
	add r7, sp, #0x18
	ldr r1, _020BEE78 ; =0x020D58E0
	mov r3, r9
	mov r0, r7
	bl sprintf
	ldr r0, _020BEE7C ; =0x020D6100
	mov r1, r7
	ldr r0, [r0, #4]
	bl FUN_ov0_020ce000
_020BE984:
	mov r0, r8
	bl FUN_ov0_020d08c4
	mov r0, r8
	bl FUN_ov0_020d0694
	ldr r7, _020BEE60 ; =0x020D619C
	mov r9, r0
	mov r0, r7
	bl FUN_ov0_020be32c
	mov r0, r7
	bl FUN_ov0_020be388
	mov r0, r7
	bl FUN_ov0_020be3c4
	ldr r0, _020BEE80 ; =gSprButtonCtrl
	mov r7, #0x80
	ldr r0, [r0]
	mov r1, r7
	bl FUN_ov16_0210eb3c
	cmp r10, #1
	bne _020BEA84
	ldr r0, _020BEE84 ; =0x020A9C40
	mov r1, #4
	mov r4, #6
	bl FUN_02045ce0
	cmp r0, #0
	subeq r4, r4, #1
	str r6, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, r8
	mov r1, r4
	mov r2, r4
	mov r3, r11
	str r6, [sp, #0x10]
	mov r5, #0x50
	str r5, [sp, #0x14]
	bl FUN_ov0_020d06d0
	mov r2, #8
	strh r2, [r9, #0xb8]
	strh r2, [r9, #0xba]
	mov r2, #0x12c
	ldr r1, _020BEE88 ; =0x020D58EC
	mov r0, r8
	str r2, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0x10
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEE8C ; =0x020D58F8
	mov r0, r8
	mov r2, #6
	bl FUN_ov0_020d0ae4
	str r11, [sp]
	mov r2, #5
	stmib sp, {r2, r11}
	mov r2, #4
	str r2, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	mov r2, r11
	mov r3, r11
_020BEA7C:
	bl FUN_ov0_020bfbb4
	b _020BEE2C
_020BEA84:
	cmp r10, #2
	mov r11, #0x10
	bne _020BEAFC
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	mov r7, #4
	str r6, [sp, #0xc]
	mov r0, #0x5c
	str r0, [sp, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, #0
	str r5, [sp, #0x14]
	bl FUN_ov0_020d06d0
	mov r0, #0x18
	strh r0, [r9, #0xb8]
	strh r0, [r9, #0xba]
	ldr r1, _020BEE90 ; =0x020D5930
	mov r0, r8
	str r4, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0x13
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEE94 ; =0x020D5938
	mov r0, r8
	mov r2, r7
_020BEAF4:
	bl FUN_ov0_020d0ae4
	b _020BEE2C
_020BEAFC:
	cmp r10, #0x14
	bne _020BEB64
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	mov r5, #3
	str r6, [sp, #0x10]
	mov r6, #0x5a
	mov r0, r8
	mov r1, r5
	mov r2, r5
	mov r3, #0
	str r6, [sp, #0x14]
	bl FUN_ov0_020d06d0
	strh r11, [r9, #0xb8]
	mov r0, #0x28
	strh r0, [r9, #0xba]
	ldr r1, _020BEE98 ; =0x020D5960
	mov r0, r8
	str r4, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0x20
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEE9C ; =0x020D596C
	b _020BEBC8
_020BEB64:
	cmp r10, #0x10
	bne _020BEBD4
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	mov r5, #5
	str r6, [sp, #0x10]
	mov r6, #0x50
	mov r0, r8
	mov r1, r5
	mov r2, r5
	mov r3, #0
	str r6, [sp, #0x14]
	bl FUN_ov0_020d06d0
	strh r11, [r9, #0xb8]
	mov r0, #0x38
	strh r0, [r9, #0xba]
	ldr r1, _020BEEA0 ; =0x020D598C
	mov r0, r8
	str r4, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0x13
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEEA4 ; =0x020D5998
_020BEBC8:
	mov r0, r8
	mov r2, r5
	b _020BEAF4
_020BEBD4:
	cmp r10, #0x11
	bne _020BEC80
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	mov r7, #8
	mov r0, #0x68
	str r0, [sp, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, #0
	str r5, [sp, #0x14]
	bl FUN_ov0_020d06d0
	strh r11, [r9, #0xb8]
	mov r0, #0x18
	strh r0, [r9, #0xba]
	ldr r1, _020BEEA8 ; =0x020D59CC
	mov r0, r8
	str r4, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0x27
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEEAC ; =0x020D59D8
	mov r0, r8
	mov r2, r7
	bl FUN_ov0_020d0ae4
	mov r2, #7
	str r2, [sp]
	mov r2, #0x11
	stmib sp, {r2, r6}
	mov r2, #0xa
	str r2, [sp, #0xc]
	mov r2, #0xb
	str r2, [sp, #0x10]
	mov r2, #0xc
	str r2, [sp, #0x14]
	mov r0, r9
	mov r1, r7
	mov r2, #6
	mov r3, #0x12
	b _020BEA7C
_020BEC80:
	cmp r10, #0x13
	bne _020BED08
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	mov r7, #3
	mov r0, #0x5c
	str r0, [sp, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, #0
	str r5, [sp, #0x14]
	bl FUN_ov0_020d06d0
	strh r11, [r9, #0xb8]
	mov r0, #0x58
	strh r0, [r9, #0xba]
	ldr r1, _020BEEB0 ; =0x020D5A30
	mov r0, r8
	str r4, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0xa
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEEB4 ; =0x020D5A3C
	mov r0, r8
	mov r2, r7
	bl FUN_ov0_020d0ae4
	mov r0, r9
	str r7, [sp]
	mov r1, r7
	mov r2, #0x13
	mov r3, #2
	b _020BEA7C
_020BED08:
	cmp r10, #0x15
	bne _020BEDA8
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	mov r4, #4
	str r6, [sp, #0xc]
	mov r0, #0x50
	str r0, [sp, #0x10]
	mov r0, r8
	mov r1, r4
	mov r2, r4
	mov r3, #0
	str r5, [sp, #0x14]
	bl FUN_ov0_020d06d0
	mov r0, #0x18
	strh r0, [r9, #0xb8]
	mov r2, #0x38
	strh r2, [r9, #0xba]
	mov r2, #0x104
	ldr r1, _020BEEB8 ; =0x020D5A54
	mov r0, r8
	str r2, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r5, #0x14
	mov r0, r8
	mov r1, r5
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEEBC ; =0x020D5A60
	mov r0, r8
	mov r2, r4
	bl FUN_ov0_020d0ae4
	mov r3, #0x16
	str r3, [sp]
	mov r3, #0x17
	str r3, [sp, #4]
	mov r0, r9
	mov r1, r4
	mov r2, r5
	mov r3, #0x15
	b _020BEA7C
_020BEDA8:
	cmp r10, #3
	bne _020BEE1C
	stmia sp, {r6, r7}
	str r7, [sp, #8]
	mov r4, #3
	str r6, [sp, #0xc]
	mov r0, #0x50
	str r0, [sp, #0x10]
	mov r0, r8
	mov r1, r4
	mov r2, r4
	mov r3, #0
	str r5, [sp, #0x14]
	bl FUN_ov0_020d06d0
	mov r2, #0x28
	strh r2, [r9, #0xb8]
	strh r2, [r9, #0xba]
	mov r2, #0x104
	ldr r1, _020BEEC0 ; =0x020D5A8C
	mov r0, r8
	str r2, [r9, #0xc0]
	bl FUN_ov0_020d0a9c
	mov r0, r8
	mov r1, #0xf
	bl FUN_ov0_020d0ab0
	ldr r1, _020BEEC4 ; =0x020D5A98
	mov r0, r8
	mov r2, r4
	b _020BEAF4
_020BEE1C:
	mov r0, r8
	bl FUN_ov0_020d08c4
	add sp, sp, #0xb8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BEE2C:
	mov r0, r10
	bl FUN_ov0_020bfaa8
	mov r0, r8
	bl FUN_ov0_020d09b8
	ldr r0, _020BEE60 ; =0x020D619C
	ldr r1, _020BEEC8 ; =0x020D61A0
	ldr r2, [r0]
	str r10, [r1, r2, lsl #2]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	add sp, sp, #0xb8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BEE60: .word ov0_020D619C
_020BEE64: .word ov0_020D610C
_020BEE68: .word gLogicThink
_020BEE6C: .word unk_0209A454
_020BEE70: .word ov0_020D58D8
_020BEE74: .word ov0_020D58DC
_020BEE78: .word ov0_020D58E0
_020BEE7C: .word ov0_020D6100
_020BEE80: .word gSprButtonCtrl
_020BEE84: .word unk_020A9C40
_020BEE88: .word ov0_020D58EC
_020BEE8C: .word ov0_020D58F8
_020BEE90: .word ov0_020D5930
_020BEE94: .word ov0_020D5938
_020BEE98: .word ov0_020D5960
_020BEE9C: .word ov0_020D596C
_020BEEA0: .word ov0_020D598C
_020BEEA4: .word ov0_020D5998
_020BEEA8: .word ov0_020D59CC
_020BEEAC: .word ov0_020D59D8
_020BEEB0: .word ov0_020D5A30
_020BEEB4: .word ov0_020D5A3C
_020BEEB8: .word ov0_020D5A54
_020BEEBC: .word ov0_020D5A60
_020BEEC0: .word ov0_020D5A8C
_020BEEC4: .word ov0_020D5A98
_020BEEC8: .word ov0_020D61A0
	arm_func_end FUN_ov0_020be8c0

	arm_func_start FUN_ov0_020beecc
FUN_ov0_020beecc: ; 0x020BEECC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020BEF68 ; =0x020D6100
	mov r5, r0
	ldr r0, [r1, #0x28]
	mov r4, #0
	bl FUN_ov0_020d08c4
	ldr r6, _020BEF6C ; =0x020D619C
	ldr r1, [r6]
	cmp r1, #0
	ble _020BEF34
	ldr r0, _020BEF70 ; =0x020D610C
	sub r1, r1, #1
	ldr r0, [r0, r1, lsl #2]
	bl FUN_ov0_020d08c4
	ldr r0, [r6]
	sub r0, r0, #1
	str r0, [r6]
	cmp r0, #0
	bgt _020BEF34
	cmp r5, #0
	ldrne r0, _020BEF74 ; =0x0209A454
	movne r1, #0x83
	strne r1, [r0, #0x84]
	ldr r0, _020BEF68 ; =0x020D6100
	ldr r0, [r0, #4]
	bl FUN_ov0_020ce6dc
_020BEF34:
	ldr r0, _020BEF6C ; =0x020D619C
	ldr r1, [r0]
	cmp r1, #0
	ble _020BEF5C
	ldr r0, _020BEF70 ; =0x020D610C
	sub r2, r1, #1
	ldr r1, _020BEF78 ; =0x020D61A0
	ldr r0, [r0, r2, lsl #2]
	ldr r4, [r1, r2, lsl #2]
	bl FUN_ov0_020d09b8
_020BEF5C:
	mov r0, r4
	bl FUN_ov0_020bfaa8
	ldmfd sp!, {r4, r5, r6, pc}
_020BEF68: .word ov0_020D6100
_020BEF6C: .word ov0_020D619C
_020BEF70: .word ov0_020D610C
_020BEF74: .word unk_0209A454
_020BEF78: .word ov0_020D61A0
	arm_func_end FUN_ov0_020beecc

	arm_func_start FUN_ov0_020bef7c
FUN_ov0_020bef7c: ; 0x020BEF7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020BEF88:
	mov r0, r5
	bl FUN_ov0_020beecc
	add r4, r4, #1
	cmp r4, #8
	blt _020BEF88
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020bef7c

	arm_func_start FUN_ov0_020befa0
FUN_ov0_020befa0: ; 0x020BEFA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, _020BF670 ; =0x020D619C
	mov r11, r0
	ldr r0, [r5]
	ldr r10, _020BF674 ; =0x0209A454
	cmp r0, #0
	mov r6, #0
	mov r7, #1
	addeq sp, sp, #0x20
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x128]
	cmp r0, #0
	beq _020BF03C
	mov r9, r6
	b _020BEFF0
_020BEFE4:
	mov r0, r7
	bl FUN_ov0_020beecc
	add r9, r9, #1
_020BEFF0:
	ldrb r0, [r5, #0x129]
	cmp r9, r0
	blt _020BEFE4
	ldr r2, [r5]
	cmp r2, #0
	ble _020BF024
	ldrb r0, [r5, #0x12a]
	ldr r1, _020BF678 ; =0x020D610C
	sub r2, r2, #1
	cmp r0, #0
	ldr r0, [r1, r2, lsl #2]
	bne _020BF024
	bl FUN_ov0_020d09b8
_020BF024:
	strb r6, [r5, #0x128]
	ldrb r0, [r5, #0x12a]
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF03C:
	ldrb r0, [r5, #0x12a]
	cmp r0, #0
	beq _020BF05C
	bl FUN_ov0_020be8c0
	add sp, sp, #0x20
	strb r6, [r5, #0x12a]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF05C:
	ldr r0, _020BF67C ; =0x0209A0F4
	ldr r2, [r5]
	ldrh r1, [r0]
	sub r0, r2, #1
	ldr r3, _020BF680 ; =0x020D61A0
	orr r1, r1, r11
	mov r1, r1, lsl #0x10
	ldr r2, _020BF678 ; =0x020D610C
	mov r1, r1, lsr #0x10
	tst r1, #0x40
	ldr r9, [r3, r0, lsl #2]
	ldr r8, [r2, r0, lsl #2]
	beq _020BF0B8
	mov r0, r8
	mvn r1, #0
	mov r2, #4
	bl FUN_ov0_020d0b88
	cmp r0, #0
	beq _020BF664
_020BF0A8:
	ldr r0, _020BF684 ; =gAudioPlayer
	mov r1, #8
_020BF0B0:
	bl _ZN11AudioPlayer10playEffectEi
	b _020BF664
_020BF0B8:
	tst r1, #0x80
	ldr r4, _020BF670 ; =0x020D619C
	beq _020BF0E0
	mov r0, r8
	mov r1, #1
	mov r2, #4
	bl FUN_ov0_020d0b88
	cmp r0, #0
	beq _020BF664
	b _020BF0A8
_020BF0E0:
	tst r11, #0x400
	beq _020BF100
	ldr r0, _020BF684 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, #1
	bl FUN_ov0_020bef7c
	b _020BF664
_020BF100:
	tst r11, #1
	beq _020BF490
	mov r0, r8
	bl FUN_ov0_020d0694
	cmp r0, #0
	beq _020BF124
	ldr r4, [r0, #0xb0]
	cmp r4, #0
	bge _020BF13C
_020BF124:
	ldr r0, _020BF684 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF13C:
	ldr r0, [r0, #0xa4]
	add r0, r0, r4, lsl #3
	ldrb r0, [r0, #2]
	cmp r0, #2
	cmpne r0, #3
	bne _020BF16C
	ldr r0, _020BF684 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF16C:
	cmp r9, #1
	bne _020BF1E4
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #5
	addls pc, pc, r4, lsl #2
	b _020BF484
_020BF188: ; jump table
	b _020BF1A0 ; case 0
	b _020BF1AC ; case 1
	b _020BF1B8 ; case 2
	b _020BF1C0 ; case 3
	b _020BF1C8 ; case 4
	b _020BF1D0 ; case 5
_020BF1A0:
	add sp, sp, #0x20
	mov r0, #0x12
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF1AC:
	mov r0, #0x14
_020BF1B0:
	strb r0, [r5, #0x12a]
	b _020BF484
_020BF1B8:
	mov r0, #0x10
	b _020BF1B0
_020BF1C0:
	mov r0, #0x11
	b _020BF1B0
_020BF1C8:
	mov r0, #0x13
	b _020BF1B0
_020BF1D0:
	mov r0, #1
	bl FUN_ov0_020bef7c
	add sp, sp, #0x20
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF1E4:
	cmp r9, #2
	bne _020BF248
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020BF484
_020BF200: ; jump table
	b _020BF210 ; case 0
	b _020BF21C ; case 1
	b _020BF228 ; case 2
	b _020BF238 ; case 3
_020BF210:
	add sp, sp, #0x20
	mov r0, #0x12
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF21C:
	add sp, sp, #0x20
	mov r0, #0x13
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF228:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF238:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF248:
	cmp r9, #0x14
	bne _020BF2A4
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #0
	beq _020BF274
	cmp r4, #1
	beq _020BF284
	cmp r4, #2
	beq _020BF294
	b _020BF484
_020BF274:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF284:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF294:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF2A4:
	cmp r9, #0x10
	bne _020BF340
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _020BF484
_020BF2C0: ; jump table
	b _020BF2D4 ; case 0
	b _020BF2E4 ; case 1
	b _020BF2F4 ; case 2
	b _020BF30C ; case 3
	b _020BF324 ; case 4
_020BF2D4:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF2E4:
	add sp, sp, #0x20
	strh r6, [r10, #0x2c]
	mov r0, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF2F4:
	ldr r0, _020BF688 ; =0x020A1640
	strh r6, [r10, #0x2c]
	strb r6, [r0, #0x22]
	add sp, sp, #0x20
	mov r0, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF30C:
	ldr r0, _020BF688 ; =0x020A1640
	strh r6, [r10, #0x2c]
	strb r7, [r0, #0x22]
	add sp, sp, #0x20
	mov r0, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF324:
	ldr r0, _020BF688 ; =0x020A1640
	strh r6, [r10, #0x2c]
	mov r1, #2
	strb r1, [r0, #0x22]
	add sp, sp, #0x20
	mov r0, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF340:
	cmp r9, #0x11
	bne _020BF3D8
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _020BF484
_020BF35C: ; jump table
	b _020BF37C ; case 0
	b _020BF388 ; case 1
	b _020BF390 ; case 2
	b _020BF39C ; case 3
	b _020BF3A8 ; case 4
	b _020BF3B4 ; case 5
	b _020BF3C0 ; case 6
	b _020BF3CC ; case 7
_020BF37C:
	add sp, sp, #0x20
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF388:
	mov r0, #0x15
	b _020BF1B0
_020BF390:
	add sp, sp, #0x20
	mov r0, #9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF39C:
	add sp, sp, #0x20
	mov r0, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF3A8:
	add sp, sp, #0x20
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF3B4:
	add sp, sp, #0x20
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF3C0:
	add sp, sp, #0x20
	mov r0, #0xa
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF3CC:
	add sp, sp, #0x20
	mov r0, #0xb
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF3D8:
	cmp r9, #0x13
	bne _020BF428
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #0
	beq _020BF404
	cmp r4, #1
	beq _020BF410
	cmp r4, #2
	beq _020BF41C
	b _020BF484
_020BF404:
	add sp, sp, #0x20
	mov r0, #0x17
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF410:
	add sp, sp, #0x20
	mov r0, #0x15
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF41C:
	add sp, sp, #0x20
	mov r0, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF428:
	cmp r9, #0x15
	bne _020BF484
	mov r0, r8
	bl FUN_ov0_020d0c78
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020BF484
_020BF444: ; jump table
	b _020BF454 ; case 0
	b _020BF460 ; case 1
	b _020BF46C ; case 2
	b _020BF478 ; case 3
_020BF454:
	add sp, sp, #0x20
	mov r0, #0x19
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF460:
	add sp, sp, #0x20
	mov r0, #0x1a
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF46C:
	add sp, sp, #0x20
	mov r0, #0x1b
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF478:
	add sp, sp, #0x20
	mov r0, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF484:
	ldr r0, _020BF684 ; =gAudioPlayer
	mov r1, #1
	b _020BF0B0
_020BF490:
	tst r11, #2
	beq _020BF664
	ldr r0, _020BF684 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	cmp r9, #7
	bne _020BF65C
	mov r10, #0
	mov r9, r10
	ldr r0, [r5, #0x11c]
	ldr r2, _020BF68C ; =0x020D62CE
	b _020BF4D4
_020BF4C0:
	mov r1, r9, lsl #2
	ldrh r1, [r2, r1]
	add r9, r9, #1
	cmp r1, #0
	addeq r10, r10, #1
_020BF4D4:
	cmp r9, r0
	blt _020BF4C0
	cmp r10, r0
	strgeb r7, [r4, #0x128]
	strgeb r7, [r4, #0x129]
	bge _020BF664
	mov r9, #0
	ldr r2, _020BF68C ; =0x020D62CE
	b _020BF514
_020BF4F8:
	mov r3, r9, lsl #2
	ldr r0, [r4, #0x11c]
	ldrh r1, [r2, r3]
	sub r0, r0, r10
	add r9, r9, #1
	cmp r1, r0
	streqh r6, [r2, r3]
_020BF514:
	ldr r0, [r4, #0x11c]
	cmp r9, r0
	blt _020BF4F8
	mov r0, r8
	bl FUN_ov0_020d0694
	add r1, r10, #1
	str r1, [r0, #0xa8]
	mov r9, #0
	mov r10, r9
	str r1, [r0, #0xac]
	ldr r5, _020BF68C ; =0x020D62CE
	ldr r7, _020BF690 ; =0x020D62CC
	b _020BF588
_020BF548:
	mov r1, r9, lsl #2
	ldrh r0, [r7, r1]
	cmp r0, #0
	beq _020BF584
	ldrh r1, [r5, r1]
	cmp r1, #0
	bne _020BF584
	mov r1, r6
	bl FUN_ov16_020efa9c
	mov r1, r0
	mov r0, r8
	mov r2, r10
	add r1, r1, #0x1c
	bl FUN_ov0_020d0ac8
	add r10, r10, #1
_020BF584:
	add r9, r9, #1
_020BF588:
	ldr r0, [r4, #0x11c]
	cmp r9, r0
	blt _020BF548
	mov r0, r8
	bl FUN_ov0_020d09b8
	mov r9, #0
	ldr r8, _020BF68C ; =0x020D62CE
	ldr r11, _020BF690 ; =0x020D62CC
	add r7, sp, #0x10
	add r5, sp, #0
	b _020BF640
_020BF5B4:
	mov r10, r6
	add r2, r9, #1
	ldr r0, [r4, #0x11c]
	b _020BF5D8
_020BF5C4:
	mov r1, r10, lsl #2
	ldrh r1, [r8, r1]
	cmp r2, r1
	beq _020BF5E0
	add r10, r10, #1
_020BF5D8:
	cmp r10, r0
	blt _020BF5C4
_020BF5E0:
	ldr r1, _020BF694 ; =0x020D5AB4
	mov r0, r7
	add r2, r9, #1
	bl sprintf
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_020f1f5c
	ldr r0, [r4, #0x11c]
	cmp r10, r0
	bge _020BF628
	mov r0, r10, lsl #2
	ldrh r0, [r11, r0]
	mov r1, r6
	bl FUN_ov16_020efa9c
	mov r1, r0
	mov r0, r5
	add r1, r1, #0x1c
	bl strcat
_020BF628:
	ldr r0, _020BF698 ; =0x020D6100
	mov r1, r5
	ldr r0, [r0, #0x28]
	mov r2, r9
	bl FUN_ov0_020d0ac8
	add r9, r9, #1
_020BF640:
	ldr r0, [r4, #0x11c]
	cmp r9, r0
	blt _020BF5B4
	ldr r0, _020BF698 ; =0x020D6100
	ldr r0, [r0, #0x28]
	bl FUN_ov0_020d09b8
	b _020BF664
_020BF65C:
	strb r7, [r5, #0x128]
	strb r7, [r5, #0x129]
_020BF664:
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF670: .word ov0_020D619C
_020BF674: .word unk_0209A454
_020BF678: .word ov0_020D610C
_020BF67C: .word unk_0209A0F4
_020BF680: .word ov0_020D61A0
_020BF684: .word gAudioPlayer
_020BF688: .word unk_020A1640
_020BF68C: .word ov0_020D62CE
_020BF690: .word ov0_020D62CC
_020BF694: .word ov0_020D5AB4
_020BF698: .word ov0_020D6100
	arm_func_end FUN_ov0_020befa0

	arm_func_start FUN_ov0_020bf69c
FUN_ov0_020bf69c: ; 0x020BF69C
	stmfd sp!, {r4, lr}
	ldr r1, _020BF740 ; =0x020D619C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r0, #4
	mov r4, #0
	addls pc, pc, r0, lsl #2
	b _020BF738
_020BF6C4: ; jump table
	b _020BF730 ; case 0
	b _020BF6D8 ; case 1
	b _020BF6EC ; case 2
	b _020BF700 ; case 3
	b _020BF71C ; case 4
_020BF6D8:
	ldr r0, _020BF744 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210f484
	bl FUN_ov0_020bf748
_020BF6E8:
	b _020BF714
_020BF6EC:
	ldr r0, _020BF744 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210f484
	bl FUN_ov0_020bf7e8
	b _020BF6E8
_020BF700:
	ldr r0, _020BF744 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210f484
	mov r1, r4
_020BF710:
	bl FUN_ov0_020bf918
_020BF714:
	mov r4, r0
	b _020BF738
_020BF71C:
	ldr r0, _020BF744 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210f484
	mov r1, #1
	b _020BF710
_020BF730:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020BF738:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020BF740: .word ov0_020D619C
_020BF744: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020bf69c

	arm_func_start FUN_ov0_020bf748
FUN_ov0_020bf748: ; 0x020BF748
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	cmp r4, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r0, _020BF7DC ; =gSprButtonCtrl
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r1, _020BF7E0 ; =0x020D619C
	ldr r2, _020BF7E4 ; =0x020D610C
	ldr r1, [r1]
	cmp r0, #0
	sub r0, r1, #1
	ldr r6, [r2, r0, lsl #2]
	cmpne r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #7
	blt _020BF7D4
	cmp r4, #0x11
	bgt _020BF7D4
	mov r0, r6
	sub r5, r4, #7
	bl FUN_ov0_020d0694
	ldr r1, [r0, #0xb4]
	mov r4, #1
	mov r0, r6
	mov r3, r4
	add r1, r5, r1
	mov r2, #4
	bl FUN_ov0_020d0af4
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020BF7D4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020BF7DC: .word gSprButtonCtrl
_020BF7E0: .word ov0_020D619C
_020BF7E4: .word ov0_020D610C
	arm_func_end FUN_ov0_020bf748

	arm_func_start FUN_ov0_020bf7e8
FUN_ov0_020bf7e8: ; 0x020BF7E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _020BF908 ; =gSprButtonCtrl
	mov r5, r0
	mov r1, r5, lsl #0x10
	ldr r0, [r6]
	mov r1, r1, lsr #0x10
	mov r7, #1
	bl FUN_ov16_0210e7d0
	ldr r1, _020BF90C ; =0x020D619C
	ldr r2, _020BF910 ; =0x020D610C
	ldr r1, [r1]
	cmp r0, #0
	sub r0, r1, #1
	ldr r4, [r2, r0, lsl #2]
	cmpne r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #7
	blt _020BF884
	cmp r5, #0x11
	bgt _020BF884
	mov r0, r4
	sub r5, r5, #7
	bl FUN_ov0_020d0694
	ldr r2, [r0, #0xb0]
	ldr r1, [r0, #0xb4]
	sub r0, r2, r1
	cmp r5, r0
	ldreq r0, [r6]
	addeq r0, r0, #0xf00
	streqh r7, [r0, #0x38]
	beq _020BF87C
	mov r0, r4
	add r1, r5, r1
	mov r2, #4
	mov r3, r7
	bl FUN_ov0_020d0af4
_020BF87C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF884:
	cmp r5, #4
	cmpne r5, #6
	bne _020BF8AC
	ldr r0, _020BF908 ; =gSprButtonCtrl
	mov r2, #2
	ldr r1, [r0]
	mov r0, #1
	add r1, r1, #0xf00
	strh r2, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF8AC:
	cmp r5, #1
	bne _020BF8D8
	ldr r0, _020BF914 ; =gAudioPlayer
	mov r1, r7
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	sub r1, r7, #2
	mov r2, #0
	bl FUN_ov0_020d0c60
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF8D8:
	cmp r5, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020BF914 ; =gAudioPlayer
	mov r1, r7
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl FUN_ov0_020d0c60
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF908: .word gSprButtonCtrl
_020BF90C: .word ov0_020D619C
_020BF910: .word ov0_020D610C
_020BF914: .word gAudioPlayer
	arm_func_end FUN_ov0_020bf7e8

	arm_func_start FUN_ov0_020bf918
FUN_ov0_020bf918: ; 0x020BF918
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _020BFA7C ; =gSprButtonCtrl
	mov r7, r0
	mov r2, r7, lsl #0x10
	mov r8, r1
	ldr r0, [r6]
	mov r1, r2, lsr #0x10
	mov r4, #0
	bl FUN_ov16_0210e7d0
	ldr r1, _020BFA80 ; =0x020D619C
	mov r5, r0
	ldr r1, [r1]
	ldr r2, _020BFA84 ; =0x020D610C
	sub r3, r1, #1
	ldr r0, [r6]
	ldr r6, [r2, r3, lsl #2]
	add r1, sp, #4
	bl FUN_ov16_0210f48c
	cmp r5, #0
	cmpne r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #3
	bne _020BFA70
	mov r0, r6
	bl FUN_ov0_020d0694
	mov r5, r0
	ldrsh r0, [r5, #0xd0]
	ldrsh r7, [r5, #0xd2]
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldr r0, [r5, #0xdc]
	mov r0, r0, lsl #0xf
	sub r0, r1, r0, asr #16
	strh r0, [sp, #6]
	ldrsh r1, [sp, #6]
	cmp r1, r7
	strlth r7, [sp, #6]
	blt _020BF9CC
	ldrsh r0, [r5, #0xd6]
	add r0, r7, r0
	cmp r1, r0
	strgeh r0, [sp, #6]
_020BF9CC:
	cmp r8, #0
	bne _020BF9EC
	ldrsh r3, [sp, #6]
	ldrsh r2, [sp, #4]
	mov r0, r6
	add r1, r6, #8
	str r4, [sp]
	bl FUN_ov0_020d04c0
_020BF9EC:
	ldrsh r2, [sp, #6]
	ldr r1, [r5, #0xa8]
	ldr r0, [r5, #0xac]
	sub r2, r2, r7
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r5, #0xd6]
	bl _s32_div_f
	ldr r3, [r5, #0xa8]
	ldr r2, [r5, #0xac]
	mov r1, r0
	cmp r3, r2
	movlt r1, #0
	blt _020BFA40
	cmp r1, #0
	movlt r1, #0
	blt _020BFA40
	sub r0, r3, r2
	cmp r1, r0
	movge r1, r0
_020BFA40:
	mov r0, r6
	mov r3, r8
	mov r2, #0
	bl FUN_ov0_020d0bcc
	cmp r8, #0
	beq _020BFA64
	ldr r0, _020BFA88 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer10playEffectEi
_020BFA64:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BFA70:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BFA7C: .word gSprButtonCtrl
_020BFA80: .word ov0_020D619C
_020BFA84: .word ov0_020D610C
_020BFA88: .word gAudioPlayer
	arm_func_end FUN_ov0_020bf918

	arm_func_start FUN_ov0_020bfa8c
FUN_ov0_020bfa8c: ; 0x020BFA8C
	ldr r0, _020BFAA4 ; =0x020D619C
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020BFAA4: .word ov0_020D619C
	arm_func_end FUN_ov0_020bfa8c

	arm_func_start FUN_ov0_020bfaa8
FUN_ov0_020bfaa8: ; 0x020BFAA8
	stmfd sp!, {r4, r5, r6, lr}
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _020BFB40
_020BFAB8: ; jump table
	b _020BFB40 ; case 0
	b _020BFB10 ; case 1
	b _020BFB18 ; case 2
	b _020BFB20 ; case 3
	b _020BFB28 ; case 4
	b _020BFB30 ; case 5
	b _020BFB30 ; case 6
	b _020BFB38 ; case 7
	b _020BFB28 ; case 8
	b _020BFB30 ; case 9
	b _020BFB30 ; case 10
	b _020BFB30 ; case 11
	b _020BFB28 ; case 12
	b _020BFB30 ; case 13
	b _020BFB30 ; case 14
	b _020BFB40 ; case 15
	b _020BFB18 ; case 16
	b _020BFB18 ; case 17
	b _020BFB20 ; case 18
	b _020BFB18 ; case 19
	b _020BFB18 ; case 20
	b _020BFB20 ; case 21
_020BFB10:
	ldr r6, _020BFB9C ; =0x00000136
	b _020BFB5C
_020BFB18:
	ldr r6, _020BFBA0 ; =0x00000122
	b _020BFB5C
_020BFB20:
	ldr r6, _020BFBA4 ; =0x0000010E
	b _020BFB5C
_020BFB28:
	mov r6, #0xfa
	b _020BFB5C
_020BFB30:
	mov r6, #0xe6
	b _020BFB5C
_020BFB38:
	mov r6, #0xd2
	b _020BFB5C
_020BFB40:
	ldr r0, _020BFBA8 ; =g3DPlaneCtrl
	ldr r1, _020BFBAC ; =0x020D619C
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	mov r2, #2
	bl FUN_ov16_02113390
	ldmfd sp!, {r4, r5, r6, pc}
_020BFB5C:
	ldr r5, _020BFBA8 ; =g3DPlaneCtrl
	ldr r4, _020BFBAC ; =0x020D619C
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	mov r2, r6
	bl FUN_ov16_02112b98
	ldr r0, [r5]
	ldr r1, [r4, #0x24]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldr r0, _020BFBB0 ; =0x020D6100
	sub r1, r6, #1
	ldr r0, [r0, #4]
	bl FUN_ov0_020cde8c
	ldmfd sp!, {r4, r5, r6, pc}
_020BFB9C: .word 0x00000136
_020BFBA0: .word 0x00000122
_020BFBA4: .word 0x0000010E
_020BFBA8: .word g3DPlaneCtrl
_020BFBAC: .word ov0_020D619C
_020BFBB0: .word ov0_020D6100
	arm_func_end FUN_ov0_020bfaa8

	arm_func_start FUN_ov0_020bfbb4
FUN_ov0_020bfbb4: ; 0x020BFBB4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0xa8]
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	movge r1, r0
	strge r0, [sp, #0x1c]
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, lr}
	addle sp, sp, #0x10
	bxle lr
	add r0, sp, #0x1c
	bic r0, r0, #3
	add r6, r0, #4
	mov r7, #0
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, lr}
	addle sp, sp, #0x10
	bxle lr
	ldr r5, _020BFC50 ; =0x020A9C40
	mov r4, #3
_020BFC0C:
	add r6, r6, #4
	ldr r1, [r6, #-4]
	cmp r1, #0
	beq _020BFC34
	mov r0, r5
	bl FUN_02045ce0
	cmp r0, #0
	ldreq r0, [r8, #0xa4]
	addeq r0, r0, r7, lsl #3
	streqb r4, [r0, #2]
_020BFC34:
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	cmp r7, r0
	blt _020BFC0C
	ldmfd sp!, {r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_020BFC50: .word unk_020A9C40
	arm_func_end FUN_ov0_020bfbb4

	arm_func_start FUN_ov0_020bfc54
FUN_ov0_020bfc54: ; 0x020BFC54
	ldr r12, _020BFC64 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0xe
	bx r12
_020BFC64: .word MI_CpuFill8
	arm_func_end FUN_ov0_020bfc54

	arm_func_start FUN_ov0_020bfc68
FUN_ov0_020bfc68: ; 0x020BFC68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r12, _020BFD30 ; =0x0209A200
	ldr r6, _020BFD34 ; =g3DPlaneCtrl
	mov r5, r0
	mov r4, r2
	ldr r2, [r12]
	ldr r0, [r6]
	mov r8, #1
	mov r9, r3
	mov r3, r1
	str r8, [sp]
	mov r7, #0
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r1, #5
	bl FUN_02058684
	strh r0, [r5, #4]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r8
	bl FUN_ov16_02112724
	strh r0, [r5, #6]
	ldrh r2, [r5, #4]
	ldrh r1, [r5, #6]
	ldr r0, [r6]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrh r1, [r5, #6]
	ldr r0, [r6]
	mov r3, r8
	mov r2, r7
	bl FUN_ov16_0211346c
	ldrh r1, [r5, #6]
	ldr r0, [r6]
	ldr r2, _020BFD38 ; =0x0000014A
	bl FUN_ov16_02112b98
	ldrh r1, [r5, #6]
	ldr r0, [r6]
	mov r3, r7
	mov r2, #2
	bl FUN_ov16_0211329c
	ldrh r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	strh r4, [r5, #0xa]
	strh r9, [r5, #0xc]
	strh r1, [r5]
	strh r0, [r5, #2]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020BFD30: .word unk_0209A200
_020BFD34: .word g3DPlaneCtrl
_020BFD38: .word 0x0000014A
	arm_func_end FUN_ov0_020bfc68

	arm_func_start FUN_ov0_020bfd3c
FUN_ov0_020bfd3c: ; 0x020BFD3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _020BFD5C
	ldr r0, _020BFD80 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
_020BFD5C:
	ldrh r1, [r4, #6]
	cmp r1, #0
	beq _020BFD74
	ldr r0, _020BFD80 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021128c4
_020BFD74:
	mov r0, r4
	bl FUN_ov0_020bfc54
	ldmfd sp!, {r4, pc}
_020BFD80: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020bfd3c

	arm_func_start FUN_ov0_020bfd84
FUN_ov0_020bfd84: ; 0x020BFD84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r1, [r5, #4]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _020BFDE4 ; =g3DPlaneCtrl
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _020BFDDC
	ldrh r1, [r5, #4]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0
	bl FUN_02059038
_020BFDDC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020BFDE4: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020bfd84

	arm_func_start FUN_ov0_020bfde8
FUN_ov0_020bfde8: ; 0x020BFDE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrb r0, [r6, #8]
	mov r2, r1
	cmp r0, r2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _020BFF2C ; =g3DPlaneCtrl
	strb r2, [r6, #8]
	ldrh r1, [r6, #6]
	ldr r0, [r8]
	and r3, r2, #0xff
	mov r2, #2
	bl FUN_ov16_0211329c
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _020BFF14
	ldr r7, _020BFF30 ; =gSprButtonCtrl
	ldrh r1, [r6]
	ldr r0, [r7]
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r2, [r6]
	mov r5, #1
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_0210e9e4
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r1, [r6, #6]
	ldrsh r2, [r6, #0xa]
	ldrsh r3, [r6, #0xc]
	ldr r0, [r8]
	bl FUN_ov16_02114248
	mov r3, #0x20
	str r3, [sp]
	ldrsh r1, [r6, #0xa]
	ldrsh r2, [r6, #0xc]
	mov r0, r4
	bl FUN_ov16_0210e674
	mov r8, #0
	ldrh r2, [r6, #2]
	add r0, r4, #0x3a
	mov r1, r8
	strh r2, [r4, #0xc]
	ldrh r6, [r6, #6]
	mov r2, r5
	mov r3, r8
	strh r6, [r4, #0x34]
	strb r5, [r4, #0xf]
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3a
	mov r1, r8
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_0210e720
	add r0, r4, #0x3e
	mov r1, r8
	mov r2, r5
	mov r3, r8
	bl FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r4, #0x3e
	mov r1, r8
	mov r3, r8
	bl FUN_ov16_0210e720
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov16_0210ee80
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BFF14:
	ldr r0, _020BFF30 ; =gSprButtonCtrl
	ldrh r1, [r6]
	ldr r0, [r0]
	bl FUN_ov16_0210eab4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BFF2C: .word g3DPlaneCtrl
_020BFF30: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020bfde8

	arm_func_start FUN_ov0_020bff34
FUN_ov0_020bff34: ; 0x020BFF34
	ldrb r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov0_020bff34

	arm_func_start FUN_ov0_020bff3c
FUN_ov0_020bff3c: ; 0x020BFF3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r3, _020BFFB8 ; =0x020D586C
	str r1, [r5, #4]
	mov r1, r4
	add r0, r5, #0xa4
	mov r2, #0x40
	str r3, [r5]
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	str r4, [r5, #0x10]
	strb r4, [r5, #0x99]
	strb r4, [r5, #0x98]
	strb r4, [r5, #0x9a]
	strb r4, [r5, #0x110]
	bl MI_CpuFill8
	mov r0, #0x1f
	strb r4, [r5, #0x138]
	str r4, [r5, #0x13c]
	str r4, [r5, #0x140]
	strb r4, [r5, #0x144]
	str r4, [r5, #0x148]
	strb r4, [r5, #0x14c]
	str r4, [r5, #0x150]
	strb r4, [r5, #0x154]
	strb r0, [r5, #0x155]
	strb r4, [r5, #0x156]
	bl FUN_ov0_020be3f8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020BFFB8: .word ov0_020D586C
	arm_func_end FUN_ov0_020bff3c

	arm_func_start FUN_ov0_020bffbc
FUN_ov0_020bffbc: ; 0x020BFFBC
	mvn r1, #0
	str r1, [r0, #0x10c]
	bx lr
	arm_func_end FUN_ov0_020bffbc

	arm_func_start FUN_ov0_020bffc8
FUN_ov0_020bffc8: ; 0x020BFFC8
	str r1, [r0, #0x10c]
	bx lr
	arm_func_end FUN_ov0_020bffc8

	arm_func_start FUN_ov0_020bffd0
FUN_ov0_020bffd0: ; 0x020BFFD0
	ldr r2, [r0, #0x10c]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov0_020bffd0

	arm_func_start FUN_ov0_020bffe4
FUN_ov0_020bffe4: ; 0x020BFFE4
	stmfd sp!, {r3, r4, r5, lr}
	bl G2_GetBG3CharPtr
	movs r5, r0
	beq _020C0014
	mov r4, #0x40
	mov r1, r5
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
_020C0014:
	bl G2_GetBG3ScrPtr
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0x800
	mov r1, r5
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020bffe4

	arm_func_start FUN_ov0_020c0044
FUN_ov0_020c0044: ; 0x020C0044
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	tst r1, #1
	mov r6, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r7, _020C01DC ; =g2DAdventureLogic
	mov r4, #0
	ldr r0, [r7]
	mov r1, r4
	bl FUN_020552dc
	movs r5, r0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r6, #0x110]
	cmp r0, #0
	beq _020C00F0
	ldr r1, [r6, #0x114]
	ldr r0, [r7]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #0x118]
	bl FUN_020552cc
	str r0, [r6, #0x13c]
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov0_020cb9b4
	ldr r1, [r6, #0x13c]
	add r2, sp, #0
	add r0, r5, #0x84
	add r1, r1, #0x84
	bl FUN_02053554
	ldrh r1, [sp]
	mov r0, r5
	bl FUN_02054398
	mov r0, #1
	strb r0, [r5, #0x69]
	add sp, sp, #0xc
	strb r0, [r6, #0x138]
	strb r4, [r6, #0x110]
	strb r4, [r6, #0x154]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C00F0:
	ldrb r0, [r6, #0x138]
	cmp r0, #0
	ldrne r0, [r6, #0x13c]
	cmpne r0, #0
	beq _020C010C
	bl FUN_020542a8
	b _020C0128
_020C010C:
	mov r0, r5
	bl FUN_020542a8
	ldr r2, _020C01DC ; =g2DAdventureLogic
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0x1000
	bl FUN_ov0_020cc92c
_020C0128:
	ldr r4, _020C01DC ; =g2DAdventureLogic
	mov r8, r0
	ldr r0, [r4]
	mov r1, r8
	bl FUN_020552cc
	mov r7, #0
	strb r7, [r6, #0x110]
	cmp r0, #0
	beq _020C01D0
	ldr r0, [r4]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, r8
	bl FUN_02055514
	ldr r0, [r4]
	ldr r1, _020C01E0 ; =0x0000C350
	mov r2, #3
	bl FUN_020555a0
	mov r0, r5
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r4]
	mov r2, r8
	bl FUN_ov0_020ccac0
	ldr r4, _020C01E4 ; =0x020A9C40
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	mov r0, r4
	bl FUN_0204555c
	mov r0, r6
	mov r1, #0xd
	mov r2, r7
	mov r3, r7
	bl FUN_ov0_020c1814
	cmp r0, #0
	addne sp, sp, #0xc
	strneb r7, [r6, #0x144]
	strneb r7, [r6, #0x14c]
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl FUN_0204556c
_020C01D0:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C01DC: .word g2DAdventureLogic
_020C01E0: .word 0x0000C350
_020C01E4: .word unk_020A9C40
	arm_func_end FUN_ov0_020c0044

	arm_func_start FUN_ov0_020c01e8
FUN_ov0_020c01e8: ; 0x020C01E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020C0234 ; =g2DAdventureLogic
	mov r5, #0
	ldr r0, [r4]
	mov r7, r1
	mov r1, r5
	mov r6, r2
	bl FUN_020552dc
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov0_020cc11c
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0234: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c01e8

	arm_func_start FUN_ov0_020c0238
FUN_ov0_020c0238: ; 0x020C0238
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, _020C03AC ; =0x020A9C40
	mov r6, r2
	mov r4, #0
	bl FUN_02046360
	cmp r0, #0
	beq _020C0298
	ldr r0, _020C03B0 ; =gCameraController
	ldr r0, [r0]
	bl FUN_ov16_020f7c34
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020C028C
	mov r0, r5
	mov r1, #0x1e
	bl FUN_ov0_020c04f8
_020C028C:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C0298:
	ldrb r0, [r5, #0x9a]
	cmp r0, #0
	beq _020C02D8
	ldr r0, _020C03B0 ; =gCameraController
	strb r4, [r5, #0x99]
	strb r4, [r5, #0x98]
	ldr r0, [r0]
	bl FUN_ov16_020f7bf4
	ldrh r0, [r0, #0x3a]
	add sp, sp, #0xc
	and r0, r0, #4
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	streqb r4, [r5, #0x9a]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C02D8:
	tst r6, #0x200
	beq _020C0300
	tst r6, #0x100
	beq _020C0300
	mov r0, r5
	mov r1, #0x1e
	bl FUN_ov0_020c04f8
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C0300:
	ldrb r0, [r5, #0x9e]
	cmp r0, #0
	bne _020C03A0
	tst r6, #0x200
	beq _020C0334
	mov r1, #1
	strb r1, [r5, #0x98]
	tst r1, #0xff
	beq _020C0354
	mov r0, r5
	mov r2, #0x1e
	bl FUN_ov0_020c0518
	b _020C0354
_020C0334:
	ldrb r0, [r5, #0x98]
	cmp r0, #0
	beq _020C0350
	mov r0, r5
	mov r1, #1
	mov r2, #0x1e
	bl FUN_ov0_020c05fc
_020C0350:
	strb r4, [r5, #0x98]
_020C0354:
	tst r6, #0x100
	beq _020C0380
	mov r1, #1
	strb r1, [r5, #0x99]
	tst r1, #0xff
	beq _020C03A0
	mov r0, r5
	sub r1, r1, #2
	mov r2, #0x1e
	bl FUN_ov0_020c0518
	b _020C03A0
_020C0380:
	ldrb r0, [r5, #0x99]
	cmp r0, #0
	beq _020C039C
	mov r0, r5
	mvn r1, #0
	mov r2, #0x1e
	bl FUN_ov0_020c05fc
_020C039C:
	strb r4, [r5, #0x99]
_020C03A0:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C03AC: .word unk_020A9C40
_020C03B0: .word gCameraController
	arm_func_end FUN_ov0_020c0238

	arm_func_start FUN_ov0_020c03b4
FUN_ov0_020c03b4: ; 0x020C03B4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	ldr r0, _020C046C ; =gCameraController
	mov r4, #0
	ldr r5, [r0]
	mov r7, #0x1000
	add r6, sp, #0x18
	str r4, [sp, #0x18]
	str r7, [sp, #0x1c]
	str r4, [sp, #0x20]
	mov r0, r5
	ldmia r6, {r1, r2, r3}
	bl FUN_ov16_020f7bb0
	mov r0, #4
	stmia sp, {r0, r4}
	mov r0, r5
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	str r7, [sp, #8]
	ldmia r6, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	ldr r6, _020C0470 ; =0x020A9C40
	mov r0, r6
	bl FUN_02045a60
	str r0, [sp, #0xc]
	mov r0, #2
	stmia sp, {r0, r4, r7}
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	add r1, sp, #0xc
	mov r0, r5
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	mov r0, r6
	bl FUN_02045a70
	movs r1, r0
	mov r4, #0x1000
	moveq r1, #0x7000
	mov r0, r5
	mov r2, #2
	mov r3, #0
	str r4, [sp]
	bl FUN_ov16_020f7b50
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C046C: .word gCameraController
_020C0470: .word unk_020A9C40
	arm_func_end FUN_ov0_020c03b4

	arm_func_start FUN_ov0_020c0474
FUN_ov0_020c0474: ; 0x020C0474
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	cmp r1, #0
	beq _020C0498
	ldr r0, _020C04EC ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
_020C0498:
	ldr r0, _020C04F0 ; =g2DAdventureLogic
	ldr r2, _020C04F4 ; =gCameraController
	mov r4, #0
	ldr r0, [r0]
	ldr r5, [r2]
	mov r1, r4
	bl FUN_020552dc
	movs r2, r0
	cmpne r5, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, #4
	stmia sp, {r0, r4}
	mov r1, #0x1000
	str r1, [sp, #8]
	add r1, r2, #0x84
	mov r0, r5
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020C04EC: .word unk_020AF81C
_020C04F0: .word g2DAdventureLogic
_020C04F4: .word gCameraController
	arm_func_end FUN_ov0_020c0474

	arm_func_start FUN_ov0_020c04f8
FUN_ov0_020c04f8: ; 0x020C04F8
	stmfd sp!, {r4, lr}
	mov r2, r1
	mov r1, #0
	mov r4, r0
	bl FUN_ov0_020c05fc
	mov r0, #1
	strb r0, [r4, #0x9a]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c04f8

	arm_func_start FUN_ov0_020c0518
FUN_ov0_020c0518: ; 0x020C0518
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r0, _020C05F8 ; =gCameraController
	mov r6, r1
	ldr r4, [r0]
	mov r5, r2
	mov r0, r4
	bl FUN_ov16_020f7c34
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	cmp r6, #0
	ble _020C0558
	ldr r0, [sp, #0x10]
	add r0, r0, #0x1000
	b _020C056C
_020C0558:
	movge r0, #0
	strge r0, [sp, #0x10]
	bge _020C0578
	ldr r0, [sp, #0x10]
	sub r0, r0, #0x1000
_020C056C:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x10]
_020C0578:
	ldr r0, [sp, #0x10]
	cmp r0, #0x2000
	ble _020C05A0
	cmp r0, #0xe000
	bge _020C05A0
	cmp r6, #0
	movgt r0, #0x2000
	strgt r0, [sp, #0x10]
	movle r0, #0xe000
	strle r0, [sp, #0x10]
_020C05A0:
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _020C05C0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020C05CC
_020C05C0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020C05CC:
	bl _ffix
	mov r1, #2
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, sp, #0xc
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_020C05F8: .word gCameraController
	arm_func_end FUN_ov0_020c0518

	arm_func_start FUN_ov0_020c05fc
FUN_ov0_020c05fc: ; 0x020C05FC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r3, _020C06A8 ; =gCameraController
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	mov r4, r2
	bl FUN_ov16_020f7c34
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	cmp r5, #0
	ble _020C0648
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	b _020C0660
_020C0648:
	ldrlt r0, [sp, #4]
	movlt r0, r0, lsl #0x10
	movlt r0, r0, lsr #0x10
	strlt r0, [sp, #4]
	movge r0, #0
	strge r0, [sp, #4]
_020C0660:
	ldr r0, [sp, #4]
	cmp r0, #0x2000
	ble _020C0688
	cmp r0, #0xe000
	bge _020C0688
	cmp r5, #0
	movgt r0, #0x2000
	strgt r0, [sp, #4]
	movle r0, #0xe000
	strle r0, [sp, #4]
_020C0688:
	ldr r1, [sp, #4]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r2, r4
	mov r1, r1, lsr #0x10
	bl FUN_ov0_020c06ac
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C06A8: .word gCameraController
	arm_func_end FUN_ov0_020c05fc

	arm_func_start FUN_ov0_020c06ac
FUN_ov0_020c06ac: ; 0x020C06AC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r0, _020C0738 ; =gCameraController
	mov r6, r1
	ldr r4, [r0]
	mov r5, r2
	mov r0, r4
	bl FUN_ov16_020f7c34
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	and r0, r6, #0xf000
	str r0, [sp, #0x10]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _020C0700
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020C070C
_020C0700:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020C070C:
	bl _ffix
	mov r1, #2
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, sp, #0xc
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_020C0738: .word gCameraController
	arm_func_end FUN_ov0_020c06ac

	arm_func_start FUN_ov0_020c073c
FUN_ov0_020c073c: ; 0x020C073C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _020C0784 ; =g2DAdventureLogic
	mov r5, #0
	ldr r0, [r4]
	mov r1, r5
	bl FUN_020552dc
	cmp r0, #0
	beq _020C077C
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r4]
	mov r2, r5
	bl FUN_02055720
_020C077C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020C0784: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c073c

	arm_func_start FUN_ov0_020c0788
FUN_ov0_020c0788: ; 0x020C0788
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r5, r1
	mov r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020C08F8 ; =g2DAdventureLogic
	mov r7, #0
	ldr r0, [r4]
	mov r1, r7
	bl FUN_020552dc
	ldr r0, [r4]
	bl FUN_ov0_020cd1ac
	cmp r0, #0
	beq _020C07D8
	mov r0, #8
	bl _ZN8Graphics16FadeScreensWhiteEl
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov0_020cd1a0
	b _020C07E0
_020C07D8:
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
_020C07E0:
	ldr r0, [r6, #0xa0]
	ldr r2, _020C08FC ; =0x88888889
	add r0, r0, #0x3e4
	add r0, r0, #0x3800
	sub r3, r5, r0
	smull r1, r7, r2, r3
	mov r0, r3, lsr #0x1f
	add r7, r3, r7
	add r7, r0, r7, asr #6
	umull r0, r2, r7, r2
	ldr r4, _020C0900 ; =0x020A9C40
	add r1, r5, #0x22
	mov r0, r4
	mov r2, r2, lsr #6
	bl FUN_02045938
	ldrsb r1, [r5, #0x20]
	mov r0, r4
	bl FUN_02045974
	mov r12, r5
	add r9, r6, #0x20
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r9, {r0, r1, r2, r3}
	ldrb r1, [r5, #0x20]
	ldrb r0, [r5, #0x21]
	add r8, r5, #0x22
	add r7, r6, #0x42
	mov r4, #0x10
	strb r1, [r6, #0x40]
	strb r0, [r6, #0x41]
_020C085C:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r4, r4, #1
	strb r0, [r7, #1]
	strb r1, [r7], #2
	bne _020C085C
	ldrsb r0, [r5, #0x42]
	add r9, r5, #0x44
	add r8, r6, #0x64
	strb r0, [r6, #0x62]
	ldrsb r0, [r5, #0x43]
	mov r7, #1
	mov lr, #0
	strb r0, [r6, #0x63]
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	mov r12, #0xe
	ldr r4, _020C08F8 ; =g2DAdventureLogic
	ldmia r9, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r0, [r5, #0x74]
	mov r1, r5
	str r0, [r6, #0x94]
	strb lr, [r6, #0x1b]
	str r12, [r6, #8]
	strb r7, [r6, #0x1f]
	strb r7, [r6, #0x17]
	strb r7, [r6, #0x14]
	strb r7, [r6, #0x15]
	strb r7, [r6, #0x16]
	strb r7, [r6, #0x18]
	strb r7, [r6, #0x1a]
	ldr r0, [r4]
	bl FUN_ov0_020ccdbc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C08F8: .word g2DAdventureLogic
_020C08FC: .word 0x88888889
_020C0900: .word unk_020A9C40
	arm_func_end FUN_ov0_020c0788

	arm_func_start FUN_ov0_020c0904
FUN_ov0_020c0904: ; 0x020C0904
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _020C0AE4 ; =g2DAdventureLogic
	mov r7, r0
	ldr r0, [r2]
	mov r5, #0
	mov r6, r1
	mov r1, r5
	ldr r8, _020C0AE8 ; =0x020AF81C
	bl FUN_020552dc
	mov r4, r0
	cmp r6, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r6, #0x20]
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _020C0A48
_020C0954: ; jump table
	b _020C0A48 ; case 0
	b _020C09A4 ; case 1
	b _020C09A4 ; case 2
	b _020C09D0 ; case 3
	b _020C09D0 ; case 4
	b _020C0A48 ; case 5
	b _020C09F4 ; case 6
	b _020C0A48 ; case 7
	b _020C0A30 ; case 8
	b _020C0A40 ; case 9
	b _020C0A28 ; case 10
	b _020C0A48 ; case 11
	b _020C0A48 ; case 12
	b _020C0A04 ; case 13
	b _020C09D0 ; case 14
	b _020C0A38 ; case 15
	b _020C09A4 ; case 16
	b _020C09AC ; case 17
	b _020C09B8 ; case 18
	b _020C09C4 ; case 19
_020C09A4:
	mov r5, #0xe
	b _020C0A50
_020C09AC:
	ldr r0, _020C0AE8 ; =0x020AF81C
	bl FUN_ov131_0214a594
	b _020C0A50
_020C09B8:
	ldr r0, _020C0AE8 ; =0x020AF81C
	bl FUN_ov131_0214a770
	b _020C0A50
_020C09C4:
	ldr r0, _020C0AE8 ; =0x020AF81C
	bl FUN_ov131_0214a894
	b _020C0A50
_020C09D0:
	mov r0, r8
	bl FUN_02044560
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r6
	bl FUN_ov131_02149e50
	b _020C0A50
_020C09F4:
	ldr r0, _020C0AE8 ; =0x020AF81C
	mov r1, r6
	bl FUN_ov131_02149b4c
	b _020C0A50
_020C0A04:
	ldr r0, _020C0AEC ; =gDungeonManager
	ldr r1, [r6, #0x30]
	ldr r0, [r0]
	bl FUN_ov16_020f8868
	ldr r1, [r6, #0x30]
	ldr r0, _020C0AF0 ; =0x020A9C40
	sub r1, r1, #1
	bl FUN_0204595c
	b _020C0A50
_020C0A28:
	mov r5, #0x17
	b _020C0A50
_020C0A30:
	mov r5, #0x15
	b _020C0A50
_020C0A38:
	mov r5, #0x16
	b _020C0A50
_020C0A40:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0A48:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0A50:
	ldrsh r1, [r6, #0x22]
	ldr r0, _020C0AF0 ; =0x020A9C40
	bl FUN_02045588
	cmp r5, #0
	bne _020C0A80
	ldr r1, [r7, #4]
	ldr r0, _020C0AE8 ; =0x020AF81C
	bl FUN_02044de0
	cmp r0, #0
	bne _020C0AA4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0A80:
	mov r6, #0
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, r6
	bl FUN_ov0_020c1814
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0AA4:
	mov r0, r4
	bl FUN_02054314
	mov r1, r0
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_0205431c
	cmp r4, #0
	beq _020C0ADC
	mov r0, r4
	bl FUN_020542a8
	ldr r2, _020C0AE4 ; =g2DAdventureLogic
	mov r1, r0
	ldr r0, [r2]
	bl FUN_0205586c
_020C0ADC:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0AE4: .word g2DAdventureLogic
_020C0AE8: .word unk_020AF81C
_020C0AEC: .word gDungeonManager
_020C0AF0: .word unk_020A9C40
	arm_func_end FUN_ov0_020c0904

	arm_func_start FUN_ov0_020c0af4
FUN_ov0_020c0af4: ; 0x020C0AF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xe8
	str r0, [sp, #0xc]
	mov r0, #0
	ldr r1, _020C1118 ; =g2DAdventureLogic
	str r0, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl FUN_020552dc
	cmp r0, #0
	ldreq r0, [sp, #0x24]
	addeq sp, sp, #0xe8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0205430c
	ldr r1, [sp, #0xc]
	mov r5, r0
	ldr r1, [r1, #0xa0]
	ldr r0, [sp, #0x24]
	add r1, r1, #0x364
	str r0, [sp, #0x20]
	add r6, r1, #0x4000
	b _020C10F4
_020C0B4C:
	ldr r0, [sp, #0xc]
	ldrsh r2, [r6, #0x22]
	ldr r0, [r0, #0xa0]
	ldrb r1, [r6, #0x20]
	add r0, r0, #0x164
	add r3, r0, #0x5000
	mov r0, #0x50
	smlabb r7, r2, r0, r3
	cmp r1, #0x15
	bne _020C10E4
	ldr r0, _020C111C ; =0x020A9C40
	bl FUN_02045a60
	mov r10, #0xc
	str r0, [r7, #4]
	mov r4, #0
	ldr r1, _020C1120 ; =0x020D4E9C
	add r0, sp, #0x88
	mov r9, r10
	mov r8, r10
	b _020C0C74
_020C0B9C:
	ldr r2, [r7]
	add r3, r4, r4, lsl #1
	ldrsb r12, [r1, r3]
	ldr r3, [r2, #0xc]
	ldr r11, [r2, #0x10]
	ldr r2, [r2, #0x14]
	add r3, r3, r3, lsr #31
	add r2, r2, r2, lsr #31
	mov r3, r3, asr #1
	mov r2, r2, asr #1
	add r3, r3, #0x4000
	add r2, r2, #0x4000
	cmp r12, #0x2d
	str r2, [sp, #0x84]
	add r11, r11, r11, lsr #31
	mov r11, r11, asr #1
	add r11, r11, #0x4000
	str r3, [sp, #0x7c]
	rsbeq r2, r3, #0
	streq r2, [sp, #0x7c]
	add r2, r4, r4, lsl #1
	add r2, r1, r2
	ldrsb r2, [r2, #1]
	str r11, [sp, #0x80]
	mul r3, r4, r10
	ldr r12, [r7]
	cmp r2, #0x2d
	ldr r2, [r12]
	ldr r11, [sp, #0x7c]
	ldr r12, [r7]
	add r2, r2, r11
	str r2, [r0, r3]
	ldreq r2, [sp, #0x80]
	mla r3, r4, r9, r0
	rsbeq r2, r2, #0
	streq r2, [sp, #0x80]
	add r2, r4, r4, lsl #1
	add r2, r1, r2
	ldrsb r2, [r2, #2]
	ldr r11, [sp, #0x80]
	cmp r2, #0x2d
	ldr r2, [r12, #4]
	add r2, r2, r11
	str r2, [r3, #4]
	ldreq r2, [sp, #0x84]
	ldr r11, [r7]
	rsbeq r2, r2, #0
	streq r2, [sp, #0x84]
	mla r2, r4, r8, r0
	ldr r3, [sp, #0x84]
	ldr r11, [r11, #8]
	add r4, r4, #1
	add r3, r11, r3
	str r3, [r2, #8]
_020C0C74:
	cmp r4, #8
	blt _020C0B9C
	ldr r1, [sp, #0x88]
	ldr r0, [sp, #0xac]
	sub r0, r1, r0
	bl labs
	ldr r2, [sp, #0x8c]
	ldr r1, [sp, #0xbc]
	mov r9, r0
	sub r0, r2, r1
	bl labs
	ldr r2, [sp, #0x90]
	ldr r1, [sp, #0x9c]
	mov r8, r0
	sub r0, r2, r1
	bl labs
	ldr r2, [sp, #0x88]
	ldr r1, [r5]
	mov r4, r0
	sub r0, r2, r1
	bl labs
	str r0, [sp, #0x58]
	ldr r1, [sp, #0xac]
	ldr r0, [r5]
	sub r0, r1, r0
	bl labs
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	cmp r1, r9
	cmple r0, r9
	bgt _020C10E4
	ldr r1, [sp, #0x8c]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x60]
	ldr r1, [sp, #0xbc]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	bl labs
	ldr r1, [sp, #0x60]
	str r0, [sp, #0x64]
	cmp r1, r8
	bgt _020C10E4
	cmp r0, r8
	mov r11, #0
	bgt _020C10E4
	ldr r1, [sp, #0x90]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x9c]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	bl labs
	ldr r1, [sp, #0x68]
	str r0, [sp, #0x6c]
	cmp r1, r4
	cmple r0, r4
	bgt _020C10E4
	ldr r2, [r7, #0x20]
	ldr r0, [r7, #0x2c]
	ldr r4, [r7, #4]
	ldr r3, [r7, #0xc]
	ldr r1, _020C1124 ; =gCameraController
	sub r0, r2, r0
	str r4, [sp, #0x4c]
	str r11, [sp, #0x50]
	str r3, [sp, #0x54]
	ldr r10, [r1]
	bl labs
	movs r4, r0
	add r0, r4, #1
	str r0, [sp, #0x5c]
	str r0, [sp, #0x58]
	str r11, [sp, #0x60]
	beq _020C0DD8
	ldr r1, [r7, #0x20]
	ldr r0, [r5]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x58]
	ldr r1, [r7, #0x2c]
	ldr r0, [r5]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
_020C0DD8:
	ldr r1, [r7, #0x24]
	ldr r0, [r7, #0x30]
	sub r0, r1, r0
	bl labs
	movs r8, r0
	add r0, r8, #1
	str r0, [sp, #0x68]
	str r0, [sp, #0x64]
	str r11, [sp, #0x6c]
	beq _020C0E2C
	ldr r1, [r7, #0x24]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x64]
	ldr r1, [r7, #0x30]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
_020C0E2C:
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x34]
	sub r0, r1, r0
	bl labs
	movs r9, r0
	add r0, r9, #1
	str r0, [sp, #0x74]
	str r0, [sp, #0x70]
	str r11, [sp, #0x78]
	beq _020C0E80
	ldr r1, [r7, #0x28]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x70]
	ldr r1, [r7, #0x34]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	bl labs
	str r0, [sp, #0x74]
	str r0, [sp, #0x78]
_020C0E80:
	ldr r0, [sp, #0x58]
	cmp r4, r0
	blt _020C0E98
	ldr r0, [sp, #0x5c]
	cmp r4, r0
	bge _020C0EC0
_020C0E98:
	ldr r0, [sp, #0x64]
	cmp r8, r0
	ldrge r0, [sp, #0x68]
	cmpge r8, r0
	bge _020C0EC0
	ldr r0, [sp, #0x70]
	cmp r9, r0
	ldrge r0, [sp, #0x74]
	cmpge r9, r0
	blt _020C1028
_020C0EC0:
	mov r0, r4
	bl _dflt
	mov r11, #0
	mov r4, #0x40000000
	mov r2, r11
	mov r3, r4
	bl pow
	str r0, [sp, #0x28]
	mov r0, r9
	mov r9, r1
	bl _dflt
	mov r2, r11
	mov r3, r4
	bl pow
	str r0, [sp, #0x2c]
	mov r0, r8
	mov r8, r1
	bl _dflt
	mov r2, r11
	mov r3, r4
	bl pow
	str r0, [sp, #0x30]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, r9
	mov r3, r8
	bl _dadd
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	bl _dadd
	bl _dsqrt
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x14]
	bl _dflt
	mov r2, r11
	mov r3, r4
	bl pow
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x78]
	mov r9, r1
	bl _dflt
	mov r2, r11
	mov r3, r4
	bl pow
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x6c]
	mov r8, r1
	bl _dflt
	mov r2, r11
	mov r3, r4
	bl pow
	str r0, [sp, #0x40]
	mov r3, r8
	mov r8, r1
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	mov r1, r9
	bl _dadd
	ldr r2, [sp, #0x40]
	mov r3, r8
	bl _dadd
	bl _dsqrt
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x14]
	bl _ddiv
	mov r2, r0
	mov r3, r1
	mov r0, r11
	sub r1, r4, #0x100000
	bl _dsub
	mov r8, r1
	ldr r1, [r7, #4]
	mov r4, r0
	rsb r1, r1, #0
	ldr r0, [r7, #0x3c]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x6c]
	str r0, [sp, #0x68]
	bl _dflt
	mov r2, r4
	mov r3, r8
	bl _dmul
	bl _dfix
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x68]
	b _020C109C
_020C1028:
	mov r4, #0
	add r2, sp, #0x58
	mov r0, r4
	mov r1, r4
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	mov r0, r10
	bl FUN_ov16_020f7c34
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C109C
	rsb r0, r1, #0x10000
	cmp r1, r0
	bgt _020C107C
	subs r0, r1, #0x400
	str r0, [sp, #0x50]
	strmi r4, [sp, #0x50]
	b _020C108C
_020C107C:
	add r0, r1, #0x400
	str r0, [sp, #0x50]
	cmp r0, #0x10000
	strgt r4, [sp, #0x50]
_020C108C:
	ldr r0, [sp, #0x50]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x50]
_020C109C:
	ldr r2, [sp, #0x4c]
	ldr r1, [sp, #0x68]
	mov r0, #2
	add r3, r2, r1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r2, #0x1000
	add r1, sp, #0x4c
	mov r0, r10
	str r3, [sp, #0x4c]
	str r2, [sp, #8]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	mov r1, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x24]
	strb r1, [r0, #0x9e]
_020C10E4:
	ldr r0, [sp, #0x20]
	add r6, r6, #0x38
	add r0, r0, #1
	str r0, [sp, #0x20]
_020C10F4:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0xa0]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _020C0B4C
	ldr r0, [sp, #0x24]
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1118: .word g2DAdventureLogic
_020C111C: .word unk_020A9C40
_020C1120: .word ov0_020D4E9C
_020C1124: .word gCameraController
	arm_func_end FUN_ov0_020c0af4

	arm_func_start FUN_ov0_020c1128
FUN_ov0_020c1128: ; 0x020C1128
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #2
	mov r4, #1
	mov r6, r0
	mov r1, r5
	mov r2, r4
	bl FUN_ov0_020c12d4
	mov r1, r0
	mov r0, r6
	bl FUN_ov0_020c073c
	cmp r0, #0
	beq _020C116C
	ldr r0, _020C11D4 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020C116C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov0_020c1360
	mov r1, r0
	mov r0, r6
	bl FUN_ov0_020c0788
	cmp r0, #0
	beq _020C11A4
	ldr r0, _020C11D4 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020C11A4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov0_020c14bc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C11D4 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020C11D4: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c1128

	arm_func_start FUN_ov0_020c11d8
FUN_ov0_020c11d8: ; 0x020C11D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r3, [r6, #0x144]
	mov r5, #0
	cmp r3, #0
	beq _020C1268
	ldr r7, _020C12D0 ; =g2DAdventureLogic
	mov r1, r5
	ldr r0, [r7]
	bl FUN_020552dc
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xa0]
	ldr r1, [r6, #0x148]
	add r0, r0, #0x364
	add r2, r0, #0x4000
	mov r0, #0x38
	mla r0, r1, r0, r2
	str r0, [r6, #0x150]
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov0_020cb9b4
	ldr r1, [r6, #0x150]
	add r2, sp, #0
	add r0, r4, #0x84
	bl FUN_02053554
	ldrh r1, [sp]
	mov r0, r4
	bl FUN_02054398
	mov r0, #1
	strb r0, [r4, #0x69]
	strb r0, [r6, #0x14c]
	strb r5, [r6, #0x144]
	strb r5, [r6, #0x154]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C1268:
	tst r1, r2
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, #0x8000
	bl FUN_ov0_020bffc8
	mov r4, #2
	mov r0, r6
	mov r2, r4
	mov r1, #8
	bl FUN_ov0_020c1360
	mov r1, r0
	mov r0, r6
	bl FUN_ov0_020c0788
	cmp r0, #0
	movne r5, #1
	bne _020C12C0
	mov r0, r6
	mov r2, r4
	mov r1, #0xa
	bl FUN_ov0_020c14bc
	cmp r0, #0
	movne r5, #1
_020C12C0:
	mov r0, r6
	bl FUN_ov0_020bffbc
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C12D0: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c11d8

	arm_func_start FUN_ov0_020c12d4
FUN_ov0_020c12d4: ; 0x020C12D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	cmp r2, #1
	mov r6, r1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020C135C ; =g2DAdventureLogic
	mov r5, #0
	ldr r0, [r0]
	mov r1, r5
	bl FUN_020552dc
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0xa0]
	add r0, r0, #0x39c
	add r8, r0, #0x3800
	b _020C1344
_020C131C:
	mov r0, r7
	mov r1, r8
	add r2, r4, #0x78
	add r3, r4, #0x84
	bl FUN_ov0_020c16dc
	cmp r6, r0
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	add r8, r8, #0x24
_020C1344:
	ldr r0, [r7, #0xa0]
	ldr r0, [r0, #4]
	cmp r5, r0
	blt _020C131C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C135C: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c12d4

	arm_func_start FUN_ov0_020c1360
FUN_ov0_020c1360: ; 0x020C1360
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r3, _020C14B4 ; =g2DAdventureLogic
	mov r10, r0
	ldr r0, [r3]
	mov r4, #0
	mov r9, r1
	mov r1, r4
	mov r8, r2
	bl FUN_020552dc
	ldr r6, _020C14B8 ; =0x020A9C40
	mov r7, r0
	mov r0, r6
	bl FUN_02045968
	movs r5, r0
	bmi _020C13C8
	mov r0, r6
	sub r1, r4, #1
	bl FUN_0204595c
	ldr r1, [r10, #0xa0]
	ldr r0, [r1, #8]
	cmp r5, r0
	addlt r0, r1, #0x3e4
	addlt r1, r0, #0x3800
	movlt r0, #0x78
	mlalt r0, r5, r0, r1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C13C8:
	ldr r0, _020C14B8 ; =0x020A9C40
	bl FUN_02045a00
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xa0]
	mov r5, #0
	add r0, r0, #0x3e4
	add r6, r0, #0x3800
	mov r11, #1
	b _020C149C
_020C13FC:
	ldrsb r0, [r6, #0x42]
	cmp r0, #0
	beq _020C1414
	cmp r0, #1
	beq _020C1420
	b _020C1494
_020C1414:
	cmp r8, #1
	bne _020C1494
	b _020C1474
_020C1420:
	mov r0, r10
	mov r1, r4
	bl FUN_ov0_020c2da8
	cmp r0, #0
	beq _020C146C
	mov r0, r10
	mov r1, r6
	add r2, r7, #0x78
	add r3, r7, #0x84
	bl FUN_ov0_020c16dc
	cmp r0, #2
	cmpne r0, #8
	bne _020C146C
	mov r0, r10
	mov r1, r4
	mov r2, r11
	add r3, r7, #0x84
	str r4, [sp]
	bl FUN_ov0_020c2c10
_020C146C:
	cmp r8, #2
	bne _020C1494
_020C1474:
	mov r0, r10
	mov r1, r6
	add r2, r7, #0x78
	add r3, r7, #0x84
	bl FUN_ov0_020c16dc
	tst r9, r0
	movne r0, r6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1494:
	add r5, r5, #1
	add r6, r6, #0x78
_020C149C:
	ldr r0, [r10, #0xa0]
	ldr r0, [r0, #8]
	cmp r5, r0
	blt _020C13FC
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C14B4: .word g2DAdventureLogic
_020C14B8: .word unk_020A9C40
	arm_func_end FUN_ov0_020c1360

	arm_func_start FUN_ov0_020c14bc
FUN_ov0_020c14bc: ; 0x020C14BC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, _020C16D4 ; =g2DAdventureLogic
	mov r11, #0
	mov r9, r1
	ldr r0, [r0]
	mov r1, r11
	str r2, [sp, #4]
	bl FUN_020552dc
	movs r8, r0
	addeq sp, sp, #0xc
	moveq r0, r11
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xa0]
	mov r5, r11
	add r0, r0, #0x364
	add r6, r0, #0x4000
	b _020C16B8
_020C1508:
	ldrb r1, [r6, #0x20]
	mov r0, r10
	mov r7, #0
	bl FUN_ov0_020bffd0
	cmp r0, #0
	beq _020C16B0
	ldrb r0, [r6, #0x20]
	cmp r0, #2
	cmpne r0, #0x10
	cmpne r0, #3
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #6
	cmpne r0, #4
	beq _020C154C
	cmp r0, #0xe
	bne _020C1650
_020C154C:
	ldrb r0, [r6, #0x20]
	cmp r0, #0x10
	beq _020C15B4
	ldr lr, [r6, #0x24]
	ldrh r1, [r8, #0x6a]
	mov r2, lr, asr #0x1f
	str r2, [sp, #8]
	ldr r2, _020C16D8 ; =0x0B60B60B
	mov r0, r10
	umull r12, r2, lr, r2
	adds r12, r12, #0
	mov r12, #0xb6
	mla r2, lr, r12, r2
	ldr lr, [sp, #8]
	ldr r12, _020C16D8 ; =0x0B60B60B
	mov r3, #0x2000
	mla r2, lr, r12, r2
	adc r2, r2, #0x800
	mov r2, r2, lsl #4
	mov r2, r2, lsr #0x10
	add r2, r2, #0x8000
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov0_020c17e8
	cmp r0, #0
	beq _020C16B0
_020C15B4:
	mov r0, r10
	mov r1, #0
	bl FUN_ov0_020c2da8
	cmp r0, #0
	beq _020C1640
	cmp r7, #0
	bne _020C15EC
	mov r0, r10
	mov r1, r6
	add r2, r8, #0x78
	add r3, r8, #0x84
	mov r7, #1
	bl FUN_ov0_020c16dc
	mov r4, r0
_020C15EC:
	cmp r4, #2
	beq _020C15FC
	cmp r4, #8
	bne _020C1640
_020C15FC:
	ldrb r2, [r6, #0x21]
	cmp r2, #0
	beq _020C1640
	ldrb r0, [r6, #0x20]
	mov r1, #0
	cmp r0, #4
	cmpne r0, #0xe
	bne _020C162C
	ldrsh r3, [r6, #0x22]
	mov r0, r10
	bl FUN_ov0_020c2d18
	b _020C1640
_020C162C:
	mov r0, #0
	str r0, [sp]
	mov r0, r10
	add r3, r8, #0x84
	bl FUN_ov0_020c2c10
_020C1640:
	ldr r0, [sp, #4]
	cmp r0, #2
	bne _020C16B0
	b _020C1658
_020C1650:
	cmp r0, #0x11
	moveq r4, r9
_020C1658:
	cmp r7, #0
	bne _020C1678
	mov r0, r10
	mov r1, r6
	add r2, r8, #0x78
	add r3, r8, #0x84
	bl FUN_ov0_020c16dc
	mov r4, r0
_020C1678:
	tst r4, r9
	beq _020C16B0
	mov r0, r10
	mov r1, r6
	bl FUN_ov0_020c0904
	cmp r0, #0
	beq _020C16B0
	mov r0, r10
	add r11, r11, #1
	bl FUN_ov0_020c4c80
	ldr r0, _020C16D4 ; =g2DAdventureLogic
	and r1, r5, #0xff
	ldr r0, [r0]
	bl FUN_ov0_020ccdb0
_020C16B0:
	add r5, r5, #1
	add r6, r6, #0x38
_020C16B8:
	ldr r0, [r10, #0xa0]
	ldr r0, [r0, #0xc]
	cmp r5, r0
	blt _020C1508
	mov r0, r11
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C16D4: .word g2DAdventureLogic
_020C16D8: .word 0x0B60B60B
	arm_func_end FUN_ov0_020c14bc

	arm_func_start FUN_ov0_020c16dc
FUN_ov0_020c16dc: ; 0x020C16DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	ldr r4, [r7, #0x1c]
	mov r8, r0
	tst r4, #1
	mov r6, r2
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	mov r2, r3
	mov r3, r4
	bl FUN_ov0_020c1760
	mov r5, r0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl FUN_ov0_020c1760
	cmp r5, #0
	beq _020C1738
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020C1738:
	cmp r5, #0
	bne _020C174C
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_020C174C:
	cmp r5, #0
	cmpne r0, #0
	movne r0, #8
	moveq r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov0_020c16dc

	arm_func_start FUN_ov0_020c1760
FUN_ov0_020c1760: ; 0x020C1760
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	cmp r1, #0
	cmpne r2, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #0
	str r3, [sp]
	bge _020C17A4
	mov r0, r2
	ldr r2, [r1, #0xc]
	ldr r3, [r1, #0x10]
	bl FUN_02053efc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020C17A4:
	ldr r12, [r1, #0x18]
	ldr r3, _020C17E4 ; =0x0B60B60B
	mov r0, #0xb6
	umull r4, lr, r12, r3
	mla lr, r12, r0, lr
	mov r12, r12, asr #0x1f
	mov r0, r2
	mla lr, r12, r3, lr
	adds r2, r4, #0
	adc r2, lr, #0x800
	mov r3, r2, lsl #4
	add r2, r1, #0xc
	mov r3, r3, lsr #0x10
	bl FUN_02053df0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020C17E4: .word 0x0B60B60B
	arm_func_end FUN_ov0_020c1760

	arm_func_start FUN_ov0_020c17e8
FUN_ov0_020c17e8: ; 0x020C17E8
	sub r0, r1, r2
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0x8000
	rsbge r0, r0, #0x10000
	movge r0, r0, lsl #0x10
	movge r0, r0, lsr #0x10
	cmp r0, r3
	movle r0, #1
	movgt r0, #0
	bx lr
	arm_func_end FUN_ov0_020c17e8

	arm_func_start FUN_ov0_020c1814
FUN_ov0_020c1814: ; 0x020C1814
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r12, [r5, #4]
	ldr r0, _020C184C ; =0x020AF81C
	str r12, [sp]
	bl FUN_02044798
	movs r4, r0
	beq _020C1844
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl FUN_ov0_020c0238
_020C1844:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C184C: .word unk_020AF81C
	arm_func_end FUN_ov0_020c1814

	arm_func_start FUN_ov0_020c1850
FUN_ov0_020c1850: ; 0x020C1850
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	ldr r0, [r9, #8]
	mov r8, r1
	cmp r0, #0xd
	mov r10, r2
	mov r5, #1
	mov r6, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _020C2110 ; =gSprButtonCtrl
	cmp r0, #0xb
	moveq r8, r6
	ldr r0, [r4]
	add r2, sp, #0
	mov r1, r8
	moveq r10, r8
	bl FUN_ov16_0210ec34
	cmp r0, #0
	beq _020C18B0
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_ov16_0210ef88
_020C18B0:
	mov r0, r8
	ldr r4, _020C2114 ; =0x0209A454
	bl FUN_ov0_020befa0
	mov r7, r0
	cmp r7, #0
	ble _020C20C0
	cmp r7, #1
	cmpne r7, #0x16
	beq _020C18E0
	ldr r0, _020C2118 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer10playEffectEi
_020C18E0:
	cmp r7, #0x1c
	addls pc, pc, r7, lsl #2
	b _020C20B8
_020C18EC: ; jump table
	b _020C20B8 ; case 0
	b _020C20B8 ; case 1
	b _020C19CC ; case 2
	b _020C1A38 ; case 3
	b _020C1AA4 ; case 4
	b _020C1BE8 ; case 5
	b _020C1C54 ; case 6
	b _020C1CB0 ; case 7
	b _020C1D70 ; case 8
	b _020C1CF0 ; case 9
	b _020C1F0C ; case 10
	b _020C1FE8 ; case 11
	b _020C1F68 ; case 12
	b _020C20B8 ; case 13
	b _020C1ED8 ; case 14
	b _020C20B8 ; case 15
	b _020C1B10 ; case 16
	b _020C20B8 ; case 17
	b _020C1960 ; case 18
	b _020C2014 ; case 19
	b _020C1B7C ; case 20
	b _020C1FA8 ; case 21
	b _020C1EEC ; case 22
	b _020C2080 ; case 23
	b _020C1D30 ; case 24
	b _020C1DB4 ; case 25
	b _020C1DFC ; case 26
	b _020C1E44 ; case 27
	b _020C1E8C ; case 28
_020C1960:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x71
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C19CC:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x5d
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1A38:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x5c
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1AA4:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	strb r5, [r4, #0x33]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x5a
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1B10:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	strb r5, [r4, #0x30]
	strb r5, [r4, #0x33]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x5a
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1B7C:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x32]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	strb r5, [r4, #0x31]
	strb r5, [r4, #0x33]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x5a
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1BE8:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x5b
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1C54:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	mov r0, r9
	strb r6, [r4, #0x2b]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	str r6, [r4, #0x24]
	ldr r0, [r9, #4]
	mov r1, r6
	mov r2, #0x60
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1CB0:
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x63
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1CF0:
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x67
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1D30:
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x7d
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1D70:
	strb r6, [r4, #0x31]
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x62
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1DB4:
	ldr r0, _020C211C ; =0x02099E94
	strb r5, [r0]
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x72
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1DFC:
	bl FUN_ov0_020be414
	ldr r0, _020C2120 ; =0x020A1640
	str r6, [r4, #0x84]
	strb r6, [r0, #0x22]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x73
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1E44:
	bl FUN_ov0_020be414
	ldr r0, _020C2120 ; =0x020A1640
	str r6, [r4, #0x84]
	strb r5, [r0, #0x22]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x73
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1E8C:
	bl FUN_ov0_020be414
	ldr r0, _020C2120 ; =0x020A1640
	str r6, [r4, #0x84]
	mov r1, #2
	strb r1, [r0, #0x22]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x73
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1ED8:
	ldr r1, [r9, #4]
	ldr r0, _020C2124 ; =0x020AF81C
	bl FUN_02044de0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1EEC:
	mov r0, r5
	bl FUN_ov0_020bef7c
	ldr r0, _020C2128 ; =0x020A9C40
	mov r1, r5
	bl FUN_02045588
	add sp, sp, #4
	strb r5, [r9, #0x10b]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1F0C:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	strb r5, [r4, #0x31]
	bl FUN_ov0_020be414
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r9, #4]
	mov r1, r6
	mov r2, #0x68
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1F68:
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x6a
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1FA8:
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x74
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1FE8:
	bl FUN_ov0_020be414
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r9, #4]
	mov r1, #0
	mov r2, #0x6f
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C2014:
	bl FUN_ov0_020be414
	bl FUN_ov16_020f081c
	strb r5, [r4, #0x2e]
	strb r5, [r4, #0x2f]
	strb r6, [r4, #0x30]
	strb r6, [r4, #0x31]
	strb r6, [r4, #0x32]
	strb r6, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r6, [r4, #0x29]
	strb r5, [r4, #0x2a]
	strb r6, [r4, #0x2b]
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r7, [r9, #4]
	mov r4, #0x71
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C2080:
	bl FUN_ov0_020be414
	str r6, [r4, #0x84]
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	ldr r5, [r9, #4]
	mov r4, #0x78
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
_020C20B8:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C20C0:
	ldr r0, [r9, #0x10]
	cmp r0, #0
	beq _020C20E0
	cmp r0, #1
	cmpne r0, #2
	beq _020C20F8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C20E0:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_ov0_020c212c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C20F8:
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_ov0_020c225c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C2110: .word gSprButtonCtrl
_020C2114: .word unk_0209A454
_020C2118: .word gAudioPlayer
_020C211C: .word unk_02099E94
_020C2120: .word unk_020A1640
_020C2124: .word unk_020AF81C
_020C2128: .word unk_020A9C40
	arm_func_end FUN_ov0_020c1850

	arm_func_start FUN_ov0_020c212c
FUN_ov0_020c212c: ; 0x020C212C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r7, r1
	mov r6, r2
	mov r2, r5
	mov r1, #1
	mov r4, r0
	bl FUN_ov0_020c6d68
	cmp r0, #0
	moveq r7, r5
	moveq r6, r5
	tst r7, #8
	beq _020C2194
	ldr r0, _020C2250 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	mov r5, #1
	ldr r0, _020C2254 ; =0x0209A3E0
	mov r1, r5
	bl FUN_ov16_020fe47c
	cmp r0, #0
	beq _020C2194
	ldr r0, _020C2258 ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C2194:
	add r0, r4, #0xfa
	bl FUN_ov0_020bff34
	cmp r0, #0
	beq _020C21D4
	tst r7, #0x400
	beq _020C21D4
	ldr r0, _020C2250 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	mov r2, #1
	ldr r0, _020C2258 ; =gAudioPlayer
	mov r1, #6
	strb r2, [r4, #0x108]
	bl _ZN11AudioPlayer10playEffectEi
	mov r7, #0
	mov r6, r7
_020C21D4:
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_ov0_020c0238
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_ov0_020c0044
	cmp r0, #0
	beq _020C2214
	ldr r0, _020C2250 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C2214:
	mov r0, r4
	mov r1, r7
	mov r2, #1
	bl FUN_ov0_020c11d8
	cmp r0, #0
	beq _020C223C
	ldr r0, _020C2250 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C223C:
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_ov0_020c01e8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C2250: .word g2DAdventureLogic
_020C2254: .word unk_0209A3E0
_020C2258: .word gAudioPlayer
	arm_func_end FUN_ov0_020c212c

	arm_func_start FUN_ov0_020c225c
FUN_ov0_020c225c: ; 0x020C225C
	bx lr
	arm_func_end FUN_ov0_020c225c

	arm_func_start FUN_ov0_020c2260
FUN_ov0_020c2260: ; 0x020C2260
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C2304 ; =0x020A9C40
	mov r5, r0
	mov r0, r4
	bl FUN_02045950
	mov r1, r0
	mov r0, r5
	bl FUN_ov0_020c55e0
	ldr r1, [r5, #0xa0]
	ldr r0, _020C2308 ; =g3DDevice
	mov r5, #0
	ldrh r1, [r1, #0x18]
	ldr r0, [r0]
	mov r3, r5
	mov r2, #0x1f
	bl _ZN9C3DDevice13setClearColorEthi
	mov r0, r4
	bl FUN_020455ac
	tst r0, #8
	bne _020C22F8
	ldr r4, _020C230C ; =0x020AA044
	mov r1, r5
	add r0, r4, #0xcc
	mov r2, #0x28
	bl MI_CpuFill8
	mov r1, r5
	add r0, r4, #0xf4
	mov r2, #0x30
	bl MI_CpuFill8
	mov r2, #1
	mov r0, #0x14
	b _020C22EC
_020C22E0:
	mla r1, r5, r0, r4
	strb r2, [r1, #0xda]
	add r5, r5, #1
_020C22EC:
	cmp r5, #2
	blt _020C22E0
	ldmfd sp!, {r3, r4, r5, pc}
_020C22F8:
	mov r0, r4
	bl FUN_0204590c
	ldmfd sp!, {r3, r4, r5, pc}
_020C2304: .word unk_020A9C40
_020C2308: .word g3DDevice
_020C230C: .word unk_020AA044
	arm_func_end FUN_ov0_020c2260

	arm_func_start FUN_ov0_020c2310
FUN_ov0_020c2310: ; 0x020C2310
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r10, r0
	ldr r0, [r10, #0xa0]
	mov r7, #0
	add r1, r0, #0x1c
	mov r0, #0x770
	mla r9, r7, r0, r1
	b _020C2424
_020C2334:
	add r0, r9, #0x30
	mov r5, #0x74
	mla r1, r7, r5, r0
	ldr r4, _020C2438 ; =g3DGameMap
	ldr r0, [r4]
	bl FUN_0205d630
	add r1, r10, r7, lsl #2
	mla r3, r7, r5, r9
	str r0, [r1, #0xa4]
	ldr r0, [r3, #0x80]
	str r0, [sp]
	ldr r2, [r3, #0x78]
	ldr r0, [r4]
	ldr r1, [r1, #0xa4]
	ldr r3, [r3, #0x7c]
	bl FUN_0205e01c
	mov r8, #0
	add r5, r10, r7, lsl #2
	mov r6, #1
	b _020C23AC
_020C2384:
	str r6, [sp]
	ldr r1, [r10, #0xa0]
	ldr r0, [r4]
	add r1, r1, #0x1b4
	add r3, r1, #0x5000
	ldr r1, [r5, #0xa4]
	mov r2, r8
	add r3, r3, r8, lsl #5
	bl FUN_0205d8e4
	add r8, r8, #1
_020C23AC:
	ldr r0, [r10, #0xa0]
	ldr r0, [r0, #0x14]
	cmp r8, r0
	blt _020C2384
	mov r0, #0x74
	mul r3, r7, r0
	add r0, r9, r3
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _020C23F4
	ldr r0, _020C2438 ; =g3DGameMap
	add r1, r10, r7, lsl #2
	add r2, r9, #0x30
	ldr r0, [r0]
	ldr r1, [r1, #0xa4]
	add r2, r2, r3
	mov r3, #1
	bl FUN_0205daf0
_020C23F4:
	mov r0, #0x74
	mul r2, r7, r0
	add r0, r9, r2
	ldrsb r0, [r0, #0x50]
	cmp r0, #0
	beq _020C2420
	ldr r0, _020C2438 ; =g3DGameMap
	add r1, r9, #0x50
	ldr r0, [r0]
	add r1, r1, r2
	bl FUN_ov0_020cd1b8
_020C2420:
	add r7, r7, #1
_020C2424:
	ldr r0, [r9, #0x2c]
	cmp r7, r0
	blt _020C2334
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C2438: .word g3DGameMap
	arm_func_end FUN_ov0_020c2310

	arm_func_start FUN_ov0_020c243c
FUN_ov0_020c243c: ; 0x020C243C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x100
	mov r1, #0
	mov r2, #0x770
	ldr r3, [r0, #0xa0]
	mul r4, r1, r2
	ldr r0, _020C2480 ; =g2DAdventureLogic
	mov r2, r1
	ldr r0, [r0]
	add r5, r3, #0x1c
	bl FUN_020561f4
	ldr r1, _020C2484 ; =0x020D5AB8
	add r0, sp, #0
	add r2, r5, r4
	bl sprintf
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, pc}
_020C2480: .word g2DAdventureLogic
_020C2484: .word ov0_020D5AB8
	arm_func_end FUN_ov0_020c243c

	arm_func_start FUN_ov0_020c2488
FUN_ov0_020c2488: ; 0x020C2488
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r5, _020C252C ; =g2DAdventureLogic
	ldr r0, [r5]
	bl FUN_020553c0
	mov r10, r0
	mov r9, #0
	add r6, sp, #8
	add r11, sp, #4
	ldr r4, _020C2530 ; =g2DGChar
	b _020C251C
_020C24B4:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_02055408
	mov r8, r0
	ldr r0, [r5]
	mov r1, r8
	bl FUN_020552cc
	mov r7, r0
	ldr r0, [r5]
	mov r1, r8
	mov r2, r6
	mov r3, r11
	bl FUN_02055514
	ldrb r0, [r7, #0x67]
	mov r3, #0
	str r0, [sp]
	ldrh r2, [r7, #0xa8]
	ldr r0, [r4]
	ldr r1, [sp, #8]
	bl FUN_02056ed4
	ldr r0, [r5]
	ldr r2, _020C2534 ; =0x0000C350
	mov r1, r8
	mov r3, #3
	bl FUN_02055528
	add r9, r9, #1
_020C251C:
	cmp r9, r10
	blt _020C24B4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C252C: .word g2DAdventureLogic
_020C2530: .word g2DGChar
_020C2534: .word 0x0000C350
	arm_func_end FUN_ov0_020c2488

	arm_func_start FUN_ov0_020c2538
FUN_ov0_020c2538: ; 0x020C2538
	stmfd sp!, {r3, lr}
	ldr r0, _020C2588 ; =g3DGameMap
	ldr r0, [r0]
	bl FUN_0205de34
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020C258C ; =0x02099F10
	ldr r0, [r0]
	bl FUN_0205c4ec
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020C2590 ; =g3DGameMapObject
	ldr r0, [r0]
	bl FUN_0205f930
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020C2594 ; =g2DGChar
	ldr r0, [r0]
	bl FUN_020571ac
	ldmfd sp!, {r3, pc}
_020C2588: .word g3DGameMap
_020C258C: .word g3DGameEffect
_020C2590: .word g3DGameMapObject
_020C2594: .word g2DGChar
	arm_func_end FUN_ov0_020c2538

	arm_func_start FUN_ov0_020c2598
FUN_ov0_020c2598: ; 0x020C2598
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #0x100
	ldr r4, _020C25EC ; =g3DGameMap
	b _020C25E0
_020C25B0:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	ble _020C25DC
	ldr r0, [r4]
	bl FUN_0205dd38
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0xa4]
	mov r2, r5
	bl FUN_0205dea8
_020C25DC:
	add r6, r6, #1
_020C25E0:
	cmp r6, #0x10
	blt _020C25B0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C25EC: .word g3DGameMap
	arm_func_end FUN_ov0_020c2598

	arm_func_start FUN_ov0_020c25f0
FUN_ov0_020c25f0: ; 0x020C25F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r5, _020C26CC ; =g2DAdventureLogic
	ldr r0, [r5]
	bl FUN_020553c0
	mov r9, #0
	mov r10, r0
	mov r11, r9
	ldr r4, _020C26D0 ; =g2DGChar
	b _020C26BC
_020C2618:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_02055408
	mov r8, r0
	ldr r0, [r5]
	mov r1, r8
	bl FUN_020552cc
	mov r7, r0
	ldr r0, [r5]
	mov r1, r8
	bl FUN_02055324
	mov r6, r0
	ldr r0, [r5]
	mov r1, r8
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_02055514
	ldrb r0, [r7, #0x67]
	mov r3, r11
	str r0, [sp]
	ldrh r2, [r7, #0xa8]
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	bl FUN_02056ed4
	ldrh r0, [r7, #0xa8]
	mov r1, r6
	stmia sp, {r0, r11}
	ldrb r0, [r7, #0x67]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_02056b24
	mov r0, r7
	mov r1, #1
	bl FUN_02054424
	ldr r0, [r5]
	mov r1, r8
	mov r2, #1
	bl FUN_02055720
	add r9, r9, #1
_020C26BC:
	cmp r9, r10
	blt _020C2618
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C26CC: .word g2DAdventureLogic
_020C26D0: .word g2DGChar
	arm_func_end FUN_ov0_020c25f0

	arm_func_start FUN_ov0_020c26d4
FUN_ov0_020c26d4: ; 0x020C26D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r10, r0
	ldrb r0, [r10, #0x1f]
	cmp r0, #0
	bne _020C2710
	ldr r0, _020C29C8 ; =0x020A9C40
	bl FUN_020455ac
	tst r0, #4
	beq _020C2710
	mov r2, #0
	mov r0, r10
	mov r3, r2
	mov r1, #0xb
	bl FUN_ov0_020c1814
_020C2710:
	ldr r0, _020C29C8 ; =0x020A9C40
	bl FUN_020455ac
	tst r0, #2
	beq _020C2734
	mov r2, #0
	mov r0, r10
	mov r3, r2
	mov r1, #0xf
	bl FUN_ov0_020c1814
_020C2734:
	ldr r0, _020C29C8 ; =0x020A9C40
	bl FUN_020455ac
	tst r0, #8
	beq _020C2758
	mov r2, #0
	mov r0, r10
	mov r3, r2
	mov r1, #0x13
	bl FUN_ov0_020c1814
_020C2758:
	ldr r0, _020C29C8 ; =0x020A9C40
	mov r1, #0x17
	bl FUN_020455a0
	ldr r4, _020C29CC ; =g2DAdventureLogic
	ldr r0, [r4]
	bl FUN_02055c20
	ldrb r1, [r10, #0x1f]
	mov r8, r0
	cmp r1, #0
	beq _020C29B8
	ldr r0, [r4]
	ldr r1, [r8]
	bl FUN_020552cc
	ldr r4, [r10, #0x94]
	mov r11, r0
	cmp r4, #0
	ldrh r0, [r11, #0x6a]
	beq _020C27C8
	ldr r0, _020C29D0 ; =0x60DB9391
	ldr r1, _020C29D4 ; =0x000028BE
	umull r3, r2, r4, r0
	mla r2, r4, r1, r2
	mov r1, r4, asr #0x1f
	mla r2, r1, r0, r2
	adds r0, r3, #0
	adc r0, r2, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
_020C27C8:
	add r1, sp, #0x38
	add r2, sp, #0x40
	bl FUN_02053520
	ldr r2, [r10, #0x64]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x40]
	sub r1, r2, r1
	str r1, [sp, #0x38]
	ldr r1, [r10, #0x68]
	mov r9, #0
	str r1, [sp, #0x3c]
	ldr r1, [r10, #0x6c]
	mov r7, #1
	sub r0, r1, r0
	str r0, [sp, #0x40]
	ldr r6, _020C29CC ; =g2DAdventureLogic
	ldr r5, _020C29D4 ; =0x000028BE
	ldr r4, _020C29D0 ; =0x60DB9391
	b _020C2894
_020C2814:
	ldr r1, [sp, #0x3c]
	add r0, sp, #0x2c
	str r1, [sp]
	ldr r1, [sp, #0x40]
	stmib sp, {r1, r7}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, [r6]
	ldr r2, [r8, r9, lsl #2]
	ldr r3, [sp, #0x38]
	bl FUN_020555e8
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r2, [sp, #0x38]
	ldr r2, [r10, #0x94]
	cmp r2, #0
	beq _020C2890
	umull r0, r1, r2, r4
	mla r1, r2, r5, r1
	adds r0, r0, #0
	mov r0, r2, asr #0x1f
	mla r1, r0, r4, r1
	adc r0, r1, #0x800
	mov r1, r0, lsl #4
	ldr r0, [r6]
	mov r2, r1, lsr #0x10
	ldr r1, [r8, r9, lsl #2]
	bl FUN_02055558
_020C2890:
	add r9, r9, #1
_020C2894:
	ldr r0, [r8, #0x10]
	cmp r9, r0
	blt _020C2814
	ldr r1, [sp, #0x3c]
	mov r0, #1
	str r1, [sp]
	ldr r1, [sp, #0x40]
	ldr r4, _020C29CC ; =g2DAdventureLogic
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, [r4]
	ldr r2, [r8, #0x14]
	ldr r3, [sp, #0x38]
	add r0, sp, #0x20
	mov r5, #0
	bl FUN_020555e8
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldr r6, [r10, #0x94]
	cmp r6, #0
	beq _020C2934
	ldr r0, _020C29D0 ; =0x60DB9391
	ldr r1, _020C29D4 ; =0x000028BE
	umull r3, r2, r6, r0
	mla r2, r6, r1, r2
	mov r1, r6, asr #0x1f
	mla r2, r1, r0, r2
	adds r0, r3, #0
	adc r0, r2, #0x800
	mov r2, r0, lsl #4
	ldr r0, [r4]
	ldr r1, [r8, #0x14]
	mov r2, r2, lsr #0x10
	bl FUN_02055558
_020C2934:
	cmp r11, #0
	beq _020C29B8
	ldrh r0, [r11, #0x6a]
	add r1, sp, #0x38
	add r2, sp, #0x40
	bl FUN_02053520
	ldr r3, [sp, #0x40]
	ldr r2, [r11, #0x8c]
	ldr r0, [r11, #0x84]
	ldr r1, [sp, #0x38]
	add r2, r3, r2
	add r0, r1, r0
	str r0, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r2, [sp, #0x40]
	str r5, [sp]
	ldr r1, [sp, #0x40]
	mov r0, #1
	stmib sp, {r1, r5}
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020C29CC ; =g2DAdventureLogic
	ldr r2, [r8]
	ldr r1, [r0]
	ldr r3, [sp, #0x38]
	add r0, sp, #0x14
	bl FUN_020555e8
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
_020C29B8:
	mov r0, #0
	strb r0, [r10, #0x1f]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C29C8: .word unk_020A9C40
_020C29CC: .word g2DAdventureLogic
_020C29D0: .word 0x60DB9391
_020C29D4: .word 0x000028BE
	arm_func_end FUN_ov0_020c26d4

	arm_func_start FUN_ov0_020c29d8
FUN_ov0_020c29d8: ; 0x020C29D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C2A38 ; =g2DGChar
	mov r5, r0
	ldr r0, [r4]
	mov r1, #1
	bl FUN_02056e94
	ldr r0, [r4]
	bl FUN_020569c0
	ldr r0, _020C2A3C ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_02055294
	ldr r1, [r5, #0xa4]
	ldr r0, _020C2A40 ; =0x020AF81C
	bl FUN_ov131_02149b10
	ldr r0, _020C2A44 ; =g3DGameMap
	ldr r0, [r0]
	bl FUN_0205ddb8
	ldr r0, _020C2A48 ; =0x02099F10
	ldr r0, [r0]
	bl FUN_0205c468
	ldr r0, _020C2A4C ; =g3DGameMapObject
	ldr r0, [r0]
	bl FUN_0205f61c
	ldmfd sp!, {r3, r4, r5, pc}
_020C2A38: .word g2DGChar
_020C2A3C: .word g2DAdventureLogic
_020C2A40: .word unk_020AF81C
_020C2A44: .word g3DGameMap
_020C2A48: .word g3DGameEffect
_020C2A4C: .word g3DGameMapObject
	arm_func_end FUN_ov0_020c29d8

	arm_func_start FUN_ov0_020c2a50
FUN_ov0_020c2a50: ; 0x020C2A50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x16c
	mov r2, #8
	bl MI_CpuFill8
	str r4, [r5, #0x174]
	str r4, [r5, #0x178]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020c2a50

	arm_func_start FUN_ov0_020c2a78
FUN_ov0_020c2a78: ; 0x020C2A78
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x174]
	cmp r0, #0
	ldrgt r0, [r4, #0x178]
	cmpgt r0, #0
	addgt sp, sp, #0xc
	ldmgtfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020C2B34 ; =0x0209A200
	ldr r5, _020C2B38 ; =g3DPlaneCtrl
	ldr r2, [r0]
	ldr r0, [r5]
	mov r7, #1
	str r7, [sp]
	mov r6, #0
	str r6, [sp, #4]
	ldr r3, _020C2B3C ; =0x020D5AD0
	str r6, [sp, #8]
	mov r1, #5
	bl FUN_02058684
	str r0, [r4, #0x174]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r7
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r4, #0x178]
	ldr r2, [r4, #0x174]
	ldr r0, [r5]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, r6
	mov r3, r7
	ldr r0, [r5]
	ldr r1, [r4, #0x178]
	bl FUN_ov16_0211346c
	ldr r0, [r5]
	ldr r1, [r4, #0x178]
	mov r2, #2
	bl FUN_ov16_02113390
	ldr r0, [r5]
	ldr r1, [r4, #0x178]
	mov r2, #0x190
	bl FUN_ov16_02112b98
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C2B34: .word unk_0209A200
_020C2B38: .word g3DPlaneCtrl
_020C2B3C: .word ov0_020D5AD0
	arm_func_end FUN_ov0_020c2a78

	arm_func_start FUN_ov0_020c2b40
FUN_ov0_020c2b40: ; 0x020C2B40
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x174]
	cmp r1, #0
	beq _020C2B68
	ldr r4, _020C2BA8 ; =g3DPlaneCtrl
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	beq _020C2B70
_020C2B68:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020C2B70:
	ldr r1, [r6, #0x174]
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r1, [r6, #0x174]
	ldr r0, [r4]
	mov r3, r5
	mov r2, #1
	bl FUN_02059038
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020C2BA8: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020c2b40

	arm_func_start FUN_ov0_020c2bac
FUN_ov0_020c2bac: ; 0x020C2BAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x174]
	cmp r1, #0
	ble _020C2BD4
	ldr r0, _020C2BF8 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x174]
_020C2BD4:
	ldr r1, [r4, #0x178]
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _020C2BF8 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0x178]
	ldmfd sp!, {r4, pc}
_020C2BF8: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020c2bac

	arm_func_start FUN_ov0_020c2bfc
FUN_ov0_020c2bfc: ; 0x020C2BFC
	cmp r1, #1
	addlo r0, r0, r1, lsl #3
	mov r1, #0
	strb r1, [r0, #0x16d]
	bx lr
	arm_func_end FUN_ov0_020c2bfc

	arm_func_start FUN_ov0_020c2c10
FUN_ov0_020c2c10: ; 0x020C2C10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	movs r6, r1
	mov r8, r0
	mov r7, r2
	mov r5, r3
	mov r4, #0
	bmi _020C2C38
	cmp r6, #1
	blt _020C2C44
_020C2C38:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C2C44:
	cmp r7, #4
	addhs sp, sp, #0x18
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r2, [sp, #0x30]
	cmp r2, #0
	bne _020C2C74
	bl FUN_ov0_020c2da8
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020C2C74:
	add r3, r8, #0x16c
	add r1, sp, #0x14
	add r2, sp, #0x10
	mov r0, r5
	add r6, r3, r6, lsl #3
	bl NNS_G3dWorldPosToScrPos
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _020C2D14 ; =gSprButtonCtrl
	mov r5, #0x1a
	ldr r0, [r8]
	mov r1, r5
	bl FUN_ov16_0210eab4
	ldrsh r0, [r6, #6]
	ldrsh r3, [r6, #4]
	mov r1, #0x10
	sub r0, r0, #0x28
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	stmia sp, {r0, r1}
	str r1, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r8]
	mov r2, r5
	mov r1, #1
	bl FUN_ov16_0210fba4
	cmp r0, #0
	strneh r4, [r0, #0xc]
	mov r0, #1
	strb r0, [r6, #1]
	strb r7, [r6]
	ldr r1, [sp, #0x14]
	strh r1, [r6, #4]
	ldr r1, [sp, #0x10]
	strh r1, [r6, #6]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C2D14: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020c2c10

	arm_func_start FUN_ov0_020c2d18
FUN_ov0_020c2d18: ; 0x020C2D18
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldr r0, _020C2DA0 ; =0x020AF81C
	mov r7, r3
	mov r5, r1
	mov r4, r2
	bl FUN_02044494
	mov r1, r7
	bl FUN_020385dc
	mov r2, r0
	cmp r2, #0
	addle sp, sp, #0x1c
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _020C2DA4 ; =g3DGameMapObject
	add r0, sp, #4
	ldr r1, [r1]
	bl FUN_0205fb80
	ldr r7, [sp, #4]
	ldr lr, [sp, #8]
	ldr r12, [sp, #0xc]
	mov r2, r4
	add r3, sp, #0x10
	mov r0, r6
	mov r1, r5
	str r7, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	mov r4, #0
	str r4, [sp]
	bl FUN_ov0_020c2c10
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C2DA0: .word unk_020AF81C
_020C2DA4: .word g3DGameMapObject
	arm_func_end FUN_ov0_020c2d18

	arm_func_start FUN_ov0_020c2da8
FUN_ov0_020c2da8: ; 0x020C2DA8
	cmp r1, #1
	movhs r0, #0
	bxhs lr
	add r0, r0, r1, lsl #3
	ldrb r0, [r0, #0x16d]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov0_020c2da8

	arm_func_start FUN_ov0_020c2dcc
FUN_ov0_020c2dcc: ; 0x020C2DCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r10, r0
	mov r4, #1
	ldr r0, _020C3394 ; =0x020AF81C
	mov r7, r4
	mov r8, r4
	ldr r5, _020C3398 ; =gSprButtonCtrl
	mov r6, r4
	bl FUN_02044600
	cmp r0, #0
	bne _020C2E14
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r8, #0
_020C2E14:
	cmp r8, #0
	bne _020C2E28
	bl FUN_ov0_020bfa8c
	cmp r0, #0
	moveq r7, #0
_020C2E28:
	cmp r7, #0
	bne _020C2E40
	ldr r0, _020C3394 ; =0x020AF81C
	bl FUN_02044560
	cmp r0, #0
	moveq r4, #0
_020C2E40:
	cmp r4, #0
	moveq r0, #1
	streq r0, [sp, #0x10]
	movne r0, #0
	strne r0, [sp, #0x10]
	mov r4, #0
	b _020C2E74
_020C2E5C:
	add r0, r4, #0x1c
	mov r1, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eab4
	add r4, r4, #1
_020C2E74:
	cmp r4, #8
	blt _020C2E5C
	mov r4, #0
	b _020C2E9C
_020C2E84:
	add r0, r4, #0x24
	mov r1, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eab4
	add r4, r4, #1
_020C2E9C:
	cmp r4, #0x40
	blt _020C2E84
	ldr r0, [r5]
	mov r1, #0x64
	bl FUN_ov16_0210eab4
	ldr r7, _020C339C ; =g2DAdventureLogic
	mov r4, #0
	ldr r0, [r7]
	mov r1, r4
	bl FUN_020552dc
	movs r8, r0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	beq _020C2EF0
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r7]
	mov r2, #0x1000
	bl FUN_ov0_020cc92c
	mov r4, r0
_020C2EF0:
	cmp r8, #0
	cmpne r4, #0
	ble _020C2F34
	ldr r7, _020C339C ; =g2DAdventureLogic
	mov r1, r4
	ldr r0, [r7]
	bl FUN_020552cc
	mov r9, r0
	ldr r0, [r7]
	mov r1, r4
	bl FUN_02055d48
	mov r2, r0
	add r3, r9, #0x84
	mov r0, r10
	mov r1, #0
	str r6, [sp]
	bl FUN_ov0_020c2c10
_020C2F34:
	cmp r8, #0
	beq _020C2F68
	mov r0, r8
	bl FUN_020542a8
	mov r1, #8
	ldr r2, _020C339C ; =g2DAdventureLogic
	str r1, [sp]
	mov r1, r0
	ldr r0, [r2]
	add r3, r10, #0x118
	mov r2, #0x4000
	bl FUN_ov0_020cc9ec
	str r0, [r10, #0x140]
_020C2F68:
	cmp r8, #0
	ldrne r0, [r10, #0x140]
	cmpne r0, #0
	ble _020C306C
	mov r9, #0
	mov r7, #0xc0
	mov r11, #0x100
	ldr r4, _020C33A0 ; =g3DPlaneCtrl
	b _020C2FBC
_020C2F8C:
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x178]
	add r2, r9, #1
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	add r1, r9, #0x1b
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eab4
	add r9, r9, #1
_020C2FBC:
	cmp r9, #1
	blt _020C2F8C
	ldrb r0, [r10, #0x138]
	cmp r0, #0
	ldreqb r0, [r10, #0x14c]
	cmpeq r0, #0
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r7, #0x18
	mov r4, #0x20
	ldr r11, _020C339C ; =g2DAdventureLogic
	b _020C3060
_020C2FF0:
	add r1, r10, r9, lsl #2
	ldr r0, [r11]
	ldr r1, [r1, #0x118]
	bl FUN_020552cc
	add r0, r0, #0x84
	add r1, sp, #0x30
	add r2, sp, #0x2c
	bl NNS_G3dWorldPosToScrPos
	cmp r0, #0
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x2c]
	add r2, r9, #0x1c
	sub r0, r0, #0x20
	stmia sp, {r0, r7}
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _020C3398 ; =gSprButtonCtrl
	ldr r3, [sp, #0x30]
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r1, r6
	mov r2, r2, lsr #0x10
	sub r3, r3, #8
	bl FUN_ov16_0210fba4
	mov r1, #0
	strh r1, [r0, #0xc]
	add r9, r9, #1
_020C3060:
	ldr r0, [r10, #0x140]
	cmp r9, r0
	blt _020C2FF0
_020C306C:
	add r0, r10, #0x16c
	mov r9, #0
	str r0, [sp, #0x18]
	ldr r4, _020C33A0 ; =g3DPlaneCtrl
	b _020C318C
_020C3080:
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r7, r0, r9, lsl #3
	ldrb r0, [r7, #1]
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	cmpne r0, #0
	movne r1, r6
	cmp r1, #0
	bne _020C3104
	ldr r0, [r4]
	ldr r1, [r10, #0x178]
	add r2, r9, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r6
	mov r2, #0x1a
	mov r3, #0x100
	bl FUN_ov16_0210fba4
	add r1, r9, #0x1b
	mov r1, r1, lsl #0x10
	ldr r0, [r5]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eab4
	b _020C3188
_020C3104:
	ldrsh r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrsh r1, [r7, #6]
	ldrb r0, [r7]
	sub r1, r1, #0x28
	cmp r0, #0
	mov r0, r1, lsl #0x10
	mov r11, r0, asr #0x10
	beq _020C3188
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x178]
	add r2, r9, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	str r6, [sp]
	ldrb r2, [r7]
	ldr r0, [r4]
	ldr r1, [r10, #0x178]
	sub r3, r2, #1
	add r2, r9, #1
	bl FUN_ov16_0211401c
	str r11, [sp]
	ldr r3, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, [r10, #0x178]
	add r2, r9, #1
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r10, #0x178]
	add r2, r9, #1
	mov r3, #0x190
	bl FUN_ov16_021139bc
_020C3188:
	add r9, r9, #1
_020C318C:
	cmp r9, #1
	blt _020C3080
	mov r0, r10
	mvn r1, #0
	ldr r4, _020C3398 ; =gSprButtonCtrl
	mov r5, #0
	bl FUN_ov0_020c2bfc
	ldrb r0, [r10, #0x138]
	cmp r0, #0
	ldreqb r0, [r10, #0x14c]
	cmpeq r0, #0
	addne sp, sp, #0x34
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xa0]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r0, #0x364
	add r7, r0, #0x4000
	mov r9, r5
	mov r6, #0x28
	ldr r11, _020C3394 ; =0x020AF81C
	b _020C32B4
_020C31E8:
	ldrb r0, [r7, #0x20]
	cmp r0, #2
	cmpne r0, #0x10
	cmpne r0, #3
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #6
	cmpne r0, #4
	beq _020C3214
	cmp r0, #0xe
	bne _020C32AC
_020C3214:
	ldrb r1, [r7, #0x20]
	mov r0, r10
	bl FUN_ov0_020bffd0
	cmp r0, #0
	beq _020C32AC
	ldrb r0, [r7, #0x20]
	cmp r0, #4
	cmpne r0, #0xe
	bne _020C3250
	mov r0, r11
	bl FUN_02044494
	ldrsh r1, [r7, #0x22]
	bl FUN_020388f8
	cmp r0, #0
	blt _020C32AC
_020C3250:
	ldr r0, [r7, #0x1c]
	tst r0, #1
	bne _020C32AC
	mov r0, r7
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl NNS_G3dWorldPosToScrPos
	cmp r0, #0
	bne _020C32AC
	ldr r1, [sp, #0x24]
	add r0, r9, #0x24
	sub r1, r1, #0x16
	stmia sp, {r1, r6}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [sp, #0x28]
	mov r1, r0, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r0, [r4]
	sub r3, r3, #0x14
	mov r1, #1
	bl FUN_ov16_0210fba4
	strh r5, [r0, #0xc]
_020C32AC:
	add r9, r9, #1
	add r7, r7, #0x38
_020C32B4:
	ldr r1, [r10, #0xa0]
	ldr r0, [r1, #0xc]
	cmp r9, r0
	blt _020C31E8
	add r0, r1, #0x3e4
	add r7, r0, #0x3800
	mov r9, #0
	add r6, sp, #0x20
	add r5, sp, #0x1c
	b _020C337C
_020C32DC:
	ldrsb r0, [r7, #0x42]
	cmp r0, #1
	bne _020C3374
	ldr r0, [r7, #0x1c]
	tst r0, #1
	bne _020C3374
	mov r0, r10
	mov r1, r7
	add r2, r8, #0x78
	add r3, r8, #0x84
	bl FUN_ov0_020c16dc
	tst r0, #8
	beq _020C3374
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r4, #0
	bl NNS_G3dWorldPosToScrPos
	cmp r0, #0
	bne _020C3374
	ldr r1, [sp, #0x1c]
	mov r0, #0x28
	sub r1, r1, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _020C3398 ; =gSprButtonCtrl
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	sub r3, r1, #0x14
	mov r1, #1
	mov r2, #0x64
	bl FUN_ov16_0210fba4
	add sp, sp, #0x34
	strh r4, [r0, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3374:
	add r9, r9, #1
	add r7, r7, #0x78
_020C337C:
	ldr r0, [r10, #0xa0]
	ldr r0, [r0, #8]
	cmp r9, r0
	blt _020C32DC
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3394: .word unk_020AF81C
_020C3398: .word gSprButtonCtrl
_020C339C: .word g2DAdventureLogic
_020C33A0: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020c2dcc

	arm_func_start FUN_ov0_020c33a4
FUN_ov0_020c33a4: ; 0x020C33A4
	stmfd sp!, {r4, lr}
	ldr r1, _020C33E8 ; =gDeltaTime
	mov r4, r0
	ldr r1, [r1]
	ldr r0, _020C33EC ; =0x020A9C40
	bl FUN_02045ae8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	str r0, [r4, #0x160]
	mov r1, #0xc
	mov r0, r4
	str r1, [r4, #8]
	bl FUN_ov0_020c4c80
	ldr r0, _020C33F0 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	ldmfd sp!, {r4, pc}
_020C33E8: .word gDeltaTime
_020C33EC: .word unk_020A9C40
_020C33F0: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c33a4

	arm_func_start FUN_ov0_020c33f4
FUN_ov0_020c33f4: ; 0x020C33F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2ec
	mov r9, #0
	add r0, sp, #0
	mov r1, r9
	mov r2, #0x16c
	mov r5, r9
	bl memset
	ldr r0, _020C34E4 ; =0x020A9C40
	bl FUN_02045ed0
	ldr r7, _020C34E8 ; =gLogicThink
	mov r8, r0
	add r6, sp, #0x16c
	mov r4, #0x30
_020C342C:
	mla r2, r9, r4, r6
	add r0, r8, r9, lsl #2
	ldrh r1, [r0, #4]
	mov r0, r7
	bl FUN_0207273c
	add r9, r9, #1
	cmp r9, #8
	blt _020C342C
	mov r10, #0
	ldr r4, _020C34EC ; =0x0209A11C
	mov r8, r10
	add r6, sp, #0
	add r7, sp, #0x16c
	mov r11, #0x30
_020C3464:
	mul r0, r8, r11
	ldrh r1, [r7, r0]
	cmp r1, #0
	beq _020C34C4
	ldr r0, _020C34E8 ; =gLogicThink
	mov r2, r6
	bl FUN_0207039c
	mov r9, r5
_020C3484:
	add r0, r6, r9, lsl #3
	ldrh r0, [r0, #0x4c]
	cmp r0, #0
	beq _020C34B8
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r2, r5
	mov r1, r1, lsr #0x10
	bl FUN_0206c7dc
	cmp r0, #0
	addeq r0, r10, #1
	moveq r0, r0, lsl #0x10
	moveq r10, r0, lsr #0x10
_020C34B8:
	add r9, r9, #1
	cmp r9, #0x10
	blt _020C3484
_020C34C4:
	add r8, r8, #1
	cmp r8, #8
	blt _020C3464
	mov r0, #1
	cmp r10, #3
	movls r0, #0
	add sp, sp, #0x2ec
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C34E4: .word unk_020A9C40
_020C34E8: .word gLogicThink
_020C34EC: .word unk_0209A11C
	arm_func_end FUN_ov0_020c33f4

	arm_func_start FUN_ov0_020c34f0
FUN_ov0_020c34f0: ; 0x020C34F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, _020C367C ; =0x020AF81C
	bl FUN_02044560
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020C3680 ; =0x020A9C40
	mov r0, r5
	bl FUN_02045d74
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_02045db8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov0_020c36c4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov0_020c3778
	cmp r0, #0
	beq _020C3570
	ldr r0, _020C3684 ; =gDeltaTime
	ldr r3, [r4, #0xe4]
	ldr r2, [r0]
	ldr r1, [r4, #0xe8]
	sub r2, r3, r2, lsl #2
	str r2, [r4, #0xe4]
	ldr r0, [r0]
	sub r0, r1, r0, lsl #2
	b _020C35C4
_020C3570:
	mov r0, r4
	bl FUN_ov0_020c3818
	cmp r0, #0
	beq _020C35A4
	ldr r0, _020C3684 ; =gDeltaTime
	ldr r3, [r4, #0xe4]
	ldr r2, [r0]
	ldr r1, [r4, #0xe8]
	sub r2, r3, r2, lsl #1
	str r2, [r4, #0xe4]
	ldr r0, [r0]
	sub r0, r1, r0, lsl #1
	b _020C35C4
_020C35A4:
	ldr r0, _020C3684 ; =gDeltaTime
	ldr r3, [r4, #0xe4]
	ldr r2, [r0]
	ldr r1, [r4, #0xe8]
	sub r2, r3, r2
	str r2, [r4, #0xe4]
	ldr r0, [r0]
	sub r0, r1, r0
_020C35C4:
	str r0, [r4, #0xe8]
	ldr r0, [r4, #0xe4]
	cmp r0, #0
	bge _020C361C
	ldr r0, _020C3680 ; =0x020A9C40
	bl FUN_02045e00
	ldr r5, _020C3688 ; =gConfig
	mov r6, r0
	ldr r1, _020C368C ; =0x020D5AE0
	mov r0, r5
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0xe4]
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r6, r0
	bls _020C361C
	ldr r1, _020C3690 ; =0x020D5AF4
	mov r0, r5
	bl _ZN6Config8getParamEPc
	sub r0, r0, #1
	bl FUN_ov16_020ef928
	str r0, [r4, #0xe8]
_020C361C:
	ldr r0, [r4, #0xe8]
	cmp r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0x138]
	cmp r0, #0
	ldreqb r0, [r4, #0x14c]
	cmpeq r0, #0
	beq _020C3644
	mov r0, r4
	bl FUN_ov0_020c4c80
_020C3644:
	ldr r0, _020C3688 ; =gConfig
	ldr r1, _020C3694 ; =0x020D5B08
	bl _ZN6Config8getParamEPc
	mov r1, #0x1e
	mul r2, r0, r1
	mov r1, #0xb
	mov r0, r4
	str r2, [r4, #0xe8]
	str r1, [r4, #8]
	bl FUN_ov0_020c4c80
	ldr r0, _020C3698 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccc20
	ldmfd sp!, {r4, r5, r6, pc}
_020C367C: .word unk_020AF81C
_020C3680: .word unk_020A9C40
_020C3684: .word gDeltaTime
_020C3688: .word gConfig
_020C368C: .word ov0_020D5AE0
_020C3690: .word ov0_020D5AF4
_020C3694: .word ov0_020D5B08
_020C3698: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c34f0

	arm_func_start FUN_ov0_020c369c
FUN_ov0_020c369c: ; 0x020C369C
	stmfd sp!, {r3, lr}
	ldr r0, _020C36BC ; =0x020A9C40
	mov r1, #0
	bl FUN_02045edc
	mov r1, r0
	ldr r0, _020C36C0 ; =gLogicThink
	bl FUN_020727a8
	ldmfd sp!, {r3, pc}
_020C36BC: .word unk_020A9C40
_020C36C0: .word gLogicThink
	arm_func_end FUN_ov0_020c369c

	arm_func_start FUN_ov0_020c36c4
FUN_ov0_020c36c4: ; 0x020C36C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r8, sp, #8
	mov r4, r1
	ldr r0, _020C3770 ; =gLogicThink
	mov r2, r8
	mov r3, #4
	str r4, [sp]
	bl FUN_0204b2f4
	mov r10, r0
	ldr r9, [sp, #4]
	cmp r10, #0
	ble _020C3764
	ldr r4, _020C3774 ; =0x00000103
	mov r11, #2
	mov r7, #0
	mov r5, #1
_020C3714:
	mov r0, r9, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r7
	bl FUN_ov16_020efa9c
	mov r1, r5
	mov r6, r0
	bl FUN_0206cd90
	cmp r0, r4
	beq _020C374C
	mov r0, r6
	mov r1, r11
	bl FUN_0206cd90
	cmp r0, r4
	bne _020C3758
_020C374C:
	mov r0, #1
	str r0, [sp, #4]
	b _020C3764
_020C3758:
	add r9, r9, #1
	cmp r9, r10
	blt _020C3714
_020C3764:
	ldr r0, [sp, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3770: .word gLogicThink
_020C3774: .word 0x00000103
	arm_func_end FUN_ov0_020c36c4

	arm_func_start FUN_ov0_020c3778
FUN_ov0_020c3778: ; 0x020C3778
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, #0
	add r8, sp, #4
	ldr r0, _020C3814 ; =gLogicThink
	mov r1, r11
	mov r2, r8
	mov r3, #4
	str r11, [sp]
	bl FUN_0204b2f4
	mov r10, r0
	mov r9, r11
	cmp r10, #0
	ble _020C3808
	mov r4, #2
	mov r7, r11
	mov r5, #1
_020C37BC:
	mov r0, r9, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r7
	bl FUN_ov16_020efa9c
	mov r1, r5
	mov r6, r0
	bl FUN_0206cd90
	cmp r0, #0x104
	beq _020C37F4
	mov r0, r6
	mov r1, r4
	bl FUN_0206cd90
	cmp r0, #0x104
	bne _020C37FC
_020C37F4:
	mov r11, #1
	b _020C3808
_020C37FC:
	add r9, r9, #1
	cmp r9, r10
	blt _020C37BC
_020C3808:
	mov r0, r11
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3814: .word gLogicThink
	arm_func_end FUN_ov0_020c3778

	arm_func_start FUN_ov0_020c3818
FUN_ov0_020c3818: ; 0x020C3818
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r8, sp, #8
	mov r4, r1
	ldr r0, _020C38C4 ; =gLogicThink
	mov r2, r8
	mov r3, #4
	str r4, [sp]
	bl FUN_0204b2f4
	mov r10, r0
	ldr r9, [sp, #4]
	cmp r10, #0
	ble _020C38B8
	ldr r4, _020C38C8 ; =0x00000105
	mov r11, #2
	mov r7, #0
	mov r5, #1
_020C3868:
	mov r0, r9, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r7
	bl FUN_ov16_020efa9c
	mov r1, r5
	mov r6, r0
	bl FUN_0206cd90
	cmp r0, r4
	beq _020C38A0
	mov r0, r6
	mov r1, r11
	bl FUN_0206cd90
	cmp r0, r4
	bne _020C38AC
_020C38A0:
	mov r0, #1
	str r0, [sp, #4]
	b _020C38B8
_020C38AC:
	add r9, r9, #1
	cmp r9, r10
	blt _020C3868
_020C38B8:
	ldr r0, [sp, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38C4: .word gLogicThink
_020C38C8: .word 0x00000105
	arm_func_end FUN_ov0_020c3818

	arm_func_start FUN_ov0_020c38cc
FUN_ov0_020c38cc: ; 0x020C38CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, #1
	ldr r2, _020C3BC0 ; =0x020D6100
	mov r7, r0
	sub r1, r6, #2
	mov r0, #0x1000
	str r6, [r2, #8]
	mov r4, #0
	bl _ZN10FileSystem8AllocateEii
	mov r3, r0
	ldr r0, _020C3BC4 ; =FUN_ov0_020c6dcc
	mov r1, r7
	add r2, r3, #0x1000
	str r3, [r7, #0x168]
	bl _ZN6Thread6CreateEPFvPvES0_S0_
	str r0, [r7, #0x164]
	ldr r0, _020C3BC8 ; =FUN_ov0_020c6dd8
	bl FUN_ov16_020f5248
	mov r0, #0x1c
	bl _Znwm
	movs r8, r0
	beq _020C3934
	ldr r1, _020C3BCC ; =0x020D57DC
	str r1, [r8]
	bl FUN_ov0_020d12b0
_020C3934:
	ldr r5, _020C3BC0 ; =0x020D6100
	mov r0, r8
	str r8, [r5]
	bl FUN_ov0_020d12b0
	ldr r0, [r5]
	bl FUN_ov0_020d1300
	mov r0, r7
	bl FUN_ov0_020bffe4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r5, _020C3BD0 ; =0x020A9C40
	mov r0, r5
	bl FUN_02045900
	str r0, [r7, #0xa0]
	ldrh r1, [r0, #0x18]
	ldr r0, _020C3BD4 ; =g3DDevice
	mov r2, #0x1f
	ldr r0, [r0]
	mov r3, r4
	bl _ZN9C3DDevice13setClearColorEthi
	ldr r0, _020C3BD8 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _020C3BDC ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	add r0, r7, #0xfa
	str r6, [r7, #8]
	str r4, [r7, #0x10]
	strb r4, [r7, #0x9a]
	strb r4, [r7, #0x99]
	strb r4, [r7, #0x98]
	strb r4, [r7, #0x1f]
	strb r4, [r7, #0x9e]
	bl FUN_ov0_020bfc54
	mov r0, r5
	add r1, sp, #0xa
	add r2, sp, #8
	bl FUN_02045d00
	mov r8, #0x18
	str r8, [sp]
	mov r0, #0x400
	str r0, [sp, #4]
	ldrsh r2, [sp, #0xa]
	ldrsh r3, [sp, #8]
	ldr r1, _020C3BE0 ; =0x020D5B1C
	add r0, r7, #0xfa
	bl FUN_ov0_020bfc68
	mov r0, r7
	strb r4, [r7, #0x108]
	strb r4, [r7, #0x10a]
	strb r4, [r7, #0x10b]
	bl FUN_ov0_020bffbc
	mov r0, r7
	bl FUN_ov0_020c2a50
	mov r0, r7
	bl FUN_ov0_020c2a78
	sub r1, r8, #0x19
	mov r0, r7
	bl FUN_ov0_020c2bfc
	mov r0, r5
	bl FUN_020455ac
	tst r0, #8
	movne r0, #4
	strne r0, [r7, #0xc]
	bne _020C3A58
	mov r0, r5
	bl FUN_020455ac
	tst r0, #0x10
	moveq r0, #2
	streq r0, [r7, #0xc]
_020C3A58:
	ldr r0, [r7, #0xc]
	mov r4, #0
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020C3AF8
_020C3A6C: ; jump table
	b _020C3AF8 ; case 0
	b _020C3A80 ; case 1
	b _020C3AB8 ; case 2
	b _020C3AF8 ; case 3
	b _020C3AB8 ; case 4
_020C3A80:
	mov r1, #1
	cmp r0, #4
	movne r1, r4
	ldr r0, _020C3BE4 ; =g2DGChar
	strb r1, [r7, #0x14]
	strb r6, [r7, #0x17]
	strb r4, [r7, #0x15]
	strb r6, [r7, #0x16]
	strb r6, [r7, #0x18]
	strb r4, [r7, #0x1a]
	strb r6, [r7, #0x1b]
	ldr r0, [r0]
	bl _ZN8C2DGChar5resetEv
	b _020C3B3C
_020C3AB8:
	mov r1, #1
	cmp r0, #4
	movne r1, r4
	ldr r0, _020C3BE4 ; =g2DGChar
	strb r1, [r7, #0x14]
	strb r6, [r7, #0x17]
	strb r4, [r7, #0x15]
	strb r6, [r7, #0x16]
	strb r6, [r7, #0x18]
	strb r4, [r7, #0x1a]
	strb r6, [r7, #0x1b]
	ldr r0, [r0]
	bl _ZN8C2DGChar5resetEv
	mov r0, r7
	bl FUN_ov0_020c03b4
	b _020C3B3C
_020C3AF8:
	ldr r0, _020C3BE4 ; =g2DGChar
	strb r6, [r7, #0x14]
	strb r6, [r7, #0x17]
	strb r6, [r7, #0x15]
	strb r6, [r7, #0x16]
	strb r6, [r7, #0x18]
	strb r6, [r7, #0x1a]
	strb r4, [r7, #0x1b]
	ldr r0, [r0]
	bl _ZN8C2DGChar5resetEv
	mov r0, r7
	bl FUN_ov0_020c03b4
	ldr r0, _020C3BE8 ; =g2DAdventureLogic
	mov r1, r4
	ldr r0, [r0]
	mov r2, r4
	bl FUN_020561f4
_020C3B3C:
	ldr r0, _020C3BEC ; =0x020AF81C
	mov r1, r4
	str r4, [r7, #0xc]
	bl FUN_0204451c
	ldr r0, _020C3BF0 ; =g3DSpriteCtrl
	ldr r0, [r0]
	bl FUN_ov16_0211661c
	ldr r0, _020C3BF4 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _020C3BE8 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_ov0_020ccb88
	ldr r0, _020C3BF8 ; =g3DGameMap
	mov r1, r4
	ldr r0, [r0]
	bl FUN_0205e164
	ldr r4, _020C3BFC ; =gConfig
	ldr r1, _020C3C00 ; =0x020D5B2C
	mov r0, r4
	bl _ZN6Config8getParamEPc
	mov r0, r0, lsl #1
	str r0, [r7, #0xe4]
	ldr r1, _020C3C04 ; =0x020D5B40
	mov r0, r4
	bl _ZN6Config8getParamEPc
	mov r1, #0x1e
	mul r1, r0, r1
	ldr r0, [r7, #4]
	str r1, [r7, #0xe8]
	bl FUN_ov0_020be588
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C3BC0: .word ov0_020D6100
_020C3BC4: .word FUN_ov0_020c6dcc
_020C3BC8: .word FUN_ov0_020c6dd8
_020C3BCC: .word ov0_020D57DC
_020C3BD0: .word unk_020A9C40
_020C3BD4: .word g3DDevice
_020C3BD8: .word gSprButtonCtrl
_020C3BDC: .word gSprAnimCtrl
_020C3BE0: .word ov0_020D5B1C
_020C3BE4: .word g2DGChar
_020C3BE8: .word g2DAdventureLogic
_020C3BEC: .word unk_020AF81C
_020C3BF0: .word g3DSpriteCtrl
_020C3BF4: .word g3DPlaneCtrl
_020C3BF8: .word g3DGameMap
_020C3BFC: .word gConfig
_020C3C00: .word ov0_020D5B2C
_020C3C04: .word ov0_020D5B40
	arm_func_end FUN_ov0_020c38cc

	arm_func_start FUN_ov0_020c3c08
FUN_ov0_020c3c08: ; 0x020C3C08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x98
	mov r8, #0
	mov r9, r0
	ldr r4, _020C4874 ; =0x020D6100
	strb r8, [r9, #0x9e]
	ldr r2, _020C4878 ; =gDeltaTime
	ldr r3, [r4, #8]
	ldr r6, [r2]
	cmp r3, #0
	mov r11, r1
	mov r5, #1
	mov r7, r8
	addne sp, sp, #0x98
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov0_020c6ca8
	cmp r0, #0
	addne sp, sp, #0x98
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #8]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _020C42FC
_020C3C64: ; jump table
	b _020C42FC ; case 0
	b _020C3CA0 ; case 1
	b _020C3EBC ; case 2
	b _020C3ED0 ; case 3
	b _020C3EF0 ; case 4
	b _020C3F08 ; case 5
	b _020C3F20 ; case 6
	b _020C3F38 ; case 7
	b _020C3F58 ; case 8
	b _020C3FFC ; case 9
	b _020C4048 ; case 10
	b _020C40A8 ; case 11
	b _020C40A8 ; case 12
	b _020C4204 ; case 13
	b _020C42A0 ; case 14
_020C3CA0:
	ldr r0, _020C487C ; =g2DGChar
	mov r5, #2
	ldr r0, [r0]
	ldr r10, _020C4880 ; =0x020A9C40
	ldr r4, _020C4884 ; =g2DAdventureLogic
	bl FUN_02057bf4
	cmp r0, #0
	bne _020C4304
	ldrb r0, [r9, #0x14]
	cmp r0, #0
	beq _020C3CF8
	mov r0, r10
	bl FUN_020455ac
	tst r0, #8
	bne _020C3CE8
	mov r0, r10
	mov r1, r8
	bl FUN_02046368
_020C3CE8:
	mov r0, r9
	bl FUN_ov0_020c2260
_020C3CF0:
	str r5, [r9, #8]
	b _020C4304
_020C3CF8:
	ldrb r0, [r9, #0x16]
	cmp r0, #0
	beq _020C3D18
	mov r0, r9
	bl FUN_ov0_020c2310
	mov r0, #3
_020C3D10:
	str r0, [r9, #8]
	b _020C4304
_020C3D18:
	ldrb r0, [r9, #0x1b]
	cmp r0, #0
	beq _020C3D40
	ldr r0, _020C4888 ; =g3DGameMapObject
	ldr r0, [r0]
	bl FUN_ov0_020cd99c
	ldr r0, _020C488C ; =0x020AF81C
	bl FUN_ov131_02149b38
	mov r0, #5
	b _020C3D10
_020C3D40:
	ldrb r0, [r9, #0x1a]
	cmp r0, #0
	beq _020C3D68
	ldr r3, [r9, #0xa0]
	ldr r2, [r9, #0xa4]
	ldr r0, _020C488C ; =0x020AF81C
	add r1, r3, #0x1c
	bl FUN_ov131_02149388
	mov r0, #4
	b _020C3D10
_020C3D68:
	ldrb r0, [r9, #0x15]
	cmp r0, #0
	beq _020C3D84
	mov r0, r9
	bl FUN_ov0_020c243c
	mov r0, #6
	b _020C3D10
_020C3D84:
	ldrb r0, [r9, #0x17]
	cmp r0, #0
	beq _020C3E8C
	ldr r0, [r4]
	add r1, sp, #0xc
	add r2, sp, #0x10
	bl FUN_02056210
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020C3DBC
	ldr r0, _020C4890 ; =gConfig
	ldr r1, _020C4894 ; =0x020D5B54
	bl _ZN6Config8getParamEPc
	str r0, [sp, #0xc]
_020C3DBC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _020C3DD8
	ldr r0, _020C4890 ; =gConfig
	ldr r1, _020C4898 ; =0x020D5B64
	bl _ZN6Config8getParamEPc
	str r0, [sp, #0x10]
_020C3DD8:
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl FUN_020561f4
	ldr r4, _020C4890 ; =gConfig
	ldr r1, _020C489C ; =0x020D5B74
	mov r0, r4
	bl _ZN6Config8getParamEPc
	str r0, [sp, #0x14]
	ldr r1, _020C48A0 ; =0x020D5B84
	mov r0, r4
	bl _ZN6Config8getParamEPc
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, #0
	moveq r0, #0x4400
	streq r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r1, [sp]
	ldr r1, [sp, #0x10]
	cmp r0, #0
	moveq r0, #0x5800
	streq r0, [sp, #0x18]
	add r1, r1, #1
	str r1, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r4, _020C487C ; =g2DGChar
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [r4]
	add r3, r2, #1
	ldr r1, _020C48A4 ; =0x00087C00
	mov r2, #0x18
	bl FUN_020568c4
	ldr r0, [r4]
	mov r1, #0x880
	bl FUN_02057800
	ldr r0, [r4]
	mov r1, #1
	bl FUN_02057808
	ldr r0, [r4]
	bl FUN_02057b94
	strb r7, [r9, #0x17]
	b _020C4304
_020C3E8C:
	ldrb r0, [r9, #0x18]
	cmp r0, #0
	beq _020C3EA8
	mov r0, r9
	bl FUN_ov0_020c2488
	mov r0, #7
	b _020C3D10
_020C3EA8:
	bl FUN_ov0_020be4bc
	cmp r0, #0
	movne r0, #8
	strne r0, [r9, #8]
	b _020C4304
_020C3EBC:
	mov r0, r9
	bl FUN_ov0_020c2538
	cmp r0, #0
	streqb r8, [r9, #0x14]
	b _020C3F30
_020C3ED0:
	mov r0, r9
	bl FUN_ov0_020c2538
	cmp r0, #0
	bne _020C4304
	mov r0, r9
	bl FUN_ov0_020c2598
	strb r8, [r9, #0x16]
	b _020C3CF0
_020C3EF0:
	ldr r0, _020C488C ; =0x020AF81C
	bl FUN_ov131_02149ac0
	cmp r0, #0
	strneb r8, [r9, #0x1b]
	strneb r8, [r9, #0x1a]
	b _020C41D0
_020C3F08:
	mov r0, r9
	bl FUN_ov0_020c2538
	cmp r0, #0
	streqb r8, [r9, #0x1b]
	streqb r8, [r9, #0x1a]
	b _020C3F30
_020C3F20:
	mov r0, r9
	bl FUN_ov0_020c2538
	cmp r0, #0
	streqb r8, [r9, #0x15]
_020C3F30:
	streq r5, [r9, #8]
	b _020C4304
_020C3F38:
	mov r0, r9
	bl FUN_ov0_020c2538
	cmp r0, #0
	bne _020C4304
	mov r0, r9
	bl FUN_ov0_020c25f0
	strb r8, [r9, #0x18]
	b _020C3CF0
_020C3F58:
	ldr r0, _020C48A8 ; =g3DGameMap
	mov r1, #2
	ldr r0, [r0]
	bl FUN_0205e164
	mov r0, r9
	bl FUN_ov0_020c26d4
	mov r2, #0xd
	mov r0, r9
	mov r1, r8
	str r2, [r9, #8]
	bl FUN_ov0_020c0474
	ldr r4, _020C488C ; =0x020AF81C
	mov r1, r5
	mov r0, r4
	bl FUN_0204451c
	mov r0, r4
	bl FUN_02044600
	cmp r0, #0
	bne _020C4304
	ldr r1, [r9, #4]
	mov r0, r4
	bl FUN_02044de0
	cmp r0, #0
	bne _020C4304
	mov r4, #6
	mov r0, r4
	bl _ZN8Graphics10FadeInMainEl
	mov r0, r4
	bl _ZN8Graphics9FadeInSubEl
	ldr r4, _020C48AC ; =gAudioPlayer
	mov r1, r8
	mov r0, r4
	mov r2, r8
	mov r3, r8
	bl _ZN11AudioPlayer12FUN_0202c364Eill
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r8
	bl _ZN11AudioPlayer12FUN_0202c364Eill
	b _020C4304
_020C3FFC:
	mov r0, r9
	ldr r1, [r0]
	ldr r4, _020C4884 ; =g2DAdventureLogic
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C4304
	ldr r0, [r4]
	bl FUN_ov0_020ccc20
	ldr r0, [r4]
	mov r1, r5
	bl FUN_0205586c
	ldr r0, _020C48A8 ; =g3DGameMap
	mov r1, r8
	ldr r0, [r0]
	bl FUN_0205e164
	mov r0, r9
	bl FUN_ov0_020c29d8
	b _020C3CF0
_020C4048:
	ldr r0, _020C488C ; =0x020AF81C
	mov r4, #0xd
	bl FUN_02044600
	cmp r0, #0
	bne _020C4304
	ldrb r0, [r9, #0x1f]
	cmp r0, #0
	strne r4, [r9, #8]
	bne _020C4304
	bl _ZN8Graphics20IsMainBrightAdjustedEv
	cmp r0, #0
	bne _020C4084
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	b _020C4304
_020C4084:
	bl _ZN8Graphics12IsMainFadingEv
	cmp r0, #0
	bne _020C4304
	mov r0, r9
	bl FUN_ov0_020c369c
	mov r0, #2
	bl _Z11SetNextMode8GameMode
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C40A8:
	ldr r10, _020C4884 ; =g2DAdventureLogic
	mov r1, r8
	ldr r0, [r10]
	bl FUN_020552dc
	mov r7, r0
	ldr r0, _020C488C ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	bne _020C40E8
	ldr r0, _020C488C ; =0x020AF81C
	bl FUN_02044560
	cmp r0, #0
	bne _020C40E8
	ldrb r0, [r9, #0x1f]
	cmp r0, #0
	beq _020C411C
_020C40E8:
	ldr r0, [r9, #8]
	mov r4, #0xd
	cmp r0, #0xc
	mov r0, #0
	bne _020C4114
	str r0, [sp]
	mov r2, #0x3c
	ldr r1, [r9, #0x160]
	ldr r0, _020C4880 ; =0x020A9C40
	sub r3, r2, #0x3d
	bl FUN_02045a80
_020C4114:
	str r4, [r9, #8]
	b _020C4304
_020C411C:
	ldr r0, [r10]
	mov r1, r8
	bl FUN_020552dc
	movs r5, r0
	beq _020C4174
	ldr r0, [r4]
	bl FUN_ov0_020d14fc
	ldr r0, [r4]
	mov r1, r8
	mov r2, r8
	bl FUN_ov0_020d1394
	ldr r0, [r4]
	add r4, sp, #0x8c
	mov r1, r4
	bl FUN_ov0_020d173c
	sub r3, sp, #8
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r10]
	ldr r1, [r5, #0x5c]
	ldmia r3, {r2, r3}
	bl FUN_ov0_020cc734
_020C4174:
	mov r4, #0
	mov r0, r9
	mov r1, r4
	mov r2, r4
	bl FUN_ov0_020c01e8
	ldr r0, [r7, #0xa0]
	cmp r0, #0
	bne _020C4304
	ldr r0, [r9, #8]
	mov r5, #0xd
	cmp r0, #0xb
	bne _020C41D8
	ldr r0, _020C4880 ; =0x020A9C40
	mov r1, r4
	bl FUN_020455a0
	mov r0, r9
	mov r2, r4
	mov r3, r4
	mov r1, #0x11
	bl FUN_ov0_020c1814
	cmp r0, #0
	moveq r0, #0xa
	streq r0, [r9, #8]
_020C41D0:
	strne r5, [r9, #8]
	b _020C4304
_020C41D8:
	cmp r0, #0xc
	bne _020C4304
	ldr r1, [r9, #0x160]
	ldr r0, _020C4880 ; =0x020A9C40
	bl FUN_02045588
	mov r0, r9
	mov r2, r4
	mov r3, r4
	mov r1, #0x12
	bl FUN_ov0_020c1814
	b _020C3CF0
_020C4204:
	ldr r4, _020C4880 ; =0x020A9C40
	mov r0, r4
	bl FUN_02045de0
	cmp r0, #0
	beq _020C4238
	mov r0, r9
	bl FUN_ov0_020c33f4
	mov r1, r0
	mov r0, r4
	bl FUN_02045d9c
	mov r0, r4
	mov r1, r8
	bl FUN_02045dec
_020C4238:
	ldr r0, _020C48B0 ; =0x020A0640
	ldrh r0, [r0, #0xa4]
	cmp r0, #0
	beq _020C4260
	add r1, sp, #0x54
	mov r0, r9
	strb r7, [r9, #0x10a]
	mov r2, #0x12
	strb r2, [sp, #0x74]
	bl FUN_ov0_020c0904
_020C4260:
	ldr r0, _020C48B0 ; =0x020A0640
	ldrb r1, [r0, #0x9d]
	cmp r1, #0
	beq _020C428C
	strb r7, [r0, #0x9d]
	add r1, sp, #0x1c
	mov r0, r9
	strb r7, [r9, #0x10a]
	mov r2, #0x11
	strb r2, [sp, #0x3c]
	bl FUN_ov0_020c0904
_020C428C:
	mov r0, r9
	bl FUN_ov0_020c48e4
	mov r0, r9
	bl FUN_ov0_020c4a08
	b _020C4304
_020C42A0:
	ldr r0, _020C488C ; =0x020AF81C
	ldr r4, _020C4884 ; =g2DAdventureLogic
	bl FUN_02044600
	cmp r0, #0
	ldr r0, [r4]
	mov r2, r5
	ldr r3, [r0]
	movne r2, r8
	ldr r3, [r3, #0x10]
	mov r1, r6
	blx r3
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C4304
	ldr r0, _020C4880 ; =0x020A9C40
	mov r1, #1
	strb r7, [r0, #0x405]
	strb r1, [r0, #0x404]
	mov r0, #9
	str r0, [r9, #8]
_020C42FC:
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4304:
	ldr r7, _020C48B4 ; =gSprAnimCtrl
	mov r1, r6
	ldr r0, [r7]
	mov r4, #1
	mov r5, #0
	bl FUN_ov16_0210e10c
	mov r0, r9
	bl FUN_ov0_020c6f38
	mov r0, r9
	bl FUN_ov0_020c0af4
	ldrb r0, [r9, #0x10b]
	cmp r0, #0
	beq _020C4368
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	addne sp, sp, #0x98
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, r5
	mov r0, r9
	mov r3, r2
	mov r1, #0x14
	strb r2, [r9, #0x10b]
	bl FUN_ov0_020c1814
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4368:
	ldr r0, [r7]
	ldr r7, _020C488C ; =0x020AF81C
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _020C4408
	ldrb r0, [r9, #0x108]
	cmp r0, #0
	beq _020C4408
	ldr r0, [r9, #8]
	cmp r0, #0xd
	addne sp, sp, #0x98
	strneb r5, [r9, #0x108]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	strb r5, [r9, #0x108]
	bl FUN_02044600
	cmp r0, #0
	bne _020C4458
	mov r0, r7
	ldr r7, _020C4884 ; =g2DAdventureLogic
	bl FUN_02044560
	cmp r0, #0
	ldreqb r0, [r9, #0x1f]
	cmpeq r0, #0
	bne _020C4458
	ldr r0, [r7]
	mov r1, r5
	bl FUN_020552dc
	cmp r0, #0
	beq _020C43F8
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r7]
	ldr r2, _020C48B8 ; =0x0000C350
	mov r3, #3
	bl FUN_02055528
_020C43F8:
	mov r0, #1
	bl FUN_ov0_020be8c0
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4408:
	ldr r0, _020C48B4 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _020C4458
	ldrb r0, [r9, #0x10a]
	cmp r0, #0
	beq _020C4458
	mov r0, r9
	mov r1, #0x8000
	strb r5, [r9, #0x10a]
	bl FUN_ov0_020bffc8
	mov r0, r9
	mov r1, #8
	mov r2, #2
	bl FUN_ov0_020c14bc
	mov r0, r9
	bl FUN_ov0_020bffbc
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4458:
	ldr r0, _020C48BC ; =0x0209A3E0
	ldr r10, _020C488C ; =0x020AF81C
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C47F0
	mov r0, r10
	mov r7, #1
	bl FUN_02044600
	cmp r0, #0
	bne _020C449C
	mov r0, r10
	bl FUN_02044560
	cmp r0, #0
	moveq r7, #0
_020C449C:
	ldr r0, _020C48B4 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _020C44D0
	cmp r7, #0
	bne _020C44DC
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _020C44DC
_020C44D0:
	ldr r0, [r9, #8]
	cmp r0, #0xe
	movne r6, #0
_020C44DC:
	ldr r0, [r9, #8]
	mov r8, #1
	cmp r7, #0
	movne r8, #0
	ldr r7, _020C4884 ; =g2DAdventureLogic
	cmp r0, #0xd
	bne _020C45A8
	ldr r0, _020C488C ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	ldr r0, [r7]
	mov r2, #1
	ldr r3, [r0]
	movne r2, #0
	ldr r3, [r3, #0x10]
	mov r1, r6
	blx r3
	cmp r8, #0
	cmpne r6, #0
	ble _020C456C
	mov r0, r9
	bl FUN_ov0_020c1128
	cmp r0, #0
	bne _020C456C
	ldr r0, [r7]
	mov r1, #0
	bl FUN_020552dc
	cmp r0, #0
	beq _020C456C
	ldrb r0, [r0, #0x2d]
	cmp r0, #2
	bne _020C456C
	mov r0, r9
	bl FUN_ov0_020c33a4
	mov r0, r9
	bl FUN_ov0_020c34f0
_020C456C:
	ldr r7, _020C4884 ; =g2DAdventureLogic
	ldr r0, [r7]
	bl FUN_ov0_020ccd98
	cmp r0, #0
	beq _020C45A8
	ldr r0, [r7]
	mov r1, #0
	bl FUN_ov0_020ccd8c
	mov r0, r9
	mov r1, #2
	mov r2, #1
	bl FUN_ov0_020c1360
	mov r1, r0
	mov r0, r9
	bl FUN_ov0_020c0788
_020C45A8:
	mov r0, r10
	bl FUN_02044600
	cmp r0, #0
	bne _020C45D4
	mov r0, r10
	bl FUN_02044560
	cmp r0, #0
	bne _020C45D4
	ldrb r0, [r9, #0x1f]
	cmp r0, #0
	beq _020C45EC
_020C45D4:
	bl FUN_ov0_020bfa8c
	cmp r0, #0
	beq _020C45EC
	mov r0, #1
	bl FUN_ov0_020bef7c
	strb r5, [r9, #0x108]
_020C45EC:
	mov r0, r10
	ldr r7, _020C48C0 ; =0x020AA044
	bl FUN_02044600
	cmp r0, #0
	beq _020C46E0
	mov r0, r10
	bl FUN_0204462c
	cmp r0, #0
	ldrne r2, [r9, #0x158]
	cmpne r2, r0
	ldrne r1, _020C48B0 ; =0x020A0640
	strne r2, [r9, #0x15c]
	strne r2, [r1, #0xb8]
	strne r0, [r9, #0x158]
	strne r0, [r1, #0xb4]
	ldr r0, [r9, #0x158]
	ldr r2, _020C48C4 ; =0x00001024
	cmp r0, r2
	bgt _020C4694
	bge _020C46B4
	sub r1, r2, #7
	cmp r0, r1
	bgt _020C4684
	sub r1, r2, #0x11
	subs r1, r0, r1
	addpl pc, pc, r1, lsl #2
	b _020C46D8
_020C4658: ; jump table
	b _020C46C0 ; case 0
	b _020C46B4 ; case 1
	b _020C46D8 ; case 2
	b _020C46B4 ; case 3
	b _020C46B4 ; case 4
	b _020C46D8 ; case 5
	b _020C46D8 ; case 6
	b _020C46D8 ; case 7
	b _020C46D8 ; case 8
	b _020C46D8 ; case 9
	b _020C46B4 ; case 10
_020C4684:
	ldr r1, _020C48C8 ; =0x00001023
	cmp r0, r1
	beq _020C46B4
	b _020C46D8
_020C4694:
	add r1, r2, #8
	cmp r0, r1
	bgt _020C46A8
	beq _020C46B4
	b _020C46D8
_020C46A8:
	ldr r1, _020C48CC ; =0x00001FFF
	cmp r0, r1
	bne _020C46D8
_020C46B4:
	mov r0, #1
_020C46B8:
	strb r0, [r7, #3]
	b _020C4720
_020C46C0:
	ldr r0, [r9, #0x15c]
	cmp r0, r2
	mov r0, #1
	streqb r0, [r7, #3]
	strneb r5, [r7, #3]
	b _020C4720
_020C46D8:
	mov r0, #0
	b _020C46B8
_020C46E0:
	ldr r0, _020C48D0 ; =0x0209A160
	strb r4, [r7, #3]
	ldr r1, [r0]
	cmp r1, #0
	ldrgt r0, [r0, #0xc]
	cmpgt r0, #0
	strgtb r4, [r7, #3]
	bgt _020C4720
	ldr r0, _020C48D0 ; =0x0209A160
	ldrsh r1, [r0, #0x10]
	cmp r1, #0
	bne _020C471C
	ldrsh r0, [r0, #4]
	cmn r0, #0xf0
	bge _020C4720
_020C471C:
	strb r5, [r7, #3]
_020C4720:
	ldr r0, [r9, #8]
	cmp r0, #0xd
	ldreq r0, [r9, #0x10]
	cmpeq r0, #0
	bne _020C4740
	mov r0, r9
	mov r1, #1
	bl FUN_ov0_020c0474
_020C4740:
	ldr r0, _020C48A8 ; =g3DGameMap
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0205d348
	ldr r0, _020C48D4 ; =0x02099F10
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0205bf14
	ldr r0, _020C4888 ; =g3DGameMapObject
	mov r1, r6
	ldr r0, [r0]
	bl FUN_0205ef30
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _020C4790
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020C479C
_020C4790:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020C479C:
	bl _ffix
	ldr r2, _020C48D8 ; =g3DSpriteCtrl
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r4, _020C487C ; =g2DGChar
	ldr r0, [r4]
	bl FUN_020576a0
	ldr r0, [r4]
	mov r1, r6
	bl FUN_02057810
	ldr r0, [r4]
	bl FUN_0205722c
	mov r1, r6
	ldr r4, _020C48DC ; =g3DMagicCamera
	ldr r0, [r4]
	bl FUN_02052f9c
	ldr r0, [r4]
	bl FUN_02052de4
	mov r0, r9
	bl FUN_ov0_020c2dcc
_020C47F0:
	mov r0, r9
	mov r1, r11
	bl FUN_ov0_020c4ce0
	ldr r0, _020C48B0 ; =0x020A0640
	ldrb r0, [r0, #0x1d]
	cmp r0, #0
	bne _020C4838
	cmp r8, #0
	mov r4, #0
	beq _020C482C
	ldr r0, _020C4880 ; =0x020A9C40
	mov r1, #0xf
	bl FUN_02045ce0
	cmp r0, #0
	movne r4, #1
_020C482C:
	mov r1, r4
	add r0, r9, #0xfa
	bl FUN_ov0_020bfde8
_020C4838:
	ldr r4, _020C48E0 ; =gCameraController
	ldr r0, [r4]
	bl FUN_ov16_020f7908
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	ldr r0, _020C4874 ; =0x020D6100
	ldr r0, [r0]
	bl FUN_ov0_020d150c
	ldr r0, [r4]
	bl FUN_ov16_020f792c
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4874: .word ov0_020D6100
_020C4878: .word gDeltaTime
_020C487C: .word g2DGChar
_020C4880: .word unk_020A9C40
_020C4884: .word g2DAdventureLogic
_020C4888: .word g3DGameMapObject
_020C488C: .word unk_020AF81C
_020C4890: .word gConfig
_020C4894: .word ov0_020D5B54
_020C4898: .word ov0_020D5B64
_020C489C: .word ov0_020D5B74
_020C48A0: .word ov0_020D5B84
_020C48A4: .word 0x00087C00
_020C48A8: .word g3DGameMap
_020C48AC: .word gAudioPlayer
_020C48B0: .word unk_020A0640
_020C48B4: .word gSprAnimCtrl
_020C48B8: .word 0x0000C350
_020C48BC: .word unk_0209A3E0
_020C48C0: .word unk_020AA044
_020C48C4: .word 0x00001024
_020C48C8: .word 0x00001023
_020C48CC: .word 0x00001FFF
_020C48D0: .word gScreenFades
_020C48D4: .word g3DGameEffect
_020C48D8: .word g3DSpriteCtrl
_020C48DC: .word g3DMagicCamera
_020C48E0: .word gCameraController
	arm_func_end FUN_ov0_020c3c08

	arm_func_start FUN_ov0_020c48e4
FUN_ov0_020c48e4: ; 0x020C48E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	ldr r4, _020C49F8 ; =0x02099F44
	mov r10, r0
	ldr r0, [r4]
	mov r7, #0
	bl FUN_ov131_02141b24
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r10, #0x155]
	cmp r0, #0x1f
	moveq r0, #0xa
	streqb r0, [r10, #0x155]
	streqb r7, [r10, #0x156]
	beq _020C4948
	add r2, r0, #1
	and r0, r2, #0xff
	mov r1, r7
	strb r2, [r10, #0x155]
	strb r1, [r10, #0x156]
	cmp r0, #0x1f
	bne _020C4948
	ldr r0, [r4]
	bl FUN_ov131_02141b2c
_020C4948:
	mov r2, #0
	add r0, sp, #4
	b _020C4960
_020C4954:
	mov r1, r2, lsl #1
	strh r7, [r0, r1]
	add r2, r2, #1
_020C4960:
	cmp r2, #4
	blt _020C4954
	bl FUN_ov16_020f081c
	add r6, sp, #4
	mov r1, r0
	mov r9, #0
	ldr r0, _020C49FC ; =gLogicThink
	mov r2, r6
	mov r3, #4
	str r9, [sp]
	bl FUN_0204b2f4
	mov r8, r0
	ldr r5, _020C4A00 ; =g2DGChar
	ldr r4, _020C4A04 ; =g3DSpriteCtrl
	b _020C49E8
_020C499C:
	mov r0, r9, lsl #1
	ldrh r1, [r6, r0]
	cmp r1, #0
	beq _020C49E4
	ldr r0, [r5]
	mov r2, r7
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r5]
	bl FUN_020571e0
	ldrb r2, [r10, #0x155]
	mov r1, r0
	ldr r0, [r4]
	orr r2, r2, r2, lsl #5
	orr r2, r2, #0x7c00
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02116e94
_020C49E4:
	add r9, r9, #1
_020C49E8:
	cmp r9, r8
	blt _020C499C
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C49F8: .word unk_02099F44
_020C49FC: .word gLogicThink
_020C4A00: .word g2DGChar
_020C4A04: .word g3DSpriteCtrl
	arm_func_end FUN_ov0_020c48e4

	arm_func_start FUN_ov0_020c4a08
FUN_ov0_020c4a08: ; 0x020C4A08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldrb r0, [r8, #0x138]
	cmp r0, #0
	bne _020C4A30
	ldrb r0, [r8, #0x14c]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C4A30:
	ldr r0, _020C4C70 ; =g2DAdventureLogic
	mov r1, #0
	ldr r0, [r0]
	bl FUN_020552dc
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x13c]
	cmp r0, #0
	bne _020C4A68
	ldr r0, [r8, #0x150]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C4A68:
	ldr r3, [r8, #0x13c]
	ldr r5, _020C4C74 ; =0x00001001
	cmp r3, #0
	mov r6, #0
	beq _020C4AA8
	ldr r1, [r3, #0x84]
	add r0, r4, #0x84
	str r1, [sp]
	ldr r2, [r3, #0x88]
	add r1, r3, #0x84
	str r2, [sp, #4]
	ldr r2, [r3, #0x8c]
	str r2, [sp, #8]
	bl FUN_020535bc
	mov r5, r0
	b _020C4AE0
_020C4AA8:
	ldr r1, [r8, #0x150]
	cmp r1, #0
	beq _020C4AE0
	ldr r2, [r1]
	mov r0, r8
	str r2, [sp]
	ldr r2, [r1, #4]
	mov r3, r6
	str r2, [sp, #4]
	ldr r6, [r1, #8]
	add r2, r4, #0x84
	str r6, [sp, #8]
	bl FUN_ov0_020c1760
	mov r6, r0
_020C4AE0:
	ldrb r0, [r8, #0x154]
	ldr r7, _020C4C70 ; =g2DAdventureLogic
	add r0, r0, #1
	strb r0, [r8, #0x154]
	ldr r0, [r7]
	bl FUN_ov0_020cb9a8
	cmp r0, #0
	bne _020C4B1C
	cmp r5, #0x1000
	ble _020C4B1C
	cmp r6, #0
	bne _020C4B1C
	ldrb r0, [r8, #0x154]
	cmp r0, #0x32
	bls _020C4C30
_020C4B1C:
	ldr r0, [r8, #0x13c]
	mov r1, #0
	strb r1, [r8, #0x154]
	cmp r0, #0
	beq _020C4B4C
	cmp r5, #0x1000
	bgt _020C4B4C
	mov r1, #1
	mov r0, r8
	mov r2, r1
_020C4B44:
	bl FUN_ov0_020c0044
	b _020C4C20
_020C4B4C:
	ldr r0, [r8, #0x150]
	cmp r0, #0
	cmpne r6, #0
	beq _020C4C20
	mov r0, r4
	mov r5, #1
	bl FUN_020542a8
	ldr r2, _020C4C70 ; =g2DAdventureLogic
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0x1000
	bl FUN_ov0_020cc92c
	sub r1, r5, #2
	cmp r0, r1
	beq _020C4BAC
	add r1, sp, #0
	add r0, r4, #0x84
	bl FUN_020535bc
	cmp r0, #0x2000
	bgt _020C4C20
	mov r0, r8
	mov r1, r5
	mov r2, r5
	b _020C4B44
_020C4BAC:
	ldr r1, [r8, #0x150]
	ldr r0, _020C4C78 ; =0x0B60B60B
	ldr r2, [r1, #0x24]
	mov r1, #0xb6
	umull r6, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r0, r6, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	ldrh r6, [r4, #0x6a]
	add r0, r0, #0x8000
	mov r7, #0
	strh r0, [r4, #0x6a]
	ldr r0, [r8, #0x150]
	mov r1, r5
	ldrb r0, [r0, #0x20]
	mov r2, r5
	cmp r0, #6
	mov r0, r8
	moveq r7, r5
	bl FUN_ov0_020c11d8
	mov r0, #1
	cmp r7, #0
	strneb r0, [r4, #0x69]
	streqh r6, [r4, #0x6a]
	streqb r0, [r4, #0x69]
_020C4C20:
	mov r0, r8
	bl FUN_ov0_020c4c80
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C4C30:
	ldr r0, [r7]
	bl FUN_ov0_020cc0b8
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_ov0_020cc018
	mov r0, r4
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r7]
	ldr r2, _020C4C7C ; =0x0000C351
	mov r3, #3
	bl FUN_02055528
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C4C70: .word g2DAdventureLogic
_020C4C74: .word 0x00001001
_020C4C78: .word 0x0B60B60B
_020C4C7C: .word 0x0000C351
	arm_func_end FUN_ov0_020c4a08

	arm_func_start FUN_ov0_020c4c80
FUN_ov0_020c4c80: ; 0x020C4C80
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020C4CD8 ; =g2DAdventureLogic
	mov r6, r0
	mov r5, #0
	ldr r0, [r4]
	mov r1, r5
	bl FUN_020552dc
	movs r3, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	strb r5, [r6, #0x138]
	str r5, [r6, #0x13c]
	strb r5, [r6, #0x14c]
	str r5, [r6, #0x150]
	ldr r0, [r4]
	ldr r1, [r3, #0x84]
	ldr r2, [r3, #0x88]
	ldr r3, [r3, #0x8c]
	bl FUN_ov0_020cc018
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov0_020cb9b4
	ldmfd sp!, {r4, r5, r6, pc}
_020C4CD8: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c4c80

	arm_func_start FUN_ov0_020c4cdc
FUN_ov0_020c4cdc: ; 0x020C4CDC
	bx lr
	arm_func_end FUN_ov0_020c4cdc

	arm_func_start FUN_ov0_020c4ce0
FUN_ov0_020c4ce0: ; 0x020C4CE0
	bx lr
	arm_func_end FUN_ov0_020c4ce0

	arm_func_start FUN_ov0_020c4ce4
FUN_ov0_020c4ce4: ; 0x020C4CE4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r5, _020C4FEC ; =0x0209A200
	mov r4, r0
	ldr r0, [r5, #0xc]
	bl _ZN10FileSystem12CloseArchiveEi
	ldr r0, [r5, #8]
	bl _ZN10FileSystem12CloseArchiveEi
	ldr r0, [r5, #4]
	bl _ZN10FileSystem12CloseArchiveEi
	mvn r0, #0
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	mov r0, #0
	bl FUN_ov16_020f5248
	ldr r0, [r4, #0x164]
	bl _ZN6Thread7DestroyEi
	ldr r0, [r4, #0x168]
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, r4
	bl FUN_ov0_020c2bac
	ldr r5, _020C4FF0 ; =0x020D6100
	ldr r0, [r5]
	cmp r0, #0
	beq _020C4D74
	bl FUN_ov0_020d1364
	ldr r0, [r5]
	cmp r0, #0
	beq _020C4D68
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_020C4D68:
	ldr r0, _020C4FF0 ; =0x020D6100
	mov r1, #0
	str r1, [r0]
_020C4D74:
	ldr r0, _020C4FF4 ; =g3DDevice
	mov r1, #0
	ldr r0, [r0]
	mov r2, r1
	mov r3, r1
	bl _ZN9C3DDevice13setClearColorEthi
	add r0, r4, #0xfa
	bl FUN_ov0_020bfd3c
	ldr r0, _020C4FF8 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _020C4FFC ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager16getNextSceneMainEv
	cmp r0, #1
	bgt _020C4DC4
	beq _020C4E84
	b _020C4EC8
_020C4DC4:
	sub r0, r0, #0x5a
	cmp r0, #0x2b
	addls pc, pc, r0, lsl #2
	b _020C4EC8
_020C4DD4: ; jump table
	b _020C4E84 ; case 0
	b _020C4E84 ; case 1
	b _020C4E84 ; case 2
	b _020C4E84 ; case 3
	b _020C4EC8 ; case 4
	b _020C4EC8 ; case 5
	b _020C4E84 ; case 6
	b _020C4EC8 ; case 7
	b _020C4E84 ; case 8
	b _020C4E84 ; case 9
	b _020C4EC8 ; case 10
	b _020C4EC8 ; case 11
	b _020C4EC8 ; case 12
	b _020C4E84 ; case 13
	b _020C4E84 ; case 14
	b _020C4EC8 ; case 15
	b _020C4E84 ; case 16
	b _020C4E84 ; case 17
	b _020C4E84 ; case 18
	b _020C4E84 ; case 19
	b _020C4E84 ; case 20
	b _020C4E84 ; case 21
	b _020C4E84 ; case 22
	b _020C4E84 ; case 23
	b _020C4E9C ; case 24
	b _020C4E9C ; case 25
	b _020C4E84 ; case 26
	b _020C4EC8 ; case 27
	b _020C4EC8 ; case 28
	b _020C4EC8 ; case 29
	b _020C4E84 ; case 30
	b _020C4EC8 ; case 31
	b _020C4EC8 ; case 32
	b _020C4EC8 ; case 33
	b _020C4EC8 ; case 34
	b _020C4E84 ; case 35
	b _020C4EC8 ; case 36
	b _020C4EC8 ; case 37
	b _020C4EC8 ; case 38
	b _020C4EC8 ; case 39
	b _020C4EC8 ; case 40
	b _020C4EC8 ; case 41
	b _020C4EB4 ; case 42
	b _020C4EB4 ; case 43
_020C4E84:
	ldr r0, _020C5000 ; =0x020A9C40
	mov r1, #0x10
	bl FUN_020455a0
	mov r0, #1
_020C4E94:
	str r0, [r4, #0xc]
	b _020C4EDC
_020C4E9C:
	ldr r0, _020C5004 ; =0x020D619C
	ldr r0, [r0]
	cmp r0, #3
	bne _020C4EB0
	b _020C4E84
_020C4EB0:
	b _020C4EC8
_020C4EB4:
	ldr r0, _020C5000 ; =0x020A9C40
	mov r1, #0x10
	bl FUN_020455a0
	mov r0, #2
	b _020C4E94
_020C4EC8:
	ldr r0, _020C5000 ; =0x020A9C40
	bl FUN_020455ac
	tst r0, #0x10
	moveq r0, #2
	streq r0, [r4, #0xc]
_020C4EDC:
	bl FUN_ov0_020be74c
	ldr r0, [r4, #0xc]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020C4FBC
_020C4EF0: ; jump table
	b _020C4F04 ; case 0
	b _020C4F10 ; case 1
	b _020C4F10 ; case 2
	b _020C4FBC ; case 3
	b _020C4F10 ; case 4
_020C4F04:
	ldr r0, _020C5008 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_02055294
_020C4F10:
	ldr r0, _020C5000 ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020460c0
	ldr r1, [sp, #4]
	ldr r0, _020C500C ; =0x00000192
	cmp r1, r0
	bne _020C4F3C
	ldr r0, [sp]
	cmp r0, #0
	bne _020C4F44
_020C4F3C:
	ldr r0, _020C5010 ; =0x020AF81C
	bl FUN_ov131_02149b24
_020C4F44:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020C4F5C
	ldr r1, [r4, #0xa4]
	ldr r0, _020C5010 ; =0x020AF81C
	bl FUN_ov131_02149b10
_020C4F5C:
	ldr r1, [sp, #4]
	ldr r0, _020C500C ; =0x00000192
	cmp r1, r0
	bne _020C4F78
	ldr r0, [sp]
	cmp r0, #0
	bne _020C4F84
_020C4F78:
	ldr r0, _020C5014 ; =g3DGameMapObject
	ldr r0, [r0]
	bl FUN_ov0_020cdb10
_020C4F84:
	ldr r0, _020C5018 ; =g3DGameMap
	ldr r0, [r0]
	bl FUN_0205ddb8
	ldr r0, _020C501C ; =0x02099F10
	ldr r0, [r0]
	bl FUN_0205c468
	ldr r0, _020C5014 ; =g3DGameMapObject
	ldr r0, [r0]
	bl FUN_0205f61c
	ldr r4, _020C5020 ; =g2DGChar
	ldr r0, [r4]
	bl FUN_020568a4
	ldr r0, [r4]
	bl FUN_02057c38
_020C4FBC:
	ldr r0, _020C5024 ; =g3DSpriteCtrl
	ldr r0, [r0]
	bl FUN_ov16_02116650
	ldr r0, _020C5028 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r0, _020C5018 ; =g3DGameMap
	mov r1, #0
	ldr r0, [r0]
	bl FUN_0205e164
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020C4FEC: .word unk_0209A200
_020C4FF0: .word ov0_020D6100
_020C4FF4: .word g3DDevice
_020C4FF8: .word gSprButtonCtrl
_020C4FFC: .word gSprAnimCtrl
_020C5000: .word unk_020A9C40
_020C5004: .word ov0_020D619C
_020C5008: .word g2DAdventureLogic
_020C500C: .word 0x00000192
_020C5010: .word unk_020AF81C
_020C5014: .word g3DGameMapObject
_020C5018: .word g3DGameMap
_020C501C: .word g3DGameEffect
_020C5020: .word g2DGChar
_020C5024: .word g3DSpriteCtrl
_020C5028: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020c4ce4

	arm_func_start FUN_ov0_020c502c
FUN_ov0_020c502c: ; 0x020C502C
	stmfd sp!, {r4, lr}
	ldr r1, _020C5050 ; =0x020D57DC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d1364
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C5050: .word ov0_020D57DC
	arm_func_end FUN_ov0_020c502c

	arm_func_start FUN_ov0_020c5054
FUN_ov0_020c5054: ; 0x020C5054
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r0, [r6, #0x108]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldreqb r0, [r6, #0x10a]
	cmpeq r0, #0
	ldreqb r0, [r6, #0x10b]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020C516C ; =0x020A9C40
	bl FUN_02045968
	cmp r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x5c]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020C5170 ; =0x020AF81C
	mov r0, r7
	bl FUN_02044600
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_02044560
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020C5174 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020C5178 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020C517C ; =gSprButtonCtrl
	ldr r0, [r7]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _020C5144
	ldr r0, [r7]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_020C5144:
	ldrb r0, [r6, #0x138]
	cmp r0, #0
	ldreqb r0, [r6, #0x14c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov0_020c1850
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C516C: .word unk_020A9C40
_020C5170: .word unk_020AF81C
_020C5174: .word unk_0209A3E0
_020C5178: .word gSprAnimCtrl
_020C517C: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020c5054

	arm_func_start FUN_ov0_020c5180
FUN_ov0_020c5180: ; 0x020C5180
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r2, _020C55C4 ; =0x020D6100
	mov r5, r0
	mov r6, #0
	mov r4, r1
	ldr r0, [r2]
	mov r1, r6
	mov r7, r6
	bl FUN_ov0_020d17ac
	ldrb r0, [r5, #0x108]
	cmp r0, #0
	ldreqb r0, [r5, #0x10a]
	cmpeq r0, #0
	ldreqb r0, [r5, #0x10b]
	cmpeq r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020C55C8 ; =0x020A9C40
	bl FUN_02045968
	cmp r0, #0
	addge sp, sp, #0x20
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x5c]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _020C55CC ; =0x020AF81C
	mov r0, r8
	bl FUN_02044600
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_02044560
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020C55D0 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r5, #8]
	cmpeq r0, #0xd
	ldreq r0, [r5, #0x10]
	cmpeq r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020C55D4 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r6, #1
	cmp r6, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _020C55D8 ; =gSprButtonCtrl
	mov r9, #1
	ldr r0, [r10]
	mov r1, r4
	mov r2, r9
	bl FUN_ov16_0210f20c
	mov r8, r0
	bl FUN_ov0_020bf69c
	cmp r0, #0
	bne _020C52B8
	bl FUN_ov0_020bfa8c
	cmp r0, #0
	beq _020C52D0
_020C52B8:
	ldr r0, _020C55D8 ; =gSprButtonCtrl
	mov r1, #0x80
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C52D0:
	mov r0, r5
	mov r1, r9
	mov r2, r7
	bl FUN_ov0_020c6d68
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r5, #0x138]
	mov r6, r9
	cmp r0, #0
	ldreqb r0, [r5, #0x14c]
	cmpeq r0, #0
	ldreqb r0, [r5, #0x110]
	cmpeq r0, #0
	ldreqb r0, [r5, #0x144]
	cmpeq r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r10]
	mov r1, r7
	bl FUN_ov16_0210ee78
	ldr r0, [r10]
	bl FUN_ov16_0210f484
	cmp r0, #0x18
	bne _020C53F4
	cmp r8, #3
	ldreqh r0, [r4, #6]
	cmpeq r0, #0
	bne _020C53C0
	ldrh r0, [r4]
	sub r0, r0, #0x10
	cmp r0, #0xe0
	movgt r9, #0xe0
	bgt _020C5360
	cmp r0, #1
	movge r9, r0
_020C5360:
	add r0, r5, #0x100
	strh r9, [r0, #4]
	ldrh r0, [r4, #2]
	sub r1, r0, #0x10
	cmp r1, #0xa0
	movgt r1, #0xa0
	bgt _020C5384
	cmp r1, #1
	movlt r1, #1
_020C5384:
	add r0, r5, #0x100
	strh r1, [r0, #6]
	ldr r2, _020C55D8 ; =gSprButtonCtrl
	ldrh r1, [r5, #0xfa]
	ldr r0, [r2]
	bl FUN_ov16_0210eab4
	add r0, r5, #0x100
	ldrsh r1, [r0, #4]
	ldrsh r2, [r0, #6]
	ldr r0, _020C55C8 ; =0x020A9C40
	strb r7, [r5, #0x102]
	strb r6, [r5, #0x103]
	bl FUN_02045cf0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C53C0:
	cmp r8, #2
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r5, #0x103]
	add sp, sp, #0x20
	cmp r0, #0
	ldreq r0, _020C55D8 ; =gSprButtonCtrl
	moveq r1, #0x400
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	strb r7, [r5, #0x103]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C53F4:
	cmp r0, #0x19
	bne _020C5418
	cmp r8, #2
	ldreq r0, [r10]
	moveq r1, #0x800
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C5418:
	cmp r0, #0x64
	bne _020C5438
	cmp r8, #2
	ldreq r0, [r10]
	add sp, sp, #0x20
	addeq r0, r0, #0xf00
	streqh r9, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C5438:
	cmp r0, #0x1a
	bne _020C5458
	cmp r8, #2
	ldreq r0, [r10]
	add sp, sp, #0x20
	addeq r0, r0, #0xf00
	streqh r9, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C5458:
	cmp r0, #0x1c
	blt _020C5498
	ldr r1, [r5, #0x140]
	add r1, r1, #0x1c
	cmp r0, r1
	bge _020C5498
	cmp r8, #2
	bne _020C54CC
	sub r3, r0, #0x1c
	mov r0, r5
	mov r1, r9
	mov r2, r7
	strb r9, [r5, #0x110]
	str r3, [r5, #0x114]
	bl FUN_ov0_020c0044
	b _020C54CC
_020C5498:
	cmp r0, #0x24
	blt _020C54CC
	cmp r0, #0x64
	bge _020C54CC
	cmp r8, #2
	bne _020C54CC
	sub r3, r0, #0x24
	mov r1, #1
	mov r0, r5
	mov r2, #0
	strb r1, [r5, #0x144]
	str r3, [r5, #0x148]
	bl FUN_ov0_020c11d8
_020C54CC:
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _020C555C
	ldrh r0, [r4, #6]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, _020C55C4 ; =0x020D6100
	mov r1, r6
	ldr r0, [r5]
	bl FUN_ov0_020d17ac
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r5]
	bl FUN_ov0_020d1394
	ldr r4, _020C55DC ; =g2DAdventureLogic
	mov r1, #0
	ldr r0, [r4]
	bl FUN_020552dc
	movs r8, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r7, sp, #0x14
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov0_020d173c
	str r6, [sp, #4]
	sub r3, sp, #8
	ldmia r7, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r4]
	ldr r1, [r8, #0x5c]
	ldmia r3, {r2, r3}
	bl FUN_ov0_020cc460
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C555C:
	ldr r4, _020C55DC ; =g2DAdventureLogic
	mov r1, r7
	ldr r0, [r4]
	bl FUN_020552dc
	movs r6, r0
	beq _020C55A8
	ldr r0, _020C55C4 ; =0x020D6100
	add r5, sp, #8
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov0_020d173c
	str r7, [sp, #4]
	sub r3, sp, #8
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r4]
	ldr r1, [r6, #0x5c]
	ldmia r3, {r2, r3}
	bl FUN_ov0_020cc460
_020C55A8:
	ldr r4, _020C55C4 ; =0x020D6100
	ldr r0, [r4]
	bl FUN_ov0_020d17b4
	ldr r0, [r4]
	bl FUN_ov0_020d14fc
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C55C4: .word ov0_020D6100
_020C55C8: .word unk_020A9C40
_020C55CC: .word unk_020AF81C
_020C55D0: .word gSprAnimCtrl
_020C55D4: .word unk_0209A3E0
_020C55D8: .word gSprButtonCtrl
_020C55DC: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c5180

	arm_func_start FUN_ov0_020c55e0
FUN_ov0_020c55e0: ; 0x020C55E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	mov r8, r0
	add r0, sp, #0x48
	mov r10, #0
	mov r6, r1
	bl _ZN16CSceneScriptDataC1Ev
	mov r5, r10
	ldr r0, [r8, #0xa0]
	ldr r2, _020C62B0 ; =0x000051F4
	mov r1, r5
	bl MI_CpuFill8
	ldr r4, _020C62B4 ; =0x020AF81C
	b _020C562C
_020C5618:
	mov r0, r4
	mov r2, r10
	add r1, r5, #0xd
	bl FUN_02044754
	add r5, r5, #1
_020C562C:
	cmp r5, #3
	blt _020C5618
	add r5, sp, #8
	ldr r1, _020C62B8 ; =0x020D5B94
	mov r0, r5
	mov r2, r6
	bl STD_TSPrintf
	ldr r0, _020C62BC ; =0x0209A200
	mov r4, #0
	ldr r1, [r0, #4]
	add r0, sp, #4
	mov r2, r5
	str r4, [sp, #4]
	bl _ZN10FileSystem14ReadFileByNameEPPviPKc
	ldr r1, [sp, #4]
	add r0, sp, #0x48
	cmp r1, #0
	bne _020C5684
	bl _ZN16CSceneScriptDataD1Ev
	add sp, sp, #0x60
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C5684:
	mov r2, r4
	bl _ZN16CSceneScriptData8initFileEPvPKc
_020C568C:
	add r5, sp, #0x48
	mov r1, r4
	mov r0, r5
	bl _ZN16CSceneScriptData4nextEP17ScriptInstruction
	movs r4, r0
	beq _020C6294
	ldrb r0, [r4, #6]
	ldrh r1, [r4, #4]
	add r2, r0, #7
	mov r0, r2, asr #2
	sub r1, r1, #9
	add r0, r2, r0, lsr #29
	sub r1, r1, #0x4000
	cmp r1, #0x20
	mov r6, r0, asr #3
	addls pc, pc, r1, lsl #2
	b _020C568C
_020C56D0: ; jump table
	b _020C568C ; case 0
	b _020C5754 ; case 1
	b _020C568C ; case 2
	b _020C57E0 ; case 3
	b _020C568C ; case 4
	b _020C58C0 ; case 5
	b _020C568C ; case 6
	b _020C5BAC ; case 7
	b _020C5CB0 ; case 8
	b _020C568C ; case 9
	b _020C568C ; case 10
	b _020C568C ; case 11
	b _020C568C ; case 12
	b _020C568C ; case 13
	b _020C568C ; case 14
	b _020C568C ; case 15
	b _020C568C ; case 16
	b _020C568C ; case 17
	b _020C568C ; case 18
	b _020C568C ; case 19
	b _020C568C ; case 20
	b _020C568C ; case 21
	b _020C568C ; case 22
	b _020C5D08 ; case 23
	b _020C5E00 ; case 24
	b _020C568C ; case 25
	b _020C568C ; case 26
	b _020C6260 ; case 27
	b _020C568C ; case 28
	b _020C568C ; case 29
	b _020C5A18 ; case 30
	b _020C568C ; case 31
	b _020C568C ; case 32
_020C5754:
	ldr r1, [r8, #0xa0]
	add r0, r6, #4
	ldr r2, [r1], #0x1c
	mov r5, #0x770
	mla r1, r2, r5, r1
	add r0, r4, r0, lsl #2
	ldr r2, [r0, #8]
	mov r0, r8
	bl FUN_ov0_020c6a1c
	ldr r0, [r8, #0xa0]
	add r2, r6, #1
	ldr r1, [r0]
	add r2, r4, r2, lsl #2
	mla r0, r1, r5, r0
	ldr r2, [r2, #8]
	add r1, r6, #2
	str r2, [r0, #0x3c]
	add r2, r4, r1, lsl #2
	ldr r0, [r8, #0xa0]
	ldr r2, [r2, #8]
	ldr r1, [r0]
	mla r0, r1, r5, r0
	str r2, [r0, #0x40]
	ldr r0, [r8, #0xa0]
	add r2, r6, #3
	ldr r1, [r0]
	add r2, r4, r2, lsl #2
	mla r0, r1, r5, r0
	ldr r1, [r2, #8]
	str r1, [r0, #0x44]
	ldr r1, [r8, #0xa0]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	b _020C568C
_020C57E0:
	ldr r3, [r8, #0xa0]
	add r5, r6, #3
	ldr r1, [r3, #4]
	mov r0, #0x24
	mul r0, r1, r0
	add r1, r3, #0x39c
	add r2, r4, r6, lsl #2
	ldr r3, [r2, #8]
	add r1, r1, #0x3800
	str r3, [r1, r0]
	add r2, r6, #1
	add r2, r4, r2, lsl #2
	ldr r9, [r2, #8]
	add r0, r1, r0
	add r7, r6, #2
	add r3, r6, #4
	add r2, r6, #5
	str r9, [r0, #4]
	add r1, r4, r7, lsl #2
	ldr r7, [r1, #8]
	add r1, r6, #8
	str r7, [r0, #8]
	add r5, r4, r5, lsl #2
	ldr r5, [r5, #8]
	add r3, r4, r3, lsl #2
	str r5, [r0, #0xc]
	ldr r3, [r3, #8]
	add r2, r4, r2, lsl #2
	str r3, [r0, #0x10]
	ldr r2, [r2, #8]
	add r1, r4, r1, lsl #2
	str r2, [r0, #0x14]
	ldr r7, [r1, #8]
	ldr r1, _020C62C0 ; =0x4BB834C8
	mov r2, #0x39
	umull r3, r9, r7, r1
	mla r9, r7, r2, r9
	mov r2, r7, asr #0x1f
	adds r3, r3, #0x80000000
	mla r9, r2, r1, r9
	adc r1, r9, r10
	str r1, [r0, #0x18]
	add r5, r6, #6
	str r10, [r0, #0x1c]
	add r1, r4, r5, lsl #2
	ldr r2, [r1, #8]
	add r3, r6, #7
	add r1, r4, r3, lsl #2
	strb r2, [r0, #0x20]
	ldr r1, [r1, #8]
	strb r1, [r0, #0x21]
	ldr r1, [r8, #0xa0]
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	b _020C568C
_020C58C0:
	ldr r3, [r8, #0xa0]
	mov r0, #0x78
	ldr r1, [r3, #8]
	add r2, r4, r6, lsl #2
	mul r0, r1, r0
	add r1, r3, #0x3e4
	add r9, r1, #0x3800
	ldr r3, [r2, #8]
	add r2, r6, #1
	str r3, [r9, r0]
	add r5, r9, r0
	add r0, r4, r2, lsl #2
	ldr r0, [r0, #8]
	add r3, r6, #4
	add r7, r6, #2
	str r0, [r5, #4]
	add r0, r4, r7, lsl #2
	ldr r7, [r0, #8]
	add r1, r6, #3
	add r0, r4, r1, lsl #2
	str r7, [r5, #8]
	ldr r7, [r0, #8]
	add r2, r6, #5
	add r1, r6, #6
	add r0, r6, #7
	str r7, [r5, #0xc]
	add r3, r4, r3, lsl #2
	ldr r3, [r3, #8]
	add r2, r4, r2, lsl #2
	str r3, [r5, #0x10]
	ldr r2, [r2, #8]
	add r1, r4, r1, lsl #2
	str r2, [r5, #0x14]
	str r10, [r5, #0x18]
	str r10, [r5, #0x1c]
	ldr r1, [r1, #8]
	add r0, r4, r0, lsl #2
	strb r1, [r5, #0x42]
	ldr r1, [r0, #8]
	add r0, r5, #0x22
	bl STD_ConcatenateString
	add r0, r6, #8
	add r0, r4, r0, lsl #2
	ldr r7, [r0, #8]
	add r3, r6, #9
	strb r7, [r5, #0x20]
	add r2, r6, #0xa
	add r3, r4, r3, lsl #2
	add r1, r6, #0xd
	add r0, r6, #0xb
	add lr, r6, #0xc
	ldr r6, [r3, #8]
	add r3, r4, r1, lsl #2
	strb r6, [r5, #0x21]
	ldr r3, [r3, #8]
	add r2, r4, r2, lsl #2
	strb r3, [r5, #0x43]
	ldr r3, [r2, #8]
	add r2, r4, r0, lsl #2
	str r3, [r5, #0x44]
	ldr r3, [r2, #8]
	add r2, r4, lr, lsl #2
	str r3, [r5, #0x48]
	ldr r2, [r2, #8]
	mov r7, #1
	str r2, [r5, #0x4c]
	mov r2, #0xc
	b _020C5A0C
_020C59D0:
	mla r6, r7, r2, r5
	add r12, r7, r7, lsl #1
	add r3, r0, r12
	add r3, r4, r3, lsl #2
	ldr r9, [r3, #8]
	add r3, lr, r12
	str r9, [r6, #0x44]
	add r3, r4, r3, lsl #2
	ldr r3, [r3, #8]
	add r9, r1, r12
	str r3, [r6, #0x48]
	add r3, r4, r9, lsl #2
	ldr r3, [r3, #8]
	add r7, r7, #1
	str r3, [r6, #0x4c]
_020C5A0C:
	cmp r7, #4
	blt _020C59D0
	b _020C60B0
_020C5A18:
	ldr r3, [r8, #0xa0]
	add r2, r4, r6, lsl #2
	ldr r1, [r3, #8]
	mov r0, #0x78
	mul r0, r1, r0
	add r1, r3, #0x3e4
	add r9, r1, #0x3800
	ldr r2, [r2, #8]
	add r1, r6, #1
	str r2, [r9, r0]
	add r5, r9, r0
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #8]
	add r3, r6, #3
	add r2, r6, #4
	add r7, r6, #2
	str r0, [r5, #4]
	add r0, r4, r7, lsl #2
	ldr r7, [r0, #8]
	add r1, r6, #5
	add r0, r6, #6
	str r7, [r5, #8]
	add r3, r4, r3, lsl #2
	ldr r3, [r3, #8]
	add r2, r4, r2, lsl #2
	str r3, [r5, #0xc]
	ldr r2, [r2, #8]
	add r1, r4, r1, lsl #2
	str r2, [r5, #0x10]
	ldr r1, [r1, #8]
	add r0, r4, r0, lsl #2
	str r1, [r5, #0x14]
	ldr r7, [r0, #8]
	ldr r0, _020C62C0 ; =0x4BB834C8
	mov r1, #0x39
	umull r2, r9, r7, r0
	mla r9, r7, r1, r9
	mov r1, r7, asr #0x1f
	adds r2, r2, #0x80000000
	mla r9, r1, r0, r9
	adc r0, r9, r10
	str r0, [r5, #0x18]
	add r3, r6, #7
	str r10, [r5, #0x1c]
	add r0, r4, r3, lsl #2
	ldr r1, [r0, #8]
	add r2, r6, #8
	add r0, r4, r2, lsl #2
	strb r1, [r5, #0x42]
	ldr r1, [r0, #8]
	add r0, r5, #0x22
	bl STD_ConcatenateString
	add r0, r6, #9
	add r0, r4, r0, lsl #2
	ldr r7, [r0, #8]
	add r2, r6, #0xa
	add r3, r6, #0xb
	add r2, r4, r2, lsl #2
	strb r7, [r5, #0x20]
	ldr r7, [r2, #8]
	add r2, r6, #0xc
	add r1, r6, #0xe
	strb r7, [r5, #0x21]
	add r7, r4, r1, lsl #2
	ldr r7, [r7, #8]
	add r0, r6, #0xf
	str r7, [r5, #0x74]
	add r7, r4, r0, lsl #2
	ldr r7, [r7, #8]
	add r3, r4, r3, lsl #2
	strb r7, [r5, #0x43]
	ldr r3, [r3, #8]
	add r2, r4, r2, lsl #2
	str r3, [r5, #0x44]
	ldr r3, [r2, #8]
	add lr, r6, #0xd
	add r2, r4, lr, lsl #2
	str r3, [r5, #0x48]
	ldr r2, [r2, #8]
	mov r7, #1
	str r2, [r5, #0x4c]
	mov r2, #0xc
	b _020C5BA0
_020C5B64:
	mla r6, r7, r2, r5
	add r12, r7, r7, lsl #1
	add r3, lr, r12
	add r3, r4, r3, lsl #2
	ldr r9, [r3, #8]
	add r3, r1, r12
	str r9, [r6, #0x44]
	add r3, r4, r3, lsl #2
	ldr r3, [r3, #8]
	add r9, r0, r12
	str r3, [r6, #0x48]
	add r3, r4, r9, lsl #2
	ldr r3, [r3, #8]
	add r7, r7, #1
	str r3, [r6, #0x4c]
_020C5BA0:
	cmp r7, #4
	blt _020C5B64
	b _020C60B0
_020C5BAC:
	ldr r3, [r8, #0xa0]
	mov r0, #0x38
	ldr r2, [r3, #0xc]
	add r1, r6, #1
	mul r0, r2, r0
	add r2, r4, r1, lsl #2
	add r1, r3, #0x364
	ldr r3, [r2, #8]
	add r1, r1, #0x4000
	add r2, r6, #2
	str r3, [r1, r0]
	add r2, r4, r2, lsl #2
	ldr r11, [r2, #8]
	add r9, r1, r0
	add r7, r6, #3
	add r0, r4, r7, lsl #2
	str r11, [r9, #4]
	ldr r1, [r0, #8]
	add r5, r6, #4
	str r1, [r9, #8]
	add r0, r4, r5, lsl #2
	ldr r0, [r0, #8]
	add r2, r6, #6
	add r3, r6, #5
	str r0, [r9, #0xc]
	add r0, r4, r3, lsl #2
	ldr r3, [r0, #8]
	add r1, r6, #8
	add r0, r6, #7
	str r3, [r9, #0x10]
	add r2, r4, r2, lsl #2
	ldr r2, [r2, #8]
	add r1, r4, r1, lsl #2
	str r2, [r9, #0x14]
	str r10, [r9, #0x18]
	str r10, [r9, #0x1c]
	add r2, r4, r6, lsl #2
	ldr r2, [r2, #8]
	add r0, r4, r0, lsl #2
	strb r2, [r9, #0x20]
	ldr r1, [r1, #8]
	mov r7, #9
	strh r1, [r9, #0x22]
	ldr r2, [r0, #8]
	ldr r0, _020C62C0 ; =0x4BB834C8
	mov r1, #0x39
	umull r5, r3, r2, r0
	mla r3, r2, r1, r3
	mov r1, r2, asr #0x1f
	mla r3, r1, r0, r3
	adds r0, r5, #0x80000000
	adc r0, r3, r10
	str r0, [r9, #0x24]
	b _020C5CA0
_020C5C84:
	add r0, r6, r7
	add r1, r4, r0, lsl #2
	sub r0, r7, #9
	ldr r1, [r1, #8]
	add r0, r9, r0, lsl #2
	str r1, [r0, #0x28]
	add r7, r7, #1
_020C5CA0:
	ldrb r0, [r4, #6]
	cmp r7, r0
	blt _020C5C84
	b _020C5DEC
_020C5CB0:
	mov r7, #0
	b _020C5CFC
_020C5CB8:
	add r0, r6, r7
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #8]
	ldrsb r0, [r1]
	cmp r0, #0
	beq _020C5CF8
	ldr r2, [r8, #0xa0]
	add r0, r2, #0x1b4
	ldr r2, [r2, #0x14]
	add r0, r0, #0x5000
	add r0, r0, r2, lsl #5
	bl STD_CopyString
	ldr r1, [r8, #0xa0]
	ldr r0, [r1, #0x14]
	add r0, r0, #1
	str r0, [r1, #0x14]
_020C5CF8:
	add r7, r7, #1
_020C5CFC:
	cmp r7, #2
	blt _020C5CB8
	b _020C568C
_020C5D08:
	ldr r3, [r8, #0xa0]
	add r5, r6, #4
	ldr r2, [r3, #0xc]
	mov r0, #0x38
	mul r0, r2, r0
	add r1, r6, #1
	add r2, r4, r1, lsl #2
	add r1, r3, #0x364
	ldr r3, [r2, #8]
	add r1, r1, #0x4000
	str r3, [r1, r0]
	add r2, r6, #2
	add r2, r4, r2, lsl #2
	ldr r9, [r2, #8]
	add r0, r1, r0
	add r7, r6, #3
	add r3, r6, #5
	add r2, r6, #6
	str r9, [r0, #4]
	add r1, r4, r7, lsl #2
	ldr r7, [r1, #8]
	add r1, r6, #7
	str r7, [r0, #8]
	add r5, r4, r5, lsl #2
	ldr r5, [r5, #8]
	add r3, r4, r3, lsl #2
	str r5, [r0, #0xc]
	ldr r3, [r3, #8]
	add r2, r4, r2, lsl #2
	str r3, [r0, #0x10]
	ldr r2, [r2, #8]
	add r1, r4, r1, lsl #2
	str r2, [r0, #0x14]
	ldr r5, [r1, #8]
	ldr r1, _020C62C0 ; =0x4BB834C8
	mov r2, #0x39
	umull r9, r7, r5, r1
	mla r7, r5, r2, r7
	mov r5, r5, asr #0x1f
	add r3, r6, #8
	mla r7, r5, r1, r7
	adds r9, r9, #0x80000000
	adc r5, r7, r10
	str r5, [r0, #0x18]
	str r10, [r0, #0x1c]
	add r5, r4, r6, lsl #2
	ldr r5, [r5, #8]
	add r3, r4, r3, lsl #2
	strb r5, [r0, #0x20]
	ldr r3, [r3, #8]
	umull r6, r5, r3, r1
	mla r5, r3, r2, r5
	mov r2, r3, asr #0x1f
	mla r5, r2, r1, r5
	adds r6, r6, #0x80000000
	adc r1, r5, r10
	str r1, [r0, #0x24]
_020C5DEC:
	ldr r1, [r8, #0xa0]
	ldr r0, [r1, #0xc]
	add r0, r0, #1
	str r0, [r1, #0xc]
	b _020C568C
_020C5E00:
	ldr r1, [r8, #0xa0]
	mov r2, #0x38
	ldr r3, [r1, #0xc]
	add r0, r1, #0x364
	add r5, r0, #0x4000
	sub r0, r3, #1
	mla r9, r0, r2, r5
	ldrb r3, [r9, #0x20]
	cmp r3, #7
	bhi _020C6254
	mov r2, #1
	mov r0, #0
	add pc, pc, r3, lsl #2
	mov r0, r0
	b _020C6254
_020C5E3C:
	b _020C5E88
	b _020C5E98
	b _020C5E58
	b _020C60C4
	b _020C6254
	b _020C6254
	b _020C623C
_020C5E58:
	add r0, r4, r6, lsl #0x2
	ldr r1, [r0, #0x8]
	mov r0, #0x3
	strh r1, [r9, #0x22]
	strb r0, [r9, #0x21]
	ldrsh r1, [r9, #0x22]
	mov r0, r2
	cmp r1, #0x64
	movgt r0, #0x2
	strgtb r0, [r9, #0x20]
	strleb r0, [r9, #0x20]
	b _020C568C
_020C5E88:
	mov r1, #0x3
	strb r1, [r9, #0x20]
	strh r0, [r9, #0x22]
	b _020C568C
_020C5E98:
	mov r3, #0x6
	add r1, r6, #0x1
	strb r3, [r9, #0x20]
	strb r2, [r9, #0x21]
	add r1, r4, r1, lsl #0x2
	ldr r1, [r1, #0x8]
	strh r1, [r9, #0x22]
	ldrb r1, [r4, #0x6]
	cmp r1, #0x15
	bgt _020C5EF0
	bge _020C5F14
	cmp r1, #0x5
	bgt _020C5F48
	cmp r1, #0x4
	blt _020C5F48
	beq _020C5F14
	cmp r1, #0x5
	addeq r1, r6, #0x4
	addeq r1, r4, r1, lsl #0x2
	ldreq r1, [r1, #0x8]
	streq r1, [sp, #0x0]
	b _020C5F48
_020C5EF0:
	cmp r1, #0x18
	bgt _020C5F48
	cmp r1, #0x16
	blt _020C5F48
	beq _020C5F38
	cmp r1, #0x17
	cmpne r1, #0x18
	beq _020C5F28
	b _020C5F48
_020C5F14:
	add r1, r6, #0x2
	add r1, r4, r1, lsl #0x2
	ldr r1, [r1, #0x8]
	and r1, r1, #0x7
	b _020C5F44
_020C5F28:
	add r1, r6, #0x16
	add r1, r4, r1, lsl #0x2
	ldr r1, [r1, #0x8]
	str r1, [r9, #0x34]
_020C5F38:
	add r1, r6, #0x15
	add r1, r4, r1, lsl #0x2
	ldr r1, [r1, #0x8]
_020C5F44:
	str r1, [sp, #0x0]
_020C5F48:
	ldr r1, [sp, #0x0]
	cmp r1, #0x0
	beq _020C5F74
	cmp r1, #0x1
	beq _020C5F80
	cmp r1, #0x2
	ldreq r2, _020C62C4 ; =0x0000044D
	moveq r1, #0xa1
	streq r2, [r9, #0x28]
	streq r1, [r9, #0x2c]
	b _020C5F90
_020C5F74:
	ldr r2, _020C62C8 ; =0x000003E9
	mov r1, #0xa0
	b _020C5F88
_020C5F80:
	ldr r2, _020C62CC ; =0x000004B1
	mov r1, #0xa2
_020C5F88:
	str r2, [r9, #0x28]
	str r1, [r9, #0x2c]
_020C5F90:
	add r1, r6, #0x2
	str r0, [r9, #0x30]
	add r0, r4, r1, lsl #0x2
	ldr r0, [r0, #0x8]
	tst r0, #0x8
	beq _020C568C
	ldr r0, [r8, #0xa0]
	sub r6, r6, #0x4
	ldr r0, [r0, #0x8]
	mov r1, #0x78
	add r0, r0, #0x1
	str r0, [r9, #0x30]
	ldr r3, [r8, #0xa0]
	add r2, r6, #0x8
	add r0, r3, #0x3e4
	ldr r3, [r3, #0x8]
	add r0, r0, #0x3800
	mla r5, r3, r1, r0
	mov r0, #0x2
	strb r0, [r5, #0x42]
	add r0, r4, r2, lsl #0x2
	ldr r1, [r0, #0x8]
	add r0, r5, #0x22
	bl STD_ConcatenateString
	add r0, r6, #0x9
	add r0, r4, r0, lsl #0x2
	ldr r7, [r0, #0x8]
	add r2, r6, #0xa
	add r3, r6, #0xb
	add r2, r4, r2, lsl #0x2
	strb r7, [r5, #0x20]
	ldr r7, [r2, #0x8]
	add r2, r6, #0xc
	add r1, r6, #0xe
	strb r7, [r5, #0x21]
	add r7, r4, r1, lsl #0x2
	ldr r7, [r7, #0x8]
	add r0, r6, #0xf
	add r9, r6, #0xd
	str r7, [r5, #0x74]
	add r6, r4, r0, lsl #0x2
	ldr r6, [r6, #0x8]
	add r3, r4, r3, lsl #0x2
	strb r6, [r5, #0x43]
	ldr r3, [r3, #0x8]
	add r2, r4, r2, lsl #0x2
	str r3, [r5, #0x44]
	ldr r3, [r2, #0x8]
	add r2, r4, r9, lsl #0x2
	str r3, [r5, #0x48]
	ldr r2, [r2, #0x8]
	mov r7, #0x1
	str r2, [r5, #0x4c]
	mov r2, #0xc
	b _020C60A8
_020C606C:
	mla r6, r7, r2, r5
	add lr, r7, r7, lsl #0x1
	add r3, r9, lr
	add r3, r4, r3, lsl #0x2
	ldr r12, [r3, #0x8]
	add r3, r1, lr
	str r12, [r6, #0x44]
	add r3, r4, r3, lsl #0x2
	ldr r3, [r3, #0x8]
	add r11, r0, lr
	str r3, [r6, #0x48]
	add r3, r4, r11, lsl #0x2
	ldr r3, [r3, #0x8]
	add r7, r7, #0x1
	str r3, [r6, #0x4c]
_020C60A8:
	cmp r7, #0x4
	blt _020C606C
_020C60B0:
	ldr r1, [r8, #0xa0]
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	b _020C568C
_020C60C4:
	ldr r0, [r1, #0x10]
	cmp r0, #0x1
	bge _020C568C
	mov r0, #0x15
	strb r0, [r9, #0x20]
	ldr r3, [r8, #0xa0]
	ldr r0, _020C62D0 ; =gCameraController
	ldr r2, [r3, #0x10]
	add r1, r2, #0x1
	str r1, [r3, #0x10]
	strh r2, [r9, #0x22]
	ldr r2, [r8, #0xa0]
	ldr r1, [r2, #0xc]
	add r1, r1, #0x1
	str r1, [r2, #0xc]
	ldr r7, [r0, #0x0] ; =gCameraController
	mov r0, r7
	bl FUN_ov16_020f7c24
	mov r5, r0
	mov r0, r7
	bl FUN_ov16_020f7c44
	mov r11, r0
	mov r0, r7
	bl FUN_ov16_020f7c34
	ldr r1, [r8, #0xa0]
	ldrsh r3, [r9, #0x22]
	add r1, r1, #0x164
	add r1, r1, #0x5000
	mov r2, #0x50
	smulbb r3, r3, r2
	str r9, [r1, r3]
	ldr r2, [r5, #0x0]
	add r1, r1, r3
	str r2, [r1, #0x10]
	ldr r2, [r5, #0x4]
	add r3, r6, #0x3
	str r2, [r1, #0x14]
	ldr r5, [r5, #0x8]
	add r2, r6, #0x4
	str r5, [r1, #0x18]
	ldr r7, [r0, #0x0]
	add r5, r4, r3, lsl #0x2
	str r7, [r1, #0x4]
	ldr r7, [r0, #0x4]
	add r3, r4, r2, lsl #0x2
	str r7, [r1, #0x8]
	ldr r0, [r0, #0x8]
	add r2, r6, #0x5
	str r0, [r1, #0xc]
	str r11, [r1, #0x1c]
	ldr r5, [r5, #0x8]
	add r0, r6, #0x6
	str r5, [r1, #0x20]
	ldr r7, [r3, #0x8]
	add r5, r6, #0x7
	add r3, r6, #0x8
	str r7, [r1, #0x24]
	add r2, r4, r2, lsl #0x2
	ldr r7, [r2, #0x8]
	add r2, r6, #0x9
	str r7, [r1, #0x28]
	add r0, r4, r0, lsl #0x2
	ldr r7, [r0, #0x8]
	add r0, r6, #0xa
	str r7, [r1, #0x2c]
	add r5, r4, r5, lsl #0x2
	ldr r7, [r5, #0x8]
	add r5, r6, #0xb
	str r7, [r1, #0x30]
	add r3, r4, r3, lsl #0x2
	ldr r7, [r3, #0x8]
	add r3, r6, #0xc
	str r7, [r1, #0x34]
	add r2, r4, r2, lsl #0x2
	ldr r7, [r2, #0x8]
	add r2, r6, #0xd
	str r7, [r1, #0x38]
	add r0, r4, r0, lsl #0x2
	ldr r7, [r0, #0x8]
	add r0, r6, #0xe
	str r7, [r1, #0x3c]
	add r5, r4, r5, lsl #0x2
	ldr r5, [r5, #0x8]
	add r3, r4, r3, lsl #0x2
	str r5, [r1, #0x40]
	ldr r3, [r3, #0x8]
	add r2, r4, r2, lsl #0x2
	str r3, [r1, #0x44]
	ldr r2, [r2, #0x8]
	add r0, r4, r0, lsl #0x2
	str r2, [r1, #0x48]
	ldr r0, [r0, #0x8]
	str r0, [r1, #0x4c]
	b _020C568C
_020C623C:
	mov r0, r8
	mov r1, r9
	mov r2, r4
	mov r3, r6
	bl FUN_ov0_020c62d4
	b _020C568C
_020C6254:
	strb r10, [r9, #0x20]
	strh r10, [r9, #0x22]
	b _020C568C
_020C6260:
	add r0, r6, #1
	add r2, r6, #2
	add r1, r4, r6, lsl #2
	add r0, r4, r0, lsl #2
	add r2, r4, r2, lsl #2
	ldr r1, [r1, #8]
	ldr r0, [r0, #8]
	ldr r2, [r2, #8]
	orr r1, r1, r0, lsl #5
	ldr r0, [r8, #0xa0]
	orr r1, r1, r2, lsl #10
	strh r1, [r0, #0x18]
	b _020C568C
_020C6294:
	ldr r0, [sp, #4]
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, r5
	bl _ZN16CSceneScriptDataD1Ev
	mov r0, #1
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C62B0: .word 0x000051F4
_020C62B4: .word unk_020AF81C
_020C62B8: .word ov0_020D5B94
_020C62BC: .word unk_0209A200
_020C62C0: .word 0x4BB834C8
_020C62C4: .word 0x0000044D
_020C62C8: .word 0x000003E9
_020C62CC: .word 0x000004B1
_020C62D0: .word gCameraController
	arm_func_end FUN_ov0_020c55e0

	arm_func_start FUN_ov0_020c62d4
FUN_ov0_020c62d4: ; 0x020C62D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x150
	add r4, r2, r3, lsl #2
	ldr r7, [r4, #8]
	mov r4, r1
	add r5, r3, #1
	mov r6, #3
	and r1, r7, #0xff
	strb r7, [r4, #0x20]
	add r5, r2, r5, lsl #2
	strb r6, [r4, #0x21]
	ldr r6, [r5, #8]
	mov r5, r0
	strh r6, [r4, #0x22]
	cmp r1, #0x10
	mov r8, #1
	mov r6, #0
	addls pc, pc, r1, lsl #2
	b _020C69DC
_020C6320: ; jump table
	b _020C69DC ; case 0
	b _020C6364 ; case 1
	b _020C6364 ; case 2
	b _020C63AC ; case 3
	b _020C63AC ; case 4
	b _020C69DC ; case 5
	b _020C63A0 ; case 6
	b _020C69DC ; case 7
	b _020C6390 ; case 8
	b _020C69DC ; case 9
	b _020C69DC ; case 10
	b _020C69DC ; case 11
	b _020C69DC ; case 12
	b _020C63CC ; case 13
	b _020C6764 ; case 14
	b _020C69DC ; case 15
	b _020C6364 ; case 16
_020C6364:
	ldrb r0, [r2, #6]
	cmp r0, #4
	addlo sp, sp, #0x150
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r3, #3
	add r0, r2, r0, lsl #2
	ldr r0, [r0, #8]
	add sp, sp, #0x150
	cmp r0, #0
	strneb r0, [r4, #0x21]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C6390:
	mov r0, #2
	add sp, sp, #0x150
	strb r0, [r4, #0x21]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C63A0:
	add sp, sp, #0x150
	strb r8, [r4, #0x21]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C63AC:
	ldrb r0, [r2, #6]
	add sp, sp, #0x150
	cmp r0, #4
	addhs r0, r3, #3
	addhs r0, r2, r0, lsl #2
	ldrhs r0, [r0, #8]
	strhs r0, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C63CC:
	ldr r8, _020C69E4 ; =0x020D581C
	add r7, sp, #0x108
	mov r6, #4
_020C63D8:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _020C63D8
	ldmia r8, {r0, r1}
	stmia r7, {r0, r1}
	ldr r8, _020C69E8 ; =0x020D4EB4
	add r7, sp, #0x80
	mov r6, #8
_020C63FC:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	mov r10, #1
	bne _020C63FC
	ldr r2, _020C69EC ; =gDungeonManager
	ldmia r8, {r0, r1}
	stmia r7, {r0, r1}
	ldr r0, [r2]
	bl FUN_ov16_020f8860
	movs r7, r0
	addeq sp, sp, #0x150
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x108]
	mov r9, #0
	cmp r0, #0
	beq _020C6474
	ldr r8, _020C69F0 ; =0x020A9C40
	add r6, sp, #0x108
_020C6448:
	mov r0, r8
	bl FUN_02045950
	mov r1, r0
	ldr r0, [r6, r9, lsl #2]
	bl STD_CompareString
	cmp r0, #0
	beq _020C6474
	add r9, r9, #1
	ldr r0, [r6, r9, lsl #2]
	cmp r0, #0
	bne _020C6448
_020C6474:
	add r0, sp, #0x108
	ldr r0, [r0, r9, lsl #2]
	ldrsh r1, [r4, #0x22]
	cmp r0, #0
	ldr r3, _020C69F4 ; =0x000003E9
	rsb r0, r1, #0x1e
	strh r0, [r4, #0x22]
	mov r2, #0xa0
	ldr r0, _020C69F8 ; =0x020AF81C
	str r3, [r4, #0x28]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	moveq r9, #0
	ldrsh r8, [r4, #0x22]
	bl FUN_02044494
	ldr r2, [r7, #0x434]
	ldr r1, [r7, #0x438]
	add r2, r7, r2, lsl #6
	add r1, r2, r1, lsl #2
	ldr r3, [r4, #0x30]
	ldrb r1, [r1, #0x24]
	sub r2, r3, #1
	mov r6, r0
	tst r1, r10, lsl r2
	beq _020C656C
	add r1, sp, #0x80
	ldr r1, [r1, r9, lsl #3]
	mov r10, #4
	str r1, [sp]
	ldr r1, [r5, #0xa4]
	mov r9, #0
	stmib sp, {r1, r9}
	ldr r2, _020C69FC ; =0x020D5B9C
	mov r1, r8
	mov r3, r10
	str r9, [sp, #0xc]
	bl FUN_02037c98
	mov r0, r6
	mov r1, r8
	bl FUN_02037fb0
	ldr r2, _020C6A00 ; =0x0000052E
	mov r0, r6
	mov r1, r8
	mov r3, r9
	bl FUN_020384a4
	ldr r1, [r7, #0x434]
	ldr r0, [r7, #0x438]
	add r1, r7, r1, lsl #6
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #0x26]
	tst r0, #8
	beq _020C65A8
	ldr r2, _020C6A04 ; =0x020D5BA0
	mov r0, r6
	mov r1, r8
	sub r3, r10, #5
	bl FUN_02038554
	mov r0, r6
	mov r1, r8
	mov r2, r9
	bl FUN_020388c0
	b _020C65A8
_020C656C:
	add r1, sp, #0x84
	ldr r1, [r1, r9, lsl #3]
	mov r3, #0
	str r1, [sp]
	ldr r9, [r5, #0xa4]
	ldr r2, _020C6A08 ; =0x020D5BA8
	str r9, [sp, #4]
	str r3, [sp, #8]
	mov r1, r8
	mov r3, #4
	str r10, [sp, #0xc]
	bl FUN_02037c98
	mov r0, r6
	mov r1, r8
	bl FUN_02037fb0
_020C65A8:
	ldr r0, [r4, #8]
	mov r9, #0
	stmia sp, {r0, r9}
	ldmia r4, {r2, r3}
	mov r0, r6
	mov r1, r8
	bl FUN_02038058
	str r9, [sp]
	str r9, [sp, #4]
	ldr r3, [r4, #0x24]
	mov r0, r6
	mov r1, r8
	mov r2, r9
	rsb r3, r3, #0x168000
	bl FUN_020381a0
	ldr r0, [r4, #0x30]
	ldr r3, [r5, #0xa0]
	sub r0, r0, #1
	mov r1, #0x78
	mul r2, r0, r1
	add r3, r3, #0x3c00
	ldr r0, [r3, r2]
	orr r0, r0, #1
	str r0, [r3, r2]
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _020C66EC
	ldr r0, [r5, #0xa0]
	add r0, r0, #0x3000
	ldr r2, [r0, #0xde0]
	orr r2, r2, #1
	str r2, [r0, #0xde0]
	ldr r2, [r7, #0x434]
	ldr r0, [r7, #0x438]
	add r2, r7, r2, lsl #6
	add r0, r2, r0, lsl #2
	ldrh r0, [r0, #0x26]
	tst r0, #0x200
	beq _020C66EC
	ldr r8, [r5, #0xa0]
	ldr r2, [r4, #0x30]
	add r0, r8, #0x3e4
	add r3, r0, #0x3800
	sub r0, r2, #1
	mla r6, r0, r1, r3
	add r0, r8, #0x1c4
	add r8, r0, #0x3c00
	mov r10, r8
	mov r9, r6
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r10, {r0, r1, r2, r3}
	stmia r9, {r0, r1, r2, r3}
	ldrb r1, [r8, #0x20]
	ldrb r0, [r8, #0x21]
	add r9, r8, #0x22
	add r3, r6, #0x22
	strb r1, [r6, #0x20]
	strb r0, [r6, #0x21]
	mov r2, #0x10
_020C6698:
	ldrb r1, [r9]
	ldrb r0, [r9, #1]
	add r9, r9, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C6698
	ldrsb r0, [r8, #0x42]
	add r10, r8, #0x44
	add r9, r6, #0x44
	strb r0, [r6, #0x42]
	ldrsb r0, [r8, #0x43]
	strb r0, [r6, #0x43]
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r10, {r0, r1, r2, r3}
	stmia r9, {r0, r1, r2, r3}
	ldr r0, [r8, #0x74]
	str r0, [r6, #0x74]
_020C66EC:
	ldr r0, [r5, #0xa0]
	ldr r1, [r4, #0x30]
	add r0, r0, #0x3e4
	add r2, r0, #0x3800
	sub r1, r1, #1
	mov r0, #0x78
	mla r5, r1, r0, r2
	ldmia r5, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add r0, r5, #0xc
	add r3, r4, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r5, #0x18]
	ldr r0, [r4, #0x30]
	str r1, [r4, #0x18]
	ldr r3, [r5, #0x1c]
	sub r2, r0, #1
	str r3, [r4, #0x1c]
	ldr r1, [r7, #0x434]
	ldr r0, [r7, #0x438]
	add r1, r7, r1, lsl #6
	add r0, r1, r0, lsl #2
	ldrb r0, [r0, #0x24]
	mov r1, #1
	add sp, sp, #0x150
	tst r0, r1, lsl r2
	bicne r0, r3, #1
	strne r0, [r4, #0x1c]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C6764:
	ldr r9, _020C69EC ; =gDungeonManager
	ldr r0, [r9]
	bl FUN_ov16_020f8860
	movs r7, r0
	addeq sp, sp, #0x150
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r7, #0x434]
	ldr r2, [r7, #0x438]
	add r0, r7, r1, lsl #6
	add r0, r0, r2, lsl #2
	ldrh r0, [r0, #0x26]
	mov r3, r2, lsl #2
	tst r0, #8
	addne sp, sp, #0x150
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r7, #0x26
	add r2, r0, r1, lsl #6
	ldrh r1, [r2, r3]
	ldr r0, _020C69F8 ; =0x020AF81C
	orr r1, r1, #8
	strh r1, [r2, r3]
	bl FUN_02044494
	ldr r2, [r7, #0x434]
	ldr r1, [r7, #0x438]
	add r2, r7, r2, lsl #6
	add r1, r2, r1, lsl #2
	ldrh r1, [r1, #0x26]
	mov r7, r0
	tst r1, #0x2000
	beq _020C6918
	mov r10, #0x1e
	strh r10, [r4, #0x22]
	str r6, [sp]
	ldr r1, [r5, #0xa4]
	ldr r2, _020C6A0C ; =0x020D5BAC
	stmib sp, {r1, r6}
	mov r1, r10
	mov r3, #4
	str r8, [sp, #0xc]
	bl FUN_02037c98
	mov r0, r7
	mov r1, r10
	bl FUN_02037fb0
	ldr r2, _020C6A10 ; =0x020D5BB0
	mov r0, r7
	mov r1, r10
	bl FUN_020383c4
	ldr r1, [r4, #8]
	mov r0, r7
	stmia sp, {r1, r6}
	ldmia r4, {r2, r3}
	mov r1, r10
	bl FUN_02038058
	str r6, [sp]
	str r6, [sp, #4]
	ldr r3, [r4, #0x24]
	mov r0, r7
	mov r1, r10
	mov r2, r6
	rsb r3, r3, #0x168000
	bl FUN_020381a0
	ldr r0, [r9]
	bl FUN_ov16_020f8b6c
	ldr r2, [r4, #0x24]
	ldr r1, _020C6A14 ; =0xB60B60B7
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	mov r0, r0, asr #0xc
	rsb r3, r0, #0x2d0
	smull r0, r5, r1, r3
	add r5, r3, r5
	mov r0, r3, lsr #0x1f
	add r5, r0, r5, asr #8
	mov r2, #0x168
	smull r0, r1, r2, r5
	sub r5, r3, r0
	cmp r5, #0x2d
	ldrlt r1, [r4]
	ldrlt r0, [r4, #0xc]
	addlt sp, sp, #0x150
	addlt r0, r1, r0
	strlt r0, [r4]
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0x87
	ldrlt r1, [r4, #8]
	ldrlt r0, [r4, #0x14]
	addlt sp, sp, #0x150
	sublt r0, r1, r0
	strlt r0, [r4, #8]
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0xe1
	ldrlt r1, [r4]
	ldrlt r0, [r4, #0xc]
	addlt sp, sp, #0x150
	sublt r0, r1, r0
	strlt r0, [r4]
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	sub r0, r2, #0x2d
	cmp r5, r0
	ldrlt r1, [r4, #8]
	ldrlt r0, [r4, #0x14]
	add sp, sp, #0x150
	addlt r0, r1, r0
	strlt r0, [r4, #8]
	ldrge r1, [r4]
	ldrge r0, [r4, #0xc]
	addge r0, r1, r0
	strge r0, [r4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C6918:
	ldr r10, _020C6A18 ; =gLogicThink
	mov r1, r8
	mov r0, r10
	bl FUN_020732d0
	ldr r0, [r9]
	bl FUN_ov16_020f88dc
	ldr r0, [r9]
	bl FUN_ov16_020f8a14
	mov r8, r0
	mov r1, r8, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	add r2, sp, #0x18
	bl FUN_0204bd64
	mov r0, #0x32
	str r0, [sp]
	ldr r1, [r5, #0xa4]
	mov r0, r7
	str r1, [sp, #4]
	ldrh r3, [sp, #0x70]
	mov r1, r8
	mov r2, r6
	bl FUN_ov131_0214abb4
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl FUN_ov131_0214afd8
	ldr r1, [r4, #4]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r4, #8]
	mov r1, r8
	stmib sp, {r2, r6}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r3, [r4]
	mov r2, r6
	bl FUN_ov131_0214b15c
	ldr r3, [r4, #0x24]
	mov r0, r7
	stmia sp, {r3, r6}
	mov r1, r8
	mov r2, r6
	mov r3, r6
	bl FUN_ov131_0214b75c
	ldr r0, [r4, #0x1c]
	orr r0, r0, #1
	str r0, [r4, #0x1c]
_020C69DC:
	add sp, sp, #0x150
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C69E4: .word ov0_020D581C
_020C69E8: .word ov0_020D4EB4
_020C69EC: .word gDungeonManager
_020C69F0: .word unk_020A9C40
_020C69F4: .word 0x000003E9
_020C69F8: .word unk_020AF81C
_020C69FC: .word ov0_020D5B9C
_020C6A00: .word 0x0000052E
_020C6A04: .word ov0_020D5BA0
_020C6A08: .word ov0_020D5BA8
_020C6A0C: .word ov0_020D5BAC
_020C6A10: .word ov0_020D5BB0
_020C6A14: .word 0xB60B60B7
_020C6A18: .word gLogicThink
	arm_func_end FUN_ov0_020c62d4

	arm_func_start FUN_ov0_020c6a1c
FUN_ov0_020c6a1c: ; 0x020C6A1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2ec
	add r0, sp, #0x94
	str r2, [sp]
	mov r11, r1
	bl _ZN16CSceneScriptDataC1Ev
	add r5, sp, #0x54
	ldr r1, _020C6C90 ; =0x020D5BB8
	ldr r2, [sp]
	mov r0, r5
	bl STD_TSPrintf
	ldr r0, _020C6C94 ; =0x0209A200
	mov r4, #0
	ldr r1, [r0, #4]
	mov r2, r5
	str r4, [sp, #0x10]
	add r0, sp, #0x10
	bl _ZN10FileSystem14ReadFileByNameEPPviPKc
	ldr r1, [sp, #0x10]
	add r0, sp, #0x94
	cmp r1, #0
	bne _020C6A84
	bl _ZN16CSceneScriptDataD1Ev
	add sp, sp, #0x2ec
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6A84:
	mov r2, r4
	bl _ZN16CSceneScriptData8initFileEPvPKc
	mov r1, r4
	add r0, sp, #0xac
	mov r2, #0x240
	bl MI_CpuFill8
	add r0, r11, #0x84
	str r0, [sp, #0xc]
	add r0, r11, #0x30
	str r0, [sp, #8]
	add r0, r11, #0x50
	mov r5, r4
	mov r10, r4
	str r0, [sp, #4]
_020C6ABC:
	add r0, sp, #0x94
	mov r1, r4
	bl _ZN16CSceneScriptData4nextEP17ScriptInstruction
	movs r4, r0
	beq _020C6C64
	ldrb r0, [r4, #6]
	ldrh r1, [r4, #4]
	add r2, r0, #7
	sub r1, r1, #0x14
	mov r0, r2, asr #2
	sub r1, r1, #0x4000
	add r0, r2, r0, lsr #29
	cmp r1, #5
	mov r9, r0, asr #3
	addls pc, pc, r1, lsl #2
	b _020C6ABC
_020C6AFC: ; jump table
	b _020C6ABC ; case 0
	b _020C6ABC ; case 1
	b _020C6B14 ; case 2
	b _020C6ABC ; case 3
	b _020C6ABC ; case 4
	b _020C6BA0 ; case 5
_020C6B14:
	mov r1, #0x24
	add r0, sp, #0xac
	mla r6, r10, r1, r0
	add r1, r4, r9, lsl #2
	ldr r1, [r1, #0xc]
	mov r0, r6
	bl STD_CopyString
	mov r0, r6
	mov r1, #0x41
	bl strchr
	cmp r0, #0
	bne _020C6B58
	mov r0, r6
	mov r1, #0x61
	bl strchr
	cmp r0, #0
	beq _020C6B60
_020C6B58:
	mov r0, #1
	b _020C6B64
_020C6B60:
	mov r0, #0
_020C6B64:
	strb r0, [r6, #0x20]
	mov r0, r6
	mov r1, #0x2e
	bl strrchr
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0]
	add r0, r4, r9, lsl #2
	ldr r0, [r0, #0x10]
	add r10, r10, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	strb r0, [r6, #0x21]
	b _020C6ABC
_020C6BA0:
	add r3, r4, r9, lsl #2
	ldr r2, [r3, #0xc]
	mov r1, #0x24
	add r0, sp, #0xac
	mla r8, r2, r1, r0
	ldrsb r0, [r8, #0x20]
	cmp r0, #0
	beq _020C6BEC
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	blt _020C6ABC
	add r0, sp, #0x14
	ldr r3, [r0, r1, lsl #2]
	ldr r0, [sp, #4]
	mov r2, #0x74
	mla r0, r3, r2, r0
	mov r1, r8
	bl STD_CopyString
	b _020C6ABC
_020C6BEC:
	mov r0, #0x74
	mul r6, r5, r0
	ldr r0, [sp, #8]
	mov r1, r8
	add r0, r0, r6
	bl STD_CopyString
	add r1, r4, r9, lsl #2
	ldr r0, [r1, #0x10]
	add r7, r11, r6
	str r0, [r7, #0x78]
	ldr r0, [r1, #0x14]
	str r0, [r7, #0x7c]
	ldr r0, [r1, #0x18]
	str r0, [r7, #0x80]
	ldr r0, [r1, #0x1c]
	str r0, [r7, #0x74]
	cmp r0, #0
	blt _020C6C44
	ldr r0, [sp, #0xc]
	ldr r1, [r1, #0x20]
	add r0, r0, r6
	bl STD_CopyString
_020C6C44:
	ldrb r1, [r8, #0x21]
	add r0, r4, r9, lsl #2
	str r1, [r7, #0x70]
	ldr r1, [r0, #8]
	add r0, sp, #0x14
	str r5, [r0, r1, lsl #2]
	add r5, r5, #1
	b _020C6ABC
_020C6C64:
	ldr r1, [sp]
	mov r0, r11
	bl STD_CopyString
	str r5, [r11, #0x2c]
	ldr r0, [sp, #0x10]
	bl _ZN10FileSystem10DeallocateEPv
	add r0, sp, #0x94
	bl _ZN16CSceneScriptDataD1Ev
	mov r0, #1
	add sp, sp, #0x2ec
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6C90: .word ov0_020D5BB8
_020C6C94: .word unk_0209A200
	arm_func_end FUN_ov0_020c6a1c

	arm_func_start FUN_ov0_020c6c98
FUN_ov0_020c6c98: ; 0x020C6C98
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov0_020c6c98

	arm_func_start FUN_ov0_020c6ca0
FUN_ov0_020c6ca0: ; 0x020C6CA0
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov0_020c6ca0

	arm_func_start FUN_ov0_020c6ca8
FUN_ov0_020c6ca8: ; 0x020C6CA8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r5, _020C6D5C ; =0x020A9C40
	mov r6, r0
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r5
	bl FUN_020460c0
	ldr r1, [sp, #4]
	ldr r0, _020C6D60 ; =0x00000192
	cmp r1, r0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	beq _020C6D50
	ldr r4, _020C6D64 ; =0x020AF81C
	mov r1, #1
	mov r0, r4
	bl FUN_0204451c
	mov r0, r4
	bl FUN_02044600
	cmp r0, #0
	ldreqb r0, [r6, #0x1f]
	cmpeq r0, #0
	bne _020C6D38
	mov r0, r5
	bl FUN_020455ac
	tst r0, #4
	beq _020C6D38
	mov r2, #0
	mov r0, r6
	mov r3, r2
	mov r1, #0xb
	bl FUN_ov0_020c1814
_020C6D38:
	ldr r0, _020C6D5C ; =0x020A9C40
	mov r1, #7
	bl FUN_020455a0
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020C6D50:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020C6D5C: .word unk_020A9C40
_020C6D60: .word 0x00000192
_020C6D64: .word unk_020AF81C
	arm_func_end FUN_ov0_020c6ca8

	arm_func_start FUN_ov0_020c6d68
FUN_ov0_020c6d68: ; 0x020C6D68
	ldr r3, _020C6DC8 ; =0x0209A160
	mov r0, #0xc
	mla r3, r1, r0, r3
	cmp r2, #0
	mov r0, #0
	beq _020C6D94
	cmp r2, #1
	beq _020C6DA4
	cmp r2, #2
	beq _020C6DB8
	bx lr
_020C6D94:
	ldrsh r1, [r3, #4]
	cmp r1, #0
	moveq r0, #1
	bx lr
_020C6DA4:
	ldrsh r2, [r3, #4]
	sub r1, r0, #0x10
	cmp r2, r1
	moveq r0, #1
	bx lr
_020C6DB8:
	ldrsh r1, [r3, #4]
	cmp r1, #0x10
	moveq r0, #1
	bx lr
_020C6DC8: .word gScreenFades
	arm_func_end FUN_ov0_020c6d68

	arm_func_start FUN_ov0_020c6dcc
FUN_ov0_020c6dcc: ; 0x020C6DCC
	ldr r12, _020C6DD4 ; =FUN_ov0_020c6ddc
	bx r12
_020C6DD4: .word FUN_ov0_020c6ddc
	arm_func_end FUN_ov0_020c6dcc

	arm_func_start FUN_ov0_020c6dd8
FUN_ov0_020c6dd8: ; 0x020C6DD8
	bx lr
	arm_func_end FUN_ov0_020c6dd8

	arm_func_start FUN_ov0_020c6ddc
FUN_ov0_020c6ddc: ; 0x020C6DDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
_020C6DE4:
	bl FUN_ov0_020be84c
	cmp r0, #0
	bne _020C6DF8
	bl _ZN6Thread5YieldEv
	b _020C6DE4
_020C6DF8:
	add r0, r5, #0xfa
	bl FUN_ov0_020bfd84
	cmp r0, #0
	bne _020C6E10
	bl _ZN6Thread5YieldEv
	b _020C6DF8
_020C6E10:
	ldr r4, _020C6EA4 ; =g2DGChar
_020C6E14:
	ldr r0, [r4]
	bl FUN_02057bf4
	cmp r0, #0
	beq _020C6E2C
	bl _ZN6Thread5YieldEv
	b _020C6E14
_020C6E2C:
	mov r0, r5
	bl FUN_ov0_020c2b40
	cmp r0, #0
	beq _020C6E44
	bl _ZN6Thread5YieldEv
	b _020C6E2C
_020C6E44:
	mov r5, #0
	ldr r1, _020C6EA8 ; =0x020D5BC0
	mov r0, r5
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	ldr r4, _020C6EAC ; =0x0209A200
	ldr r1, _020C6EB0 ; =0x020D5BCC
	str r0, [r4, #4]
	mov r0, r5
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	str r0, [r4, #8]
	ldr r1, _020C6EB4 ; =0x020D5BDC
	mov r0, r5
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl _ZN10FileSystem16WaitArchiveReadyEi
	ldr r0, [r4, #8]
	bl _ZN10FileSystem16WaitArchiveReadyEi
	ldr r0, [r4, #0xc]
	bl _ZN10FileSystem16WaitArchiveReadyEi
	ldr r0, _020C6EB8 ; =0x020D6100
	str r5, [r0, #8]
_020C6E9C:
	bl _ZN6Thread5YieldEv
	b _020C6E9C
_020C6EA4: .word g2DGChar
_020C6EA8: .word ov0_020D5BC0
_020C6EAC: .word unk_0209A200
_020C6EB0: .word ov0_020D5BCC
_020C6EB4: .word ov0_020D5BDC
_020C6EB8: .word ov0_020D6100
	arm_func_end FUN_ov0_020c6ddc

	arm_func_start FUN_ov0_020c6ebc
FUN_ov0_020c6ebc: ; 0x020C6EBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c6ebc

	arm_func_start FUN_ov0_020c6ed0
FUN_ov0_020c6ed0: ; 0x020C6ED0
	mov r0, #1
	bx lr
	arm_func_end FUN_ov0_020c6ed0

	arm_func_start FUN_ov0_020c6ed8
FUN_ov0_020c6ed8: ; 0x020C6ED8
	stmfd sp!, {r4, lr}
	ldr r1, _020C6EF4 ; =0x020D57DC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d1364
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C6EF4: .word ov0_020D57DC
	arm_func_end FUN_ov0_020c6ed8

	arm_func_start FUN_ov0_020c6ef8
FUN_ov0_020c6ef8: ; 0x020C6EF8
	stmfd sp!, {r4, lr}
	ldr r1, _020C6F14 ; =0x020D57EC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d0674
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C6F14: .word ov0_020D57EC
	arm_func_end FUN_ov0_020c6ef8

	arm_func_start FUN_ov0_020c6f18
FUN_ov0_020c6f18: ; 0x020C6F18
	stmfd sp!, {r4, lr}
	ldr r1, _020C6F34 ; =0x020D5808
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020cde3c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C6F34: .word ov0_020D5808
	arm_func_end FUN_ov0_020c6f18

	arm_func_start FUN_ov0_020c6f38
FUN_ov0_020c6f38: ; 0x020C6F38
	bx lr
	arm_func_end FUN_ov0_020c6f38

	arm_func_start FUN_ov0_020c6f3c
FUN_ov0_020c6f3c: ; 0x020C6F3C
	stmfd sp!, {r3, lr}
	ldrsh r12, [r0]
	cmp r12, r1
	ldreqsh r12, [r0, #2]
	strh r1, [r0]
	cmpeq r12, r2
	ldreqh r12, [r0, #4]
	strh r2, [r0, #2]
	cmpeq r12, r3
	ldreqb lr, [r0, #6]
	ldreqb r12, [sp, #8]
	strh r3, [r0, #4]
	cmpeq lr, r12
	ldrb r12, [sp, #8]
	movne lr, #1
	moveq lr, #0
	strb r12, [r0, #6]
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov0_020c6f3c

	arm_func_start FUN_ov0_020c6f88
FUN_ov0_020c6f88: ; 0x020C6F88
	ldrb r1, [r0, #6]
	mov r2, #1
	cmp r1, #0
	mov r1, #0
	moveq r2, #0
	strb r1, [r0, #6]
	mov r0, r2
	bx lr
	arm_func_end FUN_ov0_020c6f88

	arm_func_start FUN_ov0_020c6fa8
FUN_ov0_020c6fa8: ; 0x020C6FA8
	ldrb r0, [r0]
	bx lr
	arm_func_end FUN_ov0_020c6fa8

	arm_func_start FUN_ov0_020c6fb0
FUN_ov0_020c6fb0: ; 0x020C6FB0
	ldrb r1, [r0, #2]
	cmp r1, #0
	ldreqb r1, [r0, #3]
	cmpeq r1, #0
	ldreqb r1, [r0, #4]
	cmpeq r1, #0
	ldreqb r1, [r0, #5]
	cmpeq r1, #0
	ldreqb r0, [r0, #6]
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov0_020c6fb0

	arm_func_start FUN_ov0_020c6fe4
FUN_ov0_020c6fe4: ; 0x020C6FE4
	cmp r1, r3
	subge r1, r3, #1
	cmp r1, r2
	movlt r1, r2
	mov r0, r1
	bx lr
	arm_func_end FUN_ov0_020c6fe4

	arm_func_start FUN_ov0_020c6ffc
FUN_ov0_020c6ffc: ; 0x020C6FFC
	mov r12, r3, asr #1
	ldr r3, [sp]
	rsb r0, r12, #0
	cmp r1, r0
	mov r3, r3, asr #1
	bge _020C7038
	add r0, r12, #0x100
	cmp r1, r0
	blt _020C7038
	rsb r0, r3, #0
	cmp r2, r0
	bge _020C7038
	add r0, r3, #0xc0
	cmp r2, r0
	bge _020C7040
_020C7038:
	mov r0, #1
	bx lr
_020C7040:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov0_020c6ffc

	arm_func_start FUN_ov0_020c7048
FUN_ov0_020c7048: ; 0x020C7048
	stmfd sp!, {r4, lr}
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x66]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020C7080
_020C7060: ; jump table
	b _020C7080 ; case 0
	b _020C7080 ; case 1
	b _020C7070 ; case 2
	b _020C7078 ; case 3
_020C7070:
	mov r4, #2
	b _020C7084
_020C7078:
	mov r4, #1
	b _020C7084
_020C7080:
	mov r4, #0
_020C7084:
	bl GX_ResetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBG
	ldr r2, _020C70CC ; =0x04001008
	ldr r0, _020C70D0 ; =0x0000FFBF
	ldrh r1, [r2]
	and r1, r1, #0x43
	orr r1, r1, r4, lsl #14
	orr r1, r1, #0xe00
	strh r1, [r2]
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r2]
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	ldmfd sp!, {r4, pc}
_020C70CC: .word 0x04001008
_020C70D0: .word 0x0000FFBF
	arm_func_end FUN_ov0_020c7048

	arm_func_start FUN_ov0_020c70d4
FUN_ov0_020c70d4: ; 0x020C70D4
	stmfd sp!, {r4, lr}
	bl G2S_GetBG0CharPtr
	mov r4, #0x8000
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	bl G2S_GetBG0CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c70d4

	arm_func_start FUN_ov0_020c70fc
FUN_ov0_020c70fc: ; 0x020C70FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r5, #1
	mov r4, r6
_020C710C:
	mov r0, r5
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl _ZN8Graphics18SetBGPaletteDirectE12EngineSelectiit
	add r6, r6, #1
	cmp r6, #0x10
	blt _020C710C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020c70fc

	arm_func_start FUN_ov0_020c7130
FUN_ov0_020c7130: ; 0x020C7130
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r1, #0
	mov r10, r0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #4]
	str r1, [sp, #8]
	bl FUN_ov0_020c786c
	cmp r0, #0
	ldrne r9, _020C7280 ; =0x020D4F40
	movne r8, #1
	moveq r8, #7
	ldreq r9, _020C7284 ; =0x020D4F90
	cmp r8, #0
	mov r7, #0
	cmpgt r8, #0
	ble _020C7214
	add r6, r10, #0x18
	add r4, sp, #4
	mov r11, #0xc
_020C7184:
	ldr r0, [r9]
	add r1, sp, #0x10
	mul r5, r0, r11
	str r4, [sp]
	ldr r0, [r6, r5]
	add r2, sp, #8
	add r3, sp, #0xc
	bl FUN_020539e4
	ldr r0, [r6, r5]
	cmp r0, #0
	add r0, r10, #4
	beq _020C71E4
	ldr r5, [r0]
	ldr r1, [sp, #8]
	ldr r2, [r9, #8]
	ldr r3, [sp, #0x10]
	ldr r5, [r5, #0x20]
	blx r5
	ldr r1, [sp, #4]
	ldr r2, [r9, #0xc]
	ldr r3, [sp, #0xc]
	add r0, r10, #4
	bl FUN_ov0_020d198c
	b _020C7204
_020C71E4:
	ldr r3, [r0]
	ldr r1, [r9, #8]
	ldr r2, [r9, #4]
	ldr r3, [r3, #0xc]
	blx r3
	ldr r1, [r9, #0xc]
	add r0, r10, #4
	bl FUN_ov0_020d1a24
_020C7204:
	add r7, r7, #1
	cmp r7, r8
	add r9, r9, #0x10
	blt _020C7184
_020C7214:
	add r0, r10, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r10
	mov r1, #1
	bl FUN_ov0_020c8620
	mov r0, r10
	mov r1, #2
	bl FUN_ov0_020c8620
	mov r0, r10
	mov r1, #3
	bl FUN_ov0_020c8620
	mov r0, r10
	mov r1, #4
	bl FUN_ov0_020c8620
	mov r0, r10
	mov r1, #5
	bl FUN_ov0_020c8620
	mov r0, r10
	mov r1, #7
	bl FUN_ov0_020c8620
	mov r0, r10
	mov r1, #8
	bl FUN_ov0_020c8620
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7280: .word ov0_020D4F40
_020C7284: .word ov0_020D4F90
	arm_func_end FUN_ov0_020c7130

	arm_func_start FUN_ov0_020c7288
FUN_ov0_020c7288: ; 0x020C7288
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov0_020c7578
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov0_020c786c
	cmp r0, #0
	mov r0, r4
	beq _020C72B8
	bl FUN_ov0_020c7674
	ldmfd sp!, {r4, pc}
_020C72B8:
	bl FUN_ov0_020c7638
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl FUN_ov0_020c8620
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c7288

	arm_func_start FUN_ov0_020c72d4
FUN_ov0_020c72d4: ; 0x020C72D4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	add r0, r6, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov0_020c786c
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	add r5, r4, #0x1640
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x800
	bl MI_CpuFill8
	add r0, r6, #0x100
	ldrsb r0, [r0, #0xea]
	cmp r0, #0
	beq _020C73A4
	add r0, r6, #0xea
	add r0, r0, #0x100
	strb r4, [r6, #0x212]
	bl FUN_ov16_020f2118
	ldr r7, _020C73B8 ; =gFont12
	mov r1, #1
	ldr r0, [r7]
	mov r2, #5
	bl FUN_02043310
	mov r0, #2
	stmia sp, {r0, r4, r5}
	mov r0, #0x40
	str r0, [sp, #0xc]
	mov r0, #0x80
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	add r3, r6, #0xea
	ldr r0, [r7]
	mov r1, r4
	mov r2, r4
	ldr r4, [r0]
	add r3, r3, #0x100
	ldr r4, [r4, #8]
	blx r4
	ldr r0, [r7]
	bl FUN_0204331c
_020C73A4:
	mov r0, r5
	mov r1, #0x800
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C73B8: .word gFont12
	arm_func_end FUN_ov0_020c72d4

	arm_func_start FUN_ov0_020c73bc
FUN_ov0_020c73bc: ; 0x020C73BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	bl FUN_ov0_020c786c
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r6, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r5, r0, #0x1e40
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r6, #0x100
	ldrsb r0, [r0, #0xda]
	cmp r0, #0
	beq _020C7484
	ldr r7, _020C7498 ; =gFont8
	strb r4, [r6, #0x1e2]
	mov r8, #1
	ldr r0, [r7]
	mov r1, r8
	mov r2, r8
	bl FUN_02043310
	mov r0, #2
	stmia sp, {r0, r8}
	str r5, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	add r3, r6, #0xda
	ldr r0, [r7]
	mov r1, r4
	ldr r6, [r0]
	mov r2, r4
	ldr r6, [r6, #8]
	add r3, r3, #0x100
	blx r6
	ldr r0, [r7]
	bl FUN_0204331c
_020C7484:
	mov r0, r5
	mov r1, #0x80
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C7498: .word gFont8
	arm_func_end FUN_ov0_020c73bc

	arm_func_start FUN_ov0_020c749c
FUN_ov0_020c749c: ; 0x020C749C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	bl FUN_ov0_020c786c
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r6, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r5, r0, #0x1500
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x140
	bl MI_CpuFill8
	add r0, r6, #0x100
	ldrsb r0, [r0, #0xa8]
	cmp r0, #0
	beq _020C7560
	ldr r7, _020C7574 ; =gFont8
	strb r4, [r6, #0x1d0]
	mov r8, #1
	ldr r0, [r7]
	mov r1, r8
	mov r2, r8
	bl FUN_02043310
	str r8, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x50
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r7]
	mov r1, r4
	ldr r12, [r0]
	mov r2, r4
	ldr r12, [r12, #8]
	add r3, r6, #0x1a8
	blx r12
	ldr r0, [r7]
	bl FUN_0204331c
_020C7560:
	mov r0, r5
	mov r1, #0x140
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C7574: .word gFont8
	arm_func_end FUN_ov0_020c749c

	arm_func_start FUN_ov0_020c7578
FUN_ov0_020c7578: ; 0x020C7578
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r5, [r6, #0x18]
	bl FUN_ov0_020c70fc
	cmp r5, #0
	beq _020C759C
	ldr r0, [r5, #8]
	cmp r0, #0x20
	bls _020C75B0
_020C759C:
	mov r0, r6
	bl FUN_ov0_020c70d4
	bl _ZN8Graphics16LoadBGPaletteSubEv
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020C75B0:
	ldr r0, [r5, #0x18]
	mov r4, #0
	add r0, r0, #0
	cmp r0, #0x7000
	bls _020C75D8
	mov r0, r6
	bl FUN_ov0_020c70d4
	bl _ZN8Graphics16LoadBGPaletteSubEv
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020C75D8:
	mov r0, r4
	mov r1, r5
	mov r2, #0x20
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r4, #1
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r0, r6
	bl FUN_ov0_020c786c
	cmp r0, #0
	beq _020C762C
	ldr r0, [r6, #0x60]
	mov r1, r4
	mov r2, #2
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020C762C:
	bl _ZN8Graphics16LoadBGPaletteSubEv
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020c7578

	arm_func_start FUN_ov0_020c7638
FUN_ov0_020c7638: ; 0x020C7638
	stmfd sp!, {r3, lr}
	adds r0, r0, #0x18
	ldrne r1, [r0]
	cmpne r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r1, #0x10]
	ldr r0, [r1, #0xc]
	cmp r2, #0x800
	add r0, r1, r0
	movhi r2, #0x800
	mov r1, #0
	bl GXS_LoadBG0Scr
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov0_020c7638

	arm_func_start FUN_ov0_020c7674
FUN_ov0_020c7674: ; 0x020C7674
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r1, _020C77E0 ; =gDungeonManager
	mov r10, r0
	ldr r0, [r1]
	mov r5, #0
	bl FUN_ov16_020f8860
	movs r8, r0
	ldr r0, [r10, #0x18]
	cmpne r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x298
	mov r1, r5
	mov r2, #0x800
	bl MI_CpuFill8
	ldrb r0, [r8, #0x43d]
	ldr r2, [r8, #0x438]
	cmp r2, #2
	rsb r11, r0, #8
	movle r0, #1
	strle r0, [sp, #4]
	ble _020C76F0
	ldrb r1, [r8, #0x43e]
	sub r0, r1, r2
	cmp r0, #3
	rsble r0, r1, #6
	strle r0, [sp, #4]
	rsbgt r0, r2, #3
	strgt r0, [sp, #4]
_020C76F0:
	mov r7, #0
_020C76F4:
	ldr r0, [sp, #4]
	mov r6, #0
	sub r9, r7, r0
	add r4, r8, #0x24
_020C7704:
	subs r1, r6, r11, asr #1
	bmi _020C772C
	ldrb r0, [r8, #0x43d]
	cmp r1, r0
	bge _020C772C
	cmp r9, #0
	blt _020C772C
	ldrb r0, [r8, #0x43e]
	cmp r9, r0
	blt _020C7734
_020C772C:
	mov r0, r5
	b _020C774C
_020C7734:
	add r0, r4, r1, lsl #6
	add r0, r0, r9, lsl #2
	ldrh r2, [r0, #2]
	and r2, r2, #9
	cmp r2, #9
	movne r0, r5
_020C774C:
	cmp r0, #0
	moveq r3, r5
	moveq r2, #1
	beq _020C7788
	ldr r2, [r8, #0x434]
	cmp r2, r1
	ldreq r1, [r8, #0x438]
	cmpeq r1, r9
	moveq r2, #2
	ldrh r1, [r0, #2]
	movne r2, #1
	tst r1, #0x4000
	ldreqb r0, [r0]
	movne r3, #0x11
	addeq r3, r0, #1
_020C7788:
	str r2, [sp]
	mov r0, r10
	mov r1, r6
	mov r2, r7
	bl FUN_ov0_020c77e4
	add r6, r6, #1
	cmp r6, #8
	blt _020C7704
	add r7, r7, #1
	cmp r7, #6
	blt _020C76F4
	mov r4, #0x800
	mov r1, r4
	add r0, r10, #0x298
	bl DC_FlushRange
	mov r2, r4
	add r0, r10, #0x298
	mov r1, #0
	bl GXS_LoadBG0Scr
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C77E0: .word gDungeonManager
	arm_func_end FUN_ov0_020c7674

	arm_func_start FUN_ov0_020c77e4
FUN_ov0_020c77e4: ; 0x020C77E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, [r0, #0x18]
	mov r10, r2
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r5, #0xc]
	ldr r2, [sp, #0x28]
	add r4, r5, r4
	add r9, r4, r3, lsl #5
	mov r6, r1, lsl #2
	mov r4, r2, lsl #0x1c
	mov r7, #0
	add r5, r0, #0x298
	mov r11, #8
_020C781C:
	add r0, r7, r10, lsl #2
	add r0, r5, r0, lsl #6
	add r8, r0, r6, lsl #1
	mov r0, r9
	mov r1, r8
	mov r2, r11
	bl MI_CpuCopy8
	mov r1, #0
_020C783C:
	ldrh r0, [r8]
	add r1, r1, #1
	cmp r1, #4
	bic r0, r0, #0xf000
	orr r0, r0, r4, lsr #16
	strh r0, [r8], #2
	blt _020C783C
	add r7, r7, #1
	cmp r7, #4
	add r9, r9, #8
	blt _020C781C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020c77e4

	arm_func_start FUN_ov0_020c786c
FUN_ov0_020c786c: ; 0x020C786C
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x66]
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov0_020c786c

	arm_func_start FUN_ov0_020c7884
FUN_ov0_020c7884: ; 0x020C7884
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r1, [r10, #0xa9c]
	add r0, r10, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r10, #0x28a]
	mov r8, r0
	cmp r1, #0
	addne r0, r10, #0x100
	ldrnesb r0, [r0, #0x65]
	cmpne r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0
	mov r2, r1
_020C78C4:
	add r0, r10, r2, lsl #3
	ldrb r0, [r0, #0x158]
	add r2, r2, #1
	cmp r0, #0
	addne r1, r1, #1
	cmp r2, #2
	blt _020C78C4
	add r0, r10, #4
	add r1, r8, r1, lsl #3
	bl FUN_ov0_020d1948
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _020C7A18 ; =0x00000102
	mov r9, #0
	mov r11, #5
	add r7, sp, #0x10
	add r6, sp, #0xc
	mov r5, #0x20
_020C7910:
	add r2, r10, r9, lsl #3
	ldrb r0, [r2, #0x158]
	cmp r0, #0
	beq _020C7A04
	ldrsh r1, [r10, #0x90]
	add r2, r2, #0x100
	mov r0, r10
	stmia sp, {r1, r7}
	str r6, [sp, #8]
	ldrsh r1, [r2, #0x52]
	ldrsh r2, [r2, #0x54]
	ldrsh r3, [r10, #0x8e]
	bl FUN_ov0_020c8e70
	str r5, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r10
	mov r3, r5
	bl FUN_ov0_020c6ffc
	cmp r0, #0
	beq _020C7A04
	add r0, r10, r9, lsl #3
	ldrb r0, [r0, #0x158]
	cmp r0, #1
	beq _020C7980
	cmp r0, #2
	beq _020C798C
	b _020C7A04
_020C7980:
	mov r0, r4
	mov r1, r11
	b _020C7994
_020C798C:
	mov r1, #5
	add r0, r4, #4
_020C7994:
	ldr r2, [sp, #0xc]
	ldr r12, [sp, #0x10]
	sub r3, r2, #0x10
	ldr r2, [r10, #0xaa0]
	sub r12, r12, #0x10
	mov r12, r12, lsl #0x17
	and r3, r3, #0xff
	orr r2, r3, r2, lsl #25
	orr r2, r2, #0x40000000
	orr r2, r2, r12, lsr #7
	orr r3, r2, #0x300
	orr r2, r0, #0x800
	add r0, r10, r9, lsl #3
	str r3, [r8]
	orr r1, r2, r1, lsl #12
	strh r1, [r8, #4]
	add r0, r0, #0x100
	ldrh r2, [r0, #0x56]
	ldr r1, [r10, #0xaa0]
	add r0, r10, #4
	bl FUN_ov0_020d1aec
	ldr r1, [r10, #0xa9c]
	ldr r0, [r10, #0xaa0]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [r10, #0xa9c]
	str r0, [r10, #0xaa0]
	add r8, r8, #8
_020C7A04:
	add r9, r9, #1
	cmp r9, #2
	blt _020C7910
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7A18: .word 0x00000102
	arm_func_end FUN_ov0_020c7884

	arm_func_start FUN_ov0_020c7a1c
FUN_ov0_020c7a1c: ; 0x020C7A1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldr r1, [r6, #0xa9c]
	add r0, r6, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r6, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r6, #0x100
	ldrnesb r0, [r0, #0x65]
	cmpne r0, #0
	addne r0, r6, #0x200
	ldrnesb r0, [r0, #0x2b]
	cmpne r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0
	mov r2, r1
_020C7A68:
	add r0, r6, r2, lsl #3
	ldrb r0, [r0, #0x98]
	add r2, r2, #1
	cmp r0, #0
	addne r1, r1, #1
	cmp r2, #0x18
	blt _020C7A68
	add r0, r6, #4
	add r1, r4, r1, lsl #3
	bl FUN_ov0_020d1948
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, #0
	mov r7, #0xf6
	add r10, sp, #0x10
	add r9, sp, #0xc
	mov r8, #0x20
_020C7AB0:
	add r2, r6, r5, lsl #3
	ldrb r0, [r2, #0x98]
	cmp r0, #0
	beq _020C7B7C
	ldrsh r1, [r6, #0x90]
	mov r0, r6
	stmia sp, {r1, r10}
	str r9, [sp, #8]
	ldrsh r1, [r2, #0x92]
	ldrsh r2, [r2, #0x94]
	ldrsh r3, [r6, #0x8e]
	bl FUN_ov0_020c8e70
	str r8, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r3, r8
	bl FUN_ov0_020c6ffc
	cmp r0, #0
	beq _020C7B7C
	add r0, r6, r5, lsl #3
	ldrb r1, [r0, #0x98]
	ldr r3, [sp, #0x10]
	mov r0, r7
	cmp r1, #3
	ldr r1, [sp, #0xc]
	addeq r0, r7, #4
	sub r2, r1, #0x10
	ldr r1, [r6, #0xaa0]
	and r2, r2, #0xff
	orr r1, r2, r1, lsl #25
	sub r3, r3, #0x10
	mov r2, r3, lsl #0x17
	orr r1, r1, #0x40000000
	orr r1, r1, r2, lsr #7
	orr r1, r1, #0x300
	str r1, [r4]
	orr r0, r0, #0x1800
	strh r0, [r4, #4]
	add r0, r6, r5, lsl #3
	ldrh r2, [r0, #0x96]
	ldr r1, [r6, #0xaa0]
	add r0, r6, #4
	bl FUN_ov0_020d1aec
	ldr r1, [r6, #0xa9c]
	ldr r0, [r6, #0xaa0]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [r6, #0xa9c]
	str r0, [r6, #0xaa0]
	add r4, r4, #8
_020C7B7C:
	add r5, r5, #1
	cmp r5, #0x18
	blt _020C7AB0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov0_020c7a1c

	arm_func_start FUN_ov0_020c7b90
FUN_ov0_020c7b90: ; 0x020C7B90
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mvn r2, #0x3f
	add r1, r2, #0x10
	mov r7, r0
	str r2, [sp, #0x10]
	str r1, [sp, #0xc]
	ldr r1, [r7, #0xa9c]
	add r0, r7, #4
	bl FUN_ov0_020d1924
	ldr r6, _020C7CE0 ; =0x020A9C40
	mov r4, r0
	mov r0, r6
	bl FUN_02046338
	mov r5, r0
	mov r0, r6
	bl FUN_02046344
	mov r6, r0
	mov r1, r4
	add r0, r7, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	add r0, r7, #4
	add r1, r4, #0x10
	bl FUN_ov0_020d1948
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
_020C7C0C:
	add r3, r7, r1, lsl #3
	ldrb r0, [r3, #0x98]
	cmp r0, #1
	bne _020C7C5C
	ldrsh r2, [r7, #0x90]
	add r1, sp, #0x10
	add r0, sp, #0xc
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldrsh r1, [r3, #0x92]
	ldrsh r2, [r3, #0x94]
	ldrsh r3, [r7, #0x8e]
	mov r0, r7
	bl FUN_ov0_020c8e70
	ldr r0, [sp, #0x10]
	str r0, [r5]
	ldr r0, [sp, #0xc]
	str r0, [r6]
	b _020C7C68
_020C7C5C:
	add r1, r1, #1
	cmp r1, #0x18
	blt _020C7C0C
_020C7C68:
	ldr r0, [r5]
	cmn r0, #1
	cmpne r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020C7CE4 ; =0x0000010A
	ldr r2, _020C7CE8 ; =0xC0004800
	mov r1, #0
_020C7C88:
	ldr r3, [r6]
	ldr r12, [r5]
	sub r3, r3, #0x20
	add r3, r3, r1, lsl #5
	sub r12, r12, #0x20
	and r3, r3, #0xff
	mov r12, r12, lsl #0x17
	orr r3, r3, r2
	orr r12, r3, r12, lsr #7
	orr r3, r0, #0x6400
	str r12, [r4]
	strh r3, [r4, #4]
	ldr r3, [r7, #0xa9c]
	add r1, r1, #1
	add r3, r3, #1
	str r3, [r7, #0xa9c]
	cmp r1, #2
	add r0, r0, #0x20
	add r4, r4, #8
	blt _020C7C88
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C7CE0: .word unk_020A9C40
_020C7CE4: .word 0x0000010A
_020C7CE8: .word 0xC0004800
	arm_func_end FUN_ov0_020c7b90

	arm_func_start FUN_ov0_020c7cec
FUN_ov0_020c7cec: ; 0x020C7CEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r1, [r10, #0xa9c]
	add r0, r10, #4
	bl FUN_ov0_020d1924
	mov r7, r0
	mov r1, r7
	add r0, r10, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #4
	add r1, r7, #0x10
	bl FUN_ov0_020d1948
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C7DE0 ; =0x020A9C40
	bl FUN_020463b8
	ldr r5, _020C7DE4 ; =0x0000014A
	mov r8, r0
	mov r9, #0
	add r4, sp, #0x10
	add r11, sp, #0xc
_020C7D54:
	mov r0, #6
	mul r1, r9, r0
	ldrb r0, [r8, r1]
	add r2, r8, r1
	cmp r0, #0
	beq _020C7DCC
	cmp r0, #6
	bhi _020C7DCC
	ldrsh r1, [r10, #0x90]
	sub r6, r0, #1
	mov r0, r10
	stmia sp, {r1, r4, r11}
	ldrsh r1, [r2, #2]
	ldrsh r2, [r2, #4]
	ldrsh r3, [r10, #0x8e]
	add r6, r5, r6, lsl #2
	bl FUN_ov0_020c8e70
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	and r0, r0, #0xff
	mov r1, r1, lsl #0x17
	orr r0, r0, #0x40000000
	orr r0, r0, r1, lsr #7
	str r0, [r7]
	orr r0, r6, #0x7800
	strh r0, [r7, #4]
	ldr r0, [r10, #0xa9c]
	add r7, r7, #8
	add r0, r0, #1
	str r0, [r10, #0xa9c]
_020C7DCC:
	add r9, r9, #1
	cmp r9, #8
	blt _020C7D54
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7DE0: .word unk_020A9C40
_020C7DE4: .word 0x0000014A
	arm_func_end FUN_ov0_020c7cec

	arm_func_start FUN_ov0_020c7de8
FUN_ov0_020c7de8: ; 0x020C7DE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesb r1, [r0, #0x65]
	cmpne r1, #0
	ldrnesb r1, [r0, #0xd9]
	cmpne r1, #0
	ldrnesb r0, [r0, #0xea]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #4
	add r1, r4, #0x20
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _020C7EB8 ; =0xC00048A8
	mov r1, #0x18
	mov r0, #0
	sub r12, r2, #0x800
_020C7E60:
	mov r7, r0, lsl #0x1d
	orr r3, r1, #0x2400
	orr r6, r2, r7, lsr #7
	mov r3, r3, lsl #0x10
	str r6, [r4]
	mov r6, r3, lsr #0x10
	strh r6, [r4, #4]
	ldr lr, [r5, #0xa9c]
	orr r3, r12, r7, lsr #7
	add lr, lr, #1
	str lr, [r5, #0xa9c]
	str r3, [r4, #8]
	strh r6, [r4, #0xc]
	ldr r3, [r5, #0xa9c]
	add r0, r0, #1
	add r3, r3, #1
	str r3, [r5, #0xa9c]
	cmp r0, #4
	add r4, r4, #0x10
	add r1, r1, #0x20
	blt _020C7E60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7EB8: .word 0xC00048A8
	arm_func_end FUN_ov0_020c7de8

	arm_func_start FUN_ov0_020c7ebc
FUN_ov0_020c7ebc: ; 0x020C7EBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesb r1, [r0, #0x65]
	cmpne r1, #0
	ldrnesb r1, [r0, #0xd9]
	cmpne r1, #0
	ldrnesb r1, [r0, #0xda]
	cmpne r1, #0
	ldrnesb r0, [r0, #0xea]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #4
	add r1, r4, #0x10
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _020C7F9C ; =0x800048A0
	mov r1, #0x98
	mov r0, #0
	sub r12, r2, #0x800
_020C7F3C:
	mov r3, r0, lsl #5
	add r3, r3, #8
	mov r7, r3, lsl #0x17
	orr r3, r1, #0x2400
	orr r6, r2, r7, lsr #7
	mov r3, r3, lsl #0x10
	str r6, [r4]
	mov r6, r3, lsr #0x10
	strh r6, [r4, #4]
	ldr lr, [r5, #0xa9c]
	orr r3, r12, r7, lsr #7
	add lr, lr, #1
	str lr, [r5, #0xa9c]
	str r3, [r4, #8]
	strh r6, [r4, #0xc]
	ldr r3, [r5, #0xa9c]
	add r0, r0, #1
	add r3, r3, #1
	str r3, [r5, #0xa9c]
	cmp r0, #2
	add r4, r4, #0x10
	add r1, r1, #8
	blt _020C7F3C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7F9C: .word 0x800048A0
	arm_func_end FUN_ov0_020c7ebc

	arm_func_start FUN_ov0_020c7fa0
FUN_ov0_020c7fa0: ; 0x020C7FA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesb r1, [r0, #0x65]
	cmpne r1, #0
	ldrnesb r0, [r0, #0xa8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #4
	add r1, r4, #0x18
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _020C8070 ; =0x80004808
	mov r1, #0
	mov r0, r1
	sub r12, r2, #0x800
_020C8010:
	mov r3, r0, lsl #5
	add r3, r3, #8
	mov r7, r3, lsl #0x17
	orr r3, r1, #0x4400
	orr r6, r2, r7, lsr #7
	mov r3, r3, lsl #0x10
	str r6, [r4]
	mov r6, r3, lsr #0x10
	strh r6, [r4, #4]
	ldr lr, [r5, #0xa9c]
	orr r3, r12, r7, lsr #7
	add lr, lr, #1
	str lr, [r5, #0xa9c]
	str r3, [r4, #8]
	strh r6, [r4, #0xc]
	ldr r3, [r5, #0xa9c]
	add r0, r0, #1
	add r3, r3, #1
	str r3, [r5, #0xa9c]
	cmp r0, #3
	add r4, r4, #0x10
	add r1, r1, #8
	blt _020C8010
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C8070: .word 0x80004808
	arm_func_end FUN_ov0_020c7fa0

	arm_func_start FUN_ov0_020c8074
FUN_ov0_020c8074: ; 0x020C8074
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesb r1, [r0, #0xea]
	cmpne r1, #0
	ldrnesb r1, [r0, #0x65]
	cmpne r1, #0
	ldrnesb r0, [r0, #0xd9]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #4
	add r1, r4, #0x20
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020C812C ; =0xC00040B1
	mov lr, #0xb2
	mov r12, #0
	mov r0, #0x3c
_020C80EC:
	mul r2, r12, r0
	add r2, r2, #8
	mov r2, r2, lsl #0x17
	orr r3, r1, r2, lsr #7
	orr r2, lr, #0x400
	str r3, [r4]
	strh r2, [r4, #4]
	ldr r2, [r5, #0xa9c]
	add r12, r12, #1
	add r2, r2, #1
	str r2, [r5, #0xa9c]
	cmp r12, #4
	add lr, lr, #0x10
	add r4, r4, #8
	blt _020C80EC
	ldmfd sp!, {r3, r4, r5, pc}
_020C812C: .word 0xC00040B1
	arm_func_end FUN_ov0_020c8074

	arm_func_start FUN_ov0_020c8130
FUN_ov0_020c8130: ; 0x020C8130
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesb r1, [r0, #0x65]
	cmpne r1, #0
	ldrnesb r1, [r0, #0xd9]
	cmpne r1, #0
	ldrnesb r1, [r0, #0xda]
	cmpne r1, #0
	ldrnesb r0, [r0, #0xea]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #4
	add r1, r4, #0x10
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C81EC ; =0x000040A7
	mov r12, #0xf2
	mov r3, #0
_020C81AC:
	mov r1, r3, lsl #4
	add r1, r1, #0x18
	mov r1, r1, lsl #0x17
	orr r2, r0, r1, lsr #7
	orr r1, r12, #0x400
	str r2, [r4]
	strh r1, [r4, #4]
	ldr r1, [r5, #0xa9c]
	add r3, r3, #1
	add r1, r1, #1
	str r1, [r5, #0xa9c]
	cmp r3, #2
	add r12, r12, #2
	add r4, r4, #8
	blt _020C81AC
	ldmfd sp!, {r3, r4, r5, pc}
_020C81EC: .word 0x000040A7
	arm_func_end FUN_ov0_020c8130

	arm_func_start FUN_ov0_020c81f0
FUN_ov0_020c81f0: ; 0x020C81F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	addne r0, r5, #0x100
	ldrnesb r1, [r0, #0x65]
	cmpne r1, #0
	ldrnesb r0, [r0, #0xa8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #4
	add r1, r4, #0x28
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C829C ; =0x0000400C
	mov r12, #0xa8
	mov r3, #0
_020C825C:
	mov r1, r3, lsl #4
	add r1, r1, #0x10
	mov r1, r1, lsl #0x17
	orr r2, r0, r1, lsr #7
	orr r1, r12, #0x400
	str r2, [r4]
	strh r1, [r4, #4]
	ldr r1, [r5, #0xa9c]
	add r3, r3, #1
	add r1, r1, #1
	str r1, [r5, #0xa9c]
	cmp r3, #5
	add r12, r12, #2
	add r4, r4, #8
	blt _020C825C
	ldmfd sp!, {r3, r4, r5, pc}
_020C829C: .word 0x0000400C
	arm_func_end FUN_ov0_020c81f0

	arm_func_start FUN_ov0_020c82a0
FUN_ov0_020c82a0: ; 0x020C82A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa9c]
	add r0, r5, #4
	bl FUN_ov0_020d1924
	ldrb r1, [r5, #0x28a]
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #4
	add r1, r4, #0x18
	bl FUN_ov0_020d1948
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r12, #0
	ldr r0, _020C8338 ; =0xC0004000
	mov r3, r12
_020C82F8:
	mov r1, r3, lsl #6
	add r1, r1, #0x20
	mov r1, r1, lsl #0x17
	orr r2, r0, r1, lsr #7
	orr r1, r12, #0x3400
	str r2, [r4]
	strh r1, [r4, #4]
	ldr r1, [r5, #0xa9c]
	add r3, r3, #1
	add r1, r1, #1
	str r1, [r5, #0xa9c]
	cmp r3, #3
	add r12, r12, #0x20
	add r4, r4, #8
	blt _020C82F8
	ldmfd sp!, {r3, r4, r5, pc}
_020C8338: .word 0xC0004000
	arm_func_end FUN_ov0_020c82a0

	arm_func_start FUN_ov0_020c833c
FUN_ov0_020c833c: ; 0x020C833C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x28b]
	cmp r1, #0
	beq _020C83A0
	add r1, r4, #0x100
	ldrsb r1, [r1, #0x65]
	cmp r1, #0
	beq _020C8388
	bl FUN_ov0_020c786c
	cmp r0, #0
	beq _020C8374
	mov r0, r4
	bl FUN_ov0_020c7674
_020C8374:
	ldr r1, _020C83A8 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1100
	b _020C8394
_020C8388:
	ldr r1, _020C83A8 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
_020C8394:
	str r0, [r1]
	mov r0, #0
	strb r0, [r4, #0x28b]
_020C83A0:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C83A8: .word 0x04001000
	arm_func_end FUN_ov0_020c833c

	arm_func_start FUN_ov0_020c83ac
FUN_ov0_020c83ac: ; 0x020C83AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x28c]
	cmp r1, #0
	beq _020C83CC
	bl FUN_ov0_020c72d4
	mov r0, #0
	strb r0, [r4, #0x28c]
_020C83CC:
	ldrb r0, [r4, #0x28d]
	cmp r0, #0
	beq _020C83E8
	mov r0, r4
	bl FUN_ov0_020c73bc
	mov r0, #0
	strb r0, [r4, #0x28d]
_020C83E8:
	ldrb r0, [r4, #0x28e]
	cmp r0, #0
	beq _020C8404
	mov r0, r4
	bl FUN_ov0_020c749c
	mov r0, #0
	strb r0, [r4, #0x28e]
_020C8404:
	ldrb r0, [r4, #0x28a]
	cmp r0, #0
	beq _020C8438
	add r0, r4, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
	add r0, r4, #4
	bl FUN_ov0_020d1904
	mov r0, #0
	str r0, [r4, #0xa9c]
	str r0, [r4, #0xaa0]
	strb r0, [r4, #0x28a]
_020C8438:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c83ac

	arm_func_start FUN_ov0_020c8440
FUN_ov0_020c8440: ; 0x020C8440
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_ov0_020c8620
	mov r0, r5
	bl FUN_ov0_020c786c
	cmp r0, #0
	beq _020C849C
	ldr r4, _020C84E8 ; =0x0209A200
	ldr r2, _020C84EC ; =0x020D5D3C
	ldr r1, [r4, #0x10]
	add r0, r5, #0x18
	add r3, r5, #0x84
	bl _ZN10FileSystem22ReadFileByNameDeferredEPPviPKcPa
	ldr r1, [r4, #0x10]
	ldr r2, _020C84F0 ; =0x020D5D48
	add r0, r5, #0x60
	add r3, r5, #0x8a
	bl _ZN10FileSystem22ReadFileByNameDeferredEPPviPKcPa
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_020C849C:
	add r0, r5, #0x100
	ldrsb r0, [r0, #0x68]
	cmp r0, #0
	addeq sp, sp, #0x80
	streq r4, [r5, #0x18]
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r4, sp, #0
	ldr r1, _020C84F4 ; =0x020D5D58
	mov r0, r4
	add r2, r5, #0x168
	bl STD_TSPrintf
	ldr r0, _020C84E8 ; =0x0209A200
	mov r2, r4
	ldr r1, [r0, #0x10]
	add r0, r5, #0x18
	add r3, r5, #0x84
	bl _ZN10FileSystem22ReadFileByNameDeferredEPPviPKcPa
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_020C84E8: .word unk_0209A200
_020C84EC: .word ov0_020D5D3C
_020C84F0: .word ov0_020D5D48
_020C84F4: .word ov0_020D5D58
	arm_func_end FUN_ov0_020c8440

	arm_func_start FUN_ov0_020c84f8
FUN_ov0_020c84f8: ; 0x020C84F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x100
	mov r6, r0
	bl FUN_ov0_020c786c
	cmp r0, #0
	beq _020C8560
	mov r0, r6
	mov r1, #3
	bl FUN_ov0_020c8620
	ldr r0, _020C85C0 ; =gDungeonManager
	ldr r0, [r0]
	bl FUN_ov16_020f8860
	cmp r0, #0
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r2, [r0, #0x43c]
	add r4, sp, #0
	ldr r1, _020C85C4 ; =0x020D5D60
	mov r0, r4
	add r2, r2, #1
	bl sprintf
	mov r0, r4
	add r1, r6, #0x3c
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C8560:
	ldr r5, _020C85C8 ; =0x020D4F50
	ldr r0, [r5]
	cmp r0, #0
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _020C85CC ; =0x020D5D84
	add r4, r6, #0x18
	add r9, sp, #0
	mov r7, #0xc
_020C8584:
	ldr r1, [r5, #4]
	mov r0, r6
	bl FUN_ov0_020c8620
	mov r0, r9
	mov r1, r8
	ldmia r5, {r2, r10}
	bl sprintf
	mla r1, r10, r7, r4
	mov r0, r9
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, [r5, #8]!
	cmp r0, #0
	bne _020C8584
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C85C0: .word gDungeonManager
_020C85C4: .word ov0_020D5D60
_020C85C8: .word ov0_020D4F50
_020C85CC: .word ov0_020D5D84
	arm_func_end FUN_ov0_020c84f8

	arm_func_start FUN_ov0_020c85d0
FUN_ov0_020c85d0: ; 0x020C85D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mvn r4, #0
_020C85E0:
	add r6, r7, r5
	ldrsb r0, [r6, #0x84]
	cmp r0, #0
	blt _020C8604
	bl _ZN10FileSystem10IsFileBusyEa
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	strb r4, [r6, #0x84]
_020C8604:
	add r5, r5, #1
	cmp r5, #9
	blt _020C85E0
	add r0, r7, #0x18
	mov r1, #9
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020c85d0

	arm_func_start FUN_ov0_020c8620
FUN_ov0_020c8620: ; 0x020C8620
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldmltfd sp!, {r4, pc}
	cmp r1, #9
	ldmgefd sp!, {r4, pc}
	add r2, r0, #0x18
	mov r0, #0xc
	mla r4, r1, r0, r2
	cmp r1, #0
	beq _020C8650
	cmp r1, #6
	bne _020C8664
_020C8650:
	ldr r0, [r4]
	cmp r0, #0
	beq _020C8678
	bl _ZN10FileSystem10DeallocateEPv
	b _020C8678
_020C8664:
	mov r0, r4
	mov r1, #1
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r4
	bl _ZN7Archive10DeallocateEP9SFileData
_020C8678:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c8620

	arm_func_start FUN_ov0_020c8694
FUN_ov0_020c8694: ; 0x020C8694
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020C86A0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov0_020c8620
	add r4, r4, #1
	cmp r4, #9
	blt _020C86A0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020c8694

	arm_func_start FUN_ov0_020c86bc
FUN_ov0_020c86bc: ; 0x020C86BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020C8994 ; =0x020AA044
	mov r7, r0
	ldrsb r0, [r6]
	mov r4, #0
	mov r5, #1
	cmp r0, #0
	beq _020C883C
	add r0, r7, #0x168
	add r1, r6, #4
	bl STD_CompareString
	cmp r0, #0
	strneb r5, [r7, #0x288]
	strneb r5, [r7, #0x290]
	bne _020C870C
	add r0, r7, #0x1a8
	add r1, r6, #0x44
	bl STD_CompareString
	cmp r0, #0
	strneb r5, [r7, #0x28e]
_020C870C:
	add r0, r7, #0x100
	ldrsb r2, [r0, #0x65]
	ldrsb r1, [r6, #1]
	cmp r2, r1
	bne _020C8730
	ldrsb r1, [r0, #0x66]
	ldrsb r0, [r6, #2]
	cmp r1, r0
	beq _020C8778
_020C8730:
	add r0, r7, #0x100
	ldrsb r0, [r0, #0x66]
	strb r5, [r7, #0x290]
	cmp r0, #4
	bne _020C8750
	ldrsb r0, [r6, #2]
	cmp r0, #4
	bne _020C876C
_020C8750:
	add r0, r7, #0x100
	ldrsb r0, [r0, #0x66]
	cmp r0, #4
	beq _020C8778
	ldrsb r0, [r6, #2]
	cmp r0, #4
	bne _020C8778
_020C876C:
	strb r5, [r7, #0x289]
	strb r5, [r7, #0x288]
	strb r5, [r7, #0x290]
_020C8778:
	strb r5, [r7, #0x28a]
	strb r5, [r7, #0x28b]
	strb r4, [r6]
	ldrsb r0, [r6]
	add r8, r6, #4
	add r3, r7, #0x168
	strb r0, [r7, #0x164]
	ldrsb r0, [r6, #1]
	mov r2, #0x10
	strb r0, [r7, #0x165]
	ldrsb r0, [r6, #2]
	strb r0, [r7, #0x166]
	ldrsb r0, [r6, #3]
	strb r0, [r7, #0x167]
_020C87B0:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C87B0
	add r8, r6, #0x24
	add r3, r7, #0x188
	mov r2, #0x10
_020C87D8:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C87D8
	add r8, r6, #0x44
	add r3, r7, #0x1a8
	mov r2, #0x10
_020C8800:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C8800
	ldr r1, [r6, #0x64]
	ldr r0, [r6, #0x68]
	str r1, [r7, #0x1c8]
	str r0, [r7, #0x1cc]
	ldr r0, [r6, #0x6c]
	str r0, [r7, #0x1d0]
	ldr r0, [r6, #0x70]
	str r0, [r7, #0x1d4]
_020C883C:
	ldrsb r0, [r6, #0x74]
	cmp r0, #0
	beq _020C88DC
	strb r5, [r7, #0x28c]
	strb r5, [r7, #0x28d]
	strb r5, [r7, #0x28a]
	strb r4, [r6, #0x74]
	ldrsb r1, [r6, #0x74]
	add r0, r7, #0xda
	add r8, r6, #0x76
	strb r1, [r7, #0x1d8]
	ldrsb r1, [r6, #0x75]
	add r3, r0, #0x100
	mov r2, #8
	strb r1, [r7, #0x1d9]
_020C8878:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C8878
	add r0, r7, #0xea
	add r8, r6, #0x86
	add r3, r0, #0x100
	mov r2, #0x20
_020C88A4:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C88A4
	ldrsb r0, [r6, #0x75]
	cmp r0, #0
	ldrne r0, _020C8998 ; =0x020A0640
	strneb r5, [r6, #1]
	strne r4, [r0, #0xb0]
	strneb r5, [r7, #0x165]
	strneb r5, [r7, #0x28b]
_020C88DC:
	ldrsb r0, [r6, #0xc6]
	cmp r0, #0
	beq _020C8910
	strb r5, [r7, #0x28a]
	strb r4, [r6, #0xc6]
	ldrsb r0, [r6, #0xc6]
	strb r0, [r7, #0x22a]
	ldrsb r0, [r6, #0xc7]
	strb r0, [r7, #0x22b]
	ldrsb r0, [r6, #0xc8]
	strb r0, [r7, #0x22c]
	ldrb r0, [r6, #0xc9]
	strb r0, [r7, #0x22d]
_020C8910:
	mov r5, #0
	mov lr, #0x14
	b _020C8988
_020C891C:
	mul r1, r5, lr
	add r12, r6, r1
	ldrsb r0, [r12, #0xda]
	cmp r0, #0
	beq _020C8984
	add r3, r7, r1
	strb r4, [r12, #0xda]
	add r0, r12, #0xcc
	add r8, r3, #0x230
	ldmia r0, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	ldrh r1, [r12, #0xd8]
	add r0, r3, #0x200
	strh r1, [r0, #0x3c]
	ldrsb r0, [r12, #0xda]
	strb r0, [r3, #0x23e]
	ldrsb r0, [r12, #0xdb]
	strb r0, [r3, #0x23f]
	ldrsb r0, [r12, #0xdc]
	strb r0, [r3, #0x240]
	ldrb r1, [r12, #0xdd]
	ldrb r0, [r12, #0xde]
	strb r1, [r3, #0x241]
	strb r0, [r3, #0x242]
	ldrb r0, [r12, #0xdf]
	strb r0, [r3, #0x243]
_020C8984:
	add r5, r5, #1
_020C8988:
	cmp r5, #2
	blt _020C891C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C8994: .word unk_020AA044
_020C8998: .word unk_020A0640
	arm_func_end FUN_ov0_020c86bc

	arm_func_start FUN_ov0_020c899c
FUN_ov0_020c899c: ; 0x020C899C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r6, #0
	add r0, r9, #0x52
	mov r8, r6
	mov r7, r6
	add r5, r0, #0x100
	mov r4, #0x14
_020C89BC:
	mla r2, r7, r4, r9
	add r0, r2, #0x200
	ldrsb r1, [r0, #0x3f]
	cmp r1, #0
	beq _020C8A20
	ldrsb r0, [r0, #0x40]
	cmp r0, #1
	cmpne r0, #2
	bne _020C8A1C
	and r0, r0, #0xff
	str r0, [sp]
	ldr r1, [r2, #0x230]
	ldr r12, [r2, #0x238]
	add r3, r2, #0x200
	mov r0, r1, asr #0xb
	mov r2, r12, asr #0xb
	add r1, r1, r0, lsr #20
	add r2, r12, r2, lsr #20
	ldrh r3, [r3, #0x3c]
	add r0, r5, r8, lsl #3
	mov r1, r1, asr #0xc
	mov r2, r2, asr #0xc
	bl FUN_ov0_020c6f3c
	b _020C8A28
_020C8A1C:
	b _020C8A20
_020C8A20:
	add r0, r5, r8, lsl #3
	bl FUN_ov0_020c6f88
_020C8A28:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #1
	add r8, r8, #1
	blt _020C89BC
	cmp r8, #2
	bge _020C8A68
	add r0, r9, #0x52
	add r4, r0, #0x100
_020C8A4C:
	add r0, r4, r8, lsl #3
	bl FUN_ov0_020c6f88
	cmp r0, #0
	add r8, r8, #1
	addne r6, r6, #1
	cmp r8, #2
	blt _020C8A4C
_020C8A68:
	cmp r6, #0
	movgt r0, #1
	strgtb r0, [r9, #0x28a]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov0_020c899c

	arm_func_start FUN_ov0_020c8a78
FUN_ov0_020c8a78: ; 0x020C8A78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r1, _020C8C44 ; =g2DAdventureLogic
	mov r8, #0
	mov r10, r0
	ldr r0, [r1]
	mov r1, r8
	mov r7, r8
	bl FUN_020552dc
	movs r4, r0
	beq _020C8AFC
	bl FUN_020543f4
	cmp r0, #0
	beq _020C8AFC
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r4, #0x84]
	ldr r2, [r4, #0x8c]
	add r3, sp, #8
	mov r0, r10
	bl FUN_ov0_020c8d44
	ldrh r1, [r4, #0x6a]
	mov r0, #1
	add r4, r10, #0x92
	str r0, [sp]
	add r0, r1, #0x4000
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r4, r8, lsl #3
	bl FUN_ov0_020c6f3c
	b _020C8B08
_020C8AFC:
	add r0, r10, #0x92
	add r0, r0, r7, lsl #3
	bl FUN_ov0_020c6f88
_020C8B08:
	ldr r4, _020C8C44 ; =g2DAdventureLogic
	add r8, r8, #1
	ldr r0, [r4]
	add r7, r7, #1
	bl FUN_020553c0
	mov r11, r0
	mov r9, #0
	add r5, r10, #0x92
	b _020C8BF0
_020C8B2C:
	ldr r0, [r4]
	mov r1, r9
	bl FUN_0205545c
	movs r6, r0
	beq _020C8BEC
	bl FUN_020543f4
	cmp r0, #0
	beq _020C8BEC
	mov r0, r6
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r4]
	bl FUN_02055a28
	cmp r0, #0
	bne _020C8BEC
	mov r0, r6
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r4]
	bl FUN_02055a48
	cmp r0, #0
	bne _020C8BEC
	mov r0, r6
	bl FUN_020542a8
	mov r1, r0
	ldr r0, [r4]
	bl FUN_02055b5c
	cmp r0, #0
	ldreqb r0, [r6, #0xa7]
	cmpeq r0, #2
	bne _020C8BEC
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r6, #0x84]
	ldr r2, [r6, #0x8c]
	mov r0, r10
	add r3, sp, #8
	bl FUN_ov0_020c8d44
	mov r0, #3
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r7, lsl #3
	mov r3, #0
	bl FUN_ov0_020c6f3c
	cmp r0, #0
	addne r8, r8, #1
	add r7, r7, #1
_020C8BEC:
	add r9, r9, #1
_020C8BF0:
	cmp r9, r11
	blt _020C8B2C
	ldr r0, _020C8C48 ; =0x020AA044
	add r4, r10, #0x92
	ldrsb r0, [r0, #3]
	cmp r0, #0
	moveq r7, #0
	mov r9, r7
	b _020C8C28
_020C8C14:
	add r0, r4, r9, lsl #3
	bl FUN_ov0_020c6f88
	cmp r0, #0
	addne r8, r8, #1
	add r9, r9, #1
_020C8C28:
	cmp r9, #0x18
	blt _020C8C14
	cmp r8, #0
	movgt r0, #1
	strgtb r0, [r10, #0x28a]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8C44: .word g2DAdventureLogic
_020C8C48: .word unk_020AA044
	arm_func_end FUN_ov0_020c8a78

	arm_func_start FUN_ov0_020c8c4c
FUN_ov0_020c8c4c: ; 0x020C8C4C
	bx lr
	arm_func_end FUN_ov0_020c8c4c

	arm_func_start FUN_ov0_020c8c50
FUN_ov0_020c8c50: ; 0x020C8C50
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov0_020c786c
	cmp r0, #0
	beq _020C8C90
	ldrsh r0, [r4, #0x8e]
	cmp r0, #0
	ldreqsh r0, [r4, #0x90]
	cmpeq r0, #0
	movne r0, #1
	strneb r0, [r4, #0x28b]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	b _020C8CD0
_020C8C90:
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r4, #0x92]
	ldrsh r2, [r4, #0x94]
	add r3, sp, #8
	mov r0, r4
	bl FUN_ov0_020c8dc8
	ldrsh r0, [r4, #0x8e]
	ldr r1, [sp, #8]
	cmp r1, r0
	ldreqsh r0, [r4, #0x90]
	ldreq r1, [sp, #4]
	cmpeq r1, r0
	movne r0, #1
	strneb r0, [r4, #0x28a]
	strneb r0, [r4, #0x28b]
_020C8CD0:
	ldr r0, [sp, #8]
	ldr r5, _020C8D40 ; =g2DAdventureLogic
	strh r0, [r4, #0x8e]
	ldr r0, [sp, #4]
	ldrsh r1, [r4, #0x8e]
	strh r0, [r4, #0x90]
	ldrsh r2, [r4, #0x90]
	ldr r0, [r5]
	bl FUN_ov0_020ccc60
	ldr r0, [r5]
	bl FUN_ov0_020ccd80
	cmp r0, #0
	beq _020C8D10
	ldr r0, [r5]
	mov r1, #1
	bl FUN_ov0_020ccd48
_020C8D10:
	ldr r5, _020C8D40 ; =g2DAdventureLogic
	ldr r0, [r5]
	bl FUN_ov0_020ccd54
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	ldrsh r1, [r4, #0x8e]
	ldrsh r2, [r4, #0x90]
	ldr r0, [r5]
	bl FUN_ov0_020ccc50
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020C8D40: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c8c50

	arm_func_start FUN_ov0_020c8d44
FUN_ov0_020c8d44: ; 0x020C8D44
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c8]
	ldr r12, [sp, #8]
	str r4, [r3]
	ldr r4, [r0, #0x1cc]
	str r4, [r12]
	ldr r4, [r0, #0x1d0]
	cmp r4, #0
	beq _020C8D90
	smull r4, lr, r1, r4
	adds r4, r4, #0x800
	adc r1, lr, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r1, lsl #20
	mov r1, r4, asr #0xb
	ldr lr, [r3]
	add r1, r4, r1, lsr #20
	add r1, lr, r1, asr #12
	str r1, [r3]
_020C8D90:
	ldr r0, [r0, #0x1d4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	smull r1, r0, r2, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0xb
	ldr r2, [r12]
	add r0, r1, r0, lsr #20
	add r0, r2, r0, asr #12
	str r0, [r12]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c8d44

	arm_func_start FUN_ov0_020c8dc8
FUN_ov0_020c8dc8: ; 0x020C8DC8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	sub r1, r1, #0x80
	mov r6, r0
	ldr r4, [sp, #0x18]
	str r1, [r5]
	sub r0, r2, #0x60
	str r0, [r4]
	add r0, r6, #0x100
	ldrsb r0, [r0, #0x66]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020C8E28
_020C8DFC: ; jump table
	b _020C8E28 ; case 0
	b _020C8E20 ; case 1
	b _020C8E0C ; case 2
	b _020C8E18 ; case 3
_020C8E0C:
	mov r3, #0
	mov r8, #0x140
	b _020C8E3C
_020C8E18:
	mov r3, #0x100
	b _020C8E38
_020C8E20:
	mov r3, #0
	b _020C8E38
_020C8E28:
	mov r3, #0
	str r3, [r5]
	mov r0, #0x20
	str r0, [r4]
_020C8E38:
	mov r8, #0x40
_020C8E3C:
	mov r7, #0
	ldr r1, [r5]
	mov r0, r6
	mov r2, r7
	bl FUN_ov0_020c6fe4
	str r0, [r5]
	ldr r1, [r4]
	mov r0, r6
	mov r2, r7
	mov r3, r8
	bl FUN_ov0_020c6fe4
	str r0, [r4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov0_020c8dc8

	arm_func_start FUN_ov0_020c8e70
FUN_ov0_020c8e70: ; 0x020C8E70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r9, _020C8EE8 ; =g2DAdventureLogic
	mov r8, r1
	ldr r0, [r9]
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	bl FUN_ov0_020ccd60
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldrh r2, [sp]
	ldrh r1, [sp, #2]
	ldr r0, [r9]
	strh r2, [sp, #4]
	strh r1, [sp, #6]
	bl FUN_ov0_020ccd80
	cmp r0, #0
	ldrnesh r1, [sp, #4]
	ldrnesh r0, [sp, #6]
	subne r1, r8, r1
	ldreq r0, [sp, #0x28]
	subeq r1, r8, r6
	str r1, [r5]
	sub r0, r7, r0
	str r0, [r4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C8EE8: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020c8e70

	arm_func_start FUN_ov0_020c8eec
FUN_ov0_020c8eec: ; 0x020C8EEC
	stmfd sp!, {r4, lr}
	ldr r1, _020C8F20 ; =0x0209A454
	ldr r2, [r1, #0x84]
	cmp r2, #0
	cmpne r2, #0x83
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r4, #1
	ldr r0, [r0, #0x10]
	mov r1, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C8F20: .word unk_0209A454
	arm_func_end FUN_ov0_020c8eec

	arm_func_start FUN_ov0_020c8f24
FUN_ov0_020c8f24: ; 0x020C8F24
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x18
	mov r2, #0x6c
	str r4, [r5, #0x14]
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x8e
	mov r2, #4
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x92
	mov r2, #0xc0
	bl MI_CpuFill8
	add r0, r5, #0x52
	mov r6, #0x10
	add r0, r0, #0x100
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, r5, #0x164
	mov r1, r4
	mov r2, #0x124
	bl MI_CpuFill8
	mov r2, r6
	add r0, r5, #0x288
	mov r1, r4
	bl MI_CpuFill8
	add r0, r5, #0x298
	mov r1, r4
	mov r2, #0x800
	bl MI_CpuFill8
	mov r6, #9
	add r0, r5, #0x84
	mov r1, #0xff
	mov r2, r6
	bl MI_CpuFill8
	sub r0, r6, #0xa
	add r1, r5, #0xa00
	strh r0, [r1, #0x9a]
	ldrsh r2, [r1, #0x9a]
	mov r0, r5
	str r4, [r5, #0xa9c]
	str r4, [r5, #0xaa0]
	strh r2, [r1, #0x98]
	bl FUN_ov0_020c8eec
	cmp r0, #0
	movne r0, #8
	strne r0, [r5, #0x14]
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r5, #4
	bl FUN_ov0_020d184c
	add r0, r5, #4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, r5, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	mov r1, r4
	add r0, r5, #4
	bl FUN_ov0_020d1a74
	ldr r12, _020C9104 ; =0x020AA044
	add r6, r5, #0x164
	mov lr, r12
	strb r4, [r12]
	strb r4, [r12, #0x74]
	strb r4, [r12, #0xc6]
	mov r4, #7
_020C9044:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020C9044
	ldr r0, [lr]
	add r4, r12, #0x74
	str r0, [r6]
	add r3, r5, #0x1d8
	mov r2, #0x29
_020C9068:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020C9068
	ldrb r1, [r12, #0xc6]
	ldrb r0, [r12, #0xc7]
	add r6, r12, #0xcc
	add lr, r5, #0x230
	strb r1, [r5, #0x22a]
	strb r0, [r5, #0x22b]
	ldrb r1, [r12, #0xc8]
	ldrb r0, [r12, #0xc9]
	add r12, r12, #0xf4
	add r4, r5, #0x258
	strb r1, [r5, #0x22c]
	strb r0, [r5, #0x22d]
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia lr, {r0, r1}
	mov r2, #0xc
_020C90D0:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r4, #2]
	strh r1, [r4], #4
	bne _020C90D0
	ldr r1, _020C9108 ; =0x020D5D9C
	mov r0, #0
	bl _ZN10FileSystem17OpenArchiveDirectEPvPKc
	ldr r1, _020C910C ; =0x0209A200
	str r0, [r1, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_020C9104: .word unk_020AA044
_020C9108: .word ov0_020D5D9C
_020C910C: .word unk_0209A200
	arm_func_end FUN_ov0_020c8f24

	arm_func_start FUN_ov0_020c9110
FUN_ov0_020c9110: ; 0x020C9110
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x14]
	mov r4, #0
	cmp r1, #9
	mov r5, #1
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020C9130: ; jump table
	b _020C9158 ; case 0
	b _020C916C ; case 1
	b _020C9198 ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	b _020C91D0 ; case 4
	b _020C92F4 ; case 5
	b _020C9400 ; case 6
	ldmfd sp!, {r4, r5, r6, pc} ; case 7
	ldmfd sp!, {r4, r5, r6, pc} ; case 8
	b _020C91D0 ; case 9
_020C9158:
	bl FUN_ov0_020c84f8
	mov r0, r6
	bl FUN_ov0_020c8440
	str r5, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_020C916C:
	bl FUN_ov0_020c85d0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov0_020c7130
	mov r0, #2
	str r0, [r6, #0x14]
	strb r5, [r6, #0x28a]
	strb r5, [r6, #0x28c]
	strb r5, [r6, #0x28d]
	strb r5, [r6, #0x28e]
_020C9198:
	mov r0, r6
	bl FUN_ov0_020c85d0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov0_020c7288
	mov r0, r6
	bl FUN_ov0_020c7048
	mov r0, #9
	str r0, [r6, #0x14]
	strb r5, [r6, #0x28b]
	strb r5, [r6, #0x28e]
	strb r5, [r6, #0x28f]
	ldmfd sp!, {r4, r5, r6, pc}
_020C91D0:
	bl FUN_ov0_020c786c
	cmp r0, #0
	mov r0, r6
	bne _020C9280
	bl FUN_ov0_020c8074
	mov r0, r6
	bl FUN_ov0_020c8130
	mov r0, r6
	bl FUN_ov0_020c81f0
	ldr r0, _020C946C ; =0x020A9C40
	bl FUN_02046330
	cmp r0, #0
	ldreq r1, _020C9470 ; =0x04001000
	ldreq r0, [r1]
	biceq r0, r0, #0xe000
	streq r0, [r1]
	beq _020C924C
	ldr r2, _020C9470 ; =0x04001000
	mov r0, r6
	ldr r1, [r2]
	bic r1, r1, #0xe000
	orr r1, r1, #0x8000
	str r1, [r2]
	ldrh r1, [r2, #0x4a]
	bic r1, r1, #0x3f
	strh r1, [r2, #0x4a]
	ldrh r1, [r2, #0x4a]
	bic r1, r1, #0x3f00
	orr r1, r1, #0x1100
	strh r1, [r2, #0x4a]
	bl FUN_ov0_020c7b90
_020C924C:
	mov r0, r6
	bl FUN_ov0_020c7ebc
	mov r0, r6
	bl FUN_ov0_020c7de8
	mov r0, r6
	bl FUN_ov0_020c7fa0
	mov r0, r6
	bl FUN_ov0_020c7a1c
	mov r0, r6
	bl FUN_ov0_020c7cec
	mov r0, r6
	bl FUN_ov0_020c7884
	b _020C9284
_020C9280:
	bl FUN_ov0_020c82a0
_020C9284:
	ldr r0, [r6, #0x14]
	cmp r0, #9
	bne _020C92E8
	ldrb r0, [r6, #0x28f]
	cmp r0, #0
	beq _020C92E8
	ldr r0, _020C9474 ; =0x020AF81C
	bl FUN_0204462c
	cmp r0, #0
	bne _020C92E8
	ldr r0, [r6, #0x10]
	bl _ZN14CScreenManager17getLoadedSceneSubEv
	cmp r0, #0x8d
	beq _020C92CC
	ldr r0, [r6, #0x10]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x60
	bne _020C92E4
_020C92CC:
	bl _ZN8Graphics11IsSubFadingEv
	cmp r0, #0
	strneb r4, [r6, #0x28f]
	bne _020C92E4
	mov r0, #6
	bl _ZN8Graphics9FadeInSubEl
_020C92E4:
	strb r4, [r6, #0x28f]
_020C92E8:
	mov r0, #3
	str r0, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_020C92F4:
	bl FUN_ov0_020c8eec
	cmp r0, #0
	mov r0, r6
	beq _020C931C
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_020C931C:
	bl FUN_ov0_020c86bc
	mov r0, r6
	bl FUN_ov0_020c786c
	cmp r0, #0
	mov r0, r6
	bne _020C9344
	bl FUN_ov0_020c8a78
	mov r0, r6
	bl FUN_ov0_020c899c
	b _020C9348
_020C9344:
	bl FUN_ov0_020c8c4c
_020C9348:
	mov r0, r6
	bl FUN_ov0_020c8c50
	ldr r2, _020C9478 ; =0x020A0640
	ldr r0, _020C947C ; =0x020AA044
	ldr r1, [r2, #0xb0]
	cmp r1, #1
	ble _020C93B4
	cmp r1, #0xa
	ldrge r3, [r2, #0xb4]
	ldrge r1, _020C9480 ; =0x00001023
	cmpge r3, r1
	ldr r1, _020C9478 ; =0x020A0640
	streq r5, [r2, #0xb0]
	ldr r2, [r1, #0xb0]
	cmp r2, #9
	suble r2, r2, #1
	strle r2, [r1, #0xb0]
	ldr r1, _020C9478 ; =0x020A0640
	ldr r1, [r1, #0xb0]
	cmp r1, #1
	beq _020C93A8
	ldrsb r1, [r0, #3]
	cmp r1, #1
	bne _020C93D0
_020C93A8:
	ldr r1, _020C9478 ; =0x020A0640
	str r4, [r1, #0xb0]
	b _020C93BC
_020C93B4:
	bne _020C93D0
	str r4, [r2, #0xb0]
_020C93BC:
	strb r5, [r0, #1]
	mov r0, #4
	strb r5, [r6, #0x165]
	strb r5, [r6, #0x28b]
	str r0, [r6, #0x14]
_020C93D0:
	ldrb r0, [r6, #0x290]
	cmp r0, #0
	movne r0, #6
	strneb r4, [r6, #0x290]
	strne r0, [r6, #0x14]
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x288
	bl FUN_ov0_020c6fb0
	cmp r0, #0
	movne r0, #4
	strne r0, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_020C9400:
	add r0, r6, #0x288
	bl FUN_ov0_020c6fa8
	cmp r0, #0
	mov r0, r6
	beq _020C945C
	mov r1, r4
	strb r4, [r6, #0x288]
	bl FUN_ov0_020c8620
	mov r0, r6
	mov r1, #6
	bl FUN_ov0_020c8620
	mov r0, r6
	bl FUN_ov0_020c8440
	ldrb r0, [r6, #0x289]
	mov r1, #2
	str r1, [r6, #0x14]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	strb r4, [r6, #0x289]
	bl FUN_ov0_020c84f8
	str r5, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_020C945C:
	bl FUN_ov0_020c7048
	mov r0, #4
	str r0, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_020C946C: .word unk_020A9C40
_020C9470: .word 0x04001000
_020C9474: .word unk_020AF81C
_020C9478: .word unk_020A0640
_020C947C: .word unk_020AA044
_020C9480: .word 0x00001023
	arm_func_end FUN_ov0_020c9110

	arm_func_start FUN_ov0_020c9484
FUN_ov0_020c9484: ; 0x020C9484
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r1, [r5, #0x14]
	cmp r1, #3
	bne _020C94B0
	bl FUN_ov0_020c833c
	mov r0, r5
	bl FUN_ov0_020c83ac
	mov r0, #5
	str r0, [r5, #0x14]
_020C94B0:
	ldr r4, _020C9540 ; =g2DAdventureLogic
	ldr r0, [r4]
	bl FUN_ov0_020ccd80
	cmp r0, #0
	beq _020C9514
	ldr r0, [r4]
	bl FUN_ov0_020ccd60
	strh r0, [sp]
	mov r0, r0, lsr #0x10
	strh r0, [sp, #2]
	ldrh r1, [sp, #2]
	ldrh r2, [sp]
	ldr r0, _020C9544 ; =0x000001FF
	strh r1, [sp, #6]
	strh r2, [sp, #4]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r1, r1, r3, lsl #16
	ldr r0, _020C9548 ; =0x04001010
	orr r1, r2, r1
	str r1, [r0]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020C9514:
	ldr r0, _020C9544 ; =0x000001FF
	ldrsh r2, [r5, #0x8e]
	ldrsh r3, [r5, #0x90]
	mov r1, r0, lsl #0x10
	and r2, r2, r0
	and r1, r1, r3, lsl #16
	ldr r0, _020C9548 ; =0x04001010
	orr r1, r2, r1
	str r1, [r0]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020C9540: .word g2DAdventureLogic
_020C9544: .word 0x000001FF
_020C9548: .word 0x04001010
	arm_func_end FUN_ov0_020c9484

	arm_func_start FUN_ov0_020c954c
FUN_ov0_020c954c: ; 0x020C954C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C95B4 ; =0x0209A200
	mov r5, r0
	ldr r0, [r4, #0x10]
	bl _ZN10FileSystem12CloseArchiveEi
	mvn r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	cmp r0, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020C95B8 ; =0x04001010
	mov r2, #0
	mov r0, r5
	str r2, [r1]
	bl FUN_ov0_020c8694
	add r0, r5, #4
	bl FUN_ov0_020d18c0
	add r0, r5, #4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, r5, #4
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020C95B4: .word unk_0209A200
_020C95B8: .word 0x04001010
	arm_func_end FUN_ov0_020c954c

	arm_func_start FUN_ov0_020c95bc
FUN_ov0_020c95bc:
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_ov0_020d182c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020c95bc

	arm_func_start FUN_ov0_020c95dc
FUN_ov0_020c95dc: ; 0x020C95DC
	bx lr
	arm_func_end FUN_ov0_020c95dc

	arm_func_start FUN_ov0_020c95e0
FUN_ov0_020c95e0: ; 0x020C95E0
	bx lr
	arm_func_end FUN_ov0_020c95e0

	arm_func_start FUN_ov0_020c95e4
FUN_ov0_020c95e4: ; 0x020C95E4
	ldr r12, _020C95F0 ; =0xFFFFFFFC
	add r0, r0, r12
	b FUN_ov0_020c95bc
_020C95F0: .word 0xFFFFFFFC
	arm_func_end FUN_ov0_020c95e4

	arm_func_start FUN_ov0_020c95f4
FUN_ov0_020c95f4: ; 0x020C95F4
	ldr r12, _020C9600 ; =0xFFFFFFFC
	add r0, r0, r12
	b FUN_0202a36c
_020C9600: .word 0xFFFFFFFC
	arm_func_end FUN_ov0_020c95f4

	arm_func_start FUN_ov0_020c9604
FUN_ov0_020c9604: ; 0x020C9604
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	ldr r0, _020C96C4 ; =gLogicThink
	mov r1, r7
	bl FUN_0205106c
	mov r5, r0
	mov r1, r7
	add r0, r4, #0x40
	mov r2, #8
	bl MI_CpuFill8
	mov r6, r7
_020C9634:
	mov r0, r5
	mov r1, r6
	bl FUN_02050244
	add r1, r4, r6, lsl #1
	strh r0, [r1, #0x40]
	ldrh r0, [r1, #0x40]
	add r6, r6, #1
	cmp r0, #0
	addne r7, r7, #1
	cmp r6, #4
	blt _020C9634
	cmp r7, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r0, r5
_020C9670:
	add r1, r4, r5, lsl #1
	ldrh r1, [r1, #0x40]
	cmp r1, #0
	bne _020C96B4
	add r1, r5, #1
	cmp r1, #4
	bge _020C96B4
_020C968C:
	add r3, r4, r1, lsl #1
	ldrh r2, [r3, #0x40]
	cmp r2, #0
	addne r1, r4, r5, lsl #1
	strneh r2, [r1, #0x40]
	strneh r0, [r3, #0x40]
	bne _020C96B4
	add r1, r1, #1
	cmp r1, #4
	blt _020C968C
_020C96B4:
	add r5, r5, #1
	cmp r5, #3
	blt _020C9670
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C96C4: .word gLogicThink
	arm_func_end FUN_ov0_020c9604

	arm_func_start FUN_ov0_020c96c8
FUN_ov0_020c96c8: ; 0x020C96C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	ldr r5, _020C9724 ; =gPalSkinFaceFile
	mov r8, r0
	mov r6, r7
	mov r4, #0xc
_020C96E0:
	add r0, r8, r7, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020C9714
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r7, r4, r8
	ldrne r1, [r1, #0x1cc]
	cmpne r1, #0
	beq _020C9714
	ldr r2, [r5]
	bl FUN_ov16_020f0c30 ; may be ov17 ; ov16(Mica)
_020C9714:
	add r7, r7, #1
	cmp r7, #4
	blt _020C96E0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C9724: .word gPalSkinFaceFile
	arm_func_end FUN_ov0_020c96c8

	arm_func_start FUN_ov0_020c9728
FUN_ov0_020c9728: ; 0x020C9728
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r12, [sp, #0x24]
	ldr r0, [sp, #0x28]
	str r12, [sp]
	ldr lr, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r12, [lr, #4]
	mov r0, r1
	str r12, [sp, #8]
	ldrh r12, [lr, #0xc]
	mov r1, r2
	mov r2, r3
	mov r3, r12, lsl #3
	str r3, [sp, #0xc]
	ldrh lr, [lr, #0xe]
	mov r12, #0
	ldr r3, [sp, #0x20]
	mov lr, lr, lsl #3
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	arm_func_end FUN_ov0_020c9728

	arm_func_start FUN_ov0_020c9794
FUN_ov0_020c9794: ; 0x020C9794
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	add r0, r10, #0x48
	mov r1, #8
	mov r11, #3
	mov r4, #2
	bl FUN_ov16_020f2f7c
	mov r9, #0
	add r6, r10, #0x48
_020C97BC:
	add r0, r10, r9, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020C9860
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _020C9860
	mov r0, #0x14
	mul r5, r9, r0
	add r8, r6, r5
	mov r0, r8
	mov r1, #6
	mov r2, r4
	bl FUN_ov16_020f2fa8
	ldr r0, [r6, r5]
	cmp r0, #0
	ldrne r0, [r8, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C9860
	mov r0, r8
	bl FUN_ov16_020f2f20
	add r0, r7, #0x1c
	stmia sp, {r0, r11}
	str r4, [sp, #8]
	ldr r1, _020C9ADC ; =gFont8
	str r8, [sp, #0xc]
	ldr r1, [r1]
	mov r0, r10
	mov r2, #0
	mov r3, #6
	bl FUN_ov0_020c9728
	ldrh r2, [r8, #0xc]
	ldrh r1, [r8, #0xe]
	ldr r0, [r8, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_020C9860:
	add r9, r9, #1
	cmp r9, #4
	blt _020C97BC
	add r9, r10, #0x98
	mov r2, #2
	mov r0, r9
	mov r1, #0xe
	mov r7, #3
	mov r4, r2
	mov r6, #0
	bl FUN_ov16_020f2fa8
	ldr r0, [r10, #0x98]
	cmp r0, #0
	ldrne r0, [r9, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C9978
	mov r0, r9
	bl FUN_ov16_020f2f20
	ldr r8, [r10, #0x30]
	mov r3, #2
	cmp r8, #0x3c
	blt _020C98E8
	ldr r0, _020C9AE0 ; =0x020D5EB4
	mov r2, #0x1a
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r0, _020C9AE4 ; =gFont12
	str r9, [sp, #0xc]
	ldr r1, [r0]
	mov r0, r10
	b _020C995C
_020C98E8:
	ldr r0, _020C9AE8 ; =0x020D5EC0
	mov r2, #0
	stmia sp, {r0, r7}
	str r2, [sp, #8]
	ldr r0, _020C9AE4 ; =gFont12
	str r9, [sp, #0xc]
	ldr r1, [r0]
	mov r0, r10
	bl FUN_ov0_020c9728
	cmp r8, #0x63
	movgt r8, #0x63
	add r5, sp, #0x20
	ldr r1, _020C9AEC ; =0x020D5ED0
	mov r0, r5
	mov r2, r8
	bl sprintf
	add r8, sp, #0x10
	mov r0, r5
	mov r1, r8
	bl FUN_ov16_020f1f5c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, _020C9AE4 ; =gFont12
	str r9, [sp, #0xc]
	ldr r1, [r0]
	mov r0, r10
	mov r2, #0x54
	mov r3, #2
_020C995C:
	bl FUN_ov0_020c9728
	ldrh r2, [r9, #0xc]
	ldrh r1, [r9, #0xe]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_020C9978:
	add r5, r10, #0xac
	mov r0, r5
	mov r1, #0xb
	mov r2, #2
	bl FUN_ov16_020f2fa8
	ldr r0, [r10, #0xac]
	cmp r0, #0
	ldrne r0, [r5, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C9A48
	mov r0, r5
	bl FUN_ov16_020f2f20
	ldr r0, _020C9AF0 ; =0x020D5ED4
	ldr r8, _020C9AE4 ; =gFont12
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r8]
	mov r0, r10
	mov r2, r6
	mov r3, r4
	bl FUN_ov0_020c9728
	add r9, sp, #0x20
	ldr r1, _020C9AF4 ; =0x020D5EDC
	ldr r2, [r10, #0x34]
	mov r0, r9
	bl sprintf
	mov r0, r9
	add r9, sp, #0x10
	mov r1, r9
	bl FUN_ov16_020f1f5c
	ldr r1, _020C9AF8 ; =0x020D5EE0
	mov r0, r9
	bl STD_ConcatenateString
	str r9, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r8]
	mov r3, r4
	mov r0, r10
	mov r2, #0x30
	bl FUN_ov0_020c9728
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_020C9A48:
	add r4, r10, #0xc0
	mov r5, #1
	mov r0, r4
	mov r2, r5
	mov r1, #2
	bl FUN_ov16_020f2fa8
	ldr r0, [r10, #0xc0]
	cmp r0, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	moveq r5, #0
	cmp r5, #0
	beq _020C9AC4
	mov r0, r4
	bl FUN_ov16_020f2f20
	ldr r0, _020C9AFC ; =0x020D5EE4
	mov r2, #0
	stmia sp, {r0, r7}
	str r2, [sp, #8]
	ldr r0, _020C9ADC ; =gFont8
	str r4, [sp, #0xc]
	ldr r1, [r0]
	mov r0, r10
	mov r3, r2
	bl FUN_ov0_020c9728
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_020C9AC4:
	add r0, r10, #0xd4
	mov r1, #0xe
	mov r2, #2
	bl FUN_ov16_020f2fa8
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9ADC: .word gFont8
_020C9AE0: .word ov0_020D5EB4
_020C9AE4: .word gFont12
_020C9AE8: .word ov0_020D5EC0
_020C9AEC: .word ov0_020D5ED0
_020C9AF0: .word ov0_020D5ED4
_020C9AF4: .word ov0_020D5EDC
_020C9AF8: .word ov0_020D5EE0
_020C9AFC: .word ov0_020D5EE4
	arm_func_end FUN_ov0_020c9794

	arm_func_start FUN_ov0_020c9b00
FUN_ov0_020c9b00: ; 0x020C9B00
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0xd4]
	add r4, r5, #0xd4
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldr r6, [r5, #0x160]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov16_020f2f20
	cmp r6, #0
	beq _020C9B78
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _020C9B98 ; =gFont12
	str r4, [sp, #0xc]
	ldr r1, [r0]
	mov r0, r5
	mov r2, #0
	mov r3, #2
	bl FUN_ov0_020c9728
_020C9B78:
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020C9B98: .word gFont12
	arm_func_end FUN_ov0_020c9b00

	arm_func_start FUN_ov0_020c9b9c
FUN_ov0_020c9b9c: ; 0x020C9B9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	str r1, [r10, #0x3c]
	cmp r1, #1
	mov r11, #0
	beq _020C9BC4
	cmp r1, #2
	beq _020C9C1C
	b _020C9DB8
_020C9BC4:
	ldr r0, _020C9DC8 ; =0x020D5EEC
	add r1, r10, #0xe8
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r1, _020C9DCC ; =0x020A0640
	ldr r0, _020C9DD0 ; =0x020D5F08
	add r1, r1, #0x400
	ldrsb r2, [r1, #0xec]
	add r1, r10, #0x154
	mov r3, #0x20
	mov r2, r2, lsl #5
	str r11, [sp]
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
	ldr r0, _020C9DD4 ; =0x020D5F24
	add r1, r10, #0x1fc
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, _020C9DD8 ; =0x020D5F3C
	add r1, r10, #0x208
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, _020C9DDC ; =0x020D5F54
	add r1, r10, #0x214
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	b _020C9DB8
_020C9C1C:
	ldr r0, [r10, #0x154]
	cmp r0, #0
	beq _020C9C44
	str r11, [sp]
	ldrh r2, [r0, #0x1e]
	ldr r0, _020C9DE0 ; =0x020D5F6C
	add r1, r10, #0x160
	mov r2, r2, lsl #5
	mov r3, #0x13
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_020C9C44:
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _020C9DE4 ; =gLogicThink
	bl FUN_0207249c
	mov r7, r0
	mov r8, #0
	add r4, r10, #0xe8
	b _020C9DB0
_020C9C64:
	add r0, r10, r8, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020C9DAC
	mov r1, r11
	bl FUN_ov16_020efa9c
	movs r6, r0
	beq _020C9DAC
	ldr r0, [r10, #0x1fc]
	cmp r0, #0
	beq _020C9CD8
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [r10, #0x1fc]
	mov r1, r6
	mov r2, r11
	add r3, sp, #0xc
	bl _ZN7Archive20GetFaceOffsetAndSizeEPvP4UnithPlPm
	cmp r0, #0
	beq _020C9CD8
	add r2, r8, #0xf
	mov r1, #0xc
	mla r1, r2, r1, r4
	mov r0, #1
	str r0, [sp]
	ldr r0, _020C9DE8 ; =0x020D5F88
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_020C9CD8:
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f0bcc
	ldrh r1, [r7, #0x28]
	mov r5, r0
	mov r0, r6
	cmp r1, #0
	ldreqh r1, [r7, #0x26]
	bl FUN_ov16_020f0b3c
	mov r9, r0
	ldr r0, [r10, #0x208]
	cmp r0, #0
	beq _020C9D5C
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r10, #0x208]
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl _ZN7Archive20GetBodyOffsetAndSizeEPvP4UnitiiPlPm
	cmp r0, #0
	beq _020C9D5C
	add r2, r8, #0xb
	mov r1, #0xc
	mla r1, r2, r1, r4
	mov r0, #1
	str r0, [sp]
	ldr r0, _020C9DEC ; =0x020D5FA0
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_020C9D5C:
	ldr r0, [r10, #0x214]
	cmp r0, #0
	beq _020C9DAC
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [r10, #0x214]
	mov r1, r9
	mov r2, r5
	add r3, sp, #0xc
	bl _ZN7Archive24GetBodyPlttOffsetAndSizeEPviiPlPm
	cmp r0, #0
	beq _020C9DAC
	add r2, r8, #0x13
	mov r1, #0xc
	mla r1, r2, r1, r4
	str r11, [sp]
	ldr r0, _020C9DF0 ; =0x020D5FB8
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_020C9DAC:
	add r8, r8, #1
_020C9DB0:
	cmp r8, #4
	blt _020C9C64
_020C9DB8:
	mov r0, #1
	str r0, [r10, #0x38]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9DC8: .word ov0_020D5EEC
_020C9DCC: .word unk_020A0640
_020C9DD0: .word ov0_020D5F08
_020C9DD4: .word ov0_020D5F24
_020C9DD8: .word ov0_020D5F3C
_020C9DDC: .word ov0_020D5F54
_020C9DE0: .word ov0_020D5F6C
_020C9DE4: .word gLogicThink
_020C9DE8: .word ov0_020D5F88
_020C9DEC: .word ov0_020D5FA0
_020C9DF0: .word ov0_020D5FB8
	arm_func_end FUN_ov0_020c9b9c

	arm_func_start FUN_ov0_020c9df4
FUN_ov0_020c9df4: ; 0x020C9DF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0xe8]
	cmp r6, #0
	ldrne r7, _020C9E3C ; =0x020D5000
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0xe8
	mov r4, #0xc
_020C9E18:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl _ZN7Archive11ReadFromSFPEPcP9SFileDataS0_
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020C9E18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C9E3C: .word ov0_020D5000
	arm_func_end FUN_ov0_020c9df4

	arm_func_start FUN_ov0_020c9e40
FUN_ov0_020c9e40: ; 0x020C9E40
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0xe8
	mov r4, #0xc
_020C9E50:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #0x1a
	blt _020C9E50
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020c9e40

	arm_func_start FUN_ov0_020c9e68
FUN_ov0_020c9e68: ; 0x020C9E68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r8, [r10, #0x100]
	mov r5, #0
	cmp r8, #0
	mov r6, #1
	mov r7, r5
	beq _020C9EB0
	mov r4, #2
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r7, r0
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020C9EB0:
	ldr r8, [r10, #0x10c]
	cmp r8, #0
	beq _020C9EE0
	mov r4, #2
	mov r0, r8
	mov r2, r4
	add r1, r7, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r0, r8
	mov r2, r4
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020C9EE0:
	mov r9, #0
	mov r7, r9
	add r4, r10, #0x48
	mov r11, #0xc
_020C9EF0:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020C9F94
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020C9F94
	mla r8, r7, r11, r10
	ldr r0, [r8, #0x16c]
	cmp r0, #0
	beq _020C9F30
	add r1, r9, #1
	add r2, r7, #5
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r9, r0
_020C9F30:
	ldr r0, [r8, #0x1cc]
	cmp r0, #0
	beq _020C9F48
	mov r1, r6
	add r2, r7, #5
	bl _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti
_020C9F48:
	mov r0, #0x14
	mul r1, r7, r0
	ldr r0, [r4, r1]
	add r2, r4, r1
	cmp r0, #0
	ldrne r1, [r2, #4]
	mov r3, r5
	cmpne r1, #0
	movne r3, r6
	cmp r3, #0
	beq _020C9F94
	ldrh r8, [r2, #0xc]
	ldrh r1, [r2, #0xe]
	add r2, r9, #1
	mov r3, r5
	mul r1, r8, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r9, r0
_020C9F94:
	add r7, r7, #1
	cmp r7, #4
	blt _020C9EF0
	ldr r7, [r10, #0x118]
	mov r4, #0
	cmp r7, #0
	mov r5, #1
	beq _020C9FDC
	mov r6, #4
	mov r0, r7
	mov r2, r6
	add r1, r9, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r9, r0
	mov r0, r7
	mov r2, r6
	mov r1, r5
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020C9FDC:
	ldr r6, [r10, #0xf4]
	cmp r6, #0
	beq _020CA008
	mov r0, r6
	mov r2, r5
	add r1, r9, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020CA008:
	mov r7, #0
	mov r6, r7
	mov r8, #0xc
_020CA014:
	add r0, r10, r6, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020CA064
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mlane r0, r6, r8, r10
	ldrne r9, [r0, #0x19c]
	cmpne r9, #0
	beq _020CA064
	mov r0, r9
	add r1, r7, #1
	add r2, r6, #9
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r7, r0
	mov r0, r9
	mov r1, r5
	add r2, r6, #9
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020CA064:
	add r6, r6, #1
	cmp r6, #4
	blt _020CA014
	ldr r5, [r10, #0x13c]
	cmp r5, #0
	beq _020CA0A4
	mov r4, #3
	mov r0, r5
	mov r2, r4
	add r1, r7, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r7, r0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020CA0A4:
	ldr r5, [r10, #0x148]
	cmp r5, #0
	beq _020CA0D8
	mov r4, #2
	mov r0, r5
	mov r2, r4
	add r1, r7, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r7, r0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020CA0D8:
	ldr r5, [r10, #0x124]
	cmp r5, #0
	beq _020CA10C
	mov r4, #4
	mov r0, r5
	mov r2, r4
	add r1, r7, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r7, r0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020CA10C:
	ldr r5, [r10, #0x130]
	cmp r5, #0
	beq _020CA140
	mov r4, #4
	mov r0, r5
	mov r2, r4
	add r1, r7, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r7, r0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_020CA140:
	ldr r0, [r10, #0x98]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r10, #0x9c]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	beq _020CA180
	ldrh r4, [r10, #0xa4]
	ldrh r1, [r10, #0xa6]
	add r2, r7, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r7, r0
_020CA180:
	ldr r0, [r10, #0xac]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r10, #0xb0]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	beq _020CA1C0
	ldrh r4, [r10, #0xb8]
	ldrh r1, [r10, #0xba]
	add r2, r7, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r7, r0
_020CA1C0:
	ldr r0, [r10, #0xc0]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r10, #0xc4]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	beq _020CA200
	ldrh r4, [r10, #0xcc]
	ldrh r1, [r10, #0xce]
	add r2, r7, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r7, r0
_020CA200:
	ldr r0, [r10, #0xd4]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r10, #0xd8]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r4, [r10, #0xe0]
	ldrh r1, [r10, #0xe2]
	add r2, r7, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020c9e68

	arm_func_start FUN_ov0_020ca240
FUN_ov0_020ca240: ; 0x020CA240
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r5, #1
	mov r4, #0x20
	bl G2S_GetBG0CharPtr
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldr r1, [r10, #0x100]
	cmp r1, #0
	beq _020CA290
	mov r0, r6
	mov r2, r4
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r4, r0
_020CA290:
	ldr r1, [r10, #0x10c]
	cmp r1, #0
	beq _020CA2A8
	mov r2, r4
	mov r0, #0
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
_020CA2A8:
	mov r9, #0x20
	bl G2S_GetBG1CharPtr
	mov r8, #0
	mov r1, r0
	mov r0, r8
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r9
	bl DC_FlushRange
	add r4, r10, #0x48
	mov r11, #0xc
_020CA2D8:
	add r0, r10, r8, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020CA370
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020CA370
	mla r0, r8, r11, r10
	ldr r1, [r0, #0x16c]
	cmp r1, #0
	beq _020CA318
	mov r0, r5
	mov r2, r9
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r9, r0
_020CA318:
	mov r0, #0x14
	mul r1, r8, r0
	ldr r0, [r4, r1]
	add r7, r4, r1
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r5
	moveq r0, r6
	cmp r0, #0
	beq _020CA370
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldr r0, [r7, #4]
	mov r1, r9
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
	ldrh r1, [r7, #0xc]
	ldrh r0, [r7, #0xe]
	mul r0, r1, r0
	add r9, r9, r0, lsl #5
_020CA370:
	add r8, r8, #1
	cmp r8, #4
	blt _020CA2D8
	ldr r1, [r10, #0x118]
	mov r8, #2
	cmp r1, #0
	mov r4, #0
	beq _020CA3A0
	mov r2, r9
	mov r0, #1
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r9, r0
_020CA3A0:
	ldr r1, [r10, #0xf4]
	cmp r1, #0
	beq _020CA3B8
	mov r2, r9
	mov r0, #1
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
_020CA3B8:
	mov r6, #0x20
	bl G2S_GetBG2CharPtr
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r6
	bl DC_FlushRange
	mov r7, #0xc
_020CA3E4:
	add r0, r10, r5, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020CA420
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mlane r0, r5, r7, r10
	ldrne r1, [r0, #0x19c]
	cmpne r1, #0
	beq _020CA420
	mov r0, r8
	mov r2, r6
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_020CA420:
	add r5, r5, #1
	cmp r5, #4
	blt _020CA3E4
	ldr r1, [r10, #0x13c]
	cmp r1, #0
	beq _020CA448
	mov r2, r6
	mov r0, #2
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_020CA448:
	ldr r1, [r10, #0x148]
	cmp r1, #0
	beq _020CA464
	mov r2, r6
	mov r0, #2
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_020CA464:
	ldr r1, [r10, #0x124]
	cmp r1, #0
	beq _020CA480
	mov r2, r6
	mov r0, #2
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_020CA480:
	ldr r1, [r10, #0x130]
	cmp r1, #0
	beq _020CA49C
	mov r2, r6
	mov r0, #2
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_020CA49C:
	ldr r0, [r10, #0x98]
	cmp r0, #0
	ldrne r0, [r10, #0x9c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020CA4E8
	ldrh r3, [r10, #0xa4]
	ldrh r2, [r10, #0xa6]
	ldr r0, [r10, #0x9c]
	mov r1, r6
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	ldrh r1, [r10, #0xa4]
	ldrh r0, [r10, #0xa6]
	mul r0, r1, r0
	add r6, r6, r0, lsl #5
_020CA4E8:
	ldr r0, [r10, #0xac]
	cmp r0, #0
	ldrne r0, [r10, #0xb0]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020CA534
	ldrh r3, [r10, #0xb8]
	ldrh r2, [r10, #0xba]
	ldr r0, [r10, #0xb0]
	mov r1, r6
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	ldrh r1, [r10, #0xb8]
	ldrh r0, [r10, #0xba]
	mul r0, r1, r0
	add r6, r6, r0, lsl #5
_020CA534:
	ldr r0, [r10, #0xc0]
	cmp r0, #0
	ldrne r0, [r10, #0xc4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020CA580
	ldrh r3, [r10, #0xcc]
	ldrh r2, [r10, #0xce]
	ldr r0, [r10, #0xc4]
	mov r1, r6
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	ldrh r1, [r10, #0xcc]
	ldrh r0, [r10, #0xce]
	mul r0, r1, r0
	add r6, r6, r0, lsl #5
_020CA580:
	ldr r0, [r10, #0xd4]
	cmp r0, #0
	ldrne r0, [r10, #0xd8]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020CA5BC
	ldrh r3, [r10, #0xe0]
	ldrh r2, [r10, #0xe2]
	ldr r0, [r10, #0xd8]
	mov r1, r6
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
_020CA5BC:
	bl _ZN8Graphics16LoadBGPaletteSubEv
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020ca240

	arm_func_start FUN_ov0_020ca5c4
FUN_ov0_020ca5c4: ; 0x020CA5C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r4, [r0, #0x13c]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	cmp r9, #0x63
	add r8, r4, r0
	mov r0, r2, lsl #0x18
	ldr r4, _020CA690 ; =0x66666667
	movgt r9, #0x63
	add r10, r10, #2
	mov r5, r0, asr #0x18
	mov r7, #1
	mov r6, #0
	mov r11, #2
_020CA610:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	str r7, [sp]
	mov r0, r10, lsl #0x18
	sub r2, r9, r1
	add r1, r8, r2, lsl #3
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r11, [sp, #0x10]
	str r11, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _020CA694 ; =gBgMenuManager
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_020f5da0
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	add r9, r0, r9, asr #2
	sub r10, r10, #2
	cmp r9, #0
	bgt _020CA610
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA690: .word 0x66666667
_020CA694: .word gBgMenuManager
	arm_func_end FUN_ov0_020ca5c4

	arm_func_start FUN_ov0_020ca698
FUN_ov0_020ca698: ; 0x020CA698
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r4, [r0, #0x148]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	ldr r0, _020CA758 ; =0x0000270F
	add r8, r4, r1
	cmp r9, r0
	movhi r9, r0
	mov r0, r2, lsl #0x18
	ldr r4, _020CA75C ; =0xCCCCCCCD
	add r10, r10, #4
	mov r5, r0, asr #0x18
	mov r7, #1
	mov r6, #0
	mov r11, #2
_020CA6E8:
	umull r0, r1, r9, r4
	mov r1, r1, lsr #3
	mov r0, #0xa
	umull r1, r2, r0, r1
	str r7, [sp]
	mov r0, r10, lsl #0x18
	sub r1, r9, r1
	mov r0, r0, asr #0x18
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r11, [sp, #0x14]
	add r1, r8, r1, lsl #2
	str r11, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _020CA760 ; =gBgMenuManager
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_020f5da0
	mov r1, r9
	umull r0, r9, r1, r4
	sub r10, r10, #1
	movs r9, r9, lsr #3
	bne _020CA6E8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA758: .word 0x0000270F
_020CA75C: .word 0xCCCCCCCD
_020CA760: .word gBgMenuManager
	arm_func_end FUN_ov0_020ca698

	arm_func_start FUN_ov0_020ca764
FUN_ov0_020ca764: ; 0x020CA764
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r1
	mov r6, r2
	ldr r5, [sp, #0x48]
	ldr r4, _020CA860 ; =0x000003E7
	ldr r1, [sp, #0x4c]
	cmp r5, r4
	ldr r2, _020CA860 ; =0x000003E7
	movgt r5, r4
	cmp r1, r2
	movgt r1, r2
	mov r2, #0xc
	mla r0, r3, r2, r0
	cmp r5, r1
	ldr r3, [r0, #0xe8]
	movgt r5, r1
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r3, #0xc]
	mov r0, r5, lsl #5
	add r4, r3, r2
	bl _s32_div_f
	movs r8, r0
	bne _020CA7D4
	cmp r5, #0
	movgt r8, #1
_020CA7D4:
	mov r0, r6, lsl #0x18
	mov r9, #0
	mov r5, r0, asr #0x18
	add r4, r4, #0x10
	mov r7, #1
	mov r6, r9
	mov r11, #4
_020CA7F0:
	mov r3, r8
	cmp r8, #0
	ble _020CA844
	str r7, [sp]
	mov r0, r10, lsl #0x18
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	cmp r8, #8
	movgt r3, #8
	str r7, [sp, #0x14]
	ldr r0, _020CA864 ; =gBgMenuManager
	sub r3, r4, r3, lsl #1
	str r11, [sp, #0x18]
	str r3, [sp, #0x1c]
	mov r1, r7
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_020f5da0
_020CA844:
	add r9, r9, #1
	cmp r9, #4
	sub r8, r8, #8
	add r10, r10, #1
	blt _020CA7F0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA860: .word 0x000003E7
_020CA864: .word gBgMenuManager
	arm_func_end FUN_ov0_020ca764

	arm_func_start FUN_ov0_020ca868
FUN_ov0_020ca868: ; 0x020CA868
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r1
	mov r7, r0
	mov r1, r8, lsl #0x1f
	add r0, r8, r8, lsr #31
	mov r3, r1, lsr #0x1b
	mov r1, r0, asr #1
	ldr r12, [r7, #0x10c]
	mov r0, r3, lsl #0x18
	mov r1, r1, lsl #0x1b
	mov r6, r2
	cmp r12, #0
	mov r5, r0, asr #0x18
	mov r4, r1, asr #0x18
	beq _020CA8E8
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	stmib sp, {r3, r5}
	str r4, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r2, #2
	str r2, [sp, #0x18]
	ldr lr, [r12, #0xc]
	ldr r0, _020CAB2C ; =gBgMenuManager
	add r12, r12, lr
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CA8E8:
	add r1, r8, #0xb
	mov r0, #0xc
	mla r0, r1, r0, r7
	ldr r12, [r0, #0xe8]
	cmp r12, #0
	beq _020CA944
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	stmib sp, {r3, r5}
	add r0, r8, #5
	str r4, [sp, #0xc]
	mov r2, #8
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	and r0, r0, #0xff
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _020CAB2C ; =gBgMenuManager
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CA944:
	add r1, r8, #0xf
	mov r0, #0xc
	mla r0, r1, r0, r7
	ldr r12, [r0, #0xe8]
	cmp r12, #0
	beq _020CA99C
	mov r1, #1
	mov r2, #0
	stmia sp, {r1, r2, r5}
	add r0, r8, #9
	str r4, [sp, #0xc]
	mov r3, #8
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	and r0, r0, #0xff
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _020CAB2C ; =gBgMenuManager
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CA99C:
	mov r0, #0x14
	mul r0, r8, r0
	add r1, r7, #0x48
	ldr lr, [r1, r0]
	add r12, r1, r0
	cmp lr, #0
	ldrne r0, [r12, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020CAA1C
	mov r1, #1
	add r0, r5, #9
	mov r0, r0, lsl #0x18
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r8, [r12, #0xc]
	ldr r0, _020CAB2C ; =gBgMenuManager
	mov r2, r1
	and r8, r8, #0xff
	str r8, [sp, #0x10]
	ldrh r8, [r12, #0xe]
	and r8, r8, #0xff
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CAA1C:
	mov r0, r6
	bl FUN_0206cc34
	mov r3, r0
	mov r0, r7
	add r1, r5, #0xb
	add r2, r4, #2
	bl FUN_ov0_020ca5c4
	ldr r2, [r7, #0x118]
	cmp r2, #0
	beq _020CAAA4
	mov r1, #1
	add r0, r5, #9
	mov r0, r0, lsl #0x18
	add r3, r4, #4
	mov r8, r3, lsl #0x18
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r8, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #7
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r8, [r2, #0xc]
	ldr r0, _020CAB2C ; =gBgMenuManager
	add r8, r2, r8
	mov r2, r1
	str r8, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CAAA4:
	mov r0, r6
	bl FUN_0206ccdc
	mov r8, r0
	mov r0, r6
	bl FUN_0206ccec
	str r8, [sp]
	str r0, [sp, #4]
	mov r0, r7
	add r1, r5, #0xb
	add r2, r4, #4
	mov r3, #5
	bl FUN_ov0_020ca764
	mov r0, r6
	bl FUN_0206cc84
	mov r8, r0
	mov r0, r6
	bl FUN_0206cc94
	str r8, [sp]
	str r0, [sp, #4]
	mov r0, r7
	add r1, r5, #0xb
	add r2, r4, #5
	mov r3, #6
	bl FUN_ov0_020ca764
	mov r1, r6
	ldr r0, _020CAB30 ; =gLogicThink
	bl FUN_0204df64
	add r1, r5, #0xa
	add r2, r4, #6
	mov r3, r0
	mov r0, r7
	bl FUN_ov0_020ca698
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CAB2C: .word gBgMenuManager
_020CAB30: .word gLogicThink
	arm_func_end FUN_ov0_020ca868

	arm_func_start FUN_ov0_020cab34
FUN_ov0_020cab34: ; 0x020CAB34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r7, _020CADF4 ; =gBgMenuManager
	mov r6, #1
	mov r5, #0
	mov r4, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f5ff4
	ldr r3, [r4, #0x100]
	cmp r3, #0
	beq _020CABAC
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x18
	str r0, [sp, #0x14]
	mov r2, #2
	str r2, [sp, #0x18]
	ldr r1, [r3, #0xc]
	mov r0, r7
	add r7, r3, r1
	mov r1, r6
	mov r3, r5
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CABAC:
	mov r6, #0
_020CABB0:
	add r0, r4, r6, lsl #1
	ldrh r0, [r0, #0x40]
	cmp r0, #0
	beq _020CABDC
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r2, r0
	beq _020CABDC
	mov r0, r4
	mov r1, r6
	bl FUN_ov0_020ca868
_020CABDC:
	add r6, r6, #1
	cmp r6, #4
	blt _020CABB0
	ldr r5, [r4, #0xf4]
	cmp r5, #0
	beq _020CAC3C
	mov r1, #1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r5, #0xc]
	ldr r0, _020CADF4 ; =gBgMenuManager
	add r5, r5, r2
	mov r2, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CAC3C:
	ldr r5, [r4, #0x98]
	mov r1, #0
	cmp r5, #0
	ldrne r0, [r4, #0x9c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020CACA4
	mov r2, #0
	mov r1, #1
	stmia sp, {r1, r2}
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r6, [r4, #0xa4]
	ldr r0, _020CADF4 ; =gBgMenuManager
	mov r3, r2
	and r6, r6, #0xff
	str r6, [sp, #0x10]
	ldrh r6, [r4, #0xa6]
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CACA4:
	ldr r5, [r4, #0xac]
	mov r1, #0
	cmp r5, #0
	ldrne r0, [r4, #0xb0]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020CAD0C
	mov r2, #0
	mov r1, #1
	stmia sp, {r1, r2}
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r6, [r4, #0xb8]
	ldr r0, _020CADF4 ; =gBgMenuManager
	mov r3, r2
	and r6, r6, #0xff
	str r6, [sp, #0x10]
	ldrh r6, [r4, #0xba]
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CAD0C:
	ldr r5, [r4, #0xc0]
	mov r1, #0
	cmp r5, #0
	ldrne r0, [r4, #0xc4]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020CAD74
	mov r2, #0
	mov r1, #1
	stmia sp, {r1, r2}
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldrh r6, [r4, #0xcc]
	ldr r0, _020CADF4 ; =gBgMenuManager
	mov r3, r2
	and r6, r6, #0xff
	str r6, [sp, #0x10]
	ldrh r6, [r4, #0xce]
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020CAD74:
	ldr r5, [r4, #0xd4]
	mov r1, #0
	cmp r5, #0
	ldrne r0, [r4, #0xd8]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r3, [r4, #0xe0]
	mov r1, #1
	mov r2, #0
	rsb r0, r3, #0x20
	add r0, r0, r0, lsr #31
	mov r0, r0, lsl #0x17
	stmia sp, {r1, r2}
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	and r0, r3, #0xff
	str r0, [sp, #0x10]
	ldrh r4, [r4, #0xe2]
	ldr r0, _020CADF4 ; =gBgMenuManager
	mov r3, r2
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CADF4: .word gBgMenuManager
	arm_func_end FUN_ov0_020cab34

	arm_func_start FUN_ov0_020cadf8
FUN_ov0_020cadf8: ; 0x020CADF8
	stmfd sp!, {r4, lr}
	ldr r1, _020CAE2C ; =0x0209A454
	ldr r2, [r1, #0x84]
	cmp r2, #0
	cmpne r2, #0x8d
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r4, #1
	ldr r0, [r0, #4]
	mov r1, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CAE2C: .word unk_0209A454
	arm_func_end FUN_ov0_020cadf8

	arm_func_start FUN_ov0_020cae30
FUN_ov0_020cae30: ; 0x020CAE30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov0_020cadf8
	cmp r0, #0
	movne r0, #6
	strne r0, [r7, #0x38]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #4]
	mov r6, #1
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f4894
	ldr r5, _020CAEF8 ; =gLogicThink
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_020724c8
	str r0, [r7, #0x30]
	mov r0, r5
	mov r1, r4
	bl FUN_0204c420
	str r0, [r7, #0x34]
	ldr r0, _020CAEFC ; =0x0209A454
	strb r4, [r0, #0x30]
	strb r4, [r0, #0x31]
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	mov r3, r4
	bl FUN_0204d7fc
	str r4, [r7, #0x38]
	ldr r0, _020CAF00 ; =gBgMenuManager
	mov r1, r6
	bl FUN_ov16_020f5a58
	mov r1, r4
	add r0, r7, #0xe8
	mov r2, #0x138
	bl MI_CpuFill8
	mov r0, r7
	bl FUN_ov0_020c9604
	mov r0, r7
	bl FUN_ov0_020c9794
	mov r0, r7
	mov r1, r6
	bl FUN_ov0_020c9b9c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CAEF8: .word gLogicThink
_020CAEFC: .word unk_0209A454
_020CAF00: .word gBgMenuManager
	arm_func_end FUN_ov0_020cae30

	arm_func_start FUN_ov0_020caf04
FUN_ov0_020caf04: ; 0x020CAF04
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_020CAF1C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _020CAF34 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _020CAFB4 ; case 3
	b _020CAFDC ; case 4
	b _020CAFFC ; case 5
_020CAF34:
	add r0, r4, #0xe8
	mov r1, #0x1a
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	beq _020CAF60
	cmp r0, #2
	beq _020CAF78
	ldmfd sp!, {r4, pc}
_020CAF60:
	mov r0, r4
	bl FUN_ov0_020c9df4
	mov r0, r4
	mov r1, #2
	bl FUN_ov0_020c9b9c
	ldmfd sp!, {r4, pc}
_020CAF78:
	mov r0, r4
	bl FUN_ov0_020c96c8
	add r0, r4, #0x1fc
	bl _ZN7Archive10DeallocateEP9SFileData
	add r0, r4, #0x208
	bl _ZN7Archive10DeallocateEP9SFileData
	add r0, r4, #0x214
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r0, r4
	bl FUN_ov0_020c9b00
	mov r0, r4
	bl FUN_ov0_020c9e68
	mov r0, #2
	str r0, [r4, #0x38]
	ldmfd sp!, {r4, pc}
_020CAFB4:
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager17getLoadedSceneSubEv
	cmp r0, #0x83
	bne _020CAFCC
	mov r0, #4
	bl _ZN8Graphics9FadeInSubEl
_020CAFCC:
	mov r1, #4
	mov r0, r4
	str r1, [r4, #0x38]
	bl FUN_ov0_020cab34
_020CAFDC:
	mov r0, r4
	bl FUN_ov0_020cadf8
	cmp r0, #0
	beq _020CAFFC
	mov r0, #4
	bl _ZN8Graphics12FadeSubBlackEl
	mov r0, #5
	str r0, [r4, #0x38]
_020CAFFC:
	ldr r0, _020CB00C ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_020CB00C: .word gBgMenuManager
	arm_func_end FUN_ov0_020caf04

	arm_func_start FUN_ov0_020cb010
FUN_ov0_020cb010: ; 0x020CB010
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x38]
	cmp r1, #2
	beq _020CB034
	cmp r1, #4
	cmpne r1, #5
	beq _020CB044
	ldmfd sp!, {r4, pc}
_020CB034:
	bl FUN_ov0_020ca240
	mov r0, #3
	str r0, [r4, #0x38]
	ldmfd sp!, {r4, pc}
_020CB044:
	ldr r0, _020CB054 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020CB054: .word gBgMenuManager
	arm_func_end FUN_ov0_020cb010

	arm_func_start FUN_ov0_020cb058
FUN_ov0_020cb058: ; 0x020CB058
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x38]
	cmp r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0xe8
	mov r1, #0x1a
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r5
	bl FUN_ov0_020c9e40
	add r0, r5, #0x48
	mov r1, #8
	bl FUN_ov16_020f2fe4
	mov r4, #1
	ldr r0, _020CB0B8 ; =gBgMenuManager
	mov r1, r4
	bl FUN_ov16_020f5af0
	bl FUN_ov16_020f51a8
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_020CB0B8: .word gBgMenuManager
	arm_func_end FUN_ov0_020cb058

	arm_func_start FUN_ov0_020cb0bc
FUN_ov0_020cb0bc: ; 0x020CB0BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl FUN_0206c110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020cb0bc

	arm_func_start FUN_ov0_020cb0dc
FUN_ov0_020cb0dc: ; 0x020CB0DC
	stmfd sp!, {r0, r1, r2, r3}
	ldr r3, [sp, #8]
	ldr r1, [r0, #4]
	ldr r2, [sp, #0xc]
	cmp r3, r1
	movne r1, #1
	strneb r1, [r0, #0xc]
	ldr r1, [sp, #4]
	stmia r0, {r1, r3}
	str r2, [r0, #8]
	ldrb r0, [r0, #0xc]
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov0_020cb0dc

	arm_func_start FUN_ov0_020cb110
FUN_ov0_020cb110: ; 0x020CB110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02054ad4
	cmp r0, #0
	bne _020CB150
	mov r0, r5
	mov r1, r4
	bl FUN_020549c8
	cmp r0, #0
	bne _020CB150
	mov r0, r5
	mov r1, r4
	bl FUN_020549f8
	cmp r0, #0
	beq _020CB194
_020CB150:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x8fc]
	tst r0, #1
	beq _020CB194
	ldr r1, [r5, #0xc]
	mov r0, #0x1800
	umull r3, r2, r1, r0
	mov r1, r1, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r0, r3, lsr #0xc
	ldr r1, _020CB19C ; =0x00000555
	orr r0, r0, r2, lsl #20
	cmp r0, r1
	subge r0, r1, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CB194:
	ldr r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020CB19C: .word 0x00000555
	arm_func_end FUN_ov0_020cb110

	arm_func_start FUN_ov0_020cb1a0
FUN_ov0_020cb1a0: ; 0x020CB1A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, [r1, #0xa0]
	mov r5, r2
	add r4, r3, r5
	bl FUN_ov0_020cb110
	cmp r4, #0
	movlt r4, #0
	cmp r5, #0
	ble _020CB1CC
	cmp r4, r0
	movge r4, r0
_020CB1CC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020cb1a0

	arm_func_start FUN_ov0_020cb1d4
FUN_ov0_020cb1d4: ; 0x020CB1D4
	stmfd sp!, {r4, lr}
	ldr lr, [sp, #0xc]
	ldr r4, [sp, #8]
	cmp r3, lr
	movgt r0, r3
	movgt r3, lr
	ldr r12, [sp, #0x10]
	movgt lr, r0
	cmp r4, r12
	movgt r0, r4
	movgt r4, r12
	movgt r12, r0
	cmp r1, r3
	cmpge r2, r4
	blt _020CB220
	cmp r1, lr
	cmple r2, r12
	movle r0, #1
	ldmlefd sp!, {r4, pc}
_020CB220:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020cb1d4

	arm_func_start FUN_ov0_020cb228
FUN_ov0_020cb228: ; 0x020CB228
	stmfd sp!, {r4, lr}
	mov r0, r1, asr #4
	mov r4, r0, lsl #1
	add r0, r4, #1
	mov r1, r0, lsl #1
	ldr r12, _020CB284 ; =FX_SinCosTable_
	mov r0, r4, lsl #1
	ldrsh r1, [r12, r1]
	ldrsh r0, [r12, r0]
	mov r12, #0
	smull r4, lr, r1, r2
	adds r4, r4, #0x800
	smull r2, r1, r0, r2
	adc r0, lr, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r0, lsl #20
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	stmia r3, {r4, r12}
	orr r1, r1, r0, lsl #20
	str r1, [r3, #8]
	ldmfd sp!, {r4, pc}
_020CB284: .word FX_SinCosTable_
	arm_func_end FUN_ov0_020cb228

	arm_func_start FUN_ov0_020cb288
FUN_ov0_020cb288: ; 0x020CB288
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r0, r2
	add r2, sp, #0
	mov r5, r3
	ldr r4, [sp, #0x18]
	bl VEC_Subtract
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl FX_Atan2Idx
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r2, _020CB310 ; =FX_SinCosTable_
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r0]
	mov r0, r3, lsl #1
	ldrsh r0, [r2, r0]
	smull r2, r3, r1, r5
	adds r12, r2, #0x800
	smull r2, r1, r0, r5
	adc r0, r3, #0
	mov r3, r12, lsr #0xc
	orr r3, r3, r0, lsl #20
	adds r2, r2, #0x800
	str r3, [r4]
	mov r3, #0
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	str r3, [r4, #4]
	orr r1, r1, r0, lsl #20
	str r1, [r4, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020CB310: .word FX_SinCosTable_
	arm_func_end FUN_ov0_020cb288

	arm_func_start FUN_ov0_020cb314
FUN_ov0_020cb314: ; 0x020CB314
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldrb r1, [r4, #0x69]
	cmp r1, #0
	addeq r1, r0, #0x1000
	ldreqb r1, [r1, #0x42c]
	cmpeq r1, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0x1000
	ldrh r1, [r4, #0x6a]
	ldr r0, [r0, #0x424]
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov16_020efd3c
	mov r1, #0
	strb r0, [r4, #0x64]
	strb r1, [r4, #0x69]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020cb314

	arm_func_start FUN_ov0_020cb360
FUN_ov0_020cb360: ; 0x020CB360
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r10, r2
	ldr r2, [sp, #0x3c]
	add r7, sp, #8
	mov r6, #0
	mov r5, r0
	mov r4, r1
	mov r9, r3
	str r6, [r7]
	str r6, [r7, #4]
	str r6, [r7, #8]
	cmp r2, #0
	ldr r8, [sp, #0x38]
	beq _020CB3A8
	mov r0, r10
	mov r1, r9
	bl FUN_02053554
_020CB3A8:
	ldrb r7, [sp, #0x40]
	add r6, sp, #8
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r9
	stmia sp, {r6, r7}
	bl FUN_02054b04
	mov r7, r0
	tst r7, #1
	bne _020CB418
	mov r0, r5
	mov r1, #0
	bl FUN_020552dc
	cmp r4, r0
	moveq r0, #1
	streqb r0, [r5, #0x24]
	cmp r8, #0
	beq _020CB40C
	ldr r0, [sp, #8]
	str r0, [r8]
	ldr r0, [sp, #0xc]
	str r0, [r8, #4]
	ldr r0, [sp, #0x10]
	str r0, [r8, #8]
_020CB40C:
	add sp, sp, #0x14
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CB418:
	ldr r1, [sp, #8]
	mov r0, r5
	str r1, [r9]
	ldr r2, [sp, #0xc]
	mov r1, r4
	str r2, [r9, #4]
	ldr r3, [sp, #0x10]
	mov r2, r10
	str r3, [r9, #8]
	mov r3, r9
	str r6, [sp]
	bl FUN_ov0_020cb4d8
	mov r6, r0
	tst r6, #1
	bne _020CB4AC
	ldrb r0, [sp, #0x40]
	cmp r0, #0
	beq _020CB480
	mov r0, r5
	add r2, r5, #0x1000
	mov r7, #1
	mov r1, #0
	strb r7, [r2, #0x908]
	bl FUN_020552dc
	cmp r4, r0
	streqb r7, [r5, #0x24]
_020CB480:
	cmp r8, #0
	beq _020CB4A0
	ldr r0, [sp, #8]
	str r0, [r8]
	ldr r0, [sp, #0xc]
	str r0, [r8, #4]
	ldr r0, [sp, #0x10]
	str r0, [r8, #8]
_020CB4A0:
	add sp, sp, #0x14
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CB4AC:
	cmp r8, #0
	beq _020CB4CC
	ldr r0, [r9]
	str r0, [r8]
	ldr r0, [r9, #4]
	str r0, [r8, #4]
	ldr r0, [r9, #8]
	str r0, [r8, #8]
_020CB4CC:
	orr r0, r6, r7
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov0_020cb360

	arm_func_start FUN_ov0_020cb4d8
FUN_ov0_020cb4d8: ; 0x020CB4D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r5, #0
	mov r9, r1
	mov r10, r0
	mov r1, r5
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x30]
	bl FUN_02054938
	mov r4, r0
	mov r0, r10
	mov r1, r9
	bl FUN_02054a70
	cmp r0, #0
	beq _020CB5DC
	add r11, sp, #0
_020CB51C:
	mov r0, r10
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	beq _020CB5CC
	mov r0, r4
	bl FUN_020543f4
	cmp r0, #0
	cmpne r9, r4
	beq _020CB5CC
	mov r0, r10
	mov r1, r4
	bl FUN_02054a70
	cmp r0, #0
	beq _020CB5CC
	mov r0, r7
	mov r2, r11
	add r1, r4, #0x84
	bl VEC_Subtract
	mov r0, r7
	add r1, r4, #0x84
	bl FUN_020535bc
	ldr r2, [r9, #0x9c]
	ldr r1, [r4, #0x9c]
	add r1, r2, r1
	cmp r0, r1
	bge _020CB5CC
	mov r0, r8
	add r1, r4, #0x84
	bl FUN_020535bc
	ldr r2, [r9, #0x9c]
	ldr r1, [r4, #0x9c]
	add r1, r2, r1
	cmp r0, r1
	blt _020CB5CC
	ldr r1, [r8]
	add sp, sp, #0xc
	str r1, [r6]
	ldr r1, [r8, #4]
	mov r0, #2
	str r1, [r6, #4]
	ldr r1, [r8, #8]
	str r1, [r6, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB5CC:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _020CB51C
_020CB5DC:
	ldr r1, [r7]
	mov r0, #1
	str r1, [r6]
	ldr r1, [r7, #4]
	str r1, [r6, #4]
	ldr r1, [r7, #8]
	str r1, [r6, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020cb4d8

	arm_func_start FUN_ov0_020cb600
FUN_ov0_020cb600: ; 0x020CB600
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02054edc
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x2c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #1
	beq _020CB638
	cmp r0, #2
	beq _020CB648
	ldmfd sp!, {r3, r4, r5, pc}
_020CB638:
	mov r0, r5
	mov r1, r4
	bl FUN_ov0_020cb720
	ldmfd sp!, {r3, r4, r5, pc}
_020CB648:
	mov r0, r5
	mov r1, r4
	bl FUN_ov0_020cb910
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020cb600

	arm_func_start FUN_ov0_020cb658
FUN_ov0_020cb658: ; 0x020CB658
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrb r7, [r5, #0x2d]
	mov r6, r0
	mov r4, #0
	cmp r7, #6
	addls pc, pc, r7, lsl #2
	b _020CB6F8
_020CB678: ; jump table
	b _020CB6F8 ; case 0
	b _020CB6F0 ; case 1
	b _020CB6E0 ; case 2
	b _020CB6E8 ; case 3
	b _020CB694 ; case 4
	b _020CB694 ; case 5
	b _020CB694 ; case 6
_020CB694:
	ldr r0, _020CB718 ; =0x020AF8AC
	bl FUN_02048c50
	sub r1, r7, #4
	mov r2, #1
	tst r0, r2, lsl r1
	beq _020CB6CC
	ldrb r1, [r5, #0x65]
	ldr r0, _020CB71C ; =0x0000C350
	cmp r1, r0
	beq _020CB6FC
	mov r0, r6
	mov r1, r5
	bl FUN_02054e54
	b _020CB6FC
_020CB6CC:
	mov r0, r6
	mov r1, r5
	bl FUN_ov0_020cbc84
_020CB6D8:
	mov r4, r0
	b _020CB6FC
_020CB6E0:
	bl FUN_ov0_020cb9c0
	b _020CB6D8
_020CB6E8:
	bl FUN_ov0_020cbe1c
	b _020CB6D8
_020CB6F0:
	bl FUN_ov0_020cbfd8
	b _020CB6D8
_020CB6F8:
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CB6FC:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl FUN_02054ef4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CB718: .word unk_020AF8AC
_020CB71C: .word 0x0000C350
	arm_func_end FUN_ov0_020cb658

	arm_func_start FUN_ov0_020cb720
FUN_ov0_020cb720: ; 0x020CB720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r1
	mov r7, r0
	add r0, r6, #0x84
	add r1, r6, #0x40
	bl FUN_020535bc
	mov r0, #0xa
	bl FUN_ov16_020ef928
	ldr r1, [r6, #0x50]
	add r2, r0, r0, lsl #3
	str r1, [sp]
	ldr r0, [r6, #0x54]
	add r5, r2, #0x5a
	str r0, [sp, #4]
	ldr r1, [r6, #0x58]
	mov r0, r7
	str r1, [sp, #8]
	ldr r1, [r6, #0x84]
	ldr r2, [r6, #0x8c]
	ldr r3, [r6, #0x4c]
	bl FUN_ov0_020cb1d4
	cmp r0, #0
	bne _020CB7BC
	ldr r2, [r6, #0x4c]
	ldr r0, [r6, #0x54]
	mov r1, #0
	add r0, r2, r0
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x58]
	add r0, r1, r0
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	str r0, [sp, #0x14]
	b _020CB8A8
_020CB7BC:
	mov r4, #2
	mov r0, r4
	bl FUN_ov16_020ef928
	adds r0, r0, #1
	mov r0, r4
	beq _020CB7F4
	bl FUN_ov16_020ef928
	add r0, r0, #1
	mov r0, r0, lsl #0xc
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020CB80C
_020CB7F4:
	bl FUN_ov16_020ef928
	add r0, r0, #1
	mov r0, r0, lsl #0xc
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_020CB80C:
	bl _ffix
	mov r4, r0
	mov r0, #8
	bl FUN_ov16_020ef928
	ldr r1, _020CB908 ; =0x00000AAA
	mov r2, r4, asr #0x1f
	umull r12, r3, r4, r1
	mla r3, r2, r1, r3
	adds r2, r12, #0x800
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	add r4, sp, #0xc
	mov r0, r0, lsl #0x1d
	orr r2, r2, r1, lsl #20
	mov r1, r0, lsr #0x10
	mov r0, r7
	mov r3, r4
	bl FUN_ov0_020cb228
	mov r0, r4
	mov r2, r4
	add r1, r6, #0x84
	bl VEC_Add
	ldr r1, [r6, #0x50]
	mov r0, r7
	str r1, [sp]
	ldr r1, [r6, #0x54]
	str r1, [sp, #4]
	ldr r1, [r6, #0x58]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	ldr r3, [r6, #0x4c]
	bl FUN_ov0_020cb1d4
	cmp r0, #0
	moveq r0, #1
	addeq sp, sp, #0x18
	streqb r0, [r6, #0x2d]
	streqh r5, [r6, #0x2e]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020CB8A8:
	mov r0, r6
	mov r1, #0x55
	mov r2, #1
	bl FUN_0205436c
	ldr r0, [sp, #0xc]
	add r1, sp, #0xc
	str r0, [r6, #0x30]
	ldr r2, [sp, #0x10]
	add r0, r6, #0x84
	str r2, [r6, #0x34]
	ldr r3, [sp, #0x14]
	mov r2, #2
	str r3, [r6, #0x38]
	strb r2, [r6, #0x2d]
	strh r5, [r6, #0x2e]
	bl FUN_020535bc
	sub r1, r0, #0x11
	ldr r2, _020CB90C ; =0x78787879
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #3
	str r3, [r6, #0x3c]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CB908: .word 0x00000AAA
_020CB90C: .word 0x78787879
	arm_func_end FUN_ov0_020cb720

	arm_func_start FUN_ov0_020cb910
FUN_ov0_020cb910: ; 0x020CB910
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r5, r1
	mov r1, r4
	mov r6, r0
	bl FUN_020552dc
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x5c]
	add r0, r6, #0x28
	bl FUN_02054854
	cmp r0, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r3, r4, r5, r6, pc}
	sub r2, r0, #1
	mov r1, #0xc
	mla r1, r2, r1, r6
	mov r2, #0x55
	add r1, r1, #0x1000
	ldr r3, [r1, #0x8c8]
	mul r2, r0, r2
	str r3, [sp]
	str r4, [sp, #4]
	ldr r0, [r1, #0x8cc]
	add r1, sp, #0
	sub r2, r0, r2
	add r0, r5, #0x84
	str r2, [sp, #8]
	bl FUN_020535bc
	sub r0, r0, #0x11
	cmp r0, #0x800
	movge r0, #3
	strgeb r0, [r5, #0x2d]
	strgeh r4, [r5, #0x2e]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov0_020cb910

	arm_func_start FUN_ov0_020cb9a8
FUN_ov0_020cb9a8: ; 0x020CB9A8
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x908]
	bx lr
	arm_func_end FUN_ov0_020cb9a8

	arm_func_start FUN_ov0_020cb9b4
FUN_ov0_020cb9b4: ; 0x020CB9B4
	add r0, r0, #0x1000
	strb r1, [r0, #0x908]
	bx lr
	arm_func_end FUN_ov0_020cb9b4

	arm_func_start FUN_ov0_020cb9c0
FUN_ov0_020cb9c0: ; 0x020CB9C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	movs r9, r1
	mov r10, r0
	mov r11, #1
	mov r7, #0
	addeq sp, sp, #0x28
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x30]
	add r1, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r2, [r9, #0x34]
	add r0, r9, #0x84
	str r2, [sp, #0x20]
	ldr r2, [r9, #0x38]
	str r2, [sp, #0x24]
	bl FUN_020535bc
	sub r4, r0, #0x11
	add r1, r10, #0x1000
	ldr r2, [r9, #0xa0]
	ldr r0, [r1, #0x8f8]
	cmp r4, #0x11
	mul r3, r2, r0
	addle sp, sp, #0x28
	movle r0, r11
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, r3
	movlt r3, r4
	add r4, sp, #0x1c
	mov r0, r10
	mov r2, r4
	add r1, r9, #0x84
	str r4, [sp]
	bl FUN_ov0_020cb288
	mov r0, r4
	mov r2, r4
	add r1, r9, #0x84
	bl VEC_Add
	mov r4, #0
	add r2, r10, #0x1000
	mov r0, r10
	mov r1, r4
	strb r4, [r2, #0x908]
	bl FUN_020552dc
	cmp r9, r0
	streqb r4, [r10, #0x24]
	ldrh r1, [r9, #0x6a]
	add r0, r10, #0x1000
	strh r1, [sp, #0xc]
	ldr r0, [r0, #0x8fc]
	tst r0, #1
	beq _020CBB88
	ldr r1, [r10, #0x28]
	ldrh r2, [r9, #0x20]
	mov r0, r1, asr #7
	add r0, r1, r0, lsr #24
	cmp r2, r0, asr #8
	bne _020CBB88
	ldr r8, [r10, #0x14]
	add r0, r8, r8, lsr #31
	mov r0, r0, asr #1
	str r0, [r10, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r3, [r9, #0x84]
	ldr r1, [sp, #0x20]
	ldr r0, [r9, #0x88]
	sub r3, r2, r3
	add r4, r3, r3, lsr #31
	sub r0, r1, r0
	add r5, r0, r0, lsr #31
	ldr r0, [sp, #0x24]
	ldr r3, [r9, #0x8c]
	sub r2, r2, r4, asr #1
	sub r3, r0, r3
	add r6, r3, r3, lsr #31
	sub r1, r1, r5, asr #1
	sub r0, r0, r6, asr #1
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, sp, #0x10
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r9
	add r3, sp, #0x1c
	str r11, [sp, #8]
	add r2, r9, #0x84
	bl FUN_ov0_020cb360
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r3, r1, r4, asr #1
	ldr r1, [sp, #0x24]
	add r2, r2, r5, asr #1
	add r1, r1, r6, asr #1
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	tst r0, #1
	beq _020CBB80
	add r0, sp, #0x10
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r9
	add r3, sp, #0x1c
	add r2, r9, #0x84
	str r11, [sp, #8]
	bl FUN_ov0_020cb360
_020CBB80:
	str r8, [r10, #0x14]
	b _020CBBB0
_020CBB88:
	add r1, sp, #0x10
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r3, sp, #0x1c
	mov r0, r10
	mov r1, r9
	add r2, r9, #0x84
	str r11, [sp, #8]
	bl FUN_ov0_020cb360
_020CBBB0:
	tst r0, #1
	moveq r7, #1
	moveq r4, #0
	beq _020CBBD0
	add r1, sp, #0x10
	add r0, r9, #0x84
	bl FUN_020535bc
	mov r4, r0
_020CBBD0:
	ldr r2, [r9, #0x84]
	ldr r1, [r9, #0x88]
	ldr r0, [r9, #0x8c]
	str r2, [r9, #0x78]
	str r1, [r9, #0x7c]
	str r0, [r9, #0x80]
	ldr r1, [sp, #0x10]
	mov r0, r9
	str r1, [r9, #0x84]
	ldr r1, [sp, #0x14]
	str r1, [r9, #0x88]
	ldr r1, [sp, #0x18]
	str r1, [r9, #0x8c]
	ldrh r1, [sp, #0xc]
	bl FUN_02054398
	mov r0, r10
	mov r1, r9
	bl FUN_02054ad4
	cmp r0, #0
	beq _020CBC40
	mov r0, #0
	str r0, [sp]
	ldrh r3, [r9, #0x6a]
	add r0, r10, #0x430
	ldr r1, [r9, #0x84]
	ldr r2, [r9, #0x8c]
	add r0, r0, #0x1000
	bl FUN_0205449c
_020CBC40:
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_02054dd8
	ldrb r0, [r9, #0x2c]
	cmp r0, #1
	bne _020CBC78
	ldr r1, [r9, #0x3c]
	sub r0, r1, #1
	cmp r1, #0
	str r0, [r9, #0x3c]
	addlt sp, sp, #0x28
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CBC78:
	mov r0, r7
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020cb9c0

	arm_func_start FUN_ov0_020cbc84
FUN_ov0_020cbc84: ; 0x020CBC84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	movs r6, r1
	mov r7, r0
	addeq sp, sp, #0x28
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x30
	add r3, sp, #0x1c
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r1, r3
	add r0, r6, #0x84
	bl FUN_020535bc
	sub r4, r0, #0x11
	add r1, r7, #0x1000
	cmp r4, #0x11
	ldr r2, [r6, #0xa0]
	ldr r0, [r1, #0x8f8]
	addle sp, sp, #0x28
	mul r3, r2, r0
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, r3
	movlt r3, r4
	add r4, sp, #0x1c
	mov r0, r7
	mov r2, r4
	add r1, r6, #0x84
	str r4, [sp]
	bl FUN_ov0_020cb288
	mov r0, r4
	mov r2, r4
	add r1, r6, #0x84
	bl VEC_Add
	mov r0, r7
	add r2, r7, #0x1000
	mov r1, #0
	strb r1, [r2, #0x908]
	bl FUN_020552dc
	cmp r6, r0
	moveq r0, #1
	streqb r0, [r7, #0x24]
	ldrh r0, [r6, #0x6a]
	add r5, sp, #0x10
	add r2, sp, #0xc
	strh r0, [sp, #0xc]
	str r5, [sp]
	str r2, [sp, #4]
	mov r4, #1
	add r3, sp, #0x1c
	mov r0, r7
	mov r1, r6
	add r2, r6, #0x84
	str r4, [sp, #8]
	bl FUN_ov0_020cb360
	ands r4, r0, #1
	moveq r5, #0
	beq _020CBD80
	mov r1, r5
	add r0, r6, #0x84
	bl FUN_020535bc
	mov r5, r0
_020CBD80:
	ldr r2, [r6, #0x84]
	ldr r1, [r6, #0x88]
	ldr r0, [r6, #0x8c]
	str r2, [r6, #0x78]
	str r1, [r6, #0x7c]
	str r0, [r6, #0x80]
	ldr r1, [sp, #0x10]
	mov r0, r6
	str r1, [r6, #0x84]
	ldr r1, [sp, #0x14]
	str r1, [r6, #0x88]
	ldr r1, [sp, #0x18]
	str r1, [r6, #0x8c]
	ldrh r1, [sp, #0xc]
	bl FUN_02054398
	mov r0, r7
	mov r1, r6
	bl FUN_02054ad4
	cmp r0, #0
	beq _020CBDF0
	mov r0, #0
	str r0, [sp]
	ldrh r3, [r6, #0x6a]
	add r0, r7, #0x430
	ldr r1, [r6, #0x84]
	ldr r2, [r6, #0x8c]
	add r0, r0, #0x1000
	bl FUN_0205449c
_020CBDF0:
	cmp r4, #0
	mov r0, r7
	mov r1, r6
	bne _020CBE08
	bl FUN_02054e54
	b _020CBE10
_020CBE08:
	mov r2, r5
	bl FUN_02054dd8
_020CBE10:
	mov r0, #0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020cbc84

	arm_func_start FUN_ov0_020cbe1c
FUN_ov0_020cbe1c: ; 0x020CBE1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r6, #0
	mov r7, r1
	mov r1, r6
	mov r8, r0
	bl FUN_020552dc
	cmp r7, #0
	addeq sp, sp, #0x28
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r7, #0x5c]
	add r0, r8, #0x28
	bl FUN_02054854
	cmp r0, #0
	addle sp, sp, #0x28
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	sub r2, r0, #1
	mov r1, #0xc
	mla r1, r2, r1, r8
	mov r2, #0x55
	add r1, r1, #0x1000
	ldr r3, [r1, #0x8c8]
	mul r2, r0, r2
	str r3, [sp, #0x1c]
	str r6, [sp, #0x20]
	ldr r0, [r1, #0x8cc]
	add r1, sp, #0x1c
	sub r2, r0, r2
	add r0, r7, #0x84
	str r2, [sp, #0x24]
	bl FUN_020535bc
	ldr r1, [sp, #0x1c]
	sub r4, r0, #0x11
	cmp r1, #0
	ldreq r0, [sp, #0x24]
	cmpeq r0, #0
	beq _020CBEC0
	cmp r4, #0x11
	bge _020CBECC
_020CBEC0:
	add sp, sp, #0x28
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CBECC:
	mov r0, r8
	mov r1, r7
	bl FUN_ov0_020cb110
	add r1, r8, #0x1000
	mov r5, r0
	ldr r1, [r1, #0x8f8]
	mov r0, r8
	mul r3, r5, r1
	cmp r3, r4
	movgt r3, r4
	add r4, sp, #0x1c
	mov r2, r4
	add r1, r7, #0x84
	str r4, [sp]
	bl FUN_ov0_020cb288
	mov r0, r4
	mov r2, r4
	add r1, r7, #0x84
	bl VEC_Add
	ldrh r0, [r7, #0x6a]
	mov r3, r4
	add r9, sp, #0x10
	strh r0, [sp, #0xc]
	str r9, [sp]
	add r0, sp, #0xc
	mov r4, #0
	stmib sp, {r0, r4}
	mov r0, r8
	mov r1, r7
	add r2, r7, #0x84
	bl FUN_ov0_020cb360
	tst r0, #1
	moveq r6, #1
	beq _020CBF64
	mov r1, r9
	add r0, r7, #0x84
	bl FUN_020535bc
	mov r4, r0
_020CBF64:
	ldr r2, [r7, #0x84]
	ldr r1, [r7, #0x88]
	ldr r0, [r7, #0x8c]
	str r2, [r7, #0x78]
	str r1, [r7, #0x7c]
	str r0, [r7, #0x80]
	ldr r1, [sp, #0x10]
	mov r0, r7
	str r1, [r7, #0x84]
	ldr r1, [sp, #0x14]
	str r1, [r7, #0x88]
	ldr r1, [sp, #0x18]
	str r1, [r7, #0x8c]
	ldrh r1, [sp, #0xc]
	bl FUN_02054398
	mov r0, r7
	mov r1, r5
	mov r2, #0
	bl FUN_0205436c
	mov r0, r7
	mov r1, #3
	bl FUN_02054390
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_02054dd8
	mov r0, r6
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov0_020cbe1c

	arm_func_start FUN_ov0_020cbfd8
FUN_ov0_020cbfd8: ; 0x020CBFD8
	cmp r1, #0
	moveq r0, #1
	bxeq lr
	add r0, r0, #0x1000
	ldrsh r2, [r1, #0x2e]
	ldr r0, [r0, #0x8f8]
	cmp r2, r0
	movle r0, #0
	strleh r0, [r1, #0x2e]
	strleb r0, [r1, #0x2d]
	movle r0, #1
	movgt r0, r0, lsl #0x10
	subgt r0, r2, r0, asr #16
	strgth r0, [r1, #0x2e]
	movgt r0, #0
	bx lr
	arm_func_end FUN_ov0_020cbfd8

	arm_func_start FUN_ov0_020cc018
FUN_ov0_020cc018: ; 0x020CC018
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r12, _020CC0B4 ; =g2DAdventureLogic
	mov r4, r0
	ldr r0, [r12]
	mov r6, #0
	mov r9, r1
	mov r1, r6
	mov r8, r2
	mov r7, r3
	bl FUN_020552dc
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_020542a8
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl FUN_020548c4
	movs r5, r0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r9, [r5, #0x30]
	str r8, [r5, #0x34]
	str r7, [r5, #0x38]
	add r1, r4, #0x1000
	ldr r3, [r1, #0x8fc]
	mov r2, #2
	orr r3, r3, #1
	str r3, [r1, #0x8fc]
	strb r2, [r5, #0x2d]
	mov r1, #3
	bl FUN_02054390
	ldr r2, [r4, #4]
	mov r0, r4
	mov r1, r5
	bl FUN_ov0_020cb1a0
	str r0, [r5, #0xa0]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CC0B4: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020cc018

	arm_func_start FUN_ov0_020cc0b8
FUN_ov0_020cc0b8: ; 0x020CC0B8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020CC118 ; =g2DAdventureLogic
	mov r6, r0
	mov r5, #0
	ldr r0, [r1]
	mov r1, r5
	bl FUN_020552dc
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_020542a8
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl FUN_020548c4
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov0_020cb110
	str r0, [r4, #0xa0]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020CC118: .word g2DAdventureLogic
	arm_func_end FUN_ov0_020cc0b8

	arm_func_start FUN_ov0_020cc11c
FUN_ov0_020cc11c: ; 0x020CC11C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	ldr r12, _020CC454 ; =0x020D5048
	mov r8, r3
	add r2, sp, #0x18
	mov r4, r0
	mov r7, r1
	mov r6, #0
	mov r3, #4
_020CC140:
	ldrh r0, [r12, #2]
	ldrh r1, [r12], #4
	subs r3, r3, #1
	strh r0, [r2, #2]
	strh r1, [r2], #4
	mov r5, #1
	bne _020CC140
	ldr r0, _020CC458 ; =gCameraController
	ldrh r1, [r12]
	ldr r0, [r0]
	strh r1, [r2]
	bl FUN_ov16_020f7c34
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, _020CC45C ; =0x020A0640
	ldrb r0, [r0, #0xb93]
	cmp r0, #0
	bne _020CC1A4
	tst r8, #2
	addne r0, r4, #0x1000
	ldrne r1, [r0, #0x8fc]
	orrne r1, r1, #1
	strne r1, [r0, #0x8fc]
	b _020CC1C8
_020CC1A4:
	add r1, r4, #0x1000
	ldr r2, [r1, #0x8fc]
	add r0, r4, #0xfc
	orr r2, r2, #1
	str r2, [r1, #0x8fc]
	tst r8, #2
	add r1, r0, #0x1800
	bicne r0, r2, #1
	strne r0, [r1]
_020CC1C8:
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_020548c4
	movs r7, r0
	addeq sp, sp, #0x2c
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x2d]
	cmp r0, #0
	streq r6, [r7, #0xa0]
	tst r8, #0xf0
	beq _020CC344
	ldrb r0, [r4, #0x25]
	cmp r0, #0
	beq _020CC22C
	mov r0, r4
	bl FUN_ov0_020ccc20
	mov r0, r4
	mov r1, r7
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC22C:
	mov r1, #4
	tst r8, #0x40
	subne r1, r1, #3
	bne _020CC244
	tst r8, #0x80
	addne r1, r1, #3
_020CC244:
	tst r8, #0x20
	subne r1, r1, #1
	bne _020CC258
	tst r8, #0x10
	addne r1, r1, #1
_020CC258:
	add r0, sp, #0x18
	mov r1, r1, lsl #1
	ldrh r2, [r0, r1]
	ldr r1, [sp, #0x10]
	mov r0, r4
	sub r1, r2, r1
	mov r2, r1, lsl #0x10
	mov r1, r7
	mov r8, r2, lsr #0x10
	bl FUN_ov0_020cb110
	mov r1, r0
	mov r0, r4
	bl FUN_ov0_020ccc10
	mov r0, r4
	mov r1, r8
	bl FUN_ov0_020ccc18
	add r0, r4, #0x1000
	ldr r0, [r0, #0x8fc]
	strb r5, [r4, #0x22]
	tst r0, #1
	movne r0, #8
	moveq r0, #4
	str r0, [r4, #0x1c]
	mov r0, r4
	strb r6, [r4, #0x23]
	bl FUN_ov0_020ccc48
	mov r6, r0
	mov r0, r4
	mov r1, r7
	bl FUN_ov0_020cb110
	mov r2, r0
	add r5, sp, #0
	mov r0, r4
	mov r1, r6
	mov r2, r2, lsl #1
	mov r3, r5
	bl FUN_ov0_020cb228
	mov r1, r5
	add r0, r7, #0x84
	add r2, r7, #0x30
	bl VEC_Add
	mov r0, #2
	strb r0, [r7, #0x2d]
	mov r0, r7
	mov r1, #3
	bl FUN_02054390
	ldr r0, [r7, #0xa0]
	cmp r0, #0
	ble _020CC330
	mov r0, r4
	mov r1, r7
	bl FUN_ov0_020cb110
_020CC328:
	str r0, [r7, #0xa0]
	b _020CC448
_020CC330:
	ldr r2, [r4, #4]
	mov r0, r4
	mov r1, r7
	bl FUN_ov0_020cb1a0
	b _020CC328
_020CC344:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ble _020CC424
	ldrb r0, [r4, #0x22]
	cmp r0, #0
	addeq sp, sp, #0x2c
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r4, #0x23]
	cmp r0, #0
	addne sp, sp, #0x2c
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [r4, #0x24]
	cmp r0, #0
	beq _020CC3A8
	mov r0, r4
	bl FUN_ov0_020ccc20
	mov r0, r4
	mov r1, r7
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC3A8:
	sub r0, r1, #1
	strb r5, [r4, #0x25]
	str r0, [r4, #0x1c]
	cmp r0, #4
	mov r0, r4
	mov r1, #0xa0
	ble _020CC3C8
	b _020CC3C8
_020CC3C8:
	bl FUN_ov0_020ccc10
	mov r0, r4
	bl FUN_ov0_020ccc48
	mov r6, r0
	mov r0, r4
	bl FUN_ov0_020ccc40
	mov r2, r0
	add r5, sp, #0
	mov r0, r4
	mov r1, r6
	mov r3, r5
	mov r2, r2, lsl #1
	bl FUN_ov0_020cb228
	mov r1, r5
	add r0, r7, #0x84
	add r2, r7, #0x30
	bl VEC_Add
	mov r0, #2
	strb r0, [r7, #0x2d]
	mov r0, r7
	mov r1, #3
	bl FUN_02054390
	b _020CC448
_020CC424:
	mov r0, r4
	bl FUN_ov0_020ccc20
	mov r0, r4
	mov r1, r7
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0x2c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC448:
	mov r0, #1
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC454: .word ov0_020D5048
_020CC458: .word gCameraController
_020CC45C: .word unk_020A0640
	arm_func_end FUN_ov0_020cc11c

	arm_func_start FUN_ov0_020cc460
FUN_ov0_020cc460: ; 0x020CC460
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r5, #0
	mov r2, r5
	ldr r7, [sp, #0x38]
	mov r8, r0
	mov r4, #1
	bl FUN_020548c4
	movs r6, r0
	addeq sp, sp, #0xc
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldrb r0, [r6, #0x2d]
	cmp r0, #0
	ldr r0, [sp, #0x3c]
	streq r5, [r6, #0xa0]
	cmp r0, #0
	beq _020CC604
	ldrb r0, [r8, #0x25]
	cmp r0, #0
	beq _020CC4EC
	mov r0, r8
	bl FUN_ov0_020ccc20
	mov r0, r8
	mov r1, r6
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_020CC4EC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	cmpeq r7, #0
	bne _020CC528
	mov r0, r8
	bl FUN_ov0_020ccc20
	mov r0, r8
	mov r1, r6
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_020CC528:
	ldr r0, _020CC730 ; =0x020D6100
	ldr r0, [r0]
	bl FUN_ov0_020d17a4
	mov r0, r0, asr #0xc
	cmp r0, #0x28
	movlt r0, #4
	strlt r0, [r8, #0x1c]
	blt _020CC560
	add r0, r8, #0x1000
	ldr r2, [r0, #0x8fc]
	mov r1, #8
	orr r2, r2, #1
	str r2, [r0, #0x8fc]
	str r1, [r8, #0x1c]
_020CC560:
	ldr r1, [sp, #0x30]
	mov r0, r7
	bl FX_Atan2Idx
	mov r1, r0
	mov r0, r8
	bl FUN_ov0_020ccc18
	mov r0, r8
	mov r1, r6
	bl FUN_ov0_020cb110
	mov r1, r0
	mov r0, r8
	bl FUN_ov0_020ccc10
	mov r0, r8
	strb r5, [r8, #0x22]
	strb r4, [r8, #0x23]
	bl FUN_ov0_020ccc48
	mov r4, r0
	mov r0, r8
	mov r1, r6
	bl FUN_ov0_020cb110
	mov r1, r4
	add r4, sp, #0
	mov r2, r0, lsl #1
	mov r0, r8
	mov r3, r4
	bl FUN_ov0_020cb228
	mov r1, r4
	add r0, r6, #0x84
	add r2, r6, #0x30
	bl VEC_Add
	mov r0, #2
	strb r0, [r6, #0x2d]
	mov r0, r6
	mov r1, #3
	bl FUN_02054390
	ldr r2, [r8, #4]
	mov r0, r8
	mov r1, r6
	bl FUN_ov0_020cb1a0
	str r0, [r6, #0xa0]
	b _020CC71C
_020CC604:
	ldr r1, [r8, #0x1c]
	cmp r1, #0
	ble _020CC6F0
	ldrb r0, [r8, #0x23]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldrb r0, [r8, #0x22]
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, lr}
	addne sp, sp, #0x10
	bxne lr
	ldrb r0, [r8, #0x24]
	cmp r0, #0
	beq _020CC680
	mov r0, r8
	bl FUN_ov0_020ccc20
	mov r0, r8
	mov r1, r6
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_020CC680:
	sub r2, r1, #1
	mov r0, r8
	mov r1, #0xa0
	strb r4, [r8, #0x25]
	str r2, [r8, #0x1c]
	bl FUN_ov0_020ccc10
	mov r0, r8
	bl FUN_ov0_020ccc48
	mov r4, r0
	mov r0, r8
	bl FUN_ov0_020ccc40
	mov r2, r0
	mov r1, r4
	add r4, sp, #0
	mov r0, r8
	mov r2, r2, lsl #1
	mov r3, r4
	bl FUN_ov0_020cb228
	mov r1, r4
	add r0, r6, #0x84
	add r2, r6, #0x30
	bl VEC_Add
	mov r0, #2
	strb r0, [r6, #0x2d]
	mov r0, r6
	mov r1, #3
	bl FUN_02054390
	b _020CC71C
_020CC6F0:
	mov r0, r8
	bl FUN_ov0_020ccc20
	mov r0, r8
	mov r1, r6
	mov r2, #1
	bl FUN_02054ef4
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_020CC71C:
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	add sp, sp, #0x10
	bx lr
_020CC730: .word ov0_020D6100
	arm_func_end FUN_ov0_020cc460

	arm_func_start FUN_ov0_020cc734
FUN_ov0_020cc734: ; 0x020CC734
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r2, r7
	ldr r5, [sp, #0x30]
	mov r6, r0
	bl FUN_020548c4
	movs r4, r0
	addeq sp, sp, #0xc
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldrb r0, [r4, #0x2d]
	cmp r0, #0
	ldr r0, [sp, #0x28]
	streq r7, [r4, #0xa0]
	cmp r0, #0
	cmpeq r5, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, _020CC840 ; =0x020D6100
	ldr r0, [r0]
	bl FUN_ov0_020d17a4
	mov r0, r0, asr #0xc
	cmp r0, #0x28
	addge r0, r6, #0x1000
	ldrge r1, [r0, #0x8fc]
	orrge r1, r1, #1
	strge r1, [r0, #0x8fc]
	ldr r1, [sp, #0x28]
	mov r0, r5
	bl FX_Atan2Idx
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov0_020cb110
	mov r2, r0
	add r5, sp, #0
	mov r0, r6
	mov r1, r7
	mov r2, r2, lsl #1
	mov r3, r5
	bl FUN_ov0_020cb228
	mov r1, r5
	add r0, r4, #0x84
	add r2, r4, #0x30
	bl VEC_Add
	mov r0, #2
	strb r0, [r4, #0x2d]
	mov r0, r4
	mov r1, #3
	bl FUN_02054390
	ldr r2, [r6, #4]
	mov r0, r6
	mov r1, r4
	bl FUN_ov0_020cb1a0
	str r0, [r4, #0xa0]
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_020CC840: .word ov0_020D6100
	arm_func_end FUN_ov0_020cc734

	arm_func_start FUN_ov0_020cc844
FUN_ov0_020cc844: ; 0x020CC844
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	cmp r1, #0
	movgt r1, #2
	movle r1, #0
	add r0, r7, #0x1000
	str r1, [r0, #0x8f8]
	mov r5, #0
	mov r0, r7
	mov r1, r5
	mov r6, r2
	bl FUN_02054938
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020CC928 ; =gCameraController
	ldr r0, [r0]
	bl FUN_ov16_020f7c34
	mov r1, r0
	add r0, r7, #0x420
	add r0, r0, #0x1000
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020cb0dc
	add r8, r7, #0x1000
	b _020CC904
_020CC8A4:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	beq _020CC8FC
	mov r0, r4
	bl FUN_020543f4
	cmp r0, #0
	ldrne r0, [r8, #0x8f8]
	cmpne r0, #0
	ble _020CC8F0
	cmp r6, #0
	beq _020CC8E4
	mov r0, r7
	mov r1, r4
	bl FUN_ov0_020cb600
_020CC8E4:
	mov r0, r7
	mov r1, r4
	bl FUN_ov0_020cb658
_020CC8F0:
	mov r0, r7
	mov r1, r4
	bl FUN_ov0_020cb314
_020CC8FC:
	add r5, r5, #1
	add r4, r4, #0xd4
_020CC904:
	cmp r5, #0x18
	blt _020CC8A4
	add r0, r7, #0x1000
	ldr r1, [r0, #0x8fc]
	mov r2, #0
	bic r1, r1, #1
	strb r2, [r0, #0x42c]
	str r1, [r0, #0x8fc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CC928: .word gCameraController
	arm_func_end FUN_ov0_020cc844

	arm_func_start FUN_ov0_020cc92c
FUN_ov0_020cc92c: ; 0x020CC92C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r8, r2
	mov r2, r6
	mov r9, r0
	bl FUN_020548c4
	movs r4, r0
	subeq r0, r6, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r6
	bl FUN_02054938
	mov r5, r0
	mov r7, r6
_020CC964:
	mov r0, r9
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	beq _020CC9CC
	mov r0, r5
	bl FUN_020543f4
	cmp r0, #0
	cmpne r5, r4
	beq _020CC9CC
	mov r0, r9
	mov r1, r5
	bl FUN_020549c8
	cmp r0, #0
	bne _020CC9CC
	mov r0, r9
	mov r1, r5
	bl FUN_020549f8
	cmp r0, #0
	bne _020CC9CC
	add r0, r4, #0x84
	add r1, r5, #0x84
	bl FUN_020535bc
	cmp r0, r8
	movle r8, r0
	movle r6, r5
_020CC9CC:
	add r7, r7, #1
	cmp r7, #0x18
	add r5, r5, #0xd4
	blt _020CC964
	mvn r0, #0
	cmp r6, #0
	ldrne r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov0_020cc92c

	arm_func_start FUN_ov0_020cc9ec
FUN_ov0_020cc9ec: ; 0x020CC9EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	mov r9, r2
	mov r2, r7
	ldr r8, [sp, #0x28]
	mov r10, r0
	mov r11, r3
	bl FUN_020548c4
	movs r4, r0
	subeq r0, r7, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r7
	bl FUN_02054938
	mov r5, r0
	mov r6, r7
_020CCA2C:
	mov r0, r10
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	beq _020CCAA8
	mov r0, r5
	bl FUN_020543f4
	cmp r0, #0
	cmpne r5, r4
	beq _020CCAA8
	mov r0, r10
	mov r1, r5
	bl FUN_020549c8
	cmp r0, #0
	bne _020CCAA8
	mov r0, r10
	mov r1, r5
	bl FUN_020549f8
	cmp r0, #0
	bne _020CCAA8
	add r0, r4, #0x84
	add r1, r5, #0x84
	bl FUN_020535bc
	cmp r0, r9
	bgt _020CCAA8
	cmp r8, r7
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5, #0x5c]
	str r0, [r11, r7, lsl #2]
	add r7, r7, #1
_020CCAA8:
	add r6, r6, #1
	cmp r6, #0x18
	add r5, r5, #0xd4
	blt _020CCA2C
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020cc9ec

	arm_func_start FUN_ov0_020ccac0
FUN_ov0_020ccac0: ; 0x020CCAC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r2
	mov r7, r0
	mov r2, r4
	bl FUN_020548c4
	mov r5, r0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_020548c4
	mov r6, r0
	mov r0, r7
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_020549a0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r2, sp, #2
	add r0, r5, #0x84
	add r1, r6, #0x84
	bl FUN_02053554
	ldrh r1, [sp, #2]
	mov r0, r5
	bl FUN_02054398
	mov r0, r6
	bl FUN_0205445c
	cmp r0, #0
	bne _020CCB60
	add r2, sp, #0
	add r0, r6, #0x84
	add r1, r5, #0x84
	bl FUN_02053554
	ldrh r1, [sp]
	mov r0, r6
	bl FUN_02054398
_020CCB60:
	mov r4, #1
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_02054ef4
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_02054ef4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020ccac0

	arm_func_start FUN_ov0_020ccb88
FUN_ov0_020ccb88: ; 0x020CCB88
	ldr r1, _020CCC0C ; =0x0209A1A8
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	cmp r2, #0
	moveq r2, #0x15
	streq r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	cmp r2, #0
	moveq r2, #0x15
	streq r2, [r0, #8]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	cmp r2, #0
	moveq r2, #0x100
	streq r2, [r0, #0xc]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x10]
	cmp r2, #0
	moveq r2, #0x22
	streq r2, [r0, #0x10]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x14]
	cmp r2, #0
	moveq r2, #0x11
	streq r2, [r0, #0x14]
	ldrsh r1, [r1, #0x18]
	add r0, r0, #0x1900
	strh r1, [r0, #0x14]
	cmp r1, #0
	moveq r1, #5
	streqh r1, [r0, #0x14]
	bx lr
_020CCC0C: .word unk_0209A1A8
	arm_func_end FUN_ov0_020ccb88

	arm_func_start FUN_ov0_020ccc10
FUN_ov0_020ccc10: ; 0x020CCC10
	str r1, [r0, #0x18]
	bx lr
	arm_func_end FUN_ov0_020ccc10

	arm_func_start FUN_ov0_020ccc18
FUN_ov0_020ccc18: ; 0x020CCC18
	strh r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov0_020ccc18

	arm_func_start FUN_ov0_020ccc20
FUN_ov0_020ccc20: ; 0x020CCC20
	mov r1, #0
	strb r1, [r0, #0x22]
	strb r1, [r0, #0x23]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x20]
	strb r1, [r0, #0x25]
	bx lr
	arm_func_end FUN_ov0_020ccc20

	arm_func_start FUN_ov0_020ccc40
FUN_ov0_020ccc40: ; 0x020CCC40
	ldr r0, [r0, #0x18]
	bx lr
	arm_func_end FUN_ov0_020ccc40

	arm_func_start FUN_ov0_020ccc48
FUN_ov0_020ccc48: ; 0x020CCC48
	ldrh r0, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov0_020ccc48

	arm_func_start FUN_ov0_020ccc50
FUN_ov0_020ccc50: ; 0x020CCC50
	add r0, r0, #0x1900
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov0_020ccc50

	arm_func_start FUN_ov0_020ccc60
FUN_ov0_020ccc60: ; 0x020CCC60
	add r0, r0, #0x1900
	strh r1, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov0_020ccc60

	arm_func_start FUN_ov0_020ccc70
FUN_ov0_020ccc70: ; 0x020CCC70
	add r1, r0, #0x1900
	ldrsh r12, [r1, #0x10]
	ldrsh r3, [r1, #0xc]
	cmp r3, r12
	ble _020CCC9C
	ldrsh r2, [r1, #0x14]
	add r2, r12, r2
	cmp r3, r2
	strgeh r2, [r1, #0x10]
	strlth r3, [r1, #0x10]
	b _020CCCB4
_020CCC9C:
	bge _020CCCB4
	ldrsh r2, [r1, #0x14]
	sub r2, r12, r2
	cmp r3, r2
	strleh r2, [r1, #0x10]
	strgth r3, [r1, #0x10]
_020CCCB4:
	add r0, r0, #0x1900
	ldrsh r3, [r0, #0xe]
	ldrsh r2, [r0, #0xa]
	cmp r2, r3
	ble _020CCCE0
	ldrsh r1, [r0, #0x14]
	add r1, r3, r1
	cmp r2, r1
	strgeh r1, [r0, #0xe]
	strlth r2, [r0, #0xe]
	bx lr
_020CCCE0:
	bxge lr
	ldrsh r1, [r0, #0x14]
	sub r1, r3, r1
	cmp r2, r1
	strleh r1, [r0, #0xe]
	strgth r2, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov0_020ccc70

	arm_func_start FUN_ov0_020cccfc
FUN_ov0_020cccfc: ; 0x020CCCFC
	add r0, r0, #0x1900
	ldrsh r2, [r0, #0xa]
	ldrsh r1, [r0, #0xe]
	cmp r2, r1
	ldreqsh r1, [r0, #0xc]
	ldreqsh r0, [r0, #0x10]
	cmpeq r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov0_020cccfc

	arm_func_start FUN_ov0_020ccd24
FUN_ov0_020ccd24: ; 0x020CCD24
	ldr r2, _020CCD40 ; =g2DAdventureLogic
	add r0, r0, #0x1000
	mov r1, #0
	strb r1, [r0, #0x912]
	ldr r0, [r2]
	ldr r12, _020CCD44 ; =FUN_ov0_020ccd74
	bx r12
_020CCD40: .word g2DAdventureLogic
_020CCD44: .word FUN_ov0_020ccd74
	arm_func_end FUN_ov0_020ccd24

	arm_func_start FUN_ov0_020ccd48
FUN_ov0_020ccd48: ; 0x020CCD48
	add r0, r0, #0x1000
	strb r1, [r0, #0x912]
	bx lr
	arm_func_end FUN_ov0_020ccd48

	arm_func_start FUN_ov0_020ccd54
FUN_ov0_020ccd54: ; 0x020CCD54
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x912]
	bx lr
	arm_func_end FUN_ov0_020ccd54

	arm_func_start FUN_ov0_020ccd60
FUN_ov0_020ccd60: ; 0x020CCD60
	add r0, r0, #0x1900
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0xe]
	orr r0, r0, r1, lsl #16
	bx lr
	arm_func_end FUN_ov0_020ccd60

	arm_func_start FUN_ov0_020ccd74
FUN_ov0_020ccd74: ; 0x020CCD74
	add r0, r0, #0x1000
	strb r1, [r0, #0x913]
	bx lr
	arm_func_end FUN_ov0_020ccd74

	arm_func_start FUN_ov0_020ccd80
FUN_ov0_020ccd80: ; 0x020CCD80
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x913]
	bx lr
	arm_func_end FUN_ov0_020ccd80

	arm_func_start FUN_ov0_020ccd8c
FUN_ov0_020ccd8c: ; 0x020CCD8C
	add r0, r0, #0x1000
	strb r1, [r0, #0x916]
	bx lr
	arm_func_end FUN_ov0_020ccd8c

	arm_func_start FUN_ov0_020ccd98
FUN_ov0_020ccd98: ; 0x020CCD98
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x916]
	bx lr
	arm_func_end FUN_ov0_020ccd98

	arm_func_start FUN_ov0_020ccda4
FUN_ov0_020ccda4: ; 0x020CCDA4
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x917]
	bx lr
	arm_func_end FUN_ov0_020ccda4

	arm_func_start FUN_ov0_020ccdb0
FUN_ov0_020ccdb0: ; 0x020CCDB0
	add r0, r0, #0x1000
	strb r1, [r0, #0x917]
	bx lr
	arm_func_end FUN_ov0_020ccdb0

	arm_func_start FUN_ov0_020ccdbc
FUN_ov0_020ccdbc: ; 0x020CCDBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x68
	mov r4, #0
	mov r7, r1
	ldr r0, _020CD0E0 ; =gLogicThink
	mov r1, r4
	mov r2, #1
	bl FUN_0204de70
	ldr r1, _020CD0E4 ; =g2DAdventureLogic
	mov r6, r0
	ldr r0, [r1]
	mov r1, r4
	bl FUN_020552dc
	movs r5, r0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0205430c
	ldr r1, [r0]
	str r1, [sp, #0x5c]
	ldr r1, [r0, #4]
	str r1, [sp, #0x60]
	ldr r1, [r0, #8]
	mov r0, r5
	str r1, [sp, #0x64]
	bl FUN_02054314
	ldr r1, [r0]
	str r1, [sp, #0x50]
	ldr r1, [r0, #4]
	str r1, [sp, #0x54]
	ldr r0, [r0, #8]
	str r0, [sp, #0x58]
	ldr r0, [r7, #0xc]
	ldr r5, [r7]
	add r0, r0, r0, lsr #31
	sub r8, r5, r0, asr #1
	str r8, [sp, #0x44]
	str r4, [sp, #0x48]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #8]
	add r0, r5, r0, asr #1
	add r1, r1, r1, lsr #31
	sub r3, r2, r1, asr #1
	add r1, r2, r1, asr #1
	str r3, [sp, #0x4c]
	str r8, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r4, [sp, #0x30]
	str r3, [sp, #0x34]
	str r4, [sp, #0x24]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x20]
	ldr r0, [r7, #0x18]
	cmp r0, #0
	cmpne r0, #0x8000
	beq _020CCF1C
	ldr r5, _020CD0E8 ; =0x0B60B60B
	mov r8, #0xb6
	umull r3, r2, r0, r5
	mla r2, r0, r8, r2
	mov r1, r0, asr #0x1f
	mla r2, r1, r5, r2
	adds r1, r3, r4
	adc r1, r2, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #0x10
	add r0, sp, #0x5c
	mov r1, r7
	mov r3, r0
	mov r2, r2, lsr #0x10
	bl FUN_02053cf4
	ldr r1, [r7, #0x18]
	add r0, sp, #0x50
	umull r3, r2, r1, r5
	mla r2, r1, r8, r2
	mov r1, r1, asr #0x1f
	adds r3, r3, r4
	mla r2, r1, r5, r2
	adc r1, r2, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #0x10
	mov r1, r7
	mov r3, r0
	mov r2, r2, lsr #0x10
	bl FUN_02053cf4
_020CCF1C:
	mov r9, #0
	add r5, sp, #0x5c
	add r4, sp, #0x50
	add r8, sp, #0x44
	add r10, sp, #0x38
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r10
	str r9, [sp, #0x14]
	str r9, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_0205361c
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	addne r0, r0, #0xa000
	strne r0, [sp, #0x14]
	bne _020CCFE0
	add r9, sp, #0x2c
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r9
	bl FUN_0205361c
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	addne r0, r0, #0xa000
	strne r0, [sp, #0x1c]
	bne _020CCFE0
	add r8, sp, #0x20
	mov r0, r5
	mov r1, r4
	mov r2, r10
	mov r3, r8
	bl FUN_0205361c
	cmp r0, #0
	ldrne r0, [sp, #0x1c]
	subne r0, r0, #0xa000
	strne r0, [sp, #0x1c]
	bne _020CCFE0
	mov r0, r5
	mov r1, r4
	mov r2, r9
	mov r3, r8
	bl FUN_0205361c
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #0xa000
	strne r0, [sp, #0x14]
_020CCFE0:
	ldr r4, [r7, #0x18]
	cmp r4, #0
	cmpne r4, #0x8000
	beq _020CD068
	mov r12, #0
	sub r0, r12, #0x1000
	umull r3, r2, r4, r0
	sub r1, r12, #1
	mla r2, r4, r1, r2
	mov r1, r4, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r0, r2, #0
	mov r5, r3, lsr #0xc
	orr r5, r5, r0, lsl #20
	ldr r1, _020CD0E8 ; =0x0B60B60B
	mov r2, #0xb6
	umull r4, r3, r5, r1
	mla r3, r5, r2, r3
	mov r2, r5, asr #0x1f
	mla r3, r2, r1, r3
	adds r1, r4, #0
	adc r1, r3, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #0x10
	add r0, sp, #0x14
	add r1, sp, #8
	mov r3, r0
	mov r2, r2, lsr #0x10
	str r12, [sp, #8]
	str r12, [sp, #0xc]
	str r12, [sp, #0x10]
	bl FUN_02053cf4
_020CD068:
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x18]
	add r7, r3, r2
	ldr r0, [sp, #0x60]
	ldr r4, _020CD0E4 ; =g2DAdventureLogic
	add r5, r1, r0
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x64]
	ldr r0, [r4]
	add r3, r2, r1
	mov r1, r6
	mov r2, #0
	str r7, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_020554b0
	mov r2, #0x100
	add r1, sp, #0x14
	str r2, [sp, #4]
	mov r5, r0
	sub r3, sp, #8
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r4]
	mov r1, r5
	ldmia r3, {r2, r3}
	bl FUN_02055cb0
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CD0E0: .word gLogicThink
_020CD0E4: .word g2DAdventureLogic
_020CD0E8: .word 0x0B60B60B
	arm_func_end FUN_ov0_020ccdbc

	arm_func_start FUN_ov0_020cd0ec
FUN_ov0_020cd0ec: ; 0x020CD0EC
	add r0, r0, #0x1000
	str r1, [r0, #0x918]
	bx lr
	arm_func_end FUN_ov0_020cd0ec

	arm_func_start FUN_ov0_020cd0f8
FUN_ov0_020cd0f8: ; 0x020CD0F8
	add r0, r0, #0x1000
	ldr r0, [r0, #0x918]
	bx lr
	arm_func_end FUN_ov0_020cd0f8

	arm_func_start FUN_ov0_020cd104
FUN_ov0_020cd104: ; 0x020CD104
	add r0, r0, #0x1000
	strb r1, [r0, #0x91c]
	bx lr
	arm_func_end FUN_ov0_020cd104

	arm_func_start FUN_ov0_020cd110
FUN_ov0_020cd110: ; 0x020CD110
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x91c]
	bx lr
	arm_func_end FUN_ov0_020cd110

	arm_func_start FUN_ov0_020cd11c
FUN_ov0_020cd11c: ; 0x020CD11C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020CD19C ; =gLogicThink
	mov r8, r0
	mov r7, #2
	mov r4, #3
	mov r5, #0
_020CD134:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_0204de70
	mov r1, r0
	mov r0, r8
	mov r2, r5
	bl FUN_020554b0
	mov r1, r0
	mov r0, r8
	mov r2, r5
	bl FUN_020548c4
	cmp r0, #0
	beq _020CD17C
	add r7, r7, #1
	strb r4, [r0, #0x2d]
	cmp r7, #4
	ble _020CD134
_020CD17C:
	ldr r1, [r8, #0x3c]
	mov r0, r8
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	movne r1, #3
	strneb r1, [r0, #0x2d]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CD19C: .word gLogicThink
	arm_func_end FUN_ov0_020cd11c

	arm_func_start FUN_ov0_020cd1a0
FUN_ov0_020cd1a0: ; 0x020CD1A0
	add r0, r0, #0x1000
	strb r1, [r0, #0x91d]
	bx lr
	arm_func_end FUN_ov0_020cd1a0

	arm_func_start FUN_ov0_020cd1ac
FUN_ov0_020cd1ac: ; 0x020CD1AC
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x91d]
	bx lr
	arm_func_end FUN_ov0_020cd1ac

	arm_func_start FUN_ov0_020cd1b8
FUN_ov0_020cd1b8: ; 0x020CD1B8
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x14]
	mov r3, r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _020CD1E8 ; =0x0209A200
	ldr r1, _020CD1EC ; =gAllocator
	ldr r2, [r2, #0xc]
	bl FUN_ov0_020d2854
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CD1E8: .word unk_0209A200
_020CD1EC: .word gAllocator
	arm_func_end FUN_ov0_020cd1b8

	arm_func_start FUN_ov0_020cd1f0
FUN_ov0_020cd1f0: ; 0x020CD1F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x14]
	mov r5, r1
	cmp r0, #0
	mov r4, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov0_020d2c4c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x14]
	mov r1, r5
	mov r2, r4
	bl FUN_ov0_020d2e4c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020cd1f0

	arm_func_start FUN_ov0_020cd234
FUN_ov0_020cd234: ; 0x020CD234
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r4, r1
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov0_020d2c4c
	cmp r0, #0
	addeq sp, sp, #8
	mvn r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r1, sp, #4
	add r2, sp, #0
	mov r3, r4
	bl FUN_ov0_020d2dcc
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrge r0, [sp]
	cmpge r0, #0
	mvnlt r0, #0
	movge r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020cd234

	arm_func_start FUN_ov0_020cd2a8
FUN_ov0_020cd2a8: ; 0x020CD2A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xf8
	mov r4, #0
	str r1, [sp, #4]
	mov r1, r4
	str r4, [sp, #0x34]
	str r0, [sp]
	str r2, [sp, #8]
	mov r10, r3
	bl FUN_0205e604
	ldr r1, [sp, #4]
	mov r4, r0
	ldr r1, [r1]
	ldr r0, [sp, #4]
	str r1, [sp, #0xd4]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x34]
	str r1, [sp, #0xd8]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	ldr r1, [r0, #8]
	ldr r0, [sp, #0x34]
	str r1, [sp, #0xdc]
	str r0, [sp, #0x30]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ble _020CD960
	mvn r0, #0
	str r0, [sp, #0x38]
	sub r0, r0, #0x1f
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	sub r0, r0, #0x1f
	str r0, [sp, #0x40]
_020CD334:
	ldr r0, [r4, #8]
	tst r0, #1
	beq _020CD93C
	tst r0, #0x1000
	beq _020CD93C
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _020CD93C
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	bl FUN_ov16_020fa6d4
	ldr r1, [r4, #0x14]
	add r0, sp, #0x50
	bl FUN_ov16_020fa538
	ldr r1, [r4, #0x14]
	add r0, sp, #0x44
	ldr r6, [sp, #0x50]
	ldr r7, [sp, #0x58]
	bl FUN_ov16_020fa54c
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x14]
	bl FUN_ov16_020fabf4
	ldrsh r1, [r0, #0x18]
	ldr r2, [r0, #0x24]
	ldrsh r8, [r0, #0x1c]
	ldrsh r5, [r0, #0x1e]
	ldrsh r3, [r0, #0x22]
	smull r9, r0, r1, r2
	adds r1, r9, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	smull r9, r0, r8, r2
	adds r9, r9, #0x800
	adc r8, r0, #0
	mov r0, r9, lsr #0xc
	orr r0, r0, r8, lsl #20
	smull r9, r8, r5, r2
	smull r5, r2, r3, r2
	adds r9, r9, #0x800
	adc r3, r8, #0
	adds r5, r5, #0x800
	mov r8, r9, lsr #0xc
	orr r8, r8, r3, lsl #20
	add r3, r8, r8, lsr #31
	adc r2, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r2, lsl #20
	ldr r2, _020CD994 ; =0x0000059A
	add r5, r5, r5, lsr #31
	cmp r2, r3, asr #1
	add r2, r6, r3, asr #1
	add r1, r1, r2
	str r1, [sp, #0x24]
	add r1, r7, r5, asr #1
	add r11, r0, r1
	mov r8, r3, asr #1
	ldr r0, _020CD994 ; =0x0000059A
	mov r9, r5, asr #1
	ldrgt r8, _020CD994 ; =0x0000059A
	cmp r9, r0
	movlt r9, r0
	ldr r0, [sp, #8]
	ldr r2, [r10, #0x10]
	ldr r1, [r0]
	add r0, r2, #0x9a
	add r2, r0, #0x500
	ldr r0, [sp, #0x24]
	add r8, r8, r2
	sub r0, r1, r0
	str r0, [sp, #0xec]
	mov r0, #0
	str r0, [sp, #0xf0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xd4]
	ldr r0, [r0, #8]
	add r9, r9, r2
	sub r0, r0, r11
	str r0, [sp, #0xf4]
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	ldr r1, [sp, #0xdc]
	str r0, [sp, #0xe0]
	mov r0, #0
	sub r1, r1, r11
	str r0, [sp, #0xe4]
	str r1, [sp, #0xe8]
	add r0, sp, #0xe0
	add r1, sp, #0xec
	bl VEC_Distance
	add r1, r8, r9
	add r5, r0, r1
	add r0, sp, #0xe0
	bl VEC_Mag
	cmp r0, r5
	bgt _020CD93C
	ldr r0, [sp, #0x28]
	ldr r1, _020CD998 ; =FX_SinCosTable_
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	mov r2, r3, lsl #1
	ldrsh r1, [r1, r2]
	ldr r2, _020CD998 ; =FX_SinCosTable_
	add r0, sp, #0x8c
	add r2, r2, r3, lsl #1
	ldrsh r2, [r2, #2]
	blx MTX_RotY43_
	ldr r0, [sp, #8]
	ldr r1, [r0]
	ldr r0, [sp, #0xd4]
	sub r1, r1, r6
	str r1, [sp, #0xec]
	sub r1, r0, r6
	ldr r0, [sp, #8]
	ldr r2, [r0, #8]
	ldr r0, [sp, #0xdc]
	str r1, [sp, #0xe0]
	sub r1, r2, r7
	sub r0, r0, r7
	str r1, [sp, #0xf4]
	str r0, [sp, #0xe8]
	add r0, sp, #0x8c
	add r1, sp, #0x5c
	bl MTX_Inverse43
	add r0, sp, #0xec
	add r1, sp, #0x5c
	mov r2, r0
	bl MTX_MultVec43
	add r0, sp, #0xe0
	add r1, sp, #0x5c
	mov r2, r0
	bl MTX_MultVec43
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0xec]
	sub r0, r0, r6
	str r0, [sp, #0x20]
	sub r0, r11, r7
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0xf4]
	sub r0, r2, r0
	str r0, [sp, #0xec]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0xe0]
	sub r0, r1, r0
	str r0, [sp, #0xf4]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0xe8]
	sub r0, r2, r0
	str r0, [sp, #0xe0]
	ldr r0, [sp, #0x1c]
	add r2, sp, #0xbc
	sub r0, r1, r0
	str r0, [sp, #0xe8]
	add r0, sp, #0xe0
	add r1, sp, #0xec
	bl VEC_Subtract
	ldr r0, [sp, #0xe4]
	ldr r1, [sp, #0xbc]
	mov r5, #0x1000
	str r0, [sp, #0xcc]
	cmp r1, #0
	beq _020CD73C
	mov r0, r9, lsl #1
	ldr r2, [r10, #0x10]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x14]
	add r1, r1, r2
	sub r0, r8, r2
	smull r2, r1, r3, r1
	mov r3, r3, asr #0x1f
	str r3, [sp, #0x18]
	ldr r3, [sp, #0xec]
	add r3, r3, r0
	ldr r0, [sp, #0x14]
	smull r11, r3, r0, r3
	adds r0, r11, #0x800
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r0, r0, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	orr r0, r0, r3, lsl #20
	rsb r1, r2, #0
	bl FX_Div
	cmp r0, #0
	blt _020CD678
	cmp r0, #0x1000
	bge _020CD678
	ldr r2, [sp, #0xc4]
	ldr r1, [sp, #0xf4]
	smull r11, r3, r2, r0
	adds r11, r11, #0x800
	adc r2, r3, #0
	mov r3, r11, lsr #0xc
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xd0]
	rsbmi r1, r1, #0
	cmp r1, r9
	bge _020CD678
	mov r5, r0
	ldr r0, [sp, #0x3c]
	sub r0, r0, r8
	str r0, [sp, #0xc8]
	mov r0, #1
	str r0, [sp, #0x34]
_020CD678:
	ldr r12, [r10, #0x10]
	ldr r1, [sp, #0xec]
	sub r0, r8, r12
	sub r2, r1, r0
	ldr r0, [sp, #0x14]
	mov r1, r2, asr #0x1f
	umull r11, r3, r0, r2
	mla r3, r0, r1, r3
	ldr r0, [sp, #0x18]
	ldr lr, [sp, #0xbc]
	mla r3, r0, r2, r3
	adds r0, r11, #0x800
	sub r12, lr, r12
	adc r1, r3, #0
	mov r0, r0, lsr #0xc
	ldr r11, [sp, #0x14]
	orr r0, r0, r1, lsl #20
	umull r3, r2, r11, r12
	mov r1, r12, asr #0x1f
	mla r2, r11, r1, r2
	ldr r1, [sp, #0x18]
	adds r3, r3, #0x800
	mla r2, r1, r12, r2
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	rsb r1, r2, #0
	bl FX_Div
	cmp r0, #0
	blt _020CD73C
	cmp r0, #0x1000
	cmple r0, r5
	bge _020CD73C
	ldr r2, [sp, #0xc4]
	ldr r1, [sp, #0xf4]
	smull r11, r3, r2, r0
	adds r11, r11, #0x800
	adc r2, r3, #0
	mov r3, r11, lsr #0xc
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xd0]
	rsbmi r1, r1, #0
	cmp r1, r9
	movlt r5, r0
	addlt r0, r8, #0x20
	strlt r0, [sp, #0xc8]
	movlt r0, #1
	strlt r0, [sp, #0x34]
_020CD73C:
	ldr r1, [sp, #0xc4]
	cmp r1, #0
	beq _020CD8C0
	mov r0, r8, lsl #1
	ldr r2, [r10, #0x10]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0xc]
	add r1, r1, r2
	sub r0, r9, r2
	smull r2, r1, r3, r1
	mov r3, r3, asr #0x1f
	str r3, [sp, #0x10]
	ldr r3, [sp, #0xf4]
	add r3, r3, r0
	ldr r0, [sp, #0xc]
	smull r11, r3, r0, r3
	adds r11, r11, #0x800
	adc r0, r3, #0
	mov r3, r11, lsr #0xc
	orr r3, r3, r0, lsl #20
	rsb r0, r3, #0
	adds r3, r2, #0x800
	adc r2, r1, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	bl FX_Div
	cmp r0, #0
	blt _020CD800
	cmp r0, #0x1000
	cmple r0, r5
	bge _020CD800
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xec]
	smull r11, r3, r2, r0
	adds r11, r11, #0x800
	adc r2, r3, #0
	mov r3, r11, lsr #0xc
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xc8]
	rsbmi r1, r1, #0
	cmp r1, r8
	bge _020CD800
	mov r5, r0
	ldr r0, [sp, #0x40]
	sub r0, r0, r9
	str r0, [sp, #0xd0]
	mov r0, #1
	str r0, [sp, #0x34]
_020CD800:
	ldr r12, [r10, #0x10]
	ldr r1, [sp, #0xf4]
	sub r0, r9, r12
	sub r2, r1, r0
	ldr r0, [sp, #0xc]
	mov r1, r2, asr #0x1f
	umull r11, r3, r0, r2
	mla r3, r0, r1, r3
	adds r1, r11, #0x800
	ldr r0, [sp, #0x10]
	ldr lr, [sp, #0xc4]
	mla r3, r0, r2, r3
	adc r0, r3, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r12, lr, r12
	ldr r11, [sp, #0xc]
	rsb r0, r1, #0
	mov r1, r12, asr #0x1f
	umull r3, r2, r11, r12
	mla r2, r11, r1, r2
	ldr r1, [sp, #0x10]
	mla r2, r1, r12, r2
	adds r1, r3, #0x800
	adc r2, r2, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r2, lsl #20
	bl FX_Div
	cmp r0, #0
	blt _020CD8C0
	cmp r0, #0x1000
	cmple r0, r5
	bge _020CD8C0
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xec]
	smull r3, r0, r2, r0
	adds r2, r3, #0x800
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	adds r0, r1, r2
	str r0, [sp, #0xc8]
	rsbmi r0, r0, #0
	cmp r0, r8
	addlt r0, r9, #0x20
	strlt r0, [sp, #0xd0]
	movlt r0, #1
	strlt r0, [sp, #0x34]
_020CD8C0:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _020CD93C
	ldr r2, [sp, #0xc8]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0xd0]
	add r2, r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0xc8]
	add r0, r1, r0
	str r0, [sp, #0xd0]
	add r0, sp, #0xc8
	add r1, sp, #0x8c
	add r2, sp, #0xd4
	bl MTX_MultVec43
	ldr r1, [sp, #0xd4]
	ldr r0, [sp, #0xdc]
	add r2, r1, r6
	add r1, r0, r7
	ldr r0, [sp, #4]
	str r2, [sp, #0xd4]
	ldr r2, [r0, #4]
	ldr r0, [sp, #0x38]
	str r2, [sp, #0xd8]
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0xdc]
	add r0, r0, #1
	str r0, [sp, #0x2c]
_020CD93C:
	ldr r0, [sp, #0x30]
	add r4, r4, #0x20
	add r0, r0, #1
	str r0, [sp, #0x30]
	ldr r0, [sp]
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	blt _020CD334
_020CD960:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0xd4]
	cmp r0, #0
	ldr r0, [sp, #4]
	str r1, [r0]
	ldr r1, [sp, #0xd8]
	str r1, [r0, #4]
	ldr r1, [sp, #0xdc]
	str r1, [r0, #8]
	movgt r0, #1
	movle r0, #0
	add sp, sp, #0xf8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD994: .word 0x0000059A
_020CD998: .word FX_SinCosTable_
	arm_func_end FUN_ov0_020cd2a8

	arm_func_start FUN_ov0_020cd99c
FUN_ov0_020cd99c: ; 0x020CD99C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10c
	mov r6, #0
	mov r10, r0
	mov r1, r6
	bl FUN_0205e604
	ldr r9, [r10, #0x1c]
	mov r8, r0
	cmp r9, #0
	ldrne r0, [r10, #0xc]
	cmpne r0, #0
	addle sp, sp, #0x10c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, sp, #0xc
	mov r4, r6
	mov r11, #1
_020CD9DC:
	ldrsh r2, [r9]
	cmp r2, #0
	blt _020CDAE8
	ldr r1, _020CDB08 ; =0x020D6018
	mov r0, r10
	mov r3, r5
	bl FUN_0205e674
	stmia sp, {r4, r11}
	str r11, [sp, #8]
	ldrsh r3, [r9]
	mov r0, r10
	mov r1, r6
	mov r2, #4
	bl FUN_0205f2b8
	mov r7, r0
	ldrb r0, [r9, #5]
	mov r1, r7
	tst r0, #1
	movne r2, r11
	moveq r2, r4
	mov r0, r10
	bl FUN_0205f9c0
	ldrb r0, [r9, #5]
	tst r0, #2
	ldreq r0, [r8, #8]
	biceq r0, r0, #0x1000
	streq r0, [r8, #8]
	ldr r1, [r9, #0x14]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r9, #0xc]
	ldr r3, [r9, #0x10]
	mov r1, r7
	bl FUN_0205fa48
	ldr r1, [r9, #0x20]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r9, #0x18]
	ldr r3, [r9, #0x1c]
	mov r1, r7
	bl FUN_0205fab4
	ldr r1, [r9, #0x2c]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r9, #0x24]
	ldr r3, [r9, #0x28]
	mov r1, r7
	bl FUN_0205faf8
	ldrsh r2, [r9, #2]
	cmp r2, #0
	blt _020CDAD0
	ldr r1, _020CDB0C ; =0x020D601C
	mov r0, r5
	bl STD_TSPrintf
	mov r1, r7
	mov r0, r10
	mov r2, r5
	mov r3, #1
	bl FUN_0205f664
	mov r0, #1
	strb r0, [r8, #0xf]
_020CDAD0:
	ldrb r0, [r9, #5]
	tst r0, #4
	movne r0, #4
	strneb r0, [r8, #0x10]
	movne r0, #1
	strneb r0, [r8, #0xd]
_020CDAE8:
	ldr r0, [r10, #0xc]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, #0x20
	add r9, r9, #0x30
	blt _020CD9DC
	add sp, sp, #0x10c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDB08: .word ov0_020D6018
_020CDB0C: .word ov0_020D601C
	arm_func_end FUN_ov0_020cd99c

	arm_func_start FUN_ov0_020cdb10
FUN_ov0_020cdb10: ; 0x020CDB10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r7, #0
	mov r1, r7
	mov r10, r0
	bl FUN_0205e604
	ldr r9, [r10, #0x1c]
	movs r8, r0
	cmpne r9, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r7
	mov r2, #0x600
	bl MI_CpuFill8
	ldr r0, [r10, #0xc]
	cmp r0, #0
	ble _020CDC60
	add r5, sp, #0x18
	add r4, sp, #0xc
	add r11, sp, #0
	mvn r6, #0
_020CDB68:
	strh r6, [r9]
	ldrsh r0, [r8, #4]
	strh r0, [r9]
	ldrsh r0, [r8, #6]
	strh r0, [r9, #2]
	ldrb r0, [r8, #0x10]
	cmp r0, #4
	ldreqb r0, [r9, #5]
	orreq r0, r0, #4
	streqb r0, [r9, #5]
	ldr r0, [r8, #8]
	tst r0, #0x100
	ldrneb r0, [r9, #5]
	orrne r0, r0, #1
	strneb r0, [r9, #5]
	ldr r0, [r8, #8]
	tst r0, #0x1000
	ldrneb r0, [r9, #5]
	orrne r0, r0, #2
	strneb r0, [r9, #5]
	ldr r0, [r8, #0x18]
	bl FUN_ov16_020fb048
	strb r0, [r9, #4]
	ldr r1, [r8, #0x18]
	mov r0, r5
	ldr r1, [r1, #0x2c]
	strh r1, [r9, #6]
	ldr r1, [r8, #0x18]
	ldr r1, [r1, #0x24]
	str r1, [r9, #8]
	ldr r1, [r8, #0x14]
	bl FUN_ov16_020fa538
	ldr r1, [sp, #0x18]
	mov r0, r4
	str r1, [r9, #0xc]
	ldr r1, [sp, #0x1c]
	str r1, [r9, #0x10]
	ldr r1, [sp, #0x20]
	str r1, [r9, #0x14]
	ldr r1, [r8, #0x14]
	bl FUN_ov16_020fa54c
	ldr r1, [sp, #0xc]
	mov r0, r11
	str r1, [r9, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r9, #0x1c]
	ldr r1, [sp, #0x14]
	str r1, [r9, #0x20]
	ldr r1, [r8, #0x14]
	bl FUN_ov16_020fa560
	ldr r0, [sp]
	add r7, r7, #1
	str r0, [r9, #0x24]
	ldr r0, [sp, #4]
	add r8, r8, #0x20
	str r0, [r9, #0x28]
	ldr r0, [sp, #8]
	str r0, [r9, #0x2c]
	ldr r0, [r10, #0xc]
	add r9, r9, #0x30
	cmp r7, r0
	blt _020CDB68
_020CDC60:
	mov r0, r9
	mov r1, #0x600
	bl DC_FlushRange
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020cdb10

	arm_func_start FUN_ov0_020cdc74
FUN_ov0_020cdc74: ; 0x020CDC74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x110
	ldr r1, _020CDCF0 ; =0x020D6028
	mov r9, #0
	mov r10, r0
	ldr r7, [r1]
	add r8, sp, #0x10
	mov r6, #1
	mov r5, r9
	ldr r4, _020CDCF4 ; =0x0209A200
	ldr r11, _020CDCF8 ; =g3DPlaneCtrl
	b _020CDCE0
_020CDCA4:
	ldr r1, _020CDCFC ; =0x020D6050
	mov r0, r8
	mov r2, r7
	bl STD_TSPrintf
	ldr r2, [r4]
	ldr r0, [r11]
	mov r1, #5
	str r6, [sp]
	str r5, [sp, #4]
	mov r3, r8
	str r5, [sp, #8]
	bl FUN_02058684
	add r1, r10, r9, lsl #2
	str r0, [r1, #4]
	add r9, r9, #1
_020CDCE0:
	cmp r9, #1
	blt _020CDCA4
	add sp, sp, #0x110
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDCF0: .word ov0_020D6028
_020CDCF4: .word unk_0209A200
_020CDCF8: .word g3DPlaneCtrl
_020CDCFC: .word ov0_020D6050
	arm_func_end FUN_ov0_020cdc74

	arm_func_start FUN_ov0_020cdd00
FUN_ov0_020cdd00: ; 0x020CDD00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _020CDDA0 ; =g3DPlaneCtrl
	b _020CDD3C
_020CDD14:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020CDD38
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020CDD38:
	add r4, r4, #1
_020CDD3C:
	cmp r4, #1
	blt _020CDD14
	mov r4, #0
	mov r7, r4
	ldr r6, _020CDDA0 ; =g3DPlaneCtrl
	b _020CDD90
_020CDD54:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020CDD8C
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _020CDD8C
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_020CDD8C:
	add r4, r4, #1
_020CDD90:
	cmp r4, #1
	blt _020CDD54
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CDDA0: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cdd00

	arm_func_start FUN_ov0_020cdda4
FUN_ov0_020cdda4: ; 0x020CDDA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _020CDDF0 ; =g3DPlaneCtrl
	b _020CDDD4
_020CDDB8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020CDDD0
	ldr r0, [r4]
	bl FUN_02058ee0
_020CDDD0:
	add r5, r5, #1
_020CDDD4:
	cmp r5, #1
	blt _020CDDB8
	add r0, r6, #4
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020CDDF0: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cdda4

	arm_func_start FUN_ov0_020cddf4
FUN_ov0_020cddf4: ; 0x020CDDF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #4
	bl MI_CpuFill8
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	str r4, [r5, #0x10]
	str r4, [r5, #0x14]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x18]
	str r4, [r5, #0x24]
	str r4, [r5, #0x20]
	str r4, [r5, #0x30]
	str r4, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020cddf4

	arm_func_start FUN_ov0_020cde3c
FUN_ov0_020cde3c: ; 0x020CDE3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov0_020ce6dc
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	bl FUN_ov0_020cddf4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020cde3c

	arm_func_start FUN_ov0_020cde64
FUN_ov0_020cde64: ; 0x020CDE64
	ldr r12, [sp]
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r3, [r0, #0x2c]
	str r12, [r0, #0x30]
	bx lr
	arm_func_end FUN_ov0_020cde64

	arm_func_start FUN_ov0_020cde7c
FUN_ov0_020cde7c: ; 0x020CDE7C
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	str r3, [r0, #0x28]
	bx lr
	arm_func_end FUN_ov0_020cde7c

	arm_func_start FUN_ov0_020cde8c
FUN_ov0_020cde8c: ; 0x020CDE8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	str r1, [r4, #0x28]
	bl FUN_ov0_020ce76c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #1
	ldr r5, _020CDF20 ; =g3DPlaneCtrl
	b _020CDED0
_020CDEB0:
	ldr r1, [r4, #0x28]
	ldr r0, [r5]
	mov r3, r1, lsl #0x10
	ldr r1, [r4, #8]
	mov r2, r6
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add r6, r6, #1
_020CDED0:
	cmp r6, #9
	ble _020CDEB0
	ldr r0, [r4, #0x28]
	ldr r5, _020CDF20 ; =g3DPlaneCtrl
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r4, #8]
	mov r3, r2, lsr #0x10
	mov r2, #0xa
	bl FUN_ov16_021139bc
	ldr r1, [r4, #0x28]
	ldr r0, [r5]
	sub r1, r1, #2
	mov r2, r1, lsl #0x10
	ldr r1, [r4, #8]
	mov r3, r2, lsr #0x10
	mov r2, #0xb
	bl FUN_ov16_021139bc
	ldmfd sp!, {r4, r5, r6, pc}
_020CDF20: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cde8c

	arm_func_start FUN_ov0_020cdf24
FUN_ov0_020cdf24: ; 0x020CDF24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r4, _020CDFFC ; =g3DPlaneCtrl
	mov r9, r2
	mov r6, #0
	mov r8, r3
	mov r10, r1
	ldr r0, [r4]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r9
	str r6, [sp, #0x20]
	bl FUN_0205935c
	ldr r7, [sp, #0x20]
	cmp r7, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
	mov r0, r10
	mov r1, r11
	mov r2, r11
	bl FUN_02043310
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov16_02111438
	mov r5, r0
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov16_02111458
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	str r11, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r2, [sp, #0x50]
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r1, r8
	mov r3, r5
	mov r0, r10
	mov r2, r7
	bl FUN_020425fc
	mov r0, r10
	bl FUN_0204331c
	ldr r0, [r4]
	ldr r3, [sp, #0x24]
	mov r1, r9
	str r6, [sp]
	str r6, [sp, #4]
	mov r2, r7
	str r6, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFFC: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cdf24

	arm_func_start FUN_ov0_020ce000
FUN_ov0_020ce000: ; 0x020CE000
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r2, [r10, #0x18]
	mov r9, r1
	cmp r2, #0
	ldrgt r1, [r10, #0x1c]
	cmpgt r1, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov0_020ce76c
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x18]
	ldr r1, [r10, #0x1c]
	add r2, sp, #8
	add r3, sp, #4
	mov r0, r0, lsl #3
	mov r1, r1, lsl #4
	bl FUN_02054070
	ldr r4, _020CE6C8 ; =g3DPlaneCtrl
	mov r8, #1
	ldr r0, [r4]
	mov r2, r8
	mov r1, #0xd
	bl FUN_ov16_02112724
	str r0, [r10, #8]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4]
	bl FUN_02059630
	str r0, [r10, #0xc]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4]
	bl FUN_02059630
	str r0, [r10, #0x10]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4]
	bl FUN_02059630
	mov r7, #0
	str r0, [r10, #0x14]
	ldr r1, [r10, #0xc]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	ldr r1, [r10, #0x10]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	ldr r1, [r10, #0x14]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	ldr r2, [r10, #4]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r1, [r10, #0x28]
	mov r0, r10
	bl FUN_ov0_020cde8c
	ldr r2, [r10, #0x20]
	ldr r3, [r10, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	mov r11, #2
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r2, r11
	mov r3, r8
	bl FUN_ov16_021142fc
	str r7, [sp]
	mov r5, #0x1d
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0211401c
	sub r6, r5, #0x25
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02113b78
	mov r5, #0x64
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #1
	mov r3, #0x1e
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #1
	mov r3, r7
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r3, [r10, #0x18]
	ldr r0, [r4]
	mul r12, r3, r5
	mov r3, r12, lsl #0x10
	ldr r1, [r10, #8]
	add r2, r8, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #2
	mov r3, #0x1f
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r1, [r10, #0x18]
	ldr r0, [r4]
	mov r1, r1, lsl #0x13
	mov r3, r1, asr #0x10
	ldr r1, [r10, #8]
	add r2, r8, #2
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #2
	mov r3, r5
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #3
	mov r3, #0x20
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #3
	mov r3, r6
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0x1c]
	add r2, r8, #3
	mul r1, r0, r5
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r3, r5
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #4
	mov r3, #0x21
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #4
	ldr r3, [r10, #0x18]
	mov r3, r3, lsl #0x13
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0x1c]
	add r2, r8, #4
	mul r1, r0, r5
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r3, r5
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #5
	mov r3, #0x22
	bl FUN_ov16_0211401c
	ldr r0, [r10, #0x1c]
	mov r3, r6
	mov r0, r0, lsl #0x13
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #5
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #5
	mov r3, r5
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #6
	mov r3, #0x23
	bl FUN_ov16_0211401c
	ldr r0, [r10, #0x1c]
	add r2, r8, #6
	mov r0, r0, lsl #0x13
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r3, r7
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #6
	ldr r3, [r10, #0x18]
	mul r6, r3, r5
	mov r3, r6, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #7
	mov r3, #0x24
	bl FUN_ov16_0211401c
	ldr r0, [r10, #0x1c]
	add r2, r8, #7
	mov r0, r0, lsl #0x13
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	ldr r3, [r10, #0x18]
	mov r3, r3, lsl #0x13
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #7
	mov r3, r5
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #8
	mov r3, #0x25
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	mov r3, r7
	add r2, r8, #8
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0x1c]
	add r2, r8, #8
	mul r1, r0, r5
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	ldr r3, [r10, #0x18]
	mul r6, r3, r5
	mov r3, r6, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #9
	mov r3, #0x26
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #9
	mov r3, r7
	bl FUN_ov16_02113b78
	ldr r1, [r10, #0x30]
	mov r0, #0x96
	mul r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #9
	ldr r3, [r10, #0x2c]
	mul r5, r3, r5
	mov r3, r5, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	str r7, [sp]
	mov r0, r10
	ldr r6, _020CE6CC ; =gFont8
	ldr r2, [r10, #0x10]
	ldr r1, [r6]
	ldr r3, _020CE6D0 ; =0x020D6058
	bl FUN_ov0_020cdf24
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xa
	ldr r3, [r10, #0x10]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xa
	mov r3, r7
	bl FUN_ov16_02113d88
	str r11, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xa
	mov r3, #5
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r10, #0x10]
	bl FUN_ov16_02111438
	mov r5, r0
	ldr r0, [r4]
	ldr r1, [r10, #0x10]
	bl FUN_ov16_02111458
	mov r1, r5, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xa
	bl FUN_ov16_02113d08
	str r7, [sp]
	ldr r1, [r6]
	mov r0, r10
	ldr r2, [r10, #0x14]
	ldr r3, _020CE6D4 ; =0x020D6064
	bl FUN_ov0_020cdf24
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xb
	ldr r3, [r10, #0x14]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xb
	mov r3, r7
	bl FUN_ov16_02113d88
	mov r0, #0xf
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xb
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r10, #0x14]
	bl FUN_ov16_02111438
	mov r5, r0
	ldr r0, [r4]
	ldr r1, [r10, #0x14]
	bl FUN_ov16_02111458
	mov r1, r5, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xb
	bl FUN_ov16_02113d08
	str r11, [sp]
	mov r3, r9
	mov r0, r10
	ldr r1, _020CE6D8 ; =gFont12
	ldr r2, [r10, #0xc]
	ldr r1, [r1]
	bl FUN_ov0_020cdf24
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xc
	ldr r3, [r10, #0xc]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xc
	mov r3, r7
	bl FUN_ov16_02113d88
	mov r3, r7
	str r8, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	add r2, r8, #0xc
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r10, #0xc]
	bl FUN_ov16_02111438
	mov r5, r0
	ldr r0, [r4]
	ldr r1, [r10, #0xc]
	bl FUN_ov16_02111458
	add r2, r8, #0xc
	mov r1, r5, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #8]
	bl FUN_ov16_02113d08
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE6C8: .word g3DPlaneCtrl
_020CE6CC: .word gFont8
_020CE6D0: .word ov0_020D6058
_020CE6D4: .word ov0_020D6064
_020CE6D8: .word gFont12
	arm_func_end FUN_ov0_020ce000

	arm_func_start FUN_ov0_020ce6dc
FUN_ov0_020ce6dc: ; 0x020CE6DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	ble _020CE704
	ldr r0, _020CE768 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #8]
_020CE704:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ble _020CE724
	ldr r0, _020CE768 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x10]
_020CE724:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	ble _020CE744
	ldr r0, _020CE768 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x14]
_020CE744:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _020CE768 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020CE768: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020ce6dc

	arm_func_start FUN_ov0_020ce76c
FUN_ov0_020ce76c: ; 0x020CE76C
	ldr r0, [r0, #8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bx lr
	arm_func_end FUN_ov0_020ce76c

	arm_func_start FUN_ov0_020ce780
FUN_ov0_020ce780: ; 0x020CE780
	ldr r3, [r0, #0xb0]
	ldr r2, [r0, #0xb4]
	cmp r1, #0
	sub r2, r3, r2
	str r2, [r0, #0xe4]
	ldrge r2, [r0, #0xa8]
	mov r12, #0
	cmpge r2, #0
	movlt r1, #0
	blt _020CE7B0
	cmp r1, r2
	subge r1, r2, #1
_020CE7B0:
	ldr r3, [r0, #0xb4]
	str r1, [r0, #0xb0]
	cmp r3, r1
	bgt _020CE7D0
	ldr r2, [r0, #0xac]
	add r2, r3, r2
	cmp r2, r1
	bgt _020CE7FC
_020CE7D0:
	cmp r3, r1
	ble _020CE7E0
	movne r12, #1
	b _020CE7F4
_020CE7E0:
	ldr r2, [r0, #0xac]
	mov r12, #1
	sub r1, r1, r2
	add r1, r1, #1
	cmp r3, r1
_020CE7F4:
	moveq r12, #0
	str r1, [r0, #0xb4]
_020CE7FC:
	ldr r3, [r0, #0xb0]
	ldr r2, [r0, #0xb4]
	ldr r1, [r0, #0xe4]
	sub r2, r3, r2
	str r2, [r0, #0xe0]
	cmp r2, r1
	mov r0, #1
	moveq r0, #0
	mov r1, #2
	cmp r12, #0
	moveq r1, #0
	add r0, r1, r0
	bx lr
	arm_func_end FUN_ov0_020ce780

	arm_func_start FUN_ov0_020ce830
FUN_ov0_020ce830: ; 0x020CE830
	cmp r1, #0
	blt _020CE84C
	ldr r3, [r0, #0xac]
	ldr r2, [r0, #0xa8]
	add r3, r1, r3
	cmp r3, r2
	ble _020CE854
_020CE84C:
	mov r0, #0
	bx lr
_020CE854:
	ldr r12, [r0, #0xb0]
	ldr r3, [r0, #0xb4]
	sub r2, r12, r1
	sub r3, r12, r3
	str r3, [r0, #0xe4]
	str r1, [r0, #0xb4]
	str r2, [r0, #0xe0]
	mov r0, #1
	cmp r2, r3
	moveq r0, #0
	add r0, r0, #2
	bx lr
	arm_func_end FUN_ov0_020ce830

	arm_func_start FUN_ov0_020ce884
FUN_ov0_020ce884: ; 0x020CE884
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _020CE8BC
	ldr r0, _020CE8CC ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020CE8BC
	ldr r2, [r4, #0x10]
	mov r1, #0
	mov r2, r2, lsl #2
	bl MI_CpuFill8
_020CE8BC:
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x14]
	ldmfd sp!, {r4, pc}
_020CE8CC: .word gAllocator
	arm_func_end FUN_ov0_020ce884

	arm_func_start FUN_ov0_020ce8d0
FUN_ov0_020ce8d0: ; 0x020CE8D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020CE8EC
	ldr r0, _020CE8F8 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020CE8EC:
	mov r0, #0
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_020CE8F8: .word gAllocator
	arm_func_end FUN_ov0_020ce8d0

	arm_func_start FUN_ov0_020ce8fc
FUN_ov0_020ce8fc: ; 0x020CE8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _020CE920
	ldr r0, [r6, #0x10]
	cmp r5, r0
	ldmlefd sp!, {r4, r5, r6, pc}
_020CE920:
	cmp r1, #0
	beq _020CE930
	ldr r0, _020CE958 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020CE930:
	mov r4, r5, lsl #2
	ldr r0, _020CE958 ; =gAllocator
	mov r1, r4
	str r5, [r6, #0x10]
	bl _ZN9Allocator8allocateEm
	mov r2, r4
	mov r1, #0
	str r0, [r6, #0x18]
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020CE958: .word gAllocator
	arm_func_end FUN_ov0_020ce8fc

	arm_func_start FUN_ov0_020ce95c
FUN_ov0_020ce95c: ; 0x020CE95C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	ldr r1, [r6, #0x1c]
	mov r5, r2
	cmp r1, #0
	beq _020CE980
	ldr r0, _020CE9F0 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020CE980:
	mov r0, r6
	mov r1, r4
	bl FUN_ov0_020ce8fc
	add r0, r5, #4
	bic r5, r0, #3
	ldr r1, [r6, #0x10]
	ldr r0, _020CE9F0 ; =gAllocator
	mul r1, r5, r1
	str r5, [r6, #0x14]
	bl _ZN9Allocator8allocateEm
	ldr r1, [r6, #0x10]
	mov r4, #0
	mul r2, r5, r1
	mov r1, r4
	str r0, [r6, #0x1c]
	bl MI_CpuFill8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_020CE9CC:
	ldr r1, [r6, #0x1c]
	ldr r0, [r6, #0x18]
	mla r1, r4, r5, r1
	str r1, [r0, r4, lsl #2]
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _020CE9CC
	ldmfd sp!, {r4, r5, r6, pc}
_020CE9F0: .word gAllocator
	arm_func_end FUN_ov0_020ce95c

	arm_func_start FUN_ov0_020ce9f4
FUN_ov0_020ce9f4: ; 0x020CE9F4
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0x18]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #0
	ldmltfd sp!, {r3, pc}
	ldr r3, [r0, #0x10]
	cmp r1, r3
	ldmgefd sp!, {r3, pc}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	ble _020CEA5C
	cmp r2, #0
	ldreq r0, [r12, r1, lsl #2]
	moveq r1, #0
	streqb r1, [r0]
	ldmeqfd sp!, {r3, pc}
	sub r3, r0, #1
	ldr r0, [r12, r1, lsl #2]
	mov r3, r3, lsl #0x10
	mov r1, r2
	mov r2, r3, lsr #0x10
	bl strncpy
	ldmfd sp!, {r3, pc}
_020CEA5C:
	str r2, [r12, r1, lsl #2]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov0_020ce9f4

	arm_func_start FUN_ov0_020cea64
FUN_ov0_020cea64: ; 0x020CEA64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r5, r2
	cmp r5, r0
	movge r5, r0
	ldr r0, [r7, #0x18]
	mov r6, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_020CEAA8:
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_ov0_020ce9f4
	cmp r6, #0
	beq _020CEAD0
	mov r0, r6
	bl strlen
	add r0, r0, #1
	add r6, r6, r0
_020CEAD0:
	add r4, r4, #1
	cmp r4, r5
	blt _020CEAA8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020cea64

	arm_func_start FUN_ov0_020ceae0
FUN_ov0_020ceae0: ; 0x020CEAE0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CEB3C ; =g3DPlaneCtrl
	mov r5, r1
	ldr r0, [r0]
	mov r4, r2
	mov r1, #7
	mov r2, #1
	bl FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r5, #0x45]
	ldrb r1, [r5, #0x45]
	cmp r0, #0
	ldreq r0, [r4]
	add r1, r1, #1
	streqb r0, [r5, #0x44]
	strb r1, [r5, #0x45]
	ldr r1, [r4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CEB3C: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020ceae0

	arm_func_start FUN_ov0_020ceb40
FUN_ov0_020ceb40: ; 0x020CEB40
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r0, [r0, #0x11a]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CEBAC ; =g3DPlaneCtrl
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r5, #0x51]
	ldrb r1, [r5, #0x51]
	cmp r0, #0
	ldreq r0, [r4]
	add r1, r1, #1
	streqb r0, [r5, #0x50]
	strb r1, [r5, #0x51]
	ldr r1, [r4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CEBAC: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020ceb40

	arm_func_start FUN_ov0_020cebb0
FUN_ov0_020cebb0: ; 0x020CEBB0
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r0, [r0, #0x119]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CEC1C ; =g3DPlaneCtrl
	mov r1, #4
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r5, #0x49]
	ldrb r1, [r5, #0x49]
	cmp r0, #0
	ldreq r0, [r4]
	add r1, r1, #1
	streqb r0, [r5, #0x48]
	strb r1, [r5, #0x49]
	ldr r1, [r4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CEC1C: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cebb0

	arm_func_start FUN_ov0_020cec20
FUN_ov0_020cec20: ; 0x020CEC20
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r0, [r0, #0x118]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CEC8C ; =g3DPlaneCtrl
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r5, #0x4d]
	ldrb r1, [r5, #0x4d]
	cmp r0, #0
	ldreq r0, [r4]
	add r1, r1, #1
	streqb r0, [r5, #0x4c]
	strb r1, [r5, #0x4d]
	ldr r1, [r4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CEC8C: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cec20

	arm_func_start FUN_ov0_020cec90
FUN_ov0_020cec90: ; 0x020CEC90
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r0, [r0, #0x118]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CECFC ; =g3DPlaneCtrl
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r5, #0x4f]
	ldrb r1, [r5, #0x4f]
	cmp r0, #0
	ldreq r0, [r4]
	add r1, r1, #1
	streqb r0, [r5, #0x4e]
	strb r1, [r5, #0x4f]
	ldr r1, [r4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CECFC: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cec90

	arm_func_start FUN_ov0_020ced00
FUN_ov0_020ced00: ; 0x020CED00
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r0, [r0, #0x118]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CED6C ; =g3DPlaneCtrl
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	ldr r1, [r4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r5, #0x4b]
	ldrb r1, [r5, #0x4b]
	cmp r0, #0
	ldreq r0, [r4]
	add r1, r1, #1
	streqb r0, [r5, #0x4a]
	strb r1, [r5, #0x4b]
	ldr r1, [r4]
	mov r0, #1
	add r1, r1, #1
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CED6C: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020ced00

	arm_func_start FUN_ov0_020ced70
FUN_ov0_020ced70: ; 0x020CED70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb r0, [r0, #0x118]
	mov r5, #9
	mov r9, r1
	cmp r0, #0
	mov r8, r2
	mov r7, r3
	moveq r5, #8
	mov r6, #0
	mov r4, #1
	ldr r10, _020CEDF8 ; =g3DPlaneCtrl
	b _020CEDE8
_020CEDA0:
	ldr r0, [r10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_02112724
	ldr r1, [r7]
	add r6, r6, #1
	add r1, r9, r1, lsl #2
	str r0, [r1, #4]
	ldrb r0, [r9, #0x47]
	cmp r0, #0
	ldreq r0, [r7]
	streqb r0, [r9, #0x46]
	ldrb r0, [r9, #0x47]
	add r0, r0, #1
	strb r0, [r9, #0x47]
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
_020CEDE8:
	cmp r6, r8
	blt _020CEDA0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CEDF8: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020ced70

	arm_func_start FUN_ov0_020cedfc
FUN_ov0_020cedfc: ; 0x020CEDFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldrb r1, [r10, #0x45]
	mov r6, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xc4]
	ldrb r1, [r10, #0x44]
	sub r0, r0, #0x10
	mov r5, #0x64
	mul r3, r0, r5
	add r0, r10, r1, lsl #2
	ldr r1, [r10, #0xc0]
	ldr r7, [r0, #4]
	mov r2, r1, lsl #0x10
	mov r0, r3, asr #2
	ldr r8, [r10, #0xc8]
	ldr r1, [r10, #0xac]
	ldr r4, _020CF0AC ; =g3DPlaneCtrl
	mul r9, r8, r1
	add r3, r3, r0, lsr #29
	add r8, r9, #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, r2, lsr #0x10
	mov r9, r3, asr #3
	bl FUN_ov16_02112b98
	ldr r2, [r6, #4]
	ldr r0, [r4]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrsh r2, [r10, #0xb8]
	ldrsh r3, [r10, #0xba]
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_02114248
	ldr r3, [r10, #0xc0]
	ldr r0, [r4]
	sub r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r1, r7
	mov r2, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldr r1, [r6, #0x110]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_021137dc
	mov r11, #8
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, #0x40
	bl FUN_ov16_02113d08
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, r6
	bl FUN_ov16_02113d88
	mov r0, #6
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, #0xc
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #2
	mov r3, r6
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #2
	mov r3, r6
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	mov r3, #1
	mov r1, r7
	mov r2, #3
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #3
	mov r3, r11
	bl FUN_ov16_02113b78
	str r5, [sp]
	mov r3, r9, lsl #0x10
	ldr r0, [r4]
	mov r2, #3
	mov r1, r7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	str r6, [sp]
	ldr r0, [r4]
	mov r3, #2
	mov r1, r7
	mov r2, #4
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r3, [r10, #0xc4]
	ldr r0, [r4]
	sub r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r2, #4
	mov r1, r7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	mov r3, #0xc
	mov r1, r7
	mov r2, #5
	bl FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #5
	mov r1, r7
	mov r3, r6
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #6
	mov r3, #0xd
	bl FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r7
	mov r2, #6
	bl FUN_ov16_02113b78
	mov r0, r9, lsl #0x10
	str r5, [sp]
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	mov r2, #6
	mov r1, r7
	bl FUN_ov16_02113c60
	str r6, [sp]
	mov r5, #7
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, #0xe
	bl FUN_ov16_0211401c
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r1, [r10, #0xc4]
	ldr r0, [r4]
	sub r1, r1, #8
	mov r3, r1, lsl #0x10
	mov r1, r7
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF0AC: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cedfc

	arm_func_start FUN_ov0_020cf0b0
FUN_ov0_020cf0b0: ; 0x020CF0B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r9, r0
	ldrb r0, [r9, #0x11a]
	mov r4, r1
	cmp r0, #0
	ldrneb r0, [r4, #0x51]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r1, [r4, #0x50]
	ldr r0, [r4, #0xc0]
	ldr r5, _020CF258 ; =g3DPlaneCtrl
	add r1, r4, r1, lsl #2
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r8, [r1, #4]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r2, [r9, #4]
	ldr r0, [r5]
	mov r1, r8
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrsh r2, [r4, #0xb8]
	ldrsh r3, [r4, #0xba]
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov16_02114248
	mov r7, #0x14
	mov r6, #0
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211346c
	ldr r2, [r4, #0xc4]
	ldr r0, [r5]
	sub r2, r2, #0x18
	mov r2, r2, lsl #0x10
	mov r1, r8
	mov r2, r2, asr #0x10
	mov r3, r6
	bl FUN_ov16_02112f04
	ldrb r0, [r9, #0x11b]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r9, #0x14c]
	ldr r0, [r9, #0x12c]
	mov r1, r1, lsl #0x10
	mov r2, r0, lsl #0x10
	ldr r4, _020CF25C ; =gSprButtonCtrl
	mov r1, r1, lsr #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, sp, #0xc
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r8
	bl FUN_ov16_0210efc8
	ldr r1, [sp, #8]
	mov r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov16_0210e674
	ldr r1, [r9, #0x150]
	mov r0, r5
	bl FUN_ov16_0210e694
	mov r4, #1
	strh r8, [r5, #0x34]
	add r0, r5, #0x3a
	mov r1, r6
	mov r2, r4
	mov r3, r6
	strb r6, [r5, #0x38]
	bl FUN_ov16_0210e6fc
	mov r2, r7
	add r0, r5, #0x3a
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r4
	add r0, r5, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #0x15
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CF258: .word g3DPlaneCtrl
_020CF25C: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020cf0b0

	arm_func_start FUN_ov0_020cf260
FUN_ov0_020cf260: ; 0x020CF260
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrb r0, [r6, #0x119]
	mov r4, r1
	cmp r0, #0
	ldrneb r0, [r4, #0x49]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r1, [r4, #0x48]
	ldrb r0, [r6, #0x118]
	ldr r2, [r4, #0xc4]
	add r1, r4, r1, lsl #2
	cmp r0, #0
	ldr r8, [r1, #4]
	mov r0, #0x64
	ldrsh r1, [r4, #0xbc]
	beq _020CF2CC
	sub r3, r2, #0x20
	mul r5, r3, r0
	mov r0, r5, asr #2
	add r0, r5, r0, lsr #29
	add r1, r1, r2
	mov r9, r0, asr #3
	sub r10, r1, #0x18
	b _020CF2E8
_020CF2CC:
	sub r3, r2, #0x10
	mul r5, r3, r0
	mov r0, r5, asr #2
	add r0, r5, r0, lsr #29
	add r1, r1, r2
	mov r9, r0, asr #3
	sub r10, r1, #8
_020CF2E8:
	ldr r0, [r4, #0xc0]
	ldr r5, _020CF478 ; =g3DPlaneCtrl
	sub r0, r0, #7
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r2, [r6, #4]
	ldr r0, [r5]
	mov r1, r8
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrsh r2, [r4, #0xb8]
	ldr r0, [r5]
	mov r1, r8
	ldrsh r3, [r4, #0xba]
	bl FUN_ov16_02114248
	mov r7, #0
	str r7, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r6, #1
	mov r2, r6
	mov r3, #0xf
	bl FUN_ov16_0211401c
	mov r2, r6
	ldrsh r0, [r4, #0xbe]
	mov r1, r8
	str r0, [sp]
	ldr r0, [r5]
	ldrsh r3, [r4, #0xbc]
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r6, #2
	mov r2, r6
	mov r3, #0x10
	bl FUN_ov16_0211401c
	ldrsh r0, [r4, #0xbe]
	mov r1, r8
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5]
	ldrsh r3, [r4, #0xbc]
	add r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r2, r6
	mov r0, r9, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, #0x64
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov16_02113c60
	str r7, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r6, #3
	mov r2, r6
	mov r3, #0x11
	bl FUN_ov16_0211401c
	mov r2, r6
	mov r0, r10, lsl #0x10
	mov r3, r0, asr #0x10
	ldrsh r0, [r4, #0xbe]
	mov r1, r8
	str r0, [sp]
	ldr r0, [r5]
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r6, #4
	mov r2, r6
	mov r3, #0x16
	bl FUN_ov16_0211401c
	ldr r1, [r4, #0xc0]
	ldr r0, [r5]
	sub r1, r1, #8
	mov r3, r1, lsl #0x10
	mov r1, r8
	mov r2, r6
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldrsh r0, [r4, #0xbe]
	mov r1, r8
	mov r2, r6
	str r0, [sp]
	ldrsh r3, [r4, #0xbc]
	ldr r0, [r5]
	sub r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CF478: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020cf260

	arm_func_start FUN_ov0_020cf47c
FUN_ov0_020cf47c: ; 0x020CF47C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r8, r0
	ldrb r0, [r8, #0x118]
	mov r10, r1
	cmp r0, #0
	ldrneb r0, [r10, #0x4d]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r1, [r10, #0x4c]
	ldr r0, [r10, #0xc0]
	ldr r9, _020CF630 ; =g3DPlaneCtrl
	add r1, r10, r1, lsl #2
	sub r0, r0, #8
	mov r2, r0, lsl #0x10
	ldr r7, [r1, #4]
	ldr r0, [r9]
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r2, [r8, #4]
	ldr r0, [r9]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrsh r2, [r10, #0xb8]
	ldrsh r3, [r10, #0xba]
	ldr r0, [r9]
	mov r1, r7
	bl FUN_ov16_02114248
	mov r6, #0
	str r6, [sp]
	mov r5, #1
	mov r4, #0x17
	ldr r0, [r9]
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r0, #0x10
	str r0, [sp]
	ldr r2, [r10, #0xc4]
	ldr r0, [r9]
	sub r2, r2, #0x18
	mov r2, r2, lsl #0x10
	mov r3, r2, asr #0x10
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_02113b78
	ldrb r0, [r8, #0x11b]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x14c]
	ldr r0, [r8, #0x124]
	mov r1, r1, lsl #0x10
	mov r2, r0, lsl #0x10
	ldr r9, _020CF634 ; =gSprButtonCtrl
	mov r1, r1, lsr #0x10
	ldr r0, [r9]
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r10, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, sp, #0xc
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r9]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r7
	bl FUN_ov16_0210efc8
	ldr r1, [sp, #8]
	mov r0, r10
	str r1, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov16_0210e674
	ldr r1, [r8, #0x150]
	mov r0, r10
	bl FUN_ov16_0210e694
	strh r7, [r10, #0x34]
	add r0, r10, #0x3a
	mov r1, r6
	mov r2, r5
	mov r3, r6
	strb r6, [r10, #0x38]
	bl FUN_ov16_0210e6fc
	mov r2, r4
	add r0, r10, #0x3a
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r5
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #0x18
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF630: .word g3DPlaneCtrl
_020CF634: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020cf47c

	arm_func_start FUN_ov0_020cf638
FUN_ov0_020cf638: ; 0x020CF638
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r8, r0
	ldrb r0, [r8, #0x118]
	mov r10, r1
	cmp r0, #0
	ldrneb r0, [r10, #0x4f]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r10, #0xc8]
	ldr r0, [r10, #0xac]
	ldrb r2, [r10, #0x4e]
	mul r0, r1, r0
	add r1, r10, r2, lsl #2
	ldr r7, [r1, #4]
	sub r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [r10, #0xc0]
	ldr r9, _020CF808 ; =g3DPlaneCtrl
	sub r0, r0, #8
	mov r2, r0, lsl #0x10
	ldr r0, [r9]
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r2, [r8, #4]
	ldr r0, [r9]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrsh r2, [r10, #0xb8]
	ldrsh r3, [r10, #0xba]
	ldr r0, [r9]
	mov r1, r7
	bl FUN_ov16_02114248
	mov r6, #0
	str r6, [sp]
	mov r5, #1
	mov r4, #0x19
	ldr r0, [r9]
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_0211401c
	ldr r0, [sp, #8]
	mov r1, r7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [r10, #0xc4]
	ldr r0, [r9]
	sub r3, r3, #0x18
	mov r3, r3, lsl #0x10
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldrb r0, [r8, #0x11b]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x14c]
	ldr r0, [r8, #0x128]
	mov r1, r1, lsl #0x10
	mov r2, r0, lsl #0x10
	ldr r9, _020CF80C ; =gSprButtonCtrl
	mov r1, r1, lsr #0x10
	ldr r0, [r9]
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r10, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, sp, #0xc
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r9]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r7
	bl FUN_ov16_0210efc8
	ldr r1, [sp, #8]
	mov r0, r10
	str r1, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov16_0210e674
	ldr r1, [r8, #0x150]
	mov r0, r10
	bl FUN_ov16_0210e694
	strh r7, [r10, #0x34]
	add r0, r10, #0x3a
	mov r1, r6
	mov r2, r5
	mov r3, r6
	strb r6, [r10, #0x38]
	bl FUN_ov16_0210e6fc
	mov r2, r4
	add r0, r10, #0x3a
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r5
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #0x1a
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF808: .word g3DPlaneCtrl
_020CF80C: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020cf638

	arm_func_start FUN_ov0_020cf810
FUN_ov0_020cf810: ; 0x020CF810
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r9, r0
	ldrb r0, [r9, #0x118]
	mov r8, r1
	cmp r0, #0
	ldrneb r0, [r8, #0x4b]
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r1, [r8, #0x4a]
	ldr r0, [r8, #0xc0]
	ldr r4, _020CF9FC ; =g3DPlaneCtrl
	add r1, r8, r1, lsl #2
	sub r0, r0, #8
	mov r2, r0, lsl #0x10
	ldr r7, [r1, #4]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r2, [r9, #4]
	ldr r0, [r4]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldrsh r1, [r8, #0xba]
	ldrsh r5, [r8, #0xb8]
	ldr r2, [r8, #0xc4]
	add r1, r1, #0x20
	add r2, r5, r2
	sub r2, r2, #0x18
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, asr #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, r2, asr #0x10
	bl FUN_ov16_02114248
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r5, #1
	mov r4, #0x1b
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_0211401c
	ldrb r0, [r9, #0x11b]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0xc8]
	ldr r0, [r8, #0xac]
	ldr r10, _020CFA00 ; =gSprButtonCtrl
	mul r0, r1, r0
	sub r0, r0, #0x40
	str r0, [sp, #8]
	ldrsh r2, [r8, #0xb8]
	ldr r1, [r8, #0xc4]
	ldrsh r0, [r8, #0xba]
	add r1, r2, r1
	sub r1, r1, #0x18
	add r0, r0, #0x20
	strh r1, [r8, #0xd0]
	strh r6, [r8, #0xd4]
	strh r0, [r8, #0xd2]
	ldr r0, [sp, #8]
	strh r0, [r8, #0xd6]
	ldr r1, [r9, #0x14c]
	ldr r0, [r9, #0x120]
	mov r1, r1, lsl #0x10
	mov r2, r0, lsl #0x10
	ldr r0, [r10]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r8, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, sp, #0xc
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r10]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r7
	bl FUN_ov16_0210efc8
	ldr r1, [sp, #8]
	mov r0, r8
	str r1, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov16_0210e674
	ldr r1, [r9, #0x150]
	mov r0, r8
	bl FUN_ov16_0210e694
	strh r7, [r8, #0x34]
	add r0, r8, #0x3a
	mov r1, r6
	mov r2, r5
	mov r3, r6
	strb r6, [r8, #0x38]
	bl FUN_ov16_0210e6fc
	mov r2, r4
	add r0, r8, #0x3a
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r5
	add r0, r8, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r8, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #0x1c
	bl FUN_ov16_0210e720
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF9FC: .word g3DPlaneCtrl
_020CFA00: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020cf810

	arm_func_start FUN_ov0_020cfa04
FUN_ov0_020cfa04: ; 0x020CFA04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r5, r1
	ldr r1, [r5, #0xc4]
	mov r6, r0
	sub r0, r1, #0x14
	cmp r0, #0x40
	movgt r0, #0x80
	strgt r0, [sp, #4]
	movle r0, #0x40
	strle r0, [sp, #4]
	ldrb r0, [r5, #0x47]
	mov r4, r2
	cmp r0, r4
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r5, #0x46]
	ldr r0, [r5, #0xac]
	mov r2, #2
	add r1, r1, r4
	add r1, r5, r1, lsl #2
	cmp r4, r0
	ldr r9, [r1, #4]
	blt _020CFA7C
	ldr r0, _020CFFF8 ; =g3DPlaneCtrl
	mov r1, r9
	ldr r0, [r0]
	bl FUN_ov16_02114370
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFA7C:
	ldr r0, _020CFFF8 ; =g3DPlaneCtrl
	mov r1, r9
	ldr r0, [r0]
	mov r3, #1
	bl FUN_ov16_021142fc
	ldr r0, [r5, #0xb4]
	ldr r1, [r5, #0xa4]
	add r0, r0, r4
	add r0, r1, r0, lsl #3
	ldrb r0, [r0, #2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020CFAF8
_020CFAB0: ; jump table
	b _020CFAC0 ; case 0
	b _020CFAD0 ; case 1
	b _020CFAE0 ; case 2
	b _020CFAE0 ; case 3
_020CFAC0:
	mov r2, #3
	mov r1, #4
	mov r0, #5
	b _020CFAEC
_020CFAD0:
	mov r2, #6
	mov r1, #7
	mov r0, #8
	b _020CFAEC
_020CFAE0:
	mov r2, #9
	mov r1, #0xa
	mov r0, #0xb
_020CFAEC:
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_020CFAF8:
	ldr r0, [r5, #0xc4]
	ldr r1, [r5, #0xc8]
	sub r2, r0, #0x10
	mov r0, #0x64
	mul r3, r2, r0
	mul r2, r4, r1
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	add r10, r2, #0x10
	ldr r2, [r6, #4]
	ldr r7, _020CFFF8 ; =g3DPlaneCtrl
	mov r11, r0, asr #3
	ldr r0, [r7]
	mov r1, r9
	and r2, r2, #0xff
	mov r8, #0
	bl FUN_ov16_02112950
	ldrsh r2, [r5, #0xb8]
	ldrsh r3, [r5, #0xba]
	ldr r0, [r7]
	mov r1, r9
	bl FUN_ov16_02114248
	ldr r3, [r5, #0xc0]
	ldr r0, [r7]
	sub r3, r3, #3
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #1
	mov r3, #0x12
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #1
	mov r3, #8
	bl FUN_ov16_02113b78
	mov r0, #0xc8
	str r0, [sp]
	mov r3, r11, lsl #0x10
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldr r3, [r5, #0xc0]
	ldr r0, [r7]
	sub r3, r3, #0xc
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #2
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #2
	mov r3, #0x27
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #2
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #2
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldr r3, [r5, #0xc0]
	ldr r0, [r7]
	sub r3, r3, #0xc
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #3
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #3
	mov r3, #0x29
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [r5, #0xc4]
	ldr r0, [r7]
	sub r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #3
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r3, #2
	mov r1, r9
	add r2, r8, #3
	bl FUN_ov16_02113f7c
	ldr r3, [r6, #0x114]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r3, [r5, #0xc0]
	ldr r0, [r7]
	sub r3, r3, #4
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #4
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add r0, r10, #2
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #4
	mov r3, #0xa
	bl FUN_ov16_02113b78
	ldr r0, [sp, #4]
	mov r1, r9
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r7]
	add r2, r8, #4
	bl FUN_ov16_02113d08
	mov r0, #0xc
	mul r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #4
	mov r3, r8
	bl FUN_ov16_02113d88
	ldr r3, [r5, #0xc0]
	ldr r0, [r7]
	sub r3, r3, #2
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #8]
	mov r1, r9
	add r2, r8, #5
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #5
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r1, [r5, #0xc0]
	ldr r0, [r7]
	sub r1, r1, #2
	mov r3, r1, lsl #0x10
	mov r1, r9
	add r2, r8, #6
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0xc]
	mov r1, r9
	add r2, r8, #6
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r3, #8
	mov r1, r9
	add r2, r8, #6
	bl FUN_ov16_02113b78
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, #0x64
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #6
	bl FUN_ov16_02113c60
	ldr r3, [r5, #0xc0]
	ldr r0, [r7]
	sub r3, r3, #2
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #7
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0x10]
	mov r1, r9
	add r2, r8, #7
	bl FUN_ov16_0211401c
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [r5, #0xc4]
	ldr r0, [r7]
	sub r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r1, r9
	add r2, r8, #7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldrb r0, [r6, #0x118]
	cmp r0, #0
	beq _020CFF0C
	ldr r1, [r5, #0xc0]
	ldr r0, [r7]
	sub r1, r1, #5
	mov r3, r1, lsl #0x10
	mov r1, r9
	add r2, r8, #8
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r9
	add r2, r8, #8
	mov r3, #0x13
	bl FUN_ov16_0211401c
	add r2, r8, #8
	mov r0, r10, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r9
	ldr r3, [r5, #0xc4]
	sub r3, r3, #0x18
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_020CFF0C:
	ldrb r1, [r6, #0x118]
	ldr r0, [r5, #0xc4]
	cmp r1, #0
	ldrne r1, [r5, #0xd8]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	movne r1, r1, lsl #0x10
	subne r0, r0, r1, asr #16
	movne r0, r0, lsl #0x10
	ldrb r1, [r6, #0x11b]
	movne r0, r0, asr #0x10
	cmp r1, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r1, [r5, #0xb8]
	add r2, r5, r4, lsl #3
	ldr r3, _020CFFFC ; =gSprButtonCtrl
	strh r1, [r2, #0x54]
	ldrsh r1, [r5, #0xba]
	add r1, r1, r10
	strh r1, [r2, #0x56]
	strh r0, [r2, #0x58]
	ldr r0, [r5, #0xc8]
	strh r0, [r2, #0x5a]
	ldr r1, [r6, #0x11c]
	ldr r0, [r6, #0x14c]
	add r2, r1, r4
	mov r1, r0, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r0, [r3]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r7, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r3, r5, r4, lsl #3
	ldrsh r1, [r3, #0x5a]
	str r1, [sp]
	ldrsh r1, [r3, #0x54]
	ldrsh r2, [r3, #0x56]
	ldrsh r3, [r3, #0x58]
	bl FUN_ov16_0210e674
	ldr r1, [r6, #0x150]
	mov r0, r7
	bl FUN_ov16_0210e694
	strh r9, [r7, #0x34]
	mov r0, #0
	ldr r1, _020D0000 ; =0x0210F98C
	strb r0, [r7, #0x38]
	ldr r0, _020D0004 ; =0x0210FA70
	str r1, [r7, #0x1c]
	ldr r1, _020D0008 ; =FUN_ov16_0210fb10
	str r0, [r7, #0x20]
	ldr r0, _020D000C ; =0x0210FB60
	str r1, [r7, #0x24]
	str r0, [r7, #0x28]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFFF8: .word g3DPlaneCtrl
_020CFFFC: .word gSprButtonCtrl
_020D0000: .word FUN_ov16_0210f98c
_020D0004: .word FUN_ov16_0210fa70
_020D0008: .word FUN_ov16_0210fb10
_020D000C: .word FUN_ov16_0210fb60
	arm_func_end FUN_ov0_020cfa04

	arm_func_start FUN_ov0_020d0010
FUN_ov0_020d0010: ; 0x020D0010
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrb r0, [r6, #0x11b]
	mov r5, r1
	cmp r0, #0
	ldrne r2, [r6, #0x130]
	cmpne r2, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6, #0x14c]
	ldr r0, _020D00B4 ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r4, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r2, [r5, #0xc8]
	ldr r1, [r5, #0xac]
	ldr r3, [r5, #0xc4]
	mul r1, r2, r1
	add r1, r1, #0x10
	str r1, [sp]
	ldrsh r1, [r5, #0xb8]
	ldrsh r2, [r5, #0xba]
	add r3, r3, #8
	bl FUN_ov16_0210e674
	ldr r1, [r6, #0x150]
	mov r0, r4
	bl FUN_ov16_0210e694
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D00B4: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020d0010

	arm_func_start FUN_ov0_020d00b8
FUN_ov0_020d00b8: ; 0x020D00B8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0x11b]
	cmp r0, #0
	ldrne r2, [r4, #0x134]
	cmpne r2, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x14c]
	ldr r0, _020D0148 ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210e9e4
	movs r6, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r5, #0
	mov r3, #0xc0
	mov r1, r5
	mov r2, r5
	str r3, [sp]
	mov r3, #0x100
	bl FUN_ov16_0210e674
	ldr r1, [r4, #0x150]
	mov r0, r6
	bl FUN_ov16_0210e694
	str r5, [r6, #0x1c]
	str r5, [r6, #0x20]
	str r5, [r6, #0x24]
	str r5, [r6, #0x28]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D0148: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020d00b8

	arm_func_start FUN_ov0_020d014c
FUN_ov0_020d014c: ; 0x020D014C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	mov r10, r0
	ldr r5, _020D021C ; =g3DPlaneCtrl
	ldr r1, [r10, #0x110]
	mov r8, #0
	ldr r0, [r5]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r8, [sp, #0x20]
	bl FUN_0205935c
	ldr r9, [sp, #0x20]
	cmp r9, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r5]
	ldr r1, [r10, #0x110]
	bl FUN_ov16_02111458
	mov r6, #1
	ldr r4, _020D0220 ; =gFont8
	mov r7, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	bl FUN_02043310
	stmia sp, {r7, r8}
	str r8, [sp, #8]
	str r6, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r8, [sp, #0x18]
	str r8, [sp, #0x1c]
	ldr r0, [r4]
	add r1, r10, #0xf0
	mov r2, r9
	mov r3, #0x40
	bl FUN_020425fc
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl DC_FlushRange
	ldr r0, [r4]
	bl FUN_0204331c
	ldr r1, [r10, #0x110]
	ldr r0, [r5]
	ldr r3, [sp, #0x24]
	mov r2, r9
	str r8, [sp]
	str r8, [sp, #4]
	str r8, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D021C: .word g3DPlaneCtrl
_020D0220: .word gFont8
	arm_func_end FUN_ov0_020d014c

	arm_func_start FUN_ov0_020d0224
FUN_ov0_020d0224: ; 0x020D0224
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r10, r0
	ldr r0, _020D0388 ; =g3DPlaneCtrl
	ldr r1, [r10, #0x114]
	mov r4, #0
	ldr r0, [r0]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r4, [sp, #0x20]
	bl FUN_0205935c
	ldr r5, [sp, #0x20]
	cmp r5, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020D038C ; =gFont12
	mov r1, r4
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02043310
	ldr r0, [r10, #0xcc]
	ldr r1, [r10, #0x114]
	sub r0, r0, #0x14
	cmp r0, #0x40
	ldr r0, _020D0388 ; =g3DPlaneCtrl
	mov r7, #0x80
	ldr r0, [r0]
	movle r7, #0x40
	bl FUN_ov16_02111458
	mov r6, #0
	mov r8, r0
	mov r4, r6
	mov r11, #1
	b _020D0334
_020D02AC:
	ldr r1, [r10, #0xbc]
	ldr r0, [r10, #0xb0]
	add r2, r1, r6
	cmp r2, r0
	bge _020D0330
	ldr r0, [r10, #0xac]
	ldr r1, [r10, #0x108]
	add r0, r0, r2, lsl #3
	ldr r9, [r1, r2, lsl #2]
	ldrb r0, [r0, #2]
	cmp r0, #3
	bne _020D02F0
	ldr r1, _020D0390 ; =0x020D6070
	mov r0, r9
	bl STD_CompareString
	cmp r0, #0
	ldrne r9, _020D0394 ; =0x020D6078
_020D02F0:
	mov r0, #0xc
	mul r0, r6, r0
	str r8, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _020D038C ; =gFont12
	str r4, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r9
	mov r2, r5
	mov r3, r7
	bl FUN_020425fc
_020D0330:
	add r6, r6, #1
_020D0334:
	ldr r0, [r10, #0xb4]
	cmp r6, r0
	blt _020D02AC
	ldr r1, [sp, #0x24]
	mov r0, r5
	bl DC_FlushRange
	ldr r0, _020D038C ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _020D0388 ; =g3DPlaneCtrl
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x114]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0388: .word g3DPlaneCtrl
_020D038C: .word gFont12
_020D0390: .word ov0_020D6070
_020D0394: .word ov0_020D6078
	arm_func_end FUN_ov0_020d0224

	arm_func_start FUN_ov0_020d0398
FUN_ov0_020d0398: ; 0x020D0398
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	ldrb r0, [r0, #0x119]
	mov r4, r1
	cmp r0, #0
	ldrneb r0, [r4, #0x49]
	cmpne r0, #0
	ldrneb r0, [r4, #0x48]
	addne r0, r4, r0, lsl #2
	ldrne r0, [r0, #4]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0xe4]
	cmp r1, #0
	blt _020D03E4
	ldr r0, [r4, #0xac]
	cmp r1, r0
	ble _020D03EC
_020D03E4:
	mov r0, #0
	str r0, [sp, #0x28]
_020D03EC:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x48]
	ldr r0, _020D0450 ; =gSprAnimCtrl
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #4]
	bl FUN_ov16_0210e29c
	ldrb r1, [r4, #0x48]
	ldr r0, _020D0454 ; =g3DPlaneCtrl
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #4]
	mov r3, #1
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_020D0450: .word gSprAnimCtrl
_020D0454: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020d0398

	arm_func_start FUN_ov0_020d0458
FUN_ov0_020d0458: ; 0x020D0458
	stmfd sp!, {r3, lr}
	ldrb r3, [r1, #0x49]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r12, [r1, #0xe0]
	cmp r12, #0
	blt _020D0480
	ldr r3, [r1, #0xac]
	cmp r12, r3
	ble _020D04A0
_020D0480:
	ldrb r3, [r1, #0x48]
	ldr r0, _020D04BC ; =g3DPlaneCtrl
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #4]
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_020D04A0:
	str r2, [sp]
	ldr r2, [r1, #0xe0]
	add r3, r1, r2, lsl #3
	ldrsh r2, [r3, #0x54]
	ldrsh r3, [r3, #0x56]
	bl FUN_ov0_020d0398
	ldmfd sp!, {r3, pc}
_020D04BC: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020d0458

	arm_func_start FUN_ov0_020d04c0
FUN_ov0_020d04c0: ; 0x020D04C0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldrb r0, [r6, #0x118]
	mov r12, r1
	mov r5, r2
	cmp r0, #0
	ldrneb r0, [r12, #0x4b]
	mov r4, r3
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r5}
	ldr r0, [sp, #0x30]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r12, #0x4a]
	ldr r0, _020D0554 ; =gSprAnimCtrl
	mov r2, r1
	add r3, r12, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #4]
	bl FUN_ov16_0210e29c
	ldr r1, [r6, #0x120]
	ldr r0, _020D0558 ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D0554: .word gSprAnimCtrl
_020D0558: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020d04c0

	arm_func_start FUN_ov0_020d055c
FUN_ov0_020d055c: ; 0x020D055C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrb r0, [r6, #0x118]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldrneb r0, [r5, #0x4b]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrsh r1, [r5, #0xd6]
	ldr r0, [r5, #0xb4]
	ldr r2, [r5, #0xa8]
	mul r0, r1, r0
	ldr r1, [r5, #0xac]
	sub r1, r2, r1
	bl _s32_div_f
	str r4, [sp]
	mov r4, r0
	ldrsh r3, [r5, #0xd2]
	ldrsh r2, [r5, #0xd0]
	mov r0, r6
	mov r1, r5
	add r3, r3, r4
	bl FUN_ov0_020d04c0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d055c

	arm_func_start FUN_ov0_020d05cc
FUN_ov0_020d05cc: ; 0x020D05CC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, #0
	mov r1, r5
	add r0, r6, #8
	mov r2, #0xe8
	bl MI_CpuFill8
	mov r1, r5
	add r0, r6, #0xf0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r4, #4
	mov r1, r5
	mov r2, r4
	add r0, r6, #4
	bl MI_CpuFill8
	add r0, r6, #0x110
	mov r1, r5
	mov r2, #8
	bl MI_CpuFill8
	mov r2, r4
	str r5, [r6, #0x14c]
	str r5, [r6, #0x150]
	strb r5, [r6, #0x118]
	strb r5, [r6, #0x119]
	strb r5, [r6, #0x11a]
	strb r5, [r6, #0x11b]
	mov r0, r6
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	mov r1, #6
	str r1, [sp, #0xc]
	mov r1, #7
	mov r3, #3
	bl FUN_ov0_020d069c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d05cc

	arm_func_start FUN_ov0_020d0674
FUN_ov0_020d0674: ; 0x020D0674
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov0_020d08c4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020d0674

	arm_func_start FUN_ov0_020d0694
FUN_ov0_020d0694: ; 0x020D0694
	add r0, r0, #8
	bx lr
	arm_func_end FUN_ov0_020d0694

	arm_func_start FUN_ov0_020d069c
FUN_ov0_020d069c: ; 0x020D069C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0x14]
	ldr lr, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	str r1, [r0, #0x11c]
	str r2, [r0, #0x12c]
	str r3, [r0, #0x120]
	str r5, [r0, #0x124]
	str r4, [r0, #0x128]
	str lr, [r0, #0x130]
	str r12, [r0, #0x134]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020d069c

	arm_func_start FUN_ov0_020d06d0
FUN_ov0_020d06d0: ; 0x020D06D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	cmp r1, #0
	mov r6, r0
	mov r5, r2
	addle sp, sp, #4
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x24]
	str r0, [r6, #0x150]
	cmp r5, #0xa
	movgt r5, #0xa
	mov r0, #0
	str r2, [r6, #0x14c]
	strb r0, [r6, #0x118]
	cmp r5, #4
	ble _020D0724
	cmp r3, #0
	movne r0, #1
	strneb r0, [r6, #0x118]
_020D0724:
	ldrb r7, [sp, #0x20]
	ldrb r3, [sp, #0x2c]
	ldrb r2, [sp, #0x30]
	mov r4, #0
	str r1, [r6, #0xb0]
	mov r1, r4
	add r0, r6, #8
	strb r7, [r6, #0x119]
	strb r3, [r6, #0x11a]
	strb r2, [r6, #0x11b]
	str r5, [r6, #0xb4]
	bl FUN_ov0_020ce780
	mov r3, #0x10
	ldr r1, [r6, #0xb0]
	ldr r7, [sp, #0x34]
	mov r2, #0x20
	ldr r0, _020D08BC ; =gAllocator
	mov r1, r1, lsl #3
	strh r4, [r6, #0xc4]
	strh r4, [r6, #0xc6]
	str r7, [r6, #0xcc]
	str r3, [r6, #0xd0]
	str r3, [r6, #0xe0]
	str r2, [r6, #0xe4]
	bl _ZN9Allocator8allocateEm
	ldr r2, [r6, #0xb0]
	mov r1, r4
	mov r2, r2, lsl #3
	str r0, [r6, #0xac]
	bl MI_CpuFill8
	ldr r1, [r6, #0xb0]
	add r0, r6, #0xf0
	bl FUN_ov0_020ce8fc
	mov r0, #0xd
	mul r0, r5, r0
	cmp r0, #0x40
	ldr r0, [r6, #0xcc]
	mov r5, #4
	mov r7, #0
	ldr r4, _020D08C0 ; =g3DPlaneCtrl
	sub r0, r0, #0x14
	movle r5, #3
	cmp r0, #0x40
	mov r8, #4
	ldr r0, [r4]
	mov r2, r7
	mov r1, #3
	movle r8, #3
	bl FUN_02059630
	str r0, [r6, #0x110]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_02059630
	str r0, [r6, #0x114]
	mov r5, #1
	ldr r1, [r6, #0x110]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r7
	bl FUN_02059038
	ldr r0, [r4]
	ldr r1, [r6, #0x114]
	mov r2, r5
	mov r3, r7
	bl FUN_02059038
	add r4, sp, #0
	mov r0, r6
	add r1, r6, #8
	mov r2, r4
	str r7, [sp]
	bl FUN_ov0_020ceae0
	mov r0, r6
	add r1, r6, #8
	mov r2, r4
	bl FUN_ov0_020ceb40
	mov r0, r6
	add r1, r6, #8
	mov r2, r4
	bl FUN_ov0_020cebb0
	mov r0, r6
	add r1, r6, #8
	mov r2, r4
	bl FUN_ov0_020cec20
	mov r0, r6
	add r1, r6, #8
	mov r2, r4
	bl FUN_ov0_020cec90
	mov r0, r6
	add r1, r6, #8
	mov r2, r4
	bl FUN_ov0_020ced00
	ldr r2, [r6, #0xb4]
	mov r3, r4
	mov r0, r6
	add r1, r6, #8
	bl FUN_ov0_020ced70
	mov r0, r6
	bl FUN_ov0_020d09b8
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D08BC: .word gAllocator
_020D08C0: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020d06d0

	arm_func_start FUN_ov0_020d08c4
FUN_ov0_020d08c4: ; 0x020D08C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r7, r4, #8
	mov r6, #0
	ldr r5, _020D09AC ; =g3DPlaneCtrl
	b _020D08F8
_020D08DC:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020D08F4
	ldr r0, [r5]
	bl FUN_ov16_021128c4
_020D08F4:
	add r6, r6, #1
_020D08F8:
	cmp r6, #0x10
	blt _020D08DC
	ldr r1, [r7, #0xa4]
	cmp r1, #0
	beq _020D0914
	ldr r0, _020D09B0 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020D0914:
	mov r6, #0
	mov r0, r7
	mov r1, r6
	mov r2, #0xe8
	bl MI_CpuFill8
	add r0, r4, #0xf0
	bl FUN_ov0_020ce8d0
	add r0, r4, #0xf0
	bl FUN_ov0_020ce884
	mov r1, r6
	add r0, r4, #0xf0
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r5, _020D09AC ; =g3DPlaneCtrl
	b _020D096C
_020D0950:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x110]
	cmp r1, #0
	beq _020D0968
	ldr r0, [r5]
	bl FUN_02058ee0
_020D0968:
	add r6, r6, #1
_020D096C:
	cmp r6, #2
	blt _020D0950
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x110
	mov r2, #8
	bl MI_CpuFill8
	ldr r1, [r4, #0x14c]
	ldr r0, _020D09B4 ; =gSprButtonCtrl
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eb3c
	str r5, [r4, #0x14c]
	str r5, [r4, #0x150]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D09AC: .word g3DPlaneCtrl
_020D09B0: .word gAllocator
_020D09B4: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020d08c4

	arm_func_start FUN_ov0_020d09b8
FUN_ov0_020d09b8: ; 0x020D09B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov0_020d014c
	mov r0, r5
	bl FUN_ov0_020d0224
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020d00b8
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020d0010
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020cedfc
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020cf0b0
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020cf260
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020cf47c
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020cf638
	mov r0, r5
	add r1, r5, #8
	bl FUN_ov0_020cf810
	mov r4, #0
	ldrb r0, [r5, #0x4f]
	cmp r0, #0
	ble _020D0A5C
_020D0A3C:
	mov r0, r5
	mov r2, r4
	add r1, r5, #8
	bl FUN_ov0_020cfa04
	ldrb r0, [r5, #0x4f]
	add r4, r4, #1
	cmp r4, r0
	blt _020D0A3C
_020D0A5C:
	mov r4, #0
	mov r3, #1
	ldr r1, [r5, #0xb8]
	mov r0, r5
	mov r2, r4
	strb r3, [r5, #8]
	bl FUN_ov0_020d0af4
	mov r0, r5
	mov r2, r4
	add r1, r5, #8
	bl FUN_ov0_020d0458
	mov r0, r5
	mov r2, r4
	add r1, r5, #8
	bl FUN_ov0_020d055c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020d09b8

	arm_func_start FUN_ov0_020d0a9c
FUN_ov0_020d0a9c: ; 0x020D0A9C
	ldr r12, _020D0AAC ; =strncpy
	add r0, r0, #0xf0
	mov r2, #0xf
	bx r12
_020D0AAC: .word strncpy
	arm_func_end FUN_ov0_020d0a9c

	arm_func_start FUN_ov0_020d0ab0
FUN_ov0_020d0ab0: ; 0x020D0AB0
	mov r2, r1
	ldr r1, [r0, #0xb0]
	ldr r12, _020D0AC4 ; =FUN_ov0_020ce95c
	add r0, r0, #0xf0
	bx r12
_020D0AC4: .word FUN_ov0_020ce95c
	arm_func_end FUN_ov0_020d0ab0

	arm_func_start FUN_ov0_020d0ac8
FUN_ov0_020d0ac8: ; 0x020D0AC8
	mov r3, r1
	mov r1, r2
	ldr r12, _020D0AE0 ; =FUN_ov0_020ce9f4
	mov r2, r3
	add r0, r0, #0xf0
	bx r12
_020D0AE0: .word FUN_ov0_020ce9f4
	arm_func_end FUN_ov0_020d0ac8

	arm_func_start FUN_ov0_020d0ae4
FUN_ov0_020d0ae4: ; 0x020D0AE4
	ldr r12, _020D0AF0 ; =FUN_ov0_020cea64
	add r0, r0, #0xf0
	bx r12
_020D0AF0: .word FUN_ov0_020cea64
	arm_func_end FUN_ov0_020d0ae4

	arm_func_start FUN_ov0_020d0af4
FUN_ov0_020d0af4: ; 0x020D0AF4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #8
	mov r7, r2
	mov r6, r3
	bl FUN_ov0_020ce780
	mov r4, r0
	tst r4, #1
	beq _020D0B28
	mov r0, r8
	mov r2, r7
	add r1, r8, #8
	bl FUN_ov0_020d0458
_020D0B28:
	tst r4, #2
	beq _020D0B80
	mov r0, r8
	bl FUN_ov0_020d0224
	ldrb r0, [r8, #0x4f]
	mov r5, #0
	cmp r0, #0
	ble _020D0B68
_020D0B48:
	mov r0, r8
	mov r2, r5
	add r1, r8, #8
	bl FUN_ov0_020cfa04
	ldrb r0, [r8, #0x4f]
	add r5, r5, #1
	cmp r5, r0
	blt _020D0B48
_020D0B68:
	cmp r6, #0
	beq _020D0B80
	mov r0, r8
	mov r2, r7
	add r1, r8, #8
	bl FUN_ov0_020d055c
_020D0B80:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov0_020d0af4

	arm_func_start FUN_ov0_020d0b88
FUN_ov0_020d0b88: ; 0x020D0B88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb8]
	mov r4, r2
	add r2, r0, r1
	ldr r1, [r5, #0xb0]
	cmp r1, #0
	ble _020D0BB4
	add r0, r2, r1
	bl _s32_div_f
	mov r2, r1
_020D0BB4:
	mov r0, r5
	mov r1, r2
	mov r2, r4
	mov r3, #1
	bl FUN_ov0_020d0af4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020d0b88

	arm_func_start FUN_ov0_020d0bcc
FUN_ov0_020d0bcc: ; 0x020D0BCC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #8
	mov r7, r2
	mov r6, r3
	bl FUN_ov0_020ce830
	mov r4, r0
	tst r4, #1
	beq _020D0C00
	mov r0, r8
	mov r2, r7
	add r1, r8, #8
	bl FUN_ov0_020d0458
_020D0C00:
	tst r4, #2
	beq _020D0C58
	mov r0, r8
	bl FUN_ov0_020d0224
	ldrb r0, [r8, #0x4f]
	mov r5, #0
	cmp r0, #0
	ble _020D0C40
_020D0C20:
	mov r0, r8
	mov r2, r5
	add r1, r8, #8
	bl FUN_ov0_020cfa04
	ldrb r0, [r8, #0x4f]
	add r5, r5, #1
	cmp r5, r0
	blt _020D0C20
_020D0C40:
	cmp r6, #0
	beq _020D0C58
	mov r0, r8
	mov r2, r7
	add r1, r8, #8
	bl FUN_ov0_020d055c
_020D0C58:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov0_020d0bcc

	arm_func_start FUN_ov0_020d0c60
FUN_ov0_020d0c60: ; 0x020D0C60
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0xbc]
	mov r3, #1
	add r1, r12, r1
	bl FUN_ov0_020d0bcc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov0_020d0c60

	arm_func_start FUN_ov0_020d0c78
FUN_ov0_020d0c78: ; 0x020D0C78
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0xe8]
	cmp r3, #0
	ldmltfd sp!, {r3, pc}
	ldr r1, [r0, #0xb4]
	cmp r3, r1
	ldrlt r2, [r0, #0xb8]
	ldrlt r1, [r0, #0xb0]
	cmplt r2, r1
	ldmgefd sp!, {r3, pc}
	ldr r1, [r0, #0x11c]
	ldr r0, _020D0CD4 ; =gSprButtonCtrl
	add r1, r1, r3
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldrne r1, [r0, #0x28]
	cmpne r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
_020D0CD4: .word gSprButtonCtrl
	arm_func_end FUN_ov0_020d0c78

	arm_func_start FUN_ov0_020d0cd8
FUN_ov0_020d0cd8: ; 0x020D0CD8
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov0_020d0cd8

	arm_func_start FUN_ov0_020d0cec
FUN_ov0_020d0cec: ; 0x020D0CEC
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	beq _020D0D14
	ldrb r1, [r0, #0xc]
	cmp r1, #2
	blo _020D0D14
	ldr r0, [r0, #0x18]
	cmp r0, #0
	movgt r0, #1
	bxgt lr
_020D0D14:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov0_020d0cec

	arm_func_start FUN_ov0_020d0d1c
FUN_ov0_020d0d1c: ; 0x020D0D1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov0_020d0cec
	cmp r0, #0
	beq _020D0D40
	ldr r0, [r4, #8]
	cmp r0, #0xc000
	movge r0, #1
	ldmgefd sp!, {r4, pc}
_020D0D40:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov0_020d0d1c

	arm_func_start FUN_ov0_020d0d48
FUN_ov0_020d0d48: ; 0x020D0D48
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	ldr r0, [r6, #8]
	ldr r4, _020D0E68 ; =NNS_G3dGlb_cameraMtx
	cmp r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #7]
	ldrb r0, [r6, #5]
	sub r0, r1, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020D0D94
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D0DA0
_020D0D94:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D0DA0:
	bl _ffix
	ldrb r2, [r6, #6]
	ldrb r1, [r6, #4]
	mov r5, r0
	sub r0, r2, r1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020D0DD4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D0DE0
_020D0DD4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D0DE0:
	bl _ffix
	mov r3, #0
	ldr r2, [r4, #0x20]
	ldr r1, [r4, #0x18]
	add r4, sp, #0xc
	str r0, [sp, #0xc]
	mov r0, r4
	str r3, [sp, #0x10]
	str r5, [sp, #0x14]
	str r1, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	bl VEC_Mag
	str r0, [r6, #0x14]
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	add r0, sp, #0
	mov r1, r0
	bl VEC_Normalize
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	bl FX_Atan2Idx
	strh r0, [r6, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl FX_Atan2Idx
	rsb r0, r0, #0x10000
	ldrh r1, [r6, #0x10]
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r6, #0x12]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_020D0E68: .word NNS_G3dGlb_cameraMtx
	arm_func_end FUN_ov0_020d0d48

	arm_func_start FUN_ov0_020d0e6c
FUN_ov0_020d0e6c: ; 0x020D0E6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x5c
	ldr r3, _020D1064 ; =0x00007FFF
	mov r5, #1
	mov r6, r0
	add r1, sp, #0x34
	mov r2, r5
	str r3, [sp, #0x34]
	mov r0, #0x20
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r6, #8]
	sub r7, r0, #0xc000
	cmp r7, #0
	ble _020D0F78
	mov r4, #0
	mov r1, r4
	mov r2, r4
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x2000
	add r1, sp, #0x50
	mov r0, #0x1b
	mov r2, #3
	str r3, [sp, #0x50]
	str r7, [sp, #0x54]
	str r3, [sp, #0x58]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x30
	mov r2, r5
	mov r0, #0x40
	str r5, [sp, #0x30]
	bl NNS_G3dGeBufferOP_N
	mov r9, #0xf000
	add r1, sp, #0x28
	mov r0, #0x23
	mov r2, #2
	str r9, [sp, #0x28]
	str r4, [sp, #0x2c]
	bl NNS_G3dGeBufferOP_N
	mov r7, #0x25
	mov r8, #0x1000
	mov r0, r7
	add r1, sp, #0x24
	mov r2, r5
	str r8, [sp, #0x24]
	bl NNS_G3dGeBufferOP_N
	sub r0, r8, #0xf0000000
	str r0, [sp, #0x20]
	mov r0, r7
	add r1, sp, #0x20
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	sub r0, r9, #0xf0000000
	str r0, [sp, #0x1c]
	mov r0, r7
	add r1, sp, #0x1c
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x41
	mov r1, r4
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	mov r2, r5
	mov r0, #0x12
	add r1, sp, #0x18
	str r5, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
_020D0F78:
	mov r4, #0
	mov r1, r4
	mov r2, r4
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	ldr r3, [r6, #8]
	mov r6, #3
	add r1, sp, #0x44
	mov r2, r6
	mov r0, #0x1c
	str r4, [sp, #0x44]
	str r3, [sp, #0x48]
	str r4, [sp, #0x4c]
	bl NNS_G3dGeBufferOP_N
	mov r5, #0xc000
	mov r3, #0x1000
	add r1, sp, #0x38
	mov r2, r6
	mov r0, #0x1b
	str r5, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	bl NNS_G3dGeBufferOP_N
	mov r6, #1
	add r1, sp, #0x14
	mov r2, r6
	mov r0, #0x40
	str r4, [sp, #0x14]
	bl NNS_G3dGeBufferOP_N
	ldr r5, _020D1068 ; =0xF000F800
	mov r0, #0x23
	add r1, sp, #0xc
	mov r2, #2
	str r4, [sp, #0x10]
	str r5, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
	sub r0, r5, #0xf000
	mov r5, #0x25
	str r0, [sp, #8]
	mov r0, r5
	add r1, sp, #8
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	mov r0, r5
	add r1, sp, #4
	mov r2, r6
	str r4, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x41
	mov r1, r4
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	mov r2, r6
	mov r0, #0x12
	add r1, sp, #0
	str r6, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D1064: .word 0x00007FFF
_020D1068: .word 0xF000F800
	arm_func_end FUN_ov0_020d0e6c

	arm_func_start FUN_ov0_020d106c
FUN_ov0_020d106c: ; 0x020D106C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x58
	ldr r1, _020D12A4 ; =g3DPlaneCtrl
	mov r6, r0
	ldr r5, [r1]
	cmp r5, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r6, #0x18]
	mov r0, r5
	bl FUN_0205998c
	movs r4, r0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r6, #0x18]
	add r2, sp, #0x3c
	add r3, sp, #0x38
	mov r0, r5
	bl FUN_02059c90
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020D12A8 ; =0x3F1F00C0
	mov r5, #1
	str r0, [sp, #0x34]
	add r1, sp, #0x34
	mov r2, r5
	mov r0, #0x29
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #0x14]
	mov r8, #1
	ldr r1, [sp, #0x38]
	cmp r0, #2
	movne r5, #0
	rsb r0, r5, #4
	mov r0, r1, lsr r0
	str r0, [sp, #0x30]
	add r1, sp, #0x30
	mov r2, r8
	mov r0, #0x2b
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #0x14]
	ldr r2, [sp, #0x3c]
	ldrb r1, [r4, #0x12]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r2, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r1, lsl #20
	ldrb r2, [r4, #0x13]
	add r1, sp, #0x2c
	orr r0, r0, r2, lsl #23
	orr r0, r0, #0x30000
	orr r3, r0, #0x20000000
	mov r2, r8
	mov r0, #0x2a
	str r3, [sp, #0x2c]
	bl NNS_G3dGeBufferOP_N
	mov r7, #0
	mov r4, #3
	sub r3, r7, #0x1000
	add r1, sp, #0x4c
	mov r2, r4
	mov r0, #0x1c
	str r7, [sp, #0x4c]
	str r7, [sp, #0x50]
	str r3, [sp, #0x54]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x20000
	add r1, sp, #0x40
	mov r2, r4
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	mov r0, #0x1b
	str r7, [sp, #0x48]
	bl NNS_G3dGeBufferOP_N
	rsb r0, r8, #0x8000
	str r0, [sp, #0x28]
	mov r0, #0x20
	add r1, sp, #0x28
	mov r2, r8
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x40
	add r1, sp, #0x24
	mov r2, r8
	str r8, [sp, #0x24]
	bl NNS_G3dGeBufferOP_N
	mov r6, #0x22
	mov r0, r6
	add r1, sp, #0x20
	mov r2, r8
	str r7, [sp, #0x20]
	bl NNS_G3dGeBufferOP_N
	ldr r5, _020D12AC ; =0xF8000800
	mov r0, #0x23
	add r1, sp, #0x18
	mov r2, #2
	str r7, [sp, #0x1c]
	str r5, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
	mov r9, #0x2000000
	add r1, sp, #0x14
	mov r0, r6
	mov r2, r8
	str r9, [sp, #0x14]
	bl NNS_G3dGeBufferOP_N
	mov r4, #0x25
	sub r3, r5, #0xf0000000
	add r1, sp, #0x10
	mov r0, r4
	mov r2, r8
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	add r2, r9, #0x200
	str r2, [sp, #0xc]
	add r1, sp, #0xc
	mov r0, r6
	mov r2, r8
	bl NNS_G3dGeBufferOP_N
	rsb r0, r5, #0x10000
	str r0, [sp, #8]
	mov r0, r4
	add r1, sp, #8
	mov r2, r8
	bl NNS_G3dGeBufferOP_N
	mov r1, #0x200
	str r1, [sp, #4]
	mov r0, r6
	add r1, sp, #4
	mov r2, r8
	bl NNS_G3dGeBufferOP_N
	add r0, r5, #0xf000
	str r0, [sp]
	mov r0, r4
	mov r2, r8
	add r1, sp, #0
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x41
	mov r1, r7
	mov r2, r7
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D12A4: .word g3DPlaneCtrl
_020D12A8: .word 0x3F1F00C0
_020D12AC: .word 0xF8000800
	arm_func_end FUN_ov0_020d106c

	arm_func_start FUN_ov0_020d12b0
FUN_ov0_020d12b0: ; 0x020D12B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r4, #2
	mov r1, r5
	mov r2, r4
	add r0, r6, #4
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r6, #6
	bl MI_CpuFill8
	str r5, [r6, #8]
	strb r5, [r6, #0xc]
	strb r5, [r6, #0xd]
	strh r5, [r6, #0x12]
	strh r5, [r6, #0x10]
	str r5, [r6, #0x14]
	str r5, [r6, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d12b0

	arm_func_start FUN_ov0_020d1300
FUN_ov0_020d1300: ; 0x020D1300
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _020D1358 ; =0x0209A200
	ldr r4, _020D135C ; =g3DPlaneCtrl
	mov r6, r0
	ldr r2, [r1]
	ldr r0, [r4]
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	ldr r3, _020D1360 ; =0x020D609C
	mov r1, #5
	str r5, [sp, #8]
	bl FUN_02058684
	mov r1, r0
	str r1, [r6, #0x18]
	ldr r0, [r4]
	mov r3, r5
	mov r2, #1
	bl FUN_02059038
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D1358: .word unk_0209A200
_020D135C: .word g3DPlaneCtrl
_020D1360: .word ov0_020D609C
	arm_func_end FUN_ov0_020d1300

	arm_func_start FUN_ov0_020d1364
FUN_ov0_020d1364: ; 0x020D1364
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _020D1390 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_020D1390: .word g3DPlaneCtrl
	arm_func_end FUN_ov0_020d1364

	arm_func_start FUN_ov0_020d1394
FUN_ov0_020d1394: ; 0x020D1394
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov0_020d0cd8
	cmp r0, #0
	movne r0, #1
	addne sp, sp, #0x18
	strneb r5, [r6, #4]
	strneb r4, [r6, #5]
	strneb r0, [r6, #0xc]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _020D13EC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D13F8
_020D13EC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D13F8:
	bl _ffix
	ldrb r1, [r6, #4]
	mov r7, r0
	cmp r1, #0
	mov r0, r1, lsl #0xc
	beq _020D1424
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D1430
_020D1424:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D1430:
	bl _ffix
	mov r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r7, [sp, #0x14]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _020D1464
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D1470
_020D1464:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D1470:
	bl _ffix
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	cmp r4, #0
	mov r0, r4, lsl #0xc
	ble _020D14A0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D14AC
_020D14A0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D14AC:
	bl _ffix
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, sp, #0
	bl VEC_Distance
	ldrb r1, [r6, #0xc]
	str r0, [r6, #8]
	cmp r1, #1
	bne _020D14DC
	cmp r0, #0xc000
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_020D14DC:
	mov r1, #2
	mov r0, r6
	strb r1, [r6, #0xc]
	strb r5, [r6, #6]
	strb r4, [r6, #7]
	bl FUN_ov0_020d0d48
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020d1394

	arm_func_start FUN_ov0_020d14fc
FUN_ov0_020d14fc: ; 0x020D14FC
	mov r1, #0
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov0_020d14fc

	arm_func_start FUN_ov0_020d150c
FUN_ov0_020d150c: ; 0x020D150C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x74
	mov r4, r0
	bl FUN_ov0_020d0cec
	cmp r0, #0
	addeq sp, sp, #0x74
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r6, #0
	mov r1, r6
	mov r2, r6
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	mov r5, #1
	add r1, sp, #0x10
	mov r2, r5
	mov r0, #0x2a
	str r6, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	ldr r3, _020D1734 ; =0x3F1F00C0
	add r1, sp, #0xc
	mov r2, r5
	mov r0, #0x29
	str r3, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
	mov r5, #3
	sub r0, r6, #0x32000
	str r0, [sp, #0x40]
	add r1, sp, #0x38
	mov r2, r5
	mov r0, #0x1c
	str r6, [sp, #0x38]
	str r6, [sp, #0x3c]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x1000
	str r0, [sp, #0x2c]
	str r0, [sp, #0x34]
	sub r0, r0, #0x2000
	str r0, [sp, #0x30]
	mov r2, r5
	mov r0, #0x1b
	add r1, sp, #0x2c
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _020D15D8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D15E4
_020D15D8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D15E4:
	bl _ffix
	ldrb r1, [r4, #4]
	mov r5, r0
	cmp r1, #0
	mov r0, r1, lsl #0xc
	beq _020D1610
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020D161C
_020D1610:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020D161C:
	bl _ffix
	mov r6, #3
	str r0, [sp, #0x20]
	mov r7, #0
	add r1, sp, #0x20
	mov r2, r6
	mov r0, #0x1c
	str r5, [sp, #0x24]
	str r7, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x1000
	sub r5, r7, #0x1000
	add r1, sp, #0x14
	mov r2, r6
	mov r0, #0x1b
	str r5, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	mov r0, r4
	bl FUN_ov0_020d0d1c
	cmp r0, #0
	beq _020D16E4
	mov r1, r7
	mov r2, r7
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	ldrh r0, [r4, #0x10]
	ldr r2, _020D1738 ; =FX_SinCosTable_
	add r5, sp, #0x44
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	mov r0, r5
	blx MTX_RotZ43_
	mov r1, r5
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	mov r0, r4
	bl FUN_ov0_020d0e6c
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #8
	str r2, [sp, #8]
	bl NNS_G3dGeBufferOP_N
_020D16E4:
	mov r1, #0
	mov r2, r1
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	mov r0, r4
	bl FUN_ov0_020d106c
	mov r5, #1
	mov r4, #0x12
	add r1, sp, #4
	mov r0, r4
	mov r2, r5
	str r5, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0
	mov r0, r4
	mov r2, r5
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020D1734: .word 0x3F1F00C0
_020D1738: .word FX_SinCosTable_
	arm_func_end FUN_ov0_020d150c

	arm_func_start FUN_ov0_020d173c
FUN_ov0_020d173c: ; 0x020D173C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov0_020d0d1c
	cmp r0, #0
	mov r0, #0
	streq r0, [r4]
	streq r0, [r4, #4]
	streq r0, [r4, #8]
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r1, [r5, #0x12]
	ldr r2, _020D17A0 ; =FX_SinCosTable_
	mov r1, r1, asr #4
	mov r1, r1, lsl #2
	ldrsh r1, [r2, r1]
	str r0, [r4, #4]
	str r1, [r4]
	ldrh r0, [r5, #0x12]
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r0, r0, #1
	mov r0, r0, lsl #1
	ldrsh r0, [r2, r0]
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020D17A0: .word FX_SinCosTable_
	arm_func_end FUN_ov0_020d173c

	arm_func_start FUN_ov0_020d17a4
FUN_ov0_020d17a4: ; 0x020D17A4
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov0_020d17a4

	arm_func_start FUN_ov0_020d17ac
FUN_ov0_020d17ac: ; 0x020D17AC
	strb r1, [r0, #0xd]
	bx lr
	arm_func_end FUN_ov0_020d17ac

	arm_func_start FUN_ov0_020d17b4
FUN_ov0_020d17b4: ; 0x020D17B4
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov0_020d17b4

	arm_func_start FUN_ov0_020d17c8
FUN_ov0_020d17c8: ; 0x020D17C8
	ldr r2, _020D17E0 ; =0x020D60CC
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
_020D17E0: .word ov0_020D60CC
	arm_func_end FUN_ov0_020d17c8

	arm_func_start FUN_ov0_020d17e4
FUN_ov0_020d17e4: ; 0x020D17E4
	stmfd sp!, {r4, lr}
	ldr r1, _020D1800 ; =0x020D60CC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d18c0
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D1800: .word ov0_020D60CC
	arm_func_end FUN_ov0_020d17e4

	arm_func_start FUN_ov0_020d1804
FUN_ov0_020d1804: ; 0x020D1804
	stmfd sp!, {r4, lr}
	ldr r1, _020D1828 ; =0x020D60CC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d18c0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D1828: .word ov0_020D60CC
	arm_func_end FUN_ov0_020d1804

	arm_func_start FUN_ov0_020d182c
FUN_ov0_020d182c: ; 0x020D182C
	stmfd sp!, {r4, lr}
	ldr r1, _020D1848 ; =0x020D60CC
	mov r4, r0
	str r1, [r4]
	bl FUN_ov0_020d18c0
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D1848: .word ov0_020D60CC
	arm_func_end FUN_ov0_020d182c

	arm_func_start FUN_ov0_020d184c
FUN_ov0_020d184c: ; 0x020D184C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D18BC ; =gAllocator
	mov r5, r0
	mov r0, r4
	mov r1, #0x400
	bl _ZN9Allocator8allocateEm
	str r0, [r5, #4]
	mov r0, r4
	mov r1, #0x200
	bl _ZN9Allocator8allocateEm
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	cmp r1, #0
	cmpne r0, #0
	mov r0, r5
	bne _020D1898
	bl FUN_ov0_020d18c0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D1898:
	bl FUN_ov0_020d1904
	mov r0, r5
	bl FUN_ov0_020d19f0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020D18BC: .word gAllocator
	arm_func_end FUN_ov0_020d184c

	arm_func_start FUN_ov0_020d18c0
FUN_ov0_020d18c0: ; 0x020D18C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020D18DC
	ldr r0, _020D1900 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020D18DC:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020D18F0
	ldr r0, _020D1900 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_020D18F0:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020D1900: .word gAllocator
	arm_func_end FUN_ov0_020d18c0

	arm_func_start FUN_ov0_020d1904
FUN_ov0_020d1904: ; 0x020D1904
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov0_020d1904

	arm_func_start FUN_ov0_020d1924
FUN_ov0_020d1924: ; 0x020D1924
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020D1938
	cmp r1, #0x80
	blo _020D1940
_020D1938:
	mov r0, #0
	bx lr
_020D1940:
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end FUN_ov0_020d1924

	arm_func_start FUN_ov0_020d1948
FUN_ov0_020d1948: ; 0x020D1948
	ldr r0, [r0, #4]
	cmp r0, #0
	cmpne r1, #0
	moveq r0, #1
	bxeq lr
	cmp r1, r0
	add r2, r0, #0x400
	mov r0, #1
	bxlo lr
	cmp r1, r2
	movls r0, #0
	bx lr
	arm_func_end FUN_ov0_020d1948

	arm_func_start FUN_ov0_020d1978
FUN_ov0_020d1978: ; 0x020D1978
	cmp r1, #0x10
	movhs r0, #0
	ldrlo r0, [r0, #8]
	addlo r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_ov0_020d1978

	arm_func_start FUN_ov0_020d198c
FUN_ov0_020d198c: ; 0x020D198C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r12, [r6, #8]
	mov r5, r3
	cmp r12, #0
	cmpne r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r2, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r2, #0x10
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r5, #0x200
	ldmgtfd sp!, {r4, r5, r6, pc}
	mov r4, r2, lsl #4
	mov r0, r1
	mov r2, r5
	add r1, r12, r4, lsl #1
	bl MI_CpuCopy8
	ldr r0, [r6, #8]
	mov r1, r5
	add r0, r0, r4, lsl #1
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d198c

	arm_func_start FUN_ov0_020d19f0
FUN_ov0_020d19f0: ; 0x020D19F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #8]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0x200
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r0, [r5, #8]
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020d19f0

	arm_func_start FUN_ov0_020d1a24
FUN_ov0_020d1a24: ; 0x020D1A24
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r1, #0x10
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #8]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, r1, lsl #4
	mov r4, #0x20
	mov r2, r4
	add r1, r0, r5, lsl #1
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r0, [r6, #8]
	mov r1, r4
	add r0, r0, r5, lsl #1
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d1a24

	arm_func_start FUN_ov0_020d1a74
FUN_ov0_020d1a74: ; 0x020D1A74
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov0_020d1978
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov0_020d1a24
	ldr r3, _020D1AE4 ; =0x00007C1F
	mov r0, #0x3e0
	mov r1, #0x7c00
	strh r3, [r4]
	mov r2, #0
	strh r2, [r4, #2]
	add r2, r3, #0x3e0
	strh r2, [r4, #4]
	mov r2, #0x1f
	strh r2, [r4, #6]
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	add r0, r0, #0x1f
	strh r0, [r4, #0xc]
	add r1, r1, #0x3e0
	ldr r0, _020D1AE8 ; =0x00004210
	strh r1, [r4, #0xe]
	strh r0, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_020D1AE4: .word 0x00007C1F
_020D1AE8: .word 0x00004210
	arm_func_end FUN_ov0_020d1a74

	arm_func_start FUN_ov0_020d1aec
FUN_ov0_020d1aec: ; 0x020D1AEC
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r1, r1, lsl #2
	bl FUN_ov0_020d1924
	mov r1, r4, asr #4
	mov r3, r1, lsl #1
	add r1, r3, #1
	ldr r2, _020D1B44 ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r1, [r2, r1]
	mov r3, r3, lsl #1
	ldrsh r2, [r2, r3]
	mov r1, r1, lsl #0xc
	mov r3, r1, asr #0x10
	rsb r1, r2, #0
	strh r3, [r0, #6]
	mov r2, r2, asr #4
	strh r2, [r0, #0xe]
	mov r1, r1, asr #4
	strh r1, [r0, #0x16]
	strh r3, [r0, #0x1e]
	ldmfd sp!, {r4, pc}
_020D1B44: .word FX_SinCosTable_
	arm_func_end FUN_ov0_020d1aec

	arm_func_start FUN_ov0_020d1b48
FUN_ov0_020d1b48: ; 0x020D1B48
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x24]
	blx r1
	mov r4, r0
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	movs r1, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020d1b48

	arm_func_start FUN_ov0_020d1b88
FUN_ov0_020d1b88: ; 0x020D1B88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, [r0]
	mov r7, r0
	ldr r3, [r3, #0x24]
	mov r6, r1
	mov r5, r2
	blx r3
	mov r4, r0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r4, r6
	cmp r5, r1
	movhs r5, r1
	cmp r6, r4
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, r5
	add r1, r0, r6
	mov r0, #0
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020d1b88

	arm_func_start FUN_ov0_020d1be8
FUN_ov0_020d1be8: ; 0x020D1BE8
	ldr r1, _020D1BFC ; =0x07000400
	ldr r12, _020D1C00 ; =MIi_CpuClearFast
	mov r0, #0xc0
	mov r2, #0x400
	bx r12
_020D1BFC: .word 0x07000400
_020D1C00: .word MIi_CpuClearFast
	arm_func_end FUN_ov0_020d1be8

	arm_func_start FUN_ov0_020d1c04
FUN_ov0_020d1c04: ; 0x020D1C04
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r1, r6
	bl FUN_ov0_020d1924
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0x400
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GXS_LoadOAM
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d1c04

	arm_func_start FUN_ov0_020d1c3c
FUN_ov0_020d1c3c: ; 0x020D1C3C
	ldr r1, _020D1C50 ; =0x05000600
	ldr r12, _020D1C54 ; =MIi_CpuClearFast
	mov r0, #0
	mov r2, #0x200
	bx r12
_020D1C50: .word 0x05000600
_020D1C54: .word MIi_CpuClearFast
	arm_func_end FUN_ov0_020d1c3c

	arm_func_start FUN_ov0_020d1c58
FUN_ov0_020d1c58: ; 0x020D1C58
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r1, r4
	mov r5, r0
	bl FUN_ov0_020d1978
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov0_020d1978
	mov r1, r4
	mov r2, #0x200
	bl GXS_LoadOBJPltt
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov0_020d1c58

	arm_func_start FUN_ov0_020d1c90
FUN_ov0_020d1c90: ; 0x020D1C90
	ldr r12, _020D1CA4 ; =GXS_LoadOBJ
	mov r0, r1
	mov r1, r2
	mov r2, r3
	bx r12
_020D1CA4: .word GXS_LoadOBJ
	arm_func_end FUN_ov0_020d1c90

	arm_func_start FUN_ov0_020d1ca8
FUN_ov0_020d1ca8:
	ldr r12, _020D1CB0 ; =GX_GetSizeOfSubOBJ
	bx r12
_020D1CB0: .word GX_GetSizeOfSubOBJ
	arm_func_start FUN_ov0_020d1ca8

	arm_func_start FUN_ov0_020d1cb4
FUN_ov0_020d1cb4: ; 0x020D1CB4
	mov r0, #0x6600000
	bx lr
	arm_func_end FUN_ov0_020d1cb4

	arm_func_start FUN_ov0_020d1cbc
FUN_ov0_020d1cbc: ; 0x020D1CBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	str r2, [sp, #8]
	ldr r2, [r2]
	str r0, [sp]
	str r2, [sp, #0x10]
	str r1, [sp, #4]
	mov r11, r3
	movs r0, r2
	mvn r6, #1
	bmi _020D1E00
_020D1CE8:
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r1, [r0, #8]
	ldr r0, [sp, #4]
	add r4, sp, #0x3c
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp]
	ldr r7, [r1, #0x34]
	mov r5, r2
	ldr r1, [sp, #4]
	mov r3, r4
	add r5, r7, r5, lsl #4
	bl FUN_ov0_020d2c60
	ldr r9, [r11]
	mov lr, #0
	str r9, [sp, #0x24]
	ldr r0, [r11, #4]
	mov r8, #2
	str r0, [sp, #0x28]
	ldr r10, [r11, #8]
	mov r0, #0xc
	str r10, [sp, #0x2c]
_020D1D40:
	add r1, r5, r8, lsl #1
	ldrsh r1, [r1, #6]
	cmp r6, r1
	beq _020D1DBC
	mov r1, #0xc
	mul r1, r8, r1
	add r2, r4, r1
	mul r7, lr, r0
	add r3, r4, r7
	ldr r1, [r4, r1]
	ldr r7, [r4, r7]
	ldr r2, [r2, #8]
	sub r12, r7, r1
	ldr r3, [r3, #8]
	sub r1, r9, r1
	sub r7, r3, r2
	sub r3, r10, r2
	str r1, [sp, #0x30]
	smull r2, r1, r7, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r3, [sp, #0x38]
	smull r3, r1, r12, r3
	adds r3, r3, #0x800
	adc r1, r1, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r1, lsl #20
	subs r1, r2, r3
	bmi _020D1DCC
_020D1DBC:
	mov r8, lr
	add lr, lr, #1
	cmp lr, #3
	blt _020D1D40
_020D1DCC:
	cmp lr, #3
	ldreq r1, [sp, #0x10]
	ldreq r0, [sp, #8]
	addeq sp, sp, #0x60
	streq r1, [r0]
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r5, r8, lsl #1
	ldrsh r0, [r0, #6]
	ldr r6, [sp, #0x10]
	str r0, [sp, #0x10]
	cmp r0, #0
	bge _020D1CE8
_020D1E00:
	ldr r0, [sp]
	mov r4, #0
	ldr r1, [r0, #8]
	mvn r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [r1, r0, lsl #2]
	mov r0, #0x80000000
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	ble _020D205C
_020D1E30:
	mov r0, #0x2c
	mul r1, r4, r0
	ldr r2, _020D2094 ; =0x020D62DC
	ldr r0, [sp, #4]
	ldr r2, [r2, r0, lsl #2]
	ldr r0, [r2, r1]
	add r2, r2, r1
	tst r0, #2
	beq _020D1E90
	ldr r1, [r11]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	blt _020D203C
	ldr r0, [r2, #0x20]
	cmp r1, r0
	bgt _020D203C
	ldr r1, [r11, #8]
	ldr r0, [r2, #0x1c]
	cmp r1, r0
	blt _020D203C
	ldr r0, [r2, #0x28]
	cmp r1, r0
	ble _020D1E94
	b _020D203C
_020D1E90:
	bl OS_Terminate
_020D1E94:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r3, sp, #0x3c
	mov r2, r4
	bl FUN_ov0_020d2c60
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x3c]
	cmp r0, r6
	ldr r0, [r11]
	ldr r5, [sp, #0x48]
	str r0, [sp, #0x24]
	ldr r2, [r11, #4]
	add r7, r7, r5
	str r2, [sp, #0x28]
	ldr r0, [r11, #8]
	ldr r8, [sp, #0x54]
	ldr r3, [sp, #0x44]
	ldr r1, [sp, #0x50]
	str r2, [sp, #0x1c]
	add r1, r3, r1
	ldr r5, [sp, #0x5c]
	ldr r3, _020D2098 ; =0x55555556
	add r8, r8, r7
	add r5, r5, r1
	smull r1, r9, r3, r8
	str r0, [sp, #0x2c]
	smull r0, r7, r3, r5
	add r9, r9, r8, lsr #31
	add r7, r7, r5, lsr #31
	add r0, sp, #0x18
	add r1, sp, #0x24
	add r2, sp, #0x30
	strne r4, [sp, #0xc]
	str r9, [sp, #0x18]
	str r7, [sp, #0x20]
	bl VEC_Subtract
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x34]
	cmpeq r0, #0
	ldreq r0, [sp, #0x38]
	cmpeq r0, #0
	beq _020D1F64
	add r5, sp, #0x30
	mov r0, r5
	mov r1, r5
	bl VEC_Normalize
	add r2, sp, #0x24
	mov r1, r5
	mov r0, #0x14
	mov r3, r2
	bl VEC_MultAdd
_020D1F64:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x58]
	add r0, r1, r0
	ldr r1, _020D2098 ; =0x55555556
	add r2, r2, r0
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, #0xc
	str r3, [sp, #0x1c]
	ldr r8, [sp, #0x24]
	ldr r9, [sp, #0x2c]
	mov r10, #0
	mov r3, #2
	add r7, sp, #0x3c
	mov r1, r0
_020D1FA4:
	mul r2, r3, r0
	add r3, r7, r2
	ldr r2, [r7, r2]
	ldr r3, [r3, #8]
	mul r12, r10, r1
	add r5, r7, r12
	ldr r12, [r7, r12]
	ldr r5, [r5, #8]
	sub lr, r12, r2
	sub r12, r5, r3
	sub r2, r8, r2
	sub r5, r9, r3
	str r2, [sp, #0x30]
	smull r3, r2, r12, r2
	adds r3, r3, #0x800
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r5, [sp, #0x38]
	smull r5, r2, lr, r5
	adds r5, r5, #0x800
	adc r2, r2, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r2, lsl #20
	subs r2, r3, r5
	bmi _020D201C
	mov r3, r10
	add r10, r10, #1
	cmp r10, #3
	blt _020D1FA4
_020D201C:
	cmp r10, #3
	bne _020D203C
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	ldrge r0, [sp, #8]
	strge r1, [sp, #0x14]
	strge r4, [r0]
_020D203C:
	ldr r0, [sp]
	add r4, r4, #1
	ldr r1, [r0, #8]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r4, r0
	blt _020D1E30
_020D205C:
	ldr r0, [sp, #0x14]
	cmp r0, #0x80000000
	addne sp, sp, #0x60
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	strlt r6, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2094: .word ov0_020D62DC
_020D2098: .word 0x55555556
	arm_func_end FUN_ov0_020d1cbc

	arm_func_start FUN_ov0_020d209c
FUN_ov0_020d209c: ; 0x020D209C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, r2
	ldr r4, [r11]
	mov r9, r1
	str r4, [sp, #8]
	mov r2, r3
	ldr r2, [r2]
	ldr r8, [sp, #0x30]
	str r3, [sp]
	str r2, [sp, #4]
	mov r10, r0
	cmp r4, #0
	movlt r0, #0
	strlt r0, [sp, #8]
	add r2, sp, #8
	mov r0, r10
	mov r1, r9
	mov r3, r8
	bl FUN_ov0_020d4028
	ldr r7, [sp, #8]
	cmp r7, #0
	addlt sp, sp, #0xc
	mov r1, r7
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, r7
	mvnne r0, #0
	strne r0, [sp, #4]
	mvn r5, #0
	add r4, sp, #8
	add r6, sp, #4
_020D211C:
	mov r0, r10
	mov r2, r6
	mov r3, r8
	bl FUN_ov0_020d1cbc
	cmp r0, #0
	bne _020D2164
	ldr r1, [sp, #8]
	mov r0, r10
	add r12, r1, #1
	mov r1, r9
	mov r2, r4
	mov r3, r8
	str r12, [sp, #8]
	str r5, [sp, #4]
	bl FUN_ov0_020d4028
	ldr r1, [sp, #8]
	cmp r7, r1
	bne _020D211C
_020D2164:
	ldr r0, [sp, #4]
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #8]
	mov r0, #1
	str r1, [r11]
	ldr r2, [sp, #4]
	ldr r1, [sp]
	str r2, [r1]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020d209c

	arm_func_start FUN_ov0_020d2198
FUN_ov0_020d2198: ; 0x020D2198
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r1
	mov r10, r2
	mov r8, r3
	mov r2, r9
	mov r3, r10
	str r8, [sp]
	mov r1, #1
	bl FUN_ov0_020d209c
	ldr r2, [r10]
	cmp r2, #0
	addlt sp, sp, #4
	ldrlt r0, [r8, #4]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x2c
	mul r1, r2, r0
	ldr r2, [r9]
	ldr r0, _020D2264 ; =0x020D62DC
	ldr r2, [r0, r2, lsl #2]
	ldr r0, [r2, r1]
	add r1, r2, r1
	tst r0, #1
	ldmneib r1, {r5, r6}
	ldrne r7, [r1, #0xc]
	ldrne r4, [r1, #0x10]
	bne _020D2208
	bl OS_Terminate
_020D2208:
	cmp r6, #0
	addeq sp, sp, #4
	ldreq r0, [r8, #4]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8]
	ldr r0, [r8, #8]
	smull r1, r2, r5, r1
	adds r3, r1, #0x800
	smull r1, r0, r7, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	mov r1, r6
	sub r0, r0, r4
	bl FX_Div
	rsb r0, r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2264: .word ov0_020D62DC
	arm_func_end FUN_ov0_020d2198

	arm_func_start FUN_ov0_020d2268
FUN_ov0_020d2268: ; 0x020D2268
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	mov r7, r2
	ldr r3, [r7, #0x18]
	mvn r2, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x28]
	ldr r2, [r7, #0x1c]
	mov r9, r0
	ldr r0, [sp, #0x14]
	str r2, [sp, #0x24]
	str r0, [sp, #0x20]
	ldrsb r2, [r7, #0xd]
	str r0, [sp, #0x10]
	mov r8, r1
	bic r0, r2, #3
	strb r0, [r7, #0xd]
_020D22AC:
	mov r4, #0
	add r1, sp, #0x28
	add r2, sp, #0x20
	mov r0, r9
	mov r3, r8
	str r4, [sp, #0xc]
	bl FUN_ov0_020d2198
	ldr r1, [sp, #0x20]
	cmp r1, #0
	blt _020D2308
	ldr r1, [r8, #4]
	cmp r0, r1
	strge r0, [r8, #4]
	ldrgesb r0, [r7, #0xd]
	orrge r0, r0, #1
	strgeb r0, [r7, #0xd]
	bge _020D2308
	ldrsb r1, [r7, #0xd]
	tst r1, #0x10
	strne r0, [r8, #4]
	ldrnesb r0, [r7, #0xd]
	orrne r0, r0, #1
	strneb r0, [r7, #0xd]
_020D2308:
	ldrsb r0, [r7, #0xd]
	tst r0, #0x20
	bne _020D266C
	add r2, sp, #0x24
	mov r0, r9
	mov r3, r8
	mov r1, #2
	bl FUN_ov0_020d4028
	ldr r1, [sp, #0x24]
	cmp r1, #0
	blt _020D2678
	ldr r0, [r9, #8]
	mov r5, #0
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D266C
	mvn r0, #0
	add r4, sp, #0x5c
	str r0, [sp, #0x1c]
_020D2358:
	ldr r0, [sp, #0x14]
	cmp r0, r5
	beq _020D2650
	ldr r0, _020D26BC ; =0x020D62DC
	mov r2, #0x2c
	ldr r3, [r0, r1, lsl #2]
	ldr r0, [r7, #0x10]
	mla r6, r5, r2, r3
	ldr r2, [r6, #0x14]
	ldr r3, [r8]
	sub r2, r2, r0
	cmp r3, r2
	blt _020D2650
	ldr r2, [r6, #0x20]
	add r2, r2, r0
	cmp r3, r2
	bgt _020D2650
	ldr r3, [r8, #4]
	ldr r2, [r6, #0x18]
	sub r2, r2, r0
	cmp r3, r2
	blt _020D2650
	ldr r2, [r6, #0x24]
	add r2, r2, r0
	cmp r3, r2
	bgt _020D2650
	ldr r3, [r8, #8]
	ldr r2, [r6, #0x1c]
	sub r2, r2, r0
	cmp r3, r2
	blt _020D2650
	ldr r2, [r6, #0x28]
	add r0, r2, r0
	cmp r3, r0
	bgt _020D2650
	ldr r2, [r8]
	mov r0, r9
	str r2, [sp, #0x50]
	ldr r3, [r8, #4]
	mov r2, r5
	str r3, [sp, #0x54]
	ldr r10, [r8, #8]
	mov r3, r4
	str r10, [sp, #0x58]
	bl FUN_ov0_020d2c60
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x58]
	ldr r12, [r6, #4]
	smull lr, r2, r1, r0
	smull r11, r1, r0, r0
	ldr r3, [r6, #8]
	str r1, [sp, #0x18]
	ldr r10, [sp, #0x50]
	adds r1, lr, #0x800
	str r0, [sp, #0x4c]
	adc r0, r2, #0
	mov r2, r1, lsr #0xc
	orr r2, r2, r0, lsl #20
	smull r1, r0, r10, r12
	str r12, [sp, #0x44]
	smull r10, lr, r12, r12
	adds r12, r1, #0x800
	adc r1, r0, #0
	mov r0, r12, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r1, [sp, #0x54]
	str r3, [sp, #0x48]
	smull r12, r3, r1, r3
	adds r1, r12, #0x800
	adc r3, r3, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r3, lsl #20
	add r0, r0, r1
	ldr r6, [r6, #0x10]
	add r0, r2, r0
	adds r1, r10, #0x800
	sub r6, r0, r6
	adc r0, lr, #0
	mov r2, r1, lsr #0xc
	orr r2, r2, r0, lsl #20
	adds r1, r11, #0x800
	ldr r0, [sp, #0x18]
	mov r1, r1, lsr #0xc
	adc r0, r0, #0
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	bl FX_Sqrt
	mov r1, r0
	mov r0, r6
	bl FX_Div
	movs r6, r0
	rsbmi r1, r6, #0
	ldr r0, [r7, #0x10]
	movpl r1, r6
	cmp r1, r0
	bge _020D2650
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x40]
	add r0, sp, #0x38
	str r1, [sp, #0x38]
	mov r1, r0
	bl VEC_Normalize
	add r2, sp, #0x50
	rsb r0, r6, #0
	add r1, sp, #0x38
	mov r3, r2
	bl VEC_MultAdd
	add r0, sp, #0x50
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r1, sp, #0x44
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d4a80
	cmp r0, #0
	ble _020D25A8
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bne _020D256C
_020D2544:
	ldrsb r1, [r7, #0xd]
	ldr r0, [r7]
	orr r1, r1, #2
	strb r1, [r7, #0xd]
	str r0, [r8]
	ldr r0, [r7, #4]
	str r0, [r8, #4]
	ldr r0, [r7, #8]
	str r0, [r8, #8]
	b _020D266C
_020D256C:
	ldr r0, [r7, #0x10]
	add r1, sp, #0x38
	add r2, sp, #0x50
	mov r3, r8
	add r0, r0, #2
	bl VEC_MultAdd
	ldr r0, [sp, #0x14]
	ldrsb r1, [r7, #0xd]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	orr r0, r1, #2
	strb r0, [r7, #0xd]
	mov r0, #1
	str r0, [sp, #0xc]
	b _020D266C
_020D25A8:
	ldr r1, [sp, #0x1c]
	sub r1, r1, r0
	mov r0, #0xc
	add r6, r1, #2
	mla r0, r1, r0, r4
	ldr r1, _020D26C0 ; =0x55555556
	smull r2, r3, r1, r6
	add r3, r3, r6, lsr #31
	mov r1, #3
	smull r2, r3, r1, r3
	sub r3, r6, r2
	mov r1, #0xc
	mul r6, r3, r1
	add r1, r4, r6
	add r2, sp, #0x2c
	bl VEC_Subtract
	add r0, r4, r6
	add r1, sp, #0x2c
	mov r2, r8
	add r3, sp, #0x50
	bl FUN_ov0_020d47d4
	ldr r6, [r7, #0x10]
	cmp r0, r6
	bge _020D2650
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bne _020D2618
	b _020D2544
_020D2618:
	ldr r2, [r8, #4]
	mov r0, r8
	str r2, [sp, #0x54]
	add r1, sp, #0x50
	mov r3, r8
	add r2, r6, #2
	bl FUN_ov0_020d4be8
	mov r0, #1
	ldrsb r1, [r7, #0xd]
	str r0, [sp, #0xc]
	str r5, [sp, #0x14]
	orr r0, r1, #2
	strb r0, [r7, #0xd]
	b _020D266C
_020D2650:
	add r5, r5, #1
	ldr r1, [sp, #0x24]
	ldr r0, [r9, #8]
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	blt _020D2358
_020D266C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020D22AC
_020D2678:
	ldr r1, [sp, #0x28]
	mov r0, #1
	str r1, [r7, #0x18]
	ldr r1, [sp, #0x24]
	str r1, [r7, #0x1c]
	ldr r1, [sp, #0x20]
	str r1, [r7, #0x20]
	ldr r1, [sp, #0x14]
	str r1, [r7, #0x24]
	ldr r1, [r8]
	str r1, [r7]
	ldr r1, [r8, #4]
	str r1, [r7, #4]
	ldr r1, [r8, #8]
	str r1, [r7, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D26BC: .word ov0_020D62DC
_020D26C0: .word 0x55555556
	arm_func_end FUN_ov0_020d2268

	arm_func_start FUN_ov0_020d26c4
FUN_ov0_020d26c4: ; 0x020D26C4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r1
	mov r7, r0
	ldr r0, [r6]
	mov r5, r2
	str r0, [sp]
	ldr r1, [r6, #4]
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	str r1, [sp, #8]
	ldr r1, [r7, #4]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [sp]
	ldr r1, [r7, #4]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [sp, #4]
	ldr r1, [r7, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [sp, #8]
	ldr r1, [r7, #4]
	ldr r0, [r5, #0x10]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [r5, #0x10]
	ldr r1, [r7, #4]
	ldr r0, [r5, #0x14]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [r5, #0x14]
	ldrsb r0, [r5, #0xc]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020D27D4
_020D2760: ; jump table
	b _020D27D4 ; case 0
	b _020D2774 ; case 1
	b _020D278C ; case 2
	b _020D27A4 ; case 3
	b _020D27BC ; case 4
_020D2774:
	add r1, sp, #0
	mov r0, r7
	mov r2, r5
	bl FUN_ov0_020d2268
_020D2784:
	mov r4, r0
	b _020D27D8
_020D278C:
	bl OS_Terminate
	add r1, sp, #0
	mov r0, r7
	mov r2, r5
	bl FUN_ov0_020d2e58
	b _020D2784
_020D27A4:
	bl OS_Terminate
	add r1, sp, #0
	mov r0, r7
	mov r2, r5
	bl FUN_ov0_020d3248
	b _020D2784
_020D27BC:
	bl OS_Terminate
	add r1, sp, #0
	mov r0, r7
	mov r2, r5
	bl FUN_ov0_020d3794
	b _020D2784
_020D27D4:
	bl OS_Terminate
_020D27D8:
	ldr r1, [r7, #4]
	ldr r3, [sp]
	ldr r0, [r1, #0x1c]
	ldr r2, [sp, #4]
	mul r0, r3, r0
	str r0, [sp]
	ldr r0, [r1, #0x1c]
	ldr r3, [sp, #8]
	mul r0, r2, r0
	str r0, [sp, #4]
	ldr r2, [r1, #0x1c]
	mov r0, r4
	mul r2, r3, r2
	str r2, [sp, #8]
	ldr r3, [r5, #0x10]
	ldr r1, [r1, #0x1c]
	ldr r2, [r5, #0x14]
	mul r1, r3, r1
	str r1, [r5, #0x10]
	ldr r1, [r7, #4]
	ldr r1, [r1, #0x1c]
	mul r1, r2, r1
	str r1, [r5, #0x14]
	ldr r1, [sp]
	str r1, [r6]
	ldr r1, [sp, #4]
	str r1, [r6, #4]
	ldr r1, [sp, #8]
	str r1, [r6, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020d26c4

	arm_func_start FUN_ov0_020d2854
FUN_ov0_020d2854: ; 0x020D2854
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb0
	mov r10, r0
	ldr r4, [r10, #4]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r4, #0
	beq _020D287C
	bl FUN_020540f4
_020D287C:
	add r5, sp, #0x70
	ldr r1, _020D2C40 ; =0x020D60F8
	mov r0, r5
	mov r2, r6
	str r8, [r10]
	bl STD_TSPrintf
	mov r4, #0
	add r0, sp, #0x18
	mov r1, r7
	mov r2, r5
	str r4, [sp, #0x18]
	bl _ZN10FileSystem14ReadFileByNameEPPviPKc
	cmp r0, #0
	addlt sp, sp, #0xb0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x18]
	sub r1, r4, #1
	str r0, [r10, #4]
	ldr r0, [r0, #0xc]
	mov r0, r0, lsl #2
	bl _ZN10FileSystem8AllocateEii
	ldr r2, [r10, #4]
	str r0, [r10, #8]
	ldr r1, [r2, #0xc]
	add r0, r2, #0x20
	cmp r1, #0
	ble _020D297C
	mov r2, #6
	ldr r5, _020D2C44 ; =0x00020002
	mov r3, r2
_020D28F4:
	ldr r1, [r10, #8]
	str r0, [r1, r4, lsl #2]
	ldr r1, [r10, #8]
	ldr r6, [r1, r4, lsl #2]
	ldr r1, [r6, #0x30]
	add r1, r0, r1
	str r1, [r6, #0x30]
	ldr r1, [r10, #8]
	ldr r6, [r1, r4, lsl #2]
	ldr r1, [r6, #0x34]
	add r1, r0, r1
	str r1, [r6, #0x34]
	ldr r1, [r10, #4]
	ldr r6, [r1, #4]
	cmp r6, r5
	ldr r6, [r10, #8]
	ldr r6, [r6, r4, lsl #2]
	ldr r7, [r6, #0x28]
	ldrne r6, [r6, #0x2c]
	mulne r8, r7, r2
	addne r7, r8, #0x38
	addne r6, r7, r6, lsl #4
	bne _020D2968
	mul r8, r7, r3
	ldr r6, [r6, #0x2c]
	add r7, r8, #0x38
	add r6, r7, r6, lsl #4
	add r6, r6, #0xf
	bic r6, r6, #0xf
_020D2968:
	ldr r1, [r1, #0xc]
	add r4, r4, #1
	add r0, r0, r6
	cmp r4, r1
	blt _020D28F4
_020D297C:
	mov r0, #0xb000
	mvn r1, #0
	bl _ZN10FileSystem13AllocateClearEii
	ldr r1, [r10, #4]
	str r0, [r10, #0xc]
	ldr r0, [r1, #0xc]
	cmp r0, #4
	ble _020D29A0
	bl OS_Terminate
_020D29A0:
	ldr r0, [r10, #4]
	ldr r5, [r10, #0xc]
	ldr r0, [r0, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _020D2B74
_020D29B8:
	ldr r0, _020D2C48 ; =0x020D62DC
	mov r7, #0
	str r5, [r0, r6, lsl #2]
	ldr r0, [r10, #8]
	ldr r0, [r0, r6, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D2B60
	add r4, sp, #0x4c
_020D29DC:
	mov r0, r10
	mov r1, r6
	mov r2, r7
	mov r3, r4
	bl FUN_ov0_020d2c60
	ldr r2, [sp, #0x58]
	ldr r1, [sp, #0x4c]
	cmp r1, r2
	bgt _020D2A10
	ldr r0, [sp, #0x64]
	cmp r1, r0
	movgt r1, r0
	b _020D2A20
_020D2A10:
	ldr r0, [sp, #0x64]
	cmp r2, r0
	movgt r2, r0
	mov r1, r2
_020D2A20:
	str r1, [r5, #0x14]
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x50]
	cmp r1, r2
	bgt _020D2A44
	ldr r0, [sp, #0x68]
	cmp r1, r0
	movgt r1, r0
	b _020D2A54
_020D2A44:
	ldr r0, [sp, #0x68]
	cmp r2, r0
	movgt r2, r0
	mov r1, r2
_020D2A54:
	str r1, [r5, #0x18]
	ldr r2, [sp, #0x60]
	ldr r1, [sp, #0x54]
	cmp r1, r2
	bgt _020D2A78
	ldr r0, [sp, #0x6c]
	cmp r1, r0
	movgt r1, r0
	b _020D2A88
_020D2A78:
	ldr r0, [sp, #0x6c]
	cmp r2, r0
	movgt r2, r0
	mov r1, r2
_020D2A88:
	str r1, [r5, #0x1c]
	ldr r2, [sp, #0x58]
	ldr r1, [sp, #0x4c]
	cmp r1, r2
	blt _020D2AAC
	ldr r0, [sp, #0x64]
	cmp r1, r0
	movlt r1, r0
	b _020D2ABC
_020D2AAC:
	ldr r0, [sp, #0x64]
	cmp r2, r0
	movlt r2, r0
	mov r1, r2
_020D2ABC:
	str r1, [r5, #0x20]
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x50]
	cmp r1, r2
	blt _020D2AE0
	ldr r0, [sp, #0x68]
	cmp r1, r0
	movlt r1, r0
	b _020D2AF0
_020D2AE0:
	ldr r0, [sp, #0x68]
	cmp r2, r0
	movlt r2, r0
	mov r1, r2
_020D2AF0:
	str r1, [r5, #0x24]
	ldr r2, [sp, #0x60]
	ldr r1, [sp, #0x54]
	cmp r1, r2
	blt _020D2B14
	ldr r0, [sp, #0x6c]
	cmp r1, r0
	movlt r1, r0
	b _020D2B24
_020D2B14:
	ldr r0, [sp, #0x6c]
	cmp r2, r0
	movlt r2, r0
	mov r1, r2
_020D2B24:
	str r1, [r5, #0x28]
	ldr r0, [r5]
	orr r0, r0, #2
	str r0, [r5], #0x2c
	ldr r0, [r10, #0xc]
	add r0, r0, #0xb000
	cmp r5, r0
	blo _020D2B48
	bl OS_Terminate
_020D2B48:
	ldr r0, [r10, #8]
	add r7, r7, #1
	ldr r0, [r0, r6, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r7, r0
	blt _020D29DC
_020D2B60:
	ldr r0, [r10, #4]
	add r6, r6, #1
	ldr r0, [r0, #0xc]
	cmp r6, r0
	blt _020D29B8
_020D2B74:
	ldr r9, [r10, #0xc]
	cmp r0, #0
	mov r7, #0
	addle sp, sp, #0xb0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2B88:
	ldr r0, [r10, #8]
	mov r8, #0
	ldr r0, [r0, r7, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D2C24
	add r11, sp, #0xc
	add r6, sp, #0x28
	add r5, sp, #0x34
	add r4, sp, #0x40
_020D2BB0:
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov0_020d2c60
	mov r3, sp
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldmia r4, {r0, r1, r2}
	stmia r11, {r0, r1, r2}
	add r0, sp, #0x1c
	ldmia r6, {r1, r2, r3}
	bl FUN_ov0_020d45ac
	ldr r1, [sp, #0x1c]
	add r8, r8, #1
	str r1, [r9, #4]
	ldr r1, [sp, #0x20]
	str r1, [r9, #8]
	ldr r1, [sp, #0x24]
	str r1, [r9, #0xc]
	str r0, [r9, #0x10]
	ldr r0, [r9]
	orr r0, r0, #1
	str r0, [r9], #0x2c
	ldr r0, [r10, #8]
	ldr r0, [r0, r7, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r8, r0
	blt _020D2BB0
_020D2C24:
	ldr r0, [r10, #4]
	add r7, r7, #1
	ldr r0, [r0, #0xc]
	cmp r7, r0
	blt _020D2B88
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2C40: .word ov0_020D60F8
_020D2C44: .word 0x00020002
_020D2C48: .word ov0_020D62DC
	arm_func_end FUN_ov0_020d2854

	arm_func_start FUN_ov0_020d2c4c
FUN_ov0_020d2c4c: ; 0x020D2C4C
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov0_020d2c4c

	arm_func_start FUN_ov0_020d2c60
FUN_ov0_020d2c60: ; 0x020D2C60
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, [r0, #8]
	mov r4, #0
	ldr r5, [r5, r1, lsl #2]
	mov r6, #0xc
	ldr r5, [r5, #0x34]
	add lr, r5, r2, lsl #4
	mov r5, #6
_020D2C80:
	mov r7, r4, lsl #1
	ldr r2, [r0, #8]
	ldrsh r7, [lr, r7]
	mul r8, r4, r6
	ldr r2, [r2, r1, lsl #2]
	smulbb r12, r7, r5
	ldr r2, [r2, #0x30]
	add r4, r4, #1
	ldrsh r7, [r2, r12]
	add r2, r3, r8
	cmp r4, #3
	str r7, [r3, r8]
	ldr r7, [r0, #8]
	ldr r7, [r7, r1, lsl #2]
	ldr r7, [r7, #0x30]
	add r7, r7, r12
	ldrsh r7, [r7, #2]
	str r7, [r2, #4]
	ldr r7, [r0, #8]
	ldr r7, [r7, r1, lsl #2]
	ldr r7, [r7, #0x30]
	add r12, r7, r12
	ldrsh r12, [r12, #4]
	str r12, [r2, #8]
	blt _020D2C80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov0_020d2c60

	arm_func_start FUN_ov0_020d2ce8
FUN_ov0_020d2ce8: ; 0x020D2CE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	mov r1, #1
	mov r7, r0
	bl FUN_ov0_020d3f2c
	ldr r2, [r5]
	cmp r2, #0
	addlt sp, sp, #0x48
	ldrlt r0, [r4, #4]
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, sp, #0x18
	ldr r1, [r6]
	mov r0, r7
	mov r3, r5
	bl FUN_ov0_020d2c60
	add r0, sp, #0x24
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0x30
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0x3c
	ldmia r5, {r1, r2, r3}
	bl FUN_ov0_020d45ac
	ldr r1, [sp, #0x40]
	cmp r1, #0
	addeq sp, sp, #0x48
	ldreq r0, [r4, #4]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr lr, [sp, #0x3c]
	ldr r12, [r4]
	ldr r3, [sp, #0x44]
	ldr r2, [r4, #8]
	smull r4, r12, lr, r12
	adds lr, r4, #0x800
	smull r4, r2, r3, r2
	adc r12, r12, #0
	adds r3, r4, #0x800
	mov r4, lr, lsr #0xc
	adc r2, r2, #0
	mov r3, r3, lsr #0xc
	orr r4, r4, r12, lsl #20
	orr r3, r3, r2, lsl #20
	add r2, r4, r3
	sub r0, r2, r0
	bl FX_Div
	rsb r0, r0, #0
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020d2ce8

	arm_func_start FUN_ov0_020d2dcc
FUN_ov0_020d2dcc: ; 0x020D2DCC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	str r0, [sp]
	ldr r1, [r3, #4]
	mov r4, r2
	str r1, [sp, #4]
	ldr r1, [r3, #8]
	str r1, [sp, #8]
	ldr r1, [r6, #4]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [sp]
	ldr r1, [r6, #4]
	ldr r0, [sp, #4]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x1c]
	bl _s32_div_f
	str r0, [sp, #8]
	mov r1, r5
	mov r2, r4
	mov r0, r6
	add r3, sp, #0
	bl FUN_ov0_020d2ce8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov0_020d2dcc

	arm_func_start FUN_ov0_020d2e4c
FUN_ov0_020d2e4c: ; 0x020D2E4C
	ldr r12, _020D2E54 ; =FUN_ov0_020d26c4
	bx r12
_020D2E54: .word FUN_ov0_020d26c4
	arm_func_end FUN_ov0_020d2e4c

	arm_func_start FUN_ov0_020d2e58
FUN_ov0_020d2e58: ; 0x020D2E58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x6c
	mov r8, r2
	ldr r3, [r8, #0x18]
	mvn r2, #0
	str r3, [sp, #0x20]
	str r2, [sp, #0x10]
	ldr r2, [r8, #0x1c]
	mov r10, r0
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldrsb r2, [r8, #0xd]
	mov r9, r1
	str r0, [sp, #0xc]
	bic r1, r2, #3
	mov r6, r0
	str r0, [sp, #4]
	strb r1, [r8, #0xd]
_020D2EA0:
	mov r3, #0
	str r3, [sp, #8]
	add r2, sp, #0x20
	mov r0, r10
	mov r1, #1
	mov r3, r9
	bl FUN_ov0_020d4028
	cmp r0, #0
	bne _020D3024
	ldr r1, [sp, #0x20]
	ldr r0, [r8, #0x18]
	cmp r1, r0
	movne r0, #1
	subne r0, r0, #2
	strne r0, [sp, #0x10]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _020D2F44
	add r4, sp, #0x48
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r3, r4
	bl FUN_ov0_020d2c60
	ldr r1, [r9]
	mov r2, r4
	str r1, [sp, #0x30]
	ldr r3, [r9, #4]
	add r0, sp, #0x3c
	str r3, [sp, #0x34]
	ldr r4, [r9, #8]
	add r1, sp, #0x18
	str r4, [sp, #0x38]
	ldr r4, [r8, #0x10]
	add r3, sp, #0x30
	str r4, [sp]
	bl FUN_ov0_020d4488
	mov r4, r0
	cmp r4, #0
	ldrle r6, [sp, #0x10]
	mvnle r0, #0
	strle r0, [sp, #0x10]
_020D2F44:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bge _020D2FE8
	ldr r1, [sp, #0x20]
	ldr r0, [r10, #8]
	mov r5, #0
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D2FE8
	add r7, sp, #0x48
	add r11, sp, #0x3c
_020D2F74:
	cmp r6, r5
	beq _020D2FCC
	mov r0, r10
	mov r2, r5
	mov r3, r7
	bl FUN_ov0_020d2c60
	ldr r1, [r9]
	mov r0, r11
	str r1, [sp, #0x30]
	ldr r2, [r9, #4]
	add r1, sp, #0x18
	str r2, [sp, #0x34]
	ldr r3, [r9, #8]
	mov r2, r7
	str r3, [sp, #0x38]
	ldr r4, [r8, #0x10]
	add r3, sp, #0x30
	str r4, [sp]
	bl FUN_ov0_020d4488
	movs r4, r0
	cmpne r4, #0
	bgt _020D2FE8
_020D2FCC:
	add r5, r5, #1
	ldr r1, [sp, #0x20]
	ldr r0, [r10, #8]
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	blt _020D2F74
_020D2FE8:
	cmp r4, #0
	ble _020D3024
	ldr r0, [r8, #0x10]
	ldr r2, [sp, #0x18]
	add r1, sp, #0x3c
	sub r7, r0, r2
	add r2, sp, #0x30
	mov r3, r9
	str r7, [sp, #0x18]
	bl VEC_MultAdd
	mov r0, #1
	str r6, [sp, #4]
	str r5, [sp, #0x10]
	mov r6, r5
	str r0, [sp, #8]
_020D3024:
	add r2, sp, #0x1c
	mov r0, r10
	mov r3, r9
	mov r1, #2
	bl FUN_ov0_020d4028
	cmp r0, #0
	beq _020D31C8
	ldr r1, [sp, #0x1c]
	ldr r0, [r10, #8]
	mov r5, #0
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D31C8
	mvn r0, #0
	add r11, sp, #0x48
	str r0, [sp, #0x14]
_020D3068:
	cmp r6, r5
	beq _020D31AC
	mov r0, r10
	mov r2, r5
	mov r3, r11
	bl FUN_ov0_020d2c60
	ldr r1, [r9]
	add r0, sp, #0x3c
	str r1, [sp, #0x30]
	ldr r2, [r9, #4]
	add r1, sp, #0x18
	str r2, [sp, #0x34]
	ldr r3, [r9, #8]
	mov r2, r11
	str r3, [sp, #0x38]
	ldr r4, [r8, #0x10]
	add r3, sp, #0x30
	str r4, [sp]
	bl FUN_ov0_020d4488
	movs r4, r0
	beq _020D31AC
	cmp r4, #0
	ble _020D3124
	ldr r0, [sp, #4]
	cmp r0, r5
	bne _020D30EC
	ldr r0, [r8]
	str r0, [r9]
	ldr r0, [r8, #4]
	str r0, [r9, #4]
	ldr r0, [r8, #8]
	str r0, [r9, #8]
	b _020D31C8
_020D30EC:
	ldr r0, [r8, #0x10]
	ldr r2, [sp, #0x18]
	add r1, sp, #0x3c
	sub r7, r0, r2
	add r2, sp, #0x30
	mov r3, r9
	str r7, [sp, #0x18]
	bl VEC_MultAdd
_020D310C:
	mov r0, #1
	str r6, [sp, #4]
	str r5, [sp, #0xc]
	mov r6, r5
	str r0, [sp, #8]
	b _020D31C8
_020D3124:
	ldr r0, [sp, #0x14]
	ldr r2, _020D3244 ; =0x55555556
	sub r4, r0, r4
	add r0, r4, #2
	smull r3, r1, r2, r0
	add r1, r1, r0, lsr #31
	mov r2, #3
	smull r1, r3, r2, r1
	sub r1, r0, r1
	mov r0, #0xc
	mul r7, r1, r0
	mla r0, r4, r0, r11
	add r1, r11, r7
	add r2, sp, #0x24
	bl VEC_Subtract
	add r0, r11, r7
	add r1, sp, #0x24
	mov r2, r9
	add r3, sp, #0x30
	bl FUN_ov0_020d4670
	ldr r2, [r8, #0x10]
	cmp r0, r2
	bge _020D31AC
	ldr r1, [sp, #0x30]
	ldr r11, [sp, #0x34]
	ldr r7, [sp, #0x38]
	str r1, [sp, #0x24]
	mov r0, r9
	add r1, sp, #0x30
	mov r3, r9
	str r11, [sp, #0x28]
	str r7, [sp, #0x2c]
	bl FUN_ov0_020d4be8
	b _020D310C
_020D31AC:
	add r5, r5, #1
	ldr r1, [sp, #0x1c]
	ldr r0, [r10, #8]
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	blt _020D3068
_020D31C8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020D2EA0
	ldr r0, [sp, #0x20]
	mvn r1, #0
	str r0, [r8, #0x18]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	cmp r0, r1
	ldr r0, [sp, #0x10]
	str r2, [r8, #0x1c]
	str r0, [r8, #0x20]
	ldr r0, [sp, #0xc]
	str r0, [r8, #0x24]
	ldr r0, [r9]
	str r0, [r8]
	ldr r0, [r9, #4]
	str r0, [r8, #4]
	ldr r0, [r9, #8]
	str r0, [r8, #8]
	ldrnesb r0, [r8, #0xd]
	orrne r0, r0, #2
	strneb r0, [r8, #0xd]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	ldrnesb r0, [r8, #0xd]
	orrne r0, r0, #1
	strneb r0, [r8, #0xd]
	mov r0, #1
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3244: .word 0x55555556
	arm_func_end FUN_ov0_020d2e58

	arm_func_start FUN_ov0_020d3248
FUN_ov0_020d3248: ; 0x020D3248
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x98
	mov r7, r2
	ldr r3, [r7, #0x18]
	mvn r2, #0
	str r3, [sp, #0x4c]
	str r2, [sp, #0x24]
	ldr r2, [r7, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x48]
	str r0, [sp, #0x44]
	ldrsb r0, [r7, #0xd]
	mov r8, r1
	bic r0, r0, #3
	strb r0, [r7, #0xd]
_020D3288:
	ldr r0, [sp, #0x18]
	mov r4, #0
	add r1, sp, #0x4c
	add r2, sp, #0x44
	mov r3, r8
	str r4, [sp, #0x20]
	bl FUN_ov0_020d2ce8
	ldr r1, [r8, #4]
	cmp r0, r1
	strge r0, [r8, #4]
	ldrgesb r0, [r7, #0xd]
	orrge r0, r0, #1
	strgeb r0, [r7, #0xd]
	bge _020D32D8
	ldrsb r1, [r7, #0xd]
	tst r1, #0x10
	strne r0, [r8, #4]
	ldrnesb r0, [r7, #0xd]
	orrne r0, r0, #1
	strneb r0, [r7, #0xd]
_020D32D8:
	ldr r0, [sp, #0x18]
	add r2, sp, #0x48
	mov r3, r8
	mov r1, #2
	bl FUN_ov0_020d4028
	cmp r0, #0
	beq _020D3718
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x48]
	ldr r0, [r0, #8]
	mov r6, #0
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D3718
	mvn r0, #0
	add r4, sp, #0x74
	str r0, [sp, #0x3c]
_020D3320:
	ldr r0, [sp, #0x3c]
	cmp r6, r0
	beq _020D36F8
	ldr r0, [sp, #0x18]
	mov r2, r6
	mov r3, r4
	bl FUN_ov0_020d2c60
	add r0, sp, #0x80
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0x8c
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0x68
	ldmia r4, {r1, r2, r3}
	bl FUN_ov0_020d45ac
	mov r5, r0
	ldr r0, [sp, #0x68]
	ldr r3, [sp, #0x70]
	str r0, [sp, #0x28]
	mov r2, r3, asr #0x1f
	mov r0, r0, asr #0x1f
	str r2, [sp, #0x30]
	str r0, [sp, #0x2c]
	ldr r9, [sp, #0x28]
	ldmia r8, {r10, r12}
	smull r9, r11, r10, r9
	adds r9, r9, #0x800
	ldr r2, [r7, #0x14]
	ldr r1, [sp, #0x6c]
	ldr r0, [r8, #8]
	adc r11, r11, #0
	mov r9, r9, lsr #0xc
	orr r9, r9, r11, lsl #20
	smull lr, r11, r12, r1
	add r2, r12, r2
	str r11, [sp, #0x40]
	smull r12, r11, r2, r1
	str r11, [sp, #0x38]
	smull r2, r11, r0, r3
	adds r2, r2, #0x800
	str r12, [sp, #0x34]
	adc r11, r11, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r11, lsl #20
	adds r11, lr, #0x800
	ldr r12, [sp, #0x40]
	mov r11, r11, lsr #0xc
	adc r12, r12, #0
	orr r11, r11, r12, lsl #20
	ldr r12, [sp, #0x34]
	add r11, r9, r11
	adds lr, r12, #0x800
	ldr r12, [sp, #0x38]
	add r11, r2, r11
	adc r12, r12, #0
	mov lr, lr, lsr #0xc
	orr lr, lr, r12, lsl #20
	add r9, r9, lr
	add r2, r2, r9
	sub r11, r11, r5
	sub r9, r2, r5
	muls r2, r11, r9
	bpl _020D358C
	ldr r12, [sp, #0x28]
	mov r2, r10, asr #0x1f
	umull r11, r9, r12, r10
	mla r9, r12, r2, r9
	ldr r2, [sp, #0x2c]
	mov lr, r0, asr #0x1f
	mla r9, r2, r10, r9
	adds r2, r11, #0x800
	adc r9, r9, #0
	mov r2, r2, lsr #0xc
	str r10, [sp, #0x5c]
	orr r2, r2, r9, lsl #20
	umull r10, r9, r3, r0
	mla r9, r3, lr, r9
	ldr r3, [sp, #0x30]
	mla r9, r3, r0, r9
	adds r3, r10, #0x800
	adc r0, r9, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	add r0, r2, r3
	sub r0, r0, r5
	bl FX_Div
	rsb r0, r0, #0
	str r0, [sp, #0x60]
	ldr r1, [r8, #8]
	mov r0, r4
	str r1, [sp, #0x64]
	ldr r1, [r7, #0x10]
	str r1, [sp]
	add r1, sp, #0x5c
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d48f4
	cmp r0, #0
	beq _020D36F8
	add r0, sp, #0x5c
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r1, sp, #0x68
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d4a80
	cmp r0, #0
	ble _020D3504
	ldr r1, [sp, #0x5c]
	mov r0, #1
	str r1, [r8]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x60]
	str r0, [r8, #4]
	ldr r0, [sp, #0x64]
	str r0, [r8, #8]
	str r6, [sp, #0x44]
	b _020D3718
_020D3504:
	ldr r1, [sp, #0x3c]
	sub r1, r1, r0
	mov r0, #0xc
	mla r0, r1, r0, r4
	ldr r1, [sp, #0x1c]
	add r5, r1, #2
	ldr r1, _020D3790 ; =0x55555556
	smull r3, r2, r1, r5
	add r1, r2, r5, lsr #31
	mov r2, #3
	smull r1, r3, r2, r1
	sub r2, r5, r1
	mov r1, #0xc
	mul r5, r2, r1
	str r2, [sp, #0x1c]
	add r1, r4, r5
	add r2, sp, #0x50
	bl VEC_Subtract
	add r0, r4, r5
	add r1, sp, #0x50
	mov r2, r8
	add r3, sp, #0x5c
	bl FUN_ov0_020d47d4
	ldr r2, [r7, #0x10]
	cmp r0, r2
	bge _020D36F8
	mov r0, r8
	add r1, sp, #0x5c
	mov r3, r8
	bl FUN_ov0_020d4be8
_020D357C:
	mov r0, #1
	str r6, [sp, #0x24]
	str r0, [sp, #0x20]
	b _020D3718
_020D358C:
	cmp r9, #0
	rsblt r9, r9, #0
	cmp r11, #0
	rsblt r11, r11, #0
	cmp r11, r9
	ldr r0, [r8]
	bgt _020D35C0
	str r0, [sp, #0x5c]
	ldr r0, [r8, #4]
	str r0, [sp, #0x60]
	ldr r0, [r8, #8]
	str r0, [sp, #0x64]
	b _020D35E0
_020D35C0:
	str r0, [sp, #0x5c]
	ldr r1, [r8, #4]
	str r1, [sp, #0x60]
	ldr r0, [r8, #8]
	str r0, [sp, #0x64]
	ldr r0, [r7, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x60]
_020D35E0:
	ldr r1, [r7, #0x10]
	mov r0, r4
	str r1, [sp]
	add r1, sp, #0x5c
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d48f4
	cmp r0, #0
	beq _020D36F8
	ldr r9, [sp, #0x70]
	ldr r0, [sp, #0x64]
	ldr r12, [sp, #0x68]
	smull r3, r2, r0, r9
	adds r3, r3, #0x800
	ldr r1, [sp, #0x5c]
	smull r0, r11, r9, r9
	mov r10, r3, lsr #0xc
	adc r2, r2, #0
	smull r9, r3, r1, r12
	adds r9, r9, #0x800
	orr r10, r10, r2, lsl #20
	smull r2, r1, r12, r12
	adc r3, r3, #0
	mov r9, r9, lsr #0xc
	orr r9, r9, r3, lsl #20
	ldr r3, [sp, #0x60]
	ldr r12, [sp, #0x6c]
	smull lr, r12, r3, r12
	adds r3, lr, #0x800
	adc r12, r12, #0
	adds r2, r2, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r12, lsl #20
	add r3, r9, r3
	add r3, r10, r3
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	adds r1, r0, #0x800
	adc r0, r11, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r5, r3, r5
	add r0, r2, r1
	bl FX_Sqrt
	mov r1, r0
	mov r0, r5
	bl FX_Div
	rsb r2, r0, #0
	cmp r0, #0
	ldr r1, [r7, #0x10]
	movge r2, r0
	cmp r2, r1
	bge _020D36F8
	ldr r9, [sp, #0x68]
	ldr r3, [sp, #0x70]
	mov r2, #0
	add r5, sp, #0x50
	sub r4, r1, r0
	mov r0, r5
	mov r1, r5
	str r9, [sp, #0x50]
	str r3, [sp, #0x58]
	str r2, [sp, #0x54]
	bl VEC_Normalize
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r8
	bl VEC_MultAdd
	b _020D357C
_020D36F8:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x48]
	ldr r0, [r0, #8]
	add r6, r6, #1
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r6, r0
	blt _020D3320
_020D3718:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020D3288
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x24]
	str r1, [r7, #0x18]
	cmn r0, #1
	ldr r0, [sp, #0x48]
	str r0, [r7, #0x1c]
	ldr r0, [sp, #0x44]
	str r0, [r7, #0x20]
	ldr r0, [sp, #0x24]
	str r0, [r7, #0x24]
	ldr r0, [r8]
	str r0, [r7]
	ldr r0, [r8, #4]
	str r0, [r7, #4]
	ldr r0, [r8, #8]
	str r0, [r7, #8]
	ldrnesb r0, [r7, #0xd]
	orrne r0, r0, #2
	strneb r0, [r7, #0xd]
	ldr r0, [sp, #0x44]
	cmn r0, #1
	ldrnesb r0, [r7, #0xd]
	orrne r0, r0, #1
	strneb r0, [r7, #0xd]
	mov r0, #1
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3790: .word 0x55555556
	arm_func_end FUN_ov0_020d3248

	arm_func_start FUN_ov0_020d3794
FUN_ov0_020d3794: ; 0x020D3794
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xd4
	mov r4, r2
	ldr r3, [r4, #0x18]
	mvn r2, #0
	str r3, [sp, #0x88]
	str r2, [sp, #0x44]
	ldr r2, [r4, #0x1c]
	str r0, [sp, #0x70]
	str r2, [sp, #0x84]
	ldr r0, [sp, #0x44]
	ldrsb r2, [r4, #0xd]
	mov r5, r1
	str r0, [sp, #0x40]
	bic r1, r2, #3
	str r0, [sp, #0x38]
	strb r1, [r4, #0xd]
_020D37D8:
	mov r3, #0
	str r3, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	add r2, sp, #0x88
	mov r1, #1
	mov r3, r5
	bl FUN_ov0_020d4028
	cmp r0, #0
	bne _020D3984
	ldr r1, [sp, #0x88]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	movne r0, #1
	subne r0, r0, #2
	strne r0, [sp, #0x44]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	blt _020D3888
	add r6, sp, #0xb0
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x44]
	mov r3, r6
	bl FUN_ov0_020d2c60
	ldr r1, [r5]
	mov r2, r6
	str r1, [sp, #0x98]
	ldr r7, [r5, #4]
	add r0, sp, #0xa4
	str r7, [sp, #0x9c]
	ldr r6, [r5, #8]
	add r1, sp, #0x80
	str r6, [sp, #0xa0]
	ldr r6, [r4, #0x10]
	add r3, sp, #0x98
	add r7, r7, r6
	str r7, [sp, #0x9c]
	str r6, [sp]
	bl FUN_ov0_020d4488
	mov r7, r0
	cmp r7, #0
	ldrle r0, [sp, #0x44]
	strle r0, [sp, #0x38]
	mvnle r0, #0
	strle r0, [sp, #0x44]
_020D3888:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bge _020D393C
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x88]
	ldr r0, [r0, #8]
	mov r9, #0
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	ble _020D393C
	add r6, sp, #0xb0
_020D38B8:
	ldr r0, [sp, #0x38]
	cmp r0, r9
	beq _020D391C
	ldr r0, [sp, #0x70]
	mov r2, r9
	mov r3, r6
	bl FUN_ov0_020d2c60
	ldr r1, [r5]
	add r0, sp, #0xa4
	str r1, [sp, #0x98]
	ldr r10, [r5, #4]
	add r1, sp, #0x80
	str r10, [sp, #0x9c]
	ldr r3, [r5, #8]
	mov r2, r6
	str r3, [sp, #0xa0]
	ldr r7, [r4, #0x10]
	add r3, sp, #0x98
	add r10, r10, r7
	str r10, [sp, #0x9c]
	str r7, [sp]
	bl FUN_ov0_020d4488
	movs r7, r0
	cmpne r7, #0
	bgt _020D393C
_020D391C:
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x88]
	ldr r0, [r0, #8]
	add r9, r9, #1
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r9, r0
	blt _020D38B8
_020D393C:
	cmp r7, #0
	ble _020D3984
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #0x80]
	add r1, sp, #0xa4
	sub r6, r0, r2
	add r2, sp, #0x98
	mov r3, r5
	str r6, [sp, #0x80]
	bl VEC_MultAdd
	ldr r1, [r5, #4]
	ldr r0, [r4, #0x10]
	str r9, [sp, #0x44]
	sub r0, r1, r0
	str r0, [r5, #4]
	mov r0, #1
	str r9, [sp, #0x38]
	str r0, [sp, #0x3c]
_020D3984:
	ldr r0, [sp, #0x70]
	add r2, sp, #0x84
	mov r3, r5
	mov r1, #2
	bl FUN_ov0_020d4028
	cmp r0, #0
	bne _020D3EAC
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x84]
	ldr r0, [r0, #8]
	ldr r3, [r4, #0x10]
	ldr r0, [r0, r1, lsl #2]
	ldr r2, [r4, #0x14]
	ldr r0, [r0, #0x2c]
	sub r2, r2, r3
	cmp r0, #0
	ldmia r5, {r0, r6}
	str r0, [sp, #0x20]
	add r0, r6, r3
	str r0, [sp, #0x30]
	add r0, r6, r2
	str r0, [sp, #0x28]
	ldr r0, [r5, #8]
	mov r9, #0
	str r0, [sp, #0x18]
	ble _020D3EAC
	ldr r0, [sp, #0x30]
	add r6, sp, #0xb0
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x2c]
	mvn r0, #0
	str r0, [sp, #0x6c]
_020D3A28:
	ldr r0, [sp, #0x38]
	cmp r0, r9
	beq _020D3E8C
	ldr r0, [sp, #0x70]
	mov r2, r9
	mov r3, r6
	bl FUN_ov0_020d2c60
	add r0, sp, #0xbc
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0xc8
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, sp, #0xa4
	ldmia r6, {r1, r2, r3}
	bl FUN_ov0_020d45ac
	ldr r2, [sp, #0xa4]
	ldr r10, [sp, #0x20]
	str r2, [sp, #0x4c]
	ldr r3, [sp, #0x4c]
	ldr r1, [sp, #0xa8]
	umull r11, r3, r10, r3
	mov r2, r1, asr #0x1f
	str r2, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	adds r10, r11, #0x800
	mov r2, r2, asr #0x1f
	str r2, [sp, #0x50]
	ldr r2, [sp, #0xac]
	mov r11, r10, lsr #0xc
	mov r10, r2, asr #0x1f
	str r10, [sp, #0x54]
	ldr r12, [sp, #0x20]
	ldr r10, [sp, #0x50]
	ldr lr, [sp, #0x28]
	mla r3, r12, r10, r3
	ldr r12, [sp, #0x24]
	ldr r10, [sp, #0x4c]
	mla r3, r12, r10, r3
	adc r3, r3, #0
	ldr r10, [sp, #0x18]
	orr r11, r11, r3, lsl #20
	umull r12, r3, r10, r2
	adds r10, r12, #0x800
	mov r10, r10, lsr #0xc
	str r10, [sp, #0x74]
	ldr r12, [sp, #0x18]
	ldr r10, [sp, #0x54]
	mla r3, r12, r10, r3
	ldr r10, [sp, #0x1c]
	mla r3, r10, r2, r3
	adc r10, r3, #0
	ldr r3, [sp, #0x74]
	orr r3, r3, r10, lsl #20
	ldr r10, [sp, #0x30]
	str r3, [sp, #0x74]
	umull r12, r3, r10, r1
	adds r10, r12, #0x800
	mov r10, r10, lsr #0xc
	str r10, [sp, #0x58]
	ldr r12, [sp, #0x30]
	ldr r10, [sp, #0x48]
	mla r3, r12, r10, r3
	ldr r10, [sp, #0x34]
	mla r3, r10, r1, r3
	adc r10, r3, #0
	ldr r3, [sp, #0x58]
	orr r3, r3, r10, lsl #20
	str r3, [sp, #0x58]
	add r10, r11, r3
	ldr r3, [sp, #0x74]
	add r3, r3, r10
	umull r12, r10, lr, r1
	str r12, [sp, #0x78]
	ldr r12, [sp, #0x48]
	sub r3, r3, r0
	mla r10, lr, r12, r10
	str r10, [sp, #0x60]
	ldr r10, [sp, #0x78]
	ldr r12, [sp, #0x2c]
	adds r10, r10, #0x800
	mov r10, r10, lsr #0xc
	str r10, [sp, #0x5c]
	ldr r10, [sp, #0x60]
	str r3, [sp, #0x80]
	mla r10, r12, r1, r10
	str r10, [sp, #0x60]
	adc r12, r10, #0
	ldr r10, [sp, #0x5c]
	orr r10, r10, r12, lsl #20
	str r10, [sp, #0x5c]
	add r11, r11, r10
	ldr r10, [sp, #0x74]
	add r10, r10, r11
	sub r11, r10, r0
	muls r10, r3, r11
	bpl _020D3D38
	ldr r10, [r5]
	ldr r11, [sp, #0x4c]
	mov r3, r10, asr #0x1f
	str r3, [sp, #0x7c]
	umull r12, r3, r11, r10
	str r12, [sp, #0x64]
	mov r12, r11
	ldr r11, [sp, #0x7c]
	str r10, [sp, #0x98]
	mla r3, r12, r11, r3
	ldr r11, [sp, #0x50]
	ldr lr, [r5, #8]
	mla r3, r11, r10, r3
	ldr r10, [sp, #0x64]
	mov r12, lr, asr #0x1f
	adds r10, r10, #0x800
	adc r3, r3, #0
	mov r11, r10, lsr #0xc
	orr r11, r11, r3, lsl #20
	umull r3, r10, r2, lr
	mla r10, r2, r12, r10
	ldr r2, [sp, #0x54]
	str r3, [sp, #0x68]
	mla r10, r2, lr, r10
	mov r2, r3
	adds r3, r2, #0x800
	adc r2, r10, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r2, r11, r3
	sub r0, r2, r0
	bl FX_Div
	rsb r0, r0, #0
	str r0, [sp, #0x9c]
	ldr r1, [r5, #8]
	mov r0, r6
	str r1, [sp, #0xa0]
	ldr r1, [r4, #0x10]
	str r1, [sp]
	add r1, sp, #0x98
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d48f4
	cmp r0, #0
	beq _020D3E8C
	add r0, sp, #0x98
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r1, sp, #0xa4
	mov r0, r6
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d4a80
	mov r7, r0
	cmp r7, #0
	ble _020D3CB8
	ldr r0, [sp, #0x98]
	str r9, [sp, #0x40]
	str r0, [r5]
	ldr r1, [sp, #0x9c]
	mov r0, #1
	str r1, [r5, #4]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0xa0]
	str r0, [r5, #8]
	b _020D3EAC
_020D3CB8:
	ldr r0, [sp, #0x6c]
	add r3, r8, #2
	sub r7, r0, r7
	ldr r0, _020D3F28 ; =0x55555556
	smull r1, r8, r0, r3
	add r8, r8, r3, lsr #31
	mov r0, #3
	smull r1, r2, r0, r8
	sub r8, r3, r1
	mov r0, #0xc
	mul r10, r8, r0
	mla r0, r7, r0, r6
	add r1, r6, r10
	add r2, sp, #0x8c
	bl VEC_Subtract
	add r0, r6, r10
	add r1, sp, #0x8c
	mov r2, r5
	add r3, sp, #0x98
	bl FUN_ov0_020d47d4
	ldr r2, [r4, #0x10]
	cmp r0, r2
	bge _020D3E8C
_020D3D14:
	mov r0, r5
	add r1, sp, #0x98
	mov r3, r5
	bl FUN_ov0_020d4be8
	str r9, [sp, #0x40]
	str r9, [sp, #0x38]
_020D3D2C:
	mov r0, #1
	str r0, [sp, #0x3c]
	b _020D3EAC
_020D3D38:
	rsb r0, r11, #0
	cmp r11, #0
	movge r0, r11
	cmp r3, #0
	rsblt r3, r3, #0
	cmp r3, r0
	bgt _020D3D64
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x98]
	ldr r0, [sp, #0x30]
	b _020D3D74
_020D3D64:
	ldr r0, [sp, #0x20]
	str r11, [sp, #0x80]
	str r0, [sp, #0x98]
	ldr r0, [sp, #0x28]
_020D3D74:
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0xa0]
	ldr r1, [r4, #0x10]
	mov r0, r6
	str r1, [sp]
	add r1, sp, #0x98
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d48f4
	cmp r0, #0
	beq _020D3E8C
	ldr r1, [sp, #0x80]
	ldr r0, [r4, #0x10]
	rsb r2, r1, #0
	cmp r1, #0
	movge r2, r1
	cmp r2, r0
	bge _020D3E8C
	add r2, sp, #0x98
	rsb r0, r1, #0
	add r1, sp, #0xa4
	mov r3, r2
	bl VEC_MultAdd
	add r0, sp, #0x98
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r1, sp, #0xa4
	mov r0, r6
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d4a80
	mov r7, r0
	cmp r7, #0
	ble _020D3E2C
	ldr r0, [r4, #0x10]
	add r1, sp, #0xa4
	add r2, sp, #0x98
	mov r3, r5
	bl VEC_MultAdd
	ldr r1, [r5, #4]
	ldr r0, [r4, #0x10]
	str r9, [sp, #0x40]
	sub r0, r1, r0
	str r9, [sp, #0x38]
	str r0, [r5, #4]
	b _020D3D2C
_020D3E2C:
	ldr r0, [sp, #0x6c]
	add r3, r8, #2
	sub r7, r0, r7
	ldr r0, _020D3F28 ; =0x55555556
	smull r1, r8, r0, r3
	add r8, r8, r3, lsr #31
	mov r0, #3
	smull r1, r2, r0, r8
	sub r8, r3, r1
	mov r0, #0xc
	mul r10, r8, r0
	mla r0, r7, r0, r6
	add r1, r6, r10
	add r2, sp, #0x8c
	bl VEC_Subtract
	add r0, r6, r10
	add r1, sp, #0x8c
	mov r2, r5
	add r3, sp, #0x98
	bl FUN_ov0_020d4670
	ldr r2, [r4, #0x10]
	cmp r0, r2
	bge _020D3E8C
	b _020D3D14
_020D3E8C:
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x84]
	ldr r0, [r0, #8]
	add r9, r9, #1
	ldr r0, [r0, r1, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r9, r0
	blt _020D3A28
_020D3EAC:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _020D37D8
	ldr r0, [sp, #0x88]
	mvn r1, #0
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x84]
	cmp r0, r1
	ldr r0, [sp, #0x44]
	str r2, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x24]
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	ldrnesb r0, [r4, #0xd]
	orrne r0, r0, #2
	strneb r0, [r4, #0xd]
	ldr r0, [sp, #0x44]
	cmp r0, r1
	ldrnesb r0, [r4, #0xd]
	orrne r0, r0, #1
	strneb r0, [r4, #0xd]
	mov r0, #1
	add sp, sp, #0xd4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3F28: .word 0x55555556
	arm_func_end FUN_ov0_020d3794

	arm_func_start FUN_ov0_020d3f2c
FUN_ov0_020d3f2c: ; 0x020D3F2C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, r2
	ldr r4, [r11]
	mov r9, r1
	str r4, [sp, #8]
	mov r2, r3
	ldr r2, [r2]
	ldr r8, [sp, #0x30]
	str r3, [sp]
	str r2, [sp, #4]
	mov r10, r0
	cmp r4, #0
	movlt r0, #0
	strlt r0, [sp, #8]
	add r2, sp, #8
	mov r0, r10
	mov r1, r9
	mov r3, r8
	bl FUN_ov0_020d4028
	ldr r7, [sp, #8]
	cmp r7, #0
	addlt sp, sp, #0xc
	mov r1, r7
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, r7
	mvnne r0, #0
	strne r0, [sp, #4]
	mvn r5, #0
	add r4, sp, #8
	add r6, sp, #4
_020D3FAC:
	mov r0, r10
	mov r2, r6
	mov r3, r8
	bl FUN_ov0_020d40dc
	cmp r0, #0
	bne _020D3FF4
	ldr r1, [sp, #8]
	mov r0, r10
	add r12, r1, #1
	mov r1, r9
	mov r2, r4
	mov r3, r8
	str r12, [sp, #8]
	str r5, [sp, #4]
	bl FUN_ov0_020d4028
	ldr r1, [sp, #8]
	cmp r7, r1
	bne _020D3FAC
_020D3FF4:
	ldr r0, [sp, #4]
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #8]
	mov r0, #1
	str r1, [r11]
	ldr r2, [sp, #4]
	ldr r1, [sp]
	str r2, [r1]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020d3f2c

	arm_func_start FUN_ov0_020d4028
FUN_ov0_020d4028: ; 0x020D4028
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r4, [r5, #4]
	mov r8, r2
	mov r9, r1
	ldr r0, [r8]
	ldr r1, [r4, #0xc]
	mov r7, r3
	bl _s32_div_f
	str r1, [r8]
	ldr r0, [r5, #4]
	mov r4, #0
	ldr r6, [r0, #0xc]
	cmp r6, #0
	ble _020D40C8
	ldr r5, [r5, #8]
_020D4068:
	ldr r0, [r5, r1, lsl #2]
	ldr r2, [r0, #0x18]
	cmp r9, r2
	bne _020D40B0
	ldr r3, [r7]
	ldr r2, [r0]
	cmp r2, r3
	bgt _020D40B0
	ldr r2, [r0, #0xc]
	cmp r2, r3
	blt _020D40B0
	ldr r3, [r7, #8]
	ldr r2, [r0, #8]
	cmp r2, r3
	bgt _020D40B0
	ldr r0, [r0, #0x14]
	cmp r0, r3
	bge _020D40C8
_020D40B0:
	add r0, r1, #1
	mov r1, r6
	add r4, r4, #1
	bl _s32_div_f
	cmp r4, r6
	blt _020D4068
_020D40C8:
	cmp r4, r6
	moveq r0, #0
	strne r1, [r8]
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov0_020d4028

	arm_func_start FUN_ov0_020d40dc
FUN_ov0_020d40dc: ; 0x020D40DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	str r2, [sp, #0xc]
	ldr r2, [r2]
	str r0, [sp, #4]
	str r2, [sp, #0x14]
	str r1, [sp, #8]
	mov r10, r3
	movs r0, r2
	mvn r7, #1
	bmi _020D421C
_020D4108:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r1, [r0, #8]
	ldr r0, [sp, #8]
	add r5, sp, #0x4c
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #4]
	ldr r6, [r1, #0x34]
	mov r4, r2
	ldr r1, [sp, #8]
	mov r3, r5
	add r6, r6, r4, lsl #4
	bl FUN_ov0_020d2c60
	ldr r0, [r10]
	mov r8, #0
	str r0, [sp, #0x28]
	ldr r0, [r10, #4]
	mov r9, #2
	str r0, [sp, #0x2c]
	ldr r0, [r10, #8]
	mov r11, #0xc
	str r0, [sp, #0x30]
_020D4160:
	add r0, r6, r9, lsl #1
	ldrsh r0, [r0, #6]
	cmp r7, r0
	beq _020D41D8
	mov r0, #0xc
	mul r4, r9, r0
	mla r0, r8, r11, r5
	add r1, r5, r4
	add r2, sp, #0x40
	bl VEC_Subtract
	add r1, r5, r4
	add r0, sp, #0x28
	add r2, sp, #0x34
	bl VEC_Subtract
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x40]
	smull r3, r0, r1, r0
	adds r3, r3, #0x800
	adc r1, r0, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r1, [sp, #0x3c]
	smull r3, r1, r2, r1
	adds r2, r3, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	subs r0, r0, r2
	bmi _020D41E8
_020D41D8:
	mov r9, r8
	add r8, r8, #1
	cmp r8, #3
	blt _020D4160
_020D41E8:
	cmp r8, #3
	ldreq r1, [sp, #0x14]
	ldreq r0, [sp, #0xc]
	addeq sp, sp, #0x70
	streq r1, [r0]
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r6, r9, lsl #1
	ldrsh r0, [r0, #6]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x14]
	cmp r0, #0
	bge _020D4108
_020D421C:
	ldr r0, [sp, #4]
	mov r8, #0
	ldr r1, [r0, #8]
	ldr r0, [sp, #8]
	ldr r1, [r1, r0, lsl #2]
	mvn r0, #0
	ldr r1, [r1, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x80000000
	str r0, [sp, #0x18]
	cmp r1, #0
	ble _020D444C
_020D424C:
	add r4, sp, #0x4c
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, r8
	mov r3, r4
	bl FUN_ov0_020d2c60
	ldr r2, [r10]
	ldr r1, [sp, #0x50]
	str r2, [sp, #0x28]
	ldr r2, [r10, #4]
	mov r0, r4
	str r2, [sp, #0x2c]
	ldr r2, [r10, #8]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	mov r1, #0
	str r1, [sp]
	add r1, sp, #0x28
	ldmia r1, {r1, r2, r3}
	bl FUN_ov0_020d48f4
	cmp r0, #0
	beq _020D442C
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x4c]
	cmp r0, r7
	ldr r0, [r10]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x28]
	ldr r0, [r10, #4]
	add r3, r3, r1
	str r0, [sp, #0x2c]
	ldr r4, [r10, #8]
	ldr r2, [sp, #0x54]
	ldr r1, [sp, #0x60]
	str r4, [sp, #0x30]
	add r2, r2, r1
	ldr r1, [sp, #0x64]
	str r0, [sp, #0x20]
	add r4, r1, r3
	ldr r3, [sp, #0x6c]
	ldr r1, _020D4484 ; =0x55555556
	add r2, r3, r2
	smull r0, r3, r1, r4
	add r3, r3, r4, lsr #31
	str r3, [sp, #0x1c]
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	add r0, sp, #0x1c
	add r1, sp, #0x28
	add r2, sp, #0x34
	strne r8, [sp, #0x10]
	str r3, [sp, #0x24]
	bl VEC_Subtract
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ldreq r0, [sp, #0x38]
	cmpeq r0, #0
	ldreq r0, [sp, #0x3c]
	cmpeq r0, #0
	beq _020D4360
	add r4, sp, #0x34
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	add r2, sp, #0x28
	mov r1, r4
	mov r0, #0x14
	mov r3, r2
	bl VEC_MultAdd
_020D4360:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #0x68]
	add r0, r1, r0
	ldr r1, _020D4484 ; =0x55555556
	add r2, r2, r0
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r11, #0xc
	str r3, [sp, #0x20]
	mov r9, #0
	mov r0, #2
	add r6, sp, #0x4c
	mov r4, r11
_020D4398:
	mul r5, r0, r11
	mla r0, r9, r4, r6
	add r1, r6, r5
	add r2, sp, #0x40
	bl VEC_Subtract
	add r1, r6, r5
	add r0, sp, #0x28
	add r2, sp, #0x34
	bl VEC_Subtract
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x40]
	smull r3, r0, r1, r0
	adds r3, r3, #0x800
	adc r1, r0, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r1, [sp, #0x3c]
	smull r3, r1, r2, r1
	adds r2, r3, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	subs r0, r0, r2
	bmi _020D440C
	mov r0, r9
	add r9, r9, #1
	cmp r9, #3
	blt _020D4398
_020D440C:
	cmp r9, #3
	bne _020D442C
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	ldrge r0, [sp, #0xc]
	strge r1, [sp, #0x18]
	strge r8, [r0]
_020D442C:
	ldr r0, [sp, #4]
	add r8, r8, #1
	ldr r1, [r0, #8]
	ldr r0, [sp, #8]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0, #0x2c]
	cmp r8, r0
	blt _020D424C
_020D444C:
	ldr r0, [sp, #0x18]
	cmp r0, #0x80000000
	addne sp, sp, #0x70
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	cmp r0, #0
	strlt r7, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4484: .word 0x55555556
	arm_func_end FUN_ov0_020d40dc

	arm_func_start FUN_ov0_020d4488
FUN_ov0_020d4488: ; 0x020D4488
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r6, [sp, #0x30]
	mov r5, r2
	mov r7, r0
	str r6, [sp]
	mov r4, r3
	mov r6, r1
	mov r0, r5
	ldmia r4, {r1, r2, r3}
	bl FUN_ov0_020d48f4
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0xc
	mov r3, sp
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r5, #0x18
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r7
	ldmia r5, {r1, r2, r3}
	bl FUN_ov0_020d45ac
	ldr r2, [r4, #8]
	ldr r1, [r7, #8]
	ldr r3, [r4]
	smull r12, r1, r2, r1
	adds r2, r12, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [r7]
	ldr r12, [r4, #4]
	smull lr, r1, r3, r1
	adds lr, lr, #0x800
	adc r3, r1, #0
	mov r1, lr, lsr #0xc
	orr r1, r1, r3, lsl #20
	ldr r3, [r7, #4]
	smull lr, r3, r12, r3
	adds r12, lr, #0x800
	adc r3, r3, #0
	mov r12, r12, lsr #0xc
	orr r12, r12, r3, lsl #20
	add r1, r1, r12
	add r1, r2, r1
	sub r12, r1, r0
	cmp r6, #0
	strne r12, [r6]
	rsb r1, r12, #0
	cmp r12, #0
	ldr r0, [sp, #0x30]
	movge r1, r12
	cmp r1, r0
	addge sp, sp, #0x18
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r7
	mov r2, r4
	mov r3, r4
	rsb r0, r12, #0
	bl VEC_MultAdd
	mov r3, sp
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r5
	ldmia r7, {r1, r2, r3}
	bl FUN_ov0_020d4a80
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020d4488

	arm_func_start FUN_ov0_020d45ac
FUN_ov0_020d45ac: ; 0x020D45AC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	add r7, sp, #0x34
	add r6, sp, #0xc
	mov r4, r0
	add r0, sp, #0x40
	mov r1, r7
	mov r2, r6
	bl VEC_Subtract
	add r5, sp, #0
	add r0, sp, #0x4c
	mov r1, r7
	mov r2, r5
	bl VEC_Subtract
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl VEC_CrossProduct
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x3c]
	ldr r12, [r4]
	smull r2, r0, r1, r0
	adds r2, r2, #0x800
	adc r1, r0, #0
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldr r3, [sp, #0x34]
	ldr r2, [r4, #4]
	smull lr, r4, r12, r3
	ldr r1, [sp, #0x38]
	adds r12, lr, #0x800
	smull r3, r1, r2, r1
	adc r2, r4, #0
	mov r4, r12, lsr #0xc
	orr r4, r4, r2, lsl #20
	adds r2, r3, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r4, r2
	add r0, r0, r1
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov0_020d45ac

	arm_func_start FUN_ov0_020d4670
FUN_ov0_020d4670: ; 0x020D4670
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	str r1, [sp]
	mov r6, r0
	mov r5, r2
	ldr r2, [sp]
	ldr r9, [r6, #8]
	ldr r8, [r5, #8]
	ldr r2, [r2, #8]
	ldr r7, [r6]
	ldr r4, [r5]
	sub r8, r9, r8
	sub r7, r7, r4
	smull r4, r8, r2, r8
	ldr r0, [r1, #4]
	adds r9, r4, #0x800
	ldr r1, [r1]
	ldr r10, [r6, #4]
	ldr r4, [r5, #4]
	smull lr, r11, r2, r2
	sub r2, r10, r4
	mov r4, r3
	adc r3, r8, #0
	smull r8, r7, r1, r7
	mov r10, r9, lsr #0xc
	adds r8, r8, #0x800
	orr r10, r10, r3, lsl #20
	smull r12, r3, r1, r1
	adc r1, r7, #0
	mov r9, r8, lsr #0xc
	smull r8, r7, r0, r2
	orr r9, r9, r1, lsl #20
	smull r2, r1, r0, r0
	adds r0, r8, #0x800
	adc r7, r7, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r7, lsl #20
	adds r7, lr, #0x800
	add r0, r9, r0
	adc r8, r11, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, r8, lsl #20
	adds r8, r12, #0x800
	adc r3, r3, #0
	adds r2, r2, #0x800
	mov r8, r8, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r8, r8, r3, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r8, r2
	add r1, r7, r1
	add r0, r10, r0
	rsbs r1, r1, #0
	beq _020D4750
	bl FX_Div
_020D4750:
	cmp r0, #0
	bgt _020D4774
	ldr r0, [r6]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	str r0, [sp, #0xc]
	b _020D47A0
_020D4774:
	cmp r0, #0x1000
	blt _020D4790
	ldr r1, [sp]
	add r2, sp, #4
	mov r0, r6
	bl VEC_Add
	b _020D47A0
_020D4790:
	ldr r1, [sp]
	add r3, sp, #4
	mov r2, r6
	bl VEC_MultAdd
_020D47A0:
	cmp r4, #0
	beq _020D47C0
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [sp, #8]
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #8]
_020D47C0:
	add r1, sp, #4
	mov r0, r5
	bl VEC_Distance
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov0_020d4670

	arm_func_start FUN_ov0_020d47d4
FUN_ov0_020d47d4: ; 0x020D47D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r5, r2
	mov r6, r1
	ldr r4, [r6, #8]
	ldr r0, [r6]
	ldr r9, [r7]
	ldr r8, [r5]
	ldr r2, [r7, #8]
	ldr r1, [r5, #8]
	sub r8, r9, r8
	sub r1, r2, r1
	smull r8, r2, r0, r8
	adds r10, r8, #0x800
	smull r1, r8, r4, r1
	adc r9, r2, #0
	adds r1, r1, #0x800
	mov r10, r10, lsr #0xc
	smull r2, r12, r0, r0
	adc r0, r8, #0
	adds lr, r2, #0x800
	mov r8, r1, lsr #0xc
	smull r2, r1, r4, r4
	mov r4, r3
	orr r10, r10, r9, lsl #20
	orr r8, r8, r0, lsl #20
	add r0, r10, r8
	adc r3, r12, #0
	adds r2, r2, #0x800
	mov r8, lr, lsr #0xc
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r8, r8, r3, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r8, r2
	rsbs r1, r1, #0
	beq _020D4870
	bl FX_Div
_020D4870:
	cmp r0, #0
	bgt _020D4894
	ldr r0, [r7]
	str r0, [sp]
	ldr r0, [r7, #4]
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	b _020D48C0
_020D4894:
	cmp r0, #0x1000
	blt _020D48B0
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl VEC_Add
	b _020D48C0
_020D48B0:
	add r3, sp, #0
	mov r1, r6
	mov r2, r7
	bl VEC_MultAdd
_020D48C0:
	cmp r4, #0
	beq _020D48E0
	ldr r0, [sp]
	str r0, [r4]
	ldr r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	str r0, [r4, #8]
_020D48E0:
	add r1, sp, #0
	mov r0, r5
	bl VEC_Distance
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov0_020d47d4

	arm_func_start FUN_ov0_020d48f4
FUN_ov0_020d48f4: ; 0x020D48F4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r3, [r0, #0xc]
	ldr r12, [r0]
	ldr r7, [sp, #0x38]
	cmp r12, r3
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r8, [r0, #0x18]
	bgt _020D4928
	mov r5, r12
	cmp r12, r8
	b _020D4930
_020D4928:
	mov r5, r3
	cmp r3, r8
_020D4930:
	movgt r5, r8
	sub r5, r5, r7
	ldr lr, [r0, #0x10]
	ldr r4, [r0, #4]
	str r5, [sp]
	cmp r4, lr
	ldr r9, [r0, #0x1c]
	bgt _020D495C
	mov r10, r4
	cmp r4, r9
	b _020D4964
_020D495C:
	mov r10, lr
	cmp lr, r9
_020D4964:
	ldr r5, [r0, #0x14]
	movgt r10, r9
	ldr r6, [r0, #8]
	sub r11, r10, r7
	cmp r6, r5
	ldr r10, [r0, #0x20]
	bgt _020D498C
	mov r0, r6
	cmp r6, r10
	b _020D4994
_020D498C:
	mov r0, r5
	cmp r5, r10
_020D4994:
	movgt r0, r10
	sub r0, r0, r7
	cmp r12, r3
	blt _020D49B0
	cmp r12, r8
	movlt r12, r8
	b _020D49BC
_020D49B0:
	cmp r3, r8
	movlt r3, r8
	mov r12, r3
_020D49BC:
	cmp r4, lr
	add r3, r7, r12
	blt _020D49D4
	cmp r4, r9
	movlt r4, r9
	b _020D49E0
_020D49D4:
	cmp lr, r9
	movlt lr, r9
	mov r4, lr
_020D49E0:
	cmp r6, r5
	add r8, r7, r4
	blt _020D49F8
	cmp r6, r10
	movlt r6, r10
	b _020D4A04
_020D49F8:
	cmp r5, r10
	movlt r5, r10
	mov r6, r5
_020D4A04:
	ldr r5, [sp, #0x2c]
	ldr r4, [sp]
	add r6, r7, r6
	cmp r5, r4
	blt _020D4A20
	cmp r5, r3
	ble _020D4A30
_020D4A20:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020D4A30:
	cmp r2, r11
	blt _020D4A40
	cmp r2, r8
	ble _020D4A50
_020D4A40:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020D4A50:
	cmp r1, r0
	blt _020D4A60
	cmp r1, r6
	ble _020D4A70
_020D4A60:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020D4A70:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov0_020d48f4

	arm_func_start FUN_ov0_020d4a80
FUN_ov0_020d4a80: ; 0x020D4A80
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	ldr r1, [r10]
	ldr r0, [r10, #0xc]
	ldr r2, [r10, #0x18]
	add r0, r1, r0
	ldr r1, _020D4BE4 ; =0x55555556
	add r2, r2, r0
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	str r3, [sp]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0x10]
	ldr r3, [r10, #0x1c]
	add r0, r2, r0
	add r2, r3, r0
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	str r3, [sp, #4]
	ldr r2, [r10, #8]
	ldr r0, [r10, #0x14]
	ldr r3, [r10, #0x20]
	add r0, r2, r0
	add r2, r3, r0
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	add r0, sp, #0
	add r1, sp, #0x68
	add r2, sp, #0x18
	str r3, [sp, #8]
	bl VEC_Subtract
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldreq r0, [sp, #0x1c]
	cmpeq r0, #0
	ldreq r0, [sp, #0x20]
	cmpeq r0, #0
	addeq sp, sp, #0x30
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r8, sp, #0x18
	mov r0, r8
	mov r1, r8
	bl VEC_Normalize
	add r2, sp, #0x68
	mov r1, r8
	mov r3, r2
	mov r0, #0x14
	bl VEC_MultAdd
	mov r11, #0xc
	mov r9, #0
	mov r0, #2
	add r6, sp, #0x24
	add r5, sp, #0xc
	mov r4, r11
_020D4B6C:
	mul r7, r0, r11
	mla r0, r9, r4, r10
	mov r2, r6
	add r1, r10, r7
	bl VEC_Subtract
	add r0, sp, #0x68
	add r1, r10, r7
	mov r2, r8
	bl VEC_Subtract
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl VEC_CrossProduct
	add r0, sp, #0x5c
	mov r1, r5
	bl VEC_DotProduct
	cmp r0, #0
	blt _020D4BC4
	mov r0, r9
	add r9, r9, #1
	cmp r9, #3
	blt _020D4B6C
_020D4BC4:
	cmp r9, #3
	moveq r0, #1
	addne r0, r9, #1
	rsbne r0, r0, #0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020D4BE4: .word 0x55555556
	arm_func_end FUN_ov0_020d4a80

	arm_func_start FUN_ov0_020d4be8
FUN_ov0_020d4be8: ; 0x020D4BE8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	add r4, sp, #0
	mov r6, r2
	mov r2, r4
	mov r7, r1
	mov r5, r3
	bl VEC_Subtract
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	add r0, r6, #1
	mov r1, r4
	mov r2, r7
	mov r3, r5
	bl VEC_MultAdd
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov0_020d4be8

	.rodata
	.global ov0_020D4C30
ov0_020D4C30:
	.byte 0x83, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x89, 0x00, 0x00, 0x01, 0x5F, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x01, 0x60, 0x00, 0x00, 0x00
	.byte 0x8C, 0x00, 0x00, 0x01, 0x60, 0x00, 0x00, 0x00, 0x86, 0x00, 0x00, 0x01, 0x69, 0x00, 0x00, 0x00
	.byte 0x87, 0x00, 0x00, 0x01, 0x61, 0x00, 0x00, 0x00, 0x8A, 0x00, 0x00, 0x01, 0x68, 0x00, 0x00, 0x00
	.byte 0x67, 0x00, 0x00, 0x01, 0x6C, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x01, 0x5C, 0x00, 0x00, 0x00
	.byte 0x5D, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00
	.byte 0x66, 0x00, 0x00, 0x01, 0x6E, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00
	.byte 0x5C, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x01, 0x6F, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x01, 0x5D, 0x00, 0x00, 0x00
	.byte 0x71, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00, 0x74, 0x00, 0x00, 0x01, 0x6A, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x01, 0x6D, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x00, 0x01, 0x68, 0x00, 0x00, 0x00
	.byte 0x79, 0x00, 0x00, 0x01, 0x62, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x01, 0x62, 0x00, 0x00, 0x00
	.byte 0x7D, 0x00, 0x00, 0x01, 0x70, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x01, 0x5E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D4D28
ov0_020D4D28:
	.byte 0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x83, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x84, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x01, 0x3D, 0x00, 0x00, 0x00
	.byte 0x5F, 0x00, 0x00, 0x01, 0x37, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x01, 0x33, 0x00, 0x00, 0x00
	.byte 0x86, 0x00, 0x00, 0x01, 0x32, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x01, 0x2E, 0x00, 0x00, 0x00
	.byte 0x88, 0x00, 0x00, 0x01, 0x15, 0x00, 0x00, 0x00, 0x89, 0x00, 0x00, 0x01, 0x14, 0x00, 0x00, 0x00
	.byte 0x8A, 0x00, 0x00, 0x01, 0x2F, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x00, 0x01, 0x31, 0x00, 0x00, 0x00
	.byte 0x8F, 0x00, 0x00, 0x01, 0x30, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x01, 0x2D, 0x00, 0x00, 0x00
	.byte 0x8C, 0x00, 0x00, 0x01, 0x2D, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x01, 0x38, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x01, 0x39, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x01, 0x3B, 0x00, 0x00, 0x00
	.byte 0x5C, 0x00, 0x00, 0x01, 0x3F, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x01, 0x34, 0x00, 0x00, 0x00
	.byte 0x7B, 0x00, 0x00, 0x01, 0x1D, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x01, 0x36, 0x00, 0x00, 0x00
	.byte 0x65, 0x00, 0x00, 0x01, 0x36, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x00, 0x01, 0x3A, 0x00, 0x00, 0x00
	.byte 0x61, 0x00, 0x00, 0x01, 0x3C, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x01, 0x3E, 0x00, 0x00, 0x00
	.byte 0x63, 0x00, 0x00, 0x01, 0x12, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x01, 0x13, 0x00, 0x00, 0x00
	.byte 0x62, 0x00, 0x00, 0x01, 0x43, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x01, 0x40, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x01, 0x41, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x01, 0x44, 0x00, 0x00, 0x00
	.byte 0x6E, 0x00, 0x00, 0x01, 0x45, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x01, 0x35, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x01, 0x47, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x00, 0x01, 0x42, 0x00, 0x00, 0x00
	.byte 0x71, 0x00, 0x00, 0x01, 0x2C, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x01, 0x2B, 0x00, 0x00, 0x00
	.byte 0x73, 0x00, 0x00, 0x01, 0x2A, 0x00, 0x00, 0x00, 0x74, 0x00, 0x00, 0x01, 0x27, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x01, 0x16, 0x00, 0x00, 0x00
	.byte 0x7A, 0x00, 0x00, 0x01, 0x50, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x01, 0x46, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.global ov0_020D4E9C
ov0_020D4E9C:
	.byte 0x2D, 0x2B, 0x2B, 0x2D
	.byte 0x2B, 0x2D, 0x2B, 0x2B, 0x2B, 0x2B, 0x2B, 0x2D, 0x2D, 0x2D, 0x2B, 0x2D, 0x2D, 0x2D, 0x2B, 0x2D
	.byte 0x2B, 0x2B, 0x2D, 0x2D
	.global ov0_020D4EB4
ov0_020D4EB4:
	.byte 0xC3, 0x04, 0x00, 0x00, 0x21, 0x05, 0x00, 0x00, 0xC4, 0x04, 0x00, 0x00
	.byte 0x22, 0x05, 0x00, 0x00, 0xC5, 0x04, 0x00, 0x00, 0x23, 0x05, 0x00, 0x00, 0xC6, 0x04, 0x00, 0x00
	.byte 0x24, 0x05, 0x00, 0x00, 0xC7, 0x04, 0x00, 0x00, 0x25, 0x05, 0x00, 0x00, 0xC8, 0x04, 0x00, 0x00
	.byte 0x26, 0x05, 0x00, 0x00, 0xC9, 0x04, 0x00, 0x00, 0x27, 0x05, 0x00, 0x00, 0xCA, 0x04, 0x00, 0x00
	.byte 0x28, 0x05, 0x00, 0x00, 0xCB, 0x04, 0x00, 0x00, 0x29, 0x05, 0x00, 0x00, 0xCC, 0x04, 0x00, 0x00
	.byte 0x2A, 0x05, 0x00, 0x00, 0xCD, 0x04, 0x00, 0x00, 0x2B, 0x05, 0x00, 0x00, 0xCE, 0x04, 0x00, 0x00
	.byte 0x2C, 0x05, 0x00, 0x00, 0x41, 0x06, 0x00, 0x00, 0x45, 0x06, 0x00, 0x00, 0x42, 0x06, 0x00, 0x00
	.byte 0x46, 0x06, 0x00, 0x00, 0x43, 0x06, 0x00, 0x00, 0x47, 0x06, 0x00, 0x00, 0x44, 0x06, 0x00, 0x00
	.byte 0x48, 0x06, 0x00, 0x00, 0xCF, 0x04, 0x00, 0x00, 0x2D, 0x05, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00
	.global ov0_020D4F40
ov0_020D4F40:
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.global ov0_020D4F50
ov0_020D4F50:
	.word ov0_020D5C40
	.word 1
	.word ov0_020D5C50
	.word 2
	.word ov0_020D5C60
	.word 3
	.word ov0_020D5C20
	.word 4
	.word ov0_020D5C30
	.word 5
	.word ov0_020D5C80
	.word 7
	.word ov0_020D5C70
	.word 8
	.word 0
	.word 0
	.global ov0_020D4F90
ov0_020D4F90:
	.byte 0x01, 0x00, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x1E, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x40, 0x20, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x40, 0x21, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00, 0x40, 0x29, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.global ov0_020D5000
ov0_020D5000:
	.word ov0_020D5DF0
	.word 1
	.word ov0_020D5E20
	.word 2
	.word ov0_020D5E30
	.word 3
	.word ov0_020D5DC0
	.word 4
	.word ov0_020D5DD0
	.word 5
	.word ov0_020D5E00
	.word 6
	.word ov0_020D5E10
	.word 7
	.word ov0_020D5DE0
	.word 8
	.word 0
	.word 0
	.global ov0_020D5048
ov0_020D5048:
	.byte 0x00, 0xA0, 0x00, 0xC0, 0x00, 0xE0, 0x00, 0x80
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x40, 0x00, 0x20, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov0_020d505c
FUN_ov0_020d505c: ; 0x020D505C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D50A4 ; =0x020D5520
	str r0, [r4, #0xc]
	ldr r0, _020D50A8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _020D50AC ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D50A4: .word ov0_020D5520
_020D50A8: .word 0x00009CCD
_020D50AC: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d505c

	arm_func_start FUN_ov0_020d50b0
FUN_ov0_020d50b0: ; 0x020D50B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D50F8 ; =0x020D5590
	str r0, [r4, #0x14]
	ldr r0, _020D50FC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D5100 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D50F8: .word ov0_020D5590
_020D50FC: .word 0x00009CCD
_020D5100: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d50b0

	arm_func_start FUN_ov0_020d5104
FUN_ov0_020d5104: ; 0x020D5104
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D514C ; =0x020D561C
	str r0, [r4, #0x14]
	ldr r0, _020D5150 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D5154 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D514C: .word ov0_020D561C
_020D5150: .word 0x00009CCD
_020D5154: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d5104

	arm_func_start FUN_ov0_020d5158
FUN_ov0_020d5158: ; 0x020D5158
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D51A0 ; =0x020D56A8
	str r0, [r4, #0x14]
	ldr r0, _020D51A4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D51A8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D51A0: .word ov0_020D56A8
_020D51A4: .word 0x00009CCD
_020D51A8: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d5158

	arm_func_start FUN_ov0_020d51ac
FUN_ov0_020d51ac: ; 0x020D51AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D51F4 ; =0x020D5734
	str r0, [r4]
	ldr r0, _020D51F8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D51FC ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D51F4: .word ov0_020D5734
_020D51F8: .word 0x00009CCD
_020D51FC: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d51ac

	arm_func_start FUN_ov0_020d5200
FUN_ov0_020d5200: ; 0x020D5200
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D5244 ; =0x020D5BF0
	str r0, [r4, #0x10]
	ldr r0, _020D5248 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020D524C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D5244: .word ov0_020D5BF0
_020D5248: .word 0x00009CCD
_020D524C: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d5200

	arm_func_start FUN_ov0_020d5250
FUN_ov0_020d5250: ; 0x020D5250
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D5298 ; =0x020D5C08
	str r0, [r4, #8]
	ldr r0, _020D529C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020D52A0 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D5298: .word ov0_020D5C08
_020D529C: .word 0x00009CCD
_020D52A0: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d5250

	arm_func_start FUN_ov0_020d52a4
FUN_ov0_020d52a4: ; 0x020D52A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D52EC ; =0x020D5DA8
	str r0, [r4, #0x14]
	ldr r0, _020D52F0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020D52F4 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D52EC: .word ov0_020D5DA8
_020D52F0: .word 0x00009CCD
_020D52F4: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d52a4

	arm_func_start FUN_ov0_020d52f8
FUN_ov0_020d52f8: ; 0x020D52F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D5340 ; =0x020D5FD0
	str r0, [r4, #0x14]
	ldr r0, _020D5344 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D5348 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D5340: .word ov0_020D5FD0
_020D5344: .word 0x00009CCD
_020D5348: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d52f8

	arm_func_start FUN_ov0_020d534c
FUN_ov0_020d534c: ; 0x020D534C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D5390 ; =0x020D5FE8
	str r0, [r4, #0x10]
	ldr r0, _020D5394 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020D5398 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D5390: .word ov0_020D5FE8
_020D5394: .word 0x00009CCD
_020D5398: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d534c

	arm_func_start FUN_ov0_020d539c
FUN_ov0_020d539c: ; 0x020D539C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D53E0 ; =0x020D6000
	str r0, [r4, #0x10]
	ldr r0, _020D53E4 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020D53E8 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D53E0: .word ov0_020D6000
_020D53E4: .word 0x00009CCD
_020D53E8: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d539c

	arm_func_start FUN_ov0_020d53ec
FUN_ov0_020d53ec: ; 0x020D53EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D5434 ; =0x020D602C
	str r0, [r4]
	ldr r0, _020D5438 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020D543C ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D5434: .word ov0_020D602C
_020D5438: .word 0x00009CCD
_020D543C: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d53ec

	arm_func_start FUN_ov0_020d5440
FUN_ov0_020d5440: ; 0x020D5440
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D5484 ; =0x020D6084
	str r0, [r4, #0x10]
	ldr r0, _020D5488 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020D548C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D5484: .word ov0_020D6084
_020D5488: .word 0x00009CCD
_020D548C: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d5440

	arm_func_start FUN_ov0_020d5490
FUN_ov0_020d5490: ; 0x020D5490
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D54D8 ; =0x020D60AC
	str r0, [r4]
	ldr r0, _020D54DC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020D54E0 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D54D8: .word ov0_020D60AC
_020D54DC: .word 0x00009CCD
_020D54E0: .word 0x0000EA3C
	arm_func_end FUN_ov0_020d5490

	.section .sinit, 4
ov0_020D54E4:
	.word FUN_ov0_020d505c
	.word FUN_ov0_020d50b0
	.word FUN_ov0_020d5104
	.word FUN_ov0_020d5158
	.word FUN_ov0_020d51ac
	.word FUN_ov0_020d5200
	.word FUN_ov0_020d5250
	.word FUN_ov0_020d52a4
	.word FUN_ov0_020d52f8
	.word FUN_ov0_020d534c
	.word FUN_ov0_020d539c
	.word FUN_ov0_020d53ec
	.word FUN_ov0_020d5440
	.word FUN_ov0_020d5490

	.data
	.global ov0_020D5520
ov0_020D5520:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5540
ov0_020D5540:
	.word FUN_ov0_020bdc2c
	.word FUN_ov0_020bdbf8
	.word FUN_ov0_020bcb40
	.word FUN_ov0_020bdb64
	.word _ZN8CManager7vFUN_10Ev
	.word _ZN14CScreenManager10updateKeysEtt
	.word _ZN14CScreenManager8updateTPEP6TPData
	.word FUN_ov0_020bcdd8
	.word _ZN8CManager7vFUN_20Ev
	.word FUN_ov0_020bce48
	.word FUN_ov0_020bdba8
	.word FUN_ov0_020bcca8
	.word _ZN14CScreenManager20updateDisplayMappingEv
	.word FUN_ov0_020bd960
	.word _ZN14CScreenManager12transferMainEPv
	.word _ZN14CScreenManager11transferSubEPv
	.word _ZN14CScreenManager10signalMainEi
	.word _ZN14CScreenManager9signalSubEi
	.word _ZN14CScreenManager9stateMainEv
	.word _ZN14CScreenManager8stateSubEv
	.global ov0_020D5590
ov0_020D5590:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D55B0
ov0_020D55B0:
	.word FUN_0202a364
	.word FUN_ov0_020bdce8
	.word FUN_ov0_020bdc58
	.word FUN_ov0_020bdc74
	.word FUN_ov0_020bdc78
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov0_020bdc9c
	.word FUN_ov0_020bdcb4
	.word FUN_ov0_020bdcc0
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
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov0_020D561C
ov0_020D561C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D563C
ov0_020D563C:
	.word FUN_0202a368
	.word FUN_ov0_020be0b4
	.word FUN_ov0_020be0d0
	.word FUN_ov0_020be0cc
	.word FUN_ov0_020bdcfc
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov0_020bdeb8
	.word FUN_ov0_020be0c8
	.word FUN_ov0_020bdfb8
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
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov0_020D56A8
ov0_020D56A8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D56C8
ov0_020D56C8:
	.word FUN_0202a35c
	.word FUN_ov0_020be318
	.word FUN_ov0_020be0d4
	.word FUN_ov0_020be0d8
	.word FUN_ov0_020be0dc
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov0_020be1d0
	.word FUN_ov0_020be310
	.word FUN_ov0_020be314
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
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov0_020D5734
ov0_020D5734:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D574C
ov0_020D574C:
	.asciz "mr17d91"
	.balign 4, 0
	.global ov0_020D5754
ov0_020D5754:
	.asciz "mr17d01"
	.balign 4, 0
	.global ov0_020D575C
ov0_020D575C:
	.asciz "mr17d02"
	.balign 4, 0
	.global ov0_020D5764
ov0_020D5764:
	.asciz "mr17d12"
	.balign 4, 0
	.global ov0_020D576C
ov0_020D576C:
	.asciz "mr17d03"
	.balign 4, 0
	.global ov0_020D5774
ov0_020D5774:
	.asciz "mr17d93"
	.balign 4, 0
	.global ov0_020D577C
ov0_020D577C:
	.asciz "mr17d94"
	.balign 4, 0
	.global ov0_020D5784
ov0_020D5784:
	.asciz "mr17d06"
	.balign 4, 0
	.global ov0_020D578C
ov0_020D578C:
	.asciz "mr17d07"
	.balign 4, 0
	.global ov0_020D5794
ov0_020D5794:
	.asciz "mr17d13"
	.balign 4, 0
	.global ov0_020D579C
ov0_020D579C:
	.asciz "mr17d05"
	.balign 4, 0
	.global ov0_020D57A4
ov0_020D57A4:
	.asciz "mr17d04"
	.balign 4, 0
	.global ov0_020D57AC
ov0_020D57AC:
	.asciz "mr17d08"
	.balign 4, 0
	.global ov0_020D57B4
ov0_020D57B4:
	.asciz "mr17d09"
	.balign 4, 0
	.global ov0_020D57BC
ov0_020D57BC:
	.asciz "mr17d10"
	.balign 4, 0
	.global ov0_020D57C4
ov0_020D57C4:
	.asciz "mr17d92"
	.balign 4, 0
	.global ov0_020D57CC
ov0_020D57CC:
	.asciz "mr17d11"
	.balign 4, 0
	.global ov0_020D57D4
ov0_020D57D4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D57DC
ov0_020D57DC:
	.word FUN_ov0_020c6ed8
	.word FUN_ov0_020c502c
	.word 0
	.word 0
	.global ov0_020D57EC
ov0_020D57EC:  
	.word FUN_ov0_020cdc74
	.word FUN_ov0_020cdd00
	.word FUN_ov0_020cdda4
	.word FUN_ov0_020c6ef8
	.word FUN_ov0_020be7fc
	.word 0
	.word 0
	.global ov0_020D5808
ov0_020D5808:
	.word FUN_ov0_020cdc74
	.word FUN_ov0_020cdd00
	.word FUN_ov0_020cdda4
	.word FUN_ov0_020c6f18
	.word FUN_ov0_020be824
	.global ov0_020D581C
ov0_020D581C:
	.word ov0_020D5754
	.global ov0_020D5820
ov0_020D5820:
	.word ov0_020D575C
	.global ov0_020D5824
ov0_020D5824:
	.word ov0_020D576C
	.global ov0_020D5828
ov0_020D5828:
	.word ov0_020D57A4
	.global ov0_020D582C
ov0_020D582C:
	.word ov0_020D579C
	.global ov0_020D5830
ov0_020D5830:
	.word ov0_020D5784
	.global ov0_020D5834
ov0_020D5834:
	.word ov0_020D578C
	.global ov0_020D5838
ov0_020D5838:
	.word ov0_020D57AC
	.word ov0_020D57B4
	.word ov0_020D57BC
	.word ov0_020D57CC
	.word ov0_020D5764
	.word ov0_020D574C
	.word ov0_020D57C4
	.word ov0_020D5774
	.word ov0_020D577C
	.word ov0_020D5794
	.word 0
	.word 0
	.word 0
	.global ov0_020D586C
ov0_020D586C:
	.word FUN_0202a360
	.word FUN_ov0_020c6ebc
	.word FUN_ov0_020c5054
	.word FUN_ov0_020c5180
	.word FUN_ov0_020c38cc
	.word FUN_ov0_020c6ed0
	.word FUN_ov0_020c3c08
	.word FUN_ov0_020c4cdc
	.word FUN_ov0_020c4ce4
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
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov0_020D58D8
ov0_020D58D8:
	.asciz "%7d"
	.balign 4, 0
	.global ov0_020D58DC
ov0_020D58DC:
	.asciz "%7d"
	.balign 4, 0
	.global ov0_020D58E0
ov0_020D58E0: ; shift-jis string
	.byte 0x25, 0x73, 0x82, 0x6F, 0x0A, 0x25, 0x73, 0x82, 0x6F, 0x0A, 0x00, 0x00
	.global ov0_020D58EC
ov0_020D58EC: ; shift-jis string
	.byte 0x83, 0x52, 0x83, 0x7D
	.byte 0x83, 0x93, 0x83, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D58F8
ov0_020D58F8: ; shift-jis string
	.byte 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x00, 0x82
	.byte 0xE0, 0x82, 0xBF, 0x82, 0xE0, 0x82, 0xCC, 0x00, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB6, 0x82, 0xE3
	.byte 0x82, 0xC2, 0x00, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x00, 0x83, 0x56
	.byte 0x83, 0x58, 0x83, 0x65, 0x83, 0x80, 0x00, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x00, 0x00, 0x00
	.global ov0_020D5930
ov0_020D5930: ; shift-jis string
	.byte 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x00, 0x00
	.global ov0_020D5938
ov0_020D5938: ; shift-jis string
	.byte 0x82, 0xC8, 0x82, 0xE7, 0x82, 0xD1, 0x82, 0xA9
	.byte 0x82, 0xA6, 0x00, 0x82, 0xDD, 0x82, 0xF1, 0x82, 0xC8, 0x00, 0x82, 0xBB, 0x82, 0xA4, 0x82, 0xD1
	.byte 0x00, 0x82, 0xD0, 0x82, 0xC1, 0x82, 0xB3, 0x82, 0xC2, 0x82, 0xED, 0x82, 0xB4, 0x00, 0x00, 0x00
	.global ov0_020D5960
ov0_020D5960: ; shift-jis string
	.byte 0x82, 0xE0, 0x82, 0xBF, 0x82, 0xE0, 0x82, 0xCC, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D596C
ov0_020D596C: ; shift-jis string
	.byte 0x83, 0x41, 0x83, 0x43
	.byte 0x83, 0x65, 0x83, 0x80, 0x00, 0x82, 0xBB, 0x82, 0xA4, 0x82, 0xD1, 0x00, 0x82, 0xD0, 0x82, 0xC1
	.byte 0x82, 0xB3, 0x82, 0xC2, 0x82, 0xED, 0x82, 0xB4, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D598C
ov0_020D598C: ; shift-jis string
	.byte 0x82, 0xB9, 0x82, 0xF1
	.byte 0x82, 0xB6, 0x82, 0xE3, 0x82, 0xC2, 0x00, 0x00
	.global ov0_020D5998
ov0_020D5998: ; shift-jis string
	.byte 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A
	.byte 0x81, 0x5B, 0x00, 0x83, 0x6F, 0x83, 0x67, 0x83, 0x8B, 0x00, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x82, 0x50, 0x00, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0x51, 0x00
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0x52, 0x00, 0x00
	.global ov0_020D59CC
ov0_020D59CC: ; shift-jis string
	.byte 0x82, 0xB6, 0x82, 0xE5
	.byte 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x00, 0x00
	.global ov0_020D59D8
ov0_020D59D8: ; shift-jis string
	.byte 0x83, 0x75, 0x83, 0x8D, 0x83, 0x4F, 0x00, 0x82
	.byte 0xD6, 0x82, 0xF1, 0x82, 0xB9, 0x82, 0xA2, 0x00, 0x91, 0x49, 0x8E, 0xE8, 0x83, 0x6F, 0x83, 0x43
	.byte 0x83, 0x93, 0x83, 0x5F, 0x81, 0x5B, 0x00, 0x8B, 0x5A, 0x83, 0x6F, 0x83, 0x43, 0x83, 0x93, 0x83
	.byte 0x5F, 0x81, 0x5B, 0x00, 0x83, 0x50, 0x81, 0x5B, 0x83, 0x5E, 0x83, 0x43, 0x00, 0x83, 0x86, 0x83
	.byte 0x6A, 0x83, 0x74, 0x83, 0x48, 0x81, 0x5B, 0x83, 0x80, 0x00, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x90, 0xAC, 0x90, 0xD1, 0x00, 0x82, 0x65, 0x82, 0x65, 0x82, 0x68, 0x00, 0x00, 0x00
	.global ov0_020D5A30
ov0_020D5A30: ; shift-jis string
	.byte 0x83, 0x56, 0x83, 0x58, 0x83, 0x65, 0x83, 0x80, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5A3C
ov0_020D5A3C: ; shift-jis string
	.byte 0x82, 0xAB, 0x82, 0xEB
	.byte 0x82, 0xAD, 0x00, 0x83, 0x77, 0x83, 0x8B, 0x83, 0x76, 0x00, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x00, 0x00
	.global ov0_020D5A54
ov0_020D5A54: ; shift-jis string
	.byte 0x82, 0xD6, 0x82, 0xF1, 0x82, 0xB9, 0x82, 0xA2, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5A60
ov0_020D5A60: ; shift-jis string
	.byte 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x00, 0x82, 0xC2, 0x82, 0xA4, 0x82
	.byte 0xB5, 0x82, 0xF1, 0x82, 0x50, 0x00, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0x51
	.byte 0x00, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0x52, 0x00
	.global ov0_020D5A8C
ov0_020D5A8C: ; shift-jis string
	.byte 0x83, 0x81, 0x83, 0x93
	.byte 0x83, 0x6F, 0x81, 0x5B, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5A98
ov0_020D5A98: ; shift-jis string
	.byte 0x83, 0x70, 0x81, 0x5B, 0x83, 0x65, 0x83, 0x42
	.byte 0x81, 0x5B, 0x00, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x00, 0x83, 0x58, 0x83, 0x67, 0x83, 0x62
	.byte 0x83, 0x4E, 0x00, 0x00
	.global ov0_020D5AB4
ov0_020D5AB4:
	.asciz "%d:"
	.balign 4, 0
	.global ov0_020D5AB8
ov0_020D5AB8:
	.asciz "/data_iz/script/%s.dat"
	.balign 4, 0
ov0_020D5AD0:
	.asciz "mln_door.pac_"
	.balign 4, 0
	.global ov0_020D5AE0
ov0_020D5AE0:
	.asciz "RPG_ENCOUNT_TIME"
	.balign 4, 0
	.global ov0_020D5AF4
ov0_020D5AF4:
	.asciz "RPG_ENCOUNT_TIME"
	.balign 4, 0
	.global ov0_020D5B08
ov0_020D5B08:
	.asciz "RPG_ENCOUNT_TIME"
	.balign 4, 0
	.global ov0_020D5B1C
ov0_020D5B1C:
	.asciz "mln_i01.pac_"
	.balign 4, 0
	.global ov0_020D5B2C
ov0_020D5B2C:
	.asciz "RPG_ENCOUNT_TIME"
	.balign 4, 0
	.global ov0_020D5B40
ov0_020D5B40:
	.asciz "RPG_ENCOUNT_TIME"
	.balign 4, 0
	.global ov0_020D5B54
ov0_020D5B54:
	.asciz "RPG_HEAD_MAX"
	.balign 4, 0
	.global ov0_020D5B64
ov0_020D5B64:
	.asciz "RPG_BODY_MAX"
	.balign 4, 0
	.global ov0_020D5B74
ov0_020D5B74:
	.asciz "RPG_HEAD_SIZE"
	.balign 4, 0
	.global ov0_020D5B84
ov0_020D5B84:
	.asciz "RPG_BODY_SIZE"
	.balign 4, 0
	.global ov0_020D5B94
ov0_020D5B94:
	.asciz "%s.mbld"
	.balign 4, 0
	.global ov0_020D5B9C
ov0_020D5B9C:
	.asciz "mo"
	.balign 4, 0
	.global ov0_020D5BA0
ov0_020D5BA0:
	.asciz "open"
	.balign 4, 0
	.global ov0_020D5BA8
ov0_020D5BA8:
	.asciz "mo"
	.balign 4, 0
	.global ov0_020D5BAC
ov0_020D5BAC:
	.asciz "mo"
	.balign 4, 0
	.global ov0_020D5BB0
ov0_020D5BB0:
	.asciz "mo0000"
	.balign 4, 0
	.global ov0_020D5BB8
ov0_020D5BB8:
	.asciz "%s.mdjd"
	.balign 4, 0
	.global ov0_020D5BC0
ov0_020D5BC0:
	.asciz "script/mr"
	.balign 4, 0
	.global ov0_020D5BCC
ov0_020D5BCC:
	.asciz "script/mrobj"
	.balign 4, 0
	.global ov0_020D5BDC
ov0_020D5BDC:
	.asciz "model/obj/mr_bcd"
	.balign 4, 0
	.global ov0_020D5BF0
ov0_020D5BF0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5C08
ov0_020D5C08:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5C20
ov0_020D5C20:
	.asciz "mlup_p01.pac_"
	.balign 4, 0
	.global ov0_020D5C30
ov0_020D5C30:
	.asciz "mlup_i01.pac_"
	.balign 4, 0
	.global ov0_020D5C40
ov0_020D5C40:
	.asciz "mlup_i00.pac_"
	.balign 4, 0
	.global ov0_020D5C50
ov0_020D5C50:
	.asciz "mlup_p00.pac_"
	.balign 4, 0
	.global ov0_020D5C60
ov0_020D5C60:
	.asciz "mlup_w00.pac_"
	.balign 4, 0
	.global ov0_020D5C70
ov0_020D5C70:
	.asciz "mlup_i02.pac_"
	.balign 4, 0
	.global ov0_020D5C80
ov0_020D5C80:
	.asciz "mlup_filter.pac_"
	.balign 4, 0
	.global ov0_020D5C94
ov0_020D5C94:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5C9C
ov0_020D5C9C:
	.word FUN_0202a36c
	.word FUN_ov0_020c95bc
	.word FUN_ov0_020c95e0
	.word FUN_ov0_020c95dc
	.word FUN_ov0_020c8f24
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov0_020c9110
	.word FUN_ov0_020c9484
	.word FUN_ov0_020c954c
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN15CommonSubScreen9fadeResetEv
	.word _ZN15CommonSubScreen10fadeUpdateEv
	.word _ZN15CommonSubScreen8blackOutEv
	.word _ZN15CommonSubScreen8whiteOutEv
	.word _ZN15CommonSubScreen6fadeInEv
	.word _ZN15CommonSubScreen9fadeBlackEv
	.word _ZN15CommonSubScreen9fadeWhiteEv
	.word _ZN15CommonSubScreen8isFadingEv
	.word _ZN15CommonSubScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.word 0
	.word 0
	.global ov0_020D5D10
ov0_020D5D10:
	.word FUN_ov0_020c95f4
	.word FUN_ov0_020c95e4
	.word FUN_ov0_020d1b48
	.word FUN_ov0_020d1b88
	.word FUN_ov0_020d1be8
	.word FUN_ov0_020d1c04
	.word FUN_ov0_020d1c3c
	.word FUN_ov0_020d1c58
	.word FUN_ov0_020d1c90
	.word FUN_ov0_020d1ca8
	.word FUN_ov0_020d1cb4
	.global ov0_020D5D3C
ov0_020D5D3C:
	.asciz "ina_01.pac_"
	.balign 4, 0
	.global ov0_020D5D48
ov0_020D5D48:
	.asciz "ina_01p.pac_"
	.balign 4, 0
	.global ov0_020D5D58
ov0_020D5D58:
	.asciz "%s.pac_"
	.balign 4, 0
	.global ov0_020D5D60
ov0_020D5D60:
	.asciz "/data_iz/obj2d/rpg/ina_tpx%d.pac_"
	.balign 4, 0
	.global ov0_020D5D84
ov0_020D5D84:
	.asciz "/data_iz/obj2d/rpg/%s"
	.balign 4, 0
	.global ov0_020D5D9C
ov0_020D5D9C:
	.asciz "map2d/map2d"
	.balign 4, 0
	.global ov0_020D5DA8
ov0_020D5DA8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5DC0
ov0_020D5DC0:
	.asciz "mbdn_g00.pac"
	.balign 4, 0
	.global ov0_020D5DD0
ov0_020D5DD0:
	.asciz "mbdn_g01.pac"
	.balign 4, 0
	.global ov0_020D5DE0
ov0_020D5DE0:
	.asciz "mbdn_s01.pac"
	.balign 4, 0
	.global ov0_020D5DF0
ov0_020D5DF0:
	.asciz "ifup_w00.pac"
	.balign 4, 0
	.global ov0_020D5E00
ov0_020D5E00:
	.asciz "mbdn_g02.pac"
	.balign 4, 0
	.global ov0_020D5E10
ov0_020D5E10:
	.asciz "mbdn_s00.pac"
	.balign 4, 0
	.global ov0_020D5E20
ov0_020D5E20:
	.asciz "mbdn_bg00.pac"
	.balign 4, 0
	.global ov0_020D5E30
ov0_020D5E30:
	.asciz "mbdn_bg01.pac"
	.balign 4, 0
	.global ov0_020D5E40
ov0_020D5E40:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5E48
ov0_020D5E48:
	.word FUN_0202a384
	.word FUN_ov0_020cb0bc
	.word _ZN15CommonSubScreen10updateKeysEtt
	.word _ZN15CommonSubScreen8updateTPEP6TPData
	.word FUN_ov0_020cae30
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov0_020caf04
	.word FUN_ov0_020cb010
	.word FUN_ov0_020cb058
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN15CommonSubScreen9fadeResetEv
	.word _ZN15CommonSubScreen10fadeUpdateEv
	.word _ZN15CommonSubScreen8blackOutEv
	.word _ZN15CommonSubScreen8whiteOutEv
	.word _ZN15CommonSubScreen6fadeInEv
	.word _ZN15CommonSubScreen9fadeBlackEv
	.word _ZN15CommonSubScreen9fadeWhiteEv
	.word _ZN15CommonSubScreen8isFadingEv
	.word _ZN15CommonSubScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov0_020D5EB4
ov0_020D5EB4: ; shift-jis string
	.byte 0x83, 0x7D, 0x83, 0x58, 0x83, 0x5E, 0x81, 0x5B, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5EC0
ov0_020D5EC0: ; shift-jis string
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x83, 0x8C, 0x83, 0x78, 0x83, 0x8B, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5ED0
ov0_020D5ED0:
	.asciz "%2d"
	.balign 4, 0
	.global ov0_020D5ED4
ov0_020D5ED4: ; shift-jis string
	.byte 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x00, 0x00
	.global ov0_020D5EDC
ov0_020D5EDC:
	.asciz "%2d"
	.balign 4, 0
	.global ov0_020D5EE0
ov0_020D5EE0: ; shift-jis string
	.byte 0x90, 0x6C, 0x00, 0x00
	.global ov0_020D5EE4
ov0_020D5EE4: ; shift-jis string
	.byte 0x8F, 0xCC, 0x8D, 0x86, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5EEC
ov0_020D5EEC:
	.asciz "/data_iz/pic2d/SRSCmd.SPF_"
	.balign 4, 0
	.global ov0_020D5F08
ov0_020D5F08:
	.asciz "/data_iz/logic/rpgtitle.dat"
	.balign 4, 0
	.global ov0_020D5F24
ov0_020D5F24:
	.asciz "/data_iz/face2d/fac.pkh"
	.balign 4, 0
	.global ov0_020D5F3C
ov0_020D5F3C:
	.asciz "/data_iz/face2d/fab.pkh"
	.balign 4, 0
	.global ov0_020D5F54
ov0_020D5F54:
	.asciz "/data_iz/face2d/ppu.pkh"
	.balign 4, 0
	.global ov0_020D5F6C
ov0_020D5F6C:
	.asciz "/data_iz/logic/rpgtitle.STR"
	.balign 4, 0
	.global ov0_020D5F88
ov0_020D5F88:
	.asciz "/data_iz/face2d/fac.pkb"
	.balign 4, 0
	.global ov0_020D5FA0
ov0_020D5FA0:
	.asciz "/data_iz/face2d/fab.pkb"
	.balign 4, 0
	.global ov0_020D5FB8
ov0_020D5FB8:
	.asciz "/data_iz/face2d/ppu.pkb"
	.balign 4, 0
	.global ov0_020D5FD0
ov0_020D5FD0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D5FE8
ov0_020D5FE8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D6000
ov0_020D6000:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D6018
ov0_020D6018:
	.asciz "mo"
	.balign 4, 0
	.global ov0_020D601C
ov0_020D601C:
	.asciz "mo%04d.pac_"
	.balign 4, 0
	.global ov0_020D6028
ov0_020D6028:
	.word ov0_020D6044
	.global ov0_020D602C
ov0_020D602C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov0_020D6044
ov0_020D6044:
	.asciz "mln_parts"
	.balign 4, 0
	.global ov0_020D6050
ov0_020D6050:
	.asciz "%s.pac_"
	.balign 4, 0
	.global ov0_020D6058
ov0_020D6058: ; shift-jis string
	.byte 0x82, 0xCB, 0x82, 0xC1, 0x82, 0xAF, 0x82, 0xC2
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov0_020D6064
ov0_020D6064: ; shift-jis string
	.byte 0x82, 0xE4, 0x82, 0xA4, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x00, 0x00
	.global ov0_020D6070
ov0_020D6070: ; shift-jis string
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x00, 0x00
	.global ov0_020D6078
ov0_020D6078: ; shift-jis string
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov0_020D6084
ov0_020D6084:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D609C
ov0_020D609C:
	.asciz "mln_i00.pac_"
	.balign 4, 0
	.global ov0_020D60AC
ov0_020D60AC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D60CC
ov0_020D60CC:
	.word FUN_ov0_020d17e4
	.word FUN_ov0_020d1804
	.word FUN_ov0_020d1b48
	.word FUN_ov0_020d1b88
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov0_020D60F8
ov0_020D60F8:
	.asciz "%s.bcd"
	.balign 4, 0

	.bss
	.global ov0_020D6100
ov0_020D6100:
	.space 0x0C
	.global ov0_020D610C
ov0_020D610C:
	.space 0x20
	.global ov0_020D612C
ov0_020D612C:
	.space 0x04
	.global ov0_020D6130
ov0_020D6130:
	.space 0x04
	.global ov0_020D6134
ov0_020D6134:
	.space 0x68
	.global ov0_020D619C
ov0_020D619C:
	.space 0x04
	.global ov0_020D61A0
ov0_020D61A0:
	.space 0x12C
	.global ov0_020D62CC
ov0_020D62CC:
	.space 0x02
	.global ov0_020D62CE
ov0_020D62CE:
	.space 0x0E
	.global ov0_020D62DC
ov0_020D62DC:
	.space 0x24


	.include "/macros/function.inc"
	.include "/include/overlay40.inc"

	.text
	arm_func_start FUN_ov40_02119f00
FUN_ov40_02119f00: ; 0x02119F00
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_02119F10:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _02119F28
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_02119F28:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _02119F10
	bx lr
	arm_func_end FUN_ov40_02119f00

	arm_func_start FUN_ov40_02119f38
FUN_ov40_02119f38: ; 0x02119F38
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #1
	mov r2, #0x77
	str r3, [r4, #0x4c]
	str r2, [r4, #0x48]
	str r1, [r4, #0x54]
	strb r3, [r4, #0x58]
	bl FUN_ov40_02119f00
	strb r0, [r4, #0x59]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov40_02119f38

	arm_func_start FUN_ov40_02119f64
FUN_ov40_02119f64: ; 0x02119F64
	stmfd sp!, {r3, lr}
	ldr r0, _02119F8C ; =0x0209AEC0
	mov r1, #5
	bl FUN_02046cb4
	ldr r0, _02119F90 ; =0x0209A4E0
	mov r1, #0x77
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #3]
	ldmfd sp!, {r3, pc}
_02119F8C: .word gWirelessUtil
_02119F90: .word unk_0209A4E0
	arm_func_end FUN_ov40_02119f64

	arm_func_start FUN_ov40_02119f94
FUN_ov40_02119f94: ; 0x02119F94
	ldr r1, [r0, #0x28]
	ldr r2, _02119FBC ; =0x0209A4E4
	strb r1, [r2]
	ldr r1, [r0, #0x2c]
	strb r1, [r2, #1]
	ldr r1, [r0, #0x30]
	strb r1, [r2, #2]
	ldr r0, [r0, #0x34]
	strb r0, [r2, #3]
	bx lr
_02119FBC: .word unk_0209A4E4
	arm_func_end FUN_ov40_02119f94

	arm_func_start FUN_ov40_02119fc0
FUN_ov40_02119fc0: ; 0x02119FC0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A040 ; =0x0209AEC0
	mov r5, r0
	ldrb r0, [r1, #0x64]
	mov r4, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r4
	bl FUN_ov16_020f0634
	ldrb r1, [r0, #7]
	ldr r2, [r5, #0x28]
	str r1, [r5, #0x34]
	ldrb r1, [r0, #4]
	cmp r2, r1
	strne r1, [r5, #0x28]
	ldrb r1, [r0, #5]
	ldr r2, [r5, #0x2c]
	movne r4, #1
	cmp r2, r1
	strne r1, [r5, #0x2c]
	ldrb r0, [r0, #6]
	ldr r1, [r5, #0x30]
	movne r4, #1
	cmp r1, r0
	movne r4, #1
	strne r0, [r5, #0x30]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov40_0211b488
	ldmfd sp!, {r3, r4, r5, pc}
_0211A040: .word gWirelessUtil
	arm_func_end FUN_ov40_02119fc0

	arm_func_start FUN_ov40_0211a044
FUN_ov40_0211a044: ; 0x0211A044
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r0
	mov r0, r6
	mov r1, r6
	bl FUN_ov16_020f0634
	ldr r1, _0211A14C ; =0x0209AEC0
	ldr r2, [r4, #4]
	ldrb r7, [r0, #3]
	ldrb r5, [r1, #0x64]
	cmp r2, #8
	addls pc, pc, r2, lsl #2
	b _0211A144
_0211A078: ; jump table
	b _0211A144 ; case 0
	b _0211A144 ; case 1
	b _0211A144 ; case 2
	b _0211A144 ; case 3
	b _0211A144 ; case 4
	b _0211A09C ; case 5
	b _0211A0C0 ; case 6
	b _0211A0EC ; case 7
	b _0211A13C ; case 8
_0211A09C:
	mov r0, r4
	bl FUN_ov40_02119fc0
	cmp r5, #0
	cmpeq r7, #6
	bne _0211A144
	mov r0, r4
	mov r1, #7
_0211A0B8:
	bl FUN_ov40_0211a1bc
	b _0211A144
_0211A0C0:
	cmp r5, #0
	beq _0211A144
	mov r5, #7
	sub r1, r5, #8
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A144
	b _0211A11C
_0211A0EC:
	mov r0, r4
	bl FUN_ov40_02119fc0
	cmp r5, #0
	beq _0211A128
	mov r5, #8
	sub r1, r5, #9
	mov r0, r5
	mov r2, r1
	mov r3, r6
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _0211A144
_0211A11C:
	mov r0, r4
	mov r1, r5
	b _0211A0B8
_0211A128:
	cmp r7, #7
	bne _0211A144
	mov r0, r4
	mov r1, #8
	b _0211A0B8
_0211A13C:
	mov r0, r4
	bl FUN_ov40_02119fc0
_0211A144:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A14C: .word gWirelessUtil
	arm_func_end FUN_ov40_0211a044

	arm_func_start FUN_ov40_0211a150
FUN_ov40_0211a150: ; 0x0211A150
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #7
	bne _0211A174
	mov r0, r4
	bl FUN_ov40_02119f94
_0211A174:
	ldr r1, _0211A190 ; =0x0209A4E0
	mov r0, #0x77
	strb r0, [r1, #2]
	ldr r2, [r4, #4]
	mov r0, #1
	strb r2, [r1, #3]
	ldmfd sp!, {r4, pc}
_0211A190: .word unk_0209A4E0
	arm_func_end FUN_ov40_0211a150

	arm_func_start FUN_ov40_0211a194
FUN_ov40_0211a194: ; 0x0211A194
	ldr r0, [r0, #4]
	cmp r0, #3
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov40_0211a194

	arm_func_start FUN_ov40_0211a1a8
FUN_ov40_0211a1a8: ; 0x0211A1A8
	ldr r0, [r0, #4]
	cmp r0, #3
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov40_0211a1a8

	arm_func_start FUN_ov40_0211a1bc
FUN_ov40_0211a1bc: ; 0x0211A1BC
	stmfd sp!, {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r0, #4]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211A1DC: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _0211A200 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _0211A200 ; case 6
	b _0211A20C ; case 7
	b _0211A230 ; case 8
_0211A200:
	mov r1, #1
	strb r1, [r0, #0x1a]
	ldmfd sp!, {r4, pc}
_0211A20C:
	ldr r1, _0211A260 ; =0x0209AEC0
	mov r2, #1
	strb r2, [r0, #0x1a]
	ldrb r0, [r1, #0x64]
	cmp r0, #0
	ldrne r0, _0211A264 ; =0x020E9482
	movne r1, #0
	strneb r1, [r0]
	ldmfd sp!, {r4, pc}
_0211A230:
	ldr r4, [r0, #0x1c]
	mov r1, #0
	mov r0, r4
	mov r2, #0x3f
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r1, #1
	mov r2, #0x4c
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, #6
	bl _ZN8Graphics13FadeMainBlackEl
	ldmfd sp!, {r4, pc}
_0211A260: .word gWirelessUtil
_0211A264: .word ov1_020E9482
	arm_func_end FUN_ov40_0211a1bc

	arm_func_start FUN_ov40_0211a268
FUN_ov40_0211a268: ; 0x0211A268
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r2, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #0xc]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0211A2C8
_0211A28C: ; jump table
	b _0211A2C8 ; case 0
	b _0211A2A0 ; case 1
	b _0211A2B4 ; case 2
	b _0211A2B8 ; case 3
	b _0211A2C0 ; case 4
_0211A2A0:
	ldr r1, [r4, #0x38]
	mov r2, #4
	str r2, [r4, #0x3c]
	bl FUN_ov40_0211a2d4
	b _0211A2C8
_0211A2B4:
	b _0211A2C0
_0211A2B8:
	mov r0, #3
	b _0211A2C4
_0211A2C0:
	mov r0, #0
_0211A2C4:
	str r0, [r4, #0x3c]
_0211A2C8:
	mov r0, r4
	bl FUN_ov40_0211af0c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov40_0211a268

	arm_func_start FUN_ov40_0211a2d4
FUN_ov40_0211a2d4: ; 0x0211A2D4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xc]
	cmp r2, #1
	ldmnefd sp!, {r3, pc}
	cmp r1, #0
	ldmltfd sp!, {r3, pc}
	cmp r1, #3
	ldmgtfd sp!, {r3, pc}
	ldr r12, _0211A324 ; =0x0211C6D4
	add lr, r1, r1, lsl #1
	ldr r3, _0211A328 ; =0x0211C6D5
	ldr r2, _0211A32C ; =0x0211C6D6
	ldrb r12, [r12, lr]
	ldrb r3, [r3, lr]
	ldrb r2, [r2, lr]
	str r12, [r0, #0x28]
	str r3, [r0, #0x2c]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	ldmfd sp!, {r3, pc}
_0211A324: .word ov40_0211C6D4
_0211A328: .word ov40_0211C6D5
_0211A32C: .word ov40_0211C6D6
	arm_func_end FUN_ov40_0211a2d4

	arm_func_start FUN_ov40_0211a330
FUN_ov40_0211a330: ; 0x0211A330
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _0211A3FC ; =0x0211C9B4
	add r1, r4, #0x80
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	mov r0, r4
	bl FUN_ov40_0211a5d0
	ldr r0, _0211A400 ; =0x0211C9D0
	add r1, r4, #0x74
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldrne r0, [r4, #0x64]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0211A3E8
	add r0, r4, #0x60
	bl FUN_ov16_020f2f20
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r4, #0x6c]
	ldrh r3, [r4, #0x6e]
	ldr r1, [r4, #0x64]
	ldr r0, _0211A404 ; =0x0211C9EC
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldrh r2, [r4, #0x6c]
	ldrh r1, [r4, #0x6e]
	ldr r0, [r4, #0x64]
	mov r2, r2, lsl #3
	mov r1, r1, lsl #3
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_0211A3E8:
	mov r0, r4
	mov r1, #1
	bl FUN_ov40_0211a1bc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211A3FC: .word ov40_0211C9B4
_0211A400: .word ov40_0211C9D0
_0211A404: .word ov40_0211C9EC
	arm_func_end FUN_ov40_0211a330

	arm_func_start FUN_ov40_0211a408
FUN_ov40_0211a408: ; 0x0211A408
	mov r1, r0
	ldr r0, [r1, #0x74]
	ldr r2, _0211A420 ; =0x0211C6E0
	ldr r12, _0211A424 ; = FUN_ov1_020dbfdc
	add r1, r1, #0x74
	bx r12
_0211A420: .word ov40_0211C6E0
_0211A424: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov40_0211a408

	arm_func_start FUN_ov40_0211a428
FUN_ov40_0211a428: ; 0x0211A428
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	str r1, [sp]
	ldr r1, [r4, #0x80]
	ldr r0, _0211A460 ; =0x0211CA0C
	ldr r2, _0211A464 ; =0x0211C700
	add r3, r4, #0xbc
	bl FUN_ov16_020f5450
	add r0, r4, #0x80
	bl _ZN7Archive10DeallocateEP9SFileData
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211A460: .word ov40_0211CA0C
_0211A464: .word ov40_0211C700
	arm_func_end FUN_ov40_0211a428

	arm_func_start FUN_ov40_0211a468
FUN_ov40_0211a468: ; 0x0211A468
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A4B4 ; =g3DPlaneCtrl
	b _0211A4A4
_0211A47C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	beq _0211A4A0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A4A0:
	add r5, r5, #1
_0211A4A4:
	cmp r5, #0x10
	blt _0211A47C
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A4B4: .word g3DPlaneCtrl
	arm_func_end FUN_ov40_0211a468

	arm_func_start FUN_ov40_0211a4b8
FUN_ov40_0211a4b8: ; 0x0211A4B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A518 ; =g3DPlaneCtrl
	b _0211A50C
_0211A4D0:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	beq _0211A508
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A508
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xbc]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A508:
	add r6, r6, #1
_0211A50C:
	cmp r6, #0x10
	blt _0211A4D0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A518: .word g3DPlaneCtrl
	arm_func_end FUN_ov40_0211a4b8

	arm_func_start FUN_ov40_0211a51c
FUN_ov40_0211a51c: ; 0x0211A51C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ble _0211A544
	ldr r0, _0211A5CC ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x24]
_0211A544:
	mov r7, #0
	add r6, r4, #0x74
	mov r5, #0xc
	b _0211A560
_0211A554:
	mla r0, r7, r5, r6
	bl _ZN7Archive10DeallocateEP9SFileData
	add r7, r7, #1
_0211A560:
	cmp r7, #6
	blt _0211A554
	mov r6, #0
	ldr r5, _0211A5CC ; =g3DPlaneCtrl
	b _0211A590
_0211A574:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0xfc]
	cmp r1, #0
	beq _0211A58C
	ldr r0, [r5]
	bl FUN_ov16_021128c4
_0211A58C:
	add r6, r6, #1
_0211A590:
	cmp r6, #5
	blt _0211A574
	mov r6, #0
	ldr r5, _0211A5CC ; =g3DPlaneCtrl
	b _0211A5C0
_0211A5A4:
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	beq _0211A5BC
	ldr r0, [r5]
	bl FUN_02058ee0
_0211A5BC:
	add r6, r6, #1
_0211A5C0:
	cmp r6, #0x10
	blt _0211A5A4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A5CC: .word g3DPlaneCtrl
	arm_func_end FUN_ov40_0211a51c

	arm_func_start FUN_ov40_0211a5d0
FUN_ov40_0211a5d0: ; 0x0211A5D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211A600 ; =gLogicThink
	mov r5, r0
	mov r0, r4
	bl FUN_020728e8
	mov r1, r0
	ldr r3, _0211A604 ; =0x020A0640
	mov r0, r4
	add r2, r5, #0x8c
	strb r1, [r3, #0x90]
	bl FUN_0206f9ec
	ldmfd sp!, {r3, r4, r5, pc}
_0211A600: .word gLogicThink
_0211A604: .word unk_020A0640
	arm_func_end FUN_ov40_0211a5d0

	arm_func_start FUN_ov40_0211a608
FUN_ov40_0211a608: ; 0x0211A608
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r0, #5
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A730 ; =gSprAnimCtrl
	mov r8, #0
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211A734 ; =gSprButtonCtrl
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211A728
_0211A668: ; jump table
	b _0211A728 ; case 0
	b _0211A680 ; case 1
	b _0211A69C ; case 2
	b _0211A6D4 ; case 3
	b _0211A6FC ; case 4
	b _0211A6B8 ; case 5
_0211A680:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov40_0211aa54
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A69C:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov40_0211aafc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A6B8:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r5
	bl FUN_ov40_0211aba4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A6D4:
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	str r8, [sp]
	mov r1, r0
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	mov r0, r5
	bl FUN_ov40_0211aba8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A6FC:
	ldr r0, [r6]
	add r1, sp, #4
	bl FUN_ov16_0210f48c
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	str r7, [sp]
	mov r1, r0
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r5
	bl FUN_ov40_0211aba8
_0211A728:
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A730: .word gSprAnimCtrl
_0211A734: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211a608

	arm_func_start FUN_ov40_0211a738
FUN_ov40_0211a738: ; 0x0211A738
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, r1
	mov r4, #1
	mov r5, #0
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211AA48 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _0211AA4C ; =gSprButtonCtrl
	ldr r0, [r8]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211A7A4
	ldr r0, [r8]
	add r0, r0, #0xf00
	ldrh r6, [r0, #0x38]
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strh r5, [r0, #0x38]
_0211A7A4:
	ldr r0, [r7, #0xc]
	cmp r0, #1
	andeq r6, r6, #0xc1
	beq _0211A7D4
	cmp r0, #3
	andeq r6, r6, #0xf1
	beq _0211A7D4
	cmp r0, #2
	beq _0211A7D0
	cmp r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211A7D0:
	and r6, r6, #0x33
_0211A7D4:
	tst r6, #1
	beq _0211A8B4
	ldr r0, [r7, #0xc]
	cmp r0, #1
	beq _0211A7F4
	ldr r0, [r7, #0x20]
	bl FUN_ov16_02110b0c
	b _0211A804
_0211A7F4:
	ldr r0, _0211AA4C ; =gSprButtonCtrl
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_ov16_0210efac
_0211A804:
	ldr r0, [r7, #0xc]
	cmp r0, #1
	beq _0211A818
	cmp r0, #3
	bne _0211A85C
_0211A818:
	ldr r0, _0211AA50 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r7, #0xc]
	cmp r0, #3
	moveq r0, #4
	streq r0, [r7, #0x10]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x38]
	cmp r0, #0
	movne r0, #2
	strne r0, [r7, #0x10]
	moveq r0, #3
	streq r0, [r7, #0x10]
	streq r5, [r7, #0x38]
	streq r5, [r7, #0x40]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A85C:
	ldr r0, [r7, #0x20]
	bl FUN_ov16_02110b04
	cmp r0, #1
	beq _0211A878
	cmp r0, #2
	beq _0211A890
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A878:
	mov r4, #6
	ldr r0, _0211AA50 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	str r4, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A890:
	ldr r0, _0211AA50 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r7, #0xc]
	str r4, [r7, #0x10]
	cmp r0, #4
	streq r5, [r7, #0x38]
	streq r5, [r7, #0x40]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A8B4:
	tst r6, #2
	beq _0211A8F8
	ldr r0, [r7, #0x20]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_02110a04
	ldr r0, [r7, #0x20]
	bl FUN_ov16_02110b0c
	ldr r0, _0211AA50 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r7, #0xc]
	str r4, [r7, #0x10]
	cmp r0, #4
	streq r5, [r7, #0x38]
	streq r5, [r7, #0x40]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A8F8:
	tst r6, #0x40
	beq _0211A948
	ldr r0, _0211AA50 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r7, #0x38]
	subs r0, r0, #1
	str r0, [r7, #0x38]
	ldrmi r0, [r7, #0x3c]
	submi r0, r0, #1
	strmi r0, [r7, #0x38]
	ldr r1, [r7, #0x38]
	mov r0, r7
	str r1, [r7, #0x40]
	bl FUN_ov40_0211a2d4
	mov r0, r7
	bl FUN_ov40_0211b33c
	mov r0, r7
	bl FUN_ov40_0211b0f8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A948:
	tst r6, #0x80
	beq _0211A998
	ldr r0, _0211AA50 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r1, [r7, #0x38]
	ldr r0, [r7, #0x3c]
	add r1, r1, #1
	cmp r1, r0
	str r1, [r7, #0x38]
	strge r5, [r7, #0x38]
	ldr r1, [r7, #0x38]
	mov r0, r7
	str r1, [r7, #0x40]
	bl FUN_ov40_0211a2d4
	mov r0, r7
	bl FUN_ov40_0211b33c
	mov r0, r7
	bl FUN_ov40_0211b0f8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A998:
	tst r6, #0x20
	beq _0211A9F0
	ldr r0, [r7, #0xc]
	cmp r0, #3
	bne _0211A9BC
	mov r0, r7
	mov r1, #4
	bl FUN_ov40_0211bd94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A9BC:
	cmp r0, #4
	beq _0211A9CC
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211A9CC:
	ldr r0, [r7, #0x20]
	bl FUN_ov16_02110b04
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x20]
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A9F0:
	tst r6, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0xc]
	cmp r0, #3
	bne _0211AA14
	mov r0, r7
	mov r1, #5
	bl FUN_ov40_0211bd94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AA14:
	cmp r0, #4
	beq _0211AA24
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0211AA24:
	ldr r0, [r7, #0x20]
	bl FUN_ov16_02110b04
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x20]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AA48: .word gSprAnimCtrl
_0211AA4C: .word gSprButtonCtrl
_0211AA50: .word gAudioPlayer
	arm_func_end FUN_ov40_0211a738

	arm_func_start FUN_ov40_0211aa54
FUN_ov40_0211aa54: ; 0x0211AA54
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	cmp r1, #1
	ldmeqfd sp!, {r4, pc}
	cmp r1, #2
	bne _0211AA88
	ldr r0, [r4, #0x20]
	mov r1, #1
	mov r2, #0
	bl FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211AA88:
	cmp r1, #3
	bne _0211AAA4
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_02110a04
	ldmfd sp!, {r4, pc}
_0211AAA4:
	cmp r1, #6
	ldmltfd sp!, {r4, pc}
	cmp r1, #9
	ldmgtfd sp!, {r4, pc}
	ldr r2, [r4, #0x38]
	sub r1, r1, #6
	str r2, [r4, #0x40]
	cmp r2, r1
	ldmeqfd sp!, {r4, pc}
	str r1, [r4, #0x38]
	bl FUN_ov40_0211a2d4
	mov r0, r4
	bl FUN_ov40_0211b488
	mov r0, r4
	bl FUN_ov40_0211b0f8
	mov r0, r4
	bl FUN_ov40_0211b33c
	ldr r0, _0211AAF8 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211AAF8: .word gAudioPlayer
	arm_func_end FUN_ov40_0211aa54

	arm_func_start FUN_ov40_0211aafc
FUN_ov40_0211aafc: ; 0x0211AAFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r4, _0211ABA0 ; =gSprButtonCtrl
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #1
	cmpne r5, #0xa
	cmpne r5, #2
	cmpne r5, #3
	bne _0211AB50
	ldr r0, _0211ABA0 ; =gSprButtonCtrl
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB50:
	cmp r5, #4
	cmpne r5, #5
	bne _0211AB6C
	mov r0, r6
	mov r1, r5
	bl FUN_ov40_0211bd94
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB6C:
	cmp r5, #6
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r5, #9
	ldrle r1, [r6, #0x40]
	suble r0, r5, #6
	cmple r1, r0
	ldreq r0, [r6, #0xc]
	cmpeq r0, #1
	ldreq r0, [r4]
	moveq r1, #1
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211ABA0: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211aafc

	arm_func_start FUN_ov40_0211aba4
FUN_ov40_0211aba4: ; 0x0211ABA4
	bx lr
	arm_func_end FUN_ov40_0211aba4

	arm_func_start FUN_ov40_0211aba8
FUN_ov40_0211aba8: ; 0x0211ABA8
	cmp r1, #0
	bxle lr
	sub r1, r1, #4
	cmp r1, #1
	bxhi lr
	ldrb r1, [sp]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov40_0211aba8

	arm_func_start FUN_ov40_0211abd0
FUN_ov40_0211abd0: ; 0x0211ABD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, #0x20
	mov r4, r0
	str r7, [sp, #4]
	bl G2_GetBG1CharPtr
	mov r8, #0
	mov r1, r0
	mov r0, r8
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r7
	bl DC_FlushRange
	mov r5, #1
	add r6, sp, #4
	str r6, [sp]
	ldr r0, [r4, #0x98]
	mov r1, r8
	mov r2, r5
	mov r3, r5
	bl FUN_ov1_020dc020
	str r6, [sp]
	mov r1, r0
	ldr r0, [r4, #0xa4]
	mov r2, #2
	mov r3, r5
	bl FUN_ov1_020dc020
	str r7, [sp, #4]
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldrne r1, [r4, #0x64]
	cmpne r1, #0
	movne r8, r5
	cmp r8, #0
	beq _0211ACB0
	ldrh r12, [r4, #0x6c]
	ldrh r1, [r4, #0x6e]
	mov r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	ldrh r3, [r4, #0x6c]
	ldrh r2, [r4, #0x6e]
	ldr r0, [r4, #0x64]
	ldr r1, [sp, #4]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
	ldrh r1, [r4, #0x6c]
	ldrh r0, [r4, #0x6e]
	ldr r2, [sp, #4]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #4]
_0211ACB0:
	bl _ZN8Graphics17LoadBGPaletteMainEv
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov40_0211abd0

	arm_func_start FUN_ov40_0211acbc
FUN_ov40_0211acbc: ; 0x0211ACBC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, pc}
	ldr r12, [r4, #0x98]
	cmp r12, #0
	beq _0211AD2C
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0211ADA8 ; =gBgMenuManager
	add r3, r12, r3
	add r12, r3, #0x1e0
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211AD2C:
	ldr r12, [r4, #0x60]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r4, #0x64]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0211AD98
	mov r1, #0
	mov r0, #1
	stmia sp, {r0, r1}
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r3, [r4, #0x6c]
	ldr r0, _0211ADA8 ; =gBgMenuManager
	mov r2, r1
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh lr, [r4, #0x6e]
	mov r3, r1
	and lr, lr, #0xff
	str lr, [sp, #0x14]
	str r1, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0211AD98:
	mov r0, r4
	bl FUN_ov40_0211adac
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0211ADA8: .word gBgMenuManager
	arm_func_end FUN_ov40_0211acbc

	arm_func_start FUN_ov40_0211adac
FUN_ov40_0211adac: ; 0x0211ADAC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldrb r0, [r8, #0x19]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211AE50 ; =gBgMenuManager
	mov r5, #0
	mov r4, #2
	mov r7, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	strb r7, [r8, #0x18]
	bl FUN_ov16_020f5eec
	ldr r2, [r8, #0xa4]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	stmia sp, {r4, r5}
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r4, r2, r1
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE50: .word gBgMenuManager
	arm_func_end FUN_ov40_0211adac

	arm_func_start FUN_ov40_0211ae54
FUN_ov40_0211ae54: ; 0x0211AE54
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	ldrne r3, [r0, #0xb0]
	cmpne r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x14]
	ldr r2, [r3, #4]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r1, r3, r2
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #5
	mov r1, #0
	mov r2, #2
	bl _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti
	bl _ZN8Graphics17LoadBGPaletteMainEv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov40_0211ae54

	arm_func_start FUN_ov40_0211ae9c
FUN_ov40_0211ae9c: ; 0x0211AE9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	ldr r0, _0211AF08 ; =gBgMenuManager
	mov r2, r1
	strb r1, [r4, #0x1a]
	bl FUN_ov16_020f5ff4
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0211AEF0
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _0211AEF8
	cmp r0, #6
	beq _0211AEEC
	cmp r0, #7
	bne _0211AEF8
_0211AEEC:
	b _0211AEF0
_0211AEF0:
	mov r0, r4
	bl FUN_ov40_0211acbc
_0211AEF8:
	ldr r0, _0211AF08 ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_0211AF08: .word gBgMenuManager
	arm_func_end FUN_ov40_0211ae9c

	arm_func_start FUN_ov40_0211af0c
FUN_ov40_0211af0c: ; 0x0211AF0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	bl FUN_ov16_021109a0
	mov r0, r4
	bl FUN_ov40_0211afe0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0211AF34: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0211AF48 ; case 1
	b _0211AF70 ; case 2
	b _0211AF90 ; case 3
	b _0211AFC0 ; case 4
_0211AF48:
	mov r0, r4
	bl FUN_ov40_0211b488
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov40_0211b33c
	mov r0, r4
	bl FUN_ov40_0211bc68
	ldmfd sp!, {r4, pc}
_0211AF70:
	mov r0, r4
	bl FUN_ov40_0211b488
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov40_0211be6c
	ldmfd sp!, {r4, pc}
_0211AF90:
	mov r0, r4
	bl FUN_ov40_0211b488
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov40_0211b0f8
	mov r0, r4
	bl FUN_ov40_0211b33c
	mov r0, r4
	bl FUN_ov40_0211be6c
	ldmfd sp!, {r4, pc}
_0211AFC0:
	mov r0, r4
	bl FUN_ov40_0211b488
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov40_0211be6c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov40_0211af0c

	arm_func_start FUN_ov40_0211afe0
FUN_ov40_0211afe0: ; 0x0211AFE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #1
	mov r5, #0
	ldr r4, _0211B05C ; =g3DPlaneCtrl
	b _0211B01C
_0211AFF8:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0xfc]
	cmp r1, #0
	beq _0211B018
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r7, r6, lsl #2
	str r5, [r0, #0xfc]
_0211B018:
	add r6, r6, #1
_0211B01C:
	cmp r6, #5
	blt _0211AFF8
	ldr r4, _0211B060 ; =gSprButtonCtrl
	mov r1, #1
	ldr r0, [r4]
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #4
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #2
	bl FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #3
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B05C: .word g3DPlaneCtrl
_0211B060: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211afe0

	arm_func_start FUN_ov40_0211b064
FUN_ov40_0211b064: ; 0x0211B064
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0xfc]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B0F4 ; =g3DPlaneCtrl
	mov r7, #1
	ldr r0, [r4]
	mov r1, r7
	mov r2, r7
	bl FUN_ov16_02112724
	mov r6, r0
	str r6, [r5, #0xfc]
	ldr r3, [r5, #0xbc]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	sub r3, r5, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, #0x12c
	bl FUN_ov16_02112c90
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, #2
	bl FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0F4: .word g3DPlaneCtrl
	arm_func_end FUN_ov40_0211b064

	arm_func_start FUN_ov40_0211b0f8
FUN_ov40_0211b0f8: ; 0x0211B0F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldrb r0, [r10, #0x19]
	mov r9, #1
	cmp r0, #0
	ldrne r0, [r10, #0xc]
	cmpne r0, #1
	cmpne r0, #2
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x104]
	cmp r0, #0
	bne _0211B148
	ldr r0, _0211B334 ; =g3DPlaneCtrl
	mov r2, r9
	ldr r0, [r0]
	mov r1, #2
	bl FUN_ov16_02112724
	str r0, [r10, #0x104]
_0211B148:
	ldr r5, _0211B334 ; =g3DPlaneCtrl
	ldr r8, [r10, #0x104]
	ldr r2, [r10, #0xc4]
	ldr r0, [r5]
	mov r1, r8
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0xc8
	bl FUN_ov16_02112b98
	mov r7, #2
	mov r6, #1
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211329c
	mov r11, #0
	str r11, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, r11
	bl FUN_ov16_0211401c
	ldr r0, [r10, #0x38]
	mov r4, #0x28
	mul r1, r0, r4
	add r0, r1, #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r9
	mov r3, #0x78
	bl FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r5]
	mov r3, r7
	mov r1, r8
	add r2, r9, #1
	bl FUN_ov16_0211401c
	ldr r0, [r10, #0x38]
	add r2, r9, #1
	mul r1, r0, r4
	add r0, r1, #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r3, #0xd8
	bl FUN_ov16_02113b78
	str r6, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	ldr r0, _0211B338 ; =gSprButtonCtrl
	mov r1, #3
	ldr r0, [r0]
	mov r2, #4
	mov r3, r8
	bl FUN_ov16_0210fc74
	movs r4, r0
	beq _0211B29C
	mov r1, r11
	mov r2, r6
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r11
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r11
	mov r2, r6
	add r0, r4, #0x3e
	mov r3, r11
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r11
	mov r3, r11
	bl FUN_ov16_0210e720
_0211B29C:
	mov r4, #2
	str r4, [sp]
	mov r1, #0x14
	ldr r0, _0211B338 ; =gSprButtonCtrl
	str r1, [sp, #4]
	mov r9, #3
	ldr r0, [r0]
	mov r1, r9
	mov r3, r8
	mov r2, #5
	bl FUN_ov16_0210fc74
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r5, #1
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r4
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r9
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B334: .word g3DPlaneCtrl
_0211B338: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211b0f8

	arm_func_start FUN_ov40_0211b33c
FUN_ov40_0211b33c: ; 0x0211B33C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r0, [r6, #0x19]
	ldr r7, _0211B484 ; =g3DPlaneCtrl
	mov r5, #1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x108]
	cmp r0, #0
	bne _0211B378
	ldr r0, [r7]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	str r0, [r6, #0x108]
_0211B378:
	ldr r0, [r6, #0xc]
	ldr r4, [r6, #0x108]
	cmp r0, #3
	cmpne r0, #4
	bne _0211B3D4
	ldr r3, [r6, #0xc8]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r1, [r6, #0x38]
	mov r0, #0x28
	mul r0, r1, r0
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0x10
	b _0211B434
_0211B3D4:
	ldr r0, [r6, #0x38]
	mov r1, r4
	cmp r0, #0
	moveq r0, #0xa
	movne r0, #0xb
	add r0, r6, r0, lsl #2
	ldr r3, [r0, #0xbc]
	ldr r0, [r7]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r6, #0x38]
	mov r1, r4
	cmp r0, #0
	moveq r0, #0x10
	subne r0, r0, #1
	movne r0, r0, lsl #5
	addne r0, r0, #0x40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	mov r2, r5
	mov r3, #8
_0211B434:
	bl FUN_ov16_02113b78
	mov r3, #0
	str r3, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #0xfa
	bl FUN_ov16_021139bc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B484: .word g3DPlaneCtrl
	arm_func_end FUN_ov40_0211b33c

	arm_func_start FUN_ov40_0211b488
FUN_ov40_0211b488: ; 0x0211B488
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xc]
	sub r1, r2, #3
	cmp r1, #1
	bhi _0211B4B0
	mov r1, #1
	cmp r2, #3
	movne r1, #0
	bl FUN_ov40_0211b4d4
	ldmfd sp!, {r3, pc}
_0211B4B0:
	cmp r2, #1
	bne _0211B4C4
	mov r1, #1
	bl FUN_ov40_0211b754
	ldmfd sp!, {r3, pc}
_0211B4C4:
	cmp r2, #2
	ldmnefd sp!, {r3, pc}
	bl FUN_ov40_0211ba5c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov40_0211b488

	arm_func_start FUN_ov40_0211b4d4
FUN_ov40_0211b4d4: ; 0x0211B4D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, [r10, #0x100]
	mov r8, #1
	str r1, [sp, #8]
	cmp r0, #0
	bne _0211B50C
	ldr r0, _0211B748 ; =g3DPlaneCtrl
	mov r2, r8
	ldr r0, [r0]
	mov r1, #6
	bl FUN_ov16_02112724
	str r0, [r10, #0x100]
_0211B50C:
	mov r9, #0
	ldr r7, [r10, #0x100]
	mov r6, r9
	mov r11, #0x10
	ldr r5, _0211B748 ; =g3DPlaneCtrl
	mov r4, #0x28
	b _0211B59C
_0211B528:
	ldr r3, [r10, #0xc0]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_0211401c
	mul r0, r9, r4
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	ldr r3, _0211B74C ; =0x00000122
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021139bc
	add r8, r8, #1
	add r9, r9, #1
_0211B59C:
	cmp r9, #3
	blt _0211B528
	ldr r9, _0211B748 ; =g3DPlaneCtrl
	ldr r3, [r10, #0xcc]
	ldr r0, [r9]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r9]
	ldr r3, [r10, #0x28]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_0211401c
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r7
	mov r2, r8
	mov r3, #0x90
	bl FUN_ov16_02113b78
	ldr r0, [r9]
	mov r1, r7
	mov r2, r8
	mov r5, #0x104
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #1
	ldr r3, [r10, #0xd0]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #1
	ldr r3, [r10, #0x2c]
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #1
	mov r4, #0xa0
	mov r3, r4
	bl FUN_ov16_02113b78
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #1
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #2
	ldr r3, [r10, #0xd0]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #2
	ldr r3, [r10, #0x30]
	bl FUN_ov16_0211401c
	mov r3, r4
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r7
	add r2, r8, #2
	bl FUN_ov16_02113b78
	add r2, r8, #2
	mov r3, r5
	ldr r0, [r9]
	mov r1, r7
	bl FUN_ov16_021139bc
	ldr r0, [r9]
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldrb r0, [r10, #0x19]
	cmp r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0xa
	mov r5, #2
	ldr r4, _0211B750 ; =gSprButtonCtrl
	b _0211B738
_0211B710:
	add r0, r6, #1
	stmia sp, {r0, r8}
	add r0, r6, #6
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r3, r7
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	add r6, r6, #1
_0211B738:
	cmp r6, #3
	blt _0211B710
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B748: .word g3DPlaneCtrl
_0211B74C: .word 0x00000122
_0211B750: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211b4d4

	arm_func_start FUN_ov40_0211b754
FUN_ov40_0211b754: ; 0x0211B754
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, [r10, #0x100]
	mov r5, #0
	str r1, [sp, #8]
	cmp r0, #0
	mov r7, #1
	bne _0211B790
	ldr r0, _0211BA4C ; =g3DPlaneCtrl
	mov r2, r7
	ldr r0, [r0]
	mov r1, #0xd
	bl FUN_ov16_02112724
	str r0, [r10, #0x100]
_0211B790:
	ldr r6, [r10, #0x100]
	mov r9, #0
	mov r11, #9
	mov r8, #8
	ldr r4, _0211BA4C ; =g3DPlaneCtrl
	b _0211B840
_0211B7A8:
	mov r0, r8
	cmp r9, #0
	movne r0, r11
	add r0, r10, r0, lsl #2
	ldr r1, [r0, #0xbc]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021137dc
	str r5, [sp]
	mov r3, r5
	cmp r9, #0
	ldr r0, [r4]
	subne r3, r9, #1
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_0211401c
	cmp r9, #0
	moveq r0, #0x10
	subne r0, r9, #1
	movne r0, r0, lsl #5
	addne r0, r0, #0x40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r3, _0211BA50 ; =0x00000122
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021139bc
	add r7, r7, #1
	add r9, r9, #1
_0211B840:
	cmp r9, #4
	blt _0211B7A8
	mov r9, #0
	ldr r4, _0211BA4C ; =g3DPlaneCtrl
	b _0211B9C8
_0211B854:
	add r0, r9, #1
	add r2, r0, r0, lsl #1
	ldr r0, _0211BA54 ; =0x0211C6D4
	ldr r3, [r10, #0xec]
	add r1, r0, r2
	ldrb r11, [r0, r2]
	ldr r0, [r4]
	ldrb r8, [r1, #1]
	ldrb r5, [r1, #2]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_0211401c
	mov r0, r9, lsl #5
	add r0, r0, #0x48
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0x48
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0x104
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0xf0]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r8
	mov r1, r6
	add r2, r7, #1
	bl FUN_ov16_0211401c
	mov r0, r9, lsl #5
	add r0, r0, #0x40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0x90
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0x104
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0xf0]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	add r3, r5, #2
	mov r1, r6
	add r2, r7, #2
	bl FUN_ov16_0211401c
	mov r0, r9, lsl #5
	add r0, r0, #0x40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, #0xc8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, #0x104
	bl FUN_ov16_021139bc
	add r7, r7, #3
	add r9, r9, #1
_0211B9C8:
	cmp r9, #3
	blt _0211B854
	ldr r0, _0211BA4C ; =g3DPlaneCtrl
	mov r1, r6
	ldr r0, [r0]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldrb r0, [r10, #0x19]
	cmp r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r8, #0xa
	mov r7, #2
	ldr r5, _0211BA58 ; =gSprButtonCtrl
	b _0211BA3C
_0211BA14:
	add r0, r4, #1
	stmia sp, {r0, r8}
	add r0, r4, #6
	mov r2, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r7
	mov r3, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	add r4, r4, #1
_0211BA3C:
	cmp r4, #4
	blt _0211BA14
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA4C: .word g3DPlaneCtrl
_0211BA50: .word 0x00000122
_0211BA54: .word ov40_0211C6D4
_0211BA58: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211b754

	arm_func_start FUN_ov40_0211ba5c
FUN_ov40_0211ba5c: ; 0x0211BA5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0x38]
	mov r7, #1
	subs r5, r0, #1
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x100]
	cmp r0, #0
	bne _0211BA98
	ldr r0, _0211BC60 ; =g3DPlaneCtrl
	mov r2, r7
	ldr r0, [r0]
	mov r1, #4
	bl FUN_ov16_02112724
	str r0, [r10, #0x100]
_0211BA98:
	ldr r4, _0211BC60 ; =g3DPlaneCtrl
	ldr r6, [r10, #0x100]
	ldr r3, [r10, #0xe0]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r11, #0
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #8
	bl FUN_ov16_02113b78
	mov r3, #0x38
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	add r3, r3, #0xea
	bl FUN_ov16_021139bc
	add r0, r5, #1
	add r2, r0, r0, lsl #1
	ldr r1, _0211BC64 ; =0x0211C6D4
	ldr r3, [r10, #0xec]
	ldrb r8, [r1, r2]
	add r1, r1, r2
	ldr r0, [r4]
	ldrb r9, [r1, #1]
	ldrb r5, [r1, #2]
	mov r1, r6
	add r2, r7, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r3, r8
	mov r1, r6
	add r2, r7, #1
	bl FUN_ov16_0211401c
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, #0x48
	bl FUN_ov16_02113b78
	mov r8, #0x104
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, r8
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0xf0]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r3, r9
	mov r1, r6
	add r2, r7, #2
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, #0x90
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, r8
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0xf0]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r6
	add r2, r7, #3
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	add r3, r5, #2
	mov r1, r6
	add r2, r7, #3
	bl FUN_ov16_0211401c
	mov r0, #0x38
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	mov r3, #0xc8
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	add r2, r7, #3
	mov r3, r8
	mov r1, r6
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r6
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC60: .word g3DPlaneCtrl
_0211BC64: .word ov40_0211C6D4
	arm_func_end FUN_ov40_0211ba5c

	arm_func_start FUN_ov40_0211bc68
FUN_ov40_0211bc68: ; 0x0211BC68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x10c]
	cmp r0, #0
	bne _0211BC94
	ldr r0, _0211BD8C ; =g3DPlaneCtrl
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	str r0, [r5, #0x10c]
_0211BC94:
	ldr r4, _0211BD8C ; =g3DPlaneCtrl
	ldr r7, [r5, #0x10c]
	mov r6, #1
	ldr r0, [r4]
	mov r1, r7
	mov r3, r6
	mov r2, #2
	bl FUN_ov16_021142fc
	ldr r2, [r5, #0xf4]
	ldr r0, [r4]
	mov r1, r7
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r5, #0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	mov r1, r7
	mov r2, #0x118
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r7
	mov r2, #0xc8
	mov r3, #0xa8
	bl FUN_ov16_02114248
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, _0211BD90 ; =gSprButtonCtrl
	mov r3, r7
	ldr r0, [r0]
	mov r1, r6
	mov r2, #0xa
	bl FUN_ov16_0210fbe8
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strb r5, [r4, #0x10]
	strb r5, [r4, #0xf]
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3a
	strh r6, [r4, #0xc]
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD8C: .word g3DPlaneCtrl
_0211BD90: .word gSprButtonCtrl
	arm_func_end FUN_ov40_0211bc68

	arm_func_start FUN_ov40_0211bd94
FUN_ov40_0211bd94: ; 0x0211BD94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, _0211BE68 ; =gAudioPlayer
	mov r5, #8
	mov r7, r1
	mov r1, r5
	mov r6, #0
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	cmp r7, #4
	subeq r6, r5, #9
	beq _0211BDC8
	cmp r7, #5
	moveq r6, #1
_0211BDC8:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0211BDE8
	cmp r0, #1
	beq _0211BE10
	cmp r0, #2
	beq _0211BE38
	b _0211BE5C
_0211BDE8:
	ldr r0, [r4, #0x28]
	adds r0, r0, r6
	str r0, [r4, #0x28]
	movmi r0, #3
	strmi r0, [r4, #0x28]
	bmi _0211BE5C
	cmp r0, #3
	movgt r0, #0
	strgt r0, [r4, #0x28]
	b _0211BE5C
_0211BE10:
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
	movmi r0, #1
	strmi r0, [r4, #0x2c]
	bmi _0211BE5C
	cmp r0, #1
	movgt r0, #0
	strgt r0, [r4, #0x2c]
	b _0211BE5C
_0211BE38:
	ldr r0, [r4, #0x30]
	adds r0, r0, r6
	str r0, [r4, #0x30]
	movmi r0, #1
	strmi r0, [r4, #0x30]
	bmi _0211BE5C
	cmp r0, #1
	movgt r0, #0
	strgt r0, [r4, #0x30]
_0211BE5C:
	mov r0, r4
	bl FUN_ov40_0211b488
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BE68: .word gAudioPlayer
	arm_func_end FUN_ov40_0211bd94

	arm_func_start FUN_ov40_0211be6c
FUN_ov40_0211be6c: ; 0x0211BE6C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #2
	cmpne r1, #4
	bne _0211BE88
	bl FUN_ov40_0211bfc4
	ldmfd sp!, {r3, pc}
_0211BE88:
	cmp r1, #3
	ldmnefd sp!, {r3, pc}
	bl FUN_ov40_0211be98
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov40_0211be6c

	arm_func_start FUN_ov40_0211be98
FUN_ov40_0211be98: ; 0x0211BE98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x20]
	bl FUN_ov16_021105c0
	mov r9, #0
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0xd4]
	mov r1, r9
	bl FUN_ov16_02110624
	mov r8, #5
	ldr r0, [r4, #0x20]
	mov r6, #2
	strb r6, [r0, #0x2c]
	str r8, [sp]
	sub r5, r8, #6
	str r5, [sp, #4]
	ldr r0, [r4, #0x20]
	mov r1, r9
	mov r2, r9
	ldr r3, [r4, #0xd4]
	bl FUN_ov16_021107a0
	str r8, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #0x20]
	mov r1, r9
	mov r7, #1
	mov r2, r7
	ldr r3, [r4, #0xd4]
	bl FUN_ov16_021107a0
	mov r2, r6
	str r9, [sp]
	str r5, [sp, #4]
	mov r1, r9
	ldr r0, [r4, #0x20]
	ldr r3, [r4, #0xd8]
	bl FUN_ov16_021107a0
	ldr r0, [r4, #0x20]
	mov r6, #0xa0
	mov r1, r6
	bl FUN_ov16_02110864
	ldr r0, [r4, #0x20]
	mov r1, #4
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_02110830
	ldr r0, [r4, #0x20]
	mov r1, #0x1e
	bl FUN_ov16_0211085c
	ldr r0, [r4, #0x20]
	mov r5, #8
	mov r1, r5
	mov r2, #0x80
	bl FUN_ov16_021108b4
	mov r2, r6
	ldr r0, [r4, #0x20]
	mov r1, #0x60
	bl FUN_ov16_021108d8
	mov r2, r5
	ldr r0, [r4, #0x20]
	mov r1, #0xf
	bl FUN_ov16_021108e4
	mov r1, r8
	ldr r0, [r4, #0x20]
	mov r2, #3
	bl FUN_ov16_021108f0
	str r7, [sp]
	ldr r0, [r4, #0x20]
	ldr r2, _0211BFC0 ; =0x0211CA28
	mov r1, r7
	mov r3, r7
	bl FUN_ov16_02110938
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211BFC0: .word ov40_0211CA28
	arm_func_end FUN_ov40_0211be98

	arm_func_start FUN_ov40_0211bfc4
FUN_ov40_0211bfc4: ; 0x0211BFC4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r0, [r8, #0x20]
	bl FUN_ov16_021105c0
	mov r7, #0
	ldr r0, [r8, #0x20]
	ldr r2, [r8, #0xd4]
	mov r1, r7
	bl FUN_ov16_02110624
	mov r6, #3
	mov r5, #1
	str r6, [sp]
	sub r10, r6, #4
	str r10, [sp, #4]
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0xd4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021107a0
	stmia sp, {r7, r10}
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0xf8]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_021107a0
	stmia sp, {r5, r10}
	mov r4, #2
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0xf8]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_021107a0
	mov r9, #4
	stmia sp, {r9, r10}
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0xd4]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_021107a0
	stmia sp, {r4, r10}
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0xf8]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021107a0
	stmia sp, {r6, r10}
	ldr r0, [r8, #0x20]
	ldr r3, [r8, #0xf8]
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_021107a0
	mov r10, #0xa0
	ldr r0, [r8, #0x20]
	mov r1, r10
	bl FUN_ov16_02110864
	ldr r0, [r8, #0x20]
	mov r1, r9
	mov r2, r4
	mov r3, r6
	bl FUN_ov16_02110830
	ldr r0, [r8, #0x20]
	mov r1, #0x1e
	bl FUN_ov16_0211085c
	mov r9, #8
	ldr r0, [r8, #0x20]
	mov r1, r9
	mov r2, #0x80
	bl FUN_ov16_021108b4
	ldr r0, [r8, #0x20]
	mov r1, #0x38
	mov r2, r10
	bl FUN_ov16_021108c0
	ldr r0, [r8, #0x20]
	mov r2, r10
	mov r1, #0x98
	bl FUN_ov16_021108cc
	ldr r0, [r8, #0x20]
	mov r2, r9
	mov r1, #0xf
	bl FUN_ov16_021108e4
	ldr r0, [r8, #0x20]
	mov r2, r6
	mov r1, #5
	bl FUN_ov16_021108f0
	str r5, [sp]
	ldr r0, [r8, #0x20]
	ldr r2, _0211C148 ; =0x0211CA50
	mov r1, r4
	mov r3, r5
	bl FUN_ov16_02110938
	ldr r0, [r8, #0x20]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_02110a04
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C148: .word ov40_0211CA50
	arm_func_end FUN_ov40_0211bfc4

	arm_func_start FUN_ov40_0211c14c
FUN_ov40_0211c14c: ; 0x0211C14C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	beq _0211C16C
	ldr r1, [r0, #4]
	sub r1, r1, #6
	cmp r1, #1
	bhi _0211C170
_0211C16C:
	bl FUN_ov40_0211adac
_0211C170:
	ldr r0, _0211C180 ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_0211C180: .word gBgMenuManager
	arm_func_end FUN_ov40_0211c14c

	arm_func_start FUN_ov40_0211c184
FUN_ov40_0211c184: ; 0x0211C184
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r0, #0x74
	bl _Znwm
	cmp r0, #0
	beq _0211C1A0
	bl FUN_ov16_02110558
_0211C1A0:
	mov r5, #0
	mov r4, #1
	str r0, [r6, #0x20]
	mov r1, r5
	add r0, r6, #0x74
	mov r2, #0x48
	str r5, [r6, #4]
	str r5, [r6, #8]
	str r5, [r6, #0xc]
	str r5, [r6, #0x10]
	strb r5, [r6, #0x19]
	strb r5, [r6, #0x1a]
	strh r4, [r6, #0x5c]
	str r5, [r6, #0x14]
	strb r5, [r6, #0x18]
	str r5, [r6, #0x24]
	str r5, [r6, #0x40]
	str r5, [r6, #0x38]
	str r4, [r6, #0x28]
	str r5, [r6, #0x2c]
	str r5, [r6, #0x30]
	str r5, [r6, #0x34]
	str r5, [r6, #0x44]
	bl MI_CpuFill8
	mov r8, #0x14
	mov r1, r5
	mov r2, r8
	add r0, r6, #0x60
	bl MI_CpuFill8
	mov r7, #0x40
	mov r1, r5
	mov r2, r7
	add r0, r6, #0xbc
	bl MI_CpuFill8
	mov r2, r8
	add r0, r6, #0xfc
	mov r1, r5
	bl MI_CpuFill8
	ldr r0, _0211C2C4 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211C2C8 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211C2CC ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	sub r0, r7, #0x41
	str r0, [r6, #0x50]
	ldr r0, _0211C2D0 ; =0x020A0640
	str r4, [r6, #0x4c]
	str r5, [r6, #0x48]
	str r5, [r6, #0x54]
	strb r5, [r6, #0x58]
	strb r5, [r6, #0x59]
	ldrb r0, [r0, #0x1a]
	mov r1, #0
	cmp r0, #0
	ldrne r0, _0211C2D4 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	strneb r0, [r6, #0x19]
	ldr r0, _0211C2D8 ; =gBgMenuManager
	bl FUN_ov16_020f5a58
	add r0, r6, #0x60
	mov r1, #0x1c
	mov r2, #6
	bl FUN_ov16_020f2fa8
	mov r0, r6
	bl FUN_ov40_0211a330
	ldr r1, _0211C2DC ; =0x0211CA6C
	mov r0, r6
	bl FUN_ov40_02119f38
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C2C4: .word gSprButtonCtrl
_0211C2C8: .word gSprAnimCtrl
_0211C2CC: .word g3DPlaneCtrl
_0211C2D0: .word unk_020A0640
_0211C2D4: .word gWirelessUtil
_0211C2D8: .word gBgMenuManager
_0211C2DC: .word ov40_0211CA6C
	arm_func_end FUN_ov40_0211c184

	arm_func_start FUN_ov40_0211c2e0
FUN_ov40_0211c2e0: ; 0x0211C2E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #5
	cmpne r0, #6
	beq _0211C300
	cmp r0, #7
	bne _0211C33C
_0211C300:
	ldr r0, _0211C4FC ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0211C33C
	ldr r5, _0211C500 ; =0x0209AEC0
	mov r0, r5
	bl FUN_020467c0
	cmp r0, #0
	ldrneb r0, [r5, #0x64]
	cmpne r0, #0
	beq _0211C33C
	mov r0, r5
	bl FUN_020467ac
	mov r0, r5
	bl FUN_02046e28
_0211C33C:
	ldr r0, _0211C504 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #4]
	cmpeq r0, #5
	bne _0211C394
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0211C378
	mov r0, r4
	bl FUN_ov40_0211a1bc
	mov r0, #0
	str r0, [r4, #8]
	b _0211C394
_0211C378:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0211C394
	mov r0, r4
	bl FUN_ov40_0211a268
	mov r0, #0
	str r0, [r4, #0x10]
_0211C394:
	ldr r0, [r4, #4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0211C488
_0211C3A4: ; jump table
	b _0211C488 ; case 0
	b _0211C3C8 ; case 1
	b _0211C488 ; case 2
	b _0211C3F8 ; case 3
	b _0211C488 ; case 4
	b _0211C46C ; case 5
	b _0211C464 ; case 6
	b _0211C464 ; case 7
	b _0211C480 ; case 8
_0211C3C8:
	add r0, r4, #0x74
	mov r1, #6
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211C488
	mov r0, r4
	bl FUN_ov40_0211a408
	mov r0, r4
	bl FUN_ov40_0211a428
	mov r0, r4
	mov r1, #2
	b _0211C45C
_0211C3F8:
	mov r0, r4
	bl FUN_ov40_0211a468
	cmp r0, #0
	beq _0211C488
	mov r0, r4
	bl FUN_ov40_0211a4b8
	mov r0, r4
	bl FUN_ov40_0211b064
	mov r0, r4
	bl FUN_ov40_0211ae9c
	ldr r1, [r4, #0x38]
	mov r0, r4
	bl FUN_ov40_0211a2d4
	ldrb r0, [r4, #0x19]
	mov r1, #1
	cmp r0, #0
	moveq r1, #3
	mov r0, r4
	bl FUN_ov40_0211a268
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, r4
	mov r1, #5
_0211C45C:
	bl FUN_ov40_0211a1bc
	b _0211C488
_0211C464:
	mov r0, r4
	bl FUN_ov40_0211ae9c
_0211C46C:
	ldr r0, [r4, #0x1c]
	add r1, r4, #0x48
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
_0211C480:
	mov r0, r4
	bl FUN_ov40_0211c14c
_0211C488:
	ldr r0, _0211C504 ; =gSprAnimCtrl
	ldr r5, _0211C508 ; =gDeltaTime
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211C4C0
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211C4CC
_0211C4C0:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211C4CC:
	bl _ffix
	ldr r2, _0211C50C ; =g3DSpriteCtrl
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C4FC: .word unk_020A0640
_0211C500: .word gWirelessUtil
_0211C504: .word gSprAnimCtrl
_0211C508: .word gDeltaTime
_0211C50C: .word g3DSpriteCtrl
	arm_func_end FUN_ov40_0211c2e0

	arm_func_start FUN_ov40_0211c510
FUN_ov40_0211c510: ; 0x0211C510
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0211C528: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _0211C548 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	b _0211C560 ; case 5
	b _0211C564 ; case 6
	b _0211C564 ; case 7
_0211C548:
	bl FUN_ov40_0211abd0
	bl _ZN8Graphics17LoadBGPaletteMainEv
	mov r0, r4
	mov r1, #3
	bl FUN_ov40_0211a1bc
	ldmfd sp!, {r4, pc}
_0211C560:
	bl _ZN8Graphics17LoadBGPaletteMainEv
_0211C564:
	ldr r0, _0211C57C ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov40_0211ae54
	ldmfd sp!, {r4, pc}
_0211C57C: .word gBgMenuManager
	arm_func_end FUN_ov40_0211c510

	arm_func_start FUN_ov40_0211c580
FUN_ov40_0211c580: ; 0x0211C580
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	ldr r5, _0211C6A4 ; =0x020A0640
	cmp r0, #0
	beq _0211C5B0
	beq _0211C5A8
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0211C5A8:
	mov r0, #0
	str r0, [r4, #0x20]
_0211C5B0:
	ldr r0, _0211C6A8 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211C6AC ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, [r4, #0x34]
	cmp r0, #0
	movgt r0, #0
	strgtb r0, [r5, #0x8e]
	ldr r0, _0211C6B0 ; =gLogicThink
	bl FUN_0207318c
	ldr r2, [r4, #0x28]
	mov r1, #0x3c
	add r2, r2, #1
	rsb r2, r2, r2, lsl #4
	mul r1, r2, r1
	mov r6, r0
	strh r1, [r6, #8]
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	bne _0211C610
	bl FUN_02073eb8
	b _0211C614
_0211C610:
	bl FUN_02073ec8
_0211C614:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	mov r0, r6
	bne _0211C62C
	bl FUN_02073ee0
	b _0211C630
_0211C62C:
	bl FUN_02073ef0
_0211C630:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldr r0, [r4, #0x30]
	bne _0211C654
	cmp r0, #0
	moveq r0, #4
	streqb r0, [r5, #0x90]
	movne r0, #2
	b _0211C664
_0211C654:
	cmp r0, #0
	moveq r0, #3
	streqb r0, [r5, #0x90]
	movne r0, #1
_0211C664:
	strneb r0, [r5, #0x90]
	add r0, r4, #0x74
	mov r1, #6
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r4
	bl FUN_ov40_0211a51c
	ldr r0, _0211C6B4 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	add r0, r4, #0x60
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldr r0, _0211C6B8 ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f5af0
	ldmfd sp!, {r4, r5, r6, pc}
_0211C6A4: .word unk_020A0640
_0211C6A8: .word gSprButtonCtrl
_0211C6AC: .word gSprAnimCtrl
_0211C6B0: .word gLogicThink
_0211C6B4: .word g3DPlaneCtrl
_0211C6B8: .word gBgMenuManager
	arm_func_end FUN_ov40_0211c580

	arm_func_start FUN_ov40_0211c6bc
FUN_ov40_0211c6bc: ; 0x0211C6BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov40_0211c6bc

	arm_func_start FUN_ov40_0211c6d0
FUN_ov40_0211c6d0: ; 0x0211C6D0
	bx lr
	arm_func_end FUN_ov40_0211c6d0

	.rodata
	.global ov40_0211C6D4
ov40_0211C6D4:
	.byte 0x01
	.global ov40_0211C6D5
ov40_0211C6D5:
	.byte 0x00
	.global ov40_0211C6D6
ov40_0211C6D6:
	.byte 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00
	.global ov40_0211C6E0
ov40_0211C6E0:
	.word ov40_0211C818
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov40_0211C824
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov40_0211C8B0
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C700
ov40_0211C700:
	.word ov40_0211C930
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov40_0211C900
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov40_0211C910
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov40_0211C870
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov40_0211C860
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov40_0211C840
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov40_0211C850
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov40_0211C8A0
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov40_0211C8C0
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov40_0211C8E0
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov40_0211C920
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov40_0211C830
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov40_0211C880
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov40_0211C8D0
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov40_0211C8F0
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov40_0211C890
	.byte 0x0F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov40_0211c788
FUN_ov40_0211c788: ; 0x0211C788
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211C7D0 ; =0x0211C800
	str r0, [r4, #8]
	ldr r0, _0211C7D4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211C7D8 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C7D0: .word ov40_0211C800
_0211C7D4: .word 0x00009CCD
_0211C7D8: .word 0x0000EA3C
	arm_func_end FUN_ov40_0211c788

	.section .sinit, 4
ov40_0211C7DC:
	.word FUN_ov40_0211c788

	.data
	.global ov40_0211C800
ov40_0211C800:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C818
ov40_0211C818:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov40_0211C824
ov40_0211C824:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov40_0211C830
ov40_0211C830:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x63, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C840
ov40_0211C840:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C850
ov40_0211C850:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C860
ov40_0211C860:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C870
ov40_0211C870:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C880
ov40_0211C880:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x6E, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C890
ov40_0211C890:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C8A0
ov40_0211C8A0:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C8B0
ov40_0211C8B0:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C8C0
ov40_0211C8C0:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C8D0
ov40_0211C8D0:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x6E, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C8E0
ov40_0211C8E0:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C8F0
ov40_0211C8F0:
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C900
ov40_0211C900:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C910
ov40_0211C910:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C920
ov40_0211C920:
	.byte 0x77, 0x72, 0x64, 0x5F, 0x63, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C930
ov40_0211C930:
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211C948
ov40_0211C948:
	.word FUN_ov40_0211c6d0
	.word FUN_ov40_0211c6bc
	.word FUN_ov40_0211a738
	.word FUN_ov40_0211a608
	.word FUN_ov40_0211c184
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov40_0211c2e0
	.word FUN_ov40_0211c510
	.word FUN_ov40_0211c580
	.word FUN_ov40_02119f64
	.word _ZN12CommonScreen7vFUN_28Ev
	.word FUN_ov40_0211a1a8
	.word FUN_ov40_0211a044
	.word FUN_ov40_0211a194
	.word FUN_ov40_0211a150
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
	.global ov40_0211C9B4
ov40_0211C9B4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x72, 0x75, 0x6C, 0x65, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov40_0211C9D0
ov40_0211C9D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D
	.byte 0x4D, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov40_0211C9EC
ov40_0211C9EC:
	.byte 0x82, 0xB5, 0x82, 0xCE
	.byte 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211CA0C
ov40_0211CA0C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x72, 0x75
	.byte 0x6C, 0x65, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov40_0211CA28
ov40_0211CA28:
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1
	.byte 0x83, 0x8B, 0x81, 0x5B, 0x83, 0x8B, 0x82, 0xF0, 0x5B, 0x8C, 0x88, 0x2F, 0x82, 0xAB, 0x5D, 0x82
	.byte 0xDF, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov40_0211CA50
ov40_0211CA50:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x8B, 0x81, 0x5B, 0x83, 0x8B, 0x82, 0xC5, 0x82, 0xA2, 0x82, 0xA2
	.byte 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov40_0211CA6C
ov40_0211CA6C:
	.byte 0x82, 0xBD, 0x82, 0xA2
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9, 0x83, 0x8B, 0x81, 0x5B, 0x83, 0x8B, 0x82, 0xF0
	.byte 0x0A, 0x82, 0xAB, 0x82, 0xDF, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81
	.byte 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/eventscreenmanager.inc"

    .text
	arm_func_start FUN_02043d80
FUN_02043d80: ; 0x02043D80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	cmp r1, #1
	mov r8, r0
	mov r5, #0
	mov r4, #1
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r2, r8, #0x6000
	ldr r1, [r2, #0x20c]
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r8, #0x6100
	ldrsb r3, [r1, #0xe8]
	add r1, r8, #0x1a8
	ldr r2, [r2, #0x224]
	add r1, r1, #0x6000
	cmp r2, #8
	add r6, r1, r3, lsl #3
	addls pc, pc, r2, lsl #2
	b _020442A4
_02043DE0: ; jump table
	b _02043E04 ; case 0
	b _02043F30 ; case 1
	b _02043F90 ; case 2
	b _02044000 ; case 3
	b _020440F0 ; case 4
	b _020441A0 ; case 5
	b _0204422C ; case 6
	b _02044270 ; case 7
	b _02044298 ; case 8
_02043E04:
	mov r1, r5
	mov r2, r5
	bl FUN_02044470
	ldrsh r0, [r6, #6]
	cmp r0, #0
	bne _02043F0C
	bl _Z14GetCurrentModev
	cmp r0, #3
	addne sp, sp, #0x10
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r8, #0x6000
	ldr r2, [r0, #0x1ec]
	cmp r2, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r8, #0x324
	mov r0, r8
	add r1, r1, #0x1c00
	bl FUN_02044470
	add r0, r8, #0x6000
	ldr r0, [r0, #0x1ec]
	bl FUN_ov0_020bdbe8
	cmp r0, #9
	bne _02043EEC
	ldr r0, _020442B0 ; =0x0208C384
	ldr r4, _020442B4 ; =0x0209A160
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r4]
	ldrsh r0, [r4, #4]
	str r1, [sp, #4]
	bl abs
	ldrsh r5, [r4, #6]
	mov r4, r0
	mov r0, #0x100
	mov r1, r5
	bl _s32_div_f
	mul r0, r5, r0
	cmp r0, r4
	bne _02043EEC
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02043ECC
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _02043EEC
_02043ECC:
	mov r4, #0
	b _02043EE4
_02043ED4:
	mov r1, r4
	add r0, r8, #0x90
	bl FUN_02048aac
	add r4, r4, #1
_02043EE4:
	cmp r4, #3
	blt _02043ED4
_02043EEC:
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
	add r0, r8, #0x90
	bl FUN_02048748
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02043F0C:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r0, #0x224]
	add r1, r1, #1
	str r1, [r0, #0x224]
_02043F30:
	mov r7, #0
	str r7, [sp]
	ldrsb r2, [r6, #5]
	add r1, r8, #0x324
	ldr r3, [r6]
	add r0, r8, #0x90
	add r1, r1, #0x1c00
	bl FUN_020486f0
	ldrsb r0, [r6, #5]
	add r1, r8, #0x6000
	mov r2, #1
	cmp r0, #0
	moveq r7, #1
	add r0, r8, #0x324
	cmp r7, #0
	ldr r1, [r1, #0x1ec]
	movne r2, #0
	add r0, r0, #0x1c00
	bl FUN_020304e4
	add r0, r8, #0x6000
	ldr r1, [r0, #0x224]
	str r4, [r0, #0x220]
	add r1, r1, #1
	str r1, [r0, #0x224]
_02043F90:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x214]
	cmp r1, #0
	beq _02043FCC
	bl _ZN8Graphics20IsMainBrightAdjustedEv
	cmp r0, #0
	addne r0, r8, #0x6000
	strne r5, [r0, #0x220]
	add r0, r8, #0x6000
	ldr r0, [r0, #0x1ec]
	bl _ZN14CScreenManager13fadeMainBlackEv
	add r0, r8, #0x6000
	mov r1, #6
_02043FC4:
	str r1, [r0, #0x224]
	b _020442A4
_02043FCC:
	ldr r0, [r0, #0x21c]
	cmp r0, #0
	bne _020442A4
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
	add r0, r8, #0x90
	bl FUN_02048748
	cmp r0, #0
	addeq r0, r8, #0x6000
	ldreq r1, [r0, #0x224]
	addeq r1, r1, #1
	b _02044290
_02044000:
	add r0, r8, #0x90
	bl FUN_02048a04
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030584
	add r0, r8, #0x6100
	ldrsb r0, [r0, #0xe8]
	ldr r1, _020442B8 ; =0x00001014
	ldrsh r7, [r6, #6]
	add r0, r8, r0, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	cmp r0, r1
	bne _02044040
	ldr r0, _020442BC ; =0x020A9C40
	bl FUN_0204556c
_02044040:
	ldrsb r1, [r6, #5]
	cmp r1, #0xb
	blt _02044054
	add r0, r8, #0x90
	bl FUN_02048288
_02044054:
	add r0, r8, #0x6100
	ldrsb r1, [r0, #0xe8]
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	add r0, r0, r1, lsl #3
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r1, r8, #0x6100
	ldrsb r2, [r1, #0xe8]
	add r0, r8, #0x6000
	str r4, [r0, #0x224]
	add r2, r2, #1
	strb r2, [r0, #0x1e8]
	ldrsb r2, [r1, #0xe8]
	and r2, r2, #7
	strb r2, [r0, #0x1e8]
	ldrsb r1, [r1, #0xe8]
	add r1, r8, r1, lsl #3
	add r1, r1, #0x6100
	ldrsh r1, [r1, #0xae]
	cmp r1, #0
	bne _020442A4
	ldr r0, [r0, #0x214]
	cmp r0, #0
	bne _020440E4
	ldr r1, _020442C0 ; =0x00001002
	cmp r7, r1
	addne r0, r1, #0x1f
	cmpne r7, r0
	addne r0, r1, #0x20
	cmpne r7, r0
	addne r0, r1, #0x21
	cmpne r7, r0
	addeq r0, r8, #0x6000
	streq r5, [r0, #0x220]
_020440E4:
	add r0, r8, #0x6000
	mov r1, #4
	b _02043FC4
_020440F0:
	mov r6, r5
	mov r1, r6
	add r0, r8, #0x90
	bl FUN_020484a4
	cmp r0, #0
	beq _020442A4
	add r0, r8, #0x6000
	ldr r0, [r0, #0x200]
	cmp r0, #0
	add r0, r8, #0x90
	bne _02044138
	bl FUN_02048508
	add r1, r8, #0x6000
	str r0, [r1, #0x200]
	cmp r0, #0
	bne _020442A4
	str r6, [r1, #0x210]
	b _02044190
_02044138:
	sub r1, r6, #1
	bl FUN_02048178
	cmp r0, #0
	beq _020442A4
	add r7, r8, #0x6000
	str r6, [r7, #0x210]
	ldr r9, _020442C4 ; =0x00001023
	b _02044180
_02044158:
	ldr r0, [r7, #0x200]
	tst r0, r4, lsl r6
	beq _0204417C
	mov r0, r8
	mov r1, r6
	mov r2, r9
	bl FUN_02044d00
	cmp r0, #0
	strne r4, [r7, #0x210]
_0204417C:
	add r6, r6, #1
_02044180:
	cmp r6, #0x10
	blt _02044158
	add r0, r8, #0x6000
	str r5, [r0, #0x200]
_02044190:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x224]
	add r1, r1, #1
	str r1, [r0, #0x224]
_020441A0:
	add r0, r8, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	bne _02044224
	ldr r1, [r0, #0x1fc]
	cmp r1, #0
	beq _020441FC
	cmp r1, #1
	bne _020441DC
	bl FUN_ov16_020f068c
	cmp r0, #0
	moveq r0, #0x12
	movne r0, #0x15
	mov r1, #1
	bl FUN_ov16_020f2604
_020441DC:
	mov r0, #6
	bl _ZN8Graphics16FadeScreensBlackEl
	add r0, r8, #0x6000
	ldr r0, [r0, #0x1fc]
	bl _Z11SetNextMode8GameMode
	add r0, r8, #0x6000
	str r5, [r0, #0x1fc]
	b _02044208
_020441FC:
	ldr r1, [r0, #0x1ec]
	mov r0, r8
	bl FUN_02044e50
_02044208:
	add r0, r8, #0x6000
	str r5, [r0, #0x214]
	str r5, [r0, #0x218]
	str r5, [r0, #0x21c]
	str r4, [r0, #0x220]
	str r5, [r0, #0x224]
	b _020442A4
_02044224:
	str r4, [r0, #0x224]
	b _020442A4
_0204422C:
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	bne _020442A4
	add r0, r8, #0x6000
	ldr r0, [r0, #0x218]
	cmp r0, #0
	add r0, r8, #0x90
	beq _02044254
	bl FUN_02048a68
	b _02044258
_02044254:
	bl FUN_02048a4c
_02044258:
	ldr r0, _020442C8 ; =gMoviePlayer
	bl _ZN11MoviePlayer12FUN_0202e958Ev
	add r0, r8, #0x6000
	ldr r1, [r0, #0x224]
	add r1, r1, #1
	str r1, [r0, #0x224]
_02044270:
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
	add r0, r8, #0x90
	bl FUN_02048748
	cmp r0, #0
	addeq r0, r8, #0x6000
	moveq r1, #3
_02044290:
	streq r1, [r0, #0x224]
	b _020442A4
_02044298:
	add r0, r8, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030638
_020442A4:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020442B0: .word unk_0208C384
_020442B4: .word gScreenFades
_020442B8: .word 0x00001014
_020442BC: .word unk_020A9C40
_020442C0: .word 0x00001002
_020442C4: .word 0x00001023
_020442C8: .word gMoviePlayer
	arm_func_end FUN_02043d80

	arm_func_start FUN_020442cc
FUN_020442cc: ; 0x020442CC
	mov r0, #0
	bx lr
	arm_func_end FUN_020442cc

	arm_func_start FUN_020442d4
FUN_020442d4: ; 0x020442D4
	bx lr
	arm_func_end FUN_020442d4

	arm_func_start FUN_020442d8
FUN_020442d8: ; 0x020442D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	ands r4, r6, #1
	beq _020442F4
	bl FUN_02045124
_020442F4:
	cmp r4, #0
	beq _02044304
	mov r0, r7
	bl FUN_020452e0
_02044304:
	add r0, r7, #0x324
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x1c00
	bl FUN_02030010
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020442d8

	arm_func_start FUN_02044320
FUN_02044320: ; 0x02044320
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x6000
	mov r2, #0
	mov r4, r1
	str r2, [r0, #0x208]
	ldrh r1, [r4, #4]
	cmp r1, #1
	bne _02044364
	ldr r1, [r0, #0x204]
	cmp r1, #0
	moveq r1, #1
	streq r1, [r0, #0x208]
	add r0, r5, #0x6000
	mov r1, #1
	str r1, [r0, #0x204]
	b _02044368
_02044364:
	str r2, [r0, #0x204]
_02044368:
	add r0, r5, #0x6000
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _02044388
	mov r0, r5
	bl FUN_02045124
	mov r0, r5
	bl FUN_020452e0
_02044388:
	add r0, r5, #0x324
	mov r1, r4
	add r0, r0, #0x1c00
	bl FUN_0203003c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044320

	arm_func_start FUN_020443a0
FUN_020443a0: ; 0x020443A0
	bx lr
	arm_func_end FUN_020443a0

	arm_func_start FUN_020443a4
FUN_020443a4: ; 0x020443A4
	add r0, r0, #0x6000
	str r1, [r0, #0x1fc]
	bx lr
	arm_func_end FUN_020443a4

	arm_func_start FUN_020443b0
FUN_020443b0: ; 0x020443B0
	ldr r12, _020443BC ; =FUN_02047bc4
	add r0, r0, #0x90
	bx r12
_020443BC: .word FUN_02047bc4
	arm_func_end FUN_020443b0

	arm_func_start FUN_020443c0
FUN_020443c0: ; 0x020443C0
	add r0, r0, #0x324
	ldr r12, _020443D0 ; =FUN_020303B0
	add r0, r0, #0x1c00
	bx r12
_020443D0: .word FUN_020303B0
	arm_func_end FUN_020443c0

	arm_func_start FUN_020443d4
FUN_020443d4: ; 0x020443D4
	add r0, r0, #0x324
	ldr r12, _020443E4 ; =FUN_020303bc
	add r0, r0, #0x1c00
	bx r12
_020443E4: .word FUN_020303bc
	arm_func_end FUN_020443d4

	arm_func_start FUN_020443e8
FUN_020443e8: ; 0x020443E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	ldrne r0, [r0, #0x224]
	cmpne r0, #0
	beq _0204441C
	add r0, r4, #0x90
	bl FUN_02048a04
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030584
_0204441C:
	add r0, r4, #0x1a8
	mov r5, #0
	add r3, r4, #0x6000
	mov r1, r5
	add r0, r0, #0x6000
	mov r2, #0x40
	str r5, [r3, #0x214]
	str r5, [r3, #0x218]
	str r5, [r3, #0x21c]
	str r5, [r3, #0x210]
	str r5, [r3, #0x224]
	bl MI_CpuFill8
	add r1, r4, #0x6000
	strb r5, [r1, #0x1e9]
	add r0, r4, #0x6100
	ldrsb r0, [r0, #0xe9]
	strb r0, [r1, #0x1e8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020443e8

	arm_func_start FUN_02044464
FUN_02044464: ; 0x02044464
	add r0, r0, #0x6000
	str r1, [r0, #0x1ec]
	bx lr
	arm_func_end FUN_02044464

	arm_func_start FUN_02044470
FUN_02044470: ; 0x02044470
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r0, r5, #0x90
	bl FUN_02048aa0
	mov r1, r4
	add r0, r5, #0x90
	bl FUN_02048a94
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044470

	arm_func_start FUN_02044494
FUN_02044494: ; 0x02044494
	add r0, r0, #0x324
	add r0, r0, #0x1c00
	bx lr
	arm_func_end FUN_02044494

	arm_func_start FUN_020444a0
FUN_020444a0: ; 0x020444A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x234
	add r0, r0, #0x6000
	mov r2, #0x80
	mov r4, r1
	bl MI_CpuCopy8
	add r0, r5, #0x324
	add r0, r0, #0x1c00
	add r1, r4, #0x80
	bl FUN_02030438
	add r0, r5, #0x90
	add r1, r4, #0x280
	bl FUN_02047c7c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020444a0

	arm_func_start FUN_020444dc
FUN_020444dc: ; 0x020444DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, #0x234
	mov r0, r4
	add r1, r1, #0x6000
	mov r2, #0x80
	bl MI_CpuCopy8
	add r0, r5, #0x324
	add r0, r0, #0x1c00
	add r1, r4, #0x80
	bl FUN_02030480
	add r0, r5, #0x90
	add r1, r4, #0x280
	bl FUN_02047cdc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020444dc

	arm_func_start FUN_0204451c
FUN_0204451c: ; 0x0204451C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x6000
	ldr r5, [r0, #0x1ec]
	mov r6, r1
	cmp r5, #0
	beq _02044554
	mov r0, r5
	bl _ZN14CScreenManager15getCurSceneMainEv
	mov r4, r0
	mov r0, r5
	bl _ZN14CScreenManager16getNextSceneMainEv
	cmp r4, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02044554:
	add r0, r7, #0x6000
	str r6, [r0, #0x20c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204451c

	arm_func_start FUN_02044560
FUN_02044560: ; 0x02044560
	add r0, r0, #0x6100
	ldrsb r1, [r0, #0xe9]
	ldrsb r0, [r0, #0xe8]
	add r1, r1, #8
	sub r0, r1, r0
	and r0, r0, #7
	bx lr
	arm_func_end FUN_02044560

	arm_func_start FUN_0204457c
FUN_0204457c: ; 0x0204457C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #0x6000
	ldr r0, [r0, #0x210]
	cmp r0, #0
	beq _020445B8
	add r0, r8, #0x6100
	ldrsb r1, [r0, #0xe8]
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	add r2, r0, r1, lsl #3
	ldrsb r5, [r2, #4]
	ldrsb r6, [r2, #5]
	ldrsh r7, [r2, #6]
	ldr r4, [r0, r1, lsl #3]
_020445B8:
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	mov r1, #0
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r8, #0x6000
	ldr r0, [r0, #0x210]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x6100
	ldrsb r1, [r0, #0xe8]
	add r0, r8, #0x1a8
	add r0, r0, #0x6000
	str r4, [r0, r1, lsl #3]!
	strb r5, [r0, #4]
	strb r6, [r0, #5]
	strh r7, [r0, #6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204457c

	arm_func_start FUN_02044600
FUN_02044600: ; 0x02044600
	add r0, r0, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	ldrne r0, [r0, #0x224]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02044600

	arm_func_start FUN_02044620
FUN_02044620: ; 0x02044620
	add r0, r0, #0x6000
	str r1, [r0, #0x21c]
	bx lr
	arm_func_end FUN_02044620

	arm_func_start FUN_0204462c
FUN_0204462c: ; 0x0204462C
	add r1, r0, #0x6100
	ldrsb r1, [r1, #0xe8]
	add r0, r0, r1, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	bx lr
	arm_func_end FUN_0204462c

	arm_func_start FUN_02044644
FUN_02044644: ; 0x02044644
	stmfd sp!, {r3, lr}
	add r0, r0, #0x90
	bl FUN_02047e20
	ldr r0, [r0]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02044644

	arm_func_start FUN_02044658
FUN_02044658: ; 0x02044658
	ldr r12, _02044664 ; =FUN_02047e20
	add r0, r0, #0x90
	bx r12
_02044664: .word FUN_02047e20
	arm_func_end FUN_02044658

	arm_func_start FUN_02044668
FUN_02044668: ; 0x02044668
	stmfd sp!, {r4, lr}
	add r0, r0, #0x90
	mov r4, r2
	bl FUN_02047e20
	str r4, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02044668

	arm_func_start FUN_02044680
FUN_02044680: ; 0x02044680
	ldr r12, _0204468C ; =FUN_02048278
	add r0, r0, #0x90
	bx r12
_0204468C: .word FUN_02048278
	arm_func_end FUN_02044680

	arm_func_start FUN_02044690
FUN_02044690: ; 0x02044690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	add r0, r8, #0x6000
	ldr r0, [r0, #0x210]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r0, #0
	ldr r4, [sp, #0x20]
	bne _020446F8
	cmp r4, #0
	bne _020446CC
	add r0, r8, #0x90
	bl FUN_02048288
_020446CC:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r7
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x90
	str r4, [sp]
	bl FUN_02047f8c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020446F8:
	cmp r4, #0
	bne _02044708
	add r0, r8, #0x90
	bl FUN_0204836c
_02044708:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r7
	mov r2, r6
	mov r3, r5
	add r0, r8, #0x90
	str r4, [sp]
	bl FUN_02048068
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02044690

	arm_func_start FUN_02044734
FUN_02044734: ; 0x02044734
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r12, #0
	mov r1, #2
	mov r2, #1
	str r12, [sp]
	bl FUN_02044690
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02044734

	arm_func_start FUN_02044754
FUN_02044754: ; 0x02044754
	stmfd sp!, {r3, lr}
	add r3, r0, #0x6000
	ldr r3, [r3, #0x210]
	cmp r3, #0
	beq _02044770
	cmp r2, #0
	beq _0204477C
_02044770:
	add r0, r0, #0x90
	bl FUN_02048288
	ldmfd sp!, {r3, pc}
_0204477C:
	add r0, r0, #0x90
	bl FUN_0204836c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02044754

	arm_func_start FUN_02044788
FUN_02044788: ; 0x02044788
	ldr r12, _02044794 ; =FUN_0204847c
	add r0, r0, #0x90
	bx r12
_02044794: .word FUN_0204847c
	arm_func_end FUN_02044788

	arm_func_start FUN_02044798
FUN_02044798: ; 0x02044798
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	mov r4, #0x80
	mov r9, r0
	mov r5, #0
	mov r8, r1
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	ldr r7, [sp, #0xa0]
	bl MI_CpuFill8
	ldr r0, _02044C4C ; =0x00010006
	cmp r8, r0
	bgt _020448A8
	bge _02044B20
	sub r1, r0, #4
	cmp r8, r1
	bgt _02044878
	sub r0, r0, #4
	cmp r8, r0
	bge _02044B00
	cmp r8, #0x19
	bgt _02044868
	cmp r8, #0
	addge pc, pc, r8, lsl #2
	b _02044B50
_02044800: ; jump table
	b _02044B50 ; case 0
	b _0204491C ; case 1
	b _02044A80 ; case 2
	b _02044924 ; case 3
	b _0204499C ; case 4
	b _0204492C ; case 5
	b _0204493C ; case 6
	b _02044944 ; case 7
	b _02044A70 ; case 8
	b _02044A78 ; case 9
	b _02044934 ; case 10
	b _02044914 ; case 11
	b _02044A88 ; case 12
	b _02044A90 ; case 13
	b _02044A98 ; case 14
	b _02044AA8 ; case 15
	b _02044AA0 ; case 16
	b _02044AB0 ; case 17
	b _02044AB8 ; case 18
	b _02044AC0 ; case 19
	b _02044AC8 ; case 20
	b _02044AD0 ; case 21
	b _02044AD8 ; case 22
	b _02044AE0 ; case 23
	b _02044AE8 ; case 24
	b _02044AF0 ; case 25
_02044868:
	ldr r0, _02044C50 ; =0x00010001
	cmp r8, r0
	beq _02044AF8
	b _02044B50
_02044878:
	sub r1, r0, #2
	cmp r8, r1
	bgt _02044898
	bge _02044B10
	sub r0, r0, #3
	cmp r8, r0
	beq _02044B08
	b _02044B50
_02044898:
	sub r0, r0, #1
	cmp r8, r0
	beq _02044B18
	b _02044B50
_020448A8:
	add r1, r0, #3
	cmp r8, r1
	bgt _020448E4
	bge _02044B30
	add r1, r0, #1
	cmp r8, r1
	bgt _020448D4
	add r0, r0, #1
	cmp r8, r0
	beq _02044B28
	b _02044B50
_020448D4:
	add r0, r0, #2
	cmp r8, r0
	beq _02044A68
	b _02044B50
_020448E4:
	add r1, r0, #5
	cmp r8, r1
	bgt _02044904
	bge _02044B40
	add r0, r0, #4
	cmp r8, r0
	beq _02044B38
	b _02044B50
_02044904:
	add r0, r0, #6
	cmp r8, r0
	beq _02044B48
	b _02044B50
_02044914:
	ldr r6, _02044C54 ; =0x00001013
	b _02044B5C
_0204491C:
	ldr r6, _02044C58 ; =0x00001022
	b _02044B5C
_02044924:
	ldr r6, _02044C5C ; =0x00001003
	b _02044B5C
_0204492C:
	ldr r6, _02044C60 ; =0x00001004
	b _02044B5C
_02044934:
	ldr r6, _02044C64 ; =0x00001026
	b _02044B5C
_0204493C:
	ldr r6, _02044C68 ; =0x0000100B
	b _02044B5C
_02044944:
	ldr r0, _02044C6C ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02044968
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x80
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02044968:
	ldr r0, _02044C6C ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _02044994
	bl FUN_0206d6b0
	cmp r0, #0
	ldrne r6, _02044C70 ; =0x0000100C
	bne _02044B5C
_02044994:
	ldr r6, _02044C74 ; =0x0000100D
	b _02044B5C
_0204499C:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _02044A1C
	cmp r0, #3
	blo _020449C4
	cmp r0, #5
	movls r0, #2
	bls _02044A1C
_020449C4:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #6
	blo _020449E0
	cmp r0, #8
	movls r0, #3
	bls _02044A1C
_020449E0:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #9
	blo _020449FC
	cmp r0, #0xb
	movls r0, #4
	bls _02044A1C
_020449FC:
	ldr r0, _02044C78 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	blo _02044A18
	cmp r0, #0xe
	movls r0, #5
	bls _02044A1C
_02044A18:
	mvn r0, #0
_02044A1C:
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02044B5C
_02044A28: ; jump table
	b _02044B5C ; case 0
	b _02044A40 ; case 1
	b _02044A48 ; case 2
	b _02044A50 ; case 3
	b _02044A58 ; case 4
	b _02044A60 ; case 5
_02044A40:
	ldr r6, _02044C7C ; =0x00001005
	b _02044B5C
_02044A48:
	ldr r6, _02044C80 ; =0x00001006
	b _02044B5C
_02044A50:
	ldr r6, _02044C84 ; =0x00001007
	b _02044B5C
_02044A58:
	ldr r6, _02044C88 ; =0x00001008
	b _02044B5C
_02044A60:
	ldr r6, _02044C8C ; =0x00001029
	b _02044B5C
_02044A68:
	ldr r6, _02044C90 ; =0x0000101C
	b _02044B5C
_02044A70:
	ldr r6, _02044C94 ; =0x0000101A
	b _02044B5C
_02044A78:
	ldr r6, _02044C98 ; =0x0000101B
	b _02044B5C
_02044A80:
	ldr r6, _02044C9C ; =0x00001021
	b _02044B5C
_02044A88:
	ldr r6, _02044CA0 ; =0x00001015
	b _02044B5C
_02044A90:
	ldr r6, _02044CA4 ; =0x00001014
	b _02044B5C
_02044A98:
	ldr r6, _02044CA8 ; =0x00001016
	b _02044B5C
_02044AA0:
	ldr r6, _02044CAC ; =0x0000101D
	b _02044B5C
_02044AA8:
	ldr r6, _02044CB0 ; =0x00001017
	b _02044B5C
_02044AB0:
	ldr r6, _02044CB4 ; =0x00001024
	b _02044B5C
_02044AB8:
	ldr r6, _02044CB8 ; =0x00001027
	b _02044B5C
_02044AC0:
	ldr r6, _02044CBC ; =0x00001025
	b _02044B5C
_02044AC8:
	ldr r6, _02044CC0 ; =0x00001028
	b _02044B5C
_02044AD0:
	ldr r6, _02044CC4 ; =0x0000102A
	b _02044B5C
_02044AD8:
	ldr r6, _02044CC8 ; =0x0000102B
	b _02044B5C
_02044AE0:
	ldr r6, _02044CCC ; =0x0000102C
	b _02044B5C
_02044AE8:
	ldr r6, _02044CD0 ; =0x0000102D
	b _02044B5C
_02044AF0:
	add r6, r4, #0xfb0
	b _02044B5C
_02044AF8:
	ldr r6, _02044CD4 ; =0x0000100E
	b _02044B5C
_02044B00:
	ldr r6, _02044CD8 ; =0x0000100F
	b _02044B5C
_02044B08:
	add r6, r4, #0xf90
	b _02044B5C
_02044B10:
	ldr r6, _02044CDC ; =0x00001011
	b _02044B5C
_02044B18:
	ldr r6, _02044CE0 ; =0x00001012
	b _02044B5C
_02044B20:
	ldr r6, _02044CE4 ; =0x00001019
	b _02044B5C
_02044B28:
	ldr r6, _02044CE8 ; =0x00001018
	b _02044B5C
_02044B30:
	ldr r6, _02044CEC ; =0x0000101E
	b _02044B5C
_02044B38:
	ldr r6, _02044CF0 ; =0x0000101F
	b _02044B5C
_02044B40:
	ldr r6, _02044CF4 ; =0x0000102E
	b _02044B5C
_02044B48:
	ldr r6, _02044CF8 ; =0x0000102F
	b _02044B5C
_02044B50:
	add sp, sp, #0x80
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02044B5C:
	mov r4, #0
	mov r5, #0xf
	and r10, r8, #0x10000
	b _02044B90
_02044B6C:
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_02044d00
	adds r4, r4, r0
	beq _02044B8C
	cmp r10, #0
	bne _02044B98
_02044B8C:
	sub r5, r5, #1
_02044B90:
	cmp r5, #0
	bge _02044B6C
_02044B98:
	cmp r4, #0
	bne _02044BF4
	ldr r0, _02044C9C ; =0x00001021
	cmp r6, r0
	beq _02044BB8
	add r0, r0, #1
	cmp r6, r0
	bne _02044BF4
_02044BB8:
	ldr r6, _02044CFC ; =0x00001002
	mov r5, #0xf
	and r8, r8, #0x10000
	b _02044BEC
_02044BC8:
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_02044d00
	adds r4, r4, r0
	beq _02044BE8
	cmp r8, #0
	bne _02044BF4
_02044BE8:
	sub r5, r5, #1
_02044BEC:
	cmp r5, #0
	bge _02044BC8
_02044BF4:
	cmp r4, #0
	cmpne r7, #0
	beq _02044C40
	add r1, r9, #0x6000
	mov r0, r7
	str r7, [r1, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	add r1, r9, #0x6000
	str r0, [r1, #0x1f0]
	mov r0, r7
	bl _ZN14CScreenManager14getCurSceneSubEv
	add r1, r9, #0x6000
	mov r3, #0
	mov r2, #1
	str r0, [r1, #0x1f4]
	str r3, [r1, #0x214]
	str r3, [r1, #0x218]
	str r3, [r1, #0x21c]
	str r2, [r1, #0x210]
_02044C40:
	mov r0, r4
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02044C4C: .word 0x00010006
_02044C50: .word 0x00010001
_02044C54: .word 0x00001013
_02044C58: .word 0x00001022
_02044C5C: .word 0x00001003
_02044C60: .word 0x00001004
_02044C64: .word 0x00001026
_02044C68: .word 0x0000100B
_02044C6C: .word gUtilGame
_02044C70: .word 0x0000100C
_02044C74: .word 0x0000100D
_02044C78: .word unk_020A0640
_02044C7C: .word 0x00001005
_02044C80: .word 0x00001006
_02044C84: .word 0x00001007
_02044C88: .word 0x00001008
_02044C8C: .word 0x00001029
_02044C90: .word 0x0000101C
_02044C94: .word 0x0000101A
_02044C98: .word 0x0000101B
_02044C9C: .word 0x00001021
_02044CA0: .word 0x00001015
_02044CA4: .word 0x00001014
_02044CA8: .word 0x00001016
_02044CAC: .word 0x0000101D
_02044CB0: .word 0x00001017
_02044CB4: .word 0x00001024
_02044CB8: .word 0x00001027
_02044CBC: .word 0x00001025
_02044CC0: .word 0x00001028
_02044CC4: .word 0x0000102A
_02044CC8: .word 0x0000102B
_02044CCC: .word 0x0000102C
_02044CD0: .word 0x0000102D
_02044CD4: .word 0x0000100E
_02044CD8: .word 0x0000100F
_02044CDC: .word 0x00001011
_02044CE0: .word 0x00001012
_02044CE4: .word 0x00001019
_02044CE8: .word 0x00001018
_02044CEC: .word 0x0000101E
_02044CF0: .word 0x0000101F
_02044CF4: .word 0x0000102E
_02044CF8: .word 0x0000102F
_02044CFC: .word 0x00001002
	arm_func_end FUN_02044798

	arm_func_start FUN_02044d00
FUN_02044d00: ; 0x02044D00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r10, r0
	mov r8, r2
	mov r0, r9, lsl #0x18
	mov r1, #0
	mov r2, r8, lsl #0x10
	add r3, r10, #0xe9
	mov r6, r0, asr #0x18
	add r0, r10, #0x6000
	mov r7, r1
	mov r11, r2, asr #0x10
	add r5, r3, #0x6100
	add r4, r10, #0x6100
	str r0, [sp, #4]
_02044D40:
	ldrsb r0, [r4, #0xe9]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r12, #0
	mov r2, r9
	mov r3, r8
	add r0, r10, #0x90
	str r12, [sp]
	bl FUN_02048674
	movs r1, r0
	beq _02044DD4
	ldrsb r0, [r4, #0xe9]
	add r7, r7, #1
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6000
	strb r6, [r0, #0x1ad]
	ldrsb r0, [r4, #0xe9]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6100
	strh r11, [r0, #0xae]
	ldrsb r0, [r4, #0xe9]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6000
	str r1, [r0, #0x1a8]
	ldrsb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrsb r0, [r4, #0xe9]
	and r2, r0, #7
	ldr r0, [sp, #4]
	strb r2, [r0, #0x1e9]
	b _02044D40
_02044DD4:
	mov r0, r7
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02044d00

	arm_func_start FUN_02044de0
FUN_02044de0: ; 0x02044DE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x6100
	ldrsb r0, [r0, #0xe8]
	mov r4, r1
	add r0, r5, r0, lsl #3
	add r0, r0, #0x6100
	ldrsh r0, [r0, #0xae]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #0x6000
	mov r0, r4
	str r4, [r1, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	add r1, r5, #0x6000
	str r0, [r1, #0x1f0]
	mov r0, r4
	bl _ZN14CScreenManager14getCurSceneSubEv
	add r1, r5, #0x6000
	str r0, [r1, #0x1f4]
	mov r0, #1
	str r0, [r1, #0x210]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044de0

	arm_func_start FUN_02044e40
FUN_02044e40: ; 0x02044E40
	add r0, r0, #0x6000
	str r1, [r0, #0x1f0]
	str r2, [r0, #0x1f4]
	bx lr
	arm_func_end FUN_02044e40

	arm_func_start FUN_02044e50
FUN_02044e50: ; 0x02044E50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x6000
	ldr r2, [r0, #0x1f0]
	mov r4, r1
	cmp r2, #0
	blt _02044E78
	mov r0, r4
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
_02044E78:
	add r0, r5, #0x6000
	ldr r2, [r0, #0x1f4]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02044e50

	arm_func_start FUN_02044e98
FUN_02044e98: ; 0x02044E98
	add r0, r0, #0x6000
	str r1, [r0, #0x1f8]
	bx lr
	arm_func_end FUN_02044e98

	arm_func_start FUN_02044ea4
FUN_02044ea4: ; 0x02044EA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r1
	add r4, r6, #3
	mov r1, #0x88
	mul r1, r4, r1
	mov r7, r0
	mov r4, r2
	add r5, r1, #0x20
	ldr r0, _02044F70 ; =gAllocator
	add r1, r5, r4
	mov r8, r3
	bl _ZN9Allocator8allocateEm
	add r2, r5, r4
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	cmp r8, #0
	addne r0, r4, r5
	strne r0, [r8]
	ldr r0, _02044F74 ; =0x00030001
	add r12, r6, #3
	stmib r4, {r0, r5}
	strh r12, [r4, #0xc]
	mov r2, #0
	strh r2, [r4, #0xe]
	sub r0, r5, #0x20
	str r0, [r4, #0x10]
	mov r3, #1
	str r2, [r4, #0x14]
	strh r3, [r4, #0x20]
	mov r0, #0x88
	strh r0, [r4, #0x22]
	add r0, r3, #0x3000
	strh r0, [r4, #0x24]
	mov r1, #2
	strb r1, [r4, #0x26]
	strb r3, [r4, #0x27]
	mov r0, #0x11
	str r0, [r4, #0x28]
	str r2, [r4, #0x2c]
	rsb r0, r3, #0x2000
	str r0, [r4, #0x30]
	stmia sp, {r1, r2}
	mov r0, r7
	add r1, r4, #0x20
	add r2, r3, #0x6000
	str r12, [sp, #8]
	bl FUN_02045064
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02044F70: .word gAllocator
_02044F74: .word 0x00030001
	arm_func_end FUN_02044ea4

	arm_func_start FUN_02044f78
FUN_02044f78: ; 0x02044F78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, #2
	str r6, [sp]
	mov r5, #0
	mov r4, #1
	stmib sp, {r5, r6}
	mov r3, r4
	add r2, r6, #0x6000
	mov r8, r0
	bl FUN_02045064
	ldrh r12, [r0]
	mov r2, #0x88
	add r3, r4, #0x30000
	sub r1, r12, #1
	mul r7, r1, r2
	sub r1, r0, r7
	mul r0, r12, r2
	sub r7, r1, #0x20
	str r3, [r7, #4]
	strh r12, [r7, #0xc]
	strh r5, [r7, #0xe]
	str r0, [r7, #0x10]
	str r5, [r7, #0x14]
	str r6, [sp]
	mov r0, r8
	mov r3, r4
	add r2, r4, #0x6000
	stmib sp, {r5, r12}
	bl FUN_02045064
	mov r2, r7
	mov r3, r4
	add r0, r8, #0x90
	mov r1, #0xb
	bl FUN_020481c8
	add r2, r8, #0x6100
	ldrsb r1, [r2, #0xe9]
	rsb r4, r4, #0x2000
	add r3, r7, #0x20
	add r1, r8, r1, lsl #3
	add r1, r1, #0x6000
	strb r0, [r1, #0x1ad]
	ldrsb r0, [r2, #0xe9]
	add r1, r8, #0x6000
	add r0, r8, r0, lsl #3
	add r0, r0, #0x6100
	strh r4, [r0, #0xae]
	ldrsb r0, [r2, #0xe9]
	add r0, r8, r0, lsl #3
	add r0, r0, #0x6000
	str r3, [r0, #0x1a8]
	ldrsb r0, [r2, #0xe9]
	add r0, r0, #1
	strb r0, [r1, #0x1e9]
	ldrsb r0, [r2, #0xe9]
	and r0, r0, #7
	strb r0, [r1, #0x1e9]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02044f78

	arm_func_start FUN_02045064
FUN_02045064: ; 0x02045064
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r1]
	mov r0, #0x88
	strh r0, [r1, #0x8a]
	add r0, r4, #1
	strh r0, [r1, #0x88]
	strh r2, [r1, #0x8c]
	ldr r0, [sp, #0x20]
	strb r0, [r1, #0x8e]
	strb r3, [r1, #0x8f]
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _02045114
	and r0, r0, #0xff
	add r3, r0, #7
	add r2, sp, #0x20
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	bic r2, r2, #3
	mov r3, r0, asr #3
	cmp r4, #0
	add r2, r2, #4
	mov r0, #0
	ble _02045114
	add r12, r1, r3, lsl #2
	mov r4, #1
_020450D0:
	mov r3, r0, asr #2
	add r3, r0, r3, lsr #29
	mov r3, r3, asr #3
	add r5, r1, r3, lsl #2
	mov r3, r0, lsl #2
	ldr lr, [r5, #0x90]
	and r3, r3, #0x1f
	orr r3, lr, r4, lsl r3
	str r3, [r5, #0x90]
	add r2, r2, #4
	add r3, r12, r0, lsl #2
	ldr lr, [r2, #-4]
	add r0, r0, #1
	str lr, [r3, #0x90]
	ldr r3, [sp, #0x20]
	cmp r0, r3
	blt _020450D0
_02045114:
	add r0, r1, #0x88
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_02045064

	arm_func_start FUN_02045124
FUN_02045124: ; 0x02045124
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r5, #1
	bl _Z14GetCurrentModev
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, _020452D8 ; =gLogicThink
	mov r0, r7
	bl _ZN11CLogicThink12FUN_020731a4Ev
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r10, #0x6000
	ldr r0, [r0, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x36
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _020452DC ; 0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213246c
	movs r8, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r9, #0
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov132_02143114
	ldr r0, [r4]
	bl FUN_ov132_021447ec
	add r1, r10, #0x6000
	ldr r1, [r1, #0x1f4]
	mov r6, r0
	cmp r1, #0x39
	bne _02045214
	ldrsh r1, [r8]
	mov r0, r7
	bl FUN_0204a2c4
	mov r4, r0
	ldrsh r1, [r8, #2]
	mov r0, r7
	bl FUN_0204a2c4
	cmp r4, #0
	beq _020451E4
	ldrb r1, [r4]
	cmp r1, #5
	moveq r9, r5
_020451E4:
	cmp r0, #0
	beq _020451F8
	ldrb r0, [r0]
	cmp r0, #6
	moveq r9, #1
_020451F8:
	ldrb r0, [r8, #0x12]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r9, #0
	b _02045254
_02045214:
	cmp r1, #0x3a
	bne _02045254
	ldr r0, [r4]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesh r1, [r0, #8]
	cmpne r1, #0
	beq _02045254
	mov r0, r7
	bl FUN_0204a2c4
	cmp r0, #0
	beq _02045254
	ldrb r0, [r0]
	cmp r0, #7
	cmpeq r6, #1
	moveq r9, r5
_02045254:
	cmp r9, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r10, #0x6000
	ldr r0, [r0, #0x1ec]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	bne _0204528C
	bl _ZN8Graphics20IsMainBrightAdjustedEv
	cmp r0, #0
	beq _02045294
_0204528C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02045294:
	add r0, r10, #0x6100
	ldrsb r0, [r0, #0xe8]
	add r0, r10, r0, lsl #3
	add r0, r0, #0x6100
	ldrsb r0, [r0, #0xac]
	cmp r0, #0
	bne _020452D0
	add r0, r10, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	beq _020452D0
	ldr r1, [r0, #0x224]
	cmp r1, #2
	streq r5, [r0, #0x214]
	streq r5, [r0, #0x218]
_020452D0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020452D8: .word gLogicThink
_020452DC: .word gUtilGame
	arm_func_end FUN_02045124

	arm_func_start FUN_020452e0
FUN_020452e0: ; 0x020452E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x6000
	ldr r0, [r0, #0x1ec]
	mov r6, #0
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl _Z14GetCurrentModev
	cmp r0, #3
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x6000
	ldr r0, [r0, #0x1ec]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x83
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _020453A8 ; =0x020AF818
	ldrb r0, [r4]
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	bne _02045354
	bl _ZN8Graphics20IsMainBrightAdjustedEv
	cmp r0, #0
	beq _0204535C
_02045354:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204535C:
	add r0, r5, #0x6100
	ldrsb r0, [r0, #0xe8]
	add r0, r5, r0, lsl #3
	add r0, r0, #0x6100
	ldrsb r0, [r0, #0xac]
	cmp r0, #0
	bne _0204539C
	add r0, r5, #0x6000
	ldr r1, [r0, #0x210]
	cmp r1, #0
	beq _0204539C
	ldr r1, [r0, #0x224]
	cmp r1, #2
	moveq r1, #1
	streq r1, [r0, #0x214]
	streq r1, [r0, #0x218]
_0204539C:
	strb r6, [r4]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020453A8: .word unk_020AF818
	arm_func_end FUN_020452e0

	arm_func_start FUN_020453ac
FUN_020453ac: ; 0x020453AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_0203000c
	add r0, r4, #0x90
	bl FUN_02047ad4
	mov r0, r4
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020453ac

	.rodata
	.global unk_0208C384
unk_0208C384:
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00

	.data
	.global unk_0209005C
unk_0209005C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0209007C
unk_0209007C:
	.word FUN_02029d18
	.word FUN_020453ac
	.word FUN_02043c80
	.word _ZN14CScreenManager13startGraphicsEm
	.word _ZN8CManager7vFUN_10Ev
	.word FUN_020442d8
	.word FUN_02044320
	.word FUN_02043d80
	.word _ZN8CManager7vFUN_20Ev
	.word FUN_020442cc
	.word _ZN14CScreenManager11endGraphicsEm
	.word FUN_020442d4
	.word _ZN14CScreenManager20updateDisplayMappingEv
	.word FUN_020443a0
	.word _ZN14CScreenManager12transferMainEPv
	.word _ZN14CScreenManager11transferSubEPv
	.word _ZN14CScreenManager10signalMainEi
	.word _ZN14CScreenManager9signalSubEi
	.word _ZN14CScreenManager9stateMainEv
	.word _ZN14CScreenManager8stateSubEv
	.global unk_020900CC
unk_020900CC:
	.asciz "pic3d/common"
	.balign 4, 0
	.global unk_020900DC
unk_020900DC:
	.asciz "spr/efct/efct"
	.balign 4, 0
	.global unk_020900EC
unk_020900EC:
	.asciz "/data_iz/script/treasurebox.dat"
	.balign 4, 0

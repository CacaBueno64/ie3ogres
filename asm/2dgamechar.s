
	.include "/macros/function.inc"
	.include "/include/2dgamechar.inc"

    .text
	arm_func_start FUN_02056228
FUN_02056228: ; 0x02056228
	ldr r2, [r0, #4]
	cmp r2, #0
	cmpne r1, #0
	ble _02056244
	ldr r0, [r0, #8]
	cmp r1, r0
	ble _0205624C
_02056244:
	mov r0, #0
	bx lr
_0205624C:
	sub r0, r1, #1
	add r0, r2, r0, lsl #3
	bx lr
	arm_func_end FUN_02056228

	arm_func_start FUN_02056258
FUN_02056258: ; 0x02056258
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r7, r3
	mov r9, r1
	mov r6, #0
	mov r8, r2
	mov r1, r7
	mov r2, r6
	mov r10, r0
	bl FUN_0205649c
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
	mov r0, r10
	mov r1, r6
	mov r2, r11
	bl FUN_0205649c
	mov r5, r0
	mov r0, r10
	mov r1, r5
	bl FUN_02056228
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02056338 ; =g3DSpriteCtrl
	ldr r2, [r10, #0x20]
	ldr r0, [r0]
	mov r1, r9
	str r11, [sp]
	str r6, [sp, #4]
	mov r3, r8
	add r0, r0, #4
	str r6, [sp, #8]
	bl FUN_02058684
	mov r8, r0
	cmp r8, #0
	addle sp, sp, #0xc
	movle r0, r6
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02056338 ; =g3DSpriteCtrl
	mov r1, r8
	ldr r0, [r0]
	bl FUN_ov16_02116920
	mov r0, r10
	mov r1, r5
	bl FUN_02056520
	strh r8, [r4]
	str r7, [r4, #4]
	mov r0, r5
	str r11, [r10, #0x10]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02056338: .word g3DSpriteCtrl
	arm_func_end FUN_02056258

	arm_func_start FUN_0205633c
FUN_0205633c: ; 0x0205633C
	stmfd sp!, {r4, lr}
	ldr r1, _02056358 ; =0x0209072C
	mov r4, r0
	str r1, [r4]
	bl FUN_020563a4
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02056358: .word unk_0209072C
	arm_func_end FUN_0205633c

	arm_func_start FUN_0205635c
FUN_0205635c: ; 0x0205635C
	stmfd sp!, {r4, lr}
	ldr r1, _02056378 ; =0x0209072C
	mov r4, r0
	str r1, [r4]
	bl FUN_02056418
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02056378: .word unk_0209072C
	arm_func_end FUN_0205635c

	arm_func_start FUN_0205637c
FUN_0205637c: ; 0x0205637C
	stmfd sp!, {r4, lr}
	ldr r1, _020563A0 ; =0x0209072C
	mov r4, r0
	str r1, [r4]
	bl FUN_02056418
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020563A0: .word unk_0209072C
	arm_func_end FUN_0205637c

	arm_func_start FUN_020563a4
FUN_020563a4: ; 0x020563A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	mov r4, #0xc
	mov r2, r4
	add r1, r5, #0x14
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	bl MIi_CpuClearFast
	sub r0, r4, #0xd
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020563a4

	arm_func_start FUN_020563dc
FUN_020563dc: ; 0x020563DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r4, r2
	bl FUN_020563a4
	mov r0, r5, lsl #3
	mvn r1, #0
	bl _ZN10FileSystem13AllocateClearEii
	cmp r0, #0
	str r0, [r6, #4]
	moveq r0, #0
	strne r5, [r6, #8]
	strne r4, [r6, #0xc]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020563dc

	arm_func_start FUN_02056418
FUN_02056418: ; 0x02056418
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r7, [r8, #4]
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r5, #0
	ldr r4, _02056498 ; =g3DSpriteCtrl
	b _02056470
_0205643C:
	ldrh r1, [r7]
	cmp r1, #0
	beq _02056460
	ldr r0, [r4]
	bl FUN_ov16_02116910
	ldr r0, [r4]
	ldrh r1, [r7]
	add r0, r0, #4
	bl FUN_02058ee0
_02056460:
	strh r5, [r7]
	str r5, [r7, #4]
	add r6, r6, #1
	add r7, r7, #8
_02056470:
	ldr r0, [r8, #8]
	cmp r6, r0
	ble _0205643C
	ldr r0, [r8, #4]
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, r8
	bl FUN_02056684
	mov r0, r8
	bl FUN_020563a4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02056498: .word g3DSpriteCtrl
	arm_func_end FUN_02056418

	arm_func_start FUN_0205649c
FUN_0205649c: ; 0x0205649C
	ldr r3, [r0, #4]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0
	cmpeq r1, #0
	moveq r0, #0
	bxeq lr
	ldr r12, [r0, #8]
	mov r0, #1
	cmp r12, #1
	blt _020564E8
_020564CC:
	ldr r2, [r3, #4]
	cmp r2, r1
	bxeq lr
	add r0, r0, #1
	cmp r0, r12
	add r3, r3, #8
	ble _020564CC
_020564E8:
	mov r0, #0
	bx lr
	arm_func_end FUN_0205649c

	arm_func_start FUN_020564f0
FUN_020564f0: ; 0x020564F0
	stmfd sp!, {r3, lr}
	bl FUN_02056228
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _0205651C ; =g3DSpriteCtrl
	ldrh r1, [r0]
	ldr r0, [r2]
	add r0, r0, #4
	bl FUN_02058e30
	ldmfd sp!, {r3, pc}
_0205651C: .word g3DSpriteCtrl
	arm_func_end FUN_020564f0

	arm_func_start FUN_02056520
FUN_02056520: ; 0x02056520
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	bl FUN_02056228
	movs r6, r0
	beq _02056570
	ldrh r0, [r6]
	ldr r4, _02056578 ; =g3DSpriteCtrl
	ldrh r1, [r6]
	cmp r0, #0
	ldr r0, [r4]
	movne r5, #1
	bl FUN_ov16_02116910
	ldr r0, [r4]
	ldrh r1, [r6]
	add r0, r0, #4
	bl FUN_02058ee0
	mov r1, r6
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClearFast
_02056570:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02056578: .word g3DSpriteCtrl
	arm_func_end FUN_02056520

	arm_func_start FUN_0205657c
FUN_0205657c: ; 0x0205657C
	stmfd sp!, {r3, lr}
	bl FUN_02056228
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205657c

	arm_func_start FUN_02056594
FUN_02056594: ; 0x02056594
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #1
	mov r4, #1
	blt _020565E4
_020565C0:
	mov r0, r6
	mov r1, r4
	bl FUN_020564f0
	cmp r0, #1
	ldr r0, [r6, #8]
	add r4, r4, #1
	addeq r5, r5, #1
	cmp r4, r0
	ble _020565C0
_020565E4:
	cmp r5, #0
	moveq r0, #0
	streq r0, [r6, #0x10]
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02056594

	arm_func_start FUN_020565f8
FUN_020565f8: ; 0x020565F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, #0
	cmp r0, #1
	mov r4, #1
	blt _02056638
_02056614:
	mov r0, r6
	mov r1, r4
	bl FUN_02056520
	cmp r0, #0
	ldr r0, [r6, #8]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, r0
	ble _02056614
_02056638:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020565f8

	arm_func_start FUN_02056640
FUN_02056640: ; 0x02056640
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	str r0, [r4, #0x20]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02056640

	arm_func_start FUN_0205665c
FUN_0205665c: ; 0x0205665C
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x20]
	cmp r0, #0
	blt _0205667C
	bl _ZN10FileSystem14IsArchiveReadyEi
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_0205667C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205665c

	arm_func_start FUN_02056684
FUN_02056684: ; 0x02056684
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmltfd sp!, {r4, pc}
	bl _ZN10FileSystem12CloseArchiveEi
	mvn r0, #0
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02056684

	arm_func_start FUN_020566a8
FUN_020566a8: ; 0x020566A8
	ldr r2, [r0, #0x94]
	cmp r2, #0
	cmpne r1, #0
	ble _020566C4
	ldr r0, [r0, #0x98]
	cmp r1, r0
	ble _020566CC
_020566C4:
	mov r0, #0
	bx lr
_020566CC:
	sub r1, r1, #1
	mov r0, #0x18
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_020566a8

	arm_func_start FUN_020566dc
FUN_020566dc: ; 0x020566DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #1
	mov r7, r1
	mov r1, r4
	mov r8, r0
	mov r6, r2
	mov r5, #0
	bl FUN_020566a8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r8, #0x98]
	cmp r2, #1
	blt _02056730
_02056714:
	ldrb r1, [r7, r0]
	add r4, r4, #1
	add r0, r0, #0x18
	cmp r6, r1
	addeq r5, r5, #1
	cmp r4, r2
	ble _02056714
_02056730:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020566dc

	arm_func_start FUN_02056738
FUN_02056738: ; 0x02056738
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_020414fc
	mov r0, r4
	mov r1, #0x200
	bl FUN_02041518
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02056738

	arm_func_start FUN_02056754
FUN_02056754: ; 0x02056754
	ldr r12, _0205675C ; =FUN_02041618
	bx r12
_0205675C: .word FUN_02041618
	arm_func_end FUN_02056754

	arm_func_start _ZN8C2DGCharC1Ev
_ZN8C2DGCharC1Ev: ; 0x02056760
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _020567A4 ; =0x0209071C
	mov r4, r0
	ldr r12, _020567A8 ; =FUN_0205635c
	str r1, [r4]
	ldr r3, _020567AC ; =FUN_0205633c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x24
	str r12, [sp]
	bl __cxa_vec_ctor
	mov r0, r4
	bl _ZN8C2DGChar5resetEv
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020567A4: .word unk_0209071C
_020567A8: .word FUN_0205635c
_020567AC: .word FUN_0205633c
	arm_func_end _ZN8C2DGCharC1Ev

	arm_func_start FUN_020567b0
FUN_020567b0: ; 0x020567B0
	stmfd sp!, {r4, lr}
	ldr r1, _020567E0 ; =0x0209071C
	mov r4, r0
	str r1, [r4]
	bl FUN_020568a4
	ldr r3, _020567E4 ; =FUN_0205635c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x24
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020567E0: .word unk_0209071C
_020567E4: .word FUN_0205635c
	arm_func_end FUN_020567b0

	arm_func_start FUN_020567e8
FUN_020567e8: ; 0x020567E8
	stmfd sp!, {r4, lr}
	ldr r1, _02056820 ; =0x0209071C
	mov r4, r0
	str r1, [r4]
	bl FUN_020568a4
	ldr r3, _02056824 ; =FUN_0205635c
	add r0, r4, #4
	mov r1, #4
	mov r2, #0x24
	bl __cxa_vec_cleanup
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02056820: .word unk_0209071C
_02056824: .word FUN_0205635c
	arm_func_end FUN_020567e8

	arm_func_start _ZN8C2DGChar5resetEv
_ZN8C2DGChar5resetEv: ; 0x02056828
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, #0
	add r6, r4, #4
	mov r5, #0x24
_0205683C:
	mla r0, r7, r5, r6
	bl FUN_020563a4
	add r7, r7, #1
	cmp r7, #4
	blt _0205683C
	ldr r0, _0205689C ; =gConfig
	mov r2, #0
	ldr r1, _020568A0 ; =0x02090734
	str r2, [r4, #0x94]
	str r2, [r4, #0x98]
	str r2, [r4, #0x9c]
	str r2, [r4, #0xa0]
	str r2, [r4, #0xa4]
	bl _ZN6Config8getParamEPc
	str r0, [r4, #0xa8]
	cmp r0, #0
	moveq r0, #0xaa
	movne r1, r0, asr #4
	addne r0, r0, r1, lsr #27
	movne r0, r0, asr #5
	str r0, [r4, #0xa8]
	mov r0, #0
	str r0, [r4, #0xac]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205689C: .word gConfig
_020568A0: .word unk_02090734
	arm_func_end _ZN8C2DGChar5resetEv

	arm_func_start FUN_020568a4
FUN_020568a4: ; 0x020568A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020569c0
	mov r0, r4
	bl FUN_02057c38
	mov r0, r4
	bl _ZN8C2DGChar5resetEv
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020568a4

	arm_func_start FUN_020568c4
FUN_020568c4: ; 0x020568C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, [sp, #0x18]
	ldr r7, [sp, #0x20]
	mov r6, r0
	mov r4, r3
	add r0, r1, #3
	add r3, r7, #3
	mov r5, r2
	bic r2, r0, #3
	mov r1, r4
	add r0, r6, #0x28
	bic r7, r3, #3
	bl FUN_020563dc
	ldr r1, [sp, #0x1c]
	mov r2, r7
	add r0, r6, #4
	bl FUN_020563dc
	mov r7, #0x20
	mov r1, r4
	mov r2, r7
	add r0, r6, #0x70
	bl FUN_020563dc
	ldr r1, [sp, #0x1c]
	mov r2, r7
	add r0, r6, #0x4c
	bl FUN_020563dc
	mov r4, #0x18
	mul r1, r5, r4
	ldr r0, _020569B8 ; =gAllocator
	bl _ZN9Allocator8allocateEm
	ldr r7, _020569BC ; =g3DSpriteCtrl
	str r0, [r6, #0x94]
	ldr r0, [r7]
	mov r1, #3
	mov r2, r5, lsl #1
	add r0, r0, #4
	bl FUN_020596ec
	mov r1, r0
	ldr r0, [r6, #0x94]
	str r1, [r6, #0x9c]
	cmp r0, #0
	str r5, [r6, #0x98]
	cmpne r1, #0
	bgt _02056984
	mov r0, r6
	bl FUN_020568a4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02056984:
	mov r8, #1
	ldr r0, [r7]
	mov r2, r8
	bl FUN_ov16_021168f8
	mul r2, r5, r4
	ldr r1, [r6, #0x94]
	mov r0, #0
	bl MIi_CpuClearFast
	mov r0, r6
	mov r1, r5, lsl #1
	bl FUN_02056738
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020569B8: .word gAllocator
_020569BC: .word g3DSpriteCtrl
	arm_func_end FUN_020568c4

	arm_func_start FUN_020569c0
FUN_020569c0: ; 0x020569C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x94]
	cmp r1, #0
	beq _02056A20
	mov r7, #1
	mov r1, r7
	bl FUN_020566a8
	mov r6, r0
	ldr r5, _02056A80 ; =g3DSpriteCtrl
	b _02056A00
_020569EC:
	ldrh r1, [r6, #4]
	ldr r0, [r5]
	bl FUN_ov16_02116aa8
	add r7, r7, #1
	add r6, r6, #0x18
_02056A00:
	ldr r0, [r4, #0x98]
	cmp r7, r0
	ble _020569EC
	ldr r1, [r4, #0x94]
	ldr r0, _02056A84 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x94]
_02056A20:
	mov r7, #0
	add r6, r4, #4
	mov r5, #0x24
	b _02056A3C
_02056A30:
	mla r0, r7, r5, r6
	bl FUN_02056418
	add r7, r7, #1
_02056A3C:
	cmp r7, #4
	blt _02056A30
	ldr r1, [r4, #0x9c]
	cmp r1, #0
	ble _02056A74
	ldr r5, _02056A80 ; =g3DSpriteCtrl
	ldr r0, [r5]
	bl FUN_ov16_02116910
	ldr r0, [r5]
	ldr r1, [r4, #0x9c]
	add r0, r0, #4
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x9c]
_02056A74:
	mov r0, r4
	bl FUN_02056754
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02056A80: .word g3DSpriteCtrl
_02056A84: .word gAllocator
	arm_func_end FUN_020569c0

	arm_func_start FUN_02056a88
FUN_02056a88: ; 0x02056A88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r3, [r7, #0x94]
	mov r6, r1
	cmp r3, #0
	mov r5, r2
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #1
	mov r1, r4
	bl FUN_020566a8
	ldr r2, [r7, #0x98]
	cmp r2, #1
	blt _02056AE8
_02056AC0:
	ldrh r1, [r0, #6]
	cmp r1, r6
	ldreqb r1, [r0, #8]
	cmpeq r1, r5
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
	cmp r4, r2
	add r0, r0, #0x18
	ble _02056AC0
_02056AE8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02056a88

	arm_func_start FUN_02056af0
FUN_02056af0: ; 0x02056AF0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x18]
	mov r4, r2
	stmia sp, {r3, lr}
	ldr r12, [sp, #0x1c]
	mov r2, r1
	mov r3, r4
	mov r1, #0
	str r12, [sp, #8]
	bl FUN_02056b24
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_02056af0

	arm_func_start FUN_02056b24
FUN_02056b24: ; 0x02056B24
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x70
	mov r10, r2
	mov r5, r0
	mov r6, r10, lsl #0x10
	mov r4, r1
	mov r1, r6, lsr #0x10
	ldr r0, _02056DFC ; =gLogicThink
	add r2, sp, #8
	mov r6, r3
	mov r8, #0
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x70
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r4, #0
	mov r0, r5
	mov r1, r10
	mov r2, r6
	beq _02056B80
	bl FUN_02056a88
	b _02056BAC
_02056B80:
	bl FUN_02056a88
	movs r4, r0
	bne _02056BAC
	mov r0, r5
	mov r1, r8
	mov r2, r8
	bl FUN_02056a88
	movs r4, r0
	addeq sp, sp, #0x70
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02056BAC:
	mov r0, r5
	mov r1, r4
	bl FUN_020566a8
	movs r9, r0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _02056C14
	ldr r0, _02056DFC ; =gLogicThink
	mov r1, r7
	bl FUN_ov16_020ee064
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	mov r1, r7
	strneh r0, [r9, #0x10]
	ldr r0, _02056DFC ; =gLogicThink
	streqh r8, [r9, #0x10]
	bl FUN_ov16_020ee478
	cmp r0, #0
	ldrneh r0, [r0, #0x26]
	strneh r0, [r9, #0xe]
	streqh r8, [r9, #0xe]
_02056C14:
	mov r7, #1
	strb r7, [r9, #0x14]
	strb r7, [r9, #0x15]
	strb r7, [r9, #0x16]
	strb r7, [r9, #0x17]
	ldrh r0, [sp, #0x5c]
	ldr r1, [sp, #0x98]
	bl _ZN7Archive20GetOverworldHeadCodeEii
	mov r1, r0
	mov r2, r8
	add r0, r5, #0x28
	bl FUN_0205649c
	strb r0, [r9, #1]
	ldrh r0, [sp, #0x5e]
	bl _ZN7Archive24GetOverworldHeadPlttCodeEi
	mov r1, r0
	add r0, r5, #0x70
	mov r2, r8
	bl FUN_0205649c
	strb r0, [r9, #3]
	ldrb r0, [sp, #0x64]
	ldr r1, [sp, #0x90]
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl _ZN7Archive20GetOverworldBodyCodeEiiii
	mov r1, r0
	add r0, r5, #4
	mov r2, r8
	bl FUN_0205649c
	strb r0, [r9]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	bl _ZN7Archive20GetOverworldBodyCodeEii
	mov r1, r0
	add r0, r5, #0x4c
	mov r2, r8
	bl FUN_0205649c
	strb r0, [r9, #2]
	strh r10, [r9, #6]
	ldr r1, [sp, #0x90]
	strb r6, [r9, #8]
	ldr r0, [sp, #0x94]
	strh r1, [r9, #0xa]
	strb r0, [r9, #0xc]
	ldr r0, [sp, #0x98]
	strb r0, [r9, #0xd]
	ldrb r0, [sp, #0x5b]
	strb r0, [r9, #0x12]
	ldrh r0, [r9, #4]
	cmp r0, #0
	bne _02056DA4
	ldr r10, _02056E00 ; =g3DSpriteCtrl
	mov r6, #2
	ldr r0, [r10]
	mov r1, r6
	bl FUN_ov16_021169b0
	strh r0, [r9, #4]
	ldrh r1, [r9, #4]
	cmp r1, #0
	addeq sp, sp, #0x70
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r10]
	mov r2, r6
	bl FUN_ov16_021175dc
	ldr r0, [r5, #0xa0]
	ldrh r1, [r9, #4]
	orr r2, r0, #2
	ldr r0, [r10]
	mov r3, r7
	orr r2, r2, #0x200
	bl FUN_ov16_02116cb4
	sub r0, r4, #1
	mov r0, r0, lsl #1
	bl FUN_02041708
	mov r8, r0
	sub r0, r4, #1
	mov r0, r0, lsl #1
	bl FUN_020416d4
	mov r2, r7
	mov r3, r8
	str r0, [sp]
	ldr r0, [r10]
	ldrh r1, [r9, #4]
	bl FUN_ov16_02117160
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_02041708
	mov r7, r0
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_020416d4
	mov r2, r6
	mov r3, r7
	str r0, [sp]
	ldr r0, [r10]
	ldrh r1, [r9, #4]
	bl FUN_ov16_02117160
_02056DA4:
	ldrb r0, [sp, #0x64]
	mov r3, #0
	mov r2, #1
	cmp r0, #1
	bne _02056DD8
	ldr r0, [r5, #0xa4]
	cmp r0, #0
	mov r0, #0x1000
	bne _02056DD0
	rsb r0, r0, #0
	b _02056DD0
_02056DD0:
	stmia sp, {r0, r3}
	b _02056DE0
_02056DD8:
	str r3, [sp]
	str r3, [sp, #4]
_02056DE0:
	ldr r0, _02056E00 ; =g3DSpriteCtrl
	ldrh r1, [r9, #4]
	ldr r0, [r0]
	bl FUN_ov16_0211771c
	mov r0, r4
	add sp, sp, #0x70
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02056DFC: .word gLogicThink
_02056E00: .word g3DSpriteCtrl
	arm_func_end FUN_02056b24

	arm_func_start FUN_02056e04
FUN_02056e04: ; 0x02056E04
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, r2
	bl FUN_020566a8
	movs r7, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r7, #4]
	cmp r1, #0
	beq _02056E34
	ldr r0, _02056E90 ; =g3DSpriteCtrl
	ldr r0, [r0]
	bl FUN_ov16_02116aa8
_02056E34:
	cmp r4, #0
	beq _02056E7C
	mov r6, #0
	add r5, r8, #4
	mov r4, #0x24
	b _02056E74
_02056E4C:
	ldrb r2, [r7, r6]
	mov r0, r8
	mov r1, r6
	bl FUN_020566dc
	cmp r0, #1
	bgt _02056E70
	mla r0, r6, r4, r5
	ldrb r1, [r7, r6]
	bl FUN_02056520
_02056E70:
	add r6, r6, #1
_02056E74:
	cmp r6, #4
	blt _02056E4C
_02056E7C:
	mov r1, r7
	mov r0, #0
	mov r2, #0x18
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02056E90: .word g3DSpriteCtrl
	arm_func_end FUN_02056e04

	arm_func_start FUN_02056e94
FUN_02056e94: ; 0x02056E94
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x98]
	mov r5, r1
	mov r4, #1
	cmp r0, #1
	ldmltfd sp!, {r4, r5, r6, pc}
_02056EB0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02056e04
	ldr r0, [r6, #0x98]
	add r4, r4, #1
	cmp r4, r0
	ble _02056EB0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02056e94

	arm_func_start FUN_02056ed4
FUN_02056ed4: ; 0x02056ED4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x168
	mov r10, r0
	mov r1, r1, lsl #0x10
	add r7, sp, #0
	mov r9, r2
	ldr r0, _0205700C ; =gLogicThink
	mov r2, r7
	mov r1, r1, lsr #0x10
	mov r8, r3
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x168
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [sp, #0x54]
	ldr r1, [sp, #0x188]
	bl _ZN7Archive20GetOverworldHeadCodeEii
	mov r4, r0
	add r6, sp, #0x68
	ldr r1, _02057010 ; =0x02090744
	mov r0, r6
	mov r2, r4
	bl STD_TSPrintf
	mov r5, #2
	mov r3, r4
	add r0, r10, #0x28
	mov r1, r5
	mov r2, r6
	bl FUN_02056258
	ldrh r0, [sp, #0x56]
	bl _ZN7Archive24GetOverworldHeadPlttCodeEi
	mov r4, r0
	ldr r1, _02057014 ; =0x02090754
	mov r0, r6
	mov r2, r4
	bl STD_TSPrintf
	mov r3, r4
	mov r4, #3
	add r0, r10, #0x70
	mov r1, r4
	mov r2, r6
	bl FUN_02056258
	mov r0, r7
	mov r1, r9
	bl FUN_ov16_020f0af4
	mov r9, r0
	ldrb r0, [sp, #0x5c]
	ldr r3, [sp, #0x188]
	mov r1, r9
	mov r2, r8
	bl _ZN7Archive20GetOverworldBodyCodeEiiii
	mov r7, r0
	ldr r1, _02057018 ; =0x02090760
	mov r0, r6
	mov r2, r7
	bl STD_TSPrintf
	mov r1, r5
	mov r3, r7
	add r0, r10, #4
	mov r2, r6
	bl FUN_02056258
	mov r0, r9
	mov r1, r8
	bl _ZN7Archive20GetOverworldBodyCodeEii
	mov r5, r0
	ldr r1, _0205701C ; =0x02090770
	mov r0, r6
	mov r2, r5
	bl STD_TSPrintf
	add r0, r10, #0x4c
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_02056258
	mov r0, #1
	add sp, sp, #0x168
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205700C: .word gLogicThink
_02057010: .word unk_02090744
_02057014: .word unk_02090754
_02057018: .word unk_02090760
_0205701C: .word unk_02090770
	arm_func_end FUN_02056ed4

	arm_func_start FUN_02057020
FUN_02057020: ; 0x02057020
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x200
	add r4, sp, #0
	mov r6, #0
	mov r11, r0
	mov r0, r6
	mov r1, r4
	mov r2, #0x200
	bl MIi_CpuClearFast
	mov r5, #1
	mov r0, r11
	mov r1, r5
	bl FUN_020566a8
	cmp r0, #0
	addeq sp, sp, #0x200
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r11, #0x98]
	cmp r1, #1
	blt _020570A8
_02057070:
	mov r7, r6
_02057074:
	ldrb r2, [r0, r7]
	add r3, r4, r7, lsl #7
	add r7, r7, #1
	ldr r1, [r3, r2, lsl #2]
	cmp r7, #4
	add r1, r1, #1
	str r1, [r3, r2, lsl #2]
	blt _02057074
	ldr r1, [r11, #0x98]
	add r5, r5, #1
	cmp r5, r1
	add r0, r0, #0x18
	ble _02057070
_020570A8:
	mov r8, #0
	mov r10, r8
	add r5, r11, #4
_020570B4:
	mov r0, #0x24
	mul r6, r10, r0
	add r0, r11, r6
	ldr r7, [r0, #0xc]
	mov r9, #1
	cmp r7, #1
	blt _02057104
	add r0, sp, #0
	add r4, r0, r10, lsl #7
_020570D8:
	ldr r0, [r4, r9, lsl #2]
	cmp r0, #0
	bgt _020570F8
	mov r1, r9
	add r0, r5, r6
	bl FUN_02056520
	cmp r0, #0
	addne r8, r8, #1
_020570F8:
	add r9, r9, #1
	cmp r9, r7
	ble _020570D8
_02057104:
	add r10, r10, #1
	cmp r10, #4
	blt _020570B4
	mov r0, r8
	add sp, sp, #0x200
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02057020

	arm_func_start FUN_0205711c
FUN_0205711c: ; 0x0205711C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	mov r6, r0
	mov r8, r4
	add r7, r6, #4
	mov r5, #0x24
_02057134:
	mla r0, r8, r5, r7
	bl FUN_020565f8
	add r8, r8, #1
	cmp r8, #4
	add r4, r4, r0
	blt _02057134
	ldr r0, [r6, #0x94]
	cmp r0, #0
	beq _020571A4
	mov r5, #1
	mov r0, r6
	mov r1, r5
	bl FUN_020566a8
	ldr r1, [r6, #0x98]
	cmp r1, #1
	blt _020571A4
	mov r2, #0
	mov r3, r2
_0205717C:
	mov r1, r3
_02057180:
	strb r2, [r0, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _02057180
	ldr r1, [r6, #0x98]
	add r5, r5, #1
	cmp r5, r1
	add r0, r0, #0x18
	ble _0205717C
_020571A4:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205711c

	arm_func_start FUN_020571ac
FUN_020571ac: ; 0x020571AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r6, r7
	add r5, r0, #4
	mov r4, #0x24
_020571C0:
	mla r0, r6, r4, r5
	bl FUN_02056594
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, r0
	blt _020571C0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020571ac

	arm_func_start FUN_020571e0
FUN_020571e0: ; 0x020571E0
	stmfd sp!, {r3, lr}
	bl FUN_020566a8
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0, #4]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020571e0

	arm_func_start FUN_020571f8
FUN_020571f8: ; 0x020571F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_020566a8
	movs r2, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #4
	mov r0, #0x24
	mla r0, r4, r0, r1
	ldrb r1, [r2, r4]
	bl FUN_0205657c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020571f8

	arm_func_start FUN_0205722c
FUN_0205722c: ; 0x0205722C
	ldr r12, _02057234 ; =FUN_02041668
	bx r12
_02057234: .word FUN_02041668
	arm_func_end FUN_0205722c

	arm_func_start FUN_02057238
FUN_02057238: ; 0x02057238
	stmfd sp!, {r3, lr}
	bl FUN_02041760
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02057238

	arm_func_start FUN_02057250
FUN_02057250: ; 0x02057250
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r0
	bl FUN_02041780
	mov r4, #1
	mov r0, r6
	mov r1, r4
	bl FUN_020566a8
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, r4
	mov r8, #2
	ldr r7, _02057330 ; =g3DSpriteCtrl
	b _02057310
_02057290:
	sub r0, r4, #1
	mov r0, r0, lsl #1
	bl FUN_02041708
	sub r1, r4, #1
	mov r9, r0
	mov r0, r1, lsl #1
	bl FUN_020416d4
	mov r3, r9
	str r0, [sp]
	ldr r0, [r7]
	ldrh r1, [r5, #4]
	mov r2, r10
	bl FUN_ov16_02117160
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_02041708
	mov r9, r0
	sub r0, r4, #1
	mov r0, r0, lsl #1
	add r0, r0, #1
	bl FUN_020416d4
	mov r3, r9
	str r0, [sp]
	ldr r0, [r7]
	ldrh r1, [r5, #4]
	mov r2, r8
	bl FUN_ov16_02117160
	strb r10, [r5, #0x16]
	strb r10, [r5, #0x17]
	add r4, r4, #1
	add r5, r5, #0x18
_02057310:
	ldr r0, [r6, #0x98]
	cmp r4, r0
	ble _02057290
	mov r0, r6
	bl FUN_0205722c
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02057330: .word g3DSpriteCtrl
	arm_func_end FUN_02057250

	arm_func_start FUN_02057334
FUN_02057334: ; 0x02057334
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	mov r9, r1
	bl FUN_020566a8
	movs r6, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	ldreqb r0, [r6, #0x15]
	cmpeq r0, #0
	ldreqb r0, [r6, #0x16]
	cmpeq r0, #0
	ldreqb r0, [r6, #0x17]
	cmpeq r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	add r5, r10, #4
	mov r4, #0x24
	b _020573BC
_02057394:
	ldrb r1, [r6, r7]
	cmp r1, #0
	beq _020573B8
	mla r0, r7, r4, r5
	bl FUN_020564f0
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020573B8:
	add r7, r7, #1
_020573BC:
	cmp r7, #4
	blt _02057394
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _02057428
	ldrb r1, [r6, #1]
	add r0, r10, #0x28
	strb r1, [r6, #1]
	bl FUN_0205657c
	ldr r1, [r10, #0x9c]
	mov r0, r0, lsl #0x10
	str r1, [sp]
	ldr r4, _02057690 ; =g3DSpriteCtrl
	mov r3, r0, lsr #0x10
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, #1
	bl FUN_ov16_02117180
	mov r3, r9, lsl #1
	sub r3, r3, #2
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_0211726c
	mov r0, #0
	strb r0, [r6, #0x14]
_02057428:
	ldrb r0, [r6, #0x15]
	cmp r0, #0
	beq _02057490
	ldrb r1, [r6]
	add r0, r10, #4
	strb r1, [r6]
	bl FUN_0205657c
	ldr r1, [r10, #0x9c]
	mov r0, r0, lsl #0x10
	str r1, [sp]
	mov r5, #2
	ldr r4, _02057690 ; =g3DSpriteCtrl
	mov r3, r0, lsr #0x10
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02117180
	mov r3, r9, lsl #1
	sub r3, r3, #1
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_0211726c
	mov r0, #0
	strb r0, [r6, #0x15]
_02057490:
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _02057558
	ldrb r1, [r6, #3]
	add r0, r10, #0x70
	strb r1, [r6, #3]
	bl FUN_0205657c
	ldr r1, _02057690 ; =g3DSpriteCtrl
	mov r2, #0
	ldr r5, [r1]
	mov r1, r0
	add r0, r5, #4
	bl FUN_02059a78
	movs r4, r0
	beq _02057550
	mov r7, #0x20
	add r2, sp, #0x10
	mov r1, r7
	mov r3, #0
	add r0, r5, #4
	bl FUN_020594f4
	ldr r1, [sp, #0x10]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r6, #0x16]
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r2, r7
	bl MIi_CpuCopyFast
	ldr r1, _02057694 ; =gPalSkin2dFile
	ldr r0, [sp, #0x10]
	ldr r2, [r1]
	ldrb r1, [r6, #0x12]
	bl FUN_ov16_020f0d58
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, r9, lsl #1
	sub r1, r1, #2
	mov r1, r1, lsl #5
	str r1, [sp, #8]
	ldr r1, [r10, #0x9c]
	ldr r2, [sp, #0x10]
	add r0, r5, #4
	mov r3, r7
	bl FUN_020592d8
_02057550:
	mov r0, #0
	strb r0, [r6, #0x16]
_02057558:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	beq _02057684
	ldrb r1, [r6, #2]
	add r0, r10, #0x4c
	strb r1, [r6, #2]
	bl FUN_0205657c
	ldr r1, _02057690 ; =g3DSpriteCtrl
	mov r2, #0
	ldr r4, [r1]
	mov r1, r0
	add r0, r4, #4
	bl FUN_02059a78
	movs r5, r0
	beq _0205767C
	add r2, sp, #0x10
	mov r3, #0
	add r0, r4, #4
	mov r1, #0x20
	bl FUN_020594f4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xac]
	mov r7, #0
	cmp r0, #0
	beq _020575F0
	cmp r0, #1
	beq _020575FC
	cmp r0, #2
	moveq r0, r7
	streqh r0, [r6, #0xe]
	moveq r11, r7
	moveq r8, r7
	streqh r0, [r6, #0x10]
	b _02057604
_020575F0:
	ldrh r11, [r6, #0xe]
	ldrh r8, [r6, #0x10]
	b _02057604
_020575FC:
	ldrh r11, [r6, #0xe]
	mov r8, #0x17
_02057604:
	ldr r1, [sp, #0x10]
	mov r0, r5
	mov r2, #0x20
	bl MIi_CpuCopyFast
	ldr r0, _02057694 ; =gPalSkin2dFile
	str r8, [sp]
	ldr r1, [r0]
	ldr r0, _02057698 ; =gGlovesInfoFile
	str r1, [sp, #4]
	ldr r1, [r0]
	ldr r0, _0205769C ; =gShoesInfoFile
	str r1, [sp, #8]
	ldr r0, [r0]
	mov r3, r11
	str r0, [sp, #0xc]
	ldrb r1, [r6, #0x13]
	ldrb r2, [r6, #0x12]
	ldr r0, [sp, #0x10]
	bl FUN_ov16_020f0d7c
	mov r0, r9, lsl #1
	sub r0, r0, #1
	str r7, [sp]
	mov r1, r0, lsl #5
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r10, #0x9c]
	ldr r2, [sp, #0x10]
	add r0, r4, #4
	mov r3, #0x20
	bl FUN_020592d8
_0205767C:
	mov r0, #0
	strb r0, [r6, #0x17]
_02057684:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02057690: .word g3DSpriteCtrl
_02057694: .word gPalSkin2dFile
_02057698: .word gGlovesInfoFile
_0205769C: .word gShoesInfoFile
	arm_func_end FUN_02057334

	arm_func_start FUN_020576a0
FUN_020576a0: ; 0x020576A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x98]
	mov r5, #0
	cmp r0, #1
	mov r4, #1
	blt _020576E0
_020576BC:
	mov r0, r6
	mov r1, r4
	bl FUN_02057334
	cmp r0, #0
	ldr r0, [r6, #0x98]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, r0
	ble _020576BC
_020576E0:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020576a0

	arm_func_start FUN_020576e8
FUN_020576e8: ; 0x020576E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, #1
	mov r4, #2
	mov r9, r0
	mov r8, r1
	mov r6, r4
	mov r5, r7
	ldr r10, _02057754 ; =g3DSpriteCtrl
	b _02057744
_0205770C:
	mov r0, r9
	mov r1, r7
	bl FUN_020566a8
	ldrh r1, [r0, #4]
	cmp r8, #0
	ldr r0, [r10]
	beq _02057738
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02117598
	b _02057740
_02057738:
	mov r2, r4
	bl FUN_ov16_021175dc
_02057740:
	add r7, r7, #1
_02057744:
	ldr r0, [r9, #0x98]
	cmp r7, r0
	ble _0205770C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02057754: .word g3DSpriteCtrl
	arm_func_end FUN_020576e8

	arm_func_start FUN_02057758
FUN_02057758: ; 0x02057758
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_020566a8
	cmp r4, #0
	beq _02057788
	ldr r2, _020577A0 ; =g3DSpriteCtrl
	ldrh r1, [r0, #4]
	ldr r0, [r2]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_02117598
	ldmfd sp!, {r4, pc}
_02057788:
	ldr r2, _020577A0 ; =g3DSpriteCtrl
	ldrh r1, [r0, #4]
	ldr r0, [r2]
	mov r2, #2
	bl FUN_ov16_021175dc
	ldmfd sp!, {r4, pc}
_020577A0: .word g3DSpriteCtrl
	arm_func_end FUN_02057758

	arm_func_start FUN_020577a4
FUN_020577a4: ; 0x020577A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl FUN_020566a8
	movs r6, r0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020577FC ; =g3DSpriteCtrl
	ldrh r1, [r6, #4]
	mov r5, #1
	ldr r0, [r4]
	mov r2, r5
	mov r7, #0
	bl FUN_ov16_02117744
	cmp r0, #0
	beq _020577F4
	ldrh r1, [r6, #4]
	ldr r0, [r4]
	mov r2, #2
	bl FUN_ov16_02117744
	cmp r0, #0
	movne r7, r5
_020577F4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020577FC: .word g3DSpriteCtrl
	arm_func_end FUN_020577a4

	arm_func_start FUN_02057800
FUN_02057800: ; 0x02057800
	str r1, [r0, #0xa0]
	bx lr
	arm_func_end FUN_02057800

	arm_func_start FUN_02057808
FUN_02057808: ; 0x02057808
	str r1, [r0, #0xa4]
	bx lr
	arm_func_end FUN_02057808

	arm_func_start FUN_02057810
FUN_02057810: ; 0x02057810
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xa4]
	cmp r2, #0
	bne _02057828
	bl FUN_02057b90
	ldmfd sp!, {r3, pc}
_02057828:
	bl FUN_02057830
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02057810

	arm_func_start FUN_02057830
FUN_02057830: ; 0x02057830
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	mov r5, #1
	b _02057B6C
_02057844:
	mov r0, r10
	mov r1, r5
	bl FUN_020566a8
	movs r7, r0
	ldrneh r1, [r7, #6]
	cmpne r1, #0
	beq _02057B68
	ldr r4, _02057B80 ; =g2DAdventureLogic
	ldrb r2, [r7, #8]
	ldr r0, [r4]
	bl FUN_020554b0
	mov r1, r0
	ldr r0, [r4]
	bl FUN_020552cc
	mov r8, r0
	ldr r0, _02057B84 ; =g3DSpriteCtrl
	ldrh r1, [r7, #4]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_0211689c
	mov r11, r0
	ldr r0, _02057B84 ; =g3DSpriteCtrl
	mov r6, #2
	ldrh r1, [r7, #4]
	ldr r0, [r0]
	mov r2, r6
	bl FUN_ov16_0211689c
	mov r9, r0
	ldr r0, _02057B84 ; =g3DSpriteCtrl
	ldrh r1, [r7, #4]
	ldr r0, [r0]
	bl FUN_ov16_0211685c
	cmp r8, #0
	cmpne r0, #0
	beq _02057B68
	bl FUN_ov16_02114bf8
	mov r4, r0
	mov r0, r8
	bl FUN_020543f4
	cmp r4, r0
	beq _02057924
	mov r0, r8
	bl FUN_020543f4
	cmp r0, #0
	ldrh r1, [r7, #4]
	bne _02057910
	ldr r0, _02057B84 ; =g3DSpriteCtrl
	mov r2, r6
	ldr r0, [r0]
	bl FUN_ov16_021175dc
	b _02057924
_02057910:
	ldr r0, _02057B84 ; =g3DSpriteCtrl
	mov r2, r6
	ldr r0, [r0]
	mov r3, #1
	bl FUN_ov16_02117598
_02057924:
	mov r0, r8
	ldr r4, _02057B84 ; =g3DSpriteCtrl
	bl FUN_020543f4
	cmp r0, #0
	beq _02057B68
	ldr r0, [r8, #0x60]
	bl FUN_02055bf8
	ldrsb r1, [r8, #0x64]
	cmp r11, #0
	add r6, r1, r0, lsl #3
	ldrnesh r1, [r11, #0x10]
	movne r0, #0
	cmpne r1, r6
	beq _02057984
	ldrb r1, [r8, #0x65]
	mov r3, r6, lsl #0x10
	mov r2, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117414
_02057984:
	cmp r9, #0
	ldrnesh r0, [r9, #0x10]
	mov r1, #1
	cmpne r0, r6
	beq _020579C0
	ldrb r0, [r8, #0x65]
	mov r2, r6, lsl #0x10
	mov r3, r2, asr #0x10
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r1}
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	mov r2, #2
	bl FUN_ov16_02117414
_020579C0:
	ldrh r1, [r7, #4]
	ldrb r2, [r8, #0x68]
	ldr r0, [r4]
	bl FUN_ov16_0211748c
	mov r3, #2
	mov r1, #6
	mov r0, #0xd
	str r1, [sp, #0x10]
	str r3, [sp, #0xc]
	str r0, [sp, #0x14]
	mov r6, #0
	add r1, sp, #0x18
	b _02057A04
_020579F4:
	add r2, r6, #8
	add r0, r6, #1
	strb r2, [r1, r6]
	and r6, r0, #0xff
_02057A04:
	cmp r6, r3
	blt _020579F4
	mov r1, #0
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	b _02057A34
_02057A20:
	add r9, r1, #0xa
	add r6, r3, r1
	add r1, r1, #1
	strb r9, [r2, r6]
	and r1, r1, #0xff
_02057A34:
	cmp r1, r0
	blt _02057A20
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r11, #0
	add r3, r1, r0
	ldr r0, [sp, #0x14]
	add r2, sp, #0x18
	b _02057A6C
_02057A58:
	add r9, r11, #0x31
	add r6, r11, r3
	add r1, r11, #1
	strb r9, [r2, r6]
	and r11, r1, #0xff
_02057A6C:
	cmp r11, r0
	blt _02057A58
	cmp r5, #0x15
	bhi _02057A90
	add r0, sp, #0x18
	ldrb r2, [r0, r5]
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	bl FUN_ov16_021177c4
_02057A90:
	ldrb r0, [r8, #0xa7]
	mov r6, #0x800
	ldrh r1, [r7, #4]
	cmp r0, #2
	mov r3, #1
	ldr r0, [r4]
	movne r3, #0
	mov r2, r6
	bl FUN_ov16_02116cb4
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	ldr r2, [r8, #0x88]
	bl FUN_ov16_02117770
	ldr r1, [r8, #0x8c]
	ldr r0, [r8, #0x98]
	add r0, r1, r0
	str r0, [sp]
	ldr r3, [r8, #0x84]
	ldr r2, [r8, #0x90]
	ldrh r1, [r7, #4]
	add r2, r3, r2
	ldr r9, [r8, #0x88]
	ldr r3, [r8, #0x94]
	ldr r0, [r4]
	add r3, r9, r3
	bl FUN_ov16_021176c4
	ldr r0, _02057B88 ; =0x020A9C40
	bl FUN_02046358
	cmp r0, #0
	bne _02057B58
	ldr r0, _02057B8C ; =gCameraController
	add r1, r8, #0x84
	ldr r9, [r0]
	mov r0, r9
	bl FUN_ov16_020f81a4
	mov r8, r0
	mov r0, r9
	bl FUN_ov16_020f7c44
	mov r1, r0
	mov r0, r8
	bl FX_Div
	ldrh r1, [r7, #4]
	ldr r3, [r10, #0xa8]
	smull r2, r0, r3, r0
	adds r2, r2, r6
	adc r0, r0, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	ldr r0, [r4]
	b _02057B64
_02057B58:
	ldrh r1, [r7, #4]
	ldr r0, [r4]
	ldr r2, [r10, #0xa8]
_02057B64:
	bl FUN_ov16_02117818
_02057B68:
	add r5, r5, #1
_02057B6C:
	ldr r0, [r10, #0x98]
	cmp r5, r0
	ble _02057844
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02057B80: .word g2DAdventureLogic
_02057B84: .word g3DSpriteCtrl
_02057B88: .word unk_020A9C40
_02057B8C: .word gCameraController
	arm_func_end FUN_02057830

	arm_func_start FUN_02057b90
FUN_02057b90: ; 0x02057B90
	bx lr
	arm_func_end FUN_02057b90

	arm_func_start FUN_02057b94
FUN_02057b94: ; 0x02057B94
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _02057BD4 ; =0x0209077C
	add r0, r4, #4
	bl FUN_02056640
	ldr r1, _02057BD8 ; =0x0209078C
	add r0, r4, #0x28
	bl FUN_02056640
	ldr r1, _02057BDC ; =0x0209079C
	add r0, r4, #0x4c
	bl FUN_02056640
	ldr r1, _02057BE0 ; =0x020907AC
	add r0, r4, #0x70
	bl FUN_02056640
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02057BD4: .word unk_0209077C
_02057BD8: .word unk_0209078C
_02057BDC: .word unk_0209079C
_02057BE0: .word unk_020907AC
	arm_func_end FUN_02057b94

	arm_func_start FUN_02057be4
FUN_02057be4: ; 0x02057BE4
	stmfd sp!, {r3, lr}
	bl FUN_02057b94
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02057be4

	arm_func_start FUN_02057bf4
FUN_02057bf4: ; 0x02057BF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #4
	mov r4, #0x24
_02057C04:
	mla r0, r6, r4, r5
	bl FUN_0205665c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #4
	blt _02057C04
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02057bf4

	arm_func_start FUN_02057c2c
FUN_02057c2c: ; 0x02057C2C
	ldr r12, _02057C34 ; =FUN_02057bf4
	bx r12
_02057C34: .word FUN_02057bf4
	arm_func_end FUN_02057c2c

	arm_func_start FUN_02057c38
FUN_02057c38: ; 0x02057C38
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #4
	mov r4, #0x24
_02057C48:
	mla r0, r6, r4, r5
	bl FUN_02056684
	add r6, r6, #1
	cmp r6, #4
	blt _02057C48
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02057c38

	arm_func_start FUN_02057c60
FUN_02057c60: ; 0x02057C60
	ldr r12, _02057C68 ; =FUN_02057c38
	bx r12
_02057C68: .word FUN_02057c38
	arm_func_end FUN_02057c60

	arm_func_start FUN_02057c6c
FUN_02057c6c: ; 0x02057C6C
	ldrh r1, [r0, #0xc]
	cmp r1, #0
	ldreqb r0, [r0, #0xf]
	cmpeq r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02057c6c

	arm_func_start FUN_02057c88
FUN_02057c88: ; 0x02057C88
	ldrsh r2, [r0, #0x10]
	mov r1, r1, lsl #0x10
	add r1, r2, r1, asr #16
	strh r1, [r0, #0x10]
	ldrsh r1, [r0, #0x10]
	cmp r1, #0
	movlt r1, #0
	strlth r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_02057c88

	arm_func_start FUN_02057cac
FUN_02057cac: ; 0x02057CAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r1, #0x34
	mul r0, r5, r1
	add r0, r0, #3
	bic r0, r0, #3
	sub r1, r1, #0x35
	bl _ZN10FileSystem13AllocateClearEii
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_02057d08
	mov r0, #0
	str r4, [r6]
	strh r5, [r6, #4]
	strh r0, [r6, #6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02057cac

	arm_func_start FUN_02057d08
FUN_02057d08: ; 0x02057D08
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02057D20
	bl _ZN10FileSystem10DeallocateEPv
_02057D20:
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02057d08

	arm_func_start FUN_02057d2c
FUN_02057d2c: ; 0x02057D2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	movne r0, #0
	strne r0, [r6]
	ldr r4, [r7]
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #4]
	mov r5, #0
	cmp r0, #0
	ble _02057D94
_02057D60:
	mov r0, r4
	bl FUN_02057c6c
	cmp r0, #0
	beq _02057D80
	cmp r6, #0
	strne r4, [r6]
	add r0, r5, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02057D80:
	ldrsh r0, [r7, #4]
	add r5, r5, #1
	add r4, r4, #0x34
	cmp r5, r0
	blt _02057D60
_02057D94:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02057d2c

	arm_func_start FUN_02057d9c
FUN_02057d9c: ; 0x02057D9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	add r5, sp, #0
	mov r8, r1
	mov r4, #0x28
	mov r7, r2
	mov r1, r5
	mov r2, r4
	mov r0, #0
	mov r6, r3
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r8
	bl STD_CopyString
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	str r6, [sp, #0x24]
	bl _ZN10FileSystem9CalcCRC32EPKvm
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02057d9c

	arm_func_start FUN_02057df0
FUN_02057df0: ; 0x02057DF0
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_02057d9c
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02057df0

	arm_func_start FUN_02057e10
FUN_02057e10: ; 0x02057E10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, [sp, #0x18]
	mov r6, r0
	cmp r5, #0
	movne r0, #0
	strne r0, [r5]
	ldr r0, [r6]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_02057d9c
	ldrsh r1, [r6, #4]
	mov r4, r0
	ldr r7, [r6]
	cmp r1, #0
	mov r8, #0
	ble _02057E94
_02057E58:
	mov r0, r7
	bl FUN_02057c6c
	cmp r0, #0
	ldreq r0, [r7]
	cmpeq r4, r0
	bne _02057E80
	cmp r5, #0
	strne r7, [r5]
	add r0, r8, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02057E80:
	ldrsh r0, [r6, #4]
	add r8, r8, #1
	add r7, r7, #0x34
	cmp r8, r0
	blt _02057E58
_02057E94:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02057e10

	arm_func_start FUN_02057e9c
FUN_02057e9c: ; 0x02057E9C
	cmp r1, #0
	ble _02057EB0
	ldrsh r2, [r0, #4]
	cmp r1, r2
	ble _02057EB8
_02057EB0:
	mov r0, #0
	bx lr
_02057EB8:
	ldr r2, [r0]
	sub r1, r1, #1
	mov r0, #0x34
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_02057e9c

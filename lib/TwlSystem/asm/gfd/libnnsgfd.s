
	.include "asm/macros/function.inc"

	.text
	arm_func_start AllocTexVram_
AllocTexVram_: ; 0x02019F10
	mov r0, #0
	bx lr
	arm_func_end AllocTexVram_

	arm_func_start FreeTexVram_
FreeTexVram_: ; 0x02019F18
	mvn r0, #0
	bx lr
	arm_func_end FreeTexVram_

	arm_func_start AllocPlttVram_
AllocPlttVram_: ; 0x02019F20
	mov r0, #0
	bx lr
	arm_func_end AllocPlttVram_

	arm_func_start FreePlttVram_
FreePlttVram_: ; 0x02019F28
	mvn r0, #0
	bx lr
	arm_func_end FreePlttVram_

	arm_func_start TryToMergeBlockRegion_
TryToMergeBlockRegion_: ; 0x02019F30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, [r0]
	mov lr, #0
	cmp r3, #0
	beq _0201A00C
	mov r8, lr
	mov r4, lr
_02019F4C:
	ldr r6, [r3]
	ldr r5, [r2, #4]
	ldr r12, [r3, #0xc]
	cmp r6, r5
	bne _02019FA8
	ldr r5, [r3, #4]
	orr lr, lr, #1
	add r5, r6, r5
	str r5, [r2, #4]
	ldr r6, [r3, #8]
	ldr r5, [r3, #0xc]
	cmp r6, #0
	strne r5, [r6, #0xc]
	streq r5, [r0]
	cmp r5, #0
	strne r6, [r5, #8]
	ldr r5, [r1]
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r1]
	str r5, [r3, #0xc]
	str r8, [r3, #8]
	str r3, [r1]
_02019FA8:
	ldr r7, [r3]
	ldr r5, [r3, #4]
	ldr r6, [r2]
	add r5, r7, r5
	cmp r6, r5
	bne _0201A000
	str r7, [r2]
	ldr r6, [r3, #8]
	ldr r5, [r3, #0xc]
	cmp r6, #0
	strne r5, [r6, #0xc]
	streq r5, [r0]
	cmp r5, #0
	strne r6, [r5, #8]
	ldr r5, [r1]
	orr lr, lr, #1
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r1]
	str r5, [r3, #0xc]
	str r4, [r3, #8]
	str r3, [r1]
_0201A000:
	mov r3, r12
	cmp r12, #0
	bne _02019F4C
_0201A00C:
	mov r0, lr
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end TryToMergeBlockRegion_

	arm_func_start NNSi_GfdInitLnkVramMan
NNSi_GfdInitLnkVramMan: ; 0x0201A014
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end NNSi_GfdInitLnkVramMan

	arm_func_start NNSi_GfdInitLnkVramBlockPool
NNSi_GfdInitLnkVramBlockPool: ; 0x0201A020
	stmfd sp!, {r3, lr}
	subs lr, r1, #1
	mov r12, #0
	beq _0201A050
_0201A030:
	add r3, r12, #1
	add r2, r0, r12, lsl #4
	add r12, r0, r3, lsl #4
	str r12, [r2, #0xc]
	mov r12, r3
	str r2, [r2, #0x18]
	cmp r3, lr
	blo _0201A030
_0201A050:
	mov r2, #0
	str r2, [r0, #8]
	add r1, r0, r1, lsl #4
	str r2, [r1, #-4]
	ldmfd sp!, {r3, pc}
	arm_func_end NNSi_GfdInitLnkVramBlockPool

	arm_func_start NNSi_GfdAddNewFreeBlock
NNSi_GfdAddNewFreeBlock: ; 0x0201A064
	stmfd sp!, {r3, lr}
	ldr lr, [r1]
	cmp lr, #0
	ldrne r12, [lr, #0xc]
	strne r12, [r1]
	cmp lr, #0
	beq _0201A0B8
	stmia lr, {r2, r3}
	mov r1, #0
	str r1, [lr, #8]
	str r1, [lr, #0xc]
	ldr r1, [r0]
	cmp r1, #0
	strne lr, [r1, #8]
	ldr r2, [r0]
	mov r1, #0
	str r2, [lr, #0xc]
	str r1, [lr, #8]
	str lr, [r0]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0201A0B8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NNSi_GfdAddNewFreeBlock

	arm_func_start NNSi_GfdAllocLnkVram
NNSi_GfdAllocLnkVram: ; 0x0201A0C0
	stmfd sp!, {r3, lr}
	mov r12, #0
	str r12, [sp]
	bl NNSi_GfdAllocLnkVramAligned
	ldmfd sp!, {r3, pc}
	arm_func_end NNSi_GfdAllocLnkVram

	arm_func_start NNSi_GfdAllocLnkVramAligned
NNSi_GfdAllocLnkVramAligned: ; 0x0201A0D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r7, [r0]
	ldr r9, [sp, #0x28]
	cmp r7, #0
	mov r6, #0
	beq _0201A13C
	sub r12, r9, #1
	mvn r8, r12
	mov r11, r6
_0201A0F8:
	cmp r9, #1
	ldrls lr, [r7]
	movls r5, r11
	movls r4, r3
	bls _0201A120
	ldr r5, [r7]
	add r4, r5, r12
	and lr, r8, r4
	sub r5, lr, r5
	add r4, r3, r5
_0201A120:
	ldr r10, [r7, #4]
	cmp r10, r4
	movhs r6, r7
	bhs _0201A13C
	ldr r7, [r7, #0xc]
	cmp r7, #0
	bne _0201A0F8
_0201A13C:
	cmp r6, #0
	beq _0201A200
	cmp r5, #0
	beq _0201A19C
	ldr r3, [r1]
	cmp r3, #0
	ldrne r7, [r3, #0xc]
	strne r7, [r1]
	cmp r3, #0
	beq _0201A200
	ldr r7, [r6]
	str r7, [r3]
	str r5, [r3, #4]
	mov r5, #0
	str r5, [r3, #8]
	str r5, [r3, #0xc]
	ldr r5, [r0]
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r0]
	str r5, [r3, #0xc]
	mov r5, #0
	str r5, [r3, #8]
	str r3, [r0]
_0201A19C:
	ldr r3, [r6, #4]
	subs r3, r3, r4
	str r3, [r6, #4]
	ldr r3, [r6]
	add r3, r3, r4
	str r3, [r6]
	bne _0201A1F4
	ldr r4, [r6, #8]
	ldr r3, [r6, #0xc]
	cmp r4, #0
	strne r3, [r4, #0xc]
	streq r3, [r0]
	cmp r3, #0
	strne r4, [r3, #8]
	ldr r0, [r1]
	cmp r0, #0
	strne r6, [r0, #8]
	ldr r0, [r1]
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [r6, #8]
	str r6, [r1]
_0201A1F4:
	str lr, [r2]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0201A200:
	mov r0, #0
	str r0, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NNSi_GfdAllocLnkVramAligned

	arm_func_start NNSi_GfdMergeAllFreeBlocks
NNSi_GfdMergeAllFreeBlocks: ; 0x0201A20C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r5, [r7]
	mov r6, r1
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, sp, #0
_0201A230:
	ldr r1, [r5]
	mov r0, r7
	str r1, [sp]
	ldr r3, [r5]
	ldr r2, [r5, #4]
	mov r1, r6
	add r3, r3, r2
	mov r2, r4
	str r3, [sp, #4]
	bl TryToMergeBlockRegion_
	cmp r0, #0
	ldreq r5, [r5, #0xc]
	beq _0201A280
	ldr r0, [sp]
	str r0, [r5]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #4]
	ldr r5, [r7]
_0201A280:
	cmp r5, #0
	bne _0201A230
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_GfdMergeAllFreeBlocks

	arm_func_start NNSi_GfdFreeLnkVram
NNSi_GfdFreeLnkVram: ; 0x0201A290
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r3, r2, r3
	str r2, [sp]
	add r2, sp, #0
	mov r5, r1
	str r3, [sp, #4]
	mov r4, r0
	bl TryToMergeBlockRegion_
	ldr r3, [r5]
	cmp r3, #0
	ldrne r0, [r3, #0xc]
	strne r0, [r5]
	cmp r3, #0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	str r1, [r3]
	ldr r2, [sp, #4]
	ldr r1, [sp]
	sub r1, r2, r1
	str r1, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #0xc]
	ldr r0, [r4]
	cmp r0, #0
	strne r3, [r0, #8]
	ldr r1, [r4]
	mov r0, #0
	str r1, [r3, #0xc]
	str r0, [r3, #8]
	str r3, [r4]
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_GfdFreeLnkVram

	arm_func_start NNS_GfdGetLnkTexVramManagerWorkSize
NNS_GfdGetLnkTexVramManagerWorkSize: ; 0x0201A320
	mov r0, r0, lsl #4
	bx lr
	arm_func_end NNS_GfdGetLnkTexVramManagerWorkSize

	arm_func_start NNS_GfdInitLnkTexVramManager
NNS_GfdInitLnkTexVramManager: ; 0x0201A328
	stmfd sp!, {r3, lr}
	ldr r12, _0201A36C ; =mgr_0209776C
	str r0, [r12, #0xc]
	str r1, [r12, #0x10]
	str r2, [r12, #0x14]
	str r3, [r12, #0x18]
	bl NNS_GfdResetLnkTexVramState
	ldr r0, [sp, #8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, _0201A370 ; =NNS_GfdAllocLnkTexVram
	ldr r1, _0201A374 ; =NNS_GfdDefaultFuncAllocTexVram
	ldr r2, _0201A378 ; =NNS_GfdFreeLnkTexVram
	ldr r0, _0201A37C ; =NNS_GfdDefaultFuncFreeTexVram
	str r3, [r1]
	str r2, [r0]
	ldmfd sp!, {r3, pc}
_0201A36C: .word mgr_0209776C
_0201A370: .word NNS_GfdAllocLnkTexVram
_0201A374: .word NNS_GfdDefaultFuncAllocTexVram
_0201A378: .word NNS_GfdFreeLnkTexVram
_0201A37C: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_GfdInitLnkTexVramManager

	arm_func_start NNS_GfdAllocLnkTexVram
NNS_GfdAllocLnkTexVram: ; 0x0201A380
	stmfd sp!, {r3, r4, r5, lr}
	cmp r0, #0
	moveq r5, #0x10
	addne r0, r0, #0xf
	bicne r5, r0, #0xf
	ldr r0, _0201A3F4 ; =0x0007FFF0
	mov r4, r1
	cmp r5, r0
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	add r2, sp, #0
	beq _0201A3BC
	ldr r0, _0201A3F8 ; =0x02097770
	b _0201A3C0
_0201A3BC:
	ldr r0, _0201A3FC ; =mgr_0209776C
_0201A3C0:
	ldr r1, _0201A400 ; =0x02097774
	mov r3, r5
	bl NNSi_GfdAllocLnkVram
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	mov r1, r5, lsr #4
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	orr r0, r0, r4, lsl #31
	ldmfd sp!, {r3, r4, r5, pc}
_0201A3F4: .word 0x0007FFF0
_0201A3F8: .word unk_02097770
_0201A3FC: .word mgr_0209776C
_0201A400: .word unk_02097774
	arm_func_end NNS_GfdAllocLnkTexVram

	arm_func_start NNS_GfdFreeLnkTexVram
NNS_GfdFreeLnkTexVram: ; 0x0201A404
	stmfd sp!, {r3, lr}
	ldr r1, _0201A460 ; =0x7FFF0000
	mov r2, r0, lsl #0x10
	and r1, r0, r1
	mov r1, r1, lsr #0x10
	and r0, r0, #0x80000000
	mov r2, r2, lsr #0xd
	movs r3, r1, lsl #4
	mov r0, r0, lsr #0x1f
	beq _0201A458
	cmp r0, #0
	beq _0201A43C
	ldr r0, _0201A464 ; =0x02097770
	b _0201A440
_0201A43C:
	ldr r0, _0201A468 ; =mgr_0209776C
_0201A440:
	ldr r1, _0201A46C ; =0x02097774
	bl NNSi_GfdFreeLnkVram
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r3, pc}
_0201A458:
	mov r0, #2
	ldmfd sp!, {r3, pc}
_0201A460: .word 0x7FFF0000
_0201A464: .word unk_02097770
_0201A468: .word mgr_0209776C
_0201A46C: .word unk_02097774
	arm_func_end NNS_GfdFreeLnkTexVram

	arm_func_start NNS_GfdResetLnkTexVramState
NNS_GfdResetLnkTexVramState: ; 0x0201A470
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r5, _0201A674 ; =0x0208BF80
	add r4, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	mov r12, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _0201A678 ; =mgr_0209776C
	ldr r4, _0201A67C ; =0x02097774
	ldr r1, [r0, #0x10]
	ldr r2, [r0, #0xc]
	add r0, r1, r1, lsr #1
	sub r0, r2, r0
	mov r5, r1, lsr #1
	mov r6, #0
	mov r2, #0xc
_0201A4C0:
	cmp r6, #0
	beq _0201A4D0
	cmp r6, #2
	bne _0201A50C
_0201A4D0:
	mul r3, r6, r2
	ldr r7, [r12, r3]
	add lr, r12, r3
	cmp r7, #0
	cmpne r1, #0
	beq _0201A50C
	ldr r3, [lr, #8]
	cmp r7, r1
	movhi r7, r1
	add r3, r3, r7
	str r3, [lr, #8]
	ldr r3, [lr]
	sub r1, r1, r7
	sub r3, r3, r7
	str r3, [lr]
_0201A50C:
	add r6, r6, #1
	cmp r6, #4
	blo _0201A4C0
	ldr r1, [sp, #0xc]
	mov r7, #0
	sub r1, r1, r5
	str r1, [sp, #0xc]
	add r3, sp, #0
	mov r1, #0xc
_0201A530:
	mul r2, r7, r1
	ldr r12, [r3, r2]
	add r6, r3, r2
	cmp r12, #0
	cmpne r0, #0
	beq _0201A56C
	ldr r2, [r6, #4]
	cmp r12, r0
	movhi r12, r0
	add r2, r2, r12
	str r2, [r6, #4]
	ldr r2, [r6]
	sub r0, r0, r12
	sub r2, r2, r12
	str r2, [r6]
_0201A56C:
	add r7, r7, #1
	cmp r7, #4
	blo _0201A530
	ldr r0, _0201A680 ; =mgr_0209776C
	bl NNSi_GfdInitLnkVramMan
	ldr r7, _0201A684 ; =0x02097770
	mov r0, r7
	bl NNSi_GfdInitLnkVramMan
	ldr r6, _0201A678 ; =mgr_0209776C
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x14]
	mov r1, r1, lsr #4
	bl NNSi_GfdInitLnkVramBlockPool
	str r0, [r6, #8]
	ldr r6, [sp, #8]
	cmp r6, #0
	beq _0201A5C4
	ldr r1, _0201A67C ; =0x02097774
	mov r0, r7
	mov r3, r6
	mov r2, #0
	bl NNSi_GfdAddNewFreeBlock
_0201A5C4:
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _0201A5E0
	ldr r0, _0201A680 ; =mgr_0209776C
	ldr r1, _0201A67C ; =0x02097774
	mov r2, r6
	bl NNSi_GfdAddNewFreeBlock
_0201A5E0:
	ldr r6, [sp, #0x20]
	cmp r6, #0
	beq _0201A600
	ldr r0, _0201A684 ; =0x02097770
	ldr r1, _0201A67C ; =0x02097774
	mov r3, r6
	mov r2, #0x40000
	bl NNSi_GfdAddNewFreeBlock
_0201A600:
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _0201A61C
	ldr r0, _0201A680 ; =mgr_0209776C
	ldr r1, _0201A67C ; =0x02097774
	add r2, r6, #0x40000
	bl NNSi_GfdAddNewFreeBlock
_0201A61C:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _0201A638
	ldr r0, _0201A680 ; =mgr_0209776C
	ldr r1, _0201A67C ; =0x02097774
	mov r2, #0x60000
	bl NNSi_GfdAddNewFreeBlock
_0201A638:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0201A654
	ldr r0, _0201A680 ; =mgr_0209776C
	ldr r1, _0201A67C ; =0x02097774
	add r2, r5, #0x20000
	bl NNSi_GfdAddNewFreeBlock
_0201A654:
	ldr r0, _0201A680 ; =mgr_0209776C
	mov r1, r4
	bl NNSi_GfdMergeAllFreeBlocks
	ldr r0, _0201A684 ; =0x02097770
	mov r1, r4
	bl NNSi_GfdMergeAllFreeBlocks
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0201A674: .word unk_0208BF80
_0201A678: .word mgr_0209776C
_0201A67C: .word unk_02097774
_0201A680: .word mgr_0209776C
_0201A684: .word unk_02097770
	arm_func_end NNS_GfdResetLnkTexVramState

	arm_func_start NNS_GfdGetLnkPlttVramManagerWorkSize
NNS_GfdGetLnkPlttVramManagerWorkSize: ; 0x0201A688
	mov r0, r0, lsl #4
	bx lr
	arm_func_end NNS_GfdGetLnkPlttVramManagerWorkSize

	arm_func_start NNS_GfdInitLnkPlttVramManager
NNS_GfdInitLnkPlttVramManager: ; 0x0201A690
	stmfd sp!, {r4, lr}
	ldr r12, _0201A6D0 ; =mgr_02097788
	mov r4, r3
	str r0, [r12, #8]
	str r1, [r12, #0xc]
	str r2, [r12, #0x10]
	bl NNS_GfdResetLnkPlttVramState
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, _0201A6D4 ; =NNS_GfdAllocLnkPlttVram
	ldr r1, _0201A6D8 ; =NNS_GfdDefaultFuncAllocPlttVram
	ldr r2, _0201A6DC ; =NNS_GfdFreeLnkPlttVram
	ldr r0, _0201A6E0 ; =NNS_GfdDefaultFuncFreePlttVram
	str r3, [r1]
	str r2, [r0]
	ldmfd sp!, {r4, pc}
_0201A6D0: .word mgr_02097788
_0201A6D4: .word NNS_GfdAllocLnkPlttVram
_0201A6D8: .word NNS_GfdDefaultFuncAllocPlttVram
_0201A6DC: .word NNS_GfdFreeLnkPlttVram
_0201A6E0: .word NNS_GfdDefaultFuncFreePlttVram
	arm_func_end NNS_GfdInitLnkPlttVramManager

	arm_func_start NNS_GfdAllocLnkPlttVram
NNS_GfdAllocLnkPlttVram: ; 0x0201A6E4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	cmp r0, #0
	moveq r4, #8
	addne r0, r0, #7
	bicne r4, r0, #7
	ldr r0, _0201A7AC ; =0x0007FFF8
	cmp r4, r0
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	cmp r1, #0
	add r2, sp, #4
	beq _0201A768
	ldr r6, _0201A7B0 ; =mgr_02097788
	ldr r5, _0201A7B4 ; =0x0209778C
	mov r12, #8
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl NNSi_GfdAllocLnkVramAligned
	ldr r2, [sp, #4]
	add r1, r2, r4
	cmp r1, #0x10000
	bls _0201A780
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl NNSi_GfdFreeLnkVram
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0201A768:
	ldr r0, _0201A7B0 ; =mgr_02097788
	mov r12, #0x10
	ldr r1, _0201A7B4 ; =0x0209778C
	mov r3, r4
	str r12, [sp]
	bl NNSi_GfdAllocLnkVramAligned
_0201A780:
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #4]
	mov r1, r4, lsr #3
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0201A7AC: .word 0x0007FFF8
_0201A7B0: .word mgr_02097788
_0201A7B4: .word unk_0209778C
	arm_func_end NNS_GfdAllocLnkPlttVram

	arm_func_start NNS_GfdFreeLnkPlttVram
NNS_GfdFreeLnkPlttVram: ; 0x0201A7B8
	stmfd sp!, {r3, lr}
	mov r1, #0x10000
	rsb r1, r1, #0
	and r1, r0, r1
	mov r2, r0, lsl #0x10
	mov r3, r1, lsr #0x10
	ldr r0, _0201A7F4 ; =mgr_02097788
	ldr r1, _0201A7F8 ; =0x0209778C
	mov r2, r2, lsr #0xd
	mov r3, r3, lsl #3
	bl NNSi_GfdFreeLnkVram
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0201A7F4: .word mgr_02097788
_0201A7F8: .word unk_0209778C
	arm_func_end NNS_GfdFreeLnkPlttVram

	arm_func_start NNS_GfdResetLnkPlttVramState
NNS_GfdResetLnkPlttVramState: ; 0x0201A7FC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0201A84C ; =mgr_02097788
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, r1, lsr #4
	bl NNSi_GfdInitLnkVramBlockPool
	ldr r6, _0201A850 ; =mgr_02097788
	str r0, [r4, #4]
	mov r0, r6
	bl NNSi_GfdInitLnkVramMan
	ldr r5, _0201A854 ; =0x0209778C
	ldr r3, [r4, #8]
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl NNSi_GfdAddNewFreeBlock
	mov r0, r6
	mov r1, r5
	bl NNSi_GfdMergeAllFreeBlocks
	ldmfd sp!, {r4, r5, r6, pc}
_0201A84C: .word mgr_02097788
_0201A850: .word mgr_02097788
_0201A854: .word unk_0209778C
	arm_func_end NNS_GfdResetLnkPlttVramState

	.rodata
	.global unk_0208BF80
unk_0208BF80:
	.byte 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.data
	.global NNS_GfdDefaultFuncAllocTexVram
NNS_GfdDefaultFuncAllocTexVram:
	.word AllocTexVram_
	.global NNS_GfdDefaultFuncFreeTexVram
NNS_GfdDefaultFuncFreeTexVram:
	.word FreeTexVram_
	.global NNS_GfdDefaultFuncAllocPlttVram
NNS_GfdDefaultFuncAllocPlttVram:
	.word AllocPlttVram_
	.global NNS_GfdDefaultFuncFreePlttVram
NNS_GfdDefaultFuncFreePlttVram:
	.word FreePlttVram_

	.bss
	.global mgr_0209776C
mgr_0209776C:
	.space 0x04
	.global unk_02097770
unk_02097770:
	.space 0x04
	.global unk_02097774
unk_02097774:
	.space 0x14
	.global mgr_02097788
mgr_02097788:
	.space 0x04
	.global unk_0209778C
unk_0209778C:
	.space 0x10

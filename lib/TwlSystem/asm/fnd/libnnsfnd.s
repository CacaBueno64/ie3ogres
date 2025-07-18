
	.include "asm/macros/function.inc"
	.include "libnnsfnd.inc"

	.text
	arm_func_start NNS_FndInitList
NNS_FndInitList: ; 0x0201769C
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end NNS_FndInitList

	arm_func_start SetFirstObject
SetFirstObject: ; 0x020176B4
	ldrh r3, [r0, #0xa]
	mov r2, #0
	add r12, r1, r3
	str r2, [r12, #4]
	str r2, [r1, r3]
	ldrh r2, [r0, #8]
	str r1, [r0]
	str r1, [r0, #4]
	add r1, r2, #1
	strh r1, [r0, #8]
	bx lr
	arm_func_end SetFirstObject

	arm_func_start NNS_FndAppendListObject
NNS_FndAppendListObject: ; 0x020176E0
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	bne _020176F8
	bl SetFirstObject
	ldmfd sp!, {r3, pc}
_020176F8:
	ldrh r12, [r0, #0xa]
	ldr r3, [r0, #4]
	mov r2, #0
	str r3, [r1, r12]
	add r3, r1, r12
	str r2, [r3, #4]
	ldrh r2, [r0, #0xa]
	ldr r3, [r0, #4]
	add r2, r3, r2
	str r1, [r2, #4]
	ldrh r2, [r0, #8]
	str r1, [r0, #4]
	add r1, r2, #1
	strh r1, [r0, #8]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndAppendListObject

	arm_func_start NNS_FndPrependListObject
NNS_FndPrependListObject: ; 0x02017734
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	bne _0201774C
	bl SetFirstObject
	ldmfd sp!, {r3, pc}
_0201774C:
	ldrh r3, [r0, #0xa]
	mov r2, #0
	str r2, [r1, r3]
	ldr r2, [r0]
	add r3, r1, r3
	str r2, [r3, #4]
	ldrh r2, [r0, #0xa]
	ldr r3, [r0]
	str r1, [r3, r2]
	ldrh r2, [r0, #8]
	str r1, [r0]
	add r1, r2, #1
	strh r1, [r0, #8]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndPrependListObject

	arm_func_start NNS_FndInsertListObject
NNS_FndInsertListObject: ; 0x02017784
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _0201779C
	mov r1, r2
	bl NNS_FndAppendListObject
	ldmfd sp!, {r3, pc}
_0201779C:
	ldr r3, [r0]
	cmp r1, r3
	bne _020177B4
	mov r1, r2
	bl NNS_FndPrependListObject
	ldmfd sp!, {r3, pc}
_020177B4:
	ldrh lr, [r0, #0xa]
	ldr r3, [r1, lr]
	add r12, r2, lr
	str r3, [r2, lr]
	str r1, [r12, #4]
	add r3, r3, lr
	str r2, [r3, #4]
	ldrh r3, [r0, #0xa]
	str r2, [r1, r3]
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndInsertListObject

	arm_func_start NNS_FndRemoveListObject
NNS_FndRemoveListObject: ; 0x020177E8
	stmfd sp!, {r3, lr}
	ldrh r12, [r0, #0xa]
	ldr r3, [r1, r12]
	add lr, r1, r12
	cmp r3, #0
	ldreq r1, [lr, #4]
	streq r1, [r0]
	ldrne r2, [lr, #4]
	addne r1, r3, r12
	strne r2, [r1, #4]
	ldr r3, [lr, #4]
	cmp r3, #0
	ldreq r1, [lr]
	streq r1, [r0, #4]
	ldrneh r1, [r0, #0xa]
	ldrne r2, [lr]
	strne r2, [r3, r1]
	mov r1, #0
	str r1, [lr]
	str r1, [lr, #4]
	ldrh r1, [r0, #8]
	sub r1, r1, #1
	strh r1, [r0, #8]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndRemoveListObject

	arm_func_start NNS_FndGetNextListObject
NNS_FndGetNextListObject: ; 0x02017848
	cmp r1, #0
	ldreq r0, [r0]
	ldrneh r0, [r0, #0xa]
	addne r0, r1, r0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end NNS_FndGetNextListObject

	arm_func_start NNS_FndGetPrevListObject
NNS_FndGetPrevListObject: ; 0x02017860
	cmp r1, #0
	ldreq r0, [r0, #4]
	ldrneh r0, [r0, #0xa]
	ldrne r0, [r1, r0]
	bx lr
	arm_func_end NNS_FndGetPrevListObject

	arm_func_start NNS_FndGetNthListObject
NNS_FndGetNthListObject: ; 0x02017874
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r1
	mov r1, r4
	mov r6, r0
	bl NNS_FndGetNextListObject
	movs r1, r0
	beq _020178B4
_02017894:
	cmp r4, r5
	moveq r0, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	add r4, r4, #1
	bl NNS_FndGetNextListObject
	movs r1, r0
	bne _02017894
_020178B4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNS_FndGetNthListObject

	arm_func_start FindContainHeap
FindContainHeap: ; 0x020178BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0
	mov r6, r0
	bl NNS_FndGetNextListObject
	movs r4, r0
	beq _0201791C
_020178D8:
	ldr r0, [r4, #0x18]
	cmp r0, r5
	bhi _02017908
	ldr r0, [r4, #0x1c]
	cmp r5, r0
	bhs _02017908
	mov r1, r5
	add r0, r4, #0xc
	bl FindContainHeap
	cmp r0, #0
	moveq r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02017908:
	mov r0, r6
	mov r1, r4
	bl NNS_FndGetNextListObject
	movs r4, r0
	bne _020178D8
_0201791C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FindContainHeap

	arm_func_start FindListContainHeap
FindListContainHeap: ; 0x02017924
	stmfd sp!, {r4, lr}
	ldr r4, _02017948 ; =sRootList
	mov r1, r0
	mov r0, r4
	bl FindContainHeap
	cmp r0, #0
	addne r4, r0, #0xc
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02017948: .word sRootList
	arm_func_end FindListContainHeap

	arm_func_start NNSi_FndInitHeapHead
NNSi_FndInitHeapHead: ; 0x0201794C
	stmfd sp!, {r4, r5, r6, lr}
	ldrh r5, [sp, #0x10]
	mov r4, r0
	mov r0, #0
	bic r6, r0, #0xff
	and r0, r5, #0xff
	orr r5, r6, r0
	mov r6, #4
	str r1, [r4]
	mov r1, r6
	add r0, r4, #0xc
	str r2, [r4, #0x18]
	str r3, [r4, #0x1c]
	str r5, [r4, #0x20]
	bl NNS_FndInitList
	ldr r5, _020179C0 ; =sRootListInitialized
	ldr r0, [r5]
	cmp r0, #0
	bne _020179AC
	ldr r0, _020179C4 ; =sRootList
	mov r1, r6
	bl NNS_FndInitList
	mov r0, #1
	str r0, [r5]
_020179AC:
	mov r0, r4
	bl FindListContainHeap
	mov r1, r4
	bl NNS_FndAppendListObject
	ldmfd sp!, {r4, r5, r6, pc}
_020179C0: .word sRootListInitialized
_020179C4: .word sRootList
	arm_func_end NNSi_FndInitHeapHead

	arm_func_start NNSi_FndFinalizeHeap
NNSi_FndFinalizeHeap: ; 0x020179C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FindListContainHeap
	mov r1, r4
	bl NNS_FndRemoveListObject
	ldmfd sp!, {r4, pc}
	arm_func_end NNSi_FndFinalizeHeap

	arm_func_start GetRegionOfMBlock
GetRegionOfMBlock: ; 0x020179E0
	ldrh r2, [r1, #2]
	add r3, r1, #0x10
	mov r2, r2, asr #8
	and r2, r2, #0x7f
	mov r2, r2, lsl #0x10
	sub r2, r1, r2, lsr #16
	str r2, [r0]
	ldr r1, [r1, #4]
	add r1, r1, r3
	str r1, [r0, #4]
	bx lr
	arm_func_end GetRegionOfMBlock

	arm_func_start RemoveMBlock
RemoveMBlock: ; 0x02017A0C
	ldr r2, [r1, #8]
	ldr r1, [r1, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0]
	cmp r1, #0
	strne r2, [r1, #8]
	streq r2, [r0, #4]
	mov r0, r2
	bx lr
	arm_func_end RemoveMBlock

	arm_func_start InsertMBlock
InsertMBlock: ; 0x02017A34
	str r2, [r1, #8]
	cmp r2, #0
	ldrne r3, [r2, #0xc]
	strne r1, [r2, #0xc]
	ldreq r3, [r0]
	streq r1, [r0]
	str r3, [r1, #0xc]
	cmp r3, #0
	strne r1, [r3, #8]
	streq r1, [r0, #4]
	mov r0, r1
	bx lr
	arm_func_end InsertMBlock

	arm_func_start InitMBlock
InitMBlock: ; 0x02017A64
	ldr r3, [r0]
	ldr r2, [r0, #4]
	add r0, r3, #0x10
	strh r1, [r3]
	mov r1, #0
	strh r1, [r3, #2]
	sub r0, r2, r0
	stmib r3, {r0, r1}
	mov r0, r3
	str r1, [r3, #0xc]
	bx lr
	arm_func_end InitMBlock

	arm_func_start InitExpHeap
InitExpHeap: ; 0x02017A90
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r3, r1
	mov r5, r0
	str r2, [sp]
	ldr r1, _02017AF8 ; =0x45585048
	add r2, r5, #0x38
	bl NNSi_FndInitHeapHead
	mov r4, #0
	bic r1, r4, #1
	strh r1, [r5, #0x36]
	ldr r0, [r5, #0x18]
	strh r4, [r5, #0x34]
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	ldr r1, _02017AFC ; =0x00004652
	add r0, sp, #4
	str r2, [sp, #8]
	bl InitMBlock
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	mov r0, r5
	str r4, [r5, #0x2c]
	str r4, [r5, #0x30]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_02017AF8: .word 0x45585048
_02017AFC: .word 0x00004652
	arm_func_end InitExpHeap

	arm_func_start AllocUsedBlockFromFreeBlock
AllocUsedBlockFromFreeBlock: ; 0x02017B00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	add r4, sp, #0x10
	mov r8, r0
	mov r0, r4
	mov r5, r1
	mov r7, r2
	mov r9, r3
	bl GetRegionOfMBlock
	ldr r3, [sp, #0x14]
	sub r6, r7, #0x10
	add r2, r9, r7
	mov r0, r8
	mov r1, r5
	str r6, [sp, #0x14]
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	bl RemoveMBlock
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r5, r0
	sub r0, r1, r2
	cmp r0, #0x14
	strlo r2, [sp, #0x14]
	blo _02017B84
	ldr r1, _02017C64 ; =0x00004652
	mov r0, r4
	bl InitMBlock
	mov r1, r0
	mov r0, r8
	mov r2, r5
	bl InsertMBlock
	mov r5, r0
_02017B84:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	cmp r0, #0x14
	strlo r1, [sp, #8]
	blo _02017BB8
	ldr r1, _02017C64 ; =0x00004652
	add r0, sp, #8
	bl InitMBlock
	mov r1, r0
	mov r0, r8
	mov r2, r5
	bl InsertMBlock
_02017BB8:
	ldr r0, [r8, #-4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #8]
	and r0, r0, #0xff
	tst r0, #1
	sub r2, r2, r1
	beq _02017BDC
	mov r0, #0
	bl MIi_CpuClear32
_02017BDC:
	ldr r2, [sp, #8]
	ldr r1, _02017C68 ; =0x00005544
	add r0, sp, #0
	str r6, [sp]
	str r2, [sp, #4]
	bl InitMBlock
	mov r1, r0
	ldrh r3, [r1, #2]
	ldrh r2, [sp, #0x38]
	add r0, r8, #8
	bic r3, r3, #0x8000
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #16
	strh r2, [r1, #2]
	ldr r3, [sp, #0x14]
	bic r2, r2, #0x7f00
	strh r2, [r1, #2]
	sub r2, r1, r3
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldrh r3, [r1, #2]
	mov r2, r2, lsl #0x19
	orr r2, r3, r2, lsr #17
	strh r2, [r1, #2]
	ldrh r3, [r8, #0x10]
	bic r2, r2, #0xff
	and r3, r3, #0xff
	orr r2, r2, r3
	strh r2, [r1, #2]
	ldr r2, [r8, #0xc]
	bl InsertMBlock
	mov r0, r7
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02017C64: .word 0x00004652
_02017C68: .word 0x00005544
	arm_func_end AllocUsedBlockFromFreeBlock

	arm_func_start AllocFromHead_02017C6C
AllocFromHead_02017C6C: ; 0x02017C6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrh r4, [r0, #0x36]
	mov r3, r1
	ldr r12, [r0, #0x24]
	and r1, r4, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r1, #0
	moveq r6, #1
	movne r6, #0
	mov r4, r1
	cmp r12, #0
	sub lr, r1, #1
	beq _02017CFC
	sub r2, r2, #1
	mvn r5, r2
_02017CAC:
	add r8, r12, #0x10
	add r7, r2, r8
	and r9, r5, r7
	sub r7, r9, r8
	ldr r8, [r12, #4]
	add r7, r3, r7
	cmp r8, r7
	blo _02017CF0
	cmp lr, r8
	bls _02017CF0
	mov r1, r12
	mov lr, r8
	mov r4, r9
	cmp r6, #0
	bne _02017CFC
	cmp r8, r3
	beq _02017CFC
_02017CF0:
	ldr r12, [r12, #0xc]
	cmp r12, #0
	bne _02017CAC
_02017CFC:
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	mov r2, r4
	add r0, r0, #0x24
	str r5, [sp]
	bl AllocUsedBlockFromFreeBlock
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end AllocFromHead_02017C6C

	arm_func_start AllocFromTail_02017D20
AllocFromTail_02017D20: ; 0x02017D20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrh r4, [r0, #0x36]
	mov r3, r1
	ldr r12, [r0, #0x28]
	and r1, r4, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r1, #0
	moveq r5, #1
	movne r5, #0
	mov r4, r1
	cmp r12, #0
	sub lr, r1, #1
	beq _02017DAC
	sub r2, r2, #1
	mvn r2, r2
_02017D60:
	ldr r8, [r12, #4]
	add r9, r12, #0x10
	add r6, r8, r9
	sub r6, r6, r3
	and r7, r2, r6
	subs r6, r7, r9
	bmi _02017DA0
	cmp lr, r8
	bls _02017DA0
	mov r1, r12
	mov lr, r8
	mov r4, r7
	cmp r5, #0
	bne _02017DAC
	cmp r8, r3
	beq _02017DAC
_02017DA0:
	ldr r12, [r12, #8]
	cmp r12, #0
	bne _02017D60
_02017DAC:
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #1
	mov r2, r4
	add r0, r0, #0x24
	str r5, [sp]
	bl AllocUsedBlockFromFreeBlock
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end AllocFromTail_02017D20

	arm_func_start RecycleRegion
RecycleRegion: ; 0x02017DD0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	ldr r2, [r5]
	ldr r1, [r5, #4]
	mov r6, r0
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, [r6]
	mov r4, #0
	cmp r1, #0
	beq _02017E44
	ldr r0, [r5]
_02017E04:
	cmp r1, r0
	movlo r4, r1
	blo _02017E38
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _02017E44
	ldr r2, [r1, #4]
	add r0, r1, #0x10
	add r2, r2, r0
	mov r0, r6
	str r2, [sp, #4]
	bl RemoveMBlock
	b _02017E44
_02017E38:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _02017E04
_02017E44:
	cmp r4, #0
	beq _02017E78
	ldr r2, [r4, #4]
	add r1, r4, #0x10
	ldr r0, [r5]
	add r1, r2, r1
	cmp r1, r0
	bne _02017E78
	mov r0, r6
	mov r1, r4
	str r4, [sp]
	bl RemoveMBlock
	mov r4, r0
_02017E78:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	cmp r0, #0x10
	addlo sp, sp, #8
	movlo r0, #0
	ldmlofd sp!, {r4, r5, r6, pc}
	ldr r1, _02017EBC ; =0x00004652
	add r0, sp, #0
	bl InitMBlock
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl InsertMBlock
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02017EBC: .word 0x00004652
	arm_func_end RecycleRegion

	arm_func_start NNS_FndCreateExpHeapEx
NNS_FndCreateExpHeapEx: ; 0x02017EC0
	stmfd sp!, {r3, lr}
	add r1, r1, r0
	add r0, r0, #3
	bic r1, r1, #3
	bic r0, r0, #3
	cmp r0, r1
	bhi _02017EE8
	sub r3, r1, r0
	cmp r3, #0x4c
	bhs _02017EF0
_02017EE8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02017EF0:
	bl InitExpHeap
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndCreateExpHeapEx

	arm_func_start NNS_FndDestroyExpHeap
NNS_FndDestroyExpHeap: ; 0x02017EF8
	ldr r12, _02017F00 ; =NNSi_FndFinalizeHeap
	bx r12
_02017F00: .word NNSi_FndFinalizeHeap
	arm_func_end NNS_FndDestroyExpHeap

	arm_func_start NNS_FndAllocFromExpHeapEx
NNS_FndAllocFromExpHeapEx: ; 0x02017F04
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r1, #1
	add r1, r1, #3
	cmp r2, #0
	bic r1, r1, #3
	blt _02017F28
	bl AllocFromHead_02017C6C
	ldmfd sp!, {r3, pc}
_02017F28:
	rsb r2, r2, #0
	bl AllocFromTail_02017D20
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndAllocFromExpHeapEx

	arm_func_start NNS_FndFreeToExpHeap
NNS_FndFreeToExpHeap: ; 0x02017F34
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	sub r5, r1, #0x10
	add r4, sp, #0
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl GetRegionOfMBlock
	mov r1, r5
	add r0, r6, #0x2c
	bl RemoveMBlock
	mov r1, r4
	add r0, r6, #0x24
	bl RecycleRegion
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNS_FndFreeToExpHeap

	arm_func_start InitFrameHeap
InitFrameHeap: ; 0x02017F74
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, r1
	mov r4, r0
	str r2, [sp]
	ldr r1, _02017FB8 ; =0x46524D48
	add r2, r4, #0x30
	bl NNSi_FndInitHeapHead
	ldr r3, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	mov r1, #0
	mov r0, r4
	str r3, [r4, #0x24]
	str r2, [r4, #0x28]
	str r1, [r4, #0x2c]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02017FB8: .word 0x46524D48
	arm_func_end InitFrameHeap

	arm_func_start AllocFromHead
AllocFromHead: ; 0x02017FBC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r3, [r4]
	sub r0, r2, #1
	mvn r2, r0
	add r0, r0, r3
	and r5, r2, r0
	ldr r0, [r4, #4]
	add r6, r1, r5
	cmp r6, r0
	movhi r0, #0
	ldmhifd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #-4]
	sub r2, r6, r3
	and r0, r0, #0xff
	tst r0, #1
	beq _0201800C
	mov r1, r3
	mov r0, #0
	bl MIi_CpuClear32
_0201800C:
	mov r0, r5
	str r6, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end AllocFromHead

	arm_func_start AllocFromTail
AllocFromTail: ; 0x02018018
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #4]
	sub r0, r2, #1
	mvn r2, r0
	sub r1, r3, r1
	ldr r0, [r4]
	and r5, r2, r1
	cmp r5, r0
	movlo r0, #0
	ldmlofd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #-4]
	sub r2, r3, r5
	and r0, r0, #0xff
	tst r0, #1
	beq _02018064
	mov r1, r5
	mov r0, #0
	bl MIi_CpuClear32
_02018064:
	mov r0, r5
	str r5, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end AllocFromTail

	arm_func_start FreeHead
FreeHead: ; 0x02018070
	ldr r2, [r0, #0x18]
	mov r1, #0
	str r2, [r0, #0x24]
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FreeHead

	arm_func_start FreeTail
FreeTail: ; 0x02018084
	ldr r2, [r0, #0x2c]
	cmp r2, #0
	beq _020180A4
_02018090:
	ldr r1, [r0, #0x1c]
	str r1, [r2, #8]
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _02018090
_020180A4:
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FreeTail

	arm_func_start NNS_FndCreateFrmHeapEx
NNS_FndCreateFrmHeapEx: ; 0x020180B0
	stmfd sp!, {r3, lr}
	add r1, r1, r0
	add r0, r0, #3
	bic r1, r1, #3
	bic r0, r0, #3
	cmp r0, r1
	bhi _020180D8
	sub r3, r1, r0
	cmp r3, #0x30
	bhs _020180E0
_020180D8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020180E0:
	bl InitFrameHeap
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndCreateFrmHeapEx

	arm_func_start NNS_FndDestroyFrmHeap
NNS_FndDestroyFrmHeap: ; 0x020180E8
	ldr r12, _020180F0 ; =NNSi_FndFinalizeHeap
	bx r12
_020180F0: .word NNSi_FndFinalizeHeap
	arm_func_end NNS_FndDestroyFrmHeap

	arm_func_start NNS_FndAllocFromFrmHeapEx
NNS_FndAllocFromFrmHeapEx: ; 0x020180F4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r1, #1
	add r1, r1, #3
	cmp r2, #0
	bic r1, r1, #3
	add r0, r0, #0x24
	blt _0201811C
	bl AllocFromHead
	ldmfd sp!, {r3, pc}
_0201811C:
	rsb r2, r2, #0
	bl AllocFromTail
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_FndAllocFromFrmHeapEx

	arm_func_start NNS_FndFreeToFrmHeap
NNS_FndFreeToFrmHeap: ; 0x02018128
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	tst r4, #1
	beq _02018140
	bl FreeHead
_02018140:
	tst r4, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FreeTail
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNS_FndFreeToFrmHeap

	.bss
	.global sRootListInitialized
sRootListInitialized:
	.space 0x04
	.global sRootList
sRootList:
	.space 0x0C

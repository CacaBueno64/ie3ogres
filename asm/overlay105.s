
	.include "/macros/function.inc"
	.include "/include/overlay105.inc"

	.text
	arm_func_start FUN_ov105_02124d00
FUN_ov105_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #0
	cmpne r0, #1
	beq _02124D30
	sub r0, r0, #3
	cmp r0, #2
	bhi _02124D38
_02124D30:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02124D38:
	ldr r2, [r1]
	ldr r0, [r4, #0x14]
	cmp r0, r2
	beq _02124DF0
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #6
	beq _02124D78
	sub r0, r0, #2
	cmp r0, #3
	bhi _02124DF0
	cmp r2, #2
	cmpne r2, #3
	cmpne r2, #4
	cmpne r2, #5
	beq _02124DF0
_02124D78:
	mov r2, #0
	ldr r0, [r1]
	strb r2, [r1, #0xd]
	str r0, [r4, #0x14]
	ldrh r0, [r1, #4]
	strh r0, [r4, #0x18]
	ldrh r0, [r1, #6]
	strh r0, [r4, #0x1a]
	ldrh r0, [r1, #8]
	strh r0, [r4, #0x1c]
	ldrsh r0, [r1, #0xa]
	strh r0, [r4, #0x1e]
	ldrb r0, [r1, #0xc]
	strb r0, [r4, #0x20]
	ldrb r0, [r1, #0xd]
	strb r0, [r4, #0x21]
	ldr r0, [r1, #0x10]
	str r0, [r4, #0x24]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	movne r0, #8
	strne r0, [r4, #8]
	bne _02124DE4
	mov r1, #7
	mov r0, #3
	str r1, [r4, #8]
	bl _ZN8Graphics12FadeSubBlackEl
_02124DE4:
	mov r0, #1
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_02124DF0:
	ldrh r2, [r4, #0x18]
	ldrh r0, [r1, #4]
	cmp r2, r0
	ldreqh r2, [r4, #0x1a]
	ldreqh r0, [r1, #6]
	cmpeq r2, r0
	ldreqh r2, [r4, #0x1c]
	ldreqh r0, [r1, #8]
	cmpeq r2, r0
	ldreqsh r2, [r4, #0x1e]
	ldreqsh r0, [r1, #0xa]
	cmpeq r2, r0
	ldreqb r0, [r1, #0xd]
	cmpeq r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r2, #0
	ldr r0, [r1]
	strb r2, [r1, #0xd]
	str r0, [r4, #0x14]
	ldrh r2, [r1, #4]
	mov r0, r4
	strh r2, [r4, #0x18]
	ldrh r2, [r1, #6]
	strh r2, [r4, #0x1a]
	ldrh r2, [r1, #8]
	strh r2, [r4, #0x1c]
	ldrsh r2, [r1, #0xa]
	strh r2, [r4, #0x1e]
	ldrb r2, [r1, #0xc]
	strb r2, [r4, #0x20]
	ldrb r2, [r1, #0xd]
	strb r2, [r4, #0x21]
	ldr r1, [r1, #0x10]
	str r1, [r4, #0x24]
	bl FUN_ov105_021254f8
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov105_02125354
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov105_02124d00

	arm_func_start FUN_ov105_02124e98
FUN_ov105_02124e98: ; 0x02124E98
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02124EC0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
_02124EC0:
	cmp r0, #0
	ldrne r1, [r4, #0x180]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02124EE0 ; =gPalSkinFaceFile
	ldr r2, [r2]
	bl FUN_ov16_020f0c30 ; may be ov17 ; ov16(Mica)
	ldmfd sp!, {r4, pc}
_02124EE0: .word gPalSkinFaceFile
	arm_func_end FUN_ov105_02124e98

	arm_func_start FUN_ov105_02124ee4
FUN_ov105_02124ee4: ; 0x02124EE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1f8
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _02124F38 ; =0x021279CC
	add r1, r4, #0x1f8
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, _02124F3C ; =0x021279E4
	add r1, r4, #0x204
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, _02124F40 ; =0x021279FC
	add r1, r4, #0x210
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, _02124F44 ; =0x02127A14
	add r1, r4, #0x21c
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124F38: .word ov105_021279CC
_02124F3C: .word ov105_021279E4
_02124F40: .word ov105_021279FC
_02124F44: .word ov105_02127A14
	arm_func_end FUN_ov105_02124ee4

	arm_func_start FUN_ov105_02124f48
FUN_ov105_02124f48: ; 0x02124F48
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x1f8
	mov r1, #4
	bl _ZN7Archive5CloseEP9SFileDatai
	add r5, r4, #0x1f8
	mov r6, #0
	mov r4, #0xc
_02124F68:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #4
	blt _02124F68
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov105_02124f48

	arm_func_start FUN_ov105_02124f80
FUN_ov105_02124f80: ; 0x02124F80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x9c]
	cmp r6, #0
	ldrne r7, _02124FC8 ; =0x0212775C
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x84
	mov r4, #0xc
_02124FA4:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl _ZN7Archive11ReadFromSFPEPcP9SFileDataS0_
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02124FA4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124FC8: .word ov105_0212775C
	arm_func_end FUN_ov105_02124f80

	arm_func_start FUN_ov105_02124fcc
FUN_ov105_02124fcc: ; 0x02124FCC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r6, [r4, #0x24]
	cmp r6, #0
	bne _02124FF4
	ldrh r0, [r4, #0x18]
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r6, r0
_02124FF4:
	cmp r6, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x1f8]
	cmp r0, #0
	beq _02125048
	add r5, sp, #8
	add r3, sp, #0xc
	mov r1, r6
	mov r2, #0
	str r5, [sp]
	bl _ZN7Archive20GetFaceOffsetAndSizeEPvP4UnithPlPm
	cmp r0, #0
	beq _02125048
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021250F0 ; =0x02127A34
	add r1, r4, #0x168
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_02125048:
	ldr r0, [r4, #0x204]
	cmp r0, #0
	beq _02125098
	add r1, sp, #0xc
	str r1, [sp]
	add r5, sp, #8
	ldr r2, _021250F4 ; =0x00000193
	mov r1, r6
	mov r3, #0
	str r5, [sp, #4]
	bl _ZN7Archive20GetBodyOffsetAndSizeEPvP4UnitiiPlPm
	cmp r0, #0
	beq _02125098
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021250F8 ; =0x02127A4C
	add r1, r4, #0x174
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_02125098:
	ldr r0, [r4, #0x210]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	add r12, sp, #8
	ldr r1, _021250F4 ; =0x00000193
	add r3, sp, #0xc
	mov r2, r5
	str r12, [sp]
	bl _ZN7Archive24GetBodyPlttOffsetAndSizeEPviiPlPm
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r5, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021250FC ; =0x02127A64
	add r1, r4, #0x180
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_021250F0: .word ov105_02127A34
_021250F4: .word 0x00000193
_021250F8: .word ov105_02127A4C
_021250FC: .word ov105_02127A64
	arm_func_end FUN_ov105_02124fcc

	arm_func_start FUN_ov105_02125100
FUN_ov105_02125100: ; 0x02125100
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r4, #0
	mov r1, r4
	add r0, r10, #0x30
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r8, [r10, #0x21c]
	cmp r8, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x24]
	cmp r1, #0
	bne _0212514C
	ldrh r0, [r10, #0x18]
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r1, r0
_0212514C:
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r10, #0x40
	str r2, [sp]
	mov r4, #2
	ldr r0, _021251E8 ; =gLogicThink
	add r2, r10, #0x30
	mov r3, #4
	str r4, [sp, #4]
	bl FUN_0204aae8
	mov r9, #0
	add r5, r10, #0x84
	mov r6, r9
	add r7, sp, #0xc
	add r11, sp, #8
	mov r4, #0xc
_02125190:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq _021251D4
	mov r0, r8
	mov r2, r7
	mov r3, r11
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	beq _021251D4
	add r0, r9, #0x19
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021251EC ; =0x02127A7C
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_021251D4:
	add r9, r9, #1
	cmp r9, #6
	blt _02125190
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021251E8: .word gLogicThink
_021251EC: .word ov105_02127A7C
	arm_func_end FUN_ov105_02125100

	arm_func_start FUN_ov105_021251f0
FUN_ov105_021251f0: ; 0x021251F0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x50
	mov r3, r1
	mov r5, r2
	add r4, sp, #0
	mov r6, r0
	ldr r1, _02125234 ; =0x02127A9C
	mov r0, r4
	mov r2, r3
	bl sprintf
	add r1, r6, #0x84
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, pc}
_02125234: .word ov105_02127A9C
	arm_func_end FUN_ov105_021251f0

	arm_func_start FUN_ov105_02125238
FUN_ov105_02125238: ; 0x02125238
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0212533C
_02125254: ; jump table
	b _0212533C ; case 0
	b _021252B8 ; case 1
	b _0212526C ; case 2
	b _0212526C ; case 3
	b _021252B8 ; case 4
	b _021252F8 ; case 5
_0212526C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02125284
	ldrh r0, [r4, #0x18]
	mov r1, #0
	bl FUN_ov16_020efa9c
_02125284:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x66]
	ldr r0, _02125344 ; =0x02127AB8
	add r1, r4, #0x18c
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021252B8:
	ldrh r1, [r4, #0x1c]
	ldr r0, _02125348 ; =gLogicThink
	bl FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x2a]
	ldr r0, _0212534C ; =0x02127AD4
	add r1, r4, #0x18c
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021252F8:
	ldrh r1, [r4, #0x1a]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _02125348 ; =gLogicThink
	bl FUN_0204a2c4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x1a]
	ldr r0, _02125350 ; =0x02127AEC
	add r1, r4, #0x18c
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
_0212533C:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02125344: .word ov105_02127AB8
_02125348: .word gLogicThink
_0212534C: .word ov105_02127AD4
_02125350: .word ov105_02127AEC
	arm_func_end FUN_ov105_02125238

	arm_func_start FUN_ov105_02125354
FUN_ov105_02125354: ; 0x02125354
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02125374
	cmp r1, #2
	beq _0212547C
	b _021254C4
_02125374:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x84
	mov r2, #0x174
	bl MI_CpuFill8
	ldr r5, _021254D0 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021254D4 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, _021254D8 ; =0x02127B08
	add r1, r4, #0x90
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02125478
_021253E8: ; jump table
	b _02125404 ; case 0
	b _02125418 ; case 1
	b _0212542C ; case 2
	b _0212542C ; case 3
	b _0212542C ; case 4
	b _0212542C ; case 5
	b _02125444 ; case 6
_02125404:
	ldr r1, _021254DC ; =0x02127B28
	mov r0, r4
	mov r2, r7
	bl FUN_ov105_021251f0
	b _02125478
_02125418:
	ldr r1, _021254E0 ; =0x02127B34
	mov r0, r4
	mov r2, r7
	bl FUN_ov105_021251f0
	b _02125470
_0212542C:
	ldr r1, _021254E4 ; =0x02127B40
	mov r0, r4
	mov r2, r7
	bl FUN_ov105_021251f0
	ldr r0, _021254E8 ; =0x02127B4C
	b _02125468
_02125444:
	ldr r1, _021254EC ; =0x02127B6C
	mov r0, r4
	mov r2, r7
	bl FUN_ov105_021251f0
	ldr r1, _021254F0 ; =0x02127B78
	mov r0, r4
	mov r2, #0x17
	bl FUN_ov105_021251f0
	ldr r0, _021254F4 ; =0x02127B84
_02125468:
	add r1, r4, #0x9c
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
_02125470:
	mov r0, r4
	bl FUN_ov105_02125238
_02125478:
	b _021254BC
_0212547C:
	ldr r1, [r4, #0x14]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _021254BC
_0212548C: ; jump table
	b _021254BC ; case 0
	b _021254BC ; case 1
	b _021254A8 ; case 2
	b _021254A8 ; case 3
	b _021254A8 ; case 4
	b _021254A8 ; case 5
	b _021254B0 ; case 6
_021254A8:
	bl FUN_ov105_02124fcc
	b _021254BC
_021254B0:
	bl FUN_ov105_02124fcc
	mov r0, r4
	bl FUN_ov105_02125100
_021254BC:
	mov r0, #1
	strb r0, [r4, #0x11]
_021254C4:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021254D0: .word gSubScreen1
_021254D4: .word gSubScreen0
_021254D8: .word ov105_02127B08
_021254DC: .word ov105_02127B28
_021254E0: .word ov105_02127B34
_021254E4: .word ov105_02127B40
_021254E8: .word ov105_02127B4C
_021254EC: .word ov105_02127B6C
_021254F0: .word ov105_02127B78
_021254F4: .word ov105_02127B84
	arm_func_end FUN_ov105_02125354

	arm_func_start FUN_ov105_021254f8
FUN_ov105_021254f8: ; 0x021254F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x84
	mov r1, #0x1f
	bl _ZN7Archive5CloseEP9SFileDatai
	add r5, r4, #0x84
	mov r6, #0
	mov r4, #0xc
_02125518:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #0x1f
	blt _02125518
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov105_021254f8

	arm_func_start FUN_ov105_02125530
FUN_ov105_02125530: ; 0x02125530
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125560
	ldr r0, _021255D8 ; =gAllocator
	mov r1, r5, lsl #1
	bl _ZN9Allocator8allocateEm
	str r0, [r4]
_02125560:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0212557C
	ldr r0, _021255D8 ; =gAllocator
	mov r1, r5, lsl #5
	bl _ZN9Allocator8allocateEm
	str r0, [r4, #4]
_0212557C:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _021255B4
_0212559C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _0212559C
_021255B4:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_021255D8: .word gAllocator
	arm_func_end FUN_ov105_02125530

	arm_func_start FUN_ov105_021255dc
FUN_ov105_021255dc: ; 0x021255DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r2
	add r3, r0, #0x48
	mov r2, #0xc
	mla r7, r1, r2, r3
	mov r1, r7
	mov r3, #5
	bl FUN_ov105_02125530
	ldr r0, [r7, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r6, #3
	mov r5, #1
	str r6, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	ldrh r1, [r7, #8]
	mov r4, #0
	ldr r0, _02125724 ; =gFont8
	mov r1, r1, lsl #3
	str r1, [sp, #0xc]
	ldrh r3, [r7, #0xa]
	mov r1, r4
	mov r2, r5
	mov r3, r3, lsl #3
	str r3, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r0]
	add r3, r8, #0x2c
	ldr r9, [r0]
	ldr r9, [r9, #8]
	blx r9
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r7, #4]
	ldr r9, _02125728 ; =gFont12
	str r0, [sp, #8]
	ldrh r0, [r7, #8]
	mov r1, r4
	mov r3, r8
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r7, #0xa]
	mov r2, #0xb
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r9]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	str r6, [sp]
	str r5, [sp, #4]
	add r3, r8, #0x1c
	ldr r0, [r7, #4]
	mov r1, r4
	str r0, [sp, #8]
	ldrh r0, [r7, #8]
	mov r2, #0x19
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r7, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r9]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldr r0, [r7, #4]
	ldrh r2, [r7, #8]
	ldrh r1, [r7, #0xa]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02125724: .word gFont8
_02125728: .word gFont12
	arm_func_end FUN_ov105_021255dc

	arm_func_start FUN_ov105_0212572c
FUN_ov105_0212572c: ; 0x0212572C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r3, r5, #0x48
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1c
	mov r3, #6
	bl FUN_ov105_02125530
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r5, #0x18c]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r2, #3
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r3, #2
	str r3, [sp, #0xc]
	mov r2, #4
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r2, #0
	str r2, [sp, #0x18]
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov105_0212572c

	arm_func_start FUN_ov105_021257b8
FUN_ov105_021257b8: ; 0x021257B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x48
	mov r3, #0xc
	mla r4, r1, r3, r4
	mov r8, #3
	mov r5, r2
	mov r1, r4
	mov r3, r8
	mov r2, #0xe
	bl FUN_ov105_02125530
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0212589C ; =gLogicThink
	mov r1, r5
	bl FUN_ov16_020ee064
	movs r7, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _021258A0 ; =gFont12
	mov r6, #4
	ldr r0, [r5]
	mov r2, r6
	mov r1, #1
	bl FUN_02043310
	str r8, [sp]
	mov r12, #0
	str r12, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, r6
	str r0, [sp, #8]
	ldrh r0, [r4, #8]
	mov r3, r7
	mov r2, #6
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r12, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r0, [r5]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212589C: .word gLogicThink
_021258A0: .word gFont12
	arm_func_end FUN_ov105_021257b8

	arm_func_start FUN_ov105_021258a4
FUN_ov105_021258a4: ; 0x021258A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	add r5, r0, #0x48
	mov r4, #0xc
	mla r5, r1, r4, r5
	ldr r1, _021259A8 ; =0x02127754
	mov r7, r2
	ldr r8, [r1]
	ldr r4, [r1, #4]
	mov r10, #3
	mov r6, r3
	str r4, [sp, #0x20]
	mov r1, r5
	mov r3, r10
	mov r2, #0xe
	str r8, [sp, #0x1c]
	add r4, sp, #0x1c
	bl FUN_ov105_02125530
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _021259AC ; =gLogicThink
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020ee008
	movs r9, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, _021259B0 ; =gFont12
	mov r8, #4
	ldr r0, [r7]
	mov r2, r8
	mov r1, #1
	bl FUN_02043310
	str r10, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, r6, lsl #2]
	str r1, [sp, #8]
	ldrh r4, [r5, #8]
	mov r1, r8
	mov r3, r9
	mov r4, r4, lsl #3
	str r4, [sp, #0xc]
	ldrh r4, [r5, #0xa]
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r7]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldr r0, [r7]
	bl FUN_0204331c
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_021259A8: .word ov105_02127754
_021259AC: .word gLogicThink
_021259B0: .word gFont12
	arm_func_end FUN_ov105_021258a4

	arm_func_start FUN_ov105_021259b4
FUN_ov105_021259b4: ; 0x021259B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #0x11]
	mov r6, r1
	mov r5, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x24]
	strb r5, [r4, #0x11]
	cmp r0, #0
	bne _021259F8
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	beq _021259FC
	mov r1, r5
	bl FUN_ov16_020efa9c
	b _021259F8
_021259F8:
	mov r5, r0
_021259FC:
	cmp r6, #1
	beq _02125A10
	cmp r6, #2
	beq _02125A74
	ldmfd sp!, {r4, r5, r6, pc}
_02125A10:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02125A20: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	ldmfd sp!, {r4, r5, r6, pc} ; case 1
	b _02125A3C ; case 2
	b _02125A3C ; case 3
	b _02125A3C ; case 4
	b _02125A3C ; case 5
	b _02125A50 ; case 6
_02125A3C:
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl FUN_ov105_021255dc
	ldmfd sp!, {r4, r5, r6, pc}
_02125A50:
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl FUN_ov105_021255dc
	mov r0, r4
	mov r2, r5
	mov r1, #2
	bl FUN_ov105_021257b8
	ldmfd sp!, {r4, r5, r6, pc}
_02125A74:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02125A84: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _02125AA0 ; case 1
	b _02125AA0 ; case 2
	b _02125AA0 ; case 3
	b _02125AA0 ; case 4
	b _02125AA0 ; case 5
	b _02125AB0 ; case 6
_02125AA0:
	mov r0, r4
	mov r1, #1
	bl FUN_ov105_0212572c
	ldmfd sp!, {r4, r5, r6, pc}
_02125AB0:
	mov r0, r4
	mov r2, r5
	mov r1, #3
	mov r3, #0
	bl FUN_ov105_021258a4
	mov r0, r4
	mov r2, r5
	mov r1, #4
	mov r3, #1
	bl FUN_ov105_021258a4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov105_021259b4

	arm_func_start FUN_ov105_02125adc
FUN_ov105_02125adc: ; 0x02125ADC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x4c]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x84]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	cmp r9, r0
	movgt r9, r0
	ldr r0, [r4, #0xc]
	cmn r9, #1
	add r8, r4, r0
	ble _02125C50
	ldr r0, [sp, #0x4c]
	mov r7, #2
	cmp r0, #0xd
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	mov r6, #1
	mov r11, #3
	ldr r4, _02125CA8 ; =0x66666667
	beq _02125BCC
_02125B48:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	str r7, [sp]
	add r9, r0, r9, asr #2
	mov r0, r10, lsl #0x18
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r2, r8, r2, lsl #2
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02125CAC ; =gBgMenuManager
	mov r1, r6
	mov r3, r2
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125B48
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125BCC:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	str r7, [sp]
	add r9, r0, r9, asr #2
	mov r0, r10, lsl #0x18
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r2, r8, r2, lsl #2
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02125CAC ; =gBgMenuManager
	mov r1, r6
	mov r3, r2
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125BCC
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125C50:
	mov r4, #2
	mov r0, r10, lsl #0x18
	mov r3, r2, lsl #0x18
	str r4, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	mov r2, #0
	str r0, [sp, #8]
	mov r0, r3, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r4, #3
	ldr r0, _02125CAC ; =gBgMenuManager
	mov r3, r2
	str r4, [sp, #0x18]
	add r4, r8, #0x28
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125CA8: .word 0x66666667
_02125CAC: .word gBgMenuManager
	arm_func_end FUN_ov105_02125adc

	arm_func_start FUN_ov105_02125cb0
FUN_ov105_02125cb0: ; 0x02125CB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r8, #0xf0]
	cmp r5, #0
	movgt r12, #0
	movgt r4, #6
	rsble r5, r5, #0
	movle r12, #2
	movle r4, #7
	cmp r3, #0
	beq _02125D50
	mov lr, #2
	mov r0, r7, lsl #0x18
	add r1, r6, #1
	mov r2, r1, lsl #0x18
	str lr, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r2, #0
	str r1, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr lr, [r3, #0xc]
	ldr r0, _02125D80 ; =gBgMenuManager
	add r3, r3, lr
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125D50:
	add r0, r7, #3
	ldr r2, _02125D84 ; =0x000003E7
	mov r1, r0, lsl #0x10
	str r2, [sp]
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, r1, asr #0x10
	str r4, [sp, #4]
	bl FUN_ov105_02125adc
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125D80: .word gBgMenuManager
_02125D84: .word 0x000003E7
	arm_func_end FUN_ov105_02125cb0

	arm_func_start FUN_ov105_02125d88
FUN_ov105_02125d88: ; 0x02125D88
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0x174]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02125E00
	mov r2, #2
	mov r0, r5, lsl #0x18
	mov r1, #1
	str r2, [sp]
	mov r2, r4, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02125E70 ; =gBgMenuManager
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125E00:
	ldr r3, [r6, #0x168]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #2
	mov r0, r5, lsl #0x18
	mov r2, r4, lsl #0x18
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	mov r2, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r4, [r3, #0xc]
	ldr r0, _02125E70 ; =gBgMenuManager
	add r4, r3, r4
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125E70: .word gBgMenuManager
	arm_func_end FUN_ov105_02125d88

	arm_func_start FUN_ov105_02125e74
FUN_ov105_02125e74: ; 0x02125E74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r9, [r5, #0x48]
	mov r4, r1
	cmp r9, #0
	mov r7, #4
	mov r6, #3
	mov r10, #1
	mov r8, #2
	beq _02125EE8
	mov r1, r10
	str r8, [sp]
	str r1, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r2, [r5, #0x50]
	mov r3, #0
	ldr r0, _02126334 ; =gBgMenuManager
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r11, [r5, #0x52]
	mov r2, r1
	and r11, r11, #0xff
	str r11, [sp, #0x14]
	str r3, [sp, #0x18]
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125EE8:
	mov r0, r4
	mov r1, r10
	bl FUN_0206d9b0
	cmp r0, #1
	blo _02125F70
	mov r0, r4
	mov r1, r10
	bl FUN_0206d9b0
	cmp r0, #0x10
	bhi _02125F70
	ldr r9, [r5, #0xfc]
	cmp r9, #0
	beq _02125F70
	mov r0, r4
	mov r1, r10
	bl FUN_0206d9b0
	ldr r1, [r9, #0xc]
	sub r2, r0, #1
	add r3, r9, r1
	mov r0, #0xc
	mla r9, r2, r0, r3
	mov r2, #0
	stmia sp, {r8, r10}
	mov r0, #0x17
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	str r8, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _02126334 ; =gBgMenuManager
	mov r1, r10
	mov r3, r2
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125F70:
	ldr r3, [r5, #0x108]
	cmp r3, #0
	beq _02125FBC
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [r3, #0xc]
	mov r2, #0
	add r6, r3, r0
	ldr r0, _02126334 ; =gBgMenuManager
	mov r3, r2
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125FBC:
	mov r6, #0
	mov r7, #0xf
	ldr r0, _02126338 ; =gLogicThink
	mov r1, r4
	mov r2, r7
	mov r3, r6
	sub r8, r6, #1
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02126020
_02125FE8: ; jump table
	b _02126020 ; case 0
	b _02125FFC ; case 1
	b _02126008 ; case 2
	b _02126010 ; case 3
	b _02126018 ; case 4
_02125FFC:
	mov r8, r7
_02126000:
	mov r6, #8
	b _02126020
_02126008:
	mov r8, #0x10
	b _02126000
_02126010:
	mov r8, #0x11
	b _0212601C
_02126018:
	mov r8, #0x12
_0212601C:
	mov r6, #9
_02126020:
	cmp r8, #0
	mov r7, #3
	mov r11, #1
	mov r9, #2
	blt _02126090
	mov r0, #0xc
	mla r0, r8, r0, r5
	ldr r3, [r0, #0x84]
	mov r0, #4
	cmp r3, #0
	beq _02126090
	str r9, [sp]
	mov r1, r11
	str r1, [sp, #4]
	mov r2, #0x1b
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r9, [sp, #0x14]
	and r0, r6, #0xff
	str r0, [sp, #0x18]
	ldr r6, [r3, #0xc]
	mov r2, #0
	add r6, r3, r6
	ldr r0, _02126334 ; =gBgMenuManager
	mov r3, r2
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126090:
	mov r0, r4
	bl FUN_0204fb60
	cmp r0, #4
	mvn r2, #0
	addls pc, pc, r0, lsl #2
	b _021260D8
_021260A8: ; jump table
	b _021260D8 ; case 0
	b _021260BC ; case 1
	b _021260C4 ; case 2
	b _021260CC ; case 3
	b _021260D4 ; case 4
_021260BC:
	mov r2, #1
	b _021260D8
_021260C4:
	mov r2, #2
	b _021260D8
_021260CC:
	mov r2, #3
	b _021260D8
_021260D4:
	mov r2, #0
_021260D8:
	cmp r2, #0
	mov r8, #4
	blt _02126138
	ldr r6, [r5, #0x114]
	cmp r6, #0
	beq _02126138
	str r9, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1b
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r3, [r6, #0xc]
	mov r0, #0x18
	add r3, r6, r3
	mla r6, r2, r0, r3
	mov r2, #0
	ldr r0, _02126334 ; =gBgMenuManager
	mov r3, r2
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126138:
	ldr r2, [r5, #0xe4]
	cmp r2, #0
	beq _02126294
	ldr r1, [r2, #0xc]
	mov r0, #9
	stmia sp, {r9, r11}
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	add r10, r2, r1
	str r7, [sp, #0x10]
	str r9, [sp, #0x14]
	mov r2, #0
	str r7, [sp, #0x18]
	ldr r0, _02126334 ; =gBgMenuManager
	mov r1, r11
	mov r3, r2
	str r10, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r4
	bl FUN_0206ccdc
	add r6, r7, #0x3e4
	mov r3, r0
	str r6, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r5
	mov r1, #0xe
	mov r2, #6
	bl FUN_ov105_02125adc
	mov r0, r4
	bl FUN_0206ccec
	mov r3, r0
	str r6, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r0, r5
	mov r1, #0x12
	mov r2, #6
	bl FUN_ov105_02125adc
	mov r1, #0xf
	sub r3, r1, #0x10
	str r11, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r5
	mov r2, #6
	str r3, [sp, #0x20]
	bl FUN_ov105_02125adc
	stmia sp, {r9, r11}
	mov r1, #0x14
	str r1, [sp, #8]
	mov r1, #6
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	str r9, [sp, #0x14]
	add r2, r10, #0xc
	str r7, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _02126334 ; =gBgMenuManager
	mov r1, r11
	mov r3, r2
	bl FUN_ov16_020f5da0
	mov r0, r4
	bl FUN_0206cc84
	mov r3, r0
	mov r0, r5
	mov r1, #0x19
	mov r2, #6
	stmia sp, {r6, r8}
	bl FUN_ov105_02125adc
	mov r0, r4
	bl FUN_0206cc94
	mov r3, r0
	stmia sp, {r6, r8}
	mov r0, r5
	mov r1, #0x1d
	mov r2, #6
	bl FUN_ov105_02125adc
	str r11, [sp]
	ldr r3, [sp, #0x20]
	mov r2, #6
	mov r0, r5
	mov r1, #0x1a
	str r8, [sp, #4]
	bl FUN_ov105_02125adc
_02126294:
	ldr r0, [r5, #0x120]
	cmp r0, #0
	beq _021262CC
	mov r0, r4
	bl FUN_0206dcd4
	mov r1, #0x63
	str r1, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	ldrb r3, [r0, #0x4a]
	mov r0, r5
	mov r1, #0x19
	mov r2, #2
	bl FUN_ov105_02125adc
_021262CC:
	ldr r1, [r5, #0x12c]
	cmp r1, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x5a]
	mov r2, #0
	mov r3, r2
	cmp r0, #1
	ldr r0, [r1, #0xc]
	addeq r4, r1, r0
	addne r0, r1, r0
	addne r4, r0, #8
	str r9, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, _02126334 ; =gBgMenuManager
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126334: .word gBgMenuManager
_02126338: .word gLogicThink
	arm_func_end FUN_ov105_02125e74

	arm_func_start FUN_ov105_0212633c
FUN_ov105_0212633c: ; 0x0212633C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r8, _02126784 ; =gLogicThink
	mov r7, #0
	mov r10, r0
	mov r0, r8
	mov r3, r7
	mov r2, #0x1e
	mov r9, r1
	bl FUN_0204f02c
	ldr r6, _02126788 ; =0x000003E7
	mov r4, #0xc
	mov r11, #9
	mov r3, r0
	mov r0, r10
	str r6, [sp]
	mov r5, #3
	mov r1, r4
	mov r2, r11
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r0, r8
	mov r1, r9
	mov r2, #0x1f
	mov r3, r7
	bl FUN_0204f02c
	str r6, [sp]
	mov r3, r0
	mov r0, r10
	mov r1, r4
	mov r2, #0xb
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r0, r8
	mov r1, r9
	mov r2, #0x21
	mov r3, r7
	bl FUN_0204f02c
	str r6, [sp]
	mov r3, r0
	mov r0, r10
	mov r1, r4
	mov r2, #0xd
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r0, r8
	mov r1, r9
	mov r2, #0x20
	mov r3, r7
	bl FUN_0204f02c
	mov r1, r4
	mov r4, #0xf
	str r6, [sp]
	mov r3, r0
	mov r0, r10
	mov r2, r4
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r0, r8
	mov r1, r9
	mov r2, #0x22
	mov r3, r7
	bl FUN_0204f02c
	mov r2, r11
	mov r11, #0x1b
	str r6, [sp]
	mov r3, r0
	mov r0, r10
	mov r1, r11
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r0, r8
	mov r1, r9
	mov r2, #0x24
	mov r3, r7
	bl FUN_0204f02c
	str r6, [sp]
	mov r3, r0
	mov r2, #0xb
	mov r0, r10
	mov r1, r11
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r3, r7
	mov r0, r8
	mov r1, r9
	mov r2, #0x23
	bl FUN_0204f02c
	str r6, [sp]
	mov r3, r0
	mov r1, r11
	mov r2, #0xd
	mov r0, r10
	str r5, [sp, #4]
	bl FUN_ov105_02125adc
	mov r0, r9
	bl FUN_0206dcd4
	ldr r1, _0212678C ; =0x000F423F
	mov r3, r0
	stmia sp, {r1, r5}
	ldr r3, [r3]
	mov r2, r4
	mov r0, r10
	mov r1, #0x1d
	bl FUN_ov105_02125adc
	ldr r0, [r10, #0x14]
	cmp r0, #3
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r10, #0x1c]
	cmp r0, #0
	ldrne r1, [r10, #0x28]
	cmpne r1, #0
	ldrne r0, [r10, #0x2c]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r2, #0x98
	bl MI_CpuCopy8
	ldr r0, [r10, #0x28]
	bl FUN_0206dcd4
	mov r1, r0
	ldr r0, [r10, #0x2c]
	bl FUN_0206ed40
	ldr r2, [r10, #0x2c]
	ldr r1, [r10, #0x28]
	mov r0, r9
	str r2, [r1, #0x68]
	bl FUN_0206d5f0
	ldrsh r3, [r10, #0x1e]
	cmp r3, #4
	bne _02126564
	ldrh r2, [r10, #0x1c]
	ldr r1, [r10, #0x28]
	mov r0, r8
	bl FUN_ov16_020ee1e4
	b _0212657C
_02126564:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r10, #0x1c]
	ldr r1, [r10, #0x28]
	mov r0, r8
	bl FUN_ov16_020eea8c
_0212657C:
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, _02126784 ; =gLogicThink
	mov r5, #0x1e
	mov r6, #0
	mov r0, r7
	mov r1, r9
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	mov r4, r0
	ldr r1, [r10, #0x28]
	mov r0, r7
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	sub r3, r0, r4
	mov r5, #0xc
	mov r4, #9
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov105_02125cb0
	mov r8, #0x1f
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r8
	mov r8, r0
	ldr r1, [r10, #0x28]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	mov r11, #0xb
	sub r3, r0, r8
	mov r0, r10
	mov r1, r5
	mov r2, r11
	bl FUN_ov105_02125cb0
	mov r8, #0x21
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r8
	mov r8, r0
	ldr r1, [r10, #0x28]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r3, r0, r8
	mov r0, r10
	mov r1, r5
	mov r2, #0xd
	bl FUN_ov105_02125cb0
	mov r8, #0x20
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r8
	mov r8, r0
	ldr r1, [r10, #0x28]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r3, r0, r8
	mov r1, r5
	mov r0, r10
	mov r2, #0xf
	bl FUN_ov105_02125cb0
	mov r5, #0x22
	mov r0, r7
	mov r1, r9
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r5
	mov r5, r0
	ldr r1, [r10, #0x28]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r4
	mov r4, #0x1b
	sub r3, r0, r5
	mov r0, r10
	mov r1, r4
	bl FUN_ov105_02125cb0
	mov r5, #0x24
	mov r0, r7
	mov r1, r9
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r5
	mov r5, r0
	ldr r1, [r10, #0x28]
	mov r0, r7
	mov r3, r6
	bl FUN_0204f02c
	sub r3, r0, r5
	mov r2, r11
	mov r0, r10
	mov r1, r4
	bl FUN_ov105_02125cb0
	mov r5, #0x23
	mov r1, r9
	mov r0, r7
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	mov r2, r5
	mov r5, r0
	ldr r1, [r10, #0x28]
	mov r3, r6
	mov r0, r7
	bl FUN_0204f02c
	sub r3, r0, r5
	mov r1, r4
	mov r2, #0xd
	mov r0, r10
	bl FUN_ov105_02125cb0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126784: .word gLogicThink
_02126788: .word 0x000003E7
_0212678C: .word 0x000F423F
	arm_func_end FUN_ov105_0212633c

	arm_func_start FUN_ov105_02126790
FUN_ov105_02126790: ; 0x02126790
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x54]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldrh lr, [r0, #0x5c]
	ldrh r4, [r0, #0x5e]
	mov r3, #2
	rsb r0, lr, #0x20
	add r0, r0, r0, lsr #31
	mov r0, r0, lsl #0x17
	rsb r2, r4, #0x18
	mov r1, #1
	str r3, [sp]
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	and r0, lr, #0xff
	str r0, [sp, #0x10]
	and r0, r4, #0xff
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _02126814 ; =gBgMenuManager
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02126814: .word gBgMenuManager
	arm_func_end FUN_ov105_02126790

	arm_func_start FUN_ov105_02126818
FUN_ov105_02126818: ; 0x02126818
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x24]
	cmp r4, #0
	bne _02126844
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r4, r0
_02126844:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov105_02125d88
	mov r0, r5
	mov r1, r4
	bl FUN_ov105_02125e74
	mov r0, r5
	mov r1, r4
	bl FUN_ov105_0212633c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov105_02126818

	arm_func_start FUN_ov105_02126878
FUN_ov105_02126878: ; 0x02126878
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, r0
	ldr r6, [r9, #0x24]
	mov r4, #2
	cmp r6, #0
	mov r5, #1
	mov r10, #0
	bne _021268B8
	ldrh r0, [r9, #0x18]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r10
	bl FUN_ov16_020efa9c
	mov r6, r0
_021268B8:
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r5
	mov r2, r5
	bl FUN_ov105_02125d88
	mov r0, r9
	mov r1, r6
	bl FUN_ov105_02125e74
	ldr r6, [r9, #0x60]
	cmp r6, #0
	beq _02126934
	mov r0, #2
	stmia sp, {r0, r5}
	str r5, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldrh r1, [r9, #0x68]
	mov r3, #0
	ldr r0, _02126BE4 ; =gBgMenuManager
	and r1, r1, #0xff
	str r1, [sp, #0x10]
	ldrh r7, [r9, #0x6a]
	mov r1, r5
	mov r2, r5
	and r7, r7, #0xff
	str r7, [sp, #0x14]
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126934:
	ldr r6, [r9, #0x6c]
	cmp r6, #0
	beq _02126988
	mov r1, #1
	str r4, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldrh r2, [r9, #0x74]
	mov r3, #0
	ldr r0, _02126BE4 ; =gBgMenuManager
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r7, [r9, #0x76]
	mov r2, r1
	and r7, r7, #0xff
	str r7, [sp, #0x14]
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126988:
	ldr r6, [r9, #0x78]
	cmp r6, #0
	beq _021269DC
	mov r1, #1
	str r4, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	ldrh r2, [r9, #0x80]
	mov r3, #0
	ldr r0, _02126BE4 ; =gBgMenuManager
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r7, [r9, #0x82]
	mov r2, r1
	and r7, r7, #0xff
	str r7, [sp, #0x14]
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021269DC:
	ldr r11, _02126BE4 ; =gBgMenuManager
	mov r6, #0xb
	mov r7, #0
	mov r8, #0x19
_021269EC:
	mov r0, #0xc
	mla r0, r8, r0, r9
	ldr r1, [r0, #0x84]
	cmp r1, #0
	beq _02126B04
	stmia sp, {r4, r5}
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	mov r0, r11
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r5
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
	add r1, r9, r7, lsl #2
	ldr r0, _02126BE8 ; =gLogicThink
	ldr r1, [r1, #0x30]
	bl FUN_0204a2c4
	ldr r2, [r9, #0x1a4]
	cmp r0, #0
	cmpne r2, #0
	beq _02126BC0
	ldrb r0, [r0]
	mov r1, r10
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02126ABC
_02126A80: ; jump table
	b _02126ABC ; case 0
	b _02126ABC ; case 1
	b _02126ABC ; case 2
	b _02126ABC ; case 3
	b _02126ABC ; case 4
	b _02126AA4 ; case 5
	b _02126AA8 ; case 6
	b _02126AB0 ; case 7
	b _02126AB8 ; case 8
_02126AA4:
	b _02126ABC
_02126AA8:
	mov r1, r5
	b _02126ABC
_02126AB0:
	mov r1, r4
	b _02126ABC
_02126AB8:
	mov r1, #3
_02126ABC:
	stmia sp, {r4, r5}
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #0xa
	str r0, [sp, #0x18]
	ldr r3, [r2, #0xc]
	mov r0, r11
	add r3, r2, r3
	mov r2, #0xc
	mla r2, r1, r2, r3
	str r2, [sp, #0x1c]
	b _02126BB0
_02126B04:
	cmp r7, #4
	bge _02126BC0
	ldr r1, [r9, #0x1a4]
	cmp r1, #0
	beq _02126B68
	stmia sp, {r4, r5}
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #0xa
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	mov r0, r11
	add r1, r1, r2
	add r1, r1, #0x30
	str r1, [sp, #0x1c]
	mov r1, r5
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
_02126B68:
	ldr r1, [r9, #0x198]
	cmp r1, #0
	beq _02126BC0
	stmia sp, {r4, r5}
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	mov r0, r11
	add r1, r1, r2
	str r1, [sp, #0x1c]
_02126BB0:
	mov r1, r5
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
_02126BC0:
	add r0, r6, #2
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	add r7, r7, #1
	add r8, r8, #1
	cmp r8, #0x1e
	ble _021269EC
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126BE4: .word gBgMenuManager
_02126BE8: .word gLogicThink
	arm_func_end FUN_ov105_02126878

	arm_func_start FUN_ov105_02126bec
FUN_ov105_02126bec: ; 0x02126BEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x24]
	cmp r4, #0
	bne _02126C18
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r4, r0
_02126C18:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov105_02125d88
	mov r0, r5
	mov r1, r4
	bl FUN_ov105_02125e74
	mov r0, r5
	mov r1, r4
	bl FUN_ov105_02126878
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov105_02126bec

	arm_func_start FUN_ov105_02126c4c
FUN_ov105_02126c4c: ; 0x02126C4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, _02126CC0 ; =gBgMenuManager
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5f64
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_02126C78: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02126C94 ; case 1
	b _02126CA0 ; case 2
	b _02126CA0 ; case 3
	b _02126CA0 ; case 4
	b _02126CA0 ; case 5
	b _02126CB4 ; case 6
_02126C94:
	mov r0, r4
	bl FUN_ov105_02126790
	ldmfd sp!, {r4, pc}
_02126CA0:
	mov r0, r4
	bl FUN_ov105_02126818
	mov r0, r4
	bl FUN_ov105_02126790
	ldmfd sp!, {r4, pc}
_02126CB4:
	mov r0, r4
	bl FUN_ov105_02126bec
	ldmfd sp!, {r4, pc}
_02126CC0: .word gBgMenuManager
	arm_func_end FUN_ov105_02126c4c

	arm_func_start FUN_ov105_02126cc4
FUN_ov105_02126cc4: ; 0x02126CC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r1, _02126D6C ; =0x020A0640
	mov r7, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _02126D70 ; =gBgMenuManager
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r0, _02126D74 ; =0x0209AEC0
	bl FUN_020466c0
	ldr r3, [r7, #0x90]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r3, #0xc]
	mov r1, #0x1e
	str r5, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r2, r3, r2
	add r12, r2, r0, lsl #3
	str r1, [sp, #0x18]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02126D6C: .word unk_020A0640
_02126D70: .word gBgMenuManager
_02126D74: .word gWirelessUtil
	arm_func_end FUN_ov105_02126cc4

	arm_func_start FUN_ov105_02126d78
FUN_ov105_02126d78: ; 0x02126D78
	stmfd sp!, {r3, lr}
	bl FUN_ov105_02126cc4
	ldr r0, _02126D90 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_02126D90: .word gBgMenuManager
	arm_func_end FUN_ov105_02126d78

	arm_func_start FUN_ov105_02126d94
FUN_ov105_02126d94: ; 0x02126D94
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x48
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02126DD4
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r2, r0
_02126DD4:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov105_02126d94

	arm_func_start FUN_ov105_02126ddc
FUN_ov105_02126ddc: ; 0x02126DDC
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x48
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02126E24
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_02126E24:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov105_02126ddc

	arm_func_start FUN_ov105_02126e2c
FUN_ov105_02126e2c: ; 0x02126E2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x84
	ldr r6, [r4, r5]
	ldr r7, [sp, #0x20]
	mov r9, r2
	mov r8, r3
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8]
	mov r0, r6
	add r1, r1, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	str r0, [r8]
	ldr r1, [r4, r5]
	ldr r2, [r7]
	mov r0, #2
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov105_02126e2c

	arm_func_start FUN_ov105_02126e90
FUN_ov105_02126e90: ; 0x02126E90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	mov r6, #3
	mov r7, r2
	mov r9, r0
	mov r1, r6
	mov r2, r6
	mov r3, r8
	str r7, [sp]
	bl FUN_ov105_02126e2c
	mov r0, r9
	mov r2, r6
	mov r3, r8
	mov r1, #4
	str r7, [sp]
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r1, #5
	mov r2, r6
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r4, #8
	mov r1, r4
	mov r2, r6
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r1, #0xa
	mov r2, r6
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r5, #0xb
	mov r1, r5
	mov r2, r6
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r1, #0xd
	mov r2, r6
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r1, #0xf
	mov r2, r4
	mov r3, r8
	bl FUN_ov105_02126e2c
	mov r2, r4
	str r7, [sp]
	mov r0, r9
	mov r1, #0x10
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r1, #0x11
	mov r4, #9
	mov r2, r4
	mov r3, r8
	bl FUN_ov105_02126e2c
	mov r2, r4
	str r7, [sp]
	mov r0, r9
	mov r1, #0x12
	mov r3, r8
	bl FUN_ov105_02126e2c
	mov r2, r6
	str r7, [sp]
	mov r0, r9
	mov r1, #0xc
	mov r3, r8
	bl FUN_ov105_02126e2c
	str r7, [sp]
	mov r0, r9
	mov r2, r5
	mov r3, r8
	mov r1, #0xe
	bl FUN_ov105_02126e2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov105_02126e90

	arm_func_start FUN_ov105_02126fe8
FUN_ov105_02126fe8: ; 0x02126FE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r8, [r4, #0x84]
	mov r6, #0
	cmp r8, #0
	mov r5, #1
	beq _02127058
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	mov r2, r6
	mov r3, r5
	add r0, r8, r0
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r0, r8
	mov r1, r5
	mov r2, r5
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r6
	add r0, r8, r0
	bl GXS_LoadBG0Char
	ldr r0, [r8, #0xc]
	ldr r2, [r8, #0x10]
	mov r1, r6
	add r0, r8, r0
	bl GXS_LoadBG0Scr
_02127058:
	bl G2S_GetBG1CharPtr
	mov r7, #0x20
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r7
	bl DC_FlushRange
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r7
	bl DC_FlushRange
	str r6, [sp, #8]
	str r7, [sp, #4]
	ldr r8, [r4, #0x90]
	cmp r8, #0
	beq _02127104
	ldr r0, [r8, #0xc]
	mov r9, #2
	ldr r1, [r8, #0x10]
	mov r3, r9
	add r0, r8, r0
	add r2, r6, #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	str r0, [sp, #8]
	mov r0, r8
	mov r2, r9
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldr r0, [r8, #0x14]
	ldr r1, [sp, #4]
	ldr r2, [r8, #0x18]
	add r0, r8, r0
	bl GXS_LoadBG2Char
	ldr r1, [sp, #4]
	ldr r0, [r8, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
_02127104:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0212742C
_02127114: ; jump table
	b _02127130 ; case 0
	b _02127158 ; case 1
	b _0212718C ; case 2
	b _0212718C ; case 3
	b _0212718C ; case 4
	b _0212718C ; case 5
	b _0212729C ; case 6
_02127130:
	mov r4, #0x800
	ldr r0, _02127438 ; =0x020A8C40
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG1Scr
	ldr r0, _0212743C ; =0x020A8440
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG2Scr
	b _0212742C
_02127158:
	ldr r0, _0212743C ; =0x020A8440
	mov r1, #0
	mov r2, #0x800
	bl GXS_LoadBG2Scr
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov105_02126d94
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_ov105_02126ddc
	b _0212742C
_0212718C:
	mov r0, r4
	mov r1, r6
	mov r2, r6
	bl FUN_ov105_02126d94
	mov r8, r0
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov105_02126ddc
	mov r6, r0
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov105_02126d94
	mov r7, r0
	mov r0, r4
	mov r2, r6
	mov r1, r5
	bl FUN_ov105_02126ddc
	mov r6, r0
	ldr r0, [r4, #0x174]
	cmp r0, #0
	beq _02127204
	add r1, r7, #1
	mov r2, #5
	bl _ZN8Graphics12SetupTilemapEPvii
	ldr r1, [r4, #0x174]
	mov r0, r5
	mov r2, r6
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
_02127204:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _0212721C
	mov r1, #1
	mov r2, #5
	bl _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti
_0212721C:
	add r5, sp, #8
	mov r6, #3
	add r7, sp, #4
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #6
	str r7, [sp]
	bl FUN_ov105_02126e2c
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #7
	str r7, [sp]
	bl FUN_ov105_02126e2c
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #9
	str r7, [sp]
	bl FUN_ov105_02126e2c
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_ov105_02126e90
	mov r0, r4
	mov r3, r5
	mov r1, #0x13
	mov r2, #4
	str r7, [sp]
	bl FUN_ov105_02126e2c
	b _0212742C
_0212729C:
	mov r0, r4
	mov r1, r6
	mov r2, r6
	bl FUN_ov105_02126d94
	mov r5, r0
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov105_02126ddc
	mov r6, #2
	mov r7, r0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov105_02126d94
	mov r5, r0
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov105_02126ddc
	mov r2, r5
	mov r5, #3
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov105_02126d94
	mov r1, r5
	mov r5, r0
	mov r2, r6
	mov r0, r4
	bl FUN_ov105_02126ddc
	mov r2, r5
	mov r5, #4
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov105_02126d94
	mov r2, r6
	mov r6, r0
	mov r1, r5
	mov r0, r4
	bl FUN_ov105_02126ddc
	mov r5, r0
	ldr r0, [r4, #0x174]
	cmp r0, #0
	beq _02127370
	add r1, r6, #1
	mov r2, #5
	bl _ZN8Graphics12SetupTilemapEPvii
	ldr r1, [r4, #0x174]
	mov r2, r5
	mov r0, #1
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
_02127370:
	ldr r0, [r4, #0x180]
	cmp r0, #0
	beq _02127388
	mov r1, #1
	mov r2, #5
	bl _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti
_02127388:
	add r5, sp, #8
	add r6, sp, #4
	mov r0, r4
	mov r3, r5
	mov r1, #0x13
	mov r2, #4
	str r6, [sp]
	bl FUN_ov105_02126e2c
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov105_02126e90
	mov r0, r4
	mov r3, r5
	mov r1, #0x17
	mov r2, #7
	str r6, [sp]
	bl FUN_ov105_02126e2c
	mov r0, r4
	mov r1, #0x18
	mov r2, #0xa
	mov r3, r5
	str r6, [sp]
	bl FUN_ov105_02126e2c
	mov r7, #0x19
	mov r9, #7
	mov r8, #0xc
	b _02127424
_021273F8:
	mla r0, r7, r8, r4
	ldr r0, [r0, #0x84]
	cmp r0, #0
	beq _02127420
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r5
	str r6, [sp]
	bl FUN_ov105_02126e2c
_02127420:
	add r7, r7, #1
_02127424:
	cmp r7, #0x1e
	ble _021273F8
_0212742C:
	bl _ZN8Graphics16LoadBGPaletteSubEv
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02127438: .word gSubScreen1
_0212743C: .word gSubScreen0
	arm_func_end FUN_ov105_02126fe8

	arm_func_start FUN_ov105_02127440
FUN_ov105_02127440: ; 0x02127440
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, #1
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f4894
	mov r5, #0
	mov r1, r5
	add r0, r7, #0x48
	mov r2, #0x3c
	bl MI_CpuFill8
	add r0, r7, #0x84
	mov r1, r5
	mov r2, #0x174
	bl MI_CpuFill8
	ldr r4, _021274F4 ; =gAllocator
	mov r1, #0x98
	mov r0, r4
	bl _ZN9Allocator8allocateEm
	str r0, [r7, #0x28]
	mov r0, r4
	mov r4, #0x6c
	mov r1, r4
	bl _ZN9Allocator8allocateEm
	sub r1, r4, #0x6d
	strh r1, [r7, #0x1e]
	str r0, [r7, #0x2c]
	strb r5, [r7, #0x11]
	str r5, [r7, #0x14]
	strh r5, [r7, #0x18]
	strh r5, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	strb r5, [r7, #0x20]
	strb r5, [r7, #0x21]
	str r5, [r7, #0x24]
	mov r0, r7
	bl FUN_ov105_02124ee4
	mov r1, r6
	ldr r0, _021274F8 ; =gBgMenuManager
	bl FUN_ov16_020f5a58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021274F4: .word gAllocator
_021274F8: .word gBgMenuManager
	arm_func_end FUN_ov105_02127440

	arm_func_start FUN_ov105_021274fc
FUN_ov105_021274fc: ; 0x021274FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02127514: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02127538 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02127554 ; case 3
	b _021275B4 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _021275C8 ; case 6
	b _021275D4 ; case 7
	b _02127600 ; case 8
_02127538:
	add r0, r4, #0x1f8
	mov r1, #4
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02127554:
	ldr r1, [r4, #0xc]
	bl FUN_ov105_021259b4
	add r0, r4, #0x84
	mov r1, #0x1f
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02127588
	cmp r0, #2
	beq _02127598
	ldmfd sp!, {r4, pc}
_02127588:
	mov r0, r4
	mov r1, #2
	bl FUN_ov105_02125354
	ldmfd sp!, {r4, pc}
_02127598:
	mov r0, r4
	bl FUN_ov105_02124f80
	mov r0, r4
	bl FUN_ov105_02124e98
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021275B4:
	bl FUN_ov105_02126c4c
	mov r0, #4
	bl _ZN8Graphics9FadeInSubEl
	mov r0, #6
	str r0, [r4, #8]
_021275C8:
	mov r0, r4
	bl FUN_ov105_02126d78
	ldmfd sp!, {r4, pc}
_021275D4:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov105_021254f8
	mov r0, r4
	mov r1, #1
	bl FUN_ov105_02125354
	ldmfd sp!, {r4, pc}
_02127600:
	bl FUN_ov105_021254f8
	mov r0, r4
	mov r1, #1
	bl FUN_ov105_02125354
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov105_021274fc

	arm_func_start FUN_ov105_02127614
FUN_ov105_02127614: ; 0x02127614
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02127634
	cmp r1, #6
	beq _02127644
	ldmfd sp!, {r4, pc}
_02127634:
	bl FUN_ov105_02126fe8
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02127644:
	ldr r0, _02127654 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02127654: .word gBgMenuManager
	arm_func_end FUN_ov105_02127614

	arm_func_start FUN_ov105_02127658
FUN_ov105_02127658: ; 0x02127658
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	bl FUN_ov105_021254f8
	mov r0, r4
	bl FUN_ov105_02124f48
	ldr r8, _0212772C ; =gAllocator
	mov r9, r7
	mov r5, #0xc
_02127680:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x48]
	cmp r1, #0
	beq _0212769C
	mov r0, r8
	bl _ZN9Allocator10deallocateEPv
	str r7, [r10, #0x48]
_0212769C:
	ldr r1, [r10, #0x4c]
	cmp r1, #0
	beq _021276B4
	mov r0, r8
	bl _ZN9Allocator10deallocateEPv
	str r6, [r10, #0x4c]
_021276B4:
	add r9, r9, #1
	cmp r9, #5
	blt _02127680
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _021276D8
	ldr r0, _0212772C ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r6, [r4, #0x28]
_021276D8:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _021276F0
	ldr r0, _0212772C ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r6, [r4, #0x2c]
_021276F0:
	mov r5, #1
	ldr r0, _02127730 ; =gBgMenuManager
	mov r1, r5
	bl FUN_ov16_020f5af0
	bl FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0212772C: .word gAllocator
_02127730: .word gBgMenuManager
	arm_func_end FUN_ov105_02127658

	arm_func_start FUN_ov105_02127734
FUN_ov105_02127734: ; 0x02127734
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov105_02127734

	arm_func_start FUN_ov105_02127748
FUN_ov105_02127748: ; 0x02127748
	bx lr
	arm_func_end FUN_ov105_02127748

	arm_func_start FUN_ov105_0212774c
FUN_ov105_0212774c: ; 0x0212774C
	bx lr
	arm_func_end FUN_ov105_0212774c

	arm_func_start FUN_ov105_02127750
FUN_ov105_02127750: ; 0x02127750
	bx lr
	arm_func_end FUN_ov105_02127750

	.rodata
	.global ov105_02127754
ov105_02127754:
	.byte 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.global ov105_0212775C
ov105_0212775C:
	.word ov105_021278E8
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov105_021278F8
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov105_02127918
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov105_02127928
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov105_02127898
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov105_02127888
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov105_02127868
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov105_02127878
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov105_021278B8
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov105_021278C8
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov105_02127908
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov105_02127938
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov105_02127858
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov105_021278A8
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov105_021278D8
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov105_02127948
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov105_021277e4
FUN_ov105_021277e4: ; 0x021277E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0212782C ; =0x02127840
	str r0, [r4, #8]
	ldr r0, _02127830 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02127834 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0212782C: .word ov105_02127840
_02127830: .word 0x00009CCD
_02127834: .word 0x0000EA3C
	arm_func_end FUN_ov105_021277e4

	.section .sinit, 4
ov105_02127838:
	.word FUN_ov105_021277e4

	.data
	.global ov105_02127840
ov105_02127840:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127858
ov105_02127858:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127868
ov105_02127868:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127878
ov105_02127878:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127888
ov105_02127888:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127898
ov105_02127898:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_021278A8
ov105_021278A8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_021278B8
ov105_021278B8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_021278C8
ov105_021278C8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x39
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_021278D8
ov105_021278D8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_021278E8
ov105_021278E8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_021278F8
ov105_021278F8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127908
ov105_02127908:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127918
ov105_02127918:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127928
ov105_02127928:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127938
ov105_02127938:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127948
ov105_02127948:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127960
ov105_02127960:
	.word FUN_ov105_02127750
	.word FUN_ov105_02127734
	.word FUN_ov105_0212774c
	.word FUN_ov105_02127748
	.word FUN_ov105_02127440
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov105_021274fc
	.word FUN_ov105_02127614
	.word FUN_ov105_02127658
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
	.word FUN_ov105_02124d00
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov105_021279CC
ov105_021279CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov105_021279E4
ov105_021279E4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov105_021279FC
ov105_021279FC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov105_02127A14
ov105_02127A14:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x68
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov105_02127A34
ov105_02127A34:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov105_02127A4C
ov105_02127A4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov105_02127A64
ov105_02127A64:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov105_02127A7C
ov105_02127A7C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D
	.byte 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127A9C
ov105_02127A9C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov105_02127AB8
ov105_02127AB8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x75, 0x6E, 0x69, 0x74, 0x62, 0x61, 0x73, 0x65, 0x2E
	.byte 0x53, 0x54, 0x52, 0x00
	.global ov105_02127AD4
ov105_02127AD4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x2E, 0x53, 0x54, 0x52, 0x00
	.global ov105_02127AEC
ov105_02127AEC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63, 0x6F, 0x6D, 0x6D, 0x61
	.byte 0x6E, 0x64, 0x2E, 0x53, 0x54, 0x52, 0x00, 0x00
	.global ov105_02127B08
ov105_02127B08:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov105_02127B28
ov105_02127B28:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x00, 0x00, 0x00
	.global ov105_02127B34
ov105_02127B34:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov105_02127B40
ov105_02127B40:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x00, 0x00, 0x00
	.global ov105_02127B4C
ov105_02127B4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov105_02127B6C
ov105_02127B6C:
	.byte 0x6D, 0x73, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x30, 0x33, 0x00, 0x00, 0x00
	.global ov105_02127B78
ov105_02127B78:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov105_02127B84
ov105_02127B84:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53
	.byte 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

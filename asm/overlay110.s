
	.include "/macros/function.inc"
	.include "/include/overlay110.inc"

	.text
	arm_func_start FUN_ov110_02124d00
FUN_ov110_02124d00: ; 0x02124D00
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
	ldr r2, [r4, #0x14]
	ldr r0, [r1]
	cmp r2, r0
	beq _02124DAC
	cmp r2, #2
	bhi _02124DAC
	ldr r0, [r1]
	mov r2, #7
	str r0, [r4, #0x14]
	ldrh r3, [r1, #4]
	mov r0, #4
	strh r3, [r4, #0x18]
	ldrh r3, [r1, #6]
	strh r3, [r4, #0x1a]
	ldrh r3, [r1, #8]
	strh r3, [r4, #0x1c]
	ldrh r3, [r1, #0xa]
	strh r3, [r4, #0x1e]
	ldr r3, [r1, #0xc]
	str r3, [r4, #0x20]
	ldr r3, [r1, #0x10]
	str r3, [r4, #0x24]
	ldr r1, [r1, #0x14]
	str r1, [r4, #0x28]
	str r2, [r4, #8]
	bl _ZN8Graphics12FadeSubBlackEl
	mov r0, #1
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_02124DAC:
	ldrh r2, [r4, #0x1c]
	ldrh r0, [r1, #8]
	cmp r2, r0
	ldreqh r2, [r4, #0x1a]
	ldreqh r0, [r1, #6]
	cmpeq r2, r0
	ldreqh r2, [r4, #0x1e]
	ldreqh r0, [r1, #0xa]
	cmpeq r2, r0
	ldreq r2, [r4, #0x20]
	ldreq r0, [r1, #0xc]
	cmpeq r2, r0
	ldreq r2, [r4, #0x28]
	ldreq r0, [r1, #0x14]
	cmpeq r2, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r1]
	mov r0, r4
	str r2, [r4, #0x14]
	ldrh r3, [r1, #4]
	mov r2, #0
	strh r3, [r4, #0x18]
	ldrh r3, [r1, #6]
	strh r3, [r4, #0x1a]
	ldrh r3, [r1, #8]
	strh r3, [r4, #0x1c]
	ldrh r3, [r1, #0xa]
	strh r3, [r4, #0x1e]
	ldr r3, [r1, #0xc]
	str r3, [r4, #0x20]
	ldr r1, [r1, #0x10]
	str r1, [r4, #0x24]
	str r2, [r4, #0x28]
	bl FUN_ov110_021250bc
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov110_02124fd0
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov110_02124d00

	arm_func_start FUN_ov110_02124e50
FUN_ov110_02124e50: ; 0x02124E50
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x118
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov110_02124e50

	arm_func_start FUN_ov110_02124e74
FUN_ov110_02124e74: ; 0x02124E74
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x118
	mov r1, #3
	bl _ZN7Archive5CloseEP9SFileDatai
	add r5, r4, #0x118
	mov r6, #0
	mov r4, #0xc
_02124E94:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #3
	blt _02124E94
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov110_02124e74

	arm_func_start FUN_ov110_02124eac
FUN_ov110_02124eac: ; 0x02124EAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x70
	mov r5, r0
	add r2, sp, #0
	mov r1, #8
	mov r0, #0
_02124EC4:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _02124EC4
	ldr r1, _02124F64 ; =0x020A1640
	add r0, sp, #0
	ldrb r2, [r1, #0x1ad]
	ldr r1, _02124F68 ; =0x02127038
	add r2, r2, #1
	bl sprintf
	ldr r12, _02124F6C ; =0x02126E0C
	add r6, sp, #0x20
	mov r4, #5
_02124F04:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02124F04
	add r0, sp, #0
	str r0, [sp, #0x60]
	ldr r7, [r5, #0x94]
	add r4, sp, #0x20
	cmp r7, #0
	addeq sp, sp, #0x70
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r5, #0x88
	mov r5, #0xc
	b _02124F50
_02124F3C:
	ldmia r4, {r0, r2}
	mla r1, r2, r5, r6
	mov r2, r7
	bl _ZN7Archive11ReadFromSFPEPcP9SFileDataS0_
	add r4, r4, #8
_02124F50:
	ldr r0, [r4]
	cmp r0, #0
	bne _02124F3C
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124F64: .word unk_020A1640
_02124F68: .word ov110_02127038
_02124F6C: .word ov110_02126E0C
	arm_func_end FUN_ov110_02124eac

	arm_func_start FUN_ov110_02124f70
FUN_ov110_02124f70: ; 0x02124F70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	ldr r4, _02124FC8 ; =0x0212704C
	cmp r0, #1
	beq _02124F90
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, pc}
_02124F90:
	ldrh r1, [r5, #0x1c]
	ldr r0, _02124FCC ; =gLogicThink
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x2a]
	mov r0, r4
	add r1, r5, #0xd0
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl _ZN7Archive16RequestNewReadExEPKcP9SFileDatalmi
	ldmfd sp!, {r3, r4, r5, pc}
_02124FC8: .word ov110_0212704C
_02124FCC: .word gLogicThink
	arm_func_end FUN_ov110_02124f70

	arm_func_start FUN_ov110_02124fd0
FUN_ov110_02124fd0: ; 0x02124FD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02124FF4
	cmp r1, #2
	moveq r0, #1
	streqb r0, [r4, #0x11]
	b _021250A0
_02124FF4:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x88
	mov r2, #0x90
	bl MI_CpuFill8
	ldr r5, _021250AC ; =0x020A9440
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021250B0 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	mov r0, r7
	ldr r5, _021250B4 ; =0x020A8C40
	mov r2, r6
	mov r1, r5
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02125098
	cmp r0, #1
	cmpne r0, #2
	bne _02125098
	ldr r0, _021250B8 ; =0x02127064
	add r1, r4, #0x94
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	mov r0, r4
	bl FUN_ov110_02124f70
_02125098:
	mov r0, #1
	strb r0, [r4, #0x11]
_021250A0:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021250AC: .word gSubScreen2
_021250B0: .word gSubScreen0
_021250B4: .word gSubScreen1
_021250B8: .word ov110_02127064
	arm_func_end FUN_ov110_02124fd0

	arm_func_start FUN_ov110_021250bc
FUN_ov110_021250bc: ; 0x021250BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x88
	mov r1, #0xc
	bl _ZN7Archive5CloseEP9SFileDatai
	add r5, r4, #0x88
	mov r6, #0
	mov r4, #0xc
_021250DC:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #0xc
	blt _021250DC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov110_021250bc

	arm_func_start FUN_ov110_021250f4
FUN_ov110_021250f4: ; 0x021250F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125124
	ldr r0, _0212518C ; =gAllocator
	mov r1, r5, lsl #1
	bl _ZN9Allocator8allocateEm
	str r0, [r4]
_02125124:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02125140
	ldr r0, _0212518C ; =gAllocator
	mov r1, r5, lsl #5
	bl _ZN9Allocator8allocateEm
	str r0, [r4, #4]
_02125140:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125178
_02125160:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125160
_02125178:
	ldr r1, [r4, #4]
	mov r2, r5, lsl #5
	mov r0, #0
	bl MIi_CpuClear32
	ldmfd sp!, {r3, r4, r5, pc}
_0212518C: .word gAllocator
	arm_func_end FUN_ov110_021250f4

	arm_func_start FUN_ov110_02125190
FUN_ov110_02125190: ; 0x02125190
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	ldr r6, _0212531C ; =0x02126FA4
	add r5, sp, #0x2c
	mov r4, r0
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r6, _02125320 ; =gLogicThink
	mov r2, #0
	ldrh r1, [r4, #0x1c]
	mov r0, r6
	str r2, [r4, #0x54]
	bl FUN_ov16_020ee034
	movs r5, r0
	beq _02125280
	bl FUN_ov16_020eef1c
	cmp r0, #0
	beq _02125280
	add r2, sp, #0x1c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020eee80
	cmp r0, #0
	bne _02125280
	ldrsb r0, [sp, #0x20]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x54]
	bne _02125280
	ldrsb r0, [sp, #0x21]
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #0x54]
	bne _02125280
	ldrsb r0, [sp, #0x22]
	cmp r0, #0
	movne r0, #3
	strne r0, [r4, #0x54]
	bne _02125280
	ldrsb r0, [sp, #0x23]
	cmp r0, #0
	movne r0, #4
	strne r0, [r4, #0x54]
	bne _02125280
	ldrsb r0, [sp, #0x24]
	cmp r0, #0
	movne r0, #5
	strne r0, [r4, #0x54]
	bne _02125280
	ldrsb r0, [sp, #0x25]
	cmp r0, #0
	movne r0, #6
	strne r0, [r4, #0x54]
	bne _02125280
	ldrsb r0, [sp, #0x26]
	cmp r0, #0
	movne r0, #7
	strne r0, [r4, #0x54]
_02125280:
	mov r0, r4
	add r1, r4, #0x7c
	mov r2, #0x18
	mov r3, #2
	bl FUN_ov110_021250f4
	ldr r1, [r4, #0x80]
	cmp r1, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldrh r3, [r4, #0x84]
	mov r1, #0
	ldr r0, _02125324 ; =gFont12
	mov r3, r3, lsl #3
	str r3, [sp, #0xc]
	ldrh r12, [r4, #0x86]
	add r3, sp, #0x2c
	mov r12, r12, lsl #3
	str r12, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r0]
	ldr lr, [r4, #0x54]
	ldr r12, [r0]
	ldr r3, [r3, lr, lsl #2]
	ldr r12, [r12, #8]
	blx r12
	ldrh r2, [r4, #0x84]
	ldrh r1, [r4, #0x86]
	ldr r0, [r4, #0x80]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212531C: .word ov110_02126FA4
_02125320: .word gLogicThink
_02125324: .word gFont12
	arm_func_end FUN_ov110_02125190

	arm_func_start FUN_ov110_02125328
FUN_ov110_02125328: ; 0x02125328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa0
	mov r9, r0
	ldrh r1, [r9, #0x1c]
	ldr r0, _02125738 ; =gLogicThink
	bl FUN_ov16_020ee034
	mov r10, #0
	cmp r0, #0
	mov r5, #0
	ldr r1, [r9, #0x2c]
	str r0, [sp, #0x1c]
	ldrneb r10, [r0, #0x1d]
	mov r0, r5
	mov r2, #0x980
	bl MIi_CpuClearFast
	ldr r4, _02125738 ; =gLogicThink
	sub r11, r10, #0x16
_0212536C:
	add r0, r9, r5, lsl #1
	ldrh r0, [r0, #0x34]
	mov r1, #0
	bl FUN_ov16_020efa9c
	ldr r2, [r9, #0x2c]
	mov r1, #0x98
	mla r6, r5, r1, r2
	cmp r0, #0
	beq _02125560
	mov r1, r6
	mov r2, #0x98
	bl MI_CpuCopy8
	mov r0, #0x6c
	mul r7, r5, r0
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	ldr r0, [r9, #0x30]
	add r0, r0, r7
	bl FUN_0206ed40
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldr r0, [r9, #0x30]
	add r0, r0, r7
	str r0, [r6, #0x68]
	beq _02125560
	cmp r11, #3
	addls pc, pc, r11, lsl #2
	b _02125560
_021253E0: ; jump table
	b _021253F0 ; case 0
	b _0212540C ; case 1
	b _02125420 ; case 2
	b _02125420 ; case 3
_021253F0:
	mov r0, #1
	str r0, [sp]
	mov r1, r6
	mov r0, r4
	ldrh r2, [r9, #0x1c]
	mov r3, #0
	b _0212555C
_0212540C:
	mov r1, r6
	mov r0, r4
	ldrh r2, [r9, #0x1c]
	bl FUN_ov16_020ee1e4
	b _02125560
_02125420:
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r1, [r0, #0x12]
	mov r0, r4
	bl FUN_ov16_020ee034
	mov r7, r0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r1, [r0, #0x14]
	mov r0, r4
	bl FUN_ov16_020ee034
	mov r8, r0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	bne _02125490
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	bne _02125490
	mov r0, #1
	str r0, [sp]
	mov r1, r6
	mov r0, r4
	ldrh r2, [r9, #0x1c]
	b _02125558
_02125490:
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _021254B0
	ldrb r0, [r7, #0x1d]
	cmp r0, #0x18
	beq _021254D0
_021254B0:
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _021254F8
	ldrb r0, [r8, #0x1d]
	cmp r0, #0x19
	bne _021254F8
_021254D0:
	mov r0, #1
	str r0, [sp]
	cmp r10, #0x18
	mov r1, r6
	mov r0, r4
	ldrh r2, [r9, #0x1c]
	bne _021254F0
	b _02125558
_021254F0:
	mov r3, #2
	b _0212555C
_021254F8:
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _02125518
	ldrb r0, [r7, #0x1d]
	cmp r0, #0x19
	beq _02125538
_02125518:
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _02125560
	ldrb r0, [r8, #0x1d]
	cmp r0, #0x18
	bne _02125560
_02125538:
	mov r0, #1
	str r0, [sp]
	cmp r10, #0x18
	mov r1, r6
	mov r0, r4
	ldrh r2, [r9, #0x1c]
	bne _02125558
	b _021254F0
_02125558:
	mov r3, #1
_0212555C:
	bl FUN_ov16_020eea8c
_02125560:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0212536C
	mov r0, r9
	add r1, r9, #0x58
	mov r2, #9
	mov r3, #0x10
	mov r5, #0
	bl FUN_ov110_021250f4
	ldr r0, [r9, #0x5c]
	cmp r0, #0
	beq _0212564C
	mov r6, r5
	ldr r8, _0212573C ; =0x02127084
	strb r6, [sp, #0x20]
	add r4, sp, #0x20
	mov r7, #0x98
_021255A4:
	ldr r1, [r9, #0x2c]
	mov r0, r4
	mla r1, r6, r7, r1
	add r1, r1, #0x1c
	bl strcat
	mov r0, r4
	mov r1, r8
	bl strcat
	add r6, r6, #1
	cmp r6, #8
	blt _021255A4
	ldr r6, _02125740 ; =gFont12
	mov r1, r5
	ldr r0, [r6]
	mov r2, #5
	bl FUN_02043310
	mov r2, #3
	stmia sp, {r2, r5}
	ldr r0, [r9, #0x5c]
	mov r3, r4
	str r0, [sp, #8]
	ldrh r0, [r9, #0x60]
	mov r1, r5
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0x62]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, [r6]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldr r0, [r6]
	bl FUN_0204331c
	ldrh r2, [r9, #0x60]
	ldrh r1, [r9, #0x62]
	ldr r0, [r9, #0x5c]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
_0212564C:
	mov r0, r9
	add r1, r9, #0x64
	mov r2, #9
	mov r3, #0x10
	bl FUN_ov110_021250f4
	ldr r0, [r9, #0x68]
	cmp r0, #0
	addeq sp, sp, #0xa0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	ldr r8, _02125744 ; =0x02127088
	strb r6, [sp, #0x20]
	add r4, sp, #0x20
	mov r7, #0x98
_02125684:
	ldr r1, [r9, #0x2c]
	add r0, r6, #8
	mla r1, r0, r7, r1
	mov r0, r4
	add r1, r1, #0x1c
	bl strcat
	mov r0, r4
	mov r1, r8
	bl strcat
	add r6, r6, #1
	cmp r6, #8
	blt _02125684
	ldr r6, _02125740 ; =gFont12
	mov r1, r5
	ldr r0, [r6]
	mov r2, #5
	bl FUN_02043310
	mov r2, #3
	stmia sp, {r2, r5}
	ldr r0, [r9, #0x68]
	mov r3, r4
	str r0, [sp, #8]
	ldrh r0, [r9, #0x6c]
	mov r1, r5
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0x6e]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, [r6]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldr r0, [r6]
	bl FUN_0204331c
	ldrh r2, [r9, #0x6c]
	ldrh r1, [r9, #0x6e]
	ldr r0, [r9, #0x68]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0xa0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125738: .word gLogicThink
_0212573C: .word ov110_02127084
_02125740: .word gFont12
_02125744: .word ov110_02127088
	arm_func_end FUN_ov110_02125328

	arm_func_start FUN_ov110_02125748
FUN_ov110_02125748: ; 0x02125748
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r3, r5, #0x58
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1e
	mov r3, #6
	bl FUN_ov110_021250f4
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r5, #0xd0]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r2, #3
	str r2, [sp]
	str r2, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	mov r2, #4
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov110_02125748

	arm_func_start FUN_ov110_021257e8
FUN_ov110_021257e8: ; 0x021257E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x11]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #0x18]
	mov r1, #0
	strb r1, [r5, #0x11]
	cmp r0, #0
	beq _02125818
	bl FUN_ov16_020efa9c
_02125818:
	cmp r4, #1
	beq _0212582C
	cmp r4, #2
	beq _0212584C
	ldmfd sp!, {r3, r4, r5, pc}
_0212582C:
	ldr r0, [r5, #0x14]
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov110_02125328
	mov r0, r5
	bl FUN_ov110_02125190
	ldmfd sp!, {r3, r4, r5, pc}
_0212584C:
	ldr r0, [r5, #0x14]
	cmp r0, #1
	cmpne r0, #2
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #2
	bl FUN_ov110_02125748
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov110_021257e8

	arm_func_start FUN_ov110_0212586c
FUN_ov110_0212586c: ; 0x0212586C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x4c]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x88]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	mov r7, #1
	cmp r9, r0
	movgt r9, r0
	ldr r0, [r4, #0xc]
	mov r5, #2
	add r8, r4, r0
	mov r0, r2, lsl #0x18
	ldr r4, _02125944 ; =0x66666667
	mov r6, r0, asr #0x18
	mov r11, #0xa
_021258C4:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	str r7, [sp]
	mov r1, r10, lsl #0x18
	sub r2, r9, r0
	add r0, r8, r2, lsl #2
	mov r1, r1, asr #0x18
	str r7, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r1, r9
	str r0, [sp, #0x1c]
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	add r9, r0, r9, asr #2
	ldr r0, _02125948 ; =gBgMenuManager
	mov r1, r7
	mov r2, r7
	mov r3, #0
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _021258C4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125944: .word 0x66666667
_02125948: .word gBgMenuManager
	arm_func_end FUN_ov110_0212586c

	arm_func_start FUN_ov110_0212594c
FUN_ov110_0212594c: ; 0x0212594C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r0, #0x378
	mov r6, r1
	mov r12, #1
	mov r4, r3
	sub r3, r12, #0x3e8
	mov r1, #0
	cmp r4, r3
	rsb r0, r0, #0
	moveq r1, r12
	cmp r4, r0
	moveq r12, #0
	cmp r4, #0
	mov r5, r2
	moveq r3, #8
	moveq r8, #5
	beq _021259AC
	movgt r3, #0
	movgt r8, #3
	movle r3, #4
	movle r8, r3
	rsble r4, r4, #0
_021259AC:
	cmp r1, #0
	beq _02125A34
	mov r0, r6, lsl #3
	add r1, r0, #8
	mov r0, r1, asr #2
	ldr r3, [r7, #0xdc]
	add r0, r1, r0, lsr #29
	mov r0, r0, lsl #0xd
	cmp r3, #0
	addeq sp, sp, #0x20
	mov r0, r0, asr #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #1
	str r1, [sp]
	mov r0, r0, lsl #0x18
	mov r2, r5, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02125AD0 ; =gBgMenuManager
	add r4, r3, r2
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125A34:
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #0xa0]
	cmp r2, #0
	beq _02125AA0
	mov r1, #1
	str r1, [sp]
	mov r0, r6, lsl #0x18
	mov r12, r5, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r12, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r12, [r2, #0xc]
	ldr r0, _02125AD0 ; =gBgMenuManager
	add r2, r2, r12
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125AA0:
	add r0, r6, #2
	ldr r2, _02125AD4 ; =0x000003E7
	mov r1, r0, lsl #0x10
	str r2, [sp]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	mov r1, r1, asr #0x10
	str r8, [sp, #4]
	bl FUN_ov110_0212586c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125AD0: .word gBgMenuManager
_02125AD4: .word 0x000003E7
	arm_func_end FUN_ov110_0212594c

	arm_func_start FUN_ov110_02125ad8
FUN_ov110_02125ad8: ; 0x02125AD8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	mov r5, r0
	ldr r6, [r5, #0x58]
	cmp r6, #0
	beq _02125B38
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0x60]
	mov r3, #0
	ldr r0, _02125D28 ; =gBgMenuManager
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r4, [r5, #0x62]
	mov r2, r1
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125B38:
	ldr r6, [r5, #0x64]
	cmp r6, #0
	beq _02125B90
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0x6c]
	mov r3, #0
	ldr r0, _02125D28 ; =gBgMenuManager
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r4, [r5, #0x6e]
	mov r2, r1
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125B90:
	ldr r6, [r5, #0x7c]
	cmp r6, #0
	beq _02125BE4
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldrh r4, [r5, #0x84]
	ldr r0, _02125D28 ; =gBgMenuManager
	mov r3, r2
	and r4, r4, #0xff
	str r4, [sp, #0x10]
	ldrh r4, [r5, #0x86]
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125BE4:
	ldr r4, [r5, #0x100]
	cmp r4, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r7, _02125D2C ; =0x02126DD4
	add r6, sp, #0x30
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r7, _02125D30 ; =gLogicThink
	ldrh r1, [r5, #0x1c]
	mov r0, r7
	bl FUN_ov16_020ee034
	movs r6, r0
	mov r5, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_ov16_020eef1c
	cmp r0, #0
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r2, sp, #0x20
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020eee80
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldrsb r0, [sp, #0x24]
	cmp r0, #0
	bne _02125CC0
	ldrsb r0, [sp, #0x25]
	cmp r0, #0
	movne r5, #1
	bne _02125CC0
	ldrsb r0, [sp, #0x27]
	cmp r0, #0
	movne r5, #2
	bne _02125CC0
	ldrsb r0, [sp, #0x26]
	cmp r0, #0
	movne r5, #3
	bne _02125CC0
	ldrsb r0, [sp, #0x28]
	cmp r0, #0
	movne r5, #4
	bne _02125CC0
	ldrsb r0, [sp, #0x2a]
	cmp r0, #0
	movne r5, #5
	bne _02125CC0
	ldrsb r0, [sp, #0x29]
	cmp r0, #0
	movne r5, #6
_02125CC0:
	mov r1, #1
	str r1, [sp]
	add r0, sp, #0x30
	str r1, [sp, #4]
	ldr r3, [r0, r5, lsl #2]
	mov r2, #0
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _02125D28 ; =gBgMenuManager
	add r3, r4, r3
	add r4, r3, r5, lsl #3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02125D28: .word gBgMenuManager
_02125D2C: .word ov110_02126DD4
_02125D30: .word gLogicThink
	arm_func_end FUN_ov110_02125ad8

	arm_func_start FUN_ov110_02125d34
FUN_ov110_02125d34: ; 0x02125D34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r6, _02126008 ; =0x02126DF0
	add r4, sp, #4
	mov r10, r0
	mov r5, r4
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r6, #0
	ldr r11, _0212600C ; =gLogicThink
	mov r4, r6
_02125D68:
	add r0, r10, r6, lsl #1
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _02125EA0
	mov r2, #0x98
	mul r2, r6, r2
	mov r1, r4
	str r2, [sp]
	ldr r9, [r10, #0x2c]
	bl FUN_ov16_020efa9c
	ldr r1, [r10, #0x54]
	mov r8, r0
	mov r7, r4
	cmp r1, #1
	blt _02125DEC
	cmp r1, #7
	bgt _02125DEC
	add r0, r5, r1, lsl #2
	ldr r1, [sp]
	ldr r2, [r0, #-4]
	mov r0, r11
	mov r3, r4
	add r1, r9, r1
	bl FUN_0204f02c
	ldr r1, [r10, #0x54]
	mov r7, r0
	add r0, r5, r1, lsl #2
	ldr r2, [r0, #-4]
	mov r0, r11
	mov r1, r8
	mov r3, r4
	bl FUN_0204f02c
	sub r7, r7, r0
_02125DEC:
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r9, [r10, #0x1c]
	ldrh r0, [r0, #0x10]
	cmp r9, r0
	beq _02125E48
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r9, [r10, #0x1c]
	ldrh r0, [r0, #0x12]
	cmp r9, r0
	beq _02125E48
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r9, [r10, #0x1c]
	ldrh r0, [r0, #0x14]
	cmp r9, r0
	beq _02125E48
	mov r0, r11
	mov r1, r8
	bl FUN_ov16_020ee430
	cmp r9, r0
	bne _02125E4C
_02125E48:
	ldr r7, _02126010 ; =0xFFFFFC19
_02125E4C:
	mov r0, r11
	mov r1, r9
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneb r0, [r0, #0x1d]
	cmpne r0, #0x16
	cmpne r0, #0x19
	cmpne r0, #0x18
	cmpne r0, #0x17
	ldrne r0, _02126010 ; =0xFFFFFC19
	addne r7, r0, #0x6f
	mov r0, r6, lsl #4
	add r1, r0, #0x10
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r2, r0, lsl #0xd
	mov r0, r10
	mov r1, #0xc
	mov r3, r7
	mov r2, r2, asr #0x10
	bl FUN_ov110_0212594c
_02125EA0:
	add r6, r6, #1
	cmp r6, #8
	blt _02125D68
	mov r7, #0
	ldr r4, _0212600C ; =gLogicThink
	mov r5, r7
_02125EB8:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	beq _02125FF4
	add r3, r7, #8
	mov r2, #0x98
	mov r1, r5
	mul r11, r3, r2
	ldr r6, [r10, #0x2c]
	bl FUN_ov16_020efa9c
	ldr r1, [r10, #0x54]
	mov r8, r0
	mov r9, r5
	cmp r1, #1
	blt _02125F40
	cmp r1, #7
	bgt _02125F40
	add r0, sp, #4
	add r0, r0, r1, lsl #2
	ldr r2, [r0, #-4]
	mov r0, r4
	mov r3, r5
	add r1, r6, r11
	bl FUN_0204f02c
	mov r6, r0
	ldr r1, [r10, #0x54]
	add r0, sp, #4
	add r0, r0, r1, lsl #2
	ldr r2, [r0, #-4]
	mov r0, r4
	mov r1, r8
	mov r3, r5
	bl FUN_0204f02c
	sub r9, r6, r0
_02125F40:
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r6, [r10, #0x1c]
	ldrh r0, [r0, #0x10]
	cmp r6, r0
	beq _02125F9C
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r6, [r10, #0x1c]
	ldrh r0, [r0, #0x12]
	cmp r6, r0
	beq _02125F9C
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r6, [r10, #0x1c]
	ldrh r0, [r0, #0x14]
	cmp r6, r0
	beq _02125F9C
	mov r0, r4
	mov r1, r8
	bl FUN_ov16_020ee430
	cmp r6, r0
	bne _02125FA0
_02125F9C:
	ldr r9, _02126010 ; =0xFFFFFC19
_02125FA0:
	mov r0, r4
	mov r1, r6
	bl FUN_ov16_020ee034
	cmp r0, #0
	ldrneb r0, [r0, #0x1d]
	cmpne r0, #0x16
	cmpne r0, #0x19
	cmpne r0, #0x18
	cmpne r0, #0x17
	ldrne r0, _02126010 ; =0xFFFFFC19
	addne r9, r0, #0x6f
	mov r0, r7, lsl #4
	add r1, r0, #0x10
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r2, r0, lsl #0xd
	mov r0, r10
	mov r1, #0x1c
	mov r3, r9
	mov r2, r2, asr #0x10
	bl FUN_ov110_0212594c
_02125FF4:
	add r7, r7, #1
	cmp r7, #8
	blt _02125EB8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126008: .word ov110_02126DF0
_0212600C: .word gLogicThink
_02126010: .word 0xFFFFFC19
	arm_func_end FUN_ov110_02125d34

	arm_func_start FUN_ov110_02126014
FUN_ov110_02126014: ; 0x02126014
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	mov r9, r1
	mov r1, #7
	mov r0, #0xc
	mla r5, r1, r0, r10
	mov r11, #0
	mov r7, r11
	mov r4, #1
_0212603C:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _021260E8
	mov r1, r11
	bl FUN_ov16_020efa9c
	mov r6, r0
	mov r8, r11
_0212605C:
	mov r0, r6
	mov r1, r8
	bl FUN_0206cdf8
	cmp r9, r0
	bne _021260DC
	ldr r1, [r5, #0x88]
	cmp r1, #0
	beq _021260E8
	mov r0, r7, lsl #4
	add r2, r0, #0x10
	mov r0, r2, asr #2
	str r4, [sp]
	add r0, r2, r0, lsr #29
	mov r2, r0, lsl #0x15
	str r4, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _021261CC ; =gBgMenuManager
	add r3, r1, r2
	mov r2, #0
	str r3, [sp, #0x1c]
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_020f5da0
	b _021260E8
_021260DC:
	add r8, r8, #1
	cmp r8, #6
	blt _0212605C
_021260E8:
	add r7, r7, #1
	cmp r7, #8
	blt _0212603C
	mov r1, #7
	mov r0, #0xc
	mla r5, r1, r0, r10
	mov r11, #0
	mov r7, r11
	mov r4, #1
_0212610C:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x44]
	cmp r0, #0
	beq _021261B8
	mov r1, r11
	bl FUN_ov16_020efa9c
	mov r6, r0
	mov r8, r11
_0212612C:
	mov r0, r6
	mov r1, r8
	bl FUN_0206cdf8
	cmp r9, r0
	bne _021261AC
	ldr r1, [r5, #0x88]
	cmp r1, #0
	beq _021261B8
	mov r0, r7, lsl #4
	add r2, r0, #0x10
	mov r0, r2, asr #2
	str r4, [sp]
	add r0, r2, r0, lsr #29
	mov r2, r0, lsl #0x15
	str r4, [sp, #4]
	mov r0, #0x1d
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _021261CC ; =gBgMenuManager
	add r3, r1, r2
	mov r2, #0
	str r3, [sp, #0x1c]
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_020f5da0
	b _021261B8
_021261AC:
	add r8, r8, #1
	cmp r8, #6
	blt _0212612C
_021261B8:
	add r7, r7, #1
	cmp r7, #8
	blt _0212610C
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021261CC: .word gBgMenuManager
	arm_func_end FUN_ov110_02126014

	arm_func_start FUN_ov110_021261d0
FUN_ov110_021261d0: ; 0x021261D0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r1, [r0, #0x24]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	ldr r12, [r0, #0x20]
	ldr r0, [r0, #0xf4]
	mov r3, r12, lsr #0x1f
	mov r1, r12, asr #2
	rsb r2, r3, r12, lsl #29
	add r1, r12, r1, lsr #29
	add r2, r3, r2, ror #29
	mov r3, r1, asr #3
	mov r1, r2, lsl #4
	mov r12, r3, lsl #7
	add r3, r1, #0x10
	mov r1, r12, asr #2
	mov r2, r3, asr #2
	add r1, r12, r1, lsr #29
	add r2, r3, r2, lsr #29
	mov r1, r1, lsl #0x15
	mov r2, r2, lsl #0x15
	cmp r0, #0
	mov r3, r1, asr #0x18
	addeq sp, sp, #0x20
	mov r2, r2, asr #0x18
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	str r1, [sp]
	stmib sp, {r1, r3}
	str r2, [sp, #0xc]
	mov r2, #0x10
	str r2, [sp, #0x10]
	mov r2, #2
	str r2, [sp, #0x14]
	mov r2, #5
	str r2, [sp, #0x18]
	ldr r3, [r0, #0xc]
	mov r2, #0
	add r12, r0, r3
	ldr r0, _0212628C ; =gBgMenuManager
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0212628C: .word gBgMenuManager
	arm_func_end FUN_ov110_021261d0

	arm_func_start FUN_ov110_02126290
FUN_ov110_02126290: ; 0x02126290
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r12, [r4, #0x10c]
	cmp r12, #0
	beq _021262F0
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _02126350 ; =gBgMenuManager
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021262F0:
	ldr r12, [r4, #0x70]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldrh r3, [r4, #0x78]
	mov r2, #0
	ldr r0, _02126350 ; =gBgMenuManager
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r4, [r4, #0x7a]
	mov r3, r2
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02126350: .word gBgMenuManager
	arm_func_end FUN_ov110_02126290

	arm_func_start FUN_ov110_02126354
FUN_ov110_02126354: ; 0x02126354
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	ldrh r0, [r7, #0x18]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r4, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r7, #0x1c]
	cmp r1, #0
	beq _021263A8
	ldr r0, _02126440 ; =gLogicThink
	bl FUN_ov16_020ee034
	movs r5, r0
	ldrneb r6, [r5, #0x1d]
_021263A8:
	ldr r12, [r7, #0x88]
	cmp r12, #0
	beq _021263F8
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x18
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _02126444 ; =gBgMenuManager
	add r12, r12, r2
	mov r2, #2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021263F8:
	mov r0, r7
	mov r1, r4
	bl FUN_ov110_02125ad8
	cmp r6, #0xf
	beq _0212641C
	mov r0, r7
	mov r1, r4
	bl FUN_ov110_02125d34
	b _02126430
_0212641C:
	mov r0, r5
	bl FUN_ov16_020eef40
	mov r1, r0
	mov r0, r7
	bl FUN_ov110_02126014
_02126430:
	mov r0, r7
	bl FUN_ov110_021261d0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02126440: .word gLogicThink
_02126444: .word gBgMenuManager
	arm_func_end FUN_ov110_02126354

	arm_func_start FUN_ov110_02126448
FUN_ov110_02126448: ; 0x02126448
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _021264C4 ; =gBgMenuManager
	mov r5, #1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5f64
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_020f5f64
	ldr r0, [r7, #0x14]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #1
	beq _021264A4
	cmp r0, #2
	beq _021264B0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021264A4:
	mov r0, r7
	bl FUN_ov110_02126290
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021264B0:
	mov r0, r7
	bl FUN_ov110_02126354
	mov r0, r7
	bl FUN_ov110_02126290
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021264C4: .word gBgMenuManager
	arm_func_end FUN_ov110_02126448

	arm_func_start FUN_ov110_021264c8
FUN_ov110_021264c8: ; 0x021264C8
	ldr r0, _021264D8 ; =gBgMenuManager
	ldr r12, _021264DC ; = FUN_ov16_020f672c
	mov r1, #1
	bx r12
_021264D8: .word gBgMenuManager
_021264DC: .word FUN_ov16_020f672c
	arm_func_end FUN_ov110_021264c8

	arm_func_start FUN_ov110_021264e0
FUN_ov110_021264e0: ; 0x021264E0
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x58
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02126520
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r2, r0
_02126520:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov110_021264e0

	arm_func_start FUN_ov110_02126528
FUN_ov110_02126528: ; 0x02126528
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x58
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02126570
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
_02126570:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov110_02126528

	arm_func_start FUN_ov110_02126578
FUN_ov110_02126578: ; 0x02126578
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x58
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021265C0
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_021265C0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov110_02126578

	arm_func_start FUN_ov110_021265c8
FUN_ov110_021265c8: ; 0x021265C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x88
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
	mov r0, #0
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov110_021265c8

	arm_func_start FUN_ov110_0212662c
FUN_ov110_0212662c: ; 0x0212662C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x88
	ldr r8, [r6, r7]
	ldr r9, [sp, #0x20]
	mov r4, r2
	mov r5, r3
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5]
	mov r0, r8
	add r1, r1, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	str r0, [r5]
	mov r5, #1
	ldr r1, [r6, r7]
	ldr r2, [r9]
	mov r0, r5
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	str r0, [r9]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov110_0212662c

	arm_func_start FUN_ov110_02126694
FUN_ov110_02126694: ; 0x02126694
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x88
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
	arm_func_end FUN_ov110_02126694

	arm_func_start FUN_ov110_021266f8
FUN_ov110_021266f8: ; 0x021266F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	bl G2S_GetBG0CharPtr
	mov r5, #0x20
	mov r7, #0
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r7, [sp, #0x18]
	str r5, [sp, #0xc]
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r7, [sp, #0x14]
	str r5, [sp, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r7, [sp, #0x10]
	str r5, [sp, #4]
	bl G2S_GetBG3CharPtr
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG3CharPtr
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021267C4
	cmp r0, #1
	beq _021267FC
	cmp r0, #2
	beq _0212683C
	b _021269C0
_021267C4:
	mov r4, #0x800
	ldr r0, _021269CC ; =0x020A9440
	mov r1, r7
	mov r2, r4
	bl GXS_LoadBG0Scr
	ldr r0, _021269D0 ; =0x020A8C40
	mov r1, r7
	mov r2, r4
	bl GXS_LoadBG1Scr
	ldr r0, _021269D4 ; =0x020A8440
	mov r1, r7
	mov r2, r4
	bl GXS_LoadBG2Scr
	b _021269C0
_021267FC:
	ldr r0, _021269D4 ; =0x020A8440
	mov r1, r7
	mov r2, #0x800
	bl GXS_LoadBG2Scr
	mov r5, #2
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r5
	bl FUN_ov110_021264e0
	str r0, [sp, #0x10]
	ldr r2, [sp, #4]
	mov r0, r4
	mov r1, r5
	bl FUN_ov110_02126578
	str r0, [sp, #4]
	b _021269C0
_0212683C:
	add r6, sp, #0xc
	mov r5, #1
	add r3, sp, #0x18
	mov r0, r4
	mov r1, r7
	mov r2, r5
	str r6, [sp]
	bl FUN_ov110_021265c8
	ldr r2, [sp, #0x14]
	mov r0, r4
	mov r1, r7
	bl FUN_ov110_021264e0
	str r0, [sp, #0x14]
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r7
	bl FUN_ov110_02126528
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	mov r0, r4
	mov r1, r5
	bl FUN_ov110_021264e0
	str r0, [sp, #0x14]
	ldr r2, [sp, #8]
	mov r1, r5
	mov r0, r4
	bl FUN_ov110_02126528
	mov r7, #2
	add r6, sp, #0x14
	str r0, [sp, #8]
	add r8, sp, #8
	mov r0, r4
	mov r1, r7
	mov r2, r7
	mov r3, r6
	str r8, [sp]
	bl FUN_ov110_0212662c
	mov r5, #3
	str r8, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl FUN_ov110_0212662c
	str r8, [sp]
	mov r0, r4
	mov r1, #4
	mov r2, r7
	mov r3, r6
	bl FUN_ov110_0212662c
	str r8, [sp]
	mov r0, r4
	mov r1, #7
	mov r2, r7
	mov r3, r6
	bl FUN_ov110_0212662c
	str r8, [sp]
	mov r3, r6
	mov r0, r4
	mov r1, #0xb
	mov r2, #6
	bl FUN_ov110_0212662c
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	bl FUN_ov110_021264e0
	str r0, [sp, #0x10]
	ldr r2, [sp, #4]
	mov r1, r7
	mov r0, r4
	bl FUN_ov110_02126578
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	mov r0, r4
	mov r1, r5
	bl FUN_ov110_021264e0
	str r0, [sp, #0x10]
	ldr r2, [sp, #4]
	mov r1, r5
	mov r0, r4
	bl FUN_ov110_02126578
	mov r6, #5
	add r5, sp, #0x10
	str r0, [sp, #4]
	add r7, sp, #4
	mov r0, r4
	mov r1, #0xa
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	bl FUN_ov110_02126694
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #9
	str r7, [sp]
	bl FUN_ov110_02126694
_021269C0:
	bl _ZN8Graphics16LoadBGPaletteSubEv
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021269CC: .word gSubScreen2
_021269D0: .word gSubScreen1
_021269D4: .word gSubScreen0
	arm_func_end FUN_ov110_021266f8

	arm_func_start FUN_ov110_021269d8
FUN_ov110_021269d8: ; 0x021269D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #4]
	mov r7, #1
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f4894
	mov r6, #0
	mov r1, r6
	add r0, r8, #0x58
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r8, #0x88
	mov r1, r6
	mov r2, #0x90
	bl MI_CpuFill8
	ldr r5, _02126AAC ; =gAllocator
	mov r4, #0x980
	mov r0, r5
	mov r1, r4
	bl _ZN9Allocator8allocateEm
	mov r2, r4
	mov r1, r0
	str r1, [r8, #0x2c]
	mov r0, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, #0x6c0
	bl _ZN9Allocator8allocateEm
	str r0, [r8, #0x30]
	mov r0, r6
	add r1, r8, #0x34
	mov r2, #0x20
	bl MIi_CpuClear16
	mov r0, r8
	bl FUN_ov110_02126ab4
	str r6, [r8, #0x54]
	strb r6, [r8, #0x11]
	str r6, [r8, #0x14]
	strh r6, [r8, #0x18]
	strh r6, [r8, #0x1a]
	strh r6, [r8, #0x1c]
	strh r6, [r8, #0x1e]
	str r6, [r8, #0x20]
	mov r0, r8
	bl FUN_ov110_02124e50
	mov r1, r7
	ldr r0, _02126AB0 ; =gBgMenuManager
	bl FUN_ov16_020f5a58
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02126AAC: .word gAllocator
_02126AB0: .word gBgMenuManager
	arm_func_end FUN_ov110_021269d8

	arm_func_start FUN_ov110_02126ab4
FUN_ov110_02126ab4: ; 0x02126AB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, _02126BA8 ; =gLogicThink
	mov r5, #0
	mov r6, r0
	mov r0, r7
	mov r1, r5
	bl FUN_0205106c
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_0205107c
	mov r8, r5
_02126AE4:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02126B20
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_020502a8
	cmp r0, #0
	beq _02126B20
	mov r0, r7
	bl FUN_0206cc00
	add r1, r6, r5, lsl #1
	strh r0, [r1, #0x34]
	add r5, r5, #1
_02126B20:
	add r8, r8, #1
	cmp r8, #0x64
	blt _02126AE4
	mov r9, #0
	ldr r0, _02126BA8 ; =gLogicThink
	mov r1, r9
	bl FUN_0205107c
	mov r8, r0
_02126B40:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02126B98
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r8
	bl FUN_0204fca0
	cmp r0, #0
	beq _02126B98
	mov r0, r7
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r4
	bl FUN_020502a8
	cmp r0, #0
	bne _02126B98
	mov r0, r7
	bl FUN_0206cc00
	add r1, r6, r5, lsl #1
	strh r0, [r1, #0x34]
	add r5, r5, #1
_02126B98:
	add r9, r9, #1
	cmp r9, #0x64
	blt _02126B40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02126BA8: .word gLogicThink
	arm_func_end FUN_ov110_02126ab4

	arm_func_start FUN_ov110_02126bac
FUN_ov110_02126bac: ; 0x02126BAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02126BC4: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02126BE4 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02126C00 ; case 3
	b _02126C58 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _02126C6C ; case 6
	b _02126C78 ; case 7
_02126BE4:
	add r0, r4, #0x118
	mov r1, #3
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126C00:
	ldr r1, [r4, #0xc]
	bl FUN_ov110_021257e8
	add r0, r4, #0x88
	mov r1, #0xc
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02126C34
	cmp r0, #2
	beq _02126C44
	ldmfd sp!, {r4, pc}
_02126C34:
	mov r0, r4
	mov r1, #2
	bl FUN_ov110_02124fd0
	ldmfd sp!, {r4, pc}
_02126C44:
	mov r0, r4
	bl FUN_ov110_02124eac
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126C58:
	bl FUN_ov110_02126448
	mov r0, #4
	bl _ZN8Graphics9FadeInSubEl
	mov r0, #6
	str r0, [r4, #8]
_02126C6C:
	mov r0, r4
	bl FUN_ov110_021264c8
	ldmfd sp!, {r4, pc}
_02126C78:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov110_021250bc
	mov r0, r4
	mov r1, #1
	bl FUN_ov110_02124fd0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov110_02126bac

	arm_func_start FUN_ov110_02126ca4
FUN_ov110_02126ca4: ; 0x02126CA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02126CC4
	cmp r1, #6
	beq _02126CD4
	ldmfd sp!, {r4, pc}
_02126CC4:
	bl FUN_ov110_021266f8
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126CD4:
	ldr r0, _02126CE4 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02126CE4: .word gBgMenuManager
	arm_func_end FUN_ov110_02126ca4

	arm_func_start FUN_ov110_02126ce8
FUN_ov110_02126ce8: ; 0x02126CE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	bl FUN_ov110_021250bc
	mov r0, r4
	bl FUN_ov110_02124e74
	ldr r8, _02126DAC ; =gAllocator
	mov r9, r7
	mov r5, #0xc
_02126D10:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x58]
	cmp r1, #0
	beq _02126D2C
	mov r0, r8
	bl _ZN9Allocator10deallocateEPv
	str r7, [r10, #0x58]
_02126D2C:
	ldr r1, [r10, #0x5c]
	cmp r1, #0
	beq _02126D44
	mov r0, r8
	bl _ZN9Allocator10deallocateEPv
	str r6, [r10, #0x5c]
_02126D44:
	add r9, r9, #1
	cmp r9, #4
	blt _02126D10
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _02126D68
	ldr r0, _02126DAC ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r6, [r4, #0x2c]
_02126D68:
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _02126D80
	ldr r0, _02126DAC ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r6, [r4, #0x30]
_02126D80:
	mov r5, #1
	ldr r0, _02126DB0 ; =gBgMenuManager
	mov r1, r5
	bl FUN_ov16_020f5af0
	bl FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02126DAC: .word gAllocator
_02126DB0: .word gBgMenuManager
	arm_func_end FUN_ov110_02126ce8

	arm_func_start FUN_ov110_02126db4
FUN_ov110_02126db4: ; 0x02126DB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov110_02126db4

	arm_func_start FUN_ov110_02126dc8
FUN_ov110_02126dc8: ; 0x02126DC8
	bx lr
	arm_func_end FUN_ov110_02126dc8

	arm_func_start FUN_ov110_02126dcc
FUN_ov110_02126dcc: ; 0x02126DCC
	bx lr
	arm_func_end FUN_ov110_02126dcc

	arm_func_start FUN_ov110_02126dd0
FUN_ov110_02126dd0: ; 0x02126DD0
	bx lr
	arm_func_end FUN_ov110_02126dd0

	.rodata
	.global ov110_02126DD4
ov110_02126DD4:
	.byte 0x5A, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.global ov110_02126DF0
ov110_02126DF0:
	.byte 0x1E, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.global ov110_02126E0C
ov110_02126E0C:
	.word ov110_02126F94
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov110_02126F34
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov110_02126F44
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov110_02126F54
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov110_02126F64
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov110_02126F74
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov110_02126F14
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov110_02126F24
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov110_02126e5c
FUN_ov110_02126e5c: ; 0x02126E5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126EA4 ; =0x02126EC4
	str r0, [r4]
	ldr r0, _02126EA8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02126EAC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02126EA4: .word ov110_02126EC4
_02126EA8: .word 0x00009CCD
_02126EAC: .word 0x0000EA3C
	arm_func_end FUN_ov110_02126e5c

	.section .sinit, 4
ov110_02126EB0:
	.word FUN_ov110_02126e5c

	.data
	.global ov110_02126EC0
ov110_02126EC0:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126EC4
ov110_02126EC4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov110_02126EDC
ov110_02126EDC:
	.byte 0x83, 0x4B, 0x83, 0x62
	.byte 0x83, 0x63, 0x00, 0x00
	.global ov110_02126EE4
ov110_02126EE4:
	.byte 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4E, 0x00, 0x00
	.global ov110_02126EEC
ov110_02126EEC:
	.byte 0x83, 0x4B, 0x81, 0x5B
	.byte 0x83, 0x68, 0x00, 0x00
	.global ov110_02126EF4
ov110_02126EF4:
	.byte 0x83, 0x7B, 0x83, 0x66, 0x83, 0x42, 0x00, 0x00
	.global ov110_02126EFC
ov110_02126EFC:
	.byte 0x83, 0x58, 0x83, 0x73
	.byte 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F08
ov110_02126F08:
	.byte 0x83, 0x58, 0x83, 0x5E, 0x83, 0x7E, 0x83, 0x69
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F14
ov110_02126F14:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F24
ov110_02126F24:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x61, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F34
ov110_02126F34:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F44
ov110_02126F44:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F54
ov110_02126F54:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F64
ov110_02126F64:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F74
ov110_02126F74:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F84
ov110_02126F84:
	.byte 0x83, 0x52, 0x83, 0x93, 0x83, 0x67, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x8B
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov110_02126F94
ov110_02126F94:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61
	.byte 0x63, 0x00, 0x00, 0x00
	.global ov110_02126FA4
ov110_02126FA4:
	.word ov110_02126EC0
	.word ov110_02126EE4
	.word ov110_02126EF4
	.word ov110_02126EEC
	.word ov110_02126F84
	.word ov110_02126EFC
	.word ov110_02126EDC
	.word ov110_02126F08
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov110_02126FCC
ov110_02126FCC:
	.word FUN_ov110_02126dd0
	.word FUN_ov110_02126db4
	.word FUN_ov110_02126dcc
	.word FUN_ov110_02126dc8
	.word FUN_ov110_021269d8
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov110_02126bac
	.word FUN_ov110_02126ca4
	.word FUN_ov110_02126ce8
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
	.word FUN_ov110_02124d00
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov110_02127038
ov110_02127038:
	.byte 0x73, 0x68, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x5F, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.global ov110_0212704C
ov110_0212704C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x2E
	.byte 0x53, 0x54, 0x52, 0x00
	.global ov110_02127064
ov110_02127064:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x53, 0x68, 0x6F, 0x70, 0x2E, 0x53
	.byte 0x50, 0x46, 0x5F, 0x00
	.global ov110_02127084
ov110_02127084:
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov110_02127088
ov110_02127088:
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

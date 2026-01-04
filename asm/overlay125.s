
	.include "/macros/function.inc"
	.include "/include/overlay125.inc"

	.text
	arm_func_start FUN_ov125_02124d00
FUN_ov125_02124d00: ; 0x02124D00
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
	ldrh r2, [r4, #0x7e]
	ldrh r0, [r1]
	cmp r2, r0
	ldreqb r0, [r1, #0xf]
	cmpeq r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1]
	mov r2, #0
	strb r2, [r1, #0xf]
	strh r0, [r4, #0x7e]
	ldrh r3, [r1, #2]
	ldrh r2, [r1, #4]
	mov r0, r4
	strh r3, [r4, #0x80]
	strh r2, [r4, #0x82]
	ldrh r3, [r1, #6]
	ldrh r2, [r1, #8]
	strh r3, [r4, #0x84]
	strh r2, [r4, #0x86]
	ldrb r3, [r1, #0xa]
	ldrb r2, [r1, #0xb]
	strb r3, [r4, #0x88]
	strb r2, [r4, #0x89]
	ldrb r3, [r1, #0xc]
	ldrb r2, [r1, #0xd]
	strb r3, [r4, #0x8a]
	strb r2, [r4, #0x8b]
	ldrb r2, [r1, #0xe]
	strb r2, [r4, #0x8c]
	ldrb r1, [r1, #0xf]
	strb r1, [r4, #0x8d]
	bl FUN_ov125_021253b0
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov125_02125304
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov125_02124d00

	arm_func_start FUN_ov125_02124dd4
FUN_ov125_02124dd4: ; 0x02124DD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x148
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, _02124E04 ; =0x021263CC
	add r1, r4, #0x148
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124E04: .word ov125_021263CC
	arm_func_end FUN_ov125_02124dd4

	arm_func_start FUN_ov125_02124e08
FUN_ov125_02124e08: ; 0x02124E08
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x148
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, #0x148
	bl FUN_ov16_020f33fc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov125_02124e08

	arm_func_start FUN_ov125_02124e28
FUN_ov125_02124e28: ; 0x02124E28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x90
	mov r7, #0
	mov r4, #0x20
	add r6, sp, #0x70
	mov r8, r0
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	add r5, sp, #0x50
	mov r1, r7
	mov r0, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r2, r4
	add r4, sp, #0x30
	mov r1, r7
	mov r0, r4
	bl MI_CpuFill8
	ldr r9, _02124F4C ; =0x020A0640
	mov r7, #0xa
	ldrb r2, [r9, #0x89]
	ldr r1, _02124F50 ; =0x021263E4
	mov r0, r6
	smulbb r2, r2, r7
	bl STD_TSPrintf
	ldrb r2, [r9, #0x89]
	ldr r1, _02124F54 ; =0x021263F4
	mov r0, r5
	smulbb r2, r2, r7
	add r2, r2, #1
	bl STD_TSPrintf
	ldrb r2, [r9, #0x89]
	ldr r1, _02124F58 ; =0x02126404
	mov r0, r4
	smulbb r2, r2, r7
	add r2, r2, #3
	bl STD_TSPrintf
	ldr r12, _02124F5C ; =0x0212628C
	add r9, sp, #0
	ldmia r12!, {r0, r1, r2, r3}
	mov r7, r9
	stmia r9!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r9, {r0, r1, r2, r3}
	str r5, [sp, #8]
	str r4, [sp, #0x10]
	str r6, [sp]
	ldr r6, [r8, #0xd0]
	cmp r6, #0
	addeq sp, sp, #0x90
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, r8, #0xd0
	mov r4, #0xc
	b _02124F24
_02124F10:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	add r7, r7, #8
_02124F24:
	ldr r0, [r7]
	cmp r0, #0
	bne _02124F10
	mov r1, #4
	mov r0, r8
	mov r2, r1
	mov r3, #0x800
	bl FUN_ov125_021250dc
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02124F4C: .word unk_020A0640
_02124F50: .word ov125_021263E4
_02124F54: .word ov125_021263F4
_02124F58: .word ov125_02126404
_02124F5C: .word ov125_0212628C
	arm_func_end FUN_ov125_02124e28

	arm_func_start FUN_ov125_02124f60
FUN_ov125_02124f60: ; 0x02124F60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r10, r0
	ldr r8, _02124FF8 ; =gLogicThink
	mov r9, #0
	add r5, r10, #0xd0
	mov r6, #1
	add r11, sp, #8
	add r7, sp, #0xc
	mov r4, #0xc
_02124F88:
	add r0, r10, r9, lsl #1
	ldrh r1, [r0, #0x80]
	cmp r1, #0
	beq _02124FE4
	mov r0, r8
	mov r2, r7
	bl FUN_0204bd64
	cmp r0, #0
	beq _02124FE4
	ldrh r1, [sp, #0x5a]
	ldr r0, [r10, #0x148]
	mov r2, r11
	add r3, sp, #4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02124FE4
	add r0, r9, #6
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124FFC ; =0x02126414
	bl FUN_ov16_020f31fc
_02124FE4:
	add r9, r9, #1
	cmp r9, #4
	blt _02124F88
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02124FF8: .word gLogicThink
_02124FFC: .word ov125_02126414
	arm_func_end FUN_ov125_02124f60

	arm_func_start FUN_ov125_02125000
FUN_ov125_02125000: ; 0x02125000
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x68
	mov r4, #0
	mov r6, r0
	mov r5, r4
_02125014:
	add r0, r6, r5, lsl #1
	ldrh r1, [r0, #0x80]
	cmp r1, #0
	beq _021250BC
	ldr r0, _021250D8 ; =gLogicThink
	add r2, sp, #0
	bl FUN_0204bd64
	cmp r0, #0
	movne r0, #0xc
	mlane r0, r5, r0, r6
	ldrne r2, [r0, #0x118]
	cmpne r2, #0
	beq _021250BC
	ldr r0, [r6, #0x14]
	add r1, r2, #0x20
	add r7, r0, r5, lsl #9
	mov r3, #0
_02125058:
	mov r12, r4
_0212505C:
	mov lr, r4
_02125060:
	mov r0, lr, lsl #2
	ldr r0, [r1, r0, lsl #2]
	add lr, lr, #1
	cmp lr, #8
	str r0, [r7], #4
	blt _02125060
	add r12, r12, #1
	cmp r12, #4
	add r1, r1, #4
	blt _0212505C
	add r3, r3, #1
	cmp r3, #4
	add r1, r1, #0x70
	blt _02125058
	ldr r0, [r6, #0x18]
	add r2, r2, #0x220
	add r3, r0, r5, lsl #5
	mov r1, #0
_021250A8:
	ldr r0, [r2], #4
	add r1, r1, #1
	cmp r1, #8
	str r0, [r3], #4
	blt _021250A8
_021250BC:
	add r5, r5, #1
	cmp r5, #4
	blt _02125014
	mov r0, #1
	strb r0, [r6, #0x7c]
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021250D8: .word gLogicThink
	arm_func_end FUN_ov125_02125000

	arm_func_start FUN_ov125_021250dc
FUN_ov125_021250dc: ; 0x021250DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r8, [r0, #0xd0]
	mov r9, r2
	cmp r8, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r2, [r10, #0x14]
	ldr r1, [r8, #0xc]
	ldr r0, [r8, #0x10]
	add r5, r2, r3
	add r6, r8, r1
	movs r0, r0, lsr #1
	mov r7, #0
	beq _02125154
	mov r4, #0x20
_02125120:
	ldrh r0, [r6], #2
	ldr r2, [r8, #0x14]
	mov r1, r5
	add r3, r8, r2
	mov r0, r0, lsl #0x17
	mov r2, r4
	add r0, r3, r0, lsr #18
	bl MIi_CpuCopy32
	ldr r0, [r8, #0x10]
	add r7, r7, #1
	cmp r7, r0, lsr #1
	add r5, r5, #0x20
	blo _02125120
_02125154:
	ldr r1, [r8, #4]
	ldr r0, [r10, #0x18]
	add r2, r8, r1
	add r3, r0, r9, lsl #5
	mov r1, #0
_02125168:
	ldr r0, [r2], #4
	add r1, r1, #1
	cmp r1, #8
	str r0, [r3], #4
	blt _02125168
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov125_021250dc

	arm_func_start FUN_ov125_02125180
FUN_ov125_02125180: ; 0x02125180
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, r0
	add r7, r6, #0x1c
	mov r8, #0
	mov r5, #0xc0
	mov r4, #8
	mov r9, #0x38
	mov r10, #0x28
_021251A0:
	add r0, r6, r8, lsl #1
	ldrh r0, [r0, #0x80]
	cmp r0, #0
	bne _021251C4
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	b _02125200
_021251C4:
	mov r0, r8, asr #1
	mul r1, r0, r10
	and r0, r8, #1
	mul r2, r0, r9
	add r0, r1, #0x66
	and r1, r0, #0xff
	mov r0, r8, lsl #4
	add r2, r2, #4
	orr r1, r1, #0x80000000
	orr r2, r1, r2, lsl #16
	add r1, r8, #1
	orr r0, r0, #0x400
	str r2, [r7]
	orr r0, r0, r1, lsl #12
	strh r0, [r7, #4]
_02125200:
	add r8, r8, #1
	cmp r8, #4
	add r7, r7, #8
	blt _021251A0
	ldr r9, _02125300 ; =0x66666667
	add r5, r6, #0x3c
	mov r4, #0
	mov r11, #0xc0
	mov r7, #0x38
	mov r8, #0xa
	mov r10, #0x28
_0212522C:
	add r0, r6, r4, lsl #1
	ldrh r0, [r0, #0x80]
	cmp r0, #0
	bne _02125250
	mov r0, r5
	mov r1, r11
	mov r2, #0x10
_02125248:
	bl MI_CpuFill8
	b _021252EC
_02125250:
	add r3, r6, r4
	ldrb r1, [r3, #0x88]
	mov r0, r4, asr #1
	mul r2, r0, r10
	add r0, r2, #0x70
	and r0, r0, #0xff
	orr r0, r0, #0x8000
	and r2, r4, #1
	mul r12, r2, r7
	add r12, r12, #0x36
	smull lr, r2, r9, r1
	mov lr, r1, lsr #0x1f
	add r2, lr, r2, asr #2
	smull r2, lr, r8, r2
	sub r2, r1, r2
	mov r1, r2, lsl #1
	add r1, r1, #0x40
	orr r1, r1, #0x5400
	orr r2, r0, r12, lsl #16
	str r2, [r5]
	strh r1, [r5, #4]
	ldrb r1, [r3, #0x88]
	cmp r1, #0xa
	bhs _021252C0
	mov r1, #0xc0
	mov r2, #8
	add r0, r5, #8
	b _02125248
_021252C0:
	sub r2, r12, #8
	mov r2, r2, lsl #0x17
	orr r3, r0, r2, lsr #7
	smull r0, r2, r9, r1
	str r3, [r5, #8]
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, r2, lsl #1
	add r0, r0, #0x40
	orr r0, r0, #0x5400
	strh r0, [r5, #0xc]
_021252EC:
	add r4, r4, #1
	cmp r4, #4
	add r5, r5, #0x10
	blt _0212522C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125300: .word 0x66666667
	arm_func_end FUN_ov125_02125180

	arm_func_start FUN_ov125_02125304
FUN_ov125_02125304: ; 0x02125304
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02125324
	cmp r1, #2
	beq _0212538C
	b _02125398
_02125324:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0xd0
	mov r2, #0x78
	bl MI_CpuFill8
	ldr r5, _021253A4 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021253A8 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, _021253AC ; =0x0212642C
	add r1, r4, #0xd0
	bl FUN_ov16_020f316c
	b _02125390
_0212538C:
	bl FUN_ov125_02124f60
_02125390:
	mov r0, #1
	strb r0, [r4, #0x11]
_02125398:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021253A4: .word unk_020A8C40
_021253A8: .word unk_020A8440
_021253AC: .word ov125_0212642C
	arm_func_end FUN_ov125_02125304

	arm_func_start FUN_ov125_021253b0
FUN_ov125_021253b0: ; 0x021253B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0xd0
	mov r1, #0xa
	bl FUN_ov16_020f338c
	add r5, r4, #0xd0
	mov r6, #0
	mov r4, #0xc
_021253D0:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xa
	blt _021253D0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov125_021253b0

	arm_func_start FUN_ov125_021253e8
FUN_ov125_021253e8: ; 0x021253E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125418
	ldr r0, _02125490 ; =gAllocator
	mov r1, r5, lsl #1
	bl _ZN9Allocator8allocateEm
	str r0, [r4]
_02125418:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02125434
	ldr r0, _02125490 ; =gAllocator
	mov r1, r5, lsl #5
	bl _ZN9Allocator8allocateEm
	str r0, [r4, #4]
_02125434:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _0212546C
_02125454:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125454
_0212546C:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_02125490: .word gAllocator
	arm_func_end FUN_ov125_021253e8

	arm_func_start FUN_ov125_02125494
FUN_ov125_02125494: ; 0x02125494
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	mov r6, r0
	mov r5, r1
	mov r1, r2
	ldr r0, _02125560 ; =gLogicThink
	add r2, sp, #0x1c
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x84
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r1, r6, #0x94
	mov r0, #0xc
	mla r4, r5, r0, r1
	mov r0, r6
	mov r1, r4
	mov r2, #7
	mov r3, #2
	bl FUN_ov125_021253e8
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x84
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r2, #3
	str r2, [sp]
	mov lr, #0
	str lr, [sp, #4]
	str r0, [sp, #8]
	ldrh r1, [r4, #8]
	ldr r0, _02125564 ; =gFont8
	add r3, sp, #0x38
	mov r1, r1, lsl #3
	str r1, [sp, #0xc]
	ldrh r12, [r4, #0xa]
	mov r1, #5
	mov r12, r12, lsl #3
	str r12, [sp, #0x10]
	str lr, [sp, #0x14]
	str lr, [sp, #0x18]
	ldr r0, [r0]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125560: .word gLogicThink
_02125564: .word gFont8
	arm_func_end FUN_ov125_02125494

	arm_func_start FUN_ov125_02125568
FUN_ov125_02125568: ; 0x02125568
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r6, r1
	ldr r0, _0212564C ; =gLogicThink
	mov r1, r2
	bl FUN_ov16_020ee034
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r1, r7, #0x94
	mov r0, #0xc
	mla r5, r6, r0, r1
	mov r0, r7
	mov r1, r5
	mov r2, #0x10
	mov r3, #4
	bl FUN_ov125_021253e8
	ldr r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r6, _02125650 ; =gFont12
	mov r1, r4
	ldr r0, [r6]
	bl FUN_0204294c
	mov r1, #3
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [r5, #4]
	rsb r0, r0, #0x80
	str r1, [sp, #8]
	ldrh r1, [r5, #8]
	add r0, r0, r0, lsr #31
	mov r3, r4
	mov r1, r1, lsl #3
	str r1, [sp, #0xc]
	ldrh r12, [r5, #0xa]
	mov r1, r0, asr #1
	mov r0, r12, lsl #3
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r6]
	mov r2, #2
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #0xa]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0212564C: .word gLogicThink
_02125650: .word gFont12
	arm_func_end FUN_ov125_02125568

	arm_func_start FUN_ov125_02125654
FUN_ov125_02125654: ; 0x02125654
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0x11]
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r2, #0
	strb r2, [r5, #0x11]
	cmp r1, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r2, [r5, #0x7e]
	cmp r2, #0
	beq _0212568C
	mov r1, #4
	bl FUN_ov125_02125568
_0212568C:
	mov r4, #0
_02125690:
	add r0, r5, r4, lsl #1
	ldrh r2, [r0, #0x80]
	cmp r2, #0
	beq _021256AC
	mov r0, r5
	mov r1, r4
	bl FUN_ov125_02125494
_021256AC:
	add r4, r4, #1
	cmp r4, #4
	blt _02125690
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov125_02125654

	arm_func_start FUN_ov125_021256bc
FUN_ov125_021256bc: ; 0x021256BC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr lr, [sp, #0x38]
	mov r4, #0xc
	mul r5, r3, lr
	mla r3, r1, r4, r0
	ldr r0, [sp, #0x3c]
	ldr r12, [r3, #0xd0]
	mul r4, r0, r5
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, [r12, #0xc]
	ldr r3, [sp, #0x30]
	ldr r5, [sp, #0x34]
	mov r1, #1
	str r1, [sp]
	mov r3, r3, lsl #0x18
	mov r5, r5, lsl #0x18
	add r12, r12, r6
	and r6, r2, #0xff
	mov r2, #0
	str r1, [sp, #4]
	mov r3, r3, asr #0x18
	str r3, [sp, #8]
	mov r3, r5, asr #0x18
	str r3, [sp, #0xc]
	and r3, lr, #0xff
	str r3, [sp, #0x10]
	and r0, r0, #0xff
	str r0, [sp, #0x14]
	ldr r0, _02125758 ; =gBgMenuManager
	mov r3, r2
	str r6, [sp, #0x18]
	add r4, r12, r4, lsl #1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125758: .word gBgMenuManager
	arm_func_end FUN_ov125_021256bc

	arm_func_start FUN_ov125_0212575c
FUN_ov125_0212575c: ; 0x0212575C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x88
	mov r5, r0
	mov r4, r1
	mov r1, r2
	ldr r0, _02125810 ; =gLogicThink
	add r2, sp, #0x20
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0xc
	mul r0, r4, r0
	add r1, r5, #0x94
	ldr r12, [r1, r0]
	add r2, r1, r0
	cmp r12, #0
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0x98]
	mov r1, #1
	ldr r3, [sp, #0x9c]
	str r1, [sp]
	mov r0, r0, lsl #0x18
	add r3, r3, #3
	mov r3, r3, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r3, asr #0x18
	str r0, [sp, #0xc]
	ldrh lr, [r2, #8]
	mov r3, #0
	ldr r0, _02125814 ; =gBgMenuManager
	and lr, lr, #0xff
	str lr, [sp, #0x10]
	ldrh lr, [r2, #0xa]
	mov r2, r1
	and lr, lr, #0xff
	str lr, [sp, #0x14]
	str r3, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, pc}
_02125810: .word gLogicThink
_02125814: .word gBgMenuManager
	arm_func_end FUN_ov125_0212575c

	arm_func_start FUN_ov125_02125818
FUN_ov125_02125818: ; 0x02125818
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	ldrh r1, [r10, #0x7e]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02125988 ; =gLogicThink
	bl FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	str r4, [sp]
	mov r7, #0x10
	str r7, [sp, #4]
	mov r6, #0xc
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	mov r1, #2
	mov r5, #1
	mov r0, r10
	mov r2, r1
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov125_02125990
	ldr r6, [r10, #0xc4]
	cmp r6, #0
	beq _021258D0
	str r5, [sp]
	stmib sp, {r5, r7}
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r2, [r10, #0xcc]
	mov r1, r5
	ldr r0, _0212598C ; =gBgMenuManager
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r5, [r10, #0xce]
	mov r2, r4
	mov r3, r4
	and r5, r5, #0xff
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021258D0:
	mov r7, #0
	mov r6, r7
	mov r5, #7
	mov r11, #0x28
	mov r4, #0x38
_021258E4:
	add r0, r10, r7, lsl #1
	ldrh r0, [r0, #0x80]
	cmp r0, #0
	beq _02125974
	and r0, r7, #1
	mov r2, r7, asr #1
	mul r1, r0, r4
	mul r0, r2, r11
	add r2, r1, #8
	add r3, r0, #0x68
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r0, r3, asr #2
	add r0, r3, r0, lsr #29
	mov r9, r1, asr #3
	str r6, [sp]
	mov r8, r0, asr #3
	str r9, [sp, #4]
	str r8, [sp, #8]
	mov r1, #5
	str r5, [sp, #0xc]
	mov r3, r1
	str r3, [sp, #0x10]
	mov r0, r10
	mov r2, #1
	mov r3, #2
	bl FUN_ov125_02125990
	str r9, [sp]
	str r8, [sp, #4]
	add r0, r10, r7, lsl #1
	add r3, r10, r7
	ldrh r2, [r0, #0x80]
	ldrb r3, [r3, #0x88]
	mov r0, r10
	mov r1, r7
	bl FUN_ov125_0212575c
_02125974:
	add r7, r7, #1
	cmp r7, #4
	blt _021258E4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125988: .word gLogicThink
_0212598C: .word gBgMenuManager
	arm_func_end FUN_ov125_02125818

	arm_func_start FUN_ov125_02125990
FUN_ov125_02125990: ; 0x02125990
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r4, #0xc
	mla r0, r1, r4, r0
	ldr r12, [r0, #0xd0]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r12, #0xc]
	ldr r5, [sp, #0x3c]
	ldr r4, [sp, #0x40]
	mov r1, #1
	str r1, [sp]
	mov lr, r5, lsl #0x18
	mov r4, r4, lsl #0x18
	ldr r7, [sp, #0x44]
	ldr r6, [sp, #0x48]
	and r5, r2, #0xff
	mov r2, r3
	str r1, [sp, #4]
	mov r3, lr, asr #0x18
	str r3, [sp, #8]
	mov r3, r4, asr #0x18
	str r3, [sp, #0xc]
	and r3, r7, #0xff
	str r3, [sp, #0x10]
	and r3, r6, #0xff
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x38]
	add r3, r12, r0
	ldr r0, _02125A28 ; =gBgMenuManager
	str r5, [sp, #0x18]
	add r4, r4, r3
	mov r3, #0
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125A28: .word gBgMenuManager
	arm_func_end FUN_ov125_02125990

	arm_func_start FUN_ov125_02125a2c
FUN_ov125_02125a2c: ; 0x02125A2C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #1
	mov r6, r0
	mov r4, #0
	ldr r0, _02125AC4 ; =gBgMenuManager
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5f64
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r3, #0x20
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r3, [sp, #0xc]
	mov r12, #0x18
	mov r3, #2
	str r12, [sp, #0x10]
	bl FUN_ov125_02125990
	mov r0, #0xd
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r0, r6
	str r1, [sp, #0xc]
	mov r2, r5
	mov r3, r4
	mov r1, #3
	bl FUN_ov125_021256bc
	mov r0, r6
	bl FUN_ov125_02125818
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125AC4: .word gBgMenuManager
	arm_func_end FUN_ov125_02125a2c

	arm_func_start FUN_ov125_02125ac8
FUN_ov125_02125ac8: ; 0x02125AC8
	ldr r0, _02125AD8 ; =gBgMenuManager
	ldr r12, _02125ADC ; = FUN_ov16_020f672c
	mov r1, #1
	bx r12
_02125AD8: .word gBgMenuManager
_02125ADC: .word FUN_ov16_020f672c
	arm_func_end FUN_ov125_02125ac8

	arm_func_start FUN_ov125_02125ae0
FUN_ov125_02125ae0: ; 0x02125AE0
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x94
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02125B20
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	mov r2, r0
_02125B20:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov125_02125ae0

	arm_func_start FUN_ov125_02125b28
FUN_ov125_02125b28: ; 0x02125B28
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x94
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02125B70
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG0Char
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_02125B70:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov125_02125b28

	arm_func_start FUN_ov125_02125b78
FUN_ov125_02125b78: ; 0x02125B78
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x94
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02125BC0
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
_02125BC0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov125_02125b78

	arm_func_start FUN_ov125_02125bc8
FUN_ov125_02125bc8: ; 0x02125BC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0xd0
	ldr r6, [r4, r5]
	ldr r7, [sp, #0x20]
	mov r9, r2
	mov r8, r3
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8]
	mov r0, r6
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	str r0, [r8]
	ldr r1, [r4, r5]
	ldr r2, [r7]
	mov r0, #0
	bl FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov125_02125bc8

	arm_func_start FUN_ov125_02125c2c
FUN_ov125_02125c2c: ; 0x02125C2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0xd0
	ldr r8, [r6, r7]
	ldr r9, [sp, #0x20]
	mov r4, r2
	mov r5, r3
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5]
	mov r0, r8
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	str r0, [r5]
	mov r5, #1
	ldr r1, [r6, r7]
	ldr r2, [r9]
	mov r0, r5
	bl FUN_ov16_020f1a60
	str r0, [r9]
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov125_02125c2c

	arm_func_start FUN_ov125_02125c94
FUN_ov125_02125c94: ; 0x02125C94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r6, r1, r4
	add r5, r0, #0xd0
	ldr r7, [r5, r6]
	ldr r8, [sp, #0x20]
	mov r4, r2
	mov r9, r3
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r9]
	mov r0, r7
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	str r0, [r9]
	ldr r1, [r5, r6]
	ldr r2, [r8]
	mov r0, #2
	bl FUN_ov16_020f1a60
	str r0, [r8]
	bl GXS_BeginLoadBGExtPltt
	mov r1, r4, lsl #9
	ldmib r7, {r0, r2}
	add r0, r7, r0
	add r1, r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov125_02125c94

	arm_func_start FUN_ov125_02125d04
FUN_ov125_02125d04: ; 0x02125D04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	add r6, sp, #0x10
	mov r12, #0x40
	mov r7, #1
	add r8, sp, #4
	mov r5, r0
	mov r1, r7
	mov r2, r4
	mov r3, r6
	str r4, [sp, #0x10]
	str r12, [sp, #4]
	str r8, [sp]
	bl FUN_ov125_02125c94
	mov r0, r5
	mov r2, r7
	mov r3, r6
	mov r1, #5
	str r8, [sp]
	bl FUN_ov125_02125c94
	bl G2S_GetBG1CharPtr
	mov r6, #0x20
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	str r4, [sp, #0x14]
	str r6, [sp, #8]
	bl G2S_GetBG0CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r6
	bl DC_FlushRange
	str r6, [sp, #0xc]
	str r4, [sp, #0x18]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #2
	mov r0, r5
	mov r2, r1
	add r3, sp, #0x14
	bl FUN_ov125_02125c2c
_02125DC8:
	ldr r2, [sp, #0x14]
	mov r0, r5
	mov r1, r4
	bl FUN_ov125_02125ae0
	str r0, [sp, #0x14]
	ldr r2, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_ov125_02125b78
	add r4, r4, #1
	str r0, [sp, #8]
	cmp r4, #4
	blt _02125DC8
	ldr r7, _02125E98 ; =0x0212627C
	add r6, sp, #0xc
	add r4, sp, #0x18
_02125E08:
	str r6, [sp]
	mov r0, r5
	mov r3, r4
	ldmia r7, {r1, r2}
	bl FUN_ov125_02125bc8
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _02125E08
	mov r4, #4
	ldr r2, [sp, #0x18]
	mov r0, r5
	mov r1, r4
	bl FUN_ov125_02125ae0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	mov r0, r5
	mov r1, r4
	bl FUN_ov125_02125b28
	str r0, [sp, #0xc]
	bl FUN_ov16_020f10c8
	ldrb r0, [r5, #0x7c]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
	ldr r0, [r5, #0x14]
	mov r1, r4
	mov r2, #0xa80
	bl GXS_LoadOBJ
	ldr r0, [r5, #0x18]
	mov r1, #0x20
	mov r2, #0xc0
	bl GXS_LoadOBJPltt
	strb r4, [r5, #0x7c]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02125E98: .word ov125_0212627C
	arm_func_end FUN_ov125_02125d04

	arm_func_start FUN_ov125_02125e9c
FUN_ov125_02125e9c: ; 0x02125E9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_ov16_020f51a8
	mov r0, #0xc
	bl FUN_ov16_020f4894
	ldr r3, _02125FE4 ; =0x04001008
	mov r4, #0
	ldrh r2, [r3]
	mov r1, r4
	add r0, r5, #0x94
	bic r2, r2, #3
	strh r2, [r3]
	ldrh r6, [r3, #2]
	mov r2, #0x3c
	bic r6, r6, #3
	orr r6, r6, #1
	strh r6, [r3, #2]
	ldrh r6, [r3, #4]
	bic r6, r6, #3
	orr r6, r6, #2
	strh r6, [r3, #4]
	ldrh r6, [r3, #6]
	bic r6, r6, #3
	orr r6, r6, #3
	strh r6, [r3, #6]
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0xd0
	mov r2, #0x78
	bl MI_CpuFill8
	ldr r7, _02125FE8 ; =gAllocator
	mov r6, #0xa80
	mov r0, r7
	mov r1, r6
	bl _ZN9Allocator8allocateEm
	mov r1, r0
	mov r2, r6
	mov r0, r4
	str r1, [r5, #0x14]
	bl MIi_CpuClearFast
	mov r6, #0xc0
	mov r0, r7
	mov r1, r6
	bl _ZN9Allocator8allocateEm
	str r0, [r5, #0x18]
	mov r1, r6
	add r0, r5, #0x1c
	mov r2, #0x60
	bl MI_CpuFill8
	mov r0, #1
	strb r4, [r5, #0x11]
	strh r4, [r5, #0x7e]
	strb r0, [r5, #0x7c]
	mov r2, r4
_02125F74:
	add r1, r5, r4, lsl #1
	add r0, r5, r4
	strh r2, [r1, #0x80]
	add r4, r4, #1
	strb r2, [r0, #0x88]
	cmp r4, #4
	blt _02125F74
	mov r0, r5
	strb r2, [r5, #0x8c]
	strb r2, [r5, #0x8d]
	bl FUN_ov125_02124dd4
	ldr r7, _02125FEC ; =gBgMenuManager
	mov r6, #1
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f5a58
	bl G2S_GetBG0ScrPtr
	mov r5, r0
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG2ScrPtr
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r0, [sp]
	mov r0, r7
	bl FUN_ov16_020f5b6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125FE4: .word 0x04001008
_02125FE8: .word gAllocator
_02125FEC: .word gBgMenuManager
	arm_func_end FUN_ov125_02125e9c

	arm_func_start FUN_ov125_02125ff0
FUN_ov125_02125ff0: ; 0x02125FF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02126008: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0212602C ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02126048 ; case 3
	b _021260A8 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _021260BC ; case 6
	b _021260D0 ; case 7
	b _021260FC ; case 8
_0212602C:
	add r0, r4, #0x148
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126048:
	ldr r1, [r4, #0xc]
	bl FUN_ov125_02125654
	add r0, r4, #0xd0
	mov r1, #0xa
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0212607C
	cmp r0, #2
	beq _0212608C
	ldmfd sp!, {r4, pc}
_0212607C:
	mov r0, r4
	mov r1, #2
	bl FUN_ov125_02125304
	ldmfd sp!, {r4, pc}
_0212608C:
	mov r0, r4
	bl FUN_ov125_02125000
	mov r0, r4
	bl FUN_ov125_02124e28
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021260A8:
	bl FUN_ov125_02125a2c
	mov r0, #3
	bl FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_021260BC:
	mov r0, r4
	bl FUN_ov125_02125ac8
	mov r0, r4
	bl FUN_ov125_02125180
	ldmfd sp!, {r4, pc}
_021260D0:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov125_021253b0
	mov r0, r4
	mov r1, #1
	bl FUN_ov125_02125304
	ldmfd sp!, {r4, pc}
_021260FC:
	bl FUN_ov125_021253b0
	mov r0, r4
	mov r1, #1
	bl FUN_ov125_02125304
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov125_02125ff0

	arm_func_start FUN_ov125_02126110
FUN_ov125_02126110: ; 0x02126110
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02126130
	cmp r1, #6
	beq _02126140
	ldmfd sp!, {r4, pc}
_02126130:
	bl FUN_ov125_02125d04
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126140:
	add r0, r4, #0x1c
	mov r1, #0
	mov r2, #0x60
	bl GXS_LoadOAM
	ldr r0, _02126160 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02126160: .word gBgMenuManager
	arm_func_end FUN_ov125_02126110

	arm_func_start FUN_ov125_02126164
FUN_ov125_02126164: ; 0x02126164
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r5, #0x60
	mov r2, r5
	add r0, r4, #0x1c
	mov r1, #0xc0
	bl MI_CpuFill8
	mov r7, #0
	mov r1, r7
	mov r2, r5
	add r0, r4, #0x1c
	bl GXS_LoadOAM
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _021261AC
	ldr r0, _0212624C ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r7, [r4, #0x18]
_021261AC:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021261C4
	ldr r0, _0212624C ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r7, [r4, #0x14]
_021261C4:
	mov r0, r4
	bl FUN_ov125_021253b0
	mov r0, r4
	bl FUN_ov125_02124e08
	ldr r6, _0212624C ; =gAllocator
	mov r8, #0
	mov r5, #0xc
_021261E0:
	mla r9, r8, r5, r4
	ldr r1, [r9, #0x94]
	cmp r1, #0
	beq _021261FC
	mov r0, r6
	bl _ZN9Allocator10deallocateEPv
	str r7, [r9, #0x94]
_021261FC:
	ldr r1, [r9, #0x98]
	cmp r1, #0
	beq _02126214
	mov r0, r6
	bl _ZN9Allocator10deallocateEPv
	str r7, [r9, #0x98]
_02126214:
	add r8, r8, #1
	cmp r8, #5
	blt _021261E0
	mov r5, #1
	ldr r0, _02126250 ; =gBgMenuManager
	mov r1, r5
	bl FUN_ov16_020f5af0
	bl FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0212624C: .word gAllocator
_02126250: .word gBgMenuManager
	arm_func_end FUN_ov125_02126164

	arm_func_start FUN_ov125_02126254
FUN_ov125_02126254: ; 0x02126254
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov125_02126254

	arm_func_start FUN_ov125_02126268
FUN_ov125_02126268: ; 0x02126268
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov125_02126268

	arm_func_start FUN_ov125_02126270
FUN_ov125_02126270: ; 0x02126270
	bx lr
	arm_func_end FUN_ov125_02126270

	arm_func_start FUN_ov125_02126274
FUN_ov125_02126274: ; 0x02126274
	bx lr
	arm_func_end FUN_ov125_02126274

	arm_func_start FUN_ov125_02126278
FUN_ov125_02126278: ; 0x02126278
	bx lr
	arm_func_end FUN_ov125_02126278

	.rodata
	.global ov125_0212627C
ov125_0212627C:
	.byte 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov125_0212628C
ov125_0212628C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov125_02126338
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov125_02126348
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov125_021262bc
FUN_ov125_021262bc: ; 0x021262BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126304 ; =0x02126320
	str r0, [r4, #4]
	ldr r0, _02126308 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0212630C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02126304: .word ov125_02126320
_02126308: .word 0x00009CCD
_0212630C: .word 0x0000EA3C
	arm_func_end FUN_ov125_021262bc

	.section .sinit, 4
ov125_02126310:
	.word FUN_ov125_021262bc

	.data
	.global ov125_02126320
ov125_02126320:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov125_02126338
ov125_02126338:
	.byte 0x70, 0x69, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov125_02126348
ov125_02126348:
	.byte 0x70, 0x69, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov125_02126360
ov125_02126360:
	.word FUN_ov125_02126278
	.word FUN_ov125_02126254
	.word FUN_ov125_02126274
	.word FUN_ov125_02126270
	.word FUN_ov125_02125e9c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov125_02125ff0
	.word FUN_ov125_02126110
	.word FUN_ov125_02126164
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
	.word FUN_ov125_02124d00
	.word _ZN12CommonScreen6signalEi
	.word FUN_ov125_02126268
	.global ov125_021263CC
ov125_021263CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov125_021263E4
ov125_021263E4:
	.byte 0x70, 0x69, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x25, 0x30, 0x32, 0x64, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov125_021263F4
ov125_021263F4:
	.byte 0x70, 0x69, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x25, 0x30, 0x32, 0x64, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov125_02126404
ov125_02126404:
	.byte 0x70, 0x69, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x25, 0x30, 0x32, 0x64, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov125_02126414
ov125_02126414:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov125_0212642C
ov125_0212642C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x53, 0x50, 0x53, 0x50, 0x69
	.byte 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

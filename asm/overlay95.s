
	.include "/macros/function.inc"
	.include "/include/overlay95.inc"

	.text
	arm_func_start FUN_ov95_02124d00
FUN_ov95_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #8]
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
	ldr r1, [r4]
	ldr r0, [r5, #0x14]
	cmp r0, r1
	beq _02124DC0
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #6
	beq _02124D78
	sub r0, r0, #2
	cmp r0, #3
	bhi _02124DC0
	cmp r1, #2
	cmpne r1, #3
	cmpne r1, #4
	cmpne r1, #5
	beq _02124DC0
_02124D78:
	mov r3, #0
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #0x14
	strb r3, [r4, #0xd]
	bl MI_CpuCopy8
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #8
	strne r0, [r5, #8]
	bne _02124DB4
	mov r1, #7
	mov r0, #3
	str r1, [r5, #8]
	bl FUN_ov16_020f1528
_02124DB4:
	mov r0, #1
	strb r0, [r5, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_02124DC0:
	ldrh r1, [r5, #0x18]
	ldrh r0, [r4, #4]
	cmp r1, r0
	ldreqh r1, [r5, #0x1a]
	ldreqh r0, [r4, #6]
	cmpeq r1, r0
	ldreqh r1, [r5, #0x1c]
	ldreqh r0, [r4, #8]
	cmpeq r1, r0
	ldreqsh r1, [r5, #0x1e]
	ldreqsh r0, [r4, #0xa]
	cmpeq r1, r0
	ldreqb r0, [r4, #0xd]
	cmpeq r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r3, #0
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #0x14
	strb r3, [r4, #0xd]
	bl MI_CpuCopy8
	mov r0, r5
	bl FUN_ov95_0212557c
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov95_021253f8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov95_02124d00

	arm_func_start FUN_ov95_02124e38
FUN_ov95_02124e38: ; 0x02124E38
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02124E60
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
_02124E60:
	cmp r0, #0
	ldrne r1, [r4, #0x2fc]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02124E80 ; =pLogic_PalSkinFaceFile
	ldr r2, [r2]
	bl FUN_ov16_020f0c30 ; may be ov17 ; ov16(Mica)
	ldmfd sp!, {r4, pc}
_02124E80: .word pLogic_PalSkinFaceFile
	arm_func_end FUN_ov95_02124e38

	arm_func_start FUN_ov95_02124e84
FUN_ov95_02124e84: ; 0x02124E84
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3bc
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _02124ED8 ; =0x0212811C
	add r1, r4, #0x3bc
	bl FUN_ov16_020f316c
	ldr r0, _02124EDC ; =0x02128134
	add r1, r4, #0x3c8
	bl FUN_ov16_020f316c
	ldr r0, _02124EE0 ; =0x0212814C
	add r1, r4, #0x3d4
	bl FUN_ov16_020f316c
	ldr r0, _02124EE4 ; =0x02128164
	add r1, r4, #0x3e0
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124ED8: .word ov95_0212811C
_02124EDC: .word ov95_02128134
_02124EE0: .word ov95_0212814C
_02124EE4: .word ov95_02128164
	arm_func_end FUN_ov95_02124e84

	arm_func_start FUN_ov95_02124ee8
FUN_ov95_02124ee8: ; 0x02124EE8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x3bc
	mov r1, #4
	bl FUN_ov16_020f338c
	add r5, r4, #0x3bc
	mov r6, #0
	mov r4, #0xc
_02124F08:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _02124F08
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov95_02124ee8

	arm_func_start FUN_ov95_02124f20
FUN_ov95_02124f20: ; 0x02124F20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x138
	mov r12, r0
	ldr r0, [r12, #0x14]
	cmp r0, #6
	bne _02124F5C
	ldr lr, _02124FC8 ; =0x02127D1C
	add r5, sp, #0x88
	mov r4, #0xb
_02124F44:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02124F44
	add r6, sp, #0x88
	b _02124F84
_02124F5C:
	ldr lr, _02124FCC ; =0x02127C94
	add r5, sp, #0
	mov r4, #8
_02124F68:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02124F68
	ldmia lr, {r0, r1}
	stmia r5, {r0, r1}
	add r6, sp, #0
_02124F84:
	ldr r7, [r12, #0x20c]
	cmp r7, #0
	ldrne r0, [r6]
	cmpne r0, #0
	addeq sp, sp, #0x138
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r12, #0x1f4
	mov r4, #0xc
_02124FA4:
	ldr r3, [r6, #4]
	mov r2, r7
	mla r1, r3, r4, r5
	bl FUN_ov16_020f32b4
	ldr r0, [r6, #8]!
	cmp r0, #0
	bne _02124FA4
	add sp, sp, #0x138
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124FC8: .word ov95_02127D1C
_02124FCC: .word ov95_02127C94
	arm_func_end FUN_ov95_02124f20

	arm_func_start FUN_ov95_02124fd0
FUN_ov95_02124fd0: ; 0x02124FD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r6, [r7, #0x24]
	cmp r6, #0
	bne _02124FF8
	ldrh r0, [r7, #0x18]
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r6, r0
_02124FF8:
	cmp r6, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r6, #0x4d]
	ldrb r0, [r7, #0x30]
	add r5, r7, #0x32
	cmp r0, r1
	beq _02125038
	ldr r0, _02125190 ; =0x0209BA20
	mov r2, r5
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x4d]
	strb r0, [r7, #0x30]
_02125038:
	ldr r0, [r7, #0x3bc]
	cmp r0, #0
	beq _02125080
	add r4, sp, #8
	add r3, sp, #0xc
	mov r1, r6
	mov r2, #0
	str r4, [sp]
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _02125080
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125194 ; =0x02128184
	add r1, r7, #0x2e4
	bl FUN_ov16_020f31fc
_02125080:
	mov r0, r5
	mov r1, r6
	bl FUN_ov16_020f0bcc
	ldrh r2, [r7, #0x18]
	ldr r1, _02125198 ; =0x00000FFF
	mov r4, r0
	and r12, r2, r1
	mov r3, #0
_021250A0:
	add r2, r5, r3, lsl #3
	ldrh r0, [r2, #0x4c]
	and r0, r0, r1
	cmp r12, r0
	bne _021250C4
	ldrb r0, [r2, #0x4e]
	cmp r0, #1
	moveq r4, #1
	b _021250D0
_021250C4:
	add r3, r3, #1
	cmp r3, #0x20
	blt _021250A0
_021250D0:
	ldrh r1, [r5, #0x28]
	mov r0, r6
	cmp r1, #0
	ldreqh r1, [r5, #0x26]
	bl FUN_ov16_020f0b3c
	mov r5, r0
	ldr r0, [r7, #0x3c8]
	cmp r0, #0
	beq _02125138
	add r1, sp, #0xc
	str r1, [sp]
	add r12, sp, #8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #4]
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _02125138
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _0212519C ; =0x0212819C
	add r1, r7, #0x2f0
	bl FUN_ov16_020f31fc
_02125138:
	ldr r0, [r7, #0x3d4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, sp, #8
	add r3, sp, #0xc
	mov r1, r5
	mov r2, r4
	str r6, [sp]
	bl FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021251A0 ; =0x021281B4
	add r1, r7, #0x2fc
	bl FUN_ov16_020f31fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125190: .word gLogicThink
_02125194: .word ov95_02128184
_02125198: .word 0x00000FFF
_0212519C: .word ov95_0212819C
_021251A0: .word ov95_021281B4
	arm_func_end FUN_ov95_02124fd0

	arm_func_start FUN_ov95_021251a4
FUN_ov95_021251a4: ; 0x021251A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r4, #0
	mov r1, r4
	add r0, r10, #0x1a0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r8, [r10, #0x3e0]
	cmp r8, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x24]
	cmp r1, #0
	bne _021251F0
	ldrh r0, [r10, #0x18]
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r1, r0
_021251F0:
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r10, #0x1b0
	str r2, [sp]
	mov r4, #2
	ldr r0, _0212528C ; =0x0209BA20
	add r2, r10, #0x1a0
	mov r3, #4
	str r4, [sp, #4]
	bl FUN_0204aae8
	mov r9, #0
	add r5, r10, #0x1f4
	mov r6, r9
	add r7, sp, #0xc
	add r11, sp, #8
	mov r4, #0xc
_02125234:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x1a0]
	cmp r1, #0
	beq _02125278
	mov r0, r8
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02125278
	add r0, r9, #0x20
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _02125290 ; =0x021281CC
	bl FUN_ov16_020f31fc
_02125278:
	add r9, r9, #1
	cmp r9, #6
	blt _02125234
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212528C: .word gLogicThink
_02125290: .word ov95_021281CC
	arm_func_end FUN_ov95_021251a4

	arm_func_start FUN_ov95_02125294
FUN_ov95_02125294: ; 0x02125294
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x50
	mov r3, r1
	mov r5, r2
	add r4, sp, #0
	mov r6, r0
	ldr r1, _021252D8 ; =0x021281EC
	mov r0, r4
	mov r2, r3
	bl sprintf
	add r1, r6, #0x1f4
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, pc}
_021252D8: .word ov95_021281EC
	arm_func_end FUN_ov95_02125294

	arm_func_start FUN_ov95_021252dc
FUN_ov95_021252dc: ; 0x021252DC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021253E0
_021252F8: ; jump table
	b _021253E0 ; case 0
	b _0212535C ; case 1
	b _02125310 ; case 2
	b _02125310 ; case 3
	b _0212535C ; case 4
	b _0212539C ; case 5
_02125310:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02125328
	ldrh r0, [r4, #0x18]
	mov r1, #0
	bl FUN_ov16_020efa9c
_02125328:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x66]
	ldr r0, _021253E8 ; =0x02128208
	add r1, r4, #0x308
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0212535C:
	ldrh r1, [r4, #0x1c]
	ldr r0, _021253EC ; =0x0209BA20
	bl FUN_ov16_020ee034
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x2a]
	ldr r0, _021253F0 ; =0x02128224
	add r1, r4, #0x308
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0212539C:
	ldrh r1, [r4, #0x1a]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _021253EC ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0x1a]
	ldr r0, _021253F4 ; =0x0212823C
	add r1, r4, #0x308
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl FUN_ov16_020f31fc
_021253E0:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021253E8: .word ov95_02128208
_021253EC: .word gLogicThink
_021253F0: .word ov95_02128224
_021253F4: .word ov95_0212823C
	arm_func_end FUN_ov95_021252dc

	arm_func_start FUN_ov95_021253f8
FUN_ov95_021253f8: ; 0x021253F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02125418
	cmp r1, #2
	beq _02125508
	b _02125550
_02125418:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x1f4
	mov r2, #0x1c8
	bl MI_CpuFill8
	ldr r5, _0212555C ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _02125560 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, _02125564 ; =0x02128258
	add r1, r4, #0x200
	bl FUN_ov16_020f316c
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02125504
_0212548C: ; jump table
	b _021254A8 ; case 0
	b _021254BC ; case 1
	b _021254D8 ; case 2
	b _021254D8 ; case 3
	b _021254D8 ; case 4
	b _021254D8 ; case 5
	b _021254F8 ; case 6
_021254A8:
	ldr r1, _02125568 ; =0x02128278
	mov r0, r4
	mov r2, r7
	bl FUN_ov95_02125294
	b _02125504
_021254BC:
	ldr r1, _0212556C ; =0x02128284
	mov r0, r4
	mov r2, r7
	bl FUN_ov95_02125294
_021254CC:
	mov r0, r4
	bl FUN_ov95_021252dc
	b _02125504
_021254D8:
	ldr r1, _02125570 ; =0x02128290
	mov r0, r4
	mov r2, r7
	bl FUN_ov95_02125294
	ldr r0, _02125574 ; =0x0212829C
	add r1, r4, #0x20c
	bl FUN_ov16_020f316c
	b _021254CC
_021254F8:
	ldr r0, _02125578 ; =0x021282BC
	add r1, r4, #0x20c
	bl FUN_ov16_020f316c
_02125504:
	b _02125548
_02125508:
	ldr r1, [r4, #0x14]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _02125548
_02125518: ; jump table
	b _02125548 ; case 0
	b _02125548 ; case 1
	b _02125534 ; case 2
	b _02125534 ; case 3
	b _02125534 ; case 4
	b _02125534 ; case 5
	b _0212553C ; case 6
_02125534:
	bl FUN_ov95_02124fd0
	b _02125548
_0212553C:
	bl FUN_ov95_02124fd0
	mov r0, r4
	bl FUN_ov95_021251a4
_02125548:
	mov r0, #1
	strb r0, [r4, #0x11]
_02125550:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212555C: .word unk_020A8C40
_02125560: .word unk_020A8440
_02125564: .word ov95_02128258
_02125568: .word ov95_02128278
_0212556C: .word ov95_02128284
_02125570: .word ov95_02128290
_02125574: .word ov95_0212829C
_02125578: .word ov95_021282BC
	arm_func_end FUN_ov95_021253f8

	arm_func_start FUN_ov95_0212557c
FUN_ov95_0212557c: ; 0x0212557C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x1f4
	mov r1, #0x26
	bl FUN_ov16_020f338c
	add r5, r4, #0x1f4
	mov r6, #0
	mov r4, #0xc
_0212559C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x26
	blt _0212559C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov95_0212557c

	arm_func_start FUN_ov95_021255b4
FUN_ov95_021255b4: ; 0x021255B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _021255E4
	ldr r0, _0212565C ; =gL5Allocator
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_021255E4:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02125600
	ldr r0, _0212565C ; =gL5Allocator
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02125600:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02125638
_02125620:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125620
_02125638:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_0212565C: .word gL5Allocator
	arm_func_end FUN_ov95_021255b4

	arm_func_start FUN_ov95_02125660
FUN_ov95_02125660: ; 0x02125660
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x3c
	movs r8, r2
	mov r4, r0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r3, r4, #0x1b8
	mov r2, #0xc
	mla r6, r1, r2, r3
	mov r0, r8
	bl STD_GetStringLength
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	cmp r0, #8
	mov r5, #1
	movlt r5, #0
	mov r7, #3
	cmp r5, #0
	mov r0, r4
	mov r1, r6
	mov r2, #0x14
	mov r3, #5
	moveq r7, #0
	bl FUN_ov95_021255b4
	ldr r0, [r6, #4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	bne _021256F4
	ldr r0, _02125858 ; =gFont8
	add r1, r8, #0x2c
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
_021256F4:
	add r4, sp, #0x1c
	mov r2, r8
	mov r0, r4
	add r1, r8, #0x2c
	bl FUN_0204378c
	mov r0, #3
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [r6, #4]
	mov r3, r4
	str r1, [sp, #8]
	ldrh r9, [r6, #8]
	ldr r0, _02125858 ; =gFont8
	mov r1, r7
	mov r4, r9, lsl #3
	str r4, [sp, #0xc]
	ldrh r4, [r6, #0xa]
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	cmp r5, #0
	bne _02125780
	ldr r0, _0212585C ; =gFont12
	mov r1, r8
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
_02125780:
	mov r5, #3
	str r5, [sp]
	mov r4, #0
	str r4, [sp, #4]
	ldr r0, [r6, #4]
	ldr r9, _0212585C ; =gFont12
	str r0, [sp, #8]
	ldrh r0, [r6, #8]
	mov r1, r7
	mov r3, r8
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r6, #0xa]
	mov r2, #0xc
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r9]
	ldr r7, [r0]
	ldr r7, [r7, #8]
	blx r7
	ldr r0, [r9]
	add r1, r8, #0x1c
	bl FUN_0204294c
	str r5, [sp]
	str r4, [sp, #4]
	ldr r1, [r6, #4]
	rsb r0, r0, #0x60
	str r1, [sp, #8]
	ldrh r1, [r6, #8]
	add r0, r0, r0, lsr #31
	add r3, r8, #0x1c
	mov r1, r1, lsl #3
	str r1, [sp, #0xc]
	mov r1, r0, asr #1
	ldrh r0, [r6, #0xa]
	mov r2, #0x1c
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r9]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	ldrh r2, [r6, #8]
	ldrh r1, [r6, #0xa]
	ldr r0, [r6, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02125858: .word gFont8
_0212585C: .word gFont12
	arm_func_end FUN_ov95_02125660

	arm_func_start FUN_ov95_02125860
FUN_ov95_02125860: ; 0x02125860
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r3, r5, #0x1b8
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1e
	mov r3, #6
	bl FUN_ov95_021255b4
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r5, #0x308]
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
	mov r2, #8
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
	arm_func_end FUN_ov95_02125860

	arm_func_start FUN_ov95_021258ec
FUN_ov95_021258ec: ; 0x021258EC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x1b8
	mov r3, #0xc
	mla r4, r1, r3, r4
	mov r7, #3
	mov r5, r2
	mov r1, r4
	mov r3, r7
	mov r2, #0xe
	bl FUN_ov95_021255b4
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021259CC ; =0x0209BA20
	mov r1, r5
	bl FUN_ov16_020ee064
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r5, _021259D0 ; =gFont12
	mov r1, #1
	ldr r0, [r5]
	mov r2, #4
	bl FUN_02043310
	str r7, [sp]
	mov r12, #0
	str r12, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, r7
	str r0, [sp, #8]
	ldrh r0, [r4, #8]
	mov r3, r6
	mov r2, #7
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
	ldmfd sp!, {r4, r5, r6, r7, pc}
_021259CC: .word gLogicThink
_021259D0: .word gFont12
	arm_func_end FUN_ov95_021258ec

	arm_func_start FUN_ov95_021259d4
FUN_ov95_021259d4: ; 0x021259D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x1b8
	mov r3, #0xc
	mla r9, r1, r3, r4
	mov r10, r2
	mov r1, r9
	mov r2, #0x10
	mov r3, #6
	bl FUN_ov95_021255b4
	ldr r0, [r9, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _02125B50 ; =0x0209BA20
	mov r7, #0
	mov r0, r8
	mov r1, r10
	mov r2, r7
	bl FUN_ov16_020ee008
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02125B54 ; =gFont12
	mov r11, #1
	ldr r0, [r4]
	mov r1, r11
	mov r2, #4
	bl FUN_02043310
	mov r5, #3
	stmia sp, {r5, r7}
	ldr r0, [r9, #4]
	mov r3, r6
	str r0, [sp, #8]
	ldrh r0, [r9, #8]
	mov r1, r5
	mov r2, #7
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r6, [r0]
	ldr r6, [r6, #8]
	blx r6
	ldr r0, [r4]
	bl FUN_0204331c
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	mov r0, r8
	mov r1, r10
	mov r2, r11
	bl FUN_ov16_020ee008
	movs r6, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	mov r1, r11
	mov r2, #4
	bl FUN_02043310
	stmia sp, {r5, r7}
	ldr r0, [r9, #4]
	mov r1, r5
	str r0, [sp, #8]
	ldrh r0, [r9, #8]
	mov r3, r6
	mov r2, #0x17
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r9, #0xa]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	ldr r0, [r4]
	bl FUN_0204331c
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	ldr r0, [r9, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125B50: .word gLogicThink
_02125B54: .word gFont12
	arm_func_end FUN_ov95_021259d4

	arm_func_start FUN_ov95_02125b58
FUN_ov95_02125b58: ; 0x02125B58
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
	bne _02125B9C
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	beq _02125BA0
	mov r1, r5
	bl FUN_ov16_020efa9c
	b _02125B9C
_02125B9C:
	mov r5, r0
_02125BA0:
	cmp r6, #1
	beq _02125BB4
	cmp r6, #2
	beq _02125C18
	ldmfd sp!, {r4, r5, r6, pc}
_02125BB4:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02125BC4: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	ldmfd sp!, {r4, r5, r6, pc} ; case 1
	b _02125BE0 ; case 2
	b _02125BE0 ; case 3
	b _02125BE0 ; case 4
	b _02125BE0 ; case 5
	b _02125BF4 ; case 6
_02125BE0:
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl FUN_ov95_02125660
	ldmfd sp!, {r4, r5, r6, pc}
_02125BF4:
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl FUN_ov95_02125660
	mov r0, r4
	mov r2, r5
	mov r1, #2
	bl FUN_ov95_021258ec
	ldmfd sp!, {r4, r5, r6, pc}
_02125C18:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02125C28: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _02125C44 ; case 1
	b _02125C44 ; case 2
	b _02125C44 ; case 3
	b _02125C44 ; case 4
	b _02125C44 ; case 5
	b _02125C54 ; case 6
_02125C44:
	mov r0, r4
	mov r1, #1
	bl FUN_ov95_02125860
	ldmfd sp!, {r4, r5, r6, pc}
_02125C54:
	mov r0, r4
	mov r2, r5
	mov r1, #3
	mov r3, #0
	bl FUN_ov95_021259d4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov95_02125b58

	arm_func_start FUN_ov95_02125c6c
FUN_ov95_02125c6c: ; 0x02125C6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x4c]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x1f4]
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
	ble _02125DE4
	ldr r0, [sp, #0x4c]
	mov r7, #2
	cmp r0, #0xd
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	mov r6, #1
	ldr r4, _02125E3C ; =0x66666667
	beq _02125D5C
	mov r11, #3
_02125CD8:
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
	ldr r0, _02125E40 ; =gBgMenuManager
	mov r1, r6
	mov r3, r2
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125CD8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125D5C:
	mov r11, #4
_02125D60:
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
	ldr r0, _02125E40 ; =gBgMenuManager
	mov r1, r6
	mov r3, r2
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125D60
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125DE4:
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
	ldr r0, _02125E40 ; =gBgMenuManager
	mov r3, r2
	str r4, [sp, #0x18]
	add r4, r8, #0x28
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125E3C: .word 0x66666667
_02125E40: .word gBgMenuManager
	arm_func_end FUN_ov95_02125c6c

	arm_func_start FUN_ov95_02125e44
FUN_ov95_02125e44: ; 0x02125E44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r8, #0x260]
	cmp r5, #0
	movgt r12, #0
	movgt r4, #6
	rsble r5, r5, #0
	movle r12, #2
	movle r4, #7
	cmp r3, #0
	beq _02125EE4
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
	ldr r0, _02125F14 ; =gBgMenuManager
	add r3, r3, lr
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125EE4:
	add r0, r7, #3
	ldr r2, _02125F18 ; =0x000003E7
	mov r1, r0, lsl #0x10
	str r2, [sp]
	mov r0, r8
	mov r2, r6
	mov r3, r5
	mov r1, r1, asr #0x10
	str r4, [sp, #4]
	bl FUN_ov95_02125c6c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125F14: .word gBgMenuManager
_02125F18: .word 0x000003E7
	arm_func_end FUN_ov95_02125e44

	arm_func_start FUN_ov95_02125f1c
FUN_ov95_02125f1c: ; 0x02125F1C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldr r3, [r6, #0x2f0]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02125F94
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
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02126004 ; =gBgMenuManager
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125F94:
	ldr r3, [r6, #0x2e4]
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
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r4, [r3, #0xc]
	ldr r0, _02126004 ; =gBgMenuManager
	add r4, r3, r4
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02126004: .word gBgMenuManager
	arm_func_end FUN_ov95_02125f1c

	arm_func_start FUN_ov95_02126008
FUN_ov95_02126008: ; 0x02126008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r9, r0
	ldr r7, [r9, #0x1b8]
	mov r8, r1
	cmp r7, #0
	add r2, r9, #0x1b8
	mov r4, #4
	mov r6, #2
	mov r5, #1
	beq _0212607C
	mov r1, r5
	str r6, [sp]
	str r1, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r10, [r2, #8]
	mov r3, #0
	ldr r0, _021264F0 ; =gBgMenuManager
	and r10, r10, #0xff
	str r10, [sp, #0x10]
	ldrh r10, [r2, #0xa]
	mov r2, r1
	and r10, r10, #0xff
	str r10, [sp, #0x14]
	str r3, [sp, #0x18]
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0212607C:
	mov r0, r8
	mov r1, r5
	bl FUN_0206d9b0
	cmp r0, #1
	blo _0212610C
	mov r0, r8
	mov r1, r5
	bl FUN_0206d9b0
	cmp r0, #0x14
	bhi _0212610C
	ldr r7, [r9, #0x26c]
	cmp r7, #0
	beq _0212610C
	mov r0, r8
	mov r1, r5
	bl FUN_0206d9b0
	ldr r1, [r7, #0xc]
	sub r2, r0, #1
	add r3, r7, r1
	str r6, [sp]
	mov r0, #0xc
	str r5, [sp, #4]
	mov r1, r5
	mla r5, r2, r0, r3
	mov r0, #0x17
	str r0, [sp, #8]
	mov r2, #0
	str r4, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _021264F0 ; =gBgMenuManager
	mov r3, r2
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0212610C:
	ldr r5, [r9, #0x278]
	cmp r5, #0
	beq _02126158
	str r6, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _021264F0 ; =gBgMenuManager
	add r4, r5, r3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126158:
	mov r6, #0
	ldr r0, _021264F4 ; =0x0209BA20
	mov r1, r8
	mov r3, r6
	mov r2, #0xf
	sub r7, r6, #1
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021261B8
_02126180: ; jump table
	b _021261B8 ; case 0
	b _02126194 ; case 1
	b _021261A0 ; case 2
	b _021261A8 ; case 3
	b _021261B0 ; case 4
_02126194:
	mov r7, #0x10
_02126198:
	mov r6, #0xa
	b _021261B8
_021261A0:
	mov r7, #0x11
	b _02126198
_021261A8:
	mov r7, #0x12
	b _021261B4
_021261B0:
	mov r7, #0x13
_021261B4:
	mov r6, #0xb
_021261B8:
	cmp r7, #0
	mov r10, #4
	mov r5, #2
	mov r4, #1
	blt _02126228
	mov r0, #0xc
	mla r0, r7, r0, r9
	ldr r3, [r0, #0x1f4]
	cmp r3, #0
	beq _02126228
	str r5, [sp]
	mov r1, r4
	str r1, [sp, #4]
	mov r0, #0x1b
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	and r0, r6, #0xff
	str r0, [sp, #0x18]
	ldr r6, [r3, #0xc]
	mov r2, #0
	add r6, r3, r6
	ldr r0, _021264F0 ; =gBgMenuManager
	mov r3, r2
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126228:
	mov r0, r8
	bl FUN_0204fb60
	cmp r0, #4
	mvn r3, #0
	addls pc, pc, r0, lsl #2
	b _02126270
_02126240: ; jump table
	b _02126270 ; case 0
	b _02126254 ; case 1
	b _0212625C ; case 2
	b _02126264 ; case 3
	b _0212626C ; case 4
_02126254:
	mov r3, #1
	b _02126270
_0212625C:
	mov r3, #2
	b _02126270
_02126264:
	mov r3, #3
	b _02126270
_0212626C:
	mov r3, #0
_02126270:
	cmp r3, #0
	blt _021262C8
	ldr r7, [r9, #0x284]
	cmp r7, #0
	beq _021262C8
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r10, [sp, #0x10]
	str r5, [sp, #0x14]
	str r10, [sp, #0x18]
	ldr r6, [r7, #0xc]
	ldr r0, _021264F0 ; =gBgMenuManager
	add r6, r7, r6
	add r6, r6, r3, lsl #4
	mov r3, r2
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021262C8:
	mov r0, r8
	bl FUN_0206ccdc
	mov r6, r0
	mov r0, r8
	bl FUN_0206ccec
	str r0, [sp, #0x20]
	mov r0, r8
	bl FUN_0206cc84
	str r0, [sp, #0x24]
	mov r0, r8
	bl FUN_0206cc94
	ldr r2, [r9, #0x254]
	str r0, [sp, #0x28]
	cmp r2, #0
	beq _02126448
	ldr r1, [r2, #0xc]
	mov r7, #2
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #6
	add r10, r2, r1
	str r0, [sp, #0xc]
	mov r11, #3
	str r11, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r2, #0
	str r11, [sp, #0x18]
	ldr r0, _021264F0 ; =gBgMenuManager
	mov r1, r4
	mov r3, r2
	str r10, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r3, r6
	add r6, r11, #0x3e4
	str r6, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r9
	mov r1, #0xe
	mov r2, #6
	bl FUN_ov95_02125c6c
	ldr r3, [sp, #0x20]
	str r6, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r9
	mov r1, #0x12
	mov r2, #6
	bl FUN_ov95_02125c6c
	mov r1, #0xf
	sub r3, r1, #0x10
	str r4, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r9
	mov r2, #6
	str r3, [sp, #0x2c]
	bl FUN_ov95_02125c6c
	str r7, [sp]
	str r4, [sp, #4]
	mov r1, #0x14
	str r1, [sp, #8]
	mov r1, #6
	str r1, [sp, #0xc]
	str r11, [sp, #0x10]
	str r7, [sp, #0x14]
	add r2, r10, #0xc
	str r11, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r2, #0
	ldr r0, _021264F0 ; =gBgMenuManager
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_020f5da0
	ldr r3, [sp, #0x24]
	str r6, [sp]
	mov r7, #4
	mov r0, r9
	mov r1, #0x19
	mov r2, #6
	str r7, [sp, #4]
	bl FUN_ov95_02125c6c
	ldr r3, [sp, #0x28]
	mov r0, r9
	mov r1, #0x1d
	mov r2, #6
	stmia sp, {r6, r7}
	bl FUN_ov95_02125c6c
	ldr r3, [sp, #0x2c]
	mov r0, r9
	mov r2, #6
	mov r1, #0x1a
	stmia sp, {r4, r7}
	bl FUN_ov95_02125c6c
_02126448:
	ldr r0, [r9, #0x290]
	mov r4, #4
	cmp r0, #0
	beq _02126484
	mov r0, r8
	bl FUN_0206dcd4
	mov r1, #0x63
	str r1, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	ldrb r3, [r0, #0x4a]
	mov r0, r9
	mov r1, #0x19
	mov r2, #0
	bl FUN_ov95_02125c6c
_02126484:
	ldr r1, [r9, #0x2a8]
	cmp r1, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r8, #0x5a]
	mov r2, #0
	mov r3, r2
	cmp r0, #1
	ldr r0, [r1, #0xc]
	addeq r6, r1, r0
	addne r0, r1, r0
	addne r6, r0, #8
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r0, #0xe
	str r0, [sp, #0x18]
	ldr r0, _021264F0 ; =gBgMenuManager
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021264F0: .word gBgMenuManager
_021264F4: .word gLogicThink
	arm_func_end FUN_ov95_02126008

	arm_func_start FUN_ov95_021264f8
FUN_ov95_021264f8: ; 0x021264F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r8, _02126940 ; =0x0209BA20
	mov r7, #0
	mov r10, r0
	mov r0, r8
	mov r3, r7
	mov r2, #0x1e
	mov r9, r1
	bl FUN_0204f02c
	ldr r6, _02126944 ; =0x000003E7
	mov r4, #0xc
	mov r11, #9
	mov r3, r0
	mov r0, r10
	str r6, [sp]
	mov r5, #3
	mov r1, r4
	mov r2, r11
	str r5, [sp, #4]
	bl FUN_ov95_02125c6c
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
	bl FUN_ov95_02125c6c
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
	bl FUN_ov95_02125c6c
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
	bl FUN_ov95_02125c6c
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
	bl FUN_ov95_02125c6c
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
	bl FUN_ov95_02125c6c
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
	bl FUN_ov95_02125c6c
	mov r0, r9
	bl FUN_0206dcd4
	ldr r1, _02126948 ; =0x000F423F
	mov r3, r0
	stmia sp, {r1, r5}
	ldr r3, [r3]
	mov r2, r4
	mov r0, r10
	mov r1, #0x1d
	bl FUN_ov95_02125c6c
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
	bne _02126720
	ldrh r2, [r10, #0x1c]
	ldr r1, [r10, #0x28]
	mov r0, r8
	bl FUN_ov16_020ee1e4
	b _02126738
_02126720:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r10, #0x1c]
	ldr r1, [r10, #0x28]
	mov r0, r8
	bl FUN_ov16_020eea8c
_02126738:
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, _02126940 ; =0x0209BA20
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
	bl FUN_ov95_02125e44
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
	bl FUN_ov95_02125e44
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
	bl FUN_ov95_02125e44
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
	bl FUN_ov95_02125e44
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
	bl FUN_ov95_02125e44
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
	bl FUN_ov95_02125e44
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
	bl FUN_ov95_02125e44
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126940: .word gLogicThink
_02126944: .word 0x000003E7
_02126948: .word 0x000F423F
	arm_func_end FUN_ov95_021264f8

	arm_func_start FUN_ov95_0212694c
FUN_ov95_0212694c: ; 0x0212694C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x1c4]
	add r0, r0, #0x1c4
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldrh lr, [r0, #8]
	ldrh r4, [r0, #0xa]
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
	ldr r0, _021269D4 ; =gBgMenuManager
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_021269D4: .word gBgMenuManager
	arm_func_end FUN_ov95_0212694c

	arm_func_start FUN_ov95_021269d8
FUN_ov95_021269d8: ; 0x021269D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x24]
	cmp r4, #0
	bne _02126A04
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r4, r0
_02126A04:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov95_02125f1c
	mov r0, r5
	mov r1, r4
	bl FUN_ov95_02126008
	mov r0, r5
	mov r1, r4
	bl FUN_ov95_021264f8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov95_021269d8

	arm_func_start FUN_ov95_02126a38
FUN_ov95_02126a38: ; 0x02126A38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov r6, #2
	str r0, [sp, #0x20]
	cmp r0, #0
	mov r7, #1
	mov r10, #0
	bne _02126A7C
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r10
	bl FUN_ov16_020efa9c
	str r0, [sp, #0x20]
_02126A7C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r7
	bl FUN_ov95_02125f1c
	ldr r1, [sp, #0x20]
	mov r0, r5
	bl FUN_ov95_02126008
	ldr r4, [r5, #0x1d0]
	add r2, r5, #0x1d0
	cmp r4, #0
	beq _02126B00
	mov r0, #2
	stmia sp, {r0, r7}
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldrh r8, [r2, #8]
	ldr r0, _021270AC ; =gBgMenuManager
	mov r1, r7
	and r8, r8, #0xff
	str r8, [sp, #0x10]
	ldrh r8, [r2, #0xa]
	mov r2, r7
	and r8, r8, #0xff
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126B00:
	ldr r4, [r5, #0x1dc]
	add r8, r5, #0x1dc
	cmp r4, #0
	beq _02126B58
	mov r1, #1
	str r6, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldrh r9, [r8, #8]
	ldr r0, _021270AC ; =gBgMenuManager
	mov r2, r1
	and r9, r9, #0xff
	str r9, [sp, #0x10]
	ldrh r8, [r8, #0xa]
	and r8, r8, #0xff
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126B58:
	mov r0, #0x20
	mov r8, #0xb
	mov r11, #0
	str r0, [sp, #0x2c]
_02126B68:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x20
	addne r0, r8, #2
	addne r11, r11, #1
	movne r0, r0, lsl #0x10
	add r1, r5, r11, lsl #2
	movne r8, r0, asr #0x10
	ldr r0, _021270B0 ; =0x0209BA20
	ldr r1, [r1, #0x1a0]
	bl FUN_0204a2c4
	mov r4, r0
	ldr r1, [sp, #0x2c]
	mov r0, #0xc
	mla r0, r1, r0, r5
	ldr r1, [r0, #0x1f4]
	cmp r1, #0
	beq _02126E18
	stmia sp, {r6, r7}
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _021270AC ; =gBgMenuManager
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
	ldr r2, [r5, #0x320]
	cmp r4, #0
	cmpne r2, #0
	beq _02126CB8
	ldrb r0, [r4]
	mov r1, r10
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _02126C64
_02126C1C: ; jump table
	b _02126C64 ; case 0
	b _02126C64 ; case 1
	b _02126C64 ; case 2
	b _02126C64 ; case 3
	b _02126C64 ; case 4
	b _02126C44 ; case 5
	b _02126C48 ; case 6
	b _02126C50 ; case 7
	b _02126C58 ; case 8
	b _02126C60 ; case 9
_02126C44:
	b _02126C64
_02126C48:
	mov r1, r7
	b _02126C64
_02126C50:
	mov r1, r6
	b _02126C64
_02126C58:
	mov r1, #3
	b _02126C64
_02126C60:
	mov r1, #5
_02126C64:
	stmia sp, {r6, r7}
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #0xc
	str r0, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _021270AC ; =gBgMenuManager
	add r3, r2, r3
	mov r2, #0xc
	mla r2, r1, r2, r3
	str r2, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
_02126CB8:
	ldrb r0, [r4]
	cmp r0, #9
	ldrne r1, [r5, #0x35c]
	cmpne r1, #0
	beq _02126ED4
	stmia sp, {r6, r7}
	mov r0, #0x1d
	str r0, [sp, #8]
	add r0, r8, #1
	str r0, [sp, #0x28]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _021270AC ; =gBgMenuManager
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
	mov r0, r4
	mov r1, r10
	mov r2, #0x64
	bl FUN_0204b0c4
	mov r9, r0
	ldr r0, [r5, #0x368]
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02126ED4
	cmp r9, #0xa
	blt _02126DB0
	stmia sp, {r6, r7}
	mov r0, #0x1e
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r2, _021270B4 ; =0x66666667
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldr r1, [r0, #0xc]
	smull r3, r0, r2, r9
	ldr r2, [sp, #0x24]
	mov r3, r10
	add r2, r2, r1
	mov r1, r9, lsr #0x1f
	add r0, r1, r0, asr #2
	add r0, r2, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _021270AC ; =gBgMenuManager
	mov r1, r7
	mov r2, r10
	bl FUN_ov16_020f5da0
_02126DB0:
	ldr r0, [sp, #0x28]
	stmia sp, {r6, r7}
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, #0x1f
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldr r2, _021270B4 ; =0x66666667
	ldr r1, [r0, #0xc]
	smull r3, r0, r2, r9
	ldr r2, [sp, #0x24]
	add r1, r2, r1
	mov r2, r9, lsr #0x1f
	add r0, r2, r0, asr #2
	mov r2, #0xa
	smull r0, r3, r2, r0
	sub r0, r9, r0
	add r0, r1, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _021270AC ; =gBgMenuManager
	b _02126EC4
_02126E18:
	cmp r11, #4
	bge _02126ED4
	ldr r1, [r5, #0x314]
	cmp r1, #0
	beq _02126E78
	stmia sp, {r6, r7}
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xe
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _021270AC ; =gBgMenuManager
	add r1, r1, r2
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
_02126E78:
	ldr r1, [r5, #0x320]
	cmp r1, #0
	beq _02126ED4
	stmia sp, {r6, r7}
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r0, #0xc
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	ldr r0, _021270AC ; =gBgMenuManager
	add r1, r1, r2
	add r1, r1, #0x30
	str r1, [sp, #0x1c]
_02126EC4:
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
_02126ED4:
	cmp r4, #0
	beq _02127090
	add r2, r5, r11, lsl #2
	ldr r0, _021270B0 ; =0x0209BA20
	ldr r1, [sp, #0x20]
	ldr r2, [r2, #0x1a0]
	bl FUN_0207224c
	movs r9, r0
	ldrneb r3, [r4, #0x14]
	cmpne r3, #0
	beq _02127090
	ldr r0, _021270B8 ; =0x51EB851F
	cmp r9, #1
	smull r1, r2, r0, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #5
	and r4, r2, #0xff
	ble _02127090
	cmp r4, #0
	mov r1, r10
	beq _02126F3C
	cmp r4, #1
	beq _02126F44
	cmp r4, #2
	beq _02126F60
	b _02127090
_02126F3C:
	ldr r2, [r5, #0x32c]
	b _02126F64
_02126F44:
	sub r0, r9, #2
	mov r1, #6
	mul r1, r0, r1
	ldr r2, [r5, #0x344]
	mov r3, #0xd
	mov r0, #3
	b _02126F6C
_02126F60:
	ldr r2, [r5, #0x350]
_02126F64:
	mov r3, #0xd
	mov r0, r7
_02126F6C:
	stmia sp, {r6, r7}
	and r12, r3, #0xff
	mov r3, #0x1d
	str r3, [sp, #8]
	mov r3, r8, lsl #0x18
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _021270AC ; =gBgMenuManager
	add r2, r2, r3
	add r1, r2, r1
	str r1, [sp, #0x1c]
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
	cmp r4, #1
	beq _02127090
	ldr r4, [r5, #0x338]
	mov r0, r8, lsl #0x18
	stmia sp, {r6, r7}
	mov r1, r0, asr #0x18
	mov r0, #0x1e
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _021270B4 ; =0x66666667
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	smull r2, r0, r1, r9
	ldr r3, [r4, #0xc]
	mov r2, r9, lsr #0x1f
	add r0, r2, r0, asr #2
	mov r2, #0xa
	add r1, r4, r3
	smull r0, r3, r2, r0
	sub r0, r9, r0
	add r0, r1, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _021270AC ; =gBgMenuManager
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
	cmp r9, #0xa
	blt _02127090
	stmia sp, {r6, r7}
	mov r0, #0x1d
	str r0, [sp, #8]
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, _021270B4 ; =0x66666667
	ldr r3, [r4, #0xc]
	smull r1, r2, r0, r9
	mov r0, r9, lsr #0x1f
	add r1, r4, r3
	add r2, r0, r2, asr #2
	add r0, r1, r2, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _021270AC ; =gBgMenuManager
	mov r1, r7
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_020f5da0
_02127090:
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #0x25
	ble _02126B68
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021270AC: .word gBgMenuManager
_021270B0: .word gLogicThink
_021270B4: .word 0x66666667
_021270B8: .word 0x51EB851F
	arm_func_end FUN_ov95_02126a38

	arm_func_start FUN_ov95_021270bc
FUN_ov95_021270bc: ; 0x021270BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x24]
	cmp r4, #0
	bne _021270E8
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r4, r0
_021270E8:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov95_02125f1c
	mov r0, r5
	mov r1, r4
	bl FUN_ov95_02126008
	mov r0, r5
	mov r1, r4
	bl FUN_ov95_02126a38
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov95_021270bc

	arm_func_start FUN_ov95_0212711c
FUN_ov95_0212711c: ; 0x0212711C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, _02127190 ; =gBgMenuManager
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5f64
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_02127148: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02127164 ; case 1
	b _02127170 ; case 2
	b _02127170 ; case 3
	b _02127170 ; case 4
	b _02127170 ; case 5
	b _02127184 ; case 6
_02127164:
	mov r0, r4
	bl FUN_ov95_0212694c
	ldmfd sp!, {r4, pc}
_02127170:
	mov r0, r4
	bl FUN_ov95_021269d8
	mov r0, r4
	bl FUN_ov95_0212694c
	ldmfd sp!, {r4, pc}
_02127184:
	mov r0, r4
	bl FUN_ov95_021270bc
	ldmfd sp!, {r4, pc}
_02127190: .word gBgMenuManager
	arm_func_end FUN_ov95_0212711c

	arm_func_start FUN_ov95_02127194
FUN_ov95_02127194: ; 0x02127194
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r1, _0212723C ; =0x020A0640
	mov r7, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _02127240 ; =gBgMenuManager
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r0, _02127244 ; =0x0209AEC0
	bl FUN_020466c0
	ldr r3, [r7, #0x200]
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
_0212723C: .word unk_020A0640
_02127240: .word gBgMenuManager
_02127244: .word gWirelessUtil
	arm_func_end FUN_ov95_02127194

	arm_func_start FUN_ov95_02127248
FUN_ov95_02127248: ; 0x02127248
	stmfd sp!, {r3, lr}
	bl FUN_ov95_02127194
	ldr r0, _02127260 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, pc}
_02127260: .word gBgMenuManager
	arm_func_end FUN_ov95_02127248

	arm_func_start FUN_ov95_02127264
FUN_ov95_02127264: ; 0x02127264
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x1b8
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _021272A4
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	mov r2, r0
_021272A4:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov95_02127264

	arm_func_start FUN_ov95_021272ac
FUN_ov95_021272ac: ; 0x021272AC
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x1b8
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021272F4
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
_021272F4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov95_021272ac

	arm_func_start FUN_ov95_021272fc
FUN_ov95_021272fc: ; 0x021272FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x1f4
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
	mov r0, #2
	bl FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov95_021272fc

	arm_func_start FUN_ov95_02127360
FUN_ov95_02127360: ; 0x02127360
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	mov r4, #3
	mov r7, r2
	mov r1, r4
	mov r2, r4
	mov r3, r8
	mov r9, r0
	str r7, [sp]
	bl FUN_ov95_021272fc
	mov r6, #4
	mov r0, r9
	mov r1, r6
	mov r2, r4
	str r7, [sp]
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r1, #5
	mov r2, r4
	mov r3, r8
	bl FUN_ov95_021272fc
	mov r2, r4
	str r7, [sp]
	mov r0, r9
	mov r1, #8
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r5, #0xa
	mov r1, r5
	mov r2, r6
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r4, #0xb
	mov r1, r4
	mov r2, r6
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r1, #0xc
	mov r2, r6
	mov r3, r8
	bl FUN_ov95_021272fc
	mov r2, r6
	str r7, [sp]
	mov r0, r9
	mov r1, #0xd
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r1, #0xf
	mov r2, #0xe
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r1, #0x10
	mov r2, r5
	mov r3, r8
	bl FUN_ov95_021272fc
	mov r2, r5
	str r7, [sp]
	mov r0, r9
	mov r1, #0x11
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r1, #0x12
	mov r2, r4
	mov r3, r8
	bl FUN_ov95_021272fc
	str r7, [sp]
	mov r0, r9
	mov r2, r4
	mov r3, r8
	mov r1, #0x13
	bl FUN_ov95_021272fc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov95_02127360

	arm_func_start FUN_ov95_021274b8
FUN_ov95_021274b8: ; 0x021274B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r8, [r4, #0x1f4]
	mov r6, #0
	cmp r8, #0
	mov r5, #1
	beq _02127528
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	mov r2, r6
	mov r3, r5
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r0, r8
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_020f1138
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
_02127528:
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
	ldr r8, [r4, #0x200]
	cmp r8, #0
	beq _021275D4
	ldr r0, [r8, #0xc]
	mov r9, #2
	ldr r1, [r8, #0x10]
	mov r3, r9
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	str r0, [sp, #8]
	mov r0, r8
	mov r2, r9
	mov r1, #1
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r1, [sp, #4]
	ldr r2, [r8, #0x18]
	add r0, r8, r0
	bl GXS_LoadBG2Char
	ldr r1, [sp, #4]
	ldr r0, [r8, #0x18]
	add r0, r1, r0
	str r0, [sp, #4]
_021275D4:
	ldr r0, [r4, #0x14]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02127968
_021275E4: ; jump table
	b _02127600 ; case 0
	b _02127628 ; case 1
	b _0212765C ; case 2
	b _0212765C ; case 3
	b _0212765C ; case 4
	b _0212765C ; case 5
	b _02127770 ; case 6
_02127600:
	mov r4, #0x800
	ldr r0, _02127974 ; =0x020A8C40
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG1Scr
	ldr r0, _02127978 ; =0x020A8440
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG2Scr
	b _02127968
_02127628:
	ldr r0, _02127978 ; =0x020A8440
	mov r1, #0
	mov r2, #0x800
	bl GXS_LoadBG2Scr
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov95_02127264
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_ov95_021272ac
	b _02127968
_0212765C:
	mov r0, r4
	mov r1, r6
	mov r2, r6
	bl FUN_ov95_02127264
	mov r8, r0
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov95_021272ac
	mov r6, r0
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov95_02127264
	mov r7, r0
	mov r0, r4
	mov r2, r6
	mov r1, r5
	bl FUN_ov95_021272ac
	mov r6, r0
	ldr r0, [r4, #0x2f0]
	cmp r0, #0
	beq _021276D4
	add r1, r7, #1
	mov r2, #7
	bl FUN_ov16_020f18e8
	ldr r1, [r4, #0x2f0]
	mov r0, r5
	mov r2, r6
	bl FUN_ov16_020f1a60
_021276D4:
	ldr r0, [r4, #0x2fc]
	cmp r0, #0
	beq _021276EC
	mov r1, #1
	mov r2, #7
	bl FUN_ov16_020f1160
_021276EC:
	add r5, sp, #8
	mov r7, #6
	mov r6, #3
	add r8, sp, #4
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r8, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #7
	str r8, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r2, r6
	mov r1, #9
	mov r3, r5
	str r8, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov95_02127360
	mov r0, r4
	mov r2, r7
	mov r3, r5
	mov r1, #0x14
	str r8, [sp]
	bl FUN_ov95_021272fc
	b _02127968
_02127770:
	mov r0, r4
	mov r1, r6
	mov r2, r6
	bl FUN_ov95_02127264
	mov r5, r0
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov95_021272ac
	mov r6, #2
	mov r7, r0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov95_02127264
	mov r5, r0
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov95_021272ac
	mov r2, r5
	mov r5, #3
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov95_02127264
	mov r2, r6
	mov r6, r0
	mov r1, r5
	mov r0, r4
	bl FUN_ov95_021272ac
	mov r5, r0
	ldr r0, [r4, #0x2f0]
	cmp r0, #0
	beq _02127818
	add r1, r6, #1
	mov r2, #7
	bl FUN_ov16_020f18e8
	ldr r1, [r4, #0x2f0]
	mov r2, r5
	mov r0, #1
	bl FUN_ov16_020f1a60
_02127818:
	ldr r0, [r4, #0x2fc]
	cmp r0, #0
	beq _02127830
	mov r1, #1
	mov r2, #7
	bl FUN_ov16_020f1160
_02127830:
	add r5, sp, #8
	add r6, sp, #4
	mov r0, r4
	mov r3, r5
	mov r1, #0x14
	mov r2, #6
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov95_02127360
	mov r0, r4
	mov r3, r5
	mov r1, #0x18
	mov r2, #9
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, #0x19
	mov r2, #0xc
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r7, #0xd
	mov r0, r4
	mov r1, #0x1a
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, #0x1b
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, #0x1c
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, #0x1d
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r0, r4
	mov r1, #0x1e
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r2, r7
	mov r0, r4
	mov r1, #0x1f
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
	mov r7, #0x20
	mov r9, #9
	mov r8, #0xc
	b _02127960
_02127934:
	mla r0, r7, r8, r4
	ldr r0, [r0, #0x1f4]
	cmp r0, #0
	beq _0212795C
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r5
	str r6, [sp]
	bl FUN_ov95_021272fc
_0212795C:
	add r7, r7, #1
_02127960:
	cmp r7, #0x25
	ble _02127934
_02127968:
	bl FUN_ov16_020f10c8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02127974: .word unk_020A8C40
_02127978: .word unk_020A8440
	arm_func_end FUN_ov95_021274b8

	arm_func_start FUN_ov95_0212797c
FUN_ov95_0212797c: ; 0x0212797C
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
	add r0, r7, #0x1b8
	mov r2, #0x3c
	bl MI_CpuFill8
	add r0, r7, #0x1f4
	mov r1, r5
	mov r2, #0x1c8
	bl MI_CpuFill8
	ldr r4, _02127A34 ; =gL5Allocator
	mov r1, #0x98
	mov r0, r4
	bl FUN_0202de44
	str r0, [r7, #0x28]
	mov r0, r4
	mov r4, #0x6c
	mov r1, r4
	bl FUN_0202de44
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
	bl FUN_ov95_02124e84
	strb r6, [r7, #0x30]
	mov r1, r6
	ldr r0, _02127A38 ; =gBgMenuManager
	bl FUN_ov16_020f5a58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02127A34: .word gL5Allocator
_02127A38: .word gBgMenuManager
	arm_func_end FUN_ov95_0212797c

	arm_func_start FUN_ov95_02127a3c
FUN_ov95_02127a3c: ; 0x02127A3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02127A54: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02127A78 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _02127A94 ; case 3
	b _02127AF4 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _02127B08 ; case 6
	b _02127B14 ; case 7
	b _02127B40 ; case 8
_02127A78:
	add r0, r4, #0x3bc
	mov r1, #4
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02127A94:
	ldr r1, [r4, #0xc]
	bl FUN_ov95_02125b58
	add r0, r4, #0x1f4
	mov r1, #0x26
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02127AC8
	cmp r0, #2
	beq _02127AD8
	ldmfd sp!, {r4, pc}
_02127AC8:
	mov r0, r4
	mov r1, #2
	bl FUN_ov95_021253f8
	ldmfd sp!, {r4, pc}
_02127AD8:
	mov r0, r4
	bl FUN_ov95_02124f20
	mov r0, r4
	bl FUN_ov95_02124e38
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02127AF4:
	bl FUN_ov95_0212711c
	mov r0, #4
	bl FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_02127B08:
	mov r0, r4
	bl FUN_ov95_02127248
	ldmfd sp!, {r4, pc}
_02127B14:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov95_0212557c
	mov r0, r4
	mov r1, #1
	bl FUN_ov95_021253f8
	ldmfd sp!, {r4, pc}
_02127B40:
	bl FUN_ov95_0212557c
	mov r0, r4
	mov r1, #1
	bl FUN_ov95_021253f8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov95_02127a3c

	arm_func_start FUN_ov95_02127b54
FUN_ov95_02127b54: ; 0x02127B54
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02127B74
	cmp r1, #6
	beq _02127B84
	ldmfd sp!, {r4, pc}
_02127B74:
	bl FUN_ov95_021274b8
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02127B84:
	ldr r0, _02127B94 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02127B94: .word gBgMenuManager
	arm_func_end FUN_ov95_02127b54

	arm_func_start FUN_ov95_02127b98
FUN_ov95_02127b98: ; 0x02127B98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	bl FUN_ov95_0212557c
	mov r0, r4
	bl FUN_ov95_02124ee8
	ldr r8, _02127C6C ; =gL5Allocator
	mov r9, r7
	mov r5, #0xc
_02127BC0:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x1b8]
	cmp r1, #0
	beq _02127BDC
	mov r0, r8
	bl _ZN11L5Allocator10deallocateEPv
	str r7, [r10, #0x1b8]
_02127BDC:
	ldr r1, [r10, #0x1bc]
	cmp r1, #0
	beq _02127BF4
	mov r0, r8
	bl _ZN11L5Allocator10deallocateEPv
	str r6, [r10, #0x1bc]
_02127BF4:
	add r9, r9, #1
	cmp r9, #5
	blt _02127BC0
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _02127C18
	ldr r0, _02127C6C ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	str r6, [r4, #0x28]
_02127C18:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _02127C30
	ldr r0, _02127C6C ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	str r6, [r4, #0x2c]
_02127C30:
	mov r5, #1
	ldr r0, _02127C70 ; =gBgMenuManager
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
_02127C6C: .word gL5Allocator
_02127C70: .word gBgMenuManager
	arm_func_end FUN_ov95_02127b98

	arm_func_start FUN_ov95_02127c74
FUN_ov95_02127c74: ; 0x02127C74
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov95_02127c74

	arm_func_start FUN_ov95_02127c88
FUN_ov95_02127c88: ; 0x02127C88
	bx lr
	arm_func_end FUN_ov95_02127c88

	arm_func_start FUN_ov95_02127c8c
FUN_ov95_02127c8c: ; 0x02127C8C
	bx lr
	arm_func_end FUN_ov95_02127c8c

	arm_func_start FUN_ov95_02127c90
FUN_ov95_02127c90: ; 0x02127C90
	bx lr
	arm_func_end FUN_ov95_02127c90

	.rodata
	.global ov95_02127C94
ov95_02127C94:
	.word ov95_02127F08
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov95_02128008
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov95_02128078
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov95_02127EC8
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov95_02127EB8
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov95_02127EA8
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov95_02127E98
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov95_02127E88
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov95_02127ED8
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov95_02127EF8
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov95_02128088
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov95_02127E58
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov95_02127E68
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov95_02127EE8
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov95_02127FD8
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov95_02127E78
	.byte 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127D1C
ov95_02127D1C:
	.word ov95_02128098
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov95_02128048
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov95_02128038
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov95_02128028
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov95_02128018
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov95_02127FE8
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov95_02127FF8
	.byte 0x1A, 0x00, 0x00, 0x00
	.word ov95_02128058
	.byte 0x1C, 0x00, 0x00, 0x00
	.word ov95_02128068
	.byte 0x1D, 0x00, 0x00, 0x00
	.word ov95_02127FC8
	.byte 0x1E, 0x00, 0x00, 0x00
	.word ov95_02127FB8
	.byte 0x18, 0x00, 0x00, 0x00
	.word ov95_02127FA8
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov95_02127F98
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov95_02127F88
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov95_02127F78
	.byte 0x1B, 0x00, 0x00, 0x00
	.word ov95_02127F68
	.byte 0x1F, 0x00, 0x00, 0x00
	.word ov95_02127F58
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov95_02127F48
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov95_02127F38
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov95_02127F28
	.byte 0x13, 0x00, 0x00, 0x00
	.word ov95_02127F18
	.byte 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov95_02127dcc
FUN_ov95_02127dcc: ; 0x02127DCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02127E14 ; =0x02127E40
	str r0, [r4, #0x14]
	ldr r0, _02127E18 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02127E1C ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02127E14: .word ov95_02127E40
_02127E18: .word 0x00009CCD
_02127E1C: .word 0x0000EA3C
	arm_func_end FUN_ov95_02127dcc

	.section .sinit, 4
ov95_02127E20:
	.word FUN_ov95_02127dcc

	.data
	.global ov95_02127E40
ov95_02127E40:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127E58
ov95_02127E58:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127E68
ov95_02127E68:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127E78
ov95_02127E78:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127E88
ov95_02127E88:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127E98
ov95_02127E98:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127EA8
ov95_02127EA8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127EB8
ov95_02127EB8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127EC8
ov95_02127EC8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127ED8
ov95_02127ED8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127EE8
ov95_02127EE8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127EF8
ov95_02127EF8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x39
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F08
ov95_02127F08:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F18
ov95_02127F18:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F28
ov95_02127F28:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F38
ov95_02127F38:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F48
ov95_02127F48:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F58
ov95_02127F58:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F68
ov95_02127F68:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F78
ov95_02127F78:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F88
ov95_02127F88:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127F98
ov95_02127F98:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127FA8
ov95_02127FA8:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127FB8
ov95_02127FB8:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x39
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127FC8
ov95_02127FC8:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x38
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127FD8
ov95_02127FD8:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127FE8
ov95_02127FE8:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02127FF8
ov95_02127FF8:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128008
ov95_02128008:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128018
ov95_02128018:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128028
ov95_02128028:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128038
ov95_02128038:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128048
ov95_02128048:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128058
ov95_02128058:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128068
ov95_02128068:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x69, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128078
ov95_02128078:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128088
ov95_02128088:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x66, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128098
ov95_02128098:
	.byte 0x73, 0x63, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov95_021280B0
ov95_021280B0:
	.word FUN_ov95_02127c90
	.word FUN_ov95_02127c74
	.word FUN_ov95_02127c8c
	.word FUN_ov95_02127c88
	.word FUN_ov95_0212797c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov95_02127a3c
	.word FUN_ov95_02127b54
	.word FUN_ov95_02127b98
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
	.word FUN_ov95_02124d00
	.word _ZN12CommonScreen7vFUN_64Ei
	.word _ZN12CommonScreen7vFUN_68Ev
	.global ov95_0212811C
ov95_0212811C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov95_02128134
ov95_02128134:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov95_0212814C
ov95_0212814C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov95_02128164
ov95_02128164:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D, 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x68
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov95_02128184
ov95_02128184:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov95_0212819C
ov95_0212819C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov95_021281B4
ov95_021281B4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov95_021281CC
ov95_021281CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x63, 0x6D, 0x64, 0x2F, 0x6D
	.byte 0x62, 0x64, 0x5F, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov95_021281EC
ov95_021281EC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov95_02128208
ov95_02128208:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x75, 0x6E, 0x69, 0x74, 0x62, 0x61, 0x73, 0x65, 0x2E
	.byte 0x53, 0x54, 0x52, 0x00
	.global ov95_02128224
ov95_02128224:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x69, 0x74, 0x65, 0x6D, 0x2E, 0x53, 0x54, 0x52, 0x00
	.global ov95_0212823C
ov95_0212823C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63, 0x6F, 0x6D, 0x6D, 0x61
	.byte 0x6E, 0x64, 0x2E, 0x53, 0x54, 0x52, 0x00, 0x00
	.global ov95_02128258
ov95_02128258:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov95_02128278
ov95_02128278:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x00, 0x00, 0x00
	.global ov95_02128284
ov95_02128284:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov95_02128290
ov95_02128290:
	.byte 0x6D, 0x73, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x00, 0x00, 0x00
	.global ov95_0212829C
ov95_0212829C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x74, 0x61, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov95_021282BC
ov95_021282BC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x4D, 0x53, 0x70, 0x43, 0x6D, 0x64, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00

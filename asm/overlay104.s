
	.include "/macros/function.inc"
	.include "/include/overlay104.inc"

	.text
	arm_func_start FUN_ov104_02124d00
FUN_ov104_02124d00: ; 0x02124D00
	ldr r3, _02124D20 ; =0x021261F0
	mov r2, #0
	str r3, [r0]
	str r1, [r0, #4]
	str r2, [r0, #0xcc]
	str r2, [r0, #0xd4]
	str r2, [r0, #0xd0]
	bx lr
_02124D20: .word ov104_021261F0
	arm_func_end FUN_ov104_02124d00

	arm_func_start FUN_ov104_02124d24
FUN_ov104_02124d24: ; 0x02124D24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #3
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	ldrb r0, [r1]
	cmp r0, #0
	ldreqsh r2, [r4, #0xe]
	ldreqsh r0, [r1, #2]
	cmpeq r2, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r1]
	add lr, r1, #4
	add r12, r4, #0x10
	strb r0, [r4, #0xc]
	ldrb r0, [r1, #1]
	mov r3, #0xb
	strb r0, [r4, #0xd]
	ldrsh r0, [r1, #2]
	strh r0, [r4, #0xe]
_02124D7C:
	ldrb r2, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	subs r3, r3, #1
	strb r0, [r12, #1]
	strb r2, [r12], #2
	bne _02124D7C
	add lr, r1, #0x1a
	add r12, r4, #0x26
	mov r3, #0xb
_02124DA4:
	ldrb r2, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	subs r3, r3, #1
	strb r0, [r12, #1]
	strb r2, [r12], #2
	bne _02124DA4
	ldrsh r2, [r1, #0x30]
	mov r0, r4
	strh r2, [r4, #0x3c]
	ldrb r2, [r1, #0x32]
	strb r2, [r4, #0x3e]
	ldrb r1, [r1, #0x33]
	strb r1, [r4, #0x3f]
	bl FUN_ov104_02124f74
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov104_02124d24

	arm_func_start FUN_ov104_02124dec
FUN_ov104_02124dec: ; 0x02124DEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x7c]
	cmp r6, #0
	ldrne r1, _02124E38 ; =0x021260B8
	ldrne r7, _02124E3C ; =0x021260DC
	ldrne r1, [r1, #0x24]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x7c
	mov r4, #0xc
_02124E14:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02124E14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124E38: .word 0x021260B8
_02124E3C: .word 0x021260DC
	arm_func_end FUN_ov104_02124dec

	arm_func_start FUN_ov104_02124e40
FUN_ov104_02124e40: ; 0x02124E40
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x7c
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _02124F28 ; =0x02126260
	add r1, r4, #0x7c
	bl  FUN_ov16_020f3054
	mov r2, r5
_02124E70:
	add r0, r4, r5
	add r5, r5, #1
	strb r2, [r0, #0xc4]
	cmp r5, #6
	blt _02124E70
	ldr r3, _02124F2C ; =0x0209A250
	ldr r1, _02124F30 ; =0x02126284
	ldr r0, [r3]
	cmp r0, #0
	beq _02124EB4
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0xcc
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02124EB4:
	ldr r3, _02124F2C ; =0x0209A250
	ldr r1, _02124F34 ; =0x021262A8
	ldr r0, [r3]
	cmp r0, #0
	beq _02124EE8
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0xd0
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02124EE8:
	ldr r3, _02124F2C ; =0x0209A250
	ldr r1, _02124F38 ; =0x021262CC
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0xd4
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02124F28: .word ov104_02126260
_02124F2C: .word unk_0209A250
_02124F30: .word ov104_02126284
_02124F34: .word ov104_021262A8
_02124F38: .word ov104_021262CC
	arm_func_end FUN_ov104_02124e40

	arm_func_start FUN_ov104_02124f3c
FUN_ov104_02124f3c: ; 0x02124F3C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x7c
	mov r1, #6
	bl  FUN_ov16_020f338c
	add r5, r4, #0x7c
	mov r6, #0
	mov r4, #0xc
_02124F5C:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #6
	blt _02124F5C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov104_02124f3c

	arm_func_start FUN_ov104_02124f74
FUN_ov104_02124f74: ; 0x02124F74
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, #0
	ldr r7, _02124FD4 ; =0x0209A250
	mov r10, r0
	mov r6, r8
	mov r5, r8
	mov r4, #0xc
_02124F90:
	mla r9, r8, r4, r10
	ldr r1, [r9, #0x40]
	cmp r1, #0
	beq _02124FAC
	mov r0, r7
	bl FUN_0202e1c0
	str r6, [r9, #0x40]
_02124FAC:
	ldr r1, [r9, #0x44]
	cmp r1, #0
	beq _02124FC4
	mov r0, r7
	bl FUN_0202e1c0
	str r5, [r9, #0x44]
_02124FC4:
	add r8, r8, #1
	cmp r8, #5
	blt _02124F90
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02124FD4: .word unk_0209A250
	arm_func_end FUN_ov104_02124f74

	arm_func_start FUN_ov104_02124fd8
FUN_ov104_02124fd8: ; 0x02124FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125008
	ldr r0, _02125080 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02125008:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02125024
	ldr r0, _02125080 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02125024:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _0212505C
_02125044:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02125044
_0212505C:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_02125080: .word unk_0209A250
	arm_func_end FUN_ov104_02124fd8

	arm_func_start FUN_ov104_02125084
FUN_ov104_02125084: ; 0x02125084
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	add r5, r0, #0x40
	mov r4, #0xc
	mla r4, r3, r4, r5
	mov r5, r2
	mov r6, r1
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	mov r1, r4
	bl FUN_ov104_02124fd8
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r6, #0
	beq _0212511C
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	mov r0, r5
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0212511C:
	mov r2, #3
	str r2, [sp]
	ldr r0, [sp, #0x30]
	mov r3, #0
	stmib sp, {r0, r1}
	ldrh r1, [r4, #8]
	ldr r0, _02125178 ; =0x02099F50
	ldr r2, [sp, #0x40]
	mov r1, r1, lsl #3
	str r1, [sp, #0xc]
	ldrh r4, [r4, #0xa]
	ldr r1, [sp, #0x3c]
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r0]
	mov r3, r5
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125178: .word unk_02099F50
	arm_func_end FUN_ov104_02125084

	arm_func_start FUN_ov104_0212517c
FUN_ov104_0212517c: ; 0x0212517C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r5, [sp, #0x54]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x7c]
	ldr r0, [sp, #0x58]
	ldr r8, [sp, #0x4c]
	ldr r7, [sp, #0x50]
	mov r10, r1
	str r2, [sp, #0x20]
	mov r9, r3
	cmp r4, #0
	str r0, [sp, #0x58]
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	mov r5, #0
	cmp r9, r0
	movgt r9, r0
	ldr r0, [r4, #0xc]
	add r6, r4, r0
	ldr r0, [sp, #0x20]
	mov r0, r0, lsl #0x18
	mov r4, r0, asr #0x18
	ldr r0, [sp, #0x58]
	and r11, r0, #0xff
_021251E8:
	mov r0, #1
	str r0, [sp]
	ldr r1, _02125310 ; =0x66666667
	str r0, [sp, #4]
	smull r2, r0, r1, r9
	mov r1, r9, lsr #0x1f
	add r0, r1, r0, asr #2
	mov r1, #0xa
	smull r0, r2, r1, r0
	sub r0, r9, r0
	mov r1, #6
	mul r1, r0, r1
	add r0, r6, r1, lsl #1
	ldr r1, _02125310 ; =0x66666667
	mov r3, r9
	smull r2, r9, r1, r3
	mov r1, r3, lsr #0x1f
	add r9, r1, r9, asr #2
	mov r1, r10, lsl #0x18
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #3
	str r1, [sp, #0x14]
	str r11, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _02125314 ; =0x0209F5C0
	mov r1, #1
	mov r2, r7
	mov r3, #0
	bl  FUN_ov16_020f5da0
	sub r0, r10, #2
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	add r5, r5, #1
	bgt _021251E8
	cmp r5, r8
	addgt sp, sp, #0x24
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x20]
	add r9, r6, #0x78
	mov r0, r0, lsl #0x18
	mov r6, r0, asr #0x18
	ldr r0, [sp, #0x58]
	mov r11, #1
	and r4, r0, #0xff
_021252AC:
	str r11, [sp]
	mov r0, r10, lsl #0x18
	str r11, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _02125314 ; =0x0209F5C0
	mov r1, r11
	mov r2, r7
	mov r3, #0
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	sub r0, r10, #2
	mov r0, r0, lsl #0x10
	add r5, r5, #1
	mov r10, r0, asr #0x10
	cmp r5, r8
	ble _021252AC
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125310: .word 0x66666667
_02125314: .word unk_0209F5C0
	arm_func_end FUN_ov104_0212517c

	arm_func_start FUN_ov104_02125318
FUN_ov104_02125318: ; 0x02125318
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r1, #1
	mov r5, r0
	ldr r0, _02125650 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	mov r4, #2
	mov r6, r1
	bl  FUN_ov16_020f5f64
	mov r0, r5
	bl FUN_ov104_02126064
	cmp r0, #0
	ldrne r12, [r5, #0x94]
	bne _02125368
	mov r0, r5
	bl FUN_ov104_02126078
	cmp r0, #0
	ldrne r12, [r5, #0xa0]
	ldreq r12, [r5, #0x88]
_02125368:
	cmp r12, #0
	beq _021253B4
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
	ldr r0, _02125650 ; =0x0209F5C0
	add r12, r12, r2
	mov r2, #2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021253B4:
	ldr lr, [r5, #0xb8]
	cmp lr, #0
	beq _02125404
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r2, #2
	str r2, [sp, #0x18]
	ldr r12, [lr, #0xc]
	ldr r0, _02125650 ; =0x0209F5C0
	add r12, lr, r12
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125404:
	mov r0, r5
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _02125424
	mov r0, r5
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _02125488
_02125424:
	ldr r12, [r5, #0x40]
	cmp r12, #0
	beq _02125488
	ldrh r3, [r5, #0x48]
	mov r1, #1
	mov r2, #5
	rsb r0, r3, #0x20
	add r0, r0, r0, lsr #31
	str r1, [sp]
	mov r0, r0, lsl #0x17
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	and r0, r3, #0xff
	str r0, [sp, #0x10]
	ldrh r2, [r5, #0x4a]
	mov r3, #0
	ldr r0, _02125650 ; =0x0209F5C0
	and r2, r2, #0xff
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r2, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125488:
	mov r0, r5
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _021254A8
	mov r0, r5
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _021254F8
_021254A8:
	ldr lr, [r5, #0x4c]
	cmp lr, #0
	beq _021254F8
	mov r1, #1
	str r1, [sp]
	stmib sp, {r1, r4}
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0x54]
	mov r3, #0
	ldr r0, _02125650 ; =0x0209F5C0
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r12, [r5, #0x56]
	mov r2, r1
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021254F8:
	mov r0, r5
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _02125518
	mov r0, r5
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _02125570
_02125518:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	ldr r2, _02125654 ; =0x000003E7
	mov r1, #3
	str r2, [sp]
	stmib sp, {r1, r6}
	mov r1, #4
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r1, [r5, #0xe]
	ldr r2, _02125658 ; =0x0000FFE0
	mov r1, r1, lsl #1
	ldrh r3, [r0, r1]
	mov r0, r5
	mov r1, #0x16
	and r2, r3, r2
	mov r2, r2, lsl #0xb
	mov r3, r2, lsr #0x10
	mov r2, #9
	bl FUN_ov104_0212517c
_02125570:
	ldr lr, [r5, #0x70]
	cmp lr, #0
	beq _021255C0
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrh r12, [r5, #0x78]
	ldr r0, _02125650 ; =0x0209F5C0
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x10]
	ldrh r12, [r5, #0x7a]
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021255C0:
	mov r0, r5
	bl FUN_ov104_02126078
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x3e]
	mov r1, #2
	cmp r0, #0
	movne r1, #3
	mov r0, #0xc
	mul r0, r1, r0
	add r1, r5, #0x40
	ldr r5, [r1, r0]
	add r12, r1, r0
	cmp r5, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #1
	str r1, [sp]
	stmib sp, {r1, r4}
	mov r0, #0x14
	str r0, [sp, #0xc]
	ldrh r3, [r12, #8]
	mov r2, #0
	ldr r0, _02125650 ; =0x0209F5C0
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r4, [r12, #0xa]
	mov r3, r2
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125650: .word unk_0209F5C0
_02125654: .word 0x000003E7
_02125658: .word 0x0000FFE0
	arm_func_end FUN_ov104_02125318

	arm_func_start FUN_ov104_0212565c
FUN_ov104_0212565c: ; 0x0212565C
	ldr r0, _02125674 ; =0x02099E8E
	ldr r2, _02125678 ; =0x020A12C0
	ldrb r1, [r0]
	mov r0, #0x54
	mla r0, r1, r0, r2
	bx lr
_02125674: .word unk_02099E8E
_02125678: .word unk_020A12C0
	arm_func_end FUN_ov104_0212565c

	arm_func_start FUN_ov104_0212567c
FUN_ov104_0212567c: ; 0x0212567C
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #4]
	ldrsh r1, [r1, #0x3c]
	ldr r2, [r0]
	ldr r2, [r2, #0x40]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov104_0212567c

	arm_func_start FUN_ov104_0212569c
FUN_ov104_0212569c: ; 0x0212569C
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x40
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _021256DC
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_021256DC:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov104_0212569c

	arm_func_start FUN_ov104_021256e4
FUN_ov104_021256e4: ; 0x021256E4
	stmfd sp!, {r3, lr}
	add lr, r0, #0xc4
	ldrb r12, [lr, r1]
	cmp r12, #0
	movne r0, r2
	ldmnefd sp!, {r3, pc}
	mov r12, #0xc
	mla r0, r1, r12, r0
	mov r12, #1
	strb r12, [lr, r1]
	add r1, r2, #1
	ldr r0, [r0, #0x7c]
	mov r2, r3
	bl  FUN_ov16_020f18e8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov104_021256e4

	arm_func_start FUN_ov104_02125720
FUN_ov104_02125720: ; 0x02125720
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x40
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02125768
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020058cc
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_02125768:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov104_02125720

	arm_func_start FUN_ov104_02125770
FUN_ov104_02125770: ; 0x02125770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r4, r1, r12
	add r5, r0, #0x7c
	ldr r6, [r5, r4]
	ldr r7, [sp, #0x20]
	mov r9, r2
	mov r8, r3
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [r8]
	mov r3, r9
	bl FUN_ov104_021256e4
	str r0, [r8]
	ldr r1, [r5, r4]
	ldr r2, [r7]
	mov r0, #0
	bl  FUN_ov16_020f1a60
	str r0, [r7]
	mov r0, r6
	mov r2, r9
	mov r1, #1
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov104_02125770

	arm_func_start FUN_ov104_021257d0
FUN_ov104_021257d0: ; 0x021257D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r6, r0, #0x7c
	ldr r7, [r6, r5]
	ldr r8, [sp, #0x20]
	mov r9, r2
	mov r4, r3
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [r4]
	mov r3, r9
	bl FUN_ov104_021256e4
	str r0, [r4]
	mov r4, #1
	ldr r1, [r6, r5]
	ldr r2, [r8]
	mov r0, r4
	bl  FUN_ov16_020f1a60
	str r0, [r8]
	mov r0, r7
	mov r1, r4
	mov r2, r9
	bl  FUN_ov16_020f1138
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov104_021257d0

	arm_func_start FUN_ov104_02125834
FUN_ov104_02125834: ; 0x02125834
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x40
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _0212587C
	ldrh r3, [r5, #8]
	ldrh r2, [r5, #0xa]
	mov r1, r4
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl FUN_020059ac
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mul r0, r1, r0
	add r4, r4, r0, lsl #5
_0212587C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov104_02125834

	arm_func_start FUN_ov104_02125884
FUN_ov104_02125884: ; 0x02125884
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r2, #0
	mov r1, #0x20
	mov r4, r0
	str r2, [sp, #0x10]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #4]
	bl FUN_ov104_02126064
	cmp r0, #0
	beq _021258C8
	add r5, sp, #8
	add r3, sp, #0x10
	mov r0, r4
	mov r1, #2
	b _021258E8
_021258C8:
	mov r0, r4
	bl FUN_ov104_02126078
	cmp r0, #0
	add r5, sp, #8
	add r3, sp, #0x10
	beq _021258F0
	mov r0, r4
	mov r1, #3
_021258E8:
	mov r2, #1
	b _021258FC
_021258F0:
	mov r1, #1
	mov r0, r4
	mov r2, r1
_021258FC:
	str r5, [sp]
	bl FUN_ov104_02125770
	ldr r1, _02125AAC ; =0x000014A0
	mov r2, #0xa4
	str r2, [sp, #0x10]
	str r1, [sp, #8]
	add r5, sp, #8
	add r3, sp, #0x10
	mov r0, r4
	mov r1, #5
	mov r2, #2
	str r5, [sp]
	bl FUN_ov104_02125770
	mov r0, r4
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _02125950
	mov r0, r4
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _0212597C
_02125950:
	mov r5, #0
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov104_0212569c
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r4
	mov r1, r5
	bl FUN_ov104_02125720
	str r0, [sp, #4]
_0212597C:
	mov r0, r4
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _0212599C
	mov r0, r4
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _021259C8
_0212599C:
	mov r5, #1
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r5
	bl FUN_ov104_0212569c
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r4
	mov r1, r5
	bl FUN_ov104_02125720
	str r0, [sp, #4]
_021259C8:
	mov r0, r4
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _021259E8
	mov r0, r4
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _02125A04
_021259E8:
	mov r1, #4
	add r5, sp, #4
	add r3, sp, #0xc
	mov r0, r4
	mov r2, r1
	str r5, [sp]
	bl FUN_ov104_021257d0
_02125A04:
	mov r5, #4
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl FUN_ov104_0212569c
	mov r6, r0
	mov r0, r4
	mov r1, r5
	mov r2, #0x20
	bl FUN_ov104_02125834
	mov r7, r0
	mov r0, r4
	bl FUN_ov104_02126078
	cmp r0, #0
	beq _02125A6C
	mov r5, #2
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov104_0212569c
	mov r6, r0
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_ov104_02125834
	mov r7, r0
_02125A6C:
	mov r0, r4
	bl FUN_ov104_02126078
	cmp r0, #0
	beq _02125AA0
	mov r5, #3
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov104_0212569c
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_ov104_02125834
_02125AA0:
	bl  FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02125AAC: .word 0x000014A0
	arm_func_end FUN_ov104_02125884

	arm_func_start FUN_ov104_02125ab0
FUN_ov104_02125ab0: ; 0x02125AB0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, #1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	mov r4, #0
	mov r1, r4
	add r0, r6, #0x40
	mov r2, #0x3c
	bl MI_CpuFill8
	add r0, r6, #0x7c
	mov r1, r4
	mov r2, #0x48
	bl MI_CpuFill8
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xd]
	strh r4, [r6, #0xe]
	strb r4, [r6, #0x10]
	strb r4, [r6, #0x26]
	strh r4, [r6, #0x3c]
	strb r4, [r6, #0x3e]
	strb r4, [r6, #0x3f]
	ldr r0, _02125B40 ; =0x0209F5C0
	mov r1, r5
	bl  FUN_ov16_020f5a58
	mov r0, r6
	bl FUN_ov104_02124e40
	mov r0, r6
	bl FUN_ov104_02124dec
	str r5, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_02125B40: .word unk_0209F5C0
	arm_func_end FUN_ov104_02125ab0

	arm_func_start FUN_ov104_02125b44
FUN_ov104_02125b44: ; 0x02125B44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #1
	beq _02125B74
	cmp r0, #2
	beq _02125F0C
	cmp r0, #3
	beq _02125F3C
	b _02125F44
_02125B74:
	add r0, r4, #0x7c
	mov r1, #6
	bl  FUN_ov16_020f330c
	cmp r0, #0
	beq _02125F44
	ldr r10, _02125FA8 ; =0x020A8440
	mov r9, r6
	mov r8, #0x800
	mov r0, r9
	mov r1, r10
	mov r2, r8
	bl MIi_CpuClearFast
	ldr r7, _02125FAC ; =0x020A8C40
	mov r0, r9
	mov r1, r7
	mov r2, r8
	bl MIi_CpuClearFast
	ldr r5, _02125FB0 ; =0x020A9440
	mov r0, r9
	mov r1, r5
	mov r2, r8
	bl MIi_CpuClearFast
	mov r0, r10
	mov r1, r8
	bl DC_FlushRange
	mov r0, r7
	mov r1, r8
	bl DC_FlushRange
	mov r0, r5
	mov r1, r8
	bl DC_FlushRange
	mov r0, r4
	bl FUN_ov104_02124f74
	ldr r1, _02125FB4 ; =0x021262F0
	ldr r2, _02125FB8 ; =0x021262F4
	add r0, sp, #0x2a
	bl FUN_02023c40
	ldr r0, _02125FBC ; =0x02099E8E
	ldr r5, _02125FC0 ; =0x021260B8
	ldrb r2, [r0]
	mov r7, #1
	b _02125C68
_02125C1C:
	ldr r1, [r4, #0xd4]
	add r0, r9, r9, lsl #5
	ldrb r0, [r1, r0]
	cmp r2, r0
	bne _02125C64
	add r8, sp, #0x2a
	mov r1, #0
	mov r0, r8
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r1, [r4, #0xd4]
	add r0, r9, r9, lsl #5
	add r2, r1, r0
	ldr r1, _02125FC4 ; =0x02126300
	mov r0, r8
	add r2, r2, #1
	bl FUN_02023c40
	b _02125C7C
_02125C64:
	add r9, r9, #1
_02125C68:
	ldr r1, [r4, #0xd4]
	add r0, r9, r9, lsl #5
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	bne _02125C1C
_02125C7C:
	str r7, [sp]
	ldrsh r0, [r5, #0xa]
	mov r1, #0
	add r2, sp, #0x2a
	str r0, [sp, #4]
	ldrsh r3, [r5, #0xc]
	mov r0, r4
	mov r8, #5
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #4
	str r8, [sp, #0x10]
	bl FUN_ov104_02125084
	mov r0, r4
	bl FUN_ov104_02126050
	cmp r0, #0
	bne _02125CD0
	mov r0, r4
	bl FUN_ov104_0212608c
	cmp r0, #0
	beq _02125E04
_02125CD0:
	str r7, [sp]
	ldrsh r0, [r5, #2]
	mov r7, #0
	mov r2, #4
	str r0, [sp, #4]
	ldrsh r3, [r5, #4]
	mov r0, r4
	mov r1, r7
	str r3, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r3, r7
	add r2, r4, #0x10
	bl FUN_ov104_02125084
	ldrb r0, [r4, #0x3f]
	mov r3, #0x51
	cmp r0, #0
	mov r0, r7
	bne _02125D78
	ldr r9, _02125FC8 ; =0x02126304
	mvn r2, #0
	mov r1, r3
	b _02125D58
_02125D2C:
	mul r8, r0, r3
	ldr r12, [r4, #0xcc]
	ldrsh lr, [r4, #0x3c]
	ldrb r5, [r12, r8]
	cmp lr, r5
	addeq r5, r12, r8
	addeq r7, r5, #1
	beq _02125D54
	cmp lr, r2
	moveq r7, r9
_02125D54:
	add r0, r0, #1
_02125D58:
	mul r5, r0, r1
	ldr r8, [r4, #0xcc]
	ldrb r5, [r8, r5]
	cmp r5, #0xff
	beq _02125D74
	cmp r7, #0
	beq _02125D2C
_02125D74:
	b _02125DD0
_02125D78:
	ldr r9, _02125FCC ; =0x02126310
	mvn r2, #0
	mov r1, r3
	b _02125DB4
_02125D88:
	mul r8, r0, r3
	ldr r12, [r4, #0xd0]
	ldrsh lr, [r4, #0x3c]
	ldrb r5, [r12, r8]
	cmp lr, r5
	addeq r5, r12, r8
	addeq r7, r5, #1
	beq _02125DB0
	cmp lr, r2
	moveq r7, r9
_02125DB0:
	add r0, r0, #1
_02125DB4:
	mul r5, r0, r1
	ldr r8, [r4, #0xd0]
	ldrb r5, [r8, r5]
	cmp r5, #0xff
	beq _02125DD0
	cmp r7, #0
	beq _02125D88
_02125DD0:
	ldr r2, _02125FC0 ; =0x021260B8
	str r6, [sp]
	ldrsh r3, [r2, #6]
	mov r1, #1
	mov r0, r4
	str r3, [sp, #4]
	ldrsh r5, [r2, #8]
	mov r2, r7
	mov r3, r1
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	b _02125F00
_02125E04:
	mov r0, r4
	bl FUN_ov104_02126078
	cmp r0, #0
	beq _02125F04
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	add r6, sp, #0x14
	mov r8, r0
	ldr r1, _02125FD0 ; =0x021260CE
	mov r0, r6
	bl FUN_02023e98
	ldrsh r0, [r4, #0xe]
	mov r0, r0, lsl #1
	ldrh r0, [r8, r0]
	and r0, r0, #0x1000
	mov r0, r0, asr #0xc
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02125E64
	mov r0, r6
	add r1, r4, #0x10
	bl FUN_02023e98
_02125E64:
	str r7, [sp]
	ldrsh r0, [r5, #0x12]
	add r6, sp, #0x14
	mov r1, #0
	str r0, [sp, #4]
	ldrsh r3, [r5, #0x14]
	mov r0, r4
	mov r2, r6
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #2
	str r3, [sp, #0x10]
	bl FUN_ov104_02125084
	ldr r1, _02125FD0 ; =0x021260CE
	mov r0, r6
	bl FUN_02023e98
	ldrsh r0, [r4, #0xe]
	mov r0, r0, lsl #1
	ldrh r0, [r8, r0]
	and r0, r0, #0x800
	mov r0, r0, asr #0xb
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	beq _02125ED0
	mov r0, r6
	add r1, r4, #0x26
	bl FUN_02023e98
_02125ED0:
	str r7, [sp]
	ldrsh r0, [r5, #0xe]
	mov r1, #0
	add r2, sp, #0x14
	str r0, [sp, #4]
	ldrsh r3, [r5, #0x10]
	mov r5, #2
	mov r0, r4
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #3
	str r5, [sp, #0x10]
_02125F00:
	bl FUN_ov104_02125084
_02125F04:
	mov r0, #2
	str r0, [r4, #8]
_02125F0C:
	bl OS_WaitVBlankIntr
	mov r0, r4
	bl FUN_ov104_02125884
	mov r0, r4
	bl FUN_ov104_02125318
	mov r0, #6
	bl  FUN_ov16_020f147c
	mov r2, #3
	ldr r0, _02125FD4 ; =0x0209F5C0
	mov r1, #1
	str r2, [r4, #8]
	bl  FUN_ov16_020f6a9c
_02125F3C:
	mov r0, r4
	bl FUN_ov104_0212567c
_02125F44:
	mov r0, r4
	bl FUN_ov104_02126064
	cmp r0, #0
	beq _02125F70
	ldr r1, _02125FD8 ; =0x04001000
	add sp, sp, #0x4c
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x500
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02125F70:
	mov r0, r4
	bl FUN_ov104_02126078
	ldr r1, _02125FD8 ; =0x04001000
	cmp r0, #0
	ldrne r0, [r1]
	bicne r0, r0, #0x1f00
	orrne r0, r0, #0x500
	strne r0, [r1]
	ldreq r0, [r1]
	biceq r0, r0, #0x1f00
	orreq r0, r0, #0x700
	streq r0, [r1]
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02125FA8: .word unk_020A8440
_02125FAC: .word unk_020A8C40
_02125FB0: .word unk_020A9440
_02125FB4: .word ov104_021262F0
_02125FB8: .word ov104_021262F4
_02125FBC: .word unk_02099E8E
_02125FC0: .word 0x021260B8
_02125FC4: .word ov104_02126300
_02125FC8: .word ov104_02126304
_02125FCC: .word ov104_02126310
_02125FD0: .word 0x021260CE
_02125FD4: .word unk_0209F5C0
_02125FD8: .word 0x04001000
	arm_func_end FUN_ov104_02125b44

	arm_func_start FUN_ov104_02125fdc
FUN_ov104_02125fdc: ; 0x02125FDC
	bx lr
	arm_func_end FUN_ov104_02125fdc

	arm_func_start FUN_ov104_02125fe0
FUN_ov104_02125fe0: ; 0x02125FE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov104_02124f3c
	mov r0, r5
	bl FUN_ov104_02124f74
	ldr r4, _02126048 ; =0x0209A250
	ldr r1, [r5, #0xcc]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0xd0]
	mov r0, r4
	bl FUN_0202e1c0
	ldr r1, [r5, #0xd4]
	mov r0, r4
	bl FUN_0202e1c0
	mov r4, #1
	ldr r0, _0212604C ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	bl  FUN_ov16_020f51a8
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_02126048: .word unk_0209A250
_0212604C: .word unk_0209F5C0
	arm_func_end FUN_ov104_02125fe0

	arm_func_start FUN_ov104_02126050
FUN_ov104_02126050: ; 0x02126050
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov104_02126050

	arm_func_start FUN_ov104_02126064
FUN_ov104_02126064: ; 0x02126064
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov104_02126064

	arm_func_start FUN_ov104_02126078
FUN_ov104_02126078: ; 0x02126078
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov104_02126078

	arm_func_start FUN_ov104_0212608c
FUN_ov104_0212608c: ; 0x0212608C
	ldrb r0, [r0, #0xd]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov104_0212608c

	arm_func_start FUN_ov104_021260a0
FUN_ov104_021260a0: ; 0x021260A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov104_021260a0

	arm_func_start FUN_ov104_021260b4
FUN_ov104_021260b4: ; 0x021260B4
	bx lr
	arm_func_end FUN_ov104_021260b4
_021260B8:
	.byte 0x16, 0x09, 0x18, 0x00, 0x03, 0x00, 0x1C, 0x00
	.byte 0x09, 0x00, 0x1E, 0x00, 0x03, 0x00, 0x1C, 0x00, 0x03, 0x00, 0x1C, 0x00, 0x03, 0x00, 0x81, 0x48
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00, 0xB8, 0x61, 0x12, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xC8, 0x61, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0xD8, 0x61, 0x12, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x98, 0x61, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xA8, 0x61, 0x12, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov104_0212610c
FUN_ov104_0212610c: ; 0x0212610C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02126154 ; =0x02126180
	str r0, [r4, #0x14]
	ldr r0, _02126158 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0212615C ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02126154: .word ov104_02126180
_02126158: .word 0x00009CCD
_0212615C: .word 0x0000EA3C
	arm_func_end FUN_ov104_0212610c

	.section .sinit, 4
ov104_02126160:
	.word FUN_ov104_0212610c

	.data
	.global ov104_02126180
ov104_02126180:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x72, 0x75, 0x70, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x72, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x72, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x70, 0x72, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x70, 0x72, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov104_021261F0
ov104_021261F0:
	.byte 0xB4, 0x60, 0x12, 0x02, 0xA0, 0x60, 0x12, 0x02, 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02
	.byte 0xB0, 0x5A, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x44, 0x5B, 0x12, 0x02, 0xDC, 0x5F, 0x12, 0x02
	.byte 0xE0, 0x5F, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02
	.byte 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02
	.byte 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02
	.byte 0x24, 0x4D, 0x12, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02, 0x5C, 0x56, 0x12, 0x02
	.global ov104_02126260
ov104_02126260:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x50, 0x72, 0x61, 0x63, 0x74, 0x69, 0x63, 0x65, 0x2E, 0x53
	.byte 0x50, 0x46, 0x5F, 0x00
	.global ov104_02126284
ov104_02126284:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x43, 0x6C, 0x65, 0x61, 0x72, 0x43, 0x6F, 0x6E, 0x64, 0x69, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov104_021262A8
ov104_021262A8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x4F, 0x70, 0x65, 0x6E, 0x43, 0x6F, 0x6E, 0x64, 0x69
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov104_021262CC
ov104_021262CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x42, 0x61, 0x74, 0x74, 0x6C
	.byte 0x65, 0x52, 0x6F, 0x75, 0x74, 0x65, 0x54, 0x69, 0x74, 0x6C, 0x65, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov104_021262F0
ov104_021262F0:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov104_021262F4
ov104_021262F4:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov104_02126300
ov104_02126300:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov104_02126304
ov104_02126304:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov104_02126310
ov104_02126310:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

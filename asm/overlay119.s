
	.include "/macros/function.inc"
	.include "/include/overlay119.inc"

	.text
	arm_func_start FUN_ov119_02124d00
FUN_ov119_02124d00: ; 0x02124D00
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r2, r0
	cmp r1, #0x5a
	cmpne r1, #0x62
	cmpne r1, #0x76
	cmpne r1, #0x77
	cmpne r1, #0x3f
	cmpne r1, #0x40
	cmpne r1, #0x37
	cmpne r1, #0x48
	cmpne r1, #0x49
	mvnne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0x11
	mvnhs r0, #0
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	add r1, r2, #0xc
	mov r2, #0x14
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov119_02124d00

	arm_func_start FUN_ov119_02124d6c
FUN_ov119_02124d6c: ; 0x02124D6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	mov r1, #0
	mov r2, #0x54
	bl MI_CpuFill8
	ldr r0, _02124D9C ; =0x02125714
	add r1, r4, #0x34
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124D9C: .word ov119_02125714
	arm_func_end FUN_ov119_02124d6c

	arm_func_start FUN_ov119_02124da0
FUN_ov119_02124da0: ; 0x02124DA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x34]
	cmp r6, #0
	ldrne r1, _02124DEC ; =0x021255AC
	ldrne r7, _02124DF0 ; =0x021255AC
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x34
	mov r4, #0xc
_02124DC8:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02124DC8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124DEC: .word 0x021255AC
_02124DF0: .word 0x021255AC
	arm_func_end FUN_ov119_02124da0

	arm_func_start FUN_ov119_02124df4
FUN_ov119_02124df4: ; 0x02124DF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x34
	mov r4, #0xc
_02124E04:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #7
	blt _02124E04
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov119_02124df4

	arm_func_start FUN_ov119_02124e1c
FUN_ov119_02124e1c: ; 0x02124E1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r5, [r6, #0x40]
	mov r4, #1
	cmp r5, #0
	beq _02124E5C
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f1138
_02124E5C:
	ldr r8, [r6, #0x58]
	mov r5, #0
	cmp r8, #0
	beq _02124E9C
	ldr r0, [r8, #0xc]
	mov r7, #3
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_020f1138
_02124E9C:
	ldr r8, [r6, #0x64]
	cmp r8, #0
	beq _02124ED8
	ldr r0, [r8, #0xc]
	mov r7, #4
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl  FUN_ov16_020f1138
_02124ED8:
	ldr r8, [r6, #0x70]
	cmp r8, #0
	beq _02124F14
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl  FUN_ov16_020f1138
_02124F14:
	ldr r8, [r6, #0x7c]
	cmp r8, #0
	beq _02124F4C
	ldr r0, [r8, #0xc]
	mov r7, #6
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl  FUN_ov16_020f1868
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl  FUN_ov16_020f1138
_02124F4C:
	ldr r8, [r6, #0x4c]
	mov r5, #0
	cmp r8, #0
	beq _02124F8C
	ldr r0, [r8, #0xc]
	mov r7, #2
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_020f1138
_02124F8C:
	ldr r0, [r6, #0x20]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r6, #0x24]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	add r2, r5, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov119_02124e1c

	arm_func_start FUN_ov119_02124fcc
FUN_ov119_02124fcc: ; 0x02124FCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r6, [r4, #0x40]
	cmp r6, #0
	beq _0212500C
	ldr r0, [r6, #0x14]
	mov r5, #0
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_0212500C:
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r7, #1
	ldr r1, [r4, #0x58]
	mov r0, r7
	mov r2, r5
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x64]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x70]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x7c]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	ldr r1, [r4, #0x4c]
	mov r2, r5
	mov r0, #2
	bl  FUN_ov16_020f1a60
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r1, [r4, #0x24]
	cmpne r1, #0
	moveq r7, #0
	cmp r7, #0
	strne r0, [r4, #0x28]
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov119_02124fcc

	arm_func_start FUN_ov119_021250cc
FUN_ov119_021250cc: ; 0x021250CC
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x20]
	cmp r0, #0
	ldrne r0, [lr, #0x24]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x30]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x2c]
	ldrh r1, [lr, #0x2e]
	mov r12, #0
	ldr r0, [lr, #0x24]
	mul r3, r2, r1
	ldr r1, [lr, #0x28]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x30]
	bl GXS_LoadBG2Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov119_021250cc

	arm_func_start FUN_ov119_02125124
FUN_ov119_02125124: ; 0x02125124
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r7, r0
	ldr r12, [r7, #0x20]
	mov r3, #0
	cmp r12, #0
	ldrne r0, [r7, #0x24]
	cmpne r0, #0
	movne r3, #1
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r0, r2, #8
	add r0, r0, r0, lsr #31
	add r0, r1, r0, asr #1
	mov r6, #1
	mov r2, #5
	mov r0, r0, lsl #0x18
	stmia sp, {r2, r6}
	mov r4, #0
	mov r5, #4
	str r5, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _02125260 ; =0x0209F5C0
	mov r1, r6
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r7, #0x20
	bl  FUN_ov16_020f2f20
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _02125264 ; =0x02099F50
	strb r4, [r7, #0x1c]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	bl FUN_02043310
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r6}
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r1, [r7, #0x1d]
	mov r0, #0x14
	smulbb r0, r1, r0
	sub r0, r0, #6
	rsb r0, r0, #0x40
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r7, #0x2c]
	ldrh r3, [r7, #0x2e]
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r8]
	bl FUN_0204331c
	ldrh r2, [r7, #0x2c]
	ldrh r1, [r7, #0x2e]
	ldr r0, [r7, #0x24]
	strb r6, [r7, #0x30]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02125260: .word unk_0209F5C0
_02125264: .word unk_02099F50
	arm_func_end FUN_ov119_02125124

	arm_func_start FUN_ov119_02125268
FUN_ov119_02125268: ; 0x02125268
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov r1, #1
	ldr r0, _02125308 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_020f5eec
	ldr r4, [r5, #0x4c]
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0212530C ; =0x0209AEC0
	bl FUN_020466c0
	cmp r0, #0
	addlt sp, sp, #0x20
	str r0, [r5, #0x14]
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr lr, [r4, #0xc]
	mov r1, #1
	str r1, [sp]
	mov r12, #2
	str r12, [sp, #4]
	mov r3, #0x1e
	str r3, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	cmp r0, #3
	str r12, [sp, #0x10]
	str r12, [sp, #0x14]
	movgt r0, #3
	add r3, r4, lr
	add lr, r3, r0, lsl #3
	str r12, [sp, #0x18]
	ldr r0, _02125308 ; =0x0209F5C0
	mov r3, r2
	str lr, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_02125308: .word unk_0209F5C0
_0212530C: .word unk_0209AEC0
	arm_func_end FUN_ov119_02125268

	arm_func_start FUN_ov119_02125310
FUN_ov119_02125310: ; 0x02125310
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r1, #1
	ldr r0, _02125438 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_020f5f64
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02125348
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	beq _021253B4
_02125348:
	ldr r3, [r4, #0x58]
	cmp r3, #0
	beq _021253A4
	mov r2, #3
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02125438 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021253A4:
	mov r0, r4
	mov r1, #0xa
	mov r2, #9
	bl FUN_ov119_02125124
_021253B4:
	ldr r12, [r4, #0x64]
	cmp r12, #0
	beq _0212541C
	ldr r3, [r12, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	add r3, r12, r3
	sub r2, r2, #1
	mov r0, #0xb4
	mla r12, r2, r0, r3
	str r1, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _02125438 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_0212541C:
	mov r0, r4
	bl FUN_ov119_02125268
	ldr r0, _02125438 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02125438: .word unk_0209F5C0
	arm_func_end FUN_ov119_02125310

	arm_func_start FUN_ov119_0212543c
FUN_ov119_0212543c: ; 0x0212543C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #1
	mov r5, r0
	mov r3, #0
	sub r2, r4, #2
	ldr r0, _021254A0 ; =0x0209F5C0
	mov r1, r4
	str r3, [r5, #8]
	str r3, [r5, #0xc]
	str r4, [r5, #0x10]
	str r2, [r5, #0x14]
	str r3, [r5, #0x18]
	strb r3, [r5, #0x1c]
	strb r3, [r5, #0x1d]
	bl  FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x20
	bl  FUN_ov16_020f2f7c
	add r0, r5, #0x20
	mov r1, #0x18
	mov r2, #8
	bl  FUN_ov16_020f2fa8
	mov r0, r5
	bl FUN_ov119_02124d6c
	ldmfd sp!, {r3, r4, r5, pc}
_021254A0: .word unk_0209F5C0
	arm_func_end FUN_ov119_0212543c

	arm_func_start FUN_ov119_021254a4
FUN_ov119_021254a4: ; 0x021254A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _021254C4
	cmp r1, #3
	beq _021254F4
	ldmfd sp!, {r4, pc}
_021254C4:
	add r0, r4, #0x34
	mov r1, #7
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov119_02124da0
	mov r0, r4
	bl FUN_ov119_02124e1c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021254F4:
	bl FUN_ov119_02125310
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov119_021254a4

	arm_func_start FUN_ov119_021254fc
FUN_ov119_021254fc: ; 0x021254FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0212551C
	cmp r1, #3
	beq _0212553C
	ldmfd sp!, {r4, pc}
_0212551C:
	bl FUN_ov119_02124fcc
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0212553C:
	bl FUN_ov119_021250cc
	ldr r0, _02125550 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02125550: .word unk_0209F5C0
	arm_func_end FUN_ov119_021254fc

	arm_func_start FUN_ov119_02125554
FUN_ov119_02125554: ; 0x02125554
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x34
	mov r1, #7
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov119_02124df4
	mov r4, #1
	ldr r0, _02125590 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r1, r4
	add r0, r5, #0x20
	bl  FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, pc}
_02125590: .word unk_0209F5C0
	arm_func_end FUN_ov119_02125554

	arm_func_start FUN_ov119_02125594
FUN_ov119_02125594: ; 0x02125594
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov119_02125594

	arm_func_start FUN_ov119_021255a8
FUN_ov119_021255a8: ; 0x021255A8
	bx lr
	arm_func_end FUN_ov119_021255a8
_021255AC:
	.byte 0x90, 0x56, 0x12, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x70, 0x56, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x58, 0x56, 0x12, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x64, 0x56, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0x80, 0x56, 0x12, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov119_021255dc
FUN_ov119_021255dc: ; 0x021255DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125624 ; =0x02125640
	str r0, [r4, #0x14]
	ldr r0, _02125628 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0212562C ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125624: .word ov119_02125640
_02125628: .word 0x00009CCD
_0212562C: .word 0x0000EA3C
	arm_func_end FUN_ov119_021255dc

	.section .sinit, 4
ov119_02125630:
	.word FUN_ov119_021255dc

	.data
	.global ov119_02125640
ov119_02125640:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x5F, 0x77, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x55, 0x12, 0x02, 0x94, 0x55, 0x12, 0x02
	.byte 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02, 0x3C, 0x54, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xA4, 0x54, 0x12, 0x02, 0xFC, 0x54, 0x12, 0x02, 0x54, 0x55, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02
	.byte 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02
	.byte 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0x00, 0x4D, 0x12, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov119_02125714
ov119_02125714:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x53, 0x54, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

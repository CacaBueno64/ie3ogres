
	.include "/macros/function.inc"
	.include "/include/overlay113.inc"

	.text
	arm_func_start FUN_ov113_02124d00
FUN_ov113_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	cmp r0, #0x1c
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	cmp r0, #0x65
	mvnhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _02124D48
	add r0, r5, #0x234
	bl strcpy
_02124D48:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02124D60
	add r0, r5, #0x35
	add r0, r0, #0x300
	bl strcpy
_02124D60:
	ldr r7, [r4, #0x1c]
	cmp r7, #0
	beq _02124DA0
	mov r6, #0xbc
	mov r0, r7
	mov r2, r6
	add r1, r5, #0x354
	bl memcmp
	cmp r0, #0
	beq _02124DA0
	mov r0, r7
	mov r2, r6
	add r1, r5, #0x354
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r5, #0x4cc]
_02124DA0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02124DB8
	add r1, r5, #0x410
	mov r2, #0xbc
	bl MI_CpuCopy8
_02124DB8:
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x28
	bl MI_CpuCopy8
	ldr r0, [r5, #0x18]
	cmp r0, #0
	addne r0, r5, #0x234
	strne r0, [r5, #0x18]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	addne r0, r5, #0x35
	addne r0, r0, #0x300
	strne r0, [r5, #0x20]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	addne r0, r5, #0x354
	strne r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	addne r0, r5, #0x410
	strne r0, [r5, #0x2c]
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov113_02124d00

	arm_func_start FUN_ov113_02124e1c
FUN_ov113_02124e1c: ; 0x02124E1C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r2, _02124EE0 ; =0x00000101
	mov r1, r5
	add r0, r6, #0x234
	bl MI_CpuFill8
	add r0, r6, #0x35
	mov r4, #0x1f
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x300
	bl MI_CpuFill8
	add r0, r6, #0x300
	add r1, r6, #0x400
	sub r2, r4, #0x20
	strb r5, [r6, #0x354]
	strb r5, [r6, #0x36c]
	strb r5, [r6, #0x39c]
	strh r5, [r0, #0x9e]
	strb r5, [r6, #0x39d]
	strh r5, [r0, #0xa0]
	strh r5, [r0, #0xa2]
	strh r2, [r0, #0xa4]
	str r5, [r6, #0x3c4]
	strh r5, [r0, #0xa6]
	strh r5, [r0, #0xa8]
	strb r5, [r6, #0x3aa]
	strb r5, [r6, #0x3c8]
	strb r5, [r6, #0x3c9]
	strb r5, [r6, #0x3c2]
	strb r5, [r6, #0x3c3]
	strb r5, [r6, #0x410]
	strb r5, [r6, #0x428]
	strb r5, [r6, #0x458]
	strh r5, [r1, #0x5a]
	strb r5, [r6, #0x459]
	strh r5, [r1, #0x5c]
	strh r5, [r1, #0x5e]
	strh r2, [r1, #0x60]
	str r5, [r6, #0x480]
	strh r5, [r1, #0x62]
	strh r5, [r1, #0x64]
	strb r5, [r6, #0x466]
	strb r5, [r6, #0x484]
	strb r5, [r6, #0x485]
	strb r5, [r6, #0x47e]
	strb r5, [r6, #0x47f]
	ldmfd sp!, {r4, r5, r6, pc}
_02124EE0: .word 0x00000101
	arm_func_end FUN_ov113_02124e1c

	arm_func_start FUN_ov113_02124ee4
FUN_ov113_02124ee4: ; 0x02124EE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xe8
	mov r1, #0
	mov r2, #0xd8
	bl MI_CpuFill8
	ldr r0, _02124F20 ; =0x02126D9C
	add r1, r4, #0xe8
	bl FUN_ov16_020f316c
	ldr r0, _02124F24 ; =0x02126DB8
	add r1, r4, #0xf4
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124F20: .word ov113_02126D9C
_02124F24: .word ov113_02126DB8
	arm_func_end FUN_ov113_02124ee4

	arm_func_start FUN_ov113_02124f28
FUN_ov113_02124f28: ; 0x02124F28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r7, [r4, #0xe8]
	cmp r7, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _02124FF4 ; =0x02126B78
	ldr r0, [r8]
	cmp r0, #0
	beq _02124F78
	add r6, r4, #0xe8
	mov r5, #0xc
_02124F5C:
	ldr r3, [r8, #4]
	mov r2, r7
	mla r1, r3, r5, r6
	bl FUN_ov16_020f32b4
	ldr r0, [r8, #8]!
	cmp r0, #0
	bne _02124F5C
_02124F78:
	mov r5, #1
	ldr r0, [r4, #0xf4]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02124FB0
	str r5, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02124FF8 ; =0x02126DD8
	add r1, r4, #0x1b4
	bl FUN_ov16_020f31fc
_02124FB0:
	add r0, r4, #0xe8
	mov r1, #0x12
	bl FUN_ov16_020f330c
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r5, #0x12
_02124FD0:
	mov r0, r6
	bl OS_Sleep
	mov r1, r5
	add r0, r4, #0xe8
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _02124FD0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02124FF4: .word ov113_02126B78
_02124FF8: .word ov113_02126DD8
	arm_func_end FUN_ov113_02124f28

	arm_func_start FUN_ov113_02124ffc
FUN_ov113_02124ffc: ; 0x02124FFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0xe8
	mov r4, #0xc
_0212500C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x12
	blt _0212500C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov113_02124ffc

	arm_func_start FUN_ov113_02125024
FUN_ov113_02125024: ; 0x02125024
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	mov r10, r0
	ldr r4, [r10, #0x100]
	cmp r4, #0
	beq _02125064
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	mov r3, #1
	add r0, r4, r0
	mov r2, #0
	bl FUN_ov16_020f1868
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl FUN_ov16_020f1138
_02125064:
	ldr r8, _02125244 ; =0x02126AF8
	add r7, sp, #0x40
	ldmia r8!, {r0, r1, r2, r3}
	mov r6, r7
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	mov r4, #0
	ldr r8, [sp, #0x40]
	sub r5, r4, #1
	cmp r8, r5
	beq _02125104
	mvn r11, #0
_021250A8:
	mov r0, #0xc
	mla r0, r8, r0, r10
	ldr r9, [r0, #0xe8]
	ldr r7, [r6, #4]
	cmp r9, #0
	beq _021250F8
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r7
	add r0, r9, r0
	add r2, r4, #1
	mov r5, r4
	bl FUN_ov16_020f1868
	mov r4, r0
	mov r0, r9
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
	cmp r8, #0xb
	moveq r4, r5
_021250F8:
	ldr r8, [r6, #8]!
	cmp r8, r11
	bne _021250A8
_02125104:
	ldr r6, _02125248 ; =0x02126B38
	add r5, sp, #0
	ldmia r6!, {r0, r1, r2, r3}
	mov r9, r5
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	mov r8, #0
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r1, [sp]
	sub r4, r8, #1
	mov r11, #1
	cmp r1, r4
	beq _0212519C
	mvn r4, #0
	mov r5, #0xc
_02125150:
	mla r0, r1, r5, r10
	ldr r7, [r0, #0xe8]
	ldr r6, [r9, #4]
	cmp r7, #0
	beq _02125190
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r8, #1
	bl FUN_ov16_020f1868
	mov r8, r0
	mov r0, r7
	mov r1, r11
	mov r2, r6
	bl FUN_ov16_020f1138
_02125190:
	ldr r1, [r9, #8]!
	cmp r1, r4
	bne _02125150
_0212519C:
	ldr r7, [r10, #0x1b4]
	str r8, [r10, #0x22c]
	cmp r7, #0
	mov r4, #1
	mov r5, #0
	beq _021251E4
	ldr r0, [r7, #0xc]
	mov r6, #0xa
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r8, #1
	bl FUN_ov16_020f1868
	mov r8, r0
	mov r0, r7
	mov r2, r6
	mov r1, r4
	bl FUN_ov16_020f1138
_021251E4:
	add r6, r10, #0x5c
	mov r7, #0
_021251EC:
	ldr r0, [r6]
	mov r2, r5
	cmp r0, #0
	ldrne r1, [r6, #4]
	cmpne r1, #0
	movne r2, r4
	cmp r2, #0
	beq _0212522C
	ldrh r9, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	mov r3, r5
	add r2, r8, #1
	mul r1, r9, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	mov r8, r0
_0212522C:
	add r7, r7, #1
	cmp r7, #7
	add r6, r6, #0x14
	blt _021251EC
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125244: .word ov113_02126AF8
_02125248: .word ov113_02126B38
	arm_func_end FUN_ov113_02125024

	arm_func_start FUN_ov113_0212524c
FUN_ov113_0212524c: ; 0x0212524C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r6, [r5, #0x100]
	cmp r6, #0
	beq _0212528C
	ldr r0, [r6, #0x14]
	mov r4, #0
	ldr r2, [r6, #0x18]
	mov r1, r4
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r4
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_0212528C:
	bl G2S_GetBG1CharPtr
	mov r6, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	mov r2, r6
	mov r6, #1
	ldr r1, [r5, #0x118]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r5, #0x124]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r5, #0x148]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r5, #0x178]
	mov r0, r6
	str r2, [r5, #0x4d0]
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r5, #0x184]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r5, #0x190]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r0, r5
	bl FUN_ov113_02125384
	add r6, r5, #0x5c
	mov r3, r4
	mov r12, #1
_02125330:
	ldr r1, [r6]
	add r4, r4, #1
	cmp r1, #0
	ldrne r1, [r6, #4]
	cmpne r1, #0
	movne r1, r12
	moveq r1, r3
	cmp r1, #0
	strne r0, [r6, #8]
	ldrneh r2, [r6, #0xc]
	ldrneh r1, [r6, #0xe]
	add r6, r6, #0x14
	mulne r1, r2, r1
	addne r0, r0, r1, lsl #5
	cmp r4, #7
	blt _02125330
	mov r0, #0
	strb r0, [r5, #0x4cd]
	strb r0, [r5, #0x4ce]
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov113_0212524c

	arm_func_start FUN_ov113_02125384
FUN_ov113_02125384: ; 0x02125384
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl G2S_GetBG2CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r2, r4
	mov r4, #2
	mov r0, r4
	ldr r1, [r5, #0x10c]
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x130]
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x13c]
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x154]
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x160]
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x19c]
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x1a8]
	bl FUN_ov16_020f1a60
	ldr r1, [r5, #0x1b4]
	mov r2, r0
	mov r0, r4
	bl FUN_ov16_020f1a60
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov113_02125384

	arm_func_start FUN_ov113_02125438
FUN_ov113_02125438: ; 0x02125438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r9, r0
	add r7, r9, #0x5c
	mov r5, r8
	mov r6, #1
	mov r4, r8
_02125454:
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	ldrneb r0, [r7, #0x10]
	cmpne r0, #0
	beq _02125498
	strb r4, [r7, #0x10]
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
_02125498:
	add r8, r8, #1
	cmp r8, #7
	add r7, r7, #0x14
	blt _02125454
	mov r0, #0
	strb r0, [r9, #0x4d4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov113_02125438

	arm_func_start FUN_ov113_021254b4
FUN_ov113_021254b4: ; 0x021254B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r1, #1
	ldr r0, _0212554C ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5eec
	ldr lr, [r4, #0x10c]
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r4, #0x14]
	cmp r4, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r4, pc}
	ldr r3, [lr, #0xc]
	mov r1, #1
	str r1, [sp]
	mov r12, #2
	str r12, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	cmp r4, #3
	str r12, [sp, #0x14]
	add lr, lr, r3
	movgt r4, #3
	str r12, [sp, #0x18]
	add r12, lr, r4, lsl #3
	ldr r0, _0212554C ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0212554C: .word unk_0209F5C0
	arm_func_end FUN_ov113_021254b4

	arm_func_start FUN_ov113_02125550
FUN_ov113_02125550: ; 0x02125550
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	mov r4, #0x14
	mul r4, r1, r4
	mov r9, r0
	add r0, r9, #0x5c
	ldr r12, [r0, r4]
	mov r8, r2
	add r6, r0, r4
	cmp r12, #0
	ldrne r0, [r6, #4]
	mov r2, #0
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	mov r7, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r3, [sp, #0x40]
	mov r0, r7, asr #2
	mov r2, r3, asr #2
	add r2, r3, r2, lsr #29
	add r0, r7, r0, lsr #29
	mov r0, r0, lsl #0x15
	mov r2, r2, lsl #0x15
	mov r4, r0, asr #0x18
	mov r0, r2, asr #0x18
	mov r3, #6
	cmp r1, #6
	mov r2, #0x1c
	moveq r3, #2
	streq r3, [sp, #0x48]
	moveq r2, #0x13
	beq _021255F0
	cmp r1, #0
	subeq r1, r4, #7
	moveq r1, r1, lsl #0x18
	movne r2, #0xe
	movne r3, #3
	moveq r4, r1, asr #0x18
_021255F0:
	mov r1, #5
	mov r5, #1
	stmia sp, {r1, r5}
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r4, #0
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _02125730 ; =0x0209F5C0
	mov r1, r5
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r6
	bl FUN_ov16_020f2f20
	ldr r10, _02125734 ; =0x02099F50
	mov r1, r5
	ldr r0, [r10]
	mov r2, #4
	bl FUN_02043310
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #29
	add r1, r1, r0, ror #29
	ldr r0, [sp, #0x40]
	ldrb r3, [sp, #0x44]
	mov r2, r0, lsr #0x1f
	rsb r0, r2, r0, lsl #29
	add r2, r2, r0, ror #29
	cmp r3, #0
	beq _021256AC
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r5}
	str r4, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r5, [sp, #0x18]
	ldrh r2, [r6, #0xc]
	ldrh r3, [r6, #0xe]
	ldr r1, [r6, #4]
	mov r0, r8
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	b _021256F8
_021256AC:
	mov r3, #3
	ldr r0, [sp, #0x48]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	mov r3, r8
	str r0, [sp, #8]
	ldrh r0, [r6, #0xc]
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r6, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r10]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
_021256F8:
	ldr r0, _02125734 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	mov r4, #1
	strb r4, [r6, #0x10]
	ldrh r2, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	ldr r0, [r6, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	strb r4, [r9, #0x4d4]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125730: .word unk_0209F5C0
_02125734: .word unk_02099F50
	arm_func_end FUN_ov113_02125550

	arm_func_start FUN_ov113_02125738
FUN_ov113_02125738: ; 0x02125738
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	add r4, sp, #0x20
	mov r5, #0
	mov r10, r2
	mov r9, r3
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	cmp r1, #0
	ldr r8, [sp, #0x5c]
	beq _021257A4
	ldr r2, _0212585C ; =0x66666667
	mov r7, #0xa
_02125774:
	mov r3, r1, lsr #0x1f
	smull r6, r11, r2, r1
	add r11, r3, r11, asr #2
	smull r3, r6, r7, r11
	mov r6, r1
	sub r11, r1, r3
	str r11, [r4, r5, lsl #2]
	smull r3, r1, r2, r6
	mov r3, r6, lsr #0x1f
	add r5, r5, #1
	adds r1, r3, r1, asr #2
	bne _02125774
_021257A4:
	ldr r2, [sp, #0x58]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r7, [r0, #0xe8]
	cmp r5, #0
	moveq r5, #1
	cmp r7, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	mov r6, #0
	addle sp, sp, #0x30
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #1
	add r11, sp, #0x20
_021257E0:
	sub r1, r5, r6
	ldr r2, [r7, #0xc]
	add r0, r11, r1, lsl #2
	cmp r8, #0
	subne r1, r10, r1
	addeq r1, r10, r6
	ldr r0, [r0, #-4]
	add r2, r7, r2
	mov r1, r1, lsl #0x18
	add r0, r2, r0, lsl #2
	mov r2, r1, asr #0x18
	mov r1, #4
	stmia sp, {r1, r4}
	str r2, [sp, #8]
	str r9, [sp, #0xc]
	mov r2, #0
	str r4, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	mov r1, #0xd
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _02125860 ; =0x0209F5C0
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_020f5da0
	add r6, r6, #1
	cmp r6, r5
	blt _021257E0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212585C: .word 0x66666667
_02125860: .word unk_0209F5C0
	arm_func_end FUN_ov113_02125738

	arm_func_start FUN_ov113_02125864
FUN_ov113_02125864: ; 0x02125864
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	cmp r1, #0x3c
	bge _0212589C
	add r2, r2, #2
	ldr r12, [sp, #0x28]
	mov r2, r2, lsl #0x18
	str r12, [sp]
	mov r12, #1
	mov r2, r2, asr #0x18
	str r12, [sp, #4]
	bl FUN_ov113_02125738
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0212589C:
	ldr r12, [sp, #0x28]
	mov r1, #0xc
	add r12, r12, #1
	mla r0, r12, r1, r0
	ldr r12, [r0, #0xe8]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	stmib sp, {r1, r2}
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	ldr r0, [r12, #0xc]
	mov r2, #0
	add r12, r12, r0
	ldr r0, _02125908 ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02125908: .word unk_0209F5C0
	arm_func_end FUN_ov113_02125864

	arm_func_start FUN_ov113_0212590c
FUN_ov113_0212590c: ; 0x0212590C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	ldrb r0, [r9, #0x1e]
	mov r6, #3
	mov r8, #5
	cmp r0, #0
	movne r8, #1
	cmp r0, #0
	addne r0, r6, #8
	movne r0, r0, lsl #0x18
	movne r6, r0, asr #0x18
	cmp r8, #0
	mov r7, #0
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, #6
	mov r4, #0x1b
	mov r10, #0x14
_02125958:
	mla r0, r7, r10, r9
	str r5, [sp]
	ldrb r1, [r0, #0x1d5]
	mov r0, r9
	mov r2, r4
	mov r3, r6
	bl FUN_ov113_02125864
	add r0, r6, #4
	mov r0, r0, lsl #0x18
	add r7, r7, #1
	cmp r7, r8
	mov r6, r0, asr #0x18
	blt _02125958
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov113_0212590c

	arm_func_start FUN_ov113_02125994
FUN_ov113_02125994: ; 0x02125994
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #0x1e]
	mov r6, #2
	mov r9, #5
	cmp r0, #0
	movne r9, #1
	cmp r0, #0
	addne r0, r6, #8
	movne r0, r0, lsl #0x18
	movne r6, r0, asr #0x18
	mov r7, #0
	cmp r9, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, r7
	mov r11, r7
	mov r4, #0x14
_021259D8:
	mla r8, r7, r4, r10
	ldrb r0, [r8, #0x1d6]
	cmp r0, #0
	beq _021259F8
	mov r0, r10
	mov r1, r5
	mov r2, r6
	bl FUN_ov113_02125a30
_021259F8:
	ldrb r0, [r8, #0x1d7]
	cmp r0, #0
	beq _02125A14
	mov r0, r10
	mov r1, r11
	add r2, r6, #2
	bl FUN_ov113_02125ab0
_02125A14:
	add r0, r6, #4
	mov r0, r0, lsl #0x18
	add r7, r7, #1
	cmp r7, r9
	mov r6, r0, asr #0x18
	blt _021259D8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov113_02125994

	arm_func_start FUN_ov113_02125a30
FUN_ov113_02125a30: ; 0x02125A30
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x19c]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r3, #7
	mov r0, r1, lsl #0x18
	mov r1, #1
	str r3, [sp]
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	mov r2, #0
	add r12, r12, r3
	ldr r0, _02125AAC ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02125AAC: .word unk_0209F5C0
	arm_func_end FUN_ov113_02125a30

	arm_func_start FUN_ov113_02125ab0
FUN_ov113_02125ab0: ; 0x02125AB0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x1a8]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r3, #8
	mov r0, r1, lsl #0x18
	mov r1, #1
	str r3, [sp]
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #0xc
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	mov r2, #0
	add r12, r12, r3
	ldr r0, _02125B2C ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02125B2C: .word unk_0209F5C0
	arm_func_end FUN_ov113_02125ab0

	arm_func_start FUN_ov113_02125b30
FUN_ov113_02125b30: ; 0x02125B30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r10, r0
	ldrb r2, [r10, #0x229]
	mov r4, #0xc
	mov r0, #6
	cmp r2, #2
	mov r7, #0x30
	mov r9, r1
	mov r5, #1
	mov r3, #0x1e
	mov r6, #0xb
	moveq r0, #4
	moveq r4, #0x10
	moveq r7, #0x20
	beq _02125B98
	cmp r2, #3
	moveq r6, r4
	moveq r0, r5
	moveq r4, #0x16
	moveq r7, #0x38
	beq _02125B98
	cmp r2, #5
	moveq r0, r5
	moveq r4, #0x10
	moveq r7, #8
_02125B98:
	mov r1, #0xc
	mla r1, r6, r1, r10
	ldr r2, [r1, #0xe8]
	mov r6, #1
	cmp r2, #0
	beq _02125C0C
	mov r8, #2
	mov r5, r5, lsl #0x18
	mov r0, r0, lsl #0x18
	mov r1, r6
	str r8, [sp]
	str r1, [sp, #4]
	mov r5, r5, asr #0x18
	str r5, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	and r0, r3, #0xff
	str r0, [sp, #0x10]
	and r0, r4, #0xff
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _02125F04 ; =0x0209F5C0
	add r4, r2, r3
	mov r2, r1
	mov r3, #0
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125C0C:
	cmp r9, #0
	beq _02125E80
	add r0, r7, #4
	str r0, [sp]
	mov r4, #0
	mov r0, r10
	mov r2, r9
	mov r1, #3
	mov r3, #0x48
	stmib sp, {r4, r6}
	bl FUN_ov113_02125550
	add r0, r7, #0x32
	str r0, [sp]
	mov r5, #0x60
	mov r0, r10
	mov r1, r6
	mov r3, r5
	stmib sp, {r4, r6}
	add r2, r9, #0x18
	bl FUN_ov113_02125550
	add r0, r7, #0x42
	stmia sp, {r0, r4, r6}
	mov r3, r5
	mov r0, r10
	mov r1, #2
	add r2, r9, #0x30
	bl FUN_ov113_02125550
	add r1, r7, #0x10
	mov r0, r1, asr #2
	mov r4, #9
	add r0, r1, r0, lsr #29
	mov r8, r0, asr #3
	str r4, [sp]
	mov r3, r8, lsl #0x18
	ldrb r1, [r9, #0x48]
	mov r0, r10
	mov r2, #0x14
	mov r3, r3, asr #0x18
	bl FUN_ov113_02125864
	add r1, r7, #0x20
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r5, r0, asr #3
	stmia sp, {r4, r6}
	mov r3, r5, lsl #0x18
	ldrh r1, [r9, #0x4a]
	mov r0, r10
	mov r2, #0x15
	mov r3, r3, asr #0x18
	bl FUN_ov113_02125738
	stmia sp, {r4, r6}
	mov r0, r5, lsl #0x18
	mov r4, #0x1b
	mov r3, r0, asr #0x18
	ldrb r1, [r9, #0x49]
	mov r0, r10
	mov r2, r4
	bl FUN_ov113_02125738
	ldrh r1, [r9, #0x4c]
	add r2, r7, #0x40
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r3, r0, lsl #0x15
	mov r5, #9
	cmp r1, #0x3e8
	addhs r1, r4, #0x3cc
	mov r11, #6
	str r5, [sp]
	mov r4, #1
	mov r0, r10
	mov r2, r11
	str r4, [sp, #4]
	mov r3, r3, asr #0x18
	bl FUN_ov113_02125738
	ldrh r1, [r9, #0x4e]
	mov r0, r10
	mov r3, r8
	mov r2, #3
	bl FUN_ov113_02126984
	str r5, [sp]
	add r12, r7, #0x50
	str r4, [sp, #4]
	mov r3, r12, asr #2
	add r3, r12, r3, lsr #29
	mov r8, #0x1b
	mov r3, r3, lsl #0x15
	ldrh r1, [r9, #0x52]
	mov r0, r10
	mov r2, r8
	mov r3, r3, asr #0x18
	bl FUN_ov113_02125738
	str r5, [sp]
	add r5, r7, #0x60
	str r4, [sp, #4]
	mov r3, r5, asr #2
	add r3, r5, r3, lsr #29
	mov r3, r3, lsl #0x15
	ldrh r1, [r9, #0x54]
	mov r2, r8
	mov r0, r10
	mov r3, r3, asr #0x18
	bl FUN_ov113_02125738
	add r0, r9, #0x56
	bl strlen
	cmp r0, #0
	beq _02125DF0
	add r5, sp, #0x20
	ldr r1, _02125F08 ; =0x02126DF8
	mov r0, r5
	add r2, r9, #0x56
	bl sprintf
	add r0, r7, #0x71
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r11
	mov r2, r5
	mov r3, #0x58
	str r4, [sp, #8]
	bl FUN_ov113_02125550
_02125DF0:
	ldrb r0, [r10, #0x229]
	cmp r0, #2
	bne _02125E38
	ldrb r0, [r9, #0x74]
	cmp r0, #0
	beq _02125E18
	mov r0, r10
	mov r1, #0x1a
	mov r2, #4
	bl FUN_ov113_02125a30
_02125E18:
	ldrb r0, [r9, #0x75]
	cmp r0, #0
	beq _02125E80
	mov r0, r10
	mov r1, #0x16
	mov r2, #4
	bl FUN_ov113_02125ab0
	b _02125E80
_02125E38:
	cmp r0, #5
	bne _02125E5C
	ldrb r0, [r9, #0x74]
	cmp r0, #0
	beq _02125E80
	mov r0, r10
	mov r1, #0x1a
	mov r2, #1
	b _02125E7C
_02125E5C:
	cmp r0, #3
	bne _02125E80
	ldrb r0, [r9, #0x74]
	cmp r0, #0
	beq _02125E80
	mov r0, r10
	mov r1, #0x1a
	mov r2, #7
_02125E7C:
	bl FUN_ov113_02125a30
_02125E80:
	ldrb r0, [r10, #0x229]
	cmp r0, #3
	addne sp, sp, #0x40
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r10, #0x2c]
	cmp r4, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x1c
	str r0, [sp]
	mov r1, #0
	mov r0, r10
	mov r2, r4
	mov r3, #0x18
	stmib sp, {r1, r6}
	bl FUN_ov113_02125550
	mov r0, #6
	str r0, [sp]
	ldrb r1, [r4, #0x48]
	mov r0, r10
	mov r2, #0x19
	mov r3, #3
	bl FUN_ov113_02125864
	ldrb r0, [r4, #0x74]
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r2, r6
	mov r1, #0x1a
	bl FUN_ov113_02125a30
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125F04: .word unk_0209F5C0
_02125F08: .word ov113_02126DF8
	arm_func_end FUN_ov113_02125b30

	arm_func_start FUN_ov113_02125f0c
FUN_ov113_02125f0c: ; 0x02125F0C
	ldrb r1, [r0, #0x229]
	cmp r1, #2
	moveq r2, #0xb
	beq _02125F3C
	cmp r1, #3
	moveq r2, #0xc
	beq _02125F3C
	cmp r1, #5
	moveq r2, #0xb
	beq _02125F3C
	mov r0, #0
	bx lr
_02125F3C:
	ldrb r1, [r0, #0x4ce]
	cmp r1, #0
	beq _02125F68
	cmp r2, #0xc
	bne _02125F80
	mov r2, #0
	mov r1, #1
	strb r2, [r0, #0x4ce]
	strb r1, [r0, #0x4cd]
	mov r0, r1
	bx lr
_02125F68:
	cmp r2, #0xb
	moveq r1, #1
	streqb r1, [r0, #0x4ce]
	streqb r1, [r0, #0x4cd]
	moveq r0, r1
	bxeq lr
_02125F80:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov113_02125f0c

	arm_func_start FUN_ov113_02125f88
FUN_ov113_02125f88: ; 0x02125F88
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x124]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	cmp r2, #0
	bne _02125FB4
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	movne r2, #4
_02125FB4:
	ldr r0, [r12, #0xc]
	mov r3, #2
	add r12, r12, r0
	mov r0, #0xb4
	mla r12, r2, r0, r12
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _02126010 ; =0x0209F5C0
	mov r1, r2
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02126010: .word unk_0209F5C0
	arm_func_end FUN_ov113_02125f88

	arm_func_start FUN_ov113_02126014
FUN_ov113_02126014: ; 0x02126014
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, #1
	mov r10, r0
	ldr r0, _02126208 ; =0x0209F5C0
	mov r1, r9
	mov r2, r9
	mov r3, #0
	bl FUN_ov16_020f5f64
	ldrb r0, [r10, #0x1e]
	ldr r8, [r10, #0x118]
	cmp r0, #0
	moveq r9, #5
	cmp r8, #0
	beq _021260E0
	mov r6, #2
	cmp r0, #0
	addne r0, r6, #8
	movne r0, r0, lsl #0x10
	movne r6, r0, lsr #0x10
	cmp r9, #0
	mov r7, #0
	ble _021260E0
	mov r11, #2
	mov r5, #1
	mov r4, r7
_0212607C:
	str r11, [sp]
	str r5, [sp, #4]
	mov r0, r6, lsl #0x18
	str r4, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, [r8, #0xc]
	ldr r0, _02126208 ; =0x0209F5C0
	add r2, r8, r1
	str r2, [sp, #0x1c]
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5da0
	add r0, r6, #4
	add r7, r7, #1
	mov r0, r0, lsl #0x10
	cmp r7, r9
	mov r6, r0, lsr #0x10
	blt _0212607C
_021260E0:
	ldr r0, [r10, #0x10]
	mov r7, #1
	cmp r0, #0
	mov r4, #0
	beq _02126104
	mov r0, r10
	mov r1, #2
	mov r2, r4
	bl FUN_ov113_02125f88
_02126104:
	ldrb r3, [r10, #0x228]
	cmp r3, r9
	bge _02126154
	ldrb r2, [r10, #0x24]
	cmp r2, #0
	beq _02126154
	add r1, r10, #0x1c4
	mov r0, #0x14
	mla r0, r3, r0, r1
	strb r2, [r0, #0x11]
	ldrb r1, [r10, #0x30]
	strb r1, [r0, #0x12]
	ldrb r1, [r10, #0x31]
	strb r1, [r0, #0x13]
	ldr r1, [r10, #0x20]
	bl strcpy
	ldrb r0, [r10, #0x228]
	strb r4, [r10, #0x24]
	add r0, r0, #1
	strb r0, [r10, #0x228]
_02126154:
	cmp r9, #0
	mov r8, #0
	ble _021261DC
	ldr r11, _0212620C ; =0x02126E04
	add r6, r10, #0x1c4
	mov r5, #0x18
	mov r4, #0x14
_02126170:
	mul r2, r8, r4
	ldrb r0, [r10, #0x1e]
	mov r1, r8, lsl #5
	add r1, r1, #0x11
	cmp r0, #0
	add r0, r10, r2
	ldrb r0, [r0, #0x1d5]
	addne r1, r1, #0x40
	cmp r0, #0
	beq _021261B0
	stmia sp, {r1, r7}
	mov r0, r10
	mov r1, r8
	mov r3, r5
	add r2, r6, r2
	b _021261C8
_021261B0:
	add r0, r1, #3
	stmia sp, {r0, r7}
	mov r0, r10
	mov r1, r8
	mov r2, r11
	mov r3, #0x18
_021261C8:
	str r7, [sp, #8]
	bl FUN_ov113_02125550
	add r8, r8, #1
	cmp r8, r9
	blt _02126170
_021261DC:
	mov r0, r10
	bl FUN_ov113_0212590c
	mov r0, r10
	bl FUN_ov113_02125994
	mov r0, r10
	bl FUN_ov113_021254b4
	ldr r0, _02126208 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126208: .word unk_0209F5C0
_0212620C: .word ov113_02126E04
	arm_func_end FUN_ov113_02126014

	arm_func_start FUN_ov113_02126210
FUN_ov113_02126210: ; 0x02126210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02126268 ; =0x0209F5C0
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
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r1, [r7, #0x28]
	mov r0, r7
	bl FUN_ov113_02125b30
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02126268: .word unk_0209F5C0
	arm_func_end FUN_ov113_02126210

	arm_func_start FUN_ov113_0212626c
FUN_ov113_0212626c: ; 0x0212626C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _021262C4 ; =0x0209F5C0
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
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r1, [r7, #0x28]
	mov r0, r7
	bl FUN_ov113_02125b30
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021262C4: .word unk_0209F5C0
	arm_func_end FUN_ov113_0212626c

	arm_func_start FUN_ov113_021262c8
FUN_ov113_021262c8: ; 0x021262C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _021263A8 ; =0x0209F5C0
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
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	mov r8, #2
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl FUN_ov113_02125f88
	ldr r2, [r7, #0x184]
	cmp r2, #0
	beq _0212636C
	str r8, [sp]
	stmib sp, {r5, r8}
	mov r1, #8
	str r1, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0212636C:
	mov r0, #0x4c
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r2, _021263AC ; =0x02126E20
	mov r0, r7
	mov r1, #0
	mov r3, #0x48
	str r4, [sp, #8]
	bl FUN_ov113_02125550
	ldr r0, _021263A8 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021263A8: .word unk_0209F5C0
_021263AC: .word ov113_02126E20
	arm_func_end FUN_ov113_021262c8

	arm_func_start FUN_ov113_021263b0
FUN_ov113_021263b0: ; 0x021263B0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _021263F8 ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5f64
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_021263F8: .word unk_0209F5C0
	arm_func_end FUN_ov113_021263b0

	arm_func_start FUN_ov113_021263fc
FUN_ov113_021263fc: ; 0x021263FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r6, _021264E8 ; =0x0209F5C0
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
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r1, [r7, #0x28]
	mov r0, r7
	bl FUN_ov113_02125b30
	ldr r2, [r7, #0x190]
	cmp r2, #0
	beq _021264A0
	mov r0, #2
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021264A0:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	ldrne r2, [r0, #0x70]
	cmpne r2, #0
	beq _021264D4
	mov r0, #0x92
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, r7
	mov r3, #0x4c
	str r1, [sp, #8]
	bl FUN_ov113_02125550
_021264D4:
	ldr r0, _021264E8 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021264E8: .word unk_0209F5C0
	arm_func_end FUN_ov113_021263fc

	arm_func_start FUN_ov113_021264ec
FUN_ov113_021264ec: ; 0x021264EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _021265D0 ; =0x0209F5C0
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
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5eec
	mov r8, #2
	mov r0, r7
	mov r1, #5
	mov r2, r8
	bl FUN_ov113_02125f88
	ldr r2, [r7, #0x184]
	cmp r2, #0
	beq _02126594
	str r8, [sp]
	stmib sp, {r5, r8}
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126594:
	mov r0, #0x5c
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r2, _021265D4 ; =0x02126E4C
	mov r0, r7
	mov r1, #0
	mov r3, #0x48
	str r4, [sp, #8]
	bl FUN_ov113_02125550
	ldr r0, _021265D0 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021265D0: .word unk_0209F5C0
_021265D4: .word ov113_02126E4C
	arm_func_end FUN_ov113_021264ec

	arm_func_start FUN_ov113_021265d8
FUN_ov113_021265d8: ; 0x021265D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x25]
	ldrb r0, [r4, #0x4cc]
	strb r1, [r4, #0x229]
	cmp r0, #0
	bne _0212660C
	add r0, r4, #0xc
	add r1, r4, #0x34
	mov r2, #0x28
	bl memcmp
	cmp r0, #0
	beq _0212665C
_0212660C:
	mov r5, #1
	add r0, r4, #0xc
	add r1, r4, #0x34
	mov r2, #0x28
	strb r5, [r4, #0x4cc]
	bl MI_CpuCopy8
	mov r0, r4
	bl FUN_ov113_02125f0c
	cmp r0, #0
	beq _0212665C
	ldr r4, _021266F0 ; =0x0209F5C0
	mov r1, r5
	mov r0, r4
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_020f5f64
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, pc}
_0212665C:
	ldrb r0, [r4, #0x4cc]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x229]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _021266E4
_02126678: ; jump table
	b _02126694 ; case 0
	b _021266A0 ; case 1
	b _021266AC ; case 2
	b _021266B8 ; case 3
	b _021266C4 ; case 4
	b _021266D0 ; case 5
	b _021266DC ; case 6
_02126694:
	mov r0, r4
	bl FUN_ov113_021263b0
	b _021266E4
_021266A0:
	mov r0, r4
	bl FUN_ov113_02126014
	b _021266E4
_021266AC:
	mov r0, r4
	bl FUN_ov113_02126210
	b _021266E4
_021266B8:
	mov r0, r4
	bl FUN_ov113_0212626c
	b _021266E4
_021266C4:
	mov r0, r4
	bl FUN_ov113_021262c8
	b _021266E4
_021266D0:
	mov r0, r4
	bl FUN_ov113_021263fc
	b _021266E4
_021266DC:
	mov r0, r4
	bl FUN_ov113_021264ec
_021266E4:
	mov r0, #0
	strb r0, [r4, #0x4cc]
	ldmfd sp!, {r3, r4, r5, pc}
_021266F0: .word unk_0209F5C0
	arm_func_end FUN_ov113_021265d8

	arm_func_start FUN_ov113_021266f4
FUN_ov113_021266f4: ; 0x021266F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r6, #6
	mov r0, r6
	bl FUN_ov16_020f4894
	mov r9, #0
	sub r8, r9, #1
	ldr r0, _02126840 ; =0x0209F5C0
	str r9, [r5, #8]
	str r9, [r5, #0xc]
	str r9, [r5, #0x10]
	str r8, [r5, #0x14]
	str r9, [r5, #0x18]
	strb r9, [r5, #0x1c]
	strb r9, [r5, #0x1d]
	strb r9, [r5, #0x1e]
	str r9, [r5, #0x20]
	strb r9, [r5, #0x24]
	strb r9, [r5, #0x25]
	strb r9, [r5, #0x1f]
	str r9, [r5, #0x28]
	str r9, [r5, #0x2c]
	strb r9, [r5, #0x30]
	strb r9, [r5, #0x31]
	str r8, [r5, #0x1c0]
	mov r1, r4
	bl FUN_ov16_020f5a58
	add r0, r5, #0x5c
	mov r1, #7
	bl FUN_ov16_020f2f7c
	mov r2, r6
	add r0, r5, #0x5c
	mov r1, #0x1c
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x70
	mov r7, #0xe
	mov r1, r7
	mov r6, #3
	mov r2, r6
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x84
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x98
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020f2fa8
	add r0, r5, #0xac
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020f2fa8
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc0
	bl FUN_ov16_020f2fa8
	add r0, r5, #0xd4
	mov r1, #0x13
	mov r2, #2
	bl FUN_ov16_020f2fa8
	mov r1, r9
	add r0, r5, #0x1c4
	mov r2, #0x64
	bl MI_CpuFill8
	mov r0, r5
	strb r9, [r5, #0x228]
	strb r9, [r5, #0x229]
	str r8, [r5, #0x230]
	str r9, [r5, #0x22c]
	strb r4, [r5, #0x4cc]
	strb r9, [r5, #0x4ce]
	strb r9, [r5, #0x4cd]
	strb r9, [r5, #0x4d4]
	bl FUN_ov113_02124e1c
	mov r0, r5
	bl FUN_ov113_02124ee4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02126840: .word unk_0209F5C0
	arm_func_end FUN_ov113_021266f4

	arm_func_start FUN_ov113_02126844
FUN_ov113_02126844: ; 0x02126844
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _02126864
	cmp r1, #3
	beq _02126894
	ldmfd sp!, {r4, pc}
_02126864:
	add r0, r4, #0xe8
	mov r1, #0x12
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov113_02124f28
	mov r0, r4
	bl FUN_ov113_02125024
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126894:
	bl FUN_ov113_021265d8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov113_02126844

	arm_func_start FUN_ov113_0212689c
FUN_ov113_0212689c: ; 0x0212689C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _021268BC
	cmp r1, #3
	beq _021268DC
	ldmfd sp!, {r3, r4, r5, pc}
_021268BC:
	bl FUN_ov113_0212524c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_021268DC:
	bl FUN_ov113_02125438
	mov r5, #1
	ldr r0, _0212692C ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6a9c
	ldrb r0, [r4, #0x4cd]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x4ce]
	cmp r0, #0
	beq _02126910
	ldr r1, [r4, #0x16c]
	b _02126914
_02126910:
	ldr r1, [r4, #0x178]
_02126914:
	ldr r2, [r4, #0x4d0]
	mov r0, r5
	bl FUN_ov16_020f1a60
	mov r0, #0
	strb r0, [r4, #0x4cd]
	ldmfd sp!, {r3, r4, r5, pc}
_0212692C: .word unk_0209F5C0
	arm_func_end FUN_ov113_0212689c

	arm_func_start FUN_ov113_02126930
FUN_ov113_02126930: ; 0x02126930
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0xe8
	mov r1, #0x12
	bl FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov113_02124ffc
	mov r4, #1
	ldr r0, _02126980 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5af0
	add r0, r5, #0x5c
	mov r1, #7
	bl FUN_ov16_020f2fe4
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_02126980: .word unk_0209F5C0
	arm_func_end FUN_ov113_02126930

	arm_func_start FUN_ov113_02126984
FUN_ov113_02126984: ; 0x02126984
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldr r0, [r8, #0x230]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r7, r0
	beq _02126A68
	ldr r0, [r8, #0xf4]
	add r2, sp, #0x24
	add r3, sp, #0x20
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02126A64
	add r0, r8, #0x1b4
	bl FUN_ov16_020f33fc
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	ldr r0, _02126AD8 ; =0x02126E90
	add r1, r8, #0x1b4
	bl FUN_ov16_020f31fc
	add r0, r8, #0xe8
	mov r1, #0x12
	bl FUN_ov16_020f330c
	cmp r0, #0
	bne _02126A1C
	mov r9, #1
	mov r4, #0x12
_02126A00:
	mov r0, r9
	bl OS_Sleep
	mov r1, r4
	add r0, r8, #0xe8
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _02126A00
_02126A1C:
	ldr r4, [r8, #0x1b4]
	cmp r4, #0
	beq _02126A64
	ldr r0, [r4, #0xc]
	ldr r2, [r8, #0x22c]
	mov r9, #0xa
	ldr r1, [r4, #0x10]
	mov r3, r9
	add r0, r4, r0
	add r2, r2, #1
	bl FUN_ov16_020f1868
	mov r0, r4
	mov r2, r9
	mov r1, #1
	bl FUN_ov16_020f1138
	mov r0, r8
	bl FUN_ov113_02125384
	bl FUN_ov16_020f10c8
_02126A64:
	str r7, [r8, #0x230]
_02126A68:
	ldr r3, [r8, #0x1b4]
	cmp r3, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #6
	mov r0, r6, lsl #0x18
	mov r2, r5, lsl #0x18
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	mov r2, #0
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xa
	str r0, [sp, #0x18]
	ldr r4, [r3, #0xc]
	ldr r0, _02126ADC ; =0x0209F5C0
	add r4, r3, r4
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02126AD8: .word ov113_02126E90
_02126ADC: .word unk_0209F5C0
	arm_func_end FUN_ov113_02126984

	arm_func_start FUN_ov113_02126ae0
FUN_ov113_02126ae0: ; 0x02126AE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov113_02126ae0

	arm_func_start FUN_ov113_02126af4
FUN_ov113_02126af4: ; 0x02126AF4
	bx lr
	arm_func_end FUN_ov113_02126af4

	.global ov113_02126AF8
ov113_02126AF8:
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.global ov113_02126B38
ov113_02126B38:
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.global ov113_02126B78
ov113_02126B78:
	.byte 0x08, 0x6D, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x18, 0x6D, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xC0, 0x6C, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00, 0xCC, 0x6C, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xE4, 0x6C, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xF0, 0x6C, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xA8, 0x6C, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x78, 0x6C, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0x84, 0x6C, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x90, 0x6C, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x9C, 0x6C, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xB4, 0x6C, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0xD8, 0x6C, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0xFC, 0x6C, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov113_02126bf0
FUN_ov113_02126bf0: ; 0x02126BF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126C38 ; =0x02126C60
	str r0, [r4, #0xc]
	ldr r0, _02126C3C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02126C40 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02126C38: .word ov113_02126C60
_02126C3C: .word 0x00009CCD
_02126C40: .word 0x0000EA3C
	arm_func_end FUN_ov113_02126bf0

	.section .sinit, 4
ov113_02126C44:
	.word FUN_ov113_02126bf0

	.data
	.global ov113_02126C60
ov113_02126C60:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x6E, 0x33, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x77, 0x33, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x75, 0x5F, 0x77, 0x34, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x6E, 0x33, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x77, 0x35, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x75, 0x5F, 0x62, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F
	.byte 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x69, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x6E, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x73, 0x72, 0x75, 0x5F, 0x6E, 0x32, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F
	.byte 0x69, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x62, 0x67, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF4, 0x6A, 0x12, 0x02, 0xE0, 0x6A, 0x12, 0x02, 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02
	.byte 0xF4, 0x66, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x44, 0x68, 0x12, 0x02, 0x9C, 0x68, 0x12, 0x02
	.byte 0x30, 0x69, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02
	.byte 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02
	.byte 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02
	.byte 0x00, 0x4D, 0x12, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov113_02126D9C
ov113_02126D9C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x53, 0x52, 0x53, 0x53, 0x72
	.byte 0x75, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov113_02126DB8
ov113_02126DB8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00
	.global ov113_02126DD8
ov113_02126DD8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov113_02126DF8
ov113_02126DF8:
	.byte 0x25, 0x73, 0x81, 0x40, 0x82, 0xE6, 0x82, 0xE8
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov113_02126E04
ov113_02126E04:
	.byte 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xC2, 0x82, 0xAF, 0x5B, 0x92, 0x86, 0x2F
	.byte 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00
	.global ov113_02126E20
ov113_02126E20:
	.byte 0x5B, 0x8E, 0xF3, 0x2F, 0x82, 0xA4, 0x5D, 0x82, 0xAF, 0x5B, 0x8E, 0xE6, 0x2F, 0x82, 0xC6, 0x5D
	.byte 0x82, 0xC1, 0x82, 0xBD, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0, 0x0A, 0x83, 0x5A, 0x81
	.byte 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00
	.global ov113_02126E4C
ov113_02126E4C:
	.byte 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x97, 0x70, 0x2F, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xCC, 0x83
	.byte 0x60, 0x81, 0x5B, 0x83, 0x80, 0x5B, 0x96, 0xBC, 0x2F, 0x82, 0xDF, 0x82, 0xA2, 0x5D, 0x82, 0xC6
	.byte 0x0A, 0x83, 0x47, 0x83, 0x93, 0x83, 0x75, 0x83, 0x8C, 0x83, 0x80, 0x82, 0xF0, 0x82, 0xB9, 0x82
	.byte 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov113_02126E90
ov113_02126E90:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74
	.byte 0x65, 0x61, 0x6D, 0x2F, 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

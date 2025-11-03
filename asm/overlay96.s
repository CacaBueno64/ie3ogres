
	.include "/macros/function.inc"
	.include "/include/overlay96.inc"

	.text
	arm_func_start FUN_ov96_02124d00
FUN_ov96_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	beq _02124D34
	sub r0, r0, #4
	cmp r0, #1
	bhi _02124D3C
_02124D34:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02124D3C:
	ldr r2, [r4, #0x14]
	ldr r0, [r1]
	cmp r2, r0
	beq _02124D9C
	cmp r2, #2
	bhi _02124D9C
	ldr r0, [r1]
	str r0, [r4, #0x14]
	ldr r2, [r1, #4]
	str r2, [r4, #0x18]
	ldr r0, [r1, #8]
	cmp r2, #6
	str r0, [r4, #0x1c]
	ldrb r0, [r1, #0xc]
	mov r1, #7
	strb r0, [r4, #0x20]
	subge r0, r2, #6
	strge r0, [r4, #0x18]
	mov r0, #4
	str r1, [r4, #8]
	bl FUN_ov16_020f1528
	mov r0, #1
	strb r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02124D9C:
	ldr r2, [r4, #0x18]
	ldr r0, [r1, #4]
	cmp r2, r0
	ldreq r2, [r4, #0x1c]
	ldreq r0, [r1, #8]
	cmpeq r2, r0
	bne _02124DC8
	ldrb r2, [r4, #0x20]
	ldrb r0, [r1, #0xc]
	cmp r2, r0
	beq _02124E14
_02124DC8:
	ldr r0, [r1]
	str r0, [r4, #0x14]
	ldr r2, [r1, #4]
	str r2, [r4, #0x18]
	ldr r0, [r1, #8]
	cmp r2, #6
	str r0, [r4, #0x1c]
	ldrb r0, [r1, #0xc]
	strb r0, [r4, #0x20]
	subge r0, r2, #6
	strge r0, [r4, #0x18]
	mov r0, r4
	bl FUN_ov96_021257bc
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov96_021257f0
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02124E14:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov96_02124d00

	arm_func_start FUN_ov96_02124e1c
FUN_ov96_02124e1c: ; 0x02124E1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02124E4C
	ldr r0, _02124EB4 ; =gL5Allocator
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02124E4C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02124E68
	ldr r0, _02124EB4 ; =gL5Allocator
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02124E68:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02124EA0
_02124E88:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02124E88
_02124EA0:
	ldr r1, [r4, #4]
	mov r2, r5, lsl #5
	mov r0, #0
	bl MIi_CpuClear32
	ldmfd sp!, {r3, r4, r5, pc}
_02124EB4: .word gL5Allocator
	arm_func_end FUN_ov96_02124e1c

	arm_func_start FUN_ov96_02124eb8
FUN_ov96_02124eb8: ; 0x02124EB8
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x48]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _02124F24 ; =0x0209F5C0
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_02124F24: .word unk_0209F5C0
	arm_func_end FUN_ov96_02124eb8

	arm_func_start FUN_ov96_02124f28
FUN_ov96_02124f28: ; 0x02124F28
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r12, [r4, #0x48]
	cmp r12, #0
	beq _02124F88
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _0212510C ; =0x0209F5C0
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02124F88:
	ldr r1, [r4, #0x18]
	mov r0, #0xc
	add r2, r1, #3
	mla r1, r2, r0, r4
	ldr r3, [r1, #0x30]
	cmp r3, #0
	beq _02124FF0
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r2, #5
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _0212510C ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02124FF0:
	ldr r12, [r4, #0x9c]
	cmp r12, #0
	beq _02125048
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
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _0212510C ; =0x0209F5C0
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125048:
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	ldrne r12, [r4, #0xa8]
	cmpne r12, #0
	beq _021250A8
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0x15
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r2, #0
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _0212510C ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021250A8:
	ldr r12, [r4, #0x24]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldrh r3, [r4, #0x2c]
	mov r2, #0
	ldr r0, _0212510C ; =0x0209F5C0
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r4, [r4, #0x2e]
	mov r3, r2
	and r4, r4, #0xff
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_0212510C: .word unk_0209F5C0
	arm_func_end FUN_ov96_02124f28

	arm_func_start FUN_ov96_02125110
FUN_ov96_02125110: ; 0x02125110
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xdc
	ldr r12, _02125210 ; =0x02125DF8
	add r5, sp, #0x1c
	mov r4, r0
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	add r1, r4, #0x24
	mov r2, #0x14
	mov r3, #3
	bl FUN_ov96_02124e1c
	ldr r0, [r4, #0x28]
	cmp r0, #0
	addeq sp, sp, #0xdc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrb r0, [r4, #0x11]
	ldr r6, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	cmp r0, #1
	addeq r6, r6, #6
	add r0, sp, #0x1c
	add r1, r1, r6, lsl #1
	add r5, sp, #0x5c
	ldr r1, [r0, r1, lsl #2]
	mov r0, r5
	bl STD_CopyString
	cmp r6, #6
	bne _021251A4
	ldr r1, _02125214 ; =0x02125EAC
	b _021251B8
_021251A4:
	cmp r6, #7
	bne _021251B4
	ldr r1, _02125218 ; =0x02125EB8
	b _021251B8
_021251B4:
	ldr r1, _0212521C ; =0x02125ECC
_021251B8:
	mov r0, r5
	bl STD_ConcatenateString
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r4, #0x2c]
	ldrh r3, [r4, #0x2e]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x5c
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	add sp, sp, #0xdc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125210: .word ov96_02125DF8
_02125214: .word ov96_02125EAC
_02125218: .word ov96_02125EB8
_0212521C: .word ov96_02125ECC
	arm_func_end FUN_ov96_02125110

	arm_func_start FUN_ov96_02125220
FUN_ov96_02125220: ; 0x02125220
	stmfd sp!, {r3, lr}
	ldrb r2, [r0, #0x10]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r2, #0
	strb r2, [r0, #0x10]
	cmp r1, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0x14]
	cmp r1, #2
	ldmnefd sp!, {r3, pc}
	bl FUN_ov96_02125110
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov96_02125220

	arm_func_start FUN_ov96_02125254
FUN_ov96_02125254: ; 0x02125254
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	ldr r0, _021252A4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5f64
	ldr r0, [r4, #0x14]
	cmp r0, #0
	cmpne r0, #1
	beq _0212528C
	cmp r0, #2
	beq _02125298
	ldmfd sp!, {r4, pc}
_0212528C:
	mov r0, r4
	bl FUN_ov96_02124eb8
	ldmfd sp!, {r4, pc}
_02125298:
	mov r0, r4
	bl FUN_ov96_02124f28
	ldmfd sp!, {r4, pc}
_021252A4: .word unk_0209F5C0
	arm_func_end FUN_ov96_02125254

	arm_func_start FUN_ov96_021252a8
FUN_ov96_021252a8: ; 0x021252A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x30]
	mov r6, r2
	cmp r4, #0
	mov r5, r3
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r4, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	ldrb r1, [sp, #0x10]
	mov r6, r0
	cmp r1, #0
	beq _02125300
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl FUN_ov16_020f1138
_02125300:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov96_021252a8

	arm_func_start FUN_ov96_02125308
FUN_ov96_02125308: ; 0x02125308
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x24
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02125348
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	mov r2, r0
_02125348:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov96_02125308

	arm_func_start FUN_ov96_02125350
FUN_ov96_02125350: ; 0x02125350
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x24
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02125398
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
_02125398:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov96_02125350

	arm_func_start FUN_ov96_021253a0
FUN_ov96_021253a0: ; 0x021253A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x30
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
	arm_func_end FUN_ov96_021253a0

	arm_func_start FUN_ov96_02125408
FUN_ov96_02125408: ; 0x02125408
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x30
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
	arm_func_end FUN_ov96_02125408

	arm_func_start FUN_ov96_0212546c
FUN_ov96_0212546c: ; 0x0212546C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r6, r0
	bl FUN_ov16_020f3f54
	mov r3, #1
	mov r4, #0
	add r7, sp, #0x14
	mov r5, r0
	mov r0, r6
	mov r1, r4
	str r3, [sp]
	sub r2, r3, #2
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	str r4, [r7, #0xc]
	bl FUN_ov96_021252a8
	ldr r1, [r6, #0x30]
	mov r0, r4
	mov r2, r4
	bl FUN_ov16_020f1a60
	ldr r3, [r6, #0x30]
	mov r7, r0
	cmp r3, #0
	beq _021254E4
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl GXS_LoadBG0Scr
_021254E4:
	ldr r0, [r5]
	sub r0, r0, r7
	str r0, [sp, #0x14]
	bl G2S_GetBG1CharPtr
	mov r7, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r7
	bl DC_FlushRange
	str r4, [sp, #0x10]
	str r7, [sp, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r7
	bl DC_FlushRange
	str r7, [sp, #4]
	str r4, [sp, #0xc]
	ldr r0, [r6, #0x14]
	cmp r0, #0
	cmpne r0, #1
	beq _02125564
	cmp r0, #2
	beq _021255A0
	b _02125668
_02125564:
	add r4, sp, #8
	mov r1, #2
	add r3, sp, #0x10
	mov r0, r6
	mov r2, r1
	str r4, [sp]
	bl FUN_ov96_021253a0
	ldr r3, [r5, #4]
	ldr r2, [sp, #8]
	ldr r1, [r5, #8]
	ldr r0, [sp, #4]
	sub r2, r3, r2
	sub r0, r1, r0
	str r2, [sp, #0x18]
	b _02125664
_021255A0:
	add r7, sp, #8
	add r8, sp, #0x10
	mov r1, #2
	mov r0, r6
	mov r2, r1
	mov r3, r8
	str r7, [sp]
	bl FUN_ov96_021253a0
	str r7, [sp]
	ldr r1, [r6, #0x18]
	mov r7, #3
	mov r0, r6
	mov r2, r7
	mov r3, r8
	add r1, r1, #3
	bl FUN_ov96_021253a0
	ldr r1, [sp, #0x10]
	ldr r0, [r6, #0x9c]
	add r1, r1, #1
	sub r2, r7, #4
	bl FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r1, [r6, #0x9c]
	ldr r2, [sp, #8]
	mov r0, #1
	bl FUN_ov16_020f1a60
	str r0, [sp, #8]
	ldr r3, [r5, #4]
	add r1, sp, #4
	sub r0, r3, r0
	str r0, [sp, #0x18]
	str r1, [sp]
	mov r2, r7
	mov r0, r6
	mov r1, #0xa
	add r3, sp, #0xc
	bl FUN_ov96_02125408
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	bl FUN_ov96_02125308
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r1, r4
	mov r0, r6
	bl FUN_ov96_02125350
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	sub r0, r1, r0
_02125664:
	str r0, [sp, #0x1c]
_02125668:
	bl FUN_ov16_020f10c8
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov96_0212546c

	arm_func_start FUN_ov96_02125674
FUN_ov96_02125674: ; 0x02125674
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xb4
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov96_02125674

	arm_func_start FUN_ov96_02125698
FUN_ov96_02125698: ; 0x02125698
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0xb4
	mov r1, #4
	bl FUN_ov16_020f338c
	add r5, r4, #0xb4
	mov r6, #0
	mov r4, #0xc
_021256B8:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #4
	blt _021256B8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov96_02125698

	arm_func_start FUN_ov96_021256d0
FUN_ov96_021256d0: ; 0x021256D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x3c]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x11]
	ldr r7, _02125728 ; =0x02125B80
	cmp r1, #1
	ldreq r7, _0212572C ; =0x02125B48
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x30
	mov r4, #0xc
_02125704:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02125704
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125728: .word ov96_02125B80
_0212572C: .word ov96_02125B48
	arm_func_end FUN_ov96_021256d0

	arm_func_start FUN_ov96_02125730
FUN_ov96_02125730: ; 0x02125730
	ldr r12, _02125740 ; = FUN_ov16_020f330c
	add r0, r0, #0x30
	mov r1, #0xb
	bx r12
_02125740: .word FUN_ov16_020f330c
	arm_func_end FUN_ov96_02125730

	arm_func_start FUN_ov96_02125744
FUN_ov96_02125744: ; 0x02125744
	stmfd sp!, {r4, lr}
	mov r2, #0xc
	mul r2, r1, r2
	add r0, r0, #0x30
	ldr r1, [r0, r2]
	add r4, r0, r2
	cmp r1, #0
	ldrneb r0, [r4, #9]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02125784
	ldr r0, _021257B8 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	b _0212579C
_02125784:
	ldr r0, _021257B8 ; =gL5Allocator
	ldr r0, [r0]
	cmp r0, #0
	beq _0212579C
	mov r2, #1
	bl FUN_0202f678
_0212579C:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_021257B8: .word gL5Allocator
	arm_func_end FUN_ov96_02125744

	arm_func_start FUN_ov96_021257bc
FUN_ov96_021257bc: ; 0x021257BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x30
	mov r1, #0xb
	bl FUN_ov16_020f338c
	mov r4, #0
_021257D4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov96_02125744
	add r4, r4, #1
	cmp r4, #0xb
	blt _021257D4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov96_021257bc

	arm_func_start FUN_ov96_021257f0
FUN_ov96_021257f0: ; 0x021257F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _02125814
	cmp r1, #2
	moveq r0, #1
	streqb r0, [r4, #0x10]
	b _021258B4
_02125814:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x30
	mov r2, #0x84
	bl MI_CpuFill8
	ldr r5, _021258C0 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021258C4 ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r4, #0x14]
	cmp r0, #0
	cmpne r0, #1
	beq _02125884
	cmp r0, #2
	bne _021258AC
_02125884:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02125898
	ldr r0, _021258C8 ; =0x02125EDC
	b _021258A4
_02125898:
	cmp r0, #1
	bne _021258AC
	ldr r0, _021258CC ; =0x02125F04
_021258A4:
	add r1, r4, #0x3c
	bl FUN_ov16_020f316c
_021258AC:
	mov r0, #1
	strb r0, [r4, #0x10]
_021258B4:
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021258C0: .word unk_020A8C40
_021258C4: .word unk_020A8440
_021258C8: .word ov96_02125EDC
_021258CC: .word ov96_02125F04
	arm_func_end FUN_ov96_021257f0

	arm_func_start FUN_ov96_021258d0
FUN_ov96_021258d0: ; 0x021258D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, #1
	ldr r2, [r0]
	mov r1, r5
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #0x10
	bl FUN_ov16_020f4894
	mov r4, #0
	mov r1, r4
	add r0, r6, #0x24
	mov r2, #0xc
	str r4, [r6, #8]
	bl MI_CpuFill8
	add r0, r6, #0x30
	mov r1, r4
	mov r2, #0x84
	bl MI_CpuFill8
	mov r0, r6
	strb r4, [r6, #0x10]
	str r4, [r6, #0x14]
	str r4, [r6, #0x18]
	str r4, [r6, #0x1c]
	strb r4, [r6, #0x20]
	bl FUN_ov96_02125674
	ldr r0, _02125960 ; =0x0209A454
	mov r1, #1
	ldrb r0, [r0, #0x3a]
	cmp r0, #0
	streqb r4, [r6, #0x11]
	ldr r0, _02125964 ; =0x0209F5C0
	strneb r5, [r6, #0x11]
	bl FUN_ov16_020f5a58
	ldmfd sp!, {r4, r5, r6, pc}
_02125960: .word unk_0209A454
_02125964: .word unk_0209F5C0
	arm_func_end FUN_ov96_021258d0

	arm_func_start FUN_ov96_02125968
FUN_ov96_02125968: ; 0x02125968
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_02125980: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _021259A0 ; case 1
	b _021259BC ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _02125A10 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _02125A24 ; case 6
	b _02125A34 ; case 7
_021259A0:
	add r0, r4, #0xb4
	mov r1, #4
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #3
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021259BC:
	ldr r1, [r4, #0xc]
	bl FUN_ov96_02125220
	mov r0, r4
	bl FUN_ov96_02125730
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _021259EC
	cmp r0, #2
	beq _021259FC
	ldmfd sp!, {r4, pc}
_021259EC:
	mov r0, r4
	mov r1, #2
	bl FUN_ov96_021257f0
	ldmfd sp!, {r4, pc}
_021259FC:
	mov r0, r4
	bl FUN_ov96_021256d0
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125A10:
	bl FUN_ov96_02125254
	mov r0, #4
	bl FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_02125A24:
	ldr r0, _02125A60 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_02125A34:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov96_021257bc
	mov r0, r4
	mov r1, #1
	bl FUN_ov96_021257f0
	ldmfd sp!, {r4, pc}
_02125A60: .word unk_0209F5C0
	arm_func_end FUN_ov96_02125968

	arm_func_start FUN_ov96_02125a64
FUN_ov96_02125a64: ; 0x02125A64
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02125A84
	cmp r1, #6
	beq _02125A94
	ldmfd sp!, {r4, pc}
_02125A84:
	bl FUN_ov96_0212546c
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125A94:
	ldr r0, _02125AA4 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02125AA4: .word unk_0209F5C0
	arm_func_end FUN_ov96_02125a64

	arm_func_start FUN_ov96_02125aa8
FUN_ov96_02125aa8: ; 0x02125AA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov96_021257bc
	mov r0, r5
	bl FUN_ov96_02125698
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _02125AD8
	ldr r0, _02125B28 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r5, #0x24]
_02125AD8:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	beq _02125AF4
	ldr r0, _02125B28 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r5, #0x28]
_02125AF4:
	mov r4, #1
	ldr r0, _02125B2C ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5af0
	bl FUN_ov16_020f51a8
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #4
	bl FUN_ov16_020f4894
	ldmfd sp!, {r3, r4, r5, pc}
_02125B28: .word gL5Allocator
_02125B2C: .word unk_0209F5C0
	arm_func_end FUN_ov96_02125aa8

	arm_func_start FUN_ov96_02125b30
FUN_ov96_02125b30: ; 0x02125B30
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov96_02125b30

	arm_func_start FUN_ov96_02125b44
FUN_ov96_02125b44: ; 0x02125B44
	bx lr
	arm_func_end FUN_ov96_02125b44

	.rodata
	.global ov96_02125B48
ov96_02125B48:
	.word ov96_02125DB8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov96_02125CD8
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov96_02125D08
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov96_02125D58
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov96_02125D68
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov96_02125D18
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125B80
ov96_02125B80:
	.word ov96_02125DA8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov96_02125D78
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov96_02125D88
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov96_02125D98
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov96_02125CB8
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov96_02125CC8
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov96_02125CE8
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov96_02125CF8
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov96_02125D28
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov96_02125D48
	.byte 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov96_02125bd8
FUN_ov96_02125bd8: ; 0x02125BD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125C20 ; =0x02125C50
	str r0, [r4]
	ldr r0, _02125C24 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02125C28 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02125C20: .word ov96_02125C50
_02125C24: .word 0x00009CCD
_02125C28: .word 0x0000EA3C
	arm_func_end FUN_ov96_02125bd8

	.section .sinit, 4
ov96_02125C2C:
	.word FUN_ov96_02125bd8

	.data
	.global ov96_02125C40
ov96_02125C40:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C44
ov96_02125C44:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C48
ov96_02125C48:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C4C
ov96_02125C4C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C50
ov96_02125C50:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C68
ov96_02125C68:
	.byte 0x82, 0x66, 0x82, 0x6F, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C70
ov96_02125C70:
	.byte 0x82, 0x73, 0x82, 0x6F, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125C78
ov96_02125C78:
	.byte 0x83, 0x7B, 0x83, 0x66, 0x83, 0x42, 0x00, 0x00
	.global ov96_02125C80
ov96_02125C80:
	.byte 0x83, 0x7B, 0x83, 0x66, 0x83, 0x42, 0x00, 0x00
	.global ov96_02125C88
ov96_02125C88:
	.byte 0x83, 0x4C, 0x83, 0x62, 0x83, 0x4E, 0x00, 0x00
	.global ov96_02125C90
ov96_02125C90:
	.byte 0x83, 0x4B, 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00
	.global ov96_02125C98
ov96_02125C98:
	.byte 0x83, 0x4B, 0x83, 0x62, 0x83, 0x63, 0x00, 0x00
	.global ov96_02125CA0
ov96_02125CA0:
	.byte 0x83, 0x58, 0x83, 0x5E, 0x83, 0x7E, 0x83, 0x69, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125CAC
ov96_02125CAC:
	.byte 0x83, 0x58, 0x83, 0x73
	.byte 0x81, 0x5B, 0x83, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125CB8
ov96_02125CB8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125CC8
ov96_02125CC8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125CD8
ov96_02125CD8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125CE8
ov96_02125CE8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125CF8
ov96_02125CF8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D08
ov96_02125D08:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D18
ov96_02125D18:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x79, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D28
ov96_02125D28:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D38
ov96_02125D38:
	.byte 0x83, 0x52, 0x83, 0x93, 0x83, 0x67, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x8B, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D48
ov96_02125D48:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x79, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D58
ov96_02125D58:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D68
ov96_02125D68:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D78
ov96_02125D78:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D88
ov96_02125D88:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125D98
ov96_02125D98:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125DA8
ov96_02125DA8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.global ov96_02125DB8
ov96_02125DB8:
	.byte 0x69, 0x6E, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.global ov96_02125DC8
ov96_02125DC8:
	.byte 0x5B, 0x8C, 0x6F, 0x8C, 0xB1, 0x92, 0x6C, 0x2F
	.byte 0x82, 0xAF, 0x82, 0xA2, 0x82, 0xAF, 0x82, 0xF1, 0x82, 0xBF, 0x5D, 0x82, 0xAA, 0x00, 0x00, 0x00
	.global ov96_02125DE0
ov96_02125DE0:
	.byte 0x5B, 0x8C, 0x6F, 0x8C, 0xB1, 0x92, 0x6C, 0x2F, 0x82, 0xAF, 0x82, 0xA2, 0x82, 0xAF, 0x82, 0xF1
	.byte 0x82, 0xBF, 0x5D, 0x82, 0xAA, 0x00, 0x00, 0x00
	.global ov96_02125DF8
ov96_02125DF8:
	.word ov96_02125C88
	.word ov96_02125C78
	.word ov96_02125C90
	.word ov96_02125C48
	.word ov96_02125CAC
	.word ov96_02125C4C
	.word ov96_02125C80
	.word ov96_02125D38
	.word ov96_02125C98
	.word ov96_02125CA0
	.word ov96_02125C68
	.word ov96_02125C70
	.word ov96_02125DC8
	.word ov96_02125C40
	.word ov96_02125DE0
	.word ov96_02125C44
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov96_02125E40
ov96_02125E40:
	.word FUN_ov96_02125b44
	.word FUN_ov96_02125b30
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word FUN_ov96_021258d0
	.word FUN_0202b208
	.word FUN_ov96_02125968
	.word FUN_ov96_02125a64
	.word FUN_ov96_02125aa8
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b294
	.word FUN_0202b284
	.word FUN_0202b278
	.word FUN_0202b26c
	.word FUN_0202b25c
	.word FUN_0202b24c
	.word FUN_0202b23c
	.word FUN_0202b230
	.word FUN_0202b224
	.word FUN_ov96_02124d00
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov96_02125EAC
ov96_02125EAC:
	.byte 0x82, 0xD3, 0x82, 0xA6
	.byte 0x82, 0xBD, 0x82, 0xBC, 0x81, 0x49, 0x00, 0x00
	.global ov96_02125EB8
ov96_02125EB8:
	.byte 0x82, 0xBD, 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xF1
	.byte 0x82, 0xD3, 0x82, 0xA6, 0x82, 0xBD, 0x82, 0xBC, 0x81, 0x49, 0x00, 0x00
	.global ov96_02125ECC
ov96_02125ECC:
	.byte 0x82, 0xAA, 0x83, 0x41
	.byte 0x83, 0x62, 0x83, 0x76, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00
	.global ov96_02125EDC
ov96_02125EDC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x53, 0x56, 0x49, 0x6E, 0x61, 0x62, 0x69, 0x6B, 0x61, 0x72, 0x69, 0x2E, 0x53, 0x50, 0x46, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov96_02125F04
ov96_02125F04:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x56, 0x49, 0x6E, 0x61, 0x62, 0x69, 0x6B
	.byte 0x61, 0x72, 0x69, 0x5F, 0x65, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

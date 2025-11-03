
	.include "/macros/function.inc"
	.include "/include/overlay97.inc"

	.text
	arm_func_start FUN_ov97_02124d00
FUN_ov97_02124d00: ; 0x02124D00
	ldr r3, _02124D18 ; =0x02126D6C
	mov r2, #0
	str r3, [r0]
	str r1, [r0, #4]
	str r2, [r0, #0x14]
	bx lr
_02124D18: .word ov97_02126D6C
	arm_func_end FUN_ov97_02124d00

	arm_func_start FUN_ov97_02124d1c
FUN_ov97_02124d1c: ; 0x02124D1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	cmp r1, #0
	mov r6, #0
	bne _02124D54
	bl FUN_ov97_02126178
	mov r0, r4
	bl FUN_ov97_0212632c
	mov r4, #1
	ldr r0, _02124E9C ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f6a9c
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02124D54:
	ldr r0, [r4, #8]
	cmp r0, #0
	cmpne r0, #1
	beq _02124D70
	sub r0, r0, #3
	cmp r0, #2
	bhi _02124D78
_02124D70:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02124D78:
	ldrb r0, [r1, #6]
	cmp r0, #0
	ldreq r2, [r4, #0x18]
	ldreq r0, [r1]
	cmpeq r2, r0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r1]
	add r7, r1, #0xa
	str r0, [r4, #0x18]
	ldrh r0, [r1, #4]
	add r5, r4, #0x22
	mov r3, #0x80
	strh r0, [r4, #0x1c]
	ldrb r0, [r1, #6]
	strb r0, [r4, #0x1e]
	ldrb r0, [r1, #7]
	strb r0, [r4, #0x1f]
	ldrb r0, [r1, #8]
	strb r0, [r4, #0x20]
	ldrb r0, [r1, #9]
	strb r0, [r4, #0x21]
_02124DD0:
	ldrb r2, [r7]
	ldrb r0, [r7, #1]
	add r7, r7, #2
	subs r3, r3, #1
	strb r0, [r5, #1]
	strb r2, [r5], #2
	bne _02124DD0
	add r0, r1, #0x100
	ldrh r1, [r0, #0xa]
	add r0, r4, #0x100
	ldr r7, _02124EA0 ; =gL5Allocator
	strh r1, [r0, #0x22]
	mov r8, #0
	mov r5, #0xc
_02124E08:
	mla r9, r8, r5, r4
	ldr r1, [r9, #0x124]
	cmp r1, #0
	beq _02124E24
	mov r0, r7
	bl _ZN11L5Allocator10deallocateEPv
	str r6, [r9, #0x124]
_02124E24:
	ldr r1, [r9, #0x128]
	cmp r1, #0
	beq _02124E3C
	mov r0, r7
	bl _ZN11L5Allocator10deallocateEPv
	str r6, [r9, #0x128]
_02124E3C:
	add r8, r8, #1
	cmp r8, #2
	blt _02124E08
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	beq _02124E60
	ldrb r0, [r4, #0x21]
	cmp r0, #0
	beq _02124E7C
_02124E60:
	mov r0, r4
	bl FUN_ov97_02126178
	mov r0, r4
	bl FUN_ov97_0212632c
	ldr r0, _02124E9C ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
_02124E7C:
	mov r0, r4
	bl FUN_ov97_02125208
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov97_0212513c
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02124E9C: .word unk_0209F5C0
_02124EA0: .word gL5Allocator
	arm_func_end FUN_ov97_02124d1c

	arm_func_start FUN_ov97_02124ea4
FUN_ov97_02124ea4: ; 0x02124EA4
	cmp r1, #0
	strge r1, [r0, #0x14]
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov97_02124ea4

	arm_func_start FUN_ov97_02124eb4
FUN_ov97_02124eb4: ; 0x02124EB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldrne r1, [r4, #0x214]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02124EF0 ; =0x02099F04
	ldr r2, [r2]
	bl FUN_ov16_020f0c30 ; may be ov17
	ldmfd sp!, {r4, pc}
_02124EF0: .word unk_02099F04
	arm_func_end FUN_ov97_02124eb4

	arm_func_start FUN_ov97_02124ef4
FUN_ov97_02124ef4: ; 0x02124EF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x22c
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, _02124F3C ; =0x02126DD8
	add r1, r4, #0x22c
	bl FUN_ov16_020f316c
	ldr r0, _02124F40 ; =0x02126DF0
	add r1, r4, #0x238
	bl FUN_ov16_020f316c
	ldr r0, _02124F44 ; =0x02126E08
	add r1, r4, #0x244
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124F3C: .word ov97_02126DD8
_02124F40: .word ov97_02126DF0
_02124F44: .word ov97_02126E08
	arm_func_end FUN_ov97_02124ef4

	arm_func_start FUN_ov97_02124f48
FUN_ov97_02124f48: ; 0x02124F48
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x22c
	mov r1, #3
	bl FUN_ov16_020f338c
	add r5, r4, #0x22c
	mov r6, #0
	mov r4, #0xc
_02124F68:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _02124F68
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov97_02124f48

	arm_func_start FUN_ov97_02124f80
FUN_ov97_02124f80: ; 0x02124F80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x13c]
	cmp r6, #0
	ldrne r7, _02124FC8 ; =0x02126B20
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x13c
	mov r4, #0xc
_02124FA4:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _02124FA4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124FC8: .word ov97_02126B20
	arm_func_end FUN_ov97_02124f80

	arm_func_start FUN_ov97_02124fcc
FUN_ov97_02124fcc: ; 0x02124FCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldrh r0, [r4, #0x1c]
	mov r6, #0
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r7, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x22c]
	cmp r0, #0
	beq _0212503C
	add r5, sp, #8
	add r3, sp, #0xc
	mov r1, r7
	mov r2, r6
	str r5, [sp]
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _0212503C
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021250E4 ; =0x02126E20
	add r1, r4, #0x1fc
	bl FUN_ov16_020f31fc
_0212503C:
	ldr r0, [r4, #0x238]
	cmp r0, #0
	beq _0212508C
	add r1, sp, #0xc
	str r1, [sp]
	add r5, sp, #8
	ldr r2, _021250E8 ; =0x000001DF
	mov r1, r7
	mov r3, #0
	str r5, [sp, #4]
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _0212508C
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021250EC ; =0x02126E38
	add r1, r4, #0x208
	bl FUN_ov16_020f31fc
_0212508C:
	ldr r0, [r4, #0x244]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	add r12, sp, #8
	ldr r1, _021250E8 ; =0x000001DF
	add r3, sp, #0xc
	mov r2, r5
	str r12, [sp]
	bl FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r5, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _021250F0 ; =0x02126E50
	add r1, r4, #0x214
	bl FUN_ov16_020f31fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021250E4: .word ov97_02126E20
_021250E8: .word 0x000001DF
_021250EC: .word ov97_02126E38
_021250F0: .word ov97_02126E50
	arm_func_end FUN_ov97_02124fcc

	arm_func_start FUN_ov97_021250f4
FUN_ov97_021250f4: ; 0x021250F4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x50
	mov r3, r1
	mov r5, r2
	add r4, sp, #0
	mov r6, r0
	ldr r1, _02125138 ; =0x02126E68
	mov r0, r4
	mov r2, r3
	bl sprintf
	add r1, r6, #0x220
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r4, r5, r6, pc}
_02125138: .word ov97_02126E68
	arm_func_end FUN_ov97_021250f4

	arm_func_start FUN_ov97_0212513c
FUN_ov97_0212513c: ; 0x0212513C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	str r1, [r4, #0xc]
	cmp r1, #1
	beq _0212515C
	cmp r1, #2
	beq _021251E0
	b _021251EC
_0212515C:
	mov r7, #0
	mov r1, r7
	add r0, r4, #0x13c
	mov r2, #0xe4
	bl MI_CpuFill8
	ldr r5, _021251F8 ; =0x020A8C40
	mov r6, #0x800
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r5, _021251FC ; =0x020A8440
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldrb r0, [r4, #0x228]
	cmp r0, #0
	bne _021251D0
	ldr r1, _02125200 ; =0x02126E84
	mov r0, r4
	mov r2, r7
	bl FUN_ov97_021250f4
_021251D0:
	ldr r0, _02125204 ; =0x02126E90
	add r1, r4, #0x13c
	bl FUN_ov16_020f316c
	b _021251E4
_021251E0:
	bl FUN_ov97_02124fcc
_021251E4:
	mov r0, #1
	strb r0, [r4, #0x10]
_021251EC:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021251F8: .word unk_020A8C40
_021251FC: .word unk_020A8440
_02125200: .word ov97_02126E84
_02125204: .word ov97_02126E90
	arm_func_end FUN_ov97_0212513c

	arm_func_start FUN_ov97_02125208
FUN_ov97_02125208: ; 0x02125208
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0x13c
	mov r1, #0x13
	bl FUN_ov16_020f338c
	add r5, r4, #0x13c
	mov r6, #0
	mov r4, #0xc
_02125228:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x13
	blt _02125228
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov97_02125208

	arm_func_start FUN_ov97_02125240
FUN_ov97_02125240: ; 0x02125240
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02125270
	ldr r0, _021252E8 ; =gL5Allocator
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02125270:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0212528C
	ldr r0, _021252E8 ; =gL5Allocator
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_0212528C:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _021252C4
_021252AC:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _021252AC
_021252C4:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_021252E8: .word gL5Allocator
	arm_func_end FUN_ov97_02125240

	arm_func_start FUN_ov97_021252ec
FUN_ov97_021252ec: ; 0x021252EC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r9, r2
	add r3, r5, #0x124
	mov r2, #0xc
	mla r6, r1, r2, r3
	mov r1, r6
	mov r3, #5
	mov r4, #0
	bl FUN_ov97_02125240
	ldr r1, [r6, #4]
	cmp r1, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r5, #0x20]
	cmp r0, #0
	beq _021254B8
	mov r0, r9
	bl STD_GetStringLength
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	mov r7, #1
	cmp r0, #8
	movlt r7, r4
	mov r8, #3
	cmp r7, #0
	moveq r8, #0
	cmp r7, #0
	bne _02125380
	ldr r0, _02125528 ; =0x02099ED0
	add r1, r9, #0x2c
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
_02125380:
	add r5, sp, #0x1c
	mov r2, r9
	mov r0, r5
	add r1, r9, #0x2c
	bl FUN_0204378c
	mov r0, #3
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [r6, #4]
	mov r3, r5
	str r1, [sp, #8]
	ldrh r12, [r6, #8]
	ldr r0, _02125528 ; =0x02099ED0
	mov r1, r8
	mov r5, r12, lsl #3
	str r5, [sp, #0xc]
	ldrh r5, [r6, #0xa]
	mov r5, r5, lsl #3
	str r5, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r0]
	ldr r5, [r0]
	ldr r5, [r5, #8]
	blx r5
	cmp r7, #0
	bne _0212540C
	ldr r0, _0212552C ; =0x02099F50
	mov r1, r9
	ldr r0, [r0]
	bl FUN_0204294c
	rsb r0, r0, #0x60
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
_0212540C:
	mov r5, #3
	str r5, [sp]
	str r4, [sp, #4]
	ldr r0, [r6, #4]
	ldr r7, _0212552C ; =0x02099F50
	str r0, [sp, #8]
	ldrh r0, [r6, #8]
	mov r1, r8
	mov r3, r9
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r6, #0xa]
	mov r2, #0xc
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r7]
	ldr r8, [r0]
	ldr r8, [r8, #8]
	blx r8
	ldr r0, [r7]
	add r1, r9, #0x1c
	bl FUN_0204294c
	str r5, [sp]
	str r4, [sp, #4]
	ldr r1, [r6, #4]
	rsb r0, r0, #0x60
	str r1, [sp, #8]
	ldrh r1, [r6, #8]
	add r0, r0, r0, lsr #31
	add r3, r9, #0x1c
	mov r1, r1, lsl #3
	str r1, [sp, #0xc]
	mov r1, r0, asr #1
	ldrh r0, [r6, #0xa]
	mov r2, #0x1c
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r7]
	b _021254FC
_021254B8:
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	ldrh r2, [r6, #8]
	mov r1, r4
	ldr r0, _0212552C ; =0x02099F50
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r4, [r6, #0xa]
	ldr r3, _02125530 ; =0x02126EB4
	mov r2, #0xb
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r0]
_021254FC:
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
_02125528: .word unk_02099ED0
_0212552C: .word unk_02099F50
_02125530: .word ov97_02126EB4
	arm_func_end FUN_ov97_021252ec

	arm_func_start FUN_ov97_02125534
FUN_ov97_02125534: ; 0x02125534
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r3, r4, #0x124
	mov r2, #0xc
	mla r6, r1, r2, r3
	mov r5, #6
	mov r1, r6
	mov r3, r5
	mov r2, #0x20
	bl FUN_ov97_02125240
	ldr r1, [r6, #4]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r2, [sp, #0x18]
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r4, #0x22
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov97_02125534

	arm_func_start FUN_ov97_021255b8
FUN_ov97_021255b8: ; 0x021255B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x10]
	mov r5, r1
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r6, #0x1c]
	mov r4, #0
	mov r1, r4
	strb r4, [r6, #0x10]
	bl FUN_ov16_020efa9c
	mov r2, r0
	cmp r5, #1
	beq _021255FC
	cmp r5, #2
	beq _0212560C
	ldmfd sp!, {r4, r5, r6, pc}
_021255FC:
	mov r0, r6
	mov r1, r4
	bl FUN_ov97_021252ec
	ldmfd sp!, {r4, r5, r6, pc}
_0212560C:
	mov r0, r6
	mov r1, #1
	bl FUN_ov97_02125534
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov97_021255b8

	arm_func_start FUN_ov97_0212561c
FUN_ov97_0212561c: ; 0x0212561C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x50]
	mov r4, #0xc
	mla r4, r5, r4, r0
	ldr r4, [r4, #0x13c]
	mov r9, r3
	ldr r8, [sp, #0x4c]
	ldr r3, [sp, #0x54]
	cmp r4, #0
	mov r10, r1
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r0, #0x20]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	add r7, r4, r1
	beq _0212570C
	ldr r0, [sp, #0x48]
	ldr r11, _02125764 ; =0x66666667
	cmp r9, r0
	movgt r9, r0
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	and r4, r3, #0xff
	mov r6, #1
_02125684:
	smull r1, r2, r11, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	add r0, r7, r2, lsl #2
	mov r2, r9
	smull r1, r9, r11, r2
	mov r1, r2, lsr #0x1f
	str r6, [sp]
	add r9, r1, r9, asr #2
	mov r1, r10, lsl #0x18
	str r6, [sp, #4]
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, #2
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _02125768 ; =0x0209F5C0
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _02125684
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212570C:
	mov r1, #1
	str r1, [sp]
	mov r2, r2, lsl #0x18
	mov r0, r10, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	and r3, r3, #0xff
	ldr r0, _02125768 ; =0x0209F5C0
	mov r2, r8
	str r3, [sp, #0x18]
	add r4, r7, #0x28
	mov r3, #0
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125764: .word 0x66666667
_02125768: .word unk_0209F5C0
	arm_func_end FUN_ov97_0212561c

	arm_func_start FUN_ov97_0212576c
FUN_ov97_0212576c: ; 0x0212576C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r5, [sp, #0x50]
	mov r4, #0xc
	mla r0, r5, r4, r0
	ldr r4, [r0, #0x13c]
	ldr r8, [sp, #0x4c]
	mov r10, r1
	mov r9, r3
	cmp r4, #0
	ldr r1, [sp, #0x54]
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	ldr r11, _02125854 ; =0x66666667
	cmp r9, r0
	movgt r9, r0
	ldr r0, [r4, #0xc]
	mov r6, #1
	add r7, r4, r0
	mov r0, r2, lsl #0x18
	mov r5, r0, asr #0x18
	and r4, r1, #0xff
_021257C8:
	smull r1, r2, r11, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	add r0, r2, r2, lsl #1
	mov r2, r9
	smull r1, r9, r11, r2
	mov r1, r2, lsr #0x1f
	str r6, [sp]
	add r9, r1, r9, asr #2
	mov r1, r10, lsl #0x18
	str r6, [sp, #4]
	mov r1, r1, asr #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, #3
	str r1, [sp, #0x14]
	add r0, r7, r0, lsl #1
	str r4, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _02125858 ; =0x0209F5C0
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_020f5da0
	sub r0, r10, #1
	mov r0, r0, lsl #0x10
	cmp r9, #0
	mov r10, r0, asr #0x10
	bgt _021257C8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125854: .word 0x66666667
_02125858: .word unk_0209F5C0
	arm_func_end FUN_ov97_0212576c

	arm_func_start FUN_ov97_0212585c
FUN_ov97_0212585c: ; 0x0212585C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	ldrb r0, [r6, #0x20]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0x21]
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x208]
	cmp r2, #0
	beq _021258F4
	mov r3, #2
	mov r0, r5, lsl #0x18
	mov r1, #1
	str r3, [sp]
	mov r3, r4, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r3, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #9
	str r0, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _02125964 ; =0x0209F5C0
	add r12, r2, r3
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021258F4:
	ldr r3, [r6, #0x1fc]
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
	mov r0, #0xa
	str r0, [sp, #0x18]
	ldr r4, [r3, #0xc]
	ldr r0, _02125964 ; =0x0209F5C0
	add r4, r3, r4
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_02125964: .word unk_0209F5C0
	arm_func_end FUN_ov97_0212585c

	arm_func_start FUN_ov97_02125968
FUN_ov97_02125968: ; 0x02125968
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r0
	ldr r5, [r9, #0x124]
	mov r8, r1
	cmp r5, #0
	add r2, r9, #0x124
	mov r11, #4
	mov r4, #2
	mov r10, #1
	beq _021259DC
	mov r0, #3
	mov r1, r10
	stmia sp, {r0, r1}
	mov r0, #9
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r6, [r2, #8]
	mov r3, #0
	ldr r0, _02125E9C ; =0x0209F5C0
	and r6, r6, #0xff
	str r6, [sp, #0x10]
	ldrh r6, [r2, #0xa]
	mov r2, r1
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021259DC:
	ldrb r0, [r9, #0x20]
	mov r5, #3
	cmp r0, #0
	beq _02125C18
	mov r6, #0
	ldr r0, _02125EA0 ; =0x0209BA20
	mov r1, r8
	mov r3, r6
	mov r2, #0xf
	sub r7, r6, #1
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02125A4C
_02125A14: ; jump table
	b _02125A4C ; case 0
	b _02125A28 ; case 1
	b _02125A34 ; case 2
	b _02125A3C ; case 3
	b _02125A44 ; case 4
_02125A28:
	mov r7, #0xa
_02125A2C:
	mov r6, #5
	b _02125A4C
_02125A34:
	mov r7, #0xb
	b _02125A2C
_02125A3C:
	mov r7, #0xc
	b _02125A48
_02125A44:
	mov r7, #0xd
_02125A48:
	mov r6, #6
_02125A4C:
	cmp r7, #0
	mov r0, #3
	blt _02125AB8
	mov r1, #0xc
	mla r1, r7, r1, r9
	ldr r2, [r1, #0x13c]
	cmp r2, #0
	beq _02125AB8
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0x1b
	str r3, [sp, #8]
	mov r3, #4
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	and r6, r6, #0xff
	str r6, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _02125E9C ; =0x0209F5C0
	add r2, r2, r3
	str r2, [sp, #0x1c]
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5da0
_02125AB8:
	mov r0, r8
	bl FUN_0204fb60
	cmp r0, #4
	mvn r6, #0
	addls pc, pc, r0, lsl #2
	b _02125B00
_02125AD0: ; jump table
	b _02125B00 ; case 0
	b _02125AE4 ; case 1
	b _02125AEC ; case 2
	b _02125AF4 ; case 3
	b _02125AFC ; case 4
_02125AE4:
	mov r6, #1
	b _02125B00
_02125AEC:
	mov r6, #2
	b _02125B00
_02125AF4:
	mov r6, #3
	b _02125B00
_02125AFC:
	mov r6, #0
_02125B00:
	cmp r6, #0
	blt _02125B64
	ldr r2, [r9, #0x1a8]
	cmp r2, #0
	beq _02125B64
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x18]
	ldr r7, [r2, #0xc]
	ldr r0, _02125E9C ; =0x0209F5C0
	add r2, r2, r7
	add r2, r2, r6, lsl #4
	str r2, [sp, #0x1c]
	mov r2, r1
	bl FUN_ov16_020f5da0
_02125B64:
	ldrh r0, [r9, #0x1c]
	mov r1, #0
	bl FUN_ov16_020efa9c
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _02125C18
	mov r1, #1
	bl FUN_0206d9b0
	sub r6, r0, #1
	ldr r0, [sp, #0x20]
	mov r1, #1
	ldr r7, [r9, #0x1f0]
	bl FUN_0206d9b0
	cmp r0, #1
	blo _02125C18
	ldr r0, [sp, #0x20]
	mov r1, #1
	bl FUN_0206d9b0
	cmp r0, #0x14
	bhi _02125C18
	cmp r7, #0
	mov r1, #3
	beq _02125C18
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x18]
	ldr r1, [r7, #0xc]
	mov r0, #0xc
	add r1, r7, r1
	mla r7, r6, r0, r1
	mov r1, #1
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r3, #0
	mov r2, r1
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125C18:
	ldr r6, [r9, #0x190]
	cmp r6, #0
	beq _02125E34
	ldr r3, [r6, #0xc]
	mov r0, #0x16
	str r10, [sp]
	str r10, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	add r7, r6, r3
	str r5, [sp, #0x18]
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r1, r10
	mov r2, r10
	mov r3, #0
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r8
	bl FUN_0206dcd4
	mov r1, #0x63
	stmia sp, {r1, r10}
	mov r1, #0xe
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldrb r3, [r0, #0x4a]
	mov r0, r9
	mov r1, #0x19
	mov r2, #0
	bl FUN_ov97_0212561c
	str r10, [sp]
	str r10, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	add r0, r7, #0xc
	str r0, [sp, #0x1c]
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r1, r10
	mov r2, r10
	mov r3, #0
	bl FUN_ov16_020f5da0
	str r10, [sp]
	str r10, [sp, #4]
	mov r6, #0xf
	str r6, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	add r0, r7, #0x30
	str r0, [sp, #0x1c]
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r1, r10
	mov r2, r10
	mov r3, #0
	bl FUN_ov16_020f5da0
	mov r0, r8
	bl FUN_0206ccdc
	add r6, r6, #0x3d8
	stmia sp, {r6, r10}
	str r5, [sp, #8]
	mov r3, r0
	mov r1, #0xe
	mov r0, r9
	mov r2, #6
	str r4, [sp, #0xc]
	bl FUN_ov97_0212561c
	mov r0, r8
	bl FUN_0206ccec
	stmia sp, {r6, r10}
	str r5, [sp, #8]
	mov r3, r0
	str r4, [sp, #0xc]
	mov r0, r9
	mov r1, #0x12
	mov r2, #6
	bl FUN_ov97_0212561c
	str r10, [sp]
	str r10, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	add r0, r7, #0x18
	str r0, [sp, #0x1c]
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r1, r10
	mov r2, r10
	mov r3, #0
	bl FUN_ov16_020f5da0
	str r10, [sp]
	str r10, [sp, #4]
	mov r1, #0x1a
	str r1, [sp, #8]
	mov r1, #6
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	add r2, r7, #0x3c
	str r5, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r3, #0
	mov r1, r10
	mov r2, r10
	bl FUN_ov16_020f5da0
	mov r0, r8
	bl FUN_0206cc84
	stmia sp, {r6, r10, r11}
	mov r3, r0
	mov r1, #0x19
	mov r0, r9
	mov r2, #6
	str r4, [sp, #0xc]
	bl FUN_ov97_0212561c
	mov r0, r8
	bl FUN_0206cc94
	stmia sp, {r6, r10, r11}
	mov r3, r0
	mov r0, r9
	mov r2, #6
	mov r1, #0x1d
	str r4, [sp, #0xc]
	bl FUN_ov97_0212561c
_02125E34:
	ldr r1, [r9, #0x19c]
	cmp r1, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r8, #0x5a]
	mov r3, #0
	cmp r0, #1
	ldr r0, [r1, #0xc]
	addeq r5, r1, r0
	addne r0, r1, r0
	mov r1, #1
	str r1, [sp]
	addne r5, r0, #8
	str r1, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _02125E9C ; =0x0209F5C0
	mov r2, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125E9C: .word unk_0209F5C0
_02125EA0: .word unk_0209BA20
	arm_func_end FUN_ov97_02125968

	arm_func_start FUN_ov97_02125ea4
FUN_ov97_02125ea4: ; 0x02125EA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r11, _02126088 ; =0x0209BA20
	mov r10, r0
	mov r0, r11
	mov r3, #0
	mov r2, #0x1e
	mov r9, r1
	bl FUN_0204f02c
	ldr r8, _0212608C ; =0x000003E7
	mov r3, r0
	str r8, [sp]
	mov r7, #1
	str r7, [sp, #4]
	mov r6, #5
	mov r0, r10
	str r6, [sp, #8]
	mov r5, #2
	mov r1, #0xc
	mov r2, #9
	str r5, [sp, #0xc]
	bl FUN_ov97_0212561c
	mov r0, r11
	mov r1, r9
	mov r2, #0x1f
	mov r3, #0
	bl FUN_0204f02c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r3, r0
	ldr r4, _02126090 ; =0x02126C40
	str r5, [sp, #0xc]
	ldrsh r1, [r4, #8]
	ldrsh r2, [r4, #0xa]
	mov r0, r10
	bl FUN_ov97_0212561c
	mov r0, r11
	mov r1, r9
	mov r2, #0x21
	mov r3, #0
	bl FUN_0204f02c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r0
	ldrsh r1, [r4, #0x1c]
	ldrsh r2, [r4, #0x1e]
	mov r0, r10
	bl FUN_ov97_0212561c
	mov r0, r11
	mov r1, r9
	mov r2, #0x20
	mov r3, #0
	bl FUN_0204f02c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r0
	ldrsh r1, [r4, #0x20]
	ldrsh r2, [r4, #0x22]
	mov r0, r10
	bl FUN_ov97_0212561c
	mov r0, r11
	mov r1, r9
	mov r3, #0
	mov r2, #0x22
	bl FUN_0204f02c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r0
	ldrsh r1, [r4, #0xc]
	ldrsh r2, [r4, #0xe]
	mov r0, r10
	bl FUN_ov97_0212561c
	mov r0, r11
	mov r1, r9
	mov r2, #0x24
	mov r3, #0
	bl FUN_0204f02c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r0
	ldrsh r1, [r4]
	ldrsh r2, [r4, #2]
	mov r0, r10
	bl FUN_ov97_0212561c
	mov r0, r11
	mov r3, #0
	mov r1, r9
	mov r2, #0x23
	bl FUN_0204f02c
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r3, r0
	ldrsh r1, [r4, #0x28]
	ldrsh r2, [r4, #0x2a]
	mov r0, r10
	bl FUN_ov97_0212561c
	mov r0, r9
	bl FUN_0206dcd4
	ldr r1, _02126094 ; =0x000F423F
	mov r2, r0
	stmia sp, {r1, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r2]
	ldrsh r1, [r4, #0x10]
	ldrsh r2, [r4, #0x12]
	mov r0, r10
	bl FUN_ov97_0212561c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02126088: .word unk_0209BA20
_0212608C: .word 0x000003E7
_02126090: .word ov97_02126C40
_02126094: .word 0x000F423F
	arm_func_end FUN_ov97_02125ea4

	arm_func_start FUN_ov97_02126098
FUN_ov97_02126098: ; 0x02126098
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	ldrb r1, [r0, #0x20]
	cmp r1, #0
	bne _021260C0
	add r1, r0, #0x100
	ldrh r1, [r1, #0x22]
	cmp r1, #2
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, pc}
_021260C0:
	ldr lr, [r0, #0x130]
	add r4, r0, #0x130
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r0, #4
	str r0, [sp]
	mov r2, #0
	mov r1, #1
	stmib sp, {r1, r2}
	mov r0, #0x14
	str r0, [sp, #0xc]
	ldrh r12, [r4, #8]
	ldr r0, _02126124 ; =0x0209F5C0
	mov r3, r2
	and r12, r12, #0xff
	str r12, [sp, #0x10]
	ldrh r12, [r4, #0xa]
	and r12, r12, #0xff
	str r12, [sp, #0x14]
	str r2, [sp, #0x18]
	str lr, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_02126124: .word unk_0209F5C0
	arm_func_end FUN_ov97_02126098

	arm_func_start FUN_ov97_02126128
FUN_ov97_02126128: ; 0x02126128
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl FUN_ov97_0212585c
	mov r0, r5
	mov r1, r4
	bl FUN_ov97_02125968
	mov r0, r5
	mov r1, r4
	bl FUN_ov97_02125ea4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov97_02126128

	arm_func_start FUN_ov97_02126178
FUN_ov97_02126178: ; 0x02126178
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _02126320 ; =0x0209F5C0
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
	bl FUN_ov16_020f5eec
	mov r0, r6
	mov r1, r5
	mov r2, #3
	mov r3, r4
	bl FUN_ov16_020f5eec
	mov r0, r6
	mov r1, r5
	mov r2, #4
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r2, [r7, #0x154]
	cmp r2, #0
	beq _02126234
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02126234:
	ldrb r0, [r7, #0x21]
	cmp r0, #0
	beq _021262A4
	add r0, r7, #0x100
	ldrh r0, [r0, #0x22]
	ldr r4, [r7, #0x148]
	mov r5, #0
	cmp r0, #2
	moveq r5, #0x480
	cmp r4, #0
	beq _021262A4
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	stmib sp, {r1, r2}
	str r2, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0x12
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _02126320 ; =0x0209F5C0
	add r3, r3, r5
	add r4, r4, r3
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021262A4:
	ldr r0, _02126324 ; =0x0209BA20
	bl FUN_ov16_020edfc0
	ldr r1, _02126328 ; =0x000F423F
	mov r4, #0x12
	str r1, [sp]
	mov r8, #0
	mov r3, r0
	str r8, [sp, #4]
	mov r6, #6
	mov r0, r7
	mov r2, r4
	str r6, [sp, #8]
	mov r5, #1
	mov r1, #0xe
	str r5, [sp, #0xc]
	bl FUN_ov97_0212576c
	rsb r0, r5, #0x3e8
	stmia sp, {r0, r8}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r7, #0x14]
	mov r0, r7
	mov r2, r4
	mov r1, #0x1c
	bl FUN_ov97_0212576c
	mov r0, r7
	bl FUN_ov97_02126128
	mov r0, r7
	bl FUN_ov97_02126098
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02126320: .word unk_0209F5C0
_02126324: .word unk_0209BA20
_02126328: .word 0x000F423F
	arm_func_end FUN_ov97_02126178

	arm_func_start FUN_ov97_0212632c
FUN_ov97_0212632c: ; 0x0212632C
	ldr r0, _0212633C ; =0x0209F5C0
	ldr r12, _02126340 ; = FUN_ov16_020f672c
	mov r1, #1
	bx r12
_0212633C: .word unk_0209F5C0
_02126340: .word FUN_ov16_020f672c
	arm_func_end FUN_ov97_0212632c

	arm_func_start FUN_ov97_02126344
FUN_ov97_02126344: ; 0x02126344
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x124
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _02126384
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	mov r2, r0
_02126384:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov97_02126344

	arm_func_start FUN_ov97_0212638c
FUN_ov97_0212638c: ; 0x0212638C
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x124
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _021263D4
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
_021263D4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov97_0212638c

	arm_func_start FUN_ov97_021263dc
FUN_ov97_021263dc: ; 0x021263DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0xc
	mul r7, r1, r4
	add r6, r0, #0x13c
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
	arm_func_end FUN_ov97_021263dc

	arm_func_start FUN_ov97_02126444
FUN_ov97_02126444: ; 0x02126444
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x124
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _0212648C
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
_0212648C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov97_02126444

	arm_func_start FUN_ov97_02126494
FUN_ov97_02126494: ; 0x02126494
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r12, #0xc
	mul r5, r1, r12
	add r4, r0, #0x13c
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
	arm_func_end FUN_ov97_02126494

	arm_func_start FUN_ov97_021264f8
FUN_ov97_021264f8: ; 0x021264F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r10, #5
	mov r4, r2
	mov r7, #2
	mov r1, r10
	mov r2, r7
	mov r3, r5
	mov r6, r0
	str r4, [sp]
	bl FUN_ov97_021263dc
	mov r9, #4
	mov r0, r6
	mov r1, r9
	str r4, [sp]
	mov r2, r7
	mov r3, r5
	bl FUN_ov97_021263dc
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r8, #3
	mov r1, r8
	mov r3, r5
	bl FUN_ov97_021263dc
	str r4, [sp]
	mov r0, r6
	mov r1, #7
	mov r2, r8
	mov r3, r5
	bl FUN_ov97_021263dc
	str r4, [sp]
	mov r0, r6
	mov r1, #0xa
	mov r2, r10
	mov r3, r5
	bl FUN_ov97_021263dc
	mov r2, r10
	str r4, [sp]
	mov r0, r6
	mov r1, #0xb
	mov r3, r5
	bl FUN_ov97_021263dc
	str r4, [sp]
	mov r0, r6
	mov r1, #0xc
	mov r7, #6
	mov r2, r7
	mov r3, r5
	bl FUN_ov97_021263dc
	mov r2, r7
	str r4, [sp]
	mov r0, r6
	mov r1, #0xd
	mov r3, r5
	bl FUN_ov97_021263dc
	str r4, [sp]
	mov r0, r6
	mov r1, #9
	mov r7, #8
	mov r2, r7
	mov r3, r5
	bl FUN_ov97_021263dc
	mov r2, r9
	str r4, [sp]
	mov r0, r6
	mov r1, r7
	mov r3, r5
	bl FUN_ov97_021263dc
	mov r2, r8
	str r4, [sp]
	mov r0, r6
	mov r1, #0xe
	mov r3, r5
	bl FUN_ov97_021263dc
	str r4, [sp]
	mov r0, r6
	mov r2, r7
	mov r3, r5
	mov r1, #0xf
	bl FUN_ov97_021263dc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov97_021264f8

	arm_func_start FUN_ov97_02126648
FUN_ov97_02126648: ; 0x02126648
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r7, [r4, #0x220]
	cmp r7, #0
	beq _021266B8
	ldr r0, [r7, #0xc]
	mov r6, #0
	mov r5, #7
	ldr r1, [r7, #0x10]
	mov r2, r6
	mov r3, r5
	add r0, r7, r0
	bl FUN_ov16_020f1868
	mov r0, r7
	mov r2, r5
	mov r1, #1
	bl FUN_ov16_020f1138
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG0Char
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	add r0, r7, r0
	mov r1, r6
	bl GXS_LoadBG0Scr
_021266B8:
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
	str r6, [sp, #0x10]
	str r5, [sp, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	str r5, [sp, #4]
	str r6, [sp, #0xc]
	mov r0, r4
	mov r1, r6
	ldr r2, [sp, #0x10]
	bl FUN_ov97_02126344
	mov r1, r6
	str r0, [sp, #0x10]
	mov r0, r4
	ldr r2, [sp, #8]
	bl FUN_ov97_0212638c
	str r0, [sp, #8]
	ldr r0, [r4, #0x208]
	cmp r0, #0
	beq _0212676C
	ldr r1, [sp, #0x10]
	mov r2, #9
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x208]
	ldr r2, [sp, #8]
	mov r0, #1
	bl FUN_ov16_020f1a60
	str r0, [sp, #8]
_0212676C:
	ldr r0, [r4, #0x214]
	cmp r0, #0
	beq _02126784
	mov r1, #1
	mov r2, #9
	bl FUN_ov16_020f1160
_02126784:
	add r6, sp, #0x10
	add r5, sp, #8
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov97_021264f8
	mov r7, #1
	mov r0, r4
	mov r2, r7
	mov r3, r6
	mov r1, #2
	str r5, [sp]
	bl FUN_ov97_021263dc
	add r6, sp, #4
	add r5, sp, #0xc
	mov r0, r4
	mov r3, r5
	str r6, [sp]
	mov r1, #0x10
	mov r2, #0xa
	bl FUN_ov97_02126494
	ldr r2, [sp, #0xc]
	mov r0, r4
	mov r1, r7
	bl FUN_ov97_02126344
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	mov r0, r4
	mov r1, r7
	bl FUN_ov97_02126444
	str r0, [sp, #4]
	mov r0, r4
	mov r1, #6
	mov r2, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov97_02126494
	mov r0, r4
	mov r3, r5
	mov r1, r7
	mov r2, r7
	str r6, [sp]
	bl FUN_ov97_02126494
	bl FUN_ov16_020f10c8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov97_02126648

	arm_func_start FUN_ov97_0212683c
FUN_ov97_0212683c: ; 0x0212683C
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
	add r0, r7, #0x124
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r7, #0x13c
	mov r1, r5
	mov r2, #0xe4
	bl MI_CpuFill8
	add r0, r7, #0x220
	mov r1, r5
	mov r4, #0xc
	mov r2, r4
	bl MI_CpuFill8
	sub r0, r4, #0xd
	str r0, [r7, #0x18]
	strb r5, [r7, #0x10]
	strh r5, [r7, #0x1c]
	strb r5, [r7, #0x1e]
	strb r5, [r7, #0x1f]
	strb r5, [r7, #0x20]
	strb r5, [r7, #0x21]
	strb r5, [r7, #0x22]
	add r0, r7, #0x100
	strh r5, [r0, #0x22]
	mov r0, r7
	bl FUN_ov97_02124ef4
	mov r1, r6
	ldr r0, _021268E0 ; =0x0209F5C0
	bl FUN_ov16_020f5a58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021268E0: .word unk_0209F5C0
	arm_func_end FUN_ov97_0212683c

	arm_func_start FUN_ov97_021268e4
FUN_ov97_021268e4: ; 0x021268E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_021268FC: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02126920 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _0212693C ; case 3
	b _021269B0 ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _021269C4 ; case 6
	b _021269D0 ; case 7
	b _021269FC ; case 8
_02126920:
	add r0, r4, #0x22c
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0212693C:
	ldr r1, [r4, #0xc]
	bl FUN_ov97_021255b8
	add r0, r4, #0x13c
	mov r1, #0x13
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x220
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02126984
	cmp r0, #2
	beq _02126994
	ldmfd sp!, {r4, pc}
_02126984:
	mov r0, r4
	mov r1, #2
	bl FUN_ov97_0212513c
	ldmfd sp!, {r4, pc}
_02126994:
	mov r0, r4
	bl FUN_ov97_02124f80
	mov r0, r4
	bl FUN_ov97_02124eb4
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021269B0:
	bl FUN_ov97_02126178
	mov r0, #4
	bl FUN_ov16_020f147c
	mov r0, #6
	str r0, [r4, #8]
_021269C4:
	mov r0, r4
	bl FUN_ov97_0212632c
	ldmfd sp!, {r4, pc}
_021269D0:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov97_02125208
	mov r0, r4
	mov r1, #1
	bl FUN_ov97_0212513c
	ldmfd sp!, {r4, pc}
_021269FC:
	bl FUN_ov97_02125208
	mov r0, r4
	mov r1, #1
	bl FUN_ov97_0212513c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov97_021268e4

	arm_func_start FUN_ov97_02126a10
FUN_ov97_02126a10: ; 0x02126A10
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	beq _02126A30
	cmp r1, #6
	beq _02126A40
	ldmfd sp!, {r4, pc}
_02126A30:
	bl FUN_ov97_02126648
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02126A40:
	ldr r0, _02126A50 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02126A50: .word unk_0209F5C0
	arm_func_end FUN_ov97_02126a10

	arm_func_start FUN_ov97_02126a54
FUN_ov97_02126a54: ; 0x02126A54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	add r0, r4, #0x220
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, #0x220
	bl FUN_ov16_020f33fc
	mov r0, r4
	bl FUN_ov97_02125208
	mov r0, r4
	bl FUN_ov97_02124f48
	mov r9, #0
	ldr r8, _02126B00 ; =gL5Allocator
	mov r7, r9
	mov r6, r9
	mov r5, #0xc
_02126A94:
	mla r10, r9, r5, r4
	ldr r1, [r10, #0x124]
	cmp r1, #0
	beq _02126AB0
	mov r0, r8
	bl _ZN11L5Allocator10deallocateEPv
	str r7, [r10, #0x124]
_02126AB0:
	ldr r1, [r10, #0x128]
	cmp r1, #0
	beq _02126AC8
	mov r0, r8
	bl _ZN11L5Allocator10deallocateEPv
	str r6, [r10, #0x128]
_02126AC8:
	add r9, r9, #1
	cmp r9, #2
	blt _02126A94
	mov r5, #1
	ldr r0, _02126B04 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	bl FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02126B00: .word gL5Allocator
_02126B04: .word unk_0209F5C0
	arm_func_end FUN_ov97_02126a54

	arm_func_start FUN_ov97_02126b08
FUN_ov97_02126b08: ; 0x02126B08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov97_02126b08

	arm_func_start FUN_ov97_02126b1c
FUN_ov97_02126b1c: ; 0x02126B1C
	bx lr
	arm_func_end FUN_ov97_02126b1c

	.rodata
	.global ov97_02126B20
ov97_02126B20:
	.word ov97_02126D04
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov97_02126D14
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov97_02126D34
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov97_02126D44
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov97_02126C74
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov97_02126C84
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov97_02126CA4
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov97_02126CB4
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov97_02126CD4
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov97_02126CE4
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov97_02126D24
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov97_02126D54
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov97_02126C94
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov97_02126CC4
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov97_02126CF4
	.byte 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov97_02126ba0
FUN_ov97_02126ba0: ; 0x02126BA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126C24 ; =0x02126C40
	str r0, [r4, #4]
	ldr r0, _02126C28 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02126C2C ; =0x0000EA3C
	str r1, [r4, #0x24]
	str r0, [r4, #0x18]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x30]
	add r0, r1, #0x840000
	str r0, [r4, #0x2c]
	mov r0, #0xc
	strh r0, [r4, #8]
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x20]
	mov r0, #9
	strh r0, [r4, #0xe]
	ldrsh r1, [r4, #0xc]
	strh r1, [r4]
	ldrsh r0, [r4, #0xa]
	strh r0, [r4, #2]
	strh r1, [r4, #0x28]
	ldrsh r0, [r4, #0x1e]
	strh r0, [r4, #0x2a]
	ldrsh r0, [r4, #0x22]
	strh r0, [r4, #0x12]
	ldmfd sp!, {r3, r4, r5, pc}
_02126C24: .word ov97_02126C40
_02126C28: .word 0x00009CCD
_02126C2C: .word 0x0000EA3C
	arm_func_end FUN_ov97_02126ba0

	.section .sinit, 4
ov97_02126C30:
	.word FUN_ov97_02126ba0

	.data
	.global ov97_02126C40
ov97_02126C40:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00
	.byte 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126C74
ov97_02126C74:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126C84
ov97_02126C84:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x31, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126C94
ov97_02126C94:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126CA4
ov97_02126CA4:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x32, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126CB4
ov97_02126CB4:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x32, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126CC4
ov97_02126CC4:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x31, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126CD4
ov97_02126CD4:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x39, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126CE4
ov97_02126CE4:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126CF4
ov97_02126CF4:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D04
ov97_02126D04:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D14
ov97_02126D14:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D24
ov97_02126D24:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D34
ov97_02126D34:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D44
ov97_02126D44:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x74, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D54
ov97_02126D54:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x7A, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov97_02126D6C
ov97_02126D6C:
	.word FUN_ov97_02126b1c
	.word FUN_ov97_02126b08
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word FUN_ov97_0212683c
	.word FUN_0202b208
	.word FUN_ov97_021268e4
	.word FUN_ov97_02126a10
	.word FUN_ov97_02126a54
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
	.word FUN_ov97_02124d1c
	.word FUN_ov97_02124ea4
	.word FUN_0202b1c8
	.global ov97_02126DD8
ov97_02126DD8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov97_02126DF0
ov97_02126DF0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov97_02126E08
ov97_02126E08:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov97_02126E20
ov97_02126E20:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov97_02126E38
ov97_02126E38:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov97_02126E50
ov97_02126E50:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov97_02126E68
ov97_02126E68:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x25, 0x73, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00
	.global ov97_02126E84
ov97_02126E84:
	.byte 0x6A, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00
	.global ov97_02126E90
ov97_02126E90:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x4A, 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x2E, 0x53
	.byte 0x50, 0x46, 0x5F, 0x00
	.global ov97_02126EB4
ov97_02126EB4:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

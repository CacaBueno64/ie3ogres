
	.include "/macros/function.inc"
	.include "/include/overlay123.inc"

	.text
	arm_func_start FUN_ov123_02124d00
FUN_ov123_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #3
	movls r0, #0
	ldmlsfd sp!, {r3, r4, r5, pc}
	ldrh r2, [r4, #0x48]
	ldrh r0, [r1]
	cmp r2, r0
	ldreqb r0, [r1, #2]
	cmpeq r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1]
	mov r2, #0
	strb r2, [r1, #2]
	strh r0, [r4, #0x48]
	ldrb r2, [r1, #2]
	add r0, r4, #0x14
	mov r1, #3
	strb r2, [r4, #0x4a]
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov123_02125070
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov123_02124de4
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov123_02124d00

	arm_func_start FUN_ov123_02124d84
FUN_ov123_02124d84: ; 0x02124D84
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrh r1, [r4, #0x48]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _02124DDC ; =0x0209BA20
	bl FUN_0204b0ac
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r1, #0
	str r1, [sp]
	ldrh r2, [r0, #0xe]
	ldr r0, _02124DE0 ; =0x0212562C
	add r1, r4, #0x2c
	mov r2, r2, lsl #5
	mov r3, #0x80
	bl  FUN_ov16_020f31fc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02124DDC: .word 0x0209BA20
_02124DE0: .word 0x0212562C
	arm_func_end FUN_ov123_02124d84

	arm_func_start FUN_ov123_02124de4
FUN_ov123_02124de4: ; 0x02124DE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	str r1, [r7, #0xc]
	cmp r1, #1
	bne _02124E90
	mov r6, #0
	mov r1, r6
	add r0, r7, #0x14
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r4, _02124E9C ; =0x020A9440
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _02124EA0 ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _02124EA4 ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _02124EA8 ; =0x0212564C
	add r1, r7, #0x20
	bl  FUN_ov16_020f316c
	ldr r0, _02124EAC ; =0x0212566C
	add r1, r7, #0x14
	bl  FUN_ov16_020f316c
	mov r0, r7
	bl FUN_ov123_02124d84
_02124E90:
	mov r0, #1
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124E9C: .word 0x020A9440
_02124EA0: .word 0x020A8C40
_02124EA4: .word 0x020A8440
_02124EA8: .word 0x0212564C
_02124EAC: .word 0x0212566C
	arm_func_end FUN_ov123_02124de4

	arm_func_start FUN_ov123_02124eb0
FUN_ov123_02124eb0: ; 0x02124EB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r0, [r4]
	mul r5, r2, r3
	strh r2, [r4, #8]
	strh r3, [r4, #0xa]
	cmp r0, #0
	bne _02124EE0
	ldr r0, _02124F58 ; =0x0209A250
	mov r1, r5, lsl #1
	bl FUN_0202de44
	str r0, [r4]
_02124EE0:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02124EFC
	ldr r0, _02124F58 ; =0x0209A250
	mov r1, r5, lsl #5
	bl FUN_0202de44
	str r0, [r4, #4]
_02124EFC:
	ldr r2, [r4]
	cmp r2, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	ble _02124F34
_02124F1C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strh r1, [r2], #2
	cmp r5, r0, lsr #16
	mov r1, r0, lsr #0x10
	bgt _02124F1C
_02124F34:
	mov r5, r5, lsl #5
	ldr r0, [r4, #4]
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [r4, #4]
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_02124F58: .word 0x0209A250
	arm_func_end FUN_ov123_02124eb0

	arm_func_start FUN_ov123_02124f5c
FUN_ov123_02124f5c: ; 0x02124F5C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r3, r5, #0x38
	mov r2, #0xc
	mla r4, r1, r2, r3
	mov r1, r4
	mov r2, #0x1e
	mov r3, #6
	bl FUN_ov123_02124eb0
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r5, #0x2c]
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
	add r2, r2, #2
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov123_02124f5c

	arm_func_start FUN_ov123_02124fec
FUN_ov123_02124fec: ; 0x02124FEC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x38]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	ldrh r3, [r0, #0x40]
	ldrh lr, [r0, #0x42]
	mov r1, #1
	rsb r0, r3, #0x20
	add r0, r0, r0, lsr #31
	str r1, [sp]
	mov r0, r0, lsl #0x17
	rsb r2, lr, #0x18
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	and r0, r3, #0xff
	str r0, [sp, #0x10]
	and r0, lr, #0xff
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _0212506C ; =0x0209F5C0
	mov r2, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_0212506C: .word 0x0209F5C0
	arm_func_end FUN_ov123_02124fec

	arm_func_start FUN_ov123_02125070
FUN_ov123_02125070: ; 0x02125070
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x14
	mov r4, #0xc
_02125080:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _02125080
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov123_02125070

	arm_func_start FUN_ov123_02125098
FUN_ov123_02125098: ; 0x02125098
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul r3, r1, r3
	add r1, r0, #0x38
	ldr r0, [r1, r3]
	add r1, r1, r3
	cmp r0, #0
	beq _021250D8
	ldrh r12, [r1, #8]
	ldrh r1, [r1, #0xa]
	add r2, r2, #1
	mov r3, #0
	mul r1, r12, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	mov r2, r0
_021250D8:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov123_02125098

	arm_func_start FUN_ov123_021250e0
FUN_ov123_021250e0: ; 0x021250E0
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x38
	mov r0, #0xc
	mla r5, r1, r0, r3
	ldr r0, [r5, #4]
	mov r4, r2
	cmp r0, #0
	beq _02125128
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
_02125128:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov123_021250e0

	arm_func_start FUN_ov123_02125130
FUN_ov123_02125130: ; 0x02125130
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	mov r4, #0
	cmp r1, #0
	mov r7, #1
	beq _02125160
	cmp r1, #1
	beq _02125198
	cmp r1, #2
	beq _02125224
	b _02125248
_02125160:
	ldr r0, [r5, #0x14]
	sub r1, r7, #2
	mov r2, #2
	bl  FUN_ov1_020dc13c
	ldr r0, _0212525C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, [r5, #0x20]
	cmpne r0, #0
	beq _02125248
	mov r2, r7
	add r1, r4, #1
	bl  FUN_ov16_020f18e8
	b _02125248
_02125198:
	ldr r1, [r5, #0x14]
	mov r0, r4
	mov r2, r4
	bl  FUN_ov16_020f1a60
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _021251C8
	ldr r0, [r2, #0xc]
	ldr r1, _02125260 ; =0x020A9440
	add r0, r2, r0
	mov r2, #0x800
	bl MIi_CpuCopyFast
_021251C8:
	ldr r0, _0212525C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021251FC
	ldr r1, [r5, #0x20]
	mov r2, #0x20
	mov r0, #2
	bl  FUN_ov16_020f1a60
	ldr r1, [r5, #0x20]
	cmp r1, #0
	ldrne r0, [r1, #0xc]
	addne r0, r1, r0
	strne r0, [r5, #0x44]
_021251FC:
	bl FUN_02004fac
	mov r6, #0x20
	mov r1, r0
	mov r2, r6
	mov r0, #0
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r6
	bl DC_FlushRange
	b _02125248
_02125224:
	mov r1, r4
	mov r2, r4
	mov r6, #0x20
	bl FUN_ov123_02125098
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov123_021250e0
	mov r4, r7
_02125248:
	ldr r1, [r5, #0x10]
	mov r0, r4
	add r1, r1, #1
	str r1, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212525C: .word 0x020A0640
_02125260: .word 0x020A9440
	arm_func_end FUN_ov123_02125130

	arm_func_start FUN_ov123_02125264
FUN_ov123_02125264: ; 0x02125264
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _0212528C
	cmp r0, #3
	beq _021252C8
	cmp r0, #4
	beq _021252EC
	ldmfd sp!, {r4, pc}
_0212528C:
	add r0, r4, #0x14
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r2, #2
	mov r1, #0
	mov r0, r4
	str r2, [r4, #8]
	str r1, [r4, #0x10]
	bl FUN_ov123_02124f5c
	ldmfd sp!, {r4, pc}
_021252C8:
	mov r1, #1
	ldr r0, _02125304 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl  FUN_ov16_020f5f64
	mov r0, r4
	bl FUN_ov123_02124fec
	mov r0, #4
	str r0, [r4, #8]
_021252EC:
	ldr r2, [r4, #0x44]
	ldr r3, _02125308 ; =0x020A8440
	mov r0, #0x1e
	mov r1, #0
	bl  FUN_ov1_020dbccc
	ldmfd sp!, {r4, pc}
_02125304: .word 0x0209F5C0
_02125308: .word 0x020A8440
	arm_func_end FUN_ov123_02125264

	arm_func_start FUN_ov123_0212530c
FUN_ov123_0212530c: ; 0x0212530C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0212532C
	cmp r1, #4
	beq _021253AC
	ldmfd sp!, {r4, r5, r6, pc}
_0212532C:
	bl FUN_ov123_02125130
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0212541C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _02125390
	ldr r2, _02125420 ; =0x04001040
	ldr r1, _02125424 ; =0x0000F0FF
	mov r0, #0xf
	strh r1, [r2]
	strh r0, [r2, #4]
	sub r1, r2, #0x40
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldrh r0, [r2, #8]
	bic r0, r0, #0x3f
	orr r0, r0, #0xf
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	bic r0, r0, #0x3f
	orr r0, r0, #0x2f
	strh r0, [r2, #0xa]
_02125390:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_021253AC:
	ldr r4, _02125428 ; =0x020A9440
	mov r6, #0x800
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200546c
	ldr r4, _0212542C ; =0x020A8C40
	mov r1, r6
	mov r0, r4
	bl DC_FlushRange
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200554c
	ldr r4, _02125430 ; =0x020A8440
	mov r1, r6
	mov r0, r4
	bl DC_FlushRange
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200562c
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
_0212541C: .word 0x020A0640
_02125420: .word 0x04001040
_02125424: .word 0x0000F0FF
_02125428: .word 0x020A9440
_0212542C: .word 0x020A8C40
_02125430: .word 0x020A8440
	arm_func_end FUN_ov123_0212530c

	arm_func_start FUN_ov123_02125434
FUN_ov123_02125434: ; 0x02125434
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x38
	mov r2, #0xc
	str r1, [r4, #8]
	str r1, [r4, #0x44]
	bl MI_CpuFill8
	mov r0, r4
	mov r1, #1
	bl FUN_ov123_02124de4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov123_02125434

	arm_func_start FUN_ov123_02125464
FUN_ov123_02125464: ; 0x02125464
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, _02125510 ; =0x020A0640
	mov r9, #0
	mov r10, r0
	ldrb r0, [r1, #0x1a]
	mov r4, #0xc
	ldr r8, _02125514 ; =0x0209A250
	cmp r0, #0
	ldrne r1, _02125518 ; =0x04001000
	mov r7, r9
	ldrne r0, [r1]
	mov r6, r9
	bicne r0, r0, #0xe000
	strne r0, [r1]
	mov r5, r4
	mov r11, r4
	b _021254F0
_021254A8:
	mla r0, r9, r5, r10
	ldr r1, [r0, #0x38]
	cmp r1, #0
	beq _021254C8
	mov r0, r8
	bl FUN_0202e1c0
	mla r0, r9, r4, r10
	str r7, [r0, #0x38]
_021254C8:
	mla r0, r9, r11, r10
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _021254EC
	mov r0, r8
	bl FUN_0202e1c0
	mov r0, #0xc
	mla r0, r9, r0, r10
	str r6, [r0, #0x3c]
_021254EC:
	add r9, r9, #1
_021254F0:
	cmp r9, #1
	blt _021254A8
	add r0, r10, #0x14
	mov r1, #3
	bl  FUN_ov16_020f338c
	mov r0, r10
	bl FUN_ov123_02125070
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125510: .word 0x020A0640
_02125514: .word 0x0209A250
_02125518: .word 0x04001000
	arm_func_end FUN_ov123_02125464

	arm_func_start FUN_ov123_0212551c
FUN_ov123_0212551c: ; 0x0212551C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov123_0212551c

	arm_func_start FUN_ov123_02125530
FUN_ov123_02125530: ; 0x02125530
	bx lr
	arm_func_end FUN_ov123_02125530

	arm_func_start FUN_ov123_02125534
FUN_ov123_02125534: ; 0x02125534
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0212557C ; =0x021255A0
	str r0, [r4, #0x14]
	ldr r0, _02125580 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02125584 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0212557C: .word 0x021255A0
_02125580: .word 0x00009CCD
_02125584: .word 0x0000EA3C
	arm_func_end FUN_ov123_02125534


	.include "/macros/function.inc"
	.include "/include/overlay121.inc"

	.text
	arm_func_start FUN_ov121_02124d00
FUN_ov121_02124d00: ; 0x02124D00
	mov r1, r0
	ldr r0, [r1, #0x28]
	ldr r2, _02124D18 ; =0x021259A8
	ldr r12, _02124D1C ; = FUN_ov1_020dbfdc
	add r1, r1, #0x28
	bx r12
_02124D18: .word 0x021259A8
_02124D1C: .word  FUN_ov1_020dbfdc
	arm_func_end FUN_ov121_02124d00

	arm_func_start FUN_ov121_02124d20
FUN_ov121_02124d20: ; 0x02124D20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	str r1, [r10, #0xc]
	cmp r1, #1
	beq _02124D44
	cmp r1, #2
	beq _02124D6C
	b _02124E30
_02124D44:
	ldr r0, _02124E40 ; =0x02125B7C
	add r1, r10, #0x28
	bl  FUN_ov1_020dbe00
	ldr r0, _02124E44 ; =0x02125B88
	add r1, r10, #0x64
	bl  FUN_ov1_020dbec4
	ldr r0, _02124E48 ; =0x02125B94
	add r1, r10, #0x40
	bl  FUN_ov1_020dbec4
	b _02124E30
_02124D6C:
	mov r5, #1
	mov r9, #0
	add r4, r10, #0x28
	mov r11, r5
	add r7, sp, #8
	add r6, sp, #4
_02124D84:
	ldr r0, _02124E4C ; =0x0209BA20
	mov r1, r9
	bl FUN_0207249c
	mov r0, r9
	bl  FUN_ov1_020dc1f4
	mov r8, r0
	ldr r0, [r10, #0x64]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _02124DD8
	add r2, r9, #6
	mov r0, #0xc
	mla r1, r2, r0, r4
	str r5, [sp]
	ldr r0, _02124E50 ; =0x02125BA0
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	bl  FUN_ov1_020dbefc
_02124DD8:
	mov r0, r9
	bl  FUN_ov1_020dc150
	cmp r0, #0
	addne r8, r9, #0xc9
	ldr r0, [r10, #0x40]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl  FUN_ov16_020f34f0
	cmp r0, #0
	beq _02124E24
	add r2, r9, #3
	mov r0, #0xc
	mla r1, r2, r0, r4
	str r11, [sp]
	ldr r2, [sp, #8]
	ldr r0, _02124E54 ; =0x02125BAC
	ldr r3, [sp, #4]
	bl  FUN_ov1_020dbefc
_02124E24:
	add r9, r9, #1
	cmp r9, #2
	blt _02124D84
_02124E30:
	mov r0, #1
	str r0, [r10, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02124E40: .word 0x02125B7C
_02124E44: .word 0x02125B88
_02124E48: .word 0x02125B94
_02124E4C: .word 0x0209BA20
_02124E50: .word 0x02125BA0
_02124E54: .word 0x02125BAC
	arm_func_end FUN_ov121_02124d20

	arm_func_start FUN_ov121_02124e58
FUN_ov121_02124e58: ; 0x02124E58
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #1
	beq _02124E78
	cmp r1, #2
	beq _02124E84
	ldmfd sp!, {r4, pc}
_02124E78:
	mov r1, #2
	bl FUN_ov121_02124d20
	ldmfd sp!, {r4, pc}
_02124E84:
	bl FUN_ov121_02124d00
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov121_02124e58

	arm_func_start FUN_ov121_02124e94
FUN_ov121_02124e94: ; 0x02124E94
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x28
	mov r4, #0xc
_02124EA4:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x10
	blt _02124EA4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov121_02124e94

	arm_func_start FUN_ov121_02124ebc
FUN_ov121_02124ebc: ; 0x02124EBC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _021250A0 ; =0x0209F5C0
	mov r5, #1
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f5a58
	mov r5, #0
	str r5, [sp, #4]
	ldr r6, [r4, #0x88]
	cmp r6, #0
	beq _02124F2C
	add r1, sp, #4
	str r1, [sp]
	mov r0, r6
	mov r3, r5
	sub r1, r5, #1
	mov r2, #2
	bl  FUN_ov1_020dc0d4
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl FUN_0200546c
_02124F2C:
	mov r8, #0x20
	str r8, [sp, #4]
	bl FUN_02004fac
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r8
	bl DC_FlushRange
	mov r5, #1
	add r7, sp, #4
	str r7, [sp]
	ldr r0, [r4, #0xc4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0xdc]
	mov r2, r5
	mov r3, r5
	bl  FUN_ov1_020dc0d4
	str r8, [sp, #4]
	bl FUN_02004fac
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r8
	bl DC_FlushRange
	str r7, [sp]
	mov r1, r6
	mov r6, #2
	ldr r0, [r4, #0xa0]
	mov r2, #3
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0xac]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0x94]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0xb8]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0x70]
	mov r2, #4
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0x7c]
	mov r2, #5
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	mov r5, #6
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0x4c]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0x58]
	mov r2, r5
	mov r3, r6
	bl  FUN_ov1_020dc0d4
	str r7, [sp]
	mov r1, r0
	ldr r0, [r4, #0x34]
	mov r3, r6
	mov r2, #7
	bl  FUN_ov1_020dc0d4
	bl  FUN_ov16_020f10c8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021250A0: .word 0x0209F5C0
	arm_func_end FUN_ov121_02124ebc

	arm_func_start FUN_ov121_021250a4
FUN_ov121_021250a4: ; 0x021250A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r3, [r4, #0xdc]
	cmp r3, #0
	beq _02125104
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _021252B0 ; =0x0209F5C0
	add r12, r3, r2
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125104:
	ldr r12, [r4, #0xc4]
	cmp r12, #0
	beq _02125158
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [r12, #0xc]
	ldr r0, _021252B0 ; =0x0209F5C0
	add r12, r12, r2
	mov r2, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125158:
	ldr r3, [r4, #0x4c]
	cmp r3, #0
	beq _021251AC
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #6
	str r2, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r3, #0xc]
	mov r2, #0
	add r12, r3, r0
	ldr r0, _021252B0 ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_021251AC:
	ldr r3, [r4, #0x58]
	cmp r3, #0
	beq _02125200
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #6
	str r2, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, [r3, #0xc]
	mov r2, #0
	add r12, r3, r0
	ldr r0, _021252B0 ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125200:
	ldr r3, [r4, #0x70]
	cmp r3, #0
	beq _02125254
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, [r3, #0xc]
	mov r2, #0
	add r12, r3, r0
	ldr r0, _021252B0 ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_02125254:
	ldr r3, [r4, #0x7c]
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r3, #0xc]
	mov r2, #0
	add r4, r3, r0
	ldr r0, _021252B0 ; =0x0209F5C0
	mov r3, r2
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_021252B0: .word 0x0209F5C0
	arm_func_end FUN_ov121_021250a4

	arm_func_start FUN_ov121_021252b4
FUN_ov121_021252b4: ; 0x021252B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r4, [r0, #0xac]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	cmp r9, #0x64
	add r8, r4, r0
	blt _02125304
	mov r4, r9
	ldr r3, _021253A8 ; =0x51EB851F
	mov r0, r4, lsr #0x1f
	smull r1, r9, r3, r4
	add r9, r0, r9, asr #5
	mov r3, #0x64
	smull r0, r1, r3, r9
	sub r9, r4, r0
_02125304:
	mov r0, r2, lsl #0x18
	ldr r4, _021253AC ; =0x66666667
	add r10, r10, #3
	mov r5, r0, asr #0x18
	mov r7, #1
	mov r6, #2
	mov r11, #3
_02125320:
	str r7, [sp]
	mov r0, r10, lsl #0x18
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	smull r0, r2, r4, r9
	mov r1, r9, lsr #0x1f
	add r2, r1, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r9, r1
	mov r0, #0xc
	mul r0, r2, r0
	mov r2, #0
	str r7, [sp, #0x18]
	add r0, r8, r0, lsl #1
	str r0, [sp, #0x1c]
	ldr r0, _021253B0 ; =0x0209F5C0
	mov r1, r7
	mov r3, r2
	bl  FUN_ov16_020f5da0
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	add r9, r0, r9, asr #2
	cmp r9, #0
	sub r10, r10, #3
	bgt _02125320
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021253A8: .word 0x51EB851F
_021253AC: .word 0x66666667
_021253B0: .word 0x0209F5C0
	arm_func_end FUN_ov121_021252b4

	arm_func_start FUN_ov121_021253b4
FUN_ov121_021253b4: ; 0x021253B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r4, [r0, #0xb8]
	mov r10, r1
	cmp r4, #0
	mov r9, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	cmp r9, #0x64
	add r8, r4, r0
	blt _02125404
	mov r4, r9
	ldr r3, _02125498 ; =0x51EB851F
	mov r0, r4, lsr #0x1f
	smull r1, r9, r3, r4
	add r9, r0, r9, asr #5
	mov r3, #0x64
	smull r0, r1, r3, r9
	sub r9, r4, r0
_02125404:
	mov r0, r2, lsl #0x18
	ldr r4, _0212549C ; =0x66666667
	add r10, r10, #1
	mov r5, r0, asr #0x18
	mov r7, #1
	mov r6, #2
	mov r11, #0xa
_02125420:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r1, r0, r11, r2
	str r7, [sp]
	mov r0, r10, lsl #0x18
	sub r2, r9, r1
	add r1, r8, r2, lsl #2
	mov r2, #0
	mov r0, r0, asr #0x18
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _021254A0 ; =0x0209F5C0
	mov r1, r7
	mov r3, r2
	bl  FUN_ov16_020f5da0
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	add r9, r0, r9, asr #2
	cmp r9, #0
	sub r10, r10, #1
	bgt _02125420
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125498: .word 0x51EB851F
_0212549C: .word 0x66666667
_021254A0: .word 0x0209F5C0
	arm_func_end FUN_ov121_021253b4

	arm_func_start FUN_ov121_021254a4
FUN_ov121_021254a4: ; 0x021254A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r0
	ldr r1, [r10, #0xa0]
	cmp r1, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r5, #0
	add r8, r1, r0
	mov r0, #7
	str r5, [sp, #0x20]
	str r0, [sp, #0x24]
	b _0212562C
_021254DC:
	ldr r0, [sp, #0x20]
	mov r6, #0xc
	add r11, r10, r0
	ldr r0, [sp, #0x24]
	mov r9, #0
	sub r0, r0, #1
	mov r1, r0, lsl #0x18
	ldr r0, [sp, #0x24]
	mov r4, #1
	mov r2, r0, lsl #0x18
	mov r0, r1, asr #0x18
	str r0, [sp, #0x28]
	mov r0, r2, asr #0x18
	str r0, [sp, #0x2c]
_02125514:
	add r0, r9, r9, lsl #2
	add r0, r11, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	beq _021255A4
	cmp r0, #2
	beq _021255AC
	mov r5, r4
	ldr r2, [r10, #0x94]
	cmp r2, #0
	beq _021255B0
	mov r0, #0x19
	mul r0, r9, r0
	ldr r1, [r2, #0xc]
	add r1, r2, r1
	add r7, r1, r0, lsl #1
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r2, #0
	str r0, [sp, #8]
	sub r0, r6, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _0212564C ; =0x0209F5C0
	mov r1, r4
	mov r3, r2
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	b _021255B0
_021255A4:
	mov r7, r8
	b _021255B0
_021255AC:
	add r7, r8, #0x12
_021255B0:
	cmp r5, #0
	bne _02125614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp, #8]
	mov r0, r6, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0212564C ; =0x0209F5C0
	mov r1, #1
	mov r3, r2
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r9, r9, #1
	add r6, r6, #5
	cmp r9, #2
	blt _02125514
_02125614:
	ldr r0, [sp, #0x24]
	add r0, r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
_0212562C:
	ldr r0, [sp, #0x20]
	cmp r0, #5
	addge sp, sp, #0x30
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	beq _021254DC
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212564C: .word 0x0209F5C0
	arm_func_end FUN_ov121_021254a4

	arm_func_start FUN_ov121_02125650
FUN_ov121_02125650: ; 0x02125650
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r6, #1
	ldr r0, _0212571C ; =0x0209F5C0
	mov r1, r6
	mov r2, #2
	mov r3, #0
	bl  FUN_ov16_020f5f64
	mov r4, #3
	ldr r3, [r8, #0x10]
	mov r0, r8
	mov r2, r4
	mov r1, #7
	bl FUN_ov121_021252b4
	ldr r3, [r8, #0x14]
	mov r0, r8
	mov r2, r4
	mov r1, #0x13
	bl FUN_ov121_021252b4
	ldr r0, [r8, #0x18]
	mov r5, #8
	cmp r0, #5
	subge r6, r0, #4
	mov r7, #0
	mov r4, #9
_021256B8:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov121_021253b4
	add r7, r7, #1
	cmp r7, #5
	add r6, r6, #1
	add r5, r5, #5
	blt _021256B8
	mov r0, r8
	bl FUN_ov121_021254a4
	ldr r0, [r8, #0x34]
	mov r1, #0
	str r0, [sp]
	mov r0, #2
	mov r3, r1
	str r0, [sp, #4]
	mov r12, #7
	mov r0, #0x1e
	mov r2, #1
	str r12, [sp, #8]
	bl  FUN_ov1_020dbd38
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212571C: .word 0x0209F5C0
	arm_func_end FUN_ov121_02125650

	arm_func_start FUN_ov121_02125720
FUN_ov121_02125720: ; 0x02125720
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r1, _02125828 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	add r1, sp, #0
	bl  FUN_ov126_02136e2c
	ldr r0, [sp, #8]
	cmp r0, #5
	ldrge r2, [sp]
	ldrge r1, [sp, #4]
	cmpge r2, r1
	bne _02125760
	ldr r1, [sp, #0x10]
	cmp r1, #0
	addne r0, r0, #1
_02125760:
	ldr r2, [sp]
	ldr r1, [r4, #0x18]
	str r2, [r4, #0x10]
	ldr r2, [sp, #4]
	cmp r1, r0
	strne r0, [r4, #0x18]
	str r2, [r4, #0x14]
	cmpne r0, #5
	ble _021257B4
	mov r3, #1
_02125788:
	add r2, r4, r3
	ldrb r1, [r2, #0x1c]
	add r3, r3, #1
	cmp r3, #5
	strb r1, [r2, #0x1b]
	ldrb r1, [r2, #0x21]
	strb r1, [r2, #0x20]
	blt _02125788
	mov r1, #0
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x25]
_021257B4:
	ldr r1, [r4, #0x18]
	cmp r1, #5
	blt _021257F0
	ldr r1, [sp, #8]
	cmp r0, r1
	ldreq r0, [sp, #0xc]
	streqb r0, [r4, #0x20]
	ldreq r0, [sp, #0x10]
	streqb r0, [r4, #0x25]
	ldrne r0, [sp, #0xc]
	strneb r0, [r4, #0x1f]
	ldrne r0, [sp, #0x10]
	add sp, sp, #0x18
	strneb r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_021257F0:
	cmp r1, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r4, pc}
	sub r0, r1, #1
	ldr r1, [sp, #0xc]
	add r0, r4, r0
	strb r1, [r0, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0x10]
	sub r0, r0, #1
	add r0, r4, r0
	strb r1, [r0, #0x21]
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_02125828: .word 0x02099EF0
	arm_func_end FUN_ov121_02125720

	arm_func_start FUN_ov121_0212582c
FUN_ov121_0212582c: ; 0x0212582C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	mov r1, r5
	add r0, r6, #0x28
	mov r2, #0xc0
	str r5, [r6, #8]
	bl MI_CpuFill8
	mov r1, r5
	add r0, r6, #0x10
	mov r2, #8
	bl MI_CpuFill8
	mov r1, r5
	add r0, r6, #0x1c
	mov r2, #0xa
	bl MI_CpuFill8
	mov r4, #1
	ldr r0, _02125890 ; =0x0209F5C0
	mov r1, r4
	str r5, [r6, #0x18]
	bl  FUN_ov16_020f5a58
	mov r0, r6
	mov r1, r4
	bl FUN_ov121_02124d20
	ldmfd sp!, {r4, r5, r6, pc}
_02125890: .word 0x0209F5C0
	arm_func_end FUN_ov121_0212582c

	arm_func_start FUN_ov121_02125894
FUN_ov121_02125894: ; 0x02125894
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _021258BC
	cmp r1, #3
	beq _021258DC
	cmp r1, #4
	beq _021258F8
	ldmfd sp!, {r4, pc}
_021258BC:
	add r0, r4, #0x28
	mov r1, #0x10
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov121_02124e58
	ldmfd sp!, {r4, pc}
_021258DC:
	mov r1, #4
	str r1, [r4, #8]
	bl FUN_ov121_021250a4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_021258F8:
	mov r0, r4
	bl FUN_ov121_02125720
	mov r0, r4
	bl FUN_ov121_02125650
	ldr r0, _02125918 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_02125918: .word 0x0209F5C0
	arm_func_end FUN_ov121_02125894

	arm_func_start FUN_ov121_0212591c
FUN_ov121_0212591c: ; 0x0212591C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _0212593C
	cmp r1, #4
	beq _0212594C
	ldmfd sp!, {r4, pc}
_0212593C:
	bl FUN_ov121_02124ebc
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0212594C:
	ldr r0, _0212595C ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_0212595C: .word 0x0209F5C0
	arm_func_end FUN_ov121_0212591c

	arm_func_start FUN_ov121_02125960
FUN_ov121_02125960: ; 0x02125960
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x28
	mov r1, #0x10
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov121_02124e94
	ldr r0, _0212598C ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f5af0
	ldmfd sp!, {r4, pc}
_0212598C: .word 0x0209F5C0
	arm_func_end FUN_ov121_02125960

	arm_func_start FUN_ov121_02125990
FUN_ov121_02125990: ; 0x02125990
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov121_02125990

	arm_func_start FUN_ov121_021259a4
FUN_ov121_021259a4: ; 0x021259A4
	bx lr
	arm_func_end FUN_ov121_021259a4
_021259A8:
	.byte 0xF8, 0x5A, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0xB8, 0x5A, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0xC8, 0x5A, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xD8, 0x5A, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x78, 0x5A, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x88, 0x5A, 0x12, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xA8, 0x5A, 0x12, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0xE8, 0x5A, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x98, 0x5A, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov121_021259f8
FUN_ov121_021259f8: ; 0x021259F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125A40 ; =0x02125A60
	str r0, [r4, #0x10]
	ldr r0, _02125A44 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02125A48 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02125A40: .word 0x02125A60
_02125A44: .word 0x00009CCD
_02125A48: .word 0x0000EA3C
	arm_func_end FUN_ov121_021259f8


	.include "/macros/function.inc"
	.include "/include/overlay116.inc"

	.text
	arm_func_start FUN_ov116_02124d00
FUN_ov116_02124d00: ; 0x02124D00
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r3, #1
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x1c
	mov r2, #0xa8
	strb r3, [r4, #0x19]
	strb r3, [r4, #0x1a]
	bl MI_CpuFill8
	mvn r1, #0
	mov r0, #0x1c
_02124D30:
	mla r2, r5, r0, r4
	strh r1, [r2, #0x1c]
	add r5, r5, #1
	strh r1, [r2, #0x70]
	cmp r5, #3
	blt _02124D30
	ldr r0, _02124E1C ; =0x02099EF0
	ldr r0, [r0]
	bl  FUN_ov126_021375d4
	movs r5, r0
	beq _02124D88
	ldrsb r0, [r5, #0xc]
	bl  FUN_ov16_020f07f4
	cmp r0, #0
	ldreqsb r0, [r5, #0xc]
	streqh r0, [r4, #0x1c]
	ldreqsb r0, [r5, #0xd]
	streqh r0, [r4, #0x70]
	ldrnesb r0, [r5, #0xd]
	strneh r0, [r4, #0x1c]
	ldrnesb r0, [r5, #0xc]
	strneh r0, [r4, #0x70]
_02124D88:
	ldrsh r0, [r4, #0x1c]
	mvn r5, #0
	mov r6, r5
	bl  FUN_ov16_020efa80
	movs r1, r0
	beq _02124DB4
	ldr r0, _02124E20 ; =0x0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r5, r0
_02124DB4:
	ldrsh r0, [r4, #0x70]
	bl  FUN_ov16_020efa80
	movs r1, r0
	beq _02124DD8
	ldr r0, _02124E20 ; =0x0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r6, r0
_02124DD8:
	ldr r0, _02124E1C ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	bl  FUN_ov132_02141568
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x8b]
	ldr r0, _02124E1C ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	bl  FUN_ov132_02141568
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x37]
	ldmfd sp!, {r4, r5, r6, pc}
_02124E1C: .word unk_02099EF0
_02124E20: .word unk_0209BA20
	arm_func_end FUN_ov116_02124d00

	.data
	.global ov116_02124EA0
ov116_02124EA0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov116_02124EB8
ov116_02124EB8:
	.word 0
	.word 0
	.word FUN_ov116_02124e38
	.word FUN_ov116_02124e24
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	
	.word FUN_ov1_020db194
	.word FUN_0202b208
	.word FUN_ov1_020daf84
	.word FUN_ov1_020db05c

	.word FUN_ov1_020db1e8
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

	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.word FUN_ov116_02124d00

	.word 0
	.word 0
	.word 0
	.word 0

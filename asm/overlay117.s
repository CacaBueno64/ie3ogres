
	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	.org 0x02124d00

	arm_func_start FUN_ov117_02124d00
FUN_ov117_02124d00: ; 0x02124D00
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r3, #1
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x1c
	mov r2, #0xa8
	strb r3, [r5, #0x19]
	strb r3, [r5, #0x1a]
	bl MemWrite
	mvn r1, #0
	mov r0, #0x1c
_02124D30:
	mla r2, r4, r0, r5
	strh r1, [r2, #0x1c]
	add r4, r4, #1
	strh r1, [r2, #0x70]
	cmp r4, #3
	blt _02124D30
	ldr r4, _02124E80 ; =0x02099EF0
	ldr r0, [r4]
	bl  FUN_ov126_0213777c
	ldrsb r0, [r0, #0x20]
	cmn r0, #1
	ldr r0, [r4]
	bne _02124D70
	mov r1, #1
	bl  FUN_ov126_021377f8
	b _02124D74
_02124D70:
	bl  FUN_ov126_0213777c
_02124D74:
	movs r4, r0
	beq _02124DEC
	ldrb r0, [r4, #0x2e]
	cmp r0, #1
	bne _02124DB4
	ldrsb r0, [r4, #0x24]
	bl  FUN_ov16_020f07f4
	cmp r0, #0
	ldreqsb r0, [r4, #0x24]
	streqh r0, [r5, #0x1c]
	ldreqsb r0, [r4, #0x20]
	streqh r0, [r5, #0x70]
	ldrnesb r0, [r4, #0x20]
	strneh r0, [r5, #0x1c]
	ldrnesb r0, [r4, #0x24]
	strneh r0, [r5, #0x70]
_02124DB4:
	ldrb r0, [r4, #0x2f]
	cmp r0, #1
	bne _02124DEC
	ldrsb r0, [r4, #0x24]
	bl  FUN_ov16_020f07f4
	cmp r0, #0
	ldreqsb r0, [r4, #0x20]
	streqh r0, [r5, #0x1c]
	ldreqsb r0, [r4, #0x28]
	streqh r0, [r5, #0x70]
	ldrnesb r0, [r4, #0x28]
	strneh r0, [r5, #0x1c]
	ldrnesb r0, [r4, #0x20]
	strneh r0, [r5, #0x70]
_02124DEC:
	ldrsh r0, [r5, #0x1c]
	mvn r4, #0
	mov r6, r4
	bl  FUN_ov16_020efa80
	movs r1, r0
	beq _02124E18
	ldr r0, _02124E84 ; =0x0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r4, r0
_02124E18:
	ldrsh r0, [r5, #0x70]
	bl  FUN_ov16_020efa80
	movs r1, r0
	beq _02124E3C
	ldr r0, _02124E84 ; =0x0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r6, r0
_02124E3C:
	ldr r0, _02124E80 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	mov r2, r6
	bl  FUN_ov132_02141568
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r5, #0x8b]
	ldr r0, _02124E80 ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	mov r2, r4
	bl  FUN_ov132_02141568
	cmp r0, #1
	moveq r0, #1
	streqb r0, [r5, #0x37]
	ldmfd sp!, {r4, r5, r6, pc}
_02124E80: .word 0x02099EF0
_02124E84: .word 0x0209BA20
	arm_func_end FUN_ov117_02124d00

	arm_func_start FUN_ov117_02124e88
FUN_ov117_02124e88: ; 0x02124E88
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov117_02124e88

	arm_func_start FUN_ov117_02124e9c
FUN_ov117_02124e9c: ; 0x02124E9C
	bx lr
	arm_func_end FUN_ov117_02124e9c

	arm_func_start FUN_ov117_02124ea0
FUN_ov117_02124ea0: ; 0x02124EA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02124EE8 ; =0x02124F00
	str r0, [r4, #0x14]
	ldr r0, _02124EEC ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02124EF0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02124EE8: .word 0x02124F00
_02124EEC: .word 0x00009CCD
_02124EF0: .word 0x0000EA3C
	arm_func_end FUN_ov117_02124ea0
	; 0x02124EF4

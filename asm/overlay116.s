
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
	bl MemWrite
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
	bl FUN_021375D4
	movs r5, r0
	beq _02124D88
	ldrsb r0, [r5, #0xc]
	bl FUN_020F07F4
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
	bl FUN_020EFA80
	movs r1, r0
	beq _02124DB4
	ldr r0, _02124E20 ; =0x0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r5, r0
_02124DB4:
	ldrsh r0, [r4, #0x70]
	bl FUN_020EFA80
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
	bl FUN_02141568
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x8b]
	ldr r0, _02124E1C ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	bl FUN_02141568
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x37]
	ldmfd sp!, {r4, r5, r6, pc}
_02124E1C: .word 0x02099EF0
_02124E20: .word 0x0209BA20
	arm_func_end FUN_ov116_02124d00

	arm_func_start FUN_ov116_02124e24
FUN_ov116_02124e24: ; 0x02124E24
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov116_02124e24

	arm_func_start FUN_ov116_02124e38
FUN_ov116_02124e38: ; 0x02124E38
	bx lr
	arm_func_end FUN_ov116_02124e38

	arm_func_start FUN_ov116_02124e3c
FUN_ov116_02124e3c: ; 0x02124E3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02124E84 ; =0x02124EA0
	str r0, [r4, #0x14]
	ldr r0, _02124E88 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02124E8C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02124E84: .word 0x02124EA0
_02124E88: .word 0x00009CCD
_02124E8C: .word 0x0000EA3C
	arm_func_end FUN_ov116_02124e3c
	; 0x02124E90
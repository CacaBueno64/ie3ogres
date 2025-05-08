
	arm_func_start FUN_ov93_02124d00
FUN_ov93_02124d00: ; 0x02124D00
	mov r0, #1
	bx lr
	arm_func_end FUN_ov93_02124d00

	arm_func_start FUN_ov93_02124d08
FUN_ov93_02124d08: ; 0x02124D08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x114
	add r7, sp, #0x14
	mov r5, r0
	mov r8, r2
	mov r6, #0
	mov r4, r1
	mov r0, r7
	mov r1, r6
	mov r2, #0x100
	bl MemWrite
	ldr r1, _02124D88 ; =0x021253AC
	mov r0, r7
	mov r2, r8
	bl FUN_02023c40
	ldr r0, _02124D8C ; =0x02099F38
	mov r2, r7
	ldr r0, [r0]
	mov r1, #5
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r3, #1
	str r6, [sp, #0x10]
	bl FUN_02058800
	mov r1, #0x2c
	mla r1, r4, r1, r5
	str r0, [r1, #0x14]
	strb r6, [r5, #0xc0]
	add sp, sp, #0x114
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02124D88: .word 0x021253AC
_02124D8C: .word 0x02099F38
	arm_func_end FUN_ov93_02124d08

	arm_func_start FUN_ov93_02124d90
FUN_ov93_02124d90: ; 0x02124D90
	mov r2, #0x2c
	mla r2, r1, r2, r0
	ldr r0, _02124DAC ; =0x02099F38
	ldr r1, [r2, #0x14]
	ldr r0, [r0]
	ldr r12, _02124DB0 ; =FUN_02058ee0
	bx r12
_02124DAC: .word 0x02099F38
_02124DB0: .word FUN_02058ee0
	arm_func_end FUN_ov93_02124d90

	arm_func_start FUN_ov93_02124db4
FUN_ov93_02124db4: ; 0x02124DB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02124DF0 ; =0x02099F38
	mov r5, r0
	ldr r0, [r1]
	ldr r1, [r5, #0xcc]
	bl FUN_021128C4
	mov r4, #0
	b _02124DE4
_02124DD4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov93_02124d90
	add r4, r4, #1
_02124DE4:
	cmp r4, #4
	blt _02124DD4
	ldmfd sp!, {r3, r4, r5, pc}
_02124DF0: .word 0x02099F38
	arm_func_end FUN_ov93_02124db4

	arm_func_start FUN_ov93_02124df4
FUN_ov93_02124df4: ; 0x02124DF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #0x2c
	mla r1, r4, r0, r5
	ldr r0, _02124E30 ; =0x02099F38
	mov r2, #0
	ldr r1, [r1, #0x14]
	ldr r0, [r0]
	mov r3, r2
	bl FUN_02059038
	mov r0, r5
	mov r1, r4
	bl FUN_ov93_02124e84
	ldmfd sp!, {r3, r4, r5, pc}
_02124E30: .word 0x02099F38
	arm_func_end FUN_ov93_02124df4

	arm_func_start FUN_ov93_02124e34
FUN_ov93_02124e34: ; 0x02124E34
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x2c
	mla r0, r1, r2, r0
	ldr r5, [r0, #0x14]
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _02124E80 ; =0x02099F38
	mov r1, r5
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02059004
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02124E80: .word 0x02099F38
	arm_func_end FUN_ov93_02124e34

	arm_func_start FUN_ov93_02124e84
FUN_ov93_02124e84: ; 0x02124E84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x2c
	mla r0, r1, r0, r7
	ldr r4, _02124F18 ; =0x02099F38
	ldr r3, [r0, #0x14]
	mov r6, #1
	ldr r0, [r4]
	ldr r1, [r7, #0xcc]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_021137DC
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0xcc]
	mov r2, r6
	mov r3, r5
	bl FUN_0211401C
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0xcc]
	mov r2, r6
	mov r3, r5
	bl FUN_02113B78
	mov r3, r5
	ldr r0, [r4]
	ldr r1, [r7, #0xcc]
	mov r2, r6
	bl FUN_021139BC
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0xcc]
	mov r2, r6
	mov r3, #2
	bl FUN_02113EC0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124F18: .word 0x02099F38
	arm_func_end FUN_ov93_02124e84

	arm_func_start FUN_ov93_02124f1c
FUN_ov93_02124f1c: ; 0x02124F1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #8
	mov r2, #0xb0
	bl MemWrite
	ldr r0, _02124F84 ; =0x021253E0
	str r4, [r5, #0xc4]
	str r4, [r5, #0xc8]
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	mov r0, #0xc000
	bl FUN_0201e08c
	str r0, [r5, #0xbc]
	mov r0, #0x600
	bl FUN_0201e08c
	str r0, [r5, #0xb8]
_02124F68:
	ldr r1, [r5, #0xb8]
	mov r0, r4, lsl #1
	strh r4, [r1, r0]
	add r4, r4, #1
	cmp r4, #0x300
	blt _02124F68
	ldmfd sp!, {r3, r4, r5, pc}
_02124F84: .word 0x021253E0
	arm_func_end FUN_ov93_02124f1c

	arm_func_start FUN_ov93_02124f88
FUN_ov93_02124f88: ; 0x02124F88
	mov r0, #1
	bx lr
	arm_func_end FUN_ov93_02124f88

	arm_func_start FUN_ov93_02124f90
FUN_ov93_02124f90: ; 0x02124F90
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0xc8]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02124FA8: ; jump table
	b _02124FBC ; case 0
	b _02124FE4 ; case 1
	b _02125030 ; case 2
	b _0212504C ; case 3
	b _02125078 ; case 4
_02124FBC:
	ldr r0, [r4, #4]
	bl FUN_02042054
	cmp r0, #0x6a
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	bl FUN_02041fec
	cmp r0, #0x6a
	moveq r0, #1
	streq r0, [r4, #0xc8]
	ldmfd sp!, {r3, r4, r5, pc}
_02124FE4:
	ldr r0, [r4, #4]
	bl FUN_02042054
	cmp r0, #0x6a
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	bl FUN_02041fec
	cmp r0, #0x6a
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r5, _02125088 ; =0x02099F38
	ldr r0, [r5]
	bl FUN_021123B4
	mov r1, #1
	ldr r0, [r5]
	mov r2, r1
	bl FUN_02112724
	mov r1, #2
	str r0, [r4, #0xcc]
	str r1, [r4, #0xc8]
	ldmfd sp!, {r3, r4, r5, pc}
_02125030:
	bl FUN_ov93_021250d4
	ldr r0, _0212508C ; =0x021253E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #3
	strne r0, [r4, #0xc8]
	ldmfd sp!, {r3, r4, r5, pc}
_0212504C:
	ldr r1, [r4, #0xc4]
	sub r1, r1, #1
	str r1, [r4, #0xc4]
	cmp r1, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r4, #0xc4]
	bl FUN_ov93_02125094
	mov r0, #4
	str r0, [r4, #0xc8]
	ldmfd sp!, {r3, r4, r5, pc}
_02125078:
	ldr r0, _0212508C ; =0x021253E0
	mov r1, #1
	str r1, [r0, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02125088: .word 0x02099F38
_0212508C: .word 0x021253E0
	arm_func_end FUN_ov93_02124f90

	arm_func_start FUN_ov93_02125090
FUN_ov93_02125090: ; 0x02125090
	bx lr
	arm_func_end FUN_ov93_02125090

	arm_func_start FUN_ov93_02125094
FUN_ov93_02125094: ; 0x02125094
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov93_02124db4
	ldr r0, _021250CC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_021123C4
	ldr r0, [r5, #0xbc]
	bl thunk_FUN_0201e078
	mov r4, #0
	ldr r0, [r5, #0xb8]
	str r4, [r5, #0xbc]
	bl thunk_FUN_0201e078
	str r4, [r5, #0xb8]
	ldmfd sp!, {r3, r4, r5, pc}
_021250CC: .word 0x02099F38
	arm_func_end FUN_ov93_02125094

	arm_func_start FUN_ov93_021250d0
FUN_ov93_021250d0: ; 0x021250D0
	bx lr
	arm_func_end FUN_ov93_021250d0

	arm_func_start FUN_ov93_021250d4
FUN_ov93_021250d4: ; 0x021250D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	mov r9, r0
	mov r4, #0x2c
	mov r2, r6
_021250E8:
	mla r1, r2, r4, r9
	ldr r0, [r1, #0x18]
	add r2, r2, #1
	cmp r0, #5
	streq r6, [r1, #0x18]
	cmp r2, #4
	blt _021250E8
	ldr r5, _0212529C ; =0x021253E0
	ldr r0, [r5]
	cmp r0, #0
	beq _0212517C
	mov r8, #0
	mov r11, #5
	mov r10, #1
_02125120:
	mla r7, r8, r4, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bne _02125154
	ldr r2, [r5]
	cmp r2, #0
	beq _02125154
	mov r0, r9
	mov r1, r8
	bl FUN_ov93_02124d08
	str r10, [r7, #0x18]
	str r6, [r5]
	b _02125170
_02125154:
	sub r0, r0, #1
	cmp r0, #2
	bhi _02125170
	mov r0, r9
	mov r1, r8
	bl FUN_ov93_02124d90
	str r11, [r7, #0x18]
_02125170:
	add r8, r8, #1
	cmp r8, #4
	blt _02125120
_0212517C:
	mvn r4, #0
	mov r5, r4
	mov r6, r4
	mov r8, #0
	mov r10, #2
	mov r11, #3
_02125194:
	mov r0, #0x2c
	mla r7, r8, r0, r9
	ldr r0, [r7, #0x18]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021251F4
_021251AC: ; jump table
	b _021251F4 ; case 0
	b _021251C0 ; case 1
	b _021251DC ; case 2
	b _021251E8 ; case 3
	b _021251F0 ; case 4
_021251C0:
	mov r0, r9
	mov r1, r8
	mov r4, r8
	bl FUN_ov93_02124e34
	cmp r0, #0
	beq _021251F4
	str r10, [r7, #0x18]
_021251DC:
	mov r4, r8
	str r11, [r7, #0x18]
	b _021251F4
_021251E8:
	mov r5, r8
	b _021251F4
_021251F0:
	mov r6, r8
_021251F4:
	add r8, r8, #1
	cmp r8, #4
	mov r3, #0
	blt _02125194
	cmp r6, #0
	mov r7, #0x2c
	blt _0212526C
	cmp r4, #0
	bge _02125220
	cmp r5, #0
	blt _02125254
_02125220:
	ldr r0, [r9, #0xc4]
	sub r0, r0, #1
	str r0, [r9, #0xc4]
	cmp r0, #0
	bgt _0212526C
	mla r2, r6, r7, r9
	str r3, [r9, #0xc4]
	mov r3, #5
	mov r0, r9
	mov r1, r6
	str r3, [r2, #0x18]
	bl FUN_ov93_02124d90
	b _0212526C
_02125254:
	ldr r0, [r9, #0xc4]
	add r0, r0, #1
	str r0, [r9, #0xc4]
	cmp r0, #8
	movge r0, #8
	strge r0, [r9, #0xc4]
_0212526C:
	ldr r0, [r9, #0xc4]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r5
	bl FUN_ov93_02124df4
	mla r0, r5, r7, r9
	mov r1, #4
	str r1, [r0, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212529C: .word 0x021253E0
	arm_func_end FUN_ov93_021250d4

	arm_func_start FUN_ov93_021252a0
FUN_ov93_021252a0: ; 0x021252A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov93_021252a0

	arm_func_start FUN_ov93_021252b4
FUN_ov93_021252b4: ; 0x021252B4
	bx lr
	arm_func_end FUN_ov93_021252b4

	arm_func_start FUN_ov93_021252b8
FUN_ov93_021252b8: ; 0x021252B8
	bx lr
	arm_func_end FUN_ov93_021252b8

	arm_func_start FUN_ov93_021252bc
FUN_ov93_021252bc: ; 0x021252BC
	bx lr
	arm_func_end FUN_ov93_021252bc

	arm_func_start FUN_ov93_021252c0
FUN_ov93_021252c0: ; 0x021252C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125308 ; =0x02125320
	str r0, [r4]
	ldr r0, _0212530C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02125310 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125308: .word 0x02125320
_0212530C: .word 0x00009CCD
_02125310: .word 0x0000EA3C
	arm_func_end FUN_ov93_021252c0
	; 0x02125314

	.include "/macros/function.inc"
	.include "/include/2dadventurelogic.inc"

    .text
	arm_func_start FUN_0205446c
FUN_0205446c: ; 0x0205446C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r2, _02054498 ; =0x000004C8
	mov r1, r6
	mov r0, #0
	bl MIi_CpuClearFast
	str r5, [r6, #0x490]
	str r4, [r6, #0x494]
	ldmfd sp!, {r4, r5, r6, pc}
_02054498: .word 0x000004C8
	arm_func_end FUN_0205446c

	arm_func_start FUN_0205449c
FUN_0205449c: ; 0x0205449C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r5, [r4, #0x48c]
	mov r0, #0xc
	mul r0, r5, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	add r1, r4, #0xc
	str r7, [r4]
	str r6, [r4, #4]
	str r5, [r4, #8]
	add r2, r1, r0
	ldmia r2, {r0, r1}
	mov r2, r7
	mov r3, r6
	bl FUN_02053604
	ldrb r1, [sp, #0x20]
	cmp r1, #0
	bne _020544FC
	ldr r1, [r4, #0x490]
	cmp r0, r1
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020544FC:
	ldr r1, [r4, #0x48c]
	ldr r0, _020545AC ; =0x2AAAAAAB
	add r8, r1, #1
	smull r2, r9, r0, r8
	mov r1, r8, lsr #0x1f
	add r9, r1, r9, asr #4
	mov r3, #0x60
	smull r1, r2, r3, r9
	sub r9, r8, r1
	mov r1, #0xc
	mla r2, r9, r1, r4
	str r9, [r4, #0x48c]
	str r7, [r2, #0xc]
	ldr r7, [r4, #0x48c]
	mov lr, #0xc
	mla r3, r7, r1, r4
	str r6, [r3, #0x10]
	ldr r3, [r4, #0x48c]
	mov r2, #0
	mla r1, r3, r1, r4
	str r5, [r1, #0x14]
	ldr r1, [r4, #0x48c]
	mov r12, #0x60
	add r3, r1, #0x60
	mov r8, lr
_02054560:
	ldr r6, [r4, #0x494]
	mla r1, r2, r8, r4
	sub r3, r3, r6
	mov r6, r3, lsr #0x1f
	smull r7, r9, r0, r3
	add r9, r6, r9, asr #4
	smull r6, r7, r12, r9
	sub r9, r3, r6
	mla r7, r9, lr, r4
	ldr r6, [r7, #0xc]
	add r2, r2, #1
	str r6, [r1, #0x498]
	ldr r6, [r7, #0x10]
	cmp r2, #4
	str r6, [r1, #0x49c]
	str r5, [r1, #0x4a0]
	blt _02054560
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020545AC: .word 0x2AAAAAAB
	arm_func_end FUN_0205449c

	arm_func_start FUN_020545b0
FUN_020545b0: ; 0x020545B0
	stmfd sp!, {r4, lr}
	stmia r0, {r1, r2, r3}
	mov r4, #0
	mov r12, #0xc
_020545C0:
	mla lr, r4, r12, r0
	str r1, [lr, #0xc]
	str r2, [lr, #0x10]
	add r4, r4, #1
	str r3, [lr, #0x14]
	cmp r4, #0x60
	blt _020545C0
	mov r4, #0
	str r4, [r0, #0x48c]
	mov r12, #0xc
_020545E8:
	mla lr, r4, r12, r0
	str r1, [lr, #0x498]
	str r2, [lr, #0x49c]
	add r4, r4, #1
	str r3, [lr, #0x4a0]
	cmp r4, #4
	blt _020545E8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020545b0

	arm_func_start FUN_02054608
FUN_02054608: ; 0x02054608
	ldr r12, _0205461C ; =MIi_CpuClearFast
	mov r1, r0
	mov r0, #0
	mov r2, #0x18
	bx r12
_0205461C: .word MIi_CpuClearFast
	arm_func_end FUN_02054608

	arm_func_start FUN_02054620
FUN_02054620: ; 0x02054620
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	bl FUN_020547bc
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_02054834
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmn r6, #1
	beq _02054678
	cmp r7, #0
	blt _02054670
	ldr r2, [r5, r7, lsl #2]
	mov r0, r5
	mov r1, r4
	bl FUN_02054780
_02054670:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02054678:
	ldr r0, [r5, #0x10]
	cmp r0, #4
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	blt _020546D4
	cmp r7, #4
	bge _02054708
_02054698:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	bne _020546BC
	str r4, [r5, r7, lsl #2]
	ldr r1, [r5, #0x10]
	mov r0, #1
	add r1, r1, #1
	str r1, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020546BC:
	str r4, [r5, r7, lsl #2]
	add r7, r7, #1
	mov r4, r0
	cmp r7, #4
	blt _02054698
	b _02054708
_020546D4:
	mov r1, #0
_020546D8:
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #0
	bne _020546FC
	str r4, [r5, r1, lsl #2]
	ldr r1, [r5, #0x10]
	mov r0, #1
	add r1, r1, #1
	str r1, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020546FC:
	add r1, r1, #1
	cmp r1, #4
	blt _020546D8
_02054708:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02054620

	arm_func_start FUN_02054710
FUN_02054710: ; 0x02054710
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020547bc
	cmn r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	cmp r1, #0
	movle r0, #0
	ldmlefd sp!, {r4, pc}
	sub r1, r1, #1
	cmp r0, r1
	bge _02054764
_02054744:
	add r1, r4, r0, lsl #2
	ldr r1, [r1, #4]
	str r1, [r4, r0, lsl #2]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	sub r1, r1, #1
	cmp r0, r1
	blt _02054744
_02054764:
	mov r0, #0
	str r0, [r4, r1, lsl #2]
	ldr r1, [r4, #0x10]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r4, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054710

	arm_func_start FUN_02054780
FUN_02054780: ; 0x02054780
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r2
	mov r6, r1
	bl FUN_020547bc
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_020547bc
	mvn r1, #0
	cmp r4, r1
	cmpne r0, r1
	strne r5, [r7, r4, lsl #2]
	strne r6, [r7, r0, lsl #2]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02054780

	arm_func_start FUN_020547bc
FUN_020547bc: ; 0x020547BC
	ldr r2, [r0, #0x10]
	mov r3, #0
	cmp r2, #0
	ble _020547EC
_020547CC:
	ldr r2, [r0, r3, lsl #2]
	cmp r1, r2
	moveq r0, r3
	bxeq lr
	ldr r2, [r0, #0x10]
	add r3, r3, #1
	cmp r3, r2
	blt _020547CC
_020547EC:
	mvn r0, #0
	bx lr
	arm_func_end FUN_020547bc

	arm_func_start FUN_020547f4
FUN_020547f4: ; 0x020547F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020547bc
	cmp r0, #0
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x14]
	cmp r0, #0
	movgt r0, #0
	strle r4, [r5, #0x14]
	movle r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020547f4

	arm_func_start FUN_02054828
FUN_02054828: ; 0x02054828
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_02054828

	arm_func_start FUN_02054834
FUN_02054834: ; 0x02054834
	cmp r1, #0
	ble _0205484C
	ldr r0, [r0, #0x14]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
_0205484C:
	mov r0, #0
	bx lr
	arm_func_end FUN_02054834

	arm_func_start FUN_02054854
FUN_02054854: ; 0x02054854
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_020547bc
	mvn r4, #0
	cmp r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_02054834
	cmp r0, #0
	ldrne r4, [r6, #0x10]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02054854

	arm_func_start FUN_0205488c
FUN_0205488c: ; 0x0205488C
	cmp r1, #0
	ble _0205489C
	cmp r2, #0
	bge _020548A4
_0205489C:
	mvn r0, #0
	bx lr
_020548A4:
	and r0, r2, #0xff
	orr r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_0205488c

	arm_func_start FUN_020548b0
FUN_020548b0: ; 0x020548B0
	cmp r1, #0
	cmnne r1, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_020548b0

	arm_func_start FUN_020548c4
FUN_020548c4: ; 0x020548C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r1
	mov r8, r0
	mov r1, r5
	mov r6, r2
	bl FUN_02054938
	mov r4, r0
	mov r0, r8
	ldr r2, [r0]
	mov r1, r7
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_02054904:
	ldr r0, [r4, #0x5c]
	cmp r7, r0
	bne _02054920
	cmp r6, #0
	strne r5, [r6]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02054920:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02054904
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020548c4

	arm_func_start FUN_02054938
FUN_02054938: ; 0x02054938
	cmp r1, #0x18
	movhs r0, #0
	addlo r2, r0, #0x40
	movlo r0, #0xd4
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_02054938

	arm_func_start FUN_02054950
FUN_02054950: ; 0x02054950
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	bl FUN_02054938
	mov r4, r0
_02054968:
	mov r0, r4
	bl FUN_02054404
	cmp r0, #0
	beq _02054988
	cmp r6, #0
	strne r5, [r6]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02054988:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02054968
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02054950

	arm_func_start FUN_020549a0
FUN_020549a0: ; 0x020549A0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	beq _020549C0
	mov r0, r1
	bl FUN_02054404
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_020549C0:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020549a0

	arm_func_start FUN_020549c8
FUN_020549c8: ; 0x020549C8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	beq _020549F0
	ldr r1, [r1, #0x5c]
	add r0, r0, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldmfd sp!, {r3, pc}
_020549F0:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020549c8

	arm_func_start FUN_020549f8
FUN_020549f8: ; 0x020549F8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r1, #0x5c]
	add r0, r0, #0x28
	bl FUN_02054834
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020549f8

	arm_func_start FUN_02054a18
FUN_02054a18: ; 0x02054A18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020549c8
	cmp r0, #0
	bne _02054A44
	mov r0, r5
	mov r1, r4
	bl FUN_020549f8
	cmp r0, #0
	beq _02054A4C
_02054A44:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02054A4C:
	mov r0, r4
	mov r1, #8
	bl FUN_020543b0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054a18

	arm_func_start FUN_02054a5c
FUN_02054a5c: ; 0x02054A5C
	ldr r12, _02054A6C ; =FUN_020543b0
	mov r0, r1
	mov r1, #0x20
	bx r12
_02054A6C: .word FUN_020543b0
	arm_func_end FUN_02054a5c

	arm_func_start FUN_02054a70
FUN_02054a70: ; 0x02054A70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020549c8
	cmp r0, #0
	bne _02054A9C
	mov r0, r5
	mov r1, r4
	bl FUN_020549f8
	cmp r0, #0
	beq _02054AA4
_02054A9C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02054AA4:
	mov r0, r4
	mov r1, #0x10
	bl FUN_020543b0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054a70

	arm_func_start FUN_02054ab4
FUN_02054ab4: ; 0x02054AB4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	mov r1, #0x8000
	bl FUN_020543b0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02054ab4

	arm_func_start FUN_02054ad4
FUN_02054ad4: ; 0x02054AD4
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r1, [r1, #0x5c]
	mov r2, #0
	cmp r1, #0
	ble _02054AFC
	ldr r0, [r0, #0x28]
	cmp r0, r1
	moveq r2, #1
_02054AFC:
	mov r0, r2
	bx lr
	arm_func_end FUN_02054ad4

	arm_func_start FUN_02054b04
FUN_02054b04: ; 0x02054B04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r9, r3
	ldr r3, [r9]
	mov r6, r0
	str r3, [sp]
	ldr r3, [r9, #4]
	mov r5, r1
	str r3, [sp, #4]
	ldr r3, [r9, #8]
	mov r4, r2
	str r3, [sp, #8]
	ldr r10, [sp, #0x30]
	mov r7, #1
	bl FUN_02054a5c
	cmp r0, #0
	bne _02054B6C
	ldr r1, [r9]
	add sp, sp, #0xc
	str r1, [r10]
	ldr r1, [r9, #4]
	mov r0, r7
	str r1, [r10, #4]
	ldr r1, [r9, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054B6C:
	mov r0, r6
	mov r1, r5
	bl FUN_02054a18
	cmp r0, #0
	add r0, r5, #0xac
	mov r1, #0x20
	beq _02054BC0
	bl FUN_020541a4
	ldr r0, _02054D48 ; =g3DGameMapObject
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, r4
	add r3, r5, #0xac
	bl FUN_ov0_020cd2a8
	ands r8, r0, #0xff
	ldrsb r0, [r5, #0xb9]
	orrne r0, r0, #4
	strneb r0, [r5, #0xb9]
	biceq r0, r0, #4
	streqb r0, [r5, #0xb9]
	b _02054BC4
_02054BC0:
	bl FUN_02054194
_02054BC4:
	ldr r0, _02054D4C ; =g3DGameMap
	add r1, sp, #0
	ldr r0, [r0]
	add r2, r5, #0xac
	bl FUN_ov0_020cd1f0
	cmp r0, #0
	bne _02054C04
	ldr r1, [r4]
	add sp, sp, #0xc
	str r1, [r10]
	ldr r1, [r4, #4]
	mov r0, #0
	str r1, [r10, #4]
	ldr r1, [r4, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054C04:
	ldrsb r0, [r5, #0xb9]
	tst r0, #2
	movne r9, #1
	moveq r9, #0
	cmp r8, #0
	bne _02054C40
	cmp r9, #0
	beq _02054C40
	ldr r0, _02054D48 ; =g3DGameMapObject
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, r4
	add r3, r5, #0xac
	bl FUN_ov0_020cd2a8
	and r8, r0, #0xff
_02054C40:
	cmp r8, #0
	cmpne r9, #0
	beq _02054C80
	ldrb r0, [sp, #0x34]
	add sp, sp, #0xc
	cmp r0, #0
	addne r0, r6, #0x1000
	strneb r7, [r0, #0x908]
	ldr r1, [r4]
	mov r0, #4
	str r1, [r10]
	ldr r1, [r4, #4]
	str r1, [r10, #4]
	ldr r1, [r4, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054C80:
	cmp r9, #0
	bne _02054C90
	cmp r8, #0
	beq _02054D24
_02054C90:
	add r1, sp, #0
	mov r0, r4
	bl FUN_020535bc
	ldrb r1, [sp, #0x34]
	cmp r1, #0
	beq _02054CD0
	cmp r9, #0
	cmpne r0, #0xc8
	addlt r1, r6, #0x1000
	strltb r7, [r1, #0x908]
	blt _02054CD0
	cmp r8, #0
	ldrne r1, _02054D50 ; =0x000005DC
	cmpne r0, r1
	addlt r1, r6, #0x1000
	strltb r7, [r1, #0x908]
_02054CD0:
	ldr r1, [r6, #0x14]
	cmp r0, r1
	bge _02054D00
	ldr r1, [r4]
	mov r0, #4
	str r1, [r10]
	ldr r1, [sp, #4]
	add sp, sp, #0xc
	str r1, [r10, #4]
	ldr r1, [r4, #8]
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054D00:
	ldr r1, [sp]
	mov r0, #5
	str r1, [r10]
	ldr r1, [sp, #4]
	str r1, [r10, #4]
	ldr r1, [sp, #8]
	add sp, sp, #0xc
	str r1, [r10, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054D24:
	ldr r1, [sp]
	mov r0, #1
	str r1, [r10]
	ldr r1, [sp, #4]
	str r1, [r10, #4]
	ldr r1, [sp, #8]
	str r1, [r10, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02054D48: .word g3DGameMapObject
_02054D4C: .word g3DGameMap
_02054D50: .word 0x000005DC
	arm_func_end FUN_02054b04

	arm_func_start FUN_02054d54
FUN_02054d54: ; 0x02054D54
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_02054ab4
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_02054e6c
	mov r1, r4
	mov r0, #0
	mov r2, #0xd4
	bl MIi_CpuClearFast
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054d54

	arm_func_start FUN_02054d9c
FUN_02054d9c: ; 0x02054D9C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	str r5, [r6, #0x60]
	strb r4, [r6, #0x65]
	bl FUN_02055be0
	strb r0, [r6, #0x67]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02054d9c

	arm_func_start FUN_02054dd8
FUN_02054dd8: ; 0x02054DD8
	stmfd sp!, {r3, lr}
	ldrb r3, [r1, #0xa6]
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _02054E44
_02054DEC: ; jump table
	b _02054DFC ; case 0
	b _02054E0C ; case 1
	b _02054E44 ; case 2
	b _02054E1C ; case 3
_02054DFC:
	ldr r2, _02054E4C ; =0x0000C352
	mov r3, #3
	bl FUN_02054d9c
	ldmfd sp!, {r3, pc}
_02054E0C:
	ldr r2, _02054E50 ; =0x0000C351
	mov r3, #3
	bl FUN_02054d9c
	ldmfd sp!, {r3, pc}
_02054E1C:
	cmp r2, #0
	ldr r12, _02054E50 ; =0x0000C351
	ble _02054E34
	ldr r3, [r0, #0x10]
	cmp r2, r3
	suble r12, r12, #1
_02054E34:
	mov r2, r12
	mov r3, #3
	bl FUN_02054d9c
	ldmfd sp!, {r3, pc}
_02054E44:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_02054E4C: .word 0x0000C352
_02054E50: .word 0x0000C351
	arm_func_end FUN_02054dd8

	arm_func_start FUN_02054e54
FUN_02054e54: ; 0x02054E54
	ldr r2, _02054E64 ; =0x0000C350
	ldr r12, _02054E68 ; =FUN_02054d9c
	mov r3, #3
	bx r12
_02054E64: .word 0x0000C350
_02054E68: .word FUN_02054d9c
	arm_func_end FUN_02054e54

	arm_func_start FUN_02054e6c
FUN_02054e6c: ; 0x02054E6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x5c]
	add r0, r5, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543dc
	ldr r1, [r4, #0x5c]
	add r0, r5, #0x28
	bl FUN_02054710
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x5c]
	mov r0, r5
	mov r2, #0
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02054e6c

	arm_func_start FUN_02054edc
FUN_02054edc: ; 0x02054EDC
	cmp r1, #0
	ldrneb r0, [r1, #0x2d]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02054edc

	arm_func_start FUN_02054ef4
FUN_02054ef4: ; 0x02054EF4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r3, [r1, #0x2e]
	cmp r3, #0
	movgt r3, #1
	movle r3, #0
	strleh r3, [r1, #0x2e]
	strb r3, [r1, #0x2d]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02054e54
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02054ef4

	arm_func_start _ZN17C2DAdventureLogicC1Ev
_ZN17C2DAdventureLogicC1Ev: ; 0x02054F28
	stmfd sp!, {r4, lr}
	ldr r1, _02054F44 ; =0x020906E8
	mov r4, r0
	str r1, [r4]
	bl _ZN17C2DAdventureLogic5resetEv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02054F44: .word unk_020906E8
	arm_func_end _ZN17C2DAdventureLogicC1Ev

	arm_func_start FUN_02054f48
FUN_02054f48: ; 0x02054F48
	bx lr
	arm_func_end FUN_02054f48

	arm_func_start FUN_02054f4c
FUN_02054f4c: ; 0x02054F4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02054f4c

	arm_func_start _ZN17C2DAdventureLogic5resetEv
_ZN17C2DAdventureLogic5resetEv: ; 0x02054F60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x28
	bl FUN_02054608
	mov r4, #0
	ldr r2, _02055000 ; =0x000013E0
	mov r1, r4
	add r0, r5, #0x40
	bl MI_CpuFill8
	add r0, r5, #0x420
	mov r1, r4
	add r0, r0, #0x1000
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r5, #0x430
	add r0, r0, #0x1000
	mov r1, #0x200
	mov r2, #6
	bl FUN_0205446c
	add r0, r5, #0x1000
	str r4, [r0, #0x8f8]
	str r4, [r0, #0x8fc]
	strb r4, [r0, #0x908]
	add r0, r5, #0x1900
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	str r4, [r5, #0x10]
	str r4, [r5, #0x14]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	add r0, r5, #0x1000
	strb r4, [r0, #0x913]
	strb r4, [r0, #0x916]
	strb r4, [r0, #0x917]
	str r4, [r0, #0x918]
	strb r4, [r0, #0x91c]
	strb r4, [r0, #0x91d]
	ldmfd sp!, {r3, r4, r5, pc}
_02055000: .word 0x000013E0
	arm_func_end _ZN17C2DAdventureLogic5resetEv

	arm_func_start FUN_02055004
FUN_02055004: ; 0x02055004
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x74
	mov r4, r1
	cmp r4, #0
	mov r8, r0
	mov r6, r2
	mov r7, r3
	addle sp, sp, #0x74
	mvnle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _02055194 ; =0x00000FFF
	ldr r0, _02055198 ; =gLogicThink
	and r4, r4, r5
	mov r1, r4, lsl #0x10
	add r2, sp, #0xc
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x74
	subeq r0, r5, #0x1000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	ldr r3, [r0]
	mov r1, r4
	ldr r3, [r3]
	mov r2, r6
	blx r3
	mov r6, r0
	mov r0, r8
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	addeq sp, sp, #0x74
	subeq r0, r5, #0x1000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020550BC
	bl FUN_0206dcd4
	mov r1, r7, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206de90
_020550BC:
	mov r5, #0
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl FUN_020548c4
	cmp r0, #0
	ldrne r1, [sp, #0x90]
	addne sp, sp, #0x74
	strneb r1, [r0, #0x67]
	strneh r7, [r0, #0xa8]
	movne r0, r6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl FUN_02054950
	movs r4, r0
	addeq sp, sp, #0x74
	subeq r0, r5, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_02054268
	add r1, sp, #0xc
	mov r0, r4
	bl FUN_020541bc
	ldr r0, [sp, #0x90]
	mov r1, r5
	str r6, [r4, #0x5c]
	bl FUN_02055bd4
	str r0, [r4, #0x60]
	strb r5, [r4, #0x64]
	ldr r1, [sp, #0x90]
	strb r5, [r4, #0x65]
	strb r1, [r4, #0x67]
	ldr r0, _0205519C ; =0x00000555
	strh r7, [r4, #0xa8]
	str r0, [r4, #0x9c]
	mov r0, r4
	mov r1, #0x39
	bl FUN_020543c8
	ldr r0, [r4, #0x9c]
	sub r3, sp, #8
	stmib sp, {r0, r5}
	add r0, r4, #0x84
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r4, #0xac
	mov r1, #1
	ldmia r3, {r2, r3}
	bl FUN_0205413c
	ldrsb r0, [r4, #0xb9]
	orr r0, r0, #0x10
	strb r0, [r4, #0xb9]
	ldr r0, [r4, #0x5c]
	add sp, sp, #0x74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02055194: .word 0x00000FFF
_02055198: .word gLogicThink
_0205519C: .word 0x00000555
	arm_func_end FUN_02055004

	arm_func_start FUN_020551a0
FUN_020551a0: ; 0x020551A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x68
	mov r5, r1
	cmp r5, #0
	mov r6, r0
	mov r7, r2
	mov r4, r3
	addle sp, sp, #0x68
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0205526C ; =0x00000FFF
	ldr r0, _02055270 ; =gLogicThink
	and r5, r5, r1
	mov r1, r5, lsl #0x10
	add r2, sp, #0
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3]
	mov r2, r7
	blx r3
	mov r8, r0
	mov r0, r6
	ldr r2, [r0]
	mov r1, r8
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_020efa9c
	mov r0, r6
	mov r1, r8
	mov r2, r7
	bl FUN_020548c4
	cmp r4, #0
	mov r1, #0x40
	beq _02055260
	bl FUN_020543c8
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02055260:
	bl FUN_020543dc
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0205526C: .word 0x00000FFF
_02055270: .word gLogicThink
	arm_func_end FUN_020551a0

	arm_func_start FUN_02055274
FUN_02055274: ; 0x02055274
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054d54
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055274

	arm_func_start FUN_02055294
FUN_02055294: ; 0x02055294
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r1, r5
	mov r6, r0
	bl FUN_02054938
	mov r4, r0
_020552AC:
	mov r0, r6
	mov r1, r4
	bl FUN_02054d54
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _020552AC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055294

	arm_func_start FUN_020552cc
FUN_020552cc: ; 0x020552CC
	ldr r12, _020552D8 ; =FUN_020548c4
	mov r2, #0
	bx r12
_020552D8: .word FUN_020548c4
	arm_func_end FUN_020552cc

	arm_func_start FUN_020552dc
FUN_020552dc: ; 0x020552DC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	blt _020552F4
	ldr r2, [r0, #0x38]
	cmp r1, r2
	blt _020552FC
_020552F4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020552FC:
	add r1, r0, r1, lsl #2
	ldr r1, [r1, #0x28]
	mov r2, #0
	bl FUN_020548c4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020552dc

	arm_func_start FUN_02055310
FUN_02055310: ; 0x02055310
	ldr r1, [r0, #0x3c]
	ldr r12, _02055320 ; =FUN_020548c4
	mov r2, #0
	bx r12
_02055320: .word FUN_020548c4
	arm_func_end FUN_02055310

	arm_func_start FUN_02055324
FUN_02055324: ; 0x02055324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r1, r4
	mov r7, r0
	bl FUN_02054938
	movs r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #1
_0205534C:
	mov r0, r7
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	beq _02055370
	ldr r0, [r5, #0x5c]
	cmp r0, r6
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02055370:
	add r4, r4, #1
	cmp r4, #0x18
	add r5, r5, #0xd4
	ble _0205534C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055324

	arm_func_start FUN_02055388
FUN_02055388: ; 0x02055388
	stmfd sp!, {r3, r4, r5, lr}
	sub r1, r1, #1
	mov r5, r0
	bl FUN_02054938
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r4, #0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02055388

	arm_func_start FUN_020553c0
FUN_020553c0: ; 0x020553C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r1, r5
	mov r7, r0
	bl FUN_02054938
	mov r4, r0
	mov r6, r5
_020553DC:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	add r6, r6, #1
	addne r5, r5, #1
	cmp r6, #0x18
	add r4, r4, #0xd4
	blt _020553DC
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020553c0

	arm_func_start FUN_02055408
FUN_02055408: ; 0x02055408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	mov r7, r0
	bl FUN_02054938
	mov r4, r0
_02055424:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	beq _02055444
	subs r6, r6, #1
	ldrmi r0, [r4, #0x5c]
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
_02055444:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02055424
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055408

	arm_func_start FUN_0205545c
FUN_0205545c: ; 0x0205545C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	mov r7, r0
	bl FUN_02054938
	mov r4, r0
_02055478:
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	beq _02055498
	subs r6, r6, #1
	movmi r0, r4
	ldmmifd sp!, {r3, r4, r5, r6, r7, pc}
_02055498:
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _02055478
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205545c

	arm_func_start FUN_020554b0
FUN_020554b0: ; 0x020554B0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r3, _02055510 ; =0x00000FFF
	ldr r4, [r4]
	mov r5, r0
	and r1, r1, r3
	blx r4
	mov r4, r0
	mov r0, r5
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #4]
	blx r2
	cmp r0, #0
	beq _02055508
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
_02055508:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02055510: .word 0x00000FFF
	arm_func_end FUN_020554b0

	arm_func_start FUN_02055514
FUN_02055514: ; 0x02055514
	mov r0, r1, asr #8
	str r0, [r2]
	and r0, r1, #0xff
	str r0, [r3]
	bx lr
	arm_func_end FUN_02055514

	arm_func_start FUN_02055528
FUN_02055528: ; 0x02055528
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r0
	mov r4, r3
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl FUN_02054d9c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055528

	arm_func_start FUN_02055558
FUN_02055558: ; 0x02055558
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r6, r2
	mov r2, r5
	mov r7, r0
	bl FUN_020548c4
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	bl FUN_02054398
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055558

	arm_func_start FUN_020555a0
FUN_020555a0: ; 0x020555A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r1
	mov r1, r5
	mov r8, r0
	mov r6, r2
	bl FUN_02054938
	mov r4, r0
_020555C0:
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_02054d9c
	add r5, r5, #1
	cmp r5, #0x18
	add r4, r4, #0xd4
	blt _020555C0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020555a0

	arm_func_start FUN_020555e8
FUN_020555e8: ; 0x020555E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r5, r1
	mov r6, r0
	mov r4, #0
	add r7, sp, #8
	mov r1, r2
	mov r0, r5
	mov r2, r4
	mov r8, r3
	str r4, [r7]
	str r4, [r7, #4]
	str r4, [r7, #8]
	bl FUN_020548c4
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	ldmeqia r7, {r0, r1, r2}
	addeq sp, sp, #0x14
	stmeqia r6, {r0, r1, r2}
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x30]
	str r8, [r4, #0x84]
	ldr r0, [sp, #0x34]
	str r1, [r4, #0x88]
	str r0, [r4, #0x8c]
	cmp r4, #0
	beq _02055690
	ldr r1, [r4, #0x5c]
	add r0, r5, #0x28
	bl FUN_02054854
	cmp r0, #0
	blt _02055690
	ldr r1, [sp, #0x40]
	cmp r1, #0
	movne r1, #0x55
	mulne r1, r0, r1
	ldrne r0, [r4, #0x8c]
	subne r0, r0, r1
	strne r0, [r4, #0x8c]
_02055690:
	add r2, r4, #0x84
	str r2, [sp]
	mov r12, #0
	mov r0, r5
	mov r1, r4
	mov r3, r2
	str r12, [sp, #4]
	bl FUN_02054b04
	ldr r0, [r4, #0x84]
	ldr r2, [sp, #0x3c]
	str r0, [r4, #0x78]
	ldr r1, [r4, #0x88]
	mov r0, r5
	str r1, [r4, #0x7c]
	ldr r3, [r4, #0x8c]
	mov r1, r4
	str r3, [r4, #0x80]
	bl FUN_02054ef4
	mov r0, r5
	mov r1, r4
	bl FUN_02054ad4
	cmp r0, #0
	ldrne r0, [sp, #0x38]
	cmpne r0, #0
	beq _0205570C
	ldrh r3, [r4, #0x6a]
	add r0, r5, #0x430
	ldr r1, [r4, #0x84]
	ldr r2, [r4, #0x8c]
	add r0, r0, #0x1000
	bl FUN_020545b0
_0205570C:
	add r0, r4, #0x84
	ldmia r0, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020555e8

	arm_func_start FUN_02055720
FUN_02055720: ; 0x02055720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r6, r2
	mov r2, r4
	mov r7, r0
	bl FUN_020548c4
	mov r5, r0
	mov r0, r7
	mov r1, r5
	bl FUN_020549a0
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	beq _02055778
	add r2, r5, #0x84
	mov r0, r7
	mov r1, r5
	mov r3, r2
	stmia sp, {r2, r4}
	bl FUN_02054b04
_02055778:
	ldr r0, [r5, #0x84]
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x88]
	str r0, [r5, #0x7c]
	ldr r0, [r5, #0x8c]
	str r0, [r5, #0x80]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055720

	arm_func_start FUN_02055798
FUN_02055798: ; 0x02055798
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r4, r1
	mov r1, r6
	bl FUN_02054938
	movs r5, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	and r4, r4, #0xff
_020557B8:
	mov r0, r5
	mov r1, r4
	bl FUN_02054424
	add r6, r6, #1
	cmp r6, #0x18
	add r5, r5, #0xd4
	blt _020557B8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055798

	arm_func_start FUN_020557d8
FUN_020557d8: ; 0x020557D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r2, #0
	mov r6, r0
	bl FUN_020548c4
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, #1
	strb r5, [r4, #0x2c]
	bl FUN_02054ef4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020557d8

	arm_func_start FUN_0205581c
FUN_0205581c: ; 0x0205581C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	mov r2, #0
	mov r7, r0
	mov r5, r3
	bl FUN_020548c4
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x2c
	str r12, [sp]
	bl FUN_02054204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205581c

	arm_func_start FUN_0205586c
FUN_0205586c: ; 0x0205586C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl FUN_02054ef4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205586c

	arm_func_start FUN_02055890
FUN_02055890: ; 0x02055890
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r2
	mov r2, r5
	mov r8, r0
	mov r7, r1
	bl FUN_020548c4
	mov r4, r0
	mov r0, r8
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7
	add r0, r8, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movge r0, r5
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7
	add r0, r8, #0x28
	bl FUN_02054834
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x28
	bl FUN_02054620
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543c8
	mov r0, r8
	mov r1, r7
	mov r2, #2
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02055890

	arm_func_start FUN_02055938
FUN_02055938: ; 0x02055938
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r2
	mov r2, r5
	mov r8, r0
	mov r7, r1
	bl FUN_020548c4
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	bl FUN_02054e6c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	beq _02055998
	ldr r0, [r4, #0x5c]
	cmp r0, r7
	bne _02055998
	mov r0, r8
	bl FUN_02055af0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02055998:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02055938

	arm_func_start FUN_020559a0
FUN_020559a0: ; 0x020559A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054ab4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020559a0

	arm_func_start FUN_020559c0
FUN_020559c0: ; 0x020559C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x28
	mov r5, r1
	bl FUN_020547bc
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	ldr r4, [r6, #0x28]
	cmp r4, r5
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	mov r2, r5
	add r0, r6, #0x28
	bl FUN_02054780
	mov r0, r6
	mov r1, r4
	mov r2, #2
	bl FUN_020557d8
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020559c0

	arm_func_start FUN_02055a28
FUN_02055a28: ; 0x02055A28
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054ad4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055a28

	arm_func_start FUN_02055a48
FUN_02055a48: ; 0x02055A48
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_020549c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055a48

	arm_func_start FUN_02055a68
FUN_02055a68: ; 0x02055A68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r2, r5
	mov r7, r0
	mov r6, r1
	bl FUN_020548c4
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x28
	bl FUN_020547bc
	cmp r0, #0
	movge r0, r5
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x28
	bl FUN_020547f4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543c8
	mov r0, r7
	mov r1, r6
	mov r2, #2
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02055a68

	arm_func_start FUN_02055af0
FUN_02055af0: ; 0x02055AF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x3c]
	cmp r1, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r2, r5
	bl FUN_020548c4
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_020549a0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0x8000
	bl FUN_020543dc
	add r0, r6, #0x28
	bl FUN_02054828
	ldr r1, [r4, #0x5c]
	mov r0, r6
	mov r2, r5
	bl FUN_020557d8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02055af0

	arm_func_start FUN_02055b5c
FUN_02055b5c: ; 0x02055B5C
	ldr r12, _02055B68 ; =FUN_02054834
	add r0, r0, #0x28
	bx r12
_02055B68: .word FUN_02054834
	arm_func_end FUN_02055b5c

	arm_func_start FUN_02055b6c
FUN_02055b6c: ; 0x02055B6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #0
	bl FUN_020548c4
	mov r1, r0
	mov r0, r4
	bl FUN_02054edc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055b6c

	arm_func_start FUN_02055b8c
FUN_02055b8c: ; 0x02055B8C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	and r1, r4, #0x5e
	bl FUN_020543c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055b8c

	arm_func_start FUN_02055bb0
FUN_02055bb0: ; 0x02055BB0
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	and r1, r4, #0x5e
	bl FUN_020543dc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055bb0

	arm_func_start FUN_02055bd4
FUN_02055bd4: ; 0x02055BD4
	mov r2, #0x3e8
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_02055bd4

	arm_func_start FUN_02055be0
FUN_02055be0: ; 0x02055BE0
	ldr r3, _02055BF4 ; =0x10624DD3
	mov r1, r0, lsr #0x1f
	smull r2, r0, r3, r0
	add r0, r1, r0, asr #6
	bx lr
_02055BF4: .word 0x10624DD3
	arm_func_end FUN_02055be0

	arm_func_start FUN_02055bf8
FUN_02055bf8: ; 0x02055BF8
	ldr r3, _02055C1C ; =0x10624DD3
	mov r1, r0, lsr #0x1f
	smull r2, r12, r3, r0
	add r12, r1, r12, asr #6
	mov r3, #0x3e8
	smull r1, r2, r3, r12
	sub r12, r0, r1
	mov r0, r12
	bx lr
_02055C1C: .word 0x10624DD3
	arm_func_end FUN_02055bf8

	arm_func_start FUN_02055c20
FUN_02055c20: ; 0x02055C20
	add r0, r0, #0x28
	bx lr
	arm_func_end FUN_02055c20

	arm_func_start FUN_02055c28
FUN_02055c28: ; 0x02055C28
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r12, #0
	add lr, sp, #0
	cmp r2, #0
	movlt r2, r12
	mov r3, r0
	str r12, [lr]
	str r12, [lr, #4]
	str r12, [lr, #8]
	cmp r2, #0
	bne _02055C6C
	add r0, r1, #0x1000
	ldr r2, [r0, #0x430]
	ldr r1, [r0, #0x434]
	ldr r0, [r0, #0x438]
	b _02055C90
_02055C6C:
	cmp r2, #4
	bgt _02055C9C
	sub r2, r2, #1
	mov r0, #0xc
	mla r0, r2, r0, r1
	add r0, r0, #0x1000
	ldr r2, [r0, #0x8c8]
	ldr r1, [r0, #0x8cc]
	ldr r0, [r0, #0x8d0]
_02055C90:
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
_02055C9C:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_02055c28

	arm_func_start FUN_02055cb0
FUN_02055cb0: ; 0x02055CB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	mov r2, r7
	ldr r9, [sp, #0x2c]
	ldr r8, [sp, #0x30]
	mov r4, r0
	bl FUN_020548c4
	movs r6, r0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x28]
	mov r5, #1
	str r1, [r6, #0x30]
	str r9, [r6, #0x34]
	ldr r1, [sp, #0x34]
	mov r2, r5
	str r8, [r6, #0x38]
	mov r3, #2
	strb r3, [r6, #0x2d]
	bl FUN_0205436c
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_02054dd8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_02055cb0

	arm_func_start FUN_02055d2c
FUN_02055d2c: ; 0x02055D2C
	stmfd sp!, {r4, lr}
	mov r4, r2
	mov r2, #0
	bl FUN_020548c4
	cmp r0, #0
	strneb r4, [r0, #0xa7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055d2c

	arm_func_start FUN_02055d48
FUN_02055d48: ; 0x02055D48
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r2, r4
	bl FUN_020548c4
	cmp r0, #0
	ldrneb r4, [r0, #0xa7]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02055d48

	arm_func_start FUN_02055d68
FUN_02055d68: ; 0x02055D68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x54
	str r0, [sp, #4]
	mov r7, r1
	mov r5, #0
	bl _ZN17C2DAdventureLogic5resetEv
	mov r6, r5
	mov r4, #1
_02055D88:
	mov r0, r6, lsl #6
	ldrh r1, [r7, r0]
	cmp r1, #0
	beq _02055E74
	add r3, r7, r0
	ldrb r2, [r3, #0x39]
	ldr r0, [sp, #4]
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrh r3, [r3, #0x3a]
	bl FUN_02055004
	mov r1, r0
	ldr r0, [sp, #4]
	mov r2, r5
	bl FUN_020548c4
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r7, r6, lsl #6
	ldrb r2, [r1, #3]
	strb r2, [r0, #0x2c]
	ldr r2, [r1, #4]
	str r2, [r0, #0x40]
	ldr r2, [r1, #8]
	str r2, [r0, #0x44]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0x48]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x4c]
	ldr r2, [r1, #0x20]
	str r2, [r0, #0x50]
	ldr r2, [r1, #0x24]
	str r2, [r0, #0x54]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x58]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x84]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x88]
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x8c]
	strb r4, [r0, #0x69]
	ldrh r2, [r1, #0x2c]
	strh r2, [r0, #0x6a]
	ldrh r2, [r1, #0x2e]
	strh r2, [r0, #0xa4]
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x9c]
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x60]
	ldrb r2, [r1, #0x38]
	strb r2, [r0, #0x65]
	ldrb r2, [r1, #0x39]
	strb r2, [r0, #0x67]
	ldrh r2, [r1, #0x3a]
	strh r2, [r0, #0xa8]
	ldrb r1, [r1, #0x3c]
	strb r1, [r0, #0xa7]
_02055E74:
	add r6, r6, #1
	cmp r6, #0x18
	blt _02055D88
	mov r2, #0
_02055E84:
	add r0, r7, r2, lsl #2
	ldr r1, [r0, #0x600]
	ldr r0, [sp, #4]
	add r0, r0, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x28]
	cmp r2, #4
	blt _02055E84
	add r0, r7, #0x600
	ldrsb r3, [r0, #0x14]
	ldr r0, [sp, #4]
	mov r2, r0
	str r3, [r2, #0x38]
	ldr r1, [r0, #0x28]
	ldr r4, [r7, #0x610]
	mov r3, r0
	mov r2, #0
	str r4, [r3, #0x3c]
	bl FUN_020548c4
	cmp r0, #0
	beq _02055EF4
	ldr r1, [sp, #4]
	ldrh r3, [r0, #0x6a]
	add r4, r1, #0x430
	ldr r1, [r0, #0x84]
	ldr r2, [r0, #0x8c]
	add r0, r4, #0x1000
	bl FUN_020545b0
_02055EF4:
	mov r6, #0
	mov r7, r6
	add r4, sp, #0x18
	mov r8, #0xc
_02055F04:
	ldr r0, [sp, #4]
	mov r2, r5
	add r0, r0, r7, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [sp, #4]
	bl FUN_020548c4
	cmp r0, #0
	beq _02055F48
	mul r3, r7, r8
	ldr r2, [r0, #0x84]
	ldr r1, [r0, #0x8c]
	ldrh r0, [r0, #0x6a]
	str r2, [r4, r3]
	add r2, r4, r3
	str r1, [r2, #4]
	str r0, [r2, #8]
	add r6, r6, #1
_02055F48:
	add r7, r7, #1
	cmp r7, #4
	blt _02055F04
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r1, [r0, #0x3c]
	bl FUN_020548c4
	cmp r0, #0
	beq _02055F9C
	mov r1, #0xc
	mul r7, r6, r1
	ldr r5, [r0, #0x84]
	add r4, sp, #0x18
	ldr r3, [r0, #0x8c]
	ldrh r1, [r0, #0x6a]
	add r2, sp, #0x1c
	str r5, [r4, r7]
	add r0, sp, #0x20
	str r3, [r2, r7]
	str r1, [r0, r7]
	add r6, r6, #1
_02055F9C:
	sub r0, r6, #1
	str r0, [sp, #8]
	cmp r0, #0
	ble _02056084
	ldr r0, [sp, #4]
	add r0, r0, #0x430
	str r0, [sp, #0x10]
_02055FB8:
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x8c4]
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _02056070
	ldr r0, [sp, #8]
	mov r1, #0xc
	mul r1, r0, r1
	add r0, sp, #0x18
	add r0, r0, r1
	ldr r7, [r0, #-4]
	ldr r8, [r0, #-8]
	ldmib r0, {r2, r3}
	ldr r9, [r0, #-0xc]
	add r0, sp, #0x18
	ldr r1, [r0, r1]
	sub r0, r3, r7
	str r0, [sp, #0xc]
	sub r11, r2, r8
	sub r10, r1, r9
_0205600C:
	mul r0, r6, r10
	ldr r1, [sp, #0x14]
	ldr r4, [r1, #0x8c4]
	mov r1, r4
	bl _s32_div_f
	mov r5, r0
	mul r0, r6, r11
	mov r1, r4
	bl _s32_div_f
	mov r1, r4
	mov r4, r0
	ldr r0, [sp, #0xc]
	mul r0, r6, r0
	bl _u32_div_f
	mov r3, #1
	str r3, [sp]
	add r3, r7, r0
	ldr r0, [sp, #0x10]
	add r1, r9, r5
	add r2, r8, r4
	add r0, r0, #0x1000
	bl FUN_0205449c
	sub r6, r6, #1
	cmp r6, #0
	bgt _0205600C
_02056070:
	ldr r0, [sp, #8]
	sub r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0
	bgt _02055FB8
_02056084:
	ldr r0, [sp, #4]
	mov r4, #1
	add r0, r0, #0x430
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r0, #0x1000
	str r4, [sp]
	bl FUN_0205449c
	mov r0, r4
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02055d68

	arm_func_start FUN_020560b4
FUN_020560b4: ; 0x020560B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, #0x620
	bl MI_CpuFill8
_020560D4:
	mov r0, r7
	mov r1, r5
	bl FUN_02054938
	movs r4, r0
	beq _0205619C
	bl FUN_020542b0
	mov r1, r5, lsl #6
	strh r0, [r6, r1]
	mov r0, r4
	bl FUN_020542bc
	add r1, r6, r5, lsl #6
	strb r0, [r1, #2]
	ldrb r0, [r4, #0x2c]
	strb r0, [r1, #3]
	ldr r0, [r4, #0x40]
	str r0, [r1, #4]
	ldr r0, [r4, #0x44]
	str r0, [r1, #8]
	ldr r0, [r4, #0x48]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x4c]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x20]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x24]
	ldr r0, [r4, #0x58]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x84]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x88]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x8c]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x6a]
	strh r0, [r1, #0x2c]
	ldrh r0, [r4, #0xa4]
	strh r0, [r1, #0x2e]
	ldr r0, [r4, #0x9c]
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x60]
	str r0, [r1, #0x34]
	ldrb r0, [r4, #0x65]
	strb r0, [r1, #0x38]
	ldrb r0, [r4, #0x67]
	strb r0, [r1, #0x39]
	ldrh r0, [r4, #0xa8]
	strh r0, [r1, #0x3a]
	ldrb r0, [r4, #0xa7]
	strb r0, [r1, #0x3c]
_0205619C:
	add r5, r5, #1
	cmp r5, #0x18
	blt _020560D4
	mov r2, #0
_020561AC:
	add r0, r7, r2, lsl #2
	ldr r1, [r0, #0x28]
	add r0, r6, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0x600]
	cmp r2, #4
	blt _020561AC
	ldr r0, [r7, #0x38]
	add r1, r7, #0x1000
	strb r0, [r6, #0x614]
	ldr r2, [r7, #0x3c]
	mov r0, #1
	str r2, [r6, #0x610]
	ldr r2, [r1, #0x900]
	str r2, [r6, #0x618]
	ldr r1, [r1, #0x904]
	str r1, [r6, #0x61c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020560b4

	arm_func_start FUN_020561f4
FUN_020561f4: ; 0x020561F4
	cmp r1, #0
	addge r3, r0, #0x1000
	strge r1, [r3, #0x900]
	cmp r2, #0
	addge r0, r0, #0x1000
	strge r2, [r0, #0x904]
	bx lr
	arm_func_end FUN_020561f4

	arm_func_start FUN_02056210
FUN_02056210: ; 0x02056210
	add r0, r0, #0x1000
	ldr r3, [r0, #0x900]
	str r3, [r1]
	ldr r0, [r0, #0x904]
	str r0, [r2]
	bx lr
	arm_func_end FUN_02056210

	.data
	.global unk_020906C8
unk_020906C8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020906E8
unk_020906E8:
	.word FUN_0205488c
	.word FUN_020548b0
	.word FUN_02054f48
	.word FUN_02054f4c
	.word FUN_ov0_020cc844

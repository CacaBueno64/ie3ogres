
	.include "/macros/function.inc"
	.include "/include/thinkmanager_mini.inc"

    .text
	arm_func_start FUN_0204947c
FUN_0204947c: ; 0x0204947C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204959c
	ldr r1, _02049498 ; =0x02090428
	mov r0, r4
	str r1, [r4]
	ldmfd sp!, {r4, pc}
_02049498: .word unk_02090428
	arm_func_end FUN_0204947c

	arm_func_start FUN_0204949c
FUN_0204949c: ; 0x0204949C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020495e4
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204949c

	arm_func_start FUN_020494b0
FUN_020494b0: ; 0x020494B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020495e4
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020494b0

	arm_func_start FUN_020494cc
FUN_020494cc: ; 0x020494CC
	ldr r12, _020494D4 ; =FUN_020497ec
	bx r12
_020494D4: .word FUN_020497ec
	arm_func_end FUN_020494cc

	arm_func_start FUN_020494d8
FUN_020494d8: ; 0x020494D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020f2700
	cmp r0, #0xa
	bne _0204950C
	mov r0, r4
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0204950C:
	cmp r0, #0xb
	bne _02049530
	mov r0, r4
	bl FUN_ov16_020f0810
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049530:
	mov r0, r5
	mov r1, r4
	bl FUN_02049840
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020494d8

	arm_func_start FUN_02049540
FUN_02049540: ; 0x02049540
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_020f2700
	cmp r0, #0xa
	bne _0204956C
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0204956C:
	cmp r0, #0xb
	bne _0204958C
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_0204958C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02049540

	arm_func_start FUN_02049594
FUN_02049594: ; 0x02049594
	mov r0, #0
	bx lr
	arm_func_end FUN_02049594

	.data
	.global unk_02090408
unk_02090408:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_02090428
unk_02090428:
	.word FUN_0204949c
	.word FUN_020494b0
	.word FUN_020495e8
	.word FUN_020494cc
	.word FUN_02049804
	.word FUN_02049818
	.word FUN_0204982c
	.word FUN_02049594
	.word FUN_0204989c
	.word FUN_0204996c
	.word FUN_020498b8
	.word FUN_02049a04
	.word FUN_020494d8
	.word FUN_02049540
	.word FUN_02049a30

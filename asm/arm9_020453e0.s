
	.include "/macros/function.inc"
	.include "/include/arm9_020453e0.inc"

    .text
	arm_func_start FUN_020453e0
FUN_020453e0: ; 0x020453E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	add r3, r5, #0x5000
	add r0, r5, #4
	mov r6, #0x124
	sub r12, r4, #1
	mov r1, r4
	mov r2, r6
	add r0, r0, #0x400
	str r4, [r3, #0xad0]
	str r4, [r3, #0xad4]
	strb r4, [r5, #0x528]
	str r4, [r3, #0xaf4]
	str r12, [r3, #0xaf8]
	str r4, [r3, #0xab4]
	str r4, [r3, #0xab8]
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	add r2, r6, #0x2e0
	bl MI_CpuFill8
	add r1, r5, #0x5000
	add r2, r5, #0x5b00
	mov r3, #1
	mov r0, r5
	strb r3, [r5, #0x4cb]
	str r4, [r1, #0xb9c]
	strh r4, [r2, #0xd6]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020453e0

	arm_func_start FUN_02045458
FUN_02045458: ; 0x02045458
	bx lr
	arm_func_end FUN_02045458

	arm_func_start FUN_0204545c
FUN_0204545c: ; 0x0204545C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, #0
	add r3, r6, #0x5000
	ldr r2, _02045534 ; =0x000008BC
	mov r1, r5
	str r5, [r3, #0xad0]
	str r5, [r3, #0xad4]
	bl MI_CpuFill8
	add r2, r6, #0x5000
	mov r4, #1
	sub r7, r4, #2
	mov r3, #0x64
	mov r0, r6
	mov r1, #0x17
	strb r5, [r6, #0x528]
	strb r4, [r6, #0x5a3]
	str r5, [r2, #0xaf4]
	str r7, [r2, #0xaf8]
	str r5, [r2, #0xab4]
	str r5, [r2, #0xab8]
	str r5, [r2, #0xabc]
	str r5, [r6, #0x594]
	strb r5, [r6, #0x599]
	str r5, [r6, #0x59c]
	str r7, [r2, #0xb7c]
	str r7, [r2, #0xb80]
	strb r5, [r2, #0xbd5]
	strb r3, [r2, #0xbd4]
	str r7, [r6, #0x5c4]
	bl FUN_020455a0
	ldr r2, _02045538 ; =0x0000E4FA
	ldr r0, _0204553C ; =gConfig
	ldr r1, _02045540 ; =0x02090124
	str r2, [r6, #0x54c]
	bl _ZN6Config8getParamEPc
	str r0, [r6, #0x550]
	strb r4, [r6, #0x4cb]
	add r0, r6, #0x5000
	strb r5, [r0, #0xb85]
	ldr r7, _02045544 ; =gAudioPlayer
	mov r1, r5
	mov r0, r7
	ldr r2, _02045548 ; =0x02090138
	mov r3, r5
	bl _ZN11AudioPlayer12FUN_0202bfb8EiPcl
	mov r0, r7
	mov r1, r4
	ldr r2, _0204554C ; =0x0209013C
	mov r3, r5
	bl _ZN11AudioPlayer12FUN_0202bfb8EiPcl
	add r0, r6, #0x5000
	strb r5, [r0, #0xbd8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02045534: .word 0x000008BC
_02045538: .word 0x0000E4FA
_0204553C: .word gConfig
_02045540: .word unk_02090124
_02045544: .word gAudioPlayer
_02045548: .word unk_02090138
_0204554C: .word unk_0209013C
	arm_func_end FUN_0204545c

	arm_func_start FUN_02045550
FUN_02045550: ; 0x02045550
	add r0, r0, #0x5000
	str r1, [r0, #0xab8]
	bx lr
	arm_func_end FUN_02045550

	arm_func_start FUN_0204555c
FUN_0204555c: ; 0x0204555C
	add r0, r0, #0x5000
	str r1, [r0, #0xad0]
	str r2, [r0, #0xad4]
	bx lr
	arm_func_end FUN_0204555c

	arm_func_start FUN_0204556c
FUN_0204556c: ; 0x0204556C
	bx lr
	arm_func_end FUN_0204556c

	arm_func_start FUN_02045570
FUN_02045570: ; 0x02045570
	add r0, r0, #0x5000
	ldr r0, [r0, #0xad0]
	bx lr
	arm_func_end FUN_02045570

	arm_func_start FUN_0204557c
FUN_0204557c: ; 0x0204557C
	add r0, r0, #0x5000
	ldr r0, [r0, #0xad4]
	bx lr
	arm_func_end FUN_0204557c

	arm_func_start FUN_02045588
FUN_02045588: ; 0x02045588
	add r0, r0, #0x5000
	str r1, [r0, #0xab4]
	bx lr
	arm_func_end FUN_02045588

	arm_func_start FUN_02045594
FUN_02045594: ; 0x02045594
	add r0, r0, #0x5000
	ldr r0, [r0, #0xab4]
	bx lr
	arm_func_end FUN_02045594

	arm_func_start FUN_020455a0
FUN_020455a0: ; 0x020455A0
	add r0, r0, #0x5000
	str r1, [r0, #0xab0]
	bx lr
	arm_func_end FUN_020455a0

	arm_func_start FUN_020455ac
FUN_020455ac: ; 0x020455AC
	add r0, r0, #0x5000
	ldr r0, [r0, #0xab0]
	bx lr
	arm_func_end FUN_020455ac

	arm_func_start FUN_020455b8
FUN_020455b8: ; 0x020455B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	mov lr, r1
	mov r3, #0
	mov r0, #0x38
_020455CC:
	mla r1, r3, r0, r4
	add r1, r1, #0x4000
	ldr r2, [r1, #0xc3c]
	add r1, r4, r3
	add r3, r3, #1
	strb r2, [r1, #0x554]
	cmp r3, #0x40
	blt _020455CC
	mov r7, r4
	mov r6, lr
	mov r5, #0x40
_020455F8:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020455F8
	ldr r2, [r7]
	add r0, r4, #4
	add r1, lr, #4
	str r2, [r6]
	add r7, r0, #0x400
	add r6, r1, #0x400
	mov r5, #0x12
_02045624:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02045624
	ldr r2, [r7]
	add r0, r4, #0x128
	add r1, lr, #0x128
	str r2, [r6]
	add r5, r0, #0x400
	add r3, r1, #0x400
	mov r2, #0x10
_02045650:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02045650
	ldr r1, [r4, #0x548]
	add r0, r4, #0x154
	str r1, [lr, #0x548]
	ldr r2, [r4, #0x54c]
	add r1, lr, #0x154
	str r2, [lr, #0x54c]
	ldr r2, [r4, #0x550]
	add r5, r0, #0x400
	str r2, [lr, #0x550]
	add r3, r1, #0x400
	mov r2, #0x20
_02045698:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02045698
	ldr r0, [r4, #0x594]
	add r1, r4, #0x1a4
	str r0, [lr, #0x594]
	ldrb r0, [r4, #0x598]
	add r2, lr, #0x1a4
	add r3, r4, #0x1c8
	strb r0, [lr, #0x598]
	ldrb r6, [r4, #0x599]
	add r0, r4, #0x500
	add r12, r1, #0x400
	strb r6, [lr, #0x599]
	ldr r6, [r4, #0x59c]
	add r8, r2, #0x400
	str r6, [lr, #0x59c]
	ldrsb r1, [r0, #0xa0]
	add r5, lr, #0x1c8
	add r6, r5, #0x400
	strb r1, [lr, #0x5a0]
	ldrb r1, [r4, #0x5a1]
	add r7, r3, #0x400
	mov r5, #0xbc
	strb r1, [lr, #0x5a1]
	ldrb r1, [r4, #0x5a2]
	strb r1, [lr, #0x5a2]
	ldrsb r0, [r0, #0xa3]
	strb r0, [lr, #0x5a3]
	ldmia r12!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r0, [r4, #0x5c4]
	str r0, [lr, #0x5c4]
_02045734:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	subs r5, r5, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _02045734
	add r0, r4, #0x800
	ldrsh r2, [r0, #0xb8]
	add r1, lr, #0x800
	strh r2, [r1, #0xb8]
	ldrsh r0, [r0, #0xba]
	strh r0, [r1, #0xba]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020455b8

	arm_func_start FUN_0204576c
FUN_0204576c: ; 0x0204576C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrb r1, [r4, #0x5a2]
	mov r5, r0
	bl FUN_02045e08
	mov r8, r4
	mov r7, r5
	mov r6, #0x40
_0204578C:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _0204578C
	ldr r2, [r8]
	add r0, r4, #4
	add r1, r5, #4
	str r2, [r7]
	add r8, r0, #0x400
	add r7, r1, #0x400
	mov r6, #0x12
_020457B8:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _020457B8
	ldr r2, [r8]
	add r0, r4, #0x128
	add r1, r5, #0x128
	str r2, [r7]
	add r6, r0, #0x400
	add r3, r1, #0x400
	mov r2, #0x10
_020457E4:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020457E4
	ldr r1, [r4, #0x548]
	add r0, r4, #0x154
	str r1, [r5, #0x548]
	ldr r2, [r4, #0x54c]
	add r1, r5, #0x154
	str r2, [r5, #0x54c]
	ldr r2, [r4, #0x550]
	add r6, r0, #0x400
	str r2, [r5, #0x550]
	add r3, r1, #0x400
	mov r2, #0x20
_0204582C:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0204582C
	ldr r0, [r4, #0x594]
	add r1, r4, #0x1a4
	str r0, [r5, #0x594]
	ldrb r0, [r4, #0x598]
	add r2, r5, #0x1a4
	add r3, r4, #0x1c8
	strb r0, [r5, #0x598]
	ldrb r6, [r4, #0x599]
	add r0, r4, #0x500
	add r12, r1, #0x400
	strb r6, [r5, #0x599]
	ldr r6, [r4, #0x59c]
	add r8, r2, #0x400
	str r6, [r5, #0x59c]
	ldrsb r1, [r0, #0xa0]
	add lr, r5, #0x1c8
	add r6, lr, #0x400
	strb r1, [r5, #0x5a0]
	ldrb r1, [r4, #0x5a1]
	add r7, r3, #0x400
	mov lr, #0xbc
	strb r1, [r5, #0x5a1]
	ldrb r1, [r4, #0x5a2]
	strb r1, [r5, #0x5a2]
	ldrsb r0, [r0, #0xa3]
	strb r0, [r5, #0x5a3]
	ldmia r12!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	ldr r0, [r4, #0x5c4]
	str r0, [r5, #0x5c4]
_020458C8:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	subs lr, lr, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _020458C8
	add r0, r4, #0x800
	ldrsh r2, [r0, #0xb8]
	add r1, r5, #0x800
	strh r2, [r1, #0xb8]
	ldrsh r0, [r0, #0xba]
	strh r0, [r1, #0xba]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204576c

	arm_func_start FUN_02045900
FUN_02045900: ; 0x02045900
	add r0, r0, #0xbc
	add r0, r0, #0x800
	bx lr
	arm_func_end FUN_02045900

	arm_func_start FUN_0204590c
FUN_0204590c: ; 0x0204590C
	mov r12, #0
	mov r1, #0x38
_02045914:
	mla r2, r12, r1, r0
	add r3, r0, r12
	add r12, r12, #1
	ldrb r3, [r3, #0x554]
	add r2, r2, #0x4000
	cmp r12, #0x40
	str r3, [r2, #0xc3c]
	blt _02045914
	bx lr
	arm_func_end FUN_0204590c

	arm_func_start FUN_02045938
FUN_02045938: ; 0x02045938
	add r3, r0, #0x128
	str r2, [r0, #0x548]
	ldr r12, _0204594C ; =STD_CopyString
	add r0, r3, #0x400
	bx r12
_0204594C: .word STD_CopyString
	arm_func_end FUN_02045938

	arm_func_start FUN_02045950
FUN_02045950: ; 0x02045950
	add r0, r0, #0x128
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_02045950

	arm_func_start FUN_0204595c
FUN_0204595c: ; 0x0204595C
	add r0, r0, #0x5000
	str r1, [r0, #0xaf8]
	bx lr
	arm_func_end FUN_0204595c

	arm_func_start FUN_02045968
FUN_02045968: ; 0x02045968
	add r0, r0, #0x5000
	ldr r0, [r0, #0xaf8]
	bx lr
	arm_func_end FUN_02045968

	arm_func_start FUN_02045974
FUN_02045974: ; 0x02045974
	add r0, r0, #0x5000
	str r1, [r0, #0xaf4]
	bx lr
	arm_func_end FUN_02045974

	arm_func_start FUN_02045980
FUN_02045980: ; 0x02045980
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r0, r6, #0x1e
	add r12, r6, #0x5000
	mvn r7, #0
	add r0, r0, #0x5b00
	mov r5, r2
	mov r4, r3
	strb r7, [r12, #0xb3e]
	bl STD_CopyString
	ldr r0, _020459FC ; =0x0477D1A9
	add r1, r6, #0x5000
	umull r8, r7, r4, r0
	mov lr, r4, asr #0x1f
	mov r12, #0
	ldr r4, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	mla r7, lr, r0, r7
	adds r0, r8, #0x80000000
	adc r7, r7, #0
	strb r12, [r1, #0xb1d]
	add r0, r6, #0x5b00
	ldrsb r0, [r0, #0x1d]
	strb r5, [r1, #0xb3f]
	str r7, [r1, #0xb70]
	strb r0, [r1, #0xb1c]
	str r4, [r1, #0xb40]
	str r3, [r1, #0xb44]
	str r2, [r1, #0xb48]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020459FC: .word 0x0477D1A9
	arm_func_end FUN_02045980

	arm_func_start FUN_02045a00
FUN_02045a00: ; 0x02045A00
	add r1, r0, #0x5b00
	ldrsb r1, [r1, #0x3e]
	cmp r1, #0
	moveq r0, #0
	addne r1, r0, #0x5000
	addne r0, r0, #0x2fc
	movne r2, #0
	strneb r2, [r1, #0xb3e]
	addne r0, r0, #0x5800
	bx lr
	arm_func_end FUN_02045a00

	arm_func_start FUN_02045a28
FUN_02045a28: ; 0x02045A28
	stmfd sp!, {r3, lr}
	ldr r2, _02045A5C ; =0x0B60B60B
	mov r3, #0xb6
	umull lr, r12, r1, r2
	mla r12, r1, r3, r12
	mov r1, r1, asr #0x1f
	mla r12, r1, r2, r12
	adds r1, lr, #0
	adc r1, r12, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x54c]
	ldmfd sp!, {r3, pc}
_02045A5C: .word 0x0B60B60B
	arm_func_end FUN_02045a28

	arm_func_start FUN_02045a60
FUN_02045a60: ; 0x02045A60
	ldr r0, [r0, #0x54c]
	bx lr
	arm_func_end FUN_02045a60

	arm_func_start FUN_02045a68
FUN_02045a68: ; 0x02045A68
	str r1, [r0, #0x550]
	bx lr
	arm_func_end FUN_02045a68

	arm_func_start FUN_02045a70
FUN_02045a70: ; 0x02045A70
	ldr r0, [r0, #0x550]
	bx lr
	arm_func_end FUN_02045a70

	arm_func_start FUN_02045a78
FUN_02045a78: ; 0x02045A78
	strb r1, [r0, #0x5a3]
	bx lr
	arm_func_end FUN_02045a78

	arm_func_start FUN_02045a80
FUN_02045a80: ; 0x02045A80
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, [sp, #0x10]
	mov r5, #0
	mvn r12, #0
_02045A90:
	cmp r3, r12
	beq _02045AA0
	cmp r3, r5
	bne _02045AD4
_02045AA0:
	add r4, r0, r5, lsl #3
	ldr lr, [r4, #0x5a4]
	cmp r1, lr
	ldrne lr, [r4, #0x5a8]
	cmpne lr, #0
	beq _02045AC0
	cmp r6, #0
	beq _02045AD4
_02045AC0:
	add r0, r0, r5, lsl #3
	str r1, [r0, #0x5a4]
	str r2, [r0, #0x5a8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02045AD4:
	add r5, r5, #1
	cmp r5, #4
	blt _02045A90
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02045a80

	arm_func_start FUN_02045ae8
FUN_02045ae8: ; 0x02045AE8
	add r2, r0, #0x500
	ldrsb r2, [r2, #0xa3]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	mov r12, #0
_02045B00:
	add r3, r0, r12, lsl #3
	ldr r2, [r3, #0x5a8]
	cmp r2, #0
	beq _02045B2C
	sub r2, r2, r1
	cmp r2, #0
	str r2, [r3, #0x5a8]
	movle r0, #0
	strle r0, [r3, #0x5a8]
	ldrle r0, [r3, #0x5a4]
	bxle lr
_02045B2C:
	add r12, r12, #1
	cmp r12, #4
	blt _02045B00
	mov r0, #0
	bx lr
	arm_func_end FUN_02045ae8

	arm_func_start FUN_02045b40
FUN_02045b40: ; 0x02045B40
	add r0, r0, #0x5000
	str r1, [r0, #0xb74]
	str r2, [r0, #0xb78]
	bx lr
	arm_func_end FUN_02045b40

	arm_func_start FUN_02045b50
FUN_02045b50: ; 0x02045B50
	cmp r1, #0
	addne r3, r0, #0x5000
	ldrne r3, [r3, #0xb74]
	strne r3, [r1]
	cmp r2, #0
	addne r0, r0, #0x5000
	ldrne r0, [r0, #0xb78]
	strne r0, [r2]
	bx lr
	arm_func_end FUN_02045b50

	arm_func_start FUN_02045b74
FUN_02045b74: ; 0x02045B74
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r12, r5
	mov r3, r5
_02045B84:
	add lr, r0, r3, lsl #2
	ldrb r4, [lr, #0x5c8]
	cmp r4, #0
	beq _02045BD4
	cmp r1, r4
	bne _02045BAC
	add lr, lr, #0x500
	ldrh r4, [lr, #0xca]
	cmp r2, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_02045BAC:
	add r4, r0, r3, lsl #2
	ldrb r4, [r4, #0x5c9]
	tst r4, #0x20
	beq _02045BC8
	cmp r5, #0
	moveq r12, r3
	add r5, r5, #1
_02045BC8:
	add r3, r3, #1
	cmp r3, #0xbc
	blt _02045B84
_02045BD4:
	cmp r1, #6
	bge _02045C28
	cmp r5, #0x14
	blt _02045C28
	cmp r12, #0xbb
	bge _02045C24
_02045BEC:
	add r4, r0, r12, lsl #2
	ldrb lr, [r4, #0x5cc]
	add r3, r4, #0x500
	strb lr, [r4, #0x5c8]
	ldrb lr, [r4, #0x5cd]
	strb lr, [r4, #0x5c9]
	ldrh lr, [r3, #0xce]
	strh lr, [r3, #0xca]
	ldrb r3, [r4, #0x5c8]
	cmp r3, #0
	beq _02045C24
	add r12, r12, #1
	cmp r12, #0xbb
	blt _02045BEC
_02045C24:
	mov r3, r12
_02045C28:
	add lr, r0, r3, lsl #2
	strb r1, [lr, #0x5c8]
	mov r12, #1
	strb r12, [lr, #0x5c9]
	add r12, lr, #0x500
	strh r2, [r12, #0xca]
	cmp r1, #0xb
	addlt r2, r0, #0xc9
	addlt r12, r2, #0x500
	ldrltb r2, [r12, r3, lsl #2]
	orrlt r2, r2, #0x10
	strltb r2, [r12, r3, lsl #2]
	cmp r1, #6
	addlt r0, r0, #0xc9
	addlt r1, r0, #0x500
	ldrltb r0, [r1, r3, lsl #2]
	orrlt r0, r0, #0x20
	strltb r0, [r1, r3, lsl #2]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02045b74

	arm_func_start FUN_02045c74
FUN_02045c74: ; 0x02045C74
	mov r3, #0
_02045C78:
	add r2, r0, r3, lsl #2
	ldrb r2, [r2, #0x5c8]
	cmp r1, r2
	bne _02045CA0
	add r0, r0, #0xc9
	add r1, r0, #0x500
	ldrb r0, [r1, r3, lsl #2]
	orr r0, r0, #2
	strb r0, [r1, r3, lsl #2]
	bx lr
_02045CA0:
	add r3, r3, #1
	cmp r3, #0xbc
	blt _02045C78
	bx lr
	arm_func_end FUN_02045c74

	arm_func_start FUN_02045cb0
FUN_02045cb0: ; 0x02045CB0
	add r0, r0, #0x1c8
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_02045cb0

	arm_func_start FUN_02045cbc
FUN_02045cbc: ; 0x02045CBC
	cmp r1, #0
	ldrne r1, [r0, #0x5c4]
	mov r3, #1
	orrne r1, r1, r3, lsl r2
	mvneq r1, r3, lsl r2
	ldreq r2, [r0, #0x5c4]
	andeq r1, r2, r1
	str r1, [r0, #0x5c4]
	bx lr
	arm_func_end FUN_02045cbc

	arm_func_start FUN_02045ce0
FUN_02045ce0: ; 0x02045CE0
	ldr r2, [r0, #0x5c4]
	mov r0, #1
	and r0, r2, r0, lsl r1
	bx lr
	arm_func_end FUN_02045ce0

	arm_func_start FUN_02045cf0
FUN_02045cf0: ; 0x02045CF0
	add r0, r0, #0x800
	strh r1, [r0, #0xb8]
	strh r2, [r0, #0xba]
	bx lr
	arm_func_end FUN_02045cf0

	arm_func_start FUN_02045d00
FUN_02045d00: ; 0x02045D00
	add r3, r0, #0x800
	ldrsh r12, [r3, #0xb8]
	cmp r12, #0
	movle r12, #0xe0
	strleh r12, [r3, #0xb8]
	add r3, r0, #0x800
	ldrsh r3, [r3, #0xb8]
	cmp r3, #0xe0
	movgt r3, #0xe0
	bgt _02045D30
	cmp r3, #1
	movlt r3, #1
_02045D30:
	strh r3, [r1]
	add r0, r0, #0x800
	ldrsh r0, [r0, #0xba]
	cmp r0, #0xa0
	movgt r0, #0xa0
	bgt _02045D50
	cmp r0, #1
	movlt r0, #1
_02045D50:
	strh r0, [r2]
	bx lr
	arm_func_end FUN_02045d00

	arm_func_start FUN_02045d58
FUN_02045d58: ; 0x02045D58
	cmp r1, #0
	add r1, r0, #0x500
	ldrsb r1, [r1, #0xa0]
	orrne r1, r1, #1
	biceq r1, r1, #1
	strb r1, [r0, #0x5a0]
	bx lr
	arm_func_end FUN_02045d58

	arm_func_start FUN_02045d74
FUN_02045d74: ; 0x02045D74
	ldrb r1, [r0, #0x5a1]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #0x500
	ldrsb r0, [r0, #0xa0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02045d74

	arm_func_start FUN_02045d9c
FUN_02045d9c: ; 0x02045D9C
	cmp r1, #0
	add r1, r0, #0x500
	ldrsb r1, [r1, #0xa0]
	orrne r1, r1, #2
	biceq r1, r1, #2
	strb r1, [r0, #0x5a0]
	bx lr
	arm_func_end FUN_02045d9c

	arm_func_start FUN_02045db8
FUN_02045db8: ; 0x02045DB8
	ldrb r1, [r0, #0x5a1]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #0x500
	ldrsb r0, [r0, #0xa0]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02045db8

	arm_func_start FUN_02045de0
FUN_02045de0: ; 0x02045DE0
	add r0, r0, #0x5000
	ldr r0, [r0, #0xb9c]
	bx lr
	arm_func_end FUN_02045de0

	arm_func_start FUN_02045dec
FUN_02045dec: ; 0x02045DEC
	add r0, r0, #0x5000
	str r1, [r0, #0xb9c]
	bx lr
	arm_func_end FUN_02045dec

	arm_func_start FUN_02045df8
FUN_02045df8: ; 0x02045DF8
	strb r1, [r0, #0x5a1]
	bx lr
	arm_func_end FUN_02045df8

	arm_func_start FUN_02045e00
FUN_02045e00: ; 0x02045E00
	ldrb r0, [r0, #0x5a1]
	bx lr
	arm_func_end FUN_02045e00

	arm_func_start FUN_02045e08
FUN_02045e08: ; 0x02045E08
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r4, r1
	ldr r0, _02045EBC ; =gConfig
	ldr r1, _02045EC0 ; =0x02090140
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	ldr r1, _02045EC4 ; =0x02090148
	ldrb r0, [r5, #0x5a2]
	ldrne r1, _02045EC8 ; =0x02090168
	cmp r0, r4
	beq _02045E90
	ldr r3, _02045ECC ; =gAllocator
	add r2, r5, #0xbb0
	ldr r0, [r3]
	add r2, r2, #0x5000
	cmp r0, #0
	str r2, [sp, #0x10]
	moveq r0, #0
	beq _02045E88
	sub r12, r4, #1
	mov r2, #0x24
	mul lr, r12, r2
	str lr, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
_02045E88:
	cmp r0, #0
	moveq r4, #0
_02045E90:
	ldrb r0, [r5, #0x5a1]
	mov r1, #1
	strb r4, [r5, #0x5a2]
	cmp r0, #0
	addeq r0, r5, #0x5b00
	ldreqh r0, [r0, #0xb0]
	streqb r0, [r5, #0x5a1]
	add r0, r5, #0x5000
	str r1, [r0, #0xb9c]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02045EBC: .word gConfig
_02045EC0: .word unk_02090140
_02045EC4: .word unk_02090148
_02045EC8: .word unk_02090168
_02045ECC: .word gAllocator
	arm_func_end FUN_02045e08

	arm_func_start FUN_02045ed0
FUN_02045ed0: ; 0x02045ED0
	add r0, r0, #0xbb0
	add r0, r0, #0x5000
	bx lr
	arm_func_end FUN_02045ed0

	arm_func_start FUN_02045edc
FUN_02045edc: ; 0x02045EDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x58
	mov r7, r0
	mov r4, r1
	ldr r0, _02046090 ; =gConfig
	ldr r1, _02046094 ; =0x02090188
	mov r5, #0
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	ldr r1, _02046098 ; =0x02090190
	add r0, r7, #0xbb0
	ldrne r1, _0204609C ; =0x020901B0
	cmp r4, #0
	add r6, r0, #0x5000
	ldrneb r0, [r7, #0x5a2]
	cmpne r0, r4
	beq _02045F6C
	ldr r3, _020460A0 ; =gAllocator
	add r2, sp, #0x34
	ldr r0, [r3]
	str r2, [sp, #0x10]
	cmp r0, #0
	moveq r0, #0
	beq _02045F64
	sub r4, r4, #1
	mov r2, #0x24
	mul r7, r4, r2
	str r7, [sp]
	str r2, [sp, #4]
	add r2, sp, #0x10
	str r5, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
_02045F64:
	cmp r0, #0
	addne r6, sp, #0x34
_02045F6C:
	mov r1, #0
	add r0, sp, #0x14
_02045F74:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #8
	blt _02045F74
	mov r7, #0
	add r4, sp, #0x14
_02045F8C:
	mov r0, r5
	mov r2, r7
	cmp r7, #8
	bge _02045FB8
_02045F9C:
	ldr r1, [r4, r2, lsl #2]
	add r2, r2, #1
	add r1, r6, r1, lsl #2
	ldrh r1, [r1, #6]
	cmp r2, #8
	add r0, r0, r1
	blt _02045F9C
_02045FB8:
	cmp r0, #0
	beq _02046010
	bl _ZN6Random5RandBEm
	mov r2, r7
	cmp r7, #7
	bge _02045FF4
_02045FD0:
	ldr r1, [r4, r2, lsl #2]
	add r1, r6, r1, lsl #2
	ldrh r1, [r1, #6]
	sub r0, r0, r1
	cmp r0, #0
	ble _02045FF4
	add r2, r2, #1
	cmp r2, #7
	blt _02045FD0
_02045FF4:
	ldr r1, [r4, r7, lsl #2]
	ldr r0, [r4, r2, lsl #2]
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	str r1, [r4, r2, lsl #2]
	cmp r7, #7
	blt _02045F8C
_02046010:
	ldr r9, _020460A4 ; =gLogicThink
	mov r7, #0
	add r4, sp, #0x14
_0204601C:
	ldr r0, [r4, r7, lsl #2]
	add r0, r6, r0, lsl #2
	ldrh r8, [r0, #4]
	cmp r8, #0
	beq _02046048
	mov r0, r9
	mov r1, r8
	bl FUN_0207290c
	cmp r0, #0
	bne _02046054
	mov r8, r5
_02046048:
	add r7, r7, #1
	cmp r7, #7
	blt _0204601C
_02046054:
	cmp r8, #0
	bne _02046084
	mov r2, #0
	add r1, sp, #0x14
_02046064:
	ldr r0, [r1, r2, lsl #2]
	add r0, r6, r0, lsl #2
	ldrh r8, [r0, #4]
	cmp r8, #0
	bne _02046084
	add r2, r2, #1
	cmp r2, #7
	blt _02046064
_02046084:
	mov r0, r8
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02046090: .word gConfig
_02046094: .word unk_02090188
_02046098: .word unk_02090190
_0204609C: .word unk_020901B0
_020460A0: .word gAllocator
_020460A4: .word gLogicThink
	arm_func_end FUN_02045edc

	arm_func_start FUN_020460a8
FUN_020460a8: ; 0x020460A8
	add r0, r0, #0x5000
	mov r3, #1
	str r3, [r0, #0xba0]
	str r1, [r0, #0xba8]
	str r2, [r0, #0xbac]
	bx lr
	arm_func_end FUN_020460a8

	arm_func_start FUN_020460c0
FUN_020460c0: ; 0x020460C0
	add r0, r0, #0x5000
	ldr r3, [r0, #0xba8]
	str r3, [r1]
	ldr r0, [r0, #0xbac]
	str r0, [r2]
	bx lr
	arm_func_end FUN_020460c0

	arm_func_start FUN_020460d8
FUN_020460d8: ; 0x020460D8
	add r2, r0, #0x5000
	ldr r0, [r2, #0xba0]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r2, #0xba0]
	bx lr
	arm_func_end FUN_020460d8

	arm_func_start FUN_020460f0
FUN_020460f0: ; 0x020460F0
	add r0, r0, #0x5000
	str r1, [r0, #0xba4]
	bx lr
	arm_func_end FUN_020460f0

	arm_func_start FUN_020460fc
FUN_020460fc: ; 0x020460FC
	add r0, r0, #0x5000
	ldr r0, [r0, #0xba4]
	bx lr
	arm_func_end FUN_020460fc

	arm_func_start FUN_02046108
FUN_02046108: ; 0x02046108
	stmfd sp!, {r3, lr}
	cmp r1, #0x11
	moveq r0, #3
	ldmeqfd sp!, {r3, pc}
	ldr lr, _02046154 ; =0x30C30C31
	mov r12, r1, lsr #0x1f
	smull r0, r2, lr, r1
	add r2, r12, r2, asr #2
	mov r3, #0x15
	smull r0, r2, r3, r2
	sub r2, r1, r0
	cmp r2, #0x12
	subge r0, r2, #0x12
	smulllt r0, r1, lr, r1
	ldrlt r0, _02046158 ; =0x0208C390
	addlt r1, r12, r1, asr #2
	ldrlt r0, [r0, r1, lsl #2]
	addlt r0, r2, r0
	ldmfd sp!, {r3, pc}
_02046154: .word 0x30C30C31
_02046158: .word unk_0208C390
	arm_func_end FUN_02046108

	arm_func_start FUN_0204615c
FUN_0204615c: ; 0x0204615C
	ldr r0, _02046174 ; =0x0208C390
	add r2, r1, #1
	ldr r2, [r0, r2, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	sub r0, r2, r0
	bx lr
_02046174: .word unk_0208C390
	arm_func_end FUN_0204615c

	arm_func_start FUN_02046178
FUN_02046178: ; 0x02046178
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046108
	mov r1, r0, asr #2
	add r1, r0, r1, lsr #29
	mov r1, r1, asr #3
	add r2, r4, r1, lsl #3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r1, r1, r0, ror #29
	ldrb r2, [r2, #4]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046178

	arm_func_start FUN_020461b4
FUN_020461b4: ; 0x020461B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046108
	add r0, r4, r0, lsl #3
	ldr r0, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020461b4

	arm_func_start FUN_020461cc
FUN_020461cc: ; 0x020461CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r3
	bl FUN_02046108
	mov r7, r0
	mov r1, r4
	mov r0, r6
	mov r4, r7
	bl FUN_02046108
	cmp r7, r0
	movgt r4, r0
	movgt r0, r7
	cmp r4, r0
	bgt _02046254
	mov r3, #1
_0204620C:
	mov r1, r4, asr #2
	add r1, r4, r1, lsr #29
	mov r12, r1, asr #3
	mov r2, r4, lsr #0x1f
	rsb r1, r2, r4, lsl #29
	add r1, r2, r1, ror #29
	add r12, r6, r12, lsl #3
	mov r1, r3, lsl r1
	ldrb r2, [r12, #4]
	and r1, r1, #0xff
	cmp r5, #0
	orr r1, r2, r1
	strb r1, [r12, #4]
	addne r1, r6, r4, lsl #3
	add r4, r4, #1
	strne r5, [r1, #8]
	cmp r4, r0
	ble _0204620C
_02046254:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020461cc

	arm_func_start FUN_0204625c
FUN_0204625c: ; 0x0204625C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_02046108
	mov r6, r0
	mov r1, r4
	mov r0, r5
	mov r4, r6
	bl FUN_02046108
	cmp r6, r0
	movgt r4, r0
	movgt r0, r6
	cmp r4, r0
	ldmgtfd sp!, {r4, r5, r6, pc}
	mov r12, #1
	mov r3, #0
_0204629C:
	mov r1, r4, asr #2
	add r1, r4, r1, lsr #29
	mov r2, r4, lsr #0x1f
	mov lr, r1, asr #3
	rsb r1, r2, r4, lsl #29
	add r6, r5, lr, lsl #3
	add r1, r2, r1, ror #29
	mvn r2, r12, lsl r1
	add r1, r5, r4, lsl #3
	add r4, r4, #1
	ldrb lr, [r6, #4]
	and r2, r2, #0xff
	cmp r4, r0
	and r2, lr, r2
	strb r2, [r6, #4]
	str r3, [r1, #8]
	ble _0204629C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204625c

	arm_func_start FUN_020462e4
FUN_020462e4: ; 0x020462E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	bl FUN_02046108
	cmp r4, #0
	addne r0, r5, r0, lsl #3
	strne r4, [r0, #8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020462e4

	arm_func_start FUN_02046304
FUN_02046304: ; 0x02046304
	strh r1, [r0, #2]
	bx lr
	arm_func_end FUN_02046304

	arm_func_start FUN_0204630c
FUN_0204630c: ; 0x0204630C
	ldrh r0, [r0, #2]
	bx lr
	arm_func_end FUN_0204630c

	arm_func_start FUN_02046314
FUN_02046314: ; 0x02046314
	str r1, [r0, #0x594]
	cmp r1, #0
	addne r0, r0, #0x5000
	mvnne r1, #0
	strne r1, [r0, #0xb7c]
	strne r1, [r0, #0xb80]
	bx lr
	arm_func_end FUN_02046314

	arm_func_start FUN_02046330
FUN_02046330: ; 0x02046330
	ldr r0, [r0, #0x594]
	bx lr
	arm_func_end FUN_02046330

	arm_func_start FUN_02046338
FUN_02046338: ; 0x02046338
	add r0, r0, #0x37c
	add r0, r0, #0x5800
	bx lr
	arm_func_end FUN_02046338

	arm_func_start FUN_02046344
FUN_02046344: ; 0x02046344
	add r0, r0, #0x1b80
	add r0, r0, #0x4000
	bx lr
	arm_func_end FUN_02046344

	arm_func_start FUN_02046350
FUN_02046350: ; 0x02046350
	str r1, [r0, #0x59c]
	bx lr
	arm_func_end FUN_02046350

	arm_func_start FUN_02046358
FUN_02046358: ; 0x02046358
	ldr r0, [r0, #0x59c]
	bx lr
	arm_func_end FUN_02046358

	arm_func_start FUN_02046360
FUN_02046360: ; 0x02046360
	ldrb r0, [r0, #0x598]
	bx lr
	arm_func_end FUN_02046360

	arm_func_start FUN_02046368
FUN_02046368: ; 0x02046368
	strb r1, [r0, #0x598]
	bx lr
	arm_func_end FUN_02046368

	arm_func_start FUN_02046370
FUN_02046370: ; 0x02046370
	strb r1, [r0, #0x599]
	bx lr
	arm_func_end FUN_02046370

	arm_func_start FUN_02046378
FUN_02046378: ; 0x02046378
	ldrb r0, [r0, #0x599]
	bx lr
	arm_func_end FUN_02046378

	arm_func_start FUN_02046380
FUN_02046380: ; 0x02046380
	stmfd sp!, {r3, lr}
	add r2, r0, #0x85
	add lr, r2, #0x5b00
	mov r12, #0xa
_02046390:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r1, r1, #2
	subs r12, r12, #1
	strb r2, [lr, #1]
	strb r3, [lr], #2
	bne _02046390
	add r0, r0, #0x85
	add r0, r0, #0x5b00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02046380

	arm_func_start FUN_020463b8
FUN_020463b8: ; 0x020463B8
	add r0, r0, #0xf8
	add r0, r0, #0x400
	bx lr
	arm_func_end FUN_020463b8

	arm_func_start FUN_020463c4
FUN_020463c4: ; 0x020463C4
	add r0, r0, #0x5000
	strb r1, [r0, #0xbd5]
	bx lr
	arm_func_end FUN_020463c4

	arm_func_start FUN_020463d0
FUN_020463d0: ; 0x020463D0
	add r0, r0, #0x5000
	ldrb r0, [r0, #0xbd5]
	bx lr
	arm_func_end FUN_020463d0

	arm_func_start FUN_020463dc
FUN_020463dc: ; 0x020463DC
	add r0, r0, #0x5000
	strb r1, [r0, #0xbd4]
	bx lr
	arm_func_end FUN_020463dc

	arm_func_start FUN_020463e8
FUN_020463e8: ; 0x020463E8
	add r0, r0, #0x5000
	ldrb r0, [r0, #0xbd4]
	bx lr
	arm_func_end FUN_020463e8

	.rodata
	.global unk_0208C390
unk_0208C390:
	.byte 0x08, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00
	.byte 0x32, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00
	.byte 0x4D, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00
	.byte 0x5C, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00
	.byte 0x6B, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00
	.byte 0x7C, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00

	.data
	.global unk_0209010C
unk_0209010C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_02090124
unk_02090124:
	.asciz "RPG_CAMERA_DISTANCE"
	.balign 4, 0
	.global unk_02090138
unk_02090138:
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0209013C
unk_0209013C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_02090140
unk_02090140:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global unk_02090148
unk_02090148:
	.asciz "/data_iz/script/rpgencountf.dat"
	.balign 4, 0
	.global unk_02090168
unk_02090168:
	.asciz "/data_iz/script/rpgencountb.dat"
	.balign 4, 0
	.global unk_02090188
unk_02090188:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global unk_02090190
unk_02090190:
	.asciz "/data_iz/script/rpgencountf.dat"
	.balign 4, 0
	.global unk_020901B0
unk_020901B0:
	.asciz "/data_iz/script/rpgencountb.dat"
	.balign 4, 0

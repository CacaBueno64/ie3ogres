
.public _ZN10CAllocator8allocateEm
.public MI_CpuFill8
.public _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
.public _ZN6Random5RandBEm
.public unk_020A0640
.public gAllocator
.public _ZN10CAllocator10deallocateEPv
.public FUN_0207290c
.public gLogicThink
.public FUN_0207273c
.public FUN_0207039c
.public FUN_0206c7dc
.public unk_0209A11C
.public FX_Sqrt

	.include "/macros/function.inc"

	.text
	arm_func_start _ZN15CDungeonManagerC1Ev
_ZN15CDungeonManagerC1Ev: ; 0x020F82B0
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end _ZN15CDungeonManagerC1Ev

	arm_func_start FUN_ov16_020f82bc
FUN_ov16_020f82bc: ; 0x020F82BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x34
	ldr r2, _020F880C ; =0x020A0640
	mov r4, r0
	ldrb r0, [r2, #0x50a]
	mov r9, r1
	mov r6, #1
	subs r8, r0, #1
	mov r7, #0
	bmi _020F82EC
	cmp r8, #0xf
	ble _020F82F0
_020F82EC:
	mov r8, #0
_020F82F0:
	mov r0, r4
	bl FUN_ov16_020f882c
	ldr r5, _020F8810 ; =gAllocator
	ldr r10, _020F8814 ; =0x00000444
	mov r0, r5
	mov r1, r10
	bl _ZN10CAllocator8allocateEm
	mov r1, r7
	mov r2, r10
	str r0, [r4]
	bl MI_CpuFill8
	ldr r0, [r4]
	add r2, r8, r8, lsl #3
	strb r9, [r0, #0x43c]
	ldr r1, [r4]
	ldr r0, [r5]
	str r1, [sp, #0x10]
	add r3, r9, r2
	cmp r0, #0
	ldr r1, _020F8818 ; =0x021187D8
	beq _020F836C
	mov r0, #0x14
	mul r2, r3, r0
	str r2, [sp]
	stmib sp, {r0, r7}
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r5]
	add r2, sp, #0x10
	mov r3, r5
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020F836C:
	add r0, r4, #4
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, _020F8810 ; =gAllocator
	ldrh r1, [r0, #0x10]
	ldr r0, [r3]
	sub r1, r1, #1
	cmp r0, #0
	mov r0, r1, lsl #8
	ldr r1, _020F881C ; =0x021187F4
	beq _020F83B4
	str r0, [sp]
	mov r0, #0x100
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020F83B4:
	add r0, r4, #0x104
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, _020F8810 ; =gAllocator
	ldrh r2, [r0, #0x12]
	ldr r1, [r3]
	mov r0, #0x30
	sub r2, r2, #1
	mul r5, r2, r0
	cmp r1, #0
	ldr r1, _020F8820 ; =0x02118814
	beq _020F83FC
	str r5, [sp]
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020F83FC:
	ldr r1, [r4]
	ldrb r0, [r1]
	strb r0, [r1, #0x43d]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r1, #0x43e]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #0x43f]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	strb r0, [r1, #0x440]
	ldr r2, [r4]
	ldrb r0, [r2, #0x440]
	ldrb r1, [r2, #0x43f]
	cmp r0, r1
	bhs _020F8450
	mov r0, r4
	bl FUN_ov16_020f882c
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F8450:
	ldrb r0, [r2, #0x43e]
	cmp r0, r1
	bls _020F846C
	mov r0, r4
	bl FUN_ov16_020f882c
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F846C:
	str r7, [sp, #0x20]
	str r7, [sp, #0x1c]
	str r7, [sp, #0x18]
	str r7, [sp, #0x14]
_020F847C:
	ldr r0, [r4]
	ldrb r0, [r0, #0x43d]
	bl _ZN6Random5RandBEm
	ldr r1, [r4]
	and r0, r0, #0xff
	str r0, [r1, #0x424]
	ldr r1, [r4]
	ldr r3, _020F8824 ; =0x00000103
	ldrb r0, [r1, #0x43e]
	sub r0, r0, #1
	and r0, r0, #0xff
	str r0, [r1, #0x428]
	ldr r2, [r4]
	ldr r1, [r2, #0x424]
	ldr r0, [r2, #0x428]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strb r7, [r0, #0x25]
	ldr r2, [r4]
	ldr r1, [r2, #0x424]
	ldr r0, [r2, #0x428]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strh r3, [r0, #0x26]
	ldr r2, [r4]
	ldrb r1, [r2, #0x43f]
	ldrb r0, [r2, #0x43e]
	ldr r2, [r2, #0x424]
	sub r0, r1, r0
	subs r5, r2, r0
	add r8, r2, r0
	ldr r0, [r4]
	movmi r5, r7
	ldrb r0, [r0, #0x43d]
	cmp r8, r0
	movgt r8, r0
	cmp r5, r8
	ldreq r0, [r4]
	streq r5, [r0, #0x42c]
	beq _020F8534
	sub r0, r8, r5
	bl _ZN6Random5RandBEm
	add r1, r5, r0
	ldr r0, [r4]
	and r1, r1, #0xff
	str r1, [r0, #0x42c]
_020F8534:
	ldr r0, [r4]
	str r6, [r0, #0x430]
	ldr r0, [r4]
	ldr r2, [r4]
	ldr r1, [r0, #0x42c]
	ldr r0, [r0, #0x424]
	subs r3, r1, r0
	ldrb r1, [r2, #0x43e]
	ldrb r0, [r2, #0x43f]
	rsbmi r3, r3, #0
	sub r1, r1, #1
	add r1, r1, r3
	sub r0, r0, r1
	tst r0, #1
	beq _020F8588
	ldr r0, [r2, #0x42c]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r2, #0x42c]
	addeq r0, r0, #1
	streq r0, [r2, #0x42c]
_020F8588:
	ldr r5, [r4]
	ldr r3, _020F8828 ; =0x00000203
	ldrb r2, [r5, #0x43f]
	ldr r1, [r5, #0x42c]
	ldr r0, [r5, #0x430]
	add r1, r5, r1, lsl #6
	sub r2, r2, #1
	add r0, r1, r0, lsl #2
	strb r2, [r0, #0x25]
	ldr r2, [r4]
	add r5, r3, #0x4e00
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strh r3, [r0, #0x26]
	ldr r2, [r4]
	mov r3, #4
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	strb r6, [r0, #0x24]
	ldr r8, [r4]
	ldr r1, [r8, #0x42c]
	ldr r0, [r8, #0x430]
	ldrb r2, [r8, #0x43f]
	add r1, r8, r1, lsl #6
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	strb r2, [r0, #0x25]
	ldr r2, [r4]
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	strh r5, [r0, #0x26]
	ldr r2, [r4]
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x430]
	add r1, r2, r1, lsl #6
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	strb r3, [r0, #0x24]
	str r7, [sp, #0x30]
	str r7, [sp, #0x2c]
	str r7, [sp, #0x28]
	str r7, [sp, #0x24]
	ldr r2, [r4]
	ldrb r0, [r2, #0x43e]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	ldr r1, [r2, #0x42c]
	ldr r0, [r2, #0x424]
	subs r8, r1, r0
	rsbmi r0, r8, #0
	strpl r8, [sp, #0x28]
	strmi r0, [sp, #0x30]
	ldr r1, [r4]
	cmp r8, #0
	ldrb r0, [r1, #0x43e]
	ldrb r1, [r1, #0x43f]
	rsblt r8, r8, #0
	sub r0, r0, #1
	add r0, r0, r8
	sub r8, r1, r0
	cmp r8, #0
	ble _020F86B8
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
	sub r8, r8, #2
_020F86B8:
	cmp r8, #0
	ble _020F86DC
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
	sub r8, r8, #2
_020F86DC:
	mov r5, #2
	b _020F872C
_020F86E4:
	mov r0, r5
	bl _ZN6Random5RandBEm
	tst r0, #1
	beq _020F8710
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x24]
	str r0, [sp, #0x2c]
	b _020F8728
_020F8710:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
_020F8728:
	sub r8, r8, #2
_020F872C:
	cmp r8, #0
	bgt _020F86E4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x24]
	cmp r1, r0
	ldreq r1, [sp, #0x18]
	ldreq r0, [sp, #0x28]
	cmpeq r1, r0
	ldreq r1, [sp, #0x1c]
	ldreq r0, [sp, #0x2c]
	cmpeq r1, r0
	bne _020F876C
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	beq _020F847C
_020F876C:
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x24
	ldr r2, [r0, #0x424]
	ldr r3, [r0, #0x428]
	mov r0, r4
	bl FUN_ov16_020f8c60
	cmp r0, #0
	bne _020F87B8
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	b _020F847C
_020F87B8:
	ldr r2, [r4]
	mov r0, r4
	ldr r1, [r2, #0x424]
	add r3, r2, #0x24
	ldr r2, [r2, #0x428]
	add r3, r3, r1, lsl #6
	ldrb r1, [r3, r2, lsl #2]
	and r1, r1, #0xfb
	strb r1, [r3, r2, lsl #2]
	bl FUN_ov16_020f9064
	mov r0, r4
	bl FUN_ov16_020f9354
	ldr r2, [r4]
	ldr r1, [r2, #0x424]
	add r0, r2, #0x24
	str r1, [r2, #0x434]
	ldr r1, [r0, #0x404]
	add r0, r2, #0x34
	str r1, [r0, #0x404]
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F880C: .word unk_020A0640
_020F8810: .word gAllocator
_020F8814: .word 0x00000444
_020F8818: .word ov16_021187D8
_020F881C: .word ov16_021187F4
_020F8820: .word ov16_02118814
_020F8824: .word 0x00000103
_020F8828: .word 0x00000203
	arm_func_end FUN_ov16_020f82bc

	arm_func_start FUN_ov16_020f882c
FUN_ov16_020f882c: ; 0x020F882C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F885C ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	mov r1, #0
	add r0, r4, #0x100
	str r1, [r4]
	strh r1, [r0, #0x34]
	ldmfd sp!, {r4, pc}
_020F885C: .word gAllocator
	arm_func_end FUN_ov16_020f882c

	arm_func_start FUN_ov16_020f8860
FUN_ov16_020f8860: ; 0x020F8860
	ldr r0, [r0]
	bx lr
	arm_func_end FUN_ov16_020f8860

	arm_func_start FUN_ov16_020f8868
FUN_ov16_020f8868: ; 0x020F8868
	sub r1, r1, #1
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	bx lr
_020F8878: ; jump table
	b _020F888C ; case 0
	b _020F88A0 ; case 1
	b _020F88B4 ; case 2
	b _020F88C8 ; case 3
	b _020F888C ; case 4
_020F888C:
	ldr r1, [r0]
	ldr r0, [r1, #0x438]
	sub r0, r0, #1
	str r0, [r1, #0x438]
	bx lr
_020F88A0:
	ldr r1, [r0]
	ldr r0, [r1, #0x434]
	add r0, r0, #1
	str r0, [r1, #0x434]
	bx lr
_020F88B4:
	ldr r1, [r0]
	ldr r0, [r1, #0x438]
	add r0, r0, #1
	str r0, [r1, #0x438]
	bx lr
_020F88C8:
	ldr r1, [r0]
	ldr r0, [r1, #0x434]
	sub r0, r0, #1
	str r0, [r1, #0x434]
	bx lr
	arm_func_end FUN_ov16_020f8868

	arm_func_start FUN_ov16_020f88dc
FUN_ov16_020f88dc: ; 0x020F88DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r7, r0
	ldr r2, [r7]
	ldr r1, [r2, #0x434]
	ldr r0, [r2, #0x438]
	add r1, r2, r1, lsl #6
	add r0, r1, r0, lsl #2
	ldrh r0, [r0, #0x26]
	mov r1, #0
	tst r0, #0x4000
	addne r0, r7, #0x100
	strneh r1, [r0, #0x34]
	addne sp, sp, #0x80
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
_020F891C:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #0x20
	blt _020F891C
	mov r6, #1
	add r4, sp, #0
	mov r5, #0
_020F8938:
	mov r0, r5
	mov r2, r6
	cmp r6, #0x20
	bge _020F8964
_020F8948:
	ldr r1, [r4, r2, lsl #2]
	add r2, r2, #1
	add r1, r7, r1, lsl #3
	ldrh r1, [r1, #4]
	cmp r2, #0x20
	add r0, r0, r1
	blt _020F8948
_020F8964:
	cmp r0, #0
	beq _020F89BC
	bl _ZN6Random5RandBEm
	mov r2, r6
	cmp r6, #0x1f
	bge _020F89A0
_020F897C:
	ldr r1, [r4, r2, lsl #2]
	add r1, r7, r1, lsl #3
	ldrh r1, [r1, #4]
	sub r0, r0, r1
	cmp r0, #0
	ble _020F89A0
	add r2, r2, #1
	cmp r2, #0x1f
	blt _020F897C
_020F89A0:
	ldr r1, [r4, r6, lsl #2]
	ldr r0, [r4, r2, lsl #2]
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	str r1, [r4, r2, lsl #2]
	cmp r6, #0x1f
	blt _020F8938
_020F89BC:
	ldr r5, _020F8A10 ; =gLogicThink
	mov r4, #1
	add r6, sp, #0
_020F89C8:
	ldr r0, [r6, r4, lsl #2]
	add r0, r7, r0, lsl #3
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F89EC
	mov r0, r5
	bl FUN_0207290c
	cmp r0, #0
	bne _020F89F8
_020F89EC:
	add r4, r4, #1
	cmp r4, #0x1f
	blt _020F89C8
_020F89F8:
	add r1, sp, #0
	ldr r1, [r1, r4, lsl #2]
	add r0, r7, #0x100
	strh r1, [r0, #0x34]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F8A10: .word gLogicThink
	arm_func_end FUN_ov16_020f88dc

	arm_func_start FUN_ov16_020f8a14
FUN_ov16_020f8a14: ; 0x020F8A14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x19c
	mov r11, r0
	add r0, r11, #0x100
	ldrsh r0, [r0, #0x34]
	mov r7, #0
	add r0, r11, r0, lsl #3
	ldrh r8, [r0, #6]
	cmp r8, #0
	bne _020F8B30
	ldr r4, _020F8B4C ; =gLogicThink
	ldrh r1, [r0, #8]
	add r2, sp, #0
	mov r0, r4
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x19c
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [sp]
	add r5, sp, #0x30
	mov r0, r4
	mov r2, r5
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x19c
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, r7
	ldr r4, _020F8B50 ; =0x0209A11C
	ldr r9, _020F8B54 ; =0x00000FFF
	mov r6, r8
_020F8A94:
	add r0, r5, r6, lsl #3
	ldrh r0, [r0, #0x4c]
	and r0, r0, r9
	mov r0, r0, lsl #0x10
	movs r1, r0, lsr #0x10
	beq _020F8AC0
	ldr r0, [r4]
	mov r2, r7
	bl FUN_0206c7dc
	cmp r0, #0
	addeq r8, r8, #1
_020F8AC0:
	add r6, r6, #1
	cmp r6, #0x20
	blt _020F8A94
	mov r0, r8
	bl _ZN6Random5RandBEm
	ldr r5, _020F8B50 ; =0x0209A11C
	ldr r4, _020F8B54 ; =0x00000FFF
	mov r9, r0
	mov r10, #0
	add r6, sp, #0x30
_020F8AE8:
	add r0, r6, r10, lsl #3
	ldrh r0, [r0, #0x4c]
	and r0, r0, r4
	mov r0, r0, lsl #0x10
	movs r8, r0, lsr #0x10
	beq _020F8B24
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	bl FUN_0206c7dc
	cmp r0, #0
	bne _020F8B24
	cmp r9, #0
	beq _020F8B30
	sub r9, r9, #1
_020F8B24:
	add r10, r10, #1
	cmp r10, #0x20
	blt _020F8AE8
_020F8B30:
	add r0, r11, #0x100
	ldrsh r1, [r0, #0x34]
	mov r0, r8
	add r1, r11, r1, lsl #3
	strh r8, [r1, #6]
	add sp, sp, #0x19c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8B4C: .word gLogicThink
_020F8B50: .word unk_0209A11C
_020F8B54: .word 0x00000FFF
	arm_func_end FUN_ov16_020f8a14

	arm_func_start FUN_ov16_020f8b58
FUN_ov16_020f8b58: ; 0x020F8B58
	add r1, r0, #0x100
	ldrsh r1, [r1, #0x34]
	add r0, r0, r1, lsl #3
	ldrh r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov16_020f8b58

	arm_func_start FUN_ov16_020f8b6c
FUN_ov16_020f8b6c: ; 0x020F8B6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r1, #0
	add r0, sp, #0
_020F8B80:
	str r1, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #8
	blt _020F8B80
	mov r6, #0
	add r4, sp, #0
	mov r5, r6
_020F8B9C:
	mov r0, r5
	mov r12, r6
	cmp r6, #8
	bge _020F8BD0
	mov r1, #6
_020F8BB0:
	ldr r3, [r4, r12, lsl #2]
	add r12, r12, #1
	mla r2, r3, r1, r7
	add r2, r2, #0x100
	ldrh r2, [r2, #4]
	cmp r12, #8
	add r0, r0, r2
	blt _020F8BB0
_020F8BD0:
	cmp r0, #0
	beq _020F8C30
	bl _ZN6Random5RandBEm
	mov r12, r6
	cmp r6, #7
	bge _020F8C14
	mov r1, #6
_020F8BEC:
	ldr r3, [r4, r12, lsl #2]
	mla r2, r3, r1, r7
	add r2, r2, #0x100
	ldrh r2, [r2, #4]
	sub r0, r0, r2
	cmp r0, #0
	ble _020F8C14
	add r12, r12, #1
	cmp r12, #7
	blt _020F8BEC
_020F8C14:
	ldr r1, [r4, r6, lsl #2]
	ldr r0, [r4, r12, lsl #2]
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	str r1, [r4, r12, lsl #2]
	cmp r6, #7
	blt _020F8B9C
_020F8C30:
	ldr r1, [sp]
	mov r0, #6
	mla r0, r1, r0, r7
	add r0, r0, #0x100
	ldrh r2, [r0, #6]
	ldr r1, [r7]
	strh r2, [r1, #0x14]
	ldrh r1, [r0, #8]
	ldr r0, [r7]
	strh r1, [r0, #0x16]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f8b6c

	arm_func_start FUN_ov16_020f8c60
FUN_ov16_020f8c60: ; 0x020F8C60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r0
	ldr r4, [sp, #0x48]
	ldr r0, [r9]
	ldr r6, [sp, #0x4c]
	add r4, r4, #2
	ldrb r7, [r0, #0x43f]
	and r5, r4, #3
	mov r4, #1
	str r6, [sp, #0x4c]
	mov r8, r1
	sub r10, r7, #2
	ldr r1, [sp, #0x4c]
	mov r5, r4, lsl r5
	mov r7, r2
	mov r6, r3
	cmp r1, r10
	and r2, r5, #0xff
	blt _020F8D98
	ldr r5, [r0, #0x42c]
	mov r3, #0
	cmp r5, r7
	ldreq r1, [r0, #0x430]
	subeq r8, r6, #1
	cmpeq r1, r8
	bne _020F8CE8
	add r0, r0, #0x24
	add r5, r0, r5, lsl #6
	ldrb r0, [r5, r1, lsl #2]
	mov r3, r4
	orr r0, r0, #4
	strb r0, [r5, r1, lsl #2]
	b _020F8D40
_020F8CE8:
	sub r1, r7, #1
	cmp r5, r1
	ldreq r4, [r0, #0x430]
	cmpeq r4, r6
	bne _020F8D14
	add r0, r0, #0x24
	add r1, r0, r5, lsl #6
	ldrb r0, [r1, r4, lsl #2]
	mov r3, #8
	orr r0, r0, #2
	b _020F8D3C
_020F8D14:
	add r1, r7, #1
	cmp r5, r1
	ldreq r4, [r0, #0x430]
	cmpeq r4, r6
	bne _020F8D40
	add r0, r0, #0x24
	add r1, r0, r5, lsl #6
	ldrb r0, [r1, r4, lsl #2]
	mov r3, #2
	orr r0, r0, #8
_020F8D3C:
	strb r0, [r1, r4, lsl #2]
_020F8D40:
	cmp r3, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9]
	mov r1, #3
	add r0, r0, r7, lsl #6
	add r0, r0, r6, lsl #2
	strh r1, [r0, #0x26]
	ldr r0, [r9]
	orr r1, r2, r3
	add r0, r0, r7, lsl #6
	add r0, r0, r6, lsl #2
	strb r1, [r0, #0x24]
	ldr r1, [r9]
	mov r0, #1
	add r1, r1, r7, lsl #6
	add r2, r1, r6, lsl #2
	ldr r1, [sp, #0x4c]
	add sp, sp, #0x24
	strb r1, [r2, #0x25]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8D98:
	mvn r1, r2
	and r1, r1, #0xff
	cmp r7, #0
	and r5, r1, #0xf
	beq _020F8DC4
	sub r1, r7, #1
	add r1, r0, r1, lsl #6
	add r1, r1, r6, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8DC8
_020F8DC4:
	and r5, r5, #0xf7
_020F8DC8:
	ldrb r1, [r0, #0x43d]
	sub r1, r1, #1
	cmp r7, r1
	beq _020F8DF0
	add r1, r7, #1
	add r1, r0, r1, lsl #6
	add r1, r1, r6, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8DF4
_020F8DF0:
	and r5, r5, #0xfd
_020F8DF4:
	cmp r6, #0
	beq _020F8E14
	add r3, r0, r7, lsl #6
	sub r1, r6, #1
	add r1, r3, r1, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8E18
_020F8E14:
	and r5, r5, #0xfe
_020F8E18:
	ldrb r1, [r0, #0x43e]
	sub r1, r1, #1
	cmp r6, r1
	beq _020F8E40
	add r3, r0, r7, lsl #6
	add r1, r6, #1
	add r1, r3, r1, lsl #2
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _020F8E44
_020F8E40:
	and r5, r5, #0xfb
_020F8E44:
	mov r4, #0
	mov r3, #1
_020F8E4C:
	ldr r1, [r8, r4, lsl #2]
	cmp r1, #0
	mvneq r1, r3, lsl r4
	andeq r1, r1, #0xff
	add r4, r4, #1
	andeq r5, r5, r1
	cmp r4, #4
	blt _020F8E4C
	cmp r5, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r0, #0x26
	add r4, r0, r7, lsl #6
	mov r3, r6, lsl #2
	ldrh r1, [r4, r3]
	mov r0, #0
	orr r1, r1, #3
	strh r1, [r4, r3]
	ldr r1, [r9]
	add r1, r1, r7, lsl #6
	add r1, r1, r6, lsl #2
	strb r2, [r1, #0x24]
	ldr r1, [r9]
	add r1, r1, r7, lsl #6
	add r2, r1, r6, lsl #2
	ldr r1, [sp, #0x4c]
	strb r1, [r2, #0x25]
	add r1, sp, #0x14
_020F8EC0:
	str r0, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #4
	blt _020F8EC0
	mov r4, #0
	add r11, sp, #0x14
_020F8ED8:
	rsb r0, r4, #4
	ldr r10, [r11, r4, lsl #2]
	bl _ZN6Random5RandBEm
	add r1, r4, r0
	ldr r0, [r11, r1, lsl #2]
	str r0, [r11, r4, lsl #2]
	add r4, r4, #1
	str r10, [r11, r1, lsl #2]
	cmp r4, #3
	blt _020F8ED8
	mov r0, r6, lsl #2
	add r0, r0, r7, lsl #6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	mov r11, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	mvn r0, #0
	mov r10, #0
	str r0, [sp, #8]
_020F8F28:
	add r0, sp, #0x14
	ldr r4, [r0, r10, lsl #2]
	tst r5, r11, lsl r4
	beq _020F8FF0
	mov r1, #0
	cmp r4, #3
	mov r0, r1
	addls pc, pc, r4, lsl #2
	b _020F8F78
_020F8F4C: ; jump table
	b _020F8F5C ; case 0
	b _020F8F64 ; case 1
	b _020F8F6C ; case 2
	b _020F8F74 ; case 3
_020F8F5C:
	ldr r1, [sp, #8]
	b _020F8F78
_020F8F64:
	mov r0, r11
	b _020F8F78
_020F8F6C:
	mov r1, r11
	b _020F8F78
_020F8F74:
	ldr r0, [sp, #8]
_020F8F78:
	ldr r3, [r9]
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	add r2, r2, r0, lsl #6
	add r2, r2, r1, lsl #2
	ldrh r2, [r2, #0x26]
	tst r2, #1
	mvnne r0, r11, lsl r4
	andne r0, r0, #0xff
	andne r5, r5, r0
	bne _020F8FF0
	add r3, r6, r1
	ldr r1, [r8, r4, lsl #2]
	add r2, r7, r0
	sub r1, r1, #1
	str r1, [r8, r4, lsl #2]
	ldr r1, [sp, #0x10]
	str r4, [sp]
	str r1, [sp, #4]
	mov r0, r9
	mov r1, r8
	bl FUN_ov16_020f8c60
	cmp r0, #0
	bne _020F8FFC
	mvn r0, r11, lsl r4
	and r0, r0, #0xff
	and r5, r5, r0
	ldr r0, [r8, r4, lsl #2]
	add r0, r0, #1
	str r0, [r8, r4, lsl #2]
_020F8FF0:
	add r10, r10, #1
	cmp r10, #4
	blt _020F8F28
_020F8FFC:
	cmp r5, #0
	mov r4, #0
	bne _020F9030
	ldr r0, [r9]
	mov r1, r4
	add r0, r0, #0x24
	add r0, r0, r7, lsl #6
	add r0, r0, r6, lsl #2
	mov r2, #4
	bl MI_CpuFill8
	add sp, sp, #0x24
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F9030:
	ldr r1, [r9]
	add r0, sp, #0x14
	add r1, r1, #0x24
	add r3, r1, r7, lsl #6
	ldr r1, [r0, r10, lsl #2]
	mov r0, #1
	mov r1, r0, lsl r1
	ldrb r2, [r3, r6, lsl #2]
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r3, r6, lsl #2]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f8c60

	arm_func_start FUN_ov16_020f9064
FUN_ov16_020f9064: ; 0x020F9064
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	sub sp, sp, #0x400
	mov r4, #0
	str r0, [sp]
	mov r6, r4
	mov r3, r4
	add r1, sp, #0x24
_020F9084:
	ldr r0, [sp]
	mov r5, r3
	ldr r7, [r0]
	add r2, r7, r6, lsl #2
_020F9094:
	add r0, r2, r5, lsl #6
	ldrh r0, [r0, #0x26]
	tst r0, #1
	beq _020F90B4
	tst r0, #0x4000
	addeq r0, r5, r6, lsl #4
	streq r0, [r1, r4, lsl #2]
	addeq r4, r4, #1
_020F90B4:
	add r5, r5, #1
	cmp r5, #0x10
	blt _020F9094
	add r6, r6, #1
	cmp r6, #0x10
	blt _020F9084
	ldrb r0, [r7, #0x440]
	cmp r4, r0
	addge sp, sp, #0x24
	addge sp, sp, #0x400
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F90E0:
	mov r0, r4
	bl _ZN6Random5RandBEm
	add r1, sp, #0x24
	ldr r3, [r1, r0, lsl #2]
	mov r5, #0
	mov r1, r3, lsr #0x1f
	mov r2, r3, asr #3
	rsb r0, r1, r3, lsl #28
	add r0, r1, r0, ror #28
	add r2, r3, r2, lsr #28
	str r0, [sp, #4]
	mov r0, r2, asr #4
	str r0, [sp, #8]
	add r0, sp, #0x14
_020F9118:
	str r5, [r0, r5, lsl #2]
	add r5, r5, #1
	cmp r5, #4
	blt _020F9118
	mov r7, #0
	add r5, sp, #0x14
_020F9130:
	rsb r0, r7, #4
	ldr r6, [r5, r7, lsl #2]
	bl _ZN6Random5RandBEm
	add r1, r7, r0
	ldr r0, [r5, r1, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	str r6, [r5, r1, lsl #2]
	cmp r7, #3
	blt _020F9130
	ldr r0, [sp]
	mov r7, #0
	ldr r12, [r0]
	ldr r0, [sp, #4]
	mov r11, #1
	add r1, r12, r0, lsl #6
	ldr r0, [sp, #8]
	add r2, r1, r0, lsl #2
	ldrb r0, [r2, #0x24]
	mvn r1, #0
	str r0, [sp, #0x10]
_020F9184:
	add r0, sp, #0x14
	ldr r6, [r0, r7, lsl #2]
	ldr r0, [sp, #0x10]
	mov r3, r11, lsl r6
	str r3, [sp, #0xc]
	tst r3, r0
	bne _020F9328
	mov r9, #0
	cmp r6, #3
	mov r8, r9
	addls pc, pc, r6, lsl #2
	b _020F91E0
_020F91B4: ; jump table
	b _020F91C4 ; case 0
	b _020F91CC ; case 1
	b _020F91D4 ; case 2
	b _020F91DC ; case 3
_020F91C4:
	mov r9, r1
	b _020F91E0
_020F91CC:
	mov r8, r11
	b _020F91E0
_020F91D4:
	mov r9, r11
	b _020F91E0
_020F91DC:
	mov r8, r1
_020F91E0:
	ldr r0, [sp, #4]
	adds lr, r0, r8
	bmi _020F9328
	ldrb r0, [r12, #0x43d]
	cmp lr, r0
	bge _020F9328
	ldr r0, [sp, #8]
	adds r5, r0, r9
	bmi _020F9328
	ldrb r0, [r12, #0x43e]
	cmp r5, r0
	bge _020F9328
	add r0, r2, r8, lsl #6
	add r10, r0, r9, lsl #2
	ldrh r3, [r10, #0x26]
	tst r3, #0x4000
	bne _020F9328
	tst r3, #2
	beq _020F924C
	ldrh r0, [r2, #0x26]
	tst r0, #2
	bne _020F9328
	ldrb r10, [r10, #0x25]
	ldrb r0, [r2, #0x25]
	add r0, r0, #1
	cmp r10, r0
	blt _020F9328
_020F924C:
	tst r3, #1
	beq _020F9274
	add r0, r2, r8, lsl #6
	add r0, r0, r9, lsl #2
	ldrb r3, [r0, #0x25]
	ldrb r0, [r2, #0x25]
	subs r0, r3, r0
	rsbmi r0, r0, #0
	cmp r0, #2
	bgt _020F9328
_020F9274:
	ldr r0, [sp, #4]
	add r1, r12, r0, lsl #6
	ldr r0, [sp, #8]
	add r3, r1, r0, lsl #2
	ldr r0, [sp, #0xc]
	ldrb r2, [r3, #0x24]
	and r0, r0, #0xff
	add r1, r6, #2
	orr r0, r2, r0
	strb r0, [r3, #0x24]
	ldr r0, [sp]
	ldr r2, [r0]
	and r0, r1, #3
	add r1, r2, lr, lsl #6
	add r3, r1, r5, lsl #2
	mov r1, #1
	mov r0, r1, lsl r0
	ldrb r2, [r3, #0x24]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, #0x24]
	ldr r0, [sp]
	ldr r3, [r0]
	add r0, r3, lr, lsl #6
	add r0, r0, r5, lsl #2
	ldrh r2, [r0, #0x26]
	tst r2, #1
	bne _020F9334
	ldr r2, [sp, #4]
	add r3, r3, r2, lsl #6
	ldr r2, [sp, #8]
	add r2, r3, r2, lsl #2
	ldrb r6, [r2, #0x25]
	add r2, sp, #0x24
	add r3, lr, r5, lsl #4
	add r6, r6, #1
	strb r6, [r0, #0x25]
	ldr r0, [sp]
	str r3, [r2, r4, lsl #2]
	ldr r0, [r0]
	add r4, r4, #1
	add r0, r0, lr, lsl #6
	add r0, r0, r5, lsl #2
	strh r1, [r0, #0x26]
	b _020F9334
_020F9328:
	add r7, r7, #1
	cmp r7, #4
	blt _020F9184
_020F9334:
	ldr r0, [sp]
	ldr r0, [r0]
	ldrb r0, [r0, #0x440]
	cmp r4, r0
	blt _020F90E0
	add sp, sp, #0x24
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f9064

	arm_func_start FUN_ov16_020f9354
FUN_ov16_020f9354: ; 0x020F9354
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x200
	mov r7, r0
	ldr r3, [r7]
	mov r4, #0
	ldrb r5, [r3, #4]
	cmp r5, #0
	ble _020F9390
	mov r2, #0x1000
	add r0, sp, #0
_020F937C:
	mov r1, r4, lsl #1
	add r4, r4, #1
	strh r2, [r0, r1]
	cmp r4, r5
	blt _020F937C
_020F9390:
	ldrb r0, [r3, #3]
	cmp r4, r0
	bge _020F93B8
	mov r3, #0x2000
	add r1, sp, #0
_020F93A4:
	mov r2, r4, lsl #1
	add r4, r4, #1
	strh r3, [r1, r2]
	cmp r4, r0
	blt _020F93A4
_020F93B8:
	sub r1, r0, #1
	cmp r1, #0
	mov r6, #0
	ble _020F940C
	add r4, sp, #0
_020F93CC:
	mov r1, r6, lsl #1
	sub r0, r0, r6
	ldrh r5, [r4, r1]
	bl _ZN6Random5RandBEm
	add r1, r6, r0
	ldr r0, [r7]
	mov r12, r1, lsl #1
	ldrb r0, [r0, #3]
	mov r2, r6, lsl #1
	ldrh r3, [r4, r12]
	add r6, r6, #1
	sub r1, r0, #1
	strh r3, [r4, r2]
	strh r5, [r4, r12]
	cmp r6, r1
	blt _020F93CC
_020F940C:
	mov r6, #0
	mov r5, r6
	add r1, sp, #0
	mov r4, r6
_020F941C:
	mov r12, r4
_020F9420:
	ldr r0, [r7]
	add r0, r0, r5, lsl #2
	add r3, r0, r12, lsl #6
	ldrh r2, [r3, #0x26]
	tst r2, #1
	beq _020F9450
	tst r2, #0x4000
	moveq r0, r6, lsl #1
	ldreqh r0, [r1, r0]
	addeq r6, r6, #1
	orreq r0, r2, r0
	streqh r0, [r3, #0x26]
_020F9450:
	add r12, r12, #1
	cmp r12, #0x10
	blt _020F9420
	add r5, r5, #1
	cmp r5, #0x10
	blt _020F941C
	add sp, sp, #0x200
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f9354

	.section .init, 4
	arm_func_start FUN_ov16_02117e70
FUN_ov16_02117e70: ; 0x02117E70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117EB4 ; =0x021187C0
	str r0, [r4, #0x10]
	ldr r0, _02117EB8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117EBC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117EB4: .word ov16_021187C0
_02117EB8: .word 0x00009CCD
_02117EBC: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117e70

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117e70

	.data
	.global ov16_021187C0
ov16_021187C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_021187D8
ov16_021187D8:
	.asciz "/data_iz/script/dgncrs.dat"
	.balign 4, 0
	.global ov16_021187F4
ov16_021187F4:
	.asciz "/data_iz/script/dgnmatch.dat"
	.balign 4, 0
	.global ov16_02118814
ov16_02118814:
	.asciz "/data_iz/script/dgntreasure.dat"
	.balign 4, 0

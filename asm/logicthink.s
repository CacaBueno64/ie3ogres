
	.include "/macros/function.inc"
	.include "/include/logicthink.inc"

    .text
	arm_func_start FUN_02049a40
FUN_02049a40: ; 0x02049A40
	cmp r1, #4
	moveq r0, #4
	bxeq lr
	cmp r1, #5
	moveq r0, #3
	bxeq lr
	cmp r1, #6
	moveq r0, #2
	bxeq lr
	mov r0, #1
	cmp r1, #7
	movne r0, #0
	bx lr
	arm_func_end FUN_02049a40

	arm_func_start FUN_02049a74
FUN_02049a74: ; 0x02049A74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	mov r5, r2
	ldrb r2, [r4, #2]
	ldrb r12, [r4]
	mov r3, #0
	cmp r2, #0xa
	moveq r3, #1
	cmp r12, #0xa
	addls pc, pc, r12, lsl #2
	b _02049BB4
_02049AA0: ; jump table
	b _02049ACC ; case 0
	b _02049AD4 ; case 1
	b _02049AE8 ; case 2
	b _02049AFC ; case 3
	b _02049B20 ; case 4
	b _02049B20 ; case 5
	b _02049B20 ; case 6
	b _02049B20 ; case 7
	b _02049B6C ; case 8
	b _02049B84 ; case 9
	b _02049B9C ; case 10
_02049ACC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02049AD4:
	ldrh r0, [r4, #4]
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049AE8:
	ldrh r0, [r4, #4]
	cmp r5, r0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049AFC:
	ldrh r0, [r4, #4]
	cmp r5, r0
	blt _02049B18
	ldrh r0, [r4, #6]
	cmp r5, r0
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, pc}
_02049B18:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B20:
	cmp r3, #0
	cmpeq r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r12
	bl FUN_02049a40
	cmp r0, #0
	mov r2, #0
	ble _02049B64
_02049B44:
	add r1, r4, r2, lsl #1
	ldrh r1, [r1, #4]
	cmp r5, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, r0
	blt _02049B44
_02049B64:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B6C:
	ldr r3, [sp, #0x10]
	bl FUN_0204f02c
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B84:
	ldr r3, [sp, #0x10]
	bl FUN_0204f02c
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049B9C:
	ldr r3, [sp, #0x10]
	bl FUN_0204f02c
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02049BB4:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02049a74

	arm_func_start FUN_02049bbc
FUN_02049bbc: ; 0x02049BBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r9, r1
	mov r5, r2
	mov r6, r0
	cmpne r5, #0
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_0204b1b8
	mov r8, r0
	cmp r8, #1
	bne _02049C14
	mov r0, r9
	bl FUN_0206cbf8
	mov r7, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r7, r0
	beq _02049C98
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C14:
	cmp r8, #5
	mov r0, r9
	bne _02049C38
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _02049C98
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C38:
	bl FUN_0206cbf8
	mov r7, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r8, #2
	bne _02049C78
	mov r0, r9
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	bne _02049C98
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C78:
	cmp r8, #3
	bne _02049C98
	mov r0, r9
	mov r1, r5
	bl FUN_ov16_020f0728
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049C98:
	ldrb r0, [r4, #2]
	mov r8, #1
	cmp r0, #0xe
	moveq r8, #6
	beq _02049CB4
	cmp r0, #0xd
	moveq r8, #6
_02049CB4:
	cmp r8, #0
	mov r7, #0
	ble _02049D04
_02049CC0:
	ldrb r2, [r4, #2]
	mov r0, r6
	mov r1, r5
	mov r3, r7
	bl FUN_0204f02c
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r7, [sp]
	bl FUN_02049a74
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r7, r7, #1
	cmp r7, r8
	blt _02049CC0
_02049D04:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049bbc

	arm_func_start FUN_02049d0c
FUN_02049d0c: ; 0x02049D0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r5, sp, #0
	mov r7, #0
	movs r4, r1
	mov r9, r0
	mov r6, r2
	mov r8, r3
	strh r7, [r5]
	strh r7, [r5, #2]
	beq _02049D48
	mov r0, r4
	mov r1, r8
	bl FUN_0206cdf8
	cmp r6, r0
	beq _02049D50
_02049D48:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049D50:
	mov r0, r4
	mov r1, r8
	mov r2, r7
	mov r3, r7
	bl FUN_0206d150
	mov r0, r9
	mov r1, r6
	bl FUN_0204a2c4
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049D8C:
	cmp r7, r8
	beq _02049DEC
	mov r0, r4
	mov r1, r7
	bl FUN_0206cdf8
	cmp r6, r0
	bne _02049DEC
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl FUN_0206ce24
	mov r5, #1
	mov r6, r0
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl FUN_0206ce24
	mov r3, r0
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl FUN_0206d150
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02049DEC:
	add r7, r7, #1
	cmp r7, #6
	blt _02049D8C
	ldrh r2, [sp]
	ldrh r3, [sp, #2]
	mov r0, r4
	mov r1, r8
	bl FUN_0206d150
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049d0c

	arm_func_start FUN_02049e14
FUN_02049e14: ; 0x02049E14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r8, r1
	mov r9, r0
	mov r7, r2
	mvn r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r3, #0
	movne r5, #0
	movne r6, #4
	moveq r5, #4
	moveq r6, #6
	cmp r5, r6
	bge _02049E80
_02049E4C:
	mov r0, r8
	mov r1, r5
	bl FUN_0206cdf8
	cmp r0, r7
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	bge _02049E74
	cmp r0, #0
	moveq r4, r5
_02049E74:
	add r5, r5, #1
	cmp r5, r6
	blt _02049E4C
_02049E80:
	cmp r4, #0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl FUN_02049ee8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049e14

	arm_func_start FUN_02049ea4
FUN_02049ea4: ; 0x02049EA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r0, r1
	mov r1, r4
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	movs r1, r0
	beq _02049EE0
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02049ee8
	mov r4, r0
_02049EE0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02049ea4

	arm_func_start FUN_02049ee8
FUN_02049ee8: ; 0x02049EE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r5
	bl FUN_0204a2c4
	movs r2, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r6
	mov r3, #1
	bl FUN_02049fc8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #4
	cmpne r4, #5
	beq _02049F84
	mov r1, r5, lsl #0x10
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_0206cfd0
	movs r9, r0
	beq _02049FA0
	mov r8, #0
_02049F5C:
	mov r0, r6
	mov r1, r8
	bl FUN_0206cdf8
	cmp r5, r0
	moveq r4, r8
	beq _02049FA0
	add r8, r8, #1
	cmp r8, #4
	blt _02049F5C
	b _02049FA0
_02049F84:
	mov r2, r5, lsl #0x10
	mov r0, r6
	mov r1, r4
	mov r2, r2, lsr #0x10
	mov r3, #1
	bl FUN_0206ceac
	mov r9, r0
_02049FA0:
	cmp r9, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_02049d0c
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02049ee8

	arm_func_start FUN_02049fc8
FUN_02049fc8: ; 0x02049FC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldrb r2, [r2, #7]
	mov r8, r0
	mov r7, r1
	cmp r2, #0
	mov r5, r3
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r4, sp, #0
	mov r1, r4
	bl FUN_0204a1e0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl FUN_0204b1b8
	cmp r0, #1
	bne _0204A038
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r4
	bl FUN_02049bbc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204A038:
	cmp r5, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r5, r6
_0204A050:
	mov r0, r8
	mov r1, r5
	bl FUN_0204bbd0
	mov r2, r0
	mov r0, r8
	mov r1, r7
	mov r3, r4
	bl FUN_02049bbc
	cmp r0, #0
	beq _0204A08C
	mov r0, r4
	add r6, r6, #1
	bl FUN_0204b1c8
	cmp r6, r0
	bge _0204A098
_0204A08C:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0204A050
_0204A098:
	add r0, sp, #0
	bl FUN_0204b1c8
	cmp r6, r0
	movge r0, #1
	movlt r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02049fc8

	arm_func_start FUN_0204a0b4
FUN_0204a0b4: ; 0x0204A0B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r7, r1
	mov r5, r3
	mov r1, r6
	mov r8, r0
	mov r9, #0
	bl FUN_0204a2c4
	mov r4, r0
	cmp r5, #0
	movne r0, #1
	strne r0, [r5]
	cmp r4, #0
	beq _0204A118
	ldrb r0, [r4]
	cmp r0, #0
	beq _0204A10C
	ldrsh r0, [r4, #4]
	cmp r0, #0
	movge r0, #1
	bge _0204A110
_0204A10C:
	mov r0, #0
_0204A110:
	cmp r0, #0
	bne _0204A130
_0204A118:
	cmp r5, #0
	movne r0, #3
	strne r0, [r5]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0204A130:
	mov r0, r7
	bl FUN_0206cc84
	mov r10, r0
	mov r0, r4
	mov r1, r7
	bl FUN_0204b114
	cmp r10, r0
	bge _0204A168
	cmp r5, #0
	movne r0, #4
	strne r0, [r5]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0204A168:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0204A1CC
	mov r4, #0
_0204A178:
	mov r0, r7
	mov r1, r4
	bl FUN_0206cdf8
	cmp r6, r0
	bne _0204A1C0
	add r3, sp, #0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_0204a318
	cmp r0, #0
	bne _0204A1CC
	cmp r5, #0
	movne r0, #8
	strne r0, [r5]
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0204A1C0:
	add r4, r4, #1
	cmp r4, #6
	blt _0204A178
_0204A1CC:
	cmp r5, #0
	strne r9, [r5]
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204a0b4

	arm_func_start FUN_0204a1e0
FUN_0204a1e0: ; 0x0204A1E0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r2
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, r4
	bl FUN_0204a2a0
	cmp r0, #0
	beq _0204A23C
	ldr r1, [sp, #0x1c]
	mov r2, #0xc
	bl MI_CpuCopy8
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0204A23C:
	ldr r3, _0204A298 ; =gAllocator
	ldr r1, _0204A29C ; =0x020904D8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0204A27C
	mov r2, #0xc
	mul r12, r4, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x1c
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_0204A27C:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0204A298: .word gAllocator
_0204A29C: .word unk_020904D8
	arm_func_end FUN_0204a1e0

	arm_func_start FUN_0204a2a0
FUN_0204a2a0: ; 0x0204A2A0
	ldr r2, [r0, #0x808]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0x40
	movhs r0, #0
	movlo r0, #0xc
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0204a2a0

	arm_func_start FUN_0204a2c4
FUN_0204a2c4: ; 0x0204A2C4
	cmp r1, #0x200
	movhs r0, #0
	ldrlo r2, [r0, #0x7d4]
	movlo r0, #0x24
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0204a2c4

	arm_func_start FUN_0204a2dc
FUN_0204a2dc: ; 0x0204A2DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	mov r1, r2
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_0204a2c4
	cmp r0, #0
	ldrneb r0, [r0, #0xa]
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204a2dc

	arm_func_start FUN_0204a318
FUN_0204a318: ; 0x0204A318
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
_0204A340:
	mov r0, r7
	mov r1, r4
	bl FUN_0206cdf8
	cmp r6, r0
	beq _0204A360
	add r4, r4, #1
	cmp r4, #6
	blt _0204A340
_0204A360:
	cmp r4, #6
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r12, #1
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r12, [sp]
	bl FUN_0204a394
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204a318

	arm_func_start FUN_0204a394
FUN_0204a394: ; 0x0204A394
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	mov r9, r3
	movs r10, r1
	mov r11, r0
	ldr r8, [sp, #0x98]
	str r2, [sp, #0xc]
	cmpne r9, #0
	mov r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strneh r0, [r9, #2]
	ldrneh r0, [r9, #2]
	ldr r1, [sp, #0xc]
	strneh r0, [r9]
	mov r0, r10
	bl FUN_0206cdf8
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	mov r0, r11
	bl FUN_0204a2c4
	movs r5, r0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r7, r6
	ble _0204A4C4
_0204A41C:
	ldr r1, [sp, #0xc]
	mov r0, r10
	mov r2, r7
	bl FUN_0206ce24
	cmp r0, #0
	beq _0204A4B4
	ldrb r3, [r5, #0xa]
	mov r2, #0
	cmp r3, #0
	ble _0204A460
_0204A444:
	mov r1, r2, lsl #1
	ldrh r1, [r9, r1]
	cmp r0, r1
	beq _0204A460
	add r2, r2, #1
	cmp r2, r3
	blt _0204A444
_0204A460:
	cmp r2, r3
	bne _0204A4B4
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _0204A4B4
	cmp r8, #0
	beq _0204A48C
	bl FUN_0206d688
	cmp r0, #0
	beq _0204A4B4
_0204A48C:
	mov r0, r4
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	strh r0, [r9, r1]
	ldrb r0, [r5, #0xa]
	add r6, r6, #1
	cmp r6, r0
	addeq sp, sp, #0x74
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204A4B4:
	ldrb r0, [r5, #0xa]
	add r7, r7, #1
	cmp r7, r0
	blt _0204A41C
_0204A4C4:
	cmp r8, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xb]
	cmp r0, #0x51
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0xf]
	cmp r0, #0x51
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_0206d688
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _0204A740 ; 0x02099EF0
	ldr r0, [r8]
	cmp r0, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	mov r7, r4
_0204A534:
	mov r0, r11
	mov r1, r7
	bl FUN_0204bbd0
	cmp r10, r0
	bne _0204A55C
	ldr r0, [r8]
	mov r1, r7
	mov r2, #0
	bl FUN_ov132_02143088
	mov r4, r0
_0204A55C:
	add r7, r7, #1
	cmp r7, #0x16
	blt _0204A534
	cmp r4, #0
	addeq sp, sp, #0x74
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, sp, #0x1c
	str r1, [sp]
	ldr r0, _0204A744 ; =0x00060001
	add r7, sp, #0x48
	str r0, [sp, #4]
	ldr r0, _0204A740 ; 0x02099EF0
	str r10, [sp, #8]
	ldr r0, [r0]
	mov r1, r4
	mov r3, r7
	mov r2, #0xb
	bl FUN_ov132_0213f1d8
	str r0, [sp, #0x14]
	cmp r0, #0
	mov r4, #0
	ble _0204A5D0
_0204A5B8:
	ldr r0, [r7, r4, lsl #2]
	bl FUN_ov16_020efa80
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0204A5B8
_0204A5D0:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0204A5E8
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0204A734
_0204A5E8:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	ble _0204A734
_0204A5FC:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x48
	ldr r0, [r1, r0, lsl #2]
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _0204A71C
	bl FUN_0206cc00
	mov r4, r0
	mov r0, r10
	bl FUN_0206cc00
	cmp r4, r0
	beq _0204A71C
	ldrb r0, [r5, #0xa]
	mov r7, #0
	cmp r0, #0
	ble _0204A66C
	ldr r4, _0204A748 ; =0x00000FFF
_0204A640:
	mov r0, r8
	bl FUN_0206cc00
	mov r1, r7, lsl #1
	ldrh r1, [r9, r1]
	and r1, r1, r4
	cmp r1, r0
	beq _0204A66C
	ldrb r0, [r5, #0xa]
	add r7, r7, #1
	cmp r7, r0
	blt _0204A640
_0204A66C:
	ldrb r0, [r5, #0xa]
	cmp r7, r0
	bne _0204A71C
	ldrh r0, [r9]
	cmp r0, #0
	bne _0204A6C0
	mov r4, #0
	str r4, [sp]
	mov r4, #1
	ldr r2, [sp, #0x18]
	mov r0, r11
	mov r1, r10
	mov r3, r8
	str r4, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	bne _0204A71C
	mov r0, r8
	bl FUN_0206cbf8
	strh r0, [r9]
	b _0204A704
_0204A6C0:
	ldrh r0, [r9, #2]
	cmp r0, #0
	bne _0204A704
	mov r4, #0
	str r4, [sp]
	mov r4, #2
	ldr r2, [sp, #0x18]
	mov r0, r11
	mov r1, r10
	mov r3, r8
	str r4, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	bne _0204A71C
	mov r0, r8
	bl FUN_0206cbf8
	strh r0, [r9, #2]
_0204A704:
	ldrb r0, [r5, #0xa]
	add r6, r6, #1
	cmp r6, r0
	addeq sp, sp, #0x74
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204A71C:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _0204A5FC
_0204A734:
	mov r0, #0
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204A740: .word gUtilGame
_0204A744: .word 0x00060001
_0204A748: .word 0x00000FFF
	arm_func_end FUN_0204a394

	arm_func_start FUN_0204a74c
FUN_0204a74c: ; 0x0204A74C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r1, r2
	mov r4, r3
	bl FUN_0206cdf8
	ldrb r1, [sp, #0x18]
	mov r2, r0
	ldr r12, [sp, #0x1c]
	str r1, [sp]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp, #4]
	bl FUN_0204a798
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204a74c

	arm_func_start FUN_0204a798
FUN_0204a798: ; 0x0204A798
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	cmp r1, #0
	mov r10, r2
	mov r8, r3
	mov r7, #0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r1
	bl FUN_0206cbf8
	mov r4, r0
	mov r0, r8
	bl FUN_0206cbf8
	cmp r4, r0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r10
	bl FUN_0204a2c4
	movs r4, r0
	moveq r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	moveq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _0204A82C
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204A82C:
	ldr r0, [sp, #0x24]
	cmp r0, #1
	ldreqb r5, [r4, #0xb]
	ldreqsh r6, [r4, #0xc]
	beq _0204A84C
	cmp r0, #2
	ldreqb r5, [r4, #0xf]
	ldreqsh r6, [r4, #0x10]
_0204A84C:
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0x51
	mov r0, r9
	bne _0204A884
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl FUN_0204f02c
	mov r7, #1
	cmp r0, #0
	moveq r7, #0
	b _0204A908
_0204A884:
	mov r1, r5
	bl FUN_0204ef90
	cmp r0, #0
	beq _0204A8E8
	mov r10, #1
	cmp r5, #0xe
	moveq r10, #6
	beq _0204A8AC
	cmp r5, #0xd
	moveq r10, #6
_0204A8AC:
	cmp r10, #0
	mov r4, #0
	ble _0204A908
_0204A8B8:
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204f02c
	cmp r6, r0
	moveq r7, #1
	beq _0204A908
	add r4, r4, #1
	cmp r4, r10
	blt _0204A8B8
	b _0204A908
_0204A8E8:
	mov r7, #0
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r7
	bl FUN_0204f02c
	cmp r0, r6
	movge r7, #1
_0204A908:
	mov r0, #4
	cmp r7, #0
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204a798

	arm_func_start FUN_0204a918
FUN_0204a918: ; 0x0204A918
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r6, r2
	movs r7, r1
	cmpne r6, #0
	mov r8, r0
	mov r5, r3
	mov r9, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r6
	bl FUN_0204a2c4
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, r9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	moveq r5, r9
	beq _0204A9B8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r9, [sp]
	mov r12, #1
	str r12, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_0206cbf8
	mov r5, r0
_0204A9B8:
	ldrb r0, [r4, #0xa]
	mov r4, #0
	cmp r0, #2
	bne _0204AA0C
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _0204AA0C
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r4, [sp]
	mov r8, #2
	str r8, [sp, #4]
	bl FUN_0204a798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x28]
	bl FUN_0206cbf8
	mov r4, r0
_0204AA0C:
	mov r9, #0
	mov r8, r9
_0204AA14:
	mov r0, r7
	mov r1, r8
	bl FUN_0206cdf8
	cmp r6, r0
	bne _0204AA40
	mov r0, r7
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0206d150
	add r9, r9, #1
_0204AA40:
	add r8, r8, #1
	cmp r8, #6
	blt _0204AA14
	mov r0, #1
	cmp r9, #0
	movle r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0204a918

	arm_func_start FUN_0204aa60
FUN_0204aa60: ; 0x0204AA60
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r6, r0
	mov r4, r3
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, r5
	mov r1, r2
	bl FUN_0206cdf8
	ldr r12, [sp, #0x18]
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_0204a918
	ldr r0, _0204AAE4 ; =0x020A0640
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	beq _0204AAD8
	ldrsh r3, [r5, #0x94]
	cmp r3, #0
	blt _0204AAD8
	cmp r3, #0x20
	ldrlt r2, [r0, #0x78]
	movlt r1, #1
	orrlt r1, r2, r1, lsl r3
	strlt r1, [r0, #0x78]
_0204AAD8:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0204AAE4: .word unk_020A0640
	arm_func_end FUN_0204aa60

	arm_func_start FUN_0204aae8
FUN_0204aae8: ; 0x0204AAE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, #0
	mov r9, r3
	mov r11, r1
	mov r10, r2
	mov r5, r4
	mov r2, r4
	cmp r9, #0
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	mov r0, r4
	mov r1, r4
	ble _0204AB2C
_0204AB1C:
	str r1, [r10, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r9
	blt _0204AB1C
_0204AB2C:
	cmp r7, #0
	mov r1, #0
	ble _0204AB48
_0204AB38:
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r7
	blt _0204AB38
_0204AB48:
	mov r6, #0
_0204AB4C:
	mov r0, r11
	mov r1, r6
	bl FUN_0206cdf8
	cmp r4, r9
	strlt r0, [r10, r4, lsl #2]
	add r6, r6, #1
	addlt r4, r4, #1
	cmp r6, #4
	blt _0204AB4C
	cmp r6, #6
	bge _0204AB9C
_0204AB78:
	mov r0, r11
	mov r1, r6
	bl FUN_0206cdf8
	cmp r5, r7
	strlt r0, [r8, r5, lsl #2]
	add r6, r6, #1
	addlt r5, r5, #1
	cmp r6, #6
	blt _0204AB78
_0204AB9C:
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204aae8

	arm_func_start FUN_0204aba4
FUN_0204aba4: ; 0x0204ABA4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	cmp r1, #0
	ldr lr, [sp, #0x10]
	ldr r12, [sp, #0x14]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, #0
	bne _0204ABF8
	cmp r3, #0
	mov r2, lr
	mov r3, #0
	str r12, [sp]
	bne _0204ABEC
	bl FUN_0204aeb0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204ABEC:
	bl FUN_0204aed8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204ABF8:
	cmp r2, #2
	bne _0204AC20
	mov r2, #0x40
	str r2, [sp]
	mov r3, lr
	mov r2, #0
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204AC20:
	cmp r3, #0
	mov r2, lr
	mov r3, #0
	str r12, [sp]
	bne _0204AC40
	bl FUN_0204af00
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0204AC40:
	bl FUN_0204af28
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204aba4

	arm_func_start FUN_0204ac4c
FUN_0204ac4c: ; 0x0204AC4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, #0
	mov r10, r0
	mov r9, r1
	add r4, sp, #8
	mov r7, #0x20
	mov r6, r8
	mov r5, #7
_0204AC70:
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r8
	str r6, [sp, #4]
	bl FUN_0204ad5c
	movs r2, r0
	addeq sp, sp, #0xc
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r9
	mov r3, r4
	bl FUN_0204a0b4
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r8, r8, #1
	cmp r8, #6
	blt _0204AC70
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204ac4c

	arm_func_start FUN_0204acd4
FUN_0204acd4: ; 0x0204ACD4
	tst r3, #1
	beq _0204ACEC
	mov r0, #1
	cmp r2, #0
	movne r0, #2
	bx lr
_0204ACEC:
	mov r0, #3
	cmp r2, #0
	movne r0, #2
	bx lr
	arm_func_end FUN_0204acd4

	arm_func_start FUN_0204acfc
FUN_0204acfc: ; 0x0204ACFC
	tst r3, #1
	beq _0204AD14
	mov r0, #0xc
	cmp r2, #0
	movne r0, #0xb
	bx lr
_0204AD14:
	mov r0, #0xa
	cmp r2, #0
	movne r0, #0xb
	bx lr
	arm_func_end FUN_0204acfc

	arm_func_start FUN_0204ad24
FUN_0204ad24: ; 0x0204AD24
	tst r3, #0x10
	beq _0204AD3C
	mov r0, #0x16
	cmp r2, #0
	movne r0, #0x17
	bx lr
_0204AD3C:
	mov r0, #0x14
	cmp r2, #0
	movne r0, #0x15
	bx lr
	arm_func_end FUN_0204ad24

	arm_func_start FUN_0204ad4c
FUN_0204ad4c: ; 0x0204AD4C
	mov r0, #0x1e
	cmp r2, #0
	movne r0, #0x1f
	bx lr
	arm_func_end FUN_0204ad4c

	arm_func_start FUN_0204ad5c
FUN_0204ad5c: ; 0x0204AD5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r6, [sp, #0x30]
	mov r4, #0
	ldr r9, [sp, #0x34]
	str r0, [sp]
	mov r10, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r5, r4
	and r11, r6, #0x40
	and r8, r6, #0x20
_0204AD8C:
	mov r0, r10
	mov r1, r5
	bl FUN_0206cdf8
	movs r6, r0
	beq _0204AE94
	ldr r0, [sp]
	mov r1, r6
	bl FUN_0204a2c4
	movs r7, r0
	beq _0204AE94
	cmp r9, #0
	bne _0204ADD0
	mov r0, r10
	mov r1, r5
	bl FUN_0206d194
	cmp r0, #0
	bne _0204AE94
_0204ADD0:
	cmp r11, #0
	beq _0204AE38
	ldr r0, _0204AEAC ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2f]
	ldrb r0, [r0, #0x2e]
	cmp r0, #1
	bne _0204AE20
	ldrb r0, [r7, #0x13]
	tst r0, #4
	movne r2, #1
	moveq r2, #0
	cmp r2, #1
	beq _0204AE20
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0204AE94
_0204AE20:
	cmp r1, #1
	bne _0204AE7C
	ldrb r0, [r7, #0x13]
	tst r0, #8
	beq _0204AE94
	b _0204AE7C
_0204AE38:
	cmp r8, #0
	beq _0204AE6C
	ldrb r0, [r7]
	cmp r0, #7
	bne _0204AE5C
	ldrb r0, [r7, #0x13]
	tst r0, #1
	movne r0, #1
	bne _0204AE60
_0204AE5C:
	mov r0, #0
_0204AE60:
	cmp r0, #1
	beq _0204AE7C
	b _0204AE94
_0204AE6C:
	ldrb r1, [r7]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0204AE94
_0204AE7C:
	ldr r0, [sp, #8]
	cmp r4, r0
	addeq sp, sp, #0xc
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, r4, #1
_0204AE94:
	add r5, r5, #1
	cmp r5, #6
	blt _0204AD8C
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204AEAC: .word gUtilGame
	arm_func_end FUN_0204ad5c

	arm_func_start FUN_0204aeb0
FUN_0204aeb0: ; 0x0204AEB0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #5
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204aeb0

	arm_func_start FUN_0204aed8
FUN_0204aed8: ; 0x0204AED8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #6
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204aed8

	arm_func_start FUN_0204af00
FUN_0204af00: ; 0x0204AF00
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #7
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204af00

	arm_func_start FUN_0204af28
FUN_0204af28: ; 0x0204AF28
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrb r12, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #8
	str r12, [sp, #4]
	bl FUN_0204ad5c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204af28

	arm_func_start FUN_0204af50
FUN_0204af50: ; 0x0204AF50
	ldr r0, [r0, #0x810]
	cmp r0, #0
	ldrnesb r0, [r0, r1]
	moveq r0, #0
	bx lr
	arm_func_end FUN_0204af50

	arm_func_start FUN_0204af64
FUN_0204af64: ; 0x0204AF64
	ldr r3, [r0, #0x810]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0x7f
	movgt r2, #0x7f
	mvn r0, #0x7e
	cmp r2, r0
	movlt r2, r0
	strb r2, [r3, r1]
	mov r0, #1
	bx lr
	arm_func_end FUN_0204af64

	arm_func_start FUN_0204af94
FUN_0204af94: ; 0x0204AF94
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r0, r1
	mov r1, r4
	mov r5, r2
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0x200
	movhs r0, #0
	ldrlo r1, [r0, #0x88]
	movlo r0, #1
	strloh r5, [r1, #0x32]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204af94

	arm_func_start FUN_0204afd0
FUN_0204afd0: ; 0x0204AFD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r0, r1
	mov r1, r6
	mov r4, r2
	mov r7, r3
	bl FUN_ov16_020efa9c
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r0, r6, #1
	cmp r4, r0
	bne _0204B054
	mov r4, #1
_0204B004:
	mov r0, r5
	mov r1, r6
	bl FUN_0206cdf8
	cmp r0, #0
	beq _0204B044
	ldr r3, [r5, #0x88]
	mov r2, r4, lsl r6
	ldrb r1, [r3, #0x88]
	rsb r0, r2, #0xff
	cmp r7, #0
	and r0, r1, r0
	strb r0, [r3, #0x88]
	ldrneb r1, [r3, #0x88]
	andne r0, r2, #0xff
	orrne r0, r1, r0
	strneb r0, [r3, #0x88]
_0204B044:
	add r6, r6, #1
	cmp r6, #6
	blt _0204B004
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204B054:
	mov r0, r5
	mov r1, r6
	bl FUN_0206cdf8
	cmp r4, r0
	bne _0204B09C
	ldr r3, [r5, #0x88]
	mov r0, #1
	mov r2, r0, lsl r6
	ldrb r1, [r3, #0x88]
	rsb r0, r2, #0xff
	cmp r7, #0
	and r0, r1, r0
	strb r0, [r3, #0x88]
	ldrneb r1, [r3, #0x88]
	andne r0, r2, #0xff
	orrne r0, r1, r0
	strneb r0, [r3, #0x88]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204B09C:
	add r6, r6, #1
	cmp r6, #6
	blt _0204B054
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204afd0

	arm_func_start FUN_0204b0ac
FUN_0204b0ac: ; 0x0204B0AC
	cmp r1, #0x40
	movhs r0, #0
	ldrlo r2, [r0, #0x80c]
	movlo r0, #0x14
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0204b0ac

	arm_func_start FUN_0204b0c4
FUN_0204b0c4: ; 0x0204B0C4
	ldrsh r0, [r0, #4]
	cmp r0, #0
	rsblt r0, r0, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r1, #0
	addne r1, r0, r0, lsl #1
	movne r0, r1, asr #1
	addne r0, r1, r0, lsr #30
	movne r0, r0, lsl #0xe
	movne r0, r0, lsr #0x10
	mul r1, r0, r2
	ldr r2, _0204B110 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0204B110: .word 0x51EB851F
	arm_func_end FUN_0204b0c4

	arm_func_start FUN_0204b114
FUN_0204b114: ; 0x0204B114
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r1
	ldrne r7, _0204B1AC ; 0x02099EF0
	mov r6, r0
	ldrne r0, [r7]
	mov r4, #0
	mov r5, #0x64
	cmpne r0, #0
	beq _0204B154
	mov r0, r8
	bl FUN_0206d5f0
	mov r1, r0
	ldr r0, [r7]
	bl FUN_ov132_02145190
	cmp r0, #0
	movne r4, #1
_0204B154:
	ldr r0, [r8, #0x90]
	tst r0, #0x200
	beq _0204B170
	ldr r0, _0204B1B0 ; =gLogicThink
	mov r1, #0x3c
	bl FUN_0204a2c4
	ldrb r5, [r0, #6]
_0204B170:
	ldr r0, [r8, #0x90]
	tst r0, #0x400
	beq _0204B198
	mov r0, #0x78
	mul r1, r5, r0
	ldr r2, _0204B1B4 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	and r5, r3, #0xff
_0204B198:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0204b0c4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204B1AC: .word gUtilGame
_0204B1B0: .word gLogicThink
_0204B1B4: .word 0x51EB851F
	arm_func_end FUN_0204b114

	arm_func_start FUN_0204b1b8
FUN_0204b1b8: ; 0x0204B1B8
	ldrb r0, [r0, #1]
	mov r0, r0, asr #5
	and r0, r0, #7
	bx lr
	arm_func_end FUN_0204b1b8

	arm_func_start FUN_0204b1c8
FUN_0204b1c8: ; 0x0204B1C8
	ldrb r0, [r0, #1]
	and r0, r0, #0x1f
	bx lr
	arm_func_end FUN_0204b1c8

	arm_func_start FUN_0204b1d4
FUN_0204b1d4: ; 0x0204B1D4
	ldrb r0, [r0]
	bx lr
	arm_func_end FUN_0204b1d4

	arm_func_start FUN_0204b1dc
FUN_0204b1dc: ; 0x0204B1DC
	cmp r1, #0
	beq _0204B1EC
	cmp r1, #0x14
	bls _0204B1F4
_0204B1EC:
	mov r0, #0
	bx lr
_0204B1F4:
	cmp r1, #1
	moveq r0, #0
	subne r1, r1, #2
	addne r0, r0, r1, lsl #1
	ldrneb r0, [r0, #1]
	bx lr
	arm_func_end FUN_0204b1dc

	arm_func_start FUN_0204b20c
FUN_0204b20c: ; 0x0204B20C
	cmp r1, #0
	beq _0204B21C
	cmp r1, #0x14
	bls _0204B224
_0204B21C:
	mov r0, #0
	bx lr
_0204B224:
	cmp r1, #1
	moveq r0, #0
	subne r1, r1, #2
	addne r0, r0, r1, lsl #1
	ldrneb r0, [r0, #2]
	bx lr
	arm_func_end FUN_0204b20c

	arm_func_start FUN_0204b23c
FUN_0204b23c: ; 0x0204B23C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	add r0, r0, #0xc
	mov r4, r1
	add r0, r0, #0x400
	add r8, r0, r4, lsl #5
	bl FUN_ov16_020f066c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0204fb78
	mov r10, #0
	mov r9, r10
	mov r6, #1
_0204B274:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0204B2E0
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B2E0
	mov r0, r7
	bl FUN_0206d660
	cmp r0, #0
	beq _0204B2E0
	mov r0, r7
	bl FUN_0206d5f0
	cmp r4, r0
	bne _0204B2E0
	mov r0, r7
	mov r1, r6
	bl FUN_0206d824
	movs r5, r0
	beq _0204B2E0
	mov r0, r7
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r8
	sub r1, r5, #1
	bl FUN_0204fb8c
	add r10, r10, #1
_0204B2E0:
	add r9, r9, #1
	cmp r9, #0x64
	blt _0204B274
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0204b23c

	arm_func_start FUN_0204b2f4
FUN_0204b2f4: ; 0x0204B2F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add r0, r0, #0xcc
	mov r10, r1
	add r0, r0, #0x400
	movs r9, r2
	add r5, r0, r10, lsl #4
	mov r11, r3
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	mov r0, r9
	mov r1, r7
	mov r2, r11, lsl #1
	bl MI_CpuFill8
	mov r6, r7
	ldrb r4, [sp, #0x28]
	b _0204B3E0
_0204B338:
	cmp r7, r11
	bge _0204B3E8
	ldr r0, _0204B434 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0204B360
	mov r0, r5
	mov r1, r6
	bl FUN_02050244
	b _0204B390
_0204B360:
	cmp r4, #0
	cmpeq r10, #1
	mov r0, r5
	bne _0204B388
	mov r1, r6
	bl FUN_02050244
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	b _0204B394
_0204B388:
	mov r1, r6
	bl FUN_02050258
_0204B390:
	mov r8, r0
_0204B394:
	cmp r8, #0
	beq _0204B3DC
	mov r0, r8
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204B3DC
	cmp r4, #0
	cmpeq r10, #1
	ldreq r0, _0204B434 ; =0x020A0640
	add r7, r7, #1
	ldreqb r0, [r0, #0x1b]
	cmpeq r0, #0
	orreq r1, r8, #0x8000
	moveq r0, r6, lsl #1
	streqh r1, [r9, r0]
	movne r0, r6, lsl #1
	strneh r8, [r9, r0]
_0204B3DC:
	add r6, r6, #1
_0204B3E0:
	cmp r6, #4
	blt _0204B338
_0204B3E8:
	cmp r11, #4
	ble _0204B42C
	mov r0, r5
	bl FUN_02050284
	cmp r0, #0
	beq _0204B42C
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	cmpeq r10, #1
	mov r0, r5
	bne _0204B420
	bl FUN_02050284
	orr r0, r0, #0x8000
	b _0204B424
_0204B420:
	bl FUN_0205028c
_0204B424:
	strh r0, [r9, #8]
	add r7, r7, #1
_0204B42C:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B434: .word unk_020A0640
	arm_func_end FUN_0204b2f4

	arm_func_start FUN_0204b438
FUN_0204b438: ; 0x0204B438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	str r0, [sp, #4]
	add r0, r0, #0xc
	mov r10, r1
	add r0, r0, #0x400
	ldr r7, [sp, #0x30]
	movs r9, r2
	add r11, r0, r10, lsl #5
	mov r8, r3
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r5, r6
_0204B484:
	cmp r6, r8
	bge _0204B514
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204B508
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B508
	mov r0, r4
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204B508
	mov r0, r4
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r11
	bl FUN_0204fcd4
	cmp r0, #0
	bne _0204B508
	cmp r7, #0
	mov r0, r4
	bne _0204B4F0
	bl FUN_0206cbf8
	mov r1, r6, lsl #1
	strh r0, [r9, r1]
	b _0204B504
_0204B4F0:
	bl FUN_0206cbf8
	ldr r1, _0204B53C ; =0x00000FFF
	and r1, r0, r1
	mov r0, r6, lsl #1
	strh r1, [r9, r0]
_0204B504:
	add r6, r6, #1
_0204B508:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204B484
_0204B514:
	ldr r0, [sp, #4]
	mov r4, #1
	mov r1, r9
	mov r2, r6
	mov r3, #0x80
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r6
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B53C: .word 0x00000FFF
	arm_func_end FUN_0204b438

	arm_func_start FUN_0204b540
FUN_0204b540: ; 0x0204B540
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	str r0, [sp, #4]
	add r0, r0, #0xc
	movs r9, r2
	mov r10, r1
	add r0, r0, #0x400
	add r4, r0, r10, lsl #5
	mov r8, r3
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r0, r9
	mov r1, r6
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r5, r6
	ldrb r11, [sp, #0x30]
	b _0204B618
_0204B590:
	cmp r6, r8
	bge _0204B620
	ldr r0, _0204B648 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0204B5B8
	mov r0, r4
	mov r1, r5
	bl FUN_0204fbe8
	b _0204B5E8
_0204B5B8:
	cmp r11, #0
	cmpeq r10, #1
	mov r0, r4
	bne _0204B5E0
	mov r1, r5
	bl FUN_0204fbe8
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	b _0204B5EC
_0204B5E0:
	mov r1, r5
	bl FUN_0204fbfc
_0204B5E8:
	mov r7, r0
_0204B5EC:
	ldr r0, _0204B64C ; =0x00000FFF
	tst r7, r0
	beq _0204B614
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	movne r0, r6, lsl #1
	strneh r7, [r9, r0]
	addne r6, r6, #1
_0204B614:
	add r5, r5, #1
_0204B618:
	cmp r5, #0x10
	blt _0204B590
_0204B620:
	ldr r3, [sp, #0x34]
	mov r4, #1
	ldr r0, [sp, #4]
	mov r1, r9
	mov r2, r6
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r6
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B648: .word unk_020A0640
_0204B64C: .word 0x00000FFF
	arm_func_end FUN_0204b540

	arm_func_start FUN_0204b650
FUN_0204b650: ; 0x0204B650
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	movs r9, r2
	str r0, [sp, #4]
	mov r7, #0
	mov r10, r1
	mov r8, r3
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r7
	mov r2, r8, lsl #1
	bl MI_CpuFill8
	mov r6, r7
	ldrb r4, [sp, #0x30]
	ldr r11, _0204B750 ; =0x020A0640
	b _0204B720
_0204B698:
	cmp r7, r8
	bge _0204B728
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0204B71C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B71C
	mov r0, r5
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204B71C
	mov r0, r5
	bl FUN_0206cc00
	ldrb r1, [r11, #0x1b]
	cmp r1, #0
	beq _0204B6F4
	mov r0, r5
	bl FUN_0206cbf8
	mov r1, r7, lsl #1
	strh r0, [r9, r1]
	b _0204B710
_0204B6F4:
	cmp r4, #0
	cmpeq r10, #1
	orreq r1, r0, #0x8000
	moveq r0, r7, lsl #1
	streqh r1, [r9, r0]
	movne r1, r7, lsl #1
	strneh r0, [r9, r1]
_0204B710:
	add r7, r7, #1
	cmp r7, r8
	bge _0204B728
_0204B71C:
	add r6, r6, #1
_0204B720:
	cmp r6, #0x64
	blt _0204B698
_0204B728:
	ldr r0, [sp, #4]
	mov r4, #1
	mov r1, r9
	mov r2, r7
	mov r3, #0x80
	str r4, [sp]
	bl FUN_0204ee94
	mov r0, r7
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204B750: .word unk_020A0640
	arm_func_end FUN_0204b650

	arm_func_start FUN_0204b754
FUN_0204b754: ; 0x0204B754
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, #0
	bl FUN_0206d824
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020f07d0
	cmp r4, #0
	ble _0204B790
	cmp r4, #0xb
	ble _0204B798
_0204B790:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204B798:
	mov r1, #0xb
	mla r1, r0, r1, r4
	sub r0, r1, #1
	add r0, r6, r0
	ldrb r0, [r0, #0x84a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204b754

	arm_func_start FUN_0204b7b0
FUN_0204b7b0: ; 0x0204B7B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x80
	ldr r2, _0204B9C0 ; =0x020A0640
	mov r6, #0
	ldrh r3, [r2, #0x92]
	ldrh r4, [r2, #0x94]
	mov r1, r6
	strh r3, [sp]
	mov r3, r3
	strh r4, [r2, #0x92]
	mov r7, r0
	strh r4, [sp, #2]
	strh r3, [r2, #0x94]
	bl FUN_0207249c
	add r9, sp, #0x34
	mov r8, #0x4c
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, r8
	bl DC_FlushRange
	mov r5, #1
	mov r0, r7
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	mov r0, r7
	mov r1, r6
	bl FUN_0207249c
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r6
	bl FUN_0207249c
	mov r1, r8
	bl DC_FlushRange
	mov r0, r7
	mov r1, r5
	bl FUN_0207249c
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r1, r5
	mov r0, r7
	bl FUN_0207249c
	mov r1, r8
	bl DC_FlushRange
	add r0, r7, #0xc
	add r5, sp, #4
	mov r4, #0x20
	add r0, r0, #0x400
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	add r0, r7, #0x2c
	add r1, r7, #0xc
	add r0, r0, #0x400
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0xc
	add r0, r0, #0x400
	mov r1, r4
	bl DC_FlushRange
	add r1, r7, #0x2c
	mov r0, r5
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0x2c
	mov r1, r4
	add r0, r0, #0x400
	bl DC_FlushRange
	add r5, sp, #0x24
	add r0, r7, #0xcc
	mov r4, #0x10
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x400
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	add r0, r7, #0xdc
	add r1, r7, #0xcc
	add r0, r0, #0x400
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0xcc
	add r0, r0, #0x400
	mov r1, r4
	bl DC_FlushRange
	add r1, r7, #0xdc
	mov r0, r5
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r7, #0xdc
	add r0, r0, #0x400
	mov r1, r4
	bl DC_FlushRange
	b _0204B9B0
_0204B968:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204B9AC
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204B9AC
	mov r0, r4
	bl FUN_0206d5f0
	cmp r0, #2
	beq _0204B9AC
	mov r0, r4
	bl FUN_0206d5f0
	bl FUN_02040138
	mov r1, r0
	mov r0, r4
	bl FUN_0206d600
_0204B9AC:
	add r6, r6, #1
_0204B9B0:
	cmp r6, #0x64
	blt _0204B968
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0204B9C0: .word unk_020A0640
	arm_func_end FUN_0204b7b0

	arm_func_start FUN_0204b9c4
FUN_0204b9c4: ; 0x0204B9C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r4, r0
	add r0, r4, #0xc
	add r0, r0, #0x400
	add r7, r0, r1, lsl #5
	add r6, sp, #0
	mov r5, #0x20
	mov r8, r2
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r4, #0xc
	add r0, r0, #0x400
	add r8, r0, r8, lsl #5
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, #0
	bl FUN_0207249c
	ldrh r2, [r0, #0x22]
	ldrh r1, [r0, #0x48]
	strh r1, [r0, #0x22]
	strh r2, [r0, #0x48]
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204b9c4

	arm_func_start FUN_0204ba48
FUN_0204ba48: ; 0x0204BA48
	stmfd sp!, {r4, lr}
	ldr r1, _0204BA74 ; =0x02099E98
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_0207249c
	ldrb r0, [r0, #0x43]
	strb r0, [r4, #0x8a0]
	ldmfd sp!, {r4, pc}
_0204BA74: .word unk_02099E98
	arm_func_end FUN_0204ba48

	arm_func_start FUN_0204ba78
FUN_0204ba78: ; 0x0204BA78
	stmfd sp!, {r4, lr}
	ldr r1, _0204BAA4 ; =0x02099E98
	mov r4, r0
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	bl FUN_0207249c
	ldrb r1, [r4, #0x8a0]
	strb r1, [r0, #0x43]
	ldmfd sp!, {r4, pc}
_0204BAA4: .word unk_02099E98
	arm_func_end FUN_0204ba78

	arm_func_start FUN_0204baa8
FUN_0204baa8: ; 0x0204BAA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
_0204BAB0:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204BAE0
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204BAE0
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r4
	bl FUN_0206cc1c
_0204BAE0:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204BAB0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204baa8

	arm_func_start FUN_0204baf0
FUN_0204baf0: ; 0x0204BAF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r2
	mov r5, #0
_0204BB00:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204BB38
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204BB38
	mov r0, r4
	bl FUN_0206d5f0
	cmp r7, r0
	bne _0204BB38
	mov r0, r4
	mov r1, r6
	bl FUN_0206d4d4
_0204BB38:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204BB00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204baf0

	arm_func_start FUN_0204bb48
FUN_0204bb48: ; 0x0204BB48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r2, #0
	movle r4, #0
	ble _0204BB6C
	sub r2, r2, #1
	mov r3, #0x1000
	mov r2, r3, lsl r2
	mov r2, r2, lsl #0x10
	mov r4, r2, lsr #0x10
_0204BB6C:
	add r0, r0, #0xc
	add r0, r0, #0x400
	ldr r5, _0204BBBC ; =0x00000FFF
	add r7, r0, r1, lsl #5
	mov r6, #0
_0204BB80:
	mov r0, r7
	mov r1, r6
	bl FUN_0204fbe8
	movs r2, r0
	andne r0, r2, r5
	orrne r0, r0, r4
	movne r0, r0, lsl #0x10
	movne r2, r0, lsr #0x10
	mov r0, r7
	mov r1, r6
	bl FUN_0204fb8c
	add r6, r6, #1
	cmp r6, #0x10
	blt _0204BB80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204BBBC: .word 0x00000FFF
	arm_func_end FUN_0204bb48

	arm_func_start FUN_0204bbc0
FUN_0204bbc0: ; 0x0204BBC0
	ldr r0, [r0, #0x7bc]
	ldr r12, _0204BBCC ; =FUN_02049738
	bx r12
_0204BBCC: .word FUN_02049738
	arm_func_end FUN_0204bbc0

	arm_func_start FUN_0204bbd0
FUN_0204bbd0: ; 0x0204BBD0
	ldr r0, [r0, #0x7bc]
	ldr r12, _0204BBDC ; =FUN_020497cc
	bx r12
_0204BBDC: .word FUN_020497cc
	arm_func_end FUN_0204bbd0

	arm_func_start FUN_0204bbe0
FUN_0204bbe0: ; 0x0204BBE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #0
_0204BBF4:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204BC38
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204BC38
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r8, r0
	bne _0204BC38
	mov r0, r4
	mov r1, r6
	bl FUN_0206d824
	cmp r7, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0204BC38:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204BBF4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204bbe0

	arm_func_start FUN_0204bc4c
FUN_0204bc4c: ; 0x0204BC4C
	stmfd sp!, {r3, lr}
	ldr r2, _0204BCD0 ; =0x00000FFF
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	movs r12, r1, lsr #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _0204BCD4 ; =0x0209A120
	mov r2, #0
	ldr r1, [r1]
	subs r3, r1, #1
	bmi _0204BCC8
	ldr lr, [r0, #0x814]
_0204BC80:
	sub r0, r3, r2
	add r0, r2, r0, asr #1
	mov r1, r0, lsl #1
	ldrsh r1, [lr, r1]
	cmp r1, #0
	bne _0204BCAC
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	sub r3, r0, #1
	b _0204BCC0
_0204BCAC:
	cmp r1, r12
	subgt r3, r0, #1
	bgt _0204BCC0
	ldmgefd sp!, {r3, pc}
	add r2, r0, #1
_0204BCC0:
	cmp r2, r3
	ble _0204BC80
_0204BCC8:
	mvn r0, #0
	ldmfd sp!, {r3, pc}
_0204BCD0: .word 0x00000FFF
_0204BCD4: .word unk_0209A120
	arm_func_end FUN_0204bc4c

	arm_func_start FUN_0204bcd8
FUN_0204bcd8: ; 0x0204BCD8
	stmfd sp!, {r3, lr}
	ldr r2, _0204BD5C ; =0x00000FFF
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	movs r12, r1, lsr #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _0204BD60 ; =0x0209A130
	mov r2, #0
	ldr r1, [r1]
	subs r3, r1, #1
	bmi _0204BD54
	ldr lr, [r0, #0x818]
_0204BD0C:
	sub r0, r3, r2
	add r0, r2, r0, asr #1
	mov r1, r0, lsl #1
	ldrsh r1, [lr, r1]
	cmp r1, #0
	bne _0204BD38
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	sub r3, r0, #1
	b _0204BD4C
_0204BD38:
	cmp r1, r12
	subgt r3, r0, #1
	bgt _0204BD4C
	ldmgefd sp!, {r3, pc}
	add r2, r0, #1
_0204BD4C:
	cmp r2, r3
	ble _0204BD0C
_0204BD54:
	mvn r0, #0
	ldmfd sp!, {r3, pc}
_0204BD5C: .word 0x00000FFF
_0204BD60: .word unk_0209A130
	arm_func_end FUN_0204bcd8

	arm_func_start FUN_0204bd64
FUN_0204bd64: ; 0x0204BD64
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x68
	movs r5, r2
	mov r7, r0
	mov r9, #0
	mov r6, r1
	addeq sp, sp, #0x68
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _0204C068 ; =0x00000FFF
	mov r4, r9
	and r6, r6, r8
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204BDC0
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	add sp, sp, #0x68
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204BDC0:
	ldr r0, [r7, #0x81c]
	sub r1, r4, #1
	add r2, r8, #0xf000
_0204BDCC:
	ldrh r3, [r0, #0x4e]
	and r3, r3, r8
	mov r3, r3, lsl #0x10
	cmp r6, r3, lsr #16
	ldrh r3, [r0, #0x68]
	moveq r1, r4
	add r4, r4, #1
	cmp r3, r2
	addlo r3, r3, #1
	strloh r3, [r0, #0x68]
	cmp r4, #0x40
	add r0, r0, #0x6c
	blt _0204BDCC
	cmp r1, #0
	blt _0204BE34
	ldr r2, [r7, #0x81c]
	mov r0, #0x6c
	mla r4, r1, r0, r2
	mov r0, r4
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	add sp, sp, #0x68
	strh r9, [r4, #0x68]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204BE34:
	ldr r1, [r7, #0x81c]
	mvn r2, #0
	mov r0, r2
	mov r3, r1
	mov r4, #0
	add r8, r2, #0x1000
_0204BE4C:
	ldrh r9, [r3, #0x4e]
	and r9, r9, r8
	mov r9, r9, lsl #0x10
	movs r9, r9, lsr #0x10
	moveq r2, r4
	beq _0204BE84
	ldrh r9, [r3, #0x68]
	add r3, r3, #0x6c
	cmp r9, r0
	movgt r2, r4
	add r4, r4, #1
	movgt r0, r9
	cmp r4, #0x40
	blt _0204BE4C
_0204BE84:
	mov r0, #0x6c
	mul r4, r2, r0
	add r2, r1, r4
	mov r0, r7
	mov r1, r6
	str r2, [sp, #0x14]
	mov r10, #0x68
	mov r8, #1
	mov r9, #0
	bl FUN_0204bc4c
	cmp r0, #0
	blt _0204BF20
	ldr r3, _0204C06C ; =gAllocator
	ldr r1, _0204C070 ; =0x0209050C
	ldr r6, [r3]
	cmp r6, #0
	moveq r0, r9
	beq _0204BEE8
	mul r2, r0, r10
	stmia sp, {r2, r10}
	str r9, [sp, #8]
	add r2, sp, #0x14
	mov r0, r6
	str r8, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_0204BEE8:
	cmp r0, #0
	addeq sp, sp, #0x68
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x14]
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	ldr r0, [r7, #0x81c]
	add sp, sp, #0x68
	add r0, r0, r4
	strh r9, [r0, #0x68]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204BF20:
	mov r0, r7
	mov r1, r6
	bl FUN_0204bcd8
	cmp r0, #0
	blt _0204C05C
	ldr r3, _0204C06C ; =gAllocator
	add r1, sp, #0x18
	ldr r12, [r3]
	str r1, [sp, #0x10]
	cmp r12, #0
	ldr r10, [sp, #0x14]
	ldr r1, _0204C074 ; =0x02090528
	moveq r0, r9
	beq _0204BF7C
	mov r2, #0x50
	mul r6, r0, r2
	str r6, [sp]
	str r2, [sp, #4]
	str r9, [sp, #8]
	add r2, sp, #0x10
	mov r0, r12
	str r8, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_0204BF7C:
	cmp r0, #0
	mov r6, #1
	addeq sp, sp, #0x68
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #0x10
	add r0, sp, #0x18
	mov r1, r10
	mov r2, r8
	bl MIi_CpuCopyFast
	add r0, sp, #0x28
	mov r2, r8
	add r1, r10, #0x1c
	bl MIi_CpuCopyFast
	add r0, sp, #0x38
	add r1, r10, #0x2c
	mov r2, #0x20
	bl MIi_CpuCopyFast
	ldrh r0, [sp, #0x58]
	mov r1, r5
	mov r2, #0x68
	strh r0, [r10, #0x4e]
	ldrh r0, [sp, #0x5a]
	strh r0, [r10, #0x50]
	ldrb r0, [sp, #0x5c]
	strb r0, [r10, #0x52]
	ldrb r0, [sp, #0x5d]
	strb r0, [r10, #0x53]
	ldrh r0, [sp, #0x5e]
	strh r0, [r10, #0x54]
	ldrh r0, [sp, #0x60]
	strh r0, [r10, #0x56]
	ldrh r0, [sp, #0x62]
	strh r0, [r10, #0x58]
	ldrb r0, [sp, #0x64]
	strb r0, [r10, #0x5a]
	ldrb r0, [sp, #0x65]
	strb r0, [r10, #0x5b]
	ldrb r0, [sp, #0x66]
	strb r0, [r10, #0x5c]
	strb r6, [r10, #0x4c]
	strb r6, [r10, #0x4d]
	ldrb r0, [r10, #0x5d]
	and r0, r0, #0x1f
	and r0, r0, #0xe0
	strb r0, [r10, #0x5d]
	strb r6, [r10, #0x62]
	strh r9, [r10, #0x66]
	ldr r0, [sp, #0x14]
	bl MI_CpuCopy8
	ldr r1, [r7, #0x81c]
	add sp, sp, #0x68
	add r1, r1, r4
	mov r0, r6
	strh r9, [r1, #0x68]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204C05C:
	mov r0, r9
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204C068: .word 0x00000FFF
_0204C06C: .word gAllocator
_0204C070: .word unk_0209050C
_0204C074: .word unk_02090528
	arm_func_end FUN_0204bd64

	arm_func_start FUN_0204c078
FUN_0204c078: ; 0x0204C078
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x78
	mov r5, r2
	add r2, sp, #0x30
	mov r7, r0
	mov r6, r1
	str r2, [sp, #0x10]
	bl FUN_0204c1d4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _0204C0D8
	mov r4, #0x48
	ldr r1, [sp, #0x10]
	mov r0, r7
	mov r2, r4
	bl FUN_020748c8
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	add sp, sp, #0x78
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C0D8:
	mov r0, r7
	mov r1, r6
	bl FUN_0204bc4c
	mov r4, r0
	cmn r4, #1
	addeq sp, sp, #0x78
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r12, _0204C1C8 ; =0x0208C444
	add r3, sp, #0x14
	mov r2, #0xe
_0204C104:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	mov r8, #0
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0204C104
	ldr r0, _0204C1CC ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer5sleepEm
	ldr r3, _0204C1D0 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r8
	beq _0204C168
	mov r1, #0x48
	mul r2, r4, r1
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	str r8, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_0204C168:
	cmp r0, #0
	addeq sp, sp, #0x78
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x10]
	mov r0, r7
	mov r1, r6
	bl FUN_0204c254
	mov r6, #0x48
	ldr r1, [sp, #0x10]
	mov r0, r7
	mov r2, r6
	bl FUN_020748c8
	mov r1, r5
	mov r2, r6
	bl MI_CpuCopy8
	mov r1, r4, lsl #0x10
	mov r0, r7
	mov r2, r5
	mov r1, r1, lsr #0x10
	bl FUN_02073f10
	mov r0, #1
	add sp, sp, #0x78
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C1C8: .word unk_0208C444
_0204C1CC: .word gAudioPlayer
_0204C1D0: .word gAllocator
	arm_func_end FUN_0204c078

	arm_func_start FUN_0204c1d4
FUN_0204c1d4: ; 0x0204C1D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _0204C250 ; =0x00000FFF
	mov r5, r0
	and r0, r1, r3
	ldr r4, [r5, #0x7f4]
	mov r0, r0, lsl #0x10
	mov r3, #0
_0204C1F0:
	ldrh r1, [r4]
	cmp r1, r0, lsr #16
	bne _0204C238
	cmp r2, #0
	beq _0204C214
	mov r1, r2
	add r0, r4, #8
	mov r2, #0x48
	bl MI_CpuCopy8
_0204C214:
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x7f8]
	cmp r1, r0
	addne r0, r0, #1
	strne r0, [r5, #0x7f8]
	ldr r1, [r5, #0x7f8]
	mov r0, #1
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0204C238:
	add r3, r3, #1
	cmp r3, #0x40
	add r4, r4, #0x50
	blt _0204C1F0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0204C250: .word 0x00000FFF
	arm_func_end FUN_0204c1d4

	arm_func_start FUN_0204c254
FUN_0204c254: ; 0x0204C254
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mvn r4, #0
	mov r8, r0
	mov r7, r1
	add r0, r4, #0x1000
	ldr r5, [r8, #0x7f4]
	and r0, r7, r0
	mov r0, r0, lsl #0x10
	mov r3, r5
	mov r6, r4
	mov r7, r0, lsr #0x10
	mov r1, #0
_0204C284:
	ldrh r0, [r3]
	cmp r0, #0
	moveq r4, r1
	beq _0204C2B4
	ldr r0, [r3, #4]
	add r3, r3, #0x50
	cmp r6, r0
	movhi r4, r1
	add r1, r1, #1
	movhi r6, r0
	cmp r1, #0x40
	blt _0204C284
_0204C2B4:
	mov r0, #0x50
	mul r9, r4, r0
	add r6, r5, r9
	mov r0, r2
	add r1, r6, #8
	mov r2, #0x48
	bl MI_CpuCopy8
	strh r7, [r5, r9]
	ldr r1, [r8, #0x7f8]
	mov r0, r4
	add r1, r1, #1
	str r1, [r8, #0x7f8]
	str r1, [r6, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0204c254

	arm_func_start FUN_0204c2ec
FUN_0204c2ec: ; 0x0204C2EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_ov16_020f0810
	mov r1, r0
	mov r0, r4
	bl FUN_0207249c
	cmp r0, #0
	beq _0204C324
	ldrb r0, [r0, #0x2c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0204C324:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204c2ec

	arm_func_start FUN_0204c32c
FUN_0204c32c: ; 0x0204C32C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r8, r1
	mov r6, r3
	cmp r7, #0
	ble _0204C34C
	cmp r7, #0x10
	ble _0204C354
_0204C34C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C354:
	cmp r6, #2
	beq _0204C370
	cmp r6, #0
	bne _0204C37C
	bl FUN_020731b4
	cmp r0, #0
	beq _0204C37C
_0204C370:
	cmp r7, #4
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C37C:
	mov r5, #0
_0204C380:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C3CC
	bl FUN_0206d64c
	cmp r0, #0
	bne _0204C3CC
	mov r0, r4
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0204C3CC
	cmp r4, #0
	beq _0204C3CC
	mov r0, r4
	mov r1, r6
	bl FUN_0206d824
	cmp r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0204C3CC:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C380
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204c32c

	arm_func_start FUN_0204c3e0
FUN_0204c3e0: ; 0x0204C3E0
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0xcc
	add r0, r0, #0x400
	mov r5, #0
	mov r4, r5
	add r6, r0, r1, lsl #4
_0204C3F8:
	mov r0, r6
	mov r1, r4
	bl FUN_02050244
	cmp r0, #0
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, #4
	blt _0204C3F8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204c3e0

	arm_func_start FUN_0204c420
FUN_0204c420: ; 0x0204C420
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_0204C430:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C45C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204C45C
	mov r0, r4
	bl FUN_0206d5f0
	cmp r7, r0
	addeq r6, r6, #1
_0204C45C:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C430
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c420

	arm_func_start FUN_0204c470
FUN_0204c470: ; 0x0204C470
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r1
	mov r7, r2
	mov r5, r6
_0204C484:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C4B8
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204C4B8
	mov r0, r4
	bl FUN_0206d5f0
	cmp r8, r0
	ldreqb r0, [r4, #0x4d]
	cmpeq r7, r0
	addeq r6, r6, #1
_0204C4B8:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C484
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204c470

	arm_func_start FUN_0204c4cc
FUN_0204c4cc: ; 0x0204C4CC
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0xc
	add r0, r0, #0x400
	mov r5, #0
	mov r4, r5
	add r6, r0, r1, lsl #5
_0204C4E4:
	mov r0, r6
	mov r1, r4
	bl FUN_0204fbe8
	cmp r0, #0
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, #0x10
	blt _0204C4E4
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204c4cc

	arm_func_start FUN_0204c50c
FUN_0204c50c: ; 0x0204C50C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xc
	mov r6, #0
	add r0, r0, #0x400
	mov r5, r6
	add r7, r0, r1, lsl #5
	mov r4, r6
_0204C528:
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204C54C
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r6, r6, #1
_0204C54C:
	add r5, r5, #1
	cmp r5, #0xb
	blt _0204C528
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c50c

	arm_func_start FUN_0204c560
FUN_0204c560: ; 0x0204C560
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r1
	mov r7, r2
	mov r5, r6
_0204C574:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C5BC
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204C5BC
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r8, r0
	bne _0204C5BC
	mov r0, r4
	mov r1, r7
	bl FUN_0206d824
	cmp r0, #1
	blt _0204C5BC
	cmp r0, #0xb
	addle r6, r6, #1
_0204C5BC:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C574
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204c560

	arm_func_start FUN_0204c5d0
FUN_0204c5d0: ; 0x0204C5D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_0204C5E0:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C60C
	bl FUN_0206d674
	cmp r0, #0
	beq _0204C60C
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r7, r0
	addeq r6, r6, #1
_0204C60C:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C5E0
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c5d0

	arm_func_start FUN_0204c620
FUN_0204c620: ; 0x0204C620
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r1
	mov r5, r6
_0204C630:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204C66C
	bl FUN_0206d69c
	cmp r0, #0
	beq _0204C66C
	mov r0, r4
	bl FUN_ov16_020f0810
	cmp r7, r0
	bne _0204C66C
	mov r0, r4
	bl FUN_0206d6ec
	cmp r0, #0
	addne r6, r6, #1
_0204C66C:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204C630
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204c620

	arm_func_start FUN_0204c680
FUN_0204c680: ; 0x0204C680
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0204C6E8 ; =0x020A0640
	mov r4, r2
	ldrb r2, [r3, #0x1b]
	cmp r2, #0
	bne _0204C6A8
	ldr r2, _0204C6EC ; =0x00000FFF
	cmp r1, #1
	and r4, r4, r2
	orreq r4, r4, #0x8000
_0204C6A8:
	add r0, r0, #0xcc
	add r0, r0, #0x400
	mov r6, #0
	add r5, r0, r1, lsl #4
	b _0204C6D8
_0204C6BC:
	mov r0, r5
	mov r1, r6
	bl FUN_02050244
	cmp r4, r0
	addeq r0, r6, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
_0204C6D8:
	cmp r6, #4
	blt _0204C6BC
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204C6E8: .word unk_020A0640
_0204C6EC: .word 0x00000FFF
	arm_func_end FUN_0204c680

	arm_func_start FUN_0204c6f0
FUN_0204c6f0: ; 0x0204C6F0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0204C758 ; =0x020A0640
	mov r4, r2
	ldrb r2, [r3, #0x1b]
	cmp r2, #0
	bne _0204C718
	ldr r2, _0204C75C ; =0x00000FFF
	cmp r1, #1
	and r4, r4, r2
	orreq r4, r4, #0x8000
_0204C718:
	add r0, r0, #0xc
	add r0, r0, #0x400
	mov r6, #0
	add r5, r0, r1, lsl #5
	b _0204C748
_0204C72C:
	mov r0, r5
	mov r1, r6
	bl FUN_0204fbe8
	cmp r4, r0
	addeq r0, r6, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
_0204C748:
	cmp r6, #0x10
	blt _0204C72C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204C758: .word unk_020A0640
_0204C75C: .word 0x00000FFF
	arm_func_end FUN_0204c6f0

	arm_func_start FUN_0204c760
FUN_0204c760: ; 0x0204C760
	stmfd sp!, {r3, lr}
	bl FUN_0204c680
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204c760

	arm_func_start FUN_0204c778
FUN_0204c778: ; 0x0204C778
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r5, _0204C858 ; =0x0209A11C
	ldrb r12, [sp, #0x30]
	mov r8, r0
	ldr r0, [r5]
	mov r4, #0
	ldr r9, _0204C85C ; =0x00000FFF
	mov r6, r2
	and r6, r6, r9
	mov r7, r1
	mov r5, r3
	strh r6, [sp, #8]
	strb r4, [sp, #0xa]
	strb r12, [sp, #0xb]
	bl FUN_0206c788
	ldr r1, [sp, #0x34]
	mov r2, r0
	stmia sp, {r1, r4}
	mov r0, r8
	mov r1, r6
	mov r3, r7
	bl FUN_02071d74
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_0206dca4
	ldr r0, _0204C860 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _0204C824
	bl FUN_ov16_020f081c
	cmp r7, r0
	ldreqb r0, [sp, #0x38]
	cmpeq r0, #0
	bne _0204C824
	ldr r0, _0204C864 ; =0x020A108A
	and r1, r6, r9
	bl FUN_02050930
	ldr r0, _0204C868 ; =0x020A0DB0
	and r1, r6, r9
	bl FUN_02050854
_0204C824:
	cmp r5, #0
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	bl FUN_0204c92c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0204C858: .word unk_0209A11C
_0204C85C: .word 0x00000FFF
_0204C860: .word unk_020A0640
_0204C864: .word unk_020A108A
_0204C868: .word unk_020A0DB0
	arm_func_end FUN_0204c778

	arm_func_start FUN_0204c86c
FUN_0204c86c: ; 0x0204C86C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	add r6, sp, #0
	mov r5, r0
	mov r9, r2
	mov r8, #0
	mov r4, r1
	mov r0, r6
	mov r1, r8
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl FUN_0205107c
	mov r7, r0
	mov r4, #1
	mov r5, r8
_0204C8B0:
	mov r0, r7
	mov r1, r8
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204C8E8
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204C8E8
	mov r1, r9
	bl FUN_0206d9b0
	cmp r0, #0
	addne r0, r6, r0
	strneb r4, [r0, #-1]
_0204C8E8:
	add r8, r8, #1
	cmp r8, #0x10
	blt _0204C8B0
	mov r2, #0
	add r1, sp, #0
_0204C8FC:
	ldrb r0, [r1, r2]
	cmp r0, #0
	addeq r0, r2, #1
	addeq sp, sp, #0x14
	andeq r0, r0, #0xff
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r2, r2, #1
	cmp r2, #0x14
	blt _0204C8FC
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0204c86c

	arm_func_start FUN_0204c92c
FUN_0204c92c: ; 0x0204C92C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r1
	mov r9, r2
	mov r8, r3
	mov r4, #0
	bl FUN_0205107c
	mov r5, r0
	mov r0, #1
	cmp r10, #0
	moveq r0, r4
	mov r7, #1
	cmp r0, #0
	moveq r7, #0
	cmp r8, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r6, r0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	mov r1, r9
	bl FUN_0204fd68
	movs r1, r0
	beq _0204C9A8
	mov r0, r5
	mov r2, r4
	sub r1, r1, #1
	bl FUN_0204fb8c
_0204C9A8:
	sub r8, r8, #1
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204CA00
	mov r0, r5
	bl FUN_0204fda4
	movs r4, r0
	beq _0204C9F0
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r5
	sub r1, r4, #1
	bl FUN_0204fb8c
	b _0204CA00
_0204C9F0:
	mov r0, r6
	mov r2, r7
	mov r1, #0
	bl FUN_0206d9cc
_0204CA00:
	mov r0, r5
	mov r1, r8
	mov r2, r9
	bl FUN_0204fb8c
	mov r0, r6
	mov r1, r7
	bl FUN_0206d9b0
	cmp r0, #0
	bne _0204CA50
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _0204CA50
	ldr r0, _0204CA58 ; =gLogicThink
	mov r1, r10
	mov r2, r7
	bl FUN_0204c86c
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_0206d9cc
_0204CA50:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204CA58: .word gLogicThink
	arm_func_end FUN_0204c92c

	arm_func_start FUN_0204ca5c
FUN_0204ca5c: ; 0x0204CA5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, r0
	add r0, r9, #0xcc
	ldr r6, [sp, #0x4c]
	mov r8, r1
	add r1, r0, #0x400
	mov r0, r3
	sub r10, r0, #1
	str r3, [sp, #0xc]
	mov r0, #0
	cmp r6, #0
	strneh r0, [r6]
	ldr r0, [sp, #0xc]
	mov r7, r2
	add r4, r1, r8, lsl #4
	ldr r5, [sp, #0x50]
	cmp r0, #0
	bge _0204CAB8
	cmp r0, #4
	addge sp, sp, #0x20
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CAB8:
	ldr r0, _0204CE4C ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	mov r2, r8
	bl FUN_0206c7dc
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r11, r0
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_0204c760
	cmp r0, #0
	beq _0204CBCC
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_0204c680
	sub r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	mov r2, r7
	mov r7, r0
	mov r1, r10
	mov r0, r4
	mov r3, #0
	bl FUN_020501bc
	ldr r1, [sp, #0x14]
	mov r0, r4
	mov r3, #0
	mov r2, r7
	bl FUN_020501bc
	cmp r6, #0
	mov r0, r11
	strneh r7, [r6]
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CBC0
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CBB4
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CBB4:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CBC0:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CBCC:
	cmp r10, #0
	blt _0204CD08
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	cmp r0, #0
	bne _0204CC08
	mov r0, r4
	mov r1, r10
	mov r2, r7
	mov r3, #0
	bl FUN_020501bc
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CC08:
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	beq _0204CD08
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	str r0, [sp, #0x10]
	mov r1, #0
	bl FUN_ov16_020efa9c
	str r0, [sp, #0x18]
	bl FUN_0206d8a8
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	mov r0, r9
	mov r1, r8
	bl FUN_0204d2a4
	mov r1, r10
	mov r2, r7
	mov r0, r4
	mov r3, #0
	bl FUN_020501bc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r9
	mov r1, r8
	bl FUN_0204ca5c
	ldr r1, [sp, #0x10]
	mov r0, r4
	bl FUN_020502a8
	cmp r0, #0
	beq _0204CCA0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl FUN_0206d968
_0204CCA0:
	cmp r6, #0
	ldrne r0, [sp, #0x10]
	strneh r0, [r6]
	mov r0, r11
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CCFC
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CCF0
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CCF0:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CCFC:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CD08:
	mov r10, #0
_0204CD0C:
	mov r0, r4
	mov r1, r10
	bl FUN_02050244
	cmp r0, #0
	bne _0204CD90
	mov r0, r4
	mov r1, r10
	mov r2, r7
	mov r3, #0
	bl FUN_020501bc
	mov r0, r11
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CD84
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CD78
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CD78:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CD84:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CD90:
	add r10, r10, #1
	cmp r10, #4
	blt _0204CD0C
	ldrb r0, [sp, #0x48]
	cmp r0, #0
	beq _0204CE40
	mov r0, r4
	mov r1, #3
	bl FUN_02050244
	mov r10, r0
	mov r0, r9
	mov r1, r8
	mov r2, r10
	bl FUN_0204d2a4
	mov r0, r4
	mov r1, #3
	mov r2, r7
	mov r3, #0
	bl FUN_020501bc
	cmp r6, #0
	mov r0, r11
	strneh r10, [r6]
	bl FUN_0206d8a8
	cmp r0, #0
	bne _0204CE34
	mov r4, #2
	mov r0, r9
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_0204c32c
	cmp r0, #0
	bne _0204CE28
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl FUN_020731ec
	mov r5, r0
_0204CE28:
	mov r0, r11
	mov r1, r5
	bl FUN_0206d968
_0204CE34:
	add sp, sp, #0x20
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CE40:
	mov r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204CE4C: .word unk_0209A11C
	arm_func_end FUN_0204ca5c

	arm_func_start FUN_0204ce50
FUN_0204ce50: ; 0x0204CE50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, #0
	mov r11, r0
	mov r1, r10
	mov r5, r10
	bl FUN_0205106c
	mov r7, r0
	mov r0, r11
	mov r1, r10
	bl FUN_0205107c
	mov r8, r0
	ldr r0, _0204D0AC ; =gLogicThink
	bl FUN_ov16_020edfb0
	cmp r0, #0
	ble _0204CF50
	ldr r4, _0204D0B0 ; =0x0209A11C
_0204CE90:
	mov r0, r7
	mov r1, r10
	bl FUN_02050244
	mov r1, r0
	ldr r0, [r4]
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0204CF34
	mov r9, #1
_0204CEB8:
	mov r0, r8
	sub r1, r9, #1
	bl FUN_0204fbe8
	mov r6, r0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	cmpne r6, #0
	beq _0204CF20
	mov r0, r7
	mov r1, r6
	bl FUN_020502a8
	cmp r0, #0
	bne _0204CF20
	mov r0, r7
	mov r1, r10
	mov r2, r6
	mov r3, r5
	bl FUN_020501bc
	mov r0, r11
	mov r1, r6
	mov r2, r10
	bl FUN_0204d524
	b _0204CF34
_0204CF20:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	cmp r9, #0x10
	bls _0204CEB8
_0204CF34:
	add r0, r10, #1
	mov r6, r0, lsl #0x10
	ldr r0, _0204D0AC ; =gLogicThink
	mov r10, r6, lsr #0x10
	bl FUN_ov16_020edfb0
	cmp r0, r6, lsr #16
	bgt _0204CE90
_0204CF50:
	mov r0, r7
	mov r1, #1
	mov r5, #0
	bl FUN_0204fed8
	movs r4, r0
	beq _0204CF84
	ldr r0, _0204D0B0 ; =0x0209A11C
	mov r1, r4
	ldr r0, [r0]
	mov r2, r5
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r4, r5
_0204CF84:
	cmp r4, #0
	bne _0204CFF8
	mov r6, #2
_0204CF90:
	mov r0, r7
	mov r1, r6
	bl FUN_0204fed8
	mov r1, r5
	mov r4, r0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204CFE4
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	bne _0204CFE4
	mov r0, r7
	mov r1, r4
	bl FUN_0204fff8
	mov r2, #1
	mov r1, r0
	mov r0, r7
	mov r3, r2
	bl FUN_02050144
	b _0204CFF8
_0204CFE4:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #0xb
	ble _0204CF90
_0204CFF8:
	ldr r5, _0204D0AC ; =gLogicThink
	mov r6, #0
	mov r0, r5
	bl FUN_ov16_020edfb0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D010:
	mov r0, r7
	mov r1, r6
	bl FUN_02050244
	cmp r0, #0
	bne _0204D08C
	mov r0, r5
	mov r8, r6
	bl FUN_ov16_020edfb0
	cmp r6, r0
	bge _0204D08C
_0204D038:
	mov r0, r7
	mov r1, r8
	bl FUN_02050244
	movs r4, r0
	beq _0204D070
	mov r0, r7
	mov r1, r4
	bl FUN_0205019c
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_020501bc
	b _0204D08C
_0204D070:
	add r0, r8, #1
	mov r4, r0, lsl #0x10
	mov r0, r5
	mov r8, r4, lsr #0x10
	bl FUN_ov16_020edfb0
	cmp r0, r4, lsr #16
	bgt _0204D038
_0204D08C:
	add r0, r6, #1
	mov r4, r0, lsl #0x10
	mov r0, r5
	mov r6, r4, lsr #0x10
	bl FUN_ov16_020edfb0
	cmp r0, r4, lsr #16
	bgt _0204D010
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D0AC: .word gLogicThink
_0204D0B0: .word unk_0209A11C
	arm_func_end FUN_0204ce50

	arm_func_start FUN_0204d0b4
FUN_0204d0b4: ; 0x0204D0B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl FUN_0205107c
	mov r6, #1
	mov r5, r0
	mov r4, #0
	mov r11, r6
_0204D0D4:
	mov r0, r5
	sub r1, r6, #1
	bl FUN_0204fbe8
	movs r7, r0
	beq _0204D104
	ldr r0, _0204D2A0 ; =0x0209A11C
	mov r1, r7
	ldr r0, [r0]
	mov r2, r4
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r7, r4
_0204D104:
	cmp r7, #0
	bne _0204D164
	mov r7, #0xc
_0204D110:
	sub r8, r7, #1
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204D150
	mov r0, r5
	mov r1, r8
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r10
	str r11, [sp]
	mov r1, r9
	mov r3, r6
	bl FUN_0204c92c
	b _0204D164
_0204D150:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x10
	ble _0204D110
_0204D164:
	add r6, r6, #1
	cmp r6, #0xb
	ble _0204D0D4
	mov r6, #0xc
	mov r4, #1
_0204D178:
	mov r0, r5
	sub r1, r6, #1
	bl FUN_0204fbe8
	cmp r0, #0
	bne _0204D1E0
	add r7, r6, #1
	cmp r7, #0x10
	bgt _0204D1E0
_0204D198:
	mov r0, r5
	sub r1, r7, #1
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204D1D4
	mov r0, r5
	sub r1, r7, #1
	bl FUN_0204fbe8
	mov r2, r0
	mov r0, r10
	mov r1, r9
	mov r3, r6
	str r4, [sp]
	bl FUN_0204c92c
	b _0204D1E0
_0204D1D4:
	add r7, r7, #1
	cmp r7, #0x10
	ble _0204D198
_0204D1E0:
	add r6, r6, #1
	cmp r6, #0x10
	ble _0204D178
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0204fbe8
	movs r6, r0
	beq _0204D220
	ldr r0, _0204D2A0 ; =0x0209A11C
	mov r1, r6
	ldr r0, [r0]
	mov r2, r4
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r6, r4
_0204D220:
	cmp r6, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #2
	mov r4, #0
_0204D230:
	sub r7, r6, #1
	mov r0, r5
	mov r1, r7
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D288
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r0, #1
	bne _0204D288
	mov r0, r5
	mov r1, r7
	bl FUN_0204fbe8
	mov r3, #1
	mov r2, r0
	mov r0, r10
	mov r1, r9
	str r3, [sp]
	bl FUN_0204c92c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D288:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	cmp r6, #0xb
	ble _0204D230
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D2A0: .word unk_0209A11C
	arm_func_end FUN_0204d0b4

	arm_func_start FUN_0204d2a4
FUN_0204d2a4: ; 0x0204D2A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xcc
	ldr r3, _0204D34C ; =0x00000FFF
	mov r4, r2
	mov r5, r1
	add r0, r0, #0x400
	add r7, r0, r5, lsl #4
	and r4, r4, r3
	mov r6, #0
	b _0204D2FC
_0204D2CC:
	mov r0, r7
	mov r1, r6
	bl FUN_02050258
	cmp r4, r0
	bne _0204D2F8
	mov r2, #0
	mov r0, r7
	mov r1, r6
	mov r3, r2
	bl FUN_020501bc
	b _0204D304
_0204D2F8:
	add r6, r6, #1
_0204D2FC:
	cmp r6, #4
	blt _0204D2CC
_0204D304:
	cmp r6, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0204D350 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	cmpeq r5, #1
	orreq r4, r4, #0x8000
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D344
	mov r1, r5
	bl FUN_0206d968
_0204D344:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204D34C: .word 0x00000FFF
_0204D350: .word unk_020A0640
	arm_func_end FUN_0204d2a4

	arm_func_start FUN_0204d354
FUN_0204d354: ; 0x0204D354
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0xc
	add r0, r0, #0x400
	add r6, r0, r1, lsl #5
	ldr r0, _0204D3BC ; =0x00000FFF
	mov r5, #0
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_0204D378:
	mov r0, r6
	mov r1, r5
	bl FUN_0204fbfc
	cmp r4, r0
	bne _0204D3A0
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_0204fb8c
	b _0204D3AC
_0204D3A0:
	add r5, r5, #1
	cmp r5, #0x10
	blt _0204D378
_0204D3AC:
	mov r0, #0
	cmp r5, #0x10
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0204D3BC: .word 0x00000FFF
	arm_func_end FUN_0204d354

	arm_func_start FUN_0204d3c0
FUN_0204d3c0: ; 0x0204D3C0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0204D430 ; =0x020A0640
	mov r6, r0
	ldrb r0, [r3, #0x1b]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	bne _0204D3F0
	ldr r0, _0204D434 ; =0x00000FFF
	cmp r5, #1
	and r4, r4, r0
	orreq r4, r4, #0x8000
_0204D3F0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d2a4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d354
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d4e8
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0204D430: .word unk_020A0640
_0204D434: .word 0x00000FFF
	arm_func_end FUN_0204d3c0

	arm_func_start FUN_0204d438
FUN_0204d438: ; 0x0204D438
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xcc
	ldr r3, _0204D4E0 ; =0x00000FFF
	mov r4, r2
	mov r5, r1
	add r0, r0, #0x400
	add r7, r0, r5, lsl #4
	and r4, r4, r3
	mov r6, #0
	b _0204D490
_0204D460:
	mov r0, r7
	mov r1, r6
	bl FUN_02050258
	cmp r4, r0
	bne _0204D48C
	mov r2, #0
	mov r0, r7
	mov r1, r6
	mov r3, r2
	bl FUN_020501bc
	b _0204D498
_0204D48C:
	add r6, r6, #1
_0204D490:
	cmp r6, #4
	blt _0204D460
_0204D498:
	cmp r6, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0204D4E4 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	cmpeq r5, #1
	orreq r4, r4, #0x8000
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D4D8
	mov r1, r5
	bl FUN_0206d968
_0204D4D8:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0204D4E0: .word 0x00000FFF
_0204D4E4: .word unk_020A0640
	arm_func_end FUN_0204d438

	arm_func_start FUN_0204d4e8
FUN_0204d4e8: ; 0x0204D4E8
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r2
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, pc}
	ldr r2, _0204D520 ; =0x0209A11C
	ldrsh r1, [r0, #0x94]
	ldr r0, [r2]
	bl FUN_0206c5d8
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0204D520: .word unk_0209A11C
	arm_func_end FUN_0204d4e8

	arm_func_start FUN_0204d524
FUN_0204d524: ; 0x0204D524
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xa0
	mov r4, r1
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r6, r2
	mov r10, #0x32
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0204D55C
	bl FUN_0206dcd4
	ldrh r9, [r0, #0xe]
	b _0204D580
_0204D55C:
	ldr r0, _0204D69C ; =gLogicThink
	add r2, sp, #0x38
	mov r1, r4
	bl FUN_0204bd64
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r9, [sp, #0x90]
_0204D580:
	ldr r5, _0204D6A0 ; =g2DAdventureLogic
	str r10, [sp]
	mov r8, #0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r8
	mov r3, r9
	bl FUN_02055004
	mov r7, r0
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_02055890
	ldr r0, [r5]
	mov r1, r7
	bl FUN_020552cc
	mov r6, #1
	mov r1, r6
	bl FUN_02054424
	ldr r0, [r5]
	bl FUN_02055c20
	mov r1, r7
	bl FUN_02054854
	mov r2, r0
	ldr r1, [r5]
	add r0, sp, #0x20
	bl FUN_02055c28
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r2, [sp, #0x30]
	str r8, [sp]
	stmib sp, {r2, r8}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r1, [sp, #0x34]
	ldr r1, [r5]
	add r0, sp, #0x14
	mov r2, r7
	str r3, [sp, #0x2c]
	bl FUN_020555e8
	ldr r2, [sp, #0x34]
	ldr r0, [r5]
	mov r2, r2, lsl #0x10
	mov r1, r7
	mov r2, r2, lsr #0x10
	bl FUN_02055558
	ldr r0, [r5]
	mov r1, r7
	bl FUN_02055324
	ldr r5, _0204D6A4 ; =g2DGChar
	str r10, [sp]
	mov r7, r0
	ldr r0, [r5]
	mov r1, r4
	mov r2, r9
	mov r3, r8
	bl FUN_02056ed4
	str r9, [sp]
	stmib sp, {r8, r10}
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl FUN_02056b24
	ldr r0, [r5]
	mov r1, r6
	bl FUN_02057020
	mov r0, r6
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204D69C: .word gLogicThink
_0204D6A0: .word g2DAdventureLogic
_0204D6A4: .word g2DGChar
	arm_func_end FUN_0204d524

	arm_func_start FUN_0204d6a8
FUN_0204d6a8: ; 0x0204D6A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r5, _0204D7F4 ; =g2DAdventureLogic
	mov r10, #0
	ldr r0, [r5]
	mov r2, r10
	mov r11, r1
	bl FUN_020554b0
	str r0, [sp]
	ldr r0, [r5]
	bl FUN_02055c20
	ldr r1, [sp]
	mov r9, r0
	bl FUN_02054854
	sub r1, r10, #1
	cmp r0, r1
	beq _0204D7E8
	add r7, sp, #0x10
	add r6, sp, #4
	mov r4, #0xc
	b _0204D744
_0204D6FC:
	ldr r0, [r5]
	mov r1, r10
	bl FUN_020552dc
	movs r8, r0
	beq _0204D740
	bl FUN_0205430c
	mul r2, r10, r4
	ldr r3, [r0]
	ldr r1, [r0, #4]
	ldrh r12, [r8, #0x6a]
	mov r8, r10, lsl #1
	str r3, [r7, r2]
	add r2, r7, r2
	ldr r0, [r0, #8]
	str r1, [r2, #4]
	str r0, [r2, #8]
	strh r12, [r6, r8]
_0204D740:
	add r10, r10, #1
_0204D744:
	ldr r0, [r9, #0x10]
	cmp r10, r0
	blt _0204D6FC
	ldr r0, _0204D7F4 ; =g2DAdventureLogic
	ldr r0, [r0]
	bl FUN_02055310
	movs r4, r0
	beq _0204D788
	bl FUN_0205430c
	ldrh r1, [r4, #0x6a]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	str r0, [sp, #0x48]
	strh r1, [sp, #0xc]
_0204D788:
	ldr r4, _0204D7F4 ; =g2DAdventureLogic
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [sp]
	mov r2, r5
	bl FUN_02055938
	ldr r0, [r4]
	ldr r1, [sp]
	bl FUN_02055274
	ldr r4, _0204D7F8 ; =g2DGChar
	mov r1, r11
	ldr r0, [r4]
	mov r2, #0
	bl FUN_02056a88
	mov r1, r0
	ldr r0, [r4]
	mov r2, r5
	bl FUN_02056e04
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02057020
	add sp, sp, #0x4c
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D7E8:
	mov r0, r10
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204D7F4: .word g2DAdventureLogic
_0204D7F8: .word g2DGChar
	arm_func_end FUN_0204d6a8

	arm_func_start FUN_0204d7fc
FUN_0204d7fc: ; 0x0204D7FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r3
	cmp r2, #0
	beq _0204D834
	bl _ZN11CLogicThink12FUN_020731a4Ev
	cmp r0, #0
	ldrne r0, _0204D860 ; =0x0209A454
	movne r1, #1
	strneb r1, [r0, #0x30]
	ldreq r0, _0204D860 ; =0x0209A454
	moveq r1, #0
	streqb r1, [r0, #0x30]
_0204D834:
	ldrb r0, [r6, #0x889]
	cmp r0, #0
	cmpeq r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0204da5c
	mov r0, r6
	mov r1, r5
	bl FUN_0204d8cc
	ldmfd sp!, {r4, r5, r6, pc}
_0204D860: .word unk_0209A454
	arm_func_end FUN_0204d7fc

	arm_func_start FUN_0204d864
FUN_0204d864: ; 0x0204D864
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r2
	mov r6, #0
	mov r4, #0x400
_0204D878:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0204D8A0
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0204D8A0
	mov r0, r5
	mov r1, r4
	bl FUN_0206d634
_0204D8A0:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0204D878
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0x400
	bl FUN_0206d620
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204d864

	arm_func_start FUN_0204d8cc
FUN_0204d8cc: ; 0x0204D8CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r1
	bl FUN_0207249c
	add r1, sp, #0
	mov r0, #5
	mov r6, #0
_0204D8E8:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0204D8E8
	mov r5, #1
	mov r8, #0
	add r4, sp, #0
	mov r11, r5
_0204D914:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0204D990
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204D990
	mov r0, r7
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204D990
	mov r0, r7
	mov r1, r5
	bl FUN_0206d9b0
	mov r9, r0
	mov r0, r7
	bl FUN_0206d660
	cmp r0, #0
	cmpne r9, #0
	ble _0204D970
	cmp r9, #0x14
	addle r0, r4, r9
	strleb r5, [r0, #-1]
_0204D970:
	cmp r9, #0
	blt _0204D980
	cmp r9, #0x14
	ble _0204D990
_0204D980:
	mov r0, r7
	mov r1, r6
	mov r2, r11
	bl FUN_0206d9cc
_0204D990:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0204D914
	mov r11, #1
	mov r8, #0
	add r5, sp, #0
	mov r4, r11
_0204D9AC:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _0204DA48
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204DA48
	mov r0, r9
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204DA48
	mov r0, r9
	bl FUN_0206d660
	cmp r0, #0
	beq _0204DA48
	mov r0, r9
	mov r1, r11
	bl FUN_0206d9b0
	cmp r0, #0
	beq _0204DA10
	mov r0, r9
	mov r1, r11
	bl FUN_0206d9b0
	cmp r0, #0x14
	bls _0204DA48
_0204DA10:
	mov r7, r6
_0204DA14:
	ldrb r0, [r5, r7]
	cmp r0, #0
	bne _0204DA3C
	add r1, r7, #1
	mov r0, r9
	mov r2, r4
	and r1, r1, #0xff
	bl FUN_0206d9cc
	strb r4, [r5, r7]
	b _0204DA48
_0204DA3C:
	add r7, r7, #1
	cmp r7, #0x14
	blt _0204DA14
_0204DA48:
	add r8, r8, #1
	cmp r8, #0x64
	blt _0204D9AC
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204d8cc

	arm_func_start FUN_0204da5c
FUN_0204da5c: ; 0x0204DA5C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x9c
	str r0, [sp, #8]
	add r2, sp, #0x10
	mov r10, r1
	mov r0, #4
	mov r4, #0
_0204DA78:
	strh r4, [r2]
	strh r4, [r2, #2]
	strh r4, [r2, #4]
	strh r4, [r2, #6]
	add r2, r2, #8
	subs r0, r0, #1
	bne _0204DA78
	mov r5, #0
	mov r11, #0x4000
	add r8, sp, #0x30
	ldr r7, _0204DE5C ; =0x0000018E
	ldr r6, _0204DE60 ; =0x02099E91
	b _0204DB38
_0204DAAC:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _0204DB34
	bl FUN_0206d5f0
	cmp r10, r0
	bne _0204DB34
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r8
	bl FUN_0206ed40
	mov r0, r9
	mov r1, r7
	bl FUN_0206d634
	mov r0, r8
	mov r1, r4
	bl FUN_0206e84c
	mov r0, r8
	mov r1, r4
	bl FUN_0206e984
	mov r0, r8
	mov r1, r4
	bl FUN_0206ea54
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206ed40
	ldrb r0, [r6]
	cmp r0, #0
	beq _0204DB34
	mov r0, r9
	mov r1, r11
	bl FUN_0206dadc
_0204DB34:
	add r5, r5, #1
_0204DB38:
	cmp r5, #0x64
	blt _0204DAAC
	ldr r0, [sp, #8]
	bl FUN_020731b4
	cmp r0, #0
	beq _0204DC70
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0205106c
	mov r11, r0
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0205107c
	mov r8, r0
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0207249c
	mov r6, #0
	str r0, [sp, #0xc]
	mov r5, r6
	b _0204DC60
_0204DB8C:
	cmp r10, #1
	bne _0204DBB4
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	mov r7, r0
	mov r0, r8
	mov r1, r7
	bl FUN_0204fd68
	b _0204DBD0
_0204DBB4:
	mov r0, r11
	mov r1, r5
	bl FUN_02050244
	mov r7, r0
	mov r0, r11
	mov r1, r7
	bl FUN_0205019c
_0204DBD0:
	mov r9, r0
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r7, r0
	cmpne r9, #0
	beq _0204DC5C
	mov r1, r9
	bl FUN_0206d968
	mov r0, r7
	mov r1, #0xe
	bl FUN_0206d620
	cmp r9, #1
	bne _0204DC3C
	mov r0, r7
	mov r1, #0x80
	bl FUN_0206d620
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0204DC3C
	mov r0, r7
	bl FUN_0206dcd4
	ldr r2, [sp, #0xc]
	mov r1, r4
	ldrh r2, [r2, #0x32]
	bl FUN_0206def8
_0204DC3C:
	mov r0, #7
	stmia sp, {r0, r4}
	ldr r0, _0204DE64 ; =gLogicThink
	mov r1, r7
	mov r2, #1
	mov r3, r4
	bl FUN_0204e79c
	add r6, r6, #1
_0204DC5C:
	add r5, r5, #1
_0204DC60:
	cmp r5, #4
	blt _0204DB8C
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204DC70:
	ldr r0, _0204DE68 ; =0x020A0640
	mov r5, #0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0204DC94
	ldr r0, [sp, #8]
	bl FUN_020731d0
	cmp r0, #0
	movne r5, #1
_0204DC94:
	mov r9, #2
	cmp r5, #0
	moveq r9, r10
	ldr r0, [sp, #8]
	mov r1, r9
	bl FUN_0205107c
	mov r8, r0
	ldr r0, [sp, #8]
	mov r1, r10
	bl FUN_0207249c
	mov r6, #0
	mov r11, r0
	mov r5, r6
	b _0204DD1C
_0204DCCC:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	cmp r0, #0
	bne _0204DD18
	mov r7, r4
	b _0204DD10
_0204DCE8:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	movs r2, r0
	beq _0204DD0C
	mov r0, r8
	mov r1, r5
	bl FUN_0204fb8c
	b _0204DD18
_0204DD0C:
	add r7, r7, #1
_0204DD10:
	cmp r7, #5
	blt _0204DCE8
_0204DD18:
	add r5, r5, #1
_0204DD1C:
	cmp r5, #0x10
	blt _0204DCCC
	mov r5, #0
	b _0204DE4C
_0204DD2C:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	movs r10, r0
	beq _0204DE48
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _0204DE48
	ldr r0, _0204DE68 ; =0x020A0640
	mov r1, r10
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	mov r0, r8
	bne _0204DD70
	bl FUN_0204fd20
	b _0204DD74
_0204DD70:
	bl FUN_0204fd68
_0204DD74:
	movs r10, r0
	beq _0204DE48
	cmp r9, #2
	mov r0, r7
	mov r1, r10
	bne _0204DD94
	bl FUN_0206d998
	b _0204DD98
_0204DD94:
	bl FUN_0206d980
_0204DD98:
	mov r0, r7
	mov r1, #2
	bl FUN_0206d620
	cmp r10, #0xc
	bge _0204DDB8
	mov r0, r7
	mov r1, #0xc
	bl FUN_0206d620
_0204DDB8:
	cmp r10, #1
	bne _0204DDF0
	mov r0, r7
	mov r1, #0x80
	bl FUN_0206d620
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0204DDF0
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r4
	ldrh r2, [r11, #0x32]
	bl FUN_0206def8
_0204DDF0:
	mov r0, #7
	stmia sp, {r0, r4}
	ldr r0, _0204DE64 ; =gLogicThink
	mov r1, r7
	mov r2, #1
	mov r3, r4
	bl FUN_0204e79c
	ldr r0, _0204DE60 ; =0x02099E91
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r0, _0204DE6C ; =0x02099E97
	ldrneb r0, [r0]
	cmpne r0, #0
	beq _0204DE44
	mov r0, r7
	bl FUN_0206d6c4
	cmp r0, #0
	beq _0204DE44
	mov r0, r7
	mov r1, #0x4000
	bl FUN_0206dac4
_0204DE44:
	add r6, r6, #1
_0204DE48:
	add r5, r5, #1
_0204DE4C:
	cmp r5, #0x10
	blt _0204DD2C
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204DE5C: .word 0x0000018E
_0204DE60: .word unk_02099E91
_0204DE64: .word gLogicThink
_0204DE68: .word unk_020A0640
_0204DE6C: .word unk_02099E97
	arm_func_end FUN_0204da5c

	arm_func_start FUN_0204de70
FUN_0204de70: ; 0x0204DE70
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ble _0204DE84
	cmp r2, #4
	ble _0204DE8C
_0204DE84:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204DE8C:
	add r0, r0, #0xcc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #4
	sub r1, r2, #1
	bl FUN_02050244
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204de70

	arm_func_start FUN_0204dea4
FUN_0204dea4: ; 0x0204DEA4
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ble _0204DEB8
	cmp r2, #0x10
	ble _0204DEC0
_0204DEB8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204DEC0:
	add r0, r0, #0xc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #5
	sub r1, r2, #1
	bl FUN_0204fbe8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204dea4

	arm_func_start FUN_0204ded8
FUN_0204ded8: ; 0x0204DED8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r8, r1
	cmp r7, #0
	ble _0204DEF4
	cmp r7, #0x10
	ble _0204DEFC
_0204DEF4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204DEFC:
	mov r6, #0
	mov r4, r6
_0204DF04:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _0204DF50
	bl FUN_0206d64c
	cmp r0, #0
	beq _0204DF50
	mov r0, r5
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0204DF50
	mov r0, r5
	mov r1, r4
	bl FUN_0206d824
	cmp r7, r0
	bne _0204DF50
	mov r0, r5
	bl FUN_0206cbf8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0204DF50:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0204DF04
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204ded8

	arm_func_start FUN_0204df64
FUN_0204df64: ; 0x0204DF64
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	cmp r0, #0x63
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0206dcd4
	ldr r4, [r0]
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r2, [r0, #0x4a]
	mov r0, r6
	mov r1, r5
	add r2, r2, #1
	bl FUN_0204e000
	sub r0, r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204df64

	arm_func_start FUN_0204dfb8
FUN_0204dfb8: ; 0x0204DFB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r7
	bl FUN_0206dcd4
	ldr r1, [r4]
	add r1, r6, r1
	bl FUN_0206dcf0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_0204e118
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204dfb8

	arm_func_start FUN_0204e000
FUN_0204e000: ; 0x0204E000
	stmfd sp!, {r4, lr}
	ldrb r1, [r1, #0x4c]
	mov r4, r2
	bl FUN_02072054
	mov r1, r4
	bl FUN_020506dc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0204e000

	arm_func_start FUN_0204e01c
FUN_0204e01c: ; 0x0204E01C
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r1, [r4, #2]
	ldr r3, [r0, #0x7e8]
	mov r0, #0x68
	mla r0, r1, r0, r3
	mov r1, r2
	bl FUN_02050708
	ldrb r12, [r4]
	ldrb r2, [r4, #1]
	ldr r1, _0204E07C ; =0x51EB851F
	sub r2, r2, r12
	mul r2, r0, r2
	smull r0, r3, r1, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	adds r0, r12, r3
	movmi r0, #0
	cmp r0, #0xff
	movgt r0, #0xff
	and r0, r0, #0xff
	ldmfd sp!, {r4, pc}
_0204E07C: .word 0x51EB851F
	arm_func_end FUN_0204e01c

	arm_func_start FUN_0204e080
FUN_0204e080: ; 0x0204E080
	stmfd sp!, {r4, lr}
	movs r4, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r1, [r4, #4]
	ldr r3, [r0, #0x7e8]
	mov r0, #0x68
	mla r0, r1, r0, r3
	mov r1, r2
	bl FUN_02050708
	ldrh r12, [r4]
	ldrh r2, [r4, #2]
	ldr r1, _0204E0E8 ; =0x51EB851F
	sub r2, r2, r12
	mul r2, r0, r2
	smull r0, r3, r1, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #5
	adds r1, r12, r3
	ldr r0, _0204E0EC ; =0x000003E7
	movmi r1, #0
	cmp r1, r0
	movgt r1, r0
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_0204E0E8: .word 0x51EB851F
_0204E0EC: .word 0x000003E7
	arm_func_end FUN_0204e080

	arm_func_start FUN_0204e0f0
FUN_0204e0f0: ; 0x0204E0F0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, #0
	mov r3, r2
	str r12, [sp]
	mov r2, #1
	str r12, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204e0f0

	arm_func_start FUN_0204e118
FUN_0204e118: ; 0x0204E118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	mov r9, r1
	add r3, sp, #4
	mov r1, #0
	movs r8, r2
	mov r10, r0
	str r1, [r3]
	str r1, [r3, #4]
	str r1, [r3, #8]
	str r1, [r3, #0xc]
	beq _0204E154
	mov r0, r8
	mov r2, #0x10
	bl MI_CpuFill8
_0204E154:
	mov r0, r9
	bl FUN_0206dcdc
	cmp r0, #0
	addne sp, sp, #0xc8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206dcd4
	add r4, sp, #0x5c
	str r0, [sp]
	mov r1, r0
	mov r0, r4
	bl FUN_0206ed40
	str r4, [r9, #0x68]
	ldrb r5, [sp, #0xa6]
	mov r7, #1
	ldr r6, [sp, #0x5c]
	mov r0, r10
	mov r1, r9
	mov r2, r7
	mov r11, r5
	bl FUN_0204e000
	cmp r6, r0
	bhs _0204E1D0
	mov r0, r10
	mov r1, r9
	mov r2, r7
	bl FUN_0204e000
	mov r1, r0
	mov r0, r4
	bl FUN_0206dcf0
_0204E1D0:
	cmp r5, #0x63
	bge _0204E314
_0204E1D8:
	ldr r6, [r4]
	mov r0, r10
	mov r1, r9
	add r2, r5, #1
	bl FUN_0204e000
	cmp r6, r0
	blo _0204E314
	add r1, r5, #1
	mov r0, r4
	and r1, r1, #0xff
	bl FUN_0206e43c
	add r6, sp, #4
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FUN_0204e0f0
	cmp r8, #0
	beq _0204E268
	mov r1, #0
	mov r2, r1
_0204E228:
	ldr r7, [r6, r2, lsl #2]
	cmp r7, #0
	beq _0204E25C
	mov r3, r1
_0204E238:
	ldr r0, [r8, r3, lsl #2]
	cmp r0, #0
	bgt _0204E250
	cmp r0, r7
	strne r7, [r8, r3, lsl #2]
	bne _0204E25C
_0204E250:
	add r3, r3, #1
	cmp r3, #4
	blt _0204E238
_0204E25C:
	add r2, r2, #1
	cmp r2, #4
	blt _0204E228
_0204E268:
	cmp r9, #0
	beq _0204E308
	mov r0, r9
	bl FUN_0206cbf8
	mov r1, r0
	add r2, sp, #0x14
	mov r0, r10
	bl FUN_0204c078
	cmp r0, #0
	beq _0204E308
	ldrsb r1, [r4, #0x60]
	ldrsb r0, [sp, #0x53]
	ldrsb r6, [r4, #0x61]
	ldrsb r7, [r4, #0x62]
	add r0, r1, r0
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldrsb r0, [sp, #0x55]
	cmp r1, #0x64
	movge r1, #0x64
	add r0, r6, r0
	mov r0, r0, lsl #0x18
	mov r6, r0, asr #0x18
	ldrsb r0, [sp, #0x57]
	cmp r6, #0x64
	movge r6, #0x64
	add r0, r7, r0
	mov r0, r0, lsl #0x18
	mov r7, r0, asr #0x18
	cmp r7, #0x64
	mov r0, r4
	and r1, r1, #0xff
	movge r7, #0x64
	bl FUN_0206eb24
	mov r0, r4
	and r1, r6, #0xff
	bl FUN_0206eb8c
	mov r0, r4
	and r1, r7, #0xff
	bl FUN_0206ebf4
_0204E308:
	add r5, r5, #1
	cmp r5, #0x63
	blt _0204E1D8
_0204E314:
	ldr r1, [sp]
	mov r0, r9
	str r1, [r9, #0x68]
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206ed40
	ldrb r0, [r4, #0x4a]
	cmp r11, r0
	addeq sp, sp, #0xc8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_0206d5f0
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _0204E378
	mov r0, r9
	bl FUN_0206cbf8
	cmp r0, #1
	bne _0204E378
	mov r0, r10
	bl FUN_02073384
	mov r0, #1
	strb r0, [r10, #0x88b]
_0204E378:
	mov r0, #1
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204e118

	arm_func_start FUN_0204e384
FUN_0204e384: ; 0x0204E384
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #0
	add lr, r1, #0x6c
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmpne r2, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r5, r4
_0204E3A8:
	add r12, lr, r5
	ldrb r12, [r12, #0xf]
	add r5, r5, #1
	cmp r5, #7
	add r4, r4, r12
	blt _0204E3A8
	sub r3, r4, r3
	cmp r3, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r3, r2
	movgt r3, r2
	ldrsb r2, [r1]
	sub r2, r2, r3
	cmp r2, #0x7f
	ble _0204E3F4
	subs r2, r2, #0x7f
	rsbmi r2, r2, #0
	sub r3, r3, r2
	mov r2, #0x7f
_0204E3F4:
	cmn r2, #0x7f
	bge _0204E40C
	adds r2, r2, #0x7f
	rsbmi r2, r2, #0
	sub r3, r3, r2
	mvn r2, #0x7e
_0204E40C:
	strb r2, [r1]
	ldrb r1, [r0]
	sub r1, r1, r3
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204e384

	arm_func_start FUN_0204e420
FUN_0204e420: ; 0x0204E420
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r9, r1
	mov r10, r0
	mov r0, r9
	mov r8, r2
	str r3, [sp, #8]
	bl FUN_0206dcd4
	mov r5, r0
	mov r0, r9
	bl FUN_0206cc34
	ldr r1, _0204E794 ; =0x020A1540
	ldrb r2, [r8, #0x46]
	ldrh r1, [r1, #0xd0]
	mov r11, r0
	ldrh r7, [r8, #0x3c]
	mov r0, r1, asr r2
	tst r0, #1
	movne r12, #1
	moveq r12, #0
	mov r3, #0x14
	cmp r7, #0
	ldrsh r6, [r5, #0x18]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	ldreq r7, _0204E798 ; =0x00007FFF
	mul r4, r12, r3
	bl FUN_0204e080
	add r0, r0, r6
	strh r0, [r9, #0x70]
	ldrsh r6, [r5, #0x1a]
	mov r0, r10
	mov r2, r11
	add r1, r8, #8
	bl FUN_0204e080
	add r0, r0, r6
	strh r0, [r9, #0x72]
	add r6, r9, #0x7b
	mov r0, #0
	add r1, sp, #0x28
	b _0204E4D4
_0204E4C8:
	ldrb r2, [r6, r0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
_0204E4D4:
	cmp r0, #7
	blt _0204E4C8
	ldrsb r0, [r5, #0x4f]
	mov r2, r11
	add r1, r8, #0x10
	str r0, [sp, #0x20]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x20]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6]
	ldrsb r0, [r5, #0x50]
	add r1, r8, #0x14
	str r0, [sp, #0x1c]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x1c]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #1]
	ldrsb r0, [r5, #0x51]
	add r1, r8, #0x18
	str r0, [sp, #0x18]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x18]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #3]
	ldrsb r0, [r5, #0x52]
	add r1, r8, #0x1c
	str r0, [sp, #0x14]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x14]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #2]
	ldrsb r0, [r5, #0x53]
	add r1, r8, #0x20
	str r0, [sp, #0x10]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0x10]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #4]
	ldrsb r0, [r5, #0x54]
	add r1, r8, #0x24
	str r0, [sp, #0xc]
	mov r0, r10
	bl FUN_0204e01c
	ldr r1, [sp, #0xc]
	mov r2, r11
	add r0, r0, r1
	strb r0, [r6, #6]
	add r1, r8, #0x28
	ldrsb r8, [r5, #0x55]
	mov r0, r10
	bl FUN_0204e01c
	add r0, r0, r8
	strb r0, [r6, #5]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0204E780
	mov r0, #0
	add r2, sp, #0x28
	b _0204E5FC
_0204E5E8:
	ldrb r3, [r6, r0]
	ldr r1, [r2, r0, lsl #2]
	sub r1, r3, r1
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
_0204E5FC:
	cmp r0, #7
	blt _0204E5E8
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	bne _0204E780
	ldrsb r0, [r5, #0x4f]
	add r8, sp, #0x24
	ldr r2, [sp, #0x28]
	strb r0, [sp, #0x24]
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	str r6, [sp, #4]
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e50c
	ldrsb r2, [r5, #0x50]
	add r1, r6, #1
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x2c]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e574
	ldrsb r2, [r5, #0x51]
	add r1, r6, #3
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x34]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e5dc
	ldrsb r2, [r5, #0x52]
	add r1, r6, #2
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x30]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e644
	ldrsb r2, [r5, #0x53]
	add r1, r6, #4
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x38]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e6ac
	ldrsb r2, [r5, #0x54]
	add r1, r6, #6
	mov r0, r10
	strb r2, [sp, #0x24]
	str r8, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x40]
	mov r1, r9
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e714
	ldrsb r0, [r5, #0x55]
	add r3, r6, #5
	ldr r2, [sp, #0x3c]
	strb r0, [sp, #0x24]
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	str r3, [sp, #4]
	add r3, r4, r7
	bl FUN_0204e384
	ldrsb r1, [sp, #0x24]
	mov r0, r5
	bl FUN_0206e77c
_0204E780:
	add r0, r9, #0x6c
	bl FUN_02050cb4
	mov r0, #1
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204E794: .word unk_020A1540
_0204E798: .word 0x00007FFF
	arm_func_end FUN_0204e420

	arm_func_start FUN_0204e79c
FUN_0204e79c: ; 0x0204E79C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	mov r10, r0
	mov r9, r1
	mov r11, r2
	mov r8, r3
	ldr r4, [sp, #0xf0]
	mov r5, #0
	bl FUN_0204fb20
	mov r0, r5
_0204E7C4:
	cmp r8, #0
	strne r5, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #4
	blt _0204E7C4
	cmp r4, #3
	beq _0204E824
	ldr r0, [sp, #0xf4]
	cmp r0, #0
	beq _0204E7FC
	add r1, sp, #0x80
	mov r2, #0x48
	bl MI_CpuCopy8
	b _0204E824
_0204E7FC:
	mov r0, r9
	bl FUN_0206cbf8
	mov r1, r0
	add r2, sp, #0x80
	mov r0, r10
	bl FUN_0204c078
	cmp r0, #0
	addeq sp, sp, #0xc8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204E824:
	mov r0, r9
	bl FUN_0206dcd4
	add r5, sp, #0x14
	str r0, [sp]
	mov r1, r0
	mov r0, r5
	bl FUN_0206ed40
	str r5, [r9, #0x68]
	tst r4, #1
	bne _0204E878
	tst r4, #4
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	mov r3, #1
	moveq r3, #0
	add r2, sp, #0x80
	mov r0, r10
	mov r1, r9
	bl FUN_0204e420
	b _0204E880
_0204E878:
	add r0, r9, #0x6c
	bl FUN_02050cb4
_0204E880:
	tst r4, #2
	bne _0204E8E8
	mov r6, #0
	mov r7, r6
	mov r4, #1
	add r5, sp, #0x80
_0204E898:
	mov r0, r9
	bl FUN_0206cc34
	add r2, r5, r7, lsl #2
	ldrb r1, [r2, #0x2e]
	cmp r0, r1
	blt _0204E8DC
	ldrh r2, [r2, #0x2c]
	mov r0, r10
	mov r1, r9
	mov r3, r4
	bl FUN_02049e14
	cmp r0, #0
	cmpne r8, #0
	addne r0, r5, r7, lsl #2
	ldrneh r0, [r0, #0x2c]
	strne r0, [r8, r6, lsl #2]
	addne r6, r6, #1
_0204E8DC:
	add r7, r7, #1
	cmp r7, #4
	blt _0204E898
_0204E8E8:
	mov r6, #0
	add r4, sp, #4
_0204E8F0:
	mov r0, r9
	mov r1, r6
	bl FUN_0206cd90
	movs r1, r0
	beq _0204E944
	mov r0, r10
	bl FUN_ov16_020ee034
	movs r5, r0
	beq _0204E944
	bl FUN_ov16_020eef1c
	cmp r0, #0
	beq _0204E944
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020eee80
	cmp r0, #0
	bne _0204E944
	mov r1, r4
	add r0, r9, #0x6c
	bl FUN_02050ce0
_0204E944:
	add r6, r6, #1
	cmp r6, #4
	blt _0204E8F0
	cmp r11, #0
	beq _0204E9C8
	mov r0, r9
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r10
	bl FUN_ov16_020ee468
	mov r4, r0
	mov r0, r9
	bl FUN_0206d6d8
	cmp r0, #0
	cmpne r4, #0
	beq _0204E9C8
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_020ee034
	mov r5, r0
	bl FUN_ov16_020eef1c
	cmp r0, #0
	beq _0204E9C8
	add r4, sp, #4
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020eee80
	cmp r0, #0
	bne _0204E9C8
	mov r1, r4
	add r0, r9, #0x6c
	bl FUN_02050ce0
_0204E9C8:
	mov r0, r9
	bl FUN_0206ccdc
	mov r4, r0
	mov r0, r9
	bl FUN_0206ccec
	cmp r4, r0
	ble _0204E9F8
	mov r0, r9
	bl FUN_0206ccec
	mov r1, r0
	mov r0, r9
	bl FUN_0206cc9c
_0204E9F8:
	mov r0, r9
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r9
	bl FUN_0206cc94
	cmp r4, r0
	ble _0204EA28
	mov r0, r9
	bl FUN_0206cc94
	mov r1, r0
	mov r0, r9
	bl FUN_0206cc44
_0204EA28:
	ldr r1, [sp]
	mov r0, r9
	str r1, [r9, #0x68]
	bl FUN_0206dcd4
	add r1, sp, #0x14
	bl FUN_0206ed40
	mov r0, #1
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204e79c

	arm_func_start FUN_0204ea4c
FUN_0204ea4c: ; 0x0204EA4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	movle r6, #1
	ble _0204EA78
	cmp r6, #0x63
	movgt r6, #0x63
_0204EA78:
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	cmp r6, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_0204e000
	mov r1, r0
	mov r0, r4
	bl FUN_0206dcf0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_0204e118
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0204ea4c

	arm_func_start FUN_0204eac8
FUN_0204eac8: ; 0x0204EAC8
	ldr r0, _0204EAD4 ; =0x020A0640
	ldrb r0, [r0, #0x4ed]
	bx lr
_0204EAD4: .word unk_020A0640
	arm_func_end FUN_0204eac8

	arm_func_start FUN_0204ead8
FUN_0204ead8: ; 0x0204EAD8
	cmp r1, #0
	movlt r1, #0
	cmp r1, #0xff
	movgt r1, #0xff
	ldr r0, _0204EAF8 ; =0x020A0B00
	ldr r12, _0204EAFC ; =FUN_020747b8
	and r1, r1, #0xff
	bx r12
_0204EAF8: .word unk_020A0B00
_0204EAFC: .word FUN_020747b8
	arm_func_end FUN_0204ead8

	arm_func_start FUN_0204eb00
FUN_0204eb00: ; 0x0204EB00
	stmfd sp!, {r3, lr}
	tst r1, #0x8000
	bne _0204EB1C
	add r0, r0, #0xc
	add r0, r0, #0x400
	bl FUN_0204fd68
	ldmfd sp!, {r3, pc}
_0204EB1C:
	add r0, r0, #0x2c
	add r0, r0, #0x400
	bl FUN_0204fd68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204eb00

	arm_func_start FUN_0204eb2c
FUN_0204eb2c: ; 0x0204EB2C
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_0206dca4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204eb2c

	arm_func_start FUN_0204eb4c
FUN_0204eb4c: ; 0x0204EB4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
_0204EB5C:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _0204EB80
	bl FUN_0206d5f0
	cmp r6, r0
	bne _0204EB80
	mov r0, r4
	bl FUN_0206dca4
_0204EB80:
	add r5, r5, #1
	cmp r5, #0x64
	blt _0204EB5C
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl FUN_02072560
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204eb4c

	arm_func_start FUN_0204eba0
FUN_0204eba0: ; 0x0204EBA0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x7ec]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x3ec
	mvn r4, #0
	ldr r1, _0204EC34 ; =0x02090548
	add r2, sp, #4
	add r0, r0, #0x400
	mov r3, #0
	str r4, [sp]
	bl _ZN10FileSystem16ReadFileDeferredEPPvPKcPall
	mov r5, r0
	mov r4, #1
_0204EBE8:
	ldrsb r0, [sp, #4]
	bl _ZN10FileSystem10IsFileBusyEa
	cmp r0, #0
	beq _0204EC04
	mov r0, r4
	bl OS_Sleep
	b _0204EBE8
_0204EC04:
	cmp r5, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0204EC38 ; =0xBA2E8BA3
	add r1, r6, #0x800
	umull r0, r2, r5, r0
	mov r2, r2, lsr #5
	strh r2, [r1, #0x6a]
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0204EC34: .word unk_02090548
_0204EC38: .word 0xBA2E8BA3
	arm_func_end FUN_0204eba0

	arm_func_start FUN_0204ec3c
FUN_0204ec3c: ; 0x0204EC3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x7ec]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0204EC6C ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x7ec]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0204EC6C: .word gAllocator
	arm_func_end FUN_0204ec3c

	arm_func_start FUN_0204ec70
FUN_0204ec70: ; 0x0204EC70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x7ec]
	mov r4, r1
	cmp r2, #0
	mov r1, #0
	bne _0204EC94
	bl FUN_0204eba0
	mov r1, #1
_0204EC94:
	add r0, r5, #0x800
	ldrh r12, [r0, #0x6a]
	ldr r2, [r5, #0x7ec]
	mov r3, #0
	cmp r12, #0
	ble _0204ECEC
_0204ECAC:
	ldrh r0, [r2, #0x24]
	cmp r0, r4
	bne _0204ECDC
	ldrb r0, [r2, #0x2b]
	tst r0, #2
	beq _0204ECDC
	cmp r1, #0
	beq _0204ECD4
	mov r0, r5
	bl FUN_0204ec3c
_0204ECD4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0204ECDC:
	add r3, r3, #1
	cmp r3, r12
	add r2, r2, #0x2c
	blt _0204ECAC
_0204ECEC:
	cmp r1, #0
	beq _0204ECFC
	mov r0, r5
	bl FUN_0204ec3c
_0204ECFC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0204ec70

	arm_func_start FUN_0204ed04
FUN_0204ed04: ; 0x0204ED04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, #1
	mov r9, r8
	b _0204EDFC
_0204ED18:
	sub r10, r2, #1
	cmp r10, #0
	mov r9, #0
	ble _0204EDF4
	mov r11, r9
_0204ED2C:
	add r5, r1, r10, lsl #3
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0204EDE8
	cmp r3, #0
	ldrh r0, [r5, #-4]
	beq _0204ED70
	cmp r0, #0
	beq _0204ED60
	ldr r4, [r1, r10, lsl #3]
	ldr r0, [r5, #-8]
	cmp r4, r0
	bge _0204ED68
_0204ED60:
	mov r0, r8
	b _0204ED90
_0204ED68:
	mov r0, r11
	b _0204ED90
_0204ED70:
	cmp r0, #0
	beq _0204ED88
	ldr r4, [r1, r10, lsl #3]
	ldr r0, [r5, #-8]
	cmp r4, r0
	ble _0204ED8C
_0204ED88:
	b _0204ED60
_0204ED8C:
	mov r0, #0
_0204ED90:
	cmp r0, #0
	beq _0204EDE8
	add r6, r1, r10, lsl #3
	ldrb r4, [r6, #6]
	ldrb lr, [r6, #7]
	ldrh r5, [r6, #4]
	ldr r7, [r1, r10, lsl #3]
	ldr r0, [r6, #-8]
	strb r4, [sp, #6]
	str r0, [r1, r10, lsl #3]
	ldrh r0, [r6, #-4]
	strb lr, [sp, #7]
	mov r9, r8
	strh r0, [r6, #4]
	ldrb r12, [r6, #-2]
	ldrb r0, [r6, #-1]
	strb r12, [r6, #6]
	strb r0, [r6, #7]
	str r7, [r6, #-8]
	strh r5, [r6, #-4]
	strb r4, [r6, #-2]
	strb lr, [r6, #-1]
_0204EDE8:
	sub r10, r10, #1
	cmp r10, #0
	bgt _0204ED2C
_0204EDF4:
	add r1, r1, #8
	sub r2, r2, #1
_0204EDFC:
	cmp r9, #0
	beq _0204EE0C
	cmp r2, #0
	bgt _0204ED18
_0204EE0C:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0204ed04

	arm_func_start FUN_0204ee18
FUN_0204ee18: ; 0x0204EE18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	mov r7, r1
	mov r0, r6
	mov r4, #1
	bl STD_GetStringLength
	cmp r7, #0
	cmpne r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #1
	cmp r5, #0x1c
	movhs r4, #0
	bhs _0204EE5C
	mov r0, r7
	mov r1, r6
	bl STD_CopyString
_0204EE5C:
	cmp r5, #0x20
	movhs r4, #0
	bhs _0204EE74
	mov r1, r6
	add r0, r7, #0x2c
	bl STD_CopyString
_0204EE74:
	cmp r5, #0x10
	movhs r4, #0
	bhs _0204EE8C
	mov r1, r6
	add r0, r7, #0x1c
	bl STD_CopyString
_0204EE8C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204ee18

	arm_func_start FUN_0204ee94
FUN_0204ee94: ; 0x0204EE94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r9, r1
	mov r8, r2
	mov r10, r0
	cmpne r8, #0
	mov r11, r3
	mov r4, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0204EF8C ; =gAllocator
	mov r1, r8, lsl #3
	bl _ZN10CAllocator8allocateEm
	str r0, [sp]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	mov r5, r0
	mov r6, r9
	mov r7, r4
	cmpgt r8, #0
	ble _0204EF34
_0204EEEC:
	ldrh r0, [r6]
	mov r1, r4
	bl FUN_ov16_020efa9c
	ldrh r2, [r6]
	movs r1, r0
	strh r2, [r5, #4]
	streq r4, [r5]
	beq _0204EF20
	mov r0, r10
	mov r2, r11
	mov r3, r4
	bl FUN_0204f02c
	str r0, [r5]
_0204EF20:
	add r7, r7, #1
	cmp r7, r8
	add r5, r5, #8
	add r6, r6, #2
	blt _0204EEEC
_0204EF34:
	ldrb r3, [sp, #0x28]
	ldr r1, [sp]
	mov r0, r10
	mov r2, r8
	bl FUN_0204ed04
	cmp r8, #0
	mov r4, r0
	ldr r1, [sp]
	mov r2, #0
	cmpgt r8, #0
	ble _0204EF78
_0204EF60:
	ldrh r0, [r1, #4]
	add r2, r2, #1
	cmp r2, r8
	strh r0, [r9], #2
	add r1, r1, #8
	blt _0204EF60
_0204EF78:
	ldr r0, _0204EF8C ; =gAllocator
	ldr r1, [sp]
	bl _ZN10CAllocator10deallocateEPv
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204EF8C: .word gAllocator
	arm_func_end FUN_0204ee94

	arm_func_start FUN_0204ef90
FUN_0204ef90: ; 0x0204EF90
	cmp r1, #0x46
	bgt _0204EFE8
	bge _0204F01C
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _0204F024
_0204EFA8: ; jump table
	b _0204F024 ; case 0
	b _0204F004 ; case 1
	b _0204F004 ; case 2
	b _0204F004 ; case 3
	b _0204F004 ; case 4
	b _0204F004 ; case 5
	b _0204F024 ; case 6
	b _0204F024 ; case 7
	b _0204F024 ; case 8
	b _0204F024 ; case 9
	b _0204F00C ; case 10
	b _0204F00C ; case 11
	b _0204F00C ; case 12
	b _0204F014 ; case 13
	b _0204F014 ; case 14
	b _0204F00C ; case 15
_0204EFE8:
	cmp r1, #0x47
	bgt _0204EFF8
	beq _0204F01C
	b _0204F024
_0204EFF8:
	cmp r1, #0x48
	beq _0204F01C
	b _0204F024
_0204F004:
	mov r0, #1
	bx lr
_0204F00C:
	mov r0, #1
	bx lr
_0204F014:
	mov r0, #1
	bx lr
_0204F01C:
	mov r0, #1
	bx lr
_0204F024:
	mov r0, #0
	bx lr
	arm_func_end FUN_0204ef90

	arm_func_start FUN_0204f02c
FUN_0204f02c: ; 0x0204F02C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	movs r6, r1
	mov r7, r0
	mov r4, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r2, #0x84
	bgt _0204F1E8
	bge _0204F718
	cmp r2, #0x81
	bgt _0204F1CC
	bge _0204F64C
	cmp r2, #0x51
	bgt _0204F1C0
	cmp r2, #0
	addge pc, pc, r2, lsl #2
	b _0204F7B0
_0204F078: ; jump table
	b _0204F22C ; case 0
	b _0204F238 ; case 1
	b _0204F248 ; case 2
	b _0204F258 ; case 3
	b _0204F268 ; case 4
	b _0204F27C ; case 5
	b _0204F7B0 ; case 6
	b _0204F7B0 ; case 7
	b _0204F7B0 ; case 8
	b _0204F7B0 ; case 9
	b _0204F288 ; case 10
	b _0204F294 ; case 11
	b _0204F2A4 ; case 12
	b _0204F408 ; case 13
	b _0204F3E4 ; case 14
	b _0204F2B4 ; case 15
	b _0204F2C4 ; case 16
	b _0204F7B0 ; case 17
	b _0204F7B0 ; case 18
	b _0204F7B0 ; case 19
	b _0204F2D0 ; case 20
	b _0204F2E0 ; case 21
	b _0204F2F0 ; case 22
	b _0204F300 ; case 23
	b _0204F7B0 ; case 24
	b _0204F7B0 ; case 25
	b _0204F7B0 ; case 26
	b _0204F7B0 ; case 27
	b _0204F7B0 ; case 28
	b _0204F7B0 ; case 29
	b _0204F310 ; case 30
	b _0204F320 ; case 31
	b _0204F330 ; case 32
	b _0204F340 ; case 33
	b _0204F350 ; case 34
	b _0204F360 ; case 35
	b _0204F370 ; case 36
	b _0204F380 ; case 37
	b _0204F390 ; case 38
	b _0204F39C ; case 39
	b _0204F3A8 ; case 40
	b _0204F3B4 ; case 41
	b _0204F3C0 ; case 42
	b _0204F3CC ; case 43
	b _0204F3D8 ; case 44
	b _0204F7B0 ; case 45
	b _0204F7B0 ; case 46
	b _0204F7B0 ; case 47
	b _0204F7B0 ; case 48
	b _0204F7B0 ; case 49
	b _0204F7B0 ; case 50
	b _0204F7B0 ; case 51
	b _0204F7B0 ; case 52
	b _0204F7B0 ; case 53
	b _0204F7B0 ; case 54
	b _0204F7B0 ; case 55
	b _0204F7B0 ; case 56
	b _0204F7B0 ; case 57
	b _0204F7B0 ; case 58
	b _0204F7B0 ; case 59
	b _0204F7B0 ; case 60
	b _0204F7B0 ; case 61
	b _0204F7B0 ; case 62
	b _0204F7B0 ; case 63
	b _0204F7B0 ; case 64
	b _0204F7B0 ; case 65
	b _0204F7B0 ; case 66
	b _0204F7B0 ; case 67
	b _0204F7B0 ; case 68
	b _0204F7B0 ; case 69
	b _0204F580 ; case 70
	b _0204F594 ; case 71
	b _0204F5A4 ; case 72
	b _0204F7B0 ; case 73
	b _0204F7B0 ; case 74
	b _0204F7B0 ; case 75
	b _0204F7B0 ; case 76
	b _0204F7B0 ; case 77
	b _0204F7B0 ; case 78
	b _0204F7B0 ; case 79
	b _0204F44C ; case 80
	b _0204F458 ; case 81
_0204F1C0:
	cmp r2, #0x80
	beq _0204F5B4
	b _0204F7B0
_0204F1CC:
	cmp r2, #0x82
	bgt _0204F1DC
	beq _0204F6EC
	b _0204F7B0
_0204F1DC:
	cmp r2, #0x83
	beq _0204F6F8
	b _0204F7B0
_0204F1E8:
	cmp r2, #0x87
	bgt _0204F210
	bge _0204F778
	cmp r2, #0x85
	bgt _0204F204
	beq _0204F738
	b _0204F7B0
_0204F204:
	cmp r2, #0x86
	beq _0204F758
	b _0204F7B0
_0204F210:
	cmp r2, #0xa0
	bgt _0204F220
	beq _0204F4F4
	b _0204F7B0
_0204F220:
	cmp r2, #0xa1
	beq _0204F508
	b _0204F7B0
_0204F22C:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F238:
	mov r0, r6
	bl FUN_0206cc00
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F248:
	mov r0, r6
	bl FUN_0206cbf8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F258:
	mov r0, r6
	bl FUN_0206d5d4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F268:
	mov r0, r6
	bl FUN_0206dcd4
	add sp, sp, #0xc
	ldrb r0, [r0, #0x4b]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F27C:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x4d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F288:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F294:
	mov r0, r6
	bl FUN_0206cd70
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2A4:
	mov r0, r6
	bl FUN_0206cd7c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2B4:
	mov r0, r6
	bl FUN_0206cd88
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2C4:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x5a]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2D0:
	mov r0, r6
	bl FUN_0206ccdc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2E0:
	mov r0, r6
	bl FUN_0206ccec
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F2F0:
	mov r0, r6
	bl FUN_0206cc84
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F300:
	mov r0, r6
	bl FUN_0206cc94
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F310:
	mov r0, r6
	bl FUN_0206cd50
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F320:
	mov r0, r6
	bl FUN_0206cd10
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F330:
	mov r0, r6
	bl FUN_0206cd00
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F340:
	mov r0, r6
	bl FUN_0206cd40
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F350:
	mov r0, r6
	bl FUN_0206cd60
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F360:
	mov r0, r6
	bl FUN_0206cd20
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F370:
	mov r0, r6
	bl FUN_0206cd30
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F380:
	mov r0, r6
	bl FUN_0206cc34
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F390:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7b]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F39C:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3A8:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7e]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3B4:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3C0:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x7f]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3CC:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x81]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3D8:
	add sp, sp, #0xc
	ldrb r0, [r6, #0x80]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F3E4:
	cmp r3, #6
	addhs sp, sp, #0xc
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, r3
	bl FUN_0206cdf8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F408:
	mov r0, r6
	mov r1, r3
	bl FUN_0206cdf8
	movs r4, r0
	beq _0204F440
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl FUN_0204a0b4
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F440:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F44C:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F458:
	add r1, sp, #0
	mov r2, r3
	bl FUN_0204a1e0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r0, [sp, #2]
	cmp r0, #1
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r1, [sp]
	mov r0, r7
	bl FUN_02049a40
	mov r5, r0
	add r7, sp, #4
	b _0204F4E0
_0204F4A0:
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r4, lsl #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	beq _0204F4D0
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r4, lsl #1
	ldrh r1, [r7, r1]
	cmp r1, r0
	bne _0204F4DC
_0204F4D0:
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F4DC:
	add r4, r4, #1
_0204F4E0:
	cmp r4, r5
	blt _0204F4A0
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F4F4:
	ldr r1, [r6, #0x84]
	ldr r2, _0204F7BC ; =0x0209A2C0
	bl FUN_0207237c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F508:
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r5, [r1, #4]
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_020723c4
	subs r0, r5, r0
	ldr r1, [r6, #0x84]
	mov r0, r6
	ldr r5, [r1, #4]
	bpl _0204F560
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_020723c4
	sub r0, r5, r0
	add sp, sp, #0xc
	rsb r0, r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F560:
	bl FUN_02040128
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl FUN_020723c4
	add sp, sp, #0xc
	sub r0, r5, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F580:
	mov r0, r6
	mov r1, r4
	bl FUN_0206d824
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F594:
	mov r0, r6
	bl FUN_0206d8b8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F5A4:
	mov r0, r6
	bl FUN_0206d8a8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F5B4:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xc
	add r1, r1, #0x400
	add r8, r1, r0, lsl #5
	mov r0, r6
	bl FUN_0206cbf8
	mov r5, r0
	mov r0, r6
	bl FUN_0206cc00
	mov r4, r0
	mov r0, r8
	mov r1, r5
	bl FUN_0204fca0
	cmp r0, #0
	mov r0, r8
	mov r1, r5
	subne r4, r4, #0x10000
	bl FUN_0204fd20
	cmp r0, #0
	ble _0204F61C
	mov r0, r8
	mov r1, r5
	bl FUN_0204fd20
	cmp r0, #0xb
	suble r4, r4, #0x20000
_0204F61C:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xcc
	add r2, r1, #0x400
	mov r1, r5
	add r0, r2, r0, lsl #4
	bl FUN_020502a8
	cmp r0, #0
	subne r4, r4, #0x40000
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F64C:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xc
	add r1, r1, #0x400
	add r8, r1, r0, lsl #5
	mov r0, r6
	bl FUN_0206cbf8
	mov r5, r0
	ldrsh r4, [r6, #0x94]
	mov r0, r8
	mov r1, r5
	bl FUN_0204fca0
	cmp r0, #0
	addeq sp, sp, #0xc
	addeq r0, r4, #0x70000000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl FUN_0204fd20
	cmp r0, #0
	bne _0204F6BC
	mov r0, r8
	mov r1, r5
	bl FUN_0204fd20
	cmp r0, #0xb
	addgt sp, sp, #0xc
	addgt r0, r4, #0x60000000
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F6BC:
	mov r0, r6
	bl FUN_0206d5f0
	add r1, r7, #0xcc
	add r2, r1, #0x400
	mov r1, r5
	add r0, r2, r0, lsl #4
	bl FUN_020502a8
	cmp r0, #0
	subne r4, r4, #0x40000
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F6EC:
	add sp, sp, #0xc
	ldrsh r0, [r6, #0x94]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F6F8:
	mov r0, r6
	mov r1, r4
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F718:
	mov r0, r6
	mov r1, #1
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F738:
	mov r0, r6
	mov r1, #2
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F758:
	mov r0, r6
	mov r1, #3
	bl FUN_0206d824
	movs r4, r0
	moveq r4, #0x20
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F778:
	mvn r5, #0xc0000000
	mov r0, r5
	bl _ZN6Random5RandAEm
	mov r4, r0
	mov r0, r6
	bl FUN_0206cc00
	add r1, r7, #0x800
	ldrh r1, [r1, #0x76]
	add sp, sp, #0xc
	and r1, r1, r5, lsr #18
	cmp r1, r0
	addeq r4, r4, #0x40000000
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F7B0:
	mov r0, #0x80000000
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0204F7BC: .word unk_0209A2C0
	arm_func_end FUN_0204f02c

	arm_func_start FUN_0204f7c0
FUN_0204f7c0: ; 0x0204F7C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r2
	mov r8, r3
	mov r6, #0
	bl FUN_0205107c
	ldr r11, _0204F880 ; =gLogicThink
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204F7E8:
	mov r0, r7
	mov r1, r4
	bl FUN_0204fbe8
	cmp r0, #0
	beq _0204F854
	mov r0, r11
	bl _ZN11CLogicThink12FUN_020731a4Ev
	cmp r0, #0
	mov r0, r7
	mov r1, r4
	beq _0204F828
	bl FUN_0204fbe8
	mov r1, r0
	ldr r0, _0204F884 ; =gUnitMan
	bl FUN_0206c718
	b _0204F834
_0204F828:
	bl FUN_0204fbe8
	mov r1, #0
	bl FUN_ov16_020efa9c
_0204F834:
	movs r1, r0
	beq _0204F854
	mov r0, r10
	mov r2, r9
	mov r3, r8
	bl FUN_0204f02c
	add r6, r6, r0
	add r5, r5, #1
_0204F854:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0204F7E8
	cmp r5, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r5, r5, lsr #31
	mov r1, r5
	add r0, r6, r0, asr #1
	bl _s32_div_f
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204F880: .word gLogicThink
_0204F884: .word gUnitMan
	arm_func_end FUN_0204f7c0

	arm_func_start FUN_0204f888
FUN_0204f888: ; 0x0204F888
	stmfd sp!, {r3, lr}
	ldr lr, _0204FB14 ; =0x020A0640
	mov r3, r2
	cmp r1, #0x2b
	mov r12, #0
	addls pc, pc, r1, lsl #2
	b _0204FB0C
_0204F8A4: ; jump table
	b _0204F954 ; case 0
	b _0204F95C ; case 1
	b _0204F96C ; case 2
	b _0204F97C ; case 3
	b _0204F98C ; case 4
	b _0204F99C ; case 5
	b _0204F9AC ; case 6
	b _0204F9BC ; case 7
	b _0204FB0C ; case 8
	b _0204FB0C ; case 9
	b _0204FB0C ; case 10
	b _0204FB0C ; case 11
	b _0204FB0C ; case 12
	b _0204FB0C ; case 13
	b _0204FB0C ; case 14
	b _0204FB0C ; case 15
	b _0204FB0C ; case 16
	b _0204FB0C ; case 17
	b _0204FB0C ; case 18
	b _0204FB0C ; case 19
	b _0204F9CC ; case 20
	b _0204F9D4 ; case 21
	b _0204FB0C ; case 22
	b _0204FB0C ; case 23
	b _0204FB0C ; case 24
	b _0204F9DC ; case 25
	b _0204F9E8 ; case 26
	b _0204FB0C ; case 27
	b _0204FB0C ; case 28
	b _0204FB0C ; case 29
	b _0204F9F4 ; case 30
	b _0204F9FC ; case 31
	b _0204FA04 ; case 32
	b _0204FA0C ; case 33
	b _0204FA14 ; case 34
	b _0204FA4C ; case 35
	b _0204FA84 ; case 36
	b _0204FB0C ; case 37
	b _0204FB0C ; case 38
	b _0204FB0C ; case 39
	b _0204FABC ; case 40
	b _0204FAC4 ; case 41
	b _0204FAD0 ; case 42
	b _0204FAE4 ; case 43
_0204F954:
	mov r0, r12
	ldmfd sp!, {r3, pc}
_0204F95C:
	mov r1, r12
	mov r2, #0x22
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F96C:
	mov r1, r12
	mov r2, #0x23
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F97C:
	mov r1, r12
	mov r2, #0x21
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F98C:
	mov r1, r12
	mov r2, #0x20
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F99C:
	mov r1, r12
	mov r2, #0x24
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F9AC:
	mov r1, r12
	mov r2, #0x1e
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F9BC:
	mov r1, r12
	mov r2, #0x1f
	bl FUN_0204f7c0
	ldmfd sp!, {r3, pc}
_0204F9CC:
	ldr r0, [lr, #0x4d4]
	ldmfd sp!, {r3, pc}
_0204F9D4:
	ldr r0, [lr, #0x4d8]
	ldmfd sp!, {r3, pc}
_0204F9DC:
	mov r1, r12
	bl FUN_0207371c
	ldmfd sp!, {r3, pc}
_0204F9E8:
	mov r1, #1
	bl FUN_0207371c
	ldmfd sp!, {r3, pc}
_0204F9F4:
	ldr r0, [lr, #0x550]
	ldmfd sp!, {r3, pc}
_0204F9FC:
	ldr r0, [lr, #0x554]
	ldmfd sp!, {r3, pc}
_0204FA04:
	ldr r0, [lr, #0x558]
	ldmfd sp!, {r3, pc}
_0204FA0C:
	ldr r0, [lr, #0x55c]
	ldmfd sp!, {r3, pc}
_0204FA14:
	ldr r0, [lr, #0x550]
	ldr lr, [lr, #0x55c]
	adds r2, r0, lr
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	mov r3, #0x64
	umull r0, r1, lr, r3
	mla r1, lr, r12, r1
	mov r12, lr, asr #0x1f
	mla r1, r12, r3, r1
	mov r3, r2, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FA4C:
	ldr r2, [lr, #0x550]
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	ldr lr, [lr, #0x554]
	mov r3, #0x64
	umull r0, r1, lr, r3
	mla r1, lr, r12, r1
	mov r12, lr, asr #0x1f
	mla r1, r12, r3, r1
	mov r3, r2, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FA84:
	ldr r2, [lr, #0x550]
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	ldr lr, [lr, #0x558]
	mov r3, #0x64
	umull r0, r1, lr, r3
	mla r1, lr, r12, r1
	mov r12, lr, asr #0x1f
	mla r1, r12, r3, r1
	mov r3, r2, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FABC:
	ldrb r0, [lr, #0x50b]
	ldmfd sp!, {r3, pc}
_0204FAC4:
	ldr r0, _0204FB18 ; =0x020A0B40
	ldrh r0, [r0, #0x4e]
	ldmfd sp!, {r3, pc}
_0204FAD0:
	ldr r2, [lr, #0x4dc]
	ldr r0, _0204FB1C ; =0x91A2B3C5
	umull r1, r0, r2, r0
	mov r0, r0, lsr #0xb
	ldmfd sp!, {r3, pc}
_0204FAE4:
	ldr r2, [lr, #0x550]
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	ldr r0, [lr, #0x560]
	mov r3, r2, asr #0x1f
	mov r1, r0, asr #0x1f
	bl _ll_udiv
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0204FB0C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204FB14: .word unk_020A0640
_0204FB18: .word unk_020A0B40
_0204FB1C: .word 0x91A2B3C5
	arm_func_end FUN_0204f888

	arm_func_start FUN_0204fb20
FUN_0204fb20: ; 0x0204FB20
	ldr r2, [r0, #0x820]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldr r0, _0204FB54 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrsh r1, [r1, #0x94]
	mov r0, #0x44
	smlabb r0, r1, r0, r2
	bx lr
_0204FB54: .word gUtilGame
	arm_func_end FUN_0204fb20

	arm_func_start FUN_0204fb58
FUN_0204fb58: ; 0x0204FB58
	ldr r0, [r0, #0x820]
	bx lr
	arm_func_end FUN_0204fb58

	arm_func_start FUN_0204fb60
FUN_0204fb60: ; 0x0204FB60
	ldrb r0, [r0, #0x5d]
	mov r0, r0, asr #5
	bx lr
	arm_func_end FUN_0204fb60

	arm_func_start FUN_0204fb6c
FUN_0204fb6c: ; 0x0204FB6C
	ldrb r0, [r0, #0x5d]
	and r0, r0, #0x1f
	bx lr
	arm_func_end FUN_0204fb6c

	arm_func_start FUN_0204fb78
FUN_0204fb78: ; 0x0204FB78
	ldr r12, _0204FB88 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r12
_0204FB88: .word MI_CpuFill8
	arm_func_end FUN_0204fb78

	arm_func_start FUN_0204fb8c
FUN_0204fb8c: ; 0x0204FB8C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldmltfd sp!, {r4, pc}
	cmp r1, #0x10
	ldmgefd sp!, {r4, pc}
	ldr r3, _0204FBE4 ; =0x00000FFF
	tst r2, r3
	moveq r2, #0
	cmp r2, #0
	beq _0204FBD8
	mov r4, #0
	mov r3, r4
_0204FBBC:
	mov lr, r4, lsl #1
	ldrh r12, [r0, lr]
	add r4, r4, #1
	cmp r2, r12
	streqh r3, [r0, lr]
	cmp r4, #0x10
	blt _0204FBBC
_0204FBD8:
	mov r1, r1, lsl #1
	strh r2, [r0, r1]
	ldmfd sp!, {r4, pc}
_0204FBE4: .word 0x00000FFF
	arm_func_end FUN_0204fb8c

	arm_func_start FUN_0204fbe8
FUN_0204fbe8: ; 0x0204FBE8
	cmp r1, #0x10
	movhs r0, #0
	movlo r1, r1, lsl #1
	ldrloh r0, [r0, r1]
	bx lr
	arm_func_end FUN_0204fbe8

	arm_func_start FUN_0204fbfc
FUN_0204fbfc: ; 0x0204FBFC
	cmp r1, #0x10
	movhs r0, #0
	bxhs lr
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, _0204FC24 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_0204FC24: .word 0x00000FFF
	arm_func_end FUN_0204fbfc

	arm_func_start FUN_0204fc28
FUN_0204fc28: ; 0x0204FC28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub r4, r1, #1
	mov r7, r0
	mov r1, r4
	sub r5, r2, #1
	bl FUN_0204fbe8
	mov r6, r0
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	mov r2, r0
	cmp r4, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	cmpeq r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	bl FUN_0204fb8c
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_0204fb8c
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fc28

	arm_func_start FUN_0204fca0
FUN_0204fca0: ; 0x0204FCA0
	mov r3, #0
_0204FCA4:
	mov r2, r3, lsl #1
	ldrh r2, [r0, r2]
	cmp r2, #0
	beq _0204FCC0
	cmp r1, r2
	moveq r0, #1
	bxeq lr
_0204FCC0:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FCA4
	mov r0, #0
	bx lr
	arm_func_end FUN_0204fca0

	arm_func_start FUN_0204fcd4
FUN_0204fcd4: ; 0x0204FCD4
	ldr r2, _0204FD1C ; =0x00000FFF
	mov r3, #0
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
_0204FCE8:
	mov r1, r3, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _0204FD08
	and r1, r1, r2
	cmp r12, r1
	moveq r0, #1
	bxeq lr
_0204FD08:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FCE8
	mov r0, #0
	bx lr
_0204FD1C: .word 0x00000FFF
	arm_func_end FUN_0204fcd4

	arm_func_start FUN_0204fd20
FUN_0204fd20: ; 0x0204FD20
	ldr r2, _0204FD64 ; =0x00000FFF
	mov r3, #0
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
_0204FD34:
	mov r1, r3, lsl #1
	ldrh r1, [r0, r1]
	ands r1, r1, r2
	beq _0204FD50
	cmp r12, r1
	addeq r0, r3, #1
	bxeq lr
_0204FD50:
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FD34
	mov r0, #0
	bx lr
_0204FD64: .word 0x00000FFF
	arm_func_end FUN_0204fd20

	arm_func_start FUN_0204fd68
FUN_0204fd68: ; 0x0204FD68
	ldr r2, _0204FDA0 ; =0x00000FFF
	mov r12, #0
_0204FD70:
	mov r3, r12, lsl #1
	ldrh r3, [r0, r3]
	tst r3, r2
	beq _0204FD8C
	cmp r1, r3
	addeq r0, r12, #1
	bxeq lr
_0204FD8C:
	add r12, r12, #1
	cmp r12, #0x10
	blt _0204FD70
	mov r0, #0
	bx lr
_0204FDA0: .word 0x00000FFF
	arm_func_end FUN_0204fd68

	arm_func_start FUN_0204fda4
FUN_0204fda4: ; 0x0204FDA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
_0204FDB4:
	mov r0, r5, lsl #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0204FDD8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r5, lsl #1
	streqh r4, [r6, r0]
_0204FDD8:
	mov r0, r5, lsl #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	addeq r0, r5, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #0x10
	blt _0204FDB4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204fda4

	arm_func_start FUN_0204fe00
FUN_0204fe00: ; 0x0204FE00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204FE14:
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r6, #1
	add r5, r5, #1
	andne r6, r0, #0xff
	cmp r5, #0xb
	blt _0204FE14
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fe00

	arm_func_start FUN_0204fe48
FUN_0204fe48: ; 0x0204FE48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204FE5C:
	mov r0, r7
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r6, #1
	add r5, r5, #1
	andne r6, r0, #0xff
	cmp r5, #0x10
	blt _0204FE5C
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fe48

	arm_func_start FUN_0204fe90
FUN_0204fe90: ; 0x0204FE90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	mov r4, r6
_0204FEA4:
	mov r0, r7
	mov r1, r5
	bl FUN_02050244
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addne r0, r6, #1
	add r5, r5, #1
	andne r6, r0, #0xff
	cmp r5, #4
	blt _0204FEA4
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0204fe90

	arm_func_start FUN_0204fed8
FUN_0204fed8: ; 0x0204FED8
	mov r3, #0
_0204FEDC:
	add r2, r0, r3
	ldrb r2, [r2, #0xa]
	cmp r1, r2
	moveq r1, r3, lsl #1
	ldreqh r0, [r0, r1]
	bxeq lr
	add r3, r3, #1
	cmp r3, #0x10
	blt _0204FEDC
	mov r0, #0
	bx lr
	arm_func_end FUN_0204fed8

	arm_func_start FUN_0204ff08
FUN_0204ff08: ; 0x0204FF08
	stmdb sp!, {r3}
	sub sp, sp, #4
	mov r3, #0
	add r1, sp, #0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	mov r2, r3
_0204FF2C:
	mov r1, r3, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	addeq r1, r0, r3
	add r3, r3, #1
	streqb r2, [r1, #0xa]
	cmp r3, #4
	blt _0204FF2C
	mov r12, #0
	mov r3, #1
	add r2, sp, #0
_0204FF58:
	add r1, r0, r12
	ldrb r1, [r1, #0xa]
	add r12, r12, #1
	cmp r1, #0
	addne r1, r2, r1
	strneb r3, [r1, #-1]
	cmp r12, #4
	blt _0204FF58
	mov r2, #0
	add r1, sp, #0
_0204FF80:
	ldrb r0, [r1, r2]
	cmp r0, #0
	addeq sp, sp, #4
	addeq r0, r2, #1
	ldmeqia sp!, {r3}
	bxeq lr
	add r2, r2, #1
	cmp r2, #4
	blt _0204FF80
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
	arm_func_end FUN_0204ff08

	arm_func_start FUN_0204ffb4
FUN_0204ffb4: ; 0x0204FFB4
	cmp r1, #0
	ble _0204FFC4
	cmp r1, #5
	blt _0204FFCC
_0204FFC4:
	mov r0, #0
	bx lr
_0204FFCC:
	mov r3, #0
_0204FFD0:
	add r2, r0, r3
	ldrb r2, [r2, #0xa]
	cmp r1, r2
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	cmp r3, #4
	blt _0204FFD0
	mov r0, #1
	bx lr
	arm_func_end FUN_0204ffb4

	arm_func_start FUN_0204fff8
FUN_0204fff8: ; 0x0204FFF8
	ldr r2, _02050034 ; =0x00000FFF
	tst r1, r2
	subeq r0, r2, #0x1000
	bxeq lr
	mov r3, #0
_0205000C:
	mov r2, r3, lsl #1
	ldrh r2, [r0, r2]
	cmp r1, r2
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
	cmp r3, #4
	blt _0205000C
	mvn r0, #0
	bx lr
_02050034: .word 0x00000FFF
	arm_func_end FUN_0204fff8

	arm_func_start FUN_02050038
FUN_02050038: ; 0x02050038
	mov r2, #0
_0205003C:
	mov r1, r2, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	cmp r2, #4
	blt _0205003C
	mvn r0, #0
	bx lr
	arm_func_end FUN_02050038

	arm_func_start FUN_02050064
FUN_02050064: ; 0x02050064
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mvn r4, #0
	mov r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r4
	mov r1, #0
_02050080:
	add r0, r8, r1
	ldrb r0, [r0, #0xa]
	cmp r7, r0
	moveq r4, r1
	add r1, r1, #1
	cmp r1, #4
	blt _02050080
	mov r1, #0
_020500A0:
	add r0, r8, r1
	ldrb r0, [r0, #0xa]
	cmp r6, r0
	moveq r5, r1
	add r1, r1, #1
	cmp r1, #4
	blt _020500A0
	mvn r0, #0
	cmp r4, r0
	bne _020500F4
	cmp r5, r0
	beq _020500F4
	mov r0, r8
	mov r1, r5
	bl FUN_02050244
	mov r2, r0
	mov r0, r8
	mov r1, r5
	mov r3, r7
_020500EC:
	bl FUN_020501bc
	b _0205013C
_020500F4:
	mvn r0, #0
	cmp r4, r0
	beq _02050128
	cmp r5, r0
	bne _02050128
	mov r0, r8
	mov r1, r4
	bl FUN_02050244
	mov r2, r0
	mov r0, r8
	mov r1, r4
	mov r3, r6
	b _020500EC
_02050128:
	add r2, r8, #0xa
	ldrb r1, [r2, r4]
	ldrb r0, [r2, r5]
	strb r0, [r2, r4]
	strb r1, [r2, r5]
_0205013C:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02050064

	arm_func_start FUN_02050144
FUN_02050144: ; 0x02050144
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	ldmmifd sp!, {r4, r5, r6, pc}
	cmp r5, #4
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r1, r5, lsl #1
	ldrh r1, [r6, r1]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	bl FUN_0204ffb4
	cmp r0, #0
	add r0, r6, r5
	strneb r4, [r0, #0xa]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #0xa]
	mov r0, r6
	mov r2, r4
	bl FUN_02050064
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02050144

	arm_func_start FUN_0205019c
FUN_0205019c: ; 0x0205019C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0204fff8
	cmp r0, #0
	movlt r0, #0
	addge r0, r4, r0
	ldrgeb r0, [r0, #0xa]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205019c

	arm_func_start FUN_020501bc
FUN_020501bc: ; 0x020501BC
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	ldmmifd sp!, {r4, r5, r6, pc}
	cmp r5, #4
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, _02050240 ; =0x00000FFF
	mov r2, #0
	tst r4, r0
	moveq r4, #0
_020501E8:
	mov r1, r2, lsl #1
	ldrh r0, [r6, r1]
	cmp r4, r0
	moveq r0, #0
	streqh r0, [r6, r1]
	beq _0205020C
	add r2, r2, #1
	cmp r2, #4
	blt _020501E8
_0205020C:
	cmp r3, #0
	bne _0205022C
	mov r0, r6
	mov r1, r5, lsl #1
	mov r2, #0
	strh r2, [r6, r1]
	bl FUN_0204ff08
	mov r3, r0
_0205022C:
	mov r0, r5, lsl #1
	strh r4, [r6, r0]
	add r0, r6, r5
	strb r3, [r0, #0xa]
	ldmfd sp!, {r4, r5, r6, pc}
_02050240: .word 0x00000FFF
	arm_func_end FUN_020501bc

	arm_func_start FUN_02050244
FUN_02050244: ; 0x02050244
	cmp r1, #4
	movhs r0, #0
	movlo r1, r1, lsl #1
	ldrloh r0, [r0, r1]
	bx lr
	arm_func_end FUN_02050244

	arm_func_start FUN_02050258
FUN_02050258: ; 0x02050258
	cmp r1, #4
	movhs r0, #0
	bxhs lr
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, _02050280 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_02050280: .word 0x00000FFF
	arm_func_end FUN_02050258

	arm_func_start FUN_02050284
FUN_02050284: ; 0x02050284
	ldrh r0, [r0, #8]
	bx lr
	arm_func_end FUN_02050284

	arm_func_start FUN_0205028c
FUN_0205028c: ; 0x0205028C
	ldrh r1, [r0, #8]
	ldr r0, _020502A4 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_020502A4: .word 0x00000FFF
	arm_func_end FUN_0205028c

	arm_func_start FUN_020502a8
FUN_020502a8: ; 0x020502A8
	mov r3, #0
_020502AC:
	mov r2, r3, lsl #1
	ldrh r2, [r0, r2]
	cmp r2, #0
	beq _020502C8
	cmp r1, r2
	moveq r0, #1
	bxeq lr
_020502C8:
	add r3, r3, #1
	cmp r3, #4
	blt _020502AC
	mov r0, #0
	bx lr
	arm_func_end FUN_020502a8

	arm_func_start FUN_020502dc
FUN_020502dc: ; 0x020502DC
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x20
	bl FUN_0206d3c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020502dc

	arm_func_start FUN_02050300
FUN_02050300: ; 0x02050300
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x20
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050300

	arm_func_start FUN_02050324
FUN_02050324: ; 0x02050324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_0206d4b4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x40
	bl FUN_0206d3c8
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_0204d2a4
	mov r0, r7
	mov r1, r6
	bl FUN_0204d6a8
	mov r0, r7
	mov r2, r6
	mov r1, r5
	bl FUN_0204d354
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_0206d9cc
	mov r1, r5
	mov r0, r7
	bl FUN_0204d0b4
	mov r0, r7
	mov r1, #2
	bl FUN_0204d0b4
	mov r0, r7
	bl FUN_0204ce50
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02050324

	arm_func_start FUN_020503c0
FUN_020503c0: ; 0x020503C0
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x40
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020503c0

	arm_func_start FUN_020503e4
FUN_020503e4: ; 0x020503E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl FUN_0205107c
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_0204fca0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_0206d4a4
	cmp r0, #0
	beq _02050444
	mov r0, r5
	mov r1, #0x400
	bl FUN_0206d3fc
_02050444:
	mov r0, r5
	bl FUN_0206d484
	cmp r0, #0
	beq _02050460
	mov r0, r5
	mov r1, #0x100
	bl FUN_0206d3fc
_02050460:
	mov r0, r5
	mov r1, #0x80
	bl FUN_0206d3c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020503e4

	arm_func_start FUN_02050470
FUN_02050470: ; 0x02050470
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x80
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050470

	arm_func_start FUN_02050494
FUN_02050494: ; 0x02050494
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d474
	cmp r0, #0
	beq _020504C4
	mov r0, r4
	mov r1, #0x80
	bl FUN_0206d3fc
_020504C4:
	mov r0, r4
	mov r1, #0x100
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02050494

	arm_func_start FUN_020504d4
FUN_020504d4: ; 0x020504D4
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x100
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020504d4

	arm_func_start FUN_020504f8
FUN_020504f8: ; 0x020504F8
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d484
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x200
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020504f8

	arm_func_start FUN_0205052c
FUN_0205052c: ; 0x0205052C
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x200
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205052c

	arm_func_start FUN_02050550
FUN_02050550: ; 0x02050550
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d484
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02050550

	arm_func_start FUN_02050584
FUN_02050584: ; 0x02050584
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050584

	arm_func_start FUN_020505a8
FUN_020505a8: ; 0x020505A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, #0
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020efa9c
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl FUN_0205106c
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_020502a8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_0206d474
	cmp r0, #0
	beq _02050608
	mov r0, r5
	mov r1, #0x80
	bl FUN_0206d3fc
_02050608:
	mov r0, r5
	mov r1, #0x400
	bl FUN_0206d3c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020505a8

	arm_func_start FUN_02050618
FUN_02050618: ; 0x02050618
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x400
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050618

	arm_func_start FUN_0205063c
FUN_0205063c: ; 0x0205063C
	stmfd sp!, {r4, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0206d4a4
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x800
	bl FUN_0206d3c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205063c

	arm_func_start FUN_02050670
FUN_02050670: ; 0x02050670
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x800
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050670

	arm_func_start FUN_02050694
FUN_02050694: ; 0x02050694
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x1000
	bl FUN_0206d3c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050694

	arm_func_start FUN_020506b8
FUN_020506b8: ; 0x020506B8
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0x1000
	bl FUN_0206d3fc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020506b8

	arm_func_start FUN_020506dc
FUN_020506dc: ; 0x020506DC
	cmp r1, #0
	ble _020506EC
	cmp r1, #0x63
	ble _020506F4
_020506EC:
	mov r0, #0
	bx lr
_020506F4:
	cmp r1, #1
	moveq r0, #0
	subne r1, r1, #2
	ldrne r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end FUN_020506dc

	arm_func_start FUN_02050708
FUN_02050708: ; 0x02050708
	cmp r1, #0
	ble _02050718
	cmp r1, #0x63
	ble _02050720
_02050718:
	mov r0, #0
	bx lr
_02050720:
	sub r1, r1, #1
	ldrb r0, [r0, r1]
	bx lr
	arm_func_end FUN_02050708

	arm_func_start FUN_0205072c
FUN_0205072c: ; 0x0205072C
	ldr r12, _0205073C ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x148
	bx r12
_0205073C: .word MI_CpuFill8
	arm_func_end FUN_0205072c

	arm_func_start FUN_02050740
FUN_02050740: ; 0x02050740
	and r2, r1, #7
	mov r3, #1
	cmp r1, #0
	mov r2, r3, lsl r2
	bxlt lr
	cmp r1, #0xa40
	ldrlsb r3, [r0, r1, asr #3]
	andls r2, r2, #0xff
	orrls r2, r3, r2
	strlsb r2, [r0, r1, asr #3]
	bx lr
	arm_func_end FUN_02050740

	arm_func_start FUN_0205076c
FUN_0205076c: ; 0x0205076C
	and r2, r1, #7
	mov r3, #1
	cmp r1, #0
	mov r2, r3, lsl r2
	bxlt lr
	cmp r1, #0xa40
	eorls r2, r2, #0xff
	ldrlsb r3, [r0, r1, asr #3]
	andls r2, r2, #0xff
	andls r2, r3, r2
	strlsb r2, [r0, r1, asr #3]
	bx lr
	arm_func_end FUN_0205076c

	arm_func_start FUN_0205079c
FUN_0205079c: ; 0x0205079C
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _020507B4
	cmp r1, #0xa40
	bls _020507BC
_020507B4:
	mov r0, #0
	bx lr
_020507BC:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_0205079c

	arm_func_start FUN_020507d0
FUN_020507d0: ; 0x020507D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r1, lsl #0x10
	ldr r0, _0205081C ; =gLogicThink
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	and r1, r0, #7
	mov r2, #1
	cmp r0, #0
	mov r2, r2, lsl r1
	ldmltfd sp!, {r4, pc}
	cmp r0, #0xa40
	ldmhifd sp!, {r4, pc}
	ldrb r1, [r4, r0, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	orreq r1, r1, r2
	streqb r1, [r4, r0, asr #3]
	ldmfd sp!, {r4, pc}
_0205081C: .word gLogicThink
	arm_func_end FUN_020507d0

	arm_func_start FUN_02050820
FUN_02050820: ; 0x02050820
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _02050838
	cmp r1, #0xa40
	bls _02050840
_02050838:
	mov r0, #0
	bx lr
_02050840:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_02050820

	arm_func_start FUN_02050854
FUN_02050854: ; 0x02050854
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x68
	mov r6, r1
	mov r1, r6, lsl #0x10
	ldr r5, _020508F4 ; =gLogicThink
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	cmp r0, #0
	and r1, r0, #7
	mov r4, #1
	addlt sp, sp, #0x68
	mov r2, r4, lsl r1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, r0, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	orr r2, r1, r2
	strb r2, [r7, r0, asr #3]
	mov r1, r6, lsl #0x10
	add r2, sp, #0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r0, [sp, #0x4d]
	cmp r0, #1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020508F8 ; =0x020A0EF8
	mov r1, r6
	mov r2, r4
	bl FUN_02050a0c
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020508F4: .word gLogicThink
_020508F8: .word unk_020A0EF8
	arm_func_end FUN_02050854

	arm_func_start FUN_020508fc
FUN_020508fc: ; 0x020508FC
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _02050914
	cmp r1, #0xa40
	bls _0205091C
_02050914:
	mov r0, #0
	bx lr
_0205091C:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_020508fc

	arm_func_start FUN_02050930
FUN_02050930: ; 0x02050930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x68
	mov r6, r1
	mov r1, r6, lsl #0x10
	ldr r5, _020509D0 ; =gLogicThink
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	cmp r0, #0
	and r1, r0, #7
	mov r4, #1
	addlt sp, sp, #0x68
	mov r2, r4, lsl r1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, r0, asr #3]
	and r2, r2, #0xff
	tst r2, r1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	orr r2, r1, r2
	strb r2, [r7, r0, asr #3]
	mov r1, r6, lsl #0x10
	add r2, sp, #0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r0, [sp, #0x4d]
	cmp r0, #1
	addne sp, sp, #0x68
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020509D4 ; =0x020A0EF8
	mov r1, r6
	mov r2, r4
	bl FUN_02050a0c
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020509D0: .word gLogicThink
_020509D4: .word unk_020A0EF8
	arm_func_end FUN_02050930

	arm_func_start FUN_020509d8
FUN_020509d8: ; 0x020509D8
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _020509F0
	cmp r1, #0xa40
	bls _020509F8
_020509F0:
	mov r0, #0
	bx lr
_020509F8:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_020509d8

	arm_func_start FUN_02050a0c
FUN_02050a0c: ; 0x02050A0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x68
	mov r9, r1
	mov r1, r9, lsl #0x10
	ldr r6, _02050B14 ; =gLogicThink
	mov r10, r0
	mov r0, r6
	mov r1, r1, lsr #0x10
	mov r8, r2
	bl FUN_0204bc4c
	movs r5, r0
	and r0, r5, #7
	mov r1, #1
	mov r7, r1, lsl r0
	addmi sp, sp, #0x68
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r0, [r10, r5, asr #3]
	and r1, r7, #0xff
	ldr r4, _02050B18 ; =0x020A108A
	tst r1, r0
	addne sp, sp, #0x68
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r9, lsl #0x10
	add r2, sp, #0
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r0, [sp, #0x4d]
	mov r1, r9, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r0, #1
	mov r0, r6
	bne _02050AE4
	bl FUN_0204ec70
	cmp r0, #0
	beq _02050AFC
	add r1, sp, #0x1c
	mov r0, r6
	bl FUN_02073a1c
	and r6, r0, #0xff
	mov r0, r4
	mov r1, r5
	bl FUN_020509d8
	cmp r0, #0
	bne _02050AD4
	cmp r8, #0
	beq _02050AFC
_02050AD4:
	mov r0, r10
	mov r1, r6
	bl FUN_02050c10
	b _02050AFC
_02050AE4:
	bl FUN_0204ec70
	cmp r0, #0
	beq _02050AFC
	ldrb r1, [sp, #0x4d]
	mov r0, r10
	bl FUN_02050c30
_02050AFC:
	ldrb r1, [r10, r5, asr #3]
	and r0, r7, #0xff
	orr r0, r1, r0
	strb r0, [r10, r5, asr #3]
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02050B14: .word gLogicThink
_02050B18: .word unk_020A108A
	arm_func_end FUN_02050a0c

	arm_func_start FUN_02050b1c
FUN_02050b1c: ; 0x02050B1C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x68
	mov r7, r1
	mov r1, r7, lsl #0x10
	ldr r5, _02050BD8 ; =gLogicThink
	mov r8, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bc4c
	movs r4, r0
	and r0, r4, #7
	mov r1, #1
	mov r6, r1, lsl r0
	addmi sp, sp, #0x68
	ldmmifd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0xa40
	addhi sp, sp, #0x68
	ldmhifd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r8, r4, asr #3]
	and r1, r6, #0xff
	tst r1, r0
	addeq sp, sp, #0x68
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r7, lsl #0x10
	add r2, sp, #0
	mov r0, r5
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	ldrb r1, [sp, #0x4d]
	cmp r1, #1
	bne _02050BB4
	add r1, sp, #0x1c
	mov r0, r5
	bl FUN_02073a1c
	and r1, r0, #0xff
	mov r0, r8
	bl FUN_02050c54
	b _02050BBC
_02050BB4:
	mov r0, r8
	bl FUN_02050c74
_02050BBC:
	ldrb r1, [r8, r4, asr #3]
	eor r0, r6, #0xff
	and r0, r0, #0xff
	and r0, r1, r0
	strb r0, [r8, r4, asr #3]
	add sp, sp, #0x68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02050BD8: .word gLogicThink
	arm_func_end FUN_02050b1c

	arm_func_start FUN_02050bdc
FUN_02050bdc: ; 0x02050BDC
	cmp r1, #0
	and r2, r1, #7
	mov r3, #1
	blt _02050BF4
	cmp r1, #0xa40
	bls _02050BFC
_02050BF4:
	mov r0, #0
	bx lr
_02050BFC:
	ldrb r0, [r0, r1, asr #3]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	arm_func_end FUN_02050bdc

	arm_func_start FUN_02050c10
FUN_02050c10: ; 0x02050C10
	add r2, r0, #0x148
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	bxhs lr
	cmp r1, #0xa
	addle r0, r0, #1
	strleb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c10

	arm_func_start FUN_02050c30
FUN_02050c30: ; 0x02050C30
	add r0, r0, #0x52
	add r2, r0, #0x100
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	bxhs lr
	cmp r1, #0x40
	addlt r0, r0, #1
	strltb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c30

	arm_func_start FUN_02050c54
FUN_02050c54: ; 0x02050C54
	add r2, r0, #0x148
	ldrb r0, [r2, r1]
	cmp r0, #0
	bxeq lr
	cmp r1, #0xa
	suble r0, r0, #1
	strleb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c54

	arm_func_start FUN_02050c74
FUN_02050c74: ; 0x02050C74
	add r0, r0, #0x52
	add r2, r0, #0x100
	ldrb r0, [r2, r1]
	cmp r0, #0
	cmpne r1, #0x40
	sublt r0, r0, #1
	strltb r0, [r2, r1]
	bx lr
	arm_func_end FUN_02050c74

	arm_func_start FUN_02050c94
FUN_02050c94: ; 0x02050C94
	add r3, r0, #8
	ldrb r0, [r3, r1]
	adds r0, r2, r0
	movmi r0, #0
	cmp r0, #0xff
	movgt r0, #0xff
	strb r0, [r3, r1]
	bx lr
	arm_func_end FUN_02050c94

	arm_func_start FUN_02050cb4
FUN_02050cb4: ; 0x02050CB4
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldrh r12, [lr, #4]
	ldrh r3, [lr, #6]
	add r0, lr, #0xf
	add r1, lr, #8
	mov r2, #7
	strh r12, [lr]
	strh r3, [lr, #2]
	bl MI_CpuCopy8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02050cb4

	arm_func_start FUN_02050ce0
FUN_02050ce0: ; 0x02050CE0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	ldrh r2, [r5]
	ldrh r1, [r4]
	ldr r0, _02050DA8 ; =0x000003E7
	add r1, r2, r1
	strh r1, [r5]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	cmp r1, r0
	strhih r0, [r5]
	ldrh r1, [r4, #2]
	ldr r0, _02050DA8 ; =0x000003E7
	add r1, r2, r1
	strh r1, [r5, #2]
	ldrh r1, [r5, #2]
	cmp r1, r0
	strhih r0, [r5, #2]
	ldrsb r2, [r4, #4]
	mov r0, r5
	mov r1, #0
	bl FUN_02050c94
	mov r6, #1
	ldrsb r2, [r4, #5]
	mov r0, r5
	mov r1, r6
	bl FUN_02050c94
	ldrsb r2, [r4, #6]
	mov r0, r5
	mov r1, #3
	bl FUN_02050c94
	ldrsb r2, [r4, #7]
	mov r0, r5
	mov r1, #2
	bl FUN_02050c94
	ldrsb r2, [r4, #8]
	mov r0, r5
	mov r1, #4
	bl FUN_02050c94
	ldrsb r2, [r4, #9]
	mov r0, r5
	mov r1, #6
	bl FUN_02050c94
	ldrsb r2, [r4, #0xa]
	mov r0, r5
	mov r1, #5
	bl FUN_02050c94
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_02050DA8: .word 0x000003E7
	arm_func_end FUN_02050ce0

	arm_func_start FUN_02050dac
FUN_02050dac: ; 0x02050DAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r0, #0x4c
	mla r1, r9, r0, r10
	mov r4, r2
	add r0, r4, #0x394
	add r5, r0, #0x400
	add r3, r1, #0x24
	mov r2, #0x10
_02050DD4:
	ldrh r0, [r5, #2]
	ldrh r1, [r5], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02050DD4
	mov r0, #0x4c
	mla r0, r9, r0, r10
	add r1, r4, #0x700
	ldrh r3, [r1, #0xd4]
	ldrb r2, [r4, #0x7d6]
	ldrb r5, [r4, #0x7d7]
	strh r3, [r0, #0x64]
	strb r2, [r0, #0x66]
	strb r5, [r0, #0x67]
	ldrh r3, [r1, #0xd8]
	add r2, r10, r9, lsl #5
	ldrh r5, [r1, #0xda]
	strh r3, [r0, #0x68]
	ldrh r3, [r1, #0xdc]
	strh r5, [r0, #0x6a]
	ldrh r1, [r1, #0xde]
	strh r3, [r0, #0x6c]
	add r2, r2, #0xc
	add r3, r2, #0x400
	add r5, r4, #0x7e0
	strh r1, [r0, #0x6e]
	mov r2, #8
_02050E44:
	ldrh r0, [r5, #2]
	ldrh r1, [r5], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02050E44
	ldrh r2, [r4, #0xd2]
	add r0, r10, #0xc
	add r3, r0, #0x400
	ldr r0, _02050F44 ; =0x020A06BC
	mov r1, r9, lsl #1
	strh r2, [r0, r1]
	cmp r9, #1
	add r5, r3, r9, lsl #5
	bne _02050EC0
	mov r6, #0
	b _02050EB8
_02050E88:
	mov r0, r5
	mov r1, r6
	bl FUN_0204fbe8
	cmp r0, #0
	beq _02050EB4
	orr r0, r0, #0x8000
	mov r2, r0, lsl #0x10
	mov r0, r5
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_0204fb8c
_02050EB4:
	add r6, r6, #1
_02050EB8:
	cmp r6, #0x10
	blt _02050E88
_02050EC0:
	mov r8, #0
	add r7, r4, #0xd4
	mov r11, #0x40
	mov r6, r8
	ldr r4, _02050F48 ; =0x0209A11C
	b _02050F38
_02050ED8:
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, r6
	str r6, [sp]
	bl FUN_02071c20
	ldr r0, [r4]
	mov r1, r8
	bl FUN_0206c6fc
	movs r5, r0
	beq _02050F30
	mov r1, r9
	bl FUN_0206d600
	mov r0, r5
	mov r1, r9
	bl FUN_0206cc1c
	mov r0, r5
	mov r1, r11
	bl FUN_0206d620
	mov r0, r5
	mov r1, #0x20
	bl FUN_0206d634
_02050F30:
	add r8, r8, #1
	add r7, r7, #0x6c
_02050F38:
	cmp r8, #0x10
	blt _02050ED8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02050F44: .word unk_020A06BC
_02050F48: .word unk_0209A11C
	arm_func_end FUN_02050dac

	arm_func_start FUN_02050f4c
FUN_02050f4c: ; 0x02050F4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r2
	mov r7, #0x2000
	cmp r9, #2
	mov r10, r1
	mov r6, #0
	moveq r7, #0x4000
	beq _02050F74
	cmp r9, #3
	moveq r7, #0x8000
_02050F74:
	ldr r4, _02051068 ; =gLogicThink
	mov r8, #0
	mov r11, #2
_02050F80:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _02051058
	bl FUN_0206d64c
	cmp r0, #0
	beq _02051058
	mov r0, r5
	bl FUN_0206d5f0
	cmp r10, r0
	bne _02051058
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	tst r7, r0
	beq _02051058
	cmp r6, #0
	bne _02051040
	cmp r9, #1
	bne _02050FF0
	mov r0, r5
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r4
	mov r1, r10
	bl FUN_0204c6f0
	cmp r0, #0
	beq _02051040
_02050FF0:
	cmp r9, #2
	bne _02051018
	mov r0, r5
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r4
	mov r1, r10
	bl FUN_0204c680
	cmp r0, #0
	beq _02051040
_02051018:
	cmp r9, #3
	bne _02051054
	mov r0, r5
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r4
	mov r1, r11
	bl FUN_0204c6f0
	cmp r0, #0
	bne _02051054
_02051040:
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r7
	bl FUN_0206e20c
	b _02051058
_02051054:
	mov r6, #1
_02051058:
	add r8, r8, #1
	cmp r8, #0x64
	blt _02050F80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02051068: .word gLogicThink
	arm_func_end FUN_02050f4c

	arm_func_start FUN_0205106c
FUN_0205106c: ; 0x0205106C
	add r0, r0, #0xcc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end FUN_0205106c

	arm_func_start FUN_0205107c
FUN_0205107c: ; 0x0205107C
	add r0, r0, #0xc
	add r0, r0, #0x400
	add r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_0205107c

	.rodata
	.global unk_0208C444
unk_0208C444:
	.asciz "/data_iz/logic/unitstat.dat"
	.balign 4, 0

	.data
	.global unk_020904C0
unk_020904C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020904D8
unk_020904D8:
	.asciz "/data_iz/logic/cmd_cond.dat"
	.balign 4, 0
	.global unk_020904F4
unk_020904F4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0209050C
unk_0209050C:
	.asciz "/data_iz/logic/unitbase.dat"
	.balign 4, 0
	.global unk_02090528
unk_02090528:
	.asciz "/data_iz/logic/unitbase_npc.dat"
	.balign 4, 0
	.global unk_02090548
unk_02090548:
	.asciz "logic/usearch.dat"
	.balign 4, 0

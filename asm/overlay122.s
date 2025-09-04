
	.include "/macros/function.inc"
	.include "/include/overlay122.inc"

	.text
	arm_func_start FUN_ov122_02124d00
FUN_ov122_02124d00: ; 0x02124D00
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _02124D68
_02124D14: ; jump table
	b _02124D68 ; case 0
	b _02124D30 ; case 1
	b _02124D38 ; case 2
	b _02124D48 ; case 3
	b _02124D68 ; case 4
	b _02124D60 ; case 5
	b _02124D60 ; case 6
_02124D30:
	mov r1, #1
	b _02124D3C
_02124D38:
	mov r1, #2
_02124D3C:
	mov r0, #4
	str r1, [r4, #0xc]
	b _02124D64
_02124D48:
	bl FUN_ov122_02125974
	mov r1, #4
	mov r0, #0
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	b _02124D68
_02124D60:
	mov r0, #0
_02124D64:
	str r0, [r4, #8]
_02124D68:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov122_02124d00

	arm_func_start FUN_ov122_02124d70
FUN_ov122_02124d70: ; 0x02124D70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r9, r0
	mov r6, #0
	mov r1, r6
	add r0, r9, #0x28
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r1, [r9, #0x154]
	cmp r1, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0xc]
	mov r8, r6
	sub r5, r0, #1
	add r7, r1, #0x2a
	add r10, sp, #0
	mov r4, r6
_02124DB8:
	ldrb r1, [r7]
	cmp r1, #0
	beq _02124DF4
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020efabc
	cmp r0, #0
	beq _02124DF4
	bl FUN_0206cbf8
	add r1, r9, r6, lsl #2
	strh r0, [r1, #0x28]
	strh r8, [r1, #0x2a]
	ldrb r0, [r7, #6]
	str r0, [r10, r6, lsl #2]
	add r6, r6, #1
_02124DF4:
	add r8, r8, #1
	cmp r8, #6
	add r7, r7, #7
	blt _02124DB8
	sub r12, r6, #1
	cmp r12, #0
	mov r10, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r8, sp, #0
_02124E1C:
	add lr, r10, #1
	cmp lr, r6
	bge _02124E74
	add r4, r9, r10, lsl #2
_02124E2C:
	ldr r7, [r8, lr, lsl #2]
	ldr r5, [r8, r10, lsl #2]
	cmp r5, r7
	ble _02124E68
	add r1, r9, lr, lsl #2
	ldrh r3, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldrh r0, [r1, #0x28]
	str r7, [r8, r10, lsl #2]
	str r5, [r8, lr, lsl #2]
	strh r0, [r4, #0x28]
	ldrh r0, [r1, #0x2a]
	strh r0, [r4, #0x2a]
	strh r3, [r1, #0x28]
	strh r2, [r1, #0x2a]
_02124E68:
	add lr, lr, #1
	cmp lr, r6
	blt _02124E2C
_02124E74:
	add r10, r10, #1
	cmp r10, r12
	blt _02124E1C
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov122_02124d70

	arm_func_start FUN_ov122_02124e88
FUN_ov122_02124e88: ; 0x02124E88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	ldr r5, _02124EE4 ; =0x02099F04
	mov r8, r0
	mov r6, r7
	mov r4, #0xc
_02124EA0:
	add r0, r8, r7, lsl #2
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	beq _02124ED4
	mov r1, r6
	bl FUN_ov16_020efa9c
	cmp r0, #0
	mlane r1, r7, r4, r8
	ldrne r1, [r1, #0x10c]
	cmpne r1, #0
	beq _02124ED4
	ldr r2, [r5]
	bl FUN_ov16_020f0c30 ; may be ov17
_02124ED4:
	add r7, r7, #1
	cmp r7, #6
	blt _02124EA0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124EE4: .word unk_02099F04
	arm_func_end FUN_ov122_02124e88

	arm_func_start FUN_ov122_02124ee8
FUN_ov122_02124ee8: ; 0x02124EE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	str r1, [r4, #0x14]
	cmp r1, #4
	mov r11, #0
	addls pc, pc, r1, lsl #2
	b _021251B0
_02124F08: ; jump table
	b _021251B0 ; case 0
	b _02124F1C ; case 1
	b _02124FB4 ; case 2
	b _02125024 ; case 3
	b _02125024 ; case 4
_02124F1C:
	mov r5, r11
	mov r1, r5
	add r0, r4, #0x40
	mov r2, #0x150
	bl MI_CpuFill8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021251B0
	cmp r0, #1
	movne r5, #1
	ldr r0, _021251C0 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	ldrh r0, [r0, #0x22]
	mov r3, #0x60
	mul r1, r0, r3
	str r1, [sp, #0x18]
	str r11, [sp]
	ldr r2, [sp, #0x18]
	ldr r0, _021251C4 ; =0x02125EB4
	add r1, r4, #0x154
	bl FUN_ov16_020f31fc
	ldr r0, _021251C8 ; =0x02125ED0
	add r1, r4, #0x40
	bl FUN_ov1_020dbe00
	ldr r0, _021251CC ; =0x02125EDC
	add r1, r4, #0x184
	bl FUN_ov1_020dbec4
	ldr r0, _021251D0 ; =0x02125EE8
	add r1, r4, #0x160
	bl FUN_ov1_020dbf50
	ldr r0, _021251D4 ; =0x02125EF0
	add r1, r4, #0x16c
	bl FUN_ov1_020dbf50
	ldr r0, _021251D8 ; =0x02125EF8
	add r1, r4, #0x178
	bl FUN_ov1_020dbf50
	b _021251B0
_02124FB4:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02124FC8
	cmp r0, #2
	bne _021251B0
_02124FC8:
	cmp r0, #1
	mov r1, #0
	ldr r0, _021251C0 ; =0x0209BA20
	movne r1, #1
	bl FUN_0207249c
	ldr r0, [r4, #0xc]
	mov r1, #1
	cmp r0, #1
	ldr r0, [r4, #0x184]
	movne r1, #2
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _021251B0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	ldr r0, _021251DC ; =0x02125F00
	add r1, r4, #0x70
	bl FUN_ov1_020dbefc
	b _021251B0
_02125024:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02125038
	cmp r0, #2
	bne _021251B0
_02125038:
	cmp r0, #1
	mov r1, #0
	ldr r0, _021251C0 ; =0x0209BA20
	movne r1, #1
	bl FUN_0207249c
	mov r10, r0
	mov r9, #0
	add r5, r4, #0x40
	add r6, sp, #0x18
_0212505C:
	add r0, r4, r9, lsl #2
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	beq _021251A4
	mov r1, r11
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _021251A4
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bne _021250D8
	ldr r0, [r4, #0x160]
	cmp r0, #0
	beq _021251A4
	add r2, sp, #0xc
	str r2, [sp]
	mov r1, r8
	mov r2, r11
	mov r3, r6
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _021251A4
	add r2, r9, #0xb
	mov r1, #0xc
	mov r0, #1
	str r0, [sp]
	mla r1, r2, r1, r5
	ldr r0, _021251E0 ; =0x02125F0C
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0xc]
	b _021251A0
_021250D8:
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020f0bcc
	ldrh r1, [r10, #0x28]
	mov r7, r0
	mov r0, r8
	cmp r1, #0
	ldreqh r1, [r10, #0x26]
	bl FUN_ov16_020f0b3c
	mov r2, r0
	ldr r0, [r4, #0x16c]
	cmp r0, #0
	beq _02125150
	str r6, [sp]
	add r3, sp, #8
	str r3, [sp, #4]
	mov r1, r8
	mov r3, r7
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _02125150
	add r2, r9, #5
	mov r1, #0xc
	mla r1, r2, r1, r5
	mov r0, #1
	str r0, [sp]
	ldr r0, _021251E4 ; =0x02125F14
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #8]
	bl FUN_ov1_020dbf88
_02125150:
	ldr r0, [r4, #0x178]
	cmp r0, #0
	beq _021251A4
	ldrh r1, [r10, #0x28]
	add r3, sp, #8
	mov r2, r7
	cmp r1, #0
	ldreqh r1, [r10, #0x26]
	str r3, [sp]
	mov r3, r6
	bl FUN_ov16_020f3744
	cmp r0, #0
	beq _021251A4
	add r2, r9, #0x11
	mov r1, #0xc
	mla r1, r2, r1, r5
	str r11, [sp]
	ldr r0, _021251E8 ; =0x02125F1C
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #8]
_021251A0:
	bl FUN_ov1_020dbf88
_021251A4:
	add r9, r9, #1
	cmp r9, #6
	blt _0212505C
_021251B0:
	mov r0, #1
	str r0, [r4, #8]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021251C0: .word unk_0209BA20
_021251C4: .word ov122_02125EB4
_021251C8: .word ov122_02125ED0
_021251CC: .word ov122_02125EDC
_021251D0: .word ov122_02125EE8
_021251D4: .word ov122_02125EF0
_021251D8: .word ov122_02125EF8
_021251DC: .word ov122_02125F00
_021251E0: .word ov122_02125F0C
_021251E4: .word ov122_02125F14
_021251E8: .word ov122_02125F1C
	arm_func_end FUN_ov122_02124ee8

	arm_func_start FUN_ov122_021251ec
FUN_ov122_021251ec: ; 0x021251EC
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02125210 ; =0x02125D80
	add r1, r1, #0x40
	bl FUN_ov1_020dbfdc
	ldmfd sp!, {r3, pc}
_02125210: .word ov122_02125D80
	arm_func_end FUN_ov122_021251ec

	arm_func_start FUN_ov122_02125214
FUN_ov122_02125214: ; 0x02125214
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x40
	mov r4, #0xc
_02125224:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x1c
	blt _02125224
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov122_02125214

	arm_func_start FUN_ov122_0212523c
FUN_ov122_0212523c: ; 0x0212523C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r8, [r10, #0x70]
	mov r9, r1
	cmp r8, #0
	addeq sp, sp, #0x1c
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	mov r4, #0xf
	mov r11, #1
	mov r6, r7
_02125270:
	add r0, r10, r7, lsl #2
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	beq _021252F4
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r9
	add r0, r8, r0
	bl GXS_LoadBG2Char
	add r0, r10, r7, lsl #2
	ldrh r0, [r0, #0x28]
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	beq _021252F4
	bl G2S_GetBG2CharPtr
	stmia sp, {r4, r11}
	add r0, r9, r0
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, _02125314 ; =0x02099ED0
	str r6, [sp, #0x18]
	ldr r0, [r0]
	add r3, r5, #0x1c
	ldr r5, [r0]
	mov r1, r6
	ldr r5, [r5, #8]
	mov r2, #4
	blx r5
_021252F4:
	ldr r0, [r8, #0x18]
	add r7, r7, #1
	cmp r7, #6
	add r9, r9, r0
	blt _02125270
	mov r0, r9
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125314: .word unk_02099ED0
	arm_func_end FUN_ov122_0212523c

	arm_func_start FUN_ov122_02125318
FUN_ov122_02125318: ; 0x02125318
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	mov r5, #0xc
	cmp r0, #0
	mov r6, #1
	mov r11, #0
	bne _021253F8
	ldr r6, _021256C0 ; =0x020A9440
	mov r5, #0x800
	mov r0, r11
	mov r1, r6
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	bl G2S_GetBG0CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r0, r11
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	mov r1, r11
	mov r2, r5
	bl GXS_LoadBG0Scr
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r11
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	mov r1, r11
	mov r2, r5
	bl GXS_LoadBG1Scr
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r11
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	mov r1, r11
	mov r2, r5
	bl GXS_LoadBG2Scr
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021253F8:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02125418
	cmp r0, #1
	beq _0212559C
	cmp r0, #2
	beq _02125688
	b _021256AC
_02125418:
	ldr r7, _021256C4 ; =0x0209F5C0
	mov r1, r6
	mov r0, r7
	bl FUN_ov16_020f5af0
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f5a58
	ldr r0, [r4, #0x4c]
	sub r1, r6, #2
	mov r2, #2
	bl FUN_ov1_020dc13c
	mov r7, r11
	mov r10, r11
	mov r8, #5
	b _021254BC
_02125454:
	add r0, r4, r10, lsl #2
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	mlane r1, r8, r5, r4
	ldrne r9, [r1, #0x40]
	cmpne r9, #0
	beq _021254B4
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _021254B4
	add r1, r10, #0x11
	mla r0, r1, r5, r4
	ldr r0, [r0, #0x40]
	mov r1, r6
	add r2, r10, #4
	bl FUN_ov16_020f1160
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	add r0, r9, r0
	add r2, r7, #1
	add r3, r10, #4
	bl FUN_ov16_020f1868
	mov r7, r0
_021254B4:
	add r10, r10, #1
	add r8, r8, #1
_021254BC:
	cmp r10, #6
	blt _02125454
	mov r7, #0
	mov r10, r7
	mov r8, #0xb
	mov r5, #0xa
	b _02125524
_021254D8:
	mov r0, #0xc
	mla r0, r8, r0, r4
	ldr r9, [r0, #0x40]
	cmp r9, #0
	beq _02125518
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	mov r3, r5
	add r0, r9, r0
	add r2, r7, #1
	bl FUN_ov16_020f1868
	mov r7, r0
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f1138
_02125518:
	add r10, r10, #1
	add r5, r5, #1
	add r8, r8, #1
_02125524:
	cmp r10, #6
	blt _021254D8
	ldr r0, [r4, #0x58]
	mov r1, r7
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x64]
	mov r2, #2
	bl FUN_ov1_020dc13c
	ldr r1, [r4, #0x24]
	mov r7, r0
	cmp r1, #0
	beq _02125594
	mov r5, #3
	ldr r0, [r4, #0x70]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f1138
	ldr r0, [r4, #0x24]
	mov r1, #6
	mov r2, #0xc
	bl FUN_ov16_020f2ea8
	ldr r0, [r4, #0x24]
	mov r3, r5
	add r2, r7, #1
	mov r1, #0x90
	bl FUN_ov16_020f1868
_02125594:
	bl FUN_ov16_020f10c8
	b _021256AC
_0212559C:
	ldr r1, [r4, #0x4c]
	mov r0, r11
	mov r2, r11
	bl FUN_ov16_020f1a60
	bl G2S_GetBG1CharPtr
	mov r7, #0x20
	mov r1, r0
	mov r0, r11
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r7
	bl DC_FlushRange
	mov r8, r11
	b _021255F8
_021255D8:
	add r1, r8, #5
	mla r0, r1, r5, r4
	ldr r1, [r0, #0x40]
	mov r0, r6
	mov r2, r7
	bl FUN_ov16_020f1a60
	mov r7, r0
	add r8, r8, #1
_021255F8:
	cmp r8, #6
	blt _021255D8
	bl G2S_GetBG2CharPtr
	mov r7, #0x20
	mov r1, r0
	mov r2, r7
	mov r0, #0
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r7
	bl DC_FlushRange
	mov r8, #0xb
	mov r6, #2
	b _0212564C
_02125630:
	mla r0, r8, r5, r4
	ldr r1, [r0, #0x40]
	mov r0, r6
	mov r2, r7
	bl FUN_ov16_020f1a60
	mov r7, r0
	add r8, r8, #1
_0212564C:
	cmp r8, #0x10
	ble _02125630
	mov r5, #2
	ldr r1, [r4, #0x58]
	mov r0, r5
	mov r2, r7
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x64]
	mov r0, r5
	bl FUN_ov16_020f1a60
	mov r1, r0
	mov r0, r4
	bl FUN_ov122_0212523c
	b _021256AC
_02125688:
	ldr r3, [r4, #0x4c]
	cmp r3, #0
	beq _021256A8
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r11
	add r0, r3, r0
	bl GXS_LoadBG0Scr
_021256A8:
	mov r11, #1
_021256AC:
	ldr r1, [r4, #0x20]
	mov r0, r11
	add r1, r1, #1
	str r1, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021256C0: .word unk_020A9440
_021256C4: .word unk_0209F5C0
	arm_func_end FUN_ov122_02125318

	arm_func_start FUN_ov122_021256c8
FUN_ov122_021256c8: ; 0x021256C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r6, r3
	mov r9, r0
	add r3, r6, #5
	mov r0, #0xc
	mla r0, r3, r0, r9
	ldr r11, [r0, #0x40]
	ldr r5, [sp, #0x58]
	ldr r4, [sp, #0x5c]
	ldr r10, [sp, #0x60]
	cmp r11, #0
	mov r8, r1
	mov r7, r2
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, r6, lsl #2
	ldrh r0, [r0, #0x28]
	mov r1, #0
	bl FUN_ov16_020efa9c
	str r0, [sp, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x10]
	add r0, r6, #4
	mov r0, r0, lsl #0x10
	cmp r1, #0
	mov r1, r0, lsr #0x10
	ldr r0, [r11, #0xc]
	movne r5, #0
	add r0, r11, r0
	strb r1, [sp, #0x28]
	mov r1, #8
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	mov r1, #0
	str r0, [sp, #0x2c]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	mov r0, r1
	mov r1, #1
	add r11, sp, #0x18
	stmia sp, {r0, r11}
	movne r4, r5
	str r5, [sp, #8]
	ldr r0, _0212596C ; =0x0209F5C0
	movne r10, r5
	str r4, [sp, #0xc]
	mov r2, r1
	mov r3, r1
	str r10, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r1, r6, #0xb
	mov r0, #0xc
	mla r0, r1, r0, r9
	ldr r2, [r0, #0x40]
	cmp r2, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r2, #0xc]
	add r0, r6, #0xa
	strb r0, [sp, #0x28]
	mov r0, #8
	add r1, r2, r1
	str r1, [sp, #0x2c]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0
	mov r1, #1
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r0, [sp, #0x24]
	strh r0, [sp, #0x26]
	stmia sp, {r0, r11}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, _0212596C ; =0x0209F5C0
	str r10, [sp, #0x10]
	mov r2, #0
	mov r3, r1
	bl FUN_ov16_020f5c34
	ldr r2, [r9, #0x24]
	cmp r2, #0
	beq _021258A4
	mov r0, #0xc
	mul r0, r6, r0
	add r0, r2, r0, lsl #1
	add r1, r8, #2
	strh r1, [sp, #0x18]
	mov r1, #6
	strh r1, [sp, #0x1c]
	mov r1, #3
	add r2, r7, #7
	mov r3, #2
	strb r1, [sp, #0x28]
	mov r1, #0
	strh r2, [sp, #0x1a]
	str r0, [sp, #0x2c]
	strh r3, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r1, [sp, #0x26]
	mov r0, r1
	stmia sp, {r0, r11}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, _0212596C ; =0x0209F5C0
	mov r1, #1
	mov r2, #0
	str r10, [sp, #0x10]
	bl FUN_ov16_020f5c34
_021258A4:
	ldr r5, [r9, #0x64]
	cmp r5, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	ldr r0, _02125970 ; =0x0209BA20
	ldr r1, [sp, #0x14]
	mov r3, r4
	mov r2, #0xf
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02125904
_021258D8: ; jump table
	b _02125904 ; case 0
	b _021258EC ; case 1
	b _021258F0 ; case 2
	b _021258F8 ; case 3
	b _02125900 ; case 4
_021258EC:
	b _02125904
_021258F0:
	mov r4, #1
	b _02125904
_021258F8:
	mov r4, #2
	b _02125904
_02125900:
	mov r4, #3
_02125904:
	ldr r0, [r5, #0xc]
	mov r2, #0
	add r0, r5, r0
	mov r3, #2
	add r1, r0, r4, lsl #3
	add r0, r7, #7
	strh r0, [sp, #0x1a]
	str r1, [sp, #0x2c]
	strh r8, [sp, #0x18]
	strh r3, [sp, #0x1c]
	strh r3, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strh r2, [sp, #0x24]
	strh r2, [sp, #0x26]
	strb r3, [sp, #0x28]
	add r0, sp, #0x18
	str r2, [sp]
	stmib sp, {r0, r2}
	str r2, [sp, #0xc]
	ldr r0, _0212596C ; =0x0209F5C0
	mov r1, #1
	str r2, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212596C: .word unk_0209F5C0
_02125970: .word unk_0209BA20
	arm_func_end FUN_ov122_021256c8

	arm_func_start FUN_ov122_02125974
FUN_ov122_02125974: ; 0x02125974
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r6, #0x154]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r5, #0
	add r4, r0, #0x2a
_02125998:
	add r1, r6, r5, lsl #2
	ldrh r0, [r1, #0x28]
	cmp r0, #0
	beq _021259E0
	ldrh r1, [r1, #0x2a]
	mov r0, r6
	mov r3, r5
	rsb r1, r1, r1, lsl #3
	add r2, r4, r1
	ldrb r1, [r2, #5]
	str r1, [sp]
	ldrsb r1, [r2, #3]
	str r1, [sp, #4]
	ldrsb r1, [r2, #4]
	str r1, [sp, #8]
	ldrb r1, [r2, #1]
	ldrb r2, [r2, #2]
	bl FUN_ov122_021256c8
_021259E0:
	add r5, r5, #1
	cmp r5, #6
	blt _02125998
	ldrb r0, [r6, #0x10]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _02125A14 ; =0x0209F5C0
	mov r1, #1
	mov r2, #2
	bl FUN_ov16_020f6084
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125A14: .word unk_0209F5C0
	arm_func_end FUN_ov122_02125974

	arm_func_start FUN_ov122_02125a18
FUN_ov122_02125a18: ; 0x02125A18
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02125A3C
	cmp r0, #2
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
_02125A3C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02125AB8
	cmp r0, #4
	beq _02125A64
	cmp r0, #5
	moveq r0, #0
	streq r0, [r4, #0x18]
	streq r0, [r4, #0x1c]
	b _02125AD4
_02125A64:
	ldr r6, _02125B14 ; =0x0209F5C0
	mov r5, #1
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f6678
	cmp r0, #0
	bne _02125AD4
	ldr r0, [r4, #4]
	mov r1, #4
	ldr r2, [r0]
	ldr r2, [r2, #0x40]
	blx r2
	mov r0, r6
	mov r1, r5
	mov r2, #2
	bl FUN_ov16_020f60f8
	mov r1, #5
	mov r0, #0
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	b _02125AD4
_02125AB8:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02125AD4
	mov r0, r4
	bl FUN_ov122_02125974
	mov r0, #0
	strb r0, [r4, #0x10]
_02125AD4:
	ldr r0, [r4, #0x58]
	mov r4, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, r4
	mov r3, r1
	mov r0, #0x1e
	str r4, [sp, #8]
	bl FUN_ov1_020dbd38
	ldr r0, _02125B14 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f672c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02125B14: .word unk_0209F5C0
	arm_func_end FUN_ov122_02125a18

	arm_func_start FUN_ov122_02125b18
FUN_ov122_02125b18: ; 0x02125B18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _02125BAC ; =0x0209F5C0
	mov r1, #1
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	strb r4, [r5, #0x10]
	str r4, [r5, #0x24]
	bl FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x40
	mov r2, #0x150
	bl MI_CpuFill8
	bl FUN_ov1_020db260
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	bl FUN_020420b4
	mov r1, r0
	ldr r0, [r5, #4]
	bl FUN_02042110
	strb r0, [r5, #0x10]
	tst r0, #0xff
	ldrne r0, _02125BB0 ; =0x020EAAAC
	mov r1, #0xc
	ldrnesb r0, [r0]
	strne r0, [r5, #0xc]
	mov r0, #6
	bl FUN_ov16_020f2edc
	str r0, [r5, #0x24]
	mov r0, r5
	mov r1, #1
	bl FUN_ov122_02124ee8
	ldmfd sp!, {r3, r4, r5, pc}
_02125BAC: .word unk_0209F5C0
_02125BB0: .word ov1_020EAAAC
	arm_func_end FUN_ov122_02125b18

	arm_func_start FUN_ov122_02125bb4
FUN_ov122_02125bb4: ; 0x02125BB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _02125BDC
	cmp r1, #3
	beq _02125C88
	cmp r1, #4
	beq _02125C90
	ldmfd sp!, {r4, pc}
_02125BDC:
	add r0, r4, #0x40
	mov r1, #0x1c
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x14]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_02125C00: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _02125C14 ; case 1
	b _02125C34 ; case 2
	b _02125C44 ; case 3
	b _02125C54 ; case 4
_02125C14:
	mov r0, r4
	bl FUN_ov122_02124d70
	mov r0, r4
	bl FUN_ov122_021251ec
	mov r0, r4
	mov r1, #2
	bl FUN_ov122_02124ee8
	ldmfd sp!, {r4, pc}
_02125C34:
	mov r0, r4
	mov r1, #3
	bl FUN_ov122_02124ee8
	ldmfd sp!, {r4, pc}
_02125C44:
	mov r0, r4
	mov r1, #4
	bl FUN_ov122_02124ee8
	ldmfd sp!, {r4, pc}
_02125C54:
	mov r0, r4
	bl FUN_ov122_02124e88
	add r0, r4, #0x160
	bl FUN_ov16_020f33fc
	add r0, r4, #0x16c
	bl FUN_ov16_020f33fc
	add r0, r4, #0x178
	bl FUN_ov16_020f33fc
	mov r1, #2
	mov r0, #0
	str r1, [r4, #8]
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
_02125C88:
	bl FUN_ov122_02125a18
	ldmfd sp!, {r4, pc}
_02125C90:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov122_02125214
	mov r0, r4
	mov r1, #1
	bl FUN_ov122_02124ee8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov122_02125bb4

	arm_func_start FUN_ov122_02125cbc
FUN_ov122_02125cbc: ; 0x02125CBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02125CDC
	cmp r1, #3
	beq _02125D04
	ldmfd sp!, {r4, pc}
_02125CDC:
	bl FUN_ov122_02125318
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125D04:
	ldr r0, _02125D14 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_02125D14: .word unk_0209F5C0
	arm_func_end FUN_ov122_02125cbc

	arm_func_start FUN_ov122_02125d18
FUN_ov122_02125d18: ; 0x02125D18
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x40
	mov r1, #0x1c
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov122_02125214
	ldr r0, _02125D60 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f5af0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02125D64 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_02125D60: .word unk_0209F5C0
_02125D64: .word gL5Allocator
	arm_func_end FUN_ov122_02125d18

	arm_func_start FUN_ov122_02125d68
FUN_ov122_02125d68: ; 0x02125D68
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov122_02125d68

	arm_func_start FUN_ov122_02125d7c
FUN_ov122_02125d7c: ; 0x02125D7C
	bx lr
	arm_func_end FUN_ov122_02125d7c

	.global ov122_02125D80
ov122_02125D80:
	.byte 0x18, 0x5E, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x24, 0x5E, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x30, 0x5E, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov122_02125da0
FUN_ov122_02125da0: ; 0x02125DA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125DE8 ; =0x02125E00
	str r0, [r4, #8]
	ldr r0, _02125DEC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02125DF0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02125DE8: .word ov122_02125E00
_02125DEC: .word 0x00009CCD
_02125DF0: .word 0x0000EA3C
	arm_func_end FUN_ov122_02125da0

	.section .sinit, 4
ov122_02125DF4:
	.word FUN_ov122_02125da0

	.data
	.global ov122_02125E00
ov122_02125E00:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00, 0x70, 0x6F, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov122_02125E48
ov122_02125E48:
	.byte 0x7C, 0x5D, 0x12, 0x02, 0x68, 0x5D, 0x12, 0x02
	.byte 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02, 0x18, 0x5B, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xB4, 0x5B, 0x12, 0x02, 0xBC, 0x5C, 0x12, 0x02, 0x18, 0x5D, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02
	.byte 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02
	.byte 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0x00, 0x4D, 0x12, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov122_02125EB4
ov122_02125EB4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x70, 0x69, 0x6E, 0x74, 0x72, 0x6F, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov122_02125ED0
ov122_02125ED0:
	.byte 0x53, 0x50, 0x53, 0x50, 0x49, 0x6E, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov122_02125EDC
ov122_02125EDC:
	.byte 0x70, 0x6F, 0x5F, 0x77
	.byte 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00, 0x00
	.global ov122_02125EE8
ov122_02125EE8:
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov122_02125EF0
ov122_02125EF0:
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov122_02125EF8
ov122_02125EF8:
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov122_02125F00
ov122_02125F00:
	.byte 0x70, 0x6F, 0x5F, 0x77, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov122_02125F0C
ov122_02125F0C:
	.byte 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov122_02125F14
ov122_02125F14:
	.byte 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov122_02125F1C
ov122_02125F1C:
	.byte 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

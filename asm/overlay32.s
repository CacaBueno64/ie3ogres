
	.include "/macros/function.inc"
	.include "/include/overlay32.inc"

	.text
	arm_func_start FUN_ov32_02119f00
FUN_ov32_02119f00: ; 0x02119F00
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldreq r1, [r0, #0xc]
	cmpeq r1, #0
	bne _02119F40
	mov r3, #0
	mov r2, #1
	mov r1, #4
	strb r3, [r0, #0x15]
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r3, pc}
_02119F40:
	cmp r2, #0
	beq _02119F5C
	cmp r2, #1
	beq _02119F64
	cmp r2, #2
	beq _02119F6C
	ldmfd sp!, {r3, pc}
_02119F5C:
	bl FUN_ov32_02119f74
	ldmfd sp!, {r3, pc}
_02119F64:
	bl FUN_ov32_02119fcc
	ldmfd sp!, {r3, pc}
_02119F6C:
	bl FUN_ov32_0211a000
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov32_02119f00

	arm_func_start FUN_ov32_02119f74
FUN_ov32_02119f74: ; 0x02119F74
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _02119FC8 ; =0x0209A454
	mov r1, #0
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	str r1, [r0, #4]
	strb r1, [r0, #0x1e]
	mov r2, #1
	strb r2, [r0, #0x1f]
	strb r1, [r0, #0x20]
	strb r1, [r0, #0x1d]
	ldr r0, [r4, #4]
	mov r2, #0x5f
	bl FUN_02041ef0
	ldmfd sp!, {r4, pc}
_02119FC8: .word unk_0209A454
	arm_func_end FUN_ov32_02119f74

	arm_func_start FUN_ov32_02119fcc
FUN_ov32_02119fcc: ; 0x02119FCC
	stmfd sp!, {r3, lr}
	mov r1, #5
	str r1, [r0, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _02119FFC ; =0x020A9C40
	mov r1, #8
	bl FUN_020455a0
	mov r0, #3
	bl FUN_02029d44
	ldmfd sp!, {r3, pc}
_02119FFC: .word unk_020A9C40
	arm_func_end FUN_ov32_02119fcc

	arm_func_start FUN_ov32_0211a000
FUN_ov32_0211a000: ; 0x0211A000
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	mov r2, #0xe
	bl FUN_02041eac
	mov r0, r4
	mov r1, #1
	mov r2, #0xf
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov32_0211a000

	arm_func_start FUN_ov32_0211a044
FUN_ov32_0211a044: ; 0x0211A044
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _0211A080 ; =0x0209A454
	mov r1, #2
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xa
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_0211A080: .word unk_0209A454
	arm_func_end FUN_ov32_0211a044

	arm_func_start FUN_ov32_0211a084
FUN_ov32_0211a084: ; 0x0211A084
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _0211A164 ; =0x020A0B00
	cmp r0, #0
	beq _0211A0A0
	ldr r1, _0211A168 ; =0x0209A460
	mov r2, #0x11
	bl STD_CopyLString
_0211A0A0:
	ldr r0, _0211A168 ; =0x0209A460
	bl STD_GetStringLength
	mov r5, #0
	ldr r0, _0211A164 ; =0x020A0B00
	mov r1, r5
	bl FUN_02074764
	ldr r4, _0211A16C ; =0x0209A5D0
	mov r0, r4
	bl FUN_020630e0
	ldr r2, _0211A170 ; =0x020A0640
	ldr r1, _0211A174 ; =0x02099ED8
	str r0, [r2, #0xba4]
	ldr r0, [r1]
	bl FUN_02054f60
	ldr r0, _0211A178 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205ff0c
	bl FUN_ov16_020efa4c
	ldr r6, _0211A17C ; =0x0209BA20
	mov r1, r5
	mov r0, r6
	mov r8, #1
	mov r2, r8
	mov r3, r8
	bl FUN_02070530
	mov r0, r6
	mov r1, r5
	bl FUN_0207249c
	ldr r1, _0211A180 ; =0x0211A788
	bl sprintf
	ldr r0, _0211A184 ; =0x02099F78
	ldr r1, _0211A188 ; =0x0211A790
	bl L5_IniFileGetParam
	mov r7, r0
	ldr r6, _0211A18C ; =0x020AF81C
	mov r0, r6
	bl FUN_020443b0
	mov r0, r6
	mov r1, r7
	bl FUN_02044734
	str r8, [r4, #0x28]
	str r5, [r4, #0x2c]
	ldr r0, _0211A190 ; =0x020A9C40
	bl FUN_0204545c
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #3
	bl FUN_02029d44
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A164: .word unk_020A0B00
_0211A168: .word unk_0209A460
_0211A16C: .word unk_0209A5D0
_0211A170: .word unk_020A0640
_0211A174: .word unk_02099ED8
_0211A178: .word unk_02099EE8
_0211A17C: .word unk_0209BA20
_0211A180: .word ov32_0211A788
_0211A184: .word unk_02099F78
_0211A188: .word ov32_0211A790
_0211A18C: .word unk_020AF81C
_0211A190: .word unk_020A9C40
	arm_func_end FUN_ov32_0211a084

	arm_func_start FUN_ov32_0211a194
FUN_ov32_0211a194: ; 0x0211A194
	stmfd sp!, {r4, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0211A1C8
	cmp r0, #1
	beq _0211A1F4
	ldmfd sp!, {r4, pc}
_0211A1C8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x18]
	ldmgtfd sp!, {r4, pc}
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov32_02119f00
	ldmfd sp!, {r4, pc}
_0211A1F4:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov32_02119f00
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov32_0211a194

	arm_func_start FUN_ov32_0211a20c
FUN_ov32_0211a20c: ; 0x0211A20C
	ldr r2, [r0, #8]
	cmp r2, #3
	ldreqb r2, [r0, #0x14]
	cmpeq r2, #0
	bxne lr
	tst r1, #1
	movne r1, #1
	strneb r1, [r0, #0x15]
	bx lr
	arm_func_end FUN_ov32_0211a20c

	arm_func_start FUN_ov32_0211a230
FUN_ov32_0211a230: ; 0x0211A230
	ldr r2, [r0, #8]
	cmp r2, #3
	bxne lr
	ldrh r2, [r1, #4]
	cmp r2, #1
	bne _0211A264
	ldrh r1, [r1, #6]
	cmp r1, #0
	ldreqb r1, [r0, #0x14]
	cmpeq r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x14]
	bx lr
_0211A264:
	ldrb r1, [r0, #0x14]
	cmp r1, #0
	movne r1, #1
	strneb r1, [r0, #0x15]
	mov r1, #0
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov32_0211a230

	arm_func_start FUN_ov32_0211a280
FUN_ov32_0211a280: ; 0x0211A280
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x8c
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x1c
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, _0211A380 ; =0x0211A6D8
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0211A2D0
	cmp r0, #1
	beq _0211A2E0
	cmp r0, #2
	moveq r4, #2
	b _0211A2E4
_0211A2D0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	moveq r4, #1
	b _0211A2E4
_0211A2E0:
	mov r4, #1
_0211A2E4:
	add r0, sp, #0
	add r6, sp, #0xc
	ldr r2, [r0, r4, lsl #2]
	ldr r1, _0211A384 ; =0x0211A7A0
	mov r0, r6
	bl sprintf
	mov r0, r6
	add r1, r5, #0x1c
	bl FUN_ov16_020f316c
	ldr r8, _0211A388 ; =0x020A6C40
	mov r4, #0
	mov r7, #0x800
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl MIi_CpuClearFast
	ldr r6, _0211A38C ; =0x020A7440
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl MIi_CpuClearFast
	mov r0, r4
	ldr r4, _0211A390 ; =0x020A7C40
	mov r2, r7
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r8
	mov r1, r7
	bl DC_FlushRange
	mov r0, r6
	mov r1, r7
	bl DC_FlushRange
	mov r0, r4
	mov r1, r7
	bl DC_FlushRange
	mov r0, #1
	str r0, [r5, #8]
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A380: .word ov32_0211A6D8
_0211A384: .word ov32_0211A7A0
_0211A388: .word unk_020A6C40
_0211A38C: .word unk_020A7440
_0211A390: .word unk_020A7C40
	arm_func_end FUN_ov32_0211a280

	arm_func_start FUN_ov32_0211a394
FUN_ov32_0211a394: ; 0x0211A394
	ldr r12, _0211A3A0 ; = FUN_ov16_020f33fc
	add r0, r0, #0x1c
	bx r12
_0211A3A0: .word FUN_ov16_020f33fc
	arm_func_end FUN_ov32_0211a394

	arm_func_start FUN_ov32_0211a3a4
FUN_ov32_0211a3a4: ; 0x0211A3A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bl G2_GetBG3CharPtr
	mov r8, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211A4B0 ; =0x020A6C40
	mov r1, r4
	mov r7, #0x800
	mov r2, r7
	bl GX_LoadBG3Scr
	bl G2_GetBG1CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211A4B4 ; =0x020A7440
	mov r1, r4
	mov r2, r7
	bl GX_LoadBG1Scr
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211A4B8 ; =0x020A7C40
	mov r1, r4
	mov r2, r7
	bl GX_LoadBG2Scr
	ldr r5, [r5, #0x1c]
	cmp r5, #0
	beq _0211A4A8
	mov r6, #1
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r6
	add r0, r5, r0
	add r2, r4, #1
	bl FUN_ov16_020f1868
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r8
	add r0, r5, r0
	bl GX_LoadBG2Char
	ldr r0, [r5, #0xc]
	mov r1, r4
	add r0, r5, r0
	mov r2, r7
	bl GX_LoadBG2Scr
_0211A4A8:
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A4B0: .word unk_020A6C40
_0211A4B4: .word unk_020A7440
_0211A4B8: .word unk_020A7C40
	arm_func_end FUN_ov32_0211a3a4

	arm_func_start FUN_ov32_0211a4bc
FUN_ov32_0211a4bc: ; 0x0211A4BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r5, #0
	str r5, [r4, #8]
	strb r5, [r4, #0x14]
	bl FUN_0204204c
	cmp r0, #0x5f
	bne _0211A51C
	cmp r5, #0
	beq _0211A4F8
	ldr r1, _0211A588 ; =0x0209A460
	mov r0, r5
	mov r2, #0x11
	bl STD_CopyLString
_0211A4F8:
	ldr r0, _0211A588 ; =0x0209A460
	bl STD_GetStringLength
	cmp r0, #0
	mov r0, r4
	bne _0211A514
	bl FUN_ov32_0211a044
	ldmfd sp!, {r3, r4, r5, pc}
_0211A514:
	bl FUN_ov32_0211a084
	ldmfd sp!, {r3, r4, r5, pc}
_0211A51C:
	mov r1, #0x1e
	ldr r0, _0211A58C ; =0x0209A454
	strb r5, [r4, #0x15]
	str r1, [r4, #0x18]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	ldrb r0, [r0, #0x82]
	cmp r0, #5
	beq _0211A550
	cmp r0, #6
	moveq r0, #2
	streq r0, [r4, #0x10]
	b _0211A558
_0211A550:
	mov r0, #1
	str r0, [r4, #0x10]
_0211A558:
	ldr r0, _0211A590 ; =0x0209A0DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211A57C
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _0211A57C
	ldr r0, _0211A594 ; =0x0209BA20
	bl FUN_ov16_020ef160 ; may be ov17
_0211A57C:
	mov r0, r4
	bl FUN_ov32_0211a280
	ldmfd sp!, {r3, r4, r5, pc}
_0211A588: .word unk_0209A460
_0211A58C: .word unk_0209A454
_0211A590: .word unk_0209A0DC
_0211A594: .word unk_0209BA20
	arm_func_end FUN_ov32_0211a4bc

	arm_func_start FUN_ov32_0211a598
FUN_ov32_0211a598: ; 0x0211A598
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _0211A5C0
	cmp r1, #3
	beq _0211A5DC
	cmp r1, #4
	beq _0211A5E4
	ldmfd sp!, {r4, pc}
_0211A5C0:
	add r0, r4, #0x1c
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_0211A5DC:
	bl FUN_ov32_0211a194
	ldmfd sp!, {r4, pc}
_0211A5E4:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x1c
	bl FUN_ov16_020f33fc
	mov r0, r4
	bl FUN_ov32_0211a280
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov32_0211a598

	arm_func_start FUN_ov32_0211a60c
FUN_ov32_0211a60c: ; 0x0211A60C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	ldmnefd sp!, {r4, pc}
	bl FUN_ov32_0211a3a4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov32_0211a60c

	arm_func_start FUN_ov32_0211a640
FUN_ov32_0211a640: ; 0x0211A640
	ldr r12, _0211A648 ; =FUN_ov32_0211a394
	bx r12
_0211A648: .word FUN_ov32_0211a394
	arm_func_end FUN_ov32_0211a640

	arm_func_start FUN_ov32_0211a64c
FUN_ov32_0211a64c: ; 0x0211A64C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov32_0211a64c

	arm_func_start FUN_ov32_0211a660
FUN_ov32_0211a660: ; 0x0211A660
	bx lr
	arm_func_end FUN_ov32_0211a660

	arm_func_start FUN_ov32_0211a664
FUN_ov32_0211a664: ; 0x0211A664
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211A6A8 ; =0x0211A6C0
	str r0, [r4, #8]
	ldr r0, _0211A6AC ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0211A6B0 ; =0x0000EA3C
	mov r1, #0x800
	stmia r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A6A8: .word ov32_0211A6C0
_0211A6AC: .word 0x00009CCD
_0211A6B0: .word 0x0000EA3C
	arm_func_end FUN_ov32_0211a664

	.section .sinit, 4
ov32_0211A6B4:
	.word FUN_ov32_0211a664

	.data
	.global ov32_0211A6C0
ov32_0211A6C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov32_0211A6D8
ov32_0211A6D8:
	.byte 0x04, 0xA7, 0x11, 0x02, 0xF4, 0xA6, 0x11, 0x02
	.byte 0xE4, 0xA6, 0x11, 0x02, 0x61, 0x74, 0x64, 0x6E, 0x5F, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00, 0x61, 0x74, 0x64, 0x6E, 0x5F, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00, 0x6E, 0x65, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x34, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov32_0211A71C
ov32_0211A71C:
	.byte 0x60, 0xA6, 0x11, 0x02
	.byte 0x4C, 0xA6, 0x11, 0x02, 0x0C, 0xA2, 0x11, 0x02, 0x30, 0xA2, 0x11, 0x02, 0xBC, 0xA4, 0x11, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x98, 0xA5, 0x11, 0x02, 0x0C, 0xA6, 0x11, 0x02, 0x40, 0xA6, 0x11, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02
	.byte 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02
	.byte 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov32_0211A788
ov32_0211A788:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov32_0211A790
ov32_0211A790:
	.byte 0x52, 0x50, 0x47, 0x5F, 0x53, 0x43, 0x52, 0x49, 0x50, 0x54, 0x5F, 0x4E, 0x4F, 0x00, 0x00, 0x00
	.global ov32_0211A7A0
ov32_0211A7A0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74
	.byte 0x69, 0x74, 0x6C, 0x65, 0x2F, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

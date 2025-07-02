
	.include "/macros/function.inc"
	.include "/include/overlay107.inc"

	.text
	arm_func_start FUN_ov107_02124d00
FUN_ov107_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x10
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _02124D88 ; =0x0209A454
	ldrsb r0, [r0, #0x40]
	cmp r0, #0
	movne r4, #1
	strb r4, [r5, #0xc]
	tst r4, #0xff
	add r4, sp, #0
	beq _02124D5C
	ldr r1, _02124D8C ; =0x021251AC
	ldr r2, _02124D90 ; =0x0209A494
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	add r1, r5, #0x10
	b _02124D74
_02124D5C:
	ldr r1, _02124D94 ; =0x021251B8
	ldr r2, _02124D98 ; =0x0209A4B4
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	add r1, r5, #0x1c
_02124D74:
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r5, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_02124D88: .word unk_0209A454
_02124D8C: .word ov107_021251AC
_02124D90: .word unk_0209A494
_02124D94: .word ov107_021251B8
_02124D98: .word unk_0209A4B4
	arm_func_end FUN_ov107_02124d00

	arm_func_start FUN_ov107_02124d9c
FUN_ov107_02124d9c: ; 0x02124D9C
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	ldrne r2, [r1, #0x10]
	cmpne r2, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02124DC8 ; =0x0209A4B4
	add r1, r1, #0x1c
	bl  FUN_ov16_020f32b4
	ldmfd sp!, {r3, pc}
_02124DC8: .word unk_0209A4B4
	arm_func_end FUN_ov107_02124d9c

	arm_func_start FUN_ov107_02124dcc
FUN_ov107_02124dcc: ; 0x02124DCC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x10
	mov r4, #0xc
_02124DDC:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #2
	blt _02124DDC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov107_02124dcc

	arm_func_start FUN_ov107_02124df4
FUN_ov107_02124df4: ; 0x02124DF4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0x1c]
	cmp r5, #0
	beq _02124E30
	ldr r0, [r5, #0xc]
	mov r4, #1
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f1138
_02124E30:
	ldr r4, _02124E9C ; =0x020A9440
	mov r6, #0
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _02124EA0 ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _02124EA4 ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02124E9C: .word unk_020A9440
_02124EA0: .word unk_020A8C40
_02124EA4: .word unk_020A8440
	arm_func_end FUN_ov107_02124df4

	arm_func_start FUN_ov107_02124ea8
FUN_ov107_02124ea8: ; 0x02124EA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl G2S_GetBG0CharPtr
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2S_GetBG0CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _02124F0C
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r5
	add r0, r4, r0
	bl FUN_020057ec
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r1, r5
	add r0, r4, r0
	b _02124F18
_02124F0C:
	ldr r0, _02124FAC ; =0x020A9440
	mov r1, r5
	mov r2, #0x800
_02124F18:
	bl FUN_0200546c
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r4, #0x800
	ldr r0, _02124FB0 ; =0x020A8C40
	mov r1, r6
	mov r2, r4
	bl FUN_0200554c
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r2, r4
	ldr r0, _02124FB4 ; =0x020A8440
	mov r1, r6
	bl FUN_0200562c
	mov r1, r6
	ldr r0, _02124FB8 ; =0x0209A144
	ldr r3, [r0]
	ldr r0, [r3, #0x14]
	ldr r2, [r3, #0x18]
	add r0, r3, r0
	bl FUN_020059ac
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
_02124FAC: .word unk_020A9440
_02124FB0: .word unk_020A8C40
_02124FB4: .word unk_020A8440
_02124FB8: .word unk_0209A144
	arm_func_end FUN_ov107_02124ea8

	arm_func_start FUN_ov107_02124fbc
FUN_ov107_02124fbc: ; 0x02124FBC
	ldr r12, _02124FCC ; =FUN_ov107_02124d00
	mov r1, #0
	str r1, [r0, #8]
	bx r12
_02124FCC: .word FUN_ov107_02124d00
	arm_func_end FUN_ov107_02124fbc

	arm_func_start FUN_ov107_02124fd0
FUN_ov107_02124fd0: ; 0x02124FD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #2
	mov r1, r4
	add r0, r5, #0x10
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov107_02124d9c
	mov r0, r5
	bl FUN_ov107_02124df4
	str r4, [r5, #8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov107_02124fd0

	arm_func_start FUN_ov107_02125014
FUN_ov107_02125014: ; 0x02125014
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02125034
	cmp r1, #3
	beq _02125054
	ldmfd sp!, {r3, r4, r5, pc}
_02125034:
	bl FUN_ov107_02124ea8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02125054:
	ldr r5, _0212507C ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_0200562c
	ldmfd sp!, {r3, r4, r5, pc}
_0212507C: .word unk_020A8440
	arm_func_end FUN_ov107_02125014

	arm_func_start FUN_ov107_02125080
FUN_ov107_02125080: ; 0x02125080
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	mov r1, #2
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov107_02124dcc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov107_02125080

	arm_func_start FUN_ov107_021250a0
FUN_ov107_021250a0: ; 0x021250A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov107_021250a0

	arm_func_start FUN_ov107_021250b4
FUN_ov107_021250b4: ; 0x021250B4
	bx lr
	arm_func_end FUN_ov107_021250b4

	arm_func_start FUN_ov107_021250b8
FUN_ov107_021250b8: ; 0x021250B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125100 ; =0x02125120
	str r0, [r4, #0x14]
	ldr r0, _02125104 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02125108 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125100: .word ov107_02125120
_02125104: .word 0x00009CCD
_02125108: .word 0x0000EA3C
	arm_func_end FUN_ov107_021250b8

	.section .sinit, 4
ov107_0212510C:
	.word FUN_ov107_021250b8

	.data
	.global ov107_02125120
ov107_02125120:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB4, 0x50, 0x12, 0x02, 0xA0, 0x50, 0x12, 0x02, 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02
	.byte 0xBC, 0x4F, 0x12, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xD0, 0x4F, 0x12, 0x02, 0x14, 0x50, 0x12, 0x02
	.byte 0x80, 0x50, 0x12, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02
	.byte 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02
	.byte 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02
	.byte 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov107_021251AC
ov107_021251AC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x25, 0x73, 0x00
	.global ov107_021251B8
ov107_021251B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

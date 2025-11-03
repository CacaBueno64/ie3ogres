
	.include "/macros/function.inc"
	.include "/include/overlay101.inc"

	.text
	arm_func_start FUN_ov101_02124d00
FUN_ov101_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	add r0, r5, #0x10
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r4, sp, #0
	ldr r1, _02124D48 ; =0x0212512C
	mov r0, r4
	bl sprintf
	mov r0, r4
	add r1, r5, #0x10
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r5, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_02124D48: .word ov101_0212512C
	arm_func_end FUN_ov101_02124d00

	arm_func_start FUN_ov101_02124d4c
FUN_ov101_02124d4c: ; 0x02124D4C
	ldr r12, _02124D58 ; = FUN_ov16_020f33fc
	add r0, r0, #0x10
	bx r12
_02124D58: .word FUN_ov16_020f33fc
	arm_func_end FUN_ov101_02124d4c

	arm_func_start FUN_ov101_02124d5c
FUN_ov101_02124d5c: ; 0x02124D5C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0x10]
	cmp r5, #0
	beq _02124D98
	ldr r0, [r5, #0xc]
	mov r4, #1
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f1138
_02124D98:
	ldr r4, _02124E04 ; =0x020A9440
	mov r6, #0
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _02124E08 ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _02124E0C ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02124E04: .word unk_020A9440
_02124E08: .word unk_020A8C40
_02124E0C: .word unk_020A8440
	arm_func_end FUN_ov101_02124d5c

	arm_func_start FUN_ov101_02124e10
FUN_ov101_02124e10: ; 0x02124E10
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
	ldr r4, [r6, #0x10]
	cmp r4, #0
	beq _02124E74
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r5
	add r0, r4, r0
	bl GXS_LoadBG0Char
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r1, r5
	add r0, r4, r0
	b _02124E80
_02124E74:
	ldr r0, _02124F14 ; =0x020A9440
	mov r1, r5
	mov r2, #0x800
_02124E80:
	bl GXS_LoadBG0Scr
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
	ldr r0, _02124F18 ; =0x020A8C40
	mov r1, r6
	mov r2, r4
	bl GXS_LoadBG1Scr
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r2, r4
	ldr r0, _02124F1C ; =0x020A8440
	mov r1, r6
	bl GXS_LoadBG2Scr
	mov r1, r6
	ldr r0, _02124F20 ; =0x0209A144
	ldr r3, [r0]
	ldr r0, [r3, #0x14]
	ldr r2, [r3, #0x18]
	add r0, r3, r0
	bl GXS_LoadBG2Char
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
_02124F14: .word unk_020A9440
_02124F18: .word unk_020A8C40
_02124F1C: .word unk_020A8440
_02124F20: .word unk_0209A144
	arm_func_end FUN_ov101_02124e10

	arm_func_start FUN_ov101_02124f24
FUN_ov101_02124f24: ; 0x02124F24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #0xc
	bl MIi_CpuClearFast
	mov r0, r5
	str r4, [r5, #8]
	bl FUN_ov101_02124d00
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov101_02124f24

	arm_func_start FUN_ov101_02124f50
FUN_ov101_02124f50: ; 0x02124F50
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x10
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov101_02124d5c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov101_02124f50

	arm_func_start FUN_ov101_02124f8c
FUN_ov101_02124f8c: ; 0x02124F8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02124FAC
	cmp r1, #3
	beq _02124FCC
	ldmfd sp!, {r3, r4, r5, pc}
_02124FAC:
	bl FUN_ov101_02124e10
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02124FCC:
	ldr r5, _02124FF4 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl GXS_LoadBG2Scr
	ldmfd sp!, {r3, r4, r5, pc}
_02124FF4: .word unk_020A8440
	arm_func_end FUN_ov101_02124f8c

	.data
	.global ov101_021250A0
ov101_021250A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov101_021250C0
ov101_021250C0:
	.word FUN_ov101_0212502c
	.word FUN_ov101_02125018
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word FUN_ov101_02124f24
	.word FUN_0202b208
	.word FUN_ov101_02124f50
	.word FUN_ov101_02124f8c
	.word FUN_ov101_02124ff8
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b294
	.word FUN_0202b284
	.word FUN_0202b278
	.word FUN_0202b26c
	.word FUN_0202b25c
	.word FUN_0202b24c
	.word FUN_0202b23c
	.word FUN_0202b230
	.word FUN_0202b224
	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov101_0212512C
ov101_0212512C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x70, 0x77, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

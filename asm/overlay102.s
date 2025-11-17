
	.include "/macros/function.inc"
	.include "/include/overlay102.inc"

	.text
	arm_func_start FUN_ov102_02124d00
FUN_ov102_02124d00: ; 0x02124D00
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
_02124D48: .word ov102_0212512C
	arm_func_end FUN_ov102_02124d00

	arm_func_start FUN_ov102_02124d4c
FUN_ov102_02124d4c: ; 0x02124D4C
	bx lr
	arm_func_end FUN_ov102_02124d4c

	arm_func_start FUN_ov102_02124d50
FUN_ov102_02124d50: ; 0x02124D50
	ldr r12, _02124D5C ; = FUN_ov16_020f33fc
	add r0, r0, #0x10
	bx r12
_02124D5C: .word FUN_ov16_020f33fc
	arm_func_end FUN_ov102_02124d50

	arm_func_start FUN_ov102_02124d60
FUN_ov102_02124d60: ; 0x02124D60
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0x10]
	cmp r5, #0
	beq _02124D9C
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
_02124D9C:
	ldr r4, _02124E08 ; =0x020A9440
	mov r6, #0
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _02124E0C ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _02124E10 ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02124E08: .word unk_020A9440
_02124E0C: .word unk_020A8C40
_02124E10: .word unk_020A8440
	arm_func_end FUN_ov102_02124d60

	arm_func_start FUN_ov102_02124e14
FUN_ov102_02124e14: ; 0x02124E14
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
	beq _02124E78
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r5
	add r0, r4, r0
	bl GXS_LoadBG0Char
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r1, r5
	add r0, r4, r0
	b _02124E84
_02124E78:
	ldr r0, _02124F18 ; =0x020A9440
	mov r1, r5
	mov r2, #0x800
_02124E84:
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
	ldr r0, _02124F1C ; =0x020A8C40
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
	ldr r0, _02124F20 ; =0x020A8440
	mov r1, r6
	bl GXS_LoadBG2Scr
	mov r1, r6
	ldr r0, _02124F24 ; =0x0209A144
	ldr r3, [r0]
	ldr r0, [r3, #0x14]
	ldr r2, [r3, #0x18]
	add r0, r3, r0
	bl GXS_LoadBG2Char
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
_02124F18: .word unk_020A9440
_02124F1C: .word unk_020A8C40
_02124F20: .word unk_020A8440
_02124F24: .word unk_0209A144
	arm_func_end FUN_ov102_02124e14

	arm_func_start FUN_ov102_02124f28
FUN_ov102_02124f28: ; 0x02124F28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #0xc
	bl MIi_CpuClearFast
	mov r0, r5
	str r4, [r5, #8]
	strb r4, [r5, #0xc]
	bl FUN_ov102_02124d00
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov102_02124f28

	arm_func_start FUN_ov102_02124f58
FUN_ov102_02124f58: ; 0x02124F58
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
	bl FUN_ov102_02124d4c
	mov r0, r4
	bl FUN_ov102_02124d60
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov102_02124f58

	arm_func_start FUN_ov102_02124f9c
FUN_ov102_02124f9c: ; 0x02124F9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02124FBC
	cmp r1, #3
	beq _02124FDC
	ldmfd sp!, {r3, r4, r5, pc}
_02124FBC:
	bl FUN_ov102_02124e14
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02124FDC:
	ldr r5, _02125004 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl GXS_LoadBG2Scr
	ldmfd sp!, {r3, r4, r5, pc}
_02125004: .word unk_020A8440
	arm_func_end FUN_ov102_02124f9c

	arm_func_start FUN_ov102_02125008
FUN_ov102_02125008: ; 0x02125008
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov102_02124d50
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov102_02125008

	arm_func_start FUN_ov102_02125028
FUN_ov102_02125028: ; 0x02125028
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov102_02125028

	arm_func_start FUN_ov102_0212503c
FUN_ov102_0212503c: ; 0x0212503C
	bx lr
	arm_func_end FUN_ov102_0212503c

	.section .init, 4
	arm_func_start FUN_ov102_02125040
FUN_ov102_02125040: ; 0x02125040
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125088 ; =0x021250A0
	str r0, [r4, #0x14]
	ldr r0, _0212508C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02125090 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125088: .word ov102_021250A0
_0212508C: .word 0x00009CCD
_02125090: .word 0x0000EA3C
	arm_func_end FUN_ov102_02125040

	.section .sinit, 4
ov102_02125094:
	.word FUN_ov102_02125040

	.data
	.global ov102_021250A0
ov102_021250A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov102_021250C0
ov102_021250C0:
	.word FUN_ov102_0212503c
	.word FUN_ov102_02125028
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word FUN_ov102_02124f28
	.word FUN_0202b208
	.word FUN_ov102_02124f58
	.word FUN_ov102_02124f9c
	.word FUN_ov102_02125008
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
	.global ov102_0212512C
ov102_0212512C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x6B, 0x6C, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/ov16_020f3f00.inc"

	.text
	arm_func_start FUN_ov16_020f3f00
FUN_ov16_020f3f00: ; 0x020F3F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _020F3F3C ; =gGraphicsModes
	mov r5, #0x10
	ldr r0, _020F3F40 ; =0x0209A22C
	mov r1, r6
	mov r2, r5
	str r6, [r4]
	bl MI_CpuFill8
	ldr r0, _020F3F44 ; =0x0209A240
	mov r1, r6
	mov r2, r5
	str r6, [r4, #0x14]
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020F3F3C: .word gGraphicsModes
_020F3F40: .word unk_0209A22C
_020F3F44: .word unk_0209A240
	arm_func_end FUN_ov16_020f3f00

	arm_func_start FUN_ov16_020f3f48
FUN_ov16_020f3f48: ; 0x020F3F48
	ldr r0, _020F3F50 ; =0x0209A22C
	bx lr
_020F3F50: .word unk_0209A22C
	arm_func_end FUN_ov16_020f3f48

	arm_func_start FUN_ov16_020f3f54
FUN_ov16_020f3f54: ; 0x020F3F54
	ldr r0, _020F3F5C ; =0x0209A240
	bx lr
_020F3F5C: .word unk_0209A240
	arm_func_end FUN_ov16_020f3f54

	arm_func_start FUN_ov16_020f3f60
FUN_ov16_020f3f60: ; 0x020F3F60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r8, _020F47E0 ; =gGraphicsModes
	mov r9, r0
	ldr r11, _020F47E4 ; =gBgMenuManager
	ldr r4, _020F47E8 ; =0x0000FFBF
	ldr r5, _020F47EC ; =g3DVramMan
	str r9, [r8]
	cmp r9, #0xf
	mov r10, #0x10
	mov r7, #0x4000000
	mov r6, #0
	addls pc, pc, r9, lsl #2
	b _020F47CC
_020F3F94: ; jump table
	b _020F47CC ; case 0
	b _020F3FD4 ; case 1
	b _020F436C ; case 2
	b _020F40D0 ; case 3
	b _020F40D0 ; case 4
	b _020F3FD4 ; case 5
	b _020F40D0 ; case 6
	b _020F44B8 ; case 7
	b _020F3FD4 ; case 8
	b _020F45C4 ; case 9
	b _020F47CC ; case 10
	b _020F4728 ; case 11
	b _020F4558 ; case 12
	b _020F47CC ; case 13
	b _020F436C ; case 14
	b _020F41C8 ; case 15
_020F3FD4:
	mov r0, #3
	bl GX_SetBankForBG
	mov r0, #0x20
	bl GX_SetBankForBGExtPltt
	mov r0, r10
	bl GX_SetBankForOBJ
	mov r0, #8
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r1, r6
	mov r0, #1
	mov r2, r1
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x20000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa000
	str r1, [r8, #4]
	str r0, [r8, #0x10]
	ldrh r0, [r7, #8]
	and r0, r0, #0x43
	orr r0, r0, #0x1480
	orr r0, r0, #0x20
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	and r0, r0, r4
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x1500
	orr r0, r0, #0xc
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	and r0, r0, r4
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x1600
	orr r0, r0, #0x18
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xc]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #0xc]
	b _020F42C0
_020F40D0:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xe
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r2, r0
	mov r1, r6
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x60000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa800
	str r1, [r8, #4]
	cmp r9, #3
	str r0, [r8, #0x10]
	ldreqh r0, [r7, #8]
	biceq r0, r0, #3
	orreq r0, r0, #3
	streqh r0, [r7, #8]
	ldrneh r0, [r7, #8]
	bicne r0, r0, #3
	orrne r0, r0, #2
	strneh r0, [r7, #8]
	ldr r0, _020F47F0 ; =0x0400000A
	cmp r9, #3
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, #0x1500
	orr r1, r1, #0xc
	strh r1, [r0]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x1600
	orr r1, r1, #0x18
	strh r1, [r0, #2]
	ldreqh r1, [r0, #2]
	biceq r1, r1, #3
	orreq r1, r1, #2
	streqh r1, [r0, #2]
	ldrneh r1, [r0, #2]
	bicne r1, r1, #3
	orrne r1, r1, #3
	strneh r1, [r0, #2]
	b _020F4460
_020F41C8:
	mov r0, #8
	bl GX_SetBankForBG
	mov r0, #0x20
	bl GX_SetBankForBGExtPltt
	mov r0, r10
	bl GX_SetBankForOBJ
	mov r0, #3
	bl GX_SetBankForTex
	mov r0, #0x40
	bl GX_SetBankForTexPltt
	mov r1, r6
	mov r0, #1
	mov r2, r1
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x20000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa000
	str r1, [r8, #4]
	str r0, [r8, #0x10]
	ldrh r0, [r7, #8]
	and r0, r0, #0x43
	orr r0, r0, #0x1480
	orr r0, r0, #0x20
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r7, #8]
	ldrh r0, [r7, #8]
	and r0, r0, r4
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x1500
	orr r0, r0, #0xc
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	and r0, r0, r4
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x1600
	orr r0, r0, #0x18
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xc]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #0xc]
_020F42C0:
	ldrh r0, [r7, #0xc]
	cmp r9, #5
	and r0, r0, r4
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0xe]
	and r0, r0, #0x43
	orr r0, r0, #0x1700
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xe]
	bic r0, r0, #3
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xe]
	and r0, r0, r4
	strh r0, [r7, #0xe]
	ldr r0, [r5]
	bl FUN_02051778
	mov r0, r6
	mov r1, #0x100
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r1, r10
	mov r0, #1
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r0, #2
	mov r1, r10
_020F4320:
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r1, r10
	mov r0, #3
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r0, r11
	mov r1, r6
	bl _ZN14CBgMenuManager4initE12EngineSelect
	bl G2_GetBG3ScrPtr
	mov r5, r0
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG2ScrPtr
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r0, [sp]
_020F4360:
	mov r0, r11
_020F4364:
	bl _ZN14CBgMenuManager10setScreensE12EngineSelectPvS1_S1_
	b _020F47CC
_020F436C:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xa
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r2, r0
	mov r1, r6
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x40000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0xc000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	mov r0, #0x8000
	str r0, [r8, #0xc]
	mov r0, #0xa800
	str r1, [r8, #4]
	cmp r9, #3
	str r0, [r8, #0x10]
	ldreqh r0, [r7, #8]
	biceq r0, r0, #3
	orreq r0, r0, #3
	streqh r0, [r7, #8]
	ldrneh r0, [r7, #8]
	bicne r0, r0, #3
	orrne r0, r0, #2
	strneh r0, [r7, #8]
	ldr r0, _020F47F0 ; =0x0400000A
	cmp r9, #3
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, #0x1500
	orr r1, r1, #0xc
	strh r1, [r0]
	ldrh r1, [r0]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x1600
	orr r1, r1, #0x18
	strh r1, [r0, #2]
	ldreqh r1, [r0, #2]
	biceq r1, r1, #3
	orreq r1, r1, #2
	streqh r1, [r0, #2]
	ldrneh r1, [r0, #2]
	bicne r1, r1, #3
	orrne r1, r1, #3
	strneh r1, [r0, #2]
_020F4460:
	ldr r0, _020F47F4 ; =0x0400000C
	ldrh r1, [r0]
	and r1, r1, r4
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x1700
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	bic r1, r1, #3
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	and r1, r1, r4
	strh r1, [r0, #2]
	ldr r0, [r5]
	bl FUN_02051778
	mov r1, r10
	mov r0, #1
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r1, r10
	mov r0, #2
	b _020F4320
_020F44B8:
	mov r0, #0xf
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r1, r6
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0xe000
	str r0, [r7]
	str r6, [r8, #4]
	str r6, [r8, #8]
	str r6, [r8, #0xc]
	str r6, [r8, #0x10]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #8]
_020F4514:
	ldr r0, [r5]
	bl FUN_02051778
	ldr r7, _020F47E4 ; =gBgMenuManager
	mov r1, r6
	mov r0, r7
	bl _ZN14CBgMenuManager4initE12EngineSelect
	bl G2_GetBG3ScrPtr
	mov r5, r0
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG2ScrPtr
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	mov r0, r7
	b _020F4364
_020F4558:
	mov r0, #0xb
	bl GX_SetBankForTex
	mov r0, #0x60
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r1, r6
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0xe000
	str r0, [r7]
	str r6, [r8, #4]
	str r6, [r8, #8]
	str r6, [r8, #0xc]
	str r6, [r8, #0x10]
	ldrh r0, [r7, #8]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xe]
	and r0, r0, r4
	strh r0, [r7, #0xe]
	b _020F4514
_020F45C4:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xe
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #0x40
	bl GX_SetBankForBGExtPltt
	mov r0, #1
	mov r1, r6
	mov r2, r0
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x60000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0x7000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #8]
	str r0, [r8, #0xc]
	mov r0, #0x10000
	str r1, [r8, #4]
	str r0, [r8, #0x10]
	ldrh r3, [r7, #8]
	sub r1, r0, #0x41
	mov r2, r1
	bic r3, r3, #3
	orr r3, r3, #1
	strh r3, [r7, #8]
	ldrh r3, [r7, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x2e00
	strh r3, [r7, #0xa]
	ldrh r3, [r7, #0xa]
	bic r3, r3, #3
	strh r3, [r7, #0xa]
	ldrh r3, [r7, #0xa]
	and r1, r3, r1
	strh r1, [r7, #0xa]
	ldrh r1, [r7, #0xc]
	and r1, r1, #0x43
	orr r1, r1, #0xf00
	orr r1, r1, #8
	strh r1, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	and r1, r1, r2
	strh r1, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	and r1, r1, #0x43
	orr r1, r1, #0x1f80
	orr r1, r1, #0x10
	strh r1, [r7, #0xe]
	ldrh r1, [r7, #0xe]
	sub r0, r0, #0x41
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r7, #0xe]
	ldrh r1, [r7, #0xe]
	and r0, r1, r0
	strh r0, [r7, #0xe]
	ldr r0, [r5]
	bl FUN_02051778
	mov r0, #1
	mov r1, r10
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r1, r10
	mov r0, #2
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r0, #3
	mov r1, #0x100
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	mov r0, r11
	mov r1, r6
	bl _ZN14CBgMenuManager4initE12EngineSelect
	bl G2_GetBG1ScrPtr
	mov r4, r0
	bl G2_GetBG2ScrPtr
	mov r2, r4
	str r6, [sp]
	mov r1, r6
	mov r3, r0
	b _020F4360
_020F4728:
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #0xe
	bl GX_SetBankForTex
	mov r0, #0x20
	bl GX_SetBankForTexPltt
	mov r0, #1
	mov r2, r0
	mov r1, r6
	bl GX_SetGraphicsMode
	ldr r0, [r7]
	mov r1, #0x60000
	bic r0, r0, #0x1f00
	orr r0, r0, #0x500
	str r0, [r7]
	ldr r2, [r7]
	mov r0, #0x1c000
	bic r2, r2, #0xe000
	str r2, [r7]
	str r0, [r8, #0xc]
	stmib r8, {r1, r6}
	str r6, [r8, #0x10]
	ldrh r2, [r7, #8]
	mov r0, #2
	mov r1, r10
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r7, #8]
	ldrh r2, [r7, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #4
	strh r2, [r7, #0xc]
	ldrh r2, [r7, #0xc]
	bic r2, r2, #3
	strh r2, [r7, #0xc]
	ldrh r2, [r7, #0xc]
	and r2, r2, r4
	strh r2, [r7, #0xc]
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	ldr r0, [r5]
	bl FUN_02051778
_020F47CC:
	ldr r1, _020F47F8 ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #2
	strh r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F47E0: .word gGraphicsModes
_020F47E4: .word gBgMenuManager
_020F47E8: .word 0x0000FFBF
_020F47EC: .word g3DVramMan
_020F47F0: .word 0x0400000A
_020F47F4: .word 0x0400000C
_020F47F8: .word 0x04000304
	arm_func_end FUN_ov16_020f3f60

	arm_func_start FUN_ov16_020f47fc
FUN_ov16_020f47fc: ; 0x020F47FC
	stmfd sp!, {r3, lr}
	ldr r0, _020F488C ; =gGraphicsModes
	ldr r0, [r0]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020F4870
_020F4814: ; jump table
	b _020F4870 ; case 0
	b _020F4848 ; case 1
	b _020F4848 ; case 2
	b _020F4864 ; case 3
	b _020F4864 ; case 4
	b _020F4848 ; case 5
	b _020F4864 ; case 6
	b _020F4864 ; case 7
	b _020F4848 ; case 8
	b _020F4854 ; case 9
	b _020F4870 ; case 10
	b _020F4864 ; case 11
	b _020F4864 ; case 12
_020F4848:
	bl GX_ResetBankForBG
	bl GX_ResetBankForBGExtPltt
	b _020F4868
_020F4854:
	bl GX_ResetBankForBG
	bl GX_ResetBankForTex
	bl GX_ResetBankForBGExtPltt
	b _020F486C
_020F4864:
	bl GX_ResetBankForBG
_020F4868:
	bl GX_ResetBankForTex
_020F486C:
	bl GX_ResetBankForTexPltt
_020F4870:
	ldr r3, _020F488C ; =gGraphicsModes
	mov r1, #0
	ldr r0, _020F4890 ; =0x0209A22C
	mov r2, #0x10
	str r1, [r3]
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_020F488C: .word gGraphicsModes
_020F4890: .word unk_0209A22C
	arm_func_end FUN_ov16_020f47fc

	arm_func_start FUN_ov16_020f4894
FUN_ov16_020f4894: ; 0x020F4894
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r9, _020F5180 ; =gSubGraphicsMode
	ldr r6, _020F5184 ; =gBgMenuManager
	ldr r8, _020F5188 ; =0x04001000
	ldr r4, _020F518C ; =0x0000FFBF
	cmp r0, #0x10
	str r0, [r9]
	mov r10, #1
	mov r7, #0x4000
	mov r5, #0
	addls pc, pc, r0, lsl #2
	b _020F516C
_020F48C4: ; jump table
	b _020F516C ; case 0
	b _020F4A3C ; case 1
	b _020F516C ; case 2
	b _020F4B74 ; case 3
	b _020F4C74 ; case 4
	b _020F4908 ; case 5
	b _020F4B74 ; case 6
	b _020F516C ; case 7
	b _020F4908 ; case 8
	b _020F516C ; case 9
	b _020F516C ; case 10
	b _020F4DFC ; case 11
	b _020F4ED0 ; case 12
	b _020F4CEC ; case 13
	b _020F516C ; case 14
	b _020F516C ; case 15
	b _020F503C ; case 16
_020F4908:
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, #3
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r1, #0x8000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r8]
	ldr r2, [r8]
	mov r0, #0xe000
	bic r2, r2, #0xe000
	str r2, [r8]
	str r0, [r9, #0xc]
	stmib r9, {r1, r7}
	str r7, [r9, #0x10]
	ldrh r2, [r8, #8]
	ldr r1, _020F5190 ; =0x00001C10
	mov r0, r6
	and r2, r2, #0x43
	orr r2, r2, #0xc10
	orr r2, r2, #0x1000
	strh r2, [r8, #8]
	ldrh r5, [r8, #8]
	add r2, r1, #0x10c
	add r3, r1, #0x208
	bic r1, r5, #3
	strh r1, [r8, #8]
	ldrh r5, [r8, #8]
	mov r1, r10
	and r5, r5, r4
	strh r5, [r8, #8]
	ldrh r5, [r8, #0xa]
	and r5, r5, #0x43
	orr r2, r5, r2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	and r2, r2, r4
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x1f80
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xe]
	and r2, r2, #0x43
	orr r2, r2, r3
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	and r2, r2, r4
	strh r2, [r8, #0xe]
	bl _ZN14CBgMenuManager4initE12EngineSelect
	bl G2S_GetBG0ScrPtr
	mov r4, r0
	bl G2S_GetBG1ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r4
	mov r0, r6
	mov r3, #0
	b _020F4B70
_020F4A3C:
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, #3
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r1, #0x8000
	bic r0, r0, #0x1f00
	orr r0, r0, #0xf00
	str r0, [r8]
	ldr r2, [r8]
	mov r0, #0xe000
	bic r2, r2, #0xe000
	str r2, [r8]
	str r1, [r9, #8]
	str r0, [r9, #0xc]
	str r7, [r9, #4]
	str r7, [r9, #0x10]
	ldrh r2, [r8, #8]
	ldr r1, _020F5190 ; =0x00001C10
	mov r0, r6
	and r2, r2, #0x43
	orr r3, r2, #0xc10
	orr r3, r3, #0x1000
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	add r2, r1, #0x108
	mov r1, r10
	bic r3, r3, #3
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	and r2, r2, r4
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x1f80
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xe]
	and r2, r2, #0x43
	orr r2, r2, #0x214
	orr r2, r2, #0x5c00
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xe]
	ldrh r2, [r8, #0xe]
	and r2, r2, r4
	strh r2, [r8, #0xe]
	bl _ZN14CBgMenuManager4initE12EngineSelect
	bl G2S_GetBG0ScrPtr
	mov r4, r0
	bl G2S_GetBG1ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r4
	mov r0, r6
	mov r3, r5
_020F4B70:
	b _020F5168
_020F4B74:
	mov r0, r5
	bl GX_SetBankForSubOBJ
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x700
	str r0, [r8]
	ldr r0, [r8]
	bic r0, r0, #0xe000
	str r0, [r8]
	mov r0, #0x2800
	stmib r9, {r0, r7}
	str r7, [r9, #0xc]
	str r5, [r9, #0x10]
	ldrh r1, [r8, #8]
	ldr r0, _020F5194 ; =0x00000604
	mov r7, #0x10
	and r1, r1, #0x43
	orr r1, r1, #0x500
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	add r2, r0, #0x104
	mov r0, r5
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x204
	orr r3, r3, #0x400
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	and r3, r3, r4
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xc]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r0, r10
	mov r1, r7
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r1, r7
	mov r0, #2
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	b _020F4DEC
_020F4C74:
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1100
	str r0, [r8]
	ldr r1, [r8]
	ldr r0, _020F5198 ; =0xFFCFFFEF
	bic r1, r1, #0xe000
	str r1, [r8]
	ldrh r1, [r8, #8]
	and r1, r1, #0x43
	orr r1, r1, #0x4e00
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	and r1, r1, r4
	strh r1, [r8, #8]
	ldr r1, [r8]
	and r0, r1, r0
	orr r0, r0, #0x10
	str r0, [r8]
	b _020F516C
_020F4CEC:
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x700
	str r0, [r8]
	ldr r0, [r8]
	bic r0, r0, #0xe000
	str r0, [r8]
	mov r0, #0x2800
	str r0, [r9, #8]
	str r7, [r9, #4]
	str r7, [r9, #0xc]
	str r5, [r9, #0x10]
	ldrh r1, [r8, #8]
	ldr r0, _020F519C ; =0x00000688
	mov r7, #0x10
	and r1, r1, #0x43
	orr r1, r1, #0x288
	orr r1, r1, #0x400
	strh r1, [r8, #8]
	ldrh r3, [r8, #8]
	add r2, r0, #0x7c
	mov r0, r5
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x500
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	and r3, r3, r4
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xc]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r0, r10
	mov r1, r7
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r1, r7
	mov r0, #2
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
_020F4DEC:
	mov r0, r6
	mov r1, r10
	bl _ZN14CBgMenuManager4initE12EngineSelect
	b _020F5140
_020F4DFC:
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r1, #0x3000
	bic r0, r0, #0x1f00
	orr r0, r0, #0x500
	str r0, [r8]
	ldr r0, [r8]
	bic r0, r0, #0xe000
	str r0, [r8]
	mov r0, #0x3800
	str r1, [r9, #4]
	str r7, [r9, #0xc]
	str r5, [r9, #0x10]
	str r0, [r9, #8]
	ldrh r0, [r8, #8]
	and r0, r0, #0x43
	orr r0, r0, #0x600
	strh r0, [r8, #8]
	ldrh r0, [r8, #8]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r8, #8]
	ldrh r0, [r8, #8]
	and r0, r0, r4
	strh r0, [r8, #8]
	ldrh r0, [r8, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x304
	orr r0, r0, #0xc00
	strh r0, [r8, #0xa]
	ldrh r0, [r8, #0xa]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r8, #0xa]
	ldrh r0, [r8, #0xa]
	and r0, r0, r4
	strh r0, [r8, #0xa]
	ldrh r0, [r8, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0x308
	orr r0, r0, #0x400
	strh r0, [r8, #0xc]
	ldrh r0, [r8, #0xc]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r8, #0xc]
	ldrh r0, [r8, #0xc]
	and r0, r0, r4
	strh r0, [r8, #0xc]
	b _020F516C
_020F4ED0:
	mov r0, #4
	bl GX_SetBankForSubBG
	mov r0, #0x80
	bl GX_SetBankForSubBGExtPltt
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r0, [r8]
	mov r11, #0x100
	bic r0, r0, #0x1f00
	orr r0, r0, #0x1700
	str r0, [r8]
	ldr r1, [r8]
	mov r0, r11
	bic r1, r1, #0xe000
	str r1, [r8]
	bl GX_SetBankForSubOBJ
	ldr r2, [r8]
	ldr r0, _020F5198 ; =0xFFCFFFEF
	mov r1, #0x8000
	and r0, r2, r0
	orr r0, r0, #0x10
	str r0, [r8]
	stmib r9, {r1, r7}
	mov r0, #0xe000
	str r0, [r9, #0xc]
	str r5, [r9, #0x10]
	ldrh r2, [r8, #8]
	ldr r1, _020F5190 ; =0x00001C10
	mov r7, #0x10
	and r2, r2, #0x43
	orr r3, r2, #0xc10
	orr r3, r3, #0x1000
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	add r2, r1, #0x10c
	mov r0, r5
	bic r3, r3, #3
	orr r3, r3, #3
	strh r3, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xa]
	and r2, r2, r4
	strh r2, [r8, #0xa]
	ldrh r2, [r8, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x1f80
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r1, r7
	mov r0, r10
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r1, r11
	mov r0, #2
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r0, r6
	mov r1, r10
	bl _ZN14CBgMenuManager4initE12EngineSelect
	bl G2S_GetBG2ScrPtr
	mov r7, r0
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG0ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r7
	mov r3, r4
	mov r0, r6
	bl _ZN14CBgMenuManager10setScreensE12EngineSelectPvS1_S1_
	mov r1, r5
	mov r0, #0x6200000
	mov r2, #0x20000
	bl MI_CpuFill8
	b _020F516C
_020F503C:
	mov r0, #0x180
	bl GX_SetBankForSubBG
	mov r0, r5
	bl GXS_SetGraphicsMode
	ldr r1, [r8]
	ldr r0, _020F51A0 ; =0x00001504
	bic r1, r1, #0x1f00
	orr r1, r1, #0x700
	str r1, [r8]
	ldr r1, [r8]
	add r2, r0, #0x104
	bic r1, r1, #0xe000
	str r1, [r8]
	mov r1, #0x2000
	str r7, [r9, #4]
	str r7, [r9, #8]
	str r5, [r9, #0x10]
	str r1, [r9, #0xc]
	ldrh r1, [r8, #8]
	mov r7, #0x10
	mov r0, r5
	and r1, r1, #0x43
	orr r1, r1, #0x1400
	strh r1, [r8, #8]
	ldrh r1, [r8, #8]
	bic r1, r1, #3
	orr r1, r1, #3
	strh r1, [r8, #8]
	ldrh r3, [r8, #8]
	mov r1, r7
	and r3, r3, r4
	strh r3, [r8, #8]
	ldrh r3, [r8, #0xa]
	and r3, r3, #0x43
	orr r3, r3, #0x104
	orr r3, r3, #0x1400
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	bic r3, r3, #3
	orr r3, r3, #2
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xa]
	and r3, r3, r4
	strh r3, [r8, #0xa]
	ldrh r3, [r8, #0xc]
	and r3, r3, #0x43
	orr r2, r3, r2
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r8, #0xc]
	ldrh r2, [r8, #0xc]
	and r2, r2, r4
	strh r2, [r8, #0xc]
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r0, r10
	mov r1, r7
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r1, r7
	mov r0, #2
	bl _ZN8Graphics11ClearBGXSubEi10CharFormat
	mov r0, r6
	mov r1, r10
	bl _ZN14CBgMenuManager4initE12EngineSelect
_020F5140:
	bl G2S_GetBG2ScrPtr
	mov r5, r0
	bl G2S_GetBG1ScrPtr
	mov r4, r0
	bl G2S_GetBG0ScrPtr
	str r0, [sp]
	mov r1, r10
	mov r2, r5
	mov r3, r4
	mov r0, r6
_020F5168:
	bl _ZN14CBgMenuManager10setScreensE12EngineSelectPvS1_S1_
_020F516C:
	ldr r1, _020F51A4 ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #0x200
	strh r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5180: .word gSubGraphicsMode
_020F5184: .word gBgMenuManager
_020F5188: .word 0x04001000
_020F518C: .word 0x0000FFBF
_020F5190: .word 0x00001C10
_020F5194: .word 0x00000604
_020F5198: .word 0xFFCFFFEF
_020F519C: .word 0x00000688
_020F51A0: .word 0x00001504
_020F51A4: .word 0x04000304
	arm_func_end FUN_ov16_020f4894

	arm_func_start FUN_ov16_020f51a8
FUN_ov16_020f51a8: ; 0x020F51A8
	stmfd sp!, {r3, lr}
	ldr r0, _020F5240 ; =gGraphicsModes
	ldr r0, [r0, #0x14]
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _020F5224
_020F51C0: ; jump table
	b _020F5224 ; case 0
	b _020F5204 ; case 1
	b _020F5224 ; case 2
	b _020F5220 ; case 3
	b _020F5210 ; case 4
	b _020F5204 ; case 5
	b _020F5220 ; case 6
	b _020F5224 ; case 7
	b _020F5204 ; case 8
	b _020F5224 ; case 9
	b _020F521C ; case 10
	b _020F5220 ; case 11
	b _020F5204 ; case 12
	b _020F5224 ; case 13
	b _020F5224 ; case 14
	b _020F5224 ; case 15
	b _020F5220 ; case 16
_020F5204:
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForSubBGExtPltt
	b _020F5224
_020F5210:
	bl GX_ResetBankForSubBG
_020F5214:
	bl GX_ResetBankForSubOBJ
	b _020F5224
_020F521C:
	b _020F5214
_020F5220:
	bl GX_ResetBankForSubBG
_020F5224:
	ldr r3, _020F5240 ; =gGraphicsModes
	mov r1, #0
	ldr r0, _020F5244 ; =0x0209A240
	mov r2, #0x10
	str r1, [r3, #0x14]
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_020F5240: .word gGraphicsModes
_020F5244: .word unk_0209A240
	arm_func_end FUN_ov16_020f51a8

	arm_func_start FUN_ov16_020f5248
FUN_ov16_020f5248: ; 0x020F5248
	ldr r1, _020F5254 ; =0x02119EE4
	str r0, [r1]
	bx lr
_020F5254: .word ov16_02119EE4
	arm_func_end FUN_ov16_020f5248

	arm_func_start FUN_ov16_020f5258
FUN_ov16_020f5258: ; 0x020F5258
	stmfd sp!, {r3, lr}
	ldr r0, _020F5274 ; =0x02119EE4
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	blx r0
	ldmfd sp!, {r3, pc}
_020F5274: .word ov16_02119EE4
	arm_func_end FUN_ov16_020f5258

	arm_func_start FUN_ov16_020f5278
FUN_ov16_020f5278: ; 0x020F5278
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r1, r4
	mov r2, #8
	mov r7, r0
	bl MI_CpuFill8
	mov r0, #0xc
	mul r5, r6, r0
	ldr r0, _020F52C0 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	mov r1, r4
	mov r2, r5
	str r0, [r7]
	bl MI_CpuFill8
	str r6, [r7, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F52C0: .word gAllocator
	arm_func_end FUN_ov16_020f5278

	arm_func_start FUN_ov16_020f52c4
FUN_ov16_020f52c4: ; 0x020F52C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _020F52E0
	ldr r0, _020F52F0 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_020F52E0:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020F52F0: .word gAllocator
	arm_func_end FUN_ov16_020f52c4

	arm_func_start FUN_ov16_020f52f4
FUN_ov16_020f52f4: ; 0x020F52F4
	ldr r12, [r0, #0xc]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	sub r3, r3, r12
	str r12, [r0, #0x14]
	mov r12, #0
	str r3, [r0, #0x18]
	cmp r2, #0
	movle r0, r12
	bxle lr
	cmp r1, #0
	movlt r1, r12
	blt _020F5330
	cmp r1, r2
	subge r1, r2, #1
_020F5330:
	ldr r3, [r0, #0xc]
	str r1, [r0]
	cmp r3, r1
	bgt _020F5350
	ldr r2, [r0, #8]
	add r2, r3, r2
	cmp r2, r1
	bgt _020F537C
_020F5350:
	cmp r3, r1
	ble _020F5360
	movne r12, #1
	b _020F5374
_020F5360:
	ldr r2, [r0, #8]
	mov r12, #1
	sub r1, r1, r2
	add r1, r1, #1
	cmp r3, r1
_020F5374:
	moveq r12, #0
	str r1, [r0, #0xc]
_020F537C:
	ldr r3, [r0]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x18]
	sub r2, r3, r2
	str r2, [r0, #0x10]
	cmp r2, r1
	mov r0, #1
	moveq r0, #0
	mov r1, #2
	cmp r12, #0
	moveq r1, #0
	add r0, r1, r0
	bx lr
	arm_func_end FUN_ov16_020f52f4

	arm_func_start FUN_ov16_020f53b0
FUN_ov16_020f53b0: ; 0x020F53B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	add r2, r0, r1
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _020F53D8
	add r0, r2, r1
	bl _s32_div_f
	mov r2, r1
_020F53D8:
	mov r0, r4
	mov r1, r2
	bl FUN_ov16_020f52f4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f53b0

	arm_func_start FUN_ov16_020f53e8
FUN_ov16_020f53e8: ; 0x020F53E8
	cmp r1, #0
	blt _020F5400
	ldmib r0, {r2, r3}
	add r3, r1, r3
	cmp r3, r2
	ble _020F5408
_020F5400:
	mov r0, #0
	bx lr
_020F5408:
	ldr r3, [r0, #0xc]
	ldr r2, [r0]
	str r3, [r0, #0x14]
	sub r3, r2, r3
	sub r2, r2, r1
	str r3, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	mov r0, #1
	cmp r2, r3
	moveq r0, #0
	add r0, r0, #2
	bx lr
	arm_func_end FUN_ov16_020f53e8

	arm_func_start FUN_ov16_020f543c
FUN_ov16_020f543c: ; 0x020F543C
	ldr r2, [r0, #0xc]
	ldr r12, _020F544C ; =FUN_ov16_020f53e8
	add r1, r2, r1
	bx r12
_020F544C: .word FUN_ov16_020f53e8
	arm_func_end FUN_ov16_020f543c

	arm_func_start FUN_ov16_020f5450
FUN_ov16_020f5450: ; 0x020F5450
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r6, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldrb r4, [sp, #0x40]
	mov r5, r6
	mov r11, #1
	b _020F54E8
_020F547C:
	ldr r0, [r8]
	mov r1, r9
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl _ZN7Archive19SFPGetOffsetAndSizeEPcS0_PlPm
	cmp r0, #0
	beq _020F54E4
	ldr r0, [r8, #4]
	ldr r0, [r7, r0, lsl #2]
	cmp r0, #0
	bne _020F54E4
	ldr r0, _020F5500 ; =g3DPlaneCtrl
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #5
	stmia sp, {r5, r11}
	str r5, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r10
	mov r3, r4
	bl FUN_02058800
	ldr r1, [r8, #4]
	add r6, r6, #1
	str r0, [r7, r1, lsl #2]
_020F54E4:
	add r8, r8, #8
_020F54E8:
	ldr r0, [r8]
	cmp r0, #0
	bne _020F547C
	mov r0, r6
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5500: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_020f5450

	arm_func_start FUN_ov16_020f5504
FUN_ov16_020f5504: ; 0x020F5504
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r6, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	ldr r4, [sp, #0x44]
	mov r5, r6
	ldr r11, _020F55B0 ; =g3DPlaneCtrl
	b _020F5598
_020F5530:
	ldr r0, [r8, #4]
	ldr r0, [r7, r0, lsl #2]
	cmp r0, #0
	bne _020F5594
	ldr r0, [r8]
	mov r1, r9
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl _ZN7Archive19SFPGetOffsetAndSizeEPcS0_PlPm
	cmp r0, #0
	beq _020F5594
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r11]
	mov r1, r4
	str r5, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r2, #5
	mov r3, r10
	bl FUN_02058c60
	ldr r1, [r8, #4]
	add r6, r6, #1
	str r0, [r7, r1, lsl #2]
_020F5594:
	add r8, r8, #8
_020F5598:
	ldr r0, [r8]
	cmp r0, #0
	bne _020F5530
	mov r0, r6
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F55B0: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_020f5504

	arm_func_start FUN_ov16_020f55b4
FUN_ov16_020f55b4: ; 0x020F55B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r7, r3
	movs r6, r0
	cmpne r7, #0
	ldrne r10, [r7]
	mov r4, r2
	cmpne r10, #0
	cmpne r4, #0
	mov r5, r1
	mov r8, #0xc
	addle sp, sp, #0x1c
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020f5738
	cmp r0, #0
	addgt sp, sp, #0x1c
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0
	b _020F5620
_020F560C:
	mla r2, r0, r8, r10
	ldr r1, [r2, #4]
	add r0, r0, #1
	add r1, r1, #1
	str r1, [r2, #4]
_020F5620:
	ldr r1, [r7, #4]
	cmp r0, r1
	blt _020F560C
	mvn r9, #0
	mov r0, #0
	mov r1, r9
	b _020F5674
_020F563C:
	mla r3, r0, r8, r10
	ldrh r2, [r3, #8]
	cmp r2, #0
	moveq r9, r0
	beq _020F5680
	cmp r9, r1
	beq _020F566C
	mla r2, r9, r8, r10
	ldr r3, [r3, #4]
	ldr r2, [r2, #4]
	cmp r3, r2
	ble _020F5670
_020F566C:
	mov r9, r0
_020F5670:
	add r0, r0, #1
_020F5674:
	ldr r2, [r7, #4]
	cmp r0, r2
	blt _020F563C
_020F5680:
	mov r7, #0xc
	mla r0, r9, r7, r10
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F56A0
	ldr r0, _020F5734 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
_020F56A0:
	mla r0, r9, r7, r10
	mov r8, #0
	mov r1, r8
	mov r2, r7
	bl MI_CpuFill8
	add r2, sp, #0x18
	add r3, sp, #0x14
	mov r0, r6
	mov r1, r4
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020F5734 ; =g3DPlaneCtrl
	ldr r6, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	ldrb r1, [sp, #0x48]
	str r8, [sp]
	ldrb r3, [sp, #0x4c]
	stmib sp, {r1, r8}
	str r2, [sp, #0xc]
	mov r2, r5
	mov r1, #5
	str r6, [sp, #0x10]
	bl FUN_02058800
	mul r1, r9, r7
	ldrb r2, [sp, #0x40]
	str r4, [r10, r1]
	add r3, r10, r1
	strh r0, [r3, #8]
	ldr r1, [sp, #0x44]
	strb r2, [r3, #0xa]
	strb r1, [r3, #0xb]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020F5734: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_020f55b4

	arm_func_start FUN_ov16_020f5738
FUN_ov16_020f5738: ; 0x020F5738
	stmfd sp!, {r4, lr}
	cmp r0, #0
	ble _020F5754
	cmp r1, #0
	ldrne lr, [r1]
	cmpne lr, #0
	bne _020F575C
_020F5754:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020F575C:
	ldr r4, [r1, #4]
	mov r12, #0
	cmp r4, #0
	ble _020F57A8
	mov r1, #0xc
_020F5770:
	mul r3, r12, r1
	ldr r2, [lr, r3]
	add r3, lr, r3
	cmp r0, r2
	bne _020F579C
	ldrh r2, [r3, #8]
	cmp r2, #0
	movne r0, #0
	strne r0, [r3, #4]
	ldrneh r0, [r3, #8]
	ldmnefd sp!, {r4, pc}
_020F579C:
	add r12, r12, #1
	cmp r12, r4
	blt _020F5770
_020F57A8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f5738

	arm_func_start FUN_ov16_020f57b0
FUN_ov16_020f57b0: ; 0x020F57B0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	ldrne r4, [r6]
	mov r5, r1
	cmpne r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	blt _020F57DC
	ldr r0, [r6, #4]
	cmp r5, r0
	ble _020F582C
_020F57DC:
	mov r5, #0
	ldr r8, _020F5864 ; =g3DPlaneCtrl
	mov r7, #0xc
	b _020F5808
_020F57EC:
	mla r0, r5, r7, r4
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F5804
	ldr r0, [r8]
	bl FUN_02058ee0
_020F5804:
	add r5, r5, #1
_020F5808:
	ldr r1, [r6, #4]
	cmp r5, r1
	blt _020F57EC
	mov r0, #0xc
	mul r2, r1, r0
	mov r0, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F582C:
	mov r0, #0xc
	mla r0, r5, r0, r4
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _020F584C
	ldr r0, _020F5864 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
_020F584C:
	mov r0, #0xc
	mla r0, r5, r0, r4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5864: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_020f57b0

	arm_func_start FUN_ov16_020f5868
FUN_ov16_020f5868: ; 0x020F5868
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r0
	ldrne r4, [r6]
	cmpne r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	mov r9, #3
	mov r8, r5
	ldr r7, _020F5918 ; =g3DPlaneCtrl
	b _020F5904
_020F5894:
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _020F58FC
	ldr r0, [r7]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [r4, #8]
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _020F58FC
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _020F58E8
	ldrh r1, [r4, #8]
	ldrb r2, [r4, #0xb]
	ldr r0, [r7]
	mov r3, r9
	bl _ZN12C3DPlaneCtrl17convertTilesToTexEii8GXTexFmt
_020F58E8:
	ldrh r1, [r4, #8]
	ldr r0, [r7]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
_020F58FC:
	add r5, r5, #1
	add r4, r4, #0xc
_020F5904:
	ldr r0, [r6, #4]
	cmp r5, r0
	blt _020F5894
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F5918: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_020f5868

	.section .init, 4
	arm_func_start FUN_ov16_02117c8c
FUN_ov16_02117c8c: ; 0x02117C8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117CD4 ; =0x02118700
	str r0, [r4, #0x14]
	ldr r0, _02117CD8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117CDC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117CD4: .word ov16_02118700
_02117CD8: .word 0x00009CCD
_02117CDC: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117c8c

	arm_func_start FUN_ov16_02117ce0
FUN_ov16_02117ce0: ; 0x02117CE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117D24 ; =0x02118718
	str r0, [r4, #0x10]
	ldr r0, _02117D28 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117D2C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117D24: .word ov16_02118718
_02117D28: .word 0x00009CCD
_02117D2C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117ce0

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117c8c
	.word FUN_ov16_02117ce0

	.data
	.global ov16_02118700
ov16_02118700:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118718
ov16_02118718:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

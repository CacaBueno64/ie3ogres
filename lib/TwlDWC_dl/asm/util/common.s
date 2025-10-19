
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCiMsgCmn
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_BTNlInit
	.public DWCi_FNTlDraw
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_GetParam_
	.public DWCi_Language
	.public DWCi_MSGlGet
	.public DWCi_STEPlBegin
	.public DWCi_STEPlChange
	.public strncpy

	.text
	arm_func_start DWCi_Char
DWCi_Char: ; 0x020F4E20
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F4E7C ; =file
	mov r5, r0
	mov r0, r4
	mov r1, r5
	mov r2, #0x3f
	bl strncpy
	ldrb r0, [r5, #5]
	cmp r0, #0x78
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_Language
	ldrb r1, [r5, #5]
	cmp r1, #0x79
	bne _020F4E68
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
_020F4E68:
	ldr r1, _020F4E80 ; =0x02111CC0
	ldrb r1, [r1, r0]
	ldr r0, _020F4E7C ; =file
	strb r1, [r0, #5]
	ldmfd sp!, {r3, r4, r5, pc}
_020F4E7C: .word file
_020F4E80: .word LANG_TBL
	arm_func_end DWCi_Char

	arm_func_start DWCi_CMNlLoadResource
DWCi_CMNlLoadResource: ; 0x020F4E84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl DWCi_Char
	add r1, sp, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, [sp]
	mov r4, r0
	bl DC_FlushRange
	ldr r2, [sp]
	mov r0, r4
	mov r1, #0
	blx r5
	mov r0, r4
	bl DWCi_ARClRelease
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_CMNlLoadResource

	arm_func_start DWCi_CMNlStep
DWCi_CMNlStep: ; 0x020F4EC4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	bl DWCi_GetParam_
	ldr r0, [sp]
	cmp r0, #1
	bne _020F4EF8
	mov r0, r4
	bl DWCi_STEPlBegin
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020F4EF8:
	cmp r0, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl DWCi_STEPlChange
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end DWCi_CMNlStep

	arm_func_start DWCi_CMNlButton
DWCi_CMNlButton: ; 0x020F4F14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam_
	ldr r0, [sp]
	cmp r0, #1
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl DWCi_BTNlInit
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end DWCi_CMNlButton

	arm_func_start DWCi_CMNlMsgDraw
DWCi_CMNlMsgDraw: ; 0x020F4F4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0
	mov r1, r0
	bl DWCi_FNTlFormBgEx
	ldr r1, _020F4FBC ; =DWCiMsgCmn
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	bl DWCi_MSGlGet
	mov r4, r0
	bl DWCi_CMNlFontFlag
	mov r1, #0x70
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x28
	mov r3, #0xe6
	bl DWCi_FNTlDrawRect
	mov r0, r5
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020F4FBC: .word DWCiMsgCmn
	arm_func_end DWCi_CMNlMsgDraw

	arm_func_start DWCi_CMNlMsgNameDraw
DWCi_CMNlMsgNameDraw: ; 0x020F4FC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0
	mov r6, r1
	mov r1, r0
	bl DWCi_FNTlFormBgEx
	ldr r1, _020F5070 ; =DWCiMsgCmn
	mov r4, r0
	ldr r0, [r1]
	mov r1, r6
	bl DWCi_MSGlGet
	mov r6, r0
	bl DWCi_CMNlFontFlag
	mov r1, #0x5e
	str r1, [sp]
	mov r8, #2
	str r8, [sp, #4]
	str r0, [sp, #8]
	mov r7, #0xd
	mov r0, r4
	mov r1, r7
	mov r2, #0x3c
	mov r3, #0xe6
	str r6, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	bl DWCi_Language
	mov r6, r0
	bl DWCi_Language
	add r1, r7, #0x1fc
	stmia sp, {r1, r5}
	mov r5, r0, lsl #2
	ldr r2, _020F5074 ; =C_MESSAGE_U + 2
	ldr r1, _020F5078 ; =C_MESSAGE_U
	mov r12, r6, lsl #2
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r5]
	mov r3, r8
	mov r0, r4
	bl DWCi_FNTlDraw
	mov r0, r4
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5070: .word DWCiMsgCmn
_020F5074: .word C_MESSAGE_U + 2
_020F5078: .word C_MESSAGE_U
	arm_func_end DWCi_CMNlMsgNameDraw

	arm_func_start DWCi_CMNlFontFlag
DWCi_CMNlFontFlag: ; 0x020F507C
	stmfd sp!, {r3, lr}
	bl DWCi_Language
	ldr r1, _020F5090 ; =FONT_FLAG
	ldr r0, [r1, r0, lsl #2]
	ldmfd sp!, {r3, pc}
_020F5090: .word FONT_FLAG
	arm_func_end DWCi_CMNlFontFlag

	.rodata
A_MESSAGE_U:
	.byte 0x0D, 0x00, 0x3C, 0x00, 0xE6, 0x00, 0x5E, 0x00
A_MESSAGE:
	.byte 0x0D, 0x00, 0x28, 0x00, 0xE6, 0x00, 0x70, 0x00
LANG_TBL:
	.ascii "jefgisk\0"
FONT_FLAG:
	.byte 0x80, 0x04, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00
	.byte 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00
C_MESSAGE_U:
	.byte 0x6B, 0x00, 0x22, 0x00, 0x6C, 0x00, 0x22, 0x00, 0x7C, 0x00, 0x22, 0x00
	.byte 0x5D, 0x00, 0x22, 0x00, 0x5F, 0x00, 0x22, 0x00, 0x7D, 0x00, 0x22, 0x00, 0x50, 0x00, 0x22, 0x00

	.bss
file:
	.space 0x40

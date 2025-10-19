
	.include "asm/macros/function.inc"
	.public DWCiMsgCmn
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlFontFlag
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_GetParam2_
	.public DWCi_Language
	.public DWCi_MSGlGet
	.public DWCi_SceneSetList
	.public DWCi_SetListReturn
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_SceneSetSelectAp
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_FNTlDrawStringEx
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public DWCi_STRlConvertStringAsciiToUnicode
	.public GX_LoadBG2Scr
	.public OS_SNPrintf

	.text
	arm_func_start DWCi_SceneSetError
DWCi_SceneSetError: ; 0x020FF978
	stmfd sp!, {r3, lr}
	bl initGraphics
	bl drawMessage
	ldr r0, _020FF990 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF990: .word procInit
	arm_func_end DWCi_SceneSetError

	arm_static_func_start initGraphics
initGraphics: ; 0x020FF994
	stmfd sp!, {r3, lr}
	ldr r0, _020FFA04 ; =0x021131D8
	ldr r1, _020FFA08 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FFA0C ; =0x04001008
	ldr r1, _020FFA10 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FFA04: .word ov17_021131D8
_020FFA08: .word GX_LoadBG2Scr
_020FFA0C: .word 0x04001008
_020FFA10: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start drawMessage
drawMessage: ; 0x020FFA14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	add r1, sp, #0x18
	mov r0, r5
	mov r4, #2
	bl DWCi_GetParam2_
	ldr r0, _020FFD20 ; =0x02116248
	ldr r2, _020FFD24 ; =0xFFFFB17D
	ldr r1, [r0]
	cmp r1, r2
	bge _020FFC48
	sub r0, r2, #1
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #2
	cmp r1, r0
	movge r5, #0x13
	bge _020FFC48
	sub r0, r2, #8
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #9
	cmp r1, r0
	movge r5, #0x12
	bge _020FFC48
	sub r0, r2, #0xa
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #0xb
	cmp r1, r0
	movge r5, #3
	bge _020FFC48
	sub r0, r2, #0x384
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	ldr r0, _020FFD28 ; =0xFFFFA629
	cmp r1, r0
	bge _020FFC48
	sub r0, r0, #0x3e8
	cmp r1, r0
	movge r5, #0x13
	bge _020FFC48
	ldr r0, _020FFD2C ; =0xFFFF3CB1
	cmp r1, r0
	bge _020FFC48
	sub r2, r0, #3
	cmp r1, r2
	movge r5, #7
	bge _020FFC48
	sub r2, r0, #4
	cmp r1, r2
	movge r5, #5
	bge _020FFC48
	sub r2, r0, #0x63
	cmp r1, r2
	bge _020FFC48
	sub r2, r0, #0x64
	cmp r1, r2
	blt _020FFB28
	ldr r0, [sp, #0x18]
	cmp r0, #2
	moveq r5, #5
	movne r5, #7
	b _020FFC48
_020FFB28:
	ldr r3, _020FFD30 ; =0xFFFF3866
	cmp r1, r3
	bge _020FFC48
	sub r2, r3, #1
	cmp r1, r2
	blt _020FFB54
	ldr r0, [sp, #0x18]
	cmp r0, #2
	moveq r5, #5
	movne r5, #8
	b _020FFC48
_020FFB54:
	sub r2, r3, #4
	cmp r1, r2
	movge r5, #9
	bge _020FFC48
	sub r2, r3, #5
	cmp r1, r2
	movge r5, #5
	bge _020FFC48
	sub r2, r3, #0x65
	cmp r1, r2
	bge _020FFC48
	sub r2, r3, #0xc9
	cmp r1, r2
	movge r5, #0x14
	bge _020FFC48
	sub r2, r3, #0xcc
	cmp r1, r2
	movge r5, #0x15
	bge _020FFC48
	sub r2, r3, #0xcd
	cmp r1, r2
	movge r5, #4
	bge _020FFC48
	sub r0, r0, #0x7d0
	cmp r1, r0
	bge _020FFC48
	sub r0, r3, #0x388
	cmp r1, r0
	movge r5, #0xa
	bge _020FFC48
	ldr r2, _020FFD34 ; =0xFFFF34DD
	cmp r1, r2
	movge r5, #0x16
	bge _020FFC48
	sub r0, r2, #0x60
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x64
	cmp r1, r0
	movge r5, #0xb
	bge _020FFC48
	sub r0, r2, #0xc4
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0xc8
	cmp r1, r0
	movge r5, #0xb
	bge _020FFC48
	sub r0, r2, #0x128
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x18c
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #0x3e4
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x510
	cmp r1, r0
	movge r5, r4
_020FFC48:
	bl DWCi_Language
	ldr r1, _020FFD38 ; =0x0211226C
	mov r9, #0
	ldrb r1, [r1, r0]
	mov r0, r9
	bl DWCi_FNTlFormBgEx
	ldr r1, _020FFD3C ; =DWCiMsgCmn
	mov r8, r0
	ldr r0, [r1]
	mov r1, r5
	bl DWCi_MSGlGet
	ldr r3, _020FFD20 ; =0x02116248
	mov r5, #8
	ldr r3, [r3]
	add r6, sp, #0x10
	mov r7, r0
	ldr r2, _020FFD40 ; =0x021131EC
	mov r0, r6
	mov r1, r5
	rsb r3, r3, #0
	bl OS_SNPrintf
	mov r2, r5
	add r5, sp, #0x1c
	mov r1, r6
	mov r0, r5
	bl DWCi_STRlConvertStringAsciiToUnicode
	bl DWCi_Language
	mov r1, r0, lsl #2
	ldr r0, _020FFD44 ; =0x0211227E
	ldrh r6, [r0, r1]
	bl DWCi_Language
	mov r3, r0, lsl #2
	ldr r1, _020FFD48 ; =0x0211227C
	mov r0, #0xa
	ldrh r1, [r1, r3]
	stmia sp, {r0, r5, r9}
	mov r2, r6
	mov r0, r8
	mov r3, r4
	bl DWCi_FNTlDrawStringEx
	bl DWCi_CMNlFontFlag
	mov r1, #0x5e
	stmia sp, {r1, r4}
	str r0, [sp, #8]
	mov r0, r8
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r7, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	mov r0, r8
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020FFD20: .word ErrorCode
_020FFD24: .word 0xFFFFB17D
_020FFD28: .word 0xFFFFA629
_020FFD2C: .word 0xFFFF3CB1
_020FFD30: .word 0xFFFF3866
_020FFD34: .word 0xFFFF34DD
_020FFD38: .word FONT_TBL
_020FFD3C: .word DWCiMsgCmn
_020FFD40: .word ov17_021131EC
_020FFD44: .word C_CODE+2
_020FFD48: .word C_CODE
	arm_func_end drawMessage

	arm_static_func_start procInit
procInit: ; 0x020FFD4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl DWCi_EFFlFade
	mov r0, r5
	mov r1, r4
	bl DWCi_GXlVisible
	ldr r0, _020FFD84 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FFD84: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FFD88
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #4
	bl DWCi_CMNlButton
	ldr r0, _020FFDC0 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFDC0: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FFDC4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FFDE4 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFDE4: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FFDE8
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FFDFC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FFE1C
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FFE20
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _020FFE44 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFE44: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FFE48
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FFE64 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFE64: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FFE68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlEnd
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl DWCi_EFFlFade
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl DWCi_EFFlFade
	ldr r0, _020FFEC0 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FFEC0: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FFEC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #2
	beq _020FFF50
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FFF78 ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FFF50:
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam2_
	mov r0, r4
	bl DWCi_SetListReturn
	ldr r0, _020FFF7C ; =DWCi_SceneSetList
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FFF78: .word DWCi_SceneSetSelectAp
_020FFF7C: .word DWCi_SceneSetList
	arm_func_end endScene2

	arm_func_start DWCi_SetErrorCode
DWCi_SetErrorCode: ; 0x020FFF80
	ldr r1, _020FFF8C ; =0x02116248
	str r0, [r1]
	bx lr
_020FFF8C: .word ErrorCode
	arm_func_end DWCi_SetErrorCode

	.rodata
FONT_TBL:
	.byte 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00
A_MESSAGE:
	.byte 0x0D, 0x00, 0x3C, 0x00, 0xE6, 0x00, 0x5E, 0x00
C_CODE:
	.byte 0x62, 0x00, 0x22, 0x00, 0x62, 0x00, 0x22, 0x00, 0x3D, 0x00, 0x22, 0x00, 0x65, 0x00, 0x22, 0x00
	.byte 0x6C, 0x00, 0x22, 0x00, 0x34, 0x00, 0x22, 0x00, 0x4E, 0x00, 0x22, 0x00

	.data
ov17_021131D8:
	.asciz "char/jb4Error.nsc.l"
	.balign 4, 0
ov17_021131EC:
	.asciz "%d"

	.bss
ErrorCode:
	.space 0x04

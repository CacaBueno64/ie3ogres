
	.include "asm/macros/function.inc"
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_MOVlIsEnd
	.public DWCi_SceneOptMenu
	.public DWCi_SceneOptMovWait
	.public DWCi_SetParam_
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneOptMovFailure
DWCi_SceneOptMovFailure: ; 0x020FBA20
	stmfd sp!, {r3, lr}
	bl initGraphics
	mov r0, #0x20
	bl DWCi_CMNlMsgDraw
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl DWCi_COMMENTlDispEx
	ldr r1, _020FBA54 ; =0x02116220
	strb r0, [r1]
	ldr r0, _020FBA58 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBA54: .word Comment
_020FBA58: .word procInit
	arm_func_end DWCi_SceneOptMovFailure

	arm_static_func_start initGraphics
initGraphics: ; 0x020FBA5C
	stmfd sp!, {r3, lr}
	ldr r0, _020FBACC ; =0x02113014
	ldr r1, _020FBAD0 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FBAD4 ; =0x04001008
	ldr r1, _020FBAD8 ; =0x0400000A
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
_020FBACC: .word ov17_02113014
_020FBAD0: .word GX_LoadBG2Scr
_020FBAD4: .word 0x04001008
_020FBAD8: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FBADC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	mov r6, #0
	mov r4, #0x15
	mov r5, #8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl DWCi_EFFlFade
	mov r0, r6
	mov r1, r4
	bl DWCi_GXlVisible
	ldr r0, _020FBB50 ; =0x02116220
	ldrb r0, [r0]
	cmp r0, #0
	beq _020FBB44
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl DWCi_EFFlFade
	mov r0, r4
	mov r1, r4
	bl DWCi_GXlVisible
_020FBB44:
	ldr r0, _020FBB54 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FBB50: .word Comment
_020FBB54: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FBB58
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_CMNlButton
	ldr r0, _020FBB90 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBB90: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FBB94
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOVlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FBBC0 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBBC0: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FBBC4
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FBBD8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FBBF8
	mov r0, r4
	bl DWCi_BTNlSet
_020FBBF8:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FBC14
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FBC18
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FBC40
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _020FBC60 ; =0x02116220
	mov r2, #1
	mov r0, #6
	b _020FBC4C
_020FBC40:
	ldr r1, _020FBC60 ; =0x02116220
	mov r2, #0
	mov r0, #7
_020FBC4C:
	strb r2, [r1, #1]
	bl DWCi_SNDlPlay
	ldr r0, _020FBC64 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBC60: .word Comment
_020FBC64: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FBC68
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FBC84 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBC84: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FBC88
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020FBCE8 ; =0x02116220
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FBCC8
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_020FBCC8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FBCEC ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FBCE8: .word Comment
_020FBCEC: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FBCF0
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
	ldr r0, _020FBD98 ; =0x02116220
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FBD50
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
_020FBD50:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _020FBD98 ; =0x02116220
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	mov r0, r4
	bne _020FBD88
	bl DWCi_SetParam_
	ldr r0, _020FBD9C ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FBD88:
	bl DWCi_SetParam_
	ldr r0, _020FBDA0 ; =DWCi_SceneOptMovWait
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FBD98: .word Comment
_020FBD9C: .word DWCi_SceneOptMenu
_020FBDA0: .word DWCi_SceneOptMovWait
	arm_func_end endScene2

	.data
ov17_02113014:
	.asciz "char/yb5Multi.nsc.l"

	.bss
Comment:
	.space 0x01
Choose:
	.space 0x03

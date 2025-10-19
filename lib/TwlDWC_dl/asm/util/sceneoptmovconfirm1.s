
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
	.public DWCi_HLlLoad
	.public DWCi_SceneOptMenu
	.public DWCi_SceneOptMovConfirm
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
	arm_func_start DWCi_SceneOptMovConfirm1
DWCi_SceneOptMovConfirm1: ; 0x020FB4B8
	stmfd sp!, {r4, lr}
	ldr r0, _020FB4F8 ; =0x02116218
	mov r4, #0
	strb r4, [r0]
	bl initGraphics
	mov r0, #0x13
	bl DWCi_HLlLoad
	mov r0, #0x3c
	mov r2, r4
	sub r1, r0, #0x3d
	bl DWCi_COMMENTlDispEx
	mov r0, #0x1b
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB4FC ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB4F8: .word Choose
_020FB4FC: .word procInit
	arm_func_end DWCi_SceneOptMovConfirm1

	arm_static_func_start initGraphics
initGraphics: ; 0x020FB500
	stmfd sp!, {r3, lr}
	ldr r0, _020FB570 ; =0x02112FEC
	ldr r1, _020FB574 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FB578 ; =0x04001008
	ldr r1, _020FB57C ; =0x0400000A
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
_020FB570: .word ov17_02112FEC
_020FB574: .word GX_LoadBG2Scr
_020FB578: .word 0x04001008
_020FB57C: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FB580
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl DWCi_EFFlFade
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl DWCi_EFFlFade
	mov r0, r7
	mov r1, r7
	bl DWCi_GXlVisible
	mov r0, r5
	mov r1, r4
	bl DWCi_GXlVisible
	ldr r0, _020FB5E4 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FB5E4: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FB5E8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_CMNlButton
	ldr r0, _020FB610 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB610: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FB614
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FB634 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB634: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FB638
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FB64C
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FB66C
	mov r0, r4
	bl DWCi_BTNlSet
_020FB66C:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FB688
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FB68C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FB6A8
	cmp r0, #1
	beq _020FB6B4
	ldmfd sp!, {r3, pc}
_020FB6A8:
	mov r0, #7
	bl DWCi_SNDlPlay
	b _020FB6C8
_020FB6B4:
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _020FB6D4 ; =0x02116218
	mov r1, #1
	strb r1, [r0]
_020FB6C8:
	ldr r0, _020FB6D8 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB6D4: .word Choose
_020FB6D8: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FB6DC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FB6F8 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB6F8: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FB6FC
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020FB75C ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB73C
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_020FB73C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FB760 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB75C: .word Choose
_020FB760: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FB764
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FB814 ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB798
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FB798:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FB814 ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB7CC
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_020FB7CC:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _020FB814 ; =0x02116218
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _020FB804
	bl DWCi_SetParam_
	ldr r0, _020FB818 ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB804:
	bl DWCi_SetParam_
	ldr r0, _020FB81C ; =DWCi_SceneOptMovConfirm
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB814: .word Choose
_020FB818: .word DWCi_SceneOptMenu
_020FB81C: .word DWCi_SceneOptMovConfirm
	arm_func_end endScene2

	.data
ov17_02112FEC:
	.asciz "char/yb5Multi.nsc.l"

	.bss
Choose:
	.space 0x04

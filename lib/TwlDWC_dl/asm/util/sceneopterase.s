
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
	.public DWCi_SceneOptErase1
	.public DWCi_SceneOptMenu
	.public DWCi_SetParam_
	.public DWCi_SNDlPlay
	.public DWCi_WINlInitEx
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneOptErase
DWCi_SceneOptErase: ; 0x020F9BB0
	stmfd sp!, {r4, lr}
	ldr r0, _020F9BF0 ; =0x02116204
	mov r4, #0
	strb r4, [r0]
	bl initGraphics
	mov r0, #0x12
	bl DWCi_HLlLoad
	mov r0, #0x3b
	mov r2, r4
	sub r1, r0, #0x3c
	bl DWCi_COMMENTlDispEx
	mov r0, #0x17
	bl DWCi_CMNlMsgDraw
	ldr r0, _020F9BF4 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9BF0: .word Choose
_020F9BF4: .word procInit
	arm_func_end DWCi_SceneOptErase

	arm_static_func_start initGraphics
initGraphics: ; 0x020F9BF8
	stmfd sp!, {r3, lr}
	ldr r0, _020F9C68 ; =0x02112F24
	ldr r1, _020F9C6C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020F9C70 ; =0x04001008
	ldr r1, _020F9C74 ; =0x0400000A
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
_020F9C68: .word ov17_02112F24
_020F9C6C: .word GX_LoadBG2Scr
_020F9C70: .word 0x04001008
_020F9C74: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020F9C78
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
	ldr r0, _020F9CDC ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F9CDC: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020F9CE0
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
	ldr r0, _020F9D18 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9D18: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020F9D1C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020F9D3C ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9D3C: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020F9D40
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020F9D54
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020F9D74
	mov r0, r4
	bl DWCi_BTNlSet
_020F9D74:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020F9D90
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020F9D94
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020F9DB0
	cmp r0, #1
	beq _020F9DC4
	ldmfd sp!, {r3, pc}
_020F9DB0:
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _020F9DF4 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9DC4:
	mov r0, #6
	bl DWCi_SNDlPlay
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x18
	str r1, [sp]
	bl DWCi_WINlInitEx
	bl DWCi_BTNlDisable
	ldr r0, _020F9DF8 ; =procConfirm
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9DF4: .word endScene
_020F9DF8: .word procConfirm
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020F9DFC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020F9E18 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9E18: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020F9E1C
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020F9E7C ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9E5C
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_020F9E5C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020F9E80 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9E7C: .word Choose
_020F9E80: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020F9E84
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020F9F34 ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9EB8
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020F9EB8:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020F9F34 ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9EEC
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_020F9EEC:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _020F9F34 ; =0x02116204
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _020F9F24
	bl DWCi_SetParam_
	ldr r0, _020F9F38 ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9F24:
	bl DWCi_SetParam_
	ldr r0, _020F9F3C ; =DWCi_SceneOptErase1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9F34: .word Choose
_020F9F38: .word DWCi_SceneOptMenu
_020F9F3C: .word DWCi_SceneOptErase1
	arm_func_end endScene2

	arm_static_func_start procConfirm
procConfirm: ; 0x020F9F40
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	beq _020F9F70
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	mov r0, #0xe
	bl DWCi_SNDlPlay
	ldr r0, _020F9F88 ; =0x02116204
	mov r1, #1
	strb r1, [r0]
	b _020F9F78
_020F9F70:
	mov r0, #7
	bl DWCi_SNDlPlay
_020F9F78:
	bl DWCi_WINlEnd
	ldr r0, _020F9F8C ; =procConfirm1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9F88: .word Choose
_020F9F8C: .word procConfirm1
	arm_func_end procConfirm

	arm_static_func_start procConfirm1
procConfirm1: ; 0x020F9F90
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F9FAC ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9FAC: .word endScene
	arm_func_end procConfirm1

	.data
ov17_02112F24:
	.asciz "char/yb5Multi.nsc.l"

	.bss
Choose:
	.space 0x04

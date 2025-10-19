
	.include "asm/macros/function.inc"
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlMsgDraw
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_SceneOptMovWait
	.public DWCi_SetParam_
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger

	.text
	arm_func_start DWCi_SceneOptMovConfirm
DWCi_SceneOptMovConfirm: ; 0x020FB284
	stmfd sp!, {r3, lr}
	bl initGraphics
	mov r0, #0x1a
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB2A0 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB2A0: .word procInit
	arm_func_end DWCi_SceneOptMovConfirm

	arm_static_func_start initGraphics
initGraphics: ; 0x020FB2A4
	ldr r3, _020FB304 ; =0x04001008
	ldr r1, _020FB308 ; =0x0400000A
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
	bx lr
_020FB304: .word 0x04001008
_020FB308: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FB30C
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
	ldr r0, _020FB344 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB344: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FB348
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
	ldr r0, _020FB380 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB380: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FB384
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FB3A4 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB3A4: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FB3A8
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FB3BC
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
draw: ; 0x020FB3DC
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FB3E0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _020FB404 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB404: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FB408
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FB424 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB424: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FB428
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_BTNlEnd
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FB460 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB460: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FB464
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _020FB4B4 ; =DWCi_SceneOptMovWait
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB4B4: .word DWCi_SceneOptMovWait
	arm_func_end endScene2

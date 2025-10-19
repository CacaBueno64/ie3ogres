
	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_HLlLoadSet
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_SceneSetTestConfirm
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneSetAossComplete
DWCi_SceneSetAossComplete: ; 0x020FCB5C
	stmfd sp!, {r3, lr}
	ldr r0, _020FCB90 ; =0x02116234
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x23
	bl DWCi_CMNlMsgDraw
	mov r0, #0x10
	bl DWCi_SNDlPlay
	ldr r0, _020FCB94 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCB90: .word Count
_020FCB94: .word procInit
	arm_func_end DWCi_SceneSetAossComplete

	arm_static_func_start initGraphics
initGraphics: ; 0x020FCB98
	stmfd sp!, {r3, lr}
	ldr r0, _020FCBF4 ; =0x02113094
	ldr r1, _020FCBF8 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _020FCBFC ; =0x04001008
	ldr r1, _020FCC00 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FCBF4: .word ov17_02113094
_020FCBF8: .word GX_LoadBG2Scr
_020FCBFC: .word 0x04001008
_020FCC00: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FCC04
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
	ldr r0, _020FCC3C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCC3C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FCC40
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FCC60 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCC60: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x020FCC64
	stmfd sp!, {r3, lr}
	bl wait
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start draw
draw: ; 0x020FCC74
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x020FCC78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl DWCi_EFFlFade
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl DWCi_EFFlFade
	ldr r0, _020FCCB8 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCCB8: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FCCBC
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
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FCD30 ; =DWCi_SceneSetTestConfirm
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCD30: .word DWCi_SceneSetTestConfirm
	arm_func_end endScene1

	arm_static_func_start wait
wait: ; 0x020FCD34
	stmfd sp!, {r3, lr}
	ldr r1, _020FCD60 ; =0x02116234
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _020FCD64 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCD60: .word Count
_020FCD64: .word endScene
	arm_func_end wait

	.data
ov17_02113094:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Count:
	.space 0x04


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
	arm_func_start DWCi_SceneSetRakuComplete
DWCi_SceneSetRakuComplete: ; 0x02102D3C
	stmfd sp!, {r3, lr}
	ldr r0, _02102D70 ; =0x02116260
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x26
	bl DWCi_CMNlMsgDraw
	mov r0, #0x10
	bl DWCi_SNDlPlay
	ldr r0, _02102D74 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102D70: .word Count
_02102D74: .word procInit
	arm_func_end DWCi_SceneSetRakuComplete

	arm_static_func_start initGraphics
initGraphics: ; 0x02102D78
	stmfd sp!, {r3, lr}
	ldr r0, _02102DE8 ; =0x021132DC
	ldr r1, _02102DEC ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02102DF0 ; =0x04001008
	ldr r1, _02102DF4 ; =0x0400000A
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
_02102DE8: .word ov17_021132DC
_02102DEC: .word GX_LoadBG2Scr
_02102DF0: .word 0x04001008
_02102DF4: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02102DF8
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
	ldr r0, _02102E30 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102E30: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02102E34
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102E54 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102E54: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x02102E58
	stmfd sp!, {r3, lr}
	bl wait
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start draw
draw: ; 0x02102E68
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x02102E6C
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
	ldr r0, _02102EAC ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102EAC: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02102EB0
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
	ldr r0, _02102F24 ; =DWCi_SceneSetTestConfirm
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102F24: .word DWCi_SceneSetTestConfirm
	arm_func_end endScene1

	arm_static_func_start wait
wait: ; 0x02102F28
	stmfd sp!, {r3, lr}
	ldr r1, _02102F54 ; =0x02116260
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _02102F58 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102F54: .word Count
_02102F58: .word endScene
	arm_func_end wait

	.data
ov17_021132DC:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Count:
	.space 0x04

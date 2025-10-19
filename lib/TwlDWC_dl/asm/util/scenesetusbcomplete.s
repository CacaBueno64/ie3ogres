
	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_HLlLoad
	.public DWCi_SNDlPlay
	.public DWCi_SceneSetTestConfirm
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneSetUsbComplete
DWCi_SceneSetUsbComplete: ; 0x0210571C
	stmfd sp!, {r3, lr}
	ldr r0, _02105754 ; =0x02116284
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	mov r0, #8
	bl DWCi_HLlLoad
	mov r0, #0x29
	bl DWCi_CMNlMsgDraw
	mov r0, #0x10
	bl DWCi_SNDlPlay
	ldr r0, _02105758 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105754: .word Count
_02105758: .word procInit
	arm_func_end DWCi_SceneSetUsbComplete

	arm_static_func_start initGraphics
initGraphics: ; 0x0210575C
	stmfd sp!, {r3, lr}
	ldr r0, _021057CC ; =0x02113498
	ldr r1, _021057D0 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _021057D4 ; =0x04001008
	ldr r1, _021057D8 ; =0x0400000A
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
_021057CC: .word ov17_02113498
_021057D0: .word GX_LoadBG2Scr
_021057D4: .word 0x04001008
_021057D8: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x021057DC
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
	ldr r0, _02105814 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105814: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02105818
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02105838 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105838: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x0210583C
	stmfd sp!, {r3, lr}
	bl wait
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start draw
draw: ; 0x0210584C
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x02105850
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
	ldr r0, _02105890 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105890: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02105894
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
	mov r1, #2
	bl DWCi_SetParam2_
	ldr r0, _02105908 ; =DWCi_SceneSetTestConfirm
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105908: .word DWCi_SceneSetTestConfirm
	arm_func_end endScene1

	arm_static_func_start wait
wait: ; 0x0210590C
	stmfd sp!, {r3, lr}
	ldr r1, _02105938 ; =0x02116284
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _0210593C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105938: .word Count
_0210593C: .word endScene
	arm_func_end wait

	.data
ov17_02113498:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Count:
	.space 0x04

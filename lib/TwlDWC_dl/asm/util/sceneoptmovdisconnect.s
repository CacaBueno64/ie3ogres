
	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_MOVlIsEnd
	.public DWCi_SceneOptMenu
	.public DWCi_SetParam_
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneOptMovDisconnect
DWCi_SceneOptMovDisconnect: ; 0x020FB820
	stmfd sp!, {r3, lr}
	ldr r0, _020FB848 ; =0x0211621C
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	mov r0, #0x21
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB84C ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB848: .word Count
_020FB84C: .word procInit
	arm_func_end DWCi_SceneOptMovDisconnect

	arm_static_func_start initGraphics
initGraphics: ; 0x020FB850
	stmfd sp!, {r3, lr}
	ldr r0, _020FB8AC ; =0x02113000
	ldr r1, _020FB8B0 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _020FB8B4 ; =0x04001008
	ldr r1, _020FB8B8 ; =0x0400000A
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
_020FB8AC: .word ov17_02113000
_020FB8B0: .word GX_LoadBG2Scr
_020FB8B4: .word 0x04001008
_020FB8B8: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FB8BC
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
	ldr r0, _020FB8F4 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB8F4: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FB8F8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_MOVlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FB924 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB924: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x020FB928
	stmfd sp!, {r3, lr}
	bl wait
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start draw
draw: ; 0x020FB938
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x020FB93C
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
	ldr r0, _020FB97C ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB97C: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FB980
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
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FB9E8 ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB9E8: .word DWCi_SceneOptMenu
	arm_func_end endScene1

	arm_static_func_start wait
wait: ; 0x020FB9EC
	stmfd sp!, {r3, lr}
	ldr r1, _020FBA18 ; =0x0211621C
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _020FBA1C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBA18: .word Count
_020FBA1C: .word endScene
	arm_func_end wait

	.data
ov17_02113000:
	.asciz "char/yb5Multi.nsc.l"

	.bss
Count:
	.space 0x04

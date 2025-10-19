
	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_Entry
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_GetParam2_
	.public DWCi_STEPlEnd
	.public DWCi_STEPlIsEnd
	.public DWCi_SceneEnd
	.public DWCi_SceneMenu
	.public DWCi_SceneSetList
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneSetTestCompletet
DWCi_SceneSetTestCompletet: ; 0x02105214
	stmfd sp!, {r3, lr}
	ldr r0, _0210523C ; =0x02116280
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	mov r0, #0x2d
	bl DWCi_CMNlMsgDraw
	ldr r0, _02105240 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210523C: .word Count
_02105240: .word procInit
	arm_func_end DWCi_SceneSetTestCompletet

	arm_func_start initGraphics
initGraphics: ; 0x02105244
	stmfd sp!, {r3, lr}
	ldr r0, _021052A0 ; =0x02113470
	ldr r1, _021052A4 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _021052A8 ; =0x04001008
	ldr r1, _021052AC ; =0x0400000A
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
_021052A0: .word ov17_02113470
_021052A4: .word GX_LoadBG2Scr
_021052A8: .word 0x04001008
_021052AC: .word 0x0400000A
	arm_func_end initGraphics

	arm_func_start procInit
procInit: ; 0x021052B0
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
	ldr r0, _021052E8 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021052E8: .word procInit1
	arm_func_end procInit

	arm_func_start procInit1
procInit1: ; 0x021052EC
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210530C ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210530C: .word procScene
	arm_func_end procInit1

	arm_func_start procScene
procScene: ; 0x02105310
	stmfd sp!, {r3, lr}
	bl wait
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_func_start draw
draw: ; 0x02105320
	bx lr
	arm_func_end draw

	arm_func_start endScene
endScene: ; 0x02105324
	stmfd sp!, {r3, r4, r5, lr}
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	beq _02105344
	bl DWCi_STEPlEnd
_02105344:
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
	ldr r0, _02105380 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105380: .word endScene1
	arm_func_end endScene

	arm_func_start endScene1
endScene1: ; 0x02105384
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
	bl DWCi_STEPlIsEnd
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
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _0210541C
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam2_
	ldr r0, _02105428 ; =DWCi_SceneSetList
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_0210541C:
	ldr r0, _0210542C ; =DWCi_SceneMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105428: .word DWCi_SceneSetList
_0210542C: .word DWCi_SceneMenu
	arm_func_end endScene1

	arm_func_start wait
wait: ; 0x02105430
	stmfd sp!, {r3, lr}
	ldr r1, _02105494 ; =0x02116280
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0xb4
	ldmlofd sp!, {r3, pc}
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam2_
	bl DWCi_Entry
	cmp r0, #0
	beq _02105488
	cmp r0, #1
	bne _02105488
	ldr r0, [sp]
	cmp r0, #0
	beq _02105488
	ldr r0, _02105498 ; =DWCi_SceneEnd
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105488:
	ldr r0, _0210549C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105494: .word Count
_02105498: .word DWCi_SceneEnd
_0210549C: .word endScene
	arm_func_end wait

	.data
ov17_02113470:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Count:
	.space 0x04


	.include "asm/macros/function.inc"
	.public DWCi_ANIMElEnd
	.public DWCi_ANIMElInitEx
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
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_HLlLoadSet
	.public DWCi_RAKUlEnd
	.public DWCi_RAKUlGetState
	.public DWCi_SetParam_
	.public DWCi_SceneSetRakuButton1
	.public DWCi_SceneSetSelectWay
	.public DWCi_SNDlPlay
	.public DWCi_SNDlStop
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
	.public OS_Sleep

	.text
	arm_static_func_start DWCi_IsFold
DWCi_IsFold: ; 0x021024AC
	ldr r0, _021024C8 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_021024C8: .word 0x02FFFFA8
	arm_func_end DWCi_IsFold

	arm_func_start DWCi_SceneSetRakuButton
DWCi_SceneSetRakuButton: ; 0x021024CC
	stmfd sp!, {r3, lr}
	ldr r0, _02102500 ; =0x02116258
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x25
	bl DWCi_CMNlMsgDraw
	mov r0, #1
	bl DWCi_ANIMElInitEx
	ldr r0, _02102504 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102500: .word Choose
_02102504: .word procInit
	arm_func_end DWCi_SceneSetRakuButton

	arm_static_func_start initGraphics
initGraphics: ; 0x02102508
	stmfd sp!, {r3, lr}
	ldr r0, _02102578 ; =0x021132B4
	ldr r1, _0210257C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02102580 ; =0x04001008
	ldr r1, _02102584 ; =0x0400000A
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
_02102578: .word ov17_021132B4
_0210257C: .word GX_LoadBG2Scr
_02102580: .word 0x04001008
_02102584: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02102588
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
	ldr r0, _021025C0 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021025C0: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x021025C4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl DWCi_CMNlButton
	ldr r0, _021025EC ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021025EC: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x021025F0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02102610 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102610: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02102614
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl checkRaku
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02102634
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02102654
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02102654:
	bl DWCi_IsFold
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x0210266C
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x02102670
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _02102698 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102698: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x0210269C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _021026B8 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021026B8: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x021026BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102728 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _021026E4
	bl DWCi_BTNlEnd
_021026E4:
	ldr r0, _02102728 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102708
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_02102708:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _0210272C ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102728: .word Choose
_0210272C: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02102730
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102764
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_02102764:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _0210279C
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_0210279C:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _021027D8
	bl DWCi_RAKUlEnd
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _021027F4 ; =DWCi_SceneSetSelectWay
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021027D8:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _021027F8 ; =DWCi_SceneSetRakuButton1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021027F0: .word Choose
_021027F4: .word DWCi_SceneSetSelectWay
_021027F8: .word DWCi_SceneSetRakuButton1
	arm_func_end endScene2

	arm_static_func_start checkRaku
checkRaku: ; 0x021027FC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_RAKUlGetState
	cmp r0, #2
	beq _02102820
	cmp r0, #4
	beq _0210283C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102820:
	ldr r1, _02102880 ; =0x02116258
	mov r2, #1
	ldr r0, _02102884 ; =endScene
	strb r2, [r1]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210283C:
	ldr r0, _02102880 ; =0x02116258
	mov r4, #0
	strb r4, [r0]
	bl DWCi_SNDlStop
	mov r0, #9
	bl DWCi_SNDlPlay
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl DWCi_WINlInitEx
	bl DWCi_BTNlDisable
	ldr r0, _02102888 ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102880: .word Choose
_02102884: .word endScene
_02102888: .word procError
	arm_func_end checkRaku

	arm_static_func_start procError
procError: ; 0x0210288C
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _021028B4 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021028B4: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x021028B8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021028D4 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021028D4: .word endScene
	arm_func_end procError1

	.data
ov17_021132B4:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Choose:
	.space 0x04

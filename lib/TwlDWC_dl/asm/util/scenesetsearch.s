
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
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_HLlLoadSet
	.public DWCi_SceneSetApList
	.public DWCi_SceneSetSelectWay
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_SEARCHlInit
	.public DWCi_SEARCHlEnd
	.public DWCi_SEARCHlBegin
	.public DWCi_SEARCHlStop
	.public DWCi_SEARCHlGetApInfo
	.public DWCi_SETTIGNlGet
	.public DWCi_SETTINGlSetSetting
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
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt

	.text
	arm_func_start DWCi_SceneSetSearch
DWCi_SceneSetSearch: ; 0x02103414
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02103478 ; =0x02116268
	mov r5, #0
	strh r5, [r0, #2]
	strb r5, [r0]
	bl initGraphics
	mov r4, #0x33
	mov r0, r4
	mov r2, r5
	sub r1, r4, #0x34
	bl DWCi_COMMENTlDispEx
	bl DWCi_HLlLoadSet
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, r4
	bl DWCi_CMNlMsgDraw
	mov r0, r5
	bl DWCi_ANIMElInitEx
	bl DWCi_SEARCHlInit
	bl DWCi_SEARCHlBegin
	mov r0, #0xa
	bl DWCi_SNDlPlay
	ldr r0, _0210347C ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103478: .word Choose
_0210347C: .word procInit
	arm_func_end DWCi_SceneSetSearch

	arm_static_func_start initGraphics
initGraphics: ; 0x02103480
	stmfd sp!, {r3, lr}
	ldr r0, _02103508 ; =0x02113334
	ldr r1, _0210350C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02103510 ; =0x0211334C
	ldr r1, _02103514 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103518 ; =0x02113364
	ldr r1, _0210351C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02103520 ; =0x04001008
	ldr r1, _02103524 ; =0x0400000A
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
_02103508: .word ov17_02113334
_0210350C: .word GX_LoadBG2Char
_02103510: .word ov17_0211334C
_02103514: .word GX_LoadBGPltt
_02103518: .word ov17_02113364
_0210351C: .word GX_LoadBG2Scr
_02103520: .word 0x04001008
_02103524: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02103528
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
	ldr r0, _0210358C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210358C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02103590
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _021035CC ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021035CC: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x021035D0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _021035F0 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021035F0: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x021035F4
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	bl isEnd
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start isEnd
isEnd: ; 0x0210360C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _02103728 ; =0x02116268
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x12c
	addlo sp, sp, #8
	ldmlofd sp!, {r4, pc}
	bl DWCi_SNDlStop
	add r0, sp, #4
	bl DWCi_SEARCHlGetApInfo
	cmp r0, #0
	bne _02103688
	mov r1, #1
	mov r0, #2
	strb r0, [r4]
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xf
	str r4, [sp]
	bl DWCi_WINlInitEx
	mov r0, #0x12
	bl DWCi_SNDlPlay
	bl DWCi_BTNlDisable
	ldr r0, _0210372C ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103688:
	cmp r0, #0
	mov r3, #0
	ble _021036B8
	ldr r4, [sp, #4]
	mov r1, #0x2a
_0210369C:
	mla r2, r3, r1, r4
	ldrb r2, [r2, #0x28]
	cmp r2, #2
	bne _021036B8
	add r3, r3, #1
	cmp r3, r0
	blt _0210369C
_021036B8:
	cmp r3, r0
	bne _02103704
	ldr r0, _02103728 ; =0x02116268
	mov r1, #1
	mov r3, #3
	strb r3, [r0]
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str r4, [sp]
	bl DWCi_WINlInitEx
	mov r0, #0x12
	bl DWCi_SNDlPlay
	bl DWCi_BTNlDisable
	ldr r0, _0210372C ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103704:
	ldr r1, _02103728 ; =0x02116268
	mov r2, #1
	mov r0, #0xf
	strb r2, [r1]
	bl DWCi_SNDlPlay
	ldr r0, _02103730 ; =endScene
	bl DWCi_ChangeScene
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103728: .word Choose
_0210372C: .word procError
_02103730: .word endScene
	arm_func_end isEnd

	arm_static_func_start input
input: ; 0x02103734
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl DWCi_SNDlStop
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02103758
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x0210375C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _02103784 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103784: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x02103788
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _021037A4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021037A4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x021037A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlEnd
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl DWCi_EFFlFade
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl DWCi_EFFlFade
	ldr r0, _02103800 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02103800: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02103804
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02103834:
	bl DWCi_SEARCHlStop
	cmp r0, #0
	beq _02103834
	bl DWCi_ANIMElEnd
	mov r5, #0
	mov r0, r5
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r4, #1
	mov r0, r4
	mov r1, r4
	bl DWCi_GXlInvisible
	mov r0, r5
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _021038CC ; =0x02116268
	ldrb r0, [r0]
	cmp r0, #1
	beq _021038A8
	bl DWCi_SEARCHlEnd
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xf4]
	bl DWCi_SETTINGlSetSetting
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _021038D0 ; =DWCi_SceneSetSelectWay
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021038A8:
	mov r0, r5
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _021038D4 ; =DWCi_SceneSetApList
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021038CC: .word Choose
_021038D0: .word DWCi_SceneSetSelectWay
_021038D4: .word DWCi_SceneSetApList
	arm_func_end endScene2

	arm_static_func_start procError
procError: ; 0x021038D8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _02103900 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103900: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x02103904
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103920 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103920: .word endScene
	arm_func_end procError1

	.data
ov17_02113334:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_0211334C:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_02113364:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Choose:
	.space 0x02
Count:
	.space 0x02

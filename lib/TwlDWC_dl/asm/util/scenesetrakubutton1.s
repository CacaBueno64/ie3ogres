
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
	.public DWCi_RAKUlSetResult
	.public DWCi_SceneSetRakuComplete
	.public DWCi_SceneSetSelectWay
	.public DWCi_SetParam_
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
DWCi_IsFold: ; 0x021028D8
	ldr r0, _021028F4 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_021028F4: .word 0x02FFFFA8
	arm_func_end DWCi_IsFold

	arm_func_start DWCi_SceneSetRakuButton1
DWCi_SceneSetRakuButton1: ; 0x021028F8
	stmfd sp!, {r3, lr}
	ldr r0, _0210292C ; =0x0211625C
	mov r1, #0
	strb r1, [r0]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x2a
	bl DWCi_CMNlMsgDraw
	mov r0, #2
	bl DWCi_ANIMElInitEx
	ldr r0, _02102930 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210292C: .word Choose
_02102930: .word procInit
	arm_func_end DWCi_SceneSetRakuButton1

	arm_static_func_start initGraphics
initGraphics: ; 0x02102934
	stmfd sp!, {r3, lr}
	ldr r0, _021029A4 ; =0x021132C8
	ldr r1, _021029A8 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _021029AC ; =0x04001008
	ldr r1, _021029B0 ; =0x0400000A
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
_021029A4: .word ov17_021132C8
_021029A8: .word GX_LoadBG2Scr
_021029AC: .word 0x04001008
_021029B0: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x021029B4
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
	ldr r0, _021029EC ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021029EC: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x021029F0
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl DWCi_CMNlButton
	ldr r0, _02102A18 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102A18: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x02102A1C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02102A3C ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102A3C: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02102A40
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
input: ; 0x02102A60
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02102A80
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02102A80:
	bl DWCi_IsFold
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02102A98
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x02102A9C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _02102AC4 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102AC4: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x02102AC8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _02102AE4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102AE4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02102AE8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _02102B48 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102B28
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_02102B28:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _02102B4C ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02102B48: .word Choose
_02102B4C: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02102B50
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102B84
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
_02102B84:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102BBC
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_02102BBC:
	bl DWCi_RAKUlEnd
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102BE8
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _02102C04 ; =DWCi_SceneSetSelectWay
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102BE8:
	mov r0, #0
	mov r1, r0
	bl DWCi_SetParam_
	ldr r0, _02102C08 ; =DWCi_SceneSetRakuComplete
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102C00: .word Choose
_02102C04: .word DWCi_SceneSetSelectWay
_02102C08: .word DWCi_SceneSetRakuComplete
	arm_func_end endScene2

	arm_static_func_start checkRaku
checkRaku: ; 0x02102C0C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_RAKUlGetState
	cmp r0, #3
	beq _02102C38
	cmp r0, #4
	beq _02102C5C
	cmp r0, #5
	beq _02102CA0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102C38:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r1, #1
	strb r1, [r0]
	bl DWCi_SNDlStop
	bl DWCi_RAKUlSetResult
	ldr r0, _02102CE8 ; =endScene
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102C5C:
	ldr r0, _02102CE4 ; =0x0211625C
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
	ldr r0, _02102CEC ; = procError
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102CA0:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r4, #0
	strb r4, [r0]
	bl DWCi_SNDlStop
	mov r0, #0x12
	bl DWCi_SNDlPlay
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str r4, [sp]
	bl DWCi_WINlInitEx
	bl DWCi_BTNlDisable
	ldr r0, _02102CEC ; = procError
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102CE4: .word Choose
_02102CE8: .word endScene
_02102CEC: .word  procError
	arm_func_end checkRaku

	arm_static_func_start  procError
 procError: ; 0x02102CF0
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _02102D18 ; = procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102D18: .word  procError1
	arm_func_end  procError

	arm_static_func_start  procError1
 procError1: ; 0x02102D1C
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102D38 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102D38: .word endScene
	arm_func_end  procError1

	.data
ov17_021132C8:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Choose:
	.space 0x04

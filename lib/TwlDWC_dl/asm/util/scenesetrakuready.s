
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
	.public DWCi_RAKUlEnd
	.public DWCi_RAKUlGetState
	.public DWCi_RAKUlInit
	.public DWCi_SceneSetRakuButton
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
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt
	.public OS_Sleep

	.text

	arm_static_func_start DWCi_IsFold
DWCi_IsFold: ; 0x02102F5C
	ldr r0, _02102F78 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_02102F78: .word 0x02FFFFA8
	arm_func_end DWCi_IsFold

	arm_func_start DWCi_SceneSetRakuReady
DWCi_SceneSetRakuReady: ; 0x02102F7C
	stmfd sp!, {r4, lr}
	ldr r0, _02102FD0 ; =0x02116264
	mov r4, #0
	strb r4, [r0]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x37
	mov r2, r4
	sub r1, r0, #0x38
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, #0x24
	bl DWCi_CMNlMsgDraw
	mov r0, r4
	bl DWCi_ANIMElInitEx
	mov r0, #0xb
	bl DWCi_SNDlPlay
	ldr r0, _02102FD4 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02102FD0: .word Choose
_02102FD4: .word procInit
	arm_func_end DWCi_SceneSetRakuReady

	arm_static_func_start initGraphics
initGraphics: ; 0x02102FD8
	stmfd sp!, {r3, lr}
	ldr r0, _02103060 ; =0x021132F0
	ldr r1, _02103064 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02103068 ; =0x02113308
	ldr r1, _0210306C ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103070 ; =0x02113320
	ldr r1, _02103074 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02103078 ; =0x04001008
	ldr r1, _0210307C ; =0x0400000A
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
_02103060: .word ov17_021132F0
_02103064: .word GX_LoadBG2Char
_02103068: .word ov17_02113308
_0210306C: .word GX_LoadBGPltt
_02103070: .word ov17_02113320
_02103074: .word GX_LoadBG2Scr
_02103078: .word 0x04001008
_0210307C: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02103080
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
	ldr r0, _021030E4 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021030E4: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x021030E8
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
	bl DWCi_RAKUlInit
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _02103128 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02103128: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x0210312C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _0210314C ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210314C: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02103150
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
input: ; 0x02103170
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02103190
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02103190:
	bl DWCi_IsFold
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x021031A8
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x021031AC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _021031D4 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021031D4: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x021031D8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _021031F4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021031F4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x021031F8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103264 ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103220
	bl DWCi_BTNlEnd
_02103220:
	ldr r0, _02103264 ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103244
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_02103244:
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _02103268 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103264: .word Choose
_02103268: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x0210326C
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _021032A0
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_021032A0:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _021032D8
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_021032D8:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103314
	bl DWCi_RAKUlEnd
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _02103330 ; =DWCi_SceneSetSelectWay
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02103314:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _02103334 ; =DWCi_SceneSetRakuButton
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_0210332C: .word Choose
_02103330: .word DWCi_SceneSetSelectWay
_02103334: .word DWCi_SceneSetRakuButton
	arm_func_end endScene2

	arm_static_func_start checkRaku
checkRaku: ; 0x02103338
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_RAKUlGetState
	cmp r0, #1
	beq _0210335C
	cmp r0, #4
	beq _02103378
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210335C:
	ldr r1, _021033BC ; =0x02116264
	mov r2, #1
	ldr r0, _021033C0 ; =endScene
	strb r2, [r1]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02103378:
	ldr r0, _021033BC ; =0x02116264
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
	ldr r0, _021033C4 ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021033BC: .word Choose
_021033C0: .word endScene
_021033C4: .word procError
	arm_func_end checkRaku

	arm_static_func_start procError
procError: ; 0x021033C8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _021033F0 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021033F0: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x021033F4
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103410 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103410: .word endScene
	arm_func_end procError1

	.data
ov17_021132F0:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_02113308:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_02113320:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Choose:
	.space 0x04

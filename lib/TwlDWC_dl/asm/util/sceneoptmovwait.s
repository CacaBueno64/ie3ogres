
	.include "asm/macros/function.inc"
	.public DWCi_ANIMElEnd
	.public DWCi_ANIMElInitEx
	.public DWCi_BTNlDisable
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
	.public DWCi_MOVlChangeCallback
	.public DWCi_MOVlEnd
	.public DWCi_MOVlInit
	.public DWCi_MOVlIsEnd
	.public DWCi_SceneOptMenu
	.public DWCi_SceneOptMovFailure
	.public DWCi_SceneOptMovUser
	.public DWCi_SetParam_
	.public DWCi_SNDlPlay
	.public DWCi_SNDlStop
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public GX_LoadBG2Scr

	.text
	arm_static_func_start DWCi_IsFold
DWCi_IsFold: ; 0x020FC180
	ldr r0, _020FC19C ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_020FC19C: .word 0x02FFFFA8
	arm_func_end DWCi_IsFold

	arm_func_start DWCi_SceneOptMovWait
DWCi_SceneOptMovWait: ; 0x020FC1A0
	stmfd sp!, {r4, lr}
	ldr r0, _020FC1E0 ; =cbMov
	bl DWCi_MOVlInit
	ldr r0, _020FC1E4 ; =0x02116228
	mov r4, #0
	strb r4, [r0]
	bl initGraphics
	mov r0, #0x1c
	bl DWCi_CMNlMsgDraw
	mov r0, r4
	bl DWCi_ANIMElInitEx
	mov r0, #0xb
	bl DWCi_SNDlPlay
	ldr r0, _020FC1E8 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC1E0: .word cbMov
_020FC1E4: .word Choose
_020FC1E8: .word procInit
	arm_func_end DWCi_SceneOptMovWait

	arm_static_func_start initGraphics
initGraphics: ; 0x020FC1EC
	stmfd sp!, {r3, lr}
	ldr r0, _020FC25C ; =0x0211303C
	ldr r1, _020FC260 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FC264 ; =0x04001008
	ldr r1, _020FC268 ; =0x0400000A
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
_020FC25C: .word ov17_0211303C
_020FC260: .word GX_LoadBG2Scr
_020FC264: .word 0x04001008
_020FC268: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FC26C
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
	ldr r0, _020FC2A4 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FC2A4: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FC2A8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl DWCi_CMNlButton
	ldr r0, _020FC2D0 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC2D0: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FC2D4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FC2F0 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC2F0: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FC2F4
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FC308
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FC328
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_020FC328:
	bl DWCi_IsFold
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FC340
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FC344
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _020FC36C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC36C: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FC370
	stmfd sp!, {r3, lr}
	ldr r0, _020FC3A0 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC388
	bl DWCi_MOVlEnd
_020FC388:
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FC3A4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC3A0: .word Choose
_020FC3A4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FC3A8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC420 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC3D8
	bl DWCi_MOVlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_020FC3D8:
	bl DWCi_BTNlEnd
	ldr r0, _020FC420 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC400
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_020FC400:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FC424 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC420: .word Choose
_020FC424: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FC428
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC45C
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FC45C:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC484
	bl DWCi_MOVlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020FC484:
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC4B0
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_020FC4B0:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _020FC514 ; =0x02116228
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC4E8
	mov r0, r4
	bl DWCi_SetParam_
	ldr r0, _020FC518 ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC4E8:
	cmp r0, #2
	mov r0, r4
	bne _020FC504
	bl DWCi_SetParam_
	ldr r0, _020FC51C ; =DWCi_SceneOptMovFailure
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC504:
	bl DWCi_SetParam_
	ldr r0, _020FC520 ; =DWCi_SceneOptMovUser
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC514: .word Choose
_020FC518: .word DWCi_SceneOptMenu
_020FC51C: .word DWCi_SceneOptMovFailure
_020FC520: .word DWCi_SceneOptMovUser
	arm_func_end endScene2

	arm_static_func_start cbMov
cbMov: ; 0x020FC524
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_SNDlStop
	cmp r4, #0
	bne _020FC548
	ldr r1, _020FC570 ; =0x02116228
	mov r2, #1
	mov r0, #0x10
	b _020FC554
_020FC548:
	ldr r1, _020FC570 ; =0x02116228
	mov r2, #2
	mov r0, #0x12
_020FC554:
	strb r2, [r1]
	bl DWCi_SNDlPlay
	mov r0, #0
	bl DWCi_MOVlChangeCallback
	ldr r0, _020FC574 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC570: .word Choose
_020FC574: .word endScene
	arm_func_end cbMov

	.data
ov17_0211303C:
	.asciz "char/yb5Multi.nsc.l"

	.bss
Choose:
	.space 0x04

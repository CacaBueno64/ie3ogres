
	.include "asm/macros/function.inc"
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
	.public DWCi_HLlLoad
	.public DWCi_SNDlPlay
	.public DWCi_SceneSetSelectAp
	.public DWCi_SceneSetUsbReady1
	.public DWCi_SetParam_
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
	arm_func_start DWCi_SceneSetUsbReady
DWCi_SceneSetUsbReady: ; 0x02105940
	stmfd sp!, {r4, lr}
	ldr r0, _02105988 ; =0x02116288
	mov r4, #0
	strb r4, [r0]
	bl initGraphics
	mov r0, #8
	bl DWCi_HLlLoad
	mov r0, #0x38
	mov r2, r4
	sub r1, r0, #0x39
	bl DWCi_COMMENTlDispEx
	mov r0, #1
	bl DWCi_CMNlStep
	mov r0, #0x27
	bl DWCi_CMNlMsgDraw
	ldr r0, _0210598C ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105988: .word Choose
_0210598C: .word procInit
	arm_func_end DWCi_SceneSetUsbReady

	arm_static_func_start initGraphics
initGraphics: ; 0x02105990
	stmfd sp!, {r3, lr}
	ldr r0, _02105A18 ; =0x021134AC
	ldr r1, _02105A1C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02105A20 ; =0x021134C4
	ldr r1, _02105A24 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02105A28 ; =0x021134DC
	ldr r1, _02105A2C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02105A30 ; =0x04001008
	ldr r1, _02105A34 ; =0x0400000A
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
_02105A18: .word ov17_021134AC
_02105A1C: .word GX_LoadBG2Char
_02105A20: .word ov17_021134C4
_02105A24: .word GX_LoadBGPltt
_02105A28: .word ov17_021134DC
_02105A2C: .word GX_LoadBG2Scr
_02105A30: .word 0x04001008
_02105A34: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02105A38
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
	ldr r0, _02105A9C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02105A9C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02105AA0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_CMNlButton
	ldr r0, _02105AD8 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105AD8: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x02105ADC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02105AFC ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105AFC: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02105B00
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02105B14
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02105B34
	mov r0, r4
	bl DWCi_BTNlSet
_02105B34:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02105B50
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x02105B54
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _02105B70
	cmp r0, #1
	beq _02105B7C
	ldmfd sp!, {r3, pc}
_02105B70:
	mov r0, #7
	bl DWCi_SNDlPlay
	b _02105B90
_02105B7C:
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _02105B9C ; =0x02116288
	mov r1, #1
	strb r1, [r0]
_02105B90:
	ldr r0, _02105BA0 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105B9C: .word Choose
_02105BA0: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x02105BA4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _02105BC0 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105BC0: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02105BC4
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _02105C24 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C04
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_02105C04:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _02105C28 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105C24: .word Choose
_02105C28: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02105C2C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02105CD8 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C60
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
_02105C60:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _02105CD8 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C94
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_02105C94:
	mov r0, #0
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _02105CD8 ; =0x02116288
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #2
	bne _02105CC8
	bl DWCi_SetParam_
	ldr r0, _02105CDC ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105CC8:
	bl DWCi_SetParam_
	ldr r0, _02105CE0 ; =DWCi_SceneSetUsbReady1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105CD8: .word Choose
_02105CDC: .word DWCi_SceneSetSelectAp
_02105CE0: .word DWCi_SceneSetUsbReady1
	arm_func_end endScene2

	.data
ov17_021134AC:
	.asciz "char/jbBgStep2.ncg.l"
	.balign 4, 0
ov17_021134C4:
	.asciz "char/ybBgStep2.ncl.l"
	.balign 4, 0
ov17_021134DC:
	.asciz "char/xb3Multi.nsc.l"

	.bss
Choose:
	.space 0x04

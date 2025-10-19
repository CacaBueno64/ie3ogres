
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
	.public DWCi_CMNlMsgNameDraw
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_HLlLoad
	.public DWCi_SNDlPlay
	.public DWCi_SNDlStop
	.public DWCi_SceneSetSelectAp
	.public DWCi_SceneSetUsbComplete
	.public DWCi_SceneSetUsbReady
	.public DWCi_SetParam_
	.public DWCi_USBAPlBegin
	.public DWCi_USBAPlEnd
	.public DWCi_USBAPlSetCallback
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlInitEx
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
	.public MIi_CpuClear16
	.public MIi_CpuCopy16
	.public OS_GetOwnerInfo

	.text
	arm_static_func_start DWCi_IsFold
DWCi_IsFold: ; 0x02105CE4
	ldr r0, _02105D00 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_02105D00: .word 0x02FFFFA8
	arm_func_end DWCi_IsFold

	arm_func_start DWCi_SceneSetUsbReady1
DWCi_SceneSetUsbReady1: ; 0x02105D04
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	ldr r0, _02105D90 ; =0x0211628C
	mov r5, #0
	strb r5, [r0]
	bl initGraphics
	mov r0, #8
	bl DWCi_HLlLoad
	mov r0, #2
	bl DWCi_CMNlStep
	add r0, sp, #0x16
	bl OS_GetOwnerInfo
	add r4, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x16
	bl MIi_CpuClear16
	ldrh r2, [sp, #0x30]
	add r0, sp, #0x1a
	mov r1, r4
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, r4
	mov r1, #0x28
	bl DWCi_CMNlMsgNameDraw
	mov r0, r5
	bl DWCi_ANIMElInitEx
	ldr r0, _02105D94 ; =cbUsb
	bl DWCi_USBAPlBegin
	mov r0, #0xb
	bl DWCi_SNDlPlay
	ldr r0, _02105D98 ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, pc}
_02105D90: .word Choose
_02105D94: .word cbUsb
_02105D98: .word procInit
	arm_func_end DWCi_SceneSetUsbReady1

	arm_static_func_start initGraphics
initGraphics: ; 0x02105D9C
	stmfd sp!, {r3, lr}
	ldr r0, _02105E24 ; =0x021134F0
	ldr r1, _02105E28 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02105E2C ; =0x02113508
	ldr r1, _02105E30 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02105E34 ; =0x02113520
	ldr r1, _02105E38 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02105E3C ; =0x04001008
	ldr r1, _02105E40 ; =0x0400000A
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
_02105E24: .word ov17_021134F0
_02105E28: .word GX_LoadBG2Char
_02105E2C: .word ov17_02113508
_02105E30: .word GX_LoadBGPltt
_02105E34: .word ov17_02113520
_02105E38: .word GX_LoadBG2Scr
_02105E3C: .word 0x04001008
_02105E40: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02105E44
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
	ldr r0, _02105E7C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105E7C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02105E80
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	bl DWCi_CMNlButton
	ldr r0, _02105EA8 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105EA8: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x02105EAC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02105ECC ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105ECC: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02105ED0
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02105EE4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02105F04
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02105F04:
	bl DWCi_IsFold
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02105F1C
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x02105F20
	stmfd sp!, {r4, lr}
	ldr r4, _02105F60 ; =0x0211628C
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #2
	strb r0, [r4]
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _02105F64 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105F60: .word Choose
_02105F64: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x02105F68
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _02105F84 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105F84: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02105F88
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _02105FF0 ; =0x0211628C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02105FD0
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_02105FD0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _02105FF4 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105FF0: .word Choose
_02105FF4: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02105FF8
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0210602C
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_0210602C:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_USBAPlEnd
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02106070
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_02106070:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	cmp r0, #2
	bne _021060A8
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _021060E4 ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021060A8:
	cmp r0, #3
	bne _021060C8
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _021060E8 ; =DWCi_SceneSetUsbReady
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021060C8:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _021060EC ; =DWCi_SceneSetUsbComplete
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021060E0: .word Choose
_021060E4: .word DWCi_SceneSetSelectAp
_021060E8: .word DWCi_SceneSetUsbReady
_021060EC: .word DWCi_SceneSetUsbComplete
	arm_func_end endScene2

	arm_static_func_start cbUsb
cbUsb: ; 0x021060F0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _021061E8 ; =0x0211628C
	ldrb r2, [r1]
	cmp r2, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021061E0
_02106118: ; jump table
	b _02106128 ; case 0
	b _0210616C ; case 1
	b _02106188 ; case 2
	b _021061C4 ; case 3
_02106128:
	mov r0, #3
	strb r0, [r1]
	bl DWCi_SNDlStop
	mov r0, #0x12
	bl DWCi_SNDlPlay
	mov r1, #1
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0x10
	str r4, [sp]
	bl DWCi_WINlInitEx
	bl DWCi_BTNlDisable
	ldr r0, _021061EC ; =procNotFound
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210616C:
	mov r0, #1
	strb r0, [r1]
	bl DWCi_SNDlStop
	ldr r0, _021061F0 ; =endScene
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02106188:
	bl DWCi_SNDlStop
	mov r4, #0
	mov r0, r4
	bl DWCi_USBAPlSetCallback
	mov r2, #1
	mov r1, r4
	sub r3, r2, #2
	mov r0, #0x11
	str r4, [sp]
	bl DWCi_WINlInitEx
	bl DWCi_BTNlDisable
	ldr r0, _021061F4 ; =procBoth
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021061C4:
	mov r0, #2
	strb r0, [r1]
	bl DWCi_SNDlStop
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, _021061F0 ; =endScene
	bl DWCi_ChangeScene
_021061E0:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021061E8: .word Choose
_021061EC: .word procNotFound
_021061F0: .word endScene
_021061F4: .word procBoth
	arm_func_end cbUsb

	arm_static_func_start procNotFound
procNotFound: ; 0x021061F8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _02106220 ; =procNotFound1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02106220: .word procNotFound1
	arm_func_end procNotFound

	arm_static_func_start procNotFound1
procNotFound1: ; 0x02106224
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02106240 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02106240: .word endScene
	arm_func_end procNotFound1

	arm_static_func_start procBoth
procBoth: ; 0x02106244
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	beq _0210626C
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _02106290 ; =0x0211628C
	mov r2, #3
	mov r0, #6
	b _02106278
_0210626C:
	ldr r1, _02106290 ; =0x0211628C
	mov r2, #1
	mov r0, #7
_02106278:
	strb r2, [r1]
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _02106294 ; =procBoth1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02106290: .word Choose
_02106294: .word procBoth1
	arm_func_end procBoth

	arm_static_func_start procBoth1
procBoth1: ; 0x02106298
	stmfd sp!, {r4, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _021062EC ; =0x0211628C
	ldrb r0, [r4]
	cmp r0, #1
	bne _021062C4
	ldr r0, _021062F0 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021062C4:
	mov r0, #0xb
	bl DWCi_SNDlPlay
	bl DWCi_BTNlEnable
	mov r1, #0
	ldr r0, _021062F4 ; =cbUsb
	strb r1, [r4]
	bl DWCi_USBAPlSetCallback
	ldr r0, _021062F8 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021062EC: .word Choose
_021062F0: .word endScene
_021062F4: .word cbUsb
_021062F8: .word procScene
	arm_func_end procBoth1

	.data
ov17_021134F0:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_02113508:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_02113520:
	.asciz "char/jb4Usb.nsc.l"

	.bss
Choose:
	.space 0x04

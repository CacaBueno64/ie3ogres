
	.include "asm/macros/function.inc"
	.public DWC_BACKUPlCheckAddress
	.public DWC_BACKUPlCheckIp
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExObj
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_FOCUSlDelete
	.public DWCi_FOCUSlDisp
	.public DWCi_GetParam2_
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_HLlLoadList
	.public DWCi_Language
	.public DWCi_OBJlDelete
	.public DWCi_SceneSetEdit32
	.public DWCi_SceneSetEditAddress
	.public DWCi_SceneSetListSave
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public DWCi_SceneSetSelectAp
	.public DWCi_SceneSetSelectWay
	.public DWCi_SceneSetTest
	.public DWCi_SCREENlInit
	.public DWCi_SCREENlEnd
	.public DWCi_SCREENlRenew
	.public DWCi_SCREENlCopy
	.public DWCi_SCREENlCopyPalette
	.public DWCi_SCREENlSetPalette
	.public DWCi_SBlInit
	.public DWCi_SBlEnd
	.public DWCi_SBlGet
	.public DWCi_SBlGetState
	.public DWCi_SBlSet
	.public DWCi_SBlEnable
	.public DWCi_SBlDisable
	.public DWCi_SETTIGNlGet
	.public DWCi_SETTINGlSetIpAuto
	.public DWCi_SETTINGlSetDnsAuto
	.public DWCi_SETTINGlSetSetting
	.public DWCi_SNDlPlay
	.public DWCi_WINlInitEx
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_FNTlDrawStringEx
	.public DWCi_FNTlClear
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public DWCi_IPTlCheckRepeat
	.public DWCi_IPTlCheckRelease
	.public DWCi_TPlCheckATrigger
	.public DWCi_STRlNLen
	.public DWCi_STRlConvertStringAsciiToUnicode
	.public DWCi_BACKUPlConvMaskCidr
	.public FX_DivS32
	.public FX_ModS32
	.public GX_LoadBG2Char
	.public GX_LoadBG3Char
	.public GX_LoadBG3Scr
	.public GX_LoadBGPltt
	.public GX_LoadOBJPltt
	.public MI_CpuFill8
	.public OS_SNPrintf
	.public memset
	.public DWCi_R_SCR

	.text
	arm_func_start DWCi_SceneSetList
DWCi_SceneSetList: ; 0x020FFF90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	bl DWCi_SETTIGNlGet
	mov r6, r0
	mov r0, #0x48
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _02100138 ; =0x0211624C
	mov r1, #0xc
	str r0, [r4, #8]
	ldrb r2, [r6, #0xf6]
	strb r2, [r0, #0x43]
	ldr r0, [r4, #8]
	strb r1, [r0, #0x42]
	bl calcParam
	bl initGraphics
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _020FFFF8
	bl DWCi_Language
	ldrb r2, [r6, #0xf4]
	ldr r1, _0210013C ; =0x0211229B
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	add r2, r2, #1
	b _02100004
_020FFFF8:
	mov r0, #0x45
	sub r1, r0, #0x46
	mov r2, #0
_02100004:
	bl DWCi_COMMENTlDispEx
	mov r5, #1
	mov r0, r5
	bl DWCi_CMNlStep
	bl DWCi_HLlLoadList
	ldrh r2, [r4, #4]
	mov r0, #0x37
	ldr r1, _02100140 ; =0xE1FC780F
	mul r3, r2, r0
	smull r0, r2, r1, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #7
	str r2, [sp]
	mov r0, #2
	mov r1, #0x55
	mov r2, #0xf1
	mov r3, #0x41
	bl DWCi_SBlInit
	mov r7, #0
	mov r1, r5
	mov r0, r7
	bl DWCi_FNTlFormBgEx
	ldr r1, [r4, #8]
	mov r5, r7
	str r0, [r1, #0x14]
	mov r8, #0x29
_02100070:
	mov r0, r5
	mov r1, r8
	bl DWCi_CEINlSetExObj
	ldr r1, [r4, #8]
	add r1, r1, r7, lsl #2
	add r7, r7, #1
	str r0, [r1, #0x18]
	cmp r7, #7
	blt _02100070
	ldrb r0, [r6, #0xe7]
	cmp r0, #1
	beq _021000AC
	cmp r0, #2
	beq _021000B8
	b _021000E4
_021000AC:
	mov r0, r5
	mov r1, #0x50
	b _021000C0
_021000B8:
	mov r0, r5
	mov r1, #0x51
_021000C0:
	bl DWCi_CEINlSetExObj
	ldr r1, [r4, #8]
	str r0, [r1, #0x34]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
_021000E4:
	mov r5, #0
	ldr r1, _02100144 ; =taskVBlank
	mov r2, r5
	mov r0, #1
	mov r3, #0x6e
	bl DWCi_TSKlForm
	ldr r2, [r4, #8]
	ldr r1, _02100148 ; =taskPushCount
	str r0, [r2, #0x3c]
	mov r0, r5
	mov r2, r5
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1]
	bl drawWindow
	bl dispFocus
	ldr r0, _0210014C ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02100138: .word Focus
_0210013C: .word MSG_IDX
_02100140: .word 0xE1FC780F
_02100144: .word taskVBlank
_02100148: .word taskPushCount
_0210014C: .word procInit
	arm_func_end DWCi_SceneSetList

	arm_static_func_start initGraphics
initGraphics: ; 0x02100150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r3, _02100310 ; =0x02112384
	add r4, sp, #0x2b
	mov r2, #0xb
_02100164:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _02100164
	ldrb r0, [r3]
	ldr r3, _02100314 ; =0x02112354
	add r5, sp, #0x16
	strb r0, [r4]
	mov r2, #0xa
_02100190:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _02100190
	ldrb r0, [r3]
	ldr r4, _02100318 ; =0x0211236C
	add r3, sp, #0
	strb r0, [r5]
	mov r2, #0xb
_021001BC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _021001BC
	ldr r4, _0210031C ; =0x0400000C
	ldr r0, _02100320 ; =0x021131F0
	ldrh r2, [r4]
	ldr r1, _02100324 ; =GX_LoadOBJPltt
	and r2, r2, #0x43
	orr r2, r2, #0x218
	orr r2, r2, #0xc00
	strh r2, [r4]
	bl DWCi_CMNlLoadResource
	ldr r0, _02100328 ; =0x02113204
	ldr r1, _0210032C ; =GX_LoadBG3Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02100330 ; =0x0211321C
	ldr r1, _02100334 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	add r8, sp, #0x16
	ldr r1, _02100338 ; =GX_LoadBGPltt
	mov r0, r8
	bl DWCi_CMNlLoadResource
	ldr r0, _0210033C ; =0x02113234
	ldr r1, _02100340 ; =GX_LoadBG3Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0x2b
	bl DWCi_Char
	mov r7, #0
	mov r6, #4
	mov r1, r7
	mov r2, r6
	bl DWCi_ARClReadEx
	ldr r5, _02100344 ; =0x0211624C
	ldr r1, [r5, #8]
	str r0, [r1, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl DWCi_SCREENlInit
	bl DWCi_SCREENlRenew
	mov r0, r8
	bl DWCi_Char
	mov r1, r7
	mov r2, r6
	bl DWCi_ARClReadEx
	ldr r1, [r5, #8]
	str r0, [r1, #0xc]
	add r0, sp, #0
	bl DWCi_Char
	mov r1, r7
	mov r2, r6
	bl DWCi_ARClReadEx
	ldr r2, [r5, #8]
	ldr r1, _02100348 ; =0x04001008
	str r0, [r2, #0x10]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	sub r2, r1, #0x1000
	ldrh r0, [r2]
	sub r1, r4, #2
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r4]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r4]
	ldrh r0, [r4, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r4, #2]
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02100310: .word ov17_02112384
_02100314: .word ov17_02112354
_02100318: .word ov17_0211236C
_0210031C: .word 0x0400000C
_02100320: .word ov17_021131F0
_02100324: .word GX_LoadOBJPltt
_02100328: .word ov17_02113204
_0210032C: .word GX_LoadBG3Char
_02100330: .word ov17_0211321C
_02100334: .word GX_LoadBG2Char
_02100338: .word GX_LoadBGPltt
_0210033C: .word ov17_02113234
_02100340: .word GX_LoadBG3Scr
_02100344: .word Focus
_02100348: .word 0x04001008
	arm_func_end initGraphics

	arm_static_func_start calcParam
calcParam: ; 0x0210034C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_SETTIGNlGet
	mov r4, #0
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, _02100388 ; =0x0211624C
	streqh r4, [r0, #4]
	streqb r4, [r0]
	streqb r4, [r0, #2]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100388: .word Focus
	arm_func_end calcParam

	arm_static_func_start procInit
procInit: ; 0x0210038C
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
	mov r4, #0x1d
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
	ldr r0, _021003F0 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021003F0: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x021003F4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02100424 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02100424: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x02100428
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02100438
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0210066C ; =0x0211624C
	mov r4, #0
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x45]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl inputWinButton
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r0, r6
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02100488
	ldrb r0, [r7]
	bl pushWinButton
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100488:
	mov r5, #2
	mov r0, r5
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _021004BC
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r1, [r7, #8]
	mov r2, #0xd
	ldr r0, _02100670 ; =endScene
	strb r2, [r1, #0x40]
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021004BC:
	mov r8, #0x200
	mov r0, r8
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02100528
	ldrh r0, [r7, #4]
	cmp r0, #0x91
	bne _02100500
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r7, #8]
	strb r6, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100500:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, r4
	ldr r1, _02100674 ; =taskDown
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r7, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100528:
	mov r0, r8
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x100
	mov r0, r8
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _021005AC
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _02100584
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r7, #8]
	strb r6, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100584:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, r4
	ldr r1, _02100678 ; =taskUp
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r7, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021005AC:
	mov r0, r8
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x40
	mov r0, r8
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _021005E4
	mov r0, r6
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021005E4:
	mov r0, r8
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0x80
	mov r0, r6
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _0210061C
	mov r0, #3
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210061C:
	mov r0, r6
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x20
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02100650
	mov r0, r4
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100650:
	mov r0, #0x10
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210066C: .word Focus
_02100670: .word endScene
_02100674: .word taskDown
_02100678: .word taskUp
	arm_func_end input

	arm_static_func_start inputWinButton
inputWinButton: ; 0x0210067C
	stmfd sp!, {r4, lr}
	bl DWCi_SETTIGNlGet
	bl isPush
	mov r4, r0
	cmp r4, #0xe
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl isEnablePush
	cmp r0, #0
	bne _021006B4
	mov r0, #9
	bl DWCi_SNDlPlay
	mov r0, #1
	ldmfd sp!, {r4, pc}
_021006B4:
	mov r0, r4
	bl applyForcus1
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021006F0
_021006C8: ; jump table
	b _021006F0 ; case 0
	b _021006F0 ; case 1
	b _021006EC ; case 2
	b _021006EC ; case 3
	b _021006F0 ; case 4
	b _021006F0 ; case 5
	b _021006F0 ; case 6
	b _021006EC ; case 7
	b _021006EC ; case 8
_021006EC:
	bl pushButtonYesNo
_021006F0:
	mov r0, r4
	bl pushWinButton
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end inputWinButton

	arm_static_func_start pushWinButton
pushWinButton: ; 0x02100700
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl isEnablePush
	cmp r0, #0
	bne _02100728
	mov r0, #9
	bl DWCi_SNDlPlay
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100728:
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021007A0
_02100734: ; jump table
	b _021007A0 ; case 0
	b _021007A0 ; case 1
	b _02100758 ; case 2
	b _02100758 ; case 3
	b _021007A0 ; case 4
	b _021007A0 ; case 5
	b _021007A0 ; case 6
	b _0210077C ; case 7
	b _0210077C ; case 8
_02100758:
	mov r0, #6
	bl DWCi_SNDlPlay
	sub r0, r4, #2
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl pushIpAuto
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210077C:
	mov r0, #6
	bl DWCi_SNDlPlay
	sub r0, r4, #7
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl pushDnsAuto
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021007A0:
	ldr r0, _02100868 ; =0x0211624C
	sub r1, r4, #0xb
	ldr r0, [r0, #8]
	cmp r1, #1
	strb r4, [r0, #0x40]
	bhi _02100818
	bl dispPushButton
	bl isCorrect
	cmp r0, #0
	bne _021007FC
	mov r0, #9
	bl DWCi_SNDlPlay
	mov r1, #1
	mov r12, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #6
	str r12, [sp]
	bl DWCi_WINlInitEx
	ldr r0, _0210086C ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021007FC:
	cmp r4, #0xb
	bne _02100810
	mov r0, #6
_02100808:
	bl DWCi_SNDlPlay
	b _02100854
_02100810:
	mov r0, #0xe
	b _02100808
_02100818:
	cmp r4, #0xd
	bne _0210082C
	bl dispPushButton
	mov r0, #7
	b _02100808
_0210082C:
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _02100870 ; =0x021122CC
	ldrb r0, [r0, r4]
	bl calcColumnIdx
	mov r2, r0
	mov r0, #0
	mov r1, #1
	bl dispObj
	bl setOffset
_02100854:
	bl DWCi_SBlDisable
	ldr r0, _02100874 ; =endScene
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100868: .word Focus
_0210086C: .word procError
_02100870: .word FCS2CLM_TBL
_02100874: .word endScene
	arm_func_end pushWinButton

	arm_static_func_start pushIpAuto
pushIpAuto: ; 0x02100878
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl DWCi_SETTIGNlGet
	ldrb r1, [r0, #0xf5]
	cmp r1, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	beq _021008B4
	ldr r0, _021008E0 ; =0x0211624C
	mov r5, #1
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x43]
	cmp r0, #0
	moveq r5, #0
	b _021008C8
_021008B4:
	ldr r1, _021008E0 ; =0x0211624C
	ldrb r2, [r0, #0xf6]
	ldr r0, [r1, #8]
	mov r5, #0
	strb r2, [r0, #0x43]
_021008C8:
	mov r0, r4
	bl DWCi_SETTINGlSetIpAuto
	mov r0, r5
	bl DWCi_SETTINGlSetDnsAuto
	bl drawWindow
	ldmfd sp!, {r3, r4, r5, pc}
_021008E0: .word Focus
	arm_func_end pushIpAuto

	arm_static_func_start pushDnsAuto
pushDnsAuto: ; 0x021008E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xf6]
	cmp r0, r4
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02100918 ; =0x0211624C
	mov r0, r4
	ldr r1, [r1, #8]
	strb r4, [r1, #0x43]
	bl DWCi_SETTINGlSetDnsAuto
	bl drawWindow
	ldmfd sp!, {r4, pc}
_02100918: .word Focus
	arm_func_end pushDnsAuto

	arm_static_func_start draw
draw: ; 0x0210091C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02100B2C ; =0x0211624C
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x41]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x41]
	bl DWCi_SBlGetState
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02100954: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _02100974 ; case 1
	b _02100984 ; case 2
	b _021009CC ; case 3
	b _02100A64 ; case 4
	b _02100B1C ; case 5
	b _02100AC0 ; case 6
	b _02100B1C ; case 7
_02100974:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x45]
	ldmfd sp!, {r3, r4, r5, pc}
_02100984:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x41]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_FOCUSlDelete
	bl DWCi_SBlGet
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _02100B30 ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	strh r3, [r4, #4]
	bl drawWindow
	ldr r0, [r4, #8]
	mov r1, #4
	strb r1, [r0, #0x41]
	ldmfd sp!, {r3, r4, r5, pc}
_021009CC:
	ldr r0, [r4, #8]
	mov r5, #0
	strb r5, [r0, #0x45]
	bl DWCi_SBlGet
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _02100B30 ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	strh r3, [r4, #4]
	mov r0, #0x13
	bl DWCi_SNDlPlay
	bl drawWindow
	ldrh r0, [r4, #4]
	mov r1, #0x1d
	bl FX_ModS32
	cmp r0, #0
	bne _02100A20
	bl applyForcus
	ldmfd sp!, {r3, r4, r5, pc}
_02100A20:
	cmp r0, #0x10
	mov r3, #0x78
	bge _02100A48
	ldr r1, _02100B34 ; =taskUp
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A48:
	ldr r1, _02100B38 ; =taskDown
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A64:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _02100A98
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A98:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _02100B34 ; =taskUp
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100AC0:
	ldrh r0, [r4, #4]
	cmp r0, #0x91
	bne _02100AF4
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100AF4:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _02100B38 ; =taskDown
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100B1C:
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100B2C: .word Focus
_02100B30: .word 0x094F2095
_02100B34: .word taskUp
_02100B38: .word taskDown
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x02100B3C
	stmfd sp!, {r3, lr}
	bl DWCi_SBlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _02100B58 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02100B58: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02100B5C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
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
	mov r2, #0x1d
	bl DWCi_EFFlFade
	ldr r0, _02100BB0 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02100BB0: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02100BB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	ldr r6, _02100E5C ; =0x0211624C
	mov r0, r7
	mov r4, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, r4
	mov r0, r5
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #8]
	mov r0, r5
	ldr r1, [r1]
	bl DWCi_TSKlDeleteEx
	ldr r1, [r6, #8]
	mov r0, r7
	ldr r1, [r1, #0x3c]
	bl DWCi_TSKlDeleteEx
_02100C08:
	ldr r0, [r6, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x18]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #7
	blt _02100C08
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02100C38
	bl DWCi_OBJlDelete
_02100C38:
	bl DWCi_SBlEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_FOCUSlDelete
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xc
	beq _02100C5C
	bl DWCi_COMMENTlDelete
_02100C5C:
	bl DWCi_SCREENlEnd
	ldr r0, [r6, #8]
	ldr r0, [r0, #8]
	bl DWCi_ARClRelease
	mov r5, #0
_02100C70:
	ldr r0, [r6, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl DWCi_ARClRelease
	add r5, r5, #1
	cmp r5, #2
	blt _02100C70
	ldr r0, _02100E60 ; =0x02113248
	ldr r1, _02100E64 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #0x1d
	bl DWCi_GXlInvisible
	ldr r0, _02100E68 ; =0x04000010
	str r4, [r0]
	sub r1, r0, #4
	str r4, [r0, #8]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _02100E50
_02100CE8: ; jump table
	b _02100D20 ; case 0
	b _02100D20 ; case 1
	b _02100E50 ; case 2
	b _02100E50 ; case 3
	b _02100D3C ; case 4
	b _02100D3C ; case 5
	b _02100D3C ; case 6
	b _02100E50 ; case 7
	b _02100E50 ; case 8
	b _02100D3C ; case 9
	b _02100D3C ; case 10
	b _02100D68 ; case 11
	b _02100DFC ; case 12
	b _02100E10 ; case 13
_02100D20:
	mov r1, r4
	bl DWCi_SetParam2_
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02100E6C ; =DWCi_SceneSetEdit32
	b _02100E4C
_02100D3C:
	sub r5, r0, #4
	cmp r0, #9
	subhs r5, r5, #2
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r4
	bl DWCi_SetParam2_
	ldr r0, _02100E70 ; =DWCi_SceneSetEditAddress
	b _02100E4C
_02100D68:
	bl DWCi_SETTIGNlGet
	mov r6, r0
	add r0, r6, #0xf0
	bl DWCi_BACKUPlConvMaskCidr
	strb r0, [r6, #0xd0]
	ldrb r0, [r6, #0xf5]
	cmp r0, #0
	beq _02100DC0
	mov r5, #4
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xc0
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xc4
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xf0
	bl MI_CpuFill8
	strb r4, [r6, #0xd0]
_02100DC0:
	ldrb r0, [r6, #0xf6]
	cmp r0, #0
	beq _02100DDC
	add r0, r6, #0xc8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_02100DDC:
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam2_
	ldr r0, _02100E74 ; =DWCi_SceneSetTest
	b _02100E4C
_02100DFC:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _02100E78 ; =DWCi_SceneSetListSave
	b _02100E4C
_02100E10:
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _02100E30
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02100E7C ; =DWCi_SceneSetSelectAp
	b _02100E4C
_02100E30:
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xf4]
	bl DWCi_SETTINGlSetSetting
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _02100E80 ; =DWCi_SceneSetSelectWay
_02100E4C:
	bl DWCi_ChangeScene
_02100E50:
	ldr r0, _02100E84 ; =0x02116254
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02100E5C: .word Focus
_02100E60: .word ov17_02113248
_02100E64: .word GX_LoadOBJPltt
_02100E68: .word 0x04000010
_02100E6C: .word DWCi_SceneSetEdit32
_02100E70: .word DWCi_SceneSetEditAddress
_02100E74: .word DWCi_SceneSetTest
_02100E78: .word DWCi_SceneSetListSave
_02100E7C: .word DWCi_SceneSetSelectAp
_02100E80: .word DWCi_SceneSetSelectWay
_02100E84: .word MemSsl
	arm_func_end endScene2

	arm_static_func_start drawWindow
drawWindow: ; 0x02100E88
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02100F3C ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r4, #4]
	bl FX_DivS32
	ldr r1, [r4, #8]
	mov r4, r0
	mov r6, #0
	ldr r0, [r1, #0x14]
	mov r1, r6
	bl DWCi_FNTlClear
	mov r5, r4
_02100EB8:
	mov r0, r5
	mov r1, r6
	bl drawColumnChar
	add r6, r6, #1
	cmp r6, #5
	add r5, r5, #1
	blt _02100EB8
	ldr r0, _02100F3C ; =0x0211624C
	ldr r1, _02100F40 ; =0x021122E6
	mov r2, r4, lsl #1
	ldr r3, [r0, #8]
	ldrh r0, [r1, r2]
	ldr r2, [r3, #8]
	mov r5, #0
	mov r1, r5
	add r0, r2, r0, lsl #1
	mov r2, #0x1e
	mov r3, #0x13
	bl DWCi_SCREENlCopy
_02100F04:
	mov r0, r4
	mov r1, r5
	bl drawColumnObj
	add r5, r5, #1
	cmp r5, #5
	add r4, r4, #1
	blt _02100F04
	bl DWCi_SCREENlRenew
	ldr r0, _02100F3C ; =0x0211624C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x14]
	bl DWCi_FNTlRenewBg
	bl setOffset
	ldmfd sp!, {r4, r5, r6, pc}
_02100F3C: .word Focus
_02100F40: .word BACK_POS
	arm_func_end drawWindow

	arm_static_func_start drawColumnChar
drawColumnChar: ; 0x02100F44
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r6, r0
	mov r5, r1
	bl DWCi_SETTIGNlGet
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _021010DC
_02100F64: ; jump table
	b _02100F88 ; case 0
	b _02100F9C ; case 1
	b _021010DC ; case 2
	b _02101030 ; case 3
	b _02101054 ; case 4
	b _02101078 ; case 5
	b _021010DC ; case 6
	b _0210109C ; case 7
	b _021010C0 ; case 8
_02100F88:
	mov r1, r5
	add r0, r0, #0x40
	bl drawString
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02100F9C:
	ldrb r1, [r0, #0xe6]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02100FE0
_02100FB4: ; jump table
	b _02100FC4 ; case 0
	b _02100FCC ; case 1
	b _02100FD4 ; case 2
	b _02100FDC ; case 3
_02100FC4:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02100FCC:
	mov r4, #0xa
	b _02100FE0
_02100FD4:
	mov r4, #0x1a
	b _02100FE0
_02100FDC:
	mov r4, #0x20
_02100FE0:
	ldrb r0, [r0, #0xe6]
	add r6, sp, #0
	mov r1, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1a
	cmp r0, #1
	addeq r0, r4, r4, lsr #31
	moveq r4, r0, asr #1
	mov r0, r6
	mov r2, #0x21
	bl MI_CpuFill8
	mov r0, r6
	mov r2, r4
	mov r1, #0x2a
	bl memset
	mov r0, r6
	mov r1, r5
	bl drawString
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101030:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc0
	bl drawAddress
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101054:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xf0
	bl drawAddress
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101078:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc4
	bl drawAddress
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0210109C:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc8
	bl drawAddress
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021010C0:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xcc
	bl drawAddress
_021010DC:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end drawColumnChar

	arm_static_func_start drawColumnObj
drawColumnObj: ; 0x021010E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	bl DWCi_SETTIGNlGet
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021011F8
_02101100: ; jump table
	b _02101124 ; case 0
	b _02101124 ; case 1
	b _02101140 ; case 2
	b _0210118C ; case 3
	b _0210118C ; case 4
	b _0210118C ; case 5
	b _02101194 ; case 6
	b _021011E0 ; case 7
	b _021011E0 ; case 8
_02101124:
	mov r4, #0
	mov r0, r4
	mov r5, r4
	bl isEnablePush
	cmp r0, #0
	moveq r5, #2
	b _02101200
_02101140:
	ldr r2, _02101214 ; =0x0211624C
	ldrb r0, [r0, #0xf5]
	ldr r3, [r2, #8]
	mov r1, #0
	ldrb r2, [r3, #4]
	cmp r0, #0
	movne r4, #1
	movne r0, #4
	moveq r4, #2
	moveq r0, #3
	cmp r2, #0
	mov r5, r1
	ldrb r2, [r3, #5]
	movne r5, #1
_02101178:
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl dispObj
	b _02101200
_0210118C:
	ldrb r0, [r0, #0xf5]
	b _021011E4
_02101194:
	ldrb r2, [r0, #0xf6]
	mov r1, #0
	mov r5, r1
	cmp r2, #0
	movne r4, #1
	movne r0, #4
	bne _021011C4
	ldrb r0, [r0, #0xf5]
	mov r4, #2
	cmp r0, #0
	moveq r5, #2
	mov r0, #3
_021011C4:
	ldr r2, _02101214 ; =0x0211624C
	ldr r3, [r2, #8]
	ldrb r2, [r3, #6]
	cmp r2, #0
	movne r5, #1
	ldrb r2, [r3, #7]
	b _02101178
_021011E0:
	ldrb r0, [r0, #0xf6]
_021011E4:
	cmp r0, #0
	mov r4, #0
	movne r5, #2
	moveq r5, r4
	b _02101200
_021011F8:
	mov r4, #0
	mov r5, #2
_02101200:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl dispObj
	ldmfd sp!, {r4, r5, r6, pc}
_02101214: .word Focus
	arm_func_end drawColumnObj

	arm_static_func_start isEnablePush
isEnablePush: ; 0x02101218
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_SETTIGNlGet
	cmp r4, #0xa
	mov r1, #1
	addls pc, pc, r4, lsl #2
	b _0210129C
_02101234: ; jump table
	b _02101270 ; case 0
	b _02101270 ; case 1
	b _0210129C ; case 2
	b _0210129C ; case 3
	b _02101288 ; case 4
	b _02101288 ; case 5
	b _02101288 ; case 6
	b _02101260 ; case 7
	b _0210129C ; case 8
	b _02101290 ; case 9
	b _02101290 ; case 10
_02101260:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	moveq r1, #0
	b _0210129C
_02101270:
	ldrb r0, [r0, #0xe7]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	movls r1, #0
	b _0210129C
_02101288:
	ldrb r0, [r0, #0xf5]
	b _02101294
_02101290:
	ldrb r0, [r0, #0xf6]
_02101294:
	cmp r0, #0
	movne r1, #0
_0210129C:
	mov r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end isEnablePush

	arm_static_func_start dispObj
dispObj: ; 0x021012A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r7, _02101388 ; =0x0211624C
	mov r12, #0xc0
	ldr r3, [r7, #8]
	mov r6, r0
	mov r4, #0x8f
	add r3, r3, #0x18
	sub r0, r6, #1
	mov lr, #0xcc
	mov r5, r1
	strh lr, [sp]
	strh r12, [sp, #2]
	strh r12, [sp, #4]
	strh r4, [sp, #6]
	strh r4, [sp, #8]
	cmp r0, #1
	add r4, r3, r2, lsl #2
	bhi _02101308
	mov r0, r2
	bl calcIdxColumn
	cmp r0, #2
	ldr r0, [r7, #8]
	addeq r4, r0, #0x2c
	addne r4, r0, #0x30
_02101308:
	ldr r0, _0210138C ; =0x021122D7
	add r1, r6, r6, lsl #1
	add r0, r0, r1
	ldrb r1, [r5, r0]
	ldr r2, [r4]
	cmp r1, #0
	ldreq r0, _02101390 ; =0xFE00FF00
	ldreq r1, [r2]
	addeq sp, sp, #0xc
	andeq r0, r1, r0
	orreq r0, r0, #0x1000000
	streq r0, [r2]
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	bl DWCi_CEINlSet
	ldr r3, [r4]
	add r0, sp, #0
	mov r1, r6, lsl #1
	ldrh r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _02101390 ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02101388: .word Focus
_0210138C: .word CELL_IDX
_02101390: .word 0xFE00FF00
	arm_func_end dispObj

	arm_static_func_start drawString
drawString: ; 0x02101394
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r4, r1
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl MI_CpuFill8
	mov r0, r8
	mov r1, #0x20
	bl DWCi_STRlNLen
	mov r5, r0
	mov r7, r5
	cmp r5, #0x10
	movgt r7, #0x10
	cmp r7, #0
	mov r6, #0
	ble _02101404
	ldr r2, _021014D8 ; =0x0000E01D
	add r1, sp, #0xc
_021013E4:
	ldrb r3, [r8, r6]
	mov r0, r6, lsl #1
	add r6, r6, #1
	cmp r3, #0x20
	streqh r2, [r1, r0]
	strneh r3, [r1, r0]
	cmp r6, r7
	blt _021013E4
_02101404:
	mov r0, #0x1d
	mul r0, r4, r0
	add r6, r0, #2
	mov r0, #8
	add r4, sp, #0xc
	stmia sp, {r0, r4}
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _021014DC ; =0x0211624C
	cmp r5, #0x10
	ldr r0, [r0, #8]
	addle r6, r6, #5
	ldr r0, [r0, #0x14]
	mov r2, r6
	mov r1, #0x48
	mov r3, #2
	bl DWCi_FNTlDrawStringEx
	cmp r5, #0x10
	addle sp, sp, #0x30
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r0, r4
	mov r1, r7
	mov r2, #0x22
	bl MI_CpuFill8
	sub r3, r5, #0x10
	cmp r3, #0
	ble _0210149C
	ldr r1, _021014D8 ; =0x0000E01D
_02101478:
	add r0, r8, r7
	ldrb r2, [r0, #0x10]
	mov r0, r7, lsl #1
	add r7, r7, #1
	cmp r2, #0x20
	streqh r1, [r4, r0]
	strneh r2, [r4, r0]
	cmp r7, r3
	blt _02101478
_0210149C:
	mov r1, #8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _021014DC ; =0x0211624C
	add r2, r6, #0xc
	ldr r0, [r0, #8]
	mov r1, #0x48
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl DWCi_FNTlDrawStringEx
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021014D8: .word 0x0000E01D
_021014DC: .word Focus
	arm_func_end drawString

	arm_static_func_start drawAddress
drawAddress: ; 0x021014E0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x3c
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r5, [r0, #3]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r3, [r0]
	add r7, sp, #0xc
	mov r6, #0x10
	mov r4, r1
	ldr r2, _02101570 ; =0x02113260
	mov r0, r7
	mov r1, r6
	str r5, [sp, #8]
	bl OS_SNPrintf
	add r5, sp, #0x1c
	mov r1, r7
	mov r0, r5
	mov r2, r6
	bl DWCi_STRlConvertStringAsciiToUnicode
	mov r2, #7
	mov r0, #0x1d
	mul r1, r4, r0
	stmia sp, {r2, r5}
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _02101574 ; =0x0211624C
	add r2, r1, #8
	ldr r0, [r0, #8]
	mov r1, #0x5f
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl DWCi_FNTlDrawStringEx
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02101570: .word ov17_02113260
_02101574: .word Focus
	arm_func_end drawAddress

	arm_static_func_start setOffset
setOffset: ; 0x02101578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _0210171C ; =0x0211624C
	mov r7, #0x1d
	ldrh r0, [r5, #4]
	mov r1, r7
	ldr r4, _02101720 ; =0xFE00FF00
	bl FX_DivS32
	mov r6, r0
	ldrh r0, [r5, #4]
	mov r1, r7
	bl FX_ModS32
	ldr r2, [r5, #8]
	rsb r1, r0, #0x34
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _021015E8
	ldr r7, [r2, #0x34]
	mov r3, #0x26
	ldr r2, [r7]
	cmp r6, #0
	movne r3, #0x100
	and r0, r1, #0xff
	and r2, r2, r4
	mov r3, r3, lsl #0x17
	orr r0, r2, r0
	orr r0, r0, r3, lsr #7
	str r0, [r7]
_021015E8:
	ldr r12, _02101724 ; =0x01FF0000
	mov r2, r1
	mov r3, #0
_021015F4:
	ldr r0, [r5, #8]
	and lr, r2, #0xff
	add r0, r0, r3, lsl #2
	ldr r0, [r0, #0x18]
	add r3, r3, #1
	ldr r8, [r0]
	cmp r3, #5
	mov r7, r8
	and r8, r8, r12
	mov r8, r8, lsr #0x10
	and r7, r7, r4
	mov r8, r8, lsl #0x17
	orr r7, r7, lr
	orr r7, r7, r8, lsr #7
	str r7, [r0]
	add r2, r2, #0x1d
	blt _021015F4
	ldr r4, _0210171C ; =0x0211624C
	cmp r6, #2
	ldr r0, [r4, #8]
	ldr r3, _02101720 ; =0xFE00FF00
	ldrgt r2, [r0, #0x2c]
	ldrgt r0, [r2]
	andgt r0, r0, r3
	orrgt r0, r0, #0x1000000
	strgt r0, [r2]
	bgt _0210169C
	rsb r5, r6, #2
	mov r2, #0x1d
	mla r12, r5, r2, r1
	ldr r0, [r0, #0x2c]
	ldr r2, _02101724 ; =0x01FF0000
	ldr lr, [r0]
	mov r5, lr
	and r2, lr, r2
	mov lr, r2, lsr #0x10
	and r2, r12, #0xff
	and r5, r5, r3
	mov r12, lr, lsl #0x17
	orr r2, r5, r2
	orr r2, r2, r12, lsr #7
	str r2, [r0]
_0210169C:
	cmp r6, #2
	blt _021016F0
	cmp r6, #6
	bgt _021016F0
	ldr r0, [r4, #8]
	rsb r5, r6, #6
	mov r2, #0x1d
	mla r2, r5, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, _02101724 ; =0x01FF0000
	ldr r6, [r0]
	mov r5, r6
	and r1, r6, r1
	mov r6, r1, lsr #0x10
	and r1, r2, #0xff
	and r3, r5, r3
	mov r2, r6, lsl #0x17
	orr r1, r3, r1
	orr r1, r1, r2, lsr #7
	str r1, [r0]
	b _02101708
_021016F0:
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x30]
	ldr r0, [r1]
	and r0, r0, r3
	orr r0, r0, #0x1000000
	str r0, [r1]
_02101708:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x44]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210171C: .word Focus
_02101720: .word 0xFE00FF00
_02101724: .word 0x01FF0000
	arm_func_end setOffset

	arm_static_func_start isPush
isPush: ; 0x02101728
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _02101990 ; =0x021126F8
	mov r7, #0x1d
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0xe
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02101994 ; =0x0211624C
	mov r1, r7
	ldrh r0, [r0, #4]
	bl FX_DivS32
	ldr r1, _02101998 ; =0x02112298
	mov r5, r0
	ldrh r3, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	add r4, sp, #0
	strh r3, [sp]
	strh r2, [sp, #2]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	mov r6, #0
	strh r2, [sp, #4]
	strh r0, [sp, #6]
_0210178C:
	cmp r5, #2
	cmpne r5, #6
	beq _021017B4
	mov r0, r4
	bl DWCi_TPlCheckATrigger
	cmp r0, #0
	ldrne r0, _0210199C ; =0x021122BA
	addne sp, sp, #8
	ldrneb r0, [r0, r5]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_021017B4:
	ldrh r0, [sp, #2]
	add r6, r6, #1
	cmp r6, #4
	add r0, r0, #0x1d
	strh r0, [sp, #2]
	add r5, r5, #1
	blt _0210178C
	ldr r0, _02101994 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	mov r2, #0
_021017E4:
	cmp r0, #2
	bne _02101884
	ldr r6, _02101998 ; =0x02112298
	mul r5, r2, r7
	ldrh r1, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	add r4, sp, #0
	strh r1, [sp, #2]
	strh r0, [sp]
	mov r0, r5, lsl #0x10
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x1e]
	ldrh r2, [r6, #0x20]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl DWCi_TPlCheckATrigger
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x14]
	ldrh r2, [r6, #0x12]
	mov r0, r5, lsl #0x10
	strh r1, [sp, #2]
	strh r2, [sp]
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl DWCi_TPlCheckATrigger
	cmp r0, #0
	beq _02101894
	add sp, sp, #8
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101884:
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, #1
	blt _021017E4
_02101894:
	ldr r0, _02101994 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	mov r2, #0
_021018A8:
	cmp r0, #6
	bne _02101948
	ldr r6, _02101998 ; =0x02112298
	mul r5, r2, r7
	ldrh r1, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	add r4, sp, #0
	strh r1, [sp, #2]
	strh r0, [sp]
	mov r0, r5, lsl #0x10
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x1e]
	ldrh r2, [r6, #0x20]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl DWCi_TPlCheckATrigger
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x14]
	ldrh r2, [r6, #0x12]
	mov r0, r5, lsl #0x10
	strh r1, [sp, #2]
	strh r2, [sp]
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl DWCi_TPlCheckATrigger
	cmp r0, #0
	beq _02101958
	add sp, sp, #8
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101948:
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, #1
	blt _021018A8
_02101958:
	ldr r4, _021019A0 ; =0x021122F8
	mov r5, #0
_02101960:
	add r0, r4, r5, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addne sp, sp, #8
	addne r0, r5, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
	cmp r5, #3
	blt _02101960
	mov r0, #0xe
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101990: .word DWCi_R_SCR
_02101994: .word Focus
_02101998: .word PALETTE_NUM
_0210199C: .word CLM2FCS_TBL
_021019A0: .word R_BUTTON
	arm_func_end isPush

	arm_static_func_start calcColumnIdx
calcColumnIdx: ; 0x021019A4
	stmfd sp!, {r4, lr}
	ldr r1, _021019E4 ; =0x0211624C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	mov r1, #0
_021019C0:
	cmp r0, r4
	moveq r0, r1
	ldmeqfd sp!, {r4, pc}
	add r1, r1, #1
	cmp r1, #4
	add r0, r0, #1
	blt _021019C0
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_021019E4: .word Focus
	arm_func_end calcColumnIdx

	arm_static_func_start calcIdxColumn
calcIdxColumn: ; 0x021019E8
	stmfd sp!, {r4, lr}
	ldr r1, _02101A08 ; =0x0211624C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	add r0, r0, r4
	ldmfd sp!, {r4, pc}
_02101A08: .word Focus
	arm_func_end calcIdxColumn

	arm_static_func_start taskUp
taskUp: ; 0x02101A0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl DWCi_SBlDisable
	bl DWCi_FOCUSlDelete
	ldr r0, _02101AC8 ; =0x0211624C
	ldr r5, _02101AC8 ; =0x0211624C
	ldrh r1, [r0, #4]
	cmp r1, #6
	subhi r1, r1, #6
	movls r1, #0
	strh r1, [r0, #4]
	ldrh r0, [r5, #4]
	mov r1, #0x1d
	bl FX_ModS32
	mov r6, r0
	cmp r6, #0x17
	bne _02101A58
	bl drawWindow
	ldmfd sp!, {r4, r5, r6, pc}
_02101A58:
	ble _02101A74
	ldrh r1, [r5, #4]
	rsb r0, r6, #0x1d
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r5, #4]
	mov r6, #0
_02101A74:
	bl setOffset
	cmp r6, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _02101AC8 ; =0x0211624C
	mov r0, #0x37
	ldrh r1, [r5, #4]
	ldr r2, _02101ACC ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl DWCi_SBlSet
	bl DWCi_SBlEnable
	bl applyForcus
	ldr r2, [r5, #8]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_02101AC8: .word Focus
_02101ACC: .word 0xE1FC780F
	arm_func_end taskUp

	arm_static_func_start taskDown
taskDown: ; 0x02101AD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl DWCi_SBlDisable
	bl DWCi_FOCUSlDelete
	ldr r5, _02101B64 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r5, #4]
	add r0, r0, #6
	strh r0, [r5, #4]
	ldrh r0, [r5, #4]
	bl FX_ModS32
	cmp r0, #6
	blt _02101B0C
	bl setOffset
	ldmfd sp!, {r3, r4, r5, pc}
_02101B0C:
	ldrh r1, [r5, #4]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, lsr #16
	strh r0, [r5, #4]
	bl drawWindow
	ldrh r1, [r5, #4]
	mov r0, #0x37
	ldr r2, _02101B68 ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl DWCi_SBlSet
	bl DWCi_SBlEnable
	bl applyForcus
	ldr r1, [r5, #8]
	mov r0, #0
	str r0, [r1, #0x38]
	mov r1, r4
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, pc}
_02101B64: .word Focus
_02101B68: .word 0xE1FC780F
	arm_func_end taskDown

	arm_static_func_start taskVBlank
taskVBlank: ; 0x02101B6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02101BDC ; =0x0211624C
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x44]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #4]
	mov r6, #0x1d
	mov r1, r6
	bl FX_DivS32
	mov r5, r0
	ldrh r0, [r4, #4]
	mov r1, r6
	bl FX_ModS32
	ldr r2, _02101BE0 ; =0x021122C3
	ldr r1, _02101BE4 ; =0x01FF0000
	sub r12, r0, #0x33
	ldrb r0, [r2, r5]
	ldr r2, _02101BE8 ; =0x04000010
	and r3, r1, r12, lsl #16
	add r0, r12, r0
	str r3, [r2]
	and r0, r1, r0, lsl #16
	str r0, [r2, #8]
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #0x44]
	ldmfd sp!, {r4, r5, r6, pc}
_02101BDC: .word Focus
_02101BE0: .word OFS_BACK
_02101BE4: .word 0x01FF0000
_02101BE8: .word 0x04000010
	arm_func_end taskVBlank

	arm_static_func_start dispFocus
dispFocus: ; 0x02101BEC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02101CB0 ; =0x02112344
	add r3, sp, #8
	mov r2, #7
_02101C00:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02101C00
	ldr r0, _02101CB4 ; =0x0211624C
	add r1, sp, #8
	ldrb r2, [r0]
	ldrb lr, [r1, r2]
	cmp lr, #3
	blt _02101C5C
	ldr r1, _02101CB8 ; =0x02112310
	mov r3, lr, lsl #3
	ldr r2, _02101CBC ; =0x02112314
	ldr r0, _02101CC0 ; =0x02112312
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #3
	bl DWCi_FOCUSlDisp
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02101C5C:
	ldr r2, _02101CB8 ; =0x02112310
	ldrb r1, [r0, #2]
	add r12, r2, lr, lsl #3
	mov r0, #0x1d
	smulbb r0, r1, r0
	ldrh r3, [r12, #2]
	mov r0, r0, lsl #0x10
	mov r1, lr, lsl #3
	ldrh r1, [r2, r1]
	ldrh r2, [r12, #4]
	add r0, r3, r0, lsr #16
	strh r0, [sp, #2]
	ldrh r12, [r12, #6]
	ldrh r3, [sp, #2]
	mov r0, #1
	strh r1, [sp]
	strh r2, [sp, #4]
	strh r12, [sp, #6]
	bl DWCi_FOCUSlDisp
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02101CB0: .word ov17_02112344
_02101CB4: .word Focus
_02101CB8: .word R_FOCUS
_02101CBC: .word R_FOCUS+4
_02101CC0: .word R_FOCUS+2
	arm_func_end dispFocus

	arm_static_func_start applyForcus
applyForcus: ; 0x02101CC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02101D60 ; =0x0211624C
	ldrb r0, [r4]
	add r0, r0, #0xf5
	and r0, r0, #0xff
	cmp r0, #2
	bhi _02101CE8
	bl dispFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02101CE8:
	bl DWCi_SETTIGNlGet
	mov r5, r0
	ldrh r0, [r4, #4]
	mov r1, #0x1d
	bl FX_DivS32
	ldrb r1, [r4, #2]
	add r1, r1, r0
	cmp r1, #2
	beq _02101D18
	cmp r1, #6
	beq _02101D30
	b _02101D4C
_02101D18:
	ldrb r0, [r5, #0xf5]
	cmp r0, #0
	movne r0, #2
	strneb r0, [r4]
	moveq r0, #3
	b _02101D44
_02101D30:
	ldrb r0, [r5, #0xf6]
	cmp r0, #0
	movne r0, #7
	strneb r0, [r4]
	moveq r0, #8
_02101D44:
	streqb r0, [r4]
	b _02101D58
_02101D4C:
	ldr r0, _02101D64 ; =0x021122BA
	ldrb r0, [r0, r1]
	strb r0, [r4]
_02101D58:
	bl dispFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02101D60: .word Focus
_02101D64: .word CLM2FCS_TBL
	arm_func_end applyForcus

	arm_static_func_start applyForcus1
applyForcus1: ; 0x02101D68
	stmfd sp!, {r4, lr}
	ldr r4, _02101D8C ; =0x0211624C
	ldr r1, _02101D90 ; =0x021122CC
	strb r0, [r4]
	ldrb r0, [r1, r0]
	bl calcColumnIdx
	strb r0, [r4, #2]
	bl dispFocus
	ldmfd sp!, {r4, pc}
_02101D8C: .word Focus
_02101D90: .word FCS2CLM_TBL
	arm_func_end applyForcus1

	arm_static_func_start moveFocus
moveFocus: ; 0x02101D94
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl DWCi_SETTIGNlGet
	ldr r6, _02102018 ; =0x0211624C
	mov r4, #0
	ldrb r1, [r6]
	cmp r1, #8
	ldreqb r0, [r0, #0xf5]
	cmpeq r0, #0
	bne _02101DC8
	cmp r5, #0
	cmpne r5, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
_02101DC8:
	cmp r1, #0
	bgt _02101DD8
	beq _02101DF8
	b _02101F24
_02101DD8:
	sub r0, r1, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02101F24
_02101DE8: ; jump table
	b _02101E1C ; case 0
	b _02101E48 ; case 1
	b _02101EA4 ; case 2
	b _02101EA4 ; case 3
_02101DF8:
	cmp r5, #1
	moveq r0, #0xb
	streqb r0, [r6]
	beq _02101FF8
	cmp r5, #3
	ldreqb r0, [r6, #2]
	addeq r0, r0, #1
	streqb r0, [r6, #2]
	b _02101E40
_02101E1C:
	cmp r5, #1
	ldreqb r0, [r6, #2]
	subeq r0, r0, #1
	streqb r0, [r6, #2]
	beq _02101FF8
	cmp r5, #3
	ldreq r0, [r6, #8]
	ldreqb r0, [r0, #0x42]
	streqb r0, [r6]
_02101E40:
	movne r4, #2
	b _02101FF8
_02101E48:
	cmp r5, #1
	bne _02101E78
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r6, #8]
	mov r1, #1
	strb r1, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, pc}
_02101E78:
	cmp r5, #3
	movne r4, #2
	bne _02101FF8
	mov r5, #0
	strb r5, [r6]
	strb r5, [r6, #2]
	strh r5, [r6, #4]
	bl drawWindow
	mov r0, r5
	bl DWCi_SBlSet
	b _02101FF8
_02101EA4:
	ldr r0, [r6, #8]
	cmp r5, #1
	strb r1, [r0, #0x42]
	bne _02101EDC
	mov r0, #0xa
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #2]
	mov r0, #0x91
	strh r0, [r6, #4]
	bl drawWindow
	mov r0, #0x37
	bl DWCi_SBlSet
	b _02101FF8
_02101EDC:
	cmp r5, #3
	bne _02101F0C
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r6, #8]
	mov r1, #1
	strb r1, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, pc}
_02101F0C:
	cmp r1, #0xc
	moveq r0, #0xd
	streqb r0, [r6]
	movne r0, #0xc
	strneb r0, [r6]
	b _02101FF8
_02101F24:
	cmp r5, #1
	bne _02101F68
	ldrb r0, [r6, #2]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r6, #2]
	bne _02101FF8
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _0210201C ; =taskUp
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r6, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_02101F68:
	cmp r5, #3
	bne _02101FAC
	ldrb r0, [r6, #2]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r6, #2]
	blo _02101FF8
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _02102020 ; =taskDown
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r6, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_02101FAC:
	cmp r1, #2
	moveq r0, #3
	mov r4, #2
	streqb r0, [r6]
	beq _02101FEC
	cmp r1, #3
	streqb r4, [r6]
	beq _02101FEC
	cmp r1, #7
	moveq r0, #8
	streqb r0, [r6]
	beq _02101FEC
	cmp r1, #8
	bne _02101FF8
	mov r0, #7
	strb r0, [r6]
_02101FEC:
	mov r0, #8
	bl DWCi_SNDlPlay
	bl dispFocus
_02101FF8:
	cmp r4, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #8
	bl DWCi_SNDlPlay
	cmp r4, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl applyForcus
	ldmfd sp!, {r4, r5, r6, pc}
_02102018: .word Focus
_0210201C: .word taskUp
_02102020: .word taskDown
	arm_func_end moveFocus

	arm_static_func_start dispPushButton
dispPushButton: ; 0x02102024
	ldr r0, _0210204C ; =0x0211624C
	ldr r1, _02102050 ; =0x02112298
	ldrb r2, [r0]
	ldr r0, [r0, #8]
	ldr r12, _02102054 ; =DWCi_SCREENlCopyPalette
	sub r2, r2, #0xb
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bx r12
_0210204C: .word Focus
_02102050: .word PALETTE_NUM
_02102054: .word DWCi_SCREENlCopyPalette
	arm_func_end dispPushButton

	arm_static_func_start taskPushCount
taskPushCount: ; 0x02102058
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _021020A8 ; =0x0211624C
	mov r4, #0
_02102064:
	ldr r0, [r5, #8]
	add r1, r0, r4
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _02102098
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02102098
	bl drawWindow
_02102098:
	add r4, r4, #1
	cmp r4, #4
	blt _02102064
	ldmfd sp!, {r3, r4, r5, pc}
_021020A8: .word Focus
	arm_func_end taskPushCount

	arm_static_func_start pushButtonYesNo
pushButtonYesNo: ; 0x021020AC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0210214C ; =0x02112340
	ldr r0, _02102150 ; =0x0211624C
	ldrb r12, [r1]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r3, [sp, #1]
	ldrb r4, [r0]
	add lr, sp, #0
	strb r12, [sp]
	strb r2, [sp, #2]
	strb r1, [sp, #3]
	mov r3, #0
_021020E8:
	ldrb r0, [lr, r3]
	cmp r4, r0
	bne _02102138
	ldr r0, _02102150 ; =0x0211624C
	mov r2, #0x14
	ldr r1, [r0, #8]
	tst r3, #1
	add r1, r1, r3
	strb r2, [r1, #4]
	ldr r1, [r0, #8]
	subne r0, r3, #1
	addne r0, r1, r0
	movne r1, #0
	strneb r1, [r0, #4]
	addeq r0, r3, #1
	addeq r0, r1, r0
	moveq r1, #0
	streqb r1, [r0, #4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102138:
	add r3, r3, #1
	cmp r3, #4
	blt _021020E8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210214C: .word ov17_02112340
_02102150: .word Focus
	arm_func_end pushButtonYesNo

	arm_static_func_start isCorrect
isCorrect: ; 0x02102154
	stmfd sp!, {r4, lr}
	bl DWCi_SETTIGNlGet
	mov r4, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	bne _021021A0
	add r0, r4, #0xc8
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	bne _021021A0
	add r0, r4, #0xcc
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_021021A0:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	bne _021021EC
	add r0, r4, #0xc0
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc0
	add r1, r4, #0xf0
	bl DWC_BACKUPlCheckIp
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_021021EC:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end isCorrect

	arm_static_func_start procError
procError: ; 0x021021F4
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _0210222C ; =0x0211624C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl DWCi_SCREENlSetPalette
	ldr r0, _02102230 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210222C: .word Focus
_02102230: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x02102234
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102250 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102250: .word procScene
	arm_func_end procError1

	arm_func_start DWCi_SetListReturn
DWCi_SetListReturn: ; 0x02102254
	ldr r1, _02102260 ; =0x0211624C
	strb r0, [r1, #1]
	bx lr
_02102260: .word Focus
	arm_func_end DWCi_SetListReturn

	.rodata
PALETTE_NUM:
	.byte 0x06, 0x08, 0x07
MSG_IDX:
	.byte 0xFF, 0x23, 0x27, 0xFF, 0x23, 0x2F, 0xFF
A_EDIT:
	.byte 0xCC, 0x00, 0x34, 0x00, 0x1C, 0x00, 0x18, 0x00
A_NO:
	.byte 0x8F, 0x00, 0x34, 0x00, 0x2C, 0x00, 0x18, 0x00
A_YES:
	.byte 0xC0, 0x00, 0x34, 0x00, 0x2C, 0x00, 0x18, 0x00
CLM2FCS_TBL:
	.byte 0x00, 0x01, 0x0E, 0x04, 0x05, 0x06
	.byte 0x0E, 0x09, 0x0A
OFS_BACK:
	.byte 0x00, 0x05, 0x02, 0x07, 0x04, 0x01, 0x06, 0x03, 0x00
FCS2CLM_TBL:
	.byte 0x00, 0x01, 0x02, 0x02
	.byte 0x03, 0x04, 0x05, 0x06, 0x06, 0x07, 0x08
CELL_IDX:
	.byte 0x00, 0x29, 0x2C, 0x52, 0x53, 0x30, 0x00, 0x2A, 0x30
	.byte 0x54, 0x55, 0x00, 0x00, 0x2B, 0x00
BACK_POS:
	.byte 0x00, 0x00, 0x60, 0x00, 0xE0, 0x00, 0x40, 0x01, 0xC0, 0x01
	.byte 0x40, 0x02, 0xA0, 0x02, 0x20, 0x03, 0xA0, 0x03
R_BUTTON:
	.byte 0x84, 0x00, 0x1B, 0x00, 0xFC, 0x00, 0x2C, 0x00
	.byte 0x84, 0x00, 0xAC, 0x00, 0xFC, 0x00, 0xBD, 0x00, 0x04, 0x00, 0xAC, 0x00, 0x7C, 0x00, 0xBD, 0x00
R_FOCUS:
	.byte 0xC8, 0x00, 0x31, 0x00, 0xE0, 0x00, 0x4D, 0x00, 0xBC, 0x00, 0x31, 0x00, 0xE0, 0x00, 0x4D, 0x00
	.byte 0x8B, 0x00, 0x31, 0x00, 0xAF, 0x00, 0x4D, 0x00, 0x82, 0x00, 0x18, 0x00, 0xEE, 0x00, 0x2C, 0x00
	.byte 0x82, 0x00, 0xA9, 0x00, 0xEE, 0x00, 0xBD, 0x00, 0x02, 0x00, 0xA9, 0x00, 0x6E, 0x00, 0xBD, 0x00
ov17_02112340:
	.byte 0x02, 0x03, 0x07, 0x08
ov17_02112344:
	.byte 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x03
	.byte 0x04, 0x05, 0x00, 0x00
ov17_02112354:
	.asciz "char/ybBgStep2.ncl.l"
	.balign 4, 0
ov17_0211236C:
	.asciz "char/ybBgStep21.ncl.l"
	.balign 4, 0
ov17_02112384:
	.asciz "char/jb3ListBack.nsc.l"

	.data
ov17_021131F0:
	.asciz "char/ybObjKb.ncl.l"
	.balign 4, 0
ov17_02113204:
	.asciz "char/jbBgStep2.ncg.l"
	.balign 4, 0
ov17_0211321C:
	.asciz "char/jbBgStep21.ncg.l"
	.balign 4, 0
ov17_02113234:
	.asciz "char/jb3List.nsc.l"
	.balign 4, 0
ov17_02113248:
	.asciz "char/ybObjMain.ncl.l"
	.balign 4, 0
ov17_02113260:
	.asciz "%3d.%3d.%3d.%3d"

	.bss
Focus:
	.space 0x01
RetScene:
	.space 0x01
FocusClm:
	.space 0x02
Pos:
	.space 0x04
MemSsl:
	.space 0x04

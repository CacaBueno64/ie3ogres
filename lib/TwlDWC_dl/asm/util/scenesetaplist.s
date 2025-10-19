
	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExObj
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_FOCUSlDelete
	.public DWCi_FOCUSlDisp
	.public DWCi_GetParam2_
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_HLlLoadSet
	.public DWCi_OBJlDelete
	.public DWCi_SceneSetEdit32
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public DWCi_SceneSetSearch
	.public DWCi_SceneSetSelectWay
	.public DWCi_SceneSetTestConfirm
	.public DWCi_SCREENlInit
	.public DWCi_SCREENlEnd
	.public DWCi_SCREENlRenew
	.public DWCi_SCREENlCopyPalette
	.public DWCi_SBlInit
	.public DWCi_SBlEnd
	.public DWCi_SBlGet
	.public DWCi_SBlGetState
	.public DWCi_SBlSet
	.public DWCi_SBlEnable
	.public DWCi_SBlDisable
	.public DWCi_SEARCHlEnd
	.public DWCi_SEARCHlGetApInfo
	.public DWCi_SETTIGNlGet
	.public DWCi_SETTINGlSetSsid
	.public DWCi_SETTINGlSetSetting
	.public DWCi_SNDlPlay
	.public DWCi_WINlInitEx
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_FNTlDeleteBg
	.public DWCi_FNTlDrawStringEx
	.public DWCi_FNTlClear
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public DWCi_IPTlCheckRepeat
	.public DWCi_IPTlCheckRelease
	.public DWCi_TPlCheckRelease
	.public DWCi_STRlNLen
	.public FX_DivS32
	.public FX_ModS32
	.public GX_LoadBG3Scr
	.public MI_CpuFill8
	.public DWCi_R_SCR

	.text
	arm_func_start DWCi_SceneSetApList
DWCi_SceneSetApList: ; 0x020FCD68
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x5c
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _020FCE24 ; =0x02116238
	mov r5, #0
	str r0, [r4, #4]
	add r0, sp, #0
	mov r1, r5
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	streqb r5, [r4]
	streqh r5, [r4, #2]
	ldr r4, _020FCE24 ; =0x02116238
	ldr r0, [r4, #4]
	bl DWCi_SEARCHlGetApInfo
	ldr r1, [r4, #4]
	strb r0, [r1, #0x51]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x34
	mov r5, #0
	sub r1, r0, #0x35
	mov r2, r5
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	bl initScrollBar
	bl getCharName
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r3, [r4, #4]
	ldr r1, _020FCE28 ; =taskVBlank
	str r0, [r3, #0xc]
	mov r2, r5
	mov r0, #1
	mov r3, #0x6e
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x3c]
	bl drawApInfo
	bl dispFocus
	ldr r0, _020FCE2C ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCE24: .word Focus
_020FCE28: .word taskVBlank
_020FCE2C: .word procInit
	arm_func_end DWCi_SceneSetApList

	arm_static_func_start initGraphics
initGraphics: ; 0x020FCE30
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r3, _020FCF5C ; =0x02112208
	add r5, sp, #0x16
	mov r2, #0xc
_020FCE44:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020FCE44
	ldrb r0, [r3]
	ldr r4, _020FCF60 ; =0x021121F0
	add r3, sp, #0
	strb r0, [r5]
	mov r2, #0xb
_020FCE70:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FCE70
	ldr r0, _020FCF64 ; =0x021130A8
	ldr r1, _020FCF68 ; =GX_LoadBG3Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0x16
	bl DWCi_Char
	mov r6, #0
	mov r5, #4
	mov r1, r6
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r4, _020FCF6C ; =0x02116238
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl DWCi_SCREENlInit
	bl DWCi_SCREENlRenew
	add r0, sp, #0
	bl DWCi_Char
	mov r1, r6
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r1, [r4, #4]
	ldr r3, _020FCF70 ; =0x04001008
	str r0, [r1, #8]
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	ldr r1, _020FCF74 ; =0x0400000A
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
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_020FCF5C: .word ov17_02112208
_020FCF60: .word ov17_021121F0
_020FCF64: .word ov17_021130A8
_020FCF68: .word GX_LoadBG3Scr
_020FCF6C: .word Focus
_020FCF70: .word 0x04001008
_020FCF74: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start initScrollBar
initScrollBar: ; 0x020FCF78
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020FD018 ; =0x02116238
	mov r1, #0x1c
	ldr r12, [r2, #4]
	mov r0, #0
	ldrb r3, [r12, #0x51]
	sub r3, r3, #4
	mul r1, r3, r1
	strh r1, [r12, #0x40]
	ldr r2, [r2, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	movls r4, r0
	strlsb r0, [r2, #0x53]
	bls _020FCFD4
	cmp r1, #8
	movls r1, #0x1f
	strlsb r1, [r2, #0x53]
	movls r4, #1
	movhi r1, #0x37
	strhib r1, [r2, #0x53]
	movhi r4, #2
_020FCFD4:
	cmp r4, #0
	beq _020FCFF8
	ldr r0, _020FD018 ; =0x02116238
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
_020FCFF8:
	str r0, [sp]
	mov r0, r4
	mov r1, #0x55
	mov r2, #0xec
	mov r3, #0x3f
	bl DWCi_SBlInit
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD018: .word Focus
	arm_func_end initScrollBar

	arm_static_func_start getCharName
getCharName: ; 0x020FD01C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _020FD16C ; =0x02116238
	mov r7, #0
	ldr r0, [r4, #4]
	mov r9, #0
	ldrb r8, [r0, #0x51]
	cmp r8, #5
	movgt r8, #5
	cmp r8, #0
	ble _020FD088
	mov r6, #0x2e
	mov r5, #0x18
_020FD04C:
	mov r0, r7
	mov r1, r6
	bl DWCi_CEINlSetExObj
	ldr r2, [r4, #4]
	mov r1, r5
	add r2, r2, r9, lsl #2
	str r0, [r2, #0x10]
	mov r0, r7
	bl DWCi_CEINlSetExObj
	ldr r1, [r4, #4]
	add r1, r1, r9, lsl #2
	add r9, r9, #1
	str r0, [r1, #0x24]
	cmp r9, r8
	blt _020FD04C
_020FD088:
	mov r7, #0
	ldr r5, _020FD170 ; =0x02112198
	ldr r9, _020FD174 ; =0x000003FF
	mov r6, r7
_020FD098:
	ldr r0, [r4, #4]
	ldrb r1, [r5, r7]
	ldr r2, [r0, #0x10]
	mov r0, r6
	bl DWCi_CEINlSet
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x10]
	add r0, r0, r7, lsl #1
	ldrh r1, [r1, #4]
	add r7, r7, #1
	cmp r7, #3
	and r1, r1, r9
	strh r1, [r0, #0x42]
	blo _020FD098
	ldr r4, _020FD178 ; =0x0211219B
	ldr r10, _020FD16C ; =0x02116238
	ldr r7, _020FD174 ; =0x000003FF
	mov r5, #0
_020FD0E0:
	ldr r0, [r10, #4]
	ldrb r1, [r4, r6]
	ldr r2, [r0, #0x24]
	mov r0, r5
	ldr r9, _020FD16C ; =0x02116238
	bl DWCi_CEINlSet
	ldr r0, [r10, #4]
	ldr r1, [r0, #0x24]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #4
	and r1, r1, r7
	strh r1, [r0, #0x48]
	blo _020FD0E0
	cmp r8, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FD124:
	ldr r0, [r9, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	ldr r0, [r9, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x24]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, r8
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020FD124
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FD16C: .word Focus
_020FD170: .word CELL_WEP
_020FD174: .word 0x000003FF
_020FD178: .word CELL_LV
	arm_func_end getCharName

	arm_static_func_start procInit
procInit: ; 0x020FD17C
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
	ldr r0, _020FD1E0 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FD1E0: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FD1E4
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _020FD220 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FD220: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FD224
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FD244 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FD244: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FD248
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FD25C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020FD46C ; =0x02116238
	mov r4, #0
	ldr r1, [r5, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020FD470 ; =0x021126F8
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020FD2E4
	ldr r0, [r5, #4]
	mvn r1, #0
	ldr r6, _020FD474 ; =0x021121A0
	strb r1, [r0, #0x50]
	mov r7, r4
_020FD2A4:
	add r0, r6, r7, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020FD2D8
	cmp r7, #4
	ldrlt r0, [r5, #4]
	strltb r7, [r0, #0x50]
	blt _020FD2E4
	mov r0, #1
	bl DWCi_BTNlSet
	strb r7, [r5]
	bl dispFocus
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD2D8:
	add r7, r7, #1
	cmp r7, #5
	blo _020FD2A4
_020FD2E4:
	ldr r0, _020FD470 ; =0x021126F8
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	beq _020FD354
	ldr r6, _020FD474 ; =0x021121A0
	mov r7, #0
_020FD2FC:
	add r0, r6, r7, lsl #3
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	beq _020FD348
	ldr r1, [r5, #4]
	ldrsb r0, [r1, #0x50]
	cmp r0, r7
	bne _020FD354
	ldrb r0, [r1, #0x51]
	cmp r7, r0
	blt _020FD334
	mov r0, #9
	bl DWCi_SNDlPlay
	b _020FD354
_020FD334:
	mov r0, #1
	bl DWCi_BTNlSet
	strb r7, [r5]
	bl dispFocus
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD348:
	add r7, r7, #1
	cmp r7, #4
	blt _020FD2FC
_020FD354:
	mov r7, #1
	mov r0, r7
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FD378
	mov r0, r7
	bl DWCi_BTNlSet
	bl DWCi_SBlDisable
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD378:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FD394
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD394:
	mov r6, #0x200
	mov r0, r6
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020FD3B0
	bl scrollDown
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD3B0:
	mov r0, r6
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x100
	mov r0, r6
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020FD3E4
	bl scrollUp
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD3E4:
	mov r0, r6
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x40
	mov r0, r6
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020FD41C
	mov r0, r7
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD41C:
	mov r0, r6
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x80
	mov r0, r6
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020FD454
	mov r0, #3
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD454:
	mov r0, r6
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD46C: .word Focus
_020FD470: .word DWCi_R_SCR
_020FD474: .word R_TOUCH
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FD478
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020FD698 ; =0x02116238
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x55]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x55]
	bl DWCi_SBlGetState
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4B0: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _020FD4D0 ; case 1
	b _020FD4E4 ; case 2
	b _020FD528 ; case 3
	b _020FD5C0 ; case 4
	b _020FD688 ; case 5
	b _020FD61C ; case 6
	b _020FD688 ; case 7
_020FD4D0:
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x57]
	bl DWCi_BTNlDisable
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4E4:
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x55]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_FOCUSlDelete
	bl DWCi_SBlGet
	ldr r1, [r4, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FX_DivS32
	strh r0, [r4, #2]
	bl drawApInfo
	ldr r0, [r4, #4]
	mov r1, #4
	strb r1, [r0, #0x55]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD528:
	ldr r0, [r4, #4]
	mov r5, #0
	strb r5, [r0, #0x57]
	bl DWCi_BTNlEnable
	bl DWCi_SBlGet
	ldr r1, [r4, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FX_DivS32
	strh r0, [r4, #2]
	mov r0, #0x13
	bl DWCi_SNDlPlay
	bl drawApInfo
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FX_ModS32
	cmp r0, #0
	bne _020FD57C
	bl dispFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020FD57C:
	cmp r0, #0xe
	mov r3, #0x78
	bge _020FD5A4
	ldr r1, _020FD69C ; =taskUp
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5A4:
	ldr r1, _020FD6A0 ; =taskDown
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5C0:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020FD5F4
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x58]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5F4:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _020FD69C ; =taskUp
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD61C:
	ldr r2, [r4, #4]
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bls _020FD63C
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	bne _020FD660
_020FD63C:
	ldrb r0, [r2, #0x58]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD660:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _020FD6A0 ; =taskDown
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD688:
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD698: .word Focus
_020FD69C: .word taskUp
_020FD6A0: .word taskDown
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FD6A4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _020FD7AC ; =0x02116238
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FD6E8
	cmp r0, #1
	beq _020FD6F0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD6E8:
	mov r0, #7
	b _020FD798
_020FD6F0:
	ldrb r0, [r4]
	cmp r0, #4
	bne _020FD718
	ldr r1, [r4, #4]
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #0x54]
	bl DWCi_SNDlPlay
	bl dispPushButton
	b _020FD79C
_020FD718:
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FX_DivS32
	ldrb r12, [r4]
	ldr r3, [r4, #4]
	mov r1, #0x2a
	ldr r2, [r3]
	add r12, r12, r0
	mla r0, r12, r1, r2
	ldrb r0, [r0, #0x28]
	cmp r0, #2
	bne _020FD784
	mov r0, #9
	bl DWCi_SNDlPlay
	bl DWCi_SBlDisable
	bl DWCi_BTNlDisable
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	mov r2, r1
	mov r0, #0xe
	sub r3, r1, #2
	bl DWCi_WINlInitEx
	ldr r0, _020FD7B0 ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD784:
	mov r0, #1
	strb r0, [r3, #0x54]
	ldr r1, [r4, #4]
	mov r0, #6
	strb r12, [r1, #0x52]
_020FD798:
	bl DWCi_SNDlPlay
_020FD79C:
	ldr r0, _020FD7B4 ; =endScene
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD7AC: .word Focus
_020FD7B0: .word procError
_020FD7B4: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FD7B8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FD7D4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FD7D4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FD7D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FD848 ; =0x02116238
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020FD808
	bl DWCi_BTNlEnd
	b _020FD80C
_020FD808:
	bl DWCi_BTNlDisable
_020FD80C:
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
	mov r2, #0x1d
	bl DWCi_EFFlFade
	ldr r0, _020FD84C ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FD848: .word Focus
_020FD84C: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FD850
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #1
	mov r0, r6
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020FDA14 ; =0x02116238
	mov r0, r6
	ldr r1, [r5, #4]
	ldr r1, [r1, #0x3c]
	bl DWCi_TSKlDeleteEx
_020FD89C:
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020FD8B4
	bl DWCi_OBJlDelete
_020FD8B4:
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _020FD8CC
	bl DWCi_OBJlDelete
_020FD8CC:
	add r4, r4, #1
	cmp r4, #5
	blt _020FD89C
	ldr r7, _020FDA14 ; =0x02116238
	ldr r0, [r7, #4]
	ldr r0, [r0, #0xc]
	bl DWCi_FNTlDeleteBg
	bl DWCi_SBlEnd
	bl DWCi_FOCUSlDelete
	bl DWCi_COMMENTlDelete
	bl DWCi_SCREENlEnd
	ldr r0, [r7, #4]
	ldr r0, [r0, #4]
	bl DWCi_ARClRelease
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	bl DWCi_ARClRelease
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r4, #0
	mov r0, r4
	mov r1, #0x1d
	bl DWCi_GXlInvisible
	ldr r0, _020FDA18 ; =0x04000010
	str r4, [r0]
	str r4, [r0, #8]
	ldr r2, [r7, #4]
	ldrb r0, [r2, #0x54]
	cmp r0, #0
	bne _020FD970
	bl DWCi_SEARCHlEnd
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xf4]
	bl DWCi_SETTINGlSetSetting
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _020FDA1C ; =DWCi_SceneSetSelectWay
	b _020FDA04
_020FD970:
	ldrb r0, [r7]
	cmp r0, #4
	bne _020FD994
	bl DWCi_SEARCHlEnd
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FDA20 ; =DWCi_SceneSetSearch
	b _020FDA04
_020FD994:
	ldrb r1, [r2, #0x52]
	ldr r0, [r2]
	mov r6, #0x2a
	mla r0, r1, r6, r0
	bl DWCi_SETTINGlSetSsid
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, [r7, #4]
	ldrb r1, [r0, #0x52]
	ldr r0, [r0]
	mla r0, r1, r6, r0
	ldrb r0, [r0, #0x28]
	mov r1, r5
	cmp r0, #0
	mov r0, r4
	beq _020FD9F0
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FDA24 ; =DWCi_SceneSetEdit32
	b _020FDA04
_020FD9F0:
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FDA28 ; =DWCi_SceneSetTestConfirm
_020FDA04:
	bl DWCi_ChangeScene
	ldr r0, _020FDA2C ; =0x0211623C
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDA14: .word Focus
_020FDA18: .word 0x04000010
_020FDA1C: .word DWCi_SceneSetSelectWay
_020FDA20: .word DWCi_SceneSetSearch
_020FDA24: .word DWCi_SceneSetEdit32
_020FDA28: .word DWCi_SceneSetTestConfirm
_020FDA2C: .word MemSsal
	arm_func_end endScene2

	arm_static_func_start drawApInfo
drawApInfo: ; 0x020FDA30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020FDAD0 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r4, #2]
	bl FX_DivS32
	ldr r1, [r4, #4]
	mov r7, r0
	ldrb r4, [r1, #0x51]
	ldr r0, [r1, #0xc]
	mov r1, #0
	bl DWCi_FNTlClear
	cmp r4, #5
	movgt r4, #5
	mov r5, r7
	cmp r4, #0
	mov r6, #0
	ble _020FDA90
_020FDA74:
	mov r0, r5
	mov r1, r6
	bl drawAp
	add r6, r6, #1
	cmp r6, r4
	add r5, r5, #1
	blt _020FDA74
_020FDA90:
	cmp r4, #0
	mov r5, #0
	ble _020FDAB8
_020FDA9C:
	mov r0, r7
	mov r1, r5
	bl drawApObj
	add r5, r5, #1
	cmp r5, r4
	add r7, r7, #1
	blt _020FDA9C
_020FDAB8:
	ldr r0, _020FDAD0 ; =0x02116238
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl DWCi_FNTlRenewBg
	bl setOffset
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDAD0: .word Focus
	arm_func_end drawApInfo

	arm_static_func_start drawAp
drawAp: ; 0x020FDAD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r0, #0x2a
	ldr r5, _020FDC38 ; =0x02116238
	mul r7, r8, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldr r0, [r0]
	mov r1, #0x20
	add r0, r0, r7
	bl DWCi_STRlNLen
	ldr r2, [r5, #4]
	mov r1, #0x1c
	ldrb r2, [r2, #0x51]
	mul r6, r4, r1
	cmp r8, r2
	mov r5, r0
	addge sp, sp, #0x30
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, sp, #0xc
	cmp r5, #0x10
	mov r1, #0
	mov r2, #0x22
	addle r6, r6, #6
	bl MI_CpuFill8
	mov r8, r5
	cmp r5, #0x10
	movgt r8, #0x10
	cmp r8, #0
	mov r3, #0
	ble _020FDB80
	ldr r0, _020FDC38 ; =0x02116238
	ldr r4, [r0, #4]
	add r0, sp, #0xc
_020FDB60:
	ldr r2, [r4]
	mov r1, r3, lsl #1
	add r2, r7, r2
	ldrb r2, [r3, r2]
	add r3, r3, #1
	cmp r3, r8
	strh r2, [r0, r1]
	blt _020FDB60
_020FDB80:
	mov r1, #0xa
	add r4, sp, #0xc
	stmia sp, {r1, r4}
	mov r0, #1
	ldr r9, _020FDC38 ; =0x02116238
	str r0, [sp, #8]
	ldr r0, [r9, #4]
	mov r2, r6
	ldr r0, [r0, #0xc]
	mov r3, #2
	bl DWCi_FNTlDrawStringEx
	cmp r5, #0x10
	addle sp, sp, #0x30
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r8, #0
	mov r0, r4
	mov r1, r8
	mov r2, #0x22
	bl MI_CpuFill8
	sub r2, r5, #0x10
	cmp r2, #0
	ble _020FDC00
	ldr r3, [r9, #4]
_020FDBDC:
	ldr r1, [r3]
	mov r0, r8, lsl #1
	add r1, r7, r1
	add r1, r8, r1
	ldrb r1, [r1, #0x10]
	add r8, r8, #1
	cmp r8, r2
	strh r1, [r4, r0]
	blt _020FDBDC
_020FDC00:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _020FDC38 ; =0x02116238
	add r2, r6, #0xc
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl DWCi_FNTlDrawStringEx
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FDC38: .word Focus
	arm_func_end drawAp

	arm_static_func_start drawApObj
drawApObj: ; 0x020FDC3C
	stmfd sp!, {r4, lr}
	ldr r3, _020FDCC4 ; =0x02116238
	ldr lr, [r3, #4]
	ldrb r2, [lr, #0x51]
	cmp r0, r2
	ldmgefd sp!, {r4, pc}
	mov r2, #0x2a
	mul r2, r0, r2
	ldr r0, [lr]
	add r4, lr, r1, lsl #2
	add r0, r0, r2
	ldrb r12, [r0, #0x28]
	ldr r4, [r4, #0x10]
	mov r0, #0x400
	add r12, lr, r12, lsl #1
	ldrh lr, [r4, #4]
	rsb r0, r0, #0
	ldrh r12, [r12, #0x42]
	and lr, lr, r0
	orr r12, lr, r12
	strh r12, [r4, #4]
	ldr lr, [r3, #4]
	ldr r3, [lr]
	add r12, lr, r1, lsl #2
	add r1, r3, r2
	ldrh r1, [r1, #0x26]
	ldr r3, [r12, #0x24]
	add r1, lr, r1, lsl #1
	ldrh r2, [r3, #4]
	ldrh r1, [r1, #0x48]
	and r0, r2, r0
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldmfd sp!, {r4, pc}
_020FDCC4: .word Focus
	arm_func_end drawApObj

	arm_static_func_start setOffset
setOffset: ; 0x020FDCC8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020FDD78 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r4, #2]
	bl FX_ModS32
	ldr r1, [r4, #4]
	rsb r0, r0, #0x36
	ldrb r1, [r1, #0x51]
	mov r2, #0
	cmp r1, #5
	movgt r1, #5
	cmp r1, #0
	ble _020FDD64
	ldr r12, _020FDD78 ; =0x02116238
	ldr r3, _020FDD7C ; =0xFE00FF00
_020FDD04:
	ldr r4, [r12, #4]
	sub r5, r0, #2
	add r4, r4, r2, lsl #2
	ldr r6, [r4, #0x10]
	add r4, r0, #1
	ldr lr, [r6]
	and r5, r5, #0xff
	and lr, lr, r3
	orr r5, lr, r5
	orr r5, r5, #0xb30000
	str r5, [r6]
	ldr r5, [r12, #4]
	and r4, r4, #0xff
	add r5, r5, r2, lsl #2
	ldr r5, [r5, #0x24]
	add r2, r2, #1
	ldr lr, [r5]
	cmp r2, r1
	and lr, lr, r3
	orr r4, lr, r4
	orr r4, r4, #0xd20000
	str r4, [r5]
	add r0, r0, #0x1c
	blt _020FDD04
_020FDD64:
	ldr r0, _020FDD78 ; =0x02116238
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, r5, r6, pc}
_020FDD78: .word Focus
_020FDD7C: .word 0xFE00FF00
	arm_func_end setOffset

	arm_static_func_start taskUp
taskUp: ; 0x020FDD80
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl DWCi_SBlDisable
	bl DWCi_FOCUSlDelete
	ldr r0, _020FDE34 ; =0x02116238
	ldr r5, _020FDE34 ; =0x02116238
	ldrh r1, [r0, #2]
	cmp r1, #4
	subhi r1, r1, #4
	movls r1, #0
	strh r1, [r0, #2]
	ldrh r0, [r5, #2]
	mov r1, #0x1c
	bl FX_ModS32
	mov r6, r0
	cmp r6, #0x18
	bne _020FDDCC
	bl drawApInfo
	ldmfd sp!, {r4, r5, r6, pc}
_020FDDCC:
	ble _020FDDE8
	ldrh r1, [r5, #2]
	rsb r0, r6, #0x1c
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	mov r6, #0
_020FDDE8:
	bl setOffset
	cmp r6, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020FDE34 ; =0x02116238
	ldr r1, [r5, #4]
	ldrh r2, [r5, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
	bl DWCi_SBlSet
	bl DWCi_SBlEnable
	bl dispFocus
	ldr r2, [r5, #4]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_020FDE34: .word Focus
	arm_func_end taskUp

	arm_static_func_start taskDown
taskDown: ; 0x020FDE38
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl DWCi_SBlDisable
	bl DWCi_FOCUSlDelete
	ldr r5, _020FDEC4 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r5, #2]
	add r0, r0, #4
	strh r0, [r5, #2]
	ldrh r0, [r5, #2]
	bl FX_ModS32
	cmp r0, #4
	blt _020FDE74
	bl setOffset
	ldmfd sp!, {r3, r4, r5, pc}
_020FDE74:
	ldrh r1, [r5, #2]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	bl drawApInfo
	ldr r1, [r5, #4]
	ldrh r2, [r5, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
	bl DWCi_SBlSet
	bl DWCi_SBlEnable
	bl dispFocus
	ldr r2, [r5, #4]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, pc}
_020FDEC4: .word Focus
	arm_func_end taskDown

	arm_static_func_start taskVBlank
taskVBlank: ; 0x020FDEC8
	stmfd sp!, {r4, lr}
	ldr r4, _020FDF14 ; =0x02116238
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FX_ModS32
	ldr r1, _020FDF18 ; =0x01FF0000
	sub r2, r0, #0x32
	ldr r0, _020FDF1C ; =0x04000010
	and r1, r1, r2, lsl #16
	str r1, [r0]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, pc}
_020FDF14: .word Focus
_020FDF18: .word 0x01FF0000
_020FDF1C: .word 0x04000010
	arm_func_end taskVBlank

	arm_static_func_start dispFocus
dispFocus: ; 0x020FDF20
	stmfd sp!, {r3, lr}
	ldr r0, _020FDF5C ; =0x02116238
	ldr r1, _020FDF60 ; =0x021121C8
	ldrb r2, [r0]
	ldr r3, _020FDF64 ; =0x021121CA
	mov r0, #2
	mov r12, r2, lsl #3
	cmp r2, #4
	ldr r2, _020FDF68 ; =0x021121CC
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	movhs r0, #3
	bl DWCi_FOCUSlDisp
	ldmfd sp!, {r3, pc}
_020FDF5C: .word Focus
_020FDF60: .word R_FOCUS
_020FDF64: .word R_FOCUS+2
_020FDF68: .word R_FOCUS+4
	arm_func_end dispFocus

	arm_static_func_start moveFocus
moveFocus: ; 0x020FDF6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020FE0A8 ; =0x02116238
	mov r6, #0
	ldrb r2, [r5]
	mov r4, #1
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020FE064
_020FDF8C: ; jump table
	b _020FDFA0 ; case 0
	b _020FE000 ; case 1
	b _020FE000 ; case 2
	b _020FE02C ; case 3
	b _020FE044 ; case 4
_020FDFA0:
	cmp r0, #1
	bne _020FDFE4
	ldrh r0, [r5, #2]
	cmp r0, #0
	moveq r0, #4
	streqb r0, [r5]
	beq _020FE064
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, r6
	ldr r1, _020FE0AC ; =taskUp
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r5, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020FDFE4:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x51]
	cmp r0, #1
	addhi r0, r2, #1
	strhib r0, [r5]
	movls r4, r6
	b _020FE064
_020FE000:
	cmp r0, #1
	subeq r0, r2, #1
	streqb r0, [r5]
	beq _020FE064
	ldr r1, [r5, #4]
	add r0, r2, #1
	ldrb r1, [r1, #0x51]
	cmp r1, r0
	strgtb r0, [r5]
	movle r4, r6
	b _020FE064
_020FE02C:
	cmp r0, #1
	subeq r0, r2, #1
	streqb r0, [r5]
	beq _020FE064
	bl scrollDown
	ldmfd sp!, {r4, r5, r6, pc}
_020FE044:
	cmp r0, #1
	moveq r4, r6
	beq _020FE064
	strh r6, [r5, #2]
	strb r6, [r5]
	bl drawApInfo
	mov r0, r6
	bl DWCi_SBlSet
_020FE064:
	cmp r4, #0
	bne _020FE098
	ldr r4, _020FE0A8 ; =0x02116238
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, r5, r6, pc}
_020FE098:
	mov r0, #8
	bl DWCi_SNDlPlay
	bl dispFocus
	ldmfd sp!, {r4, r5, r6, pc}
_020FE0A8: .word Focus
_020FE0AC: .word taskUp
	arm_func_end moveFocus

	arm_static_func_start scrollUp
scrollUp: ; 0x020FE0B0
	stmfd sp!, {r4, lr}
	ldr r4, _020FE114 ; =0x02116238
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020FE0EC
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, pc}
_020FE0EC:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _020FE118 ; =taskUp
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, pc}
_020FE114: .word Focus
_020FE118: .word taskUp
	arm_func_end scrollUp

	arm_static_func_start scrollDown
scrollDown: ; 0x020FE11C
	stmfd sp!, {r4, lr}
	ldr r4, _020FE194 ; =0x02116238
	ldr r2, [r4, #4]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	beq _020FE144
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bhi _020FE16C
_020FE144:
	ldrb r0, [r2, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, _020FE194 ; =0x02116238
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, pc}
_020FE16C:
	mov r0, #0x13
	bl DWCi_SNDlPlay
	mov r0, #0
	ldr r1, _020FE198 ; =taskDown
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, pc}
_020FE194: .word Focus
_020FE198: .word taskDown
	arm_func_end scrollDown

	arm_static_func_start dispPushButton
dispPushButton: ; 0x020FE19C
	stmfd sp!, {r3, lr}
	ldr r1, _020FE1C0 ; =0x02112194
	ldr r0, _020FE1C4 ; =0x02116238
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	mov r2, r1
	bl DWCi_SCREENlCopyPalette
	ldmfd sp!, {r3, pc}
_020FE1C0: .word ov17_02112194
_020FE1C4: .word Focus
	arm_func_end dispPushButton

	arm_static_func_start procError
procError: ; 0x020FE1C8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _020FE1F0 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE1F0: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x020FE1F4
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	bl DWCi_SBlEnable
	ldr r0, _020FE218 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE218: .word procScene
	arm_func_end procError1

	.rodata
ov17_02112194:
	.byte 0x02, 0x00, 0x00, 0x00
CELL_WEP:
	.byte 0x2E, 0x2D, 0x33
CELL_LV:
	.byte 0x18, 0x17, 0x16, 0x15, 0x00
R_TOUCH:
	.byte 0x07, 0x00, 0x32, 0x00, 0xD0, 0x00, 0x4C, 0x00, 0x07, 0x00, 0x4E, 0x00, 0xD0, 0x00, 0x68, 0x00
	.byte 0x07, 0x00, 0x6A, 0x00, 0xD0, 0x00, 0x84, 0x00, 0x07, 0x00, 0x86, 0x00, 0xD0, 0x00, 0xA0, 0x00
	.byte 0x85, 0x00, 0x1B, 0x00, 0xFD, 0x00, 0x2C, 0x00
R_FOCUS:
	.byte 0x04, 0x00, 0x2E, 0x00, 0xDB, 0x00, 0x3F, 0x00
	.byte 0x04, 0x00, 0x4A, 0x00, 0xDB, 0x00, 0x5B, 0x00, 0x04, 0x00, 0x66, 0x00, 0xDB, 0x00, 0x77, 0x00
	.byte 0x04, 0x00, 0x82, 0x00, 0xDB, 0x00, 0x93, 0x00, 0x82, 0x00, 0x18, 0x00, 0xF0, 0x00, 0x2C, 0x00
ov17_021121F0:
	.asciz "char/ybBgStep31.ncl.l"
	.balign 4, 0
ov17_02112208:
	.asciz "char/xb4ApListBack.nsc.l"

	.data
ov17_021130A8:
	.asciz "char/jb4ApList.nsc.l"

	.bss
Focus:
	.space 0x02
Pos:
	.space 0x02
MemSsal:
	.space 0x04


	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_BTNlSetForce
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExCell
	.public DWCi_CELLlDelete
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlSetPalette
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_Entry
	.public DWCi_FOCUSlDelete
	.public DWCi_FOCUSlDisp
	.public DWCi_FOCUSlDisp4
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_HLlLoad
	.public DWCi_Language
	.public DWCi_SceneEnd
	.public DWCi_SceneMenu
	.public DWCi_SceneSetList
	.public DWCi_SceneSetSelectWay
	.public DWCi_SetListReturn
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_TPlCheckTrigger
	.public DWCi_SceneSetUsbReady
	.public DWCi_SCREENlCopyPalette
	.public DWCi_SETTIGNlGet
	.public DWCi_SETTINGlGetSetType
	.public DWCi_SETTINGlSetSetting
	.public DWCi_SETTINGlErasePage
	.public DWCi_SNDlPlay
	.public DWCi_STEPlEnd
	.public DWCi_STEPlGet
	.public DWCi_STEPlIsEnd
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
	.public DWCi_IPTlCheckRepeat
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt
	.public GX_LoadOBJPltt

	.text

	arm_func_start DWCi_SceneSetSelectAp
DWCi_SceneSetSelectAp: ; 0x02103924
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210397C ; =0x0211626C
	mov r4, #0
	str r0, [r1, #4]
	strb r4, [r0, #0x1d]
	bl initGraphics
	mov r0, #1
	bl DWCi_HLlLoad
	mov r0, #0x2f
	mov r2, r4
	sub r1, r0, #0x30
	bl DWCi_COMMENTlDispEx
	mov r0, r4
	bl DWCi_CMNlStep
	bl initObj
	bl dispFocus
	ldr r0, _02103980 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_0210397C: .word FocusPos
_02103980: .word procInit
	arm_func_end DWCi_SceneSetSelectAp

	arm_static_func_start initGraphics
initGraphics: ; 0x02103984
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02103A5C ; =0x02112438
	add r3, sp, #0
	mov r2, #0xb
_02103998:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02103998
	ldr r0, _02103A60 ; =0x02113378
	ldr r1, _02103A64 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103A68 ; =0x0211338C
	ldr r1, _02103A6C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02103A70 ; =0x021133A4
	ldr r1, _02103A74 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103A78 ; =0x021133BC
	ldr r1, _02103A7C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0
	bl DWCi_Char
	mov r1, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r2, _02103A80 ; =0x0211626C
	mov r1, #0x10
	ldr r2, [r2, #4]
	str r0, [r2]
	mov r0, #1
	bl DWCi_GXlVisible
	ldr r2, _02103A84 ; =0x04001008
	ldr r1, _02103A88 ; =0x0400000A
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
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02103A5C: .word ov17_02112438
_02103A60: .word ov17_02113378
_02103A64: .word GX_LoadOBJPltt
_02103A68: .word ov17_0211338C
_02103A6C: .word GX_LoadBG2Char
_02103A70: .word ov17_021133A4
_02103A74: .word GX_LoadBGPltt
_02103A78: .word ov17_021133BC
_02103A7C: .word GX_LoadBG2Scr
_02103A80: .word FocusPos
_02103A84: .word 0x04001008
_02103A88: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start initObj
initObj: ; 0x02103A8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, #0
	ldr r6, _02103B88 ; =0x021123A8
	ldr r5, _02103B8C ; =0x0211239C
	ldr r4, _02103B90 ; =0x0211626C
	mov r11, r10
	mvn r7, #0
	mov r8, #3
_02103AAC:
	mov r0, r10
	bl DWCi_SETTINGlGetSetType
	mov r9, r0
	cmp r9, #0xff
	moveq r9, r8
	beq _02103B20
	mov r0, r11
	mov r1, #0x11
	mov r2, #1
	bl DWCi_CEINlSetExCell
	ldr r1, [r4, #4]
	add r3, r10, #3
	mov r2, r3, lsl #2
	add r1, r1, r10, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r4, #4]
	add r3, r6, r3, lsl #2
	add r0, r0, r10, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, r10, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl DWCi_CELLlSetPriority
_02103B20:
	ldrb r1, [r5, r9]
	mov r0, #0
	mov r2, #1
	bl DWCi_CEINlSetExCell
	ldr r1, [r4, #4]
	mov r2, r10, lsl #2
	add r1, r1, r10, lsl #2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r3, r6, r10, lsl #2
	add r0, r0, r10, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, r10, lsl #2
	ldr r0, [r0, #4]
	mov r2, #3
	bl DWCi_CELLlSetPriority
	add r10, r10, #1
	cmp r10, #3
	blt _02103AAC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02103B88: .word C_CELL
_02103B8C: .word CN_SET
_02103B90: .word FocusPos
	arm_func_end initObj

	arm_static_func_start procInit
procInit: ; 0x02103B94
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
	mov r4, #0x14
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
	ldr r0, _02103BF8 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02103BF8: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02103BFC
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
	ldr r0, _02103C38 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02103C38: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x02103C3C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_STEPlGet
	cmp r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02103C68 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103C68: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02103C6C
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02103C80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02103D70 ; =0x021123C0
	mov r5, #0
_02103C8C:
	add r0, r4, r5, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _02103CB4
	mov r0, #1
	bl DWCi_BTNlSet
	ldr r0, _02103D74 ; =0x0211626C
	strb r5, [r0]
	bl dispFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02103CB4:
	add r5, r5, #1
	cmp r5, #7
	blo _02103C8C
	mov r5, #1
	mov r0, r5
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02103CE0
	mov r0, r5
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_02103CE0:
	mov r4, #2
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02103D00
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_02103D00:
	mov r0, #0x40
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02103D1C
	mov r0, r5
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02103D1C:
	mov r0, #0x80
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02103D38
	mov r0, #3
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02103D38:
	mov r0, #0x20
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02103D54
	mov r0, #0
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02103D54:
	mov r0, #0x10
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_02103D70: .word R_TOUCH
_02103D74: .word FocusPos
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02103D78
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x02103D7C
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _02103D98
	cmp r0, #1
	beq _02103DDC
	ldmfd sp!, {r3, r4, r5, pc}
_02103D98:
	bl DWCi_Entry
	cmp r0, #0
	beq _02103DB0
	cmp r0, #1
	beq _02103DCC
	b _02103E7C
_02103DB0:
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _02103E88 ; =0x0211626C
	mov r1, #2
	ldr r0, [r0, #4]
	strb r1, [r0, #0x1d]
	b _02103E7C
_02103DCC:
	bl DWCi_BTNlDisable
	ldr r0, _02103E8C ; =DWCi_SceneEnd
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103DDC:
	ldr r0, _02103E88 ; =0x0211626C
	mov r4, #1
	ldr r1, [r0, #4]
	strb r4, [r1, #0x1d]
	ldrb r0, [r0]
	cmp r0, #4
	blo _02103E64
	sub r5, r0, #4
	mov r0, r5
	bl DWCi_SETTINGlGetSetType
	cmp r0, #0xff
	bne _02103E24
	mov r4, #9
	mov r0, r4
	bl DWCi_SNDlPlay
	sub r0, r4, #0xa
	bl DWCi_BTNlSetForce
	ldmfd sp!, {r3, r4, r5, pc}
_02103E24:
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_Language
	ldr r1, _02103E90 ; =0x021123A0
	add r12, r5, #1
	ldrsb r3, [r1, r0]
	mov r2, r4
	mov r0, #0x46
	mov r1, #0
	str r12, [sp]
	bl DWCi_WINlInitEx
	bl dispPushClear
	bl DWCi_BTNlDisable
	ldr r0, _02103E94 ; =procErase
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103E64:
	cmp r0, #2
	bhi _02103E70
	bl DWCi_SETTINGlSetSetting
_02103E70:
	mov r0, #6
	bl DWCi_SNDlPlay
	bl dispPush
_02103E7C:
	ldr r0, _02103E98 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103E88: .word FocusPos
_02103E8C: .word DWCi_SceneEnd
_02103E90: .word MSG_IDX
_02103E94: .word procErase
_02103E98: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x02103E9C
	stmfd sp!, {r3, lr}
	ldr r0, _02103ED0 ; =0x0211626C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _02103EB8
	bl DWCi_STEPlEnd
_02103EB8:
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _02103ED4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103ED0: .word FocusPos
_02103ED4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02103ED8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02103F5C ; =0x0211626C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #1
	bne _02103F20
	ldrb r0, [r0]
	cmp r0, #3
	beq _02103F1C
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	beq _02103F20
_02103F1C:
	bl DWCi_BTNlEnd
_02103F20:
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
	mov r2, #0x14
	bl DWCi_EFFlFade
	ldr r0, _02103F60 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103F5C: .word FocusPos
_02103F60: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02103F64
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_STEPlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _021040E0 ; =0x0211626C
_02103FA8:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02103FC0
	bl DWCi_CELLlDelete
_02103FC0:
	add r5, r5, #1
	cmp r5, #3
	blo _02103FA8
	ldr r4, _021040E0 ; =0x0211626C
	mov r5, #0
_02103FD4:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02103FEC
	bl DWCi_CELLlDelete
_02103FEC:
	add r5, r5, #1
	cmp r5, #3
	blo _02103FD4
	bl DWCi_FOCUSlDelete
	bl DWCi_COMMENTlDelete
	ldr r4, _021040E0 ; =0x0211626C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl DWCi_ARClRelease
	ldr r0, _021040E4 ; =0x021133D0
	ldr r1, _021040E8 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r6, #1
	mov r0, r6
	mov r1, r6
	bl DWCi_GXlInvisible
	mov r5, #0
	mov r0, r5
	mov r1, #0x14
	bl DWCi_GXlInvisible
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _02104060
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _021040EC ; =DWCi_SceneMenu
	b _021040D0
_02104060:
	ldrb r0, [r4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021040D4
_02104070: ; jump table
	b _02104080 ; case 0
	b _02104080 ; case 1
	b _02104080 ; case 2
	b _021040C0 ; case 3
_02104080:
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	bne _021040A4
	ldr r0, _021040F0 ; =DWCi_SceneSetSelectWay
	b _021040D0
_021040A4:
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	mov r0, r5
	bl DWCi_SetListReturn
	ldr r0, _021040F4 ; =DWCi_SceneSetList
	b _021040D0
_021040C0:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _021040F8 ; =DWCi_SceneSetUsbReady
_021040D0:
	bl DWCi_ChangeScene
_021040D4:
	ldr r0, _021040FC ; =0x02116270
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, r5, r6, pc}
_021040E0: .word FocusPos
_021040E4: .word ov17_021133D0
_021040E8: .word GX_LoadOBJPltt
_021040EC: .word DWCi_SceneMenu
_021040F0: .word DWCi_SceneSetSelectWay
_021040F4: .word DWCi_SceneSetList
_021040F8: .word DWCi_SceneSetUsbReady
_021040FC: .word MemSssa
	arm_func_end endScene2

	arm_static_func_start dispFocus
dispFocus: ; 0x02104100
	stmfd sp!, {r3, lr}
	ldr r0, _02104168 ; =0x0211626C
	ldrb r2, [r0]
	cmp r2, #4
	bhs _02104140
	mov r12, r2, lsl #3
	ldr r0, _0210416C ; =0x021123F8
	ldr r1, _02104170 ; =0x021123FC
	ldr r2, _02104174 ; =0x021123FA
	ldr r3, _02104178 ; =0x021123FE
	ldrh r0, [r0, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r3, pc}
_02104140:
	ldr r1, _0210416C ; =0x021123F8
	mov r3, r2, lsl #3
	ldr r2, _02104170 ; =0x021123FC
	ldr r0, _02104174 ; =0x021123FA
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #0
	bl DWCi_FOCUSlDisp
	ldmfd sp!, {r3, pc}
_02104168: .word FocusPos
_0210416C: .word R_FOCUS
_02104170: .word R_FOCUS+4
_02104174: .word R_FOCUS+2
_02104178: .word R_FOCUS+6
	arm_func_end dispFocus

	arm_static_func_start moveFocus
moveFocus: ; 0x0210417C
	stmfd sp!, {r4, lr}
	ldr r2, _0210433C ; =0x0211626C
	mov r4, #0
	ldrb r3, [r2]
	mov lr, #3
	mov r1, #1
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _02104324
_021041A0: ; jump table
	b _021041BC ; case 0
	b _021041F0 ; case 1
	b _02104224 ; case 2
	b _0210425C ; case 3
	b _02104284 ; case 4
	b _021042B8 ; case 5
	b _021042EC ; case 6
_021041BC:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r4, [r3, #0x1c]
	moveq r0, #2
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	streqb r1, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #4
	b _02104254
_021041F0:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	streqb r4, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #2
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #5
	b _02104254
_02104224:
	ldr r3, [r2, #4]
	mov r12, #2
	strb r12, [r3, #0x1c]
	cmp r0, #0
	streqb r1, [r2]
	beq _02104324
	cmp r0, #2
	streqb r4, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #6
_02104254:
	strneb r0, [r2]
	b _02104324
_0210425C:
	ldr r3, [r2, #4]
	cmp r0, #1
	ldrb r12, [r3, #0x1c]
	add r3, r12, #4
	streqb r3, [r2]
	beq _02104324
	cmp r0, #3
	streqb r12, [r2]
	movne r1, r4
	b _02104324
_02104284:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r4, [r3, #0x1c]
	moveq r0, #6
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #5
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r4, [r2]
	b _02104320
_021042B8:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #4
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #6
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r1, [r2]
	b _02104320
_021042EC:
	ldr r3, [r2, #4]
	mov r12, #2
	cmp r0, #0
	strb r12, [r3, #0x1c]
	moveq r0, #5
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #4
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r12, [r2]
_02104320:
	strneb lr, [r2]
_02104324:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #8
	bl DWCi_SNDlPlay
	bl dispFocus
	ldmfd sp!, {r4, pc}
_0210433C: .word FocusPos
	arm_func_end moveFocus

	arm_static_func_start dispPushClear
dispPushClear: ; 0x02104340
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _021043C8 ; =0x0211626C
	mov r7, #0
	ldrb r2, [r5]
	ldr r0, [r5, #4]
	mov r1, r7
	sub r4, r2, #4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl DWCi_CELLlGetObj
	mov r6, #0x32
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl DWCi_CEINlSet
	add r2, r4, #3
	ldr r0, [r5, #4]
	sub r6, r6, #0x33
	add r0, r0, r4, lsl #2
	ldr r1, _021043CC ; =0x021123A8
	ldr r0, [r0, #0x10]
	mov r12, r2, lsl #2
	ldrh r2, [r1, r12]
	mov r1, r6
	ldr r3, _021043D0 ; =0x021123AA
	ldrh r3, [r3, r12]
	bl DWCi_CELLlSetPosition
	ldr r0, [r5, #4]
	mov r1, r6
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl DWCi_CELLlSetPriority
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021043C8: .word FocusPos
_021043CC: .word C_CELL
_021043D0: .word C_CELL+2
	arm_func_end dispPushClear

	arm_static_func_start procErase
procErase: ; 0x021043D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02104524 ; =0x0211626C
	ldrb r0, [r6]
	sub r5, r0, #4
	bl DWCi_WINlGet
	cmp r0, #0
	beq _02104498
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0xe
	bl DWCi_SNDlPlay
	mov r0, r5
	bl DWCi_SETTINGlErasePage
	ldr r0, [r6, #4]
	mov r4, #0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	mov r1, r4
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r4
	mov r7, #0x56
	mov r1, r7
	bl DWCi_CEINlSet
	sub r7, r7, #0x57
	ldr r0, [r6, #4]
	mov r12, r5, lsl #2
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	mov r1, r7
	ldr r2, _02104528 ; =0x021123A8
	ldr r3, _0210452C ; =0x021123AA
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl DWCi_CELLlSetPosition
	mov r1, r7
	ldr r0, [r6, #4]
	mov r2, #3
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	bl DWCi_CELLlSetPriority
	ldr r0, [r6, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl DWCi_CELLlDelete
	ldr r0, [r6, #4]
	add r0, r0, r5, lsl #2
	str r4, [r0, #0x10]
	b _02104514
_02104498:
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, [r6, #4]
	mov r7, #0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl DWCi_CELLlGetObj
	mov r4, #0x11
	mov r2, r0
	mov r0, r7
	mov r1, r4
	bl DWCi_CEINlSet
	sub r7, r4, #0x12
	add r0, r5, #3
	mov r4, r0, lsl #2
	ldr r0, [r6, #4]
	ldr r2, _02104528 ; =0x021123A8
	ldr r3, _0210452C ; =0x021123AA
	add r0, r0, r5, lsl #2
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r6, #4]
	mov r1, r7
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl DWCi_CELLlSetPriority
_02104514:
	bl DWCi_WINlEnd
	ldr r0, _02104530 ; =procErase1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104524: .word FocusPos
_02104528: .word C_CELL
_0210452C: .word C_CELL+2
_02104530: .word procErase1
	arm_func_end procErase

	arm_static_func_start procErase1
procErase1: ; 0x02104534
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02104554 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104554: .word procScene
	arm_func_end procErase1

	arm_static_func_start dispPush
dispPush: ; 0x02104558
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _02104620 ; =0x02112430
	ldr r0, _02104624 ; =0x02112434
	ldrb r7, [r1]
	ldrb r6, [r1, #1]
	ldrb r5, [r1, #2]
	ldrb lr, [r1, #3]
	ldrb r12, [r0]
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	ldr r4, _02104628 ; =0x0211626C
	strb r7, [sp, #4]
	ldrb r0, [r4]
	strb r1, [sp, #3]
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb lr, [sp, #7]
	strb r12, [sp]
	strb r3, [sp, #1]
	strb r2, [sp, #2]
	cmp r0, #3
	add r1, sp, #4
	addhi sp, sp, #8
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r1, r0]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	mov r2, r1
	bl DWCi_SCREENlCopyPalette
	ldrb r0, [r4]
	cmp r0, #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl DWCi_SETTINGlGetSetType
	ldr r1, _02104628 ; =0x0211626C
	cmp r0, #2
	ldrb r4, [r1]
	ldr r1, [r1, #4]
	movgt r0, #3
	add r2, sp, #0
	ldrb r3, [r2, r0]
	add r0, r1, r4, lsl #2
	ldr r0, [r0, #4]
	mvn r1, #0
	mov r2, #0
	bl DWCi_CELLlSetPalette
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104620: .word ov17_02112430
_02104624: .word ov17_02112434
_02104628: .word FocusPos
	arm_func_end dispPush

	.rodata
CN_SET:
	.byte 0x13, 0x14, 0x12, 0x56
MSG_IDX:
	.byte 0x03, 0x2D, 0x27, 0x1D, 0x32, 0x30, 0x06, 0x00
C_CELL:
	.byte 0x08, 0x00, 0x30, 0x00, 0x5A, 0x00, 0x30, 0x00
	.byte 0xAC, 0x00, 0x30, 0x00, 0x0C, 0x00, 0x58, 0x00, 0x5E, 0x00, 0x58, 0x00, 0xB0, 0x00, 0x58, 0x00
R_TOUCH:
	.byte 0x08, 0x00, 0x20, 0x00, 0x54, 0x00, 0x56, 0x00, 0x5A, 0x00, 0x20, 0x00, 0xA6, 0x00, 0x56, 0x00
	.byte 0xAC, 0x00, 0x20, 0x00, 0xF8, 0x00, 0x56, 0x00, 0x08, 0x00, 0x78, 0x00, 0xF8, 0x00, 0xA0, 0x00
	.byte 0x08, 0x00, 0x54, 0x00, 0x54, 0x00, 0x70, 0x00, 0x5A, 0x00, 0x54, 0x00, 0xA6, 0x00, 0x70, 0x00
	.byte 0xAC, 0x00, 0x54, 0x00, 0xF8, 0x00, 0x70, 0x00
R_FOCUS:
	.byte 0x06, 0x00, 0x1E, 0x00, 0x46, 0x00, 0x48, 0x00
	.byte 0x58, 0x00, 0x1E, 0x00, 0x98, 0x00, 0x48, 0x00, 0xAA, 0x00, 0x1E, 0x00, 0xEA, 0x00, 0x48, 0x00
	.byte 0x06, 0x00, 0x76, 0x00, 0xEA, 0x00, 0x92, 0x00, 0x09, 0x00, 0x54, 0x00, 0x43, 0x00, 0x70, 0x00
	.byte 0x5B, 0x00, 0x54, 0x00, 0x95, 0x00, 0x70, 0x00, 0xAD, 0x00, 0x54, 0x00, 0xE7, 0x00, 0x70, 0x00
ov17_02112430:
	.byte 0x03, 0x04, 0x05, 0x07
ov17_02112434:
	.byte 0x0A, 0x09, 0x0B, 0x06
ov17_02112438:
	.asciz "char/ybBgStep11.ncl.l"

	.data
ov17_02113378:
	.asciz "char/ybObjWay.ncl.l"
	.balign 4, 0
ov17_0211338C:
	.asciz "char/jbBgStep1.ncg.l"
	.balign 4, 0
ov17_021133A4:
	.asciz "char/jbBgStep1.ncl.l"
	.balign 4, 0
ov17_021133BC:
	.asciz "char/jb2Ap.nsc.l"
	.balign 4, 0
ov17_021133D0:
	.asciz "char/ybObjMain.ncl.l"

	.bss
FocusPos:
	.space 0x04
MemSssa:
	.space 0x04


	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_FOCUSlDelete
	.public DWCi_FOCUSlDisp4
	.public DWCi_Flag
	.public DWCi_HLlLoadSet
	.public DWCi_Language
	.public DWCi_SCREENlCopyPalette
	.public DWCi_SETTIGNlGet
	.public DWCi_SNDlPlay
	.public DWCi_SceneSetAossButton
	.public DWCi_SceneSetList
	.public DWCi_SceneSetRakuReady
	.public DWCi_SceneSetSearch
	.public DWCi_SceneSetSelectAp
	.public DWCi_SetListReturn
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_TPlCheckTrigger
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

	.text
	arm_func_start DWCi_SceneSetSelectWay
DWCi_SceneSetSelectWay: ; 0x0210462C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl DWCi_SETTIGNlGet
	ldr r1, _02104738 ; =0x02116274
	mov r2, #0
	strb r2, [r1, #2]
	ldrsb r2, [r1]
	mov r4, r0
	cmp r2, #0
	moveq r0, #1
	streqb r0, [r1]
	bl DWCi_Language
	cmp r0, #0
	beq _02104688
	ldr r0, _02104738 ; =0x02116274
	ldrsb r1, [r0, #1]
	cmp r1, #2
	moveq r1, #0
	streqb r1, [r0, #1]
	ldr r0, _02104738 ; =0x02116274
	ldrsb r1, [r0]
	cmp r1, #2
	moveq r1, #1
	streqb r1, [r0]
_02104688:
	bl initGraphics
	bl DWCi_HLlLoadSet
	bl DWCi_Language
	mov r5, r0
	ldrb r1, [r4, #0xf4]
	mov r0, #0x32
	ldr r3, _0210473C ; =0x02112454
	add r2, r1, #1
	ldrsb r1, [r3, r5]
	bl DWCi_COMMENTlDispEx
	mov r7, #1
	mov r0, r7
	bl DWCi_CMNlStep
	mov r0, r7
	bl DWCi_Flag
	mov r6, r0
	mov r0, r7
	bl DWCi_Flag
	mov r5, r0
	mov r0, r7
	bl DWCi_Flag
	mov r4, r0
	mov r0, r7
	bl DWCi_Flag
	mov r3, r0
	ldr r1, _02104740 ; =0x021124D4
	ldr r0, _02104738 ; =0x02116274
	add r12, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _02104744 ; =0x021124D8
	ldr r0, _02104748 ; =0x021124D6
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	mov r5, lr, lsl #3
	ldrh r0, [r5, r12]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0210474C ; =0x021124DA
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl DWCi_FOCUSlDisp4
	ldr r0, _02104750 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104738: .word FocusLast
_0210473C: .word MSG_IDX
_02104740: .word R_FOCUS
_02104744: .word R_FOCUS+4
_02104748: .word R_FOCUS+2
_0210474C: .word R_FOCUS+6
_02104750: .word procInit
	arm_func_end DWCi_SceneSetSelectWay

	arm_static_func_start initGraphics
initGraphics: ; 0x02104754
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02104810 ; =0x0211247C
	add r3, sp, #0
	mov r2, #0xb
_02104768:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02104768
	ldr r0, _02104814 ; =0x021133E8
	ldr r1, _02104818 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _0210481C ; =0x02113400
	ldr r1, _02104820 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02104824 ; =0x02113418
	ldr r1, _02104828 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0
	bl DWCi_Char
	mov r1, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _0210482C ; =0x02116274
	ldr r2, _02104830 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _02104834 ; =0x0400000A
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
_02104810: .word ov17_0211247C
_02104814: .word ov17_021133E8
_02104818: .word GX_LoadBG2Char
_0210481C: .word ov17_02113400
_02104820: .word GX_LoadBGPltt
_02104824: .word ov17_02113418
_02104828: .word GX_LoadBG2Scr
_0210482C: .word FocusLast
_02104830: .word 0x04001008
_02104834: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02104838
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
	ldr r0, _0210489C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210489C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x021048A0
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
	ldr r0, _021048DC ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021048DC: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x021048E0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02104900 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104900: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x02104904
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02104918
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02104A7C ; =0x02112494
	mov r5, #0
	mov r7, #1
_02104928:
	mov r0, r7
	bl DWCi_Flag
	add r0, r4, r0, lsl #5
	add r0, r0, r5, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _021049C4
	mov r0, r7
	bl DWCi_BTNlSet
	ldr r8, _02104A80 ; =0x02116274
	mov r0, r7
	strb r5, [r8, #1]
	bl DWCi_Flag
	mov r6, r0
	mov r0, r7
	bl DWCi_Flag
	mov r5, r0
	mov r0, r7
	bl DWCi_Flag
	mov r4, r0
	mov r0, r7
	bl DWCi_Flag
	ldrsb r1, [r8, #1]
	ldr r2, _02104A84 ; =0x021124D8
	mov r12, r0
	mov r3, r1, lsl #3
	ldr r0, _02104A88 ; =0x021124D4
	ldr r1, _02104A8C ; =0x021124D6
	add r5, r2, r5, lsl #5
	add r2, r1, r4, lsl #5
	ldr r4, _02104A90 ; =0x021124DA
	add r0, r0, r6, lsl #5
	add r4, r4, r12, lsl #5
	ldrh r0, [r3, r0]
	ldrh r1, [r3, r5]
	ldrh r2, [r3, r2]
	ldrh r3, [r3, r4]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021049C4:
	add r5, r5, #1
	cmp r5, #4
	blo _02104928
	mov r0, r7
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _021049EC
	mov r0, r7
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021049EC:
	mov r4, #2
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _02104A0C
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A0C:
	mov r0, #0x40
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02104A28
	mov r0, r7
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A28:
	mov r0, #0x80
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02104A44
	mov r0, #3
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A44:
	mov r0, #0x20
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _02104A60
	mov r0, #0
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A60:
	mov r0, #0x10
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl moveFocus
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A7C: .word R_TOUCH
_02104A80: .word FocusLast
_02104A84: .word R_FOCUS+4
_02104A88: .word R_FOCUS
_02104A8C: .word R_FOCUS+2
_02104A90: .word R_FOCUS+6
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02104A94
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x02104A98
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _02104AB4
	cmp r0, #1
	beq _02104AC0
	ldmfd sp!, {r3, pc}
_02104AB4:
	mov r0, #7
	bl DWCi_SNDlPlay
	b _02104AD8
_02104AC0:
	mov r0, #6
	bl DWCi_SNDlPlay
	bl dispPush
	ldr r0, _02104AE4 ; =0x02116274
	mov r1, #1
	strb r1, [r0, #2]
_02104AD8:
	ldr r0, _02104AE8 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104AE4: .word FocusLast
_02104AE8: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x02104AEC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _02104B08 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104B08: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02104B0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02104B70 ; =0x02116274
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _02104B34
	bl DWCi_BTNlEnd
_02104B34:
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
	ldr r0, _02104B74 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02104B70: .word FocusLast
_02104B74: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x02104B78
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWCi_FOCUSlDelete
	bl DWCi_COMMENTlDelete
	ldr r4, _02104C94 ; =0x02116274
	ldr r0, [r4, #4]
	bl DWCi_ARClRelease
	mov r0, r6
	mov r1, r6
	bl DWCi_GXlInvisible
	mov r0, r5
	mov r1, #0x14
	bl DWCi_GXlInvisible
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02104C00
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104C98 ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C00:
	ldrsb r0, [r4, #1]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02104C10: ; jump table
	b _02104C20 ; case 0
	b _02104C38 ; case 1
	b _02104C50 ; case 2
	b _02104C68 ; case 3
_02104C20:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104C9C ; =DWCi_SceneSetSearch
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C38:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104CA0 ; =DWCi_SceneSetAossButton
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C50:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104CA4 ; =DWCi_SceneSetRakuReady
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C68:
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	mov r0, r6
	bl DWCi_SetListReturn
	ldr r0, _02104CA8 ; =DWCi_SceneSetList
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C94: .word FocusLast
_02104C98: .word DWCi_SceneSetSelectAp
_02104C9C: .word DWCi_SceneSetSearch
_02104CA0: .word DWCi_SceneSetAossButton
_02104CA4: .word DWCi_SceneSetRakuReady
_02104CA8: .word DWCi_SceneSetList
	arm_func_end endScene2

	arm_static_func_start moveFocus
moveFocus: ; 0x02104CAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02104D84 ; =0x02116274
	mov r7, #1
	mov r5, r0
	mov r0, r7
	ldrsb r4, [r6, #1]
	bl DWCi_Flag
	ldr r2, _02104D88 ; =0x0211245B
	sub r1, r7, #2
	add r0, r2, r0, lsl #4
	add r0, r0, r4, lsl #2
	ldrsb r2, [r5, r0]
	cmp r2, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r2, #0
	streqb r4, [r6]
	cmn r2, #2
	ldreq r0, _02104D84 ; =0x02116274
	ldreqsb r1, [r0]
	streqb r1, [r0, #1]
	ldrne r0, _02104D84 ; =0x02116274
	strneb r2, [r0, #1]
	mov r0, #8
	bl DWCi_SNDlPlay
	mov r7, #1
	mov r0, r7
	bl DWCi_Flag
	mov r6, r0
	mov r0, r7
	bl DWCi_Flag
	mov r5, r0
	mov r0, r7
	bl DWCi_Flag
	mov r4, r0
	mov r0, r7
	bl DWCi_Flag
	mov r3, r0
	ldr r0, _02104D84 ; =0x02116274
	ldr r1, _02104D8C ; =0x021124D4
	ldrsb r12, [r0, #1]
	ldr r0, _02104D90 ; =0x021124D6
	add r6, r1, r6, lsl #5
	ldr r1, _02104D94 ; =0x021124D8
	add r2, r0, r4, lsl #5
	ldr r4, _02104D98 ; =0x021124DA
	add r1, r1, r5, lsl #5
	mov r5, r12, lsl #3
	add r3, r4, r3, lsl #5
	ldrh r0, [r5, r6]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldrh r3, [r5, r3]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104D84: .word FocusLast
_02104D88: .word MOVE_TBL
_02104D8C: .word R_FOCUS
_02104D90: .word R_FOCUS+2
_02104D94: .word R_FOCUS+4
_02104D98: .word R_FOCUS+6
	arm_func_end moveFocus

	arm_static_func_start dispPush
dispPush: ; 0x02104D9C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02104DEC ; =0x02112450
	ldr r0, _02104DF0 ; =0x02116274
	ldrb lr, [r1]
	ldrb r12, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	ldrsb r1, [r0, #1]
	add r4, sp, #0
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl DWCi_SCREENlCopyPalette
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02104DEC: .word ov17_02112450
_02104DF0: .word FocusLast
	arm_func_end dispPush

	.rodata
ov17_02112450:
	.byte 0x01, 0x02, 0x03, 0x04
MSG_IDX:
	.byte 0x03, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x06
MOVE_TBL:
	.byte 0xFF, 0xFE, 0xFF, 0xFE, 0x03
	.byte 0x00, 0x03, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x01, 0x00, 0xFF, 0xFE, 0xFF, 0xFE, 0x03
	.byte 0x00, 0x02, 0x00, 0x01, 0x00, 0x03, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00
ov17_0211247C:
	.asciz "char/ybBgStep21.ncl.l"
	.balign 4, 0
R_TOUCH:
	.byte 0x08, 0x00, 0x20, 0x00, 0xF8, 0x00, 0x5C, 0x00, 0x08, 0x00, 0x64, 0x00
	.byte 0x7E, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x83, 0x00, 0x64, 0x00
	.byte 0xF8, 0x00, 0xA0, 0x00, 0x08, 0x00, 0x20, 0x00, 0xF8, 0x00, 0x5C, 0x00, 0x08, 0x00, 0x64, 0x00
	.byte 0x64, 0x00, 0xA0, 0x00, 0x68, 0x00, 0x64, 0x00, 0xC4, 0x00, 0xA0, 0x00, 0xC8, 0x00, 0x64, 0x00
	.byte 0xF8, 0x00, 0xA0, 0x00
R_FOCUS:
	.byte 0x06, 0x00, 0x1E, 0x00, 0xEA, 0x00, 0x4E, 0x00, 0x06, 0x00, 0x62, 0x00, 0x70, 0x00, 0x92, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x62, 0x00, 0xEA, 0x00, 0x92, 0x00
	.byte 0x06, 0x00, 0x1E, 0x00, 0xEA, 0x00, 0x4E, 0x00, 0x06, 0x00, 0x62, 0x00, 0x56, 0x00, 0x92, 0x00
	.byte 0x66, 0x00, 0x62, 0x00, 0xB6, 0x00, 0x92, 0x00, 0xC6, 0x00, 0x62, 0x00, 0xEA, 0x00, 0x92, 0x00

	.data
ov17_021133E8:
	.asciz "char/jbBgStep2.ncg.l"
	.balign 4, 0
ov17_02113400:
	.asciz "char/ybBgStep2.ncl.l"
	.balign 4, 0
ov17_02113418:
	.asciz "char/jb3Way.nsc.l"

	.bss
FocusLast:
	.space 0x01
FocusPos:
	.space 0x01
Choose:
	.space 0x02
Palette:
	.space 0x04

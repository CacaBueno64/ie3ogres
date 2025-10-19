
	.include "asm/macros/function.inc"
	.public DWCi_CEINlRead
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlInit
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_Entry
	.public DWCi_FOCUSlInit
	.public DWCi_Flag
	.public DWCi_GXlVisible
	.public DWCi_HLlInit
	.public DWCi_Language
	.public DWCi_MSGlInit
	.public DWCi_MSGlRead
	.public DWCi_SETTIGNlInit
	.public DWCi_SceneMenu
	.public DWCi_SceneSetSelectAp
	.public DWCi_SetParam_
	.public GXS_LoadBG1Char
	.public GXS_LoadBG1Scr
	.public GXS_LoadBGPltt
	.public GXS_LoadOBJ
	.public GXS_LoadOBJPltt
	.public GX_LoadBG2Char
	.public GX_LoadBGPltt
	.public GX_LoadOBJ
	.public GX_LoadOBJPltt

	.text
	arm_func_start DWCi_SceneInit
DWCi_SceneInit: ; 0x020F9388
	stmfd sp!, {r4, lr}
	bl DWCi_SETTIGNlInit
	bl DWCi_MSGlInit
	bl DWCi_FOCUSlInit
	bl DWCi_HLlInit
	bl DWCi_COMMENTlInit
	bl DWCi_Language
	cmp r0, #1
	bne _020F93C4
	mov r0, #2
	bl DWCi_Flag
	cmp r0, #0
	beq _020F93C4
	ldr r0, _020F94F0 ; =0x02112DC8
	b _020F93D0
_020F93C4:
	bl DWCi_Language
	ldr r1, _020F94F4 ; =0x02112DAC
	ldr r0, [r1, r0, lsl #2]
_020F93D0:
	bl DWCi_MSGlRead
	ldr r1, _020F94F8 ; =DWCiMsgCmn
	str r0, [r1]
	ldr r0, _020F94FC ; =0x02112DD8
	bl DWCi_Char
	mov r1, r0
	mov r0, #1
	bl DWCi_CEINlRead
	ldr r0, _020F9500 ; =0x02112DEC
	bl DWCi_Char
	mov r1, r0
	mov r0, #0
	bl DWCi_CEINlRead
	ldr r0, _020F9504 ; =0x02112E00
	ldr r1, _020F9508 ; =GXS_LoadBG1Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020F950C ; =0x02112E14
	ldr r1, _020F9510 ; =GXS_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9514 ; =0x02112E28
	ldr r1, _020F9518 ; =GXS_LoadOBJ
	bl DWCi_CMNlLoadResource
	ldr r0, _020F951C ; =0x02112E40
	ldr r1, _020F9520 ; =GXS_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9524 ; =0x02112E58
	ldr r1, _020F9528 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020F952C ; =0x02112E70
	ldr r1, _020F9530 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9534 ; =0x02112E88
	ldr r1, _020F9538 ; =GX_LoadOBJ
	bl DWCi_CMNlLoadResource
	ldr r0, _020F953C ; =0x02112EA0
	ldr r1, _020F9540 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	bl DWCi_Entry
	cmp r0, #0
	beq _020F947C
	cmp r0, #1
	beq _020F9484
	b _020F9490
_020F947C:
	ldr r0, _020F9544 ; =0x02112EB8
	b _020F9488
_020F9484:
	ldr r0, _020F9548 ; =0x02112ECC
_020F9488:
	ldr r1, _020F954C ; =GXS_LoadBG1Scr
	bl DWCi_CMNlLoadResource
_020F9490:
	ldr r2, _020F9550 ; =0x0400100A
	mov r4, #2
	ldrh r0, [r2]
	sub r3, r2, #0x1000
	mov r1, r4
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r2, [r3]
	mov r0, #1
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	bl DWCi_GXlVisible
	mov r1, r4
	mov r0, #0
	bl DWCi_GXlVisible
	ldr r0, _020F9554 ; =procFade
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F94F0: .word ov17_02112DC8
_020F94F4: .word MSG_FILE
_020F94F8: .word DWCiMsgCmn
_020F94FC: .word ov17_02112DD8
_020F9500: .word ov17_02112DEC
_020F9504: .word ov17_02112E00
_020F9508: .word GXS_LoadBG1Char
_020F950C: .word ov17_02112E14
_020F9510: .word GXS_LoadBGPltt
_020F9514: .word ov17_02112E28
_020F9518: .word GXS_LoadOBJ
_020F951C: .word ov17_02112E40
_020F9520: .word GXS_LoadOBJPltt
_020F9524: .word ov17_02112E58
_020F9528: .word GX_LoadBG2Char
_020F952C: .word ov17_02112E70
_020F9530: .word GX_LoadBGPltt
_020F9534: .word ov17_02112E88
_020F9538: .word GX_LoadOBJ
_020F953C: .word ov17_02112EA0
_020F9540: .word GX_LoadOBJPltt
_020F9544: .word ov17_02112EB8
_020F9548: .word ov17_02112ECC
_020F954C: .word GXS_LoadBG1Scr
_020F9550: .word 0x0400100A
_020F9554: .word procFade
	arm_func_end DWCi_SceneInit

	arm_static_func_start procFade
procFade: ; 0x020F9558
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #2
	mov r4, #0x14
	mov r0, r5
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl DWCi_EFFlFade
	mov r0, r5
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl DWCi_EFFlFade
	ldr r0, _020F9598 ; =procWait
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020F9598: .word procWait
	arm_func_end procFade

	arm_static_func_start procWait
procWait: ; 0x020F959C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_Entry
	cmp r0, #0
	beq _020F95E0
	cmp r0, #1
	beq _020F95F8
	ldmfd sp!, {r3, r4, r5, pc}
_020F95E0:
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9610 ; =DWCi_SceneMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020F95F8:
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9614 ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020F9610: .word DWCi_SceneMenu
_020F9614: .word DWCi_SceneSetSelectAp
	arm_func_end procWait

	.data
ov17_02112D3C:
	.asciz "msg/kor.bmg.l"
	.balign 4, 0
ov17_02112D4C:
	.asciz "msg/eng.bmg.l"
	.balign 4, 0
ov17_02112D5C:
	.asciz "msg/ita.bmg.l"
	.balign 4, 0
ov17_02112D6C:
	.asciz "msg/ger.bmg.l"
	.balign 4, 0
ov17_02112D7C:
	.asciz "msg/fre.bmg.l"
	.balign 4, 0
ov17_02112D8C:
	.asciz "msg/spa.bmg.l"
	.balign 4, 0
ov17_02112D9C:
	.asciz "msg/jap.bmg.l"
	.balign 4, 0
MSG_FILE:
	.word ov17_02112D9C, ov17_02112D4C ,ov17_02112D7C, ov17_02112D6C, ov17_02112D5C
	.word ov17_02112D8C, ov17_02112D3C
ov17_02112DC8:
	.asciz "msg/usa.bmg.l"
	.balign 4, 0
ov17_02112DD8:
	.asciz "char/jtMain.nce.l"
	.balign 4, 0
ov17_02112DEC:
	.asciz "char/jbMain.nce.l"
	.balign 4, 0
ov17_02112E00:
	.asciz "char/jtBgMain.ncg.l"
	.balign 4, 0
ov17_02112E14:
	.asciz "char/jtBgMain.ncl.l"
	.balign 4, 0
ov17_02112E28:
	.asciz "char/jtObjMain.ncg.l"
	.balign 4, 0
ov17_02112E40:
	.asciz "char/xtObjMain.ncl.l"
	.balign 4, 0
ov17_02112E58:
	.asciz "char/jbBgStep1.ncg.l"
	.balign 4, 0
ov17_02112E70:
	.asciz "char/jbBgStep1.ncl.l"
	.balign 4, 0
ov17_02112E88:
	.asciz "char/jbObjMain.ncg.l"
	.balign 4, 0
ov17_02112EA0:
	.asciz "char/ybObjMain.ncl.l"
	.balign 4, 0
ov17_02112EB8:
	.asciz "char/jtTop.nsc.l"
	.balign 4, 0
ov17_02112ECC:
	.asciz "char/jtStep1.nsc.l"

	.bss
	.global DWCiMsgCmn
DWCiMsgCmn:
	.space 0x04

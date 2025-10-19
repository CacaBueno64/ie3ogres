
	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlGet
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_FOCUSlDelete
	.public DWCi_FOCUSlDisp4
	.public DWCi_HLlLoad
	.public DWCi_SceneEnd
	.public DWCi_SetParam_
	.public DWCi_TPlCheckTrigger
	.public DWCi_SceneOptMenu
	.public DWCi_SceneSetSelectAp
	.public DWCi_SCREENlCopyPalette
	.public DWCi_SNDlPlay
	.public DWCi_STEPlChangeScr
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
	arm_func_start DWCi_SceneMenu
DWCi_SceneMenu: ; 0x020F9618
	stmfd sp!, {r4, lr}
	bl initGraphics
	mov r4, #0
	mov r0, r4
	bl DWCi_HLlLoad
	mov r0, #0x2e
	mov r2, r4
	sub r1, r0, #0x2f
	bl DWCi_COMMENTlDispEx
	mov r0, #4
	bl DWCi_STEPlChangeScr
	ldr r0, _020F9680 ; =0x021161FC
	ldr r3, _020F9684 ; =0x02112104
	ldrb r0, [r0]
	ldr r1, _020F9688 ; =0x02112108
	ldr r2, _020F968C ; =0x02112106
	mov r12, r0, lsl #3
	ldrh r0, [r3, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldr r3, _020F9690 ; =0x0211210A
	ldrh r3, [r3, r12]
	bl DWCi_FOCUSlDisp4
	ldr r0, _020F9694 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9680: .word FocusPos
_020F9684: .word R_FOCUS
_020F9688: .word R_FOCUS+4
_020F968C: .word R_FOCUS+2
_020F9690: .word R_FOCUS+6
_020F9694: .word procInit
	arm_func_end DWCi_SceneMenu

	arm_static_func_start initGraphics
initGraphics: ; 0x020F9698
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _020F9754 ; =0x02112114
	add r3, sp, #0
	mov r2, #0xb
_020F96AC:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020F96AC
	ldr r0, _020F9758 ; =0x02112EE0
	ldr r1, _020F975C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9760 ; =0x02112EF8
	ldr r1, _020F9764 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9768 ; =0x02112F10
	ldr r1, _020F976C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0
	bl DWCi_Char
	mov r1, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _020F9770 ; =0x021161FC
	ldr r2, _020F9774 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _020F9778 ; =0x0400000A
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
_020F9754: .word ov17_02112114
_020F9758: .word ov17_02112EE0
_020F975C: .word GX_LoadBG2Char
_020F9760: .word ov17_02112EF8
_020F9764: .word GX_LoadBGPltt
_020F9768: .word ov17_02112F10
_020F976C: .word GX_LoadBG2Scr
_020F9770: .word FocusPos
_020F9774: .word 0x04001008
_020F9778: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020F977C
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
	ldr r0, _020F97E0 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F97E0: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020F97E4
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
	ldr r0, _020F9820 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9820: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020F9824
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020F9844 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9844: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020F9848
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020F985C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020F9974 ; =0x021120F4
	mov r4, #0
_020F9868:
	add r0, r5, r4, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F98B8
	mov r0, #1
	bl DWCi_BTNlSet
	and r1, r4, #0xff
	mov r5, r1, lsl #3
	ldr r0, _020F9978 ; =0x02112104
	ldr r1, _020F997C ; =0x02112108
	ldr r2, _020F9980 ; =0x02112106
	ldr r3, _020F9984 ; =0x0211210A
	ldr r12, _020F9988 ; =0x021161FC
	ldrh r0, [r0, r5]
	ldrh r1, [r1, r5]
	ldrh r2, [r2, r5]
	ldrh r3, [r3, r5]
	strb r4, [r12]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r3, r4, r5, pc}
_020F98B8:
	add r4, r4, #1
	cmp r4, #2
	blo _020F9868
	mov r5, #1
	mov r0, r5
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020F98E4
	mov r0, r5
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020F98E4:
	mov r4, #2
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020F9904
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020F9904:
	mov r0, #0x40
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F9920
	mov r0, r5
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020F9920:
	mov r0, #0x80
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F993C
	mov r0, #3
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020F993C:
	mov r0, #0x20
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F9958
	mov r0, #0
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020F9958:
	mov r0, #0x10
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020F9974: .word R_TOUCH
_020F9978: .word R_FOCUS
_020F997C: .word R_FOCUS+4
_020F9980: .word R_FOCUS+2
_020F9984: .word R_FOCUS+6
_020F9988: .word FocusPos
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020F998C
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020F9990
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020F99AC
	cmp r0, #1
	beq _020F99C0
	ldmfd sp!, {r3, pc}
_020F99AC:
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _020F99D8 ; =DWCi_SceneEnd
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F99C0:
	mov r0, #6
	bl DWCi_SNDlPlay
	bl dispPushButton
	ldr r0, _020F99DC ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F99D8: .word DWCi_SceneEnd
_020F99DC: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020F99E0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020F99FC ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F99FC: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020F9A00
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
	mov r2, #0x16
	bl DWCi_EFFlFade
	ldr r0, _020F9A54 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9A54: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020F9A58
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
	bl DWCi_FOCUSlDelete
	bl DWCi_COMMENTlDelete
	ldr r4, _020F9AF8 ; =0x021161FC
	ldr r0, [r4, #4]
	bl DWCi_ARClRelease
	mov r0, r6
	mov r1, r6
	bl DWCi_GXlInvisible
	mov r0, r5
	mov r1, #0x14
	bl DWCi_GXlInvisible
	ldrb r0, [r4]
	cmp r0, #0
	beq _020F9AC8
	cmp r0, #1
	beq _020F9AE0
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AC8:
	mov r0, r6
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9AFC ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AE0:
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9B00 ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AF8: .word FocusPos
_020F9AFC: .word DWCi_SceneSetSelectAp
_020F9B00: .word DWCi_SceneOptMenu
	arm_func_end endScene2

	arm_static_func_start moveFocus
moveFocus: ; 0x020F9B04
	stmfd sp!, {r4, lr}
	cmp r0, #1
	cmpne r0, #3
	ldmeqfd sp!, {r4, pc}
	ldr r4, _020F9B5C ; =0x021161FC
	mov r0, #8
	ldrb r1, [r4]
	eor r1, r1, #1
	strb r1, [r4]
	bl DWCi_SNDlPlay
	ldrb r2, [r4]
	ldr r0, _020F9B60 ; =0x02112104
	ldr r1, _020F9B64 ; =0x02112108
	mov r4, r2, lsl #3
	ldr r2, _020F9B68 ; =0x02112106
	ldr r3, _020F9B6C ; =0x0211210A
	ldrh r0, [r0, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r4, pc}
_020F9B5C: .word FocusPos
_020F9B60: .word R_FOCUS
_020F9B64: .word R_FOCUS+4
_020F9B68: .word R_FOCUS+2
_020F9B6C: .word R_FOCUS+6
	arm_func_end moveFocus

	arm_static_func_start dispPushButton
dispPushButton: ; 0x020F9B70
	stmfd sp!, {r3, lr}
	ldr r1, _020F9BA8 ; =0x021120F0
	ldr r0, _020F9BAC ; =0x021161FC
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb r1, [r0]
	add r12, sp, #0
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r1, [r12, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl DWCi_SCREENlCopyPalette
	ldmfd sp!, {r3, pc}
_020F9BA8: .word ov17_021120F0
_020F9BAC: .word FocusPos
	arm_func_end dispPushButton

	.rodata
ov17_021120F0:
	.byte 0x01, 0x02, 0x00, 0x00
R_TOUCH:
	.byte 0x08, 0x00, 0x20, 0x00, 0xAC, 0x00, 0xA0, 0x00, 0xB4, 0x00, 0x20, 0x00, 0xF8, 0x00, 0xA0, 0x00
R_FOCUS:
	.byte 0x06, 0x00, 0x1E, 0x00, 0x9E, 0x00, 0x92, 0x00, 0xB2, 0x00, 0x1E, 0x00, 0xEA, 0x00, 0x92, 0x00
ov17_02112114:
	.asciz "char/ybBgStep11.ncl.l"

	.data
ov17_02112EE0:
	.asciz "char/jbBgStep1.ncg.l"
	.balign 4, 0
ov17_02112EF8:
	.asciz "char/jbBgStep1.ncl.l"
	.balign 4, 0
ov17_02112F10:
	.asciz "char/jb2Menu.nsc.l"

	.bss
FocusPos:
	.space 0x04
Palette:
	.space 0x04

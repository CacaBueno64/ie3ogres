
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_BM_GetWiFiInfo
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_BTNlSetForce
	.public DWCi_CEINlSetExObj
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_Char
	.public DWCi_FOCUSlDelete
	.public DWCi_FOCUSlDisp4
	.public DWCi_HLlLoad
	.public DWCi_OBJlDelete
	.public DWCi_SceneMenu
	.public DWCi_SceneOptErase
	.public DWCi_SceneOptInfo
	.public DWCi_SetParam_
	.public DWCi_TPlCheckTrigger
	.public DWCi_SceneOptMovConfirm1
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
	.public FX_ModS32
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt
	.public MI_CpuCopy8

	.text
	arm_func_start DWCi_SceneOptMenu
DWCi_SceneOptMenu: ; 0x020FA6D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020FA778 ; =0x02116208
	mov r5, #0
	strb r5, [r4, #1]
	bl initGraphics
	mov r0, #0x10
	bl DWCi_HLlLoad
	mov r0, #3
	bl DWCi_STEPlChangeScr
	mov r0, #0x39
	sub r1, r0, #0x3a
	mov r2, r5
	bl DWCi_COMMENTlDispEx
	mov r0, r5
	mov r1, #0x5b
	bl DWCi_CEINlSetExObj
	str r0, [r4, #8]
	ldr r2, [r0]
	ldr r1, _020FA77C ; =0xFE00FF00
	ldr r12, _020FA780 ; =0x0211214C
	and r1, r2, r1
	orr r1, r1, #0x84
	orr r1, r1, #0xe00000
	str r1, [r0]
	ldr lr, [r4, #8]
	ldr r1, _020FA784 ; =0x02112150
	ldrh r0, [lr, #4]
	ldr r2, _020FA788 ; =0x0211214E
	ldr r3, _020FA78C ; =0x02112152
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [lr, #4]
	ldrb r0, [r4]
	mov r4, r0, lsl #3
	ldrh r0, [r12, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl DWCi_FOCUSlDisp4
	ldr r0, _020FA790 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FA778: .word FocusPos
_020FA77C: .word 0xFE00FF00
_020FA780: .word R_FOCUS
_020FA784: .word R_FOCUS+4
_020FA788: .word R_FOCUS+2
_020FA78C: .word R_FOCUS+6
_020FA790: .word procInit
	arm_func_end DWCi_SceneOptMenu

	arm_static_func_start initGraphics
initGraphics: ; 0x020FA794
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r4, _020FA904 ; =0x02112164
	add r3, sp, #0x2b
	mov r2, #0xb
_020FA7A8:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FA7A8
	ldr r4, _020FA908 ; =0x0211217C
	add r3, sp, #0x14
	mov r2, #0xb
_020FA7CC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FA7CC
	ldrb r2, [r4]
	ldr r0, _020FA90C ; =0x02112FA8
	ldr r1, _020FA910 ; =GX_LoadBG2Char
	strb r2, [r3]
	bl DWCi_CMNlLoadResource
	ldr r0, _020FA914 ; =0x02112FC0
	ldr r1, _020FA918 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0x14
	bl DWCi_Char
	mov r4, #0
	mov r5, #4
	mov r1, r4
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r1, _020FA91C ; =0x02116208
	str r0, [r1, #4]
	add r0, sp, #0x2b
	bl DWCi_Char
	mov r2, r5
	mov r1, r4
	bl DWCi_ARClReadEx
	mov r5, r0
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, #0
	cmpeq r0, #0
	bne _020FA88C
	add r7, r5, #0xc0
	add r8, r5, #0x40
	mov r6, #0x20
_020FA868:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl MI_CpuCopy8
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #0x20
	add r8, r8, #0x20
	blt _020FA868
_020FA88C:
	mov r4, #0x200
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl GX_LoadBGPltt
	mov r0, r5
	bl DWCi_ARClRelease
	ldr r2, _020FA920 ; =0x04001008
	ldr r1, _020FA924 ; =0x0400000A
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
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020FA904: .word ov17_02112164
_020FA908: .word ov17_0211217C
_020FA90C: .word ov17_02112FA8
_020FA910: .word GX_LoadBG2Char
_020FA914: .word ov17_02112FC0
_020FA918: .word GX_LoadBG2Scr
_020FA91C: .word FocusPos
_020FA920: .word 0x04001008
_020FA924: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FA928
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
	ldr r0, _020FA98C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA98C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FA990
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
	ldr r0, _020FA9CC ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FA9CC: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FA9D0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FA9F0 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA9F0: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FA9F4
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FAA08
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020FAAE4 ; =0x02112134
	mov r4, #0
_020FAA14:
	add r0, r5, r4, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020FAA64
	mov r0, #1
	bl DWCi_BTNlSet
	and r1, r4, #0xff
	mov lr, r1, lsl #3
	ldr r0, _020FAAE8 ; =0x0211214C
	ldr r1, _020FAAEC ; =0x02112150
	ldr r2, _020FAAF0 ; =0x0211214E
	ldr r3, _020FAAF4 ; =0x02112152
	ldr r12, _020FAAF8 ; =0x02116208
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [r12]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r3, r4, r5, pc}
_020FAA64:
	add r4, r4, #1
	cmp r4, #3
	blo _020FAA14
	mov r4, #1
	mov r0, r4
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FAA90
	mov r0, r4
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020FAA90:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FAAAC
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAAC:
	mov r0, #0x40
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020FAAC8
	mov r0, r4
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAC8:
	mov r0, #0x80
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl moveFocus
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAE4: .word R_TOUCH
_020FAAE8: .word R_FOCUS
_020FAAEC: .word R_FOCUS+4
_020FAAF0: .word R_FOCUS+2
_020FAAF4: .word R_FOCUS+6
_020FAAF8: .word FocusPos
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FAAFC
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FAB00
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FAB24
	cmp r0, #1
	beq _020FAB30
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FAB24:
	mov r0, #7
	bl DWCi_SNDlPlay
	b _020FAB90
_020FAB30:
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r0, _020FABA0 ; =0x02116208
	ldrb r0, [r0]
	cmp r0, #0
	beq _020FAB78
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	cmpeq r2, #0
	bne _020FAB78
	mov r4, #9
	mov r0, r4
	bl DWCi_SNDlPlay
	sub r0, r4, #0xa
	bl DWCi_BTNlSetForce
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FAB78:
	mov r0, #6
	bl DWCi_SNDlPlay
	bl dispPush
	ldr r0, _020FABA0 ; =0x02116208
	mov r1, #1
	strb r1, [r0, #1]
_020FAB90:
	ldr r0, _020FABA4 ; =endScene
	bl DWCi_ChangeScene
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FABA0: .word FocusPos
_020FABA4: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FABA8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FABC4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FABC4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FABC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FAC2C ; =0x02116208
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020FABF0
	bl DWCi_BTNlEnd
_020FABF0:
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
	ldr r0, _020FAC30 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FAC2C: .word FocusPos
_020FAC30: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FAC34
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
	ldr r4, _020FAD2C ; =0x02116208
	ldr r0, [r4, #8]
	bl DWCi_OBJlDelete
	bl DWCi_FOCUSlDelete
	bl DWCi_COMMENTlDelete
	ldr r0, [r4, #4]
	bl DWCi_ARClRelease
	mov r0, r6
	mov r1, r6
	bl DWCi_GXlInvisible
	mov r0, r5
	mov r1, #0x14
	bl DWCi_GXlInvisible
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _020FACC4
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FAD30 ; =DWCi_SceneMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FACC4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _020FACE4
	cmp r0, #1
	beq _020FACFC
	cmp r0, #2
	beq _020FAD14
	ldmfd sp!, {r4, r5, r6, pc}
_020FACE4:
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam_
	ldr r0, _020FAD34 ; =DWCi_SceneOptInfo
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FACFC:
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam_
	ldr r0, _020FAD38 ; =DWCi_SceneOptErase
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FAD14:
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam_
	ldr r0, _020FAD3C ; =DWCi_SceneOptMovConfirm1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FAD2C: .word FocusPos
_020FAD30: .word DWCi_SceneMenu
_020FAD34: .word DWCi_SceneOptInfo
_020FAD38: .word DWCi_SceneOptErase
_020FAD3C: .word DWCi_SceneOptMovConfirm1
	arm_func_end endScene2

	arm_static_func_start moveFocus
moveFocus: ; 0x020FAD40
	stmfd sp!, {r4, lr}
	cmp r0, #1
	mov r1, #3
	bne _020FAD60
	ldr r4, _020FADB0 ; =0x02116208
	ldrb r0, [r4]
	add r0, r0, #2
	b _020FAD6C
_020FAD60:
	ldr r4, _020FADB0 ; =0x02116208
	ldrb r0, [r4]
	add r0, r0, #1
_020FAD6C:
	bl FX_ModS32
	strb r0, [r4]
	mov r0, #8
	bl DWCi_SNDlPlay
	ldr r0, _020FADB0 ; =0x02116208
	ldr r4, _020FADB4 ; =0x0211214C
	ldrb r0, [r0]
	ldr r1, _020FADB8 ; =0x02112150
	ldr r2, _020FADBC ; =0x0211214E
	mov r12, r0, lsl #3
	ldr r3, _020FADC0 ; =0x02112152
	ldrh r0, [r4, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl DWCi_FOCUSlDisp4
	ldmfd sp!, {r4, pc}
_020FADB0: .word FocusPos
_020FADB4: .word R_FOCUS
_020FADB8: .word R_FOCUS+4
_020FADBC: .word R_FOCUS+2
_020FADC0: .word R_FOCUS+6
	arm_func_end moveFocus

	arm_static_func_start dispPush
dispPush: ; 0x020FADC4
	ldr r0, _020FADE4 ; =0x02116208
	ldr r1, _020FADE8 ; =0x0211212C
	ldrb r2, [r0]
	ldr r0, [r0, #4]
	ldr r12, _020FADEC ; =DWCi_SCREENlCopyPalette
	ldrb r1, [r1, r2]
	mov r2, r1
	bx r12
_020FADE4: .word FocusPos
_020FADE8: .word PALETTE_NUM
_020FADEC: .word DWCi_SCREENlCopyPalette
	arm_func_end dispPush

	.rodata
PALETTE_NUM:
	.byte 0x01, 0x02, 0x03, 0x00
C_ICON:
	.byte 0xE0, 0x00, 0x84, 0x00
R_TOUCH:
	.byte 0x08, 0x00, 0x24, 0x00, 0xF8, 0x00, 0x44, 0x00, 0x08, 0x00, 0x50, 0x00
	.byte 0xF8, 0x00, 0x70, 0x00, 0x08, 0x00, 0x7C, 0x00, 0xF8, 0x00, 0x9C, 0x00
R_FOCUS:
	.byte 0x06, 0x00, 0x22, 0x00, 0xEA, 0x00, 0x36, 0x00, 0x06, 0x00, 0x4E, 0x00
	.byte 0xEA, 0x00, 0x62, 0x00, 0x06, 0x00, 0x7A, 0x00, 0xEA, 0x00, 0x8E, 0x00
ov17_02112164:
	.asciz "char/ybBgOption.ncl.l"
	.balign 4, 0
ov17_0211217C:
	.asciz "char/ybBgOption1.ncl.l"

	.data
ov17_02112FA8:
	.asciz "char/jbBgOption.ncg.l"
	.balign 4, 0
ov17_02112FC0:
	.asciz "char/jb5OptMenu.nsc.l"

	.bss
FocusPos:
	.space 0x01
Choose:
	.space 0x03
Palette:
	.space 0x04
Icon:
	.space 0x04

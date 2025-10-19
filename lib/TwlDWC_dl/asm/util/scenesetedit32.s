
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSetExObj
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_FNTlClear
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_GXlInvisible
	.public DWCi_GXlVisible
	.public DWCi_GetParam2_
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_HLlLoad
	.public DWCi_KBlEnd
	.public DWCi_KBlGet
	.public DWCi_KBlInit
	.public DWCi_KBlIsInit
	.public DWCi_KBlSetErase
	.public DWCi_KBlSetInput
	.public DWCi_OBJlDelete
	.public DWCi_SETTINGlGetSsid
	.public DWCi_SETTINGlSetSsid
	.public DWCi_SETTINGlSetWep
	.public DWCi_SNDlPlay
	.public DWCi_STRlNLen
	.public DWCi_SceneSetApList
	.public DWCi_SceneSetList
	.public DWCi_SceneSetTestConfirm
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlInitEx
	.public DWCi_WINlIsInit
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt
	.public GX_LoadOBJPltt

	.text
	arm_func_start DWCi_SceneSetEdit32
DWCi_SceneSetEdit32: ; 0x020FE21C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r1, _020FE330 ; =0x02112224
	mov r0, #0x2c
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	mov r1, #4
	strb r3, [sp]
	strb r2, [sp, #1]
	bl DWCi_HEAPlAllocEx
	ldr r4, _020FE334 ; =0x02116240
	add r1, sp, #4
	str r0, [r4]
	add r0, sp, #8
	bl DWCi_GetParam2_
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020FE288
	ldr r0, [r4]
	add r0, r0, #8
	bl DWCi_SETTINGlGetSsid
	ldr r0, [r4]
	mov r1, #0x20
	add r0, r0, #8
	bl DWCi_STRlNLen
	ldr r1, [r4]
	strb r0, [r1, #0x29]
_020FE288:
	bl initGraphics
	ldr r0, [sp, #8]
	add r0, r0, #9
	bl DWCi_HLlLoad
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _020FE2B0
	mov r0, #0x35
	sub r1, r0, #0x36
	b _020FE2C0
_020FE2B0:
	ldr r2, [sp, #8]
	add r0, sp, #0
	ldrb r0, [r0, r2]
	mvn r1, #0
_020FE2C0:
	mov r2, #0
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r4, _020FE334 ; =0x02116240
	mov r1, #0x3e
	ldr r2, [r4]
	str r0, [r2]
	mov r0, r5
	bl DWCi_CEINlSetExObj
	ldr r1, [r4]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl dispCaret
	bl drawSsid
	ldr r0, _020FE338 ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FE330: .word ov17_02112224
_020FE334: .word MemSse
_020FE338: .word procInit
	arm_func_end DWCi_SceneSetEdit32

	arm_static_func_start initGraphics
initGraphics: ; 0x020FE33C
	stmfd sp!, {r3, lr}
	ldr r0, _020FE3D0 ; =0x021130C8
	ldr r1, _020FE3D4 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FE3D8 ; =0x021130DC
	ldr r1, _020FE3DC ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020FE3E0 ; =0x021130F4
	ldr r1, _020FE3E4 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FE3E8 ; =0x0211310C
	ldr r1, _020FE3EC ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FE3F0 ; =0x04001008
	ldr r1, _020FE3F4 ; =0x0400000A
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
	orr r0, r0, #2
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
_020FE3D0: .word ov17_021130C8
_020FE3D4: .word GX_LoadOBJPltt
_020FE3D8: .word ov17_021130DC
_020FE3DC: .word GX_LoadBG2Char
_020FE3E0: .word ov17_021130F4
_020FE3E4: .word GX_LoadBGPltt
_020FE3E8: .word ov17_0211310C
_020FE3EC: .word GX_LoadBG2Scr
_020FE3F0: .word 0x04001008
_020FE3F4: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FE3F8
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
	ldr r0, _020FE45C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FE45C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FE460
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
	bl DWCi_KBlInit
	mov r0, #0x14
	bl DWCi_SNDlPlay
	ldr r0, _020FE4D8 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	bne _020FE4B0
	mov r0, r4
	bl DWCi_KBlSetErase
_020FE4B0:
	ldr r0, _020FE4D8 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _020FE4CC
	mov r0, #0
	bl DWCi_KBlSetInput
_020FE4CC:
	ldr r0, _020FE4DC ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FE4D8: .word MemSse
_020FE4DC: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FE4E0
	stmfd sp!, {r3, lr}
	bl DWCi_KBlGet
	cmp r0, #0xff
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FE4FC ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE4FC: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FE500
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FE510
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020FE694 ; =0x02116240
	bl DWCi_KBlGet
	mov r4, r0
	cmp r4, #0x83
	bgt _020FE62C
	cmp r4, #0x80
	blt _020FE548
	beq _020FE554
	cmp r4, #0x82
	beq _020FE5AC
	cmp r4, #0x83
	beq _020FE5CC
	b _020FE62C
_020FE548:
	cmp r4, #0
	beq _020FE688
	b _020FE62C
_020FE554:
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	beq _020FE688
	mov r0, #3
	bl DWCi_SNDlPlay
	ldr r2, [r5]
	mov r0, #0
	ldrb r1, [r2, #0x29]
	sub r1, r1, #1
	strb r1, [r2, #0x29]
	ldr r2, [r5]
	ldrb r1, [r2, #0x29]
	add r1, r2, r1
	strb r0, [r1, #8]
	ldr r1, [r5]
	ldrb r1, [r1, #0x29]
	cmp r1, #0
	bne _020FE5A4
	bl DWCi_KBlSetErase
_020FE5A4:
	mov r0, #1
	b _020FE684
_020FE5AC:
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r1, [r5]
	mov r2, #0
	ldr r0, _020FE698 ; =endScene
	strb r2, [r1, #0x2a]
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FE5CC:
	bl isCorrect
	cmp r0, #0
	beq _020FE5F0
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, [r5]
	mov r1, #1
	strb r1, [r0, #0x2a]
	b _020FE604
_020FE5F0:
	ldr r1, [r5]
	mov r2, #2
	mov r0, #9
	strb r2, [r1, #0x2a]
	bl DWCi_SNDlPlay
_020FE604:
	ldr r0, [r5]
	ldr r1, _020FE69C ; =0xC1FFFCFF
	ldr r3, [r0, #4]
	ldr r0, _020FE698 ; =endScene
	ldr r2, [r3]
	and r1, r2, r1
	orr r1, r1, #0x200
	str r1, [r3]
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FE62C:
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	beq _020FE688
	mov r6, #1
	mov r0, r6
	bl DWCi_SNDlPlay
	ldr r2, [r5]
	mov r0, r6
	ldrb r1, [r2, #0x29]
	add r1, r2, r1
	strb r4, [r1, #8]
	ldr r2, [r5]
	ldrb r1, [r2, #0x29]
	add r1, r1, #1
	strb r1, [r2, #0x29]
	bl DWCi_KBlSetErase
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _020FE688
	mov r0, #0
_020FE684:
	bl DWCi_KBlSetInput
_020FE688:
	bl drawSsid
	bl dispCaret
	ldmfd sp!, {r4, r5, r6, pc}
_020FE694: .word MemSse
_020FE698: .word endScene
_020FE69C: .word 0xC1FFFCFF
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FE6A0
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x020FE6A4
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FE6BC ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE6BC: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FE6C0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_KBlEnd
	mov r0, #0x15
	bl DWCi_SNDlPlay
	ldr r0, _020FE6EC ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE6EC: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FE6F0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r0, _020FE7B0 ; =0x02112240
	add r5, sp, #8
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	bl DWCi_KBlIsInit
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FE7B4 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	bne _020FE744
	ldr r0, _020FE7B8 ; =endScene3
	bl DWCi_ChangeScene
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE744:
	cmp r0, #2
	mov r4, #0
	bne _020FE778
	mov r2, #1
	sub r3, r2, #2
	mov r0, #6
	mov r1, #3
	str r4, [sp]
	bl DWCi_WINlInitEx
	ldr r0, _020FE7BC ; =procError
	bl DWCi_ChangeScene
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE778:
	add r1, sp, #4
	mov r0, r4
	bl DWCi_GetParam2_
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r2, #1
	ldr r0, [r5, r0, lsl #2]
	sub r3, r2, #2
	mov r1, #2
	bl DWCi_WINlInitEx
	ldr r0, _020FE7C0 ; =procWin
	bl DWCi_ChangeScene
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE7B0: .word ov17_02112240
_020FE7B4: .word MemSse
_020FE7B8: .word endScene3
_020FE7BC: .word procError
_020FE7C0: .word procWin
	arm_func_end endScene2

	arm_static_func_start endScene3
endScene3: ; 0x020FE7C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	bl DWCi_COMMENTlDelete
	ldr r4, _020FE8A8 ; =0x02116240
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl DWCi_OBJlDelete
	mov r6, #0
	mov r0, r6
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FE8AC ; =0x02113120
	ldr r1, _020FE8B0 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r0, r6
	mov r1, #0x15
	bl DWCi_GXlInvisible
	add r0, sp, #4
	add r1, sp, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _020FE84C
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r1, [sp, #4]
	mov r0, r6
	bl DWCi_SetParam2_
	ldr r0, _020FE8B4 ; =DWCi_SceneSetList
	b _020FE894
_020FE84C:
	ldr r0, [r4]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	mov r0, r6
	bne _020FE87C
	mov r1, r5
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam2_
	ldr r0, _020FE8B8 ; =DWCi_SceneSetApList
	b _020FE894
_020FE87C:
	mov r1, r6
	bl DWCi_SetParam_
	mov r0, r6
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FE8BC ; =DWCi_SceneSetTestConfirm
_020FE894:
	bl DWCi_ChangeScene
	ldr r0, _020FE8C0 ; =0x02116240
	bl DWCi_HEAPlFree_
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020FE8A8: .word MemSse
_020FE8AC: .word ov17_02113120
_020FE8B0: .word GX_LoadOBJPltt
_020FE8B4: .word DWCi_SceneSetList
_020FE8B8: .word DWCi_SceneSetApList
_020FE8BC: .word DWCi_SceneSetTestConfirm
_020FE8C0: .word MemSse
	arm_func_end endScene3

	arm_static_func_start drawSsid
drawSsid: ; 0x020FE8C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r0, _020FE9AC ; =0x02116240
	mov r10, #0
	ldr r0, [r0]
	add r5, sp, #0x14
	ldr r0, [r0]
	mov r1, r10
	strh r10, [r5, #2]
	mov r4, #0x20
	strh r10, [r5, #4]
	mov r3, #0xe
	strh r10, [r5, #6]
	mov r2, #0x10
	strh r10, [r5]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl DWCi_FNTlClear
	ldr r7, _020FE9B0 ; =0x0000E01D
	ldr r6, _020FE9B4 ; =0x0211222E
	mov r9, r10
	strh r10, [sp, #0x12]
	mov r8, #0x31
	mov r5, #2
	mov r4, #0x480
	add r11, sp, #0x10
_020FE930:
	ldr r0, _020FE9AC ; =0x02116240
	cmp r10, #0x10
	ldr r0, [r0]
	moveq r9, #0
	add r1, r0, r10
	ldrb r1, [r1, #8]
	streqh r8, [sp, #0x16]
	ldrb r3, [r6, r9]
	cmp r1, #0x20
	streqh r7, [sp, #0x10]
	strneh r1, [sp, #0x10]
	ldrh r1, [sp, #0x1a]
	strh r3, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	stmia sp, {r1, r5}
	str r4, [sp, #8]
	str r11, [sp, #0xc]
	ldrh r1, [sp, #0x14]
	ldrh r3, [sp, #0x18]
	ldr r0, [r0]
	bl DWCi_FNTlDrawRect
	add r10, r10, #1
	cmp r10, #0x20
	add r9, r9, #1
	blt _020FE930
	ldr r0, _020FE9AC ; =0x02116240
	ldr r0, [r0]
	ldr r0, [r0]
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FE9AC: .word MemSse
_020FE9B0: .word 0x0000E01D
_020FE9B4: .word X_IPT
	arm_func_end drawSsid

	arm_static_func_start dispCaret
dispCaret: ; 0x020FE9B8
	stmfd sp!, {r3, lr}
	ldr r0, _020FEA10 ; =0x02116240
	ldr r1, [r0]
	ldrb r0, [r1, #0x29]
	ldr r12, [r1, #4]
	ldr r1, _020FEA14 ; =0x02112228
	cmp r0, #0x20
	and r2, r0, #0xf
	mov lr, r0, asr #4
	movhs lr, #1
	ldr r0, _020FEA18 ; =0x0211222E
	movhs r2, #0xf
	ldrb r3, [r0, r2]
	ldr r2, [r12]
	ldr r0, _020FEA1C ; =0xFE00FF00
	ldrb r1, [r1, lr]
	and r0, r2, r0
	mov r2, r3, lsl #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [r12]
	ldmfd sp!, {r3, pc}
_020FEA10: .word MemSse
_020FEA14: .word Y_IPT
_020FEA18: .word X_IPT
_020FEA1C: .word 0xFE00FF00
	arm_func_end dispCaret

	arm_static_func_start procWin
procWin: ; 0x020FEA20
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	ldr r1, _020FEA70 ; =0x02116240
	ldr r2, [r1]
	strb r0, [r2, #0x2a]
	ldr r0, [r1]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	beq _020FEA50
	cmp r0, #1
	beq _020FEA58
	ldmfd sp!, {r3, pc}
_020FEA50:
	mov r0, #7
	b _020FEA5C
_020FEA58:
	mov r0, #0xe
_020FEA5C:
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _020FEA74 ; =procWin1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FEA70: .word MemSse
_020FEA74: .word procWin1
	arm_func_end procWin

	arm_static_func_start procWin1
procWin1: ; 0x020FEA78
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r0, _020FEB10 ; =0x021130C0
	add r5, sp, #4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	bl DWCi_WINlIsInit
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	ldr r4, _020FEB14 ; =0x02116240
	ldr r1, [r4]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	bne _020FEAE0
	ldr r3, [r1, #4]
	ldr r1, _020FEB18 ; =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _020FEB1C ; =procInit1
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FEAE0:
	add r0, sp, #0
	mov r1, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	ldr r2, [r4]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r0, _020FEB20 ; =endScene3
	bl DWCi_ChangeScene
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FEB10: .word ov17_021130C0
_020FEB14: .word MemSse
_020FEB18: .word 0xC1FFFCFF
_020FEB1C: .word procInit1
_020FEB20: .word endScene3
	arm_func_end procWin1

	arm_static_func_start isCorrect
isCorrect: ; 0x020FEB24
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #1
	bne _020FEB54
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl DWCi_COMMENTlDispEx
_020FEB54:
	add r0, sp, #4
	add r1, sp, #0
	bl DWCi_GetParam2_
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020FEB8C
	ldr r0, _020FECA8 ; =0x02116240
	add sp, sp, #8
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020FEB8C:
	ldr r0, [sp]
	cmp r0, #1
	ldreq r0, _020FECA8 ; =0x02116240
	ldreq r0, [r0]
	ldreqb r0, [r0, #8]
	cmpeq r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FECA8 ; =0x02116240
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #8
	bl DWCi_STRlNLen
	cmp r0, #0x10
	bgt _020FEC04
	cmp r0, #0xa
	blt _020FEBE8
	beq _020FEC2C
	cmp r0, #0xd
	cmpne r0, #0x10
	beq _020FEC20
	b _020FEC9C
_020FEBE8:
	cmp r0, #0
	bgt _020FEBF8
	beq _020FEC20
	b _020FEC9C
_020FEBF8:
	cmp r0, #5
	beq _020FEC20
	b _020FEC9C
_020FEC04:
	cmp r0, #0x1a
	bgt _020FEC14
	beq _020FEC2C
	b _020FEC9C
_020FEC14:
	cmp r0, #0x20
	beq _020FEC2C
	b _020FEC9C
_020FEC20:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020FEC2C:
	cmp r0, #0
	mov r2, #0
	ble _020FEC90
	ldr r1, _020FECA8 ; =0x02116240
	ldr r3, [r1]
_020FEC40:
	add r1, r3, r2
	ldrb r1, [r1, #8]
	cmp r1, #0x30
	blo _020FEC58
	cmp r1, #0x39
	bls _020FEC84
_020FEC58:
	cmp r1, #0x41
	blo _020FEC68
	cmp r1, #0x46
	bls _020FEC84
_020FEC68:
	cmp r1, #0x61
	blo _020FEC78
	cmp r1, #0x66
	bls _020FEC84
_020FEC78:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020FEC84:
	add r2, r2, #1
	cmp r2, r0
	blt _020FEC40
_020FEC90:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020FEC9C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020FECA8: .word MemSse
	arm_func_end isCorrect

	arm_static_func_start procError
procError: ; 0x020FECAC
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _020FECD4 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FECD4: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x020FECD8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FED10 ; =0x02116240
	ldr r1, _020FED14 ; =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _020FED18 ; =procInit1
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FED10: .word MemSse
_020FED14: .word 0xC1FFFCFF
_020FED18: .word procInit1
	arm_func_end procError1

	.rodata
ov17_02112224:
	.byte 0x3E, 0x3D, 0x00, 0x00
Y_IPT:
	.byte 0x20, 0x31
S_IPT:
	.byte 0x0E, 0x00, 0x10, 0x00
X_IPT:
	.byte 0x08, 0x17
	.byte 0x26, 0x35, 0x44, 0x53, 0x62, 0x71, 0x80, 0x8F, 0x9E, 0xAD, 0xBC, 0xCB, 0xDA, 0xE9, 0x00, 0x00
ov17_02112240:
	.byte 0x47, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00

	.data
ov17_021130C0:
	.word DWCi_SETTINGlSetSsid
	.word DWCi_SETTINGlSetWep
ov17_021130C8:
	.asciz "char/ybObjKb.ncl.l"
	.balign 4, 0
ov17_021130DC:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_021130F4:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_0211310C:
	.asciz "char/xb4Edit.nsc.l"
	.balign 4, 0
ov17_02113120:
	.asciz "char/ybObjMain.ncl.l"

	.bss
MemSse:
	.space 0x04

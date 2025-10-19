
	.include "asm/macros/function.inc"
	.public DWCi_BM_GetWiFiInfo
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_HLlLoad
	.public DWCi_SceneOptMenu
	.public DWCi_SetParam_
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public DWCi_STRlConvertStringAsciiToUnicode
	.public GX_LoadBG2Scr
	.public OS_GetMacAddress
	.public OS_SNPrintf
	.public _ll_udiv
	.public _ull_mod

	.text
	arm_func_start DWCi_SceneOptInfo
DWCi_SceneOptInfo: ; 0x020FA1F0
	stmfd sp!, {r3, lr}
	bl initGraphics
	mov r0, #0x11
	bl DWCi_HLlLoad
	mov r0, #0x3a
	sub r1, r0, #0x3b
	mov r2, #0
	bl DWCi_COMMENTlDispEx
	bl drawInfo
	ldr r0, _020FA220 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA220: .word procInit
	arm_func_end DWCi_SceneOptInfo

	arm_static_func_start initGraphics
initGraphics: ; 0x020FA224
	stmfd sp!, {r3, lr}
	ldr r0, _020FA294 ; =0x02112F4C
	ldr r1, _020FA298 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FA29C ; =0x04001008
	ldr r1, _020FA2A0 ; =0x0400000A
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
_020FA294: .word ov17_02112F4C
_020FA298: .word GX_LoadBG2Scr
_020FA29C: .word 0x04001008
_020FA2A0: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start drawInfo
drawInfo: ; 0x020FA2A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x7c
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	mov r6, r0
	add r0, sp, #0x14
	bl OS_GetMacAddress
	ldrb r0, [sp, #0x15]
	add r10, sp, #0x1a
	mov r9, #0x14
	str r0, [sp]
	ldrb r1, [sp, #0x16]
	ldr r2, _020FA4A4 ; =0x02112F60
	mov r0, r10
	str r1, [sp, #4]
	ldrb r3, [sp, #0x17]
	mov r1, r9
	str r3, [sp, #8]
	ldrb r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldrb r3, [sp, #0x19]
	str r3, [sp, #0x10]
	ldrb r3, [sp, #0x14]
	bl OS_SNPrintf
	add r8, sp, #0x2e
	mov r1, r10
	mov r0, r8
	mov r2, r9
	bl DWCi_STRlConvertStringAsciiToUnicode
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	mov r0, r6
	mov r1, #8
	mov r2, #0x40
	mov r3, #0xf0
	str r8, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	add r0, sp, #0x68
	bl DWCi_BM_GetWiFiInfo
	ldr r7, [sp, #0x6c]
	ldr r4, [sp, #0x68]
	cmp r7, #0
	cmpeq r4, #0
	beq _020FA440
	mov r8, #0xa
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl _ull_mod
	mov r1, #0x3e8
	umull r9, r1, r0, r1
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r5
	str r9, [sp, #0x64]
	bl _ll_udiv
	ldr r9, _020FA4A8 ; =0x00002710
	mov r4, r0
	mov r7, r1
	mov r8, r5
	add r10, sp, #0x58
_020FA3B8:
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl _ull_mod
	rsb r1, r5, #2
	str r0, [r10, r1, lsl #2]
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl _ll_udiv
	add r5, r5, #1
	mov r4, r0
	mov r7, r1
	cmp r5, #3
	blt _020FA3B8
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	str r1, [sp]
	mov r4, #0x14
	add r5, sp, #0x1a
	str r0, [sp, #4]
	ldr r7, [sp, #0x64]
	ldr r3, [sp, #0x58]
	ldr r2, _020FA4AC ; =0x02112F80
	mov r0, r5
	mov r1, r4
	str r7, [sp, #8]
	bl OS_SNPrintf
	add r0, sp, #0x2e
	mov r1, r5
	mov r2, r4
	b _020FA45C
_020FA440:
	ldr r2, _020FA4B0 ; =0x02112F94
	mov r0, r10
	mov r1, r9
	bl OS_SNPrintf
	mov r0, r8
	mov r1, r10
	mov r2, r9
_020FA45C:
	bl DWCi_STRlConvertStringAsciiToUnicode
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r4, sp, #0x2e
	mov r0, r6
	mov r1, #8
	mov r2, #0x78
	mov r3, #0xf0
	str r4, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	mov r0, r6
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020FA4A4: .word ov17_02112F60
_020FA4A8: .word 0x00002710
_020FA4AC: .word ov17_02112F80
_020FA4B0: .word ov17_02112F94
	arm_func_end drawInfo

	arm_static_func_start procInit
procInit: ; 0x020FA4B4
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
	ldr r0, _020FA518 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA518: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FA51C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	bl DWCi_CMNlButton
	ldr r0, _020FA554 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA554: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FA558
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FA578 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA578: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FA57C
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FA590
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FA5B0
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FA5B4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r0, _020FA5D8 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA5D8: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FA5DC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FA5F8 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA5F8: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FA5FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlEnd
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
	mov r2, #0x15
	bl DWCi_EFFlFade
	ldr r0, _020FA654 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FA654: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FA658
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
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FA6CC ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FA6CC: .word DWCi_SceneOptMenu
	arm_func_end endScene2

	.data
ov17_02112F4C:
	.asciz "char/jb5Info.nsc.l"
	.balign 4, 0
ov17_02112F60:
	.asciz "%02X-%02X-%02X-%02X-%02X-%02X"
	.balign 4, 0
ov17_02112F80:
	.asciz "%04d-%04d-%04d-%04d"
	.balign 4, 0
ov17_02112F94:
	.asciz "-------------------"


	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_HLlLoadSet
	.public DWCi_SetParam_
	.public DWCi_SceneSetSelectAp
	.public DWCi_SETTINGlSet
	.public DWCi_WINlInitEx
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt

	.text
	arm_func_start DWCi_SceneSetListSave
DWCi_SceneSetListSave: ; 0x02102264
	stmfd sp!, {r3, lr}
	bl initGraphics
	bl DWCi_HLlLoadSet
	bl DWCi_SETTINGlSet
	ldr r0, _02102280 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102280: .word procInit
	arm_func_end DWCi_SceneSetListSave

	arm_static_func_start initGraphics
initGraphics: ; 0x02102284
	stmfd sp!, {r3, lr}
	ldr r0, _021022F8 ; =0x02113270
	ldr r1, _021022FC ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02102300 ; =0x02113288
	ldr r1, _02102304 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02102308 ; =0x021132A0
	ldr r1, _0210230C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _02102310 ; =0x04001008
	ldr r1, _02102314 ; =0x0400000A
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
	ldmfd sp!, {r3, pc}
_021022F8: .word ov17_02113270
_021022FC: .word GX_LoadBG2Char
_02102300: .word ov17_02113288
_02102304: .word GX_LoadBGPltt
_02102308: .word ov17_021132A0
_0210230C: .word GX_LoadBG2Scr
_02102310: .word 0x04001008
_02102314: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02102318
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
	ldr r0, _0210237C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210237C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x02102380
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
	mov r1, #5
	mov r2, r5
	sub r3, r1, #6
	mov r0, #0x44
	str r4, [sp]
	bl DWCi_WINlInitEx
	ldr r0, _021023D0 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021023D0: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x021023D4
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021023F8 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021023F8: .word endScene
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x021023FC
	bx lr
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02102400
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x02102404
	stmfd sp!, {r3, r4, r5, lr}
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
	ldr r0, _02102444 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102444: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x02102448
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
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #0x14
	bl DWCi_GXlInvisible
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _021024A8 ; =DWCi_SceneSetSelectAp
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021024A8: .word DWCi_SceneSetSelectAp
	arm_func_end endScene1

	.data
ov17_02113270:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_02113288:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_021132A0:
	.asciz "char/xb4None.nsc.l"

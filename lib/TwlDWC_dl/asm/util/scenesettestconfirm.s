
	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_GetParam2_
	.public DWCi_HLlLoadSet
	.public DWCi_SEARCHlEnd
	.public DWCi_SETTINGlSet
	.public DWCi_SNDlPlay
	.public DWCi_SceneSetTest
	.public DWCi_SetParam_
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlInitEx
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneSetTestConfirm
DWCi_SceneSetTestConfirm: ; 0x021054A0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_SEARCHlEnd
	mov r4, #0
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	bl initGraphics
	mov r0, #0x31
	mov r2, r4
	sub r1, r0, #0x32
	bl DWCi_COMMENTlDispEx
	ldr r0, [sp]
	cmp r0, #2
	beq _021054E0
	bl DWCi_HLlLoadSet
_021054E0:
	ldr r0, [sp]
	cmp r0, #1
	bne _021054F0
	bl DWCi_SETTINGlSet
_021054F0:
	ldr r0, _02105500 ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02105500: .word procInit
	arm_func_end DWCi_SceneSetTestConfirm

	arm_static_func_start initGraphics
initGraphics: ; 0x02105504
	stmfd sp!, {r3, lr}
	ldr r0, _02105560 ; =0x02113484
	ldr r1, _02105564 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _02105568 ; =0x04001008
	ldr r1, _0210556C ; =0x0400000A
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
_02105560: .word ov17_02113484
_02105564: .word GX_LoadBG2Scr
_02105568: .word 0x04001008
_0210556C: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x02105570
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
	ldr r0, _021055D4 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021055D4: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x021055D8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r0, _02105658 ; =0x02112528
	add r6, sp, #8
	ldmia r0, {r0, r1, r2}
	mov r5, #1
	stmia r6, {r0, r1, r2}
	mov r0, r5
	bl DWCi_EFFlCheck
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r1, sp, #4
	mov r0, r4
	bl DWCi_GetParam2_
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r1, r5
	ldr r0, [r6, r0, lsl #2]
	mov r2, r5
	sub r3, r4, #1
	bl DWCi_WINlInitEx
	ldr r0, _0210565C ; =procScene
	bl DWCi_ChangeScene
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02105658: .word ov17_02112528
_0210565C: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x02105660
	stmfd sp!, {r4, lr}
	bl input
	bl draw
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #6
	mov r0, r4
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	mov r0, r4
	bl DWCi_SNDlPlay
	ldr r0, _0210569C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_0210569C: .word endScene
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x021056A0
	bx lr
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x021056A4
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x021056A8
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _021056D8 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021056D8: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x021056DC
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x14
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _02105718 ; =DWCi_SceneSetTest
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105718: .word DWCi_SceneSetTest
	arm_func_end endScene1

	.rodata
ov17_02112528:
	.byte 0x2B, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00
	.byte 0x49, 0x00, 0x00, 0x00

	.data
ov17_02113484:
	.asciz "char/xb4None.nsc.l"

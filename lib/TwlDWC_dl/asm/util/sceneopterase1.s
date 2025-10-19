
	.include "asm/macros/function.inc"
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlGet
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_ChangeScene
	.public DWCi_SETTINGlEraseAll
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_IPTlCheckTrigger
	.public GX_LoadBG2Scr
	.public OS_SpinWaitSysCycles
	.public PM_ForceToPowerOff

	.text
	arm_func_start DWCi_SceneOptErase1
DWCi_SceneOptErase1: ; 0x020F9FB0
	stmfd sp!, {r3, lr}
	bl initGraphics
	mov r0, #0x19
	bl DWCi_CMNlMsgDraw
	bl DWCi_SETTINGlEraseAll
	ldr r0, _020F9FD0 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9FD0: .word procInit
	arm_func_end DWCi_SceneOptErase1

	arm_static_func_start initGraphics
initGraphics: ; 0x020F9FD4
	stmfd sp!, {r3, lr}
	ldr r0, _020FA044 ; =0x02112F38
	ldr r1, _020FA048 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FA04C ; =0x04001008
	ldr r1, _020FA050 ; =0x0400000A
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
_020FA044: .word ov17_02112F38
_020FA048: .word GX_LoadBG2Scr
_020FA04C: .word 0x04001008
_020FA050: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FA054
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl DWCi_EFFlFade
	mov r0, r5
	mov r1, r4
	bl DWCi_GXlVisible
	ldr r0, _020FA08C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FA08C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FA090
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #5
	bl DWCi_CMNlButton
	ldr r0, _020FA0B8 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA0B8: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FA0BC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FA0DC ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA0DC: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FA0E0
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FA0F4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FA114
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FA118
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _020FA13C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA13C: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FA140
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FA15C ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA15C: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FA160
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r0, r7
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x40
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl DWCi_EFFlFade
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl DWCi_EFFlFade
	ldr r0, _020FA1B8 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA1B8: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FA1BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0x800000
	bl OS_SpinWaitSysCycles
	bl PM_ForceToPowerOff
	ldmfd sp!, {r3, pc}
	arm_func_end endScene2

	.data
ov17_02112F38:
	.asciz "char/yb5Multi.nsc.l"

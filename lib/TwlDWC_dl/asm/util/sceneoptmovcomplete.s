
	.include "asm/macros/function.inc"
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnable
	.public DWCi_BTNlGet
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlMsgDraw
	.public DWCi_ChangeScene
	.public DWCi_SNDlPlay
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_IPTlCheckTrigger
	.public OS_SpinWaitSysCycles
	.public PM_ForceToPowerOff

	.text
	arm_func_start DWCi_SceneOptMovComplete
DWCi_SceneOptMovComplete: ; 0x020FB060
	stmfd sp!, {r3, lr}
	bl initGraphics
	mov r0, #0x1f
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB07C ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB07C: .word procInit
	arm_func_end DWCi_SceneOptMovComplete

	arm_static_func_start initGraphics
initGraphics: ; 0x020FB080
	ldr r3, _020FB0E0 ; =0x04001008
	ldr r1, _020FB0E4 ; =0x0400000A
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
	bx lr
_020FB0E0: .word 0x04001008
_020FB0E4: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FB0E8
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
	ldr r0, _020FB120 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB120: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FB124
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #5
	bl DWCi_CMNlButton
	ldr r0, _020FB14C ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB14C: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FB150
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FB170 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB170: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FB174
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FB188
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
draw: ; 0x020FB1A8
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FB1AC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, _020FB1D0 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB1D0: .word endScene
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FB1D4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FB1F0 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB1F0: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FB1F4
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
	ldr r0, _020FB24C ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB24C: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FB250
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


	.include "asm/macros/function.inc"
	.public DWCi_ANIMElEnd
	.public DWCi_ANIMElInitEx
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_ICONlEnd
	.public DWCi_ICONlInit
	.public DWCi_MOVlChangeCallback
	.public DWCi_MOVlEnd
	.public DWCi_MOVlIsEnd
	.public DWCi_SceneOptMovComplete
	.public DWCi_SetParam_
	.public DWCi_SceneOptMovDisconnect
	.public DWCi_SceneOptMovFailure
	.public DWCi_SETTINGlEraseAll
	.public DWCi_SNDlPlay
	.public DWCi_SNDlStop
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr

	.text
	arm_func_start DWCi_SceneOptMovComm
DWCi_SceneOptMovComm: ; 0x020FADF0
	stmfd sp!, {r3, lr}
	bl initGraphics
	mov r0, #0x1e
	bl DWCi_CMNlMsgDraw
	mov r0, #0
	bl DWCi_ANIMElInitEx
	mov r0, #1
	bl DWCi_ICONlInit
	mov r0, #0xb
	bl DWCi_SNDlPlay
	ldr r0, _020FAE24 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FAE24: .word procInit
	arm_func_end DWCi_SceneOptMovComm

	arm_static_func_start initGraphics
initGraphics: ; 0x020FAE28
	stmfd sp!, {r3, lr}
	ldr r0, _020FAE98 ; =0x02112FD8
	ldr r1, _020FAE9C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FAEA0 ; =0x04001008
	ldr r1, _020FAEA4 ; =0x0400000A
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
_020FAE98: .word ov17_02112FD8
_020FAE9C: .word GX_LoadBG2Scr
_020FAEA0: .word 0x04001008
_020FAEA4: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FAEA8
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
	ldr r0, _020FAEE0 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FAEE0: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FAEE4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FAF0C ; =cbMov
	bl DWCi_MOVlChangeCallback
	ldr r0, _020FAF10 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FAF0C: .word cbMov
_020FAF10: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x020FAF14
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FAF24
	bx lr
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FAF28
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x020FAF2C
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FAF50 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FAF50: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FAF54
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_MOVlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_ICONlEnd
	bl DWCi_ANIMElEnd
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _020FAFDC ; =0x02116214
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FAFBC
	ldr r0, _020FAFE0 ; =DWCi_SceneOptMovFailure
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FAFBC:
	cmp r0, #2
	bne _020FAFD0
	ldr r0, _020FAFE4 ; =DWCi_SceneOptMovDisconnect
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FAFD0:
	ldr r0, _020FAFE8 ; =DWCi_SceneOptMovComplete
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FAFDC: .word Choose
_020FAFE0: .word DWCi_SceneOptMovFailure
_020FAFE4: .word DWCi_SceneOptMovDisconnect
_020FAFE8: .word DWCi_SceneOptMovComplete
	arm_func_end endScene1

	arm_static_func_start cbMov
cbMov: ; 0x020FAFEC
	stmfd sp!, {r3, lr}
	cmp r0, #2
	bne _020FB014
	bl DWCi_SETTINGlEraseAll
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #1
	strb r1, [r0]
	bl DWCi_SNDlStop
	mov r0, #0x10
	b _020FB03C
_020FB014:
	cmp r0, #3
	bne _020FB028
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #2
	b _020FB030
_020FB028:
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #0
_020FB030:
	strb r1, [r0]
	bl DWCi_SNDlStop
	mov r0, #0x12
_020FB03C:
	bl DWCi_SNDlPlay
	mov r0, #0
	bl DWCi_MOVlChangeCallback
	bl DWCi_MOVlEnd
	ldr r0, _020FB05C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB058: .word Choose
_020FB05C: .word endScene
	arm_func_end cbMov

	.data
ov17_02112FD8:
	.asciz "char/yb5Multi.nsc.l"

	.bss
Choose:
	.space 0x04

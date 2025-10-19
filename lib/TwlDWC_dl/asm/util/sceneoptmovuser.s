
	.include "asm/macros/function.inc"
	.public DWCi_CMNlLoadResource
	.public DWCi_COMMENTlDelete
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_MOVlAdmitChild
	.public DWCi_MOVlChangeCallback
	.public DWCi_MOVlEnd
	.public DWCi_MOVlGetChild
	.public DWCi_MOVlIsEnd
	.public DWCi_SceneOptMenu
	.public DWCi_SceneOptMovComm
	.public DWCi_SceneOptMovFailure
	.public DWCi_SetParam_
	.public DWCi_SNDlPlay
	.public DWCi_WINlInitEx
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public GX_LoadBG2Scr
	.public MIi_CpuClear16
	.public MIi_CpuCopy16

	.text
	arm_func_start DWCi_SceneOptMovUser
DWCi_SceneOptMovUser: ; 0x020FBDA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	bl DWCi_MOVlGetChild
	mov r5, #0
	mov r7, r0
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r1, _020FBE68 ; =0x02116224
	mov r4, r0
	strb r5, [r1, #1]
	strb r5, [r1]
	bl initGraphics
	add r6, sp, #0x10
	mov r0, r5
	mov r2, #0x16
	mov r1, r6
	bl MIi_CpuClear16
	ldrb r2, [r7, #1]
	add r0, r7, #2
	mov r1, r6
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #8
	mov r2, #0x35
	mov r3, #0xf0
	str r6, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	mov r0, r4
	bl DWCi_FNTlRenewBg
	ldr r0, _020FBE6C ; =cbMov
	bl DWCi_MOVlChangeCallback
	mov r1, #4
	mov r2, r5
	mov r0, #0x1d
	sub r3, r1, #5
	str r5, [sp]
	bl DWCi_WINlInitEx
	ldr r0, _020FBE70 ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FBE68: .word Error
_020FBE6C: .word cbMov
_020FBE70: .word procInit
	arm_func_end DWCi_SceneOptMovUser

	arm_static_func_start initGraphics
initGraphics: ; 0x020FBE74
	stmfd sp!, {r3, lr}
	ldr r0, _020FBEE4 ; =0x02113028
	ldr r1, _020FBEE8 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FBEEC ; =0x04001008
	ldr r1, _020FBEF0 ; =0x0400000A
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
_020FBEE4: .word ov17_02113028
_020FBEE8: .word GX_LoadBG2Scr
_020FBEEC: .word 0x04001008
_020FBEF0: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FBEF4
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
	ldr r0, _020FBF2C ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FBF2C: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FBF30
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FBF50 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBF50: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FBF54
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FBF70 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBF70: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FBF74
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl DWCi_WINlGet
	cmp r0, #0
	beq _020FBF98
	cmp r0, #1
	beq _020FBFA8
	ldmfd sp!, {r3, pc}
_020FBF98:
	ldr r1, _020FBFD4 ; =0x02116224
	mov r2, #0
	mov r0, #7
	b _020FBFB4
_020FBFA8:
	ldr r1, _020FBFD4 ; =0x02116224
	mov r2, #1
	mov r0, #0xe
_020FBFB4:
	strb r2, [r1, #1]
	bl DWCi_SNDlPlay
	mov r0, #0
	bl DWCi_MOVlChangeCallback
	bl DWCi_WINlEnd
	ldr r0, _020FBFD8 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBFD4: .word Error
_020FBFD8: .word endScene
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FBFDC
	bx lr
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FBFE0
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x020FBFE4
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC038 ; =0x02116224
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC018
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_020FC018:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FC03C ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC038: .word Error
_020FC03C: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FC040
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC094 ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	ldreqb r0, [r0, #1]
	cmpeq r0, #1
	bne _020FC084
	bl DWCi_MOVlAdmitChild
	b _020FC088
_020FC084:
	bl DWCi_MOVlEnd
_020FC088:
	ldr r0, _020FC098 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC094: .word Error
_020FC098: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FC09C
	stmfd sp!, {r4, lr}
	ldr r0, _020FC15C ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	bne _020FC0BC
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC0C8
_020FC0BC:
	bl DWCi_MOVlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020FC0C8:
	mov r4, #0
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _020FC15C ; =0x02116224
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC100
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_020FC100:
	mov r4, #1
	mov r1, r4
	mov r0, #0
	bl DWCi_SetParam_
	ldr r0, _020FC15C ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	beq _020FC12C
	ldr r0, _020FC160 ; =DWCi_SceneOptMovFailure
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC12C:
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC150
	mov r0, r4
	mov r1, r4
	bl DWCi_GXlInvisible
	ldr r0, _020FC164 ; =DWCi_SceneOptMenu
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC150:
	ldr r0, _020FC168 ; =DWCi_SceneOptMovComm
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC15C: .word Error
_020FC160: .word DWCi_SceneOptMovFailure
_020FC164: .word DWCi_SceneOptMenu
_020FC168: .word DWCi_SceneOptMovComm
	arm_func_end endScene2

	arm_static_func_start cbMov
cbMov: ; 0x020FC16C
	ldr r0, _020FC17C ; =0x02116224
	mov r1, #1
	strb r1, [r0]
	bx lr
_020FC17C: .word Error
	arm_func_end cbMov

	.data
ov17_02113028:
	.asciz "char/jb5Move.nsc.l"

	.bss
Error:
	.space 0x01
Choose:
	.space 0x03

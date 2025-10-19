
	.include "asm/macros/function.inc"
	.public DWCi_ANIMElEnd
	.public DWCi_ANIMElInitEx
	.public DWCi_AOSSlEnd
	.public DWCi_AOSSlInit
	.public DWCi_AOSSlStart
	.public DWCi_BTNlDisable
	.public DWCi_BTNlEnd
	.public DWCi_BTNlGet
	.public DWCi_BTNlIsEnd
	.public DWCi_BTNlSet
	.public DWCi_CMNlButton
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_HLlLoadSet
	.public DWCi_IPTlRead
	.public DWCi_SceneSetAossComplete
	.public DWCi_SetParam_
	.public DWCi_TSKlAct
	.public DWCi_TSKlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public DWCi_SceneSetSelectWay
	.public DWCi_SNDlPlay
	.public DWCi_SNDlStop
	.public DWCi_WINlInitEx
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlIsInit
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_IPTlCheckTrigger
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt

	.text
	arm_static_func_start DWCi_IsFold
DWCi_IsFold: ; 0x020FC578
	ldr r0, _020FC594 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_020FC594: .word 0x02FFFFA8
	arm_func_end DWCi_IsFold

	arm_func_start DWCi_SceneSetAossButton
DWCi_SceneSetAossButton: ; 0x020FC598
	stmfd sp!, {r4, lr}
	ldr r0, _020FC5F0 ; =0x0211622C
	mov r4, #0
	strh r4, [r0, #2]
	bl initGraphics
	bl DWCi_HLlLoadSet
	mov r0, #0x36
	mov r2, r4
	sub r1, r0, #0x37
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, #0x22
	bl DWCi_CMNlMsgDraw
	mov r0, r4
	bl DWCi_ANIMElInitEx
	bl DWCi_AOSSlInit
	mov r0, #0xb
	bl DWCi_SNDlPlay
	ldr r0, _020FC5F4 ; =procInit
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC5F0: .word Choose
_020FC5F4: .word procInit
	arm_func_end DWCi_SceneSetAossButton

	arm_static_func_start initGraphics
initGraphics: ; 0x020FC5F8
	stmfd sp!, {r3, lr}
	ldr r0, _020FC680 ; =0x02113050
	ldr r1, _020FC684 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020FC688 ; =0x02113068
	ldr r1, _020FC68C ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FC690 ; =0x02113080
	ldr r1, _020FC694 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FC698 ; =0x04001008
	ldr r1, _020FC69C ; =0x0400000A
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
_020FC680: .word ov17_02113050
_020FC684: .word GX_LoadBG2Char
_020FC688: .word ov17_02113068
_020FC68C: .word GX_LoadBGPltt
_020FC690: .word ov17_02113080
_020FC694: .word GX_LoadBG2Scr
_020FC698: .word 0x04001008
_020FC69C: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FC6A0
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
	ldr r0, _020FC704 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FC704: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FC708
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _020FC744 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC744: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FC748
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020FC780 ; =taskVBlank
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, _020FC784 ; =0x0211622C
	str r0, [r1, #4]
	ldr r0, _020FC788 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC780: .word taskVBlank
_020FC784: .word Choose
_020FC788: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FC78C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	bl input
	bl draw
	bl button
	bl DWCi_AOSSlStart
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #1
	beq _020FC7C8
	cmp r0, #2
	beq _020FC800
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC7C8:
	ldr r4, _020FC864 ; =0x0211622C
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #1
	strb r0, [r4]
	bl DWCi_TSKlDeleteEx
	mov r1, #0
	ldr r0, _020FC868 ; =procWait
	str r1, [r4, #4]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC800:
	ldr r4, _020FC864 ; =0x0211622C
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl DWCi_SNDlStop
	mov r5, #1
	mov r6, #0
	mov r1, r5
	mov r2, r5
	sub r3, r5, #2
	mov r0, #0xc
	str r6, [sp]
	bl DWCi_WINlInitEx
	mov r0, #9
	bl DWCi_SNDlPlay
	bl DWCi_BTNlDisable
	ldr r1, [r4, #4]
	mov r0, r5
	bl DWCi_TSKlDeleteEx
	ldr r0, _020FC86C ; =procError
	str r6, [r4, #4]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC864: .word Choose
_020FC868: .word procWait
_020FC86C: .word procError
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FC870
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020FC890
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_020FC890:
	bl DWCi_IsFold
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x020FC8A8
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x020FC8AC
	stmfd sp!, {r4, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020FC8EC ; =0x0211622C
	ldr r1, [r4, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #1
	bl DWCi_TSKlDelete
	mov r0, #0
	str r0, [r4, #4]
	bl DWCi_BTNlDisable
	ldr r0, _020FC8F0 ; =procCancel
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC8EC: .word Choose
_020FC8F0: .word procCancel
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x020FC8F4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	ldr r0, _020FC928 ; =0x0211622C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020FC914
	mov r0, #1
	bl DWCi_TSKlDeleteEx
_020FC914:
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FC92C ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC928: .word Choose
_020FC92C: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FC930
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020FC990 ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC970
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl DWCi_EFFlFade
_020FC970:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _020FC994 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC990: .word Choose
_020FC994: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FC998
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC9CC
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FC9CC:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bl DWCi_AOSSlEnd
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FCA1C
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
_020FCA1C:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FCA54
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _020FCA70 ; =DWCi_SceneSetSelectWay
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FCA54:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _020FCA74 ; =DWCi_SceneSetAossComplete
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FCA6C: .word Choose
_020FCA70: .word DWCi_SceneSetSelectWay
_020FCA74: .word DWCi_SceneSetAossComplete
	arm_func_end endScene2

	arm_static_func_start taskVBlank
taskVBlank: ; 0x020FCA78
	stmfd sp!, {r3, lr}
	bl DWCi_IPTlRead
	mov r0, #0
	bl DWCi_TSKlAct
	bl input
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end taskVBlank

	arm_static_func_start procError
procError: ; 0x020FCA94
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _020FCABC ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCABC: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x020FCAC0
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FCADC ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCADC: .word endScene
	arm_func_end procError1

	arm_static_func_start procWait
procWait: ; 0x020FCAE0
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldr r1, _020FCB20 ; =0x0211622C
	ldr r0, _020FCB24 ; =0x00000438
	ldrh r2, [r1, #2]
	add r2, r2, #1
	strh r2, [r1, #2]
	ldrh r1, [r1, #2]
	cmp r1, r0
	ldmlofd sp!, {r3, pc}
	bl DWCi_SNDlStop
	ldr r0, _020FCB28 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCB20: .word Choose
_020FCB24: .word 0x00000438
_020FCB28: .word endScene
	arm_func_end procWait

	arm_static_func_start procCancel
procCancel: ; 0x020FCB2C
	stmfd sp!, {r3, lr}
	bl DWCi_SNDlStop
	mov r0, #7
	bl DWCi_SNDlPlay
	ldr r1, _020FCB54 ; =0x0211622C
	mov r2, #0
	ldr r0, _020FCB58 ; =endScene
	strb r2, [r1]
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCB54: .word Choose
_020FCB58: .word endScene
	arm_func_end procCancel

	.data
ov17_02113050:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_02113068:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_02113080:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Choose:
	.space 0x02
Count:
	.space 0x02
Task:
	.space 0x04


	.include "asm/macros/function.inc"
	.public DWCiMsgCmn
	.public DWCi_CEINlRelease
	.public DWCi_ChangeScene
	.public DWCi_EndUtility
	.public DWCi_FOCUSlEnd
	.public DWCi_HLlEnd
	.public DWCi_MSGlEnd
	.public DWCi_MSGlRelease
	.public DWCi_SETTIGNlEnd
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_TSKlOperate

	.text
	arm_func_start DWCi_SceneEnd
DWCi_SceneEnd: ; 0x020F92C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x14
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl DWCi_EFFlFade
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl DWCi_EFFlFade
	ldr r0, _020F9308 ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9308: .word endScene
	arm_func_end DWCi_SceneEnd

	arm_static_func_start endScene
endScene: ; 0x020F930C
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
	mov r0, r4
	mov r1, r4
	bl DWCi_TSKlOperate
	mov r0, r5
	mov r1, r4
	bl DWCi_TSKlOperate
	mov r0, r5
	bl DWCi_CEINlRelease
	mov r0, r4
	bl DWCi_CEINlRelease
	bl DWCi_HLlEnd
	bl DWCi_FOCUSlEnd
	ldr r0, _020F9384 ; =DWCiMsgCmn
	ldr r0, [r0]
	bl DWCi_MSGlRelease
	bl DWCi_MSGlEnd
	bl DWCi_SETTIGNlEnd
	bl DWCi_EndUtility
	ldmfd sp!, {r3, r4, r5, pc}
_020F9384: .word DWCiMsgCmn
	arm_func_end endScene

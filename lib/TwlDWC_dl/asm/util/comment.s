
	.include "asm/macros/function.inc"
	.public DWCiMsgCmn
	.public DWCi_CMNlFontFlag
	.public DWCi_CMNlLoadResource
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_MSGlGetEx
	.public GXS_LoadBG0Scr

	.text
	arm_func_start DWCi_COMMENTlInit
DWCi_COMMENTlInit: ; 0x020F4CFC
	ldr r0, _020F4D0C ; =Flag
	mov r1, #0
	strb r1, [r0]
	bx lr
_020F4D0C: .word Flag
	arm_func_end DWCi_COMMENTlInit

	arm_func_start DWCi_COMMENTlDispEx
DWCi_COMMENTlDispEx: ; 0x020F4D10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r4, _020F4DD0 ; =Flag
	mov r9, r0
	ldrb r0, [r4]
	mov r8, r1
	mov r5, r2
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020F4DD4 ; =0x02112890
	ldr r1, _020F4DD8 ; =0x0200546C
	bl DWCi_CMNlLoadResource
	mov r7, #1
	mov r6, #0
	ldr r3, _020F4DDC ; =0x01920000
	ldr r2, _020F4DE0 ; =0x04001010
	mov r0, r7
	mov r1, r6
	str r3, [r2]
	bl DWCi_FNTlFormBgEx
	mov r1, r9
	mov r2, r8
	mov r3, r5
	mov r5, r0
	ldr r0, _020F4DE4 ; =DWCiMsgCmn
	ldr r0, [r0]
	bl DWCi_MSGlGetEx
	mov r8, r0
	bl DWCi_CMNlFontFlag
	mov r2, r6
	mov r1, #0x40
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r5
	mov r1, #0x14
	mov r3, #0xd8
	bl DWCi_FNTlDrawRect
	mov r0, r5
	bl DWCi_FNTlRenewBg
	strb r7, [r4]
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F4DD0: .word Flag
_020F4DD4: .word ov17_02112890
_020F4DD8: .word GXS_LoadBG0Scr
_020F4DDC: .word 0x01920000
_020F4DE0: .word 0x04001010
_020F4DE4: .word DWCiMsgCmn
	arm_func_end DWCi_COMMENTlDispEx

	arm_func_start DWCi_COMMENTlDelete
DWCi_COMMENTlDelete: ; 0x020F4DE8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F4E1C ; =Flag
	ldrb r0, [r4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	mov r0, r5
	bl DWCi_FNTlDeleteBgLcd
	mov r1, #0
	mov r0, r5
	strb r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F4E1C: .word Flag
	arm_func_end DWCi_COMMENTlDelete

	.data
ov17_02112890:
	.asciz "char/jtNull.nsc.l"

	.bss
Flag:
	.space 0x04

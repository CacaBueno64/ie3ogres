
	.include "asm/macros/function.inc"
	.public DWC_BACKUPlCheckAddress
	.public DWCi_CEINlSetExObj
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDelete
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_EFFlWait
	.public DWCi_FNTlClear
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormBgEx
	.public DWCi_FNTlRenewBg
	.public DWCi_GXlInvisible
	.public DWCi_GXlVisible
	.public DWCi_GetParam2_
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_HLlLoad
	.public DWCi_KB10lEnd
	.public DWCi_KB10lGet
	.public DWCi_KB10lInit
	.public DWCi_KB10lIsInit
	.public DWCi_KB10lSetErase
	.public DWCi_KB10lSetInput
	.public DWCi_KB10lSetShift
	.public DWCi_OBJlDelete
	.public DWCi_SETTINGlConvAddress
	.public DWCi_SETTINGlGetDnsP
	.public DWCi_SETTINGlGetDnsS
	.public DWCi_SETTINGlGetGateway
	.public DWCi_SETTINGlGetIp
	.public DWCi_SETTINGlGetNetMask
	.public DWCi_SETTINGlSetDnsP
	.public DWCi_SETTINGlSetDnsS
	.public DWCi_SETTINGlSetGateway
	.public DWCi_SETTINGlSetIp
	.public DWCi_SETTINGlSetNetMask
	.public DWCi_SNDlPlay
	.public DWCi_SceneSetList
	.public DWCi_SetParam2_
	.public DWCi_SetParam_
	.public DWCi_WINlEnd
	.public DWCi_WINlGet
	.public DWCi_WINlInitEx
	.public DWCi_WINlIsInit
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt
	.public GX_LoadOBJPltt
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public atoi
	.public memcmp

	.text
	arm_func_start DWCi_SceneSetEditAddress
DWCi_SceneSetEditAddress: ; 0x020FED1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r5, _020FEE70 ; =0x02113138
	ldr r4, _020FEE74 ; =0x0211225C
	ldmia r5!, {r0, r1, r2, r3}
	add r12, sp, #0xc
	ldr r6, [r5]
	mov r5, r12
	stmia r12!, {r0, r1, r2, r3}
	str r6, [r12]
	ldrb lr, [r4]
	ldrb r12, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r3, [r4, #3]
	ldrb r2, [r4, #4]
	mov r0, #0x18
	mov r1, #4
	strb lr, [sp, #4]
	strb r12, [sp, #5]
	strb r6, [sp, #6]
	strb r3, [sp, #7]
	strb r2, [sp, #8]
	bl DWCi_HEAPlAllocEx
	ldr r6, _020FEE78 ; =0x02116244
	mov r4, #0
	str r0, [r6]
	add r0, sp, #0
	mov r1, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	ldr r2, [r6]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r7, [r6]
	mov r5, #3
	ldr r1, _020FEE7C ; =0x02113160
	add r0, r7, #8
	mov r2, r5
	bl memcmp
	cmp r0, #0
	strneb r5, [r7, #0x14]
	bne _020FEDE0
	mov r1, r4
	add r0, r7, #8
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, [r6]
	strb r4, [r0, #0x14]
_020FEDE0:
	bl initGraphics
	ldr r0, [sp]
	add r0, r0, #0xb
	bl DWCi_HLlLoad
	mov r5, #0
	ldr r1, [sp]
	add r0, sp, #4
	ldrb r0, [r0, r1]
	mov r2, r5
	mvn r1, #0
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r4, _020FEE78 ; =0x02116244
	mov r1, #0x3f
	ldr r2, [r4]
	str r0, [r2]
	mov r0, r5
	bl DWCi_CEINlSetExObj
	ldr r1, [r4]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl dispCaret
	bl  drawAddress
	ldr r0, _020FEE80 ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FEE70: .word ov17_02113138
_020FEE74: .word ov17_0211225C
_020FEE78: .word MemSsea
_020FEE7C: .word ov17_02113160
_020FEE80: .word procInit
	arm_func_end DWCi_SceneSetEditAddress

	arm_static_func_start initGraphics
initGraphics: ; 0x020FEE84
	stmfd sp!, {r3, lr}
	ldr r0, _020FEF18 ; =0x02113164
	ldr r1, _020FEF1C ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FEF20 ; =0x02113178
	ldr r1, _020FEF24 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020FEF28 ; =0x02113190
	ldr r1, _020FEF2C ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FEF30 ; =0x021131A8
	ldr r1, _020FEF34 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FEF38 ; =0x04001008
	ldr r1, _020FEF3C ; =0x0400000A
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
	orr r0, r0, #2
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
_020FEF18: .word ov17_02113164
_020FEF1C: .word GX_LoadOBJPltt
_020FEF20: .word ov17_02113178
_020FEF24: .word GX_LoadBG2Char
_020FEF28: .word ov17_02113190
_020FEF2C: .word GX_LoadBGPltt
_020FEF30: .word ov17_021131A8
_020FEF34: .word GX_LoadBG2Scr
_020FEF38: .word 0x04001008
_020FEF3C: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start procInit
procInit: ; 0x020FEF40
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
	ldr r0, _020FEFA4 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FEFA4: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x020FEFA8
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_KB10lInit
	mov r0, #0x14
	bl DWCi_SNDlPlay
	ldr r0, _020FF02C ; =0x02116244
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _020FF000
	mov r0, r4
	bl DWCi_KB10lSetErase
	mov r0, r4
	b _020FF01C
_020FF000:
	mov r0, #0x1a
	bl isOver
	cmp r0, #0
	beq _020FF018
	mov r0, r4
	bl DWCi_KB10lSetInput
_020FF018:
	mov r0, #0
_020FF01C:
	bl DWCi_KB10lSetShift
	ldr r0, _020FF030 ; =procInit2
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FF02C: .word MemSsea
_020FF030: .word procInit2
	arm_func_end procInit1

	arm_static_func_start procInit2
procInit2: ; 0x020FF034
	stmfd sp!, {r3, lr}
	bl DWCi_KB10lGet
	cmp r0, #0x1f
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FF050 ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF050: .word procScene
	arm_func_end procInit2

	arm_static_func_start procScene
procScene: ; 0x020FF054
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x020FF064
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r5, #0
	ldr r7, _020FF318 ; =0x02116244
	bl DWCi_KB10lGet
	mov r6, r0
	cmp r6, #0
	bgt _020FF08C
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	b _020FF220
_020FF08C:
	sub r0, r6, #0x10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FF220
_020FF09C: ; jump table
	b _020FF0B0 ; case 0
	b _020FF14C ; case 1
	b _020FF194 ; case 2
	b _020FF1B0 ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
_020FF0B0:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _020FF0CC
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _020FF30C
_020FF0CC:
	mov r0, #3
	bl DWCi_SNDlPlay
	ldr r2, [r7]
	ldrb r1, [r2, #0x14]
	add r0, r1, r1, lsl #1
	add r0, r0, #2
	add r0, r2, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	subeq r0, r1, #1
	streqb r0, [r2, #0x14]
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	add r2, r1, #8
	mov r1, r5
	add r0, r0, r0, lsl #1
	add r0, r2, r0
	mov r2, #3
	bl MI_CpuFill8
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldreqb r0, [r1, #0xa]
	cmpeq r0, #0
	bne _020FF138
	mov r0, r5
	bl DWCi_KB10lSetErase
_020FF138:
	mov r0, #1
	bl DWCi_KB10lSetInput
	mov r0, #0
_020FF144:
	bl DWCi_KB10lSetShift
	b _020FF30C
_020FF14C:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	bhs _020FF30C
	add r0, r0, r0, lsl #1
	add r0, r0, #2
	add r0, r1, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _020FF30C
	mov r0, r4
	bl DWCi_SNDlPlay
	ldr r2, [r7]
	mov r0, r5
	ldrb r1, [r2, #0x14]
	add r1, r1, #1
	strb r1, [r2, #0x14]
	b _020FF144
_020FF194:
	ldr r1, [r7]
	mov r0, #7
	strb r5, [r1, #0x15]
	bl DWCi_SNDlPlay
	ldr r0, _020FF31C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF1B0:
	bl isCorrect
	cmp r0, #0
	beq _020FF1D0
	mov r0, #6
	bl DWCi_SNDlPlay
	ldr r0, [r7]
	strb r4, [r0, #0x15]
	b _020FF1E4
_020FF1D0:
	ldr r1, [r7]
	mov r2, #2
	mov r0, #9
	strb r2, [r1, #0x15]
	bl DWCi_SNDlPlay
_020FF1E4:
	ldr r0, [r7]
	mov r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r7]
	ldr r0, _020FF320 ; =0xC1FFFCFF
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x200
	str r0, [r2]
	bl dispCaret
	bl arrangeAddress
	ldr r0, _020FF31C ; =endScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF220:
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _020FF240
	mov r0, #0x1a
	bl isOver
	cmp r0, #0
	bne _020FF30C
_020FF240:
	mov r0, #1
	bl DWCi_SNDlPlay
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	add r12, r1, #8
	add r5, r0, r0, lsl #1
	add r3, r5, #2
	ldrb r2, [r12, r3]
	cmp r2, #0
	streqb r6, [r12, r3]
	beq _020FF2BC
	add r1, r5, #1
	ldrb r0, [r12, r1]
	cmp r0, #0
	bne _020FF298
	strb r2, [r12, r1]
	mov r0, #0x1a
	strb r6, [r12, r3]
	bl isOver
	cmp r0, #0
	beq _020FF2BC
	b _020FF2A8
_020FF298:
	strb r0, [r12, r5]
	ldrb r0, [r12, r3]
	strb r0, [r12, r1]
	strb r6, [r12, r3]
_020FF2A8:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r1, #0x14]
_020FF2BC:
	mov r0, r4
	bl DWCi_KB10lSetErase
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bhs _020FF2DC
	mov r0, r4
	b _020FF2E0
_020FF2DC:
	mov r0, #0
_020FF2E0:
	bl DWCi_KB10lSetShift
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _020FF30C
	mov r0, #0x1a
	bl isOver
	cmp r0, #0
	beq _020FF30C
	mov r0, #0
	bl DWCi_KB10lSetInput
_020FF30C:
	bl  drawAddress
	bl dispCaret
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF318: .word MemSsea
_020FF31C: .word endScene
_020FF320: .word 0xC1FFFCFF
	arm_func_end input

	arm_static_func_start isOver
isOver: ; 0x020FF324
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020FF3A8 ; =0x02116244
	mov r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, #0x14]
	add r2, r1, #8
	add r1, r0, r0, lsl #1
	ldrb r0, [r2, r1]
	cmp r0, #0
	cmpne r0, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, sp, #0
	add r0, r2, r1
	mov r1, r5
	mov r2, #3
	bl MI_CpuCopy8
	mov r2, #0
	strb r2, [sp, #3]
	mov r0, #0x20
_020FF374:
	ldrb r1, [r5, r2]
	cmp r1, #0
	bne _020FF390
	strb r0, [r5, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _020FF374
_020FF390:
	add r0, sp, #0
	bl atoi
	cmp r0, r4
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020FF3A8: .word MemSsea
	arm_func_end isOver

	arm_static_func_start draw
draw: ; 0x020FF3AC
	bx lr
	arm_func_end draw

	arm_static_func_start endScene
endScene: ; 0x020FF3B0
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl DWCi_EFFlWait
	ldr r0, _020FF3C8 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF3C8: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x020FF3CC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_KB10lEnd
	mov r0, #0x15
	bl DWCi_SNDlPlay
	ldr r0, _020FF3F8 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF3F8: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x020FF3FC
	stmfd sp!, {r3, lr}
	bl DWCi_KB10lIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FF478 ; =0x02116244
	ldr r0, [r0]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _020FF42C
	ldr r0, _020FF47C ; =endScene3
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF42C:
	mov r2, #1
	cmp r0, #2
	mov r12, #0
	sub r3, r2, #2
	bne _020FF45C
	mov r0, #6
	mov r1, #3
	str r12, [sp]
	bl DWCi_WINlInitEx
	ldr r0, _020FF480 ; =procError
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF45C:
	mov r0, #0x47
	mov r1, #2
	str r12, [sp]
	bl DWCi_WINlInitEx
	ldr r0, _020FF484 ; =procWin
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF478: .word MemSsea
_020FF47C: .word endScene3
_020FF480: .word procError
_020FF484: .word procWin
	arm_func_end endScene2

	arm_static_func_start endScene3
endScene3: ; 0x020FF488
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_COMMENTlDelete
	ldr r0, _020FF520 ; =0x02116244
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl DWCi_OBJlDelete
	mov r4, #0
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FF524 ; =0x021131C0
	ldr r1, _020FF528 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r0, #1
	mov r1, r0
	bl DWCi_GXlInvisible
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	add r0, sp, #0
	mov r1, r4
	bl DWCi_GetParam2_
	ldr r4, [sp]
	mov r0, #2
	cmp r4, #3
	addge r4, r4, #1
	mov r1, #1
	strge r4, [sp]
	bl DWCi_SetParam_
	add r1, r4, #3
	mov r0, #0
	bl DWCi_SetParam2_
	ldr r0, _020FF52C ; =DWCi_SceneSetList
	bl DWCi_ChangeScene
	ldr r0, _020FF530 ; =0x02116244
	bl DWCi_HEAPlFree_
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FF520: .word MemSsea
_020FF524: .word ov17_021131C0
_020FF528: .word GX_LoadOBJPltt
_020FF52C: .word DWCi_SceneSetList
_020FF530: .word MemSsea
	arm_func_end endScene3

	arm_static_func_start  drawAddress
 drawAddress: ; 0x020FF534
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	ldr r5, _020FF5E8 ; =0x02116244
	ldr r0, _020FF5EC ; =0x02112264
	ldr r1, [r5]
	ldrh r7, [r0]
	ldrh r6, [r0, #2]
	mov r3, #0xb
	mov r2, #0x10
	mov r4, #0
	ldr r0, [r1]
	mov r1, r4
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl DWCi_FNTlClear
	ldr r9, _020FF5F0 ; =0x02112250
	strh r4, [sp, #0x12]
	mov r8, #2
	mov r7, #0x480
	add r6, sp, #0x10
_020FF58C:
	ldr r12, [r5]
	ldrb r1, [r9, r4]
	add r0, r12, r4
	ldrb r3, [r0, #8]
	ldrh r0, [sp, #0x1a]
	ldrh r2, [sp, #0x16]
	strh r3, [sp, #0x10]
	stmia sp, {r0, r8}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r3, [sp, #0x18]
	ldr r0, [r12]
	strh r1, [sp, #0x14]
	bl DWCi_FNTlDrawRect
	add r4, r4, #1
	cmp r4, #0xc
	blt _020FF58C
	ldr r0, _020FF5E8 ; =0x02116244
	ldr r0, [r0]
	ldr r0, [r0]
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020FF5E8: .word MemSsea
_020FF5EC: .word ov17_02112264
_020FF5F0: .word X_IPT
	arm_func_end  drawAddress

	arm_static_func_start dispCaret
dispCaret: ; 0x020FF5F4
	ldr r0, _020FF63C ; =0x02116244
	ldr r2, [r0]
	ldrb r0, [r2, #0x14]
	ldr r3, [r2, #4]
	cmp r0, #3
	movgt r0, #3
	add r1, r0, r0, lsl #1
	ldr r0, _020FF640 ; =0x02112250
	add r1, r1, #2
	ldrb r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _020FF644 ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, #0x28
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	bx lr
_020FF63C: .word MemSsea
_020FF640: .word X_IPT
_020FF644: .word 0xFE00FF00
	arm_func_end dispCaret

	arm_static_func_start procWin
procWin: ; 0x020FF648
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	ldr r1, _020FF698 ; =0x02116244
	ldr r2, [r1]
	strb r0, [r2, #0x15]
	ldr r0, [r1]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _020FF678
	cmp r0, #1
	beq _020FF680
	ldmfd sp!, {r3, pc}
_020FF678:
	mov r0, #7
	b _020FF684
_020FF680:
	mov r0, #0xe
_020FF684:
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _020FF69C ; =procWin1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF698: .word MemSsea
_020FF69C: .word procWin1
	arm_func_end procWin

	arm_static_func_start procWin1
procWin1: ; 0x020FF6A0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r12, _020FF73C ; =0x0211314C
	add r4, sp, #4
	ldmia r12!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r12]
	str r0, [r4]
	bl DWCi_WINlIsInit
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, _020FF740 ; =0x02116244
	ldr r1, [r4]
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _020FF70C
	ldr r3, [r1, #4]
	ldr r1, _020FF744 ; =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _020FF748 ; =procInit1
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020FF70C:
	add r0, sp, #0
	mov r1, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	ldr r2, [r4]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r0, _020FF74C ; =endScene3
	bl DWCi_ChangeScene
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020FF73C: .word ov17_0211314C
_020FF740: .word MemSsea
_020FF744: .word 0xC1FFFCFF
_020FF748: .word procInit1
_020FF74C: .word endScene3
	arm_func_end procWin1

	arm_static_func_start arrangeAddress
arrangeAddress: ; 0x020FF750
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	ldr r0, _020FF7C4 ; =0x02116244
	mov r1, #0x20
	mov r2, #0x30
	mov r12, r4
_020FF768:
	ldr lr, [r0]
	add r3, r4, r4, lsl #1
	add lr, lr, #8
	mov r5, r12
	add lr, lr, r3
_020FF77C:
	ldrb r3, [lr, r5]
	cmp r3, #0x30
	cmpne r3, #0x20
	beq _020FF794
	cmp r3, #0
	bne _020FF7B0
_020FF794:
	mov r3, r2
	cmp r5, #2
	movne r3, r1
	strb r3, [lr, r5]
	add r5, r5, #1
	cmp r5, #3
	blt _020FF77C
_020FF7B0:
	add r4, r4, #1
	cmp r4, #4
	blt _020FF768
	bl  drawAddress
	ldmfd sp!, {r3, r4, r5, pc}
_020FF7C4: .word MemSsea
	arm_func_end arrangeAddress

	arm_static_func_start isCorrect
isCorrect: ; 0x020FF7C8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _020FF900 ; =0x02112248
	ldr r0, _020FF904 ; =0x02116244
	ldrb r4, [r1]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	mov r5, #0
	ldr r0, [r0]
	strb r3, [sp, #9]
	add r6, sp, #8
	strb r4, [sp, #8]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	mov r12, r5
	add r3, r0, #8
_020FF80C:
	add r2, r12, r12, lsl #1
	ldrb r1, [r3, r2]
	add r4, r3, r2
	cmp r1, #0x20
	beq _020FF84C
	mov lr, r5
_020FF824:
	ldrb r2, [r4, lr]
	ldrb r1, [r6, lr]
	cmp r2, r1
	addhi sp, sp, #0xc
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	blo _020FF84C
	add lr, lr, #1
	cmp lr, #3
	blt _020FF824
_020FF84C:
	add r12, r12, #1
	cmp r12, #4
	blt _020FF80C
	add r4, sp, #0
	add r0, r0, #8
	mov r1, r4
	bl DWCi_SETTINGlConvAddress
	mov r6, #0
	add r0, sp, #4
	mov r1, r6
	bl DWCi_GetParam2_
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _020FF8E4
	mov r1, #1
	mov r12, r6
	mov r2, r1
_020FF890:
	ldrb r3, [r4, r12]
	mov lr, r5
_020FF898:
	cmp r6, #0
	rsb r0, lr, #7
	beq _020FF8B8
	tst r3, r2, lsl r0
	beq _020FF8C0
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF8B8:
	tst r3, r1, lsl r0
	moveq r6, r1
_020FF8C0:
	add lr, lr, #1
	cmp lr, #8
	blt _020FF898
	add r12, r12, #1
	cmp r12, #4
	blt _020FF890
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF8E4:
	mov r0, r4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	movne r6, #1
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF900: .word ov17_02112248
_020FF904: .word MemSsea
	arm_func_end isCorrect

	arm_static_func_start procError
procError: ; 0x020FF908
	stmfd sp!, {r3, lr}
	bl DWCi_WINlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_SNDlPlay
	bl DWCi_WINlEnd
	ldr r0, _020FF930 ; =procError1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF930: .word procError1
	arm_func_end procError

	arm_static_func_start procError1
procError1: ; 0x020FF934
	stmfd sp!, {r3, lr}
	bl DWCi_WINlIsInit
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FF96C ; =0x02116244
	ldr r1, _020FF970 ; =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _020FF974 ; =procInit1
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF96C: .word MemSsea
_020FF970: .word 0xC1FFFCFF
_020FF974: .word procInit1
	arm_func_end procError1

	.rodata
ov17_02112248:
	.byte 0x32, 0x35, 0x35, 0x00
S_IPT:
	.byte 0x0B, 0x00, 0x10, 0x00
X_IPT:
	.byte 0x31, 0x3D, 0x49, 0x5A, 0x66, 0x72, 0x83, 0x8F, 0x9B, 0xAC, 0xB8, 0xC4
ov17_0211225C:
	.byte 0x3F, 0x40, 0x41, 0x42
	.byte 0x43, 0x00, 0x00, 0x00
ov17_02112264:
	.byte 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00

	.data
ov17_02113138:
	.word DWCi_SETTINGlGetIp
	.word DWCi_SETTINGlGetNetMask
	.word DWCi_SETTINGlGetGateway
	.word DWCi_SETTINGlGetDnsP
	.word DWCi_SETTINGlGetDnsS
ov17_0211314C:
	.word DWCi_SETTINGlSetIp
	.word DWCi_SETTINGlSetNetMask
	.word DWCi_SETTINGlSetGateway
	.word DWCi_SETTINGlSetDnsP
	.word DWCi_SETTINGlSetDnsS
ov17_02113160:
	.asciz "  0"
	.balign 4, 0
ov17_02113164:
	.asciz "char/ybObjKb.ncl.l"
	.balign 4, 0
ov17_02113178:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_02113190:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_021131A8:
	.asciz "char/xb4EditAddr.nsc.l"
	.balign 4, 0
ov17_021131C0:
	.asciz "char/ybObjMain.ncl.l"

	.bss
MemSsea:
	.space 0x04

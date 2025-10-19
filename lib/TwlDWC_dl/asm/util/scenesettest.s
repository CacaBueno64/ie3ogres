
	.include "asm/macros/function.inc"
	.public DWC_AC_Create
	.public DWC_AC_Destroy
	.public DWC_AC_GetStatus
	.public DWC_AC_Process
	.public DWCi_AC_InsertApInfo
	.public DWCi_ANIMElEnd
	.public DWCi_ANIMElInitEx
	.public DWCi_BACKUPlGetWifi
	.public DWCi_CMNlLoadResource
	.public DWCi_CMNlMsgDraw
	.public DWCi_CMNlStep
	.public DWCi_COMMENTlDispEx
	.public DWCi_ChangeScene
	.public DWCi_FNTlDeleteBgLcd
	.public DWCi_GetParam2_
	.public DWCi_HEAPlAllocEx
	.public DWCi_HLlLoadSet
	.public DWCi_ICONlEnd
	.public DWCi_ICONlInit
	.public DWCi_SETTIGNlGet
	.public DWCi_SETTINGlGetMemMap
	.public DWCi_SNDlPlay
	.public DWCi_SNDlStop
	.public DWCi_SceneSetError
	.public DWCi_SceneSetTestCompletet
	.public DWCi_SetErrorCode
	.public DWCi_SetParam_
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public DWCi_EFFlCheck
	.public DWCi_EFFlFade
	.public DWCi_GXlVisible
	.public DWCi_GXlInvisible
	.public DWCi_HEAPlFree2
	.public GX_LoadBG2Char
	.public GX_LoadBG2Scr
	.public GX_LoadBGPltt
	.public MI_CpuCopy8
	.public MIi_CpuCopy32
	.public OS_Terminate

	.text
	arm_func_start DWCi_SceneSetTest
DWCi_SceneSetTest: ; 0x02104DF4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _02104E84 ; =0x0211627C
	mov r4, #0
	strb r4, [r0]
	bl initGraphics
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _02104E34
	mov r0, #0x31
	mov r2, r4
	sub r1, r0, #0x32
	bl DWCi_COMMENTlDispEx
_02104E34:
	mov r0, #2
	bl DWCi_CMNlStep
	ldr r0, [sp]
	cmp r0, #0
	bne _02104E4C
	bl DWCi_HLlLoadSet
_02104E4C:
	mov r0, #0x2c
	bl DWCi_CMNlMsgDraw
	mov r4, #0
	mov r0, r4
	bl DWCi_ANIMElInitEx
	bl initAc
	mov r0, r4
	bl DWCi_ICONlInit
	mov r0, #0xc
	bl DWCi_SNDlPlay
	ldr r0, _02104E88 ; =procInit
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02104E84: .word Choose
_02104E88: .word procInit
	arm_func_end DWCi_SceneSetTest

	arm_static_func_start initGraphics
initGraphics: ; 0x02104E8C
	stmfd sp!, {r3, lr}
	ldr r0, _02104F14 ; =0x0211342C
	ldr r1, _02104F18 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02104F1C ; =0x02113444
	ldr r1, _02104F20 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02104F24 ; =0x0211345C
	ldr r1, _02104F28 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02104F2C ; =0x04001008
	ldr r1, _02104F30 ; =0x0400000A
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
_02104F14: .word ov17_0211342C
_02104F18: .word GX_LoadBG2Char
_02104F1C: .word ov17_02113444
_02104F20: .word GX_LoadBGPltt
_02104F24: .word ov17_0211345C
_02104F28: .word GX_LoadBG2Scr
_02104F2C: .word 0x04001008
_02104F30: .word 0x0400000A
	arm_func_end initGraphics

	arm_static_func_start initAc
initAc: ; 0x02104F34
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	bl DWCi_SETTIGNlGet
	mov r4, r0
	ldr r0, _02104FC4 ; =0x02112514
	add r1, sp, #4
	mov r2, #0x14
	bl MIi_CpuCopy32
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #2
	moveq r0, #4
	streqb r0, [sp, #0xe]
	ldrneb r0, [r4, #0xf4]
	addne r0, r0, #1
	strneb r0, [sp, #0xe]
	add r0, sp, #4
	bl DWC_AC_Create
	cmp r0, #0
	bne _02104F90
	bl OS_Terminate
_02104F90:
	ldr r0, [sp]
	cmp r0, #0
	bne _02104FA8
	ldrb r0, [r4, #0xf4]
	mov r1, r4
	bl DWCi_AC_InsertApInfo
_02104FA8:
	mov r0, #0
	ldr r1, _02104FC8 ; =taskAc
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_02104FC4: .word AC_CONFIG
_02104FC8: .word taskAc
	arm_func_end initAc

	arm_static_func_start procInit
procInit: ; 0x02104FCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	mov r6, #0
	mov r4, #0x15
	mov r5, #8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl DWCi_EFFlFade
	mov r0, r6
	mov r1, r4
	bl DWCi_GXlVisible
	add r1, sp, #0
	mov r0, r6
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _0210503C
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl DWCi_EFFlFade
	mov r0, r4
	mov r1, r4
	bl DWCi_GXlVisible
_0210503C:
	ldr r0, _02105048 ; =procInit1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02105048: .word procInit1
	arm_func_end procInit

	arm_static_func_start procInit1
procInit1: ; 0x0210504C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210507C ; =procScene
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210507C: .word procScene
	arm_func_end procInit1

	arm_static_func_start procScene
procScene: ; 0x02105080
	stmfd sp!, {r3, lr}
	bl input
	bl draw
	bl button
	ldmfd sp!, {r3, pc}
	arm_func_end procScene

	arm_static_func_start input
input: ; 0x02105094
	bx lr
	arm_func_end input

	arm_static_func_start draw
draw: ; 0x02105098
	bx lr
	arm_func_end draw

	arm_static_func_start button
button: ; 0x0210509C
	bx lr
	arm_func_end button

	arm_static_func_start endScene
endScene: ; 0x021050A0
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl DWCi_EFFlFade
	ldr r0, _021050C4 ; =endScene1
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021050C4: .word endScene1
	arm_func_end endScene

	arm_static_func_start endScene1
endScene1: ; 0x021050C8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl DWCi_EFFlCheck
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021050E8 ; =endScene2
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021050E8: .word endScene2
	arm_func_end endScene1

	arm_static_func_start endScene2
endScene2: ; 0x021050EC
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_SETTINGlGetMemMap
	mov r5, r0
	bl DWC_AC_Destroy
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_BACKUPlGetWifi
	mov r4, #0xe
	mov r2, r4
	add r1, r5, #0xf0
	bl MI_CpuCopy8
	bl DWCi_BACKUPlGetWifi
	mov r2, r4
	add r1, r5, #0x1f0
	bl MI_CpuCopy8
	bl DWCi_ANIMElEnd
	mov r4, #0
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl DWCi_GXlInvisible
	ldr r0, _0210517C ; =0x0211627C
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _0210516C
	bl DWCi_SetParam_
	ldr r0, _02105180 ; =DWCi_SceneSetError
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_0210516C:
	bl DWCi_SetParam_
	ldr r0, _02105184 ; =DWCi_SceneSetTestCompletet
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_0210517C: .word Choose
_02105180: .word DWCi_SceneSetError
_02105184: .word DWCi_SceneSetTestCompletet
	arm_func_end endScene2

	arm_static_func_start taskAc
taskAc: ; 0x02105188
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DWC_AC_Process
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_ICONlEnd
	bl DWCi_SNDlStop
	cmp r4, #0
	ble _021051C0
	ldr r1, _021051E8 ; =0x0211627C
	mov r2, #1
	mov r0, #0x11
	strb r2, [r1]
	b _021051CC
_021051C0:
	bl DWC_AC_GetStatus
	bl DWCi_SetErrorCode
	mov r0, #0x12
_021051CC:
	bl DWCi_SNDlPlay
	ldr r0, _021051EC ; =endScene
	bl DWCi_ChangeScene
	mov r1, r5
	mov r0, #0
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, pc}
_021051E8: .word Choose
_021051EC: .word endScene
	arm_func_end taskAc

	arm_static_func_start acAlloc
acAlloc: ; 0x021051F0
	ldr r12, _02105200 ; =DWCi_HEAPlAllocEx
	mov r0, r1
	mov r1, #0x20
	bx r12
_02105200: .word DWCi_HEAPlAllocEx
	arm_func_end acAlloc

	arm_static_func_start acFree
acFree: ; 0x02105204
	ldr r12, _02105210 ; =DWCi_HEAPlFree2
	mov r0, r1
	bx r12
_02105210: .word DWCi_HEAPlFree2
	arm_func_end acFree

	.rodata
AC_CONFIG:
	.word acAlloc, acFree
	.byte 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.data
ov17_0211342C:
	.asciz "char/jbBgStep3.ncg.l"
	.balign 4, 0
ov17_02113444:
	.asciz "char/ybBgStep3.ncl.l"
	.balign 4, 0
ov17_0211345C:
	.asciz "char/xb4Multi.nsc.l"

	.bss
Choose:
	.space 0x04

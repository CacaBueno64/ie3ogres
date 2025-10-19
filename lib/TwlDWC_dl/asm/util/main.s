
	.include "asm/macros/function.inc"
	.public DWC_Auth_GetCustomNas
	.public DWC_Auth_SetCustomNas
	.public DWC_BM_Init
	.public DWCi_ARClEnd
	.public DWCi_ARClInit
	.public DWCi_CELLlEnd
	.public DWCi_CELLlInit
	.public DWCi_ClearVram
	.public DWCi_EFFlEnd
	.public DWCi_EFFlInit
	.public DWCi_FNTlEnd
	.public DWCi_FNTlInit
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlEnd
	.public DWCi_HEAPlFree_
	.public DWCi_HEAPlInit
	.public DWCi_IPTlCheckFold
	.public DWCi_IPTlEnd
	.public DWCi_IPTlInit
	.public DWCi_IPTlRead
	.public DWCi_ITRlEnd
	.public DWCi_ITRlIntr
	.public DWCi_OBJlEnd
	.public DWCi_OBJlInit
	.public DWCi_OVRlInit
	.public DWCi_RepairVram
	.public DWCi_SNDlEnd
	.public DWCi_SNDlInit
	.public DWCi_SceneInit
	.public DWCi_SetLedNormal
	.public DWCi_SetLedWireless
	.public DWCi_TSKlAct
	.public DWCi_TSKlEnd
	.public DWCi_TSKlInit
	.public FS_Init
	.public FX_Init
	.public G2x_SetBlendBrightness_
	.public GXS_SetGraphicsMode
	.public GX_DispOff
	.public GX_DispOn
	.public GX_SetBankForBG
	.public GX_SetBankForOBJ
	.public GX_SetBankForSubBG
	.public GX_SetBankForSubOBJ
	.public GX_SetGraphicsMode
	.public GX_VBlankIntr
	.public GXx_SetMasterBrightness_
	.public OS_IsAlarmAvailable
	.public OS_IsTickAvailable
	.public OS_Terminate
	.public OS_WaitVBlankIntr
	.public PM_SetLCDPower
	.public RTC_Init
	.public TP_Init

	.text
	arm_func_start DWC_StartUtility
DWC_StartUtility: ; 0x020F8620
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F86B4 ; =Language
	str r0, [r4, #4]
	mov r0, r1
	mov r1, r2
	bl checkParam
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWC_Auth_GetCustomNas
	mov r6, r0
	ldr r0, _020F86B8 ; =0x02112CBC
	bl DWC_Auth_SetCustomNas
	mov r0, #0
	strb r0, [r4, #1]
	bl initGame
	bl initGraph
	bl DWCi_SNDlInit
	ldr r0, _020F86BC ; =DWCi_SceneInit
	bl DWCi_ChangeScene
	mov r5, #0
_020F8674:
	bl DWCi_IPTlRead
	ldr r0, [r4, #0xc]
	blx r0
	mov r0, r5
	bl DWCi_TSKlAct
	bl DWCi_IPTlCheckFold
	bl DWCi_SetLedWireless
	bl OS_WaitVBlankIntr
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _020F8674
	bl procEnd
	mov r0, r6
	bl DWC_Auth_SetCustomNas
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020F86B4: .word Language
_020F86B8: .word ov17_02112CBC
_020F86BC: .word DWCi_SceneInit
	arm_func_end DWC_StartUtility

	arm_static_func_start checkParam
checkParam: ; 0x020F86C0
	ldr r2, _020F8738 ; =Language
	cmp r0, #0
	strb r0, [r2]
	str r1, [r2, #8]
	blt _020F86DC
	cmp r0, #6
	ble _020F86E4
_020F86DC:
	mov r0, #0
	bx lr
_020F86E4:
	mov r2, r1, lsl #0x1c
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	movhi r0, #0
	bxhi lr
	mov r1, r1, lsr #4
	tst r1, #2
	movne r0, #0
	bxne lr
	cmp r0, #0
	beq _020F871C
	tst r1, #1
	movne r0, #0
	bxne lr
_020F871C:
	cmp r0, #0
	bne _020F8730
	tst r1, #1
	moveq r0, #0
	bxeq lr
_020F8730:
	mov r0, #1
	bx lr
_020F8738: .word Language
	arm_func_end checkParam

	arm_static_func_start initGame
initGame: ; 0x020F873C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020F8804 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	bl GX_DispOff
	ldr r1, _020F8808 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _020F8778
	bl OS_Terminate
_020F8778:
	bl OS_IsAlarmAvailable
	cmp r0, #0
	bne _020F8788
	bl OS_Terminate
_020F8788:
	mov r4, #0
	mov r0, r4
	bl GX_VBlankIntr
	bl FX_Init
	sub r0, r4, #1
	bl FS_Init
	bl TP_Init
	bl RTC_Init
	bl GX_DispOff
	ldr r1, _020F8808 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl DWCi_ClearVram
	ldr r0, _020F880C ; =Language
	ldr r0, [r0, #4]
	bl DWCi_HEAPlInit
	bl DWCi_ITRlIntr
	bl DWCi_TSKlInit
	bl DWCi_ARClInit
	bl DWCi_IPTlInit
	bl DWCi_EFFlInit
	mov r0, #0x700
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	str r0, [sp]
	bl DWC_BM_Init
	add r0, sp, #0
	bl DWCi_HEAPlFree_
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020F8804: .word 0x04000208
_020F8808: .word 0x04001000
_020F880C: .word Language
	arm_func_end initGame

	arm_static_func_start initGraph
initGraph: ; 0x020F8810
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0
	bl GX_VBlankIntr
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #2
	bl GX_SetBankForOBJ
	mov r1, #0
	mov r0, #1
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r10, #0x4000000
	ldr r1, [r10]
	add r0, r10, #0x6c
	bic r1, r1, #0x1f00
	str r1, [r10]
	ldr r2, [r10]
	mov r1, #0
	bic r2, r2, #0xe000
	str r2, [r10]
	bl GXx_SetMasterBrightness_
	ldr r1, [r10]
	ldr r4, _020F8A6C ; =0xFFCFFFEF
	ldr r11, _020F8A70 ; =0x0000FFBF
	and r1, r1, r4
	orr r1, r1, #0x10
	orr r1, r1, #0x200000
	str r1, [r10]
	ldrh r1, [r10, #8]
	ldr r0, _020F8A74 ; =0x00200010
	and r1, r1, r11
	strh r1, [r10, #8]
	ldrh r2, [r10, #0xa]
	add r5, r0, #0x3e00000
	add r0, r10, #0x50
	and r2, r2, r11
	strh r2, [r10, #0xa]
	ldrh r3, [r10, #0xc]
	mov r1, #0x3f
	mov r2, #0x10
	and r3, r3, r11
	strh r3, [r10, #0xc]
	ldrh r3, [r10, #0xe]
	and r3, r3, r11
	strh r3, [r10, #0xe]
	mov r3, #0
	str r3, [r5]
	str r3, [r10, #0x14]
	str r3, [r10, #0x18]
	str r3, [r10, #0x1c]
	bl G2x_SetBlendBrightness_
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r0, #0
	bl GXS_SetGraphicsMode
	add r9, r10, #0x1000
	ldr r0, [r9]
	ldr r8, _020F8A78 ; =0x0400106C
	bic r0, r0, #0x1f00
	str r0, [r9]
	ldr r1, [r9]
	mov r0, r8
	bic r1, r1, #0xe000
	str r1, [r9]
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, [r9]
	sub r7, r8, #0x64
	and r0, r0, r4
	orr r0, r0, #0x10
	str r0, [r9]
	ldrh r0, [r7]
	sub r6, r8, #0x62
	sub r5, r8, #0x60
	and r0, r0, r11
	strh r0, [r7]
	ldrh r0, [r6]
	sub r4, r8, #0x5e
	mov r1, #0x3f
	and r0, r0, r11
	strh r0, [r6]
	ldrh r3, [r5]
	mov r2, #0x10
	sub r0, r8, #0x1c
	and r3, r3, r11
	strh r3, [r5]
	ldrh r3, [r4]
	and r3, r3, r11
	strh r3, [r4]
	mov r3, #0
	str r3, [r8, #-0x5c]
	str r3, [r8, #-0x58]
	str r3, [r8, #-0x54]
	str r3, [r8, #-0x50]
	bl G2x_SetBlendBrightness_
	ldrh r0, [r10, #8]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r10, #8]
	ldrh r0, [r10, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x108
	orr r0, r0, #0xc00
	strh r0, [r10, #0xa]
	ldrh r0, [r10, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r10, #0xc]
	ldrh r0, [r10, #0xe]
	and r0, r0, #0x43
	orr r0, r0, #0xf10
	strh r0, [r10, #0xe]
	ldrh r0, [r7]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r7]
	ldrh r0, [r6]
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r6]
	ldrh r0, [r5]
	and r0, r0, #0x43
	orr r0, r0, #0xe00
	strh r0, [r5]
	ldrh r0, [r4]
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r4]
	ldr r0, [r10]
	add r1, r10, #0x304
	bic r0, r0, #0x38000000
	str r0, [r10]
	ldr r0, [r10]
	bic r0, r0, #0x7000000
	str r0, [r10]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl DWCi_FNTlInit
	bl DWCi_OBJlInit
	bl DWCi_OVRlInit
	bl DWCi_CELLlInit
	bl GX_DispOn
	ldr r1, [r9]
	mov r0, #1
	orr r1, r1, #0x10000
	str r1, [r9]
	bl GX_VBlankIntr
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8A6C: .word 0xFFCFFFEF
_020F8A70: .word 0x0000FFBF
_020F8A74: .word 0x00200010
_020F8A78: .word 0x0400106C
	arm_func_end initGraph

	arm_static_func_start procEnd
procEnd: ; 0x020F8A7C
	stmfd sp!, {r3, lr}
	bl GX_DispOff
	ldr r1, _020F8AD0 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl DWCi_SetLedNormal
	mov r0, #1
	bl PM_SetLCDPower
	bl DWCi_IPTlEnd
	bl DWCi_ITRlEnd
	bl DWCi_SNDlEnd
	bl DWCi_CELLlEnd
	bl DWCi_OBJlEnd
	bl DWCi_FNTlEnd
	bl DWCi_EFFlEnd
	bl DWCi_ARClEnd
	bl DWCi_TSKlEnd
	bl DWCi_HEAPlEnd
	bl DWCi_RepairVram
	ldmfd sp!, {r3, pc}
_020F8AD0: .word 0x04001000
	arm_func_end procEnd

	arm_func_start DWCi_ChangeScene
DWCi_ChangeScene: ; 0x020F8AD4
	ldr r1, _020F8AE0 ; =Language
	str r0, [r1, #0xc]
	bx lr
_020F8AE0: .word Language
	arm_func_end DWCi_ChangeScene

	arm_func_start DWCi_SetParam_
DWCi_SetParam_: ; 0x020F8AE4
	ldr r2, _020F8AF4 ; =Language
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	bx lr
_020F8AF4: .word Language
	arm_func_end DWCi_SetParam_

	arm_func_start DWCi_GetParam_
DWCi_GetParam_: ; 0x020F8AF8
	cmp r0, #0
	ldrne r2, _020F8B1C ; =Language
	ldrne r2, [r2, #0x10]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _020F8B1C ; =Language
	ldrne r0, [r0, #0x14]
	strne r0, [r1]
	bx lr
_020F8B1C: .word Language
	arm_func_end DWCi_GetParam_

	arm_func_start DWCi_SetParam2_
DWCi_SetParam2_: ; 0x020F8B20
	ldr r2, _020F8B30 ; =Language
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	bx lr
_020F8B30: .word Language
	arm_func_end DWCi_SetParam2_

	arm_func_start DWCi_GetParam2_
DWCi_GetParam2_: ; 0x020F8B34
	cmp r0, #0
	ldrne r2, _020F8B58 ; =Language
	ldrne r2, [r2, #0x18]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _020F8B58 ; =Language
	ldrne r0, [r0, #0x1c]
	strne r0, [r1]
	bx lr
_020F8B58: .word Language
	arm_func_end DWCi_GetParam2_

	arm_func_start DWCi_Language
DWCi_Language: ; 0x020F8B5C
	ldr r0, _020F8B68 ; =Language
	ldrb r0, [r0]
	bx lr
_020F8B68: .word Language
	arm_func_end DWCi_Language

	arm_func_start DWCi_Entry
DWCi_Entry: ; 0x020F8B6C
	ldr r0, _020F8B80 ; =Language
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
_020F8B80: .word Language
	arm_func_end DWCi_Entry

	arm_func_start DWCi_Flag
DWCi_Flag: ; 0x020F8B84
	ldr r1, _020F8B9C ; =Language
	ldr r1, [r1, #8]
	tst r0, r1, lsr #4
	movne r0, #1
	moveq r0, #0
	bx lr
_020F8B9C: .word Language
	arm_func_end DWCi_Flag

	arm_func_start DWCi_EndUtility
DWCi_EndUtility: ; 0x020F8BA0
	ldr r0, _020F8BB0 ; =Language
	mov r1, #1
	strb r1, [r0, #1]
	bx lr
_020F8BB0: .word Language
	arm_func_end DWCi_EndUtility

	arm_func_start kDWCi_Language
kDWCi_Language: ; 0x020F8BB4
	ldr r0, _020F8BF0 ; =Language
	ldrb r1, [r0]
	cmp r1, #6
	moveq r0, #0x38
	bxeq lr
	cmp r1, #1
	bne _020F8BE4
	ldr r0, [r0, #8]
	mov r0, r0, lsr #4
	tst r0, #2
	moveq r0, #0x37
	bxeq lr
_020F8BE4:
	add r0, r1, #0x31
	and r0, r0, #0xff
	bx lr
_020F8BF0: .word Language
	arm_func_end kDWCi_Language

	.data
ov17_02112CBC:
	.asciz "https://nas.nintendowifi.net/ac"

	.bss
Language:
	.space 0x01
EndFlag:
	.space 0x03
Heap:
	.space 0x04
ParamFmt:
	.space 0x04
CurrentScene:
	.space 0x04
Param:
	.space 0x10


	.include "/macros/function.inc"
	.include "/include/izmain.inc"

	.text
	arm_func_start FUN_02029740
FUN_02029740: ; 0x02029740
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020299D0 ; =0x020A0640
	mov r4, #0
	ldr r2, _020299D4 ; =0x0000124C
	mov r0, r7
	mov r1, r4
	bl MI_CpuFill8
	ldr r6, _020299D8 ; =0x020A0B00
	mov r5, #1
	mov r0, r6
	mov r1, r5
	bl FUN_02074784
	mov r0, r6
	sub r1, r5, #2
	bl FUN_0207478c
	ldr r0, _020299DC ; =0x020A1140
	mov r1, #0x7f
	strh r1, [r0, #0x94]
	strh r1, [r0, #0x96]
	strb r4, [r7, #0xb92]
	ldr r0, _020299E0 ; =0x02099E8C
	strb r4, [r7, #0xb93]
	strh r4, [r0, #0x18]
	strb r4, [r0, #2]
	strb r4, [r0, #0xc]
	strb r4, [r0, #3]
	strb r4, [r0, #9]
	strh r5, [r0, #0x16]
	mov r2, r4
	ldr r0, _020299E4 ; =0x02099EE0
	b _020297C8
_020297BC:
	mov r1, r4, lsl #1
	strh r2, [r0, r1]
	add r4, r4, #1
_020297C8:
	cmp r4, #2
	blt _020297BC
	ldr r5, _020299E0 ; =0x02099E8C
	mov r4, #0
	str r4, [r5, #0x68]
	strb r4, [r5, #5]
	strb r4, [r5, #4]
	strb r4, [r5]
	strb r4, [r5, #0xb]
	strb r4, [r5, #0xa]
	mov r7, #0x10
	strb r4, [r5, #0xf]
	ldr r0, _020299E8 ; =0x0209A050
	mov r1, r4
	mov r2, r7
	strb r4, [r5, #6]
	bl MI_CpuFill8
	ldr r0, _020299EC ; =0x0209A060
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
	mov r6, #8
	ldr r0, _020299F0 ; =0x02099F80
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _020299F4 ; =0x02099F88
	mov r2, r6
	mov r1, r4
	bl MI_CpuFill8
	mov r2, r7
	ldr r0, _020299F8 ; =0x0209A080
	mov r1, r4
	bl MI_CpuFill8
	strb r4, [r5, #0xe]
	strb r4, [r5, #0x10]
	strb r4, [r5, #0x11]
	ldr r0, _020299FC ; =0x02099F5C
	mov r1, r4
	mov r6, #6
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _02029A00 ; =0x02099F62
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	mov r2, r6
	ldr r0, _02029A04 ; =0x02099F68
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, _02029A08 ; =0x02099EA6
	mov r1, r4
	mov r6, #3
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _02029A0C ; =0x02099EA9
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _02029A10 ; =0x02099F6E
	mov r1, r4
	mov r2, #7
	bl MI_CpuFill8
	mov r2, r6
	ldr r0, _02029A14 ; =0x02099EAC
	mov r1, r4
	bl MI_CpuFill8
	strb r4, [r5, #0xd]
	ldr r0, _02029A18 ; =0x0209A090
	mov r1, r4
	strh r4, [r5, #0x14]
	mov r2, #0x19
	bl MI_CpuFill8
	strb r4, [r5, #1]
	strb r4, [r5, #7]
	ldr r0, _02029A1C ; =0x0209A454
	strb r4, [r5, #8]
	str r4, [r0]
	str r4, [r0, #8]
	strb r4, [r0, #0xc]
	str r4, [r0, #4]
	strb r4, [r0, #0x1e]
	strb r4, [r0, #0x1f]
	strb r4, [r0, #0x20]
	strb r4, [r0, #0x1d]
	str r4, [r0, #0x24]
	strb r4, [r0, #0x28]
	strh r4, [r0, #0x2c]
	strb r4, [r0, #0x34]
	strb r4, [r0, #0x35]
	strb r4, [r0, #0x36]
	strb r4, [r0, #0x37]
	strb r4, [r0, #0x38]
	strb r4, [r0, #0x29]
	strb r4, [r0, #0x2a]
	mov r1, #1
	strb r1, [r0, #0x2e]
	strb r1, [r0, #0x2f]
	strb r4, [r0, #0x30]
	strb r4, [r0, #0x31]
	strb r4, [r0, #0x32]
	strb r4, [r0, #0x33]
	strb r4, [r0, #0x39]
	strb r4, [r0, #0x3a]
	strh r4, [r0, #0x3e]
	strh r4, [r0, #0x3c]
	strb r4, [r0, #0x40]
	strb r4, [r0, #0x60]
	strb r4, [r0, #0x80]
	strb r4, [r0, #0x81]
	strb r4, [r0, #0x82]
	ldrb r1, [r0, #0x83]
	bic r1, r1, #7
	and r1, r1, #0xff
	bic r1, r1, #0x38
	and r1, r1, #0xff
	bic r1, r1, #0x40
	strb r1, [r0, #0x83]
	str r4, [r0, #0x84]
	strb r4, [r0, #0x88]
	bl _ZN6Random4InitEv
	bl _ZN8Graphics16ResetScreenFadesEv
	ldr r0, _02029A20 ; =gRecordManager
	bl _ZN14CRecordManager10verifySaveEv
	str r0, [r5, #0x3c]
	mov r0, r4
	bl FUN_ov16_020f069c
	mov r0, r4
	bl FUN_ov16_020efa04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020299D0: .word unk_020A0640
_020299D4: .word 0x0000124C
_020299D8: .word unk_020A0B00
_020299DC: .word unk_020A1140
_020299E0: .word unk_02099E8C
_020299E4: .word unk_02099EE0
_020299E8: .word unk_0209A050
_020299EC: .word unk_0209A060
_020299F0: .word unk_02099F80
_020299F4: .word unk_02099F88
_020299F8: .word unk_0209A080
_020299FC: .word unk_02099F5C
_02029A00: .word unk_02099F62
_02029A04: .word unk_02099F68
_02029A08: .word unk_02099EA6
_02029A0C: .word unk_02099EA9
_02029A10: .word unk_02099F6E
_02029A14: .word unk_02099EAC
_02029A18: .word unk_0209A090
_02029A1C: .word unk_0209A454
_02029A20: .word gRecordManager
	arm_func_end FUN_02029740

	arm_func_start _Z8InitFontv ; https://decomp.me/scratch/J1Gk0
_Z8InitFontv: ; 0x02029A24
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr r0, _02029B24 ; =0x0208F800
	add r1, sp, #0
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r0, _02029B28 ; =0x0208F81C
	add r1, sp, #0xc
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r0, _02029B2C ; =0x0208F838
	add r1, sp, #0x18
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r0, _02029B30 ; =0x0208F854
	add r1, sp, #0x24
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029A70
	bl _ZN12CFontManagerC1Ev
_02029A70:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp]
	mov r3, r2
	str r0, [r4, #0x44]
	bl _ZN12CFontManager4initEPvmh
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029A9C
	bl _ZN12CFontManagerC1Ev
_02029A9C:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0xc]
	mov r3, r2
	str r0, [r4, #0x90]
	bl _ZN12CFontManager4initEPvmh
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029AC8
	bl _ZN12CFontManagerC1Ev
_02029AC8:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0x18]
	mov r3, r2
	str r0, [r4, #0xc4]
	bl _ZN12CFontManager4initEPvmh
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029AF4
	bl _ZN13FontManager_2C1Ev
_02029AF4:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0x24]
	mov r3, r2
	str r0, [r4, #0x50]
	bl _ZN12CFontManager4initEPvmh
	ldr r0, _02029B38 ; =gConfig
	ldr r1, _02029B3C ; =0x0208F870
	bl _ZN7CConfig8getParamEPKc
	strh r0, [r4, #0x12]
	add sp, sp, #0x30
	ldmfd sp!, {r4, pc}
_02029B24: .word unk_0208F800
_02029B28: .word unk_0208F81C
_02029B2C: .word unk_0208F838
_02029B30: .word unk_0208F854
_02029B34: .word unk_02099E8C
_02029B38: .word gConfig
_02029B3C: .word unk_0208F870
	arm_func_end _Z8InitFontv

	arm_func_start FUN_02029b40
FUN_02029b40: ; 0x02029B40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02029BC8 ; =gAudioPlayer
	ldr r1, _02029BCC ; =gAllocator
	mov r0, r5
	bl _ZN11AudioPlayer7initDSEEP10CAllocator
	mov r2, #0
	mov r0, r5
	mov r3, r2
	mov r1, #2
	bl _ZN11AudioPlayer12FUN_0202b838Eiii
	mov r0, r5
	bl _ZN11AudioPlayer12FUN_0202b7b4Ev
	cmp r0, #0
	bne _02029B94
	mov r4, #0x14
_02029B7C:
	mov r0, r4
	bl OS_Sleep
	mov r0, r5
	bl _ZN11AudioPlayer12FUN_0202b7b4Ev
	cmp r0, #0
	beq _02029B7C
_02029B94:
	ldr r5, _02029BC8 ; =gAudioPlayer
	mov r0, r5
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0x14
_02029BAC:
	mov r0, r4
	bl OS_Sleep
	mov r0, r5
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	beq _02029BAC
	ldmfd sp!, {r3, r4, r5, pc}
_02029BC8: .word gAudioPlayer
_02029BCC: .word gAllocator
	arm_func_end FUN_02029b40

	arm_func_start FUN_02029bd0
FUN_02029bd0: ; 0x02029BD0
	ldr r0, _02029BDC ; =0x0209AEC0
	ldr r12, _02029BE0 ; =FUN_0204643c
	bx r12
_02029BDC: .word gWirelessUtil
_02029BE0: .word FUN_0204643c
	arm_func_end FUN_02029bd0

	arm_func_start FUN_02029be4
FUN_02029be4: ; 0x02029BE4
	ldr r0, _02029BF0 ; =0x0209AEC0
	ldr r12, _02029BF4 ; =FUN_0204665c
	bx r12
_02029BF0: .word gWirelessUtil
_02029BF4: .word FUN_0204665c
	arm_func_end FUN_02029be4

	arm_func_start FUN_02029bf8
FUN_02029bf8: ; 0x02029BF8
	stmfd sp!, {r3, lr}
	bl _Z9VramClearv
	bl _Z13InitInterruptv
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02029bf8

	arm_func_start L5_Main ; https://decomp.me/scratch/9QyO3
L5_Main: ; 0x02029C08
	stmfd sp!, {r3, lr}
	bl _Z7InitSDKv
	bl _Z9InitAllocv
	bl _Z9VramClearv
	bl _Z15InitTouchPannelv
	bl _Z7InitG3dv
	bl _Z13InitInterruptv
	bl _Z12FUN_020292e8v
	bl _Z12FUN_020292f4v
	mov r0, #0
	ldr r1, _02029C60 ; =0x0000007E
	bl FS_LoadOverlay
	bl _Z11InitGlobalsv
	bl _Z12FUN_020295e8v
	bl _Z15InitCommonFilesv
	bl _Z8InitFontv
	bl FUN_02029b40
	bl FUN_02029bd0
	bl FUN_02029740
	bl FUN_0202afd0 ; i think this is where the main loop is
	bl FUN_02029be4
	ldmfd sp!, {r3, pc}
_02029C60: .word 0x0000007E
	arm_func_end L5_Main

	arm_func_start _ZN14CSprButtonCtrlD0Ev
_ZN14CSprButtonCtrlD0Ev: ; 0x02029C64
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CSprButtonCtrlD0Ev

	arm_func_start _ZN14CSprButtonCtrlD1Ev
_ZN14CSprButtonCtrlD1Ev: ; 0x02029C78
	bx lr
	arm_func_end _ZN14CSprButtonCtrlD1Ev

	arm_func_start _ZN11C3DGameCharD0Ev
_ZN11C3DGameCharD0Ev: ; 0x02029C7C
	stmfd sp!, {r4, lr}
	ldr r1, _02029CA0 ; =0x0208F6E0
	mov r4, r0
	str r1, [r4]
	bl FUN_0205a504
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02029CA0: .word _ZTV11C3DGameChar+0x8
	arm_func_end _ZN11C3DGameCharD0Ev

	arm_func_start _ZN11C3DGameCharD1Ev
_ZN11C3DGameCharD1Ev: ; 0x02029CA4
	stmfd sp!, {r4, lr}
	ldr r1, _02029CC0 ; =0x0208F6E0
	mov r4, r0
	str r1, [r4]
	bl FUN_0205a504
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02029CC0: .word _ZTV11C3DGameChar+0x8
	arm_func_end _ZN11C3DGameCharD1Ev

	arm_func_start _ZN15CBgAnimeManagerD0Ev
_ZN15CBgAnimeManagerD0Ev: ; 0x02029CC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN15CBgAnimeManagerD0Ev

	arm_func_start _ZN18CBgMenuRadioButtonD0Ev
_ZN18CBgMenuRadioButtonD0Ev: ; 0x02029CD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN18CBgMenuRadioButtonD0Ev

	arm_func_start _ZN14CBgMenuManagerD0Ev
_ZN14CBgMenuManagerD0Ev: ; 0x02029CEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManagerD0Ev

	arm_func_start _ZN8CManager11updateSceneEv
_ZN8CManager11updateSceneEv: ; 0x02029D00
	bx lr
	arm_func_end _ZN8CManager11updateSceneEv

	arm_func_start FUN_02029d04
FUN_02029d04: ; 0x02029D04
	bx lr
	arm_func_end FUN_02029d04

	arm_func_start FUN_02029d08
FUN_02029d08: ; 0x02029D08
	bx lr
	arm_func_end FUN_02029d08

	arm_func_start _ZN8CManager7vFUN_20Ev
_ZN8CManager7vFUN_20Ev: ; 0x02029D0C
	bx lr
	arm_func_end _ZN8CManager7vFUN_20Ev

	arm_func_start _ZN8CManager7vFUN_10Ev
_ZN8CManager7vFUN_10Ev: ; 0x02029D10
	bx lr
	arm_func_end _ZN8CManager7vFUN_10Ev

	arm_func_start FUN_02029d14
FUN_02029d14: ; 0x02029D14
	bx lr
	arm_func_end FUN_02029d14

	arm_func_start FUN_02029d18
FUN_02029d18: ; 0x02029D18
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_0203000c
	add r0, r4, #0x90
	bl _ZN19CSceneScriptManagerD1Ev
	mov r0, r4
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029d18

	.data
	.global unk_0208F800
unk_0208F800:
	.asciz "/data_iz/font/FONT8.NFTR"
	.balign 4, 0
	.global unk_0208F81C
unk_0208F81C:
	.asciz "/data_iz/font/RUBI8.NFTR"
	.balign 4, 0
	.global unk_0208F838
unk_0208F838:
	.asciz "/data_iz/font/FONT12.NFTR"
	.balign 4, 0
	.global unk_0208F854
unk_0208F854:
	.asciz "/data_iz/font/FONT12T.NFTR"
	.balign 4, 0
	.global unk_0208F870
unk_0208F870:
	.asciz "FONT_BLANK_CODE"
	.balign 4, 0


	.include "/macros/function.inc"
	.include "/include/arm9_02029740.inc"

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
	bl FUN_ov16_020ef850
	bl FUN_ov16_020f129c
	ldr r0, _02029A20 ; =0x0209A5D0
	bl FUN_020617d8
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
_02029A20: .word unk_0209A5D0
	arm_func_end FUN_02029740

	arm_func_start InitFont ; https://decomp.me/scratch/J1Gk0
InitFont: ; 0x02029A24
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr r0, _02029B24 ; =0x0208F800
	add r1, sp, #0
	bl FUN_ov16_020f3054
	ldr r0, _02029B28 ; =0x0208F81C
	add r1, sp, #0xc
	bl FUN_ov16_020f3054
	ldr r0, _02029B2C ; =0x0208F838
	add r1, sp, #0x18
	bl FUN_ov16_020f3054
	ldr r0, _02029B30 ; =0x0208F854
	add r1, sp, #0x24
	bl FUN_ov16_020f3054
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029A70
	bl _ZN11FontManagerC1Ev
_02029A70:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp]
	mov r3, r2
	str r0, [r4, #0x44]
	bl _ZN11FontManager11G2dFontInitEPvmh
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029A9C
	bl _ZN11FontManagerC1Ev
_02029A9C:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0xc]
	mov r3, r2
	str r0, [r4, #0x90]
	bl _ZN11FontManager11G2dFontInitEPvmh
	mov r0, #0x24
	bl _Znwm
	cmp r0, #0
	beq _02029AC8
	bl _ZN11FontManagerC1Ev
_02029AC8:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0x18]
	mov r3, r2
	str r0, [r4, #0xc4]
	bl _ZN11FontManager11G2dFontInitEPvmh
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
	bl _ZN11FontManager11G2dFontInitEPvmh
	ldr r0, _02029B38 ; =gL5Config
	ldr r1, _02029B3C ; =0x0208F870
	bl _ZN8L5Config8getParamEPc
	strh r0, [r4, #0x12]
	add sp, sp, #0x30
	ldmfd sp!, {r4, pc}
_02029B24: .word unk_0208F800
_02029B28: .word unk_0208F81C
_02029B2C: .word unk_0208F838
_02029B30: .word unk_0208F854
_02029B34: .word unk_02099E8C
_02029B38: .word gL5Config
_02029B3C: .word unk_0208F870
	arm_func_end InitFont

	arm_func_start FUN_02029b40
FUN_02029b40: ; 0x02029B40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02029BC8 ; =gL5Sound
	ldr r1, _02029BCC ; =gL5Allocator
	mov r0, r5
	bl FUN_0202b448
	mov r2, #0
	mov r0, r5
	mov r3, r2
	mov r1, #2
	bl _ZN7L5Sound12FUN_0202b838Eiii
	mov r0, r5
	bl _ZN7L5Sound12FUN_0202b7b4Ev
	cmp r0, #0
	bne _02029B94
	mov r4, #0x14
_02029B7C:
	mov r0, r4
	bl OS_Sleep
	mov r0, r5
	bl _ZN7L5Sound12FUN_0202b7b4Ev
	cmp r0, #0
	beq _02029B7C
_02029B94:
	ldr r5, _02029BC8 ; =gL5Sound
	mov r0, r5
	bl _ZN7L5Sound12FUN_0202b7f0Ev
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0x14
_02029BAC:
	mov r0, r4
	bl OS_Sleep
	mov r0, r5
	bl _ZN7L5Sound12FUN_0202b7f0Ev
	cmp r0, #0
	beq _02029BAC
	ldmfd sp!, {r3, r4, r5, pc}
_02029BC8: .word gL5Sound
_02029BCC: .word gL5Allocator
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
	bl _Z10InitCommonv
	bl _Z12FUN_02029140v
	bl _Z9VramClearv
	bl _Z15InitTouchPannelv
	bl _Z7InitG3dv
	bl _Z13InitInterruptv
	bl _Z12FUN_020292e8v
	bl _Z12FUN_020292f4v
	mov r0, #0
	ldr r1, _02029C60 ; =0x0000007E
	bl FS_LoadOverlay
	bl FUN_02029304
	bl _Z12FUN_020295e8v
	bl _Z12FUN_02029608v
	bl InitFont
	bl FUN_02029b40
	bl FUN_02029bd0
	bl FUN_02029740
	bl FUN_0202afd0 ; i think this is where the main loop is
	bl FUN_02029be4
	ldmfd sp!, {r3, pc}
_02029C60: .word 0x0000007E
	arm_func_end L5_Main

	arm_func_start FUN_02029c64
FUN_02029c64: ; 0x02029C64
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029c64

	arm_func_start FUN_02029c78
FUN_02029c78: ; 0x02029C78
	bx lr
	arm_func_end FUN_02029c78

	arm_func_start FUN_02029c7c
FUN_02029c7c: ; 0x02029C7C
	stmfd sp!, {r4, lr}
	ldr r1, _02029CA0 ; =0x0208F6E0
	mov r4, r0
	str r1, [r4]
	bl FUN_0205a504
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02029CA0: .word unk_0208F6E0
	arm_func_end FUN_02029c7c

	arm_func_start FUN_02029ca4
FUN_02029ca4: ; 0x02029CA4
	stmfd sp!, {r4, lr}
	ldr r1, _02029CC0 ; =0x0208F6E0
	mov r4, r0
	str r1, [r4]
	bl FUN_0205a504
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02029CC0: .word unk_0208F6E0
	arm_func_end FUN_02029ca4

	arm_func_start FUN_02029cc4
FUN_02029cc4: ; 0x02029CC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029cc4

	arm_func_start FUN_02029cd8
FUN_02029cd8: ; 0x02029CD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029cd8

	arm_func_start FUN_02029cec
FUN_02029cec: ; 0x02029CEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029cec

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
	bl FUN_02047ad4
	mov r0, r4
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029d18

	arm_func_start FUN_02029d44
FUN_02029d44: ; 0x02029D44
	ldr r1, _02029D50 ; =0x020B5AE0
	str r0, [r1, #4]
	bx lr
_02029D50: .word unk_020B5AE0
	arm_func_end FUN_02029d44

	arm_func_start FUN_02029d54
FUN_02029d54: ; 0x02029D54
	ldr r0, _02029D60 ; =0x020B5AE0
	ldr r0, [r0, #8]
	bx lr
_02029D60: .word unk_020B5AE0
	arm_func_end FUN_02029d54

	arm_func_start FUN_02029d64 ; https://decomp.me/scratch/hQu3p
FUN_02029d64: ; 0x02029D64
	ldr r1, _02029D94 ; =0x0208F898
	ldr r2, [r1]
	cmp r2, #0
	beq _02029D8C
_02029D74:
	cmp r0, r2
	moveq r0, r1
	bxeq lr
	ldr r2, [r1, #0xc]!
	cmp r2, #0
	bne _02029D74
_02029D8C:
	mov r0, #0
	bx lr
_02029D94: .word unk_0208F898
	arm_func_end FUN_02029d64

	arm_func_start FUN_02029d98 ; https://decomp.me/scratch/f1Qbf
FUN_02029d98: ; 0x02029D98
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_02029DAC: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _02029DE0 ; case 1
	b _02029DD8 ; case 2
	b _02029DD0 ; case 3
	b _02029DE8 ; case 4
	b _02029DF0 ; case 5
	b _02029DF8 ; case 6
	b _02029E00 ; case 7
	b _02029E08 ; case 8
_02029DD0:
	bl FUN_0202a288
	ldmfd sp!, {r3, pc}
_02029DD8:
	bl FUN_0202a1a0
	ldmfd sp!, {r3, pc}
_02029DE0:
	bl FUN_0202a020
	ldmfd sp!, {r3, pc}
_02029DE8:
	bl _Z14LogoScreenLoadP15GameModeContext
	ldmfd sp!, {r3, pc}
_02029DF0:
	bl FUN_02029f50
	ldmfd sp!, {r3, pc}
_02029DF8:
	bl FUN_02029ee4
	ldmfd sp!, {r3, pc}
_02029E00:
	bl FUN_02029ea4
	ldmfd sp!, {r3, pc}
_02029E08:
	bl FUN_02029e10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02029d98

	arm_func_start FUN_02029e10
FUN_02029e10: ; 0x02029E10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02029E84 ; =0x00000714
	bl _Znwm
	movs r4, r0
	beq _02029E7C
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _02029E88 ; =0x020E6508
	ldr r0, _02029E8C ; =0x020E6698
	str r1, [r4]
	str r0, [r4, #0x4a4]
	add r0, r4, #0xa4
	ldr r1, _02029E90 ; =0x020E6B64
	str r4, [r0, #0x404]
	str r1, [r4, #0x644]
	add r0, r4, #0x244
	ldr r1, _02029E94 ; =0x020E6C98
	str r4, [r0, #0x408]
	str r1, [r4, #0x68c]
	add r0, r4, #0x28c
	str r4, [r0, #0x404]
	mov r0, #0
	str r0, [r4, #0x710]
_02029E7C:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02029E84: .word 0x00000714
_02029E88: .word ov15_020E6508
_02029E8C: .word ov15_020E6698
_02029E90: .word ov15_020E6B64
_02029E94: .word ov15_020E6C98
	arm_func_end FUN_02029e10

	arm_func_start FUN_02029e98
FUN_02029e98: ; 0x02029E98
	bx lr
	arm_func_end FUN_02029e98

	arm_func_start FUN_02029e9c
FUN_02029e9c: ; 0x02029E9C
	bx lr
	arm_func_end FUN_02029e9c

	arm_func_start FUN_02029ea0
FUN_02029ea0: ; 0x02029EA0
	bx lr
	arm_func_end FUN_02029ea0

	arm_func_start FUN_02029ea4
FUN_02029ea4: ; 0x02029EA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0x90
	bl _Znwm
	movs r4, r0
	beq _02029ED8
	bl _ZN14CScreenManagerC2Ev
	ldr r0, _02029EE0 ; =0x020E6578
	str r0, [r4]
_02029ED8:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02029EE0: .word ov15_020E6578
	arm_func_end FUN_02029ea4

	arm_func_start FUN_02029ee4
FUN_02029ee4: ; 0x02029EE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02029F38 ; =0x000004AC
	bl _Znwm
	movs r4, r0
	beq _02029F30
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _02029F3C ; =0x020BDDC0
	ldr r0, _02029F40 ; =0x020BDE30
	str r1, [r4]
	str r0, [r4, #0x90]
	ldr r0, _02029F44 ; =0x020BDF64
	str r4, [r4, #0x288]
	str r0, [r4, #0x298]
	str r4, [r4, #0x29c]
_02029F30:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02029F38: .word 0x000004AC
_02029F3C: .word ov6_020BDDC0
_02029F40: .word ov6_020BDE30
_02029F44: .word ov6_020BDF64
	arm_func_end FUN_02029ee4

	arm_func_start FUN_02029f48
FUN_02029f48: ; 0x02029F48
	bx lr
	arm_func_end FUN_02029f48

	arm_func_start FUN_02029f4c
FUN_02029f4c: ; 0x02029F4C
	bx lr
	arm_func_end FUN_02029f4c

	arm_func_start FUN_02029f50
FUN_02029f50: ; 0x02029F50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0xa8
	bl _Znwm
	movs r4, r0
	beq _02029F90
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _02029F98 ; =0x020BD340
	ldr r0, _02029F9C ; =0x020BD3B0
	str r1, [r4]
	str r0, [r4, #0x90]
	str r4, [r4, #0x94]
_02029F90:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02029F98: .word ov3_020BD340
_02029F9C: .word ov3_020BD3B0
	arm_func_end FUN_02029f50

	arm_func_start FUN_02029fa0
FUN_02029fa0: ; 0x02029FA0
	bx lr
	arm_func_end FUN_02029fa0

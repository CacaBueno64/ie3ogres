
	.include "/macros/function.inc"
	.include "/include/arm9_02029608.inc"

	.text
	arm_func_start FUN_02029608
FUN_02029608: ; 0x02029608
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r4, _020296FC ; =0x0209BA20
	mov r0, r4
	bl FUN_020715b4
	mov r0, r4
	bl FUN_0206f77c
	ldr r3, _02029700 ; =0x0209A250
	ldr r1, _02029704 ; =0x02099E8C
	ldr r0, [r3]
	mov r4, #0
	str r4, [r1, #0xa8]
	cmp r0, #0
	ldr r1, _02029708 ; =0x0208F768
	beq _02029660
	str r4, [sp]
	str r4, [sp, #4]
	ldr r2, _0202970C ; =0x02099F34
	str r4, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl FUN_0202eff0
_02029660:
	ldr r12, _02029704 ; =0x02099E8C
	mov r4, #0
	str r4, [r12, #0x6c]
	str r4, [r12, #0xa0]
	str r4, [r12, #0x70]
	str r4, [r12, #0x9c]
	ldr r0, _02029710 ; =0x02099EF8
	ldr r1, _02029714 ; =0x0208F784
	mov r2, r4
	mov r3, r4
	str r4, [r12, #0x74]
	bl FUN_02085bbc
	ldr r0, _02029718 ; =0x02099F2C
	ldr r1, _0202971C ; =0x0208F798
	mov r2, r4
	mov r3, r4
	bl FUN_02085bbc
	ldr r0, _02029720 ; =0x02099EFC
	ldr r1, _02029724 ; =0x0208F7AC
	mov r2, r4
	mov r3, r4
	bl FUN_02085bbc
	ldr r0, _02029728 ; =0x02099F28
	ldr r1, _0202972C ; =0x0208F7C0
	mov r2, r4
	mov r3, r4
	bl FUN_02085bbc
	ldr r0, _02029730 ; =0x02099F00
	ldr r1, _02029734 ; =0x0208F7D4
	mov r2, r4
	mov r3, r4
	bl FUN_02085bbc
	ldr r0, _02029738 ; =0x02099F04
	ldr r1, _0202973C ; =0x0208F7E8
	mov r2, r4
	mov r3, r4
	bl FUN_02085bbc
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020296FC: .word unk_0209BA20
_02029700: .word unk_0209A250
_02029704: .word unk_02099E8C
_02029708: .word unk_0208F768
_0202970C: .word unk_02099F34
_02029710: .word unk_02099EF8
_02029714: .word unk_0208F784
_02029718: .word unk_02099F2C
_0202971C: .word unk_0208F798
_02029720: .word unk_02099EFC
_02029724: .word unk_0208F7AC
_02029728: .word unk_02099F28
_0202972C: .word unk_0208F7C0
_02029730: .word unk_02099F00
_02029734: .word unk_0208F7D4
_02029738: .word unk_02099F04
_0202973C: .word unk_0208F7E8
	arm_func_end FUN_02029608

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

	arm_func_start FUN_02029a24
FUN_02029a24: ; 0x02029A24
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
	bl operator_new
	cmp r0, #0
	beq _02029A70
	bl FUN_02042188
_02029A70:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp]
	mov r3, r2
	str r0, [r4, #0x44]
	bl FUN_02043330
	mov r0, #0x24
	bl operator_new
	cmp r0, #0
	beq _02029A9C
	bl FUN_02042188
_02029A9C:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0xc]
	mov r3, r2
	str r0, [r4, #0x90]
	bl FUN_02043330
	mov r0, #0x24
	bl operator_new
	cmp r0, #0
	beq _02029AC8
	bl FUN_02042188
_02029AC8:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0x18]
	mov r3, r2
	str r0, [r4, #0xc4]
	bl FUN_02043330
	mov r0, #0x24
	bl operator_new
	cmp r0, #0
	beq _02029AF4
	bl FUN_0206b9c4
_02029AF4:
	ldr r4, _02029B34 ; =0x02099E8C
	mov r2, #0
	ldr r1, [sp, #0x24]
	mov r3, r2
	str r0, [r4, #0x50]
	bl FUN_02043330
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
	arm_func_end FUN_02029a24

	arm_func_start FUN_02029b40
FUN_02029b40: ; 0x02029B40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02029BC8 ; =0x0209AC44
	ldr r1, _02029BCC ; =0x0209A250
	mov r0, r5
	bl FUN_0202b448
	mov r2, #0
	mov r0, r5
	mov r3, r2
	mov r1, #2
	bl FUN_0202b838
	mov r0, r5
	bl FUN_0202b7b4
	cmp r0, #0
	bne _02029B94
	mov r4, #0x14
_02029B7C:
	mov r0, r4
	bl OS_Sleep
	mov r0, r5
	bl FUN_0202b7b4
	cmp r0, #0
	beq _02029B7C
_02029B94:
	ldr r5, _02029BC8 ; =0x0209AC44
	mov r0, r5
	bl FUN_0202b7f0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0x14
_02029BAC:
	mov r0, r4
	bl OS_Sleep
	mov r0, r5
	bl FUN_0202b7f0
	cmp r0, #0
	beq _02029BAC
	ldmfd sp!, {r3, r4, r5, pc}
_02029BC8: .word unk_0209AC44
_02029BCC: .word unk_0209A250
	arm_func_end FUN_02029b40

	arm_func_start FUN_02029bd0
FUN_02029bd0: ; 0x02029BD0
	ldr r0, _02029BDC ; =0x0209AEC0
	ldr r12, _02029BE0 ; =FUN_0204643c
	bx r12
_02029BDC: .word unk_0209AEC0
_02029BE0: .word FUN_0204643c
	arm_func_end FUN_02029bd0

	arm_func_start FUN_02029be4
FUN_02029be4: ; 0x02029BE4
	ldr r0, _02029BF0 ; =0x0209AEC0
	ldr r12, _02029BF4 ; =FUN_0204665c
	bx r12
_02029BF0: .word unk_0209AEC0
_02029BF4: .word FUN_0204665c
	arm_func_end FUN_02029be4

	arm_func_start FUN_02029bf8
FUN_02029bf8: ; 0x02029BF8
	stmfd sp!, {r3, lr}
	bl VramClear
	bl InitInterrupt
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02029bf8

	arm_func_start L5_Main ; https://decomp.me/scratch/9QyO3
L5_Main: ; 0x02029C08
	stmfd sp!, {r3, lr}
	bl InitCommon
	bl FUN_02029140
	bl VramClear
	bl InitTouchPannel
	bl InitG3d
	bl InitInterrupt
	bl FUN_020292e8
	bl FUN_020292f4
	mov r0, #0
	ldr r1, _02029C60 ; =0x0000007E
	bl FS_LoadOverlay
	bl FUN_02029304
	bl FUN_020295e8
	bl FUN_02029608
	bl FUN_02029a24
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
	bl operator_delete
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
	bl operator_delete
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
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029cc4

	arm_func_start FUN_02029cd8
FUN_02029cd8: ; 0x02029CD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029cd8

	arm_func_start FUN_02029cec
FUN_02029cec: ; 0x02029CEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02029cec

	arm_func_start FUN_02029d00
FUN_02029d00: ; 0x02029D00
	bx lr
	arm_func_end FUN_02029d00

	arm_func_start FUN_02029d04
FUN_02029d04: ; 0x02029D04
	bx lr
	arm_func_end FUN_02029d04

	arm_func_start FUN_02029d08
FUN_02029d08: ; 0x02029D08
	bx lr
	arm_func_end FUN_02029d08

	arm_func_start FUN_02029d0c
FUN_02029d0c: ; 0x02029D0C
	bx lr
	arm_func_end FUN_02029d0c

	arm_func_start FUN_02029d10
FUN_02029d10: ; 0x02029D10
	bx lr
	arm_func_end FUN_02029d10

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
	bl FUN_02041b00
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
	bl FUN_02029fa4
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
	bl operator_new
	movs r4, r0
	beq _02029E7C
	bl FUN_02041ac8
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
	bl operator_new
	movs r4, r0
	beq _02029ED8
	bl FUN_02041ac8
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
	bl operator_new
	movs r4, r0
	beq _02029F30
	bl FUN_02041ac8
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
	bl operator_new
	movs r4, r0
	beq _02029F90
	bl FUN_02041ac8
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

	arm_func_start FUN_02029fa4
FUN_02029fa4: ; 0x02029FA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0x154
	bl operator_new
	movs r4, r0
	beq _02029FFC
	bl FUN_02041ac8
	ldr r1, _0202A004 ; =0x020BD8E0
	ldr r0, _0202A008 ; =0x020BD9F4
	str r1, [r4]
	str r0, [r4, #0x90]
	ldr r0, _0202A00C ; =0x020BD950
	str r4, [r4, #0x94]
	str r0, [r4, #0xd0]
	ldr r0, _0202A010 ; =0x020BDAD4
	str r4, [r4, #0xd4]
	str r0, [r4, #0x118]
	str r4, [r4, #0x11c]
_02029FFC:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0202A004: .word ov5_020BD8E0
_0202A008: .word ov5_020BD9F4
_0202A00C: .word ov5_020BD950
_0202A010: .word ov5_020BDAD4
	arm_func_end FUN_02029fa4

	arm_func_start FUN_0202a014
FUN_0202a014: ; 0x0202A014
	bx lr
	arm_func_end FUN_0202a014

	arm_func_start FUN_0202a018
FUN_0202a018: ; 0x0202A018
	bx lr
	arm_func_end FUN_0202a018

	arm_func_start FUN_0202a01c
FUN_0202a01c: ; 0x0202A01C
	bx lr
	arm_func_end FUN_0202a01c

	arm_func_start FUN_0202a020
FUN_0202a020: ; 0x0202A020
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0202A14C ; =0x00003078
	bl operator_new
	movs r4, r0
	beq _0202A144
	bl FUN_02041ac8
	add r0, r4, #0x15c
	ldr r1, _0202A150 ; =0x020D9574
	add r0, r0, #0x1800
	str r1, [r4]
	bl FUN_0206c0d8
	add r0, r4, #0x184
	add r2, r4, #0x234
	add r8, r4, #0x278
	add r9, r4, #0x1bc
	add r1, r4, #0x204
	add lr, r4, #0x2cc
	add r6, r4, #0x360
	add r7, r4, #0x3e0
	add r12, r0, #0x1800
	add r3, r2, #0x1800
	add r0, r8, #0x1800
	add r2, r9, #0x2000
	add r1, r1, #0x2000
	add r8, lr, #0x2000
	add lr, r6, #0x2000
	add r6, r7, #0x2000
	add r7, r4, #0x1000
	ldr r10, _0202A154 ; =0x020D9998
	ldr r9, _0202A158 ; =0x020D9734
	str r10, [r7, #0x984]
	str r4, [r12, #4]
	str r9, [r7, #0xa34]
	str r4, [r3, #4]
	ldr r9, _0202A15C ; =0x020DA084
	add r3, r4, #0x2000
	str r9, [r7, #0xa78]
	add r7, r4, #0x5f0
	str r4, [r0, #4]
	ldr r9, _0202A160 ; =0x020D94C8
	add r0, r7, #0x2000
	str r9, [r3, #0x1bc]
	ldr r7, _0202A164 ; =0x020DBCBC
	str r4, [r2, #8]
	str r7, [r3, #0x204]
	ldr r2, _0202A168 ; =0x020DBE2C
	str r4, [r1, #4]
	str r2, [r3, #0x2cc]
	ldr r1, _0202A16C ; =0x020D93E4
	str r4, [r8, #4]
	str r1, [r3, #0x360]
	ldr r1, _0202A170 ; =0x0211F2D0
	str r4, [lr, #4]
	str r1, [r3, #0x3e0]
	ldr r2, _0202A174 ; =0x020DB1B4
	str r4, [r6, #4]
	mov r1, r4
	str r2, [r3, #0x3e0]
	bl FUN_ov4_020cc0b4
	add r0, r4, #0x14
	ldr r2, _0202A178 ; =0x020D9220
	add r1, r4, #0x3000
	str r2, [r1, #0x14]
	add r0, r0, #0x3000
	str r4, [r0, #4]
	mov r0, #0
	str r0, [r1, #0x70]
	str r0, [r1, #0x74]
_0202A144:
	str r4, [r5, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0202A14C: .word 0x00003078
_0202A150: .word ov4_020D9574
_0202A154: .word ov4_020D9998
_0202A158: .word ov4_020D9734
_0202A15C: .word ov4_020DA084
_0202A160: .word ov4_020D94C8
_0202A164: .word ov4_020DBCBC
_0202A168: .word ov4_020DBE2C
_0202A16C: .word ov4_020D93E4
_0202A170: .word ov61_0211F2D0
_0202A174: .word ov4_020DB1B4
_0202A178: .word ov4_020D9220
	arm_func_end FUN_0202a020

	arm_func_start FUN_0202a17c
FUN_0202a17c: ; 0x0202A17C
	bx lr
	arm_func_end FUN_0202a17c

	arm_func_start FUN_0202a180
FUN_0202a180: ; 0x0202A180
	bx lr
	arm_func_end FUN_0202a180

	arm_func_start FUN_0202a184
FUN_0202a184: ; 0x0202A184
	bx lr
	arm_func_end FUN_0202a184

	arm_func_start FUN_0202a188
FUN_0202a188: ; 0x0202A188
	bx lr
	arm_func_end FUN_0202a188

	arm_func_start FUN_0202a18c
FUN_0202a18c: ; 0x0202A18C
	bx lr
	arm_func_end FUN_0202a18c

	arm_func_start FUN_0202a190
FUN_0202a190: ; 0x0202A190
	bx lr
	arm_func_end FUN_0202a190

	arm_func_start FUN_0202a194
FUN_0202a194: ; 0x0202A194
	bx lr
	arm_func_end FUN_0202a194

	arm_func_start FUN_0202a198
FUN_0202a198: ; 0x0202A198
	bx lr
	arm_func_end FUN_0202a198

	arm_func_start FUN_0202a19c
FUN_0202a19c: ; 0x0202A19C
	bx lr
	arm_func_end FUN_0202a19c

	arm_func_start FUN_0202a1a0
FUN_0202a1a0: ; 0x0202A1A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0202A250 ; =0x00001228
	bl operator_new
	movs r4, r0
	beq _0202A248
	bl FUN_02041ac8
	ldr r1, _0202A254 ; =0x020E8400
	ldr r0, _0202A258 ; =0x020E871C
	str r1, [r4]
	str r0, [r4, #0x90]
	str r4, [r4, #0x94]
	str r0, [r4, #0x78c]
	add r0, r4, #0x38c
	ldr r1, _0202A25C ; =0x020E8C0C
	str r4, [r0, #0x404]
	ldr r0, _0202A260 ; =0x020E8AE4
	str r1, [r4, #0x78c]
	str r0, [r4, #0xe88]
	add r0, r4, #0x288
	ldr r1, _0202A264 ; =0x020E8B80
	str r4, [r0, #0xc04]
	str r1, [r4, #0xe90]
	ldr r0, _0202A268 ; =0x020E8A58
	str r4, [r4, #0xe94]
	str r0, [r4, #0xe98]
	add r0, r4, #0x298
	ldr r1, _0202A26C ; =0x020E8F10
	str r4, [r0, #0xc04]
	str r1, [r4, #0xea4]
	add r0, r4, #0x2a4
	str r4, [r0, #0xc04]
	add r1, r4, #0x1000
	mov r2, #0
	str r2, [r1, #0x1f8]
	add r0, r4, #0x1200
	str r2, [r1, #0x1fc]
	bl FUN_0206c0d8
_0202A248:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0202A250: .word 0x00001228
_0202A254: .word ov1_020E8400
_0202A258: .word ov1_020E871C
_0202A25C: .word ov1_020E8C0C
_0202A260: .word ov1_020E8AE4
_0202A264: .word ov1_020E8B80
_0202A268: .word ov1_020E8A58
_0202A26C: .word ov1_020E8F10
	arm_func_end FUN_0202a1a0

	arm_func_start FUN_0202a270
FUN_0202a270: ; 0x0202A270
	bx lr
	arm_func_end FUN_0202a270

	arm_func_start FUN_0202a274
FUN_0202a274: ; 0x0202A274
	bx lr
	arm_func_end FUN_0202a274

	arm_func_start FUN_0202a278
FUN_0202a278: ; 0x0202A278
	bx lr
	arm_func_end FUN_0202a278

	arm_func_start FUN_0202a27c
FUN_0202a27c: ; 0x0202A27C
	bx lr
	arm_func_end FUN_0202a27c

	arm_func_start FUN_0202a280
FUN_0202a280: ; 0x0202A280
	bx lr
	arm_func_end FUN_0202a280

	arm_func_start FUN_0202a284
FUN_0202a284: ; 0x0202A284
	bx lr
	arm_func_end FUN_0202a284

	arm_func_start FUN_0202a288
FUN_0202a288: ; 0x0202A288
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #0xf70
	bl operator_new
	movs r4, r0
	beq _0202A334
	bl FUN_02041ac8
	ldr r1, _0202A33C ; =0x020D5540
	ldr r0, _0202A340 ; =0x020D56C8
	str r1, [r4]
	str r0, [r4, #0x90]
	mov r1, r4
	add r0, r4, #0x104
	str r4, [r4, #0x94]
	bl FUN_ov0_020bff3c
	ldr r1, _0202A344 ; =0x020D55B0
	ldr r0, _0202A348 ; =0x020D563C
	str r1, [r4, #0x280]
	str r4, [r4, #0x284]
	str r0, [r4, #0x28c]
	ldr r1, _0202A34C ; =0x0208F90C
	str r4, [r4, #0x290]
	add r0, r4, #0x2a0
	str r1, [r4, #0x29c]
	bl FUN_ov0_020d17c8
	ldr r1, _0202A350 ; =0x020D5C9C
	add r6, r4, #0xd40
	ldr r0, _0202A354 ; =0x020D5D10
	str r1, [r4, #0x29c]
	str r0, [r4, #0x2a0]
	ldr r0, _0202A358 ; =0x020D5E48
	str r4, [r4, #0x2ac]
	str r0, [r4, #0xd40]
	add r0, r6, #8
	bl FUN_0206c0d8
	str r4, [r6, #4]
	mov r0, #0
	str r0, [r4, #0xf68]
	str r0, [r4, #0xf6c]
_0202A334:
	str r4, [r5, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_0202A33C: .word ov0_020D5540
_0202A340: .word ov0_020D56C8
_0202A344: .word ov0_020D55B0
_0202A348: .word ov0_020D563C
_0202A34C: .word unk_0208F90C
_0202A350: .word ov0_020D5C9C
_0202A354: .word ov0_020D5D10
_0202A358: .word ov0_020D5E48
	arm_func_end FUN_0202a288

	arm_func_start FUN_0202a35c
FUN_0202a35c: ; 0x0202A35C
	bx lr
	arm_func_end FUN_0202a35c

	arm_func_start FUN_0202a360
FUN_0202a360: ; 0x0202A360
	bx lr
	arm_func_end FUN_0202a360

	arm_func_start FUN_0202a364
FUN_0202a364: ; 0x0202A364
	bx lr
	arm_func_end FUN_0202a364

	arm_func_start FUN_0202a368
FUN_0202a368: ; 0x0202A368
	bx lr
	arm_func_end FUN_0202a368

	arm_func_start FUN_0202a36c
FUN_0202a36c: ; 0x0202A36C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_ov0_020d182c
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202a36c

	arm_func_start FUN_0202a384
FUN_0202a384: ; 0x0202A384
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202a384

	arm_func_start FUN_0202a39c
FUN_0202a39c: ; 0x0202A39C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0202A4D0 ; =0x020B5AE0
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f1670
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0202A3DC
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r4, #0x30]
_0202A3DC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0202A468
	bl FUN_02029d64
	movs r5, r0
	beq _0202A46C
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0202A40C
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
_0202A40C:
	mov r6, #0
	str r6, [r5, #4]
	ldr r1, [r5, #8]
	mov r0, r6
	bl FS_UnloadOverlay
	ldr r0, [r4, #8]
	cmp r0, #2
	ldr r0, [r4, #4]
	moveq r6, #1
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r6, #0
	beq _0202A450
	cmp r0, #0
	bne _0202A450
	b _0202A468
_0202A450:
	cmp r6, #0
	bne _0202A46C
	cmp r0, #0
	beq _0202A46C
	bl FUN_ov16_020f2e2c
	b _0202A46C
_0202A468:
	bl FUN_ov16_020f2dac
_0202A46C:
	ldr r0, [r4, #4]
	bl FUN_02029d64
	movs r5, r0
	beq _0202A4A0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _0202A490
	bl FUN_02029d98
	b _0202A498
_0202A490:
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
_0202A498:
	ldr r0, [r5, #4]
	str r0, [r4, #0x30]
_0202A4A0:
	ldr r1, [r4, #8]
	mov r0, #0
	str r1, [r4, #0xc]
	ldr r1, [r4, #4]
	stmib r4, {r0, r1}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_0202A4D0: .word unk_020B5AE0
	arm_func_end FUN_0202a39c

	arm_func_start FUN_0202a4d4
FUN_0202a4d4: ; 0x0202A4D4
	stmfd sp!, {r3, lr}
	ldr r2, _0202A610 ; =0x0208F898
	mov r1, #0
	b _0202A4EC
_0202A4E4:
	str r1, [r2, #4]
	add r2, r2, #0xc
_0202A4EC:
	ldr r0, [r2]
	cmp r0, #0
	bne _0202A4E4
	ldr r2, _0202A614 ; =0x020B5AE0
	mov r12, #0
	str r12, [r2, #0xc]
	ldr r0, _0202A618 ; =0x02099EC8
	str r12, [r2, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne _0202A600
	ldr r0, _0202A61C ; =0x02FFFC20
	ldr r1, _0202A620 ; =0x020A0640
	ldr r3, [r0]
	cmp r3, #0
	strb r12, [r1, #0x8a]
	moveq r0, #4
	streq r0, [r2, #4]
	beq _0202A608
	cmp r3, #0x16
	cmpne r3, #0x15
	bne _0202A564
	ldr r1, _0202A624 ; =0x0209A454
	mov r3, #1
	strb r3, [r1, #0x80]
	mov r2, #6
	ldr r0, _0202A614 ; =0x020B5AE0
	strb r2, [r1, #0x82]
	str r3, [r0, #4]
	b _0202A608
_0202A564:
	cmp r3, #0x17
	blo _0202A5A4
	cmp r3, #0x19
	bhi _0202A5A4
	ldr r0, _0202A624 ; =0x0209A454
	sub r3, r3, #0x16
	strb r12, [r0, #0x80]
	ldrb r12, [r0, #0x83]
	and r3, r3, #0xff
	and r3, r3, #7
	bic r12, r12, #7
	orr r3, r12, r3
	strb r3, [r0, #0x83]
	mov r0, #1
	strb r0, [r1, #0x8a]
	b _0202A604
_0202A5A4:
	cmp r3, #0x1a
	blo _0202A5EC
	cmp r3, #0x1c
	bhi _0202A5EC
	ldr r1, _0202A624 ; =0x0209A454
	mov r0, #0
	strb r0, [r1, #0x80]
	ldrb r2, [r1, #0x83]
	sub r0, r3, #0x19
	and r0, r0, #0xff
	bic r2, r2, #0x38
	mov r0, r0, lsl #0x1d
	orr r2, r2, r0, lsr #26
	ldr r0, _0202A614 ; =0x020B5AE0
	strb r2, [r1, #0x83]
_0202A5E0:
	mov r1, #1
	str r1, [r0, #4]
	b _0202A608
_0202A5EC:
	ldr r1, _0202A624 ; =0x0209A454
	mov r2, #0
	ldr r0, _0202A614 ; =0x020B5AE0
	strb r2, [r1, #0x80]
	b _0202A5E0
_0202A600:
	mov r0, #5
_0202A604:
	str r0, [r2, #4]
_0202A608:
	bl FUN_0202a39c
	ldmfd sp!, {r3, pc}
_0202A610: .word unk_0208F898
_0202A614: .word unk_020B5AE0
_0202A618: .word unk_02099EC8
_0202A61C: .word 0x02FFFC20
_0202A620: .word unk_020A0640
_0202A624: .word unk_0209A454
	arm_func_end FUN_0202a4d4

	arm_func_start FUN_0202a628
FUN_0202a628: ; 0x0202A628
	stmfd sp!, {r4, lr}
	ldr r0, _0202A664 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r0, _0202A668 ; =0x0209A8A0
	bl FUN_0202e978
	ldr r0, _0202A66C ; =0x0209AC44
	bl FUN_0202b768
	mov r0, #0x14
	bl OS_Sleep
	mov r4, #0
	mov r0, r4
	bl FUN_02074fb8
	mov r0, r4
	bl DseSe_StopAll
	ldmfd sp!, {r4, pc}
_0202A664: .word unk_0209AEC0
_0202A668: .word unk_0209A8A0
_0202A66C: .word unk_0209AC44
	arm_func_end FUN_0202a628

	arm_func_start FUN_0202a670
FUN_0202a670: ; 0x0202A670
	stmfd sp!, {r3, lr}
	mov r0, #0x14
	bl OS_Sleep
	ldr r0, _0202A690 ; =0x0209AC44
	bl FUN_0202b714
	ldr r0, _0202A694 ; =0x0209A8A0
	bl FUN_0202e9c8
	ldmfd sp!, {r3, pc}
_0202A690: .word unk_0209AC44
_0202A694: .word unk_0209A8A0
	arm_func_end FUN_0202a670

	arm_func_start FUN_0202a698
FUN_0202a698: ; 0x0202A698
	stmfd sp!, {r3, lr}
	ldr r0, _0202A6D0 ; =FUN_0202a628
	ldr r1, _0202A6D4 ; =0x020B5AE0
	mov r2, #0
	str r0, [r1, #0x34]
	ldr r0, _0202A6D8 ; =FUN_0202a670
	str r2, [r1, #0x38]
	str r0, [r1, #0x44]
	ldr r0, _0202A6DC ; =0x020B5B14
	str r2, [r1, #0x48]
	bl PM_AppendPreSleepCallback
	ldr r0, _0202A6E0 ; =0x020B5B24
	bl PM_AppendPostSleepCallback
	ldmfd sp!, {r3, pc}
_0202A6D0: .word FUN_0202a628
_0202A6D4: .word unk_020B5AE0
_0202A6D8: .word FUN_0202a670
_0202A6DC: .word unk_020B5B14
_0202A6E0: .word unk_020B5B24
	arm_func_end FUN_0202a698

	arm_func_start FUN_0202a6e4
FUN_0202a6e4: ; 0x0202A6E4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0202A794 ; =0x0209A0F8
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0202A798 ; =0x0209A5D0
	bl FUN_02061bc4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	bl FUN_ov16_020f06ac
	cmp r0, #0
	ldreq r0, _0202A79C ; =0x020A0640
	ldreqb r0, [r0, #0xae]
	cmpeq r0, #0
	movne r5, #1
	bne _0202A744
	ldr r4, _0202A7A0 ; =0x0209AEC0
	mov r0, r4
	bl FUN_020466e4
	cmp r0, #0
	beq _0202A744
	mov r0, r4
	bl FUN_020465fc
_0202A744:
	cmp r5, #0
	beq _0202A780
	bl PM_GetLCDPower
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl OS_WaitVBlankIntr
	bl GX_DispOff
	ldr r1, _0202A7A4 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl OS_WaitVBlankIntr
	mov r0, #0
	bl PM_SetLCDPower
	ldmfd sp!, {r3, r4, r5, pc}
_0202A780:
	mov r1, #0
	mov r2, r1
	mov r0, #0xc
	bl PM_GoSleepMode
	ldmfd sp!, {r3, r4, r5, pc}
_0202A794: .word unk_0209A0F8
_0202A798: .word unk_0209A5D0
_0202A79C: .word unk_020A0640
_0202A7A0: .word unk_0209AEC0
_0202A7A4: .word 0x04001000
	arm_func_end FUN_0202a6e4

	arm_func_start FUN_0202a7a8
FUN_0202a7a8: ; 0x0202A7A8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0202A844 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7374
	ldr r5, _0202A848 ; =gL5Config
	ldr r1, _0202A84C ; =0x0208F978
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	ldr r4, _0202A850 ; =0x0208F6F0
	ldr r1, _0202A854 ; =0x0208F988
	str r0, [r4]
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #4]
	ldr r1, _0202A858 ; =0x0208F99C
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0xc]
	ldr r1, _0202A85C ; =0x0208F9B0
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x10]
	ldr r1, _0202A860 ; =0x0208F9C4
	mov r0, r5
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x28]
	mov r0, r5
	ldr r1, _0202A864 ; =0x0208F9D4
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x2c]
	mov r0, r5
	ldr r1, _0202A868 ; =0x0208F9E8
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x30]
	mov r0, r5
	ldr r1, _0202A86C ; =0x0208F9FC
	bl _ZN8L5Config8getParamEPc
	str r0, [r4, #0x34]
	ldmfd sp!, {r3, r4, r5, pc}
_0202A844: .word unk_02099F24
_0202A848: .word gL5Config
_0202A84C: .word unk_0208F978
_0202A850: .word unk_0208F6F0
_0202A854: .word unk_0208F988
_0202A858: .word unk_0208F99C
_0202A85C: .word unk_0208F9B0
_0202A860: .word unk_0208F9C4
_0202A864: .word unk_0208F9D4
_0202A868: .word unk_0208F9E8
_0202A86C: .word unk_0208F9FC
	arm_func_end FUN_0202a7a8

	arm_func_start FUN_0202a870
FUN_0202a870: ; 0x0202A870
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr lr, _0202A8DC ; =0x0209A0F0
	ldr r12, _0202A8E0 ; =0x0209A0E8
	ldr r3, _0202A8E4 ; =0x0209A0F4
	ldr r0, _0202A8E8 ; =0x020B5B58
	mov r1, r4
	mov r2, #0x20
	strh r4, [lr]
	strh r4, [r12]
	strh r4, [r3]
	bl MI_CpuFill8
	ldr r1, _0202A8EC ; =0x04000130
	ldr r0, _0202A8F0 ; =0x02FFFFA8
	ldrh r1, [r1]
	ldrh r0, [r0]
	bl TP_RequestSamplingAsync
	ldr r0, _0202A8F4 ; =0x020B5B00
	bl TP_WaitCalibratedResult
	ldr r3, _0202A8F8 ; =0x020B5AE0
	ldr r0, _0202A8FC ; =0x020B5B40
	strb r4, [r3]
	mov r1, r4
	mov r2, #0x18
	str r4, [r3, #0x10]
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
_0202A8DC: .word unk_0209A0F0
_0202A8E0: .word unk_0209A0E8
_0202A8E4: .word unk_0209A0F4
_0202A8E8: .word unk_020B5B58
_0202A8EC: .word 0x04000130
_0202A8F0: .word 0x02FFFFA8
_0202A8F4: .word unk_020B5B00
_0202A8F8: .word unk_020B5AE0
_0202A8FC: .word unk_020B5B40
	arm_func_end FUN_0202a870

	arm_func_start FUN_0202a900
FUN_0202a900: ; 0x0202A900
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0202A9FC ; =0x02FFFFA8
	ldrh r0, [r2]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r12, #0
	bne _0202A95C
	ldr r0, _0202AA00 ; =0x04000130
	ldrh r1, [r0]
	ldrh r0, [r2]
	orr r0, r1, r0
	eor r0, r0, r2, lsr #12
	and r0, r0, r2, lsr #12
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	and r1, r2, #0x40
	and r2, r2, #0x20
	mvn r1, r1, lsl #1
	mvn r2, r2, asr #1
	and r0, r1, r0, lsr #16
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r12, r0, lsr #0x10
_0202A95C:
	ldr r0, _0202AA04 ; =0x0209A0E8
	mov r1, #1
	ldrh r3, [r0]
	ldr lr, _0202AA08 ; =0x0209A0F4
	mov r2, #0
	ldr r0, _0202AA0C ; =0x020B5B58
	strh r2, [lr]
	mov r5, r1
	mov r7, #0xe
_0202A980:
	tst r12, r1
	beq _0202A9CC
	tst r3, r1
	beq _0202A9B8
	mov r6, r2, lsl #1
	ldrh r4, [r0, r6]
	cmp r4, #0x10
	ldrhih r4, [lr]
	strhih r7, [r0, r6]
	orrhi r4, r4, r1
	strhih r4, [lr]
	addls r4, r4, #1
	strlsh r4, [r0, r6]
	b _0202A9CC
_0202A9B8:
	ldrh r6, [lr]
	mov r4, r2, lsl #1
	strh r5, [r0, r4]
	orr r4, r6, r1
	strh r4, [lr]
_0202A9CC:
	mov r1, r1, lsl #0x11
	add r2, r2, #1
	cmp r2, #0x10
	mov r1, r1, lsr #0x10
	blt _0202A980
	eor r2, r12, r3
	ldr r0, _0202AA04 ; =0x0209A0E8
	ldr r1, _0202AA10 ; =0x0209A0F0
	and r2, r12, r2
	strh r2, [r1]
	strh r12, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202A9FC: .word 0x02FFFFA8
_0202AA00: .word 0x04000130
_0202AA04: .word unk_0209A0E8
_0202AA08: .word unk_0209A0F4
_0202AA0C: .word unk_020B5B58
_0202AA10: .word unk_0209A0F0
	arm_func_end FUN_0202a900

	arm_func_start FUN_0202aa14
FUN_0202aa14: ; 0x0202AA14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0202AB70 ; =0x020B5AE0
	ldr r5, _0202AB74 ; =0x020B5B40
	ldr r0, [r4, #0x10]
	add r6, r5, r0, lsl #3
	bl TP_RequestSamplingAsync
	mov r0, r6
	bl TP_WaitCalibratedResult
	ldrb r0, [r4]
	cmp r0, #0
	bne _0202AA60
	ldr r0, [r4, #0x10]
	add r1, r5, r0, lsl #3
	ldrh r0, [r1, #4]
	cmp r0, #1
	moveq r0, #0
	streqh r0, [r1, #4]
	movne r0, #1
	strneb r0, [r4]
_0202AA60:
	ldr r0, _0202AB78 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _0202AA8C
	ldr r0, _0202AB70 ; =0x020B5AE0
	ldr r1, _0202AB74 ; =0x020B5B40
	ldr r0, [r0, #0x10]
	mov r2, #0
	add r0, r1, r0, lsl #3
	strh r2, [r0, #4]
_0202AA8C:
	ldr r5, _0202AB70 ; =0x020B5AE0
	ldr lr, _0202AB7C ; =0x55555556
	ldr r7, [r5, #0x10]
	mov r4, #3
	add r2, r7, #2
	smull r0, r1, lr, r2
	add r1, r1, r2, lsr #31
	smull r0, r1, r4, r1
	sub r1, r2, r0
	ldr r2, _0202AB74 ; =0x020B5B40
	mov r3, r1, lsl #3
	add r1, r2, r1, lsl #3
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _0202AB24
	add r0, r2, r7, lsl #3
	ldrh r6, [r0, #4]
	cmp r6, #1
	bne _0202AAF8
_0202AAD8:
	ldrh r1, [r0]
	strh r1, [r5, #0x20]
	ldrh r1, [r0, #2]
	strh r1, [r5, #0x22]
	ldrh r1, [r0, #4]
	strh r1, [r5, #0x24]
	ldrh r0, [r0, #6]
	b _0202AB40
_0202AAF8:
	add r6, r7, #1
	smull r12, r7, lr, r6
	add r7, r7, r6, lsr #31
	smull r12, lr, r4, r7
	sub r7, r6, r12
	add r4, r2, r7, lsl #3
	ldrh r4, [r4, #4]
	cmp r4, #1
	bne _0202AB20
	b _0202AB24
_0202AB20:
	b _0202AAD8
_0202AB24:
	ldrh r0, [r2, r3]
	strh r0, [r5, #0x20]
	ldrh r0, [r1, #2]
	strh r0, [r5, #0x22]
	ldrh r0, [r1, #4]
	strh r0, [r5, #0x24]
	ldrh r0, [r1, #6]
_0202AB40:
	strh r0, [r5, #0x26]
	ldr r3, _0202AB70 ; =0x020B5AE0
	ldr r1, _0202AB7C ; =0x55555556
	ldr r0, [r3, #0x10]
	mov r2, #3
	add r5, r0, #1
	smull r0, r4, r1, r5
	add r4, r4, r5, lsr #31
	smull r0, r1, r2, r4
	sub r4, r5, r0
	str r4, [r3, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202AB70: .word unk_020B5AE0
_0202AB74: .word unk_020B5B40
_0202AB78: .word 0x02FFFFA8
_0202AB7C: .word 0x55555556
	arm_func_end FUN_0202aa14

	arm_func_start FUN_0202ab80
FUN_0202ab80: ; 0x0202AB80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _0202AC10 ; =0x020B5B08
	ldr r5, _0202AC14 ; =0x0209A0F0
	ldr r4, _0202AC18 ; =0x0209A0E8
	b _0202ABC4
_0202AB98:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _0202ABC0
	ldr r3, [r0]
	ldrh r1, [r5]
	ldrh r2, [r4]
	ldr r3, [r3, #0x14]
	blx r3
	cmp r0, #0
	bne _0202ABCC
_0202ABC0:
	add r7, r7, #1
_0202ABC4:
	cmp r7, #3
	blt _0202AB98
_0202ABCC:
	mov r6, #0
	ldr r4, _0202AC1C ; =0x020B5B00
	ldr r5, _0202AC10 ; =0x020B5B08
	b _0202AC04
_0202ABDC:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _0202AC00
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x18]
	blx r2
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0202AC00:
	add r6, r6, #1
_0202AC04:
	cmp r6, #3
	blt _0202ABDC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202AC10: .word unk_020B5B08
_0202AC14: .word unk_0209A0F0
_0202AC18: .word unk_0209A0E8
_0202AC1C: .word unk_020B5B00
	arm_func_end FUN_0202ab80

	arm_func_start FUN_0202ac20
FUN_0202ac20: ; 0x0202AC20
	stmfd sp!, {r3, lr}
	ldr r0, _0202AC44 ; =0x020B5AE0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, pc}
_0202AC44: .word unk_020B5AE0
	arm_func_end FUN_0202ac20

	arm_func_start FUN_0202ac48
FUN_0202ac48: ; 0x0202AC48
	stmfd sp!, {r3, lr}
	ldr r0, _0202AC6C ; =0x020B5AE0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldmfd sp!, {r3, pc}
_0202AC6C: .word unk_020B5AE0
	arm_func_end FUN_0202ac48

	arm_func_start FUN_0202ac70
FUN_0202ac70: ; 0x0202AC70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, #0
	ldr r6, _0202ACE8 ; =0x020B5B08
	strb r7, [sp]
	strb r7, [sp, #1]
	add r4, sp, #0
	mov r5, r7
_0202AC90:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _0202ACD0
	mov r8, r5
_0202ACA0:
	ldrb r0, [r4, r8]
	cmp r0, #0
	bne _0202ACC4
	ldr r0, [r6, r7, lsl #2]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0x1c]
	blx r2
	strb r0, [r4, r8]
_0202ACC4:
	add r8, r8, #1
	cmp r8, #2
	blt _0202ACA0
_0202ACD0:
	add r7, r7, #1
	cmp r7, #3
	blt _0202AC90
	bl FUN_0202ac48
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0202ACE8: .word unk_020B5B08
	arm_func_end FUN_0202ac70

	arm_func_start FUN_0202acec
FUN_0202acec: ; 0x0202ACEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, #0
	ldr r6, _0202AD60 ; =0x020B5B08
	strb r7, [sp]
	strb r7, [sp, #1]
	add r4, sp, #0
	mov r5, r7
_0202AD0C:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _0202AD4C
	mov r8, r5
_0202AD1C:
	ldrb r0, [r4, r8]
	cmp r0, #0
	bne _0202AD40
	ldr r0, [r6, r7, lsl #2]
	mov r1, r8
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	strb r0, [r4, r8]
_0202AD40:
	add r8, r8, #1
	cmp r8, #2
	blt _0202AD1C
_0202AD4C:
	add r7, r7, #1
	cmp r7, #3
	blt _0202AD0C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0202AD60: .word unk_020B5B08
	arm_func_end FUN_0202acec

	arm_func_start FUN_0202ad64
FUN_0202ad64: ; 0x0202AD64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0202AE18 ; =0x02099F24
	ldr r1, _0202AE1C ; =0x0209A110
	ldr r0, [r4]
	ldr r1, [r1]
	bl FUN_02059fac
	bl NNS_G3dGeFlushBuffer
	ldr r9, _0202AE20 ; =0x02099F58
	ldr r0, [r9]
	bl FUN_ov16_0211680c
	ldr r0, _0202AE24 ; =0x02099EB0
	ldr r0, [r0]
	bl FUN_0205d420
	ldr r0, [r9]
	bl FUN_ov16_02116820
	ldr r8, _0202AE28 ; =0x02099EE8
	ldr r0, [r8]
	bl FUN_0205f130
	ldr r7, _0202AE2C ; =0x02099EEC
	mov r1, #0
	ldr r0, [r7]
	bl FUN_0205a73c
	ldr r6, _0202AE30 ; =0x02099F10
	ldr r0, [r6]
	bl FUN_0205c060
	ldr r5, _0202AE34 ; =0x02099F38
	ldr r0, [r5]
	bl FUN_ov16_02112714
	bl NNS_G3dGeFlushBuffer
	ldr r0, [r4]
	bl FUN_ov16_020f7908
	ldr r0, [r8]
	bl FUN_0205f140
	ldr r0, [r7]
	mov r1, #1
	bl FUN_0205a73c
	ldr r0, [r5]
	bl FUN_ov16_02112704
	ldr r0, [r6]
	bl FUN_0205c150
	ldr r0, [r9]
	bl FUN_ov16_021167f8
	ldr r0, [r4]
	bl FUN_ov16_020f792c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202AE18: .word unk_02099F24
_0202AE1C: .word unk_0209A110
_0202AE20: .word unk_02099F58
_0202AE24: .word unk_02099EB0
_0202AE28: .word unk_02099EE8
_0202AE2C: .word unk_02099EEC
_0202AE30: .word unk_02099F10
_0202AE34: .word unk_02099F38
	arm_func_end FUN_0202ad64

	arm_func_start FUN_0202ae38
FUN_0202ae38: ; 0x0202AE38
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0202AF68 ; =0x0209A110
	mov r4, #0
	ldr r0, _0202AF6C ; =0x0209A0F8
	mov r6, #1
	str r4, [r1]
	str r6, [r0]
	bl FUN_0202a7a8
	bl FUN_ov16_020f3f00
	bl FUN_0202a870
	ldr r5, _0202AF70 ; =0x0209A144
	ldr r1, _0202AF74 ; =0x0209A0DC
	ldr r0, _0202AF78 ; =0x0208FA10
	strb r4, [r1]
	mov r1, r5
	bl FUN_ov16_020f3054
	ldr r5, [r5]
	mov r1, r4
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020f1138
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f1138
	bl FUN_0206edc0
	ldr r0, _0202AF7C ; =0x020B5B08
	mov r1, r4
_0202AEA8:
	str r1, [r0, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #3
	blt _0202AEA8
	ldr r0, _0202AF80 ; =0x0209A3E0
	ldr r4, _0202AF84 ; =0x020B5AE0
	str r0, [r4, #0x28]
	bl FUN_ov16_020fe23c
	ldr r0, _0202AF88 ; =0x020AF81C
	str r0, [r4, #0x2c]
	bl FUN_02043c80
	ldr r0, _0202AF8C ; =0x02FFFC20
	ldr r0, [r0]
	cmp r0, #0x11
	bne _0202AF38
	ldr r4, _0202AF90 ; =0x00008003
	mov r5, #0x10
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0202AF94 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
_0202AF10:
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	subs r5, r5, #1
	bpl _0202AF10
	mov r0, r4
	mvn r1, #0xf
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
_0202AF38:
	ldr r4, _0202AF98 ; =0x0209A250
	mov r1, #1
	mov r0, r4
	bl FUN_0202e1ac
	bl FUN_0202a4d4
	mov r0, r4
	mov r1, #0
	bl FUN_0202e1ac
	ldr r0, _0202AF9C ; =0x0209BA20
	bl FUN_0206f29c
	bl FUN_0202a698
	ldmfd sp!, {r4, r5, r6, pc}
_0202AF68: .word unk_0209A110
_0202AF6C: .word unk_0209A0F8
_0202AF70: .word unk_0209A144
_0202AF74: .word unk_0209A0DC
_0202AF78: .word unk_0208FA10
_0202AF7C: .word unk_020B5B08
_0202AF80: .word unk_0209A3E0
_0202AF84: .word unk_020B5AE0
_0202AF88: .word unk_020AF81C
_0202AF8C: .word 0x02FFFC20
_0202AF90: .word 0x00008003
_0202AF94: .word 0x04001000
_0202AF98: .word unk_0209A250
_0202AF9C: .word unk_0209BA20
	arm_func_end FUN_0202ae38

	arm_func_start FUN_0202afa0
FUN_0202afa0: ; 0x0202AFA0
	ldr r1, _0202AFC0 ; =0x0209A110
	ldr r0, _0202AFC4 ; =0x020A0640
	ldr r2, [r1]
	ldr r1, [r0, #0x4dc]
	ldr r0, _0202AFC8 ; =0x020A0B00
	ldr r12, _0202AFCC ; =FUN_02074764
	add r1, r2, r1
	bx r12
_0202AFC0: .word unk_0209A110
_0202AFC4: .word unk_020A0640
_0202AFC8: .word unk_020A0B00
_0202AFCC: .word FUN_02074764
	arm_func_end FUN_0202afa0

	arm_func_start FUN_0202afd0
FUN_0202afd0: ; 0x0202AFD0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	bl FUN_0202ae38
	ldr r0, _0202B190 ; =0x02FFFC3C
	ldr r4, [r0]
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r3, _0202B194 ; =0x04001000
	ldr r0, _0202B198 ; =0x0209A250
	ldr r2, [r3]
	mov r1, #1
	orr r2, r2, #0x10000
	str r2, [r3]
	bl FUN_0202e1ac
	ldr r1, _0202B19C ; =0x02099ECC
	mov r2, #0
	ldr r0, _0202B1A0 ; =0x0209A124
	str r2, [r1]
	str r2, [r0]
_0202B01C:
	ldr r0, _0202B1A4 ; =0x02118490
	mov r6, #1
	str r6, [r0]
	ldr r5, _0202B1A8 ; =0x02FFFFA8
	str r6, [r0, #4]
	ldrh r0, [r5]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _0202B04C
	bl FUN_0202a6e4
	ldr r4, [r5, #-0x36c]
	b _0202B080
_0202B04C:
	bl PM_GetLCDPower
	cmp r0, #0
	bne _0202B080
	mov r0, r6
	bl PM_SetLCDPower
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0202B194 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl FUN_ov16_020f129c
	bl OS_WaitVBlankIntr
_0202B080:
	ldr r5, _0202B1AC ; =0x02099F18
	ldr r0, [r5]
	bl FUN_02051434
	bl FUN_0202ac20
	bl FUN_0202a900
	bl FUN_0202aa14
	bl FUN_0202ab80
	ldr r0, _0202B1A0 ; =0x0209A124
	mov r1, #0
	str r1, [r0]
	bl FUN_0206f014
	bl FUN_0202ac70
	bl FUN_0202ad64
	ldr r0, _0202B1B0 ; =0x02099F30
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #0x38]
	ldr r0, [r5]
	bl FUN_02051448
	ldr r0, _0202B1B4 ; =0x0209A0E8
	ldrh r0, [r0]
	tst r0, #0x100
	beq _0202B100
	ldr r0, _0202B1B8 ; =0x0209A0F0
	ldrh r0, [r0]
	tst r0, #0x200
	beq _0202B100
	ldr r0, _0202B198 ; =0x0209A250
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_0202e38c
_0202B100:
	ldr r0, _0202B1A0 ; =0x0209A124
	ldr r2, _0202B19C ; =0x02099ECC
	ldr r0, [r0]
	mov r1, #1
	str r1, [r2]
	cmp r0, #0
	beq _0202B120
	bl FUN_ov16_020f2604
_0202B120:
	ldr r5, _0202B19C ; =0x02099ECC
_0202B124:
	bl OS_WaitVBlankIntr
	ldr r0, [r5]
	cmp r0, #0
	beq _0202B13C
	bl FUN_0202aa14
	b _0202B124
_0202B13C:
	ldr r1, _0202B190 ; =0x02FFFC3C
	ldr r0, _0202B1BC ; =0x0209A110
	ldr r2, [r1]
	sub r1, r2, r4
	mov r4, r2
	str r1, [r0]
	bl FUN_0202acec
	ldr r5, _0202B1C0 ; =0x020B5AE0
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	ldr r1, [r1, #0x30]
	blx r1
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r0, _0202B1C4 ; =0x0209AC44
	bl FUN_0202b768
	bl FUN_0202afa0
	bl FUN_0202a39c
	b _0202B01C
_0202B190: .word 0x02FFFC3C
_0202B194: .word 0x04001000
_0202B198: .word unk_0209A250
_0202B19C: .word unk_02099ECC
_0202B1A0: .word unk_0209A124
_0202B1A4: .word ov16_02118490
_0202B1A8: .word 0x02FFFFA8
_0202B1AC: .word unk_02099F18
_0202B1B0: .word unk_02099F30
_0202B1B4: .word unk_0209A0E8
_0202B1B8: .word unk_0209A0F0
_0202B1BC: .word unk_0209A110
_0202B1C0: .word unk_020B5AE0
_0202B1C4: .word unk_0209AC44
	arm_func_end FUN_0202afd0

	arm_func_start FUN_0202b1c8
FUN_0202b1c8: ; 0x0202B1C8
	mvn r0, #0
	bx lr
	arm_func_end FUN_0202b1c8

	arm_func_start FUN_0202b1d0
FUN_0202b1d0: ; 0x0202B1D0
	mvn r0, #0
	bx lr
	arm_func_end FUN_0202b1d0

	arm_func_start FUN_0202b1d8
FUN_0202b1d8: ; 0x0202B1D8
	mvn r0, #0
	bx lr
	arm_func_end FUN_0202b1d8

	arm_func_start FUN_0202b1e0
FUN_0202b1e0: ; 0x0202B1E0
	mov r0, #0
	bx lr
	arm_func_end FUN_0202b1e0

	arm_func_start FUN_0202b1e8
FUN_0202b1e8: ; 0x0202B1E8
	mov r0, #0
	bx lr
	arm_func_end FUN_0202b1e8

	arm_func_start FUN_0202b1f0
FUN_0202b1f0: ; 0x0202B1F0
	mov r0, #0
	bx lr
	arm_func_end FUN_0202b1f0

	arm_func_start FUN_0202b1f8
FUN_0202b1f8: ; 0x0202B1F8
	mov r0, #1
	bx lr
	arm_func_end FUN_0202b1f8

	arm_func_start FUN_0202b200
FUN_0202b200: ; 0x0202B200
	bx lr
	arm_func_end FUN_0202b200

	arm_func_start FUN_0202b204
FUN_0202b204: ; 0x0202B204
	bx lr
	arm_func_end FUN_0202b204

	arm_func_start FUN_0202b208
FUN_0202b208: ; 0x0202B208
	mov r0, #0
	bx lr
	arm_func_end FUN_0202b208

	arm_func_start FUN_0202b210
FUN_0202b210: ; 0x0202B210
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202b210

	arm_func_start FUN_0202b224
FUN_0202b224: ; 0x0202B224
	ldr r12, _0202B22C ; =FUN_ov16_020f1800
	bx r12
_0202B22C: .word FUN_ov16_020f1800
	arm_func_end FUN_0202b224

	arm_func_start FUN_0202b230
FUN_0202b230: ; 0x0202B230
	ldr r12, _0202B238 ; =FUN_ov16_020f1660
	bx r12
_0202B238: .word FUN_ov16_020f1660
	arm_func_end FUN_0202b230

	arm_func_start FUN_0202b23c
FUN_0202b23c: ; 0x0202B23C
	ldr r12, _0202B248 ; =FUN_ov16_020f15c8
	mov r0, #8
	bx r12
_0202B248: .word FUN_ov16_020f15c8
	arm_func_end FUN_0202b23c

	arm_func_start FUN_0202b24c
FUN_0202b24c: ; 0x0202B24C
	ldr r12, _0202B258 ; =FUN_ov16_020f1528
	mov r0, #6
	bx r12
_0202B258: .word FUN_ov16_020f1528
	arm_func_end FUN_0202b24c

	arm_func_start FUN_0202b25c
FUN_0202b25c: ; 0x0202B25C
	ldr r12, _0202B268 ; =FUN_ov16_020f147c
	mov r0, #6
	bx r12
_0202B268: .word FUN_ov16_020f147c
	arm_func_end FUN_0202b25c

	arm_func_start FUN_0202b26c
FUN_0202b26c: ; 0x0202B26C
	ldr r12, _0202B274 ; =FUN_ov16_020f13c4
	bx r12
_0202B274: .word FUN_ov16_020f13c4
	arm_func_end FUN_0202b26c

	arm_func_start FUN_0202b278
FUN_0202b278: ; 0x0202B278
	ldr r12, _0202B280 ; =FUN_ov16_020f1310
	bx r12
_0202B280: .word FUN_ov16_020f1310
	arm_func_end FUN_0202b278

	arm_func_start FUN_0202b284
FUN_0202b284: ; 0x0202B284
	ldr r12, _0202B290 ; =FUN_ov16_020f16c8
	mov r0, #1
	bx r12
_0202B290: .word FUN_ov16_020f16c8
	arm_func_end FUN_0202b284

	arm_func_start FUN_0202b294
FUN_0202b294: ; 0x0202B294
	ldr r12, _0202B2A0 ; =FUN_ov16_020f12b4
	mov r0, #1
	bx r12
_0202B2A0: .word FUN_ov16_020f12b4
	arm_func_end FUN_0202b294

	arm_func_start FUN_0202b2a4
FUN_0202b2a4: ; 0x0202B2A4
	bx lr
	arm_func_end FUN_0202b2a4

	arm_func_start FUN_0202b2a8
FUN_0202b2a8: ; 0x0202B2A8
	bx lr
	arm_func_end FUN_0202b2a8

	arm_func_start FUN_0202b2ac
FUN_0202b2ac: ; 0x0202B2AC
	bx lr
	arm_func_end FUN_0202b2ac

	arm_func_start FUN_0202b2b0
FUN_0202b2b0: ; 0x0202B2B0
	ldr r12, _0202B2B8 ; =FUN_ov16_020f17f0
	bx r12
_0202B2B8: .word FUN_ov16_020f17f0
	arm_func_end FUN_0202b2b0

	arm_func_start FUN_0202b2bc
FUN_0202b2bc: ; 0x0202B2BC
	ldr r12, _0202B2C4 ; =FUN_ov16_020f1650
	bx r12
_0202B2C4: .word FUN_ov16_020f1650
	arm_func_end FUN_0202b2bc

	arm_func_start FUN_0202b2c8
FUN_0202b2c8: ; 0x0202B2C8
	ldr r12, _0202B2D4 ; =FUN_ov16_020f15b4
	mov r0, #8
	bx r12
_0202B2D4: .word FUN_ov16_020f15b4
	arm_func_end FUN_0202b2c8

	arm_func_start FUN_0202b2d8
FUN_0202b2d8: ; 0x0202B2D8
	ldr r12, _0202B2E4 ; =FUN_ov16_020f1514
	mov r0, #6
	bx r12
_0202B2E4: .word FUN_ov16_020f1514
	arm_func_end FUN_0202b2d8

	arm_func_start FUN_0202b2e8
FUN_0202b2e8: ; 0x0202B2E8
	ldr r12, _0202B2F4 ; =FUN_ov16_020f1468
	mov r0, #6
	bx r12
_0202B2F4: .word FUN_ov16_020f1468
	arm_func_end FUN_0202b2e8

	arm_func_start FUN_0202b2f8
FUN_0202b2f8: ; 0x0202B2F8
	ldr r12, _0202B300 ; =FUN_ov16_020f13b4
	bx r12
_0202B300: .word FUN_ov16_020f13b4
	arm_func_end FUN_0202b2f8

	arm_func_start FUN_0202b304
FUN_0202b304: ; 0x0202B304
	ldr r12, _0202B30C ; =FUN_ov16_020f1300
	bx r12
_0202B30C: .word FUN_ov16_020f1300
	arm_func_end FUN_0202b304

	arm_func_start FUN_0202b310
FUN_0202b310: ; 0x0202B310
	ldr r12, _0202B31C ; =FUN_ov16_020f16c8
	mov r0, #0
	bx r12
_0202B31C: .word FUN_ov16_020f16c8
	arm_func_end FUN_0202b310

	arm_func_start FUN_0202b320
FUN_0202b320: ; 0x0202B320
	ldr r12, _0202B32C ; =FUN_ov16_020f12b4
	mov r0, #0
	bx r12
_0202B32C: .word FUN_ov16_020f12b4
	arm_func_end FUN_0202b320

	arm_func_start FUN_0202b330
FUN_0202b330: ; 0x0202B330
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r5, r0
	mov r6, r2
	cmp r1, #0
	bne _0202B37C
	cmp r3, #2
	bne _0202B370
	ldr r0, _0202B3D0 ; =0x020B5B78
	ldr r0, [r0]
	cmp r0, #1
	blt _0202B370
	ldr r0, _0202B3D4 ; =0x0209A250
	ldr r1, _0202B3D8 ; =0x00000102
	b _0202B378
_0202B370:
	ldr r0, _0202B3D4 ; =0x0209A250
	mov r1, #2
_0202B378:
	bl FUN_0202e19c
_0202B37C:
	cmp r6, #0
	beq _0202B3AC
	ldr r0, _0202B3D0 ; =0x020B5B78
	ldr r3, [sp, #0x10]
	ldr r1, [r0, #4]
	mov r0, r4
	mov r2, r5
	bl FUN_020863fc
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0202B3AC:
	ldr r1, _0202B3D0 ; =0x020B5B78
	mov r0, r4
	ldr r1, [r1, #4]
	mov r2, r5
	bl FUN_02086284
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0202B3D0: .word unk_020B5B78
_0202B3D4: .word unk_0209A250
_0202B3D8: .word 0x00000102
	arm_func_end FUN_0202b330

	arm_func_start FUN_0202b3dc
FUN_0202b3dc: ; 0x0202B3DC
	bx lr
	arm_func_end FUN_0202b3dc

	arm_func_start FUN_0202b3e0
FUN_0202b3e0: ; 0x0202B3E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202B3EC:
	mov r0, r5
	mov r1, r4
	bl FUN_0202d08c
	add r4, r4, #1
	cmp r4, #2
	blt _0202B3EC
	mov r4, #0
_0202B408:
	mov r0, r5
	mov r1, r4
	bl FUN_0202cf00
	add r4, r4, #1
	cmp r4, #2
	blt _0202B408
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_0202d774
	mov r0, r5
	mov r1, r4
	bl FUN_0202d578
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202b3e0

	arm_func_start FUN_0202b448
FUN_0202b448: ; 0x0202B448
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r4, r0
	str r1, [r4]
	bl SND_Init
	ldr r8, _0202B704 ; =0x0000FFFF
	mov r9, #0
	mov r0, r8
	mov r1, r9
	bl SND_LockChannel
	mov r7, #4
	mov r6, #1
	ldr r0, [r4]
	add r1, r8, #0x10
	mov r2, r7
	mov r3, r6
	bl FUN_0202de58
	add r5, sp, #0
	mov r10, r0
	mov r0, r5
	bl FUN_02074aa8
	add r0, r10, #0xf
	bic r1, r0, #0xf
	mov r0, r5
	mov r2, #0x10000
	bl FUN_02074c24
	mov r0, r5
	mov r1, r9
	mov r2, r7
	bl FUN_02074c58
	mov r0, r5
	mov r1, #5
	bl FUN_02074c8c
	mov r10, #0xf
	mov r0, r5
	mov r1, r9
	mov r2, r10
	bl FUN_02074cbc
	mov r0, r5
	bl FUN_02074d04
	mov r0, r7
	mov r1, r7
	bl DseSe_SysReset
	add r0, r4, #4
	bl FUN_0207c2ec
	add r0, r4, #4
	mov r1, #6
	bl FUN_0207c348
	add r0, r4, #4
	mov r1, #0x14
	bl FUN_0207c368
	mov r1, r6
	add r0, r4, #4
	bl FUN_0207c388
	mov r2, r10
	add r0, r4, #4
	mov r1, #8
	bl FUN_0207c3b8
	mov r5, #0x1000
	add r0, r4, #4
	mov r1, r5
	bl FUN_0207c3f0
	mov r1, r5
	add r0, r4, #4
	bl FUN_0207c430
	add r0, r4, #4
	bl FUN_0207c5c0
	mov r1, #0x7f
	add r0, r4, #0x200
	strh r1, [r0, #0x58]
	strh r1, [r0, #0x5a]
	strh r1, [r0, #0x5c]
	mov r1, #0x3e8
	strh r1, [r0, #0x5e]
	strh r1, [r0, #0x60]
	add r0, r4, #0x58
	mov r1, r9
	mov r2, #0x64
	bl MI_CpuFill8
	sub r2, r8, #0x10000
	mov r5, r9
	mov r0, #0x14
_0202B590:
	mla r1, r9, r0, r4
	add r9, r9, #1
	strh r2, [r1, #0x5c]
	cmp r9, #5
	blt _0202B590
	mov r6, #0
	mov r1, r6
	add r0, r4, #0xbc
	mov r2, #4
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0xc0
	mov r2, #0x18
	bl MI_CpuFill8
	mvn r2, #0
	mov r0, #0xc
_0202B5D0:
	mla r1, r6, r0, r4
	add r6, r6, #1
	strh r2, [r1, #0xc0]
	cmp r6, #2
	blt _0202B5D0
	mov r6, #0
	mov r1, r6
	add r0, r4, #0xd8
	mov r2, #0x30
	bl MI_CpuFill8
	mov r7, #0x38
	mov r1, r6
	mov r2, r7
	add r0, r4, #0x108
	bl MI_CpuFill8
	mov r1, r6
	mov r2, r7
	add r0, r4, #0x140
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0x178
	mov r2, r7
	bl MI_CpuFill8
	add r0, r4, #0x1b0
	mov r1, r6
	mov r2, r7
	bl MI_CpuFill8
	add r0, r4, #0x1e8
	mov r1, r6
	mov r2, r7
	bl MI_CpuFill8
	mov r2, r7
	add r0, r4, #0x220
	mov r1, r6
	bl MI_CpuFill8
	mvn r2, #0
	mov r0, #0x1c
_0202B664:
	mla r3, r6, r0, r4
	add r1, r3, #0x100
	strh r2, [r1, #0x18]
	strh r2, [r1, #0x50]
	strh r2, [r1, #0x88]
	strh r2, [r1, #0xc0]
	add r6, r6, #1
	strh r2, [r1, #0xf8]
	add r1, r3, #0x200
	strh r2, [r1, #0x30]
	cmp r6, #2
	blt _0202B664
	mov r3, #0
	mvn r2, #0
	mov r0, #0xc
_0202B6A0:
	mla r1, r3, r0, r4
	add r3, r3, #1
	strb r2, [r1, #0xc3]
	cmp r3, #2
	blt _0202B6A0
	ldr r0, [r4]
	mov r2, #4
	ldr r1, _0202B708 ; =0x00064010
	mov r3, #1
	strb r2, [r4, #0x5f]
	bl FUN_0202de58
	mov r1, #5
	str r0, [r4, #0x58]
	str r0, [r4, #0x6c]
	mov r0, #2
	strb r1, [r4, #0x73]
	bl FUN_02086750
	ldr r1, _0202B70C ; =0x0208FACC
	mov r0, r5
	bl FUN_02085e4c
	ldr r1, _0202B710 ; =0x020B5B78
	str r0, [r1, #4]
	str r5, [r4, #0x264]
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0202B704: .word 0x0000FFFF
_0202B708: .word 0x00064010
_0202B70C: .word unk_0208FACC
_0202B710: .word unk_020B5B78
	arm_func_end FUN_0202b448

	arm_func_start FUN_0202b714
FUN_0202b714: ; 0x0202B714
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r0, r4
	bl FUN_0207504c
	ldrh r0, [r5, #0xfe]
	tst r0, #4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x100]
	mov r1, r4
	bl FUN_0207d1c4
	ldrh r1, [r5, #0xfe]
	ldr r0, _0202B754 ; =0x0000FFFB
	and r0, r1, r0
	strh r0, [r5, #0xfe]
	ldmfd sp!, {r3, r4, r5, pc}
_0202B754: .word 0x0000FFFB
	arm_func_end FUN_0202b714

	arm_func_start FUN_0202b758
FUN_0202b758: ; 0x0202B758
	ldr r12, _0202B764 ; =FUN_02074F18
	mov r0, #1
	bx r12
_0202B764: .word FUN_02074F18
	arm_func_end FUN_0202b758

	arm_func_start FUN_0202b768
FUN_0202b768: ; 0x0202B768
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0202c5e8
	mov r0, r5
	bl FUN_0202d228
	mov r0, r5
	bl FUN_0202d7ec
	mov r4, #0
_0202B788:
	add r1, r5, r4, lsl #1
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	beq _0202B7A4
	ldrsb r1, [r1, #0xbc]
	mov r0, r5
	bl FUN_0202cc34
_0202B7A4:
	add r4, r4, #1
	cmp r4, #2
	blt _0202B788
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202b768

	arm_func_start FUN_0202b7b4
FUN_0202b7b4: ; 0x0202B7B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0202d228
	mov r2, #0
	mov r0, #0xc
_0202B7C8:
	mla r1, r2, r0, r4
	ldrh r1, [r1, #0xc4]
	tst r1, #0x11
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	add r2, r2, #1
	cmp r2, #2
	blt _0202B7C8
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202b7b4

	arm_func_start FUN_0202b7f0
FUN_0202b7f0: ; 0x0202B7F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202B7FC:
	add r1, r5, r4, lsl #1
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	beq _0202B824
	ldrsb r1, [r1, #0xbc]
	mov r0, r5
	bl FUN_0202cc34
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0202B824:
	add r4, r4, #1
	cmp r4, #2
	blt _0202B7FC
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202b7f0

	arm_func_start FUN_0202b838
FUN_0202b838: ; 0x0202B838
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r5, [r4, #0x264]
	mov r9, r1
	mov r8, r2
	mov r6, r3
	cmp r5, r9
	mov r7, #0
	beq _0202B864
	bl FUN_0202bad8
_0202B864:
	str r9, [r4, #0x264]
	cmp r9, #0xb
	addls pc, pc, r9, lsl #2
	b _0202BAA0
_0202B874: ; jump table
	b _0202BAA0 ; case 0
	b _0202BAA0 ; case 1
	b _0202B8A4 ; case 2
	b _0202B8C8 ; case 3
	b _0202B904 ; case 4
	b _0202B928 ; case 5
	b _0202B980 ; case 6
	b _0202B95C ; case 7
	b _0202B9D4 ; case 8
	b _0202BA60 ; case 9
	b _0202BAA0 ; case 10
	b _0202BAA0 ; case 11
_0202B8A4:
	ldr r2, _0202BAAC ; =0x0208FAD8
	mov r0, r4
	mov r1, r7
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B8C8:
	ldr r0, _0202BAB0 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	mov r1, #0
	beq _0202B8E4
	ldr r2, _0202BAB4 ; =0x0208FAE0
	b _0202B8E8
_0202B8E4:
	ldr r2, _0202BAB8 ; =0x0208FAE8
_0202B8E8:
	mov r0, r4
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B904:
	ldr r2, _0202BABC ; =0x0208FAF0
	mov r0, r4
	mov r1, #2
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B928:
	mov r0, r4
	mov r1, r7
	mov r2, #6
	bl FUN_0202bea4
	ldr r2, _0202BAC0 ; =0x0208FAF8
	mov r0, r4
	mov r1, #2
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B95C:
	ldr r2, _0202BAC4 ; =0x0208FB00
	mov r0, r4
	mov r1, #1
	bl FUN_0202cdd4
	cmp r0, #0
	bne _0202BAA0
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202B980:
	ldr r2, _0202BAC8 ; =0x0208FB08
	mov r0, r4
	mov r1, #1
	bl FUN_0202cdd4
	cmp r5, #5
	bne _0202BAA0
	mov r8, #0
	add r6, r4, #0x1e8
	mov r5, #0x1c
_0202B9A4:
	mov r0, r4
	mov r1, r8
	mov r2, r7
	mov r3, r7
	bl FUN_0202c364
	mla r1, r8, r5, r6
	mov r0, r4
	bl FUN_0202be18
	add r8, r8, #1
	cmp r8, #2
	blt _0202B9A4
	b _0202BAA0
_0202B9D4:
	cmp r8, #0
	beq _0202BA08
	add r5, sp, #0
	ldr r1, _0202BACC ; =0x0208FB10
	mov r0, r5
	mov r2, r8
	bl sprintf
	mov r0, r4
	mov r2, r5
	mov r1, #0
	mov r3, #1
	bl FUN_0202bec0
	b _0202BA18
_0202BA08:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl FUN_0202bea4
_0202BA18:
	cmp r6, #0
	beq _0202BA4C
	add r5, sp, #0
	ldr r1, _0202BAD0 ; =0x0208FB18
	mov r0, r5
	mov r2, r6
	bl sprintf
	mov r1, #1
	mov r0, r4
	mov r2, r5
	mov r3, r1
	bl FUN_0202bec0
	b _0202BAA0
_0202BA4C:
	mov r0, r4
	mov r1, #1
	mov r2, #0
	bl FUN_0202bea4
	b _0202BAA0
_0202BA60:
	mov r6, #4
	mov r0, r4
	mov r1, r6
	bl FUN_0202db98
	ldr r2, _0202BAD4 ; =0x0208FB20
	mov r0, r4
	mov r1, #1
	bl FUN_0202cdd4
	mov r5, r0
	mov r0, r4
	mov r1, r6
	bl FUN_0202db98
	cmp r5, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BAA0:
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BAAC: .word unk_0208FAD8
_0202BAB0: .word unk_0209BA20
_0202BAB4: .word unk_0208FAE0
_0202BAB8: .word unk_0208FAE8
_0202BABC: .word unk_0208FAF0
_0202BAC0: .word unk_0208FAF8
_0202BAC4: .word unk_0208FB00
_0202BAC8: .word unk_0208FB08
_0202BACC: .word unk_0208FB10
_0202BAD0: .word unk_0208FB18
_0202BAD4: .word unk_0208FB20
	arm_func_end FUN_0202b838

	arm_func_start FUN_0202bad8
FUN_0202bad8: ; 0x0202BAD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x264]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0202BB4C
_0202BAF0: ; jump table
	b _0202BB4C ; case 0
	b _0202BB4C ; case 1
	b _0202BB4C ; case 2
	b _0202BB4C ; case 3
	b _0202BB20 ; case 4
	b _0202BB24 ; case 5
	b _0202BB30 ; case 6
	b _0202BB28 ; case 7
	b _0202BB4C ; case 8
	b _0202BB34 ; case 9
	b _0202BB38 ; case 10
	b _0202BB4C ; case 11
_0202BB20:
	b _0202BB44
_0202BB24:
	b _0202BB20
_0202BB28:
	mov r1, #1
	b _0202BB48
_0202BB30:
	b _0202BB38
_0202BB34:
	b _0202BB28
_0202BB38:
	mov r1, #1
	bl FUN_0202cf00
	mov r0, r4
_0202BB44:
	mov r1, #2
_0202BB48:
	bl FUN_0202cf00
_0202BB4C:
	mov r0, #0
	str r0, [r4, #0x264]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202bad8

	arm_func_start FUN_0202bb58
FUN_0202bb58: ; 0x0202BB58
	add r2, r0, #0x200
	strh r1, [r2, #0x5a]
	ldrh r1, [r2, #0x5e]
	ldr r12, _0202BB6C ; =FUN_0202bbac
	bx r12
_0202BB6C: .word FUN_0202bbac
	arm_func_end FUN_0202bb58

	arm_func_start FUN_0202bb70
FUN_0202bb70: ; 0x0202BB70
	add r2, r0, #0x200
	strh r1, [r2, #0x5e]
	ldrh r1, [r2, #0x5e]
	ldr r12, _0202BB84 ; =FUN_0202bbac
	bx r12
_0202BB84: .word FUN_0202bbac
	arm_func_end FUN_0202bb70

	arm_func_start FUN_0202bb88
FUN_0202bb88: ; 0x0202BB88
	add r0, r0, #0x200
	ldrh r0, [r0, #0x5a]
	bx lr
	arm_func_end FUN_0202bb88

	arm_func_start FUN_0202bb94
FUN_0202bb94: ; 0x0202BB94
	add r0, r0, #0x200
	strh r1, [r0, #0x5c]
	bx lr
	arm_func_end FUN_0202bb94

	arm_func_start FUN_0202bba0
FUN_0202bba0: ; 0x0202BBA0
	add r0, r0, #0x200
	ldrh r0, [r0, #0x5c]
	bx lr
	arm_func_end FUN_0202bba0

	arm_func_start FUN_0202bbac
FUN_0202bbac: ; 0x0202BBAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r2, r5, #0x200
	ldrh r3, [r2, #0x5a]
	ldrh r4, [r2, #0x58]
	ldr r2, _0202BC44 ; =0x10624DD3
	mul r1, r3, r1
	mul r1, r4, r1
	mov r3, r1, asr #7
	smull r1, r4, r2, r3
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #6
	mov r1, r4, lsl #0x18
	mov r1, r1, asr #0x18
	mov r2, #0x3e8
	bl FUN_0202bc48
	mov r4, #0
	mov r6, #0x14
	mov r7, #0xc
_0202BBF8:
	mla r1, r4, r7, r5
	ldrh r0, [r1, #0xc6]
	tst r0, #2
	beq _0202BC1C
	ldrsb r2, [r1, #0xc3]
	add r1, r5, #0x44
	mla r0, r2, r6, r5
	ldr r0, [r0, #0x64]
	bl DseBgm_SetFades
_0202BC1C:
	add r4, r4, #1
	cmp r4, #2
	blt _0202BBF8
	ldrh r0, [r5, #0xfe]
	tst r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x100]
	add r1, r5, #0x44
	bl FUN_0207d3e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202BC44: .word 0x10624DD3
	arm_func_end FUN_0202bbac

	arm_func_start FUN_0202bc48
FUN_0202bc48: ; 0x0202BC48
	cmp r1, #0
	moveq r2, #0
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	add r1, r1, r2, lsl #16
	mov r2, #4
	str r1, [r0, #0x50]
	str r2, [r0, #0x44]
	bx lr
	arm_func_end FUN_0202bc48

	arm_func_start FUN_0202bc6c
FUN_0202bc6c: ; 0x0202BC6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_0202c470
	mov r0, r5
	mov r1, r4
	bl FUN_0202cff8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202bc6c

	arm_func_start FUN_0202bc90
FUN_0202bc90: ; 0x0202BC90
	ldrsh r0, [r2, #0x10]
	add r0, r0, #1
	strh r0, [r1, #4]
	ldrsh r0, [r2, #0x14]
	strh r0, [r1, #6]
	ldr r0, [r2, #0x18]
	str r0, [r1, #8]
	bx lr
	arm_func_end FUN_0202bc90

	arm_func_start FUN_0202bcb0
FUN_0202bcb0: ; 0x0202BCB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r3, r5
	mov r2, #0x14
_0202BCC0:
	add lr, r0, r5, lsl #1
	ldrb r12, [lr, #0xbd]
	mov r4, r5, lsl #1
	cmp r12, #0
	streqh r3, [r1, r4]
	beq _0202BCEC
	ldrsb lr, [lr, #0xbc]
	mla r12, lr, r2, r0
	ldrsh r12, [r12, #0x5c]
	add r12, r12, #1
	strh r12, [r1, r4]
_0202BCEC:
	add r5, r5, #1
	cmp r5, #2
	blt _0202BCC0
	add r2, r0, #0x200
	ldrsh r2, [r2, #0x32]
	cmp r2, #0
	beq _0202BD14
	add r2, r0, #0x220
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
_0202BD14:
	add r2, r0, #0x100
	ldrsh r3, [r2, #0x8a]
	cmp r3, #0
	beq _0202BD30
	add r2, r0, #0x178
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
_0202BD30:
	ldrsh r2, [r2, #0x52]
	cmp r2, #0
	beq _0202BD48
	add r2, r0, #0x140
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
_0202BD48:
	add r2, r0, #0x1e8
	bl FUN_0202bc90
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202bcb0

	arm_func_start FUN_0202bd54
FUN_0202bd54: ; 0x0202BD54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _0202BE10 ; =0x020B5B78
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0202BD68:
	mov r0, r4, lsl #1
	ldrsh r1, [r5, r0]
	cmp r1, #0
	ble _0202BDA4
	ldr r0, [r7, #4]
	sub r1, r1, #1
	bl FUN_020860e8
	cmp r0, #0
	beq _0202BDA4
	mov r0, r4, lsl #1
	ldrsh r2, [r5, r0]
	mov r0, r6
	mov r1, r4
	sub r2, r2, #1
	bl FUN_0202cd48
_0202BDA4:
	add r4, r4, #1
	cmp r4, #2
	blt _0202BD68
	ldrsh r2, [r5, #4]
	ldr r1, _0202BE14 ; =0x0208FB28
	add r0, r6, #0x1e8
	bl STD_TSPrintf
	ldrsh r1, [r5, #4]
	ldr r0, _0202BE10 ; =0x020B5B78
	ldr r0, [r0, #4]
	sub r1, r1, #1
	bl FUN_020860e8
	cmp r0, #0
	ldrnesh r1, [r5, #4]
	addne r0, r6, #0x100
	addeq r0, r6, #0x100
	subne r1, r1, #1
	mvneq r1, #0
	strh r1, [r0, #0xf8]
	add r0, r6, #0x100
	mov r1, #1
	strh r1, [r0, #0xfa]
	ldrsh r1, [r5, #6]
	strh r1, [r0, #0xfc]
	ldr r0, [r5, #8]
	str r0, [r6, #0x200]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202BE10: .word unk_020B5B78
_0202BE14: .word unk_0208FB28
	arm_func_end FUN_0202bd54

	arm_func_start FUN_0202be18
FUN_0202be18: ; 0x0202BE18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, #0x1c
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	sub r0, r4, #0x1d
	strh r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202be18

	arm_func_start FUN_0202be40
FUN_0202be40: ; 0x0202BE40
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r6, r1
	mov r5, r2
	mov r0, r6
	mov r1, r5
	bl STD_CopyString
	ldrsh r0, [r6, #0x12]
	cmp r0, #1
	addne sp, sp, #0x80
	ldmnefd sp!, {r4, r5, r6, pc}
	add r4, sp, #0
	ldr r1, _0202BE9C ; =0x0208FB30
	mov r0, r4
	mov r2, r5
	bl STD_TSPrintf
	ldr r0, _0202BEA0 ; =0x020B5B78
	mov r1, r4
	ldr r0, [r0, #4]
	bl FUN_02086640
	strh r0, [r6, #0x10]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0202BE9C: .word unk_0208FB30
_0202BEA0: .word unk_020B5B78
	arm_func_end FUN_0202be40

	arm_func_start FUN_0202bea4
FUN_0202bea4: ; 0x0202BEA4
	stmfd sp!, {r3, lr}
	ldr r12, _0202BEBC ; =0x0208FA48
	mov r3, #0
	ldr r2, [r12, r2, lsl #2]
	bl FUN_0202bec0
	ldmfd sp!, {r3, pc}
_0202BEBC: .word unk_0208FA48
	arm_func_end FUN_0202bea4

	arm_func_start FUN_0202bec0
FUN_0202bec0: ; 0x0202BEC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	mov r9, r0
	mov r8, r1
	mov r0, r7
	mov r1, #0x2e
	mov r6, r3
	mov r4, #1
	bl strrchr
	movs r5, r0
	beq _0202BF14
	ldr r1, _0202BFB0 ; =0x0208FB38
	bl STD_CompareString
	cmp r0, #0
	beq _0202BF10
	ldr r1, _0202BFB4 ; =0x0208FB40
	mov r0, r5
	bl STD_CompareString
	cmp r0, #0
	bne _0202BF14
_0202BF10:
	mov r4, #2
_0202BF14:
	mov r0, #0x1c
	mul r5, r8, r0
	add r0, r9, r5
	add r3, r0, #0x100
	add r1, r9, #0x108
	mov r0, r9
	mov r2, r7
	add r1, r1, r5
	strh r4, [r3, #0x1a]
	bl FUN_0202be40
	cmp r4, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, r5
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x52]
	cmp r1, #1
	beq _0202BF6C
	ldrsh r2, [r0, #0x18]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BF6C:
	mov r0, #0xc
	mla r0, r8, r0, r9
	add r4, r9, #0x118
	ldrsh r1, [r0, #0xc0]
	ldrsh r0, [r4, r5]
	cmp r1, r0
	cmpne r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_0202c44c
	ldrsh r2, [r4, r5]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202BFB0: .word unk_0208FB38
_0202BFB4: .word unk_0208FB40
	arm_func_end FUN_0202bec0

	arm_func_start FUN_0202bfb8
FUN_0202bfb8: ; 0x0202BFB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	mov r9, r0
	mov r8, r1
	mov r0, r7
	mov r1, #0x2e
	mov r6, r3
	mov r4, #1
	bl strrchr
	movs r5, r0
	beq _0202C00C
	ldr r1, _0202C0A8 ; =0x0208FB48
	bl STD_CompareString
	cmp r0, #0
	beq _0202C008
	ldr r1, _0202C0AC ; =0x0208FB50
	mov r0, r5
	bl STD_CompareString
	cmp r0, #0
	bne _0202C00C
_0202C008:
	mov r4, #2
_0202C00C:
	mov r0, #0x1c
	mul r5, r8, r0
	add r0, r9, r5
	add r3, r0, #0x100
	add r1, r9, #0x1e8
	mov r0, r9
	mov r2, r7
	add r1, r1, r5
	strh r4, [r3, #0xfa]
	bl FUN_0202be40
	cmp r4, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, r5
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x52]
	cmp r1, #1
	beq _0202C064
	ldrsh r2, [r0, #0xf8]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C064:
	mov r0, #0xc
	mla r0, r8, r0, r9
	add r4, r9, #0x1f8
	ldrsh r1, [r0, #0xc0]
	ldrsh r0, [r4, r5]
	cmp r1, r0
	cmpne r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r8
	mov r2, r6
	bl FUN_0202c44c
	ldrsh r2, [r4, r5]
	mov r0, r9
	mov r1, r8
	bl FUN_0202d020
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C0A8: .word unk_0208FB48
_0202C0AC: .word unk_0208FB50
	arm_func_end FUN_0202bfb8

	arm_func_start FUN_0202c0b0
FUN_0202c0b0: ; 0x0202C0B0
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #0
	bge _0202C104
	mov r12, #0x1c
	mul r5, r1, r12
	add lr, r0, r5
	add r12, lr, #0x100
	ldrsh r4, [r12, #0x8a]
	cmp r4, #0
	beq _0202C104
	add r3, lr, #0x200
	mov r4, #1
	add r0, r0, #0x220
	ldr r1, [sp, #0x10]
	strh r4, [r3, #0x32]
	str r1, [lr, #0x238]
	ldr r1, _0202C17C ; =0x0208FB58
	add r0, r0, r5
	strh r2, [r3, #0x30]
	bl STD_TSPrintf
	ldmfd sp!, {r3, r4, r5, pc}
_0202C104:
	mov r12, #0x1c
	mul r12, r1, r12
	add r4, r0, r12
	add r1, r4, #0x100
	ldrsh r1, [r1, #0x50]
	cmp r2, r1
	bne _0202C130
	add r1, r0, #0x200
	ldrh r1, [r1, #0x5e]
	bl FUN_0202bbac
	ldmfd sp!, {r3, r4, r5, pc}
_0202C130:
	cmp r3, #0
	bge _0202C148
	ldr r1, [r4, #0x158]
	mov r3, #0
	cmp r1, #0
	movgt r3, r1
_0202C148:
	add r4, r0, r12
	str r3, [r4, #0x158]
	add r0, r0, #0x178
	add r3, r4, #0x100
	mov lr, #1
	ldr r1, [sp, #0x10]
	strh lr, [r3, #0x8a]
	str r1, [r4, #0x190]
	ldr r1, _0202C180 ; =0x0208FB60
	add r0, r0, r12
	strh r2, [r3, #0x88]
	bl STD_TSPrintf
	ldmfd sp!, {r3, r4, r5, pc}
_0202C17C: .word unk_0208FB58
_0202C180: .word unk_0208FB60
	arm_func_end FUN_0202c0b0

	arm_func_start FUN_0202c184
FUN_0202c184: ; 0x0202C184
	stmfd sp!, {r3, lr}
	ldr lr, [sp, #8]
	ldr r12, _0202C1A0 ; =0x0208FA48
	str lr, [sp]
	ldr r2, [r12, r2, lsl #2]
	bl FUN_0202c1a4
	ldmfd sp!, {r3, pc}
_0202C1A0: .word unk_0208FA48
	arm_func_end FUN_0202c184

	arm_func_start FUN_0202c1a4
FUN_0202c1a4: ; 0x0202C1A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r2
	ldrsb r2, [r5]
	mov r7, r0
	mov r6, r1
	mov r4, r3
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	mov r1, #0x2e
	mov r8, #1
	bl strrchr
	movs r9, r0
	beq _0202C204
	ldr r1, _0202C308 ; =0x0208FB68
	bl STD_CompareString
	cmp r0, #0
	beq _0202C200
	ldr r1, _0202C30C ; =0x0208FB70
	mov r0, r9
	bl STD_CompareString
	cmp r0, #0
	bne _0202C204
_0202C200:
	mov r8, #2
_0202C204:
	cmp r8, #1
	bne _0202C23C
	ldr r0, _0202C310 ; =0x020B5B78
	mov r1, r5
	ldr r0, [r0, #4]
	bl FUN_02086640
	ldr r5, [sp, #0x20]
	mov r2, r0
	mov r0, r7
	mov r1, r6
	mov r3, r4
	str r5, [sp]
	bl FUN_0202c0b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C23C:
	cmp r4, #0
	bge _0202C288
	mov r0, #0x1c
	mul r1, r6, r0
	add r3, r7, r1
	add r0, r3, #0x100
	ldrsh r0, [r0, #0x8a]
	cmp r0, #0
	beq _0202C288
	add r0, r3, #0x200
	add r4, r7, #0x220
	strh r8, [r0, #0x32]
	ldr r6, [sp, #0x20]
	mov r0, r7
	mov r2, r5
	add r1, r4, r1
	str r6, [r3, #0x238]
	bl FUN_0202be40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C288:
	mov r0, #0x1c
	mul r9, r6, r0
	add r0, r7, #0x140
	mov r1, r5
	add r0, r0, r9
	bl STD_CompareString
	cmp r0, #0
	bne _0202C2BC
	add r0, r7, #0x200
	ldrh r1, [r0, #0x5e]
	mov r0, r7
	bl FUN_0202bbac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C2BC:
	cmp r4, #0
	bge _0202C2D8
	add r0, r7, r9
	ldr r0, [r0, #0x158]
	mov r4, #0
	cmp r0, #0
	movgt r4, r0
_0202C2D8:
	add r6, r7, r9
	add r1, r7, #0x178
	str r4, [r6, #0x158]
	add r0, r6, #0x100
	ldr r3, [sp, #0x20]
	strh r8, [r0, #0x8a]
	mov r0, r7
	mov r2, r5
	add r1, r1, r9
	str r3, [r6, #0x190]
	bl FUN_0202be40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202C308: .word unk_0208FB68
_0202C30C: .word unk_0208FB70
_0202C310: .word unk_020B5B78
	arm_func_end FUN_0202c1a4

	arm_func_start FUN_0202c314
FUN_0202c314: ; 0x0202C314
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0x1c
	mul r4, r1, r12
	add r12, r0, r4
	add r12, r12, #0x100
	ldrsh lr, [r12, #0x1a]
	mov r5, r2
	cmp lr, #1
	bne _0202C34C
	str r3, [sp]
	ldrsh r2, [r12, #0x18]
	mov r3, r5
	bl FUN_0202c0b0
	ldmfd sp!, {r3, r4, r5, pc}
_0202C34C:
	add r2, r0, #0x108
	str r3, [sp]
	mov r3, r5
	add r2, r2, r4
	bl FUN_0202c1a4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202c314

	arm_func_start FUN_0202c364
FUN_0202c364: ; 0x0202C364
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, #0x1c
	mul r4, r1, r12
	add r12, r0, r4
	add r12, r12, #0x100
	ldrsh lr, [r12, #0xfa]
	mov r5, r2
	cmp lr, #1
	bne _0202C39C
	str r3, [sp]
	ldrsh r2, [r12, #0xf8]
	mov r3, r5
	bl FUN_0202c0b0
	ldmfd sp!, {r3, r4, r5, pc}
_0202C39C:
	add r2, r0, #0x1e8
	str r3, [sp]
	mov r3, r5
	add r2, r2, r4
	bl FUN_0202c1a4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202c364

	arm_func_start FUN_0202c3b4
FUN_0202c3b4: ; 0x0202C3B4
	ldr r12, _0202C3C4 ; =FUN_0202c314
	mov r3, r2
	mov r2, #0
	bx r12
_0202C3C4: .word FUN_0202c314
	arm_func_end FUN_0202c3b4

	arm_func_start FUN_0202c3c8
FUN_0202c3c8: ; 0x0202C3C8
	stmfd sp!, {r3, lr}
	ldr r12, _0202C3DC ; =0x0208FA48
	ldr r2, [r12, r2, lsl #2]
	bl FUN_0202c3e0
	ldmfd sp!, {r3, pc}
_0202C3DC: .word unk_0208FA48
	arm_func_end FUN_0202c3c8

	arm_func_start FUN_0202c3e0
FUN_0202c3e0: ; 0x0202C3E0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r0, r5
	mov r1, #0x2e
	mov r4, r3
	bl strrchr
	cmp r0, #0
	add r0, sp, #4
	bne _0202C420
	ldr r1, _0202C448 ; =0x0208FB78
	mov r2, r5
	bl STD_TSPrintf
	b _0202C428
_0202C420:
	mov r1, r5
	bl STD_CopyString
_0202C428:
	add r2, sp, #4
	mov r0, r7
	mov r1, r6
	mov r3, #0
	str r4, [sp]
	bl FUN_0202c1a4
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0202C448: .word unk_0208FB78
	arm_func_end FUN_0202c3e0

	arm_func_start FUN_0202c44c
FUN_0202c44c: ; 0x0202C44C
	mov r3, #0x1c
	mla r12, r1, r3, r0
	str r2, [r12, #0x158]
	sub r1, r3, #0x1d
	add r0, r12, #0x100
	strh r1, [r0, #0x8a]
	mov r0, #0
	str r0, [r12, #0x190]
	bx lr
	arm_func_end FUN_0202c44c

	arm_func_start FUN_0202c470
FUN_0202c470: ; 0x0202C470
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0202C480:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0202c44c
	add r4, r4, #1
	cmp r4, #2
	blt _0202C480
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202c470

	arm_func_start FUN_0202c4a0
FUN_0202c4a0: ; 0x0202C4A0
	ldr r12, _0202C4A8 ; =FUN_0202c470
	bx r12
_0202C4A8: .word FUN_0202c470
	arm_func_end FUN_0202c4a0

	arm_func_start FUN_0202c4ac
FUN_0202c4ac: ; 0x0202C4AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0x1c
	mul r3, r1, r3
	add r1, r0, #0x1b0
	add r4, r0, r3
	add r12, r1, r3
	add r7, r4, #0x178
	mov r6, #8
_0202C4CC:
	ldrb r5, [r12]
	ldrb r4, [r12, #1]
	add r12, r12, #2
	subs r6, r6, #1
	strb r4, [r7, #1]
	strb r5, [r7], #2
	bne _0202C4CC
	add r7, r0, r3
	add r12, r7, #0x100
	ldrsh r6, [r12, #0xc0]
	add r5, r0, #0x18c
	add r4, r0, #0x190
	strh r6, [r12, #0x88]
	ldrsh r6, [r12, #0xc2]
	mov lr, #1
	add r1, r1, r3
	strh r6, [r12, #0x8a]
	ldrsh r12, [r12, #0xc4]
	strh r12, [r5, r3]
	ldr r12, [r7, #0x1c8]
	str r12, [r4, r3]
	strh lr, [r5, r3]
	str r2, [r4, r3]
	bl FUN_0202be18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202c4ac

	arm_func_start FUN_0202c530
FUN_0202c530: ; 0x0202C530
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_0202C540:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_0202c4ac
	add r4, r4, #1
	cmp r4, #2
	blt _0202C540
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202c530

	arm_func_start FUN_0202c560
FUN_0202c560: ; 0x0202C560
	stmfd sp!, {r3, lr}
	mov r2, #0x1c
	mla r2, r1, r2, r0
	add r2, r2, #0x100
	ldrsh r2, [r2, #0x52]
	cmp r2, #1
	beq _0202C588
	cmp r2, #2
	beq _0202C590
	b _0202C59C
_0202C588:
	bl FUN_0202d184
	ldmfd sp!, {r3, pc}
_0202C590:
	mov r1, #0
	bl FUN_0202d6c4
	ldmfd sp!, {r3, pc}
_0202C59C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202c560

	arm_func_start FUN_0202c5a4
FUN_0202c5a4: ; 0x0202C5A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x1c
	mul r2, r4, r1
	mov r5, r0
	add r0, r5, #0x140
	add r1, r5, #0x108
	add r0, r0, r2
	add r1, r1, r2
	bl STD_CompareString
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0202c560
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202c5a4

	arm_func_start FUN_0202c5e8
FUN_0202c5e8: ; 0x0202C5E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, #0
_0202C5F4:
	mov r0, #0x1c
	mul r1, r6, r0
	add r5, r4, r1
	add r0, r5, #0x100
	ldrsh r2, [r0, #0x8a]
	cmp r2, #0
	beq _0202C8D4
	ldrsh r0, [r0, #0x50]
	cmp r0, #0
	blt _0202C6A4
	mov r0, #0xc
	mla r0, r6, r0, r4
	ldrsb r2, [r0, #0xc3]
	mov r0, #0x14
	mla r0, r2, r0, r4
	ldrb r0, [r0, #0x5e]
	cmp r0, #1
	bne _0202C648
	mov r0, #1
	bl OS_Sleep
	b _0202C8D4
_0202C648:
	add r12, r5, #0x140
	add r7, r5, #0x1b0
	mov r3, #8
_0202C654:
	ldrb r2, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r0, [r7, #1]
	strb r2, [r7], #2
	mov r2, #0
	bne _0202C654
	add r0, r5, #0x100
	ldrsh r7, [r0, #0x50]
	mvn r3, #0
	strh r7, [r0, #0xc0]
	ldrsh r7, [r0, #0x52]
	strh r7, [r0, #0xc2]
	ldrsh r7, [r0, #0x54]
	strh r7, [r0, #0xc4]
	ldr r7, [r5, #0x158]
	str r7, [r5, #0x1c8]
	strh r3, [r0, #0x50]
	strb r2, [r5, #0x140]
_0202C6A4:
	add r0, r5, #0x100
	ldrsh r0, [r0, #0x52]
	cmp r0, #1
	bne _0202C6F0
	mov r2, #0xc
	mla r2, r6, r2, r4
	ldrh r2, [r2, #0xc6]
	tst r2, #2
	beq _0202C6E4
	ldr r2, [r5, #0x158]
	cmp r2, #0
	blt _0202C8D4
	mov r0, r4
	mov r1, r6
	bl FUN_0202d1ec
	b _0202C8D4
_0202C6E4:
	tst r2, #4
	bne _0202C8D4
	b _0202C728
_0202C6F0:
	cmp r0, #2
	bne _0202C728
	ldrh r2, [r4, #0xfe]
	tst r2, #2
	beq _0202C720
	ldr r2, [r5, #0x158]
	cmp r2, #0
	blt _0202C8D4
	mov r0, r4
	mov r1, #0
	bl FUN_0202d774
	b _0202C8D4
_0202C720:
	tst r2, #4
	bne _0202C8D4
_0202C728:
	add r2, r5, #0x100
	ldrsh r3, [r2, #0x8a]
	cmn r3, #1
	beq _0202C7CC
	cmp r3, #1
	beq _0202C74C
	cmp r3, #2
	beq _0202C794
	b _0202C7E0
_0202C74C:
	mov r0, #0x1c
	mla r7, r6, r0, r4
	add r0, r7, #0x100
	ldrsh r2, [r0, #0x88]
	mov r0, r4
	mov r1, r6
	bl FUN_0202d020
	add r0, r7, #0x100
	ldrsh r0, [r0, #0x8c]
	ldr r2, [r5, #0x190]
	mov r1, r6
	cmp r0, #0
	mov r0, r4
	beq _0202C78C
	bl FUN_0202d148
	b _0202C7F0
_0202C78C:
	bl FUN_0202d10c
	b _0202C7F0
_0202C794:
	ldrsh r0, [r2, #0x8c]
	cmp r0, #0
	beq _0202C7B4
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl FUN_0202d5d4
	b _0202C7F0
_0202C7B4:
	add r2, r4, #0x178
	mov r0, r4
	add r2, r2, r1
	mov r1, #0
	bl FUN_0202d594
	b _0202C7F0
_0202C7CC:
	mov r1, #0x1c
	mla r1, r6, r1, r4
	add r1, r1, #0x100
	strh r0, [r1, #0x8a]
	b _0202C7F0
_0202C7E0:
	add r2, r4, #0x178
	mov r0, r4
	add r1, r2, r1
	bl FUN_0202be18
_0202C7F0:
	mov r0, #0x1c
	mul r7, r6, r0
	add r5, r4, r7
	add r12, r5, #0x178
	add r3, r5, #0x140
	mov r2, #8
_0202C808:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0202C808
	add r2, r5, #0x100
	ldrsh r3, [r2, #0x88]
	add r1, r4, #0x178
	mov r0, r4
	strh r3, [r2, #0x50]
	ldrsh r3, [r2, #0x8a]
	add r1, r1, r7
	strh r3, [r2, #0x52]
	ldrsh r3, [r2, #0x8c]
	strh r3, [r2, #0x54]
	ldr r2, [r5, #0x190]
	str r2, [r5, #0x158]
	bl FUN_0202be18
	add r0, r5, #0x200
	ldrsh r0, [r0, #0x32]
	cmp r0, #0
	beq _0202C8D4
	add r2, r4, r7
	mvn r0, #0
	str r0, [r2, #0x158]
	add r12, r2, #0x220
	add r5, r2, #0x178
	mov r3, #8
_0202C880:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _0202C880
	add r3, r2, #0x200
	ldrsh r0, [r3, #0x30]
	add r5, r2, #0x100
	add r1, r4, #0x220
	strh r0, [r5, #0x88]
	ldrsh r12, [r3, #0x32]
	mov r0, r4
	add r1, r1, r7
	strh r12, [r5, #0x8a]
	ldrsh r3, [r3, #0x34]
	strh r3, [r5, #0x8c]
	ldr r3, [r2, #0x238]
	str r3, [r2, #0x190]
	bl FUN_0202be18
_0202C8D4:
	add r6, r6, #1
	cmp r6, #2
	blt _0202C5F4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202c5e8

	arm_func_start FUN_0202c8e4
FUN_0202c8e4: ; 0x0202C8E4
	stmfd sp!, {r4, lr}
	mov r2, #0x14
	mov r4, #0
	mov r3, r2
_0202C8F4:
	cmp r1, #4
	cmpne r1, #5
	beq _0202C92C
	mla lr, r4, r3, r0
	ldrb r12, [lr, #0x5f]
	cmp r12, #4
	cmpne r12, #5
	beq _0202C944
	ldrb r12, [lr, #0x5e]
	cmp r12, #0
	bne _0202C944
	mov r0, r4, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, pc}
_0202C92C:
	mla r12, r4, r2, r0
	ldrb r12, [r12, #0x5f]
	cmp r1, r12
	moveq r0, r4, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqfd sp!, {r4, pc}
_0202C944:
	add r4, r4, #1
	cmp r4, #5
	blt _0202C8F4
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202c8e4

	arm_func_start FUN_0202c958
FUN_0202c958: ; 0x0202C958
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r10, r0
	mov r9, r1
	mov r8, r2
	bl FUN_0202c8e4
	movs r6, r0
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x14
	mul r7, r6, r0
	add r5, r10, #0x5e
	ldrb r0, [r5, r7]
	cmp r0, #0
	beq _0202C9B4
	cmp r0, #1
	beq _0202C9A4
	cmp r0, #2
	bne _0202C9F4
_0202C9A4:
	add r0, r10, r7
	ldrsh r0, [r0, #0x5c]
	cmp r8, r0
	beq _0202C9F4
_0202C9B4:
	add r0, r10, r7
	add r1, r10, #0x58
	mov r4, #0
	strh r8, [r0, #0x5c]
	mov r0, r8
	mov r2, r4
	mov r3, r9
	add r1, r1, r7
	str r4, [sp]
	bl FUN_0202b330
	cmp r0, #0
	addle sp, sp, #4
	suble r0, r4, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #2
	strb r0, [r5, r7]
_0202C9F4:
	add r2, r10, r7
	mov r0, r10
	mov r1, r6
	strb r9, [r2, #0x5f]
	bl FUN_0202cc34
	mov r0, r6
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0202c958

	arm_func_start FUN_0202ca14
FUN_0202ca14: ; 0x0202CA14
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0x14
	mul r6, r1, r2
	mov r7, r0
	add r5, r7, #0x5e
	ldrb r0, [r5, r6]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #3
	bne _0202CAD4
	add r1, r7, r6
	ldrb r0, [r1, #0x5f]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0202CAD4
_0202CA50: ; jump table
	b _0202CAD4 ; case 0
	b _0202CA68 ; case 1
	b _0202CA7C ; case 2
	b _0202CAB8 ; case 3
	b _0202CA68 ; case 4
	b _0202CAB8 ; case 5
_0202CA68:
	ldr r0, [r1, #0x64]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseBank_UnloadById
	b _0202CAD4
_0202CA7C:
	add r4, r7, #0x64
	ldr r0, [r4, r6]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseSe_StopSeq
	add r0, r7, r6
	ldr r0, [r0, #0x68]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseBank_UnloadById
	ldr r0, [r4, r6]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseSe_Unload
	b _0202CAD4
_0202CAB8:
	ldr r0, [r1, #0x68]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseBank_UnloadById
	add r0, r7, r6
	ldr r0, [r0, #0x64]
	bl DseBgm_Unload
_0202CAD4:
	add r1, r7, #0x5f
	ldrb r0, [r1, r6]
	cmp r0, #4
	cmpne r0, #5
	beq _0202CB48
	ldrb r0, [r5, r6]
	cmp r0, #1
	bne _0202CB14
	ldr r0, [r7]
	add r1, r7, r6
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	cmp r0, #0
	beq _0202CB14
	mov r2, #0
	bl FUN_0202f678
_0202CB14:
	add r5, r7, #0x58
	ldr r0, [r7]
	ldr r1, [r5, r6]
	bl FUN_0202e1c0
	mov r4, #0x14
	mov r2, r4
	add r0, r5, r6
	mov r1, #0
	bl MI_CpuFill8
	sub r1, r4, #0x15
	add r0, r7, r6
	strh r1, [r0, #0x5c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202CB48:
	mov r0, #2
	strb r0, [r5, r6]
	ldrb r0, [r1, r6]
	cmp r0, #4
	moveq r0, #0
	streq r0, [r7, #0x6c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202ca14

	arm_func_start FUN_0202cb64
FUN_0202cb64: ; 0x0202CB64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl FUN_0202c8e4
	movs r5, r0
	addmi sp, sp, #4
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x14
	mul r6, r5, r0
	add r4, r9, #0x5e
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _0202CBDC
	cmp r0, #1
	beq _0202CBB0
	cmp r0, #2
	bne _0202CC20
_0202CBB0:
	add r1, r9, r6
	ldrsh r0, [r1, #0x5c]
	cmp r7, r0
	beq _0202CC20
	ldr r0, [r9]
	ldr r1, [r1, #0x58]
	ldr r0, [r0]
	cmp r0, #0
	beq _0202CBDC
	mov r2, #0
	bl FUN_0202f678
_0202CBDC:
	add lr, r9, r6
	add r1, r9, #0x58
	mov r10, #1
	add r12, r9, #0x60
	mov r0, r7
	strh r7, [lr, #0x5c]
	add r7, r12, r6
	mov r2, r10
	mov r3, r8
	add r1, r1, r6
	str r7, [sp]
	bl FUN_0202b330
	cmp r0, #0
	addle sp, sp, #4
	suble r0, r10, #2
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	strb r10, [r4, r6]
_0202CC20:
	add r1, r9, r6
	mov r0, r5
	strb r8, [r1, #0x5f]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0202cb64

	arm_func_start FUN_0202cc34
FUN_0202cc34: ; 0x0202CC34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r2, #0x14
	mul r6, r1, r2
	mov r7, r0
	add r4, r7, #0x5e
	ldrb r0, [r4, r6]
	cmp r0, #1
	beq _0202CC68
	cmp r0, #2
	beq _0202CC9C
	cmp r0, #3
	beq _0202CC8C
	b _0202CC94
_0202CC68:
	add r0, r7, r6
	ldrsb r0, [r0, #0x60]
	bl FUN_02086480
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	strb r0, [r4, r6]
	b _0202CC9C
_0202CC8C:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202CC94:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202CC9C:
	add r2, r7, r6
	ldrb r0, [r2, #0x5f]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0202CD38
_0202CCB0: ; jump table
	b _0202CD38 ; case 0
	b _0202CCC8 ; case 1
	b _0202CCE4 ; case 2
	b _0202CCFC ; case 3
	b _0202CCC8 ; case 4
	b _0202CCFC ; case 5
_0202CCC8:
	mov r1, #0
	ldr r0, [r2, #0x58]
	mov r2, r1
	bl DseSwd_LoadBank
	add r1, r7, r6
	str r0, [r1, #0x64]
	b _0202CD38
_0202CCE4:
	add r8, r7, #0x58
	ldr r5, [r8, r6]
	ldr r0, [r5]
	add r0, r5, r0
	bl DseSe_Load
	b _0202CD10
_0202CCFC:
	add r8, r7, #0x58
	ldr r5, [r8, r6]
	ldr r0, [r5]
	add r0, r5, r0
	bl DseBgm_Load
_0202CD10:
	add r1, r7, r6
	str r0, [r1, #0x64]
	ldr r3, [r8, r6]
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, r1
	add r0, r3, r0
	bl DseSwd_LoadBank
	add r1, r7, r6
	str r0, [r1, #0x68]
_0202CD38:
	mov r0, #3
	strb r0, [r4, r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0202cc34

	arm_func_start FUN_0202cd48
FUN_0202cd48: ; 0x0202CD48
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #2
	ldr r0, _0202CDD0 ; =0x020B5B78
	movge r5, #1
	mov r4, r2
	str r5, [r0]
	add r2, r6, r5, lsl #1
	ldrsb r1, [r2, #0xbc]
	mov r0, #0x14
	mla r0, r1, r0, r6
	ldrsh r0, [r0, #0x5c]
	cmp r4, r0
	beq _0202CDC0
	ldrb r0, [r2, #0xbd]
	cmp r0, #0
	beq _0202CD98
	mov r0, r6
	bl FUN_0202ca14
_0202CD98:
	mov r0, r6
	mov r2, r4
	mov r1, #2
	bl FUN_0202c958
	add r1, r6, r5, lsl #1
	strb r0, [r1, #0xbc]
	ldrsb r0, [r1, #0xbc]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
_0202CDC0:
	add r1, r6, r5, lsl #1
	mov r0, #1
	strb r0, [r1, #0xbd]
	ldmfd sp!, {r4, r5, r6, pc}
_0202CDD0: .word unk_020B5B78
	arm_func_end FUN_0202cd48

	arm_func_start FUN_0202cdd4
FUN_0202cdd4: ; 0x0202CDD4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	add r4, sp, #0
	mov r6, r0
	ldr r1, _0202CE1C ; =0x0208FB80
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0202CE20 ; =0x020B5B78
	mov r1, r4
	ldr r0, [r0, #4]
	bl FUN_02086640
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl FUN_0202cd48
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0202CE1C: .word unk_0208FB80
_0202CE20: .word unk_020B5B78
	arm_func_end FUN_0202cdd4

	arm_func_start FUN_0202ce24
FUN_0202ce24: ; 0x0202CE24
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #2
	ldr r0, _0202CEAC ; =0x020B5B78
	movge r5, #1
	mov r4, r2
	str r5, [r0]
	add r2, r6, r5, lsl #1
	ldrsb r1, [r2, #0xbc]
	mov r0, #0x14
	mla r0, r1, r0, r6
	ldrsh r0, [r0, #0x5c]
	cmp r4, r0
	beq _0202CE9C
	ldrb r0, [r2, #0xbd]
	cmp r0, #0
	beq _0202CE74
	mov r0, r6
	bl FUN_0202ca14
_0202CE74:
	mov r0, r6
	mov r2, r4
	mov r1, #2
	bl FUN_0202cb64
	add r1, r6, r5, lsl #1
	strb r0, [r1, #0xbc]
	ldrsb r0, [r1, #0xbc]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
_0202CE9C:
	add r1, r6, r5, lsl #1
	mov r0, #1
	strb r0, [r1, #0xbd]
	ldmfd sp!, {r4, r5, r6, pc}
_0202CEAC: .word unk_020B5B78
	arm_func_end FUN_0202ce24

	arm_func_start FUN_0202ceb0
FUN_0202ceb0: ; 0x0202CEB0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x80
	mov r5, r1
	add r4, sp, #0
	mov r6, r0
	ldr r1, _0202CEF8 ; =0x0208FB88
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0202CEFC ; =0x020B5B78
	mov r1, r4
	ldr r0, [r0, #4]
	bl FUN_02086640
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl FUN_0202ce24
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, pc}
_0202CEF8: .word unk_0208FB88
_0202CEFC: .word unk_020B5B78
	arm_func_end FUN_0202ceb0

	arm_func_start FUN_0202cf00
FUN_0202cf00: ; 0x0202CF00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	cmp r4, #2
	mov r5, r0
	movge r4, #1
	add r1, r5, r4, lsl #1
	ldrb r0, [r1, #0xbd]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsb r1, [r1, #0xbc]
	mov r0, r5
	bl FUN_0202ca14
	add r0, r5, r4, lsl #1
	mov r1, #0
	strb r1, [r0, #0xbd]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202cf00

	arm_func_start FUN_0202cf40
FUN_0202cf40: ; 0x0202CF40
	mov r2, r1, asr #0xe
	cmp r2, #2
	movge r2, #1
	add r2, r0, r2, lsl #1
	ldrsb r3, [r2, #0xbc]
	mov r2, #0x14
	mov r1, r1, lsl #0x12
	mla r0, r3, r2, r0
	ldr r0, [r0, #0x64]
	add r0, r0, r1, lsr #2
	bx lr
	arm_func_end FUN_0202cf40

	arm_func_start FUN_0202cf6c
FUN_0202cf6c: ; 0x0202CF6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r2, r4, #0x200
	ldrh r12, [r2, #0x5c]
	ldrh r3, [r2, #0x60]
	mov r5, #0
	ldrh lr, [r2, #0x58]
	mul r2, r12, r3
	mul r2, lr, r2
	mov r3, r2, asr #7
	ldr r12, _0202CFD4 ; =0x10624DD3
	mov r2, r3, lsr #0x1f
	smull r3, lr, r12, r3
	add lr, r2, lr, asr #6
	mov r3, lr, lsl #0x18
	mov r6, r1
	mov r2, r5
	mov r1, r3, asr #0x18
	bl FUN_0202bc48
	mov r0, r4
	mov r1, r6
	bl FUN_0202cf40
	mov r1, r5
	add r2, r4, #0x44
	bl DseSe_Play
	ldmfd sp!, {r4, r5, r6, pc}
_0202CFD4: .word 0x10624DD3
	arm_func_end FUN_0202cf6c

	arm_func_start FUN_0202cfd8
FUN_0202cfd8: ; 0x0202CFD8
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_0202cf40
	mov r1, r4, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, #0
	bl DseSe_Stop
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202cfd8

	arm_func_start FUN_0202cff8
FUN_0202cff8: ; 0x0202CFF8
	mov r0, r1, lsl #0x10
	ldr r12, _0202D008 ; =DseSe_StopAll
	mov r0, r0, lsr #0x10
	bx r12
_0202D008: .word DseSe_StopAll
	arm_func_end FUN_0202cff8

	arm_func_start FUN_0202d00c
FUN_0202d00c: ; 0x0202D00C
	stmfd sp!, {r3, lr}
	bl FUN_0202cf40
	mov r1, #0
	bl DseSe_HasPlayingInstances
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202d00c

	arm_func_start FUN_0202d020
FUN_0202d020: ; 0x0202D020
	mov r3, #0xc
	mul r12, r1, r3
	add r3, r0, #0xc0
	ldrsh r1, [r3, r12]
	cmp r2, r1
	bxeq lr
	strh r2, [r3, r12]
	add r1, r0, #0xc4
	ldrh r0, [r1, r12]
	cmp r2, #0
	orr r0, r0, #0xc
	strh r0, [r1, r12]
	ldrgeh r0, [r1, r12]
	orrge r0, r0, #0x10
	strgeh r0, [r1, r12]
	bx lr
	arm_func_end FUN_0202d020

	arm_func_start FUN_0202d060
FUN_0202d060: ; 0x0202D060
	mov r2, #0xc
	mla r2, r1, r2, r0
	ldrh r0, [r2, #0xc4]
	tst r0, #0x10
	movne r0, #0
	bxne lr
	ldrh r0, [r2, #0xc6]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0202d060

	arm_func_start FUN_0202d08c
FUN_0202d08c: ; 0x0202D08C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0xc
	mul r5, r1, r2
	mov r6, r0
	add r4, r6, #0xc6
	ldrh r0, [r4, r5]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, r5
	ldrsb r1, [r0, #0xc3]
	mov r0, #0x14
	mla r0, r1, r0, r6
	ldr r7, [r0, #0x64]
	mov r0, r7
	bl DseBgm_IsPlaying
	cmp r0, #0
	ble _0202D0DC
	mov r0, r7
	mov r1, #0
	bl DseBgm_Stop
_0202D0DC:
	add r7, r6, #0xc3
	ldrsb r1, [r7, r5]
	mov r0, r6
	bl FUN_0202ca14
	mvn r0, #0
	strb r0, [r7, r5]
	ldrh r1, [r4, r5]
	ldr r0, _0202D108 ; =0x0000FFFC
	and r0, r1, r0
	strh r0, [r4, r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202D108: .word 0x0000FFFC
	arm_func_end FUN_0202d08c

	arm_func_start FUN_0202d10c
FUN_0202d10c: ; 0x0202D10C
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul lr, r1, r3
	add r12, r0, #0xc4
	ldrh r3, [r12, lr]
	ldr r1, _0202D144 ; =0x0000FFFB
	add r0, r0, lr
	and r1, r3, r1
	strh r1, [r12, lr]
	ldrh r1, [r12, lr]
	orr r1, r1, #2
	strh r1, [r12, lr]
	str r2, [r0, #0xc8]
	ldmfd sp!, {r3, pc}
_0202D144: .word 0x0000FFFB
	arm_func_end FUN_0202d10c

	arm_func_start FUN_0202d148
FUN_0202d148: ; 0x0202D148
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul lr, r1, r3
	add r12, r0, #0xc4
	ldrh r3, [r12, lr]
	ldr r1, _0202D180 ; =0x0000FFFB
	add r0, r0, lr
	and r1, r3, r1
	strh r1, [r12, lr]
	ldrh r1, [r12, lr]
	orr r1, r1, #0x82
	strh r1, [r12, lr]
	str r2, [r0, #0xc8]
	ldmfd sp!, {r3, pc}
_0202D180: .word 0x0000FFFB
	arm_func_end FUN_0202d148

	arm_func_start FUN_0202d184
FUN_0202d184: ; 0x0202D184
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r5, r1, r2
	add r4, r0, #0xc6
	ldrh r1, [r4, r5]
	tst r1, #4
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r1, #2
	beq _0202D1D0
	add r1, r0, r5
	ldrsb r2, [r1, #0xc3]
	mov r1, #0x14
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x64]
	bl DseBgm_IsPlaying
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
_0202D1D0:
	ldrh r2, [r4, r5]
	ldr r1, _0202D1E8 ; =0x0000FFFD
	mov r0, #0
	and r1, r2, r1
	strh r1, [r4, r5]
	ldmfd sp!, {r3, r4, r5, pc}
_0202D1E8: .word 0x0000FFFD
	arm_func_end FUN_0202d184

	arm_func_start FUN_0202d1ec
FUN_0202d1ec: ; 0x0202D1EC
	stmfd sp!, {r3, lr}
	mov r3, #0xc
	mul lr, r1, r3
	add r12, r0, #0xc4
	ldrh r3, [r12, lr]
	ldr r1, _0202D224 ; =0x0000FF7D
	add r0, r0, lr
	and r1, r3, r1
	strh r1, [r12, lr]
	ldrh r1, [r12, lr]
	orr r1, r1, #4
	strh r1, [r12, lr]
	str r2, [r0, #0xc8]
	ldmfd sp!, {r3, pc}
_0202D224: .word 0x0000FF7D
	arm_func_end FUN_0202d1ec

	arm_func_start FUN_0202d228
FUN_0202d228: ; 0x0202D228
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r0, r10, #0x200
	str r0, [sp, #0xc]
	ldr r0, _0202D4BC ; =0x0000FFEF
	mov r7, #0
	add r4, r0, #0xc
	add r5, r0, #0xe
	add r0, r0, #0xf
	str r0, [sp, #4]
	ldr r0, _0202D4BC ; =0x0000FFEF
	mov r11, r4
	add r0, r0, #8
	str r0, [sp]
	ldr r0, _0202D4BC ; =0x0000FFEF
	add r0, r0, #0xf
	str r0, [sp, #8]
	ldr r0, _0202D4BC ; =0x0000FFEF
	sub r0, r0, #0x72
	str r0, [sp, #0x10]
_0202D27C:
	mov r0, #0xc
	mla r9, r7, r0, r10
	ldrsb r2, [r9, #0xc3]
	mov r0, #0x14
	ldrh r1, [r9, #0xc4]
	mla r0, r2, r0, r10
	tst r1, #4
	ldr r6, [r0, #0x64]
	beq _0202D2E8
	mov r0, r6
	bl DseBgm_IsPlaying
	cmp r0, #0
	ble _0202D2D4
	ldr r1, [r9, #0xc8]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl DseBgm_Stop
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #4
	and r0, r0, r5
	strh r0, [r9, #0xc6]
_0202D2D4:
	mov r0, #0
	str r0, [r9, #0xc8]
	ldrh r0, [r9, #0xc4]
	and r0, r0, r4
	strh r0, [r9, #0xc4]
_0202D2E8:
	ldrh r0, [r9, #0xc6]
	tst r0, #4
	beq _0202D314
	mov r0, r6
	bl DseBgm_IsPlaying
	cmp r0, #0
	addgt sp, sp, #0x14
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r9, #0xc6]
	and r0, r0, r11
	strh r0, [r9, #0xc6]
_0202D314:
	ldrh r0, [r9, #0xc4]
	tst r0, #8
	beq _0202D358
	ldrh r0, [r9, #0xc6]
	tst r0, #1
	beq _0202D338
	mov r0, r10
	mov r1, r7
	bl FUN_0202d08c
_0202D338:
	ldrh r1, [r9, #0xc6]
	ldr r0, [sp, #4]
	and r0, r1, r0
	strh r0, [r9, #0xc6]
	ldrh r1, [r9, #0xc4]
	ldr r0, [sp]
	and r0, r1, r0
	strh r0, [r9, #0xc4]
_0202D358:
	ldrh r1, [r9, #0xc4]
	tst r1, #0x10
	beq _0202D3B8
	ldr r0, _0202D4BC ; =0x0000FFEF
	cmp r7, #0
	and r0, r1, r0
	strh r0, [r9, #0xc4]
	mov r0, r10
	bne _0202D384
	mov r1, #5
	b _0202D388
_0202D384:
	mov r1, #3
_0202D388:
	ldrsh r2, [r9, #0xc0]
	bl FUN_0202cb64
	strb r0, [r9, #0xc3]
	ldrsb r0, [r9, #0xc3]
	cmp r0, #0
	blt _0202D4A8
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #0x10
	strh r0, [r9, #0xc6]
	ldrh r0, [r9, #0xc4]
	orr r0, r0, #1
	strh r0, [r9, #0xc4]
_0202D3B8:
	ldrh r0, [r9, #0xc4]
	tst r0, #1
	beq _0202D404
	mov r0, r10
	ldrsb r1, [r9, #0xc3]
	bl FUN_0202cc34
	cmp r0, #0
	beq _0202D4A8
	ldrsb r2, [r9, #0xc3]
	mov r0, #0x14
	ldrh r1, [r9, #0xc4]
	mla r0, r2, r0, r10
	ldr r6, [r0, #0x64]
	ldr r0, [sp, #8]
	and r0, r1, r0
	strh r0, [r9, #0xc4]
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #1
	strh r0, [r9, #0xc6]
_0202D404:
	ldrh r1, [r9, #0xc4]
	tst r1, #2
	beq _0202D4A8
	ldrh r0, [r9, #0xc6]
	tst r0, #1
	beq _0202D498
	tst r0, #2
	bne _0202D484
	tst r1, #0x80
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldrh r3, [r1, #0x58]
	ldrh r12, [r2, #0x5e]
	ldrh r1, [r1, #0x5a]
	mov r8, #1
	ldr r2, [r9, #0xc8]
	mul r12, r1, r12
	mul r1, r3, r12
	mov r3, r1, asr #7
	ldr r1, _0202D4C0 ; =0x10624DD3
	movne r8, #0
	smull lr, r12, r1, r3
	mov r1, r3, lsr #0x1f
	add r12, r1, r12, asr #6
	mov r1, r12, lsl #0x18
	mov r0, r10
	mov r1, r1, asr #0x18
	bl FUN_0202bc48
	mov r0, r6
	mov r2, r8
	add r1, r10, #0x44
	bl DseBgm_Resume
_0202D484:
	mov r0, #0
	str r0, [r9, #0xc8]
	ldrh r0, [r9, #0xc6]
	orr r0, r0, #2
	strh r0, [r9, #0xc6]
_0202D498:
	ldrh r1, [r9, #0xc4]
	ldr r0, [sp, #0x10]
	and r0, r1, r0
	strh r0, [r9, #0xc4]
_0202D4A8:
	add r7, r7, #1
	cmp r7, #2
	blt _0202D27C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202D4BC: .word 0x0000FFEF
_0202D4C0: .word 0x10624DD3
	arm_func_end FUN_0202d228

	arm_func_start FUN_0202d4c4
FUN_0202d4c4: ; 0x0202D4C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r7, r1
	add r4, sp, #8
	mov r8, r0
	ldr r1, _0202D574 ; =0x0208FB90
	mov r6, r2
	mov r0, r4
	mov r5, r3
	bl STD_CopyString
	mov r0, r4
	mov r1, r6
	bl STD_ConcatenateString
	add r0, sp, #0
	mov r1, r4
	bl FS_ConvertPathToFileID
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x30
	mul r4, r7, r0
	add r0, r8, #0xd8
	mov r1, r6
	add r0, r0, r4
	bl STD_CompareString
	cmp r0, #0
	beq _0202D540
	mov r0, r8
	mov r1, r7
	bl FUN_0202d578
_0202D540:
	add r0, r8, #0xd8
	mov r1, r6
	add r0, r0, r4
	bl STD_CopyString
	add r0, r8, r4
	strb r5, [r0, #0xf9]
	add r2, r8, #0xfc
	ldrh r1, [r2, r4]
	mov r0, #1
	orr r1, r1, #1
	strh r1, [r2, r4]
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202D574: .word unk_0208FB90
	arm_func_end FUN_0202d4c4

	arm_func_start FUN_0202d578
FUN_0202d578: ; 0x0202D578
	mov r2, #0x30
	mul r2, r1, r2
	add r1, r0, #0xfc
	ldrh r0, [r1, r2]
	orr r0, r0, #0xc
	strh r0, [r1, r2]
	bx lr
	arm_func_end FUN_0202d578

	arm_func_start FUN_0202d594
FUN_0202d594: ; 0x0202D594
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	beq _0202D5B8
	mov r3, #0
	bl FUN_0202d4c4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0202D5B8:
	mov r0, #0x30
	mul r1, r4, r0
	add r2, r5, #0xfc
	ldrh r0, [r2, r1]
	orr r0, r0, #2
	strh r0, [r2, r1]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202d594

	arm_func_start FUN_0202d5d4
FUN_0202d5d4: ; 0x0202D5D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0202D6B8 ; =0x0209A8A0
	mov r8, r0
	mov r0, r6
	mov r7, r2
	mov r4, r1
	bl FUN_0202ec30
	mov r5, r0
	mov r0, #0x30
	cmp r7, #0
	mul r7, r4, r0
	ble _0202D690
	add r4, r8, #0x100
	ldr r0, [r4, r7]
	mov r1, #0x3e8
	bl FUN_0207d690
	ldr r1, _0202D6BC ; =0x00022140
	mov r2, #0xe8000000
	cmp r0, r1
	ldr r1, [r6, #0x1a0]
	ldr r0, [r6, #0x198]
	mov r3, #3
	add r6, r1, r0
	umull r0, r1, r6, r2
	bge _0202D65C
	mla r1, r6, r3, r1
	mov r3, r6, asr #0x1f
	mla r1, r3, r2, r1
	mov r2, r5
	mov r3, #0
	bl _ull_div
	mov r1, r0
	ldr r0, [r4, r7]
	b _0202D69C
_0202D65C:
	mla r1, r6, r3, r1
	mov r3, r6, asr #0x1f
	mla r1, r3, r2, r1
	mov r2, r5
	mov r3, #0
	bl _ull_div
	ldr r5, _0202D6C0 ; =0x88888889
	mov r2, r0, lsr #0x1f
	smull r3, r1, r5, r0
	add r1, r0, r1
	ldr r0, [r4, r7]
	add r1, r2, r1, asr #4
	b _0202D69C
_0202D690:
	add r0, r8, r7
	ldr r0, [r0, #0x100]
	mov r1, #0
_0202D69C:
	bl FUN_0207d4c0
	add r2, r8, #0xfc
	ldrh r1, [r2, r7]
	mov r0, #1
	orr r1, r1, #0x82
	strh r1, [r2, r7]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202D6B8: .word unk_0209A8A0
_0202D6BC: .word 0x00022140
_0202D6C0: .word 0x88888889
	arm_func_end FUN_0202d5d4

	arm_func_start FUN_0202d6c4
FUN_0202d6c4: ; 0x0202D6C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x30
	mul r4, r1, r2
	add r2, r0, r4
	ldrh r1, [r2, #0xfc]
	tst r1, #4
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r0, #0xfe
	ldrh r0, [r5, r4]
	tst r0, #2
	beq _0202D708
	ldr r0, [r2, #0x100]
	bl FUN_0207cf94
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
_0202D708:
	ldrh r2, [r5, r4]
	ldr r1, _0202D720 ; =0x0000FFFD
	mov r0, #0
	and r1, r2, r1
	strh r1, [r5, r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0202D720: .word 0x0000FFFD
	arm_func_end FUN_0202d6c4

	arm_func_start FUN_0202d724
FUN_0202d724: ; 0x0202D724
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, #0
	add r5, r8, #0xd8
	mov r4, #0x30
_0202D73C:
	mla r0, r6, r4, r5
	mov r1, r7
	bl STD_CompareString
	cmp r0, #0
	bne _0202D760
	mov r0, r8
	mov r1, r6
	bl FUN_0202d6c4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0202D760:
	add r6, r6, #1
	cmp r6, #1
	blt _0202D73C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0202d724

	arm_func_start FUN_0202d774
FUN_0202d774: ; 0x0202D774
	mov r3, #0x30
	mul r3, r1, r3
	add r1, r0, r3
	str r2, [r1, #0x104]
	add r1, r0, #0xfc
	ldrh r0, [r1, r3]
	orr r0, r0, #4
	strh r0, [r1, r3]
	bx lr
	arm_func_end FUN_0202d774

	arm_func_start FUN_0202d798
FUN_0202d798: ; 0x0202D798
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
	add r5, r9, #0xd8
	mov r4, #0x30
_0202D7B4:
	mla r0, r6, r4, r5
	mov r1, r8
	bl STD_CompareString
	cmp r0, #0
	bne _0202D7DC
	mov r0, r9
	mov r1, r6
	mov r2, r7
	bl FUN_0202d774
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202D7DC:
	add r6, r6, #1
	cmp r6, #1
	blt _0202D7B4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0202d798

	arm_func_start FUN_0202d7ec
FUN_0202d7ec: ; 0x0202D7EC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x5c
	mov r6, r0
	ldr r0, _0202DB88 ; =0x0000FFFB
	mov r9, #0
	add r0, r0, #2
	str r0, [sp]
	ldr r0, _0202DB88 ; =0x0000FFFB
	add r11, r6, #0xd8
	sub r0, r0, #0x1d
	str r0, [sp, #8]
	ldr r0, _0202DB88 ; =0x0000FFFB
	add r7, sp, #0x1c
	sub r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _0202DB88 ; =0x0000FFFB
	sub r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _0202DB88 ; =0x0000FFFB
	add r0, r0, #3
	str r0, [sp, #0x10]
	add r0, r6, #0x200
	str r0, [sp, #0x14]
	ldr r0, _0202DB88 ; =0x0000FFFB
	sub r0, r0, #0x7e
	str r0, [sp, #0x18]
_0202D854:
	mov r0, #0x30
	mul r4, r9, r0
	add r10, r6, r4
	ldrsb r1, [r10, #0xf8]
	ldr r8, [r10, #0x100]
	cmp r1, #0
	beq _0202D894
	ldr r0, _0202DB8C ; =0x0209A110
	ldr r0, [r0]
	mov r0, r0, lsl #0x18
	sub r0, r1, r0, asr #24
	strb r0, [r10, #0xf8]
	ldrsb r0, [r10, #0xf8]
	cmp r0, #0
	movlt r0, #0
	strltb r0, [r10, #0xf8]
_0202D894:
	ldrh r1, [r10, #0xfc]
	tst r1, #4
	beq _0202D8F0
	ldr r0, _0202DB88 ; =0x0000FFFB
	and r0, r1, r0
	strh r0, [r10, #0xfc]
	mov r0, r8
	bl FUN_0207cf94
	cmp r0, #0
	ble _0202D8D0
	mov r0, r8
	ldr r1, [r10, #0x104]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0207d1c4
_0202D8D0:
	add r2, r6, r4
	ldrh r0, [r2, #0xfe]
	orr r1, r0, #4
	ldr r0, [sp]
	and r0, r1, r0
	strh r0, [r2, #0xfe]
	mov r0, #0
	str r0, [r2, #0x104]
_0202D8F0:
	ldrh r0, [r10, #0xfe]
	tst r0, #4
	beq _0202D92C
	mov r0, r8
	bl FUN_0207cf94
	cmp r0, #0
	addgt sp, sp, #0x5c
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r6, r4
	ldrh r1, [r2, #0xfe]
	ldr r0, _0202DB88 ; =0x0000FFFB
	and r0, r1, r0
	strh r0, [r2, #0xfe]
	mov r0, #0
	strb r0, [r2, #0xf8]
_0202D92C:
	ldrh r0, [r10, #0xfc]
	tst r0, #8
	beq _0202D984
	ldrh r0, [r10, #0xfe]
	tst r0, #4
	bne _0202D984
	tst r0, #1
	beq _0202D960
	mov r0, r8
	bl FUN_0207ce1c
	ldrh r0, [r10, #0xfe]
	orr r0, r0, #8
	strh r0, [r10, #0xfe]
_0202D960:
	add r0, r6, r4
	ldrh r2, [r0, #0xfe]
	ldr r1, [sp, #8]
	and r1, r2, r1
	strh r1, [r0, #0xfe]
	ldrh r2, [r0, #0xfc]
	ldr r1, [sp, #4]
	and r1, r2, r1
	strh r1, [r0, #0xfc]
_0202D984:
	ldrh r0, [r10, #0xfe]
	tst r0, #8
	beq _0202D9C0
	mov r0, r8
	bl FUN_0207c990
	cmp r0, #0
	addgt sp, sp, #0x5c
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r6, r4
	ldrh r1, [r2, #0xfe]
	ldr r0, [sp, #0xc]
	and r0, r1, r0
	strh r0, [r2, #0xfe]
	mov r0, #0
	strb r0, [r2, #0xf8]
_0202D9C0:
	ldrh r0, [r10, #0xfc]
	tst r0, #1
	beq _0202DA58
	add r5, r6, r4
	ldrh r1, [r5, #0xfc]
	ldr r0, [sp, #0x10]
	and r0, r1, r0
	strh r0, [r5, #0xfc]
	ldrh r0, [r5, #0xfe]
	tst r0, #1
	bne _0202DA4C
	ldr r1, _0202DB90 ; =0x0208FBA0
	mov r0, r7
	bl STD_CopyString
	mov r0, r7
	add r1, r11, r4
	bl STD_ConcatenateString
	mov r8, r5
	ldrsb r0, [r8, #0xf9]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl FUN_0207c97c
	mov r0, #0
	strb r0, [r8, #0xf9]
	mov r0, r7
	mov r1, #0x2000
	mov r2, #1
	bl FUN_0207ca24
	cmp r0, #0
	blt _0202DB74
	str r0, [r5, #0x100]
	mov r8, r0
_0202DA4C:
	ldrh r0, [r10, #0xfe]
	orr r0, r0, #1
	strh r0, [r10, #0xfe]
_0202DA58:
	ldrh r0, [r10, #0xfc]
	tst r0, #2
	beq _0202DB4C
	ldrsb r0, [r10, #0xf8]
	cmp r0, #0
	bne _0202DB4C
	ldrh r0, [r10, #0xfe]
	tst r0, #1
	beq _0202DB3C
	mov r0, r8
	bl FUN_0207c990
	cmp r0, #0
	addle sp, sp, #0x5c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r10, #0xfe]
	tst r0, #0x20
	addeq r1, r6, #0xfe
	ldreqh r0, [r1, r4]
	addeq sp, sp, #0x5c
	orreq r0, r0, #0x20
	streqh r0, [r1, r4]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r9
	bl FUN_0202d6c4
	cmp r0, #0
	bne _0202DB30
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldrh r5, [r2, #0x5a]
	ldrh r3, [r2, #0x5e]
	add r4, r6, r4
	ldrh r1, [r1, #0x58]
	mul r3, r5, r3
	mul r3, r1, r3
	mov r12, r3, asr #7
	ldr r3, _0202DB94 ; =0x10624DD3
	ldr r2, [r4, #0x104]
	smull r5, r1, r3, r12
	mov r3, r12, lsr #0x1f
	add r1, r3, r1, asr #6
	mov r1, r1, lsl #0x18
	mov r0, r6
	mov r1, r1, asr #0x18
	bl FUN_0202bc48
	ldrh r0, [r4, #0xfc]
	add r1, r6, #0x44
	tst r0, #0x80
	mov r0, r8
	bne _0202DB28
	mov r2, #1
	b _0202DB2C
_0202DB28:
	mov r2, #0
_0202DB2C:
	bl FUN_0207cfe4
_0202DB30:
	ldrh r0, [r10, #0xfe]
	orr r0, r0, #2
	strh r0, [r10, #0xfe]
_0202DB3C:
	ldrh r1, [r10, #0xfc]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	strh r0, [r10, #0xfc]
_0202DB4C:
	ldrh r0, [r10, #0xfe]
	tst r0, #2
	beq _0202DB74
	mov r0, r8
	bl FUN_0207cf94
	cmp r0, #0
	bne _0202DB74
	mov r0, r6
	mov r1, r9
	bl FUN_0202d578
_0202DB74:
	add r9, r9, #1
	cmp r9, #1
	blt _0202D854
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DB88: .word 0x0000FFFB
_0202DB8C: .word unk_0209A110
_0202DB90: .word unk_0208FBA0
_0202DB94: .word 0x10624DD3
	arm_func_end FUN_0202d7ec

	arm_func_start FUN_0202db98
FUN_0202db98: ; 0x0202DB98
	stmfd sp!, {r4, lr}
	ldrh r3, [r0, #0xfc]
	ldrh r2, [r0, #0xfe]
	mov r4, r1
	orr r1, r3, r2
	tst r1, #3
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0x100]
	bl FUN_0207cf94
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl OS_Sleep
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202db98

	arm_func_start FUN_0202dbd0
FUN_0202dbd0: ; 0x0202DBD0
	mov r2, #0x30
	mla r2, r1, r2, r0
	ldrh r0, [r2, #0xfc]
	ldrh r1, [r2, #0xfe]
	tst r0, #0xc
	orr r0, r1, r0, lsl #16
	movne r0, #0
	tst r1, #0xc
	movne r0, #0
	bx lr
	arm_func_end FUN_0202dbd0

	arm_func_start FUN_0202dbf8
FUN_0202dbf8: ; 0x0202DBF8
	mov r3, #0
	mov r2, r3
_0202DC00:
	add r1, r0, r3, lsl #2
	str r2, [r1, #0x24]
	add r3, r3, #1
	str r2, [r1, #0x38]
	cmp r3, #5
	blt _0202DC00
	bx lr
	arm_func_end FUN_0202dbf8

	arm_func_start FUN_0202dc1c
FUN_0202dc1c: ; 0x0202DC1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202DC28:
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x24]
	cmp r2, #0
	beq _0202DC40
	ldmib r5, {r0, r1}
	bl OS_FreeToHeap
_0202DC40:
	add r4, r4, #1
	cmp r4, #5
	blt _0202DC28
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202dc1c

	arm_func_start FUN_0202dc54
FUN_0202dc54: ; 0x0202DC54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, r1
	str r1, [r10, #4]
	mov r1, r2
	mov r2, r3
	bl OS_CreateHeap
	str r0, [r10, #8]
	add r0, r10, #0xc
	bl OS_InitMutex
	mov r7, #1
_0202DC80:
	mov r8, #0
	ldr r5, _0202DD9C ; =0x0208C348
	mov r6, r8
	mov r11, r8
	mov r4, #0x14
_0202DC94:
	cmp r7, #1
	bne _0202DCA4
	cmp r8, #1
	beq _0202DD70
_0202DCA4:
	cmp r7, #2
	bne _0202DCB4
	cmp r8, #1
	bne _0202DD70
_0202DCB4:
	add r0, r10, r8, lsl #2
	str r6, [r0, #0x24]
	str r6, [r0, #0x38]
	ldmib r10, {r0, r1}
	bl OS_GetTotalFreeSize
	cmp r0, #0
	beq _0202DD7C
	ldr r1, [r5, r8, lsl #2]
	mov r9, r0
	mov r1, r1, lsl #0xa
	cmp r7, #2
	movne r9, r1
	cmp r9, #0
	beq _0202DD68
	cmp r7, #1
	bne _0202DCFC
	cmp r9, r1
	bhi _0202DD0C
_0202DCFC:
	cmp r7, #2
	bne _0202DD1C
	cmp r9, r0
	bls _0202DD1C
_0202DD0C:
	cmp r7, #1
	bne _0202DD1C
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD1C:
	ldmib r10, {r0, r1}
	mov r2, r9
	bl OS_AllocFromHeap
	add r1, r10, r8, lsl #2
	str r0, [r1, #0x24]
	cmp r0, #0
	bne _0202DD40
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD40:
	str r9, [r1, #0x38]
	ldr r1, [r1, #0x24]
	mov r0, r11
	mov r2, r9
	bl MIi_CpuClearFast
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x24]
	sub r0, r9, #0x10
	str r0, [r1, #4]
	strh r4, [r1, #2]
_0202DD68:
	cmp r7, #2
	beq _0202DD7C
_0202DD70:
	add r8, r8, #1
	cmp r8, #5
	blt _0202DC94
_0202DD7C:
	add r7, r7, #1
	cmp r7, #2
	ble _0202DC80
	mvn r1, #0
	mov r0, #1
	str r1, [r10, #0x4c]
	str r0, [r10, #0x50]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD9C: .word unk_0208C348
	arm_func_end FUN_0202dc54

	arm_func_start FUN_0202dda0
FUN_0202dda0: ; 0x0202DDA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r0, #4]
	ldr r2, [r0, #0xc]
	add r1, r0, r1
	add r1, r1, #0x10
	cmp r2, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r4]
	cmp r1, #0
	ldreqb r1, [r0]
	cmpeq r1, #0
	sub r1, r0, r4
	beq _0202DDF0
	sub r1, r1, #0x10
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	str r4, [r0, #8]
	b _0202DE18
_0202DDF0:
	sub r2, r1, #0x10
	str r2, [r4, #4]
	ldr r1, [r0, #4]
	add r1, r1, #0x10
	add r1, r2, r1
	str r1, [r4, #4]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0xc]
	cmp r0, #0
	strne r4, [r0, #8]
_0202DE18:
	mov r5, #0x10
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0202DE3C
	mov r1, r5
	bl DC_FlushRange
_0202DE3C:
	bl DC_WaitWriteBufferEmpty
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202dda0

	arm_func_start FUN_0202de44
FUN_0202de44: ; 0x0202DE44
	ldr r12, _0202DE54 ; =FUN_0202de58
	mov r2, #0
	mov r3, #1
	bx r12
_0202DE54: .word FUN_0202de58
	arm_func_end FUN_0202de44

	arm_func_start FUN_0202de58
FUN_0202de58: ; 0x0202DE58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r7, _0202E198 ; =0x0208C340
	mov r10, r0
	ldrb r11, [r7]
	ldrb r6, [r7, #1]
	ldrb r5, [r7, #2]
	ldrb r4, [r7, #3]
	ldrb r12, [r7, #4]
	add r0, r10, #0xc
	mov r9, r1
	mov r8, r2
	mov r7, r3
	strb r11, [sp]
	strb r6, [sp, #1]
	strb r5, [sp, #2]
	strb r4, [sp, #3]
	strb r12, [sp, #4]
	bl OS_LockMutex
	bl OS_DisableInterrupts
	ldr r2, [r10, #0x4c]
	add r1, r9, #3
	mov r11, r0
	cmp r2, #0
	mvnge r0, #0
	bic r9, r1, #3
	strge r0, [r10, #0x4c]
	bge _0202DF10
	cmp r8, #4
	bgt _0202DED8
	beq _0202DF04
	b _0202DF0C
_0202DED8:
	cmp r8, #0x13
	bgt _0202DF0C
	cmp r8, #0xd
	blt _0202DF0C
	cmpne r8, #0xe
	beq _0202DEF8
	cmp r8, #0x13
	bne _0202DF0C
_0202DEF8:
	mov r2, #3
	mov r7, #1
	b _0202DF10
_0202DF04:
	mov r2, #2
	b _0202DF10
_0202DF0C:
	ldr r2, [r10, #0x50]
_0202DF10:
	cmp r8, #4
	moveq r2, #2
	tst r2, #0x100
	bicne r2, r2, #0x100
	add r0, r10, r2, lsl #2
	ldr r5, [r0, #0x24]
	movne r7, #0
	cmp r2, #2
	mov r6, r5
	mov r4, #0
	beq _0202DF44
	cmp r9, #0x32000
	movge r7, r4
_0202DF44:
	cmp r7, #0
	beq _0202DFD4
	cmp r5, #0
	beq _0202E028
_0202DF54:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0202DFC4
	ldr r0, [r5, #4]
	cmp r0, r9
	blo _0202DFC4
	ldrb r1, [r6]
	cmp r1, #0
	movne r6, r5
	ldr r1, [r6, #4]
	cmp r1, r9
	movlo r6, r5
	cmp r0, r9, lsl #1
	bhs _0202DF98
	ldr r1, [r6, #4]
	cmp r1, r0
	movhi r6, r5
_0202DF98:
	ldr r1, [r6, #4]
	cmp r1, r9
	beq _0202E028
	ldr r1, [r5, #0xc]
	cmp r1, #0
	addne r0, r5, r0
	addne r0, r0, #0x10
	cmpne r1, r0
	beq _0202DFC4
	mov r0, r5
	bl FUN_0202dda0
_0202DFC4:
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _0202DF54
	b _0202E028
_0202DFD4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202DFF0
_0202DFE0:
	mov r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0202DFE0
_0202DFF0:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0202E024
_0202DFFC:
	ldr r0, [r5, #4]
	cmp r0, r9
	blo _0202E014
	ldrb r0, [r5]
	cmp r0, #0
	beq _0202E024
_0202E014:
	mov r5, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _0202DFFC
_0202E024:
	mov r6, r5
_0202E028:
	ldrb r1, [r6]
	mov r0, #0
	cmp r1, #0
	bne _0202E044
	ldr r2, [r6, #4]
	cmp r2, r9
	bhs _0202E088
_0202E044:
	cmp r4, #5
	bge _0202E06C
	add r0, sp, #0
	ldrb r0, [r0, r4]
	mov r7, #1
	add r4, r4, #1
	add r0, r10, r0, lsl #2
	ldr r5, [r0, #0x24]
	mov r6, r5
	b _0202DF44
_0202E06C:
	mov r0, r11
	bl OS_RestoreInterrupts
	add r0, r10, #0xc
	bl OS_UnlockMutex
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202E088:
	cmp r7, #1
	add r1, r9, #0x40
	bne _0202E0E4
	cmp r2, r1
	bls _0202E134
	add r1, r6, #0x10
	strb r0, [r1, r9]
	ldr r0, [r6, #4]
	add r1, r1, r9
	sub r0, r0, r9
	sub r0, r0, #0x10
	str r0, [r1, #4]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	str r6, [r1, #8]
	ldr r0, [r6, #0xc]
	str r0, [r1, #0xc]
	str r1, [r6, #0xc]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	strne r1, [r0, #8]
	str r9, [r6, #4]
	b _0202E134
_0202E0E4:
	cmp r2, r1
	bls _0202E134
	ldr r1, [r5, #4]
	add r2, r6, #0x10
	sub r1, r1, r9
	add r1, r2, r1
	strb r0, [r1, #-0x10]
	sub r6, r1, #0x10
	str r9, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r5, #0xc]
	str r0, [r6, #0xc]
	str r6, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	strne r6, [r0, #8]
	ldr r1, [r5, #4]
	add r0, r9, #0x10
	sub r0, r1, r0
	str r0, [r5, #4]
_0202E134:
	mov r0, #1
	strb r0, [r6]
	mov r4, #0x10
	mov r0, r6
	mov r1, r4
	strh r8, [r6, #2]
	bl DC_FlushRange
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0202E164
	mov r1, r4
	bl DC_FlushRange
_0202E164:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0202E178
	mov r1, #0x10
	bl DC_FlushRange
_0202E178:
	bl DC_WaitWriteBufferEmpty
	mov r0, r11
	bl OS_RestoreInterrupts
	add r0, r10, #0xc
	bl OS_UnlockMutex
	add r0, r6, #0x10
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202E198: .word unk_0208C340
	arm_func_end FUN_0202de58

	arm_func_start FUN_0202e19c
FUN_0202e19c: ; 0x0202E19C
	ldr r2, [r0, #0x4c]
	str r1, [r0, #0x4c]
	mov r0, r2
	bx lr
	arm_func_end FUN_0202e19c

	arm_func_start FUN_0202e1ac
FUN_0202e1ac: ; 0x0202E1AC
	ldr r2, [r0, #0x50]
	cmp r1, #0
	strge r1, [r0, #0x50]
	mov r0, r2
	bx lr
	arm_func_end FUN_0202e1ac

	arm_func_start FUN_0202e1c0
FUN_0202e1c0: ; 0x0202E1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	mov r3, r2
_0202E1D8:
	add r0, r7, r3, lsl #2
	ldr r1, [r0, #0x24]
	cmp r6, r1
	blo _0202E1FC
	ldr r0, [r0, #0x38]
	add r0, r1, r0
	cmp r6, r0
	movlo r2, r1
	blo _0202E208
_0202E1FC:
	add r3, r3, #1
	cmp r3, #5
	blt _0202E1D8
_0202E208:
	cmp r2, #0
	bne _0202E218
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E218:
	add r0, r7, #0xc
	bl OS_LockMutex
	bl OS_DisableInterrupts
	sub r5, r6, #0x10
	ldrb r1, [r5]
	mov r4, r0
	cmp r1, #0
	bne _0202E248
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E248:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldrne r1, [r5, #4]
	addne r1, r6, r1
	cmpne r2, r1
	beq _0202E270
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E270:
	mov r0, #0
	strb r0, [r5]
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _0202E2C4
	ldrb r0, [r2]
	cmp r0, #0
	bne _0202E2C4
	ldr r0, [r5, #4]
	ldr r1, [r2, #4]
	add r0, r0, #0x10
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	str r1, [r0, #0xc]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldrne r0, [r5, #8]
	strne r0, [r1, #8]
	ldr r5, [r5, #8]
_0202E2C4:
	mov r6, #0x10
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202E2E8
	mov r1, r6
	bl DC_FlushRange
_0202E2E8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202E2FC
	mov r1, #0x10
	bl DC_FlushRange
_0202E2FC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0202E33C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0202E33C
	ldr r0, [r1, #4]
	ldr r1, [r5, #4]
	add r0, r0, #0x10
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0xc]
	cmp r0, #0
	strne r5, [r0, #8]
_0202E33C:
	mov r6, #0x10
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202E360
	mov r1, r6
	bl DC_FlushRange
_0202E360:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202E374
	mov r1, #0x10
	bl DC_FlushRange
_0202E374:
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202e1c0

	arm_func_start FUN_0202e38c
FUN_0202e38c: ; 0x0202E38C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	movne r0, #0
	mov r6, r2
	strne r0, [r7]
	cmp r6, #0
	movne r0, #0
	mov r5, r3
	strne r0, [r6]
	cmp r5, #0
	mvnne r0, #0
	strne r0, [r5]
	ldmib r8, {r0, r1}
	bl OS_GetTotalFreeSize
	mov r4, #0
	mov r0, r4
	bl OS_GetArenaLo
	mov r0, r4
	bl OS_GetArenaHi
	mov r0, r4
_0202E3E0:
	add r1, r8, r4, lsl #2
	ldr r12, [r1, #0x24]
	cmp r12, #0
	beq _0202E464
	mov r2, r0
	mov r1, r0
	mov lr, r0
	beq _0202E42C
_0202E400:
	ldrb r3, [r12]
	cmp r3, #0
	ldr r3, [r12, #4]
	addne lr, lr, r3
	bne _0202E420
	cmp r3, r2
	add r1, r1, r3
	movhi r2, r3
_0202E420:
	ldr r12, [r12, #0xc]
	cmp r12, #0
	bne _0202E400
_0202E42C:
	cmp r7, #0
	ldrne r3, [r7]
	addne r3, r3, lr
	strne r3, [r7]
	cmp r6, #0
	ldrne r3, [r6]
	addne r1, r3, r1
	strne r1, [r6]
	cmp r5, #0
	beq _0202E464
	ldr r1, [r5]
	cmp r1, #0
	cmpge r1, r2
	strlt r2, [r5]
_0202E464:
	add r4, r4, #1
	cmp r4, #5
	blt _0202E3E0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0202e38c

	arm_func_start FUN_0202e474
FUN_0202e474: ; 0x0202E474
	mov r1, #0
	str r1, [r0, #0x18c]
	bx lr
	arm_func_end FUN_0202e474

	arm_func_start FUN_0202e480
FUN_0202e480: ; 0x0202E480
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18c]
	cmp r1, #0
	beq _0202E4A4
	orr r2, r1, #0x20
	mov r1, #1
	str r2, [r4, #0x18c]
	bl FUN_0202eb00
_0202E4A4:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202e480

	arm_func_start FUN_0202e4ac
FUN_0202e4ac: ; 0x0202E4AC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0202E4C8 ; =0x020B5B80
	str r1, [r0]
	bl OS_InitTick
	ldmfd sp!, {r3, pc}
_0202E4C8: .word unk_020B5B80
	arm_func_end FUN_0202e4ac

	arm_func_start FUN_0202e4cc
FUN_0202e4cc: ; 0x0202E4CC
	ldr r0, _0202E4E8 ; =0x020B5B80
	ldr r12, [sp]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	str r12, [r0, #0x14]
	bx lr
_0202E4E8: .word unk_020B5B80
	arm_func_end FUN_0202e4cc

	arm_func_start FUN_0202e4ec
FUN_0202e4ec: ; 0x0202E4EC
	ldr r0, _0202E51C ; =0x020B5B80
	ldrsb r1, [r0, #6]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #6]
	ldreqsb r1, [r0, #4]
	eoreq r1, r1, #1
	streqb r1, [r0, #4]
	ldr r0, _0202E51C ; =0x020B5B80
	ldrsb r0, [r0, #4]
	eor r0, r0, #1
	bx lr
_0202E51C: .word unk_020B5B80
	arm_func_end FUN_0202e4ec

	arm_func_start L5_PlayMovie
L5_PlayMovie: ; 0x0202E520
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x4c
	ldrb r4, [sp, #0x68]
	mov r8, r0
	mov r5, r1
	mov r9, r2
	mov r7, r3
	cmp r4, #0
	mov r4, #0
	beq _0202E560
	ldr r1, _0202E75C ; =0x0000007E
	mov r0, r4
	bl FS_UnloadOverlay
	ldr r1, _0202E760 ; =0x0000007F
	mov r0, r4
	bl FS_LoadOverlay
_0202E560:
	str r4, [r8, #0x98]
	str r4, [r8, #0x94]
	str r4, [r8, #0x90]
	cmp r5, #0
	beq _0202E5AC
	add r6, sp, #0xc
	ldr r1, _0202E764 ; =0x0208FBC8
	mov r0, r6
	mov r2, r5
	bl STD_TSPrintf
	mov r0, r8
	bl FS_InitFile
	mov r0, r8
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0202E5AC:
	cmp r9, #0
	beq _0202E5B8
	bl OS_Terminate
_0202E5B8:
	cmp r5, #0
	beq _0202E5D0
	mov r0, r8
	mov r1, #6
	bl MO_OpenMovie
	str r0, [r8, #0x90]
_0202E5D0:
	ldr r0, [r8, #0x90]
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r0, [r8, #0x98]
	cmp r7, #0
	str r4, [r8, #0x18c]
	orrne r0, r4, #0x200
	strne r0, [r8, #0x18c]
	ldr r0, [r8, #0x98]
	str r4, [r8, #0x194]
	str r4, [r8, #0x198]
	str r4, [r8, #0x19c]
	str r4, [r8, #0x1a0]
	bl MO_GetNbFrame
	ldr r3, _0202E768 ; =0x020B5B80
	str r0, [r8, #0x1a4]
	mov r7, #1
	add r6, sp, #0xc
	strb r7, [r3, #4]
	ldr r1, _0202E76C ; =0x0208FBE0
	mov r0, r6
	mov r2, r5
	strb r7, [r3, #6]
	bl STD_TSPrintf
	ldr r0, [r8, #0x18c]
	tst r0, #0x200
	bne _0202E668
	ldr r0, _0202E770 ; =0x0209AC44
	mov r1, r4
	mov r2, r6
	mov r3, r4
	bl FUN_0202d4c4
	cmp r0, #0
	ldrne r0, [r8, #0x18c]
	orrne r0, r0, #0x100
	strne r0, [r8, #0x18c]
_0202E668:
	add r0, r8, #0x9c
	bl OS_CreateAlarm
	bl OS_GetTick
	mov r5, r0
	ldr r0, [r8, #0x98]
	mov r7, r1
	bl MO_GetVideoFps
	mov r4, #0
	mov r2, r0
	ldr r1, _0202E774 ; =0x00000F42
	mov r0, #0x40000000
	mov r3, r4
	bl _ull_div
	ldr r12, _0202E778 ; =0x000082EA
	mov r6, r4
	umull r9, lr, r0, r12
	mla lr, r1, r12, lr
	mov r0, r9, lsr #6
	mov r2, #0x3e8
	mov r3, r6
	mov r1, lr, lsr #6
	orr r0, r0, lr, lsl #26
	bl _ull_div
	adds r1, r5, #5
	ldr r5, _0202E77C ; =FUN_0202ecd8
	mov r3, r0
	stmib sp, {r5, r6}
	adc r2, r7, #0
	add r0, r8, #0x9c
	str r4, [sp]
	bl OS_SetPeriodicAlarm
_0202E6E4:
	mov r0, r8
	bl FUN_0202ea50
	add r6, r6, #1
	cmp r6, #6
	blt _0202E6E4
	mov r4, #0x400
	mov r0, r4
	bl MO_Malloc
	str r0, [r8, #0x188]
	str r4, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	ldr r3, [r8, #0x188]
	ldr r1, _0202E780 ; =FUN_0202ec08
	mov r2, r8
	add r0, r8, #0xc8
	add r3, r3, #0x400
	bl OS_CreateThread
	ldr r0, [r8, #0x18c]
	tst r0, #0x200
	bne _0202E744
	ldr r0, _0202E770 ; =0x0209AC44
	mov r1, #0
	bl FUN_0202c4a0
_0202E744:
	ldr r1, [r8, #0x18c]
	mov r0, #1
	orr r1, r1, #1
	str r1, [r8, #0x18c]
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0202E75C: .word 0x0000007E
_0202E760: .word 0x0000007F
_0202E764: .word unk_0208FBC8
_0202E768: .word unk_020B5B80
_0202E76C: .word unk_0208FBE0
_0202E770: .word unk_0209AC44
_0202E774: .word 0x00000F42
_0202E778: .word 0x000082EA
_0202E77C: .word FUN_0202ecd8
_0202E780: .word FUN_0202ec08
	arm_func_end L5_PlayMovie

	arm_func_start FUN_0202e784
FUN_0202e784: ; 0x0202E784
	ldr r0, [r0, #0x18c]
	bx lr
	arm_func_end FUN_0202e784

	arm_func_start FUN_0202e78c
FUN_0202e78c: ; 0x0202E78C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x18c]
	mov r4, #0
	tst r2, #1
	mov r1, #1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x98]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	tst r2, #4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r2, #0x20
	beq _0202E7E0
	tst r2, #0x8000
	movne r0, r1
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0202E7E0:
	tst r2, #0x10
	movne r0, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r2, #2
	ldreq r0, _0202E950 ; =0x020B5B80
	streqb r1, [r0, #5]
	ldr r0, [r5, #0x18c]
	tst r0, #0x100
	beq _0202E868
	tst r0, #8
	bne _0202E82C
	mov r1, #0
	ldr r0, _0202E954 ; =0x0209AC44
	mov r2, r1
	bl FUN_0202d594
	ldr r0, [r5, #0x18c]
	orr r0, r0, #8
	orr r0, r0, #0x400
	str r0, [r5, #0x18c]
_0202E82C:
	ldr r0, _0202E954 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202d6c4
	cmp r0, #0
	ldr r0, [r5, #0x18c]
	bne _0202E860
	tst r0, #0x400
	ldrne r1, _0202E950 ; =0x020B5B80
	movne r0, #1
	strneb r4, [r1, #5]
	ldmnefd sp!, {r3, r4, r5, pc}
	bic r0, r0, #0x108
	b _0202E864
_0202E860:
	bic r0, r0, #0x400
_0202E864:
	str r0, [r5, #0x18c]
_0202E868:
	ldr r1, [r5, #0x18c]
	ldr r0, _0202E950 ; =0x020B5B80
	orr r1, r1, #2
	str r1, [r5, #0x18c]
	ldrsb r1, [r0, #5]
	ldr r2, [r5, #0x198]
	adds r1, r2, r1
	str r1, [r5, #0x198]
	strb r4, [r0, #5]
	beq _0202E924
	b _0202E8C8
_0202E894:
	ldr r0, [r5, #0x90]
	bl MO_SkipFrameImage
	ldr r0, [r5, #0x94]
	bl MO_SkipFrameImage
	ldr r2, [r5, #0x1a0]
	ldr r1, [r5, #0x194]
	ldr r0, [r5, #0x198]
	add r2, r2, #1
	sub r1, r1, #1
	sub r0, r0, #1
	str r2, [r5, #0x1a0]
	str r1, [r5, #0x194]
	str r0, [r5, #0x198]
_0202E8C8:
	ldr r0, [r5, #0x198]
	cmp r0, #1
	ble _0202E8E0
	ldr r0, [r5, #0x194]
	cmp r0, #1
	bgt _0202E894
_0202E8E0:
	ldr r0, [r5, #0x194]
	cmp r0, #0
	beq _0202E924
	ldr r0, [r5, #0x90]
	ldr r1, [r5, #0x94]
	bl FUN_0202ec4c
	cmp r0, #0
	beq _0202E924
	ldr r2, [r5, #0x1a0]
	ldr r1, [r5, #0x194]
	ldr r0, [r5, #0x198]
	add r2, r2, #1
	sub r1, r1, #1
	sub r0, r0, #1
	str r2, [r5, #0x1a0]
	str r1, [r5, #0x194]
	str r0, [r5, #0x198]
_0202E924:
	add r0, r5, #0xc8
	bl OS_WakeupThreadDirect
	ldr r1, [r5, #0x1a0]
	ldr r0, [r5, #0x1a4]
	cmp r1, r0
	ldrge r1, [r5, #0x18c]
	movge r0, #0
	orrge r1, r1, #4
	strge r1, [r5, #0x18c]
	movlt r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0202E950: .word unk_020B5B80
_0202E954: .word unk_0209AC44
	arm_func_end FUN_0202e78c

	arm_func_start FUN_0202e958
FUN_0202e958: ; 0x0202E958
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x18c]
	tst r1, #2
	ldmeqfd sp!, {r3, pc}
	orr r1, r1, #0x20
	str r1, [r0, #0x18c]
	bl FUN_0202e978
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202e958

	arm_func_start FUN_0202e978
FUN_0202e978: ; 0x0202E978
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x18c]
	tst r1, #2
	ldmeqfd sp!, {r3, pc}
	orr r3, r1, #0x10
	ldr r1, _0202E9C0 ; =0x020B5B80
	str r3, [r0, #0x18c]
	ldrsb r1, [r1, #5]
	ldr r2, [r0, #0x198]
	tst r3, #8
	add r1, r2, r1
	str r1, [r0, #0x198]
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0202E9C4 ; =0x0209AC44
	mov r1, #0
	mov r2, #0x12c
	bl FUN_0202d774
	ldmfd sp!, {r3, pc}
_0202E9C0: .word unk_020B5B80
_0202E9C4: .word unk_0209AC44
	arm_func_end FUN_0202e978

	arm_func_start FUN_0202e9c8
FUN_0202e9c8: ; 0x0202E9C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x18c]
	tst r0, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	bic r1, r0, #0x10
	ldr r0, _0202EA48 ; =0x020B5B80
	str r1, [r5, #0x18c]
	mov r4, #0
	strb r4, [r0, #5]
	tst r1, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x98]
	bl MO_GetVideoFps
	mov r2, r0
	mov r0, #0xe8000000
	mov r1, #3
	mov r3, #0
	bl _ull_div
	mov r3, r0
	ldr r2, [r5, #0x1a0]
	ldr r1, [r5, #0x198]
	ldr r0, _0202EA4C ; =0x0209AC44
	add r1, r2, r1
	add r1, r1, #1
	umull r2, r3, r1, r3
	mov r1, r4
	bl FUN_0202d5d4
	ldr r0, [r5, #0x18c]
	orr r0, r0, #0x400
	str r0, [r5, #0x18c]
	ldmfd sp!, {r3, r4, r5, pc}
_0202EA48: .word unk_020B5B80
_0202EA4C: .word unk_0209AC44
	arm_func_end FUN_0202e9c8

	arm_func_start FUN_0202ea50
FUN_0202ea50: ; 0x0202EA50
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x194]
	cmp r0, #6
	movge r0, #0
	ldmgefd sp!, {r4, pc}
	ldr r0, [r4, #0x18c]
	tst r0, #0x20
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	orr r0, r0, #0x8000
	str r0, [r4, #0x18c]
	bl OS_GetTick
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _0202EABC
	ldr r1, [r4, #0x18c]
	tst r1, #0x1000
	bne _0202EABC
	bl MO_ReadFrame
	cmp r0, #0
	ldreq r0, [r4, #0x18c]
	orreq r0, r0, #0x1000
	streq r0, [r4, #0x18c]
	beq _0202EABC
	ldr r0, [r4, #0x90]
	bl MO_UnpackFrameImage
_0202EABC:
	bl OS_GetTick
	ldr r0, [r4, #0x18c]
	bic r0, r0, #0x8000
	str r0, [r4, #0x18c]
	tst r0, #0x1000
	beq _0202EAE0
	tst r0, #0x2000
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_0202EAE0:
	ldr r1, [r4, #0x19c]
	ldr r0, [r4, #0x194]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [r4, #0x19c]
	str r0, [r4, #0x194]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202ea50

	arm_func_start FUN_0202eb00
FUN_0202eb00: ; 0x0202EB00
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x18c]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	tst r0, #0x8000
	beq _0202EB38
	mov r6, #0x32
_0202EB24:
	mov r0, r6
	bl OS_Sleep
	ldr r0, [r5, #0x18c]
	tst r0, #0x8000
	bne _0202EB24
_0202EB38:
	tst r0, #0x20
	bne _0202EB70
	ldr r0, [r5, #0x194]
	mov r6, #0
	cmp r0, #0
	ble _0202EB70
_0202EB50:
	ldr r0, [r5, #0x90]
	bl MO_SkipFrameImage
	ldr r0, [r5, #0x94]
	bl MO_SkipFrameImage
	ldr r0, [r5, #0x194]
	add r6, r6, #1
	cmp r6, r0
	blt _0202EB50
_0202EB70:
	ldr r0, [r5, #0x18c]
	tst r0, #8
	beq _0202EB88
	ldr r0, _0202EBF8 ; =0x0209AC44
	mov r1, #0
	bl FUN_0202d578
_0202EB88:
	add r0, r5, #0x9c
	bl OS_CancelAlarm
	ldr r6, _0202EBFC ; =0x020B5B80
	ldr r0, [r6, #0x20]
	bl MO_Free
	ldr r0, [r6, #0x24]
	bl MO_Free
	ldr r0, [r5, #0x90]
	cmp r0, #0
	beq _0202EBBC
	bl MO_CloseMovie
	mov r0, r5
	bl FS_CloseFile
_0202EBBC:
	add r0, r5, #0xc8
	bl OS_DestroyThread
	ldr r0, [r5, #0x188]
	bl MO_Free
	mov r6, #0
	str r6, [r5, #0x18c]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, _0202EC00 ; =0x0000007F
	mov r0, r6
	bl FS_UnloadOverlay
	ldr r1, _0202EC04 ; =0x0000007E
	mov r0, r6
	bl FS_LoadOverlay
	ldmfd sp!, {r4, r5, r6, pc}
_0202EBF8: .word unk_0209AC44
_0202EBFC: .word unk_020B5B80
_0202EC00: .word 0x0000007F
_0202EC04: .word 0x0000007E
	arm_func_end FUN_0202eb00

	arm_func_start FUN_0202ec08
FUN_0202ec08: ; 0x0202EC08
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202EC14:
	mov r0, r5
	bl FUN_0202ea50
	cmp r0, #0
	bne _0202EC14
	mov r0, r4
	bl OS_SleepThread
	b _0202EC14
	arm_func_end FUN_0202ec08

	arm_func_start FUN_0202ec30
FUN_0202ec30: ; 0x0202EC30
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x98]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl MO_GetVideoFps
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202ec30

	arm_func_start FUN_0202ec4c
FUN_0202ec4c: ; 0x0202EC4C
	stmfd sp!, {r4, lr}
	ldr r2, _0202ECCC ; =0x020B5B80
	mov r4, r1
	ldrsb r1, [r2, #6]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r0, #0
	ldrnesb r2, [r2, #4]
	ldrne r1, _0202ECD0 ; =0x020B5B88
	ldrne r1, [r1, r2, lsl #2]
	cmpne r1, #0
	beq _0202EC8C
	mov r2, #0x100
	mov r3, #0
	bl MO_BlitFrameImage
_0202EC8C:
	cmp r4, #0
	ldrne r0, _0202ECCC ; =0x020B5B80
	ldrne r1, _0202ECD4 ; =0x020B5B90
	ldrnesb r0, [r0, #4]
	ldrne r1, [r1, r0, lsl #2]
	cmpne r1, #0
	beq _0202ECB8
	mov r0, r4
	mov r2, #0x100
	mov r3, #0
	bl MO_BlitFrameImage
_0202ECB8:
	ldr r0, _0202ECCC ; =0x020B5B80
	mov r1, #0
	strb r1, [r0, #6]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0202ECCC: .word unk_020B5B80
_0202ECD0: .word unk_020B5B88
_0202ECD4: .word unk_020B5B90
	arm_func_end FUN_0202ec4c

	arm_func_start FUN_0202ecd8
FUN_0202ecd8: ; 0x0202ECD8
	ldr r0, _0202ECEC ; =0x020B5B80
	ldrsb r1, [r0, #5]
	add r1, r1, #1
	strb r1, [r0, #5]
	bx lr
_0202ECEC: .word unk_020B5B80
	arm_func_end FUN_0202ecd8

	arm_func_start FUN_0202ecf0
FUN_0202ecf0: ; 0x0202ECF0
	ldr r2, _0202ED0C ; =0x020B5B80
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _0202ED10 ; =FUN_0202de58
	mov r2, #5
	mov r3, #0
	bx r12
_0202ED0C: .word unk_020B5B80
_0202ED10: .word FUN_0202de58
	arm_func_end FUN_0202ecf0

	arm_func_start FUN_0202ed14
FUN_0202ed14: ; 0x0202ED14
	ldr r2, _0202ED28 ; =0x020B5B80
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _0202ED2C ; =FUN_0202e1c0
	bx r12
_0202ED28: .word unk_020B5B80
_0202ED2C: .word FUN_0202e1c0
	arm_func_end FUN_0202ed14

	arm_func_start MO_Malloc
MO_Malloc: ; 0x0202ED30
	ldr r12, _0202ED38 ; =FUN_0202ecf0
	bx r12
_0202ED38: .word FUN_0202ecf0
	arm_func_end MO_Malloc

	arm_func_start MO_Free
MO_Free: ; 0x0202ED3C
	ldr r12, _0202ED44 ; =FUN_0202ed14
	bx r12
_0202ED44: .word FUN_0202ed14
	arm_func_end MO_Free

	arm_func_start FUN_0202ed48
FUN_0202ed48: ; 0x0202ED48
	ldr r2, _0202ED6C ; =0x0208FBF0
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #0x20]
	str r1, [r0, #0x944]
	str r1, [r0, #0x940]
	str r1, [r0, #0x948]
	str r1, [r0, #0x93c]
	bx lr
_0202ED6C: .word unk_0208FBF0
	arm_func_end FUN_0202ed48

	arm_func_start FUN_0202ed70
FUN_0202ed70: ; 0x0202ED70
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, _0202EDA0 ; =0x0208FBF0
	ldr r0, _0202EDA4 ; =0x0208FBF8
	mov r1, #3
	str r2, [r4]
	bl FS_FindArchive
	bl FS_UnloadArchiveTables
	add r0, r4, #0x70
	bl OS_DestroyThread
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0202EDA0: .word unk_0208FBF0
_0202EDA4: .word unk_0208FBF8
	arm_func_end FUN_0202ed70

	arm_func_start FUN_0202eda8
FUN_0202eda8: ; 0x0202EDA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, _0202EDE0 ; =0x0208FBF0
	ldr r0, _0202EDE4 ; =0x0208FBFC
	mov r1, #3
	str r2, [r4]
	bl FS_FindArchive
	bl FS_UnloadArchiveTables
	add r0, r4, #0x70
	bl OS_DestroyThread
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0202EDE0: .word unk_0208FBF0
_0202EDE4: .word unk_0208FBFC
	arm_func_end FUN_0202eda8

	arm_func_start FUN_0202ede8
FUN_0202ede8: ; 0x0202EDE8
	bx lr
	arm_func_end FUN_0202ede8

	arm_func_start FUN_0202edec
FUN_0202edec: ; 0x0202EDEC
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x20]
	cmp r3, #0
	ldmnefd sp!, {r3, pc}
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	str r2, [r0, #4]
	bl FUN_0202ee10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0202edec

	arm_func_start FUN_0202ee10
FUN_0202ee10: ; 0x0202EE10
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r2, [r4, #0x20]
	cmp r2, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0x68
	mul r2, r1, r5
	str r1, [r4, #0x20]
	mov r1, r2
	bl FUN_0202ef74
	ldr r1, [r4, #0x20]
	mov r6, #0
	mul r2, r1, r5
	mov r1, r6
	str r0, [r4, #0x24]
	bl MI_CpuFill8
	add r0, r4, #8
	bl OS_InitMutex
	mov r0, #0x800
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	ldr r1, _0202EED8 ; =FUN_0202f7a4
	add r0, r4, #0x70
	mov r2, r4
	add r3, r4, #0x930
	bl OS_CreateThread
	mov r0, r6
	mov r1, r6
	bl FS_TryLoadTable
	movs r5, r0
	addeq sp, sp, #8
	str r6, [r4, #0x93c]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #0xc000
	addhi sp, sp, #8
	ldmhifd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl FUN_0202ef74
	cmp r0, #0
	addeq sp, sp, #8
	str r0, [r4, #0x93c]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	bl FS_TryLoadTable
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0202EED8: .word FUN_0202f7a4
	arm_func_end FUN_0202ee10

	arm_func_start FUN_0202eedc
FUN_0202eedc: ; 0x0202EEDC
	ldr r3, [r0, #0x20]
	mov r12, #1
	cmp r3, #1
	ble _0202EF10
	ldr r2, [r0, #0x24]
	mov r0, #0x68
_0202EEF4:
	mla r1, r12, r0, r2
	ldr r1, [r1, #0x54]
	cmp r1, #0
	beq _0202EF10
	add r12, r12, #1
	cmp r12, r3
	blt _0202EEF4
_0202EF10:
	cmp r12, r3
	moveq r12, #0
	mov r0, r12
	bx lr
	arm_func_end FUN_0202eedc

	arm_func_start FUN_0202ef20
FUN_0202ef20: ; 0x0202EF20
	stmfd sp!, {r4, lr}
	ldr lr, [r0, #0x20]
	mov r4, #1
	cmp lr, #1
	ble _0202EF64
	ldr r12, [r0, #0x24]
	mov r0, #0x68
_0202EF3C:
	mla r3, r4, r0, r12
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _0202EF58
	ldr r2, [r3, #0x48]
	cmp r2, r1
	beq _0202EF64
_0202EF58:
	add r4, r4, #1
	cmp r4, lr
	blt _0202EF3C
_0202EF64:
	cmp r4, lr
	moveq r4, #0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202ef20

	arm_func_start FUN_0202ef74
FUN_0202ef74: ; 0x0202EF74
	ldr r0, [r0, #4]
	ldr r12, _0202EF88 ; =FUN_0202de58
	mov r2, #0xf
	mov r3, #1
	bx r12
_0202EF88: .word FUN_0202de58
	arm_func_end FUN_0202ef74

	arm_func_start FUN_0202ef8c
FUN_0202ef8c: ; 0x0202EF8C
	ldr r0, [r0, #4]
	ldr r12, _0202EF98 ; =FUN_0202e1c0
	bx r12
_0202EF98: .word FUN_0202e1c0
	arm_func_end FUN_0202ef8c

	arm_func_start FUN_0202ef9c
FUN_0202ef9c: ; 0x0202EF9C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	add r5, sp, #0
	mov r4, r1
	mov r0, r5
	bl FS_InitFile
	mov r0, r5
	mov r1, r4
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FS_GetLength
	mov r4, r0
	mov r0, r5
	bl FS_CloseFile
	mov r0, r4
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202ef9c

	arm_func_start FUN_0202eff0
FUN_0202eff0: ; 0x0202EFF0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb4
	mov r10, r0
	add r0, sp, #0x54
	str r2, [sp]
	mov r6, r1
	mov r7, r3
	ldr r5, [r2]
	bl STD_CopyString
	add r4, sp, #4
	mov r0, r4
	bl FS_InitFile
	mov r0, r4
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0xb4
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0xd8]
	mov r0, r4
	mov r2, #0
	bl FS_SeekFile
	mov r0, r4
	bl FS_GetLength
	ldr r9, [sp, #0xdc]
	ldr r1, [sp, #0xd8]
	cmp r9, #0
	moveq r9, r0
	add r2, r1, r9
	streq r0, [sp, #0xdc]
	cmp r2, r0
	subgt r9, r0, r1
	mov r11, #0
	add r0, sp, #0x4c
	mov r1, r11
	mov r2, #4
	strgt r9, [sp, #0xdc]
	bl MI_CpuFill8
	add r0, sp, #0x4c
	add r0, r0, #8
	bl STD_GetStringLength
	sub r1, r0, #1
	add r0, sp, #0x4c
	add r0, r0, r1
	ldrsb r0, [r0, #8]
	mov r8, #0
	add r4, sp, #4
	cmp r0, #0x5f
	moveq r0, #1
	streq r0, [sp, #0xe0]
	ldr r0, [sp, #0xe0]
	cmp r0, #0
	beq _0202F130
	add r2, sp, #4
	add r3, sp, #0xdc
	mov r0, r10
	add r1, sp, #0x4c
	bl FUN_0202fa88
	cmp r0, #0
	beq _0202F130
	cmp r7, #0
	ldr r1, _0202F290 ; =0x00000101
	beq _0202F0F8
	mov r0, r7
	b _0202F0FC
_0202F0F8:
	ldr r0, [r10, #4]
_0202F0FC:
	bl FUN_0202e19c
	mov r6, r0
	mov r0, r10
	mov r1, r9
	bl FUN_0202ef74
	mov r11, r0
	cmp r7, #0
	beq _0202F124
	mov r0, r7
	b _0202F128
_0202F124:
	ldr r0, [r10, #4]
_0202F128:
	mov r1, r6
	bl FUN_0202e19c
_0202F130:
	add r0, sp, #0x4c
	str r8, [r0, #4]
	cmp r5, #0
	bne _0202F18C
	cmp r7, #0
	strne r7, [r0, #4]
	ldreq r1, [r10, #4]
	ldrb r3, [sp, #0xe4]
	streq r1, [r0, #4]
	add r0, sp, #0x4c
	ldr r0, [r0, #4]
	ldr r1, [sp, #0xdc]
	mov r2, #1
	bl FUN_0202de58
	movs r5, r0
	bne _0202F18C
_0202F170:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F170
	add sp, sp, #0xb4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F18C:
	cmp r11, #0
	moveq r11, r5
	add r0, sp, #0x4c
	mov r7, r9
	mov r8, r11
	str r5, [r0, #0x48]
	cmp r9, #0
	ble _0202F22C
_0202F1AC:
	mov r6, r7
	cmp r7, #0x2000
	movge r6, #0x2000
	mov r0, r4
	mov r1, r8
	mov r2, r6
	sub r7, r7, r6
	bl FS_ReadFileAsync
	cmp r0, #0
	bge _0202F220
	add r4, sp, #4
_0202F1D8:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F1D8
	add r0, sp, #0x4c
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0202F200
	mov r1, r5
	bl FUN_0202e1c0
_0202F200:
	cmp r11, r5
	beq _0202F214
	mov r0, r10
	mov r1, r11
	bl FUN_0202ef8c
_0202F214:
	add sp, sp, #0xb4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F220:
	cmp r7, #0
	add r8, r8, r6
	bgt _0202F1AC
_0202F22C:
	mov r0, r11
	mov r1, r9
	bl DC_FlushRange
_0202F238:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F238
	cmp r9, #0x400
	ble _0202F258
	mov r0, #1
	bl OS_Sleep
_0202F258:
	cmp r11, r5
	beq _0202F27C
	mov r0, r10
	mov r1, r11
	add r2, sp, #0x4c
	bl FUN_0202fbe8
	mov r0, r10
	mov r1, r11
	bl FUN_0202ef8c
_0202F27C:
	ldr r0, [sp]
	str r5, [r0]
	ldr r0, [sp, #0xdc]
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F290: .word 0x00000101
	arm_func_end FUN_0202eff0

	arm_func_start FUN_0202f294
FUN_0202f294: ; 0x0202F294
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r10, r0
	add r0, r10, #8
	mov r4, r1
	mov r9, r2
	mov r11, r3
	ldr r8, [sp, #0x70]
	add r7, sp, #0
	bl OS_LockMutex
	mov r0, r10
	bl FUN_0202eedc
	cmp r0, #0
	bne _0202F2E0
	add r0, r10, #8
	bl OS_UnlockMutex
	add sp, sp, #0x48
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F2E0:
	ldr r2, [r10, #0x24]
	mov r1, #0x68
	mla r5, r0, r1, r2
	mov r1, r4
	add r0, r5, #8
	bl STD_CopyString
	mov r0, #1
	str r0, [r5, #0x54]
	add r0, r10, #8
	bl OS_UnlockMutex
	ldr r6, [r9]
	mov r0, #2
	str r0, [r5, #0x54]
	mov r0, r7
	bl FS_InitFile
	mov r1, r4
	add r0, r5, #0x58
	bl FS_ConvertPathToFileID
	cmp r0, #0
	beq _0202F340
	add r1, r5, #0x58
	mov r0, r7
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
_0202F340:
	cmp r0, #0
	add r4, sp, #0
	bne _0202F378
	add r0, r10, #8
	bl OS_LockMutex
	mov r0, r5
	mov r1, #0
	mov r2, #0x68
	bl MI_CpuFill8
	add r0, r10, #8
	bl OS_UnlockMutex
	add sp, sp, #0x48
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F378:
	mov r0, r4
	mov r1, r8
	mov r2, #0
	bl FS_SeekFile
	mov r0, r4
	bl FS_GetLength
	ldr r7, [sp, #0x74]
	mov r2, #4
	cmp r7, #0
	moveq r7, r0
	add r1, r8, r7
	streq r0, [sp, #0x74]
	cmp r1, r0
	subgt r7, r0, r8
	mov r0, r5
	mov r1, #0
	strgt r7, [sp, #0x74]
	bl MI_CpuFill8
	add r0, r5, #8
	bl STD_GetStringLength
	sub r0, r0, #1
	add r0, r5, r0
	ldrsb r0, [r0, #8]
	add r4, sp, #0
	cmp r0, #0x5f
	moveq r0, #1
	streq r0, [sp, #0x78]
	ldr r0, [sp, #0x78]
	cmp r0, #0
	beq _0202F404
	add r2, sp, #0
	add r3, sp, #0x74
	mov r0, r10
	mov r1, r5
	bl FUN_0202fa88
_0202F404:
	mov r0, #3
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #4]
	cmp r6, #0
	bne _0202F488
	cmp r11, #0
	strne r11, [r5, #4]
	ldreq r0, [r10, #4]
	ldrb r3, [sp, #0x7c]
	streq r0, [r5, #4]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x74]
	mov r2, #1
	bl FUN_0202de58
	movs r6, r0
	bne _0202F488
	add r4, sp, #0
_0202F44C:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F44C
	add r0, r10, #8
	bl OS_LockMutex
	mov r0, r5
	mov r1, #0
	mov r2, #0x68
	bl MI_CpuFill8
	add r0, r10, #8
	bl OS_UnlockMutex
	add sp, sp, #0x48
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202F488:
	str r6, [r5, #0x48]
	str r7, [r5, #0x50]
	str r8, [r5, #0x4c]
	str r6, [r9]
_0202F498:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F498
	add r0, r10, #8
	bl OS_LockMutex
	ldr r0, [r10, #0x940]
	cmp r0, #0
	streq r5, [r10, #0x944]
	streq r5, [r10, #0x940]
	beq _0202F4D8
	ldr r0, [r10, #0x944]
	cmp r0, #0
	strne r5, [r0, #0x64]
	ldrne r0, [r10, #0x944]
	strne r0, [r5, #0x60]
_0202F4D8:
	add r0, r10, #8
	str r5, [r10, #0x944]
	bl OS_UnlockMutex
	mov r0, r10
	bl FUN_0202f794
	mov r0, #1
	bl OS_Sleep
	ldr r0, [sp, #0x74]
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0202f294

	arm_func_start FUN_0202f500
FUN_0202f500: ; 0x0202F500
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	add r4, sp, #0
	mov r0, r4
	mov r7, r1
	mov r6, r2
	bl FS_InitFile
	mov r0, r4
	ldmia r7, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _0202F55C
	ldr r1, [sp, #0x60]
	mov r0, r4
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [r6]
	ldr r2, [sp, #0x64]
	mov r0, r4
	bl FS_ReadFile
	mov r5, r0
	mov r0, r4
	bl FS_CloseFile
_0202F55C:
	mov r0, r5
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202f500

	arm_func_start FUN_0202f568
FUN_0202f568: ; 0x0202F568
	ldr r12, _0202F578 ; =FS_ConvertPathToFileID
	mov r0, r1
	mov r1, r2
	bx r12
_0202F578: .word FS_ConvertPathToFileID
	arm_func_end FUN_0202f568

	arm_func_start FUN_0202f57c
FUN_0202f57c: ; 0x0202F57C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0202ef20
	mov r1, r0
	mov r0, r4
	bl FUN_0202f598
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202f57c

	arm_func_start FUN_0202f598
FUN_0202f598: ; 0x0202F598
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x24]
	mov r0, #0x68
	mla r4, r1, r0, r2
	ldr r1, [r4, #0x54]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _0202F604
_0202F5C8: ; jump table
	b _0202F604 ; case 0
	b _0202F604 ; case 1
	b _0202F604 ; case 2
	b _0202F604 ; case 3
	b _0202F604 ; case 4
	b _0202F604 ; case 5
	b _0202F604 ; case 6
	b _0202F5F4 ; case 7
	b _0202F5FC ; case 8
	b _0202F5FC ; case 9
	b _0202F5FC ; case 10
_0202F5F4:
	mov r5, #0
	b _0202F60C
_0202F5FC:
	sub r5, r0, #0x69
	b _0202F60C
_0202F604:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0202F60C:
	add r0, r6, #8
	bl OS_LockMutex
	mov r0, r4
	mov r1, #0
	mov r2, #0x68
	bl MI_CpuFill8
	add r0, r6, #8
	bl OS_UnlockMutex
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202f598

	arm_func_start FUN_0202f634
FUN_0202f634: ; 0x0202F634
	ldr r12, [r0, #0x20]
	mov r2, #1
	cmp r12, #1
	ble _0202F670
	ldr r3, [r0, #0x24]
	mov r0, #0x68
_0202F64C:
	mla r1, r2, r0, r3
	ldr r1, [r1, #0x54]
	cmp r1, #4
	cmpne r1, #6
	moveq r0, #1
	bxeq lr
	add r2, r2, #1
	cmp r2, r12
	blt _0202F64C
_0202F670:
	mov r0, #0
	bx lr
	arm_func_end FUN_0202f634

	arm_func_start FUN_0202f678
FUN_0202f678: ; 0x0202F678
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_0202ef20
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0202f69c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202f678

	arm_func_start FUN_0202f69c
FUN_0202f69c: ; 0x0202F69C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r5, r1
	mov r7, r0
	mov r6, r2
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #8
	bl OS_LockMutex
	ldr r1, [r7, #0x24]
	mov r0, #0x68
	mla r4, r5, r0, r1
	ldr r0, [r4, #0x54]
	mov r5, #1
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0202F75C
_0202F6DC: ; jump table
	b _0202F75C ; case 0
	b _0202F75C ; case 1
	b _0202F75C ; case 2
	b _0202F72C ; case 3
	b _0202F708 ; case 4
	b _0202F72C ; case 5
	b _0202F708 ; case 6
	b _0202F75C ; case 7
	b _0202F784 ; case 8
	b _0202F784 ; case 9
	b _0202F75C ; case 10
_0202F708:
	cmp r0, #6
	moveq r5, #0
	beq _0202F71C
	add r0, r7, #0x28
	bl FS_CancelFile
_0202F71C:
	cmp r6, #0
	movne r0, #9
	strne r0, [r4, #0x54]
	b _0202F784
_0202F72C:
	mov r0, #8
	str r0, [r4, #0x54]
	cmp r6, #0
	beq _0202F784
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202F750
	ldr r1, [r4, #0x48]
	bl FUN_0202e1c0
_0202F750:
	mov r0, #0
	str r0, [r4, #0x48]
	b _0202F784
_0202F75C:
	cmp r6, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	beq _0202F774
	ldr r1, [r4, #0x48]
	bl FUN_0202e1c0
_0202F774:
	mov r0, r4
	mov r1, #0
	mov r2, #0x68
	bl MI_CpuFill8
_0202F784:
	add r0, r7, #8
	bl OS_UnlockMutex
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202f69c

	arm_func_start FUN_0202f794
FUN_0202f794: ; 0x0202F794
	ldr r12, _0202F7A0 ; =OS_WakeupThreadDirect
	add r0, r0, #0x70
	bx r12
_0202F7A0: .word OS_WakeupThreadDirect
	arm_func_end FUN_0202f794

	arm_func_start FUN_0202f7a4
FUN_0202f7a4: ; 0x0202F7A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, #0
_0202F7B0:
	add r0, r10, #8
	bl OS_LockMutex
	ldr r0, [r10, #0x940]
	cmp r0, #0
	add r0, r10, #8
	bne _0202F7D8
	bl OS_UnlockMutex
	mov r0, #0
	bl OS_SleepThread
	b _0202F7B0
_0202F7D8:
	bl OS_UnlockMutex
	ldr r5, [r10, #0x940]
	add r0, r10, #0x28
	bl FS_InitFile
	add r1, r5, #0x58
	add r0, r10, #0x28
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	ldr r1, [r5, #0x4c]
	add r0, r10, #0x28
	mov r2, r11
	bl FS_SeekFile
	ldr r0, [r5, #0x54]
	mov r6, #0xa
	cmp r0, #3
	bne _0202F920
	mov r0, #4
	str r0, [r5, #0x54]
	ldr r0, [r5]
	mov r6, #7
	tst r0, #0xf0
	ldr r0, [r10, #0x938]
	beq _0202F874
	add r0, r10, r0, lsl #2
	ldr r1, [r0, #0x930]
	cmp r1, #0
	beq _0202F858
	mov r0, r10
	bl FUN_0202ef8c
	ldr r0, [r10, #0x938]
	add r0, r10, r0, lsl #2
	str r11, [r0, #0x930]
_0202F858:
	ldr r1, [r5, #0x50]
	mov r0, r10
	bl FUN_0202ef74
	ldr r1, [r10, #0x938]
	add r1, r10, r1, lsl #2
	str r0, [r1, #0x930]
	b _0202F880
_0202F874:
	ldr r1, [r5, #0x48]
	add r0, r10, r0, lsl #2
	str r1, [r0, #0x930]
_0202F880:
	ldr r0, [r10, #0x938]
	ldr r8, [r5, #0x50]
	add r0, r10, r0, lsl #2
	cmp r8, #0
	ldr r9, [r0, #0x930]
	ble _0202F8F0
	mov r4, #0x2000
_0202F89C:
	mov r7, r8
	cmp r8, #0x2000
	movge r7, r4
	ldr r0, [r5, #0x54]
	sub r8, r8, r7
	cmp r0, #8
	cmpne r0, #9
	beq _0202F8F0
	cmp r9, #0
	moveq r6, #0xa
	beq _0202F8F0
	mov r1, r9
	mov r2, r7
	add r0, r10, #0x28
	bl FS_ReadFileAsync
	cmp r0, #0
	movlt r6, #0xa
	blt _0202F8F0
	cmp r8, #0
	add r9, r9, r7
	bgt _0202F89C
_0202F8F0:
	add r0, r10, #0x28
	bl FS_WaitAsync
	ldr r0, [r10, #0x3c]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0202F920
	ldr r0, [r5, #0x54]
	cmp r0, #8
	cmpeq r0, #9
	movne r6, #0xa
_0202F920:
	ldr r0, [r5, #0x54]
	cmp r0, #4
	bne _0202F940
	ldr r1, [r5, #0x50]
	add r0, r10, #0x930
	bl DC_FlushRange
	mov r0, #5
	str r0, [r5, #0x54]
_0202F940:
	add r0, r10, #0x28
	bl FS_CloseFile
	cmp r0, #0
	beq _0202F940
	add r0, r10, #8
	bl OS_LockMutex
	ldr r0, [r5, #0x64]
	str r0, [r10, #0x940]
	str r11, [r5, #0x64]
	ldr r0, [r5, #0x54]
	cmp r0, #5
	bne _0202FA10
	cmp r6, #0xa
	bne _0202F9C0
	ldr r0, [r5]
	tst r0, #0xf0
	ldrne r0, [r10, #0x938]
	addne r0, r10, r0, lsl #2
	ldrne r1, [r0, #0x930]
	cmpne r1, #0
	beq _0202F9A8
	mov r0, r10
	bl FUN_0202ef8c
	ldr r0, [r10, #0x938]
	add r0, r10, r0, lsl #2
	str r11, [r0, #0x930]
_0202F9A8:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0202F9BC
	ldr r1, [r5, #0x48]
	bl FUN_0202e1c0
_0202F9BC:
	str r6, [r5, #0x54]
_0202F9C0:
	cmp r6, #7
	bne _0202FA7C
	ldr r0, [r5]
	tst r0, #0xf0
	ldreq r0, [r10, #0x938]
	addeq r0, r10, r0, lsl #2
	streq r11, [r0, #0x930]
	streq r6, [r5, #0x54]
	beq _0202FA7C
	mov r0, #6
	str r0, [r5, #0x54]
	ldr r1, [r10, #0x938]
	mov r0, r10
	eor r2, r1, #1
	mov r1, r5
	str r5, [r10, #0x948]
	str r2, [r10, #0x938]
	bl FUN_0202fb58
	str r11, [r10, #0x948]
	b _0202FA7C
_0202FA10:
	sub r0, r0, #8
	cmp r0, #1
	bhi _0202FA7C
	ldr r0, [r5]
	tst r0, #0xf0
	ldrne r0, [r10, #0x938]
	addne r0, r10, r0, lsl #2
	ldrne r1, [r0, #0x930]
	cmpne r1, #0
	beq _0202FA4C
	mov r0, r10
	bl FUN_0202ef8c
	ldr r0, [r10, #0x938]
	add r0, r10, r0, lsl #2
	str r11, [r0, #0x930]
_0202FA4C:
	ldr r0, [r5, #0x54]
	cmp r0, #9
	bne _0202FA6C
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0202FA6C
	ldr r1, [r5, #0x48]
	bl FUN_0202e1c0
_0202FA6C:
	mov r0, r5
	mov r1, #0
	mov r2, #0x68
	bl MI_CpuFill8
_0202FA7C:
	add r0, r10, #8
	bl OS_UnlockMutex
	b _0202F7B0
	arm_func_end FUN_0202f7a4

	arm_func_start FUN_0202fa88
FUN_0202fa88: ; 0x0202FA88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	add r0, r7, #8
	mov r1, #0x25
	mov r6, r2
	mov r5, r3
	bl strchr
	cmp r0, #0
	bne _0202FAF0
	mov r4, #4
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl FS_ReadFile
	cmp r0, #0
	bge _0202FAE0
_0202FAC8:
	mov r0, r6
	bl FS_CloseFile
	cmp r0, #0
	beq _0202FAC8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202FAE0:
	mov r0, r6
	sub r1, r4, #8
	mov r2, #1
	bl FS_SeekFile
_0202FAF0:
	ldr r1, [r7]
	and r0, r1, #0xf0
	cmp r0, #0x20
	bgt _0202FB10
	bge _0202FB44
	cmp r0, #0x10
	beq _0202FB44
	b _0202FB28
_0202FB10:
	cmp r0, #0x30
	bgt _0202FB20
	beq _0202FB44
	b _0202FB28
_0202FB20:
	cmp r0, #0x80
	beq _0202FB44
_0202FB28:
	mov r4, #0
	mov r0, r7
	mov r1, r4
	mov r2, #4
	bl MI_CpuFill8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202FB44:
	cmp r5, #0
	movne r0, r1, lsr #8
	strne r0, [r5]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0202fa88

	arm_func_start FUN_0202fb58
FUN_0202fb58: ; 0x0202FB58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x938]
	mov r4, r1
	eor r1, r2, #1
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x930]
	mov r2, r4
	bl FUN_0202fbe8
	ldr r1, [r5, #0x938]
	mov r0, r5
	eor r1, r1, #1
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x930]
	bl FUN_0202ef8c
	ldr r0, [r5, #0x938]
	mov r1, #0
	eor r0, r0, #1
	add r0, r5, r0, lsl #2
	str r1, [r0, #0x930]
	ldr r0, [r4, #0x54]
	cmp r0, #9
	bne _0202FBDC
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202FBC8
	ldr r1, [r4, #0x48]
	bl FUN_0202e1c0
_0202FBC8:
	mov r0, r4
	mov r1, #0
	mov r2, #0x68
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0202FBDC:
	mov r0, #7
	str r0, [r4, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202fb58

	arm_func_start FUN_0202fbe8
FUN_0202fbe8: ; 0x0202FBE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r0, [r5]
	ldr r4, [r2, #0x48]
	and r0, r0, #0xf0
	cmp r0, #0x20
	bgt _0202FC14
	bge _0202FC2C
	cmp r0, #0x10
	beq _0202FC1C
	b _0202FC38
_0202FC14:
	cmp r0, #0x30
	b _0202FC38
_0202FC1C:
	mov r0, r5
	mov r1, r4
	bl MI_UncompressLZ8
	b _0202FC38
_0202FC2C:
	mov r0, r5
	mov r1, r4
	bl MI_UncompressHuffman
_0202FC38:
	ldr r1, [r5]
	mov r0, r4
	mov r1, r1, lsr #8
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0202fbe8

	arm_func_start FUN_0202fc4c
FUN_0202fc4c: ; 0x0202FC4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	mov r6, r3
	ldr r1, _0202FD30 ; =0x0208FC00
	mov r0, r6
	mov r7, r2
	bl strcmp
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, r8
	bl FUN_02053914
	mov r0, r8
	mov r1, #0x2f
	bl strrchr
	cmp r0, #0
	addne r8, r0, #1
	mov r0, r8
	mov r1, #0x2f
	bl strrchr
	cmp r0, #0
	addne r8, r0, #1
	ldr r0, [r6, #0x20]
	add r4, r6, #0x20
	sub r0, r0, #0x20
	mov r9, r0, lsr #4
	cmp r9, #0
	mov r5, #0
	ble _0202FCE8
_0202FCC4:
	ldr r0, [r4, r5, lsl #4]
	mov r1, r8
	add r0, r6, r0
	bl strcmp
	cmp r0, #0
	beq _0202FCE8
	add r5, r5, #1
	cmp r5, r9
	blt _0202FCC4
_0202FCE8:
	cmp r5, r9
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0x10]
	ldr r1, _0202FD34 ; =0x0208FC04
	add r6, r6, r0
	mov r0, r6
	bl strcmp
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r4, r5, lsl #4
	ldr r2, [r6, #0xc]
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	mla r1, r2, r1, r6
	str r1, [r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0202FD30: .word unk_0208FC00
_0202FD34: .word unk_0208FC04
	arm_func_end FUN_0202fc4c

	arm_func_start FUN_0202fd38
FUN_0202fd38: ; 0x0202FD38
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end FUN_0202fd38

	arm_func_start FUN_0202fd44
FUN_0202fd44: ; 0x0202FD44
	bx lr
	arm_func_end FUN_0202fd44

	arm_func_start SSD_InitFile
SSD_InitFile: ; 0x0202FD48
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	str r1, [r4]
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r2, #0
	beq _0202FD74
	mov r0, r1
	mov r1, r2
	bl STD_CompareString
_0202FD74:
	ldr lr, [r4]
	mov r0, #0x10000
	ldr r1, [lr, #4]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x20000
	bne _0202FE80
	add r0, lr, #0x20
	sub r3, r0, #0x10
	mov r12, #0
	stmib r4, {r3, r12}
	ldrsh r0, [lr, #0xc]
	cmp r0, #0
	ble _0202FDD8
_0202FDAC:
	ldrsh r1, [r3, #2]
	ldr r2, [r4, #8]
	ldr r0, [r4]
	add r1, r2, r1
	str r1, [r4, #8]
	ldrsh r1, [r3, #2]
	ldrsh r0, [r0, #0xc]
	add r12, r12, #1
	add r3, r3, r1
	cmp r12, r0
	blt _0202FDAC
_0202FDD8:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	mov r3, #0
	add r0, r2, r1
	ldr r1, [r2, r1]
	add r0, r0, #4
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	ldrb r12, [r0, #3]
	mov r1, r3
	str r12, [r4, #0x10]
	b _0202FE6C
_0202FE08:
	ldrsh lr, [r2]
	ldrsh r12, [r0]
	cmp lr, r12
	bne _0202FE60
_0202FE18:
	ldrb r12, [r0, #2]
	add lr, r0, #4
	add r1, r1, #1
	add r12, r2, r12, lsl #2
	str lr, [r12, #8]
	ldr r12, [r4, #0xc]
	cmp r1, r12
	bge _0202FE60
	ldrb r12, [r0, #3]
	ldr lr, [r4, #0x10]
	add r0, r0, r12
	ldrb r12, [r0, #3]
	add r12, lr, r12
	str r12, [r4, #0x10]
	ldrsh lr, [r2]
	ldrsh r12, [r0]
	cmp lr, r12
	beq _0202FE18
_0202FE60:
	ldrsh r12, [r2, #2]
	add r3, r3, #1
	add r2, r2, r12
_0202FE6C:
	ldr r12, [r4]
	ldrsh r12, [r12, #0xc]
	cmp r3, r12
	blt _0202FE08
	b _0202FF2C
_0202FE80:
	cmp r0, #0x30000
	bne _0202FF2C
	add r0, lr, #0x20
	str r0, [r4, #4]
	ldr r2, [lr, #0x10]
	mov r1, #0
	str r2, [r4, #8]
	ldrsh r12, [lr, #0xe]
	add r2, r0, r2
	mov r3, r1
	str r12, [r4, #0xc]
	ldr r12, [lr, #0x14]
	str r12, [r4, #0x10]
	str r2, [r4, #0x14]
	b _0202FF10
_0202FEBC:
	ldrsh lr, [r0]
	ldrsh r12, [r2]
	cmp lr, r12
	bne _0202FF04
_0202FECC:
	ldrb r12, [r2, #2]
	add lr, r2, #4
	add r3, r3, #1
	add r12, r0, r12, lsl #2
	str lr, [r12, #8]
	ldrb lr, [r2, #3]
	ldr r12, [r4, #0xc]
	cmp r3, r12
	add r2, r2, lr
	bge _0202FF04
	ldrsh lr, [r0]
	ldrsh r12, [r2]
	cmp lr, r12
	beq _0202FECC
_0202FF04:
	ldrsh r12, [r0, #2]
	add r1, r1, #1
	add r0, r0, r12
_0202FF10:
	ldr r12, [r4]
	ldrsh r12, [r12, #0xc]
	cmp r1, r12
	bge _0202FF2C
	ldr r12, [r4, #0xc]
	cmp r3, r12
	blt _0202FEBC
_0202FF2C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end SSD_InitFile

	arm_func_start SSD_GetNextInstruction
SSD_GetNextInstruction: ; 0x0202FF34
	cmp r1, #0
	ldreq r0, [r0, #4]
	bxeq lr
	ldrsh r12, [r1, #2]
	ldmia r0, {r2, r3}
	add r0, r1, r12
	ldr r1, [r2, #0x10]
	sub r2, r0, r3
	cmp r2, r1
	movhs r0, #0
	bx lr
	arm_func_end SSD_GetNextInstruction

	arm_func_start FUN_0202ff60
FUN_0202ff60: ; 0x0202FF60
	ldr r2, [r0]
	ldr r0, [r0, #4]
	ldrsh r12, [r2, #0xc]
	mov r3, #0
	cmp r12, #0
	ble _0202FF98
_0202FF78:
	ldrsh r2, [r0, #4]
	cmp r2, r1
	beq _0202FF98
	ldrsh r2, [r0, #2]
	add r3, r3, #1
	cmp r3, r12
	add r0, r0, r2
	blt _0202FF78
_0202FF98:
	cmp r3, r12
	moveq r0, #0
	bx lr
	arm_func_end FUN_0202ff60

	arm_func_start FUN_0202ffa4
FUN_0202ffa4: ; 0x0202FFA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x348
	mov r5, #0
	mov r4, #0x1c
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x1000
	bl MI_CpuFill8
	add r0, r6, #0x32c
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x1000
	bl MI_CpuFill8
	add r0, r6, #0x3d0
	mov r1, r5
	add r0, r0, #0x1000
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r6, #0x870
	mov r1, r5
	add r0, r0, #0x2000
	mov r2, #0x900
	bl MI_CpuFill8
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202ffa4

	arm_func_start FUN_0203000c
FUN_0203000c: ; 0x0203000C
	bx lr
	arm_func_end FUN_0203000c

	arm_func_start FUN_02030010
FUN_02030010: ; 0x02030010
	add r3, r0, #0x4000
	ldr r3, [r3, #0x280]
	add r0, r0, #0x4200
	strh r1, [r0, #0x5c]
	cmp r3, #0
	ldrneh r1, [r0, #0x5c]
	strh r2, [r0, #0x5e]
	orrne r1, r1, #0x4000
	strneh r1, [r0, #0x5c]
	mov r0, #0
	bx lr
	arm_func_end FUN_02030010

	arm_func_start FUN_0203003c
FUN_0203003c: ; 0x0203003C
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x4000
	mov r2, #0
	str r2, [r3, #0x27c]
	str r2, [r3, #0x280]
	ldrh r2, [r1, #4]
	cmp r2, #1
	bne _020300C8
	ldrh r4, [r1]
	add r2, r0, #0x4200
	strh r4, [r2, #0x60]
	ldrh r4, [r1, #2]
	strh r4, [r2, #0x62]
	ldrh r4, [r1, #4]
	strh r4, [r2, #0x64]
	ldrh r4, [r1, #6]
	strh r4, [r2, #0x66]
	ldrh r1, [r1, #6]
	cmp r1, #0
	ldreq r1, [r3, #0x278]
	cmpeq r1, #0
	bne _020300BC
	ldrh lr, [r2, #0x60]
	ldrh r12, [r2, #0x62]
	ldrh r5, [r2, #0x64]
	ldrh r4, [r2, #0x66]
	mov r1, #1
	strh lr, [r2, #0x68]
	strh r12, [r2, #0x6a]
	strh r5, [r2, #0x6c]
	strh r4, [r2, #0x6e]
	str r1, [r3, #0x27c]
_020300BC:
	add r0, r0, #0x4000
	mov r1, #1
	b _02030108
_020300C8:
	ldr r1, [r3, #0x278]
	cmp r1, #0
	beq _02030100
	add r1, r0, #0x4200
	ldrh r5, [r1, #0x60]
	ldrh r4, [r1, #0x62]
	ldrh lr, [r1, #0x64]
	ldrh r12, [r1, #0x66]
	mov r2, #1
	strh r5, [r1, #0x70]
	strh r4, [r1, #0x72]
	strh lr, [r1, #0x74]
	strh r12, [r1, #0x76]
	str r2, [r3, #0x280]
_02030100:
	add r0, r0, #0x4000
	mov r1, #0
_02030108:
	str r1, [r0, #0x278]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203003c

	arm_func_start FUN_02030114
FUN_02030114: ; 0x02030114
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	ldr lr, [sp, #0x14]
	cmp r1, #4
	mov r12, #0
	addls pc, pc, r1, lsl #2
	b _02030258
_02030130: ; jump table
	b _02030144 ; case 0
	b _02030170 ; case 1
	b _0203018C ; case 2
	b _020301B8 ; case 3
	b _02030204 ; case 4
_02030144:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	beq _02030258
	add r0, r0, #0x4200
	ldrh r1, [r0, #0x60]
	cmp r1, r2
	ldrgeh r0, [r0, #0x62]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_02030170:
	add r0, r0, #0x4200
	ldrh r1, [r0, #0x68]
	cmp r1, r2
	ldrgeh r0, [r0, #0x6a]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_0203018C:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	bne _02030258
	add r0, r0, #0x4200
	ldrh r1, [r0, #0x70]
	cmp r1, r2
	ldrgeh r0, [r0, #0x72]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_020301B8:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	beq _02030258
	add r0, r0, #0x4200
	ldrh r5, [r0, #0x68]
	cmp r5, r2
	ldrgeh r1, [r0, #0x6a]
	cmpge r1, r3
	blt _02030258
	cmp r5, r4
	cmple r1, lr
	bgt _02030258
	ldrh r1, [r0, #0x60]
	cmp r1, r2
	ldrgeh r0, [r0, #0x62]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_02030204:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	bne _02030258
	add r0, r0, #0x4200
	ldrh r5, [r0, #0x68]
	cmp r5, r2
	ldrgeh r1, [r0, #0x6a]
	cmpge r1, r3
	blt _02030258
	cmp r5, r4
	cmple r1, lr
	bgt _02030258
	ldrh r1, [r0, #0x70]
	cmp r1, r2
	ldrgeh r0, [r0, #0x72]
	cmpge r0, r3
	blt _02030258
_0203024C:
	cmp r1, r4
	cmple r0, lr
	movle r12, #1
_02030258:
	mov r0, r12
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02030114

	arm_func_start FUN_02030260
FUN_02030260: ; 0x02030260
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	ldr r5, _0203039C ; =0x0208FCB8
	add r4, sp, #0xc
	mov r8, r0
	mov r6, r4
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r7, #0
	ldr r2, _020303A0 ; =0x0000131C
	mov r1, r7
	add r0, r8, #0x10
	bl MI_CpuFill8
	add r0, r8, #0x348
	mov r4, #0x1c
	add r0, r0, #0x1000
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	add r0, r8, #0x32c
	mov r2, r4
	add r0, r0, #0x1000
	mov r1, r7
	bl MI_CpuFill8
	add r0, r8, #0x3d0
	add r0, r0, #0x1000
	mov r1, r7
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r8, #0x870
	add r0, r0, #0x2000
	mov r1, r7
	mov r2, #0x900
	bl MI_CpuFill8
	add r0, r8, #0xf0
	add r0, r0, #0x2000
	mov r1, r7
	mov r2, #0x780
	bl MI_CpuFill8
	mov r5, r7
	mov r4, #5
	ldr r10, _020303A4 ; =0x0209A200
	ldr r9, _020303A8 ; =0x02099F38
	b _02030344
_02030318:
	ldr r3, [r6, r7, lsl #2]
	ldr r2, [r10]
	ldr r0, [r9]
	mov r1, r4
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02058684
	add r1, r8, r7, lsl #2
	str r0, [r1, #0x14]
	add r7, r7, #1
_02030344:
	cmp r7, #7
	blt _02030318
	add r0, r8, #0x3f0
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _020303A8 ; =0x02099F38
	mov r1, #8
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r8, #0x1000
	ldr r2, _020303AC ; =0x02099F58
	str r0, [r1, #0x3e4]
	ldr r0, [r2]
	mov r1, #0x20
	bl FUN_ov16_021169b0
	add r1, r8, #0x1000
	str r0, [r1, #0x3ec]
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203039C: .word unk_0208FCB8
_020303A0: .word 0x0000131C
_020303A4: .word unk_0209A200
_020303A8: .word unk_02099F38
_020303AC: .word unk_02099F58
	arm_func_end FUN_02030260

	arm_func_start FUN_020303B0
FUN_020303B0: ; 0x020303B0
	ldr r12, _020303B8 ; =FUN_020326e8
	bx r12
_020303B8: .word FUN_020326e8
	arm_func_end FUN_020303B0

	arm_func_start FUN_020303bc
FUN_020303bc: ; 0x020303BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02031a2c
	mov r0, r4
	bl FUN_02032d34
	mov r0, r4
	bl FUN_020362e0
	ldr r0, _02030434 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020303F0
	mov r0, r4
	bl FUN_ov131_0214bd84
_020303F0:
	mov r0, r4
	bl FUN_02036934
	mov r0, r4
	bl FUN_02037170
	mov r0, r4
	bl FUN_020375c4
	mov r0, r4
	bl FUN_020359c0
	mov r0, r4
	bl FUN_02038600
	mov r0, r4
	bl FUN_020397b4
	mov r0, r4
	bl FUN_02039f08
	mov r0, r4
	bl FUN_0203ad60
	ldmfd sp!, {r4, pc}
_02030434: .word unk_02099F44
	arm_func_end FUN_020303bc

	arm_func_start FUN_02030438
FUN_02030438: ; 0x02030438
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r2, #0x48
_02030444:
	mla r3, r4, r2, r0
	add r3, r3, #0x2000
	ldr r12, [r3, #0x870]
	add lr, r1, r4, lsl #4
	str r12, [r1, r4, lsl #4]
	ldr r12, [r3, #0x874]
	add r4, r4, #1
	str r12, [lr, #4]
	ldr r12, [r3, #0x898]
	cmp r4, #0x20
	str r12, [lr, #8]
	ldr r3, [r3, #0x89c]
	str r3, [lr, #0xc]
	blt _02030444
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02030438

	arm_func_start FUN_02030480
FUN_02030480: ; 0x02030480
	stmfd sp!, {r3, r4, r5, lr}
	add r2, r0, #0x870
	mov r4, #0
	add r5, r2, #0x2000
	mov r3, r4
_02030494:
	ldr r2, [r1, r4, lsl #4]
	add lr, r1, r4, lsl #4
	str r2, [r5]
	ldr r12, [lr, #4]
	add r4, r4, #1
	str r12, [r5, #4]
	ldr r2, [lr, #8]
	cmp r12, #0
	str r2, [r5, #0x28]
	ldr r2, [lr, #0xc]
	str r2, [r5, #0x2c]
	strh r3, [r5, #0xa]
	ldrneh r2, [r5, #0xa]
	orrne r2, r2, #1
	strneh r2, [r5, #0xa]
	cmp r4, #0x20
	add r5, r5, #0x48
	blt _02030494
	bl FUN_02037c58
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02030480

	arm_func_start FUN_020304e4
FUN_020304e4: ; 0x020304E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, r1
	mov r6, r2
	str r1, [r4]
	mov r5, #1
	bl FUN_02041fec
	str r0, [r4, #4]
	bl FUN_02029d54
	cmp r0, #2
	beq _0203052C
	cmp r0, #3
	beq _02030524
	cmp r0, #0x6b
	beq _02030530
	b _02030538
_02030524:
	mov r0, #0x84
	b _0203053C
_0203052C:
	b _02030530
_02030530:
	mov r0, #0x36
	b _0203053C
_02030538:
	mov r0, #0x83
_0203053C:
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	mov r0, r4
	mov r1, r6
	bl FUN_02032e30
	ldr r0, _02030580 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02030570
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl FUN_0203ba04
_02030570:
	add r0, r4, #0x4000
	mov r1, #0
	strb r1, [r0, #0x254]
	ldmfd sp!, {r4, r5, r6, pc}
_02030580: .word unk_02099EF0
	arm_func_end FUN_020304e4

	arm_func_start FUN_02030584
FUN_02030584: ; 0x02030584
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02031a2c
	mov r0, r4
	bl FUN_02032f3c
	mov r0, r4
	bl FUN_020362e0
	ldr r0, _0203062C ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020305B8
	mov r0, r4
	bl FUN_ov131_0214bd84
_020305B8:
	mov r0, r4
	bl FUN_02036934
	mov r0, r4
	bl FUN_02037170
	mov r0, r4
	bl FUN_020375c4
	mov r0, r4
	bl FUN_020359c0
	mov r0, r4
	bl FUN_02038600
	mov r0, r4
	bl FUN_020397b4
	mov r0, r4
	bl FUN_02039f08
	mov r0, r4
	bl FUN_0203ad60
	ldr r0, _02030630 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203061C
	bl FUN_02029d54
	cmp r0, #2
	bne _0203061C
	mov r0, r4
	bl FUN_0203b888
_0203061C:
	ldr r0, _02030634 ; =0x02099EB8
	ldr r0, [r0]
	bl FUN_02052928
	ldmfd sp!, {r4, pc}
_0203062C: .word unk_02099F44
_02030630: .word unk_02099EF0
_02030634: .word unk_02099EB8
	arm_func_end FUN_02030584

	arm_func_start FUN_02030638
FUN_02030638: ; 0x02030638
	stmfd sp!, {r4, lr}
	ldr r1, _02030730 ; =0x0209A110
	mov r4, r0
	ldr r2, [r1]
	add r1, r4, #0x1000
	str r2, [r1, #0x3e0]
	bl FUN_02031b1c
	mov r0, r4
	bl FUN_0203ab80
	add r1, r4, #0x4200
	add r0, r4, #0x4000
	ldrh r2, [r1, #0x5c]
	ldr r1, _02030734 ; =0x000003F3
	ldr r3, [r0, #0x280]
	and r1, r2, r1
	mov r0, r4
	orr r1, r3, r1
	bl FUN_02033148
	mov r0, r4
	bl FUN_02035a3c
	mov r0, r4
	bl FUN_02036348
	ldr r0, _02030738 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020306A8
	mov r0, r4
	bl FUN_ov131_0214bdd0
_020306A8:
	mov r0, r4
	bl FUN_02036998
	mov r0, r4
	bl FUN_020371cc
	mov r0, r4
	bl FUN_02038670
	mov r0, r4
	bl FUN_02039868
	mov r0, r4
	bl FUN_0203a058
	mov r0, r4
	bl FUN_0203a51c
	mov r0, r4
	bl FUN_0203de60
	ldr r0, _0203073C ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203071C
	bl FUN_ov132_0213aefc
	cmp r0, #0
	beq _0203071C
	bl FUN_02029d54
	cmp r0, #2
	bne _0203071C
	bl FUN_ov16_020f2aa4
	cmp r0, #0
	bne _0203071C
	mov r0, r4
	bl FUN_0203addc
_0203071C:
	mov r0, r4
	bl FUN_020379cc
	mov r0, r4
	bl FUN_02038bac
	ldmfd sp!, {r4, pc}
_02030730: .word unk_0209A110
_02030734: .word 0x000003F3
_02030738: .word unk_02099F44
_0203073C: .word unk_02099EF0
	arm_func_end FUN_02030638

	arm_func_start FUN_02030740
FUN_02030740: ; 0x02030740
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	mov r6, #0
	bls _02030788
	mov r7, r3, asr #0x1f
_02030754:
	sub r12, r1, r2
	umull r4, lr, r12, r3
	mla lr, r12, r7, lr
	mov r12, r12, asr #0x1f
	adds r5, r4, #0x800
	mla lr, r12, r3, lr
	adc r4, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	add r6, r6, #1
	cmp r6, r0
	add r2, r2, r5
	blo _02030754
_02030788:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02030740

	arm_func_start FUN_02030790
FUN_02030790: ; 0x02030790
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r9, r0
	ldr r0, [r9]
	mov r8, r1
	mov r7, r2
	ldr r10, _02030F40 ; =0x020A9C40
	ldr r4, _02030F44 ; =0x0209A454
	mov r6, #1
	mov r5, #0
	bl FUN_02041fec
	add r1, r9, #0x1000
	str r0, [r1, #0x3e8]
	cmp r8, #0x24
	addls pc, pc, r8, lsl #2
	b _02030F38
_020307D0: ; jump table
	b _02030F38 ; case 0
	b _02030864 ; case 1
	b _020308A0 ; case 2
	b _020308B8 ; case 3
	b _020308E8 ; case 4
	b _02030900 ; case 5
	b _02030930 ; case 6
	b _02030960 ; case 7
	b _020309DC ; case 8
	b _02030A4C ; case 9
	b _02030A7C ; case 10
	b _02030BD8 ; case 11
	b _02030A64 ; case 12
	b _02030C3C ; case 13
	b _02030C0C ; case 14
	b _02030C54 ; case 15
	b _02030AF4 ; case 16
	b _02030B30 ; case 17
	b _02030B68 ; case 18
	b _02030BA0 ; case 19
	b _02030F38 ; case 20
	b _02030A14 ; case 21
	b _02030880 ; case 22
	b _02030F38 ; case 23
	b _02030CC4 ; case 24
	b _02030CF4 ; case 25
	b _02030D50 ; case 26
	b _02030D80 ; case 27
	b _020309C4 ; case 28
	b _02030DB0 ; case 29
	b _02030DFC ; case 30
	b _02030E28 ; case 31
	b _02030E40 ; case 32
	b _02030AB8 ; case 33
	b _02030E98 ; case 34
	b _02030ED8 ; case 35
	b _02030F10 ; case 36
_02030864:
	str r6, [r4, #0x24]
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x60
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030880:
	mov r0, #5
	str r0, [r4, #0x24]
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x60
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020308A0:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x85
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020308B8:
	ldr r5, [r9]
	mov r4, #0x86
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020308E8:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x88
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030900:
	ldr r5, [r9]
	mov r4, #0x89
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030930:
	ldr r5, [r9]
	mov r4, #0x61
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030960:
	cmp r7, #0
	bne _02030974
	ldr r0, _02030F48 ; =0x02099ED8
	mov r1, r5
	b _0203097C
_02030974:
	ldr r0, _02030F48 ; =0x02099ED8
	mov r1, r6
_0203097C:
	ldr r0, [r0]
	bl FUN_ov0_020cd104
	ldr r0, _02030F48 ; =0x02099ED8
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov0_020cd0ec
	ldr r5, [r9]
	mov r4, #0x8a
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020309C4:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x8f
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020309DC:
	mov r1, r5
	str r1, [r4, #8]
	strb r1, [r4, #0xc]
	mov r0, #2
	str r0, [r4, #4]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x1d]
	ldr r0, [r9]
	mov r2, #0x5f
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A14:
	mov r1, r5
	str r1, [r4, #8]
	strb r1, [r4, #0xc]
	mov r0, #3
	str r0, [r4, #4]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x1d]
	ldr r0, [r9]
	mov r2, #0x5f
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A4C:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x64
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A64:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x65
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A7C:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r5, [r9]
	mov r4, #0x66
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030AB8:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r5, [r9]
	mov r4, #0x7b
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030AF4:
	ldr r0, _02030F40 ; =0x020A9C40
	orr r1, r7, #0x80000000
	bl FUN_020460f0
	ldr r5, [r9]
	mov r4, #0x66
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030B30:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x6c
	bl FUN_02041ef0
	mov r0, r4
	mov r1, r6
	mov r2, #0x5d
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030B68:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x6b
	bl FUN_02041ef0
	mov r0, r4
	mov r2, r5
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030BA0:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x6e
	bl FUN_02041ef0
	mov r0, r4
	mov r1, r6
	mov r2, #0x5d
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030BD8:
	strb r7, [r4, #0x3a]
	ldr r5, [r9]
	mov r4, #0x8b
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030C0C:
	ldr r5, [r9]
	mov r4, #0x8c
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030C3C:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x68
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030C54:
	ldr r3, _02030F4C ; =0x0208FCF8
	add r5, sp, #0
	mov r2, #5
_02030C60:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _02030C60
	mvn r5, #0
	add r1, sp, #0
	mov r0, r10
	mov r2, r5
	bl FUN_02045938
	mov r1, #0
	strh r7, [r10]
	str r1, [r4]
	ldr r0, [r9]
	mov r2, #0x5e
	bl FUN_02041eac
	ldr r0, _02030F50 ; =0x020AF81C
	mov r1, r5
	mov r2, r5
	bl FUN_02044e40
	add r0, r9, #0x1000
	add sp, sp, #0x40
	str r5, [r0, #0x3e8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030CC4:
	ldr r5, [r9]
	mov r4, #0x87
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030CF4:
	bl FUN_ov16_020f081c
	strb r6, [r4, #0x2e]
	strb r6, [r4, #0x2f]
	mov r1, r5
	strb r1, [r4, #0x30]
	strb r1, [r4, #0x31]
	strb r1, [r4, #0x32]
	strb r1, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r1, [r4, #0x29]
	strb r6, [r4, #0x2a]
	strb r1, [r4, #0x2b]
	ldr r5, [r9]
	mov r4, #0x5a
	mov r0, r5
	mov r2, r4
	bl FUN_02041ef0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030D50:
	ldr r5, [r9]
	mov r4, #0x72
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030D80:
	ldr r5, [r9]
	mov r4, #0x73
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030DB0:
	ldr r5, [r9]
	mov r4, #0x61
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_02041eac
	sub r4, r6, #2
	ldr r0, _02030F50 ; =0x020AF81C
	mov r1, r4
	mov r2, r4
	bl FUN_02044e40
	add r0, r9, #0x1000
	add sp, sp, #0x40
	str r4, [r0, #0x3e8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030DFC:
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r4
	mov r2, r5
	mov r1, r6
	bl FUN_02041eac
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030E28:
	ldr r0, [r9]
	mov r1, r6
	mov r2, #0x83
	bl FUN_02041eac
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030E40:
	ldr r7, [r9]
	mov r1, r5
	mov r0, r7
	bl FUN_02041f2c
	mov r0, r7
	mov r1, r6
	bl FUN_02041f2c
	sub r6, r6, #2
	ldr r0, _02030F50 ; =0x020AF81C
	mov r1, r6
	mov r2, r6
	bl FUN_02044e40
	add r0, r9, #0x1000
	str r6, [r0, #0x3e8]
	strb r5, [r4, #0x34]
	strh r5, [r4, #0x2c]
	strb r5, [r4, #0x35]
	strb r5, [r4, #0x36]
	strb r5, [r4, #0x37]
	add sp, sp, #0x40
	strb r5, [r4, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030E98:
	ldr r0, _02030F48 ; =0x02099ED8
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov0_020cd0ec
	ldr r5, [r9]
	mov r4, #0x8e
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030ED8:
	mov r1, r5
	str r1, [r4, #8]
	strb r1, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #4]
	strb r1, [r4, #0x1e]
	strb r6, [r4, #0x1f]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x1d]
	ldr r0, [r9]
	mov r2, #0x5f
	bl FUN_02041ef0
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030F10:
	ldr r5, [r9]
	mov r4, #0x79
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041ef0
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_02041ef0
_02030F38:
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030F40: .word unk_020A9C40
_02030F44: .word unk_0209A454
_02030F48: .word unk_02099ED8
_02030F4C: .word unk_0208FCF8
_02030F50: .word unk_020AF81C
	arm_func_end FUN_02030790

	arm_func_start FUN_02030f54
FUN_02030f54: ; 0x02030F54
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f1670
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x3e8]
	cmp r0, #0
	movlt r0, #1
	ldmltfd sp!, {r4, pc}
	ldr r0, [r4]
	bl FUN_02041fec
	add r1, r4, #0x1000
	ldr r1, [r1, #0x3e8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02030f54

	arm_func_start FUN_02030fa0
FUN_02030fa0: ; 0x02030FA0
	stmfd sp!, {r4, lr}
	bl FUN_02029d54
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
	ldr r4, _02030FD8 ; =0x020AF81C
	mov r0, r4
	bl FUN_0204457c
	ldr r3, _02030FDC ; =0x020B581C
	mov r2, #0
	mov r0, r4
	mov r1, #0x3d
	str r2, [r3, #0x220]
	bl FUN_02044e40
	ldmfd sp!, {r4, pc}
_02030FD8: .word unk_020AF81C
_02030FDC: .word unk_020B581C
	arm_func_end FUN_02030fa0

	arm_func_start FUN_02030fe0
FUN_02030fe0: ; 0x02030FE0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	beq _02031004
	cmp r1, #1
	beq _0203100C
	cmp r1, #2
	ldreq r5, [r6, #0xc]
	b _02031010
_02031004:
	ldr r5, [r6, #4]
	b _02031010
_0203100C:
	ldr r5, [r6, #8]
_02031010:
	mov r4, #0
	ldr r0, _02031044 ; =0x020AF81C
	mov r1, r4
	bl FUN_0204451c
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	bl FUN_02041eac
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_02031044: .word unk_020AF81C
	arm_func_end FUN_02030fe0

	arm_func_start FUN_02031048
FUN_02031048: ; 0x02031048
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f1670
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	bl FUN_02041fec
	mov r4, r0
	ldr r0, [r5]
	bl FUN_0204201c
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02031048

	arm_func_start FUN_02031084
FUN_02031084: ; 0x02031084
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	cmp r5, #0x20
	bgt _020310C4
	bge _02031118
	cmp r5, #0x12
	bgt _0203114C
	cmp r5, #0x10
	blt _0203114C
	beq _020310E0
	cmp r5, #0x11
	beq _0203110C
	cmp r5, #0x12
	beq _02031110
	b _0203114C
_020310C4:
	cmp r5, #0x21
	bgt _020310D4
	beq _02031144
	b _0203114C
_020310D4:
	cmp r5, #0x22
	beq _02031148
	b _0203114C
_020310E0:
	ldr r0, _020311B4 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020310FC
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02031104
_020310FC:
	bl FUN_ov16_020f1320
	b _0203114C
_02031104:
	bl FUN_ov16_020f1300
	b _0203114C
_0203110C:
	b _02031104
_02031110:
	bl FUN_ov16_020f1310
	b _0203114C
_02031118:
	ldr r0, _020311B4 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02031134
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0203113C
_02031134:
	bl FUN_ov16_020f13d4
	b _0203114C
_0203113C:
	bl FUN_ov16_020f13b4
	b _0203114C
_02031144:
	b _0203113C
_02031148:
	bl FUN_ov16_020f13c4
_0203114C:
	ands r0, r5, #0xf
	beq _02031168
	cmp r0, #1
	beq _0203119C
	cmp r0, #2
	beq _020311A8
	ldmfd sp!, {r3, r4, r5, pc}
_02031168:
	ldr r0, _020311B4 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02031184
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02031190
_02031184:
	mov r0, r4
	bl FUN_ov16_020f1490
	ldmfd sp!, {r3, r4, r5, pc}
_02031190:
	mov r0, r4
	bl FUN_ov16_020f1468
	ldmfd sp!, {r3, r4, r5, pc}
_0203119C:
	mov r0, r4
	bl FUN_ov16_020f1468
	ldmfd sp!, {r3, r4, r5, pc}
_020311A8:
	mov r0, r4
	bl FUN_ov16_020f147c
	ldmfd sp!, {r3, r4, r5, pc}
_020311B4: .word unk_02099EF0
	arm_func_end FUN_02031084

	arm_func_start FUN_020311b8
FUN_020311b8: ; 0x020311B8
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0x12
	bgt _0203120C
	bge _02031270
	cmp r1, #0x10
	bgt _02031200
	bge _02031230
	cmp r1, #2
	ldmgtfd sp!, {r4, pc}
	cmp r1, #0
	ldmltfd sp!, {r4, pc}
	beq _02031230
	cmp r1, #1
	beq _02031264
	cmp r1, #2
	beq _02031270
	ldmfd sp!, {r4, pc}
_02031200:
	cmp r1, #0x11
	beq _02031264
	ldmfd sp!, {r4, pc}
_0203120C:
	cmp r1, #0x21
	bgt _02031224
	bge _020312B0
	cmp r1, #0x20
	beq _0203127C
	ldmfd sp!, {r4, pc}
_02031224:
	cmp r1, #0x22
	beq _020312BC
	ldmfd sp!, {r4, pc}
_02031230:
	ldr r0, _020312C8 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203124C
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02031258
_0203124C:
	mov r0, r4
	bl FUN_ov16_020f153c
	ldmfd sp!, {r4, pc}
_02031258:
	mov r0, r4
	bl FUN_ov16_020f1514
	ldmfd sp!, {r4, pc}
_02031264:
	mov r0, r4
	bl FUN_ov16_020f1514
	ldmfd sp!, {r4, pc}
_02031270:
	mov r0, r4
	bl FUN_ov16_020f1528
	ldmfd sp!, {r4, pc}
_0203127C:
	ldr r0, _020312C8 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02031298
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020312A4
_02031298:
	mov r0, r4
	bl FUN_ov16_020f15dc
	ldmfd sp!, {r4, pc}
_020312A4:
	mov r0, r4
	bl FUN_ov16_020f15b4
	ldmfd sp!, {r4, pc}
_020312B0:
	mov r0, r4
	bl FUN_ov16_020f15b4
	ldmfd sp!, {r4, pc}
_020312BC:
	mov r0, r4
	bl FUN_ov16_020f15c8
	ldmfd sp!, {r4, pc}
_020312C8: .word unk_02099EF0
	arm_func_end FUN_020311b8

	arm_func_start FUN_020312cc
FUN_020312cc: ; 0x020312CC
	ldr r12, _020312D4 ; =FUN_ov16_020f1670
	bx r12
_020312D4: .word FUN_ov16_020f1670
	arm_func_end FUN_020312cc

	arm_func_start FUN_020312d8
FUN_020312d8: ; 0x020312D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x54
	mov r10, r0
	mov r9, r1
	mov r5, #0x30
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	mov r8, r2
	mov r7, r3
	cmp r1, #0
	beq _02031354
	ldr r4, _02031534 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r10, #0x3f0
	add r0, r0, #0x1000
	mla r0, r9, r5, r0
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
_02031354:
	ldr r5, _02031534 ; =0x02099F38
	add r1, r10, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	mov r3, #0xa
	bl FUN_ov16_02113f7c
	add r1, r10, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	mov r3, #0xc8
	bl FUN_ov16_021139bc
	add r0, r10, #0x1000
	ldr r1, [r0, #0x3e4]
	ldr r0, [r5]
	add r2, r9, #1
	mov r3, #0x1f
	bl FUN_ov16_02113a80
	ldr r0, [r5]
	add r1, r10, #0x1000
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	ldr r3, _02031538 ; =0x00007FFF
	bl FUN_ov16_02113b00
	mov r6, #0
	str r6, [sp]
	ldr r0, [r5]
	add r1, r10, #0x1000
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	mov r3, r6
	bl FUN_ov16_02114150
	ldrb r0, [r8, #3]
	ldrb r4, [r8, #2]
	ldrb r3, [r8]
	ldrb r2, [r8, #1]
	ldr r1, _0203153C ; =0x6D62765F
	mov r2, r2, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, r4, lsl #8
	orr r2, r0, r2
	cmp r2, r1
	beq _02031418
	ldr r0, _02031540 ; =0x7463765F
	mov r4, #0x30
	cmp r2, r0
	beq _0203145C
	b _02031498
_02031418:
	add r4, sp, #0x14
	ldr r1, _02031544 ; =0x0208FD04
	mov r0, r4
	mov r2, r8
	bl STD_TSPrintf
	ldr r1, _02031548 ; =0x0209A200
	ldr r0, [r5]
	ldr r2, [r1, #0x1c]
	mov r1, #1
	stmia sp, {r1, r6}
	mov r3, r4
	mov r1, #5
	str r6, [sp, #8]
	bl FUN_02058684
	mov r1, #0x30
	mla r1, r9, r1, r10
	b _020314D8
_0203145C:
	add r11, sp, #0x14
	ldr r1, _0203154C ; =0x0208FD0C
	mov r0, r11
	mov r2, r8
	bl STD_TSPrintf
	ldr r1, _02031548 ; =0x0209A200
	ldr r0, [r5]
	ldr r2, [r1, #0x20]
	mov r1, #1
	stmia sp, {r1, r6}
	mov r3, r11
	mov r1, #5
	str r6, [sp, #8]
	bl FUN_02058684
	b _020314D4
_02031498:
	add r11, sp, #0x14
	ldr r1, _02031550 ; =0x0208FD14
	mov r0, r11
	mov r2, r8
	bl STD_TSPrintf
	ldr r0, [r5]
	mov r2, r11
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r1, #5
	mov r3, #1
	str r6, [sp, #0x10]
	bl FUN_02058800
_020314D4:
	mla r1, r9, r4, r10
_020314D8:
	add r1, r1, #0x1000
	str r0, [r1, #0x3f0]
	mov r0, #0x30
	mul r4, r9, r0
	add r0, r10, r4
	add r0, r0, #0x1000
	mov r1, #1
	strb r1, [r0, #0x3f6]
	mov r3, #0
	strb r3, [r0, #0x3f4]
	strb r7, [r0, #0x3f5]
	str r3, [r0, #0x400]
	str r3, [r0, #0x404]
	add r1, r10, #0xf7
	ldr r2, [sp, #0x78]
	str r3, [r0, #0x3fc]
	str r2, [r0, #0x3f8]
	add r1, r1, #0x1300
	ldrsb r0, [r1, r4]
	orr r0, r0, #1
	strb r0, [r1, r4]
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02031534: .word unk_02099F38
_02031538: .word 0x00007FFF
_0203153C: .word 0x6D62765F
_02031540: .word 0x7463765F
_02031544: .word unk_0208FD04
_02031548: .word unk_0209A200
_0203154C: .word unk_0208FD0C
_02031550: .word unk_0208FD14
	arm_func_end FUN_020312d8

	arm_func_start FUN_02031554
FUN_02031554: ; 0x02031554
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0x30
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3f0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020315EC ; =0x02099F38
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3e4]
	add r2, r6, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_020591e8
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r7, #0x3f0
	add r0, r0, #0x1000
	mla r0, r6, r5, r0
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020315EC: .word unk_02099F38
	arm_func_end FUN_02031554

	arm_func_start FUN_020315f0
FUN_020315f0: ; 0x020315F0
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r1, #0x30
	mla r1, lr, r1, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3f0]
	mov r12, r2
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	and r1, r3, #0xff
	ldr r2, _0203163C ; =0x02099F38
	str r1, [sp]
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3e4]
	add r2, lr, #1
	and r3, r12, #0xff
	bl FUN_ov16_02114150
	ldmfd sp!, {r3, pc}
_0203163C: .word unk_02099F38
	arm_func_end FUN_020315f0

	arm_func_start FUN_02031640
FUN_02031640: ; 0x02031640
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0x30
	mul r7, r1, r4
	mov r8, r0
	add r0, r8, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x1c]
	mov r3, r3, lsl #0xc
	cmp r1, #0
	ldrne r1, [r0, #0x400]
	ldrne r0, [r0, #0x404]
	mov r2, r2, lsl #0xc
	addne r3, r3, r0
	ldr r6, [sp, #0x18]
	addne r2, r2, r1
	add r0, r8, r7
	cmp r6, #0
	addeq r0, r0, #0x1000
	streq r2, [r0, #0x400]
	streq r3, [r0, #0x404]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r12, r0, #0x1000
	add r0, r8, #8
	add r1, r8, #0xc
	add r4, r1, #0x1400
	str r6, [r12, #0x3fc]
	add r5, r0, #0x1400
	str r2, [r5, r7]
	str r3, [r4, r7]
	ldr r2, [r5, r7]
	ldr r0, [r12, #0x400]
	mov r1, r6
	sub r0, r2, r0
	str r0, [r5, r7]
	ldr r2, [r4, r7]
	ldr r0, [r12, #0x404]
	sub r0, r2, r0
	str r0, [r4, r7]
	ldr r0, [r5, r7]
	bl _s32_div_f
	str r0, [r5, r7]
	ldr r0, [r4, r7]
	mov r1, r6
	bl _s32_div_f
	add r1, r8, #0xf7
	add r1, r1, #0x1300
	str r0, [r4, r7]
	ldrsb r0, [r1, r7]
	orr r0, r0, #0x10
	strb r0, [r1, r7]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02031640

	arm_func_start FUN_02031718
FUN_02031718: ; 0x02031718
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	cmp r2, #0
	mov r5, r0
	mov r4, r1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r1, r2
	mov r2, r3
	bl FUN_ov131_0214aabc ; may be ov132
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r2, _020317EC ; =0x02099ED8
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_020552cc
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldr lr, [r0, #0x84]
	ldr r2, [sp, #0x28]
	str lr, [sp, #0x10]
	ldr r12, [r0, #0x88]
	add lr, lr, r2
	str r12, [sp, #0x14]
	ldr r3, [r0, #0x8c]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r12, r12, r1
	add r3, r3, r0
	add r0, sp, #0x10
	add r1, sp, #0xc
	add r2, sp, #8
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	bl NNS_G3dWorldPosToScrPos
	ldr r1, [sp, #0x34]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_02031640
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_020317EC: .word unk_02099ED8
	arm_func_end FUN_02031718

	arm_func_start FUN_020317f0
FUN_020317f0: ; 0x020317F0
	stmfd sp!, {r3, lr}
	mov r12, r1
	mov r1, #0x30
	mla r1, r12, r1, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3f0]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r3, lsl #0x10
	mov r1, r1, asr #0x10
	ldr lr, _02031840 ; =0x02099F38
	str r1, [sp]
	add r1, r0, #0x1000
	mov r3, r2, lsl #0x10
	ldr r0, [lr]
	ldr r1, [r1, #0x3e4]
	add r2, r12, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	ldmfd sp!, {r3, pc}
_02031840: .word unk_02099F38
	arm_func_end FUN_020317f0

	arm_func_start FUN_02031844
FUN_02031844: ; 0x02031844
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	mov r6, #0x30
	mla r0, r4, r6, r5
	add r12, r0, #0x1000
	ldr r0, [r12, #0x3f0]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [sp, #0x10]
	rsb r0, r2, r2, lsl #5
	str r0, [r12, #0x414]
	cmp r1, #0
	bne _020318A4
	ldr r2, [r12, #0x414]
	ldr r0, _020318E4 ; =0x02099F38
	mov r3, r2, asr #0xc
	add r1, r5, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	and r3, r3, #0xff
	bl FUN_ov16_02113a80
	ldmfd sp!, {r4, r5, r6, pc}
_020318A4:
	str r1, [r12, #0x410]
	rsb lr, r3, r3, lsl #5
	sub r0, r3, r2
	str lr, [r12, #0x41c]
	bl _s32_div_f
	mul r3, r4, r6
	add r2, r5, r3
	add r1, r5, #0xf7
	rsb r4, r0, r0, lsl #5
	add r0, r2, #0x1000
	str r4, [r0, #0x418]
	add r1, r1, #0x1300
	ldrsb r0, [r1, r3]
	orr r0, r0, #0x40
	strb r0, [r1, r3]
	ldmfd sp!, {r4, r5, r6, pc}
_020318E4: .word unk_02099F38
	arm_func_end FUN_02031844

	arm_func_start FUN_020318e8
FUN_020318e8: ; 0x020318E8
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r1, #0x30
	mla r1, lr, r1, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3f0]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r12, _0203192C ; =0x02099F38
	add r1, r0, #0x1000
	mov r3, r2, lsl #0x10
	ldr r0, [r12]
	ldr r1, [r1, #0x3e4]
	add r2, lr, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldmfd sp!, {r3, pc}
_0203192C: .word unk_02099F38
	arm_func_end FUN_020318e8

	arm_func_start FUN_02031930
FUN_02031930: ; 0x02031930
	mov r3, #0x30
	mla r0, r1, r3, r0
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	strneb r2, [r0, #0x3f4]
	bx lr
	arm_func_end FUN_02031930

	arm_func_start FUN_0203194c
FUN_0203194c: ; 0x0203194C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r0, #0x30
	mla r0, r4, r0, r5
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, #0
	str r1, [r0, #0x400]
	str r1, [r0, #0x404]
	mov r3, #0x64
	ldr r6, _02031A04 ; =0x02099F38
	str r3, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	bl FUN_ov16_02113c60
	mov r0, #1
	str r0, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	mov r3, #8
	bl FUN_ov16_02113ec0
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	mov r3, #0x12c
	bl FUN_ov16_021139bc
	add r1, r5, #0x1000
	add r2, r4, #1
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	mov r3, #0x100
	bl FUN_ov16_02113d08
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02031A04: .word unk_02099F38
	arm_func_end FUN_0203194c

	arm_func_start FUN_02031a08
FUN_02031a08: ; 0x02031A08
	mov r2, #0x30
	mla r2, r1, r2, r0
	add r0, r2, #0x1000
	ldr r0, [r0, #0x3f0]
	cmp r0, #0
	addne r0, r2, #0x1300
	ldrnesb r0, [r0, #0xf7]
	moveq r0, #0
	bx lr
	arm_func_end FUN_02031a08

	arm_func_start FUN_02031a2c
FUN_02031a2c: ; 0x02031A2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, #0
	add r0, r10, #0x3f0
	mov r6, #0x30
	add r7, r0, #0x1000
	add r4, r10, #0x1000
	mov r8, #2
	mov r11, r9
	ldr r5, _02031ADC ; =0x02099F38
	b _02031AD0
_02031A58:
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3f0]
	cmp r0, #0
	beq _02031ACC
	ldr r0, [r5]
	ldr r1, [r4, #0x3e4]
	add r2, r9, #1
	mov r3, r8
	bl FUN_ov16_02113f7c
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r5]
	bl FUN_020591e8
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r5]
	bl FUN_02058ee0
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r5]
	bl FUN_02058ee0
	mla r0, r9, r6, r7
	mov r1, r11
	mov r2, r6
	bl MI_CpuFill8
_02031ACC:
	add r9, r9, #1
_02031AD0:
	cmp r9, #8
	blt _02031A58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02031ADC: .word unk_02099F38
	arm_func_end FUN_02031a2c

	arm_func_start FUN_02031ae0
FUN_02031ae0: ; 0x02031AE0
	stmfd sp!, {r3, lr}
	mov r3, #0x30
	mla r3, r2, r3, r0
	add r2, r3, #0x1000
	ldr r12, [r2, #0x3f0]
	mov r2, r1
	add r1, r0, #0x1000
	ldr r3, _02031B18 ; =0x02099F38
	ldr r1, [r1, #0x3e4]
	ldr r0, [r3]
	add r2, r2, #1
	and r3, r12, #0xff
	bl FUN_ov16_02113890
	ldmfd sp!, {r3, pc}
_02031B18: .word unk_02099F38
	arm_func_end FUN_02031ae0

	arm_func_start FUN_02031b1c
FUN_02031b1c: ; 0x02031B1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, #0
	mov r6, r0
	ldr r10, _02031E64 ; =0x02099F38
	mov r4, #0x30
	mov r5, r11
	b _02031E58
_02031B38:
	mla r2, r5, r4, r6
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	beq _02031E54
	add r0, r2, #0x1300
	ldrsb r0, [r0, #0xf6]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02031E54
_02031B60: ; jump table
	b _02031E54 ; case 0
	b _02031B70 ; case 1
	b _02031BCC ; case 2
	b _02031C5C ; case 3
_02031B70:
	ldr r0, [r10]
	bl FUN_02058e30
	cmp r0, #0
	bne _02031E54
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r3, [r0, #0x3f8]
	ldr r1, [r0, #0x3f0]
	ldr r0, [r10]
	mov r2, #0
	bl FUN_02059038
	ldr r0, [r10]
	add r1, r6, #0x1000
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	add r0, r6, #0xf6
	add r2, r0, #0x1300
	mul r1, r5, r4
	ldrsb r0, [r2, r1]
	add r0, r0, #1
	strb r0, [r2, r1]
_02031BCC:
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r10]
	bl FUN_02059328
	cmp r0, #0
	beq _02031E54
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r3, [r0, #0x3f0]
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mla r1, r5, r4, r6
	str r11, [sp]
	add r1, r1, #0x1300
	ldrsb r3, [r1, #0xf5]
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	bl FUN_ov16_0211401c
	add r0, r6, #0xf7
	add r1, r6, #0xf6
	mul r2, r5, r4
	add r3, r0, #0x1300
	ldrsb r0, [r3, r2]
	add r1, r1, #0x1300
	orr r0, r0, #2
	strb r0, [r3, r2]
	ldrsb r0, [r1, r2]
	add r0, r0, #1
	strb r0, [r1, r2]
_02031C5C:
	mla r0, r5, r4, r6
	add r0, r0, #0x1300
	ldrsb r0, [r0, #0xf4]
	mov r3, #2
	cmp r0, #0
	beq _02031C94
	mov r0, #1
	str r0, [sp]
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	bl FUN_ov16_02113ec0
	b _02031CA8
_02031C94:
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	bl FUN_ov16_02113f7c
_02031CA8:
	mul r12, r5, r4
	add r0, r6, r12
	add r1, r0, #0x1300
	ldrsb r1, [r1, #0xf7]
	tst r1, #0x40
	beq _02031D74
	add r1, r6, #0x14
	add r3, r6, #0x410
	add r9, r1, #0x1400
	add r1, r0, #0x1000
	mov r2, #0
	add r3, r3, #0x1000
	add r0, r6, #0x1000
	b _02031D04
_02031CE0:
	ldr r8, [r9, r12]
	ldr r7, [r1, #0x418]
	add r7, r8, r7
	str r7, [r9, r12]
	ldr r7, [r3, r12]
	subs r7, r7, #1
	str r7, [r3, r12]
	beq _02031D10
	add r2, r2, #1
_02031D04:
	ldr r7, [r0, #0x3e0]
	cmp r2, r7
	blo _02031CE0
_02031D10:
	mov r2, #0x30
	mul r0, r5, r2
	add r1, r6, r0
	add r3, r1, #0x1000
	ldr r1, [r3, #0x410]
	ldr r7, _02031E64 ; =0x02099F38
	cmp r1, #0
	bne _02031D4C
	add r1, r6, #0xf7
	add r8, r1, #0x1300
	ldrsb r1, [r8, r0]
	bic r1, r1, #0x40
	strb r1, [r8, r0]
	ldr r0, [r3, #0x41c]
	str r0, [r3, #0x414]
_02031D4C:
	mla r0, r5, r2, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0x414]
	add r1, r6, #0x1000
	mov r3, r0, asr #0xc
	ldr r0, [r7]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	and r3, r3, #0xff
	bl FUN_ov16_02113a80
_02031D74:
	mul r1, r5, r4
	add r3, r6, r1
	add r0, r3, #0x1300
	ldrsb r0, [r0, #0xf7]
	tst r0, #0x10
	beq _02031E1C
	add r7, r6, #4
	add r8, r6, #0x3fc
	add r12, r3, #0x1000
	mov r2, #0
	add r0, r6, #0x1400
	add r9, r7, #0x1400
	add lr, r8, #0x1000
	add r3, r6, #0x1000
	b _02031DE4
_02031DB0:
	ldr r8, [r0, r1]
	ldr r7, [r12, #0x408]
	add r7, r8, r7
	str r7, [r0, r1]
	ldr r8, [r9, r1]
	ldr r7, [r12, #0x40c]
	add r7, r8, r7
	str r7, [r9, r1]
	ldr r7, [lr, r1]
	subs r7, r7, #1
	str r7, [lr, r1]
	beq _02031DF0
	add r2, r2, #1
_02031DE4:
	ldr r7, [r3, #0x3e0]
	cmp r2, r7
	blo _02031DB0
_02031DF0:
	mov r0, #0x30
	mul r0, r5, r0
	add r1, r6, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3fc]
	cmp r1, #0
	addeq r1, r6, #0xf7
	addeq r2, r1, #0x1300
	ldreqsb r1, [r2, r0]
	biceq r1, r1, #0x10
	streqb r1, [r2, r0]
_02031E1C:
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r1, [r0, #0x404]
	ldr r2, [r0, #0x400]
	mov r0, r1, lsl #4
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r2, lsl #4
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_02031E54:
	add r5, r5, #1
_02031E58:
	cmp r5, #8
	blt _02031B38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02031E64: .word unk_02099F38
	arm_func_end FUN_02031b1c

	arm_func_start FUN_02031e68
FUN_02031e68: ; 0x02031E68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r6, #0
	mov r4, r1
	strb r6, [r5, #0x34]
	tst r0, #1
	bne _02031EA4
	orr r0, r0, #1
	str r0, [r5, #0x10]
	strb r6, [r5, #0x3f]
	strb r6, [r5, #0x3e]
	strb r6, [r5, #0x12e]
	strb r6, [r5, #0x20a]
_02031EA4:
	ldr r0, [sp, #0x48]
	cmp r2, #0
	strneb r2, [r5, #0x3c]
	cmp r3, #0
	strneb r3, [r5, #0x3d]
	cmp r0, #0
	strneb r0, [r5, #0x40]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x58]
	cmp r0, #0
	strneb r0, [r5, #0x41]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	strneb r0, [r5, #0x42]
	ldr r0, [sp, #0x54]
	cmp r0, #0
	strneb r0, [r5, #0x43]
	cmp r1, #0
	addne r0, r5, #0x1300
	strneh r1, [r0, #0x1a]
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	addne r0, r5, #0x1300
	strneh r1, [r0, #0x1c]
	ldr r1, [sp, #0x60]
	cmp r1, #0
	addne r0, r5, #0x1000
	strne r1, [r0, #0x104]
	cmp r4, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r6, _02032034 ; =0x02099F38
	ldrsh r1, [r5, #0x3a]
	mov r8, #0
	ldr r0, [r6]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r8, [sp, #0x20]
	bl FUN_0205935c
	ldrsh r1, [r5, #0x3a]
	ldr r9, [sp, #0x20]
	ldr r0, [r6]
	bl FUN_ov16_02111438
	stmia sp, {r0, r8}
	mov r7, #1
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, _02032038 ; =0x02099ED0
	str r8, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r9
	mov r3, #0x40
	bl FUN_020425fc
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl DC_FlushRange
	ldrsh r1, [r5, #0x3a]
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r2, r9
	str r8, [sp]
	str r8, [sp, #4]
	str r8, [sp, #8]
	bl FUN_02059288
	str r8, [sp]
	ldrsh r1, [r5, #0x36]
	ldr r0, [r6]
	mov r3, r8
	mov r2, r7
	bl FUN_ov16_0211401c
	ldrsb r0, [r5, #0x3d]
	ldr r3, _0203203C ; =0x0208C364
	ldr r1, [r5, #0x48]
	sub r0, r0, #1
	add r0, r3, r0, lsl #2
	ldrsh r0, [r0, #2]
	ldr r12, [r5, #0x44]
	mov r2, r7
	add r0, r0, r1, asr #12
	add r0, r0, #7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsb r4, [r5, #0x3d]
	ldrsh r1, [r5, #0x36]
	ldr r0, [r6]
	sub r4, r4, #1
	mov r4, r4, lsl #2
	ldrsh r3, [r3, r4]
	add r3, r3, r12, asr #12
	add r3, r3, #0xa
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02032034: .word unk_02099F38
_02032038: .word unk_02099ED0
_0203203C: .word unk_0208C364
	arm_func_end FUN_02031e68

	arm_func_start FUN_02032040
FUN_02032040: ; 0x02032040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r10, r0
	mov r11, r2
	mov r8, r3
	cmp r9, #1
	ldr r7, [sp, #0x2c]
	beq _0203206C
	cmp r9, #2
	beq _02032078
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203206C:
	add r4, r10, #0x60
	mov r6, #6
	b _02032080
_02032078:
	add r4, r10, #0x13c
	mov r6, #0xa
_02032080:
	cmp r7, #0
	ldrsb r5, [r4, #0xd1]
	beq _020320C0
	mov r2, #0
	strb r7, [r4, #0xcf]
	strb r2, [r4, #0xcd]
	ldrsb r1, [r4, #0xcf]
	sub r0, r2, #1
	cmp r1, r0
	moveq r1, #1
	streqb r1, [r4, #0xcd]
	ldreqsb r0, [r10, #0x3d]
	moveq r11, r2
	cmpeq r0, r9
	subeq r0, r1, #2
	streqb r0, [r10, #0x3c]
_020320C0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	strneb r0, [r4, #0xd0]
	cmp r11, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x60
	mla r0, r5, r0, r4
	mov r1, r11
	bl STD_CompareString
	cmp r0, #0
	bne _020321C0
	cmp r8, #0
	beq _020321C0
	mov r0, #0x60
	mla r0, r5, r0, r4
	mov r1, r8
	add r0, r0, #0x20
	bl STD_CompareString
	cmp r0, #0
	bne _020321C0
	cmp r7, #0
	beq _02032224
	mov r0, #0
	strb r7, [r4, #0xcf]
	strb r0, [r4, #0xcd]
	ldrsb r1, [r4, #0xcf]
	sub r0, r0, #1
	cmp r1, r0
	beq _02032148
	cmp r1, #1
	beq _02032164
	cmp r1, #2
	beq _020321A8
	b _02032224
_02032148:
	mov r1, #1
	strb r1, [r4, #0xcd]
	ldrsb r0, [r10, #0x3d]
	cmp r0, r9
	subeq r0, r1, #2
	streqb r0, [r10, #0x3c]
	b _02032224
_02032164:
	ldrsb r0, [r4, #0xd2]
	cmp r0, #0
	bne _02032224
	ldr r9, _020322B0 ; =0x02099F38
	ldr r7, _020322B4 ; =0x00007FFF
_02032178:
	ldrsh r1, [r10, #0x36]
	ldr r0, [r9]
	mov r3, r7
	add r2, r6, r5, lsl #1
	bl FUN_ov16_02113b00
	add r2, r6, #1
	ldrsh r1, [r10, #0x36]
	ldr r0, [r9]
	mov r3, r7
	add r2, r2, r5, lsl #1
	bl FUN_ov16_02113b00
	b _02032224
_020321A8:
	ldrsb r0, [r4, #0xd2]
	cmp r0, #0
	bne _02032224
	ldr r9, _020322B0 ; =0x02099F38
	ldr r7, _020322B8 ; =0x0000318C
	b _02032178
_020321C0:
	eor r1, r5, #1
	mov r6, #0x60
	mla r0, r1, r6, r4
	mov r1, r11
	bl STD_CompareString
	cmp r0, #0
	bne _0203220C
	cmp r8, #0
	beq _0203220C
	eor r0, r5, #1
	mla r2, r0, r6, r4
	mov r1, r8
	add r0, r2, #0x20
	bl STD_CompareString
	cmp r0, #0
	eoreq r0, r5, #1
	addeq r0, r0, #1
	streqb r0, [r4, #0xd2]
	beq _02032224
_0203220C:
	eor r1, r5, #1
	mla r0, r1, r6, r4
	mov r1, r11
	bl STD_CopyString
	sub r0, r6, #0x61
	strb r0, [r4, #0xd2]
_02032224:
	ldrb r0, [sp, #0x34]
	mov r6, #0x60
	strb r0, [r4, #0xcc]
	ldrsb r0, [r4, #0xd2]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	eor r0, r5, #1
	bne _02032280
	mla r3, r0, r6, r4
	mov r8, #0
	mov r7, #0x20
	mov r1, r8
	mov r2, r7
	add r0, r3, #0x20
	bl MI_CpuFill8
	eor r0, r5, #1
	mla r3, r0, r6, r4
	mov r1, r8
	mov r2, r7
	add r0, r3, #0x40
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02032280:
	mla r2, r0, r6, r4
	mov r1, r8
	add r0, r2, #0x20
	bl STD_CopyString
	ldr r1, [sp, #0x28]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	eor r0, r5, #1
	mla r2, r0, r6, r4
	add r0, r2, #0x40
	bl STD_CopyString
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020322B0: .word unk_02099F38
_020322B4: .word 0x00007FFF
_020322B8: .word 0x0000318C
	arm_func_end FUN_02032040

	arm_func_start FUN_020322bc
FUN_020322bc: ; 0x020322BC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x2c]
	orr r2, r0, #0x100
	add r0, r4, #0x1000
	mov r1, #2
	mov r7, #0
	strb r1, [r0, #0x324]
	str r3, [r0, #0x320]
	ldr r5, _02032380 ; =0x02099F38
	str r2, [r4, #0x10]
	mov r6, #0xe
	strb r7, [r0, #0x325]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r3, #0x64
	str r3, [sp]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114150
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	add r3, sp, #8
	bl FUN_ov16_02114480
	ldr r1, [sp, #8]
	add r0, r4, #0x1300
	strh r1, [r0, #0x26]
	ldrsb r1, [r0, #0x24]
	ldr r0, [sp, #4]
	bl _s32_div_f
	add r1, r4, #0x1300
	strh r0, [r1, #0x28]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02032380: .word unk_02099F38
	arm_func_end FUN_020322bc

	arm_func_start FUN_02032384
FUN_02032384: ; 0x02032384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r8, #0x30
	mla r0, r6, r8, r7
	add r0, r0, #0x1000
	ldr r4, _02032478 ; =0x02099F38
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	mov r5, r2
	bl FUN_02058e30
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mla r0, r6, r8, r7
	ldr r1, [r7, #0x10]
	add r0, r0, #0x1000
	orr r1, r1, #0x100
	str r1, [r7, #0x10]
	ldr r3, [r0, #0x3f0]
	add r0, r7, #0x1000
	mov r8, #0
	mov r6, #0xe
	str r3, [r0, #0x320]
	ldrsh r1, [r7, #0x36]
	strb r8, [r0, #0x325]
	strb r5, [r0, #0x324]
	ldr r0, [r4]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldrsh r1, [r7, #0x36]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r8
	bl FUN_ov16_0211401c
	mov r3, #0x64
	str r3, [sp]
	ldrsh r1, [r7, #0x36]
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_02114150
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r7, #0x36]
	ldr r0, [r4]
	mov r2, r6
	add r3, sp, #8
	bl FUN_ov16_02114480
	ldr r1, [sp, #8]
	add r0, r7, #0x1300
	strh r1, [r0, #0x26]
	ldrsb r1, [r0, #0x24]
	ldr r0, [sp, #4]
	bl _s32_div_f
	add r1, r7, #0x1300
	strh r0, [r1, #0x28]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02032478: .word unk_02099F38
	arm_func_end FUN_02032384

	arm_func_start FUN_0203247c
FUN_0203247c: ; 0x0203247C
	add r0, r0, #0x1300
	ldrsb r0, [r0, #0x25]
	bx lr
	arm_func_end FUN_0203247c

	arm_func_start FUN_02032488
FUN_02032488: ; 0x02032488
	ldr r1, [r0, #0x10]
	orr r1, r1, #0x200
	str r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_02032488

	arm_func_start FUN_02032498
FUN_02032498: ; 0x02032498
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	add r12, r4, #0x1300
	ldrsh r5, [r12, #0x1c]
	mov r6, r3
	str r5, [sp]
	ldrsh r3, [r12, #0x1a]
	add r12, r4, #0x108
	mov r5, r2
	mov r2, r1
	add r1, r12, #0x1000
	bl FUN_0203257c
	add r1, r4, #0xb8
	mov r0, r5
	add r1, r1, #0x400
	mov r2, #0x40
	bl MI_CpuCopy8
	mov r0, r6
	add r1, r4, #0x218
	mov r2, #0x2a0
	bl MI_CpuCopy8
	add r0, r4, #0x1000
	mov r6, #2
	ldr r5, _02032578 ; =0x02099F38
	ldr r1, [r0, #0xfc]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114370
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113f7c
	ldrsb r0, [r4, #0x3f]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r4, #0x3f]
	ldr r0, [r4, #0x10]
	tst r0, #1
	bne _02032558
	mov r1, #0
	orr r0, r1, #1
	str r0, [r4, #0x10]
	strb r1, [r4, #0x3f]
	strb r1, [r4, #0x3e]
	strb r1, [r4, #0x12e]
	strb r1, [r4, #0x20a]
_02032558:
	ldr r1, [r4, #0x10]
	add r0, r4, #0x1000
	orr r1, r1, #2
	mov r2, #1
	strb r2, [r0, #0x30d]
	str r1, [r4, #0x10]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02032578: .word unk_02099F38
	arm_func_end FUN_02032498

	arm_func_start FUN_0203257c
FUN_0203257c: ; 0x0203257C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x200
	add r5, sp, #0
	mov r10, r1
	mov r0, r5
	mov r1, r2
	mov r9, r3
	ldr r8, [sp, #0x228]
	bl STD_CopyString
	ldrsb r0, [sp]
	mov r7, #0
	mov r6, r7
	cmp r0, #0
	beq _02032660
	mov r11, #0xc
	mov r4, r7
_020325BC:
	cmp r0, #0
	beq _0203263C
	cmp r0, #0xa
	beq _020325D8
	cmp r0, #0xc
	beq _020325EC
	b _020325F8
_020325D8:
	add r6, r6, #1
	mov r7, #0
	cmp r6, r8
	blt _0203263C
	strb r11, [r5]
_020325EC:
	mov r7, #0
	mov r6, r7
	b _0203263C
_020325F8:
	ldr r0, _0203266C ; =0x02099F50
	mov r1, r5
	ldr r0, [r0]
	bl FUN_02042b0c
	add r1, r7, r0
	cmp r1, r9
	blt _02032630
	add r6, r6, #1
	cmp r6, r8
	movge r1, #0xc
	movlt r1, #0xa
	mov r7, r4
	movge r6, r4
	strb r1, [r10], #1
_02032630:
	cmp r0, #0
	addne r0, r0, #1
	addne r7, r7, r0
_0203263C:
	ldrsb r0, [r5]
	tst r0, #0x80
	addne r5, r5, #1
	strneb r0, [r10], #1
	ldrsb r0, [r5]
	strb r0, [r10], #1
	ldrsb r0, [r5, #1]!
	cmp r0, #0
	bne _020325BC
_02032660:
	strb r0, [r10]
	add sp, sp, #0x200
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203266C: .word unk_02099F50
	arm_func_end FUN_0203257c

	arm_func_start FUN_02032670
FUN_02032670: ; 0x02032670
	add r2, r0, #0x1300
	ldrsb r2, [r2, #0xe]
	add r0, r0, #0x1000
	orr r1, r2, r1
	strb r1, [r0, #0x30e]
	bx lr
	arm_func_end FUN_02032670

	arm_func_start FUN_02032688
FUN_02032688: ; 0x02032688
	add r2, r0, #0x1300
	ldrsb r2, [r2, #0xe]
	mvn r1, r1
	mov r1, r1, lsl #0x18
	and r1, r2, r1, asr #24
	add r0, r0, #0x1000
	strb r1, [r0, #0x30e]
	bx lr
	arm_func_end FUN_02032688

	arm_func_start FUN_020326a8
FUN_020326a8: ; 0x020326A8
	add r0, r0, #0x1000
	str r1, [r0, #0x104]
	bx lr
	arm_func_end FUN_020326a8

	arm_func_start FUN_020326b4
FUN_020326b4: ; 0x020326B4
	cmp r1, #0
	ldr r1, [r0, #0x10]
	orrne r1, r1, #1
	biceq r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_020326b4

	arm_func_start FUN_020326cc
FUN_020326cc: ; 0x020326CC
	cmp r1, #4
	mov r1, #1
	strb r1, [r0, #0x3f]
	strneb r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_020326cc

	arm_func_start FUN_020326e0
FUN_020326e0: ; 0x020326E0
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_020326e0

	arm_func_start FUN_020326e8
FUN_020326e8: ; 0x020326E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r5, #0
	mov r10, r0
	mov r9, r5
	ldr r4, _02032D28 ; =0x02099F38
	b _02032720
_02032704:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x14]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	add r9, r9, #1
_02032720:
	cmp r9, #7
	blt _02032704
	mov r9, #0
	mov r1, r9
	add r0, r10, #0x34
	mov r2, #0x1e4
	bl MI_CpuFill8
	ldr r2, _02032D2C ; =0x00001108
	mov r1, r9
	add r0, r10, #0x218
	bl MI_CpuFill8
	ldr r4, _02032D28 ; =0x02099F38
	mov r6, #1
	ldr r0, [r4]
	mov r1, #0xf
	mov r2, r6
	bl FUN_ov16_02112724
	strh r0, [r10, #0x36]
	mov r1, #3
	ldr r0, [r4]
	mov r2, r1
	bl FUN_02059630
	add r1, r10, #0x1000
	strh r0, [r1, #0xfa]
	ldrsh r1, [r1, #0xfa]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	ldr r0, [r4]
	mov r2, r6
	mov r1, #0x10
	bl FUN_ov16_02112724
	add r2, r10, #0x1000
	strh r0, [r2, #0xf8]
	ldrsh r1, [r2, #0xf8]
	ldrsh r2, [r2, #0xfa]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	add r1, r10, #0x1000
	ldrsh r1, [r1, #0xf8]
	ldr r0, [r4]
	mov r2, #0x36
	bl FUN_ov16_02112b98
	add r6, r10, #0x1000
	b _02032800
_020327DC:
	mov r0, r9, lsl #0x13
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r1, [r6, #0xf8]
	ldr r0, [r4]
	mov r3, r5
	add r2, r9, #1
	bl FUN_ov16_02113d88
	add r9, r9, #1
_02032800:
	cmp r9, #8
	blt _020327DC
	add r0, r10, #0x1000
	ldr r4, _02032D28 ; =0x02099F38
	mov r6, #0x40
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r6
	mov r3, #8
	bl FUN_ov16_02113100
	add r0, r10, #0x1000
	ldr r5, _02032D30 ; =0x00007FFF
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02112e5c
	add r0, r10, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, #0x32
	mov r3, #0x64
	bl FUN_ov16_02113528
	ldr r0, [r4]
	mov r8, #3
	mov r1, r8
	mov r7, #1
	mov r2, r7
	bl FUN_02059630
	strh r0, [r10, #0x3a]
	ldrsh r1, [r10, #0x3a]
	ldr r0, [r4]
	mov r9, #0
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	ldrsh r3, [r10, #0x3a]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	mov r3, r9
	bl FUN_ov16_02113d88
	mov r3, r6
	mov r6, #0x10
	str r6, [sp]
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	bl FUN_ov16_02113d08
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	mov r3, #0x34
	bl FUN_ov16_021139bc
	mov r3, r5
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	bl FUN_ov16_02113b00
	ldr r3, [r10, #0x14]
	mov r5, #2
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0x35
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x18]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x36
	bl FUN_ov16_021139bc
	mov r11, #4
	ldr r0, [r4]
	mov r1, r11
	mov r2, r7
	bl FUN_ov16_02112724
	strh r0, [r10, #0x38]
	ldr r3, [r10, #0x1c]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r7
	mov r3, #0x38
	bl FUN_ov16_021139bc
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	add r3, sp, #8
	mov r2, r7
	bl FUN_ov16_02114480
	ldr r1, [r10, #0x1c]
	ldr r0, [r4]
	and r3, r1, #0xff
	ldrsh r1, [r10, #0x38]
	mov r2, r5
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0x38
	bl FUN_ov16_021139bc
	str r7, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r3, r6
	mov r2, r5
	bl FUN_ov16_02113ec0
	str r9, [sp]
	ldr r3, [sp, #8]
	ldrsh r1, [r10, #0x38]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0x1c]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x38
	bl FUN_ov16_021139bc
	str r7, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x20
	bl FUN_ov16_02113ec0
	ldr r0, [sp, #4]
	mov r2, r8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r3, r9
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0x1c]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r11
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r3, #0x38
	mov r2, r11
	bl FUN_ov16_021139bc
	str r7, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r11
	mov r3, #0x30
	bl FUN_ov16_02113ec0
	ldr r0, [sp, #4]
	mov r2, r11
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	ldrsh r1, [r10, #0x38]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r7, r5
	mov r6, r9
	mov r8, #0x39
	mov r5, #0x3a
	b _02032C00
_02032B9C:
	ldrsh r1, [r10, #0x36]
	mov r2, r9, lsl #1
	ldr r0, [r4]
	mov r3, r8
	add r2, r2, #6
	bl FUN_ov16_021139bc
	mov r2, r9, lsl #1
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	add r2, r2, #6
	mov r3, r7
	bl FUN_ov16_02113f7c
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r9, lsl #1
	add r2, r2, #7
	mov r3, r5
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r9, lsl #1
	add r2, r2, #7
	mov r3, r7
	bl FUN_ov16_02113f7c
	add r9, r9, #1
_02032C00:
	cmp r9, #4
	blt _02032B9C
	ldr r4, _02032D28 ; =0x02099F38
	ldr r3, [r10, #0x2c]
	mov r5, #0xe
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0x33
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, #0x80
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r10, #0x1000
	str r0, [r1, #0xfc]
	mov r5, #3
	ldr r0, [r4]
	mov r1, #5
	mov r2, r5
	bl FUN_02059630
	mov r1, r0
	add r0, r10, #0x1000
	str r1, [r0, #0x100]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, #0x37
	bl FUN_ov16_02112b98
	mov r1, #0xa
	add r0, r10, #0x1000
	str r1, [r0, #0x104]
	add r0, r10, #0x1300
	mov r1, #0x32
	strh r1, [r0, #0x14]
	mov r1, #0xf0
	strh r1, [r0, #0x1a]
	strh r5, [r0, #0x1c]
	mov r5, #2
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114370
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114370
	add r1, r10, #0x1000
	ldrsh r1, [r1, #0xf8]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114370
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r5
	bl FUN_ov16_02114370
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02032D28: .word unk_02099F38
_02032D2C: .word 0x00001108
_02032D30: .word 0x00007FFF
	arm_func_end FUN_020326e8

	arm_func_start FUN_02032d34
FUN_02032d34: ; 0x02032D34
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_02032f3c
	ldr r4, _02032E2C ; =0x02099F38
	ldrsh r1, [r5, #0x36]
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	ldrsh r1, [r5, #0x38]
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r0, r5, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	bl FUN_ov16_021128c4
	mov r6, #0
	b _02032D98
_02032D84:
	add r0, r5, r6, lsl #2
	ldr r1, [r0, #0x14]
	ldr r0, [r4]
	bl FUN_020591e8
	add r6, r6, #1
_02032D98:
	cmp r6, #7
	blt _02032D84
	add r0, r5, #0x1000
	ldr r4, _02032E2C ; =0x02099F38
	ldrsh r1, [r0, #0xfa]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldrsh r1, [r0, #0xfa]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldrsh r1, [r0, #0xfa]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldrsh r1, [r5, #0x3a]
	ldr r0, [r4]
	bl FUN_020591e8
	ldrsh r1, [r5, #0x3a]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldrsh r1, [r5, #0x3a]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x100]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x100]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x100]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldmfd sp!, {r4, r5, r6, pc}
_02032E2C: .word unk_02099F38
	arm_func_end FUN_02032d34

	arm_func_start FUN_02032e30
FUN_02032e30: ; 0x02032E30
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r2, [r4, #0x10]
	mov lr, #0
	mov r12, #1
	add r0, r4, #0x1000
	bic r2, r2, #4
	cmp r1, #0
	strb lr, [r0, #0x30d]
	strb lr, [r0, #0x30e]
	addeq sp, sp, #0x10
	str r2, [r4, #0x10]
	strb r12, [r4, #0x3c]
	strb r12, [r4, #0x3d]
	strb r12, [r4, #0x40]
	strb r12, [r4, #0x41]
	strb r12, [r4, #0x42]
	strb r12, [r4, #0x43]
	str lr, [r4, #0x54]
	str lr, [r4, #0x58]
	str lr, [r4, #0x5c]
	ldmeqfd sp!, {r4, pc}
	ldr r3, _02032F2C ; =0x0209A250
	ldr r1, _02032F30 ; =0x0208FD34
	ldr r0, [r3]
	cmp r0, #0
	beq _02032EB8
	str lr, [sp]
	str lr, [sp, #4]
	str lr, [sp, #8]
	add r2, r4, #0x54
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02032EB8:
	ldr r3, _02032F2C ; =0x0209A250
	ldr r1, _02032F34 ; =0x0208FD4C
	ldr r0, [r3]
	cmp r0, #0
	beq _02032EEC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x58
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_02032EEC:
	ldr r3, _02032F2C ; =0x0209A250
	ldr r1, _02032F38 ; =0x0208FD64
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, pc}
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x5c
	str r12, [sp, #0xc]
	bl FUN_0202eff0
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_02032F2C: .word unk_0209A250
_02032F30: .word unk_0208FD34
_02032F34: .word unk_0208FD4C
_02032F38: .word unk_0208FD64
	arm_func_end FUN_02032e30

	arm_func_start FUN_02032f3c
FUN_02032f3c: ; 0x02032F3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r8, #0
	mov r6, #2
	ldr r5, _02033140 ; =0x02099F38
	str r8, [r4, #0x10]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	mov r7, r8
	bl FUN_ov16_02114370
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113f7c
	ldrsh r1, [r4, #0x38]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114370
	b _02032FC4
_02032F90:
	ldrsh r1, [r4, #0x36]
	mov r2, r8, lsl #1
	ldr r0, [r5]
	mov r3, r6
	add r2, r2, #6
	bl FUN_ov16_02113f7c
	mov r2, r8, lsl #1
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r3, r6
	add r2, r2, #7
	bl FUN_ov16_02113f7c
	add r8, r8, #1
_02032FC4:
	cmp r8, #4
	blt _02032F90
	ldr r5, _02033140 ; =0x02099F38
	add r1, r4, #0x1000
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r1, #0xfc]
	mov r2, r6
	bl FUN_ov16_02114370
	add r1, r4, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0xfc]
	mov r2, r6
	bl FUN_ov16_02113390
	add r0, r4, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114370
	add r1, r4, #0x1000
	ldrsh r1, [r1, #0xf8]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02113390
	mov r8, #0
	ldr r5, _02033144 ; =0x0209A250
	b _02033054
_02033030:
	add r0, r4, r8, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _02033048
	mov r0, r5
	bl FUN_0202e1c0
_02033048:
	add r0, r4, r8, lsl #2
	str r7, [r0, #0x54]
	add r8, r8, #1
_02033054:
	cmp r8, #3
	blt _02033030
	mov r8, #0
	b _02033110
_02033064:
	mov r0, #6
	mla r6, r8, r0, r4
	mov r9, #0
	ldr r5, _02033140 ; =0x02099F38
	b _02033104
_02033078:
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x20]
	cmp r1, #0
	beq _020330BC
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x20]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x20]
	ldr r0, [r5]
	bl FUN_02058ee0
_020330BC:
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xfc]
	cmp r1, #0
	beq _02033100
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xfc]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xfc]
	ldr r0, [r5]
	bl FUN_02058ee0
_02033100:
	add r9, r9, #1
_02033104:
	cmp r9, #3
	blt _02033078
	add r8, r8, #1
_02033110:
	cmp r8, #2
	blt _02033064
	mov r5, #0xdc
	mov r1, r7
	mov r2, r5
	add r0, r4, #0x60
	bl MI_CpuFill8
	mov r1, r7
	mov r2, r5
	add r0, r4, #0x13c
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02033140: .word unk_02099F38
_02033144: .word unk_0209A250
	arm_func_end FUN_02032f3c

	arm_func_start FUN_02033148
FUN_02033148: ; 0x02033148
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldrsb r0, [r10, #0x34]
	mov r11, r1
	mov r5, #2
	cmp r0, #0
	ldr r4, _02033984 ; =0x02099F38
	mov r8, #1
	beq _02033190
	ldr r0, [r10, #0x10]
	tst r0, #0x80
	beq _02033190
	tst r0, #0x20
	beq _02033190
	tst r0, #2
	biceq r0, r0, #1
	streq r0, [r10, #0x10]
_02033190:
	ldr r0, [r10, #0x10]
	ldrsh r1, [r10, #0x36]
	tst r0, #1
	ldr r0, [r4]
	mov r2, r5
	bne _020331EC
	bl FUN_ov16_02114370
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114370
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r5
	bl FUN_ov16_02114370
	add r0, r10, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114370
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020331EC:
	mov r3, r8
	bl FUN_ov16_021142fc
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r5
	mov r3, r8
	bl FUN_ov16_021142fc
	ldr r1, [r10, #0x10]
	mov r0, r10
	bic r2, r1, #0xc0
	add r1, r10, #0x34
	str r2, [r10, #0x10]
	bl FUN_02034304
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x40
	strne r0, [r10, #0x10]
	bne _0203324C
	ldrsb r0, [r10, #0x3f]
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x80
	strne r0, [r10, #0x10]
_0203324C:
	ldr r0, [r10, #0x10]
	mov r7, #0
	tst r0, #0xc0
	addne r0, r10, #0x1000
	mov r9, #2
	ldr r4, _02033984 ; =0x02099F38
	strneb r8, [r0, #0x30c]
	bne _02033280
	ldrsb r0, [r10, #0x34]
	cmp r0, #0
	add r0, r10, #0x1000
	strneb r8, [r0, #0x30c]
	streqb r7, [r0, #0x30c]
_02033280:
	ldrsb r0, [r10, #0x3c]
	ldr r2, [r10, #0x44]
	ldr r1, [r10, #0x48]
	cmp r0, #0
	mov r5, r2, asr #0xc
	mov r6, r1, asr #0xc
	ble _020333B8
	ldrsb r0, [r10, #0x34]
	cmp r0, #0
	bne _020333B8
	add r0, r10, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	addle r0, r10, #0x200
	ldrlesb r0, [r0, #0xb]
	cmple r0, #0
	ble _020333B8
	str r8, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r9
	bl FUN_ov16_02113ec0
	str r8, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02113ec0
	str r7, [sp]
	ldrsb r3, [r10, #0x3c]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r9
	sub r3, r3, #1
	bl FUN_ov16_0211401c
	ldrsb r0, [r10, #0x3d]
	ldr r7, _02033988 ; =0x0208C364
	mov r2, r9
	sub r0, r0, #1
	add r0, r7, r0, lsl #2
	ldrsh r0, [r0, #2]
	add r0, r6, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsb r3, [r10, #0x3d]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	sub r3, r3, #1
	mov r3, r3, lsl #2
	ldrsh r3, [r7, r3]
	add r3, r5, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldrsb r0, [r10, #0x3d]
	mov r2, r8
	sub r0, r0, #1
	add r0, r7, r0, lsl #2
	ldrsh r0, [r0, #2]
	add r0, r6, r0
	add r0, r0, #7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsb r3, [r10, #0x3d]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	sub r3, r3, #1
	mov r3, r3, lsl #2
	ldrsh r3, [r7, r3]
	add r3, r5, r3
	add r3, r3, #0xa
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	b _020333E0
_020333B8:
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r3, r9
	mov r2, #1
	bl FUN_ov16_02113f7c
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02113f7c
_020333E0:
	ldr r0, [r10, #0x10]
	mov r1, #0
	tst r0, #4
	ldr r4, _02033984 ; =0x02099F38
	beq _02033404
	add r0, r10, #0x1300
	ldrsb r0, [r0, #0xe]
	tst r0, #0x20
	strne r1, [r10, #0x30]
_02033404:
	ldr r0, [r10, #0x10]
	tst r0, #0x40
	addeq r0, r10, #0x1300
	ldreqsb r0, [r0, #0xd]
	cmpeq r0, #4
	bne _0203348C
	ldr r0, [r10, #0x30]
	cmp r0, #0
	beq _02033444
	mov r0, #1
	str r0, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, #3
	mov r3, #2
	bl FUN_ov16_02113ec0
_02033444:
	ldr r0, [r10, #0x30]
	and r0, r0, #0x1f
	mov r0, r0, asr #1
	rsb r1, r0, #0x1f
	orr r0, r1, r1, lsl #5
	orr r0, r0, r1, lsl #10
	mov r2, r0, lsl #0x10
	mov r3, r2, lsr #0x10
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, #3
	bl FUN_ov16_02113b00
	add r0, r10, #0x1000
	ldr r1, [r10, #0x30]
	ldr r0, [r0, #0x3e0]
	add r0, r1, r0
	str r0, [r10, #0x30]
	b _020334A4
_0203348C:
	str r1, [r10, #0x30]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, #3
	mov r3, #2
	bl FUN_ov16_02113f7c
_020334A4:
	ldrsb r1, [r10, #0x42]
	ldr r3, _0203398C ; =0x0208C36C
	ldr r0, _02033984 ; =0x02099F38
	sub r1, r1, #1
	add r1, r3, r1, lsl #2
	ldrsh r1, [r1, #2]
	mov r2, #3
	str r1, [sp]
	ldrsb r4, [r10, #0x42]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r0]
	sub r4, r4, #1
	mov r4, r4, lsl #2
	ldrsh r3, [r3, r4]
	bl FUN_ov16_02113b78
	ldrsb r0, [r10, #0x34]
	ldrsh r2, [r10, #0x36]
	mov r3, #1
	cmp r0, #0
	movne r0, #1
	strneb r0, [r10, #0x12d]
	strneb r0, [r10, #0x209]
	ldr r0, [r10, #0x10]
	add r1, r10, #0x60
	bic r4, r0, #0x30
	mov r0, r10
	str r4, [r10, #0x10]
	bl FUN_02034784
	mov r3, #1
	orr r4, r0, #0
	ldrsh r2, [r10, #0x36]
	mov r0, r10
	add r1, r10, #0x13c
	sub r3, r3, #2
	bl FUN_02034784
	orrs r0, r4, r0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x10
	strne r0, [r10, #0x10]
	bne _02033558
	ldrsb r0, [r10, #0x34]
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x20
	strne r0, [r10, #0x10]
_02033558:
	ldr r2, [r10, #0x10]
	ldr r1, _02033990 ; =0x020A0640
	tst r2, #0x100
	ldr r0, _02033984 ; =0x02099F38
	beq _02033878
	tst r2, #4
	beq _02033878
	tst r2, #2
	beq _02033878
	ldrb r0, [r1, #0x507]
	mov r3, #0x80
	mov r4, #0x40
	cmp r0, #1
	ldrb r0, [r1, #0x507]
	movne r3, #2
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r2, [r0, #0x5c]
	movne r4, #0x400
	orr r0, r4, r3
	tst r2, r0
	beq _0203363C
	ldrb r0, [r1, #0x507]
	mov r2, #0x40
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r2, #0x400
	tst r0, r2
	addne r0, r10, #0x1300
	ldrnesb r2, [r0, #0x25]
	addne r0, r10, #0x1000
	subne r2, r2, #1
	strneb r2, [r0, #0x325]
	ldrb r0, [r1, #0x507]
	mov r1, #0x80
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r1, #2
	tst r0, r1
	addne r0, r10, #0x1300
	ldrnesb r1, [r0, #0x25]
	addne r0, r10, #0x1000
	addne r1, r1, #1
	strneb r1, [r0, #0x325]
	add r0, r10, #0x1300
	ldrsb r2, [r0, #0x25]
	ldrsb r1, [r0, #0x24]
	add r0, r2, r1
	bl _s32_div_f
	add r0, r10, #0x1000
	strb r1, [r0, #0x325]
	ldr r0, _02033994 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	b _020336E4
_0203363C:
	add r0, r10, #0x4000
	ldr r0, [r0, #0x27c]
	cmp r0, #0
	beq _020336E4
	add r4, r10, #0x1300
	ldrh r1, [r4, #0x28]
	ldrsb r0, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	mov r9, #0
	mul r0, r1, r0
	rsb r7, r2, #0xf8
	rsb r8, r0, #0x80
	b _020336D8
_02033670:
	ldrh r2, [r4, #0x26]
	mov r0, r10
	mov r1, #1
	add r2, r7, r2
	str r2, [sp]
	ldrh r11, [r4, #0x28]
	mov r2, r7
	mov r3, r8
	add r11, r8, r11
	str r11, [sp, #4]
	bl FUN_02030114
	cmp r0, #0
	beq _020336CC
	add r0, r10, #0x1300
	ldrsb r0, [r0, #0x25]
	cmp r0, r9
	beq _020336C0
	ldr r0, _02033994 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_020336C0:
	add r0, r10, #0x1000
	strb r9, [r0, #0x325]
	b _020336E4
_020336CC:
	ldrh r0, [r4, #0x28]
	add r9, r9, #1
	add r8, r8, r0
_020336D8:
	ldrsb r0, [r4, #0x24]
	cmp r9, r0
	blt _02033670
_020336E4:
	mov r0, #0x80
	str r0, [sp]
	ldr r7, _02033984 ; =0x02099F38
	mov r4, #0xe
	ldrsh r1, [r10, #0x36]
	ldr r0, [r7]
	mov r2, r4
	mov r3, #0xf8
	bl FUN_ov16_02113b78
	mov r11, #0
	str r11, [sp]
	add r0, r10, #0x1300
	ldrsh r1, [r10, #0x36]
	ldrsb r3, [r0, #0x25]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_0211401c
	mov r2, r4
	mov r4, #1
	str r4, [sp]
	ldr r0, [r7]
	ldrsh r1, [r10, #0x36]
	mov r8, #2
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r3, r8
	ldrsh r1, [r10, #0x36]
	mov r2, #3
	bl FUN_ov16_02113f7c
	add r0, r10, #0x4000
	ldr r0, [r0, #0x280]
	cmp r0, #0
	beq _020337EC
	add r4, r10, #0x1300
	ldrh r1, [r4, #0x28]
	ldrsb r0, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	mov r9, r11
	mul r0, r1, r0
	rsb r7, r2, #0xf8
	rsb r8, r0, #0x80
	b _020337DC
_02033790:
	ldrh r2, [r4, #0x26]
	mov r0, r10
	mov r1, #4
	add r2, r7, r2
	str r2, [sp]
	ldrh r12, [r4, #0x28]
	mov r2, r7
	mov r3, r8
	add r12, r8, r12
	str r12, [sp, #4]
	bl FUN_02030114
	cmp r0, #0
	addne r0, r10, #0x1000
	strneb r9, [r0, #0x325]
	movne r11, #1
	bne _0203383C
	ldrh r0, [r4, #0x28]
	add r9, r9, #1
	add r8, r8, r0
_020337DC:
	ldrsb r0, [r4, #0x24]
	cmp r9, r0
	blt _02033790
	b _0203383C
_020337EC:
	ldr r1, _02033990 ; =0x020A0640
	ldrb r0, [r1, #0x507]
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r4, #0x10
	tst r0, r4
	movne r11, #1
	bne _0203383C
	ldrb r0, [r1, #0x507]
	mov r1, #2
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r1, #0x80
	tst r0, r1
	movne r11, #1
	subne r1, r11, #2
	addne r0, r10, #0x1000
	strneb r1, [r0, #0x325]
_0203383C:
	cmp r11, #0
	ldr r0, _02033984 ; =0x02099F38
	beq _0203388C
	ldr r1, [r10, #0x10]
	mov r2, #0xe
	bic r1, r1, #0x100
	str r1, [r10, #0x10]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r0]
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldr r0, _02033994 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	b _0203388C
_02033878:
	ldrsh r1, [r10, #0x36]
	ldr r0, [r0]
	mov r2, #0xe
	mov r3, #2
	bl FUN_ov16_02113f7c
_0203388C:
	ldr r4, _02033984 ; =0x02099F38
	add r1, r10, #0x1000
	add r2, r5, #0xc
	add r0, r6, #0x12
	mov r2, r2, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	add r0, r10, #0x1000
	add r2, r5, #0xc
	add r1, r6, #0x12
	mov r2, r2, lsl #0x10
	mov r3, r1, lsl #0x10
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldr r0, [r10, #0x10]
	tst r0, #0x50
	bne _02033904
	tst r0, #2
	beq _02033904
	mov r0, r10
	mov r2, r11
	add r1, r10, #0x218
	bl FUN_02033998
_02033904:
	ldr r0, [r10, #0x10]
	tst r0, #0x200
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	cmp r0, #0
	bne _02033938
	add r0, r10, #0x4000
	ldr r0, [r0, #0x27c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02033938:
	add r2, r10, #0x1300
	add r1, r10, #0x4200
	add r0, r10, #0x4000
	ldr r3, [r0, #0x27c]
	ldrh r4, [r2, #0x2a]
	ldrh r1, [r1, #0x5c]
	add r0, r10, #0x2a
	cmp r3, #0
	add r3, r0, #0x1300
	orr r0, r4, r1
	strh r0, [r2, #0x2a]
	ldrneh r0, [r3]
	orrne r0, r0, #0x4000
	strneh r0, [r3]
	ldr r0, [r10, #0x10]
	bic r0, r0, #0x200
	str r0, [r10, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02033984: .word unk_02099F38
_02033988: .word unk_0208C364
_0203398C: .word unk_0208C36C
_02033990: .word unk_020A0640
_02033994: .word unk_0209AC44
	arm_func_end FUN_02033148

	arm_func_start FUN_02033998
FUN_02033998: ; 0x02033998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb4
	mov r4, r1
	add r1, r4, #0x1000
	ldrsb r1, [r1, #0xf4]
	mov r8, r0
	mov r7, r2
	cmp r1, #0
	mov r6, #2
	mov r9, #1
	mov r10, #0
	ldr r5, _020342E4 ; =0x02099F38
	beq _020339F0
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r6
	bl FUN_ov16_02114370
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114370
_020339F0:
	add r1, r4, #0x1000
	ldrsb r2, [r1, #0xf5]
	mov r0, #0
	str r0, [sp, #0x20]
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _020342D8
_02033A0C: ; jump table
	b _02033A28 ; case 0
	b _02033A34 ; case 1
	b _02033A90 ; case 2
	b _02033DFC ; case 3
	b _02034158 ; case 4
	b _02034228 ; case 5
	b _020342D0 ; case 6
_02033A28:
	add sp, sp, #0xb4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02033A34:
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r6
	bl FUN_ov16_02114370
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114370
	add r1, r4, #0x1000
	ldrsb r2, [r1, #0xf5]
	add r5, r4, #0xef0
	ldr r3, _020342E8 ; =0x00007FFF
	add r0, r4, #0x1100
	strh r3, [r0, #6]
	ldr r0, [sp, #0x20]
	add r2, r2, #1
	str r5, [r1, #0xf0]
	strb r0, [r1, #0xf7]
	strh r0, [r1, #0xfa]
	strb r2, [r1, #0xf5]
	b _020342D8
_02033A90:
	mov r9, r0
	strb r0, [r1, #0xf8]
	add r0, r4, #0xf8
	ldr r8, [r1, #0xf0]
	mov r6, #1
	add r1, r0, #0x1000
	b _02033AEC
_02033AAC:
	ldrsb r0, [r8]
	cmp r0, #0xa
	cmpne r0, #0xc
	beq _02033AD8
	ldrsb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrsb r0, [r8]
	tst r0, #0x80
	addne r8, r8, #1
	addne r9, r9, #1
_02033AD8:
	ldrsb r0, [r8]
	cmp r0, #0xc
	beq _02033AF8
	add r9, r9, #1
	add r8, r8, #1
_02033AEC:
	ldrsb r0, [r8]
	cmp r0, #0
	bne _02033AAC
_02033AF8:
	add r0, r4, #0x1000
	add r7, sp, #0x30
	ldr r1, [r0, #0xf0]
	mov r0, r7
	add r2, r9, #1
	bl STD_CopyLString
	add r0, r9, #2
	strb r10, [r7, r0]
	ldrsb r0, [r8]
	ldr r7, _020342EC ; =0x02099F50
	mov r2, #3
	cmp r0, #0
	addne r1, r8, #1
	addne r0, r4, #0x1000
	strne r1, [r0, #0xf0]
	addeq r0, r4, #0x1000
	streq r10, [r0, #0xf0]
	ldr r0, [r7]
	mov r1, r6
	bl FUN_02043310
	ldr r1, [r4, #0xee8]
	mov r9, #0
	ldr r0, [r5]
	add r2, sp, #0x28
	add r3, sp, #0x2c
	str r9, [sp, #0x28]
	bl FUN_0205935c
	ldr r10, [sp, #0x28]
	mov r0, #0x40
	stmia sp, {r0, r9}
	str r9, [sp, #8]
	str r6, [sp, #0xc]
	add r0, r4, #0x2e0
	str r0, [sp, #0x10]
	mov r0, #0x180
	str r0, [sp, #0x14]
	str r9, [sp, #0x18]
	str r9, [sp, #0x1c]
	ldr r0, [r7]
	add r1, sp, #0x30
	mov r2, r10
	mov r3, #0x100
	bl FUN_020425fc
	ldr r1, [sp, #0x2c]
	mov r0, r10
	bl DC_FlushRange
	ldr r3, [sp, #0x2c]
	ldr r1, [r4, #0xee8]
	ldr r0, [r5]
	mov r2, r10
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	bl FUN_02059288
	ldr r0, [r7]
	mov r1, r6
	mov r2, r6
	bl FUN_02043310
	add r0, r4, #0x1100
	strh r9, [r0]
	add r0, r4, #0x1000
	ldr r2, [r4, #0xee8]
	strh r9, [r0, #0xfe]
	strb r9, [r0, #0xf9]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r7, #2
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r7
	bl FUN_ov16_02113390
	add r0, r4, #0x1000
	ldrsb r3, [r0, #0xf8]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	add r2, r4, #0x2e0
	bl FUN_ov16_02113618
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_02113ec0
	add r8, r4, #0x1000
	mov r7, r9
	mov r10, #0x8a
	ldr r6, _020342F0 ; =0x51EB851F
	b _02033CA0
_02033C60:
	add r0, r4, r9, lsl #3
	add r3, r0, #0x200
	ldrsh r0, [r3, #0xe2]
	add r2, r9, #1
	smulbb r1, r0, r10
	mov r0, r1, lsr #0x1f
	smull r1, r11, r6, r1
	add r11, r0, r11, asr #5
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r3, [r3, #0xe0]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	bl FUN_ov16_02113b78
	add r9, r9, #1
_02033CA0:
	ldrsb r0, [r8, #0xf8]
	cmp r9, r0
	blt _02033C60
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, _020342E4 ; =0x02099F38
	mov r5, #2
	ldr r0, [r0]
	mov r2, r5
	mov r3, #1
	mov r8, #0
	bl FUN_ov16_021142fc
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, _020342E4 ; =0x02099F38
	mov r2, r5
	ldr r0, [r0]
	bl FUN_ov16_02113390
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe2]
	ldr r0, _020342E4 ; =0x02099F38
	add r2, sp, #0x24
	ldr r0, [r0]
	str r8, [sp, #0x24]
	add r3, sp, #0x2c
	bl FUN_0205935c
	mov r9, r8
	ldr r10, [sp, #0x24]
	add r5, r4, #0x1000
	mov r11, #0x40
	ldr r6, _020342F4 ; =0x02099F1C
	b _02033DB8
_02033D20:
	mov r0, #0x2a
	mul r0, r9, r0
	add r3, r4, r0
	strb r7, [r3, #3]
	ldrsh r2, [r4, r0]
	ldrsh r1, [r5, #0xfa]
	cmp r2, r1
	blt _02033DB4
	ldrsb r0, [r5, #0xf8]
	add r0, r1, r0
	cmp r2, r0
	bgt _02033DB4
	str r11, [sp]
	str r7, [sp, #4]
	mov r0, r8, lsl #3
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	str r7, [sp, #0x1c]
	add r1, r3, #0xa
	ldr r0, [r6]
	mov r2, r10
	mov r3, r11
	bl FUN_020425fc
	mov r1, #0x2a
	mla r1, r9, r1, r4
	ldr r0, [r6]
	add r1, r1, #0xa
	add r8, r8, #1
	bl FUN_0204294c
	mov r1, #0x2a
	mla r1, r9, r1, r4
	strb r0, [r1, #4]
	strb r8, [r1, #3]
_02033DB4:
	add r9, r9, #1
_02033DB8:
	cmp r9, #0x10
	blt _02033D20
	ldr r1, [sp, #0x2c]
	mov r0, r10
	bl DC_FlushRange
	add r0, r4, #0xe00
	ldr r2, _020342E4 ; =0x02099F38
	ldrsh r1, [r0, #0xe2]
	ldr r3, [sp, #0x2c]
	ldr r0, [r2]
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	mov r2, r10
	str r5, [sp, #8]
	bl FUN_02059288
	b _02034144
_02033DFC:
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, #2
	mov r3, #1
	mov r10, #0x2a
	bl FUN_ov16_021142fc
	add r1, r4, #0x1000
	add r0, r8, #0x1000
	ldrsh r2, [r1, #0xfc]
	ldr r0, [r0, #0x3e0]
	ldrsh r3, [r1, #0xfe]
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	add r0, r3, r0, asr #16
	strh r0, [r1, #0xfe]
	cmp r7, #0
	beq _02033E5C
	mov r6, #5
	ldr r0, _020342F8 ; =0x0209AC44
	mov r1, r6
	bl FUN_0202cf6c
	sub r1, r6, #6
	add r0, r4, #0x1000
	strh r1, [r0, #0xfe]
_02033E5C:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf6]
	tst r1, #0x10
	mvnne r1, #0
	strneh r1, [r0, #0xfe]
	add r1, r4, #0x1000
	ldrsh r0, [r1, #0xfe]
	cmp r0, #0
	ldrltsb r2, [r1, #0xf8]
	movlt r0, #0x64
	smulbblt r0, r2, r0
	strlth r0, [r1, #0xfe]
	add r0, r4, #0x1000
	ldrsb r0, [r0, #0xf6]
	tst r0, #8
	beq _02033ECC
	add r1, r4, #0x1100
	add r0, r8, #0x1000
	ldr r0, [r0, #0x3e0]
	ldrsh r2, [r1]
	mov r0, r0, lsl #0x10
	add r0, r2, r0, asr #16
	strh r0, [r1]
	ldrsh r2, [r1]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl FUN_ov16_02112dac
_02033ECC:
	mov r6, #1
	b _0203410C
_02033ED4:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf7]
	ldrsh r3, [r0, #0xfa]
	add r2, r1, #1
	add r1, r4, r2, lsl #2
	add r1, r1, #0x200
	ldrsh r1, [r1, #0xa0]
	cmp r3, r1
	bne _02033F14
	strb r2, [r0, #0xf7]
	ldrsb r0, [r0, #0xf7]
	add r1, r4, #0x1100
	add r0, r4, r0, lsl #2
	add r0, r0, #0x200
	ldrh r0, [r0, #0xa2]
	strh r0, [r1, #6]
_02033F14:
	mov r9, #0
	add r0, r4, #0x1000
	b _02034020
_02033F20:
	mul r2, r9, r10
	ldrsh r3, [r0, #0xfa]
	ldrsh r1, [r4, r2]
	cmp r3, r1
	bne _0203401C
	add r5, r4, #0x1000
	add r0, r4, r2
	ldrsb r11, [r5, #0xf9]
	ldrb r3, [r0, #2]
	mov r1, #0x8a
	add r2, r4, r11, lsl #3
	add r3, r11, r3
	sub r3, r3, #1
	add r3, r4, r3, lsl #3
	add r3, r3, #0x200
	add r2, r2, #0x200
	ldrsh r12, [r2, #0xe0]
	ldrsh r11, [r3, #0xe0]
	ldrsh r2, [r3, #0xe4]
	add r3, r12, r11
	add r2, r3, r2
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #1
	strh r2, [r0, #6]
	ldrsb r3, [r5, #0xf9]
	add r2, r4, #0xe00
	ldr r5, _020342E4 ; =0x02099F38
	add r3, r4, r3, lsl #3
	add r3, r3, #0x200
	ldrsh r11, [r3, #0xe2]
	mov r3, #2
	smulbb r11, r11, r1
	ldr r1, _020342F0 ; =0x51EB851F
	smull lr, r12, r1, r11
	mov r1, r11, lsr #0x1f
	add r12, r1, r12, asr #5
	strh r12, [r0, #8]
	mov r1, #1
	str r1, [sp]
	ldrsh r1, [r2, #0xe0]
	ldrb r2, [r0, #3]
	ldr r0, [r5]
	bl FUN_ov16_02113ec0
	mov r11, #0x2a
	mla r3, r9, r11, r4
	ldrsh r1, [r3, #8]
	add r0, r4, #0xe00
	str r1, [sp]
	ldrsh r1, [r0, #0xe0]
	ldrb r2, [r3, #3]
	ldrsh r3, [r3, #6]
	ldr r0, [r5]
	bl FUN_ov16_02113b78
	mov r0, #8
	str r0, [sp]
	mla r3, r9, r11, r4
	add r1, r8, #0x1000
	ldrb r2, [r3, #3]
	ldrsh r1, [r1, #0xf8]
	ldrb r3, [r3, #4]
	ldr r0, [r5]
	bl FUN_ov16_02113d08
	b _02034028
_0203401C:
	add r9, r9, #1
_02034020:
	cmp r9, #0x10
	blt _02033F20
_02034028:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0x1000
	ldrsb r2, [r0, #0xf9]
	ldr r5, _020342E4 ; =0x02099F38
	ldr r1, [r4, #0xee4]
	ldr r0, [r5]
	add r2, r2, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, r4, #0x1000
	ldrsb r2, [r0, #0xf9]
	add r1, r4, #0x1100
	ldrh r3, [r1, #6]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	add r2, r2, #1
	bl FUN_ov16_02113b00
	cmp r6, #0
	ldrne r0, [r4, #0xeec]
	cmpne r0, #0
	ble _020340D4
	cmp r7, #0
	beq _020340A0
	add r0, r4, #0x1000
	ldrsb r0, [r0, #0xf9]
	cmp r0, #0
	bne _020340D4
	cmp r7, #0
	beq _020340D4
_020340A0:
	add r0, r4, #0x1000
	ldrsb r3, [r0, #0xf9]
	ldr r1, _020342FC ; =0x55555556
	mov r2, #3
	smull r0, r5, r1, r3
	add r5, r5, r3, lsr #31
	smull r0, r1, r2, r5
	subs r5, r3, r0
	bne _020340D4
	ldr r1, [r4, #0xeec]
	ldr r0, _020342F8 ; =0x0209AC44
	bl FUN_0202cf6c
	mov r6, #0
_020340D4:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf9]
	ldrsh r5, [r0, #0xfa]
	ldrsh r3, [r0, #0xfe]
	add r1, r1, #1
	strb r1, [r0, #0xf9]
	ldrsb r2, [r0, #0xf9]
	ldrsb r1, [r0, #0xf8]
	add r5, r5, #1
	sub r3, r3, #0x64
	strh r5, [r0, #0xfa]
	strh r3, [r0, #0xfe]
	cmp r2, r1
	bge _0203411C
_0203410C:
	add r0, r4, #0x1000
	ldrsh r0, [r0, #0xfe]
	cmp r0, #0x64
	bgt _02033ED4
_0203411C:
	add r0, r4, #0x1000
	ldrsb r2, [r0, #0xf9]
	ldrsb r1, [r0, #0xf8]
	cmp r2, r1
	blt _020342D8
	ldr r0, [r0, #0xf0]
	cmp r0, #0
	ldreq r0, [r8, #0x10]
	orreq r0, r0, #4
	streq r0, [r8, #0x10]
_02034144:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf5]
	add r1, r1, #1
	strb r1, [r0, #0xf5]
	b _020342D8
_02034158:
	ldrsb r0, [r1, #0xf6]
	mov r6, #1
	tst r0, #8
	beq _020341AC
	add r1, r4, #0x1100
	add r0, r8, #0x1000
	ldr r0, [r0, #0x3e0]
	ldrsh r2, [r1]
	mov r0, r0, lsl #0x10
	add r0, r2, r0, asr #16
	strh r0, [r1]
	ldrsh r0, [r1]
	cmp r0, #0x80
	movgt r0, #0x80
	strgth r0, [r1]
	add r0, r4, #0x1100
	ldrsh r2, [r0]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl FUN_ov16_02112dac
_020341AC:
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r3, r6
	mov r2, #2
	bl FUN_ov16_021142fc
	add r0, r4, #0x1000
	ldr r1, [r0, #0xf0]
	cmp r1, #0
	bne _020341E8
	ldrsb r0, [r0, #0xf6]
	tst r0, #0x20
	bne _020342D8
	tst r0, #0x40
	movne r7, r6
	movne r6, #0
_020341E8:
	cmp r7, #0
	beq _020342D8
	cmp r6, #0
	beq _02034204
	ldr r0, _020342F8 ; =0x0209AC44
	mov r1, #5
	bl FUN_0202cf6c
_02034204:
	ldr r0, _02034300 ; =0x020AF8AC
	bl FUN_02048c40
	add r1, r4, #0x1000
	ldrsb r2, [r1, #0xf5]
	add r0, r4, #0x1100
	mov r3, #0x20
	add r2, r2, #1
	strh r3, [r0]
	strb r2, [r1, #0xf5]
_02034228:
	add r0, r4, #0x1000
	ldrsb r0, [r0, #0xf6]
	mov r6, #2
	tst r0, #8
	beq _0203427C
	add r1, r4, #0x1100
	add r0, r8, #0x1000
	ldr r0, [r0, #0x3e0]
	ldrsh r2, [r1]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r1]
	ldrsh r2, [r1]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl FUN_ov16_02112dac
	add r0, r4, #0x1100
	ldrsh r0, [r0]
	cmp r0, #0
	bgt _020342D8
_0203427C:
	add r0, r4, #0x1000
	ldr r1, [r0, #0xf0]
	mov r2, r6
	cmp r1, #0
	strneb r9, [r0, #0xf5]
	ldreq r1, [r8, #0x10]
	biceq r1, r1, #6
	streq r1, [r8, #0x10]
	streqb r10, [r0, #0xf6]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	bl FUN_ov16_02113390
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02113390
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf5]
	add r1, r1, #1
	strb r1, [r0, #0xf5]
_020342D0:
	mov r0, #1
	str r0, [sp, #0x20]
_020342D8:
	ldr r0, [sp, #0x20]
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020342E4: .word unk_02099F38
_020342E8: .word 0x00007FFF
_020342EC: .word unk_02099F50
_020342F0: .word 0x51EB851F
_020342F4: .word unk_02099F1C
_020342F8: .word unk_0209AC44
_020342FC: .word 0x55555556
_02034300: .word unk_020AF8AC
	arm_func_end FUN_02033998

	arm_func_start FUN_02034304
FUN_02034304: ; 0x02034304
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	ldr r2, _020345A0 ; =0x0208C37C
	mov r7, r1
	ldrh r5, [r2]
	ldrh r4, [r2, #2]
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	ldrsb r1, [r7, #0xa]
	strh r4, [sp, #6]
	strh r2, [sp, #0xa]
	mov r8, r0
	strh r5, [sp, #4]
	strh r3, [sp, #8]
	cmp r1, #0
	mov r4, #2
	ldr r9, _020345A4 ; =0x02099F38
	add r2, sp, #4
	mov r6, #1
	bne _02034384
	ldrsb r0, [r7, #0xe]
	cmp r0, #0
	ble _02034384
	sub r0, r0, #1
	mov r1, r0, lsl #2
	add r0, r2, r0, lsl #2
	ldrsh r1, [r2, r1]
	ldrsh r0, [r0, #2]
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
_02034384:
	ldrsb r0, [r7, #0xd]
	cmp r0, #1
	beq _0203439C
	cmp r0, #2
	beq _020343AC
	b _020343BC
_0203439C:
	mov r0, r8
	mov r1, r7
	bl FUN_020345a8
	b _020343B8
_020343AC:
	mov r0, r8
	mov r1, r7
	bl FUN_02034654
_020343B8:
	mov r6, r0
_020343BC:
	ldrsb r2, [r7, #0xc]
	cmp r2, #0
	ldrgtsb r0, [r7, #0xa]
	cmpgt r0, #0
	ble _02034570
	cmp r0, #0x14
	beq _02034570
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x14]
	cmp r2, #5
	mov r4, r1, asr #0xc
	mov r5, r0, asr #0xc
	addls pc, pc, r2, lsl #2
	b _0203453C
_020343F4: ; jump table
	b _0203453C ; case 0
	b _0203440C ; case 1
	b _02034490 ; case 2
	b _02034490 ; case 3
	b _02034490 ; case 4
	b _02034464 ; case 5
_0203440C:
	ldr r2, [r8, #0x1c]
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, #0
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r3, r2
	bl FUN_ov16_0211346c
	ldr r1, [r8, #0x24]
	ldrsb r2, [r7, #0xf]
	and r3, r1, #0xff
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	bl FUN_ov16_021137dc
_0203444C:
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, #5
	mov r3, #2
	bl FUN_ov16_02113f7c
	b _0203453C
_02034464:
	ldr r2, [r8, #0x1c]
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r2, #0
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r3, r2
	bl FUN_ov16_0211346c
	b _0203444C
_02034490:
	ldr r2, [r8, #0x20]
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r10, #0
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_0211346c
	ldr r1, [r8, #0x28]
	mov r8, #5
	and r3, r1, #0xff
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	bl FUN_ov16_021137dc
	str r10, [sp]
	ldrsb r3, [r7, #0xc]
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	sub r3, r3, #2
	bl FUN_ov16_0211401c
	sub r0, r5, #6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	add r3, r4, #8
	mov r3, r3, lsl #0x10
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	mov r3, #2
	bl FUN_ov16_02113ec0
_0203453C:
	ldrsh r1, [r7, #4]
	mov r2, r4, lsl #0x10
	mov r3, r5, lsl #0x10
	ldr r0, [r9]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	b _02034594
_02034570:
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r2, r4
	bl FUN_ov16_02114370
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r3, r4
	mov r2, #5
	bl FUN_ov16_02113f7c
_02034594:
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020345A0: .word unk_0208C37C
_020345A4: .word unk_02099F38
	arm_func_end FUN_02034304

	arm_func_start FUN_020345a8
FUN_020345a8: ; 0x020345A8
	ldrsb r3, [r1, #0xa]
	mov r0, #1
	cmp r3, #0xb
	bgt _020345DC
	cmp r3, #0xa
	blt _020345D0
	beq _02034604
	cmp r3, #0xb
	beq _0203461C
	b _02034640
_020345D0:
	cmp r3, #0
	beq _020345E8
	b _02034640
_020345DC:
	cmp r3, #0x14
	beq _02034628
	b _02034640
_020345E8:
	ldr r12, [r1, #0x18]
	ldr r3, [r1, #0x1c]
	mov r2, #0xa
	str r12, [r1, #0x10]
	str r3, [r1, #0x14]
	strb r2, [r1, #0xa]
	bx lr
_02034604:
	ldrsb r2, [r1, #0xb]
	cmp r2, #0
	addne r2, r3, #1
	moveq r0, #0
	strneb r2, [r1, #0xa]
	bx lr
_0203461C:
	mov r2, #0x14
	strb r2, [r1, #0xa]
	bx lr
_02034628:
	ldrsb r2, [r1, #0xb]
	cmp r2, #0
	moveq r2, #0
	movne r0, #0
	streqb r2, [r1, #0xa]
	bx lr
_02034640:
	ldrsb r2, [r1, #0xb]
	cmp r2, #0
	moveq r2, #0xb
	streqb r2, [r1, #0xa]
	bx lr
	arm_func_end FUN_020345a8

	arm_func_start FUN_02034654
FUN_02034654: ; 0x02034654
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldrsb r3, [r5, #0xa]
	mov r4, #1
	cmp r3, #0xa
	bgt _02034690
	bge _02034704
	cmp r3, #1
	bgt _0203476C
	cmp r3, #0
	blt _0203476C
	beq _020346AC
	cmp r3, #1
	beq _020346CC
	b _0203476C
_02034690:
	cmp r3, #0xb
	bgt _020346A0
	beq _02034720
	b _0203476C
_020346A0:
	cmp r3, #0x14
	beq _02034758
	b _0203476C
_020346AC:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	sub r2, r0, #0x100000
	add r0, r3, #1
	str r2, [r5, #0x10]
	str r1, [r5, #0x14]
	strb r0, [r5, #0xa]
	b _0203477C
_020346CC:
	add r0, r0, #0x1000
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x3e0]
	ldr r2, [r5, #0x10]
	add r1, r1, #0x40000
	mov r3, #0xcd
	bl FUN_02030740
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x10]
	cmp r0, r1
	blt _0203477C
	mov r0, #0xa
	str r1, [r5, #0x10]
	strb r0, [r5, #0xa]
_02034704:
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	ldrnesb r0, [r5, #0xa]
	moveq r4, #0
	addne r0, r0, #1
	strneb r0, [r5, #0xa]
	b _0203477C
_02034720:
	add r0, r0, #0x1000
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x3e0]
	ldr r2, [r5, #0x10]
	sub r1, r1, #0x140000
	mov r3, #0xcd
	bl FUN_02030740
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x10]
	sub r1, r1, #0x100000
	cmp r0, r1
	movle r0, #0x14
	strleb r0, [r5, #0xa]
	b _0203477C
_02034758:
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	movne r4, #0
	moveq r0, #0
	b _02034778
_0203476C:
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	moveq r0, #0xb
_02034778:
	streqb r0, [r5, #0xa]
_0203477C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02034654

	arm_func_start FUN_02034784
FUN_02034784: ; 0x02034784
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb8
	ldr r4, _02034F20 ; =0x0208FC3C
	mov r11, r3
	add r3, sp, #0x2c
	mov r10, r1
	str r0, [sp, #0x14]
	mov r6, r2
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r4, #6
	cmp r11, #0
	movgt r1, r4
	ldrsb r0, [r10, #0xd1]
	movle r1, #0xa
	ldrsb r3, [r10, #0xce]
	add r5, r1, r0, lsl #1
	mov r1, #1
	mov r2, #0
	cmp r3, #0xa
	str r1, [sp, #0x18]
	bgt _02034814
	mov r7, #0
	cmp r3, #0xa
	ldrge r11, _02034F24 ; =0x02099F38
	movge r6, r7
	bge _02034CDC
	cmp r3, #1
	bgt _02034C94
	cmp r3, #0
	blt _02034C94
	beq _02034820
	cmp r3, #1
	mov r8, r7
	beq _02034A64
	b _02034C94
_02034814:
	cmp r3, #0x14
	beq _02034EFC
	b _02034C94
_02034820:
	ldrsb r1, [r10, #0xcf]
	ldr r5, _02034F24 ; =0x02099F38
	mov r11, #1
	cmp r1, #0
	addle sp, sp, #0xb8
	movle r0, r7
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r10, #0xd2]
	mov r9, #0
	add r6, sp, #0x38
	cmp r1, #0
	eorne r0, r0, #1
	strneb r0, [r10, #0xd1]
	b _02034A44
_02034858:
	ldrsb r0, [r10, #0xd2]
	cmp r0, #0
	bge _020348C4
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	add r0, r0, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	cmp r1, #0
	beq _020348B4
	ldr r0, [r5]
	bl FUN_020591e8
	ldrsb r2, [r10, #0xd1]
	ldr r0, [r5]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	bl FUN_02058ee0
	ldrsb r2, [r10, #0xd1]
	ldr r0, [r5]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	bl FUN_02058ee0
_020348B4:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	add r0, r0, r9, lsl #1
	strh r7, [r0, #0xc0]
_020348C4:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	add r0, r0, r9, lsl #1
	ldrsh r0, [r0, #0xc0]
	cmp r0, #0
	bne _02034A40
	ldr r1, _02034F28 ; =0x0208FD7C
	mov r0, r6
	bl STD_CopyString
	ldrsb r3, [r10, #0xd1]
	mov r0, #0x60
	mov r2, r9, lsl #5
	mla r1, r3, r0, r10
	ldrsb r0, [r2, r1]
	cmp r0, #0x2a
	beq _02034938
	add r1, r1, r2
	mov r0, r6
	bl STD_ConcatenateString
	cmp r9, #2
	mov r0, r6
	beq _02034924
	ldr r1, _02034F2C ; =0x0208FD90
	b _02034928
_02034924:
	ldr r1, _02034F30 ; =0x0208FD98
_02034928:
	bl STD_ConcatenateString
	str r7, [sp, #0x24]
	str r7, [sp, #0x28]
	b _020349E0
_02034938:
	add r1, sp, #0x2c
	ldr r1, [r1, r9, lsl #2]
	mov r0, r6
	bl STD_ConcatenateString
	ldrsb r1, [r10, #0xd1]
	mov r0, #0x60
	mla r0, r1, r0, r10
	add r0, r0, r9, lsl #5
	add r0, r0, #1
	bl atoi
	mov r8, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _02034990
	mov r1, r8
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl FUN_ov16_020f34f0
	cmp r0, #0
	bne _020349E0
_02034990:
	cmp r9, #0
	beq _020349AC
	cmp r9, #1
	beq _020349C0
	cmp r9, #2
	beq _020349D0
	b _02034A40
_020349AC:
	ldr r1, _02034F34 ; =0x0208FDA0
	mov r2, r8
	mov r0, r6
_020349B8:
	bl sprintf
	b _02034A40
_020349C0:
	mov r2, r8
	mov r0, r6
	ldr r1, _02034F38 ; =0x0208FDA8
	b _020349B8
_020349D0:
	mov r2, r8
	mov r0, r6
	ldr r1, _02034F3C ; =0x0208FDB0
	b _020349B8
_020349E0:
	cmp r9, #2
	beq _02034A00
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r5]
	mov r1, #5
	stmia sp, {r7, r11}
	b _02034A18
_02034A00:
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r5]
	mov r1, #3
	str r7, [sp]
	str r7, [sp, #4]
_02034A18:
	str r7, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r6
	mov r3, r11
	bl FUN_02058800
	ldrsb r2, [r10, #0xd1]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	strh r0, [r1, #0xc0]
_02034A40:
	add r9, r9, #1
_02034A44:
	cmp r9, #3
	blt _02034858
	ldrsb r0, [r10, #0xce]
	mov r1, #0
	strb r1, [r10, #0xd2]
_02034A58:
	add r0, r0, #1
	strb r0, [r10, #0xce]
	b _02034F14
_02034A64:
	mla r1, r0, r4, r10
	ldrsh r1, [r1, #0xc0]
	ldr r7, _02034F24 ; =0x02099F38
	cmp r1, #0
	beq _02034A8C
	ldr r0, _02034F24 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	bgt _02034F14
_02034A8C:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	ldrsh r1, [r0, #0xc2]
	cmp r1, #0
	beq _02034AB4
	ldr r0, _02034F24 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	bgt _02034F14
_02034AB4:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	ldrsh r1, [r0, #0xc4]
	cmp r1, #0
	beq _02034ADC
	ldr r0, _02034F24 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	bgt _02034F14
_02034ADC:
	mov r0, #0xc0
	mul r1, r11, r0
	mov r0, #0x32
	mul r2, r11, r0
	rsb r0, r1, #0x80
	mov r0, r0, lsl #0x10
	rsb r1, r2, #0x32
	mov r0, r0, asr #0x10
	mov r9, #0
	and r11, r1, #0xff
	str r0, [sp, #0x20]
	b _02034BB8
_02034B0C:
	ldrsb r2, [r10, #0xd1]
	ldr r0, [r7]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	bl FUN_ov16_021146a4
	ldrsb r3, [r10, #0xd1]
	ldr r0, [r7]
	mov r2, r8
	mla r1, r3, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	mov r3, r8
	bl FUN_02059038
	ldrsb r12, [r10, #0xd1]
	ldr r0, [r7]
	mov r1, r6
	mla r3, r12, r4, r10
	add r3, r3, r9, lsl #1
	ldrsh r3, [r3, #0xc0]
	add r2, r5, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r5, r9
	mov r3, r8
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r5, r9
	mov r3, r11
	bl FUN_ov16_02114150
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0x20]
	mov r1, r6
	add r2, r5, r9
	bl FUN_ov16_02113b78
	add r9, r9, #1
_02034BB8:
	cmp r9, #2
	blt _02034B0C
	ldrsb r1, [r10, #0xd1]
	mov r7, #6
	ldr r8, _02034F24 ; =0x02099F38
	mla r0, r1, r7, r10
	ldrsh r1, [r0, #0xc4]
	ldr r0, [r8]
	mov r4, #0
	bl FUN_0205998c
	movs r1, r0
	beq _02034BFC
	ldr r2, _02034F40 ; =0x02099F04
	ldrb r0, [r10, #0xcc]
	ldr r1, [r1, #4]
	ldr r2, [r2]
	bl FUN_ov16_020f0c48
_02034BFC:
	ldrsb r1, [r10, #0xd1]
	mov r2, r4
	mov r3, r4
	mla r0, r1, r7, r10
	ldrsh r1, [r0, #0xc4]
	ldr r0, [r8]
	bl FUN_02059038
	ldrsb r3, [r10, #0xd1]
	ldr r0, [r8]
	mov r1, r6
	mla r2, r3, r7, r10
	ldrsh r3, [r2, #0xc4]
	add r2, r5, #1
	and r3, r3, #0xff
	bl FUN_ov16_02113890
	ldr r0, [r8]
	mov r3, r4
	mov r1, r6
	add r2, r5, #1
	bl FUN_ov16_02113944
	ldrsb r0, [r10, #0xcf]
	cmp r0, #2
	beq _02034C60
	ldr r4, _02034F44 ; =0x00007FFF
	b _02034C64
_02034C60:
	ldr r4, _02034F48 ; =0x0000318C
_02034C64:
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02113b00
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	add r2, r5, #1
	bl FUN_ov16_02113b00
	ldrsb r0, [r10, #0xce]
	b _02034A58
_02034C94:
	ldrsb r0, [r10, #0xd0]
	cmp r0, #1
	beq _02034CAC
	cmp r0, #2
	beq _02034CC4
	b _02034F14
_02034CAC:
	ldr r0, [sp, #0x14]
	mov r1, r10
	mov r2, r6
	mov r3, r11
	bl FUN_02034f64
	b _02034F14
_02034CC4:
	ldr r0, [sp, #0x14]
	mov r1, r10
	mov r2, r6
	mov r3, r11
	bl FUN_020350dc
	b _02034F14
_02034CDC:
	ldrsb r2, [r10, #0xd2]
	mov r1, r7
	str r1, [sp, #0x18]
	cmp r2, #0
	beq _02034ED8
	cmp r2, #0
	bge _02034ED0
	eor r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	mov r9, r1
	str r0, [sp, #0x1c]
	mov r0, r0
	mov r1, #0x60
	mla r7, r0, r4, r10
	mla r4, r0, r1, r10
	add r5, sp, #0x38
	b _02034EBC
_02034D24:
	add r0, r7, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	cmp r1, #0
	beq _02034D64
	ldr r0, [r11]
	bl FUN_020591e8
	add r0, r7, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	ldr r0, [r11]
	bl FUN_02058ee0
	add r0, r7, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	ldr r0, [r11]
	bl FUN_02058ee0
	add r0, r7, r9, lsl #1
	strh r6, [r0, #0xc0]
_02034D64:
	ldr r1, _02034F4C ; =0x0208FDB8
	mov r0, r5
	bl STD_CopyString
	mov r1, r9, lsl #5
	ldrsb r0, [r1, r4]
	cmp r0, #0x2a
	beq _02034DB4
	add r1, r4, r1
	mov r0, r5
	bl STD_ConcatenateString
	cmp r9, #2
	mov r0, r5
	beq _02034DA0
	ldr r1, _02034F50 ; =0x0208FDCC
	b _02034DA4
_02034DA0:
	ldr r1, _02034F54 ; =0x0208FDD4
_02034DA4:
	bl STD_ConcatenateString
	str r6, [sp, #0x24]
	str r6, [sp, #0x28]
	b _02034E50
_02034DB4:
	add r1, sp, #0x2c
	ldr r1, [r1, r9, lsl #2]
	mov r0, r5
	bl STD_ConcatenateString
	add r0, r4, r9, lsl #5
	add r0, r0, #1
	bl atoi
	mov r8, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _02034E00
	mov r1, r8
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl FUN_ov16_020f34f0
	cmp r0, #0
	bne _02034E50
_02034E00:
	cmp r9, #0
	beq _02034E1C
	cmp r9, #1
	beq _02034E30
	cmp r9, #2
	beq _02034E40
	b _02034EB8
_02034E1C:
	ldr r1, _02034F58 ; =0x0208FDDC
	mov r2, r8
	mov r0, r5
_02034E28:
	bl sprintf
	b _02034EB8
_02034E30:
	mov r2, r8
	mov r0, r5
	ldr r1, _02034F5C ; =0x0208FDE4
	b _02034E28
_02034E40:
	mov r2, r8
	mov r0, r5
	ldr r1, _02034F60 ; =0x0208FDEC
	b _02034E28
_02034E50:
	cmp r9, #2
	beq _02034E80
	ldr r8, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r0, [r11]
	mov r2, #1
	str r6, [sp]
	stmib sp, {r2, r6}
	str r3, [sp, #0xc]
	mov r1, #5
	str r8, [sp, #0x10]
	b _02034EA4
_02034E80:
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r11]
	mov r1, #3
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
_02034EA4:
	mov r2, r5
	mov r3, #1
	bl FUN_02058800
	add r1, r7, r9, lsl #1
	strh r0, [r1, #0xc0]
_02034EB8:
	add r9, r9, #1
_02034EBC:
	cmp r9, #3
	blt _02034D24
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	strb r0, [r10, #0xd2]
_02034ED0:
	mov r0, #0xb
	strb r0, [r10, #0xce]
_02034ED8:
	ldrsb r0, [r10, #0xcf]
	cmp r0, #0
	movlt r0, #1
	strltb r0, [r10, #0xcd]
	ldrsb r0, [r10, #0xcd]
	cmp r0, #0
	movne r0, #0xb
	strneb r0, [r10, #0xce]
	b _02034F14
_02034EFC:
	ldrsb r0, [r10, #0xd2]
	strb r2, [r10, #0xce]
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x18]
	streqb r0, [r10, #0xcf]
_02034F14:
	ldr r0, [sp, #0x18]
	add sp, sp, #0xb8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02034F20: .word unk_0208FC3C
_02034F24: .word unk_02099F38
_02034F28: .word unk_0208FD7C
_02034F2C: .word unk_0208FD90
_02034F30: .word unk_0208FD98
_02034F34: .word unk_0208FDA0
_02034F38: .word unk_0208FDA8
_02034F3C: .word unk_0208FDB0
_02034F40: .word unk_02099F04
_02034F44: .word 0x00007FFF
_02034F48: .word 0x0000318C
_02034F4C: .word unk_0208FDB8
_02034F50: .word unk_0208FDCC
_02034F54: .word unk_0208FDD4
_02034F58: .word unk_0208FDDC
_02034F5C: .word unk_0208FDE4
_02034F60: .word unk_0208FDEC
	arm_func_end FUN_02034784

	arm_func_start FUN_02034f64
FUN_02034f64: ; 0x02034F64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldrsb r1, [r10, #0xd1]
	mov r8, r3
	mov r9, r2
	ldrsb r0, [r10, #0xce]
	mov r2, #6
	cmp r8, #0
	movle r2, #0xa
	add r6, r2, r1, lsl #1
	cmp r0, #2
	beq _02034FA0
	cmp r0, #0xb
	beq _02035058
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02034FA0:
	mov r0, #0x70
	mul r0, r8, r0
	rsb r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r7, #0
	mov r5, r0, asr #0x10
	mov r11, #0x40
	ldr r4, _020350D8 ; =0x02099F38
	b _02034FFC
_02034FC4:
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r6, r7
	bl FUN_ov16_02113b78
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r7, r7, #1
_02034FFC:
	cmp r7, #2
	blt _02034FC4
	ldrsb r0, [r10, #0xd1]
	mov r1, #6
	cmp r8, #0
	movle r1, #0xa
	eor r0, r0, #1
	mov r7, #0
	add r6, r1, r0, lsl #1
	mov r5, #2
	ldr r4, _020350D8 ; =0x02099F38
	b _02035044
_0203502C:
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r6, r7
	bl FUN_ov16_02113f7c
	add r7, r7, #1
_02035044:
	cmp r7, #2
	blt _0203502C
	mov r0, #0xa
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035058:
	ldrsb r0, [r10, #0xcd]
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r10, #0xce]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xc0
	mul r0, r8, r0
	rsb r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r7, #0
	mov r5, r0, asr #0x10
	mov r8, #0x40
	mov r11, #2
	ldr r4, _020350D8 ; =0x02099F38
	b _020350C4
_02035094:
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r6, r7
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, r7
	mov r3, r11
	bl FUN_ov16_02113f7c
	add r7, r7, #1
_020350C4:
	cmp r7, #2
	blt _02035094
	mov r0, #0x14
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020350D8: .word unk_02099F38
	arm_func_end FUN_02034f64

	arm_func_start FUN_020350dc
FUN_020350dc: ; 0x020350DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	mov r9, r2
	mov r4, r3
	ldrsb r2, [r10, #0xd1]
	ldrsb r1, [r10, #0xce]
	mov r3, #6
	cmp r4, #0
	movle r3, #0xa
	add r7, r3, r2, lsl #1
	cmp r1, #0xb
	bgt _02035130
	bge _02035258
	cmp r1, #3
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #2
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _0203513C
	cmp r1, #3
	beq _020351BC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035130:
	cmp r1, #0xc
	beq _0203526C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203513C:
	mov r0, #0xc0
	mul r0, r4, r0
	rsb r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r8, #0
	mov r5, r0, asr #0x10
	mov r6, #0x40
	mov r11, #1
	ldr r4, _02035338 ; =0x02099F38
	b _02035198
_02035164:
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r7, r8
	bl FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r7, r8
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r8, r8, #1
_02035198:
	cmp r8, #2
	blt _02035164
	ldrsb r0, [r10, #0xce]
	mov r1, #0xa
	str r1, [r10, #0xd8]
	add r0, r0, #1
	str r1, [r10, #0xd4]
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020351BC:
	add r0, r0, #0x1000
	ldr r1, [r10, #0xd4]
	ldr r0, [r0, #0x3e0]
	subs r0, r1, r0
	str r0, [r10, #0xd4]
	movmi r0, #0
	strmi r0, [r10, #0xd4]
	ldr r0, [r10, #0xd4]
	ldr r1, [r10, #0xd8]
	mov r0, r0, lsl #6
	bl _s32_div_f
	mov r8, r0
	add r0, r8, #0x70
	mul r1, r0, r4
	rsb r0, r1, #0x80
	mov r6, #0x40
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r5, _02035338 ; =0x02099F38
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	bl FUN_ov16_02113b78
	add r3, r8, #0x70
	mul r4, r3, r4
	str r6, [sp]
	rsb r3, r4, #0x80
	mov r3, r3, lsl #0x10
	ldr r0, [r5]
	mov r1, r9
	add r2, r7, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0xd4]
	cmp r0, #0
	moveq r0, #0xa
	streqb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035258:
	mov r2, #0xa
	add r1, r1, #1
	str r2, [r10, #0xd8]
	str r2, [r10, #0xd4]
	strb r1, [r10, #0xce]
_0203526C:
	add r0, r0, #0x1000
	ldr r1, [r10, #0xd4]
	ldr r0, [r0, #0x3e0]
	subs r0, r1, r0
	str r0, [r10, #0xd4]
	movmi r0, #0
	strmi r0, [r10, #0xd4]
	ldr r0, [r10, #0xd4]
	ldr r1, [r10, #0xd8]
	mov r0, r0, lsl #6
	bl _s32_div_f
	rsb r8, r0, #0x40
	add r0, r8, #0x70
	mul r1, r0, r4
	rsb r0, r1, #0x80
	mov r6, #0x40
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r5, _02035338 ; =0x02099F38
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	bl FUN_ov16_02113b78
	add r0, r8, #0x70
	mul r1, r0, r4
	rsb r0, r1, #0x80
	mov r1, r0, lsl #0x10
	str r6, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r5]
	mov r1, r9
	add r2, r7, #1
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0xd4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #2
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	mov r1, r9
	mov r3, r4
	add r2, r7, #1
	bl FUN_ov16_02113f7c
	mov r0, #0x14
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035338: .word unk_02099F38
	arm_func_end FUN_020350dc

	arm_func_start FUN_0203533c
FUN_0203533c: ; 0x0203533C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	add r0, r0, #0xa70
	add r4, r0, #0x3000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldr r6, _02035440 ; =0x02099EB0
	mov r8, r2
	ldr r0, [r6]
	mov r1, r8
	mov r5, r3
	bl FUN_0205e1e8
	str r0, [r4, #4]
	cmp r0, #0
	bge _020353DC
	mov r7, #1
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	bl FUN_0205d734
	str r0, [r4, #4]
	str r7, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r4, #4]
	mov r3, r8
	bl FUN_0205d9a4
	ldr r1, [r4, #4]
	ldr r0, [r6]
	mov r2, r8
	mov r3, r7
	bl FUN_0205dbdc
	ldr r0, [r6]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	strneb r7, [r0, #0x28]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x10
	b _020353E4
_020353DC:
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x20
_020353E4:
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	beq _02035428
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, _02035440 ; =0x02099EB0
	ldr r1, [r4, #4]
	ldr r0, [r0]
	ldr r2, _02035444 ; =0x0209A7F4
	bl FUN_0205dec8
_02035428:
	ldrh r1, [r4, #0xa]
	mov r0, #1
	orr r1, r1, #1
	strh r1, [r4, #0xa]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02035440: .word unk_02099EB0
_02035444: .word unk_0209A7F4
	arm_func_end FUN_0203533c

	arm_func_start FUN_02035448
FUN_02035448: ; 0x02035448
	stmfd sp!, {r4, lr}
	add r0, r0, #0xa70
	add r2, r0, #0x3000
	mov r0, #0x28
	mla r4, r1, r0, r2
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r4, pc}
	tst r0, #0x20
	bne _02035480
	ldr r0, _02035494 ; =0x02099EB0
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205dd98
_02035480:
	mov r0, r4
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
_02035494: .word unk_02099EB0
	arm_func_end FUN_02035448

	arm_func_start FUN_02035498
FUN_02035498: ; 0x02035498
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xa70
	add r2, r0, #0x3000
	mov r0, #0x28
	mla r5, r1, r0, r2
	ldrh r0, [r5, #0xa]
	tst r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _020354FC ; =0x02099EB0
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205dd38
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	ldr r0, [r4]
	mov r2, #0x100
	bl FUN_0205dea8
	ldr r0, [r4]
	mov r1, #2
	bl FUN_0205e164
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020354FC: .word unk_02099EB0
	arm_func_end FUN_02035498

	arm_func_start FUN_02035500
FUN_02035500: ; 0x02035500
	mov r2, #0x28
	mla r0, r1, r2, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0x7a]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02035500

	arm_func_start FUN_0203551c
FUN_0203551c: ; 0x0203551C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	add r0, r0, #0xa70
	add r4, r0, #0x3000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r6, r2
	mov r7, r3
	tst r0, #1
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x30]
	cmp r0, #0
	subgt r5, r0, #1
	movgt r0, #0
	bgt _02035590
	cmp r7, #0
	movlt r5, #0
	movlt r0, r5
	blt _02035590
	ldr r0, _020355F0 ; =0x02099EF0
	mov r1, r7
	ldr r0, [r0]
	mov r2, #0
	bl FUN_ov132_021430b4
	ldrb r5, [r0, #0x1a]
	mov r0, r7
	bl FUN_ov16_020f07a8
_02035590:
	ldr r1, [sp, #0x28]
	mov r2, #0
	cmp r1, #0
	str r2, [sp, #0xc]
	addne r1, sp, #0x28
	strne r1, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x10]
	cmp r1, #0
	addne r1, sp, #0x2c
	strne r1, [sp, #0x10]
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _020355F4 ; =0x02099EB0
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r6
	mov r3, r5
	bl FUN_0205dec8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020355F0: .word unk_02099EF0
_020355F4: .word unk_02099EB0
	arm_func_end FUN_0203551c

	arm_func_start FUN_020355f8
FUN_020355f8: ; 0x020355F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r4, #0x28
	mul r4, r1, r4
	add r0, r0, #0xa70
	add r0, r0, #0x3000
	ldr r5, [sp, #0x48]
	adds r4, r0, r4
	mov r7, r2
	mov r6, r3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02035754 ; =0x02099EB0
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205e084
	ldr r12, [sp, #4]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r12, [sp, #0x1c]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r7, #0
	beq _02035690
	add r1, sp, #0x10
	add r0, sp, #0x1c
	mov r2, r1
	bl VEC_Add
_02035690:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _020356B4
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Distance
	ldr r1, [sp, #0x4c]
	bl FX_Div
	mov r5, r0, asr #0xc
_020356B4:
	cmp r5, #0
	bne _020356E4
	ldr r1, [sp, #0x18]
	ldr r0, _02035754 ; =0x02099EB0
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0205e01c
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020356E4:
	add r0, sp, #0x10
	add r1, sp, #0x1c
	mov r2, r0
	bl VEC_Subtract
	ldr r0, [sp, #0x10]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02035754: .word unk_02099EB0
	arm_func_end FUN_020355f8

	arm_func_start FUN_02035758
FUN_02035758: ; 0x02035758
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r4, #0x28
	mul r4, r1, r4
	add r0, r0, #0xa70
	add r0, r0, #0x3000
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	adds r4, r0, r4
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0
	bne _02035828
	ldr r0, _02035980 ; =0x0B60B60B
	mov r1, #0xb6
	umull r3, r10, r8, r0
	umull lr, r12, r7, r0
	umull r9, r5, r6, r0
	adds r3, r3, #0
	mla r10, r8, r1, r10
	mov r2, r8, asr #0x1f
	mla r10, r2, r0, r10
	adc r2, r10, #0x800
	mov r2, r2, lsl #4
	mla r12, r7, r1, r12
	mla r5, r6, r1, r5
	mov r3, r7, asr #0x1f
	mov r1, r6, asr #0x1f
	mla r12, r3, r0, r12
	adds r3, lr, #0
	adc r3, r12, #0x800
	mla r5, r1, r0, r5
	adds r0, r9, #0
	adc r0, r5, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, _02035984 ; =0x02099EB0
	mov r3, r3, lsl #4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0205e050
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035828:
	ldr r0, _02035984 ; =0x02099EB0
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205e0f4
	ldr r9, [sp, #4]
	mov r3, #0x1680000
	umull r0, lr, r9, r3
	mov r9, r9, asr #0x1f
	adds r0, r0, #0x80000
	mla lr, r9, r3, lr
	ldr r2, [sp, #8]
	adc lr, lr, #0
	umull r12, r9, r2, r3
	mov r2, r2, asr #0x1f
	mov r0, r0, lsr #0x14
	orr r0, r0, lr, lsl #12
	sub r0, r8, r0
	adds r8, r12, #0x80000
	mla r9, r2, r3, r9
	ldr r1, [sp, #0xc]
	adc r2, r9, #0
	mov r8, r8, lsr #0x14
	orr r8, r8, r2, lsl #12
	sub r2, r7, r8
	umull r8, r7, r1, r3
	mov r1, r1, asr #0x1f
	str r2, [sp, #0x14]
	adds r2, r8, #0x80000
	mla r7, r1, r3, r7
	adc r1, r7, #0
	mov r2, r2, lsr #0x14
	orr r2, r2, r1, lsl #12
	sub r2, r6, r2
	mov r1, r5
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl _s32_div_f
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5
	bl _s32_div_f
	ldr r12, [sp, #0x10]
	ldr r2, _02035980 ; =0x0B60B60B
	ldr r8, [sp, #0x14]
	umull r9, lr, r12, r2
	mov r3, #0xb6
	mla lr, r12, r3, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r2, lr
	adds r9, r9, #0
	adc r1, lr, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	str r1, [r4, #0x1c]
	umull r12, r1, r8, r2
	mla r1, r8, r3, r1
	mov r7, r8, asr #0x1f
	mla r1, r7, r2, r1
	adds r12, r12, #0
	adc r1, r1, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x14]
	str r1, [r4, #0x20]
	umull r7, r1, r0, r2
	mla r1, r0, r3, r1
	mov r6, r0, asr #0x1f
	mla r1, r6, r2, r1
	adds r0, r7, #0
	adc r0, r1, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r4, #0x24]
	strh r5, [r4, #0xe]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035980: .word 0x0B60B60B
_02035984: .word unk_02099EB0
	arm_func_end FUN_02035758

	arm_func_start FUN_02035988
FUN_02035988: ; 0x02035988
	stmfd sp!, {r3, lr}
	add r0, r0, #0xa70
	add r12, r0, #0x3000
	mov r0, #0x28
	mla r12, r1, r0, r12
	ldrh r0, [r12, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020359BC ; =0x02099EB0
	ldr r1, [r12, #4]
	ldr r0, [r0]
	bl FUN_0205e254
	ldmfd sp!, {r3, pc}
_020359BC: .word unk_02099EB0
	arm_func_end FUN_02035988

	arm_func_start FUN_020359c0
FUN_020359c0: ; 0x020359C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, #0x28
	mov r9, #0
	add r0, r10, #0xa70
	add r8, r0, #0x3000
	mov r7, r9
	ldr r6, _02035A38 ; =0x02099EB0
	mov r4, r11
	mov r5, r11
	b _02035A2C
_020359EC:
	mla r1, r9, r5, r10
	add r0, r1, #0x3a00
	ldrh r0, [r0, #0x7a]
	tst r0, #1
	beq _02035A28
	tst r0, #0x20
	bne _02035A18
	add r1, r1, #0x3000
	ldr r0, [r6]
	ldr r1, [r1, #0xa74]
	bl FUN_0205dd98
_02035A18:
	mla r0, r9, r4, r8
	mov r1, r7
	mov r2, r11
	bl MI_CpuFill8
_02035A28:
	add r9, r9, #1
_02035A2C:
	cmp r9, #2
	blt _020359EC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035A38: .word unk_02099EB0
	arm_func_end FUN_020359c0

	arm_func_start FUN_02035a3c
FUN_02035a3c: ; 0x02035A3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x34
	mov r9, r0
	ldr r4, _02035C40 ; =0x02099EB0
	mov r7, #0
	b _02035C30
_02035A54:
	add r0, r9, #0xa70
	add r1, r0, #0x3000
	mov r0, #0x28
	mla r6, r7, r0, r1
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02035C2C
	ldrh r0, [r6, #0xa]
	tst r0, #0x10
	beq _02035A98
	ldr r0, [r4]
	bl FUN_0205de18
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02035C44 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02035A98:
	ldr r1, [r6, #4]
	ldr r0, [r4]
	bl FUN_0205cc5c
	cmp r0, #0
	moveq r0, #0
	beq _02035AC0
	ldrb r0, [r0, #0x24]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
_02035AC0:
	cmp r0, #0
	ldrneh r0, [r6, #0xa]
	orrne r0, r0, #2
	strneh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #0x100
	beq _02035B80
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #0x10
	bl FUN_0205e084
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r8, #0
	add r10, r9, #0x1000
	add r5, sp, #0x28
	b _02035B40
_02035B14:
	mov r0, r5
	mov r2, r5
	add r1, r6, #0x10
	bl VEC_Add
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r6, #0xc]
	beq _02035B4C
	add r8, r8, #1
_02035B40:
	ldr r0, [r10, #0x3e0]
	cmp r8, r0
	blo _02035B14
_02035B4C:
	ldr r0, [sp, #0x30]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl FUN_0205e01c
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02035C48 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02035B80:
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	beq _02035C2C
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #4
	bl FUN_0205e0f4
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x24]
	str r1, [sp, #0x20]
	mov r8, #0
	add r0, r9, #0x1000
	b _02035BEC
_02035BC0:
	ldrh r1, [r6, #0xe]
	ldr r3, [sp, #0x20]
	ldr r2, [r6, #0x20]
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	add r2, r3, r2
	movs r1, r1, lsr #0x10
	str r2, [sp, #0x20]
	strh r1, [r6, #0xe]
	beq _02035BF8
	add r8, r8, #1
_02035BEC:
	ldr r1, [r0, #0x3e0]
	cmp r8, r1
	blo _02035BC0
_02035BF8:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r3, [sp, #0x20]
	bl FUN_0205e050
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02035C4C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02035C2C:
	add r7, r7, #1
_02035C30:
	cmp r7, #2
	blt _02035A54
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035C40: .word unk_02099EB0
_02035C44: .word 0x0000FFEF
_02035C48: .word 0x0000FEFF
_02035C4C: .word 0x0000FDFF
	arm_func_end FUN_02035a3c

	arm_func_start FUN_02035c50
FUN_02035c50: ; 0x02035C50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r12, #0x28
_02035C5C:
	mla r4, r5, r12, r0
	add r3, r4, #0x1000
	ldr r3, [r3, #0x570]
	add lr, r4, #0x570
	cmp r1, r3
	addeq r3, r4, #0x1500
	ldreqsh r3, [r3, #0x78]
	cmpeq r2, r3
	addeq r0, lr, #0x1000
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #6
	blt _02035C5C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02035c50

	arm_func_start FUN_02035c98
FUN_02035c98: ; 0x02035C98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	movs r10, r1
	mov r9, r0
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0
	mov r0, r10
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	addeq sp, sp, #0xc
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r6
	mov r2, r6
	bl FUN_02035c50
	mov r4, r0
	str r10, [r4]
	mov r0, r5
	strh r8, [r4, #8]
	bl FUN_0206cbf8
	mov r5, r0
	ldr r0, [r9]
	bl FUN_02041fec
	cmp r0, #0x84
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movne r6, #1
	ldr r0, _02035D60 ; =0x02099EEC
	str r6, [sp, #8]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_0205a828
	str r0, [r4, #4]
	cmp r0, #0
	movlt r0, #0
	ldrgeh r0, [r4, #0xa]
	orrge r0, r0, #0x11
	strgeh r0, [r4, #0xa]
	ldrgesh r0, [r4, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035D60: .word unk_02099EEC
	arm_func_end FUN_02035c98

	arm_func_start FUN_02035d64
FUN_02035d64: ; 0x02035D64
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02035c50
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02035DAC ; =0x02099EEC
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205aa80
	mov r0, r4
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
_02035DAC: .word unk_02099EEC
	arm_func_end FUN_02035d64

	arm_func_start FUN_02035db0
FUN_02035db0: ; 0x02035DB0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02035DE8 ; =0x02099EEC
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_0205a9f8
	ldmfd sp!, {r3, pc}
_02035DE8: .word unk_02099EEC
	arm_func_end FUN_02035db0

	arm_func_start FUN_02035dec
FUN_02035dec: ; 0x02035DEC
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02035E2C ; =0x02099EEC
	ldr r1, [r0, #4]
	ldr r0, [r2]
	mov r2, r4
	bl FUN_0205adf8
	ldmfd sp!, {r4, pc}
_02035E2C: .word unk_02099EEC
	arm_func_end FUN_02035dec

	arm_func_start FUN_02035e30
FUN_02035e30: ; 0x02035E30
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02035E70 ; =0x02099EEC
	ldr r1, [r0, #4]
	ldr r0, [r2]
	rsb r2, r4, r4, lsl #3
	bl FUN_0205ada4
	ldmfd sp!, {r4, pc}
_02035E70: .word unk_02099EEC
	arm_func_end FUN_02035e30

	arm_func_start FUN_02035e74
FUN_02035e74: ; 0x02035E74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	ldr r5, [sp, #0x4c]
	cmp r1, #0
	mov r6, r3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02035c50
	movs r4, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _02035FE0 ; =0x02099EEC
	ldr r1, [r4, #4]
	ldr r0, [r7]
	mov r2, #1
	bl FUN_0205acb0
	ldr r1, [r7]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0205afb4
	ldr r12, [sp, #4]
	ldr r7, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r12, [sp, #0x1c]
	str r7, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r6, #0
	beq _02035F1C
	add r1, sp, #0x10
	add r0, sp, #0x1c
	mov r2, r1
	bl VEC_Add
_02035F1C:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _02035F40
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Distance
	ldr r1, [sp, #0x50]
	bl FX_Div
	mov r5, r0, asr #0xc
_02035F40:
	cmp r5, #0
	bne _02035F70
	ldr r1, [sp, #0x18]
	ldr r0, _02035FE0 ; =0x02099EEC
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0205aea0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02035F70:
	add r0, sp, #0x10
	add r1, sp, #0x1c
	mov r2, r0
	bl VEC_Subtract
	ldr r0, [sp, #0x10]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02035FE0: .word unk_02099EEC
	arm_func_end FUN_02035e74

	arm_func_start FUN_02035fe4
FUN_02035fe4: ; 0x02035FE4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	cmp r1, #0
	mov r5, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_02035c50
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _02036070
	ldr r0, _02036110 ; =0x0B60B60B
	mov r1, #0xb6
	umull r12, r6, r5, r0
	mla r6, r5, r1, r6
	mov r3, r5, asr #0x1f
	mla r6, r3, r0, r6
	mov r2, #0
	adds r0, r12, #0
	adc r0, r6, #0x800
	mov r3, r0, lsl #4
	ldr r1, _02036114 ; =0x02099EEC
	str r2, [sp]
	ldr r0, [r1]
	ldr r1, [r4, #4]
	mov r3, r3, lsr #0x10
	bl FUN_0205aefc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02036070:
	ldr r0, _02036114 ; =0x02099EEC
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205b04c
	ldr lr, [sp, #8]
	mov r0, #0x1680000
	umull r3, r2, lr, r0
	mov r1, lr, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x80000
	adc r0, r2, #0
	mov r2, r3, lsr #0x14
	ldr r6, [sp, #4]
	ldr r12, [sp, #0xc]
	orr r2, r2, r0, lsl #12
	ldr r1, [sp, #0x30]
	sub r0, r5, r2
	str r6, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	bl _s32_div_f
	ldr r1, _02036110 ; =0x0B60B60B
	mov r2, #0xb6
	umull r5, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r5, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sp, #0x30]
	str r1, [r4, #0x20]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02036110: .word 0x0B60B60B
_02036114: .word unk_02099EEC
	arm_func_end FUN_02035fe4

	arm_func_start FUN_02036118
FUN_02036118: ; 0x02036118
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r3
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_02035c50
	cmp r0, #0
	beq _02036144
	ldrh r1, [r0, #0xa]
	tst r1, #1
	bne _0203614C
_02036144:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203614C:
	ldr r2, _020361B4 ; =0x02099EEC
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_0205ad10
	mov r7, #0
	mov r6, r0
	mov r8, r7
	ldr r5, [sp, #0x18]
	b _020361A4
_02036170:
	ldr r1, [r5, r8, lsl #2]
	mov r0, r6
	bl FUN_ov16_020fb110
	mov r1, r0
	mov r0, r6
	bl FUN_ov16_020fb050
	ldr r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	sub r0, r3, r2
	bl FX_Div
	add r7, r7, r0, asr #12
	add r8, r8, #1
_020361A4:
	cmp r8, r4
	blt _02036170
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020361B4: .word unk_02099EEC
	arm_func_end FUN_02036118

	arm_func_start FUN_020361b8
FUN_020361b8: ; 0x020361B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_02035c50
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02036208 ; =0x02099EEC
	ldr r1, [r4, #4]
	ldr r0, [r0]
	ldr r3, [sp, #0x10]
	mov r2, r5
	bl FUN_0205ab68
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x10
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_02036208: .word unk_02099EEC
	arm_func_end FUN_020361b8

	arm_func_start FUN_0203620c
FUN_0203620c: ; 0x0203620C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02036244 ; =0x02099EEC
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_0205a9f8
	ldmfd sp!, {r3, pc}
_02036244: .word unk_02099EEC
	arm_func_end FUN_0203620c

	arm_func_start FUN_02036248
FUN_02036248: ; 0x02036248
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_02035c50
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020362AC ; =0x02099EEC
	ldr r1, [r4, #4]
	ldr r0, [r0]
	ldr r3, [sp, #0x10]
	mov r2, r5
	bl FUN_0205b0e4
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ldreqh r0, [r4, #0xa]
	orreq r0, r0, #4
	streqh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #8
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_020362AC: .word unk_02099EEC
	arm_func_end FUN_02036248

	arm_func_start FUN_020362b0
FUN_020362b0: ; 0x020362B0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02035c50
	cmp r0, #0
	beq _020362D8
	ldrh r0, [r0, #0xa]
	tst r0, #1
	ldmnefd sp!, {r3, pc}
_020362D8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020362b0

	arm_func_start FUN_020362e0
FUN_020362e0: ; 0x020362E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, #0
	add r0, r0, #0x570
	mov r9, #0x28
	add r4, r0, #0x1000
	mov r10, r6
	ldr r8, _02036344 ; =0x02099EEC
	mov r7, r9
	b _02036338
_02036304:
	mul r1, r6, r7
	ldr r0, [r4, r1]
	add r5, r4, r1
	cmp r0, #0
	beq _02036334
	ldr r0, [r8]
	ldr r1, [r5, #4]
	bl FUN_0205aa80
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl MI_CpuFill8
_02036334:
	add r6, r6, #1
_02036338:
	cmp r6, #6
	blt _02036304
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02036344: .word unk_02099EEC
	arm_func_end FUN_020362e0

	arm_func_start FUN_02036348
FUN_02036348: ; 0x02036348
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r9, r0
	ldr r4, _0203657C ; =0x02099EEC
	mov r7, #0
	b _0203656C
_02036360:
	mov r0, #0x28
	mul r1, r7, r0
	add r0, r9, #0x570
	add r2, r0, #0x1000
	ldr r0, [r2, r1]
	add r6, r2, r1
	cmp r0, #0
	beq _02036568
	ldrh r0, [r6, #0xa]
	tst r0, #0x10
	beq _020363AC
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205ac70
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036580 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_020363AC:
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205b264
	cmp r0, #0
	ldrneh r0, [r6, #0xa]
	orrne r0, r0, #2
	strneh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #8
	beq _020363FC
	tst r0, #4
	bne _020363FC
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205b204
	cmp r0, #0
	ldrneh r1, [r6, #0xa]
	ldrne r0, _02036584 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r6, #0xa]
_020363FC:
	ldrh r0, [r6, #0xa]
	tst r0, #0x100
	beq _020364AC
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #0x1c
	bl FUN_0205afb4
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x34]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r8, #0
	add r10, r9, #0x1000
	add r5, sp, #0x34
	b _0203646C
_02036440:
	mov r0, r5
	mov r2, r5
	add r1, r6, #0x10
	bl VEC_Add
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r6, #0xc]
	beq _02036478
	add r8, r8, #1
_0203646C:
	ldr r0, [r10, #0x3e0]
	cmp r8, r0
	blo _02036440
_02036478:
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	bl FUN_0205aea0
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036588 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_020364AC:
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	beq _02036568
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #0x10
	bl FUN_0205b04c
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r2, [sp, #0x28]
	str r0, [sp, #0x30]
	str r1, [sp, #0x2c]
	mov r8, #0
	add r0, r9, #0x1000
	b _02036518
_020364EC:
	ldrh r1, [r6, #0xe]
	ldr r3, [sp, #0x2c]
	ldr r2, [r6, #0x20]
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	add r2, r3, r2
	movs r1, r1, lsr #0x10
	str r2, [sp, #0x2c]
	strh r1, [r6, #0xe]
	beq _02036524
	add r8, r8, #1
_02036518:
	ldr r1, [r0, #0x3e0]
	cmp r8, r1
	blo _020364EC
_02036524:
	add r0, sp, #0x28
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r6, #4]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	str r2, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0205aefc
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _0203658C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02036568:
	add r7, r7, #1
_0203656C:
	cmp r7, #6
	blt _02036360
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203657C: .word unk_02099EEC
_02036580: .word 0x0000FFEF
_02036584: .word 0x0000FFF7
_02036588: .word 0x0000FEFF
_0203658C: .word 0x0000FDFF
	arm_func_end FUN_02036348

	arm_func_start FUN_02036590
FUN_02036590: ; 0x02036590
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x104
	mov r3, #0x28
	mul r6, r1, r3
	add r0, r0, #0xf60
	add r5, sp, #4
	add r7, r0, #0x1000
	ldr r4, _020365FC ; =0x02099EE8
	ldr r1, _02036600 ; =0x0208FDF4
	ldr r0, [r4]
	mov r9, r2
	mov r3, r5
	add r8, r7, r6
	bl FUN_0205e674
	str r9, [r7, r6]
	mov r2, #1
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	str r2, [sp]
	bl FUN_0205f26c
	str r0, [r8, #4]
	ldrh r0, [r8, #0xa]
	orr r0, r0, #0x11
	strh r0, [r8, #0xa]
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020365FC: .word unk_02099EE8
_02036600: .word unk_0208FDF4
	arm_func_end FUN_02036590

	arm_func_start FUN_02036604
FUN_02036604: ; 0x02036604
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xf60
	add r0, r0, #0x1000
	mov r4, #0x28
	mla r5, r1, r4, r0
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02036648 ; =0x02099EE8
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_0205f5ec
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02036648: .word unk_02099EE8
	arm_func_end FUN_02036604

	arm_func_start FUN_0203664c
FUN_0203664c: ; 0x0203664C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xf60
	add r2, r0, #0x1000
	mov r0, #0x28
	mla r5, r1, r0, r2
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0203669C ; =0x02099EE8
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205f56c
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #0x3000
	mov r3, #8
	bl FUN_0205fd68
	ldmfd sp!, {r3, r4, r5, pc}
_0203669C: .word unk_02099EE8
	arm_func_end FUN_0203664c

	arm_func_start FUN_020366a0
FUN_020366a0: ; 0x020366A0
	stmfd sp!, {r3, lr}
	add r0, r0, #0xf60
	add r3, r0, #0x1000
	mov r0, #0x28
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020366D4 ; =0x02099EE8
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fdf0
	ldmfd sp!, {r3, pc}
_020366D4: .word unk_02099EE8
	arm_func_end FUN_020366a0

	arm_func_start FUN_020366d8
FUN_020366d8: ; 0x020366D8
	stmfd sp!, {r3, lr}
	add r0, r0, #0xf60
	add r3, r0, #0x1000
	mov r0, #0x28
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02036710 ; =0x02099EE8
	ldr r1, [r3, #4]
	ldr r0, [r0]
	add r2, r2, r2, lsl #1
	bl FUN_0205fdac
	ldmfd sp!, {r3, pc}
_02036710: .word unk_02099EE8
	arm_func_end FUN_020366d8

	arm_func_start FUN_02036714
FUN_02036714: ; 0x02036714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	add r0, r0, #0xf60
	add r4, r0, #0x1000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r5, [sp, #0x3c]
	mov r7, r2
	tst r0, #1
	mov r6, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _02036818 ; =0x02099EE8
	ldr r1, [r4, #4]
	ldr r0, [r8]
	mov r2, #1
	bl FUN_0205f9c0
	cmp r5, #0
	bne _02036788
	ldr r0, [sp, #0x38]
	mov r2, r7
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [r4, #4]
	mov r3, r6
	bl FUN_0205fa48
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036788:
	ldr r1, [r8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0205fb80
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r3, r6, r1
	sub r0, r7, r0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x10]
	sub r2, r1, r2
	str r3, [sp, #0x14]
	mov r1, r5, lsl #0xc
	str r2, [sp, #0x18]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r2, [r4, #0x10]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	str r0, [sp, #0x18]
	orr r0, r1, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036818: .word unk_02099EE8
	arm_func_end FUN_02036714

	arm_func_start FUN_0203681c
FUN_0203681c: ; 0x0203681C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x104
	add r0, r0, #0xf60
	add r3, r0, #0x1000
	mov r0, #0x28
	mla r6, r1, r0, r3
	ldrh r0, [r6, #0xa]
	tst r0, #1
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r5, sp, #4
	str r5, [sp]
	ldr r4, _02036888 ; =0x02099EE8
	ldr r3, [r6]
	ldr r0, [r4]
	ldr r1, _0203688C ; =0x0208FDFC
	bl FUN_0205e6c0
	ldr r0, [r4]
	ldr r1, [r6, #4]
	mov r2, r5
	mov r3, #1
	bl FUN_0205f790
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	add sp, sp, #0x104
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02036888: .word unk_02099EE8
_0203688C: .word unk_0208FDFC
	arm_func_end FUN_0203681c

	arm_func_start FUN_02036890
FUN_02036890: ; 0x02036890
	stmfd sp!, {r3, lr}
	add r0, r0, #0xf60
	add r2, r0, #0x1000
	mov r0, #0x28
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020368C4 ; =0x02099EE8
	ldr r1, [r2, #4]
	ldr r0, [r0]
	bl FUN_0205f56c
	ldmfd sp!, {r3, pc}
_020368C4: .word unk_02099EE8
	arm_func_end FUN_02036890

	arm_func_start FUN_020368c8
FUN_020368c8: ; 0x020368C8
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xf60
	add r12, r0, #0x1000
	mov r0, #0x28
	mla r4, r1, r0, r12
	ldrh r0, [r4, #0xa]
	mov r5, r3
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0203691C ; =0x02099EE8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205fc78
	cmp r5, #1
	ldreqh r0, [r4, #0xa]
	orreq r0, r0, #4
	streqh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #8
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_0203691C: .word unk_02099EE8
	arm_func_end FUN_020368c8

	arm_func_start FUN_02036920
FUN_02036920: ; 0x02036920
	mov r2, #0x28
	mla r0, r1, r2, r0
	add r0, r0, #0x1f00
	ldrh r0, [r0, #0x6a]
	bx lr
	arm_func_end FUN_02036920

	arm_func_start FUN_02036934
FUN_02036934: ; 0x02036934
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, #0
	add r0, r0, #0xf60
	mov r9, #0x28
	add r4, r0, #0x1000
	mov r10, r6
	ldr r8, _02036994 ; =0x02099EE8
	mov r7, r9
	b _02036988
_02036958:
	mla r5, r6, r7, r4
	ldrh r0, [r5, #0xa]
	tst r0, #1
	beq _02036984
	ldr r0, [r8]
	ldr r1, [r5, #4]
	bl FUN_0205f5ec
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl MI_CpuFill8
_02036984:
	add r6, r6, #1
_02036988:
	cmp r6, #4
	blt _02036958
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02036994: .word unk_02099EE8
	arm_func_end FUN_02036934

	arm_func_start FUN_02036998
FUN_02036998: ; 0x02036998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	mov r9, r0
	ldr r4, _02036B2C ; =0x02099EE8
	mov r7, #0
	b _02036B1C
_020369B0:
	add r0, r9, #0xf60
	add r1, r0, #0x1000
	mov r0, #0x28
	mla r6, r7, r0, r1
	ldrh r0, [r6, #0xa]
	tst r0, #1
	beq _02036B18
	tst r0, #0x10
	beq _020369F4
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205f990
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036B30 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_020369F4:
	ldr r1, [r6, #4]
	mov r5, #0
	ldr r0, [r4]
	add r2, sp, #4
	str r5, [sp, #4]
	bl FUN_0205e754
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02036A24
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	moveq r5, #1
_02036A24:
	cmp r5, #0
	ldrneh r0, [r6, #0xa]
	orrne r0, r0, #2
	strneh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #8
	beq _02036A68
	tst r0, #4
	bne _02036A68
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205fd1c
	cmp r0, #0
	ldrneh r1, [r6, #0xa]
	ldrne r0, _02036B34 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r6, #0xa]
_02036A68:
	ldrh r0, [r6, #0xa]
	tst r0, #0x100
	beq _02036B18
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #8
	bl FUN_0205fb80
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r8, #0
	add r10, r9, #0x1000
	add r5, sp, #0x14
	b _02036AD8
_02036AAC:
	mov r0, r5
	mov r2, r5
	add r1, r6, #0x10
	bl VEC_Add
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r6, #0xc]
	beq _02036AE4
	add r8, r8, #1
_02036AD8:
	ldr r0, [r10, #0x3e0]
	cmp r8, r0
	blo _02036AAC
_02036AE4:
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_0205fa48
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036B38 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02036B18:
	add r7, r7, #1
_02036B1C:
	cmp r7, #4
	blt _020369B0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02036B2C: .word unk_02099EE8
_02036B30: .word 0x0000FFEF
_02036B34: .word 0x0000FFF7
_02036B38: .word 0x0000FEFF
	arm_func_end FUN_02036998

	arm_func_start FUN_02036b3c
FUN_02036b3c: ; 0x02036B3C
	stmfd sp!, {r4, lr}
	mov r3, #0x28
	mul r3, r1, r3
	add r1, r0, #0x2000
	ldr r0, [r1, r3]
	add r4, r1, r3
	cmp r0, r2
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02036B88 ; =0x02099F10
	str r2, [r4]
	ldr r0, [r0]
	mov r1, r2
	bl FUN_0205c394
	str r0, [r4, #4]
	cmp r0, #0
	ldrgeh r0, [r4, #0xa]
	orrge r0, r0, #0x11
	strgeh r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_02036B88: .word unk_02099F10
	arm_func_end FUN_02036b3c

	arm_func_start FUN_02036b8c
FUN_02036b8c: ; 0x02036B8C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x2000
	mov r4, #0x28
	mla r5, r1, r4, r0
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02036BCC ; =0x02099F10
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_0205c438
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02036BCC: .word unk_02099F10
	arm_func_end FUN_02036b8c

	arm_func_start FUN_02036bd0
FUN_02036bd0: ; 0x02036BD0
	stmfd sp!, {r3, r4, r5, lr}
	add r2, r0, #0x2000
	mov r0, #0x28
	mla r5, r1, r0, r2
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _02036C10 ; =0x02099F10
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205c3a4
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #1
	bl FUN_0205c5b8
	ldmfd sp!, {r3, r4, r5, pc}
_02036C10: .word unk_02099F10
	arm_func_end FUN_02036bd0

	arm_func_start FUN_02036c14
FUN_02036c14: ; 0x02036C14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x2000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r5, [sp, #0x3c]
	mov r7, r2
	tst r0, #1
	mov r6, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _02036D14 ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r8]
	mov r2, #1
	bl FUN_0205c558
	cmp r5, #0
	bne _02036C84
	ldr r0, [sp, #0x38]
	mov r2, r7
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [r4, #4]
	mov r3, r6
	bl FUN_0205c5e8
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036C84:
	ldr r1, [r8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0205c690
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r3, r6, r1
	sub r0, r7, r0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x10]
	sub r2, r1, r2
	str r3, [sp, #0x14]
	mov r1, r5, lsl #0xc
	str r2, [sp, #0x18]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r2, [r4, #0x10]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	str r0, [sp, #0x18]
	orr r0, r1, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036D14: .word unk_02099F10
	arm_func_end FUN_02036c14

	arm_func_start FUN_02036d18
FUN_02036d18: ; 0x02036D18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x2000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	tst r0, #1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _02036F48 ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205c924
	tst r0, #0x4000
	subne r6, r6, #0x8000
	cmp r5, #0
	bne _02036DF0
	ldr r0, _02036F4C ; =0x0B60B60B
	mov r1, #0xb6
	umull r3, r10, r8, r0
	umull lr, r12, r7, r0
	umull r9, r5, r6, r0
	adds r3, r3, #0
	mla r10, r8, r1, r10
	mov r2, r8, asr #0x1f
	mla r10, r2, r0, r10
	adc r2, r10, #0x800
	mov r2, r2, lsl #4
	mla r12, r7, r1, r12
	mla r5, r6, r1, r5
	mov r3, r7, asr #0x1f
	mov r1, r6, asr #0x1f
	mla r12, r3, r0, r12
	adds r3, lr, #0
	adc r3, r12, #0x800
	mla r5, r1, r0, r5
	adds r0, r9, #0
	adc r0, r5, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, _02036F48 ; =0x02099F10
	mov r3, r3, lsl #4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0205c620
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02036DF0:
	ldr r0, _02036F48 ; =0x02099F10
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205c70c
	ldr r9, [sp, #4]
	mov r3, #0x1680000
	umull r0, lr, r9, r3
	mov r9, r9, asr #0x1f
	adds r0, r0, #0x80000
	mla lr, r9, r3, lr
	ldr r2, [sp, #8]
	adc lr, lr, #0
	umull r12, r9, r2, r3
	mov r2, r2, asr #0x1f
	mov r0, r0, lsr #0x14
	orr r0, r0, lr, lsl #12
	sub r0, r8, r0
	adds r8, r12, #0x80000
	mla r9, r2, r3, r9
	ldr r1, [sp, #0xc]
	adc r2, r9, #0
	mov r8, r8, lsr #0x14
	orr r8, r8, r2, lsl #12
	sub r2, r7, r8
	umull r8, r7, r1, r3
	mov r1, r1, asr #0x1f
	str r2, [sp, #0x14]
	adds r2, r8, #0x80000
	mla r7, r1, r3, r7
	adc r1, r7, #0
	mov r2, r2, lsr #0x14
	orr r2, r2, r1, lsl #12
	sub r2, r6, r2
	mov r1, r5
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl _s32_div_f
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5
	bl _s32_div_f
	ldr r12, [sp, #0x10]
	ldr r2, _02036F4C ; =0x0B60B60B
	ldr r8, [sp, #0x14]
	umull r9, lr, r12, r2
	mov r3, #0xb6
	mla lr, r12, r3, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r2, lr
	adds r9, r9, #0
	adc r1, lr, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	str r1, [r4, #0x1c]
	umull r12, r1, r8, r2
	mla r1, r8, r3, r1
	mov r7, r8, asr #0x1f
	mla r1, r7, r2, r1
	adds r12, r12, #0
	adc r1, r1, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x14]
	str r1, [r4, #0x20]
	umull r7, r1, r0, r2
	mla r1, r0, r3, r1
	mov r6, r0, asr #0x1f
	mla r1, r6, r2, r1
	adds r0, r7, #0
	adc r0, r1, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r4, #0x24]
	strh r5, [r4, #0xe]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02036F48: .word unk_02099F10
_02036F4C: .word 0x0B60B60B
	arm_func_end FUN_02036d18

	arm_func_start FUN_02036f50
FUN_02036f50: ; 0x02036F50
	stmfd sp!, {r3, lr}
	add r12, r0, #0x2000
	mov r0, #0x28
	mla r12, r1, r0, r12
	ldrh r0, [r12, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, [sp, #8]
	ldr r0, _02036F94 ; =0x02099F10
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r12, #4]
	bl FUN_0205c658
	ldmfd sp!, {r3, pc}
_02036F94: .word unk_02099F10
	arm_func_end FUN_02036f50

	arm_func_start FUN_02036f98
FUN_02036f98: ; 0x02036F98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0x2000
	mov r0, #0x28
	mla r5, r1, r0, r4
	ldrh r0, [r5, #0xa]
	mov r7, r2
	mov r6, r3
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _02037004 ; =0x02099F10
	ldr r1, [r5, #4]
	ldr r0, [r4]
	mov r2, #1
	bl FUN_0205c558
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, r7
	mov r3, r6
	bl FUN_0205c788
	cmp r6, #1
	ldreqh r0, [r5, #0xa]
	orreq r0, r0, #4
	streqh r0, [r5, #0xa]
	ldrh r0, [r5, #0xa]
	orr r0, r0, #8
	strh r0, [r5, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037004: .word unk_02099F10
	arm_func_end FUN_02036f98

	arm_func_start FUN_02037008
FUN_02037008: ; 0x02037008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r4, r5, #0x2000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r8, r2
	mov r7, r3
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, _0203714C ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r6]
	bl FUN_0205c5b8
	ldrb r3, [sp, #0x3c]
	ldr r0, [r6]
	ldr r1, [r4, #4]
	mov r2, #0x2000
	bl FUN_0205c86c
	ldrb r3, [sp, #0x40]
	ldr r0, [r6]
	ldr r1, [r4, #4]
	mov r2, #0x4000
	bl FUN_0205c86c
	cmp r8, #4
	addls pc, pc, r8, lsl #2
	b _020370F4
_0203707C: ; jump table
	b _020370F4 ; case 0
	b _020370F4 ; case 1
	b _020370F4 ; case 2
	b _02037090 ; case 3
	b _020370F4 ; case 4
_02037090:
	ldr r0, _02037150 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020370AC
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _020370CC
_020370AC:
	ldr r2, [sp, #0x38]
	mov r0, r5
	mov r1, r7
	bl FUN_02035c50
	cmp r0, #0
	beq _020370F4
	ldr r2, [r0, #4]
	b _020370E4
_020370CC:
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020370F4
	ldrsh r2, [r0, #0x94]
_020370E4:
	ldr r0, _0203714C ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205c82c
_020370F4:
	ldrb r0, [sp, #0x40]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _0203714C ; =0x02099F10
	ldr r2, [r4, #4]
	ldr r1, [r5]
	add r0, sp, #4
	bl FUN_0205c70c
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	sub r6, r0, #0x8000
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	bl FUN_0205c620
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0203714C: .word unk_02099F10
_02037150: .word unk_02099EF0
	arm_func_end FUN_02037008

	arm_func_start FUN_02037154
FUN_02037154: ; 0x02037154
	mov r2, #0x28
	mla r0, r1, r2, r0
	add r0, r0, #0x2000
	ldrh r0, [r0, #0xa]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02037154

	arm_func_start FUN_02037170
FUN_02037170: ; 0x02037170
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, #0
	mov r6, #0x28
	add r8, r0, #0x2000
	mov r7, r10
	ldr r5, _020371C8 ; =0x02099F10
	mov r4, r6
	b _020371BC
_02037190:
	mla r9, r10, r4, r8
	ldr r1, [r9, #4]
	cmp r1, #0
	blt _020371B8
	ldr r0, [r5]
	bl FUN_0205c438
	mov r0, r9
	mov r1, r7
	mov r2, r6
	bl MI_CpuFill8
_020371B8:
	add r10, r10, #1
_020371BC:
	cmp r10, #4
	blt _02037190
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020371C8: .word unk_02099F10
	arm_func_end FUN_02037170

	arm_func_start FUN_020371cc
FUN_020371cc: ; 0x020371CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r8, r0
	add r0, r8, #0x1000
	ldr r5, [r0, #0x3e0]
	ldr r9, _02037428 ; =0x02099F10
	mov r6, #0
	b _02037418
_020371EC:
	add r1, r8, #0x2000
	mov r0, #0x28
	mla r4, r6, r0, r1
	ldrh r0, [r4, #0xa]
	tst r0, #1
	beq _02037414
	tst r0, #0x10
	beq _02037250
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205c4bc
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _0203742C ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205c4bc
	cmn r0, #1
	ldreqh r1, [r4, #0xa]
	ldreq r0, _02037430 ; =0x0000FFEE
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
	beq _02037414
_02037250:
	ldr r1, [r4, #4]
	mov r7, #0
	ldr r0, [r9]
	add r2, sp, #4
	str r7, [sp, #4]
	bl FUN_0205b564
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02037280
	ldrb r0, [r0, #0xb]
	cmp r0, #3
	moveq r7, #1
_02037280:
	cmp r7, #0
	ldrneh r0, [r4, #0xa]
	orrne r0, r0, #2
	strneh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	tst r0, #8
	beq _020372C4
	tst r0, #4
	bne _020372C4
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205c7f8
	cmp r0, #0
	ldrneh r1, [r4, #0xa]
	ldrne r0, _02037434 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r4, #0xa]
_020372C4:
	ldrh r0, [r4, #0xa]
	tst r0, #0x100
	beq _0203736C
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #0x14
	bl FUN_0205c690
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	mov r7, #0
	add r10, sp, #0x2c
	b _02037330
_02037304:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x10
	bl VEC_Add
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xc]
	beq _02037338
	add r7, r7, #1
_02037330:
	cmp r7, r5
	blo _02037304
_02037338:
	ldr r0, [sp, #0x34]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl FUN_0205c5e8
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _02037438 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_0203736C:
	ldrh r0, [r4, #0xa]
	tst r0, #0x200
	beq _02037414
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #8
	bl FUN_0205c70c
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r7, #0
	add r10, sp, #0x20
	b _020373D8
_020373AC:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x1c
	bl VEC_Add
	ldrh r0, [r4, #0xe]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xe]
	beq _020373E0
	add r7, r7, #1
_020373D8:
	cmp r7, r5
	blo _020373AC
_020373E0:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_0205c620
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _0203743C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_02037414:
	add r6, r6, #1
_02037418:
	cmp r6, #6
	blt _020371EC
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02037428: .word unk_02099F10
_0203742C: .word 0x0000FFEF
_02037430: .word 0x0000FFEE
_02037434: .word 0x0000FFF7
_02037438: .word 0x0000FEFF
_0203743C: .word 0x0000FDFF
	arm_func_end FUN_020371cc

	arm_func_start FUN_02037440
FUN_02037440: ; 0x02037440
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10c
	add r0, r0, #0xf0
	add r4, r0, #0x2000
	mov r0, #0x3c
	mla r8, r1, r0, r4
	add r11, sp, #0xc
	ldr r1, _02037504 ; =0x0208FE00
	mov r0, r11
	mov r10, r2
	mov r9, r3
	bl STD_TSPrintf
	ldr r5, _02037508 ; =0x0209A200
	ldr r4, _0203750C ; =0x02099F58
	ldr r2, [r5, #0x24]
	ldr r0, [r4]
	mov r7, #1
	str r7, [sp]
	mov r6, #0
	str r6, [sp, #4]
	add r0, r0, #4
	mov r1, #2
	mov r3, r11
	str r6, [sp, #8]
	bl FUN_02058684
	str r0, [r8, #4]
	ldr r1, _02037510 ; =0x0208FE08
	mov r2, r10
	mov r0, r11
	bl STD_TSPrintf
	ldr r0, [r4]
	ldr r2, [r5, #0x24]
	mov r3, r11
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r0, #4
	str r6, [sp, #8]
	mov r1, #3
	bl FUN_02058684
	str r0, [r8, #8]
	ldrh r0, [r8, #0xe]
	cmp r9, #2
	orr r0, r0, #5
	strh r0, [r8, #0xe]
	ldreqh r0, [r8, #0xe]
	orreq r0, r0, #0x40
	streqh r0, [r8, #0xe]
	add sp, sp, #0x10c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02037504: .word unk_0208FE00
_02037508: .word unk_0209A200
_0203750C: .word unk_02099F58
_02037510: .word unk_0208FE08
	arm_func_end FUN_02037440

	arm_func_start FUN_02037514
FUN_02037514: ; 0x02037514
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0xf0
	mov r2, r1
	add r0, r0, #0x2000
	mov r7, #0x3c
	mla r4, r2, r7, r0
	ldrh r0, [r4, #0xe]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020375B8 ; =0x02099F58
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3ec]
	ldr r3, _020375BC ; =0x0000FFFE
	add r2, r2, #1
	bl FUN_ov16_021172cc
	ldr r0, [r6]
	ldr r1, [r4, #4]
	bl FUN_ov16_02116910
	ldr r0, [r6]
	ldr r1, [r4, #4]
	add r0, r0, #4
	bl FUN_02058ee0
	ldr r0, [r6]
	ldr r1, [r4, #8]
	bl FUN_ov16_02116910
	ldr r0, [r6]
	ldr r1, [r4, #8]
	add r0, r0, #4
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3ec]
	ldr r0, _020375C0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020375B8: .word unk_02099F58
_020375BC: .word 0x0000FFFE
_020375C0: .word unk_02099F38
	arm_func_end FUN_02037514

	arm_func_start FUN_020375c4
FUN_020375c4: ; 0x020375C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020375D0:
	mov r0, r5
	mov r1, r4
	bl FUN_02037514
	add r4, r4, #1
	cmp r4, #0x20
	blt _020375D0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020375c4

	arm_func_start FUN_020375ec
FUN_020375ec: ; 0x020375EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0xf0
	mov r6, r1
	add r1, r0, #0x2000
	mov r0, #0x3c
	mla r5, r6, r0, r1
	ldrh r0, [r5, #0xe]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _02037720 ; =0x02099F58
	ldr r1, [r5, #4]
	ldr r0, [r4]
	add r0, r0, #4
	bl FUN_02059004
	cmp r0, #0
	bne _02037648
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #1
	bl FUN_ov16_021168f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02037648:
	ldr r4, _02037720 ; =0x02099F58
	ldr r1, [r5, #8]
	ldr r0, [r4]
	add r0, r0, #4
	bl FUN_02059004
	cmp r0, #0
	bne _0203767C
	ldr r0, [r4]
	ldr r1, [r5, #8]
	mov r2, #1
	bl FUN_ov16_021168f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0203767C:
	ldr r0, [r5, #8]
	ldr r4, _02037720 ; =0x02099F58
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r7, #0x1000
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	add r2, r6, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117180
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	ldr r3, _02037724 ; =0x0000FFFE
	add r2, r6, #1
	bl FUN_ov16_021172cc
	mov r3, #0x32
	str r3, [sp]
	add r0, r7, #0x1000
	ldr r1, [r0, #0x3ec]
	ldr r0, [r4]
	add r2, r6, #1
	bl FUN_ov16_0211746c
	ldrh r0, [r5, #0xe]
	tst r0, #0x40
	beq _02037710
	mov r0, #1
	str r0, [sp]
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	add r2, r6, #1
	mov r3, #0x3000
	bl FUN_ov16_02117284
_02037710:
	ldrh r0, [r5, #0xe]
	orr r0, r0, #2
	strh r0, [r5, #0xe]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037720: .word unk_02099F58
_02037724: .word 0x0000FFFE
	arm_func_end FUN_020375ec

	arm_func_start FUN_02037728
FUN_02037728: ; 0x02037728
	mov r2, #0x3c
	mla r0, r1, r2, r0
	add r0, r0, #0x2000
	ldrh r0, [r0, #0xfe]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02037728

	arm_func_start FUN_02037744
FUN_02037744: ; 0x02037744
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	add lr, r0, #0xf0
	mov r12, r1
	add lr, lr, #0x2000
	mov r1, #0x3c
	mla r4, r12, r1, lr
	ldrh lr, [r4, #0xe]
	mov r5, #1
	tst lr, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	cmp r2, #0
	beq _020377E0
	orr r1, lr, #8
	strh r1, [r4, #0xe]
	cmp r3, #1
	beq _02037798
	cmp r3, #2
	moveq r5, #4
	b _0203779C
_02037798:
	mov r5, #3
_0203779C:
	and r1, r5, #0xff
	str r1, [sp]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r2, [sp, #4]
	mov r3, r1, lsl #0x10
	mov lr, #1
	ldr r2, _02037810 ; =0x02099F58
	str lr, [sp, #8]
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3ec]
	add r2, r12, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117414
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020377E0:
	ldr r1, _02037814 ; =0x0000FFF7
	ldr r2, _02037810 ; =0x02099F58
	and r1, lr, r1
	strh r1, [r4, #0xe]
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3ec]
	add r2, r12, #1
	mov r3, #2
	bl FUN_ov16_021172cc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_02037810: .word unk_02099F58
_02037814: .word 0x0000FFF7
	arm_func_end FUN_02037744

	arm_func_start FUN_02037818
FUN_02037818: ; 0x02037818
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xf0
	add r4, r0, #0x2000
	mov r0, #0x3c
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xe]
	ldr r5, [sp, #0x18]
	mov r7, r2
	mov r6, r3
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	mov r0, r7, lsl #0xc
	ble _02037864
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02037870
_02037864:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02037870:
	bl _ffix
	mov r7, r0
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _02037898
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020378A4
_02037898:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020378A4:
	bl _ffix
	ldrh r1, [r4, #0xe]
	mov r6, r0
	tst r1, #0x40
	ldrne r0, _02037938 ; =0x0209A720
	ldrne r1, [r0, #0xd4]
	ldrne r0, [r0, #0xd8]
	addne r7, r7, r1
	addne r6, r6, r0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldrne r1, [r4, #0x14]
	ldrne r0, [r4, #0x18]
	addne r7, r7, r1
	addne r6, r6, r0
	cmp r5, #0
	streq r7, [r4, #0x14]
	streq r6, [r4, #0x18]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strh r5, [r4, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, r5
	sub r0, r7, r0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	sub r2, r6, r2
	str r2, [r4, #0x20]
	bl _s32_div_f
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	mov r1, r5
	bl _s32_div_f
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0xe]
	orr r0, r0, #0x10
	strh r0, [r4, #0xe]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037938: .word unk_0209A720
	arm_func_end FUN_02037818

	arm_func_start FUN_0203793c
FUN_0203793c: ; 0x0203793C
	stmfd sp!, {r3, r4, r5, lr}
	add r4, r0, #0xf0
	mov r12, r1
	add r4, r4, #0x2000
	mov r1, #0x3c
	mla r4, r12, r1, r4
	ldrh r1, [r4, #0xe]
	mov r5, r3
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x24]
	cmp r1, #0
	addne r2, r2, r3
	cmp r5, #0
	bne _020379A4
	ldr lr, _020379C8 ; =0x02099F58
	str r2, [r4, #0x24]
	add r1, r0, #0x1000
	mov r3, r2, lsl #0x10
	ldr r0, [lr]
	ldr r1, [r1, #0x3ec]
	add r2, r12, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117454
	ldmfd sp!, {r3, r4, r5, pc}
_020379A4:
	mov r1, r5
	sub r0, r2, r3
	bl _s32_div_f
	str r0, [r4, #0x28]
	strh r5, [r4, #0x12]
	ldrh r0, [r4, #0xe]
	orr r0, r0, #0x80
	strh r0, [r4, #0xe]
	ldmfd sp!, {r3, r4, r5, pc}
_020379C8: .word unk_02099F58
	arm_func_end FUN_0203793c

	arm_func_start FUN_020379cc
FUN_020379cc: ; 0x020379CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0xf0
	add r4, r0, #0x2000
	mov r5, #0
	b _02037C34
_020379E4:
	ldrh r0, [r4, #0xe]
	tst r0, #1
	beq _02037C2C
	tst r0, #4
	beq _02037A60
	ldr r6, _02037C40 ; =0x02099F58
	ldr r1, [r4, #4]
	ldr r0, [r6]
	add r0, r0, #4
	bl FUN_02058e30
	ldr r2, [r6]
	mov r6, r0
	ldr r1, [r4, #8]
	add r0, r2, #4
	bl FUN_02058e30
	cmp r6, #0
	cmpeq r0, #0
	ldreqh r2, [r4, #0xe]
	ldreq r1, _02037C44 ; =0x0000FFFB
	andeq r1, r2, r1
	streqh r1, [r4, #0xe]
	mvn r1, #0
	cmp r6, r1
	beq _02037A4C
	cmp r0, r1
	bne _02037C2C
_02037A4C:
	ldrh r1, [r4, #0xe]
	ldr r0, _02037C48 ; =0x0000FFFA
	and r0, r1, r0
	strh r0, [r4, #0xe]
	b _02037C2C
_02037A60:
	tst r0, #2
	beq _02037C2C
	tst r0, #0x20
	beq _02037AF4
	mov r0, #0
	add r1, r7, #0x1000
	b _02037AA0
_02037A7C:
	ldr r3, [r4, #0x30]
	ldr r2, [r4, #0x34]
	add r2, r3, r2
	str r2, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	subs r2, r2, #1
	str r2, [r4, #0x2c]
	beq _02037AAC
	add r0, r0, #1
_02037AA0:
	ldr r2, [r1, #0x3e0]
	cmp r0, r2
	blo _02037A7C
_02037AAC:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _02037AD0
	ldrh r1, [r4, #0xe]
	ldr r0, _02037C4C ; =0x0000FFDF
	and r0, r1, r0
	strh r0, [r4, #0xe]
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x30]
_02037AD0:
	ldr r2, [r4, #0x30]
	ldr r0, _02037C40 ; =0x02099F58
	add r1, r7, #0x1000
	mov r3, r2, asr #0xc
	ldr r0, [r0]
	ldr r1, [r1, #0x3ec]
	add r2, r5, #1
	and r3, r3, #0xff
	bl FUN_ov16_02117304
_02037AF4:
	ldrh r0, [r4, #0xe]
	tst r0, #0x10
	beq _02037B6C
	mov r0, #0
	add r1, r7, #0x1000
	b _02037B48
_02037B0C:
	ldr r3, [r4, #0x14]
	ldr r2, [r4, #0x1c]
	add r2, r3, r2
	str r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	ldr r2, [r4, #0x20]
	add r2, r3, r2
	str r2, [r4, #0x18]
	ldrh r2, [r4, #0x10]
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	strh r2, [r4, #0x10]
	beq _02037B54
	add r0, r0, #1
_02037B48:
	ldr r2, [r1, #0x3e0]
	cmp r0, r2
	blo _02037B0C
_02037B54:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	ldreqh r1, [r4, #0xe]
	ldreq r0, _02037C50 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xe]
_02037B6C:
	ldrh r0, [r4, #0xe]
	tst r0, #0x80
	beq _02037BF8
	mov r0, #0
	add r1, r7, #0x1000
	b _02037BB0
_02037B84:
	ldr r3, [r4, #0x24]
	ldr r2, [r4, #0x28]
	add r2, r3, r2
	str r2, [r4, #0x24]
	ldrh r2, [r4, #0x12]
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	strh r2, [r4, #0x12]
	beq _02037BBC
	add r0, r0, #1
_02037BB0:
	ldr r2, [r1, #0x3e0]
	cmp r0, r2
	blo _02037B84
_02037BBC:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	ldreqh r1, [r4, #0xe]
	ldreq r0, _02037C54 ; =0x0000FF7F
	andeq r0, r1, r0
	streqh r0, [r4, #0xe]
	ldr r2, [r4, #0x24]
	ldr r0, _02037C40 ; =0x02099F58
	mov r3, r2, lsl #0x10
	add r1, r7, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x3ec]
	add r2, r5, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117454
_02037BF8:
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x14]
	mov r0, r0, lsl #4
	mov r1, r0, asr #0x10
	ldr r0, _02037C40 ; =0x02099F58
	str r1, [sp]
	add r1, r7, #0x1000
	mov r3, r2, lsl #4
	ldr r0, [r0]
	ldr r1, [r1, #0x3ec]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117390
_02037C2C:
	add r5, r5, #1
	add r4, r4, #0x3c
_02037C34:
	cmp r5, #0x20
	blt _020379E4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037C40: .word unk_02099F58
_02037C44: .word 0x0000FFFB
_02037C48: .word 0x0000FFFA
_02037C4C: .word 0x0000FFDF
_02037C50: .word 0x0000FFEF
_02037C54: .word 0x0000FF7F
	arm_func_end FUN_020379cc

	arm_func_start FUN_02037c58
FUN_02037c58: ; 0x02037C58
	add r1, r0, #0x870
	add r2, r0, #0x170
	add r0, r1, #0x2000
	add r1, r2, #0x3000
	ldr r12, _02037C74 ; =MI_CpuCopy8
	mov r2, #0x900
	bx r12
_02037C74: .word MI_CpuCopy8
	arm_func_end FUN_02037c58

	arm_func_start FUN_02037c78
FUN_02037c78: ; 0x02037C78
	add r1, r0, #0x170
	add r2, r0, #0x870
	add r0, r1, #0x3000
	add r1, r2, #0x2000
	ldr r12, _02037C94 ; =MI_CpuCopy8
	mov r2, #0x900
	bx r12
_02037C94: .word MI_CpuCopy8
	arm_func_end FUN_02037c78

	arm_func_start FUN_02037c98
FUN_02037c98: ; 0x02037C98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10c
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r7, r2
	mov r6, r3
	tst r0, #1
	ldr r5, [sp, #0x128]
	ldr r8, _02037DD4 ; =0x02099EE8
	beq _02037D0C
	mov r1, r7
	add r0, r4, #0x30
	bl STD_CompareString
	cmp r0, #0
	bne _02037CF0
	ldr r0, [r4]
	cmp r0, r5
	addeq sp, sp, #0x10c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02037CF0:
	ldr r0, [r8]
	ldr r1, [r4, #4]
	bl FUN_0205f5ec
	mov r0, r4
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
_02037D0C:
	cmp r5, #0
	ldr r0, [r8]
	bge _02037D28
	add r2, sp, #0xc
	mov r1, r7
	bl FUN_0205e71c
	b _02037D38
_02037D28:
	add r3, sp, #0xc
	mov r1, r7
	mov r2, r5
	bl FUN_0205e674
_02037D38:
	ldr r1, [sp, #0x134]
	str r5, [r4]
	cmp r1, #0
	beq _02037D70
	ldr r0, [r8]
	mov r8, #0
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, sp, #0xc
	mov r2, r6
	mov r3, r5
	str r8, [sp, #8]
	b _02037D90
_02037D70:
	mov r0, #0
	stmia sp, {r0, r1}
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r8]
	add r1, sp, #0xc
	mov r2, r6
	mov r3, r5
_02037D90:
	bl FUN_0205f214
	str r0, [r4, #4]
	movs r0, r0
	addmi sp, sp, #0x10c
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, [sp, #0x12c]
	ldr r2, [sp, #0x130]
	orr r1, r1, #0x11
	strh r1, [r4, #0xa]
	str r0, [r4, #0x28]
	mov r1, r7
	add r0, r4, #0x30
	str r2, [r4, #0x2c]
	bl STD_CopyString
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02037DD4: .word unk_02099EE8
	arm_func_end FUN_02037c98

	arm_func_start FUN_02037dd8
FUN_02037dd8: ; 0x02037DD8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x104
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r5, r2
	mov r7, r3
	tst r0, #1
	ldr r6, _02037EEC ; =0x02099EE8
	beq _02037E48
	mov r1, r5
	add r0, r4, #0x30
	bl STD_CompareString
	cmp r0, #0
	bne _02037E2C
	ldr r0, [r4]
	cmp r0, r7
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
_02037E2C:
	ldr r0, [r6]
	ldr r1, [r4, #4]
	bl FUN_0205f5ec
	mov r0, r4
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
_02037E48:
	cmp r7, #0
	ldr r0, [r6]
	bge _02037E64
	add r2, sp, #4
	mov r1, r5
	bl FUN_0205e71c
	b _02037E74
_02037E64:
	add r3, sp, #4
	mov r1, r5
	mov r2, r7
	bl FUN_0205e674
_02037E74:
	ldr r0, [sp, #0x120]
	str r7, [r4]
	cmp r0, #0
	mov r2, #0
	ldr r0, [r6]
	add r1, sp, #4
	beq _02037E9C
	str r2, [sp]
	mov r3, #1
	b _02037EA8
_02037E9C:
	mov r6, #1
	mov r3, r2
	str r6, [sp]
_02037EA8:
	bl FUN_0205f26c
	str r0, [r4, #4]
	movs r0, r0
	addmi sp, sp, #0x104
	ldmmifd sp!, {r4, r5, r6, r7, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	orr r1, r1, #0x11
	strh r1, [r4, #0xa]
	str r0, [r4, #0x28]
	mov r1, r5
	add r0, r4, #0x30
	str r2, [r4, #0x2c]
	bl STD_CopyString
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02037EEC: .word unk_02099EE8
	arm_func_end FUN_02037dd8

	arm_func_start FUN_02037ef0
FUN_02037ef0: ; 0x02037EF0
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x870
	add r0, r0, #0x2000
	mov r4, #0x48
	mla r5, r1, r4, r0
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02037F34 ; =0x02099EE8
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_0205f5ec
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02037F34: .word unk_02099EE8
	arm_func_end FUN_02037ef0

	arm_func_start FUN_02037f38
FUN_02037f38: ; 0x02037F38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, #0
	add r0, r0, #0x870
	mov r10, r1
	add r7, r0, #0x2000
	mov r11, r9
	mvn r4, #0
	ldr r6, _02037FAC ; =0x02099EE8
	mov r5, #0x48
	b _02037FA0
_02037F60:
	mla r8, r9, r5, r7
	ldrh r0, [r8, #0xa]
	tst r0, #1
	beq _02037F9C
	ldr r0, [r8, #0x28]
	cmp r0, r4
	cmpne r0, r10
	bne _02037F9C
	ldr r0, [r6]
	ldr r1, [r8, #4]
	bl FUN_0205f5ec
	mov r0, r8
	mov r1, r11
	mov r2, #0x48
	bl MI_CpuFill8
_02037F9C:
	add r9, r9, #1
_02037FA0:
	cmp r9, #0x20
	blt _02037F60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02037FAC: .word unk_02099EE8
	arm_func_end FUN_02037f38

	arm_func_start FUN_02037fb0
FUN_02037fb0: ; 0x02037FB0
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02037FE4 ; =0x02099EE8
	ldr r1, [r2, #4]
	ldr r0, [r0]
	bl FUN_0205f56c
	ldmfd sp!, {r3, pc}
_02037FE4: .word unk_02099EE8
	arm_func_end FUN_02037fb0

	arm_func_start FUN_02037fe8
FUN_02037fe8: ; 0x02037FE8
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0203801C ; =0x02099EE8
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fdf0
	ldmfd sp!, {r3, pc}
_0203801C: .word unk_02099EE8
	arm_func_end FUN_02037fe8

	arm_func_start FUN_02038020
FUN_02038020: ; 0x02038020
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02038054 ; =0x02099EE8
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fdac
	ldmfd sp!, {r3, pc}
_02038054: .word unk_02099EE8
	arm_func_end FUN_02038020

	arm_func_start FUN_02038058
FUN_02038058: ; 0x02038058
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r5, [sp, #0x34]
	mov r7, r2
	tst r0, #1
	mov r6, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _02038198 ; =0x02099EE8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_0205f9c0
	ldr r0, [sp, #0x30]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bge _020380D0
	ldr r0, _0203819C ; =0x02099EB0
	add r1, sp, #0x10
	ldr r0, [r0]
	bl FUN_ov0_020cd234
	str r0, [r4, #0x28]
_020380D0:
	cmp r5, #0
	bne _02038100
	ldr r1, [sp, #0x30]
	ldr r0, _02038198 ; =0x02099EE8
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	mov r2, r7
	mov r3, r6
	bl FUN_0205fa48
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02038100:
	ldr r0, _02038198 ; =0x02099EE8
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205fb80
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r3, r6, r1
	sub r0, r7, r0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	sub r2, r1, r2
	str r3, [sp, #0x14]
	mov r1, r5, lsl #0xc
	str r2, [sp, #0x18]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02038198: .word unk_02099EE8
_0203819C: .word unk_02099EB0
	arm_func_end FUN_02038058

	arm_func_start FUN_020381a0
FUN_020381a0: ; 0x020381A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	tst r0, #1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0
	bne _02038264
	ldr r0, _020383BC ; =0x0B60B60B
	mov r1, #0xb6
	umull r3, r10, r8, r0
	umull lr, r12, r7, r0
	umull r9, r5, r6, r0
	adds r3, r3, #0
	mla r10, r8, r1, r10
	mov r2, r8, asr #0x1f
	mla r10, r2, r0, r10
	adc r2, r10, #0x800
	mov r2, r2, lsl #4
	mla r12, r7, r1, r12
	mla r5, r6, r1, r5
	mov r3, r7, asr #0x1f
	mov r1, r6, asr #0x1f
	mla r12, r3, r0, r12
	adds r3, lr, #0
	adc r3, r12, #0x800
	mla r5, r1, r0, r5
	adds r0, r9, #0
	adc r0, r5, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, _020383C0 ; =0x02099EE8
	mov r3, r3, lsl #4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0205fab4
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02038264:
	ldr r0, _020383C0 ; =0x02099EE8
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205fbfc
	ldr r9, [sp, #4]
	mov r3, #0x1680000
	umull r0, lr, r9, r3
	mov r9, r9, asr #0x1f
	adds r0, r0, #0x80000
	mla lr, r9, r3, lr
	ldr r2, [sp, #8]
	adc lr, lr, #0
	umull r12, r9, r2, r3
	mov r2, r2, asr #0x1f
	mov r0, r0, lsr #0x14
	orr r0, r0, lr, lsl #12
	sub r0, r8, r0
	adds r8, r12, #0x80000
	mla r9, r2, r3, r9
	ldr r1, [sp, #0xc]
	adc r2, r9, #0
	mov r8, r8, lsr #0x14
	orr r8, r8, r2, lsl #12
	sub r2, r7, r8
	umull r8, r7, r1, r3
	mov r1, r1, asr #0x1f
	str r2, [sp, #0x14]
	adds r2, r8, #0x80000
	mla r7, r1, r3, r7
	adc r1, r7, #0
	mov r2, r2, lsr #0x14
	orr r2, r2, r1, lsl #12
	sub r2, r6, r2
	mov r1, r5
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl _s32_div_f
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5
	bl _s32_div_f
	ldr r12, [sp, #0x10]
	ldr r2, _020383BC ; =0x0B60B60B
	ldr r8, [sp, #0x14]
	umull r9, lr, r12, r2
	mov r3, #0xb6
	mla lr, r12, r3, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r2, lr
	adds r9, r9, #0
	adc r1, lr, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	str r1, [r4, #0x1c]
	umull r12, r1, r8, r2
	mla r1, r8, r3, r1
	mov r7, r8, asr #0x1f
	mla r1, r7, r2, r1
	adds r12, r12, #0
	adc r1, r1, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x14]
	str r1, [r4, #0x20]
	umull r7, r1, r0, r2
	mla r1, r0, r3, r1
	mov r6, r0, asr #0x1f
	mla r1, r6, r2, r1
	adds r0, r7, #0
	adc r0, r1, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r4, #0x24]
	strh r5, [r4, #0xe]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020383BC: .word 0x0B60B60B
_020383C0: .word unk_02099EE8
	arm_func_end FUN_020381a0

	arm_func_start FUN_020383c4
FUN_020383c4: ; 0x020383C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x100
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r5, r1, r0, r3
	ldrh r0, [r5, #0xa]
	tst r0, #1
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r4, sp, #0
	ldr r1, _02038428 ; =0x0208FE10
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0203842C ; =0x02099EE8
	ldr r1, [r5, #4]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #1
	bl FUN_0205f664
	ldrh r0, [r5, #0xa]
	orr r0, r0, #0x10
	strh r0, [r5, #0xa]
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, pc}
_02038428: .word unk_0208FE10
_0203842C: .word unk_02099EE8
	arm_func_end FUN_020383c4

	arm_func_start FUN_02038430
FUN_02038430: ; 0x02038430
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x104
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r6, r1, r0, r4
	ldrh r0, [r6, #0xa]
	tst r0, #1
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r5, sp, #4
	ldr r4, _020384A0 ; =0x02099EE8
	str r5, [sp]
	mov r1, r2
	mov r2, r3
	ldr r0, [r4]
	ldr r3, [r6]
	bl FUN_0205e6c0
	ldr r0, [r4]
	ldr r1, [r6, #4]
	mov r2, r5
	mov r3, #1
	bl FUN_0205f790
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	add sp, sp, #0x104
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020384A0: .word unk_02099EE8
	arm_func_end FUN_02038430

	arm_func_start FUN_020384a4
FUN_020384a4: ; 0x020384A4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r6, r1, r0, r3
	ldrh r0, [r6, #0xa]
	tst r0, #1
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, sp, #0
	ldr r1, _02038514 ; =0x0208FE18
	mov r0, r5
	bl STD_TSPrintf
	ldr r4, _02038518 ; =0x02099EE8
	ldr r1, [r6, #4]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0
	bl FUN_0205f664
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205f56c
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, pc}
_02038514: .word unk_0208FE18
_02038518: .word unk_02099EE8
	arm_func_end FUN_020384a4

	arm_func_start FUN_0203851c
FUN_0203851c: ; 0x0203851C
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02038550 ; =0x02099EE8
	ldr r1, [r2, #4]
	ldr r0, [r0]
	bl FUN_0205f56c
	ldmfd sp!, {r3, pc}
_02038550: .word unk_02099EE8
	arm_func_end FUN_0203851c

	arm_func_start FUN_02038554
FUN_02038554: ; 0x02038554
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x870
	add r12, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r12
	ldrh r0, [r4, #0xa]
	mov r5, r3
	tst r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020385BC ; =0x02099EE8
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205fc78
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #1
	ldreqh r0, [r4, #0xa]
	orreq r0, r0, #4
	streqh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	mov r0, #1
	orr r1, r1, #8
	strh r1, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_020385BC: .word unk_02099EE8
	arm_func_end FUN_02038554

	arm_func_start FUN_020385c0
FUN_020385c0: ; 0x020385C0
	mov r2, #0x48
	mla r0, r1, r2, r0
	add r0, r0, #0x2800
	ldrh r0, [r0, #0x7a]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_020385c0

	arm_func_start FUN_020385dc
FUN_020385dc: ; 0x020385DC
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldrne r0, [r2, #4]
	moveq r0, #0
	bx lr
	arm_func_end FUN_020385dc

	arm_func_start FUN_02038600
FUN_02038600: ; 0x02038600
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, #0
	add r0, r0, #0x870
	mov r9, #0x48
	add r4, r0, #0x2000
	mov r10, r6
	ldr r8, _0203866C ; =0x02099EE8
	mov r7, r9
	b _02038660
_02038624:
	mla r5, r6, r7, r4
	ldrh r0, [r5, #0xa]
	tst r0, #1
	beq _0203865C
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bgt _0203865C
	ldr r0, [r8]
	ldr r1, [r5, #4]
	bl FUN_0205f5ec
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl MI_CpuFill8
_0203865C:
	add r6, r6, #1
_02038660:
	cmp r6, #0x20
	blt _02038624
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203866C: .word unk_02099EE8
	arm_func_end FUN_02038600

	arm_func_start FUN_02038670
FUN_02038670: ; 0x02038670
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r8, r0
	add r0, r8, #0x1000
	ldr r5, [r0, #0x3e0]
	ldr r9, _020388AC ; =0x02099EE8
	mov r6, #0
	b _0203889C
_02038690:
	add r0, r8, #0x870
	add r1, r0, #0x2000
	mov r0, #0x48
	mla r4, r6, r0, r1
	ldrh r0, [r4, #0xa]
	tst r0, #1
	beq _02038898
	tst r0, #0x10
	beq _020386D4
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205f990
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _020388B0 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_020386D4:
	ldr r1, [r4, #4]
	mov r7, #0
	ldr r0, [r9]
	add r2, sp, #4
	str r7, [sp, #4]
	bl FUN_0205e754
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02038704
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	moveq r7, #1
_02038704:
	cmp r7, #0
	ldrneh r0, [r4, #0xa]
	orrne r0, r0, #2
	strneh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	tst r0, #8
	beq _02038748
	tst r0, #4
	bne _02038748
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205fd1c
	cmp r0, #0
	ldrneh r1, [r4, #0xa]
	ldrne r0, _020388B4 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r4, #0xa]
_02038748:
	ldrh r0, [r4, #0xa]
	tst r0, #0x100
	beq _020387F0
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #0x14
	bl FUN_0205fb80
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	mov r7, #0
	add r10, sp, #0x2c
	b _020387B4
_02038788:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x10
	bl VEC_Add
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xc]
	beq _020387BC
	add r7, r7, #1
_020387B4:
	cmp r7, r5
	blo _02038788
_020387BC:
	ldr r0, [sp, #0x34]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl FUN_0205fa48
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _020388B8 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_020387F0:
	ldrh r0, [r4, #0xa]
	tst r0, #0x200
	beq _02038898
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #8
	bl FUN_0205fbfc
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r7, #0
	add r10, sp, #0x20
	b _0203885C
_02038830:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x1c
	bl VEC_Add
	ldrh r0, [r4, #0xe]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xe]
	beq _02038864
	add r7, r7, #1
_0203885C:
	cmp r7, r5
	blo _02038830
_02038864:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_0205fab4
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _020388BC ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_02038898:
	add r6, r6, #1
_0203889C:
	cmp r6, #0x20
	blt _02038690
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020388AC: .word unk_02099EE8
_020388B0: .word 0x0000FFEF
_020388B4: .word 0x0000FFF7
_020388B8: .word 0x0000FEFF
_020388BC: .word 0x0000FDFF
	arm_func_end FUN_02038670

	arm_func_start FUN_020388c0
FUN_020388c0: ; 0x020388C0
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020388F4 ; =0x02099EE8
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fe64
	ldmfd sp!, {r3, pc}
_020388F4: .word unk_02099EE8
	arm_func_end FUN_020388c0

	arm_func_start FUN_020388f8
FUN_020388f8: ; 0x020388F8
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r1, [r2, #0xa]
	tst r1, #1
	ldrne r0, [r2, #0x2c]
	subeq r0, r0, #0x49
	bx lr
	arm_func_end FUN_020388f8

	arm_func_start FUN_0203891c
FUN_0203891c: ; 0x0203891C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r5, r1, r0, r3
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02038948: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _0203895C ; case 4
_0203895C:
	ldr r4, _02038980 ; =0x02099EE8
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205f02c
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #1
	bl FUN_0205fe34
	ldmfd sp!, {r3, r4, r5, pc}
_02038980: .word unk_02099EE8
	arm_func_end FUN_0203891c

	arm_func_start FUN_02038984
FUN_02038984: ; 0x02038984
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r12, r0, #0x2000
	mov r0, #0x48
	mla r12, r1, r0, r12
	ldrh r0, [r12, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, [sp, #8]
	ldr r0, _020389CC ; =0x02099EE8
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r12, #4]
	bl FUN_0205faf8
	ldmfd sp!, {r3, pc}
_020389CC: .word unk_02099EE8
	arm_func_end FUN_02038984

	arm_func_start FUN_020389d0
FUN_020389d0: ; 0x020389D0
	stmfd sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsl #0x10
	str r2, [sp]
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, _02038A2C ; =0x02099F24
	str r2, [sp, #8]
	add r1, sp, #0x14
	ldr r0, [r0]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f794c
	add sp, sp, #0xc
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
_02038A2C: .word unk_02099F24
	arm_func_end FUN_020389d0

	arm_func_start FUN_02038a30
FUN_02038a30: ; 0x02038A30
	stmfd sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	orr r1, r1, #2
	mov r1, r1, lsl #0x10
	add r0, r0, #0x4000
	mov r3, #0
	strb r3, [r0, #0x254]
	mov r0, r1, lsr #0x10
	mov r2, r2, lsl #0x10
	str r0, [sp]
	mov r0, r2, lsr #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, _02038A98 ; =0x02099F24
	str r2, [sp, #8]
	add r1, sp, #0x14
	ldr r0, [r0]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	add sp, sp, #0xc
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
_02038A98: .word unk_02099F24
	arm_func_end FUN_02038a30

	arm_func_start FUN_02038a9c
FUN_02038a9c: ; 0x02038A9C
	stmfd sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r0, r0, #4
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsl #0x10
	str r2, [sp]
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, _02038AF8 ; =0x02099F24
	str r2, [sp, #8]
	add r1, sp, #0x14
	ldr r0, [r0]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	add sp, sp, #0xc
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
_02038AF8: .word unk_02099F24
	arm_func_end FUN_02038a9c

	arm_func_start FUN_02038afc
FUN_02038afc: ; 0x02038AFC
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	ldr r0, _02038B2C ; =0x02099F24
	str r12, [sp]
	orr r2, r2, #4
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_020f7b50
	ldmfd sp!, {r3, pc}
_02038B2C: .word unk_02099F24
	arm_func_end FUN_02038afc

	arm_func_start FUN_02038b30
FUN_02038b30: ; 0x02038B30
	stmfd sp!, {r4, lr}
	cmp r1, #0
	mov r1, r2
	mov r4, r0
	mov r2, r3
	beq _02038B5C
	bl FUN_02035c50
	add r1, r4, #0x4000
	str r0, [r1, #0x250]
	mov r12, #2
	b _02038B6C
_02038B5C:
	bl FUN_ov131_0214aabc ; may be ov132
	add r1, r4, #0x4000
	str r0, [r1, #0x250]
	mov r12, #1
_02038B6C:
	add r0, r4, #0x4000
	ldr r1, [r0, #0x250]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x10]
	strb r12, [r0, #0x254]
	strb r3, [r0, #0x256]
	strb r2, [r0, #0x255]
	str r1, [r0, #0x258]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02038b30

	arm_func_start FUN_02038b9c
FUN_02038b9c: ; 0x02038B9C
	add r0, r0, #0x4000
	mov r1, #0
	strb r1, [r0, #0x254]
	bx lr
	arm_func_end FUN_02038b9c

	arm_func_start FUN_02038bac
FUN_02038bac: ; 0x02038BAC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	ldr r1, _02038CD0 ; =0x02099F24
	mov r5, r0
	ldr r0, [r1]
	bl FUN_ov16_020f7c24
	mov r4, r0
	add r0, r5, #0x4200
	ldrsb r0, [r0, #0x54]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, pc}
	cmp r0, #1
	beq _02038C08
	cmp r0, #2
	beq _02038C38
	b _02038C6C
_02038C08:
	add r0, r5, #0x4000
	ldr r1, [r0, #0x250]
	ldr r0, _02038CD4 ; =0x02099ED8
	ldr r1, [r1, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	cmp r0, #0
	beq _02038C6C
	ldr r2, [r0, #0x84]
	ldr r1, [r0, #0x88]
	ldr r0, [r0, #0x8c]
	b _02038C60
_02038C38:
	add r0, r5, #0x4000
	ldr r1, [r0, #0x250]
	ldr r0, _02038CD8 ; =0x02099EEC
	ldr r2, [r1, #4]
	ldr r1, [r0]
	add r0, sp, #0xc
	bl FUN_0205afb4
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
_02038C60:
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
_02038C6C:
	ldr r1, [r4]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	ldreq r1, [r4, #4]
	ldreq r0, [sp, #0x1c]
	cmpeq r1, r0
	ldreq r1, [r4, #8]
	ldreq r0, [sp, #0x20]
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, pc}
	add r0, r5, #0x4200
	ldrsb r2, [r0, #0x55]
	add r4, r5, #0x4000
	add r1, sp, #0x18
	str r2, [sp]
	ldrsb r12, [r0, #0x56]
	mov r0, r5
	ldmia r1, {r1, r2, r3}
	str r12, [sp, #4]
	ldr r4, [r4, #0x258]
	str r4, [sp, #8]
	bl FUN_02038a30
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
_02038CD0: .word unk_02099F24
_02038CD4: .word unk_02099ED8
_02038CD8: .word unk_02099EEC
	arm_func_end FUN_02038bac

	arm_func_start FUN_02038cdc
FUN_02038cdc: ; 0x02038CDC
	ldr r0, _02038CF0 ; =0x02099EB8
	ldr r12, _02038CF4 ; =FUN_020529d8
	ldr r0, [r0]
	mov r2, #1
	bx r12
_02038CF0: .word unk_02099EB8
_02038CF4: .word FUN_020529d8
	arm_func_end FUN_02038cdc

	arm_func_start FUN_02038cf8
FUN_02038cf8: ; 0x02038CF8
	stmfd sp!, {r4, lr}
	ldr r4, _02038D24 ; =0x02099EB8
	ldr r0, [r4]
	bl FUN_02052b20
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4]
	bl FUN_02052c70
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02038D24: .word unk_02099EB8
	arm_func_end FUN_02038cf8

	arm_func_start FUN_02038d28
FUN_02038d28: ; 0x02038D28
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02038D54 ; =0x02099EB8
	mov r5, r1
	ldr r0, [r4]
	bl FUN_0205302c
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02053080
	ldr r0, [r4]
	bl FUN_020530a0
	ldmfd sp!, {r3, r4, r5, pc}
_02038D54: .word unk_02099EB8
	arm_func_end FUN_02038d28

	arm_func_start FUN_02038d58
FUN_02038d58: ; 0x02038D58
	ldr r0, _02038D68 ; =0x02099EB8
	ldr r12, _02038D6C ; =FUN_020530e0
	ldr r0, [r0]
	bx r12
_02038D68: .word unk_02099EB8
_02038D6C: .word FUN_020530e0
	arm_func_end FUN_02038d58

	arm_func_start FUN_02038d70
FUN_02038d70: ; 0x02038D70
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _02038DE8 ; =0x02099EB8
	mov r5, r1
	ldr r0, [r0]
	mov r4, r2
	adds r6, r0, #0x22c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r8, r7
	b _02038DD8
_02038D9C:
	ldr r1, [r4, r8, lsl #2]
	mov r0, r6
	bl FUN_ov16_020fb110
	mov r1, r0
	mov r0, r6
	bl FUN_ov16_020fb050
	cmp r0, #0
	beq _02038DD4
	ldr r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	sub r0, r3, r2
	bl FX_Div
	add r7, r7, r0, asr #12
_02038DD4:
	add r8, r8, #1
_02038DD8:
	cmp r8, r5
	blt _02038D9C
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02038DE8: .word unk_02099EB8
	arm_func_end FUN_02038d70

	arm_func_start FUN_02038dec
FUN_02038dec: ; 0x02038DEC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	ldr r1, _02038F38 ; =0x0208FC20
	ldr r4, _02038F3C ; =0x02099F38
	mov r6, r0
	mov r5, #0
	ldr r2, [r1]
	ldr r0, [r4]
	mov r8, #5
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r1, r8
	mov r3, r5
	str r5, [sp, #0x10]
	bl FUN_02058800
	mov r1, r0
	add r0, r6, #0x1000
	str r1, [r0, #0x350]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	mov r7, #1
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_02112724
	mov r1, r0
	add r0, r6, #0x1000
	ldr r2, [r0, #0x350]
	str r1, [r0, #0x35c]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, #0x64
	bl FUN_ov16_02112b98
	add r1, r6, #0x1000
	mov r3, r7
	mov r7, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r7
	bl FUN_ov16_0211329c
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r7
	bl FUN_ov16_02114370
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, #0x30
	mov r3, #0x60
	bl FUN_ov16_02114248
	add r7, r6, #0x1000
	mov r8, r5
	b _02038F04
_02038EE4:
	str r8, [sp]
	mov r3, r5, lsl #0x15
	ldr r0, [r4]
	ldr r1, [r7, #0x35c]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add r5, r5, #1
_02038F04:
	cmp r5, #5
	blt _02038EE4
	mov r1, #0
	ldr r0, _02038F3C ; =0x02099F38
	str r1, [sp]
	add r1, r6, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x35c]
	mov r2, #3
	mov r3, #0xb
	bl FUN_ov16_0211401c
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02038F38: .word unk_0208FC20
_02038F3C: .word unk_02099F38
	arm_func_end FUN_02038dec

	arm_func_start FUN_02038f40
FUN_02038f40: ; 0x02038F40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r0
	ldr r5, _020390A0 ; =0x02099F38
	add r1, r7, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x35c]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	mov r10, #0
	add r4, r7, #0x1000
	mov r6, r10
	b _02038F94
_02038F74:
	str r6, [sp]
	mov r3, r10, lsl #0x15
	ldr r0, [r5]
	ldr r1, [r4, #0x35c]
	add r2, r10, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add r10, r10, #1
_02038F94:
	cmp r10, #5
	blt _02038F74
	mov r10, #0
	add r4, r7, #0x1000
	mov r8, r10
	ldr r7, _020390A4 ; =0x02099EF0
	ldr r6, _020390A0 ; =0x02099F38
	ldr r5, _020390A8 ; =0x66666667
	mov r11, #0xa
	b _02039094
_02038FBC:
	ldr r0, [r7]
	bl FUN_ov132_02144f4c
	cmp r0, #0
	ldr r0, [r7]
	mov r1, r10
	bne _02038FDC
	bl FUN_ov132_02143c28
	b _02038FE0
_02038FDC:
	bl FUN_ov132_02143c34
_02038FE0:
	mov r9, r0
	cmp r9, #0x63
	movgt r9, #0x63
	smull r1, r3, r5, r9
	str r8, [sp]
	mov r0, r9, lsr #0x1f
	add r3, r0, r3, asr #2
	add r2, r10, r10, lsl #1
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	add r2, r2, #1
	add r3, r3, #1
	bl FUN_ov16_0211401c
	smull r12, r3, r5, r9
	str r8, [sp]
	mov r12, r9, lsr #0x1f
	add r3, r12, r3, asr #2
	smull r3, r12, r11, r3
	add r2, r10, r10, lsl #1
	sub r3, r9, r3
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	add r2, r2, #2
	add r3, r3, #1
	bl FUN_ov16_0211401c
	cmp r9, #0xa
	bge _02039090
	add r2, r10, r10, lsl #1
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	mov r3, #2
	add r2, r2, #1
	bl FUN_ov16_02113f7c
	mov r3, #0x60
	str r8, [sp]
	mul r3, r10, r3
	add r3, r3, #0x10
	add r2, r10, r10, lsl #1
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	add r2, r2, #2
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_02039090:
	add r10, r10, #1
_02039094:
	cmp r10, #2
	blt _02038FBC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020390A0: .word unk_02099F38
_020390A4: .word unk_02099EF0
_020390A8: .word 0x66666667
	arm_func_end FUN_02038f40

	arm_func_start FUN_020390ac
FUN_020390ac: ; 0x020390AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x35c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020390E4 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	mov r3, #1
	bl FUN_ov16_021142fc
	mov r0, r4
	bl FUN_02038f40
	ldmfd sp!, {r4, pc}
_020390E4: .word unk_02099F38
	arm_func_end FUN_020390ac

	arm_func_start FUN_020390e8
FUN_020390e8: ; 0x020390E8
	stmfd sp!, {r4, lr}
	ldr r1, _02039120 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02039104
	bl FUN_ov132_02143c40
_02039104:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x35c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_02038f40
	ldmfd sp!, {r4, pc}
_02039120: .word unk_02099EF0
	arm_func_end FUN_020390e8

	arm_func_start FUN_02039124
FUN_02039124: ; 0x02039124
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x35c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _020391A4 ; =0x02099F38
	mov r2, #2
	ldr r0, [r4]
	bl FUN_ov16_02114370
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, [r4]
	add r1, r5, #0x1000
	ldr r1, [r1, #0x35c]
	bl FUN_ov16_021128c4
	add r0, r5, #0x348
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_020391A4: .word unk_02099F38
	arm_func_end FUN_02039124

	arm_func_start FUN_020391a8
FUN_020391a8: ; 0x020391A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x90
	mov r10, r0
	ldr r0, _0203956C ; =0x0209BA20
	mov r1, #0
	bl FUN_0207249c
	ldr r1, _02039570 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _020391E0
	bl FUN_ov16_020f068c
	cmp r0, #0
	beq _02039200
_020391E0:
	bl FUN_ov16_020f081c
	cmp r0, #0
	add r0, sp, #0x10
	bne _020391F8
	ldr r1, _02039574 ; =0x0208FE24
	b _02039214
_020391F8:
	ldr r1, _02039578 ; =0x0208FE38
	b _02039214
_02039200:
	ldrh r2, [r4, #0x2a]
	ldr r1, _0203957C ; =0x0208FE4C
	add r0, sp, #0x10
	cmp r2, #0
	ldreqh r2, [r4, #0x20]
_02039214:
	bl STD_TSPrintf
	ldr r0, _0203956C ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	ldr r1, _02039570 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _02039244
	bl FUN_ov16_020f068c
	cmp r0, #0
	beq _02039264
_02039244:
	bl FUN_ov16_020f081c
	cmp r0, #0
	add r0, sp, #0x50
	bne _0203925C
	ldr r1, _02039580 ; =0x0208FE5C
	b _02039278
_0203925C:
	ldr r1, _02039584 ; =0x0208FE70
	b _02039278
_02039264:
	ldrh r2, [r4, #0x2a]
	ldr r1, _02039588 ; =0x0208FE84
	add r0, sp, #0x50
	cmp r2, #0
	ldreqh r2, [r4, #0x20]
_02039278:
	bl STD_TSPrintf
	ldr r4, _0203958C ; =0x0209A200
	ldr r5, _02039590 ; =0x02099F38
	ldr r2, [r4, #0x18]
	ldr r0, [r5]
	mov r9, #0
	str r9, [sp]
	mov r6, #5
	str r9, [sp, #4]
	add r3, sp, #0x10
	mov r1, r6
	str r9, [sp, #8]
	bl FUN_02058684
	add r1, r10, #0x1000
	str r0, [r1, #0x334]
	ldr r2, [r4, #0x18]
	ldr r0, [r5]
	add r3, sp, #0x50
	str r9, [sp]
	str r9, [sp, #4]
	mov r1, r6
	str r9, [sp, #8]
	bl FUN_02058684
	add r1, r10, #0x1000
	str r0, [r1, #0x338]
	ldr r2, [r4]
	ldr r0, [r5]
	ldr r3, _02039594 ; =0x0208FE94
	str r9, [sp]
	str r9, [sp, #4]
	mov r1, r6
	str r9, [sp, #8]
	bl FUN_02058684
	add r1, r10, #0x1000
	str r0, [r1, #0x33c]
	ldr r1, [r1, #0x334]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	add r0, r10, #0x1000
	ldr r1, [r0, #0x338]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	add r0, r10, #0x1000
	ldr r1, [r0, #0x33c]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	mvn r11, #7
	sub r0, r11, #0x10
	str r0, [sp, #0xc]
	add r4, r10, #0x1000
	mov r8, #1
	mov r7, r9
	mov r6, #0xe
	b _02039544
_02039368:
	ldr r0, [r5]
	mov r1, #4
	mov r2, r8
	bl FUN_ov16_02112724
	mov r1, r0
	add r0, r10, r9, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x340]
	ldr r2, [r4, #0x33c]
	ldr r0, [r5]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_0211346c
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #0x63
	bl FUN_ov16_02112b98
	add r1, r10, r9, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #9
	bl FUN_ov16_02113b78
	add r1, r10, r9, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #3
	mov r3, r11
	bl FUN_ov16_02113b78
	add r1, r10, r9, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	ldr r3, [sp, #0xc]
	mov r2, #4
	bl FUN_ov16_02113b78
	add r1, r10, r9, lsl #2
	add r2, r1, #0x1000
	ldr r3, [r2, #0x334]
	ldr r1, [r2, #0x340]
	ldr r0, [r5]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add r1, r10, r9, lsl #2
	str r7, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	add r1, r10, r9, lsl #2
	str r7, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113b78
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, #0x64
	bl FUN_ov16_021139bc
	str r7, [sp]
	add r1, r10, r9, lsl #2
	tst r9, #1
	ldr r0, [r5]
	add r1, r1, #0x1000
	bne _020394D0
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, #0x28
	b _020394DC
_020394D0:
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, #0x3c
_020394DC:
	bl FUN_ov16_02114150
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #2
	bl FUN_ov16_02114370
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	tst r9, #1
	ldr r0, [r5]
	mov r3, #0x80
	ldr r1, [r1, #0x340]
	bne _02039538
	mov r2, #0x20
	b _0203953C
_02039538:
	mov r2, #0xe0
_0203953C:
	bl FUN_ov16_02114248
	add r9, r9, #1
_02039544:
	cmp r9, #2
	blt _02039368
	add r0, r10, #0x1000
	ldr r1, [r0, #0x32c]
	mov r2, #0x14
	add r1, r1, #1
	str r2, [r0, #0x330]
	str r1, [r0, #0x32c]
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203956C: .word unk_0209BA20
_02039570: .word unk_020A0640
_02039574: .word unk_0208FE24
_02039578: .word unk_0208FE38
_0203957C: .word unk_0208FE4C
_02039580: .word unk_0208FE5C
_02039584: .word unk_0208FE70
_02039588: .word unk_0208FE84
_0203958C: .word unk_0209A200
_02039590: .word unk_02099F38
_02039594: .word unk_0208FE94
	arm_func_end FUN_020391a8

	arm_func_start FUN_02039598
FUN_02039598: ; 0x02039598
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r2, _02039744 ; =0x02099EF0
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [r2]
	str r1, [sp, #8]
	str r3, [sp, #0x10]
	str r3, [sp, #0xc]
	bl FUN_ov126_0213246c
	movs r4, r0
	beq _02039604
	ldrsb r0, [r4, #4]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	mov r0, r4
	bne _020395F0
	bl FUN_ov126_02132718
	str r0, [sp, #0xc]
	mov r0, r4
	bl FUN_ov126_02132730
	b _02039600
_020395F0:
	bl FUN_ov126_02132730
	str r0, [sp, #0xc]
	mov r0, r4
	bl FUN_ov126_02132718
_02039600:
	str r0, [sp, #0x10]
_02039604:
	mov r7, #0
	b _020396F0
_0203960C:
	ldr r0, [sp, #4]
	ldr r10, _02039748 ; =0x02099F38
	add r0, r0, r7, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	ldr r0, [sp, #4]
	mov r6, #0
	add r0, r0, r7, lsl #2
	add r9, r0, #0x1000
	add r5, sp, #0xc
	mov r4, r6
	ldr r8, _0203974C ; =0x66666667
	mov r11, #0xa
	b _020396B8
_02039654:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	bne _02039674
	ldr r0, [r10]
	ldr r1, [r9, #0x340]
	mov r3, #2
	add r2, r6, #2
	bl FUN_ov16_02113f7c
_02039674:
	ldr r12, [r5, r7, lsl #2]
	str r4, [sp]
	mov r0, r12, lsr #0x1f
	smull r1, r3, r8, r12
	add r3, r0, r3, asr #2
	ldr r0, [r10]
	ldr r1, [r9, #0x340]
	add r2, r6, #2
	smull r3, lr, r11, r3
	sub r3, r12, r3
	bl FUN_ov16_0211401c
	ldr r1, [r5, r7, lsl #2]
	add r6, r6, #1
	smull r0, r2, r8, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [r5, r7, lsl #2]
_020396B8:
	cmp r6, #3
	blt _02039654
	ldr r0, [sp, #4]
	mov r3, #1
	add r1, r0, r7, lsl #2
	ldr r0, _02039748 ; =0x02099F38
	str r3, [sp]
	add r1, r1, #0x1000
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r1, #0x340]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add r7, r7, #1
_020396F0:
	cmp r7, #2
	blt _0203960C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02039728
	rsb r1, r0, #2
	ldr r0, [sp, #4]
	mov r2, #2
	add r1, r0, r1, lsl #2
	ldr r0, _02039748 ; =0x02099F38
	add r1, r1, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x340]
	bl FUN_ov16_02114370
_02039728:
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x32c]
	add r1, r1, #1
	str r1, [r0, #0x32c]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039744: .word unk_02099EF0
_02039748: .word unk_02099F38
_0203974C: .word 0x66666667
	arm_func_end FUN_02039598

	arm_func_start FUN_02039750
FUN_02039750: ; 0x02039750
	add r0, r0, #0x1000
	ldr r1, [r0, #0x32c]
	add r1, r1, #1
	str r1, [r0, #0x32c]
	bx lr
	arm_func_end FUN_02039750

	arm_func_start FUN_02039764
FUN_02039764: ; 0x02039764
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #2
	ldr r4, _020397B0 ; =0x02099F38
	b _02039798
_0203977C:
	add r0, r7, r6, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x340]
	mov r2, r5
	bl FUN_ov16_02114370
	add r6, r6, #1
_02039798:
	cmp r6, #2
	blt _0203977C
	add r0, r7, #0x1000
	mov r1, #1
	str r1, [r0, #0x32c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020397B0: .word unk_02099F38
	arm_func_end FUN_02039764

	arm_func_start FUN_020397b4
FUN_020397b4: ; 0x020397B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x32c]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	ldr r6, _02039864 ; =0x02099F38
	b _02039818
_020397D8:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	ldr r0, [r6]
	bl FUN_020591e8
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r4, r4, #1
_02039818:
	cmp r4, #3
	blt _020397D8
	mov r4, #0
	ldr r6, _02039864 ; =0x02099F38
	b _02039844
_0203982C:
	add r0, r5, r4, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x340]
	bl FUN_ov16_021128c4
	add r4, r4, #1
_02039844:
	cmp r4, #2
	blt _0203982C
	add r0, r5, #0x32c
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_02039864: .word unk_02099F38
	arm_func_end FUN_020397b4

	arm_func_start FUN_02039868
FUN_02039868: ; 0x02039868
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	str r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r3, [r0, #0x32c]
	mov r4, #1
	cmp r3, #4
	mov r11, #0
	addls pc, pc, r3, lsl #2
	b _02039B58
_02039890: ; jump table
	b _02039B58 ; case 0
	b _02039B58 ; case 1
	b _020398A4 ; case 2
	b _020398C8 ; case 3
	b _020399A4 ; case 4
_020398A4:
	ldr r2, [r0, #0x330]
	ldr r1, [r0, #0x3e0]
	add sp, sp, #0x1c
	sub r1, r2, r1
	str r1, [r0, #0x330]
	cmp r1, #0
	addle r1, r3, #1
	strle r1, [r0, #0x32c]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020398C8:
	mov r9, r11
	b _02039994
_020398D0:
	ldr r0, _02039B60 ; =0x000003E7
	bl FUN_ov16_020ef928
	ldr r1, [sp, #4]
	ldr r6, _02039B64 ; =0x02099F38
	add r1, r1, r9, lsl #2
	add r1, r1, #0x1000
	add r0, r0, #1
	add r7, sp, #0x14
	str r0, [r7, r9, lsl #2]
	ldr r1, [r1, #0x340]
	ldr r0, [r6]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldr r0, [sp, #4]
	mov r8, #0
	add r0, r0, r9, lsl #2
	add r5, r0, #0x1000
	ldr r4, _02039B68 ; =0x66666667
	b _02039988
_02039920:
	ldr r0, [r7, r9, lsl #2]
	cmp r0, #0
	bne _02039940
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	mov r3, #2
	bl FUN_ov16_02113f7c
_02039940:
	ldr r12, [r7, r9, lsl #2]
	str r11, [sp]
	smull lr, r3, r4, r12
	mov r10, r12, lsr #0x1f
	add r3, r10, r3, asr #2
	mov r10, #0xa
	smull r3, lr, r10, r3
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	sub r3, r12, r3
	bl FUN_ov16_0211401c
	ldr r1, [r7, r9, lsl #2]
	add r8, r8, #1
	smull r0, r2, r4, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [r7, r9, lsl #2]
_02039988:
	cmp r8, #3
	blt _02039920
	add r9, r9, #1
_02039994:
	cmp r9, #2
	blt _020398D0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020399A4:
	ldr r0, _02039B6C ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213246c
	mov r5, r0
	mov r1, r11
	ldrsb r0, [r5, #4]
	str r1, [sp, #0x10]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	mov r0, r5
	mov r1, r4
	bne _020399F8
	bl FUN_ov126_021327b8
	cmp r0, #0
	mov r0, r5
	streq r4, [sp, #0x10]
	bl FUN_ov126_02132718
	str r0, [sp, #0x14]
	mov r0, r5
	bl FUN_ov126_02132730
	b _02039A18
_020399F8:
	bl FUN_ov126_021327b8
	cmp r0, #0
	mov r0, r5
	strne r4, [sp, #0x10]
	bl FUN_ov126_02132730
	str r0, [sp, #0x14]
	mov r0, r5
	bl FUN_ov126_02132718
_02039A18:
	str r0, [sp, #0x18]
	mov r9, #0
	b _02039B3C
_02039A24:
	ldr r0, [sp, #4]
	ldr r6, _02039B64 ; =0x02099F38
	add r0, r0, r9, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_0211329c
	ldr r0, [sp, #4]
	mov r8, #0
	add r0, r0, r9, lsl #2
	add r5, r0, #0x1000
	add r7, sp, #0x14
	ldr r4, _02039B68 ; =0x66666667
	b _02039B04
_02039A64:
	ldr r0, [r7, r9, lsl #2]
	cmp r0, #0
	bne _02039A84
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	mov r3, #2
	bl FUN_ov16_02113f7c
_02039A84:
	ldr r0, [sp, #0x10]
	str r11, [sp]
	cmp r9, r0
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	bne _02039AC8
	ldr lr, [r7, r9, lsl #2]
	mov r12, #0xa
	smull r10, r3, r4, lr
	mov r10, lr, lsr #0x1f
	add r3, r10, r3, asr #2
	smull r10, r3, r12, r3
	str r3, [sp, #8]
	sub r3, lr, r10
	add r3, r3, #0xa
	b _02039AE8
_02039AC8:
	ldr r12, [r7, r9, lsl #2]
	mov lr, #0xa
	smull r10, r3, r4, r12
	mov r10, r12, lsr #0x1f
	add r3, r10, r3, asr #2
	smull r10, r3, lr, r3
	str r3, [sp, #0xc]
	sub r3, r12, r10
_02039AE8:
	bl FUN_ov16_0211401c
	ldr r1, [r7, r9, lsl #2]
	add r8, r8, #1
	smull r0, r2, r4, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [r7, r9, lsl #2]
_02039B04:
	cmp r8, #3
	blt _02039A64
	ldr r0, [sp, #4]
	mov r3, #1
	add r1, r0, r9, lsl #2
	ldr r0, _02039B64 ; =0x02099F38
	str r3, [sp]
	add r1, r1, #0x1000
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r1, #0x340]
	mov r3, r2
	bl FUN_ov16_02113ec0
	add r9, r9, #1
_02039B3C:
	cmp r9, #2
	blt _02039A24
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x32c]
	add r1, r1, #1
	str r1, [r0, #0x32c]
_02039B58:
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039B60: .word 0x000003E7
_02039B64: .word unk_02099F38
_02039B68: .word 0x66666667
_02039B6C: .word unk_02099EF0
	arm_func_end FUN_02039868

	arm_func_start FUN_02039b70
FUN_02039b70: ; 0x02039B70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	ldr r3, _02039EF0 ; =0x0208C374
	ldr r2, _02039EF4 ; =0x02099EF0
	ldrb r8, [r3]
	ldrb r7, [r3, #1]
	ldrb r6, [r3, #2]
	ldrb r5, [r3, #3]
	ldrb r4, [r3, #4]
	ldrb r3, [r3, #5]
	mov r10, r0
	ldr r0, [r2]
	mov r11, r1
	strb r8, [sp, #0xc]
	strb r7, [sp, #0xd]
	strb r6, [sp, #0xe]
	strb r5, [sp, #0xf]
	strb r4, [sp, #0x10]
	strb r3, [sp, #0x11]
	cmp r0, #0
	mov r6, #0
	beq _02039BD8
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x94
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039BD8:
	cmp r11, #0
	bge _02039BF8
	ldr r0, _02039EF4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02148398
	cmp r0, #0
	addeq sp, sp, #0x94
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039BF8:
	ldr r4, _02039EF4 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _02039C38
	ldr r0, [r4]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _02039C38
	ldrb r0, [r0, #4]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x94
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039C38:
	ldr r0, _02039EF8 ; =0x02099F38
	mov r9, #3
	ldr r0, [r0]
	mov r1, r9
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r10, #0x1000
	ldr r2, _02039EF4 ; =0x02099EF0
	str r0, [r1, #0x374]
	ldr r0, [r2]
	bl FUN_ov132_02148398
	cmp r0, #0
	moveq r9, #0
	mov r8, #0
	add r4, r10, #0x1000
	add r7, sp, #0x12
	ldr r5, _02039EF8 ; =0x02099F38
	b _02039D38
_02039C80:
	add r0, sp, #0xc
	ldrb r2, [r0, r9]
	ldr r1, _02039EFC ; =0x0208FEA4
	mov r0, r7
	bl STD_TSPrintf
	ldr r0, _02039F00 ; =0x0209A200
	mov r1, #5
	ldr r2, [r0]
	ldr r0, [r5]
	mov r3, r7
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02058684
	add r1, r10, r8, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x368]
	mov r1, r0
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	add r3, r10, r8, lsl #2
	add r3, r3, #0x1000
	ldr r3, [r3, #0x368]
	ldr r0, [r5]
	ldr r1, [r4, #0x374]
	add r2, r8, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x374]
	add r2, r8, #1
	mov r3, r6
	bl FUN_ov16_0211401c
	add r1, r10, r8, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x374]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02114150
	add r8, r8, #1
	add r9, r9, #1
_02039D38:
	cmp r8, #3
	blt _02039C80
	ldr r4, _02039EF8 ; =0x02099F38
	add r1, r10, #0x1000
	mov r6, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x374]
	mov r2, r6
	bl FUN_ov16_02114370
	mov r5, #8
	str r5, [sp]
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x374]
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_02113b78
	str r5, [sp]
	add r0, r10, #0x1000
	ldr r1, [r0, #0x374]
	mov r2, r6
	ldr r0, [r4]
	mov r6, #0x28
	mov r3, r6
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r6
	add r1, r10, #0x1000
	ldr r1, [r1, #0x374]
	mov r4, #1
	mov r2, r4
	bl FUN_ov16_02113b78
	sub r0, r4, #2
	cmp r11, r0
	bne _02039E18
	bl FUN_ov16_020f081c
	ldr r5, _02039F04 ; =0x0209BA20
	mov r1, r0
	mov r0, r5
	bl FUN_0207249c
	mov r4, r0
	ldrb r6, [r4, #0x43]
	bl FUN_ov16_020f081c
_02039DE8:
	mov r1, r0
	mov r0, r5
	bl FUN_020724e8
	mov r2, #0x64
	mov r1, r0
	smulbb r0, r6, r2
	bl _s32_div_f
	ldrb r2, [r4, #0x43]
	add r1, r10, #0x1000
	mov r4, r0
	str r2, [r1, #0x37c]
	b _02039E8C
_02039E18:
	sub r0, r4, #3
	cmp r11, r0
	bne _02039E48
	bl FUN_ov16_020f083c
	ldr r5, _02039F04 ; =0x0209BA20
	mov r1, r0
	mov r0, r5
	bl FUN_0207249c
	mov r4, r0
	ldrb r6, [r4, #0x43]
	bl FUN_ov16_020f083c
	b _02039DE8
_02039E48:
	mov r0, r11
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r5, r0
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc94
	mov r2, #0x64
	mov r1, r0
	smulbb r0, r4, r2
	bl _s32_div_f
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc84
	add r1, r10, #0x1000
	str r0, [r1, #0x37c]
_02039E8C:
	add r1, r10, #0x1000
	str r11, [r1, #0x378]
	mov r6, #0x64
	str r6, [sp]
	ldr r5, _02039EF8 ; =0x02099F38
	mov r2, r4, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r1, #0x374]
	mov r3, r2, asr #0x10
	mov r2, #2
	bl FUN_ov16_02113c60
	str r6, [sp]
	add r1, r10, #0x1000
	mov r2, r4, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r1, #0x374]
	mov r3, r2, asr #0x10
	mov r2, #1
	bl FUN_ov16_02113c60
	add r0, r10, #0x1000
	ldr r1, [r0, #0x364]
	add r1, r1, #1
	str r1, [r0, #0x364]
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039EF0: .word unk_0208C374
_02039EF4: .word unk_02099EF0
_02039EF8: .word unk_02099F38
_02039EFC: .word unk_0208FEA4
_02039F00: .word unk_0209A200
_02039F04: .word unk_0209BA20
	arm_func_end FUN_02039b70

	arm_func_start FUN_02039f08
FUN_02039f08: ; 0x02039F08
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x364]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	ldr r6, _02039FA0 ; =0x02099F38
	b _02039F6C
_02039F2C:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x368]
	ldr r0, [r6]
	bl FUN_020591e8
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x368]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x368]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r4, r4, #1
_02039F6C:
	cmp r4, #3
	blt _02039F2C
	ldr r0, _02039FA0 ; =0x02099F38
	add r1, r5, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x374]
	bl FUN_ov16_021128c4
	add r0, r5, #0x364
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_02039FA0: .word unk_02099F38
	arm_func_end FUN_02039f08

	arm_func_start FUN_02039fa4
FUN_02039fa4: ; 0x02039FA4
	ldr r2, _02039FC4 ; =0x02099F38
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x374]
	ldr r12, _02039FC8 ; =FUN_ov16_021142fc
	mov r2, #2
	mov r3, #1
	bx r12
_02039FC4: .word unk_02099F38
_02039FC8: .word FUN_ov16_021142fc
	arm_func_end FUN_02039fa4

	arm_func_start FUN_02039fcc
FUN_02039fcc: ; 0x02039FCC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x364]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0203A040
_02039FF0: ; jump table
	b _0203A040 ; case 0
	b _0203A004 ; case 1
	b _0203A014 ; case 2
	b _0203A024 ; case 3
	b _0203A034 ; case 4
_0203A004:
	ldr r0, _0203A054 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021455b8
	b _0203A040
_0203A014:
	ldr r0, _0203A054 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021456d0
	b _0203A040
_0203A024:
	ldr r0, _0203A054 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021455e8
	b _0203A040
_0203A034:
	ldr r0, _0203A054 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021457b8
_0203A040:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x364]
	add r1, r1, #1
	str r1, [r0, #0x364]
	ldmfd sp!, {r4, pc}
_0203A054: .word unk_02099EF0
	arm_func_end FUN_02039fcc

	arm_func_start FUN_0203a058
FUN_0203a058: ; 0x0203A058
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x364]
	mov r6, #0
	mov r7, r6
	cmp r1, #0
	mov r4, r6
	beq _0203A110
	ldr r0, [r0, #0x378]
	sub r1, r6, #1
	cmp r0, r1
	bne _0203A0C0
	bl FUN_ov16_020f081c
	ldr r7, _0203A2F8 ; =0x0209BA20
	mov r1, r0
	mov r0, r7
	bl FUN_0207249c
	ldrb r6, [r0, #0x43]
	bl FUN_ov16_020f081c
_0203A0A8:
	mov r1, r0
	mov r0, r7
	bl FUN_020724e8
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	b _0203A110
_0203A0C0:
	sub r1, r6, #2
	cmp r0, r1
	bne _0203A0EC
	bl FUN_ov16_020f083c
	ldr r7, _0203A2F8 ; =0x0209BA20
	mov r1, r0
	mov r0, r7
	bl FUN_0207249c
	ldrb r6, [r0, #0x43]
	bl FUN_ov16_020f083c
	b _0203A0A8
_0203A0EC:
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _0203A110
	bl FUN_0206cc84
	mov r6, r0
	mov r0, r8
	bl FUN_0206cc94
	mov r7, r0
_0203A110:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x364]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A124: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 1
	b _0203A13C ; case 2
	b _0203A158 ; case 3
	b _0203A20C ; case 4
	b _0203A248 ; case 5
_0203A13C:
	ldr r2, [r0, #0x37c]
	add r1, r1, #1
	sub r3, r2, r6
	mov r2, #8
	str r3, [r0, #0x37c]
	str r2, [r0, #0x380]
	str r1, [r0, #0x364]
_0203A158:
	add r0, r5, #0x1000
	ldr r2, [r0, #0x380]
	ldr r1, [r0, #0x3e0]
	mov r8, #0x64
	subs r1, r2, r1
	str r1, [r0, #0x380]
	strmi r4, [r0, #0x380]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x37c]
	ldr r0, [r0, #0x380]
	smulbb r2, r6, r8
	mul r0, r1, r0
	mul r1, r0, r8
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, r7
	add r0, r2, r0, asr #3
	bl _s32_div_f
	mov r9, r0
	mov r3, r9, lsl #0x10
	mov r7, #1
	ldr r6, _0203A2FC ; =0x02099F38
	str r8, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	cmp r9, #0
	bne _0203A1EC
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_02113f7c
_0203A1EC:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x380]
	cmp r1, #0
	ldreq r1, [r0, #0x364]
	streq r4, [r0, #0x380]
	addeq r1, r1, #1
	streq r1, [r0, #0x364]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A20C:
	ldr r2, [r0, #0x380]
	ldr r1, [r0, #0x3e0]
	subs r1, r2, r1
	str r1, [r0, #0x380]
	strmi r4, [r0, #0x380]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x380]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r0, #0x364]
	mov r2, #0x20
	add r1, r1, #1
	str r2, [r0, #0x380]
	str r1, [r0, #0x364]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A248:
	ldr r2, [r0, #0x380]
	ldr r1, [r0, #0x3e0]
	mov r8, #0x64
	subs r1, r2, r1
	str r1, [r0, #0x380]
	strmi r4, [r0, #0x380]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x37c]
	ldr r0, [r0, #0x380]
	smulbb r2, r6, r8
	mul r0, r1, r0
	mul r1, r0, r8
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r1, r7
	add r0, r2, r0, asr #5
	bl _s32_div_f
	mov r9, r0
	mov r3, r9, lsl #0x10
	mov r7, #2
	ldr r6, _0203A2FC ; =0x02099F38
	str r8, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113c60
	cmp r9, #0
	bne _0203A2D8
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_02113f7c
_0203A2D8:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x380]
	cmp r1, #0
	ldreq r1, [r0, #0x364]
	streq r4, [r0, #0x380]
	addeq r1, r1, #1
	streq r1, [r0, #0x364]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A2F8: .word unk_0209BA20
_0203A2FC: .word unk_02099F38
	arm_func_end FUN_0203a058

	arm_func_start FUN_0203a300
FUN_0203a300: ; 0x0203A300
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _0203A460 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r1]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r4, _0203A464 ; =gL5Config
	ldr r1, _0203A468 ; =0x0208FEB4
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	mov r3, r0, lsl #1
	add r2, r7, #0x1000
	ldr r1, _0203A46C ; =0x0208FECC
	mov r0, r4
	str r3, [r2, #0x3b8]
	bl _ZN8L5Config8getParamEPc
	mov r2, r0, lsl #1
	add r0, r7, #0x1000
	ldr r1, _0203A470 ; =0x0209A200
	str r2, [r0, #0x3bc]
	ldr r4, _0203A474 ; =0x02099F38
	ldr r2, [r1]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r3, _0203A478 ; =0x0208FEE4
	str r6, [sp, #8]
	mov r1, #5
	bl FUN_02058684
	mov r1, r0
	add r0, r7, #0x1000
	str r1, [r0, #0x3ac]
	ldr r0, [r4]
	mov r5, #1
	mov r2, r5
	mov r3, r6
	bl FUN_02059038
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	add r0, r7, #0x1000
	str r1, [r0, #0x3b0]
	ldr r2, [r0, #0x3ac]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	str r6, [sp]
	ldr r0, [r4]
	add r1, r7, #0x1000
	ldr r1, [r1, #0x3b0]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	str r6, [sp]
	mov r3, r6
	ldr r0, [r4]
	add r1, r7, #0x1000
	ldr r1, [r1, #0x3b0]
	mov r2, r5
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	add r1, r7, #0x1000
	ldr r1, [r1, #0x3b0]
	mov r6, #2
	mov r2, r6
	bl FUN_ov16_02114370
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3b0]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0211329c
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3b0]
	mov r2, #0x32
	bl FUN_ov16_02112b98
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0203A460: .word unk_02099EF0
_0203A464: .word gL5Config
_0203A468: .word unk_0208FEB4
_0203A46C: .word unk_0208FECC
_0203A470: .word unk_0209A200
_0203A474: .word unk_02099F38
_0203A478: .word unk_0208FEE4
	arm_func_end FUN_0203a300

	arm_func_start FUN_0203a47c
FUN_0203a47c: ; 0x0203A47C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0203A514 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0203A518 ; =0x02099F38
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ac]
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ac]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ac]
	ldr r0, [r5]
	bl FUN_02058ee0
	mov r6, #0
	b _0203A4F4
_0203A4DC:
	add r0, r4, r6, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3b0]
	bl FUN_ov16_021128c4
	add r6, r6, #1
_0203A4F4:
	cmp r6, #1
	blt _0203A4DC
	add r0, r4, #0x3a8
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0203A514: .word unk_02099EF0
_0203A518: .word unk_02099F38
	arm_func_end FUN_0203a47c

	arm_func_start FUN_0203a51c
FUN_0203a51c: ; 0x0203A51C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0203A5DC ; =0x02099EF0
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #0x1000
	ldr r3, [r1, #0x3b4]
	ldr r2, [r1, #0x3e0]
	ldr r0, [r1, #0x3a8]
	add r2, r3, r2
	str r2, [r1, #0x3b4]
	cmp r0, #0
	beq _0203A56C
	cmp r0, #1
	beq _0203A5A8
	ldmfd sp!, {r3, r4, r5, pc}
_0203A56C:
	ldr r0, _0203A5E0 ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x3b0]
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_021142fc
	add r0, r5, #0x1000
	ldr r2, [r0, #0x3b4]
	ldr r1, [r0, #0x3b8]
	cmp r2, r1
	movgt r1, #0
	strgt r1, [r0, #0x3b4]
	strgt r4, [r0, #0x3a8]
	ldmfd sp!, {r3, r4, r5, pc}
_0203A5A8:
	ldr r0, _0203A5E0 ; =0x02099F38
	ldr r1, [r1, #0x3b0]
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02114370
	add r0, r5, #0x1000
	ldr r2, [r0, #0x3b4]
	ldr r1, [r0, #0x3bc]
	cmp r2, r1
	movgt r1, #0
	strgt r1, [r0, #0x3b4]
	strgt r1, [r0, #0x3a8]
	ldmfd sp!, {r3, r4, r5, pc}
_0203A5DC: .word unk_02099EF0
_0203A5E0: .word unk_02099F38
	arm_func_end FUN_0203a51c

	arm_func_start FUN_0203a5e4
FUN_0203a5e4: ; 0x0203A5E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r5, r0
	mov r8, #0
	add r0, r5, #0x1000
	sub r6, r8, #1
	ldr r4, _0203AA2C ; =0x0208C35C
	str r8, [r0, #0x398]
	str r6, [r0, #0x388]
	ldr r11, _0203AA30 ; =0x0209BA20
	ldrb r6, [r4]
	ldrb r12, [r4, #1]
	ldrb r7, [r4, #2]
	strb r6, [sp, #0x14]
	mov r10, r3
	mov r4, r1
	mov r0, r11
	mov r1, r10
	mov r6, r2
	strb r12, [sp, #0x15]
	strb r7, [sp, #0x16]
	bl FUN_0204a2c4
	movs r7, r0
	bne _0203A660
	add r0, r5, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r5, #0x1000
	add sp, sp, #0x58
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203A660:
	mov r0, r6
	mov r1, r8
	bl FUN_ov16_020efa9c
	movs r1, r0
	bne _0203A690
	add r0, r5, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r5, #0x1000
	add sp, sp, #0x58
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203A690:
	ldr r6, _0203AA34 ; =0x02099EF0
	ldr r0, [r6]
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #0x14]
	add r3, r5, #0x1000
	ands r2, r0, #0xff
	addeq sp, sp, #0x58
	strb r0, [r3, #0x395]
	streqb r8, [r3, #0x394]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r12, _0203AA38 ; =0x51EB851F
	mov r0, r2, lsr #0x1f
	smull r2, r8, r12, r2
	add r8, r0, r8, asr #5
	mov r0, r11
	mov r2, r10
	strb r8, [r3, #0x395]
	bl FUN_0207224c
	add r1, r5, #0x1000
	strb r0, [r1, #0x394]
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _0203A734
	ldr r0, _0203AA3C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0203A734
	ldr r0, [r6]
	bl FUN_ov126_02130a30
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r2, [r0]
	mov r0, r11
	mov r1, r7
	bl FUN_020721bc
	add r1, r5, #0x1000
	strb r0, [r1, #0x394]
_0203A734:
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x394]
	cmp r1, #1
	bhi _0203A768
	ldrb r0, [r0, #0x395]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	addeq r0, r5, #0x1000
	moveq r1, #0
	streqb r1, [r0, #0x394]
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203A768:
	ldr r6, _0203AA40 ; =0x02099F38
	mov r8, #1
	ldr r0, [r6]
	mov r1, r8
	mov r2, r8
	bl FUN_ov16_02112724
	add r1, r5, #0x1000
	ldrb r7, [r1, #0x395]
	add r3, sp, #0x14
	ldrb r2, [r1, #0x394]
	ldrsb r3, [r3, r7]
	str r0, [r1, #0x390]
	add r7, sp, #0x17
	add r0, r3, r2
	sub r0, r0, #1
	and r2, r0, #0xff
	ldr r1, _0203AA44 ; =0x0208FEF4
	mov r0, r7
	add r2, r2, #0x32
	bl STD_TSPrintf
	ldr r1, _0203AA48 ; =0x0209A200
	mov r3, r7
	ldr r2, [r1, #0x1c]
	ldr r0, [r6]
	mov r7, #0
	str r8, [sp]
	str r7, [sp, #4]
	mov r1, #5
	str r7, [sp, #8]
	bl FUN_02058684
	add r1, r5, #0x1000
	str r0, [r1, #0x38c]
	ldr r1, [r1, #0x390]
	ldr r0, [r6]
	mov r2, r8
	mov r3, #0xa
	bl FUN_ov16_02113f7c
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	mov r3, #0xc8
	bl FUN_ov16_021139bc
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	mov r3, #0x1f
	bl FUN_ov16_02113a80
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	rsb r3, r8, #0x8000
	bl FUN_ov16_02113b00
	str r7, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02114150
	add r1, sp, #0xc
	add r0, r5, #0x1000
	str r1, [sp]
	ldr r1, [r0, #0x3e4]
	ldr r0, [r6]
	add r2, r4, #1
	add r3, sp, #0x10
	bl FUN_ov16_02114480
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	bl FUN_ov16_021145ac
	add r1, r5, #0x1000
	mov r7, r0
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	bl FUN_ov16_02114628
	ldr r1, [sp, #0x10]
	mov r6, r0
	cmp r1, #0
	ble _0203A8DC
	mov r0, #0x960
	bl _s32_div_f
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	bl _ffixu
	and r9, r0, #0xff
_0203A8DC:
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x395]
	ldr r2, _0203AA38 ; =0x51EB851F
	cmp r1, #1
	ldreqb r0, [r0, #0x394]
	cmpeq r0, #3
	bne _0203A92C
	subs r1, r7, r9
	movmi r1, #0
	ldr r0, [sp, #0x10]
	and r9, r1, #0xff
	mul r1, r0, r9
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mvn r0, #0x2f
	sub r1, r0, r3
	add r0, r5, #0x1000
	str r1, [r0, #0x3a0]
	b _0203A95C
_0203A92C:
	add r0, r7, r9
	cmp r0, #0x64
	movgt r0, #0x64
	and r9, r0, #0xff
	ldr r1, [sp, #0x10]
	rsb r0, r9, #0x64
	mul r3, r1, r0
	mov r0, r3, lsr #0x1f
	smull r1, r3, r2, r3
	add r3, r0, r3, asr #5
	add r0, r5, #0x1000
	str r3, [r0, #0x3a0]
_0203A95C:
	ldr r8, [sp, #0xc]
	add r3, r5, #0x1000
	mul r1, r6, r8
	ldr r2, _0203AA38 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r7, r2, r1
	ldr r1, [r3, #0x3a0]
	sub r2, r8, #0x2c
	add r7, r0, r7, asr #5
	sub r0, r2, r7
	str r0, [r3, #0x3a4]
	strb r9, [r3, #0x39c]
	strb r6, [r3, #0x39d]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _0203A9B0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0203A9BC
_0203A9B0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0203A9BC:
	bl _ffix
	add r1, r5, #0x1000
	ldr r2, [r1, #0x3a4]
	str r0, [r1, #0x3a0]
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _0203A9EC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0203A9F8
_0203A9EC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0203A9F8:
	bl _ffix
	add r2, r5, #0x1000
	add r1, r5, #0x1300
	ldrsb r3, [r1, #0x84]
	ldr r1, [r2, #0x398]
	str r0, [r2, #0x3a4]
	add r3, r3, #1
	orr r0, r1, #1
	strb r3, [r2, #0x384]
	str r0, [r2, #0x398]
	str r4, [r2, #0x388]
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203AA2C: .word unk_0208C35C
_0203AA30: .word unk_0209BA20
_0203AA34: .word unk_02099EF0
_0203AA38: .word 0x51EB851F
_0203AA3C: .word unk_020A0640
_0203AA40: .word unk_02099F38
_0203AA44: .word unk_0208FEF4
_0203AA48: .word unk_0209A200
	arm_func_end FUN_0203a5e4

	arm_func_start FUN_0203aa4c
FUN_0203aa4c: ; 0x0203AA4C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	cmp r1, #0
	add r1, r5, #0x1000
	ldr r0, [r1, #0x398]
	ldrneb r4, [r1, #0x39c]
	orrne r2, r0, #0x40
	ldrneb r0, [r1, #0x39d]
	strne r2, [r1, #0x398]
	bne _0203AAB4
	ldr r6, _0203AAF0 ; =0x02099F38
	ldr r2, [r1, #0x388]
	bic r0, r0, #0x40
	str r0, [r1, #0x398]
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r2, #1
	bl FUN_ov16_021145ac
	add r1, r5, #0x1000
	ldr r2, [r1, #0x388]
	mov r4, r0
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r2, #1
	bl FUN_ov16_02114628
_0203AAB4:
	add r1, r5, #0x1000
	ldr r2, [r1, #0x388]
	cmp r2, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, pc}
	str r0, [sp]
	ldr r0, _0203AAF0 ; =0x02099F38
	ldr r2, [r1, #0x388]
	ldr r0, [r0]
	ldr r1, [r1, #0x3e4]
	mov r3, r4
	add r2, r2, #1
	bl FUN_ov16_02114150
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0203AAF0: .word unk_02099F38
	arm_func_end FUN_0203aa4c

	arm_func_start FUN_0203aaf4
FUN_0203aaf4: ; 0x0203AAF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _0203AB7C ; =0x02099F38
	ldr r1, [r0, #0x390]
	ldr r0, [r5]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r5]
	bl FUN_02058ee0
	ldr r0, [r5]
	add r1, r4, #0x1000
	ldr r1, [r1, #0x390]
	bl FUN_ov16_021128c4
	add r0, r4, #0x384
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0203AB7C: .word unk_02099F38
	arm_func_end FUN_0203aaf4

	arm_func_start FUN_0203ab80
FUN_0203ab80: ; 0x0203AB80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r1, r6, #0x1000
	ldrb r0, [r1, #0x394]
	cmp r0, #0
	ldrne r3, [r1, #0x38c]
	cmpne r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1300
	ldrsb r0, [r0, #0x84]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203ABB4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0203ABC4 ; case 1
	b _0203AC24 ; case 2
	b _0203ACB8 ; case 3
_0203ABC4:
	ldr r4, _0203AD5C ; =0x02099F38
	mov r1, r3
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1000
	mov r2, #0
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	add r0, r6, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r6, #0x1000
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203AC24:
	ldr r4, _0203AD5C ; =0x02099F38
	mov r7, #1
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r5, #0
	str r5, [sp]
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	str r5, [sp]
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_02114150
	add r0, r6, #0x1000
	ldr r2, [r0, #0x398]
	ldr r1, [r0, #0x38c]
	orr r2, r2, #2
	str r2, [r0, #0x398]
	ldr r0, [r4]
	bl FUN_02059328
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r6, #0x1000
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203ACB8:
	ldr r0, [r1, #0x398]
	mov r5, #1
	and r0, r0, #0x40
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldr r4, _0203AD5C ; =0x02099F38
	str r0, [sp]
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r2, r6, #0x1000
	ldr r1, [r2, #0x388]
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x30
	mla r0, r1, r0, r6
	add r0, r0, #0x1000
	ldr r3, [r2, #0x3a4]
	ldr r1, [r0, #0x404]
	ldr r12, [r2, #0x3a0]
	add r3, r3, r1
	mov r1, r3, asr #0xb
	ldr r6, [r0, #0x400]
	add r0, r3, r1, lsr #20
	add r1, r12, r6
	mov r0, r0, lsl #4
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r3, r0, lsl #4
	ldr r0, [r4]
	ldr r1, [r2, #0x390]
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203AD5C: .word unk_02099F38
	arm_func_end FUN_0203ab80

	arm_func_start FUN_0203ad60
FUN_0203ad60: ; 0x0203AD60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0203ADD8 ; =0x02099F38
	ldr r1, [r0, #0x390]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x384
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0203ADD8: .word unk_02099F38
	arm_func_end FUN_0203ad60

	arm_func_start FUN_0203addc
FUN_0203addc: ; 0x0203ADDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r4, _0203B850 ; =0x02099F14
	mov r10, r0
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov1_020e500c
	str r0, [sp, #0x10]
	ldr r0, [r4]
	mov r1, #5
	bl FUN_ov1_020e500c
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0203AE30
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02147e24
	cmp r0, #0
	beq _0203AE74
_0203AE30:
	ldr r0, _0203B858 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmn r0, #1
	bgt _0203AE74
	add r0, r10, #0x1000
	ldrb r0, [r0, #0x3c0]
	tst r0, #1
	beq _0203AE5C
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0212dba0
_0203AE5C:
	mov r0, r10
	bl FUN_0203c5d4
	mov r1, r0
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0212e7f0
_0203AE74:
	add r1, r10, #0x1000
	ldrb r0, [r1, #0x3c0]
	tst r0, #4
	beq _0203AF3C
	add r0, r10, #0x1300
	ldrh r2, [r0, #0xc2]
	ldr r0, [r1, #0x3e0]
	add r1, r10, #0x1000
	sub r6, r2, r0
	ldr r5, [r1, #0x3c4]
	ldr r3, [r1, #0x3c8]
	ldr r2, [r1, #0x3e0]
	cmp r6, #0
	mla r2, r3, r2, r5
	movle r6, #0
	add r0, r10, #0x1300
	strh r6, [r0, #0xc2]
	cmp r2, #0x1000
	ldrb r0, [r1, #0x3c0]
	str r2, [r1, #0x3c4]
	movlt r6, #0
	andlt r0, r0, #0xfd
	strlt r6, [r1, #0x3c4]
	orrge r0, r0, #2
	strb r0, [r1, #0x3c0]
	movge r6, #1
	mov r1, #1
	cmp r6, #0
	ldr r0, [r4]
	moveq r1, #0
	bl FUN_ov1_020e1a50
	add r0, r10, #0x1300
	ldrh r0, [r0, #0xc2]
	cmp r0, #0
	add r0, r10, #0x1000
	bne _0203AF28
	ldrb r2, [r0, #0x3c0]
	ldr r1, [r0, #0x3c8]
	and r2, r2, #0xfb
	cmp r1, #0
	movgt r1, #0x1f
	strb r2, [r0, #0x3c0]
	movle r1, #0
	ldr r0, [r4]
	b _0203AF34
_0203AF28:
	ldr r1, [r0, #0x3c4]
	ldr r0, [r4]
	mov r1, r1, asr #0xc
_0203AF34:
	and r1, r1, #0xff
	bl FUN_ov1_020e19c0
_0203AF3C:
	mov r11, #0
	b _0203B840
_0203AF44:
	mov r4, #0x58
	mla r0, r11, r4, r10
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #1
	beq _0203B83C
	ldr r0, _0203B854 ; =0x02099EF0
	mov r1, r11
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	mov r5, r0
	ldr r0, _0203B854 ; =0x02099EF0
	mov r1, r11
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov132_02143088
	cmp r5, #0
	cmpne r0, #0
	beq _0203B83C
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	beq _0203B83C
	mul r0, r11, r4
	add r1, r10, #0x3ac0
	adds r7, r1, r0
	beq _0203B83C
	ldrh r0, [r7, #0x16]
	tst r0, #1
	beq _0203B83C
	ldrh r1, [r7, #0x34]
	ldr r0, _0203B85C ; =0x02099EC0
	ldr r2, _0203B860 ; =0x51EB851F
	mov r3, r1, lsl #0xc
	smull r1, r9, r2, r3
	mov r2, r3, lsr #0x1f
	add r9, r2, r9, asr #5
	ldr r0, [r0]
	mov r2, #0
	add r1, r11, #1
	str r2, [sp, #0xc]
	bl FUN_020571e0
	ldrh r1, [r7, #0x16]
	mov r4, r0
	tst r1, #4
	beq _0203B158
	add r0, r10, #0x1000
	ldrh r1, [r7, #0xa]
	ldr r0, [r0, #0x3e0]
	sub r0, r1, r0
	cmp r0, #0
	ldrle r0, [sp, #0xc]
	strh r0, [r7, #0xa]
	add r0, r10, #0x1000
	ldr r2, [r7, #0xc]
	ldr r1, [r7, #0x10]
	ldr r0, [r0, #0x3e0]
	mla r0, r1, r0, r2
	cmp r0, #0x1000
	str r0, [r7, #0xc]
	ldrgeh r0, [r7, #0x16]
	movge r6, #1
	orrge r0, r0, #2
	strgeh r0, [r7, #0x16]
	bge _0203B060
	mov r6, #0
	mov r0, r10
	mov r1, r11
	mov r2, #2
	str r6, [r7, #0xc]
	bl FUN_0203c86c
_0203B060:
	ldr r0, _0203B864 ; =0x02099F58
	mov r8, #2
	ldr r0, [r0]
	mov r1, r4
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02116cb4
	str r6, [sp]
	ldr r6, _0203B868 ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r6]
	add r2, r11, #1
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	bne _0203B100
	ldrh r1, [r7, #0x16]
	ldr r0, _0203B86C ; =0x0000FFFB
	mov r2, #0x1f
	and r0, r1, r0
	strh r0, [r7, #0x16]
	ldr r0, [r7, #0x10]
	mov r1, r4
	cmp r0, #0
	ldr r0, _0203B864 ; =0x02099F58
	movle r2, #0
	ldr r0, [r0]
	and r2, r2, #0xff
	bl FUN_ov16_02116d94
	ldr r0, [r7, #0x10]
	mov r3, #0x10
	cmp r0, #0
	ldr r0, _0203B868 ; =0x02099F38
	movle r3, #0
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	add r2, r11, #1
	and r3, r3, #0xff
	b _0203B154
_0203B100:
	ldr r0, _0203B864 ; =0x02099F58
	ldr r2, [r7, #0xc]
	ldr r0, [r0]
	mov r2, r2, asr #0xc
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_ov16_02116d94
	add r2, r8, #0x840
	ldr r8, [r7, #0xc]
	ldr r0, [r6]
	umull r6, r4, r8, r2
	mov r3, r8, asr #0x1f
	mla r4, r3, r2, r4
	adds r3, r6, #0x800
	adc r2, r4, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, r3, asr #0xc
	and r3, r2, #0xff
	ldr r1, [sp, #0x10]
	add r2, r11, #1
_0203B154:
	bl FUN_ov16_02113a80
_0203B158:
	ldrh r0, [r7, #0x16]
	ldr r8, _0203B854 ; =0x02099EF0
	tst r0, #0x80
	beq _0203B204
	ldr r0, _0203B858 ; =0x0209A2C0
	ldrsh r1, [r5, #0x94]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	bne _0203B204
	ldrsb r0, [r7, #0x4c]
	cmp r0, #0
	beq _0203B198
	cmp r0, #1
	beq _0203B1BC
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B198:
	ldrsb r1, [r7, #0x50]
	ldr r0, [r8]
	bl FUN_ov126_0213922c
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r0, #0x84]
	ldmia r0, {r4, r6}
	b _0203B1C4
_0203B1BC:
	ldr r4, [r7, #0x50]
	ldr r6, [r7, #0x54]
_0203B1C4:
	ldrsb r0, [r7, #0x4d]
	mov r1, r11, lsl #0x18
	mov r2, r4
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r1, asr #0x18
	mov r3, r6
	bl FUN_ov126_0212ca1c
	cmp r0, #0
	beq _0203B204
	mov r0, r10
	mov r1, r11
	mov r2, #0x80
	bl FUN_0203c86c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B204:
	ldrh r4, [r7, #0x16]
	tst r4, #8
	beq _0203B2AC
	ldr r1, [r5, #0x84]
	ldr r0, _0203B854 ; =0x02099EF0
	ldrb r2, [r1, #0x1d]
	mov r1, r5
	mov r3, r9
	str r4, [sp]
	ldr r0, [r0]
	bl FUN_ov132_02147ec8
	ldr r1, [r5, #0x88]
	ldr r0, [r1]
	cmp r0, #0x80000000
	ldreq r0, [r1, #4]
	cmpeq r0, #0x80000000
	beq _0203B26C
	ldr r3, [r5, #0x84]
	ldr r2, [r5, #0x88]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r0, r1
	ldreq r1, [r3, #4]
	ldreq r0, [r2, #4]
	cmpeq r0, r1
	bne _0203B288
_0203B26C:
	mov r0, r10
	mov r1, r11
	mov r2, #8
	bl FUN_0203c86c
	ldr r1, [r5, #0x84]
	mov r0, #0
	strb r0, [r1, #0x1d]
_0203B288:
	ldr r0, _0203B858 ; =0x0209A2C0
	ldrsh r2, [r5, #0x94]
	ldr r1, [r0, #0x48]
	ldr r0, _0203B854 ; =0x02099EF0
	cmp r2, r1
	bne _0203B2AC
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov126_0212fab8
_0203B2AC:
	ldrh r0, [r7, #0x16]
	tst r0, #0x30
	beq _0203B528
	tst r0, #0x10
	ldrh r8, [r7, #0x40]
	ldr r0, _0203B854 ; =0x02099EF0
	beq _0203B318
	ldrsb r1, [r7]
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203B328
	ldr r2, [r0, #0x84]
	ldr r1, [r2]
	str r1, [sp, #0x14]
	ldr r1, [r2, #4]
	str r1, [sp, #0x18]
	ldrh r1, [r7, #0x16]
	tst r1, #0x40
	ldrne r0, [r0, #0x84]
	ldrneh r0, [r0, #0x18]
	addne r0, r8, r0
	movne r0, r0, lsl #0x10
	movne r8, r0, lsr #0x10
	mov r0, #1
	str r0, [sp, #0xc]
	b _0203B328
_0203B318:
	ldr r0, [r7]
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	str r0, [sp, #0x18]
_0203B328:
	ldrh r0, [r7, #0x16]
	ldr r4, [sp, #0x14]
	ldr r6, [sp, #0x18]
	tst r0, #0x600
	beq _0203B3B4
	ldr lr, _0203B870 ; =0x00001333
	tst r0, #0x200
	umull r12, r8, r9, lr
	mov r2, r9, asr #0x1f
	ldr r1, [r7, #0x3c]
	movne r3, #1
	mla r8, r2, lr, r8
	moveq r3, #0
	adds r2, r12, #0x800
	add r0, sp, #0x1c
	str r1, [sp]
	stmib sp, {r0, r3}
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r1, [r5, #0x84]
	ldr r0, [r0]
	adc r8, r8, #0
	mov r2, r2, lsr #0xc
	add r3, sp, #0x14
	orr r2, r2, r8, lsl #20
	bl FUN_ov132_02148e5c
	cmp r0, #0
	ldrne r4, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	ldrne r6, [sp, #0x20]
	ldr r0, [sp, #0x18]
	sub r1, r1, r4
	sub r0, r0, r6
	bl FX_Atan2Idx
	strh r0, [r7, #0x40]
	b _0203B408
_0203B3B4:
	mov r0, r8, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r2, r1, lsl #1
	mov r1, r0, lsl #1
	ldr r3, _0203B874 ; =FX_SinCosTable_
	ldr r0, [r7, #0x3c]
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	smull r8, r3, r0, r2
	smull r2, r1, r0, r1
	adds r8, r8, #0x800
	adc r0, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r0, lsl #20
	add r4, r4, r3
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r6, r6, r1
_0203B408:
	ldr r1, [r5, #0x84]
	ldr r0, [r1]
	cmp r4, r0
	bne _0203B424
	ldr r0, [r1, #4]
	cmp r6, r0
	beq _0203B490
_0203B424:
	ldr r1, [r5, #0x88]
	ldr r0, [r1]
	cmp r0, #0x80000000
	ldrne r0, [r1, #4]
	cmpne r0, #0x80000000
	beq _0203B490
	str r4, [r1]
	ldr r0, [r5, #0x88]
	ldr r4, _0203B854 ; =0x02099EF0
	str r6, [r0, #4]
	ldr r1, [r5, #0x84]
	ldrh r0, [r7, #0x16]
	ldrb r2, [r1, #0x1d]
	mov r1, r5
	mov r3, r9
	str r0, [sp]
	ldr r0, [r4]
	bl FUN_ov132_02147ec8
	ldr r0, _0203B858 ; =0x0209A2C0
	ldrsh r1, [r5, #0x94]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	bne _0203B4DC
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_0212fab8
	b _0203B4DC
_0203B490:
	ldr r0, [sp, #0xc]
	ldr r4, _0203B850 ; =0x02099F14
	cmp r0, #0
	mov r6, #0
	beq _0203B4DC
	ldrsb r1, [r7]
	mov r0, #0x58
	mla r0, r1, r0, r10
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #8
	bne _0203B4DC
	ldr r0, [r5, #0x84]
	mov r1, r5
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	str r6, [sp]
	ldr r0, [r4]
	bl FUN_ov1_020e3c14
_0203B4DC:
	ldrsh r2, [r7, #0x48]
	mov r1, #0
	cmp r2, #0
	beq _0203B528
	ble _0203B510
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r7, #0x48]
	ldrsh r0, [r7, #0x48]
	cmp r0, #0
	strleh r1, [r7, #0x48]
_0203B510:
	add r0, r10, #0x1000
	ldr r2, [r7, #0x3c]
	ldr r1, [r7, #0x44]
	ldr r0, [r0, #0x3e0]
	mla r0, r1, r0, r2
	str r0, [r7, #0x3c]
_0203B528:
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_0203c75c
	ldrsh r2, [r7, #0x38]
	cmp r2, #0
	beq _0203B5B0
	cmp r2, #0
	mov r1, #1
	ble _0203B574
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r7, #0x38]
	ldrsh r0, [r7, #0x38]
	cmp r0, #0
	movle r0, #0
	strleh r0, [r7, #0x38]
_0203B574:
	add r0, r10, #0x1000
	ldrsh r2, [r7, #0x36]
	ldr r0, [r0, #0x3e0]
	ldrh r3, [r7, #0x34]
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	add r0, r3, r0, lsr #16
	strh r0, [r7, #0x34]
	ldrh r2, [r7, #0x34]
	cmp r2, #0
	streqh r1, [r7, #0x34]
	beq _0203B5B0
	ldr r0, _0203B878 ; =0x00002710
	cmp r2, r0
	strhih r0, [r7, #0x34]
_0203B5B0:
	ldrh r0, [r7, #0x16]
	tst r0, #0x4000
	beq _0203B68C
	mov r8, #0
	b _0203B684
_0203B5C4:
	ldr r0, _0203B854 ; =0x02099EF0
	mov r1, r8
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r6, r0
	cmpne r6, r5
	beq _0203B680
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	beq _0203B680
	ldr r0, [r6, #0x84]
	add r1, sp, #0x14
	ldr r2, [r0, #4]
	ldr r0, [r0]
	mov r3, r1
	str r2, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [sp]
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r2, [r5, #0x84]
	ldr r0, [r0]
	bl FUN_ov132_021488a0
	ldr r0, [sp, #0x14]
	cmp r0, #0x80000000
	ldreq r0, [sp, #0x18]
	cmpeq r0, #0x80000000
	beq _0203B680
	mov r0, #0x58
	mla r0, r8, r0, r10
	ldr r4, [sp, #0x18]
	ldr r3, [sp, #0x14]
	ldr r2, [r6, #0x88]
	add r0, r0, #0x3a00
	stmia r2, {r3, r4}
	ldr r2, [r6, #0x84]
	ldrh r0, [r0, #0xd6]
	ldrb r2, [r2, #0x1d]
	mov r1, r6
	mov r3, r9
	str r0, [sp]
	ldr r0, _0203B854 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02147ec8
_0203B680:
	add r8, r8, #1
_0203B684:
	cmp r8, #0x16
	blt _0203B5C4
_0203B68C:
	ldrh r0, [r7, #0x16]
	ldr r6, _0203B850 ; =0x02099F14
	mov r4, #0
	tst r0, #0x1000
	beq _0203B71C
	mov r8, r4
	add r0, r10, #0x1000
	b _0203B6D8
_0203B6AC:
	ldr r2, [r7, #0x20]
	ldr r1, [r7, #0x1c]
	add r3, r2, r1
	str r3, [r7, #0x20]
	ldr r2, [r7, #0x1c]
	ldr r1, [r7, #0x24]
	cmp r3, #0
	sub r1, r2, r1
	str r1, [r7, #0x1c]
	ble _0203B6E4
	add r8, r8, #1
_0203B6D8:
	ldr r1, [r0, #0x3e0]
	cmp r8, r1
	blo _0203B6AC
_0203B6E4:
	ldr r1, [r7, #0x20]
	mov r0, #0
	cmp r1, #0
	bgt _0203B710
	str r0, [r7, #0x20]
	str r0, [r7, #0x1c]
	str r0, [r7, #0x24]
	ldrh r1, [r7, #0x16]
	ldr r0, _0203B87C ; =0x0000EFFF
	and r0, r1, r0
	strh r0, [r7, #0x16]
_0203B710:
	ldr r1, [r7, #0x20]
	ldr r0, [r5, #0x84]
	str r1, [r0, #8]
_0203B71C:
	ldrh r0, [r7, #0x16]
	tst r0, #0x800
	beq _0203B7C0
	ldrsh r1, [r7, #0x30]
	cmp r1, #0
	ble _0203B754
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, asr #16
	strh r0, [r7, #0x30]
	ldrsh r0, [r7, #0x30]
	cmp r0, #0
	strleh r4, [r7, #0x30]
_0203B754:
	ldr r1, [r5, #0x84]
	add r0, r10, #0x1000
	ldrh r8, [r1, #0x18]
	ldr r2, [r0, #0x3e0]
	ldr r3, [r7, #0x2c]
	add r0, r8, #0xff
	add r0, r0, #0xff00
	mla r0, r3, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
	ldr r2, [r5, #0x84]
	mov r1, r5
	strb r0, [r2, #0x1a]
	ldr r0, [r5, #0x84]
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	str r4, [sp]
	ldr r0, [r6]
	bl FUN_ov1_020e3c14
	ldrsh r0, [r7, #0x30]
	cmp r0, #0
	ldreqh r1, [r7, #0x16]
	ldreq r0, _0203B880 ; =0x0000F7FF
	andeq r0, r1, r0
	streqh r0, [r7, #0x16]
_0203B7C0:
	ldrh r0, [r7, #0x16]
	tst r0, #0x2000
	beq _0203B83C
	ldr r2, [r5, #0x84]
	ldrb r0, [r7, #0x28]
	ldrb r1, [r2, #0x1d]
	cmp r0, r1
	beq _0203B7F8
	ldrb r3, [r2, #0x1a]
	mov r1, r5
	str r4, [sp]
	ldrb r2, [r7, #0x28]
	ldr r0, [r6]
	bl FUN_ov1_020e3c14
_0203B7F8:
	ldrsh r1, [r7, #0x2a]
	cmp r1, #0
	ble _0203B824
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, asr #16
	strh r0, [r7, #0x2a]
	ldrsh r0, [r7, #0x2a]
	cmp r0, #0
	strleh r4, [r7, #0x2a]
_0203B824:
	ldrsh r0, [r7, #0x2a]
	cmp r0, #0
	ldreqh r1, [r7, #0x16]
	ldreq r0, _0203B884 ; =0x0000DFFF
	andeq r0, r1, r0
	streqh r0, [r7, #0x16]
_0203B83C:
	add r11, r11, #1
_0203B840:
	cmp r11, #0x16
	blt _0203AF44
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B850: .word unk_02099F14
_0203B854: .word unk_02099EF0
_0203B858: .word unk_0209A2C0
_0203B85C: .word unk_02099EC0
_0203B860: .word 0x51EB851F
_0203B864: .word unk_02099F58
_0203B868: .word unk_02099F38
_0203B86C: .word 0x0000FFFB
_0203B870: .word 0x00001333
_0203B874: .word FX_SinCosTable_
_0203B878: .word 0x00002710
_0203B87C: .word 0x0000EFFF
_0203B880: .word 0x0000F7FF
_0203B884: .word 0x0000DFFF
	arm_func_end FUN_0203addc

	arm_func_start FUN_0203b888
FUN_0203b888: ; 0x0203B888
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0203B9EC ; =0x02099F14
	mov r10, r0
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov1_020e500c
	mov r7, r0
	ldr r0, [r4]
	mov r1, #5
	bl FUN_ov1_020e500c
	mov r6, #0
	mov r11, #1
	ldr r5, _0203B9F0 ; =0x02099F58
	ldr r4, _0203B9F4 ; =0x02099F38
	b _0203B9C0
_0203B8C4:
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #1
	beq _0203B9BC
	ldr r0, _0203B9F8 ; =0x02099EC0
	add r1, r6, #1
	ldr r0, [r0]
	bl FUN_020571e0
	mov r8, r0
	ldr r0, [r5]
	mov r1, r8
	mov r2, #2
	mov r3, r11
	bl FUN_ov16_02116cb4
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r6, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0x1f
	bl FUN_ov16_02116d94
	ldr r0, [r4]
	mov r1, r7
	add r2, r6, #1
	mov r3, #0x10
	bl FUN_ov16_02113a80
	ldr r0, _0203B9FC ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r8, r0
	beq _0203B9BC
	ldr r1, [r8, #0x84]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #8]
	ldr r0, _0203BA00 ; =0x0209BA20
	mov r1, r8
	bl FUN_0204fb20
	movs r9, r0
	beq _0203B9BC
	ldr r2, [r8, #0x88]
	ldrh r0, [r9, #0x30]
	ldrh r1, [r2, #0x1e]
	add r0, r0, r1
	strh r0, [r2, #0x1e]
	ldrb r0, [r9, #0x32]
	cmp r0, #0
	beq _0203B9A8
	mov r0, r8
	mov r1, #0x100
	bl FUN_0206dac4
_0203B9A8:
	mov r0, #0x80000000
	str r0, [r9, #0x28]
	str r0, [r9, #0x2c]
	mov r0, #0
	strb r0, [r9, #0x24]
_0203B9BC:
	add r6, r6, #1
_0203B9C0:
	cmp r6, #0x16
	blt _0203B8C4
	ldr r0, _0203B9EC ; =0x02099F14
	mov r1, #0x1f
	ldr r0, [r0]
	bl FUN_ov1_020e19c0
	add r0, r10, #0x3ac0
	mov r1, #0
	mov r2, #0x790
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B9EC: .word unk_02099F14
_0203B9F0: .word unk_02099F58
_0203B9F4: .word unk_02099F38
_0203B9F8: .word unk_02099EC0
_0203B9FC: .word unk_02099EF0
_0203BA00: .word unk_0209BA20
	arm_func_end FUN_0203b888

	arm_func_start FUN_0203ba04
FUN_0203ba04: ; 0x0203BA04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, r2
	mov r8, #0
	mov r9, r1
	mov r1, r8
	add r0, r10, #0x3ac0
	mov r2, #0x790
	bl MI_CpuFill8
	ldr r0, _0203BBE4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0203BA44
	bl FUN_ov132_0215a3ec
	mov r8, r0
_0203BA44:
	add r0, r10, #0xd6
	mov r6, #0
	add r5, r0, #0x3a00
	mvn r4, #1
	b _0203BB94
_0203BA58:
	ldr r0, _0203BBE4 ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r7, r0
	beq _0203BB90
	bl FUN_0206d688
	cmp r0, #0
	beq _0203BB90
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r2, r0, #0x3a00
	add r1, r0, #0x3000
	mov r0, #3
	strh r0, [r2, #0xd6]
	mov r0, #0x1f000
	str r0, [r1, #0xacc]
	mov r0, #0x64
	strh r0, [r2, #0xf4]
	mov r0, r7
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0203BAD8
	mov r0, #0x58
	mul r0, r6, r0
	add r1, r10, r0
	add r2, r1, #0x3000
	mov r1, #4
	strb r1, [r2, #0xac8]
	ldrh r1, [r5, r0]
	orr r1, r1, #0x100
	strh r1, [r5, r0]
_0203BAD8:
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r1, r0, #0x3000
	mov r0, #0
	strb r0, [r1, #0xac9]
	mov r0, r7
	bl FUN_0206d5f0
	cmp r0, #0
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r1, r4, #1
	movne r1, r4
	add r0, r0, #0x3000
	strb r1, [r0, #0xad4]
	ldr r0, _0203BBE8 ; =0x0209BA20
	mov r1, r7
	bl FUN_0204fb20
	cmp r0, #0
	beq _0203BB90
	cmp r9, #0
	beq _0203BB4C
	ldr r1, [r7, #0x84]
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [r0, #0x28]
	str r2, [r0, #0x2c]
	ldr r1, [r7, #0x84]
	ldrb r1, [r1, #0x1a]
	strb r1, [r0, #0x24]
_0203BB4C:
	cmp r11, #0
	beq _0203BB78
	ldr r1, [r7, #0x88]
	ldrh r1, [r1, #0x1e]
	strh r1, [r0, #0x30]
	ldr r1, [r7, #0x84]
	ldrh r1, [r1, #0x16]
	tst r1, #0x100
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x32]
_0203BB78:
	ldr r2, [r7, #0x88]
	mov r1, #0
	strh r1, [r2, #0x1e]
	mov r0, r7
	mov r1, #0x100
	bl FUN_0206dadc
_0203BB90:
	add r6, r6, #1
_0203BB94:
	cmp r6, #0x16
	blt _0203BA58
	mov r3, #0
	add r1, r10, #0x1300
	add r0, r10, #0x1000
	mov r5, #2
	mov r4, #0x1f000
	ldr r2, _0203BBE4 ; =0x02099EF0
	strh r3, [r1, #0xcc]
	strb r5, [r0, #0x3c0]
	str r4, [r0, #0x3c4]
	strb r3, [r0, #0x3c1]
	ldr r0, [r2]
	bl FUN_ov132_02149b0c
	ldr r0, _0203BBEC ; =0x02099F14
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov1_020e3b14 ; may be ov15
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BBE4: .word unk_02099EF0
_0203BBE8: .word unk_0209BA20
_0203BBEC: .word unk_02099F14
	arm_func_end FUN_0203ba04

	arm_func_start FUN_0203bbf0
FUN_0203bbf0: ; 0x0203BBF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r5, _0203BD44 ; =0x02099EF0
	str r0, [sp]
	ldr r0, [r5]
	mov r10, r1
	cmp r0, #0
	str r3, [sp, #4]
	mov r9, r2
	addeq sp, sp, #8
	moveq r0, #0x16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0
	addeq sp, sp, #8
	moveq r0, #0x16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r7, #0
	add r6, r0, #0x3ac0
	mov r11, #0x58
	mvn r4, #0
_0203BC44:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r4
	ble _0203BD2C
	ldrsh r0, [r10, #0x94]
	cmp r1, r0
	bne _0203BD2C
	mul r0, r7, r11
	adds r8, r6, r0
	beq _0203BD2C
	ldrh r0, [r8, #0x16]
	cmn r9, #1
	orr r0, r0, #4
	strh r0, [r8, #0x16]
	bne _0203BC98
	ldr r0, [r8, #0xc]
	cmp r0, #0
	ble _0203BCAC
_0203BC98:
	cmp r9, #1
	bne _0203BCB4
	ldr r0, [r8, #0xc]
	cmp r0, #0x1f000
	blt _0203BCB4
_0203BCAC:
	mov r0, #0
	str r0, [sp, #4]
_0203BCB4:
	ldr r0, [sp, #4]
	strh r0, [r8, #0xa]
	cmp r0, #0
	bgt _0203BD0C
	mov r4, #0
	strh r4, [r8, #0xa]
	sub r0, r4, #1
	str r9, [r8, #0x10]
	cmp r9, r0
	bne _0203BCF4
	ldr r0, [sp]
	mov r1, r7
	mov r2, #2
	bl FUN_0203c86c
	str r4, [r8, #0xc]
	b _0203BD20
_0203BCF4:
	ldrh r1, [r8, #0x16]
	mov r0, #0x1f000
	orr r1, r1, #2
	strh r1, [r8, #0x16]
	str r0, [r8, #0xc]
	b _0203BD20
_0203BD0C:
	mov r1, r0
	mov r0, #0x1f000
	bl _s32_div_f
	mul r1, r0, r9
	str r1, [r8, #0x10]
_0203BD20:
	add sp, sp, #8
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BD2C:
	add r7, r7, #1
	cmp r7, #0x16
	blt _0203BC44
	mov r0, #0x16
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BD44: .word unk_02099EF0
	arm_func_end FUN_0203bbf0

	arm_func_start FUN_0203bd48
FUN_0203bd48: ; 0x0203BD48
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203BDA0
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203BD6C:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203BD90
	ldrh r3, [r3, #0xd6]
	tst r3, #4
	movne r2, #1
	bne _0203BDC4
_0203BD90:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203BD6C
	b _0203BDC4
_0203BDA0:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #4
	movne r2, #1
_0203BDC4:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203bd48

	arm_func_start FUN_0203bdcc
FUN_0203bdcc: ; 0x0203BDCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r6, _0203BF30 ; =0x02099EF0
	mov r11, r0
	ldr r0, [r6]
	str r2, [sp, #4]
	cmp r0, #0
	str r3, [sp, #8]
	addeq sp, sp, #0x14
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	mov r0, r1
	mov r1, r8
	bl FUN_ov16_020efa9c
	mov r9, r0
	add r7, r11, #0x3ac0
	mov r4, #0x58
	mvn r5, #0
_0203BE18:
	ldr r0, [r6]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r5
	ble _0203BF18
	ldrsh r0, [r9, #0x94]
	cmp r1, r0
	bne _0203BF18
	mul r0, r8, r4
	adds r10, r7, r0
	beq _0203BF18
	mov r0, r9
	bl FUN_0206da98
	ldrh r0, [r10, #0x16]
	ldr r4, [r9, #0x88]
	mov r1, r8
	tst r0, #8
	orreq r0, r0, #8
	streqh r0, [r10, #0x16]
	ldreqb r0, [r10, #8]
	mov r2, #0x10
	addeq r0, r0, #1
	streqb r0, [r10, #8]
	mov r0, r11
	bl FUN_0203c86c
	mov r0, r11
	mov r1, r8
	mov r2, #0x40
	bl FUN_0203c86c
	mov r5, #0
	mov r0, r10
	mov r1, r5
	mov r2, #8
	bl MI_CpuFill8
	mov r1, r5
	mov r5, #0xc
	add r0, r10, #0x3c
	mov r2, r5
	bl MI_CpuFill8
	ldr r1, [sp, #0x38]
	ldr r0, _0203BF30 ; =0x02099EF0
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	ldr r0, [r0]
	add r1, sp, #0xc
	bl FUN_ov132_02148610
	cmp r0, #0
	addeq sp, sp, #0x14
	subeq r0, r5, #0xd
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r1, [r4]
	ldr r1, [sp, #0x10]
	str r1, [r4, #4]
	ldr r1, [sp, #0xc]
	str r1, [r10, #0x3c]
	ldr r1, [sp, #0x10]
	add sp, sp, #0x14
	str r1, [r10, #0x40]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BF18:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203BE18
	mvn r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BF30: .word unk_02099EF0
	arm_func_end FUN_0203bdcc

	arm_func_start FUN_0203bf34
FUN_0203bf34: ; 0x0203BF34
	cmn r1, #1
	ble _0203BF44
	cmp r1, #0x16
	blt _0203BF4C
_0203BF44:
	mov r0, #0
	bx lr
_0203BF4C:
	mov r2, #0x58
	mla r0, r1, r2, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0203bf34

	arm_func_start FUN_0203bf6c
FUN_0203bf6c: ; 0x0203BF6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _0203C224 ; =0x02099EF0
	mov r10, r0
	ldr r0, [r4]
	ldr r11, [sp, #0x34]
	cmp r0, #0
	str r3, [sp, #4]
	mov r4, r2
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, r4
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0x16
	sub r0, r8, #0x17
	cmp r1, r0
	movle r6, r0
	mov r9, r8
	movle r8, r6
	ble _0203BFE8
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r8, #0x17
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r6, [r0, #0x94]
_0203BFE8:
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020efa9c
	str r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r5, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r7, [r0, #0x94]
	mvn r4, #0
	b _0203C050
_0203C018:
	ldr r0, _0203C224 ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r4
	ble _0203C04C
	ldrsh r0, [r0, #0x94]
	cmp r1, r6
	moveq r8, r5
	cmp r0, r7
	moveq r9, r5
_0203C04C:
	add r5, r5, #1
_0203C050:
	cmp r5, #0x16
	blt _0203C018
	cmp r8, #0x16
	cmpne r9, #0x16
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #8]
	bl FUN_0206da98
	mov r1, #0x58
	mul r0, r9, r1
	add r2, r10, #0x3ac0
	adds r4, r2, r0
	addeq sp, sp, #0xc
	sub r0, r1, #0x59
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, r0
	bne _0203C104
	mov r0, r10
	mov r1, r9
	mov r2, #0x10
	bl FUN_0203c86c
	mov r0, r10
	mov r1, r9
	mov r2, #0x20
	bl FUN_0203c86c
	mov r0, r10
	mov r1, r9
	mov r2, #0x40
	bl FUN_0203c86c
	mov r5, #0
	mov r6, #0xc
	add r0, r4, #0x3c
	mov r1, r5
	mov r2, r6
	bl MI_CpuFill8
	mov r0, r4
	mov r1, r5
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x3c
	mov r2, r6
	mov r1, r5
	bl MI_CpuFill8
	b _0203C1F0
_0203C104:
	ldrh r0, [r4, #0x16]
	tst r0, #0x10
	bne _0203C128
	orr r0, r0, #0x10
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #2
	strb r0, [r4, #8]
	b _0203C144
_0203C128:
	ldrsb r2, [r4]
	add r0, r10, #0x2c8
	add r3, r0, #0x3800
	mul r1, r2, r1
	ldrb r0, [r3, r1]
	sub r0, r0, #3
	strb r0, [r3, r1]
_0203C144:
	mov r0, r10
	mov r1, r9
	mov r2, #8
	bl FUN_0203c86c
	mov r0, r10
	mov r1, r9
	mov r2, #0x40
	bl FUN_0203c86c
	ldr r6, [sp, #0x30]
	ldr r0, [sp, #4]
	ldr r2, _0203C228 ; =0xB60B60B7
	mov r7, r6, lsl #0x10
	mov r5, r0, lsl #0xc
	smull r1, r0, r2, r7
	cmp r11, #1
	mov r3, #0x58
	add r0, r0, r6, lsl #16
	mov r1, r7, lsr #0x1f
	add r0, r1, r0, asr #8
	strb r8, [r4]
	strh r0, [r4, #0x40]
	add r0, r10, #0x2c8
	str r5, [r4, #0x3c]
	mul r1, r8, r3
	add r2, r0, #0x3800
	ldrb r0, [r2, r1]
	mov r5, #1
	moveq r11, #0x200
	add r0, r0, #3
	strb r0, [r2, r1]
	beq _0203C1CC
	cmp r11, #2
	moveq r11, #0x400
	movne r11, #0
_0203C1CC:
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_0203cd48
	ldr r0, [sp, #0x38]
	cmp r0, #0
	ldreqh r0, [r4, #0x16]
	orreq r0, r0, #0x40
	streqh r0, [r4, #0x16]
_0203C1F0:
	ldr r0, [sp, #8]
	mov r2, #1
	ldr r0, [r0, #0x84]
	ldr r1, [sp, #8]
	ldrb r3, [r0, #0x1a]
	ldr r0, _0203C22C ; =0x02099F14
	str r2, [sp]
	ldr r0, [r0]
	mov r2, r5
	bl FUN_ov1_020e3c14
	mov r0, r9
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C224: .word unk_02099EF0
_0203C228: .word 0xB60B60B7
_0203C22C: .word unk_02099F14
	arm_func_end FUN_0203bf6c

	arm_func_start FUN_0203c230
FUN_0203c230: ; 0x0203C230
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, #0
	mov r4, r0
	mov r0, r1
	mov r1, r8
	mov r10, r2
	mov r7, r3
	ldr r9, [sp, #0x3c]
	bl FUN_ov16_020efa9c
	movs r6, r0
	ldrne r0, _0203C3EC ; =0x0209A7FC
	cmpne r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x30]
	ldr r5, _0203C3F0 ; =0x02099EF0
	str r0, [sp]
	ldr r0, [r5]
	add r1, sp, #4
	mov r2, r10
	mov r3, r7
	bl FUN_ov132_02148610
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	bl FUN_0206da98
	sub r7, r8, #1
	mvn r10, #0
	b _0203C2D8
_0203C2AC:
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r10
	ble _0203C2D4
	ldrsh r0, [r6, #0x94]
	cmp r1, r0
	moveq r7, r8
_0203C2D4:
	add r8, r8, #1
_0203C2D8:
	cmp r8, #0x16
	blt _0203C2AC
	cmn r7, #1
	addle sp, sp, #0xc
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0x58
	mul r0, r7, r1
	add r2, r4, #0x3ac0
	adds r5, r2, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [r5, #0x16]
	tst r0, #0x10
	bne _0203C328
	orr r0, r0, #0x20
	strh r0, [r5, #0x16]
	ldrb r0, [r5, #8]
	add r0, r0, #2
	strb r0, [r5, #8]
	b _0203C360
_0203C328:
	ldrsb r2, [r5]
	add r0, r4, #0x2c8
	add r6, r0, #0x3800
	mul r3, r2, r1
	ldrb r1, [r6, r3]
	ldr r0, _0203C3F4 ; =0x0000FFEF
	sub r1, r1, #3
	strb r1, [r6, r3]
	ldrh r1, [r5, #0x16]
	and r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x16]
	orr r0, r0, #0x20
	strh r0, [r5, #0x16]
_0203C360:
	mov r0, r4
	mov r1, r7
	mov r2, #8
	bl FUN_0203c86c
	mov r0, r4
	mov r1, r7
	mov r2, #0x40
	bl FUN_0203c86c
	ldr r6, [sp, #0x38]
	cmp r9, #1
	mov r1, r6, lsl #0x10
	ldr r2, _0203C3F8 ; =0xB60B60B7
	mov r0, r1, lsr #0x1f
	smull r1, r8, r2, r1
	add r8, r8, r6, lsl #16
	add r8, r0, r8, asr #8
	ldr r3, [sp, #0x34]
	strh r8, [r5, #0x40]
	mov r0, r3, lsl #0xc
	str r0, [r5, #0x3c]
	ldr r0, [sp, #4]
	moveq r9, #0x200
	str r0, [r5]
	ldr r0, [sp, #8]
	str r0, [r5, #4]
	beq _0203C3D4
	cmp r9, #2
	moveq r9, #0x400
	movne r9, #0
_0203C3D4:
	mov r0, r4
	mov r1, r7
	mov r2, r9
	bl FUN_0203cd48
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0203C3EC: .word unk_0209A7FC
_0203C3F0: .word unk_02099EF0
_0203C3F4: .word 0x0000FFEF
_0203C3F8: .word 0xB60B60B7
	arm_func_end FUN_0203c230

	arm_func_start FUN_0203c3fc
FUN_0203c3fc: ; 0x0203C3FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0203C4E0 ; =0x02099EF0
	str r0, [sp]
	ldr r0, [r4]
	mov r10, r1
	cmp r0, #0
	mov r9, r2
	mov r11, r3
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, r9
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r7, #0
	mov r8, r7
	mov r6, #0
_0203C43C:
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov126_0213922c
	movs r5, r0
	beq _0203C470
	bl FUN_0206cbf8
	cmp r10, r0
	moveq r7, r6
	beq _0203C470
	mov r0, r5
	bl FUN_0206cbf8
	cmp r9, r0
	moveq r8, r6
_0203C470:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203C43C
	mvn r0, #0
	cmp r7, r0
	cmpne r8, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0x58
	mul r2, r7, r1
	ldr r1, [sp]
	add r1, r1, #0x3ac0
	adds r2, r1, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r2, #0x16]
	cmp r11, #0
	orr r0, r0, #0x80
	strh r0, [r2, #0x16]
	strb r8, [r2, #0x50]
	blt _0203C4C8
	cmp r11, #1
	ble _0203C4CC
_0203C4C8:
	mov r11, #0
_0203C4CC:
	strb r11, [r2, #0x4d]
	mov r1, #0
	mov r0, r7
	strb r1, [r2, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C4E0: .word unk_02099EF0
	arm_func_end FUN_0203c3fc

	arm_func_start FUN_0203c4e4
FUN_0203c4e4: ; 0x0203C4E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r5, _0203C5D0 ; =0x02099EF0
	mov r10, r1
	ldr r1, [r5]
	ldr r9, [sp, #0x38]
	cmp r1, #0
	str r3, [sp, #4]
	mov r11, r2
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	add r6, r0, #0x3ac0
	mov r4, #0x58
_0203C520:
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203C5B8
	bl FUN_0206cbf8
	cmp r10, r0
	bne _0203C5B8
	mul r0, r8, r4
	adds r7, r6, r0
	beq _0203C5B8
	ldr r1, [sp, #0x3c]
	ldr r0, _0203C5D0 ; =0x02099EF0
	str r1, [sp]
	ldr r0, [r0]
	ldr r3, [sp, #4]
	add r1, sp, #8
	mov r2, r11
	bl FUN_ov132_02148610
	cmp r0, #0
	ldrne r0, [sp, #8]
	strne r0, [r7, #0x50]
	ldrne r0, [sp, #0xc]
	strne r0, [r7, #0x54]
	ldrh r0, [r7, #0x16]
	cmp r9, #0
	orr r0, r0, #0x80
	strh r0, [r7, #0x16]
	blt _0203C59C
	cmp r9, #1
	ble _0203C5A0
_0203C59C:
	mov r9, #0
_0203C5A0:
	strb r9, [r7, #0x4d]
	mov r1, #1
	add sp, sp, #0x10
	mov r0, r8
	strb r1, [r7, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C5B8:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203C520
	mvn r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C5D0: .word unk_02099EF0
	arm_func_end FUN_0203c4e4

	arm_func_start FUN_0203c5d4
FUN_0203c5d4: ; 0x0203C5D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0203C6B8 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0203C6BC ; =0x0209A2C0
	mov r4, #1
	ldr r0, [r0, #0x4c]
	sub r5, r4, #2
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _0203C63C
	ldr r0, _0203C6C0 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e2830
	mov r1, r5
	cmp r0, r1
	ble _0203C63C
	mov r1, #0x58
	mla r1, r0, r1, r7
	add r0, r1, #0x3b00
	ldrsb r4, [r0, #0xc]
	cmp r4, #0
	ldreqsb r5, [r0, #0x10]
_0203C63C:
	ldr r0, _0203C6B8 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0212f530
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0203C6B0
	ldr r0, _0203C6C0 ; =0x02099F14
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov1_020e2830
	cmn r0, #1
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0x58
	mla r1, r0, r1, r7
	add r1, r1, #0x3a00
	ldrh r1, [r1, #0xd6]
	tst r1, #2
	beq _0203C6B0
	cmp r4, #1
	beq _0203C69C
	cmp r4, #0
	cmpeq r5, r0
	bne _0203C6B0
_0203C69C:
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0203C6B0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203C6B8: .word unk_02099EF0
_0203C6BC: .word unk_0209A2C0
_0203C6C0: .word unk_02099F14
	arm_func_end FUN_0203c5d4

	arm_func_start FUN_0203c6c4
FUN_0203c6c4: ; 0x0203C6C4
	cmn r1, #1
	ble _0203C6D4
	cmp r1, #0x16
	blt _0203C6DC
_0203C6D4:
	mov r0, #0
	bx lr
_0203C6DC:
	mov r2, #0x58
	mla r0, r1, r2, r0
	add r0, r0, #0x3a00
	ldrh r1, [r0, #0xd6]
	mov r0, #0
	mov r3, #1
	tst r1, #0x80
	bne _0203C730
	ldr r1, _0203C758 ; =0x0209A2C0
	mov r12, r0
	ldrb r2, [r1, #0x5a]
	cmp r2, #2
	beq _0203C728
	ldrb r1, [r1, #0x5b]
	tst r1, #1
	movne r1, r3
	moveq r1, r0
	cmp r1, #0
	moveq r12, #1
_0203C728:
	cmp r12, #0
	moveq r3, #0
_0203C730:
	cmp r3, #0
	bxeq lr
	ldr r1, _0203C758 ; =0x0209A2C0
	ldr r1, [r1, #0x48]
	cmp r1, #0
	movge r1, #1
	movlt r1, #0
	cmp r1, #0
	moveq r0, #1
	bx lr
_0203C758: .word unk_0209A2C0
	arm_func_end FUN_0203c6c4

	arm_func_start FUN_0203c75c
FUN_0203c75c: ; 0x0203C75C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r11, _0203C868 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r11]
	mov r10, r1
	mov r9, r2
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0
	cmpne r9, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r9, #0x16]
	tst r0, #2
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r4, #0x3ac0
	mov r6, #0
	add r4, r4, #0x1300
_0203C7B4:
	mov r0, #0x58
	mul r0, r6, r0
	adds r7, r5, r0
	beq _0203C854
	ldrh r0, [r7, #0x16]
	tst r0, #1
	beq _0203C854
	tst r0, #2
	beq _0203C854
	ldr r0, [r11]
	mov r1, r6
	bl FUN_ov126_0213922c
	movs r8, r0
	beq _0203C854
	bl FUN_0206d688
	cmp r0, #0
	beq _0203C854
	ldrb r1, [r7, #8]
	ldrsb r0, [r7, #9]
	adds r0, r1, r0
	movmi r0, #0
	bmi _0203C814
	cmp r0, #0xff
	movgt r0, #0xff
_0203C814:
	and r2, r0, #0xff
	ldrb r1, [r9, #8]
	ldrsb r0, [r9, #9]
	adds r1, r1, r0
	movmi r1, #0
	bmi _0203C834
	cmp r1, #0xff
	movgt r1, #0xff
_0203C834:
	str r2, [sp]
	ldrsh r0, [r4, #0xcc]
	mov r2, r8
	and r3, r1, #0xff
	str r0, [sp, #4]
	ldr r0, [r11]
	mov r1, r10
	bl FUN_ov132_02151958
_0203C854:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203C7B4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C868: .word unk_02099EF0
	arm_func_end FUN_0203c75c

	arm_func_start FUN_0203c86c
FUN_0203c86c: ; 0x0203C86C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r1, #0x16
	ldmgefd sp!, {r3, r4, r5, pc}
	mov lr, #0x58
	mul r3, r1, lr
	add r1, r0, #0xd6
	add r1, r1, #0x3a00
	ldrh r4, [r1, r3]
	and r4, r2, r4
	cmp r4, #0x20
	bgt _0203C8D4
	bge _0203C95C
	cmp r4, #8
	bgt _0203C8C8
	cmp r4, #2
	ldmltfd sp!, {r3, r4, r5, pc}
	cmpne r4, #4
	beq _0203C970
	cmp r4, #8
	beq _0203C8F0
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8C8:
	cmp r4, #0x10
	beq _0203C908
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8D4:
	cmp r4, #0x40
	bgt _0203C8E4
	beq _0203C970
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8E4:
	cmp r4, #0x80
	beq _0203C970
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8F0:
	add r0, r0, #0x2c8
	add r4, r0, #0x3800
	ldrb r0, [r4, r3]
	sub r0, r0, #1
	strb r0, [r4, r3]
	b _0203C970
_0203C908:
	add r12, r0, #0x2c8
	add r5, r12, #0x3800
	ldrb r4, [r5, r3]
	add r12, r0, r3
	add r12, r12, #0x3a00
	sub r4, r4, #2
	strb r4, [r5, r3]
	ldrsb r4, [r12, #0xc0]
	sub r12, lr, #0x59
	cmp r4, r12
	bgt _0203C93C
	cmp r4, #0x16
	bge _0203C970
_0203C93C:
	mov r12, #0x58
	mul r12, r4, r12
	add r0, r0, #0x2c8
	add lr, r0, #0x3800
	ldrb r0, [lr, r12]
	sub r0, r0, #3
	strb r0, [lr, r12]
	b _0203C970
_0203C95C:
	add r0, r0, #0x2c8
	add r12, r0, #0x3800
	ldrb r0, [r12, r3]
	sub r0, r0, #2
	strb r0, [r12, r3]
_0203C970:
	ldrh r12, [r1, r3]
	mvn r0, r2
	mov r0, r0, lsl #0x10
	and r0, r12, r0, lsr #16
	strh r0, [r1, r3]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203c86c

	arm_func_start FUN_0203c988
FUN_0203c988: ; 0x0203C988
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0203CA34 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r5, #2
	cmp r0, #1
	bhi _0203C9F0
	mov r0, r4, lsl #0x10
	mov r1, r5, lsl #0x18
	mov r2, r0, lsr #0x10
	mov r7, #0
	mov r4, r1, asr #0x18
	mov r0, #0x58
_0203C9CC:
	mla r1, r7, r0, r6
	add r1, r1, #0x3a00
	ldrsb r3, [r1, #0xd4]
	add r7, r7, #1
	cmp r4, r3
	streqh r2, [r1, #0xf4]
	cmp r7, #0x16
	blt _0203C9CC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203C9F0:
	mov r8, #0
_0203C9F4:
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203CA24
	bl FUN_0206cbf8
	cmp r5, r0
	moveq r0, #0x58
	mlaeq r0, r8, r0, r6
	addeq r0, r0, #0x3a00
	streqh r4, [r0, #0xf4]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CA24:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203C9F4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CA34: .word unk_02099EF0
	arm_func_end FUN_0203c988

	arm_func_start FUN_0203ca38
FUN_0203ca38: ; 0x0203CA38
	ldr r3, _0203CA80 ; =0x02099EF0
	ldr r3, [r3]
	cmp r3, #0
	bxeq lr
	cmp r1, #0
	beq _0203CA68
	cmp r1, #1
	addeq r3, r0, #0x1000
	addeq r0, r0, #0x1300
	streqb r1, [r3, #0x3c1]
	streqh r2, [r0, #0xcc]
	bx lr
_0203CA68:
	add r2, r0, #0x1000
	add r0, r0, #0x1300
	mov r3, #0
	strb r1, [r2, #0x3c1]
	strh r3, [r0, #0xcc]
	bx lr
_0203CA80: .word unk_02099EF0
	arm_func_end FUN_0203ca38

	arm_func_start FUN_0203ca84
FUN_0203ca84: ; 0x0203CA84
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0203CAB0 ; =0x0209BA20
	mov r5, r2
	mov r4, r3
	bl FUN_0204fb20
	cmp r0, #0
	strneb r5, [r0, #0x1f]
	ldrne r1, [sp, #0x10]
	strneb r4, [r0, #0x20]
	strneh r1, [r0, #0x22]
	ldmfd sp!, {r3, r4, r5, pc}
_0203CAB0: .word unk_0209BA20
	arm_func_end FUN_0203ca84

	arm_func_start FUN_0203cab4
FUN_0203cab4: ; 0x0203CAB4
	add r0, r0, #0x1000
	cmp r1, #0
	ldrb r1, [r0, #0x3c0]
	andeq r1, r1, #0xfe
	orrne r1, r1, #1
	strb r1, [r0, #0x3c0]
	bx lr
	arm_func_end FUN_0203cab4

	arm_func_start FUN_0203cad0
FUN_0203cad0: ; 0x0203CAD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r12, r5, #0x1000
	ldrb r0, [r12, #0x3c0]
	mov r4, r1
	tst r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	orr lr, r0, #4
	add r3, r5, #0x1300
	strb lr, [r12, #0x3c0]
	strh r2, [r3, #0xc2]
	cmp r2, #0
	add r0, r5, #0x13c0
	bgt _0203CB40
	mov r2, #0
	sub r1, r2, #1
	cmp r4, r1
	and r1, lr, #0xff
	andeq r1, r1, #0xfd
	strh r2, [r3, #0xc2]
	streq r2, [r12, #0x3c4]
	streqb r1, [r0]
	orrne r2, r1, #2
	movne r1, #0x1f000
	strneb r2, [r0]
	strne r1, [r12, #0x3c4]
	str r4, [r12, #0x3c8]
	ldmfd sp!, {r3, r4, r5, pc}
_0203CB40:
	mov r1, r2
	mov r0, #0x1f000
	bl _s32_div_f
	mul r1, r0, r4
	add r0, r5, #0x1000
	str r1, [r0, #0x3c8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203cad0

	arm_func_start FUN_0203cb5c
FUN_0203cb5c: ; 0x0203CB5C
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3c0]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0203cb5c

	arm_func_start FUN_0203cb74
FUN_0203cb74: ; 0x0203CB74
	add r0, r0, #0x1000
	cmp r1, #0
	ldrb r1, [r0, #0x3c0]
	orrne r1, r1, #0x10
	andeq r1, r1, #0xef
	strb r1, [r0, #0x3c0]
	bx lr
	arm_func_end FUN_0203cb74

	arm_func_start FUN_0203cb90
FUN_0203cb90: ; 0x0203CB90
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3c0]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0203cb90

	arm_func_start FUN_0203cba8
FUN_0203cba8: ; 0x0203CBA8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	cmp r2, #1
	beq _0203CBC8
	cmp r2, #2
	beq _0203CBD0
	b _0203CBD8
_0203CBC8:
	mov r5, #0x200
	b _0203CBDC
_0203CBD0:
	mov r5, #0x400
	b _0203CBDC
_0203CBD8:
	mov r5, #0
_0203CBDC:
	add r0, r6, #2
	cmp r0, #1
	bhi _0203CC24
	mov r4, #0
	mov r8, #0x58
_0203CBF0:
	mla r0, r4, r8, r7
	add r0, r0, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r6, r0
	bne _0203CC14
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_0203cd48
_0203CC14:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203CBF0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CC24:
	ldr r4, _0203CC70 ; =0x02099EF0
	mov r8, #0
_0203CC2C:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203CC60
	bl FUN_0206cbf8
	cmp r6, r0
	bne _0203CC60
	mov r0, r7
	mov r1, r8
	mov r2, r5
	bl FUN_0203cd48
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CC60:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203CC2C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CC70: .word unk_02099EF0
	arm_func_end FUN_0203cba8

	arm_func_start FUN_0203cc74
FUN_0203cc74: ; 0x0203CC74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0203CD3C ; =0xFFFFD8F0
	mov r6, r2
	mov r8, r0
	cmp r6, r4
	ldr r0, _0203CD40 ; =0x00002710
	movlt r6, r4
	cmp r6, r0
	mov r7, r1
	movgt r6, r0
	add r0, r7, #2
	mov r5, r3
	cmp r0, #1
	bhi _0203CCEC
	mov r0, r6, lsl #0x10
	mov r1, r5, lsl #0x10
	mov r3, r0, asr #0x10
	mov r9, #0
	mov r2, r1, asr #0x10
	mov r0, #0x58
_0203CCC4:
	mla r1, r9, r0, r8
	add r1, r1, #0x3a00
	ldrsb r4, [r1, #0xd4]
	add r9, r9, #1
	cmp r7, r4
	streqh r3, [r1, #0xf6]
	streqh r2, [r1, #0xf8]
	cmp r9, #0x16
	blt _0203CCC4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203CCEC:
	ldr r9, _0203CD44 ; =0x02099EF0
	mov r4, #0
_0203CCF4:
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203CD2C
	bl FUN_0206cbf8
	cmp r7, r0
	bne _0203CD2C
	mov r0, #0x58
	mla r0, r4, r0, r8
	add r0, r0, #0x3a00
	strh r6, [r0, #0xf6]
	strh r5, [r0, #0xf8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203CD2C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203CCF4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203CD3C: .word 0xFFFFD8F0
_0203CD40: .word 0x00002710
_0203CD44: .word unk_02099EF0
	arm_func_end FUN_0203cc74

	arm_func_start FUN_0203cd48
FUN_0203cd48: ; 0x0203CD48
	cmp r1, #0
	bxlt lr
	cmp r1, #0x16
	bxgt lr
	mov r3, #0x58
	mul r3, r1, r3
	add r0, r0, #0xd6
	add r1, r0, #0x3a00
	cmp r2, #0x200
	ldrh r12, [r1, r3]
	beq _0203CD80
	cmp r2, #0x400
	beq _0203CD94
	b _0203CDA8
_0203CD80:
	tst r12, #0x400
	ldrne r0, _0203CDB8 ; =0x0000FBFF
	andne r12, r12, r0
	orr r12, r12, #0x200
	b _0203CDB0
_0203CD94:
	tst r12, #0x200
	ldrne r0, _0203CDBC ; =0x0000FDFF
	andne r12, r12, r0
	orr r12, r12, #0x400
	b _0203CDB0
_0203CDA8:
	ldr r0, _0203CDC0 ; =0x0000F9FF
	and r12, r12, r0
_0203CDB0:
	strh r12, [r1, r3]
	bx lr
_0203CDB8: .word 0x0000FBFF
_0203CDBC: .word 0x0000FDFF
_0203CDC0: .word 0x0000F9FF
	arm_func_end FUN_0203cd48

	arm_func_start FUN_0203cdc4
FUN_0203cdc4: ; 0x0203CDC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r6, r1
	ldr r4, [sp, #0x18]
	ldr r8, [sp, #0x1c]
	mov r0, r2
	mov r1, r7
	mov r5, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0203CF24 ; =0x0209A7FC
	cmp r1, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _0203CF28 ; =0x02099EF0
	ldr r2, [r2]
	cmp r2, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _0203CF2C ; =0xB60B60B7
	mov r12, r8, lsl #0x10
	smull r2, lr, r3, r12
	add lr, lr, r8, lsl #16
	mov r2, r12, lsr #0x1f
	add lr, r2, lr, asr #8
	mov r2, lr, lsl #0x10
	cmp r6, #0
	mov r2, r2, lsr #0x10
	mov r4, r4, lsl #0xc
	beq _0203CE8C
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r3, r2, #1
	ldr r2, _0203CF30 ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh r2, [r2, r3]
	ldr r0, [r0, #0x84]
	ldr r8, [r1, #8]
	smull r3, r2, r4, r2
	adds r12, r3, #0x800
	ldr r3, [r1]
	adc r7, r2, r7
	mov r2, r12, lsr #0xc
	sub r1, r8, r3
	orr r2, r2, r7, lsl #20
	mov r7, r1, asr #1
	ldr r1, [r0]
	b _0203CEC8
_0203CE8C:
	mov r3, r2, asr #4
	ldr r2, _0203CF30 ; =FX_SinCosTable_
	mov r3, r3, lsl #2
	ldrsh r2, [r2, r3]
	ldr r0, [r0, #0x84]
	ldr r8, [r1, #0xc]
	smull r3, r2, r4, r2
	adds lr, r3, #0x800
	ldr r3, [r1, #4]
	adc r12, r2, r7
	mov r2, lr, lsr #0xc
	sub r7, r8, r3
	ldr r1, [r0, #4]
	orr r2, r2, r12, lsl #20
	mov r7, r7, asr #1
_0203CEC8:
	cmp r4, #0
	addgt r1, r1, r2
	cmp r5, #0
	beq _0203CF08
	cmp r5, #1
	beq _0203CF00
	cmp r5, #2
	bne _0203CF08
	ldr r0, _0203CF28 ; =0x02099EF0
	mov r2, r6
	ldr r0, [r0]
	bl FUN_ov132_021483b0
	mov r1, r0
	b _0203CF1C
_0203CF00:
	sub r1, r1, r3
	b _0203CF10
_0203CF08:
	sub r0, r1, r7
	sub r1, r0, r3
_0203CF10:
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
_0203CF1C:
	mov r0, r1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CF24: .word unk_0209A7FC
_0203CF28: .word unk_02099EF0
_0203CF2C: .word 0xB60B60B7
_0203CF30: .word FX_SinCosTable_
	arm_func_end FUN_0203cdc4

	arm_func_start FUN_0203cf34
FUN_0203cf34: ; 0x0203CF34
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r0, r7
	mov r1, #0
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldrne r1, _0203CFBC ; =0x0209A7FC
	cmpne r1, #0
	ldrne r4, _0203CFC0 ; =0x02099EF0
	ldrne r1, [r4]
	cmpne r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_0206da98
	ldr r0, [sp, #0x20]
	add r1, sp, #4
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r5
	bl FUN_ov132_02148610
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r7
	bl FUN_ov126_02139c58
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0203CFBC: .word unk_0209A7FC
_0203CFC0: .word unk_02099EF0
	arm_func_end FUN_0203cf34

	arm_func_start FUN_0203cfc4
FUN_0203cfc4: ; 0x0203CFC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	mov r6, r2
	add r1, r7, #2
	mov r8, r0
	mov r5, r3
	cmp r1, #1
	mov r6, r6, lsl #0xc
	mov r4, #0
	bhi _0203D028
	mov r0, r5, lsl #0x10
	mov r2, r0, asr #0x10
	mov r1, #0x58
_0203CFF8:
	mla r3, r4, r1, r8
	add r0, r3, #0x3a00
	ldrsb r0, [r0, #0xd4]
	add r4, r4, #1
	cmp r7, r0
	addeq r0, r3, #0x3000
	streq r6, [r0, #0xb04]
	addeq r0, r3, #0x3b00
	streqh r2, [r0, #8]
	cmp r4, #0x16
	blt _0203CFF8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D028:
	ldr r9, _0203D078 ; =0x02099EF0
_0203D02C:
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D068
	bl FUN_0206cbf8
	cmp r7, r0
	bne _0203D068
	mov r0, #0x58
	mla r1, r4, r0, r8
	add r0, r1, #0x3000
	str r6, [r0, #0xb04]
	add r0, r1, #0x3b00
	strh r5, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D068:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D02C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D078: .word unk_02099EF0
	arm_func_end FUN_0203cfc4

	arm_func_start FUN_0203d07c
FUN_0203d07c: ; 0x0203D07C
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203D0D4
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203D0A0:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203D0C4
	ldrh r3, [r3, #0xd6]
	tst r3, #0x800
	movne r2, #1
	bne _0203D0F8
_0203D0C4:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D0A0
	b _0203D0F8
_0203D0D4:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #0x800
	movne r2, #1
_0203D0F8:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203d07c

	arm_func_start FUN_0203d100
FUN_0203d100: ; 0x0203D100
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	mov r4, r8, lsl #0x10
	ldr r2, _0203D2D0 ; =0xB60B60B7
	mov r9, r1
	smull r1, r8, r2, r4
	add r2, r9, #2
	add r8, r8, r4
	mov r1, r4, lsr #0x1f
	mov r10, r0
	mov r7, r3
	cmp r2, #1
	add r8, r1, r8, asr #8
	ldr r6, [sp, #0x28]
	bhi _0203D1F0
	mov r0, r7, lsl #0x10
	mov r4, #0
	mov r11, r0, asr #0x10
_0203D148:
	mov r0, #0x58
	mla r5, r4, r0, r10
	add r0, r5, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203D1E0
	ldr r0, _0203D2D4 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D1E0
	cmp r7, #0
	add r1, r5, #0x3a00
	bgt _0203D1A8
	ldrh r3, [r1, #0xd6]
	ldr r0, _0203D2D8 ; =0x0000F7FF
	add r2, r5, #0x3000
	and r0, r3, r0
	strh r0, [r1, #0xd6]
	mov r0, #0
	strh r0, [r1, #0xf0]
	str r0, [r2, #0xaec]
	b _0203D1E0
_0203D1A8:
	ldrh r2, [r1, #0xd6]
	cmp r6, #0
	mov r3, r8
	orr r2, r2, #0x800
	strh r2, [r1, #0xd6]
	strh r11, [r1, #0xf0]
	ldreq r0, [r0, #0x84]
	mov r1, r7
	ldreqh r0, [r0, #0x18]
	subeq r3, r8, r0
	mov r0, r3
	bl _s32_div_f
	add r1, r5, #0x3000
	str r0, [r1, #0xaec]
_0203D1E0:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D148
	b _0203D2C8
_0203D1F0:
	ldr r11, _0203D2D4 ; =0x02099EF0
	mov r5, #0
_0203D1F8:
	ldr r0, [r11]
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _0203D2B4
	bl FUN_0206cbf8
	cmp r9, r0
	bne _0203D2B4
	cmp r7, #0
	mov r0, #0x58
	bgt _0203D260
	mul r6, r5, r0
	add r0, r10, #0xd6
	add r4, r0, #0x3a00
	ldrh r3, [r4, r6]
	ldr r0, _0203D2D8 ; =0x0000F7FF
	add r2, r10, r6
	and r0, r3, r0
	strh r0, [r4, r6]
	add r1, r2, #0x3a00
	mov r3, #0
	strh r3, [r1, #0xf0]
	add r1, r2, #0x3000
	mov r0, r5
	str r3, [r1, #0xaec]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D260:
	mul r9, r5, r0
	add r0, r10, #0xd6
	add r2, r0, #0x3a00
	ldrh r1, [r2, r9]
	add r0, r10, r9
	add r0, r0, #0x3a00
	orr r1, r1, #0x800
	strh r1, [r2, r9]
	strh r7, [r0, #0xf0]
	cmp r6, #0
	ldreq r0, [r4, #0x84]
	mov r1, r7
	ldreqh r0, [r0, #0x18]
	subeq r8, r8, r0
	mov r0, r8
	bl _s32_div_f
	add r1, r10, r9
	add r1, r1, #0x3000
	str r0, [r1, #0xaec]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D2B4:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0203D1F8
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D2C8:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D2D0: .word 0xB60B60B7
_0203D2D4: .word unk_02099EF0
_0203D2D8: .word 0x0000F7FF
	arm_func_end FUN_0203d100

	arm_func_start FUN_0203d2dc
FUN_0203d2dc: ; 0x0203D2DC
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203D334
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203D300:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203D324
	ldrh r3, [r3, #0xd6]
	tst r3, #0x2000
	movne r2, #1
	bne _0203D358
_0203D324:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D300
	b _0203D358
_0203D334:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #0x2000
	movne r2, #1
_0203D358:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203d2dc

	arm_func_start FUN_0203d360
FUN_0203d360: ; 0x0203D360
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r2
	mov r9, r1
	mov r1, r4
	mov r10, r0
	mov r8, r3
	bl FUN_0203d4b8
	cmp r0, #0
	moveq r0, #0x16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #2
	cmp r8, #0
	mvnlt r8, #0
	cmp r0, #1
	bhi _0203D41C
	mov r0, r8, lsl #0x10
	ldr r11, _0203D4B0 ; =0x02099EF0
	mov r6, #0
	mov r5, r0, asr #0x10
	and r4, r4, #0xff
_0203D3B0:
	mov r0, #0x58
	mla r7, r6, r0, r10
	add r0, r7, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203D40C
	ldr r0, [r11]
	mov r1, r6
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D40C
	add r1, r7, #0x3a00
	strh r5, [r1, #0xea]
	add r0, r7, #0x3000
	strb r4, [r0, #0xae8]
	cmp r8, #0
	ldrneh r0, [r1, #0xd6]
	orrne r0, r0, #0x2000
	strneh r0, [r1, #0xd6]
	ldreqh r2, [r1, #0xd6]
	ldreq r0, _0203D4B4 ; =0x0000DFFF
	andeq r0, r2, r0
	streqh r0, [r1, #0xd6]
_0203D40C:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203D3B0
	b _0203D4A8
_0203D41C:
	ldr r6, _0203D4B0 ; =0x02099EF0
	mov r5, #0
_0203D424:
	ldr r0, [r6]
	mov r1, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D494
	bl FUN_0206cbf8
	cmp r9, r0
	bne _0203D494
	mov r0, #0x58
	mul r0, r5, r0
	add r2, r10, r0
	add r1, r2, #0x3a00
	strh r8, [r1, #0xea]
	add r1, r2, #0x3000
	strb r4, [r1, #0xae8]
	add r1, r10, #0xd6
	cmp r8, #0
	addne r2, r1, #0x3a00
	ldrneh r1, [r2, r0]
	orrne r1, r1, #0x2000
	addeq r3, r1, #0x3a00
	strneh r1, [r2, r0]
	ldreqh r2, [r3, r0]
	ldreq r1, _0203D4B4 ; =0x0000DFFF
	andeq r1, r2, r1
	streqh r1, [r3, r0]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D494:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0203D424
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D4A8:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D4B0: .word unk_02099EF0
_0203D4B4: .word 0x0000DFFF
	arm_func_end FUN_0203d360

	arm_func_start FUN_0203d4b8
FUN_0203d4b8: ; 0x0203D4B8
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0203D4F4
_0203D4C4: ; jump table
	b _0203D4EC ; case 0
	b _0203D4EC ; case 1
	b _0203D4EC ; case 2
	b _0203D4EC ; case 3
	b _0203D4EC ; case 4
	b _0203D4EC ; case 5
	b _0203D4EC ; case 6
	b _0203D4EC ; case 7
	b _0203D4EC ; case 8
	b _0203D4EC ; case 9
_0203D4EC:
	mov r0, #1
	bx lr
_0203D4F4:
	mov r0, #0
	bx lr
	arm_func_end FUN_0203d4b8

	arm_func_start FUN_0203d4fc
FUN_0203d4fc: ; 0x0203D4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	movs r4, r2
	mov r5, r1
	mov r7, r3
	mov r6, #1
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, _0203D728 ; =0x0209A7FC
	cmp r8, #0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_ov16_020f07d0
	cmp r0, #0
	ldr r0, _0203D72C ; =0x02099EF0
	ldr r2, [r8]
	ldr r1, [r8, #8]
	mov r9, r6
	sub r1, r1, r2
	add r12, r2, r1, asr #1
	ldr r2, [r8, #4]
	ldr r1, [r8, #0xc]
	ldr r0, [r0]
	sub r1, r1, r2
	add lr, r2, r1, asr #1
	mov r1, r7
	mov r3, r6
	mov r2, #0
	movne r9, #0
	str r12, [sp]
	str lr, [sp, #4]
	bl FUN_ov132_0213f368
	mov r7, r0
	tst r4, #1
	beq _0203D5C0
	ldr r0, _0203D730 ; =0x0209A2C0
	ldrsh r1, [r5, #0x94]
	ldr r0, [r0, #0x48]
	cmp r0, r1
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D5C0:
	tst r4, #2
	beq _0203D5E0
	mov r0, r5
	bl FUN_0206d6d8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D5E0:
	tst r4, #4
	beq _0203D60C
	ldr r0, [r5, #0x84]
	ldr r0, [r0, #4]
	cmp r0, r7
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D60C:
	tst r4, #8
	beq _0203D65C
	ldr r2, [r5, #0x84]
	ldr r0, [r8]
	ldr r1, [r2]
	cmp r1, r0
	blt _0203D650
	ldr r0, [r8, #8]
	cmp r1, r0
	bgt _0203D650
	ldr r1, [r2, #4]
	ldr r0, [r8, #4]
	cmp r1, r0
	blt _0203D650
	ldr r0, [r8, #0xc]
	cmp r1, r0
	ble _0203D65C
_0203D650:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D65C:
	tst r4, #0x10
	beq _0203D68C
	ldr r1, [r5, #0x84]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D68C:
	tst r4, #0x20
	beq _0203D6BC
	ldr r1, [r5, #0x84]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D6BC:
	tst r4, #0x40
	beq _0203D6EC
	ldr r1, [r5, #0x84]
	ldr r0, [sp]
	ldr r1, [r1]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D6EC:
	tst r4, #0x80
	beq _0203D71C
	ldr r1, [r5, #0x84]
	ldr r0, [sp]
	ldr r1, [r1]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D71C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D728: .word unk_0209A7FC
_0203D72C: .word unk_02099EF0
_0203D730: .word unk_0209A2C0
	arm_func_end FUN_0203d4fc

	arm_func_start FUN_0203d734
FUN_0203d734: ; 0x0203D734
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r2
	mov r10, r0
	mov r9, r1
	mov r6, r3
	cmp r5, #0
	ldr r4, [sp, #0x28]
	bgt _0203D764
	cmp r5, #0
	movne r0, #0x16
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0x1e
_0203D764:
	cmp r6, #0
	bgt _0203D778
	movne r0, #0x16
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #8
_0203D778:
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _0203D798
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0203D7A4
_0203D798:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0203D7A4:
	bl _ffix
	cmp r4, #0
	ldrle r4, _0203D908 ; =0x00000FAE
	mov r6, r0, asr #1
	mov r0, #0x6000
	umull r3, r2, r4, r0
	mov r1, r4, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r0, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	ldr r1, _0203D90C ; =0x88888889
	mov r2, r3, lsr #0x1f
	smull r0, r4, r1, r3
	add r4, r3, r4
	mov r0, r5
	mov r1, r6
	add r4, r2, r4, asr #5
	mov r8, #0
	bl FX_Div
	smull r2, r1, r4, r6
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r5, r0, r2
	mov r0, r5
	mov r1, r6
	bl FX_Div
	add r1, r9, #2
	cmp r1, #1
	mov r7, r0
	bhi _0203D894
	ldr r11, _0203D910 ; =0x02099EF0
	mov r4, r8
_0203D834:
	mov r0, #0x58
	mla r6, r8, r0, r10
	add r0, r6, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203D880
	ldr r0, [r11]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D880
	add r0, r6, #0x3000
	str r5, [r0, #0xadc]
	str r4, [r0, #0xae0]
	str r7, [r0, #0xae4]
	add r0, r6, #0x3a00
	ldrh r1, [r0, #0xd6]
	orr r1, r1, #0x1000
	strh r1, [r0, #0xd6]
_0203D880:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203D834
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D894:
	ldr r4, _0203D910 ; =0x02099EF0
_0203D898:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D8F4
	bl FUN_0206cbf8
	cmp r9, r0
	bne _0203D8F4
	mov r0, #0x58
	mul r3, r8, r0
	add r0, r10, r3
	add r0, r0, #0x3000
	str r5, [r0, #0xadc]
	mov r1, #0
	str r1, [r0, #0xae0]
	add r1, r10, #0xd6
	str r7, [r0, #0xae4]
	add r2, r1, #0x3a00
	ldrh r1, [r2, r3]
	mov r0, r8
	orr r1, r1, #0x1000
	strh r1, [r2, r3]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D8F4:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203D898
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D908: .word 0x00000FAE
_0203D90C: .word 0x88888889
_0203D910: .word unk_02099EF0
	arm_func_end FUN_0203d734

	arm_func_start FUN_0203d914
FUN_0203d914: ; 0x0203D914
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203D96C
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203D938:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203D95C
	ldrh r3, [r3, #0xd6]
	tst r3, #0x1000
	movne r2, #1
	bne _0203D990
_0203D95C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D938
	b _0203D990
_0203D96C:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #0x1000
	movne r2, #1
_0203D990:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203d914

	arm_func_start FUN_0203d998
FUN_0203d998: ; 0x0203D998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, #0
	ldr r5, _0203DB2C ; =0x02099EF0
	mov r4, r0
	mov r9, r1
	mov r10, r2
	mov r8, r3
	mov r7, r11
_0203D9BC:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov126_0213922c
	movs r6, r0
	beq _0203D9DC
	bl FUN_0206cbf8
	cmp r9, r0
	beq _0203D9E8
_0203D9DC:
	add r7, r7, #1
	cmp r7, #0x16
	blt _0203D9BC
_0203D9E8:
	cmp r7, #0x16
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x30]
	mov r9, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	moveq r9, #0
	cmn r8, #1
	beq _0203DAF8
	cmp r8, #0
	beq _0203DA2C
	cmp r8, #1
	beq _0203DAC8
	b _0203DAF8
_0203DA2C:
	ldr r4, _0203DB2C ; =0x02099EF0
	mov r8, #0
	add r11, sp, #4
_0203DA38:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	movs r7, r0
	ldrnesh r2, [r7, #0x94]
	ldrnesh r1, [r6, #0x94]
	cmpne r2, r1
	beq _0203DAB4
	bl FUN_ov16_020f0810
	mov r5, r0
	mov r0, r6
	bl FUN_ov16_020f0810
	cmp r5, r0
	beq _0203DAB4
	cmp r9, #0
	bne _0203DA88
	mov r0, r7
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0203DAB4
_0203DA88:
	str r10, [sp]
	ldr r0, [r4]
	ldr r2, [r6, #0x84]
	ldr r3, [r7, #0x84]
	mov r1, r11
	bl FUN_ov132_021488a0
	cmp r0, #0
	ldrne r2, [sp, #8]
	ldrne r1, [r7, #0x84]
	ldrne r0, [sp, #4]
	stmneia r1, {r0, r2}
_0203DAB4:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203DA38
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203DAC8:
	mov r0, #0x58
	mul r3, r7, r0
	add r0, r4, #0xd6
	add r2, r0, #0x3a00
	ldrh r1, [r2, r3]
	add r0, r4, r3
	add r0, r0, #0x3000
	orr r1, r1, #0x4000
	strh r1, [r2, r3]
	add sp, sp, #0xc
	str r10, [r0, #0xad8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203DAF8:
	mov r0, #0x58
	mul r5, r7, r0
	add r0, r4, #0xd6
	add r3, r0, #0x3a00
	ldrh r2, [r3, r5]
	ldr r0, _0203DB30 ; =0x0000BFFF
	add r1, r4, r5
	and r0, r2, r0
	strh r0, [r3, r5]
	add r0, r1, #0x3000
	str r11, [r0, #0xad8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203DB2C: .word unk_02099EF0
_0203DB30: .word 0x0000BFFF
	arm_func_end FUN_0203d998

	arm_func_start FUN_0203db34
FUN_0203db34: ; 0x0203DB34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mvn r3, #0x63
	cmp r2, r3
	mov r10, r0
	mov r9, r1
	movlt r2, r3
	blt _0203DB58
	cmp r2, #0x64
	movgt r2, #0x64
_0203DB58:
	mov r0, r2, lsl #0x18
	add r1, r9, #2
	cmp r1, #1
	mov r7, r0, asr #0x18
	bhi _0203DBB4
	ldr r5, _0203DBFC ; =0x02099EF0
	mov r6, #0
	mov r4, #0x58
_0203DB78:
	mla r8, r6, r4, r10
	add r0, r8, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203DBA4
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov126_0213922c
	cmp r0, #0
	addne r0, r8, #0x3000
	strneb r7, [r0, #0xac9]
_0203DBA4:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203DB78
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203DBB4:
	ldr r4, _0203DBFC ; =0x02099EF0
	mov r5, #0
_0203DBBC:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203DBEC
	bl FUN_0206cbf8
	cmp r9, r0
	moveq r0, #0x58
	mlaeq r0, r5, r0, r10
	addeq r0, r0, #0x3000
	streqb r7, [r0, #0xac9]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203DBEC:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0203DBBC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203DBFC: .word unk_02099EF0
	arm_func_end FUN_0203db34

	arm_func_start FUN_0203dc00
FUN_0203dc00: ; 0x0203DC00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r1, _0203DDC0 ; =0x020A0640
	ldr r2, _0203DDC4 ; =0x02099EF0
	ldrb r1, [r1, #0x8f]
	mov r8, r0
	ldr r0, [r2]
	bl FUN_ov132_02145c40 ; may be ov131
	cmp r0, #0xc
	bgt _0203DC68
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0203DC98
_0203DC34: ; jump table
	b _0203DC98 ; case 0
	b _0203DC98 ; case 1
	b _0203DC98 ; case 2
	b _0203DC74 ; case 3
	b _0203DC98 ; case 4
	b _0203DC98 ; case 5
	b _0203DC78 ; case 6
	b _0203DC98 ; case 7
	b _0203DC98 ; case 8
	b _0203DC80 ; case 9
	b _0203DC98 ; case 10
	b _0203DC98 ; case 11
	b _0203DC90 ; case 12
_0203DC68:
	cmp r0, #0xf
	beq _0203DC88
	b _0203DC98
_0203DC74:
	b _0203DC98
_0203DC78:
	mov r7, #1
	b _0203DC9C
_0203DC80:
	mov r7, #2
	b _0203DC9C
_0203DC88:
	mov r7, #4
	b _0203DC9C
_0203DC90:
	mov r7, #5
	b _0203DC9C
_0203DC98:
	mov r7, #0
_0203DC9C:
	cmp r0, #0xf
	ldreq r0, _0203DDC0 ; =0x020A0640
	moveq r1, #1
	streqb r1, [r0, #0x8c]
	ldr r0, _0203DDC8 ; =0x0209A200
	ldr r4, _0203DDCC ; =0x02099F38
	ldr r2, [r0]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r3, _0203DDD0 ; =0x0208FF04
	mov r1, #5
	str r6, [sp, #8]
	bl FUN_02058684
	mov r1, r0
	add r0, r8, #0x1000
	str r1, [r0, #0x3d8]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	add r0, r8, #0x1000
	ldr r2, [r0, #0x3d8]
	str r1, [r0, #0x3dc]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211346c
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, #0xc8
	bl FUN_ov16_02112b98
	mov r0, #0x50
	str r0, [sp]
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r3, r6
	mov r2, r5
	bl FUN_ov16_02113b78
	add r1, r8, #0x1000
	mov r3, r5
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, r5
	bl FUN_ov16_0211329c
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, r5
	bl FUN_ov16_02114370
	add r0, r8, #0x1000
	mov r1, #0x5a
	str r1, [r0, #0x3d4]
	ldr r1, [r0, #0x3d0]
	add r1, r1, #1
	str r1, [r0, #0x3d0]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0203DDC0: .word unk_020A0640
_0203DDC4: .word unk_02099EF0
_0203DDC8: .word unk_0209A200
_0203DDCC: .word unk_02099F38
_0203DDD0: .word unk_0208FF04
	arm_func_end FUN_0203dc00

	arm_func_start FUN_0203ddd4
FUN_0203ddd4: ; 0x0203DDD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3d0]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0203DE44 ; =0x02099F38
	ldr r1, [r0, #0x3d8]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3d8]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3d8]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	bl FUN_ov16_021128c4
	add r0, r5, #0x3d0
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0203DE44: .word unk_02099F38
	arm_func_end FUN_0203ddd4

	arm_func_start FUN_0203de48
FUN_0203de48: ; 0x0203DE48
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3d0]
	cmp r0, #0xa
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_0203de48

	arm_func_start FUN_0203de60
FUN_0203de60: ; 0x0203DE60
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d0]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0203DE7C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0203DEA8 ; case 1
	b _0203DED0 ; case 2
	b _0203DF2C ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	ldmfd sp!, {r4, pc} ; case 7
	ldmfd sp!, {r4, pc} ; case 8
	ldmfd sp!, {r4, pc} ; case 9
	ldmfd sp!, {r4, pc} ; case 10
_0203DEA8:
	ldr r2, _0203DF68 ; =0x02099F38
	ldr r1, [r0, #0x3d8]
	ldr r0, [r2]
	bl FUN_02058e30
	cmp r0, #0
	addeq r0, r4, #0x1000
	ldreq r1, [r0, #0x3d0]
	addeq r1, r1, #1
	streq r1, [r0, #0x3d0]
	ldmfd sp!, {r4, pc}
_0203DED0:
	ldr r2, _0203DF68 ; =0x02099F38
	ldr r1, [r0, #0x3dc]
	ldr r0, [r2]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_021142fc
	ldr r0, _0203DF6C ; =0x020A0640
	ldr r2, _0203DF70 ; =0x02099EF0
	ldrb r1, [r0, #0x8f]
	ldr r0, [r2]
	bl FUN_ov132_02145c40 ; may be ov131
	cmp r0, #0xf
	beq _0203DF10
	ldr r0, _0203DF74 ; =0x0209AC44
	ldr r1, _0203DF78 ; =0x0000407D
	b _0203DF18
_0203DF10:
	ldr r0, _0203DF74 ; =0x0209AC44
	ldr r1, _0203DF7C ; =0x0000407C
_0203DF18:
	bl FUN_0202cf6c
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d0]
	add r1, r1, #1
	str r1, [r0, #0x3d0]
_0203DF2C:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d4]
	sub r1, r1, #1
	str r1, [r0, #0x3d4]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	ldr r2, _0203DF68 ; =0x02099F38
	ldr r1, [r0, #0x3dc]
	ldr r0, [r2]
	mov r2, #2
	bl FUN_ov16_02113390
	add r0, r4, #0x1000
	mov r1, #0xa
	str r1, [r0, #0x3d0]
	ldmfd sp!, {r4, pc}
_0203DF68: .word unk_02099F38
_0203DF6C: .word unk_020A0640
_0203DF70: .word unk_02099EF0
_0203DF74: .word unk_0209AC44
_0203DF78: .word 0x0000407D
_0203DF7C: .word 0x0000407C
	arm_func_end FUN_0203de60

	arm_func_start FUN_0203df80
FUN_0203df80: ; 0x0203DF80
	bx lr
	arm_func_end FUN_0203df80

	arm_func_start FUN_0203df84
FUN_0203df84: ; 0x0203DF84
	bx lr
	arm_func_end FUN_0203df84

	arm_func_start FUN_0203df88
FUN_0203df88: ; 0x0203DF88
	str r1, [r0]
	bx lr
	arm_func_end FUN_0203df88

	arm_func_start FUN_0203df90
FUN_0203df90: ; 0x0203DF90
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0203DFB4
	mov r0, r2
	mov r2, #6
	mov r3, #1
	bl FUN_0202de58
	ldmfd sp!, {r3, pc}
_0203DFB4:
	ldr r2, [r0, #0x240]
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203df90

	arm_func_start FUN_0203dfd0
FUN_0203dfd0: ; 0x0203DFD0
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0203DFEC
	mov r0, r2
	bl FUN_0202e1c0
	ldmfd sp!, {r3, pc}
_0203DFEC:
	ldr r2, [r0, #0x244]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203dfd0

	arm_func_start FUN_0203e004
FUN_0203e004: ; 0x0203E004
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0203E1C4 ; =0x020B5BB0
	mov r6, r0
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0
	mov r4, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	cmp r0, #0
	bne _0203E04C
	ldr r0, [r6, #0x240]
	cmp r0, #0
	ldrne r0, [r6, #0x244]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_0203E04C:
	mul r1, r2, r3
	add r0, r6, #0x2400
	add r1, r1, #4
	strh r1, [r0, #0x64]
	ldrh r1, [r0, #0x64]
	strh r2, [r0, #0x66]
	strh r3, [r0, #0x5e]
	cmp r1, #0x200
	movhi r0, #0
	ldmhifd sp!, {r4, r5, r6, pc}
	mov r1, r4
	add r0, r6, #0x360
	mov r2, #6
	bl MI_CpuFill8
	ldr r2, _0203E1C8 ; =0x00001078
	mov r1, r4
	add r0, r6, #0x380
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0xf20
	bl FUN_0203df90
	str r0, [r6, #0x20c]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r0, #0x1f
	ldr r1, _0203E1CC ; =FUN_0203e2f4
	bic r0, r0, #0x1f
	mov r2, #3
	bl WM_Initialize
	cmp r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x44
	mov r1, r4
	add r0, r0, #0x2400
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r6, #0x300
	strh r4, [r0, #0x24]
	ldr r1, _0203E1C4 ; =0x020B5BB0
	str r5, [r6, #0x328]
	str r4, [r6, #0x320]
	str r6, [r1]
	add r1, r6, #0x2400
	ldrh r3, [r1, #0x64]
	ldrh r2, [r1, #0x66]
	add r0, r6, #0x2000
	add r3, r3, #0x23
	add r2, r2, #0x21
	bic r3, r3, #0x1f
	bic r2, r2, #0x1f
	cmp r3, r2
	movlt r3, r2
	str r4, [r0, #0x440]
	add r0, r3, #0x3f
	bic r5, r0, #0x3f
	strh r4, [r1, #0x6a]
	mov r0, r6
	add r1, r5, #0x20
	bl FUN_0203df90
	add r1, r6, #0x2400
	ldrh r3, [r1, #0x66]
	ldrh r2, [r1, #0x5e]
	ldrh r1, [r1, #0x64]
	add r3, r3, #0xe
	sub r2, r2, #1
	mul r2, r3, r2
	add r2, r2, #0x29
	add r1, r1, #0x55
	bic r2, r2, #0x1f
	bic r1, r1, #0x1f
	mov r2, r2, lsl #1
	str r0, [r6, #0x204]
	mov r0, r1, lsl #1
	cmp r2, r1, lsl #1
	movlt r2, r0
	add r0, r2, #0x3f
	str r5, [r6, #0x238]
	bic r5, r0, #0x3f
	mov r0, r6
	add r1, r5, #0x20
	bl FUN_0203df90
	ldr r1, [r6, #0x204]
	str r0, [r6, #0x208]
	cmp r1, #0
	cmpne r0, #0
	moveq r0, #0
	ldrne r0, _0203E1C4 ; =0x020B5BB0
	str r5, [r6, #0x23c]
	strne r4, [r0, #4]
	movne r0, #1
	strneb r0, [r6, #0x236]
	ldmfd sp!, {r4, r5, r6, pc}
_0203E1C4: .word unk_020B5BB0
_0203E1C8: .word 0x00001078
_0203E1CC: .word FUN_0203e2f4
	arm_func_end FUN_0203e004

	arm_func_start FUN_0203e1d0
FUN_0203e1d0: ; 0x0203E1D0
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x6a]
	bx lr
	arm_func_end FUN_0203e1d0

	arm_func_start FUN_0203E1DC
FUN_0203E1DC: ; 0x0203E1DC
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x5c]
	bx lr
	arm_func_end FUN_0203E1DC

	arm_func_start FUN_0203e1e8
FUN_0203e1e8: ; 0x0203E1E8
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x60]
	bx lr
	arm_func_end FUN_0203e1e8

	arm_func_start FUN_0203e1f4
FUN_0203e1f4: ; 0x0203E1F4
	ldrh r0, [r0, #6]
	bx lr
	arm_func_end FUN_0203e1f4

	arm_func_start FUN_0203E1FC
FUN_0203E1FC: ; 0x0203E1FC
	add r0, r0, #0x2000
	ldr r0, [r0, #0x440]
	bx lr
	arm_func_end FUN_0203E1FC

	arm_func_start FUN_0203e208
FUN_0203e208: ; 0x0203E208
	ldr r12, _0203E210 ; =WM_GetLinkLevel
	bx r12
_0203E210: .word WM_GetLinkLevel
	arm_func_end FUN_0203e208

	arm_func_start FUN_0203e214
FUN_0203e214: ; 0x0203E214
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r3, r0
	ldrb r0, [r3, #0x236]
	cmp r1, #0
	add r1, r3, #0x300
	orrne r0, r0, #1
	andeq r0, r0, #0xfe
	strb r0, [r3, #0x236]
	add r0, r3, #0x200
	ldrh r2, [r0, #0x34]
	ldr r0, _0203E268 ; =FUN_0203e2cc
	str r2, [sp]
	ldrb r2, [r3, #0x236]
	str r2, [sp, #4]
	ldrh r2, [r1, #0x24]
	ldr r1, [r3, #0x320]
	ldr r3, [r3, #0x328]
	bl WM_SetGameInfo
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0203E268: .word FUN_0203e2cc
	arm_func_end FUN_0203e214

	arm_func_start FUN_0203e26c
FUN_0203e26c: ; 0x0203E26C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, r0
	add r0, r12, #0x2400
	ldrh r0, [r0, #0x6c]
	add r3, r12, #0x300
	str r1, [r12, #0x320]
	tst r0, #2
	addeq sp, sp, #8
	strh r2, [r3, #0x24]
	ldmeqfd sp!, {r3, pc}
	add r0, r12, #0x200
	ldrh r1, [r0, #0x34]
	ldr r0, _0203E2C8 ; =FUN_0203e2cc
	str r1, [sp]
	ldrb r1, [r12, #0x236]
	str r1, [sp, #4]
	ldrh r2, [r3, #0x24]
	ldr r1, [r12, #0x320]
	ldr r3, [r12, #0x328]
	bl WM_SetGameInfo
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0203E2C8: .word FUN_0203e2cc
	arm_func_end FUN_0203e26c

	arm_func_start FUN_0203e2cc
FUN_0203e2cc: ; 0x0203E2CC
	bx lr
	arm_func_end FUN_0203e2cc

	arm_func_start FUN_0203e2d0
FUN_0203e2d0: ; 0x0203E2D0
	add r2, r0, #0x1000
	ldrb r3, [r2, #0x3e2]
	mov r2, #1
	tst r3, r2, lsl r1
	moveq r0, #0
	addne r2, r0, #0x7e0
	movne r0, #0xc0
	mlane r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0203e2d0

	arm_func_start FUN_0203e2f4
FUN_0203e2f4: ; 0x0203E2F4
	stmfd sp!, {r4, lr}
	ldr r4, _0203E34C ; =0x020B5BB0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r0, #2]
	cmp r0, #0
	addne r0, r1, #0x2400
	movne r1, #9
	strneh r1, [r0, #0x6a]
	ldmnefd sp!, {r4, pc}
	ldr r0, _0203E350 ; =FUN_0203e354
	bl WM_SetIndCallback
	cmp r0, #0
	ldr r0, [r4]
	movne r1, #9
	addne r0, r0, #0x2400
	strneh r1, [r0, #0x6a]
	moveq r1, #1
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
	ldmfd sp!, {r4, pc}
_0203E34C: .word unk_020B5BB0
_0203E350: .word FUN_0203e354
	arm_func_end FUN_0203e2f4

	arm_func_start FUN_0203e354
FUN_0203e354: ; 0x0203E354
	bx lr
	arm_func_end FUN_0203e354

	arm_func_start FUN_0203e358
FUN_0203e358: ; 0x0203E358
	stmfd sp!, {r3, lr}
	add r1, r0, #0x2400
	mov r2, #2
	ldr r0, _0203E380 ; =FUN_0203e384
	strh r2, [r1, #0x6a]
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0203E380: .word FUN_0203e384
	arm_func_end FUN_0203e358

	arm_func_start FUN_0203e384
FUN_0203e384: ; 0x0203E384
	ldr r2, _0203E3E8 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203E3C0
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	bx lr
_0203E3C0:
	add r0, r3, #0x2400
	mov r1, #1
	strh r1, [r0, #0x6a]
	ldr r1, [r2]
	ldr r0, _0203E3EC ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203E3E8: .word unk_020B5BB0
_0203E3EC: .word 0x0000FFFD
	arm_func_end FUN_0203e384

	arm_func_start FUN_0203e3f0
FUN_0203e3f0: ; 0x0203E3F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r5, r4, #0x2400
	ldrh r1, [r5, #0x6a]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0203E498
_0203E40C: ; jump table
	b _0203E498 ; case 0
	b _0203E428 ; case 1
	b _0203E46C ; case 2
	b _0203E42C ; case 3
	b _0203E458 ; case 4
	b _0203E434 ; case 5
	b _0203E444 ; case 6
_0203E428:
	ldmfd sp!, {r4, r5, r6, pc}
_0203E42C:
	bl FUN_0203f7bc
	b _0203E4C8
_0203E434:
	bl FUN_0203eaf8
	cmp r0, #0
	beq _0203E4C8
	b _0203E4B8
_0203E444:
	add r0, r4, #0x1400
	bl WM_EndDataSharing
	cmp r0, #0
	beq _0203E458
	b _0203E4B8
_0203E458:
	mov r0, r4
	bl FUN_0203eb30
	cmp r0, #0
	bne _0203E4C8
	b _0203E4B8
_0203E46C:
	cmp r1, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #0x6a
	mov r6, #2
_0203E47C:
	mov r1, r6
	add r0, r4, #0x2400
	bl DC_FlushRange
	ldrh r0, [r5, #0x6a]
	cmp r0, #1
	bne _0203E47C
	ldmfd sp!, {r4, r5, r6, pc}
_0203E498:
	add r0, r4, #0x2400
	ldrh r0, [r0, #0x6c]
	tst r0, #2
	mov r0, r4
	beq _0203E4C0
	bl FUN_0203eb30
	cmp r0, #0
	bne _0203E4C8
_0203E4B8:
	mov r0, r4
	b _0203E4C0
_0203E4C0:
	bl FUN_0203e358
	mov r6, r0
_0203E4C8:
	cmp r6, #0
	addne r5, r4, #0x2400
	ldrneh r0, [r5, #0x6a]
	cmpne r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #0x6a
	mov r6, #2
_0203E4E4:
	mov r1, r6
	add r0, r4, #0x2400
	bl DC_FlushRange
	ldrh r0, [r5, #0x6a]
	cmp r0, #1
	bne _0203E4E4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0203e3f0

	arm_func_start FUN_0203e500
FUN_0203e500: ; 0x0203E500
	ldrh r0, [r0, #2]
	cmp r0, #0
	ldrne r0, _0203E528 ; =0x020B5BB0
	movne r1, #9
	ldreq r0, _0203E528 ; =0x020B5BB0
	moveq r1, #0
	ldr r0, [r0]
	add r0, r0, #0x2400
	strh r1, [r0, #0x6a]
	bx lr
_0203E528: .word unk_020B5BB0
	arm_func_end FUN_0203e500

	arm_func_start FUN_0203e52c
FUN_0203e52c: ; 0x0203E52C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r0, r4, #0x2400
	ldrh r0, [r0, #0x6a]
	mov r7, #0
	cmp r0, #1
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0203E604 ; =FUN_0203e500
	bl WM_End
	cmp r0, #2
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r6, r4, #0x2400
	ldrh r0, [r6, #0x6a]
	cmp r0, #1
	bne _0203E590
	add r5, r4, #0x6a
	mov r8, #2
_0203E578:
	mov r1, r8
	add r0, r5, #0x2400
	bl DC_FlushRange
	ldrh r0, [r6, #0x6a]
	cmp r0, #1
	beq _0203E578
_0203E590:
	ldr r0, _0203E608 ; =0x020B5BB0
	ldr r0, [r0]
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x6a]
	cmp r0, #9
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x204]
	cmp r1, #0
	beq _0203E5C4
	mov r0, r4
	bl FUN_0203dfd0
	str r7, [r4, #0x204]
_0203E5C4:
	ldr r1, [r4, #0x208]
	cmp r1, #0
	beq _0203E5DC
	mov r0, r4
	bl FUN_0203dfd0
	str r7, [r4, #0x208]
_0203E5DC:
	ldr r1, [r4, #0x20c]
	cmp r1, #0
	beq _0203E5F4
	mov r0, r4
	bl FUN_0203dfd0
	str r7, [r4, #0x20c]
_0203E5F4:
	ldr r0, _0203E608 ; =0x020B5BB0
	str r7, [r0]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203E604: .word FUN_0203e500
_0203E608: .word unk_020B5BB0
	arm_func_end FUN_0203e52c

	arm_func_start FUN_0203e60c
FUN_0203e60c: ; 0x0203E60C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	add r0, r5, #0x2400
	ldrh r0, [r0, #0x6c]
	tst r0, #2
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x238]
	mov r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r4}
	ldr r2, [r5, #0x208]
	ldr r0, [r5, #0x204]
	ldr r1, [r5, #0x23c]
	add r3, r0, #0x1f
	add r12, r2, #0x1f
	mov r2, r1, lsl #0x10
	ldr r0, _0203E68C ; =FUN_0203e690
	bic r1, r12, #0x1f
	mov r2, r2, lsr #0x10
	bic r3, r3, #0x1f
	bl WM_StartMP
	cmp r0, #2
	addne r1, r5, #0x2000
	strne r0, [r1, #0x440]
	movne r0, #0
	moveq r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0203E68C: .word FUN_0203e690
	arm_func_end FUN_0203e60c

	arm_func_start FUN_0203e690
FUN_0203e690: ; 0x0203E690
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _0203E834 ; =0x020B5BB0
	ldr r2, [r4]
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	bgt _0203E6C0
	beq _0203E708
	b _0203E6E0
_0203E6C0:
	cmp r1, #0xf
	bgt _0203E6E0
	cmp r1, #9
	blt _0203E6E0
	cmpne r1, #0xd
	cmpne r1, #0xf
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
_0203E6E0:
	add r1, r2, #0x2400
	mov r2, #9
	strh r2, [r1, #0x6a]
	ldr r1, _0203E834 ; =0x020B5BB0
	ldrh r2, [r0, #2]
	ldr r0, [r1]
	add sp, sp, #4
	add r0, r0, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r3, r4, pc}
_0203E708:
	ldrh r0, [r0, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0203E82C
_0203E71C: ; jump table
	b _0203E72C ; case 0
	b _0203E82C ; case 1
	b _0203E82C ; case 2
	b _0203E82C ; case 3
_0203E72C:
	add r0, r2, #0x2400
	ldrh r1, [r0, #0x6c]
	orr r1, r1, #2
	strh r1, [r0, #0x6c]
	ldr r12, [r4]
	add r0, r12, #0x2400
	ldrh r1, [r0, #0x68]
	tst r1, #1
	beq _0203E7AC
	ldrh r0, [r0, #0x6a]
	cmp r0, #5
	beq _0203E820
	add r0, r12, #0xc20
	add r0, r0, #0x1000
	mov r1, #0xd
	bl WM_StartKeySharing
	cmp r0, #0
	beq _0203E790
	ldr r1, [r4]
	mov r2, #9
	add r1, r1, #0x2400
	strh r2, [r1, #0x6a]
	ldr r1, [r4]
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
_0203E790:
	ldr r0, _0203E834 ; =0x020B5BB0
	mov r1, #5
	ldr r0, [r0]
	add sp, sp, #4
	add r0, r0, #0x2400
	strh r1, [r0, #0x6a]
	ldmfd sp!, {r3, r4, pc}
_0203E7AC:
	tst r1, #2
	beq _0203E820
	mov r2, #1
	str r2, [sp]
	ldrh r1, [r0, #0x5e]
	ldrh r3, [r0, #0x66]
	add r0, r12, #0x1400
	mov r1, r2, lsl r1
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, #0xd
	bl WM_StartDataSharing
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #6
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4]
	mov r2, #9
	add r1, r1, #0x2400
	strh r2, [r1, #0x6a]
	ldr r1, [r4]
	add sp, sp, #4
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
	ldmfd sp!, {r3, r4, pc}
_0203E820:
	add r0, r12, #0x2400
	mov r1, #4
	strh r1, [r0, #0x6a]
_0203E82C:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0203E834: .word unk_020B5BB0
	arm_func_end FUN_0203e690

	arm_func_start FUN_0203e838
FUN_0203e838: ; 0x0203E838
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x2400
	ldrh r1, [r0, #0x6e]
	ldrh r2, [r0, #0x70]
	ldr r0, _0203E86C ; =FUN_0203e870
	bl WM_SetMPTiming
	cmp r0, #2
	addne r1, r4, #0x2000
	strne r0, [r1, #0x440]
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_0203E86C: .word FUN_0203e870
	arm_func_end FUN_0203e838

	arm_func_start FUN_0203e870
FUN_0203e870: ; 0x0203E870
	stmfd sp!, {r4, lr}
	ldr r4, _0203E898 ; =0x020B5BB0
	ldr r0, [r4]
	bl FUN_0203e60c
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #9
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
	ldmfd sp!, {r4, pc}
_0203E898: .word unk_020B5BB0
	arm_func_end FUN_0203e870

	arm_func_start FUN_0203e89c
FUN_0203e89c: ; 0x0203E89C
	stmfd sp!, {r3, lr}
	mov r2, r0
	add r0, r2, #0x2400
	ldrh r0, [r0, #0x6a]
	cmp r0, #6
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r2, #0x1400
	add r2, r2, #4
	bl WM_StepDataSharing
	cmp r0, #0
	beq _0203E8D4
	cmp r0, #5
	b _0203E8DC
_0203E8D4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0203E8DC:
	ldr r1, _0203E8F4 ; =0x020B5BB0
	ldr r1, [r1]
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0203E8F4: .word unk_020B5BB0
	arm_func_end FUN_0203e89c

	arm_func_start FUN_0203e8f8
FUN_0203e8f8: ; 0x0203E8F8
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203E910
	cmp r1, #0xf
	ldmnefd sp!, {r3, pc}
_0203E910:
	ldr r2, [r0, #0x20]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #1
	cmp r1, #0
	movne r0, #0
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203e8f8

	arm_func_start FUN_0203e930
FUN_0203e930: ; 0x0203E930
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov lr, r0
	add r0, lr, #0x2400
	ldrh r12, [r0, #0x6a]
	mov r6, r1
	mov r5, r2
	cmp r12, #4
	mov r4, r3
	addne sp, sp, #0xc
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r0, #0x6c]
	tst r0, #0x10
	addne sp, sp, #0xc
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [lr, #0x204]
	ldr r1, [lr, #0x238]
	bl DC_FlushRange
	ldr r0, _0203E9D0 ; =0x0000FFFF
	mov r1, r4
	str r0, [sp]
	mov r12, #0xe
	ldr r0, _0203E9D4 ; =FUN_0203e8f8
	mov r2, r6
	mov r3, r5
	str r12, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	bl WM_SetMPDataToPortEx
	ldr r1, _0203E9D8 ; =0x020B5BB0
	cmp r0, #2
	ldr r1, [r1]
	movne r4, #0
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0203E9D0: .word 0x0000FFFF
_0203E9D4: .word FUN_0203e8f8
_0203E9D8: .word unk_020B5BB0
	arm_func_end FUN_0203e930

	arm_func_start FUN_0203e9dc
FUN_0203e9dc: ; 0x0203E9DC
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0203EA3C ; =0x020B5BB0
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bne _0203EA20
	ldrh r0, [r1, #0x12]
	ldrh r2, [r1, #0x10]
	ldr r1, [r1, #0xc]
	blx r3
	ldmfd sp!, {r3, pc}
_0203EA20:
	cmp r0, #9
	ldmnefd sp!, {r3, pc}
	ldrh r0, [r1, #0x12]
	mov r1, #0
	mov r2, r1
	blx r3
	ldmfd sp!, {r3, pc}
_0203EA3C: .word unk_020B5BB0
	arm_func_end FUN_0203e9dc

	arm_func_start FUN_0203ea40
FUN_0203ea40: ; 0x0203EA40
	ldr r2, _0203EA5C ; =0x020B5BB0
	ldr r1, _0203EA60 ; =FUN_0203e9dc
	str r0, [r2, #4]
	ldr r12, _0203EA64 ; =WM_SetPortCallback
	mov r0, #0xe
	mov r2, #0
	bx r12
_0203EA5C: .word unk_020B5BB0
_0203EA60: .word FUN_0203e9dc
_0203EA64: .word WM_SetPortCallback
	arm_func_end FUN_0203ea40

	arm_func_start FUN_0203ea68
FUN_0203ea68: ; 0x0203EA68
	ldrh r0, [r0, #2]
	cmp r0, #0
	bxne lr
	ldr r1, _0203EA94 ; =0x020B5BB0
	ldr r0, _0203EA98 ; =0x0000FFEF
	ldr r1, [r1]
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203EA94: .word unk_020B5BB0
_0203EA98: .word 0x0000FFEF
	arm_func_end FUN_0203ea68

	arm_func_start FUN_0203ea9c
FUN_0203ea9c: ; 0x0203EA9C
	mov r1, r1, lsl #0x10
	ldr r0, _0203EAB0 ; =FUN_0203ea68
	ldr r12, _0203EAB4 ; =WM_SetMPParentSize
	mov r1, r1, lsr #0x10
	bx r12
_0203EAB0: .word FUN_0203ea68
_0203EAB4: .word WM_SetMPParentSize
	arm_func_end FUN_0203ea9c

	arm_func_start FUN_0203eab8
FUN_0203eab8: ; 0x0203EAB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r2
	mov r2, r1
	add r0, r4, #0x1400
	add r1, r4, #4
	mov r4, r3
	bl WM_GetSharedDataAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203eab8

	arm_func_start FUN_0203eaf8
FUN_0203eaf8: ; 0x0203EAF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc20
	add r0, r0, #0x1000
	bl WM_EndKeySharing
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_0203eb30
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203eaf8

	arm_func_start FUN_0203eb30
FUN_0203eb30: ; 0x0203EB30
	stmfd sp!, {r3, lr}
	ldr r0, _0203EB4C ; =FUN_0203eb50
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0203EB4C: .word FUN_0203eb50
	arm_func_end FUN_0203eb30

	arm_func_start FUN_0203eb50
FUN_0203eb50: ; 0x0203EB50
	stmfd sp!, {r3, lr}
	ldr r1, _0203EBB0 ; =0x020B5BB0
	ldr r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r0, [r0, #2]
	cmp r0, #0
	add r0, r1, #0x2400
	ldrh r0, [r0, #0x68]
	beq _0203EB94
	tst r0, #0x100
	mov r0, r1
	beq _0203EB8C
	bl FUN_0203e358
	ldmfd sp!, {r3, pc}
_0203EB8C:
	bl FUN_0203e3f0
	ldmfd sp!, {r3, pc}
_0203EB94:
	tst r0, #0x100
	mov r0, r1
	beq _0203EBA8
	bl FUN_0203ebb4
	ldmfd sp!, {r3, pc}
_0203EBA8:
	bl FUN_0203ec20
	ldmfd sp!, {r3, pc}
_0203EBB0: .word unk_020B5BB0
	arm_func_end FUN_0203eb50

	arm_func_start FUN_0203ebb4
FUN_0203ebb4: ; 0x0203EBB4
	stmfd sp!, {r3, lr}
	ldr r0, _0203EBD0 ; =FUN_0203ebd4
	bl WM_EndParent
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0203EBD0: .word FUN_0203ebd4
	arm_func_end FUN_0203ebb4

	arm_func_start FUN_0203ebd4
FUN_0203ebd4: ; 0x0203EBD4
	ldr r1, _0203EC18 ; =0x020B5BB0
	ldr r2, [r1]
	cmp r2, #0
	bxeq lr
	ldrh r0, [r0, #2]
	cmp r0, #0
	bxne lr
	add r0, r2, #0x2400
	mov r2, #1
	strh r2, [r0, #0x6a]
	ldr r1, [r1]
	ldr r0, _0203EC1C ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203EC18: .word unk_020B5BB0
_0203EC1C: .word 0x0000FFFD
	arm_func_end FUN_0203ebd4

	arm_func_start FUN_0203ec20
FUN_0203ec20: ; 0x0203EC20
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr r0, _0203EC54 ; =FUN_0203ec5c
	mov r1, r4
	bl WM_Disconnect
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0203EC58 ; =0x020B5BB0
	ldr r0, [r0]
	bl FUN_0203e358
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0203EC54: .word FUN_0203ec5c
_0203EC58: .word unk_020B5BB0
	arm_func_end FUN_0203ec20

	arm_func_start FUN_0203ec5c
FUN_0203ec5c: ; 0x0203EC5C
	ldr r1, _0203ECA0 ; =0x020B5BB0
	ldr r2, [r1]
	cmp r2, #0
	bxeq lr
	ldrh r0, [r0, #2]
	cmp r0, #0
	bxne lr
	add r0, r2, #0x2400
	mov r2, #1
	strh r2, [r0, #0x6a]
	ldr r1, [r1]
	ldr r0, _0203ECA4 ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203ECA0: .word unk_020B5BB0
_0203ECA4: .word 0x0000FFFD
	arm_func_end FUN_0203ec5c

	arm_func_start FUN_0203eca8
FUN_0203eca8: ; 0x0203ECA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x2400
	ldrh r0, [r0, #0x6a]
	mov r4, r1
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r2
	add r1, r5, #0x220
	mov r2, #0x14
	bl MI_CpuCopy8
	ldr r0, _0203ED04 ; =FUN_0203ed08
	mov r1, r4
	add r3, r5, #0x2400
	mov r12, #8
	add r2, r5, #0x220
	strh r12, [r3, #0x6a]
	bl WM_SetWEPKey
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0203ED04: .word FUN_0203ed08
	arm_func_end FUN_0203eca8

	arm_func_start FUN_0203ed08
FUN_0203ed08: ; 0x0203ED08
	ldr r2, _0203ED68 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203ED44
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	bx lr
_0203ED44:
	add r0, r3, #0x2400
	mov r1, #1
	strh r1, [r0, #0x6a]
	ldr r0, [r2]
	add r0, r0, #0x2400
	ldrh r1, [r0, #0x6c]
	orr r1, r1, #4
	strh r1, [r0, #0x6c]
	bx lr
_0203ED68: .word unk_020B5BB0
	arm_func_end FUN_0203ed08

	arm_func_start FUN_0203ed6c
FUN_0203ed6c: ; 0x0203ED6C
	stmfd sp!, {r3, lr}
	add r2, r0, #0x2400
	ldrh r3, [r2, #0x6a]
	cmp r3, #1
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	strh r1, [r2, #0x62]
	add r2, r0, #0x300
	mov r12, #0
	mov r3, #0x65
	mov r1, #1
	strh r12, [r2, #0x62]
	strh r3, [r2, #0x64]
	bl FUN_0203eda8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203ed6c

	arm_func_start FUN_0203eda8
FUN_0203eda8: ; 0x0203EDA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _0203EE04
_0203EDE0:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _0203EDE0
_0203EE04:
	add r1, r5, #0x2400
	mov r2, #2
	strh r2, [r1, #0x6a]
	mov r3, r4
	mov r4, #0x1e
	ldr r0, _0203EE44 ; =FUN_0203ee48
	mov r1, #3
	mov r2, #0x11
	str r4, [sp]
	bl WM_MeasureChannel
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0203EE44: .word FUN_0203ee48
	arm_func_end FUN_0203eda8

	arm_func_start FUN_0203ee48
FUN_0203ee48: ; 0x0203EE48
	stmfd sp!, {r4, lr}
	ldr r2, _0203EEF8 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203EE88
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r4, pc}
_0203EE88:
	add r1, r3, #0x300
	ldrh r4, [r1, #0x64]
	ldrh r3, [r0, #0xa]
	ldrh r12, [r0, #8]
	cmp r4, r3
	strhih r12, [r1, #0x62]
	ldrhi r1, [r2]
	ldrhih r2, [r0, #0xa]
	addhi r0, r1, #0x300
	ldr r4, _0203EEF8 ; =0x020B5BB0
	strhih r2, [r0, #0x64]
	add r0, r12, #1
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_0203eda8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r3, [r4]
	mov r1, #1
	add r0, r3, #0x300
	ldrh r2, [r0, #0x62]
	add r0, r3, #0x2400
	strh r2, [r0, #0x62]
	ldr r0, [r4]
	add r0, r0, #0x2400
	strh r1, [r0, #0x6a]
	ldmfd sp!, {r4, pc}
_0203EEF8: .word unk_020B5BB0
	arm_func_end FUN_0203ee48

	arm_func_start FUN_0203eefc
FUN_0203eefc: ; 0x0203EEFC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	add r0, r7, #0x2400
	ldrh r4, [r0, #0x6a]
	mov r6, r2
	mov r5, r3
	cmp r4, #1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	orr r1, r1, #0x100
	mov r4, #0
	strh r1, [r0, #0x68]
	strh r4, [r0, #0x5c]
	bl WM_GetNextTgid
	add r1, r7, #0x200
	strh r0, [r1, #0x34]
	add r0, r7, #0x2400
	ldrh r2, [r1, #0x34]
	add r1, r7, #0x300
	ldrh r0, [r0, #0x62]
	strh r2, [r1, #0x2c]
	strh r0, [r1, #0x52]
	bl WM_GetDispersionBeaconPeriod
	add r2, r7, #0x2400
	add r1, r7, #0x300
	ldrh r8, [r2, #0x5e]
	ldrh lr, [r2, #0x64]
	ldrh r12, [r2, #0x66]
	ldrh r3, [r2, #0x68]
	sub r8, r8, #1
	mov r2, #1
	strh r0, [r1, #0x38]
	strh r8, [r1, #0x30]
	tst r3, #1
	strh r2, [r1, #0x2e]
	ldr r0, _0203EFD4 ; =FUN_0203efd8
	strh lr, [r1, #0x54]
	strh r12, [r1, #0x56]
	strh r4, [r1, #0x36]
	strh r4, [r1, #0x32]
	moveq r2, r4
	add r4, r7, #0x2400
	add r3, r7, #0x300
	mov r8, #0
	add r1, r7, #0x320
	strh r2, [r3, #0x34]
	strh r8, [r4, #0x60]
	strh r6, [r4, #0x6e]
	strh r5, [r4, #0x70]
	bl WM_SetParentParameter
	cmp r0, #2
	movne r0, r8
	moveq r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203EFD4: .word FUN_0203efd8
	arm_func_end FUN_0203eefc

	arm_func_start FUN_0203efd8
FUN_0203efd8: ; 0x0203EFD8
	stmfd sp!, {r3, lr}
	ldr r2, _0203F024 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203F018
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r3, pc}
_0203F018:
	ldr r0, _0203F028 ; =FUN_0203f02c
	bl WM_StartParent
	ldmfd sp!, {r3, pc}
_0203F024: .word unk_020B5BB0
_0203F028: .word FUN_0203f02c
	arm_func_end FUN_0203efd8

	arm_func_start FUN_0203f02c
FUN_0203f02c: ; 0x0203F02C
	stmfd sp!, {r4, lr}
	ldr r2, _0203F164 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203F06C
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r4, pc}
_0203F06C:
	ldrh r1, [r0, #8]
	cmp r1, #7
	bgt _0203F094
	bge _0203F0B0
	cmp r1, #2
	bgt _0203F148
	cmp r1, #0
	blt _0203F148
	beq _0203F100
	b _0203F148
_0203F094:
	cmp r1, #9
	bgt _0203F0A4
	beq _0203F0D0
	b _0203F148
_0203F0A4:
	cmp r1, #0x1a
	beq _0203F0FC
	b _0203F148
_0203F0B0:
	ldrh r0, [r0, #0x10]
	add r1, r3, #0x2400
	mov r2, #1
	mov r0, r2, lsl r0
	ldrh r2, [r1, #0x60]
	mov r0, r0, lsl #0x10
	orr r0, r2, r0, lsr #16
	b _0203F0F4
_0203F0D0:
	ldrh r0, [r0, #0x10]
	mov r2, #1
	add r1, r3, #0x2400
	mov r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mvn r0, r0, lsr #16
	ldrh r2, [r1, #0x60]
	mov r0, r0, lsl #0x10
	and r0, r2, r0, lsr #16
_0203F0F4:
	strh r0, [r1, #0x60]
	b _0203F148
_0203F0FC:
	b _0203F0D0
_0203F100:
	add r0, r3, #0x2400
	ldrh r1, [r0, #0x6e]
	cmp r1, #0
	ldrneh r0, [r0, #0x70]
	cmpne r0, #0
	beq _0203F128
	mov r0, r3
	bl FUN_0203e838
	cmp r0, #0
	bne _0203F148
_0203F128:
	ldr r4, _0203F164 ; =0x020B5BB0
	ldr r0, [r4]
	bl FUN_0203e60c
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #9
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
_0203F148:
	ldr r0, _0203F164 ; =0x020B5BB0
	mov r1, #2
	ldr r0, [r0]
	add r0, r0, #0x460
	add r0, r0, #0x2000
	bl DC_FlushRange
	ldmfd sp!, {r4, pc}
_0203F164: .word unk_020B5BB0
	arm_func_end FUN_0203f02c

	arm_func_start FUN_0203f168
FUN_0203f168: ; 0x0203F168
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r3, r5, #0x2400
	ldrh r0, [r3, #0x6a]
	mov r4, r1
	mov r7, r2
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _0203F228 ; =0x00001078
	mov r6, #3
	add r0, r5, #0x380
	mov r1, #0
	strh r6, [r3, #0x6a]
	bl MI_CpuFill8
	cmp r7, #0
	add r0, r5, #0x8a
	mov r2, #6
	beq _0203F1C4
	mov r1, r7
	add r0, r0, #0x300
	bl MI_CpuCopy8
	b _0203F1D0
_0203F1C4:
	add r0, r0, #0x300
	mov r1, #0xff
	bl MI_CpuFill8
_0203F1D0:
	mov r6, #0
	add r3, r5, #0x1300
	add r8, r5, #0x3e0
	add lr, r5, #0x1000
	mov r1, r6
	add r12, r5, #0x300
	mov r7, #0x400
	add r0, r5, #0x7e0
	mov r2, #0xc00
	strh r4, [r3, #0xf4]
	str r8, [r5, #0x380]
	strh r7, [r12, #0x84]
	strb r6, [lr, #0x3e2]
	bl MI_CpuFill8
	add r0, r5, #0xe3
	mov r1, r6
	add r0, r0, #0x1300
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r5
	bl FUN_0203f22c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203F228: .word 0x00001078
	arm_func_end FUN_0203f168

	arm_func_start FUN_0203f22c
FUN_0203f22c: ; 0x0203F22C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r6, #0x1300
	ldrh r7, [r1, #0xf4]
	mov r2, #1
	mov r5, r2
	cmp r7, #0
	addeq r1, r7, #1
	moveq r1, r1, lsl #0x10
	moveq r7, r1, lsr #0x10
_0203F270:
	cmp r7, #0x10
	movhi r7, r2
	sub r1, r7, #1
	tst r0, r5, lsl r1
	mov lr, r5, lsl r1
	addeq r1, r7, #1
	moveq r1, r1, lsl #0x10
	moveq r7, r1, lsr #0x10
	beq _0203F270
	add r12, r6, #0x300
	add r3, r6, #0x1300
	mov r4, #0
	add r0, r6, #0x394
	mov r1, #0xff
	mov r2, #0x20
	strh r7, [r3, #0xf4]
	strh lr, [r12, #0x86]
	strh r5, [r12, #0x90]
	strh r4, [r12, #0x92]
	bl MI_CpuFill8
	bl WM_GetDispersionScanPeriod
	add r2, r6, #0x2400
	ldrh r3, [r2, #0x6c]
	add r1, r6, #0x300
	strh r0, [r1, #0x88]
	orr r3, r3, #1
	ldr r0, _0203F2F8 ; =FUN_0203f330
	add r1, r6, #0x380
	strh r3, [r2, #0x6c]
	bl WM_StartScanEx
	cmp r0, #2
	movne r0, r4
	moveq r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203F2F8: .word FUN_0203f330
	arm_func_end FUN_0203f22c

	arm_func_start FUN_0203f2fc
FUN_0203f2fc: ; 0x0203F2FC
	mov r12, #0
_0203F300:
	ldrb r3, [r0]
	ldrb r2, [r1]
	cmp r3, r2
	movne r0, #0
	bxne lr
	add r12, r12, #1
	cmp r12, #0x10
	add r0, r0, #1
	add r1, r1, #1
	blt _0203F300
	mov r0, #1
	bx lr
	arm_func_end FUN_0203f2fc

	arm_func_start FUN_0203f330
FUN_0203f330: ; 0x0203F330
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	ldr r0, _0203F7AC ; =0x020B5BB0
	mov r4, #1
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	cmp r1, #0
	beq _0203F384
	add r0, r0, #0x2400
	mov r1, #9
	strh r1, [r0, #0x6a]
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r1, [r0]
	ldr r0, [sp]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203F384:
	add r1, r0, #0x2400
	ldrh r1, [r1, #0x6a]
	cmp r1, #3
	beq _0203F39C
	bl FUN_0203f7bc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203F39C:
	ldr r1, [sp]
	ldrh r1, [r1, #8]
	cmp r1, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #4
	beq _0203F3C0
	cmp r1, #5
	beq _0203F460
	b _0203F788
_0203F3C0:
	mov r6, #0xc0
	mov r5, #0
	mov r7, r6
	b _0203F454
_0203F3D0:
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r1, [r0]
	add r0, r1, r5
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3e3]
	cmp r0, #0
	beq _0203F450
	add r0, r1, #0xe3
	add r1, r0, #0x1300
	ldrb r0, [r1, r5]
	sub r0, r0, #1
	strb r0, [r1, r5]
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r1, [r0]
	add r0, r1, r5
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3e3]
	cmp r0, #0
	bne _0203F450
	add r0, r1, #0x7e0
	mla r0, r5, r7, r0
	mov r1, #0
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _0203F7AC ; =0x020B5BB0
	mvn r1, r4, lsl r5
	ldr r0, [r0]
	and r1, r1, #0xff
	add r0, r0, #0x1000
	ldrb r2, [r0, #0x3e2]
	and r1, r2, r1
	strb r1, [r0, #0x3e2]
_0203F450:
	add r5, r5, #1
_0203F454:
	cmp r5, #0x10
	blt _0203F3D0
	b _0203F788
_0203F460:
	ldr r1, [sp]
	ldrh r1, [r1, #0xe]
	cmp r1, #0
	beq _0203F47C
	add r0, r0, #0x3e0
	mov r1, #0x400
	bl DC_InvalidateRange
_0203F47C:
	mov r5, #0
	b _0203F778
_0203F484:
	ldr r0, [sp]
	mov r2, #0
	add r0, r0, r5, lsl #2
	ldr r6, [r0, #0x10]
	mov r3, r2
	ldrh r1, [r6, #0x3c]
	mov r0, r2
	cmp r1, #0x10
	blo _0203F4B0
	cmp r1, #0x80
	movls r0, #1
_0203F4B0:
	cmp r0, #0
	beq _0203F4C8
	ldrb r0, [r6, #0x4a]
	add r0, r0, #0x10
	cmp r1, r0
	moveq r3, #1
_0203F4C8:
	cmp r3, #0
	beq _0203F4DC
	ldrh r0, [r6, #0x40]
	cmp r0, #1
	moveq r2, #1
_0203F4DC:
	cmp r2, #0
	beq _0203F774
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r2, [r6, #0x44]
	ldr r1, [r0]
	ldr r0, [r1, #0x328]
	cmp r2, r0
	bne _0203F774
	ldrb r0, [r6, #0x4b]
	tst r0, #1
	beq _0203F774
	tst r0, #2
	bne _0203F774
	ldr r1, [r1, #0x320]
	add r0, r6, #0x50
	bl FUN_0203f2fc
	cmp r0, #0
	beq _0203F774
	ldrb r0, [r6, #0x75]
	cmp r0, #0
	bne _0203F774
	ldr r0, _0203F7AC ; =0x020B5BB0
	mov r12, #0
	ldr r0, [r0]
	add r1, r0, #0x3e4
	add r11, r1, #0x400
	b _0203F604
_0203F548:
	add r1, r0, r12
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x3e3]
	cmp r1, #0
	beq _0203F600
	mov r1, #0xc0
	mul r2, r12, r1
	ldrb r10, [r11, r2]
	ldrb r9, [r6, #4]
	add r1, r11, r2
	mov r2, #0
	cmp r10, r9
	ldreqb r10, [r1, #1]
	ldreqb r9, [r6, #5]
	mov r8, r2
	mov r3, r2
	cmpeq r10, r9
	moveq r8, r4
	mov lr, r2
	mov r7, r2
	cmp r8, #0
	beq _0203F5B0
	ldrb r9, [r1, #2]
	ldrb r8, [r6, #6]
	cmp r9, r8
	moveq r7, r4
_0203F5B0:
	cmp r7, #0
	beq _0203F5C8
	ldrb r8, [r1, #3]
	ldrb r7, [r6, #7]
	cmp r8, r7
	moveq lr, r4
_0203F5C8:
	cmp lr, #0
	beq _0203F5E0
	ldrb r8, [r1, #4]
	ldrb r7, [r6, #8]
	cmp r8, r7
	moveq r3, r4
_0203F5E0:
	cmp r3, #0
	beq _0203F5F8
	ldrb r3, [r1, #5]
	ldrb r1, [r6, #9]
	cmp r3, r1
	moveq r2, r4
_0203F5F8:
	cmp r2, #0
	bne _0203F60C
_0203F600:
	add r12, r12, #1
_0203F604:
	cmp r12, #0x10
	blt _0203F548
_0203F60C:
	cmp r12, #0x10
	ldr r1, _0203F7AC ; =0x020B5BB0
	blt _0203F64C
	mov r12, #0
	ldr r2, [r1]
	b _0203F63C
_0203F624:
	add r0, r2, r12
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3e3]
	cmp r0, #0
	beq _0203F644
	add r12, r12, #1
_0203F63C:
	cmp r12, #0x10
	blt _0203F624
_0203F644:
	cmp r12, #0x10
	bge _0203F788
_0203F64C:
	mov r0, #0xc0
	mul r2, r12, r0
	ldr r0, [r1]
	ldrh r1, [r6]
	add r3, r0, #0x7e0
	add r0, r3, r2
	strh r1, [r3, r2]
	ldrh r1, [r6, #2]
	add r8, r6, #0xc
	add r7, r0, #0xc
	strh r1, [r0, #2]
	ldrb r2, [r6, #4]
	ldrb r1, [r6, #5]
	mov r3, #0x10
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldrb r2, [r6, #6]
	ldrb r1, [r6, #7]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	ldrb r2, [r6, #8]
	ldrb r1, [r6, #9]
	strb r2, [r0, #8]
	strb r1, [r0, #9]
	ldrh r1, [r6, #0xa]
	strh r1, [r0, #0xa]
_0203F6B4:
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r8, r8, #2
	subs r3, r3, #1
	strb r1, [r7, #1]
	strb r2, [r7], #2
	bne _0203F6B4
	ldrh r1, [r6, #0x2c]
	add r9, r6, #0x40
	add r8, r0, #0x40
	strh r1, [r0, #0x2c]
	ldrh r2, [r6, #0x2e]
	ldrh r1, [r6, #0x30]
	mov r7, #8
	strh r2, [r0, #0x2e]
	strh r1, [r0, #0x30]
	ldrh r1, [r6, #0x32]
	strh r1, [r0, #0x32]
	ldrh r1, [r6, #0x34]
	strh r1, [r0, #0x34]
	ldrh r1, [r6, #0x36]
	strh r1, [r0, #0x36]
	ldrh r1, [r6, #0x38]
	strh r1, [r0, #0x38]
	ldrh r1, [r6, #0x3a]
	strh r1, [r0, #0x3a]
	ldrh r1, [r6, #0x3c]
	strh r1, [r0, #0x3c]
	ldrh r1, [r6, #0x3e]
	strh r1, [r0, #0x3e]
_0203F72C:
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _0203F72C
	ldr r1, _0203F7AC ; =0x020B5BB0
	mov r0, #1
	ldr r3, [r1]
	mov r2, r0, lsl r12
	add r0, r3, r12
	add r0, r0, #0x1000
	mov r3, #0x2c
	strb r3, [r0, #0x3e3]
	ldr r0, [r1]
	and r1, r2, #0xff
	add r0, r0, #0x1000
	ldrb r2, [r0, #0x3e2]
	orr r1, r2, r1
	strb r1, [r0, #0x3e2]
_0203F774:
	add r5, r5, #1
_0203F778:
	ldr r0, [sp]
	ldrh r0, [r0, #0xe]
	cmp r5, r0
	blt _0203F484
_0203F788:
	ldr r1, _0203F7AC ; =0x020B5BB0
	ldr r0, [r1]
	add r0, r0, #0x1300
	ldrh r2, [r0, #0xf4]
	add r2, r2, #1
	strh r2, [r0, #0xf4]
	ldr r0, [r1]
	bl FUN_0203f22c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203F7AC: .word unk_020B5BB0
	arm_func_end FUN_0203f330

	arm_func_start FUN_0203f7b0
FUN_0203f7b0: ; 0x0203F7B0
	ldr r12, _0203F7B8 ; =FUN_0203f7bc
	bx r12
_0203F7B8: .word FUN_0203f7bc
	arm_func_end FUN_0203f7b0

	arm_func_start FUN_0203f7bc
FUN_0203f7bc: ; 0x0203F7BC
	stmfd sp!, {r3, lr}
	add r1, r0, #0x2400
	ldrh r0, [r1, #0x6a]
	cmp r0, #3
	ldmnefd sp!, {r3, pc}
	ldr r0, _0203F7E4 ; =FUN_0203f7e8
	mov r2, #2
	strh r2, [r1, #0x6a]
	bl WM_EndScan
	ldmfd sp!, {r3, pc}
_0203F7E4: .word FUN_0203f7e8
	arm_func_end FUN_0203f7bc

	arm_func_start FUN_0203f7e8
FUN_0203f7e8: ; 0x0203F7E8
	ldr r2, _0203F838 ; =0x020B5BB0
	ldr r1, [r2]
	cmp r1, #0
	bxeq lr
	ldrh r0, [r0, #2]
	cmp r0, #0
	addne r0, r1, #0x2400
	movne r1, #9
	strneh r1, [r0, #0x6a]
	bxne lr
	add r1, r1, #0x2400
	ldrh r12, [r1, #0x6c]
	ldr r0, _0203F83C ; =0x0000FFFE
	mov r3, #1
	and r0, r12, r0
	strh r0, [r1, #0x6c]
	ldr r0, [r2]
	add r0, r0, #0x2400
	strh r3, [r0, #0x6a]
	bx lr
_0203F838: .word unk_020B5BB0
_0203F83C: .word 0x0000FFFE
	arm_func_end FUN_0203f7e8

	arm_func_start FUN_0203f840
FUN_0203f840: ; 0x0203F840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r3, r6, #0x1000
	ldrb r3, [r3, #0x3e2]
	mov r5, #1
	mov r4, #0
	tst r3, r5, lsl r2
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r3, r6, #0x2400
	ldrh r7, [r3, #0x6a]
	cmp r7, #3
	bne _0203F880
	bl FUN_0203f7bc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203F880:
	cmp r7, #1
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r3, #0x6c]
	tst r0, #2
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x7e0
	mov r7, #0xc0
	mla r0, r2, r7, r0
	orr r12, r1, #0x200
	mov r2, r7
	add r1, r6, #0x260
	strh r12, [r3, #0x68]
	strh r4, [r3, #0x60]
	bl MI_CpuCopy8
	mov r1, r7
	add r0, r6, #0x260
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	add r0, r6, #0x2400
	ldrh r0, [r0, #0x6c]
	add r2, r6, #0x44
	add r1, r6, #0x260
	tst r0, #4
	moveq r5, r4
	mov r0, r5, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r4, #1
	ldr r0, _0203F918 ; =FUN_0203f9b8
	mov r3, r4
	add r2, r2, #0x2400
	str r5, [sp]
	bl WM_StartConnectEx
	cmp r0, #2
	movne r0, #0
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203F918: .word FUN_0203f9b8
	arm_func_end FUN_0203f840

	arm_func_start FUN_0203f91c
FUN_0203f91c: ; 0x0203F91C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0203F948 ; =FUN_0203f94c
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	addeq r0, r4, #0x2400
	moveq r1, #2
	streqh r1, [r0, #0x6a]
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_0203F948: .word FUN_0203f94c
	arm_func_end FUN_0203f91c

	arm_func_start FUN_0203f94c
FUN_0203f94c: ; 0x0203F94C
	ldr r2, _0203F9B0 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203F988
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	bx lr
_0203F988:
	add r0, r3, #0x2400
	mov r1, #1
	strh r1, [r0, #0x6a]
	ldr r1, [r2]
	ldr r0, _0203F9B4 ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203F9B0: .word unk_020B5BB0
_0203F9B4: .word 0x0000FFFD
	arm_func_end FUN_0203f94c

	arm_func_start FUN_0203f9b8
FUN_0203f9b8: ; 0x0203F9B8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0203FB58 ; =0x020B5BB0
	mov r6, r0
	ldr r0, [r4]
	mov r5, #9
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r6, #2]
	cmp r1, #0xb
	bgt _0203FA0C
	bge _0203FA30
	cmp r1, #6
	ldmgtfd sp!, {r4, r5, r6, pc}
	cmp r1, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	beq _0203FA84
	cmp r1, #1
	beq _0203FA4C
	cmp r1, #6
	beq _0203FA68
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA0C:
	cmp r1, #0xc
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA30:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA4C:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA68:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA84:
	ldrh r1, [r6, #8]
	cmp r1, #9
	bgt _0203FAC4
	cmp r1, #0
	addge pc, pc, r1, lsl #2
	b _0203FB4C
_0203FA9C: ; jump table
	b _0203FB4C ; case 0
	b _0203FB4C ; case 1
	b _0203FB4C ; case 2
	b _0203FB4C ; case 3
	b _0203FB4C ; case 4
	b _0203FB4C ; case 5
	ldmfd sp!, {r4, r5, r6, pc} ; case 6
	b _0203FAD0 ; case 7
	ldmfd sp!, {r4, r5, r6, pc} ; case 8
	b _0203FB30 ; case 9
_0203FAC4:
	cmp r1, #0x1a
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _0203FB4C
_0203FAD0:
	bl FUN_0203e60c
	cmp r0, #0
	ldr r0, [r4]
	addeq r0, r0, #0x2400
	streqh r5, [r0, #0x6a]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r6, #0xa]
	add r0, r0, #0x2400
	mov r2, #1
	strh r1, [r0, #0x5c]
	ldr r1, [r4]
	ldrh r0, [r6, #0xa]
	add r1, r1, #0x2400
	ldrh r3, [r1, #0x60]
	mov r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	orr r0, r3, r0, lsr #16
	strh r0, [r1, #0x60]
	ldr r0, [r4]
	mov r1, #2
	add r0, r0, #0x460
	add r0, r0, #0x2000
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_0203FB30:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	mov r1, #0x14
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FB4C:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FB58: .word unk_020B5BB0
	arm_func_end FUN_0203f9b8

	arm_func_start FUN_0203fb5c
FUN_0203fb5c: ; 0x0203FB5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02040388
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r2, _0203FBD0 ; =FX_SinCosTable_
	mov r1, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r0, [r2, r0]
	ldr r12, [r5]
	smull r1, r2, r4, r1
	adds r3, r1, #0x800
	smull r1, r0, r4, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r3, r12, r3
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	ldr r2, [r5, #4]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r3, [r5, #8]
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0203FBD0: .word FX_SinCosTable_
	arm_func_end FUN_0203fb5c

	arm_func_start FUN_0203fbd4
FUN_0203fbd4: ; 0x0203FBD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r1
	bl FUN_02040388
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	ldr r1, _0203FC6C ; =FX_SinCosTable_
	mov r2, r0, lsl #1
	mov r0, r3, lsl #1
	ldrsh r2, [r1, r2]
	ldrsh r1, [r1, r0]
	ldr r0, [r6]
	smull r2, r3, r4, r2
	adds r5, r2, #0x800
	smull r1, r2, r4, r1
	adc r7, r3, #0
	adds r3, r1, #0x800
	mov r5, r5, lsr #0xc
	ldr r1, [r6, #8]
	adc r2, r2, #0
	mov r4, r3, lsr #0xc
	orr r5, r5, r7, lsl #20
	orr r4, r4, r2, lsl #20
	bl FUN_0203fc70
	mov r7, r0
	ldr r0, [r6, #4]
	ldr r1, [r6, #0xc]
	bl FUN_0203fc70
	sub r3, r7, r5
	sub r2, r0, r4
	add r1, r7, r5
	add r0, r0, r4
	str r3, [r6]
	str r2, [r6, #4]
	str r1, [r6, #8]
	str r0, [r6, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203FC6C: .word FX_SinCosTable_
	arm_func_end FUN_0203fbd4

	arm_func_start FUN_0203fc70
FUN_0203fc70: ; 0x0203FC70
	cmp r0, r1
	blt _0203FC88
	subs r0, r0, r1
	rsbmi r0, r0, #0
	add r0, r1, r0, asr #1
	bx lr
_0203FC88:
	subs r1, r1, r0
	rsbmi r1, r1, #0
	add r0, r0, r1, asr #1
	bx lr
	arm_func_end FUN_0203fc70

	arm_func_start FUN_0203fc98
FUN_0203fc98: ; 0x0203FC98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r5, r1
	mov r9, r2
	mov r4, r3
	mov r6, r0
	mov r0, r5
	mov r1, r9
	mov r2, r4
	bl FUN_02040b68
	cmp r0, #0
	bne _0203FCDC
	mov r0, r6
	bl FUN_020404cc
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203FCDC:
	ldr r0, [r5]
	ldr r1, [r9]
	bl FUN_0203fc70
	mov r8, r0
	ldr r0, [r5, #4]
	ldr r1, [r9, #4]
	bl FUN_0203fc70
	ldr r2, [r5, #4]
	ldr r1, [r9, #4]
	mov r7, r0
	sub r0, r2, r1
	ldr r2, [r5]
	ldr r1, [r9]
	sub r1, r2, r1
	bl FX_Atan2Idx
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r2, r0, lsl #1
	ldr r9, _0203FDEC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r3, [r9, r2]
	ldrsh r2, [r9, r1]
	ldr r0, [r5]
	add r3, r8, r3, lsl #4
	add r2, r7, r2, lsl #4
	ldr r1, [r4]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	bl FUN_0203fc70
	mov r8, r0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl FUN_0203fc70
	mov r7, r0
	ldr r0, [r4, #4]
	ldmia r5, {r2, r3}
	ldr r1, [r4]
	sub r0, r3, r0
	sub r1, r2, r1
	bl FX_Atan2Idx
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r3, r0, lsl #1
	add r0, r3, #1
	mov r0, r0, lsl #1
	ldrsh r1, [r9, r0]
	mov r0, r3, lsl #1
	ldrsh r0, [r9, r0]
	add r1, r8, r1, lsl #4
	str r1, [sp, #8]
	add r0, r7, r0, lsl #4
	str r0, [sp, #0xc]
	mov r2, r6
	add r0, sp, #0x10
	add r1, sp, #0
	str r8, [sp]
	str r7, [sp, #4]
	bl FUN_01ff852c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203FDEC: .word FX_SinCosTable_
	arm_func_end FUN_0203fc98

	arm_func_start FUN_0203fdf0
FUN_0203fdf0: ; 0x0203FDF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10]
	ldr r3, [r10, #8]
	mov r9, r1
	cmp r0, r3
	ldreq r4, [r10, #4]
	ldreq r1, [r10, #0xc]
	mov r8, r2
	mov r5, #0
	cmpeq r4, r1
	bne _0203FE7C
	ldr r3, [r9]
	ldr r1, [r9, #8]
	cmp r3, r1
	ldreq r2, [r9, #4]
	ldreq r1, [r9, #0xc]
	cmpeq r2, r1
	bne _0203FE68
	cmp r0, r3
	cmpeq r4, r2
	bne _0203FE60
	cmp r8, #0
	strne r0, [r8]
	ldrne r0, [r10, #4]
	strne r0, [r8, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203FE60:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203FE68:
	mov r0, r10
	mov r10, r9
	mov r9, r0
	mov r5, #1
	b _0203FE98
_0203FE7C:
	ldr r1, [r9]
	ldr r0, [r9, #8]
	cmp r1, r0
	ldreq r1, [r9, #4]
	ldreq r0, [r9, #0xc]
	cmpeq r1, r0
	moveq r5, #1
_0203FE98:
	mov r0, r10
	bl FUN_02040388
	mov r6, r0
	mov r0, r9
	bl FUN_02040388
	mov r7, r0
	cmp r8, #0
	beq _0203FEC8
	mov r0, r8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_0203FEC8:
	ldr r0, _02040110 ; =0x00007FFF
	and r1, r6, r0
	and r0, r7, r0
	cmp r1, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, r6
	mov r3, r9
	ldmia r10, {r0, r1}
	bl FUN_020404dc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r6, #0x8000
	mov r2, r0, lsl #0x10
	ldr r0, [r10, #8]
	ldr r1, [r10, #0xc]
	mov r3, r9
	mov r2, r2, lsr #0x10
	bl FUN_020404dc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	cmp r8, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	beq _0203FF54
	ldr r1, [r9]
	mov r0, #1
	str r1, [r8]
	ldr r1, [r9, #4]
	str r1, [r8, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203FF54:
	mov r0, r6, asr #4
	mov r5, r0, lsl #1
	add r2, r5, #1
	mov r0, r7, asr #4
	mov r3, r0, lsl #1
	add r1, r3, #1
	ldr r0, _02040114 ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	ldrsh r6, [r0, r2]
	mov r5, r5, lsl #1
	mov r2, r3, lsl #1
	mov r1, r1, lsl #1
	cmp r6, #0
	ldrsh r5, [r0, r5]
	ldrsh r11, [r0, r2]
	ldrsh r7, [r0, r1]
	beq _02040050
	smull r0, r3, r6, r11
	adds r1, r0, #0x800
	ldmia r9, {r2, r11}
	ldr r0, [r10]
	ldr r9, [r10, #4]
	adc r3, r3, r4
	mov r1, r1, lsr #0xc
	sub r9, r11, r9
	orr r1, r1, r3, lsl #20
	sub r0, r2, r0
	smull r0, r2, r1, r0
	adds r0, r0, #0x800
	smull r3, r9, r7, r9
	adc r2, r2, r4
	adds r11, r3, #0x800
	mov r3, r0, lsr #0xc
	adc r0, r9, r4
	mov r9, r11, lsr #0xc
	orr r9, r9, r0, lsl #20
	smull r0, r12, r6, r9
	adds r0, r0, #0x800
	orr r3, r3, r2, lsl #20
	smull r11, r9, r7, r5
	adc r2, r12, r4
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	sub r0, r3, r0
	adds r3, r11, #0x800
	adc r2, r9, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r1, r1, r3
	bl FX_Div
	mov r7, r0
	smull r1, r0, r7, r5
	adds r1, r1, #0x800
	adc r2, r0, r4
	mov r0, r1, lsr #0xc
	mov r1, r6
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r10]
	add r1, r7, r1
	str r1, [r8]
	ldr r1, [r10, #4]
	b _02040100
_02040050:
	smull r0, r3, r7, r5
	adds r1, r0, #0x800
	adc r3, r3, r4
	mov r1, r1, lsr #0xc
	ldmia r10, {r2, r10}
	ldmia r9, {r0, r5}
	sub r5, r10, r5
	orr r1, r1, r3, lsl #20
	sub r0, r2, r0
	smull r0, r2, r1, r0
	adds r0, r0, #0x800
	smull r3, r5, r6, r5
	adc r2, r2, r4
	adds r10, r3, #0x800
	mov r3, r0, lsr #0xc
	adc r0, r5, r4
	mov r5, r10, lsr #0xc
	orr r5, r5, r0, lsl #20
	smull r0, r12, r7, r5
	adds r0, r0, #0x800
	orr r3, r3, r2, lsl #20
	smull r10, r5, r6, r11
	adc r2, r12, r4
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	sub r0, r3, r0
	adds r3, r10, #0x800
	adc r2, r5, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r1, r1, r3
	bl FX_Div
	mov r5, r0
	smull r1, r0, r5, r11
	adds r1, r1, #0x800
	adc r2, r0, r4
	mov r0, r1, lsr #0xc
	mov r1, r7
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r9]
	add r1, r5, r1
	str r1, [r8]
	ldr r1, [r9, #4]
_02040100:
	add r0, r0, r1
	str r0, [r8, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02040110: .word 0x00007FFF
_02040114: .word FX_SinCosTable_
	arm_func_end FUN_0203fdf0

	arm_func_start FUN_02040118
FUN_02040118: ; 0x02040118
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02040118

	arm_func_start FUN_02040128
FUN_02040128: ; 0x02040128
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f07d0
	bl FUN_02040118
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040128

	arm_func_start FUN_02040138
FUN_02040138: ; 0x02040138
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02040138

	arm_func_start FUN_02040148
FUN_02040148: ; 0x02040148
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f0810
	bl FUN_02040138
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040148

	arm_func_start FUN_02040158
FUN_02040158: ; 0x02040158
	cmp r0, #0
	ldreq r0, _02040168 ; =0x0209A83C
	ldrne r0, _0204016C ; =0x0209A82C
	bx lr
_02040168: .word unk_0209A83C
_0204016C: .word unk_0209A82C
	arm_func_end FUN_02040158

	arm_func_start FUN_02040170
FUN_02040170: ; 0x02040170
	stmfd sp!, {r3, lr}
	bl FUN_02040118
	ldr r1, _02040184 ; =0x0209A80C
	add r0, r1, r0, lsl #4
	ldmfd sp!, {r3, pc}
_02040184: .word unk_0209A80C
	arm_func_end FUN_02040170

	arm_func_start FUN_02040188
FUN_02040188: ; 0x02040188
	cmp r0, #0
	ldreq r0, _02040198 ; =0x0209A85C
	ldrne r0, _0204019C ; =0x0209A84C
	bx lr
_02040198: .word unk_0209A85C
_0204019C: .word unk_0209A84C
	arm_func_end FUN_02040188

	arm_func_start FUN_020401a0
FUN_020401a0: ; 0x020401A0
	cmp r0, #0
	ldreq r0, _020401B0 ; =0x0209A884
	ldrne r0, _020401B4 ; =0x0209A87C
	bx lr
_020401B0: .word unk_0209A884
_020401B4: .word unk_0209A87C
	arm_func_end FUN_020401a0

	arm_func_start FUN_020401b8
FUN_020401b8: ; 0x020401B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r3
	rsb r3, r0, #0
	cmp r0, #0
	movge r3, r0
	cmp r3, #0x200000
	bge _02040208
	rsb r3, r1, #0
	cmp r1, #0
	movge r3, r1
	cmp r3, #0x200000
	bge _02040208
	rsb r3, r2, #0
	cmp r2, #0
	movge r3, r2
	cmp r3, #0x200000
	bge _02040208
	mov r3, r6
	bl FUN_020402dc
	ldmfd sp!, {r4, r5, r6, pc}
_02040208:
	cmp r0, #0
	movge r4, r0, asr #8
	movlt r0, r0, asr #8
	orrlt r4, r0, #0xff000000
	cmp r1, #0
	movge r5, r1, asr #8
	movlt r0, r1, asr #8
	orrlt r5, r0, #0xff000000
	cmp r2, #0
	movge r12, r2, asr #8
	movlt r0, r2, asr #8
	orrlt r12, r0, #0xff000000
	cmp r4, #0
	bne _0204025C
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	rsb r0, r12, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_0204025C:
	cmp r12, #0
	bne _02040280
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	rsb r0, r5, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_02040280:
	smull r0, r2, r5, r5
	adds r3, r0, #0x800
	smull r1, r0, r4, r12
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1, lsl #2
	bl FX_Sqrt
	cmp r6, #0
	beq _020402CC
	add r0, r0, r5
	rsb r0, r0, #0
	mov r1, r4, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_020402CC:
	sub r0, r0, r5
	mov r1, r4, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020401b8

	arm_func_start FUN_020402dc
FUN_020402dc: ; 0x020402DC
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r3
	bne _02040308
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	rsb r0, r2, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_02040308:
	cmp r2, #0
	bne _0204032C
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r6
	rsb r0, r5, #0
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_0204032C:
	smull r0, r3, r5, r5
	adds r12, r0, #0x800
	smull r1, r0, r6, r2
	adc r2, r3, #0
	adds r1, r1, #0x800
	mov r3, r12, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1, lsl #2
	bl FX_Sqrt
	cmp r4, #0
	beq _02040378
	add r0, r0, r5
	rsb r0, r0, #0
	mov r1, r6, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
_02040378:
	sub r0, r0, r5
	mov r1, r6, lsl #1
	bl FX_Div
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020402dc

	arm_func_start FUN_02040388
FUN_02040388: ; 0x02040388
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #0xc]
	ldr r2, [r0, #8]
	ldmia r0, {r1, r3}
	sub r0, r12, r3
	sub r1, r2, r1
	bl FX_Atan2Idx
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040388

	arm_func_start FUN_020403a8
FUN_020403a8: ; 0x020403A8
	stmfd sp!, {r3, lr}
	ldmia r1, {r2, r12}
	ldr r1, [r0]
	ldr r3, [r0, #4]
	sub r1, r2, r1
	sub r0, r12, r3
	bl FX_Atan2Idx
	add r0, r0, #0x10000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020403a8

	arm_func_start FUN_020403d4
FUN_020403d4: ; 0x020403D4
	sub r0, r1, r0
	mov r1, #0x8000
	cmp r0, #0x8000
	subgt r0, r0, #0x10000
	rsb r1, r1, #0
	cmp r0, r1
	addle r0, r0, #0x10000
	bx lr
	arm_func_end FUN_020403d4

	arm_func_start FUN_020403f4
FUN_020403f4: ; 0x020403F4
	cmp r0, r1
	movhi r3, r1
	movhi r1, r0
	movhi r0, r3
	sub r1, r1, r0
	add r0, r0, r1, asr #1
	cmp r1, #0x8000
	addgt r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r2, #0
	addeq r0, r0, #0x8000
	moveq r0, r0, lsl #0x10
	moveq r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_020403f4

	arm_func_start FUN_02040430
FUN_02040430: ; 0x02040430
	stmfd sp!, {r4, lr}
	ldr r2, _02040478 ; =0x00007FFF
	mov r12, r0
	mov r4, r1
	and r3, r12, r2
	and r1, r4, r2
	cmp r3, r1
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, r12
	bl FUN_020403d4
	subs r0, r4, r0
	bpl _0204046C
_02040464:
	adds r0, r0, #0x10000
	bmi _02040464
_0204046C:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_02040478: .word 0x00007FFF
	arm_func_end FUN_02040430

	arm_func_start FUN_0204047c
FUN_0204047c: ; 0x0204047C
	add r0, r0, #0x10000
	sub r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	tst r0, #0x8000
	beq _020404A8
	cmp r2, #0
	rsbne r0, r0, #0x10000
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	bx lr
_020404A8:
	cmp r2, #0
	rsbeq r0, r0, #0x10000
	moveq r0, r0, lsl #0x10
	moveq r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_0204047c

	arm_func_start FUN_020404bc
FUN_020404bc: ; 0x020404BC
	ldr r1, _020404C8 ; =0x020A06D8
	ldrb r0, [r1, r0]
	bx lr
_020404C8: .word unk_020A06D8
	arm_func_end FUN_020404bc

	arm_func_start FUN_020404cc
FUN_020404cc: ; 0x020404CC
	mov r1, #0x80000000
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_020404cc

	arm_func_start FUN_020404dc
FUN_020404dc: ; 0x020404DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r3
	mov r5, r0
	mov r4, r1
	ldmia r7, {r3, r6}
	sub r0, r6, r4
	sub r1, r3, r5
	mov r8, r2
	bl FX_Atan2Idx
	ldr r1, [r7, #8]
	ldr r2, [r7, #0xc]
	mov r6, r0
	sub r0, r2, r4
	sub r1, r1, r5
	bl FX_Atan2Idx
	mov r2, r0
	mov r3, #1
	mov r1, r6
	mov r0, r8
	str r3, [sp]
	bl FUN_020408d8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020404dc

	arm_func_start FUN_0204053c
FUN_0204053c: ; 0x0204053C
	stmfd sp!, {r3, lr}
	ldr r1, _02040574 ; =0x0209A2C0
	mov r2, r0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _0204056C
	ldrsh r1, [r2, #0x94]
	bl FUN_ov16_020f06d8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0204056C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02040574: .word unk_0209A2C0
	arm_func_end FUN_0204053c

	arm_func_start FUN_02040578
FUN_02040578: ; 0x02040578
	cmp r1, r2
	movgt r3, r1
	movgt r1, r2
	movgt r2, r3
	cmp r0, r1
	blt _0204059C
	cmp r0, r2
	movle r0, #1
	bxle lr
_0204059C:
	mov r0, #0
	bx lr
	arm_func_end FUN_02040578

	arm_func_start FUN_020405a4
FUN_020405a4: ; 0x020405A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_020403d4
	cmp r0, #0
	mov r0, r6
	mov r1, r5
	bge _020405D4
	bl FUN_020403d4
	rsb r0, r0, #0
	b _020405D8
_020405D4:
	bl FUN_020403d4
_020405D8:
	mov r0, r0, lsl #0x10
	cmp r4, r0, lsr #16
	movhs r0, #1
	movlo r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020405a4

	arm_func_start FUN_020405ec
FUN_020405ec: ; 0x020405EC
	ldr r2, _02040614 ; =0x0209A7FC
	mov r3, #0
	ldr r1, [r2]
	cmp r0, r1
	blt _0204060C
	ldr r1, [r2, #8]
	cmp r0, r1
	movle r3, #1
_0204060C:
	mov r0, r3
	bx lr
_02040614: .word unk_0209A7FC
	arm_func_end FUN_020405ec

	arm_func_start FUN_02040618
FUN_02040618: ; 0x02040618
	ldr r2, _02040640 ; =0x0209A7FC
	mov r3, #0
	ldr r1, [r2, #4]
	cmp r0, r1
	blt _02040638
	ldr r1, [r2, #0xc]
	cmp r0, r1
	movle r3, #1
_02040638:
	mov r0, r3
	bx lr
_02040640: .word unk_0209A7FC
	arm_func_end FUN_02040618

	arm_func_start FUN_02040644
FUN_02040644: ; 0x02040644
	stmfd sp!, {r4, lr}
	ldr r3, _020406A0 ; =0x0209A7FC
	mov r12, #0
	ldr r2, [r3]
	mov lr, r12
	mov r4, r12
	cmp r0, r2
	blt _02040670
	ldr r2, [r3, #8]
	cmp r0, r2
	movle r4, #1
_02040670:
	cmp r4, #0
	beq _02040684
	ldr r0, [r3, #4]
	cmp r1, r0
	movge lr, #1
_02040684:
	cmp lr, #0
	beq _02040698
	ldr r0, [r3, #0xc]
	cmp r1, r0
	movle r12, #1
_02040698:
	mov r0, r12
	ldmfd sp!, {r4, pc}
_020406A0: .word unk_0209A7FC
	arm_func_end FUN_02040644

	arm_func_start FUN_020406a4
FUN_020406a4: ; 0x020406A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7]
	mov r4, r1
	ldr r5, _02040718 ; =0x0209A7FC
	mov r6, #0
	bl FUN_020405ec
	cmp r0, #0
	bne _020406E0
	ldr r1, [r7]
	ldr r0, [r5]
	mov r6, #1
	cmp r1, r0
	ldrge r0, [r5, #8]
	str r0, [r7]
_020406E0:
	ldr r0, [r4]
	bl FUN_02040618
	cmp r0, #0
	bne _02040708
	ldr r1, [r4]
	ldr r0, [r5, #4]
	mov r6, #1
	cmp r1, r0
	ldrge r0, [r5, #0xc]
	str r0, [r4]
_02040708:
	mov r0, #1
	cmp r6, #0
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02040718: .word unk_0209A7FC
	arm_func_end FUN_020406a4

	arm_func_start FUN_0204071c
FUN_0204071c: ; 0x0204071C
	ldr r3, [r0]
	cmp r1, r3
	blt _02040750
	ldr r3, [r0, #8]
	cmp r1, r3
	bgt _02040750
	ldr r1, [r0, #4]
	cmp r2, r1
	blt _02040750
	ldr r0, [r0, #0xc]
	cmp r2, r0
	movle r0, #1
	ble _02040754
_02040750:
	mov r0, #0
_02040754:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0204071c

	arm_func_start FUN_02040764
FUN_02040764: ; 0x02040764
	stmfd sp!, {r4, lr}
	ldr r3, [r1]
	mov r12, #0
	ldr r2, [r0]
	mov lr, r12
	mov r4, r12
	cmp r3, r2
	blt _02040790
	ldr r2, [r0, #8]
	cmp r3, r2
	movle r4, #1
_02040790:
	cmp r4, #0
	beq _020407A8
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	cmp r3, r2
	movge lr, #1
_020407A8:
	cmp lr, #0
	beq _020407C0
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	movle r12, #1
_020407C0:
	mov r0, #1
	cmp r12, #0
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02040764

	arm_func_start FUN_020407d0
FUN_020407d0: ; 0x020407D0
	stmfd sp!, {r4, r5, r6, lr}
	ldr lr, _0204083C ; =0x0209A7FC
	mov r4, #0
	ldr r12, [lr]
	mov r5, r4
	sub r12, r12, r2
	mov r6, r4
	cmp r0, r12
	blt _02040804
	ldr r12, [lr, #8]
	add r2, r12, r2
	cmp r0, r2
	movle r6, #1
_02040804:
	cmp r6, #0
	beq _0204081C
	ldr r0, [lr, #4]
	sub r0, r0, r3
	cmp r1, r0
	movge r5, #1
_0204081C:
	cmp r5, #0
	beq _02040834
	ldr r0, [lr, #0xc]
	add r0, r0, r3
	cmp r1, r0
	movle r4, #1
_02040834:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0204083C: .word unk_0209A7FC
	arm_func_end FUN_020407d0

	arm_func_start FUN_02040840
FUN_02040840: ; 0x02040840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020408D0 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r3]
	mov r6, r1
	ldr r0, [r0, #0x288]
	cmp r2, r0
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020408D4 ; =0x0209BA20
	mov r5, #0
_0204086C:
	mov r0, r4
	mov r1, r5
	bl FUN_02073194
	cmp r0, #0
	beq _020408BC
	mov r0, r5
	bl FUN_02040170
	ldr r1, [r0]
	cmp r7, r1
	ble _020408BC
	ldr r1, [r0, #8]
	cmp r7, r1
	bge _020408BC
	ldr r1, [r0, #4]
	cmp r6, r1
	ble _020408BC
	ldr r0, [r0, #0xc]
	cmp r6, r0
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_020408BC:
	add r5, r5, #1
	cmp r5, #2
	blt _0204086C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020408D0: .word unk_02099EF0
_020408D4: .word unk_0209BA20
	arm_func_end FUN_02040840

	arm_func_start FUN_020408d8
FUN_020408d8: ; 0x020408D8
	stmfd sp!, {r3, lr}
	cmp r1, r2
	bne _02040924
	cmp r3, #0
	beq _0204090C
	ldrb r2, [sp, #8]
	cmp r2, #0
	beq _02040904
	cmp r0, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_02040904:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0204090C:
	ldrb r2, [sp, #8]
	cmp r2, #0
	cmpeq r0, r1
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02040924:
	ldr r12, _020409D0 ; =0x00007FFF
	and lr, r1, r12
	and r12, r2, r12
	cmp lr, r12
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	cmp r1, r2
	movhi r12, r2
	movhi r2, r1
	movhi r1, r12
	sub r12, r2, r1
	cmp r12, #0x8000
	bgt _02040970
	cmp r0, r1
	bls _0204096C
	cmp r0, r2
	movlo lr, #1
	blo _0204098C
_0204096C:
	b _02040988
_02040970:
	cmp r0, r1
	blo _02040980
	cmp r0, r2
	bls _02040988
_02040980:
	mov lr, #1
	b _0204098C
_02040988:
	mov lr, #0
_0204098C:
	ldrb r12, [sp, #8]
	cmp r12, #0
	beq _020409B4
	cmp r0, r1
	cmpne r0, r2
	moveq r0, #1
	movne r0, #0
	orrs r0, lr, r0
	movne lr, #1
	moveq lr, #0
_020409B4:
	cmp r3, #0
	bne _020409C8
	cmp lr, #0
	moveq lr, #1
	movne lr, #0
_020409C8:
	mov r0, lr
	ldmfd sp!, {r3, pc}
_020409D0: .word 0x00007FFF
	arm_func_end FUN_020408d8

	arm_func_start FUN_020409d4
FUN_020409d4: ; 0x020409D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r5, r1
	mov r7, r2
	mov r0, r5
	mov r1, r8
	mov r6, r3
	bl FUN_020403a8
	mov r4, r0
	mov r0, r5
	mov r1, r7
	bl FUN_020403a8
	mov r9, r0
	mov r0, r5
	mov r1, r6
	bl FUN_020403a8
	mov r2, r0
	mov r0, r4
	mov r4, #1
	mov r5, #0
	mov r1, r9
	mov r3, r4
	str r5, [sp]
	bl FUN_020408d8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	mov r1, r8
	bl FUN_020403a8
	mov r8, r0
	mov r0, r7
	mov r1, r6
	bl FUN_020403a8
	add r1, r9, #0x8000
	mov r1, r1, lsl #0x10
	mov r2, r0
	mov r0, r8
	mov r3, r4
	mov r1, r1, lsr #0x10
	str r5, [sp]
	bl FUN_020408d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_020409d4

	arm_func_start FUN_02040a80
FUN_02040a80: ; 0x02040A80
	ldr r1, [r0]
	cmp r1, #0x80000000
	ldrne r0, [r0, #4]
	cmpne r0, #0x80000000
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02040a80

	arm_func_start FUN_02040aa8
FUN_02040aa8: ; 0x02040AA8
	ldr r1, _02040AC4 ; =0x0209A2C0
	ldrsh r0, [r0, #0x94]
	ldr r1, [r1, #0x48]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
_02040AC4: .word unk_0209A2C0
	arm_func_end FUN_02040aa8

	arm_func_start FUN_02040ac8
FUN_02040ac8: ; 0x02040AC8
	cmp r0, #1
	blt _02040ADC
	cmp r0, #0xb
	movle r0, #1
	bxle lr
_02040ADC:
	mov r0, #0
	bx lr
	arm_func_end FUN_02040ac8

	arm_func_start FUN_02040ae4
FUN_02040ae4: ; 0x02040AE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r1
	ldr r1, [r4]
	ldr r2, [r4, #8]
	bl FUN_02040578
	cmp r0, #0
	beq _02040B20
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	mov r0, r5
	bl FUN_02040578
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_02040B20:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02040ae4

	arm_func_start FUN_02040b28
FUN_02040b28: ; 0x02040B28
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	ldreq r2, [r0, #4]
	ldreq r0, [r1, #4]
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02040b28

	arm_func_start FUN_02040b4c
FUN_02040b4c: ; 0x02040B4C
	ldr r0, [r0, #0x88]
	ldrb r1, [r0, #0x84]
	ldrb r0, [r0, #0x85]
	cmp r1, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
	arm_func_end FUN_02040b4c

	arm_func_start FUN_02040b68
FUN_02040b68: ; 0x02040B68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl FUN_02040b28
	cmp r0, #0
	bne _02040B98
	mov r0, r6
	mov r1, r4
	bl FUN_02040b28
	cmp r0, #0
	beq _02040BA0
_02040B98:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02040BA0:
	mov r0, r6
	mov r1, r4
	bl FUN_020403a8
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_020403a8
	subs r1, r4, r0
	ldr r0, _02040BD8 ; =0x00007FFF
	rsbmi r1, r1, #0
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02040BD8: .word 0x00007FFF
	arm_func_end FUN_02040b68

	arm_func_start FUN_02040bdc
FUN_02040bdc: ; 0x02040BDC
	stmfd sp!, {r3, lr}
	ldr r12, [r2]
	ldr lr, [r0]
	add r12, r12, r3
	cmp lr, r12
	strlt r12, [r0]
	blt _02040C08
	ldr r12, [r2, #8]
	sub r12, r12, r3
	cmp lr, r12
	strgt r12, [r0]
_02040C08:
	ldr r0, [r2, #4]
	ldr r12, [r1]
	add r0, r0, r3
	cmp r12, r0
	strlt r0, [r1]
	ldmltfd sp!, {r3, pc}
	ldr r0, [r2, #0xc]
	sub r0, r0, r3
	cmp r12, r0
	strgt r0, [r1]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02040bdc

	arm_func_start FUN_02040c34
FUN_02040c34: ; 0x02040C34
	ldr r12, _02040C48 ; =FUN_02040bdc
	mov r3, r2
	mov r2, r1
	add r1, r0, #4
	bx r12
_02040C48: .word FUN_02040bdc
	arm_func_end FUN_02040c34

	arm_func_start FUN_02040c4c
FUN_02040c4c: ; 0x02040C4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldmia r6, {r0, r1}
	bl FUN_02040ae4
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r2, r4
	ldmia r5, {r0, r1}
	bl FUN_02040ae4
	cmp r0, #0
	bne _02040CA0
	mov r5, #1
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02040c34
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02040CA0:
	ldr r0, [r4]
	ldr r2, [r6]
	cmp r2, r0
	bgt _02040CE0
	ldr r1, [r5]
	sub r0, r1, r0
	sub r1, r1, r2
	bl FX_Div
	ldr r3, [r5, #4]
	ldr r1, [r6, #4]
	ldr r12, [r4]
	sub r1, r1, r3
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	add r2, r12, #1
	b _02040D18
_02040CE0:
	ldr r0, [r4, #8]
	cmp r2, r0
	blt _02040D30
	ldr r1, [r5]
	sub r0, r0, r1
	sub r1, r2, r1
	bl FX_Div
	ldr r3, [r5, #4]
	ldr r1, [r6, #4]
	ldr r12, [r4, #8]
	sub r1, r1, r3
	smull r2, r0, r1, r0
	adds r1, r2, #0x800
	sub r2, r12, #1
_02040D18:
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	str r2, [r6]
	str r0, [r6, #4]
_02040D30:
	ldr r0, [r4, #4]
	ldr r2, [r6, #4]
	cmp r2, r0
	bgt _02040D70
	ldr r1, [r5, #4]
	sub r0, r1, r0
	sub r1, r1, r2
	bl FX_Div
	ldr r5, [r5]
	ldr r2, [r6]
	ldr r1, [r4, #4]
	sub r2, r2, r5
	smull r0, r3, r2, r0
	adds r2, r0, #0x800
	add r0, r1, #1
	b _02040DA8
_02040D70:
	ldr r0, [r4, #0xc]
	cmp r2, r0
	blt _02040DC0
	ldr r1, [r5, #4]
	sub r0, r0, r1
	sub r1, r2, r1
	bl FX_Div
	ldr r5, [r5]
	ldr r2, [r6]
	ldr r1, [r4, #0xc]
	sub r2, r2, r5
	smull r0, r3, r2, r0
	adds r2, r0, #0x800
	sub r0, r1, #1
_02040DA8:
	adc r1, r3, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r5, r2
	str r1, [r6]
	str r0, [r6, #4]
_02040DC0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02040c4c

	arm_func_start FUN_02040dc8
FUN_02040dc8: ; 0x02040DC8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r0
	mov r7, r1
	cmpne r7, #0
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	subs r0, r8, r7
	rsbmi r0, r0, #0
	cmp r0, r6
	bhs _02040E18
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02040E18:
	ldr r5, _02040E68 ; =0x0209A250
	mov r1, r6
	mov r0, r5
	bl FUN_0202de44
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r4
	bl FUN_0202e1c0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02040E68: .word unk_0209A250
	arm_func_end FUN_02040dc8

	arm_func_start FUN_02040e6c
FUN_02040e6c: ; 0x02040E6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02040E90 ; =0x0209A250
	mov r1, #0x8000
	bl FUN_0202de44
	mov r1, #0
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	ldmfd sp!, {r4, pc}
_02040E90: .word unk_0209A250
	arm_func_end FUN_02040e6c

	arm_func_start FUN_02040e94
FUN_02040e94: ; 0x02040E94
	mov r1, #0
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_02040e94

	arm_func_start FUN_02040ea0
FUN_02040ea0: ; 0x02040EA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02040F08 ; =0x020B5BB8
	mov r4, #0
	mov r7, r0
	mov r0, r4
	mov r1, r6
	mov r2, #0x24
	bl MIi_CpuClearFast
	ldr r0, _02040F0C ; =0x020B5BB8
	cmp r7, #0
	str r7, [r0, #4]
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x1c
	mul r5, r7, r0
	ldr r0, _02040F10 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	movs r1, r0
	str r1, [r6]
	beq _02040EFC
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
_02040EFC:
	mov r0, r6
	bl FUN_02040e6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02040F08: .word unk_020B5BB8
_02040F0C: .word unk_020B5BB8
_02040F10: .word unk_0209A250
	arm_func_end FUN_02040ea0

	arm_func_start FUN_02040f14
FUN_02040f14: ; 0x02040F14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _0204106C ; =0x020B5BB8
	mov r8, #0
	ldr r4, [r4]
	ldr r12, _02041070 ; =0x020B5BB8
	cmp r4, #0
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r1, #0
	cmpne r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r5, [r12, #8]
	ldrh r4, [r12, #0xa]
	ldr lr, [r12, #4]
	add r6, r2, #3
	add r2, r5, r4
	cmp r2, lr
	bic r2, r6, #3
	movge r0, r8
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r3, r3, #3
	bics r3, r3, #3
	beq _02040F94
	cmp r3, r2
	bhs _02040F94
	ldr r4, [r12, #0x1c]
	cmp r1, r4
	blo _02040F98
	sub r4, r1, r4
	cmp r4, #0x8000
	bhs _02040F98
_02040F94:
	mov r3, r2
_02040F98:
	ldr r5, [r12, #0xc]
	cmp r5, #0
	beq _02040FD4
_02040FA4:
	ldr r4, [r5, #4]
	cmp r4, r1
	ldreq r4, [r5]
	cmpeq r4, r0
	ldreq r4, [r5, #8]
	cmpeq r4, r2
	streq r8, [r5, #0x14]
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _02040FA4
_02040FD4:
	mov r4, #0
	mov r9, r4
	cmp lr, #0
	ble _0204100C
	ldr r10, [r12]
	mov r5, #0x1c
_02040FEC:
	mla r7, r9, r5, r10
	ldr r6, [r7, #4]
	cmp r6, #0
	moveq r4, r7
	beq _0204100C
	add r9, r9, #1
	cmp r9, lr
	blt _02040FEC
_0204100C:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	stmia r4, {r0, r1, r2}
	str r8, [r4, #0xc]
	str r3, [r4, #0x10]
	ldr r1, [sp, #0x20]
	str r8, [r4, #0x14]
	cmp r1, #0
	str r1, [r4, #0x18]
	movne r0, #1
	strneb r0, [r1]
	ldr r0, [r12, #0xc]
	cmp r0, #0
	ldr r0, [r12, #0x10]
	streq r4, [r12, #0xc]
	cmp r0, #0
	strne r4, [r0, #0xc]
	ldrh r1, [r12, #8]
	str r4, [r12, #0x10]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r12, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204106C: .word unk_020B5BB8
_02041070: .word unk_020B5BB8
	arm_func_end FUN_02040f14

	arm_func_start FUN_02041074
FUN_02041074: ; 0x02041074
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _020411CC ; =0x020B5BB8
	mov r8, #0
	ldr r4, [r4]
	ldr r12, _020411D0 ; =0x020B5BB8
	cmp r4, #0
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r1, #0
	cmpne r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r5, [r12, #8]
	ldrh r4, [r12, #0xa]
	ldr lr, [r12, #4]
	add r6, r2, #3
	add r2, r5, r4
	cmp r2, lr
	bic r2, r6, #3
	movge r0, r8
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r3, r3, #3
	bics r3, r3, #3
	beq _020410F4
	cmp r3, r2
	bhs _020410F4
	ldr r4, [r12, #0x1c]
	cmp r1, r4
	blo _020410F8
	sub r4, r1, r4
	cmp r4, #0x8000
	bhs _020410F8
_020410F4:
	mov r3, r2
_020410F8:
	ldr r5, [r12, #0x14]
	cmp r5, #0
	beq _02041134
_02041104:
	ldr r4, [r5, #4]
	cmp r4, r1
	ldreq r4, [r5]
	cmpeq r4, r0
	ldreq r4, [r5, #8]
	cmpeq r4, r2
	streq r8, [r5, #0x14]
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _02041104
_02041134:
	mov r4, #0
	mov r9, r4
	cmp lr, #0
	ble _0204116C
	ldr r10, [r12]
	mov r5, #0x1c
_0204114C:
	mla r7, r9, r5, r10
	ldr r6, [r7, #4]
	cmp r6, #0
	moveq r4, r7
	beq _0204116C
	add r9, r9, #1
	cmp r9, lr
	blt _0204114C
_0204116C:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	stmia r4, {r0, r1, r2}
	str r8, [r4, #0xc]
	str r3, [r4, #0x10]
	ldr r1, [sp, #0x20]
	str r8, [r4, #0x14]
	cmp r1, #0
	str r1, [r4, #0x18]
	movne r0, #1
	strneb r0, [r1]
	ldr r0, [r12, #0x14]
	cmp r0, #0
	ldr r0, [r12, #0x18]
	streq r4, [r12, #0x14]
	cmp r0, #0
	strne r4, [r0, #0xc]
	ldrh r1, [r12, #0xa]
	str r4, [r12, #0x18]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r12, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020411CC: .word unk_020B5BB8
_020411D0: .word unk_020B5BB8
	arm_func_end FUN_02041074

	arm_func_start FUN_020411d4
FUN_020411d4: ; 0x020411D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r0, _020413B0 ; =0x020B5BB8
	mov r4, #0
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020413B4 ; =0x020B5BB8
	mov r5, r4
	ldr r8, [r0, #0xc]
	str r5, [sp, #4]
	mov r6, r5
	str r5, [sp]
	mov r7, r5
	mov r11, r5
	cmp r8, #0
	beq _020412C4
	bl GX_BeginLoadTex
	cmp r8, #0
	beq _020412C0
_02041228:
	ldr r1, [r8, #0x14]
	ldr r10, [r8, #0x10]
	ldr r2, [r8, #8]
	add r0, r1, r10
	cmp r0, r2
	subhi r10, r2, r1
	ldmia r8, {r3, r12}
	add r0, r12, r1
	add r1, r3, r1
	mov r2, r10
	ldr r9, [r8, #0xc]
	bl GX_LoadTex
	ldr r0, [r8, #0x14]
	add r1, r0, r10
	str r1, [r8, #0x14]
	ldr r0, [r8, #8]
	cmp r1, r0
	blo _0204128C
	ldr r0, [r8, #0x18]
	cmp r0, #0
	strneb r4, [r0]
	str r4, [r8, #4]
	str r4, [r8, #8]
	str r4, [r8]
	b _020412B4
_0204128C:
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, r11, #1
	streq r8, [sp, #4]
	cmp r5, #0
	strne r8, [r5, #0xc]
	mov r0, r0, lsl #0x10
	mov r5, r8
	str r4, [r8, #0xc]
	mov r11, r0, lsr #0x10
_020412B4:
	mov r8, r9
	cmp r9, #0
	bne _02041228
_020412C0:
	bl GX_EndLoadTex
_020412C4:
	ldr r0, _020413B4 ; =0x020B5BB8
	ldr r8, [r0, #0x14]
	cmp r8, #0
	beq _0204137C
	bl GX_BeginLoadTexPltt
	cmp r8, #0
	beq _02041378
_020412E0:
	ldr r1, [r8, #0x14]
	ldr r10, [r8, #0x10]
	ldr r2, [r8, #8]
	add r0, r1, r10
	cmp r0, r2
	subhi r10, r2, r1
	ldmia r8, {r3, r12}
	add r0, r12, r1
	add r1, r3, r1
	mov r2, r10
	ldr r9, [r8, #0xc]
	bl GX_LoadTexPltt
	ldr r0, [r8, #0x14]
	add r1, r0, r10
	str r1, [r8, #0x14]
	ldr r0, [r8, #8]
	cmp r1, r0
	blo _02041344
	ldr r0, [r8, #0x18]
	cmp r0, #0
	strneb r4, [r0]
	str r4, [r8, #4]
	str r4, [r8, #8]
	str r4, [r8]
	b _0204136C
_02041344:
	ldr r0, [sp]
	cmp r0, #0
	add r0, r7, #1
	streq r8, [sp]
	cmp r6, #0
	strne r8, [r6, #0xc]
	mov r0, r0, lsl #0x10
	mov r6, r8
	str r4, [r8, #0xc]
	mov r7, r0, lsr #0x10
_0204136C:
	mov r8, r9
	cmp r9, #0
	bne _020412E0
_02041378:
	bl GX_EndLoadTexPltt
_0204137C:
	ldr r0, _020413B4 ; =0x020B5BB8
	ldr r2, [sp, #4]
	mov r1, r0
	str r2, [r1, #0xc]
	ldr r2, [sp]
	str r5, [r1, #0x10]
	str r2, [r1, #0x14]
	str r6, [r1, #0x18]
	strh r11, [r1, #8]
	strh r7, [r1, #0xa]
	bl FUN_02040e94
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020413B0: .word unk_020B5BB8
_020413B4: .word unk_020B5BB8
	arm_func_end FUN_020411d4

	arm_func_start FUN_020413b8
FUN_020413b8: ; 0x020413B8
	ldr r0, _02041424 ; =0x020B5BB8
	ldr r3, _02041428 ; =0x020B5BB8
	ldr r0, [r0]
	cmp r0, #0
	mov r0, #0
	bxeq lr
	ldr r12, [r3, #0xc]
	cmp r12, #0
	beq _020413F8
_020413DC:
	ldr r2, [r12, #8]
	ldr r1, [r12, #0x14]
	ldr r12, [r12, #0xc]
	sub r1, r2, r1
	cmp r12, #0
	add r0, r0, r1
	bne _020413DC
_020413F8:
	ldr r3, [r3, #0x14]
	cmp r3, #0
	bxeq lr
_02041404:
	ldr r2, [r3, #8]
	ldr r1, [r3, #0x14]
	ldr r3, [r3, #0xc]
	sub r1, r2, r1
	cmp r3, #0
	add r0, r0, r1
	bne _02041404
	bx lr
_02041424: .word unk_020B5BB8
_02041428: .word unk_020B5BB8
	arm_func_end FUN_020413b8

	arm_func_start FUN_0204142c
FUN_0204142c: ; 0x0204142C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02041490 ; =0x020B5BB8
	ldr r4, _02041494 ; =0x020B5BB8
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #4]
	mov r0, #0x1c
	mul r5, r1, r0
	mov r0, #0
	ldr r1, [r4]
	mov r2, r5
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	bl MIi_CpuClearFast
	ldr r0, [r4]
	mov r1, r5
	bl DC_FlushRange
	mov r0, r4
	bl FUN_02040e94
	ldmfd sp!, {r3, r4, r5, pc}
_02041490: .word unk_020B5BB8
_02041494: .word unk_020B5BB8
	arm_func_end FUN_0204142c

	arm_func_start FUN_02041498
FUN_02041498: ; 0x02041498
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020414F4 ; =0x020B5BB8
	ldr r12, _020414F8 ; =0x020B5BB8
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	add r1, r1, #0x1f
	bic r2, r1, #0x1f
	str r2, [r0]
	ldr r5, [r12, #0x20]
	rsb r0, r5, #0x8000
	cmp r2, r0
	mov r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r4, [r12, #0x1c]
	add r3, r5, r2
	add r1, r4, r5
	str r3, [r12, #0x20]
	bl MIi_CpuClearFast
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020414F4: .word unk_020B5BB8
_020414F8: .word unk_020B5BB8
	arm_func_end FUN_02041498

	arm_func_start FUN_020414fc
FUN_020414fc: ; 0x020414FC
	ldr r1, _02041510 ; =0x020B5BDC
	ldr r12, _02041514 ; =MIi_CpuClearFast
	mov r0, #0
	mov r2, #0x1c
	bx r12
_02041510: .word unk_020B5BDC
_02041514: .word MIi_CpuClearFast
	arm_func_end FUN_020414fc

	arm_func_start FUN_02041518
FUN_02041518: ; 0x02041518
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	bl FUN_02041618
	mul r5, r6, r7
	ldr r8, _02041608 ; =0x0209A250
	mov r1, r5
	mov r0, r8
	mov r9, #0
	bl FUN_0202de44
	movs r4, r0
	addeq sp, sp, #0xc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0204160C ; =0x02099F30
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, r5
	str r9, [sp]
	str r9, [sp, #4]
	strb r9, [sp, #8]
	strb r9, [sp, #9]
	bl FUN_020517ac
	cmp r0, #0
	bne _02041598
	mov r0, r8
	mov r1, r4
	bl FUN_0202e1c0
	add sp, sp, #0xc
	mov r0, r9
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02041598:
	ldr r1, _02041610 ; =0x020B5BDC
	mov r0, r9
	mov r2, #0x1c
	bl MIi_CpuClearFast
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	ldr r0, [sp]
	ldr r1, _02041614 ; =0x020B5BDC
	ldr r2, [sp, #4]
	str r0, [r1]
	ldrb r0, [sp, #8]
	str r2, [r1, #4]
	ldrb r2, [sp, #9]
	strb r0, [r1, #8]
	ldrb r0, [sp, #0xa]
	strb r2, [r1, #9]
	ldrb r2, [sp, #0xb]
	strb r0, [r1, #0xa]
	mov r0, #1
	strb r2, [r1, #0xb]
	str r4, [r1, #0xc]
	str r5, [r1, #0x10]
	str r7, [r1, #0x14]
	str r6, [r1, #0x18]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02041608: .word unk_0209A250
_0204160C: .word unk_02099F30
_02041610: .word unk_020B5BDC
_02041614: .word unk_020B5BDC
	arm_func_end FUN_02041518

	arm_func_start FUN_02041618
FUN_02041618: ; 0x02041618
	stmfd sp!, {r3, lr}
	ldr r0, _02041658 ; =0x02099F30
	ldr r1, _0204165C ; =0x020B5BDC
	ldr r0, [r0]
	bl FUN_02051858
	ldr r0, _02041660 ; =0x020B5BDC
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _02041644
	ldr r0, _02041664 ; =0x0209A250
	bl FUN_0202e1c0
_02041644:
	ldr r1, _0204165C ; =0x020B5BDC
	mov r0, #0
	mov r2, #0x1c
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, pc}
_02041658: .word unk_02099F30
_0204165C: .word unk_020B5BDC
_02041660: .word unk_020B5BDC
_02041664: .word unk_0209A250
	arm_func_end FUN_02041618

	arm_func_start FUN_02041668
FUN_02041668: ; 0x02041668
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _020416C8 ; =0x020B5BDC
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r0, [r1]
	cmpne r0, #0
	addle sp, sp, #0xc
	ldmleia sp!, {pc}
	ldrb r0, [r1, #9]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	ldr r0, [r1, #0x10]
	mov r2, #0
	stmia sp, {r0, r2}
	str r2, [sp, #8]
	ldr r0, _020416CC ; =0x02099F30
	ldr r3, [r1, #0xc]
	ldr r0, [r0]
	ldr r1, _020416D0 ; =0x020B5BDC
	bl FUN_020519e4
	add sp, sp, #0xc
	ldmia sp!, {pc}
_020416C8: .word unk_020B5BDC
_020416CC: .word unk_02099F30
_020416D0: .word unk_020B5BDC
	arm_func_end FUN_02041668

	arm_func_start FUN_020416d4
FUN_020416d4: ; 0x020416D4
	cmp r0, #0
	blt _020416EC
	ldr r1, _02041704 ; =0x020B5BDC
	ldr r2, [r1, #0x14]
	cmp r0, r2
	blt _020416F4
_020416EC:
	mov r0, #0
	bx lr
_020416F4:
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x18]
	mla r0, r1, r0, r2
	bx lr
_02041704: .word unk_020B5BDC
	arm_func_end FUN_020416d4

	arm_func_start FUN_02041708
FUN_02041708: ; 0x02041708
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	bmi _02041724
	ldr r4, _02041754 ; =0x020B5BDC
	ldr r0, [r4, #0x14]
	cmp r5, r0
	blt _0204172C
_02041724:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0204172C:
	ldr r0, _02041758 ; =0x02099F30
	ldr r1, _0204175C ; =0x020B5BDC
	ldr r0, [r0]
	add r2, sp, #0
	bl FUN_02051bb8
	ldr r0, [sp]
	cmn r0, #1
	ldrne r1, [r4, #0x18]
	mlane r0, r1, r5, r0
	ldmfd sp!, {r3, r4, r5, pc}
_02041754: .word unk_020B5BDC
_02041758: .word unk_02099F30
_0204175C: .word unk_020B5BDC
	arm_func_end FUN_02041708

	arm_func_start FUN_02041760
FUN_02041760: ; 0x02041760
	ldr r0, _02041774 ; =0x02099F30
	ldr r1, _02041778 ; =0x020B5BDC
	ldr r0, [r0]
	ldr r12, _0204177C ; =FUN_02051d3c
	bx r12
_02041774: .word unk_02099F30
_02041778: .word unk_020B5BDC
_0204177C: .word FUN_02051d3c
	arm_func_end FUN_02041760

	arm_func_start FUN_02041780
FUN_02041780: ; 0x02041780
	ldr r0, _02041794 ; =0x02099F30
	ldr r1, _02041798 ; =0x020B5BDC
	ldr r0, [r0]
	ldr r12, _0204179C ; =FUN_02051dc4
	bx r12
_02041794: .word unk_02099F30
_02041798: .word unk_020B5BDC
_0204179C: .word FUN_02051dc4
	arm_func_end FUN_02041780

	.rodata
	.global unk_0208C340
unk_0208C340:
	.byte 0x01, 0x00, 0x04, 0x02, 0x03, 0x00, 0x00, 0x00
	.global unk_0208C348
unk_0208C348:
	.byte 0x50, 0x01, 0x00, 0x00, 0xD9, 0x03, 0x00, 0x00
	.byte 0xE0, 0x02, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.global unk_0208C35C
unk_0208C35C:
	.byte 0x04, 0xFF, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0208C364
unk_0208C364:
	.byte 0x48, 0x00, 0xF9, 0xFF, 0x78, 0x00, 0xF9, 0xFF
	.global unk_0208C36C
unk_0208C36C:
	.byte 0xE8, 0x00, 0xA8, 0x00
	.byte 0xD0, 0x00, 0xA8, 0x00
	.global unk_0208C374
unk_0208C374:
	.byte 0x01, 0x02, 0x00, 0x04, 0x02, 0x03, 0x00, 0x00
	.global unk_0208C37C
unk_0208C37C:
	.byte 0x00, 0x00, 0x77, 0x00
	.byte 0x1A, 0x00, 0x37, 0x00

	.data
	.global unk_0208F680
unk_0208F680:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F6A0
unk_0208F6A0:
	.word FUN_02029c78
	.word FUN_02029c64
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F6B0
unk_0208F6B0:
	.word FUN_02028fa4
	.word FUN_02029cec
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F6C0
unk_0208F6C0:
	.word FUN_02028fa0
	.word FUN_02029cc4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F6D0
unk_0208F6D0:
	.word FUN_02028fa8
	.word FUN_02029cd8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F6E0
unk_0208F6E0:
	.word FUN_0205244c
	.word FUN_020524a0
	.word FUN_02029ca4
	.word FUN_02029c7c
	.global unk_0208F6F0
unk_0208F6F0:
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x24, 0x02, 0x00, 0x00, 0x48, 0x03, 0x00, 0x00
	.byte 0x46, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
	.global unk_0208F728
unk_0208F728: ; shift-jis string
	.byte 0x40, 0x81, 0x49, 0x81, 0x68, 0x81, 0x94, 0x81
	.byte 0x90, 0x81, 0x93, 0x81, 0x95, 0x81, 0x66, 0x81, 0x69, 0x81, 0x6A, 0x81, 0x96, 0x81, 0x7B, 0x81
	.byte 0x43, 0x81, 0x7C, 0x81, 0x44, 0x81, 0x5E, 0x81, 0x46, 0x81, 0x47, 0x81, 0x83, 0x81, 0x81, 0x81
	.byte 0x84, 0x81, 0x48, 0x81, 0x97, 0x81, 0x6D, 0x81, 0x8F, 0x81, 0x6E, 0x81, 0x4F, 0x81, 0x51, 0x81
	.byte 0x6F, 0x81, 0x62, 0x81, 0x70, 0x81, 0x60, 0x81
	.global unk_0208F768
unk_0208F768:
	.asciz "/data_iz/logic/wearset.dat"
	.balign 4, 0
	.global unk_0208F784
unk_0208F784:
	.asciz "logic/shoesinfo.dat"
	.balign 4, 0
	.global unk_0208F798
unk_0208F798:
	.asciz "logic/gloveinfo.dat"
	.balign 4, 0
	.global unk_0208F7AC
unk_0208F7AC:
	.asciz "logic/missinfo.dat"
	.balign 4, 0
	.global unk_0208F7C0
unk_0208F7C0:
	.asciz "logic/palskin3d.dat"
	.balign 4, 0
	.global unk_0208F7D4
unk_0208F7D4:
	.asciz "logic/palskin2d.dat"
	.balign 4, 0
	.global unk_0208F7E8
unk_0208F7E8:
	.asciz "logic/palskinface.dat"
	.balign 4, 0
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
	.global unk_0208F880
unk_0208F880:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F898
unk_0208F898:
	.word 3, 0, 0, 2
	.word 0, 1, 1, 0
	.word 4, 4, 0, 5
	.word 5, 0, 3, 6
	.word 0, 6, 7, 0
	.word 15, 8, 0, 15
	.word 0, 0, 0, 0
	.word 0
	.global unk_0208F90C
unk_0208F90C:
	.word FUN_0202b2ac
	.word FUN_0202b210
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word 0
	.word FUN_0202b208
	.word 0
	.word 0
	.word 0
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b294
	.word FUN_0202b284
	.word FUN_0202b278
	.word FUN_0202b26c
	.word FUN_0202b25c
	.word FUN_0202b24c
	.word FUN_0202b23c
	.word FUN_0202b230
	.word FUN_0202b224
	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global unk_0208F978
unk_0208F978:
	.asciz "MDL_SCALE_CHAR"
	.balign 4, 0
	.global unk_0208F988
unk_0208F988:
	.asciz "MDL_SCALE_EFFECT"
	.balign 4, 0
	.global unk_0208F99C
unk_0208F99C:
	.asciz "MDL_SCALE_MAPOBJECT"
	.balign 4, 0
	.global unk_0208F9B0
unk_0208F9B0:
	.asciz "MDL_SCALE_CAMERA"
	.balign 4, 0
	.global unk_0208F9C4
unk_0208F9C4:
	.asciz "MDL_FIELD_WIDTH"
	.balign 4, 0
	.global unk_0208F9D4
unk_0208F9D4:
	.asciz "MDL_FIELD_HEIGHT"
	.balign 4, 0
	.global unk_0208F9E8
unk_0208F9E8:
	.asciz "MDL_FIELD_MARGIN_W"
	.balign 4, 0
	.global unk_0208F9FC
unk_0208F9FC:
	.asciz "MDL_FIELD_MARGIN_H"
	.balign 4, 0
	.global unk_0208FA10
unk_0208FA10:
	.asciz "/data_iz/pic2d/debfont8.pac"
	.balign 4, 0
	.global unk_0208FA2C
unk_0208FA2C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0208FA30
unk_0208FA30:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208FA48
unk_0208FA48:
	.word unk_0208FA2C
	.word unk_0208FAA8
	.word unk_0208FA80
	.word unk_0208FAB4
	.word unk_0208FAC0
	.word unk_0208FA88
	.word unk_0208FA9C
	.word unk_0208FA70
	.word unk_0208FA78
	.word unk_0208FA90
	.global unk_0208FA70
unk_0208FA70:
	.asciz "J02.SAD"
	.balign 4, 0
	.global unk_0208FA78
unk_0208FA78:
	.asciz "J06.SAD"
	.balign 4, 0
	.global unk_0208FA80
unk_0208FA80:
	.asciz "J06.SMW"
	.balign 4, 0
	.global unk_0208FA88
unk_0208FA88:
	.asciz "P01.SMW"
	.balign 4, 0
	.global unk_0208FA90
unk_0208FA90:
	.asciz "PB01.SMW"
	.balign 4, 0
	.global unk_0208FA9C
unk_0208FA9C:
	.asciz "TITLE.SAD"
	.balign 4, 0
	.global unk_0208FAA8
unk_0208FAA8:
	.asciz "SR_000.SMW"
	.balign 4, 0
	.global unk_0208FAB4
unk_0208FAB4:
	.asciz "SR_001.SMW"
	.balign 4, 0
	.global unk_0208FAC0
unk_0208FAC0:
	.asciz "SR_002.SMW"
	.balign 4, 0
	.global unk_0208FACC
unk_0208FACC:
	.asciz "sound/sound"
	.balign 4, 0
	.global unk_0208FAD8
unk_0208FAD8:
	.asciz "SY_001"
	.balign 4, 0
	.global unk_0208FAE0
unk_0208FAE0:
	.asciz "SY_000"
	.balign 4, 0
	.global unk_0208FAE8
unk_0208FAE8:
	.asciz "SY_002"
	.balign 4, 0
	.global unk_0208FAF0
unk_0208FAF0:
	.asciz "3D_900"
	.balign 4, 0
	.global unk_0208FAF8
unk_0208FAF8:
	.asciz "3D_901"
	.balign 4, 0
	.global unk_0208FB00
unk_0208FB00:
	.asciz "2D_001"
	.balign 4, 0
	.global unk_0208FB08
unk_0208FB08:
	.asciz "2D_002"
	.balign 4, 0
	.global unk_0208FB10
unk_0208FB10:
	.asciz "P%02d"
	.balign 4, 0
	.global unk_0208FB18
unk_0208FB18:
	.asciz "SR_%03d"
	.balign 4, 0
	.global unk_0208FB20
unk_0208FB20:
	.asciz "2D_000"
	.balign 4, 0
	.global unk_0208FB28
unk_0208FB28:
	.asciz "<%3d>"
	.balign 4, 0
	.global unk_0208FB30
unk_0208FB30:
	.asciz "%s.SMW"
	.balign 4, 0
	.global unk_0208FB38
unk_0208FB38:
	.asciz ".SAD"
	.balign 4, 0
	.global unk_0208FB40
unk_0208FB40:
	.asciz ".sad"
	.balign 4, 0
	.global unk_0208FB48
unk_0208FB48:
	.asciz ".SAD"
	.balign 4, 0
	.global unk_0208FB50
unk_0208FB50:
	.asciz ".sad"
	.balign 4, 0
	.global unk_0208FB58
unk_0208FB58:
	.asciz "s<%d>"
	.balign 4, 0
	.global unk_0208FB60
unk_0208FB60:
	.asciz "n<%d>"
	.balign 4, 0
	.global unk_0208FB68
unk_0208FB68:
	.asciz ".SAD"
	.balign 4, 0
	.global unk_0208FB70
unk_0208FB70:
	.asciz ".sad"
	.balign 4, 0
	.global unk_0208FB78
unk_0208FB78:
	.asciz "%s.SMW"
	.balign 4, 0
	.global unk_0208FB80
unk_0208FB80:
	.asciz "%s.SEW"
	.balign 4, 0
	.global unk_0208FB88
unk_0208FB88:
	.asciz "%s.SEW"
	.balign 4, 0
	.global unk_0208FB90
unk_0208FB90:
	.asciz "/data_iz/sound/"
	.balign 4, 0
	.global unk_0208FBA0
unk_0208FBA0:
	.asciz "/data_iz/sound/"
	.balign 4, 0
	.global unk_0208FBB0
unk_0208FBB0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.balign 4, 0
	.global unk_0208FBC8
unk_0208FBC8:
	.asciz "/data_iz/movie/%s.mods"
	.balign 4, 0
	.global unk_0208FBE0
unk_0208FBE0:
	.asciz "%s.sad"
	.balign 4, 0
	.global unk_0208FBE8
unk_0208FBE8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208FBF0
unk_0208FBF0:
	.word FUN_0202ed70
	.word FUN_0202eda8
	.global unk_0208FBF8
unk_0208FBF8:
	.asciz "rom"
	.balign 4, 0
	.global unk_0208FBFC
unk_0208FBFC:
	.asciz "rom"
	.balign 4, 0
	.global unk_0208FC00
unk_0208FC00:
	.asciz "SFP"
	.balign 4, 0
	.global unk_0208FC04
unk_0208FC04:
	.asciz "SFP"
	.balign 4, 0
	.global unk_0208FC08
unk_0208FC08:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208FC20
unk_0208FC20:
	.word unk_0208FCD4
	.global unk_0208FC24
unk_0208FC24:
	.asciz "ppu.pkb"
	.balign 4, 0
	.global unk_0208FC2C
unk_0208FC2C:
	.asciz "fac.pkb"
	.balign 4, 0
	.global unk_0208FC34
unk_0208FC34:
	.asciz "fab.pkb"
	.balign 4, 0
	.global unk_0208FC3C
unk_0208FC3C:
	.word unk_0208FC2C
	.word unk_0208FC34
	.word unk_0208FC24
	.global unk_0208FC48
unk_0208FC48:
	.asciz "mln_w02.pac_"
	.balign 4, 0
	.global unk_0208FC58
unk_0208FC58:
	.asciz "mln_w00.pac_"
	.balign 4, 0
	.global unk_0208FC68
unk_0208FC68:
	.asciz "mln_p02.pac_"
	.balign 4, 0
	.global unk_0208FC78
unk_0208FC78:
	.asciz "mln_w01.pac_"
	.balign 4, 0
	.global unk_0208FC88
unk_0208FC88:
	.asciz "mln_p00.pac_"
	.balign 4, 0
	.global unk_0208FC98
unk_0208FC98:
	.asciz "mln_p01.pac_"
	.balign 4, 0
	.global unk_0208FCA8
unk_0208FCA8:
	.asciz "mln_w03.pac_"
	.balign 4, 0
	.global unk_0208FCB8
unk_0208FCB8:
	.word unk_0208FC88
	.word unk_0208FC98
	.word unk_0208FCA8
	.word unk_0208FC48
	.word unk_0208FC58
	.word unk_0208FC68
	.word unk_0208FC78
	.global unk_0208FCD4
unk_0208FCD4:
	.asciz "/data_iz/pic3d/script/goalImg.pac_"
	.balign 4, 0
	.global unk_0208FCF8
unk_0208FCF8:
	.asciz "globalmap"
	.balign 4, 0
	.global unk_0208FD04
unk_0208FD04:
	.asciz "%s.pac_"
	.balign 4, 0
	.global unk_0208FD0C
unk_0208FD0C:
	.asciz "%s.pac_"
	.balign 4, 0
	.global unk_0208FD14
unk_0208FD14:
	.asciz "/data_iz/pic3d/script/%s.pac_"
	.balign 4, 0
	.global unk_0208FD34
unk_0208FD34:
	.asciz "/data_iz/face2d/fac.pkh"
	.balign 4, 0
	.global unk_0208FD4C
unk_0208FD4C:
	.asciz "/data_iz/face2d/fab.pkh"
	.balign 4, 0
	.global unk_0208FD64
unk_0208FD64:
	.asciz "/data_iz/face2d/ppu.pkh"
	.balign 4, 0
	.global unk_0208FD7C
unk_0208FD7C:
	.asciz "/data_iz/face2d/"
	.balign 4, 0
	.global unk_0208FD90
unk_0208FD90:
	.asciz ".pac_"
	.balign 4, 0
	.global unk_0208FD98
unk_0208FD98:
	.asciz ".nbfp"
	.balign 4, 0
	.global unk_0208FDA0
unk_0208FDA0:
	.asciz "fac%08d"
	.balign 4, 0
	.global unk_0208FDA8
unk_0208FDA8:
	.asciz "fab%08d"
	.balign 4, 0
	.global unk_0208FDB0
unk_0208FDB0:
	.asciz "ppu%04d"
	.balign 4, 0
	.global unk_0208FDB8
unk_0208FDB8:
	.asciz "/data_iz/face2d/"
	.balign 4, 0
	.global unk_0208FDCC
unk_0208FDCC:
	.asciz ".pac_"
	.balign 4, 0
	.global unk_0208FDD4
unk_0208FDD4:
	.asciz ".nbfp"
	.balign 4, 0
	.global unk_0208FDDC
unk_0208FDDC:
	.asciz "fac%08d"
	.balign 4, 0
	.global unk_0208FDE4
unk_0208FDE4:
	.asciz "fab%08d"
	.balign 4, 0
	.global unk_0208FDEC
unk_0208FDEC:
	.asciz "ppu%04d"
	.balign 4, 0
	.global unk_0208FDF4
unk_0208FDF4:
	.asciz "ball"
	.balign 4, 0
	.global unk_0208FDFC
unk_0208FDFC:
	.asciz "bal"
	.balign 4, 0
	.global unk_0208FE00
unk_0208FE00:
	.asciz "%s.pac"
	.balign 4, 0
	.global unk_0208FE08
unk_0208FE08:
	.asciz "%s.PLT"
	.balign 4, 0
	.global unk_0208FE10
unk_0208FE10:
	.asciz "%s.pac_"
	.balign 4, 0
	.global unk_0208FE18
unk_0208FE18:
	.asciz "mo%04d.pac_"
	.balign 4, 0
	.global unk_0208FE24
unk_0208FE24:
	.asciz "mbd_s001lp1.pac_"
	.balign 4, 0
	.global unk_0208FE38
unk_0208FE38:
	.asciz "mbd_s001lp2.pac_"
	.balign 4, 0
	.global unk_0208FE4C
unk_0208FE4C:
	.asciz "mbd_s%03dl.pac_"
	.balign 4, 0
	.global unk_0208FE5C
unk_0208FE5C:
	.asciz "mbd_s001rp2.pac_"
	.balign 4, 0
	.global unk_0208FE70
unk_0208FE70:
	.asciz "mbd_s001rp1.pac_"
	.balign 4, 0
	.global unk_0208FE84
unk_0208FE84:
	.asciz "mbd_s%03dr.pac_"
	.balign 4, 0
	.global unk_0208FE94
unk_0208FE94:
	.asciz "mbd_p01.pac_"
	.balign 4, 0
	.global unk_0208FEA4
unk_0208FEA4:
	.asciz "mbd_g0%d.pac_"
	.balign 4, 0
	.global unk_0208FEB4
unk_0208FEB4:
	.asciz "REPLAY_FLICKER_TIME_ON"
	.balign 4, 0
	.global unk_0208FECC
unk_0208FECC:
	.asciz "REPLAY_FLICKER_TIME_OFF"
	.balign 4, 0
	.global unk_0208FEE4
unk_0208FEE4:
	.asciz "gmdn_r00.pac_"
	.balign 4, 0
	.global unk_0208FEF4
unk_0208FEF4:
	.asciz "mbv_c0%d.pac_"
	.balign 4, 0
	.global unk_0208FF04
unk_0208FF04:
	.asciz "gmdn_u00.pac_"
	.balign 4, 0

	.bss
	.global unk_02099E8C
unk_02099E8C:
	.space 0x01
	.global unk_02099E8D
unk_02099E8D:
	.space 0x01
	.global unk_02099E8E
unk_02099E8E:
	.space 0x01
	.global unk_02099E8F
unk_02099E8F:
	.space 0x01
	.global unk_02099E90
unk_02099E90:
	.space 0x01
	.global unk_02099E91
unk_02099E91:
	.space 0x01
	.global unk_02099E92
unk_02099E92:
	.space 0x01
	.global unk_02099E93
unk_02099E93:
	.space 0x01
	.global unk_02099E94
unk_02099E94:
	.space 0x01
	.global unk_02099E95
unk_02099E95:
	.space 0x01
	.global unk_02099E96
unk_02099E96:
	.space 0x01
	.global unk_02099E97
unk_02099E97:
	.space 0x01
	.global unk_02099E98
unk_02099E98:
	.space 0x01
	.global unk_02099E99
unk_02099E99:
	.space 0x01
	.global unk_02099E9A
unk_02099E9A:
	.space 0x01
	.global unk_02099E9B
unk_02099E9B:
	.space 0x01
	.global unk_02099E9C
unk_02099E9C:
	.space 0x01
	.global unk_02099E9D
unk_02099E9D:
	.space 0x01
	.global unk_02099E9E
unk_02099E9E:
	.space 0x02
	.global unk_02099EA0
unk_02099EA0:
	.space 0x02
	.global unk_02099EA2
unk_02099EA2:
	.space 0x02
	.global unk_02099EA4
unk_02099EA4:
	.space 0x02
	.global unk_02099EA6
unk_02099EA6:
	.space 0x03
	.global unk_02099EA9
unk_02099EA9:
	.space 0x03
	.global unk_02099EAC
unk_02099EAC:
	.space 0x04
	.global unk_02099EB0
unk_02099EB0:
	.space 0x04
	.global unk_02099EB4
unk_02099EB4:
	.space 0x04
	.global unk_02099EB8
unk_02099EB8:
	.space 0x08
	.global unk_02099EC0
unk_02099EC0:
	.space 0x08
	.global unk_02099EC8
unk_02099EC8:
	.space 0x04
	.global unk_02099ECC
unk_02099ECC:
	.space 0x04
	.global unk_02099ED0
unk_02099ED0:
	.space 0x04
	.global unk_02099ED4
unk_02099ED4:
	.space 0x04
	.global unk_02099ED8
unk_02099ED8:
	.space 0x04
	.global unk_02099EDC
unk_02099EDC:
	.space 0x04
	.global unk_02099EE0
unk_02099EE0:
	.space 0x04
	.global unk_02099EE4
unk_02099EE4:
	.space 0x04
	.global unk_02099EE8
unk_02099EE8:
	.space 0x04
	.global unk_02099EEC
unk_02099EEC:
	.space 0x04
	.global unk_02099EF0
unk_02099EF0:
	.space 0x04
	.global unk_02099EF4
unk_02099EF4:
	.space 0x04
	.global unk_02099EF8
unk_02099EF8:
	.space 0x04
	.global unk_02099EFC
unk_02099EFC:
	.space 0x04
	.global unk_02099F00
unk_02099F00:
	.space 0x04
	.global unk_02099F04
unk_02099F04:
	.space 0x04
	.global unk_02099F08
unk_02099F08:
	.space 0x02
	.global unk_02099F0A
unk_02099F0A:
	.space 0x06
	.global unk_02099F10
unk_02099F10:
	.space 0x04
	.global unk_02099F14
unk_02099F14:
	.space 0x04
	.global unk_02099F18
unk_02099F18:
	.space 0x04
	.global unk_02099F1C
unk_02099F1C:
	.space 0x08
	.global unk_02099F24
unk_02099F24:
	.space 0x04
	.global unk_02099F28
unk_02099F28:
	.space 0x04
	.global unk_02099F2C
unk_02099F2C:
	.space 0x04
	.global unk_02099F30
unk_02099F30:
	.space 0x04
	.global unk_02099F34
unk_02099F34:
	.space 0x04
	.global unk_02099F38
unk_02099F38:
	.space 0x04
	.global unk_02099F3C
unk_02099F3C:
	.space 0x08
	.global unk_02099F44
unk_02099F44:
	.space 0x0C
	.global unk_02099F50
unk_02099F50:
	.space 0x04
	.global unk_02099F54
unk_02099F54:
	.space 0x04
	.global unk_02099F58
unk_02099F58:
	.space 0x04
	.global unk_02099F5C
unk_02099F5C:
	.space 0x06
	.global unk_02099F62
unk_02099F62:
	.space 0x06
	.global unk_02099F68
unk_02099F68:
	.space 0x06
	.global unk_02099F6E
unk_02099F6E:
	.space 0x0A
	.global gL5Config
gL5Config:
	.space 0x08
	.global unk_02099F80
unk_02099F80:
	.space 0x08
	.global unk_02099F88
unk_02099F88:
	.space 0x08

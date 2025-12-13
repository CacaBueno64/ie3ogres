
	.include "/macros/function.inc"
	.include "/include/arm9_init_02086768.inc"

	.section .init, 4
	arm_func_start FUN_02086768
FUN_02086768: ; 0x02086768
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x2000
	bl FX_Sqrt
	ldr r4, _02086A04 ; =0x0208F680
	str r0, [r4, #0x10]
	ldr r0, _02086A08 ; =0x00009CCD
	bl FX_Sqrt
	mov lr, #0x800
	mov r1, #0x32000
	umull r2, r3, lr, r1
	mov r5, lr, asr #0x1f
	adds r12, r2, #0x800
	mla r3, r5, r1, r3
	mov r2, #0x41000
	adc r3, r3, #0
	mov r6, r12, lsr #0xc
	orr r6, r6, r3, lsl #20
	str r0, [r4, #8]
	str lr, [r4, #4]
	umull r3, r0, lr, r2
	mla r0, r5, r2, r0
	ldr r5, _02086A0C ; =0x0000EA3C
	mov r12, r6, asr #0x1f
	str r5, [r4]
	umull r5, lr, r6, r1
	mla lr, r12, r1, lr
	adds r5, r5, #0x800
	adc r1, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r1, lsl #20
	str r5, [r4, #0x14]
	adds r1, r3, #0x800
	adc r0, r0, #0
	mov r12, r1, lsr #0xc
	orr r12, r12, r0, lsl #20
	mov r0, r12, asr #0x1f
	umull r3, r1, r12, r2
	mla r1, r0, r2, r1
	adds r2, r3, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0xc]
	ldr r4, _02086A10 ; =gL5Config
	mov r0, r4
	bl _ZN8L5ConfigC1Ev
	mov r0, r4
	ldr r1, _02086A14 ; =_ZN8L5ConfigD1Ev
	ldr r2, _02086A18 ; =0x02099FA8
	bl __register_global_object
	ldr r4, _02086A1C ; =gCFileIO
	mov r0, r4
	bl _ZN7CFileIOC1Ev
	mov r0, r4
	ldr r1, _02086A20 ; =_ZN7CFileIOD1Ev
	ldr r2, _02086A24 ; =0x02099FB4
	bl __register_global_object
	ldr r4, _02086A28 ; =0x0209A5D0
	mov r0, r4
	bl FUN_0205ff80
	mov r0, r4
	ldr r1, _02086A2C ; =FUN_0205ff98
	ldr r2, _02086A30 ; =0x02099FC0
	bl __register_global_object
	ldr r4, _02086A34 ; =gL5CardController
	mov r0, r4
	bl _ZN16L5CardControllerC1Ev
	mov r0, r4
	ldr r1, _02086A38 ; =_ZN16L5CardControllerD1Ev
	ldr r2, _02086A3C ; =0x02099FCC
	bl __register_global_object
	ldr r4, _02086A40 ; =gL5Allocator
	mov r0, r4
	bl FUN_0202dbf8
	mov r0, r4
	ldr r1, _02086A44 ; =FUN_0202dc1c
	ldr r2, _02086A48 ; =0x02099FD8
	bl __register_global_object
	ldr r4, _02086A4C ; =gL5Sound
	mov r0, r4
	bl FUN_0202b3dc
	mov r0, r4
	ldr r1, _02086A50 ; =FUN_0202b3e0
	ldr r2, _02086A54 ; =0x02099FE4
	bl __register_global_object
	ldr r4, _02086A58 ; =gL5Movie
	mov r0, r4
	bl _ZN7L5MovieC1Ev
	mov r0, r4
	ldr r1, _02086A5C ; =_ZN7L5MovieD1Ev
	ldr r2, _02086A60 ; =0x02099FF0
	bl __register_global_object
	ldr r2, _02086A64 ; =0x0208F6C0
	ldr r0, _02086A68 ; =0x020A3D14
	ldr r1, _02086A6C ; =0x0208F6B0
	str r2, [r0]
	ldr r0, _02086A70 ; =0x0209F5C0
	ldr r2, _02086A74 ; =0x0208F6D0
	str r1, [r0]
	ldr r0, _02086A78 ; =0x02099E8C
	ldr r1, _02086A7C ; =0x0209A3E0
	str r2, [r0, #0x1e4]
	ldr r0, _02086A80 ; =0x02118988
	ldr r4, _02086A84 ; =0x020AF81C
	str r0, [r1]
	mov r0, r4
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _02086A88 ; =0x0209007C
	add r0, r4, #0x90
	str r1, [r4]
	bl FUN_02047a7c
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_0202ffa4
	mov r0, r4
	ldr r1, _02086A8C ; =FUN_02029d18
	ldr r2, _02086A90 ; =0x02099FFC
	bl __register_global_object
	ldr r4, _02086A94 ; =0x020A9C40
	mov r0, r4
	bl FUN_020453e0
	mov r0, r4
	ldr r1, _02086A98 ; =FUN_02045458
	ldr r2, _02086A9C ; =0x0209A008
	bl __register_global_object
	ldr r4, _02086AA0 ; =0x0209BA20
	mov r0, r4
	bl FUN_0206f0b8
	mov r0, r4
	ldr r1, _02086AA4 ; =FUN_0206f150
	ldr r2, _02086AA8 ; =0x0209A020
	bl __register_global_object
	ldr r4, _02086AAC ; =0x0209A320
	mov r0, r4
	bl FUN_020495b4
	mov r0, r4
	ldr r1, _02086AB0 ; =FUN_020495cc
	ldr r2, _02086AB4 ; =0x0209A02C
	bl __register_global_object
	ldr r4, _02086AB8 ; =0x0209A380
	mov r0, r4
	bl FUN_0204947c
	mov r0, r4
	ldr r1, _02086ABC ; =FUN_0204949c
	ldr r2, _02086AC0 ; =0x0209A038
	bl __register_global_object
	ldr r4, _02086AC4 ; =0x0209A0AC
	mov r0, r4
	bl FUN_0206c0d8
	mov r0, r4
	ldr r1, _02086AC8 ; =FUN_0206c110
	ldr r2, _02086ACC ; =0x0209A044
	bl __register_global_object
	ldr r4, _02086AD0 ; =0x020A18A0
	mov r0, r4
	bl FUN_0203df80
	mov r0, r4
	ldr r1, _02086AD4 ; =FUN_0203df84
	ldr r2, _02086AD8 ; =0x02099F90
	bl __register_global_object
	ldr r2, _02086ADC ; =0x02090204
	ldr r0, _02086AE0 ; =0x0209AEC0
	ldr r1, _02086AE4 ; =FUN_020463f4
	str r2, [r0]
	ldr r2, _02086AE8 ; =0x02099F9C
	bl __register_global_object
	ldmfd sp!, {r4, r5, r6, pc}
_02086A04: .word unk_0208F680
_02086A08: .word 0x00009CCD
_02086A0C: .word 0x0000EA3C
_02086A10: .word gL5Config
_02086A14: .word _ZN8L5ConfigD1Ev
_02086A18: .word unk_02099FA8
_02086A1C: .word gCFileIO
_02086A20: .word _ZN7CFileIOD1Ev
_02086A24: .word unk_02099FB4
_02086A28: .word unk_0209A5D0
_02086A2C: .word FUN_0205ff98
_02086A30: .word unk_02099FC0
_02086A34: .word gL5CardController
_02086A38: .word _ZN16L5CardControllerD1Ev
_02086A3C: .word unk_02099FCC
_02086A40: .word gL5Allocator
_02086A44: .word FUN_0202dc1c
_02086A48: .word unk_02099FD8
_02086A4C: .word gL5Sound
_02086A50: .word FUN_0202b3e0
_02086A54: .word unk_02099FE4
_02086A58: .word gL5Movie
_02086A5C: .word _ZN7L5MovieD1Ev
_02086A60: .word unk_02099FF0
_02086A64: .word unk_0208F6C0
_02086A68: .word unk_020A3D14
_02086A6C: .word unk_0208F6B0
_02086A70: .word gBgMenuManager
_02086A74: .word unk_0208F6D0
_02086A78: .word unk_02099E8C
_02086A7C: .word unk_0209A3E0
_02086A80: .word ov16_02118988
_02086A84: .word unk_020AF81C
_02086A88: .word unk_0209007C
_02086A8C: .word FUN_02029d18
_02086A90: .word unk_02099FFC
_02086A94: .word unk_020A9C40
_02086A98: .word FUN_02045458
_02086A9C: .word unk_0209A008
_02086AA0: .word unk_0209BA20
_02086AA4: .word FUN_0206f150
_02086AA8: .word unk_0209A020
_02086AAC: .word unk_0209A320
_02086AB0: .word FUN_020495cc
_02086AB4: .word unk_0209A02C
_02086AB8: .word unk_0209A380
_02086ABC: .word FUN_0204949c
_02086AC0: .word unk_0209A038
_02086AC4: .word unk_0209A0AC
_02086AC8: .word FUN_0206c110
_02086ACC: .word unk_0209A044
_02086AD0: .word unk_020A18A0
_02086AD4: .word FUN_0203df84
_02086AD8: .word unk_02099F90
_02086ADC: .word unk_02090204
_02086AE0: .word unk_0209AEC0
_02086AE4: .word FUN_020463f4
_02086AE8: .word unk_02099F9C
	arm_func_end FUN_02086768

	arm_func_start FUN_02086aec
FUN_02086aec: ; 0x02086AEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086B34 ; =0x0208F880
	str r0, [r4, #0x10]
	ldr r0, _02086B38 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02086B3C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086B34: .word unk_0208F880
_02086B38: .word 0x00009CCD
_02086B3C: .word 0x0000EA3C
	arm_func_end FUN_02086aec

	arm_func_start FUN_02086b40
FUN_02086b40: ; 0x02086B40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086B88 ; =0x0208FA30
	str r0, [r4, #8]
	ldr r0, _02086B8C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086B90 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02086B88: .word unk_0208FA30
_02086B8C: .word 0x00009CCD
_02086B90: .word 0x0000EA3C
	arm_func_end FUN_02086b40

	arm_func_start FUN_02086b94
FUN_02086b94: ; 0x02086B94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086BDC ; =0x0208FBB0
	str r0, [r4, #0x14]
	ldr r0, _02086BE0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086BE4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086BDC: .word unk_0208FBB0
_02086BE0: .word 0x00009CCD
_02086BE4: .word 0x0000EA3C
	arm_func_end FUN_02086b94

	arm_func_start FUN_02086be8
FUN_02086be8: ; 0x02086BE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086C30 ; =0x0208FC08
	str r0, [r4, #4]
	ldr r0, _02086C34 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _02086C38 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086C30: .word unk_0208FC08
_02086C34: .word 0x00009CCD
_02086C38: .word 0x0000EA3C
	arm_func_end FUN_02086be8

	arm_func_start FUN_02086c3c
FUN_02086c3c: ; 0x02086C3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086C80 ; =0x0208FF14
	str r0, [r4, #0x10]
	ldr r0, _02086C84 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02086C88 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086C80: .word unk_0208FF14
_02086C84: .word 0x00009CCD
_02086C88: .word 0x0000EA3C
	arm_func_end FUN_02086c3c

	arm_func_start FUN_02086c8c
FUN_02086c8c: ; 0x02086C8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086CD4 ; =0x0208FF2C
	str r0, [r4, #0x14]
	ldr r0, _02086CD8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086CDC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086CD4: .word unk_0208FF2C
_02086CD8: .word 0x00009CCD
_02086CDC: .word 0x0000EA3C
	arm_func_end FUN_02086c8c

	arm_func_start FUN_02086ce0
FUN_02086ce0: ; 0x02086CE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086D28 ; =0x0208FF44
	str r0, [r4, #0x14]
	ldr r0, _02086D2C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086D30 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086D28: .word unk_0208FF44
_02086D2C: .word 0x00009CCD
_02086D30: .word 0x0000EA3C
	arm_func_end FUN_02086ce0

	arm_func_start FUN_02086d34
FUN_02086d34: ; 0x02086D34
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086D7C ; =0x0208FF5C
	str r0, [r4, #0x14]
	ldr r0, _02086D80 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086D84 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086D7C: .word unk_0208FF5C
_02086D80: .word 0x00009CCD
_02086D84: .word 0x0000EA3C
	arm_func_end FUN_02086d34

	arm_func_start FUN_02086d88
FUN_02086d88: ; 0x02086D88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086DD0 ; =0x0208FF74
	str r0, [r4]
	ldr r0, _02086DD4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086DD8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086DD0: .word unk_0208FF74
_02086DD4: .word 0x00009CCD
_02086DD8: .word 0x0000EA3C
	arm_func_end FUN_02086d88

	arm_func_start FUN_02086ddc
FUN_02086ddc: ; 0x02086DDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086E24 ; =0x0209000C
	str r0, [r4, #0x14]
	ldr r0, _02086E28 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086E2C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086E24: .word unk_0209000C
_02086E28: .word 0x00009CCD
_02086E2C: .word 0x0000EA3C
	arm_func_end FUN_02086ddc

	arm_func_start FUN_02086e30
FUN_02086e30: ; 0x02086E30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086E78 ; =0x02090034
	str r0, [r4]
	ldr r0, _02086E7C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086E80 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086E78: .word unk_02090034
_02086E7C: .word 0x00009CCD
_02086E80: .word 0x0000EA3C
	arm_func_end FUN_02086e30

	arm_func_start FUN_02086e84
FUN_02086e84: ; 0x02086E84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086ECC ; =0x0209005C
	str r0, [r4]
	ldr r0, _02086ED0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086ED4 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086ECC: .word unk_0209005C
_02086ED0: .word 0x00009CCD
_02086ED4: .word 0x0000EA3C
	arm_func_end FUN_02086e84

	arm_func_start FUN_02086ed8
FUN_02086ed8: ; 0x02086ED8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086F20 ; =0x0209010C
	str r0, [r4, #0x14]
	ldr r0, _02086F24 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086F28 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086F20: .word unk_0209010C
_02086F24: .word 0x00009CCD
_02086F28: .word 0x0000EA3C
	arm_func_end FUN_02086ed8

	arm_func_start FUN_02086f2c
FUN_02086f2c: ; 0x02086F2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086F74 ; =0x020901D0
	str r0, [r4, #0x14]
	ldr r0, _02086F78 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02086F7C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_02086F74: .word unk_020901D0
_02086F78: .word 0x00009CCD
_02086F7C: .word 0x0000EA3C
	arm_func_end FUN_02086f2c

	arm_func_start FUN_02086f80
FUN_02086f80: ; 0x02086F80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086FC8 ; =0x02090224
	str r0, [r4, #8]
	ldr r0, _02086FCC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02086FD0 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086FC8: .word unk_02090224
_02086FCC: .word 0x00009CCD
_02086FD0: .word 0x0000EA3C
	arm_func_end FUN_02086f80

	arm_func_start FUN_02086fd4
FUN_02086fd4: ; 0x02086FD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208701C ; =0x020902D0
	str r0, [r4, #8]
	ldr r0, _02087020 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02087024 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0208701C: .word unk_020902D0
_02087020: .word 0x00009CCD
_02087024: .word 0x0000EA3C
	arm_func_end FUN_02086fd4

	arm_func_start FUN_02087028
FUN_02087028: ; 0x02087028
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087070 ; =0x02090408
	str r0, [r4, #0x14]
	ldr r0, _02087074 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087078 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087070: .word unk_02090408
_02087074: .word 0x00009CCD
_02087078: .word 0x0000EA3C
	arm_func_end FUN_02087028

	arm_func_start FUN_0208707c
FUN_0208707c: ; 0x0208707C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020870C4 ; =0x02090464
	str r0, [r4, #0x14]
	ldr r0, _020870C8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020870CC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020870C4: .word unk_02090464
_020870C8: .word 0x00009CCD
_020870CC: .word 0x0000EA3C
	arm_func_end FUN_0208707c

	arm_func_start FUN_020870d0
FUN_020870d0: ; 0x020870D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087114 ; =0x020904C0
	str r0, [r4, #0x10]
	ldr r0, _02087118 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0208711C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02087114: .word unk_020904C0
_02087118: .word 0x00009CCD
_0208711C: .word 0x0000EA3C
	arm_func_end FUN_020870d0

	arm_func_start FUN_02087120
FUN_02087120: ; 0x02087120
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087168 ; =0x020904F4
	str r0, [r4, #0x14]
	ldr r0, _0208716C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087170 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087168: .word unk_020904F4
_0208716C: .word 0x00009CCD
_02087170: .word 0x0000EA3C
	arm_func_end FUN_02087120

	arm_func_start FUN_02087174
FUN_02087174: ; 0x02087174
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020871BC ; =0x0209055C
	str r0, [r4, #0x14]
	ldr r0, _020871C0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020871C4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020871BC: .word unk_0209055C
_020871C0: .word 0x00009CCD
_020871C4: .word 0x0000EA3C
	arm_func_end FUN_02087174

	arm_func_start FUN_020871c8
FUN_020871c8: ; 0x020871C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208720C ; =0x02090584
	str r0, [r4, #0x10]
	ldr r0, _02087210 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02087214 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0208720C: .word unk_02090584
_02087210: .word 0x00009CCD
_02087214: .word 0x0000EA3C
	arm_func_end FUN_020871c8

	arm_func_start FUN_02087218
FUN_02087218: ; 0x02087218
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208725C ; =0x0209059C
	str r0, [r4, #0x10]
	ldr r0, _02087260 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02087264 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0208725C: .word unk_0209059C
_02087260: .word 0x00009CCD
_02087264: .word 0x0000EA3C
	arm_func_end FUN_02087218

	arm_func_start FUN_02087268
FUN_02087268: ; 0x02087268
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020872B0 ; =0x020905B4
	str r0, [r4]
	ldr r0, _020872B4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020872B8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020872B0: .word unk_020905B4
_020872B4: .word 0x00009CCD
_020872B8: .word 0x0000EA3C
	arm_func_end FUN_02087268

	arm_func_start FUN_020872bc
FUN_020872bc: ; 0x020872BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087304 ; =0x020905E8
	str r0, [r4]
	ldr r0, _02087308 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0208730C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087304: .word unk_020905E8
_02087308: .word 0x00009CCD
_0208730C: .word 0x0000EA3C
	arm_func_end FUN_020872bc

	arm_func_start FUN_02087310
FUN_02087310: ; 0x02087310
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087354 ; =0x02090698
	str r0, [r4, #0x10]
	ldr r0, _02087358 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0208735C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02087354: .word unk_02090698
_02087358: .word 0x00009CCD
_0208735C: .word 0x0000EA3C
	arm_func_end FUN_02087310

	arm_func_start FUN_02087360
FUN_02087360: ; 0x02087360
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020873A8 ; =0x020906B0
	str r0, [r4]
	ldr r0, _020873AC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020873B0 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020873A8: .word unk_020906B0
_020873AC: .word 0x00009CCD
_020873B0: .word 0x0000EA3C
	arm_func_end FUN_02087360

	arm_func_start FUN_020873b4
FUN_020873b4: ; 0x020873B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020873FC ; =0x020906C8
	str r0, [r4, #0x14]
	ldr r0, _02087400 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087404 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020873FC: .word unk_020906C8
_02087400: .word 0x00009CCD
_02087404: .word 0x0000EA3C
	arm_func_end FUN_020873b4

	arm_func_start FUN_02087408
FUN_02087408: ; 0x02087408
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087450 ; =0x020906FC
	str r0, [r4]
	ldr r0, _02087454 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02087458 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087450: .word unk_020906FC
_02087454: .word 0x00009CCD
_02087458: .word 0x0000EA3C
	arm_func_end FUN_02087408

	arm_func_start FUN_0208745c
FUN_0208745c: ; 0x0208745C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020874A4 ; =0x020907BC
	str r0, [r4]
	ldr r0, _020874A8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020874AC ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020874A4: .word unk_020907BC
_020874A8: .word 0x00009CCD
_020874AC: .word 0x0000EA3C
	arm_func_end FUN_0208745c

	arm_func_start FUN_020874b0
FUN_020874b0: ; 0x020874B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020874F4 ; =0x02090804
	str r0, [r4, #0x10]
	ldr r0, _020874F8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020874FC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020874F4: .word unk_02090804
_020874F8: .word 0x00009CCD
_020874FC: .word 0x0000EA3C
	arm_func_end FUN_020874b0

	arm_func_start FUN_02087500
FUN_02087500: ; 0x02087500
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087548 ; =0x02090894
	str r0, [r4, #4]
	ldr r0, _0208754C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02087550 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02087548: .word unk_02090894
_0208754C: .word 0x00009CCD
_02087550: .word 0x0000EA3C
	arm_func_end FUN_02087500

	arm_func_start FUN_02087554
FUN_02087554: ; 0x02087554
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208759C ; =0x0209093C
	str r0, [r4, #8]
	ldr r0, _020875A0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020875A4 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0208759C: .word unk_0209093C
_020875A0: .word 0x00009CCD
_020875A4: .word 0x0000EA3C
	arm_func_end FUN_02087554

	arm_func_start FUN_020875a8
FUN_020875a8: ; 0x020875A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020875F0 ; =0x020909B0
	str r0, [r4]
	ldr r0, _020875F4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020875F8 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020875F0: .word unk_020909B0
_020875F4: .word 0x00009CCD
_020875F8: .word 0x0000EA3C
	arm_func_end FUN_020875a8

	arm_func_start FUN_020875fc
FUN_020875fc: ; 0x020875FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087644 ; =0x02090B3C
	str r0, [r4, #4]
	ldr r0, _02087648 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0208764C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087644: .word unk_02090B3C
_02087648: .word 0x00009CCD
_0208764C: .word 0x0000EA3C
	arm_func_end FUN_020875fc

	arm_func_start FUN_02087650
FUN_02087650: ; 0x02087650
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087698 ; =0x02090DB4
	str r0, [r4, #0x14]
	ldr r0, _0208769C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020876A0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087698: .word unk_02090DB4
_0208769C: .word 0x00009CCD
_020876A0: .word 0x0000EA3C
	arm_func_end FUN_02087650

	arm_func_start FUN_020876a4
FUN_020876a4: ; 0x020876A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020876EC ; =0x020912B0
	str r0, [r4, #0x14]
	ldr r0, _020876F0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020876F4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020876EC: .word unk_020912B0
_020876F0: .word 0x00009CCD
_020876F4: .word 0x0000EA3C
	arm_func_end FUN_020876a4

	arm_func_start FUN_020876f8
FUN_020876f8: ; 0x020876F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087740 ; =0x020912D8
	str r0, [r4, #4]
	ldr r0, _02087744 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02087748 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02087740: .word unk_020912D8
_02087744: .word 0x00009CCD
_02087748: .word 0x0000EA3C
	arm_func_end FUN_020876f8

	arm_func_start FUN_0208774c
FUN_0208774c: ; 0x0208774C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087794 ; =0x020938A0
	str r0, [r4]
	ldr r0, _02087798 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0208779C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087794: .word unk_020938A0
_02087798: .word 0x00009CCD
_0208779C: .word 0x0000EA3C
	arm_func_end FUN_0208774c

	arm_func_start FUN_020877a0
FUN_020877a0: ; 0x020877A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020877E4 ; =0x020938F4
	str r0, [r4, #0x10]
	ldr r0, _020877E8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020877EC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020877E4: .word unk_020938F4
_020877E8: .word 0x00009CCD
_020877EC: .word 0x0000EA3C
	arm_func_end FUN_020877a0
	; 0x020877F0

	.data
	.global unk_020938F4
unk_020938F4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

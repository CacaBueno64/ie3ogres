
	.include "/macros/function.inc"
	.include "/include/arm9_init.inc"

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
	ldr r4, _02086A10 ; =gConfig
	mov r0, r4
	bl _ZN6ConfigC1Ev
	mov r0, r4
	ldr r1, _02086A14 ; =_ZN6ConfigD1Ev
	ldr r2, _02086A18 ; =0x02099FA8
	bl __register_global_object
	ldr r4, _02086A1C ; =gFileIO
	mov r0, r4
	bl _ZN7CFileIOC1Ev
	mov r0, r4
	ldr r1, _02086A20 ; =_ZN7CFileIOD1Ev
	ldr r2, _02086A24 ; =0x02099FB4
	bl __register_global_object
	ldr r4, _02086A28 ; =gRecordManager
	mov r0, r4
	bl FUN_0205ff80
	mov r0, r4
	ldr r1, _02086A2C ; =FUN_0205ff98
	ldr r2, _02086A30 ; =0x02099FC0
	bl __register_global_object
	ldr r4, _02086A34 ; =gCardController
	mov r0, r4
	bl _ZN14CardControllerC1Ev
	mov r0, r4
	ldr r1, _02086A38 ; =_ZN14CardControllerD1Ev
	ldr r2, _02086A3C ; =0x02099FCC
	bl __register_global_object
	ldr r4, _02086A40 ; =gAllocator
	mov r0, r4
	bl _ZN9AllocatorC1Ev
	mov r0, r4
	ldr r1, _02086A44 ; =_ZN9AllocatorD1Ev
	ldr r2, _02086A48 ; =0x02099FD8
	bl __register_global_object
	ldr r4, _02086A4C ; =gAudioPlayer
	mov r0, r4
	bl FUN_0202b3dc
	mov r0, r4
	ldr r1, _02086A50 ; =FUN_0202b3e0
	ldr r2, _02086A54 ; =0x02099FE4
	bl __register_global_object
	ldr r4, _02086A58 ; =gMovie
	mov r0, r4
	bl _ZN5MovieC1Ev
	mov r0, r4
	ldr r1, _02086A5C ; =_ZN5MovieD1Ev
	ldr r2, _02086A60 ; =0x02099FF0
	bl __register_global_object
	ldr r2, _02086A64 ; =0x0208F6C0
	ldr r0, _02086A68 ; =0x020A3D14
	ldr r1, _02086A6C ; =0x0208F6B0
	str r2, [r0]
	ldr r0, _02086A70 ; =gBgMenuManager
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
	ldr r4, _02086AA0 ; =gLogicThink
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
	ldr r4, _02086AC4 ; =gUnitMan
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
_02086A10: .word gConfig
_02086A14: .word _ZN6ConfigD1Ev
_02086A18: .word unk_02099FA8
_02086A1C: .word gFileIO
_02086A20: .word _ZN7CFileIOD1Ev
_02086A24: .word unk_02099FB4
_02086A28: .word gRecordManager
_02086A2C: .word FUN_0205ff98
_02086A30: .word unk_02099FC0
_02086A34: .word gCardController
_02086A38: .word _ZN14CardControllerD1Ev
_02086A3C: .word unk_02099FCC
_02086A40: .word gAllocator
_02086A44: .word _ZN9AllocatorD1Ev
_02086A48: .word unk_02099FD8
_02086A4C: .word gAudioPlayer
_02086A50: .word FUN_0202b3e0
_02086A54: .word unk_02099FE4
_02086A58: .word gMovie
_02086A5C: .word _ZN5MovieD1Ev
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
_02086AA0: .word gLogicThink
_02086AA4: .word FUN_0206f150
_02086AA8: .word unk_0209A020
_02086AAC: .word unk_0209A320
_02086AB0: .word FUN_020495cc
_02086AB4: .word unk_0209A02C
_02086AB8: .word unk_0209A380
_02086ABC: .word FUN_0204949c
_02086AC0: .word unk_0209A038
_02086AC4: .word gUnitMan
_02086AC8: .word FUN_0206c110
_02086ACC: .word unk_0209A044
_02086AD0: .word unk_020A18A0
_02086AD4: .word FUN_0203df84
_02086AD8: .word unk_02099F90
_02086ADC: .word unk_02090204
_02086AE0: .word gWirelessUtil
_02086AE4: .word FUN_020463f4
_02086AE8: .word unk_02099F9C
	arm_func_end FUN_02086768

	.section .ctor, 4
#pragma force_active on
unk_0208EB60:
    .word FUN_02086768

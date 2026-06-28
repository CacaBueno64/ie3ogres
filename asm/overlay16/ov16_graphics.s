
	.include "/macros/function.inc"
	.include "/include/ov16_graphics.inc"

	.text
	arm_func_start _ZN8Graphics12ResetBGPulseE12EngineSelect
_ZN8Graphics12ResetBGPulseE12EngineSelect: ; 0x020F0E0C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020F0E7C ; =gBGPulseFlags
	mov r4, r0
	ldr r6, _020F0E80 ; =gBGPulsePaletteEnable
	mov r0, #0
	ldr r12, _020F0E84 ; =gBGPulsePhase
	mov r5, #0x10
	mov r2, r5
	strb r0, [r1, r4, lsl #1]
	add r3, r1, r4, lsl #1
	add r1, r6, r4, lsl #4
	strb r0, [r12, r4]
	strb r0, [r3, #1]
	bl MIi_CpuClearFast
	mov r1, r5
	add r0, r6, r4, lsl #4
	bl DC_FlushRange
	ldr r0, _020F0E88 ; =gBGPalettesTemp
	ldr r6, _020F0E8C ; =gBGPalettesFinal
	mov r5, #0x200
	mov r2, r5
	add r0, r0, r4, lsl #9
	add r1, r6, r4, lsl #9
	bl MIi_CpuCopyFast
	mov r1, r5
	add r0, r6, r4, lsl #9
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_020F0E7C: .word gBGPulseFlags
_020F0E80: .word gBGPulsePaletteEnable
_020F0E84: .word gBGPulsePhase
_020F0E88: .word gBGPalettesTemp
_020F0E8C: .word gBGPalettesFinal
	arm_func_end _ZN8Graphics12ResetBGPulseE12EngineSelect

	arm_func_start _ZN8Graphics11StopBGPulseE12EngineSelect
_ZN8Graphics11StopBGPulseE12EngineSelect: ; 0x020F0E90
	ldr r12, _020F0E98 ; =_ZN8Graphics12ResetBGPulseE12EngineSelect
	bx r12
_020F0E98: .word _ZN8Graphics12ResetBGPulseE12EngineSelect
	arm_func_end _ZN8Graphics11StopBGPulseE12EngineSelect

	arm_func_start _ZN8Graphics17SetBGPalettePulseE12EngineSelectii
_ZN8Graphics17SetBGPalettePulseE12EngineSelectii: ; 0x020F0E9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020F0F48 ; =gBGPulsePaletteEnable
	mov r6, r0
	mov r5, r1
	add r0, r4, r6, lsl #4
	strb r2, [r5, r0]
	cmp r2, #0
	bne _020F0F28
	ldr r0, _020F0F4C ; =gBGPalettesTemp
	ldr r8, _020F0F50 ; =gBGPalettesFinal
	add r0, r0, r6, lsl #9
	add r1, r8, r6, lsl #9
	mov r7, #0x20
	mov r2, r7
	add r0, r0, r5, lsl #5
	add r1, r1, r5, lsl #5
	bl MIi_CpuCopyFast
	add r0, r8, r6, lsl #9
	mov r1, r7
	add r0, r0, r5, lsl #5
	bl DC_FlushRange
	mov r1, #0
	mov r3, r1
	add r2, r4, r6, lsl #4
	b _020F0F18
_020F0F00:
	ldrb r0, [r2]
	cmp r0, #0
	movne r1, #1
	bne _020F0F20
	add r3, r3, #1
	add r2, r2, #1
_020F0F18:
	cmp r3, #0x10
	blt _020F0F00
_020F0F20:
	ldr r0, _020F0F54 ; =gBGPulseFlags
	b _020F0F30
_020F0F28:
	ldr r0, _020F0F54 ; =gBGPulseFlags
	mov r1, #1
_020F0F30:
	strb r1, [r0, r6, lsl #1]
	ldr r0, _020F0F54 ; =gBGPulseFlags
	mov r1, #1
	add r0, r0, r6, lsl #1
	strb r1, [r0, #1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F0F48: .word gBGPulsePaletteEnable
_020F0F4C: .word gBGPalettesTemp
_020F0F50: .word gBGPalettesFinal
_020F0F54: .word gBGPulseFlags
	arm_func_end _ZN8Graphics17SetBGPalettePulseE12EngineSelectii

	arm_func_start _ZN8Graphics19ApplyBGPalettePulseE12EngineSelect
_ZN8Graphics19ApplyBGPalettePulseE12EngineSelect: ; 0x020F0F58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020F105C ; =gBGPulseFlags
	ldrb r1, [r1, r0, lsl #1]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020F1060 ; =gBGPulsePhase
	ldr r2, _020F1064 ; =gDeltaTime
	ldrb r3, [r1, r0]
	ldr r2, [r2]
	ldr r6, _020F1068 ; =gBGPalettesTemp
	add r2, r3, r2
	and r2, r2, #0x1f
	mov r3, r2, lsl #0xb
	mov r5, r3, asr #4
	ldr r3, _020F106C ; =FX_SinCosTable_
	mov r5, r5, lsl #2
	ldrsh r3, [r3, r5]
	ldr r4, _020F1070 ; =gBGPulsePaletteEnable
	ldr r7, _020F1074 ; =gBGPalettesFinal
	add r5, r3, r3, lsl #3
	mov r3, r5, asr #0xb
	add r3, r5, r3, lsr #20
	mov r3, r3, asr #0xc
	add lr, r6, r0, lsl #9
	mov r6, #0
	add r5, r3, #0x17
	strb r2, [r1, r0]
	add r4, r4, r0, lsl #4
	add r12, r7, r0, lsl #9
	mov r3, r6
	b _020F1040
_020F0FD4:
	ldrb r1, [r4]
	cmp r1, #0
	addeq r12, r12, #0x20
	addeq lr, lr, #0x20
	beq _020F1038
	mov r7, r3
	b _020F1030
_020F0FF0:
	ldrh r2, [lr], #2
	add r7, r7, #1
	mov r1, r2, asr #5
	and r9, r1, #0x1f
	mov r8, r2, asr #0xa
	mul r1, r9, r5
	and r8, r8, #0x1f
	mul r9, r8, r5
	and r8, r2, #0x1f
	mov r2, r1, asr #5
	mul r1, r8, r5
	mov r8, r9, asr #5
	mov r2, r2, lsl #5
	orr r2, r2, r8, lsl #10
	orr r1, r2, r1, asr #5
	strh r1, [r12], #2
_020F1030:
	cmp r7, #0x10
	blt _020F0FF0
_020F1038:
	add r6, r6, #1
	add r4, r4, #1
_020F1040:
	cmp r6, #0x10
	blt _020F0FD4
	ldr r2, _020F1074 ; =gBGPalettesFinal
	mov r1, #0x200
	add r0, r2, r0, lsl #9
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F105C: .word gBGPulseFlags
_020F1060: .word gBGPulsePhase
_020F1064: .word gDeltaTime
_020F1068: .word gBGPalettesTemp
_020F106C: .word FX_SinCosTable_
_020F1070: .word gBGPulsePaletteEnable
_020F1074: .word gBGPalettesFinal
	arm_func_end _ZN8Graphics19ApplyBGPalettePulseE12EngineSelect

	arm_func_start _ZN8Graphics18SetBGPaletteDirectE12EngineSelectiit
_ZN8Graphics18SetBGPaletteDirectE12EngineSelectiit: ; 0x020F1078
	stmfd sp!, {r3, lr}
	ldr lr, _020F10A4 ; =gBGPalettesTemp
	ldr r12, _020F10A8 ; =gBGPalettesFinal
	add lr, lr, r0, lsl #9
	add r0, r12, r0, lsl #9
	mov r12, r2, lsl #1
	add r2, lr, r1, lsl #5
	add r0, r0, r1, lsl #5
	strh r3, [r12, r2]
	strh r3, [r12, r0]
	ldmfd sp!, {r3, pc}
_020F10A4: .word gBGPalettesTemp
_020F10A8: .word gBGPalettesFinal
	arm_func_end _ZN8Graphics18SetBGPaletteDirectE12EngineSelectiit

	arm_func_start _ZN8Graphics17LoadBGPaletteMainEv
_ZN8Graphics17LoadBGPaletteMainEv: ; 0x020F10AC
	ldr r0, _020F10C0 ; =gBGPalettesFinal
	ldr r12, _020F10C4 ; =GX_LoadBGPltt
	mov r1, #0
	mov r2, #0x200
	bx r12
_020F10C0: .word gBGPalettesFinal
_020F10C4: .word GX_LoadBGPltt
	arm_func_end _ZN8Graphics17LoadBGPaletteMainEv

	arm_func_start _ZN8Graphics16LoadBGPaletteSubEv
_ZN8Graphics16LoadBGPaletteSubEv: ; 0x020F10C8
	ldr r0, _020F10DC ; =gBGPalettesFinal+0x200
	ldr r12, _020F10E0 ; =GXS_LoadBGPltt
	mov r1, #0
	mov r2, #0x200
	bx r12
_020F10DC: .word gBGPalettesFinal+0x200
_020F10E0: .word GXS_LoadBGPltt
	arm_func_end _ZN8Graphics16LoadBGPaletteSubEv

	arm_func_start _ZN8Graphics13LoadBGPaletteE12EngineSelect
_ZN8Graphics13LoadBGPaletteE12EngineSelect: ; 0x020F10E4
	stmfd sp!, {r4, lr}
	ldr r1, _020F1130 ; =gBGPulseFlags
	mov r4, r0
	ldrb r0, [r1, r4, lsl #1]
	cmp r0, #0
	bne _020F110C
	ldr r0, _020F1134 ; =0x0209A101
	ldrb r0, [r0, r4, lsl #1]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020F110C:
	cmp r4, #0
	bne _020F111C
	bl _ZN8Graphics17LoadBGPaletteMainEv
	b _020F1120
_020F111C:
	bl _ZN8Graphics16LoadBGPaletteSubEv
_020F1120:
	ldr r0, _020F1134 ; =0x0209A101
	mov r1, #0
	strb r1, [r0, r4, lsl #1]
	ldmfd sp!, {r4, pc}
_020F1130: .word gBGPulseFlags
_020F1134: .word gBGPulseFlags+1
	arm_func_end _ZN8Graphics13LoadBGPaletteE12EngineSelect

	arm_func_start _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
_ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti: ; 0x020F1138
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r0, #8]
	cmp r3, #0x20
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #4]
	add r0, r0, r3
	bl _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti

	arm_func_start _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti
_ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti: ; 0x020F1160
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r0
	mov r6, r2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _020F1208 ; =gBGPalettesTemp
	ldr r2, _020F120C ; =gBGPalettesFinal
	add r4, r3, r1, lsl #9
	add r3, r2, r1, lsl #9
	add r4, r4, r6, lsl #5
	mov r8, #0x20
	mov r1, r4
	mov r2, r8
	add r5, r3, r6, lsl #5
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
	cmp r6, #0
	bne _020F11E8
	ldr r0, _020F1210 ; =0x0209A144
	ldr r8, [r0]
	cmp r8, #0
	beq _020F11E8
	ldr r7, [r8, #4]
	mov r6, #8
	mov r1, r4
	mov r2, r6
	add r0, r8, r7
	bl MI_CpuCopy8
	mov r1, r5
	mov r2, r6
	add r0, r8, r7
	bl MI_CpuCopy8
_020F11E8:
	mov r6, #0x20
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F1208: .word gBGPalettesTemp
_020F120C: .word gBGPalettesFinal
_020F1210: .word gDebugFont
	arm_func_end _ZN8Graphics15LoadTempPaletteEP10GXBGPltt1612EngineSelecti

	arm_func_start _ZN8Graphics19SetScreenBrightnessEti
_ZN8Graphics19SetScreenBrightnessEti: ; 0x020F1214
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	rsb r2, r1, #0
	orr r3, r1, #0x4000
	orr r2, r2, #0x8000
	mov r6, #0
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr lr, _020F1290 ; =gSubScreenBrightness
	ldr r4, _020F1294 ; =gScreenBrightness
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	mov r12, r6
	mov r5, #1
_020F1248:
	tst r0, r5, lsl r6
	beq _020F1270
	mov r7, r4
	cmp r6, #0
	movne r7, lr
	cmp r1, #0
	streqh r12, [r7]
	beq _020F1270
	strgth r3, [r7]
	strleh r2, [r7]
_020F1270:
	add r6, r6, #1
	cmp r6, #2
	blt _020F1248
	tst r0, #0x8000
	ldrne r0, _020F1298 ; =gUpdateBrightness
	movne r1, #1
	strne r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F1290: .word gSubScreenBrightness
_020F1294: .word gScreenBrightness
_020F1298: .word gUpdateBrightness
	arm_func_end _ZN8Graphics19SetScreenBrightnessEti

	arm_func_start _ZN8Graphics16ResetScreenFadesEv
_ZN8Graphics16ResetScreenFadesEv: ; 0x020F129C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl _ZN8Graphics15ResetScreenFadeE12EngineSelect
	mov r0, #1
	bl _ZN8Graphics15ResetScreenFadeE12EngineSelect
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN8Graphics16ResetScreenFadesEv

	arm_func_start _ZN8Graphics15ResetScreenFadeE12EngineSelect
_ZN8Graphics15ResetScreenFadeE12EngineSelect: ; 0x020F12B4
	mov r1, #0xc
	mul r3, r0, r1
	mov r1, #1
	mov r0, r1, lsl r0
	orr r0, r0, #0x8000
	mov r0, r0, lsl #0x10
	ldr r2, _020F12F8 ; =0x0209A160
	mov r1, #0
	str r1, [r2, r3]
	add r3, r2, r3
	strh r1, [r3, #4]
	mov r2, #0x20
	strh r2, [r3, #6]
	ldr r12, _020F12FC ; =_ZN8Graphics19SetScreenBrightnessEti
	mov r0, r0, lsr #0x10
	strh r1, [r3, #8]
	bx r12
_020F12F8: .word gScreenFades
_020F12FC: .word _ZN8Graphics19SetScreenBrightnessEti
	arm_func_end _ZN8Graphics15ResetScreenFadeE12EngineSelect

	arm_func_start _ZN8Graphics12BlackOutMainEv
_ZN8Graphics12BlackOutMainEv: ; 0x020F1300
	ldr r12, _020F130C ; =_ZN8Graphics14BlackOutScreenE12EngineSelect
	mov r0, #0
	bx r12
_020F130C: .word _ZN8Graphics14BlackOutScreenE12EngineSelect
	arm_func_end _ZN8Graphics12BlackOutMainEv

	arm_func_start _ZN8Graphics11BlackOutSubEv
_ZN8Graphics11BlackOutSubEv: ; 0x020F1310
	ldr r12, _020F131C ; =_ZN8Graphics14BlackOutScreenE12EngineSelect
	mov r0, #1
	bx r12
_020F131C: .word _ZN8Graphics14BlackOutScreenE12EngineSelect
	arm_func_end _ZN8Graphics11BlackOutSubEv

	arm_func_start _ZN8Graphics15BlackOutScreensEv
_ZN8Graphics15BlackOutScreensEv: ; 0x020F1320
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl _ZN8Graphics14BlackOutScreenE12EngineSelect
	mov r0, #1
	bl _ZN8Graphics14BlackOutScreenE12EngineSelect
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN8Graphics15BlackOutScreensEv

	arm_func_start _ZN8Graphics14BlackOutScreenE12EngineSelect
_ZN8Graphics14BlackOutScreenE12EngineSelect: ; 0x020F1338
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0xc
	mov r4, r0
	mul r12, r4, r1
	mov r2, #1
	ldr lr, _020F13A4 ; =0x0209A160
	mov r0, r2, lsl r4
	mov r0, r0, lsl #0x10
	add r5, lr, r12
	sub r1, r1, #0x10c
	strh r1, [r5, #4]
	mov r3, #0
	str r3, [lr, r12]
	mov r0, r0, lsr #0x10
	sub r1, r2, #0x11
	strh r3, [r5, #8]
	bl _ZN8Graphics19SetScreenBrightnessEti
	cmp r4, #0
	ldreq r0, _020F13A8 ; =gScreenBrightness
	ldreq r1, _020F13AC ; =0x0400006C
	ldreqh r0, [r0]
	streqh r0, [r1]
	ldrne r0, _020F13A8 ; =gScreenBrightness
	ldrne r1, _020F13B0 ; =0x0400106C
	ldrneh r0, [r0, #2]
	strneh r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020F13A4: .word gScreenFades
_020F13A8: .word gScreenBrightness
_020F13AC: .word 0x0400006C
_020F13B0: .word 0x0400106C
	arm_func_end _ZN8Graphics14BlackOutScreenE12EngineSelect

	arm_func_start _ZN8Graphics12WhiteOutMainEv
_ZN8Graphics12WhiteOutMainEv: ; 0x020F13B4
	ldr r12, _020F13C0 ; =_ZN8Graphics14WhiteOutScreenE12EngineSelect
	mov r0, #0
	bx r12
_020F13C0: .word _ZN8Graphics14WhiteOutScreenE12EngineSelect
	arm_func_end _ZN8Graphics12WhiteOutMainEv

	arm_func_start _ZN8Graphics11WhiteOutSubEv
_ZN8Graphics11WhiteOutSubEv: ; 0x020F13C4
	ldr r12, _020F13D0 ; =_ZN8Graphics14WhiteOutScreenE12EngineSelect
	mov r0, #1
	bx r12
_020F13D0: .word _ZN8Graphics14WhiteOutScreenE12EngineSelect
	arm_func_end _ZN8Graphics11WhiteOutSubEv

	arm_func_start _ZN8Graphics15WhiteOutScreensEv
_ZN8Graphics15WhiteOutScreensEv: ; 0x020F13D4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl _ZN8Graphics14WhiteOutScreenE12EngineSelect
	mov r0, #1
	bl _ZN8Graphics14WhiteOutScreenE12EngineSelect
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN8Graphics15WhiteOutScreensEv

	arm_func_start _ZN8Graphics14WhiteOutScreenE12EngineSelect
_ZN8Graphics14WhiteOutScreenE12EngineSelect: ; 0x020F13EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0xc
	mul r3, r4, r0
	ldr r12, _020F1458 ; =0x0209A160
	mov r0, #1
	mov r0, r0, lsl r4
	mov r0, r0, lsl #0x10
	add lr, r12, r3
	mov r1, #0x100
	strh r1, [lr, #4]
	mov r2, #0
	str r2, [r12, r3]
	mov r0, r0, lsr #0x10
	mov r1, #0x10
	strh r2, [lr, #8]
	bl _ZN8Graphics19SetScreenBrightnessEti
	cmp r4, #0
	ldreq r0, _020F145C ; =gScreenBrightness
	ldreq r1, _020F1460 ; =0x0400006C
	ldreqh r0, [r0]
	streqh r0, [r1]
	ldrne r0, _020F145C ; =gScreenBrightness
	ldrne r1, _020F1464 ; =0x0400106C
	ldrneh r0, [r0, #2]
	strneh r0, [r1]
	ldmfd sp!, {r4, pc}
_020F1458: .word gScreenFades
_020F145C: .word gScreenBrightness
_020F1460: .word 0x0400006C
_020F1464: .word 0x0400106C
	arm_func_end _ZN8Graphics14WhiteOutScreenE12EngineSelect

	arm_func_start _ZN8Graphics10FadeInMainEl
_ZN8Graphics10FadeInMainEl: ; 0x020F1468
	ldr r12, _020F1478 ; =_ZN8Graphics12FadeInScreenE12EngineSelectl
	mov r1, r0
	mov r0, #0
	bx r12
_020F1478: .word _ZN8Graphics12FadeInScreenE12EngineSelectl
	arm_func_end _ZN8Graphics10FadeInMainEl

	arm_func_start _ZN8Graphics9FadeInSubEl
_ZN8Graphics9FadeInSubEl: ; 0x020F147C
	ldr r12, _020F148C ; =_ZN8Graphics12FadeInScreenE12EngineSelectl
	mov r1, r0
	mov r0, #1
	bx r12
_020F148C: .word _ZN8Graphics12FadeInScreenE12EngineSelectl
	arm_func_end _ZN8Graphics9FadeInSubEl

	arm_func_start _ZN8Graphics13FadeInScreensEl
_ZN8Graphics13FadeInScreensEl: ; 0x020F1490
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl _ZN8Graphics12FadeInScreenE12EngineSelectl
	mov r1, r4
	mov r0, #1
	bl _ZN8Graphics12FadeInScreenE12EngineSelectl
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN8Graphics13FadeInScreensEl

	arm_func_start _ZN8Graphics12FadeInScreenE12EngineSelectl
_ZN8Graphics12FadeInScreenE12EngineSelectl: ; 0x020F14B4
	stmfd sp!, {r4, lr}
	ldr r3, _020F1510 ; =0x0209A160
	mov r2, #0xc
	mla r4, r0, r2, r3
	ldrsh r0, [r4, #4]
	cmp r0, #0
	movlt r0, #1
	strlt r0, [r4]
	blt _020F14E8
	movgt r0, #3
	strgt r0, [r4]
	movle r0, #0
	strle r0, [r4]
_020F14E8:
	cmp r1, #1
	movlt r1, #1
	cmp r1, #0x80
	movgt r1, #0x80
	mov r0, #0x100
	bl _s32_div_f
	strh r0, [r4, #6]
	mov r0, #1
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020F1510: .word gScreenFades
	arm_func_end _ZN8Graphics12FadeInScreenE12EngineSelectl

	arm_func_start _ZN8Graphics13FadeMainBlackEl
_ZN8Graphics13FadeMainBlackEl: ; 0x020F1514
	ldr r12, _020F1524 ; =_ZN8Graphics15FadeScreenBlackE12EngineSelectl
	mov r1, r0
	mov r0, #0
	bx r12
_020F1524: .word _ZN8Graphics15FadeScreenBlackE12EngineSelectl
	arm_func_end _ZN8Graphics13FadeMainBlackEl

	arm_func_start _ZN8Graphics12FadeSubBlackEl
_ZN8Graphics12FadeSubBlackEl: ; 0x020F1528
	ldr r12, _020F1538 ; =_ZN8Graphics15FadeScreenBlackE12EngineSelectl
	mov r1, r0
	mov r0, #1
	bx r12
_020F1538: .word _ZN8Graphics15FadeScreenBlackE12EngineSelectl
	arm_func_end _ZN8Graphics12FadeSubBlackEl

	arm_func_start _ZN8Graphics16FadeScreensBlackEl
_ZN8Graphics16FadeScreensBlackEl: ; 0x020F153C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl _ZN8Graphics15FadeScreenBlackE12EngineSelectl
	mov r1, r4
	mov r0, #1
	bl _ZN8Graphics15FadeScreenBlackE12EngineSelectl
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN8Graphics16FadeScreensBlackEl

	arm_func_start _ZN8Graphics15FadeScreenBlackE12EngineSelectl
_ZN8Graphics15FadeScreenBlackE12EngineSelectl: ; 0x020F1560
	stmfd sp!, {r4, lr}
	ldr r3, _020F15B0 ; =0x0209A160
	mov r2, #0xc
	mla r4, r0, r2, r3
	ldrsh r3, [r4, #4]
	sub r0, r2, #0x10c
	cmp r3, r0
	movgt r0, #2
	movle r0, #0
	cmp r1, #1
	movlt r1, #1
	str r0, [r4]
	cmp r1, #0x80
	movgt r1, #0x80
	mov r0, #0x100
	bl _s32_div_f
	strh r0, [r4, #6]
	mov r0, #0
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020F15B0: .word gScreenFades
	arm_func_end _ZN8Graphics15FadeScreenBlackE12EngineSelectl

	arm_func_start _ZN8Graphics13FadeMainWhiteEl
_ZN8Graphics13FadeMainWhiteEl: ; 0x020F15B4
	ldr r12, _020F15C4 ; =_ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	mov r1, r0
	mov r0, #0
	bx r12
_020F15C4: .word _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	arm_func_end _ZN8Graphics13FadeMainWhiteEl

	arm_func_start _ZN8Graphics12FadeSubWhiteEl
_ZN8Graphics12FadeSubWhiteEl: ; 0x020F15C8
	ldr r12, _020F15D8 ; =_ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	mov r1, r0
	mov r0, #1
	bx r12
_020F15D8: .word _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	arm_func_end _ZN8Graphics12FadeSubWhiteEl

	arm_func_start _ZN8Graphics16FadeScreensWhiteEl
_ZN8Graphics16FadeScreensWhiteEl: ; 0x020F15DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	mov r1, r4
	mov r0, #1
	bl _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN8Graphics16FadeScreensWhiteEl

	arm_func_start _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
_ZN8Graphics15FadeScreenWhiteE12EngineSelectl: ; 0x020F1600
	stmfd sp!, {r4, lr}
	ldr r3, _020F164C ; =0x0209A160
	mov r2, #0xc
	mla r4, r0, r2, r3
	ldrsh r0, [r4, #4]
	cmp r0, #0x100
	movlt r0, #4
	movge r0, #0
	cmp r1, #1
	movlt r1, #1
	str r0, [r4]
	cmp r1, #0x80
	movgt r1, #0x80
	mov r0, #0x100
	bl _s32_div_f
	strh r0, [r4, #6]
	mov r0, #0
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020F164C: .word gScreenFades
	arm_func_end _ZN8Graphics15FadeScreenWhiteE12EngineSelectl

	arm_func_start _ZN8Graphics12IsMainFadingEv
_ZN8Graphics12IsMainFadingEv: ; 0x020F1650
	ldr r12, _020F165C ; =_ZN8Graphics14IsScreenFadingE12EngineSelect
	mov r0, #0
	bx r12
_020F165C: .word _ZN8Graphics14IsScreenFadingE12EngineSelect
	arm_func_end _ZN8Graphics12IsMainFadingEv

	arm_func_start _ZN8Graphics11IsSubFadingEv
_ZN8Graphics11IsSubFadingEv: ; 0x020F1660
	ldr r12, _020F166C ; =_ZN8Graphics14IsScreenFadingE12EngineSelect
	mov r0, #1
	bx r12
_020F166C: .word _ZN8Graphics14IsScreenFadingE12EngineSelect
	arm_func_end _ZN8Graphics11IsSubFadingEv

	arm_func_start _ZN8Graphics17IsAnyScreenFadingEv
_ZN8Graphics17IsAnyScreenFadingEv: ; 0x020F1670
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl _ZN8Graphics14IsScreenFadingE12EngineSelect
	cmp r0, #0
	bne _020F1698
	mov r0, #1
	bl _ZN8Graphics14IsScreenFadingE12EngineSelect
	cmp r0, #0
	beq _020F169C
_020F1698:
	mov r4, #1
_020F169C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN8Graphics17IsAnyScreenFadingEv

	arm_func_start _ZN8Graphics14IsScreenFadingE12EngineSelect
_ZN8Graphics14IsScreenFadingE12EngineSelect: ; 0x020F16A4
	mov r1, #0xc
	mul r1, r0, r1
	ldr r0, _020F16C4 ; =0x0209A160
	ldr r0, [r0, r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F16C4: .word gScreenFades
	arm_func_end _ZN8Graphics14IsScreenFadingE12EngineSelect

	arm_func_start _ZN8Graphics16UpdateScreenFadeE12EngineSelect
_ZN8Graphics16UpdateScreenFadeE12EngineSelect: ; 0x020F16C8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020F17E8 ; =0x02118490
	ldr r1, [r3, r0, lsl #2]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F17EC ; =0x0209A160
	mov r12, #0xc
	mla r5, r0, r12, r1
	ldrh r2, [r5, #8]
	mov r1, #0
	str r1, [r3, r0, lsl #2]
	cmp r2, #0
	subne r0, r2, #1
	strneh r0, [r5, #8]
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r5]
	ldrsh r4, [r5, #4]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020F17A8
_020F1718: ; jump table
	b _020F17A8 ; case 0
	b _020F172C ; case 1
	b _020F174C ; case 2
	b _020F1770 ; case 3
	b _020F178C ; case 4
_020F172C:
	ldrsh r2, [r5, #6]
	add r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	cmp r4, #0
	movgt r4, r1
	strgt r1, [r5]
	b _020F17A8
_020F174C:
	ldrsh r2, [r5, #6]
	sub r3, r12, #0x10c
	sub r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	cmp r3, r2, asr #16
	strgt r1, [r5]
	movgt r4, r3
	b _020F17A8
_020F1770:
	ldrsh r2, [r5, #6]
	sub r2, r4, r2
	mov r2, r2, lsl #0x10
	movs r4, r2, asr #0x10
	movmi r4, r1
	strmi r1, [r5]
	b _020F17A8
_020F178C:
	ldrsh r2, [r5, #6]
	add r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r4, r2, asr #0x10
	cmp r4, #0x100
	strgt r1, [r5]
	movgt r4, #0x100
_020F17A8:
	ldrsh r3, [r5, #4]
	mov r1, r4, asr #3
	add r2, r4, r1, lsr #28
	mov r1, r3, asr #3
	add r1, r3, r1, lsr #28
	mov r1, r1, asr #4
	cmp r1, r2, asr #4
	mov r1, r2, asr #4
	beq _020F17E0
	mov r2, #1
	mov r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl _ZN8Graphics19SetScreenBrightnessEti
_020F17E0:
	strh r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F17E8: .word ov16_02118490
_020F17EC: .word gScreenFades
	arm_func_end _ZN8Graphics16UpdateScreenFadeE12EngineSelect

	arm_func_start _ZN8Graphics20IsMainBrightAdjustedEv
_ZN8Graphics20IsMainBrightAdjustedEv: ; 0x020F17F0
	ldr r12, _020F17FC ; =_ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
	mov r0, #0
	bx r12
_020F17FC: .word _ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
	arm_func_end _ZN8Graphics20IsMainBrightAdjustedEv

	arm_func_start _ZN8Graphics19IsSubBrightAdjustedEv
_ZN8Graphics19IsSubBrightAdjustedEv: ; 0x020F1800
	ldr r12, _020F180C ; =_ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
	mov r0, #1
	bx r12
_020F180C: .word _ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
	arm_func_end _ZN8Graphics19IsSubBrightAdjustedEv

	arm_func_start _ZN8Graphics25IsAnyScreenBrightAdjustedEv
_ZN8Graphics25IsAnyScreenBrightAdjustedEv: ; 0x020F1810
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl _ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
	cmp r0, #0
	bne _020F1838
	mov r0, #1
	bl _ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
	cmp r0, #0
	beq _020F183C
_020F1838:
	mov r4, #1
_020F183C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN8Graphics25IsAnyScreenBrightAdjustedEv

	arm_func_start _ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect
_ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect: ; 0x020F1844
	ldr r2, _020F1864 ; =0x0209A160
	mov r1, #0xc
	mla r1, r0, r1, r2
	ldrsh r0, [r1, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F1864: .word gScreenFades
	arm_func_end _ZN8Graphics22IsScreenBrightAdjustedE12EngineSelect

	arm_func_start _ZN8Graphics11SetupScreenEPtmii
_ZN8Graphics11SetupScreenEPtmii: ; 0x020F1868
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	cmp r0, #0
	mov r12, r0
	cmpne r1, #0
	mov lr, r1
	moveq r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	beq _020F18D4
	mov r6, #0x400
	rsb r6, r6, #0
	sub r7, r6, #0xf000
_020F1898:
	ldrh r8, [r0]
	cmp r3, #0
	and r4, r8, r6, lsr #22
	add r4, r2, r4
	andge r9, r8, r7
	orrge r8, r4, r3, lsl #12
	orrge r8, r9, r8
	andlt r8, r8, r6
	orrlt r8, r4, r8
	strh r8, [r0]
	cmp r5, r4
	movlt r5, r4
	add r0, r0, #2
	subs r1, r1, #2
	bne _020F1898
_020F18D4:
	mov r0, r12
	mov r1, lr
	bl DC_FlushRange
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end _ZN8Graphics11SetupScreenEPtmii

	arm_func_start _ZN8Graphics11SetupScreenEPvii
_ZN8Graphics11SetupScreenEPvii: ; 0x020F18E8
	stmfd sp!, {r3, lr}
	mov lr, r1
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	mov r3, r2
	cmpne r1, #0
	moveq r0, lr
	ldmeqfd sp!, {r3, pc}
	ldr r12, [r0, #0xc]
	mov r2, lr
	add r0, r0, r12
	bl _ZN8Graphics11SetupScreenEPtmii
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN8Graphics11SetupScreenEPvii

	arm_func_start _ZN8Graphics10ScreenCopyEiiiiPtS0_
_ZN8Graphics10ScreenCopyEiiiiPtS0_: ; 0x020F191C
	stmfd sp!, {r4, lr}
	ldr r4, [sp, #8]
	ldr lr, [sp, #0xc]
	cmp r4, #0
	cmpne lr, #0
	ldmeqfd sp!, {r4, pc}
	add r1, lr, r1, lsl #6
	cmp r3, #0
	add r1, r1, r0, lsl #1
	ldmlefd sp!, {r4, pc}
_020F1944:
	mov lr, r1
	mov r12, r2
	cmp r2, #0
	ble _020F1968
_020F1954:
	ldrh r0, [r4], #2
	sub r12, r12, #1
	cmp r12, #0
	strh r0, [lr], #2
	bgt _020F1954
_020F1968:
	sub r3, r3, #1
	cmp r3, #0
	add r1, r1, #0x40
	bgt _020F1944
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN8Graphics10ScreenCopyEiiiiPtS0_

	arm_func_start _ZN8Graphics10ScreenFillEiiiitPt
_ZN8Graphics10ScreenFillEiiiitPt: ; 0x020F197C
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #0xc]
	ldr lr, [sp, #8]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	add r1, r12, r1, lsl #6
	cmp r3, #0
	add r0, r1, r0, lsl #1
	ldmlefd sp!, {r3, pc}
_020F19A0:
	mov r12, r0
	mov r1, r2
	cmp r2, #0
	ble _020F19C0
_020F19B0:
	sub r1, r1, #1
	cmp r1, #0
	strh lr, [r12], #2
	bgt _020F19B0
_020F19C0:
	sub r3, r3, #1
	cmp r3, #0
	add r0, r0, #0x40
	bgt _020F19A0
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN8Graphics10ScreenFillEiiiitPt

	arm_func_start _ZN8Graphics15LoadBGXCharMainEiPvm
_ZN8Graphics15LoadBGXCharMainEiPvm: ; 0x020F19D4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r2
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020F1A54
_020F19F8: ; jump table
	b _020F1A08 ; case 0
	b _020F1A1C ; case 1
	b _020F1A30 ; case 2
	b _020F1A44 ; case 3
_020F1A08:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG0Char
	b _020F1A54
_020F1A1C:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG1Char
	b _020F1A54
_020F1A30:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG2Char
	b _020F1A54
_020F1A44:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GX_LoadBG3Char
_020F1A54:
	ldr r0, [r5, #0x18]
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN8Graphics15LoadBGXCharMainEiPvm

	arm_func_start _ZN8Graphics14LoadBGXCharSubEiPvm
_ZN8Graphics14LoadBGXCharSubEiPvm: ; 0x020F1A60
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r2
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020F1AE0
_020F1A84: ; jump table
	b _020F1A94 ; case 0
	b _020F1AA8 ; case 1
	b _020F1ABC ; case 2
	b _020F1AD0 ; case 3
_020F1A94:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG0Char
	b _020F1AE0
_020F1AA8:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG1Char
	b _020F1AE0
_020F1ABC:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG2Char
	b _020F1AE0
_020F1AD0:
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r3
	bl GXS_LoadBG3Char
_020F1AE0:
	ldr r0, [r5, #0x18]
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN8Graphics14LoadBGXCharSubEiPvm

	arm_func_start _ZN8Graphics12ClearBGXMainEi10CharFormat
_ZN8Graphics12ClearBGXMainEi10CharFormat: ; 0x020F1AEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	cmp r4, #3
	mov r7, #0
	addls pc, pc, r4, lsl #2
	b _020F1B38
_020F1B08: ; jump table
	b _020F1B18 ; case 0
	b _020F1B20 ; case 1
	b _020F1B28 ; case 2
	b _020F1B30 ; case 3
_020F1B18:
	bl G2_GetBG0CharPtr
	b _020F1B34
_020F1B20:
	bl G2_GetBG1CharPtr
	b _020F1B34
_020F1B28:
	bl G2_GetBG2CharPtr
	b _020F1B34
_020F1B30:
	bl G2_GetBG3CharPtr
_020F1B34:
	mov r7, r0
_020F1B38:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	moveq r5, #0x20
	beq _020F1B58
	cmp r5, #0x100
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0x40
_020F1B58:
	mov r6, #0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	mov r5, #0x800
	ldr r0, _020F1C24 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020F1C14
_020F1BB8: ; jump table
	b _020F1BC8 ; case 0
	b _020F1BDC ; case 1
	b _020F1BF0 ; case 2
	b _020F1C04 ; case 3
_020F1BC8:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG0Scr
	b _020F1C14
_020F1BDC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG1Scr
	b _020F1C14
_020F1BF0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG2Scr
	b _020F1C14
_020F1C04:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GX_LoadBG3Scr
_020F1C14:
	ldr r0, _020F1C24 ; =gAllocator
	mov r1, r7
	bl _ZN10CAllocator10deallocateEPv
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F1C24: .word gAllocator
	arm_func_end _ZN8Graphics12ClearBGXMainEi10CharFormat

	arm_func_start _ZN8Graphics11ClearBGXSubEi10CharFormat
_ZN8Graphics11ClearBGXSubEi10CharFormat: ; 0x020F1C28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	cmp r4, #3
	mov r7, #0
	addls pc, pc, r4, lsl #2
	b _020F1C74
_020F1C44: ; jump table
	b _020F1C54 ; case 0
	b _020F1C5C ; case 1
	b _020F1C64 ; case 2
	b _020F1C6C ; case 3
_020F1C54:
	bl G2S_GetBG0CharPtr
	b _020F1C70
_020F1C5C:
	bl G2S_GetBG1CharPtr
	b _020F1C70
_020F1C64:
	bl G2S_GetBG2CharPtr
	b _020F1C70
_020F1C6C:
	bl G2S_GetBG3CharPtr
_020F1C70:
	mov r7, r0
_020F1C74:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	moveq r5, #0x20
	beq _020F1C94
	cmp r5, #0x100
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0x40
_020F1C94:
	mov r6, #0
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	mov r5, #0x800
	ldr r0, _020F1D60 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r5
	bl DC_FlushRange
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _020F1D50
_020F1CF4: ; jump table
	b _020F1D04 ; case 0
	b _020F1D18 ; case 1
	b _020F1D2C ; case 2
	b _020F1D40 ; case 3
_020F1D04:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG0Scr
	b _020F1D50
_020F1D18:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG1Scr
	b _020F1D50
_020F1D2C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG2Scr
	b _020F1D50
_020F1D40:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl GXS_LoadBG3Scr
_020F1D50:
	ldr r0, _020F1D60 ; =gAllocator
	mov r1, r7
	bl _ZN10CAllocator10deallocateEPv
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F1D60: .word gAllocator
	arm_func_end _ZN8Graphics11ClearBGXSubEi10CharFormat

	arm_func_start FUN_ov16_020f1d64
FUN_ov16_020f1d64: ; 0x020F1D64
	stmfd sp!, {r3, lr}
	ldr r0, _020F1DF4 ; =g3DGameChar
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _020F1DF8 ; =0x02099F10
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1DFC ; =g3DGameMap
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1E00 ; =g3DGameMapObject
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1E04 ; =g2DGChar
	ldr r0, [r0]
	bl FUN_02057238
	ldr r0, _020F1E08 ; =g3DSpriteCtrl
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _020F1E0C ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02059880
	ldr r0, _020F1E10 ; =gResourceManager
	ldr r0, [r0]
	bl FUN_02051e50
	ldmfd sp!, {r3, pc}
_020F1DF4: .word g3DGameChar
_020F1DF8: .word g3DGameEffect
_020F1DFC: .word g3DGameMap
_020F1E00: .word g3DGameMapObject
_020F1E04: .word g2DGChar
_020F1E08: .word g3DSpriteCtrl
_020F1E0C: .word g3DPlaneCtrl
_020F1E10: .word gResourceManager
	arm_func_end FUN_ov16_020f1d64

	arm_func_start FUN_ov16_020f1e14
FUN_ov16_020f1e14: ; 0x020F1E14
	stmfd sp!, {r4, lr}
	mov r4, #0
	b _020F1E28
_020F1E20:
	bl OS_WaitVBlankIntr
	add r4, r4, #1
_020F1E28:
	cmp r4, #5
	blt _020F1E20
	ldr r0, _020F1EC8 ; =g3DGameChar
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldr r0, _020F1ECC ; =0x02099F10
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _020F1ED0 ; =g3DGameMap
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _020F1ED4 ; =g3DGameMapObject
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _020F1ED8 ; =g2DGChar
	ldr r0, [r0]
	bl FUN_02057250
	ldr r0, _020F1EDC ; =g3DSpriteCtrl
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldr r0, _020F1EE0 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_020598ec
	mov r4, #0
	b _020F1EBC
_020F1EB4:
	bl OS_WaitVBlankIntr
	add r4, r4, #1
_020F1EBC:
	cmp r4, #5
	blt _020F1EB4
	ldmfd sp!, {r4, pc}
_020F1EC8: .word g3DGameChar
_020F1ECC: .word g3DGameEffect
_020F1ED0: .word g3DGameMap
_020F1ED4: .word g3DGameMapObject
_020F1ED8: .word g2DGChar
_020F1EDC: .word g3DSpriteCtrl
_020F1EE0: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_020f1e14

	arm_func_start FUN_ov16_020f1ee4
FUN_ov16_020f1ee4: ; 0x020F1EE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r3
	mov r6, r2
	cmp r2, #0
	ble _020F1F48
	rsb r4, r1, r1, lsl #3
	mov lr, #8
_020F1F00:
	mov r7, r1
	cmp r1, #0
	ble _020F1F38
_020F1F0C:
	mov r5, r0
	mov r8, lr
_020F1F14:
	ldr r12, [r5], r1, lsl #2
	sub r8, r8, #1
	cmp r8, #0
	str r12, [r9], #4
	bgt _020F1F14
	sub r7, r7, #1
	cmp r7, #0
	add r0, r0, #4
	bgt _020F1F0C
_020F1F38:
	sub r6, r6, #1
	cmp r6, #0
	add r0, r0, r4, lsl #2
	bgt _020F1F00
_020F1F48:
	mul r2, r1, r2
	mov r0, r3
	mov r1, r2, lsl #5
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020f1ee4

	arm_func_start FUN_ov16_020f1f5c
FUN_ov16_020f1f5c: ; 0x020F1F5C

#ifdef TRANSLATION_BUGFIX

.public strcpy

	mov r2, r0
	mov r0, r1
	ldr r12, _020F1F5C_0 ; =strcpy
	mov r1, r2
	bx r12
_020F1F5C_0: .word strcpy

#else ; TRANSLATION_BUGFIX

	ldrsb r3, [r0]
	cmp r3, #0
	beq _020F2108
	ldr r2, _020F2114 ; =0x0208F728
_020F1F6C:
	and r12, r3, #0xff
	cmp r12, #0x81
	blo _020F1F80
	cmp r12, #0x9f
	bls _020F1F90
_020F1F80:
	cmp r12, #0xe0
	blo _020F1FB8
	cmp r12, #0xfc
	bhi _020F1FB8
_020F1F90:
	ldrsb r3, [r0]
	add r12, r1, #1
	strb r3, [r1]
	ldrsb r3, [r0, #1]!
	mov r1, r12
	cmp r3, #0
	strneb r3, [r12]
	addne r0, r0, #1
	addne r1, r12, #1
	b _020F20FC
_020F1FB8:
	cmp r3, #0x30
	blt _020F1FF0
	cmp r3, #0x39
	bgt _020F1FF0
_020F1FC8:
	add r3, r3, #0x1f
	add r3, r3, #0x8200
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r3, #0x1f
	add r3, r3, #0x8200
_020F1FE4:
	strb r3, [r1, #1]
	add r1, r1, #2
	b _020F20F8
_020F1FF0:
	cmp r3, #0x41
	blt _020F2004
	cmp r3, #0x5a
	bgt _020F2004
	b _020F1FC8
_020F2004:
	cmp r3, #0x61
	blt _020F2034
	cmp r3, #0x7a
	bgt _020F2034
	add r3, r3, #0x220
	add r3, r3, #0x8000
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r3, #0x220
	add r3, r3, #0x8000
	b _020F1FE4
_020F2034:
	cmp r3, #0x20
	blt _020F2064
	cmp r3, #0x2f
	bgt _020F2064
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x40]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x40]
	b _020F1FE4
_020F2064:
	cmp r3, #0x3a
	blt _020F2094
	cmp r3, #0x40
	bgt _020F2094
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x54]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x54]
	b _020F1FE4
_020F2094:
	cmp r3, #0x5b
	blt _020F20C4
	cmp r3, #0x5f
	bgt _020F20C4
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x88]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0x88]
	b _020F1FE4
_020F20C4:
	cmp r3, #0x7b
	blt _020F20F4
	cmp r3, #0x7e
	bgt _020F20F4
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0xbe]
	mov r3, r3, asr #8
	strb r3, [r1]
	ldrsb r3, [r0]
	add r3, r2, r3, lsl #1
	ldrh r3, [r3, #-0xbe]
	b _020F1FE4
_020F20F4:
	strb r3, [r1], #1
_020F20F8:
	add r0, r0, #1
_020F20FC:
	ldrsb r3, [r0]
	cmp r3, #0
	bne _020F1F6C
_020F2108:
	mov r0, #0
	strb r0, [r1]
	bx lr
_020F2114: .word unk_0208F728

#endif ; TRANSLATION_BUGFIX

	arm_func_end FUN_ov16_020f1f5c

	arm_func_start FUN_ov16_020f2118
FUN_ov16_020f2118: ; 0x020F2118
	ldrsb r2, [r0]
	cmp r2, #0
	bxeq lr
	ldr r1, _020F2180 ; =gFontBlankCode
_020F2128:
	and r2, r2, #0xff
	cmp r2, #0x81
	blt _020F213C
	cmp r2, #0x9f
	ble _020F214C
_020F213C:
	cmp r2, #0xe0
	blt _020F2170
	cmp r2, #0xfc
	bgt _020F2170
_020F214C:
	cmp r2, #0x81
	ldreqb r2, [r0, #1]
	cmpeq r2, #0x40
	ldreqh r2, [r1]
	moveq r2, r2, asr #8
	streqb r2, [r0]
	ldreqh r2, [r1]
	streqb r2, [r0, #1]
	add r0, r0, #1
_020F2170:
	ldrsb r2, [r0, #1]!
	cmp r2, #0
	bne _020F2128
	bx lr
_020F2180: .word gFontBlankCode
	arm_func_end FUN_ov16_020f2118

	arm_func_start FUN_ov16_020f2184
FUN_ov16_020f2184: ; 0x020F2184
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb20
	mov r11, r1
	ldr r1, [sp, #0xb4c]
	mov r10, r2
	mov r9, r3
	cmp r0, #0
	str r1, [sp, #0xb4c]
	addeq sp, sp, #0xb20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, sp, #0x20
	mov r1, r4
	add r2, sp, #0x920
	bl FUN_ov16_020f24e8
	ldr r1, [sp, #0xb54]
	ldr r5, _020F22FC ; =gFont12
	str r0, [sp, #0x1c]
	add r2, r1, #8
	ldr r0, [r5]
	ldr r1, [sp, #0xb50]
	bl _ZN12CFontManager10setSpacingEii
	ldr r1, [sp, #0xb48]
	mov r3, r4
	str r1, [sp]
	ldr r0, [sp, #0xb60]
	ldr r2, [sp, #0xb5c]
	stmib sp, {r0, r11}
	str r10, [sp, #0xc]
	str r9, [sp, #0x10]
	add r4, sp, #0x120
	mov r0, #0x100
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5]
	ldr r1, [sp, #0xb58]
	ldr r6, [r0]
	add r2, r2, #8
	ldr r6, [r6, #8]
	blx r6
	ldr r0, [r5]
	bl _ZN12CFontManager12resetSpacingEv
	ldr r0, [sp, #0x1c]
	mov r5, #0
	cmp r0, #0
	ble _020F22E4
_020F2238:
	add r0, sp, #0x920
	add r8, r0, r5, lsl #5
	ldrb r6, [r0, r5, lsl #5]
	ldrb r2, [r8, #1]
	ldr r0, _020F2300 ; =gFontRubi8
	add r1, r8, #2
	ldr r0, [r0]
	add r7, r6, r2
	bl _ZN12CFontManager12getTextWidthEPc
	mov r1, r6, lsl #3
	add r2, r4, r7, lsl #3
	ldrsh r1, [r4, r1]
	ldrsh r7, [r2, #-8]
	ldrsh r6, [r2, #-4]
	add r2, r0, r0, lsr #31
	add r0, r1, r7
	add r0, r0, r6
	mov r1, r2, asr #1
	add r0, r0, r0, lsr #31
	rsb r1, r1, r0, asr #1
	ldr r0, [sp, #0xb4c]
	add r2, sp, #0x920
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r11}
	str r10, [sp, #0xc]
	str r9, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _020F2300 ; =gFontRubi8
	ldrb r2, [r2, r5, lsl #5]
	ldr r0, [r0]
	add r3, r8, #2
	add r2, r4, r2, lsl #3
	ldr r6, [r0]
	ldrsh r2, [r2, #2]
	ldr r6, [r6, #8]
	sub r2, r2, #8
	blx r6
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blt _020F2238
_020F22E4:
	mul r1, r10, r9
	mov r0, r11
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0xb20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F22FC: .word gFont12
_020F2300: .word gFontRubi8
	arm_func_end FUN_ov16_020f2184

	arm_func_start FUN_ov16_020f2304
FUN_ov16_020f2304: ; 0x020F2304
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2ac
	sub sp, sp, #0x400
	add r11, sp, #0x400
	add r11, r11, #0xac
	str r1, [sp, #0x20]
	mov r4, r2
	add r1, sp, #0x2c
	mov r2, r11
	mov r10, r3
	bl FUN_ov16_020f24e8
	ldr r5, _020F24DC ; =g3DPlaneCtrl
	mov r6, r0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	bl _ZN12C3DPlaneCtrl11getTexWidthEi
	mov r7, r0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	bl _ZN12C3DPlaneCtrl12getTexHeightEi
	mov r8, r0
	mov r9, #0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r9, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, _020F24E0 ; =gFont12
	ldr r2, [sp, #0x6d4]
	ldr r1, [sp, #0x6d0]
	ldr r0, [r0]
	ldr r5, [sp, #0x24]
	add r2, r2, #8
	bl _ZN12CFontManager10setSpacingEii
	ldr r0, [sp, #0x6dc]
	ldr r2, [sp, #0x6d8]
	str r8, [sp]
	str r2, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r4, sp, #0xac
	mov r0, #0x80
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x6e0]
	add r1, sp, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, _020F24E0 ; =gFont12
	mov r2, r5
	ldr r0, [r0]
	mov r3, r7
	bl _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
	ldr r0, _020F24E0 ; =gFont12
	ldr r0, [r0]
	bl _ZN12CFontManager12resetSpacingEv
	b _020F2494
_020F23F4:
	ldr r0, _020F24E4 ; =gFontRubi8
	add r1, r11, r9, lsl #5
	ldr r0, [r0]
	add r1, r1, #2
	bl _ZN12CFontManager12getTextWidthEPc
	add r1, r11, r9, lsl #5
	ldrb r2, [r11, r9, lsl #5]
	ldrb r12, [r1, #1]
	add r0, r0, r0, lsr #31
	mov r3, r2, lsl #3
	add r12, r2, r12
	sub lr, r12, #1
	add r2, r4, r2, lsl #3
	ldrsh r12, [r2, #2]
	mov r2, lr, lsl #3
	add lr, r4, lr, lsl #3
	ldrsh r3, [r4, r3]
	ldrsh r2, [r4, r2]
	ldrsh lr, [lr, #4]
	mov r0, r0, asr #1
	add r2, r3, r2
	add r2, r2, lr
	add r2, r2, r2, lsr #31
	rsb r0, r0, r2, asr #1
	sub r3, r12, #8
	str r8, [sp]
	stmib sp, {r0, r3}
	str r10, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _020F24E4 ; =gFontRubi8
	add r1, r1, #2
	ldr r0, [r0]
	mov r2, r5
	mov r3, r7
	bl _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
	add r9, r9, #1
_020F2494:
	cmp r9, r6
	blt _020F23F4
	ldr r1, [sp, #0x28]
	mov r0, r5
	bl DC_FlushRange
	ldr r0, _020F24DC ; =g3DPlaneCtrl
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2ac
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F24DC: .word g3DPlaneCtrl
_020F24E0: .word gFont12
_020F24E4: .word gFontRubi8
	arm_func_end FUN_ov16_020f2304

	arm_func_start FUN_ov16_020f24e8
FUN_ov16_020f24e8: ; 0x020F24E8

#ifdef TRANSLATION_BUGFIX

.public strcpy

	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	mov r1, r2
	bl strcpy
	mov r0, #0
	ldmfd sp!, {r3, pc}

#else ; TRANSLATION_BUGFIX

	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrsb r10, [r0]
	mov r4, #0
	mov r7, r4
	mov r6, r4
	mov lr, r4
	cmp r10, #0
	beq _020F25F8
	mov r3, r4
	mov r12, r4
_020F2510:
	cmp r10, #0x2f
	bgt _020F2528
	bge _020F2560
	cmp r10, #0xa
	beq _020F2548
	b _020F2590
_020F2528:
	cmp r10, #0x5d
	bgt _020F2590
	cmp r10, #0x5b
	blt _020F2590
	beq _020F2554
	cmp r10, #0x5d
	beq _020F2578
	b _020F2590
_020F2548:
	strb r10, [r1, r6]
	add r6, r6, #1
	b _020F25EC
_020F2554:
	strb r7, [r2, r4, lsl #5]
_020F2558:
	add lr, lr, #1
	b _020F25EC
_020F2560:
	ldrb r9, [r2, r4, lsl #5]
	add r8, r2, r4, lsl #5
	mov r5, r12
	sub r9, r7, r9
	strb r9, [r8, #1]
	b _020F2558
_020F2578:
	add r8, r2, r4, lsl #5
	add r8, r5, r8
	mov lr, r3
	strb r3, [r8, #2]
	add r4, r4, #1
	b _020F25EC
_020F2590:
	cmp r10, #0x20
	blt _020F25A0
	cmp r10, #0x7e
	ble _020F25EC
_020F25A0:
	cmp r10, #0xa1
	blt _020F25B0
	cmp r10, #0xdf
	ble _020F25EC
_020F25B0:
	cmp lr, #2
	beq _020F25D4
	strb r10, [r1, r6]
	ldrsb r8, [r0, #1]!
	add r9, r1, r6
	add r6, r6, #2
	strb r8, [r9, #1]
	add r7, r7, #1
	b _020F25EC
_020F25D4:
	add r8, r2, r4, lsl #5
	add r9, r8, r5
	strb r10, [r9, #2]
	ldrsb r8, [r0, #1]!
	add r5, r5, #2
	strb r8, [r9, #3]
_020F25EC:
	ldrsb r10, [r0, #1]!
	cmp r10, #0
	bne _020F2510
_020F25F8:
	mov r0, r4
	strb r10, [r1, r6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}

#endif ; TRANSLATION_BUGFIX

	arm_func_end FUN_ov16_020f24e8

	arm_func_start FUN_ov16_020f2604
FUN_ov16_020f2604: ; 0x020F2604
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r7, #0x10
	mov r8, #1
	cmp r1, #0
	subeq r7, r8, #0x11
	subeq r8, r8, #2
	mov r9, #0
	cmp r11, #0x11
	beq _020F26A4
	ldr r6, _020F26F0 ; =gAudioPlayer
	mov r4, #0x3e8
	mov r0, r6
	mov r1, r4
	bl _ZN11AudioPlayer12FUN_0202c470El
	mov r10, #0
	mov r0, r6
	mov r1, r10
	mov r2, r4
	bl _ZN11AudioPlayer12FUN_0202d774Eil
	ldr r5, _020F26F4 ; =0x00008003
	b _020F2694
_020F265C:
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b768Ev
	mov r0, r5
	mov r1, r9
	bl _ZN8Graphics19SetScreenBrightnessEti
	bl OS_WaitVBlankIntr
	mov r0, r9
	bl abs
	mov r4, r0
	mov r0, r7
	bl abs
	cmp r4, r0
	addlt r9, r9, r8
	add r10, r10, #1
_020F2694:
	cmp r10, #0x3c
	bge _020F26A4
	cmp r9, r7
	bne _020F265C
_020F26A4:
	ldr r0, _020F26F4 ; =0x00008003
	mov r1, r7
	bl _ZN8Graphics19SetScreenBrightnessEti
	bl OS_WaitVBlankIntr
	ldr r0, _020F26F8 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r4, _020F26F0 ; =gAudioPlayer
	mov r0, r4
	bl _ZN11AudioPlayer12FUN_0202bc6cEv
	mov r0, r4
	bl _ZN11AudioPlayer4quitEv
	ldr r2, _020F26FC ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl OS_EnableInterrupts
	mov r0, r11
	bl OS_ResetSystem
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F26F0: .word gAudioPlayer
_020F26F4: .word 0x00008003
_020F26F8: .word gWirelessUtil
_020F26FC: .word 0x04000208
	arm_func_end FUN_ov16_020f2604

	arm_func_start FUN_ov16_020f2700
FUN_ov16_020f2700: ; 0x020F2700
	ldr r0, _020F2710 ; 0x02099EF0
	ldr r12, _020F2714 ; = FUN_ov132_02146218
	ldr r0, [r0]
	bx r12
_020F2710: .word gUtilGame
_020F2714: .word FUN_ov132_02146218
	arm_func_end FUN_ov16_020f2700

	arm_func_start FUN_ov16_020f2718
FUN_ov16_020f2718: ; 0x020F2718
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F285C ; =0x04000304
	mov r0, #0xb
	ldrh r1, [r4]
	bic r1, r1, #0x8000
	strh r1, [r4]
	bl GX_SetBankForBG
	mov r5, #0
	mov r2, r5
	mov r0, #1
	mov r1, #5
	bl GX_SetGraphicsMode
	mov r0, #0x4000000
	ldr r2, [r0]
	ldr r1, _020F2860 ; =0x00006884
	bic r2, r2, #0x1f00
	str r2, [r0]
	ldr r2, [r0]
	add r1, r1, #0x800
	bic r2, r2, #0xe000
	str r2, [r0]
	ldrh r2, [r0, #0xc]
	and r2, r2, #0x43
	orr r2, r2, #0x84
	orr r2, r2, #0x6800
	strh r2, [r0, #0xc]
	ldrh r2, [r0, #0xc]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r0, #0xc]
	ldrh r2, [r0, #0xe]
	and r2, r2, #0x43
	orr r1, r2, r1
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	bic r1, r1, #3
	orr r1, r1, #2
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #8]
	and r1, r1, #0x43
	orr r1, r1, #8
	strh r1, [r0, #8]
	ldrh r1, [r0, #8]
	bic r1, r1, #3
	strh r1, [r0, #8]
	ldrh r0, [r4]
	orr r0, r0, #2
	strh r0, [r4]
	bl G2_GetBG2ScrPtr
	mov r1, r0
	mov r0, r5
	mov r4, #0x20000
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3ScrPtr
	mov r2, r4
	mov r1, r0
	mov r0, r5
	bl MIi_CpuClearFast
	bl G2_GetBG2ScrPtr
	mov r4, r0
	bl G2_GetBG3ScrPtr
	mov r1, r4
	str r5, [sp]
	mov r2, r0
	ldr r0, _020F2864 ; =gMoviePlayer
	mov r3, r5
	bl _ZN11MoviePlayer12setBGScreensEPtS0_S0_S0_
	bl G2_GetBG0ScrPtr
_020F282C:
	mov r1, r5, lsl #1
	strh r5, [r0, r1]
	add r5, r5, #1
	cmp r5, #0x400
	blt _020F282C
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	bl MIi_CpuClearFast
	bl _ZN8Graphics17LoadBGPaletteMainEv
	ldmfd sp!, {r3, r4, r5, pc}
_020F285C: .word 0x04000304
_020F2860: .word 0x00006884
_020F2864: .word gMoviePlayer
	arm_func_end FUN_ov16_020f2718

	arm_func_start FUN_ov16_020f2868
FUN_ov16_020f2868: ; 0x020F2868
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x8c
	ldr r5, _020F2A04 ; =0x02119ED4
	mov r4, #0
	ldr r8, [r5]
	bl FUN_ov16_020f2718
	ldr r0, _020F2A08 ; =0x02118474
	mov r6, #1
	ldr r0, [r0, #8]
	mov r1, r8
	cmp r0, #0
	moveq r6, r4
	ldr r0, _020F2A0C ; =gMoviePlayer
	mov r2, r4
	mov r3, r4
	str r6, [sp]
	bl _ZN11MoviePlayer9playMovieEPKcP10SMovieInfoih
	mov r0, #6
	bl _ZN8Graphics10FadeInMainEl
	add r7, sp, #0x44
	str r4, [r5, #0xc]
	mov r0, r7
	str r4, [r5, #8]
	bl FS_InitFile
	add r6, sp, #4
	ldr r1, _020F2A10 ; =0x02118498
	mov r2, r8
	mov r0, r6
	bl sprintf
	mov r1, r6
	mov r0, r7
	bl FS_OpenFile
	cmp r0, #0
	beq _020F2984
	mov r0, r7
	bl FS_GetLength
	mov r6, r0
	ldr r0, _020F2A14 ; =gAllocator
	mov r1, r6
	bl _ZN10CAllocator8allocateEm
	mov r1, r0
	mov r0, r7
	mov r2, r6
	str r1, [r5, #0xc]
	bl FS_ReadFile
	mov r0, r7
	bl FS_CloseFile
	ldr r1, [r5, #0xc]
	add r0, r1, #4
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r0, [r5]
	str r1, [r0, #0x24]
	ldr r1, [r5, #8]
	add r0, r1, #4
	str r0, [r5, #8]
	ldr r1, [r1]
	ldr r0, [r5]
	str r1, [r0, #0x28]
	ldr r0, [r5, #8]
	add r3, r0, #4
	str r3, [r5, #8]
	ldr r2, [r0]
	ldr r1, [r5]
	mov r0, r2, asr #1
	str r3, [r1, #0x2c]
	add r0, r2, r0, lsr #30
	ldr r1, [r5, #8]
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #2
	str r0, [r5, #8]
_020F2984:
	ldr r0, [r5]
	ldr r6, _020F2A0C ; =gMoviePlayer
	str r4, [r0, #0x30]
_020F2990:
	bl _ZN6Thread5YieldEv
	mov r0, r6
	bl _ZN11MoviePlayer12FUN_0202e78cEv
	cmp r0, #0
	bne _020F2990
	mov r0, #6
	bl _ZN8Graphics13FadeMainBlackEl
	mov r0, #0x10
	bl _ZN6Thread5SleepEi
	ldr r0, _020F2A08 ; =0x02118474
	mov r1, #1
	ldr r0, [r0, #8]
	cmp r0, #0
	ldr r0, _020F2A0C ; =gMoviePlayer
	moveq r1, #0
	bl _ZN11MoviePlayer10closeMovieEh
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _020F29E8
	ldr r0, _020F2A14 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	str r4, [r5, #0xc]
_020F29E8:
	bl _ZN6Thread5YieldEv
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	bne _020F29E8
	str r4, [r5, #4]
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F2A04: .word sMovieInfo
_020F2A08: .word ov16_02118474
_020F2A0C: .word gMoviePlayer
_020F2A10: .word ov16_02118498
_020F2A14: .word gAllocator
	arm_func_end FUN_ov16_020f2868

	arm_func_start FUN_ov16_020f2a18
FUN_ov16_020f2a18: ; 0x020F2A18
	stmfd sp!, {r4, lr}
	ldr r4, _020F2A68 ; =0x02119ED4
	str r0, [r4]
	bl STD_CopyString
	ldr r0, _020F2A6C ; =gAllocator
	mov r1, #0x4000
	bl _ZN10CAllocator8allocateEm
	ldr r1, [r4]
	str r0, [r1, #0x20]
	ldr r0, [r4]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F2A70 ; =FUN_ov16_020f2868
	add r2, r1, #0x4000
	mov r1, #0
	bl _ZN6Thread6CreateEPFvPvES0_S0_
	mov r0, #1
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020F2A68: .word sMovieInfo
_020F2A6C: .word gAllocator
_020F2A70: .word FUN_ov16_020f2868
	arm_func_end FUN_ov16_020f2a18

	arm_func_start FUN_ov16_020f2a74
FUN_ov16_020f2a74: ; 0x020F2A74
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldreq r0, _020F2A9C ; =0x02119ED4
	ldreq r0, [r0]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020F2AA0 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	ldmfd sp!, {r3, pc}
_020F2A9C: .word sMovieInfo
_020F2AA0: .word gAllocator
	arm_func_end FUN_ov16_020f2a74

	arm_func_start FUN_ov16_020f2aa4
FUN_ov16_020f2aa4: ; 0x020F2AA4
	ldr r0, _020F2AB0 ; =0x02119ED4
	ldr r0, [r0, #4]
	bx lr
_020F2AB0: .word sMovieInfo
	arm_func_end FUN_ov16_020f2aa4

	arm_func_start FUN_ov16_020f2ab4
FUN_ov16_020f2ab4: ; 0x020F2AB4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr r1, _020F2CC8 ; =0x04000006
	ldr r4, _020F2CCC ; =gMoviePlayer
	ldrh r5, [r1]
	mov r0, r4
	bl _ZN11MoviePlayer12FUN_0202e784Ev
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	cmp r5, #0xc0
	addlt sp, sp, #0x1c
	ldmltfd sp!, {r4, r5, pc}
	mov r0, r4
	bl _ZN11MoviePlayer10flipBufferEv
	mov r1, #0x4000000
	cmp r0, #0
	ldreq r0, [r1]
	biceq r0, r0, #0x1f00
	orreq r0, r0, #0x500
	streq r0, [r1]
	ldrne r0, [r1]
	bicne r0, r0, #0x1f00
	orrne r0, r0, #0x900
	strne r0, [r1]
	ldr r4, _020F2CCC ; =gMoviePlayer
	mov r0, r4
	bl _ZN11MoviePlayer11getVideoFpsEv
	ldr r2, [r4, #0x1a0]
	ldr r1, [r4, #0x198]
	mov r5, #3
	add r4, r2, r1
	mov r3, #0xe8000000
	mov r2, r0
	umull r0, r1, r4, r3
	mla r1, r4, r5, r1
	mov r4, r4, asr #0x1f
	mla r1, r4, r3, r1
	mov r3, #0
	bl _ll_udiv
	ldr r4, _020F2CD0 ; =0x02119ED4
	ldr r1, [r4, #8]
	cmp r1, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r1, #0x1e
	mul r1, r0, r1
	ldr r2, _020F2CD4 ; =0x10624DD3
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r1, [r4]
	add r3, r0, r3, asr #6
	str r3, [r1, #0x30]
	ldr r2, [r4]
	ldr r0, [r2, #0x2c]
	ldr r1, [r2, #0x30]
	cmp r0, #0
	beq _020F2C04
	ldr r0, [r2, #0x24]
	cmp r1, r0
	addlt sp, sp, #0x1c
	ldmltfd sp!, {r4, r5, pc}
	bl G2_GetBG0CharPtr
	str r5, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r1, #0xa4
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [r4]
	mov r1, r0
	ldr r0, [r2, #0x2c]
	mov r2, #0x100
	mov r3, #0xc0
	bl FUN_ov16_020f2184
	ldr r0, [r4]
	add sp, sp, #0x1c
	str r5, [r0, #0x2c]
	ldmfd sp!, {r4, r5, pc}
_020F2C04:
	ldr r0, [r2, #0x28]
	cmp r1, r0
	addlt sp, sp, #0x1c
	ldmltfd sp!, {r4, r5, pc}
	bl G2_GetBG0CharPtr
	mov r5, #0
	str r5, [sp]
	mov r1, #0xa0
	str r1, [sp, #4]
	mov r2, #0x100
	str r2, [sp, #8]
	mov r1, #0x20
	str r1, [sp, #0xc]
	ldr r3, _020F2CD8 ; =gFont12
	mov r1, r0
	ldr r0, [r3]
	mov r3, #0xc0
	bl _ZN12CFontManager9clearVramEPviiiiii
	ldr r1, [r4, #8]
	add r0, r1, #4
	str r0, [r4, #8]
	ldr r1, [r1]
	ldr r0, [r4]
	str r1, [r0, #0x24]
	ldr r2, [r4]
	ldr r0, [r2, #0x24]
	cmp r0, #0
	addlt sp, sp, #0x1c
	strlt r5, [r4, #8]
	ldmltfd sp!, {r4, r5, pc}
	ldr r1, [r4, #8]
	add r0, r1, #4
	str r0, [r4, #8]
	ldr r0, [r1]
	str r0, [r2, #0x28]
	ldr r0, [r4, #8]
	add r3, r0, #4
	str r3, [r4, #8]
	ldr r2, [r0]
	ldr r1, [r4]
	mov r0, r2, asr #1
	str r3, [r1, #0x2c]
	add r0, r2, r0, lsr #30
	ldr r1, [r4, #8]
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #2
	str r0, [r4, #8]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_020F2CC8: .word 0x04000006
_020F2CCC: .word gMoviePlayer
_020F2CD0: .word sMovieInfo
_020F2CD4: .word 0x10624DD3
_020F2CD8: .word gFont12
	arm_func_end FUN_ov16_020f2ab4

	arm_func_start FUN_ov16_020f2cdc
FUN_ov16_020f2cdc: ; 0x020F2CDC
	stmfd sp!, {r3, lr}
_020F2CE0:
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl _ZN6Thread5YieldEv
	b _020F2CE0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f2cdc

    .data
	.global ov16_02118474
ov16_02118474:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118490
ov16_02118490:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov16_02118498
ov16_02118498:
	.asciz "/data_iz/movie/txt/%s.dat"
	.balign 4, 0

    .bss
	.global sMovieInfo
sMovieInfo:
	.space 0x10

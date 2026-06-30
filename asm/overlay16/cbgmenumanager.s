.public DC_FlushRange
.public FX_Sqrt
.public MIi_CpuClearFast
.public MIi_CpuCopyFast
.public _ZN18CBgMenuRadioButton13releaseButtonEib
.public _ZN18CBgMenuRadioButton3getEi
.public _ZN18CBgMenuRadioButton5countEv
.public _ZN8Graphics11StopBGPulseE12EngineSelect
.public _ZN8Graphics12ResetBGPulseE12EngineSelect
.public _ZN8Graphics13LoadBGPaletteE12EngineSelect
.public _ZN8Graphics19ApplyBGPalettePulseE12EngineSelect
.public gBgMenuManager
.public gMainScreen0
.public unk_0209A070

	.include "/macros/function.inc"

	.text
	arm_func_start _ZN14CBgMenuManager4initE12EngineSelect
_ZN14CBgMenuManager4initE12EngineSelect: ; 0x020F5A58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r6, r0
	bl _ZN14CBgMenuManager6enableE12EngineSelect
	mov r3, #0
	add r0, r5, r5, lsl #1
	add r1, r6, r0
	mov r2, r3
	b _020F5A88
_020F5A7C:
	add r0, r1, r3
	strb r2, [r0, #0x1e]
	add r3, r3, #1
_020F5A88:
	cmp r3, #3
	blt _020F5A7C
	ldr r8, _020F5AEC ; =0x020A6C40
	mov r7, #0x1800
	mla r1, r5, r7, r8
	mov r4, #0
	mov r0, r4
	mov r2, r7
	bl MIi_CpuClearFast
	mla r0, r5, r7, r8
	mov r1, r7
	bl DC_FlushRange
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl _ZN14CBgMenuManager9deleteAllE12EngineSelectt
	mov r0, r5
	bl _ZN8Graphics12ResetBGPulseE12EngineSelect
	add r0, r5, r5, lsl #1
	add r0, r6, r0
	add r0, r0, #0x1000
	strb r4, [r0, #0x64]
	strb r4, [r0, #0x65]
	strb r4, [r0, #0x66]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5AEC: .word gMainScreen0
	arm_func_end _ZN14CBgMenuManager4initE12EngineSelect

	arm_func_start _ZN14CBgMenuManager8finalizeE12EngineSelect
_ZN14CBgMenuManager8finalizeE12EngineSelect: ; 0x020F5AF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, r1
	mov r0, #0xc
	mla r8, r10, r0, r11
	add r0, r10, r10, lsl #1
	mov r6, #0
	add r7, r11, r0
	mov r5, r6
	mov r4, #0x800
_020F5B18:
	add r9, r7, r6
	ldrb r0, [r9, #0x1e]
	cmp r0, #0
	addne r0, r8, r6, lsl #2
	ldrne r1, [r0, #4]
	cmpne r1, #0
	beq _020F5B44
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	strb r5, [r9, #0x1e]
_020F5B44:
	add r6, r6, #1
	cmp r6, #3
	blt _020F5B18
	mov r0, r11
	mov r1, r10
	mov r2, #0
	bl _ZN14CBgMenuManager9deleteAllE12EngineSelectt
	mov r0, r10
	bl _ZN8Graphics11StopBGPulseE12EngineSelect
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN14CBgMenuManager8finalizeE12EngineSelect

	arm_func_start _ZN14CBgMenuManager10setScreensE12EngineSelectPvS1_S1_
_ZN14CBgMenuManager10setScreensE12EngineSelectPvS1_S1_: ; 0x020F5B6C
	mov r12, #0xc
	mla r12, r1, r12, r0
	ldr r0, [sp]
	stmib r12, {r2, r3}
	str r0, [r12, #0xc]
	bx lr
	arm_func_end _ZN14CBgMenuManager10setScreensE12EngineSelectPvS1_S1_

	arm_func_start _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt
_ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt: ; 0x020F5B84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r12, [sp, #0x28]
	ldr lr, [sp, #0x18]
	cmp r12, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [sp, #0x24]
	ldr r5, _020F5C30 ; =0x020A6C40
	ldr r0, [sp, #0x20]
	mov r4, r4, lsl #0xc
	strh r4, [sp, #0x24]
	mov r4, #0x1800
	mla r4, r1, r4, r5
	add r5, r4, r2, lsl #11
	ldrh r1, [sp, #0x24]
	ldr r4, [sp, #0x1c]
	b _020F5C24
_020F5BC4:
	cmp lr, #0
	addlt r12, r12, r4, lsl #1
	blt _020F5C1C
	cmp lr, #0x18
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	add r2, r3, lr, lsl #5
	mov r6, r3
	mov r8, r4
	add r7, r5, r2, lsl #1
	b _020F5C14
_020F5BEC:
	cmp r6, #0
	blt _020F5C04
	cmp r6, #0x20
	ldrlth r2, [r12]
	orrlt r2, r2, r1
	strlth r2, [r7]
_020F5C04:
	sub r8, r8, #1
	add r6, r6, #1
	add r12, r12, #2
	add r7, r7, #2
_020F5C14:
	cmp r8, #0
	bgt _020F5BEC
_020F5C1C:
	sub r0, r0, #1
	add lr, lr, #1
_020F5C24:
	cmp r0, #0
	bgt _020F5BC4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C30: .word gMainScreen0
	arm_func_end _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt

	arm_func_start _ZN14CBgMenuManager10addDynamicE12EngineSelecthhhP18SBgMenuElementInitiii
_ZN14CBgMenuManager10addDynamicE12EngineSelecthhhP18SBgMenuElementInitiii: ; 0x020F5C34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r6, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r7, [sp, #0x34]
	mul r12, r6, r4
	ldrsh lr, [r7]
	mul r5, r6, r5
	ldrsh r8, [r7, #2]
	mov r4, #0
	sub lr, lr, r12
	mov r6, r4
	sub r5, r8, r5
	add r12, r0, #0x24
_020F5C70:
	ldrb r8, [r12, #1]
	cmp r8, #0
	bne _020F5D84
	add r4, r1, r1, lsl #1
	add r4, r0, r4
	add r4, r4, r2
	mov r6, #1
	strb r6, [r4, #0x1e]
	strb r1, [r12]
	ldr r4, [sp, #0x30]
	strb r3, [r12, #1]
	strb r4, [r12, #2]
	strb r2, [r12, #3]
	str lr, [r12, #0xc]
	str r5, [r12, #0x10]
	ldrh r3, [r7, #4]
	str r3, [r12, #0x14]
	ldrh r3, [r7, #6]
	str r3, [r12, #0x18]
	ldrh r3, [r7, #0xc]
	cmp r3, #0
	moveq r3, #0
	streq r3, [r12, #0x1c]
	streq r3, [r12, #0x24]
	streq r3, [r12, #0x20]
	beq _020F5D0C
	ldrh r3, [r7, #8]
	str r3, [r12, #0x1c]
	ldrh r3, [r7, #0xa]
	str r3, [r12, #0x20]
	ldrh r4, [r7, #8]
	ldrh r3, [r7, #0xc]
	add r3, r4, r3
	sub r3, r3, #1
	str r3, [r12, #0x24]
	ldrh r4, [r7, #0xa]
	ldrh r3, [r7, #0xe]
	add r3, r4, r3
	sub r3, r3, #1
_020F5D0C:
	str r3, [r12, #0x28]
	mov r4, #1
	strb r4, [r12, #5]
	mov r6, #0
	strb r6, [r12, #6]
	strb r6, [r12, #7]
	strh r6, [r12, #8]
	strh r6, [r12, #0xa]
	ldr r3, [sp, #0x38]
	ldr r6, [sp, #0x3c]
	str r3, [r12, #0x2c]
	ldr r3, [sp, #0x40]
	str r6, [r12, #0x30]
	str r3, [r12, #0x34]
	ldrb r6, [r7, #0x10]
	mov r3, lr
	strb r6, [r12, #4]
	ldr r6, [r7, #0x14]
	str r6, [r12, #0x38]
	str r5, [sp]
	ldrh r5, [r7, #4]
	str r5, [sp, #4]
	ldrh r5, [r7, #6]
	str r5, [sp, #8]
	ldrb r5, [r7, #0x10]
	str r5, [sp, #0xc]
	ldr r5, [r7, #0x14]
	str r5, [sp, #0x10]
	bl _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt
	b _020F5D94
_020F5D84:
	add r6, r6, #1
	cmp r6, #0x30
	add r12, r12, #0x3c
	blt _020F5C70
_020F5D94:
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end _ZN14CBgMenuManager10addDynamicE12EngineSelecthhhP18SBgMenuElementInitiii

	arm_func_start _ZN14CBgMenuManager9addStaticE12EngineSelectiiiiaahhhPv
_ZN14CBgMenuManager9addStaticE12EngineSelectiiiiaahhhPv: ; 0x020F5DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	mov r4, #0
	add r12, r0, #0x364
	mov r6, r1
	mov r5, r2
	mov r7, r4
	add r1, r12, #0x800
_020F5DC0:
	ldrb r2, [r1, #1]
	cmp r2, #0
	bne _020F5E50
	add r2, r6, r6, lsl #1
	add r2, r0, r2
	add r2, r2, r5
	mov r4, #1
	strb r4, [r2, #0x1e]
	strb r6, [r1]
	strb r5, [r1, #3]
	strb r3, [r1, #4]
	ldr r3, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	ldrsb r3, [sp, #0x50]
	ldrsb r8, [sp, #0x54]
	ldrb lr, [sp, #0x58]
	strb r3, [r1, #5]
	strb r8, [r1, #6]
	ldrb r12, [sp, #0x5c]
	strb lr, [r1, #7]
	ldrb r2, [sp, #0x60]
	strb r12, [r1, #8]
	ldr r7, [sp, #0x64]
	strb r2, [r1, #9]
	strb r4, [r1, #0xa]
	str r7, [r1, #0xc]
	stmia sp, {r8, lr}
	str r12, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, r6
	mov r2, r5
	str r7, [sp, #0x10]
	bl _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt
	b _020F5E60
_020F5E50:
	add r7, r7, #1
	cmp r7, #0x50
	add r1, r1, #0x10
	blt _020F5DC0
_020F5E60:
	cmp r4, #0
	bne _020F5EDC
	ldrsb r7, [sp, #0x50]
	ldrsb lr, [sp, #0x54]
	mov r4, #0
	ldrb r12, [sp, #0x58]
	ldrb r3, [sp, #0x5c]
	ldrb r2, [sp, #0x60]
	ldr r0, [sp, #0x64]
	strh r3, [sp, #0x1a]
	strb r2, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x4c]
	strh r7, [sp, #0x14]
	strh lr, [sp, #0x16]
	strh r12, [sp, #0x18]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	str r1, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r3, [sp, #0x48]
	ldr r0, _020F5EE8 ; =gBgMenuManager
	mov r1, r6
	mov r2, r5
	str r4, [sp, #0x10]
	bl _ZN14CBgMenuManager10addDynamicE12EngineSelecthhhP18SBgMenuElementInitiii
	mov r4, r0
_020F5EDC:
	mov r0, r4
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F5EE8: .word gBgMenuManager
	arm_func_end _ZN14CBgMenuManager9addStaticE12EngineSelectiiiiaahhhPv

	arm_func_start _ZN14CBgMenuManager8deleteIDE12EngineSelectit
_ZN14CBgMenuManager8deleteIDE12EngineSelectit: ; 0x020F5EEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	add r4, r0, #0x24
	mov r12, r5
_020F5EFC:
	ldrb lr, [r4, #1]
	cmp lr, r2
	ldreqb lr, [r4]
	cmpeq lr, r1
	bne _020F5F1C
	cmp r3, #0
	streqb r12, [r4, #1]
	strneh r3, [r4, #0xa]
_020F5F1C:
	add r5, r5, #1
	cmp r5, #0x30
	add r4, r4, #0x3c
	blt _020F5EFC
	add r0, r0, #0x364
	mov r5, #0
	add r4, r0, #0x800
	mov r0, r5
_020F5F3C:
	ldrb r3, [r4, #1]
	add r5, r5, #1
	cmp r3, r2
	ldreqb r3, [r4]
	cmpeq r3, r1
	streqb r0, [r4, #1]
	cmp r5, #0x50
	add r4, r4, #0x10
	blt _020F5F3C
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN14CBgMenuManager8deleteIDE12EngineSelectit

	arm_func_start _ZN14CBgMenuManager11deleteGroupE12EngineSelectit
_ZN14CBgMenuManager11deleteGroupE12EngineSelectit: ; 0x020F5F64
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	add r4, r0, #0x24
	mov r12, r5
_020F5F74:
	ldrb lr, [r4, #1]
	cmp lr, #0
	beq _020F5FA0
	ldrb lr, [r4]
	cmp lr, r1
	ldreqb lr, [r4, #2]
	cmpeq lr, r2
	bne _020F5FA0
	cmp r3, #0
	streqb r12, [r4, #1]
	strneh r3, [r4, #0xa]
_020F5FA0:
	add r5, r5, #1
	cmp r5, #0x30
	add r4, r4, #0x3c
	blt _020F5F74
	add r0, r0, #0x364
	mov r5, #0
	add r4, r0, #0x800
	mov r0, r5
_020F5FC0:
	ldrb r3, [r4, #1]
	cmp r3, #0
	beq _020F5FE0
	ldrb r3, [r4]
	cmp r3, r1
	ldreqb r3, [r4, #2]
	cmpeq r3, r2
	streqb r0, [r4, #1]
_020F5FE0:
	add r5, r5, #1
	cmp r5, #0x50
	add r4, r4, #0x10
	blt _020F5FC0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN14CBgMenuManager11deleteGroupE12EngineSelectit

	arm_func_start _ZN14CBgMenuManager9deleteAllE12EngineSelectt
_ZN14CBgMenuManager9deleteAllE12EngineSelectt: ; 0x020F5FF4
	stmfd sp!, {r4, lr}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, r4
_020F6004:
	ldrb r12, [lr, #1]
	cmp r12, #0
	beq _020F6028
	ldrb r12, [lr]
	cmp r12, r1
	bne _020F6028
	cmp r2, #0
	streqb r3, [lr, #1]
	strneh r2, [lr, #0xa]
_020F6028:
	add r4, r4, #1
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6004
	add r0, r0, #0x364
	mov r4, #0
	add r3, r0, #0x800
	mov r0, r4
_020F6048:
	ldrb r2, [r3, #1]
	cmp r2, #0
	beq _020F6060
	ldrb r2, [r3]
	cmp r2, r1
	streqb r0, [r3, #1]
_020F6060:
	add r4, r4, #1
	cmp r4, #0x50
	add r3, r3, #0x10
	blt _020F6048
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManager9deleteAllE12EngineSelectt

	arm_func_start _ZN14CBgMenuManager6enableE12EngineSelect
_ZN14CBgMenuManager6enableE12EngineSelect: ; 0x020F6074
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0, #0x1c]
	bx lr
	arm_func_end _ZN14CBgMenuManager6enableE12EngineSelect

	arm_func_start _ZN14CBgMenuManager6hideIDE12EngineSelecti
_ZN14CBgMenuManager6hideIDE12EngineSelecti: ; 0x020F6084
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, r4
_020F609C:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streqb r3, [lr, #5]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F609C
	add r0, r0, #0x364
	mov r4, #0
	add r12, r0, #0x800
	mov r0, r4
_020F60D0:
	ldrb r3, [r12, #1]
	add r4, r4, #1
	cmp r3, r2
	ldreqb r3, [r12]
	cmpeq r3, r1
	streqb r0, [r12, #0xa]
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F60D0
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManager6hideIDE12EngineSelecti

	arm_func_start _ZN14CBgMenuManager6showIDE12EngineSelecti
_ZN14CBgMenuManager6showIDE12EngineSelecti: ; 0x020F60F8
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	add lr, r0, #0x24
	mov r4, #0
	mov r3, #1
_020F6110:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streqb r3, [lr, #5]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6110
	add r0, r0, #0x364
	add r12, r0, #0x800
	mov r4, #0
	mov r0, #1
_020F6144:
	ldrb r3, [r12, #1]
	add r4, r4, #1
	cmp r3, r2
	ldreqb r3, [r12]
	cmpeq r3, r1
	streqb r0, [r12, #0xa]
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F6144
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManager6showIDE12EngineSelecti

	arm_func_start _ZN14CBgMenuManager9hideGroupE12EngineSelecti
_ZN14CBgMenuManager9hideGroupE12EngineSelecti: ; 0x020F616C
	stmfd sp!, {r4, lr}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, r4
_020F617C:
	ldrb r12, [lr, #1]
	cmp r12, #0
	beq _020F619C
	ldrb r12, [lr]
	cmp r12, r1
	ldreqb r12, [lr, #2]
	cmpeq r12, r2
	streqb r3, [lr, #5]
_020F619C:
	add r4, r4, #1
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F617C
	add r0, r0, #0x364
	mov r4, #0
	add r12, r0, #0x800
	mov r0, r4
_020F61BC:
	ldrb r3, [r12, #1]
	cmp r3, #0
	beq _020F61DC
	ldrb r3, [r12]
	cmp r3, r1
	ldreqb r3, [r12, #2]
	cmpeq r3, r2
	streqb r0, [r12, #0xa]
_020F61DC:
	add r4, r4, #1
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F61BC
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManager9hideGroupE12EngineSelecti

	arm_func_start _ZN14CBgMenuManager9showGroupE12EngineSelecti
_ZN14CBgMenuManager9showGroupE12EngineSelecti: ; 0x020F61F0
	stmfd sp!, {r4, lr}
	add lr, r0, #0x24
	mov r4, #0
	mov r3, #1
_020F6200:
	ldrb r12, [lr, #1]
	cmp r12, #0
	beq _020F6220
	ldrb r12, [lr]
	cmp r12, r1
	ldreqb r12, [lr, #2]
	cmpeq r12, r2
	streqb r3, [lr, #5]
_020F6220:
	add r4, r4, #1
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6200
	add r0, r0, #0x364
	add r12, r0, #0x800
	mov r4, #0
	mov r0, #1
_020F6240:
	ldrb r3, [r12, #1]
	cmp r3, #0
	beq _020F6260
	ldrb r3, [r12]
	cmp r3, r1
	ldreqb r3, [r12, #2]
	cmpeq r3, r2
	streqb r0, [r12, #0xa]
_020F6260:
	add r4, r4, #1
	cmp r4, #0x50
	add r12, r12, #0x10
	blt _020F6240
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManager9showGroupE12EngineSelecti

	arm_func_start _ZN14CBgMenuManager11updateRadioEv
_ZN14CBgMenuManager11updateRadioEv: ; 0x020F6274
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, _020F6378 ; =0x0209A070
	mov r10, r0
	mov r0, r11
	bl _ZN18CBgMenuRadioButton5countEv
	mov r8, r0
	mov r9, #0
	cmp r8, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, r9
	mov r5, r9
	mov r6, r9
_020F62A4:
	mov r0, r11
	mov r1, r9
	bl _ZN18CBgMenuRadioButton3getEi
	movs r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _020F62D8
	cmp r0, #1
	beq _020F6308
	cmp r0, #2
	beq _020F6338
	b _020F6368
_020F62D8:
	ldrb r2, [r7, #1]
	mov r0, r10
	mov r1, r6
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r7, #2]
	mov r0, r10
	mov r1, r6
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r7]
	mov r0, r10
	mov r1, r6
	b _020F6364
_020F6308:
	ldrb r2, [r7]
	mov r0, r10
	mov r1, r5
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r7, #2]
	mov r0, r10
	mov r1, r5
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r7, #1]
	mov r0, r10
	mov r1, r5
	b _020F6364
_020F6338:
	ldrb r2, [r7]
	mov r0, r10
	mov r1, r4
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r7, #1]
	mov r0, r10
	mov r1, r4
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r7, #2]
	mov r0, r10
	mov r1, r4
_020F6364:
	bl _ZN14CBgMenuManager6showIDE12EngineSelecti
_020F6368:
	add r9, r9, #1
	cmp r9, r8
	blt _020F62A4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6378: .word unk_0209A070
	arm_func_end _ZN14CBgMenuManager11updateRadioEv

	arm_func_start _ZN14CBgMenuManager8hideTempE12EngineSelectit
_ZN14CBgMenuManager8hideTempE12EngineSelectit: ; 0x020F637C
	stmfd sp!, {r3, lr}
	add r12, r0, #0x24
	mov lr, #0
_020F6388:
	ldrb r0, [r12, #1]
	add lr, lr, #1
	cmp r0, r2
	ldreqb r0, [r12]
	cmpeq r0, r1
	streqh r3, [r12, #8]
	cmp lr, #0x30
	add r12, r12, #0x3c
	blt _020F6388
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN14CBgMenuManager8hideTempE12EngineSelectit

	arm_func_start _ZN14CBgMenuManager11setBlinkingE12EngineSelecti
_ZN14CBgMenuManager11setBlinkingE12EngineSelecti: ; 0x020F63B0
	stmfd sp!, {r4, lr}
	mov r4, #0
	add lr, r0, #0x24
	mov r3, #1
	mov r0, r4
_020F63C4:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streqb r3, [lr, #6]
	streqb r0, [lr, #7]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F63C4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN14CBgMenuManager11setBlinkingE12EngineSelecti

	arm_func_start _ZN14CBgMenuManager6setPosE12EngineSelectiii
_ZN14CBgMenuManager6setPosE12EngineSelectiii: ; 0x020F63F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	add lr, r0, #0x24
	mov r4, #0
_020F6400:
	ldrb r12, [lr, #1]
	add r4, r4, #1
	cmp r12, r2
	ldreqb r12, [lr]
	cmpeq r12, r1
	streq r3, [lr, #0xc]
	streq r5, [lr, #0x10]
	cmp r4, #0x30
	add lr, lr, #0x3c
	blt _020F6400
	add r0, r0, #0x364
	add lr, r0, #0x800
	mov r0, r3, lsl #0x18
	mov r3, r5, lsl #0x18
	mov r12, r0, asr #0x18
	mov r4, #0
	mov r0, r3, asr #0x18
_020F6444:
	ldrb r3, [lr, #1]
	add r4, r4, #1
	cmp r3, r2
	ldreqb r3, [lr]
	cmpeq r3, r1
	streqb r12, [lr, #5]
	streqb r0, [lr, #6]
	cmp r4, #0x50
	add lr, lr, #0x10
	blt _020F6444
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN14CBgMenuManager6setPosE12EngineSelectiii

	arm_func_start _ZN14CBgMenuManager9setBoundsE12EngineSelectiiiii
_ZN14CBgMenuManager9setBoundsE12EngineSelectiiiii: ; 0x020F6470
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [sp, #0x14]
	ldr r12, [sp, #0x10]
	ldr lr, [sp, #0x18]
	add r4, r3, r4
	add lr, r12, lr
	sub r6, r4, #1
	add r5, r0, #0x24
	sub lr, lr, #1
	mov r4, #0
_020F6498:
	ldrb r0, [r5, #1]
	add r4, r4, #1
	cmp r0, r2
	ldreqb r0, [r5]
	cmpeq r0, r1
	streq r3, [r5, #0x1c]
	streq r12, [r5, #0x20]
	streq r6, [r5, #0x24]
	streq lr, [r5, #0x28]
	cmp r4, #0x30
	add r5, r5, #0x3c
	blt _020F6498
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end _ZN14CBgMenuManager9setBoundsE12EngineSelectiiiii

	arm_func_start _ZN14CBgMenuManager11resetBoundsE12EngineSelect
_ZN14CBgMenuManager11resetBoundsE12EngineSelect: ; 0x020F64CC
	mov r12, #0
	add r3, r0, #0x24
	mov r0, r12
_020F64D8:
	ldrb r2, [r3]
	cmp r2, r1
	bne _020F64FC
	ldr r2, [r3, #0x24]
	cmp r2, #0
	strgt r0, [r3, #0x1c]
	strgt r0, [r3, #0x24]
	strgt r0, [r3, #0x20]
	strgt r0, [r3, #0x28]
_020F64FC:
	add r12, r12, #1
	cmp r12, #0x30
	add r3, r3, #0x3c
	blt _020F64D8
	bx lr
	arm_func_end _ZN14CBgMenuManager11resetBoundsE12EngineSelect

	arm_func_start _ZN14CBgMenuManager8setFlashE12EngineSelecthh
_ZN14CBgMenuManager8setFlashE12EngineSelecthh: ; 0x020F6510
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #0x1000
	strb r2, [r0, #0x64]
	strb r3, [r0, #0x65]
	mov r1, #7
	strb r1, [r0, #0x66]
	bx lr
	arm_func_end _ZN14CBgMenuManager8setFlashE12EngineSelecthh

	arm_func_start _ZN14CBgMenuManager13releaseButtonEi
_ZN14CBgMenuManager13releaseButtonEi: ; 0x020F6530
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020F6580 ; =0x0209A070
	mov r7, r0
	mov r0, r4
	mov r6, r1
	bl _ZN18CBgMenuRadioButton3getEi
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #1
	bl _ZN18CBgMenuRadioButton13releaseButtonEib
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #1]
	mov r0, r7
	cmp r2, #0
	ldreqb r2, [r5]
	mov r1, #0
	bl _ZN14CBgMenuManager8setFlashE12EngineSelecthh
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F6580: .word unk_0209A070
	arm_func_end _ZN14CBgMenuManager13releaseButtonEi

	arm_func_start _ZN14CBgMenuManager13isFlashActiveE12EngineSelect
_ZN14CBgMenuManager13isFlashActiveE12EngineSelect: ; 0x020F6584
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x66]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end _ZN14CBgMenuManager13isFlashActiveE12EngineSelect

	arm_func_start _ZN14CBgMenuManager10isFlashingE12EngineSelect
_ZN14CBgMenuManager10isFlashingE12EngineSelect: ; 0x020F65A4
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x66]
	cmp r0, #1
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end _ZN14CBgMenuManager10isFlashingE12EngineSelect

	arm_func_start _ZN14CBgMenuManager11updateFlashEv
_ZN14CBgMenuManager11updateFlashEv: ; 0x020F65C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	add r0, r4, #0x64
	mov r7, #0
	add r6, r0, #0x1000
	mov r5, r7
_020F65DC:
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _020F6664
	sub r0, r0, #1
	strb r0, [r6, #2]
	ands r0, r0, #0xff
	streqb r5, [r6]
	streqb r5, [r6, #1]
	streqb r5, [r6, #2]
	beq _020F6664
	cmp r0, #2
	bhi _020F6610
	b _020F6644
_020F6610:
	cmp r0, #5
	bhi _020F663C
	ldrb r2, [r6, #1]
	mov r0, r4
	mov r1, r7
	bl _ZN14CBgMenuManager6showIDE12EngineSelecti
	ldrb r2, [r6]
	mov r0, r4
	mov r1, r7
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	b _020F6664
_020F663C:
	cmp r0, #7
	bhi _020F6664
_020F6644:
	ldrb r2, [r6, #1]
	mov r0, r4
	mov r1, r7
	bl _ZN14CBgMenuManager6hideIDE12EngineSelecti
	ldrb r2, [r6]
	mov r0, r4
	mov r1, r7
	bl _ZN14CBgMenuManager6showIDE12EngineSelecti
_020F6664:
	add r7, r7, #1
	cmp r7, #2
	add r6, r6, #3
	blt _020F65DC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end _ZN14CBgMenuManager11updateFlashEv

	arm_func_start _ZN14CBgMenuManager11isAnimatingE12EngineSelect
_ZN14CBgMenuManager11isAnimatingE12EngineSelect: ; 0x020F6678
	add r2, r0, #0x24
	mov r3, #0
_020F6680:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _020F66A8
	ldrb r0, [r2]
	cmp r0, r1
	bne _020F66A8
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	movgt r0, #1
	bxgt lr
_020F66A8:
	add r3, r3, #1
	cmp r3, #0x30
	add r2, r2, #0x3c
	blt _020F6680
	mov r0, #0
	bx lr
	arm_func_end _ZN14CBgMenuManager11isAnimatingE12EngineSelect

	arm_func_start _ZN14CBgMenuManager9isVisibleE12EngineSelecti
_ZN14CBgMenuManager9isVisibleE12EngineSelecti: ; 0x020F66C0
	stmfd sp!, {r3, lr}
	add r12, r0, #0x24
	mov lr, #0
_020F66CC:
	ldrb r3, [r12, #1]
	cmp r3, #0
	beq _020F6714
	ldrb r0, [r12]
	cmp r0, r1
	cmpeq r3, r2
	bne _020F6714
	ldrb r0, [r12, #5]
	cmp r0, #0
	beq _020F6714
	ldrb r0, [r12, #6]
	cmp r0, #0
	beq _020F670C
	ldrb r0, [r12, #7]
	cmp r0, #0x12
	bhs _020F6714
_020F670C:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020F6714:
	add lr, lr, #1
	cmp lr, #0x30
	add r12, r12, #0x3c
	blt _020F66CC
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN14CBgMenuManager9isVisibleE12EngineSelecti

	arm_func_start _ZN14CBgMenuManager14updateGraphicsE12EngineSelect
_ZN14CBgMenuManager14updateGraphicsE12EngineSelect: ; 0x020F672C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb4
	mov r9, r1
	mov r10, r0
	ldr r1, _020F6A94 ; =0x020A6C40
	mov r0, #0x1800
	mla r8, r9, r0, r1
	mov r5, #0
	add r0, r9, r9, lsl #1
	mov r6, r5
	add r4, r10, r0
	mov r7, #0x800
	b _020F6784
_020F6760:
	add r0, r4, r6
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _020F6780
	mov r0, r5
	mov r2, r7
	add r1, r8, r6, lsl #11
	bl MIi_CpuClearFast
_020F6780:
	add r6, r6, #1
_020F6784:
	cmp r6, #3
	blt _020F6760
	mov r0, r10
	bl _ZN14CBgMenuManager11updateFlashEv
	add r0, r10, #0x364
	mov r6, #0
	mov r8, r6
	add r7, r0, #0x800
	add r4, sp, #0x14
	b _020F6830
_020F67AC:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _020F6828
	ldrb r0, [r7]
	cmp r0, r9
	bne _020F6828
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _020F6828
	ldrb r0, [r7, #4]
	cmp r0, #0
	strneb r0, [r4, r6, lsl #1]
	addne r0, r4, r6, lsl #1
	strneb r8, [r0, #1]
	addne r6, r6, #1
	bne _020F6828
	ldrsb r2, [r7, #6]
	mov r0, r10
	mov r1, r9
	str r2, [sp]
	ldrb r2, [r7, #7]
	str r2, [sp, #4]
	ldrb r2, [r7, #8]
	str r2, [sp, #8]
	ldrb r2, [r7, #9]
	str r2, [sp, #0xc]
	ldr r2, [r7, #0xc]
	str r2, [sp, #0x10]
	ldrb r2, [r7, #3]
	ldrsb r3, [r7, #5]
	bl _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt
_020F6828:
	add r8, r8, #1
	add r7, r7, #0x10
_020F6830:
	cmp r8, #0x50
	blt _020F67AC
	add r7, r10, #0x24
	mov r8, #0
	ldr r4, _020F6A98 ; =0x2AAAAAAB
	mov r11, #0x18
	b _020F6958
_020F684C:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _020F6950
	ldrb r0, [r7]
	cmp r0, r9
	bne _020F6950
	ldrh r0, [r7, #8]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r7, #8]
	bne _020F6950
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	ble _020F68AC
	sub r0, r0, #1
	str r0, [r7, #0x2c]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x30]
	add r0, r1, r0
	str r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x34]
	add r0, r1, r0
	str r0, [r7, #0x10]
_020F68AC:
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	beq _020F68CC
	sub r0, r0, #1
	strh r0, [r7, #0xa]
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	streqb r5, [r7, #1]
_020F68CC:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _020F6950
	ldrb r0, [r7, #6]
	cmp r0, #0
	beq _020F6914
	ldrb r0, [r7, #7]
	add r0, r0, #1
	and r0, r0, #0xff
	mov r1, r0, lsr #0x1f
	smull r2, r3, r4, r0
	add r3, r1, r3, asr #2
	smull r1, r2, r11, r3
	sub r3, r0, r1
	and r0, r3, #0xff
	strb r3, [r7, #7]
	cmp r0, #0x12
	bhs _020F6950
_020F6914:
	ldr r1, [r7, #0x10]
	mov r0, r10
	str r1, [sp]
	ldr r2, [r7, #0x14]
	mov r1, r9
	str r2, [sp, #4]
	ldr r2, [r7, #0x18]
	str r2, [sp, #8]
	ldrb r2, [r7, #4]
	str r2, [sp, #0xc]
	ldr r2, [r7, #0x38]
	str r2, [sp, #0x10]
	ldrb r2, [r7, #3]
	ldr r3, [r7, #0xc]
	bl _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt
_020F6950:
	add r8, r8, #1
	add r7, r7, #0x3c
_020F6958:
	cmp r8, #0x30
	blt _020F684C
	cmp r6, #0
	ble _020F6A3C
	sub r2, r6, #1
	add r0, sp, #0x14
	mvn r1, #0
	b _020F69CC
_020F6978:
	mov r3, r1
	mov r4, r5
	b _020F69C0
_020F6984:
	add r8, r4, #1
	ldrb r11, [r0, r4, lsl #1]
	ldrb r7, [r0, r8, lsl #1]
	cmp r11, r7
	bls _020F69BC
	strb r7, [r0, r4, lsl #1]
	strb r11, [r0, r8, lsl #1]
	add r12, r0, r4, lsl #1
	add r8, r0, r8, lsl #1
	ldrb r11, [r12, #1]
	ldrb r7, [r8, #1]
	mov r3, r4
	strb r7, [r12, #1]
	strb r11, [r8, #1]
_020F69BC:
	add r4, r4, #1
_020F69C0:
	cmp r4, r2
	blt _020F6984
	mov r2, r3
_020F69CC:
	cmp r2, #0
	bge _020F6978
	add r0, r10, #0x364
	mov r7, #0
	add r5, r0, #0x800
	add r4, sp, #0x14
	b _020F6A34
_020F69E8:
	add r0, r4, r7, lsl #1
	ldrb r2, [r0, #1]
	mov r0, r10
	mov r1, r9
	add r3, r5, r2, lsl #4
	ldrsb r2, [r3, #6]
	str r2, [sp]
	ldrb r2, [r3, #7]
	str r2, [sp, #4]
	ldrb r2, [r3, #8]
	str r2, [sp, #8]
	ldrb r2, [r3, #9]
	str r2, [sp, #0xc]
	ldr r2, [r3, #0xc]
	str r2, [sp, #0x10]
	ldrb r2, [r3, #3]
	ldrsb r3, [r3, #5]
	bl _ZN14CBgMenuManager11writeScreenE12EngineSelectilllltPt
	add r7, r7, #1
_020F6A34:
	cmp r7, r6
	blt _020F69E8
_020F6A3C:
	ldr r1, _020F6A94 ; =0x020A6C40
	mov r0, #0x1800
	mla r6, r9, r0, r1
	add r0, r9, r9, lsl #1
	mov r4, #0
	add r7, r10, r0
	mov r5, #0x800
	b _020F6A7C
_020F6A5C:
	add r0, r7, r4
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _020F6A78
	mov r1, r5
	add r0, r6, r4, lsl #11
	bl DC_FlushRange
_020F6A78:
	add r4, r4, #1
_020F6A7C:
	cmp r4, #3
	blt _020F6A5C
	mov r0, r9
	bl _ZN8Graphics19ApplyBGPalettePulseE12EngineSelect
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6A94: .word gMainScreen0
_020F6A98: .word 0x2AAAAAAB
	arm_func_end _ZN14CBgMenuManager14updateGraphicsE12EngineSelect

	arm_func_start _ZN14CBgMenuManager4drawE12EngineSelect
_ZN14CBgMenuManager4drawE12EngineSelect: ; 0x020F6A9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r10, #0
	bl _ZN8Graphics13LoadBGPaletteE12EngineSelect
	mov r1, #0xc
	ldr r2, _020F6B38 ; =0x020A6C40
	mov r0, #0x1800
	mla r6, r4, r0, r2
	add r0, r4, r4, lsl #1
	mla r8, r4, r1, r5
	add r7, r5, r4
	mov r11, #0x800
	add r9, r5, r0
	mov r4, r10
	mov r5, r11
	b _020F6B2C
_020F6AE4:
	add r0, r9, r10
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	addne r0, r8, r10, lsl #2
	ldrne r1, [r0, #4]
	cmpne r1, #0
	beq _020F6B28
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _020F6B1C
	mov r2, r5
	add r0, r6, r10, lsl #11
	bl MIi_CpuCopyFast
	b _020F6B28
_020F6B1C:
	mov r0, r4
	mov r2, r11
	bl MIi_CpuClearFast
_020F6B28:
	add r10, r10, #1
_020F6B2C:
	cmp r10, #3
	blt _020F6AE4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6B38: .word gMainScreen0
	arm_func_end _ZN14CBgMenuManager4drawE12EngineSelect

	arm_func_start _ZN14CBgMenuManager6getHitE12EngineSelectii
_ZN14CBgMenuManager6getHitE12EngineSelectii: ; 0x020F6B3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov lr, #0
	mov r6, lr
	add r5, r0, #0x24
	mov r4, #3
_020F6B50:
	ldrb r12, [r5, #1]
	cmp r12, #0
	beq _020F6BD0
	ldrb r0, [r5]
	cmp r0, r1
	bne _020F6BD0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bgt _020F6BD0
	ldr r9, [r5, #0x24]
	cmp r9, #0
	ldrgtb r0, [r5, #3]
	cmpgt r4, r0
	ble _020F6BD0
	ldr r8, [r5, #0xc]
	ldr r7, [r5, #0x1c]
	add r7, r7, r8, lsl #3
	cmp r2, r7
	blt _020F6BD0
	add r7, r9, r8, lsl #3
	cmp r2, r7
	bgt _020F6BD0
	ldr r8, [r5, #0x10]
	ldr r7, [r5, #0x20]
	add r7, r7, r8, lsl #3
	cmp r3, r7
	blt _020F6BD0
	ldr r7, [r5, #0x28]
	add r7, r7, r8, lsl #3
	cmp r3, r7
	movle r4, r0
	movle lr, r12
_020F6BD0:
	add r6, r6, #1
	cmp r6, #0x30
	add r5, r5, #0x3c
	blt _020F6B50
	mov r0, lr
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end _ZN14CBgMenuManager6getHitE12EngineSelectii

	arm_func_start _ZN14CBgMenuManager9setScreenE12EngineSelectiPv
_ZN14CBgMenuManager9setScreenE12EngineSelectiPv: ; 0x020F6BE8
	stmfd sp!, {r3, lr}
	add r12, r0, #0x24
	mov lr, #0
_020F6BF4:
	ldrb r0, [r12]
	cmp r0, r1
	ldreqb r0, [r12, #1]
	cmpeq r0, r2
	streq r3, [r12, #0x38]
	ldmeqfd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, #0x30
	add r12, r12, #0x3c
	blt _020F6BF4
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN14CBgMenuManager9setScreenE12EngineSelectiPv

	.section .init, 4
	arm_func_start __sinit_CBgMenuManager.cpp
__sinit_CBgMenuManager.cpp: ; 0x02117D80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117DC4 ; =0x02118748
	str r0, [r4, #0x10]
	ldr r0, _02117DC8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117DCC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117DC4: .word ov16_02118748
_02117DC8: .word 0x00009CCD
_02117DCC: .word 0x0000EA3C
	arm_func_end __sinit_CBgMenuManager.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CBgMenuManager.cpp

	.data
	.global ov16_02118748
ov16_02118748:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

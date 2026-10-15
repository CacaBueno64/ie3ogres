
.public MI_CpuFill8
.public _ZN7Archive14RequestNewReadEPKcP9SFileData
.public ov16_021189D0
.public _ZN7Archive11ReadFromSFPEPcP9SFileDataS0_
.public _ZN7Archive11TryFinalizeEP9SFileDatai
.public _ZN7Archive10DeallocateEP9SFileData
.public _ZN11AudioPlayer10playEffectEi
.public gAudioPlayer
.public gMainScreen0
.public MIi_CpuClearFast
.public GX_LoadBG0Char
.public GX_LoadBG1Char
.public GX_LoadBG2Char
.public GX_LoadBG3Char
.public _ZN8Graphics11SetupScreenEPvii
.public _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
.public G2_GetBG0CharPtr
.public G2_GetBG1CharPtr
.public G2_GetBG2CharPtr
.public G2_GetBG3CharPtr
.public DC_FlushRange
.public _ZN8Graphics17LoadBGPaletteMainEv
.public _ZN11AudioPlayer12FUN_0202c470El
.public _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
.public GX_LoadBG0Scr
.public GX_LoadBG1Scr
.public GX_LoadBG2Scr
.public GX_LoadBG3Scr
.public FUN_ov16_020f2604
.public gDeltaTime
.public _ZdlPv
.public FX_Sqrt

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_020fd9b0
FUN_ov16_020fd9b0: ; 0x020FD9B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x38
	mov r1, #0
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r0, _020FD9E0 ; =0x021189D0
	add r1, r4, #0x38
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	mov r0, #1
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_020FD9E0: .word ov16_021189D0
	arm_func_end FUN_ov16_020fd9b0

	arm_func_start FUN_ov16_020fd9e4
FUN_ov16_020fd9e4: ; 0x020FD9E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x38]
	cmp r6, #0
	ldrne r1, _020FDA30 ; =0x02117964
	ldrne r7, _020FDA34 ; =0x02117964
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x38
	mov r4, #0xc
_020FDA0C:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl _ZN7Archive11ReadFromSFPEPcP9SFileDataS0_
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020FDA0C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDA30: .word ov16_02117964
_020FDA34: .word ov16_02117964
	arm_func_end FUN_ov16_020fd9e4

	arm_func_start FUN_ov16_020fda38
FUN_ov16_020fda38: ; 0x020FDA38
	ldr r12, _020FDA48 ; =_ZN7Archive11TryFinalizeEP9SFileDatai
	add r0, r0, #0x38
	mov r1, #5
	bx r12
_020FDA48: .word _ZN7Archive11TryFinalizeEP9SFileDatai
	arm_func_end FUN_ov16_020fda38

	arm_func_start FUN_ov16_020fda4c
FUN_ov16_020fda4c: ; 0x020FDA4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x38
	mov r4, #0xc
_020FDA5C:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #5
	blt _020FDA5C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fda4c

	arm_func_start FUN_ov16_020fda74
FUN_ov16_020fda74: ; 0x020FDA74
	str r1, [r0, #0x24]
	cmp r1, #0
	moveq r1, #0
	movne r1, #7
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov16_020fda74

	arm_func_start FUN_ov16_020fda8c
FUN_ov16_020fda8c: ; 0x020FDA8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #4
	mov r2, #1
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	cmp r0, #0
	movgt r0, r2
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #8]
	cmp r0, #0
	movne r0, r2
	ldmnefd sp!, {r4, r5, r6, pc}
	tst r1, #0x20
	beq _020FDAF4
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _020FDAF0
	ldr r0, _020FDBA8 ; =gAudioPlayer
	mov r1, #8
	str r2, [r4, #0x1c]
	bl _ZN11AudioPlayer10playEffectEi
_020FDAF0:
	b _020FDB98
_020FDAF4:
	tst r1, #0x10
	beq _020FDB20
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	beq _020FDB1C
	ldr r0, _020FDBA8 ; =gAudioPlayer
	mov r2, #2
	mov r1, #8
	str r2, [r4, #0x1c]
	bl _ZN11AudioPlayer10playEffectEi
_020FDB1C:
	b _020FDB98
_020FDB20:
	tst r1, #1
	beq _020FDB70
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _020FDB4C
	ldr r0, _020FDBA8 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, #1
	b _020FDB68
_020FDB4C:
	cmp r0, #2
	bne _020FDB6C
	ldr r0, _020FDBA8 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, #2
_020FDB68:
	bl FUN_ov16_020fda74
_020FDB6C:
	b _020FDB98
_020FDB70:
	tst r1, #2
	beq _020FDBA0
	ldr r0, _020FDBA8 ; =gAudioPlayer
	mov r5, #2
	mov r1, #4
	str r5, [r4, #0x1c]
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020fda74
_020FDB98:
	str r6, [r4, #0x18]
	str r6, [r4, #0x14]
_020FDBA0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FDBA8: .word gAudioPlayer
	arm_func_end FUN_ov16_020fda8c

	arm_func_start FUN_ov16_020fdbac
FUN_ov16_020fdbac: ; 0x020FDBAC
	cmp r2, #0x80
	blt _020FDBE4
	cmp r2, #0x98
	bge _020FDBE4
	cmp r1, #0x30
	blt _020FDBD0
	cmp r1, #0x70
	movlt r0, #1
	bxlt lr
_020FDBD0:
	cmp r1, #0x90
	blt _020FDBE4
	cmp r1, #0xd0
	movlt r0, #2
	bxlt lr
_020FDBE4:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020fdbac

	arm_func_start FUN_ov16_020fdbec
FUN_ov16_020fdbec: ; 0x020FDBEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	cmp r2, #4
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x20]
	cmp r1, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldrh r1, [r4, #4]
	cmp r1, #1
	bne _020FDC80
	ldrh r1, [r4, #6]
	cmp r1, #0
	bne _020FDD0C
	ldrb r1, [r5, #8]
	cmp r1, #0
	bne _020FDC60
	mov r1, #1
	strb r1, [r5, #8]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	bl FUN_ov16_020fdbac
	sub r1, r0, #1
	cmp r1, #1
	str r0, [r5, #0x14]
	strls r0, [r5, #0x1c]
_020FDC60:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0xc]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x10]
	bl FUN_ov16_020fdbac
	str r0, [r5, #0x18]
	b _020FDD0C
_020FDC80:
	ldrb r1, [r5, #8]
	cmp r1, #0
	ldrne r4, [r5, #0x14]
	cmpne r4, #0
	beq _020FDCFC
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl FUN_ov16_020fdbac
	cmp r4, r0
	bne _020FDCFC
	ldr r0, [r5, #0x1c]
	cmp r0, r4
	ldrne r0, [r5, #0x14]
	strne r0, [r5, #0x1c]
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	bne _020FDCDC
	ldr r0, _020FDD14 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r5
	mov r1, #1
	b _020FDCF8
_020FDCDC:
	cmp r0, #2
	bne _020FDCFC
	ldr r0, _020FDD14 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r5
	mov r1, #2
_020FDCF8:
	bl FUN_ov16_020fda74
_020FDCFC:
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	strb r0, [r5, #8]
_020FDD0C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FDD14: .word gAudioPlayer
	arm_func_end FUN_ov16_020fdbec

	arm_func_start FUN_ov16_020fdd18
FUN_ov16_020fdd18: ; 0x020FDD18
	ldr r1, _020FDD2C ; =0x020A6C40
	ldr r12, _020FDD30 ; =MIi_CpuClearFast
	mov r0, #0
	mov r2, #0x800
	bx r12
_020FDD2C: .word gMainScreen0
_020FDD30: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_020fdd18

	arm_func_start FUN_ov16_020fdd34
FUN_ov16_020fdd34: ; 0x020FDD34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0xc
	mla r0, r1, r0, r7
	ldr r4, [r0, #0x38]
	mov r6, r2
	mov r5, r3
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x2c]
	ldr r3, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FDDB8
_020FDD6C: ; jump table
	b _020FDD7C ; case 0
	b _020FDD90 ; case 1
	b _020FDDA4 ; case 2
	b _020FDDB8 ; case 3
_020FDD7C:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG0Char
	b _020FDDC8
_020FDD90:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG1Char
	b _020FDDC8
_020FDDA4:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG2Char
	b _020FDDC8
_020FDDB8:
	ldr r1, [r5]
	ldr r2, [r4, #0x18]
	add r0, r4, r3
	bl GX_LoadBG3Char
_020FDDC8:
	ldr r1, [r5]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r5]
	ldr r2, [r7, #0x30]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6]
	mov r0, r4
	add r1, r1, #1
	bl _ZN8Graphics11SetupScreenEPvii
	str r0, [r6]
	ldr r2, [r7, #0x30]
	mov r0, r4
	mov r1, #0
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fdd34

	arm_func_start FUN_ov16_020fde0c
FUN_ov16_020fde0c: ; 0x020FDE0C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FDE5C
_020FDE28: ; jump table
	b _020FDE38 ; case 0
	b _020FDE44 ; case 1
	b _020FDE4C ; case 2
	b _020FDE54 ; case 3
_020FDE38:
	bl G2_GetBG0CharPtr
_020FDE3C:
	mov r5, r0
	b _020FDE64
_020FDE44:
	bl G2_GetBG1CharPtr
	b _020FDE3C
_020FDE4C:
	bl G2_GetBG2CharPtr
	b _020FDE3C
_020FDE54:
	bl G2_GetBG3CharPtr
	b _020FDE3C
_020FDE5C:
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FDE64:
	mov r8, #0
	mov r7, #0x20
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r7
	bl DC_FlushRange
	add r6, sp, #4
	add r5, sp, #0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #1
	str r8, [sp, #4]
	str r7, [sp]
	bl FUN_ov16_020fdd34
	mov r0, r4
	mov r1, #2
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020fdd34
	mov r0, r4
	mov r1, #3
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020fdd34
	mov r0, r4
	mov r2, r6
	mov r3, r5
	mov r1, #4
	bl FUN_ov16_020fdd34
	bl _ZN8Graphics17LoadBGPaletteMainEv
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fde0c

	arm_func_start FUN_ov16_020fdef4
FUN_ov16_020fdef4: ; 0x020FDEF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r3, r12, r0
	ldr r12, [r0, #0x38]
	cmp r12, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r12, #0xc]
	ldr r3, [sp, #0x18]
	add r0, r12, r0
	add r5, r3, r0
	mov r6, #3
	ldr r12, _020FDF80 ; =0x020A6C40
	mov r3, #8
	b _020FDF74
_020FDF2C:
	add r0, r12, r2, lsl #6
	mov lr, r1
	mov r7, r3
	add r4, r0, r1, lsl #1
	b _020FDF64
_020FDF40:
	cmp lr, #0
	blt _020FDF54
	cmp lr, #0x20
	ldrlth r0, [r5]
	strlth r0, [r4]
_020FDF54:
	sub r7, r7, #1
	add lr, lr, #1
	add r5, r5, #2
	add r4, r4, #2
_020FDF64:
	cmp r7, #0
	bgt _020FDF40
	sub r6, r6, #1
	add r2, r2, #1
_020FDF74:
	cmp r6, #0
	bgt _020FDF2C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDF80: .word gMainScreen0
	arm_func_end FUN_ov16_020fdef4

	arm_func_start FUN_ov16_020fdf84
FUN_ov16_020fdf84: ; 0x020FDF84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x1c]
	mov r6, r1
	cmp r0, #1
	moveq r4, #3
	moveq r5, #2
	ldr r0, [r7, #0x20]
	movne r4, #2
	movne r5, #3
	cmp r0, #0
	ble _020FE05C
	sub r0, r0, #1
	str r0, [r7, #0x20]
	cmp r0, #0
	bgt _020FE02C
	ldr r0, [r7, #0x24]
	cmp r0, #1
	beq _020FDFEC
	cmp r0, #2
	moveq r1, #0
	moveq r0, #5
	streq r1, [r7, #0x28]
	streq r0, [r7, #4]
	b _020FE01C
_020FDFEC:
	ldr r0, _020FE0CC ; =gAudioPlayer
	mov r2, #6
	ldr r1, _020FE0D0 ; =0x000005DC
	str r2, [r7, #4]
	bl _ZN11AudioPlayer12FUN_0202c470El
	mov r8, #0x28
	mov r1, r8
	mov r0, #0
	bl _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
	mov r1, r8
	mov r0, #1
	bl _ZN8Graphics15FadeScreenWhiteE12EngineSelectl
_020FE01C:
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020fda74
	b _020FE088
_020FE02C:
	cmp r0, #2
	ble _020FE088
	cmp r0, #5
	bgt _020FE088
	ldr r0, [r7, #0x24]
	cmp r0, #1
	beq _020FE050
	cmp r0, #2
	b _020FE080
_020FE050:
	mov r4, #4
	mov r5, #2
	b _020FE088
_020FE05C:
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	cmp r1, r0
	bne _020FE088
	cmp r1, #1
	moveq r4, #4
	moveq r5, #2
	beq _020FE088
	cmp r1, #2
_020FE080:
	moveq r4, #2
	moveq r5, #4
_020FE088:
	mov r8, #0x10
	mov r12, #0
	mov r0, r7
	mov r2, r8
	mov r3, r4
	add r1, r6, #6
	str r12, [sp]
	bl FUN_ov16_020fdef4
	mov r4, #0x30
	mov r0, r7
	mov r2, r8
	mov r3, r5
	add r1, r6, #0x12
	str r4, [sp]
	bl FUN_ov16_020fdef4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020FE0CC: .word gAudioPlayer
_020FE0D0: .word 0x000005DC
	arm_func_end FUN_ov16_020fdf84

	arm_func_start FUN_ov16_020fe0d4
FUN_ov16_020fe0d4: ; 0x020FE0D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r1
	mov r5, r0
	mov r1, #1
	strb r1, [r5, #0x34]
	beq _020FE0F0
	bl FUN_ov16_020fdd18
_020FE0F0:
	ldr r1, [r5, #0x44]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r1, #0xc]
	cmp r4, #0
	add r6, r1, r0
	addlt r12, r4, #0x20
	movlt lr, #0
	mov r8, #0
	ldr r7, _020FE174 ; =0x020A6C40
	sublt r6, r6, r4, lsl #1
	movge lr, r4
	rsbge r12, r4, #0x20
	mov r3, r8
	b _020FE15C
_020FE12C:
	mov r9, r3
	add r0, r7, lr, lsl #1
	b _020FE148
_020FE138:
	mov r2, r9, lsl #1
	ldrh r1, [r6, r2]
	add r9, r9, #1
	strh r1, [r2, r0]
_020FE148:
	cmp r9, r12
	blt _020FE138
	add lr, lr, #0x20
	add r6, r6, #0x40
	add r8, r8, #1
_020FE15C:
	cmp r8, #0x18
	blt _020FE12C
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fdf84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FE174: .word gMainScreen0
	arm_func_end FUN_ov16_020fe0d4

	arm_func_start FUN_ov16_020fe178
FUN_ov16_020fe178: ; 0x020FE178
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x34]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020FE218 ; =0x020A6C40
	mov r4, #0x800
	mov r6, #0
	mov r0, r5
	mov r1, r4
	strb r6, [r7, #0x34]
	bl DC_FlushRange
	ldr r0, [r7, #0x2c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE1B8: ; jump table
	b _020FE1C8 ; case 0
	b _020FE1DC ; case 1
	b _020FE1F0 ; case 2
	b _020FE204 ; case 3
_020FE1C8:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG0Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE1DC:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG1Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE1F0:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG2Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE204:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl GX_LoadBG3Scr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FE218: .word gMainScreen0
	arm_func_end FUN_ov16_020fe178

	arm_func_start FUN_ov16_020fe21c
FUN_ov16_020fe21c: ; 0x020FE21C
	mov r2, #0
	mov r1, #2
	str r2, [r0, #0x28]
	strb r2, [r0, #8]
	str r2, [r0, #0x18]
	str r2, [r0, #0x14]
	str r1, [r0, #0x1c]
	bx lr
	arm_func_end FUN_ov16_020fe21c

	arm_func_start FUN_ov16_020fe23c
FUN_ov16_020fe23c: ; 0x020FE23C
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x3c
	mov r5, r0
	mov r4, #0
	sub r1, r2, #0x3d
	str r4, [r5, #4]
	strb r2, [r5, #0x36]
	str r1, [r5, #0x2c]
	str r4, [r5, #0x30]
	bl FUN_ov16_020fe21c
	mov r0, r5
	mov r1, r4
	strb r4, [r5, #0x35]
	strb r4, [r5, #0x34]
	bl FUN_ov16_020fda74
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fe23c

	arm_func_start FUN_ov16_020fe27c
FUN_ov16_020fe27c: ; 0x020FE27C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	cmp r1, #0
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	movlt r0, r5
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020FE3B8
_020FE2CC: ; jump table
	b _020FE3B8 ; case 0
	b _020FE2EC ; case 1
	b _020FE3B8 ; case 2
	b _020FE310 ; case 3
	b _020FE34C ; case 4
	b _020FE358 ; case 5
	b _020FE388 ; case 6
	b _020FE3AC ; case 7
_020FE2EC:
	mov r0, r4
	bl FUN_ov16_020fda38
	cmp r0, #0
	beq _020FE3B8
	mov r0, r4
	bl FUN_ov16_020fd9e4
	mov r0, #2
_020FE308:
	str r0, [r4, #4]
	b _020FE3B8
_020FE310:
	ldr r0, _020FE3CC ; =gDeltaTime
	ldr r1, [r4, #0x28]
	ldr r0, [r0]
	add r1, r1, r0, lsl #2
	str r1, [r4, #0x28]
	cmp r1, #0x20
	mov r0, r4
	blt _020FE340
	mov r1, r5
	bl FUN_ov16_020fe0d4
	mov r0, #4
	b _020FE308
_020FE340:
	sub r1, r1, #0x20
_020FE344:
	bl FUN_ov16_020fe0d4
	b _020FE3B8
_020FE34C:
	mov r0, r4
	mov r1, r5
	b _020FE344
_020FE358:
	ldr r0, _020FE3CC ; =gDeltaTime
	ldr r2, [r4, #0x28]
	ldr r1, [r0]
	mov r0, r4
	add r1, r2, r1, lsl #2
	str r1, [r4, #0x28]
	bl FUN_ov16_020fe0d4
	ldr r0, [r4, #0x28]
	cmp r0, #0x20
	movgt r0, #7
	strgt r0, [r4, #4]
	b _020FE3B8
_020FE388:
	ldrb r0, [r4, #0x36]
	sub r0, r0, #1
	strb r0, [r4, #0x36]
	tst r0, #0xff
	bne _020FE3B8
	mov r0, #0x11
	mov r1, #1
	bl FUN_ov16_020f2604
	b _020FE3B8
_020FE3AC:
	mov r0, r4
	bl FUN_ov16_020fda4c
	str r5, [r4, #4]
_020FE3B8:
	ldrb r0, [r4, #0x35]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020FE3CC: .word gDeltaTime
	arm_func_end FUN_ov16_020fe27c

	arm_func_start FUN_ov16_020fe3d0
FUN_ov16_020fe3d0: ; 0x020FE3D0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fe3d0

	arm_func_start FUN_ov16_020fe3e4
FUN_ov16_020fe3e4: ; 0x020FE3E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	cmp r1, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x2c]
	cmp r1, #0
	movlt r0, r4
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020FE474
_020FE434: ; jump table
	b _020FE474 ; case 0
	b _020FE474 ; case 1
	b _020FE454 ; case 2
	b _020FE46C ; case 3
	b _020FE46C ; case 4
	b _020FE46C ; case 5
	b _020FE474 ; case 6
	b _020FE46C ; case 7
_020FE454:
	mov r0, r5
	bl FUN_ov16_020fde0c
	mov r0, #3
	str r4, [r5, #0x28]
	str r0, [r5, #4]
	b _020FE474
_020FE46C:
	mov r0, r5
	bl FUN_ov16_020fe178
_020FE474:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fe3e4

	arm_func_start FUN_ov16_020fe47c
FUN_ov16_020fe47c: ; 0x020FE47C
	stmfd sp!, {r4, lr}
	mov r4, r0
	strb r1, [r4, #0x35]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	movlt r0, #0
	ldmltfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020fe21c
	mov r0, r4
	bl FUN_ov16_020fd9b0
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe47c

	arm_func_start FUN_ov16_020fe4c8
FUN_ov16_020fe4c8: ; 0x020FE4C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fe4c8

	arm_func_start FUN_ov16_020fe4dc
FUN_ov16_020fe4dc: ; 0x020FE4DC
	str r1, [r0, #0x30]
	bx lr
	arm_func_end FUN_ov16_020fe4dc

	arm_func_start FUN_ov16_020fe4e4
FUN_ov16_020fe4e4: ; 0x020FE4E4
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_ov16_020fe4e4

	arm_func_start FUN_ov16_020fe4ec
FUN_ov16_020fe4ec: ; 0x020FE4EC
	bx lr
	arm_func_end FUN_ov16_020fe4ec

	arm_func_start FUN_ov16_020fe4f0
FUN_ov16_020fe4f0: ; 0x020FE4F0
	bx lr
	arm_func_end FUN_ov16_020fe4f0

	.rodata
	.global ov16_02117964
ov16_02117964:
	.word ov16_02118944
	.word 1
	.word ov16_02118960
	.word 2
	.word ov16_02118970
	.word 3
	.word ov16_02118950
	.word 4
	.word 0
	.word 0

	.section .init, 4
	arm_func_start __sinit_CQuitMenuManager.cpp
__sinit_CQuitMenuManager.cpp: ; 0x02118060
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021180A8 ; =0x0211892C
	str r0, [r4, #8]
	ldr r0, _021180AC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _021180B0 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021180A8: .word ov16_0211892C
_021180AC: .word 0x00009CCD
_021180B0: .word 0x0000EA3C
	arm_func_end __sinit_CQuitMenuManager.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CQuitMenuManager.cpp

	.data
	.global ov16_0211892C
ov16_0211892C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02118944
ov16_02118944:
	.asciz "padn_01.pac"
	.balign 4, 0
	.global ov16_02118950
ov16_02118950:
	.asciz "padn_b02.pac"
	.balign 4, 0
	.global ov16_02118960
ov16_02118960:
	.asciz "padn_b00.pac"
	.balign 4, 0
	.global ov16_02118970
ov16_02118970:
	.asciz "padn_b01.pac"
	.balign 4, 0

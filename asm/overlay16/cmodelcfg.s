
.public MIi_CpuClearFast
.public FUN_ov16_020fd21c
.public gNsbResourceMan
.public FUN_ov16_020fcd08
.public FUN_ov16_020fd120
.public FUN_ov16_020fd350
.public FUN_ov16_020fd278
.public _ZN16CSceneScriptData8initFileEPvPKc
.public _ZN16CSceneScriptData18getInstructionByIDEl
.public strcmp
.public _ZN16CSceneScriptDataD1Ev
.public _ZdlPv
.public FX_Sqrt
.public FUN_020525e8

	.include "/macros/function.inc"
	.text
	arm_func_start FUN_ov16_020fadb8
FUN_ov16_020fadb8: ; 0x020FADB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0x20
	mov r1, r5
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	sub r0, r4, #0x21
	str r0, [r5, #8]
	str r0, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fadb8

	arm_func_start FUN_ov16_020fade4
FUN_ov16_020fade4: ; 0x020FADE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x24
	str r1, [r4, #4]
	str r1, [r4, #8]
	bl FUN_ov16_020fadb8
	mov r0, r4
	bl FUN_ov16_020fb2cc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fade4

	arm_func_start FUN_ov16_020fae0c
FUN_ov16_020fae0c: ; 0x020FAE0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0xc]
	mov r5, r0
	cmp r1, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _020FAE50 ; =gNsbResourceMan
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FAE50: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fae0c

	arm_func_start FUN_ov16_020fae54
FUN_ov16_020fae54: ; 0x020FAE54
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fae54

	arm_func_start FUN_ov16_020fae6c
FUN_ov16_020fae6c: ; 0x020FAE6C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r3, [r0]
	mov r8, r0
	ldr r3, [r3, #0x20]
	mov r7, r1
	mov r6, r2
	blx r3
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r4, #1
	ldr r0, _020FAED4 ; =gNsbResourceMan
	str r4, [sp, #0xc]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r6
	mov r2, #2
	bl FUN_ov16_020fcd08
	str r0, [r8, #4]
	cmp r0, #0
	moveq r0, r5
	movne r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FAED4: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fae6c

	arm_func_start FUN_ov16_020faed8
FUN_ov16_020faed8: ; 0x020FAED8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, [r0]
	mov r6, r0
	ldr r3, [r3, #0x20]
	mov r5, r1
	mov r4, r2
	blx r3
	ldr r0, _020FAF20 ; =gNsbResourceMan
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	mov r3, #2
	bl FUN_ov16_020fd120
	str r0, [r6, #4]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FAF20: .word gNsbResourceMan
	arm_func_end FUN_ov16_020faed8

	arm_func_start FUN_ov16_020faf24
FUN_ov16_020faf24: ; 0x020FAF24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020FAF44
	ldr r0, _020FAF58 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FAF44:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	ldmfd sp!, {r4, pc}
_020FAF58: .word gNsbResourceMan
	arm_func_end FUN_ov16_020faf24

	arm_func_start FUN_ov16_020faf5c
FUN_ov16_020faf5c: ; 0x020FAF5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020fb050
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020fafb0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020faf5c

	arm_func_start FUN_ov16_020faf80
FUN_ov16_020faf80: ; 0x020FAF80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020fb110
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fb050
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020fafb0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020faf80

	arm_func_start FUN_ov16_020fafb0
FUN_ov16_020fafb0: ; 0x020FAFB0
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _020FAFCC
	bl FUN_ov16_020fb018
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020FAFCC:
	str r2, [r4, #0x2c]
	ldr r12, [r1, #0xc]
	mov r2, #0
	str r12, [r4, #0x24]
	str r12, [r4, #0x30]
	ldr r3, [r1, #0x10]
	str r3, [r4, #0x34]
	ldr r3, [r1, #0x14]
	str r3, [r4, #0x38]
	ldr r3, [r1, #0x14]
	mov r1, r12
	str r3, [r4, #0x3c]
	strb r2, [r4, #0x40]
	strb r2, [r4, #0x41]
	bl FUN_ov16_020fb024
	mov r0, r4
	bl FUN_ov16_020fb2cc
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fafb0

	arm_func_start FUN_ov16_020fb018
FUN_ov16_020fb018: ; 0x020FB018
	ldr r1, [r0, #0x3c]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_ov16_020fb018

	arm_func_start FUN_ov16_020fb024
FUN_ov16_020fb024: ; 0x020FB024
	str r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_ov16_020fb024

	arm_func_start FUN_ov16_020fb02c
FUN_ov16_020fb02c: ; 0x020FB02C
	ldrb r0, [r0, #0x40]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fb02c

	arm_func_start FUN_ov16_020fb040
FUN_ov16_020fb040: ; 0x020FB040
	strb r1, [r0, #0x41]
	bx lr
	arm_func_end FUN_ov16_020fb040

	arm_func_start FUN_ov16_020fb048
FUN_ov16_020fb048: ; 0x020FB048
	ldrb r0, [r0, #0x41]
	bx lr
	arm_func_end FUN_ov16_020fb048

	arm_func_start FUN_ov16_020fb050
FUN_ov16_020fb050: ; 0x020FB050
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	ldr r1, [r6, #4]
	cmp r1, #0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	moveq r5, #0
	beq _020FB0BC
	ldr r0, [r6, #8]
	cmp r0, #0
	movne r5, #1
	bne _020FB0BC
	ldr r0, _020FB10C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	mov r5, #0
	bne _020FB0BC
	ldr r0, [r6, #4]
	mov r2, r5
	ldr r1, [r0, #4]
	add r0, r6, #0xc
	bl _ZN16CSceneScriptData8initFileEPvPKc
	cmp r0, #0
	movne r5, #1
	strne r5, [r6, #8]
_020FB0BC:
	cmp r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r6, #0xc
	mov r1, #0x3e8
	bl _ZN16CSceneScriptData18getInstructionByIDEl
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0
	blt _020FB0F4
	ldr r1, [r0, #8]
	cmp r4, r1
	blt _020FB0FC
_020FB0F4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020FB0FC:
	add r1, r0, #0xc
	mov r0, #0x18
	mla r0, r4, r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_020FB10C: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fb050

	arm_func_start FUN_ov16_020fb110
FUN_ov16_020fb110: ; 0x020FB110
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #4]
	cmp r1, #0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	moveq r5, #0
	beq _020FB184
	ldr r0, [r6, #8]
	cmp r0, #0
	movne r5, #1
	bne _020FB184
	ldr r0, _020FB1E8 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	mov r5, #0
	bne _020FB184
	ldr r0, [r6, #4]
	mov r2, r5
	ldr r1, [r0, #4]
	add r0, r6, #0xc
	bl _ZN16CSceneScriptData8initFileEPvPKc
	cmp r0, #0
	movne r5, #1
	strne r5, [r6, #8]
_020FB184:
	cmp r5, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0xc
	mov r1, #0x3e8
	bl _ZN16CSceneScriptData18getInstructionByIDEl
	movs r5, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r5, #0xc
	mov r7, #0
	b _020FB1D4
_020FB1B4:
	ldr r0, [r6, #8]
	mov r1, r4
	bl strcmp
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r7, r7, #1
	add r6, r6, #0x18
_020FB1D4:
	ldr r0, [r5, #8]
	cmp r7, r0
	blt _020FB1B4
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB1E8: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fb110

	arm_func_start FUN_ov16_020fb1ec
FUN_ov16_020fb1ec: ; 0x020FB1EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0x38]
	cmp r1, #0
	ldrlt r0, [r4, #0x34]
	mul r2, r1, r2
	strlt r0, [r4, #0x24]
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x34]
	add r1, r1, r2
	str r1, [r4, #0x24]
	cmp r1, r3
	blt _020FB2A4
	ldrb r1, [r4, #0x41]
	mov r5, #1
	strb r5, [r4, #0x40]
	cmp r1, #0
	beq _020FB244
	cmp r1, #1
	beq _020FB298
	b _020FB2A0
_020FB244:
	ldr r1, [r4, #0x28]
	sub r2, r5, #2
	cmp r1, r2
	streq r3, [r4, #0x24]
	beq _020FB2A4
	ldr r2, [r4, #0x2c]
	cmp r1, r2
	streqb r5, [r4, #0x40]
	streqb r5, [r4, #0x41]
	streq r3, [r4, #0x24]
	beq _020FB2A4
	bl FUN_ov16_020faf5c
	cmp r0, #0
	bne _020FB2A4
	ldr r0, [r4, #0x34]
	sub r2, r5, #2
	mov r1, #2
	str r2, [r4, #0x28]
	strb r1, [r4, #0x41]
_020FB290:
	str r0, [r4, #0x24]
	b _020FB2A4
_020FB298:
	ldr r0, [r4, #0x30]
	b _020FB290
_020FB2A0:
	str r3, [r4, #0x24]
_020FB2A4:
	ldr r0, [r4, #0x24]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fb1ec

	arm_func_start FUN_ov16_020fb2ac
FUN_ov16_020fb2ac: ; 0x020FB2AC
	ldr r1, _020FB2C4 ; =gNsbResourceMan
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #4]
	ldr r12, _020FB2C8 ; =FUN_ov16_020fd278
	bx r12
_020FB2C4: .word gNsbResourceMan
_020FB2C8: .word FUN_ov16_020fd278
	arm_func_end FUN_ov16_020fb2ac

	arm_func_start FUN_ov16_020fb2cc
FUN_ov16_020fb2cc: ; 0x020FB2CC
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x8c]
	str r1, [r0, #0xd0]
	str r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov16_020fb2cc

	arm_func_start FUN_ov16_020fb2e4
FUN_ov16_020fb2e4: ; 0x020FB2E4
	stmfd sp!, {r4, lr}
	ldr r1, _020FB318 ; =0x02118880
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r4, #0xc
	bl _ZN16CSceneScriptDataD1Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020FB318: .word ov16_02118880
	arm_func_end FUN_ov16_020fb2e4

	arm_func_start FUN_ov16_020fb31c
FUN_ov16_020fb31c: ; 0x020FB31C
	stmfd sp!, {r3, lr}
	ldr r3, [r0]
	mov r2, #1
	ldr r3, [r3, #0x14]
	blx r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fb31c

	.section .init, 4
	arm_func_start __sinit_CModelCfg.cpp
__sinit_CModelCfg.cpp: ; 0x02117F14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117F5C ; =0x02118860
	str r0, [r4, #0x14]
	ldr r0, _02117F60 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117F64 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117F5C: .word ov16_02118860
_02117F60: .word 0x00009CCD
_02117F64: .word 0x0000EA3C
	arm_func_end __sinit_CModelCfg.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CModelCfg.cpp

    .data
	.global ov16_02118860
ov16_02118860:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118880
ov16_02118880:
	.word FUN_020525e8
	.word FUN_ov16_020fb2e4
	.word FUN_ov16_020fade4
	.word FUN_ov16_020fae0c
	.word FUN_ov16_020fae54
	.word FUN_ov16_020fae6c
	.word FUN_ov16_020fb31c
	.word FUN_ov16_020faed8
	.word FUN_ov16_020faf24
	.word FUN_ov16_020fb1ec

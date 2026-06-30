
	.include "/macros/function.inc"
	.include "/include/ov16_020efa04.inc"

	.text
	arm_func_start FUN_ov16_020efa04
FUN_ov16_020efa04: ; 0x020EFA04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020EFA44 ; =0x0209A11C
	mov r7, r0
	ldr r0, [r4]
	cmp r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020EFA48 ; =gLogicThink
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_0207420c
	mov r0, r6
	mov r1, r5
	str r7, [r4]
	bl FUN_020740a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EFA44: .word unk_0209A11C
_020EFA48: .word gLogicThink
	arm_func_end FUN_ov16_020efa04

	arm_func_start FUN_ov16_020efa4c
FUN_ov16_020efa4c: ; 0x020EFA4C
	stmfd sp!, {r4, lr}
	ldr r4, _020EFA78 ; =gUnitMan
	mov r1, #0x64
	mov r0, r4
	bl FUN_0206c158
	mov r0, r4
	bl FUN_ov16_020efa04
	ldr r0, _020EFA7C ; =0x0209A11C
	ldr r0, [r0]
	bl FUN_0206c62c
	ldmfd sp!, {r4, pc}
_020EFA78: .word gUnitMan
_020EFA7C: .word unk_0209A11C
	arm_func_end FUN_ov16_020efa4c

	arm_func_start FUN_ov16_020efa80
FUN_ov16_020efa80: ; 0x020EFA80
	ldr r2, _020EFA94 ; =0x0209A11C
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _020EFA98 ; =FUN_0206c6fc
	bx r12
_020EFA94: .word unk_0209A11C
_020EFA98: .word FUN_0206c6fc
	arm_func_end FUN_ov16_020efa80

	arm_func_start FUN_ov16_020efa9c
FUN_ov16_020efa9c: ; 0x020EFA9C
	ldr r2, _020EFAB4 ; =0x0209A11C
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	ldr r12, _020EFAB8 ; =FUN_0206c718
	mov r1, r1, lsr #0x10
	bx r12
_020EFAB4: .word unk_0209A11C
_020EFAB8: .word FUN_0206c718
	arm_func_end FUN_ov16_020efa9c

	arm_func_start FUN_ov16_020efabc
FUN_ov16_020efabc: ; 0x020EFABC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _020EFB40 ; =0x0209A11C
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, #0
_020EFAD4:
	ldr r0, [r4]
	mov r1, r6
	bl FUN_0206c6fc
	movs r5, r0
	beq _020EFB2C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020EFB2C
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	beq _020EFB2C
	mov r0, r5
	bl FUN_0206d5f0
	cmp r9, r0
	bne _020EFB2C
	mov r0, r5
	mov r1, r7
	bl FUN_0206d824
	cmp r8, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020EFB2C:
	add r6, r6, #1
	cmp r6, #0x64
	blt _020EFAD4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020EFB40: .word unk_0209A11C
	arm_func_end FUN_ov16_020efabc

	arm_func_start FUN_ov16_020efb44
FUN_ov16_020efb44: ; 0x020EFB44
	stmfd sp!, {r4, lr}
	cmp r2, #0
	movne r2, #1
	mov r4, #0
	moveq r2, #0
	mov r3, r4
	bl FUN_ov16_020efb6c
	mov r1, r4
	bl FUN_ov16_020efa9c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020efb44

	arm_func_start FUN_ov16_020efb6c
FUN_ov16_020efb6c: ; 0x020EFB6C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r8, r7
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _020EFBD4
_020EFB90: ; jump table
	b _020EFBD4 ; case 0
	b _020EFBA0 ; case 1
	b _020EFBB4 ; case 2
	b _020EFBC8 ; case 3
_020EFBA0:
	ldr r0, _020EFC64 ; =gLogicThink
	mov r1, r6
_020EFBA8:
	bl FUN_0205107c
	mov r7, r0
	b _020EFC28
_020EFBB4:
	ldr r0, _020EFC64 ; =gLogicThink
	mov r1, r6
	bl FUN_0205106c
	mov r8, r0
	b _020EFC28
_020EFBC8:
	ldr r0, _020EFC64 ; =gLogicThink
	mov r1, #2
	b _020EFBA8
_020EFBD4:
	ldr r7, _020EFC64 ; =gLogicThink
	mov r0, r7
	bl FUN_020731b4
	cmp r0, #0
	movne r3, #2
	bne _020EFC14
	mov r0, r7
	bl FUN_020731d0
	cmp r0, #0
	beq _020EFC10
	ldr r0, _020EFC68 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	moveq r3, #3
	beq _020EFC14
_020EFC10:
	mov r3, #1
_020EFC14:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020efb6c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EFC28:
	cmp r8, #0
	beq _020EFC40
	mov r0, r8
	mov r1, r5
	bl FUN_0204fed8
	b _020EFC4C
_020EFC40:
	mov r0, r7
	sub r1, r5, #1
	bl FUN_0204fbe8
_020EFC4C:
	cmp r4, #0
	ldrne r1, _020EFC6C ; =0x00000FFF
	andne r0, r0, r1
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020EFC64: .word gLogicThink
_020EFC68: .word unk_020A0640
_020EFC6C: .word 0x00000FFF
	arm_func_end FUN_ov16_020efb6c

	arm_func_start FUN_ov16_020efc70
FUN_ov16_020efc70: ; 0x020EFC70
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	cmpne r5, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r2, #0x68
	bl MI_CpuCopy8
	add r0, r6, #0x6c
	add r1, r5, #0x6c
	mov r2, #0x18
	bl MI_CpuCopy8
	cmp r4, #0
	beq _020EFD20
	ldr r0, [r6, #0x84]
	cmp r0, #0
	ldrne r1, [r5, #0x84]
	cmpne r1, #0
	beq _020EFCC4
	mov r2, #0x20
	bl MI_CpuCopy8
_020EFCC4:
	ldr r0, [r6, #0x88]
	cmp r0, #0
	ldrne r1, [r5, #0x88]
	cmpne r1, #0
	beq _020EFCE0
	mov r2, #0x90
	bl MI_CpuCopy8
_020EFCE0:
	mov r0, r6
	bl FUN_0206dcdc
	cmp r0, #0
	bne _020EFD20
	mov r0, r5
	bl FUN_0206dcdc
	cmp r0, #0
	bne _020EFD20
	mov r0, r5
	bl FUN_0206dcd4
	mov r4, r0
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r4
	bl FUN_0206ed40
_020EFD20:
	ldrh r0, [r6, #0x8e]
	strh r0, [r5, #0x8e]
	ldrb r0, [r6, #0x8c]
	strb r0, [r5, #0x8c]
	ldrsh r0, [r6, #0x94]
	strh r0, [r5, #0x94]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020efc70

	arm_func_start FUN_ov16_020efd3c
FUN_ov16_020efd3c: ; 0x020EFD3C
	add r0, r0, #0xff
	add r0, r0, #0xf00
	mov r0, r0, asr #0xd
	add r0, r0, #2
	and r0, r0, #7
	bx lr
	arm_func_end FUN_ov16_020efd3c

	arm_func_start FUN_ov16_020efd54
FUN_ov16_020efd54: ; 0x020EFD54
	mov r0, r0, lsl #0xd
	add r0, r0, #0xc000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_ov16_020efd54

	arm_func_start FUN_ov16_020efd68
FUN_ov16_020efd68: ; 0x020EFD68
	adds r2, r0, r2
	bmi _020EFD8C
	cmp r0, #0x100
	bge _020EFD8C
	adds r0, r1, r3
	bmi _020EFD8C
	cmp r1, #0xc0
	movlt r0, #1
	bxlt lr
_020EFD8C:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_020efd68

	arm_func_start FUN_ov16_020efd94
FUN_ov16_020efd94: ; 0x020EFD94
	stmfd sp!, {r4, r5, r6, lr}
	ldr r12, _020EFE28 ; =0x0209A12C
	mov r4, r1
	ldr r1, [r12]
	mov r6, r2
	add r0, r0, r1
	cmp r0, #0
	mov r5, r3
	mov r0, r0, lsl #0xc
	ble _020EFDD0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFDDC
_020EFDD0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFDDC:
	bl _ffix
	ldr r1, _020EFE2C ; =0x0209A140
	str r0, [r6]
	ldr r0, [r1]
	add r0, r4, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFE10
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFE1C
_020EFE10:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFE1C:
	bl _ffix
	str r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_020EFE28: .word unk_0209A12C
_020EFE2C: .word unk_0209A140
	arm_func_end FUN_ov16_020efd94

	arm_func_start FUN_ov16_020efe30
FUN_ov16_020efe30: ; 0x020EFE30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020EFEE0 ; =0x0209A12C
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mov r4, r3
	mov r0, r0, lsl #0xc
	ble _020EFE6C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFE78
_020EFE6C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFE78:
	bl _ffix
	sub r1, r7, r0
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
	ldr r0, _020EFEE4 ; =0x0209A140
	str r1, [r5]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFEB8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFEC4
_020EFEB8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFEC4:
	bl _ffix
	sub r1, r6, r0
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020EFEE0: .word unk_0209A12C
_020EFEE4: .word unk_0209A140
	arm_func_end FUN_ov16_020efe30

	arm_func_start FUN_ov16_020efee8
FUN_ov16_020efee8: ; 0x020EFEE8
	stmfd sp!, {r3, lr}
	ldr lr, _020EFF10 ; =0x0209A12C
	ldr r12, _020EFF14 ; =0x0209A140
	ldr lr, [lr]
	sub r0, r0, lr
	str r0, [r2]
	ldr r0, [r12]
	sub r0, r1, r0
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_020EFF10: .word unk_0209A12C
_020EFF14: .word unk_0209A140
	arm_func_end FUN_ov16_020efee8

	arm_func_start FUN_ov16_020eff18
FUN_ov16_020eff18: ; 0x020EFF18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	movs r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	bne _020EFF7C
	ldr r0, _020F00D0 ; =0x0208F6F0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFF5C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFF68
_020EFF5C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFF68:
	bl _ffix
	mov r1, #0x64000
	bl FX_Div
	add r5, sp, #4
	str r0, [sp, #4]
_020EFF7C:
	cmp r4, #0
	bne _020EFFCC
	ldr r0, _020F00D0 ; =0x0208F6F0
	ldr r0, [r0, #0x34]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFFAC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020EFFB8
_020EFFAC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020EFFB8:
	bl _ffix
	mov r1, #0x64000
	bl FX_Div
	add r4, sp, #0
	str r0, [sp]
_020EFFCC:
	ldr r0, _020F00D4 ; =0x0209A720
	ldrsh r0, [r0, #0xa8]
	mov r0, r0, asr #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020EFFF8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F0004
_020EFFF8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F0004:
	bl _ffix
	ldr r1, _020F00D0 ; =0x0208F6F0
	ldr r2, [r7]
	ldr r1, [r1, #0x28]
	sub r0, r2, r0
	mul r0, r1, r0
	ldr r8, _020F00D4 ; =0x0209A720
	ldrsh r1, [r8, #0xac]
	bl _s32_div_f
	mov r1, #0
	stmia r6, {r0, r1}
	ldrsh r0, [r8, #0xaa]
	mov r0, r0, asr #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020F0058
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F0064
_020F0058:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F0064:
	bl _ffix
	ldr r2, _020F00D0 ; =0x0208F6F0
	ldr r3, [r7, #4]
	ldr r1, _020F00D4 ; =0x0209A720
	ldr r2, [r2, #0x2c]
	sub r0, r3, r0
	mul r0, r2, r0
	ldrsh r1, [r1, #0xae]
	bl _s32_div_f
	str r0, [r6, #8]
	ldr r1, [r5]
	ldr r3, [r6]
	smull r2, r1, r3, r1
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r6]
	ldr r1, [r4]
	smull r2, r1, r0, r1
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r6, #8]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F00D0: .word unk_0208F6F0
_020F00D4: .word unk_0209A720
	arm_func_end FUN_ov16_020eff18

	arm_func_start FUN_ov16_020f00d8
FUN_ov16_020f00d8: ; 0x020F00D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _020F0234 ; =0x0209A11C
	mov r6, r0
	mov r5, r1
	mov r4, #0
_020F00EC:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_0206c6fc
	movs r8, r0
	beq _020F017C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020F017C
	mov r0, r8
	bl FUN_0206d660
	cmp r0, #0
	beq _020F017C
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _020F017C
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	beq _020F017C
	ldr r2, [r8, #0x84]
	ldr r1, [r2]
	sub r0, r1, #0x10000
	cmp r6, r0
	blt _020F017C
	add r0, r1, #0x10000
	cmp r6, r0
	bge _020F017C
	ldr r1, [r2, #4]
	sub r0, r1, #0x28000
	cmp r5, r0
	ble _020F017C
	add r0, r1, #0x4000
	cmp r5, r0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
_020F017C:
	add r4, r4, #1
	cmp r4, #0x64
	blt _020F00EC
	ldr r7, _020F0234 ; =0x0209A11C
	mov r4, #0
_020F0190:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_0206c6fc
	movs r8, r0
	beq _020F0220
	bl FUN_0206d64c
	cmp r0, #0
	beq _020F0220
	mov r0, r8
	bl FUN_0206d660
	cmp r0, #0
	beq _020F0220
	mov r0, r8
	bl FUN_0206d688
	cmp r0, #0
	beq _020F0220
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	bne _020F0220
	ldr r2, [r8, #0x84]
	ldr r1, [r2]
	sub r0, r1, #0x10000
	cmp r6, r0
	blt _020F0220
	add r0, r1, #0x10000
	cmp r6, r0
	bge _020F0220
	ldr r1, [r2, #4]
	sub r0, r1, #0x28000
	cmp r5, r0
	ble _020F0220
	add r0, r1, #0x4000
	cmp r5, r0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
_020F0220:
	add r4, r4, #1
	cmp r4, #0x64
	blt _020F0190
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F0234: .word unk_0209A11C
	arm_func_end FUN_ov16_020f00d8

	arm_func_start FUN_ov16_020f0238
FUN_ov16_020f0238: ; 0x020F0238
	mov r2, r0, lsr #0x1f
	rsb r0, r2, r0, lsl #29
	add r0, r2, r0, ror #29
	mov r0, r0, lsl #0x1d
	mov r2, #0
	mov r0, r0, lsr #0x10
	str r2, [r1]
	stmib r1, {r0, r2}
	bx lr
	arm_func_end FUN_ov16_020f0238

	arm_func_start FUN_ov16_020f025c
FUN_ov16_020f025c: ; 0x020F025C
	ldr r12, [r0]
	cmp r12, #0x80000000
	ldrne r2, [r1]
	cmpne r2, #0x80000000
	bxeq lr
	ldr r2, _020F0294 ; =0x0209A720
	ldr r3, [r2, #0xd4]
	rsb r3, r12, r3, lsl #1
	str r3, [r0]
	ldr r2, [r2, #0xd8]
	ldr r0, [r1]
	rsb r0, r0, r2, lsl #1
	str r0, [r1]
	bx lr
_020F0294: .word unk_0209A720
	arm_func_end FUN_ov16_020f025c

	arm_func_start FUN_ov16_020f0298
FUN_ov16_020f0298: ; 0x020F0298
	ldr r12, [r0]
	cmp r12, #0x80000000
	ldrne r3, [r0, #4]
	cmpne r3, #0x80000000
	bxeq lr
	ldr r1, _020F02CC ; =0x0209A720
	ldr r2, [r1, #0xd4]
	rsb r2, r12, r2, lsl #1
	str r2, [r0]
	ldr r1, [r1, #0xd8]
	rsb r1, r3, r1, lsl #1
	str r1, [r0, #4]
	bx lr
_020F02CC: .word unk_0209A720
	arm_func_end FUN_ov16_020f0298

	arm_func_start FUN_ov16_020f02d0
FUN_ov16_020f02d0: ; 0x020F02D0
	stmfd sp!, {r3, lr}
	mov r12, r1
	mov lr, r0
	mov r3, r2
	mov r2, r12
	ldmia lr, {r0, r1}
	bl FUN_ov16_020f02f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f02d0

	arm_func_start FUN_ov16_020f02f0
FUN_ov16_020f02f0: ; 0x020F02F0
	stmfd sp!, {r3, lr}
	cmp r0, #0x80000000
	cmpne r1, #0x80000000
	moveq r0, #0x400
	rsbeq r0, r0, #0
	streq r0, [r2]
	streq r0, [r3]
	ldmeqfd sp!, {r3, pc}
	mov r12, r0, asr #0xb
	add r0, r0, r12, lsr #20
	ldr r12, _020F0364 ; =0xFFFFFC01
	mov lr, r1, asr #0xb
	add r1, r1, lr, lsr #20
	cmp r12, r0, asr #12
	mov lr, r0, asr #0xc
	ldr r0, _020F0368 ; =0x000003FF
	movgt lr, r12
	cmp lr, r0
	movgt lr, r0
	ldr r0, _020F0364 ; =0xFFFFFC01
	mov r1, r1, asr #0xc
	cmp r1, r0
	movlt r1, r0
	ldr r0, _020F0368 ; =0x000003FF
	str lr, [r2]
	cmp r1, r0
	movgt r1, r0
	str r1, [r3]
	ldmfd sp!, {r3, pc}
_020F0364: .word 0xFFFFFC01
_020F0368: .word 0x000003FF
	arm_func_end FUN_ov16_020f02f0

	arm_func_start FUN_ov16_020f036c
FUN_ov16_020f036c: ; 0x020F036C
	ldr r12, [sp]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020F03F4
_020F037C: ; jump table
	b _020F03F4 ; case 0
	b _020F0394 ; case 1
	b _020F03A8 ; case 2
	b _020F03BC ; case 3
	b _020F03D0 ; case 4
	b _020F03E4 ; case 5
_020F0394:
	cmp r2, r12
	cmpeq r1, r3
	beq _020F03F4
	mov r0, #0
	bx lr
_020F03A8:
	cmp r2, r12
	cmpeq r1, r3
	blo _020F03F4
	mov r0, #0
	bx lr
_020F03BC:
	cmp r2, r12
	cmpeq r1, r3
	bls _020F03F4
	mov r0, #0
	bx lr
_020F03D0:
	cmp r2, r12
	cmpeq r1, r3
	bhs _020F03F4
	mov r0, #0
	bx lr
_020F03E4:
	cmp r2, r12
	cmpeq r1, r3
	movls r0, #0
	bxls lr
_020F03F4:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov16_020f036c

	arm_func_start FUN_ov16_020f03fc
FUN_ov16_020f03fc: ; 0x020F03FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r3, [sp, #0x34]
	mov r9, r0
	movs r0, r3
	str r3, [sp, #0x34]
	cmpne r9, #0
	mov r8, r1
	mov r7, r2
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, #0x64
	umull r1, r0, r7, r2
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	mov r4, #0
	ldr r0, [sp, #0x34]
	umull r5, r11, r3, r2
	str r1, [sp, #4]
	strb r4, [r0]
	mov r6, r4
_020F0450:
	ldrb r0, [r9, #0x1b]
	cmp r0, #0
	beq _020F04A0
	cmp r8, #0
	ldreqb r3, [r9, #0x1a]
	moveq r1, #0
	moveq r2, r1
	moveq r10, r3, asr #0x1f
	beq _020F0490
	ldrb lr, [r9, #0x1a]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	mov r12, lr, asr #0x1f
	umull r3, r10, r8, lr
	mla r10, r8, r12, r10
	mla r10, r6, lr, r10
_020F0490:
	str r10, [sp]
	bl FUN_ov16_020f036c
	cmp r0, #0
	beq _020F0534
_020F04A0:
	ldrb r0, [r9, #0x1d]
	cmp r0, #0
	beq _020F04CC
	ldrb r3, [r9, #0x1c]
	mov r1, r8
	mov r2, r6
	mov r10, r3, asr #0x1f
	str r10, [sp]
	bl FUN_ov16_020f036c
	cmp r0, #0
	beq _020F0534
_020F04CC:
	ldrb r0, [r9, #0x1f]
	cmp r0, #0
	beq _020F051C
	cmp r7, #0
	ldreqb r3, [r9, #0x1e]
	moveq r1, #0
	moveq r2, r1
	moveq r10, r3, asr #0x1f
	beq _020F050C
	ldrb lr, [r9, #0x1e]
	mov r1, r5
	mov r2, r11
	mov r12, lr, asr #0x1f
	umull r3, r10, r7, lr
	mla r10, r7, r12, r10
	mla r10, r6, lr, r10
_020F050C:
	str r10, [sp]
	bl FUN_ov16_020f036c
	cmp r0, #0
	beq _020F0534
_020F051C:
	ldr r1, [sp, #0x34]
	mov r0, r9
	mov r2, #0x19
	bl MI_CpuCopy8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F0534:
	add r4, r4, #1
	cmp r4, #0x14
	add r9, r9, #0x20
	blt _020F0450
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020f03fc

	arm_func_start FUN_ov16_020f054c
FUN_ov16_020f054c: ; 0x020F054C
	ldr r1, _020F0564 ; =0x0209A0D4
	mov r2, #0
	ldr r0, _020F0568 ; =0x0209A0E4
	strb r2, [r1]
	strb r2, [r0]
	bx lr
_020F0564: .word unk_0209A0D4
_020F0568: .word unk_0209A0E4
	arm_func_end FUN_ov16_020f054c

	arm_func_start FUN_ov16_020f056c
FUN_ov16_020f056c: ; 0x020F056C
	ldr r3, _020F0588 ; =0x0209A0D4
	ldr r2, _020F058C ; =0x0209A0E4
	ldrb r3, [r3]
	strb r3, [r0]
	ldrb r0, [r2]
	strb r0, [r1]
	bx lr
_020F0588: .word unk_0209A0D4
_020F058C: .word unk_0209A0E4
	arm_func_end FUN_ov16_020f056c

	arm_func_start FUN_ov16_020f0590
FUN_ov16_020f0590: ; 0x020F0590
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _020F05C4 ; =0x021178C4
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [r12, r5, lsl #2]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_020F05C4: .word ov16_021178C4
	arm_func_end FUN_ov16_020f0590

	arm_func_start FUN_ov16_020f05c8
FUN_ov16_020f05c8: ; 0x020F05C8
	stmfd sp!, {r4, lr}
	ldr r1, _020F0620 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _020F05F0
	ldr r0, _020F0624 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020F05F0:
	mov r0, r4
	bl FUN_ov16_020f0590
	mov r1, r0
	ldr r0, _020F0628 ; =gAudioPlayer
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, _020F062C ; =0x0209A0E4
	ldr r1, _020F0630 ; =0x0209A0D4
	ldrb r2, [r0]
	strb r4, [r1]
	add r1, r2, #1
	strb r1, [r0]
	ldmfd sp!, {r4, pc}
_020F0620: .word unk_020A0640
_020F0624: .word gWirelessUtil
_020F0628: .word gAudioPlayer
_020F062C: .word unk_0209A0E4
_020F0630: .word unk_0209A0D4
	arm_func_end FUN_ov16_020f05c8

	arm_func_start FUN_ov16_020f0634
FUN_ov16_020f0634: ; 0x020F0634
	ldr r3, _020F064C ; =0x0209D7C0
	mov r2, #0x3c0
	mla r2, r1, r2, r3
	mov r1, #0xf0
	mla r0, r1, r0, r2
	bx lr
_020F064C: .word unk_0209D7C0
	arm_func_end FUN_ov16_020f0634

	arm_func_start FUN_ov16_020f0650
FUN_ov16_020f0650: ; 0x020F0650
	ldr r0, _020F0668 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F0668: .word unk_020A0640
	arm_func_end FUN_ov16_020f0650

	arm_func_start FUN_ov16_020f066c
FUN_ov16_020f066c: ; 0x020F066C
	ldr r0, _020F0678 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	bx lr
_020F0678: .word unk_020A0640
	arm_func_end FUN_ov16_020f066c

	arm_func_start FUN_ov16_020f067c
FUN_ov16_020f067c: ; 0x020F067C
	ldr r0, _020F0688 ; =0x020A0640
	ldrb r0, [r0, #0x8a]
	bx lr
_020F0688: .word unk_020A0640
	arm_func_end FUN_ov16_020f067c

	arm_func_start FUN_ov16_020f068c
FUN_ov16_020f068c: ; 0x020F068C
	ldr r0, _020F0698 ; =0x020A1640
	ldrb r0, [r0, #0x245]
	bx lr
_020F0698: .word unk_020A1640
	arm_func_end FUN_ov16_020f068c

	arm_func_start FUN_ov16_020f069c
FUN_ov16_020f069c: ; 0x020F069C
	ldr r1, _020F06A8 ; =0x0209A118
	str r0, [r1]
	bx lr
_020F06A8: .word unk_0209A118
	arm_func_end FUN_ov16_020f069c

	arm_func_start FUN_ov16_020f06ac
FUN_ov16_020f06ac: ; 0x020F06AC
	ldr r0, _020F06B8 ; =0x0209A118
	ldr r0, [r0]
	bx lr
_020F06B8: .word unk_0209A118
	arm_func_end FUN_ov16_020f06ac

	arm_func_start FUN_ov16_020f06bc
FUN_ov16_020f06bc: ; 0x020F06BC
	ldr r0, _020F06D4 ; =0x0209A454
	ldrb r0, [r0, #0x82]
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	bx lr
_020F06D4: .word unk_0209A454
	arm_func_end FUN_ov16_020f06bc

	arm_func_start FUN_ov16_020f06d8
FUN_ov16_020f06d8: ; 0x020F06D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_ov16_020efa80
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020efa80
	mov r5, r0
	cmp r4, #0
	cmpne r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f06d8

	arm_func_start FUN_ov16_020f0728
FUN_ov16_020f0728: ; 0x020F0728
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f0728

	arm_func_start FUN_ov16_020f0750
FUN_ov16_020f0750: ; 0x020F0750
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d6c4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0750

	arm_func_start FUN_ov16_020f076c
FUN_ov16_020f076c: ; 0x020F076C
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d6c4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f076c

	arm_func_start FUN_ov16_020f077c
FUN_ov16_020f077c: ; 0x020F077C
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d6b0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f077c

	arm_func_start FUN_ov16_020f078c
FUN_ov16_020f078c: ; 0x020F078C
	ldr r1, _020F07A4 ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r0, r1
	moveq r0, #0
	movne r0, #1
	bx lr
_020F07A4: .word unk_020A0640
	arm_func_end FUN_ov16_020f078c

	arm_func_start FUN_ov16_020f07a8
FUN_ov16_020f07a8: ; 0x020F07A8
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	bl FUN_0206d5f0
	ldr r1, _020F07CC ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020F07CC: .word unk_020A0640
	arm_func_end FUN_ov16_020f07a8

	arm_func_start FUN_ov16_020f07d0
FUN_ov16_020f07d0: ; 0x020F07D0
	stmfd sp!, {r3, lr}
	bl FUN_0206d5f0
	ldr r1, _020F07F0 ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020F07F0: .word unk_020A0640
	arm_func_end FUN_ov16_020f07d0

	arm_func_start FUN_ov16_020f07f4
FUN_ov16_020f07f4: ; 0x020F07F4
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020efa80
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_0206d5f0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f07f4

	arm_func_start FUN_ov16_020f0810
FUN_ov16_020f0810: ; 0x020F0810
	ldr r12, _020F0818 ; =FUN_0206d5f0
	bx r12
_020F0818: .word FUN_0206d5f0
	arm_func_end FUN_ov16_020f0810

	arm_func_start FUN_ov16_020f081c
FUN_ov16_020f081c: ; 0x020F081C
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	moveq r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f081c

	arm_func_start FUN_ov16_020f083c
FUN_ov16_020f083c: ; 0x020F083C
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f083c

	arm_func_start FUN_ov16_020f085c
FUN_ov16_020f085c: ; 0x020F085C
	stmfd sp!, {r3, lr}
	ldr r1, _020F089C ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	ldrne r1, _020F08A0 ; =0x020A0660
	ldrne r0, [r1, r0, lsl #2]
	ldmnefd sp!, {r3, pc}
	cmp r0, #0
	bne _020F0888
	bl FUN_ov16_020f081c
	ldmfd sp!, {r3, pc}
_020F0888:
	bl FUN_ov16_020f081c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020F089C: .word unk_020A0640
_020F08A0: .word unk_020A0660
	arm_func_end FUN_ov16_020f085c

	arm_func_start FUN_ov16_020f08a4
FUN_ov16_020f08a4: ; 0x020F08A4
	cmp r0, #4
	ldrlt r1, _020F08B8 ; =0x020A0672
	movge r0, #4
	ldrltb r0, [r1, r0]
	bx lr
_020F08B8: .word unk_020A0672
	arm_func_end FUN_ov16_020f08a4

	arm_func_start FUN_ov16_020f08bc
FUN_ov16_020f08bc: ; 0x020F08BC
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020F0918 ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	bne _020F08F8
	bl FUN_0206d5f0
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F08F8:
	bl FUN_0206d554
	mov r4, r0
	ldr r0, _020F091C ; =0x0209AEC0
	bl FUN_02046730
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F0918: .word unk_020A0640
_020F091C: .word gWirelessUtil
	arm_func_end FUN_ov16_020f08bc

	arm_func_start FUN_ov16_020f0920
FUN_ov16_020f0920: ; 0x020F0920
	ldr r1, _020F093C ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	ldrne r1, _020F0940 ; =0x020A0670
	andeq r0, r0, #0xff
	ldrneb r0, [r1, r0]
	bx lr
_020F093C: .word unk_020A0640
_020F0940: .word unk_020A0670
	arm_func_end FUN_ov16_020f0920

	arm_func_start FUN_ov16_020f0944
FUN_ov16_020f0944: ; 0x020F0944
	stmfd sp!, {r4, lr}
	ldr r0, _020F0980 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020f081c
	bl FUN_ov16_020f0920
	mov r4, r0
	ldr r0, _020F0984 ; =0x0209AEC0
	bl FUN_02046730
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F0980: .word unk_020A0640
_020F0984: .word gWirelessUtil
	arm_func_end FUN_ov16_020f0944

	arm_func_start FUN_ov16_020f0988
FUN_ov16_020f0988: ; 0x020F0988
	stmfd sp!, {r4, lr}
	ldr r1, _020F09BC ; =0x020A0640
	mov r4, r0
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020f085c
	bl FUN_ov16_020f0920
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
_020F09BC: .word unk_020A0640
	arm_func_end FUN_ov16_020f0988

	arm_func_start FUN_ov16_020f09c0
FUN_ov16_020f09c0: ; 0x020F09C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, _020F0A10 ; =0x0209AEC0
	bl FUN_02046744
	mov r6, #0
	mov r5, r0
	mov r7, r6
	mov r4, #1
	b _020F0A00
_020F09E4:
	tst r5, r4, lsl r7
	beq _020F09FC
	mov r0, r7
	bl FUN_ov16_020f085c
	cmp r8, r0
	addeq r6, r6, #1
_020F09FC:
	add r7, r7, #1
_020F0A00:
	cmp r7, #4
	blt _020F09E4
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F0A10: .word gWirelessUtil
	arm_func_end FUN_ov16_020f09c0

	arm_func_start FUN_ov16_020f0a14
FUN_ov16_020f0a14: ; 0x020F0A14
	ldr r1, _020F0A2C ; =0x020A06D6
	ldrb r0, [r1, r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F0A2C: .word unk_020A06D6
	arm_func_end FUN_ov16_020f0a14

	arm_func_start FUN_ov16_020f0a30
FUN_ov16_020f0a30: ; 0x020F0A30
	ldr r1, _020F0A48 ; =0x020A06D6
	ldrb r0, [r1, r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
_020F0A48: .word unk_020A06D6
	arm_func_end FUN_ov16_020f0a30

	arm_func_start FUN_ov16_020f0a4c
FUN_ov16_020f0a4c: ; 0x020F0A4C
	stmfd sp!, {r3, lr}
	ldr r1, _020F0A8C ; =0x0209A2C0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _020F0A68
	bl FUN_ov16_020f07f4
	ldmfd sp!, {r3, pc}
_020F0A68:
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	blt _020F0A7C
	bl FUN_ov16_020f07f4
	ldmfd sp!, {r3, pc}
_020F0A7C:
	ldr r0, _020F0A90 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144770
	ldmfd sp!, {r3, pc}
_020F0A8C: .word unk_0209A2C0
_020F0A90: .word gUtilGame
	arm_func_end FUN_ov16_020f0a4c

	arm_func_start FUN_ov16_020f0a94
FUN_ov16_020f0a94: ; 0x020F0A94
	stmfd sp!, {r3, lr}
	ldr r1, _020F0AE8 ; =0x0209A2C0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _020F0AB0
	bl FUN_ov16_020f07a8
	ldmfd sp!, {r3, pc}
_020F0AB0:
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	blt _020F0AC4
	bl FUN_ov16_020f07a8
	ldmfd sp!, {r3, pc}
_020F0AC4:
	ldr r0, _020F0AEC ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144770
	ldr r1, _020F0AF0 ; =0x020A0640
	ldrb r1, [r1, #0x9a]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020F0AE8: .word unk_0209A2C0
_020F0AEC: .word gUtilGame
_020F0AF0: .word unk_020A0640
	arm_func_end FUN_ov16_020f0a94

	arm_func_start FUN_ov16_020f0af4
FUN_ov16_020f0af4: ; 0x020F0AF4
	cmp r0, #0
	moveq r0, r1
	bxeq lr
	ldrb r0, [r0, #0x5a]
	cmp r0, #1
	beq _020F0B30
	ldr r2, _020F0B38 ; =0x021178A4
	mov r3, #0
_020F0B14:
	ldr r0, [r2, r3, lsl #2]
	cmp r1, r0
	addeq r1, r1, #4
	beq _020F0B30
	add r3, r3, #1
	cmp r3, #8
	blo _020F0B14
_020F0B30:
	mov r0, r1
	bx lr
_020F0B38: .word ov16_021178A4
	arm_func_end FUN_ov16_020f0af4

	arm_func_start FUN_ov16_020f0b3c
FUN_ov16_020f0b3c: ; 0x020F0B3C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020F0B50
	bl FUN_ov16_020f0af4
	mov r1, r0
_020F0B50:
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0b3c

	arm_func_start FUN_ov16_020f0b58
FUN_ov16_020f0b58: ; 0x020F0B58
	ldr r2, _020F0B88 ; =0x021178A4
	mov r3, #0
_020F0B60:
	ldr r1, [r2, r3, lsl #2]
	add r1, r1, #4
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	add r3, r3, #1
	cmp r3, #8
	blo _020F0B60
	mov r0, #0
	bx lr
_020F0B88: .word ov16_021178A4
	arm_func_end FUN_ov16_020f0b58

	arm_func_start FUN_ov16_020f0b8c
FUN_ov16_020f0b8c: ; 0x020F0B8C
	ldr r2, _020F0BA0 ; =gWearSetFile
	mov r1, #0xc
	ldr r2, [r2]
	mla r0, r1, r0, r2
	bx lr
_020F0BA0: .word gWearSetFile
	arm_func_end FUN_ov16_020f0b8c

	arm_func_start FUN_ov16_020f0ba4
FUN_ov16_020f0ba4: ; 0x020F0BA4
	ldr r2, _020F0BC8 ; =gWearSetFile
	mov r1, #0xc
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F0BC8: .word gWearSetFile
	arm_func_end FUN_ov16_020f0ba4

	arm_func_start FUN_ov16_020f0bcc
FUN_ov16_020f0bcc: ; 0x020F0BCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r0, [r4, #0x28]
	mov r5, r1
	cmp r0, #0
	ldreqh r0, [r4, #0x26]
	bl FUN_ov16_020f0ba4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x2c]
	mov r4, #0
	cmp r0, #0
	mov r0, r5
	moveq r4, #2
	bl FUN_0206d6d8
	cmp r0, #0
	bne _020F0C24
	mov r0, r5
	bl FUN_0206d8b8
	cmp r0, #1
	bne _020F0C28
_020F0C24:
	add r4, r4, #1
_020F0C28:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f0bcc

	arm_func_start FUN_ov16_020f0c30
FUN_ov16_020f0c30: ; 0x020F0C30
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0x53]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020f0c48
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0c30

	arm_func_start FUN_ov16_020f0c48
FUN_ov16_020f0c48: ; 0x020F0C48
	ldr r12, _020F0C5C ; =MIi_CpuCopy16
	add r0, r2, r0, lsl #3
	add r1, r1, #0x18
	mov r2, #8
	bx r12
_020F0C5C: .word MIi_CpuCopy16
	arm_func_end FUN_ov16_020f0c48

	arm_func_start FUN_ov16_020f0c60
FUN_ov16_020f0c60: ; 0x020F0C60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _020F0D54 ; =gWearSetFile
	mov r7, r2
	ldr r5, [r4]
	ldr r4, [sp, #0x24]
	mov r2, #0xc
	mla r6, r4, r2, r5
	ldr r5, [sp, #0x28]
	ldrb r12, [r7, #0x53]
	mla r4, r5, r2, r6
	mov r9, r0
	mov r8, r1
	mov r6, r3
	cmp r12, #0
	ldr r5, [sp, #0x2c]
	beq _020F0CB0
	add r0, r5, r12, lsl #4
	add r1, r9, #0x10
	mov r2, #0x10
	bl MIi_CpuCopy16
_020F0CB0:
	mov r0, r7
	bl FUN_0206d6d8
	cmp r0, #0
	beq _020F0CE8
	cmp r6, #0
	ble _020F0D34
	ldr r1, [sp, #0x30]
	mov r0, #0x14
	mla r0, r6, r0, r1
	mov r1, r9
	add r0, r0, #4
	mov r2, #0x10
_020F0CE0:
	bl MIi_CpuCopy16
	b _020F0D34
_020F0CE8:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _020F0D34
	ldr r2, [sp, #0x20]
	cmp r2, #0
	ble _020F0D14
	ldr r0, [sp, #0x34]
	add r1, r9, #4
	add r0, r0, r2, lsl #4
	mov r2, #0xc
	b _020F0CE0
_020F0D14:
	ldrb r0, [r7, #0x53]
	cmp r0, #0
	beq _020F0D34
	add r0, r5, r0, lsl #4
	ldrh r0, [r0, #0xc]
	add r1, r9, #4
	mov r2, #0xc
	bl MIi_CpuClear16
_020F0D34:
	ldrb r0, [r7, #0x53]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r5, r0, lsl #4
	add r1, r8, #0x10
	mov r2, #0x10
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F0D54: .word gWearSetFile
	arm_func_end FUN_ov16_020f0c60

	arm_func_start FUN_ov16_020f0d58
FUN_ov16_020f0d58: ; 0x020F0D58
	stmfd sp!, {r3, lr}
	mov r3, r0
	cmp r1, #0
	ldmlefd sp!, {r3, pc}
	add r0, r2, r1, lsl #3
	add r1, r3, #0x1a
	mov r2, #6
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f0d58

	arm_func_start FUN_ov16_020f0d7c
FUN_ov16_020f0d7c: ; 0x020F0D7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r1, #0
	mov r6, r0
	ldrne r1, [sp, #0x20]
	mov r4, r3
	movne r0, #0x14
	mlane r7, r4, r0, r1
	ldr r0, [sp, #0x18]
	moveq r7, #0
	ldr r1, [sp, #0x24]
	cmp r0, #0
	mov r5, r2
	add r0, r1, r0, lsl #3
	ble _020F0DCC
	cmp r0, #0
	beq _020F0DCC
	add r0, r0, #4
	add r1, r6, #4
	mov r2, #4
	bl MIi_CpuCopy16
_020F0DCC:
	cmp r4, #0
	ble _020F0DEC
	cmp r7, #0
	beq _020F0DEC
	mov r0, r7
	add r1, r6, #8
	mov r2, #2
	bl MIi_CpuCopy16
_020F0DEC:
	cmp r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x1c]
	add r1, r6, #0x1a
	add r0, r0, r5, lsl #3
	mov r2, #6
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f0d7c

	.section .init, 4
	arm_func_start FUN_ov16_02117b40
FUN_ov16_02117b40: ; 0x02117B40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117B88 ; =0x0211845C
	str r0, [r4, #0x14]
	ldr r0, _02117B8C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02117B90 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02117B88: .word ov16_0211845C
_02117B8C: .word 0x00009CCD
_02117B90: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117b40

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117b40

    .data
	.global ov16_0211845C
ov16_0211845C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

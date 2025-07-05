
	.include "/macros/function.inc"
	.include "/include/overlay4.inc"

	.text
	arm_func_start FUN_ov4_020bcb40
FUN_ov4_020bcb40: ; 0x020BCB40
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BCB64 ; =0x020D928C
	add r1, r4, #0x10
	bl FUN_ov16_020f316c
	ldr r0, _020BCB68 ; =0x020D92B0
	add r1, r4, #0x1c
	bl FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_020BCB64: .word ov4_020D928C
_020BCB68: .word ov4_020D92B0
	arm_func_end FUN_ov4_020bcb40

	arm_func_start FUN_ov4_020bcb6c
FUN_ov4_020bcb6c: ; 0x020BCB6C
	mov r1, r0
	ldr r0, _020BCB80 ; =0x020D92D4
	ldr r12, _020BCB84 ; =FUN_ov16_020f316c
	add r1, r1, #0x48
	bx r12
_020BCB80: .word ov4_020D92D4
_020BCB84: .word FUN_ov16_020f316c
	arm_func_end FUN_ov4_020bcb6c

	arm_func_start FUN_ov4_020bcb88
FUN_ov4_020bcb88: ; 0x020BCB88
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, #0
	mov r5, r0
	str r4, [sp, #8]
	str r4, [sp, #4]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x48]
	ldr r1, [r1]
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _020BCBE8
	add r0, r5, #0x28
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r5, #0x28
	bl FUN_ov16_020f33fc
_020BCBE8:
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020BCC0C ; =0x020D9300
	add r1, r5, #0x28
	bl FUN_ov16_020f31fc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020BCC0C: .word ov4_020D9300
	arm_func_end FUN_ov4_020bcb88

	arm_func_start FUN_ov4_020bcc10
FUN_ov4_020bcc10: ; 0x020BCC10
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #2
	add r7, r0, #0x10
	mov r5, #1
	mov r4, #0xc
_020BCC24:
	mul r6, r8, r4
	mov r1, r5
	add r0, r7, r6
	bl FUN_ov16_020f338c
	add r0, r7, r6
	bl FUN_ov16_020f33fc
	subs r8, r8, #1
	bpl _020BCC24
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov4_020bcc10

	arm_func_start FUN_ov4_020bcc48
FUN_ov4_020bcc48: ; 0x020BCC48
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #1
	blo _020BCC88
	add r0, r6, #0x48
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r6, #0x48
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x4c]
	strb r0, [r6, #0x50]
	strb r0, [r6, #0x51]
	strb r0, [r6, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
_020BCC88:
	mov r0, #0xc
	mul r5, r1, r0
	add r4, r6, #0x48
	add r0, r4, r5
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r5
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x4c]
	strb r1, [r0, #0x50]
	strb r1, [r0, #0x51]
	strb r1, [r0, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020bcc48

	arm_func_start FUN_ov4_020bccc8
FUN_ov4_020bccc8: ; 0x020BCCC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r11, r0
	ldr r6, [r11, #0x10]
	mov r5, #0
	cmp r6, #0
	mov r4, #0x20
	beq _020BCD38
	mov r1, #1
	mov r0, r6
	mov r2, r1
	bl FUN_ov16_020f1138
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	mov r3, #1
	add r0, r6, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	ldr r0, [r6, #0x14]
	ldr r2, [r6, #0x18]
	add r0, r6, r0
	mov r1, r4
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_020BCD38:
	ldr r6, [r11, #0x1c]
	mov r9, #0
	mov r7, r9
	cmp r6, #0
	mov r8, #0x20
	beq _020BCE30
	mov r4, #2
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_ov16_020f1138
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	add r0, r6, r0
	mov r3, r4
	add r2, r9, #1
	bl FUN_ov16_020f1868
	ldr r1, [r6, #0xc]
	mov r7, r0
	ldr r4, _020BCF18 ; =0x020A8C40
	add r10, r6, r1
	mov r0, r9
	mov r2, #0x800
	mov r1, r4
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r0
	mov r0, r9
	mov r2, r8
	bl MIi_CpuClearFast
	mov r2, r9
	b _020BCDE8
_020BCDB8:
	mov r0, r9, lsl #5
	mov r3, r2
	add r12, r0, #0x46
	b _020BCDDC
_020BCDC8:
	ldrh r1, [r10], #2
	mov r0, r12, lsl #1
	add r12, r12, #1
	strh r1, [r4, r0]
	add r3, r3, #1
_020BCDDC:
	cmp r3, #0x15
	blt _020BCDC8
	add r9, r9, #1
_020BCDE8:
	cmp r9, #0xe
	blt _020BCDB8
	ldr r9, _020BCF18 ; =0x020A8C40
	mov r4, #0x800
	mov r0, r9
	mov r1, r4
	bl DC_FlushRange
	mov r0, r9
	mov r2, r4
	mov r1, #0
	bl GXS_LoadBG1Scr
	ldr r0, [r6, #0x14]
	mov r1, r8
	add r0, r6, r0
	ldr r2, [r6, #0x18]
	bl GXS_LoadBG1Char
	ldr r0, [r6, #0x18]
	add r8, r8, r0
_020BCE30:
	add r4, r11, #0x34
	mov r6, #0
	b _020BCE9C
_020BCE3C:
	ldr r0, [r4]
	mov r1, r5
	cmp r0, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020BCE94
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	ldr r0, [r4]
	mov r3, r5
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r7, #1
	bl FUN_ov16_020f1868
	str r8, [r4, #8]
	ldrh r2, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	mov r7, r0
	mul r0, r2, r1
	add r8, r8, r0, lsl #5
_020BCE94:
	add r6, r6, #1
	add r4, r4, #0x14
_020BCE9C:
	cmp r6, #1
	blt _020BCE3C
	ldr r0, [r11, #0x34]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r11, #0x38]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020BCF0C
	ldr r4, [r11, #0x34]
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x1d
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp, #0x18]
	ldr r0, _020BCF1C ; =0x0209F5C0
	mov r2, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020BCF0C:
	bl FUN_ov16_020f10c8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BCF18: .word unk_020A8C40
_020BCF1C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bccc8

	arm_func_start FUN_ov4_020bcf20
FUN_ov4_020bcf20: ; 0x020BCF20
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x28]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r3, #0xc]
	mov r2, #1
	ldr r1, [r3, #0x10]
	add r0, r3, r0
	sub r3, r2, #2
	bl FUN_ov16_020f1868
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020bcf20

	arm_func_start FUN_ov4_020bcf50
FUN_ov4_020bcf50: ; 0x020BCF50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _020BCF80
	ldrb r0, [r2, #4]
	cmp r0, #1
	ldreqb r0, [r2, #5]
	cmpeq r0, #1
	bne _020BCF80
	cmp r1, #0
	bne _020BCFBC
_020BCF80:
	mov r4, #0
	ldr r1, _020BD07C ; =0x020A8440
	mov r0, r4
	mov r2, #0x800
	bl MIi_CpuClearFast
	bl FUN_ov16_020f3f54
	ldr r6, [r0, #8]
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl MIi_CpuClearFast
	sub r0, r4, #1
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BCFBC:
	ldr r0, [r5, #0xc]
	cmp r0, r1
	ldrne r4, [r5, #0x28]
	strne r1, [r5, #0xc]
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	mov r5, #0x40
	bl GXS_BeginLoadBGExtPltt
	ldmib r4, {r0, r2}
	add r0, r4, r0
	mov r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldr r0, [r4, #0xc]
	mov r3, r6
	add lr, r4, r0
	ldr r0, _020BD07C ; =0x020A8440
	b _020BD038
_020BD008:
	mov r1, r6, lsl #5
	mov r7, r3
	add r12, r1, #0xa9
	b _020BD02C
_020BD018:
	ldrh r2, [lr], #2
	mov r1, r12, lsl #1
	add r12, r12, #1
	strh r2, [r0, r1]
	add r7, r7, #1
_020BD02C:
	cmp r7, #0xe
	blt _020BD018
	add r6, r6, #1
_020BD038:
	cmp r6, #8
	blt _020BD008
	ldr r7, _020BD07C ; =0x020A8440
	mov r6, #0x800
	mov r0, r7
	mov r1, r6
	bl DC_FlushRange
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl GXS_LoadBG2Scr
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r5
	add r0, r4, r0
	bl GXS_LoadBG2Char
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD07C: .word unk_020A8440
	arm_func_end FUN_ov4_020bcf50

	arm_func_start FUN_ov4_020bd080
FUN_ov4_020bd080: ; 0x020BD080
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	ldrneb r0, [r1, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r1]
	ldr r0, [r4, #0xc]
	cmp r0, r1
	beq _020BD0F4
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _020BD0F4
	cmp r1, #0
	ble _020BD0E0
	mov r5, #1
	mov r1, r5
	add r0, r4, #0x28
	bl FUN_ov16_020f338c
	add r0, r4, #0x28
	bl FUN_ov16_020f33fc
	str r5, [r4, #0x58]
	b _020BD0E8
_020BD0E0:
	moveq r0, #4
	streq r0, [r4, #0x58]
_020BD0E8:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #6]
_020BD0F4:
	ldr r0, [r4, #0x58]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020BD174
_020BD104: ; jump table
	b _020BD174 ; case 0
	b _020BD118 ; case 1
	b _020BD130 ; case 2
	b _020BD14C ; case 3
	b _020BD15C ; case 4
_020BD118:
	mov r0, r4
	bl FUN_ov4_020bcb88
	cmp r0, #0
	beq _020BD174
	mov r0, #2
	str r0, [r4, #0x58]
_020BD130:
	add r0, r4, #0x28
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #3
	str r0, [r4, #0x58]
_020BD14C:
	mov r0, r4
	bl FUN_ov4_020bcf20
	mov r0, #4
	str r0, [r4, #0x58]
_020BD15C:
	ldr r1, [r4, #8]
	mov r0, r4
	ldr r1, [r1]
	bl FUN_ov4_020bcf50
	mov r0, r4
	bl FUN_ov4_020bd190
_020BD174:
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #4]
	ldr r0, [r4, #8]
	strb r1, [r0, #6]
	str r1, [r4, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov4_020bd080

	arm_func_start FUN_ov4_020bd190
FUN_ov4_020bd190: ; 0x020BD190
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x11c
	mov r6, r0
	ldr r0, [r6, #0x34]
	cmp r0, #0
	ldrne r0, [r6, #0x38]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x11c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r3, [r6, #0x40]
	ldrh r2, [r6, #0x42]
	ldr r0, [r6, #0x38]
	mov r1, #0
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl MI_CpuFill8
	ldr r1, [r6, #8]
	ldrb r0, [r1, #5]
	cmp r0, #1
	add r0, sp, #0x1c
	bne _020BD1FC
	ldr r1, [r1, #0xc]
	bl STD_CopyString
	b _020BD204
_020BD1FC:
	ldr r1, _020BD2FC ; =0x020D932C
	bl FUN_02023c40
_020BD204:
	ldr r7, _020BD300 ; =0x02099F50
	mov r1, #1
	ldr r0, [r7]
	mov r2, r1
	bl FUN_02043310
	mov r4, #0
	mov r5, #3
	str r5, [sp]
	str r4, [sp, #4]
	ldr r0, [r6, #0x38]
	add r3, sp, #0x1c
	str r0, [sp, #8]
	ldrh r0, [r6, #0x40]
	mov r1, r4
	mov r2, r4
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r6, #0x42]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, [r7]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldr r0, [r7]
	bl FUN_0204331c
	ldr r1, [r6, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _020BD2C0
	str r5, [sp]
	mov r0, #8
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r6, #0x40]
	ldrh r3, [r6, #0x42]
	ldr r0, [r1, #0x10]
	ldr r1, [r6, #0x38]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
_020BD2C0:
	ldrh r2, [r6, #0x40]
	ldrh r1, [r6, #0x42]
	ldr r0, [r6, #0x38]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	ldrh r3, [r6, #0x40]
	ldrh r2, [r6, #0x42]
	ldr r0, [r6, #0x38]
	ldr r1, [r6, #0x3c]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
	add sp, sp, #0x11c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020BD2FC: .word ov4_020D932C
_020BD300: .word unk_02099F50
	arm_func_end FUN_ov4_020bd190

	arm_func_start FUN_ov4_020bd304
FUN_ov4_020bd304: ; 0x020BD304
	str r1, [r0, #8]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov4_020bd304

	arm_func_start FUN_ov4_020bd310
FUN_ov4_020bd310: ; 0x020BD310
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f51a8
	mov r0, #0xc
	bl FUN_ov16_020f4894
	mov r4, #1
	ldr r0, _020BD374 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x34
	bl FUN_ov16_020f2f7c
	add r0, r5, #0x34
	mov r1, #0x1d
	mov r2, #4
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x34
	bl FUN_ov16_020f2f20
	str r4, [r5, #0x54]
	mov r0, #0
	str r0, [r5, #8]
	str r0, [r5, #0x58]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD374: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bd310

	arm_func_start FUN_ov4_020bd378
FUN_ov4_020bd378: ; 0x020BD378
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x54]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020BD390: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _020BD3A8 ; case 1
	b _020BD3B4 ; case 2
	b _020BD3F0 ; case 3
	b _020BD41C ; case 4
	b _020BD42C ; case 5
_020BD3A8:
	bl FUN_ov4_020bcb40
	mov r0, #2
	str r0, [r4, #0x54]
_020BD3B4:
	mov r5, #1
	mov r1, r5
	add r0, r4, #0x10
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r5
	add r0, r4, #0x1c
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov4_020bcb6c
	mov r0, #3
	str r0, [r4, #0x54]
_020BD3F0:
	add r0, r4, #0x48
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #4
	mov r0, r4
	str r1, [r4, #0x54]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_020BD41C:
	mov r0, r4
	bl FUN_ov4_020bccc8
	mov r0, #5
	str r0, [r4, #0x54]
_020BD42C:
	mov r0, r4
	bl FUN_ov4_020bd080
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov4_020bd378

	arm_func_start FUN_ov4_020bd438
FUN_ov4_020bd438: ; 0x020BD438
	ldr r0, _020BD448 ; =0x0209F5C0
	ldr r12, _020BD44C ; =FUN_ov16_020f6a9c
	mov r1, #1
	bx r12
_020BD448: .word unk_0209F5C0
_020BD44C: .word FUN_ov16_020f6a9c
	arm_func_end FUN_ov4_020bd438

	arm_func_start FUN_ov4_020bd450
FUN_ov4_020bd450: ; 0x020BD450
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	ldrne r0, [r4, #0x38]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020BD4B0
	ldrh r3, [r4, #0x40]
	ldrh r2, [r4, #0x42]
	ldr r0, [r4, #0x38]
	mov r1, #0
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl MI_CpuFill8
	ldrh r3, [r4, #0x40]
	ldrh r2, [r4, #0x42]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
_020BD4B0:
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov4_020bcc48
	mov r0, r4
	bl FUN_ov4_020bcc10
	ldr r0, _020BD4FC ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	mov r1, r5
	add r0, r4, #0x34
	bl FUN_ov16_020f2fe4
	bl FUN_ov16_020f51a8
	ldr r0, [r4, #4]
	mov r1, r5
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_020BD4FC: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bd450

	arm_func_start FUN_ov4_020bd500
FUN_ov4_020bd500: ; 0x020BD500
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bd500

	arm_func_start FUN_ov4_020bd514
FUN_ov4_020bd514: ; 0x020BD514
	bx lr
	arm_func_end FUN_ov4_020bd514

	arm_func_start FUN_ov4_020bd518
FUN_ov4_020bd518: ; 0x020BD518
	bx lr
	arm_func_end FUN_ov4_020bd518

	arm_func_start FUN_ov4_020bd51c
FUN_ov4_020bd51c: ; 0x020BD51C
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r2, r0
	cmp r1, #0xf
	cmpne r1, #0xe
	mvnne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #9
	mvnhs r0, #0
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	add r1, r2, #0xc
	mov r2, #0x14
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bd51c

	arm_func_start FUN_ov4_020bd56c
FUN_ov4_020bd56c: ; 0x020BD56C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _020BD59C ; =0x020D9450
	add r1, r4, #0x34
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020BD59C: .word ov4_020D9450
	arm_func_end FUN_ov4_020bd56c

	arm_func_start FUN_ov4_020bd5a0
FUN_ov4_020bd5a0: ; 0x020BD5A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x34]
	cmp r6, #0
	ldrne r1, _020BD5EC ; =0x020D7C8C
	ldrne r7, _020BD5F0 ; =0x020D7C8C
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x34
	mov r4, #0xc
_020BD5C8:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020BD5C8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD5EC: .word 0x020D7C8C
_020BD5F0: .word 0x020D7C8C
	arm_func_end FUN_ov4_020bd5a0

	arm_func_start FUN_ov4_020bd5f4
FUN_ov4_020bd5f4: ; 0x020BD5F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x34
	mov r4, #0xc
_020BD604:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #6
	blt _020BD604
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020bd5f4

	arm_func_start FUN_ov4_020bd61c
FUN_ov4_020bd61c: ; 0x020BD61C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r5, [r6, #0x40]
	mov r4, #1
	cmp r5, #0
	beq _020BD65C
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f1138
_020BD65C:
	ldr r8, [r6, #0x58]
	mov r5, #0
	cmp r8, #0
	beq _020BD69C
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f1138
_020BD69C:
	ldr r8, [r6, #0x64]
	cmp r8, #0
	beq _020BD6D8
	ldr r0, [r8, #0xc]
	mov r7, #4
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020BD6D8:
	ldr r8, [r6, #0x70]
	cmp r8, #0
	beq _020BD710
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020BD710:
	ldr r8, [r6, #0x4c]
	mov r5, #0
	cmp r8, #0
	beq _020BD750
	ldr r0, [r8, #0xc]
	mov r7, #2
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f1138
_020BD750:
	ldr r0, [r6, #0x20]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r6, #0x24]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	add r2, r5, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov4_020bd61c

	arm_func_start FUN_ov4_020bd790
FUN_ov4_020bd790: ; 0x020BD790
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r6, [r4, #0x40]
	cmp r6, #0
	beq _020BD7D0
	ldr r0, [r6, #0x14]
	mov r5, #0
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_020BD7D0:
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r7, #1
	ldr r1, [r4, #0x58]
	mov r0, r7
	mov r2, r5
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x64]
	mov r0, r7
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x70]
	mov r0, r7
	bl FUN_ov16_020f1a60
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	ldr r1, [r4, #0x4c]
	mov r2, r5
	mov r0, #2
	bl FUN_ov16_020f1a60
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r1, [r4, #0x24]
	cmpne r1, #0
	moveq r7, #0
	cmp r7, #0
	strne r0, [r4, #0x28]
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov4_020bd790

	arm_func_start FUN_ov4_020bd880
FUN_ov4_020bd880: ; 0x020BD880
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x20]
	cmp r0, #0
	ldrne r0, [lr, #0x24]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x30]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x2c]
	ldrh r1, [lr, #0x2e]
	mov r12, #0
	ldr r0, [lr, #0x24]
	mul r3, r2, r1
	ldr r1, [lr, #0x28]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x30]
	bl GXS_LoadBG2Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020bd880

	arm_func_start FUN_ov4_020bd8d8
FUN_ov4_020bd8d8: ; 0x020BD8D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	mov r7, r0
	ldr r12, [r7, #0x20]
	mov r3, #0
	cmp r12, #0
	ldrne r0, [r7, #0x24]
	cmpne r0, #0
	movne r3, #1
	cmp r3, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	sub r0, r2, #0xe
	add r0, r0, r0, lsr #31
	add r0, r1, r0, asr #1
	mov r6, #1
	mov r4, #4
	stmia sp, {r4, r6}
	mov r5, #0
	mov r0, r0, lsl #0x18
	str r6, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, _020BDAEC ; =0x0209F5C0
	mov r1, r6
	mov r2, r5
	mov r3, r5
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, #0x20
	strb r5, [r7, #0x1c]
	bl FUN_ov16_020f2f20
	ldr r0, _020BDAF0 ; =0x02099F50
	mov r1, r6
	ldr r0, [r0]
	mov r2, r4
	bl FUN_02043310
	ldr r2, [r7, #0x7c]
	sub r0, r5, #1
	cmp r2, r0
	beq _020BDA58
	ldr r0, [r7, #0x10]
	cmp r0, #7
	bne _020BDA58
	add r8, sp, #0x20
	ldr r1, _020BDAF4 ; =0x020D946C
	mov r0, r8
	bl FUN_02023c40
	add r4, sp, #0x26
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f1f5c
	ldr r0, [r7, #0x18]
	bl STD_GetStringLength
	add r0, r0, #0x28
	rsb r0, r0, r0, lsl #1
	bl FUN_0201e08c
	mov r3, r4
	ldr r1, _020BDAF8 ; =0x020D9470
	ldr r2, [r7, #0x18]
	mov r4, r0
	bl FUN_02023c40
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r6}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r7, #0x1d]
	mov r0, r4
	add r1, r1, #1
	mov r1, r1, lsl #4
	sub r1, r1, #4
	rsb r1, r1, #0x70
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	sub r1, r1, #8
	str r1, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r7, #0x2c]
	ldrh r3, [r7, #0x2e]
	ldr r1, [r7, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	mov r0, r4
	bl FUN_0201e0b8
	b _020BDAB8
_020BDA58:
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r0, [r7, #0x1d]
	mov r0, r0, lsl #4
	sub r0, r0, #4
	rsb r0, r0, #0x70
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	sub r0, r0, #8
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r7, #0x2c]
	ldrh r3, [r7, #0x2e]
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
_020BDAB8:
	ldr r0, _020BDAF0 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldrh r2, [r7, #0x2c]
	ldrh r1, [r7, #0x2e]
	mov r3, #1
	ldr r0, [r7, #0x24]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	strb r3, [r7, #0x30]
	bl DC_FlushRange
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BDAEC: .word unk_0209F5C0
_020BDAF0: .word unk_02099F50
_020BDAF4: .word ov4_020D946C
_020BDAF8: .word ov4_020D9470
	arm_func_end FUN_ov4_020bd8d8

	arm_func_start FUN_ov4_020bdafc
FUN_ov4_020bdafc: ; 0x020BDAFC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r1, #1
	ldr r0, _020BDB94 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5eec
	ldr lr, [r4, #0x4c]
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r4, #0x14]
	cmp r4, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r4, pc}
	ldr r3, [lr, #0xc]
	mov r1, #1
	str r1, [sp]
	mov r12, #2
	str r12, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	cmp r4, #3
	str r12, [sp, #0x14]
	add lr, lr, r3
	movgt r4, #3
	str r12, [sp, #0x18]
	add r12, lr, r4, lsl #3
	ldr r0, _020BDB94 ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_020BDB94: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bdafc

	arm_func_start FUN_ov4_020bdb98
FUN_ov4_020bdb98: ; 0x020BDB98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r9, _020BDCD8 ; =0x0209F5C0
	mov r8, #1
	mov r7, #0
	mov r6, r0
	mov r0, r9
	mov r1, r8
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_020f5f64
	ldr r0, [r6, #0x10]
	mov r10, #2
	cmp r0, #7
	mov r4, #8
	mov r5, #0xe
	bne _020BDBEC
	ldr r2, [r6, #0x70]
	cmp r2, #0
	beq _020BDC3C
	b _020BDBF8
_020BDBEC:
	ldr r2, [r6, #0x58]
	cmp r2, #0
	beq _020BDC3C
_020BDBF8:
	str r10, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r9
	add r9, r2, r1
	mov r1, r8
	mov r2, r8
	mov r3, r7
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020BDC3C:
	ldr r8, [r6, #0x10]
	cmp r8, #0
	ldrne r7, [r6, #0x64]
	cmpne r7, #0
	beq _020BDCAC
	ldr r3, [r7, #0xc]
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	add r7, r7, r3
	mov r2, r10, lsl #0x18
	sub r3, r8, #1
	mov r0, #0xb4
	mla r12, r3, r0, r7
	mov r0, r2, asr #0x18
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _020BDCD8 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020BDCAC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov4_020bd8d8
	mov r0, r6
	bl FUN_ov4_020bdafc
	ldr r0, _020BDCD8 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BDCD8: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bdb98

	arm_func_start FUN_ov4_020bdcdc
FUN_ov4_020bdcdc: ; 0x020BDCDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f4894
	mov r3, #0
	sub r2, r3, #1
	ldr r0, _020BDD60 ; =0x0209F5C0
	mov r1, r4
	str r3, [r5, #8]
	str r3, [r5, #0xc]
	str r3, [r5, #0x10]
	str r2, [r5, #0x14]
	str r2, [r5, #0x7c]
	str r3, [r5, #0x18]
	strb r3, [r5, #0x1c]
	strb r3, [r5, #0x1d]
	bl FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x20
	bl FUN_ov16_020f2f7c
	add r0, r5, #0x20
	mov r1, #0x1e
	mov r2, #0xe
	bl FUN_ov16_020f2fa8
	mov r0, r5
	bl FUN_ov4_020bd56c
	ldmfd sp!, {r3, r4, r5, pc}
_020BDD60: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bdcdc

	arm_func_start FUN_ov4_020bdd64
FUN_ov4_020bdd64: ; 0x020BDD64
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _020BDD84
	cmp r1, #3
	beq _020BDDB4
	ldmfd sp!, {r4, pc}
_020BDD84:
	add r0, r4, #0x34
	mov r1, #6
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov4_020bd5a0
	mov r0, r4
	bl FUN_ov4_020bd61c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020BDDB4:
	bl FUN_ov4_020bdb98
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bdd64

	arm_func_start FUN_ov4_020bddbc
FUN_ov4_020bddbc: ; 0x020BDDBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020BDDDC
	cmp r1, #3
	beq _020BDDFC
	ldmfd sp!, {r4, pc}
_020BDDDC:
	bl FUN_ov4_020bd790
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020BDDFC:
	bl FUN_ov4_020bd880
	ldr r0, _020BDE10 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020BDE10: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bddbc

	arm_func_start FUN_ov4_020bde14
FUN_ov4_020bde14: ; 0x020BDE14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x34
	mov r1, #6
	bl FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov4_020bd5f4
	mov r4, #1
	ldr r0, _020BDE64 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r1, r4
	add r0, r5, #0x20
	bl FUN_ov16_020f2fe4
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_020BDE64: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bde14

	arm_func_start FUN_ov4_020bde68
FUN_ov4_020bde68: ; 0x020BDE68
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bde68

	arm_func_start FUN_ov4_020bde7c
FUN_ov4_020bde7c: ; 0x020BDE7C
	stmfd sp!, {r4, lr}
	mov r2, #6
	str r2, [r0, #0xc]
	ldr r1, _020BDEA8 ; =0x0209A454
	mov r4, #1
	mov r0, r2
	strb r4, [r1, #0x81]
	bl FUN_ov16_020f153c
	mov r0, r4
	bl FUN_02029d44
	ldmfd sp!, {r4, pc}
_020BDEA8: .word unk_0209A454
	arm_func_end FUN_ov4_020bde7c

	arm_func_start FUN_ov4_020bdeac
FUN_ov4_020bdeac: ; 0x020BDEAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r2, #4
	ldmnefd sp!, {r4, pc}
	ldr r2, _020BDEDC ; =0x00002FFF
	tst r1, r2
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov4_020be044
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BDEDC: .word 0x00002FFF
	arm_func_end FUN_ov4_020bdeac

	arm_func_start FUN_ov4_020bdee0
FUN_ov4_020bdee0: ; 0x020BDEE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _020BDF00
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r4, pc}
_020BDF00:
	ldr r0, [r4, #0xc]
	mov r2, #1
	strb r2, [r4, #0x14]
	cmp r0, #4
	ldreqh r0, [r1, #4]
	cmpeq r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov4_020be044
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bdee0

	arm_func_start FUN_ov4_020bdf30
FUN_ov4_020bdf30: ; 0x020BDF30
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, _020BDF60 ; =0x020D9538
	add r1, r4, #0x18
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BDF60: .word ov4_020D9538
	arm_func_end FUN_ov4_020bdf30

	arm_func_start FUN_ov4_020bdf64
FUN_ov4_020bdf64: ; 0x020BDF64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x18]
	cmp r6, #0
	ldrne r1, _020BDFB0 ; =0x020D7CE4
	ldrne r7, _020BDFB4 ; =0x020D7CE4
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x18
	mov r4, #0xc
_020BDF8C:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020BDF8C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BDFB0: .word 0x020D7CE4
_020BDFB4: .word 0x020D7CE4
	arm_func_end FUN_ov4_020bdf64

	arm_func_start FUN_ov4_020bdfb8
FUN_ov4_020bdfb8: ; 0x020BDFB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x18
	mov r4, #0xc
_020BDFC8:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _020BDFC8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020bdfb8

	arm_func_start FUN_ov4_020bdfe0
FUN_ov4_020bdfe0: ; 0x020BDFE0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x44]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r5, [r0, #0x18]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Char
	bl GX_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov4_020bdfe0

	arm_func_start FUN_ov4_020be044
FUN_ov4_020be044: ; 0x020BE044
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r0, [r10, #0x10]
	mov r8, #0
	add r9, r0, #1
	cmp r9, #4
	addge sp, sp, #0x10
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0x4000000
	mov r4, #2
	mov r7, #1
	mov r6, r5
	mov r11, r8
_020BE07C:
	cmp r9, #1
	beq _020BE098
	cmp r9, #2
	beq _020BE0D4
	cmp r9, #3
	beq _020BE128
	b _020BE134
_020BE098:
	ldr r0, [r10, #0x3c]
	cmp r0, #0
	beq _020BE134
	ldr r3, [r6]
	mov r2, r11
	mov r0, r3, lsl #0xc
	mov r1, r3, lsl #0x1d
	str r3, [sp, #4]
	mov r0, r0, lsr #0x1c
	mov r1, r1, lsr #0x1d
	mov r8, r7
	ldr r3, [sp, #4]
	bl GX_SetGraphicsMode
	str r7, [r10, #0x44]
	b _020BE134
_020BE0D4:
	ldr r0, [r10, #0x40]
	cmp r0, #0
	beq _020BE134
	ldr r3, [r5]
	mov r2, #0
	mov r0, r3, lsl #0xc
	mov r1, r3, lsl #0x1d
	str r3, [sp]
	ldr r3, [sp]
	mov r0, r0, lsr #0x1c
	mov r1, r1, lsr #0x1d
	bl GX_SetGraphicsMode
	cmp r9, #0
	beq _020BE11C
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
_020BE11C:
	mov r8, #1
	str r4, [r10, #0x44]
	b _020BE134
_020BE128:
	mov r0, r10
	bl FUN_ov4_020bde7c
	mov r8, #1
_020BE134:
	cmp r8, #0
	addne sp, sp, #0x10
	strne r9, [r10, #0x10]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r9, r9, #1
	cmp r9, #4
	blt _020BE07C
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov4_020be044

	arm_func_start FUN_ov4_020be158
FUN_ov4_020be158: ; 0x020BE158
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _020BE178
	cmp r1, #2
	beq _020BE17C
	b _020BE194
_020BE178:
	b _020BE17C
_020BE17C:
	bl FUN_ov4_020bdfe0
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r1]
_020BE194:
	mov r1, #3
	mov r0, r4
	str r1, [r4, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020be158

	arm_func_start FUN_ov4_020be1b0
FUN_ov4_020be1b0: ; 0x020BE1B0
	ldr r12, _020BE1D0 ; =FUN_ov4_020bdf30
	mov r1, #0
	str r1, [r0, #0xc]
	strb r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	bx r12
_020BE1D0: .word FUN_ov4_020bdf30
	arm_func_end FUN_ov4_020be1b0

	arm_func_start FUN_ov4_020be1d4
FUN_ov4_020be1d4: ; 0x020BE1D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020BE1EC: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _020BE208 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _020BE230 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _020BE24C ; case 6
_020BE208:
	add r0, r4, #0x18
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov4_020bdf64
	mov r0, #2
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BE230:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r0, #4
	streq r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BE24C:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #3
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov4_020be158
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020be1d4

	arm_func_start FUN_ov4_020be278
FUN_ov4_020be278: ; 0x020BE278
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020BE290: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _020BE2AC ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
_020BE2AC:
	bl FUN_ov4_020be044
	mov r0, r4
	bl FUN_ov4_020be158
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020be278

	arm_func_start FUN_ov4_020be2bc
FUN_ov4_020be2bc: ; 0x020BE2BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #3
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov4_020bdfb8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020be2bc

	arm_func_start FUN_ov4_020be2dc
FUN_ov4_020be2dc: ; 0x020BE2DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020be2dc

	arm_func_start FUN_ov4_020be2f0
FUN_ov4_020be2f0: ; 0x020BE2F0
	str r1, [r0, #0x3c]
	str r2, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov4_020be2f0

	arm_func_start FUN_ov4_020be2fc
FUN_ov4_020be2fc: ; 0x020BE2FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020BE370 ; =0x0209A4E0
	mov r5, #0xf0
	mov r7, #0
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MIi_CpuClearFast
	ldr r4, _020BE374 ; =0x0209AEC0
	mov r1, r6
	mov r0, r4
	bl FUN_02046b54
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_02046a20
	ldr r0, _020BE378 ; =0x020DBEC0
	mov r1, #1
	strb r7, [r0, #2]
	strb r1, [r0, #3]
	bl FUN_ov16_020f054c
	ldr r0, [r8, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE370: .word unk_0209A4E0
_020BE374: .word unk_0209AEC0
_020BE378: .word ov4_020DBEC0
	arm_func_end FUN_ov4_020be2fc

	arm_func_start FUN_ov4_020be37c
FUN_ov4_020be37c: ; 0x020BE37C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _020BE3D8 ; =0x0209A4E0
	mov r5, #0xf0
	mov r7, r0
	mov r1, r6
	mov r2, r5
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r4, _020BE3DC ; =0x0209AEC0
	mov r1, r6
	mov r0, r4
	bl FUN_02046b54
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_02046a20
	ldr r0, [r7, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE3D8: .word unk_0209A4E0
_020BE3DC: .word unk_0209AEC0
	arm_func_end FUN_ov4_020be37c

	arm_func_start FUN_ov4_020be3e0
FUN_ov4_020be3e0: ; 0x020BE3E0
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x30]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020be3e0

	arm_func_start FUN_ov4_020be400
FUN_ov4_020be400: ; 0x020BE400
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [r0, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020BE44C ; =0x0209AEC0
	ldr r4, _020BE450 ; =0x0209A4E0
	mov r0, r5
	mov r1, r4
	bl FUN_02046b54
	mov r0, r5
	mov r1, r4
	mov r2, #0xf0
	bl FUN_02046a20
	ldmfd sp!, {r3, r4, r5, pc}
_020BE44C: .word unk_0209AEC0
_020BE450: .word unk_0209A4E0
	arm_func_end FUN_ov4_020be400

	arm_func_start FUN_ov4_020be454
FUN_ov4_020be454: ; 0x020BE454
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020BE6D0 ; =0x0209A454
	mov r7, r0
	ldrb r0, [r4, #0x81]
	mov r6, #0
	cmp r0, #0
	bne _020BE474
	bl FUN_ov16_020efa4c
_020BE474:
	mov r0, r7
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xc]
	blx r2
	ldr r1, _020BE6D4 ; =0x020DBEC0
	str r6, [r7, #0x80]
	str r6, [r7, #0x84]
	str r6, [r7, #0x94]
	str r6, [r7, #0x98]
	mov r5, #1
	strb r5, [r1]
	mov r0, r7
	strb r5, [r1, #1]
	bl FUN_02041b04
	mov r0, r7
	mov r1, r6
	mov r2, r6
	bl FUN_02041f74
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_02041f74
	add r0, r7, #0x1000
	strb r6, [r0, #0x958]
	ldrb r0, [r4, #0x83]
	mov r1, r0, lsl #0x1d
	movs r1, r1, lsr #0x1d
	beq _020BE538
	bl FUN_ov16_020f47fc
	mov r0, r5
	bl FUN_ov16_020f3f60
	ldr r0, _020BE6D8 ; =0x020A0640
	mov r1, #3
	strb r5, [r0, #0x1a]
	strb r1, [r0, #0x19]
	mov r2, #6
	mov r0, r7
	mov r1, r6
	str r2, [r4, #0x24]
	mov r2, #0xd
	bl FUN_02041eac
	ldrb r1, [r4, #0x83]
	ldr r0, _020BE6DC ; =0x020A0B00
	mov r1, r1, lsl #0x1d
	mov r1, r1, lsr #0x1d
	bl FUN_0207477c
	str r6, [r7, #0x90]
	b _020BE5E0
_020BE538:
	mov r0, r0, lsl #0x1a
	movs r0, r0, lsr #0x1d
	beq _020BE58C
	bl FUN_ov16_020f47fc
	mov r0, r5
	bl FUN_ov16_020f3f60
	ldr r0, _020BE6D8 ; =0x020A0640
	mov r2, #6
	strb r6, [r0, #0x1a]
	strb r5, [r0, #0x19]
	mov r0, r7
	mov r1, r6
	str r2, [r4, #0x24]
	mov r2, #0xd
	bl FUN_02041eac
	ldrb r1, [r4, #0x83]
	ldr r0, _020BE6DC ; =0x020A0B00
	mov r1, r1, lsl #0x1a
	mov r1, r1, lsr #0x1d
	bl FUN_0207477c
	b _020BE5E0
_020BE58C:
	ldrb r0, [r4, #0x81]
	cmp r0, #0
	beq _020BE5BC
	mov r0, r7
	mov r1, r6
	mov r2, #0xe
	bl FUN_02041eac
	mov r0, r7
	mov r1, r5
	mov r2, #0xf
	bl FUN_02041eac
	b _020BE5E0
_020BE5BC:
	mov r8, #0xa
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_02041eac
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl FUN_02041eac
_020BE5E0:
	mov r1, #0
	ldr r0, _020BE6D8 ; =0x020A0640
	strb r1, [r4, #0x81]
	ldrb r0, [r0, #0xaf]
	cmp r0, #0
	beq _020BE618
	mov r5, #0x18
	mov r0, r7
	mov r2, r5
	bl FUN_02041eac
	mov r0, r7
	mov r2, r5
	mov r1, #1
	bl FUN_02041eac
_020BE618:
	ldr r0, _020BE6D8 ; =0x020A0640
	strb r6, [r0, #0xaf]
	strb r6, [r7, #0x89]
	strb r6, [r7, #0x88]
	ldrb r0, [r4, #0x80]
	cmp r0, #0
	beq _020BE63C
	bl FUN_ov16_020f13d4
	b _020BE640
_020BE63C:
	bl FUN_ov16_020f1320
_020BE640:
	ldr r6, _020BE6E0 ; =0x0209AC44
	mov r2, #0
	strb r2, [r4, #0x80]
	ldr r5, _020BE6E4 ; =0x0209A3E0
	sub r4, r2, #1
	mov r0, r6
	mov r3, r2
	mov r1, #5
	str r4, [r5, #0x2c]
	bl FUN_0202b838
	mov r4, #0x14
	b _020BE678
_020BE670:
	mov r0, r4
	bl OS_Sleep
_020BE678:
	mov r0, r6
	bl FUN_0202b7b4
	cmp r0, #0
	beq _020BE670
	mov r5, #0x14
	ldr r4, _020BE6E0 ; =0x0209AC44
	b _020BE69C
_020BE694:
	mov r0, r5
	bl OS_Sleep
_020BE69C:
	mov r0, r4
	bl FUN_0202b7f0
	cmp r0, #0
	beq _020BE694
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r2, _020BE6E8 ; =0x00001450
	add r0, r7, #0x9c
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE6D0: .word unk_0209A454
_020BE6D4: .word ov4_020DBEC0
_020BE6D8: .word unk_020A0640
_020BE6DC: .word unk_020A0B00
_020BE6E0: .word unk_0209AC44
_020BE6E4: .word unk_0209A3E0
_020BE6E8: .word 0x00001450
	arm_func_end FUN_ov4_020be454

	arm_func_start FUN_ov4_020be6ec
FUN_ov4_020be6ec: ; 0x020BE6EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BE714
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r4
	bl FUN_ov4_020be37c
_020BE714:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BE72C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BE72C:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0x28]
	blx r2
	ldr r0, _020BE774 ; =0x0209A454
	mov r1, #0
	strb r1, [r0, #0x80]
	strb r1, [r0, #0x81]
	strb r1, [r0, #0x82]
	ldrb r1, [r0, #0x83]
	bic r1, r1, #7
	and r1, r1, #0xff
	bic r1, r1, #0x38
	and r1, r1, #0xff
	bic r1, r1, #0x40
	strb r1, [r0, #0x83]
	ldmfd sp!, {r4, pc}
_020BE774: .word unk_0209A454
	arm_func_end FUN_ov4_020be6ec

	arm_func_start FUN_ov4_020be778
FUN_ov4_020be778: ; 0x020BE778
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4]
	cmp r1, #0x62
	bgt _020BE87C
	bge _020BE9CC
	cmp r1, #0x5c
	bgt _020BE858
	bge _020BEA24
	cmp r1, #0x5a
	bgt _020BE84C
	bge _020BE96C
	sub r0, r1, #0xb
	cmp r0, #0x1c
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020BE7D8: ; jump table
	b _020BEB4C ; case 0
	b _020BE8FC ; case 1
	b _020BE918 ; case 2
	b _020BEB30 ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, pc} ; case 5
	b _020BEB84 ; case 6
	b _020BE934 ; case 7
	ldmfd sp!, {r4, r5, r6, pc} ; case 8
	ldmfd sp!, {r4, r5, r6, pc} ; case 9
	ldmfd sp!, {r4, r5, r6, pc} ; case 10
	ldmfd sp!, {r4, r5, r6, pc} ; case 11
	ldmfd sp!, {r4, r5, r6, pc} ; case 12
	b _020BEB10 ; case 13
	b _020BEBA0 ; case 14
	b _020BEB68 ; case 15
	b _020BEBBC ; case 16
	ldmfd sp!, {r4, r5, r6, pc} ; case 17
	b _020BEBD8 ; case 18
	b _020BEBF4 ; case 19
	b _020BEC10 ; case 20
	ldmfd sp!, {r4, r5, r6, pc} ; case 21
	b _020BEC48 ; case 22
	b _020BEA44 ; case 23
	b _020BEA64 ; case 24
	b _020BEA84 ; case 25
	b _020BEAA4 ; case 26
	b _020BEAC4 ; case 27
	b _020BEAF0 ; case 28
_020BE84C:
	cmp r1, #0x5b
	beq _020BEA08
	ldmfd sp!, {r4, r5, r6, pc}
_020BE858:
	cmp r1, #0x5f
	bgt _020BE870
	bge _020BE8D0
	cmp r1, #0x5d
	beq _020BE9EC
	ldmfd sp!, {r4, r5, r6, pc}
_020BE870:
	cmp r1, #0x61
	beq _020BEC64
	ldmfd sp!, {r4, r5, r6, pc}
_020BE87C:
	cmp r1, #0x75
	bgt _020BE8AC
	bge _020BEC2C
	cmp r1, #0x65
	bgt _020BE8A0
	bge _020BE9AC
	cmp r1, #0x64
	beq _020BE98C
	ldmfd sp!, {r4, r5, r6, pc}
_020BE8A0:
	cmp r1, #0x73
	beq _020BE950
	ldmfd sp!, {r4, r5, r6, pc}
_020BE8AC:
	cmp r1, #0x79
	bgt _020BE8C4
	bge _020BECAC
	cmp r1, #0x78
	beq _020BECC8
	ldmfd sp!, {r4, r5, r6, pc}
_020BE8C4:
	cmp r1, #0x7c
	beq _020BEC90
	ldmfd sp!, {r4, r5, r6, pc}
_020BE8D0:
	mov r0, #0x1c0
	bl FUN_0201e014
	movs r6, r0
	beq _020BE8F4
	ldr r1, _020BECE4 ; =0x0211D784
	add r0, r6, #0x194
	str r1, [r6]
	bl FUN_ov55_0211d128 ; may be ov82
	str r5, [r6, #4]
_020BE8F4:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE8FC:
	mov r0, #0x210
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BECE8 ; =0x0211F2D0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE918:
	mov r0, #0x210
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BECEC ; =0x0211F494
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE934:
	mov r0, #0x214
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BECF0 ; =0x0211F544
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE950:
	ldr r0, _020BECF4 ; =0x000034C8
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BECF8 ; =0x0211FFC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE96C:
	ldr r0, _020BECFC ; =0x000010AC
	bl FUN_0201e014
	cmp r0, #0
	beq _020BE984
	mov r1, r5
	bl FUN_ov57_0211f8f8
_020BE984:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE98C:
	mov r0, #0xd0
	bl FUN_0201e014
	cmp r0, #0
	beq _020BE9A4
	mov r1, r5
	bl FUN_ov54_0211b0b0
_020BE9A4:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE9AC:
	mov r0, #0x58
	bl FUN_0201e014
	cmp r0, #0
	beq _020BE9C4
	mov r1, r5
	bl FUN_ov54_0211bf6c ; may be ov65
_020BE9C4:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE9CC:
	mov r0, #0x1e4
	bl FUN_0201e014
	cmp r0, #0
	beq _020BE9E4
	mov r1, r5
	bl FUN_ov45_0211d248 ; may be ov67
_020BE9E4:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BE9EC:
	ldr r0, _020BED00 ; =0x00001618
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED04 ; =0x02121330
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA08:
	ldr r0, _020BED08 ; =0x00001218
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED0C ; =0x0211EF40
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA24:
	ldr r0, _020BED10 ; =0x000020FC
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEA3C
	mov r1, r5
	bl FUN_ov63_021223fc
_020BEA3C:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA44:
	mov r0, #0x68
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEA5C
	mov r1, r5
	bl FUN_ov23_0211a060 ; may be ov24 ov26 ov27 ov28 ov37 ov61
_020BEA5C:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA64:
	mov r0, #0x54
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEA7C
	mov r1, r5
	bl FUN_ov23_0211a060 ; may be ov24 ov26 ov27 ov28 ov37 ov61
_020BEA7C:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA84:
	mov r0, #0x164
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEA9C
	mov r1, r5
	bl FUN_ov23_0211a060 ; may be ov24 ov26 ov27 ov28 ov37 ov61
_020BEA9C:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEAA4:
	mov r0, #0xb8
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEABC
	mov r1, r5
	bl FUN_ov25_0211a5d0 ; may be ov40 ov83 ov85
_020BEABC:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEAC4:
	mov r0, #0x100
	bl FUN_0201e014
	movs r6, r0
	beq _020BEAE8
	ldr r1, _020BED14 ; =0x0211CD00
	add r0, r6, #0x58
	str r1, [r6]
	bl FUN_ov16_02110558
	str r5, [r6, #4]
_020BEAE8:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEAF0:
	mov r0, #0xf4
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEB08
	mov r1, r5
	bl FUN_ov24_0211acd8 ; may be ov53 ov61
_020BEB08:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEB10:
	mov r0, #0xe0
	bl FUN_0201e014
	cmp r0, #0
	beq _020BEB28
	mov r1, r5
	bl FUN_ov37_0211b2b0 ; may be ov45
_020BEB28:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEB30:
	mov r0, #0x148
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED18 ; =0x0211D4B8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEB4C:
	mov r0, #0x28
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED1C ; =0x0211A71C
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEB68:
	mov r0, #0x128
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED20 ; =0x0211BFC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEB84:
	mov r0, #0x19c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED24 ; =0x0211BEC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEBA0:
	mov r0, #0x210
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED28 ; =0x020DB1B4
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEBBC:
	ldr r0, _020BED2C ; =0x00000C4C
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED30 ; =0x02123060
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEBD8:
	ldr r0, _020BED34 ; =0x0000092C
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED38 ; =0x0211D72C
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEBF4:
	mov r0, #0x950
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED3C ; =0x0211C0B8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEC10:
	mov r0, #0x2a0
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED40 ; =0x0211D37C
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEC2C:
	ldr r0, _020BED44 ; =0x00000948
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED48 ; =0x0211CDC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEC48:
	mov r0, #0xb4
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED4C ; =0x0211AD08
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEC64:
	ldr r0, _020BED50 ; =0x000033E8
	bl FUN_0201e014
	movs r6, r0
	beq _020BEC88
	ldr r1, _020BED54 ; =0x02120110
	add r0, r6, #0x33c0
	str r1, [r6]
	bl FUN_0206c0d8
	str r5, [r6, #4]
_020BEC88:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BEC90:
	ldr r0, _020BED58 ; =0x00005638
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED5C ; =0x0211C9A0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BECAC:
	ldr r0, _020BED60 ; =0x00000B7C
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED64 ; =0x02122B44
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BECC8:
	ldr r0, _020BED68 ; =0x000004E4
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BED6C ; =0x0211BEE0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BECE4: .word 0x0211D784
_020BECE8: .word 0x0211F2D0
_020BECEC: .word 0x0211F494
_020BECF0: .word 0x0211F544
_020BECF4: .word 0x000034C8
_020BECF8: .word 0x0211FFC0
_020BECFC: .word 0x000010AC
_020BED00: .word 0x00001618
_020BED04: .word 0x02121330
_020BED08: .word 0x00001218
_020BED0C: .word 0x0211EF40
_020BED10: .word 0x000020FC
_020BED14: .word 0x0211CD00
_020BED18: .word 0x0211D4B8
_020BED1C: .word 0x0211A71C
_020BED20: .word 0x0211BFC0
_020BED24: .word 0x0211BEC0
_020BED28: .word ov4_020DB1B4
_020BED2C: .word 0x00000C4C
_020BED30: .word 0x02123060
_020BED34: .word 0x0000092C
_020BED38: .word 0x0211D72C
_020BED3C: .word 0x0211C0B8
_020BED40: .word 0x0211D37C
_020BED44: .word 0x00000948
_020BED48: .word 0x0211CDC0
_020BED4C: .word 0x0211AD08
_020BED50: .word 0x000033E8
_020BED54: .word 0x02120110
_020BED58: .word 0x00005638
_020BED5C: .word 0x0211C9A0
_020BED60: .word 0x00000B7C
_020BED64: .word 0x02122B44
_020BED68: .word 0x000004E4
_020BED6C: .word 0x0211BEE0
	arm_func_end FUN_ov4_020be778

	arm_func_start FUN_ov4_020bed70
FUN_ov4_020bed70: ; 0x020BED70
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4]
	cmp r1, #0x5d
	bgt _020BEE20
	bge _020BEE64
	cmp r1, #0x5a
	bgt _020BEE04
	bge _020BEE64
	cmp r1, #0x10
	bgt _020BEDC4
	beq _020BEE64
	ldmfd sp!, {r3, r4, r5, pc}
_020BEDC4:
	sub r0, r1, #0x1c
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020BEDD4: ; jump table
	b _020BEE80 ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _020BEE9C ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	ldmfd sp!, {r3, r4, r5, pc} ; case 7
	b _020BEEB8 ; case 8
	b _020BEED4 ; case 9
	b _020BEEF0 ; case 10
	b _020BEF0C ; case 11
_020BEE04:
	cmp r1, #0x5b
	bgt _020BEE14
	beq _020BEE64
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE14:
	cmp r1, #0x5c
	beq _020BEE64
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE20:
	cmp r1, #0x73
	bgt _020BEE48
	bge _020BEE64
	cmp r1, #0x61
	bgt _020BEE3C
	beq _020BEE64
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE3C:
	cmp r1, #0x62
	beq _020BEE64
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE48:
	cmp r1, #0x78
	bgt _020BEE58
	beq _020BEE64
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE58:
	cmp r1, #0x79
	beq _020BEF28
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE64:
	mov r0, #0x3d4
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF44 ; =0x0212A6B8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE80:
	ldr r0, _020BEF48 ; =0x000004D8
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF4C ; =0x02126D30
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEE9C:
	mov r0, #0xec
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF50 ; =0x021256D4
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEEB8:
	mov r0, #0x1c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF54 ; =0x021250C0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEED4:
	mov r0, #0x1c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF58 ; =0x021250C0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEEF0:
	mov r0, #0x50
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF5C ; =0x021256DC
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEF0C:
	mov r0, #0x60
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF60 ; =0x02125680
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEF28:
	mov r0, #0x2cc
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BEF64 ; =0x02126430
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BEF44: .word 0x0212A6B8
_020BEF48: .word 0x000004D8
_020BEF4C: .word 0x02126D30
_020BEF50: .word 0x021256D4
_020BEF54: .word 0x021250C0
_020BEF58: .word 0x021250C0
_020BEF5C: .word 0x021256DC
_020BEF60: .word 0x02125680
_020BEF64: .word 0x02126430
	arm_func_end FUN_ov4_020bed70

	arm_func_start FUN_ov4_020bef68
FUN_ov4_020bef68: ; 0x020BEF68
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x280
	mov r6, r0
	add r0, r6, #0x3000
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _020BF00C
	ldr r7, _020BF348 ; =0x020D7CFC
	add r5, sp, #0
	mov r4, #0x28
_020BEF90:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020BEF90
	add r0, r6, #0x184
	add lr, r0, #0x1800
	add r1, r6, #0x234
	add r2, r6, #0x278
	add r8, r2, #0x1800
	add r3, r6, #0x5f0
	add r7, r3, #0x2000
	add r5, r6, #0x1bc
	add r12, r1, #0x1800
	mov r4, #0x280
	add r5, r5, #0x2000
	ldr r0, _020BF34C ; =0x0209A250
	mov r1, r4
	mov r2, #0x13
	mov r3, #1
	str lr, [sp, #4]
	str r12, [sp, #0x54]
	str r8, [sp, #0x74]
	str r7, [sp, #0x84]
	str r5, [sp, #0xb4]
	bl FUN_0202de58
	mov r1, r0
	add r3, r6, #0x3000
	add r0, sp, #0
	mov r2, r4
	str r1, [r3, #0x70]
	bl MI_CpuCopy8
_020BF00C:
	add r0, r6, #0x3000
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _020BF098
	ldr r5, _020BF350 ; =0x020DBEC0
	ldr r4, [r5, #4]
	tst r4, #1
	bne _020BF068
	add r0, r6, #0x204
	add r1, r6, #0x2cc
	add r2, r6, #0x360
	add r3, r6, #0x14
	orr r12, r4, #1
	ldr r4, _020BF354 ; =0x020D95C4
	add r0, r0, #0x2000
	str r0, [r4, #4]
	add r0, r1, #0x2000
	str r0, [r4, #0x14]
	add r0, r2, #0x2000
	str r0, [r4, #0x34]
	add r0, r3, #0x3000
	str r0, [r4, #0x44]
	str r12, [r5, #4]
_020BF068:
	mov r4, #0x150
	ldr r0, _020BF34C ; =0x0209A250
	mov r1, r4
	mov r2, #0x13
	mov r3, #1
	bl FUN_0202de58
	mov r1, r0
	add r3, r6, #0x3000
	ldr r0, _020BF354 ; =0x020D95C4
	mov r2, r4
	str r1, [r3, #0x74]
	bl MI_CpuCopy8
_020BF098:
	mov r0, r6
	bl FUN_0204201c
	mov r4, r0
	mov r0, r6
	bl FUN_02041fec
	cmp r4, r0
	bne _020BF0C0
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _020BF1D4
_020BF0C0:
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020BF0E0
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BF1D4
_020BF0E0:
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020BF124
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r6
	bl FUN_ov4_020be37c
	ldr r0, [r6, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r6, #0x3000
	ldr r2, [r0, #0x70]
	mov r0, r6
	ldr r1, [r6, #0x80]
	bl FUN_02041d14
_020BF124:
	add r0, r6, #0x3000
	mov r1, #0
	str r1, [r6, #0x80]
	ldr r5, [r0, #0x70]
	b _020BF16C
_020BF138:
	ldr r0, [r5]
	cmp r4, r0
	bne _020BF168
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _020BF15C
	mov r0, r6
	mov r1, r5
	bl FUN_ov4_020be778
_020BF15C:
	ldr r0, [r5, #4]
	str r0, [r6, #0x80]
	b _020BF178
_020BF168:
	add r5, r5, #0x10
_020BF16C:
	ldr r0, [r5]
	cmp r0, #0
	bne _020BF138
_020BF178:
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02041f74
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020BF1D4
	cmp r4, #1
	beq _020BF1B4
	cmp r4, #0xa
	ldreq r0, _020BF350 ; =0x020DBEC0
	moveq r1, #1
	streqb r1, [r0]
	b _020BF1BC
_020BF1B4:
	ldr r0, _020BF350 ; =0x020DBEC0
	strb r5, [r0]
_020BF1BC:
	ldr r0, [r6, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r0, r6
	bl FUN_ov4_020be2fc
_020BF1D4:
	mov r0, r6
	bl FUN_02042084
	mov r4, r0
	mov r0, r6
	bl FUN_02042054
	cmp r4, r0
	bne _020BF1FC
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _020BF2D4
_020BF1FC:
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020BF21C
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BF2D4
_020BF21C:
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020BF258
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r6, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r6, #0x3000
	ldr r1, [r6, #0x84]
	ldr r2, [r0, #0x74]
	mov r0, r6
	bl FUN_02041d14
_020BF258:
	add r0, r6, #0x3000
	mov r1, #0
	str r1, [r6, #0x84]
	ldr r5, [r0, #0x74]
	b _020BF2A0
_020BF26C:
	ldr r0, [r5]
	cmp r4, r0
	bne _020BF29C
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _020BF290
	mov r0, r6
	mov r1, r5
	bl FUN_ov4_020bed70
_020BF290:
	ldr r0, [r5, #4]
	str r0, [r6, #0x84]
	b _020BF2AC
_020BF29C:
	add r5, r5, #0x10
_020BF2A0:
	ldr r0, [r5]
	cmp r0, #0
	bne _020BF26C
_020BF2AC:
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_02041f74
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020BF2D4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BF2D4:
	mov r0, r6
	bl FUN_02041fec
	cmp r0, #0x12
	bne _020BF300
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020BF300
	ldr r2, [r0]
	ldr r1, _020BF358 ; =0x020A11DC
	ldr r2, [r2, #0x98]
	blx r2
_020BF300:
	mov r0, r6
	bl FUN_02041fec
	cmp r0, #0x13
	addne sp, sp, #0x280
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x80]
	cmp r0, #0
	addeq sp, sp, #0x280
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r6, #0x1bc
	add r0, r0, #0x2000
	ldr r3, [r0]
	ldr r1, [r6, #0x94]
	ldr r2, [r6, #0x98]
	ldr r3, [r3, #0x6c]
	blx r3
	add sp, sp, #0x280
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BF348: .word 0x020D7CFC
_020BF34C: .word unk_0209A250
_020BF350: .word ov4_020DBEC0
_020BF354: .word ov4_020D95C4
_020BF358: .word unk_020A11DC
	arm_func_end FUN_ov4_020bef68

	arm_func_start FUN_ov4_020bf35c
FUN_ov4_020bf35c: ; 0x020BF35C
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BF374
	mov r0, #1
	bl FUN_ov16_020f3f60
_020BF374:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #1
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bf35c

	arm_func_start FUN_ov4_020bf38c
FUN_ov4_020bf38c: ; 0x020BF38C
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BF3A0
	bl FUN_ov16_020f47fc
_020BF3A0:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020BF3B0
	bl FUN_ov16_020f51a8
_020BF3B0:
	cmp r4, #2
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bf38c

	arm_func_start FUN_ov4_020bf3cc
FUN_ov4_020bf3cc: ; 0x020BF3CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r3, #0x34
	mul r4, r2, r3
	add r5, r0, #0x9c
	mov r10, r1
	mov r0, r10
	add r7, r5, r4
	bl FUN_0206cbf8
	strh r0, [r5, r4]
	mov r0, r10
	bl FUN_0206dcd4
	ldrh r0, [r0, #0xe]
	mov r4, #0
	strh r0, [r7, #2]
_020BF404:
	mov r0, r10
	bl FUN_0206dcd4
	add r1, r0, r4, lsl #1
	add r0, r7, r4, lsl #1
	ldrh r1, [r1, #0x10]
	add r4, r4, #1
	cmp r4, #4
	strh r1, [r0, #6]
	blt _020BF404
	mov r8, #0
	mov r6, r8
_020BF430:
	mov r5, r8, lsl #1
	mov r9, r6
	add r4, r7, r5, lsl #1
_020BF43C:
	mov r0, r10
	bl FUN_0206dcd4
	add r0, r0, r5, lsl #1
	add r1, r0, r9, lsl #1
	add r0, r4, r9, lsl #1
	ldrh r1, [r1, #0x1c]
	add r9, r9, #1
	cmp r9, #6
	strh r1, [r0, #0xe]
	blt _020BF43C
	add r8, r8, #1
	cmp r8, #2
	blt _020BF430
	mov r4, #0
_020BF474:
	mov r0, r10
	bl FUN_0206dcd4
	add r1, r0, r4, lsl #1
	add r0, r7, r4, lsl #1
	ldrh r1, [r1, #0x38]
	add r4, r4, #1
	cmp r4, #6
	strh r1, [r0, #0x26]
	blt _020BF474
	mov r0, r10
	bl FUN_0206dcd4
	ldrh r0, [r0, #0x5a]
	strh r0, [r7, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov4_020bf3cc

	arm_func_start FUN_ov4_020bf4ac
FUN_ov4_020bf4ac: ; 0x020BF4AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0
	mov r10, r0
	mov r6, r5
	b _020BF4F4
_020BF4C0:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020BF4EC
	bl FUN_0206d64c
	cmp r0, #0
	beq _020BF4EC
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl FUN_ov4_020bf3cc
_020BF4EC:
	add r6, r6, #1
	add r5, r5, #1
_020BF4F4:
	cmp r6, #0x64
	blt _020BF4C0
	mov r9, #0
	add r0, r10, #0xf2
	add r7, r0, #0x1400
	ldr r8, _020BF5A4 ; =0x0209BA20
	mov r6, #0x20
	ldr r5, _020BF5A8 ; =0x020A165C
	ldr r4, _020BF5AC ; =0x020A1656
	mov r11, r9
	b _020BF570
_020BF520:
	mov r0, r8
	add r1, r9, #3
	bl FUN_0205107c
	mov r2, r6
	add r1, r7, r9, lsl #5
	bl MI_CpuCopy8
	mov r3, r9, lsl #1
	add r1, r10, r9, lsl #1
	add r0, r1, #0x1500
	ldrh r2, [r5, r3]
	add r1, r1, #0x1400
	strh r2, [r0, #0x52]
	ldrh r0, [r4, r3]
	mov r2, r11
	strh r0, [r1, #0xec]
	b _020BF564
_020BF560:
	add r2, r2, #1
_020BF564:
	cmp r2, #0x10
	blt _020BF560
	add r9, r9, #1
_020BF570:
	cmp r9, #3
	blt _020BF520
	mov r3, #0
	ldr r2, _020BF5B0 ; =0x020A0700
	b _020BF598
_020BF584:
	ldrb r1, [r2, r3]
	add r0, r10, r3
	add r0, r0, #0x1000
	strb r1, [r0, #0x558]
	add r3, r3, #1
_020BF598:
	cmp r3, #0x400
	blt _020BF584
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF5A4: .word unk_0209BA20
_020BF5A8: .word unk_020A165C
_020BF5AC: .word unk_020A1656
_020BF5B0: .word unk_020A0700
	arm_func_end FUN_ov4_020bf4ac

	arm_func_start FUN_ov4_020bf5b4
FUN_ov4_020bf5b4: ; 0x020BF5B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r3, #0x34
	mul r5, r2, r3
	add r6, r0, #0x9c
	mov r4, r1
	mov r0, r4
	add r8, r6, r5
	mov r7, #0
	bl FUN_0206cbf8
	ldrh r1, [r6, r5]
	cmp r1, r0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl FUN_0206dcd4
	ldrh r1, [r8, #2]
	ldrh r0, [r0, #0xe]
	cmp r1, r0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r5, r7
_020BF608:
	mov r0, r4
	bl FUN_0206dcd4
	add r1, r8, r5, lsl #1
	add r0, r0, r5, lsl #1
	ldrh r1, [r1, #6]
	ldrh r0, [r0, #0x10]
	cmp r1, r0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r5, r5, #1
	cmp r5, #4
	blt _020BF608
	mov r9, #0
_020BF63C:
	mov r6, r9, lsl #1
	mov r10, r7
	add r5, r8, r6, lsl #1
_020BF648:
	mov r0, r4
	bl FUN_0206dcd4
	add r0, r0, r6, lsl #1
	add r1, r5, r10, lsl #1
	add r0, r0, r10, lsl #1
	ldrh r1, [r1, #0xe]
	ldrh r0, [r0, #0x1c]
	cmp r1, r0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r10, r10, #1
	cmp r10, #6
	blt _020BF648
	add r9, r9, #1
	cmp r9, #2
	blt _020BF63C
	mov r5, #0
_020BF68C:
	mov r0, r4
	bl FUN_0206dcd4
	add r1, r8, r5, lsl #1
	add r0, r0, r5, lsl #1
	ldrh r1, [r1, #0x26]
	ldrh r0, [r0, #0x38]
	cmp r1, r0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r5, r5, #1
	cmp r5, #6
	blt _020BF68C
	mov r0, r4
	bl FUN_0206dcd4
	ldrh r1, [r8, #4]
	ldrh r0, [r0, #0x5a]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov4_020bf5b4

	arm_func_start FUN_ov4_020bf6dc
FUN_ov4_020bf6dc: ; 0x020BF6DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, #0
	mov r8, r0
	mov r6, r5
	b _020BF730
_020BF6F0:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020BF728
	bl FUN_0206d64c
	cmp r0, #0
	beq _020BF728
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov4_020bf5b4
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BF728:
	add r6, r6, #1
	add r5, r5, #1
_020BF730:
	cmp r6, #0x64
	blt _020BF6F0
	add r0, r8, #0xf2
	mov r7, #0
	add r5, r0, #0x1400
	ldr r6, _020BF80C ; =0x0209BA20
	mov r4, #0x20
	ldr r10, _020BF810 ; =0x020A165C
	ldr r9, _020BF814 ; =0x020A1656
	b _020BF7C8
_020BF758:
	mov r0, r6
	add r1, r7, #3
	bl FUN_0205107c
	mov r2, r4
	add r1, r5, r7, lsl #5
	bl FUN_020219ac
	cmp r0, #0
	bne _020BF7A8
	add r3, r8, r7, lsl #1
	mov r0, r7, lsl #1
	add r1, r3, #0x1500
	ldrh r2, [r1, #0x52]
	ldrh r1, [r10, r0]
	cmp r2, r1
	bne _020BF7A8
	add r1, r3, #0x1400
	ldrh r1, [r1, #0xec]
	ldrh r0, [r9, r0]
	cmp r1, r0
	beq _020BF7C4
_020BF7A8:
	mov r0, #0
	b _020BF7B4
_020BF7B0:
	add r0, r0, #1
_020BF7B4:
	cmp r0, #0x10
	blt _020BF7B0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BF7C4:
	add r7, r7, #1
_020BF7C8:
	cmp r7, #3
	blt _020BF758
	mov r3, #0
	ldr r2, _020BF818 ; =0x020A0700
	b _020BF7FC
_020BF7DC:
	add r0, r8, r3
	add r0, r0, #0x1000
	ldrb r1, [r2, r3]
	ldrb r0, [r0, #0x558]
	cmp r0, r1
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r3, r3, #1
_020BF7FC:
	cmp r3, #0x400
	blt _020BF7DC
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BF80C: .word unk_0209BA20
_020BF810: .word unk_020A165C
_020BF814: .word unk_020A1656
_020BF818: .word unk_020A0700
	arm_func_end FUN_ov4_020bf6dc

	arm_func_start FUN_ov4_020bf81c
FUN_ov4_020bf81c: ; 0x020BF81C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r3, r0, #0x9c
	mov r0, #0x34
	mla r5, r2, r0, r3
	mov r8, r1
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r1, [r5, #2]
	bl FUN_0206de90
	mov r4, #0
_020BF844:
	mov r0, r8
	bl FUN_0206dcd4
	add r1, r5, r4, lsl #1
	ldrh r2, [r1, #6]
	mov r1, r4
	bl FUN_0206def8
	add r4, r4, #1
	cmp r4, #4
	blt _020BF844
	mov r7, #0
	mov r4, r7
_020BF870:
	mov r6, r4
	add r9, r5, r7, lsl #2
_020BF878:
	mov r0, r8
	bl FUN_0206dcd4
	add r1, r9, r6, lsl #1
	ldrh r3, [r1, #0xe]
	mov r1, r7
	mov r2, r6
	bl FUN_0206e03c
	add r6, r6, #1
	cmp r6, #6
	blt _020BF878
	add r7, r7, #1
	cmp r7, #2
	blt _020BF870
	mov r4, #0
_020BF8B0:
	mov r0, r8
	bl FUN_0206dcd4
	add r1, r5, r4, lsl #1
	ldrh r2, [r1, #0x26]
	mov r1, r4
	bl FUN_0206e354
	add r4, r4, #1
	cmp r4, #6
	blt _020BF8B0
	mov r0, r8
	bl FUN_0206dcd4
	ldrh r1, [r5, #4]
	bl FUN_0206e91c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov4_020bf81c

	arm_func_start FUN_ov4_020bf8e8
FUN_ov4_020bf8e8: ; 0x020BF8E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, #0
	mov r10, r0
	mov r6, r5
	b _020BF930
_020BF8FC:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020BF928
	bl FUN_0206d64c
	cmp r0, #0
	beq _020BF928
	mov r0, r10
	mov r1, r4
	mov r2, r5
	bl FUN_ov4_020bf81c
_020BF928:
	add r6, r6, #1
	add r5, r5, #1
_020BF930:
	cmp r6, #0x64
	blt _020BF8FC
	add r0, r10, #0xf2
	mov r9, #0
	add r7, r0, #0x1400
	ldr r8, _020BF9D4 ; =0x0209BA20
	mov r6, #0x20
	ldr r5, _020BF9D8 ; =0x020A165C
	ldr r4, _020BF9DC ; =0x020A1656
	b _020BF998
_020BF958:
	mov r0, r8
	add r1, r9, #3
	bl FUN_0205107c
	mov r1, r0
	mov r2, r6
	add r0, r7, r9, lsl #5
	bl MI_CpuCopy8
	add r2, r10, r9, lsl #1
	add r0, r2, #0x1500
	mov r3, r9, lsl #1
	ldrh r1, [r0, #0x52]
	add r0, r2, #0x1400
	add r9, r9, #1
	strh r1, [r5, r3]
	ldrh r0, [r0, #0xec]
	strh r0, [r4, r3]
_020BF998:
	cmp r9, #3
	blt _020BF958
	mov r5, #0
	ldr r4, _020BF9E0 ; =0x020A0700
	b _020BF9C8
_020BF9AC:
	add r0, r10, r5
	add r0, r0, #0x1000
	ldrb r2, [r0, #0x558]
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020eef64
	add r5, r5, #1
_020BF9C8:
	cmp r5, #0x400
	blt _020BF9AC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BF9D4: .word unk_0209BA20
_020BF9D8: .word unk_020A165C
_020BF9DC: .word unk_020A1656
_020BF9E0: .word unk_020A0700
	arm_func_end FUN_ov4_020bf8e8

	arm_func_start FUN_ov4_020bf9e4
FUN_ov4_020bf9e4: ; 0x020BF9E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x5f0
	add r0, r0, #0x2000
	bl FUN_ov4_020cc0c8
	add r0, r4, #0x15c
	add r0, r0, #0x1800
	bl FUN_0206c110
	mov r0, r4
	bl FUN_02041b00
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bf9e4

	arm_func_start FUN_ov4_020bfa1c
FUN_ov4_020bfa1c: ; 0x020BFA1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x5f0
	add r0, r0, #0x2000
	bl FUN_ov4_020cc0c8
	add r0, r4, #0x15c
	add r0, r0, #0x1800
	bl FUN_0206c110
	mov r0, r4
	bl FUN_02041b00
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bfa1c

	arm_func_start FUN_ov4_020bfa4c
FUN_ov4_020bfa4c: ; 0x020BFA4C
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020BFA70 ; =0x0209A8A0
	bl FUN_0202e958
	ldmfd sp!, {r3, pc}
_020BFA70: .word unk_0209A8A0
	arm_func_end FUN_ov4_020bfa4c

	arm_func_start FUN_ov4_020bfa74
FUN_ov4_020bfa74: ; 0x020BFA74
	stmfd sp!, {r4, lr}
	ldrh r2, [r1, #4]
	mov r4, r0
	cmp r2, #1
	bne _020BFA9C
	ldrh r0, [r1, #6]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BFA9C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _020BFAB0
	ldr r0, _020BFABC ; =0x0209A8A0
	bl FUN_0202e958
_020BFAB0:
	mov r0, #0
	strb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BFABC: .word unk_0209A8A0
	arm_func_end FUN_ov4_020bfa74

	arm_func_start FUN_ov4_020bfac0
FUN_ov4_020bfac0: ; 0x020BFAC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r2, #1
	mov r1, #0
	ldr r0, [r4, #4]
	str r2, [r4, #8]
	strb r1, [r4, #0xc]
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldr r0, _020BFB24 ; =0x02099F78
	ldr r1, _020BFB28 ; =0x020D97A0
	bl FUN_020418b0
	cmp r0, #0
	beq _020BFB04
	cmp r0, #1
	beq _020BFB14
_020BFB04:
	ldr r1, _020BFB2C ; =0x020D97A8
	add r0, r4, #0x10
	bl FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
_020BFB14:
	ldr r1, _020BFB30 ; =0x020D97B0
	add r0, r4, #0x10
	bl FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
_020BFB24: .word unk_02099F78
_020BFB28: .word ov4_020D97A0
_020BFB2C: .word ov4_020D97A8
_020BFB30: .word ov4_020D97B0
	arm_func_end FUN_ov4_020bfac0

	arm_func_start FUN_ov4_020bfb34
FUN_ov4_020bfb34: ; 0x020BFB34
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _020BFB50
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
_020BFB50:
	bl FUN_ov16_020f2aa4
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x10
	bl FUN_ov16_020f2a74
	mov r1, #0
	ldr r0, [r4, #4]
	mov r2, #0xa
	str r1, [r4, #8]
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bfb34

	arm_func_start FUN_ov4_020bfb7c
FUN_ov4_020bfb7c:
	ldr r12, _020BFB84 ; =FUN_ov16_020f2ab4
	bx r12
_020BFB84: .word FUN_ov16_020f2ab4
	arm_func_end FUN_ov4_020bfb7c

	arm_func_start FUN_ov4_020bfb88
FUN_ov4_020bfb88: ; 0x020BFB88
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02006b80
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bfb88

	arm_func_start FUN_ov4_020bfbac
FUN_ov4_020bfbac: ; 0x020BFBAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020bfbac

	arm_func_start FUN_ov4_020bfbc0
FUN_ov4_020bfbc0: ; 0x020BFBC0
	cmp r1, #3
	ldreq r0, _020BFC3C ; =0x020A0640
	moveq r2, #1
	ldrne r0, _020BFC3C ; =0x020A0640
	movne r2, #0
	strb r2, [r0, #0x1a]
	strb r2, [r0, #0x1b]
	ldr r2, _020BFC3C ; =0x020A0640
	mov r3, #0
	strb r3, [r2, #0x87]
	strb r3, [r2, #0x88]
	strb r3, [r2, #0x89]
	strb r3, [r2, #0x8b]
	strb r1, [r2, #0x19]
	ldr r0, _020BFC40 ; =0x020A1640
	strb r3, [r2, #0x18]
	strb r3, [r0, #0x245]
	ldr r0, _020BFC44 ; =0x0209A454
	mov r1, #1
	strb r1, [r0, #0x2e]
	strb r1, [r0, #0x2f]
	strb r3, [r0, #0x30]
	strb r3, [r0, #0x32]
	strb r3, [r0, #0x33]
	strb r3, [r0, #0x28]
	strb r3, [r0, #0x29]
	strb r3, [r0, #0x2a]
	strb r3, [r0, #0x2b]
	strb r3, [r2, #0x8e]
	strb r3, [r0, #0x31]
	bx lr
_020BFC3C: .word unk_020A0640
_020BFC40: .word unk_020A1640
_020BFC44: .word unk_0209A454
	arm_func_end FUN_ov4_020bfbc0

	arm_func_start FUN_ov4_020bfc48
FUN_ov4_020bfc48: ; 0x020BFC48
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r5, #6
	ldr r0, _020BFCBC ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r1, _020BFCC0 ; =0x020DBEC1
	str r5, [r4, #8]
	mov r6, #0
	ldr r5, _020BFCC4 ; =0x0209A454
	ldr r0, _020BFCC8 ; =0x0209BA20
	strb r6, [r1]
	mov r1, #4
	strb r1, [r5, #0x82]
	bl FUN_0206f5a8
	mov r0, r4
	mov r1, #1
	bl FUN_ov4_020bfbc0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r1, r6
	mov r0, #2
	str r0, [r5, #0x24]
	ldr r0, [r4, #4]
	mov r2, #0xb
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_020BFCBC: .word unk_0209AC44
_020BFCC0: .word ov4_020DBEC1
_020BFCC4: .word unk_0209A454
_020BFCC8: .word unk_0209BA20
	arm_func_end FUN_ov4_020bfc48

	arm_func_start FUN_ov4_020bfccc
FUN_ov4_020bfccc: ; 0x020BFCCC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r5, #6
	ldr r0, _020BFD38 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r1, _020BFD3C ; =0x020DBEC1
	str r5, [r4, #8]
	mov r6, #0
	ldr r5, _020BFD40 ; =0x0209A454
	mov r0, r4
	strb r6, [r1]
	mov r2, #5
	mov r1, #1
	strb r2, [r5, #0x82]
	bl FUN_ov4_020bfbc0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r1, r6
	mov r0, #3
	str r0, [r5, #0x24]
	ldr r0, [r4, #4]
	mov r2, #0xd
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_020BFD38: .word unk_0209AC44
_020BFD3C: .word ov4_020DBEC1
_020BFD40: .word unk_0209A454
	arm_func_end FUN_ov4_020bfccc

	arm_func_start FUN_ov4_020bfd44
FUN_ov4_020bfd44: ; 0x020BFD44
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #6
	ldr r0, _020BFDAC ; =0x0209AC44
	mov r1, r6
	bl FUN_0202cf6c
	ldr r0, _020BFDB0 ; =0x020DBEC1
	str r6, [r7, #8]
	mov r5, #0
	ldr r4, _020BFDB4 ; =0x0209A454
	strb r5, [r0]
	mov r0, r7
	mov r1, #3
	strb r6, [r4, #0x82]
	bl FUN_ov4_020bfbc0
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r1, r5
	mov r0, #2
	str r0, [r4, #0x24]
	ldr r0, [r7, #4]
	mov r2, #0xd
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BFDAC: .word unk_0209AC44
_020BFDB0: .word ov4_020DBEC1
_020BFDB4: .word unk_0209A454
	arm_func_end FUN_ov4_020bfd44

	arm_func_start FUN_ov4_020bfdb8
FUN_ov4_020bfdb8: ; 0x020BFDB8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x54]
	blx r1
	mov r0, #6
	mov r4, #0
	ldr r2, _020BFE08 ; =0x020DBEC1
	str r0, [r5, #8]
	mov r0, r5
	mov r1, r4
	strb r4, [r2]
	bl FUN_ov4_020bfbc0
	ldr r0, [r5, #4]
	bl FUN_02041d9c
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_020BFE08: .word ov4_020DBEC1
	arm_func_end FUN_ov4_020bfdb8

	arm_func_start FUN_ov4_020bfe0c
FUN_ov4_020bfe0c: ; 0x020BFE0C
	stmfd sp!, {r3, lr}
	str r1, [r0, #0x34]
	cmp r1, #1
	beq _020BFE30
	cmp r1, #2
	beq _020BFE48
	cmp r1, #3
	beq _020BFE60
	ldmfd sp!, {r3, pc}
_020BFE30:
	ldr r0, _020BFE78 ; =0x0209F5C0
	mov r1, #0
	mov r2, #4
	mov r3, #7
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_020BFE48:
	ldr r0, _020BFE78 ; =0x0209F5C0
	mov r1, #0
	mov r2, #5
	mov r3, #8
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_020BFE60:
	ldr r0, _020BFE78 ; =0x0209F5C0
	mov r1, #0
	mov r2, #6
	mov r3, #9
	bl FUN_ov16_020f6510
	ldmfd sp!, {r3, pc}
_020BFE78: .word unk_0209F5C0
	arm_func_end FUN_ov4_020bfe0c

	arm_func_start FUN_ov4_020bfe7c
FUN_ov4_020bfe7c: ; 0x020BFE7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BFEB0 ; =0x0209A5D0
	bl FUN_02061c48
	cmp r0, #0
	movlt r0, #2
	strlt r0, [r4, #0xc]
	ldmltfd sp!, {r4, pc}
	moveq r0, #0
	streq r0, [r4, #0xc]
	movne r0, #1
	strne r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020BFEB0: .word unk_0209A5D0
	arm_func_end FUN_ov4_020bfe7c

	arm_func_start FUN_ov4_020bfeb4
FUN_ov4_020bfeb4: ; 0x020BFEB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020BFFC4 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreqb r0, [r5, #0x10]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _020BFF54
	tst r4, #0x80
	beq _020BFF18
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	cmp r0, #6
	movgt r0, #4
	strgt r0, [r5, #0x24]
	b _020BFF34
_020BFF18:
	tst r4, #0x40
	beq _020BFF54
	ldr r0, [r5, #0x24]
	cmp r0, #4
	subgt r0, r0, #1
	movle r0, #6
	str r0, [r5, #0x24]
_020BFF34:
	ldr r0, _020BFFC8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r1, #0
	mov r0, #0x384
	str r1, [r5, #0x20]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x30]
_020BFF54:
	tst r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x24]
	cmp r0, #4
	beq _020BFF7C
	cmp r0, #5
	beq _020BFF94
	cmp r0, #6
	beq _020BFFAC
	ldmfd sp!, {r3, r4, r5, pc}
_020BFF7C:
	mov r0, r5
	mov r1, #1
	bl FUN_ov4_020bfe0c
	mov r0, r5
	bl FUN_ov4_020bfc48
	ldmfd sp!, {r3, r4, r5, pc}
_020BFF94:
	mov r0, r5
	mov r1, #2
	bl FUN_ov4_020bfe0c
	mov r0, r5
	bl FUN_ov4_020bfccc
	ldmfd sp!, {r3, r4, r5, pc}
_020BFFAC:
	mov r0, r5
	mov r1, #3
	bl FUN_ov4_020bfe0c
	mov r0, r5
	bl FUN_ov4_020bfd44
	ldmfd sp!, {r3, r4, r5, pc}
_020BFFC4: .word unk_0209F5C0
_020BFFC8: .word unk_0209AC44
	arm_func_end FUN_ov4_020bfeb4

	arm_func_start FUN_ov4_020bffcc
FUN_ov4_020bffcc: ; 0x020BFFCC
	ldr r0, _020BFFE4 ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _020BFFE8 ; =FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_020BFFE4: .word unk_0209F5C0
_020BFFE8: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov4_020bffcc

	arm_func_start FUN_ov4_020bffec
FUN_ov4_020bffec: ; 0x020BFFEC
	stmfd sp!, {r3, lr}
	cmp r1, #4
	beq _020C000C
	cmp r1, #5
	beq _020C0034
	cmp r1, #6
	beq _020C005C
	ldmfd sp!, {r3, pc}
_020C000C:
	ldr r2, [r0, #0x24]
	cmp r2, r1
	bne _020C0020
	bl FUN_ov4_020bfc48
	ldmfd sp!, {r3, pc}
_020C0020:
	str r1, [r0, #0x24]
	ldr r0, _020C0084 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_020C0034:
	ldr r2, [r0, #0x24]
	cmp r2, r1
	bne _020C0048
	bl FUN_ov4_020bfccc
	ldmfd sp!, {r3, pc}
_020C0048:
	str r1, [r0, #0x24]
	ldr r0, _020C0084 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_020C005C:
	ldr r2, [r0, #0x24]
	cmp r2, r1
	bne _020C0070
	bl FUN_ov4_020bfd44
	ldmfd sp!, {r3, pc}
_020C0070:
	str r1, [r0, #0x24]
	ldr r0, _020C0084 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, pc}
_020C0084: .word unk_0209AC44
	arm_func_end FUN_ov4_020bffec

	arm_func_start FUN_ov4_020c0088
FUN_ov4_020c0088: ; 0x020C0088
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C01A4 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _020C0158
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x10]
	mov r1, #0x384
	str r1, [r5, #0x30]
	cmp r0, #0
	bne _020C00FC
	mov r0, #1
	strb r0, [r5, #0x10]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov4_020bffcc
	str r0, [r5, #0x1c]
_020C00FC:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0x14]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x18]
	bl FUN_ov4_020bffcc
	str r0, [r5, #0x20]
	bl FUN_ov16_020ef9e8
	ldr r1, [r5, #0x1c]
	cmp r1, #4
	cmpne r1, #5
	beq _020C0134
	cmp r1, #6
	ldmnefd sp!, {r3, r4, r5, pc}
_020C0134:
	ldr r0, [r5, #0x24]
	cmp r0, r1
	beq _020C014C
	ldr r0, _020C01A8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_020C014C:
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x24]
	ldmfd sp!, {r3, r4, r5, pc}
_020C0158:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	ldrne r0, [r5, #0x1c]
	cmpne r0, #0
	beq _020C0190
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r0, r5
	bl FUN_ov4_020bffcc
	ldr r1, [r5, #0x1c]
	cmp r1, r0
	bne _020C0190
	mov r0, r5
	bl FUN_ov4_020bffec
_020C0190:
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	strb r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020C01A4: .word unk_0209F5C0
_020C01A8: .word unk_0209AC44
	arm_func_end FUN_ov4_020c0088

	arm_func_start FUN_ov4_020c01ac
FUN_ov4_020c01ac: ; 0x020C01AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x38
	mov r1, #0
	mov r2, #0x78
	bl MI_CpuFill8
	ldr r0, _020C01E8 ; =0x020D9A04
	add r1, r4, #0x38
	bl FUN_ov16_020f316c
	ldr r0, _020C01EC ; =0x020D9A28
	add r1, r4, #0xa4
	bl FUN_ov16_020f316c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020C01E8: .word ov4_020D9A04
_020C01EC: .word ov4_020D9A28
	arm_func_end FUN_ov4_020c01ac

	arm_func_start FUN_ov4_020c01f0
FUN_ov4_020c01f0: ; 0x020C01F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [r0, #0x38]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _020C0220
	cmp r1, #1
	beq _020C0238
	cmp r1, #2
	beq _020C0250
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0220:
	ldr r1, _020C029C ; =0x0209A1A8
	ldr r7, _020C02A0 ; =0x020D7FAC
	ldrb r1, [r1]
	cmp r1, #0
	ldrne r7, _020C02A4 ; =0x020D7FD4
	b _020C0264
_020C0238:
	ldr r1, _020C029C ; =0x0209A1A8
	ldr r7, _020C02A8 ; =0x020D7FFC
	ldrb r1, [r1]
	cmp r1, #0
	ldrne r7, _020C02AC ; =0x020D8044
	b _020C0264
_020C0250:
	ldr r1, _020C029C ; =0x0209A1A8
	ldr r7, _020C02B0 ; =0x020D7F94
	ldrb r1, [r1]
	cmp r1, #0
	ldrne r7, _020C02B4 ; =0x020D7F7C
_020C0264:
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r0, #0x38
	mov r5, #0xc
_020C0278:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r5, r6
	mov r2, r4
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020C0278
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C029C: .word unk_0209A1A8
_020C02A0: .word 0x020D7FAC
_020C02A4: .word 0x020D7FD4
_020C02A8: .word 0x020D7FFC
_020C02AC: .word 0x020D8044
_020C02B0: .word 0x020D7F94
_020C02B4: .word 0x020D7F7C
	arm_func_end FUN_ov4_020c01f0

	arm_func_start FUN_ov4_020c02b8
FUN_ov4_020c02b8: ; 0x020C02B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x38
	mov r4, #0xc
_020C02C8:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xa
	blt _020C02C8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020c02b8

	arm_func_start FUN_ov4_020c02e0
FUN_ov4_020c02e0: ; 0x020C02E0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [r0, #0x44]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Char
	bl GX_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov4_020c02e0

	arm_func_start FUN_ov4_020c0338
FUN_ov4_020c0338: ; 0x020C0338
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	bl G2_GetBG3CharPtr
	mov r7, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r7
	bl DC_FlushRange
	ldr r8, [r4, #0x98]
	mov r6, r5
	cmp r8, #0
	beq _020C03C4
	ldr r0, [r8, #0xc]
	mov r9, #1
	ldr r1, [r8, #0x10]
	mov r2, r9
	mov r3, r9
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r8
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG3Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020C03C4:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _020C041C
	ldr r8, [r4, #0xa4]
	cmp r8, #0
	beq _020C041C
	ldr r0, [r8, #0xc]
	mov r9, #3
	ldr r1, [r8, #0x10]
	mov r3, r9
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r0, r8
	mov r2, r9
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG3Char
_020C041C:
	bl G2_GetBG1CharPtr
	mov r7, #0x20
	mov r1, r0
	mov r0, r5
	mov r2, r7
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r7
	bl DC_FlushRange
	ldr r8, [r4, #0x50]
	mov r6, r5
	cmp r8, #0
	beq _020C049C
	ldr r0, [r8, #0xc]
	mov r9, #1
	ldr r1, [r8, #0x10]
	mov r2, r9
	mov r3, r9
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r8
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020C049C:
	ldr r8, [r4, #0x5c]
	cmp r8, #0
	beq _020C04F4
	ldr r0, [r8, #0xc]
	mov r5, #2
	ldr r1, [r8, #0x10]
	mov r3, r5
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r8
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020C04F4:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _020C0654
	ldr r8, [r4, #0x68]
	cmp r8, #0
	beq _020C0558
	ldr r0, [r8, #0xc]
	mov r5, #1
	ldr r1, [r8, #0x10]
	mov r3, r5
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r8
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020C0558:
	ldr r8, [r4, #0x74]
	cmp r8, #0
	beq _020C05B0
	ldr r0, [r8, #0xc]
	mov r5, #2
	ldr r1, [r8, #0x10]
	mov r3, r5
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r8
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020C05B0:
	ldr r8, [r4, #0x80]
	cmp r8, #0
	beq _020C0608
	ldr r0, [r8, #0xc]
	mov r5, #1
	ldr r1, [r8, #0x10]
	mov r3, r5
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r8
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020C0608:
	ldr r8, [r4, #0x8c]
	cmp r8, #0
	beq _020C0654
	ldr r0, [r8, #0xc]
	mov r5, #2
	ldr r1, [r8, #0x10]
	mov r3, r5
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r0, r8
	mov r2, r5
	mov r1, #0
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r7
	add r0, r8, r0
	bl GX_LoadBG1Char
_020C0654:
	bl G2_GetBG2CharPtr
	mov r5, #0x20
	mov r1, r0
	mov r2, r5
	mov r0, #0
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r0, r4
	bl FUN_ov4_020c02e0
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov4_020c0338

	arm_func_start FUN_ov4_020c0688
FUN_ov4_020c0688: ; 0x020C0688
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _020C06C8
	ldr r0, [r0, #0x24]
	cmp r0, #4
	beq _020C06B0
	cmp r0, #5
	beq _020C06B8
	cmp r0, #6
	beq _020C06C0
_020C06B0:
	mov r0, #4
	bx lr
_020C06B8:
	mov r0, #0xa
	bx lr
_020C06C0:
	mov r0, #0xf
	bx lr
_020C06C8:
	mov r0, #0xa
	bx lr
	arm_func_end FUN_ov4_020c0688

	arm_func_start FUN_ov4_020c06d0
FUN_ov4_020c06d0: ; 0x020C06D0
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _020C0714
	ldr r0, [r0, #0x24]
	cmp r0, #4
	beq _020C06FC
	cmp r0, #5
	beq _020C0704
	cmp r0, #6
	beq _020C070C
	b _020C0714
_020C06FC:
	mov r0, #1
	bx lr
_020C0704:
	mov r0, #0
	bx lr
_020C070C:
	mov r0, #1
	bx lr
_020C0714:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov4_020c06d0

	arm_func_start FUN_ov4_020c071c
FUN_ov4_020c071c: ; 0x020C071C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x24]
	cmp r0, #4
	beq _020C0740
	cmp r0, #5
	beq _020C074C
	cmp r0, #6
	beq _020C0758
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0740:
	mov r7, #4
	mov r6, #7
	b _020C0760
_020C074C:
	mov r7, #5
	mov r6, #8
	b _020C0760
_020C0758:
	mov r7, #6
	mov r6, #9
_020C0760:
	ldr r5, _020C07AC ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_ov16_020f61f0
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl FUN_ov16_020f616c
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f6084
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C07AC: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c071c

	arm_func_start FUN_ov4_020c07b0
FUN_ov4_020c07b0: ; 0x020C07B0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C07E0 ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_ov16_020f61f0
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl FUN_ov16_020f616c
	ldmfd sp!, {r3, r4, r5, pc}
_020C07E0: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c07b0

	arm_func_start FUN_ov4_020c07e4
FUN_ov4_020c07e4: ; 0x020C07E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_ov4_020c06d0
	cmp r0, #0
	mov r5, #0
	mov r2, #2
	bne _020C0828
	ldr r6, _020C08F8 ; =0x0209F5C0
	mov r1, r5
	mov r0, r6
	bl FUN_ov16_020f60f8
	mov r0, r6
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_020f6084
	b _020C0848
_020C0828:
	ldr r6, _020C08F8 ; =0x0209F5C0
	mov r1, r5
	mov r0, r6
	bl FUN_ov16_020f6084
	mov r0, r6
	mov r1, r5
	mov r2, #3
	bl FUN_ov16_020f60f8
_020C0848:
	mov r0, r4
	bl FUN_ov4_020c0688
	mov r6, #0
	mov r5, #6
	mov r8, r0
	ldr r7, _020C08F8 ; =0x0209F5C0
	mov r1, r6
	mov r0, r7
	mov r3, r5
	mov r2, #2
	str r8, [sp]
	bl FUN_ov16_020f63f0
	mov r0, r7
	mov r1, r6
	mov r3, r5
	mov r2, #3
	str r8, [sp]
	bl FUN_ov16_020f63f0
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020f65a4
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _020C08C0
	mov r0, r4
	mov r1, r6
	bl FUN_ov4_020bfe0c
_020C08C0:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _020C08E8
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bne _020C08E8
	mov r0, r4
	bl FUN_ov4_020c071c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C08E8:
	mov r0, r4
	bl FUN_ov4_020c07b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C08F8: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c07e4

	arm_func_start FUN_ov4_020c08fc
FUN_ov4_020c08fc: ; 0x020C08FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r0, #0xc
	mla r0, r1, r0, r5
	ldr r8, [r0, #0x38]
	mov r4, r3
	cmp r8, #0
	beq _020C0998
	ldr r0, [r8, #0xc]
	ldr r7, [sp, #0x4c]
	add r9, r8, r0
	mov r1, #0
	ldr r6, [sp, #0x50]
	mov r8, #8
	mov lr, #0x10
	mov r12, #5
	mov r3, #0x80
	mov r0, #0x1e
	strh r3, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh lr, [sp, #0x18]
	strh r12, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strb r1, [sp, #0x24]
	str r9, [sp, #0x28]
	mov r3, #2
	str r3, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	mov r3, r2
	ldr r0, _020C0A40 ; =0x0209F5C0
	mov r2, #1
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020C0998:
	mov r0, #0xc
	mla r0, r4, r0, r5
	ldr r1, [r0, #0x38]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r1, #0xc]
	ldr r2, [sp, #0x4c]
	mov r6, #0
	add r12, r1, r0
	mov r3, #8
	mov r1, #0x10
	mov r0, #5
	strh r2, [sp, #0x16]
	strh r1, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r3, [sp, #0x14]
	ldr r4, [sp, #0x48]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r6, [sp, #0x24]
	str r12, [sp, #0x28]
	mov r1, #3
	str r1, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r6}
	ldr r5, _020C0A40 ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C0A40: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c08fc

	arm_func_start FUN_ov4_020c0a44
FUN_ov4_020c0a44: ; 0x020C0A44
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r4, [r10, #0x98]
	cmp r4, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov4_020c0688
	ldr r1, [r4, #0xc]
	mov r11, #0
	add r9, r4, r1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	mov r7, #6
	mov r6, #0x12
	mov r0, #4
	strh r0, [sp, #0x1a]
	strh r7, [sp, #0x14]
	strh r8, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x1c]
	strh r11, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r11, [sp, #0x22]
	strb r11, [sp, #0x24]
	str r9, [sp, #0x28]
	mov r5, #1
	add r4, sp, #0x14
	str r5, [sp]
	stmib sp, {r4, r11}
	str r11, [sp, #0xc]
	ldr r0, _020C0B3C ; =0x0209F5C0
	mov r1, r11
	mov r2, r11
	mov r3, #2
	str r11, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r0, r9, #0x90
	str r0, [sp, #0x28]
	mov r0, #5
	strh r0, [sp, #0x1a]
	strh r7, [sp, #0x14]
	strh r8, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x1c]
	strh r11, [sp, #0x1e]
	strh r11, [sp, #0x20]
	strh r11, [sp, #0x22]
	strb r11, [sp, #0x24]
	str r5, [sp]
	stmib sp, {r4, r11}
	str r11, [sp, #0xc]
	ldr r0, _020C0B3C ; =0x0209F5C0
	mov r1, r11
	mov r2, r11
	mov r3, #3
	str r11, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r10
	bl FUN_ov4_020c07e4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C0B3C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c0a44

	arm_func_start FUN_ov4_020c0b40
FUN_ov4_020c0b40: ; 0x020C0B40
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	ldr r4, _020C0CCC ; =0x0209F5C0
	mov r6, #0
	mov r7, r0
	mov r0, r4
	mov r1, r6
	bl FUN_ov16_020f5af0
	mov r0, r4
	mov r1, r6
	bl FUN_ov16_020f5a58
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _020C0B90
	cmp r0, #1
	beq _020C0BC8
	cmp r0, #2
	beq _020C0C50
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C0B90:
	mov r0, #7
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, r7
	mov r1, #2
	mov r2, #4
	mov r3, #3
	str r6, [sp, #8]
	bl FUN_ov4_020c08fc
	mov r0, r7
	bl FUN_ov4_020c0a44
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C0BC8:
	mov r5, #7
	mov r4, #4
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, r7
	mov r2, r4
	mov r1, #2
	mov r3, #3
	str r4, [sp, #8]
	bl FUN_ov4_020c08fc
	mov r0, #8
	mov r2, #5
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r4
	mov r3, r2
	str r6, [sp, #8]
	bl FUN_ov4_020c08fc
	mov r0, #9
	mov r1, #6
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, r7
	mov r2, r1
	mov r3, r5
	str r4, [sp, #8]
	bl FUN_ov4_020c08fc
	mov r0, r7
	bl FUN_ov4_020c0a44
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C0C50:
	ldr r2, [r7, #0xa4]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r2, #0xc]
	mov r1, #8
	add r3, r2, r0
	mov r2, #4
	mov r0, #0x18
	strh r2, [sp, #0x14]
	strh r0, [sp, #0x18]
	str r3, [sp, #0x28]
	strh r1, [sp, #0x16]
	strh r1, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strb r6, [sp, #0x24]
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, #1
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C0CCC: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c0b40

	arm_func_start FUN_ov4_020c0cd0
FUN_ov4_020c0cd0: ; 0x020C0CD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl FUN_ov16_020f47fc
	mov r7, #1
	mov r0, r7
	bl FUN_ov16_020f3f60
	ldr r0, _020C0D30 ; =0x0209BA20
	bl FUN_0206f6b4
	mov r6, #0
	ldr r5, _020C0D34 ; =0x0209AC44
	mov r4, #0x7f
	mov r0, r5
	mov r1, r4
	str r7, [r8, #8]
	strb r6, [r8, #0x10]
	str r6, [r8, #0x1c]
	str r6, [r8, #0x20]
	bl FUN_0202bb58
	mov r0, r5
	mov r1, r4
	bl FUN_0202bb94
	ldr r0, _020C0D38 ; =0x020A0640
	strb r6, [r0, #0x1d]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0D30: .word unk_0209BA20
_020C0D34: .word unk_0209AC44
_020C0D38: .word unk_020A0640
	arm_func_end FUN_ov4_020c0cd0

	arm_func_start FUN_ov4_020c0d3c
FUN_ov4_020c0d3c: ; 0x020C0D3C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020C0DC4 ; =0x0209BA20
	mov r6, r0
	ldrb r1, [r1, #0x88f]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov4_020bfe7c
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov4_020bfe0c
	mov r1, #4
	ldr r0, _020C0DC8 ; =0x020DBEC1
	str r5, [r6, #0x30]
	str r1, [r6, #0x24]
	mov r4, #1
	strb r4, [r0]
	ldr r0, [r6, #4]
	ldr r2, _020C0DCC ; =0x0209A454
	str r5, [r0, #0x90]
	ldrb r3, [r2, #0x83]
	mov r0, r6
	mov r1, r5
	bic r3, r3, #0x40
	strb r3, [r2, #0x83]
	bl FUN_ov4_020bfbc0
	ldr r0, _020C0DD0 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5a58
	mov r0, r6
	bl FUN_ov4_020c01ac
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020C0DC4: .word unk_0209BA20
_020C0DC8: .word ov4_020DBEC1
_020C0DCC: .word unk_0209A454
_020C0DD0: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c0d3c

	arm_func_start FUN_ov4_020c0dd4
FUN_ov4_020c0dd4: ; 0x020C0DD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020ef9e8
	ldr r0, [r4, #8]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_020C0DF0: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _020C0E0C ; case 1
	b _020C0E24 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _020C0E4C ; case 4
	b _020C0EC0 ; case 5
	b _020C0EE8 ; case 6
_020C0E0C:
	mov r0, r4
	bl FUN_ov4_020c0d3c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #2
	str r0, [r4, #8]
_020C0E24:
	add r0, r4, #0x38
	mov r1, #0xa
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov4_020c01f0
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020C0E4C:
	mov r0, r4
	bl FUN_ov4_020c0b40
	ldr r0, _020C0F00 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldr r2, [r4, #0xc]
	cmp r2, #2
	moveq r0, #6
	streq r0, [r4, #8]
	ldmeqfd sp!, {r4, pc}
	mov r1, #5
	mov r0, #0x384
	str r1, [r4, #8]
	str r0, [r4, #0x30]
	cmp r2, #1
	bne _020C0EB4
	ldr r0, _020C0F04 ; =0x0209A454
	ldrb r0, [r0, #0x82]
	cmp r0, #0
	streq r1, [r4, #0x24]
	strne r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_020C0EB4:
	mov r0, #4
	str r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_020C0EC0:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ble _020C0EE8
	sub r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0
	bgt _020C0EE8
	mov r0, r4
	bl FUN_ov4_020bfdb8
	ldmfd sp!, {r4, pc}
_020C0EE8:
	mov r0, r4
	bl FUN_ov4_020c07e4
	ldr r0, _020C0F00 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_020C0F00: .word unk_0209F5C0
_020C0F04: .word unk_0209A454
	arm_func_end FUN_ov4_020c0dd4

	arm_func_start FUN_ov4_020c0f08
FUN_ov4_020c0f08: ; 0x020C0F08
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #3
	beq _020C0F2C
	cmp r1, #5
	cmpne r1, #6
	beq _020C0F3C
	ldmfd sp!, {r4, pc}
_020C0F2C:
	bl FUN_ov4_020c0338
	mov r0, #4
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020C0F3C:
	ldr r0, _020C0F4C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020C0F4C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c0f08

	arm_func_start FUN_ov4_020c0f50
FUN_ov4_020c0f50: ; 0x020C0F50
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020C0F70 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	mov r0, r4
	bl FUN_ov4_020c02b8
	ldmfd sp!, {r4, pc}
_020C0F70: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c0f50

	arm_func_start FUN_ov4_020c0f74
FUN_ov4_020c0f74: ; 0x020C0F74
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c0f74

	arm_func_start FUN_ov4_020c0f88
FUN_ov4_020c0f88: ; 0x020C0F88
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_020C0F98:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _020C0FB0
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_020C0FB0:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _020C0F98
	bx lr
	arm_func_end FUN_ov4_020c0f88

	arm_func_start FUN_ov4_020c0fc0
FUN_ov4_020c0fc0: ; 0x020C0FC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x90]
	cmp r0, #3
	bne _020C1018
	ldr r0, _020C105C ; =0x020A0640
	ldrb r2, [r0, #0x87]
	ldrb r0, [r0, #0x89]
	cmp r2, #0
	beq _020C1000
	cmp r0, #0
	movne r0, #0xf
	strne r0, [r4, #0x490]
	moveq r0, #0xc
	b _020C1010
_020C1000:
	cmp r0, #0
	movne r0, #0x10
	strne r0, [r4, #0x490]
	moveq r0, #0xd
_020C1010:
	streq r0, [r4, #0x490]
	b _020C102C
_020C1018:
	cmp r0, #2
	moveq r0, #3
	streq r0, [r4, #0x490]
	movne r0, #1
	strne r0, [r4, #0x490]
_020C102C:
	mov r3, #0xf
	mov r2, #1
	mov r0, r4
	str r3, [r4, #0x48c]
	str r1, [r4, #0x498]
	strb r2, [r4, #0x49c]
	bl FUN_ov4_020c0f88
	strb r0, [r4, #0x49d]
	ldr r0, _020C1060 ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0x494]
	ldmfd sp!, {r4, pc}
_020C105C: .word unk_020A0640
_020C1060: .word unk_0209AEC0
	arm_func_end FUN_ov4_020c0fc0

	arm_func_start FUN_ov4_020c1064
FUN_ov4_020c1064: ; 0x020C1064
	stmfd sp!, {r3, lr}
	ldr r0, _020C1088 ; =0x0209BA20
	mov r1, #2
	bl FUN_0205107c
	bl FUN_0204fe00
	cmp r0, #0xb
	movhs r0, #1
	movlo r0, #0
	ldmfd sp!, {r3, pc}
_020C1088: .word unk_0209BA20
	arm_func_end FUN_ov4_020c1064

	arm_func_start FUN_ov4_020c108c
FUN_ov4_020c108c: ; 0x020C108C
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr r0, _020C10B4 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	ldrb r0, [r0, #0x2d]
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C10B4: .word unk_0209BA20
	arm_func_end FUN_ov4_020c108c

	arm_func_start FUN_ov4_020c10b8
FUN_ov4_020c10b8: ; 0x020C10B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #5
	ldr r0, _020C111C ; =0x0209AEC0
	str r1, [r5, #8]
	bl FUN_020465fc
	ldr r0, _020C1120 ; =0x020A0640
	mov r4, #0
	strb r4, [r0, #0x8a]
	ldrb r0, [r5, #0x741]
	cmp r0, #0
	beq _020C10F8
	mov r0, #0x1a
	mov r1, #1
	bl FUN_ov16_020f2604
	ldmfd sp!, {r3, r4, r5, pc}
_020C10F8:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0xe
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_020C111C: .word unk_0209AEC0
_020C1120: .word unk_020A0640
	arm_func_end FUN_ov4_020c10b8

	arm_func_start FUN_ov4_020c1124
FUN_ov4_020c1124: ; 0x020C1124
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #2
	bl FUN_02029d44
	mov r0, r4
	bl FUN_ov4_020c1a24
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c1124

	arm_func_start FUN_ov4_020c1148
FUN_ov4_020c1148: ; 0x020C1148
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r4, #8]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x10
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c1148

	arm_func_start FUN_ov4_020c1174
FUN_ov4_020c1174: ; 0x020C1174
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r2, #5
	mov r5, #1
	ldr r1, _020C1210 ; =0x020A0640
	str r2, [r6, #8]
	strb r5, [r6, #0x241]
	mov r4, #0
	strb r4, [r1, #0x1b]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r7, _020C1214 ; =0x0209A454
	strb r5, [r7, #0x2e]
	strb r5, [r7, #0x2f]
	strb r4, [r7, #0x30]
	strb r4, [r7, #0x32]
	strb r4, [r7, #0x28]
	strb r4, [r7, #0x29]
	strb r4, [r7, #0x2a]
	strb r4, [r7, #0x2b]
	strb r5, [r7, #0x31]
	strb r5, [r7, #0x33]
	ldr r0, [r6, #4]
	bl FUN_ov4_020bf4ac
	mov r0, #2
	str r0, [r6, #0x40]
	strb r4, [r7, #0x88]
	ldr r7, [r6, #4]
	mov r6, #0x73
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_02041ef0
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C1210: .word unk_020A0640
_020C1214: .word unk_0209A454
	arm_func_end FUN_ov4_020c1174

	arm_func_start FUN_ov4_020c1218
FUN_ov4_020c1218: ; 0x020C1218
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #5
	mov r4, #1
	str r2, [r5, #8]
	strb r4, [r5, #0x241]
	cmp r1, #0
	beq _020C1280
	bl FUN_ov4_020c108c
	cmp r0, #0
	mov r2, #0
	beq _020C125C
	ldr r0, _020C129C ; =0x0209A454
	mov r1, #3
	str r2, [r0, #8]
	strb r2, [r0, #0xc]
	b _020C126C
_020C125C:
	ldr r0, _020C129C ; =0x0209A454
	mov r1, #2
	str r2, [r0, #8]
	strb r2, [r0, #0xc]
_020C126C:
	str r1, [r0, #4]
	strb r2, [r0, #0x1e]
	strb r4, [r0, #0x1f]
	strb r2, [r0, #0x20]
	strb r2, [r0, #0x1d]
_020C1280:
	ldr r0, [r5, #4]
	bl FUN_02041d9c
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x5f
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, pc}
_020C129C: .word unk_0209A454
	arm_func_end FUN_ov4_020c1218

	arm_func_start FUN_ov4_020c12a0
FUN_ov4_020c12a0: ; 0x020C12A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #5
	ldr r0, _020C12E0 ; =0x020A0640
	str r1, [r5, #8]
	mov r4, #0
	strb r4, [r0, #0x1a]
	mov r1, #1
	ldr r0, [r5, #4]
	strb r1, [r5, #0x241]
	bl FUN_02041d9c
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x64
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, pc}
_020C12E0: .word unk_020A0640
	arm_func_end FUN_ov4_020c12a0

	arm_func_start FUN_ov4_020c12e4
FUN_ov4_020c12e4: ; 0x020C12E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r2, #5
	mov r1, #1
	str r2, [r4, #8]
	strb r1, [r4, #0x241]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x65
	bl FUN_02041ef0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c12e4

	arm_func_start FUN_ov4_020c1318
FUN_ov4_020c1318: ; 0x020C1318
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r1, #5
	mov r5, #1
	str r1, [r6, #8]
	strb r5, [r6, #0x241]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r2, _020C13A4 ; =0x0209A454
	mov r1, #0
	str r1, [r2, #0x84]
	strb r5, [r2, #0x2e]
	strb r5, [r2, #0x2f]
	strb r1, [r2, #0x30]
	strb r1, [r2, #0x31]
	strb r1, [r2, #0x32]
	strb r1, [r2, #0x33]
	strb r1, [r2, #0x28]
	strb r1, [r2, #0x29]
	strb r1, [r2, #0x2a]
	mov r4, #0x62
	ldr r0, _020C13A8 ; =0x020A0640
	strb r1, [r2, #0x2b]
	strb r1, [r0, #0x1b]
	strb r1, [r0, #0x1a]
	ldr r6, [r6, #4]
	mov r2, r4
	mov r0, r6
	bl FUN_02041ef0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02041ef0
	ldmfd sp!, {r4, r5, r6, pc}
_020C13A4: .word unk_0209A454
_020C13A8: .word unk_020A0640
	arm_func_end FUN_ov4_020c1318

	arm_func_start FUN_ov4_020c13ac
FUN_ov4_020c13ac: ; 0x020C13AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r2, #5
	mov r1, #1
	str r2, [r5, #8]
	strb r1, [r5, #0x241]
	bl FUN_02041d9c
	ldr r2, _020C1414 ; =0x020A0640
	mov r4, #0
	strb r4, [r2, #0x1b]
	ldr r1, _020C1418 ; =0x020DA0F0
	mov r0, r5
	strb r4, [r2, #0x1a]
	bl FUN_ov4_020c0fc0
	ldr r0, [r5, #4]
	add r1, r5, #0x8c
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x7c
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1414: .word unk_020A0640
_020C1418: .word ov4_020DA0F0
	arm_func_end FUN_ov4_020c13ac

	arm_func_start FUN_ov4_020c141c
FUN_ov4_020c141c: ; 0x020C141C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r2, #5
	mov r1, #1
	str r2, [r5, #8]
	strb r1, [r5, #0x241]
	bl FUN_02041d9c
	ldr r2, _020C1484 ; =0x020A0640
	mov r4, #0
	strb r4, [r2, #0x1b]
	ldr r1, _020C1488 ; =0x020DA13C
	mov r0, r5
	strb r4, [r2, #0x1a]
	bl FUN_ov4_020c0fc0
	ldr r0, [r5, #4]
	add r1, r5, #0x8c
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x75
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1484: .word unk_020A0640
_020C1488: .word ov4_020DA13C
	arm_func_end FUN_ov4_020c141c

	arm_func_start FUN_ov4_020c148c
FUN_ov4_020c148c: ; 0x020C148C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r4, #8]
	bl FUN_02041d9c
	ldr r0, _020C14C0 ; =0x0209A454
	mov r1, #0
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	mov r2, #0x19
	bl FUN_02041ef0
	ldmfd sp!, {r4, pc}
_020C14C0: .word unk_0209A454
	arm_func_end FUN_ov4_020c148c

	arm_func_start FUN_ov4_020c14c4
FUN_ov4_020c14c4: ; 0x020C14C4
	ldr r1, [r0, #0x10]
	ldr r12, _020C14D0 ; =FUN_ov4_020c1c98
	bx r12
_020C14D0: .word FUN_ov4_020c1c98
	arm_func_end FUN_ov4_020c14c4

	arm_func_start FUN_ov4_020c14d4
FUN_ov4_020c14d4: ; 0x020C14D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0xb0
	mov r2, #0x190
	bl MI_CpuFill8
	add r0, r5, #0x28
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x64
	bl MI_CpuFill8
	mvn r1, #0
_020C1508:
	add r0, r5, r4, lsl #2
	add r4, r4, #1
	str r1, [r0, #0x418]
	cmp r4, #4
	blt _020C1508
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov4_020c14d4

	arm_func_start FUN_ov4_020c1520
FUN_ov4_020c1520: ; 0x020C1520
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r4, #0
	mov r1, r4
	add r0, r8, #0x244
	mov r2, #0x1d0
	bl MI_CpuFill8
	mov r1, #1
	ldr r0, _020C163C ; =0x0209AEC0
	strb r1, [r8, #0x415]
	strb r4, [r8, #0x738]
	str r4, [r8, #0x73c]
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	movne r1, r4
	cmp r1, #0
	addne r7, r8, #0x244
	bne _020C1590
	ldrb r0, [r8, #0x71]
	cmp r0, #0
	addne r7, r8, #0x2b8
	bne _020C1590
	ldr r0, _020C163C ; =0x0209AEC0
	bl FUN_02046730
	add r2, r8, #0x244
	mov r1, #0x74
	mla r7, r0, r1, r2
_020C1590:
	ldr r5, _020C1640 ; =0x0209BA20
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0207249c
	add r1, r7, #0x16
	mov r2, #0x11
	mov r6, r0
	bl MI_CpuCopy8
	ldr r0, _020C1644 ; =0x020A0640
	add r1, r7, #0x28
	ldr r2, [r0, #0x4e0]
	str r2, [r7, #0x64]
	ldr r2, [r0, #0x4e4]
	str r2, [r7, #0x68]
	ldr r0, [r0, #0x4e8]
	str r0, [r7, #0x6c]
	stmia sp, {r0, r1}
	ldr r2, [r7, #0x68]
	ldr r0, [r8, #0x714]
	ldr r1, [r7, #0x64]
	mov r3, r2
	bl FUN_ov16_020f03fc
	ldrb r0, [r8, #0x71]
	cmp r0, #0
	mov r0, r5
	beq _020C1604
	mov r1, r4
	b _020C1608
_020C1604:
	mov r1, #2
_020C1608:
	bl FUN_020724c8
	strb r0, [r7, #0x27]
	ldrb r0, [r6, #0x2d]
	strb r0, [r7, #0x41]
	ldrb r0, [r8, #0x72]
	cmp r0, #0
	ldreq r0, _020C1648 ; =0x020A1540
	ldreqh r0, [r0, #0xd0]
	streqh r0, [r7, #0x70]
	mov r0, #1
	strb r0, [r7, #0x72]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C163C: .word unk_0209AEC0
_020C1640: .word unk_0209BA20
_020C1644: .word unk_020A0640
_020C1648: .word unk_020A1540
	arm_func_end FUN_ov4_020c1520

	arm_func_start FUN_ov4_020c164c
FUN_ov4_020c164c: ; 0x020C164C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r2, _020C16EC ; =0x0209AEC0
	mov r6, r0
	ldr r0, [r2, #0x5c]
	add r4, r6, #0x2b8
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	mov r5, r1
	addeq r4, r6, #0x244
	add r0, r5, #0x10
	add r1, r4, #0x16
	mov r2, #0x11
	bl MI_CpuCopy8
	ldrb r1, [r5, #0x22]
	add r0, r4, #0x28
	strb r1, [r4, #0x27]
	ldrb r1, [r5, #0x23]
	strb r1, [r4, #0x41]
	ldr r1, [r5, #4]
	str r1, [r4, #0x64]
	ldr r1, [r5, #8]
	str r1, [r4, #0x68]
	ldr r2, [r5, #0xc]
	str r2, [r4, #0x6c]
	ldrb r1, [r5, #0x59]
	strb r1, [r4, #0x72]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #0x68]
	ldr r0, [r6, #0x714]
	ldr r1, [r4, #0x64]
	mov r3, r2
	bl FUN_ov16_020f03fc
	mov r0, r6
	bl FUN_ov4_020c5bfc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020C16EC: .word unk_0209AEC0
	arm_func_end FUN_ov4_020c164c

	arm_func_start FUN_ov4_020c16f0
FUN_ov4_020c16f0: ; 0x020C16F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r10, r1
	add r1, r4, #0x244
	mov r0, #0x74
	mla r6, r10, r0, r1
	mov r9, r2
	add r7, r9, #4
	add r0, r7, #0xc
	add r1, r6, #0x16
	mov r2, #0x11
	ldrb r8, [r7, #0x1d]
	mov r5, #0
	bl MI_CpuCopy8
	ldrb r1, [r7, #0x1e]
	add r0, r4, r10
	strb r1, [r6, #0x27]
	ldrb r1, [r7, #0x1f]
	strb r1, [r6, #0x41]
	ldr r1, [r9, #4]
	str r1, [r6, #0x64]
	ldr r1, [r7, #4]
	str r1, [r6, #0x68]
	ldr r1, [r7, #8]
	str r1, [r6, #0x6c]
	ldrb r1, [r7, #0x5c]
	strb r1, [r0, #0x57]
	ldrsb r1, [r6, #0x42]
	ldrsb r0, [r7, #0x20]
	cmp r1, r0
	strneb r0, [r6, #0x42]
	ldrb r0, [r7, #0x55]
	strb r0, [r6, #0x72]
	ldrb r0, [r4, #0x72]
	cmp r0, #0
	ldreqh r0, [r7, #0x5a]
	streqh r0, [r6, #0x70]
	cmp r10, #0
	bne _020C1800
	cmp r8, #0x15
	cmpne r8, #0x16
	beq _020C17A4
	cmp r8, #0x17
	bne _020C1800
_020C17A4:
	mov r2, #0
	mov r8, #1
	b _020C17F4
_020C17B0:
	mov r3, r5
	add r1, r4, r2, lsl #2
	add r12, r7, r2, lsl #2
	b _020C17E8
_020C17C0:
	add r0, r1, r3
	add r10, r12, r3
	ldrsb lr, [r0, #0x5b]
	ldrsb r9, [r10, #0x21]
	add r3, r3, #1
	cmp lr, r9
	strneb r9, [r0, #0x5b]
	ldrnesb r9, [r10, #0x29]
	strneb r9, [r0, #0x63]
	strneb r8, [r4, #0x38]
_020C17E8:
	cmp r3, #4
	blt _020C17C0
	add r2, r2, #1
_020C17F4:
	cmp r2, #2
	blt _020C17B0
	b _020C1900
_020C1800:
	ldr r0, _020C192C ; =0x0209AEC0
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C1900
	cmp r8, #0x16
	bne _020C1900
	ldrsb r0, [r6, #0x42]
	cmp r0, #0
	beq _020C1838
	cmp r0, #1
	bne _020C1900
_020C1838:
	mov r1, #0
	mov r2, r1
	b _020C1864
_020C1844:
	ldrsb r0, [r6, #0x42]
	add r0, r4, r0, lsl #2
	add r0, r0, r2
	ldrsb r0, [r0, #0x5b]
	cmp r10, r0
	moveq r1, #1
	beq _020C186C
	add r2, r2, #1
_020C1864:
	cmp r2, #4
	blt _020C1844
_020C186C:
	cmp r1, #0
	bne _020C1900
	mov r3, #0
	b _020C18F8
_020C187C:
	ldrsb r0, [r6, #0x42]
	add r0, r4, r0, lsl #2
	add r1, r0, r3
	ldrsb r0, [r1, #0x5b]
	cmp r0, #0
	bge _020C18F4
	strb r10, [r1, #0x5b]
	ldrsb r1, [r4, #0x6b]
	mov r2, #1
	add r0, r1, #1
	strb r0, [r4, #0x6b]
	ldrsb r0, [r6, #0x42]
	add r0, r4, r0, lsl #2
	add r0, r0, r3
	strb r1, [r0, #0x63]
	ldrb r0, [r4, #0x72]
	strb r2, [r4, #0x38]
	cmp r0, #0
	beq _020C1900
	ldr r0, [r4, #0xc]
	cmp r0, #0x15
	bne _020C1900
	ldrsb r0, [r6, #0x42]
	mov r1, #0x16
	cmp r0, #0
	movne r2, #0
	mov r0, r4
	str r2, [r4, #0x40]
	bl FUN_ov4_020c1c98
	b _020C1900
_020C18F4:
	add r3, r3, #1
_020C18F8:
	cmp r3, #4
	blt _020C187C
_020C1900:
	ldr r1, [r6, #0x6c]
	add r0, r6, #0x28
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [r6, #0x68]
	ldr r0, [r4, #0x714]
	ldr r1, [r6, #0x64]
	mov r3, r2
	bl FUN_ov16_020f03fc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C192C: .word unk_0209AEC0
	arm_func_end FUN_ov4_020c16f0

	arm_func_start FUN_ov4_020c1930
FUN_ov4_020c1930: ; 0x020C1930
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C1A1C ; =0x020A0640
	mov r4, #1
	mov r5, r0
	strb r4, [r1, #0x8b]
	mov r3, #0
	mvn r2, #0
	mov r0, #0x74
	b _020C1960
_020C1954:
	mla r1, r3, r0, r5
	strb r2, [r1, #0x286]
	add r3, r3, #1
_020C1960:
	cmp r3, #4
	blt _020C1954
	mov r12, #0
	mvn r2, #0
	mov r3, r12
	b _020C19A0
_020C1978:
	mov lr, r3
	add r1, r5, r12, lsl #2
	b _020C1994
_020C1984:
	add r0, r1, lr
	strb r2, [r0, #0x5b]
	strb r2, [r0, #0x63]
	add lr, lr, #1
_020C1994:
	cmp lr, #4
	blt _020C1984
	add r12, r12, #1
_020C19A0:
	cmp r12, #2
	blt _020C1978
	mov r1, #0
	ldr r0, _020C1A20 ; =0x0209AEC0
	strb r1, [r5, #0x286]
	strb r1, [r5, #0x5b]
	strb r1, [r5, #0x63]
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r1, #1
	cmp r1, #0
	beq _020C19F8
	ldr r0, _020C1A20 ; =0x0209AEC0
	bl FUN_02046744
	mov r1, #1
	b _020C19EC
_020C19E0:
	tst r0, r4, lsl r1
	bne _020C1A04
	add r1, r1, #1
_020C19EC:
	cmp r1, #4
	blt _020C19E0
	b _020C1A04
_020C19F8:
	ldr r0, _020C1A20 ; =0x0209AEC0
	bl FUN_02046730
	mov r1, r0
_020C1A04:
	mov r0, #0x74
	mla r0, r1, r0, r5
	strb r4, [r0, #0x286]
	strb r1, [r5, #0x5f]
	strb r4, [r5, #0x67]
	ldmfd sp!, {r3, r4, r5, pc}
_020C1A1C: .word unk_020A0640
_020C1A20: .word unk_0209AEC0
	arm_func_end FUN_ov4_020c1930

	arm_func_start FUN_ov4_020c1a24
FUN_ov4_020c1a24: ; 0x020C1A24
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _020C1BC8 ; =0x020A0640
	mov r12, #0
	strb r12, [r1, #0x8e]
	mov r4, r0
	ldrb r0, [r4, #0x740]
	mov r1, r12
	mov r2, r12
	cmp r0, #0
	beq _020C1A74
	ldr r2, _020C1BCC ; =0x020A0672
	ldr r0, _020C1BD0 ; =0x020A0660
	b _020C1A68
_020C1A5C:
	strb r12, [r2, r12]
	str r1, [r0, r12, lsl #2]
	add r12, r12, #1
_020C1A68:
	cmp r12, #4
	blt _020C1A5C
	b _020C1B18
_020C1A74:
	add r3, sp, #0
	str r12, [r3]
	str r12, [r3, #4]
	ldr r0, _020C1BD0 ; =0x020A0660
	ldr r1, _020C1BCC ; =0x020A0672
	mov r5, #0x74
	b _020C1AF4
_020C1A90:
	mla r6, r12, r5, r4
	strb r2, [r1, r12]
	add lr, r6, #0x200
	ldrsb r7, [lr, #0x86]
	cmp r7, #0
	blt _020C1AEC
	ldr r6, [r3, r7, lsl #2]
	mov lr, r2
	add r6, r6, #1
	str r7, [r0, r12, lsl #2]
	str r6, [r3, r7, lsl #2]
	add r8, r4, r7, lsl #2
	b _020C1AE0
_020C1AC4:
	add r7, r8, lr
	ldrsb r6, [r7, #0x5b]
	cmp r12, r6
	ldreqsb lr, [r7, #0x63]
	streqb lr, [r1, r12]
	beq _020C1AF0
	add lr, lr, #1
_020C1AE0:
	cmp lr, #4
	blt _020C1AC4
	b _020C1AF0
_020C1AEC:
	str r2, [r0, r12, lsl #2]
_020C1AF0:
	add r12, r12, #1
_020C1AF4:
	cmp r12, #4
	blt _020C1A90
	ldr r0, [sp]
	cmp r0, #1
	ldreq r0, [sp, #4]
	cmpeq r0, #1
	ldreq r0, _020C1BC8 ; =0x020A0640
	moveq r1, #1
	streqb r1, [r0, #0x8e]
_020C1B18:
	mov r5, #0
	ldr r2, _020C1BD4 ; =0x020A06BC
	mov r0, #0x74
	b _020C1B48
_020C1B28:
	ldrb r1, [r4, #0x72]
	cmp r1, #0
	mlaeq r1, r5, r0, r4
	addeq r1, r1, #0x200
	ldreqh r3, [r1, #0xb4]
	moveq r1, r5, lsl #1
	add r5, r5, #1
	streqh r3, [r2, r1]
_020C1B48:
	cmp r5, #4
	blt _020C1B28
	ldr r0, _020C1BD8 ; =0x0209AEC0
	bl FUN_02046744
	mov r5, #1
	mov r6, #0
	mov r3, r5
	mov r1, #0x74
	b _020C1B8C
_020C1B6C:
	tst r0, r3, lsl r6
	beq _020C1B88
	mla r2, r6, r1, r4
	ldrb r2, [r2, #0x2b6]
	cmp r2, #0
	moveq r5, #0
	beq _020C1B94
_020C1B88:
	add r6, r6, #1
_020C1B8C:
	cmp r6, #4
	blt _020C1B6C
_020C1B94:
	ldr r2, _020C1BD8 ; =0x0209AEC0
	mov r0, r4
	mov r1, #0
	strb r5, [r2, #0x68]
	bl FUN_ov4_020c1bdc
	ldr r5, _020C1BC8 ; =0x020A0640
	mov r1, #1
	strb r0, [r5, #0x30]
	mov r0, r4
	bl FUN_ov4_020c1bdc
	strb r0, [r5, #0x31]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C1BC8: .word unk_020A0640
_020C1BCC: .word unk_020A0672
_020C1BD0: .word unk_020A0660
_020C1BD4: .word unk_020A06BC
_020C1BD8: .word unk_0209AEC0
	arm_func_end FUN_ov4_020c1a24

	arm_func_start FUN_ov4_020c1bdc
FUN_ov4_020c1bdc: ; 0x020C1BDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020C1C4C ; =0x0209AEC0
	mov r4, r1
	bl FUN_02046744
	ldrb r1, [r5, #0x740]
	cmp r1, #0
	beq _020C1C0C
	cmp r4, #0
	moveq r0, #0
	mvnne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1C0C:
	mov r12, #0
	add r3, r5, r4, lsl #2
	mov r1, #1
	b _020C1C3C
_020C1C1C:
	add r2, r3, r12
	ldrsb r2, [r2, #0x5b]
	cmp r2, #0
	blt _020C1C38
	tst r0, r1, lsl r2
	movne r0, r2
	ldmnefd sp!, {r3, r4, r5, pc}
_020C1C38:
	add r12, r12, #1
_020C1C3C:
	cmp r12, #4
	blt _020C1C1C
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1C4C: .word unk_0209AEC0
	arm_func_end FUN_ov4_020c1bdc

	arm_func_start FUN_ov4_020c1c50
FUN_ov4_020c1c50: ; 0x020C1C50
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r12, lr
_020C1C5C:
	mov r4, r12
	add r3, r0, lr, lsl #2
_020C1C64:
	add r2, r4, r3
	ldrsb r2, [r2, #0x5b]
	cmp r1, r2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, #4
	blt _020C1C64
	add lr, lr, #1
	cmp lr, #2
	blt _020C1C5C
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c1c50

	arm_func_start FUN_ov4_020c1c98
FUN_ov4_020c1c98: ; 0x020C1C98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r0
	ldr r7, [r9, #0xc]
	mov r8, r1
	cmp r7, r8
	ldr r4, _020C228C ; =0x0209AEC0
	mov r5, #1
	mov r6, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #4
	str r6, [r9, #0x50]
	str r6, [r9, #0x10]
	strb r5, [r9, #0x38]
	strb r6, [r9, #0x240]
	cmpne r7, #0x21
	bne _020C1CF0
	ldr r0, _020C2290 ; =0x04000050
	mov r1, #0xf
	mov r2, #0
	bl FUN_0200462c
_020C1CF0:
	ldr r10, _020C2294 ; =0x020A0640
	str r8, [r9, #0xc]
	cmp r8, #0x20
	addls pc, pc, r8, lsl #2
	b _020C2280
_020C1D04: ; jump table
	b _020C2280 ; case 0
	b _020C1D88 ; case 1
	b _020C2224 ; case 2
	b _020C2280 ; case 3
	b _020C2280 ; case 4
	b _020C1DC8 ; case 5
	b _020C2280 ; case 6
	b _020C1F1C ; case 7
	b _020C1F24 ; case 8
	b _020C2280 ; case 9
	b _020C1F5C ; case 10
	b _020C1F84 ; case 11
	b _020C2054 ; case 12
	b _020C205C ; case 13
	b _020C2074 ; case 14
	b _020C2080 ; case 15
	b _020C2280 ; case 16
	b _020C208C ; case 17
	b _020C21E4 ; case 18
	b _020C2204 ; case 19
	b _020C2234 ; case 20
	b _020C2090 ; case 21
	b _020C2134 ; case 22
	b _020C21E0 ; case 23
	b _020C208C ; case 24
	b _020C2240 ; case 25
	b _020C224C ; case 26
	b _020C2084 ; case 27
	b _020C225C ; case 28
	b _020C2268 ; case 29
	b _020C2080 ; case 30
	b _020C2274 ; case 31
	b _020C2278 ; case 32
_020C1D88:
	ldr r0, _020C228C ; =0x0209AEC0
	bl FUN_020465fc
	strb r6, [r10, #0x1a]
	ldr r2, [r9, #0x48]
	sub r1, r6, #1
	mov r0, r9
	str r2, [r9, #0x40]
	str r1, [r9, #0xa8]
	strb r6, [r9, #0x39]
	bl FUN_ov4_020c14d4
	ldrb r0, [r9, #0x741]
	str r6, [r9, #0x4c]
	cmp r0, #0
	streqb r6, [r9, #0x740]
	streqb r6, [r10, #0x8a]
	b _020C2280
_020C1DC8:
	ldr r11, _020C2298 ; =0x0209BA20
	mov r1, r6
	mov r0, r11
	bl FUN_0207249c
	mov r8, #2
	mov r10, r0
	mov r0, r11
	mov r1, r8
	bl FUN_020724c8
	ldrb r2, [r9, #0x71]
	mov r1, r0
	cmp r2, #0
	ldreq r0, _020C228C ; =0x0209AEC0
	moveq r2, #4
	streqb r2, [r0, #0x302]
	beq _020C1E38
	ldrb r0, [r9, #0x72]
	ldr r5, _020C228C ; =0x0209AEC0
	mov r1, r6
	cmp r0, #0
	mov r0, r11
	beq _020C1E2C
	bl FUN_020724c8
	mov r1, r0
	b _020C1E38
_020C1E2C:
	bl FUN_020724c8
	mov r1, r0
	strb r8, [r5, #0x302]
_020C1E38:
	ldrb r0, [r9, #0x71]
	mov r2, #0x78
	mov r5, #1
	cmp r0, #0
	ldr r0, _020C2294 ; =0x020A0640
	beq _020C1E70
	str r5, [sp]
	str r2, [sp, #4]
	ldr r6, _020C229C ; =0x00001423
	ldr r0, _020C228C ; =0x0209AEC0
	mov r2, r10
	mov r3, #2
	str r6, [sp, #8]
_020C1E6C:
	b _020C1ECC
_020C1E70:
	ldrb r3, [r9, #0x72]
	cmp r3, #0
	mov r3, #4
	beq _020C1EB4
	ldrb r0, [r0, #0x89]
	ldr r8, _020C229C ; =0x00001423
	cmp r0, #0
	beq _020C1EA8
	str r6, [sp]
	str r2, [sp, #4]
	ldr r0, _020C228C ; =0x0209AEC0
	mov r2, r10
	str r8, [sp, #8]
	b _020C1E6C
_020C1EA8:
	str r5, [sp]
	ldr r6, _020C22A0 ; =0x00001333
	b _020C1EBC
_020C1EB4:
	str r6, [sp]
	ldr r6, _020C229C ; =0x00001423
_020C1EBC:
	str r2, [sp, #4]
	ldr r0, _020C228C ; =0x0209AEC0
	mov r2, r10
	str r6, [sp, #8]
_020C1ECC:
	bl FUN_02046508
	ldr r6, _020C2294 ; =0x020A0640
	mov r0, r4
	strb r5, [r6, #0x1a]
	mov r5, #4
	bl FUN_02046d60
	ldr r1, [r4, #0x5c]
	mov r0, r4
	strb r1, [r6, #0x1c]
	bl FUN_02046da4
	ldr r0, [r4, #0x5c]
	strb r0, [r6, #0x1c]
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	streqb r5, [r4, #0x302]
	movne r0, #2
	strneb r0, [r4, #0x302]
_020C1F10:
	mov r0, r9
	bl FUN_ov4_020c1520
	b _020C2280
_020C1F1C:
	str r6, [r9, #0xac]
	b _020C2280
_020C1F24:
	ldrb r0, [r9, #0x71]
	mov r1, #0x3c
	str r6, [r9, #0x40]
	str r6, [r9, #0x44]
	strb r5, [r9, #0x56]
	strb r5, [r9, #0x55]
	strb r5, [r9, #0x54]
	str r1, [r9, #0x6c]
	strb r6, [r9, #0x70]
	cmp r0, #0
	beq _020C2280
	ldr r0, _020C228C ; =0x0209AEC0
	bl FUN_02046818
	b _020C2280
_020C1F5C:
	ldr r0, _020C228C ; =0x0209AEC0
	bl FUN_020465fc
	mov r2, #0x96
	mov r0, r9
	mov r1, r6
	strb r6, [r9, #0x39]
	str r2, [r9, #0xa4]
	bl FUN_ov4_020c5a50
	strb r6, [r10, #0x8b]
	b _020C2280
_020C1F84:
	ldr r11, _020C2298 ; =0x0209BA20
	sub r2, r6, #1
	mov r0, r11
	mov r1, r6
	str r6, [r9, #0x40]
	str r6, [r9, #0x44]
	str r2, [r9, #0xa8]
	strb r6, [r9, #0x415]
	bl FUN_0207249c
	mov r8, #2
	mov r10, r0
	mov r0, r11
	mov r1, r8
	bl FUN_020724c8
	ldrb r2, [r9, #0x71]
	mov r1, r0
	cmp r2, #0
	beq _020C2000
	mov r0, r11
	mov r1, r6
	bl FUN_020724c8
	mov r2, #1
	mov r1, r0
	str r2, [sp]
	mov r0, #0x78
	ldr r6, _020C229C ; =0x00001423
	str r0, [sp, #4]
	ldr r0, _020C228C ; =0x0209AEC0
	mov r2, r10
	mov r3, r8
	b _020C201C
_020C2000:
	str r6, [sp]
	mov r0, #0x78
	ldr r6, _020C229C ; =0x00001423
	str r0, [sp, #4]
	ldr r0, _020C228C ; =0x0209AEC0
	mov r2, r10
	mov r3, #4
_020C201C:
	str r6, [sp, #8]
	bl FUN_02046508
	ldr r6, _020C2294 ; =0x020A0640
	mov r0, r9
	strb r5, [r6, #0x1a]
	bl FUN_ov4_020c14d4
	mov r0, r4
	bl FUN_02046dd0
	ldr r0, [r4, #0x5c]
	strb r0, [r6, #0x1c]
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	beq _020C2280
	b _020C1F10
_020C2054:
	str r6, [r9, #0x6c]
	b _020C2280
_020C205C:
	ldr r1, [r9, #0x40]
	ldr r0, _020C228C ; =0x0209AEC0
	add r1, r9, r1, lsl #2
	ldr r1, [r1, #0x418]
	bl FUN_02046ea8
	b _020C2280
_020C2074:
	mov r0, #0x96
	str r0, [r9, #0x98]
	b _020C2280
_020C2080:
	b _020C1F5C
_020C2084:
	str r6, [r9, #0x40]
	b _020C2280
_020C208C:
	b _020C2084
_020C2090:
	mov r0, r4
	bl FUN_02046730
	and r1, r0, #1
	mov r0, r4
	str r1, [r9, #0x40]
	str r1, [r9, #0x44]
	bl FUN_02046730
	mov r2, r5, lsl r0
	mov r4, #0
	mov r0, r9
	mov r1, r4
	strb r2, [r9, #0x414]
	bl FUN_ov4_020c5a50
	strb r4, [r9, #0x39]
	mvn r2, #0
	mov r0, #0x74
	b _020C20E0
_020C20D4:
	mla r1, r4, r0, r9
	strb r2, [r1, #0x286]
	add r4, r4, #1
_020C20E0:
	cmp r4, #4
	blt _020C20D4
	mov r3, #0
	mvn r2, #0
	b _020C211C
_020C20F4:
	mov r4, r6
	add r1, r9, r3, lsl #2
	b _020C2110
_020C2100:
	add r0, r1, r4
	strb r2, [r0, #0x5b]
	strb r2, [r0, #0x63]
	add r4, r4, #1
_020C2110:
	cmp r4, #4
	blt _020C2100
	add r3, r3, #1
_020C211C:
	cmp r3, #2
	blt _020C20F4
	mov r0, r9
	strb r6, [r9, #0x6b]
	bl FUN_ov4_020c5a84
	b _020C2280
_020C2134:
	ldr r0, [r9, #0x40]
	cmp r0, #0
	bne _020C2158
	ldr r0, _020C228C ; =0x0209AEC0
	bl FUN_02046730
	mov r1, #0x74
	mla r1, r0, r1, r9
	strb r6, [r1, #0x286]
	b _020C216C
_020C2158:
	ldr r0, _020C228C ; =0x0209AEC0
	bl FUN_02046730
	mov r1, #0x74
	mla r1, r0, r1, r9
	strb r5, [r1, #0x286]
_020C216C:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C2280
	mov r3, #0
	add r0, r9, #0x200
	b _020C21D4
_020C2190:
	ldrsb r1, [r0, #0x86]
	add r1, r9, r1, lsl #2
	add r2, r1, r3
	ldrsb r1, [r2, #0x5b]
	cmp r1, #0
	bge _020C21D0
	strb r6, [r2, #0x5b]
	add r0, r9, #0x200
	ldrsb r2, [r9, #0x6b]
	ldrsb r0, [r0, #0x86]
	add r1, r2, #1
	add r0, r9, r0, lsl #2
	strb r1, [r9, #0x6b]
	add r0, r0, r3
	strb r2, [r0, #0x63]
	b _020C2280
_020C21D0:
	add r3, r3, #1
_020C21D4:
	cmp r3, #4
	blt _020C2190
	b _020C2280
_020C21E0:
	b _020C2084
_020C21E4:
	ldr r0, _020C228C ; =0x0209AEC0
	bl FUN_02046730
	mov r2, r5, lsl r0
	mov r0, r9
	mov r1, #0
	strb r2, [r9, #0x414]
	bl FUN_ov4_020c5a50
	b _020C2280
_020C2204:
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	mov r0, r9
	bne _020C221C
	bl FUN_ov4_020c1124
	b _020C2280
_020C221C:
	bl FUN_ov4_020c1148
	b _020C2280
_020C2224:
	mov r0, #0x96
	strb r6, [r9, #0x39]
	str r0, [r9, #0xa4]
	b _020C2280
_020C2234:
	mov r0, r9
	bl FUN_ov4_020c10b8
	b _020C2280
_020C2240:
	mov r0, r9
	bl FUN_ov4_020c1174
	b _020C2280
_020C224C:
	mov r0, r9
	mov r1, #1
	bl FUN_ov4_020c1218
	b _020C2280
_020C225C:
	mov r0, r9
	bl FUN_ov4_020c1318
	b _020C2280
_020C2268:
	mov r0, r9
	bl FUN_ov4_020c13ac
	b _020C2280
_020C2274:
	b _020C2084
_020C2278:
	ldr r0, [r9, #0x4c]
	str r0, [r9, #0x40]
_020C2280:
	str r7, [r9, #0x14]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C228C: .word unk_0209AEC0
_020C2290: .word 0x04000050
_020C2294: .word unk_020A0640
_020C2298: .word unk_0209BA20
_020C229C: .word 0x00001423
_020C22A0: .word 0x00001333
	arm_func_end FUN_ov4_020c1c98

	arm_func_start FUN_ov4_020c22a4
FUN_ov4_020c22a4: ; 0x020C22A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0
	mov r9, r0
	mov r0, r5
	mov r1, r5
	mov r4, #0xf0
	ldr r11, _020C2C3C ; =0x0209AEC0
	mov r10, #1
	bl FUN_ov16_020f0634
	ldrb r1, [r9, #0x71]
	mov r6, r0
	cmp r1, #0
	bne _020C22FC
	ldr r0, _020C2C3C ; =0x0209AEC0
	mov r1, r6
	mov r2, r4
	bl FUN_02046950
	ldr r1, _020C2C40 ; =0x0209A108
	cmp r0, #0
	str r0, [r1]
	movgt r5, r10
	b _020C2314
_020C22FC:
	ldr r0, _020C2C3C ; =0x0209AEC0
	mov r1, r6
	add r2, r6, #0xf0
	mov r3, #0x78
	bl FUN_02046880
	mov r5, r0
_020C2314:
	cmp r5, #0
	bne _020C23D8
	mov r0, r11
	bl FUN_020466e4
	cmp r0, #0
	bne _020C23D0
	ldr r0, [r9, #0xc]
	cmp r0, #0xe
	bne _020C2354
	ldr r0, [r9, #0x98]
	sub r0, r0, #1
	str r0, [r9, #0x98]
	cmp r0, #0
	bgt _020C23D0
	mov r0, r11
	b _020C23C0
_020C2354:
	cmp r0, #0x13
	cmpne r0, #9
	cmpne r0, #8
	bne _020C2378
_020C2364:
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_02046e28
	mov r0, r9
	mov r1, #0xa
	b _020C23CC
_020C2378:
	cmp r0, #0x10
	cmpne r0, #0x11
	cmpne r0, #0x12
	cmpne r0, #0x15
	cmpne r0, #0x16
	cmpne r0, #0x17
	cmpne r0, #0x18
	beq _020C23A0
	cmp r0, #0x1b
	bne _020C23D0
_020C23A0:
	ldr r0, [r11, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C23BC
	b _020C2364
_020C23BC:
	ldr r0, _020C2C3C ; =0x0209AEC0
_020C23C0:
	bl FUN_02046e48
	mov r0, r9
	mov r1, #0xf
_020C23CC:
	bl FUN_ov4_020c1c98
_020C23D0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C23D8:
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	beq _020C2528
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_02046730
	cmp r0, #0
	mov r1, #1
	movne r1, #0
	ldr r0, _020C2C3C ; =0x0209AEC0
	mla r5, r1, r4, r6
	bl FUN_02046730
	ldr r1, [r9, #0xc]
	mla r2, r0, r4, r6
	cmp r1, #0x12
	beq _020C242C
	ldrb r0, [r5, #2]
	cmp r0, #0xf
	ldreqb r0, [r2, #2]
	cmpeq r0, #0xf
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C242C:
	ldr r0, [r9, #0xc]
	ldrb r1, [r5, #0x21]
	cmp r0, #0xe
	bgt _020C2464
	cmp r0, #0xe
	bge _020C24E8
	cmp r0, #9
	bgt _020C2C34
	cmp r0, #7
	blt _020C2C34
	beq _020C2470
	cmp r0, #9
	beq _020C2498
	b _020C2C34
_020C2464:
	cmp r0, #0x12
	beq _020C250C
	b _020C2C34
_020C2470:
	cmp r1, #0xe
	bne _020C2C34
	ldrb r0, [r9, #0x738]
	cmp r0, #0
	streqb r10, [r9, #0x738]
	beq _020C2C34
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c164c
	b _020C26D0
_020C2498:
	ldrb r0, [r2, #0x21]
	cmp r0, #9
	bne _020C2C34
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_02046e28
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	beq _020C24C4
	mov r0, r9
	mov r1, #0x14
	b _020C2854
_020C24C4:
	ldrb r0, [r9, #0x741]
	mov r1, #1
	cmp r0, #0
	bne _020C24DC
	mov r0, r9
	b _020C2854
_020C24DC:
	mov r0, #0x1a
	bl FUN_ov16_020f2604
	b _020C2C34
_020C24E8:
	cmp r1, #0x10
	cmpne r1, #0x11
	beq _020C24FC
	cmp r1, #0x12
	bne _020C2C34
_020C24FC:
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c164c
	b _020C284C
_020C250C:
	cmp r1, #0x12
	cmpne r1, #0x13
	beq _020C2524
	ldrb r0, [r5, #2]
	cmp r0, #0xf
	beq _020C2C34
_020C2524:
	b _020C2C28
_020C2528:
	mov r0, r11
	bl FUN_02046744
	mov r7, r0
	mov r0, r11
	bl FUN_02046730
	ldr r1, [r9, #0xc]
	mov r8, r0
	cmp r1, #0x12
	beq _020C2578
	mov r5, #0
	b _020C2570
_020C2554:
	tst r7, r10, lsl r5
	mlane r0, r5, r4, r6
	ldrneb r0, [r0, #2]
	cmpne r0, #0xf
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r5, #1
_020C2570:
	cmp r5, #4
	blt _020C2554
_020C2578:
	ldr r0, [r9, #0xc]
	cmp r0, #0x1b
	addls pc, pc, r0, lsl #2
	b _020C2C34
_020C2588: ; jump table
	b _020C2C34 ; case 0
	b _020C2C34 ; case 1
	b _020C2C34 ; case 2
	b _020C2C34 ; case 3
	b _020C2C34 ; case 4
	b _020C2C34 ; case 5
	b _020C2C34 ; case 6
	b _020C25F8 ; case 7
	b _020C25F8 ; case 8
	b _020C26DC ; case 9
	b _020C2C34 ; case 10
	b _020C2C34 ; case 11
	b _020C2C34 ; case 12
	b _020C2C34 ; case 13
	b _020C274C ; case 14
	b _020C2C34 ; case 15
	b _020C2C34 ; case 16
	b _020C2858 ; case 17
	b _020C2ABC ; case 18
	b _020C2C34 ; case 19
	b _020C2C34 ; case 20
	b _020C2908 ; case 21
	b _020C2908 ; case 22
	b _020C2A48 ; case 23
	b _020C2C34 ; case 24
	b _020C2C34 ; case 25
	b _020C2C34 ; case 26
	b _020C28BC ; case 27
_020C25F8:
	mov r0, r10, lsl r8
	mov r11, #0
	mov r5, r11
	str r0, [sp]
	b _020C2658
_020C260C:
	mov r0, r5, lsl #0x10
	cmp r8, r0, lsr #16
	beq _020C2654
	tst r7, r10, lsl r5
	mlane r2, r5, r4, r6
	ldrneb r0, [r2, #0x57]
	cmpne r0, #0
	beq _020C2654
	ldrb r0, [r2, #0x21]
	cmp r0, #0xe
	bne _020C2654
	ldr r3, [sp]
	mov r0, r9
	orr r3, r3, r10, lsl r5
	mov r1, r5
	str r3, [sp]
	bl FUN_ov4_020c16f0
	add r11, r11, #1
_020C2654:
	add r5, r5, #1
_020C2658:
	cmp r5, #4
	blt _020C260C
	ldr r1, [r9, #0xac]
	cmp r11, r1
	beq _020C26AC
	ldr r0, [r9, #0xc]
	cmp r0, #8
	bne _020C26A8
	mov r0, #0x3c
	strb r10, [r9, #0x38]
	str r0, [r9, #0x6c]
	cmp r11, #3
	bne _020C2698
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_02046818
	b _020C26A8
_020C2698:
	cmp r1, #3
	bne _020C26A8
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_0204684c
_020C26A8:
	str r11, [r9, #0xac]
_020C26AC:
	ldr r0, [r9, #0xc]
	cmp r0, #7
	ldreq r0, [sp]
	cmpeq r0, r7
	bne _020C2C34
	cmp r0, r10, lsl r8
	beq _020C2C34
	mov r0, r9
	bl FUN_ov4_020c5bfc
_020C26D0:
	mov r0, r9
	mov r1, #8
	b _020C2854
_020C26DC:
	mla r0, r8, r4, r6
	ldrb r0, [r0, #0x21]
	cmp r0, #9
	bne _020C2C34
	mov r0, r11
	bl FUN_02046e28
	mov r0, r11
	bl FUN_020465fc
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	beq _020C2718
	mov r0, r9
	mov r1, #0x14
_020C2710:
	bl FUN_ov4_020c1c98
	b _020C2744
_020C2718:
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	bne _020C2730
	mov r0, r9
	mov r1, #1
	b _020C2710
_020C2730:
	mov r1, r10
	mov r0, #0x1a
	bl FUN_ov16_020f2604
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C2744:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C274C:
	mov r5, #1
	b _020C2790
_020C2754:
	mov r0, r5, lsl #0x10
	cmp r8, r0, lsr #16
	beq _020C278C
	tst r7, r10, lsl r5
	mlane r2, r5, r4, r6
	ldrneb r0, [r2, #0x57]
	cmpne r0, #0
	beq _020C278C
	ldrb r0, [r2, #0x21]
	cmp r0, #0xe
	bne _020C278C
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c16f0
_020C278C:
	add r5, r5, #1
_020C2790:
	cmp r5, #4
	blt _020C2754
	ldrb r0, [r6, #0x21]
	cmp r0, #0x10
	cmpne r0, #0x11
	cmpne r0, #0x15
	beq _020C27B4
	cmp r0, #0x16
	bne _020C2C34
_020C27B4:
	ldrb r0, [r6, #0x56]
	tst r0, r10, lsl r8
	bne _020C27D4
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_02046e48
	mov r0, r9
	mov r1, #0xf
	b _020C2854
_020C27D4:
	mov r0, r9
	mov r2, r6
	mov r1, #0
	bl FUN_ov4_020c16f0
	ldrb r0, [r6, #0x58]
	cmp r0, #0
	beq _020C2810
	ldrb r0, [r9, #0x57]
	cmp r0, #0
	bne _020C2810
	ldr r0, _020C2C3C ; =0x0209AEC0
	bl FUN_02046e48
	mov r0, r9
	mov r1, #0x1e
	b _020C2854
_020C2810:
	ldrb r1, [r6, #0x58]
	ldr r0, _020C2C44 ; =0x020A0640
	strb r1, [r0, #0x8a]
	mov r0, #1
	cmp r1, #0
	moveq r0, #0
	strb r0, [r9, #0x740]
	tst r0, #0xff
	ldrnesh r1, [r6, #0x5a]
	ldrne r0, _020C2C48 ; =0x020A1740
	strneh r1, [r0, #0x7c]
	ldrnesh r1, [r6, #0x5c]
	strneh r1, [r0, #0x7e]
	mov r0, r9
	bl FUN_ov4_020c5bfc
_020C284C:
	mov r0, r9
	mov r1, #0x10
_020C2854:
	b _020C2C30
_020C2858:
	ldr r0, [r11, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020C2C34
	ldrb r0, [r9, #0x740]
	cmp r0, #0
	ldrb r0, [r6, #0x21]
	bne _020C28AC
	cmp r0, #0x1b
	moveq r0, #0x1b
	streq r0, [r9, #0x10]
	beq _020C2C34
	cmp r0, #0x15
	beq _020C28A0
	cmp r0, #0x16
	bne _020C2C34
_020C28A0:
	mov r0, #0x15
	str r0, [r9, #0x10]
	b _020C2C34
_020C28AC:
	cmp r0, #0x12
	moveq r0, #0x12
	streq r0, [r9, #0x10]
	b _020C2C34
_020C28BC:
	ldr r0, [r11, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020C2C34
	ldrb r0, [r6, #0x21]
	cmp r0, #0x15
	cmpne r0, #0x16
	moveq r0, #0x15
	streq r0, [r9, #0x10]
	beq _020C2C34
	cmp r0, #0x12
	bne _020C2C34
	mov r1, #0x12
	mov r0, r9
	str r1, [r9, #0x10]
	bl FUN_ov4_020c1930
	b _020C2C34
_020C2908:
	mov r5, #0
	add r11, r9, #0x14
	b _020C298C
_020C2914:
	mov r0, r5, lsl #0x10
	cmp r8, r0, lsr #16
	beq _020C2988
	tst r7, r10, lsl r5
	beq _020C2988
	mla r0, r5, r4, r6
	ldrb r0, [r0, #0x21]
	cmp r0, #0x15
	cmpne r0, #0x16
	beq _020C2944
	cmp r0, #0x17
	bne _020C2988
_020C2944:
	mla r0, r5, r4, r6
	ldrb r0, [r0, #0x21]
	cmp r0, #0x16
	beq _020C2964
	cmp r0, #0x17
	ldreq r0, [r9, #0xc]
	cmpeq r0, #0x16
	bne _020C2978
_020C2964:
	mov r0, r10, lsl r5
	ldrb r1, [r11, #0x400]
	and r0, r0, #0xff
	orr r0, r1, r0
	strb r0, [r11, #0x400]
_020C2978:
	mla r2, r5, r4, r6
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c16f0
_020C2988:
	add r5, r5, #1
_020C298C:
	cmp r5, #4
	blt _020C2914
	ldr r0, [r9, #0xc]
	mov r1, #0xf0
	cmp r0, #0x16
	ldreqb r0, [r9, #0x414]
	mov r4, #1
	andeq r0, r0, r7
	cmpeq r7, r0
	bne _020C2C34
	cmp r8, #0
	beq _020C29F8
	mov r5, #0
	b _020C29E8
_020C29C4:
	tst r7, r4, lsl r5
	beq _020C29E4
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c1c50
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C29E4:
	add r5, r5, #1
_020C29E8:
	cmp r5, #4
	blt _020C29C4
	mov r0, r9
	b _020C2A38
_020C29F8:
	mov r5, r4
	mov r0, r4
	b _020C2A20
_020C2A04:
	tst r7, r0, lsl r5
	beq _020C2A1C
	mla r2, r5, r1, r6
	ldrb r2, [r2, #0x21]
	cmp r2, #0x17
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C2A1C:
	add r5, r5, #1
_020C2A20:
	cmp r5, #4
	blt _020C2A04
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	mov r0, r9
	bne _020C2A40
_020C2A38:
	mov r1, #0x17
	b _020C2854
_020C2A40:
	mov r1, #0x12
	b _020C2C30
_020C2A48:
	cmp r8, #0
	beq _020C2C34
	mov r5, #0
	b _020C2A8C
_020C2A58:
	mov r0, r5, lsl #0x10
	cmp r8, r0, lsr #16
	beq _020C2A88
	tst r7, r10, lsl r5
	beq _020C2A88
	mla r2, r5, r4, r6
	ldrb r0, [r2, #0x21]
	cmp r0, #0x17
	bne _020C2A88
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c16f0
_020C2A88:
	add r5, r5, #1
_020C2A8C:
	cmp r5, #4
	blt _020C2A58
	ldrb r0, [r6, #0x21]
	cmp r0, #0x15
	bne _020C2AAC
	mov r0, r9
	mov r1, #0x15
	b _020C2854
_020C2AAC:
	cmp r0, #0x12
	bne _020C2C34
	mov r0, r9
	b _020C2A40
_020C2ABC:
	mov r5, #0
	add r11, r9, #0x14
	b _020C2B54
_020C2AC8:
	mov r0, r5, lsl #0x10
	cmp r8, r0, lsr #16
	beq _020C2B50
	tst r7, r10, lsl r5
	mov r2, r10, lsl r5
	beq _020C2B50
	mla r1, r5, r4, r6
	ldrb r0, [r1, #2]
	cmp r0, #0xf
	ldrneb r1, [r11, #0x400]
	andne r0, r2, #0xff
	orrne r0, r1, r0
	strneb r0, [r11, #0x400]
	bne _020C2B50
	ldrb r0, [r1, #0x21]
	cmp r0, #0x12
	beq _020C2B14
	cmp r0, #0x13
	bne _020C2B50
_020C2B14:
	mla r2, r5, r4, r6
	mov r0, r9
	mov r1, r5
	bl FUN_ov4_020c16f0
	cmp r8, #0
	bne _020C2B3C
	mla r0, r5, r4, r6
	ldrb r0, [r0, #0x21]
	cmp r0, #0x13
	bne _020C2B50
_020C2B3C:
	mov r0, r10, lsl r5
	ldrb r1, [r11, #0x400]
	and r0, r0, #0xff
	orr r0, r1, r0
	strb r0, [r11, #0x400]
_020C2B50:
	add r5, r5, #1
_020C2B54:
	cmp r5, #4
	blt _020C2AC8
	ldrb r0, [r9, #0x414]
	mov r6, #0
	and r0, r0, r7
	cmp r7, r0
	bne _020C2C34
	mov r0, r9
	mov r1, r6
	bl FUN_ov4_020c1bdc
	mov r4, r0
	mov r0, r9
	mov r1, #1
	bl FUN_ov4_020c1bdc
	mov r5, r0
	ldr r0, _020C2C4C ; =0x0209BA20
	mov r1, r6
	bl FUN_0207249c
	mov r1, r0
	cmp r4, #0
	blt _020C2BDC
	add r0, r9, #0x5a
	add r0, r0, #0x200
	mov r6, #0x74
	mla r0, r4, r6, r0
	mov r2, #0x11
	bl MI_CpuCopy8
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	cmpne r4, #0
	mlagt r0, r4, r6, r9
	ldrgtb r1, [r0, #0x26b]
	ldrgt r0, _020C2C44 ; =0x020A0640
	strgtb r1, [r0, #0x9b]
_020C2BDC:
	ldr r0, _020C2C4C ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	mov r1, r0
	cmp r5, #0
	blt _020C2C28
	add r0, r9, #0x5a
	add r0, r0, #0x200
	mov r4, #0x74
	mla r0, r5, r4, r0
	mov r2, #0x11
	bl MI_CpuCopy8
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	cmpne r5, #0
	mlagt r0, r5, r4, r9
	ldrgtb r1, [r0, #0x26b]
	ldrgt r0, _020C2C44 ; =0x020A0640
	strgtb r1, [r0, #0x9b]
_020C2C28:
	mov r0, r9
	mov r1, #0x13
_020C2C30:
	bl FUN_ov4_020c1c98
_020C2C34:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C2C3C: .word unk_0209AEC0
_020C2C40: .word unk_0209A108
_020C2C44: .word unk_020A0640
_020C2C48: .word unk_020A1740
_020C2C4C: .word unk_0209BA20
	arm_func_end FUN_ov4_020c22a4

	arm_func_start FUN_ov4_020c2c50
FUN_ov4_020c2c50: ; 0x020C2C50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r5, _020C2E90 ; =0x0209A4E0
	mov r6, #0
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, #0xf0
	ldr r4, _020C2E94 ; =0x0209AEC0
	bl MIi_CpuClearFast
	mov r0, #0xf
	strb r0, [r5, #2]
	ldr r0, [r7, #8]
	mov r1, #1
	strb r0, [r5, #3]
	ldr r0, [r7, #0xc]
	strb r0, [r5, #0x21]
	strb r1, [r5, #0x57]
	ldrb r0, [r7, #0x71]
	cmp r0, #0
	beq _020C2CBC
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	movne r1, r6
	cmp r1, #0
	addne r2, r7, #0x244
	addeq r2, r7, #0x2b8
	b _020C2E34
_020C2CBC:
	ldrb r0, [r7, #0x415]
	cmp r0, #0
	bne _020C2D14
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	movne r1, r6
	cmp r1, #0
	bne _020C2CFC
	ldr r0, _020C2E94 ; =0x0209AEC0
	bl FUN_020466e4
	cmp r0, #0
	beq _020C2D08
	ldr r0, _020C2E98 ; =0x020A18A0
	bl FUN_0203e1e8
	cmp r0, #0
	beq _020C2D08
_020C2CFC:
	mov r0, r7
	bl FUN_ov4_020c1520
	b _020C2D14
_020C2D08:
	strb r6, [r5, #0x57]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2D14:
	mov r0, r4
	bl FUN_02046730
	ldr r3, [r4, #0x5c]
	add r2, r7, #0x244
	mov r1, #0x74
	mla r2, r0, r1, r2
	mov r0, #1
	cmp r3, #1
	movne r0, #0
	cmp r0, #0
	beq _020C2D74
	ldr r0, [r7, #0xc]
	cmp r0, #0x10
	cmpne r0, #0x11
	cmpne r0, #0x15
	cmpne r0, #0x16
	bne _020C2D74
	ldrb r0, [r7, #0x55]
	ldrb r1, [r7, #0x54]
	ldrb r3, [r7, #0x56]
	mov r0, r0, lsl #2
	orr r0, r0, r1, lsl #1
	orr r0, r0, r3, lsl #3
	strb r0, [r5, #0x56]
_020C2D74:
	ldr r0, [r4, #0x5c]
	ldrsb r1, [r2, #0x42]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	strb r1, [r5, #0x24]
	cmp r0, #0
	beq _020C2DF0
	ldrb r0, [r7, #0x740]
	cmp r0, #0
	bne _020C2DF0
	mov r8, #0
	ldr r5, _020C2E9C ; =0x0209A505
	ldr r1, _020C2EA0 ; =0x0209A50D
	b _020C2DE8
_020C2DB0:
	mov r9, r6
	add lr, r7, r8, lsl #2
	add r4, r5, r8, lsl #2
	add r0, r1, r8, lsl #2
	b _020C2DDC
_020C2DC4:
	add r12, lr, r9
	ldrsb r3, [r12, #0x5b]
	strb r3, [r9, r4]
	ldrsb r3, [r12, #0x63]
	strb r3, [r9, r0]
	add r9, r9, #1
_020C2DDC:
	cmp r9, #4
	blt _020C2DC4
	add r8, r8, #1
_020C2DE8:
	cmp r8, #2
	blt _020C2DB0
_020C2DF0:
	ldr r0, _020C2E94 ; =0x0209AEC0
	mov r3, #1
	ldr r0, [r0, #0x5c]
	ldr r1, _020C2E90 ; =0x0209A4E0
	cmp r0, #1
	moveq r0, r3
	movne r0, #0
	cmp r0, #0
	strb r3, [r1, #0x60]
	beq _020C2E34
	ldrb r3, [r7, #0x740]
	ldr r0, _020C2EA4 ; =0x020A1740
	strb r3, [r1, #0x58]
	ldrsh r3, [r0, #0x7c]
	strh r3, [r1, #0x5a]
	ldrsh r0, [r0, #0x7e]
	strh r0, [r1, #0x5c]
_020C2E34:
	ldrb r0, [r2, #0x27]
	ldr r3, _020C2E90 ; =0x0209A4E0
	ldr r1, _020C2EA8 ; =0x0209A4F0
	strb r0, [r3, #0x22]
	ldrb r0, [r2, #0x41]
	strb r0, [r3, #0x23]
	ldr r0, [r2, #0x64]
	str r0, [r3, #4]
	ldr r0, [r2, #0x68]
	str r0, [r3, #8]
	ldr r0, [r2, #0x6c]
	str r0, [r3, #0xc]
	ldrb r0, [r7, #0x72]
	cmp r0, #0
	ldreqh r0, [r2, #0x70]
	streqh r0, [r3, #0x5e]
	ldrb r4, [r2, #0x72]
	add r0, r2, #0x16
	mov r2, #0x11
	strb r4, [r3, #0x59]
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2E90: .word unk_0209A4E0
_020C2E94: .word unk_0209AEC0
_020C2E98: .word unk_020A18A0
_020C2E9C: .word unk_0209A505
_020C2EA0: .word unk_0209A50D
_020C2EA4: .word unk_020A1740
_020C2EA8: .word unk_0209A4F0
	arm_func_end FUN_ov4_020c2c50

	arm_func_start FUN_ov4_020c2eac
FUN_ov4_020c2eac: ; 0x020C2EAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	mov r6, #0
	cmp r0, #0
	cmpne r0, #0x13
	cmpne r0, #1
	cmpne r0, #4
	cmpne r0, #0xa
	cmpne r0, #0xf
	cmpne r0, #0x1e
	cmpne r0, #0x1f
	cmpne r0, #0x20
	ldr r5, _020C31A4 ; =0x0209AEC0
	cmpne r0, #0x21
	beq _020C2F34
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_02046698
	cmp r0, #0
	bne _020C2F34
	ldr r0, _020C31A8 ; =0x020A0640
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	bne _020C2F18
	mov r0, r4
	mov r1, #0xa
	b _020C2F30
_020C2F18:
	cmp r0, #2
	mov r0, r4
	bne _020C2F2C
	mov r1, #0xf
	b _020C2F30
_020C2F2C:
	mov r1, #2
_020C2F30:
	bl FUN_ov4_020c1c98
_020C2F34:
	ldr r0, [r4, #0xc]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _020C30D0
_020C2F44: ; jump table
	b _020C30D0 ; case 0
	b _020C30D0 ; case 1
	b _020C30D0 ; case 2
	b _020C30D0 ; case 3
	b _020C30D0 ; case 4
	b _020C2F7C ; case 5
	b _020C2FC0 ; case 6
	b _020C3004 ; case 7
	b _020C30D0 ; case 8
	b _020C30D0 ; case 9
	b _020C30D0 ; case 10
	b _020C3038 ; case 11
	b _020C3084 ; case 12
	b _020C3084 ; case 13
_020C2F7C:
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020C2F98
	b _020C302C
_020C2F98:
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_02046ed4
	cmp r0, #0
	bge _020C2FAC
	b _020C3064
_020C2FAC:
	cmp r0, #1
	bne _020C30D0
	mov r0, r4
	mov r1, #6
	b _020C30CC
_020C2FC0:
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020C2FDC
	b _020C302C
_020C2FDC:
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_02046fa4
	cmp r0, #0
	bge _020C2FF0
	b _020C3064
_020C2FF0:
	cmp r0, #1
	bne _020C30D0
	mov r0, r4
	mov r1, #7
	b _020C30CC
_020C3004:
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C302C
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_020466e4
	cmp r0, #0
	bne _020C30D0
_020C302C:
	mov r0, r4
	mov r1, #0xa
	b _020C30CC
_020C3038:
	ldr r0, [r5, #0x5c]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020C3054
	b _020C30B0
_020C3054:
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_02046fac
	cmp r0, #0
	bge _020C3070
_020C3064:
	mov r0, r4
	mov r1, #1
	b _020C30CC
_020C3070:
	cmp r0, #1
	bne _020C30D0
	mov r0, r4
	mov r1, #0xc
	b _020C30CC
_020C3084:
	ldr r0, [r5, #0x5c]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020C30A0
	b _020C30B0
_020C30A0:
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_0204700c
	cmp r0, #0
	bge _020C30BC
_020C30B0:
	mov r0, r4
	mov r1, #0xf
	b _020C30CC
_020C30BC:
	cmp r0, #1
	bne _020C30D0
	mov r0, r4
	mov r1, #0xe
_020C30CC:
	bl FUN_ov4_020c1c98
_020C30D0:
	ldr r0, [r4, #0xc]
	cmp r0, #0x12
	bne _020C30F8
	ldr r0, _020C31A4 ; =0x0209AEC0
	bl FUN_020466c0
	cmp r0, #0
	ldreq r0, [r4, #0x73c]
	addeq r0, r0, #1
	streq r0, [r4, #0x73c]
	beq _020C30FC
_020C30F8:
	str r6, [r4, #0x73c]
_020C30FC:
	ldr r0, [r4, #0x73c]
	cmp r0, #0x12c
	bls _020C3138
	mov r1, #0
	str r1, [r4, #0x73c]
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r1, #1
	cmp r1, #0
	mov r0, r4
	beq _020C3130
	mov r1, #0xa
	b _020C3134
_020C3130:
	mov r1, #0xf
_020C3134:
	bl FUN_ov4_020c1c98
_020C3138:
	ldr r0, [r4, #0x9c]
	ldr r2, [r4, #0xc]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	str r0, [r4, #0x9c]
	cmp r2, #0xa
	bgt _020C316C
	bge _020C3184
	cmp r2, #2
	beq _020C3184
	ldmfd sp!, {r4, r5, r6, pc}
_020C316C:
	cmp r2, #0xf
	bgt _020C317C
	beq _020C3184
	ldmfd sp!, {r4, r5, r6, pc}
_020C317C:
	cmp r2, #0x1e
	ldmnefd sp!, {r4, r5, r6, pc}
_020C3184:
	ldr r0, [r4, #0xa4]
	sub r0, r0, #1
	str r0, [r4, #0xa4]
	cmp r0, #0
	ldmgtfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov4_020c10b8
	ldmfd sp!, {r4, r5, r6, pc}
_020C31A4: .word unk_0209AEC0
_020C31A8: .word unk_020A0640
	arm_func_end FUN_ov4_020c2eac

	arm_func_start FUN_ov4_020c31ac
FUN_ov4_020c31ac: ; 0x020C31AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r0, [r9, #8]
	ldr r4, _020C4120 ; =0x0209AEC0
	cmp r0, #4
	ldreqb r0, [r9, #0x21]
	mov r8, r1
	mov r10, #6
	mov r6, #1
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	ldr r0, _020C4124 ; =0x0209F5C0
	mov r1, r7
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0x39]
	mov r11, #4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	tst r8, #1
	beq _020C3898
	ldr r0, [r9, #0xc]
	ldr r8, _020C4128 ; =0x02099F44
	cmp r0, #0x21
	addls pc, pc, r0, lsl #2
	b _020C3864
_020C321C: ; jump table
	b _020C3864 ; case 0
	b _020C32A4 ; case 1
	b _020C34D8 ; case 2
	b _020C3864 ; case 3
	b _020C33A8 ; case 4
	b _020C3864 ; case 5
	b _020C3864 ; case 6
	b _020C3864 ; case 7
	b _020C3408 ; case 8
	b _020C3864 ; case 9
	b _020C34D8 ; case 10
	b _020C3864 ; case 11
	b _020C3488 ; case 12
	b _020C3864 ; case 13
	b _020C3864 ; case 14
	b _020C34D8 ; case 15
	b _020C3864 ; case 16
	b _020C34FC ; case 17
	b _020C3864 ; case 18
	b _020C3864 ; case 19
	b _020C3864 ; case 20
	b _020C3680 ; case 21
	b _020C3864 ; case 22
	b _020C3634 ; case 23
	b _020C35D4 ; case 24
	b _020C3864 ; case 25
	b _020C3864 ; case 26
	b _020C36A0 ; case 27
	b _020C3864 ; case 28
	b _020C3864 ; case 29
	b _020C34D8 ; case 30
	b _020C36F0 ; case 31
	b _020C3760 ; case 32
	b _020C33F0 ; case 33
_020C32A4:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	cmp r0, #0
	bne _020C3314
	ldrb r1, [r9, #0x71]
	cmp r1, #0
	bne _020C32E0
	mov r1, #5
_020C32CC:
	mov r0, #0x20
_020C32D0:
	str r1, [r9, #0x18]
	str r0, [r9, #0x1c]
	str r10, [r9, #8]
	b _020C3380
_020C32E0:
	mov r0, #5
	str r0, [r9, #0x10]
	bne _020C3380
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C330C
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C3380
_020C330C:
	str r11, [r9, #0x10]
	b _020C3380
_020C3314:
	cmp r0, #1
	bne _020C3360
	ldrb r1, [r9, #0x71]
	cmp r1, #0
	bne _020C3330
	mov r1, #0xb
	b _020C32CC
_020C3330:
	mov r0, #0xb
	str r0, [r9, #0x10]
	bne _020C3380
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C335C
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C3380
_020C335C:
	b _020C330C
_020C3360:
	cmp r0, #2
	bne _020C3374
	mov r1, #0x19
	mov r0, #0x1f
	b _020C32D0
_020C3374:
	cmp r0, #3
	moveq r0, #0x1a
	streq r0, [r9, #0x10]
_020C3380:
	ldr r0, [r9, #0x40]
	cmp r0, #4
	moveq r0, #0x1c
	streq r0, [r9, #0x10]
	beq _020C33A0
	cmp r0, #5
	moveq r0, #0x1d
	streq r0, [r9, #0x10]
_020C33A0:
	ldr r5, [r9, #0x40]
	b _020C3868
_020C33A8:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	movne r0, #0x14
	strne r0, [r9, #0x10]
	bne _020C33E8
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	streq r6, [r9, #0x10]
	beq _020C33E8
	mov r0, #0x1a
	mov r1, r6
	bl FUN_ov16_020f2604
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C33E8:
	mov r5, #0x10
	b _020C3868
_020C33F0:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, #0x20
	str r0, [r9, #0x10]
	b _020C33E8
_020C3408:
	ldrb r0, [r9, #0x71]
	mov r4, #0x15
	cmp r0, #0
	bne _020C3470
	ldrb r0, [r9, #0x70]
	cmp r0, #0
	bne _020C3434
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3434:
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046818
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	moveq r0, #0x10
	streq r0, [r9, #0x10]
	beq _020C3478
	ldr r0, [r9, #0x40]
	strb r7, [r9, #0x56]
	strb r7, [r9, #0x55]
	strb r7, [r9, #0x54]
	add r0, r9, r0
	strb r6, [r0, #0x54]
	str r4, [r9, #0x10]
	b _020C3478
_020C3470:
	mov r0, #0x11
	str r0, [r9, #0x10]
_020C3478:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	b _020C34F8
_020C3488:
	ldr r0, [r9, #0x6c]
	cmp r0, #0
	bgt _020C34A0
	ldr r0, [r9, #0xa8]
	cmp r0, #0
	bgt _020C34BC
_020C34A0:
	ldr r0, [r9, #0x6c]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C34BC:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, #0xd
_020C34CC:
	str r0, [r9, #0x10]
_020C34D0:
	mov r5, #0xc
	b _020C3868
_020C34D8:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r9, #0xa4]
	strb r6, [r9, #0x39]
	cmp r0, #7
	movgt r0, #7
	strgt r0, [r9, #0xa4]
_020C34F8:
	b _020C34D0
_020C34FC:
	ldr r0, [r4, #0x5c]
	mov r6, #0x15
	cmp r0, #1
	moveq r7, #1
	mov r5, #0xa
	cmp r7, #0
	bne _020C3524
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3524:
	ldr r0, [r9, #0x50]
	cmp r0, #0
	bne _020C3574
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x71]
	mov r1, #0x12
	str r1, [r9, #0x10]
	cmp r0, #0
	ldreqb r0, [r9, #0x740]
	cmpeq r0, #0
	bne _020C3570
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_020467e0
	cmp r0, #2
	moveq r0, #0x1b
	streq r0, [r9, #0x10]
	strne r6, [r9, #0x10]
_020C3570:
	b _020C34F8
_020C3574:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	movne r0, #0x18
	strne r0, [r9, #0x10]
	bne _020C35CC
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C35BC
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046e28
	str r5, [r9, #0x10]
	b _020C35CC
_020C35BC:
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046e48
	mov r0, #0xf
	str r0, [r9, #0x10]
_020C35CC:
	mov r5, #0xd
	b _020C3868
_020C35D4:
	ldr r0, [r9, #0x50]
	cmp r0, #0
	bne _020C361C
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046e28
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	movne r0, #0x14
	strne r0, [r9, #0x10]
	movne r5, #0xc
	bne _020C3868
	mov r0, #0x1a
	mov r1, r6
	bl FUN_ov16_020f2604
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C361C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r11
	bl FUN_0202cf6c
	ldr r0, [r9, #0x14]
	mov r5, #0xd
	b _020C37CC
_020C3634:
	ldr r0, [r4, #0x5c]
	mov r4, #0x15
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	beq _020C3868
	ldr r0, [r9, #0x50]
	cmp r0, #0
	bne _020C366C
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, #0x12
	b _020C34CC
_020C366C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	str r4, [r9, #0x10]
	b _020C35CC
_020C3680:
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, #0x16
	b _020C34CC
_020C36A0:
	ldr r0, [r4, #0x5c]
	mov r4, #0x15
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	cmp r0, #0
	streq r4, [r9, #0x10]
	beq _020C36EC
	cmp r0, #1
	bne _020C36EC
	mov r1, #0x12
	mov r0, r9
	str r1, [r9, #0x10]
	bl FUN_ov4_020c1930
_020C36EC:
	b _020C33A0
_020C36F0:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	ldr r8, _020C4130 ; =0x020A1640
	ldr r4, _020C4128 ; =0x02099F44
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	ldr r1, [r9, #0x18]
	cmp r0, #0
	str r1, [r9, #0x10]
	add r5, r0, #6
	bne _020C3730
	strb r7, [r8, #0x22]
	ldr r0, [r4]
	and r1, r7, #0xff
_020C3728:
	bl FUN_ov131_021421f4
	b _020C3868
_020C3730:
	cmp r0, #1
	bne _020C3748
	strb r6, [r8, #0x22]
	ldr r0, [r4]
	and r1, r6, #0xff
	b _020C3728
_020C3748:
	cmp r0, #2
	bne _020C3868
	mov r1, #2
	strb r1, [r8, #0x22]
	ldr r0, [r4]
	b _020C3728
_020C3760:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, r10
	ldr r4, _020C4130 ; =0x020A1640
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	ldr r1, [r9, #0x18]
	str r0, [r9, #0x4c]
	str r1, [r9, #0x10]
	cmp r0, #0
	add r5, r0, #9
	bne _020C37D4
	strb r7, [r4, #0x22]
	ldr r0, [r8]
	and r1, r7, #0xff
	bl FUN_ov131_021421f4
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	bne _020C3868
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C37C8
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C3868
_020C37C8:
	mov r0, #0x21
_020C37CC:
	str r0, [r9, #0x10]
	b _020C3868
_020C37D4:
	cmp r0, #1
	bne _020C381C
	strb r6, [r4, #0x22]
	ldr r0, [r8]
	and r1, r6, #0xff
	bl FUN_ov131_021421f4
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	bne _020C3868
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C3818
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C3868
_020C3818:
	b _020C37C8
_020C381C:
	cmp r0, #2
	bne _020C3868
	mov r1, #2
	strb r1, [r4, #0x22]
	ldr r0, [r8]
	bl FUN_ov131_021421f4
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	bne _020C3868
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C3860
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C3868
_020C3860:
	b _020C37C8
_020C3864:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3868:
	add r0, r9, r5
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	mov r2, #1
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, r5
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4124 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3898:
	tst r8, #2
	mov r11, #0x15
	mov r10, #0xa
	mov r5, r7
	beq _020C3AD8
	ldr r0, [r9, #0xc]
	cmp r0, #0x20
	addls pc, pc, r0, lsl #2
	b _020C3AAC
_020C38BC: ; jump table
	b _020C3AAC ; case 0
	b _020C3940 ; case 1
	b _020C3AAC ; case 2
	b _020C3AAC ; case 3
	b _020C3AAC ; case 4
	b _020C3958 ; case 5
	b _020C3958 ; case 6
	b _020C3958 ; case 7
	b _020C398C ; case 8
	b _020C3AAC ; case 9
	b _020C3AAC ; case 10
	b _020C397C ; case 11
	b _020C397C ; case 12
	b _020C3AAC ; case 13
	b _020C3AAC ; case 14
	b _020C3AAC ; case 15
	b _020C3AAC ; case 16
	b _020C39B0 ; case 17
	b _020C3A88 ; case 18
	b _020C3A88 ; case 19
	b _020C3AAC ; case 20
	b _020C3A88 ; case 21
	b _020C3A88 ; case 22
	b _020C3A30 ; case 23
	b _020C3A1C ; case 24
	b _020C3AAC ; case 25
	b _020C3AAC ; case 26
	b _020C3A58 ; case 27
	b _020C3AAC ; case 28
	b _020C3AAC ; case 29
	b _020C3AAC ; case 30
	b _020C3A98 ; case 31
	b _020C3A98 ; case 32
_020C3940:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, #0x14
_020C3950:
	str r0, [r9, #0x10]
	b _020C3AB0
_020C3958:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	movne r0, #0x18
	strne r0, [r9, #0x10]
	bne _020C3AB0
	b _020C39AC
_020C397C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	b _020C3A0C
_020C398C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	movne r0, #0x18
	strne r0, [r9, #0x10]
	bne _020C3AB0
_020C39AC:
	b _020C3A78
_020C39B0:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	bne _020C39D0
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C39D0:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	movne r0, #0x18
	strne r0, [r9, #0x10]
	bne _020C3AB0
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C3A0C
	b _020C39AC
_020C3A0C:
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046e48
	mov r0, #0xf
	b _020C3950
_020C3A1C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r9, #0x14]
	b _020C3950
_020C3A30:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	beq _020C3AB0
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	str r11, [r9, #0x10]
	b _020C3AB0
_020C3A58:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	beq _020C3AB0
_020C3A6C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
_020C3A78:
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046e28
	str r10, [r9, #0x10]
	b _020C3AB0
_020C3A88:
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _020C3A6C
_020C3A98:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	str r6, [r9, #0x10]
	b _020C3AB0
_020C3AAC:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3AB0:
	ldrb r1, [r9, #0x4ad]
	ldr r0, _020C4134 ; =0x0209A070
	mov r2, #1
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x4ad]
	ldr r0, _020C4124 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3AD8:
	tst r8, #0x800
	beq _020C3B94
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldreqb r0, [r9, #0x72]
	cmpeq r0, #0
	ldreq r0, [r9, #0xc]
	cmpeq r0, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0x740]
	cmp r0, #0
	beq _020C3B28
	ldr r1, [r9, #0x40]
	add r0, r1, #1
	add r0, r9, r0
	ldrb r0, [r0, #0x57]
	cmp r0, #0
	addeq r0, r9, r1
	streqb r7, [r0, #0x54]
	beq _020C3B3C
_020C3B28:
	ldr r1, [r9, #0x40]
	add r2, r9, #0x54
	ldrb r0, [r2, r1]
	eor r0, r0, #1
	strb r0, [r2, r1]
_020C3B3C:
	ldr r0, [r9, #0x40]
	add r0, r9, r0
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020C3B5C
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #6
	b _020C3B64
_020C3B5C:
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #4
_020C3B64:
	bl FUN_0202cf6c
	mov r2, #1
	strb r2, [r9, #0x38]
	ldrb r1, [r9, #0x4ae]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r9, #0x4ae]
	ldr r0, _020C4124 ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3B94:
	tst r8, #0x40
	beq _020C3E38
	ldr r0, [r9, #0xc]
	cmp r0, #0xc
	bgt _020C3BCC
	cmp r0, #8
	blt _020C3BC0
	beq _020C3C50
	cmp r0, #0xc
	beq _020C3CFC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3BC0:
	cmp r0, #1
	beq _020C3BFC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3BCC:
	cmp r0, #0x1b
	bgt _020C3BDC
	beq _020C3D58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3BDC:
	cmp r0, #0x20
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0x1f
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020C3DA8
	cmp r0, #0x20
	beq _020C3DF0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3BFC:
	ldrb r0, [r9, #0x71]
	mov r1, #6
	cmp r0, #0
	ldr r0, [r9, #0x40]
	movne r1, #2
	subs r0, r0, #1
	str r0, [r9, #0x40]
	submi r0, r1, #1
	strmi r0, [r9, #0x40]
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	str r0, [r9, #0x48]
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3C50:
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, [r9, #0xac]
	cmp r1, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x40]
	str r1, [r9, #0x44]
_020C3C78:
	ldr r1, [r9, #0x40]
	ldr r2, [r9, #0x44]
	subs r1, r1, #1
	str r1, [r9, #0x40]
	ldrmi r1, [r9, #0xac]
	submi r1, r1, #1
	strmi r1, [r9, #0x40]
	ldr r1, [r9, #0x40]
	cmp r2, r1
	beq _020C3CAC
	add r1, r1, #1
	tst r0, r6, lsl r1
	beq _020C3C78
_020C3CAC:
	ldr r2, [r9, #0x40]
	add r1, r2, #1
	tst r0, r6, lsl r1
	ldr r0, [r9, #0x44]
	streq r0, [r9, #0x40]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	str r2, [r9, #0x44]
	bl FUN_0202cf6c
	ldr r1, [r9, #0x40]
	ldr r0, _020C4134 ; =0x0209A070
	add r1, r9, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, r6
	bl FUN_ov16_020f6e8c
	strb r6, [r9, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3CFC:
	ldr r0, [r9, #0xa8]
	cmp r0, #0
	ble _020C3D14
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_020C3D14:
	ldr r0, [r9, #0xa8]
	cmp r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x40]
	mov r0, r9
	mvn r2, #0
	bl FUN_ov4_020c9228
	str r0, [r9, #0x40]
	str r0, [r9, #0x44]
	str r5, [r9, #0x6c]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	mov r2, r6
	bl FUN_ov16_020f6e8c
	strb r6, [r9, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3D58:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [r9, #0x40]
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3DA8:
	ldr r0, [r9, #0x40]
	mov r1, #3
	subs r0, r0, #1
	str r0, [r9, #0x40]
	submi r0, r1, #1
	strmi r0, [r9, #0x40]
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	add r0, r0, #6
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3DF0:
	ldr r0, [r9, #0x40]
	mov r1, #3
	subs r0, r0, #1
	str r0, [r9, #0x40]
	submi r0, r1, #1
	strmi r0, [r9, #0x40]
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	add r0, r0, #9
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E38:
	tst r8, #0x80
	beq _020C40D8
	ldr r0, [r9, #0xc]
	cmp r0, #0xc
	bgt _020C3E70
	cmp r0, #8
	blt _020C3E64
	beq _020C3EF4
	cmp r0, #0xc
	beq _020C3FA4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E64:
	cmp r0, #1
	beq _020C3EA0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E70:
	cmp r0, #0x1b
	bgt _020C3E80
	beq _020C4000
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E80:
	cmp r0, #0x20
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0x1f
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020C4050
	cmp r0, #0x20
	beq _020C4094
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3EA0:
	ldrb r0, [r9, #0x71]
	mov r1, #6
	cmp r0, #0
	ldr r0, [r9, #0x40]
	movne r1, #2
	add r0, r0, #1
	cmp r0, r1
	str r0, [r9, #0x40]
	ldr r0, _020C412C ; =0x0209AC44
	strge r5, [r9, #0x40]
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	str r0, [r9, #0x48]
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3EF4:
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C4120 ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, [r9, #0xac]
	cmp r1, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x40]
	str r1, [r9, #0x44]
_020C3F1C:
	ldr r2, [r9, #0x40]
	ldr r1, [r9, #0xac]
	add r2, r2, #1
	sub r1, r1, #1
	str r2, [r9, #0x40]
	cmp r2, r1
	strgt r5, [r9, #0x40]
	ldr r2, [r9, #0x44]
	ldr r1, [r9, #0x40]
	cmp r2, r1
	beq _020C3F54
	add r1, r1, #1
	tst r0, r6, lsl r1
	beq _020C3F1C
_020C3F54:
	ldr r2, [r9, #0x40]
	add r1, r2, #1
	tst r0, r6, lsl r1
	ldr r0, [r9, #0x44]
	streq r0, [r9, #0x40]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	str r2, [r9, #0x44]
	bl FUN_0202cf6c
	ldr r1, [r9, #0x40]
	ldr r0, _020C4134 ; =0x0209A070
	add r1, r9, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, r6
	bl FUN_ov16_020f6e8c
	strb r6, [r9, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3FA4:
	ldr r0, [r9, #0xa8]
	cmp r0, #0
	ble _020C3FBC
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_020C3FBC:
	ldr r0, [r9, #0xa8]
	cmp r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x40]
	mov r0, r9
	mov r2, r6
	bl FUN_ov4_020c9228
	str r0, [r9, #0x40]
	str r0, [r9, #0x44]
	str r5, [r9, #0x6c]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	mov r2, r6
	bl FUN_ov16_020f6e8c
	strb r6, [r9, #0x38]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4000:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [r9, #0x40]
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4050:
	ldr r0, [r9, #0x40]
	mov r1, #8
	add r0, r0, #1
	str r0, [r9, #0x40]
	cmp r0, #3
	ldr r0, _020C412C ; =0x0209AC44
	strge r7, [r9, #0x40]
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	add r0, r0, #6
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4094:
	ldr r0, [r9, #0x40]
	mov r1, #8
	add r0, r0, #1
	str r0, [r9, #0x40]
	cmp r0, #3
	ldr r0, _020C412C ; =0x0209AC44
	strge r7, [r9, #0x40]
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	add r0, r0, #9
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C40D8:
	tst r8, #0x20
	beq _020C41D4
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0xc]
	sub r0, r0, #0x11
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4100: ; jump table
	b _020C4138 ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 3
	b _020C418C ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 5
	b _020C4138 ; case 6
	b _020C4138 ; case 7
_020C4120: .word unk_0209AEC0
_020C4124: .word unk_0209F5C0
_020C4128: .word unk_02099F44
_020C412C: .word unk_0209AC44
_020C4130: .word unk_020A1640
_020C4134: .word unk_0209A070
_020C4138:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x50]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	mov r2, #1
	add r0, r0, #0xc
	str r5, [r9, #0x50]
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C418C:
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x40]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r2, r6
	str r7, [r9, #0x40]
	str r7, [r9, #0x44]
	strb r2, [r9, #0x38]
	add r0, r9, r7
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C41D4:
	tst r8, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0xc]
	sub r0, r0, #0x11
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C41FC: ; jump table
	b _020C421C ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 3
	b _020C4270 ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 5
	b _020C421C ; case 6
	b _020C421C ; case 7
_020C421C:
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r7, r6
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x50]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r2, #1
	ldr r0, [r9, #0x40]
	str r2, [r9, #0x50]
	add r0, r0, #0xc
	strb r2, [r9, #0x38]
	add r0, r9, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4270:
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	ldreq r0, [r9, #0x40]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C412C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r2, r6
	str r2, [r9, #0x40]
	str r2, [r9, #0x44]
	strb r2, [r9, #0x38]
	add r0, r9, #1
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C4134 ; =0x0209A070
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov4_020c31ac

	arm_func_start FUN_ov4_020c42b4
FUN_ov4_020c42b4: ; 0x020C42B4
	ldr r0, _020C42CC ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _020C42D0 ; =FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_020C42CC: .word unk_0209F5C0
_020C42D0: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov4_020c42b4

	arm_func_start FUN_ov4_020c42d4
FUN_ov4_020c42d4: ; 0x020C42D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0xc]
	mov r5, #0
	cmp r1, #1
	mov r4, #1
	bne _020C4460
	ldr r1, [r6, #0x2c]
	strb r5, [r6, #0x22]
	cmp r1, #0x1f
	bgt _020C433C
	bge _020C4400
	sub r0, r1, #0x13
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020C4314: ; jump table
	b _020C4348 ; case 0
	ldmfd sp!, {r4, r5, r6, pc} ; case 1
	ldmfd sp!, {r4, r5, r6, pc} ; case 2
	b _020C4374 ; case 3
	ldmfd sp!, {r4, r5, r6, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, pc} ; case 5
	b _020C43A0 ; case 6
	ldmfd sp!, {r4, r5, r6, pc} ; case 7
	ldmfd sp!, {r4, r5, r6, pc} ; case 8
	b _020C43D0 ; case 9
_020C433C:
	cmp r1, #0x22
	beq _020C4430
	ldmfd sp!, {r4, r5, r6, pc}
_020C4348:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	str r5, [r6, #0x48]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4374:
	ldr r0, [r6, #0x40]
	cmp r0, #1
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r6, #0x40]
	str r4, [r6, #0x48]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C43A0:
	ldr r0, [r6, #0x40]
	cmp r0, #2
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #2
	str r0, [r6, #0x40]
	str r0, [r6, #0x48]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C43D0:
	ldr r0, [r6, #0x40]
	cmp r0, #3
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #3
	str r0, [r6, #0x40]
	str r0, [r6, #0x48]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4400:
	ldr r0, [r6, #0x40]
	cmp r0, #4
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #4
	str r0, [r6, #0x40]
	str r0, [r6, #0x48]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4430:
	ldr r0, [r6, #0x40]
	cmp r0, #5
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #5
	str r0, [r6, #0x40]
	str r0, [r6, #0x48]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4460:
	cmp r1, #0x15
	bne _020C44C8
	ldr r0, [r6, #0x2c]
	cmp r0, #0x3b
	beq _020C4480
	cmp r0, #0x3c
	beq _020C44A4
	ldmfd sp!, {r4, r5, r6, pc}
_020C4480:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C44A4:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C44C8:
	cmp r1, #8
	bne _020C451C
	ldrb r0, [r6, #0x71]
	ldr r1, [r6, #0x2c]
	sub r5, r1, #0x31
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r1, #0x31
	cmpne r1, #0x32
	beq _020C44F8
	cmp r1, #0x33
	ldmnefd sp!, {r4, r5, r6, pc}
_020C44F8:
	ldr r0, [r6, #0x40]
	cmp r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C451C:
	cmp r1, #0xc
	bne _020C456C
	ldr r0, [r6, #0x2c]
	sub r5, r0, #0x25
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020C4538: ; jump table
	b _020C4548 ; case 0
	b _020C4548 ; case 1
	b _020C4548 ; case 2
	b _020C4548 ; case 3
_020C4548:
	ldr r0, [r6, #0x40]
	cmp r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C456C:
	cmp r1, #0x11
	beq _020C4580
	sub r0, r1, #0x17
	cmp r0, #1
	bhi _020C45E0
_020C4580:
	ldr r0, [r6, #0x2c]
	cmp r0, #0xb
	beq _020C4598
	cmp r0, #0xc
	beq _020C45BC
	ldmfd sp!, {r4, r5, r6, pc}
_020C4598:
	ldr r0, [r6, #0x50]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x50]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C45BC:
	ldr r0, [r6, #0x50]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r6, #0x50]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C45E0:
	cmp r1, #0x1b
	bne _020C4624
	ldr r0, [r6, #0x2c]
	cmp r0, #0x44
	sub r5, r0, #0x44
	beq _020C4600
	cmp r0, #0x47
	ldmnefd sp!, {r4, r5, r6, pc}
_020C4600:
	ldr r0, [r6, #0x40]
	cmp r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4624:
	cmp r1, #0x1f
	bne _020C46CC
	ldr r0, [r6, #0x2c]
	strb r5, [r6, #0x22]
	cmp r0, #0x4a
	beq _020C4650
	cmp r0, #0x4d
	beq _020C4678
	cmp r0, #0x50
	beq _020C46A0
	ldmfd sp!, {r4, r5, r6, pc}
_020C4650:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4678:
	ldr r0, [r6, #0x40]
	cmp r0, #1
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C46A0:
	ldr r0, [r6, #0x40]
	cmp r0, #2
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #2
	str r0, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C46CC:
	cmp r1, #0x20
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x2c]
	strb r5, [r6, #0x22]
	cmp r0, #0x53
	beq _020C46F8
	cmp r0, #0x56
	beq _020C4720
	cmp r0, #0x59
	beq _020C4748
	ldmfd sp!, {r4, r5, r6, pc}
_020C46F8:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r5, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4720:
	ldr r0, [r6, #0x40]
	cmp r0, #1
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	str r4, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4748:
	ldr r0, [r6, #0x40]
	cmp r0, #2
	streqb r4, [r6, #0x22]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020C4774 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #2
	str r0, [r6, #0x40]
	strb r4, [r6, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020C4774: .word unk_0209AC44
	arm_func_end FUN_ov4_020c42d4

	arm_func_start FUN_ov4_020c4778
FUN_ov4_020c4778: ; 0x020C4778
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x2c]
	ldr r0, [r0, #0x30]
	cmp r0, r1
	bne _020C4798
	ldr r0, _020C47BC ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_020C4798:
	ldr r4, _020C47BC ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_020C47BC: .word unk_0209A070
	arm_func_end FUN_ov4_020c4778

	arm_func_start FUN_ov4_020c47c0
FUN_ov4_020c47c0: ; 0x020C47C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldr r0, [r9, #0x2c]
	mov r11, #0xa
	cmp r0, #0x4a
	mov r10, #4
	ldr r4, _020C55F8 ; =0x0209AEC0
	mov r6, #0
	mov r5, #6
	mvn r7, #0
	mov r8, #1
	bgt _020C490C
	cmp r0, #0x4a
	ldrge r4, _020C55FC ; =0x02099F44
	ldrge r5, _020C5600 ; =0x020A1640
	bge _020C537C
	cmp r0, #0x42
	bgt _020C48E8
	bge _020C5324
	cmp r0, #0x33
	addls pc, pc, r0, lsl #2
	b _020C55A4
_020C4818: ; jump table
	b _020C55A4 ; case 0
	b _020C55A4 ; case 1
	b _020C55A4 ; case 2
	b _020C55A4 ; case 3
	b _020C55A4 ; case 4
	b _020C495C ; case 5
	b _020C55A4 ; case 6
	b _020C4B94 ; case 7
	b _020C4AC0 ; case 8
	b _020C4CC4 ; case 9
	b _020C55A4 ; case 10
	b _020C51C8 ; case 11
	b _020C5278 ; case 12
	b _020C55A4 ; case 13
	b _020C55A4 ; case 14
	b _020C4CE8 ; case 15
	b _020C55A4 ; case 16
	b _020C50B8 ; case 17
	b _020C50E0 ; case 18
	b _020C4D70 ; case 19
	b _020C55A4 ; case 20
	b _020C55A4 ; case 21
	b _020C4DEC ; case 22
	b _020C55A4 ; case 23
	b _020C55A4 ; case 24
	b _020C4E68 ; case 25
	b _020C55A4 ; case 26
	b _020C55A4 ; case 27
	b _020C4EA0 ; case 28
	b _020C55A4 ; case 29
	b _020C55A4 ; case 30
	b _020C4ECC ; case 31
	b _020C55A4 ; case 32
	b _020C55A4 ; case 33
	b _020C4EF8 ; case 34
	b _020C55A4 ; case 35
	b _020C55A4 ; case 36
	b _020C5084 ; case 37
	b _020C5084 ; case 38
	b _020C5084 ; case 39
	b _020C5084 ; case 40
	b _020C55A4 ; case 41
	b _020C55A4 ; case 42
	b _020C55A4 ; case 43
	b _020C55A4 ; case 44
	b _020C55A4 ; case 45
	b _020C55A4 ; case 46
	b _020C55A4 ; case 47
	b _020C55A4 ; case 48
	b _020C4F5C ; case 49
	b _020C4F5C ; case 50
	b _020C4F5C ; case 51
_020C48E8:
	cmp r0, #0x44
	mov r4, #0x15
	bgt _020C4900
	cmp r0, #0x44
	beq _020C4F24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4900:
	cmp r0, #0x47
	beq _020C4F38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C490C:
	cmp r0, #0x53
	ldr r4, _020C55FC ; =0x02099F44
	ldr r5, _020C5600 ; =0x020A1640
	bgt _020C4940
	cmp r0, #0x53
	bge _020C5430
	cmp r0, #0x4d
	bgt _020C4934
	beq _020C53B8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4934:
	cmp r0, #0x50
	beq _020C53F4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4940:
	cmp r0, #0x56
	bgt _020C4950
	beq _020C54AC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4950:
	cmp r0, #0x59
	beq _020C5528
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C495C:
	ldr r0, [r9, #0xc]
	mov r7, #0x18
	cmp r0, #0x20
	mov r6, #0xf
	mov r5, r11
	addls pc, pc, r0, lsl #2
	b _020C4AB4
_020C4978: ; jump table
	b _020C4AB4 ; case 0
	b _020C49FC ; case 1
	b _020C4AB4 ; case 2
	b _020C4AB4 ; case 3
	b _020C4AB4 ; case 4
	b _020C4A14 ; case 5
	b _020C4A14 ; case 6
	b _020C4A14 ; case 7
	b _020C4AB4 ; case 8
	b _020C4AB4 ; case 9
	b _020C4AB4 ; case 10
	b _020C4A40 ; case 11
	b _020C4A40 ; case 12
	b _020C4A58 ; case 13
	b _020C4A58 ; case 14
	b _020C4AB4 ; case 15
	b _020C4AB4 ; case 16
	b _020C4AB4 ; case 17
	b _020C4A74 ; case 18
	b _020C4A74 ; case 19
	b _020C4AB4 ; case 20
	b _020C4A74 ; case 21
	b _020C4A74 ; case 22
	b _020C4AB4 ; case 23
	b _020C4AB4 ; case 24
	b _020C4AB4 ; case 25
	b _020C4AB4 ; case 26
	b _020C4A74 ; case 27
	b _020C4AB4 ; case 28
	b _020C4AB4 ; case 29
	b _020C4AB4 ; case 30
	b _020C4AA0 ; case 31
	b _020C4AA0 ; case 32
_020C49FC:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	mov r0, #0x14
	str r0, [r9, #0x10]
	b _020C4AB8
_020C4A14:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	strne r7, [r9, #0x10]
	bne _020C4AB8
_020C4A30:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e28
_020C4A38:
	str r5, [r9, #0x10]
	b _020C4AB8
_020C4A40:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e48
	b _020C4A38
_020C4A58:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
_020C4A64:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e48
	str r6, [r9, #0x10]
	b _020C4AB8
_020C4A74:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, r8
	movne r0, #0
	cmp r0, #0
	beq _020C4A9C
	b _020C4A30
_020C4A9C:
	b _020C4A64
_020C4AA0:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	str r8, [r9, #0x10]
	b _020C4AB8
_020C4AB4:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4AB8:
	mov r7, #0xd
	b _020C55A8
_020C4AC0:
	ldr r0, [r9, #0xc]
	mov r6, #0x18
	sub r0, r0, #8
	cmp r0, #9
	mov r5, #0xf
	mov r7, r11
	addls pc, pc, r0, lsl #2
	b _020C4B8C
_020C4AE0: ; jump table
	b _020C4B08 ; case 0
	b _020C4B8C ; case 1
	b _020C4B8C ; case 2
	b _020C4B34 ; case 3
	b _020C4B34 ; case 4
	b _020C4B8C ; case 5
	b _020C4B8C ; case 6
	b _020C4B8C ; case 7
	b _020C4B8C ; case 8
	b _020C4B50 ; case 9
_020C4B08:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	strne r6, [r9, #0x10]
	bne _020C4B90
_020C4B24:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e28
	str r7, [r9, #0x10]
	b _020C4B90
_020C4B34:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
_020C4B40:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e48
	str r5, [r9, #0x10]
	b _020C4B90
_020C4B50:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	strne r6, [r9, #0x10]
	bne _020C4B90
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, r8
	movne r0, #0
	cmp r0, #0
	beq _020C4B88
	b _020C4B24
_020C4B88:
	b _020C4B40
_020C4B8C:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4B90:
	b _020C4AB8
_020C4B94:
	ldr r0, [r9, #0xc]
	mov r5, #0xd
	cmp r0, #8
	mov r4, #0x15
	beq _020C4BBC
	cmp r0, #0xc
	beq _020C4C44
	cmp r0, #0x11
	beq _020C4C80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4BBC:
	ldrb r0, [r9, #0x71]
	cmp r0, #0
	bne _020C4C2C
	ldrb r0, [r9, #0x70]
	cmp r0, #0
	bne _020C4BE4
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4BE4:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046818
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	moveq r0, #0x10
	streq r0, [r9, #0x10]
	beq _020C4CC0
	ldr r0, [r9, #0x40]
	strb r6, [r9, #0x56]
	strb r6, [r9, #0x55]
	strb r6, [r9, #0x54]
	add r0, r9, r0
	strb r8, [r0, #0x54]
	str r4, [r9, #0x10]
	b _020C4CC0
_020C4C2C:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r0, #0x11
	str r0, [r9, #0x10]
	b _020C4CC0
_020C4C44:
	ldr r0, [r9, #0x6c]
	cmp r0, #0
	bgt _020C4C5C
	ldr r0, [r9, #0xa8]
	cmp r0, #0
	bgt _020C4C6C
_020C4C5C:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4C6C:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	str r5, [r9, #0x10]
	b _020C4CC0
_020C4C80:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x71]
	mov r1, #0x12
	str r1, [r9, #0x10]
	cmp r0, #0
	ldreqb r0, [r9, #0x740]
	cmpeq r0, #0
	bne _020C4CC0
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_020467e0
	cmp r0, #2
	moveq r0, #0x1b
	streq r0, [r9, #0x10]
	strne r4, [r9, #0x10]
_020C4CC0:
	b _020C50D8
_020C4CC4:
	ldr r0, [r9, #0xc]
	cmp r0, #0x15
	bne _020C4CE4
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, #0x16
	str r0, [r9, #0x10]
_020C4CE4:
	b _020C50D8
_020C4CE8:
	ldr r0, [r9, #0xc]
	mov r4, r8
	cmp r0, #8
	bne _020C4D68
	ldrb r0, [r9, #0x740]
	cmp r0, #0
	beq _020C4D24
	ldr r1, [r9, #0x40]
	add r0, r1, #1
	add r0, r9, r0
	ldrb r0, [r0, #0x57]
	cmp r0, #0
	addeq r0, r9, r1
	streqb r6, [r0, #0x54]
	beq _020C4D38
_020C4D24:
	ldr r1, [r9, #0x40]
	add r2, r9, #0x54
	ldrb r0, [r2, r1]
	eor r0, r0, #1
	strb r0, [r2, r1]
_020C4D38:
	ldr r0, [r9, #0x40]
	add r0, r9, r0
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020C4D58
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	b _020C4D60
_020C4D58:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #4
_020C4D60:
	bl FUN_0202cf6c
	strb r4, [r9, #0x38]
_020C4D68:
	mov r7, #0xe
	b _020C55A8
_020C4D70:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	beq _020C4DE0
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldrb r1, [r9, #0x71]
	cmp r1, #0
	bne _020C4DAC
	mov r1, #5
	mov r0, #0x20
	str r1, [r9, #0x18]
	str r0, [r9, #0x1c]
	str r5, [r9, #8]
	b _020C4DE4
_020C4DAC:
	mov r0, #5
	str r0, [r9, #0x10]
	bne _020C4DE4
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C4DD8
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C4DE4
_020C4DD8:
	str r10, [r9, #0x10]
	b _020C4DE4
_020C4DE0:
	mov r8, r6
_020C4DE4:
	mov r7, #0
	b _020C55A8
_020C4DEC:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	beq _020C4E5C
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldrb r1, [r9, #0x71]
	cmp r1, #0
	bne _020C4E28
	mov r1, #0xb
	mov r0, #0x20
	str r1, [r9, #0x18]
	str r0, [r9, #0x1c]
	str r5, [r9, #8]
	b _020C4E60
_020C4E28:
	mov r0, #0xb
	str r0, [r9, #0x10]
	bne _020C4E60
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C4E54
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C4E60
_020C4E54:
	str r10, [r9, #0x10]
	b _020C4E60
_020C4E5C:
	mov r8, r6
_020C4E60:
	mov r7, #1
	b _020C55A8
_020C4E68:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C4E98
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r1, #0x19
	mov r0, #0x1f
	str r1, [r9, #0x18]
	str r0, [r9, #0x1c]
	str r5, [r9, #8]
_020C4E98:
	mov r7, #2
	b _020C55A8
_020C4EA0:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C4EC4
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, #0x1a
	str r0, [r9, #0x10]
_020C4EC4:
	mov r7, #3
	b _020C55A8
_020C4ECC:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C4EF0
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, #0x1c
	str r0, [r9, #0x10]
_020C4EF0:
	mov r7, #4
	b _020C55A8
_020C4EF8:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C4F1C
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, #0x1d
	str r0, [r9, #0x10]
_020C4F1C:
	mov r7, #5
	b _020C55A8
_020C4F24:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	str r4, [r9, #0x10]
	b _020C4DE4
_020C4F38:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	mov r1, #0x12
	mov r0, r9
	str r1, [r9, #0x10]
	mov r7, #1
	bl FUN_ov4_020c1930
	b _020C55A8
_020C4F5C:
	ldrb r1, [r9, #0x72]
	mov r0, r8
	mov r4, #0x15
	cmp r1, #0
	beq _020C4FD0
	ldr r0, [r9, #0xc]
	cmp r0, #8
	bne _020C55A8
	ldrb r0, [r9, #0x70]
	cmp r0, #0
	bne _020C4F9C
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r8, r6
	b _020C507C
_020C4F9C:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046818
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, [r9, #0x40]
	strb r6, [r9, #0x56]
	strb r6, [r9, #0x55]
	strb r6, [r9, #0x54]
	add r0, r9, r0
	strb r8, [r0, #0x54]
	str r4, [r9, #0x10]
	b _020C507C
_020C4FD0:
	ldrb r1, [r9, #0x71]
	cmp r1, #0
	beq _020C4FF0
	mov r2, #0x10
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	str r2, [r9, #0x10]
	b _020C5078
_020C4FF0:
	ldr r2, [r9, #0x40]
	ldr r1, [r9, #0x44]
	cmp r2, r1
	bne _020C5070
	ldrb r1, [r9, #0x740]
	cmp r1, #0
	beq _020C502C
	add r1, r2, #1
	add r1, r9, r1
	ldrb r1, [r1, #0x57]
	cmp r1, #0
	addeq r0, r9, r2
	streqb r6, [r0, #0x54]
	streqb r8, [r9, #0x38]
	beq _020C5044
_020C502C:
	ldr r2, [r9, #0x40]
	add r3, r9, #0x54
	ldrb r1, [r3, r2]
	eor r1, r1, #1
	strb r1, [r3, r2]
	strb r0, [r9, #0x38]
_020C5044:
	ldr r0, [r9, #0x40]
	add r0, r9, r0
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020C5064
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	b _020C5078
_020C5064:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #4
	b _020C5078
_020C5070:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #8
_020C5078:
	bl FUN_0202cf6c
_020C507C:
	ldr r7, [r9, #0x40]
	b _020C50B0
_020C5084:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	mov r4, #0xd
	bl FUN_0202cf6c
	ldr r1, [r9, #0x40]
	ldr r0, [r9, #0x44]
	cmp r1, r0
	ldr r0, [r9, #0x2c]
	streq r4, [r9, #0x10]
	sub r7, r0, #0x25
	str r7, [r9, #0x40]
_020C50B0:
	str r7, [r9, #0x44]
	b _020C55A8
_020C50B8:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, [r9, #0xa4]
	strb r8, [r9, #0x39]
	cmp r0, #7
	movgt r0, #7
	strgt r0, [r9, #0xa4]
_020C50D8:
	mov r7, #0xc
	b _020C55A8
_020C50E0:
	ldr r0, [r9, #0xc]
	mov r7, #0x18
	cmp r0, #0x12
	mov r6, #0xf
	mov r5, r11
	addls pc, pc, r0, lsl #2
	b _020C51C0
_020C50FC: ; jump table
	b _020C51C0 ; case 0
	b _020C51C0 ; case 1
	b _020C51C0 ; case 2
	b _020C51C0 ; case 3
	b _020C51C0 ; case 4
	b _020C5148 ; case 5
	b _020C5148 ; case 6
	b _020C5148 ; case 7
	b _020C5148 ; case 8
	b _020C51C0 ; case 9
	b _020C51C0 ; case 10
	b _020C5174 ; case 11
	b _020C5174 ; case 12
	b _020C5190 ; case 13
	b _020C5190 ; case 14
	b _020C51C0 ; case 15
	b _020C51C0 ; case 16
	b _020C51C0 ; case 17
	b _020C5194 ; case 18
_020C5148:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	strne r7, [r9, #0x10]
	bne _020C51C4
_020C5164:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e28
	str r5, [r9, #0x10]
	b _020C51C4
_020C5174:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
_020C5180:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e48
	str r6, [r9, #0x10]
	b _020C51C4
_020C5190:
	b _020C5174
_020C5194:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, r8
	movne r0, #0
	cmp r0, #0
	beq _020C51BC
	b _020C5164
_020C51BC:
	b _020C5180
_020C51C0:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C51C4:
	b _020C4AB8
_020C51C8:
	ldr r0, [r9, #0xc]
	mov r4, #0x15
	cmp r0, #0x11
	beq _020C51EC
	cmp r0, #0x17
	beq _020C5230
	cmp r0, #0x18
	beq _020C5248
	b _020C5274
_020C51EC:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x71]
	mov r1, #0x12
	str r1, [r9, #0x10]
	cmp r0, #0
	ldreqb r0, [r9, #0x740]
	cmpeq r0, #0
	bne _020C5274
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_020467e0
	cmp r0, #2
	moveq r0, #0x1b
	streq r0, [r9, #0x10]
	strne r4, [r9, #0x10]
	b _020C5274
_020C5230:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r0, #0x12
	str r0, [r9, #0x10]
	b _020C5274
_020C5248:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	movne r0, #0x14
	strne r0, [r9, #0x10]
	bne _020C5274
	mov r1, r8
	mov r0, #0x1a
	bl FUN_ov16_020f2604
_020C5274:
	b _020C50D8
_020C5278:
	ldr r0, [r9, #0xc]
	mov r7, #0x18
	cmp r0, #0x11
	mov r5, #0x15
	mov r6, #0xf
	beq _020C52A4
	cmp r0, #0x17
	beq _020C52F8
	cmp r0, #0x18
	beq _020C530C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C52A4:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	strne r7, [r9, #0x10]
	bne _020C5320
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	moveq r0, r8
	movne r0, #0
	cmp r0, #0
	beq _020C52E8
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e28
	str r11, [r9, #0x10]
	b _020C5320
_020C52E8:
	ldr r0, _020C55F8 ; =0x0209AEC0
	bl FUN_02046e48
	str r6, [r9, #0x10]
	b _020C5320
_020C52F8:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	str r5, [r9, #0x10]
	b _020C5320
_020C530C:
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r9, #0x14]
	str r0, [r9, #0x10]
_020C5320:
	b _020C4AB8
_020C5324:
	ldr r0, [r9, #0xc]
	cmp r0, #0x21
	bne _020C5348
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, r8
	bl FUN_0202cf6c
	mov r0, #0x20
	str r0, [r9, #0x10]
	b _020C55A8
_020C5348:
	ldrb r0, [r9, #0x72]
	cmp r0, #0
	movne r0, #0x14
	strne r0, [r9, #0x10]
	bne _020C55A8
	ldrb r0, [r9, #0x741]
	cmp r0, #0
	streq r8, [r9, #0x10]
	beq _020C55A8
	mov r1, r8
	mov r0, #0x1a
	bl FUN_ov16_020f2604
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C537C:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C53B0
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x18]
	and r1, r6, #0xff
	str r0, [r9, #0x10]
	strb r6, [r5, #0x22]
	ldr r0, [r4]
	bl FUN_ov131_021421f4
_020C53B0:
	mov r7, #6
	b _020C55A8
_020C53B8:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C53EC
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x18]
	and r1, r8, #0xff
	str r0, [r9, #0x10]
	strb r8, [r5, #0x22]
	ldr r0, [r4]
	bl FUN_ov131_021421f4
_020C53EC:
	mov r7, #7
	b _020C55A8
_020C53F4:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	moveq r8, r6
	beq _020C5428
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x18]
	mov r1, #2
	str r0, [r9, #0x10]
	strb r1, [r5, #0x22]
	ldr r0, [r4]
	bl FUN_ov131_021421f4
_020C5428:
	mov r7, #8
	b _020C55A8
_020C5430:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	beq _020C54A0
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x18]
	and r1, r6, #0xff
	str r0, [r9, #0x10]
	strb r6, [r5, #0x22]
	ldr r0, [r4]
	bl FUN_ov131_021421f4
	ldrb r0, [r9, #0x71]
	ldr r1, [r9, #0x40]
	str r1, [r9, #0x4c]
	cmp r0, #0
	bne _020C54A4
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C5494
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C54A4
_020C5494:
	mov r0, #0x21
	str r0, [r9, #0x10]
	b _020C54A4
_020C54A0:
	mov r8, r6
_020C54A4:
	mov r7, #9
	b _020C55A8
_020C54AC:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	beq _020C551C
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x18]
	and r1, r8, #0xff
	str r0, [r9, #0x10]
	strb r8, [r5, #0x22]
	ldr r0, [r4]
	bl FUN_ov131_021421f4
	ldrb r0, [r9, #0x71]
	ldr r1, [r9, #0x40]
	str r1, [r9, #0x4c]
	cmp r0, #0
	bne _020C5520
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C5510
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C5520
_020C5510:
	mov r0, #0x21
	str r0, [r9, #0x10]
	b _020C5520
_020C551C:
	mov r8, r6
_020C5520:
	mov r7, #0xa
	b _020C55A8
_020C5528:
	ldrb r0, [r9, #0x22]
	cmp r0, #0
	beq _020C5598
	ldr r0, _020C5604 ; =0x0209AC44
	mov r1, #6
	bl FUN_0202cf6c
	ldr r0, [r9, #0x18]
	mov r1, #2
	str r0, [r9, #0x10]
	strb r1, [r5, #0x22]
	ldr r0, [r4]
	bl FUN_ov131_021421f4
	ldrb r0, [r9, #0x71]
	ldr r1, [r9, #0x40]
	str r1, [r9, #0x4c]
	cmp r0, #0
	bne _020C559C
	mov r0, r9
	bl FUN_ov4_020c1064
	cmp r0, #0
	beq _020C558C
	mov r0, r9
	bl FUN_ov4_020c108c
	cmp r0, #0
	bne _020C559C
_020C558C:
	mov r0, #0x21
	str r0, [r9, #0x10]
	b _020C559C
_020C5598:
	mov r8, r6
_020C559C:
	mov r7, #0xb
	b _020C55A8
_020C55A4:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C55A8:
	cmp r8, #0
	bne _020C55BC
	ldr r1, [r9, #0x2c]
	ldr r0, _020C5608 ; =0x0209A070
	bl FUN_ov16_020f6d3c
_020C55BC:
	cmp r7, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, r7
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C5608 ; =0x0209A070
	mov r2, #1
	bl FUN_ov16_020f6e8c
	cmp r0, #0
	cmpne r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, r7
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C560C ; =0x0209F5C0
	bl FUN_ov16_020f6530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C55F8: .word unk_0209AEC0
_020C55FC: .word unk_02099F44
_020C5600: .word unk_020A1640
_020C5604: .word unk_0209AC44
_020C5608: .word unk_0209A070
_020C560C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c47c0

	arm_func_start FUN_ov4_020c5610
FUN_ov4_020c5610: ; 0x020C5610
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C5704 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldreqb r0, [r5, #0x39]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _020C56C8
	ldrh r0, [r4, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x21]
	cmp r0, #0
	bne _020C5694
	mov r0, #1
	strb r0, [r5, #0x21]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, r5
	bl FUN_ov4_020c42b4
	str r0, [r5, #0x2c]
	cmp r0, #0
	beq _020C5694
	mov r0, r5
	bl FUN_ov4_020c42d4
_020C5694:
	ldrh r1, [r4]
	mov r0, r5
	str r1, [r5, #0x24]
	ldrh r2, [r4, #2]
	str r2, [r5, #0x28]
	bl FUN_ov4_020c42b4
	ldr r1, [r5, #0x2c]
	str r0, [r5, #0x30]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov4_020c4778
	ldmfd sp!, {r3, r4, r5, pc}
_020C56C8:
	ldrb r0, [r5, #0x21]
	cmp r0, #0
	ldrne r1, [r5, #0x2c]
	cmpne r1, #0
	beq _020C56F0
	ldr r0, [r5, #0x30]
	cmp r0, r1
	bne _020C56F0
	mov r0, r5
	bl FUN_ov4_020c47c0
_020C56F0:
	mov r0, #0
	str r0, [r5, #0x30]
	str r0, [r5, #0x2c]
	strb r0, [r5, #0x21]
	ldmfd sp!, {r3, r4, r5, pc}
_020C5704: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c5610

	arm_func_start FUN_ov4_020c5708
FUN_ov4_020c5708: ; 0x020C5708
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x100
	mov r5, r0
	add r0, r5, #0x540
	mov r1, #0
	mov r2, #0x1ec
	bl MI_CpuFill8
	ldrb r0, [r5, #0x72]
	ldr r2, _020C5788 ; =0x020DA184
	add r4, sp, #0
	cmp r0, #0
	ldrne r2, _020C578C ; =0x020DA18C
	ldr r1, _020C5790 ; =0x020DA194
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	add r1, r5, #0x540
	bl FUN_ov16_020f316c
	ldr r0, _020C5794 ; =0x020DA1AC
	add r1, r5, #0x6f0
	bl FUN_ov16_020f316c
	add r1, r5, #0x314
	ldr r0, _020C5798 ; =0x020DA1CC
	add r1, r1, #0x400
	bl FUN_ov16_020f316c
	ldr r0, _020C579C ; =0x020DA1EC
	add r1, r5, #0x720
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r5, #8]
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, pc}
_020C5788: .word ov4_020DA184
_020C578C: .word ov4_020DA18C
_020C5790: .word ov4_020DA194
_020C5794: .word ov4_020DA1AC
_020C5798: .word ov4_020DA1CC
_020C579C: .word ov4_020DA1EC
	arm_func_end FUN_ov4_020c5708

	arm_func_start FUN_ov4_020c57a0
FUN_ov4_020c57a0: ; 0x020C57A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x540]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x72]
	ldr r7, _020C57F4 ; =0x020D82EC
	cmp r1, #0
	ldrne r7, _020C57F8 ; =0x020D808C
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x540
	mov r4, #0xc
_020C57D4:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _020C57D4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C57F4: .word 0x020D82EC
_020C57F8: .word 0x020D808C
	arm_func_end FUN_ov4_020c57a0

	arm_func_start FUN_ov4_020c57fc
FUN_ov4_020c57fc: ; 0x020C57FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _020C58A8 ; =0x020DA208
	mov r0, r11
	bl FUN_02023c40
	mov r9, #0
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _020C58AC ; =0x020D9A60
	ldr r4, _020C58B0 ; =0x02099F38
	b _020C5898
_020C5834:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _020C58B4 ; =0x020DA224
	mov r0, r8
	bl FUN_02023c40
	ldr r1, [r10, #0x720]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f3d08
	cmp r0, #0
	beq _020C5894
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r11
	mov r3, r5
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x72c]
_020C5894:
	add r9, r9, #1
_020C5898:
	cmp r9, #1
	blt _020C5834
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C58A8: .word ov4_020DA208
_020C58AC: .word ov4_020D9A60
_020C58B0: .word unk_02099F38
_020C58B4: .word ov4_020DA224
	arm_func_end FUN_ov4_020c57fc

	arm_func_start FUN_ov4_020c58b8
FUN_ov4_020c58b8: ; 0x020C58B8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _020C5904 ; =0x02099F38
	b _020C58F4
_020C58CC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x72c]
	cmp r1, #0
	beq _020C58F0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_020C58F0:
	add r5, r5, #1
_020C58F4:
	cmp r5, #1
	blt _020C58CC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020C5904: .word unk_02099F38
	arm_func_end FUN_ov4_020c58b8

	arm_func_start FUN_ov4_020c5908
FUN_ov4_020c5908: ; 0x020C5908
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _020C5A04 ; =0x02099F38
	b _020C5960
_020C5924:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x72c]
	cmp r1, #0
	beq _020C595C
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _020C595C
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x72c]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_020C595C:
	add r7, r7, #1
_020C5960:
	cmp r7, #1
	blt _020C5924
	ldr r5, _020C5A04 ; =0x02099F38
	mov r7, #1
	ldr r0, [r5]
	mov r1, r7
	mov r2, r7
	bl FUN_ov16_02112724
	mov r6, #0
	mov r1, r0
	str r1, [r4, #0x730]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02114248
	ldr r8, [r4, #0x730]
	ldr r1, [r4, #0x72c]
	ldr r0, [r5]
	and r3, r1, #0xff
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	mov r3, #0x12c
	bl FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r8
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C5A04: .word unk_02099F38
	arm_func_end FUN_ov4_020c5908

	arm_func_start FUN_ov4_020c5a08
FUN_ov4_020c5a08: ; 0x020C5A08
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x84]
	mov r12, r1
	add r1, r2, r3
	mov r3, r1, lsl #0x10
	str r2, [r0, #0x78]
	ldr r1, [r0, #0x730]
	mov r2, r12, lsl #0x10
	str r12, [r0, #0x74]
	mov r3, r3, asr #0x10
	ldr r0, _020C5A4C ; =0x02099F38
	str r3, [sp]
	ldr r0, [r0]
	mov r3, r2, asr #0x10
	mov r2, #1
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, pc}
_020C5A4C: .word unk_02099F38
	arm_func_end FUN_ov4_020c5a08

	arm_func_start FUN_ov4_020c5a50
FUN_ov4_020c5a50: ; 0x020C5A50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0x730]
	ldr r0, _020C5A80 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r0]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	strb r4, [r5, #0x88]
	ldmfd sp!, {r3, r4, r5, pc}
_020C5A80: .word unk_02099F38
	arm_func_end FUN_ov4_020c5a50

	arm_func_start FUN_ov4_020c5a84
FUN_ov4_020c5a84: ; 0x020C5A84
	mov r1, #0
	str r1, [r0, #0x80]
	str r1, [r0, #0x84]
	str r1, [r0, #0x7c]
	strb r1, [r0, #0x88]
	bx lr
	arm_func_end FUN_ov4_020c5a84

	arm_func_start FUN_ov4_020c5a9c
FUN_ov4_020c5a9c: ; 0x020C5A9C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x88]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x7c]
	sub r1, r1, #1
	str r1, [r0, #0x7c]
	cmp r1, #0
	ldmgtfd sp!, {r3, pc}
	ldr r1, [r0, #0x80]
	mov r3, #2
	str r3, [r0, #0x7c]
	cmp r1, #0
	bne _020C5AFC
	ldr r2, [r0, #0x84]
	sub r1, r3, #5
	sub r2, r2, #1
	str r2, [r0, #0x84]
	cmp r2, r1
	movle r2, r1
	movle r1, #1
	strle r2, [r0, #0x84]
	strle r1, [r0, #0x80]
	b _020C5B1C
_020C5AFC:
	ldr r1, [r0, #0x84]
	add r1, r1, #1
	cmp r1, #3
	str r1, [r0, #0x84]
	movge r2, #3
	movge r1, #0
	strge r2, [r0, #0x84]
	strge r1, [r0, #0x80]
_020C5B1C:
	ldr r1, [r0, #0x74]
	ldr r2, [r0, #0x78]
	bl FUN_ov4_020c5a08
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020c5a9c

	arm_func_start FUN_ov4_020c5b2c
FUN_ov4_020c5b2c: ; 0x020C5B2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r4, r0
	mov r7, r6
	ldr r5, _020C5BF4 ; =0x02099F38
	b _020C5B60
_020C5B44:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x730]
	cmp r1, #0
	beq _020C5B5C
	ldr r0, [r5]
	bl FUN_ov16_021128c4
_020C5B5C:
	add r7, r7, #1
_020C5B60:
	cmp r7, #2
	blt _020C5B44
	mov r7, #0
	ldr r5, _020C5BF4 ; =0x02099F38
	b _020C5B98
_020C5B74:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x72c]
	cmp r1, #0
	beq _020C5B94
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x72c]
_020C5B94:
	add r7, r7, #1
_020C5B98:
	cmp r7, #1
	blt _020C5B74
	ldr r1, [r4, #0x8c]
	cmp r1, #0
	beq _020C5BBC
	ldr r0, _020C5BF4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	str r6, [r4, #0x8c]
_020C5BBC:
	add r5, r4, #0x540
	mov r6, #0
	mov r4, #0xc
	b _020C5BD8
_020C5BCC:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
_020C5BD8:
	cmp r6, #0x29
	blt _020C5BCC
	ldr r0, _020C5BF8 ; =0x020AF81C
	mov r1, #2
	mov r2, #0
	bl FUN_02044754
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C5BF4: .word unk_02099F38
_020C5BF8: .word unk_020AF81C
	arm_func_end FUN_ov4_020c5b2c

	arm_func_start FUN_ov4_020c5bfc
FUN_ov4_020c5bfc: ; 0x020C5BFC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_ov4_020c5ca0
	mov r9, #0
	mov r11, #0xc
	str r9, [r10, #0x3c]
	add r6, r10, #0x540
	mov r7, #1
	mov r8, r9
	mov r4, r11
	mov r5, #0x74
_020C5C2C:
	mla r0, r9, r4, r10
	str r8, [r0, #0x6fc]
	mla r0, r9, r5, r10
	ldrb r1, [r0, #0x285]
	ldr r0, [r10, #0x6f0]
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020C5C78
	add r0, r9, #0x25
	mla r1, r0, r11, r6
	str r7, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020C5C9C ; =0x020DA22C
	bl FUN_ov16_020f31fc
	cmp r0, #0
	strne r7, [r10, #0x3c]
_020C5C78:
	add r9, r9, #1
	cmp r9, #2
	blt _020C5C2C
	ldr r0, [r10, #0x3c]
	cmp r0, #0
	moveq r0, #4
	streq r0, [r10, #0x3c]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C5C9C: .word ov4_020DA22C
	arm_func_end FUN_ov4_020c5bfc

	arm_func_start FUN_ov4_020c5ca0
FUN_ov4_020c5ca0: ; 0x020C5CA0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	add r7, r0, #0x540
	mov r5, #1
	mov r4, #0xc
_020C5CB4:
	add r0, r8, #0x25
	mul r6, r0, r4
	mov r1, r5
	add r0, r7, r6
	bl FUN_ov16_020f338c
	add r0, r7, r6
	bl FUN_ov16_020f33fc
	add r8, r8, #1
	cmp r8, #2
	blt _020C5CB4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov4_020c5ca0

	arm_func_start FUN_ov4_020c5ce0
FUN_ov4_020c5ce0: ; 0x020C5CE0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x540]
	ldr r5, [sp, #0x1c]
	mov r7, r2
	cmp r4, #0
	mov r6, r3
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r2, r6
	add r1, r7, #1
	bl FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _020C5D38
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl FUN_ov16_020f19d4
	str r0, [r5]
_020C5D38:
	cmp r6, #0
	blt _020C5D50
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl FUN_ov16_020f1138
_020C5D50:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov4_020c5ce0

	arm_func_start FUN_ov4_020c5d58
FUN_ov4_020c5d58: ; 0x020C5D58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x12c
	mov r10, r0
	bl FUN_ov16_020f3f48
	add r2, sp, #0xc
	mov r1, #0
	ldr r6, _020C601C ; =0x020D81DC
	add r5, sp, #0xac
	mov r7, r0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	mov r4, #8
_020C5D90:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020C5D90
	ldr r6, _020C6020 ; =0x020D825C
	add r5, sp, #0x1c
	mov r4, #9
_020C5DAC:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020C5DAC
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r8, #0
	mov r1, r0
	mov r0, r8
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	add r9, sp, #0xac
	mov r6, #3
	add r5, sp, #8
	mvn r4, #0
_020C5DF8:
	ldr r0, [r9]
	cmp r0, #0x16
	bne _020C5E14
	ldrb r0, [r10, #0x71]
	cmp r0, #0
	addne r9, r9, #8
	bne _020C5E34
_020C5E14:
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, r10
	mov r2, r8
	ldmia r9, {r1, r3}
	bl FUN_ov4_020c5ce0
	mov r8, r0
	add r9, r9, #8
_020C5E34:
	ldr r0, [r9]
	mov r11, #0
	cmp r0, r4
	bne _020C5DF8
	add r0, r10, #0xb4
	add r5, r0, #0x400
	ldr r0, [sp, #8]
	mov r6, r11
	mov r4, #1
_020C5E58:
	ldr r1, [r5]
	cmp r1, #0
	ldrne r1, [r5, #4]
	cmpne r1, #0
	movne r1, r4
	moveq r1, r11
	cmp r1, #0
	beq _020C5EB8
	str r0, [r5, #8]
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5]
	mov r3, r11
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r8, #1
	bl FUN_ov16_020f1868
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r3, [sp, #8]
	mov r8, r0
	mul r0, r2, r1
	add r0, r3, r0, lsl #5
	str r0, [sp, #8]
_020C5EB8:
	add r6, r6, #1
	cmp r6, #7
	add r5, r5, #0x14
	blt _020C5E58
	str r8, [r10, #0x90]
	ldr r0, [sp, #8]
	str r0, [r10, #0x94]
	ldr r0, [sp, #8]
	add r1, r0, #0x400
	str r1, [sp, #8]
	ldr r0, [r7, #0xc]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	bl G2_GetBG1CharPtr
	mov r4, #0x20
	mov r8, #0
	mov r1, r0
	mov r0, r8
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	add r9, sp, #0x1c
	mov r6, #1
	add r5, sp, #8
	mvn r4, #0
_020C5F28:
	ldr r1, [r9]
	cmp r1, #5
	ldreqb r0, [r10, #0x72]
	cmpeq r0, #0
	addeq r9, r9, #8
	beq _020C5F74
	cmp r1, #9
	ldreqb r0, [r10, #0x71]
	cmpeq r0, #0
	addeq r9, r9, #8
	beq _020C5F74
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, r10
	mov r2, r8
	ldmia r9, {r1, r3}
	bl FUN_ov4_020c5ce0
	mov r8, r0
	add r9, r9, #8
_020C5F74:
	ldr r0, [r9]
	mov r11, #0
	cmp r0, r4
	bne _020C5F28
	ldr r1, [r7, #4]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	bl G2_GetBG2CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r0, r11
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r0, #2
	str r0, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r1, #1
	mov r0, r10
	mov r2, r11
	mov r3, r1
	bl FUN_ov4_020c5ce0
	ldr r3, [r10, #0x54c]
	cmp r3, #0
	beq _020C6000
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r11
	add r0, r3, r0
	bl GX_LoadBG2Scr
_020C6000:
	bl FUN_ov16_020f10ac
	ldr r1, [r7, #8]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add sp, sp, #0x12c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C601C: .word 0x020D81DC
_020C6020: .word 0x020D825C
	arm_func_end FUN_ov4_020c5d58

	arm_func_start FUN_ov4_020c6024
FUN_ov4_020c6024: ; 0x020C6024
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r1, [r6, #0x3c]
	cmp r1, #2
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x90]
	mov r5, #3
	str r5, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r1, #0x25
	mov r3, #0xb
	bl FUN_ov4_020c5ce0
	mov r2, r0
	str r5, [sp]
	mov r0, r6
	mov r1, #0x26
	mov r3, #0xc
	str r4, [sp, #4]
	bl FUN_ov4_020c5ce0
	str r5, [r6, #0x3c]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020c6024

	arm_func_start FUN_ov4_020c6088
FUN_ov4_020c6088: ; 0x020C6088
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #3
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x6fc]
	ldr r2, [r4, #0x94]
	cmp r1, #0
	beq _020C60B8
	mov r0, #3
	bl FUN_ov16_020f19d4
	mov r2, r0
_020C60B8:
	ldr r1, [r4, #0x708]
	cmp r1, #0
	beq _020C60CC
	mov r0, #3
	bl FUN_ov16_020f19d4
_020C60CC:
	bl FUN_ov16_020f10ac
	mov r1, #4
	mov r0, #1
	str r1, [r4, #0x3c]
	strb r0, [r4, #0x38]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c6088

	arm_func_start FUN_ov4_020c60e4
FUN_ov4_020c60e4: ; 0x020C60E4
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x240]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x72]
	cmp r1, #0
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0x5c4]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x9c]
	ldr r2, [r3, #4]
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r1, r3, r2
	mov r0, r0, asr #2
	add r0, r1, r0, lsl #5
	mov r1, #0
	mov r2, #4
	bl FUN_ov16_020f1160
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020c60e4

	arm_func_start FUN_ov4_020c613c
FUN_ov4_020c613c: ; 0x020C613C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r8, [r10, #0x570]
	mov r9, r1
	cmp r8, #0
	mov r5, r2
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r8, #0xc]
	mov r3, #7
	add r7, r8, r0
	cmp r5, #0
	addne r7, r7, #0x54
	mov r4, #1
	cmp r9, #0
	movne r4, #0
	mov r11, #0x15
	mov r6, #3
	mov r2, #0x38
	mov r1, #0x98
	cmp r4, #0
	moveq r1, #0x60
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, #0
	mov r12, r0, asr #3
	mov r0, #0x18
	strh r2, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r12, [sp, #0x14]
	strh r11, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strb r3, [sp, #0x24]
	str r7, [sp, #0x28]
	add r0, sp, #0x14
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r2, r1
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	cmp r5, #0
	addeq r7, r7, #0x2a
	mov r5, #7
	cmp r4, #0
	mov r1, #0x98
	moveq r1, #0x60
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	strh r0, [sp, #0x14]
	mov r0, #0
	mov r6, #0x15
	mov r4, #3
	mov r11, #0x38
	mov r1, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0x18
	strh r0, [sp, #0x22]
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1a]
	strh r11, [sp, #0x20]
	strb r5, [sp, #0x24]
	str r7, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, r1
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r3, #9
	str r2, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r2, #9
	mov r1, #0
	bl FUN_ov16_020f6084
	cmp r9, #0
	beq _020C6398
	ldr r0, [r8, #0xc]
	mov r3, #0xf
	add r7, r8, r0
	mov r0, #0x13
	strh r0, [sp, #0x14]
	mov r0, #0
	add r1, r7, #0x7e
	str r1, [sp, #0x28]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0x18
	strh r0, [sp, #0x22]
	mov r1, #0
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1a]
	strh r11, [sp, #0x20]
	strb r5, [sp, #0x24]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r2, r1
	ldr r0, _020C64F8 ; =0x0209F5C0
	str r2, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, #0x13
	strh r0, [sp, #0x14]
	mov r0, #0
	add r1, r7, #0xa8
	strh r4, [sp, #0x1a]
	str r1, [sp, #0x28]
	mov r4, #0x10
	mov r1, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	mov r0, #0x18
	strh r0, [sp, #0x22]
	strh r6, [sp, #0x16]
	strh r11, [sp, #0x20]
	strh r5, [sp, #0x18]
	strb r5, [sp, #0x24]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r5, r1
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r4
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f6084
_020C6398:
	ldr r1, [r10, #0x558]
	mov r4, #0
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r7, #0x1a
	add r8, r1, r0
	mov r0, #0x18
	add r1, r8, #0x48
	mov r6, #0x15
	mov r5, #6
	mov r11, #3
	mov r2, #0x30
	strh r0, [sp, #0x22]
	mov r0, #7
	strh r2, [sp, #0x20]
	strb r0, [sp, #0x24]
	str r1, [sp, #0x28]
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	str r4, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r1, r4
	mov r2, #1
	mov r3, #8
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r0, r8, #0x6c
	str r0, [sp, #0x28]
	mov r0, #7
	strh r6, [sp, #0x16]
	strb r0, [sp, #0x24]
	mov r6, #0xa
	strh r7, [sp, #0x14]
	strh r11, [sp, #0x1a]
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	str r4, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r1, r4
	mov r2, #1
	mov r3, r6
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020C64F8 ; =0x0209F5C0
	mov r2, r5
	mov r1, r4
	bl FUN_ov16_020f6084
	ldr r5, _020C64FC ; =0x0209A070
	mov r1, #7
	str r6, [sp]
	mov r2, #9
	mov r0, r5
	mov r3, r4
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4ac]
	cmp r9, #0
	beq _020C64D4
	mov r0, r5
	mov r3, r4
	mov r1, #0xf
	mov r2, #0x10
	str r6, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4ae]
_020C64D4:
	ldr r0, _020C64FC ; =0x0209A070
	mov r2, #0xa
	mov r1, #8
	mov r3, #0
	str r2, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4ad]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C64F8: .word unk_0209F5C0
_020C64FC: .word unk_0209A070
	arm_func_end FUN_ov4_020c613c

	arm_func_start FUN_ov4_020c6500
FUN_ov4_020c6500: ; 0x020C6500
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r1, [r10, #0x558]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r5, #0
	add r9, r1, r0
	mov r8, #0x1a
	mov r7, #0x15
	mov r6, #6
	mov r11, #3
	mov r1, #0x30
	mov r0, #0x18
	mov r4, #7
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r11, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strb r4, [sp, #0x24]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C6620 ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	mov r3, #5
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r0, r9, #0x24
	str r0, [sp, #0x28]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r11, [sp, #0x1a]
	strh r6, [sp, #0x18]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	strb r4, [sp, #0x24]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C6620 ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	mov r3, r6
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020C6620 ; =0x0209F5C0
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020f6084
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _020C6624 ; =0x0209A070
	mov r1, #5
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4ad]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6620: .word unk_0209F5C0
_020C6624: .word unk_0209A070
	arm_func_end FUN_ov4_020c6500

	arm_func_start FUN_ov4_020c6628
FUN_ov4_020c6628: ; 0x020C6628
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r6, r0
	ldr r3, [r6, #0x684]
	cmp r3, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r3, #0xc]
	mov r4, #0
	add r9, r3, r0
	mov r5, #0xa
	mov lr, #3
	mov r12, #0x50
	mov r3, #0x18
	mov r0, #2
	strh r1, [sp, #0x14]
	strh r2, [sp, #0x16]
	strb r0, [sp, #0x24]
	strh r5, [sp, #0x18]
	strh lr, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r12, [sp, #0x20]
	strh r3, [sp, #0x22]
	str r9, [sp, #0x28]
	mov r7, #5
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r8, _020C66F0 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r8
	mov r1, r4
	mov r2, r4
	mov r3, r7
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f6084
	ldr r0, _020C66F4 ; =0x0209A070
	mov r2, r7
	mov r1, r4
	mov r3, r4
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r6, #0x4ad]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C66F0: .word unk_0209F5C0
_020C66F4: .word unk_0209A070
	arm_func_end FUN_ov4_020c6628

	arm_func_start FUN_ov4_020c66f8
FUN_ov4_020c66f8: ; 0x020C66F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r8, #6
	mov r5, #0
	mov r10, r1
	mov r9, r2
	mov r7, #0x14
	mov r6, #5
	mov r4, #0xa0
	mov r11, #0x28
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	strb r8, [sp, #0x24]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C684C ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r3, [sp, #0x54]
	add r9, r9, #0xc8
	cmp r3, #0
	beq _020C67CC
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	strb r8, [sp, #0x24]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C684C ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r9, r9, #0xc8
_020C67CC:
	mov r6, #0
	mov r2, #6
	mov r1, #0x14
	mov r0, #5
	strh r1, [sp, #0x18]
	strh r0, [sp, #0x1a]
	ldr r4, [sp, #0x50]
	strh r2, [sp, #0x14]
	strb r2, [sp, #0x24]
	strh r10, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r9, [sp, #0x28]
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	ldr r5, _020C684C ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C684C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c66f8

	arm_func_start FUN_ov4_020c6850
FUN_ov4_020c6850: ; 0x020C6850
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	mov r10, r1
	mov r9, r2
	mov r8, #7
	mov r7, #0x12
	mov r6, #3
	mov r4, #0x90
	mov r11, #0x18
	mov r0, #2
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C69B0 ; =0x0209F5C0
	mov r1, r5
	mov r2, r5
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r3, [sp, #0x54]
	add r9, r9, #0x6c
	cmp r3, #0
	beq _020C692C
	mov r0, #2
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C69B0 ; =0x0209F5C0
	mov r1, r5
	mov r2, r5
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r9, r9, #0x6c
_020C692C:
	mov r6, #0
	mov r3, #7
	mov r2, #0x12
	mov r1, #3
	mov r0, #2
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh r3, [sp, #0x14]
	ldr r4, [sp, #0x50]
	strh r10, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r9, [sp, #0x28]
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	ldr r5, _020C69B0 ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C69B0: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c6850

	arm_func_start FUN_ov4_020c69b4
FUN_ov4_020c69b4: ; 0x020C69B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	mov r10, r1
	mov r9, r2
	mov r8, #6
	mov r7, #0x14
	mov r6, #4
	mov r4, #0xa0
	mov r11, #0x20
	mov r0, #2
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r1, sp, #0x14
	stmib sp, {r1, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C6B14 ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r3, [sp, #0x54]
	add r9, r9, #0xa0
	cmp r3, #0
	beq _020C6A90
	mov r0, #2
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020C6B14 ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r9, r9, #0xa0
_020C6A90:
	mov r6, #0
	mov r3, #6
	mov r2, #0x14
	mov r1, #4
	mov r0, #2
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh r3, [sp, #0x14]
	ldr r4, [sp, #0x50]
	strh r10, [sp, #0x16]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r9, [sp, #0x28]
	add r0, sp, #0x14
	str r6, [sp]
	stmib sp, {r0, r6}
	ldr r5, _020C6B14 ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6B14: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c69b4

	arm_func_start FUN_ov4_020c6b18
FUN_ov4_020c6b18: ; 0x020C6B18
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	ldrb r0, [sp, #0x40]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldreq r0, _020C6C4C ; =0x02099F50
	mov r6, r3
	ldr r5, [sp, #0x38]
	ldreq r4, [r0]
	beq _020C6B70
	ldr r0, _020C6C50 ; =0x02099EDC
	mov r9, #0
	ldr r4, [r0]
	mov r2, r9
	mov r0, r4
	mov r1, #1
	bl FUN_02043780
	mov r0, r4
	mov r1, r9
	mov r2, r9
	bl FUN_02043310
_020C6B70:
	mov r0, r5
	bl FUN_ov16_020f2f20
	ldrb r0, [sp, #0x3c]
	mov r1, #1
	cmp r0, #0
	bne _020C6BE8
	ldrb r0, [sp, #0x40]
	mov r12, #0
	mov r3, r6
	cmp r0, #0
	movne r1, #0
	mov r0, #3
	stmia sp, {r0, r1}
	ldr r0, [r5, #4]
	mov r1, r8
	str r0, [sp, #8]
	ldrh r2, [r5, #0xc]
	mov r0, r4
	mov r2, r2, lsl #3
	str r2, [sp, #0xc]
	ldrh r4, [r5, #0xe]
	mov r2, r7
	mov r4, r4, lsl #3
	str r4, [sp, #0x10]
	str r12, [sp, #0x14]
	str r12, [sp, #0x18]
	ldr r4, [r0]
	ldr r4, [r4, #8]
	blx r4
	b _020C6C24
_020C6BE8:
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r1}
	mov r0, #0
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	ldr r1, [r5, #4]
	mov r0, r6
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
_020C6C24:
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	mov r0, #1
	strb r0, [r5, #0x10]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C6C4C: .word unk_02099F50
_020C6C50: .word unk_02099EDC
	arm_func_end FUN_ov4_020c6b18

	arm_func_start FUN_ov4_020c6c54
FUN_ov4_020c6c54: ; 0x020C6C54
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r5, _020C6D00 ; =0x0209F5C0
	mov r4, #0
	mov r6, #0x3a
	mov r8, r0
	mov r7, r1
	mov r12, #1
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r4
	strb r12, [r8, #0x240]
	bl FUN_ov16_020f5eec
	ldr r2, [r8, #0x5b8]
	cmp r2, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7, asr #2
	str r6, [sp]
	add r0, r7, r0, lsr #29
	mov r0, r0, lsl #0x15
	str r4, [sp, #4]
	mov r1, #0xa
	str r1, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r5
	add r5, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C6D00: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c6c54

	arm_func_start FUN_ov4_020c6d04
FUN_ov4_020c6d04: ; 0x020C6D04
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	ldr r6, _020C6DC4 ; =0x0209F5C0
	mov r5, #0
	mov r4, #0x3a
	mov r8, r0
	mov r7, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r5
	strb r7, [r8, #0x240]
	bl FUN_ov16_020f5eec
	ldr r1, [r8, #0x690]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #0xc]
	ldr r3, [r8, #0x9c]
	mov r2, #0xa
	stmia sp, {r4, r5}
	str r2, [sp, #8]
	mov r2, r3, asr #1
	ldr r4, [r8, #0xa0]
	add r2, r3, r2, lsr #30
	mov r3, r4, asr #2
	add r3, r4, r3, lsr #29
	add r4, r1, r0
	mov r1, r2, asr #2
	mov r0, #0x48
	mla r4, r1, r0, r4
	mov r3, r3, lsl #0x15
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C6DC4: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c6d04

	arm_func_start FUN_ov4_020c6dc8
FUN_ov4_020c6dc8: ; 0x020C6DC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r0, [r7, #0x734]
	mov r6, r1
	cmp r0, #0
	mov r5, #1
	bne _020C6E00
	ldr r0, _020C6F18 ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, r5
	bl FUN_ov16_02112724
	str r0, [r7, #0x734]
_020C6E00:
	ldr r1, [r7, #0x8c]
	ldr r4, [r7, #0x734]
	cmp r1, #0
	beq _020C6E24
	ldr r0, _020C6F18 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r7, #0x8c]
_020C6E24:
	ldr r0, [r7, #0x8c]
	cmp r0, #0
	bne _020C6E8C
	ldr r8, _020C6F18 ; =0x02099F38
	mov r1, #5
	ldr r0, [r8]
	mov r2, r1
	bl FUN_02059630
	mov r9, #0
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r7, #0x8c]
	ldr r0, [r8]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	str r9, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	ldr r1, [r7, #0x8c]
	mov r0, r6
	mov r3, #9
	bl FUN_ov16_020f2304
_020C6E8C:
	mov r0, #0x3e
	ldr r6, _020C6F18 ; =0x02099F38
	str r0, [sp]
	mov r8, #0
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, r8
	bl FUN_ov16_02113b78
	ldr r3, [r7, #0x8c]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r8, [sp]
	mov r3, r8
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02113d88
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	mov r3, #0xd2
	bl FUN_ov16_021139bc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C6F18: .word unk_02099F38
	arm_func_end FUN_ov4_020c6dc8

	arm_func_start FUN_ov4_020c6f1c
FUN_ov4_020c6f1c: ; 0x020C6F1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r2, [r6, #0x618]
	cmp r2, #0
	beq _020C6FA0
	mov r5, #0x41
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldr r7, _020C70A4 ; =0x0209F5C0
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #0xe
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r7
	add r12, r2, r1
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f60f8
_020C6FA0:
	ldr r1, [r6, #0x60c]
	cmp r1, #0
	beq _020C7030
	ldr r0, [r1, #0xc]
	mov r7, #0
	add r12, r1, r0
	mov r3, #0xd
	mov r2, #6
	mov r1, #3
	mov r0, #0xe
	strh r2, [sp, #0x24]
	strh r1, [sp, #0x26]
	strb r0, [sp, #0x30]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	mov r4, #0x42
	strh r7, [sp, #0x28]
	strh r7, [sp, #0x2a]
	strh r7, [sp, #0x2c]
	strh r7, [sp, #0x2e]
	str r12, [sp, #0x34]
	add r0, sp, #0x20
	str r7, [sp]
	stmib sp, {r0, r7}
	ldr r5, _020C70A4 ; =0x0209F5C0
	str r7, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r7, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_020f6084
_020C7030:
	mov r1, #3
	mov r7, #0x42
	mov r5, #0
	str r1, [sp]
	ldr r0, _020C70A8 ; =0x0209A070
	mov r2, r7
	mov r3, r5
	mov r1, #0x43
	bl FUN_ov16_020f6c8c
	strb r0, [r6, #0x4b0]
	str r5, [sp]
	mov r4, #0x30
	str r4, [sp, #4]
	mov r4, #0x18
	ldr r0, _020C70A4 ; =0x0209F5C0
	mov r1, r5
	mov r2, r7
	mov r3, r5
	str r4, [sp, #8]
	bl FUN_ov16_020f6470
	mov r0, r6
	bl FUN_ov4_020c1064
	cmp r0, #0
	ldr r1, _020C70AC ; =0x020DA24C
	mov r0, r6
	ldrne r1, _020C70B0 ; =0x020DA298
	bl FUN_ov4_020c6dc8
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C70A4: .word unk_0209F5C0
_020C70A8: .word unk_0209A070
_020C70AC: .word ov4_020DA24C
_020C70B0: .word ov4_020DA298
	arm_func_end FUN_ov4_020c6f1c

	arm_func_start FUN_ov4_020c70b4
FUN_ov4_020c70b4: ; 0x020C70B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov r0, #0x80
	str r0, [r5, #0xa0]
	movs r4, r2
	mov r11, r1
	mov lr, #0
	mov r0, #7
	mov r9, #0xe
	bne _020C7118
	ldrb r1, [r5, #0x72]
	cmp r1, #0
	moveq r1, #3
	moveq r2, #6
	moveq r7, #0x1a
	moveq r8, #0xa
	beq _020C7164
	mov r9, #0xd
	mov r8, r9
	mov r0, #0x1f
	mov r1, #2
	mov r2, #0xa
	mov r7, #0x1c
	b _020C7164
_020C7118:
	cmp r4, #3
	bne _020C7144
	add r0, r3, #0x70
	mov r1, #2
	mov r2, r1
	str r0, [r5, #0xa0]
	mov r0, #0x1e
	mov r9, #0xd
	mov r7, #0x1c
	mov r8, #0x13
	b _020C7164
_020C7144:
	mov r0, #8
	cmp r4, #1
	moveq r2, r0
	mov r1, #1
	movne r2, #0x10
	mov r7, #0x1e
	mov r8, #8
	mov lr, #0x1e0
_020C7164:
	mov r6, #0xc
	mla r10, r0, r6, r5
	mov r6, r3, asr #2
	ldr r0, [r10, #0x540]
	add r6, r3, r6, lsr #29
	cmp r0, #0
	add r3, r2, r6, asr #3
	beq _020C71E0
	ldr r12, [r0, #0xc]
	mov r2, #1
	mov r10, r1, lsl #0x18
	mov r1, #0
	add r12, r0, r12
	str r2, [sp]
	mov r0, r3, lsl #0x18
	str r1, [sp, #4]
	mov r3, r10, asr #0x18
	str r3, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	and r0, r7, #0xff
	str r0, [sp, #0x10]
	and r0, r8, #0xff
	str r0, [sp, #0x14]
	and r7, r9, #0xff
	ldr r0, _020C735C ; =0x0209F5C0
	mov r3, r1
	str r7, [sp, #0x18]
	add r7, lr, r12
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C71E0:
	ldr r1, [r5, #0x4b4]
	add r0, r5, #0xb4
	add r7, r0, #0x400
	cmp r1, #0
	ldrne r0, [r7, #4]
	mov r10, #1
	cmpne r0, #0
	movne r0, r10
	moveq r0, #0
	cmp r0, #0
	beq _020C7310
	ldrh r2, [r7, #0xe]
	mov r0, r5
	mov r1, r11
	mov r8, r2, lsl #3
	bl FUN_ov4_020c0f88
	cmp r0, #1
	subeq r0, r8, #0x14
	addeq r0, r0, r0, lsr #31
	moveq r0, r0, asr #1
	addeq r9, r0, #2
	movne r9, #0
	sub r8, r4, #1
	cmp r8, #1
	movls r9, #6
	bls _020C7250
	cmp r4, #3
	moveq r9, #2
_020C7250:
	ldr r0, _020C7360 ; =0x02099F50
	mov r1, r10
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	stmia sp, {r7, r10}
	mov r1, #0
	mov r2, r9
	mov r3, r11
	mov r0, r5
	str r1, [sp, #8]
	bl FUN_ov4_020c6b18
	ldr r0, _020C7360 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	cmp r8, #1
	mov r2, #7
	bhi _020C72A8
	mov r2, #0x10
	cmp r4, #1
	subeq r2, r2, #8
	b _020C72B0
_020C72A8:
	cmp r4, #3
	moveq r2, #3
_020C72B0:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	add r2, r2, r6, asr #3
	mov r0, #4
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	ldrh r3, [r7, #0xc]
	ldr r0, _020C735C ; =0x0209F5C0
	mov r2, r1
	and r3, r3, #0xff
	str r3, [sp, #0x10]
	ldrh r6, [r7, #0xe]
	mov r3, r1
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r6, [r7]
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C7310:
	mov r1, #0xa0
	cmp r4, #0
	moveq r1, #0x60
	beq _020C7334
	cmp r4, #1
	moveq r1, #0x60
	beq _020C7334
	cmp r4, #3
	moveq r1, #0x78
_020C7334:
	ldrb r0, [r5, #0x72]
	cmp r0, #0
	mov r0, r5
	bne _020C7350
	bl FUN_ov4_020c6c54
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7350:
	bl FUN_ov4_020c6d04
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C735C: .word unk_0209F5C0
_020C7360: .word unk_02099F50
	arm_func_end FUN_ov4_020c70b4

	arm_func_start FUN_ov4_020c7364
FUN_ov4_020c7364: ; 0x020C7364
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r10, r0
	ldr r4, [r10, #0x5a0]
	str r1, [sp, #0x20]
	cmp r4, #0
	beq _020C73C8
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #0xe
	str r0, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _020C76D4 ; =0x0209F5C0
	add r4, r4, r3
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C73C8:
	ldr r9, [r10, #0x5e8]
	cmp r9, #0
	beq _020C75EC
	ldr r0, [r9, #0xc]
	mov r8, #0x14
	add r0, r9, r0
	add r0, r0, #0x24
	str r0, [sp, #0x38]
	mov r0, #7
	mov r7, #6
	mov r6, #3
	mov r5, #0x30
	mov r4, #0x18
	mov r11, #0xe
	strh r0, [sp, #0x24]
	mov r0, #0
	mov r1, #0
	strh r8, [sp, #0x26]
	strh r7, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strh r0, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r5, [sp, #0x30]
	strh r4, [sp, #0x32]
	strb r11, [sp, #0x34]
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xb
	bl FUN_ov16_020f5c34
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r1, #0
	mov r2, #0xb
	bl FUN_ov16_020f6084
	ldr r2, [r9, #0xc]
	mov r1, #7
	strh r1, [sp, #0x24]
	add r1, r9, r2
	str r1, [sp, #0x38]
	mov r1, #0
	strh r8, [sp, #0x26]
	strh r7, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strh r5, [sp, #0x30]
	strh r4, [sp, #0x32]
	strb r11, [sp, #0x34]
	str r1, [sp]
	add r1, sp, #0x24
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xd
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, #0
	str r0, [sp]
	mov r1, r0
	ldr r0, _020C76D8 ; =0x0209A070
	mov r2, #0xb
	mov r3, #0xd
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4ac]
	ldr r0, [r9, #0xc]
	mov r1, #0
	add r0, r9, r0
	add r0, r0, #0x6c
	str r0, [sp, #0x38]
	mov r0, #0x13
	strh r0, [sp, #0x24]
	mov r0, #0
	strh r8, [sp, #0x26]
	strh r7, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strh r0, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r5, [sp, #0x30]
	strh r4, [sp, #0x32]
	strb r11, [sp, #0x34]
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xc
	bl FUN_ov16_020f5c34
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r1, #0
	mov r2, #0xc
	bl FUN_ov16_020f6084
	ldr r2, [r9, #0xc]
	mov r1, #0
	add r3, r9, r2
	mov r2, #0x13
	strh r2, [sp, #0x24]
	add r2, r3, #0x48
	str r2, [sp, #0x38]
	mov r2, r1
	strh r8, [sp, #0x26]
	strh r7, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strh r5, [sp, #0x30]
	strh r4, [sp, #0x32]
	strh r2, [sp, #0x2c]
	strh r2, [sp, #0x2e]
	strb r11, [sp, #0x34]
	str r2, [sp]
	add r2, sp, #0x24
	str r2, [sp, #4]
	mov r2, r1
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r3, r11
	str r2, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r1, #0
	ldr r0, _020C76D8 ; =0x0209A070
	mov r2, #0xc
	mov r3, r11
	str r1, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4ad]
_020C75EC:
	ldr r0, [r10, #0x50]
	mov r4, #1
	add r0, r0, #0xc
	add r0, r10, r0
	ldrb r1, [r0, #0x4a0]
	ldr r0, _020C76D8 ; =0x0209A070
	mov r2, r4
	bl FUN_ov16_020f6e8c
	ldr r1, [r10, #0x4b4]
	add r0, r10, #0xb4
	add r5, r0, #0x400
	cmp r1, #0
	ldrne r0, [r5, #4]
	cmpne r0, #0
	moveq r4, #0
	cmp r4, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x20]
	mov r0, r10
	bl FUN_ov4_020c0f88
	ldr r6, _020C76DC ; =0x02099F50
	mov r8, #1
	mov r7, #4
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	bl FUN_02043310
	mov r4, #0
	stmia sp, {r5, r8}
	ldr r3, [sp, #0x20]
	mov r0, r10
	str r4, [sp, #8]
	mov r1, r4
	mov r2, #6
	bl FUN_ov4_020c6b18
	ldr r0, [r6]
	bl FUN_0204331c
	str r8, [sp]
	stmib sp, {r4, r7}
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, _020C76D4 ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r6, [r5, #0xe]
	mov r2, r4
	mov r3, r4
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r5]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C76D4: .word unk_0209F5C0
_020C76D8: .word unk_0209A070
_020C76DC: .word unk_02099F50
	arm_func_end FUN_ov4_020c7364

	arm_func_start FUN_ov4_020c76e0
FUN_ov4_020c76e0: ; 0x020C76E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r7, r0
	ldr r4, [r7, #0x5a0]
	mov r6, r1
	cmp r4, #0
	beq _020C7748
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r2}
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #0xe
	str r0, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _020C78D0 ; =0x0209F5C0
	add r3, r4, r3
	add r4, r3, #0x3c0
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C7748:
	ldr r1, [r7, #0x600]
	cmp r1, #0
	beq _020C7804
	ldr r0, [r1, #0xc]
	mov r4, #0
	add lr, r1, r0
	mov r12, #0xc
	mov r10, #0x14
	mov r9, #8
	mov r3, #3
	mov r2, #0x40
	mov r1, #0x18
	mov r0, #0xe
	strh r2, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r0, [sp, #0x30]
	strh r12, [sp, #0x20]
	strh r10, [sp, #0x22]
	strh r9, [sp, #0x24]
	strh r3, [sp, #0x26]
	mov r5, #9
	strh r4, [sp, #0x28]
	strh r4, [sp, #0x2a]
	str lr, [sp, #0x34]
	add r0, sp, #0x20
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r8, _020C78D0 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r8
	mov r1, r4
	mov r2, r4
	mov r3, r5
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f6084
	mov r1, #0xa
	str r1, [sp]
	ldr r0, _020C78D4 ; =0x0209A070
	mov r1, r4
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f6c8c
	strb r0, [r7, #0x4ac]
_020C7804:
	ldr r1, [r7, #0x4b4]
	add r0, r7, #0xb4
	add r5, r0, #0x400
	cmp r1, #0
	ldrne r0, [r5, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020c0f88
	ldr r8, _020C78D8 ; =0x02099F50
	mov r10, #1
	mov r9, #4
	ldr r0, [r8]
	mov r1, r10
	mov r2, r9
	bl FUN_02043310
	mov r4, #0
	stmia sp, {r5, r10}
	mov r0, r7
	mov r3, r6
	str r4, [sp, #8]
	mov r1, r4
	mov r2, #6
	bl FUN_ov4_020c6b18
	ldr r0, [r8]
	bl FUN_0204331c
	str r10, [sp]
	stmib sp, {r4, r9}
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, _020C78D0 ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r6, [r5, #0xe]
	mov r2, r4
	mov r3, r4
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r5]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C78D0: .word unk_0209F5C0
_020C78D4: .word unk_0209A070
_020C78D8: .word unk_02099F50
	arm_func_end FUN_ov4_020c76e0

	arm_func_start FUN_ov4_020c78dc
FUN_ov4_020c78dc: ; 0x020C78DC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr lr, [r0, #0x69c]
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r12, #1
	mov r0, r1, lsl #0x18
	mov r3, #0
	mov r1, r2, lsl #0x18
	str r12, [sp]
	str r3, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r1, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x18]
	ldr r1, [lr, #0xc]
	ldr r0, _020C7954 ; =0x0209F5C0
	add r12, lr, r1
	mov r1, r3
	mov r2, r3
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_020C7954: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c78dc

	arm_func_start FUN_ov4_020c7958
FUN_ov4_020c7958: ; 0x020C7958
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r9, [r10, #0x624]
	cmp r9, #0
	beq _020C7BA8
	mov r8, #0
	mov r7, #0x10
	mov r6, #0x80
	mov r5, #8
	ldr r11, _020C7BC8 ; =0x0209F5C0
	strh r8, [sp, #0x20]
	strh r8, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r7, [sp, #0x26]
	strh r8, [sp, #0x28]
	strh r8, [sp, #0x2a]
	strh r6, [sp, #0x2c]
	strh r6, [sp, #0x2e]
	strb r5, [sp, #0x30]
	str r8, [sp, #0x34]
	add r4, sp, #0x20
	str r8, [sp]
	stmib sp, {r4, r8}
	str r8, [sp, #0xc]
	mov r0, r11
	mov r1, r8
	mov r2, #1
	mov r3, #0x3b
	str r8, [sp, #0x10]
	bl FUN_ov16_020f5c34
	str r8, [sp]
	stmib sp, {r4, r8}
	str r8, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, r11
	mov r1, r8
	mov r2, #1
	mov r3, #0x3d
	bl FUN_ov16_020f5c34
	str r8, [sp]
	stmib sp, {r4, r8}
	str r8, [sp, #0xc]
	mov r0, r11
	mov r1, r8
	mov r2, #1
	mov r3, #0x3f
	str r8, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020C7BCC ; =0x0209A070
	mov r1, #0x3b
	mov r2, #0x3d
	mov r3, #0x3f
	str r8, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4a0]
	strb r5, [sp, #0x30]
	strh r7, [sp, #0x20]
	strh r8, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r7, [sp, #0x26]
	strh r8, [sp, #0x28]
	strh r8, [sp, #0x2a]
	strh r6, [sp, #0x2c]
	strh r6, [sp, #0x2e]
	str r8, [sp, #0x34]
	str r8, [sp]
	stmib sp, {r4, r8}
	str r8, [sp, #0xc]
	mov r6, #0x3c
	str r8, [sp, #0x10]
	mov r0, r11
	mov r1, r8
	mov r2, #1
	mov r3, r6
	bl FUN_ov16_020f5c34
	str r8, [sp]
	stmib sp, {r4, r8}
	mov r5, #0x3e
	str r8, [sp, #0xc]
	mov r0, r11
	mov r1, r8
	mov r2, #1
	mov r3, r5
	str r8, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r11
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020f6084
	str r8, [sp]
	stmib sp, {r4, r8}
	mov r4, #0x40
	str r8, [sp, #0xc]
	mov r0, r11
	mov r2, #1
	mov r1, r8
	mov r3, r4
	str r8, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020C7BCC ; =0x0209A070
	str r8, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f6c8c
	strb r0, [r10, #0x4a1]
	ldr r1, [r9, #0xc]
	ldr r0, [r10, #0x40]
	mov r2, #1
	add r4, r9, r1
	cmp r0, #0
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x18]
	addeq r4, r4, #0x200
	ldr r0, _020C7BC8 ; =0x0209F5C0
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	ldr r1, [r9, #0xc]
	ldr r0, [r10, #0x40]
	add r1, r9, r1
	mov r2, #1
	add r4, r1, #0x400
	cmp r0, #1
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x18]
	addeq r4, r4, #0x200
	ldr r0, _020C7BC8 ; =0x0209F5C0
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C7BA8:
	ldr r1, [r10, #0x40]
	ldr r0, _020C7BCC ; =0x0209A070
	add r1, r10, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7BC8: .word unk_0209F5C0
_020C7BCC: .word unk_0209A070
	arm_func_end FUN_ov4_020c7958

	arm_func_start FUN_ov4_020c7bd0
FUN_ov4_020c7bd0: ; 0x020C7BD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r0, _020C7C88 ; =0x0209AEC0
	bl FUN_02046730
	ldr r6, [r4, #0x624]
	cmp r6, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0xc]
	mov r5, #1
	mov r4, #0
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r9, #0x10
	str r9, [sp, #0x10]
	ldr r7, _020C7C8C ; =0x0209F5C0
	add r12, r6, r0
	str r9, [sp, #0x14]
	mov r8, #8
	str r8, [sp, #0x18]
	mov r0, r7
	mov r1, r4
	mov r2, r5
	mov r3, r4
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	ldr r1, [r6, #0xc]
	mov r0, r7
	str r5, [sp]
	stmib sp, {r4, r9}
	str r4, [sp, #0xc]
	str r9, [sp, #0x10]
	str r9, [sp, #0x14]
	add r6, r6, r1
	mov r1, r4
	mov r3, r4
	mov r2, r5
	str r8, [sp, #0x18]
	add r4, r6, #0x400
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7C88: .word unk_0209AEC0
_020C7C8C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c7bd0

	arm_func_start FUN_ov4_020c7c90
FUN_ov4_020c7c90: ; 0x020C7C90
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r6, _020C7FD0 ; =0x0209AEC0
	mov r10, r0
	mov r0, r6
	mov r4, #1
	mov r5, #0
	bl FUN_02046744
	str r0, [sp, #0x2c]
	mov r0, r6
	str r5, [sp, #0x28]
	bl FUN_02046730
	mov r7, r0
	mov r0, r10
	mov r1, r5
	bl FUN_ov4_020c1bdc
	ldr r0, [r10, #0xc]
	str r5, [sp, #0x24]
	cmp r0, #0x16
	bne _020C7D14
	mov r1, r5
	b _020C7D0C
_020C7CE8:
	ldr r0, [r10, #0x40]
	add r0, r10, r0, lsl #2
	add r0, r0, r1
	ldrsb r0, [r0, #0x5b]
	cmp r7, r0
	moveq r0, #1
	streq r0, [sp, #0x24]
	beq _020C7D14
	add r1, r1, #1
_020C7D0C:
	cmp r1, #4
	blt _020C7CE8
_020C7D14:
	mov r0, #0
	b _020C7FB8
_020C7D1C:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x20]
	add r11, r10, r1, lsl #2
	add r1, r10, #0xb4
	add r1, r1, #0x400
	str r1, [sp, #0x30]
	add r1, r10, #0x5a
	add r1, r1, #0x200
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x20]
	mov r0, r0, lsl #7
	mov r1, r1, lsl #0x1c
	str r0, [sp, #0x40]
	mov r1, r1, asr #0x18
	add r0, r0, #8
	str r1, [sp, #0x38]
	mov r1, r0, asr #2
	add r0, r0, r1, lsr #29
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x18
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x20]
	mov r8, #0
	add r0, r0, #9
	and r0, r0, #0xff
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	add r1, r0, #0x14
	mov r0, #0xc
	mla r0, r1, r0, r10
	str r0, [sp, #0x3c]
	b _020C7FA8
_020C7D9C:
	add r0, r11, r8
	ldrsb r9, [r0, #0x5b]
	ldr r0, [r10, #0xc]
	cmp r0, #0x15
	beq _020C7DC0
	cmp r0, #0x16
	ldreq r0, [sp, #0x24]
	cmpeq r0, #0
	bne _020C7DE8
_020C7DC0:
	ldr r1, [r10, #0x40]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	bne _020C7DE8
	cmp r9, #0
	bge _020C7DE8
	ldr r0, [sp, #0x28]
	cmp r0, #0
	moveq r9, r7
	streq r4, [sp, #0x28]
_020C7DE8:
	cmp r9, #0
	blt _020C7FA4
	ldr r0, [sp, #0x2c]
	tst r0, r4, lsl r9
	beq _020C7FA4
	add r1, r5, #1
	mov r0, #0x14
	mul r2, r1, r0
	ldr r0, [sp, #0x30]
	mov r1, #0
	add r6, r0, r2
	ldr r0, [r0, r2]
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #0
	movne r1, r4
	cmp r1, #0
	beq _020C7EE0
	ldr r0, _020C7FD4 ; =0x02099F50
	mov r1, r4
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	ldr r3, [sp, #0x34]
	mov r12, #0x74
	mla r3, r9, r12, r3
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, r10
	mov r1, #4
	mov r2, #0
	bl FUN_ov4_020c6b18
	mov r0, #0x18
	mul r0, r8, r0
	ldrh r2, [r6, #0xe]
	ldrh r1, [r6, #0xc]
	ldr r3, [r6]
	mov r6, #0
	str r4, [sp]
	str r6, [sp, #4]
	ldr r6, [sp, #0x38]
	add r0, r0, #0x20
	str r6, [sp, #8]
	mov r6, r0, asr #2
	add r0, r0, r6, lsr #29
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	and r1, r1, #0xff
	str r1, [sp, #0x10]
	and r2, r2, #0xff
	str r2, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r1, #0
	str r3, [sp, #0x1c]
	ldr r0, _020C7FD8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020f5da0
_020C7EE0:
	add r0, r11, r8
	ldrsb r1, [r0, #0x63]
	cmp r1, #0
	blt _020C7F74
	ldr r0, [sp, #0x3c]
	ldr r6, [r0, #0x540]
	cmp r6, #0
	beq _020C7F74
	mov r0, #0x18
	mul r2, r8, r0
	ldr r3, [r6, #0xc]
	mov r0, #0x54
	add r3, r6, r3
	mla r0, r1, r0, r3
	str r4, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x44]
	add r2, r2, #0x18
	str r1, [sp, #8]
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, lsl #0x15
	mov r1, r1, asr #0x18
	str r1, [sp, #0xc]
	mov r1, #0xe
	str r1, [sp, #0x10]
	mov r1, #3
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x48]
	mov r2, r4
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r1, #0
	ldr r0, _020C7FD8 ; =0x0209F5C0
	mov r3, r1
	bl FUN_ov16_020f5da0
_020C7F74:
	cmp r9, r7
	bne _020C7FA0
	mov r2, #0x18
	mul r2, r8, r2
	ldr r1, [sp, #0x40]
	mov r0, r10
	add r2, r2, #0x13
	bl FUN_ov4_020c5a08
	mov r0, r10
	mov r1, r4
	bl FUN_ov4_020c5a50
_020C7FA0:
	add r5, r5, #1
_020C7FA4:
	add r8, r8, #1
_020C7FA8:
	cmp r8, #4
	blt _020C7D9C
	ldr r0, [sp, #0x20]
	add r0, r0, #1
_020C7FB8:
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x20]
	cmp r0, #2
	blt _020C7D1C
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7FD0: .word unk_0209AEC0
_020C7FD4: .word unk_02099F50
_020C7FD8: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c7c90

	arm_func_start FUN_ov4_020c7fdc
FUN_ov4_020c7fdc: ; 0x020C7FDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r8, r0
	ldr r7, [r8, #0x5dc]
	mov r6, #0
	cmp r7, #0
	beq _020C8044
	ldr r5, [r7, #0xc]
	mov r2, #1
	mov r1, r6
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r4, #5
	str r4, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	mov r0, #0xd
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	add r4, r7, r5
	ldr r0, _020C81E8 ; =0x0209F5C0
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C8044:
	ldr r1, [r8, #0x5d0]
	cmp r1, #0
	beq _020C80FC
	ldr r0, [r1, #0xc]
	mov r12, #0xd
	add lr, r1, r0
	mov r9, #0xe
	mov r7, #6
	mov r3, #3
	mov r2, #0x30
	mov r1, #0x18
	mov r0, #5
	strh r2, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r0, [sp, #0x30]
	strh r12, [sp, #0x20]
	strh r9, [sp, #0x22]
	strh r7, [sp, #0x24]
	strh r3, [sp, #0x26]
	mov r4, #0x11
	strh r6, [sp, #0x28]
	strh r6, [sp, #0x2a]
	str lr, [sp, #0x34]
	add r0, sp, #0x20
	str r6, [sp]
	stmib sp, {r0, r6}
	ldr r5, _020C81E8 ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f6084
	mov r1, #0xa
	str r1, [sp]
	ldr r0, _020C81EC ; =0x0209A070
	mov r1, r6
	mov r2, r4
	mov r3, r6
	bl FUN_ov16_020f6c8c
	strb r0, [r8, #0x4ac]
_020C80FC:
	ldr r1, [r8, #0x4b4]
	add r0, r8, #0xb4
	cmp r1, #0
	add r7, r0, #0x400
	ldrne r0, [r7, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020C81F0 ; =0x0209AEC0
	ldr r10, _020C81F4 ; =0x020DA2E8
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	ldr r0, _020C81F0 ; =0x0209AEC0
	ldreq r10, _020C81F8 ; =0x020DA314
	bl FUN_0204671c
	cmp r0, #0xc
	ldr r9, _020C81FC ; =0x02099F50
	mov r5, #1
	mov r4, #4
	ldr r0, [r9]
	mov r1, r5
	mov r2, r4
	ldreq r10, _020C8200 ; =0x020DA344
	bl FUN_02043310
	str r7, [sp]
	stmib sp, {r5, r6}
	mov r0, r8
	mov r1, r6
	mov r3, r10
	mov r2, #0x14
	bl FUN_ov4_020c6b18
	ldr r0, [r9]
	bl FUN_0204331c
	ldrh r2, [r7, #0xe]
	ldrh r1, [r7, #0xc]
	ldr r3, [r7]
	mov r0, #5
	stmia sp, {r5, r6}
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	and r1, r1, #0xff
	str r1, [sp, #0x10]
	and r2, r2, #0xff
	str r2, [sp, #0x14]
	str r6, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r0, _020C81E8 ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C81E8: .word unk_0209F5C0
_020C81EC: .word unk_0209A070
_020C81F0: .word unk_0209AEC0
_020C81F4: .word ov4_020DA2E8
_020C81F8: .word ov4_020DA314
_020C81FC: .word unk_02099F50
_020C8200: .word ov4_020DA344
	arm_func_end FUN_ov4_020c7fdc

	arm_func_start FUN_ov4_020c8204
FUN_ov4_020c8204: ; 0x020C8204
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r4, [r6, #0x5dc]
	cmp r4, #0
	beq _020C8268
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r3, #5
	str r3, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	mov r0, #0xd
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [r4, #0xc]
	ldr r0, _020C83E8 ; =0x0209F5C0
	add r4, r4, r3
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C8268:
	ldr r1, [r6, #0x5d0]
	cmp r1, #0
	beq _020C8324
	ldr r0, [r1, #0xc]
	mov r4, #0
	add r12, r1, r0
	mov r10, #0xd
	mov r9, #0xe
	mov r8, #6
	mov r3, #3
	mov r2, #0x30
	mov r1, #0x18
	mov r0, #5
	strh r2, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r0, [sp, #0x30]
	strh r10, [sp, #0x20]
	strh r9, [sp, #0x22]
	strh r8, [sp, #0x24]
	strh r3, [sp, #0x26]
	mov r5, #0x11
	strh r4, [sp, #0x28]
	strh r4, [sp, #0x2a]
	str r12, [sp, #0x34]
	add r0, sp, #0x20
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r7, _020C83E8 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f6084
	mov r2, #0xa
	str r2, [sp]
	ldr r0, _020C83EC ; =0x0209A070
	mov r1, r4
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f6c8c
	strb r0, [r6, #0x4ac]
_020C8324:
	ldr r1, [r6, #0x4b4]
	add r0, r6, #0xb4
	add r5, r0, #0x400
	cmp r1, #0
	ldrne r0, [r5, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, _020C83F0 ; =0x02099F50
	mov r9, #1
	mov r8, #4
	ldr r0, [r7]
	mov r1, r9
	mov r2, r8
	ldr r10, _020C83F4 ; =0x020DA370
	bl FUN_02043310
	mov r4, #0
	stmia sp, {r5, r9}
	mov r0, r6
	mov r1, r4
	mov r2, r8
	mov r3, r10
	str r4, [sp, #8]
	bl FUN_ov4_020c6b18
	ldr r0, [r7]
	bl FUN_0204331c
	str r9, [sp]
	stmib sp, {r4, r8}
	mov r0, #5
	str r0, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, _020C83E8 ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r6, [r5, #0xe]
	mov r2, r4
	mov r3, r4
	and r6, r6, #0xff
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r5]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C83E8: .word unk_0209F5C0
_020C83EC: .word unk_0209A070
_020C83F0: .word unk_02099F50
_020C83F4: .word ov4_020DA370
	arm_func_end FUN_ov4_020c8204

	arm_func_start FUN_ov4_020c83f8
FUN_ov4_020c83f8: ; 0x020C83F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r5, _020C8684 ; =0x0209AEC0
	mov r10, r0
	mov r4, #0
	mov r0, r5
	mov r8, r4
	bl FUN_02046744
	str r0, [sp, #0x24]
	mov r0, r5
	bl FUN_02046730
	str r0, [sp, #0x20]
	add r0, r10, #0xb4
	mov r5, #1
	add r1, r10, #0x5a
	add r11, r0, #0x400
	add r0, r1, #0x200
	mov r9, r8
	str r0, [sp, #0x28]
	mov r6, r5
	b _020C8630
_020C844C:
	ldr r0, [sp, #0x20]
	cmp r0, r9
	beq _020C862C
	ldr r0, [sp, #0x24]
	tst r0, r6, lsl r9
	beq _020C862C
	ldr r3, [r10, #0x588]
	cmp r3, #0
	beq _020C84E0
	mov r0, #0x28
	mul r1, r8, r0
	ldr r2, [r3, #0xc]
	add r0, r3, r2
	add r2, r1, #8
	str r6, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, lsl #0x15
	mov r1, r1, asr #0x18
	str r1, [sp, #0xc]
	mov r1, #0x1a
	str r1, [sp, #0x10]
	mov r1, #5
	str r1, [sp, #0x14]
	mov r1, #6
	str r1, [sp, #0x18]
	add r0, r0, #0x410
	str r0, [sp, #0x1c]
	mov r1, #0
	ldr r0, _020C8688 ; =0x0209F5C0
	mov r2, r6
	mov r3, r1
	bl FUN_ov16_020f5da0
_020C84E0:
	add r1, r8, #1
	mov r0, #0x14
	mul r0, r1, r0
	add r7, r11, r0
	ldr r0, [r11, r0]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020C85B4
	ldr r0, _020C868C ; =0x02099F50
	mov r1, r5
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	ldr r3, [sp, #0x28]
	mov r12, #0x74
	mla r3, r9, r12, r3
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, r10
	mov r1, r4
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_ov4_020c6b18
	mov r0, #0x28
	ldrh r1, [r7, #0xe]
	ldr r2, [r7]
	ldrh r7, [r7, #0xc]
	mul r3, r8, r0
	str r5, [sp]
	and r0, r7, #0xff
	add r7, r3, #0x10
	str r4, [sp, #4]
	mov r3, #8
	str r3, [sp, #8]
	mov r3, r7, asr #2
	add r3, r7, r3, lsr #29
	mov r3, r3, lsl #0x15
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	and r1, r1, #0xff
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, _020C8688 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_020f5da0
_020C85B4:
	mov r0, #0x74
	mla r1, r9, r0, r10
	ldrb r0, [r1, #0x26b]
	mov r2, #0x28
	cmp r0, #0x3c
	bhs _020C8604
	mul r2, r8, r2
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r7, r2, #0x20
	mov r2, r7, asr #2
	ldrb r3, [r1, #0x26b]
	add r2, r7, r2, lsr #29
	mov r2, r2, lsl #0xd
	mov r0, r10
	mov r1, #0x19
	mov r2, r2, asr #0x10
	bl FUN_ov4_020c926c
	b _020C8628
_020C8604:
	mul r2, r8, r2
	add r3, r2, #0x20
	mov r2, r3, asr #2
	add r2, r3, r2, lsr #29
	mov r2, r2, lsl #0xd
	mov r0, r10
	mov r1, #0x17
	mov r2, r2, asr #0x10
	bl FUN_ov4_020c93e4
_020C8628:
	add r8, r8, #1
_020C862C:
	add r9, r9, #1
_020C8630:
	cmp r9, #4
	blt _020C844C
	ldr r0, _020C8684 ; =0x0209AEC0
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C8668
	ldr r1, _020C8690 ; =0x020DA3B0
	mov r0, r10
	bl FUN_ov4_020c7364
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8668:
	ldr r1, _020C8694 ; =0x020DA3D4
	mov r0, r10
	mov r2, #2
	mov r3, #0
	bl FUN_ov4_020c70b4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8684: .word unk_0209AEC0
_020C8688: .word unk_0209F5C0
_020C868C: .word unk_02099F50
_020C8690: .word ov4_020DA3B0
_020C8694: .word ov4_020DA3D4
	arm_func_end FUN_ov4_020c83f8

	arm_func_start FUN_ov4_020c8698
FUN_ov4_020c8698: ; 0x020C8698
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r7, _020C8CC4 ; =0x0209AEC0
	mov r10, r0
	mov r5, #0
	mov r0, r7
	mov r8, #0xb
	mov r9, #2
	mov r6, #1
	mov r4, r5
	bl FUN_02046744
	mov r0, r7
	bl FUN_02046730
	ldr r0, [r7, #0x5c]
	ldr r7, [r10, #0x5ac]
	cmp r0, #1
	moveq r4, r6
	cmp r4, #0
	beq _020C8730
	cmp r7, #0
	beq _020C87BC
	ldr r5, [r7, #0xc]
	mov r2, #1
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	mov r4, #3
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	mov r0, #0x12
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r3, r1
	add r4, r7, r5
	b _020C87B4
_020C8730:
	cmp r7, #0
	beq _020C87BC
	ldr r1, [r7, #0xc]
	mov r4, #3
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	mov r11, #0x1a
	str r11, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	add r8, r7, r1
	str r4, [sp, #0x18]
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r1, r5
	mov r2, r6
	mov r3, r5
	str r8, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r4, r8, #0x1d4
_020C87B4:
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C87BC:
	ldr r7, [r10, #0x6d8]
	mov r6, #4
	cmp r7, #0
	ldr r4, _020C8CC4 ; =0x0209AEC0
	mov r11, #2
	mov r5, #1
	beq _020C889C
	ldr r0, [r4, #0x5c]
	ldr r1, [r7, #0xc]
	cmp r0, #1
	moveq r0, r5
	movne r0, #0
	mov r9, #1
	cmp r0, #0
	str r9, [sp]
	mov r0, #0
	add r8, r7, r1
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r6, [sp, #0x10]
	str r11, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	addeq r8, r8, #0x10
	ldr r0, _020C8CC8 ; =0x0209F5C0
	str r8, [sp, #0x1c]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020f5da0
	ldr r0, [r4, #0x5c]
	ldr r1, [r7, #0xc]
	cmp r0, #1
	add r8, r7, r1
	movne r9, #0
	cmp r9, #0
	mov r1, #0
	str r5, [sp]
	str r1, [sp, #4]
	mov r3, #0x10
	str r3, [sp, #8]
	mov r2, #0xb
	str r2, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	str r11, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	addne r8, r8, #0x10
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r8, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C889C:
	ldr r1, [r10, #0x4c8]
	add r0, r10, #0xc8
	cmp r1, #0
	add r7, r0, #0x400
	ldrne r0, [r7, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020C8940
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r2, r10, #0x5a
	add r3, r2, #0x200
	mov r0, r10
	mov r1, #0
	str r5, [sp, #8]
	mov r2, #2
	bl FUN_ov4_020c6b18
	ldrh r2, [r7, #0xe]
	ldrh r0, [r7, #0xc]
	ldr r1, [r7]
	and r3, r2, #0xff
	and r2, r0, #0xff
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, #0
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020f5da0
_020C8940:
	ldr r1, [r10, #0x4dc]
	add r0, r10, #0xdc
	cmp r1, #0
	add r7, r0, #0x400
	ldrne r0, [r7, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020C89E8
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r2, r10, #0xce
	add r3, r2, #0x200
	mov r0, r10
	mov r1, #0
	str r5, [sp, #8]
	mov r2, #2
	bl FUN_ov4_020c6b18
	ldrh r2, [r7, #0xe]
	ldrh r0, [r7, #0xc]
	ldr r1, [r7]
	and r3, r2, #0xff
	and r2, r0, #0xff
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, #0
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020f5da0
_020C89E8:
	ldr r9, [r10, #0x6fc]
	cmp r9, #0
	beq _020C8A30
	ldr r8, [r9, #0xc]
	mov r1, #0
	str r5, [sp]
	stmib sp, {r1, r6}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r7, #0xb
	str r7, [sp, #0x18]
	add r7, r9, r8
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C8A30:
	ldr r8, [r10, #0x708]
	cmp r8, #0
	beq _020C8A7C
	ldr r7, [r8, #0xc]
	mov r1, #0
	str r5, [sp]
	stmib sp, {r1, r6}
	mov r0, #0xd
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r6, #0xc
	str r6, [sp, #0x18]
	add r6, r8, r7
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C8A7C:
	ldrb r0, [r10, #0x26b]
	mov r2, #6
	cmp r0, #0x3c
	blo _020C8AD4
	ldr r0, [r4, #0x5c]
	mov r1, #0xc
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C8ABC
	str r5, [sp]
	mov r3, #0
	mov r0, r10
	str r3, [sp, #4]
	b _020C8AE8
_020C8ABC:
	mov r3, #1
	str r3, [sp]
	mov r6, #0
	mov r0, r10
	str r6, [sp, #4]
	b _020C8AE8
_020C8AD4:
	mov r0, #0
	stmia sp, {r0, r5}
	ldrb r3, [r10, #0x26b]
	mov r0, r10
	mov r1, #0x17
_020C8AE8:
	bl FUN_ov4_020c926c
	ldrb r0, [r10, #0x2df]
	mov r2, #0xf
	cmp r0, #0x3c
	blo _020C8B44
	ldr r0, [r4, #0x5c]
	mov r1, #0xc
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C8B30
	mov r3, #1
	str r3, [sp]
	mov r4, #0
	mov r0, r10
	str r4, [sp, #4]
	b _020C8B58
_020C8B30:
	str r5, [sp]
	mov r3, #0
	mov r0, r10
	str r3, [sp, #4]
	b _020C8B58
_020C8B44:
	mov r0, #0
	stmia sp, {r0, r5}
	ldrb r3, [r10, #0x2df]
	mov r0, r10
	mov r1, #0x17
_020C8B58:
	bl FUN_ov4_020c926c
	ldr r1, [r10, #0x518]
	add r0, r10, #0x118
	cmp r1, #0
	add r7, r0, #0x400
	ldrne r0, [r7, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020C8C04
	mov r1, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, r1
	str r2, [sp, #8]
	mov r0, r10
	add r3, r10, #0x26c
	mov r2, #2
	bl FUN_ov4_020c6b18
	ldrh r2, [r7, #0xe]
	ldrh r1, [r7, #0xc]
	ldr r4, [r7]
	mov r0, #0
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	and r0, r1, #0xff
	str r0, [sp, #0x10]
	and r0, r2, #0xff
	mov r1, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C8C04:
	ldr r1, [r10, #0x52c]
	add r0, r10, #0x12c
	cmp r1, #0
	add r7, r0, #0x400
	ldrne r0, [r7, #4]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020C8CAC
	mov r1, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, r1
	str r2, [sp, #8]
	mov r0, r10
	add r3, r10, #0x2e0
	mov r2, #2
	bl FUN_ov4_020c6b18
	ldrh r2, [r7, #0xe]
	ldrh r1, [r7, #0xc]
	ldr r4, [r7]
	mov r0, #0
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	and r0, r1, #0xff
	str r0, [sp, #0x10]
	and r0, r2, #0xff
	mov r1, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _020C8CC8 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020C8CAC:
	mov r1, #0
	mov r0, r10
	mov r2, r1
	bl FUN_ov4_020c613c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8CC4: .word unk_0209AEC0
_020C8CC8: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c8698

	arm_func_start FUN_ov4_020c8ccc
FUN_ov4_020c8ccc: ; 0x020C8CCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r7, r2
	add r3, r7, #1
	mov r2, #0x14
	mul r2, r3, r2
	mov r9, r0
	add r0, r9, #0xb4
	add r3, r0, #0x400
	ldr r0, [r3, r2]
	add r6, r3, r2
	cmp r0, #0
	ldrne r0, [r6, #4]
	mov r8, r1
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020C8DD0 ; =0x02099F50
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, #4
	bl FUN_02043310
	add r1, r9, #0xb6
	mov r0, #0x19
	mov r4, #0
	str r6, [sp]
	str r4, [sp, #4]
	mla r3, r8, r0, r1
	mov r0, r9
	mov r1, r4
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_ov4_020c6b18
	mov r0, #0x28
	mul r0, r7, r0
	add r1, r0, #0x10
	mov r0, r1, asr #2
	str r5, [sp]
	add r0, r1, r0, lsr #29
	mov r0, r0, lsl #0x15
	str r4, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	ldrh r2, [r6, #0xc]
	ldr r0, _020C8DD4 ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r5, [r6, #0xe]
	mov r2, r4
	mov r3, r4
	and r5, r5, #0xff
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r6]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C8DD0: .word unk_02099F50
_020C8DD4: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c8ccc

	arm_func_start FUN_ov4_020c8dd8
FUN_ov4_020c8dd8: ; 0x020C8DD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	add r7, r1, #1
	mov r1, #0x14
	mul r1, r7, r1
	mov r9, r0
	add r0, r9, #0xb4
	add r3, r0, #0x400
	ldr r0, [r3, r1]
	add r6, r3, r1
	cmp r0, #0
	ldrne r0, [r6, #4]
	mov r8, r2
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020C8ED0 ; =0x02099F50
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	mov r2, #4
	bl FUN_02043310
	add r0, r9, #0x5a
	add r1, r0, #0x200
	mov r0, #0x74
	mov r4, #0
	str r6, [sp]
	str r4, [sp, #4]
	mla r3, r7, r0, r1
	mov r0, r9
	mov r1, r4
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_ov4_020c6b18
	mov r0, r8, asr #2
	str r5, [sp]
	add r0, r8, r0, lsr #29
	mov r0, r0, lsl #0x15
	str r4, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	ldrh r2, [r6, #0xc]
	ldr r0, _020C8ED4 ; =0x0209F5C0
	mov r1, r4
	and r2, r2, #0xff
	str r2, [sp, #0x10]
	ldrh r5, [r6, #0xe]
	mov r2, r4
	mov r3, r4
	and r5, r5, #0xff
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r4, [r6]
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C8ED0: .word unk_02099F50
_020C8ED4: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c8dd8

	arm_func_start FUN_ov4_020c8ed8
FUN_ov4_020c8ed8: ; 0x020C8ED8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, #0
	mov r7, r0
	mov r9, r10
	mov r6, r10
	add r4, r7, #0xb0
	mov r8, r10
	ldr r5, _020C903C ; =0x0209B13C
	b _020C9028
_020C8EFC:
	ldr r0, [r5]
	cmp r0, #0
	ldrb r0, [r4, #0x18]
	bne _020C8F1C
	cmp r0, #0
	movne r9, #1
	strb r8, [r4, #0x18]
	b _020C901C
_020C8F1C:
	cmp r0, #0
	mov r0, #1
	moveq r9, #1
	strb r0, [r4, #0x18]
	mov r3, #0
	b _020C8F54
_020C8F34:
	ldr r2, [r5]
	ldrb r1, [r4, r3]
	add r2, r2, r3
	ldrb r2, [r2, #4]
	cmp r2, r1
	strneb r2, [r4, r3]
	movne r9, r0
	add r3, r3, #1
_020C8F54:
	cmp r3, #6
	blt _020C8F34
	ldr r1, [r5]
	ldrb r0, [r1, #0x4a]
	cmp r0, #0
	beq _020C9004
	adds r0, r1, #0x50
	beq _020C8FC4
	ldrb r2, [r7, #0x71]
	ldrb r1, [r0, #0x22]
	cmp r2, #0
	bne _020C8FB4
	cmp r1, #1
	bne _020C8F94
	cmp r2, #0
	bne _020C8FC4
_020C8F94:
	ldrb r1, [r0, #0x22]
	cmp r1, #4
	bne _020C8FAC
	ldrb r1, [r7, #0x71]
	cmp r1, #0
	beq _020C8FC4
_020C8FAC:
	strb r8, [r4, #0x18]
	b _020C901C
_020C8FB4:
	cmp r1, #2
	strneb r8, [r4, #0x18]
	addne r5, r5, #4
	bne _020C9020
_020C8FC4:
	mov r12, #0
	b _020C8FE8
_020C8FCC:
	add r3, r4, r12
	add r1, r0, r12
	ldrsb r2, [r3, #6]
	ldrsb r1, [r1, #0x10]
	add r12, r12, #1
	cmp r2, r1
	strneb r1, [r3, #6]
_020C8FE8:
	cmp r12, #0x11
	blt _020C8FCC
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0, #0x21]
	cmp r1, r0
	strneb r0, [r4, #0x17]
	b _020C9018
_020C9004:
	mov r1, r8
	add r0, r4, #6
	mov r2, #0x11
	bl MI_CpuFill8
	strb r8, [r4, #0x17]
_020C9018:
	add r10, r10, #1
_020C901C:
	add r5, r5, #4
_020C9020:
	add r6, r6, #1
	add r4, r4, #0x19
_020C9028:
	cmp r6, #0x10
	blt _020C8EFC
	mov r0, r9
	str r10, [r7, #0xa8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C903C: .word unk_0209B13C
	arm_func_end FUN_ov4_020c8ed8

	arm_func_start FUN_ov4_020c9040
FUN_ov4_020c9040: ; 0x020C9040
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	mov r8, #0
	add r0, r5, #0x28
	mov r4, r8
	add r9, r0, #0x400
	mov r6, r8
_020C905C:
	add r0, r5, r4, lsl #2
	mvn r1, #0
	str r1, [r0, #0x418]
	ldrb r0, [r9, #0x18]
	add r7, r5, #0xb0
	mov r10, #0
	cmp r0, #0
	beq _020C90C8
_020C907C:
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	beq _020C90A8
	mov r0, r5
	mov r1, r9
	mov r2, r7
	bl FUN_ov4_020c91c0
	cmp r0, #0
	addne r0, r5, r4, lsl #2
	strne r10, [r0, #0x418]
	bne _020C90B8
_020C90A8:
	add r10, r10, #1
	cmp r10, #0x10
	add r7, r7, #0x19
	blt _020C907C
_020C90B8:
	cmp r10, #0x10
	strgeb r6, [r9, #0x18]
	movge r8, #1
	b _020C910C
_020C90C8:
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	beq _020C90FC
	mov r0, r5
	mov r1, r9
	mov r2, r7
	bl FUN_ov4_020c91c0
	cmp r0, #0
	addne r0, r5, r4, lsl #2
	strne r10, [r0, #0x418]
	movne r8, #1
	strneb r8, [r9, #0x18]
	bne _020C910C
_020C90FC:
	add r10, r10, #1
	cmp r10, #0x10
	add r7, r7, #0x19
	blt _020C90C8
_020C910C:
	add r4, r4, #1
	cmp r4, #4
	add r9, r9, #0x19
	mov r7, #0
	blt _020C905C
	add r0, r5, #0x28
	add r10, r0, #0x400
	mov r9, r7
	mov r6, #1
	mov r4, #0x19
_020C9134:
	ldrb r0, [r10, #0x18]
	cmp r0, #0
	bne _020C91A8
	mov r3, r7
	add r0, r5, #0xb0
_020C9148:
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	beq _020C9198
	mov r2, r7
_020C9158:
	add r1, r5, r2, lsl #2
	ldr r1, [r1, #0x418]
	cmp r3, r1
	beq _020C9174
	add r2, r2, #1
	cmp r2, #4
	blt _020C9158
_020C9174:
	cmp r2, #4
	blt _020C9198
	add r12, r5, r9, lsl #2
	mov r1, r10
	mov r2, r4
	mov r8, r6
	str r3, [r12, #0x418]
	bl MI_CpuCopy8
	b _020C91A8
_020C9198:
	add r3, r3, #1
	cmp r3, #0x10
	add r0, r0, #0x19
	blt _020C9148
_020C91A8:
	add r9, r9, #1
	cmp r9, #4
	add r10, r10, #0x19
	blt _020C9134
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov4_020c9040

	arm_func_start FUN_ov4_020c91c0
FUN_ov4_020c91c0: ; 0x020C91C0
	mov r12, #0
_020C91C4:
	ldrb r3, [r1, r12]
	ldrb r0, [r2, r12]
	cmp r3, r0
	movne r0, #0
	bxne lr
	add r12, r12, #1
	cmp r12, #6
	blt _020C91C4
	mov r12, #0
_020C91E8:
	add r3, r1, r12
	add r0, r2, r12
	ldrsb r3, [r3, #6]
	ldrsb r0, [r0, #6]
	cmp r3, r0
	movne r0, #0
	bxne lr
	add r12, r12, #1
	cmp r12, #0x11
	blt _020C91E8
	ldrb r1, [r1, #0x17]
	ldrb r0, [r2, #0x17]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov4_020c91c0

	arm_func_start FUN_ov4_020c9228
FUN_ov4_020c9228: ; 0x020C9228
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r12, #0
	mov lr, #3
_020C9238:
	adds r4, r4, r2
	movmi r4, lr
	bmi _020C924C
	cmp r4, #3
	movgt r4, r12
_020C924C:
	add r3, r0, r4, lsl #2
	ldr r3, [r3, #0x418]
	cmp r3, #0
	bge _020C9264
	cmp r1, r4
	bne _020C9238
_020C9264:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020c9228

	arm_func_start FUN_ov4_020c926c
FUN_ov4_020c926c: ; 0x020C926C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldrb r4, [sp, #0x48]
	mov r10, r1
	mov r9, r3
	cmp r4, #0
	beq _020C9304
	ldr r1, [r0, #0x6e4]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r3, #1
	add r4, r1, r0
	mov r0, r10, lsl #0x18
	mov r1, #0
	str r3, [sp]
	mov r2, r2, lsl #0x18
	str r1, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r2, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	cmp r9, #0
	addne r4, r4, #0x28
	ldr r0, _020C93DC ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9304:
	ldrb r1, [sp, #0x4c]
	mov r3, #0x20
	cmp r1, #0
	movne r3, #0x21
	mov r1, #0xc
	mla r0, r3, r1, r0
	ldr r1, [r0, #0x540]
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	cmp r9, #0x63
	add r8, r1, r0
	movgt r9, #0x63
	mov r0, r2, lsl #0x18
	cmp r9, #0
	ldr r4, _020C93E0 ; =0x66666667
	movlt r9, #0
	mov r5, r0, asr #0x18
	mov r7, #1
	mov r6, #0
	mov r11, #2
_020C935C:
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	str r7, [sp]
	mov r0, r10, lsl #0x18
	sub r2, r9, r1
	add r1, r8, r2, lsl #2
	str r6, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r11, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _020C93DC ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_020f5da0
	mov r1, r9
	smull r0, r9, r4, r1
	mov r0, r1, lsr #0x1f
	add r9, r0, r9, asr #2
	sub r10, r10, #1
	cmp r9, #0
	bgt _020C935C
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C93DC: .word unk_0209F5C0
_020C93E0: .word 0x66666667
	arm_func_end FUN_ov4_020c926c

	arm_func_start FUN_ov4_020c93e4
FUN_ov4_020c93e4: ; 0x020C93E4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x654]
	cmp r12, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov lr, #1
	mov r0, r1, lsl #0x18
	mov r3, #0
	mov r1, r2, lsl #0x18
	str lr, [sp]
	str r3, [sp, #4]
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	mov r0, r1, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r1, [r12, #0xc]
	ldr r0, _020C9460 ; =0x0209F5C0
	add r12, r12, r1
	mov r1, r3
	mov r2, r3
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_020C9460: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c93e4

	arm_func_start FUN_ov4_020c9464
FUN_ov4_020c9464: ; 0x020C9464
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	cmp r3, #5
	ldreqb r0, [r10, #0x72]
	mov r9, r1
	mov r1, r3
	cmpeq r0, #0
	moveq r1, #6
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r7, [r0, #0x540]
	mov r6, #0
	cmp r3, #6
	moveq r6, #0x30c
	mov r8, r2
	cmp r7, #0
	beq _020C9644
	ldr r1, [r7, #0xc]
	ldr r0, [sp, #0x5c]
	add r1, r7, r1
	add r0, r0, r0, lsl #6
	add r0, r1, r0, lsl #2
	mov r1, #0x28
	strh r1, [sp, #0x22]
	mov r1, #0
	add r0, r6, r0
	mov r5, #3
	mov r4, #0x1a
	mov r11, #5
	mov r2, #0xd0
	strh r2, [sp, #0x20]
	str r0, [sp, #0x28]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	mov r1, #6
	strb r1, [sp, #0x24]
	strh r5, [sp, #0x14]
	strh r9, [sp, #0x16]
	strh r4, [sp, #0x18]
	strh r11, [sp, #0x1a]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x50]
	ldr r0, _020C9694 ; =0x0209F5C0
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_020f5c34
	ldr r1, [r7, #0xc]
	ldr r0, [sp, #0x64]
	add r1, r7, r1
	add r0, r0, r0, lsl #6
	add r0, r1, r0, lsl #2
	add r0, r6, r0
	str r0, [sp, #0x28]
	mov r0, #0
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	mov r0, #6
	strb r0, [sp, #0x24]
	strh r5, [sp, #0x14]
	strh r9, [sp, #0x16]
	strh r4, [sp, #0x18]
	strh r11, [sp, #0x1a]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020C9694 ; =0x0209F5C0
	ldr r3, [sp, #0x58]
	mov r1, #0
	mov r2, #1
	bl FUN_ov16_020f5c34
	ldr r1, [r7, #0xc]
	ldr r0, [sp, #0x60]
	strh r4, [sp, #0x18]
	ldr r4, [sp, #0x54]
	add r1, r7, r1
	add r0, r0, r0, lsl #6
	add r0, r1, r0, lsl #2
	add r1, r6, r0
	mov r0, #6
	strb r0, [sp, #0x24]
	mov r0, #0
	str r1, [sp, #0x28]
	strh r5, [sp, #0x14]
	strh r11, [sp, #0x1a]
	strh r9, [sp, #0x16]
	strh r0, [sp, #0x1c]
	strh r0, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020C9694 ; =0x0209F5C0
	mov r2, #1
	mov r1, #0
	mov r3, r4
	bl FUN_ov16_020f5c34
	ldr r0, _020C9694 ; =0x0209F5C0
	mov r1, #0
	mov r2, r4
	bl FUN_ov16_020f6084
_020C9644:
	add r0, r9, #3
	cmp r8, #0x3c
	mov r1, r0, lsl #0x10
	bge _020C967C
	mov r4, #0
	str r4, [sp]
	mov r2, r1, asr #0x10
	mov r0, r10
	mov r3, r8
	mov r1, #0x19
	str r4, [sp, #4]
	bl FUN_ov4_020c926c
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C967C:
	mov r2, r1, asr #0x10
	mov r0, r10
	mov r1, #0x17
	bl FUN_ov4_020c93e4
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9694: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c9464

	arm_func_start FUN_ov4_020c9698
FUN_ov4_020c9698: ; 0x020C9698
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	cmp r2, #5
	ldreqb r12, [r0, #0x72]
	mov lr, r2
	mov r4, #0
	cmpeq r12, #0
	moveq lr, #6
	cmp r2, #6
	mov r2, #0xc
	mla r0, lr, r2, r0
	ldr lr, [r0, #0x540]
	moveq r4, #0x30c
	cmp lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	mov r2, #1
	str r2, [sp]
	mov r12, #0
	mov r0, r1, lsl #0x18
	str r12, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1a
	add r1, r3, r3, lsl #6
	str r0, [sp, #0x10]
	mov r0, #5
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r3, [lr, #0xc]
	ldr r0, _020C9744 ; =0x0209F5C0
	add r3, lr, r3
	add r1, r3, r1, lsl #2
	add r4, r4, r1
	mov r1, r12
	mov r3, r12
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_020C9744: .word unk_0209F5C0
	arm_func_end FUN_ov4_020c9698

	arm_func_start FUN_ov4_020c9748
FUN_ov4_020c9748: ; 0x020C9748
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x118
	mov r7, #0
	mov r4, r0
	ldr r0, _020CA33C ; =0x0209F5C0
	mov r1, r7
	mov r2, r7
	ldr r11, _020CA340 ; =0x0209A070
	mov r6, #1
	bl FUN_ov16_020f5ff4
	ldr r0, _020CA340 ; =0x0209A070
	bl FUN_ov16_020f6c4c
	ldr r0, _020CA344 ; =0x02099EB4
	mov r1, #3
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldr r1, [r4, #0x734]
	cmp r1, #0
	beq _020C97A4
	ldr r0, _020CA348 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	str r7, [r4, #0x734]
_020C97A4:
	ldr r0, [r4, #0xc]
	ldr r9, _020CA34C ; =0x020A0640
	cmp r0, #0x21
	mov r8, #4
	mov r5, #2
	addls pc, pc, r0, lsl #2
	b _020CA96C
_020C97C0: ; jump table
	b _020CA96C ; case 0
	b _020C9848 ; case 1
	b _020CA524 ; case 2
	b _020CA96C ; case 3
	b _020C9848 ; case 4
	b _020C9D70 ; case 5
	b _020C9D70 ; case 6
	b _020C9D70 ; case 7
	b _020C9E88 ; case 8
	b _020CA96C ; case 9
	b _020CA524 ; case 10
	b _020CA21C ; case 11
	b _020CA21C ; case 12
	b _020CA4FC ; case 13
	b _020CA4FC ; case 14
	b _020CA524 ; case 15
	b _020CA64C ; case 16
	b _020CA668 ; case 17
	b _020CA6A8 ; case 18
	b _020CA6A8 ; case 19
	b _020CA96C ; case 20
	b _020C9B78 ; case 21
	b _020C9C7C ; case 22
	b _020C9D00 ; case 23
	b _020C9D5C ; case 24
	b _020CA96C ; case 25
	b _020CA96C ; case 26
	b _020CA544 ; case 27
	b _020CA700 ; case 28
	b _020CA714 ; case 29
	b _020CA534 ; case 30
	b _020CA728 ; case 31
	b _020CA834 ; case 32
	b _020CA834 ; case 33
_020C9848:
	ldr r2, [r4, #0x564]
	cmp r2, #0
	beq _020C9918
	ldrb r0, [r4, #0x71]
	ldr r1, [r2, #0xc]
	mov r6, #0x15
	add r8, r2, r1
	cmp r0, #0
	moveq r1, #8
	movne r1, #0x28
	mov r0, r1, asr #2
	add r1, r1, r0, lsr #29
	mov r9, #0x13
	mov r0, r4
	mov r2, r8
	mov r3, r9
	str r6, [sp]
	mov r5, #0x14
	mov r1, r1, asr #3
	str r5, [sp, #4]
	bl FUN_ov4_020c66f8
	ldr r0, _020CA340 ; =0x0209A070
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	ldrb r1, [r4, #0x71]
	mov r9, #0x16
	strb r0, [r4, #0x4a0]
	cmp r1, #0
	moveq r1, #0x30
	movne r1, #0x60
	mov r0, r1, asr #2
	add r1, r1, r0, lsr #29
	mov r6, #0x18
	mov r0, r4
	mov r3, r9
	str r6, [sp]
	mov r5, #0x17
	mov r1, r1, asr #3
	add r2, r8, #0x258
	str r5, [sp, #4]
	bl FUN_ov4_020c66f8
	mov r8, #0
	ldr r0, _020CA340 ; =0x0209A070
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r8, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a1]
_020C9918:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	bne _020C9A48
	ldr r1, [r4, #0x648]
	cmp r1, #0
	beq _020C9A48
	ldr r0, [r1, #0xc]
	mov r6, #0x1b
	add r8, r1, r0
	mov r9, #0x19
	str r6, [sp]
	mov r5, #0x1a
	mov r0, r4
	mov r2, r8
	mov r3, r9
	mov r1, #0xb
	str r5, [sp, #4]
	bl FUN_ov4_020c6850
	mov r0, r11
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a2]
	mov r6, #0x1e
	mov r9, #0x1c
	str r6, [sp]
	mov r5, #0x1d
	str r5, [sp, #4]
	mov r0, r4
	mov r1, #0xe
	add r2, r8, #0x144
	mov r3, r9
	bl FUN_ov4_020c6850
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	mov r0, r11
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a3]
	mov r6, #0x21
	mov r9, #0x1f
	str r6, [sp]
	mov r5, #0x20
	str r5, [sp, #4]
	mov r0, r4
	mov r1, #0x11
	add r2, r8, #0x288
	mov r3, r9
	bl FUN_ov4_020c6850
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	mov r0, r11
	bl FUN_ov16_020f6c8c
	add r2, r8, #0x3cc
	strb r0, [r4, #0x4a4]
	mov r8, #0x24
	mov r5, #0x22
	str r8, [sp]
	mov r6, #0x23
	mov r0, r4
	mov r1, #0x14
	mov r3, r5
	str r6, [sp, #4]
	bl FUN_ov4_020c6850
	mov r0, r11
	mov r1, r5
	mov r2, r8
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a5]
_020C9A48:
	ldr r1, [r4, #0x40]
	ldr r0, _020CA340 ; =0x0209A070
	add r1, r4, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	mov r0, r4
	bl FUN_ov4_020c6500
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bne _020C9A98
	ldr r0, _020CA33C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f64cc
	mov r0, r4
	bl FUN_ov4_020c6f1c
	mov r1, #6
	ldr r0, _020CA350 ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_020C9A98:
	ldr r0, [r4, #0x40]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020CA96C
_020C9AA8: ; jump table
	b _020C9AC0 ; case 0
	b _020C9AF4 ; case 1
	b _020C9B28 ; case 2
	b _020C9B3C ; case 3
	b _020C9B50 ; case 4
	b _020C9B64 ; case 5
_020C9AC0:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	bne _020C9AE0
	ldr r1, _020CA354 ; =0x020DA3F4
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9AE0:
	ldr r1, _020CA358 ; =0x020DA444
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9AF4:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	bne _020C9B14
	ldr r1, _020CA35C ; =0x020DA4C8
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9B14:
	ldr r1, _020CA360 ; =0x020DA514
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9B28:
	ldr r1, _020CA364 ; =0x020DA594
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9B3C:
	ldr r1, _020CA368 ; =0x020DA5E0
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9B50:
	ldr r1, _020CA36C ; =0x020DA624
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9B64:
	ldr r1, _020CA370 ; =0x020DA64C
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9B78:
	ldrb r0, [r4, #0x72]
	mov r5, r9
	cmp r0, #0
	bne _020C9BB8
	mov r0, r4
	bl FUN_ov4_020c7958
	ldr r1, _020CA374 ; =0x020DA69C
	mov r0, r4
	bl FUN_ov4_020c76e0
	mov r0, r4
	bl FUN_ov4_020c7c90
	ldr r1, _020CA378 ; =0x020DA6C0
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9BB8:
	mov r1, #0
	b _020C9BD4
_020C9BC0:
	add r0, r4, r1
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	bne _020C9BDC
	add r1, r1, #1
_020C9BD4:
	cmp r1, #3
	blt _020C9BC0
_020C9BDC:
	mov r6, #0x10
	mov r0, r4
	mov r2, r6
	bl FUN_ov4_020c8dd8
	mov r1, #1
	mov r0, r4
	mov r3, r1
	mov r2, #5
	bl FUN_ov4_020c9698
	ldrb r0, [r5, #0x89]
	mov r2, #3
	cmp r0, #0
	beq _020C9C18
	ldr r1, _020CA37C ; =0x020DA6EC
	b _020C9C1C
_020C9C18:
	ldr r1, _020CA380 ; =0x020DA784
_020C9C1C:
	mov r0, r4
	mov r3, r6
	bl FUN_ov4_020c70b4
	mov r0, r4
	mov r1, #5
	mov r2, #8
	bl FUN_ov4_020c78dc
	mov r0, r4
	mov r1, #0xb
	mov r2, #0x13
	bl FUN_ov4_020c6628
	ldrb r0, [r5, #0x89]
	cmp r0, #0
	beq _020C9C68
	ldr r1, _020CA384 ; =0x020DA81C
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9C68:
	ldr r1, _020CA388 ; =0x020DA868
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9C7C:
	ldrb r0, [r4, #0x72]
	cmp r0, #0
	addne sp, sp, #0x118
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov4_020c7bd0
	mov r0, r4
	bl FUN_ov4_020c7c90
	ldr r5, _020CA38C ; =0x0209AEC0
	mov r0, r5
	bl FUN_02046744
	ldr r1, [r5, #0x5c]
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	beq _020C9CE4
	ldrb r1, [r4, #0x414]
	and r1, r1, r0
	cmp r0, r1
	bne _020C9CE4
	ldr r1, _020CA390 ; =0x020DA8B4
	mov r0, r4
	bl FUN_ov4_020c7364
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9CE4:
	ldr r1, _020CA394 ; =0x020DA8CC
	mov r0, r4
	mov r2, #2
	mov r3, #0
	bl FUN_ov4_020c70b4
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9D00:
	mov r0, r4
	bl FUN_ov4_020c7bd0
	mov r0, r4
	bl FUN_ov4_020c7c90
	ldr r0, _020CA38C ; =0x0209AEC0
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C9D40
	ldr r1, _020CA398 ; =0x020DA8EC
	mov r0, r4
	bl FUN_ov4_020c7364
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9D40:
	ldr r1, _020CA39C ; =0x020DA904
	mov r0, r4
	mov r2, #2
	mov r3, #0
	bl FUN_ov4_020c70b4
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9D5C:
	ldr r1, _020CA3A0 ; =0x020DA924
	mov r0, r4
	bl FUN_ov4_020c7364
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9D70:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	bne _020C9E58
	ldrb r0, [r4, #0x72]
	cmp r0, #0
	beq _020C9DB0
	ldrb r0, [r9, #0x89]
	add r2, r4, #0x5a
	cmp r0, #0
	add r0, sp, #0x18
	beq _020C9DA4
	ldr r1, _020CA3A4 ; =0x020DA944
	b _020C9DA8
_020C9DA4:
	ldr r1, _020CA3A8 ; =0x020DA9B8
_020C9DA8:
	add r2, r2, #0x200
	bl FUN_02023c40
_020C9DB0:
	ldrb r0, [r4, #0x72]
	ldr r1, _020CA3AC ; =0x020DAA2C
	mov r2, #0
	cmp r0, #0
	ldrb r0, [r4, #0x72]
	movne r2, #3
	mov r3, #0
	cmp r0, #0
	addne r1, sp, #0x18
	mov r0, r4
	bl FUN_ov4_020c70b4
	ldrb r0, [r4, #0x72]
	cmp r0, #0
	mov r0, r4
	bne _020C9DF4
	bl FUN_ov4_020c6500
	b _020C9E10
_020C9DF4:
	mov r1, #5
	mov r2, #6
	bl FUN_ov4_020c78dc
	mov r0, r4
	mov r1, #0xb
	mov r2, #0x11
	bl FUN_ov4_020c6628
_020C9E10:
	ldrb r0, [r9, #0x89]
	cmp r0, #0
	ldrb r0, [r4, #0x72]
	beq _020C9E3C
	ldr r1, _020CA3B0 ; =0x020DAA7C
	cmp r0, #0
	ldrne r1, _020CA3B4 ; =0x020DAACC
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9E3C:
	ldr r1, _020CA3B8 ; =0x020DAB18
	cmp r0, #0
	ldrne r1, _020CA3BC ; =0x020DAB68
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9E58:
	mov r2, #0
	ldr r1, _020CA3C0 ; =0x020DABB4
	mov r0, r4
	mov r3, r2
	bl FUN_ov4_020c70b4
	mov r0, r4
	bl FUN_ov4_020c6500
	ldr r1, _020CA3C4 ; =0x020DAC04
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9E88:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	beq _020C9F1C
	mov r9, #0x31
	str r9, [sp]
	mov r5, #0x34
	str r5, [sp, #4]
	mov r10, #0x37
	str r10, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	ldrb r2, [r4, #0x2df]
	mov r0, r4
	mov r1, #9
	mov r3, #6
	bl FUN_ov4_020c9464
	mov r0, r11
	mov r1, r9
	mov r2, r5
	mov r3, r10
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a0]
	mov r0, r4
	mov r1, r7
	mov r2, #0x50
	bl FUN_ov4_020c8dd8
	mov r0, r4
	mov r1, r7
	mov r2, r7
	bl FUN_ov4_020c613c
	mov r0, r11
	mov r2, r6
	ldrb r1, [r4, #0x4a0]
	b _020CA1A0
_020C9F1C:
	ldr r0, _020CA38C ; =0x0209AEC0
	bl FUN_02046744
	mov r8, r0
	mov r9, #1
	mov r10, #0
	b _020CA158
_020C9F34:
	add r2, r10, #1
	tst r8, r6, lsl r2
	beq _020CA108
	ldrb r1, [r4, #0x72]
	mov r0, #3
	cmp r1, #0
	mov r1, #2
	bne _020CA05C
	ldrb r3, [r4, #0x740]
	cmp r3, #0
	beq _020C9FCC
	add r3, r4, r2
	ldrb r3, [r3, #0x57]
	cmp r3, #0
	bne _020C9FCC
	mov r3, #0x38
	mul r12, r10, r3
	mov r3, #0x74
	mla r11, r2, r3, r4
	add r3, r12, #8
	mov r2, r3, asr #2
	add r3, r3, r2, lsr #29
	add r2, r4, r10
	strb r7, [r2, #0x54]
	add r2, r10, #0x31
	str r2, [sp]
	add r2, r10, #0x34
	str r2, [sp, #4]
	add r2, r10, #0x37
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldrb r2, [r11, #0x26b]
	mov r0, r4
	mov r1, r3, asr #3
_020C9FC4:
	mov r3, #6
	b _020CA0AC
_020C9FCC:
	add r0, r4, r10
	ldrb r0, [r0, #0x54]
	mov r3, #2
	mov r11, #3
	cmp r0, #0
	add r0, r4, r10
	ldrb r0, [r0, #0x54]
	movne r3, #4
	add r2, r10, #0x31
	cmp r0, #0
	add r0, r4, r10
	ldrb r0, [r0, #0x54]
	movne r11, #5
	mov r12, #0
	cmp r0, #0
	mov r0, #0x38
	mul r0, r10, r0
	add r1, r0, #8
	mov r0, r1, asr #2
	add r1, r1, r0, lsr #29
	str r2, [sp]
	add r0, r10, #1
	mov r2, #0x74
	mla r2, r0, r2, r4
	add r0, r10, #0x34
	str r0, [sp, #4]
	add r0, r10, #0x37
	str r0, [sp, #8]
	movne r12, #1
	str r12, [sp, #0xc]
	str r11, [sp, #0x10]
	str r3, [sp, #0x14]
	ldrb r2, [r2, #0x26b]
	mov r0, r4
	mov r1, r1, asr #3
	b _020C9FC4
_020CA05C:
	mov r3, #0x38
	mul r12, r10, r3
	add r0, r10, #0x31
	mov r3, #0x74
	mla r11, r2, r3, r4
	str r0, [sp]
	add r0, r10, #0x34
	str r0, [sp, #4]
	add r0, r10, #0x37
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	add r3, r12, #8
	str r1, [sp, #0x10]
	mov r2, r3, asr #2
	add r3, r3, r2, lsr #29
	str r6, [sp, #0x14]
	mov r1, r3, asr #3
	ldrb r2, [r11, #0x26b]
	mov r0, r4
	mov r3, #5
_020CA0AC:
	bl FUN_ov4_020c9464
	ldr r0, _020CA340 ; =0x0209A070
	add r1, r10, #0x31
	add r2, r10, #0x34
	add r3, r10, #0x37
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	mov r1, #0x38
	mul r2, r10, r1
	add r1, r4, r10
	strb r0, [r1, #0x4a0]
	mov r0, r4
	mov r1, r10
	add r2, r2, #0x10
	bl FUN_ov4_020c8dd8
	add r0, r4, r10
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020CA154
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	moveq r9, r7
	b _020CA154
_020CA108:
	add r0, r4, r10
	strb r6, [r0, #0x54]
	ldr r0, [r4, #0x40]
	cmp r0, r10
	bne _020CA154
	str r0, [r4, #0x44]
_020CA120:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, #1
	str r0, [r4, #0x40]
	strmi r5, [r4, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	beq _020CA14C
	add r0, r0, #1
	tst r8, r6, lsl r0
	beq _020CA120
_020CA14C:
	ldr r0, [r4, #0x40]
	str r0, [r4, #0x44]
_020CA154:
	add r10, r10, #1
_020CA158:
	cmp r10, #3
	blt _020C9F34
	mov r1, #1
	cmp r9, #0
	movne r1, #0
	ldrb r0, [r4, #0x72]
	strb r1, [r4, #0x70]
	mov r1, #1
	cmp r0, #0
	movne r1, #0
	mov r0, r4
	mov r2, r9
	bl FUN_ov4_020c613c
	ldr r1, [r4, #0x40]
	ldr r0, _020CA340 ; =0x0209A070
	add r1, r4, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, #1
_020CA1A0:
	bl FUN_ov16_020f6e8c
	ldrb r1, [r4, #0x72]
	ldr r0, _020CA34C ; =0x020A0640
	cmp r1, #0
	beq _020CA1E8
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _020CA1D4
	ldr r1, _020CA3C8 ; =0x020DAC88
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA1D4:
	ldr r1, _020CA3CC ; =0x020DACD8
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA1E8:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	bne _020CA208
	ldr r1, _020CA3D0 ; =0x020DAD28
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA208:
	ldr r1, _020CA3D4 ; =0x020DAD78
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA21C:
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	ldrb r0, [r4, #0x71]
	bne _020CA290
	cmp r0, #0
	mov r2, #0
	bne _020CA264
	ldr r1, _020CA3D8 ; =0x020DAD98
	mov r0, r4
	mov r3, r2
	bl FUN_ov4_020c70b4
	mov r0, r4
	bl FUN_ov4_020c6500
	ldr r1, _020CA3DC ; =0x020DADE0
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA264:
	ldr r1, _020CA3E0 ; =0x020DAE2C
	mov r0, r4
	mov r3, r2
	bl FUN_ov4_020c70b4
	mov r0, r4
	bl FUN_ov4_020c6500
	ldr r1, _020CA3E4 ; =0x020DAE74
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA290:
	cmp r0, #0
	bne _020CA2A0
	ldr r1, _020CA3E8 ; =0x020DAEF4
	b _020CA2A4
_020CA2A0:
	ldr r1, _020CA3EC ; =0x020DAF44
_020CA2A4:
	mov r0, r4
	bl FUN_ov4_020c0fc0
	ldr r0, [r4, #0xa8]
	cmp r0, #4
	ldr r0, [r4, #0x40]
	strgt r8, [r4, #0xa8]
	cmp r0, #0
	strlt r7, [r4, #0x40]
	blt _020CA2D0
	cmp r0, #4
	strgt r8, [r4, #0x40]
_020CA2D0:
	ldr r1, [r4, #0x40]
	add r0, r4, r1, lsl #2
	ldr r0, [r0, #0x418]
	cmp r0, #0
	bge _020CA2F4
	mov r0, r4
	mov r2, #1
	bl FUN_ov4_020c9228
	str r0, [r4, #0x40]
_020CA2F4:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	mov r8, #1
	cmp r0, r1
	movne r0, #0x3c
	strne r0, [r4, #0x6c]
	strne r1, [r4, #0x44]
	ldrb r0, [r4, #0x72]
	mov r1, #5
	cmp r0, #0
	moveq r1, #6
	mov r0, #0xc
	mla r0, r1, r0, r4
	ldr r0, [r0, #0x540]
	cmp r0, #0
	beq _020CA4D8
	mov r9, #0
	b _020CA4D0
_020CA33C: .word unk_0209F5C0
_020CA340: .word unk_0209A070
_020CA344: .word unk_02099EB4
_020CA348: .word unk_02099F38
_020CA34C: .word unk_020A0640
_020CA350: .word 0x04000050
_020CA354: .word ov4_020DA3F4
_020CA358: .word ov4_020DA444
_020CA35C: .word ov4_020DA4C8
_020CA360: .word ov4_020DA514
_020CA364: .word ov4_020DA594
_020CA368: .word ov4_020DA5E0
_020CA36C: .word ov4_020DA624
_020CA370: .word ov4_020DA64C
_020CA374: .word ov4_020DA69C
_020CA378: .word ov4_020DA6C0
_020CA37C: .word ov4_020DA6EC
_020CA380: .word ov4_020DA784
_020CA384: .word ov4_020DA81C
_020CA388: .word ov4_020DA868
_020CA38C: .word unk_0209AEC0
_020CA390: .word ov4_020DA8B4
_020CA394: .word ov4_020DA8CC
_020CA398: .word ov4_020DA8EC
_020CA39C: .word ov4_020DA904
_020CA3A0: .word ov4_020DA924
_020CA3A4: .word ov4_020DA944
_020CA3A8: .word ov4_020DA9B8
_020CA3AC: .word ov4_020DAA2C
_020CA3B0: .word ov4_020DAA7C
_020CA3B4: .word ov4_020DAACC
_020CA3B8: .word ov4_020DAB18
_020CA3BC: .word ov4_020DAB68
_020CA3C0: .word ov4_020DABB4
_020CA3C4: .word ov4_020DAC04
_020CA3C8: .word ov4_020DAC88
_020CA3CC: .word ov4_020DACD8
_020CA3D0: .word ov4_020DAD28
_020CA3D4: .word ov4_020DAD78
_020CA3D8: .word ov4_020DAD98
_020CA3DC: .word ov4_020DADE0
_020CA3E0: .word ov4_020DAE2C
_020CA3E4: .word ov4_020DAE74
_020CA3E8: .word ov4_020DAEF4
_020CA3EC: .word ov4_020DAF44
_020CA3F0: .word ov4_020DAF94
_020CA3F4: .word ov4_020DAFB4
_020CA3F8: .word ov4_020DAFE8
_020CA3FC: .word ov4_020DB00C
_020CA400: .word ov4_020DB02C
_020CA404: .word ov4_020DB04C
_020CA408: .word ov4_020DB06C
_020CA40C: .word ov4_020DB08C
_020CA410: .word ov4_020DB0AC
_020CA414: .word ov4_020DB0CC
_020CA418: .word ov4_020DB0F4
_020CA41C:
	add r0, r4, r9, lsl #2
	ldr r10, [r0, #0x418]
	cmp r10, #0
	addlt r0, r8, #5
	movlt r0, r0, lsl #0x10
	movlt r8, r0, asr #0x10
	blt _020CA4CC
	mov r0, r4
	mov r1, r10
	mov r2, r9
	bl FUN_ov4_020c8ccc
	mov r0, #0x19
	add r1, r9, #0x25
	str r1, [sp]
	add r1, r9, #0x29
	str r1, [sp, #4]
	add r1, r9, #0x2d
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r5, [sp, #0x10]
	mla r0, r10, r0, r4
	str r6, [sp, #0x14]
	ldrb r2, [r0, #0xc7]
	mov r0, r4
	mov r1, r8
	mov r3, #5
	bl FUN_ov4_020c9464
	mov r0, r11
	add r1, r9, #0x25
	add r2, r9, #0x29
	add r3, r9, #0x2d
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	add r1, r4, r9
	strb r0, [r1, #0x4a0]
	ldr r1, [r4, #0x40]
	add r0, r8, #5
	add r1, r4, r1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	ldrb r1, [r1, #0x4a0]
	mov r0, r11
	mov r2, r6
	bl FUN_ov16_020f6e8c
_020CA4CC:
	add r9, r9, #1
_020CA4D0:
	cmp r9, #4
	blt _020CA41C
_020CA4D8:
	ldr r0, [r4, #0x6c]
	mov r2, #1
	cmp r0, #0
	movle r2, #0
	mov r0, r4
	mov r1, #0
	bl FUN_ov4_020c613c
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA4FC:
	ldr r1, _020CA3F0 ; =0x020DAF94
	mov r0, r4
	mov r2, #1
	mov r3, #0
	bl FUN_ov4_020c70b4
	ldr r1, _020CA3F4 ; =0x020DAFB4
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA524:
	mov r0, r4
	bl FUN_ov4_020c7fdc
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA534:
	mov r0, r4
	bl FUN_ov4_020c8204
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA544:
	ldr r1, _020CA3F8 ; =0x020DAFE8
	mov r0, r4
	bl FUN_ov4_020c0fc0
	ldr r0, _020CA38C ; =0x0209AEC0
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020CA630
	ldr r1, [r4, #0x660]
	cmp r1, #0
	beq _020CA608
	ldr r0, [r1, #0xc]
	mov r9, #0x46
	add r8, r1, r0
	mov r5, #0x44
	str r9, [sp]
	mov r6, #0x45
	mov r0, r4
	mov r2, r8
	mov r3, r5
	mov r1, #6
	str r6, [sp, #4]
	bl FUN_ov4_020c69b4
	mov r0, r11
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a0]
	mov r9, #0x49
	mov r5, #0x47
	add r2, r8, #0x1e0
	str r9, [sp]
	mov r6, #0x48
	mov r0, r4
	mov r1, #0xd
	mov r3, r5
	str r6, [sp, #4]
	bl FUN_ov4_020c69b4
	mov r0, r11
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a1]
_020CA608:
	ldr r1, [r4, #0x40]
	ldr r0, _020CA340 ; =0x0209A070
	add r1, r4, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	mov r0, r4
	bl FUN_ov4_020c6500
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA630:
	ldr r1, _020CA3FC ; =0x020DB00C
	mov r0, r4
	mov r2, #1
	mov r3, #0
	bl FUN_ov4_020c70b4
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA64C:
	ldr r0, [r4, #0x3c]
	cmp r0, #4
	addne sp, sp, #0x118
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, #0x11
	bl FUN_ov4_020c1c98
_020CA668:
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	mov r0, r4
	bne _020CA690
	bl FUN_ov4_020c83f8
	ldr r1, _020CA400 ; =0x020DB02C
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA690:
	bl FUN_ov4_020c8698
	ldr r1, _020CA404 ; =0x020DB04C
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA6A8:
	ldrb r0, [r4, #0x72]
	cmp r0, #0
	addne sp, sp, #0x118
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r4, #0x71]
	cmp r0, #0
	bne _020CA6D8
	ldr r1, _020CA408 ; =0x020DB06C
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA6D8:
	ldr r1, _020CA40C ; =0x020DB08C
	mov r0, r4
	bl FUN_ov4_020c0fc0
	ldr r1, _020CA410 ; =0x020DB0AC
	mov r0, r4
	mov r2, #1
	mov r3, #0
	bl FUN_ov4_020c70b4
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA700:
	ldr r1, _020CA414 ; =0x020DB0CC
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA714:
	ldr r1, _020CA418 ; =0x020DB0F4
	mov r0, r4
	bl FUN_ov4_020c0fc0
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA728:
	ldr r1, [r4, #0x66c]
	cmp r1, #0
	beq _020CA808
	ldr r0, [r1, #0xc]
	mov r9, #0x4c
	add r8, r1, r0
	mov r5, #0x4a
	str r9, [sp]
	mov r6, #0x4b
	mov r0, r4
	mov r2, r8
	mov r3, r5
	mov r1, #4
	str r6, [sp, #4]
	bl FUN_ov4_020cb53c
	mov r0, r11
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a6]
	mov r9, #0x4f
	mov r5, #0x4d
	str r9, [sp]
	mov r6, #0x4e
	str r6, [sp, #4]
	mov r0, r4
	mov r1, #9
	add r2, r8, #0x210
	mov r3, r5
	bl FUN_ov4_020cb53c
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r7, [sp]
	mov r0, r11
	bl FUN_ov16_020f6c8c
	add r2, r8, #0x420
	strb r0, [r4, #0x4a7]
	mov r8, #0x52
	mov r5, #0x50
	str r8, [sp]
	mov r6, #0x51
	mov r0, r4
	mov r1, #0xe
	mov r3, r5
	str r6, [sp, #4]
	bl FUN_ov4_020cb53c
	mov r0, r11
	mov r1, r5
	mov r2, r8
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a8]
_020CA808:
	ldr r1, [r4, #0x40]
	ldr r0, _020CA340 ; =0x0209A070
	add r1, r1, #6
	add r1, r4, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	mov r0, r4
	bl FUN_ov4_020c6500
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA834:
	ldr r1, [r4, #0x678]
	cmp r1, #0
	beq _020CA914
	ldr r0, [r1, #0xc]
	mov r9, #0x55
	add r8, r1, r0
	mov r5, #0x53
	str r9, [sp]
	mov r6, #0x54
	mov r0, r4
	mov r2, r8
	mov r3, r5
	mov r1, #4
	str r6, [sp, #4]
	bl FUN_ov4_020cb6a8
	mov r0, r11
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4a9]
	mov r9, #0x58
	mov r5, #0x56
	str r9, [sp]
	mov r6, #0x57
	str r6, [sp, #4]
	mov r0, r4
	mov r1, #9
	add r2, r8, #0x2d0
	mov r3, r5
	bl FUN_ov4_020cb6a8
	mov r1, r5
	mov r2, r9
	mov r3, r6
	str r7, [sp]
	mov r0, r11
	bl FUN_ov16_020f6c8c
	add r2, r8, #0x5a0
	strb r0, [r4, #0x4aa]
	mov r8, #0x5b
	mov r5, #0x59
	str r8, [sp]
	mov r6, #0x5a
	mov r0, r4
	mov r1, #0xe
	mov r3, r5
	str r6, [sp, #4]
	bl FUN_ov4_020cb6a8
	mov r0, r11
	mov r1, r5
	mov r2, r8
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f6c8c
	strb r0, [r4, #0x4ab]
_020CA914:
	ldr r1, [r4, #0x40]
	ldr r0, _020CA340 ; =0x0209A070
	add r1, r1, #9
	add r1, r4, r1
	ldrb r1, [r1, #0x4a0]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	mov r0, r4
	bl FUN_ov4_020c6500
	ldr r0, [r4, #0xc]
	cmp r0, #0x21
	addne sp, sp, #0x118
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020CA33C ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f64cc
	mov r0, r4
	bl FUN_ov4_020c6f1c
	mov r1, #6
	ldr r0, _020CA350 ; =0x04000050
	sub r2, r1, #0xe
	bl FUN_0200462c
_020CA96C:
	add sp, sp, #0x118
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov4_020c9748

	arm_func_start FUN_ov4_020ca974
FUN_ov4_020ca974: ; 0x020CA974
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r4, #1
	cmp r0, #0xb
	beq _020CA994
	cmp r0, #0xc
	bne _020CA9B4
_020CA994:
	mov r0, r6
	bl FUN_ov4_020c8ed8
	cmp r0, #0
	beq _020CA9B4
	mov r0, r6
	bl FUN_ov4_020c9040
	cmp r0, #0
	strneb r4, [r6, #0x38]
_020CA9B4:
	ldrb r0, [r6, #0x71]
	cmp r0, #0
	ldreq r0, [r6, #0xc]
	cmpeq r0, #0x11
	bne _020CA9E8
	ldr r5, _020CAB2C ; =0x0209AEC0
	mov r0, r5
	bl FUN_020467c0
	cmp r0, #0
	beq _020CA9E8
	mov r0, r5
	strb r4, [r6, #0x38]
	bl FUN_020467ac
_020CA9E8:
	ldrb r0, [r6, #0x71]
	cmp r0, #0
	bne _020CAAD0
	ldr r0, [r6, #0xc]
	cmp r0, #0x15
	cmpne r0, #0x16
	beq _020CAA0C
	cmp r0, #0x17
	bne _020CAAD0
_020CAA0C:
	ldr r0, _020CAB2C ; =0x0209AEC0
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020CAAD0
	ldr r7, _020CAB2C ; =0x0209AEC0
	mov r0, r7
	bl FUN_020467c0
	cmp r0, #0
	beq _020CAAD0
	mov r0, r7
	bl FUN_02046744
	mov r5, r0
	mov r0, r7
	bl FUN_020467a4
	mov lr, #0
	mov r8, #1
	mvn r2, #0
	mov r7, lr
	b _020CAABC
_020CAA64:
	tst r5, r4, lsl r8
	bne _020CAAB0
	tst r0, r4, lsl r8
	beq _020CAAB0
	mov r9, r7
	b _020CAAA8
_020CAA7C:
	mov r10, lr
	add r12, r6, r9, lsl #2
	b _020CAA9C
_020CAA88:
	add r3, r12, r10
	ldrsb r1, [r3, #0x5b]
	add r10, r10, #1
	cmp r8, r1
	streqb r2, [r3, #0x5b]
_020CAA9C:
	cmp r10, #4
	blt _020CAA88
	add r9, r9, #1
_020CAAA8:
	cmp r9, #2
	blt _020CAA7C
_020CAAB0:
	add r1, r8, #1
	mov r1, r1, lsl #0x10
	mov r8, r1, lsr #0x10
_020CAABC:
	cmp r8, #4
	blo _020CAA64
	ldr r0, _020CAB2C ; =0x0209AEC0
	strb r4, [r6, #0x38]
	bl FUN_020467ac
_020CAAD0:
	ldrb r0, [r6, #0x38]
	cmp r0, #0
	beq _020CAAF0
	mov r1, #0
	mov r0, r6
	strb r1, [r6, #0x38]
	bl FUN_ov4_020c9748
	b _020CAB20
_020CAAF0:
	ldrb r0, [r6, #0x240]
	cmp r0, #0
	ldrneb r0, [r6, #0x72]
	cmpne r0, #0
	beq _020CAB20
	ldr r0, [r6, #0x9c]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	adds r0, r1, r0, ror #30
	bne _020CAB20
	mov r0, r6
	bl FUN_ov4_020c6d04
_020CAB20:
	ldr r0, _020CAB30 ; =0x0209F5C0
	bl FUN_ov16_020f6274
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CAB2C: .word unk_0209AEC0
_020CAB30: .word unk_0209F5C0
	arm_func_end FUN_ov4_020ca974

	arm_func_start FUN_ov4_020cab34
FUN_ov4_020cab34: ; 0x020CAB34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	add r0, r0, #0xb4
	add r7, r0, #0x400
	mov r5, r8
	mov r6, #1
	mov r4, r8
_020CAB50:
	ldr r0, [r7]
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r0, r6
	moveq r0, r5
	cmp r0, #0
	ldrneb r0, [r7, #0x10]
	cmpne r0, #0
	beq _020CAB94
	strb r4, [r7, #0x10]
	ldrh r3, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	ldmib r7, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GX_LoadBG3Char
_020CAB94:
	add r8, r8, #1
	cmp r8, #7
	add r7, r7, #0x14
	blt _020CAB50
	ldr r0, _020CABB4 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CABB4: .word unk_0209F5C0
	arm_func_end FUN_ov4_020cab34

	arm_func_start FUN_ov4_020cabb8
FUN_ov4_020cabb8: ; 0x020CABB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	add r0, r4, #0xb4
	add r0, r0, #0x400
	mov r1, #0
	mov r2, #0x8c
	bl MI_CpuFill8
	add r0, r4, #0xb4
	add r0, r0, #0x400
	mov r1, #0x18
	mov r2, #0xc
	bl FUN_ov16_020f2fa8
	add r0, r4, #0xb4
	mov r9, #1
	add r8, r0, #0x400
	mov r7, #0xf
	mov r6, #2
	mov r5, #0x14
_020CAC00:
	mla r0, r9, r5, r8
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020f2fa8
	add r9, r9, #1
	cmp r9, #4
	ble _020CAC00
	add r0, r4, #0x118
	mov r5, #0x12
	mov r1, r5
	mov r2, r6
	add r0, r0, #0x400
	bl FUN_ov16_020f2fa8
	add r0, r4, #0x12c
	mov r1, r5
	mov r2, r6
	add r0, r0, #0x400
	bl FUN_ov16_020f2fa8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov4_020cabb8

	arm_func_start FUN_ov4_020cac4c
FUN_ov4_020cac4c: ; 0x020CAC4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	ldr r0, [r7, #4]
	mov r4, #1
	mov r5, #0
	bl FUN_0204204c
	cmp r0, #0x73
	bgt _020CACC8
	addge sp, sp, #0x10
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #0x19
	bgt _020CAC88
	beq _020CAE00
	b _020CADFC
_020CAC88:
	sub r1, r0, #0x5a
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _020CADFC
_020CAC98: ; jump table
	b _020CADD4 ; case 0
	b _020CADD4 ; case 1
	b _020CADD4 ; case 2
	b _020CADD4 ; case 3
	b _020CADFC ; case 4
	b _020CACE4 ; case 5
	b _020CADFC ; case 6
	b _020CADFC ; case 7
	b _020CADA8 ; case 8
	b _020CADFC ; case 9
	b _020CAD24 ; case 10
	b _020CAD60 ; case 11
_020CACC8:
	cmp r0, #0x75
	bgt _020CACD8
	beq _020CADCC
	b _020CADFC
_020CACD8:
	cmp r0, #0x7c
	beq _020CADCC
	b _020CADFC
_020CACE4:
	movs r0, #0
	beq _020CACF8
	ldr r1, _020CB128 ; =0x0209A460
	mov r2, #0x11
	bl STD_CopyLString
_020CACF8:
	ldr r0, _020CB128 ; =0x0209A460
	bl STD_GetStringLength
	cmp r0, #0
	ble _020CAD18
	mov r0, r7
	bl FUN_ov4_020c12a0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CAD18:
	mov r0, #3
_020CAD1C:
	str r0, [r7, #0x40]
	b _020CAE00
_020CAD24:
	ldr r0, _020CB12C ; =0x020A9C40
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_020460c0
	ldr r0, [sp, #8]
	cmp r0, #1
	mov r0, r7
	bne _020CAD50
	bl FUN_ov4_020c12e4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CAD50:
	mov r1, r5
	bl FUN_ov4_020c1218
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CAD60:
	ldr r0, _020CB12C ; =0x020A9C40
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020460c0
	ldr r0, [sp]
	cmp r0, #1
	bne _020CAD8C
	mov r0, r7
	bl FUN_ov4_020c148c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CAD8C:
	cmp r0, #0
	bne _020CADA4
	mov r0, r7
	bl FUN_ov4_020c12a0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CADA4:
	b _020CAD18
_020CADA8:
	mov r1, #4
	ldr r0, [r7, #4]
	str r1, [r7, #0x40]
	ldrb r0, [r0, #0x8a]
	cmp r0, #0
	beq _020CAE00
	mov r0, r7
	bl FUN_ov4_020c148c
	b _020CAE00
_020CADCC:
	mov r0, #5
	b _020CAD1C
_020CADD4:
	ldr r0, [r7, #4]
	bl FUN_ov4_020bf6dc
	cmp r0, #0
	beq _020CADF4
	mov r0, r7
	bl FUN_ov4_020c148c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CADF4:
	mov r0, #2
	b _020CAD1C
_020CADFC:
	str r5, [r7, #0x40]
_020CAE00:
	ldr r1, [r7, #0x40]
	ldr r0, _020CB130 ; =0x0209A454
	str r1, [r7, #0x48]
	strb r5, [r0, #0x80]
	bl FUN_ov16_020f47fc
	mov r6, #1
	mov r0, r6
	bl FUN_ov16_020f3f60
	ldr r0, _020CB134 ; =0x020A0640
	strb r5, [r0, #0x1a]
	strb r5, [r7, #0x71]
	ldrb r1, [r0, #0x87]
	cmp r1, #0
	ldreqb r0, [r0, #0x88]
	cmpeq r0, #0
	moveq r6, r5
	strb r6, [r7, #0x72]
	ldr r0, [r7, #4]
	mov r6, #0
	ldr r0, [r0, #0x90]
	mov r1, r6
	cmp r0, #2
	ldrne r0, _020CB134 ; =0x020A0640
	strneb r4, [r0, #0x1b]
	ldreq r0, _020CB134 ; =0x020A0640
	streqb r5, [r0, #0x1b]
	mov r0, #1
	mov r2, r0
	streqb r4, [r7, #0x71]
	bl GX_SetGraphicsMode
	ldr r0, _020CB138 ; =0x02099F30
	ldr r0, [r0]
	bl FUN_02051778
	ldr r0, _020CB13C ; =0x04000008
	ldr r1, _020CB140 ; =0x02099EB4
	ldrh r2, [r0]
	bic r2, r2, #3
	strh r2, [r0]
	ldrh r2, [r0, #2]
	bic r2, r2, #3
	orr r2, r2, #2
	strh r2, [r0, #2]
	ldrh r2, [r0, #4]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r0, #4]
	ldrh r2, [r0, #6]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r0, #6]
	ldr r0, [r1]
	bl FUN_ov16_0210e980
	ldr r0, _020CB144 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _020CB148 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	mov r0, r7
	mov r1, r6
	str r6, [r7, #8]
	bl FUN_ov4_020c1c98
	sub r8, r6, #1
	mov r0, r7
	strb r6, [r7, #0x20]
	strb r6, [r7, #0x21]
	strb r6, [r7, #0x22]
	str r6, [r7, #0x2c]
	str r6, [r7, #0x30]
	str r6, [r7, #0x34]
	str r6, [r7, #0x4c]
	str r6, [r7, #0x50]
	strb r6, [r7, #0x241]
	str r8, [r7, #0x24]
	str r8, [r7, #0x28]
	bl FUN_ov4_020c5a84
	mov r0, r7
	strb r6, [r7, #0x415]
	str r6, [r7, #0x10]
	str r6, [r7, #0x18]
	str r6, [r7, #0x1c]
	bl FUN_ov4_020c14d4
	str r6, [r7, #0x8c]
	str r8, [r7, #0xa8]
	str r6, [r7, #0x9c]
	str r6, [r7, #0xa4]
	strb r6, [r7, #0x39]
	str r6, [r7, #0x3c]
	strb r6, [r7, #0x240]
	b _020CAF8C
_020CAF68:
	mov r2, r5
	add r1, r7, r6, lsl #2
	b _020CAF80
_020CAF74:
	add r0, r1, r2
	strb r8, [r0, #0x5b]
	add r2, r2, #1
_020CAF80:
	cmp r2, #4
	blt _020CAF74
	add r6, r6, #1
_020CAF8C:
	cmp r6, #2
	blt _020CAF68
	mov r8, #0
	mov r6, #0x11
	mov r1, r8
	mov r2, r6
	add r0, r7, #0x4a0
	strb r8, [r7, #0x738]
	str r8, [r7, #0x73c]
	bl MI_CpuFill8
	ldr r0, _020CB14C ; =0x0209A070
	mov r1, r6
	bl FUN_ov16_020f6c20
	mov r1, r8
	add r0, r7, #0x244
	mov r2, #0x1d0
	bl MI_CpuFill8
	add r0, r7, #0x32c
	mov r6, #4
	add r0, r0, #0x400
	mov r1, r8
	mov r2, r6
	bl MI_CpuFill8
	add r0, r7, #0x730
	mov r1, r8
	mov r2, #8
	bl MI_CpuFill8
	mov r2, r6
	add r0, r7, #0x57
	mov r1, r8
	bl MI_CpuFill8
	bl FUN_ov16_020f067c
	cmp r0, #0
	movne r8, #1
	tst r8, #0xff
	strneb r4, [r7, #0x741]
	sub r1, r5, #1
	mov r0, r7
	strb r8, [r7, #0x740]
	streqb r5, [r7, #0x741]
	str r5, [r7, #0x48c]
	str r5, [r7, #0x490]
	str r1, [r7, #0x494]
	str r5, [r7, #0x498]
	strb r5, [r7, #0x49c]
	strb r5, [r7, #0x49d]
	bl FUN_ov4_020cabb8
	mov r0, r7
	bl FUN_ov4_020c5708
	ldr r0, [r7, #4]
	bl FUN_0204204c
	cmp r0, #0x7c
	bne _020CB0A0
	ldr r0, _020CB150 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	cmp r0, #0
	strneh r5, [r0, #0x28]
	ldr r1, [r7, #4]
	ldrb r0, [r1, #0x8c]
	cmp r0, #0
	strneb r5, [r1, #0x8c]
	bne _020CB090
	mov r0, r7
	bl FUN_ov4_020c141c
_020CB090:
	mov r0, #5
	add sp, sp, #0x10
	str r0, [r7, #0x40]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CB0A0:
	ldr r0, [r7, #4]
	bl FUN_0204204c
	cmp r0, #0x75
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #4]
	ldrb r1, [r0, #0x8c]
	cmp r1, #0
	beq _020CB0DC
	strb r5, [r0, #0x8c]
	ldr r1, [r7, #4]
	mov r0, r7
	strb r5, [r1, #0x8b]
	bl FUN_ov4_020c13ac
	b _020CB118
_020CB0DC:
	ldrb r1, [r0, #0x8b]
	cmp r1, #0
	beq _020CB118
	bl FUN_02041d9c
	ldr r1, _020CB154 ; =0x020DB144
	mov r0, r7
	bl FUN_ov4_020c0fc0
	ldr r0, [r7, #4]
	add r1, r7, #0x8c
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r7
	bl FUN_ov4_020c148c
_020CB118:
	mov r0, #5
	str r0, [r7, #0x40]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CB128: .word unk_0209A460
_020CB12C: .word unk_020A9C40
_020CB130: .word unk_0209A454
_020CB134: .word unk_020A0640
_020CB138: .word unk_02099F30
_020CB13C: .word 0x04000008
_020CB140: .word unk_02099EB4
_020CB144: .word unk_02099ED4
_020CB148: .word unk_02099F38
_020CB14C: .word unk_0209A070
_020CB150: .word unk_0209BA20
_020CB154: .word ov4_020DB144
	arm_func_end FUN_ov4_020cac4c

	arm_func_start FUN_ov4_020cb158
FUN_ov4_020cb158: ; 0x020CB158
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _020CB3CC
_020CB170: ; jump table
	b _020CB3CC ; case 0
	b _020CB194 ; case 1
	b _020CB3CC ; case 2
	b _020CB29C ; case 3
	b _020CB304 ; case 4
	b _020CB3CC ; case 5
	b _020CB224 ; case 6
	b _020CB1C4 ; case 7
	b _020CB1F0 ; case 8
_020CB194:
	add r0, r4, #0x540
	mov r1, #0x29
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020CB3CC
	mov r0, r4
	bl FUN_ov4_020c57a0
	mov r0, r4
	bl FUN_ov4_020c57fc
	mov r0, #2
_020CB1BC:
	str r0, [r4, #8]
	b _020CB3CC
_020CB1C4:
	add r0, r4, #0x540
	mov r1, #0x29
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020CB3CC
	mov r0, r4
	bl FUN_ov4_020cb810
	mov r0, r4
	bl FUN_ov4_020c57fc
	mov r1, #0x1f
	b _020CB218
_020CB1F0:
	add r0, r4, #0x540
	mov r1, #0x29
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020CB3CC
	mov r0, r4
	bl FUN_ov4_020cb86c
	mov r0, r4
	bl FUN_ov4_020c57fc
	mov r1, #0x20
_020CB218:
	mov r0, #2
	str r1, [r4, #0x10]
	b _020CB1BC
_020CB224:
	add r0, r4, #0xb4
	mov r5, #7
	mov r1, r5
	add r0, r0, #0x400
	bl FUN_ov16_020f2fe4
	ldr r0, _020CB3D8 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _020CB3DC ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	add r0, r4, #0x540
	mov r1, #0x29
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov4_020c5b2c
	mov r0, r4
	bl FUN_ov4_020cabb8
	mov r0, r4
	bl FUN_ov4_020c5708
	ldr r0, [r4, #0x1c]
	cmp r0, #0x20
	moveq r0, #8
	streq r0, [r4, #8]
	beq _020CB3CC
	cmp r0, #0x1f
	streq r5, [r4, #8]
	movne r0, #1
	strne r0, [r4, #8]
	b _020CB3CC
_020CB29C:
	bl FUN_ov4_020c58b8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x741]
	cmp r0, #0
	ldreqb r0, [r4, #0x72]
	cmpeq r0, #0
	mov r0, r4
	bne _020CB2C8
	mov r1, #1
	b _020CB2CC
_020CB2C8:
	mov r1, #5
_020CB2CC:
	bl FUN_ov4_020c1c98
	mov r0, r4
	bl FUN_ov4_020ca974
	ldr r0, _020CB3E0 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	mov r0, r4
	bl FUN_ov4_020c5908
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #4
	b _020CB1BC
_020CB304:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _020CB32C
	ldr r0, _020CB3E0 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f65a4
	cmp r0, #0
	bne _020CB32C
	mov r0, r4
	bl FUN_ov4_020c14c4
_020CB32C:
	ldr r0, [r4, #0xc]
	cmp r0, #8
	beq _020CB340
	cmp r0, #0xc
	bne _020CB35C
_020CB340:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	ble _020CB35C
	subs r0, r0, #1
	str r0, [r4, #0x6c]
	moveq r0, #1
	streqb r0, [r4, #0x38]
_020CB35C:
	mov r0, r4
	bl FUN_ov4_020c2eac
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	bne _020CB394
	add r0, r4, #0x540
	mov r1, #0x29
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020CB394
	mov r1, #2
	mov r0, r4
	str r1, [r4, #0x3c]
	bl FUN_ov4_020c6024
_020CB394:
	ldr r0, _020CB3E4 ; =0x0209AEC0
	bl FUN_020466c0
	str r0, [r4, #0x494]
	ldr r0, [r4, #4]
	add r1, r4, #0x8c
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov4_020ca974
	ldr r0, _020CB3E0 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
_020CB3CC:
	mov r0, r4
	bl FUN_ov4_020c5a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020CB3D8: .word unk_02099EB4
_020CB3DC: .word unk_02099ED4
_020CB3E0: .word unk_0209F5C0
_020CB3E4: .word unk_0209AEC0
	arm_func_end FUN_ov4_020cb158

	arm_func_start FUN_ov4_020cb3e8
FUN_ov4_020cb3e8: ; 0x020CB3E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020CB408
	cmp r1, #4
	beq _020CB420
	ldmfd sp!, {r4, pc}
_020CB408:
	bl FUN_ov4_020c5d58
	mov r1, #3
	mov r0, #1
	str r1, [r4, #8]
	strb r0, [r4, #0x38]
	ldmfd sp!, {r4, pc}
_020CB420:
	bl FUN_ov4_020c6088
	mov r0, r4
	bl FUN_ov4_020cab34
	mov r0, r4
	bl FUN_ov4_020c60e4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020cb3e8

	arm_func_start FUN_ov4_020cb438
FUN_ov4_020cb438: ; 0x020CB438
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, #0
	ldr r0, _020CB524 ; =0x0209F5C0
	mov r1, r6
	bl FUN_ov16_020f5af0
	ldr r0, _020CB528 ; =0x0209A070
	bl FUN_ov16_020f6c58
	mov r0, #2
	mov r1, #0x10
	bl FUN_ov16_020f1aec
	add r0, r4, #0xb4
	mov r5, #7
	add r0, r0, #0x400
	mov r1, r5
	bl FUN_ov16_020f2fe4
	ldr r0, _020CB52C ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _020CB530 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	add r0, r4, #0x540
	mov r1, #0x29
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov4_020c5b2c
	ldr r0, _020CB534 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	mov r0, #1
	mov r1, r6
	mov r2, r6
	bl GX_SetGraphicsMode
	add r3, r5, #0x4000001
	ldrh r0, [r3]
	add r2, r5, #0x4000003
	ldr r1, _020CB538 ; =0x0400000C
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	strh r0, [r1, #2]
	ldrb r0, [r4, #0x241]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f47fc
	mov r0, #4
	bl FUN_ov16_020f3f60
	ldmfd sp!, {r4, r5, r6, pc}
_020CB524: .word unk_0209F5C0
_020CB528: .word unk_0209A070
_020CB52C: .word unk_02099EB4
_020CB530: .word unk_02099ED4
_020CB534: .word unk_02099F38
_020CB538: .word 0x0400000C
	arm_func_end FUN_ov4_020cb438

	arm_func_start FUN_ov4_020cb53c
FUN_ov4_020cb53c: ; 0x020CB53C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	mov r10, r1
	mov r9, r2
	mov r8, #5
	mov r7, #0x16
	mov r6, #4
	mov r4, #0xb0
	mov r11, #0x20
	mov r0, #0xf
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r1, sp, #0x14
	stmib sp, {r1, r5}
	str r5, [sp, #0xc]
	ldr r0, _020CB6A4 ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r3, [sp, #0x54]
	add r9, r9, #0xb0
	cmp r3, #0
	beq _020CB618
	mov r0, #0xf
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r11, [sp, #0x22]
	str r9, [sp, #0x28]
	str r5, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020CB6A4 ; =0x0209F5C0
	mov r1, r5
	mov r2, #1
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r9, r9, #0xb0
_020CB618:
	mov r4, #0
	mov r8, #5
	mov r7, #0x16
	mov r3, #4
	mov r2, #0xb0
	mov r1, #0x20
	mov r0, #0xf
	strh r2, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r7, [sp, #0x18]
	strh r3, [sp, #0x1a]
	ldr r5, [sp, #0x50]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	str r9, [sp, #0x28]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r6, _020CB6A4 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	mov r2, #1
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB6A4: .word unk_0209F5C0
	arm_func_end FUN_ov4_020cb53c

	arm_func_start FUN_ov4_020cb6a8
FUN_ov4_020cb6a8: ; 0x020CB6A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r6, #0
	mov r10, r1
	mov r9, r2
	mov r8, #0x1e
	mov r7, #4
	mov r5, #0xf0
	mov r4, #0x20
	mov r11, #0xf
	mov r0, #1
	strh r0, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r4, [sp, #0x22]
	strb r11, [sp, #0x24]
	str r9, [sp, #0x28]
	str r6, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _020CB80C ; =0x0209F5C0
	mov r1, r6
	mov r2, #1
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r3, [sp, #0x54]
	add r9, r9, #0xf0
	cmp r3, #0
	beq _020CB784
	mov r0, #1
	strh r0, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r4, [sp, #0x22]
	strb r11, [sp, #0x24]
	str r9, [sp, #0x28]
	str r6, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _020CB80C ; =0x0209F5C0
	mov r1, r6
	mov r2, #1
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r9, r9, #0xf0
_020CB784:
	mov r4, #0
	mov r2, #1
	mov r8, #0x1e
	mov r7, #4
	mov r3, #0xf0
	mov r1, #0x20
	mov r0, #0xf
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r2, [sp, #0x14]
	strh r10, [sp, #0x16]
	strh r8, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r3, [sp, #0x20]
	str r9, [sp, #0x28]
	ldr r5, [sp, #0x50]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r4}
	ldr r6, _020CB80C ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f6084
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB80C: .word unk_0209F5C0
	arm_func_end FUN_ov4_020cb6a8

	arm_func_start FUN_ov4_020cb810
FUN_ov4_020cb810: ; 0x020CB810
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x540]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x72]
	ldr r7, _020CB864 ; =0x020D83CC
	cmp r1, #0
	ldrne r7, _020CB868 ; =0x020D80FC
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x540
	mov r4, #0xc
_020CB844:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _020CB844
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CB864: .word 0x020D83CC
_020CB868: .word 0x020D80FC
	arm_func_end FUN_ov4_020cb810

	arm_func_start FUN_ov4_020cb86c
FUN_ov4_020cb86c: ; 0x020CB86C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x540]
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x72]
	ldr r7, _020CB8C0 ; =0x020D84B4
	cmp r1, #0
	ldrne r7, _020CB8C4 ; =0x020D816C
	ldr r1, [r7]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x540
	mov r4, #0xc
_020CB8A0:
	ldmia r7, {r0, r2}
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r0, [r7, #8]!
	cmp r0, #0
	bne _020CB8A0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CB8C0: .word 0x020D84B4
_020CB8C4: .word 0x020D816C
	arm_func_end FUN_ov4_020cb86c

	arm_func_start FUN_ov4_020cb8c8
FUN_ov4_020cb8c8: ; 0x020CB8C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020cb8c8

	arm_func_start FUN_ov4_020cb8dc
FUN_ov4_020cb8dc: ; 0x020CB8DC
	mov r1, #1
	strb r1, [r0, #0x56]
	bx lr
	arm_func_end FUN_ov4_020cb8dc

	arm_func_start FUN_ov4_020cb8e8
FUN_ov4_020cb8e8: ; 0x020CB8E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CB944 ; =0x020A0B00
	and r1, r4, #0xff
	bl FUN_0207477c
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #8]
	cmp r0, #0
	mov r0, r5
	bne _020CB938
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020CB938:
	mov r1, #2
	bl FUN_ov61_0211a340 ; may be ov67
	ldmfd sp!, {r3, r4, r5, pc}
_020CB944: .word unk_020A0B00
	arm_func_end FUN_ov4_020cb8e8

	arm_func_start FUN_ov4_020cb948
FUN_ov4_020cb948: ; 0x020CB948
	ldr r12, _020CB954 ; =FUN_ov61_0211a340 ; may be ov67
	mov r1, #9
	bx r12
_020CB954: .word FUN_ov61_0211a340 ; may be ov67
	arm_func_end FUN_ov4_020cb948

	arm_func_start FUN_ov4_020cb958
FUN_ov4_020cb958: ; 0x020CB958
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #8
	str r1, [r4, #8]
	bl FUN_02041d9c
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02041f2c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020cb958

	arm_func_start FUN_ov4_020cb980
FUN_ov4_020cb980: ; 0x020CB980
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x200]
	cmp r2, #0
	bne _020CB9A8
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r4, pc}
_020CB9A8:
	ldr r0, _020CBA34 ; =0x0209A5D0
	mov r1, #0
	bl FUN_020628dc
	cmp r0, #0
	bgt _020CB9EC
	bge _020CBA28
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _020CB9F4
_020CB9D0: ; jump table
	b _020CBA10 ; case 0
	b _020CB9F4 ; case 1
	b _020CB9F4 ; case 2
	b _020CBA10 ; case 3
	b _020CBA10 ; case 4
	b _020CBA10 ; case 5
	b _020CBA10 ; case 6
_020CB9EC:
	cmp r0, #1
	beq _020CBA28
_020CB9F4:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
_020CBA08:
	bl FUN_0206ee5c
	b _020CBA08
_020CBA10:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r4, pc}
_020CBA28:
	mov r0, #6
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020CBA34: .word unk_0209A5D0
	arm_func_end FUN_ov4_020cb980

	arm_func_start FUN_ov4_020cba38
FUN_ov4_020cba38: ; 0x020CBA38
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	ldr r1, [r4, #0x200]
	cmp r1, #0
	bne _020CBA60
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CBA60:
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x1b
	bne _020CBA88
	ldr r1, [r4, #0x200]
	ldr r0, _020CBE34 ; =0x020A0640
	add r1, r1, #0x18c
	add r1, r1, #0x5800
	bl FUN_02063248
	b _020CBD9C
_020CBA88:
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x1f
	bne _020CBCAC
	ldr r0, [r4, #0x200]
	ldr r5, _020CBE38 ; =0x020A0B00
	add r8, r0, #0x480
	mov r3, r8
	mov r2, #0xa
_020CBAAC:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CBAAC
	ldr r0, _020CBE34 ; =0x020A0640
	ldr r2, _020CBE3C ; =0x020A0A40
	ldr r3, [r0, #0x4d4]
	add r1, r0, #0x400
	str r3, [r8, #0x14]
	ldr r5, [r0, #0x4d8]
	ldr r3, _020CBE40 ; =0x020A0B34
	str r5, [r8, #0x18]
	ldr r5, [r0, #0x4dc]
	add r7, r8, #0x34
	str r5, [r8, #0x1c]
	ldr r5, [r0, #0x4e0]
	ldr r6, _020CBE44 ; =0x020A0B3C
	str r5, [r8, #0x20]
	ldr r9, [r0, #0x4e4]
	add r5, r8, #0x3c
	str r9, [r8, #0x24]
	ldr r10, [r0, #0x4e8]
	add r9, r0, #0x500
	str r10, [r8, #0x28]
	ldrsb r1, [r1, #0xec]
	ldr lr, _020CBE48 ; =0x020A0B4C
	add r12, r8, #0x4c
	strb r1, [r8, #0x2c]
	ldrb r10, [r0, #0x4ed]
	mov r1, #0x10
	strb r10, [r8, #0x2d]
	ldrh r10, [r2, #0xee]
	strh r10, [r8, #0x2e]
	ldrh r10, [r2, #0xf0]
	strh r10, [r8, #0x30]
	ldrh r2, [r2, #0xf2]
	strh r2, [r8, #0x32]
	ldmia r3, {r2, r3}
	stmia r7, {r2, r3}
	ldmia r6, {r2, r3}
	stmia r5, {r2, r3}
	ldrb r2, [r0, #0x504]
	strb r2, [r8, #0x44]
	ldrb r2, [r0, #0x505]
	strb r2, [r8, #0x45]
	ldrsb r2, [r9, #6]
	strb r2, [r8, #0x46]
	ldrb r2, [r0, #0x507]
	strb r2, [r8, #0x47]
	ldrb r2, [r0, #0x508]
	strb r2, [r8, #0x48]
	ldrb r2, [r0, #0x509]
	strb r2, [r8, #0x49]
	ldrb r2, [r0, #0x50a]
	strb r2, [r8, #0x4a]
	ldrb r0, [r0, #0x50b]
	strb r0, [r8, #0x4b]
_020CBB9C:
	ldrb r2, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	subs r1, r1, #1
	strb r0, [r12, #1]
	strb r2, [r12], #2
	bne _020CBB9C
	ldr r5, _020CBE4C ; =0x020A0B6C
	add r3, r8, #0x6c
	mov r2, #0x10
_020CBBC4:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CBBC4
	ldr r1, _020CBE34 ; =0x020A0640
	ldr r0, _020CBE50 ; =0x020A0B40
	ldrb r6, [r1, #0x54c]
	ldrb r2, [r1, #0x54d]
	ldr r5, _020CBE54 ; =0x020A0BB4
	add r3, r8, #0xb4
	strb r6, [r8, #0x8c]
	strb r2, [r8, #0x8d]
	ldrh r6, [r0, #0x4e]
	mov r2, #0x40
	strh r6, [r8, #0x8e]
	ldr r6, [r1, #0x550]
	str r6, [r8, #0x90]
	ldr r6, [r1, #0x554]
	str r6, [r8, #0x94]
	ldr r6, [r1, #0x558]
	str r6, [r8, #0x98]
	ldr r6, [r1, #0x55c]
	str r6, [r8, #0x9c]
	ldr r6, [r1, #0x560]
	str r6, [r8, #0xa0]
	ldrb r6, [r1, #0x564]
	strb r6, [r8, #0xa4]
	ldrb r6, [r1, #0x565]
	strb r6, [r8, #0xa5]
	ldrb r6, [r1, #0x566]
	strb r6, [r8, #0xa6]
	ldrh r0, [r0, #0x68]
	strh r0, [r8, #0xa8]
	ldr r6, [r1, #0x56c]
	ldr r0, [r1, #0x570]
	str r6, [r8, #0xac]
	str r0, [r8, #0xb0]
_020CBC64:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CBC64
	ldr r1, _020CBE50 ; =0x020A0B40
	add r0, r8, #0x100
	ldrh r2, [r1, #0xf4]
	strh r2, [r0, #0x34]
	ldrh r3, [r1, #0xf6]
	ldrh r2, [r1, #0xf8]
	strh r3, [r0, #0x36]
	strh r2, [r0, #0x38]
	ldrh r1, [r1, #0xfa]
	strh r1, [r0, #0x3a]
	b _020CBD9C
_020CBCAC:
	ldr r1, [r4, #4]
	ldrb r0, [r1, #0x8a]
	cmp r0, #0
	beq _020CBCEC
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _020CBE58 ; =0x0209BA20
	bl FUN_0207249c
	ldr r1, [r4, #0x200]
	ldrh r2, [r0, #0x40]
	add r0, r1, #0x3b00
	mov r1, #0
	strh r2, [r0, #0xac]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x8a]
	b _020CBD9C
_020CBCEC:
	ldrb r0, [r1, #0x8b]
	cmp r0, #0
	beq _020CBD2C
	ldr r1, _020CBE5C ; =0x020A1640
	ldr r0, [r4, #0x200]
	ldrh r3, [r1, #0xe]
	add r0, r0, #0xf00
	mov r2, #0
	strh r3, [r0, #0xce]
	ldr r0, [r4, #0x200]
	ldrh r1, [r1, #0x10]
	add r0, r0, #0xf00
	strh r1, [r0, #0xd0]
	ldr r0, [r4, #4]
	strb r2, [r0, #0x8b]
	b _020CBD9C
_020CBD2C:
	ldr r1, [r4, #0x200]
	ldr r0, _020CBE58 ; =0x0209BA20
	add r1, r1, #0x80
	bl FUN_02072b54
	ldr r0, [r4, #0x200]
	ldr r3, _020CBE60 ; =0x020A0700
	add r5, r0, #0x80
	mov r2, #0x200
_020CBD4C:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020CBD4C
	ldr r0, [r4, #0x200]
	mov r5, #6
	add r1, r0, #0xd6
	ldr r0, _020CBE64 ; =0x020A1656
	mov r2, r5
	add r1, r1, #0xf00
	bl MI_CpuCopy8
	ldr r1, [r4, #0x200]
	ldr r0, _020CBE68 ; =0x020A165C
	add r1, r1, #0x3dc
	mov r2, r5
	add r1, r1, #0xc00
	bl MI_CpuCopy8
_020CBD9C:
	mov r5, #0
	ldr r2, [r4, #0x200]
	ldr r0, _020CBE6C ; =0x0209A5D0
	mov r1, r5
	bl FUN_020626f4
	cmp r0, #0
	bgt _020CBDF0
	bge _020CBE28
	sub r1, r5, #0x79
	cmp r0, r1
	bgt _020CBDF8
	sub r1, r5, #0x7d
	cmp r0, r1
	blt _020CBDF8
	beq _020CBDF8
	sub r1, r5, #0x7c
	cmp r0, r1
	subne r1, r5, #0x79
	cmpne r0, r1
	beq _020CBE10
	b _020CBDF8
_020CBDF0:
	cmp r0, #1
	beq _020CBE28
_020CBDF8:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov61_0211a340 ; may be ov67
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CBE10:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov61_0211a340 ; may be ov67
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CBE28:
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CBE34: .word unk_020A0640
_020CBE38: .word unk_020A0B00
_020CBE3C: .word unk_020A0A40
_020CBE40: .word unk_020A0B34
_020CBE44: .word unk_020A0B3C
_020CBE48: .word unk_020A0B4C
_020CBE4C: .word unk_020A0B6C
_020CBE50: .word unk_020A0B40
_020CBE54: .word unk_020A0BB4
_020CBE58: .word unk_0209BA20
_020CBE5C: .word unk_020A1640
_020CBE60: .word unk_020A0700
_020CBE64: .word unk_020A1656
_020CBE68: .word unk_020A165C
_020CBE6C: .word unk_0209A5D0
	arm_func_end FUN_ov4_020cba38

	arm_func_start FUN_ov4_020cbe70
FUN_ov4_020cbe70: ; 0x020CBE70
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CBEE8 ; =0x0209A5D0
	mov r5, r0
_020CBE7C:
	mov r0, r4
	bl FUN_02062924
	cmp r0, #0
	bgt _020CBEBC
	ldmgefd sp!, {r3, r4, r5, pc}
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _020CBEC4
_020CBEA0: ; jump table
	b _020CBEC4 ; case 0
	b _020CBEC4 ; case 1
	b _020CBEC4 ; case 2
	b _020CBEC4 ; case 3
	b _020CBEC4 ; case 4
	b _020CBEC4 ; case 5
	b _020CBEC4 ; case 6
_020CBEBC:
	cmp r0, #1
	beq _020CBEDC
_020CBEC4:
	mov r2, #7
	mov r0, r5
	mov r1, #5
	str r2, [r5, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r3, r4, r5, pc}
_020CBEDC:
	bl FUN_0206ee5c
	b _020CBE7C
	arm_func_end FUN_ov4_020cbe70

	arm_func_start FUN_ov4_020cbee4
FUN_ov4_020cbee4: ; 0x020CBEE4
	ldmfd sp!, {r3, r4, r5, pc}
_020CBEE8: .word unk_0209A5D0
	arm_func_end FUN_ov4_020cbee4

	arm_func_start FUN_ov4_020cbeec
FUN_ov4_020cbeec: ; 0x020CBEEC
	stmfd sp!, {r3, lr}
	bl FUN_ov24_0211d1b8 ; may be ov61 ov72
	ldr r0, _020CBF04 ; =0x0209A454
	mov r1, #4
	str r1, [r0, #0x24]
	ldmfd sp!, {r3, pc}
_020CBF04: .word unk_0209A454
	arm_func_end FUN_ov4_020cbeec

	arm_func_start FUN_ov4_020cbf08
FUN_ov4_020cbf08: ; 0x020CBF08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov61_0211bb60
	mov r0, r4
	bl FUN_ov61_0211b8bc ; may be ov63
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020cbf08

	arm_func_start FUN_ov4_020cbf20
FUN_ov4_020cbf20:
	ldr r12, _020CBF28 ; =FUN_ov61_0211d4dc
	bx r12
_020CBF28: .word FUN_ov61_0211d4dc
	arm_func_end FUN_ov4_020cbf20

	arm_func_start FUN_ov4_020cbf2c
FUN_ov4_020cbf2c:
	ldr r12, _020CBF34 ; =FUN_ov61_0211d55c
	bx r12
_020CBF34: .word FUN_ov61_0211d55c
	arm_func_end FUN_ov4_020cbf2c

	arm_func_start FUN_ov4_020cbf38
FUN_ov4_020cbf38: ; 0x020CBF38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov45_0211d9b4 ; may be ov61
	mov r0, r10
	bl FUN_ov61_0211b1b0
	mov r0, r10
	bl FUN_ov61_0211b150 ; may be ov67
	mov r0, r10
	bl FUN_ov39_0211b220 ; may be ov61 ov84 ov91
	mov r0, #2
	str r0, [r10, #8]
_020CBF64:
	bl FUN_0206ee5c
	ldr r0, [r10, #8]
	cmp r0, #3
	bne _020CBF64
	mov r0, r10
	bl FUN_ov39_0211b9cc ; may be ov61
	mov r0, r10
	mov r1, #1
	bl FUN_ov31_0211a2d0 ; may be ov39 ov61
	mov r1, #6
	mov r0, r10
	str r1, [r10, #8]
	bl FUN_ov21_0211d060 ; may be ov61
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	bl FUN_ov16_020f2cdc
	mov r6, #3
	mov r8, #1
	mov r7, #4
	mov r9, r6
	mov r5, r6
	mov r4, r8
	mov r11, r7
_020CBFC8:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	mov r0, r10
	bne _020CC008
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r8
	str r9, [r10, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	mov r0, r7
	b _020CC048
_020CC008:
	mov r1, r6
	bl FUN_ov60_0211d840 ; may be ov61
	bl FUN_0206ee5c
	mov r0, r10
	bl FUN_ov4_020cbe70
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	bne _020CC050
	mov r0, r10
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r4
	str r5, [r10, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	mov r0, r11
_020CC048:
	bl FUN_0206eed0
	b _020CBFC8
_020CC050:
	mov r0, r10
	mov r1, #0
	bl FUN_ov61_0211d730
	mov r0, r10
	mov r1, #4
	bl FUN_ov61_0211d864
	mov r0, r10
	bl FUN_ov50_0211a688 ; may be ov61
	cmp r0, #0
	beq _020CC080
	mov r0, r10
	bl FUN_ov21_0211d060 ; may be ov61
_020CC080:
	mov r0, #4
	bl FUN_0206eed0
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x90]
	blx r1
_020CC098:
	bl FUN_0206ee5c
	b _020CC098
	arm_func_end FUN_ov4_020cbf38

	arm_func_start FUN_ov4_020cc0a0
FUN_ov4_020cc0a0: ; 0x020CC0A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020cc0a0

	arm_func_start FUN_ov4_020cc0b4
FUN_ov4_020cc0b4: ; 0x020CC0B4
	ldr r2, _020CC0C4 ; =0x020DB448
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_020CC0C4: .word ov4_020DB448
	arm_func_end FUN_ov4_020cc0b4

	arm_func_start FUN_ov4_020cc0c8
FUN_ov4_020cc0c8: ; 0x020CC0C8
	bx lr
	arm_func_end FUN_ov4_020cc0c8

	arm_func_start FUN_ov4_020cc0cc
FUN_ov4_020cc0cc: ; 0x020CC0CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020cc0cc

	arm_func_start FUN_ov4_020cc0e0
FUN_ov4_020cc0e0: ; 0x020CC0E0
	ldr r3, [r0, #0x24]
	strh r2, [r0, #0xa]
	strh r1, [r0, #8]
	cmp r3, #0
	ldrneh r1, [r0, #0xa]
	orrne r1, r1, #0x4000
	strneh r1, [r0, #0xa]
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	ldrneh r1, [r0, #8]
	orrne r1, r1, #0x4000
	strneh r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov4_020cc0e0

	arm_func_start FUN_ov4_020cc114
FUN_ov4_020cc114: ; 0x020CC114
	stmfd sp!, {r3, lr}
	mov r2, #0
	str r2, [r0, #0x28]
	str r2, [r0, #0x2c]
	ldrh r2, [r1, #4]
	cmp r2, #1
	bne _020CC198
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0xe]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0x10]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x12]
	ldrh r1, [r1, #6]
	cmp r1, #0
	ldreq r1, [r0, #0x24]
	cmpeq r1, #0
	bne _020CC18C
	ldrh lr, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	ldrh r3, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	mov r1, #1
	strh lr, [r0, #0x14]
	strh r12, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r2, [r0, #0x1a]
	str r1, [r0, #0x28]
_020CC18C:
	mov r1, #1
	str r1, [r0, #0x24]
	ldmfd sp!, {r3, pc}
_020CC198:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020CC1CC
	ldrh lr, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	ldrh r3, [r0, #0x10]
	ldrh r2, [r0, #0x12]
	mov r1, #1
	strh lr, [r0, #0x1c]
	strh r12, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r2, [r0, #0x22]
	str r1, [r0, #0x2c]
_020CC1CC:
	mov r1, #0
	str r1, [r0, #0x24]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020cc114

	arm_func_start FUN_ov4_020cc1d8
FUN_ov4_020cc1d8: ; 0x020CC1D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	ldr lr, [sp, #0x14]
	cmp r1, #4
	mov r12, #0
	addls pc, pc, r1, lsl #2
	b _020CC2F8
_020CC1F4: ; jump table
	b _020CC208 ; case 0
	b _020CC22C ; case 1
	b _020CC244 ; case 2
	b _020CC268 ; case 3
	b _020CC2AC ; case 4
_020CC208:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020CC2F8
	ldrh r1, [r0, #0xc]
	cmp r1, r2
	ldrgeh r0, [r0, #0xe]
	cmpge r0, r3
	blt _020CC2F8
	b _020CC2EC
_020CC22C:
	ldrh r1, [r0, #0x14]
	cmp r1, r2
	ldrgeh r0, [r0, #0x16]
	cmpge r0, r3
	blt _020CC2F8
	b _020CC2EC
_020CC244:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _020CC2F8
	ldrh r1, [r0, #0x1c]
	cmp r1, r2
	ldrgeh r0, [r0, #0x1e]
	cmpge r0, r3
	blt _020CC2F8
	b _020CC2EC
_020CC268:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020CC2F8
	ldrh r5, [r0, #0x14]
	cmp r5, r2
	ldrgeh r1, [r0, #0x16]
	cmpge r1, r3
	blt _020CC2F8
	cmp r5, r4
	cmple r1, lr
	bgt _020CC2F8
	ldrh r1, [r0, #0xc]
	cmp r1, r2
	ldrgeh r0, [r0, #0xe]
	cmpge r0, r3
	blt _020CC2F8
	b _020CC2EC
_020CC2AC:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _020CC2F8
	ldrh r5, [r0, #0x14]
	cmp r5, r2
	ldrgeh r1, [r0, #0x16]
	cmpge r1, r3
	blt _020CC2F8
	cmp r5, r4
	cmple r1, lr
	bgt _020CC2F8
	ldrh r1, [r0, #0x1c]
	cmp r1, r2
	ldrgeh r0, [r0, #0x1e]
	cmpge r0, r3
	blt _020CC2F8
_020CC2EC:
	cmp r1, r4
	cmple r0, lr
	movle r12, #1
_020CC2F8:
	mov r0, r12
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov4_020cc1d8

	arm_func_start FUN_ov4_020cc300
FUN_ov4_020cc300: ; 0x020CC300
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r2
	mov r0, r1
	mov r1, r3
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f3d08
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _020CC36C ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	stmib sp, {r1, r3}
	str r2, [sp, #0xc]
	mov r2, r4
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_020CC36C: .word unk_02099F38
	arm_func_end FUN_ov4_020cc300

	arm_func_start FUN_ov4_020cc370
FUN_ov4_020cc370: ; 0x020CC370
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r0, _020CC3F0 ; =0x0209BA20
	mov r1, r6
	bl FUN_0205107c
	add r2, r7, #0x88
	mov r5, r0
	add r0, r2, #0x800
	mov r1, r6
	mov r2, #0x40
	bl MI_CpuFill8
	str r6, [r7, #0x8c8]
	str r6, [r7, #0x8cc]
	mov r4, r6
_020CC3AC:
	mov r0, r5
	mov r1, r6
	bl FUN_0204fbe8
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020CC3E0
	ldr r1, [r7, #0x8c8]
	add r1, r7, r1, lsl #2
	str r0, [r1, #0x888]
	ldr r0, [r7, #0x8c8]
	add r0, r0, #1
	str r0, [r7, #0x8c8]
_020CC3E0:
	add r6, r6, #1
	cmp r6, #0x10
	blt _020CC3AC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CC3F0: .word unk_0209BA20
	arm_func_end FUN_ov4_020cc370

	arm_func_start FUN_ov4_020cc3f4
FUN_ov4_020cc3f4: ; 0x020CC3F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r7, #0
	mov r8, r0
	mov r4, r7
	mov r10, r7
	ldr r9, _020CC490 ; =0x02099EC0
	b _020CC480
_020CC414:
	add r0, r8, r7, lsl #2
	ldr r6, [r0, #0x888]
	cmp r6, #0
	beq _020CC47C
	ldr r0, [r8, #0x680]
	mov r1, r6
	bl FUN_ov16_020f0bcc
	ldr r1, [r8, #0x680]
	mov r5, r0
	ldrh r2, [r1, #0x28]
	mov r3, r5
	cmp r2, #0
	ldreqh r2, [r1, #0x26]
	ldrh r1, [r6, #0x4e]
	str r4, [sp]
	ldr r0, [r9]
	bl FUN_02056ed4
	ldr r0, [r8, #0x680]
	ldrh r1, [r6, #0x4e]
	ldrh r3, [r0, #0x28]
	mov r2, r10
	cmp r3, #0
	ldreqh r3, [r0, #0x26]
	stmia sp, {r5, r10}
	ldr r0, [r9]
	bl FUN_02056af0
_020CC47C:
	add r7, r7, #1
_020CC480:
	cmp r7, #0x10
	blt _020CC414
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CC490: .word unk_02099EC0
	arm_func_end FUN_ov4_020cc3f4

	arm_func_start FUN_ov4_020cc494
FUN_ov4_020cc494: ; 0x020CC494
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, #0
	mov r10, r0
	mov r8, r9
	mov r6, #1
	mov r11, #4
	ldr r5, _020CC544 ; =0x02099EC0
	ldr r4, _020CC548 ; =0x02099F58
	b _020CC534
_020CC4BC:
	add r0, r10, r9, lsl #2
	ldr r0, [r0, #0x888]
	cmp r0, #0
	beq _020CC530
	ldrh r1, [r0, #0x4e]
	ldr r0, [r5]
	mov r2, r8
	bl FUN_02056a88
	mov r1, r0
	cmp r1, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl FUN_020571e0
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp]
	str r6, [sp, #4]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r11
	mov r3, #3
	bl FUN_ov16_0211702c
	ldr r0, [r4]
	mov r1, r7
	mov r2, #2
	mov r3, r6
	bl FUN_ov16_02117598
_020CC530:
	add r9, r9, #1
_020CC534:
	cmp r9, #0x10
	blt _020CC4BC
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CC544: .word unk_02099EC0
_020CC548: .word unk_02099F58
	arm_func_end FUN_ov4_020cc494

	arm_func_start FUN_ov4_020cc54c
FUN_ov4_020cc54c: ; 0x020CC54C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	mov r6, r3
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x888]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020CC5D4 ; =0x02099EC0
	ldrh r1, [r0, #0x4e]
	ldr r0, [r4]
	mov r2, #0
	bl FUN_02056a88
	mov r1, r0
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	bl FUN_020571e0
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020CC5D8 ; =0x02099F58
	mov r1, r5
	ldr r0, [r4]
	mov r2, #0x230
	bl FUN_ov16_021174ac
	mov r2, r7, lsl #0x10
	mov r3, r6, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117514
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CC5D4: .word unk_02099EC0
_020CC5D8: .word unk_02099F58
	arm_func_end FUN_ov4_020cc54c

	arm_func_start FUN_ov4_020cc5dc
FUN_ov4_020cc5dc: ; 0x020CC5DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1d4
	mov r10, r0
	ldr r0, [r10, #4]
	mov r6, #0
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f3f60
	add r0, r10, #0xc
	mov r4, #8
	ldr r2, _020CD148 ; =0x020A0640
	mov r3, #1
	strb r3, [r2, #0xad]
	str r6, [r10, #0x30]
	str r3, [r10, #0x34]
	str r6, [r10, #0x38]
	str r6, [r10, #0x3c]
	str r6, [r10, #0x40]
	str r6, [r10, #0x44]
	str r6, [r10, #0x48]
	strh r6, [r10, #8]
	strh r6, [r10, #0xa]
	str r6, [r10, #0x24]
	str r6, [r10, #0x28]
	str r6, [r10, #0x2c]
	strb r6, [r10, #0x62c]
	strb r6, [r10, #0x62d]
	str r3, [r10, #0x630]
	strb r6, [r10, #0x63c]
	str r6, [r10, #0x640]
	strb r6, [r10, #0x644]
	str r3, [r10, #0x648]
	strb r6, [r10, #0x64c]
	strb r6, [r10, #0x64d]
	strb r6, [r10, #0x64e]
	str r6, [r10, #0x650]
	str r6, [r10, #0x654]
	strb r6, [r10, #0x658]
	str r6, [r10, #0x65c]
	strb r6, [r10, #0x660]
	strb r6, [r10, #0x661]
	str r6, [r10, #0x664]
	strb r6, [r10, #0x668]
	str r6, [r10, #0xa1c]
	strb r6, [r10, #0xa20]
	str r6, [r10, #0x994]
	strb r6, [r10, #0x770]
	add r1, r0, #0x800
	str r1, [r10, #0x7dc]
	add r1, r10, #0x600
	strh r6, [r1, #0x38]
	strh r6, [r1, #0x34]
	strh r6, [r1, #0x36]
	mov r7, #0x40
	strh r7, [r1, #0x3a]
	add r1, r10, #0x700
	strh r6, [r1, #0x6c]
	strh r6, [r1, #0x6e]
	ldr r2, [r2, #0x4d8]
	add r1, r10, #0x800
	str r2, [r10, #0x670]
	strh r6, [r1, #0x84]
	str r6, [r10, #0x96c]
	str r6, [r10, #0x970]
	str r6, [r10, #0x974]
	strb r6, [r10, #0x978]
	str r6, [r10, #0x97c]
	str r6, [r10, #0x980]
	str r6, [r10, #0x984]
	strb r3, [r10, #0x678]
	strb r3, [r10, #0x67b]
	mov r1, r6
	strb r6, [r10, #0x998]
	strb r6, [r10, #0x679]
	strb r6, [r10, #0x67a]
	strb r6, [r10, #0xa14]
	strb r6, [r10, #0xa15]
	strb r6, [r10, #0xa16]
	strb r6, [r10, #0xa17]
	str r6, [r10, #0xa18]
	mov r2, r4
	bl MI_CpuFill8
	add r0, r10, #0x14
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	mov r2, r4
	add r0, r10, #0x1c
	mov r1, r6
	bl MI_CpuFill8
	add r0, r10, #0x4c
	mov r1, r6
	mov r5, #0x24
	mov r2, r5
	bl MI_CpuFill8
	add r0, r10, #0x70
	mov r1, r6
	mov r4, #0xc
	mov r2, r4
	bl MI_CpuFill8
	add r0, r10, #0x284
	add r0, r0, #0x400
	mov r1, r6
	mov r2, #0x1f
	bl MI_CpuFill8
	add r0, r10, #0x2a4
	add r0, r0, #0x400
	mov r1, r6
	mov r2, #0xc8
	bl MI_CpuFill8
	mov r2, r7
	add r0, r10, #0x88
	add r0, r0, #0x800
	mov r1, r6
	bl MI_CpuFill8
	add r0, r10, #0xd4
	add r0, r0, #0x800
	mov r1, r6
	mov r2, #0x98
	bl MI_CpuFill8
	add r0, r10, #0x9a0
	mov r1, r6
	mov r7, #0x74
	mov r2, r7
	bl MI_CpuFill8
	add r0, r10, #0x78
	mov r1, r6
	mov r2, r4
	add r0, r0, #0x800
	bl MI_CpuFill8
	mov r1, r6
	add r0, r10, #0x188
	add r2, r7, #0x3d0
	bl MI_CpuFill8
	bl FUN_ov16_020f081c
	str r0, [r10, #0x67c]
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _020CD14C ; =0x0209BA20
	bl FUN_0207249c
	str r0, [r10, #0x680]
	mov r2, r5
	add r0, r10, #0x4c
	mov r1, r6
	bl MI_CpuFill8
	ldr r0, _020CD150 ; =0x020DB5F4
	add r1, r10, #0x4c
	bl FUN_ov16_020f316c
	ldr r0, _020CD154 ; =0x020DB60C
	add r1, r10, #0x58
	bl FUN_ov16_020f316c
	ldr r0, _020CD158 ; =0x020DB624
	add r1, r10, #0x64
	bl FUN_ov16_020f316c
	mov r1, r6
	mov r2, r4
	add r0, r10, #0x70
	bl MI_CpuFill8
	ldr r0, _020CD15C ; =0x020DB63C
	add r1, r10, #0x70
	bl FUN_ov16_020f316c
	ldr r7, _020CD160 ; =0x020DB4B4
	add r5, sp, #0x134
	mov r4, #0xa
_020CC878:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CC878
	ldr r4, _020CD164 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_ov16_021123b4
	ldr r3, _020CD168 ; =0x0209A250
	str r6, [sp, #0x20]
	ldr r0, [r3]
	ldr r1, _020CD16C ; =0x020DB65C
	cmp r0, #0
	beq _020CC8CC
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x20
	bl FUN_0202eff0
_020CC8CC:
	mov r9, #0
	add r8, sp, #0x74
	ldr r7, _020CD170 ; =0x020DB678
	add r5, sp, #0x134
	ldr r11, _020CD174 ; =0x020DB680
	b _020CC92C
_020CC8E4:
	ldr r2, [r5, r9, lsl #2]
	mov r0, r8
	mov r1, r7
	bl FUN_02023c40
	ldr r3, [sp, #0x20]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	bl FUN_ov4_020cc300
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x7c]
	movs r1, r0
	beq _020CC928
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_020CC928:
	add r9, r9, #1
_020CC92C:
	cmp r9, #0x28
	blt _020CC8E4
	ldr r1, [sp, #0x20]
	ldr r0, _020CD168 ; =0x0209A250
	bl FUN_0202e1c0
	ldr r4, _020CD164 ; =0x02099F38
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl FUN_ov16_02112724
	str r0, [r10, #0x11c]
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl FUN_ov16_02112724
	str r0, [r10, #0x120]
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl FUN_ov16_02112724
	str r0, [r10, #0x124]
	ldr r0, [r4]
	mov r1, #0x20
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x128]
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x12c]
	mov r7, #2
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x130]
	ldr r0, [r4]
	mov r1, #0x19
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x134]
	mov r5, #4
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x138]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x13c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x140]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x144]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x148]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x14c]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02112724
	mov r9, #0
	str r0, [r10, #0x150]
	ldr r0, [r4]
	ldr r1, [r10, #0x11c]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x120]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x124]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x128]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x12c]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x130]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x134]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x138]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x13c]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x140]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x144]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x148]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x14c]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r0, [r4]
	ldr r1, [r10, #0x150]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	ldr r5, _020CD178 ; =0x020D8824
	mov r11, #0xe
	b _020CCC28
_020CCB8C:
	mov r0, #0xe
	mul r0, r9, r0
	add r1, r5, r0
	ldrsh r2, [r5, r0]
	ldrsh r0, [r1, #4]
	ldrsh r8, [r1, #2]
	add r1, r10, r2, lsl #2
	add r0, r10, r0, lsl #2
	ldr r2, [r0, #0x7c]
	ldr r7, [r1, #0x11c]
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021137dc
	mov r3, #0xe
	mla r3, r9, r3, r5
	str r6, [sp]
	ldrsh r3, [r3, #6]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_0211401c
	mov r3, #0xe
	mla r3, r9, r3, r5
	ldrh r3, [r3, #8]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021139bc
	mla r3, r9, r11, r5
	ldrsh r0, [r3, #0xc]
	ldrsh r3, [r3, #0xa]
	mov r1, r7
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r8
	bl FUN_ov16_02113b78
	add r9, r9, #1
_020CCC28:
	cmp r9, #0x55
	blt _020CCB8C
	ldr r4, _020CD164 ; =0x02099F38
	ldr r7, _020CD17C ; =0x020D859C
	add r3, sp, #0x38
	mov r5, #0xc
	mov r2, #0xf
_020CCC44:
	ldrh r0, [r7, #2]
	ldrh r1, [r7], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020CCC44
	mov r9, #0
	add r8, sp, #0x38
	add r7, sp, #0x18
	add r11, sp, #0x1c
	b _020CCCE4
_020CCC70:
	mla r0, r9, r5, r8
	ldrsh r2, [r0, #4]
	ldrsh r1, [r0, #2]
	ldr r0, [r4]
	bl FUN_02059630
	add r2, r10, r9, lsl #2
	mov r1, r0
	str r0, [r2, #0x154]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x154]
	ldr r0, [r4]
	str r6, [sp, #0x18]
	mov r2, r7
	mov r3, r11
	bl FUN_0205935c
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x154]
	ldr r0, [r4]
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	add r9, r9, #1
_020CCCE4:
	cmp r9, #5
	blt _020CCC70
	ldr r0, [r4]
	mov r1, #5
	mov r2, #1
	mov r11, #0xc
	bl FUN_ov16_02112724
	mov r9, #0
	mov r1, r0
	str r1, [r10, #0x168]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	add r5, sp, #0x38
	b _020CCDC0
_020CCD24:
	mov r0, #0xc
	mul r1, r9, r0
	add r0, r10, r9, lsl #2
	ldr r2, [r0, #0x154]
	ldrsh r8, [r5, r1]
	ldr r7, [r10, #0x168]
	and r3, r2, #0xff
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02113d88
	mov r3, #0xc
	mla r3, r9, r3, r5
	ldrh r3, [r3, #0xa]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02113b78
	mla r3, r9, r11, r5
	ldrsh r0, [r3, #8]
	ldrsh r3, [r3, #6]
	mov r1, r7
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r8
	bl FUN_ov16_02113d08
	add r9, r9, #1
_020CCDC0:
	cmp r9, #5
	blt _020CCD24
	ldr r0, [r4]
	mov r1, #4
	mov r2, #1
	bl FUN_ov16_02112724
	mov r9, #0
	mov r1, r0
	str r1, [r10, #0x184]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_02114248
	mov r8, #0x244
	mov r5, #0x40
	b _020CCE64
_020CCE00:
	ldr r7, [r10, #0x184]
	mov r3, r6
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #1
	bl FUN_ov16_02113d88
	ldr r0, [r4]
	mov r1, r7
	mov r3, r8
	add r2, r9, #1
	bl FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r9, #1
	mov r3, r6
	bl FUN_ov16_02113b78
	mov r1, r7
	str r5, [sp]
	ldr r0, [r4]
	add r2, r9, #1
	mov r3, r5
	bl FUN_ov16_02113d08
	add r9, r9, #1
_020CCE64:
	cmp r9, #4
	blt _020CCE00
	ldr r7, _020CD180 ; =0x020DB554
	add r5, sp, #0x94
	mov r4, #0xa
_020CCE78:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CCE78
	mov r7, #0x1c
	mov r5, #0
	ldr r4, _020CD184 ; =0x020D85D8
	add r9, sp, #0x94
	mov r8, r7
	b _020CCF50
_020CCEA0:
	mov r0, #0x1c
	mul r1, r5, r0
	add r0, r4, r1
	ldrsh r3, [r0, #6]
	ldrsh r2, [r0, #8]
	ldrsh r11, [r0, #0xa]
	str r3, [sp]
	str r2, [sp, #4]
	str r11, [sp, #8]
	ldrsh r3, [r0, #0xc]
	ldrsh r2, [r0, #2]
	ldrsh r11, [r0, #0xe]
	str r3, [sp, #0xc]
	ldrsh r3, [r0, #0x10]
	str r11, [sp, #0x10]
	add r2, r10, r2, lsl #2
	str r3, [sp, #0x14]
	ldrsh r3, [r0, #4]
	ldrsh r1, [r4, r1]
	ldr r2, [r2, #0x11c]
	mov r0, r10
	bl FUN_ov4_020d59f8
	mul r0, r5, r7
	add r2, r4, r0
	ldrsh r1, [r4, r0]
	ldrsh r0, [r2, #0x16]
	ldrsh r3, [r2, #0x14]
	ldrsh r12, [r2, #0x18]
	ldrsh r11, [r2, #0x1a]
	str r0, [sp]
	add r12, r3, r12
	ldrsh r2, [r2, #0x12]
	str r12, [sp, #4]
	add r0, r0, r11
	str r0, [sp, #8]
	mov r0, r10
	bl FUN_ov4_020d5a58
	mul r1, r5, r8
	add r2, r9, r5, lsl #3
	ldrsh r1, [r4, r1]
	mov r0, r10
	ldmia r2, {r2, r3}
	bl FUN_ov4_020d5a88
	add r5, r5, #1
_020CCF50:
	cmp r5, #0x15
	blt _020CCEA0
	mov r0, r10
	bl FUN_ov4_020cc370
	ldr r0, _020CD188 ; =0x02099F58
	ldr r0, [r0]
	bl FUN_ov16_0211661c
	ldr r4, _020CD18C ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_02056828
	mov r0, #0x4000
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6400
	str r0, [sp, #8]
	mov r5, #0x10
	ldr r0, [r4]
	mov r1, #0x94000
	mov r2, #0x11
	mov r3, r5
	bl FUN_020568c4
	ldr r0, [r4]
	bl FUN_02057be4
	ldr r0, _020CD168 ; =0x0209A250
	ldr r1, _020CD190 ; =0x0000FFC0
	mov r2, r5
	mov r3, #1
	bl FUN_0202de58
	str r0, [r10, #0x99c]
	cmp r0, #0
	bne _020CCFD4
	bl OS_Terminate
_020CCFD4:
	ldr r0, _020CD168 ; =0x0209A250
	mov r1, #0x10
	bl FUN_0202de44
	str r0, [r10, #0x988]
	cmp r0, #0
	bne _020CCFF0
	bl OS_Terminate
_020CCFF0:
	ldr r0, _020CD194 ; =0x02099F44
	ldr r1, [r10, #0x988]
	ldr r0, [r0]
	mov r2, #8
	bl FUN_ov131_02140e38
	ldr r0, _020CD168 ; =0x0209A250
	mov r1, #0x40
	bl FUN_0202de44
	str r0, [r10, #0x98c]
	cmp r0, #0
	bne _020CD020
	bl OS_Terminate
_020CD020:
	ldr r0, [r10, #0x98c]
	mov r1, r6
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r0, _020CD194 ; =0x02099F44
	mov r4, #0x20
	ldr r0, [r0]
	ldr r1, [r10, #0x98c]
	mov r2, r4
	bl FUN_ov131_02140fac
	add r2, r10, #0x500
	sub r3, r4, #0x21
	add r0, r10, #0x1cc
	add r0, r0, #0x400
	mov r1, r6
	add r0, r0, #0x1e
	strh r6, [r2, #0xd0]
	strh r6, [r2, #0xd2]
	strh r6, [r2, #0xd4]
	strh r3, [r2, #0xd6]
	mov r2, r4
	str r6, [r10, #0x5cc]
	str r3, [r10, #0x5e4]
	strb r6, [r10, #0x5d8]
	strb r6, [r10, #0x5d9]
	strb r6, [r10, #0x5db]
	str r6, [r10, #0x5dc]
	strb r6, [r10, #0x5e0]
	strb r6, [r10, #0x5e8]
	strb r6, [r10, #0x5da]
	bl MI_CpuFill8
	add r0, r10, #0x1cc
	add r0, r0, #0x400
	add r0, r0, #0x3e
	mov r2, r4
	mov r1, r6
	bl MI_CpuFill8
	ldr r1, [r10, #0x888]
	strb r6, [r10, #0x62a]
	ldrh r3, [r1, #0x4e]
	add r0, r10, #0x500
	mov r2, #2
	strh r3, [r0, #0xd0]
	str r2, [r10, #0x5cc]
	mov r0, #1
	strb r0, [sp, #0x34]
	ldr r0, _020CD198 ; =0x020DB69C
	mov r1, #0xf
	str r0, [sp, #0x30]
	mov r0, #4
	str r1, [sp, #0x24]
	mov r1, #0x11
	strb r0, [sp, #0x35]
	ldr r0, _020CD19C ; =0x0209AEC0
	str r1, [sp, #0x28]
	bl FUN_020466c0
	str r0, [sp, #0x2c]
	ldr r0, [r10, #4]
	add r1, sp, #0x24
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r10
	bl FUN_ov4_020d2468
	ldr r4, _020CD14C ; =0x0209BA20
	mov r1, r6
	mov r0, r4
	bl FUN_0204da5c
	mov r0, r4
	mov r1, r6
	bl FUN_0207249c
	strh r6, [r0, #0x28]
	add sp, sp, #0x1d4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD148: .word unk_020A0640
_020CD14C: .word unk_0209BA20
_020CD150: .word ov4_020DB5F4
_020CD154: .word ov4_020DB60C
_020CD158: .word ov4_020DB624
_020CD15C: .word ov4_020DB63C
_020CD160: .word ov4_020DB4B4
_020CD164: .word unk_02099F38
_020CD168: .word unk_0209A250
_020CD16C: .word ov4_020DB65C
_020CD170: .word ov4_020DB678
_020CD174: .word ov4_020DB680
_020CD178: .word 0x020D8824
_020CD17C: .word 0x020D859C
_020CD180: .word ov4_020DB554
_020CD184: .word 0x020D85D8
_020CD188: .word unk_02099F58
_020CD18C: .word unk_02099EC0
_020CD190: .word 0x0000FFC0
_020CD194: .word unk_02099F44
_020CD198: .word ov4_020DB69C
_020CD19C: .word unk_0209AEC0
	arm_func_end FUN_ov4_020cc5dc

	arm_func_start FUN_ov4_020cd1a0
FUN_ov4_020cd1a0: ; 0x020CD1A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	add r0, r6, #0x4c
	mov r1, #3
	mov r4, #0
	bl FUN_ov16_020f338c
	add r0, r6, #0x70
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r5, r4
	ldr r7, _020CD324 ; =0x02099F38
	b _020CD1E4
_020CD1D0:
	add r1, r6, r5, lsl #2
	ldr r0, [r7]
	ldr r1, [r1, #0x11c]
	bl FUN_ov16_021128c4
	add r5, r5, #1
_020CD1E4:
	cmp r5, #0xe
	blt _020CD1D0
	ldr r7, _020CD324 ; =0x02099F38
	ldr r1, [r6, #0x168]
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	ldr r0, [r7]
	ldr r1, [r6, #0x184]
	bl FUN_ov16_021128c4
	mov r5, #0
	b _020CD224
_020CD210:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x7c]
	ldr r0, [r7]
	bl FUN_02058ee0
	add r5, r5, #1
_020CD224:
	cmp r5, #0x28
	blt _020CD210
	mov r5, #0
	ldr r7, _020CD324 ; =0x02099F38
	b _020CD24C
_020CD238:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x154]
	ldr r0, [r7]
	bl FUN_02058ee0
	add r5, r5, #1
_020CD24C:
	cmp r5, #5
	blt _020CD238
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov4_020d4c18
	mov r8, #1
	mov r0, r6
	mov r1, r8
	bl FUN_ov4_020d4c18
	ldr r7, _020CD328 ; =0x02099EC0
	mov r1, r8
	ldr r0, [r7]
	bl FUN_02056e94
	ldr r0, [r7]
	bl FUN_02057c60
	ldr r0, [r7]
	bl FUN_020569c0
	ldr r0, [r7]
	bl FUN_020568a4
	ldr r0, _020CD32C ; =0x02099F58
	ldr r0, [r0]
	bl FUN_ov16_02116650
	ldr r0, _020CD324 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	add r8, r6, #0x4c
	mov r7, #0xc
	b _020CD2CC
_020CD2C0:
	mla r0, r5, r7, r8
	bl FUN_ov16_020f33fc
	add r5, r5, #1
_020CD2CC:
	cmp r5, #3
	blt _020CD2C0
	add r0, r6, #0x70
	bl FUN_ov16_020f33fc
	ldr r0, _020CD330 ; =0x0209AEC0
	bl FUN_020465fc
	ldr r5, _020CD334 ; =0x0209A250
	ldr r1, [r6, #0x988]
	mov r0, r5
	bl FUN_0202e1c0
	ldr r1, [r6, #0x98c]
	mov r0, r5
	bl FUN_0202e1c0
	ldr r1, [r6, #0x99c]
	mov r0, r5
	bl FUN_0202e1c0
	ldr r0, _020CD338 ; =0x020A0640
	strb r4, [r0, #0xad]
	bl FUN_ov16_020f47fc
	mov r0, #1
	bl FUN_ov16_020f3f60
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CD324: .word unk_02099F38
_020CD328: .word unk_02099EC0
_020CD32C: .word unk_02099F58
_020CD330: .word unk_0209AEC0
_020CD334: .word unk_0209A250
_020CD338: .word unk_020A0640
	arm_func_end FUN_ov4_020cd1a0

	arm_func_start FUN_ov4_020cd33c
FUN_ov4_020cd33c: ; 0x020CD33C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, #0
	add r0, r5, #0x2a4
	mov r3, #1
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0xc8
	strb r4, [r5, #0x62c]
	strb r4, [r5, #0x62d]
	str r3, [r5, #0x630]
	strb r4, [r5, #0x63c]
	strb r4, [r5, #0x644]
	strb r4, [r5, #0x64c]
	strb r4, [r5, #0x679]
	strb r4, [r5, #0xa15]
	bl MI_CpuFill8
	ldr r1, _020CD428 ; =0x020A0640
	add r0, r5, #0x500
	ldr r1, [r1, #0x4d8]
	ldr r6, _020CD42C ; =0x02099F38
	str r1, [r5, #0x670]
	str r4, [r5, #0x96c]
	str r4, [r5, #0x970]
	str r4, [r5, #0x974]
	strb r4, [r5, #0x978]
	str r4, [r5, #0x97c]
	str r4, [r5, #0x980]
	str r4, [r5, #0x984]
	str r4, [r5, #0x5dc]
	strh r4, [r0, #0xd0]
	str r4, [r5, #0x5cc]
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0x128]
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_0211401c
	str r4, [sp]
	mov r2, #3
	ldr r0, [r6]
	ldr r1, [r5, #0x128]
	mov r3, r2
	bl FUN_ov16_0211401c
	ldr r0, [r5, #0x994]
	orr r1, r4, #1
	tst r0, #0x100
	str r1, [r5, #0x994]
	and r2, r0, #0x200
	add r0, r5, #0x194
	orrne r1, r1, #0x100
	strne r1, [r0, #0x800]
	cmp r2, #0
	ldrne r0, [r5, #0x994]
	orrne r0, r0, #0x200
	strne r0, [r5, #0x994]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CD428: .word unk_020A0640
_020CD42C: .word unk_02099F38
	arm_func_end FUN_ov4_020cd33c

	arm_func_start FUN_ov4_020cd430
FUN_ov4_020cd430: ; 0x020CD430
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x530
	mov r4, r0
	ldr r2, [r4, #0x650]
	ldrb r1, [r4, #0xa16]
	add r2, r2, #1
	str r2, [r4, #0x650]
	cmp r1, #0
	mov r9, #0
	beq _020CD464
	bl FUN_ov4_020d623c
	add sp, sp, #0x530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD464:
	ldr r0, _020CE344 ; =0x0209AEC0
	bl FUN_020466e4
	cmp r0, #0
	bne _020CD494
	ldr r2, [r4, #0x34]
	cmp r2, #0x2000
	beq _020CD494
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
_020CD494:
	ldr r0, [r4, #0x30]
	cmp r0, #9
	ldrne r0, [r4, #0x34]
	cmpne r0, #0x200
	cmpne r0, #0x2000
	beq _020CD4B4
	mov r0, r4
	bl FUN_ov4_020ce744
_020CD4B4:
	ldrb r0, [r4, #0xa16]
	cmp r0, #0
	beq _020CD4D0
	mov r0, r4
	bl FUN_ov4_020d623c
	add sp, sp, #0x530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD4D0:
	mov r0, #0
	add r7, sp, #0x440
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #7
	mov r6, #0x10
_020CD4EC:
	stmia r7!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CD4EC
	stmia r7!, {r0, r1, r2, r3}
	ldr r0, [r4, #0x30]
	cmp r0, #9
	bhi _020CE6A4
	mov r10, #3
	mov r5, #4
	mov r7, #2
	mov r8, #8
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _020CD54C
_020CD528:
	b _020CD588
	b _020CD5DC
	b _020CD61C
	b _020CD55C
	b _020CD6AC
	b _020CD8C4
	b _020CD84C
	b _020CD93C
	b _020CE624
_020CD54C:
	mov r0, #0x1
	add sp, sp, #0x530
	str r0, [r4, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD55C:
	ldr r1, [r4, #0x674]
	mov r0, r4
	bl FUN_ov4_020d4868
	cmp r0, #0x0
	addeq sp, sp, #0x530
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	str r8, [r4, #0x30]
	bl FUN_ov4_020d2468
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD588:
	bl FUN_ov16_020f1670
	cmp r0, #0x0
	addne sp, sp, #0x530
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020CE348
	ldr r0, [r0, #0x0]
	bl FUN_02057c2c
	cmp r0, #0x0
	addne sp, sp, #0x530
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, #0x0
	bl FUN_ov4_020d4c18
	mov r0, r4
	mov r1, #0x1
	bl FUN_ov4_020d4c18
	mov r0, r4
	bl FUN_ov4_020cc3f4
	add sp, sp, #0x530
	str r7, [r4, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD5DC:
	ldr r5, _020CE348
	ldr r0, [r5, #0x0]
	bl FUN_020571ac
	cmp r0, #0x0
	addgt sp, sp, #0x530
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5, #0x0]
	bl FUN_020576a0
	cmp r0, #0x0
	addgt sp, sp, #0x530
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov4_020cc3f4
	add sp, sp, #0x530
	str r10, [r4, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD61C:
	ldr r5, _020CE348
	ldr r0, [r5, #0x0]
	bl FUN_020571ac
	cmp r0, #0x0
	addgt sp, sp, #0x530
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5, #0x0]
	bl FUN_020576a0
	cmp r0, #0x0
	addgt sp, sp, #0x530
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	bl FUN_ov4_020cc494
	ldrb r0, [r4, #0x678]
	str r8, [r4, #0x30]
	cmp r0, #0x0
	mov r0, r4
	beq _020CD68C
	mov r1, #0x1
	strb r9, [r4, #0x678]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	mov r0, r4
	ldr r1, [r0, #0x0]
	ldr r1, [r1, #0x4c]
	blx r1
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD68C:
	str r7, [r4, #0x34]
	bl FUN_ov4_020d2468
	mov r0, r4
	ldr r1, [r0, #0x0]
	ldr r1, [r1, #0x4c]
	blx r1
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD6AC:
	add r0, r4, #0xd4
	add r3, sp, #0x400
	add r3, r3, #0x4c
	strb r6, [sp, #0x442]
	str r8, [sp, #0x444]
	add r5, r0, #0x800
	mov r2, #0xe
_020CD6C8:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CD6C8
	add r3, sp, #0x400
	add r3, r3, #0x68
	add r5, r4, #0x8f0
	mov r2, #0x8
_020CD6F4:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CD6F4
	add r3, sp, #0x400
	add r3, r3, #0x78
	add r7, r4, #0x900
	mov r2, #0x10
	mov r5, #0x4
_020CD724:
	ldrb r1, [r7, #0x0]
	ldrb r0, [r7, #0x1]
	add r7, r7, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CD724
	ldrb r0, [r4, #0x920]
	add r3, r4, #0x900
	add r1, sp, #0x440
	strb r0, [sp, #0x498]
	ldrb r2, [r4, #0x921]
	mov r0, r4
	strb r2, [sp, #0x499]
	ldrh r7, [r3, #0x22]
	add r2, sp, #0x400
	add r2, r2, #0x8
	strh r7, [r2, #0x92]
	ldrh r9, [r3, #0x24]
	ldrh r7, [r3, #0x26]
	strh r9, [r2, #0x94]
	strh r7, [r2, #0x96]
	ldrh r9, [r3, #0x28]
	ldrh r7, [r3, #0x2a]
	strh r9, [r2, #0x98]
	strh r7, [r2, #0x9a]
	ldrh r7, [r3, #0x2c]
	strh r7, [r2, #0x9c]
	ldrb r7, [r4, #0x92e]
	strb r7, [sp, #0x4a6]
	ldrb r7, [r4, #0x92f]
	strb r7, [sp, #0x4a7]
	ldrb r7, [r4, #0x930]
	strb r7, [sp, #0x4a8]
	ldrb r7, [r4, #0x931]
	strb r7, [sp, #0x4a9]
	ldrh r7, [r3, #0x32]
	strh r7, [r2, #0xa2]
	ldrh r7, [r3, #0x34]
	strh r7, [r2, #0xa4]
	ldrb r7, [r4, #0x936]
	strb r7, [sp, #0x4ae]
	ldrb r7, [r4, #0x937]
	strb r7, [sp, #0x4af]
	ldrb r9, [r4, #0x938]
	ldrb r7, [r4, #0x939]
	strb r9, [sp, #0x4b0]
	strb r7, [sp, #0x4b1]
	ldrh r3, [r3, #0x3a]
	strh r3, [r2, #0xaa]
	bl FUN_ov4_020ce72c
	ldr r0, [r4, #0x994]
	and r0, r0, #0x6
	cmp r0, #0x6
	ldreqb r0, [r4, #0xa14]
	cmpeq r0, #0x0
	mov r0, r4
	bne _020CD838
	mov r1, #0x1
	bl FUN_ov4_020d4c18
	add r1, r4, #0x374
	mov r0, r4
	mov r2, #0x1
	add r1, r1, #0x400
	bl FUN_ov4_020d4a50
	add sp, sp, #0x530
	str r5, [r4, #0x30]
	str r6, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD838:
	str r8, [r4, #0x30]
	str r8, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD84C:
	ldr r0, _020CE34C
	bl FUN_02062924
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov4_020d60f8
	ldrb r0, [r4, #0xa16]
	cmp r0, #0x0
	addne sp, sp, #0x530
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0x1
	beq _020CE6A4
	ldr r0, [r4, #0x40]
	cmp r0, #0x3
	addls pc, pc, r0, lsl #0x2
	b _020CD8BC
_020CD88C:
	b _020CD8BC
	b _020CD89C
	b _020CD8A8
	b _020CD8B4
_020CD89C:
	mov r0, r4
	bl FUN_ov4_020cf0c4
	b _020CD8BC
_020CD8A8:
	mov r0, r4
	bl FUN_ov4_020cfd60
	b _020CD8BC
_020CD8B4:
	mov r0, r4
	bl FUN_ov4_020d0db4
_020CD8BC:
	str r9, [r4, #0x40]
	b _020CE6A4
_020CD8C4:
	ldr r0, _020CE34C
	bl FUN_020627a4
	mov r5, r0
	mov r0, r4
	mov r1, r5
	bl FUN_ov4_020d60f8
	ldrb r0, [r4, #0xa16]
	cmp r0, #0x0
	addne sp, sp, #0x530
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0x1
	beq _020CE6A4
	ldr r0, [r4, #0x44]
	cmp r0, #0x3
	addls pc, pc, r0, lsl #0x2
	b _020CD934
_020CD904:
	b _020CD934
	b _020CD914
	b _020CD920
	b _020CD92C
_020CD914:
	mov r0, r4
	bl FUN_ov4_020d1f98
	b _020CD934
_020CD920:
	mov r0, r4
	bl FUN_ov4_020d1ffc
	b _020CD934
_020CD92C:
	mov r0, r4
	bl FUN_ov4_020d2060
_020CD934:
	str r9, [r4, #0x44]
	b _020CE6A4
_020CD93C:
	bl FUN_ov16_020f1660
	cmp r0, #0x0
	bne _020CD968
	ldr r0, [r4, #0x34]
	cmp r0, #0x2
	bne _020CD960
	ldreq r0, [r4, #0x630]
	cmpeq r0, #0x0
	bne _020CD968
_020CD960:
	mov r0, r4
	bl FUN_ov4_020d5aac
_020CD968:
	ldr r2, [r4, #0x34]
	cmp r2, #0x40
	bgt _020CD9C8
	bge _020CE254
	cmp r2, #0x10
	bgt _020CD9BC
	ldrge r8, _020CE350
	movge r10, #0x3
	bge _020CDFF0
	cmp r2, #0x8
	addls pc, pc, r2, lsl #0x2
	b _020CE6A4
_020CD998:
	b _020CE6A4
	b _020CDA04
	b _020CDD60
	b _020CE6A4
	b _020CDDDC
	b _020CE6A4
	b _020CE6A4
	b _020CE6A4
	b _020CE4C0
_020CD9BC:
	cmp r2, #0x20
	beq _020CE224
	b _020CE6A4
_020CD9C8:
	cmp r2, #0x100
	mov r7, #0xe
	bgt _020CD9E8
	cmp r2, #0x100
	bge _020CE3F0
	cmp r2, #0x80
	beq _020CE260
	b _020CE6A4
_020CD9E8:
	cmp r2, #0x200
	bgt _020CD9F8
	beq _020CE46C
	b _020CE6A4
_020CD9F8:
	cmp r2, #0x2000
	beq _020CE46C
	b _020CE6A4
_020CDA04:
	ldr r1, _020CE354
	mov r3, #0xf
	mov r2, #0x11
	mov r10, #0x1
	strb r5, [sp, #0x2d]
	ldr r0, _020CE344
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x28]
	strb r10, [sp, #0x2c]
	ldr r5, _020CE350
	bl FUN_020466c0
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x4]
	add r1, sp, #0x1c
	ldr r2, [r0, #0x0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldr r0, [r4, #0x48]
	cmp r0, #0x0
	bne _020CDA80
	strb r6, [sp, #0x442]
	str r7, [sp, #0x444]
	ldr r1, [r4, #0x994]
	add r0, sp, #0x400
	str r1, [sp, #0x448]
	ldr r2, [r4, #0x680]
	ldr r1, _020CE358
	add r0, r0, #0x4c
	bl FUN_02023c40
	b _020CDC28
_020CDA80:
	cmp r0, #0x1
	bne _020CDBC8
	mov r0, #0x800
	strb r6, [sp, #0x442]
	str r0, [sp, #0x444]
	add r7, sp, #0x378
	ldr r3, [r4, #0x994]
	mov r0, r7
	mov r1, r9
	mov r2, #0xc8
	str r3, [sp, #0x448]
	bl MI_CpuFill8
	mov r5, #0x64
	ldr r0, _020CE35C
	mov r1, r9
	mov r2, r7
	mov r3, r5
	str r9, [sp, #0x0]
	bl FUN_0204b650
	add r1, sp, #0x400
	add r1, r1, #0x4c
	mov r0, r7
	mov r2, r5
	bl MI_CpuCopy8
	ldr r0, _020CE360
	add r8, r0, #0x6b
	add r5, r0, #0xb4
	add r11, r0, #0x98
	add r6, r0, #0x10
	sub r7, r0, #0x8c
	b _020CDB90
_020CDAFC:
	ldr r0, _020CE364
	mov r1, r10
	ldr r0, [r0, #0x0]
	bl FUN_02055388
	cmp r0, #0x0
	beq _020CDB8C
	mov r1, r9
	ldrh r3, [r0, #0x20]
	cmp r3, r8
	bgt _020CDB50
	bge _020CDB70
	ldr r2, _020CE360
	cmp r3, r2
	bgt _020CDB44
	bge _020CDB70
	cmp r3, r7
	beq _020CDB70
	b _020CDB84
_020CDB44:
	cmp r3, r6
	beq _020CDB70
	b _020CDB84
_020CDB50:
	cmp r3, r5
	bgt _020CDB68
	bge _020CDB70
	cmp r3, r11
	beq _020CDB70
	b _020CDB84
_020CDB68:
	cmp r3, #0x2d4
	bne _020CDB84
_020CDB70:
	ldrh r2, [r0, #0x20]
	add r0, sp, #0x400
	add r0, r0, #0x8
	mov r1, #0x1
	strh r2, [r0, #0xaa]
_020CDB84:
	cmp r1, #0x0
	bne _020CDB98
_020CDB8C:
	add r10, r10, #0x1
_020CDB90:
	cmp r10, #0x18
	ble _020CDAFC
_020CDB98:
	mov r1, #0x0
	strb r1, [sp, #0x4b4]
	ldr r0, _020CE368 
	mov r1, #0xf
	bl FUN_02044658
	ldr r3, [r0, #0x0]
	add r2, sp, #0x400
	add r2, r2, #0x8
	add r1, sp, #0x440
	mov r0, r4
	strh r3, [r2, #0xa8]
	b _020CDD48
_020CDBC8:
	cmp r0, #0x2
	bne _020CDC34
	mov r0, #0x1000
	strb r6, [sp, #0x442]
	str r0, [sp, #0x444]
	add r7, sp, #0x2b0
	ldr r3, [r4, #0x994]
	mov r0, r7
	mov r1, r9
	mov r2, #0xc8
	str r3, [sp, #0x448]
	bl MI_CpuFill8
	mov r5, #0x64
	ldr r0, _020CE35C
	mov r1, r9
	mov r2, r7
	mov r3, r5
	str r9, [sp, #0x0]
	bl FUN_0204b650
	add r1, sp, #0x400
	add r0, sp, #0x314
	add r1, r1, #0x4c
	mov r2, r5
	bl MI_CpuCopy8
_020CDC28:
	add r1, sp, #0x440
	mov r0, r4
	b _020CDD48
_020CDC34:
	ldr r0, [r4, #0x2c]
	cmp r0, #0x0
	bne _020CDC4C
	ldrh r0, [r4, #0x8]
	bics r0, r0, #0x2000
	beq _020CDCDC
_020CDC4C:
	ldr r1, [r4, #0x994]
	ldr r0, _020CE36C
	and r1, r1, r0
	cmp r1, r0
	bne _020CDCDC
	ldr r0, [r4, #0xa1c]
	cmp r0, #0xf
	ble _020CDCDC
	ldr r0, [r4, #0x48]
	cmp r0, #0x3
	bne _020CDCDC
	ldr r0, [r5, #0x0]
	ldr r1, [r4, #0x120]
	bl FUN_ov16_021128c4
	ldr r1, [r4, #0xc0]
	ldr r0, [r5, #0x0]
	bl FUN_02058ee0
	mov r0, r4
	str r7, [r4, #0x34]
	bl FUN_ov4_020d2468
	ldr r0, [r4, #0x4]
	bl FUN_02041db8
	ldr r0, [r4, #0x4]
	mov r1, #0x1
	mov r2, #0x10
	bl FUN_02041eac
	mov r0, #0x1
	strb r0, [r4, #0x5db]
	ldr r0, [r4, #0x4]
	add r1, r4, #0x1cc
	ldr r2, [r0, #0x0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDCDC:
  ldr r0, [r4, #0xa1c]
	cmp r0, #0x78
	ble _020CDD28
	ldr r0, [r4, #0x48]
	cmp r0, #0x3
	bne _020CDD28
	ldr r1, [r4, #0x994]
	ldr r0, _020CE36C ; =00000301h
	and r1, r1, r0
	cmp r1, r0
	beq _020CDD28
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDD28:
	ldr r0, [r4, #0x48]
	cmp r0, #0x3
	bne _020CDD4C
	strb r6, [sp, #0x442]
	ldr r2, [r4, #0x994]
	add r1, sp, #0x440
	mov r0, r4
	str r2, [sp, #0x448]
_020CDD48:
	bl FUN_ov4_020ce72c
_020CDD4C:
	ldr r0, [r4, #0xa1c]
	add sp, sp, #0x530
	add r0, r0, #0x1
	str r0, [r4, #0xa1c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDD60:
	add r0, r4, #0x100
	ldrh r0, [r0, #0xd4]
	tst r0, #0x6
	ldreq r0, [r4, #0x1d0]
	cmpeq r0, #0x0
	bne _020CE6A4
	mov r0, r4
	bl FUN_ov4_020d2f4c
	ldr r0, _020CE370 ; =02099ED4h
	ldr r5, _020CE374 ; =0209A110h
	ldr r0, [r0, #0x0] ; =_02099ed4
	ldr r1, [r5, #0x0] ; =_0209a110
	bl FUN_ov16_0210e10c
	ldr r0, [r5, #0x0] ; =_0209a110
	cmp r0, #0x0
	mov r0, r0, lsl #0xc
	beq _020CDDB8
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CDDC4
_020CDDB8:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CDDC4:
	bl FUN_0201fdac
	ldr r2, _020CE378 ; =_02099F58
	mov r1, r0
	ldr r0, [r2, #0x0] ; =_02099f58
	bl FUN_ov16_02116654
	b _020CE6A4
_020CDDDC:
	ldr r0, [r4, #0x30]
	ldr r6, _020CE350 ; =02099F38h
	cmp r0, #0x5
	beq _020CE6A4
	add r0, r4, #0x200
	ldrh r1, [r0, #0xa4]
	tst r1, #0x6
	bne _020CE6A4
	ldrh r2, [r0, #0xd8]
	tst r2, #0x6
	ldreq r1, [r4, #0x2a0]
	cmpeq r1, #0x0
	ldreq r1, [r4, #0x2d4]
	cmpeq r1, #0x0
	bne _020CE6A4
	ldr r1, [r4, #0x24]
	cmp r1, #0x0
	bne _020CDF40
	ldrh r1, [r4, #0x8]
	tst r1, #0x1
	beq _020CDEA0
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x1
	beq _020CDE50
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x1
	bne _020CDE68
_020CDE50:
	add r0, r4, #0x200
	ldrh r1, [r0, #0xa4]
	str r5, [r4, #0x2a0]
	orr r1, r1, #0x6
	strh r1, [r0, #0xa4]
	b _020CE6A4
_020CDE68:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x2
	beq _020CDE88
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x2
	bne _020CDF40
_020CDE88:
	add r0, r4, #0x200
	ldrh r1, [r0, #0xd8]
	str r5, [r4, #0x2d4]
	orr r1, r1, #0x6
	strh r1, [r0, #0xd8]
	b _020CE6A4
_020CDEA0:
	tst r1, #0x2
	orrne r1, r2, #0x6
	strneb r7, [r4, #0x64d]
	strneh r1, [r0, #0xd8]
	strne r5, [r4, #0x2d4]
	bne _020CE6A4
	tst r1, #0x20
	beq _020CDF00
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x1
	beq _020CDEDC
	ldr r0, _020CE37C ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CDEDC:
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r0, [r6, #0x0] ; =_02099f38
	ldr r1, [r4, #0x12c]
	mov r2, #0x2
	bl FUN_ov16_0211401c
	mov r0, #0x1
	strb r0, [r4, #0x64d]
	b _020CDF40
_020CDF00:
	tst r1, #0x10
	beq _020CDF40
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x2
	beq _020CDF24
	ldr r0, _020CE37C ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CDF24:
	str r9, [sp, #0x0]
	ldr r0, [r6, #0x0]; =_02099f38
	ldr r1, [r4, #0x12c]
	mov r3, r7
	mov r2, #0x3
	bl FUN_ov16_0211401c
	strb r7, [r4, #0x64d]
_020CDF40:
	ldrh r0, [r4, #0x8]
	tst r0, #0x3
	ldr r0, [r4, #0x28]
	strneb r10, [r4, #0x64d]
	cmp r0, #0x0
	beq _020CE6A4
	add r3, r4, #0x28c
	ldrsh r1, [r3, #0x20]
	mov r0, r4
	add r5, r4, #0x2c0
	str r1, [sp, #0x0]
	ldrsh r2, [r3, #0x22]
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r3, #0x1c]
	ldrsh r3, [r3, #0x1e]
	bl FUN_ov4_020cc1d8
	ldrsh r1, [r5, #0x20]
	mov r6, r0
	mov r0, r4
	str r1, [sp, #0x0]
	ldrsh r2, [r5, #0x22]
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r5, #0x1c]
	ldrsh r3, [r5, #0x1e]
	bl FUN_ov4_020cc1d8
	cmp r6, #0x0
	cmpeq r0, #0x0
	beq _020CDFD0
	ldr r0, _020CE37C ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
	strb r10, [r4, #0x64d]
	strb r9, [r4, #0x64e]
	b _020CE6A4
_020CDFD0:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x3
	bne _020CE6A4
	ldrsb r0, [r0, #0x4e]
	cmp r0, #0x0
	strgtb r0, [r4, #0x64d]
	b _020CE6A4
_020CDFF0:
	mov r3, #0x4000
	add r1, sp, #0x440
	mov r0, r4
	strb r6, [sp, #0x442]
	strb r2, [sp, #0x443]
	str r3, [sp, #0x444]
	bl FUN_ov4_020ce72c
	ldr r0, [r4, #0x30]
	cmp r0, #0x5
	beq _020CE6A4
	add r0, r4, #0x400
	ldrh r1, [r0, #0x78]
	tst r1, #0x6
	bne _020CE6A4
	ldrh r2, [r0, #0xac]
	tst r2, #0x6
	ldreq r1, [r4, #0x474]
	cmpeq r1, #0x0
	ldreq r1, [r4, #0x4a8]
	cmpeq r1, #0x0
	bne _020CE6A4
	ldr r1, [r4, #0x24]
	cmp r1, #0x0
	bne _020CE16C
	ldrh r1, [r4, #0x8]
	tst r1, #0x1
	beq _020CE0CC
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x1
	beq _020CE07C
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x1
	bne _020CE094
_020CE07C:
	add r0, r4, #0x400
	ldrh r1, [r0, #0x78]
	str r5, [r4, #0x474]
	orr r1, r1, #0x6
	strh r1, [r0, #0x78]
	b _020CE6A4
_020CE094:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x2
	beq _020CE0B4
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x2
	bne _020CE16C
_020CE0B4:
	add r0, r4, #0x400
	ldrh r1, [r0, #0xac]
	str r5, [r4, #0x4a8]
	orr r1, r1, #0x6
	strh r1, [r0, #0xac]
	b _020CE6A4
_020CE0CC:
	tst r1, #0x2
	orrne r1, r2, #0x6
	strneb r7, [r4, #0x64d]
	strneh r1, [r0, #0xac]
	strne r5, [r4, #0x4a8]
	bne _020CE6A4
	tst r1, #0x20
	beq _020CE12C
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x1
	beq _020CE108
	ldr r0, _020CE37C ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CE108:
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r0, [r8, #0x0]; =_02099f38
	ldr r1, [r4, #0x134]
	mov r2, #0xa
	bl FUN_ov16_0211401c
	mov r0, #0x1
	strb r0, [r4, #0x64d]
	b _020CE16C
_020CE12C:
	tst r1, #0x10
	beq _020CE16C
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x2
	beq _020CE150
	ldr r0, _020CE37C ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CE150:
	str r9, [sp, #0x0]
	ldr r0, [r8, #0x0] ; =_02099f38
	ldr r1, [r4, #0x134]
	mov r3, r7
	mov r2, #0xb
	bl FUN_ov16_0211401c
	strb r7, [r4, #0x64d]
_020CE16C:
	ldrh r0, [r4, #0x8]
	tst r0, #0x3
	ldr r0, [r4, #0x28]
	strneb r10, [r4, #0x64d]
	cmp r0, #0x0
	beq _020CE218
	add r3, r4, #0x28c
	ldrsh r1, [r3, #0x20]
	mov r0, r4
	add r5, r4, #0x2c0
	str r1, [sp, #0x0]
_020CE198:
	ldrsh r2, [r3, #0x22]
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r3, #0x1c]
	ldrsh r3, [r3, #0x1e]
	bl FUN_ov4_020cc1d8
	ldrsh r1, [r5, #0x20] ; =_00000024
	mov r6, r0
	mov r0, r4
	str r1, [sp, #0x0]
	ldrsh r2, [r5, #0x22] ; =_00000026
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r5, #0x1c] ; =_00000020
	ldrsh r3, [r5, #0x1e] ; =_00000022
	bl FUN_ov4_020cc1d8
	cmp r6, #0x0
	cmpeq r0, #0x0
	beq _020CE1FC
	ldr r0, _020CE37C ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
	strb r10, [r4, #0x64d]
	strb r9, [r4, #0x64e]
	b _020CE218
_020CE1FC:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x3
	bne _020CE218
	ldrsb r0, [r0, #0x4e]
	cmp r0, #0x0
	strgtb r0, [r4, #0x64d]
_020CE218:
	mov r0, r4
	bl FUN_ov4_020d3430
	b _020CE6A4
_020CE224:
	ldrb r0, [r4, #0x998]
	cmp r0, #0x0
	strneb r9, [r4, #0x998]
	bne _020CE6A4
	strb r6, [sp, #0x442]
	ldr r2, [r4, #0x34]
	add r1, sp, #0x440
	mov r0, r4
	strb r2, [sp, #0x443]
	str r9, [sp, #0x444]
_020CE24C:
	bl FUN_ov4_020ce72c
	b _020CE6A4
_020CE254:
	mov r0, r4
	bl FUN_ov4_020d350c
	b _020CE6A4
_020CE260:
	mov r0, r4
	bl FUN_ov4_020cc370
	add r7, sp, #0x1e8
	mov r3, #0x800
	mov r0, r7
	mov r1, r9
	mov r2, #0xc8
	strb r6, [sp, #0x442]
	str r3, [sp, #0x444]
	bl MI_CpuFill8
	mov r5, #0x64
	ldr r0, _020CE35C ; =0209BA20h
	mov r1, r9
	mov r2, r7
	mov r3, r5
	str r9, [sp, #0x0]
	bl FUN_0204b650
	add r1, sp, #0x400
	mov r0, r7
	mov r2, r5
	add r1, r1, #0x4c
	bl MI_CpuCopy8
	ldr r0, _020CE360 ; =000001C7h
	mov r10, #0x1
	add r8, r0, #0x6b
	add r5, r0, #0xb4
	add r11, r0, #0x98
	add r6, r0, #0x10
	sub r7, r0, #0x8c
	b _020CE3A8
_020CE2D8:
	ldr r0, _020CE364 ; =02099ED8h
	mov r1, r10
	ldr r0, [r0, #0x0] ; =_02099ed8
	bl FUN_02055388
	cmp r0, #0x0
	beq _020CE3A4
	mov r1, r9
	ldrh r3, [r0, #0x20]
	cmp r3, r8
	bgt _020CE32C
	bge _020CE388
	ldr r2, _020CE360 ; =000001C7h
	cmp r3, r2
	bgt _020CE320
	bge _020CE388
	cmp r3, r7
	beq _020CE388
	b _020CE39C
_020CE320:
	cmp r3, r6
	beq _020CE388
	b _020CE39C
_020CE32C:
	cmp r3, r5
	bgt _020CE380
	bge _020CE388
	cmp r3, r11
	beq _020CE388
	b _020CE39C
_020CE344: .word unk_0209AEC0
_020CE348: .word unk_02099EC0
_020CE34C: .word unk_0209A5D0
_020CE350: .word unk_02099F38
_020CE354: .word ov4_020DB71C
_020CE358: .word ov4_020DB79C
_020CE35C: .word unk_0209BA20
_020CE360: .word 0x000001C7
_020CE364: .word unk_02099ED8
_020CE368: .word unk_020AF81C
_020CE36C: .word 0x00000301
_020CE370: .word unk_02099ED4
_020CE374: .word unk_0209A110
_020CE378: .word unk_02099F58
_020CE37C: .word unk_0209AC44
_020CE380:
	cmp r3, #0x2d4
	bne _020CE39C
_020CE388:
	ldrh r2, [r0, #0x20]
	add r0, sp, #0x400
	add r0, r0, #0x8
	mov r1, #0x1
	strh r2, [r0, #0xAA]
_020CE39C:
	cmp r1, #0x0
	bne _020CE3B0
_020CE3A4:
	add r10, r10, #0x1
_020CE3A8:
	cmp r10, #0x18
	ble _020CE2D8
_020CE3B0:
	mov r1, #0x0
	strb r1, [sp, #0x4b4]
	ldr r0, _020CE368 ; =020AF81Ch
	mov r1, #0xf
	bl FUN_02044658
	ldr r3, [r0, #0x0]
	add r2, sp, #0x400
	add r2, r2, #0x8
	add r1, sp, #0x440
	mov r0, r4
	strh r3, [r2, #0xA8]
	bl FUN_ov4_020ce72c
	mov r0, #0x100
	add sp, sp, #0x530
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE3F0:
	mov r0, r4
	bl FUN_ov4_020cc370
	add r7, sp, #0x120
	mov r3, #0x1400
	mov r0, r7
	mov r1, r9
	mov r2, #0xc8
	strb r6, [sp, #0x442]
	str r3, [sp, #0x444]
	bl MI_CpuFill8
	mov r5, #0x64
	ldr r0, _020CE35C ; =0209BA20h
	mov r1, r9
	mov r2, r7
	mov r3, r5
	str r9, [sp, #0x0]
	bl FUN_0204b650
	add r1, sp, #0x400
	add r0, sp, #0x184
	mov r2, r5
	add r1, r1, #0x4c
	bl MI_CpuCopy8
	mov r0, r4
	add r1, sp, #0x440
	bl FUN_ov4_020ce72c
	mov r0, r4
	bl FUN_ov4_020ce708
	mov r0, #0x80
	add sp, sp, #0x530
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE46C:
	ldr r0, [r4, #0x4]
	bl FUN_02042054
	cmp r0, #0xf
	bne _020CE6A4
	ldr r1, _020CE6D8 ; =020DB7A0h
	mov r2, #0x11
	str r1, [sp, #0x14]
	mov r1, #0x1
	ldr r0, _020CE344 ; =0209AEC0h
	str r7, [sp, #0x8]
	str r2, [sp, #0xC]
	strb r1, [sp, #0x18]
	strb r5, [sp, #0x19]
	bl FUN_020466c0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x4]
	add r1, sp, #0x8
	ldr r2, [r0, #0x0]
	ldr r2, [r2, #0x3c]
	blx r2
	b _020CE6A4
_020CE4C0:
	ldr r0, [r4, #0x664]
	cmp r0, #0x0
	bne _020CE6A4
	mov r0, #0x0
	add r7, sp, #0x30
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #0x7
_020CE4E4:
	stmia r7!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #0x1
	bne _020CE4E4
	stmia r7!, {r0, r1, r2, r3}
	add r0, r4, #0xd4
	add r3, sp, #0x3c
	strb r6, [sp, #0x32]
	str r8, [sp, #0x34]
	add r5, r0, #0x800
	mov r2, #0xe
_020CE510:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CE510
	add r3, sp, #0x58
	add r5, r4, #0x8f0
	mov r2, #0x8
_020CE538:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CE538
	add r3, sp, #0x68
	add r5, r4, #0x900
	mov r2, #0x10
_020CE560:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CE560
	ldrb r0, [r4, #0x920]
	add r2, r4, #0x900
	add r1, sp, #0x30
	strb r0, [sp, #0x88]
	ldrb r3, [r4, #0x921]
	mov r0, r4
	strb r3, [sp, #0x89]
	ldrh r3, [r2, #0x22]
	strh r3, [sp, #0x8a]
	ldrh r5, [r2, #0x24]
	ldrh r3, [r2, #0x26]
	strh r5, [sp, #0x8c]
	strh r3, [sp, #0x8e]
	ldrh r5, [r2, #0x28]
	ldrh r3, [r2, #0x2a]
	strh r5, [sp, #0x90]
	strh r3, [sp, #0x92]
	ldrh r3, [r2, #0x2c]
	strh r3, [sp, #0x94]
	ldrb r3, [r4, #0x92e]
	strb r3, [sp, #0x96]
	ldrb r3, [r4, #0x92f]
	strb r3, [sp, #0x97]
	ldrb r3, [r4, #0x930]
	strb r3, [sp, #0x98]
	ldrb r3, [r4, #0x931]
	strb r3, [sp, #0x99]
	ldrh r3, [r2, #0x32]
	strh r3, [sp, #0x9a]
	ldrh r3, [r2, #0x34]
	strh r3, [sp, #0x9c]
	ldrb r3, [r4, #0x936]
	strb r3, [sp, #0x9e]
	ldrb r3, [r4, #0x937]
	strb r3, [sp, #0x9f]
	ldrb r5, [r4, #0x938]
	ldrb r3, [r4, #0x939]
	strb r5, [sp, #0xA0]
	strb r3, [sp, #0xA1]
	ldrh r2, [r2, #0x3a]
	strh r2, [sp, #0xA2]
	b _020CE24C
_020CE624:
	mov r0, r4
	ldr r1, [r0, #0x0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0x0
	addne sp, sp, #0x530
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x4]
	bl FUN_02042054
	cmp r0, #0x10
	bne _020CE684
	mov r0, #0x6
	bl FUN_ov16_020f153c
	ldr r4, [r4, #0x4]
	mov r1, #0x0
	mov r0, r4
	mov r2, #0xe
	bl FUN_02041eac
	mov r0, r4
	mov r1, #0x1
	mov r2, #0xf
	bl FUN_02041eac
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE684:
	ldr r0, [r4, #0x4]
	bl FUN_02041d9c
	ldr r0, [r4, #0x4]
	mov r1, #0x0
	mov r2, #0xe
	bl FUN_02041eac
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE6A4:
	ldr r0, [r4, #0x30]
	cmp r0, #8
	bne _020CE6C4
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	beq _020CE6C4
	mov r0, r4
	bl FUN_ov4_020ce708
_020CE6C4:
	mov r0, r4
	bl FUN_ov4_020d35f8
	strb r9, [r4, #0xa14]
	add sp, sp, #0x530
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov4_020cd430
_020CE6D8: .word ov4_020DB7A0

	arm_func_start FUN_ov4_020ce6dc
FUN_ov4_020ce6dc: ; 0x020CE6DC
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x34]
	cmp r1, #2
	ldreq r0, [r0, #0x30]
	cmpeq r0, #8
	ldmnefd sp!, {r3, pc}
	ldr r0, _020CE704 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
	ldmfd sp!, {r3, pc}
_020CE704: .word unk_02099EC0
	arm_func_end FUN_ov4_020ce6dc

	arm_func_start FUN_ov4_020ce708
FUN_ov4_020ce708: ; 0x020CE708
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #4]
	add r1, r1, #0x1cc
	ldr r2, [r0]
	add r1, r1, #0x400
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020ce708

	arm_func_start FUN_ov4_020ce72c
FUN_ov4_020ce72c: ; 0x020CE72C
	ldr r0, _020CE73C ; =0x0209AEC0
	ldr r12, _020CE740 ; =FUN_02046a20
	mov r2, #0x78
	bx r12
_020CE73C: .word unk_0209AEC0
_020CE740: .word FUN_02046a20
	arm_func_end FUN_ov4_020ce72c

	arm_func_start FUN_ov4_020ce744
FUN_ov4_020ce744: ; 0x020CE744
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x2d8
	ldr r1, _020CF0AC ; =0x0209AEC0
	mov r4, r0
	ldr r0, [r1, #0x5c]
	mov r8, #1
	cmp r0, #1
	mov r7, #0
	moveq r0, r8
	movne r0, r7
	cmp r0, #0
	mov r3, #0x78
	beq _020CE788
	ldr r0, _020CF0AC ; =0x0209AEC0
	add r1, sp, #0xf8
	add r2, sp, #0x1e8
	b _020CE794
_020CE788:
	ldr r0, _020CF0AC ; =0x0209AEC0
	add r1, sp, #0x1e8
	add r2, sp, #0xf8
_020CE794:
	bl FUN_02046880
	cmp r0, #0
	addeq sp, sp, #0x2d8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x1ec]
	tst r0, #2
	beq _020CE7D8
	ldr r1, [r4, #0x994]
	tst r1, #1
	bne _020CE7D8
	orr r3, r1, #1
	add r0, r4, #0x284
	ldr r1, _020CF0B0 ; =0x020DB820
	add r2, sp, #0x1f4
	add r0, r0, #0x400
	str r3, [r4, #0x994]
	bl FUN_02023c40
_020CE7D8:
	ldr r0, [sp, #0x1f0]
	tst r0, #1
	beq _020CE7F0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	streq r8, [r4, #0x48]
_020CE7F0:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x800
	beq _020CE844
	ldr r0, [r4, #0x994]
	tst r0, #0x100
	bne _020CE844
	orr r2, r0, #0x100
	add r1, r4, #0x2a4
	str r2, [r4, #0x994]
	add r0, sp, #0x1f4
	add r1, r1, #0x400
	mov r2, #0x64
	bl MI_CpuCopy8
	add r0, sp, #0x208
	ldrh r2, [r0, #0x50]
	add r1, r4, #0x700
	strh r2, [r1, #0x6c]
	ldrh r0, [r0, #0x52]
	strh r0, [r1, #0x6e]
	ldrb r0, [sp, #0x25c]
	strb r0, [r4, #0x770]
_020CE844:
	ldr r0, [sp, #0x1f0]
	tst r0, #0x100
	beq _020CE860
	ldr r0, [r4, #0x48]
	cmp r0, #1
	moveq r0, #2
	streq r0, [r4, #0x48]
_020CE860:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x1000
	beq _020CE9C4
	ldr r0, [r4, #0x994]
	tst r0, #0x200
	bne _020CE9C4
	add r1, r4, #0x308
	orr r3, r0, #0x200
	add r0, sp, #0x1f4
	add r1, r1, #0x400
	mov r2, #0x64
	str r3, [r4, #0x994]
	bl MI_CpuCopy8
	ldr r0, [r4, #0x34]
	cmp r0, #1
	beq _020CE9C4
	mov r5, #0
	b _020CE9BC
_020CE8A8:
	add r0, r4, r5, lsl #2
	ldr r9, [r0, #0x888]
	mov r6, #1
	cmp r9, #0
	beq _020CE8D4
	mov r0, r4
	mov r1, r9
	bl FUN_ov4_020d4ca4
	cmp r0, #0
	moveq r6, #0
	beq _020CE998
_020CE8D4:
	cmp r9, #0
	beq _020CE998
	mov r6, #1
	mov r2, #0
	b _020CE908
_020CE8E8:
	add r0, r4, r2, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r9, #0x4e]
	ldrh r0, [r0, #0xa4]
	cmp r0, r1
	moveq r6, #0
	beq _020CE910
	add r2, r2, #1
_020CE908:
	cmp r2, #0x64
	blt _020CE8E8
_020CE910:
	mov r3, #0
	b _020CE938
_020CE918:
	ldr r1, [r4, #0x988]
	mov r0, r3, lsl #1
	ldrh r2, [r9, #0x4e]
	ldrh r0, [r1, r0]
	cmp r0, r2
	moveq r6, #0
	beq _020CE940
	add r3, r3, #1
_020CE938:
	cmp r3, #8
	blt _020CE918
_020CE940:
	ldrb r0, [r4, #0x770]
	cmp r0, #0
	bne _020CE97C
	mov r3, #0
	b _020CE974
_020CE954:
	ldr r1, [r4, #0x98c]
	mov r0, r3, lsl #1
	ldrh r2, [r9, #0x4e]
	ldrh r0, [r1, r0]
	cmp r0, r2
	moveq r6, #0
	beq _020CE97C
	add r3, r3, #1
_020CE974:
	cmp r3, #0x20
	blt _020CE954
_020CE97C:
	add r0, r4, #0x700
	ldrh r2, [r9, #0x4e]
	ldrh r1, [r0, #0x6c]
	cmp r1, r2
	ldrneh r0, [r0, #0x6e]
	cmpne r0, r2
	moveq r6, #0
_020CE998:
	cmp r6, #0
	mov r0, r4
	mov r1, #3
	add r2, r5, #0xd
	beq _020CE9B4
	bl FUN_ov4_020d21d8
	b _020CE9B8
_020CE9B4:
	bl FUN_ov4_020d20e4
_020CE9B8:
	add r5, r5, #1
_020CE9BC:
	cmp r5, #0x10
	blt _020CE8A8
_020CE9C4:
	ldr r0, [sp, #0x1f0]
	mov r6, #6
	tst r0, #0x200
	ldr r5, _020CF0AC ; =0x0209AEC0
	beq _020CE9EC
	ldr r0, [r4, #0x48]
	cmp r0, #2
	moveq r0, #3
	streq r0, [r4, #0x48]
	streq r7, [r4, #0xa1c]
_020CE9EC:
	ldr r0, [sp, #0x1ec]
	tst r0, #4
	beq _020CEA48
	ldr r1, [r4, #0x994]
	tst r1, #2
	bne _020CEA48
	add r0, r4, #0x374
	orr r1, r1, #2
	add r0, r0, #0x400
	str r1, [r4, #0x994]
	bl FUN_0206dcd4
	add r1, sp, #0x1f4
	bl FUN_0206ed40
	ldrb r1, [sp, #0x23e]
	ldr r0, [r4, #0xa18]
	ldr r2, [r4, #0x70]
	sub r1, r1, #1
	mov r1, r1, lsl #1
	ldrh r1, [r2, r1]
	cmp r0, #0
	str r1, [r4, #0x96c]
	str r1, [r4, #0x970]
	streqb r7, [r4, #0xa17]
_020CEA48:
	ldr r0, [sp, #0x1ec]
	tst r0, #8
	beq _020CEBE8
	ldr r0, [r4, #0x994]
	tst r0, #4
	bne _020CEBE8
	tst r0, #2
	beq _020CEBE8
	orr r1, r0, #4
	add r0, r4, #0x374
	add r9, sp, #0x1f4
	str r1, [r4, #0x994]
	add r3, r0, #0x400
	mov r2, #0xe
_020CEA80:
	ldrb r1, [r9]
	ldrb r0, [r9, #1]
	add r9, r9, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CEA80
	add r9, sp, #0x210
	add r3, r4, #0x790
	mov r2, #8
_020CEAA8:
	ldrb r1, [r9]
	ldrb r0, [r9, #1]
	add r9, r9, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CEAA8
	add r9, sp, #0x220
	add r3, r4, #0x7a0
	mov r2, #0x10
_020CEAD0:
	ldrb r1, [r9]
	ldrb r0, [r9, #1]
	add r9, r9, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CEAD0
	ldrb r0, [sp, #0x240]
	add r1, r4, #0x374
	add r9, sp, #0x208
	strb r0, [r4, #0x7c0]
	ldrb r0, [sp, #0x241]
	add r10, r4, #0x700
	mov r3, #0
	strb r0, [r4, #0x7c1]
	ldrh r2, [r9, #0x3a]
	ldr r0, _020CF0B4 ; =0x0209BA20
	add r1, r1, #0x400
	strh r2, [r10, #0xc2]
	ldrh lr, [r9, #0x3c]
	ldrh r12, [r9, #0x3e]
	mov r2, r8
	strh lr, [r10, #0xc4]
	strh r12, [r10, #0xc6]
	ldrh lr, [r9, #0x40]
	ldrh r12, [r9, #0x42]
	strh lr, [r10, #0xc8]
	strh r12, [r10, #0xca]
	ldrh r12, [r9, #0x44]
	strh r12, [r10, #0xcc]
	ldrb r12, [sp, #0x24e]
	strb r12, [r4, #0x7ce]
	ldrb r12, [sp, #0x24f]
	strb r12, [r4, #0x7cf]
	ldrb r12, [sp, #0x250]
	strb r12, [r4, #0x7d0]
	ldrb r12, [sp, #0x251]
	strb r12, [r4, #0x7d1]
	ldrh r12, [r9, #0x4a]
	strh r12, [r10, #0xd2]
	ldrh r12, [r9, #0x4c]
	strh r12, [r10, #0xd4]
	ldrb r12, [sp, #0x256]
	strb r12, [r4, #0x7d6]
	ldrb r12, [sp, #0x257]
	strb r12, [r4, #0x7d7]
	ldrb lr, [sp, #0x258]
	ldrb r12, [sp, #0x259]
	strb lr, [r4, #0x7d8]
	strb r12, [r4, #0x7d9]
	ldrh r9, [r9, #0x52]
	strh r9, [r10, #0xda]
	str r6, [sp]
	str r3, [sp, #4]
	bl FUN_0204e79c
	ldr r0, [r4, #0x34]
	cmp r0, #8
	bne _020CEBE8
	mov r0, r4
	mov r1, r8
	bl FUN_ov4_020d4c18
	add r1, r4, #0x374
	mov r0, r4
	mov r2, r8
	add r1, r1, #0x400
	bl FUN_ov4_020d4a50
	mov r1, #4
	mov r0, #0x10
	str r1, [r4, #0x30]
	str r0, [r4, #0x34]
_020CEBE8:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x10
	beq _020CEC54
	ldr r1, [r4, #0x34]
	ldr r0, _020CF0B8 ; =0x000005BE
	tst r1, r0
	beq _020CEC54
	add r0, r4, #0x374
	add r0, r0, #0x400
	mov r1, #0
	mov r2, #0x98
	bl MI_CpuFill8
	ldr r1, [r4, #0x994]
	add r0, r4, #0xc
	bic r2, r1, #2
	add r3, r0, #0x800
	ldr r1, [r4, #0x34]
	bic r0, r2, #4
	str r3, [r4, #0x7dc]
	str r0, [r4, #0x994]
	strb r8, [r4, #0xa14]
	cmp r1, #0x10
	bne _020CEC54
	mov r1, #8
	mov r0, r4
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
_020CEC54:
	ldr r0, [sp, #0xfc]
	tst r0, #0x10
	beq _020CECAC
	mov r0, #0
	add r9, sp, #8
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r6, #7
_020CEC78:
	stmia r9!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	subs r6, r6, #1
	bne _020CEC78
	stmia r9!, {r0, r1, r2, r3}
	mov r0, #0x10
	strb r0, [sp, #0xa]
	ldr r2, [r4, #0x34]
	add r1, sp, #8
	mov r0, r4
	strb r2, [sp, #0xb]
	str r8, [sp, #0xc]
	bl FUN_ov4_020ce72c
_020CECAC:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x4000
	beq _020CECF0
	ldr r0, [r4, #0x34]
	strb r8, [r4, #0xa15]
	tst r0, #0x470
	bne _020CECF0
	ldr r0, _020CF0AC ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x2d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CECF0:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x80
	beq _020CED74
	ldr r1, [r4, #0x994]
	tst r1, #0x10
	bne _020CED74
	ldr r0, [r4, #0x34]
	tst r0, #0x450
	beq _020CED44
	orr r0, r1, #0x10
	bic r0, r0, #2
	bic r1, r0, #4
	mov r0, r4
	strb r7, [r4, #0x679]
	str r1, [r4, #0x994]
	bl FUN_ov4_020d60b8
	mov r1, #0x20
	mov r0, r4
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	b _020CEE98
_020CED44:
	tst r0, #0x20
	bne _020CEE98
	ldr r0, _020CF0AC ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x2d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CED74:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x40
	beq _020CEE98
	ldr r0, [r4, #0x994]
	tst r0, #8
	bne _020CEE98
	ldr r0, [r4, #0x34]
	cmp r0, #0x40
	bne _020CEE14
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020CEE14
	ldr r1, [r4, #0x994]
	add r0, r4, #0x1a8
	orr r1, r1, #8
	str r1, [r4, #0x994]
	ldr r1, [sp, #0x1ec]
	add r7, sp, #0x1f4
	str r1, [r4, #0x9a0]
	ldr r1, [sp, #0x1f0]
	add r6, r0, #0x800
	str r1, [r4, #0x9a4]
	mov r5, #6
_020CEDDC:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CEDDC
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	mov r2, #0x3c
	ldr r0, _020CF0BC ; =0x0209AC44
	mov r1, #0x28
	strb r8, [r4, #0x679]
	str r2, [r4, #0x66c]
	bl FUN_0202cf6c
	add sp, sp, #0x2d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CEE14:
	ldr r0, [r4, #0x34]
	cmp r0, #0x40
	bne _020CEE64
	ldr r0, [r5, #0x5c]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020CEE64
	ldr r1, [r4, #0x994]
	ldr r0, _020CF0BC ; =0x0209AC44
	orr r3, r1, #8
	mov r2, #0x3c
	mov r1, #0x28
	str r3, [r4, #0x994]
	strb r8, [r4, #0x679]
	str r2, [r4, #0x66c]
	bl FUN_0202cf6c
	add sp, sp, #0x2d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CEE64:
	ldr r0, [r4, #0x34]
	tst r0, #0x470
	bne _020CEE98
	ldr r0, _020CF0AC ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x2d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CEE98:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x100
	beq _020CEF40
	ldr r1, [r4, #0x994]
	tst r1, #0x20
	bne _020CEF40
	ldr r0, [r4, #0x34]
	tst r0, #0x40
	beq _020CEF40
	orr r0, r1, #0x20
	str r0, [r4, #0x994]
	ldr r1, [sp, #0x1ec]
	add r0, r4, #0x1a8
	str r1, [r4, #0x9a0]
	ldr r1, [sp, #0x1f0]
	add r7, sp, #0x1f4
	str r1, [r4, #0x9a4]
	add r6, r0, #0x800
	mov r5, #6
_020CEEE4:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CEEE4
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r5, _020CF0C0 ; =0x0209A5D0
	ldr r1, [r4, #0x99c]
	mov r0, r5
	bl FUN_02062800
	ldr r2, [r4, #0x99c]
	mov r0, r5
	mov r1, #0
	bl FUN_020628dc
	mov r1, r0
	mov r0, r4
	bl FUN_ov4_020d60f8
	mov r1, #2
	mov r0, #7
	add sp, sp, #0x2d8
	str r1, [r4, #0x40]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CEF40:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x200
	beq _020CEFE8
	ldr r1, [r4, #0x994]
	tst r1, #0x40
	bne _020CEFE8
	ldr r0, [r4, #0x34]
	tst r0, #0x40
	beq _020CEFE8
	orr r0, r1, #0x40
	str r0, [r4, #0x994]
	ldr r1, [sp, #0x1ec]
	add r0, r4, #0x1a8
	str r1, [r4, #0x9a0]
	ldr r1, [sp, #0x1f0]
	add r7, sp, #0x1f4
	str r1, [r4, #0x9a4]
	add r6, r0, #0x800
	mov r5, #6
_020CEF8C:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CEF8C
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	ldr r5, _020CF0C0 ; =0x0209A5D0
	ldr r1, [r4, #0x99c]
	mov r0, r5
	bl FUN_02062800
	ldr r2, [r4, #0x99c]
	mov r0, r5
	mov r1, #0
	bl FUN_020628dc
	mov r1, r0
	mov r0, r4
	bl FUN_ov4_020d60f8
	mov r1, #3
	mov r0, #7
	add sp, sp, #0x2d8
	str r1, [r4, #0x40]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CEFE8:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x400
	beq _020CF06C
	ldr r1, [r4, #0x994]
	tst r1, #0x80
	bne _020CF06C
	ldr r0, [r4, #0x34]
	tst r0, #0x40
	beq _020CF06C
	orr r0, r1, #0x80
	str r0, [r4, #0x994]
	ldr r1, [sp, #0x1ec]
	add r0, r4, #0x1a8
	str r1, [r4, #0x9a0]
	ldr r1, [sp, #0x1f0]
	add r7, sp, #0x1f4
	str r1, [r4, #0x9a4]
	add r6, r0, #0x800
	mov r5, #6
_020CF034:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CF034
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	mov r0, r4
	bl FUN_ov4_020d4e84
	mov r0, r4
	bl FUN_ov4_020cd33c
	mov r1, #0x80
	mov r0, r4
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
_020CF06C:
	ldr r0, [sp, #0x1ec]
	tst r0, #0x2000
	addeq sp, sp, #0x2d8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4, #0x994]
	tst r0, #0x400
	addne sp, sp, #0x2d8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	orr r2, r0, #0x400
	mov r1, #0x2000
	mov r0, r4
	str r2, [r4, #0x994]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x2d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF0AC: .word unk_0209AEC0
_020CF0B0: .word ov4_020DB820
_020CF0B4: .word unk_0209BA20
_020CF0B8: .word 0x000005BE
_020CF0BC: .word unk_0209AC44
_020CF0C0: .word unk_0209A5D0
	arm_func_end FUN_ov4_020ce744

	arm_func_start FUN_ov4_020cf0c4
FUN_ov4_020cf0c4: ; 0x020CF0C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb8
	mov r10, r0
	ldr r0, [r10, #0x99c]
	ldr r1, [r10, #0x994]
	str r0, [sp, #8]
	bic r0, r1, #0x100
	bic r1, r0, #0x200
	ldr r0, [sp, #8]
	ldr r3, _020CFD08 ; =0x020A0700
	add r9, r0, #0x80
	mov r4, r9
	str r1, [r10, #0x994]
	mov r2, #0x200
_020CF0FC:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF0FC
	ldr r5, _020CFD0C ; =0x020A0B00
	add r7, r9, #0x400
	mov r4, #0x13
_020CF124:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CF124
	ldmia r7, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, r9, #0x13c
	ldr r4, _020CFD10 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020CF14C:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _020CF14C
	ldrb r3, [r9, #0x564]
	ldrb r2, [r9, #0x565]
	ldr r1, _020CFD14 ; =0x020A0640
	add r0, r9, #0x168
	strb r3, [r1, #0x624]
	strb r2, [r1, #0x625]
	ldrb r5, [r9, #0x566]
	ldrb r2, [r9, #0x567]
	ldr r3, _020CFD18 ; =0x020A0C68
	add r4, r0, #0x400
	strb r5, [r1, #0x626]
	strb r2, [r1, #0x627]
	mov r2, #0xa4
_020CF19C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF19C
	ldr r3, _020CFD1C ; =0x020A0DB0
	add r4, r9, #0x6b0
	mov r2, #0xa4
_020CF1C4:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF1C4
	add r0, r9, #0x3f8
	ldr r3, _020CFD20 ; =0x020A0EF8
	add r4, r0, #0x400
	mov r2, #0xc9
_020CF1F0:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF1F0
	add r0, r9, #0x8a
	ldr r3, _020CFD24 ; =0x020A108A
	add r4, r0, #0x900
	mov r2, #0xa4
_020CF21C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF21C
	add r0, r9, #0xa00
	ldrh r4, [r0, #0xd2]
	ldrh r3, [r0, #0xd4]
	ldr r2, _020CFD28 ; =0x020A1140
	add r1, r9, #0x2dc
	strh r4, [r2, #0x92]
	strh r3, [r2, #0x94]
	ldrh r3, [r0, #0xd6]
	ldrh r0, [r0, #0xd8]
	ldr r5, _020CFD2C ; =0x020A11DC
	add r7, r1, #0x800
	strh r3, [r2, #0x96]
	strh r0, [r2, #0x98]
	mov r4, #9
_020CF270:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CF270
	ldmia r7, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, r9, #0x378
	ldr r4, _020CFD30 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020CF298:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	strh r0, [r4, #2]
	strh r1, [r4], #4
	bne _020CF298
	ldrh r2, [r3]
	add r0, r9, #0xb00
	ldr r1, _020CFD34 ; =0x020A1240
	strh r2, [r4]
	ldrh r3, [r0, #0xb2]
	ldrh r2, [r0, #0xb4]
	ldr r5, _020CFD38 ; =0x020A12C0
	add r7, r9, #0xbc0
	strh r3, [r1, #0x72]
	strh r2, [r1, #0x74]
	ldrh r3, [r0, #0xb6]
	ldrh r2, [r0, #0xb8]
	mov r4, #0x34
	strh r3, [r1, #0x76]
	strh r2, [r1, #0x78]
	ldrh r2, [r0, #0xba]
	ldrh r0, [r0, #0xbc]
	strh r2, [r1, #0x7a]
	strh r0, [r1, #0x7c]
_020CF300:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CF300
	ldmia r7, {r0, r1}
	stmia r5, {r0, r1}
	ldrb r2, [r9, #0xf08]
	ldrb r0, [r9, #0xf09]
	ldr r3, _020CFD14 ; =0x020A0640
	add r1, r9, #0x12
	strb r2, [r3, #0xfc8]
	strb r0, [r3, #0xfc9]
	ldrb r5, [r9, #0xf0a]
	ldrb r4, [r9, #0xf0b]
	add r7, r1, #0xf00
	add r0, r9, #0xf00
	strb r5, [r3, #0xfca]
	strb r4, [r3, #0xfcb]
	ldrb r8, [r9, #0xf0c]
	ldrb r4, [r9, #0xf0d]
	ldr r2, _020CFD3C ; =0x020A1540
	ldr r5, _020CFD40 ; =0x020A1612
	strb r8, [r3, #0xfcc]
	strb r4, [r3, #0xfcd]
	ldrb r8, [r9, #0xf0e]
	ldrb r1, [r9, #0xf0f]
	mov r4, #0x1e
	strb r8, [r3, #0xfce]
	strb r1, [r3, #0xfcf]
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xd0]
_020CF37C:
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	add r7, r7, #2
	subs r4, r4, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020CF37C
	add r0, r9, #0xf00
	ldrh r3, [r0, #0x4e]
	ldr r2, _020CFD44 ; =0x020A1640
	add r1, r9, #0x364
	strh r3, [r2, #0xe]
	ldrh r3, [r0, #0x50]
	add r7, r1, #0xc00
	ldr r4, _020CFD48 ; =0x020A1664
	strh r3, [r2, #0x10]
	ldrb r1, [r9, #0xf52]
	mov r5, #0x14
	strb r1, [r2, #0x12]
	ldrb r1, [r9, #0xf53]
	strb r1, [r2, #0x13]
	ldrh r1, [r0, #0x54]
	strh r1, [r2, #0x14]
	ldrh r3, [r0, #0x56]
	ldrh r1, [r0, #0x58]
	strh r3, [r2, #0x16]
	strh r1, [r2, #0x18]
	ldrh r1, [r0, #0x5a]
	strh r1, [r2, #0x1a]
	ldrh r3, [r0, #0x5c]
	ldrh r1, [r0, #0x5e]
	strh r3, [r2, #0x1c]
	strh r1, [r2, #0x1e]
	ldrh r0, [r0, #0x60]
	strh r0, [r2, #0x20]
	ldrb r0, [r9, #0xf62]
	strb r0, [r2, #0x22]
	ldrb r0, [r9, #0xf63]
	strb r0, [r2, #0x23]
_020CF418:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CF418
	ldr r1, [r7]
	add r0, r9, #0xa8
	str r1, [r4]
	add r4, r0, #0x1000
	ldr r5, _020CFD4C ; =0x020A17A8
	ldmia r4!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldr r0, [r4]
	ldr r4, _020CFD50 ; =0x0209BA20
	str r0, [r5]
	ldr r1, [r10, #0x99c]
	mov r0, r4
	add r1, r1, #0x80
	bl FUN_02072dcc
	ldr r1, [r10, #0x99c]
	ldr r0, _020CFD54 ; =0x02099ED8
	add r1, r1, #0x68
	ldr r0, [r0]
	add r1, r1, #0x3c00
	bl FUN_02055d68
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r2, r0
	ldr r1, [r10, #0x67c]
	mov r0, r4
	bl FUN_0204c680
	str r0, [r10, #0x974]
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r4, #0
	mov r2, r0
	mov r0, r10
	mov r1, r4
	bl FUN_ov4_020d6364
	str r0, [r10, #0x97c]
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r10
	bl FUN_ov4_020d6384
	str r0, [r10, #0x980]
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r10
	mov r1, #2
	bl FUN_ov4_020d6364
	str r0, [r10, #0x984]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0x17]
	sub r1, r0, #1
	ldr r0, [sp, #8]
	strb r1, [r0, #0x17]
	ldr r0, [r10, #0x97c]
	cmp r0, #0
	streqb r4, [r10, #0x978]
	beq _020CF538
	ldr r0, [sp, #8]
	mov r1, #1
	ldrb r0, [r0, #0x16]
	sub r2, r0, #1
	ldr r0, [sp, #8]
	strb r2, [r0, #0x16]
	strb r1, [r10, #0x978]
_020CF538:
	ldr r11, _020CFD50 ; =0x0209BA20
	mov r5, #0
	add r4, r10, #0xd4
	b _020CF564
_020CF548:
	mov r1, r5
	add r0, r4, #0x800
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r11
	bl FUN_02074a2c
	add r5, r5, #1
_020CF564:
	cmp r5, #6
	blt _020CF548
	ldr r0, [r10, #0x974]
	ldr r5, _020CFD54 ; =0x02099ED8
	cmp r0, #0
	beq _020CF630
	ldr r0, [r5]
	bl FUN_020553c0
	mov r7, r0
	mov r8, #0
	add r4, r10, #0x900
	b _020CF5B8
_020CF594:
	ldr r0, [r5]
	mov r1, r8
	bl FUN_0205545c
	mov r6, r0
	ldrh r1, [r4, #0x22]
	ldrh r0, [r6, #0x20]
	cmp r0, r1
	beq _020CF5C0
	add r8, r8, #1
_020CF5B8:
	cmp r8, r7
	blt _020CF594
_020CF5C0:
	cmp r6, #0
	ldr r4, _020CFD54 ; =0x02099ED8
	mov r5, #0
	beq _020CF5F8
	ldr r1, [r6, #0x84]
	add r0, r10, #0x800
	str r1, [r10, #0x878]
	ldr r1, [r6, #0x88]
	str r1, [r10, #0x87c]
	ldr r1, [r6, #0x8c]
	str r1, [r10, #0x880]
	ldrh r1, [r6, #0x6a]
	strh r1, [r0, #0x84]
	b _020CF614
_020CF5F8:
	add r0, r10, #0x78
	mov r1, r5
	add r0, r0, #0x800
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r10, #0x800
	strh r5, [r0, #0x84]
_020CF614:
	ldr r0, [r4]
	ldr r1, [r6, #0x5c]
	mov r2, #1
	bl FUN_02055938
	ldr r0, [r4]
	ldr r1, [r6, #0x5c]
	bl FUN_02055274
_020CF630:
	add r0, r10, #0x900
	ldrh r2, [r0, #0x22]
	mov r0, r11
	mov r1, #2
	bl FUN_0204d354
	add r0, r10, #0x900
	ldrh r2, [r0, #0x22]
	ldr r1, [r10, #0x67c]
	mov r0, r11
	bl FUN_0204d3c0
	cmp r0, #0
	bne _020CF664
	bl OS_Terminate
_020CF664:
	ldr r0, [r10, #0x974]
	cmp r0, #0
	beq _020CF910
	ldr r1, [r10, #0x67c]
	mov r2, #0
	mov r0, r11
	str r2, [sp, #4]
	bl FUN_0205107c
	mov r5, r0
	ldr r1, [r10, #0x67c]
	mov r0, r11
	bl FUN_0205106c
	mov r6, r0
	ldr r7, [sp, #4]
	b _020CF7E4
_020CF6A0:
	mov r0, r6
	mov r1, r7
	bl FUN_02050244
	mov r1, r0
	ldr r0, _020CFD58 ; =0x0209A11C
	mov r2, #0
	ldr r0, [r0]
	bl FUN_0206c7dc
	cmp r0, #0
	bne _020CF7E0
	mov r11, #0
	mov r8, #1
	b _020CF7D8
_020CF6D4:
	mov r0, r5
	sub r1, r8, #1
	bl FUN_0204fbe8
	mov r4, r0
	ldr r0, _020CFD58 ; =0x0209A11C
	mov r1, r4
	ldr r0, [r0]
	mov r2, r11
	bl FUN_0206c7dc
	cmp r0, #0
	cmpne r4, #0
	beq _020CF7D4
	mov r0, r6
	mov r1, r4
	bl FUN_020502a8
	cmp r0, #0
	bne _020CF7D4
	mov r0, r6
	mov r1, r7
	mov r2, r4
	mov r3, r11
	bl FUN_020501bc
	mov r0, r4
	mov r1, r11
	bl FUN_ov16_020efa9c
	add r4, sp, #0x20
	mov r8, r0
	mov r3, #0x1a
_020CF744:
	ldrh r2, [r8]
	ldrh r1, [r8, #2]
	add r8, r8, #4
	subs r3, r3, #1
	strh r1, [r4, #2]
	strh r2, [r4], #4
	bne _020CF744
	ldr r1, [r0, #0x68]
	add r4, sp, #0x8c
	str r1, [sp, #0x88]
	add r8, r0, #0x6c
	mov r3, #6
_020CF774:
	ldrh r2, [r8]
	ldrh r1, [r8, #2]
	add r8, r8, #4
	subs r3, r3, #1
	strh r1, [r4, #2]
	strh r2, [r4], #4
	bne _020CF774
	ldr r2, [r0, #0x84]
	mov r1, #1
	str r1, [sp, #4]
	str r2, [sp, #0xa4]
	ldr r1, [r0, #0x88]
	str r1, [sp, #0xa8]
	ldrb r1, [r0, #0x8c]
	strb r1, [sp, #0xac]
	ldrh r1, [r0, #0x8e]
	strh r1, [sp, #0xae]
	ldr r1, [r0, #0x90]
	str r1, [sp, #0xb0]
	ldrsh r1, [r0, #0x94]
	strh r1, [sp, #0xb4]
	ldrb r0, [r0, #0x96]
	strb r0, [sp, #0xb6]
	b _020CF7E0
_020CF7D4:
	add r8, r8, #1
_020CF7D8:
	cmp r8, #0x10
	ble _020CF6D4
_020CF7E0:
	add r7, r7, #1
_020CF7E4:
	ldr r0, _020CFD50 ; =0x0209BA20
	bl FUN_ov16_020edfb0
	cmp r7, r0
	blt _020CF6A0
	ldr r0, [sp, #4]
	ldr r5, _020CFD54 ; =0x02099ED8
	cmp r0, #0
	beq _020CF910
	add r4, sp, #0x20
	mov r0, r4
	bl FUN_0206dcd4
	ldrh r6, [r0, #0xe]
	mov r0, r4
	bl FUN_0206cbf8
	mov r1, #1
	str r1, [sp]
	mov r1, r0
	ldr r0, [r5]
	mov r3, r6
	mov r2, #0
	bl FUN_02055004
	mov r4, r0
	mov r0, #0
	sub r0, r0, #1
	cmp r4, r0
	beq _020CF860
	ldr r2, [r10, #0x974]
	ldr r0, [r5]
	mov r1, r4
	sub r2, r2, #1
	bl FUN_02055890
_020CF860:
	ldr r5, _020CFD54 ; =0x02099ED8
	mov r1, r4
	ldr r0, [r5]
	bl FUN_020552cc
	ldr r1, [r10, #0x878]
	mov r4, r0
	cmp r1, #0
	ldreq r0, [r10, #0x87c]
	cmpeq r0, #0
	ldreq r0, [r10, #0x880]
	cmpeq r0, #0
	addeq r0, r10, #0x800
	ldreqh r0, [r0, #0x84]
	cmpeq r0, #0
	bne _020CF8D4
	ldr r0, [r5]
	mov r1, #0
	bl FUN_020552dc
	ldr r6, [r0, #0x84]
	ldr r3, [r0, #0x88]
	ldr r2, [r0, #0x8c]
	ldr r0, [r5]
	mov r1, #0
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	bl FUN_020552dc
	ldrh r5, [r0, #0x6a]
	b _020CF8F4
_020CF8D4:
	add r0, r10, #0x800
	ldr r3, [r10, #0x878]
	ldr r2, [r10, #0x87c]
	ldr r1, [r10, #0x880]
	ldrh r5, [r0, #0x84]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
_020CF8F4:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [r4, #0x84]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0x88]
	str r0, [r4, #0x8c]
	strh r5, [r4, #0x6a]
_020CF910:
	add r5, sp, #0xc
	mov r4, #8
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #1
	str r0, [sp]
	ldr r1, [r10, #0x67c]
	ldr r0, _020CFD50 ; =0x0209BA20
	mov r2, r5
	mov r3, #4
	bl FUN_0204b2f4
	ldr r1, [sp, #8]
	mov r0, r5
	mov r2, r4
	add r1, r1, #0x58
	bl MI_CpuCopy8
	ldr r4, _020CFD08 ; =0x020A0700
	mov r3, r9
	mov r2, #0x200
_020CF964:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF964
	ldr r6, _020CFD0C ; =0x020A0B00
	add r5, r9, #0x400
	mov r4, #0x13
_020CF98C:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CF98C
	ldmia r6, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, r9, #0x13c
	ldr r4, _020CFD10 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020CF9B4:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CF9B4
	ldr r1, _020CFD14 ; =0x020A0640
	add r0, r9, #0x168
	ldrb r5, [r1, #0x624]
	ldrb r2, [r1, #0x625]
	add r3, r0, #0x400
	ldr r4, _020CFD18 ; =0x020A0C68
	strb r5, [r9, #0x564]
	strb r2, [r9, #0x565]
	ldrb r5, [r1, #0x626]
	ldrb r0, [r1, #0x627]
	mov r2, #0xa4
	strb r5, [r9, #0x566]
	strb r0, [r9, #0x567]
_020CFA04:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFA04
	ldr r4, _020CFD1C ; =0x020A0DB0
	add r3, r9, #0x6b0
	mov r2, #0xa4
_020CFA2C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFA2C
	add r0, r9, #0x3f8
	ldr r4, _020CFD20 ; =0x020A0EF8
	add r3, r0, #0x400
	mov r2, #0xc9
_020CFA58:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFA58
	add r0, r9, #0x8a
	ldr r4, _020CFD24 ; =0x020A108A
	add r3, r0, #0x900
	mov r2, #0xa4
_020CFA84:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFA84
	ldr r2, _020CFD28 ; =0x020A1140
	add r1, r9, #0x2dc
	ldrh r4, [r2, #0x92]
	ldrh r3, [r2, #0x94]
	add r0, r9, #0xa00
	ldr r6, _020CFD2C ; =0x020A11DC
	strh r4, [r0, #0xd2]
	strh r3, [r0, #0xd4]
	ldrh r3, [r2, #0x96]
	ldrh r2, [r2, #0x98]
	add r5, r1, #0x800
	mov r4, #9
	strh r3, [r0, #0xd6]
	strh r2, [r0, #0xd8]
_020CFAD8:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CFAD8
	ldmia r6, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, r9, #0x378
	ldr r4, _020CFD30 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020CFB00:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020CFB00
	ldrh r2, [r4]
	ldr r1, _020CFD34 ; =0x020A1240
	add r0, r9, #0xb00
	strh r2, [r3]
	ldrh r3, [r1, #0x72]
	ldrh r2, [r1, #0x74]
	ldr r6, _020CFD38 ; =0x020A12C0
	add r5, r9, #0xbc0
	strh r3, [r0, #0xb2]
	strh r2, [r0, #0xb4]
	ldrh r3, [r1, #0x76]
	ldrh r2, [r1, #0x78]
	mov r4, #0x34
	strh r3, [r0, #0xb6]
	strh r2, [r0, #0xb8]
	ldrh r2, [r1, #0x7a]
	ldrh r1, [r1, #0x7c]
	strh r2, [r0, #0xba]
	strh r1, [r0, #0xbc]
_020CFB68:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CFB68
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldr r3, _020CFD14 ; =0x020A0640
	add r1, r9, #0x12
	ldrb r5, [r3, #0xfc8]
	ldrb r4, [r3, #0xfc9]
	ldr r2, _020CFD3C ; =0x020A1540
	add r0, r9, #0xf00
	strb r5, [r9, #0xf08]
	strb r4, [r9, #0xf09]
	ldrb r7, [r3, #0xfca]
	ldrb r4, [r3, #0xfcb]
	add r5, r1, #0xf00
	ldr r6, _020CFD40 ; =0x020A1612
	strb r7, [r9, #0xf0a]
	strb r4, [r9, #0xf0b]
	ldrb r7, [r3, #0xfcc]
	ldrb r1, [r3, #0xfcd]
	mov r4, #0x1e
	strb r7, [r9, #0xf0c]
	strb r1, [r9, #0xf0d]
	ldrb r7, [r3, #0xfce]
	ldrb r1, [r3, #0xfcf]
	strb r7, [r9, #0xf0e]
	strb r1, [r9, #0xf0f]
	ldrh r1, [r2, #0xd0]
	strh r1, [r0, #0x10]
_020CFBE4:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r4, r4, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020CFBE4
	ldr r2, _020CFD44 ; =0x020A1640
	add r1, r9, #0x364
	ldrh r3, [r2, #0xe]
	add r0, r9, #0xf00
	add r4, r1, #0xc00
	strh r3, [r0, #0x4e]
	ldrh r3, [r2, #0x10]
	ldr r7, _020CFD48 ; =0x020A1664
	mov r6, #0x14
	strh r3, [r0, #0x50]
	ldrb r1, [r2, #0x12]
	strb r1, [r9, #0xf52]
	ldrb r1, [r2, #0x13]
	strb r1, [r9, #0xf53]
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0x54]
	ldrh r3, [r2, #0x16]
	ldrh r1, [r2, #0x18]
	strh r3, [r0, #0x56]
	strh r1, [r0, #0x58]
	ldrh r1, [r2, #0x1a]
	strh r1, [r0, #0x5a]
	ldrh r3, [r2, #0x1c]
	ldrh r1, [r2, #0x1e]
	strh r3, [r0, #0x5c]
	strh r1, [r0, #0x5e]
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0x60]
	ldrb r0, [r2, #0x22]
	strb r0, [r9, #0xf62]
	ldrb r0, [r2, #0x23]
	strb r0, [r9, #0xf63]
_020CFC80:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs r6, r6, #1
	mov r5, #1
	bne _020CFC80
	ldr r1, [r7]
	ldr r6, _020CFD4C ; =0x020A17A8
	add r0, r9, #0xa8
	str r1, [r4]
	add r4, r0, #0x1000
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r2, [r6]
	ldr r0, _020CFD50 ; =0x0209BA20
	mov r1, r9
	str r2, [r4]
	bl FUN_02072b54
	ldr r0, _020CFD54 ; =0x02099ED8
	add r1, r9, #0x3e8
	ldr r0, [r0]
	add r1, r1, #0x3800
	bl FUN_020560b4
	ldr r2, [r10, #0x99c]
	ldr r0, _020CFD5C ; =0x0209A5D0
	mov r1, #0
	bl FUN_020626f4
	mov r1, r0
	mov r0, r10
	bl FUN_ov4_020d60f8
	mov r0, #6
	str r0, [r10, #0x30]
	str r5, [r10, #0x44]
	add sp, sp, #0xb8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFD08: .word unk_020A0700
_020CFD0C: .word unk_020A0B00
_020CFD10: .word unk_020A0C3C
_020CFD14: .word unk_020A0640
_020CFD18: .word unk_020A0C68
_020CFD1C: .word unk_020A0DB0
_020CFD20: .word unk_020A0EF8
_020CFD24: .word unk_020A108A
_020CFD28: .word unk_020A1140
_020CFD2C: .word unk_020A11DC
_020CFD30: .word unk_020A1278
_020CFD34: .word unk_020A1240
_020CFD38: .word unk_020A12C0
_020CFD3C: .word unk_020A1540
_020CFD40: .word unk_020A1612
_020CFD44: .word unk_020A1640
_020CFD48: .word unk_020A1664
_020CFD4C: .word unk_020A17A8
_020CFD50: .word unk_0209BA20
_020CFD54: .word unk_02099ED8
_020CFD58: .word unk_0209A11C
_020CFD5C: .word unk_0209A5D0
	arm_func_end FUN_ov4_020cf0c4

	arm_func_start FUN_ov4_020cfd60
FUN_ov4_020cfd60: ; 0x020CFD60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x88
	mov r10, r0
	ldr r0, [r10, #0x994]
	ldr r5, [r10, #0x99c]
	bic r0, r0, #0x100
	bic r0, r0, #0x200
	add r9, r5, #0x80
	ldr r3, _020D0990 ; =0x020A0700
	mov r4, r9
	str r0, [r10, #0x994]
	mov r2, #0x200
_020CFD90:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFD90
	ldr r7, _020D0994 ; =0x020A0B00
	add r8, r9, #0x400
	mov r4, #0x13
_020CFDB8:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CFDB8
	ldmia r8, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	add r3, r9, #0x13c
	ldr r4, _020D0998 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020CFDE0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	ldr r1, _020D099C ; =0x020A0640
	bne _020CFDE0
	ldrb r3, [r9, #0x564]
	ldrb r2, [r9, #0x565]
	add r0, r9, #0x168
	add r4, r0, #0x400
	strb r3, [r1, #0x624]
	strb r2, [r1, #0x625]
	ldrb r7, [r9, #0x566]
	ldrb r2, [r9, #0x567]
	ldr r3, _020D09A0 ; =0x020A0C68
	strb r7, [r1, #0x626]
	strb r2, [r1, #0x627]
	mov r2, #0xa4
_020CFE30:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFE30
	ldr r3, _020D09A4 ; =0x020A0DB0
	add r4, r9, #0x6b0
	mov r2, #0xa4
_020CFE58:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFE58
	add r0, r9, #0x3f8
	ldr r3, _020D09A8 ; =0x020A0EF8
	add r4, r0, #0x400
	mov r2, #0xc9
_020CFE84:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFE84
	add r0, r9, #0x8a
	ldr r3, _020D09AC ; =0x020A108A
	add r4, r0, #0x900
	mov r2, #0xa4
_020CFEB0:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CFEB0
	add r0, r9, #0xa00
	ldrh r4, [r0, #0xd2]
	ldrh r3, [r0, #0xd4]
	ldr r2, _020D09B0 ; =0x020A1140
	add r1, r9, #0x2dc
	strh r4, [r2, #0x92]
	strh r3, [r2, #0x94]
	ldrh r3, [r0, #0xd6]
	ldrh r0, [r0, #0xd8]
	ldr r7, _020D09B4 ; =0x020A11DC
	add r8, r1, #0x800
	strh r3, [r2, #0x96]
	strh r0, [r2, #0x98]
	mov r4, #9
_020CFF04:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CFF04
	ldmia r8, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	add r3, r9, #0x378
	ldr r4, _020D09B8 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020CFF2C:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	strh r0, [r4, #2]
	strh r1, [r4], #4
	bne _020CFF2C
	ldrh r2, [r3]
	add r0, r9, #0xb00
	ldr r1, _020D09BC ; =0x020A1240
	strh r2, [r4]
	ldrh r3, [r0, #0xb2]
	ldrh r2, [r0, #0xb4]
	ldr r7, _020D09C0 ; =0x020A12C0
	add r8, r9, #0xbc0
	strh r3, [r1, #0x72]
	strh r2, [r1, #0x74]
	ldrh r3, [r0, #0xb6]
	ldrh r2, [r0, #0xb8]
	mov r4, #0x34
	strh r3, [r1, #0x76]
	strh r2, [r1, #0x78]
	ldrh r2, [r0, #0xba]
	ldrh r0, [r0, #0xbc]
	strh r2, [r1, #0x7a]
	strh r0, [r1, #0x7c]
_020CFF94:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020CFF94
	ldmia r8, {r0, r1}
	stmia r7, {r0, r1}
	ldrb r2, [r9, #0xf08]
	ldrb r0, [r9, #0xf09]
	ldr r3, _020D099C ; =0x020A0640
	add r1, r9, #0x12
	strb r2, [r3, #0xfc8]
	strb r0, [r3, #0xfc9]
	ldrb r7, [r9, #0xf0a]
	ldrb r4, [r9, #0xf0b]
	add r8, r1, #0xf00
	add r0, r9, #0xf00
	strb r7, [r3, #0xfca]
	strb r4, [r3, #0xfcb]
	ldrb r11, [r9, #0xf0c]
	ldrb r4, [r9, #0xf0d]
	ldr r2, _020D09C4 ; =0x020A1540
	ldr r7, _020D09C8 ; =0x020A1612
	strb r11, [r3, #0xfcc]
	strb r4, [r3, #0xfcd]
	ldrb r11, [r9, #0xf0e]
	ldrb r1, [r9, #0xf0f]
	mov r4, #0x1e
	strb r11, [r3, #0xfce]
	strb r1, [r3, #0xfcf]
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xd0]
_020D0010:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r4, r4, #1
	strb r0, [r7, #1]
	strb r1, [r7], #2
	bne _020D0010
	add r0, r9, #0xf00
	ldrh r3, [r0, #0x4e]
	ldr r2, _020D09CC ; =0x020A1640
	add r1, r9, #0x364
	strh r3, [r2, #0xe]
	ldrh r3, [r0, #0x50]
	add r8, r1, #0xc00
	ldr r4, _020D09D0 ; =0x020A1664
	strh r3, [r2, #0x10]
	ldrb r1, [r9, #0xf52]
	mov r7, #0x14
	strb r1, [r2, #0x12]
	ldrb r1, [r9, #0xf53]
	strb r1, [r2, #0x13]
	ldrh r1, [r0, #0x54]
	strh r1, [r2, #0x14]
	ldrh r3, [r0, #0x56]
	ldrh r1, [r0, #0x58]
	strh r3, [r2, #0x16]
	strh r1, [r2, #0x18]
	ldrh r1, [r0, #0x5a]
	strh r1, [r2, #0x1a]
	ldrh r3, [r0, #0x5c]
	ldrh r1, [r0, #0x5e]
	strh r3, [r2, #0x1c]
	strh r1, [r2, #0x1e]
	ldrh r0, [r0, #0x60]
	strh r0, [r2, #0x20]
	ldrb r0, [r9, #0xf62]
	strb r0, [r2, #0x22]
	ldrb r0, [r9, #0xf63]
	strb r0, [r2, #0x23]
_020D00AC:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _020D00AC
	ldr r1, [r8]
	add r0, r9, #0xa8
	str r1, [r4]
	add r4, r0, #0x1000
	ldr r7, _020D09D4 ; =0x020A17A8
	ldmia r4!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldr r0, [r4]
	ldr r4, _020D09D8 ; =0x0209BA20
	str r0, [r7]
	ldr r1, [r10, #0x99c]
	mov r0, r4
	add r1, r1, #0x80
	bl FUN_02072dcc
	ldr r1, [r10, #0x99c]
	ldr r0, _020D09DC ; =0x02099ED8
	add r1, r1, #0x68
	ldr r0, [r0]
	add r1, r1, #0x3c00
	bl FUN_02055d68
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r2, r0
	ldr r1, [r10, #0x67c]
	mov r0, r4
	bl FUN_0204c680
	str r0, [r10, #0x974]
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r4, #0
	mov r2, r0
	mov r0, r10
	mov r1, r4
	bl FUN_ov4_020d6364
	str r0, [r10, #0x97c]
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r10
	bl FUN_ov4_020d6384
	str r0, [r10, #0x980]
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r2, r0
	mov r0, r10
	mov r1, #2
	bl FUN_ov4_020d6364
	str r0, [r10, #0x984]
	ldrb r0, [r5, #0x17]
	sub r0, r0, #1
	strb r0, [r5, #0x17]
	ldr r0, [r10, #0x97c]
	cmp r0, #0
	streqb r4, [r10, #0x978]
	beq _020D01BC
	ldrb r1, [r5, #0x16]
	mov r0, #1
	sub r1, r1, #1
	strb r1, [r5, #0x16]
	strb r0, [r10, #0x978]
_020D01BC:
	mov r7, #0
	add r4, r10, #0xd4
	b _020D01E4
_020D01C8:
	mov r1, r7
	add r0, r4, #0x800
	bl FUN_0206cdf8
	mov r1, r0
	ldr r0, _020D09D8 ; =0x0209BA20
	bl FUN_02074a2c
	add r7, r7, #1
_020D01E4:
	cmp r7, #6
	blt _020D01C8
	ldr r0, [r10, #0x974]
	ldr r11, _020D09DC ; =0x02099ED8
	cmp r0, #0
	beq _020D02B4
	ldr r0, [r11]
	bl FUN_020553c0
	mov r7, r0
	mov r8, #0
	add r4, r10, #0xd4
	b _020D023C
_020D0214:
	ldr r0, [r11]
	mov r1, r8
	bl FUN_0205545c
	mov r6, r0
	add r0, r4, #0x800
	bl FUN_0206cbf8
	ldrh r1, [r6, #0x20]
	cmp r1, r0
	beq _020D0244
	add r8, r8, #1
_020D023C:
	cmp r8, r7
	blt _020D0214
_020D0244:
	cmp r6, #0
	ldr r4, _020D09DC ; =0x02099ED8
	mov r7, #0
	beq _020D027C
	ldr r1, [r6, #0x84]
	add r0, r10, #0x800
	str r1, [r10, #0x878]
	ldr r1, [r6, #0x88]
	str r1, [r10, #0x87c]
	ldr r1, [r6, #0x8c]
	str r1, [r10, #0x880]
	ldrh r1, [r6, #0x6a]
	strh r1, [r0, #0x84]
	b _020D0298
_020D027C:
	add r0, r10, #0x78
	mov r1, r7
	add r0, r0, #0x800
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r10, #0x800
	strh r7, [r0, #0x84]
_020D0298:
	ldr r0, [r4]
	ldr r1, [r6, #0x5c]
	mov r2, #1
	bl FUN_02055938
	ldr r0, [r4]
	ldr r1, [r6, #0x5c]
	bl FUN_02055274
_020D02B4:
	add r0, r10, #0x900
	ldrh r2, [r0, #0x22]
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r1, #2
	bl FUN_0204d354
	add r0, r10, #0xd4
	add r0, r0, #0x800
	bl FUN_0206cbf8
	mov r2, r0
	ldr r1, [r10, #0x67c]
	ldr r0, _020D09D8 ; =0x0209BA20
	bl FUN_0204d3c0
	cmp r0, #0
	bne _020D02F0
	bl OS_Terminate
_020D02F0:
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _020D09D8 ; =0x0209BA20
	add r2, sp, #0x20
	bl FUN_0204bd64
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r6, r0
	add r0, r10, #0xd4
	add r0, r0, #0x800
	mov r1, #1
	bl FUN_0206d9b0
	mov r4, r0
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cc34
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _020D09D8 ; =0x0209BA20
	ldr r1, [r10, #0x67c]
	ldr r3, [r10, #0x97c]
	mov r2, r6
	bl FUN_0204c778
	cmp r0, #0
	bne _020D036C
	bl OS_Terminate
_020D036C:
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020D0390
	mov r1, #0x20
	bl FUN_0206d620
_020D0390:
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, #1
	str r1, [sp]
	mov r2, r0
	ldr r3, [r10, #0x984]
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r1, #2
	bl FUN_0204c92c
	ldr r0, [r10, #0x974]
	cmp r0, #0
	beq _020D050C
	ldr r1, [r10, #0x67c]
	ldr r0, _020D09D8 ; =0x0209BA20
	bl FUN_0205106c
	add r1, r10, #0x374
	mov r4, r0
	add r0, r1, #0x400
	bl FUN_0206cbf8
	ldr r1, [r10, #0x974]
	mov r2, r0
	ldr r3, [r10, #0x980]
	mov r0, r4
	sub r1, r1, #1
	bl FUN_020501bc
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrh r4, [r0, #0xe]
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, #1
	mov r3, r4
	str r1, [sp]
	mov r6, #0
	ldr r4, _020D09DC ; =0x02099ED8
	mov r1, r0
	ldr r0, [r4]
	mov r2, r6
	bl FUN_02055004
	mov r7, r0
	sub r0, r6, #1
	cmp r7, r0
	beq _020D045C
	ldr r2, [r10, #0x974]
	ldr r0, [r4]
	mov r1, r7
	sub r2, r2, #1
	bl FUN_02055890
_020D045C:
	ldr r4, _020D09DC ; =0x02099ED8
	mov r1, r7
	ldr r0, [r4]
	bl FUN_020552cc
	ldr r1, [r10, #0x878]
	mov r7, r0
	cmp r1, #0
	ldreq r0, [r10, #0x87c]
	cmpeq r0, #0
	ldreq r0, [r10, #0x880]
	cmpeq r0, #0
	addeq r0, r10, #0x800
	ldreqh r0, [r0, #0x84]
	cmpeq r0, #0
	bne _020D04D0
	ldr r0, [r4]
	mov r1, r6
	bl FUN_020552dc
	ldr r8, [r0, #0x84]
	ldr r3, [r0, #0x88]
	ldr r2, [r0, #0x8c]
	ldr r0, [r4]
	mov r1, r6
	str r8, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	bl FUN_020552dc
	ldrh r4, [r0, #0x6a]
	b _020D04F0
_020D04D0:
	add r0, r10, #0x800
	ldr r3, [r10, #0x878]
	ldr r2, [r10, #0x87c]
	ldr r1, [r10, #0x880]
	ldrh r4, [r0, #0x84]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
_020D04F0:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [r7, #0x84]
	ldr r0, [sp, #0x1c]
	str r1, [r7, #0x88]
	str r0, [r7, #0x8c]
	strh r4, [r7, #0x6a]
_020D050C:
	mov r7, #0
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r1, r7
	bl FUN_0207249c
	add r1, r10, #0x374
	mov r11, r0
	add r0, r1, #0x400
	bl FUN_0206cbf8
	mov r1, r7
	bl FUN_ov16_020efa9c
	add r1, r10, #0x374
	mov r6, r0
	add r0, r1, #0x400
	bl FUN_0206dcd4
	ldrsh r4, [r0, #0x18]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206df6c
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsh r4, [r0, #0x1a]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206dfd4
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x4f]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e50c
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x50]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e574
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x51]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e5dc
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x52]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e644
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x53]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e6ac
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x54]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e714
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r4, [r0, #0x55]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e77c
	add r4, r10, #0x374
	b _020D06AC
_020D0660:
	add r0, r4, #0x400
	bl FUN_0206dcd4
	add r0, r0, r7, lsl #1
	ldrh r8, [r0, #0x38]
	mov r0, r6
	bl FUN_0206dcd4
	mov r2, r8
	mov r1, r7
	bl FUN_0206e354
	add r0, r4, #0x400
	bl FUN_0206dcd4
	add r0, r0, r7
	ldrb r8, [r0, #0x44]
	mov r0, r6
	bl FUN_0206dcd4
	mov r2, r8
	mov r1, r7
	bl FUN_0206e3c8
	add r7, r7, #1
_020D06AC:
	cmp r7, #6
	blt _020D0660
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrb r4, [r0, #0x5d]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e9ec
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldr r4, [r0]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206dcf0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r2, [r11, #0x30]
	mov r1, #0
	bl FUN_0206def8
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, #1
	mov r2, #0
	bl FUN_0206def8
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, #2
	mov r2, #0
	bl FUN_0206def8
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r3, r0
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r2, #1
	mov r1, r6
	bl FUN_0204e79c
	mov r0, r10
	mov r1, r6
	bl FUN_ov4_020d1cf4
	mov r0, r6
	bl FUN_0206dcd4
	ldrsh r4, [r0, #0x18]
	mov r0, r6
	bl FUN_0206dcd4
	ldrsh r7, [r0, #0x34]
	mov r0, r6
	bl FUN_0206dcd4
	add r1, r7, r4
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl FUN_0206e0bc
	mov r0, r6
	ldr r4, _020D09D8 ; =0x0209BA20
	bl FUN_0206dcd4
	ldrsh r8, [r0, #0x1a]
	mov r0, r6
	bl FUN_0206dcd4
	ldrsh r7, [r0, #0x36]
	mov r0, r6
	bl FUN_0206dcd4
	add r1, r7, r8
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl FUN_0206e124
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _020D09A4 ; =0x020A0DB0
	bl FUN_02050854
	ldrb r0, [r5, #0x17]
	mov r7, #0
	mov r8, #8
	add r0, r0, #1
	strb r0, [r5, #0x17]
	ldrb r0, [r10, #0x978]
	add r6, sp, #0xc
	mov r1, r7
	cmp r0, #0
	ldrneb r0, [r5, #0x16]
	mov r2, r8
	addne r0, r0, #1
	strneb r0, [r5, #0x16]
	mov r0, r6
	bl MI_CpuFill8
	mov r0, #1
	str r0, [sp]
	ldr r1, [r10, #0x67c]
	mov r0, r4
	mov r2, r6
	mov r3, #4
	bl FUN_0204b2f4
	mov r0, r6
	add r1, r5, #0x58
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, _020D099C ; =0x020A0640
	ldr r2, [r10, #0x96c]
	ldr r1, [r0, #0x4d8]
	rsb r2, r2, #0
	ldr r0, _020D0994 ; =0x020A0B00
	add r1, r1, r2
	bl FUN_020744f0
	add r6, r10, #0x374
	ldr r5, _020D09D8 ; =0x0209BA20
	b _020D0888
_020D086C:
	mov r1, r7
	add r0, r6, #0x400
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r4
	bl FUN_02074a2c
	add r7, r7, #1
_020D0888:
	cmp r7, #6
	blt _020D086C
	mov r6, #0
	mov r0, r5
	mov r1, r6
	bl FUN_0204da5c
	mov r0, r5
	mov r1, r6
	bl FUN_0205107c
	mov r5, r0
	mov r7, r6
	mov r8, r6
	b _020D0938
_020D08BC:
	mov r0, r5
	mov r1, r7
	bl FUN_0204fbe8
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _020D0934
	bl FUN_0206cbf8
	cmp r0, #1
	orreq r8, r8, #1
	beq _020D090C
	mov r0, r4
	bl FUN_0206cbf8
	cmp r0, #0x1e
	orreq r8, r8, #2
	beq _020D090C
	mov r0, r4
	bl FUN_0206cbf8
	cmp r0, #2
	orreq r8, r8, #4
_020D090C:
	mov r0, r4
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r5
	bl FUN_0204fd68
	cmp r0, #1
	bne _020D0934
	mov r0, r4
	bl FUN_0206cbf8
	mov r6, r0
_020D0934:
	add r7, r7, #1
_020D0938:
	cmp r7, #0x10
	blt _020D08BC
	tst r8, #1
	beq _020D0954
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r2, #1
	b _020D0984
_020D0954:
	tst r8, #2
	beq _020D0974
	ldr r3, _020D09E0 ; =0x00000449
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r1, #0
	mov r2, #0x1e
	strh r3, [r11, #0x2e]
	b _020D09FC
_020D0974:
	tst r8, #4
	beq _020D09E4
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r2, #2
_020D0984:
	mov r1, #0
	strh r2, [r11, #0x2e]
	b _020D09FC
_020D0990: .word unk_020A0700
_020D0994: .word unk_020A0B00
_020D0998: .word unk_020A0C3C
_020D099C: .word unk_020A0640
_020D09A0: .word unk_020A0C68
_020D09A4: .word unk_020A0DB0
_020D09A8: .word unk_020A0EF8
_020D09AC: .word unk_020A108A
_020D09B0: .word unk_020A1140
_020D09B4: .word unk_020A11DC
_020D09B8: .word unk_020A1278
_020D09BC: .word unk_020A1240
_020D09C0: .word unk_020A12C0
_020D09C4: .word unk_020A1540
_020D09C8: .word unk_020A1612
_020D09CC: .word unk_020A1640
_020D09D0: .word unk_020A1664
_020D09D4: .word unk_020A17A8
_020D09D8: .word unk_0209BA20
_020D09DC: .word unk_02099ED8
_020D09E0: .word 0x00000449
_020D09E4:
	cmp r6, #0
	beq _020D0A00
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r2, r6
	mov r1, #0
	strh r6, [r11, #0x2e]
_020D09FC:
	bl FUN_0204d864
_020D0A00:
	ldr r4, _020D0990 ; =0x020A0700
	mov r3, r9
	mov r2, #0x200
_020D0A0C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0A0C
	ldr r7, _020D0994 ; =0x020A0B00
	add r6, r9, #0x400
	mov r5, #0x13
_020D0A34:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	ldr r4, _020D099C ; =0x020A0640
	bne _020D0A34
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r3, r9, #0x13c
	ldr r5, _020D0998 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020D0A60:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0A60
	ldrb r2, [r4, #0x624]
	ldrb r1, [r4, #0x625]
	add r0, r9, #0x168
	ldr r5, _020D09A0 ; =0x020A0C68
	strb r2, [r9, #0x564]
	strb r1, [r9, #0x565]
	ldrb r6, [r4, #0x626]
	ldrb r1, [r4, #0x627]
	add r3, r0, #0x400
	mov r2, #0xa4
	strb r6, [r9, #0x566]
	strb r1, [r9, #0x567]
_020D0AAC:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0AAC
	ldr r4, _020D09A4 ; =0x020A0DB0
	add r3, r9, #0x6b0
	mov r2, #0xa4
_020D0AD4:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0AD4
	add r0, r9, #0x3f8
	ldr r4, _020D09A8 ; =0x020A0EF8
	add r3, r0, #0x400
	mov r2, #0xc9
_020D0B00:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0B00
	add r0, r9, #0x8a
	ldr r4, _020D09AC ; =0x020A108A
	add r3, r0, #0x900
	mov r2, #0xa4
_020D0B2C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0B2C
	ldr r2, _020D09B0 ; =0x020A1140
	add r1, r9, #0x2dc
	ldrh r4, [r2, #0x92]
	ldrh r3, [r2, #0x94]
	add r0, r9, #0xa00
	ldr r6, _020D09B4 ; =0x020A11DC
	strh r4, [r0, #0xd2]
	strh r3, [r0, #0xd4]
	ldrh r3, [r2, #0x96]
	ldrh r2, [r2, #0x98]
	add r5, r1, #0x800
	mov r4, #9
	strh r3, [r0, #0xd6]
	strh r2, [r0, #0xd8]
_020D0B80:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020D0B80
	ldmia r6, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, r9, #0x378
	ldr r4, _020D09B8 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020D0BA8:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020D0BA8
	ldrh r2, [r4]
	ldr r1, _020D09BC ; =0x020A1240
	add r0, r9, #0xb00
	strh r2, [r3]
	ldrh r3, [r1, #0x72]
	ldrh r2, [r1, #0x74]
	ldr r6, _020D09C0 ; =0x020A12C0
	add r5, r9, #0xbc0
	strh r3, [r0, #0xb2]
	strh r2, [r0, #0xb4]
	ldrh r3, [r1, #0x76]
	ldrh r2, [r1, #0x78]
	mov r4, #0x34
	strh r3, [r0, #0xb6]
	strh r2, [r0, #0xb8]
	ldrh r2, [r1, #0x7a]
	ldrh r1, [r1, #0x7c]
	strh r2, [r0, #0xba]
	strh r1, [r0, #0xbc]
_020D0C10:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	ldr r3, _020D099C ; =0x020A0640
	bne _020D0C10
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldrb r4, [r3, #0xfc8]
	ldrb r0, [r3, #0xfc9]
	add r1, r9, #0x12
	ldr r2, _020D09C4 ; =0x020A1540
	strb r4, [r9, #0xf08]
	strb r0, [r9, #0xf09]
	ldrb r5, [r3, #0xfca]
	ldrb r4, [r3, #0xfcb]
	add r0, r9, #0xf00
	ldr r6, _020D09C8 ; =0x020A1612
	strb r5, [r9, #0xf0a]
	strb r4, [r9, #0xf0b]
	ldrb r8, [r3, #0xfcc]
	ldrb r7, [r3, #0xfcd]
	add r5, r1, #0xf00
	mov r4, #0x1e
	strb r8, [r9, #0xf0c]
	strb r7, [r9, #0xf0d]
	ldrb r7, [r3, #0xfce]
	ldrb r1, [r3, #0xfcf]
	strb r7, [r9, #0xf0e]
	strb r1, [r9, #0xf0f]
	ldrh r1, [r2, #0xd0]
	strh r1, [r0, #0x10]
_020D0C8C:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r4, r4, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020D0C8C
	ldr r2, _020D09CC ; =0x020A1640
	add r1, r9, #0x364
	ldrh r3, [r2, #0xe]
	add r0, r9, #0xf00
	add r4, r1, #0xc00
	strh r3, [r0, #0x4e]
	ldrh r3, [r2, #0x10]
	ldr r7, _020D09D0 ; =0x020A1664
	mov r6, #0x14
	strh r3, [r0, #0x50]
	ldrb r1, [r2, #0x12]
	strb r1, [r9, #0xf52]
	ldrb r1, [r2, #0x13]
	strb r1, [r9, #0xf53]
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0x54]
	ldrh r3, [r2, #0x16]
	ldrh r1, [r2, #0x18]
	strh r3, [r0, #0x56]
	strh r1, [r0, #0x58]
	ldrh r1, [r2, #0x1a]
	strh r1, [r0, #0x5a]
	ldrh r3, [r2, #0x1c]
	ldrh r1, [r2, #0x1e]
	strh r3, [r0, #0x5c]
	strh r1, [r0, #0x5e]
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0x60]
	ldrb r0, [r2, #0x22]
	strb r0, [r9, #0xf62]
	ldrb r0, [r2, #0x23]
	strb r0, [r9, #0xf63]
_020D0D28:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs r6, r6, #1
	ldr r5, _020D09DC ; =0x02099ED8
	bne _020D0D28
	ldr r1, [r7]
	ldr r6, _020D09D4 ; =0x020A17A8
	add r0, r9, #0xa8
	str r1, [r4]
	add r4, r0, #0x1000
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r2, [r6]
	ldr r0, _020D09D8 ; =0x0209BA20
	mov r1, r9
	str r2, [r4]
	bl FUN_02072b54
	add r1, r9, #0x3e8
	ldr r0, [r5]
	add r1, r1, #0x3800
	bl FUN_020560b4
	ldr r2, [r10, #0x99c]
	ldr r0, _020D0DB0 ; =0x0209A5D0
	mov r1, #0
	bl FUN_020626f4
	mov r1, r0
	mov r0, r10
	bl FUN_ov4_020d60f8
	mov r1, #6
	mov r0, #2
	str r1, [r10, #0x30]
	str r0, [r10, #0x44]
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0DB0: .word unk_0209A5D0
	arm_func_end FUN_ov4_020cfd60

	arm_func_start FUN_ov4_020d0db4
FUN_ov4_020d0db4: ; 0x020D0DB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x8c
	mov r10, r0
	ldr r4, [r10, #0x99c]
	ldr r3, _020D1C9C ; =0x020A0700
	add r9, r4, #0x80
	mov r5, r9
	mov r2, #0x200
_020D0DD4:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0DD4
	ldr r7, _020D1CA0 ; =0x020A0B00
	add r8, r9, #0x400
	mov r5, #0x13
_020D0DFC:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020D0DFC
	ldmia r8, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	add r3, r9, #0x13c
	ldr r5, _020D1CA4 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020D0E24:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	ldr r1, _020D1CA8 ; =0x020A0640
	bne _020D0E24
	ldrb r3, [r9, #0x564]
	ldrb r2, [r9, #0x565]
	add r0, r9, #0x168
	add r5, r0, #0x400
	strb r3, [r1, #0x624]
	strb r2, [r1, #0x625]
	ldrb r7, [r9, #0x566]
	ldrb r2, [r9, #0x567]
	ldr r3, _020D1CAC ; =0x020A0C68
	strb r7, [r1, #0x626]
	strb r2, [r1, #0x627]
	mov r2, #0xa4
_020D0E74:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0E74
	ldr r3, _020D1CB0 ; =0x020A0DB0
	add r5, r9, #0x6b0
	mov r2, #0xa4
_020D0E9C:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0E9C
	add r0, r9, #0x3f8
	ldr r3, _020D1CB4 ; =0x020A0EF8
	add r5, r0, #0x400
	mov r2, #0xc9
_020D0EC8:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0EC8
	add r0, r9, #0x8a
	ldr r3, _020D1CB8 ; =0x020A108A
	add r5, r0, #0x900
	mov r2, #0xa4
_020D0EF4:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D0EF4
	add r0, r9, #0xa00
	ldrh r5, [r0, #0xd2]
	ldrh r3, [r0, #0xd4]
	ldr r2, _020D1CBC ; =0x020A1140
	add r1, r9, #0x2dc
	strh r5, [r2, #0x92]
	strh r3, [r2, #0x94]
	ldrh r3, [r0, #0xd6]
	ldrh r0, [r0, #0xd8]
	ldr r7, _020D1CC0 ; =0x020A11DC
	add r8, r1, #0x800
	strh r3, [r2, #0x96]
	strh r0, [r2, #0x98]
	mov r5, #9
_020D0F48:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020D0F48
	ldmia r8, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	add r3, r9, #0x378
	ldr r5, _020D1CC4 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020D0F70:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	strh r0, [r5, #2]
	strh r1, [r5], #4
	bne _020D0F70
	ldrh r2, [r3]
	add r0, r9, #0xb00
	ldr r1, _020D1CC8 ; =0x020A1240
	strh r2, [r5]
	ldrh r3, [r0, #0xb2]
	ldrh r2, [r0, #0xb4]
	ldr r7, _020D1CCC ; =0x020A12C0
	add r8, r9, #0xbc0
	strh r3, [r1, #0x72]
	strh r2, [r1, #0x74]
	ldrh r3, [r0, #0xb6]
	ldrh r2, [r0, #0xb8]
	mov r5, #0x34
	strh r3, [r1, #0x76]
	strh r2, [r1, #0x78]
	ldrh r2, [r0, #0xba]
	ldrh r0, [r0, #0xbc]
	strh r2, [r1, #0x7a]
	strh r0, [r1, #0x7c]
_020D0FD8:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020D0FD8
	ldmia r8, {r0, r1}
	stmia r7, {r0, r1}
	ldrb r2, [r9, #0xf08]
	ldrb r0, [r9, #0xf09]
	ldr r3, _020D1CA8 ; =0x020A0640
	add r1, r9, #0x12
	strb r2, [r3, #0xfc8]
	strb r0, [r3, #0xfc9]
	ldrb r7, [r9, #0xf0a]
	ldrb r5, [r9, #0xf0b]
	add r8, r1, #0xf00
	add r0, r9, #0xf00
	strb r7, [r3, #0xfca]
	strb r5, [r3, #0xfcb]
	ldrb r11, [r9, #0xf0c]
	ldrb r5, [r9, #0xf0d]
	ldr r2, _020D1CD0 ; =0x020A1540
	ldr r7, _020D1CD4 ; =0x020A1612
	strb r11, [r3, #0xfcc]
	strb r5, [r3, #0xfcd]
	ldrb r11, [r9, #0xf0e]
	ldrb r1, [r9, #0xf0f]
	mov r5, #0x1e
	strb r11, [r3, #0xfce]
	strb r1, [r3, #0xfcf]
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xd0]
_020D1054:
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	subs r5, r5, #1
	strb r0, [r7, #1]
	strb r1, [r7], #2
	bne _020D1054
	add r0, r9, #0xf00
	ldrh r3, [r0, #0x4e]
	ldr r2, _020D1CD8 ; =0x020A1640
	add r1, r9, #0x364
	strh r3, [r2, #0xe]
	ldrh r3, [r0, #0x50]
	add r8, r1, #0xc00
	ldr r5, _020D1CDC ; =0x020A1664
	strh r3, [r2, #0x10]
	ldrb r1, [r9, #0xf52]
	mov r7, #0x14
	strb r1, [r2, #0x12]
	ldrb r1, [r9, #0xf53]
	strb r1, [r2, #0x13]
	ldrh r1, [r0, #0x54]
	strh r1, [r2, #0x14]
	ldrh r3, [r0, #0x56]
	ldrh r1, [r0, #0x58]
	strh r3, [r2, #0x16]
	strh r1, [r2, #0x18]
	ldrh r1, [r0, #0x5a]
	strh r1, [r2, #0x1a]
	ldrh r3, [r0, #0x5c]
	ldrh r1, [r0, #0x5e]
	strh r3, [r2, #0x1c]
	strh r1, [r2, #0x1e]
	ldrh r0, [r0, #0x60]
	strh r0, [r2, #0x20]
	ldrb r0, [r9, #0xf62]
	strb r0, [r2, #0x22]
	ldrb r0, [r9, #0xf63]
	strb r0, [r2, #0x23]
_020D10F0:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _020D10F0
	ldr r1, [r8]
	add r0, r9, #0xa8
	str r1, [r5]
	add r5, r0, #0x1000
	ldr r7, _020D1CE0 ; =0x020A17A8
	ldmia r5!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldr r0, [r5]
	ldr r5, _020D1CE4 ; =0x0209BA20
	str r0, [r7]
	ldr r1, [r10, #0x99c]
	mov r0, r5
	add r1, r1, #0x80
	bl FUN_02072dcc
	ldr r0, [r10, #0x99c]
	ldr r11, _020D1CE8 ; =0x02099ED8
	add r1, r0, #0x68
	ldr r0, [r11]
	add r1, r1, #0x3c00
	bl FUN_02055d68
	ldr r1, [r10, #0x67c]
	mov r0, r5
	bl FUN_0205106c
	ldr r1, [r10, #0x974]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _020D1240
	sub r1, r1, #1
	bl FUN_02050244
	movs r5, r0
	beq _020D1240
	ldr r0, [r11]
	bl FUN_020553c0
	mov r7, r0
	mov r8, #0
	b _020D11B0
_020D1190:
	ldr r0, [r11]
	mov r1, r8
	bl FUN_0205545c
	mov r6, r0
	ldrh r0, [r6, #0x20]
	cmp r0, r5
	beq _020D11B8
	add r8, r8, #1
_020D11B0:
	cmp r8, r7
	blt _020D1190
_020D11B8:
	cmp r6, #0
	ldr r5, _020D1CE8 ; =0x02099ED8
	mov r7, #0
	beq _020D11F0
	ldr r1, [r6, #0x84]
	add r0, r10, #0x800
	str r1, [r10, #0x878]
	ldr r1, [r6, #0x88]
	str r1, [r10, #0x87c]
	ldr r1, [r6, #0x8c]
	str r1, [r10, #0x880]
	ldrh r1, [r6, #0x6a]
	strh r1, [r0, #0x84]
	b _020D120C
_020D11F0:
	add r0, r10, #0x78
	mov r1, r7
	add r0, r0, #0x800
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r10, #0x800
	strh r7, [r0, #0x84]
_020D120C:
	ldr r0, [r5]
	ldr r1, [r6, #0x5c]
	mov r2, #1
	bl FUN_02055938
	ldr r0, [r5]
	ldr r1, [r6, #0x5c]
	bl FUN_02055274
	ldr r0, [r10, #0x974]
	mov r2, #0
	sub r1, r0, #1
	ldr r0, [sp, #0xc]
	mov r3, r2
	bl FUN_020501bc
_020D1240:
	add r0, r10, #0x374
	add r0, r0, #0x400
	mov r5, #1
	bl FUN_0206cbf8
	ldr r8, _020D1CE4 ; =0x0209BA20
	mov r1, r0
	add r2, sp, #0x24
	mov r0, r8
	bl FUN_0204bd64
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r7, r0
	add r0, r10, #0xd4
	add r0, r0, #0x800
	mov r1, r5
	bl FUN_0206d9b0
	mov r6, r0
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cc34
	str r6, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [r10, #0x67c]
	ldr r3, [r10, #0x97c]
	mov r2, r7
	mov r0, r8
	bl FUN_0204c778
	cmp r0, #0
	bne _020D12C4
	bl OS_Terminate
_020D12C4:
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020D12E8
	mov r1, #0x20
	bl FUN_0206d620
_020D12E8:
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	str r5, [sp]
	mov r2, r0
	ldr r3, [r10, #0x984]
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r1, #2
	bl FUN_0204c92c
	ldr r0, [r10, #0x974]
	cmp r0, #0
	beq _020D144C
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	ldr r1, [r10, #0x974]
	mov r2, r0
	ldr r3, [r10, #0x980]
	ldr r0, [sp, #0xc]
	sub r1, r1, #1
	bl FUN_020501bc
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrh r6, [r0, #0xe]
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	str r5, [sp]
	mov r3, r6
	mov r6, #0
	ldr r5, _020D1CE8 ; =0x02099ED8
	mov r1, r0
	ldr r0, [r5]
	mov r2, r6
	bl FUN_02055004
	mov r7, r0
	sub r0, r6, #1
	cmp r7, r0
	beq _020D139C
	ldr r2, [r10, #0x974]
	ldr r0, [r5]
	mov r1, r7
	sub r2, r2, #1
	bl FUN_02055890
_020D139C:
	ldr r5, _020D1CE8 ; =0x02099ED8
	mov r1, r7
	ldr r0, [r5]
	bl FUN_020552cc
	ldr r1, [r10, #0x878]
	mov r7, r0
	cmp r1, #0
	ldreq r0, [r10, #0x87c]
	cmpeq r0, #0
	ldreq r0, [r10, #0x880]
	cmpeq r0, #0
	addeq r0, r10, #0x800
	ldreqh r0, [r0, #0x84]
	cmpeq r0, #0
	bne _020D1410
	ldr r0, [r5]
	mov r1, r6
	bl FUN_020552dc
	ldr r8, [r0, #0x84]
	ldr r3, [r0, #0x88]
	ldr r2, [r0, #0x8c]
	ldr r0, [r5]
	mov r1, r6
	str r8, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	bl FUN_020552dc
	ldrh r5, [r0, #0x6a]
	b _020D1430
_020D1410:
	add r0, r10, #0x800
	ldr r3, [r10, #0x878]
	ldr r2, [r10, #0x87c]
	ldr r1, [r10, #0x880]
	ldrh r5, [r0, #0x84]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
_020D1430:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	str r0, [r7, #0x84]
	ldr r0, [sp, #0x20]
	str r1, [r7, #0x88]
	str r0, [r7, #0x8c]
	strh r5, [r7, #0x6a]
_020D144C:
	mov r7, #0
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r1, r7
	bl FUN_0207249c
	add r1, r10, #0x374
	mov r11, r0
	add r0, r1, #0x400
	bl FUN_0206cbf8
	mov r1, r7
	bl FUN_ov16_020efa9c
	add r1, r10, #0x374
	mov r6, r0
	add r0, r1, #0x400
	bl FUN_0206dcd4
	ldrsh r5, [r0, #0x18]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206df6c
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsh r5, [r0, #0x1a]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206dfd4
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x4f]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e50c
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x50]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e574
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x51]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e5dc
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x52]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e644
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x53]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e6ac
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x54]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e714
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrsb r5, [r0, #0x55]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e77c
	add r5, r10, #0x374
	b _020D15EC
_020D15A0:
	add r0, r5, #0x400
	bl FUN_0206dcd4
	add r0, r0, r7, lsl #1
	ldrh r8, [r0, #0x38]
	mov r0, r6
	bl FUN_0206dcd4
	mov r2, r8
	mov r1, r7
	bl FUN_0206e354
	add r0, r5, #0x400
	bl FUN_0206dcd4
	add r0, r0, r7
	ldrb r8, [r0, #0x44]
	mov r0, r6
	bl FUN_0206dcd4
	mov r2, r8
	mov r1, r7
	bl FUN_0206e3c8
	add r7, r7, #1
_020D15EC:
	cmp r7, #6
	blt _020D15A0
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrb r5, [r0, #0x5d]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206e9ec
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldr r5, [r0]
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r5
	bl FUN_0206dcf0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r2, [r11, #0x30]
	mov r1, #0
	bl FUN_0206def8
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, #1
	mov r2, #0
	bl FUN_0206def8
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, #2
	mov r2, #0
	bl FUN_0206def8
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r3, r0
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r2, #1
	mov r1, r6
	bl FUN_0204e79c
	mov r0, r10
	mov r1, r6
	bl FUN_ov4_020d1cf4
	mov r0, r6
	bl FUN_0206dcd4
	ldrsh r5, [r0, #0x18]
	mov r0, r6
	bl FUN_0206dcd4
	ldrsh r7, [r0, #0x34]
	mov r0, r6
	bl FUN_0206dcd4
	add r1, r7, r5
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl FUN_0206e0bc
	mov r0, r6
	ldr r5, _020D1CE4 ; =0x0209BA20
	bl FUN_0206dcd4
	ldrsh r8, [r0, #0x1a]
	mov r0, r6
	bl FUN_0206dcd4
	ldrsh r7, [r0, #0x36]
	mov r0, r6
	bl FUN_0206dcd4
	add r1, r7, r8
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl FUN_0206e124
	add r0, r10, #0x374
	add r0, r0, #0x400
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _020D1CB0 ; =0x020A0DB0
	bl FUN_02050854
	ldrb r0, [r4, #0x17]
	mov r7, #0
	mov r8, #8
	add r0, r0, #1
	strb r0, [r4, #0x17]
	ldrb r0, [r10, #0x978]
	add r6, sp, #0x10
	mov r1, r7
	cmp r0, #0
	ldrneb r0, [r4, #0x16]
	mov r2, r8
	addne r0, r0, #1
	strneb r0, [r4, #0x16]
	mov r0, r6
	bl MI_CpuFill8
	mov r0, #1
	str r0, [sp]
	ldr r1, [r10, #0x67c]
	mov r0, r5
	mov r2, r6
	mov r3, #4
	bl FUN_0204b2f4
	mov r0, r6
	add r1, r4, #0x58
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, _020D1CA8 ; =0x020A0640
	ldr r2, [r10, #0x96c]
	ldr r1, [r0, #0x4d8]
	rsb r2, r2, #0
	ldr r0, _020D1CA0 ; =0x020A0B00
	add r1, r1, r2
	bl FUN_020744f0
	add r6, r10, #0x374
	ldr r4, _020D1CE4 ; =0x0209BA20
	b _020D17C8
_020D17AC:
	mov r1, r7
	add r0, r6, #0x400
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r5
	bl FUN_02074a2c
	add r7, r7, #1
_020D17C8:
	cmp r7, #6
	blt _020D17AC
	mov r6, #0
	mov r0, r4
	mov r1, r6
	bl FUN_0204da5c
	mov r0, r4
	mov r1, r6
	bl FUN_0205107c
	mov r5, r0
	mov r7, r6
	mov r8, r6
	b _020D1878
_020D17FC:
	mov r0, r5
	mov r1, r7
	bl FUN_0204fbe8
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _020D1874
	bl FUN_0206cbf8
	cmp r0, #1
	orreq r8, r8, #1
	beq _020D184C
	mov r0, r4
	bl FUN_0206cbf8
	cmp r0, #0x1e
	orreq r8, r8, #2
	beq _020D184C
	mov r0, r4
	bl FUN_0206cbf8
	cmp r0, #2
	orreq r8, r8, #4
_020D184C:
	mov r0, r4
	bl FUN_0206cbf8
	mov r1, r0
	mov r0, r5
	bl FUN_0204fd68
	cmp r0, #1
	bne _020D1874
	mov r0, r4
	bl FUN_0206cbf8
	mov r6, r0
_020D1874:
	add r7, r7, #1
_020D1878:
	cmp r7, #0x10
	blt _020D17FC
	tst r8, #1
	beq _020D1894
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r2, #1
	b _020D18C4
_020D1894:
	tst r8, #2
	beq _020D18B4
	ldr r3, _020D1CEC ; =0x00000449
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r1, #0
	mov r2, #0x1e
	strh r3, [r11, #0x2e]
	b _020D18E8
_020D18B4:
	tst r8, #4
	beq _020D18D0
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r2, #2
_020D18C4:
	mov r1, #0
	strh r2, [r11, #0x2e]
	b _020D18E8
_020D18D0:
	cmp r6, #0
	beq _020D18EC
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r2, r6
	mov r1, #0
	strh r6, [r11, #0x2e]
_020D18E8:
	bl FUN_0204d864
_020D18EC:
	ldr r4, _020D1C9C ; =0x020A0700
	mov r3, r9
	mov r2, #0x200
_020D18F8:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D18F8
	ldr r7, _020D1CA0 ; =0x020A0B00
	add r6, r9, #0x400
	mov r5, #0x13
_020D1920:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	ldr r4, _020D1CA8 ; =0x020A0640
	bne _020D1920
	ldmia r7, {r0, r1, r2}
	stmia r6, {r0, r1, r2}
	add r3, r9, #0x13c
	ldr r5, _020D1CA4 ; =0x020A0C3C
	add r3, r3, #0x400
	mov r2, #0x14
_020D194C:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D194C
	ldrb r2, [r4, #0x624]
	ldrb r1, [r4, #0x625]
	add r0, r9, #0x168
	ldr r5, _020D1CAC ; =0x020A0C68
	strb r2, [r9, #0x564]
	strb r1, [r9, #0x565]
	ldrb r6, [r4, #0x626]
	ldrb r1, [r4, #0x627]
	add r3, r0, #0x400
	mov r2, #0xa4
	strb r6, [r9, #0x566]
	strb r1, [r9, #0x567]
_020D1998:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D1998
	ldr r4, _020D1CB0 ; =0x020A0DB0
	add r3, r9, #0x6b0
	mov r2, #0xa4
_020D19C0:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D19C0
	add r0, r9, #0x3f8
	ldr r4, _020D1CB4 ; =0x020A0EF8
	add r3, r0, #0x400
	mov r2, #0xc9
_020D19EC:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D19EC
	add r0, r9, #0x8a
	ldr r4, _020D1CB8 ; =0x020A108A
	add r3, r0, #0x900
	mov r2, #0xa4
_020D1A18:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020D1A18
	ldr r2, _020D1CBC ; =0x020A1140
	add r1, r9, #0x2dc
	ldrh r4, [r2, #0x92]
	ldrh r3, [r2, #0x94]
	add r0, r9, #0xa00
	ldr r6, _020D1CC0 ; =0x020A11DC
	strh r4, [r0, #0xd2]
	strh r3, [r0, #0xd4]
	ldrh r3, [r2, #0x96]
	ldrh r2, [r2, #0x98]
	add r5, r1, #0x800
	mov r4, #9
	strh r3, [r0, #0xd6]
	strh r2, [r0, #0xd8]
_020D1A6C:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020D1A6C
	ldmia r6, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r3, r9, #0x378
	ldr r4, _020D1CC4 ; =0x020A1278
	add r3, r3, #0x800
	mov r2, #0xe
_020D1A94:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020D1A94
	ldrh r2, [r4]
	ldr r1, _020D1CC8 ; =0x020A1240
	add r0, r9, #0xb00
	strh r2, [r3]
	ldrh r3, [r1, #0x72]
	ldrh r2, [r1, #0x74]
	ldr r6, _020D1CCC ; =0x020A12C0
	add r5, r9, #0xbc0
	strh r3, [r0, #0xb2]
	strh r2, [r0, #0xb4]
	ldrh r3, [r1, #0x76]
	ldrh r2, [r1, #0x78]
	mov r4, #0x34
	strh r3, [r0, #0xb6]
	strh r2, [r0, #0xb8]
	ldrh r2, [r1, #0x7a]
	ldrh r1, [r1, #0x7c]
	strh r2, [r0, #0xba]
	strh r1, [r0, #0xbc]
_020D1AFC:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	ldr r3, _020D1CA8 ; =0x020A0640
	bne _020D1AFC
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldrb r4, [r3, #0xfc8]
	ldrb r0, [r3, #0xfc9]
	add r1, r9, #0x12
	ldr r2, _020D1CD0 ; =0x020A1540
	strb r4, [r9, #0xf08]
	strb r0, [r9, #0xf09]
	ldrb r5, [r3, #0xfca]
	ldrb r4, [r3, #0xfcb]
	add r0, r9, #0xf00
	ldr r6, _020D1CD4 ; =0x020A1612
	strb r5, [r9, #0xf0a]
	strb r4, [r9, #0xf0b]
	ldrb r8, [r3, #0xfcc]
	ldrb r7, [r3, #0xfcd]
	add r5, r1, #0xf00
	mov r4, #0x1e
	strb r8, [r9, #0xf0c]
	strb r7, [r9, #0xf0d]
	ldrb r7, [r3, #0xfce]
	ldrb r1, [r3, #0xfcf]
	strb r7, [r9, #0xf0e]
	strb r1, [r9, #0xf0f]
	ldrh r1, [r2, #0xd0]
	strh r1, [r0, #0x10]
_020D1B78:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r4, r4, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020D1B78
	ldr r2, _020D1CD8 ; =0x020A1640
	add r1, r9, #0x364
	ldrh r3, [r2, #0xe]
	add r0, r9, #0xf00
	add r4, r1, #0xc00
	strh r3, [r0, #0x4e]
	ldrh r3, [r2, #0x10]
	ldr r7, _020D1CDC ; =0x020A1664
	mov r6, #0x14
	strh r3, [r0, #0x50]
	ldrb r1, [r2, #0x12]
	strb r1, [r9, #0xf52]
	ldrb r1, [r2, #0x13]
	strb r1, [r9, #0xf53]
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0x54]
	ldrh r3, [r2, #0x16]
	ldrh r1, [r2, #0x18]
	strh r3, [r0, #0x56]
	strh r1, [r0, #0x58]
	ldrh r1, [r2, #0x1a]
	strh r1, [r0, #0x5a]
	ldrh r3, [r2, #0x1c]
	ldrh r1, [r2, #0x1e]
	strh r3, [r0, #0x5c]
	strh r1, [r0, #0x5e]
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0x60]
	ldrb r0, [r2, #0x22]
	strb r0, [r9, #0xf62]
	ldrb r0, [r2, #0x23]
	strb r0, [r9, #0xf63]
_020D1C14:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	subs r6, r6, #1
	ldr r5, _020D1CE8 ; =0x02099ED8
	bne _020D1C14
	ldr r1, [r7]
	ldr r6, _020D1CE0 ; =0x020A17A8
	add r0, r9, #0xa8
	str r1, [r4]
	add r4, r0, #0x1000
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r2, [r6]
	ldr r0, _020D1CE4 ; =0x0209BA20
	mov r1, r9
	str r2, [r4]
	bl FUN_02072b54
	add r1, r9, #0x3e8
	ldr r0, [r5]
	add r1, r1, #0x3800
	bl FUN_020560b4
	ldr r2, [r10, #0x99c]
	ldr r0, _020D1CF0 ; =0x0209A5D0
	mov r1, #0
	bl FUN_020626f4
	mov r1, r0
	mov r0, r10
	bl FUN_ov4_020d60f8
	mov r1, #6
	mov r0, #3
	str r1, [r10, #0x30]
	str r0, [r10, #0x44]
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1C9C: .word unk_020A0700
_020D1CA0: .word unk_020A0B00
_020D1CA4: .word unk_020A0C3C
_020D1CA8: .word unk_020A0640
_020D1CAC: .word unk_020A0C68
_020D1CB0: .word unk_020A0DB0
_020D1CB4: .word unk_020A0EF8
_020D1CB8: .word unk_020A108A
_020D1CBC: .word unk_020A1140
_020D1CC0: .word unk_020A11DC
_020D1CC4: .word unk_020A1278
_020D1CC8: .word unk_020A1240
_020D1CCC: .word unk_020A12C0
_020D1CD0: .word unk_020A1540
_020D1CD4: .word unk_020A1612
_020D1CD8: .word unk_020A1640
_020D1CDC: .word unk_020A1664
_020D1CE0: .word unk_020A17A8
_020D1CE4: .word unk_0209BA20
_020D1CE8: .word unk_02099ED8
_020D1CEC: .word 0x00000449
_020D1CF0: .word unk_0209A5D0
	arm_func_end FUN_ov4_020d0db4

	arm_func_start FUN_ov4_020d1cf4
FUN_ov4_020d1cf4: ; 0x020D1CF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	movs r9, r1
	mov r10, r0
	mov r4, #0
	addeq sp, sp, #0x50
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	add r6, r9, #0x6c
	bl FUN_0206cbf8
	mov r1, r0
	ldr r0, _020D1E2C ; =0x0209BA20
	add r2, sp, #8
	bl FUN_0204c078
	mov r5, r4
	b _020D1D44
_020D1D34:
	add r0, r6, r5
	ldrb r0, [r0, #0xf]
	add r5, r5, #1
	add r4, r4, r0
_020D1D44:
	cmp r5, #7
	blt _020D1D34
	ldr r0, _020D1E30 ; =0x020A1540
	ldrh r2, [sp, #0x44]
	ldrb r1, [sp, #0x4e]
	ldrh r0, [r0, #0xd0]
	cmp r2, #0
	ldreq r2, _020D1E34 ; =0x00007FFF
	mov r0, r0, asr r1
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x50
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r2, r4
	addge sp, sp, #0x50
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r7, r4, r2
	mov r11, #0
	mvn r4, #0x7e
	b _020D1DFC
_020D1D9C:
	mov r5, r11
	b _020D1DF4
_020D1DA4:
	add r3, r6, r5
	ldrb r8, [r3, #0xf]
	mov r0, r10
	mov r1, r9
	mov r2, r5
	bl FUN_ov4_020d1e38
	sub r1, r0, #1
	cmp r1, r4
	addge r0, r8, r1
	cmpge r0, #1
	blt _020D1DF0
	mov r3, r1, lsl #0x18
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r3, asr #0x18
	bl FUN_ov4_020d1edc
	subs r7, r7, #1
	beq _020D1DFC
_020D1DF0:
	add r5, r5, #1
_020D1DF4:
	cmp r5, #7
	blt _020D1DA4
_020D1DFC:
	cmp r7, #0
	bgt _020D1D9C
	mov r2, #6
	str r2, [sp]
	mov r3, #0
	ldr r0, _020D1E2C ; =0x0209BA20
	mov r1, r9
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1E2C: .word unk_0209BA20
_020D1E30: .word unk_020A1540
_020D1E34: .word 0x00007FFF
	arm_func_end FUN_ov4_020d1cf4

	arm_func_start FUN_ov4_020d1e38
FUN_ov4_020d1e38: ; 0x020D1E38
	stmfd sp!, {r3, lr}
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _020D1ED4
_020D1E48: ; jump table
	b _020D1E64 ; case 0
	b _020D1E74 ; case 1
	b _020D1E94 ; case 2
	b _020D1E84 ; case 3
	b _020D1EA4 ; case 4
	b _020D1EC4 ; case 5
	b _020D1EB4 ; case 6
_020D1E64:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x4f]
	ldmfd sp!, {r3, pc}
_020D1E74:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x50]
	ldmfd sp!, {r3, pc}
_020D1E84:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x51]
	ldmfd sp!, {r3, pc}
_020D1E94:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x52]
	ldmfd sp!, {r3, pc}
_020D1EA4:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x53]
	ldmfd sp!, {r3, pc}
_020D1EB4:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x54]
	ldmfd sp!, {r3, pc}
_020D1EC4:
	mov r0, r1
	bl FUN_0206dcd4
	ldrsb r0, [r0, #0x55]
	ldmfd sp!, {r3, pc}
_020D1ED4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020d1e38

	arm_func_start FUN_ov4_020d1edc
FUN_ov4_020d1edc: ; 0x020D1EDC
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	ldmfd sp!, {r4, pc}
_020D1EF0: ; jump table
	b _020D1F0C ; case 0
	b _020D1F20 ; case 1
	b _020D1F48 ; case 2
	b _020D1F34 ; case 3
	b _020D1F5C ; case 4
	b _020D1F84 ; case 5
	b _020D1F70 ; case 6
_020D1F0C:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e50c
	ldmfd sp!, {r4, pc}
_020D1F20:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e574
	ldmfd sp!, {r4, pc}
_020D1F34:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e5dc
	ldmfd sp!, {r4, pc}
_020D1F48:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e644
	ldmfd sp!, {r4, pc}
_020D1F5C:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e6ac
	ldmfd sp!, {r4, pc}
_020D1F70:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e714
	ldmfd sp!, {r4, pc}
_020D1F84:
	mov r0, r1
	bl FUN_0206dcd4
	mov r1, r4
	bl FUN_0206e77c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d1edc

	arm_func_start FUN_ov4_020d1f98
FUN_ov4_020d1f98: ; 0x020D1F98
	stmfd sp!, {r4, lr}
	sub sp, sp, #0xf0
	mov r4, r0
	mov r0, #0
	add lr, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r12, #7
_020D1FBC:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020D1FBC
	stmia lr!, {r0, r1, r2, r3}
	mov r3, #0x10
	mov r2, #0x100
	add r1, sp, #0
	mov r0, r4
	strb r3, [sp, #2]
	str r2, [sp, #4]
	bl FUN_ov4_020ce72c
	mov r0, #8
	str r0, [r4, #0x30]
	add sp, sp, #0xf0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d1f98

	arm_func_start FUN_ov4_020d1ffc
FUN_ov4_020d1ffc: ; 0x020D1FFC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0xf0
	mov r4, r0
	mov r0, #0
	add lr, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r12, #7
_020D2020:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020D2020
	stmia lr!, {r0, r1, r2, r3}
	mov r3, #0x10
	mov r2, #0x200
	add r1, sp, #0
	mov r0, r4
	strb r3, [sp, #2]
	str r2, [sp, #4]
	bl FUN_ov4_020ce72c
	mov r0, #8
	str r0, [r4, #0x30]
	add sp, sp, #0xf0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d1ffc

	arm_func_start FUN_ov4_020d2060
FUN_ov4_020d2060: ; 0x020D2060
	stmfd sp!, {r4, lr}
	sub sp, sp, #0xf0
	mov r4, r0
	mov r0, #0
	add lr, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r12, #7
_020D2084:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020D2084
	stmia lr!, {r0, r1, r2, r3}
	mov r3, #0x10
	mov r2, #0x400
	add r1, sp, #0
	mov r0, r4
	strb r3, [sp, #2]
	str r2, [sp, #4]
	bl FUN_ov4_020ce72c
	mov r0, r4
	bl FUN_ov4_020d4e84
	mov r0, r4
	bl FUN_ov4_020cd33c
	mov r2, #8
	mov r1, #0x80
	mov r0, r4
	str r2, [r4, #0x30]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0xf0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d2060

	arm_func_start FUN_ov4_020d20e4
FUN_ov4_020d20e4: ; 0x020D20E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, #0
	mov r4, r3
	b _020D218C
_020D20F8:
	cmp r4, #0xd
	addls pc, pc, r4, lsl #2
	b _020D2188
_020D2104: ; jump table
	b _020D213C ; case 0
	b _020D2144 ; case 1
	b _020D2148 ; case 2
	b _020D214C ; case 3
	b _020D2154 ; case 4
	b _020D215C ; case 5
	b _020D2160 ; case 6
	b _020D2168 ; case 7
	b _020D2170 ; case 8
	b _020D2174 ; case 9
	b _020D2178 ; case 10
	b _020D217C ; case 11
	b _020D2180 ; case 12
	b _020D2184 ; case 13
_020D213C:
	add r3, r3, #1
	b _020D2188
_020D2144:
	b _020D213C
_020D2148:
	b _020D213C
_020D214C:
	add r3, r3, #0x20
	b _020D2188
_020D2154:
	add r3, r3, #3
	b _020D2188
_020D215C:
	b _020D2184
_020D2160:
	add r3, r3, #0x19
	b _020D2188
_020D2168:
	add r3, r3, #4
	b _020D2188
_020D2170:
	b _020D2168
_020D2174:
	b _020D2168
_020D2178:
	b _020D2184
_020D217C:
	b _020D2184
_020D2180:
	b _020D2184
_020D2184:
	add r3, r3, #2
_020D2188:
	add r4, r4, #1
_020D218C:
	cmp r4, r1
	blt _020D20F8
	add r3, r3, r2
	ldr r12, _020D21D0 ; =0x020D8824
	sub r4, r3, #1
	mov r3, #0xe
	mla lr, r4, r3, r12
	ldrsh r3, [lr, #0xc]
	ldr r12, _020D21D4 ; =0x02099F38
	add r1, r0, r1, lsl #2
	str r3, [sp]
	ldrsh r3, [lr, #0xa]
	ldr r0, [r12]
	ldr r1, [r1, #0x11c]
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D21D0: .word 0x020D8824
_020D21D4: .word unk_02099F38
	arm_func_end FUN_ov4_020d20e4

	arm_func_start FUN_ov4_020d21d8
FUN_ov4_020d21d8: ; 0x020D21D8
	stmfd sp!, {r3, lr}
	mov r12, #0xc0
	ldr r3, _020D2200 ; =0x02099F38
	str r12, [sp]
	add r1, r0, r1, lsl #2
	ldr r0, [r3]
	ldr r1, [r1, #0x11c]
	mov r3, #0x100
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, pc}
_020D2200: .word unk_02099F38
	arm_func_end FUN_ov4_020d21d8

	arm_func_start FUN_ov4_020d2204
FUN_ov4_020d2204: ; 0x020D2204
	ldr r3, _020D2224 ; =0x02099F38
	add r1, r0, r1, lsl #2
	mov r2, #0
	ldr r0, [r3]
	ldr r1, [r1, #0x11c]
	ldr r12, _020D2228 ; =FUN_ov16_02114248
	mov r3, r2
	bx r12
_020D2224: .word unk_02099F38
_020D2228: .word FUN_ov16_02114248
	arm_func_end FUN_ov4_020d2204

	arm_func_start FUN_ov4_020d222c
FUN_ov4_020d222c: ; 0x020D222C
	ldr r2, _020D224C ; =0x02099F38
	add r1, r0, r1, lsl #2
	ldr r0, [r2]
	ldr r1, [r1, #0x11c]
	ldr r12, _020D2250 ; =FUN_ov16_02114248
	mov r2, #0x100
	mov r3, #0xc0
	bx r12
_020D224C: .word unk_02099F38
_020D2250: .word FUN_ov16_02114248
	arm_func_end FUN_ov4_020d222c

	arm_func_start FUN_ov4_020d2254
FUN_ov4_020d2254: ; 0x020D2254
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r1, #0
	mov r4, r0
	bl FUN_ov4_020d222c
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov4_020d222c
	mov r10, #2
	mov r0, r4
	mov r1, r10
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r9, #3
	mov r1, r9
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r8, #4
	mov r1, r8
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #5
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #6
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #7
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #8
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #9
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #0xa
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov4_020d222c
	mov r0, r4
	mov r1, #0xd
	bl FUN_ov4_020d222c
	mov r2, r5
	mov r7, #0xc0
	str r7, [sp]
	ldr r5, _020D2388 ; =0x02099F38
	ldr r1, [r4, #0x184]
	ldr r0, [r5]
	mov r6, #0x100
	mov r3, r6
	bl FUN_ov16_02113b78
	mov r2, r10
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x184]
	mov r3, r6
	bl FUN_ov16_02113b78
	mov r2, r9
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x184]
	mov r3, r6
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x184]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2388: .word unk_02099F38
	arm_func_end FUN_ov4_020d2254

	arm_func_start FUN_ov4_020d238c
FUN_ov4_020d238c: ; 0x020D238C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0xc0
	ldr r4, _020D241C ; =0x02099F38
	mov r5, #0x100
	mov r7, r0
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x168]
	mov r3, r5
	mov r2, #1
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x168]
	mov r3, r5
	mov r2, #2
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x168]
	mov r2, #3
	mov r3, r5
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x168]
	mov r2, #4
	mov r3, r5
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x168]
	mov r3, r5
	mov r2, #5
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D241C: .word unk_02099F38
	arm_func_end FUN_ov4_020d238c

	arm_func_start FUN_ov4_020d2420
FUN_ov4_020d2420: ; 0x020D2420
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #0x100
	mov r4, #0xe6
_020D2434:
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x888]
	cmp r0, #0
	beq _020D2458
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov4_020cc54c
_020D2458:
	add r6, r6, #1
	cmp r6, #0x10
	blt _020D2434
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov4_020d2420

	arm_func_start FUN_ov4_020d2468
FUN_ov4_020d2468: ; 0x020D2468
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	mov r7, r0
	add r1, sp, #0x14
	mov r9, #2
	mov r5, #1
	mov r0, #0x20
	mov r6, #0
_020D2488:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _020D2488
	mov r0, r7
	bl FUN_ov4_020d2254
	mov r0, r7
	bl FUN_ov4_020d238c
	mov r0, r7
	bl FUN_ov4_020d2420
	mov r10, #0
	add r8, r7, #0x1a0
	mov r0, #0x34
	ldr r1, _020D2F04 ; =0x0000FFFD
	b _020D24EC
_020D24D0:
	mul r4, r10, r0
	ldrh r3, [r8, r4]
	add r2, r7, r4
	add r10, r10, #1
	and r3, r3, r1
	strh r3, [r8, r4]
	str r6, [r2, #0x19c]
_020D24EC:
	cmp r10, #0x15
	blt _020D24D0
	ldr r0, [r7, #0x34]
	mov r10, #4
	cmp r0, #0x40
	mov r4, #6
	ldr r8, _020D2F08 ; =0x02099F38
	mov r11, #3
	bgt _020D2570
	cmp r0, #0x40
	movge r9, #0x30
	bge _020D2BE0
	cmp r0, #0x10
	bgt _020D2560
	movge r9, #0x30
	bge _020D2984
	cmp r0, #8
	mov r4, #0x30
	addls pc, pc, r0, lsl #2
	b _020D2EFC
_020D253C: ; jump table
	b _020D2EFC ; case 0
	b _020D25B8 ; case 1
	b _020D25D8 ; case 2
	b _020D2EFC ; case 3
	b _020D2890 ; case 4
	b _020D2EFC ; case 5
	b _020D2EFC ; case 6
	b _020D2EFC ; case 7
	b _020D2934 ; case 8
_020D2560:
	cmp r0, #0x20
	beq _020D2AA8
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2570:
	cmp r0, #0x200
	mov r4, #0x30
	bgt _020D2594
	cmp r0, #0x200
	bge _020D2DC4
	cmp r0, #0x80
	beq _020D2CC8
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2594:
	cmp r0, #0x1000
	bgt _020D25A8
	beq _020D2E54
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D25A8:
	cmp r0, #0x2000
	beq _020D2EA4
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D25B8:
	mov r0, r7
	mov r1, #0
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #1
	bl FUN_ov4_020d2204
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D25D8:
	mov r4, #0
	mov r0, r7
	mov r1, r4
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r11
	bl FUN_ov4_020d2204
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x12c]
	mov r2, #2
	mov r3, r4
	bl FUN_ov16_0211401c
	add r8, sp, #0x14
	add r2, r7, #0x284
	ldr r1, _020D2F0C ; =0x020DB824
	mov r0, r8
	add r2, r2, #0x400
	strb r5, [r7, #0x64d]
	bl FUN_02023c40
	mov r0, #0x14
	stmia sp, {r0, r5, r11}
	str r4, [sp, #0xc]
	mov r2, r8
	mov r0, r7
	mov r1, r5
	mov r3, #0xc
	str r4, [sp, #0x10]
	bl FUN_ov4_020d467c
	mov r0, #0xb4
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _020D2F10 ; =0x020DB838
	mov r1, r11
	str r4, [sp, #0x10]
	mov r0, r7
	mov r3, r4
	bl FUN_ov4_020d467c
	ldrb r0, [r7, #0x67a]
	cmp r0, #0
	beq _020D26EC
	strb r4, [r7, #0x67a]
	strb r5, [r7, #0x67b]
	add r9, r7, #0x374
	b _020D26D0
_020D2694:
	add r0, r7, r4, lsl #2
	ldr r0, [r0, #0x888]
	cmp r0, #0
	beq _020D26CC
	add r0, r9, #0x400
	bl FUN_0206dcd4
	add r1, r7, r4, lsl #2
	ldrh r8, [r0, #4]
	ldr r0, [r1, #0x888]
	bl FUN_0206dcd4
	ldrh r0, [r0, #4]
	cmp r0, r8
	streqb r4, [r7, #0x62c]
	beq _020D26D8
_020D26CC:
	add r4, r4, #1
_020D26D0:
	cmp r4, #0x10
	blt _020D2694
_020D26D8:
	add r0, r7, #0x600
	ldrsb r0, [r0, #0x2c]
	cmp r0, #0x10
	strgeb r5, [r7, #0x63c]
	strltb r6, [r7, #0x63c]
_020D26EC:
	add r0, r7, #0x600
	ldrsb r0, [r0, #0x3c]
	mov r4, #0
	mov r5, #0
	cmp r0, #0
	movne r4, #0x10
	mov r6, #0x8c
	mov r8, #0x64
	b _020D2758
_020D2710:
	add r1, r5, r4
	add r0, r7, r1, lsl #2
	ldr r0, [r0, #0x888]
	cmp r0, #0
	beq _020D2754
	cmp r5, #8
	bge _020D273C
	mov r2, r5, lsl #5
	mov r0, r7
	mov r3, r8
	b _020D274C
_020D273C:
	sub r0, r5, #8
	mov r2, r0, lsl #5
	mov r0, r7
	mov r3, r6
_020D274C:
	add r2, r2, #0x10
	bl FUN_ov4_020cc54c
_020D2754:
	add r5, r5, #1
_020D2758:
	cmp r5, #0x10
	blt _020D2710
	mov r5, #0
	b _020D2880
_020D2768:
	add r0, r5, r4
	add r0, r7, r0, lsl #2
	ldr r8, [r0, #0x888]
	mov r6, #1
	cmp r8, #0
	beq _020D2798
	mov r0, r7
	mov r1, r8
	bl FUN_ov4_020d4ca4
	cmp r0, #0
	moveq r6, #0
	beq _020D285C
_020D2798:
	cmp r8, #0
	beq _020D285C
	mov r6, #1
	mov r2, #0
	b _020D27CC
_020D27AC:
	add r0, r7, r2, lsl #1
	add r0, r0, #0x600
	ldrh r1, [r8, #0x4e]
	ldrh r0, [r0, #0xa4]
	cmp r0, r1
	moveq r6, #0
	beq _020D27D4
	add r2, r2, #1
_020D27CC:
	cmp r2, #0x64
	blt _020D27AC
_020D27D4:
	mov r3, #0
	b _020D27FC
_020D27DC:
	ldr r1, [r7, #0x988]
	mov r0, r3, lsl #1
	ldrh r2, [r8, #0x4e]
	ldrh r0, [r1, r0]
	cmp r0, r2
	moveq r6, #0
	beq _020D2804
	add r3, r3, #1
_020D27FC:
	cmp r3, #8
	blt _020D27DC
_020D2804:
	ldrb r0, [r7, #0x770]
	cmp r0, #0
	bne _020D2840
	mov r3, #0
	b _020D2838
_020D2818:
	ldr r1, [r7, #0x98c]
	mov r0, r3, lsl #1
	ldrh r2, [r8, #0x4e]
	ldrh r0, [r1, r0]
	cmp r0, r2
	moveq r6, #0
	beq _020D2840
	add r3, r3, #1
_020D2838:
	cmp r3, #0x20
	blt _020D2818
_020D2840:
	add r0, r7, #0x700
	ldrh r2, [r8, #0x4e]
	ldrh r1, [r0, #0x6c]
	cmp r1, r2
	ldrneh r0, [r0, #0x6e]
	cmpne r0, r2
	moveq r6, #0
_020D285C:
	cmp r6, #0
	mov r0, r7
	mov r1, #3
	add r2, r5, #0xd
	beq _020D2878
	bl FUN_ov4_020d21d8
	b _020D287C
_020D2878:
	bl FUN_ov4_020d20e4
_020D287C:
	add r5, r5, #1
_020D2880:
	cmp r5, #0x10
	blt _020D2768
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2890:
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r10
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r9
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r10
	mov r2, r9
	bl FUN_ov4_020d21d8
	mov r1, r10
	mov r0, r7
	mov r2, r11
	bl FUN_ov4_020d21d8
	mov r0, #0x78
	stmia sp, {r0, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F14 ; =0x020DB860
	mov r1, r11
	str r6, [sp, #0x10]
	mov r0, r7
	mov r3, #0x20
	bl FUN_ov4_020d467c
	str r4, [sp]
	mov r2, r5
	mov r5, #0x60
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r5
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_02113b78
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2934:
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #5
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #2
	bl FUN_ov4_020d2204
	mov r1, #0x50
	stmia sp, {r1, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F18 ; =0x020DB884
	mov r0, r7
	mov r1, r11
	mov r3, #0x2c
	str r6, [sp, #0x10]
	bl FUN_ov4_020d467c
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2984:
	mov r0, r7
	mov r1, #0
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r4
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #2
	bl FUN_ov4_020d2204
	mov r10, #1
	b _020D29C4
_020D29B0:
	mov r0, r7
	mov r1, r4
	mov r2, r10
	bl FUN_ov4_020d20e4
	add r10, r10, #1
_020D29C4:
	cmp r10, #0xc
	blt _020D29B0
	mov r10, #0xa
	mov r0, r7
	mov r1, r4
	mov r2, r10
	bl FUN_ov4_020d21d8
	mov r0, r7
	mov r1, r4
	mov r2, #0xb
	bl FUN_ov4_020d21d8
	mov r0, #0x78
	stmia sp, {r0, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F1C ; =0x020DB89C
	str r6, [sp, #0x10]
	mov r0, r7
	mov r1, r11
	mov r3, #0x48
	bl FUN_ov4_020d467c
	str r9, [sp]
	mov r4, #8
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_02113b78
	str r9, [sp]
	mov r4, #0xb8
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r4
	mov r2, #4
	bl FUN_ov16_02113b78
	str r6, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x134]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_0211401c
	mov r0, r7
	strb r5, [r7, #0x64d]
	bl FUN_ov4_020d39a4
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2AA8:
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r4, #7
	mov r0, r7
	mov r1, r4
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r9
	bl FUN_ov4_020d2204
	mov r1, r4
	mov r0, r7
	mov r2, #3
	bl FUN_ov4_020d21d8
	ldr r0, [r7, #0x994]
	tst r0, #0x10
	beq _020D2B0C
	mov r0, #0x7a
	stmia sp, {r0, r5, r9}
	str r6, [sp, #0xc]
	ldr r2, _020D2F20 ; =0x020DB8B0
	mov r0, r7
	mov r1, r9
	mov r3, #0x2e
	b _020D2B28
_020D2B0C:
	mov r0, #0x81
	stmia sp, {r0, r5, r6}
	ldr r2, _020D2F24 ; =0x020DB8E8
	str r6, [sp, #0xc]
	mov r0, r7
	mov r1, r9
	mov r3, #0x50
_020D2B28:
	str r6, [sp, #0x10]
	bl FUN_ov4_020d467c
	mov r4, #0x30
	str r4, [sp]
	mov r9, #0x2a
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r5
	mov r3, r9
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r9
	mov r2, #2
	bl FUN_ov16_02113b78
	str r4, [sp]
	mov r9, #0x98
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r11
	mov r3, r9
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r9
	mov r2, #4
	bl FUN_ov16_02113b78
	add r2, r7, #0x400
	rsb r0, r11, #0x304
	str r0, [r7, #0x994]
	ldrh r3, [r2, #0x78]
	rsb r0, r11, #0x10000
	ldr r1, _020D2F28 ; =0x0000FFFB
	and r0, r3, r0
	strh r0, [r2, #0x78]
	ldrh r0, [r2, #0x78]
	add sp, sp, #0x94
	strb r5, [r7, #0xa17]
	and r0, r0, r1
	strh r0, [r2, #0x78]
	strb r6, [r7, #0x679]
	str r6, [r7, #0xa18]
	strb r6, [r7, #0xa15]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2BE0:
	mov r0, r7
	mov r1, #0
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #8
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #2
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r4
	bl FUN_ov4_020d2204
	mov r10, #1
	b _020D2C2C
_020D2C18:
	mov r0, r7
	mov r1, r4
	mov r2, r10
	bl FUN_ov4_020d21d8
	add r10, r10, #1
_020D2C2C:
	cmp r10, #0xc
	blt _020D2C18
	mov r0, #0x7a
	stmia sp, {r0, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F2C ; =0x020DB8FC
	mov r0, r7
	mov r1, r11
	mov r3, r9
	str r6, [sp, #0x10]
	bl FUN_ov4_020d467c
	str r9, [sp]
	mov r4, #8
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_02113b78
	str r9, [sp]
	mov r4, #0xb8
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r4
	mov r2, #4
	bl FUN_ov16_02113b78
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2CC8:
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #9
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r9
	bl FUN_ov4_020d2204
	mov r1, #9
	mov r0, r7
	mov r2, r10
	bl FUN_ov4_020d21d8
	mov r0, #0x78
	stmia sp, {r0, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F30 ; =0x020DB91C
	mov r0, r7
	mov r1, r11
	mov r3, #0x40
	str r6, [sp, #0x10]
	bl FUN_ov4_020d467c
	ldr r0, _020D2F34 ; =0x0209AC44
	mov r1, #0x13
	bl FUN_0202cf6c
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r5
	mov r3, #0x98
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, #0x98
	mov r2, r9
	bl FUN_ov16_02113b78
	str r4, [sp]
	mov r2, r11
	mov r11, #0x2a
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r3, r11
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r8]
	ldr r1, [r7, #0x184]
	mov r2, r10
	mov r3, r11
	bl FUN_ov16_02113b78
	add r0, r7, #0x374
	str r6, [r7, #0x5dc]
	add r0, r0, #0x400
	bl FUN_0206dcd4
	ldrh r1, [r0, #4]
	add r0, r7, #0x500
	add sp, sp, #0x94
	strh r1, [r0, #0xd0]
	str r9, [r7, #0x5cc]
	str r6, [r7, #0xa18]
	strb r5, [r7, #0x5db]
	strb r5, [r7, #0xa17]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2DC4:
	ldr r0, _020D2F34 ; =0x0209AC44
	mov r2, r6
	mov r1, #0x28
	bl FUN_0202cfd8
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r4, #0xa
	mov r0, r7
	mov r1, r4
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r9
	bl FUN_ov4_020d2204
	mov r1, r4
	mov r0, r7
	mov r2, r9
	bl FUN_ov4_020d21d8
	mov r0, #0x46
	stmia sp, {r0, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F38 ; =0x020DB938
	mov r1, r9
	mov r0, r7
	mov r3, #0x44
	str r6, [sp, #0x10]
	bl FUN_ov4_020d479c
	ldr r0, _020D2F3C ; =0x0209AEC0
	bl FUN_020465fc
	ldr r1, _020D2F40 ; =0x020A0640
	mov r0, r7
	strb r6, [r1, #0x1a]
	strb r5, [r7, #0x5da]
	bl FUN_ov4_020ce708
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2E54:
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #5
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #2
	bl FUN_ov4_020d2204
	mov r1, #0x50
	stmia sp, {r1, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F44 ; =0x020DB968
	mov r0, r7
	mov r1, r11
	mov r3, #0x2c
	str r6, [sp, #0x10]
	bl FUN_ov4_020d479c
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2EA4:
	mov r0, r7
	mov r1, r6
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, #0xd
	bl FUN_ov4_020d2204
	mov r0, r7
	mov r1, r9
	bl FUN_ov4_020d2204
	mov r0, #0x44
	stmia sp, {r0, r5, r6}
	str r6, [sp, #0xc]
	ldr r2, _020D2F48 ; =0x020DB988
	mov r1, r9
	mov r0, r7
	mov r3, #0x42
	str r6, [sp, #0x10]
	bl FUN_ov4_020d479c
	add r0, r7, #0x500
	str r6, [r7, #0x5dc]
	str r6, [r7, #0x5cc]
	strh r6, [r0, #0xd0]
_020D2EFC:
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2F04: .word 0x0000FFFD
_020D2F08: .word unk_02099F38
_020D2F0C: .word ov4_020DB824
_020D2F10: .word ov4_020DB838
_020D2F14: .word ov4_020DB860
_020D2F18: .word ov4_020DB884
_020D2F1C: .word ov4_020DB89C
_020D2F20: .word ov4_020DB8B0
_020D2F24: .word ov4_020DB8E8
_020D2F28: .word 0x0000FFFB
_020D2F2C: .word ov4_020DB8FC
_020D2F30: .word ov4_020DB91C
_020D2F34: .word unk_0209AC44
_020D2F38: .word ov4_020DB938
_020D2F3C: .word unk_0209AEC0
_020D2F40: .word unk_020A0640
_020D2F44: .word ov4_020DB968
_020D2F48: .word ov4_020DB988
	arm_func_end FUN_ov4_020d2468

	arm_func_start FUN_ov4_020d2f4c
FUN_ov4_020d2f4c: ; 0x020D2F4C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	add r0, r6, #0x600
	ldrsb r2, [r0, #0x2c]
	ldr r1, [r6, #0x24]
	mov r4, #0
	strb r2, [r6, #0x62d]
	cmp r1, #0
	beq _020D2FC0
	ldrh r0, [r6, #0x14]
	ldrh r1, [r6, #0x16]
	mov r0, r0, lsl #0x13
	mov r2, r0, asr #0x18
	cmp r1, #0x68
	addhs r0, r2, #8
	movhs r0, r0, lsl #0x18
	movhs r2, r0, asr #0x18
	cmp r1, #0x90
	bhs _020D3170
	cmp r1, #0x40
	blo _020D3170
	add r0, r6, #0x600
	ldrsb r0, [r0, #0x3c]
	cmp r0, #0
	streqb r2, [r6, #0x62c]
	addne r0, r2, #0x10
	strneb r0, [r6, #0x62c]
	b _020D3170
_020D2FC0:
	ldrh r1, [r6, #8]
	tst r1, #0xf0
	beq _020D3170
	ldrsb r3, [r0, #0x2d]
	cmn r3, #1
	streqb r4, [r6, #0x62c]
	beq _020D3170
	ldrsb r0, [r0, #0x3c]
	cmp r0, #0
	bne _020D30A4
	tst r1, #0x20
	beq _020D3020
	cmp r3, #0
	cmpne r3, #8
	subne r0, r2, #1
	strneb r0, [r6, #0x62c]
	bne _020D3020
	cmp r3, #0
	moveq r0, #7
	streqb r0, [r6, #0x62c]
	beq _020D3020
	cmp r3, #8
	moveq r0, #0xf
	streqb r0, [r6, #0x62c]
_020D3020:
	ldrh r0, [r6, #8]
	tst r0, #0x10
	beq _020D3064
	add r0, r6, #0x600
	ldrsb r1, [r0, #0x2d]
	cmp r1, #7
	cmpne r1, #0xf
	ldrnesb r0, [r0, #0x2c]
	addne r0, r0, #1
	strneb r0, [r6, #0x62c]
	bne _020D3064
	cmp r1, #7
	streqb r4, [r6, #0x62c]
	beq _020D3064
	cmp r1, #0xf
	moveq r0, #8
	streqb r0, [r6, #0x62c]
_020D3064:
	ldrh r0, [r6, #8]
	tst r0, #0xc0
	beq _020D3170
	add r0, r6, #0x600
	ldrsb r1, [r0, #0x2d]
	cmp r1, #8
	blt _020D3094
	cmp r1, #0xf
	ldrlesb r0, [r0, #0x2c]
	suble r0, r0, #8
	strleb r0, [r6, #0x62c]
	ble _020D3170
_020D3094:
	cmp r1, #8
	bge _020D3170
	cmp r1, #0
	b _020D3160
_020D30A4:
	tst r1, #0x20
	beq _020D30DC
	cmp r3, #0x10
	cmpne r3, #0x18
	subne r0, r2, #1
	strneb r0, [r6, #0x62c]
	bne _020D30DC
	cmp r3, #0x10
	moveq r0, #0x17
	streqb r0, [r6, #0x62c]
	beq _020D30DC
	cmp r3, #0x18
	moveq r0, #0x1f
	streqb r0, [r6, #0x62c]
_020D30DC:
	ldrh r0, [r6, #8]
	tst r0, #0x10
	beq _020D3124
	add r0, r6, #0x600
	ldrsb r1, [r0, #0x2d]
	cmp r1, #0x17
	cmpne r1, #0x1f
	ldrnesb r0, [r0, #0x2c]
	addne r0, r0, #1
	strneb r0, [r6, #0x62c]
	bne _020D3124
	cmp r1, #0x17
	moveq r0, #0x10
	streqb r0, [r6, #0x62c]
	beq _020D3124
	cmp r1, #0x1f
	moveq r0, #0x18
	streqb r0, [r6, #0x62c]
_020D3124:
	ldrh r0, [r6, #8]
	tst r0, #0xc0
	beq _020D3170
	add r0, r6, #0x600
	ldrsb r1, [r0, #0x2d]
	cmp r1, #0x18
	blt _020D3154
	cmp r1, #0x1f
	ldrlesb r0, [r0, #0x2c]
	suble r0, r0, #8
	strleb r0, [r6, #0x62c]
	ble _020D3170
_020D3154:
	cmp r1, #0x18
	bge _020D3170
	cmp r1, #0x10
_020D3160:
	addge r0, r6, #0x600
	ldrgesb r0, [r0, #0x2c]
	addge r0, r0, #8
	strgeb r0, [r6, #0x62c]
_020D3170:
	add r0, r6, #0x600
	ldrsb r2, [r0, #0x3c]
	ldrsb r1, [r0, #0x2c]
	mov r0, r2, lsl #4
	cmp r1, r2, lsl #4
	addge r0, r0, #0x10
	cmpge r0, r1
	addle r0, r6, #0x600
	ldrlesb r0, [r0, #0x2d]
	strleb r0, [r6, #0x62c]
	add r0, r6, #0x600
	ldrsb r0, [r0, #0x2c]
	cmn r0, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #0
	strltb r4, [r6, #0x62c]
	add r0, r6, #0x600
	ldrsb r0, [r0, #0x2c]
	add r0, r6, r0, lsl #2
	ldr r5, [r0, #0x888]
	cmp r5, #0
	streqb r4, [r6, #0x62e]
	beq _020D329C
	mov r0, r6
	mov r1, r5
	bl FUN_ov4_020d4ca4
	cmp r0, #0
	streqb r4, [r6, #0x62e]
	beq _020D329C
	mov r0, #1
	strb r0, [r6, #0x62e]
	ldrh r2, [r5, #0x4e]
	mov r1, #0
_020D31F8:
	add r0, r6, r1, lsl #1
	add r0, r0, #0x600
	ldrh r0, [r0, #0xa4]
	cmp r0, r2
	streqb r4, [r6, #0x62e]
	beq _020D321C
	add r1, r1, #1
	cmp r1, #0x64
	blt _020D31F8
_020D321C:
	ldrh r3, [r5, #0x4e]
	ldr r2, [r6, #0x988]
	mov r1, #0
_020D3228:
	mov r0, r1, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, r3
	streqb r4, [r6, #0x62e]
	beq _020D3248
	add r1, r1, #1
	cmp r1, #8
	blt _020D3228
_020D3248:
	ldrb r0, [r6, #0x770]
	cmp r0, #0
	bne _020D3280
	ldrh r3, [r5, #0x4e]
	ldr r2, [r6, #0x98c]
	mov r1, #0
_020D3260:
	mov r0, r1, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, r3
	streqb r4, [r6, #0x62e]
	beq _020D3280
	add r1, r1, #1
	cmp r1, #0x20
	blt _020D3260
_020D3280:
	add r0, r6, #0x700
	ldrh r2, [r5, #0x4e]
	ldrh r1, [r0, #0x6c]
	cmp r1, r2
	ldrneh r0, [r0, #0x6e]
	cmpne r0, r2
	streqb r4, [r6, #0x62e]
_020D329C:
	add r0, r6, #0x600
	ldrsb r1, [r0, #0x2c]
	ldrsb r0, [r0, #0x2d]
	cmp r1, r0
	bne _020D32BC
	ldrb r0, [r6, #0x67b]
	cmp r0, #0
	beq _020D3390
_020D32BC:
	ldr r0, _020D3404 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r1, r6, #0x600
	ldrsb r0, [r1, #0x2c]
	strb r4, [r6, #0x67b]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0x888]
	cmp r0, #0
	addeq r0, r6, #0x500
	streqh r4, [r0, #0xd0]
	streq r4, [r6, #0x5cc]
	beq _020D3320
	ldrh r3, [r0, #0x4e]
	ldr r2, [r6, #0x5cc]
	add r0, r6, #0x500
	strh r3, [r0, #0xd0]
	cmp r2, #0
	bne _020D3320
	ldrsb r0, [r1, #0x44]
	cmp r0, #0
	movne r0, #9
	strne r0, [r6, #0x5cc]
	moveq r0, #2
	streq r0, [r6, #0x5cc]
_020D3320:
	add r0, r6, #0x600
	ldrsb r1, [r0, #0x3c]
	add r2, sp, #2
	add r3, sp, #0
	cmp r1, #0
	ldrsb r1, [r0, #0x2c]
	mov r0, r6
	bne _020D3344
	b _020D3348
_020D3344:
	sub r1, r1, #0x10
_020D3348:
	bl FUN_ov4_020d3408
	add r0, r6, #0x600
	ldrsh r2, [sp, #2]
	ldrsh r1, [r0, #0x34]
	strh r2, [r0, #0x38]
	ldrsh r2, [sp]
	cmp r1, #0
	ldreqsh r1, [r0, #0x36]
	strh r2, [r0, #0x3a]
	cmpeq r1, #0
	movne r0, #3
	strne r0, [r6, #0x630]
	bne _020D3390
	ldrsh r2, [r0, #0x38]
	ldrsh r1, [r0, #0x3a]
	str r4, [r6, #0x630]
	strh r2, [r0, #0x34]
	strh r1, [r0, #0x36]
_020D3390:
	ldr r1, [r6, #0x630]
	cmp r1, #0
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, pc}
	add r0, r6, #0x600
	ldrsh r2, [r0, #0x38]
	ldrsh r0, [r0, #0x34]
	sub r0, r2, r0
	bl _s32_div_f
	add r2, r6, #0x600
	ldrsh r1, [r2, #0x34]
	mov r0, r0, lsl #0x10
	ldrsh r4, [r2, #0x3a]
	ldrsh r3, [r2, #0x36]
	add r5, r1, r0, asr #16
	ldr r1, [r6, #0x630]
	sub r0, r4, r3
	strh r5, [r2, #0x34]
	bl _s32_div_f
	add r1, r6, #0x600
	ldr r2, [r6, #0x630]
	ldrsh r3, [r1, #0x36]
	mov r0, r0, lsl #0x10
	sub r2, r2, #1
	add r0, r3, r0, asr #16
	strh r0, [r1, #0x36]
	str r2, [r6, #0x630]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D3404: .word unk_0209AC44
	arm_func_end FUN_ov4_020d2f4c

	arm_func_start FUN_ov4_020d3408
FUN_ov4_020d3408: ; 0x020D3408
	cmp r1, #8
	movlt r0, r1, lsl #5
	strlth r0, [r2]
	movlt r0, #0x40
	subge r0, r1, #8
	movge r0, r0, lsl #5
	strgeh r0, [r2]
	movge r0, #0x68
	strh r0, [r3]
	bx lr
	arm_func_end FUN_ov4_020d3408

	arm_func_start FUN_ov4_020d3430
FUN_ov4_020d3430: ; 0x020D3430
	add r1, r0, #0x600
	ldrsb r1, [r1, #0x4c]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_020D3444: ; jump table
	b _020D3454 ; case 0
	b _020D3488 ; case 1
	b _020D34BC ; case 2
	b _020D34E4 ; case 3
_020D3454:
	ldr r1, [r0, #0x5dc]
	mov r3, #0
	cmp r1, #0
	movne r1, #1
	strneb r1, [r0, #0x5db]
	add r1, r0, #0x900
	ldrh r12, [r1, #0x22]
	add r1, r0, #0x500
	mov r2, #2
	strh r12, [r1, #0xd0]
	str r3, [r0, #0x5dc]
	str r2, [r0, #0x5cc]
	bx lr
_020D3488:
	ldr r1, [r0, #0x5dc]
	mov r3, #0
	cmp r1, #0
	movne r1, #1
	strneb r1, [r0, #0x5db]
	add r1, r0, #0x900
	ldrh r12, [r1, #0x22]
	add r1, r0, #0x500
	mov r2, #9
	strh r12, [r1, #0xd0]
	str r3, [r0, #0x5dc]
	str r2, [r0, #0x5cc]
	bx lr
_020D34BC:
	ldr r1, [r0, #0x5dc]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x5db]
	add r1, r0, #0x374
	add r2, r1, #0x400
	mov r1, #2
	str r2, [r0, #0x5dc]
	str r1, [r0, #0x5cc]
	bx lr
_020D34E4:
	ldr r1, [r0, #0x5dc]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x5db]
	add r1, r0, #0x374
	add r2, r1, #0x400
	mov r1, #9
	str r2, [r0, #0x5dc]
	str r1, [r0, #0x5cc]
	bx lr
	arm_func_end FUN_ov4_020d3430

	arm_func_start FUN_ov4_020d350c
FUN_ov4_020d350c: ; 0x020D350C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r0, [r4, #0x679]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x66c]
	sub r0, r0, #1
	str r0, [r4, #0x66c]
	cmp r0, #1
	blt _020D356C
	ldr r0, [r4, #0x96c]
	bl FUN_0201f704
	ldr r1, [r4, #0x66c]
	mov r5, r0
	mul r0, r1, r1
	bl FUN_0201f704
	ldr r1, _020D35E8 ; =0x45610000
	bl FUN_02020728
	mov r1, r0
	mov r0, r5
	bl FUN_02020094
	bl FUN_0201fdac
	str r0, [r4, #0x970]
	ldmfd sp!, {r3, r4, r5, pc}
_020D356C:
	ldr r0, _020D35EC ; =0x0209AC44
	mov r5, #0
	mov r1, #0x28
	mov r2, #0x80
	str r5, [r4, #0x970]
	strb r5, [r4, #0x679]
	bl FUN_0202cfd8
	mov r0, r4
	bl FUN_ov4_020d4e68
	ldr r0, _020D35F0 ; =0x0209AEC0
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	moveq r5, #1
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020D35F4 ; =0x0209A5D0
	ldr r1, [r4, #0x99c]
	mov r0, r5
	bl FUN_02062800
	ldr r2, [r4, #0x99c]
	mov r0, r5
	mov r1, #0
	bl FUN_020628dc
	mov r1, r0
	mov r0, r4
	bl FUN_ov4_020d60f8
	mov r1, #1
	mov r0, #7
	str r1, [r4, #0x40]
	str r0, [r4, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_020D35E8: .word 0x45610000
_020D35EC: .word unk_0209AC44
_020D35F0: .word unk_0209AEC0
_020D35F4: .word unk_0209A5D0
	arm_func_end FUN_ov4_020d350c

	arm_func_start FUN_ov4_020d35f8
FUN_ov4_020d35f8: ; 0x020D35F8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x34]
	cmp r1, #0x10
	bgt _020D3634
	bge _020D3658
	cmp r1, #8
	ldmgtfd sp!, {r3, pc}
	cmp r1, #2
	ldmltfd sp!, {r3, pc}
	beq _020D3640
	cmp r1, #4
	beq _020D3648
	cmp r1, #8
	beq _020D3650
	ldmfd sp!, {r3, pc}
_020D3634:
	cmp r1, #0x40
	beq _020D3660
	ldmfd sp!, {r3, pc}
_020D3640:
	bl FUN_ov4_020d3668
	ldmfd sp!, {r3, pc}
_020D3648:
	bl FUN_ov4_020d3770
	ldmfd sp!, {r3, pc}
_020D3650:
	bl FUN_ov4_020d385c
	ldmfd sp!, {r3, pc}
_020D3658:
	bl FUN_ov4_020d39a4
	ldmfd sp!, {r3, pc}
_020D3660:
	bl FUN_ov4_020d4098
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020d35f8

	arm_func_start FUN_ov4_020d3668
FUN_ov4_020d3668: ; 0x020D3668
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x648]
	ldr r4, _020D376C ; =0x02099F38
	cmp r0, #0
	ble _020D3720
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	add r0, r5, #0x600
	ldrsb r0, [r0, #0x44]
	beq _020D36D8
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	beq _020D36C4
	mov r2, #3
	ldr r0, [r4]
	ldr r1, [r5, #0x128]
	mov r3, r2
	b _020D3710
_020D36C4:
	ldr r0, [r4]
	ldr r1, [r5, #0x128]
	mov r2, #2
	mov r3, #1
	b _020D3710
_020D36D8:
	cmp r0, #0
	beq _020D36FC
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x128]
	mov r2, #3
	mov r3, #2
	b _020D3710
_020D36FC:
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x128]
	mov r2, #2
_020D3710:
	bl FUN_ov16_0211401c
	ldr r0, [r5, #0x648]
	sub r0, r0, #1
	str r0, [r5, #0x648]
_020D3720:
	add r0, r5, #0x600
	ldrsb r1, [r0, #0x2c]
	mov r2, #0x1e
	cmp r1, #0
	blt _020D3750
	ldrsh r1, [r0, #0x36]
	str r1, [sp]
	ldrsh r3, [r0, #0x34]
	ldr r0, [r4]
	ldr r1, [r5, #0x128]
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, pc}
_020D3750:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x128]
	mov r3, #0x100
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, pc}
_020D376C: .word unk_02099F38
	arm_func_end FUN_ov4_020d3668

	arm_func_start FUN_ov4_020d3770
FUN_ov4_020d3770: ; 0x020D3770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, r4, #0x600
	ldrsb r1, [r1, #0x4d]
	cmp r1, #0
	bne _020D37F4
	mov r5, #4
	mov r8, #2
	mov r1, r5
	mov r2, r8
	bl FUN_ov4_020d21d8
	mov r7, #3
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_ov4_020d21d8
	mov r6, #0
	str r6, [sp]
	ldr r5, _020D3858 ; =0x02099F38
	ldr r1, [r4, #0x12c]
	ldr r0, [r5]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x12c]
	mov r2, r7
	mov r3, r8
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D37F4:
	cmp r1, #1
	bne _020D3824
	mov r5, #4
	mov r1, r5
	mov r2, #2
	bl FUN_ov4_020d20e4
	mov r0, r4
	mov r1, r5
	mov r2, #3
	bl FUN_ov4_020d21d8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D3824:
	cmp r1, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #4
	mov r1, r5
	mov r2, #2
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r5
	mov r2, #3
	bl FUN_ov4_020d20e4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D3858: .word unk_02099F38
	arm_func_end FUN_ov4_020d3770

	arm_func_start FUN_ov4_020d385c
FUN_ov4_020d385c: ; 0x020D385C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r1, [r0, #0x664]
	ldr r2, _020D3990 ; =0x88888889
	add r12, r1, #1
	smull r1, r3, r2, r12
	add r3, r12, r3
	mov r1, r12, lsr #0x1f
	str r12, [r0, #0x664]
	adds r3, r1, r3, asr #4
	mov r12, #0
	beq _020D38A8
	ldrb r1, [r0, #0x668]
	str r12, [r0, #0x664]
	add r2, r1, #1
	and r1, r2, #0xff
	strb r2, [r0, #0x668]
	cmp r1, #3
	strhib r12, [r0, #0x668]
_020D38A8:
	ldrb r1, [r0, #0x668]
	cmp r1, #0
	bne _020D38E4
	mov r1, #0x50
	str r1, [sp]
	mov r1, #1
	stmib sp, {r1, r12}
	str r12, [sp, #0xc]
	ldr r2, _020D3994 ; =0x020DB9B0
	mov r1, #3
	mov r3, #0x2c
	str r12, [sp, #0x10]
	bl FUN_ov4_020d467c
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020D38E4:
	cmp r1, #1
	bne _020D391C
	mov r1, #0x50
	str r1, [sp]
	mov r1, #1
	stmib sp, {r1, r12}
	str r12, [sp, #0xc]
	ldr r2, _020D3998 ; =0x020DB9C8
	mov r1, #3
	mov r3, #0x2c
	str r12, [sp, #0x10]
	bl FUN_ov4_020d467c
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020D391C:
	cmp r1, #2
	bne _020D3954
	mov r1, #0x50
	str r1, [sp]
	mov r1, #1
	stmib sp, {r1, r12}
	str r12, [sp, #0xc]
	ldr r2, _020D399C ; =0x020DB9E4
	mov r1, #3
	mov r3, #0x2c
	str r12, [sp, #0x10]
	bl FUN_ov4_020d467c
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020D3954:
	cmp r1, #3
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	mov r1, #0x50
	str r1, [sp]
	mov r1, #1
	stmib sp, {r1, r12}
	str r12, [sp, #0xc]
	ldr r2, _020D39A0 ; =0x020DBA00
	mov r1, #3
	mov r3, #0x2c
	str r12, [sp, #0x10]
	bl FUN_ov4_020d467c
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020D3990: .word 0x88888889
_020D3994: .word ov4_020DB9B0
_020D3998: .word ov4_020DB9C8
_020D399C: .word ov4_020DB9E4
_020D39A0: .word ov4_020DBA00
	arm_func_end FUN_ov4_020d385c

	arm_func_start FUN_ov4_020d39a4
FUN_ov4_020d39a4: ; 0x020D39A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldr r5, [r4, #0x96c]
	mov r6, #6
	mov r7, #0xd
	b _020D39D0
_020D39BC:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov4_020d21d8
	add r7, r7, #1
_020D39D0:
	cmp r7, #0x13
	blt _020D39BC
	ldr r0, _020D4070 ; =0x51EB851F
	ldr r12, _020D4074 ; =0x68DB8BAD
	smull r3, r7, r0, r5
	ldr r0, _020D4078 ; =0x10624DD3
	mov r2, r5, lsr #0x1f
	smull r3, r8, r0, r5
	smull r0, r9, r12, r5
	ldr lr, _020D407C ; =0x14F8B589
	ldr r6, _020D4080 ; =0x431BDE83
	smull r0, r11, lr, r5
	smull r0, r3, r6, r5
	ldr r1, _020D4084 ; =0x66666667
	add r7, r2, r7, asr #5
	smull r0, r10, r1, r5
	add r10, r2, r10, asr #2
	mov r0, #0xa
	smull r6, r10, r0, r10
	mov r0, #0x64
	sub r10, r5, r6
	smull r6, r7, r0, r7
	sub r7, r5, r6
	smull r0, r6, r1, r7
	mov r0, r7, lsr #0x1f
	add r6, r0, r6, asr #2
	add r8, r2, r8, asr #6
	mov r0, #0x3e8
	smull r1, r7, r0, r8
	ldr r0, _020D4070 ; =0x51EB851F
	sub r8, r5, r1
	smull r1, r7, r0, r8
	mov r0, r8, lsr #0x1f
	ldr r8, _020D4088 ; =0x00002710
	add r9, r2, r9, asr #12
	add r7, r0, r7, asr #5
	smull r0, r1, r8, r9
	sub r9, r5, r0
	ldr r0, _020D4078 ; =0x10624DD3
	add r11, r2, r11, asr #13
	smull r1, r8, r0, r9
	mov r0, r9, lsr #0x1f
	add r8, r0, r8, asr #6
	ldr r0, _020D408C ; =0x000186A0
	add r3, r2, r3, asr #18
	smull r1, r2, r0, r11
	sub r11, r5, r1
	smull r0, r9, r12, r11
	mov r0, r11, lsr #0x1f
	add r9, r0, r9, asr #12
	ldr r0, _020D4090 ; =0x000F4240
	smull r1, r2, r0, r3
	sub r3, r5, r1
	smull r0, r5, lr, r3
	mov r0, r3, lsr #0x1f
	adds r5, r0, r5, asr #13
	beq _020D3AE8
	mov r11, #0x12
	mov r0, r4
	mov r2, r11
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, r11
	mov r3, r5
	bl FUN_ov16_0211401c
_020D3AE8:
	cmp r5, #0
	mov r11, #0
	cmpeq r9, #0
	beq _020D3B24
	mov r0, r4
	mov r2, #0x11
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, #0x11
	mov r3, r9
	bl FUN_ov16_0211401c
_020D3B24:
	cmp r5, #0
	cmpeq r9, #0
	mov r11, #0
	cmpeq r8, #0
	beq _020D3B64
	mov r0, r4
	mov r2, #0x10
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, #0x10
	mov r3, r8
	bl FUN_ov16_0211401c
_020D3B64:
	cmp r5, #0
	cmpeq r9, #0
	cmpeq r8, #0
	mov r11, #0
	cmpeq r7, #0
	beq _020D3BA8
	mov r0, r4
	mov r2, #0xf
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, #0xf
	mov r3, r7
	bl FUN_ov16_0211401c
_020D3BA8:
	cmp r5, #0
	cmpeq r9, #0
	cmpeq r8, #0
	cmpeq r7, #0
	ldr r5, _020D4094 ; =0x02099F38
	mov r11, #6
	cmpeq r6, #0
	beq _020D3BFC
	mov r7, #0xe
	mov r0, r4
	mov r2, r7
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211401c
_020D3BFC:
	mov r6, #0xd
	mov r0, r4
	mov r2, r6
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x134]
	mov r2, r6
	mov r3, r10
	bl FUN_ov16_0211401c
	ldr r5, [r4, #0x670]
	mov r6, #0x13
	b _020D3C4C
_020D3C38:
	mov r0, r4
	mov r1, r11
	mov r2, r6
	bl FUN_ov4_020d21d8
	add r6, r6, #1
_020D3C4C:
	cmp r6, #0x19
	blt _020D3C38
	ldr r0, _020D4070 ; =0x51EB851F
	ldr r12, _020D4074 ; =0x68DB8BAD
	smull r3, r7, r0, r5
	ldr r0, _020D4078 ; =0x10624DD3
	mov r2, r5, lsr #0x1f
	smull r3, r8, r0, r5
	smull r0, r9, r12, r5
	ldr lr, _020D407C ; =0x14F8B589
	ldr r6, _020D4080 ; =0x431BDE83
	smull r0, r11, lr, r5
	smull r0, r3, r6, r5
	ldr r1, _020D4084 ; =0x66666667
	add r7, r2, r7, asr #5
	smull r0, r10, r1, r5
	add r10, r2, r10, asr #2
	mov r0, #0xa
	smull r6, r10, r0, r10
	mov r0, #0x64
	sub r10, r5, r6
	smull r6, r7, r0, r7
	sub r7, r5, r6
	smull r0, r6, r1, r7
	mov r0, r7, lsr #0x1f
	add r6, r0, r6, asr #2
	add r8, r2, r8, asr #6
	mov r0, #0x3e8
	smull r1, r7, r0, r8
	ldr r0, _020D4070 ; =0x51EB851F
	sub r8, r5, r1
	smull r1, r7, r0, r8
	mov r0, r8, lsr #0x1f
	ldr r8, _020D4088 ; =0x00002710
	add r9, r2, r9, asr #12
	add r7, r0, r7, asr #5
	smull r0, r1, r8, r9
	sub r9, r5, r0
	ldr r0, _020D4078 ; =0x10624DD3
	add r11, r2, r11, asr #13
	smull r1, r8, r0, r9
	mov r0, r9, lsr #0x1f
	add r8, r0, r8, asr #6
	ldr r0, _020D408C ; =0x000186A0
	add r3, r2, r3, asr #18
	smull r1, r2, r0, r11
	sub r11, r5, r1
	smull r0, r9, r12, r11
	mov r0, r11, lsr #0x1f
	add r9, r0, r9, asr #12
	ldr r0, _020D4090 ; =0x000F4240
	smull r1, r2, r0, r3
	sub r3, r5, r1
	smull r0, r5, lr, r3
	mov r0, r3, lsr #0x1f
	adds r5, r0, r5, asr #13
	beq _020D3D64
	mov r11, #0x18
	mov r0, r4
	mov r2, r11
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, r11
	mov r3, r5
	bl FUN_ov16_0211401c
_020D3D64:
	cmp r5, #0
	mov r11, #0
	cmpeq r9, #0
	beq _020D3DA0
	mov r0, r4
	mov r2, #0x17
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, #0x17
	mov r3, r9
	bl FUN_ov16_0211401c
_020D3DA0:
	cmp r5, #0
	cmpeq r9, #0
	mov r11, #0
	cmpeq r8, #0
	beq _020D3DE0
	mov r0, r4
	mov r2, #0x16
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, #0x16
	mov r3, r8
	bl FUN_ov16_0211401c
_020D3DE0:
	cmp r5, #0
	cmpeq r9, #0
	cmpeq r8, #0
	mov r11, #0
	cmpeq r7, #0
	beq _020D3E24
	mov r0, r4
	mov r2, #0x15
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, #0x15
	mov r3, r7
	bl FUN_ov16_0211401c
_020D3E24:
	cmp r5, #0
	cmpeq r9, #0
	cmpeq r8, #0
	cmpeq r7, #0
	ldr r5, _020D4094 ; =0x02099F38
	mov r11, #6
	cmpeq r6, #0
	beq _020D3E78
	mov r7, #0x14
	mov r0, r4
	mov r2, r7
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D4094 ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211401c
_020D3E78:
	mov r6, #0x13
	mov r0, r4
	mov r1, r11
	mov r2, r6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x134]
	mov r2, r6
	mov r3, r10
	bl FUN_ov16_0211401c
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020D3FA8
_020D3EBC: ; jump table
	b _020D3ECC ; case 0
	b _020D3F10 ; case 1
	b _020D3F34 ; case 2
	b _020D3F68 ; case 3
_020D3ECC:
	mov r0, r4
	mov r1, r11
	mov r2, #4
	bl FUN_ov4_020d20e4
	mov r0, r4
	mov r1, r11
	mov r2, #5
	bl FUN_ov4_020d21d8
_020D3EEC:
	mov r0, r4
	mov r1, r11
	mov r2, r11
	bl FUN_ov4_020d21d8
_020D3EFC:
	mov r0, r4
	mov r1, r11
	mov r2, #7
	bl FUN_ov4_020d21d8
	b _020D3FA8
_020D3F10:
	mov r0, r4
	mov r1, r11
	mov r2, #4
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, #5
	bl FUN_ov4_020d20e4
	b _020D3EEC
_020D3F34:
	mov r0, r4
	mov r1, r11
	mov r2, #4
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, #5
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, r11
	bl FUN_ov4_020d20e4
	b _020D3EFC
_020D3F68:
	mov r0, r4
	mov r1, r11
	mov r2, #4
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, #5
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, r11
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, #7
	bl FUN_ov4_020d20e4
_020D3FA8:
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	mov r8, #0xa
	mov r6, #0
	cmp r0, #0
	bne _020D4018
	mov r0, r4
	mov r1, r11
	mov r2, r8
	bl FUN_ov4_020d21d8
	mov r7, #0xb
	mov r0, r4
	mov r1, r11
	mov r2, r7
	bl FUN_ov4_020d21d8
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x134]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0211401c
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x134]
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4018:
	cmp r0, #1
	bne _020D4044
	mov r0, r4
	mov r1, r11
	mov r2, r8
	bl FUN_ov4_020d20e4
	mov r0, r4
	mov r1, r11
	mov r2, #0xb
	bl FUN_ov4_020d21d8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4044:
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, r11
	mov r2, r8
	bl FUN_ov4_020d21d8
	mov r0, r4
	mov r1, r11
	mov r2, #0xb
	bl FUN_ov4_020d20e4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4070: .word 0x51EB851F
_020D4074: .word 0x68DB8BAD
_020D4078: .word 0x10624DD3
_020D407C: .word 0x14F8B589
_020D4080: .word 0x431BDE83
_020D4084: .word 0x66666667
_020D4088: .word 0x00002710
_020D408C: .word 0x000186A0
_020D4090: .word 0x000F4240
_020D4094: .word unk_02099F38
	arm_func_end FUN_ov4_020d39a4

	arm_func_start FUN_ov4_020d4098
FUN_ov4_020d4098: ; 0x020D4098
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x970]
	mov r5, #6
	mov r6, #0xd
	b _020D40C4
_020D40B0:
	mov r0, r10
	mov r1, r5
	mov r2, r6
	bl FUN_ov4_020d21d8
	add r6, r6, #1
_020D40C4:
	cmp r6, #0x13
	blt _020D40B0
	ldr r3, _020D4650 ; =0x51EB851F
	ldr r1, _020D4654 ; =0x68DB8BAD
	smull r6, r7, r3, r4
	ldr r3, _020D4658 ; =0x10624DD3
	mov r2, r4, lsr #0x1f
	smull r6, r8, r3, r4
	smull r3, r9, r1, r4
	ldr lr, _020D465C ; =0x14F8B589
	ldr r5, _020D4660 ; =0x431BDE83
	smull r3, r11, lr, r4
	smull r6, r3, r5, r4
	ldr r0, _020D4664 ; =0x66666667
	add r7, r2, r7, asr #5
	smull r6, r5, r0, r4
	add r5, r2, r5, asr #2
	mov r6, #0xa
	smull r5, r12, r6, r5
	mov r6, #0x64
	smull r7, r12, r6, r7
	sub r7, r4, r7
	smull r12, r6, r0, r7
	mov r0, r7, lsr #0x1f
	add r6, r0, r6, asr #2
	add r8, r2, r8, asr #6
	mov r0, #0x3e8
	smull r7, r8, r0, r8
	ldr r0, _020D4650 ; =0x51EB851F
	sub r8, r4, r7
	smull r12, r7, r0, r8
	mov r0, r8, lsr #0x1f
	add r7, r0, r7, asr #5
	ldr r0, _020D4668 ; =0x00002710
	add r9, r2, r9, asr #12
	smull r8, r9, r0, r9
	ldr r0, _020D4658 ; =0x10624DD3
	sub r9, r4, r8
	smull r12, r8, r0, r9
	mov r0, r9, lsr #0x1f
	add r8, r0, r8, asr #6
	ldr r0, _020D466C ; =0x000186A0
	add r11, r2, r11, asr #13
	smull r9, r11, r0, r11
	sub r11, r4, r9
	smull r0, r9, r1, r11
	add r3, r2, r3, asr #18
	mov r0, r11, lsr #0x1f
	ldr r2, _020D4670 ; =0x000F4240
	add r9, r0, r9, asr #12
	smull r0, r1, r2, r3
	sub r3, r4, r0
	sub r5, r4, r5
	smull r0, r4, lr, r3
	mov r0, r3, lsr #0x1f
	adds r4, r0, r4, asr #13
	beq _020D41DC
	mov r11, #0x12
	mov r0, r10
	mov r2, r11
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_0211401c
_020D41DC:
	cmp r4, #0
	mov r11, #0
	cmpeq r9, #0
	beq _020D4218
	mov r0, r10
	mov r2, #0x11
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, #0x11
	mov r3, r9
	bl FUN_ov16_0211401c
_020D4218:
	cmp r4, #0
	cmpeq r9, #0
	mov r11, #0
	cmpeq r8, #0
	beq _020D4258
	mov r0, r10
	mov r2, #0x10
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, #0x10
	mov r3, r8
	bl FUN_ov16_0211401c
_020D4258:
	cmp r4, #0
	cmpeq r9, #0
	cmpeq r8, #0
	mov r11, #0
	cmpeq r7, #0
	beq _020D429C
	mov r0, r10
	mov r2, #0xf
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, #0xf
	mov r3, r7
	bl FUN_ov16_0211401c
_020D429C:
	cmp r4, #0
	cmpeq r9, #0
	cmpeq r8, #0
	cmpeq r7, #0
	mov r11, #6
	ldr r4, _020D4674 ; =0x02099F38
	cmpeq r6, #0
	beq _020D42EC
	mov r7, #0xe
	mov r0, r10
	mov r2, r7
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x134]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211401c
_020D42EC:
	mov r6, #0xd
	mov r0, r10
	mov r2, r6
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x134]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0211401c
	ldr r1, [r10, #0x96c]
	ldr r0, [r10, #0x970]
	ldr r2, [r10, #0x670]
	sub r0, r1, r0
	sub r4, r2, r0
	mov r5, #0x13
	b _020D434C
_020D4338:
	mov r0, r10
	mov r1, r11
	mov r2, r5
	bl FUN_ov4_020d21d8
	add r5, r5, #1
_020D434C:
	cmp r5, #0x19
	blt _020D4338
	ldr r3, _020D4650 ; =0x51EB851F
	ldr r1, _020D4654 ; =0x68DB8BAD
	smull r6, r7, r3, r4
	ldr r3, _020D4658 ; =0x10624DD3
	mov r2, r4, lsr #0x1f
	smull r6, r8, r3, r4
	smull r3, r9, r1, r4
	ldr lr, _020D465C ; =0x14F8B589
	ldr r5, _020D4660 ; =0x431BDE83
	smull r3, r11, lr, r4
	smull r6, r3, r5, r4
	ldr r0, _020D4664 ; =0x66666667
	add r7, r2, r7, asr #5
	smull r6, r5, r0, r4
	add r5, r2, r5, asr #2
	mov r6, #0xa
	smull r5, r12, r6, r5
	mov r6, #0x64
	smull r7, r12, r6, r7
	sub r7, r4, r7
	smull r12, r6, r0, r7
	mov r0, r7, lsr #0x1f
	add r6, r0, r6, asr #2
	add r8, r2, r8, asr #6
	mov r0, #0x3e8
	smull r7, r8, r0, r8
	ldr r0, _020D4650 ; =0x51EB851F
	sub r8, r4, r7
	smull r12, r7, r0, r8
	mov r0, r8, lsr #0x1f
	add r7, r0, r7, asr #5
	ldr r0, _020D4668 ; =0x00002710
	add r9, r2, r9, asr #12
	smull r8, r9, r0, r9
	ldr r0, _020D4658 ; =0x10624DD3
	sub r9, r4, r8
	smull r12, r8, r0, r9
	mov r0, r9, lsr #0x1f
	add r8, r0, r8, asr #6
	ldr r0, _020D466C ; =0x000186A0
	add r11, r2, r11, asr #13
	smull r9, r11, r0, r11
	sub r11, r4, r9
	smull r0, r9, r1, r11
	add r3, r2, r3, asr #18
	mov r0, r11, lsr #0x1f
	ldr r2, _020D4670 ; =0x000F4240
	add r9, r0, r9, asr #12
	smull r0, r1, r2, r3
	sub r3, r4, r0
	sub r5, r4, r5
	smull r0, r4, lr, r3
	mov r0, r3, lsr #0x1f
	adds r4, r0, r4, asr #13
	beq _020D4464
	mov r11, #0x18
	mov r0, r10
	mov r2, r11
	mov r1, #6
	bl FUN_ov4_020d20e4
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_0211401c
_020D4464:
	cmp r4, #0
	mov r11, #0
	cmpeq r9, #0
	beq _020D44A0
	mov r0, r10
	mov r2, #0x17
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, #0x17
	mov r3, r9
	bl FUN_ov16_0211401c
_020D44A0:
	cmp r4, #0
	cmpeq r9, #0
	mov r11, #0
	cmpeq r8, #0
	beq _020D44E0
	mov r0, r10
	mov r2, #0x16
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, #0x16
	mov r3, r8
	bl FUN_ov16_0211401c
_020D44E0:
	cmp r4, #0
	cmpeq r9, #0
	cmpeq r8, #0
	mov r11, #0
	cmpeq r7, #0
	beq _020D4524
	mov r0, r10
	mov r2, #0x15
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r11, [sp]
	ldr r0, _020D4674 ; =0x02099F38
	ldr r1, [r10, #0x134]
	ldr r0, [r0]
	mov r2, #0x15
	mov r3, r7
	bl FUN_ov16_0211401c
_020D4524:
	cmp r4, #0
	cmpeq r9, #0
	cmpeq r8, #0
	cmpeq r7, #0
	mov r4, #0
	ldr r11, _020D4674 ; =0x02099F38
	cmpeq r6, #0
	beq _020D4570
	mov r7, #0x14
	mov r0, r10
	mov r2, r7
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r4, [sp]
	ldr r0, [r11]
	ldr r1, [r10, #0x134]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211401c
_020D4570:
	mov r6, #0x13
	mov r0, r10
	mov r2, r6
	mov r1, #6
	bl FUN_ov4_020d20e4
	str r4, [sp]
	ldr r0, [r11]
	ldr r1, [r10, #0x134]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_0211401c
	ldr r0, _020D4678 ; =0x0209A110
	ldr r1, [r10, #0x654]
	ldr r0, [r0]
	add r1, r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r1, [r10, #0x654]
	movs r0, r0, asr #3
	beq _020D45DC
	ldrb r0, [r10, #0x658]
	str r4, [r10, #0x654]
	add r0, r0, #1
	and r0, r0, #0xff
	strb r0, [r10, #0x658]
	cmp r0, #3
	strhib r4, [r10, #0x658]
_020D45DC:
	str r4, [sp]
	ldrb r3, [r10, #0x658]
	ldr r0, [r11]
	ldr r1, [r10, #0x13c]
	mov r2, #4
	bl FUN_ov16_0211401c
	ldr r0, _020D4678 ; =0x0209A110
	ldr r1, [r10, #0x65c]
	ldr r0, [r0]
	add r1, r1, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	str r1, [r10, #0x65c]
	movs r0, r0, asr #3
	beq _020D4634
	ldrb r0, [r10, #0x660]
	str r4, [r10, #0x65c]
	add r0, r0, #1
	and r0, r0, #0xff
	strb r0, [r10, #0x660]
	cmp r0, #7
	strhib r4, [r10, #0x660]
_020D4634:
	str r4, [sp]
	ldrb r3, [r10, #0x660]
	ldr r0, [r11]
	ldr r1, [r10, #0x14c]
	mov r2, #2
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4650: .word 0x51EB851F
_020D4654: .word 0x68DB8BAD
_020D4658: .word 0x10624DD3
_020D465C: .word 0x14F8B589
_020D4660: .word 0x431BDE83
_020D4664: .word 0x66666667
_020D4668: .word 0x00002710
_020D466C: .word 0x000186A0
_020D4670: .word 0x000F4240
_020D4674: .word unk_02099F38
_020D4678: .word unk_0209A110
	arm_func_end FUN_ov4_020d4098

	arm_func_start FUN_ov4_020d467c
FUN_ov4_020d467c: ; 0x020D467C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	ldr r5, [sp, #0x48]
	mov r4, r3, lsl #0x10
	mov r3, r5, lsl #0x10
	mov r3, r3, asr #0x10
	str r3, [sp]
	ldr r9, _020D4794 ; =0x02099F38
	mov r6, r0
	mov r5, r1
	mov r7, r2
	ldr r0, [r9]
	ldr r1, [r6, #0x168]
	mov r2, r5
	mov r3, r4, asr #0x10
	bl FUN_ov16_02113b78
	sub r0, r5, #1
	add r0, r6, r0, lsl #2
	ldr r6, [r0, #0x154]
	mov r4, #0
	ldr r0, [r9]
	add r2, sp, #0x20
	str r4, [sp, #0x20]
	mov r1, r6
	add r3, sp, #0x24
	bl FUN_0205935c
	ldr r5, [sp, #0x20]
	cmp r5, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r8, _020D4798 ; =0x02099F50
	ldr r1, [sp, #0x4c]
	ldr r0, [r8]
	ldr r2, [sp, #0x50]
	bl FUN_02043310
	ldr r0, [r9]
	mov r1, r6
	bl FUN_ov16_02111438
	mov r10, r0
	ldr r0, [r9]
	mov r1, r6
	bl FUN_ov16_02111458
	mov r1, r7
	mov r3, r10
	str r0, [sp]
	ldr r2, [sp, #0x54]
	ldr r0, [sp, #0x58]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r0, [r8]
	mov r2, r5
	bl FUN_020425fc
	ldr r0, [r8]
	bl FUN_0204331c
	ldr r0, [r9]
	mov r1, r6
	mov r2, r5
	ldr r3, [sp, #0x24]
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D4794: .word unk_02099F38
_020D4798: .word unk_02099F50
	arm_func_end FUN_ov4_020d467c

	arm_func_start FUN_ov4_020d479c
FUN_ov4_020d479c: ; 0x020D479C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r5, [sp, #0x38]
	mov r4, r3, lsl #0x10
	mov r3, r5, lsl #0x10
	mov r3, r3, asr #0x10
	str r3, [sp]
	ldr r7, _020D4860 ; =0x02099F38
	mov r8, r0
	mov r5, r1
	mov r6, r2
	ldr r0, [r7]
	ldr r1, [r8, #0x168]
	mov r2, r5
	mov r3, r4, asr #0x10
	bl FUN_ov16_02113b78
	sub r0, r5, #1
	add r0, r8, r0, lsl #2
	ldr r5, [r0, #0x154]
	mov r4, #0
	ldr r0, [r7]
	add r2, sp, #0x14
	add r3, sp, #0x18
	str r4, [sp, #0x14]
	mov r1, r5
	bl FUN_0205935c
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	str r1, [sp]
	ldr r1, [sp, #0x44]
	str r0, [sp, #4]
	mov r2, #1
	ldr r0, [sp, #0x48]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, r6
	mov r1, r5
	mov r3, r2
	str r4, [sp, #0x10]
	bl FUN_ov16_020f2304
	ldr r0, _020D4864 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D4860: .word unk_02099F38
_020D4864: .word unk_02099F50
	arm_func_end FUN_ov4_020d479c

	arm_func_start FUN_ov4_020d4868
FUN_ov4_020d4868: ; 0x020D4868
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r8, r1
	moveq r5, #0
	movne r5, #3
	mov r9, r0
	ldr r4, _020D4A48 ; =0x02099F38
	mov r7, r5
	add r6, r5, #3
	b _020D48B4
_020D488C:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x16c]
	cmp r1, #0
	beq _020D48B0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D48B0:
	add r7, r7, #1
_020D48B4:
	cmp r7, r6
	blt _020D488C
	add r0, r9, r5, lsl #2
	ldr r6, [r0, #0x16c]
	cmp r6, #0
	beq _020D4900
	ldr r0, [r4]
	mov r1, r6
	bl FUN_02059004
	cmp r0, #0
	bne _020D4900
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_021146a4
	mov r2, #0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r2
	bl FUN_02059038
_020D4900:
	add r0, r5, #1
	add r0, r9, r0, lsl #2
	ldr r6, [r0, #0x16c]
	cmp r6, #0
	beq _020D49D4
	ldr r0, [r4]
	mov r1, r6
	bl FUN_02059004
	cmp r0, #0
	bne _020D49D4
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_021146a4
	cmp r8, #0
	addeq r0, r9, #0x600
	ldreqsb r0, [r0, #0x2c]
	addeq r0, r9, r0, lsl #2
	ldreq r7, [r0, #0x888]
	addne r0, r9, #0x374
	addne r7, r0, #0x400
	cmp r7, #0
	addne r0, r5, #2
	addne r0, r9, r0, lsl #2
	ldrne r1, [r0, #0x16c]
	cmpne r1, #0
	beq _020D49C0
	ldr r0, [r4]
	bl FUN_0205998c
	movs r5, r0
	beq _020D49C0
	ldr r0, _020D4A4C ; =0x02099F04
	ldr r1, [r5, #4]
	ldr r2, [r0]
	mov r0, r7
	bl FUN_ov16_020f0c30 ; may be ov17
	ldr r0, [r4]
	mov r1, r6
	mov r2, #0
	bl FUN_02059a78
	mov r10, r0
	mov r7, #0x20
	ldr r0, [r5, #4]
	mov r1, r10
	mov r2, r7
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, r7
	bl DC_FlushRange
_020D49C0:
	mov r2, #0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r2
	bl FUN_02059038
_020D49D4:
	cmp r8, #0
	bne _020D4A10
	ldr r2, [r9, #0x16c]
	ldr r0, [r4]
	and r3, r2, #0xff
	ldr r1, [r9, #0x184]
	mov r2, #1
	bl FUN_ov16_021137dc
	ldr r2, [r9, #0x170]
	ldr r0, [r4]
	and r3, r2, #0xff
	ldr r1, [r9, #0x184]
	mov r2, #2
	bl FUN_ov16_021137dc
	b _020D4A40
_020D4A10:
	ldr r2, [r9, #0x178]
	ldr r0, [r4]
	and r3, r2, #0xff
	ldr r1, [r9, #0x184]
	mov r2, #3
	bl FUN_ov16_021137dc
	ldr r2, [r9, #0x17c]
	ldr r0, [r4]
	and r3, r2, #0xff
	ldr r1, [r9, #0x184]
	mov r2, #4
	bl FUN_ov16_021137dc
_020D4A40:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D4A48: .word unk_02099F38
_020D4A4C: .word unk_02099F04
	arm_func_end FUN_ov4_020d4868

	arm_func_start FUN_ov4_020d4a50
FUN_ov4_020d4a50: ; 0x020D4A50
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r6, r0
	ldr r0, [r6, #0x4c]
	mov r5, r1
	cmp r0, #0
	ldrne r0, [r6, #0x58]
	cmpne r0, #0
	ldrne r0, [r6, #0x64]
	cmpne r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r2, [r6, #0x674]
	cmp r2, #0
	ldr r4, [r6, #0x680]
	bne _020D4AA0
	add r2, r6, #0x16c
	add r1, r6, #0x170
	add r0, r6, #0x174
	b _020D4AAC
_020D4AA0:
	add r2, r6, #0x178
	add r1, r6, #0x17c
	add r0, r6, #0x180
_020D4AAC:
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, sp, #0x14
	mov r8, #0
	str r0, [sp]
	ldr r0, [r6, #0x4c]
	add r3, sp, #0x18
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _020D4B18
	ldr r0, _020D4C08 ; =0x02099F38
	ldr r7, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #1
	str r8, [sp]
	stmib sp, {r3, r8}
	str r1, [sp, #0xc]
	ldr r2, _020D4C0C ; =0x020DBA20
	mov r1, #5
	str r7, [sp, #0x10]
	bl FUN_02058800
	ldr r1, [sp, #0x1c]
	str r0, [r1]
_020D4B18:
	ldrh r1, [r4, #0x28]
	mov r0, r5
	cmp r1, #0
	ldreqh r1, [r4, #0x26]
	bl FUN_ov16_020f0b3c
	mov r4, r0
	add r1, sp, #0x18
	str r1, [sp]
	add r0, sp, #0x14
	mov r7, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x58]
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _020D4B98
	ldr r0, _020D4C08 ; =0x02099F38
	ldr r5, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #1
	str r7, [sp]
	stmib sp, {r3, r7}
	str r1, [sp, #0xc]
	ldr r2, _020D4C10 ; =0x020DBA38
	mov r1, #5
	str r5, [sp, #0x10]
	bl FUN_02058800
	ldr r1, [sp, #0x20]
	str r0, [r1]
_020D4B98:
	add r0, sp, #0x14
	mov r5, #0
	str r0, [sp]
	ldr r0, [r6, #0x64]
	add r3, sp, #0x18
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020D4C08 ; =0x02099F38
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _020D4C14 ; =0x020DBA50
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #3
	mov r3, #1
	str r4, [sp, #0x10]
	bl FUN_02058800
	ldr r1, [sp, #0x24]
	str r0, [r1]
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4C08: .word unk_02099F38
_020D4C0C: .word ov4_020DBA20
_020D4C10: .word ov4_020DBA38
_020D4C14: .word ov4_020DBA50
	arm_func_end FUN_ov4_020d4a50

	arm_func_start FUN_ov4_020d4c18
FUN_ov4_020d4c18: ; 0x020D4C18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	bne _020D4C64
	ldr r4, _020D4CA0 ; =0x02099F38
	ldr r1, [r5, #0x16c]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r1, [r5, #0x170]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r1, [r5, #0x174]
	ldr r0, [r4]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r5, #0x16c]
	str r0, [r5, #0x170]
	str r0, [r5, #0x174]
	ldmfd sp!, {r3, r4, r5, pc}
_020D4C64:
	ldr r4, _020D4CA0 ; =0x02099F38
	ldr r1, [r5, #0x178]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r1, [r5, #0x17c]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r1, [r5, #0x180]
	ldr r0, [r4]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r5, #0x178]
	str r0, [r5, #0x17c]
	str r0, [r5, #0x180]
	ldmfd sp!, {r3, r4, r5, pc}
_020D4CA0: .word unk_02099F38
	arm_func_end FUN_ov4_020d4c18

	arm_func_start FUN_ov4_020d4ca4
FUN_ov4_020d4ca4: ; 0x020D4CA4
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrh r1, [r1, #0x4e]
	ldr r0, _020D4D54 ; =0x0000012D
	cmp r1, r0
	blo _020D4CCC
	ldr r0, _020D4D58 ; =0x00000442
	cmp r1, r0
	bls _020D4D44
_020D4CCC:
	ldr r0, _020D4D5C ; =0x00000446
	cmp r1, r0
	addne r0, r0, #2
	cmpne r1, r0
	beq _020D4D44
	cmp r1, #0x9a0
	blo _020D4CF4
	ldr r0, _020D4D60 ; =0x000009A5
	cmp r1, r0
	bls _020D4D44
_020D4CF4:
	ldr r0, _020D4D64 ; =0x000009C5
	cmp r1, r0
	blo _020D4D0C
	add r0, r0, #0x1ac
	cmp r1, r0
	bls _020D4D44
_020D4D0C:
	ldr r0, _020D4D68 ; =0x00000BC1
	cmp r1, r0
	beq _020D4D44
	add r0, r0, #0x250
	cmp r1, r0
	blo _020D4D30
	ldr r0, _020D4D6C ; =0x00000F9F
	cmp r1, r0
	bls _020D4D44
_020D4D30:
	ldr r0, _020D4D70 ; =0x00000D49
	cmp r1, r0
	blo _020D4D4C
	cmp r1, #0xd70
	bhi _020D4D4C
_020D4D44:
	mov r0, #1
	bx lr
_020D4D4C:
	mov r0, #0
	bx lr
_020D4D54: .word 0x0000012D
_020D4D58: .word 0x00000442
_020D4D5C: .word 0x00000446
_020D4D60: .word 0x000009A5
_020D4D64: .word 0x000009C5
_020D4D68: .word 0x00000BC1
_020D4D6C: .word 0x00000F9F
_020D4D70: .word 0x00000D49
	arm_func_end FUN_ov4_020d4ca4

	arm_func_start FUN_ov4_020d4d74
FUN_ov4_020d4d74: ; 0x020D4D74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r12, [r7, #0x34]
	mov r0, #0x400
	mov r6, r1
	str r0, [r7, #0x34]
	mov r8, #0
	mov r4, r3
	ldr r1, _020D4E1C ; =0x0000FFFD
	mov r5, r2
	str r12, [r7, #0x38]
	mov r3, r8
	mov r0, #0x34
_020D4DAC:
	mla lr, r8, r0, r7
	add r2, lr, #0x100
	ldrh r12, [r2, #0xa0]
	add r8, r8, #1
	cmp r8, #0x15
	and r12, r12, r1
	strh r12, [r2, #0xa0]
	str r3, [lr, #0x19c]
	blt _020D4DAC
	mov r0, r7
	mov r1, #0xb
	bl FUN_ov4_020d2204
	ldr r0, [sp, #0x30]
	str r4, [sp]
	ldr r1, [sp, #0x34]
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r1, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r0, [sp, #0xc]
	mov r0, r7
	mov r2, r6
	mov r3, r5
	mov r1, #2
	str r4, [sp, #0x10]
	bl FUN_ov4_020d467c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D4E1C: .word 0x0000FFFD
	arm_func_end FUN_ov4_020d4d74

	arm_func_start FUN_ov4_020d4e20
FUN_ov4_020d4e20: ; 0x020D4E20
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #0xb
	mov r4, r0
	bl FUN_ov4_020d222c
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, _020D4E64 ; =0x02099F38
	ldr r1, [r4, #0x168]
	ldr r0, [r0]
	mov r2, #2
	mov r3, #0x100
	bl FUN_ov16_02113b78
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x34]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D4E64: .word unk_02099F38
	arm_func_end FUN_ov4_020d4e20

	arm_func_start FUN_ov4_020d4e68
FUN_ov4_020d4e68: ; 0x020D4E68
	stmfd sp!, {r4, lr}
	mov r1, #0xc
	mov r4, r0
	bl FUN_ov4_020d2204
	mov r0, #1
	strb r0, [r4, #0x661]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d4e68

	arm_func_start FUN_ov4_020d4e84
FUN_ov4_020d4e84: ; 0x020D4E84
	stmfd sp!, {r4, lr}
	mov r1, #0xc
	mov r4, r0
	bl FUN_ov4_020d222c
	mov r0, #0
	strb r0, [r4, #0x661]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d4e84

	arm_func_start FUN_ov4_020d4ea0
FUN_ov4_020d4ea0: ; 0x020D4EA0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r1, r4, #0x600
	ldrsb r2, [r1, #0x2c]
	mov r5, #0
	mov r6, #1
	cmn r2, #1
	bne _020D4ED8
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4ED8:
	ldr r1, [r4, #0x994]
	and r1, r1, #0x300
	cmp r1, #0x300
	beq _020D4F20
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _020D5194 ; =0x020DBA68
	mov r0, r4
	mov r2, #0x24
	mov r3, #0x4a
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4F20:
	add r1, r4, r2, lsl #2
	ldr r7, [r1, #0x888]
	cmp r7, #0
	bne _020D4F44
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4F44:
	mov r1, r7
	bl FUN_ov4_020d4ca4
	cmp r0, #0
	bne _020D4F8C
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _020D5198 ; =0x020DBA8C
	mov r0, r4
	mov r2, #0x24
	mov r3, #0x4a
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4F8C:
	ldr r0, [r4, #0x994]
	and r0, r0, #0x300
	cmp r0, #0x300
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r3, [r7, #0x4e]
	mov r0, r5
	mov r1, r0
	mov r2, r0
	mov r12, r0
_020D4FB4:
	add r5, r4, r12, lsl #1
	add r5, r5, #0x600
	ldrh r5, [r5, #0xa4]
	cmp r5, r3
	moveq r0, #1
	beq _020D4FD8
	add r12, r12, #1
	cmp r12, #0x64
	blt _020D4FB4
_020D4FD8:
	ldr r8, [r4, #0x988]
	mov r12, #0
_020D4FE0:
	mov r5, r12, lsl #1
	ldrh r5, [r8, r5]
	cmp r5, r3
	moveq r1, #1
	beq _020D5000
	add r12, r12, #1
	cmp r12, #8
	blt _020D4FE0
_020D5000:
	ldrb r12, [r4, #0x770]
	mov r5, #0
	cmp r12, #0
	bne _020D5038
	ldr r8, [r4, #0x98c]
	mov lr, r5
_020D5018:
	mov r12, lr, lsl #1
	ldrh r12, [r8, r12]
	cmp r12, r3
	moveq r2, #1
	beq _020D5038
	add lr, lr, #1
	cmp lr, #0x20
	blt _020D5018
_020D5038:
	cmp r0, #0
	beq _020D5078
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r6, [sp]
	mov r0, #2
	stmib sp, {r0, r5}
	ldr r1, _020D519C ; =0x020DBAB0
	mov r0, r4
	mov r2, #0x3e
	mov r3, #0x43
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5078:
	cmp r1, #0
	bne _020D5094
	add r0, r4, #0x700
	ldrh r3, [r7, #0x4e]
	ldrh r1, [r0, #0x6e]
	cmp r1, r3
	bne _020D50CC
_020D5094:
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r1, _020D51A0 ; =0x020DBAE0
	mov r0, r4
	mov r2, #0x24
	mov r3, #0x4a
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D50CC:
	ldrh r0, [r0, #0x6c]
	cmp r0, r3
	bne _020D5110
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r6, [sp]
	mov r0, #2
	stmib sp, {r0, r5}
	ldr r1, _020D51A4 ; =0x020DBB04
	mov r0, r4
	mov r2, #0x26
	mov r3, #0x43
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5110:
	cmp r2, #0
	beq _020D5150
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	str r6, [sp]
	mov r0, #2
	stmib sp, {r0, r5}
	ldr r1, _020D51A8 ; =0x020DBB3C
	mov r0, r4
	mov r2, #0x1d
	mov r3, #0x43
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5150:
	ldr r0, _020D5190 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x2c]
	mov r0, r4
	mov r2, r5
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x888]
	bl FUN_ov4_020d4a50
	mov r0, #4
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r5, [r4, #0x630]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5190: .word unk_0209AC44
_020D5194: .word ov4_020DBA68
_020D5198: .word ov4_020DBA8C
_020D519C: .word ov4_020DBAB0
_020D51A0: .word ov4_020DBAE0
_020D51A4: .word ov4_020DBB04
_020D51A8: .word ov4_020DBB3C
	arm_func_end FUN_ov4_020d4ea0

	arm_func_start FUN_ov4_020d51ac
FUN_ov4_020d51ac: ; 0x020D51AC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xf0
	mov r5, r0
	ldr r0, _020D5228 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, #0
	add r12, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r4, #7
_020D51DC:
	stmia r12!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020D51DC
	stmia r12!, {r0, r1, r2, r3}
	mov r0, #0x10
	strb r0, [sp, #2]
	ldr r2, [r5, #0x34]
	mov r4, #0x2000
	add r1, sp, #0
	mov r0, r5
	strb r2, [sp, #3]
	str r4, [sp, #4]
	bl FUN_ov4_020ce72c
	mov r0, r5
	str r4, [r5, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0xf0
	ldmfd sp!, {r3, r4, r5, pc}
_020D5228: .word unk_0209AC44
	arm_func_end FUN_ov4_020d51ac

	arm_func_start FUN_ov4_020d522c
FUN_ov4_020d522c: ; 0x020D522C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, _020D532C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x44]
	mov r1, #1
	cmp r0, #0
	add r0, r4, #0x500
	movne r1, #0
	ldrh r0, [r0, #0xd0]
	strb r1, [r4, #0x644]
	cmp r0, #0
	beq _020D5288
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x44]
	cmp r0, #0
	movne r0, #9
	strne r0, [r4, #0x5cc]
	moveq r0, #2
	streq r0, [r4, #0x5cc]
	b _020D5290
_020D5288:
	mov r0, #0
	str r0, [r4, #0x5cc]
_020D5290:
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x44]
	cmp r0, #0
	beq _020D52E0
	mov r7, #0
	str r7, [sp]
	ldr r5, _020D5330 ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x128]
	mov r2, r6
	mov r3, #1
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x128]
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_0211401c
	b _020D5318
_020D52E0:
	mov r6, #0
	str r6, [sp]
	ldr r5, _020D5330 ; =0x02099F38
	ldr r1, [r4, #0x128]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #2
	bl FUN_ov16_0211401c
	str r6, [sp]
	mov r2, #3
	ldr r0, [r5]
	ldr r1, [r4, #0x128]
	mov r3, r2
	bl FUN_ov16_0211401c
_020D5318:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	movne r0, #5
	strne r0, [r4, #0x648]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D532C: .word unk_0209AC44
_020D5330: .word unk_02099F38
	arm_func_end FUN_ov4_020d522c

	arm_func_start FUN_ov4_020d5334
FUN_ov4_020d5334: ; 0x020D5334
	bx lr
	arm_func_end FUN_ov4_020d5334

	arm_func_start FUN_ov4_020d5338
FUN_ov4_020d5338: ; 0x020D5338
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xf0
	mov r5, r0
	ldr r0, _020D5488 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, #0
	add r12, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r4, #7
_020D5368:
	stmia r12!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020D5368
	stmia r12!, {r0, r1, r2, r3}
	add r0, r5, #0x600
	ldrsb r1, [r0, #0x2c]
	add r0, r5, #0xd4
	add r4, r0, #0x800
	add r0, r5, r1, lsl #2
	ldr r1, [r0, #0x888]
	mov r3, #0x1a
	mov r12, r1
_020D539C:
	ldrh r2, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r3, r3, #1
	strh r0, [r4, #2]
	strh r2, [r4], #4
	bne _020D539C
	ldr r0, [r1, #0x68]
	add r12, r1, #0x6c
	str r0, [r5, #0x93c]
	add r4, r5, #0x940
	mov r3, #6
_020D53CC:
	ldrh r2, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r3, r3, #1
	strh r0, [r4, #2]
	strh r2, [r4], #4
	bne _020D53CC
	ldr r2, [r1, #0x84]
	add r0, r5, #0xd4
	str r2, [r5, #0x958]
	ldr r3, [r1, #0x88]
	add r2, r5, #0x900
	str r3, [r5, #0x95c]
	ldrb r3, [r1, #0x8c]
	mov r4, #0x10
	add r0, r0, #0x800
	strb r3, [r5, #0x960]
	ldrh r12, [r1, #0x8e]
	mov r3, #4
	strh r12, [r2, #0x62]
	ldr r12, [r1, #0x90]
	str r12, [r5, #0x964]
	ldrsh r12, [r1, #0x94]
	strh r12, [r2, #0x68]
	ldrb r1, [r1, #0x96]
	strb r1, [r5, #0x96a]
	strb r4, [sp, #2]
	ldr r1, [r5, #0x34]
	strb r1, [sp, #3]
	str r3, [sp, #4]
	bl FUN_0206dcd4
	mov r1, r0
	add r0, sp, #0xc
	bl FUN_0206ed40
	add r1, sp, #0
	mov r0, r5
	bl FUN_ov4_020ce72c
	add r0, r5, #0x200
	mov r2, #0
	mov r1, #5
	strh r4, [r0, #0xa4]
	str r2, [r5, #0x2a0]
	strh r4, [r0, #0xd8]
	str r2, [r5, #0x2d4]
	str r1, [r5, #0x30]
	add sp, sp, #0xf0
	ldmfd sp!, {r3, r4, r5, pc}
_020D5488: .word unk_0209AC44
	arm_func_end FUN_ov4_020d5338

	arm_func_start FUN_ov4_020d548c
FUN_ov4_020d548c: ; 0x020D548C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D54E4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r1, #0
	mov r0, r4
	add r2, r4, #0x200
	mov r3, #0x10
	strh r3, [r2, #0xa4]
	str r1, [r4, #0x2a0]
	strh r3, [r2, #0xd8]
	str r1, [r4, #0x2d4]
	bl FUN_ov4_020d4c18
	mov r0, r4
	mov r1, #1
	bl FUN_ov4_020d4c18
	mov r1, #2
	mov r0, r4
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	ldmfd sp!, {r4, pc}
_020D54E4: .word unk_0209AC44
	arm_func_end FUN_ov4_020d548c

	arm_func_start FUN_ov4_020d54e8
FUN_ov4_020d54e8: ; 0x020D54E8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xf0
	mov r5, r0
	ldr r0, _020D5580 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_ov4_020d4c18
	mov r0, r5
	mov r1, #1
	bl FUN_ov4_020d4c18
	add lr, sp, #0
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	mov r12, #7
_020D5534:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020D5534
	stmia lr!, {r0, r1, r2, r3}
	mov r3, #0x10
	strb r3, [sp, #2]
	ldr r2, [r5, #0x34]
	add r1, sp, #0
	mov r0, r5
	strb r2, [sp, #3]
	str r3, [sp, #4]
	bl FUN_ov4_020ce72c
	mov r1, #2
	mov r0, r5
	str r1, [r5, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0xf0
	ldmfd sp!, {r3, r4, r5, pc}
_020D5580: .word unk_0209AC44
	arm_func_end FUN_ov4_020d54e8

	arm_func_start FUN_ov4_020d5584
FUN_ov4_020d5584: ; 0x020D5584
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D55A4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #0
	strb r0, [r4, #0x64c]
	ldmfd sp!, {r4, pc}
_020D55A4: .word unk_0209AC44
	arm_func_end FUN_ov4_020d5584

	arm_func_start FUN_ov4_020d55a8
FUN_ov4_020d55a8: ; 0x020D55A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D55C8 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #1
	strb r0, [r4, #0x64c]
	ldmfd sp!, {r4, pc}
_020D55C8: .word unk_0209AC44
	arm_func_end FUN_ov4_020d55a8

	arm_func_start FUN_ov4_020d55cc
FUN_ov4_020d55cc: ; 0x020D55CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D55EC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #2
	strb r0, [r4, #0x64c]
	ldmfd sp!, {r4, pc}
_020D55EC: .word unk_0209AC44
	arm_func_end FUN_ov4_020d55cc

	arm_func_start FUN_ov4_020d55f0
FUN_ov4_020d55f0: ; 0x020D55F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D5610 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	mov r0, #3
	strb r0, [r4, #0x64c]
	ldmfd sp!, {r4, pc}
_020D5610: .word unk_0209AC44
	arm_func_end FUN_ov4_020d55f0

	arm_func_start FUN_ov4_020d5614
FUN_ov4_020d5614: ; 0x020D5614
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D564C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4c]
	sub r1, r1, #1
	strb r1, [r4, #0x64c]
	ldrsb r0, [r0, #0x4c]
	cmp r0, #0
	movlt r0, #3
	strltb r0, [r4, #0x64c]
	ldmfd sp!, {r4, pc}
_020D564C: .word unk_0209AC44
	arm_func_end FUN_ov4_020d5614

	arm_func_start FUN_ov4_020d5650
FUN_ov4_020d5650: ; 0x020D5650
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D5688 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4c]
	add r1, r1, #1
	strb r1, [r4, #0x64c]
	ldrsb r0, [r0, #0x4c]
	cmp r0, #3
	movgt r0, #0
	strgtb r0, [r4, #0x64c]
	ldmfd sp!, {r4, pc}
_020D5688: .word unk_0209AC44
	arm_func_end FUN_ov4_020d5650

	arm_func_start FUN_ov4_020d568c
FUN_ov4_020d568c: ; 0x020D568C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	ldr r1, _020D57D0 ; =0x020A0640
	mov r4, r0
	ldr r1, [r1, #0x4d8]
	ldr r0, [r4, #0x96c]
	cmp r1, r0
	bhs _020D5710
	ldr r0, _020D57D4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	mov r6, #1
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r5, #0
	str r5, [sp, #8]
	ldr r1, _020D57D8 ; =0x020DBB80
	mov r0, r4
	mov r2, #0x21
	mov r3, #0x43
	str r5, [sp, #0xc]
	bl FUN_ov4_020d4d74
	str r5, [sp]
	ldr r0, _020D57DC ; =0x02099F38
	ldr r1, [r4, #0x134]
	ldr r0, [r0]
	mov r3, r5
	mov r2, #0xa
	bl FUN_ov16_0211401c
	add sp, sp, #0x100
	strb r6, [r4, #0x64d]
	ldmfd sp!, {r4, r5, r6, pc}
_020D5710:
	ldrb r0, [r4, #0xa15]
	cmp r0, #0
	bne _020D5750
	ldr r0, _020D57D4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _020D57E0 ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, pc}
_020D5750:
	ldr r0, [r4, #0x34]
	cmp r0, #0x20
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020D57D4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, #0
	add r12, sp, #0x10
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #7
_020D5784:
	stmia r12!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020D5784
	stmia r12!, {r0, r1, r2, r3}
	mov r0, #0x10
	strb r0, [sp, #0x12]
	ldr r2, [r4, #0x34]
	mov r5, #0x40
	add r1, sp, #0x10
	mov r0, r4
	strb r2, [sp, #0x13]
	str r5, [sp, #0x14]
	bl FUN_ov4_020ce72c
	mov r0, r4
	str r5, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, pc}
_020D57D0: .word unk_020A0640
_020D57D4: .word unk_0209AC44
_020D57D8: .word ov4_020DBB80
_020D57DC: .word unk_02099F38
_020D57E0: .word unk_0209AEC0
	arm_func_end FUN_ov4_020d568c

	arm_func_start FUN_ov4_020d57e4
FUN_ov4_020d57e4: ; 0x020D57E4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x158
	mov r4, r0
	ldr r0, _020D58C4 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r0, [r4, #0xa15]
	cmp r0, #0
	bne _020D5830
	ldr r0, _020D58C8 ; =0x0209AEC0
	bl FUN_020465fc
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x158
	ldmfd sp!, {r4, pc}
_020D5830:
	mov r0, #0
	add lr, sp, #0x68
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r12, #7
_020D5848:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _020D5848
	stmia lr!, {r0, r1, r2, r3}
	add r12, sp, #0x74
	add r3, sp, #0
	mov r2, #0x1a
_020D5868:
	ldrh r0, [r12, #2]
	ldrh r1, [r12], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020D5868
	mov r0, #0x10
	strb r0, [sp, #0x6a]
	ldr r3, [r4, #0x34]
	mov r2, #0x80
	add r1, sp, #0x68
	mov r0, r4
	strb r3, [sp, #0x6b]
	str r2, [sp, #0x6c]
	bl FUN_ov4_020ce72c
	mov r2, #1
	mov r1, #0x20
	mov r0, r4
	strb r2, [r4, #0x998]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x158
	ldmfd sp!, {r4, pc}
_020D58C4: .word unk_0209AC44
_020D58C8: .word unk_0209AEC0
	arm_func_end FUN_ov4_020d57e4

	arm_func_start FUN_ov4_020d58cc
FUN_ov4_020d58cc: ; 0x020D58CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #1
	ldr r0, _020D5924 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	mov r4, #0
	mov r0, r6
	mov r1, r4
	bl FUN_ov4_020d4c18
	mov r0, r6
	mov r1, r5
	bl FUN_ov4_020d4c18
	mov r1, #2
	mov r0, r6
	str r4, [r6, #0x5dc]
	str r1, [r6, #0x5cc]
	strb r5, [r6, #0x5db]
	strb r4, [r6, #0x64c]
	str r1, [r6, #0x34]
	bl FUN_ov4_020d2468
	ldmfd sp!, {r4, r5, r6, pc}
_020D5924: .word unk_0209AC44
	arm_func_end FUN_ov4_020d58cc

	arm_func_start FUN_ov4_020d5928
FUN_ov4_020d5928: ; 0x020D5928
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x994]
	and r0, r0, #0x300
	cmp r0, #0x300
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #1
	ldr r0, _020D597C ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _020D5980 ; =0x02099EC0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_02056e94
	mov r0, r5
	strb r4, [r5, #0x67a]
	str r4, [r5, #0x30]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020D597C: .word unk_0209AC44
_020D5980: .word unk_02099EC0
	arm_func_end FUN_ov4_020d5928

	arm_func_start FUN_ov4_020d5984
FUN_ov4_020d5984: ; 0x020D5984
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D59AC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r1, #0
	mov r0, #9
	str r1, [r4, #0x3c]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_020D59AC: .word unk_0209AC44
	arm_func_end FUN_ov4_020d5984

	arm_func_start FUN_ov4_020d59b0
FUN_ov4_020d59b0: ; 0x020D59B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D59D0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov4_020d4e20
	ldmfd sp!, {r4, pc}
_020D59D0: .word unk_0209AC44
	arm_func_end FUN_ov4_020d59b0

	arm_func_start FUN_ov4_020d59d4
FUN_ov4_020d59d4: ; 0x020D59D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D59F4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, #9
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, pc}
_020D59F4: .word unk_0209AC44
	arm_func_end FUN_ov4_020d59d4

	arm_func_start FUN_ov4_020d59f8
FUN_ov4_020d59f8: ; 0x020D59F8
	mov r12, #0x34
	mla r0, r1, r12, r0
	str r2, [r0, #0x188]
	ldr r1, [sp]
	str r3, [r0, #0x18c]
	ldr r2, [sp, #4]
	str r1, [r0, #0x190]
	ldr r1, [sp, #8]
	str r2, [r0, #0x194]
	ldr r2, [sp, #0xc]
	str r1, [r0, #0x198]
	ldr r1, [sp, #0x10]
	str r2, [r0, #0x1ac]
	ldr r3, [sp, #0x14]
	str r1, [r0, #0x1b0]
	add r1, r0, #0x100
	ldr r2, _020D5A54 ; =0x0208BFB0
	strh r3, [r1, #0xa0]
	ldr r3, [r2]
	ldr r1, [r2, #4]
	str r3, [r0, #0x1b4]
	str r1, [r0, #0x1b8]
	bx lr
_020D5A54: .word unk_0208BFB0
	arm_func_end FUN_ov4_020d59f8

	arm_func_start FUN_ov4_020d5a58
FUN_ov4_020d5a58: ; 0x020D5A58
	mov r12, #0x34
	mla r0, r1, r12, r0
	add r0, r0, #0x100
	strh r2, [r0, #0xa2]
	ldr r1, [sp]
	strh r3, [r0, #0xa4]
	ldr r2, [sp, #4]
	strh r1, [r0, #0xa6]
	ldr r1, [sp, #8]
	strh r2, [r0, #0xa8]
	strh r1, [r0, #0xaa]
	bx lr
	arm_func_end FUN_ov4_020d5a58

	arm_func_start FUN_ov4_020d5a88
FUN_ov4_020d5a88: ; 0x020D5A88
	stmfd sp!, {r0, r1, r2, r3}
	mov r2, #0x34
	mla r2, r1, r2, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r1, [r2, #0x1b4]
	str r0, [r2, #0x1b8]
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov4_020d5a88

	arm_func_start FUN_ov4_020d5aac
FUN_ov4_020d5aac: ; 0x020D5AAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r5, #0
	mov r10, r0
	mov r0, r5
	mov r3, #1
	str r0, [sp, #8]
	mov r4, #0x34
	mov r0, r3
	add r6, r10, #0x1a0
	ldr r1, _020D60A8 ; =0x0000FFFD
	b _020D5B28
_020D5ADC:
	mla r7, r0, r4, r10
	ldr r2, [r7, #0x19c]
	cmp r2, #0
	bne _020D5AFC
	add r2, r7, #0x100
	ldrh r2, [r2, #0xa0]
	tst r2, #2
	beq _020D5B24
_020D5AFC:
	mul r8, r0, r4
	add r7, r10, r8
	ldr r9, [r10, #0x34]
	ldr r2, [r7, #0x1ac]
	tst r9, r2
	ldreqh r2, [r6, r8]
	andeq r2, r2, r1
	streqh r2, [r6, r8]
	streq r5, [r7, #0x19c]
	strne r3, [sp, #8]
_020D5B24:
	add r0, r0, #1
_020D5B28:
	cmp r0, #0x15
	blt _020D5ADC
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r10, #0x188
	str r0, [sp, #0x10]
	ldr r0, _020D60AC ; =0x0000FFFB
	mov r7, #0xc0
	add r0, r0, #2
	mov r6, #0x100
	mov r9, #1
	add r8, r10, #0x1a0
	add r11, r10, #0x19c
	ldr r5, _020D60B0 ; =0x02099F38
	str r0, [sp, #0x14]
	b _020D5FF0
_020D5B68:
	mla r0, r9, r4, r10
	ldr r2, [r10, #0x34]
	ldr r1, [r0, #0x1ac]
	tst r2, r1
	cmpne r2, #0
	beq _020D5FEC
	ldrh r3, [r10, #8]
	add r1, r0, #0x100
	ldrh r2, [r1, #0xa2]
	tst r3, r2
	beq _020D5BD8
	ldrh r2, [r1, #0xa0]
	tst r2, #6
	ldreq r1, [r10, #0x24]
	cmpeq r1, #0
	ldreq r1, [sp, #8]
	cmpeq r1, #0
	bne _020D5BD8
	tst r2, #8
	mul r2, r9, r4
	movne r1, #0
	moveq r1, #4
	str r1, [r0, #0x19c]
	ldrh r1, [r8, r2]
	mov r0, #1
	str r0, [sp, #8]
	orr r0, r1, #6
	strh r0, [r8, r2]
_020D5BD8:
	mla r0, r9, r4, r10
	add r3, r0, #0x100
	ldrsh r2, [r3, #0xa8]
	mov r0, r10
	mov r1, #3
	str r2, [sp]
	ldrsh r2, [r3, #0xaa]
	str r2, [sp, #4]
	ldrsh r2, [r3, #0xa4]
	ldrsh r3, [r3, #0xa6]
	bl FUN_ov4_020cc1d8
	cmp r0, #0
	mulne r1, r9, r4
	ldrneh r0, [r8, r1]
	orrne r0, r0, #2
	strneh r0, [r8, r1]
	ldr r0, [r10, #0x2c]
	cmp r0, #0
	beq _020D5C8C
	mla r0, r9, r4, r10
	add r3, r0, #0x100
	ldrsh r2, [r3, #0xa8]
	mov r0, r10
	mov r1, #4
	str r2, [sp]
	ldrsh r2, [r3, #0xaa]
	str r2, [sp, #4]
	ldrsh r2, [r3, #0xa4]
	ldrsh r3, [r3, #0xa6]
	bl FUN_ov4_020cc1d8
	cmp r0, #0
	beq _020D5C8C
	mla r1, r9, r4, r10
	add r0, r1, #0x100
	ldrh r0, [r0, #0xa0]
	tst r0, #4
	bne _020D5C8C
	tst r0, #8
	movne r0, #0
	moveq r0, #4
	str r0, [r1, #0x19c]
	mul r1, r9, r4
	ldrh r0, [r8, r1]
	orr r0, r0, #4
	strh r0, [r8, r1]
_020D5C8C:
	mla r2, r9, r4, r10
	add r0, r2, #0x100
	ldrh r1, [r0, #0xa0]
	tst r1, #8
	beq _020D5D64
	ldr r0, [r2, #0x19c]
	cmp r0, #0
	bgt _020D5CB4
	tst r1, #2
	beq _020D5F7C
_020D5CB4:
	mla r2, r9, r4, r10
	ldr r0, [r2, #0x188]
	cmp r0, #0
	beq _020D5F7C
	add r0, r2, #0x100
	ldrh r1, [r0, #0xa0]
	tst r1, #2
	beq _020D5D18
	ldr r1, [r2, #0x194]
	cmp r1, #0
	blt _020D5D14
	ldrsh r1, [r0, #0xa6]
	str r1, [sp]
	ldrsh r3, [r0, #0xa4]
	ldr r0, [r5]
	ldr r1, [r2, #0x188]
	ldr r2, [r2, #0x18c]
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mla r3, r9, r4, r10
	ldr r1, [r3, #0x188]
	ldr r2, [r3, #0x18c]
	ldr r3, [r3, #0x194]
	b _020D5D54
_020D5D14:
	b _020D5F64
_020D5D18:
	ldr r1, [r2, #0x190]
	cmp r1, #0
	blt _020D5D60
	ldrsh r1, [r0, #0xa6]
	str r1, [sp]
	ldrsh r3, [r0, #0xa4]
	ldr r0, [r5]
	ldr r1, [r2, #0x188]
	ldr r2, [r2, #0x18c]
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	mla r3, r9, r4, r10
_020D5D48:
	ldr r1, [r3, #0x188]
	ldr r2, [r3, #0x18c]
	ldr r3, [r3, #0x190]
_020D5D54:
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	b _020D5F7C
_020D5D60:
	b _020D5F64
_020D5D64:
	tst r1, #2
	ldr r1, [r2, #0x188]
	beq _020D5E3C
	cmp r1, #0
	beq _020D5E10
	ldr r1, [r2, #0x194]
	cmp r1, #0
	blt _020D5DF8
	ldrsh r1, [r0, #0xa6]
	str r1, [sp]
	ldrsh r3, [r0, #0xa4]
	ldr r0, [r5]
	ldr r1, [r2, #0x188]
	ldr r2, [r2, #0x18c]
	bl FUN_ov16_02113b78
	mla r3, r9, r4, r10
	ldr r0, [r3, #0x1b0]
	cmp r0, #1
	bne _020D5DCC
	ldr r0, [r5]
	ldr r1, [r3, #0x188]
	ldr r2, [r3, #0x18c]
	ldr r3, [r3, #0x194]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	b _020D5E10
_020D5DCC:
	cmp r0, #2
	bne _020D5E10
	mov r0, #0
	str r0, [sp]
	ldr r1, [r3, #0x188]
	ldr r2, [r3, #0x18c]
	ldr r3, [r3, #0x194]
	ldr r0, [r5]
	and r3, r3, #0xff
	bl FUN_ov16_0211401c
	b _020D5E10
_020D5DF8:
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r2, #0x188]
	ldr r2, [r2, #0x18c]
	mov r3, r6
	bl FUN_ov16_02113b78
_020D5E10:
	cmp r9, #5
	cmpne r9, #0xe
	moveq r0, #1
	streqb r0, [r10, #0x64e]
	cmp r9, #6
	beq _020D5E30
	cmp r9, #0xf
	bne _020D5F7C
_020D5E30:
	mov r0, #2
	strb r0, [r10, #0x64e]
	b _020D5F7C
_020D5E3C:
	cmp r1, #0
	beq _020D5F7C
	ldr r1, [r2, #0x190]
	cmp r1, #0
	blt _020D5EB0
	ldrsh r1, [r0, #0xa6]
	str r1, [sp]
	ldrsh r3, [r0, #0xa4]
	ldr r0, [r5]
	ldr r1, [r2, #0x188]
	ldr r2, [r2, #0x18c]
	bl FUN_ov16_02113b78
	mla r3, r9, r4, r10
	ldr r0, [r3, #0x1b0]
	cmp r0, #1
	bne _020D5E84
	ldr r0, [r5]
	b _020D5D48
_020D5E84:
	cmp r0, #2
	bne _020D5F7C
	mov r0, #0
	str r0, [sp]
	ldr r1, [r3, #0x188]
	ldr r2, [r3, #0x18c]
	ldr r3, [r3, #0x190]
	ldr r0, [r5]
	and r3, r3, #0xff
	bl FUN_ov16_0211401c
	b _020D5F7C
_020D5EB0:
	cmp r9, #5
	cmpne r9, #6
	cmpne r9, #0xe
	beq _020D5EC8
	cmp r9, #0xf
	bne _020D5F64
_020D5EC8:
	ldr r0, [sp, #0x10]
	mov r1, #1
	mla r3, r9, r4, r0
	ldrsh r2, [r3, #0x20]
	mov r0, r10
	str r2, [sp]
	ldrsh r2, [r3, #0x22]
	str r2, [sp, #4]
	ldrsh r2, [r3, #0x1c]
	ldrsh r3, [r3, #0x1e]
	bl FUN_ov4_020cc1d8
	cmp r0, #0
	beq _020D5F48
	mla r3, r9, r4, r10
	mov r0, #0
	str r0, [sp]
	ldr r1, [r3, #0x188]
	ldr r2, [r3, #0x18c]
	ldr r3, [r3, #0x194]
	ldr r0, [r5]
	and r3, r3, #0xff
	sub r3, r3, #1
	bl FUN_ov16_0211401c
	mla r2, r9, r4, r10
	add r0, r2, #0x100
	ldrsh r1, [r0, #0xa6]
	str r1, [sp]
	ldrsh r3, [r0, #0xa4]
	ldr r1, [r2, #0x188]
	ldr r0, [r5]
	ldr r2, [r2, #0x18c]
_020D5F44:
	b _020D5F78
_020D5F48:
	str r7, [sp]
	ldr r0, [r5]
	mla r2, r9, r4, r10
	ldr r1, [r2, #0x188]
	ldr r2, [r2, #0x18c]
	mov r3, r6
	b _020D5F44
_020D5F64:
	str r7, [sp]
	ldr r1, [r2, #0x188]
	ldr r0, [r5]
	ldr r2, [r2, #0x18c]
	mov r3, r6
_020D5F78:
	bl FUN_ov16_02113b78
_020D5F7C:
	mul r0, r9, r4
	ldr r1, [r11, r0]
	add r2, r10, r0
	sub r1, r1, #1
	str r1, [r11, r0]
	ldr r1, [r2, #0x19c]
	cmp r1, #0
	ldrgth r1, [r8, r0]
	orrgt r1, r1, #2
	strgth r1, [r8, r0]
	bgt _020D5FEC
	mov r1, #0
	str r1, [r2, #0x19c]
	add r1, r2, #0x100
	ldrh r1, [r1, #0xa0]
	tst r1, #2
	bne _020D5FD8
	tst r1, #4
	ldrneh r2, [r8, r0]
	ldrne r1, _020D60AC ; =0x0000FFFB
	strne r9, [sp, #0xc]
	andne r1, r2, r1
	strneh r1, [r8, r0]
_020D5FD8:
	mul r2, r9, r4
	ldrh r1, [r8, r2]
	ldr r0, [sp, #0x14]
	and r0, r1, r0
	strh r0, [r8, r2]
_020D5FEC:
	add r9, r9, #1
_020D5FF0:
	cmp r9, #0x15
	blt _020D5B68
	ldr r0, [sp, #0xc]
	mov r4, #0x34
	cmp r0, #0
	mov r6, #0
	beq _020D6044
	mul r3, r0, r4
	ldr r2, _020D60B4 ; =0x0208BFB0
	add r5, r10, #0x1b4
	ldr r1, [r5, r3]
	ldr r0, [r2]
	add r3, r5, r3
	cmp r1, r0
	ldreq r1, [r3, #4]
	ldreq r0, [r2, #4]
	mov r5, #1
	cmpeq r1, r0
	moveq r5, r6
	cmp r5, #0
	movne r6, #1
_020D6044:
	cmp r6, #0
	beq _020D6078
	ldr r0, [sp, #0xc]
	add r1, r10, #0x1b4
	mla r1, r0, r4, r1
	ldr r0, [r1, #4]
	tst r0, #1
	add r0, r10, r0, asr #1
	ldrne r2, [r0]
	ldrne r1, [r1]
	ldrne r1, [r2, r1]
	ldreq r1, [r1]
	blx r1
_020D6078:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020D609C
	mul r2, r0, r4
	add r3, r10, #0x1a0
	ldrh r1, [r3, r2]
	ldr r0, _020D60A8 ; =0x0000FFFD
	and r0, r1, r0
	strh r0, [r3, r2]
_020D609C:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D60A8: .word 0x0000FFFD
_020D60AC: .word 0x0000FFFB
_020D60B0: .word unk_02099F38
_020D60B4: .word unk_0208BFB0
	arm_func_end FUN_ov4_020d5aac

	arm_func_start FUN_ov4_020d60b8
FUN_ov4_020d60b8: ; 0x020D60B8
	stmfd sp!, {r4, lr}
	ldr r2, _020D60F4 ; =0x0000FFFB
	mov r4, #1
	mov lr, #0
	mov r1, #0x34
_020D60CC:
	mla r3, r4, r1, r0
	str lr, [r3, #0x19c]
	add r3, r3, #0x100
	ldrh r12, [r3, #0xa0]
	add r4, r4, #1
	cmp r4, #0x15
	and r12, r12, r2
	strh r12, [r3, #0xa0]
	blt _020D60CC
	ldmfd sp!, {r4, pc}
_020D60F4: .word 0x0000FFFB
	arm_func_end FUN_ov4_020d60b8

	arm_func_start FUN_ov4_020d60f8
FUN_ov4_020d60f8: ; 0x020D60F8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mvn r2, #0x7c
	mov r4, r0
	cmp r1, r2
	beq _020D612C
	add r0, r2, #1
	cmp r1, r0
	addne r0, r2, #4
	cmpne r1, r0
	beq _020D61B0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D612C:
	ldr r5, _020D6230 ; =0x02099F38
	ldr r3, [r4, #0x118]
	mov r6, #1
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	ldr r3, _020D6234 ; =0x00000212
	mov r2, r6
	bl FUN_ov16_021139bc
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	mov r3, #0x20
	bl FUN_ov16_02113b78
	mov r0, r4
	bl FUN_ov4_020d4e68
	ldr r0, _020D6238 ; =0x0209AEC0
	bl FUN_020465fc
	add sp, sp, #4
	strb r6, [r4, #0xa16]
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D61B0:
	ldr r5, _020D6230 ; =0x02099F38
	ldr r3, [r4, #0x114]
	mov r6, #1
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	ldr r3, _020D6234 ; =0x00000212
	mov r2, r6
	bl FUN_ov16_021139bc
	mov r2, r6
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r3, #0x20
	bl FUN_ov16_02113b78
	mov r0, r4
	bl FUN_ov4_020d4e68
	mov r0, #2
	strb r0, [r4, #0xa16]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D6230: .word unk_02099F38
_020D6234: .word 0x00000212
_020D6238: .word unk_0209AEC0
	arm_func_end FUN_ov4_020d60f8

	arm_func_start FUN_ov4_020d623c
FUN_ov4_020d623c: ; 0x020D623C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldrb r0, [r4, #0xa16]
	cmp r0, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #8]
	tst r0, #1
	bne _020D6274
	ldr r0, [r4, #0x28]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
_020D6274:
	ldr r5, _020D6358 ; =0x02099F38
	ldr r3, [r4, #0x80]
	mov r6, #1
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	ldr r3, _020D635C ; =0x00000226
	mov r2, r6
	bl FUN_ov16_021139bc
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r2, r6
	mov r3, #8
	bl FUN_ov16_02113b78
	mov r2, r6
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x14c]
	mov r3, #0xf0
	bl FUN_ov16_02113d08
	ldr r0, [r4, #0x30]
	mov r6, #0
	strb r6, [r4, #0xa16]
	cmp r0, #6
	beq _020D6334
	cmp r0, #7
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r5, _020D6360 ; =0x0209A5D0
	ldr r1, [r4, #0x99c]
	mov r0, r5
	bl FUN_02062800
	ldr r2, [r4, #0x99c]
	mov r0, r5
	mov r1, r6
	bl FUN_020628dc
	mov r1, r0
	mov r0, r4
	bl FUN_ov4_020d60f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D6334:
	ldr r2, [r4, #0x99c]
	ldr r0, _020D6360 ; =0x0209A5D0
	mov r1, r6
	bl FUN_020626f4
	mov r1, r0
	mov r0, r4
	bl FUN_ov4_020d60f8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D6358: .word unk_02099F38
_020D635C: .word 0x00000226
_020D6360: .word unk_0209A5D0
	arm_func_end FUN_ov4_020d623c

	arm_func_start FUN_ov4_020d6364
FUN_ov4_020d6364: ; 0x020D6364
	stmfd sp!, {r4, lr}
	ldr r0, _020D6380 ; =0x0209BA20
	mov r4, r2
	bl FUN_0205107c
	mov r1, r4
	bl FUN_0204fd68
	ldmfd sp!, {r4, pc}
_020D6380: .word unk_0209BA20
	arm_func_end FUN_ov4_020d6364

	arm_func_start FUN_ov4_020d6384
FUN_ov4_020d6384: ; 0x020D6384
	stmfd sp!, {r4, lr}
	ldr r0, _020D63A4 ; =0x0209BA20
	mov r4, r1
	mov r1, #0
	bl FUN_0205106c
	mov r1, r4
	bl FUN_0205019c
	ldmfd sp!, {r4, pc}
_020D63A4: .word unk_0209BA20
	arm_func_end FUN_ov4_020d6384

	arm_func_start FUN_ov4_020d63a8
FUN_ov4_020d63a8: ; 0x020D63A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _020D64A0 ; =0x0209AC44
	ldr r6, _020D64A4 ; =0x00008385
	mov r0, r4
	mov r1, r6
	bl FUN_0202d00c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	add r1, r6, #1
	bl FUN_0202d00c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrsh r0, [r5, #0x1e]
	cmp r0, #0
	ble _020D6444
	sub r0, r0, #1
	strh r0, [r5, #0x1e]
	ldrsh r0, [r5, #0x1e]
	cmp r0, #0
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldr r0, _020D64A8 ; =0x020DBEC1
	ldrb r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, _020D64AC ; =0x020DBD28
	mov r3, #1
	mov r0, r4
	mov r1, #0
	strb r3, [r5, #0x1d]
	bl FUN_0202d594
	ldmfd sp!, {r4, r5, r6, pc}
_020D6444:
	ldr r0, _020D64A8 ; =0x020DBEC1
	ldrb r0, [r0]
	cmp r0, #0
	ldrb r0, [r5, #0x1d]
	beq _020D647C
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, _020D64B0 ; =0x020DBD34
	mov r3, #1
	mov r0, r4
	mov r1, #0
	strb r3, [r5, #0x1d]
	bl FUN_0202d594
	ldmfd sp!, {r4, r5, r6, pc}
_020D647C:
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, _020D64B4 ; =0x020DBD40
	mov r3, #0
	mov r0, r4
	mov r2, #0x1f4
	strb r3, [r5, #0x1d]
	bl FUN_0202d798
	ldmfd sp!, {r4, r5, r6, pc}
_020D64A0: .word unk_0209AC44
_020D64A4: .word 0x00008385
_020D64A8: .word ov4_020DBEC1
_020D64AC: .word ov4_020DBD28
_020D64B0: .word ov4_020DBD34
_020D64B4: .word ov4_020DBD40
	arm_func_end FUN_ov4_020d63a8

	arm_func_start FUN_ov4_020d64b8
FUN_ov4_020d64b8: ; 0x020D64B8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r4, r0
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x20
	mov r2, #0xa8
	bl MI_CpuFill8
	ldr r0, _020D6594 ; =0x020DBD4C
	add r1, r4, #0x20
	bl FUN_ov16_020f3054
	add r0, sp, #0
	add r1, sp, #8
	strb r5, [r0]
	strb r5, [r0, #1]
	strb r5, [r0, #2]
	strb r5, [r0, #3]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	strb r5, [r0, #6]
	strb r5, [r0, #7]
	mov r0, #0x10
_020D6510:
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	strb r5, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _020D6510
	ldr r0, _020D6598 ; =0x0209A1A8
	ldrb r0, [r0]
	cmp r0, #0
	add r0, sp, #0
	bne _020D6548
	ldr r1, _020D659C ; =0x020DBD70
	b _020D654C
_020D6548:
	ldr r1, _020D65A0 ; =0x020DBD74
_020D654C:
	bl STD_CopyString
	add r5, sp, #8
	ldr r1, _020D65A4 ; =0x020DBD78
	mov r0, r5
	bl STD_CopyString
	add r1, sp, #0
	mov r0, r5
	bl STD_ConcatenateString
	ldr r1, _020D65A8 ; =0x020DBD94
	mov r0, r5
	bl STD_ConcatenateString
	mov r0, r5
	add r1, r4, #0x2c
	bl FUN_ov16_020f3054
	mov r0, r4
	bl FUN_ov4_020d65ac
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
_020D6594: .word ov4_020DBD4C
_020D6598: .word unk_0209A1A8
_020D659C: .word ov4_020DBD70
_020D65A0: .word ov4_020DBD74
_020D65A4: .word ov4_020DBD78
_020D65A8: .word ov4_020DBD94
	arm_func_end FUN_ov4_020d64b8

	arm_func_start FUN_ov4_020d65ac
FUN_ov4_020d65ac: ; 0x020D65AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020D6644 ; =0x0209A1A8
	mov r6, r0
	ldrb r0, [r1]
	ldr r5, _020D6648 ; =0x020D8D54
	ldr r8, [r6, #0x20]
	cmp r0, #0
	ldrne r5, _020D664C ; =0x020D8D74
	ldr r9, _020D6650 ; =0x020D8D94
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9]
	cmp r0, #0
	beq _020D6608
	add r7, r6, #0x20
	mov r4, #0xc
_020D65EC:
	ldr r3, [r9, #4]
	mov r2, r8
	mla r1, r3, r4, r7
	bl FUN_ov16_020f32b4
	ldr r0, [r9, #8]!
	cmp r0, #0
	bne _020D65EC
_020D6608:
	ldr r4, [r6, #0x2c]
	cmp r4, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r7, r6, #0x20
	mov r6, #0xc
_020D6624:
	ldmia r5, {r0, r2}
	mla r1, r2, r6, r7
	mov r2, r4
	bl FUN_ov16_020f32b4
	ldr r0, [r5, #8]!
	cmp r0, #0
	bne _020D6624
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D6644: .word unk_0209A1A8
_020D6648: .word 0x020D8D54
_020D664C: .word 0x020D8D74
_020D6650: .word 0x020D8D94
	arm_func_end FUN_ov4_020d65ac

	arm_func_start FUN_ov4_020d6654
FUN_ov4_020d6654: ; 0x020D6654
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x20
	mov r4, #0xc
_020D6664:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xe
	blt _020D6664
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020d6654

	arm_func_start FUN_ov4_020d667c
FUN_ov4_020d667c: ; 0x020D667C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r8, [r10, #0x38]
	mov r5, #0
	cmp r8, #0
	beq _020D66C0
	ldr r0, [r8, #0xc]
	ldr r2, [r8, #0x10]
	mov r1, r5
	add r0, r8, r0
	bl GXS_LoadBG2Scr
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r5
	add r0, r8, r0
	bl GXS_LoadBG2Char
_020D66C0:
	bl GXS_BeginLoadBGExtPltt
	ldmib r8, {r0, r2}
	add r0, r8, r0
	mov r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldr r8, [r10, #0x50]
	cmp r8, #0
	beq _020D6790
	ldr r4, _020D687C ; =0x020A8C40
	ldr r3, [r8, #0xc]
	mov r6, #0
	mov r0, r6
	mov r1, r4
	mov r2, #0x800
	add r7, r8, r3
	bl MIi_CpuClearFast
	b _020D6734
_020D6708:
	mov r2, r5
	mov r3, r6, lsl #5
	b _020D6728
_020D6714:
	ldrh r1, [r7], #2
	mov r0, r3, lsl #1
	add r3, r3, #1
	strh r1, [r4, r0]
	add r2, r2, #1
_020D6728:
	cmp r2, #0x16
	blt _020D6714
	add r6, r6, #1
_020D6734:
	cmp r6, #5
	blt _020D6708
	ldr r6, _020D687C ; =0x020A8C40
	mov r4, #0x800
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBG3Scr
	ldr r0, [r8, #0x14]
	ldr r2, [r8, #0x18]
	mov r1, r5
	add r0, r8, r0
	bl GXS_LoadBG3Char
	bl GXS_BeginLoadBGExtPltt
	ldr r0, [r8, #4]
	ldr r2, [r8, #8]
	mov r1, #0x6000
	add r0, r8, r0
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
_020D6790:
	ldr r0, _020D6880 ; =0x0209A144
	mov r6, #0
	ldr r3, [r0]
	mov r1, r6
	ldr r0, [r3, #0x14]
	ldr r2, [r3, #0x18]
	add r0, r3, r0
	bl GXS_LoadBG0Char
	mov r0, r6
	mov r1, #0x10
	bl FUN_ov16_020f1c28
	mov r9, r6
	mov r7, #0x20
	mov r11, #1
	ldr r5, _020D6884 ; =0x020D8D2C
	mov r4, #0xc
	b _020D683C
_020D67D4:
	ldr r1, [r5, r9, lsl #2]
	mla r0, r1, r4, r10
	ldr r8, [r0, #0x20]
	cmp r8, #0
	beq _020D6838
	cmp r9, #0
	bne _020D6800
	mov r0, r8
	mov r1, r11
	mov r2, #3
	bl FUN_ov16_020f1138
_020D6800:
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	mov r3, #3
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	ldr r1, [r8, #0x14]
	mov r6, r0
	add r0, r8, r1
	ldr r2, [r8, #0x18]
	mov r1, r7
	bl GXS_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020D6838:
	add r9, r9, #1
_020D683C:
	cmp r9, #4
	blo _020D67D4
	bl FUN_ov16_020f10c8
	add r4, sp, #8
	mov r0, r4
	bl MTX_Identity22_
	mov r2, #0
	mov r1, r4
	ldr r0, _020D6888 ; =0x04001030
	mov r3, r2
	str r2, [sp]
	mov r4, #0xc0
	str r4, [sp, #4]
	bl FUN_0200458c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D687C: .word unk_020A8C40
_020D6880: .word unk_0209A144
_020D6884: .word 0x020D8D2C
_020D6888: .word 0x04001030
	arm_func_end FUN_ov4_020d667c

	arm_func_start FUN_ov4_020d688c
FUN_ov4_020d688c: ; 0x020D688C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r1, _020D6984 ; =0x020D8CCC
	mov r10, r0
	ldr r3, [r1]
	ldr r2, [r1, #4]
	mov r0, r3, asr #2
	mov r1, r2, asr #2
	add r0, r3, r0, lsr #29
	add r1, r2, r1, lsr #29
	mov r0, r0, lsl #0xd
	mov r1, r1, lsl #0xd
	ldr r5, _020D6988 ; =0x0209F5C0
	ldr r4, _020D698C ; =0x020D8CEC
	ldr r8, _020D6990 ; =0x020D8CDC
	mov r9, #0
	mov r7, r0, asr #0x10
	mov r6, r1, asr #0x10
	mov r11, #0x20
_020D68D8:
	ldr r1, [r8, r9, lsl #2]
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r2, [r0, #0x20]
	cmp r2, #0
	beq _020D6960
	ldr r1, [r2, #0xc]
	ldr r3, [r4, r9, lsl #2]
	add r1, r2, r1
	str r1, [sp, #0x28]
	mov r1, #0x18
	strh r1, [sp, #0x1a]
	mov r1, #0
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	mov r1, #3
	strb r1, [sp, #0x24]
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r11, [sp, #0x18]
	mov r1, #0
	str r1, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, r5
	mov r1, #1
	mov r2, #2
	bl FUN_ov16_020f5c34
_020D6960:
	ldr r2, [r4, r9, lsl #2]
	mov r0, r5
	mov r1, #1
	bl FUN_ov16_020f6084
	add r9, r9, #1
	cmp r9, #4
	blo _020D68D8
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D6984: .word 0x020D8CCC
_020D6988: .word unk_0209F5C0
_020D698C: .word 0x020D8CEC
_020D6990: .word 0x020D8CDC
	arm_func_end FUN_ov4_020d688c

	arm_func_start FUN_ov4_020d6994
FUN_ov4_020d6994: ; 0x020D6994
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r1, [r4, #8]
	ldr r5, _020D6AEC ; =0x0209F5C0
	mov r6, #1
	cmp r1, #0x26
	bgt _020D69DC
	subs r0, r1, #0x1f
	addpl pc, pc, r0, lsl #2
	b _020D6AB0
_020D69BC: ; jump table
	b _020D69E8 ; case 0
	b _020D6A28 ; case 1
	b _020D6AB0 ; case 2
	b _020D6A3C ; case 3
	b _020D6AB0 ; case 4
	b _020D6A4C ; case 5
	b _020D6AB0 ; case 6
	b _020D6A5C ; case 7
_020D69DC:
	cmp r1, #0x30
	beq _020D6AA0
	b _020D6AB0
_020D69E8:
	mov r1, r6
	ldr r0, _020D6AEC ; =0x0209F5C0
	mov r2, r1
	bl FUN_ov16_020f60f8
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _020D6AB0
	ldr r0, _020D6AF0 ; =0x0209A1A8
	ldr r1, _020D6AF4 ; =0x00008385
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r1, _020D6AF8 ; =0x00008386
	ldr r0, _020D6AFC ; =0x0209AC44
	bl FUN_0202cf6c
	strb r6, [r4, #0x1c]
	b _020D6AB0
_020D6A28:
	ldr r0, _020D6AEC ; =0x0209F5C0
	mov r1, r6
	mov r2, #2
_020D6A34:
	bl FUN_ov16_020f60f8
	b _020D6AB0
_020D6A3C:
	ldr r0, _020D6AEC ; =0x0209F5C0
	mov r1, r6
	mov r2, #3
	b _020D6A34
_020D6A4C:
	ldr r0, _020D6AEC ; =0x0209F5C0
	mov r1, r6
	mov r2, #4
	b _020D6A34
_020D6A5C:
	mov r0, r5
	mov r1, r6
	mov r2, r6
	bl FUN_ov16_020f6084
	mov r0, r5
	mov r1, r6
	mov r2, #2
	bl FUN_ov16_020f6084
	mov r0, r5
	mov r1, r6
	mov r2, #3
	bl FUN_ov16_020f6084
	mov r0, r5
	mov r1, r6
	mov r2, #4
	bl FUN_ov16_020f6084
	b _020D6AB0
_020D6AA0:
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020D6AB0:
	ldr r0, _020D6B00 ; =0x020DBEC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020D6ACC
	ldrh r0, [r4, #8]
	cmp r0, #0x3c
	bhi _020D6AD8
_020D6ACC:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
_020D6AD8:
	ldr r0, _020D6AEC ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f672c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D6AEC: .word unk_0209F5C0
_020D6AF0: .word unk_0209A1A8
_020D6AF4: .word 0x00008385
_020D6AF8: .word 0x00008386
_020D6AFC: .word unk_0209AC44
_020D6B00: .word ov4_020DBEC0
	arm_func_end FUN_ov4_020d6994

	arm_func_start FUN_ov4_020d6b04
FUN_ov4_020d6b04: ; 0x020D6B04
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0xa]
	cmp r1, #0xb
	bgt _020D6B3C
	bge _020D6BA4
	cmp r1, #1
	bgt _020D6BF4
	cmp r1, #0
	blt _020D6BF4
	beq _020D6B5C
	cmp r1, #1
	beq _020D6B68
	b _020D6BF4
_020D6B3C:
	cmp r1, #0xd
	bgt _020D6BF4
	cmp r1, #0xc
	blt _020D6BF4
	beq _020D6BC4
	cmp r1, #0xd
	beq _020D6BE4
	b _020D6BF4
_020D6B5C:
	ldr r1, [r0]
	ldr r1, [r1, #0x54]
	b _020D6BBC
_020D6B68:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020D6C00
	ldrh r1, [r4, #0xa]
	mov r0, r4
	add r1, r1, #1
	strh r1, [r4, #0xa]
	bl FUN_ov4_020d6fb0
	mov r0, r4
	bl FUN_ov4_020d704c
	mov r0, r4
	bl FUN_ov4_020d6c08
	b _020D6C00
_020D6BA4:
	bl FUN_ov16_020f1670
	cmp r0, #0
	bne _020D6C00
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
_020D6BBC:
	blx r1
	b _020D6BF4
_020D6BC4:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldreqh r0, [r4, #0xa]
	addeq r0, r0, #1
	streqh r0, [r4, #0xa]
	b _020D6C00
_020D6BE4:
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020D6BF4:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
_020D6C00:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d6b04

	arm_func_start FUN_ov4_020d6c08
FUN_ov4_020d6c08: ; 0x020D6C08
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [r0, #0x44]
	cmp r5, #0
	beq _020D6C44
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG2Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG2Char
_020D6C44:
	bl GXS_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	add r0, r5, r0
	mov r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldr r5, _020D6C84 ; =0x0209F5C0
	mov r4, #1
	mov r0, r5
	mov r1, r4
	mov r2, #0xd
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f672c
	ldmfd sp!, {r3, r4, r5, pc}
_020D6C84: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d6c08

	arm_func_start FUN_ov4_020d6c88
FUN_ov4_020d6c88: ; 0x020D6C88
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrh r0, [r5, #0x10]
	ldr r6, _020D6DE0 ; =0x0209F5C0
	mov r4, #1
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	bne _020D6CD0
	ldrh r2, [r5, #0x12]
	cmp r2, #6
	ldrlo r1, _020D6DE4 ; =0x020D8D3C
	addlo r0, r2, #1
	ldrlo r1, [r1, r2, lsl #2]
	strloh r0, [r5, #0x12]
	strlo r1, [r5, #0x18]
_020D6CD0:
	ldrh r0, [r5, #8]
	cmp r0, #5
	bgt _020D6D00
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020D6DA4
_020D6CE8: ; jump table
	b _020D6DA4 ; case 0
	b _020D6D0C ; case 1
	b _020D6D20 ; case 2
	b _020D6D30 ; case 3
	b _020D6D40 ; case 4
	b _020D6D50 ; case 5
_020D6D00:
	cmp r0, #0x3c
	beq _020D6D94
	b _020D6DA4
_020D6D0C:
	ldr r0, _020D6DE0 ; =0x0209F5C0
	mov r1, #1
	mov r2, #5
_020D6D18:
	bl FUN_ov16_020f60f8
	b _020D6DA4
_020D6D20:
	ldr r0, _020D6DE0 ; =0x0209F5C0
	mov r1, #1
	mov r2, #6
	b _020D6D18
_020D6D30:
	ldr r0, _020D6DE0 ; =0x0209F5C0
	mov r1, #1
	mov r2, #7
	b _020D6D18
_020D6D40:
	ldr r0, _020D6DE0 ; =0x0209F5C0
	mov r1, #1
	mov r2, #8
	b _020D6D18
_020D6D50:
	mov r0, r6
	mov r1, r4
	mov r2, #5
	bl FUN_ov16_020f6084
	mov r0, r6
	mov r1, r4
	mov r2, #6
	bl FUN_ov16_020f6084
	mov r0, r6
	mov r1, r4
	mov r2, #7
	bl FUN_ov16_020f6084
	mov r0, r6
	mov r1, r4
	mov r2, #8
	bl FUN_ov16_020f6084
	b _020D6DA4
_020D6D94:
	mov r0, #0
	strh r0, [r5, #8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020D6DA4:
	ldr r0, _020D6DE8 ; =0x020DBEC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _020D6DC0
	ldrh r0, [r5, #8]
	cmp r0, #0x3c
	bhi _020D6DCC
_020D6DC0:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
_020D6DCC:
	ldr r0, _020D6DE0 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f672c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020D6DE0: .word unk_0209F5C0
_020D6DE4: .word 0x020D8D3C
_020D6DE8: .word ov4_020DBEC0
	arm_func_end FUN_ov4_020d6c88

	arm_func_start FUN_ov4_020d6dec
FUN_ov4_020d6dec: ; 0x020D6DEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020D6E38 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f5a58
	mov r2, #0
	mov r1, #0x2d
	mov r0, #0x1e
	strh r2, [r4, #8]
	strh r2, [r4, #0xa]
	strh r1, [r4, #0x10]
	strh r2, [r4, #0x12]
	str r2, [r4, #0x18]
	str r2, [r4, #0x14]
	strb r2, [r4, #0x1c]
	strb r2, [r4, #0x1d]
	strh r0, [r4, #0x1e]
	str r2, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020D6E38: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d6dec

	arm_func_start FUN_ov4_020d6e3c
FUN_ov4_020d6e3c: ; 0x020D6E3C
	stmfd sp!, {r4, lr}
	ldr r1, _020D6E74 ; =0x0209BA20
	mov r4, r0
	ldrb r1, [r1, #0x88f]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov4_020d64b8
	mov r0, r4
	bl FUN_ov4_020d667c
	mov r0, r4
	bl FUN_ov4_020d688c
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020D6E74: .word unk_0209BA20
	arm_func_end FUN_ov4_020d6e3c

	arm_func_start FUN_ov4_020d6e78
FUN_ov4_020d6e78: ; 0x020D6E78
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020D6EF0
_020D6E90: ; jump table
	b _020D6EA0 ; case 0
	b _020D6EC4 ; case 1
	b _020D6ED8 ; case 2
	b _020D6EE0 ; case 3
_020D6EA0:
	bl FUN_ov4_020d6e3c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_020D6EC4:
	mov r0, r4
	bl FUN_ov4_020d6994
	cmp r0, #0
	movne r0, #2
	b _020D6EEC
_020D6ED8:
	bl FUN_ov4_020d6b04
	b _020D6EE4
_020D6EE0:
	bl FUN_ov4_020d6c88
_020D6EE4:
	cmp r0, #0
	movne r0, #3
_020D6EEC:
	strne r0, [r4, #0xc]
_020D6EF0:
	mov r0, r4
	bl FUN_ov4_020d63a8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d6e78

	arm_func_start FUN_ov4_020d6efc
FUN_ov4_020d6efc: ; 0x020D6EFC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r0, _020D6F74 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	cmp r1, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, pc}
	bl FX_Inv
	mov r1, #0
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	sub r0, r1, #0x28
	str r0, [sp]
	sub r2, r1, #0x70
	str r2, [sp, #4]
	ldr r0, _020D6F78 ; =0x04001030
	add r1, sp, #8
	mov r2, #0x58
	mov r3, #0x14
	bl FUN_0200458c
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x14]
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_020D6F74: .word unk_0209F5C0
_020D6F78: .word 0x04001030
	arm_func_end FUN_ov4_020d6efc

	arm_func_start FUN_ov4_020d6f7c
FUN_ov4_020d6f7c: ; 0x020D6F7C
	stmfd sp!, {r3, lr}
	bl FUN_ov4_020d6654
	ldr r0, _020D6FA4 ; =0x0209AC44
	ldr r1, _020D6FA8 ; =0x020DBD9C
	mov r2, #0
	bl FUN_0202d798
	ldr r0, _020D6FAC ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f5af0
	ldmfd sp!, {r3, pc}
_020D6FA4: .word unk_0209AC44
_020D6FA8: .word ov4_020DBD9C
_020D6FAC: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d6f7c

	arm_func_start FUN_ov4_020d6fb0
FUN_ov4_020d6fb0: ; 0x020D6FB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	ldr r5, _020D7048 ; =0x020D8D0C
	mov r10, r0
	mov r9, r6
	mov r7, #0x20
	mov r11, #1
	mov r4, #0xc
_020D6FD0:
	ldr r1, [r5, r9, lsl #2]
	mla r0, r1, r4, r10
	ldr r8, [r0, #0x20]
	cmp r8, #0
	beq _020D7034
	cmp r9, #0
	bne _020D6FFC
	mov r0, r8
	mov r1, r11
	mov r2, #4
	bl FUN_ov16_020f1138
_020D6FFC:
	ldr r0, [r8, #0xc]
	ldr r1, [r8, #0x10]
	mov r3, #4
	add r0, r8, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	ldr r1, [r8, #0x14]
	mov r6, r0
	add r0, r8, r1
	ldr r2, [r8, #0x18]
	mov r1, r7
	bl GXS_LoadBG1Char
	ldr r0, [r8, #0x18]
	add r7, r7, r0
_020D7034:
	add r9, r9, #1
	cmp r9, #4
	blo _020D6FD0
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7048: .word 0x020D8D0C
	arm_func_end FUN_ov4_020d6fb0

	arm_func_start FUN_ov4_020d704c
FUN_ov4_020d704c: ; 0x020D704C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r1, _020D7144 ; =0x020D8CCC
	mov r10, r0
	ldr r3, [r1]
	ldr r2, [r1, #4]
	mov r0, r3, asr #2
	mov r1, r2, asr #2
	add r0, r3, r0, lsr #29
	add r1, r2, r1, lsr #29
	mov r0, r0, lsl #0xd
	mov r1, r1, lsl #0xd
	ldr r5, _020D7148 ; =0x0209F5C0
	ldr r4, _020D714C ; =0x020D8D1C
	ldr r8, _020D7150 ; =0x020D8CFC
	mov r9, #0
	mov r7, r0, asr #0x10
	mov r6, r1, asr #0x10
	mov r11, #0x20
_020D7098:
	ldr r1, [r8, r9, lsl #2]
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r2, [r0, #0x20]
	cmp r2, #0
	beq _020D7120
	ldr r1, [r2, #0xc]
	ldr r3, [r4, r9, lsl #2]
	add r1, r2, r1
	str r1, [sp, #0x28]
	mov r1, #0x18
	strh r1, [sp, #0x1a]
	mov r1, #0
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	mov r1, #4
	strb r1, [sp, #0x24]
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r11, [sp, #0x18]
	mov r1, #0
	str r1, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, r5
	mov r1, #1
	mov r2, #2
	bl FUN_ov16_020f5c34
_020D7120:
	ldr r2, [r4, r9, lsl #2]
	mov r0, r5
	mov r1, #1
	bl FUN_ov16_020f6084
	add r9, r9, #1
	cmp r9, #4
	blo _020D7098
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7144: .word 0x020D8CCC
_020D7148: .word unk_0209F5C0
_020D714C: .word 0x020D8D1C
_020D7150: .word 0x020D8CFC
	arm_func_end FUN_ov4_020d704c

	arm_func_start FUN_ov4_020d7154
FUN_ov4_020d7154: ; 0x020D7154
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d7154

	arm_func_start FUN_ov4_020d7168
FUN_ov4_020d7168: ; 0x020D7168
	bx lr
	arm_func_end FUN_ov4_020d7168

	arm_func_start FUN_ov4_020d716c
FUN_ov4_020d716c: ; 0x020D716C
	bx lr
	arm_func_end FUN_ov4_020d716c

	arm_func_start FUN_ov4_020d7170
FUN_ov4_020d7170: ; 0x020D7170
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #0xf
	cmpne r1, #0xe
	cmpne r1, #0x19
	cmpne r1, #0x1a
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #4]
	cmp r0, #0x65
	mvnhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x10]
	mov r4, #1
	add r1, r6, #0xc
	cmp r0, #1
	ldrneb r4, [r6, #0x1c]
	mov r0, r5
	mov r2, #0x14
	bl MI_CpuCopy8
	strb r4, [r6, #0x1c]
	mov r0, #0
	strb r0, [r5, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020d7170

	arm_func_start FUN_ov4_020d71dc
FUN_ov4_020d71dc: ; 0x020D71DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _020D720C ; =0x020DBE98
	add r1, r4, #0x34
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020D720C: .word ov4_020DBE98
	arm_func_end FUN_ov4_020d71dc

	arm_func_start FUN_ov4_020d7210
FUN_ov4_020d7210: ; 0x020D7210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x34]
	cmp r6, #0
	ldrne r7, _020D7258 ; =0x020D8DDC
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x34
	mov r4, #0xc
_020D7234:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020D7234
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D7258: .word 0x020D8DDC
	arm_func_end FUN_ov4_020d7210

	arm_func_start FUN_ov4_020d725c
FUN_ov4_020d725c: ; 0x020D725C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x34
	mov r4, #0xc
_020D726C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #8
	blt _020D726C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov4_020d725c

	arm_func_start FUN_ov4_020d7284
FUN_ov4_020d7284: ; 0x020D7284
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r5, [r6, #0x40]
	mov r4, #1
	cmp r5, #0
	beq _020D72C4
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f1138
_020D72C4:
	ldr r8, [r6, #0x58]
	mov r5, #0
	cmp r8, #0
	beq _020D7304
	ldr r0, [r8, #0xc]
	mov r7, #3
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f1138
_020D7304:
	ldr r8, [r6, #0x64]
	cmp r8, #0
	beq _020D7340
	ldr r0, [r8, #0xc]
	mov r7, #4
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020D7340:
	ldr r8, [r6, #0x70]
	cmp r8, #0
	beq _020D737C
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020D737C:
	ldr r8, [r6, #0x7c]
	cmp r8, #0
	beq _020D73B8
	ldr r0, [r8, #0xc]
	mov r7, #6
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020D73B8:
	ldr r8, [r6, #0x88]
	cmp r8, #0
	beq _020D73F0
	ldr r0, [r8, #0xc]
	mov r7, #7
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020D73F0:
	ldr r8, [r6, #0x4c]
	mov r5, #0
	cmp r8, #0
	beq _020D7430
	ldr r0, [r8, #0xc]
	mov r7, #2
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f1138
_020D7430:
	ldr r0, [r6, #0x20]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r6, #0x24]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	add r2, r5, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov4_020d7284

	arm_func_start FUN_ov4_020d7470
FUN_ov4_020d7470: ; 0x020D7470
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r6, [r4, #0x40]
	cmp r6, #0
	beq _020D74B0
	ldr r0, [r6, #0x14]
	mov r5, #0
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_020D74B0:
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r7, #1
	ldr r1, [r4, #0x58]
	mov r0, r7
	mov r2, r5
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x64]
	mov r0, r7
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x70]
	mov r0, r7
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x7c]
	mov r0, r7
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x88]
	mov r0, r7
	bl FUN_ov16_020f1a60
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	ldr r1, [r4, #0x4c]
	mov r2, r5
	mov r0, #2
	bl FUN_ov16_020f1a60
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r1, [r4, #0x24]
	cmpne r1, #0
	moveq r7, #0
	cmp r7, #0
	strne r0, [r4, #0x28]
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov4_020d7470

	arm_func_start FUN_ov4_020d7580
FUN_ov4_020d7580: ; 0x020D7580
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x20]
	cmp r0, #0
	ldrne r0, [lr, #0x24]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x30]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x2c]
	ldrh r1, [lr, #0x2e]
	mov r12, #0
	ldr r0, [lr, #0x24]
	mul r3, r2, r1
	ldr r1, [lr, #0x28]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x30]
	bl GXS_LoadBG2Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov4_020d7580

	arm_func_start FUN_ov4_020d75d8
FUN_ov4_020d75d8: ; 0x020D75D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r4, [r5, #0x20]
	mov r3, #0
	cmp r4, #0
	ldrne r0, [r5, #0x24]
	cmpne r0, #0
	movne r3, #1
	cmp r3, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r2, #8
	ldr r2, [r5, #0x18]
	add r0, r0, r0, lsr #31
	cmp r2, #0
	add r2, r1, r0, asr #1
	beq _020D766C
	mov r0, #5
	str r0, [sp]
	mov r1, #1
	mov r0, r2, lsl #0x18
	str r1, [sp, #4]
	mov r3, #3
	mov r2, #0
	str r3, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, _020D7734 ; =0x0209F5C0
	mov r3, r2
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020D766C:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	add r0, r5, #0x20
	strb r4, [r5, #0x1c]
	bl FUN_ov16_020f2f20
	ldr r0, _020D7738 ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, #4
	bl FUN_02043310
	ldrb r1, [r5, #0x1d]
	mov r0, #0x14
	smulbb r0, r1, r0
	sub r0, r0, #6
	rsb r0, r0, #0x40
	add r0, r0, r0, lsr #31
	movs r1, r0, asr #1
	mov r0, #3
	str r0, [sp]
	movmi r1, r4
	str r0, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r5, #0x2c]
	ldrh r3, [r5, #0x2e]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldr r0, _020D7738 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	ldr r0, [r5, #0x24]
	strb r4, [r5, #0x30]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_020D7734: .word unk_0209F5C0
_020D7738: .word unk_02099F50
	arm_func_end FUN_ov4_020d75d8

	arm_func_start FUN_ov4_020d773c
FUN_ov4_020d773c: ; 0x020D773C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	mov r4, r0
	mov r1, #1
	ldr r0, _020D77E0 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_020f5eec
	ldr r0, _020D77E4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne lr, [r4, #0x4c]
	cmpne lr, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r4, #0x14]
	cmp r4, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r4, pc}
	ldr r3, [lr, #0xc]
	mov r1, #1
	str r1, [sp]
	mov r12, #2
	str r12, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	cmp r4, #3
	str r12, [sp, #0x14]
	add lr, lr, r3
	movgt r4, #3
	str r12, [sp, #0x18]
	add r12, lr, r4, lsl #3
	ldr r0, _020D77E0 ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, pc}
_020D77E0: .word unk_0209F5C0
_020D77E4: .word unk_020A0640
	arm_func_end FUN_ov4_020d773c

	arm_func_start FUN_ov4_020d77e8
FUN_ov4_020d77e8: ; 0x020D77E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r6, _020D7AB4 ; =0x0209F5C0
	mov r5, #1
	mov r4, #0
	mov r10, r0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f5f64
	ldr r2, [r10, #0x10]
	cmp r2, #8
	bne _020D786C
	ldr r2, [r10, #0x70]
	mov r7, #2
	cmp r2, #0
	mov r8, #8
	mov r9, #0xe
	beq _020D7950
	str r7, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r9, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
_020D7868:
	b _020D793C
_020D786C:
	cmp r2, #0x11
	mov r1, #3
	mov r0, #2
	bne _020D78CC
	ldr r1, [r10, #0x7c]
	mov r8, #0xa
	mov r9, r8
	cmp r1, #0
	mov r0, #3
	mov r7, #5
	beq _020D7950
	mov r2, #4
	stmia sp, {r2, r5}
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	str r8, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x18]
	ldr r2, [r1, #0xc]
	mov r0, r6
	add r6, r1, r2
	b _020D7868
_020D78CC:
	cmp r2, #0x64
	bne _020D78F4
	ldr r2, [r10, #0x58]
	mov r7, r0
	cmp r2, #0
	mov r8, #7
	mov r9, #9
	beq _020D7950
	stmia sp, {r1, r5, r7}
	b _020D791C
_020D78F4:
	cmp r2, #0
	beq _020D7950
	ldr r2, [r10, #0x58]
	mov r7, #5
	cmp r2, #0
	mov r8, #0xa
	mov r9, #9
	beq _020D7950
	stmia sp, {r1, r5}
	str r0, [sp, #8]
_020D791C:
	str r8, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	str r9, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r6
	add r6, r2, r1
_020D793C:
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020D7950:
	ldr r5, [r10, #0x10]
	mov r0, #3
	cmp r5, #0x11
	mov r4, #2
	bne _020D79B4
	ldr r2, [r10, #0x64]
	cmp r2, #0
	beq _020D7A24
	mov r1, #1
	str r4, [sp]
	str r1, [sp, #4]
	mov r3, r7, lsl #0x18
	str r1, [sp, #8]
	mov r3, r3, asr #0x18
	str r3, [sp, #0xc]
	mov r3, #0x1e
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r3, [r2, #0xc]
	ldr r0, _020D7AB4 ; =0x0209F5C0
	add r2, r2, r3
	add r5, r2, #0x168
	b _020D7A14
_020D79B4:
	cmp r5, #0
	ldrne r2, [r10, #0x64]
	cmpne r2, #0
	beq _020D7A24
	ldr r1, [r2, #0xc]
	cmp r5, #0x64
	add r3, r2, r1
	addeq r5, r3, #0xb4
	subne r2, r5, #1
	movne r1, #0xb4
	mlane r5, r2, r1, r3
	mov r2, r7, lsl #0x18
	mov r1, #1
	str r4, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r2, r2, asr #0x18
	str r2, [sp, #0xc]
	mov r2, #0x1e
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _020D7AB4 ; =0x0209F5C0
_020D7A14:
	mov r2, r1
	mov r3, #0
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020D7A24:
	ldr r0, [r10, #0x10]
	cmp r0, #0x64
	bne _020D7A88
	ldr r5, [r10, #0x88]
	cmp r5, #0
	beq _020D7A88
	mov r1, #1
	str r4, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	ldr r0, _020D7AB4 ; =0x0209F5C0
	add r4, r5, r2
	mov r2, r1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020D7A88:
	mov r0, r10
	mov r1, r8
	mov r2, r9
	bl FUN_ov4_020d75d8
	mov r0, r10
	bl FUN_ov4_020d773c
	ldr r0, _020D7AB4 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D7AB4: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d77e8

	arm_func_start FUN_ov4_020d7ab8
FUN_ov4_020d7ab8: ; 0x020D7AB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f4894
	mov r3, #0
	sub r2, r3, #1
	ldr r0, _020D7B38 ; =0x0209F5C0
	mov r1, r4
	str r2, [r5, #0x14]
	str r3, [r5, #8]
	str r3, [r5, #0xc]
	str r3, [r5, #0x10]
	str r3, [r5, #0x18]
	strb r3, [r5, #0x1c]
	strb r3, [r5, #0x1d]
	bl FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x20
	bl FUN_ov16_020f2f7c
	add r0, r5, #0x20
	mov r1, #0x1a
	mov r2, #8
	bl FUN_ov16_020f2fa8
	mov r0, r5
	bl FUN_ov4_020d71dc
	ldmfd sp!, {r3, r4, r5, pc}
_020D7B38: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d7ab8

	arm_func_start FUN_ov4_020d7b3c
FUN_ov4_020d7b3c: ; 0x020D7B3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _020D7B5C
	cmp r1, #3
	beq _020D7B8C
	ldmfd sp!, {r4, pc}
_020D7B5C:
	add r0, r4, #0x34
	mov r1, #8
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov4_020d7210
	mov r0, r4
	bl FUN_ov4_020d7284
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020D7B8C:
	bl FUN_ov4_020d77e8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d7b3c

	arm_func_start FUN_ov4_020d7b94
FUN_ov4_020d7b94: ; 0x020D7B94
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020D7BB4
	cmp r1, #3
	beq _020D7BD4
	ldmfd sp!, {r4, pc}
_020D7BB4:
	bl FUN_ov4_020d7470
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020D7BD4:
	bl FUN_ov4_020d7580
	ldr r0, _020D7BE8 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020D7BE8: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d7b94

	arm_func_start FUN_ov4_020d7bec
FUN_ov4_020d7bec: ; 0x020D7BEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x34
	mov r1, #8
	bl FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov4_020d725c
	mov r4, #1
	ldr r0, _020D7C74 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r1, r4
	add r0, r5, #0x20
	bl FUN_ov16_020f2fe4
	bl FUN_ov16_020f51a8
	ldr r0, [r5, #4]
	bl FUN_02041fec
	cmp r0, #0x10
	beq _020D7C4C
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
_020D7C4C:
	bl G2S_GetBG1CharPtr
	mov r4, #0x20
	mov r1, r0
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, pc}
_020D7C74: .word unk_0209F5C0
	arm_func_end FUN_ov4_020d7bec

	arm_func_start FUN_ov4_020d7c78
FUN_ov4_020d7c78: ; 0x020D7C78
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov4_020d7c78
_020D7C8C:
	.byte 0xCC, 0x93, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x8C, 0x93, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0x9C, 0x93, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x54, 0x93, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x93, 0x0D, 0x02, 0x01, 0x00, 0x00, 0x00, 0x6C, 0x93, 0x0D, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xAC, 0x93, 0x0D, 0x02, 0x03, 0x00, 0x00, 0x00, 0x60, 0x93, 0x0D, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x7C, 0x93, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB0, 0x94, 0x0D, 0x02, 0x01, 0x00, 0x00, 0x00, 0xA0, 0x94, 0x0D, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x99, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x40, 0x98, 0x0D, 0x02, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x99, 0x0D, 0x02, 0x01, 0x00, 0x00, 0x00, 0x50, 0x98, 0x0D, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x99, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xE0, 0x98, 0x0D, 0x02, 0x08, 0x00, 0x00, 0x00, 0x60, 0x98, 0x0D, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xB0, 0x98, 0x0D, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0x99, 0x0D, 0x02, 0x01, 0x00, 0x00, 0x00, 0x80, 0x98, 0x0D, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0xD0, 0x98, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0xD0, 0x97, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x99, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x20, 0x99, 0x0D, 0x02, 0x08, 0x00, 0x00, 0x00, 0x10, 0x99, 0x0D, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x99, 0x0D, 0x02, 0x03, 0x00, 0x00, 0x00, 0xF0, 0x98, 0x0D, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x10, 0x98, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0xE0, 0x97, 0x0D, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0xC0, 0x98, 0x0D, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x99, 0x0D, 0x02, 0x01, 0x00, 0x00, 0x00, 0xF0, 0x97, 0x0D, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x98, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0xA0, 0x98, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x70, 0x98, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0x90, 0x98, 0x0D, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x30, 0x98, 0x0D, 0x02, 0x06, 0x00, 0x00, 0x00, 0x20, 0x98, 0x0D, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0xA0, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xD8, 0x9E, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0xCC, 0x9E, 0x0D, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xC0, 0x9E, 0x0D, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xB4, 0x9E, 0x0D, 0x02
	.byte 0x1B, 0x00, 0x00, 0x00, 0xA8, 0x9E, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0x9C, 0x9E, 0x0D, 0x02
	.byte 0x1C, 0x00, 0x00, 0x00, 0x90, 0x9E, 0x0D, 0x02, 0x1D, 0x00, 0x00, 0x00, 0x84, 0x9E, 0x0D, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x38, 0x9C, 0x0D, 0x02, 0x17, 0x00, 0x00, 0x00, 0x6C, 0x9E, 0x0D, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x60, 0x9E, 0x0D, 0x02, 0x1E, 0x00, 0x00, 0x00, 0x54, 0x9E, 0x0D, 0x02
	.byte 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0xA0, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x6C, 0x9B, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0x70, 0x9A, 0x0D, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x8C, 0x9C, 0x0D, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x80, 0x9C, 0x0D, 0x02
	.byte 0x1B, 0x00, 0x00, 0x00, 0xF0, 0x9E, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0xE4, 0x9E, 0x0D, 0x02
	.byte 0x1C, 0x00, 0x00, 0x00, 0x5C, 0x9C, 0x0D, 0x02, 0x1D, 0x00, 0x00, 0x00, 0x50, 0x9C, 0x0D, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x44, 0x9C, 0x0D, 0x02, 0x17, 0x00, 0x00, 0x00, 0x18, 0x9B, 0x0D, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x2C, 0x9C, 0x0D, 0x02, 0x1E, 0x00, 0x00, 0x00, 0x20, 0x9C, 0x0D, 0x02
	.byte 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0xA0, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xB0, 0x9C, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0x68, 0x9C, 0x0D, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x24, 0x9B, 0x0D, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x9B, 0x0D, 0x02
	.byte 0x1B, 0x00, 0x00, 0x00, 0xF4, 0x9A, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0x84, 0x9B, 0x0D, 0x02
	.byte 0x1C, 0x00, 0x00, 0x00, 0x28, 0x9D, 0x0D, 0x02, 0x1D, 0x00, 0x00, 0x00, 0x88, 0x9A, 0x0D, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x30, 0x9B, 0x0D, 0x02, 0x17, 0x00, 0x00, 0x00, 0x14, 0x9C, 0x0D, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0x18, 0x9E, 0x0D, 0x02, 0x1E, 0x00, 0x00, 0x00, 0xA4, 0x9C, 0x0D, 0x02
	.byte 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x6C, 0xA0, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x10, 0x9D, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0C, 0x9B, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xC4, 0x9A, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0x78, 0x9E, 0x0D, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0x30, 0x9E, 0x0D, 0x02, 0x10, 0x00, 0x00, 0x00, 0x48, 0x9B, 0x0D, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x94, 0x9A, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0x90, 0x9B, 0x0D, 0x02
	.byte 0x13, 0x00, 0x00, 0x00, 0x78, 0x9B, 0x0D, 0x02, 0x06, 0x00, 0x00, 0x00, 0x9C, 0x9B, 0x0D, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0x08, 0x9F, 0x0D, 0x02, 0x15, 0x00, 0x00, 0x00, 0xE8, 0x9A, 0x0D, 0x02
	.byte 0x16, 0x00, 0x00, 0x00, 0xC8, 0x9C, 0x0D, 0x02, 0x20, 0x00, 0x00, 0x00, 0xAC, 0x9F, 0x0D, 0x02
	.byte 0x22, 0x00, 0x00, 0x00, 0x4C, 0x9F, 0x0D, 0x02, 0x23, 0x00, 0x00, 0x00, 0xBC, 0x9C, 0x0D, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x54, 0x9B, 0x0D, 0x02, 0x08, 0x00, 0x00, 0x00, 0xA0, 0x9A, 0x0D, 0x02
	.byte 0x12, 0x00, 0x00, 0x00, 0x6C, 0x9F, 0x0D, 0x02, 0x09, 0x00, 0x00, 0x00, 0xAC, 0x9A, 0x0D, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0x7C, 0x9F, 0x0D, 0x02, 0x0B, 0x00, 0x00, 0x00, 0xB8, 0x9A, 0x0D, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x20, 0x9F, 0x0D, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x14, 0x9F, 0x0D, 0x02
	.byte 0x17, 0x00, 0x00, 0x00, 0x8C, 0x9F, 0x0D, 0x02, 0x21, 0x00, 0x00, 0x00, 0xFC, 0x9E, 0x0D, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0xA0, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0xF4, 0x9D, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xE8, 0x9D, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0xDC, 0x9D, 0x0D, 0x02
	.byte 0x0E, 0x00, 0x00, 0x00, 0xD0, 0x9D, 0x0D, 0x02, 0x10, 0x00, 0x00, 0x00, 0xC4, 0x9D, 0x0D, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0xB8, 0x9D, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0xAC, 0x9D, 0x0D, 0x02
	.byte 0x13, 0x00, 0x00, 0x00, 0xA0, 0x9D, 0x0D, 0x02, 0x06, 0x00, 0x00, 0x00, 0x94, 0x9D, 0x0D, 0x02
	.byte 0x14, 0x00, 0x00, 0x00, 0x88, 0x9D, 0x0D, 0x02, 0x15, 0x00, 0x00, 0x00, 0x7C, 0x9D, 0x0D, 0x02
	.byte 0x16, 0x00, 0x00, 0x00, 0x70, 0x9D, 0x0D, 0x02, 0x20, 0x00, 0x00, 0x00, 0xDC, 0x9F, 0x0D, 0x02
	.byte 0x22, 0x00, 0x00, 0x00, 0xEC, 0x9F, 0x0D, 0x02, 0x23, 0x00, 0x00, 0x00, 0x4C, 0x9D, 0x0D, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x40, 0x9D, 0x0D, 0x02, 0x08, 0x00, 0x00, 0x00, 0x34, 0x9D, 0x0D, 0x02
	.byte 0x12, 0x00, 0x00, 0x00, 0xFC, 0x9F, 0x0D, 0x02, 0x09, 0x00, 0x00, 0x00, 0x1C, 0x9D, 0x0D, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0C, 0xA0, 0x0D, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x24, 0x9E, 0x0D, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x3C, 0x9E, 0x0D, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xEC, 0x9C, 0x0D, 0x02
	.byte 0x17, 0x00, 0x00, 0x00, 0x2C, 0x9F, 0x0D, 0x02, 0x21, 0x00, 0x00, 0x00, 0xD4, 0x9C, 0x0D, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0x60, 0x9B, 0x0D, 0x02, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x4C, 0xA0, 0x0D, 0x02, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x9E, 0x0D, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0xF0, 0x9B, 0x0D, 0x02, 0x03, 0x00, 0x00, 0x00, 0xE4, 0x9B, 0x0D, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xD8, 0x9B, 0x0D, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xCC, 0x9B, 0x0D, 0x02
	.byte 0x10, 0x00, 0x00, 0x00, 0xC0, 0x9B, 0x0D, 0x02, 0x11, 0x00, 0x00, 0x00, 0xB4, 0x9B, 0x0D, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x58, 0x9D, 0x0D, 0x02, 0x13, 0x00, 0x00, 0x00, 0xA8, 0x9B, 0x0D, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0xF8, 0x9C, 0x0D, 0x02, 0x14, 0x00, 0x00, 0x00, 0xDC, 0x9A, 0x0D, 0x02
	.byte 0x15, 0x00, 0x00, 0x00, 0x48, 0x9E, 0x0D, 0x02, 0x16, 0x00, 0x00, 0x00, 0xE0, 0x9C, 0x0D, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x3C, 0x9F, 0x0D, 0x02, 0x22, 0x00, 0x00, 0x00, 0x5C, 0x9F, 0x0D, 0x02
	.byte 0x23, 0x00, 0x00, 0x00, 0x98, 0x9C, 0x0D, 0x02, 0x07, 0x00, 0x00, 0x00, 0x3C, 0x9B, 0x0D, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x74, 0x9C, 0x0D, 0x02, 0x12, 0x00, 0x00, 0x00, 0x9C, 0x9F, 0x0D, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x7C, 0x9A, 0x0D, 0x02, 0x0A, 0x00, 0x00, 0x00, 0xBC, 0x9F, 0x0D, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x08, 0x9C, 0x0D, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xFC, 0x9B, 0x0D, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0xD0, 0x9A, 0x0D, 0x02, 0x17, 0x00, 0x00, 0x00, 0xCC, 0x9F, 0x0D, 0x02
	.byte 0x21, 0x00, 0x00, 0x00, 0x64, 0x9D, 0x0D, 0x02, 0x18, 0x00, 0x00, 0x00, 0x04, 0x9D, 0x0D, 0x02
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x00
	.byte 0x02, 0x00, 0x80, 0x00, 0x20, 0x00, 0x44, 0x02, 0x02, 0x00, 0x05, 0x00, 0x02, 0x00, 0x00, 0x01
	.byte 0x20, 0x00, 0x08, 0x02, 0x03, 0x00, 0x05, 0x00, 0x01, 0x00, 0x00, 0x01, 0x10, 0x00, 0x44, 0x02
	.byte 0x04, 0x00, 0x04, 0x00, 0x01, 0x00, 0x80, 0x00, 0x10, 0x00, 0x44, 0x02, 0x05, 0x00, 0x04, 0x00
	.byte 0x01, 0x00, 0x80, 0x00, 0x10, 0x00, 0x44, 0x02, 0x01, 0x00, 0x03, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x10, 0x00, 0x01, 0x00, 0x90, 0x00, 0x98, 0x00
	.byte 0x40, 0x00, 0x18, 0x00, 0x02, 0x00, 0x03, 0x00, 0x20, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x02, 0x00, 0x10, 0x00, 0x02, 0x00, 0xD0, 0x00, 0x98, 0x00, 0x30, 0x00, 0x18, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x04, 0x90, 0x00, 0x26, 0x00, 0x70, 0x00, 0x12, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x40, 0x00, 0x00, 0x01, 0x50, 0x00, 0x05, 0x00, 0x04, 0x00, 0x02, 0x00, 0xFF, 0xFF
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x04, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x38, 0x00, 0x88, 0x00
	.byte 0x30, 0x00, 0x18, 0x00, 0x06, 0x00, 0x04, 0x00, 0x03, 0x00, 0xFF, 0xFF, 0x03, 0x00, 0xFF, 0xFF
	.byte 0x04, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x98, 0x00, 0x88, 0x00, 0x30, 0x00, 0x18, 0x00
	.byte 0x07, 0x00, 0x05, 0x00, 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x08, 0x00, 0x02, 0x00
	.byte 0x10, 0x00, 0x02, 0x00, 0x60, 0x00, 0x68, 0x00, 0x40, 0x00, 0x18, 0x00, 0x08, 0x00, 0x06, 0x00
	.byte 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x10, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x18, 0x00, 0x10, 0x00, 0x10, 0x00, 0x09, 0x00, 0x06, 0x00, 0x05, 0x00, 0xFF, 0xFF
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x10, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x50, 0x00, 0x18, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x0A, 0x00, 0x06, 0x00, 0x06, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF
	.byte 0x10, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x18, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x0B, 0x00, 0x06, 0x00, 0x07, 0x00, 0xFF, 0xFF, 0x01, 0x00, 0xFF, 0xFF, 0x10, 0x00, 0x02, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x18, 0x00, 0x10, 0x00, 0x10, 0x00, 0x0C, 0x00, 0x06, 0x00
	.byte 0x08, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x10, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x02
	.byte 0x00, 0x00, 0x18, 0x00, 0x20, 0x00, 0x18, 0x00, 0x0D, 0x00, 0x06, 0x00, 0x09, 0x00, 0xFF, 0xFF
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x10, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x01, 0xE0, 0x00, 0x18, 0x00
	.byte 0x20, 0x00, 0x18, 0x00, 0x0E, 0x00, 0x06, 0x00, 0x0A, 0x00, 0xFF, 0xFF, 0x01, 0x00, 0xFF, 0xFF
	.byte 0x10, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x38, 0x00, 0x88, 0x00, 0x30, 0x00, 0x18, 0x00
	.byte 0x0F, 0x00, 0x06, 0x00, 0x0B, 0x00, 0xFF, 0xFF, 0x03, 0x00, 0xFF, 0xFF, 0x10, 0x00, 0x02, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x98, 0x00, 0x88, 0x00, 0x30, 0x00, 0x18, 0x00, 0x10, 0x00, 0x07, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x20, 0x00, 0x02, 0x00, 0x10, 0x00, 0xF3, 0x0F
	.byte 0x68, 0x00, 0x98, 0x00, 0x30, 0x00, 0x18, 0x00, 0x11, 0x00, 0x09, 0x00, 0x04, 0x00, 0xFF, 0xFF
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x80, 0x01, 0x02, 0x00, 0x10, 0x00, 0xF3, 0x0F, 0x68, 0x00, 0x88, 0x00
	.byte 0x30, 0x00, 0x18, 0x00, 0x12, 0x00, 0x0A, 0x00, 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF
	.byte 0x00, 0x02, 0x02, 0x00, 0x10, 0x00, 0x01, 0x00, 0x68, 0x00, 0x78, 0x00, 0x30, 0x00, 0x18, 0x00
	.byte 0x13, 0x00, 0x0B, 0x00, 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x04, 0x02, 0x00
	.byte 0x10, 0x00, 0x01, 0x00, 0x68, 0x00, 0x60, 0x00, 0x30, 0x00, 0x18, 0x00, 0x14, 0x00, 0x0D, 0x00
	.byte 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x20, 0x02, 0x00, 0x10, 0x00, 0x01, 0x00
	.byte 0x68, 0x00, 0x60, 0x00, 0x30, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x58, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x10, 0x00, 0x30, 0x00
	.byte 0x02, 0x00, 0x01, 0x00, 0x12, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x10, 0x00, 0x00, 0x00, 0x03, 0x00
	.byte 0x01, 0x00, 0x15, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x90, 0x00, 0x20, 0x00, 0x03, 0x00, 0x02, 0x00
	.byte 0x06, 0x00, 0x01, 0x00, 0x3A, 0x02, 0xD8, 0x00, 0x28, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00
	.byte 0x03, 0x00, 0x3A, 0x02, 0xE8, 0x00, 0x28, 0x00, 0x03, 0x00, 0x04, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x4E, 0x02, 0x00, 0x00, 0x08, 0x00, 0x03, 0x00, 0x05, 0x00, 0x13, 0x00, 0x00, 0x00, 0x4E, 0x02
	.byte 0x00, 0x00, 0x30, 0x00, 0x03, 0x00, 0x06, 0x00, 0x13, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x20, 0x00
	.byte 0x30, 0x00, 0x03, 0x00, 0x07, 0x00, 0x13, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x40, 0x00, 0x30, 0x00
	.byte 0x03, 0x00, 0x08, 0x00, 0x13, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x60, 0x00, 0x30, 0x00, 0x03, 0x00
	.byte 0x09, 0x00, 0x13, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x80, 0x00, 0x30, 0x00, 0x03, 0x00, 0x0A, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x4E, 0x02, 0xA0, 0x00, 0x30, 0x00, 0x03, 0x00, 0x0B, 0x00, 0x13, 0x00
	.byte 0x00, 0x00, 0x4E, 0x02, 0xC0, 0x00, 0x30, 0x00, 0x03, 0x00, 0x0C, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x4E, 0x02, 0xE0, 0x00, 0x30, 0x00, 0x03, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02
	.byte 0x00, 0x00, 0x40, 0x00, 0x03, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x20, 0x00
	.byte 0x40, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x40, 0x00, 0x40, 0x00
	.byte 0x03, 0x00, 0x10, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x60, 0x00, 0x40, 0x00, 0x03, 0x00
	.byte 0x11, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x80, 0x00, 0x40, 0x00, 0x03, 0x00, 0x12, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0xA0, 0x00, 0x40, 0x00, 0x03, 0x00, 0x13, 0x00, 0x0F, 0x00
	.byte 0x00, 0x00, 0x44, 0x02, 0xC0, 0x00, 0x40, 0x00, 0x03, 0x00, 0x14, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x44, 0x02, 0xE0, 0x00, 0x40, 0x00, 0x03, 0x00, 0x15, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02
	.byte 0x00, 0x00, 0x68, 0x00, 0x03, 0x00, 0x16, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x20, 0x00
	.byte 0x68, 0x00, 0x03, 0x00, 0x17, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x40, 0x00, 0x68, 0x00
	.byte 0x03, 0x00, 0x18, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x60, 0x00, 0x68, 0x00, 0x03, 0x00
	.byte 0x19, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0x80, 0x00, 0x68, 0x00, 0x03, 0x00, 0x1A, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x44, 0x02, 0xA0, 0x00, 0x68, 0x00, 0x03, 0x00, 0x1B, 0x00, 0x0F, 0x00
	.byte 0x00, 0x00, 0x44, 0x02, 0xC0, 0x00, 0x68, 0x00, 0x03, 0x00, 0x1C, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x44, 0x02, 0xE0, 0x00, 0x68, 0x00, 0x03, 0x00, 0x1D, 0x00, 0x16, 0x00, 0x00, 0x00, 0x4E, 0x02
	.byte 0x00, 0x00, 0xB0, 0x00, 0x03, 0x00, 0x1E, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x00, 0x00
	.byte 0x40, 0x00, 0x03, 0x00, 0x1F, 0x00, 0x04, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x90, 0x00, 0x98, 0x00
	.byte 0x03, 0x00, 0x20, 0x00, 0x05, 0x00, 0x00, 0x00, 0x3A, 0x02, 0xD0, 0x00, 0x98, 0x00, 0x04, 0x00
	.byte 0x01, 0x00, 0x17, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x08, 0x00, 0x20, 0x00, 0x04, 0x00, 0x02, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x38, 0x00, 0x88, 0x00, 0x04, 0x00, 0x03, 0x00, 0x07, 0x00
	.byte 0x02, 0x00, 0x3A, 0x02, 0x98, 0x00, 0x88, 0x00, 0x05, 0x00, 0x01, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x4E, 0x02, 0x20, 0x00, 0x40, 0x00, 0x05, 0x00, 0x02, 0x00, 0x09, 0x00, 0x00, 0x00, 0x3A, 0x02
	.byte 0x00, 0x01, 0xC0, 0x00, 0x06, 0x00, 0x01, 0x00, 0x22, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x00, 0x00
	.byte 0x18, 0x00, 0x06, 0x00, 0x02, 0x00, 0x19, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x00, 0x00, 0x30, 0x00
	.byte 0x06, 0x00, 0x03, 0x00, 0x23, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x00, 0x00, 0x70, 0x00, 0x06, 0x00
	.byte 0x04, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x30, 0x00, 0x18, 0x00, 0x06, 0x00, 0x05, 0x00
	.byte 0x0A, 0x00, 0x01, 0x00, 0x3A, 0x02, 0x50, 0x00, 0x18, 0x00, 0x06, 0x00, 0x06, 0x00, 0x0A, 0x00
	.byte 0x00, 0x00, 0x3A, 0x02, 0xA0, 0x00, 0x18, 0x00, 0x06, 0x00, 0x07, 0x00, 0x0A, 0x00, 0x01, 0x00
	.byte 0x3A, 0x02, 0xC0, 0x00, 0x18, 0x00, 0x06, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x3A, 0x02
	.byte 0x00, 0x01, 0xC0, 0x00, 0x06, 0x00, 0x09, 0x00, 0x0B, 0x00, 0x01, 0x00, 0x3A, 0x02, 0x00, 0x01
	.byte 0xC0, 0x00, 0x06, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x38, 0x00, 0x88, 0x00
	.byte 0x06, 0x00, 0x0B, 0x00, 0x07, 0x00, 0x02, 0x00, 0x3A, 0x02, 0x98, 0x00, 0x88, 0x00, 0x06, 0x00
	.byte 0x0C, 0x00, 0x10, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x48, 0x00, 0x38, 0x00, 0x06, 0x00, 0x0D, 0x00
	.byte 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x8E, 0x00, 0x4D, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x25, 0x00
	.byte 0x00, 0x00, 0x3A, 0x02, 0x86, 0x00, 0x4D, 0x00, 0x06, 0x00, 0x0F, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x3A, 0x02, 0x7E, 0x00, 0x4D, 0x00, 0x06, 0x00, 0x10, 0x00, 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02
	.byte 0x76, 0x00, 0x4D, 0x00, 0x06, 0x00, 0x11, 0x00, 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x6E, 0x00
	.byte 0x4D, 0x00, 0x06, 0x00, 0x12, 0x00, 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x66, 0x00, 0x4D, 0x00
	.byte 0x06, 0x00, 0x13, 0x00, 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02, 0xDE, 0x00, 0xAD, 0x00, 0x06, 0x00
	.byte 0x14, 0x00, 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02, 0xD6, 0x00, 0xAD, 0x00, 0x06, 0x00, 0x15, 0x00
	.byte 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02, 0xCE, 0x00, 0xAD, 0x00, 0x06, 0x00, 0x16, 0x00, 0x25, 0x00
	.byte 0x00, 0x00, 0x3A, 0x02, 0xC6, 0x00, 0xAD, 0x00, 0x06, 0x00, 0x17, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x3A, 0x02, 0xBE, 0x00, 0xAD, 0x00, 0x06, 0x00, 0x18, 0x00, 0x25, 0x00, 0x00, 0x00, 0x3A, 0x02
	.byte 0xB6, 0x00, 0xAD, 0x00, 0x06, 0x00, 0x19, 0x00, 0x20, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x68, 0x00
	.byte 0xA8, 0x00, 0x07, 0x00, 0x01, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x08, 0x00, 0x70, 0x00
	.byte 0x07, 0x00, 0x02, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x08, 0x00, 0x20, 0x00, 0x07, 0x00
	.byte 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x68, 0x00, 0x98, 0x00, 0x07, 0x00, 0x04, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x70, 0x00, 0x48, 0x00, 0x08, 0x00, 0x01, 0x00, 0x19, 0x00
	.byte 0x00, 0x00, 0x4E, 0x02, 0x00, 0x00, 0x30, 0x00, 0x08, 0x00, 0x02, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x4E, 0x02, 0x00, 0x00, 0x20, 0x00, 0x08, 0x00, 0x03, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x4E, 0x02
	.byte 0x00, 0x00, 0x70, 0x00, 0x08, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x50, 0x00
	.byte 0x88, 0x00, 0x09, 0x00, 0x01, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x08, 0x00, 0x70, 0x00
	.byte 0x09, 0x00, 0x02, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x08, 0x00, 0x20, 0x00, 0x09, 0x00
	.byte 0x03, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x68, 0x00, 0x48, 0x00, 0x09, 0x00, 0x04, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x68, 0x00, 0x88, 0x00, 0x0A, 0x00, 0x01, 0x00, 0x1C, 0x00
	.byte 0x00, 0x00, 0x4E, 0x02, 0x20, 0x00, 0x38, 0x00, 0x0A, 0x00, 0x02, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x3A, 0x02, 0x68, 0x00, 0x78, 0x00, 0x0C, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x02
	.byte 0x08, 0x00, 0x40, 0x00, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x20, 0x00
	.byte 0x48, 0x00, 0x0B, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x12, 0x02, 0x10, 0x00, 0x38, 0x00
	.byte 0x0B, 0x00, 0x02, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x02, 0x00, 0x01, 0xC0, 0x00, 0x0D, 0x00
	.byte 0x01, 0x00, 0x24, 0x00, 0x00, 0x00, 0x4E, 0x02, 0x10, 0x00, 0x38, 0x00, 0x0D, 0x00, 0x02, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x3A, 0x02, 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x18, 0x00, 0x00, 0x33, 0x13, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x9A, 0x11, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x84, 0xBC, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0x74, 0xBC, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xD4, 0xBB, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0xBC, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0x54, 0xBC, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xE4, 0xBB, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0xBC, 0x0D, 0x02, 0x05, 0x00, 0x00, 0x00, 0xA4, 0xBC, 0x0D, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0x14, 0xBC, 0x0D, 0x02, 0x07, 0x00, 0x00, 0x00, 0x04, 0xBC, 0x0D, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0xF4, 0xBB, 0x0D, 0x02, 0x09, 0x00, 0x00, 0x00, 0x24, 0xBC, 0x0D, 0x02
	.byte 0x0A, 0x00, 0x00, 0x00, 0x34, 0xBC, 0x0D, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x64, 0xBC, 0x0D, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0xBE, 0x0D, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xE4, 0xBD, 0x0D, 0x02, 0x02, 0x00, 0x00, 0x00, 0xCC, 0xBD, 0x0D, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xC0, 0xBD, 0x0D, 0x02, 0x04, 0x00, 0x00, 0x00, 0xF4, 0xBD, 0x0D, 0x02
	.byte 0x06, 0x00, 0x00, 0x00, 0xD8, 0xBD, 0x0D, 0x02, 0x07, 0x00, 0x00, 0x00, 0x04, 0xBE, 0x0D, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov4_020d8e1c
FUN_ov4_020d8e1c: ; 0x020D8E1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D8E64 ; =0x020D9200
	str r0, [r4, #0x14]
	ldr r0, _020D8E68 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D8E6C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D8E64: .word ov4_020D9200
_020D8E68: .word 0x00009CCD
_020D8E6C: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d8e1c

	arm_func_start FUN_ov4_020d8e70
FUN_ov4_020d8e70: ; 0x020D8E70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D8EB8 ; =0x020D933C
	str r0, [r4]
	ldr r0, _020D8EBC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020D8EC0 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020D8EB8: .word ov4_020D933C
_020D8EBC: .word 0x00009CCD
_020D8EC0: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d8e70

	arm_func_start FUN_ov4_020d8ec4
FUN_ov4_020d8ec4: ; 0x020D8EC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D8F0C ; =0x020D9488
	str r0, [r4, #8]
	ldr r0, _020D8F10 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020D8F14 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020D8F0C: .word ov4_020D9488
_020D8F10: .word 0x00009CCD
_020D8F14: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d8ec4

	arm_func_start FUN_ov4_020d8f18
FUN_ov4_020d8f18: ; 0x020D8F18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D8F60 ; =0x020D9554
	str r0, [r4]
	ldr r0, _020D8F64 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020D8F68 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020D8F60: .word ov4_020D9554
_020D8F64: .word 0x00009CCD
_020D8F68: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d8f18

	arm_func_start FUN_ov4_020d8f6c
FUN_ov4_020d8f6c: ; 0x020D8F6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D8FB4 ; =0x020D9714
	str r0, [r4, #0x14]
	ldr r0, _020D8FB8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D8FBC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D8FB4: .word ov4_020D9714
_020D8FB8: .word 0x00009CCD
_020D8FBC: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d8f6c

	arm_func_start FUN_ov4_020d8fc0
FUN_ov4_020d8fc0: ; 0x020D8FC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D9008 ; =0x020D97B8
	str r0, [r4, #8]
	ldr r0, _020D900C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020D9010 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020D9008: .word ov4_020D97B8
_020D900C: .word 0x00009CCD
_020D9010: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d8fc0

	arm_func_start FUN_ov4_020d9014
FUN_ov4_020d9014: ; 0x020D9014
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D905C ; =0x020D9A4C
	str r0, [r4, #0x10]
	ldr r0, _020D9060 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020D9064 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_020D905C: .word ov4_020D9A4C
_020D9060: .word 0x00009CCD
_020D9064: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d9014

	arm_func_start FUN_ov4_020d9068
FUN_ov4_020d9068: ; 0x020D9068
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D90B0 ; =0x020DB194
	str r0, [r4, #0x14]
	ldr r0, _020D90B4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020D90B8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D90B0: .word ov4_020DB194
_020D90B4: .word 0x00009CCD
_020D90B8: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d9068

	arm_func_start FUN_ov4_020d90bc
FUN_ov4_020d90bc: ; 0x020D90BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D9104 ; =0x020DB248
	str r0, [r4, #0x10]
	ldr r0, _020D9108 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020D910C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020D9104: .word ov4_020DB248
_020D9108: .word 0x00009CCD
_020D910C: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d90bc

	arm_func_start FUN_ov4_020d9110
FUN_ov4_020d9110: ; 0x020D9110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D9158 ; =0x020DBBBC
	str r0, [r4, #0x10]
	ldr r0, _020D915C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020D9160 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020D9158: .word ov4_020DBBBC
_020D915C: .word 0x00009CCD
_020D9160: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d9110

	arm_func_start FUN_ov4_020d9164
FUN_ov4_020d9164: ; 0x020D9164
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020D91AC ; =0x020DBDA8
	str r0, [r4, #0x10]
	ldr r0, _020D91B0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020D91B4 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020D91AC: .word ov4_020DBDA8
_020D91B0: .word 0x00009CCD
_020D91B4: .word 0x0000EA3C
	arm_func_end FUN_ov4_020d9164

	.section .sinit, 4
ov4_020D91B8:
	.word FUN_ov4_020d8e1c
	.word FUN_ov4_020d8e70
	.word FUN_ov4_020d8ec4
	.word FUN_ov4_020d8f18
	.word FUN_ov4_020d8f6c
	.word FUN_ov4_020d8fc0
	.word FUN_ov4_020d9014
	.word FUN_ov4_020d9068
	.word FUN_ov4_020d90bc
	.word FUN_ov4_020d9110
	.word FUN_ov4_020d9164

	.data
	.global ov4_020D9200
ov4_020D9200:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9C, 0xA1, 0x02, 0x02, 0x00, 0xD5, 0x0B, 0x02, 0x18, 0xD5, 0x0B, 0x02, 0x14, 0xD5, 0x0B, 0x02
	.byte 0x10, 0xD3, 0x0B, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x78, 0xD3, 0x0B, 0x02, 0x38, 0xD4, 0x0B, 0x02
	.byte 0x50, 0xD4, 0x0B, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02
	.byte 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02
	.byte 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02
	.byte 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02
	.byte 0x04, 0xD3, 0x0B, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020D928C
ov4_020D928C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x6D, 0x76, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov4_020D92B0
ov4_020D92B0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x6D, 0x76, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov4_020D92D4
ov4_020D92D4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x4D, 0x6F, 0x76
	.byte 0x69, 0x65, 0x56, 0x69, 0x65, 0x77, 0x53, 0x75, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov4_020D9300
ov4_020D9300:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x4D, 0x6F, 0x76, 0x69, 0x65, 0x56, 0x69
	.byte 0x65, 0x77, 0x53, 0x75, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov4_020D932C
ov4_020D932C:
	.byte 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov4_020D933C
ov4_020D933C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x6D, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x66, 0x5F, 0x6C
	.byte 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70
	.byte 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x63, 0x5F, 0x6C
	.byte 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70
	.byte 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70
	.byte 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0xA1, 0x02, 0x02, 0x68, 0xDE, 0x0B, 0x02, 0xA8, 0xB2, 0x02, 0x02
	.byte 0xA4, 0xB2, 0x02, 0x02, 0xDC, 0xDC, 0x0B, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x64, 0xDD, 0x0B, 0x02
	.byte 0xBC, 0xDD, 0x0B, 0x02, 0x14, 0xDE, 0x0B, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02
	.byte 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02
	.byte 0x24, 0xB2, 0x02, 0x02, 0x1C, 0xD5, 0x0B, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020D9450
ov4_020D9450:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x53
	.byte 0x54, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov4_020D946C
ov4_020D946C:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov4_020D9470
ov4_020D9470:
	.byte 0x25, 0x73, 0x0A, 0x81, 0x6D, 0x83, 0x47, 0x83, 0x89, 0x81, 0x5B, 0x83, 0x52, 0x81, 0x5B, 0x83
	.byte 0x68, 0x25, 0x73, 0x81, 0x6E, 0x00, 0x00, 0x00
	.global ov4_020D9488
ov4_020D9488:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0xA1, 0x02, 0x02, 0xDC, 0xE2, 0x0B, 0x02
	.byte 0xAC, 0xDE, 0x0B, 0x02, 0xE0, 0xDE, 0x0B, 0x02, 0xB0, 0xE1, 0x0B, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xD4, 0xE1, 0x0B, 0x02, 0x78, 0xE2, 0x0B, 0x02, 0xBC, 0xE2, 0x0B, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02, 0xF0, 0xE2, 0x0B, 0x02
	.global ov4_020D9538
ov4_020D9538:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D, 0x54, 0x53, 0x57, 0x66, 0x44, 0x4C, 0x2E, 0x53
	.byte 0x50, 0x46, 0x5F, 0x00
	.global ov4_020D9554
ov4_020D9554:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0xFA, 0x0B, 0x02, 0xE4, 0xF9, 0x0B, 0x02, 0x54, 0xE4, 0x0B, 0x02
	.byte 0x5C, 0xF3, 0x0B, 0x02, 0xE0, 0xE3, 0x0B, 0x02, 0x64, 0x1B, 0x04, 0x02, 0xEC, 0x1B, 0x04, 0x02
	.byte 0x58, 0x1C, 0x04, 0x02, 0x00, 0xE4, 0x0B, 0x02, 0xC8, 0x1C, 0x04, 0x02, 0x8C, 0xF3, 0x0B, 0x02
	.byte 0xEC, 0xE6, 0x0B, 0x02, 0xBC, 0x20, 0x04, 0x02, 0x68, 0xEF, 0x0B, 0x02, 0xD4, 0x1D, 0x04, 0x02
	.byte 0xF8, 0x1D, 0x04, 0x02, 0x1C, 0x1E, 0x04, 0x02, 0x40, 0x1E, 0x04, 0x02, 0x64, 0x1E, 0x04, 0x02
	.byte 0x88, 0x1E, 0x04, 0x02
	.global ov4_020D95C4
ov4_020D95C4:
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x71, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x67, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x66, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x65, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x63, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x62, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x6D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020D9714
ov4_020D9714:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0xA1, 0x02, 0x02, 0xAC, 0xFB, 0x0B, 0x02, 0x4C, 0xFA, 0x0B, 0x02
	.byte 0x74, 0xFA, 0x0B, 0x02, 0xC0, 0xFA, 0x0B, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x34, 0xFB, 0x0B, 0x02
	.byte 0x7C, 0xFB, 0x0B, 0x02, 0x88, 0xFB, 0x0B, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020D97A0
ov4_020D97A0:
	.byte 0x49, 0x5A, 0x5F, 0x54, 0x59, 0x50, 0x45, 0x00
	.global ov4_020D97A8
ov4_020D97A8:
	.byte 0x6F, 0x70, 0x30, 0x30, 0x66, 0x00, 0x00, 0x00
	.global ov4_020D97B0
ov4_020D97B0:
	.byte 0x6F, 0x70, 0x30, 0x30, 0x62, 0x00, 0x00, 0x00
	.global ov4_020D97B8
ov4_020D97B8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x66, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x62, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x66, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x62, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x62, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x73, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x66, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xA1, 0x02, 0x02, 0x74, 0x0F, 0x0C, 0x02
	.byte 0xB4, 0xFE, 0x0B, 0x02, 0x88, 0x00, 0x0C, 0x02, 0xD0, 0x0C, 0x0C, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0xD4, 0x0D, 0x0C, 0x02, 0x08, 0x0F, 0x0C, 0x02, 0x50, 0x0F, 0x0C, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020D9A04
ov4_020D9A04:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x74, 0x69, 0x74, 0x6C, 0x65, 0x2F, 0x4D, 0x54, 0x53, 0x49, 0x6E, 0x69, 0x2E
	.byte 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov4_020D9A28
ov4_020D9A28:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x73, 0x66, 0x64, 0x6E
	.byte 0x5F, 0x69, 0x30, 0x39, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov4_020D9A4C
ov4_020D9A4C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov4_020D9A60
ov4_020D9A60:
	.byte 0x68, 0x9A, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x70, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x38, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F
	.byte 0x77, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F
	.byte 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x70, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F
	.byte 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x39, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x36, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x70, 0x64, 0x5F, 0x77, 0x31, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x64, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x70, 0x64, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x70, 0x64, 0x5F, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x62, 0x31, 0x37, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x62, 0x31, 0x35, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x74, 0x64, 0x5F, 0x6E, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x6D, 0x64, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6C, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x5F
	.byte 0x67, 0x30, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x84, 0xA1, 0x02, 0x02, 0xC8, 0xB8, 0x0C, 0x02, 0xAC, 0x31, 0x0C, 0x02
	.byte 0x10, 0x56, 0x0C, 0x02, 0x4C, 0xAC, 0x0C, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x58, 0xB1, 0x0C, 0x02
	.byte 0xE8, 0xB3, 0x0C, 0x02, 0x38, 0xB4, 0x0C, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xA4, 0x22, 0x0C, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0x50, 0x2C, 0x0C, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020DA0F0
ov4_020DA0F0:
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F, 0x82, 0xBD
	.byte 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x5B, 0x97, 0x70, 0x2F, 0x82, 0xE6, 0x82, 0xA4, 0x5D
	.byte 0x82, 0xCC, 0x82, 0x62, 0x82, 0x6E, 0x82, 0x6C, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0
	.byte 0x0A, 0x5B, 0x91, 0x49, 0x2F, 0x82, 0xA6, 0x82, 0xE7, 0x5D, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA13C
ov4_020DA13C:
	.byte 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x5D, 0x5B, 0x97, 0x70, 0x2F, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xCC, 0x83, 0x4F
	.byte 0x83, 0x89, 0x83, 0x45, 0x83, 0x93, 0x83, 0x68, 0x82, 0xF0, 0x0A, 0x5B, 0x91, 0x49, 0x2F, 0x82
	.byte 0xA6, 0x82, 0xE7, 0x5D, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov4_020DA184
ov4_020DA184:
	.byte 0x4D, 0x54, 0x53, 0x57, 0x69, 0x63, 0x00, 0x00
	.global ov4_020DA18C
ov4_020DA18C:
	.byte 0x4D, 0x54, 0x53, 0x57
	.byte 0x69, 0x70, 0x00, 0x00
	.global ov4_020DA194
ov4_020DA194:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x25, 0x73, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov4_020DA1AC
ov4_020DA1AC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00
	.global ov4_020DA1CC
ov4_020DA1CC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x74
	.byte 0x69, 0x74, 0x6C, 0x65, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA1EC
ov4_020DA1EC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x74, 0x69, 0x74, 0x6C, 0x65
	.byte 0x5F, 0x77, 0x63, 0x2E, 0x53, 0x50, 0x4C, 0x00
	.global ov4_020DA208
ov4_020DA208:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x74, 0x69, 0x74, 0x6C, 0x65, 0x5F, 0x77, 0x63, 0x2E
	.byte 0x53, 0x50, 0x44, 0x00
	.global ov4_020DA224
ov4_020DA224:
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov4_020DA22C
ov4_020DA22C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2F
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov4_020DA24C
ov4_020DA24C:
	.byte 0x83, 0x74, 0x83, 0x42
	.byte 0x81, 0x5B, 0x83, 0x8B, 0x83, 0x68, 0x82, 0xC9, 0x82, 0x50, 0x82, 0x50, 0x5B, 0x90, 0x6C, 0x2F
	.byte 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xCC, 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82
	.byte 0xAA, 0x0A, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xC6, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DA298
ov4_020DA298:
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x5B, 0x96
	.byte 0xBC, 0x2F, 0x82, 0xDF, 0x82, 0xA2, 0x5D, 0x82, 0xC6, 0x83, 0x47, 0x83, 0x93, 0x83, 0x75, 0x83
	.byte 0x8C, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5
	.byte 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xC6, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DA2E8
ov4_020DA2E8:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82
	.byte 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov4_020DA314
ov4_020DA314:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xAA, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82
	.byte 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA344
ov4_020DA344:
	.byte 0x82, 0xB1, 0x82, 0xEA, 0x5B, 0x88, 0xC8, 0x8F, 0xE3, 0x90, 0xDA, 0x91
	.byte 0xB1, 0x2F, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC
	.byte 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00
	.global ov4_020DA370
ov4_020DA370:
	.byte 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F
	.byte 0x81, 0x5B, 0x82, 0xC9, 0x5B, 0x8B, 0xA6, 0x97, 0xCD, 0x2F, 0x82, 0xAB, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xAD, 0x5D, 0x0A, 0x82, 0xB7, 0x82, 0xE9, 0x82, 0xB1, 0x82, 0xC6
	.byte 0x82, 0xCD, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00
	.global ov4_020DA3B0
ov4_020DA3B0:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC5, 0x82, 0xBD
	.byte 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA3D4
ov4_020DA3D4:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA3F4
ov4_020DA3F4:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x0A, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x0A
	.byte 0x82, 0xDA, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA444
ov4_020DA444:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB7, 0x82, 0xE9, 0x0A
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x82
	.byte 0xDA, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A
	.byte 0x81, 0x69, 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xCC, 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5
	.byte 0x82, 0xE3, 0x5D, 0x82, 0xF0, 0x5B, 0x8E, 0x67, 0x97, 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6, 0x82
	.byte 0xA4, 0x5D, 0x81, 0x6A, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA4C8
ov4_020DA4C8:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43
	.byte 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1
	.byte 0x82, 0xB7, 0x82, 0xE9, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4
	.byte 0x5D, 0x82, 0xF0, 0x0A, 0x82, 0xB3, 0x82, 0xAA, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA514
ov4_020DA514:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB7, 0x82, 0xE9, 0x0A
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x82
	.byte 0xB3, 0x82, 0xAA, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x81, 0x69, 0x83, 0x58
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xCC
	.byte 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x8E, 0x67, 0x97, 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x81, 0x6A
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA594
ov4_020DA594:
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x97, 0x70, 0x2F
	.byte 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xCC, 0x0A
	.byte 0x83, 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC6, 0x83, 0x74, 0x83, 0x48, 0x81, 0x5B
	.byte 0x83, 0x81, 0x81, 0x5B, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82
	.byte 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DA5E0
ov4_020DA5E0:
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x97, 0x70, 0x2F, 0x82, 0xE6, 0x82, 0xA4
	.byte 0x5D, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x5B, 0x96, 0xBC, 0x2F, 0x82, 0xDF, 0x82
	.byte 0xA2, 0x5D, 0x82, 0xC6, 0x0A, 0x83, 0x47, 0x83, 0x93, 0x83, 0x75, 0x83, 0x8C, 0x83, 0x80, 0x82
	.byte 0xF0, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov4_020DA624
ov4_020DA624:
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xCC, 0x83, 0x86, 0x83, 0x6A
	.byte 0x83, 0x74, 0x83, 0x48, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82
	.byte 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00
	.global ov4_020DA64C
ov4_020DA64C:
	.byte 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x2F, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x5D, 0x5B, 0x97, 0x70, 0x2F, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xCC, 0x0A, 0x82
	.byte 0x62, 0x82, 0x6E, 0x82, 0x6C, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x83, 0x4F, 0x83
	.byte 0x89, 0x83, 0x45, 0x83, 0x93, 0x83, 0x68, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov4_020DA69C
ov4_020DA69C:
	.byte 0x82, 0xB3, 0x82, 0xF1
	.byte 0x82, 0xA9, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x5B, 0x8C, 0x88, 0x2F, 0x82, 0xAB
	.byte 0x5D, 0x82, 0xDF, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov4_020DA6C0
ov4_020DA6C0:
	.byte 0x82, 0xC7, 0x82, 0xBF, 0x82, 0xE7, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC5
	.byte 0x0A, 0x5B, 0x8E, 0x8E, 0x8D, 0x87, 0x2F, 0x82, 0xB5, 0x82, 0xA0, 0x82, 0xA2, 0x5D, 0x82, 0xF0
	.byte 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov4_020DA6EC
ov4_020DA6EC:
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x92, 0x86, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x0A, 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B
	.byte 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC5, 0x0A, 0x82
	.byte 0xB3, 0x82, 0xF1, 0x82, 0xA9, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x5B, 0x91, 0x49
	.byte 0x2F, 0x82, 0xA6, 0x82, 0xE7, 0x5D, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x0A, 0x82, 0xC7, 0x82, 0xBF, 0x82, 0xE7, 0x82, 0xCC, 0x83, 0x60, 0x81
	.byte 0x5B, 0x83, 0x80, 0x82, 0xC5, 0x82, 0xE0, 0x5B, 0x91, 0xE5, 0x8F, 0xE4, 0x95, 0x76, 0x2F, 0x82
	.byte 0xBE, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xD4, 0x5D, 0x82, 0xC5, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov4_020DA784
ov4_020DA784:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x92, 0x86, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81
	.byte 0x45, 0x0A, 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75
	.byte 0x83, 0x93, 0x82, 0x51, 0x82, 0xC5, 0x0A, 0x82, 0xB3, 0x82, 0xF1, 0x82, 0xA9, 0x83, 0x60, 0x81
	.byte 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x5B, 0x91, 0x49, 0x2F, 0x82, 0xA6, 0x82, 0xE7, 0x5D, 0x82, 0xF1
	.byte 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x0A, 0x82, 0xC7, 0x82
	.byte 0xBF, 0x82, 0xE7, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC5, 0x82, 0xE0, 0x5B
	.byte 0x91, 0xE5, 0x8F, 0xE4, 0x95, 0x76, 0x2F, 0x82, 0xBE, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82
	.byte 0xA4, 0x82, 0xD4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov4_020DA81C
ov4_020DA81C:
	.byte 0x83, 0x58, 0x83, 0x70
	.byte 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC6
	.byte 0x0A, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D
	.byte 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82
	.byte 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82
	.byte 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DA868
ov4_020DA868:
	.byte 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D
	.byte 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xC6, 0x0A, 0x5B, 0x92, 0xCA
	.byte 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82
	.byte 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov4_020DA8B4
ov4_020DA8B4:
	.byte 0x82, 0xB1, 0x82, 0xEA, 0x82, 0xC5, 0x82, 0xE6, 0x82, 0xEB, 0x82, 0xB5
	.byte 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov4_020DA8CC
ov4_020DA8CC:
	.byte 0x82, 0xB5, 0x82, 0xCE
	.byte 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA8EC
ov4_020DA8EC:
	.byte 0x82, 0xB1, 0x82, 0xEA
	.byte 0x82, 0xC5, 0x82, 0xE6, 0x82, 0xEB, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9
	.byte 0x81, 0x48, 0x00, 0x00
	.global ov4_020DA904
ov4_020DA904:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA924
ov4_020DA924:
	.byte 0x5B, 0x95, 0xE5, 0x8F, 0x57, 0x2F, 0x82, 0xDA, 0x82, 0xB5, 0x82, 0xE3
	.byte 0x82, 0xA4, 0x5D, 0x82, 0xF0, 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81
	.byte 0x48, 0x00, 0x00, 0x00
	.global ov4_020DA944
ov4_020DA944:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x92, 0x86, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81
	.byte 0x45, 0x81, 0x45, 0x81, 0x45, 0x0A, 0x83, 0x58, 0x83, 0x70, 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E
	.byte 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC5, 0x0A, 0x25, 0x73, 0x81, 0x40, 0x82
	.byte 0xF0, 0x0A, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xBD, 0x82, 0xA2
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xC9, 0x5B, 0x91, 0x49
	.byte 0x2F, 0x82, 0xA6, 0x82, 0xE7, 0x5D, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DA9B8
ov4_020DA9B8:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x92, 0x86, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x0A, 0x83, 0x43, 0x83, 0x69, 0x83, 0x59
	.byte 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xC5, 0x0A, 0x25
	.byte 0x73, 0x81, 0x40, 0x82, 0xF0, 0x0A, 0x5B, 0x91, 0xCE, 0x90, 0xED, 0x91, 0x8A, 0x8E, 0xE8, 0x2F
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82
	.byte 0xC9, 0x5B, 0x91, 0x49, 0x2F, 0x82, 0xA6, 0x82, 0xE7, 0x5D, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAA2C
ov4_020DAA2C:
	.byte 0x82, 0xBD, 0x82, 0xA2
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4
	.byte 0x5D, 0x82, 0xF0, 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xC2, 0x82, 0xAF, 0x5B, 0x92, 0x86, 0x2F, 0x82
	.byte 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82
	.byte 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82
	.byte 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00
	.global ov4_020DAA7C
ov4_020DAA7C:
	.byte 0x82, 0x63, 0x82, 0x72
	.byte 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x82, 0xBD, 0x82, 0xA2
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0
	.byte 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x0A, 0x82, 0xDA, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAACC
ov4_020DAACC:
	.byte 0x83, 0x58, 0x83, 0x70
	.byte 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC6
	.byte 0x0A, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D
	.byte 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82
	.byte 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82
	.byte 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DAB18
ov4_020DAB18:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43
	.byte 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4
	.byte 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1
	.byte 0x82, 0xB7, 0x82, 0xE9, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4
	.byte 0x5D, 0x82, 0xF0, 0x0A, 0x82, 0xDA, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAB68
ov4_020DAB68:
	.byte 0x83, 0x43, 0x83, 0x69, 0x83, 0x59, 0x83, 0x7D
	.byte 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xC6, 0x0A, 0x5B, 0x92, 0xCA
	.byte 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82
	.byte 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov4_020DABB4
ov4_020DABB4:
	.byte 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x5B, 0x91, 0x8A, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x82, 0xA4, 0x82, 0xAF, 0x82
	.byte 0xC2, 0x82, 0xAF, 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5
	.byte 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82
	.byte 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81
	.byte 0x45, 0x00, 0x00, 0x00
	.global ov4_020DAC04
ov4_020DAC04:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB7, 0x82, 0xE9, 0x0A
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x82
	.byte 0xDA, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A
	.byte 0x81, 0x69, 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xCC, 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5
	.byte 0x82, 0xE3, 0x5D, 0x82, 0xF0, 0x5B, 0x8E, 0x67, 0x97, 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6, 0x82
	.byte 0xA4, 0x5D, 0x81, 0x6A, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAC88
ov4_020DAC88:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB7, 0x82, 0xE9, 0x0A, 0x83, 0x58, 0x83, 0x70
	.byte 0x81, 0x5B, 0x83, 0x4E, 0x81, 0x5E, 0x83, 0x7B, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x5B, 0x91, 0x49, 0x91, 0xF0, 0x2F, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x82, 0xBD, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE
	.byte 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00
	.global ov4_020DACD8
ov4_020DACD8:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB7, 0x82, 0xE9, 0x0A, 0x83, 0x43, 0x83, 0x69
	.byte 0x83, 0x59, 0x83, 0x7D, 0x83, 0x43, 0x83, 0x8C, 0x83, 0x75, 0x83, 0x93, 0x82, 0x51, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x5B, 0x91, 0x49, 0x91, 0xF0, 0x2F, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x82, 0xBD, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE
	.byte 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00
	.global ov4_020DAD28
ov4_020DAD28:
	.byte 0x82, 0xC7, 0x82, 0xCC, 0x5B, 0x91, 0x8A, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xC6, 0x82, 0xBD, 0x82, 0xA2, 0x82
	.byte 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9, 0x82, 0xA9, 0x0A, 0x5B, 0x8D, 0xC5, 0x91, 0xE5, 0x2F
	.byte 0x82, 0xB3, 0x82, 0xA2, 0x82, 0xBE, 0x82, 0xA2, 0x5D, 0x82, 0x52, 0x5B, 0x90, 0x6C, 0x2F, 0x82
	.byte 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xDC, 0x82, 0xC5, 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xD7, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAD78
ov4_020DAD78:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xC6, 0x0A, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov4_020DAD98
ov4_020DAD98:
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x82
	.byte 0xB3, 0x82, 0xAA, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DADE0
ov4_020DADE0:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C, 0x83, 0x58, 0x5B, 0x92
	.byte 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x0A
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9, 0x5B, 0x91, 0x8A, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x0A, 0x82, 0xB3, 0x82, 0xAA
	.byte 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAE2C
ov4_020DAE2C:
	.byte 0x83, 0x67, 0x83, 0x8C
	.byte 0x81, 0x5B, 0x83, 0x68, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4
	.byte 0x5D, 0x82, 0xF0, 0x82, 0xB3, 0x82, 0xAA, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82
	.byte 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAE74
ov4_020DAE74:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB7, 0x82, 0xE9, 0x0A
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x82
	.byte 0xB3, 0x82, 0xAA, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x81, 0x69, 0x83, 0x58
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xCC
	.byte 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x8E, 0x67, 0x97, 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x81, 0x6A
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAEF4
ov4_020DAEF4:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x0A, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB7, 0x82, 0xE9
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x0A
	.byte 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov4_020DAF44
ov4_020DAF44:
	.byte 0x82, 0x63, 0x82, 0x72, 0x83, 0x8F, 0x83, 0x43, 0x83, 0x84, 0x83, 0x8C
	.byte 0x83, 0x58, 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1
	.byte 0x5D, 0x82, 0xC5, 0x0A, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB7, 0x82, 0xE9
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xF0, 0x0A
	.byte 0x82, 0xA6, 0x82, 0xE7, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov4_020DAF94
ov4_020DAF94:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DAFB4
ov4_020DAFB4:
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4
	.byte 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x82, 0xCC, 0x5B, 0x95, 0xD4, 0x8E, 0x96, 0x2F, 0x82, 0xD6, 0x82
	.byte 0xF1, 0x82, 0xB6, 0x5D, 0x82, 0xF0, 0x0A, 0x82, 0xDC, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DAFE8
ov4_020DAFE8:
	.byte 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1
	.byte 0x82, 0xCC, 0x82, 0xB5, 0x82, 0xA9, 0x82, 0xBD, 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82
	.byte 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00
	.global ov4_020DB00C
ov4_020DB00C:
	.byte 0x82, 0xB5, 0x82, 0xCE
	.byte 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB02C
ov4_020DB02C:
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x0A, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82
	.byte 0xF1, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DB04C
ov4_020DB04C:
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x0A, 0x81, 0x40, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00
	.global ov4_020DB06C
ov4_020DB06C:
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x0A, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82
	.byte 0xF1, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DB08C
ov4_020DB08C:
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x0A, 0x81, 0x40, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00
	.global ov4_020DB0AC
ov4_020DB0AC:
	.byte 0x82, 0xB5, 0x82, 0xCE
	.byte 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x82, 0xDC, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB0CC
ov4_020DB0CC:
	.byte 0x83, 0x60, 0x81, 0x5B
	.byte 0x83, 0x80, 0x82, 0xCC, 0x83, 0x86, 0x83, 0x6A, 0x83, 0x74, 0x83, 0x48, 0x81, 0x5B, 0x83, 0x80
	.byte 0x82, 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82
	.byte 0xB7, 0x81, 0x42, 0x00
	.global ov4_020DB0F4
ov4_020DB0F4:
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x91, 0xCE, 0x90
	.byte 0xED, 0x2F, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x5B, 0x97, 0x70, 0x2F, 0x82
	.byte 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xCC, 0x0A, 0x82, 0x62, 0x82, 0x6E, 0x82, 0x6C, 0x83, 0x60, 0x81
	.byte 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x83, 0x4F, 0x83, 0x89, 0x83, 0x45, 0x83, 0x93, 0x83, 0x68, 0x82
	.byte 0xF0, 0x0A, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov4_020DB144
ov4_020DB144:
	.byte 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5B, 0x91, 0xCE, 0x90
	.byte 0xED, 0x2F, 0x82, 0xBD, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x5B, 0x97, 0x70, 0x2F, 0x82
	.byte 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xCC, 0x0A, 0x82, 0x62, 0x82, 0x6E, 0x82, 0x6C, 0x83, 0x60, 0x81
	.byte 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x83, 0x4F, 0x83, 0x89, 0x83, 0x45, 0x83, 0x93, 0x83, 0x68, 0x82
	.byte 0xF0, 0x0A, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB194
ov4_020DB194:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB1B4
ov4_020DB1B4:
	.byte 0x98, 0xA1, 0x02, 0x02, 0xA0, 0xC0, 0x0C, 0x02, 0xE8, 0xA8, 0x11, 0x02
	.byte 0xC8, 0xAF, 0x11, 0x02, 0xEC, 0xBE, 0x0C, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x08, 0xBF, 0x0C, 0x02
	.byte 0x20, 0xBF, 0x0C, 0x02, 0x2C, 0xBF, 0x0C, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.byte 0x38, 0xBA, 0x0C, 0x02, 0x80, 0xB9, 0x0C, 0x02, 0xDC, 0xB8, 0x0C, 0x02, 0x48, 0xB9, 0x0C, 0x02
	.byte 0xE8, 0xB8, 0x0C, 0x02, 0x4C, 0xA0, 0x11, 0x02, 0x70, 0xA0, 0x11, 0x02, 0x28, 0xA2, 0x11, 0x02
	.byte 0x38, 0xBF, 0x0C, 0x02, 0x58, 0xB9, 0x0C, 0x02
	.global ov4_020DB248
ov4_020DB248:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x76, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x35
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x35, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x31, 0x34, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x33
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x32, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x37, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x31, 0x37, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x38
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x39, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x36, 0x00, 0x00, 0x00, 0x00, 0x73, 0x61, 0x76, 0x65, 0x5F, 0x77, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x36, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x63, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x74, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x34
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x30, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x63, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x32
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x38, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x37, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x36, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x31, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x76, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00, 0x77, 0x74, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00, 0x73, 0x61, 0x76, 0x65, 0x5F, 0x69, 0x30, 0x30
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB448
ov4_020DB448:
	.byte 0xC8, 0xC0, 0x0C, 0x02, 0xCC, 0xC0, 0x0C, 0x02
	.byte 0xE0, 0xC0, 0x0C, 0x02, 0x14, 0xC1, 0x0C, 0x02, 0xDC, 0xC5, 0x0C, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0x30, 0xD4, 0x0C, 0x02, 0xDC, 0xE6, 0x0C, 0x02, 0xA0, 0xD1, 0x0C, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020DB4B4
ov4_020DB4B4:
	.byte 0x28, 0xB4, 0x0D, 0x02, 0x08, 0xB3, 0x0D, 0x02, 0x34, 0xB4, 0x0D, 0x02
	.byte 0x04, 0xB4, 0x0D, 0x02, 0xF8, 0xB3, 0x0D, 0x02, 0xEC, 0xB3, 0x0D, 0x02, 0xF0, 0xB2, 0x0D, 0x02
	.byte 0xD4, 0xB3, 0x0D, 0x02, 0xC8, 0xB3, 0x0D, 0x02, 0xBC, 0xB3, 0x0D, 0x02, 0xB0, 0xB3, 0x0D, 0x02
	.byte 0xA4, 0xB3, 0x0D, 0x02, 0x2C, 0xB3, 0x0D, 0x02, 0x8C, 0xB3, 0x0D, 0x02, 0x98, 0xB3, 0x0D, 0x02
	.byte 0x74, 0xB3, 0x0D, 0x02, 0x68, 0xB3, 0x0D, 0x02, 0x5C, 0xB3, 0x0D, 0x02, 0x50, 0xB3, 0x0D, 0x02
	.byte 0x44, 0xB3, 0x0D, 0x02, 0x38, 0xB3, 0x0D, 0x02, 0x90, 0xB2, 0x0D, 0x02, 0x6C, 0xB2, 0x0D, 0x02
	.byte 0x1C, 0xB4, 0x0D, 0x02, 0x84, 0xB2, 0x0D, 0x02, 0xFC, 0xB2, 0x0D, 0x02, 0xC0, 0xB2, 0x0D, 0x02
	.byte 0xD8, 0xB2, 0x0D, 0x02, 0xE4, 0xB2, 0x0D, 0x02, 0x80, 0xB3, 0x0D, 0x02, 0xE0, 0xB3, 0x0D, 0x02
	.byte 0xB4, 0xB2, 0x0D, 0x02, 0xA8, 0xB2, 0x0D, 0x02, 0x9C, 0xB2, 0x0D, 0x02, 0x78, 0xB2, 0x0D, 0x02
	.byte 0x14, 0xB3, 0x0D, 0x02, 0xCC, 0xB2, 0x0D, 0x02, 0x20, 0xB3, 0x0D, 0x02, 0x10, 0xB4, 0x0D, 0x02
	.byte 0x60, 0xB2, 0x0D, 0x02
	.global ov4_020DB554
ov4_020DB554:
	.byte 0xA0, 0x4E, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x51, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x52, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x34, 0x53, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0x53, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x54, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE8, 0x54, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x84, 0x55, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0x55, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x55, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xF0, 0x55, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x56, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x56, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x56, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE4, 0x57, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x58, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x59, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x84, 0x59, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB0, 0x59, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x59, 0x0D, 0x02
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB5F4
ov4_020DB5F4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov4_020DB60C
ov4_020DB60C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E
	.byte 0x70, 0x6B, 0x68, 0x00
	.global ov4_020DB624
ov4_020DB624:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov4_020DB63C
ov4_020DB63C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x54, 0x72, 0x61, 0x64, 0x65
	.byte 0x44, 0x61, 0x74, 0x61, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB65C
ov4_020DB65C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x74, 0x72, 0x61, 0x64, 0x65
	.byte 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB678
ov4_020DB678:
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov4_020DB680
ov4_020DB680:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x74
	.byte 0x72, 0x61, 0x64, 0x65, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB69C
ov4_020DB69C:
	.byte 0x5B, 0x91, 0x49, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x5B, 0x8A, 0x4A, 0x8E, 0x6E, 0x2F, 0x82, 0xA9, 0x82, 0xA2, 0x82
	.byte 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xCD
	.byte 0x5B, 0x93, 0x64, 0x8C, 0xB9, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB0, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x90, 0xD8, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xC1, 0x82, 0xBD, 0x82, 0xE8, 0x0A, 0x83
	.byte 0x4A, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x82, 0xCA, 0x82, 0xA9, 0x82, 0xC8, 0x82, 0xA2, 0x82
	.byte 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov4_020DB71C
ov4_020DB71C:
	.byte 0x5B, 0x91, 0x49, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x5B, 0x8A, 0x4A, 0x8E, 0x6E, 0x2F, 0x82, 0xA9, 0x82, 0xA2, 0x82
	.byte 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xCD
	.byte 0x5B, 0x93, 0x64, 0x8C, 0xB9, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB0, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x90, 0xD8, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xC1, 0x82, 0xBD, 0x82, 0xE8, 0x0A, 0x83
	.byte 0x4A, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x82, 0xCA, 0x82, 0xA9, 0x82, 0xC8, 0x82, 0xA2, 0x82
	.byte 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov4_020DB79C
ov4_020DB79C:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov4_020DB7A0
ov4_020DB7A0:
	.byte 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3, 0x5D, 0x83
	.byte 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x5B, 0x8A, 0x4A, 0x8E, 0x6E, 0x2F, 0x82
	.byte 0xA9, 0x82, 0xA2, 0x82, 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x83
	.byte 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xCD, 0x5B, 0x93, 0x64, 0x8C, 0xB9, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB0
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x5B, 0x90, 0xD8, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xC1, 0x82, 0xBD
	.byte 0x82, 0xE8, 0x0A, 0x83, 0x4A, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xF0, 0x82, 0xCA, 0x82, 0xA9, 0x82
	.byte 0xC8, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov4_020DB820
ov4_020DB820:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov4_020DB824
ov4_020DB824:
	.byte 0x25, 0x73, 0x0A, 0x83, 0x60, 0x81, 0x5B, 0x83, 0x80, 0x82, 0xC6, 0x83
	.byte 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x00
	.global ov4_020DB838
ov4_020DB838:
	.byte 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68
	.byte 0x82, 0xC9, 0x8F, 0x6F, 0x82, 0xB7, 0x91, 0x49, 0x8E, 0xE8, 0x82, 0xF0, 0x91, 0x49, 0x82, 0xF1
	.byte 0x82, 0xC5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB860
ov4_020DB860:
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x91, 0x49, 0x8E, 0xE8, 0x82, 0xF0, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B
	.byte 0x83, 0x68, 0x82, 0xC9, 0x8F, 0x6F, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB884
ov4_020DB884:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x91, 0xD2
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x00, 0x00
	.global ov4_020DB89C
ov4_020DB89C:
	.byte 0x82, 0xB1, 0x82, 0xEA
	.byte 0x82, 0xC5, 0x82, 0xA2, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov4_020DB8B0
ov4_020DB8B0:
	.byte 0x81, 0x40, 0x92, 0xCA, 0x90, 0x4D, 0x91, 0x8A, 0x8E, 0xE8, 0x82, 0xAA, 0x8B, 0x91, 0x94, 0xDB
	.byte 0x82, 0xB5, 0x82, 0xBD, 0x82, 0xBD, 0x82, 0xDF, 0x0A, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83
	.byte 0x68, 0x82, 0xAA, 0x90, 0xAC, 0x97, 0xA7, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82
	.byte 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov4_020DB8E8
ov4_020DB8E8:
	.byte 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68
	.byte 0x95, 0x73, 0x90, 0xAC, 0x97, 0xA7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB8FC
ov4_020DB8FC:
	.byte 0x82, 0xB5, 0x82, 0xCE
	.byte 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x91, 0xD2, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB91C
ov4_020DB91C:
	.byte 0x83, 0x67, 0x83, 0x8C
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xAA, 0x8A, 0xAE, 0x97, 0xB9, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5
	.byte 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB938
ov4_020DB938:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xAA, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82
	.byte 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xDC, 0x82, 0xB5
	.byte 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB968
ov4_020DB968:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD
	.byte 0x82, 0xA8, 0x91, 0xD2, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45
	.byte 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB988
ov4_020DB988:
	.byte 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68
	.byte 0x82, 0xF0, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8
	.byte 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DB9B0
ov4_020DB9B0:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x91, 0xD2, 0x82, 0xBF, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x00, 0x00
	.global ov4_020DB9C8
ov4_020DB9C8:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD
	.byte 0x82, 0xA8, 0x91, 0xD2, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DB9E4
ov4_020DB9E4:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x91, 0xD2
	.byte 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00
	.global ov4_020DBA00
ov4_020DBA00:
	.byte 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x91, 0xD2, 0x82, 0xBF, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x45, 0x81, 0x45, 0x81, 0x45, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DBA20
ov4_020DBA20:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov4_020DBA38
ov4_020DBA38:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov4_020DBA50
ov4_020DBA50:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov4_020DBA68
ov4_020DBA68:
	.byte 0x92, 0xCA, 0x90, 0x4D, 0x91, 0x8A, 0x8E, 0xE8
	.byte 0x82, 0xCC, 0x8F, 0x80, 0x94, 0xF5, 0x82, 0xAA, 0x90, 0xAE, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2
	.byte 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DBA8C
ov4_020DBA8C:
	.byte 0x82, 0xBB, 0x82, 0xCC
	.byte 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xCD, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68
	.byte 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DBAB0
ov4_020DBAB0:
	.byte 0x92, 0xCA, 0x90, 0x4D, 0x91, 0x8A, 0x8E, 0xE8, 0x82, 0xC9, 0x82, 0xA2, 0x82, 0xE9, 0x83, 0x4C
	.byte 0x83, 0x83, 0x83, 0x89, 0x82, 0xCD, 0x0A, 0x81, 0x40, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83
	.byte 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov4_020DBAE0
ov4_020DBAE0:
	.byte 0x82, 0xBB, 0x82, 0xCC, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xCD, 0x83, 0x67, 0x83, 0x8C
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov4_020DBB04
ov4_020DBB04:
	.byte 0x92, 0xCA, 0x90, 0x4D, 0x91, 0x8A, 0x8E, 0xE8, 0x82, 0xAA, 0x83, 0x58
	.byte 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x92, 0x86, 0x82, 0xCC, 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89
	.byte 0x82, 0xCD, 0x0A, 0x81, 0x40, 0x81, 0x40, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00
	.global ov4_020DBB3C
ov4_020DBB3C:
	.byte 0x82, 0xBB, 0x82, 0xCC
	.byte 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xCD, 0x81, 0x40, 0x92, 0xCA, 0x90, 0x4D, 0x91, 0x8A
	.byte 0x8E, 0xE8, 0x82, 0xCC, 0x83, 0x51, 0x81, 0x5B, 0x83, 0x80, 0x90, 0x69, 0x8D, 0x73, 0x0A, 0x81
	.byte 0x40, 0x81, 0x40, 0x82, 0xCC, 0x8A, 0xD6, 0x8C, 0x57, 0x82, 0xC5, 0x83, 0x67, 0x83, 0x8C, 0x81
	.byte 0x5B, 0x83, 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00
	.global ov4_020DBB80
ov4_020DBB80:
	.byte 0x82, 0xE4, 0x82, 0xA4, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93
	.byte 0x83, 0x67, 0x82, 0xAA, 0x91, 0xAB, 0x82, 0xE8, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xCC, 0x82, 0xC5
	.byte 0x0A, 0x81, 0x40, 0x81, 0x40, 0x81, 0x40, 0x83, 0x67, 0x83, 0x8C, 0x81, 0x5B, 0x83, 0x68, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x00
	.global ov4_020DBBBC
ov4_020DBBBC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x30, 0x32, 0x61, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x30, 0x32, 0x61, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32, 0x5F, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31, 0x5F, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31, 0x5F, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32, 0x5F, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32, 0x5F, 0x33, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x62, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x62, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x32, 0x5F, 0x34, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x66, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x66, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31, 0x5F, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x73, 0x74, 0x5F, 0x75, 0x70, 0x5F, 0x66, 0x30, 0x31, 0x5F, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8C, 0xA1, 0x02, 0x02
	.byte 0x54, 0x71, 0x0D, 0x02, 0x6C, 0x71, 0x0D, 0x02, 0x68, 0x71, 0x0D, 0x02, 0xEC, 0x6D, 0x0D, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x78, 0x6E, 0x0D, 0x02, 0xFC, 0x6E, 0x0D, 0x02, 0x7C, 0x6F, 0x0D, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02
	.byte 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02
	.byte 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020DBD28
ov4_020DBD28:
	.byte 0x54, 0x49, 0x54, 0x4C, 0x45, 0x2E, 0x53, 0x41
	.byte 0x44, 0x00, 0x00, 0x00
	.global ov4_020DBD34
ov4_020DBD34:
	.byte 0x54, 0x49, 0x54, 0x4C, 0x45, 0x2E, 0x53, 0x41, 0x44, 0x00, 0x00, 0x00
	.global ov4_020DBD40
ov4_020DBD40:
	.byte 0x54, 0x49, 0x54, 0x4C, 0x45, 0x2E, 0x53, 0x41, 0x44, 0x00, 0x00, 0x00
	.global ov4_020DBD4C
ov4_020DBD4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x69, 0x74, 0x6C, 0x65
	.byte 0x2F, 0x53, 0x54, 0x53, 0x49, 0x6E, 0x69, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov4_020DBD70
ov4_020DBD70:
	.byte 0x5F, 0x66, 0x00, 0x00
	.global ov4_020DBD74
ov4_020DBD74:
	.byte 0x5F, 0x62, 0x00, 0x00
	.global ov4_020DBD78
ov4_020DBD78:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x74, 0x69, 0x74, 0x6C, 0x65, 0x2F, 0x53, 0x54, 0x53
	.byte 0x49, 0x6E, 0x69, 0x00
	.global ov4_020DBD94
ov4_020DBD94:
	.byte 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00
	.global ov4_020DBD9C
ov4_020DBD9C:
	.byte 0x54, 0x49, 0x54, 0x4C
	.byte 0x45, 0x2E, 0x53, 0x41, 0x44, 0x00, 0x00, 0x00
	.global ov4_020DBDA8
ov4_020DBDA8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x75, 0x5F
	.byte 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x73, 0x72, 0x75, 0x5F, 0x77, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0xA1, 0x02, 0x02
	.byte 0x78, 0x7C, 0x0D, 0x02, 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02, 0xB8, 0x7A, 0x0D, 0x02
	.byte 0x08, 0xB2, 0x02, 0x02, 0x3C, 0x7B, 0x0D, 0x02, 0x94, 0x7B, 0x0D, 0x02, 0xEC, 0x7B, 0x0D, 0x02
	.byte 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02
	.byte 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02
	.byte 0x78, 0xB2, 0x02, 0x02, 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02
	.byte 0x3C, 0xB2, 0x02, 0x02, 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0x70, 0x71, 0x0D, 0x02
	.byte 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov4_020DBE98
ov4_020DBE98:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x53, 0x54, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50
	.byte 0x46, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov4_020DBEC0
ov4_020DBEC0:
	.space 0x01
	.global ov4_020DBEC1
ov4_020DBEC1:
	.space 0x1F

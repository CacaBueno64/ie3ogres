
	.include "/macros/function.inc"
	.include "/include/overlay112.inc"

	.text
	arm_func_start FUN_ov112_02124d00
FUN_ov112_02124d00: ; 0x02124D00
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x134
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _02124D30 ; =0x02125908
	add r1, r4, #0x134
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02124D30: .word ov112_02125908
	arm_func_end FUN_ov112_02124d00

	arm_func_start FUN_ov112_02124d34
FUN_ov112_02124d34: ; 0x02124D34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r7, [r4, #0x134]
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02124DBC ; =0x021257A4
	ldr r8, _02124DC0 ; =0x021257A4
	ldr r0, [r0]
	cmp r0, #0
	beq _02124D80
	add r6, r4, #0x134
	mov r5, #0xc
_02124D64:
	ldr r3, [r8, #4]
	mov r2, r7
	mla r1, r3, r5, r6
	bl FUN_ov16_020f32b4
	ldr r0, [r8, #8]!
	cmp r0, #0
	bne _02124D64
_02124D80:
	add r0, r4, #0x134
	mov r1, #5
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r5, #5
_02124D9C:
	mov r0, r6
	bl OS_Sleep
	mov r1, r5
	add r0, r4, #0x134
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _02124D9C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02124DBC: .word ov112_021257A4
_02124DC0: .word ov112_021257A4
	arm_func_end FUN_ov112_02124d34

	arm_func_start FUN_ov112_02124dc4
FUN_ov112_02124dc4: ; 0x02124DC4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r5, #0
	mov r0, r5
	add r1, r4, #0xd
	mov r2, #0x100
	bl MIi_CpuClearFast
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x28]
	cmp r1, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, pc}
	ldrsh r0, [r0, #0x2a]
	cmp r0, #0
	addlt sp, sp, #0x14
	ldmltfd sp!, {r4, r5, pc}
	ldr r3, _02124E78 ; =gL5Allocator
	str r5, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, _02124E7C ; =0x02125930
	cmp r0, #0
	beq _02124E40
	str r5, [sp]
	str r5, [sp, #4]
	add r2, sp, #0x10
	str r5, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN20L5FileRequestManager10readDirectEPKcPPvP11L5Allocatoriiih
	mov r5, r0
_02124E40:
	cmp r5, #0
	addle sp, sp, #0x14
	ldmlefd sp!, {r4, r5, pc}
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x2a]
	ldr r2, [sp, #0x10]
	add r0, r4, #0xd
	add r1, r2, r1
	bl sprintf
	ldr r1, [sp, #0x10]
	ldr r0, _02124E78 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02124E78: .word gL5Allocator
_02124E7C: .word ov112_02125930
	arm_func_end FUN_ov112_02124dc4

	arm_func_start FUN_ov112_02124e80
FUN_ov112_02124e80: ; 0x02124E80
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x134
	mov r4, #0xc
_02124E90:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #5
	blt _02124E90
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov112_02124e80

	arm_func_start FUN_ov112_02124ea8
FUN_ov112_02124ea8: ; 0x02124EA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r7, [r10, #0x14c]
	mov r11, #0
	mov r4, #1
	cmp r7, #0
	mov r2, r11
	beq _02124EF4
	ldr r0, [r7, #0xc]
	mov r5, #2
	ldr r1, [r7, #0x10]
	mov r3, r5
	add r0, r7, r0
	bl FUN_ov16_020f1868
	mov r0, r7
	mov r2, r5
	mov r1, r4
	bl FUN_ov16_020f1138
_02124EF4:
	ldr r7, [r10, #0x140]
	cmp r7, #0
	beq _02124F28
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	mov r3, r4
	add r0, r7, r0
	mov r2, #0
	bl FUN_ov16_020f1868
	mov r0, r7
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f1138
_02124F28:
	ldr r5, _021250B4 ; =0x0212578C
	add r4, sp, #0x20
	ldmia r5!, {r0, r1, r2, r3}
	mov r8, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	stmia r4, {r0, r1}
	mov r6, #0
	mov r5, #1
	mvn r4, #0
	b _02124F9C
_02124F54:
	mov r0, #0xc
	ldmia r8, {r1, r9}
	mla r0, r1, r0, r10
	ldr r7, [r0, #0x134]
	cmp r7, #0
	beq _02124F98
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x10]
	mov r3, r9
	add r0, r7, r0
	add r2, r6, #1
	bl FUN_ov16_020f1868
	mov r6, r0
	mov r0, r7
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_020f1138
_02124F98:
	add r8, r8, #8
_02124F9C:
	ldr r0, [r8]
	cmp r0, r4
	bne _02124F54
	ldr r7, _021250B8 ; =0x020A8440
	mov r8, #0
	mov r4, #0x800
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r4
	bl DC_FlushRange
	add r7, r10, #0x110
	mov r4, #0x20
	b _0212503C
_02124FDC:
	ldr r0, [r7]
	mov r1, r11
	cmp r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	movne r1, r5
	cmp r1, #0
	beq _02125034
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	ldr r0, [r7]
	mov r3, r11
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r6, #1
	bl FUN_ov16_020f1868
	str r4, [r7, #8]
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r6, r0
	mul r0, r2, r1
	add r4, r4, r0, lsl #5
_02125034:
	add r8, r8, #1
	add r7, r7, #0x14
_0212503C:
	cmp r8, #1
	blt _02124FDC
	ldr r0, [r10, #0x110]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r10, #0x114]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _021250A8
	ldr r4, [r10, #0x110]
	mov r0, #2
	mov r2, #0
	str r0, [sp]
	stmib sp, {r0, r2}
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #6
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r0, _021250BC ; =0x0209F5C0
	mov r3, r2
	mov r1, #1
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_021250A8:
	bl FUN_ov16_020f10c8
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021250B4: .word ov112_0212578C
_021250B8: .word unk_020A8440
_021250BC: .word unk_0209F5C0
	arm_func_end FUN_ov112_02124ea8

	arm_func_start FUN_ov112_021250c0
FUN_ov112_021250c0: ; 0x021250C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r7, r0
	add r0, r7, #0x100
	ldrsh r0, [r0, #0x26]
	mov r4, #1
	mov r5, #0
	cmp r0, #0
	bne _02125268
	ldr r6, [r7, #0x140]
	cmp r6, #0
	beq _0212513C
	ldr r0, [r7, #8]
	cmp r0, #3
	bne _02125114
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	add r0, r6, r0
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_020f1868
_02125114:
	ldr r0, [r6, #0x14]
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_0212513C:
	bl G2S_GetBG1CharPtr
	mov r6, #0x20
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	ldr r1, [r7, #0x158]
	mov r0, r4
	mov r2, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r7, #0x164]
	mov r0, r4
	bl FUN_ov16_020f1a60
	ldr r0, [r7, #8]
	cmp r0, #2
	bne _021251AC
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r6
	bl DC_FlushRange
_021251AC:
	ldr r3, [r7, #0x158]
	cmp r3, #0
	beq _02125204
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	ldr r2, [r3, #0xc]
	ldr r0, _02125338 ; =0x0209F5C0
	add r5, r3, r2
	mov r2, r1
	mov r3, #0
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_02125204:
	ldr r5, [r7, #0x164]
	cmp r5, #0
	beq _0212525C
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	ldr r0, _02125338 ; =0x0209F5C0
	add r5, r5, r2
	mov r2, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_0212525C:
	add sp, sp, #0x20
	strb r4, [r7, #0x125]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125268:
	cmp r0, #1
	addne sp, sp, #0x20
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, [r7, #0x14c]
	cmp r6, #0
	beq _021252C0
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	mov r2, r5
	add r0, r6, r0
	mov r3, #2
	bl FUN_ov16_020f1868
	ldr r0, [r6, #0x14]
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_021252C0:
	bl G2S_GetBG1CharPtr
	mov r6, #0x20
	mov r1, r0
	mov r0, r5
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	bl G2S_GetBG1ScrPtr
	mov r1, r5
	mov r2, #0x800
	bl memset
	ldr r6, _02125338 ; =0x0209F5C0
	mov r1, r4
	mov r0, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov16_020f5eec
	mov r3, r5
	mov r0, r6
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5f64
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f672c
	strb r4, [r7, #0x125]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125338: .word unk_0209F5C0
	arm_func_end FUN_ov112_021250c0

	arm_func_start FUN_ov112_0212533c
FUN_ov112_0212533c: ; 0x0212533C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _02125368
	add r0, r4, #0x124
	add r1, r4, #0x12c
	mov r2, #8
	bl memcmp
	cmp r0, #0
	beq _02125380
_02125368:
	mov r3, #1
	add r0, r4, #0x124
	add r1, r4, #0x12c
	mov r2, #8
	strb r3, [r4, #0xc]
	bl MI_CpuCopy8
_02125380:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov112_02124dc4
	mov r0, #0
	strb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov112_0212533c

	arm_func_start FUN_ov112_021253a0
FUN_ov112_021253a0: ; 0x021253A0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	add r0, r7, #0x100
	ldrsh r0, [r0, #0x28]
	mov r4, #0
	mov r5, #1
	cmp r0, #0
	ldrb r0, [r7, #0x124]
	movlt r5, r4
	add r6, r7, #0x110
	cmp r0, #0
	ldr r0, [r7, #0x110]
	moveq r5, #0
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r5, #0
	bl G2S_GetBG2ScrPtr
	mov r1, #0
	mov r2, #0x800
	bl memset
	cmp r5, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl G2S_GetBG2ScrPtr
	add r0, r0, #0x480
	mov r1, #1
_0212541C:
	strh r1, [r0], #2
	add r1, r1, #1
	cmp r1, #0xc1
	blt _0212541C
	ldrh r2, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	ldr r0, [r6, #4]
	mul r3, r2, r1
	mov r1, r4
	mov r2, r3, lsl #5
	bl MI_CpuFill8
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r4, [sp, #0x18]
	ldrh r2, [r6, #0xc]
	ldrh r3, [r6, #0xe]
	ldr r1, [r6, #4]
	add r0, r7, #0xd
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldrh r2, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	ldr r0, [r6, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	ldrh r3, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	ldmib r6, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG2Char
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov112_021253a0

	arm_func_start FUN_ov112_021254c8
FUN_ov112_021254c8: ; 0x021254C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r6, #6
	mov r0, r6
	bl FUN_ov16_020f4894
	ldr r0, _021255A4 ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f5a58
	add r0, r5, #0x110
	mov r1, r4
	bl FUN_ov16_020f2f7c
	mov r2, r6
	add r0, r5, #0x110
	mov r1, #0x20
	bl FUN_ov16_020f2fa8
	add r0, r5, #0x110
	bl FUN_ov16_020f2f20
	mov r7, #0
	mov r0, r7
	add r1, r5, #0x134
	mov r2, #0x48
	bl MIi_CpuClearFast
	mov r6, #0x100
	mov r0, r7
	add r1, r5, #0xd
	mov r2, r6
	str r7, [r5, #8]
	strb r7, [r5, #0xc]
	bl MIi_CpuClearFast
	add r0, r5, #0x100
	rsb r1, r6, #0xff
	strh r7, [r0, #0x26]
	strh r7, [r0, #0x2e]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	ldr r0, [r5, #4]
	strb r7, [r5, #0x124]
	strb r7, [r5, #0x125]
	strb r7, [r5, #0x12c]
	strb r7, [r5, #0x12d]
	bl FUN_020420b4
	cmp r0, #0x71
	addeq r0, r5, #0x100
	streqh r4, [r0, #0x26]
	mov r0, r5
	bl FUN_ov112_02124d00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021255A4: .word unk_0209F5C0
	arm_func_end FUN_ov112_021254c8

	arm_func_start FUN_ov112_021255a8
FUN_ov112_021255a8: ; 0x021255A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _021255C8
	cmp r1, #5
	beq _021255F8
	ldmfd sp!, {r4, pc}
_021255C8:
	add r0, r4, #0x134
	mov r1, #5
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov112_02124d34
	mov r0, r4
	bl FUN_ov112_02124ea8
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_021255F8:
	bl FUN_ov112_0212533c
	ldrb r0, [r4, #0x125]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x100
	ldrsh r0, [r0, #0x26]
	cmp r0, #0
	beq _02125628
	cmp r0, #1
	moveq r0, #4
	streq r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125628:
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov112_021255a8

	arm_func_start FUN_ov112_02125634
FUN_ov112_02125634: ; 0x02125634
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0212564C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _02125664 ; case 2
	b _02125664 ; case 3
	b _02125664 ; case 4
	b _02125690 ; case 5
_02125664:
	bl FUN_ov112_021250c0
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _02125684
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_02125684:
	mov r0, #5
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02125690:
	ldr r0, _021256A8 ; =0x0209F5C0
	mov r1, #1
	bl FUN_ov16_020f6a9c
	mov r0, r4
	bl FUN_ov112_021253a0
	ldmfd sp!, {r4, pc}
_021256A8: .word unk_0209F5C0
	arm_func_end FUN_ov112_02125634

	arm_func_start FUN_ov112_021256ac
FUN_ov112_021256ac: ; 0x021256AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x110]
	add r4, r5, #0x110
	cmp r0, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0212570C
	ldrh r3, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	ldr r0, [r4, #4]
	mov r1, #0
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl MI_CpuFill8
	ldrh r3, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	ldmib r4, {r0, r1}
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl GXS_LoadBG1Char
_0212570C:
	add r0, r5, #0x134
	mov r1, #5
	bl FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov112_02124e80
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0xc]
	blx r2
	mov r1, r4
	add r0, r5, #0x110
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov112_021256ac

	arm_func_start FUN_ov112_02125748
FUN_ov112_02125748: ; 0x02125748
	stmfd sp!, {r3, lr}
	mov r2, r0
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	add r1, r2, #0x124
	mov r2, #8
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov112_02125748

	arm_func_start FUN_ov112_02125774
FUN_ov112_02125774: ; 0x02125774
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov112_02125774

	arm_func_start FUN_ov112_02125788
FUN_ov112_02125788: ; 0x02125788
	bx lr
	arm_func_end FUN_ov112_02125788

	.rodata
	.global ov112_0212578C
ov112_0212578C:
	.byte 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.global ov112_021257A4
ov112_021257A4:
	.word ov112_02125858
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov112_02125884
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov112_02125864
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov112_02125874
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov112_021257cc
FUN_ov112_021257cc: ; 0x021257CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02125814 ; =0x02125840
	str r0, [r4, #0x10]
	ldr r0, _02125818 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0212581C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125814: .word ov112_02125840
_02125818: .word 0x00009CCD
_0212581C: .word 0x0000EA3C
	arm_func_end FUN_ov112_021257cc

	.section .sinit, 4
ov112_02125820:
	.word FUN_ov112_021257cc

	.data
	.global ov112_02125840
ov112_02125840:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov112_02125858
ov112_02125858:
	.byte 0x63, 0x68, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov112_02125864
ov112_02125864:
	.byte 0x63, 0x68, 0x75, 0x70, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov112_02125874
ov112_02125874:
	.byte 0x77, 0x61, 0x7A, 0x61, 0x5F, 0x75, 0x5F, 0x73, 0x30, 0x30, 0x2E, 0x70
	.byte 0x61, 0x63, 0x00, 0x00
	.global ov112_02125884
ov112_02125884:
	.byte 0x77, 0x61, 0x7A, 0x61, 0x5F, 0x75, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov112_0212589C
ov112_0212589C:
	.word FUN_ov112_02125788
	.word FUN_ov112_02125774
	.word FUN_0202b2a8
	.word FUN_0202b2a4
	.word FUN_ov112_021254c8
	.word FUN_0202b208
	.word FUN_ov112_021255a8
	.word FUN_ov112_02125634
	.word FUN_ov112_021256ac
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
	.word FUN_ov112_02125748
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov112_02125908
ov112_02125908:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x53, 0x4D, 0x57, 0x61
	.byte 0x7A, 0x61, 0x42, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00, 0x00
	.global ov112_02125930
ov112_02125930:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x73
	.byte 0x70, 0x5F, 0x62, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x2E, 0x53, 0x54, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay114.inc"

	.text
	arm_func_start FUN_ov114_02124d00
FUN_ov114_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r6, _02124DC0 ; 0x02099EF0
	mov r4, r2
	ldr r0, [r6]
	mov r5, r1
	mov r1, r4
	bl FUN_ov132_02143a34
	mov r7, r0
	ldr r0, [r6]
	mov r1, r4
	bl FUN_ov132_02143a40
	mov r3, #0
	mvn r2, #0
	add r1, sp, #0
_02124D3C:
	str r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #4
	blt _02124D3C
	mov r1, #0
	add r6, r7, #0x20
	add r12, sp, #0
	mov lr, #3
	b _02124D94
_02124D60:
	mov r3, lr
_02124D64:
	add r2, r12, r3, lsl #2
	ldr r2, [r2, #-4]
	str r2, [r12, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, #0
	bgt _02124D64
	sub r2, r6, r1
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #27
	add r2, r3, r2, ror #27
	str r2, [sp]
	add r1, r1, #1
_02124D94:
	cmp r1, #4
	bge _02124DA4
	cmp r1, r0
	blt _02124D60
_02124DA4:
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	mov r3, #4
	bl FUN_ov1_020db600
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124DC0: .word gUtilGame
	arm_func_end FUN_ov114_02124d00

	arm_func_start FUN_ov114_02124dc4
FUN_ov114_02124dc4: ; 0x02124DC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r0
	str r1, [r6, #0xc]
	cmp r1, #1
	mov r5, #0
	mov r4, #1
	beq _02124DF0
	cmp r1, #2
	beq _02124ECC
	b _02125030
_02124DF0:
	add r0, r6, #0x94
	mov r1, r5
	mov r2, #0xb4
	bl MI_CpuFill8
	ldr r0, _0212503C ; =0x02126350
	add r1, r6, #0x94
	bl FUN_ov1_020dbe00
	ldr r0, _02125040 ; =0x0212635C
	add r1, r6, #0x130
	bl FUN_ov1_020dbec4
	ldr r0, _02125044 ; =0x02126368
	add r1, r6, #0x13c
	bl FUN_ov1_020dbec4
	ldr r0, _02125048 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02124E40
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	beq _02124E98
_02124E40:
	ldr r0, [r6, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r6, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02124E6C
	add r0, r6, #0x54
	mov r1, #0
	bl FUN_ov1_020db4f0
_02124E6C:
	ldr r0, [r6, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r6, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02124E98
	add r0, r6, #0x68
	mov r1, #1
	bl FUN_ov1_020db4f0
_02124E98:
	mov r0, r6
	mov r2, r5
	add r1, r6, #0x2c
	bl FUN_ov114_02124d00
	mov r0, r6
	add r1, r6, #0x40
	mov r2, #1
	bl FUN_ov114_02124d00
	ldr r0, _0212504C ; 0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov132_02143c94
	b _02125030
_02124ECC:
	ldr r0, _02125050 ; =gLogicThink
	mov r1, r5
	bl FUN_0207249c
	mov r0, r5
	bl FUN_ov1_020dc1f4
	mov r7, r0
	ldr r0, [r6, #0x130]
	mov r1, r7
	add r2, sp, #8
	add r3, sp, #4
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	beq _02124F18
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125054 ; =0x02126374
	add r1, r6, #0x100
	bl FUN_ov1_020dbefc
_02124F18:
	mov r0, #0
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _02124F5C
	ldr r0, [r6, #0x13c]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r7
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	beq _02124F5C
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125058 ; =0x02126380
	add r1, r6, #0x118
	bl FUN_ov1_020dbefc
_02124F5C:
	ldr r0, _02125050 ; =gLogicThink
	mov r1, r4
	bl FUN_0207249c
	mov r0, r4
	bl FUN_ov1_020dc1f4
	mov r7, r0
	ldr r0, [r6, #0x130]
	mov r1, r7
	add r2, sp, #8
	add r3, sp, #4
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	beq _02124FA8
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0212505C ; =0x0212638C
	add r1, r6, #0x10c
	bl FUN_ov1_020dbefc
_02124FA8:
	mov r0, r4
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _02124FEC
	ldr r0, [r6, #0x13c]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r7
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	beq _02124FEC
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125060 ; =0x02126398
	add r1, r6, #0x124
	bl FUN_ov1_020dbefc
_02124FEC:
	ldr r7, _02125064 ; =0x020A8C40
	mov r8, #0x800
	mov r0, r5
	mov r1, r7
	mov r2, r8
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r8
	bl DC_FlushRange
	ldr r7, _02125068 ; =0x020A8440
	mov r0, r5
	mov r1, r7
	mov r2, r8
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r8
	bl DC_FlushRange
_02125030:
	str r4, [r6, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212503C: .word ov114_02126350
_02125040: .word ov114_0212635C
_02125044: .word ov114_02126368
_02125048: .word unk_020A0640
_0212504C: .word gUtilGame
_02125050: .word gLogicThink
_02125054: .word ov114_02126374
_02125058: .word ov114_02126380
_0212505C: .word ov114_0212638C
_02125060: .word ov114_02126398
_02125064: .word gSubScreen1
_02125068: .word gSubScreen0
	arm_func_end FUN_ov114_02124dc4

	arm_func_start FUN_ov114_0212506c
FUN_ov114_0212506c: ; 0x0212506C
	mov r1, r0
	ldr r0, [r1, #0x94]
	ldr r2, _02125084 ; =0x021261B0
	ldr r12, _02125088 ; = FUN_ov1_020dbfdc
	add r1, r1, #0x94
	bx r12
_02125084: .word ov114_021261B0
_02125088: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov114_0212506c

	arm_func_start FUN_ov114_0212508c
FUN_ov114_0212508c: ; 0x0212508C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x94
	mov r4, #0xc
_0212509C:
	mla r0, r6, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	add r6, r6, #1
	cmp r6, #0xf
	blt _0212509C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov114_0212508c

	arm_func_start FUN_ov114_021250b4
FUN_ov114_021250b4: ; 0x021250B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r6, #0
	ldr r7, _021258B0 ; =0x020A8C40
	cmp r0, #0
	ldr r5, _021258B4 ; =0x020A0640
	mov r8, #2
	mov r9, #1
	mov r10, r6
	beq _021250F8
	cmp r0, #1
	beq _0212532C
	cmp r0, #2
	beq _02125670
	b _02125898
_021250F8:
	ldr r0, [r4, #0xc4]
	sub r1, r10, #1
	mov r2, r8
	bl FUN_ov1_020dc13c
	ldr r0, [r4, #0x100]
	mov r1, r10
	mov r2, #3
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x10c]
	mov r2, #4
	bl FUN_ov1_020dc13c
	mov r6, r0
	mov r0, r10
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _02125150
	ldr r0, [r4, #0x118]
	mov r1, r6
	mov r2, #5
	bl FUN_ov1_020dc13c
	mov r6, r0
_02125150:
	mov r0, #1
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _02125170
	ldr r0, [r4, #0x124]
	mov r1, r6
	mov r2, #6
	bl FUN_ov1_020dc13c
_02125170:
	ldr r0, _021258B8 ; =0x0209A144
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	ldr r1, [r1, #0x18]
	mov r1, r1, lsr #5
	cmp r0, #0
	sub r6, r1, #1
	bne _0212519C
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	beq _0212522C
_0212519C:
	ldr r0, [r4, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _021251E4
	ldr r0, [r4, #0x54]
	mov r1, #0xf
	mov r2, #2
	bl FUN_ov16_020f2ea8
	ldr r0, [r4, #0x54]
	add r2, r6, #1
	mov r1, #0x3c
	mov r3, #0
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r6, r0
_021251E4:
	ldr r0, [r4, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0212522C
	ldr r0, [r4, #0x68]
	mov r1, #0xf
	mov r2, #2
	bl FUN_ov16_020f2ea8
	ldr r0, [r4, #0x68]
	add r2, r6, #1
	mov r1, #0x3c
	mov r3, #0
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r6, r0
_0212522C:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	ldrne r0, [r4, #0xf4]
	cmpne r0, #0
	beq _02125250
	add r1, r6, #1
	mov r2, #1
	bl _ZN8Graphics12SetupTilemapEPvii
	mov r6, r0
_02125250:
	ldr r0, [r4, #0xa0]
	mov r1, r6
	mov r2, r9
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0xac]
	mov r2, r9
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0xb8]
	mov r2, r9
	bl FUN_ov1_020dc13c
	mov r1, r0
	mov r5, #7
	ldr r0, [r4, #0xd0]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0xdc]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0xe8]
	mov r2, #8
	bl FUN_ov1_020dc13c
	mov r6, r0
	ldr r0, [r4, #0x2c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	cmpne r0, #0
	movne r1, r9
	cmp r1, #0
	beq _021252F0
	ldr r0, [r4, #0x2c]
	add r2, r6, #1
	mov r1, #0x58
	mov r3, #0
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	mov r6, r0
_021252F0:
	ldr r0, [r4, #0x40]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x44]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125324
	ldr r0, [r4, #0x40]
	add r2, r6, #1
	mov r1, #0x58
	mov r3, #0
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
_02125324:
	bl _ZN8Graphics16LoadBGPaletteSubEv
	b _02125898
_0212532C:
	ldr r1, [r4, #0xc4]
	mov r0, r10
	mov r2, r10
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	bl G2S_GetBG1CharPtr
	mov r6, #0x20
	mov r1, r0
	mov r0, r10
	mov r2, r6
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r6
	bl DC_FlushRange
	ldr r1, [r4, #0x100]
	mov r2, r6
	mov r0, r9
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r2, r0
	ldr r1, [r4, #0x10c]
	mov r0, r9
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
	mov r0, r10
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _021253A8
	ldr r1, [r4, #0x118]
	mov r0, r9
	mov r2, r6
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_021253A8:
	mov r0, r9
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _021253C8
	ldr r1, [r4, #0x124]
	mov r0, r9
	mov r2, r6
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
_021253C8:
	ldr r0, _021258B8 ; =0x0209A144
	mov r1, #0
	ldr r7, [r0]
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	add r0, r7, r0
	bl GXS_LoadBG2Char
	ldrb r0, [r5, #0x1a]
	ldr r6, [r7, #0x18]
	cmp r0, #0
	bne _02125400
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	beq _02125468
_02125400:
	ldr r0, [r4, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125434
	ldr r0, [r4, #0x58]
	mov r1, r6
	mov r2, #0x3c0
	bl GXS_LoadBG2Char
	add r6, r6, #0x3c0
_02125434:
	ldr r0, [r4, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125468
	ldr r0, [r4, #0x6c]
	mov r1, r6
	mov r2, #0x3c0
	bl GXS_LoadBG2Char
	add r6, r6, #0x3c0
_02125468:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _02125488
	ldr r1, [r4, #0xf4]
	mov r2, r6
	mov r0, #2
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
_02125488:
	ldr r1, [r4, #0xa0]
	mov r0, r8
	mov r2, r6
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r2, r0
	ldr r1, [r4, #0xac]
	mov r0, r8
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r2, r0
	ldr r1, [r4, #0xb8]
	mov r0, r8
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r2, r0
	ldr r1, [r4, #0xd0]
	mov r0, r8
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r2, r0
	ldr r1, [r4, #0xdc]
	mov r0, r8
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r2, r0
	ldr r1, [r4, #0xe8]
	mov r0, r8
	bl _ZN8Graphics14LoadBGXCharSubEiPvm
	mov r6, r0
	ldr r0, [r4, #0x2c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	ldr r7, [r4, #0xa0]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	strne r6, [r4, #0x34]
	ldr r0, [r4, #0x40]
	addne r6, r6, #0x580
	cmp r0, #0
	ldrne r0, [r4, #0x44]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	strne r6, [r4, #0x48]
	addne r6, r6, #0x580
	cmp r7, #0
	beq _02125568
	bl G2S_GetBG2CharPtr
	add r0, r6, r0
	str r0, [r4, #0x14]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG2Char
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_02125568:
	ldr r7, [r4, #0xac]
	cmp r7, #0
	beq _0212559C
	bl G2S_GetBG2CharPtr
	add r0, r6, r0
	str r0, [r4, #0x18]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG2Char
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_0212559C:
	ldr r7, [r4, #0xb8]
	cmp r7, #0
	beq _021255D0
	bl G2S_GetBG2CharPtr
	add r0, r6, r0
	str r0, [r4, #0x1c]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG2Char
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_021255D0:
	ldr r7, [r4, #0xd0]
	cmp r7, #0
	beq _02125604
	bl G2S_GetBG2CharPtr
	add r0, r6, r0
	str r0, [r4, #0x20]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG2Char
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_02125604:
	ldr r7, [r4, #0xdc]
	cmp r7, #0
	beq _02125638
	bl G2S_GetBG2CharPtr
	add r0, r6, r0
	str r0, [r4, #0x24]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG2Char
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_02125638:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	ldrne r7, [r4, #0xf4]
	cmpne r7, #0
	beq _02125898
	bl G2S_GetBG2CharPtr
	add r0, r6, r0
	str r0, [r4, #0x28]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl GXS_LoadBG2Char
	b _02125898
_02125670:
	ldr r3, [r4, #0xc4]
	cmp r3, #0
	beq _02125690
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r10
	add r0, r3, r0
	bl GXS_LoadBG0Scr
_02125690:
	ldr r2, [r4, #0x100]
	cmp r2, #0
	beq _021256C0
	ldr r0, [r2, #0xc]
	mov r1, #4
	add r0, r2, r0
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #5
	str r7, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_021256C0:
	ldr r2, [r4, #0x10c]
	cmp r2, #0
	beq _021256F0
	ldr r0, [r2, #0xc]
	mov r1, #4
	add r0, r2, r0
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #0x17
	str r7, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_021256F0:
	mov r0, r6
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _02125730
	ldr r1, [r4, #0x118]
	cmp r1, #0
	beq _02125730
	ldr r0, [r1, #0xc]
	mov r2, #0xf
	add r0, r1, r0
	str r0, [sp]
	mov r0, r6
	mov r1, #9
	mov r3, #2
	str r7, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_02125730:
	mov r0, #1
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _02125770
	ldr r1, [r4, #0x124]
	cmp r1, #0
	beq _02125770
	ldr r0, [r1, #0xc]
	mov r2, #0xf
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x11
	mov r1, #9
	mov r3, #2
	str r7, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_02125770:
	mov r6, #0x800
	mov r0, r7
	mov r1, r6
	bl DC_FlushRange
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl GXS_LoadBG1Scr
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _021257A8
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	beq _02125870
_021257A8:
	ldr r0, [r4, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _021257EC
	ldr r0, [r4, #0x54]
	ldr r5, _021258BC ; =0x020A8440
	str r0, [sp]
	mov r0, #0
	mov r1, #9
	mov r2, #0xf
	mov r3, #2
	str r5, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_021257EC:
	ldr r0, [r4, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125830
	ldr r0, [r4, #0x68]
	ldr r5, _021258BC ; =0x020A8440
	str r0, [sp]
	mov r0, #0x11
	mov r1, #9
	mov r2, #0xf
	mov r3, #2
	str r5, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_02125830:
	ldr r7, [r4, #0xe8]
	cmp r7, #0
	beq _02125870
	bl FUN_ov16_020f081c
	ldr r1, [r7, #0xc]
	cmp r0, #0
	moveq r0, #2
	add r1, r7, r1
	str r1, [sp]
	ldr r5, _021258BC ; =0x020A8440
	movne r0, #0x18
	mov r1, #1
	mov r2, #6
	mov r3, #2
	str r5, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_02125870:
	ldr r6, _021258BC ; =0x020A8440
	mov r5, #0x800
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	mov r2, r5
	mov r1, #0
	bl GXS_LoadBG2Scr
	mov r10, #1
_02125898:
	ldr r1, [r4, #0x10]
	mov r0, r10
	add r1, r1, #1
	str r1, [r4, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021258B0: .word gSubScreen1
_021258B4: .word unk_020A0640
_021258B8: .word gDebugFont
_021258BC: .word gSubScreen0
	arm_func_end FUN_ov114_021250b4

	arm_func_start FUN_ov114_021258c0
FUN_ov114_021258c0: ; 0x021258C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r4, #0x3c]
	cmpne r0, #0
	beq _02125908
	ldr r0, [r4, #0x30]
	mov r3, #0
	ldr r1, [r4, #0x34]
	mov r2, #0x580
	strb r3, [r4, #0x3c]
	bl GXS_LoadBG2Char
_02125908:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldrne r0, [r4, #0x44]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r4, #0x50]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x44]
	mov r3, #0
	ldr r1, [r4, #0x48]
	mov r2, #0x580
	strb r3, [r4, #0x50]
	bl GXS_LoadBG2Char
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov114_021258c0

	arm_func_start FUN_ov114_0212594c
FUN_ov114_0212594c: ; 0x0212594C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [r7, #0x18]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mov r4, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _021259E8 ; =0x020A8440
	mov r8, #2
	b _021259D4
_02125980:
	ldrsb r0, [r4]
	cmp r0, #0x30
	blt _021259A0
	cmp r0, #0x39
	ldrle r1, [r7, #0x18]
	suble r0, r0, #0x30
	addle r0, r1, r0, lsl #3
	ble _021259B0
_021259A0:
	ldrsb r0, [r4]
	cmp r0, #0x3a
	ldr r0, [r7, #0x18]
	addeq r0, r0, #0x50
_021259B0:
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r8
	str r9, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
	add r4, r4, #1
	add r6, r6, #2
_021259D4:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _02125980
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021259E8: .word gSubScreen0
	arm_func_end FUN_ov114_0212594c

	arm_func_start FUN_ov114_021259ec
FUN_ov114_021259ec: ; 0x021259EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r0, [r10, #0x1c]
	ldr r6, _02125ACC ; =0x020A8440
	cmp r0, #0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r6, r8, lsl #6
	add r4, r0, r9, lsl #1
	mov r5, #6
	mov r11, #0
	b _02125A44
_02125A2C:
	mov r0, r11
	mov r1, r4
	mov r2, #0x16
	bl MIi_CpuClear16
	sub r5, r5, #1
	add r4, r4, #0x40
_02125A44:
	cmp r5, #0
	bgt _02125A2C
	cmp r7, #0x63
	movgt r7, #0x63
	add r9, r9, #6
	cmp r7, #0xa
	ldr r5, _02125AD0 ; =0x66666667
	sublt r9, r9, #3
	mov r11, #0xa
	mov r4, #0x1e
_02125A6C:
	smull r1, r2, r5, r7
	mov r0, r7, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	sub r2, r7, r0
	mul r1, r2, r4
	ldr r2, [r10, #0x1c]
	mov r0, r9
	add r1, r2, r1, lsl #1
	str r1, [sp]
	mov r1, r8
	mov r2, #5
	mov r3, #6
	str r6, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
	mov r1, r7
	smull r0, r7, r5, r1
	mov r0, r1, lsr #0x1f
	add r7, r0, r7, asr #2
	cmp r7, #0
	sub r9, r9, #6
	bgt _02125A6C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125ACC: .word gSubScreen0
_02125AD0: .word 0x66666667
	arm_func_end FUN_ov114_021259ec

	arm_func_start FUN_ov114_02125ad4
FUN_ov114_02125ad4: ; 0x02125AD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr lr, [r7, #0x20]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp lr, #0
	beq _02125B24
	ldr r0, [sp, #0x20]
	ldr r12, _02125B74 ; =0x020A8440
	rsb r0, r0, r0, lsl #4
	add r0, lr, r0, lsl #2
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, #0xf
	mov r3, #2
	str r12, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_02125B24:
	cmp r4, #7
	addge sp, sp, #8
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x20]
	mov r2, #8
	cmp r0, #0
	rsbeq r1, r4, #6
	rsbne r1, r4, #0xd
	ldr r0, [r7, #0x24]
	addeq r6, r6, #7
	add r0, r0, r1, lsl #4
	str r0, [sp]
	ldr r4, _02125B74 ; =0x020A8440
	mov r0, r6
	mov r1, r5
	mov r3, #1
	str r4, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125B74: .word gSubScreen0
	arm_func_end FUN_ov114_02125ad4

	arm_func_start FUN_ov114_02125b78
FUN_ov114_02125b78: ; 0x02125B78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r10, r1
	ldr r5, _02125CB8 ; 0x02099EF0
	mov r8, r3
	add r1, r4, #0x2c
	mov r0, #0x14
	mla r7, r8, r0, r1
	ldr r0, [r5]
	mov r1, r8
	mov r9, r2
	bl FUN_ov132_02144f90
	movs r6, r0
	ldreq r0, _02125CBC ; =0x020E9485
	ldreqb r0, [r0, r8]
	cmpeq r0, #0
	bne _02125C70
	mov r0, #0
	ldr r1, _02125CC0 ; =0x020A8440
	str r0, [sp]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, #0x13
	mov r2, #0xf
	mov r3, #2
	bl _ZN8Graphics10ScreenFillEiiiitPt
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov132_02143a34
	add r1, r8, #4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x7c]
	mov r6, r0
	cmp r6, r1
	bne _02125C18
	ldr r0, [r5]
	bl FUN_ov132_02143c9c
	cmp r0, #0
	beq _02125C44
_02125C18:
	add r0, r8, #4
	add r3, r4, r0, lsl #2
	mov r0, r4
	mov r1, r7
	mov r2, r8
	str r6, [r3, #0x7c]
	bl FUN_ov114_02124d00
	ldr r0, _02125CB8 ; 0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_02143c94
_02125C44:
	ldr r1, [r7]
	ldr r0, _02125CC0 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r7, #0xc]
	ldrh r3, [r7, #0xe]
	mov r0, r9
	mov r1, #0x13
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125C70:
	mov r1, #0
	ldr r0, _02125CC0 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	mov r5, #0x13
	ldrh r2, [r7, #0xc]
	ldrh r3, [r7, #0xe]
	mov r0, r9
	mov r1, r5
	bl _ZN8Graphics10ScreenFillEiiiitPt
	mov r0, r4
	mov r1, r10
	mov r2, r5
	mov r3, r6
	str r8, [sp]
	bl FUN_ov114_02125ad4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125CB8: .word gUtilGame
_02125CBC: .word ov1_020E9485
_02125CC0: .word gSubScreen0
	arm_func_end FUN_ov114_02125b78

	arm_func_start FUN_ov114_02125cc4
FUN_ov114_02125cc4: ; 0x02125CC4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	ldr r4, _02125EB4 ; =0x020A0640
	mov r6, r0
	ldr r2, [r4]
	ldr r0, _02125EB8 ; =0x88888889
	ldr r1, [r6, #0x7c]
	umull r0, r12, r2, r0
	mov r12, r12, lsr #4
	cmp r1, r12
	beq _02125D50
	ldr r0, _02125EBC ; =0x0000176F
	ldr r1, _02125EB8 ; =0x88888889
	str r12, [r6, #0x7c]
	cmp r12, r0
	movgt r12, r0
	smull r0, r3, r1, r12
	smull r0, r2, r1, r12
	mov lr, r12, lsr #0x1f
	add r3, r12, r3
	add r3, lr, r3, asr #5
	mov r1, #0x3c
	smull r3, r0, r1, r3
	add r5, sp, #8
	add r2, r12, r2
	ldr r1, _02125EC0 ; =0x021263A4
	mov r0, r5
	add r2, lr, r2, asr #5
	sub r3, r12, r3
	bl sprintf
	mov r0, r6
	mov r3, r5
	mov r1, #0xb
	mov r2, #2
	bl FUN_ov114_0212594c
_02125D50:
	ldrb r0, [r4, #0x8f]
	cmp r0, #2
	movls r1, #1
	bls _02125DC0
	cmp r0, #3
	blo _02125D74
	cmp r0, #5
	movls r1, #2
	bls _02125DC0
_02125D74:
	ldrb r0, [r4, #0x8f]
	cmp r0, #6
	blo _02125D8C
	cmp r0, #8
	movls r1, #3
	bls _02125DC0
_02125D8C:
	ldrb r0, [r4, #0x8f]
	cmp r0, #9
	blo _02125DA4
	cmp r0, #0xb
	movls r1, #4
	bls _02125DC0
_02125DA4:
	ldrb r0, [r4, #0x8f]
	cmp r0, #0xc
	blo _02125DBC
	cmp r0, #0xe
	movls r1, #5
	bls _02125DC0
_02125DBC:
	mvn r1, #0
_02125DC0:
	ldr r0, [r6, #0x80]
	sub r3, r1, #1
	cmp r0, r3
	ldrne r1, [r6, #0x14]
	strne r3, [r6, #0x80]
	cmpne r1, #0
	beq _02125E04
	mov r2, #6
	mul r0, r3, r2
	add r0, r1, r0, lsl #2
	ldr r4, _02125EC4 ; =0x020A8440
	str r0, [sp]
	mov r0, #0xd
	mov r1, #0
	mov r3, #2
	str r4, [sp, #4]
	bl _ZN8Graphics10ScreenCopyEiiiiPtS0_
_02125E04:
	ldr r0, _02125EC8 ; 0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_02143c28
	ldr r1, [r6, #0x84]
	mov r3, r0
	cmp r1, r3
	beq _02125E38
	mov r0, r6
	mov r1, #2
	mov r2, #0xc
	str r3, [r6, #0x84]
	bl FUN_ov114_021259ec
_02125E38:
	ldr r0, _02125EC8 ; 0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov132_02143c28
	ldr r1, [r6, #0x88]
	mov r3, r0
	cmp r1, r3
	beq _02125E6C
	mov r0, r6
	mov r1, #0x13
	mov r2, #0xc
	str r3, [r6, #0x88]
	bl FUN_ov114_021259ec
_02125E6C:
	mov r4, #0
	mov r0, r6
	mov r1, r4
	mov r3, r4
	mov r2, #2
	bl FUN_ov114_02125b78
	mov r0, r6
	mov r1, #0x11
	mov r2, #0x13
	mov r3, #1
	bl FUN_ov114_02125b78
	ldr r2, [r6, #0x28]
	ldr r3, _02125EC4 ; =0x020A8440
	mov r1, r4
	mov r0, #0x1e
	bl FUN_ov1_020dbccc
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, pc}
_02125EB4: .word unk_020A0640
_02125EB8: .word 0x88888889
_02125EBC: .word 0x0000176F
_02125EC0: .word ov114_021263A4
_02125EC4: .word gSubScreen0
_02125EC8: .word gUtilGame
	arm_func_end FUN_ov114_02125cc4

	arm_func_start FUN_ov114_02125ecc
FUN_ov114_02125ecc: ; 0x02125ECC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #8]
	mvn r1, #0
	b _02125EF0
_02125EE4:
	add r0, r4, r2, lsl #2
	str r1, [r0, #0x7c]
	add r2, r2, #1
_02125EF0:
	cmp r2, #6
	blt _02125EE4
	mov r2, #0
	add r0, r4, #0x2c
	mov r1, #4
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	bl FUN_ov16_020f2f7c
	ldr r0, _02125FB4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02125F3C
	bl FUN_ov16_020f068c ; may be ov17 ; ov16(Mica)
	cmp r0, #0
	beq _02125F7C
_02125F3C:
	mov r0, #0
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _02125F5C
	add r0, r4, #0x54
	mov r1, #0xf
	mov r2, #2
	bl FUN_ov16_020f2fa8
_02125F5C:
	mov r0, #1
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _02125F7C
	add r0, r4, #0x68
	mov r1, #0xf
	mov r2, #2
	bl FUN_ov16_020f2fa8
_02125F7C:
	mov r6, #0xb
	mov r5, #4
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x2c
	bl FUN_ov16_020f2fa8
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x40
	bl FUN_ov16_020f2fa8
	mov r0, r4
	mov r1, #1
	bl FUN_ov114_02124dc4
	ldmfd sp!, {r4, r5, r6, pc}
_02125FB4: .word unk_020A0640
	arm_func_end FUN_ov114_02125ecc

	arm_func_start FUN_ov114_02125fb8
FUN_ov114_02125fb8: ; 0x02125FB8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x3d
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _02125FE8
	cmp r0, #3
	beq _02126040
	ldmfd sp!, {r4, pc}
_02125FE8:
	add r0, r4, #0x94
	mov r1, #0xf
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02126014
	cmp r0, #2
	beq _02126024
	ldmfd sp!, {r4, pc}
_02126014:
	mov r0, r4
	mov r1, #2
	bl FUN_ov114_02124dc4
	ldmfd sp!, {r4, pc}
_02126024:
	mov r0, r4
	bl FUN_ov114_0212506c
	mov r1, #2
	mov r0, #0
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_02126040:
	mov r0, r4
	bl FUN_ov114_02125cc4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov114_02125fb8

	arm_func_start FUN_ov114_0212604c
FUN_ov114_0212604c: ; 0x0212604C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x3d
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _0212607C
	cmp r0, #3
	beq _02126108
	ldmfd sp!, {r3, r4, r5, pc}
_0212607C:
	mov r0, r4
	bl FUN_ov114_021250b4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov114_0212508c
	ldr r0, _02126138 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021260EC
	ldr r2, _0212613C ; =0x04001040
	ldr r1, _02126140 ; =0x0000F0FF
	mov r0, #0xf
	strh r1, [r2]
	strh r0, [r2, #4]
	sub r1, r2, #0x40
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldrh r0, [r2, #8]
	bic r0, r0, #0x3f
	orr r0, r0, #0xf
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	bic r0, r0, #0x3f
	orr r0, r0, #0x2f
	strh r0, [r2, #0xa]
_021260EC:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02126108:
	mov r0, r4
	bl FUN_ov114_021258c0
	ldr r5, _02126144 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl GXS_LoadBG2Scr
	ldmfd sp!, {r3, r4, r5, pc}
_02126138: .word unk_020A0640
_0212613C: .word 0x04001040
_02126140: .word 0x0000F0FF
_02126144: .word gSubScreen0
	arm_func_end FUN_ov114_0212604c

	arm_func_start FUN_ov114_02126148
FUN_ov114_02126148: ; 0x02126148
	stmfd sp!, {r4, lr}
	ldr r1, _02126190 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	ldrne r1, _02126194 ; =0x04001000
	ldrne r0, [r1]
	bicne r0, r0, #0xe000
	strne r0, [r1]
	add r0, r4, #0x94
	mov r1, #0xf
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r4
	bl FUN_ov114_0212508c
	add r0, r4, #0x2c
	mov r1, #4
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r4, pc}
_02126190: .word unk_020A0640
_02126194: .word 0x04001000
	arm_func_end FUN_ov114_02126148

	arm_func_start FUN_ov114_02126198
FUN_ov114_02126198: ; 0x02126198
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov114_02126198

	arm_func_start FUN_ov114_021261ac
FUN_ov114_021261ac: ; 0x021261AC
	bx lr
	arm_func_end FUN_ov114_021261ac

	.rodata
	.global ov114_021261B0
ov114_021261B0:
	.word ov114_02126290
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov114_021262A8
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov114_021262B4
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov114_02126278
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov114_02126284
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov114_0212629C
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov114_021262C0
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov114_021262CC
	.byte 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov114_021261f8
FUN_ov114_021261f8: ; 0x021261F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02126240 ; =0x02126260
	str r0, [r4, #4]
	ldr r0, _02126244 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02126248 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02126240: .word ov114_02126260
_02126244: .word 0x00009CCD
_02126248: .word 0x0000EA3C
	arm_func_end FUN_ov114_021261f8

	.section .sinit, 4
ov114_0212624C:
	.word FUN_ov114_021261f8

	.data
	.global ov114_02126260
ov114_02126260:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov114_02126278
ov114_02126278:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x62, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov114_02126284
ov114_02126284:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x62, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov114_02126290
ov114_02126290:
	.byte 0x6D, 0x63, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov114_0212629C
ov114_0212629C:
	.byte 0x6D, 0x67, 0x75, 0x5F
	.byte 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov114_021262A8
ov114_021262A8:
	.byte 0x6D, 0x63, 0x75, 0x5F, 0x74, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00
	.global ov114_021262B4
ov114_021262B4:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x73, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov114_021262C0
ov114_021262C0:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00
	.global ov114_021262CC
ov114_021262CC:
	.byte 0x77, 0x63, 0x5F, 0x6C
	.byte 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov114_021262E4
ov114_021262E4:
	.word FUN_ov114_021261ac
	.word FUN_ov114_02126198
	.word _ZN15CommonSubScreen10updateKeysEtt
	.word _ZN15CommonSubScreen8updateTPEP6TPData
	.word FUN_ov114_02125ecc
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov114_02125fb8
	.word FUN_ov114_0212604c
	.word FUN_ov114_02126148
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN15CommonSubScreen9fadeResetEv
	.word _ZN15CommonSubScreen10fadeUpdateEv
	.word _ZN15CommonSubScreen8blackOutEv
	.word _ZN15CommonSubScreen8whiteOutEv
	.word _ZN15CommonSubScreen6fadeInEv
	.word _ZN15CommonSubScreen9fadeBlackEv
	.word _ZN15CommonSubScreen9fadeWhiteEv
	.word _ZN15CommonSubScreen8isFadingEv
	.word _ZN15CommonSubScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov114_02126350
ov114_02126350:
	.byte 0x53, 0x50, 0x53, 0x41, 0x63, 0x74, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov114_0212635C
ov114_0212635C:
	.byte 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00
	.global ov114_02126368
ov114_02126368:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x64, 0x2E, 0x70
	.byte 0x6B, 0x68, 0x00, 0x00
	.global ov114_02126374
ov114_02126374:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov114_02126380
ov114_02126380:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x64, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov114_0212638C
ov114_0212638C:
	.byte 0x6D, 0x67, 0x75, 0x5F
	.byte 0x74, 0x75, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00
	.global ov114_02126398
ov114_02126398:
	.byte 0x6D, 0x67, 0x75, 0x5F, 0x74, 0x64, 0x2E, 0x70
	.byte 0x6B, 0x62, 0x00, 0x00
	.global ov114_021263A4
ov114_021263A4:
	.byte 0x25, 0x30, 0x32, 0x64, 0x3A, 0x25, 0x30, 0x32, 0x64, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

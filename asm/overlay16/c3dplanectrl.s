.public DC_FlushRange
.public FUN_02053a5c
.public FUN_02058644
.public FUN_0205866c
.public FUN_02059004
.public FUN_020597a0
.public FUN_02059838
.public FUN_02059aa0
.public FUN_02059bb4
.public FUN_ov16_020efee8
.public FX_Div
.public FX_SinCosTable_
.public FX_Sqrt
.public MI_CpuCopy8
.public MIi_CpuClearFast
.public MTX_Inverse43
.public MTX_RotZ43_
.public NNS_G3dGeBufferOP_N
.public NNS_G3dGlbFlushP
.public NNS_G3dGlb_cameraMtx
.public PAC_GetPtr
.public _ZN10C3DSprFile14getSpriteSheetEi
.public _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
.public _ZN10CAllocator10deallocateEPv
.public _ZN10CAllocator8allocateEm
.public _ZN11C3DSprSheet6isIdleEv
.public _fadd
.public _ffix
.public _fflt
.public _fsub
.public _s32_div_f
.public _u32_div_f
.public gAllocator

	.include "/macros/function.inc"

	.text
	arm_func_start _ZN12C3DPlaneCtrl18FUN_ov16__021113ccEi
_ZN12C3DPlaneCtrl18FUN_ov16__021113ccEi: ; 0x021113CC
	stmfd sp!, {r3, lr}
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #4]
	mov r1, #0
	bl PAC_GetPtr
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl18FUN_ov16__021113ccEi

	arm_func_start _ZN12C3DPlaneCtrl18FUN_ov16__021113f0Ei
_ZN12C3DPlaneCtrl18FUN_ov16__021113f0Ei: ; 0x021113F0
	stmfd sp!, {r3, lr}
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #4]
	mov r1, #1
	bl PAC_GetPtr
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl18FUN_ov16__021113f0Ei

	arm_func_start _ZN12C3DPlaneCtrl18FUN_ov16__02111414Ei
_ZN12C3DPlaneCtrl18FUN_ov16__02111414Ei: ; 0x02111414
	stmfd sp!, {r3, lr}
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #4]
	mov r1, #2
	bl PAC_GetPtr
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl18FUN_ov16__02111414Ei

	arm_func_start _ZN12C3DPlaneCtrl11getTexWidthEi
_ZN12C3DPlaneCtrl11getTexWidthEi: ; 0x02111438
	stmfd sp!, {r3, lr}
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r0, #0
	ldrneb r0, [r0, #0x12]
	movne r1, #8
	movne r0, r1, lsl r0
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl11getTexWidthEi

	arm_func_start _ZN12C3DPlaneCtrl12getTexHeightEi
_ZN12C3DPlaneCtrl12getTexHeightEi: ; 0x02111458
	stmfd sp!, {r3, lr}
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r0, #0
	ldrneb r0, [r0, #0x13]
	movne r1, #8
	movne r0, r1, lsl r0
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl12getTexHeightEi

	arm_func_start _ZN12C3DPlaneCtrl18getResKeyAddressesEP11C3DSprSheetPmS2_
_ZN12C3DPlaneCtrl18getResKeyAddressesEP11C3DSprSheetPmS2_: ; 0x02111478
	ldr r12, _02111480 ; =_ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
	bx r12
_02111480: .word _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
	arm_func_end _ZN12C3DPlaneCtrl18getResKeyAddressesEP11C3DSprSheetPmS2_

	arm_func_start _ZN12C3DPlaneCtrl6isFreeEP11S3DPlaneSet
_ZN12C3DPlaneCtrl6isFreeEP11S3DPlaneSet: ; 0x02111484
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrh r0, [r1, #4]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl6isFreeEP11S3DPlaneSet

	arm_func_start _ZN12C3DPlaneCtrl7getFreeEv
_ZN12C3DPlaneCtrl7getFreeEv: ; 0x021114A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	mov r5, #0
	cmp r1, #0
	ldrne r0, [r4, #0x20]
	cmpne r0, #0
	movle r1, #0
	ble _021114D0
	cmp r0, #1
	movlt r1, r5
_021114D0:
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	mov r6, #1
	cmp r0, #1
	ble _02111544
_021114EC:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	cmpne r0, #0
	movle r1, r5
	ble _02111520
	cmp r6, #0
	ble _02111510
	cmp r6, r0
	ble _02111518
_02111510:
	mov r1, r5
	b _02111520
_02111518:
	sub r0, r6, #1
	add r1, r1, r0, lsl #5
_02111520:
	mov r0, r4
	bl _ZN12C3DPlaneCtrl6isFreeEP11S3DPlaneSet
	cmp r0, #0
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x20]
	add r6, r6, #1
	cmp r6, r0
	blt _021114EC
_02111544:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end _ZN12C3DPlaneCtrl7getFreeEv

	arm_func_start _ZN12C3DPlaneCtrl10insertNodeEPP11S3DPlaneSetS2_S1_
_ZN12C3DPlaneCtrl10insertNodeEPP11S3DPlaneSetS2_S1_: ; 0x0211154C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r1]
	cmp r4, #0
	ldrne r5, [r2]
	cmpne r5, #0
	streq r3, [r1]
	streq r3, [r2]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r12, r4
	cmp r4, #0
	beq _02111594
	ldrb lr, [r3, #0x16]
_0211157C:
	ldrb r0, [r12, #0x16]
	cmp lr, r0
	bhi _02111594
	ldr r12, [r12, #0x1c]
	cmp r12, #0
	bne _0211157C
_02111594:
	cmp r12, #0
	bne _021115B8
	str r3, [r5, #0x1c]
	mov r0, #0
	str r0, [r3, #0x1c]
	ldr r0, [r2]
	str r0, [r3, #0x18]
	str r3, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_021115B8:
	cmp r12, r4
	streq r3, [r1]
	str r12, [r3, #0x1c]
	ldr r0, [r12, #0x18]
	str r0, [r3, #0x18]
	str r3, [r12, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN12C3DPlaneCtrl10insertNodeEPP11S3DPlaneSetS2_S1_

	arm_func_start _ZN12C3DPlaneCtrl10removeNodeEPP11S3DPlaneSetS2_S1_
_ZN12C3DPlaneCtrl10removeNodeEPP11S3DPlaneSetS2_S1_: ; 0x021115D4
	ldr r0, [r1]
	cmp r3, r0
	ldreq r0, [r3, #0x1c]
	streq r0, [r1]
	ldr r0, [r2]
	cmp r3, r0
	ldreq r0, [r3, #0x18]
	streq r0, [r2]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	ldrne r0, [r3, #0x1c]
	strne r0, [r1, #0x1c]
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	ldrne r0, [r3, #0x18]
	strne r0, [r1, #0x18]
	mov r0, #0
	str r0, [r3, #0x18]
	str r0, [r3, #0x1c]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl10removeNodeEPP11S3DPlaneSetS2_S1_

	arm_func_start _ZN12C3DPlaneCtrl14uploadMaterialEv
_ZN12C3DPlaneCtrl14uploadMaterialEv: ; 0x02111624
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _02111668 ; =0x2108DAD6
	mov r4, #1
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x30
	str r3, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	ldr r3, _0211166C ; =0x2108FFFF
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x31
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02111668: .word 0x2108DAD6
_0211166C: .word 0x2108FFFF
	arm_func_end _ZN12C3DPlaneCtrl14uploadMaterialEv

	arm_func_start _ZN12C3DPlaneCtrl11uploadColorEP11S3DPlaneSetP12S3DPlanePart
_ZN12C3DPlaneCtrl11uploadColorEP11S3DPlaneSetP12S3DPlanePart: ; 0x02111670
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r4, r2
	ldrh r0, [r4, #2]
	mov r5, r1
	tst r0, #0x4000
	bne _02111698
	ldrh r0, [r5, #4]
	tst r0, #0x4000
	beq _021116B4
_02111698:
	mov r3, #0x10
	add r1, sp, #8
	mov r0, #0x20
	mov r2, #1
	str r3, [sp, #8]
	mov r6, #2
	b _021116D4
_021116B4:
	ldrh r3, [r5, #0x14]
	ldrh r2, [r4, #6]
	add r1, sp, #4
	mov r0, #0x20
	and r3, r3, r2
	mov r2, #1
	str r3, [sp, #4]
	mov r6, #0
_021116D4:
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #4]
	ldrb r2, [r5, #7]
	ldrb r1, [r4, #5]
	cmp r2, r0
	movhs r2, r0
	mov r0, r6, lsl #4
	orr r0, r0, #0x80
	orr r0, r0, r1, lsl #24
	orr r3, r0, r2, lsl #16
	add r1, sp, #0
	mov r0, #0x29
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end _ZN12C3DPlaneCtrl11uploadColorEP11S3DPlaneSetP12S3DPlanePart

	arm_func_start _ZN12C3DPlaneCtrl13uploadTextureEP11S3DPlaneSetP12S3DPlanePart
_ZN12C3DPlaneCtrl13uploadTextureEP11S3DPlaneSetP12S3DPlanePart: ; 0x02111718
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, r2
	mov r9, r1
	ldrb r1, [r8]
	mov r10, r0
	mov r11, #0
	bl _ZN10C3DSprFile14getSpriteSheetEi
	mov r6, r0
	ldrb r1, [r8, #1]
	mov r0, r10
	bl _ZN10C3DSprFile14getSpriteSheetEi
	ldrh r1, [r8, #2]
	mov r5, #0
	mov r7, r0
	tst r1, #0x40
	movne r4, r11
	moveq r4, #1
	tst r1, #4
	andne r0, r5, #0xff
	orrne r5, r0, #1
	tst r1, #8
	andne r0, r5, #0xff
	orrne r5, r0, #2
	ldrh r0, [r9, #4]
	mov r9, #1
	tst r0, #0x8000
	bne _02111790
	tst r1, #0x8000
	beq _021117B8
_02111790:
	add r1, sp, #0xc
	mov r2, r9
	mov r0, #0x2b
	str r11, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x10
	mov r2, r9
	mov r0, #0x2a
	str r11, [sp, #0x10]
	b _02111908
_021117B8:
	mov r9, #0
	add r2, sp, #0x18
	mov r0, r10
	mov r1, r6
	mov r3, r9
	bl _ZN12C3DPlaneCtrl18getResKeyAddressesEP11C3DSprSheetPmS2_
	cmp r0, #0
	beq _021117F4
	add r3, sp, #0x14
	mov r0, r10
	mov r1, r7
	mov r2, r9
	bl _ZN12C3DPlaneCtrl18getResKeyAddressesEP11C3DSprSheetPmS2_
	cmp r0, #0
	bne _02111800
_021117F4:
	add sp, sp, #0x1c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02111800:
	cmp r7, #0
	mov r11, #1
	beq _02111854
	add r2, sp, #8
	mov r0, r10
	mov r1, r7
	bl FUN_02059aa0
	cmp r0, #0
	beq _02111854
	cmp r7, #0
	beq _02111844
	ldrb r0, [r7, #0x14]
	cmp r0, #3
	moveq r9, #0x20
	beq _02111844
	cmp r0, #4
	moveq r9, #0x200
_02111844:
	ldr r0, [sp, #8]
	mov r1, r9
	bl _u32_div_f
	mov r9, r0
_02111854:
	ldrb r1, [r8, #0x34]
	and r0, r9, #0xff
	cmp r1, r0
	movhi r1, #0
	cmp r7, #0
	and r1, r1, #0xff
	moveq r2, #0
	beq _02111890
	ldrb r0, [r7, #0x14]
	cmp r0, #3
	moveq r2, #0x20
	beq _02111890
	mov r2, #0x200
	cmp r0, #4
	movne r2, #0
_02111890:
	ldr r0, [sp, #0x14]
	mla r1, r2, r1, r0
	str r1, [sp, #0x14]
	ldrb r0, [r6, #0x14]
	mov r2, r11
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r0, r1, lsr r0
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, #0x2b
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r6, #0x14]
	ldr r1, [sp, #0x18]
	ldrb r2, [r6, #0x12]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r1, lsr #3
	orr r0, r0, #0x40000000
	orr r0, r0, r2, lsl #20
	ldrb r3, [r6, #0x13]
	add r1, sp, #0
	mov r2, r11
	orr r0, r0, r3, lsl #23
	orr r0, r0, #0x30000
	orr r0, r0, r5, lsl #18
	orr r3, r0, r4, lsl #29
	mov r0, #0x2a
	str r3, [sp]
_02111908:
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl13uploadTextureEP11S3DPlaneSetP12S3DPlanePart

	arm_func_start _ZN12C3DPlaneCtrl12uploadMatrixEP11S3DPlaneSetP12S3DPlanePartb
_ZN12C3DPlaneCtrl12uploadMatrixEP11S3DPlaneSetP12S3DPlanePartb: ; 0x02111918
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x74
	mov r6, r2
	mov r7, r1
	mov r1, r6
	mov r5, r3
	bl _ZN12C3DPlaneCtrl13updateAnchorsEP12S3DPlanePart
	ldr r8, [r7, #0xc]
	ldr r0, [r6, #0x20]
	ldr r2, [r7, #8]
	ldr r1, [r6, #0x1c]
	ldrh r4, [r6, #0x14]
	ldr lr, [r7, #0x10]
	ldr r12, [r6, #0x24]
	ldr r3, [r6, #0x54]
	add r7, r8, r0
	ldr r0, [r6, #0x50]
	add r1, r2, r1
	add r8, lr, r12
	sub r2, r7, r3
	sub r0, r1, r0
	str r0, [sp, #0x68]
	str r2, [sp, #0x6c]
	str r8, [sp, #0x70]
	cmp r5, #0
	beq _02111B08
	ldrh r0, [r6, #2]
	tst r0, #0x1000
	beq _02111AB4
	tst r0, #0x2000
	beq _02111A18
	ldrsh r1, [r6, #0xa]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	add r0, r1, r0, asr #12
	bl FUN_02053a5c
	cmp r0, #0
	ble _021119E0
	ldr r2, [sp, #0x6c]
	ldrsh r1, [r6, #0xa]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	add r0, r1, r0, asr #12
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111A08
_021119E0:
	ldr r2, [sp, #0x6c]
	ldrsh r1, [r6, #0xa]
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	add r0, r1, r0, asr #12
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111A08:
	bl _ffix
	ldr r1, [sp, #0x70]
	sub r0, r1, r0
	str r0, [sp, #0x70]
_02111A18:
	ldr r3, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	mov r0, r3, asr #0xb
	add r0, r3, r0, lsr #20
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	add r2, sp, #4
	add r3, sp, #0
	mov r0, r0, asr #0xc
	mov r1, r1, asr #0xc
	bl FUN_ov16_020efee8
	ldr r0, [sp, #4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02111A68
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111A74
_02111A68:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111A74:
	bl _ffix
	ldr r1, [sp]
	str r0, [sp, #0x68]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _02111AA0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111AAC
_02111AA0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111AAC:
	bl _ffix
	str r0, [sp, #0x6c]
_02111AB4:
	mov r1, r4, lsr #0x1f
	rsb r0, r1, r4, lsl #18
	adds r0, r1, r0, ror #18
	bne _02111AFC
	ldr r2, [sp, #0x68]
	cmp r2, #0xff000
	ldrlt r1, [sp, #0x6c]
	cmplt r1, #0xbf000
	bge _02111AF0
	ldr r0, [r6, #0x38]
	adds r0, r2, r0
	bmi _02111AF0
	ldr r0, [r6, #0x3c]
	adds r0, r1, r0
	bpl _02111AFC
_02111AF0:
	add sp, sp, #0x74
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02111AFC:
	ldr r0, [sp, #0x6c]
	rsb r0, r0, #0
	str r0, [sp, #0x6c]
_02111B08:
	add r1, sp, #0x68
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	cmp r4, #0
	bne _02111B28
	cmp r5, #0
	bne _02111C18
_02111B28:
	ldr r0, [r6, #0x5c]
	ldr r3, [r6, #0x58]
	rsb r7, r0, #0
	mov r8, #0
	add r1, sp, #0x2c
	mov r0, #0x1c
	mov r2, #3
	str r3, [sp, #0x2c]
	str r7, [sp, #0x30]
	str r8, [sp, #0x34]
	bl NNS_G3dGeBufferOP_N
	cmp r5, #0
	bne _02111BA8
	ldr lr, _02111C98 ; =NNS_G3dGlb_cameraMtx
	add r12, sp, #0x38
	ldmia lr!, {r0, r1, r2, r3}
	mov r7, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	mov r0, r7
	mov r1, r7
	str r8, [sp, #0x64]
	str r8, [sp, #0x60]
	str r8, [sp, #0x5c]
	bl MTX_Inverse43
	mov r1, r7
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_02111BA8:
	cmp r4, #0
	beq _02111BEC
	mov r0, r4, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _02111C9C ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r4, sp, #0x38
	mov r0, r4
	blx MTX_RotZ43_
	mov r1, r4
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_02111BEC:
	ldr r0, [r6, #0x58]
	ldr r7, [r6, #0x5c]
	rsb r4, r0, #0
	mov r3, #0
	add r1, sp, #0x20
	mov r0, #0x1c
	mov r2, #3
	str r4, [sp, #0x20]
	str r7, [sp, #0x24]
	str r3, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
_02111C18:
	ldr r0, [r6, #0x28]
	mov r7, #3
	str r0, [sp, #0x68]
	ldr r0, [r6, #0x2c]
	ldr r4, [sp, #0x68]
	rsb r0, r0, #0
	cmp r5, #0
	str r0, [sp, #0x6c]
	rsbne r0, r0, #0
	strne r0, [sp, #0x6c]
	ldr r3, [sp, #0x6c]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r1, sp, #0x14
	mov r2, r7
	str r4, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r0, #0x1c
	bl NNS_G3dGeBufferOP_N
	ldr r5, [r6, #0x3c]
	ldr r4, [r6, #0x38]
	mov r3, #0x1000
	add r1, sp, #8
	mov r2, r7
	mov r0, #0x1b
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02111C98: .word NNS_G3dGlb_cameraMtx
_02111C9C: .word FX_SinCosTable_
	arm_func_end _ZN12C3DPlaneCtrl12uploadMatrixEP11S3DPlaneSetP12S3DPlanePartb

	arm_func_start _ZN12C3DPlaneCtrl10uploadMeshEP11S3DPlaneSetP12S3DPlanePart
_ZN12C3DPlaneCtrl10uploadMeshEP11S3DPlaneSetP12S3DPlanePart: ; 0x02111CA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r8, r2
	mov r1, r8
	bl _ZN12C3DPlaneCtrl15updateTexCoordsEP12S3DPlanePart
	ldr r0, [r8, #0x48]
	ldr r2, [r8, #0x40]
	mov r0, r0, lsl #8
	mov r1, r0, asr #0x10
	mov r0, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r6, #1
	mov r7, #0x22
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #0x20
	mov r0, r7
	mov r2, r6
	str r3, [sp, #0x20]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x23
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r8, #0x4c]
	ldr r2, [r8, #0x40]
	mov r1, r0, lsl #8
	mov r0, r2, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	mov r0, r7
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	mov r5, #0xf0000000
	mov r4, #0x25
	str r5, [sp, #0x10]
	mov r0, r4
	add r1, sp, #0x10
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r8, #0x4c]
	ldr r0, [r8, #0x44]
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0xc]
	mov r0, r7
	add r1, sp, #0xc
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	add r0, r5, #0x1000
	str r0, [sp, #8]
	mov r0, r4
	add r1, sp, #8
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	ldr r2, [r8, #0x48]
	ldr r1, [r8, #0x44]
	mov r2, r2, lsl #8
	mov r2, r2, asr #0x10
	mov r1, r1, lsl #8
	mov r2, r2, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x10
	orr r1, r2, r1, lsr #16
	str r1, [sp, #4]
	mov r0, r7
	add r1, sp, #4
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x1000
	add r1, sp, #0
	mov r0, r4
	mov r2, r6
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end _ZN12C3DPlaneCtrl10uploadMeshEP11S3DPlaneSetP12S3DPlanePart

	arm_func_start _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth: ; 0x02111E2C
	ldrb r0, [r1, #0x35]
	orr r0, r0, r2
	strb r0, [r1, #0x35]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth

	arm_func_start _ZN12C3DPlaneCtrl13updateAnchorsEP12S3DPlanePart
_ZN12C3DPlaneCtrl13updateAnchorsEP12S3DPlanePart: ; 0x02111E3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r0, [r4, #0x35]
	tst r0, #0xd
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r3, [r4, #0x10]
	ldrsh r2, [r4, #8]
	ldrsh r5, [r4, #0x12]
	cmp r3, #0
	moveq r3, #0x64
	mul r3, r2, r3
	cmp r5, #0
	ldrsh r0, [r4, #0xa]
	moveq r5, #0x64
	ldr r1, _02111F98 ; =0x51EB851F
	mul r2, r0, r5
	smull r0, r12, r1, r3
	mov r0, r3, lsr #0x1f
	add r12, r0, r12, asr #5
	smull r0, r5, r1, r2
	mov r0, r2, lsr #0x1f
	add r5, r0, r5, asr #5
	cmp r12, #0
	mov r0, r12, lsl #0xc
	ble _02111EB4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111EC0
_02111EB4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111EC0:
	bl _ffix
	str r0, [r4, #0x38]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _02111EE8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111EF4
_02111EE8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111EF4:
	bl _ffix
	ldrb r1, [r4, #0x35]
	str r0, [r4, #0x3c]
	tst r1, #4
	beq _02111F40
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1a]
	ldr r12, [r4, #0x38]
	mul r3, r0, r1
	mul r1, r12, r2
	ldr r2, _02111F98 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r12, r2, r1
	add r12, r0, r12, asr #5
	smull r0, r1, r2, r3
	mov r0, r3, lsr #0x1f
	add r1, r0, r1, asr #5
	str r12, [r4, #0x50]
	str r1, [r4, #0x54]
_02111F40:
	ldrb r0, [r4, #0x35]
	tst r0, #8
	beq _02111F88
	ldrb r2, [r4, #0x18]
	ldr r3, [r4, #0x38]
	ldrb r0, [r4, #0x19]
	ldr r1, [r4, #0x3c]
	mul r12, r3, r2
	mul r3, r1, r0
	ldr r2, _02111F98 ; =0x51EB851F
	mov r0, r12, lsr #0x1f
	smull r1, r12, r2, r12
	add r12, r0, r12, asr #5
	smull r0, r1, r2, r3
	mov r0, r3, lsr #0x1f
	add r1, r0, r1, asr #5
	str r12, [r4, #0x58]
	str r1, [r4, #0x5c]
_02111F88:
	ldrb r0, [r4, #0x35]
	and r0, r0, #0xf2
	strb r0, [r4, #0x35]
	ldmfd sp!, {r3, r4, r5, pc}
_02111F98: .word 0x51EB851F
	arm_func_end _ZN12C3DPlaneCtrl13updateAnchorsEP12S3DPlanePart

	arm_func_start _ZN12C3DPlaneCtrl15updateTexCoordsEP12S3DPlanePart
_ZN12C3DPlaneCtrl15updateTexCoordsEP12S3DPlanePart: ; 0x02111F9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r1
	ldrb r0, [r4, #0x35]
	tst r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r7, [r4, #0xc]
	and r0, r0, #0xfd
	strb r0, [r4, #0x35]
	cmp r7, #0
	mov r0, r7, lsl #0xc
	ble _02111FDC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02111FE8
_02111FDC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02111FE8:
	bl _ffix
	ldrsh r9, [r4, #0xe]
	mov r5, r0
	cmp r9, #0
	mov r0, r9, lsl #0xc
	ble _02112014
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112020
_02112014:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112020:
	bl _ffix
	ldrh r8, [r4, #2]
	mov r6, r0
	tst r8, #4
	ldrne r0, [r4, #0x38]
	addne r7, r5, r0
	bne _02112078
	ldrsh r0, [r4, #8]
	add r0, r7, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02112064
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112070
_02112064:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112070:
	bl _ffix
	mov r7, r0
_02112078:
	tst r8, #8
	ldrne r0, [r4, #0x3c]
	addne r8, r6, r0
	bne _021120C4
	ldrsh r0, [r4, #0xa]
	add r0, r9, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021120B0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021120BC
_021120B0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021120BC:
	bl _ffix
	mov r8, r0
_021120C4:
	ldrsh r0, [r4, #0x10]
	ldrsh r10, [r4, #0x12]
	cmp r0, #0
	moveq r0, #0x64
	cmp r10, #0
	moveq r10, #0x64
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021120FC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112108
_021120FC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112108:
	bl _ffix
	mov r1, r0
	mov r0, #0x32000
	bl FX_Div
	mov r9, r0
	cmp r10, #0
	mov r0, r10, lsl #0xc
	ble _0211213C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112148
_0211213C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112148:
	bl _ffix
	mov r1, r0
	mov r0, #0x32000
	bl FX_Div
	ldrh r3, [r4, #2]
	ands r2, r3, #0x10
	movne r1, r5
	subne r5, r7, r9
	subne r7, r1, r9
	ands r3, r3, #0x20
	movne r1, r6
	subne r6, r8, r0
	subne r8, r1, r0
	ldrh r1, [r4, #0x14]
	cmp r1, #0
	beq _021122B8
	cmp r1, #0xe000
	movhs r10, #0
	movhs r1, r10
	bhs _0211226C
	cmp r1, #0xc000
	blo _021121C8
	sub r1, r1, #0xc000
	mov r1, r1, lsl #1
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r10, r1, #1
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #1
	ldrsh r1, [r1, r10]
	mov r10, #0
	b _0211226C
_021121C8:
	cmp r1, #0xa000
	movhs r10, #0
	movhs r1, #0x1000
	bhs _0211226C
	cmp r1, #0x8000
	blo _02112208
	sub r1, r1, #0x8000
	mov r1, r1, lsl #1
	mov r1, r1, asr #4
	mov r1, r1, lsl #1
	add r10, r1, #1
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #1
	ldrsh r10, [r1, r10]
	mov r1, #0x1000
	b _0211226C
_02112208:
	cmp r1, #0x6000
	blo _02112230
	sub r1, r1, #0x6000
	mov r1, r1, lsl #1
	mov r10, r1, asr #4
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #2
	ldrsh r1, [r1, r10]
	mov r10, #0x1000
	b _0211226C
_02112230:
	cmp r1, #0x4000
	movhs r10, #0x1000
	movhs r1, #0
	bhs _0211226C
	cmp r1, #0x2000
	movlo r10, #0
	movlo r1, r10
	blo _0211226C
	sub r1, r1, #0x2000
	mov r1, r1, lsl #1
	mov r10, r1, asr #4
	ldr r1, _021122CC ; =FX_SinCosTable_
	mov r10, r10, lsl #2
	ldrsh r10, [r1, r10]
	mov r1, #0
_0211226C:
	cmp r2, #0
	rsbne r10, r10, #0
	cmp r3, #0
	smull r3, r9, r10, r9
	rsbne r1, r1, #0
	adds r10, r3, #0x800
	smull r3, r0, r1, r0
	mov r2, #0
	adc r9, r9, r2
	adds r1, r3, #0x800
	mov r3, r10, lsr #0xc
	orr r3, r3, r9, lsl #20
	adc r0, r0, r2
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r5, r5, r3
	sub r7, r7, r3
	sub r6, r6, r1
	sub r8, r8, r1
_021122B8:
	str r5, [r4, #0x40]
	str r7, [r4, #0x44]
	str r6, [r4, #0x48]
	str r8, [r4, #0x4c]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021122CC: .word FX_SinCosTable_
	arm_func_end _ZN12C3DPlaneCtrl15updateTexCoordsEP12S3DPlanePart

	arm_func_start _ZN12C3DPlaneCtrl4initEii
_ZN12C3DPlaneCtrl4initEii: ; 0x021122D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r2
	cmp r1, #0
	cmpgt r6, #0
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02058644
	mov r5, r6, lsl #5
	ldr r0, _02112348 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r1, r0
	str r1, [r7, #0x1c]
	bne _02112330
	mov r0, r7
	bl _ZN12C3DPlaneCtrl7releaseEv
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02112330:
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
	str r6, [r7, #0x20]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02112348: .word gAllocator
	arm_func_end _ZN12C3DPlaneCtrl4initEii

	arm_func_start _ZN12C3DPlaneCtrl8finalizeEv
_ZN12C3DPlaneCtrl8finalizeEv: ; 0x0211234C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02112390
	ldr r4, [r5, #0x20]
	cmp r4, #1
	blt _02112384
_0211236C:
	mov r0, r5
	mov r1, r4
	bl _ZN12C3DPlaneCtrl7destroyEi
	sub r4, r4, #1
	cmp r4, #1
	bge _0211236C
_02112384:
	ldr r1, [r5, #0x1c]
	ldr r0, _021123B0 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02112390:
	mov r0, r5
	bl FUN_0205866c
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_021123B0: .word gAllocator
	arm_func_end _ZN12C3DPlaneCtrl8finalizeEv

	arm_func_start _ZN12C3DPlaneCtrl7acquireEv
_ZN12C3DPlaneCtrl7acquireEv: ; 0x021123B4
	stmfd sp!, {r3, lr}
	bl FUN_020597a0
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl7acquireEv

	arm_func_start _ZN12C3DPlaneCtrl7releaseEv
_ZN12C3DPlaneCtrl7releaseEv: ; 0x021123C4
	ldr r12, _021123D0 ; =FUN_02059838
	mov r1, #0
	bx r12
_021123D0: .word FUN_02059838
	arm_func_end _ZN12C3DPlaneCtrl7releaseEv

	arm_func_start _ZN12C3DPlaneCtrl4drawEb
_ZN12C3DPlaneCtrl4drawEb: ; 0x021123D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r0, [r10, #0x24]
	mov r9, r1
	cmp r0, #0
	mov r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r5
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldr r7, [r10, #0x24]
_02112410:
	ldr r0, [r7]
	cmp r0, #0
	beq _021125B4
	ldrh r0, [r7, #4]
	tst r0, #2
	ldrneb r0, [r7, #7]
	cmpne r0, #0
	beq _021125B4
	ldrb r0, [r7, #6]
	mov r6, #1
	cmp r0, #1
	blt _021125B4
	mov r11, #0x11
	mov r4, #0x60
_02112448:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _02112464
	cmp r6, r0
	ble _0211246C
_02112464:
	mov r8, r5
	b _02112474
_0211246C:
	sub r0, r6, #1
	mla r8, r0, r4, r1
_02112474:
	cmp r8, #0
	beq _021125A4
	ldrb r0, [r8, #0x36]
	cmp r0, #0
	beq _021124B0
	mov r0, r10
	ldrb r1, [r8]
	bl FUN_02059004
	cmp r0, #0
	beq _021125A4
	mov r0, r10
	mov r1, r8
	ldrb r2, [r8, #0x37]
	mov r3, r5
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEP12S3DPlaneParthb
_021124B0:
	ldrh r1, [r8, #2]
	tst r1, #2
	ldrnesh r0, [r8, #8]
	cmpne r0, #0
	ldrgtsh r0, [r8, #0xa]
	cmpgt r0, #0
	ble _021125A4
	ldrb r0, [r8, #4]
	cmp r0, #0
	beq _021125A4
	cmp r9, #0
	beq _021124E8
	tst r1, #0x80
	beq _021124F8
_021124E8:
	cmp r9, #0
	bne _021125A4
	tst r1, #0x80
	beq _021125A4
_021124F8:
	mov r0, r10
	bl _ZN12C3DPlaneCtrl14uploadMaterialEv
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl _ZN12C3DPlaneCtrl11uploadColorEP11S3DPlaneSetP12S3DPlanePart
	mov r0, r11
	mov r1, r5
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x40
	add r1, sp, #4
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r0, r10
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl _ZN12C3DPlaneCtrl12uploadMatrixEP11S3DPlaneSetP12S3DPlanePartb
	cmp r0, #0
	beq _0211257C
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl _ZN12C3DPlaneCtrl13uploadTextureEP11S3DPlaneSetP12S3DPlanePart
	cmp r0, #0
	beq _0211257C
	mov r2, r8
	mov r0, r10
	mov r1, r7
	bl _ZN12C3DPlaneCtrl10uploadMeshEP11S3DPlaneSetP12S3DPlanePart
_0211257C:
	mov r0, #0x41
	mov r1, r5
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	add r1, sp, #0
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_021125A4:
	add r6, r6, #1
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _02112448
_021125B4:
	ldr r7, [r7, #0x1c]
	cmp r7, #0
	bne _02112410
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl4drawEb

	arm_func_start _ZN12C3DPlaneCtrl6setTexEP12S3DPlaneParth
_ZN12C3DPlaneCtrl6setTexEP12S3DPlaneParth: ; 0x021125C8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	strb r2, [r1]
	bl _ZN12C3DPlaneCtrl7setPlttEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl6setTexEP12S3DPlaneParth

	arm_func_start _ZN12C3DPlaneCtrl7setPlttEP12S3DPlaneParth
_ZN12C3DPlaneCtrl7setPlttEP12S3DPlaneParth: ; 0x021125E0
	cmp r1, #0
	strneb r2, [r1, #1]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl7setPlttEP12S3DPlaneParth

	arm_func_start _ZN12C3DPlaneCtrl8setTexWHEP12S3DPlanePartss
_ZN12C3DPlaneCtrl8setTexWHEP12S3DPlanePartss: ; 0x021125EC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r12, [r1, #8]
	cmp r12, r2
	ldreqsh r12, [r1, #0xa]
	cmpeq r12, r3
	ldmeqfd sp!, {r3, pc}
	strh r2, [r1, #8]
	mov r2, #0xff
	strh r3, [r1, #0xa]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl8setTexWHEP12S3DPlanePartss

	arm_func_start _ZN12C3DPlaneCtrl13setGraphicIdxEP12S3DPlaneParthb
_ZN12C3DPlaneCtrl13setGraphicIdxEP12S3DPlaneParthb: ; 0x02112620
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	mov r8, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r5]
	mov r7, #0
	strb r7, [r5, #0x36]
	bl _ZN10C3DSprFile14getSpriteSheetEi
	movs r1, r0
	ldrne r0, [r1, #4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r2, r7
	bl FUN_02059bb4
	cmp r8, #0
	movne r0, #1
	strneb r0, [r5, #0x36]
	strneb r4, [r5, #0x37]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #0
	ldrnesh r1, [r0]
	cmpne r4, r1
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r0, #8
	strb r7, [r5, #0x36]
	mov r0, r4, lsl #3
	ldrsh r2, [r1, r0]
	ldrsh r0, [r5, #0xc]
	add r3, r1, r4, lsl #3
	cmp r0, r2
	ldreqsh r1, [r5, #0xe]
	ldreqsh r0, [r3, #2]
	cmpeq r1, r0
	ldreqsh r1, [r5, #8]
	ldreqsh r0, [r3, #4]
	cmpeq r1, r0
	ldreqsh r1, [r5, #0xa]
	ldreqsh r0, [r3, #6]
	cmpeq r1, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strh r2, [r5, #0xc]
	ldrsh r2, [r3, #2]
	mov r0, r6
	mov r1, r5
	strh r2, [r5, #0xe]
	ldrsh r4, [r3, #4]
	mov r2, #0xff
	strh r4, [r5, #8]
	ldrsh r3, [r3, #6]
	strh r3, [r5, #0xa]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	mov r0, #0
	strb r0, [r5, #0x36]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end _ZN12C3DPlaneCtrl13setGraphicIdxEP12S3DPlaneParthb

	arm_func_start _ZN12C3DPlaneCtrl14drawForegroundEv
_ZN12C3DPlaneCtrl14drawForegroundEv: ; 0x02112704
	ldr r12, _02112710 ; =_ZN12C3DPlaneCtrl4drawEb
	mov r1, #1
	bx r12
_02112710: .word _ZN12C3DPlaneCtrl4drawEb
	arm_func_end _ZN12C3DPlaneCtrl14drawForegroundEv

	arm_func_start _ZN12C3DPlaneCtrl13drawMidgroundEv
_ZN12C3DPlaneCtrl13drawMidgroundEv: ; 0x02112714
	ldr r12, _02112720 ; =_ZN12C3DPlaneCtrl4drawEb
	mov r1, #0
	bx r12
_02112720: .word _ZN12C3DPlaneCtrl4drawEb
	arm_func_end _ZN12C3DPlaneCtrl13drawMidgroundEv

	arm_func_start _ZN12C3DPlaneCtrl6createEib
_ZN12C3DPlaneCtrl6createEib: ; 0x02112724
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r1
	mov r10, r0
	mov r11, r2
	cmp r8, #0
	mov r6, #0
	ble _02112748
	cmp r8, #0xfe
	blt _02112750
_02112748:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02112750:
	bl _ZN12C3DPlaneCtrl7getFreeEv
	ldr r1, [r10, #0x1c]
	mov r7, r0
	cmp r1, #0
	ldrne r0, [r10, #0x20]
	cmpne r0, #0
	movle r9, #0
	ble _02112790
	cmp r7, #0
	ble _02112780
	cmp r7, r0
	ble _02112788
_02112780:
	mov r9, #0
	b _02112790
_02112788:
	sub r0, r7, #1
	add r9, r1, r0, lsl #5
_02112790:
	cmp r9, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, r9
	mov r2, #0x20
	bl MIi_CpuClearFast
	mov r0, #0x60
	mul r5, r8, r0
	mov r0, #0x1f
	strb r0, [r9, #7]
	ldr r2, _021128BC ; =0x00007FFF
	ldr r0, _021128C0 ; =gAllocator
	mov r1, r5
	strh r2, [r9, #0x14]
	bl _ZN10CAllocator8allocateEm
	movs r4, r0
	mov r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	str r4, [r9]
	strb r8, [r9, #6]
	ldrh r0, [r9, #4]
	cmp r11, #0
	orr r0, r0, #3
	strh r0, [r9, #4]
	beq _02112818
	mov r0, r10
	mov r3, r9
	add r1, r10, #0x24
	add r2, r10, #0x28
	bl _ZN12C3DPlaneCtrl10insertNodeEPP11S3DPlaneSetS2_S1_
_02112818:
	ldrb r8, [r9, #6]
	cmp r8, #1
	blt _021128B4
	ldr r4, _021128BC ; =0x00007FFF
	mov r5, #0x1f
	mov r11, #0x3f
_02112830:
	cmp r9, #0
	ldrne r2, [r9]
	cmpne r2, #0
	cmpne r8, #0
	ble _02112850
	ldrb r0, [r9, #6]
	cmp r8, r0
	ble _02112858
_02112850:
	mov r10, r6
	b _02112864
_02112858:
	sub r1, r8, #1
	mov r0, #0x60
	mla r10, r1, r0, r2
_02112864:
	cmp r10, #0
	beq _021128A8
	mov r0, r6
	mov r1, r10
	mov r2, #0x60
	bl MIi_CpuClearFast
	strb r5, [r10, #4]
	strh r4, [r10, #6]
	strb r11, [r10, #5]
	mov r0, #0x32
	strb r0, [r10, #0x18]
	strb r0, [r10, #0x19]
	strb r6, [r10, #0x1a]
	strb r6, [r10, #0x1b]
	ldrh r0, [r10, #2]
	orr r0, r0, #3
	strh r0, [r10, #2]
_021128A8:
	sub r8, r8, #1
	cmp r8, #1
	bge _02112830
_021128B4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021128BC: .word 0x00007FFF
_021128C0: .word gAllocator
	arm_func_end _ZN12C3DPlaneCtrl6createEib

	arm_func_start _ZN12C3DPlaneCtrl7destroyEi
_ZN12C3DPlaneCtrl7destroyEi: ; 0x021128C4
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r2, [r0, #0x20]
	cmpne r2, #0
	movle r4, #0
	ble _02112900
	cmp r1, #0
	ble _021128F0
	cmp r1, r2
	ble _021128F8
_021128F0:
	mov r4, #0
	b _02112900
_021128F8:
	sub r1, r1, #1
	add r4, r3, r1, lsl #5
_02112900:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r4, #4]
	tst r1, #1
	beq _02112924
	mov r3, r4
	add r1, r0, #0x24
	add r2, r0, #0x28
	bl _ZN12C3DPlaneCtrl10removeNodeEPP11S3DPlaneSetS2_S1_
_02112924:
	ldr r1, [r4]
	cmp r1, #0
	beq _02112938
	ldr r0, _0211294C ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02112938:
	mov r1, r4
	mov r0, #0
	mov r2, #0x20
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
_0211294C: .word gAllocator
	arm_func_end _ZN12C3DPlaneCtrl7destroyEi

	arm_func_start _ZN12C3DPlaneCtrl9setTexAllEih
_ZN12C3DPlaneCtrl9setTexAllEih: ; 0x02112950
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r2
	mov r4, r1
	mov r1, r6
	mov r7, r0
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r6, #0
	beq _02112984
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02112984:
	ldr r1, [r7, #0x1c]
	cmp r1, #0
	ldrne r0, [r7, #0x20]
	cmpne r0, #0
	movle r5, #0
	ble _021129BC
	cmp r4, #0
	ble _021129AC
	cmp r4, r0
	ble _021129B4
_021129AC:
	mov r5, #0
	b _021129BC
_021129B4:
	sub r0, r4, #1
	add r5, r1, r0, lsl #5
_021129BC:
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r4, [r5, #6]
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	mov r8, #0x60
_021129E0:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, #0
	cmpne r4, #0
	ble _02112A00
	ldrb r0, [r5, #6]
	cmp r4, r0
	ble _02112A08
_02112A00:
	mov r1, r9
	b _02112A10
_02112A08:
	sub r0, r4, #1
	mla r1, r0, r8, r1
_02112A10:
	cmp r1, #0
	beq _02112A24
	mov r0, r7
	mov r2, r6
	bl _ZN12C3DPlaneCtrl6setTexEP12S3DPlaneParth
_02112A24:
	sub r4, r4, #1
	cmp r4, #1
	bge _021129E0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end _ZN12C3DPlaneCtrl9setTexAllEih

	arm_func_start _ZN12C3DPlaneCtrl10setPlttAllEih
_ZN12C3DPlaneCtrl10setPlttAllEih: ; 0x02112A34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r3, [r7, #0x1c]
	mov r6, r2
	cmp r3, #0
	ldrne r0, [r7, #0x20]
	cmpne r0, #0
	movle r5, #0
	ble _02112A78
	cmp r1, #0
	ble _02112A68
	cmp r1, r0
	ble _02112A70
_02112A68:
	mov r5, #0
	b _02112A78
_02112A70:
	sub r0, r1, #1
	add r5, r3, r0, lsl #5
_02112A78:
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r4, [r5, #6]
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	mov r8, #0x60
_02112A9C:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, #0
	cmpne r4, #0
	ble _02112ABC
	ldrb r0, [r5, #6]
	cmp r4, r0
	ble _02112AC4
_02112ABC:
	mov r1, r9
	b _02112ACC
_02112AC4:
	sub r0, r4, #1
	mla r1, r0, r8, r1
_02112ACC:
	cmp r1, #0
	beq _02112AE0
	mov r0, r7
	mov r2, r6
	bl _ZN12C3DPlaneCtrl7setPlttEP12S3DPlaneParth
_02112AE0:
	sub r4, r4, #1
	cmp r4, #1
	bge _02112A9C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end _ZN12C3DPlaneCtrl10setPlttAllEih

	arm_func_start _ZN12C3DPlaneCtrl13setPlttIdxAllEih
_ZN12C3DPlaneCtrl13setPlttIdxAllEih: ; 0x02112AF0
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02112B2C
	cmp r1, #0
	ble _02112B1C
	cmp r1, r0
	ble _02112B24
_02112B1C:
	mov r4, #0
	b _02112B2C
_02112B24:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02112B2C:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02112B50:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _02112B70
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _02112B78
_02112B70:
	mov r12, r3
	b _02112B80
_02112B78:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_02112B80:
	sub lr, lr, #1
	cmp r12, #0
	strneb r2, [r12, #0x34]
	cmp lr, #1
	bge _02112B50
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl13setPlttIdxAllEih

	arm_func_start _ZN12C3DPlaneCtrl11setDepthAllEij
_ZN12C3DPlaneCtrl11setDepthAllEij: ; 0x02112B98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r3, _02112C8C ; =0x00007FFF
	cmp r2, r3
	movhi r2, r3
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r7, #0
	ble _02112BE0
	cmp r1, #0
	ble _02112BD0
	cmp r1, r0
	ble _02112BD8
_02112BD0:
	mov r7, #0
	b _02112BE0
_02112BD8:
	sub r0, r1, #1
	add r7, r3, r0, lsl #5
_02112BE0:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	rsb r9, r2, #0
	mov r10, r9, lsl #0xc
	mov r5, #0
	mov r11, #0x3f000000
	mov r4, #0x60
_02112C10:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _02112C30
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _02112C38
_02112C30:
	mov r8, r5
	b _02112C40
_02112C38:
	sub r0, r6, #1
	mla r8, r0, r4, r1
_02112C40:
	cmp r8, #0
	beq _02112C7C
	cmp r9, #0
	mov r0, r10
	ble _02112C68
	bl _fflt
	mov r1, r0
	mov r0, r11
	bl _fadd
	b _02112C74
_02112C68:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112C74:
	bl _ffix
	str r0, [r8, #0x24]
_02112C7C:
	sub r6, r6, #1
	cmp r6, #1
	bge _02112C10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02112C8C: .word 0x00007FFF
	arm_func_end _ZN12C3DPlaneCtrl11setDepthAllEij

	arm_func_start _ZN12C3DPlaneCtrl15setDepthStepAllEiii
_ZN12C3DPlaneCtrl15setDepthStepAllEiii: ; 0x02112C90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r10, r2
	mov r5, #0
	mov r9, r3
	movmi r10, r5
	bmi _02112CB4
	ldr r2, _02112DA8 ; =0x00007FFF
	cmp r10, r2
	movgt r10, r2
_02112CB4:
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r7, #0
	ble _02112CEC
	cmp r1, #0
	ble _02112CDC
	cmp r1, r0
	ble _02112CE4
_02112CDC:
	mov r7, #0
	b _02112CEC
_02112CE4:
	sub r0, r1, #1
	add r7, r2, r0, lsl #5
_02112CEC:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #6]
	mov r6, #0
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02112DA8 ; =0x00007FFF
	mov r11, #0x60
_02112D14:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _02112D30
	cmp r6, r0
	ble _02112D38
_02112D30:
	mov r8, r5
	b _02112D40
_02112D38:
	sub r0, r6, #1
	mla r8, r0, r11, r1
_02112D40:
	cmp r8, #0
	beq _02112D94
	rsb r0, r10, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02112D6C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112D78
_02112D6C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112D78:
	bl _ffix
	adds r10, r10, r9
	str r0, [r8, #0x24]
	movmi r10, r5
	bmi _02112D94
	cmp r10, r4
	movgt r10, r4
_02112D94:
	ldrb r0, [r7, #6]
	add r6, r6, #1
	cmp r6, r0
	ble _02112D14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02112DA8: .word 0x00007FFF
	arm_func_end _ZN12C3DPlaneCtrl15setDepthStepAllEiii

	arm_func_start _ZN12C3DPlaneCtrl11setAlphaAllEih
_ZN12C3DPlaneCtrl11setAlphaAllEih: ; 0x02112DAC
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r2, #0x1f
	movhi r2, #0x1f
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02112DF0
	cmp r1, #0
	ble _02112DE0
	cmp r1, r0
	ble _02112DE8
_02112DE0:
	mov r4, #0
	b _02112DF0
_02112DE8:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02112DF0:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02112E14:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _02112E34
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _02112E3C
_02112E34:
	mov r12, r3
	b _02112E44
_02112E3C:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_02112E44:
	sub lr, lr, #1
	cmp r12, #0
	strneb r2, [r12, #4]
	cmp lr, #1
	bge _02112E14
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl11setAlphaAllEih

	arm_func_start _ZN12C3DPlaneCtrl15setColorMaskAllEit
_ZN12C3DPlaneCtrl15setColorMaskAllEit: ; 0x02112E5C
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02112E98
	cmp r1, #0
	ble _02112E88
	cmp r1, r0
	ble _02112E90
_02112E88:
	mov r4, #0
	b _02112E98
_02112E90:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02112E98:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02112EBC:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _02112EDC
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _02112EE4
_02112EDC:
	mov r12, r3
	b _02112EEC
_02112EE4:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_02112EEC:
	sub lr, lr, #1
	cmp r12, #0
	strneh r2, [r12, #6]
	cmp lr, #1
	bge _02112EBC
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl15setColorMaskAllEit

	arm_func_start _ZN12C3DPlaneCtrl9setPosAllEiss
_ZN12C3DPlaneCtrl9setPosAllEiss: ; 0x02112F04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, [r0, #0x1c]
	mov r10, r2
	cmp r4, #0
	ldrne r0, [r0, #0x20]
	mov r9, r3
	cmpne r0, #0
	movle r5, #0
	ble _02112F48
	cmp r1, #0
	ble _02112F38
	cmp r1, r0
	ble _02112F40
_02112F38:
	mov r5, #0
	b _02112F48
_02112F40:
	sub r0, r1, #1
	add r5, r4, r0, lsl #5
_02112F48:
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r4, [r5, #6]
	cmp r4, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, r10, lsl #0xc
	mov r8, r9, lsl #0xc
	mov r11, #0x60
_02112F70:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, #0
	cmpne r4, #0
	ble _02112F90
	ldrb r0, [r5, #6]
	cmp r4, r0
	ble _02112F98
_02112F90:
	mov r6, #0
	b _02112FA0
_02112F98:
	sub r0, r4, #1
	mla r6, r0, r11, r1
_02112FA0:
	cmp r6, #0
	beq _02113010
	cmp r10, #0
	mov r0, r7
	ble _02112FC8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02112FD4
_02112FC8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02112FD4:
	bl _ffix
	str r0, [r6, #0x1c]
	cmp r9, #0
	mov r0, r8
	ble _02112FFC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113008
_02112FFC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113008:
	bl _ffix
	str r0, [r6, #0x20]
_02113010:
	sub r4, r4, #1
	cmp r4, #1
	bge _02112F70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl9setPosAllEiss

	arm_func_start _ZN12C3DPlaneCtrl14setTexScaleAllEiss
_ZN12C3DPlaneCtrl14setTexScaleAllEiss: ; 0x02113020
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x1c]
	mov r9, r2
	cmp r4, #0
	ldrne r0, [r10, #0x20]
	mov r8, r3
	cmpne r0, #0
	movle r7, #0
	ble _02113068
	cmp r1, #0
	ble _02113058
	cmp r1, r0
	ble _02113060
_02113058:
	mov r7, #0
	b _02113068
_02113060:
	sub r0, r1, #1
	add r7, r4, r0, lsl #5
_02113068:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r11, #0xd
	mov r4, #0x60
_02113090:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _021130B0
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _021130B8
_021130B0:
	mov r1, r5
	b _021130C0
_021130B8:
	sub r0, r6, #1
	mla r1, r0, r4, r1
_021130C0:
	cmp r1, #0
	beq _021130F0
	ldrsh r0, [r1, #0x10]
	cmp r0, r9
	ldreqsh r0, [r1, #0x12]
	cmpeq r0, r8
	beq _021130F0
	strh r9, [r1, #0x10]
	mov r0, r10
	mov r2, r11
	strh r8, [r1, #0x12]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_021130F0:
	sub r6, r6, #1
	cmp r6, #1
	bge _02113090
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl14setTexScaleAllEiss

	arm_func_start _ZN12C3DPlaneCtrl11setTexWHAllEiss
_ZN12C3DPlaneCtrl11setTexWHAllEiss: ; 0x02113100
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r4, [r9, #0x1c]
	mov r8, r2
	cmp r4, #0
	ldrne r0, [r9, #0x20]
	mov r7, r3
	cmpne r0, #0
	movle r6, #0
	ble _02113148
	cmp r1, #0
	ble _02113138
	cmp r1, r0
	ble _02113140
_02113138:
	mov r6, #0
	b _02113148
_02113140:
	sub r0, r1, #1
	add r6, r4, r0, lsl #5
_02113148:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r5, [r6, #6]
	cmp r5, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, #0
	mov r10, #0x60
_0211316C:
	cmp r6, #0
	ldrne r1, [r6]
	cmpne r1, #0
	cmpne r5, #0
	ble _0211318C
	ldrb r0, [r6, #6]
	cmp r5, r0
	ble _02113194
_0211318C:
	mov r1, r4
	b _0211319C
_02113194:
	sub r0, r5, #1
	mla r1, r0, r10, r1
_0211319C:
	mov r0, r9
	mov r2, r8
	mov r3, r7
	bl _ZN12C3DPlaneCtrl8setTexWHEP12S3DPlanePartss
	sub r5, r5, #1
	cmp r5, #1
	bge _0211316C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end _ZN12C3DPlaneCtrl11setTexWHAllEiss

	arm_func_start _ZN12C3DPlaneCtrl11setTexSTAllEiss
_ZN12C3DPlaneCtrl11setTexSTAllEiss: ; 0x021131BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x1c]
	mov r9, r2
	cmp r4, #0
	ldrne r0, [r10, #0x20]
	mov r8, r3
	cmpne r0, #0
	movle r7, #0
	ble _02113204
	cmp r1, #0
	ble _021131F4
	cmp r1, r0
	ble _021131FC
_021131F4:
	mov r7, #0
	b _02113204
_021131FC:
	sub r0, r1, #1
	add r7, r4, r0, lsl #5
_02113204:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r11, #2
	mov r4, #0x60
_0211322C:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _0211324C
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _02113254
_0211324C:
	mov r1, r5
	b _0211325C
_02113254:
	sub r0, r6, #1
	mla r1, r0, r4, r1
_0211325C:
	cmp r1, #0
	beq _0211328C
	ldrsh r0, [r1, #0xc]
	cmp r0, r9
	ldreqsh r0, [r1, #0xe]
	cmpeq r0, r8
	beq _0211328C
	strh r9, [r1, #0xc]
	mov r0, r10
	mov r2, r11
	strh r8, [r1, #0xe]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_0211328C:
	sub r6, r6, #1
	cmp r6, #1
	bge _0211322C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl11setTexSTAllEiss

	arm_func_start _ZN12C3DPlaneCtrl10setFlagAllEitb
_ZN12C3DPlaneCtrl10setFlagAllEitb: ; 0x0211329C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	cmp r3, #0
	bne _021132B4
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021132B4:
	ldr r3, [r10, #0x1c]
	cmp r3, #0
	ldrne r0, [r10, #0x20]
	cmpne r0, #0
	movle r8, #0
	ble _021132EC
	cmp r1, #0
	ble _021132DC
	cmp r1, r0
	ble _021132E4
_021132DC:
	mov r8, #0
	b _021132EC
_021132E4:
	sub r0, r1, #1
	add r8, r3, r0, lsl #5
_021132EC:
	cmp r8, #0
	ldrne r0, [r8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r8, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211338C ; =0x0000F0FF
	and r9, r2, #0x3c
	and r0, r2, r0
	mov r5, r0, lsl #0x10
	mov r6, #0
	mov r11, #2
	mov r4, #0x60
_02113324:
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	cmpne r7, #0
	ble _02113344
	ldrb r0, [r8, #6]
	cmp r7, r0
	ble _0211334C
_02113344:
	mov r1, r6
	b _02113354
_0211334C:
	sub r0, r7, #1
	mla r1, r0, r4, r1
_02113354:
	cmp r1, #0
	beq _0211337C
	ldrh r0, [r1, #2]
	cmp r9, #0
	orr r0, r0, r5, lsr #16
	strh r0, [r1, #2]
	beq _0211337C
	mov r0, r10
	mov r2, r11
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_0211337C:
	sub r7, r7, #1
	cmp r7, #1
	bge _02113324
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211338C: .word 0x0000F0FF
	arm_func_end _ZN12C3DPlaneCtrl10setFlagAllEitb

	arm_func_start _ZN12C3DPlaneCtrl12clearFlagAllEit
_ZN12C3DPlaneCtrl12clearFlagAllEit: ; 0x02113390
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r3, [r10, #0x1c]
	cmp r3, #0
	ldrne r0, [r10, #0x20]
	cmpne r0, #0
	movle r8, #0
	ble _021133D0
	cmp r1, #0
	ble _021133C0
	cmp r1, r0
	ble _021133C8
_021133C0:
	mov r8, #0
	b _021133D0
_021133C8:
	sub r0, r1, #1
	add r8, r3, r0, lsl #5
_021133D0:
	cmp r8, #0
	ldrne r0, [r8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r8, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r0, r2
	and r9, r2, #0x3c
	mov r5, r0, lsl #0x10
	mov r6, #0
	mov r11, #2
	mov r4, #0x60
_02113404:
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	cmpne r7, #0
	ble _02113424
	ldrb r0, [r8, #6]
	cmp r7, r0
	ble _0211342C
_02113424:
	mov r1, r6
	b _02113434
_0211342C:
	sub r0, r7, #1
	mla r1, r0, r4, r1
_02113434:
	cmp r1, #0
	beq _0211345C
	ldrh r0, [r1, #2]
	cmp r9, #0
	and r0, r0, r5, lsr #16
	strh r0, [r1, #2]
	beq _0211345C
	mov r0, r10
	mov r2, r11
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_0211345C:
	sub r7, r7, #1
	cmp r7, #1
	bge _02113404
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl12clearFlagAllEit

	arm_func_start _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
_ZN12C3DPlaneCtrl16setGraphicIdxAllEihb: ; 0x0211346C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r4, [r9, #0x1c]
	mov r8, r2
	cmp r4, #0
	ldrne r0, [r9, #0x20]
	mov r7, r3
	cmpne r0, #0
	movle r6, #0
	ble _021134B4
	cmp r1, #0
	ble _021134A4
	cmp r1, r0
	ble _021134AC
_021134A4:
	mov r6, #0
	b _021134B4
_021134AC:
	sub r0, r1, #1
	add r6, r4, r0, lsl #5
_021134B4:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r5, [r6, #6]
	cmp r5, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, #0
	mov r10, #0x60
_021134D8:
	cmp r6, #0
	ldrne r1, [r6]
	cmpne r1, #0
	cmpne r5, #0
	ble _021134F8
	ldrb r0, [r6, #6]
	cmp r5, r0
	ble _02113500
_021134F8:
	mov r1, r4
	b _02113508
_02113500:
	sub r0, r5, #1
	mla r1, r0, r10, r1
_02113508:
	mov r0, r9
	mov r2, r8
	mov r3, r7
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEP12S3DPlaneParthb
	sub r5, r5, #1
	cmp r5, #1
	bge _021134D8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb

	arm_func_start _ZN12C3DPlaneCtrl15setPosAnchorAllEihh
_ZN12C3DPlaneCtrl15setPosAnchorAllEihh: ; 0x02113528
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, [r10, #0x1c]
	mov r9, r2
	cmp r4, #0
	ldrne r0, [r10, #0x20]
	mov r8, r3
	cmpne r0, #0
	movle r7, #0
	ble _02113570
	cmp r1, #0
	ble _02113560
	cmp r1, r0
	ble _02113568
_02113560:
	mov r7, #0
	b _02113570
_02113568:
	sub r0, r1, #1
	add r7, r4, r0, lsl #5
_02113570:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r6, [r7, #6]
	cmp r9, #0x64
	movhi r9, #0x64
	cmp r8, #0x64
	movhi r8, #0x64
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r11, #4
	mov r4, #0x60
_021135A8:
	cmp r7, #0
	ldrne r1, [r7]
	cmpne r1, #0
	cmpne r6, #0
	ble _021135C8
	ldrb r0, [r7, #6]
	cmp r6, r0
	ble _021135D0
_021135C8:
	mov r1, r5
	b _021135D8
_021135D0:
	sub r0, r6, #1
	mla r1, r0, r4, r1
_021135D8:
	cmp r1, #0
	beq _02113608
	ldrb r0, [r1, #0x1a]
	cmp r0, r9
	ldreqb r0, [r1, #0x1b]
	cmpeq r0, r8
	beq _02113608
	strb r9, [r1, #0x1a]
	mov r0, r10
	mov r2, r11
	strb r8, [r1, #0x1b]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_02113608:
	sub r6, r6, #1
	cmp r6, #1
	bge _021135A8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _ZN12C3DPlaneCtrl15setPosAnchorAllEihh

	arm_func_start _ZN12C3DPlaneCtrl9setBoundsEiP12SGlyphBoundsi
_ZN12C3DPlaneCtrl9setBoundsEiP12SGlyphBoundsi: ; 0x02113618
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	ldr r3, [r5, #0x1c]
	mov r4, r2
	cmp r3, #0
	ldrne r0, [r5, #0x20]
	cmpne r0, #0
	movle r10, #0
	ble _0211365C
	cmp r1, #0
	ble _0211364C
	cmp r1, r0
	ble _02113654
_0211364C:
	mov r10, #0
	b _0211365C
_02113654:
	sub r0, r1, #1
	add r10, r3, r0, lsl #5
_0211365C:
	cmp r10, #0
	ldrne r0, [r10]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r9, [r10, #6]
	sub r0, r9, #1
	add r4, r4, r0, lsl #3
	cmp r9, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #0
	mov r7, #0xff
	mov r6, #0x60
_0211368C:
	cmp r10, #0
	ldrne r1, [r10]
	cmpne r1, #0
	cmpne r9, #0
	ble _021136AC
	ldrb r0, [r10, #6]
	cmp r9, r0
	ble _021136B4
_021136AC:
	mov r1, r8
	b _021136BC
_021136B4:
	sub r0, r9, #1
	mla r1, r0, r6, r1
_021136BC:
	cmp r1, #0
	beq _02113720
	ldrsh r0, [r4]
	ldrsh r2, [r1, #0xc]
	cmp r2, r0
	ldreqsh r3, [r1, #0xe]
	ldreqsh r2, [r4, #2]
	cmpeq r3, r2
	ldreqsh r3, [r1, #8]
	ldreqsh r2, [r4, #4]
	cmpeq r3, r2
	ldreqsh r3, [r1, #0xa]
	ldreqsh r2, [r4, #6]
	cmpeq r3, r2
	beq _02113720
	strh r0, [r1, #0xc]
	ldrsh r3, [r4, #2]
	mov r0, r5
	mov r2, r7
	strh r3, [r1, #0xe]
	ldrsh r3, [r4, #4]
	strh r3, [r1, #8]
	ldrsh r3, [r4, #6]
	strh r3, [r1, #0xa]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
_02113720:
	sub r9, r9, #1
	cmp r9, #1
	sub r4, r4, #8
	bge _0211368C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end _ZN12C3DPlaneCtrl9setBoundsEiP12SGlyphBoundsi

	arm_func_start _ZN12C3DPlaneCtrl12setPolygonIDEih
_ZN12C3DPlaneCtrl12setPolygonIDEih: ; 0x02113734
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02113770
	cmp r1, #0
	ble _02113760
	cmp r1, r0
	ble _02113768
_02113760:
	mov r4, #0
	b _02113770
_02113768:
	sub r0, r1, #1
	add r4, r3, r0, lsl #5
_02113770:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb lr, [r4, #6]
	cmp lr, #1
	ldmltfd sp!, {r4, pc}
	mov r3, #0
	mov r0, #0x60
_02113794:
	cmp r4, #0
	ldrne r12, [r4]
	cmpne r12, #0
	cmpne lr, #0
	ble _021137B4
	ldrb r1, [r4, #6]
	cmp lr, r1
	ble _021137BC
_021137B4:
	mov r12, r3
	b _021137C4
_021137BC:
	sub r1, lr, #1
	mla r12, r1, r0, r12
_021137C4:
	sub lr, lr, #1
	cmp r12, #0
	strneb r2, [r12, #5]
	cmp lr, #1
	bge _02113794
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl12setPolygonIDEih

	arm_func_start _ZN12C3DPlaneCtrl6setTexEiih
_ZN12C3DPlaneCtrl6setTexEiih: ; 0x021137DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r7, r1
	mov r1, r4
	mov r6, r0
	mov r5, r2
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r4, #0
	beq _02113814
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_02113814:
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	ldrne r0, [r6, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211384C
	cmp r7, #0
	ble _0211383C
	cmp r7, r0
	ble _02113844
_0211383C:
	mov r0, #0
	b _0211384C
_02113844:
	sub r0, r7, #1
	add r0, r1, r0, lsl #5
_0211384C:
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	cmpne r5, #0
	ble _0211386C
	ldrb r0, [r0, #6]
	cmp r5, r0
	ble _02113874
_0211386C:
	mov r1, #0
	b _02113880
_02113874:
	sub r2, r5, #1
	mov r0, #0x60
	mla r1, r2, r0, r1
_02113880:
	mov r0, r6
	mov r2, r4
	bl _ZN12C3DPlaneCtrl6setTexEP12S3DPlaneParth
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end _ZN12C3DPlaneCtrl6setTexEiih

	arm_func_start _ZN12C3DPlaneCtrl7setPlttEiih
_ZN12C3DPlaneCtrl7setPlttEiih: ; 0x02113890
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r7, r1
	mov r1, r4
	mov r6, r0
	mov r5, r2
	bl _ZN10C3DSprFile14getSpriteSheetEi
	cmp r4, #0
	beq _021138C8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_021138C8:
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	ldrne r0, [r6, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113900
	cmp r7, #0
	ble _021138F0
	cmp r7, r0
	ble _021138F8
_021138F0:
	mov r0, #0
	b _02113900
_021138F8:
	sub r0, r7, #1
	add r0, r1, r0, lsl #5
_02113900:
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	cmpne r5, #0
	ble _02113920
	ldrb r0, [r0, #6]
	cmp r5, r0
	ble _02113928
_02113920:
	mov r1, #0
	b _02113934
_02113928:
	sub r2, r5, #1
	mov r0, #0x60
	mla r1, r2, r0, r1
_02113934:
	mov r0, r6
	mov r2, r4
	bl _ZN12C3DPlaneCtrl7setPlttEP12S3DPlaneParth
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end _ZN12C3DPlaneCtrl7setPlttEiih

	arm_func_start _ZN12C3DPlaneCtrl10setPlttIdxEiih
_ZN12C3DPlaneCtrl10setPlttIdxEiih: ; 0x02113944
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211397C
	cmp r1, #0
	ble _0211396C
	cmp r1, r0
	ble _02113974
_0211396C:
	mov r0, #0
	b _0211397C
_02113974:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_0211397C:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _0211399C
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _021139A4
_0211399C:
	mov r0, #0
	b _021139B0
_021139A4:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r12
_021139B0:
	cmp r0, #0
	strneb r3, [r0, #0x34]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl10setPlttIdxEiih

	arm_func_start _ZN12C3DPlaneCtrl8setDepthEiij
_ZN12C3DPlaneCtrl8setDepthEiij: ; 0x021139BC
	stmfd sp!, {r4, lr}
	ldr r12, _02113A7C ; =0x00007FFF
	cmp r3, r12
	movhi r3, r12
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113A04
	cmp r1, #0
	ble _021139F4
	cmp r1, r0
	ble _021139FC
_021139F4:
	mov r0, #0
	b _02113A04
_021139FC:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113A04:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113A24
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113A2C
_02113A24:
	mov r4, #0
	b _02113A38
_02113A2C:
	sub r1, r2, #1
	mov r0, #0x60
	mla r4, r1, r0, r12
_02113A38:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	rsb r0, r3, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02113A64
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113A70
_02113A64:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113A70:
	bl _ffix
	str r0, [r4, #0x24]
	ldmfd sp!, {r4, pc}
_02113A7C: .word 0x00007FFF
	arm_func_end _ZN12C3DPlaneCtrl8setDepthEiij

	arm_func_start _ZN12C3DPlaneCtrl8setAlphaEiih
_ZN12C3DPlaneCtrl8setAlphaEiih: ; 0x02113A80
	ldr r12, [r0, #0x1c]
	cmp r3, #0x1f
	movhi r3, #0x1f
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113AC0
	cmp r1, #0
	ble _02113AB0
	cmp r1, r0
	ble _02113AB8
_02113AB0:
	mov r0, #0
	b _02113AC0
_02113AB8:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113AC0:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113AE0
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113AE8
_02113AE0:
	mov r0, #0
	b _02113AF4
_02113AE8:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r12
_02113AF4:
	cmp r0, #0
	strneb r3, [r0, #4]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl8setAlphaEiih

	arm_func_start _ZN12C3DPlaneCtrl12setColorMaskEiit
_ZN12C3DPlaneCtrl12setColorMaskEiit: ; 0x02113B00
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113B38
	cmp r1, #0
	ble _02113B28
	cmp r1, r0
	ble _02113B30
_02113B28:
	mov r0, #0
	b _02113B38
_02113B30:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113B38:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113B58
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113B60
_02113B58:
	mov r0, #0
	b _02113B6C
_02113B60:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r12
_02113B6C:
	cmp r0, #0
	strneh r3, [r0, #6]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl12setColorMaskEiit

	arm_func_start _ZN12C3DPlaneCtrl6setPosEiiss
_ZN12C3DPlaneCtrl6setPosEiiss: ; 0x02113B78
	stmfd sp!, {r4, lr}
	ldr r12, [r0, #0x1c]
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02113BB4
	cmp r1, #0
	ble _02113BA4
	cmp r1, r0
	ble _02113BAC
_02113BA4:
	mov r0, #0
	b _02113BB4
_02113BAC:
	sub r0, r1, #1
	add r0, r12, r0, lsl #5
_02113BB4:
	cmp r0, #0
	ldrne r12, [r0]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113BD4
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02113BDC
_02113BD4:
	mov r4, #0
	b _02113BE8
_02113BDC:
	sub r1, r2, #1
	mov r0, #0x60
	mla r4, r1, r0, r12
_02113BE8:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	cmp r3, #0
	mov r0, r3, lsl #0xc
	ble _02113C10
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113C1C
_02113C10:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113C1C:
	bl _ffix
	ldrsh r1, [sp, #8]
	str r0, [r4, #0x1c]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _02113C48
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02113C54
_02113C48:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02113C54:
	bl _ffix
	str r0, [r4, #0x20]
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl6setPosEiiss

	arm_func_start _ZN12C3DPlaneCtrl11setTexScaleEiiss
_ZN12C3DPlaneCtrl11setTexScaleEiiss: ; 0x02113C60
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113C9C
	cmp r1, #0
	ble _02113C8C
	cmp r1, r12
	ble _02113C94
_02113C8C:
	mov r1, #0
	b _02113C9C
_02113C94:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113C9C:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113CBC
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113CC4
_02113CBC:
	mov r1, #0
	b _02113CD0
_02113CC4:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113CD0:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r2, [r1, #0x10]
	cmp r2, r3
	ldreqsh r12, [r1, #0x12]
	ldreqsh r2, [sp, #8]
	cmpeq r12, r2
	ldmeqfd sp!, {r3, pc}
	ldrsh r12, [sp, #8]
	strh r3, [r1, #0x10]
	mov r2, #0xd
	strh r12, [r1, #0x12]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl11setTexScaleEiiss

	arm_func_start _ZN12C3DPlaneCtrl8setTexWHEiiss
_ZN12C3DPlaneCtrl8setTexWHEiiss: ; 0x02113D08
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113D44
	cmp r1, #0
	ble _02113D34
	cmp r1, r12
	ble _02113D3C
_02113D34:
	mov r1, #0
	b _02113D44
_02113D3C:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113D44:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113D64
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113D6C
_02113D64:
	mov r1, #0
	b _02113D78
_02113D6C:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113D78:
	mov r2, r3
	ldrsh r3, [sp, #8]
	bl _ZN12C3DPlaneCtrl8setTexWHEP12S3DPlanePartss
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl8setTexWHEiiss

	arm_func_start _ZN12C3DPlaneCtrl8setTexSTEiiss
_ZN12C3DPlaneCtrl8setTexSTEiiss: ; 0x02113D88
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113DC4
	cmp r1, #0
	ble _02113DB4
	cmp r1, r12
	ble _02113DBC
_02113DB4:
	mov r1, #0
	b _02113DC4
_02113DBC:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113DC4:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113DE4
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113DEC
_02113DE4:
	mov r1, #0
	b _02113DF8
_02113DEC:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113DF8:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r2, [r1, #0xc]
	cmp r2, r3
	ldreqsh r12, [r1, #0xe]
	ldreqsh r2, [sp, #8]
	cmpeq r12, r2
	ldmeqfd sp!, {r3, pc}
	ldrsh r12, [sp, #8]
	strh r3, [r1, #0xc]
	mov r2, #2
	strh r12, [r1, #0xe]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl8setTexSTEiiss

	arm_func_start _ZN12C3DPlaneCtrl11setRotationEiit
_ZN12C3DPlaneCtrl11setRotationEiit: ; 0x02113E30
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113E6C
	cmp r1, #0
	ble _02113E5C
	cmp r1, r12
	ble _02113E64
_02113E5C:
	mov r1, #0
	b _02113E6C
_02113E64:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113E6C:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113E8C
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113E94
_02113E8C:
	mov r1, #0
	b _02113EA0
_02113E94:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113EA0:
	cmp r1, #0
	ldrneh r2, [r1, #0x14]
	cmpne r2, r3
	ldmeqfd sp!, {r3, pc}
	mov r2, #2
	strh r3, [r1, #0x14]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl11setRotationEiit

	arm_func_start _ZN12C3DPlaneCtrl7setFlagEiitb
_ZN12C3DPlaneCtrl7setFlagEiitb: ; 0x02113EC0
	stmfd sp!, {r3, lr}
	ldrb r12, [sp, #8]
	cmp r12, #0
	bne _02113ED8
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldmfd sp!, {r3, pc}
_02113ED8:
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113F10
	cmp r1, #0
	ble _02113F00
	cmp r1, r12
	ble _02113F08
_02113F00:
	mov r1, #0
	b _02113F10
_02113F08:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113F10:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113F30
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113F38
_02113F30:
	mov r1, #0
	b _02113F44
_02113F38:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113F44:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02113F78 ; =0x0000F0FF
	ldrh r12, [r1, #2]
	and r2, r3, r2
	mov r2, r2, lsl #0x10
	orr r2, r12, r2, lsr #16
	strh r2, [r1, #2]
	tst r3, #0x3c
	ldmeqfd sp!, {r3, pc}
	mov r2, #2
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
_02113F78: .word 0x0000F0FF
	arm_func_end _ZN12C3DPlaneCtrl7setFlagEiitb

	arm_func_start _ZN12C3DPlaneCtrl9clearFlagEiit
_ZN12C3DPlaneCtrl9clearFlagEiit: ; 0x02113F7C
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02113FB8
	cmp r1, #0
	ble _02113FA8
	cmp r1, r12
	ble _02113FB0
_02113FA8:
	mov r1, #0
	b _02113FB8
_02113FB0:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02113FB8:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02113FD8
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02113FE0
_02113FD8:
	mov r1, #0
	b _02113FEC
_02113FE0:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_02113FEC:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r12, [r1, #2]
	mvn r2, r3
	mov r2, r2, lsl #0x10
	and r2, r12, r2, lsr #16
	strh r2, [r1, #2]
	tst r3, #0x3c
	ldmeqfd sp!, {r3, pc}
	mov r2, #2
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl9clearFlagEiit

	arm_func_start _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
_ZN12C3DPlaneCtrl13setGraphicIdxEiihb: ; 0x0211401C
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x1c]
	cmp lr, #0
	ldrne r12, [r0, #0x20]
	cmpne r12, #0
	movle r1, #0
	ble _02114058
	cmp r1, #0
	ble _02114048
	cmp r1, r12
	ble _02114050
_02114048:
	mov r1, #0
	b _02114058
_02114050:
	sub r1, r1, #1
	add r1, lr, r1, lsl #5
_02114058:
	cmp r1, #0
	ldrne r12, [r1]
	cmpne r12, #0
	cmpne r2, #0
	ble _02114078
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02114080
_02114078:
	mov r1, #0
	b _0211408C
_02114080:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, r12
_0211408C:
	mov r2, r3
	ldrb r3, [sp, #8]
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEP12S3DPlaneParthb
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN12C3DPlaneCtrl13setGraphicIdxEiihb

	arm_func_start _ZN12C3DPlaneCtrl12setRotAnchorEiihh
_ZN12C3DPlaneCtrl12setRotAnchorEiihh: ; 0x0211409C
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c]
	ldr r12, [sp, #8]
	cmp r4, #0
	ldrne lr, [r0, #0x20]
	cmpne lr, #0
	movle r1, #0
	ble _021140DC
	cmp r1, #0
	ble _021140CC
	cmp r1, lr
	ble _021140D4
_021140CC:
	mov r1, #0
	b _021140DC
_021140D4:
	sub r1, r1, #1
	add r1, r4, r1, lsl #5
_021140DC:
	cmp r1, #0
	ldrne lr, [r1]
	cmpne lr, #0
	cmpne r2, #0
	ble _021140FC
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _02114104
_021140FC:
	mov r1, #0
	b _02114110
_02114104:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, lr
_02114110:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r2, [r1, #0x18]
	cmp r3, #0x64
	movhi r3, #0x64
	cmp r12, #0x64
	movhi r12, #0x64
	cmp r2, r3
	ldreqb r2, [r1, #0x19]
	cmpeq r2, r12
	ldmeqfd sp!, {r4, pc}
	strb r3, [r1, #0x18]
	mov r2, #8
	strb r12, [r1, #0x19]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl12setRotAnchorEiihh

	arm_func_start _ZN12C3DPlaneCtrl12setPosAnchorEiihh
_ZN12C3DPlaneCtrl12setPosAnchorEiihh: ; 0x02114150
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c]
	ldr r12, [sp, #8]
	cmp r4, #0
	ldrne lr, [r0, #0x20]
	cmpne lr, #0
	movle r1, #0
	ble _02114190
	cmp r1, #0
	ble _02114180
	cmp r1, lr
	ble _02114188
_02114180:
	mov r1, #0
	b _02114190
_02114188:
	sub r1, r1, #1
	add r1, r4, r1, lsl #5
_02114190:
	cmp r1, #0
	ldrne lr, [r1]
	cmpne lr, #0
	cmpne r2, #0
	ble _021141B0
	ldrb r1, [r1, #6]
	cmp r2, r1
	ble _021141B8
_021141B0:
	mov r1, #0
	b _021141C4
_021141B8:
	sub r2, r2, #1
	mov r1, #0x60
	mla r1, r2, r1, lr
_021141C4:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r2, [r1, #0x1a]
	cmp r3, #0x64
	movhi r3, #0x64
	cmp r12, #0x64
	movhi r12, #0x64
	cmp r2, r3
	ldreqb r2, [r1, #0x1b]
	cmpeq r2, r12
	ldmeqfd sp!, {r4, pc}
	strb r3, [r1, #0x1a]
	mov r2, #4
	strb r12, [r1, #0x1b]
	bl _ZN12C3DPlaneCtrl13setUpdateFlagEP12S3DPlaneParth
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl12setPosAnchorEiihh

	arm_func_start _ZN12C3DPlaneCtrl12setColorMaskEit
_ZN12C3DPlaneCtrl12setColorMaskEit: ; 0x02114204
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211423C
	cmp r1, #0
	ble _0211422C
	cmp r1, r0
	ble _02114234
_0211422C:
	mov r0, #0
	b _0211423C
_02114234:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_0211423C:
	cmp r0, #0
	strneh r2, [r0, #0x14]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl12setColorMaskEit

	arm_func_start _ZN12C3DPlaneCtrl6setPosEiss
_ZN12C3DPlaneCtrl6setPosEiss: ; 0x02114248
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, [r0, #0x1c]
	mov r5, r3
	cmp r12, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r4, #0
	ble _02114288
	cmp r1, #0
	ble _02114278
	cmp r1, r0
	ble _02114280
_02114278:
	mov r4, #0
	b _02114288
_02114280:
	sub r0, r1, #1
	add r4, r12, r0, lsl #5
_02114288:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _021142B0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021142BC
_021142B0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021142BC:
	bl _ffix
	str r0, [r4, #8]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _021142E4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021142F0
_021142E4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021142F0:
	bl _ffix
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN12C3DPlaneCtrl6setPosEiss

	arm_func_start _ZN12C3DPlaneCtrl7setFlagEitb
_ZN12C3DPlaneCtrl7setFlagEitb: ; 0x021142FC
	stmfd sp!, {r3, lr}
	cmp r3, #0
	bne _02114310
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	ldmfd sp!, {r3, pc}
_02114310:
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r3, #0
	ble _02114348
	cmp r1, #0
	ble _02114338
	cmp r1, r0
	ble _02114340
_02114338:
	mov r3, #0
	b _02114348
_02114340:
	sub r0, r1, #1
	add r3, r3, r0, lsl #5
_02114348:
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211436C ; =0x00007003
	ldrh r1, [r3, #4]
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	strh r0, [r3, #4]
	ldmfd sp!, {r3, pc}
_0211436C: .word 0x00007003
	arm_func_end _ZN12C3DPlaneCtrl7setFlagEitb

	arm_func_start _ZN12C3DPlaneCtrl9clearFlagEit
_ZN12C3DPlaneCtrl9clearFlagEit: ; 0x02114370
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r3, #0
	ble _021143A8
	cmp r1, #0
	ble _02114398
	cmp r1, r0
	ble _021143A0
_02114398:
	mov r3, #0
	b _021143A8
_021143A0:
	sub r0, r1, #1
	add r3, r3, r0, lsl #5
_021143A8:
	cmp r3, #0
	bxeq lr
	ldr r0, _021143D0 ; =0x00007003
	ldrh r1, [r3, #4]
	and r0, r2, r0
	mvn r0, r0
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r3, #4]
	bx lr
_021143D0: .word 0x00007003
	arm_func_end _ZN12C3DPlaneCtrl9clearFlagEit

	arm_func_start _ZN12C3DPlaneCtrl10getPartExtEii
_ZN12C3DPlaneCtrl10getPartExtEii: ; 0x021143D4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _0211440C
	cmp r1, #0
	ble _021143FC
	cmp r1, r0
	ble _02114404
_021143FC:
	mov r0, #0
	b _0211440C
_02114404:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_0211440C:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _0211442C
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02114434
_0211442C:
	mov r0, #0
	bx lr
_02114434:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl10getPartExtEii

	arm_func_start _ZN12C3DPlaneCtrl9getSetExtEi
_ZN12C3DPlaneCtrl9getSetExtEi: ; 0x02114444
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	bxle lr
	cmp r1, #0
	ble _0211446C
	cmp r1, r0
	ble _02114474
_0211446C:
	mov r0, #0
	bx lr
_02114474:
	sub r0, r1, #1
	add r0, r2, r0, lsl #5
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl9getSetExtEi

	arm_func_start _ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_
_ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_: ; 0x02114480
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x1c]
	ldr r12, [sp, #8]
	cmp r4, #0
	ldrne r0, [r0, #0x20]
	mov lr, #0
	cmpne r0, #0
	movle r0, #0
	ble _021144C4
	cmp r1, #0
	ble _021144B4
	cmp r1, r0
	ble _021144BC
_021144B4:
	mov r0, #0
	b _021144C4
_021144BC:
	sub r0, r1, #1
	add r0, r4, r0, lsl #5
_021144C4:
	cmp r0, #0
	ldrne r4, [r0]
	cmpne r4, #0
	cmpne r2, #0
	ble _021144E4
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _021144EC
_021144E4:
	mov r2, #0
	b _021144F8
_021144EC:
	sub r1, r2, #1
	mov r0, #0x60
	mla r2, r1, r0, r4
_021144F8:
	cmp r2, #0
	beq _0211451C
	cmp r3, #0
	ldrnesh r0, [r2, #8]
	strne r0, [r3]
	cmp r12, #0
	ldrnesh r0, [r2, #0xa]
	strne r0, [r12]
	ldmfd sp!, {r4, pc}
_0211451C:
	cmp r3, #0
	strne lr, [r3]
	cmp r12, #0
	strne lr, [r12]
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_

	arm_func_start _ZN12C3DPlaneCtrl8getAlphaEii
_ZN12C3DPlaneCtrl8getAlphaEii: ; 0x02114530
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02114568
	cmp r1, #0
	ble _02114558
	cmp r1, r0
	ble _02114560
_02114558:
	mov r0, #0
	b _02114568
_02114560:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_02114568:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _02114588
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02114590
_02114588:
	mov r0, #0
	b _0211459C
_02114590:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
_0211459C:
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #4]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl8getAlphaEii

	arm_func_start _ZN12C3DPlaneCtrl13getAnchorPctXEii
_ZN12C3DPlaneCtrl13getAnchorPctXEii: ; 0x021145AC
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _021145E4
	cmp r1, #0
	ble _021145D4
	cmp r1, r0
	ble _021145DC
_021145D4:
	mov r0, #0
	b _021145E4
_021145DC:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_021145E4:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _02114604
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _0211460C
_02114604:
	mov r0, #0
	b _02114618
_0211460C:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
_02114618:
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x1a]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl13getAnchorPctXEii

	arm_func_start _ZN12C3DPlaneCtrl13getAnchorPctYEii
_ZN12C3DPlaneCtrl13getAnchorPctYEii: ; 0x02114628
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	ldrne r0, [r0, #0x20]
	cmpne r0, #0
	movle r0, #0
	ble _02114660
	cmp r1, #0
	ble _02114650
	cmp r1, r0
	ble _02114658
_02114650:
	mov r0, #0
	b _02114660
_02114658:
	sub r0, r1, #1
	add r0, r3, r0, lsl #5
_02114660:
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	cmpne r2, #0
	ble _02114680
	ldrb r0, [r0, #6]
	cmp r2, r0
	ble _02114688
_02114680:
	mov r0, #0
	b _02114694
_02114688:
	sub r1, r2, #1
	mov r0, #0x60
	mla r0, r1, r0, r3
_02114694:
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x1b]
	bx lr
	arm_func_end _ZN12C3DPlaneCtrl13getAnchorPctYEii
	

	arm_func_start _ZN12C3DPlaneCtrl17convertTilesToTexEi
_ZN12C3DPlaneCtrl17convertTilesToTexEi: ; 0x021146A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	bl _ZN10C3DSprFile14getSpriteSheetEi
	str r0, [sp, #0xc]
	cmp r0, #0
	ldrne r0, [r0, #4]
	strne r0, [sp, #0x20]
	cmpne r0, #0
	ldrne r0, [r0]
	cmpne r0, #3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x20]
	mov r5, #8
	ldr r1, [r0, #0x1c]
	ldr r3, [r0, #0xc]
	add r0, r0, r1
	ldrb r1, [r0, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	cmp r1, #3
	ldr r2, [r0, #0x14]
	add r0, r0, r3
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r6, #1
	add r0, r0, r2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	moveq r6, #2
	ldr r0, [r0, #4]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r1, r5, lsl r1
	mov r0, r5, lsl r0
	mul r0, r1, r0
	mov r1, r6
	bl _s32_div_f
	mov r4, r0
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #8]
	add r0, r4, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r2, [r0, #0x20]
	ldr r0, [sp, #4]
	add r0, r0, r1
	add r1, r2, r0
	ldr r0, _02114914 ; =gAllocator
	bl _ZN10CAllocator8allocateEm
	mov r2, #3
	str r2, [r0]
	mov r2, #0x20
	stmib r0, {r2, r4}
	add r3, r4, #0x20
	str r0, [sp]
	str r3, [r0, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, r6
	ldr r6, [r0, #8]
	ldr r0, [sp]
	mov r2, r3
	add r3, r3, r6
	str r6, [r0, #0x10]
	add r4, r0, #0x20
	str r3, [r0, #0x14]
	ldr r0, [sp, #0x20]
	add r2, r2, r6
	ldr r6, [r0, #0x20]
	mov r0, r5
	add r3, r6, r2
	ldr r2, [sp]
	str r6, [r2, #0x18]
	str r3, [r2, #0x1c]
	bl _s32_div_f
	mov r10, r0
	ldr r0, [sp, #0x14]
	mov r8, #0
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r2, r5, lsl r1
	mov r1, r5, lsl r0
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r6, r0, asr #3
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _02114890
	mov r0, r10, lsl #3
	str r0, [sp, #8]
_02114820:
	cmp r6, #0
	mov r7, #0
	ble _02114880
	mul r1, r8, r6
	ldr r0, [sp, #0x1c]
	add r11, r0, r1, lsl #1
_02114838:
	mov r0, r7, lsl #1
	ldrh r2, [r0, r11]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r9, #0
	mla r5, r1, r2, r0
_02114850:
	mla r0, r9, r10, r5
	add r1, r9, r8, lsl #3
	mla r2, r1, r6, r7
	mla r1, r10, r2, r4
	mov r2, r10
	bl MI_CpuCopy8
	add r9, r9, #1
	cmp r9, #8
	blt _02114850
	add r7, r7, #1
	cmp r7, r6
	blt _02114838
_02114880:
	ldr r0, [sp, #0x10]
	add r8, r8, #1
	cmp r8, r0
	blt _02114820
_02114890:
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	ldr r1, [sp]
	add r1, r1, r3
	bl MI_CpuCopy8
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r3, [r0, #0x14]
	ldr r2, [r0, #0x18]
	ldr r0, [sp, #0x14]
	add r1, r1, r3
	bl MI_CpuCopy8
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #8]
	ldr r2, [r0, #0x20]
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp]
	add r1, r2, r1
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	ldr r0, _02114914 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	str r1, [r0, #4]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02114914: .word gAllocator
	arm_func_end _ZN12C3DPlaneCtrl17convertTilesToTexEi

	arm_func_start _ZN12C3DPlaneCtrl17convertTilesToTexEii8GXTexFmt
_ZN12C3DPlaneCtrl17convertTilesToTexEii8GXTexFmt: ; 0x02114918
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	mov r11, r2
	str r3, [sp]
	bl _ZN10C3DSprFile14getSpriteSheetEi
	str r0, [sp, #0x10]
	cmp r0, #0
	ldrne r0, [r0, #4]
	strne r0, [sp, #0x30]
	cmpne r0, #0
	addeq sp, sp, #0x3c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r0]
	cmp r0, #3
	addlo sp, sp, #0x3c
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x30]
	mov r6, #2
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, [sp]
	cmp r0, #3
	ldr r0, [sp, #0x30]
	movne r6, #1
	add r0, r0, r2
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	mov r1, r11
	ldr r0, [r0, #4]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #0x10]
	bl _u32_div_f
	mov r1, #0
	mov r0, r0, lsr #1
	str r0, [sp, #0x24]
	mov r0, #4
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, r11, lsl #3
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x24]
	mov r5, r0
	mov r1, r1, lsl #3
	str r1, [sp, #0x14]
_021149EC:
	ldr r1, [sp, #0x18]
	mov r5, r5, lsl #1
	cmp r1, r5
	ble _02114A10
	ldr r1, [sp, #0x20]
	cmp r5, #0x400
	add r1, r1, #1
	str r1, [sp, #0x20]
	blt _021149EC
_02114A10:
	ldr r1, [sp, #0x14]
	mov r0, r0, lsl #1
	cmp r1, r0
	ble _02114A34
	ldr r1, [sp, #0x1c]
	cmp r0, #0x400
	add r1, r1, #1
	str r1, [sp, #0x1c]
	blt _02114A10
_02114A34:
	mul r0, r5, r0
	mov r1, r6
	bl _s32_div_f
	mov r4, r0
	ldr r0, [sp, #0x30]
	add r2, r4, #0x30
	ldr r1, [r0, #8]
	ldr r0, _02114BF4 ; =gAllocator
	add r1, r2, r1
	str r1, [sp, #8]
	bl _ZN10CAllocator8allocateEm
	mov r2, #3
	str r2, [r0]
	mov r2, #0x20
	stmib r0, {r2, r4}
	add r3, r4, #0x20
	str r0, [sp, #4]
	str r3, [r0, #0xc]
	ldr r0, [sp, #0x30]
	mov r2, #0x10
	ldr r4, [r0, #8]
	ldr r0, [sp, #4]
	add r3, r3, r4
	str r4, [r0, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	ldr r2, [sp, #8]
	mov r1, r6
	str r2, [r0, #0x1c]
	add r4, r0, #0x20
	mov r0, #8
	bl _s32_div_f
	mov r10, r0
	ldr r0, [sp, #0x24]
	mov r7, #0
	cmp r0, #0
	mov r0, r5, asr #2
	add r0, r5, r0, lsr #29
	mov r9, r0, asr #3
	ble _02114B54
	mov r0, r10, lsl #3
	str r0, [sp, #0xc]
_02114ADC:
	cmp r11, #0
	mov r6, #0
	ble _02114B44
	mul r1, r7, r11
	ldr r0, [sp, #0x2c]
	add r0, r0, r1, lsl #1
	str r0, [sp, #0x38]
_02114AF8:
	ldr r0, [sp, #0x38]
	mov r1, r6, lsl #1
	ldrh r2, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x28]
	mov r8, #0
	mla r5, r1, r2, r0
_02114B14:
	mla r0, r8, r10, r5
	add r1, r8, r7, lsl #3
	mla r2, r1, r9, r6
	mla r1, r10, r2, r4
	mov r2, r10
	bl MI_CpuCopy8
	add r8, r8, #1
	cmp r8, #8
	blt _02114B14
	add r6, r6, #1
	cmp r6, r11
	blt _02114AF8
_02114B44:
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	cmp r7, r0
	blt _02114ADC
_02114B54:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	ldr r1, [sp, #4]
	add r1, r1, r3
	bl MI_CpuCopy8
	ldr r0, [sp, #4]
	mov r4, #1
	ldr r1, [r0, #0x14]
	ldr r2, [sp, #0x14]
	strh r4, [r0, r1]
	add r3, r0, r1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #8]
	strb r0, [r3, #2]
	ldr r0, [sp, #0x1c]
	strb r0, [r3, #3]
	ldr r0, [sp]
	strb r0, [r3, #4]
	mov r0, #0
	strh r0, [r3, #8]
	strh r0, [r3, #0xa]
	ldr r0, [sp, #0x18]
	strh r0, [r3, #0xc]
	ldr r0, [sp, #4]
	strh r2, [r3, #0xe]
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #4]
	ldr r0, _02114BF4 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	str r1, [r0, #4]
	strb r4, [r0, #0x32]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02114BF4: .word gAllocator
	arm_func_end _ZN12C3DPlaneCtrl17convertTilesToTexEii8GXTexFmt

	.section .init, 4
	arm_static_func_start __sinit_C3DPlaneCtrl.cpp
__sinit_C3DPlaneCtrl.cpp: ; 0x021182A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021182E8 ; =0x02119E64
	str r0, [r4, #0x10]
	ldr r0, _021182EC ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _021182F0 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021182E8: .word ov16_02119E64
_021182EC: .word 0x00009CCD
_021182F0: .word 0x0000EA3C
	arm_func_end __sinit_C3DPlaneCtrl.cpp

	.section .ctor, 4
.p__sinit_C3DPlaneCtrl:
#pragma force_active on
	.word __sinit_C3DPlaneCtrl.cpp

	.data
ov16_02119E64:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

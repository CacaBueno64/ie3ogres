.public NNS_G3dGetCurrentMtx
.public NNS_G3dGeBufferOP_N
.public NNS_G3dGlbFlushVP
.public FUN_02053a70
.public MTX_Inverse43
.public FUN_02053b48
.public NNS_G3dGlb_cameraMtx
.public NNS_G3dMdlSetMdlDiffAll
.public NNS_G3dMdlSetMdlAlphaAll
.public NNS_G3dRenderObjSetInitFunc
.public FUN_02053f7c
.public NNS_G3dRenderObjResetCallBack
.public FUN_ov16_020ef714
.public NNS_G3dGeFlushBuffer
.public OS_GetTick
.public G3X_GetBoxTestResult
.public MIi_CpuClearFast
.public FUN_ov16_020fc538
.public FUN_ov16_02110b80
.public FUN_ov16_02111164
.public FUN_ov16_020fd21c
.public gNsbResourceMan
.public FUN_ov16_020fcd08
.public FUN_ov16_020fcb70
.public FUN_ov16_020fcef8
.public FUN_ov16_020fd120
.public _ZN10CAllocator8allocateEm
.public NNS_G3dRenderObjInit
.public FUN_ov16_020fd660
.public FUN_ov16_020fd4cc
.public FUN_02053c20
.public gAllocator
.public _ZN10CAllocator10deallocateEPv
.public FUN_ov16_02110db4
.public FUN_ov16_020fc5f8
.public FUN_ov16_020fd350
.public FUN_ov16_020fc748
.public FUN_ov16_02110cc8
.public FUN_ov16_02110bbc
.public FUN_ov16_02110bfc
.public FUN_ov16_02110f78
.public FUN_ov16_02110d18
.public NNS_G3dGetMdlSet
.public NNS_G3dGetTex
.public FUN_ov16_02110f20
.public FUN_ov16_020fc55c
.public FUN_ov16_020fc578
.public FUN_ov16_020fc5bc
.public FUN_ov16_020fc8d0
.public FUN_ov16_020fc630
.public FUN_ov16_020fc7b4
.public FUN_ov16_020fc898
.public FUN_ov16_020fd278
.public FUN_ov16_02110f00
.public FUN_ov16_020fd878
.public FUN_ov16_021110ac
.public FUN_ov16_020fd8ec
.public FUN_ov16_021110d4
.public FUN_ov16_02111248
.public FUN_ov16_02110f54
.public FUN_ov16_02110df0
.public NNS_G3dBindMdlTex
.public NNS_G3dBindMdlPltt
.public NNS_G3dReleaseMdlTex
.public NNS_G3dReleaseMdlPltt
.public FUN_ov16_02110eb4
.public FX_Sqrt

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_020f9470
FUN_ov16_020f9470: ; 0x020F9470
	ldr r12, _020F9494 ; =FUN_ov16_020f949c
	ldr r2, _020F9498 ; =FUN_ov16_020f952c
	mov r3, #3
	mov r1, #2
	str r12, [r0, #0x24]
	strb r3, [r0, #0x92]
	str r2, [r0, #0x14]
	strb r1, [r0, #0x8e]
	bx lr
_020F9494: .word FUN_ov16_020f949c
_020F9498: .word FUN_ov16_020f952c
	arm_func_end FUN_ov16_020f9470

	arm_func_start FUN_ov16_020f949c
FUN_ov16_020f949c: ; 0x020F949C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	tst r1, #0x10
	ldrneb r12, [r0, #0xae]
	ldr r1, [r0, #4]
	mvneq r12, #0
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r1, #0x2c]
	cmp r3, #0
	moveq r1, #0
	streq r1, [r0, #0x24]
	streqb r1, [r0, #0x92]
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [r3, #0x40]
	ldr r1, [r3, #0x14]
	tst r2, #2
	beq _020F94F8
	mov r0, #0x30
	mla r0, r12, r0, r1
	mov r1, #0
	bl NNS_G3dGetCurrentMtx
	ldmfd sp!, {r3, pc}
_020F94F8:
	tst r2, #4
	beq _020F951C
	ldrsb r0, [r3, #0x49]
	cmp r12, r0
	ldmnefd sp!, {r3, pc}
	mov r0, r1
	mov r1, #0
	bl NNS_G3dGetCurrentMtx
	ldmfd sp!, {r3, pc}
_020F951C:
	mov r1, #0
	str r1, [r0, #0x24]
	strb r1, [r0, #0x92]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f949c

	arm_func_start FUN_ov16_020f952c
FUN_ov16_020f952c: ; 0x020F952C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x10
	ldrneb r1, [r4, #0xae]
	ldr r0, [r4, #4]
	mvneq r1, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x14]
	streqb r0, [r4, #0x8e]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020fab74
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0xb8]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020f952c

	arm_func_start FUN_ov16_020f9588
FUN_ov16_020f9588: ; 0x020F9588
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_020f9588

	arm_func_start FUN_ov16_020f959c
FUN_ov16_020f959c: ; 0x020F959C
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020f959c

	arm_func_start FUN_ov16_020f95b0
FUN_ov16_020f95b0: ; 0x020F95B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r1, #0x40]
	mov r5, #0
	tst r0, #2
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	ldrne r5, [r1, #0x14]
	cmp r5, #0
	beq _020F9624
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	ldrsb r2, [r4, #0xd]
	mov r1, #0x30
	mov r0, #0x19
	mla r1, r2, r1, r5
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F9624:
	add r0, sp, #0x18
	bl FUN_ov16_020fa538
	ldr r5, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r7, sp, #0x24
	mov r6, #3
	str r0, [sp, #0x2c]
	mov r1, r7
	mov r2, r6
	str r5, [sp, #0x24]
	str r3, [sp, #0x28]
	mov r0, #0x1c
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r4, #0x10]
	add r0, sp, #0xc
	bl FUN_ov16_020fa54c
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	add r5, sp, #0x30
	str r0, [sp, #0x2c]
	str r1, [sp, #0x24]
	mov r0, r5
	ldmia r7, {r1, r2, r3}
	bl FUN_02053a70
	mov r1, r5
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r4, #0x10]
	add r0, sp, #0
	bl FUN_ov16_020fa560
	ldr r3, [sp]
	ldr r0, [sp, #4]
	str r3, [sp, #0x24]
	ldr r3, [sp, #8]
	str r0, [sp, #0x28]
	mov r1, r7
	mov r2, r6
	mov r0, #0x1b
	str r3, [sp, #0x2c]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f95b0

	arm_func_start FUN_ov16_020f96dc
FUN_ov16_020f96dc: ; 0x020F96DC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r4, r0
	add r1, r4, #0x18
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldrh r0, [r4, #0x40]
	tst r0, #0x10
	beq _020F9748
	ldr lr, _020F9784 ; =NNS_G3dGlb_cameraMtx
	add r12, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	mov r5, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	mov r0, r5
	mov r1, r5
	bl MTX_Inverse43
	b _020F975C
_020F9748:
	add r5, sp, #0
	add r1, r4, #0x24
	mov r0, r5
	ldmia r1, {r1, r2, r3}
	bl FUN_02053b48
_020F975C:
	mov r1, r5
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add r1, r4, #0x30
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, pc}
_020F9784: .word NNS_G3dGlb_cameraMtx
	arm_func_end FUN_ov16_020f96dc

	arm_func_start FUN_ov16_020f9788
FUN_ov16_020f9788: ; 0x020F9788
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fa638
	ldrh r1, [r4, #0xe]
	bl NNS_G3dMdlSetMdlDiffAll
	mov r0, r4
	bl FUN_ov16_020fa638
	ldrb r1, [r4, #0x4b]
	bl NNS_G3dMdlSetMdlAlphaAll
	ldrb r0, [r4, #0x43]
	cmp r0, #0
	bne _020F97C4
	mov r0, r4
	mov r1, #1
	bl FUN_ov16_020fac0c
_020F97C4:
	ldr r4, [r4, #8]
	ldr r1, _020F97E8 ; =FUN_ov16_020f9470
	mov r0, r4
	bl NNS_G3dRenderObjSetInitFunc
	mov r0, r4
	bl FUN_02053f7c
	mov r0, r4
	bl NNS_G3dRenderObjResetCallBack
	ldmfd sp!, {r4, pc}
_020F97E8: .word FUN_ov16_020f9470
	arm_func_end FUN_ov16_020f9788

	arm_func_start FUN_ov16_020f97ec
FUN_ov16_020f97ec: ; 0x020F97EC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	ldr r1, [r5, #0x44]
	cmp r1, #0
	addle sp, sp, #0x48
	ldmlefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x48]
	cmp r1, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020faab0
	cmp r0, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r12, [r5, #0x14]
	cmp r12, #0
	beq _020F98B0
	ldrsb r1, [r5, #0x49]
	cmp r1, #0
	blt _020F98B0
	ldrh r0, [r5, #0x40]
	tst r0, #6
	beq _020F98B0
	tst r0, #2
	beq _020F9860
	mov r0, #0x30
	mla r12, r1, r0, r12
	b _020F9868
_020F9860:
	tst r0, #4
	beq _020F9884
_020F9868:
	add r4, sp, #0x18
	ldmia r12!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
_020F9884:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	addlt sp, sp, #0x48
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	b _020F98D8
_020F98B0:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	addlt sp, sp, #0x48
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x20]
	ldr r1, [r5, #0x18]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
_020F98D8:
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r4, #3
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x1c
	bl NNS_G3dGeBufferOP_N
	ldr r3, [r5, #0x44]
	ldr r1, [r5, #0x30]
	mov r0, #0x1000
	str r0, [sp, #0x10]
	smull r1, r0, r3, r1
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x38]
	mov r2, r4
	smull r1, r0, r3, r0
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x14]
	add r1, sp, #0xc
	mov r0, #0x1b
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r5, #0x48]
	mov r1, #8
	bl FUN_ov16_020ef714
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020f97ec

	arm_func_start FUN_ov16_020f9968
FUN_ov16_020f9968: ; 0x020F9968
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	bl FUN_ov16_020fabf4
	movs r4, r0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #0x40]
	tst r0, #0x40
	beq _020F99A0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f9ad4
_020F99A0:
	ldrh r0, [r5, #0x40]
	tst r0, #0x20
	addeq sp, sp, #0x20
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsh r0, [r4, #0x18]
	mov r5, #0
	mov r1, r5
	strh r0, [sp, #0x14]
	ldrsh r3, [r4, #0x1a]
	mov r2, r5
	mov r0, #0x11
	strh r3, [sp, #0x16]
	ldrsh r3, [r4, #0x1c]
	strh r3, [sp, #0x18]
	ldrsh r3, [r4, #0x1e]
	strh r3, [sp, #0x1a]
	ldrsh r3, [r4, #0x20]
	strh r3, [sp, #0x1c]
	ldrsh r3, [r4, #0x22]
	strh r3, [sp, #0x1e]
	bl NNS_G3dGeBufferOP_N
	ldr r3, [r4, #0x24]
	mov r4, #3
	add r1, sp, #8
	mov r2, r4
	mov r0, #0x1b
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020F9AC8 ; =0x000030C1
	ldr r3, _020F9ACC ; =0x040004A4
	add r1, sp, #0x14
	str r0, [r3]
	str r5, [r3, #0x5c]
	mov r2, r4
	mov r0, #0x70
	str r5, [r3, #0x60]
	bl NNS_G3dGeBufferOP_N
	bl OS_GetTick
	add r5, sp, #4
	mov r6, r0
	mov r0, r5
	bl G3X_GetBoxTestResult
	cmp r0, #0
	beq _020F9A98
	ldr r4, _020F9AD0 ; =0x7D269B01
_020F9A64:
	bl OS_GetTick
	subs r0, r0, r6
	mov r1, r0, lsl #6
	umull r0, r2, r1, r4
	mov r2, r2, lsr #0xe
	cmp r2, #0x64
	movhi r0, #1
	strhi r0, [sp, #4]
	bhi _020F9A98
	mov r0, r5
	bl G3X_GetBoxTestResult
	cmp r0, #0
	bne _020F9A64
_020F9A98:
	mov r4, #1
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x12
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #4]
	cmp r0, #0
	moveq r4, #0
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AC8: .word 0x000030C1
_020F9ACC: .word 0x040004A4
_020F9AD0: .word 0x7D269B01
	arm_func_end FUN_ov16_020f9968

	arm_func_start FUN_ov16_020f9ad4
FUN_ov16_020f9ad4: ; 0x020F9AD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	ldr r4, _020F9CC8 ; =0x021178F8
	add r3, sp, #0x6c
	mov r8, r1
	mov r2, #5
_020F9AEC:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F9AEC
	ldr r4, _020F9CCC ; =0x021178E4
	add r3, sp, #0x58
	mov r2, #5
_020F9B10:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F9B10
	ldr r4, _020F9CD0 ; =0x0211790C
	add r3, sp, #0x44
	mov r2, #5
_020F9B34:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F9B34
	mov r7, #0
	mov r1, r7
	mov r2, r7
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	ldr r4, _020F9CD4 ; =0x001F801F
	mov r6, #1
	add r1, sp, #0x1c
	mov r2, r6
	mov r0, #0x30
	str r4, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x18
	mov r2, r6
	mov r0, #0x31
	str r4, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
	ldr r0, _020F9CD8 ; =0x3F0000C0
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	mov r2, r6
	mov r0, #0x29
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r8, #0x24]
	mov r4, #3
	mov r5, #0x1b
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	mov r0, r5
	add r1, sp, #0x38
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	ldrsh r9, [r8, #0x1c]
	ldrsh r3, [r8, #0x1a]
	ldrsh r2, [r8, #0x18]
	mov r0, #0x1c
	add r1, sp, #0x2c
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r9, [sp, #0x34]
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	mov r0, r5
	ldrsh r9, [r8, #0x22]
	ldrsh r5, [r8, #0x20]
	ldrsh r3, [r8, #0x1e]
	add r1, sp, #0x20
	mov r2, r4
	str r3, [sp, #0x20]
	str r5, [sp, #0x24]
	str r9, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x40
	add r1, sp, #0x10
	mov r2, r6
	str r4, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x1f
	str r0, [sp, #0xc]
	mov r2, r6
	mov r0, #0x20
	add r1, sp, #0xc
	bl NNS_G3dGeBufferOP_N
	add r6, sp, #0x6c
	add r5, sp, #0x58
	add r4, sp, #0x44
	mov r10, #0x23
	add r9, sp, #4
	mov r8, #2
_020F9C64:
	mov r0, r7, lsl #1
	ldrh r2, [r6, r0]
	ldrh r1, [r5, r0]
	ldrh r3, [r4, r0]
	mov r0, r10
	orr r12, r2, r1, lsl #16
	mov r1, r9
	mov r2, r8
	str r12, [sp, #4]
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	add r7, r7, #1
	cmp r7, #0xa
	blt _020F9C64
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	mov r2, #1
	add r1, sp, #0
	mov r0, #0x12
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F9CC8: .word ov16_021178F8
_020F9CCC: .word ov16_021178E4
_020F9CD0: .word ov16_0211790C
_020F9CD4: .word 0x001F801F
_020F9CD8: .word 0x3F0000C0
	arm_func_end FUN_ov16_020f9ad4

	arm_func_start FUN_ov16_020f9cdc
FUN_ov16_020f9cdc: ; 0x020F9CDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #0x48
	bl MIi_CpuClearFast
	mov r8, #0x1000
	mov r3, #3
	sub r2, r3, #4
	ldrh r0, [r5, #0x40]
	ldr r6, _020F9D7C ; =0x00007FFF
	mov r7, #0x1f
	orr r0, r0, #8
	mov r1, #0x10
	strb r7, [r5, #0x4b]
	strh r6, [r5, #0xe]
	str r8, [r5, #0x30]
	str r8, [r5, #0x34]
	str r8, [r5, #0x38]
	strb r3, [r5, #0x4a]
	strb r2, [r5, #0xd]
	strb r1, [r5, #0x48]
	strb r2, [r5, #0x49]
	str r2, [r5, #0x3c]
	strh r0, [r5, #0x40]
	add r9, r5, #0x4c
	add r8, r5, #0xb0
	mov r6, #0x14
	mov r7, #0x30
_020F9D54:
	mla r0, r4, r6, r9
	bl FUN_ov16_020fc538
	mla r0, r4, r7, r8
	bl FUN_ov16_02110b80
	add r4, r4, #1
	cmp r4, #5
	blt _020F9D54
	add r0, r5, #0x1a0
	bl FUN_ov16_02111164
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F9D7C: .word 0x00007FFF
	arm_func_end FUN_ov16_020f9cdc

	arm_func_start FUN_ov16_020f9d80
FUN_ov16_020f9d80: ; 0x020F9D80
	ldr r12, _020F9D88 ; =FUN_ov16_020fa154
	bx r12
_020F9D88: .word FUN_ov16_020fa154
	arm_func_end FUN_ov16_020f9d80

	arm_func_start FUN_ov16_020f9d8c
FUN_ov16_020f9d8c: ; 0x020F9D8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r2, [r4, #4]
	mov r5, r0
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r2, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fa154
	ldr r0, _020F9DD8 ; =gNsbResourceMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9DD8: .word gNsbResourceMan
	arm_func_end FUN_ov16_020f9d8c

	arm_func_start FUN_ov16_020f9ddc
FUN_ov16_020f9ddc: ; 0x020F9DDC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r4, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fa154
	ldr r0, _020F9E20 ; =gNsbResourceMan
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9E20: .word gNsbResourceMan
	arm_func_end FUN_ov16_020f9ddc

	arm_func_start FUN_ov16_020f9e24
FUN_ov16_020f9e24: ; 0x020F9E24
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r0
	cmp r3, #0
	ldreq r0, [sp, #0x20]
	ldr r5, [sp, #0x20]
	cmpeq r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x24]
	stmia sp, {r3, r5}
	ldrb r0, [sp, #0x24]
	mov r3, r2
	mov r6, #1
	str r0, [sp, #8]
	ldr r0, _020F9E98 ; =gNsbResourceMan
	str r6, [sp, #0xc]
	ldr r0, [r0]
	mov r2, #4
	bl FUN_ov16_020fcd08
	movs r5, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov16_020fa154
	mov r0, r6
	str r5, [r4, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020F9E98: .word gNsbResourceMan
	arm_func_end FUN_ov16_020f9e24

	arm_func_start FUN_ov16_020f9e9c
FUN_ov16_020f9e9c: ; 0x020F9E9C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _020F9ED8 ; =gNsbResourceMan
	str r3, [sp]
	mov r5, r0
	ldr r0, [r12]
	mov r3, #4
	bl FUN_ov16_020fcb70
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fa154
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9ED8: .word gNsbResourceMan
	arm_func_end FUN_ov16_020f9e9c

	arm_func_start FUN_ov16_020f9edc
FUN_ov16_020f9edc: ; 0x020F9EDC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x20]
	str r3, [sp]
	ldr r3, [sp, #0x24]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r5, #1
	ldr r3, _020F9F3C ; =gNsbResourceMan
	str r5, [sp, #0xc]
	mov r6, r0
	ldr r0, [r3]
	mov r3, #4
	bl FUN_ov16_020fcef8
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov16_020fa154
	mov r0, r5
	str r4, [r6, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020F9F3C: .word gNsbResourceMan
	arm_func_end FUN_ov16_020f9edc

	arm_func_start FUN_ov16_020f9f40
FUN_ov16_020f9f40: ; 0x020F9F40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020F9F78 ; =gNsbResourceMan
	mov r5, r0
	ldr r0, [r3]
	mov r3, #4
	bl FUN_ov16_020fd120
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fa154
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020F9F78: .word gNsbResourceMan
	arm_func_end FUN_ov16_020f9f40

	arm_func_start FUN_ov16_020f9f7c
FUN_ov16_020f9f7c: ; 0x020F9F7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl FUN_ov16_020fa93c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov16_020fa6c0
	mov r0, r6
	bl FUN_ov16_020f959c
	cmp r0, #0
	beq _020F9FC8
	ldrb r1, [r6, #0xc]
	and r0, r4, #0xff
	cmp r1, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020F9FC8:
	mov r0, r6
	bl FUN_ov16_020fa0e8
	mov r0, r6
	strb r4, [r6, #0xc]
	bl FUN_ov16_020fa638
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020FA0D8 ; =gAllocator
	mov r1, #0x54
	bl _ZN10CAllocator8allocateEm
	str r0, [r6, #8]
	cmp r0, #0
	bne _020FA010
	mov r0, r6
	bl FUN_ov16_020fa0e8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA010:
	mov r1, r4
	bl NNS_G3dRenderObjInit
	ldrh r1, [r6, #0x40]
	ldr r0, _020FA0DC ; =0x0000FFF9
	cmp r5, #1
	and r0, r1, r0
	strh r0, [r6, #0x40]
	mov r7, #0
	beq _020FA04C
	cmp r5, #2
	ldreqh r0, [r6, #0x40]
	moveq r7, #0x30
	orreq r0, r0, #4
	streqh r0, [r6, #0x40]
	b _020FA064
_020FA04C:
	ldrh r1, [r6, #0x40]
	ldrb r2, [r4, #0x17]
	mov r0, #0x30
	orr r1, r1, #2
	smulbb r7, r2, r0
	strh r1, [r6, #0x40]
_020FA064:
	cmp r7, #0
	ble _020FA08C
	ldr r0, _020FA0D8 ; =gAllocator
	mov r1, r7
	bl _ZN10CAllocator8allocateEm
	mov r1, r0
	mov r2, r7
	mov r0, #0
	str r1, [r6, #0x14]
	bl MIi_CpuClearFast
_020FA08C:
	ldr r0, [r6, #8]
	ldr r5, _020FA0E0 ; =gNsbResourceMan
	str r6, [r0, #0x2c]
	ldr r0, [r5]
	ldr r1, [r6, #4]
	bl FUN_ov16_020fd660
	cmp r0, #0
	bne _020FA0C0
	ldr r0, [r5]
	ldr r1, [r6, #4]
	bl FUN_ov16_020fd4cc
	mov r0, #1
	strb r0, [r6, #0x42]
_020FA0C0:
	ldr r1, _020FA0E4 ; =0x02118858
	mov r0, r4
	bl FUN_02053c20
	strb r0, [r6, #0x49]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA0D8: .word gAllocator
_020FA0DC: .word 0x0000FFF9
_020FA0E0: .word gNsbResourceMan
_020FA0E4: .word ov16_02118858
	arm_func_end FUN_ov16_020f9f7c

	arm_func_start FUN_ov16_020fa0e8
FUN_ov16_020fa0e8: ; 0x020FA0E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020FA0F4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fa8e4
	add r4, r4, #1
	cmp r4, #5
	blt _020FA0F4
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _020FA128
	ldr r0, _020FA150 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	mov r0, #0
	str r0, [r5, #8]
_020FA128:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _020FA144
	ldr r0, _020FA150 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
	mov r0, #0
	str r0, [r5, #0x14]
_020FA144:
	mov r0, r5
	bl FUN_ov16_020fabe4
	ldmfd sp!, {r3, r4, r5, pc}
_020FA150: .word gAllocator
	arm_func_end FUN_ov16_020fa0e8

	arm_func_start FUN_ov16_020fa154
FUN_ov16_020fa154: ; 0x020FA154
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl FUN_ov16_020fa0e8
	mov r7, #0
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020fac0c
	add r6, r4, #0xb0
	mov r5, #0x30
	b _020FA188
_020FA17C:
	mla r0, r7, r5, r6
	bl FUN_ov16_02110db4
	add r7, r7, #1
_020FA188:
	cmp r7, #5
	blt _020FA17C
	mov r7, #0
	add r6, r4, #0x4c
	mov r5, #0x14
	b _020FA1AC
_020FA1A0:
	mla r0, r7, r5, r6
	bl FUN_ov16_020fc5f8
	add r7, r7, #1
_020FA1AC:
	cmp r7, #5
	blt _020FA1A0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020FA1CC
	ldr r0, _020FA1E0 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FA1CC:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl FUN_ov16_020f9cdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA1E0: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fa154

	arm_func_start FUN_ov16_020fa1e4
FUN_ov16_020fa1e4: ; 0x020FA1E4
	ldr r12, _020FA1F8 ; =NNS_G3dGeBufferOP_N
	add r1, r0, #0x18
	mov r0, #0x1c
	mov r2, #3
	bx r12
_020FA1F8: .word NNS_G3dGeBufferOP_N
	arm_func_end FUN_ov16_020fa1e4

	arm_func_start FUN_ov16_020fa1fc
FUN_ov16_020fa1fc: ; 0x020FA1FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	add r4, sp, #0
	add r1, r0, #0x24
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_02053a70
	mov r1, r4
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x30
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa1fc

	arm_func_start FUN_ov16_020fa230
FUN_ov16_020fa230: ; 0x020FA230
	ldr r12, _020FA244 ; =NNS_G3dGeBufferOP_N
	add r1, r0, #0x30
	mov r0, #0x1b
	mov r2, #3
	bx r12
_020FA244: .word NNS_G3dGeBufferOP_N
	arm_func_end FUN_ov16_020fa230

	arm_func_start FUN_ov16_020fa248
FUN_ov16_020fa248: ; 0x020FA248
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl FUN_ov16_020f959c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _020FA27C
	mov r1, #0
	mov r2, r1
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
_020FA27C:
	mov r0, r4
	bl FUN_ov16_020f95b0
	mov r0, r4
	bl FUN_ov16_020f96dc
	mov r0, r4
	bl FUN_ov16_020fa2bc
	mov r4, r0
	cmp r5, #0
	beq _020FA2B4
	mov r2, #1
	add r1, sp, #0
	mov r0, #0x12
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
_020FA2B4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fa248

	arm_func_start FUN_ov16_020fa2bc
FUN_ov16_020fa2bc: ; 0x020FA2BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f959c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020f9968
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020f9788
	mov r0, r4
	bl FUN_ov16_020f97ec
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa2bc

	arm_func_start FUN_ov16_020fa300
FUN_ov16_020fa300: ; 0x020FA300
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f959c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r4
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fa248
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fa300

	arm_func_start FUN_ov16_020fa340
FUN_ov16_020fa340: ; 0x020FA340
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r8, r1
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r2, #5
	blo _020FA388
	mov r7, #0
	add r6, r4, #0x4c
	mov r5, #0x14
_020FA36C:
	mla r0, r7, r5, r6
	mov r1, r8
	bl FUN_ov16_020fc748
	add r7, r7, #1
	cmp r7, #5
	blt _020FA36C
	b _020FA398
_020FA388:
	add r3, r4, #0x4c
	mov r0, #0x14
	mla r0, r2, r0, r3
	bl FUN_ov16_020fc748
_020FA398:
	ldrh r0, [r4, #0x40]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #8]
	ldr r0, [r1]
	orr r0, r0, #1
	str r0, [r1]
	ldr r1, [r4, #8]
	ldr r0, [r1]
	orr r0, r0, #2
	str r0, [r1]
	ldr r0, [r4, #8]
	bl FUN_02053f7c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fa340

	arm_func_start FUN_ov16_020fa3dc
FUN_ov16_020fa3dc: ; 0x020FA3DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov16_020f9d8c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
_020FA3FC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020faa1c
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020fa7cc
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020faa34
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020fa574
	add r4, r4, #1
	cmp r4, #5
	blt _020FA3FC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa3dc

	arm_func_start FUN_ov16_020fa448
FUN_ov16_020fa448: ; 0x020FA448
	ldr r2, [r1]
	str r2, [r0, #0x18]
	ldr r2, [r1, #4]
	str r2, [r0, #0x1c]
	ldr r1, [r1, #8]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov16_020fa448

	arm_func_start FUN_ov16_020fa464
FUN_ov16_020fa464: ; 0x020FA464
	ldr r2, [r1]
	str r2, [r0, #0x24]
	ldr r12, [r1, #4]
	mov r2, r2, lsl #0x10
	str r12, [r0, #0x28]
	ldr r3, [r1, #8]
	mov r1, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r1, lsr #0x10
	mov r1, r3, lsr #0x10
	str r12, [r0, #0x24]
	str r2, [r0, #0x28]
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_ov16_020fa464

	arm_func_start FUN_ov16_020fa4a0
FUN_ov16_020fa4a0: ; 0x020FA4A0
	ldr r2, [r1]
	str r2, [r0, #0x30]
	ldr r2, [r1, #4]
	str r2, [r0, #0x34]
	ldr r1, [r1, #8]
	str r1, [r0, #0x38]
	bx lr
	arm_func_end FUN_ov16_020fa4a0

	arm_func_start FUN_ov16_020fa4bc
FUN_ov16_020fa4bc: ; 0x020FA4BC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	add r1, sp, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov16_020fa448
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa4bc

	arm_func_start FUN_ov16_020fa4e0
FUN_ov16_020fa4e0: ; 0x020FA4E0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	add r1, sp, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov16_020fa464
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa4e0

	arm_func_start FUN_ov16_020fa504
FUN_ov16_020fa504: ; 0x020FA504
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	add r1, sp, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov16_020fa4a0
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa504

	arm_func_start FUN_ov16_020fa528
FUN_ov16_020fa528: ; 0x020FA528
	cmp r1, #0x1f
	movhi r1, #0x1f
	strb r1, [r0, #0x4b]
	bx lr
	arm_func_end FUN_ov16_020fa528

	arm_func_start FUN_ov16_020fa538
FUN_ov16_020fa538: ; 0x020FA538
	mov r3, r0
	add r0, r1, #0x18
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fa538

	arm_func_start FUN_ov16_020fa54c
FUN_ov16_020fa54c: ; 0x020FA54C
	mov r3, r0
	add r0, r1, #0x24
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fa54c

	arm_func_start FUN_ov16_020fa560
FUN_ov16_020fa560: ; 0x020FA560
	mov r3, r0
	add r0, r1, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	bx lr
	arm_func_end FUN_ov16_020fa560

	arm_func_start FUN_ov16_020fa574
FUN_ov16_020fa574: ; 0x020FA574
	stmfd sp!, {r3, lr}
	add r3, r0, #0xb0
	mov r0, #0x30
	mla r0, r2, r0, r3
	bl FUN_ov16_02110cc8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa574

	arm_func_start FUN_ov16_020fa598
FUN_ov16_020fa598: ; 0x020FA598
	stmfd sp!, {r3, lr}
	add r12, r0, #0xb0
	mov r0, #0x30
	mla r0, r3, r0, r12
	ldr r3, [sp, #8]
	bl FUN_ov16_02110bbc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa598

	arm_func_start FUN_ov16_020fa5b4
FUN_ov16_020fa5b4: ; 0x020FA5B4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	add r12, r0, #0xb0
	mov r0, #0x30
	mla r0, r2, r0, r12
	ldr r12, [sp, #0x14]
	mov r2, r3
	ldrb r3, [sp, #0x18]
	str r12, [sp]
	ldrb r12, [sp, #0x1c]
	str r3, [sp, #4]
	ldr r3, [sp, #0x10]
	str r12, [sp, #8]
	bl FUN_ov16_02110bfc
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_020fa5b4

	arm_func_start FUN_ov16_020fa5f4
FUN_ov16_020fa5f4: ; 0x020FA5F4
	stmfd sp!, {r3, lr}
	add r2, r0, #0xb0
	mov r0, #0x30
	mla r0, r1, r0, r2
	bl FUN_ov16_02110db4
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa5f4

	arm_func_start FUN_ov16_020fa610
FUN_ov16_020fa610: ; 0x020FA610
	stmfd sp!, {r3, lr}
	cmp r2, #0
	add r2, r0, #0xb0
	mov r0, #0x30
	mla r0, r1, r0, r2
	beq _020FA630
	bl FUN_ov16_02110f78
	ldmfd sp!, {r3, pc}
_020FA630:
	bl FUN_ov16_02110d18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa610

	arm_func_start FUN_ov16_020fa638
FUN_ov16_020fa638: ; 0x020FA638
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	ldrne r0, [r0, #4]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl NNS_G3dGetMdlSet
	ldrb r12, [r4, #0xc]
	ldrb r1, [r0, #9]
	cmp r12, r1
	movhs r0, #0
	ldmhsfd sp!, {r4, pc}
	cmp r0, #0
	beq _020FA6B8
	adds r3, r0, #8
	beq _020FA6A4
	ldrb r1, [r0, #9]
	cmp r12, r1
	bhs _020FA6A4
	ldrh r2, [r0, #0xe]
	ldrh r1, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r2, r1, r12, r2
	b _020FA6A8
_020FA6A4:
	mov r2, #0
_020FA6A8:
	cmp r2, #0
	ldrne r1, [r2]
	addne r0, r0, r1
	ldmnefd sp!, {r4, pc}
_020FA6B8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa638

	arm_func_start FUN_ov16_020fa6c0
FUN_ov16_020fa6c0: ; 0x020FA6C0
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_020fa6c0

	arm_func_start FUN_ov16_020fa6d4
FUN_ov16_020fa6d4: ; 0x020FA6D4
	ldr r2, _020FA6F0 ; =0x0000FFF0
	ldrh r3, [r0, #0x40]
	and r1, r1, r2
	mov r1, r1, lsl #0x10
	orr r1, r3, r1, lsr #16
	strh r1, [r0, #0x40]
	bx lr
_020FA6F0: .word 0x0000FFF0
	arm_func_end FUN_ov16_020fa6d4

	arm_func_start FUN_ov16_020fa6f4
FUN_ov16_020fa6f4: ; 0x020FA6F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fa93c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_020fa6c0
	bl NNS_G3dGetTex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa6f4

	arm_func_start FUN_ov16_020fa71c
FUN_ov16_020fa71c: ; 0x020FA71C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov16_020fa6f4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r5, r4, #0xb0
	mov r6, #0
	mov r4, #0x30
_020FA73C:
	mla r0, r6, r4, r5
	bl FUN_ov16_02110f20
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _020FA73C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa71c

	arm_func_start FUN_ov16_020fa760
FUN_ov16_020fa760: ; 0x020FA760
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #0
	moveq r1, #0
	mov r6, r0
	subeq r0, r1, #1
	mov r5, r2
	streq r1, [r6, #0x10]
	streqb r0, [r6, #0xd]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	mvneq r0, #0
	streq r1, [r6, #0x10]
	streqb r0, [r6, #0xd]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mvn r4, #0
	mov r0, r1
	str r1, [r6, #0x10]
	strb r4, [r6, #0xd]
	bl FUN_ov16_020fa638
	mov r1, r5
	bl FUN_02053c20
	cmp r0, #0
	movlt r0, #0
	strltb r4, [r6, #0xd]
	strlt r0, [r6, #0x10]
	strgeb r0, [r6, #0xd]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa760

	arm_func_start FUN_ov16_020fa7cc
FUN_ov16_020fa7cc: ; 0x020FA7CC
	stmfd sp!, {r3, lr}
	add r3, r0, #0x4c
	mov r0, #0x14
	mla r0, r2, r0, r3
	bl FUN_ov16_020fc55c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa7cc

	arm_func_start FUN_ov16_020fa7f0
FUN_ov16_020fa7f0: ; 0x020FA7F0
	stmfd sp!, {r3, lr}
	add r3, r0, #0x4c
	mov r0, #0x14
	mla r0, r2, r0, r3
	bl FUN_ov16_020fc578
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa7f0

	arm_func_start FUN_ov16_020fa814
FUN_ov16_020fa814: ; 0x020FA814
	stmfd sp!, {r3, lr}
	add r12, r0, #0x4c
	mov r0, #0x14
	mla r0, r3, r0, r12
	bl FUN_ov16_020fc5bc
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fa814

	arm_func_start FUN_ov16_020fa838
FUN_ov16_020fa838: ; 0x020FA838
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r1, #0x14
	mul r4, r7, r1
	mov r8, r0
	add r5, r8, #0x4c
	add r0, r5, r4
	mov r6, r2
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r8
	mov r2, r6
	add r0, r5, r4
	bl FUN_ov16_020fc630
	cmp r0, #0
	bne _020FA890
	add r0, r5, r4
	bl FUN_ov16_020fc5f8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA890:
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020fa8b8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fa838

	arm_func_start FUN_ov16_020fa8a0
FUN_ov16_020fa8a0: ; 0x020FA8A0
	add r2, r0, #0x4c
	mov r0, #0x14
	mla r0, r1, r0, r2
	ldr r12, _020FA8B4 ; =FUN_ov16_020fc5f8
	bx r12
_020FA8B4: .word FUN_ov16_020fc5f8
	arm_func_end FUN_ov16_020fa8a0

	arm_func_start FUN_ov16_020fa8b8
FUN_ov16_020fa8b8: ; 0x020FA8B8
	stmfd sp!, {r4, lr}
	add r2, r0, #0x4c
	mov r0, #0x14
	mla r0, r1, r0, r2
	mov r4, #0
	mov r1, r4
	bl FUN_ov16_020fc7b4
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fa8b8

	arm_func_start FUN_ov16_020fa8e4
FUN_ov16_020fa8e4: ; 0x020FA8E4
	add r2, r0, #0x4c
	mov r0, #0x14
	mla r0, r1, r0, r2
	ldr r12, _020FA8F8 ; =FUN_ov16_020fc898
	bx r12
_020FA8F8: .word FUN_ov16_020fc898
	arm_func_end FUN_ov16_020fa8e4

	arm_func_start FUN_ov16_020fa8fc
FUN_ov16_020fa8fc: ; 0x020FA8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x4c
	mov r4, #0x14
_020FA90C:
	mla r0, r6, r4, r5
	bl FUN_ov16_020fc5f8
	add r6, r6, #1
	cmp r6, #5
	blt _020FA90C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fa8fc

	arm_func_start FUN_ov16_020fa924
FUN_ov16_020fa924: ; 0x020FA924
	ldr r12, _020FA92C ; =FUN_ov16_020f9588
	bx r12
_020FA92C: .word FUN_ov16_020f9588
	arm_func_end FUN_ov16_020fa924

	arm_func_start FUN_ov16_020fa930
FUN_ov16_020fa930: ; 0x020FA930
	ldr r12, _020FA938 ; =FUN_ov16_020f959c
	bx r12
_020FA938: .word FUN_ov16_020f959c
	arm_func_end FUN_ov16_020fa930

	arm_func_start FUN_ov16_020fa93c
FUN_ov16_020fa93c: ; 0x020FA93C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FA960 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	ldmfd sp!, {r3, pc}
_020FA960: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fa93c

	arm_func_start FUN_ov16_020fa964
FUN_ov16_020fa964: ; 0x020FA964
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	mov r4, #0
	bl FUN_ov16_020fa93c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, r4
	add r8, r6, #0x4c
	mov r9, #1
	mov r7, #0x14
_020FA98C:
	mul r1, r5, r7
	add r0, r6, r1
	ldr r0, [r0, #0x50]
	cmp r0, #0
	moveq r0, r9
	movne r0, r4
	cmp r0, #0
	bne _020FA9BC
	add r0, r8, r1
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FA9BC:
	add r5, r5, #1
	cmp r5, #5
	blt _020FA98C
	mov r5, #0
	add r8, r6, #0xb0
	mov r9, #1
	mov r7, #0x30
_020FA9D8:
	mul r1, r5, r7
	add r0, r6, r1
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	moveq r0, r9
	movne r0, r4
	cmp r0, #0
	bne _020FAA08
	add r0, r8, r1
	bl FUN_ov16_02110f00
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FAA08:
	add r5, r5, #1
	cmp r5, #5
	blt _020FA9D8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_020fa964

	arm_func_start FUN_ov16_020faa1c
FUN_ov16_020faa1c: ; 0x020FAA1C
	cmp r1, #5
	movhs r0, #0
	addlo r2, r0, #0x4c
	movlo r0, #0x14
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov16_020faa1c

	arm_func_start FUN_ov16_020faa34
FUN_ov16_020faa34: ; 0x020FAA34
	cmp r1, #5
	movhs r0, #0
	addlo r2, r0, #0xb0
	movlo r0, #0x30
	mlalo r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov16_020faa34

	arm_func_start FUN_ov16_020faa4c
FUN_ov16_020faa4c: ; 0x020FAA4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020faa7c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020faa84
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020faa8c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020faa4c

	arm_func_start FUN_ov16_020faa7c
FUN_ov16_020faa7c: ; 0x020FAA7C
	str r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov16_020faa7c

	arm_func_start FUN_ov16_020faa84
FUN_ov16_020faa84: ; 0x020FAA84
	strb r1, [r0, #0x48]
	bx lr
	arm_func_end FUN_ov16_020faa84

	arm_func_start FUN_ov16_020faa8c
FUN_ov16_020faa8c: ; 0x020FAA8C
	cmp r1, #0
	ldrneh r1, [r0, #0x40]
	ldreqh r2, [r0, #0x40]
	orrne r1, r1, #8
	ldreq r1, _020FAAAC ; =0x0000FFF7
	andeq r1, r2, r1
	strh r1, [r0, #0x40]
	bx lr
_020FAAAC: .word 0x0000FFF7
	arm_func_end FUN_ov16_020faa8c

	arm_func_start FUN_ov16_020faab0
FUN_ov16_020faab0: ; 0x020FAAB0
	ldrh r0, [r0, #0x40]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020faab0

	arm_func_start _ZN6CModel5closeEv
_ZN6CModel5closeEv: ; 0x020FAAC4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020FAB08 ; =gNsbResourceMan
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd878
	add r5, r4, #0xb0
	mov r6, #0
	mov r4, #0x30
	b _020FAAF8
_020FAAEC:
	mla r0, r6, r4, r5
	bl FUN_ov16_021110ac
	add r6, r6, #1
_020FAAF8:
	cmp r6, #5
	blt _020FAAEC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FAB08: .word gNsbResourceMan
	arm_func_end _ZN6CModel5closeEv

	arm_func_start FUN_ov16_020fab0c
FUN_ov16_020fab0c: ; 0x020FAB0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r4, r2
	bl FUN_ov16_020fa638
	mov r1, r5
	bl FUN_02053c20
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_ov16_020fab3c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fab0c

	arm_func_start FUN_ov16_020fab3c
FUN_ov16_020fab3c: ; 0x020FAB3C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x20
	bxge lr
	cmp r2, #0
	ldrne r3, [r0, #0x3c]
	mov r2, #1
	orrne r1, r3, r2, lsl r1
	strne r1, [r0, #0x3c]
	mvneq r1, r2, lsl r1
	ldreq r2, [r0, #0x3c]
	andeq r1, r2, r1
	streq r1, [r0, #0x3c]
	bx lr
	arm_func_end FUN_ov16_020fab3c

	arm_func_start FUN_ov16_020fab74
FUN_ov16_020fab74: ; 0x020FAB74
	cmp r1, #0x20
	movhs r0, #0
	bxhs lr
	ldr r2, [r0, #0x3c]
	mov r0, #1
	tst r2, r0, lsl r1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_020fab74

	arm_func_start _ZN6CModel5setupEv
_ZN6CModel5setupEv: ; 0x020FAB94
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020FABD8 ; =gNsbResourceMan
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd8ec
	add r5, r4, #0xb0
	mov r6, #0
	mov r4, #0x30
	b _020FABC8
_020FABBC:
	mla r0, r6, r4, r5
	bl FUN_ov16_021110d4
	add r6, r6, #1
_020FABC8:
	cmp r6, #5
	blt _020FABBC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020FABD8: .word gNsbResourceMan
	arm_func_end _ZN6CModel5setupEv

	arm_func_start FUN_ov16_020fabdc
FUN_ov16_020fabdc: ; 0x020FABDC
	strb r1, [r0, #0x4a]
	bx lr
	arm_func_end FUN_ov16_020fabdc

	arm_func_start FUN_ov16_020fabe4
FUN_ov16_020fabe4: ; 0x020FABE4
	ldr r12, _020FABF0 ; =FUN_ov16_02111248
	add r0, r0, #0x1a0
	bx r12
_020FABF0: .word FUN_ov16_02111248
	arm_func_end FUN_ov16_020fabe4

	arm_func_start FUN_ov16_020fabf4
FUN_ov16_020fabf4: ; 0x020FABF4
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020fa638
	cmp r0, #0
	addne r0, r0, #0x14
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fabf4

	arm_func_start FUN_ov16_020fac0c
FUN_ov16_020fac0c: ; 0x020FAC0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, r1
	bl FUN_ov16_020f959c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov16_020fa638
	str r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r8, r9
	add r5, r10, #0xb0
	mov r6, r9
	mov r7, #1
	mov r4, #0x30
_020FAC50:
	mul r1, r8, r4
	add r0, r10, r1
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	moveq r0, r7
	movne r0, r6
	cmp r0, #0
	bne _020FAC80
	add r0, r5, r1
	bl FUN_ov16_02110f54
	cmp r0, #0
	addne r9, r9, #1
_020FAC80:
	add r8, r8, #1
	cmp r8, #5
	blt _020FAC50
	ldrb r0, [r10, #0x42]
	cmp r0, #1
	bne _020FACA4
	cmp r11, #0
	cmpne r9, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FACA4:
	mov r0, r10
	bl FUN_ov16_020fad24
	cmp r11, #0
	cmpne r9, #0
	ble _020FACE8
	mov r6, #0
	add r5, r10, #0xb0
	mov r4, #0x30
_020FACC4:
	mla r0, r6, r4, r5
	mov r1, r10
	bl FUN_ov16_02110df0
	add r6, r6, #1
	cmp r6, #5
	blt _020FACC4
	mov r0, #2
	strb r0, [r10, #0x42]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FACE8:
	mov r0, r10
	bl FUN_ov16_020fa6f4
	movs r4, r0
	moveq r0, #0
	streqb r0, [r10, #0x42]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r1, r4
	bl NNS_G3dBindMdlTex
	ldr r0, [sp]
	mov r1, r4
	bl NNS_G3dBindMdlPltt
	mov r0, #1
	strb r0, [r10, #0x42]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_020fac0c

	arm_func_start FUN_ov16_020fad24
FUN_ov16_020fad24: ; 0x020FAD24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov16_020f959c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov16_020fa638
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r7, #0x42]
	cmp r1, #0
	beq _020FAD98
	cmp r1, #1
	beq _020FAD68
	cmp r1, #2
	beq _020FAD78
	b _020FAD98
_020FAD68:
	bl NNS_G3dReleaseMdlTex
	mov r0, r4
	bl NNS_G3dReleaseMdlPltt
	b _020FAD98
_020FAD78:
	mov r6, #0
	add r5, r7, #0xb0
	mov r4, #0x30
_020FAD84:
	mla r0, r6, r4, r5
	bl FUN_ov16_02110eb4
	add r6, r6, #1
	cmp r6, #5
	blt _020FAD84
_020FAD98:
	mov r0, #0
	strb r0, [r7, #0x42]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020fad24

	arm_func_start FUN_ov16_020fada4
FUN_ov16_020fada4: ; 0x020FADA4
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x43]
	bx lr
	arm_func_end FUN_ov16_020fada4

	.rodata
	.global ov16_021178E4
ov16_021178E4:
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10
	.global ov16_021178F8
ov16_021178F8:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_0211790C
ov16_0211790C:
	.byte 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x10

	.section .init, 4
	arm_func_start __sinit_CModel.cpp
__sinit_CModel.cpp: ; 0x02117EC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117F08 ; =0x02118834
	str r0, [r4, #8]
	ldr r0, _02117F0C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02117F10 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02117F08: .word ov16_02118834
_02117F0C: .word 0x00009CCD
_02117F10: .word 0x0000EA3C
	arm_func_end __sinit_CModel.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CModel.cpp

	.data
	.global ov16_02118834
ov16_02118834:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global _ZTV6CModel
_ZTV6CModel:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word FUN_ov16_020fa3dc
	.global ov16_02118858
ov16_02118858:
	.asciz "waist"
	.balign 4, 0

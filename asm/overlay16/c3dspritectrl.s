.public DC_FlushRange
.public FUN_020515c8
.public FUN_0205162c
.public FUN_02051bb8
.public FUN_02053a5c
.public FUN_02058644
.public FUN_0205866c
.public FUN_02058e50
.public FUN_02059038
.public FUN_020591e8
.public FUN_02059880
.public FUN_020598ec
.public FUN_0205999c
.public FUN_02059aa0
.public FUN_02059b8c
.public FUN_02059bb4
.public FUN_ov16_020efee8
.public FUN_ov16_020f7c34
.public FX_SinCosTable_
.public FX_Sqrt
.public MI_CpuCopy8
.public MI_CpuFill8
.public MIi_CpuClearFast
.public MIi_CpuCopy32
.public MTX_Inverse43
.public MTX_RotX43_
.public MTX_RotY43_
.public MTX_RotZ43_
.public NNS_G3dGeBufferOP_N
.public NNS_G3dGlbFlushVP
.public NNS_G3dGlb_cameraMtx
.public NNS_G3dWorldPosToScrPos
.public _ZN10C3DSprFile14getSpriteSheetEi
.public _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
.public _ZN10CAllocator10deallocateEPv
.public _ZN10CAllocator8allocateEm
.public _ZN11C3DSprSheet6isIdleEv
.public _ZN7CConfig8getParamEPKc
.public _fadd
.public _ffix
.public _fflt
.public _ffltu
.public _fsub
.public _u32_div_f
.public gAllocator
.public gCameraCtrl
.public gConfig
.public g3DVramMan
.public labs
.public unk_0208A874

.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_02114bf8
FUN_ov16_02114bf8: ; 0x02114BF8
	ldrh r0, [r0, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_02114bf8

	arm_func_start FUN_ov16_02114c0c
FUN_ov16_02114c0c: ; 0x02114C0C
	ldr r0, [r1]
	cmp r2, #0
	add r3, r1, r0
	blt _02114C28
	ldrh r0, [r3]
	cmp r2, r0
	blt _02114C30
_02114C28:
	mov r0, #0
	bx lr
_02114C30:
	add r0, r3, r2, lsl #2
	ldr r0, [r0, #4]
	add r0, r1, r0
	bx lr
	arm_func_end FUN_ov16_02114c0c

	arm_func_start FUN_ov16_02114c40
FUN_ov16_02114c40: ; 0x02114C40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	mov r4, r1
	bl FUN_ov16_02114c0c
	add r0, r0, r5, lsl #3
	ldr r1, [r4, #4]
	ldrh r0, [r0, #8]
	add r1, r4, r1
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #4]
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114c40

	arm_func_start FUN_ov16_02114c70
FUN_ov16_02114c70: ; 0x02114C70
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrh r0, [r1, #4]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_02114c70

	arm_func_start FUN_ov16_02114c90
FUN_ov16_02114c90: ; 0x02114C90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x24]
	mov r4, #1
	cmp r0, #1
	blt _02114CDC
_02114CA8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_0211685c
	mov r1, r0
	mov r0, r5
	bl FUN_ov16_02114c70
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x24]
	add r4, r4, #1
	cmp r4, r0
	ble _02114CA8
_02114CDC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114c90

	arm_func_start FUN_ov16_02114ce4
FUN_ov16_02114ce4: ; 0x02114CE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0
	mov r2, #0x48
	mov r4, r1
	bl MIi_CpuClearFast
	mov r2, #0x3f
	sub r0, r2, #0x40
	ldr lr, _02114D38 ; =0x00007FFF
	mov r5, #0x1f
	mov r12, #0x32
	mov r3, #0x64
	mov r1, #0x1000
	strb r5, [r4, #0xc]
	strh lr, [r4, #0xe]
	strb r12, [r4, #0x26]
	strb r3, [r4, #0x27]
	strb r2, [r4, #0xd]
	str r1, [r4, #0x44]
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldmfd sp!, {r3, r4, r5, pc}
_02114D38: .word 0x00007FFF
	arm_func_end FUN_ov16_02114ce4

	arm_func_start FUN_ov16_02114d3c
FUN_ov16_02114d3c: ; 0x02114D3C
	stmfd sp!, {r4, lr}
	mov r0, #0
	mov r2, #0x24
	mov r4, r1
	bl MIi_CpuClearFast
	ldr r0, _02114D64 ; =0x00007FFF
	mov r1, #0x1f
	strb r1, [r4, #7]
	strh r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02114D64: .word 0x00007FFF
	arm_func_end FUN_ov16_02114d3c

	arm_func_start FUN_ov16_02114d68
FUN_ov16_02114d68: ; 0x02114D68
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, #1
	mov r5, #0
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x30
	str r5, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x31
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02114d68

	arm_func_start FUN_ov16_02114da8
FUN_ov16_02114da8: ; 0x02114DA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02114DF0
	mov r6, #0
	add r1, sp, #0xc
	str r6, [sp, #0xc]
	mov r0, #0x20
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r7, #0x44]
	mov r1, r6
	and r3, r0, #0xff
	mov r2, #0x30
	b _02114E60
_02114DF0:
	ldrh r0, [r4, #0xa]
	tst r0, #0x4000
	bne _02114E08
	ldrh r0, [r5, #4]
	tst r0, #0x4000
	beq _02114E24
_02114E08:
	mov r3, #0x10
	add r1, sp, #8
	mov r0, #0x20
	mov r2, #1
	str r3, [sp, #8]
	mov r6, #2
	b _02114E44
_02114E24:
	ldrh r3, [r5, #8]
	ldrh r2, [r4, #0xe]
	add r1, sp, #4
	mov r0, #0x20
	and r3, r3, r2
	mov r2, #1
	str r3, [sp, #4]
	mov r6, #0
_02114E44:
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r4, #0xc]
	ldrb r3, [r5, #7]
	ldrb r2, [r4, #0xd]
	mov r1, #0x800
	cmp r3, r0
	movhs r3, r0
_02114E60:
	mov r0, r6, lsl #4
	orr r1, r1, #0x3000
	orr r0, r0, #0xc0
	orr r0, r1, r0
	orr r0, r0, r2, lsl #24
	orr r3, r0, r3, lsl #16
	add r1, sp, #0
	mov r0, #0x29
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02114da8

	arm_func_start FUN_ov16_02114e94
FUN_ov16_02114e94: ; 0x02114E94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x18
	mov r4, #0
	mov r9, r0
	mov r5, r3
	mov r8, r2
	mov r1, r5
	mov r2, r4
	add r0, r9, #4
	str r4, [sp, #0x14]
	str r4, [sp, #0x10]
	ldr r7, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	bl FUN_0205999c
	ldr r1, [sp, #0x38]
	add r2, sp, #0xc
	add r0, r9, #4
	bl FUN_02059aa0
	ldr r0, [sp, #0xc]
	cmp r0, #0x20
	blt _02114F04
	ldr r1, [sp, #0x38]
	add r3, sp, #0x10
	mov r2, r4
	add r0, r9, #4
	bl _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
	cmp r0, #0
	bne _02114F10
_02114F04:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02114F10:
	ldr r1, [r8, #0x14]
	cmp r1, #0
	ldrne r0, [r8]
	strne r0, [sp, #0x14]
	bne _02114F6C
	ldrh r0, [r5, #0xc]
	tst r0, #0x10
	beq _02114F5C
	ldr r0, _02115054 ; =g3DVramMan
	add r2, sp, #0x14
	ldr r0, [r0]
	add r1, r5, #0x18
	bl FUN_02051bb8
	ldr r1, [sp, #0x14]
	ldr r0, [r7, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x14]
	str r0, [r8]
	b _02114F6C
_02114F5C:
	cmp r1, #0
	addeq sp, sp, #0x18
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02114F6C:
	ldrh r0, [r8, #0xa]
	tst r0, #0x40
	ldrb r0, [r6, #2]
	movne r5, #0
	moveq r5, #1
	bl FUN_0205162c
	mov r4, r0
	ldr r0, [sp, #0xc]
	mov r1, r4
	bl _u32_div_f
	ldrb r1, [r8, #8]
	cmp r1, r0
	ldr r0, [sp, #0x10]
	movhi r1, #0
	mla r1, r4, r1, r0
	str r1, [sp, #0x10]
	ldrb r0, [r6, #2]
	mov r4, #1
	mov r2, r4
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #4
	mov r0, r1, lsr r0
	str r0, [sp, #8]
	add r1, sp, #8
	mov r0, #0x2b
	bl NNS_G3dGeBufferOP_N
	ldrh r0, [r8, #0xa]
	tst r0, #0x200
	ldrb r0, [r6, #2]
	bne _02115020
	ldr r2, [sp, #0x14]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r2, lsr #3
	ldrh r1, [r7, #8]
	ldrh r2, [r7, #0xa]
	orr r0, r0, r1, lsl #20
	orr r0, r0, r2, lsl #23
	orr r3, r0, r5, lsl #29
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x2a
	str r3, [sp, #4]
	b _02115044
_02115020:
	ldr r2, [sp, #0x14]
	mov r0, r0, lsl #0x1a
	orr r0, r0, r2, lsr #3
	orr r0, r0, #0x1200000
	orr r3, r0, r5, lsl #29
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x2a
	str r3, [sp]
_02115044:
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02115054: .word g3DVramMan
	arm_func_end FUN_ov16_02114e94

	arm_func_start FUN_ov16_02115058
FUN_ov16_02115058: ; 0x02115058
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x128
	mov r4, #0
	mov r6, r2
	str r4, [sp, #0x11c]
	str r4, [sp, #0x120]
	str r4, [sp, #0x124]
	ldr r2, [r6, #0x44]
	str r0, [sp]
	str r2, [sp, #0x110]
	str r2, [sp, #0x114]
	str r2, [sp, #0x118]
	ldrh r0, [r6, #0xa]
	mov r10, r1
	mov r5, r3
	tst r0, #0x200
	ldr r0, [sp, #0x154]
	movne r7, #0x20
	str r0, [sp, #0x154]
	ldrh r0, [r6, #0x24]
	ldr r4, [sp, #0x150]
	ldr r11, [sp, #0x158]
	str r0, [sp, #0x10]
	movne r8, r7
	bne _021150D8
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	mov r2, #1
	mov r1, r2, lsl r1
	mov r0, r2, lsl r0
	mov r7, r1, lsl #3
	mov r8, r0, lsl #3
_021150D8:
	cmp r7, #0
	mov r0, r7, lsl #0xc
	ble _021150F8
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115104
_021150F8:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115104:
	bl _ffix
	str r0, [sp, #0xc]
	cmp r8, #0
	mov r0, r8, lsl #0xc
	ble _0211512C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115138
_0211512C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115138:
	bl _ffix
	ldr r1, [sp, #0x15c]
	str r0, [sp, #8]
	cmp r1, #0
	mov r1, r0
	ldr r0, [sp]
	mov r9, #0
	str r1, [r0, #0x34]
	ldr r1, [sp, #0xc]
	str r9, [r0, #0x38]
	str r1, [r0, #0x30]
	str r9, [r0, #0x3c]
	ldrne r0, _021158F4 ; =gCameraCtrl
	mov r2, r9
	ldrne r0, [r0]
	cmpne r0, #0
	beq _021151E8
	bl FUN_ov16_020f7c34
	ldr r0, [r0, #4]
	rsb r0, r0, #0x8000
	str r0, [sp, #4]
	bl labs
	rsb r12, r0, #0x8000
	mov lr, #0x60
	umull r3, r2, r12, lr
	mla r2, r12, r9, r2
	mov r1, r12, asr #0x1f
	mla r2, r1, lr, r2
	adds r3, r3, #0x800
	adc r1, r2, r9
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	mov r0, #0x2000
	umull r1, r12, r2, r0
	mla r12, r2, r9, r12
	mov r3, r2, asr #0x1f
	mla r12, r3, r0, r12
	adds r1, r1, #0x800
	adc r3, r12, r9
	ldr r0, [sp, #4]
	mov r9, r1, lsr #0xc
	orr r9, r9, r3, lsl #20
	cmp r0, #0
	rsblt r9, r9, #0
_021151E8:
	ldr r1, [r10, #0x14]
	ldr r0, [r6, #0x30]
	ldr r12, [r10, #0x10]
	add r0, r1, r0
	sub r1, r0, r2
	ldr r0, [r6, #0x2c]
	ldr r3, [r10, #0xc]
	add r0, r12, r0
	ldr r2, [r6, #0x28]
	add r2, r3, r2
	sub r2, r2, r9
	str r2, [sp, #0x11c]
	str r0, [sp, #0x120]
	str r1, [sp, #0x124]
	ldrh r0, [r6, #0xa]
	tst r0, #0x1000
	bne _02115238
	ldrh r0, [r10, #4]
	tst r0, #0x1000
	beq _0211536C
_02115238:
	ldrh r0, [r6, #0xa]
	tst r0, #0x2000
	bne _02115250
	ldrh r0, [r10, #4]
	tst r0, #0x2000
	beq _021152D0
_02115250:
	ldr r1, [sp, #0x120]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	cmp r0, #0
	ble _02115298
	ldr r1, [sp, #0x120]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021152BC
_02115298:
	ldr r1, [sp, #0x120]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	bl FUN_02053a5c
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021152BC:
	bl _ffix
	ldr r1, [sp, #0x124]
	rsb r0, r0, #0
	add r0, r1, r0
	str r0, [sp, #0x124]
_021152D0:
	ldr r3, [sp, #0x11c]
	ldr r2, [sp, #0x120]
	mov r0, r3, asr #0xb
	add r0, r3, r0, lsr #20
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	add r2, sp, #0x1c
	add r3, sp, #0x18
	mov r0, r0, asr #0xc
	mov r1, r1, asr #0xc
	bl FUN_ov16_020efee8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115320
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211532C
_02115320:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211532C:
	bl _ffix
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x11c]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _02115358
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115364
_02115358:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115364:
	bl _ffix
	str r0, [sp, #0x120]
_0211536C:
	ldr r1, [sp, #0x124]
	ldr r0, [r6, #0x3c]
	cmp r11, #0
	add r0, r1, r0
	str r0, [sp, #0x124]
	ldrne r0, [sp, #0x120]
	add r1, sp, #0x11c
	rsbne r0, r0, #0
	strne r0, [sp, #0x120]
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x15c]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	bne _021153B8
	cmp r11, #0
	bne _021155D8
_021153B8:
	ldrh r0, [r4]
	mov r0, r0, lsl #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021153E0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021153EC
_021153E0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021153EC:
	bl _ffix
	ldrh r1, [r4, #2]
	mov r9, r0
	add r0, r1, #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211541C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115428
_0211541C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115428:
	bl _ffix
	ldrb r3, [r6, #0x26]
	ldrb r2, [r6, #0x27]
	ldr r1, _021158F8 ; =0x51EB851F
	sub r3, r3, #0x32
	mul r3, r9, r3
	sub r2, r2, #0x64
	mul r2, r0, r2
	smull r0, r9, r1, r3
	mov r0, r3, lsr #0x1f
	add r9, r0, r9, asr #5
	smull r0, r10, r1, r2
	mov r0, r2, lsr #0x1f
	add r10, r0, r10, asr #5
	rsb r0, r9, #0
	str r0, [sp, #0x44]
	rsb r0, r10, #0
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x4c]
	mov r0, #0x1c
	add r1, sp, #0x44
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x15c]
	cmp r0, #0
	beq _0211551C
	ldr r0, [sp, #0x10]
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r2, r0, lsl #1
	ldr r0, _021158FC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	ldrsh r2, [r0, r2]
	ldrsh r1, [r0, r1]
	add r0, sp, #0xb0
	blx MTX_RotZ43_
	ldr r0, _021158FC ; =FX_SinCosTable_
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	add r0, sp, #0x50
	blx MTX_RotY43_
	ldr r0, _02115900 ; =0x0208A874
	ldrsh r2, [r0, #2]
	ldrsh r1, [r0]
	add r0, sp, #0x80
	blx MTX_RotX43_
	add r1, sp, #0xb0
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x19
	add r1, sp, #0x80
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	b _021155B8
_0211551C:
	cmp r11, #0
	bne _02115574
	ldr r12, _02115904 ; =NNS_G3dGlb_cameraMtx
	add lr, sp, #0xe0
	ldmia r12!, {r0, r1, r2, r3}
	str lr, [sp, #0x14]
	stmia lr!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r12, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [sp, #0x10c]
	str r0, [sp, #0x108]
	str r0, [sp, #0x104]
	ldr r0, [sp, #0x14]
	mov r1, r0
	bl MTX_Inverse43
	ldr r1, [sp, #0x14]
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_02115574:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021155B8
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	add r2, r0, #1
	ldr r1, _021158FC ; =FX_SinCosTable_
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	ldrsh r2, [r1, r2]
	ldrsh r1, [r1, r0]
	add r0, sp, #0xe0
	blx MTX_RotZ43_
	add r1, sp, #0xe0
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_021155B8:
	mov r3, #0
	add r1, sp, #0x38
	mov r0, #0x1c
	mov r2, #3
	str r9, [sp, #0x38]
	str r10, [sp, #0x3c]
	str r3, [sp, #0x40]
	bl NNS_G3dGeBufferOP_N
_021155D8:
	add r1, sp, #0x110
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x154]
	ldr r0, [r0, #4]
	tst r0, #0x10000000
	beq _02115684
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	tst r0, #0x200
	bne _0211564C
	ldrh r1, [r4]
	ldrh r0, [r5]
	sub r0, r1, r0
	sub r0, r0, r7
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211563C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115648
_0211563C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115648:
	b _02115710
_0211564C:
	ldrh r0, [r4]
	sub r0, r0, r7
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115674
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115680
_02115674:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115680:
	b _02115710
_02115684:
	ldrh r1, [r6, #0xa]
	ldr r0, _02115908 ; =0x0000FFEF
	and r0, r1, r0
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	bne _021156DC
	ldrh r1, [r5]
	ldrh r0, [r4]
	sub r0, r1, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021156CC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021156D8
_021156CC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021156D8:
	b _02115710
_021156DC:
	ldrh r0, [r4]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115704
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115710
_02115704:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115710:
	bl _ffix
	str r0, [sp, #0x11c]
	ldr r0, [sp, #0x154]
	mov r9, #0
	ldr r0, [r0, #4]
	mov r7, #3
	tst r0, #0x20000000
	beq _021157BC
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x20
	strh r0, [r6, #0xa]
	tst r0, #0x200
	bne _02115784
	ldrh r1, [r4, #2]
	ldrh r0, [r5, #2]
	sub r0, r1, r0
	sub r0, r0, r8
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115774
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115780
_02115774:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115780:
	b _02115848
_02115784:
	ldrh r0, [r4, #2]
	sub r0, r0, r8
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021157AC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021157B8
_021157AC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021157B8:
	b _02115848
_021157BC:
	ldrh r1, [r6, #0xa]
	ldr r0, _0211590C ; =0x0000FFDF
	and r0, r1, r0
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	bne _02115814
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #2]
	sub r0, r1, r0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02115804
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115810
_02115804:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115810:
	b _02115848
_02115814:
	ldrh r0, [r4, #2]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _0211583C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02115848
_0211583C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02115848:
	bl _ffix
	rsb r0, r0, #0
	str r0, [sp, #0x120]
	cmp r11, #0
	beq _0211587C
	ldr r2, [sp, #0x11c]
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0x120]
	add r0, r2, r0
	str r0, [sp, #0x11c]
	ldr r0, [r6, #0x38]
	sub r0, r1, r0
	b _02115898
_0211587C:
	ldr r2, [sp, #0x11c]
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0x120]
	add r0, r2, r0
	str r0, [sp, #0x11c]
	ldr r0, [r6, #0x38]
	add r0, r1, r0
_02115898:
	str r0, [sp, #0x120]
	ldr r4, [sp, #0x120]
	ldr r3, [sp, #0x11c]
	add r1, sp, #0x2c
	mov r2, r7
	mov r0, #0x1c
	str r3, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r9, [sp, #0x34]
	bl NNS_G3dGeBufferOP_N
	ldr r3, [sp, #0xc]
	mov r4, #0x1000
	str r3, [sp, #0x20]
	ldr r3, [sp, #8]
	add r1, sp, #0x20
	mov r2, r7
	mov r0, #0x1b
	str r3, [sp, #0x24]
	str r4, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r0, #1
	add sp, sp, #0x128
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021158F4: .word gCameraCtrl
_021158F8: .word 0x51EB851F
_021158FC: .word FX_SinCosTable_
_02115900: .word unk_0208A874
_02115904: .word NNS_G3dGlb_cameraMtx
_02115908: .word 0x0000FFEF
_0211590C: .word 0x0000FFDF
	arm_func_end FUN_ov16_02115058

	arm_func_start FUN_ov16_02115910
FUN_ov16_02115910: ; 0x02115910
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r4, [r2, #0x44]
	mov r1, #0x800
	mov r3, r4, asr #0x1f
	mov r5, r3, lsl #0xb
	ldrh r7, [r2, #0xa]
	adds r6, r1, r4, lsl #11
	orr r5, r5, r4, lsr #21
	ldr r3, [r0, #0x38]
	ldr r8, [r0, #0x30]
	adc r1, r5, #0
	ldr r4, [r0, #0x3c]
	ldr r9, [r0, #0x34]
	mov r0, r6, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldrh r2, [r2, #0x24]
	mov r5, r3
	mov r6, r4
	add r8, r3, r8
	ands r1, r7, #0x10
	subne r5, r8, r0
	subne r8, r3, r0
	ands r10, r7, #0x20
	add r9, r4, r9
	subne r6, r9, r0
	subne r9, r4, r0
	mov r7, #0
	mov r4, #0x1000
	cmp r2, #0
	beq _02115ABC
	cmp r2, #0xe000
	movhs r2, #0
	movhs r3, r2
	bhs _02115A70
	cmp r2, #0xc000
	blo _021159CC
	sub r2, r2, #0xc000
	mov r2, r2, lsl #1
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r3, r2, #1
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh r3, [r2, r3]
	mov r2, #0
	b _02115A70
_021159CC:
	cmp r2, #0xa000
	movhs r2, #0
	movhs r3, r4
	bhs _02115A70
	cmp r2, #0x8000
	blo _02115A0C
	sub r2, r2, #0x8000
	mov r2, r2, lsl #1
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r3, r2, #1
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh r2, [r2, r3]
	mov r3, r4
	b _02115A70
_02115A0C:
	cmp r2, #0x6000
	blo _02115A34
	sub r2, r2, #0x6000
	mov r2, r2, lsl #1
	mov r3, r2, asr #4
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #2
	ldrsh r3, [r2, r3]
	mov r2, r4
	b _02115A70
_02115A34:
	cmp r2, #0x4000
	movhs r2, r4
	movhs r3, #0
	bhs _02115A70
	cmp r2, #0x2000
	movlo r2, #0
	movlo r3, r2
	blo _02115A70
	sub r2, r2, #0x2000
	mov r2, r2, lsl #1
	mov r3, r2, asr #4
	ldr r2, _02115CFC ; =FX_SinCosTable_
	mov r3, r3, lsl #2
	ldrsh r2, [r2, r3]
	mov r3, #0
_02115A70:
	cmp r1, #0
	rsbne r2, r2, #0
	cmp r10, #0
	smull r10, r1, r2, r0
	rsbne r3, r3, #0
	adds r2, r10, #0x800
	smull r10, r0, r3, r0
	mov r11, #0
	adc r3, r1, r11
	adds r1, r10, #0x800
	mov r2, r2, lsr #0xc
	orr r2, r2, r3, lsl #20
	adc r0, r0, r11
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	sub r5, r5, r2
	sub r8, r8, r2
	sub r6, r6, r1
	sub r9, r9, r1
_02115ABC:
	mov r11, #1
	add r1, sp, #0x48
	mov r2, r11
	mov r0, #0x40
	str r11, [sp, #0x48]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x70]
	mov r1, r5, lsl #8
	cmp r0, #0
	mov r0, r6, lsl #8
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	beq _02115BF0
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r6, r1, lsr #0x10
	mov r5, r0, lsr #0x10
	mov r4, #0x22
	orr r3, r6, r5, lsl #16
	add r1, sp, #0x44
	mov r0, r4
	mov r2, r11
	str r3, [sp, #0x44]
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x800
	add r1, sp, #0x3c
	mov r0, #0x23
	mov r2, #2
	str r3, [sp, #0x3c]
	str r7, [sp, #0x40]
	bl NNS_G3dGeBufferOP_N
	mov r0, r9, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	orr r2, r6, r7, lsl #16
	str r2, [sp, #0x38]
	add r1, sp, #0x38
	mov r0, r4
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r6, #0x25
	mov r9, #0xf0000000
	mov r0, r6
	add r1, sp, #0x34
	mov r2, r11
	str r9, [sp, #0x34]
	bl NNS_G3dGeBufferOP_N
	mov r0, r8, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	orr r0, r8, r7, lsl #16
	str r0, [sp, #0x30]
	mov r0, r4
	add r1, sp, #0x30
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	add r0, r9, #0x1000
	str r0, [sp, #0x2c]
	mov r0, r6
	add r1, sp, #0x2c
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	orr r0, r8, r5, lsl #16
	str r0, [sp, #0x28]
	mov r0, r4
	add r1, sp, #0x28
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r1, #0x1800
	str r1, [sp, #0x24]
	mov r0, r6
	mov r2, r11
	add r1, sp, #0x24
	bl NNS_G3dGeBufferOP_N
	b _02115CE4
_02115BF0:
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r10, r1, lsr #0x10
	mov r6, r0, lsr #0x10
	mov r5, #0x22
	orr r3, r10, r6, lsl #16
	add r1, sp, #0x20
	mov r0, r5
	mov r2, r11
	str r3, [sp, #0x20]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x18
	mov r0, #0x23
	mov r2, #2
	str r7, [sp, #0x18]
	str r7, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	mov r0, r9, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	orr r0, r10, r7, lsl #16
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	mov r0, r5
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r10, #0x25
	mov r9, #0xf0000000
	mov r0, r10
	add r1, sp, #0x10
	mov r2, r11
	str r9, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r0, r8, lsl #8
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	orr r0, r8, r7, lsl #16
	str r0, [sp, #0xc]
	mov r0, r5
	add r1, sp, #0xc
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	add r0, r9, #0x1000
	str r0, [sp, #8]
	mov r0, r10
	add r1, sp, #8
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	orr r0, r8, r6, lsl #16
	str r0, [sp, #4]
	mov r0, r5
	add r1, sp, #4
	mov r2, r11
	bl NNS_G3dGeBufferOP_N
	mov r0, r10
	mov r2, r11
	add r1, sp, #0
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
_02115CE4:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02115CFC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_02115910

	arm_func_start FUN_ov16_02115d00
FUN_ov16_02115d00: ; 0x02115D00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r8, r2
	mov r9, r1
	ldrh r1, [r8, #4]
	mov r10, r0
	str r3, [sp, #0x10]
	ldr r7, [sp, #0x50]
	bl FUN_ov16_02116920
	str r0, [sp, #0x18]
	ldrh r1, [r8, #6]
	mov r0, r10
	bl FUN_ov16_02116920
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r10, #4
	bl FUN_02058e50
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x14]
	add r0, r10, #4
	bl FUN_02058e50
	cmp r0, #0
	addne sp, sp, #0x28
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x18]
	add r0, r10, #4
	mov r2, #0
	bl FUN_02059bb4
	movs r4, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r8, #0x10]
	mov r0, r10
	mov r1, r4
	bl FUN_ov16_02114c0c
	str r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r8, #0x12]
	ldr r3, [r4, #4]
	ldrh r1, [r8, #0xa]
	add r0, r0, r2, lsl #3
	ldrh r0, [r0, #8]
	add r11, r4, r3
	tst r1, #0x200
	add r0, r11, r0, lsl #2
	ldr r0, [r0, #4]
	movne r6, #1
	add r0, r4, r0
	ldreqh r6, [r0, #8]
	str r0, [sp, #0x1c]
	add r4, r0, #0xc
	cmp r6, #0
	mov r5, #0
	addle sp, sp, #0x28
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02115DEC:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	stmia sp, {r0, r4, r11}
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_02114e94
	cmp r0, #0
	beq _02115E9C
	mov r1, #0
	mov r0, #0x11
	mov r2, r1
	bl NNS_G3dGeBufferOP_N
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02114da8
	ldr r0, [sp, #0x1c]
	mov r1, r9
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, r8
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, r4
	str r0, [sp, #8]
	mov r0, r10
	str r7, [sp, #0xc]
	bl FUN_ov16_02115058
	cmp r0, #0
	beq _02115E84
	str r7, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_02115910
_02115E84:
	mov r0, #1
	str r0, [sp, #0x24]
	mov r0, #0x12
	add r1, sp, #0x24
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_02115E9C:
	add r4, r4, #0x10
	add r5, r5, #1
	cmp r5, r6
	blt _02115DEC
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02115d00

	arm_func_start FUN_ov16_02115eb4
FUN_ov16_02115eb4: ; 0x02115EB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r1
	ldr r1, [r10, #0x14]
	mov r7, r0
	cmp r1, #0
	mov r6, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r1, [r10, #0x10]
	cmp r1, r2
	bne _02115EF4
	ldrsh r0, [r10, #0x12]
	cmp r0, r3
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02115EF4:
	cmp r1, #0
	ldrgesh r0, [r10, #0x12]
	cmpge r0, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r1, [r10, #4]
	mov r0, r7
	bl FUN_ov16_02116920
	mov r5, r0
	mov r1, r5
	add r0, r7, #4
	bl FUN_02058e50
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r5
	mov r2, r6
	add r0, r7, #4
	bl FUN_02059bb4
	mov r4, r0
	mov r1, r5
	mov r2, r6
	add r0, r7, #4
	bl FUN_0205999c
	mov r5, r0
	ldrsh r2, [r10, #0x10]
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_02114c0c
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r10, #0x12]
	ldrh r1, [r10, #0xa]
	ldr r3, [r4, #4]
	add r0, r0, r2, lsl #3
	ldrh r2, [r0, #8]
	add r0, r4, r3
	str r0, [sp, #4]
	add r0, r0, r2, lsl #2
	ldr r0, [r0, #4]
	tst r1, #0x200
	add r0, r4, r0
	str r0, [sp, #8]
	add r4, r0, #0xc
	beq _02115FBC
	ldr r0, [r10, #0x14]
	mov r1, r6
	mov r2, #0x200
	bl MI_CpuFill8
_02115FBC:
	ldr r0, [sp, #8]
	mov r7, #0
	ldrh r0, [r0, #8]
	str r7, [sp]
	cmp r0, #0
	ble _0211612C
_02115FD4:
	ldr r2, [sp, #4]
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldrb r2, [r2, #2]
	bl FUN_020515c8
	ldrh r1, [r10, #0xa]
	mov r6, r0
	tst r1, #0x200
	beq _021160F0
	ldrh r11, [r4]
	ldrh r1, [r4, #0xa]
	mov r2, #8
	ldrh r0, [r4, #8]
	tst r11, #1
	mov r7, r2, lsl r1
	mov r0, r2, lsl r0
	ldrh r8, [r4, #2]
	bne _02116060
	cmp r7, #0
	mov r6, #0
	ble _021160E8
	mov r9, r0, asr #1
_0211602C:
	ldr r0, [r4, #0xc]
	ldr r2, [r10, #0x14]
	add r0, r5, r0
	mla r0, r9, r6, r0
	add r1, r6, r8
	add r1, r2, r1, lsl #4
	mov r2, r9
	add r1, r1, r11, asr #1
	bl MI_CpuCopy8
	add r6, r6, #1
	cmp r6, r7
	blt _0211602C
	b _021160E8
_02116060:
	cmp r7, #0
	mov r1, #0
	ble _021160E8
	mov r0, r0, asr #1
	add r3, r11, #1
	mov lr, r1
_02116078:
	ldr r2, [r4, #0xc]
	ldr r6, [r10, #0x14]
	add r2, r5, r2
	mla r9, r0, r1, r2
	cmp r0, #0
	add r2, r1, r8
	add r2, r6, r2, lsl #4
	add r11, r2, r3, asr #1
	mov r6, lr
	ble _021160DC
_021160A0:
	ldrb r2, [r11, #-1]
	ldrb r12, [r9]
	add r6, r6, #1
	and r2, r2, #0xf
	mov r12, r12, lsl #0x1c
	orr r2, r2, r12, lsr #24
	strb r2, [r11, #-1]
	cmp r6, r0
	ldrb r2, [r11]
	ldrb r12, [r9], #1
	and r2, r2, #0xf0
	and r12, r12, #0xf0
	orr r2, r2, r12, asr #4
	strb r2, [r11], #1
	blt _021160A0
_021160DC:
	add r1, r1, #1
	cmp r1, r7
	blt _02116078
_021160E8:
	mov r7, #0x200
	b _0211610C
_021160F0:
	ldr r0, [r4, #0xc]
	ldr r1, [r10, #0x14]
	mov r2, r6
	add r0, r5, r0
	add r1, r1, r7
	bl MIi_CpuCopy32
	add r7, r7, r6
_0211610C:
	ldr r0, [sp, #8]
	add r4, r4, #0x10
	ldrh r1, [r0, #8]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r1
	blt _02115FD4
_0211612C:
	ldr r0, [r10, #0x14]
	mov r1, r7
	bl DC_FlushRange
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02115eb4

	arm_func_start FUN_ov16_02116140
FUN_ov16_02116140: ; 0x02116140
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrh r1, [r4, #4]
	mov r8, r0
	mov r5, #0
	mov r7, r2
	mov r2, r5
	add r0, r8, #4
	mov r6, r3
	bl FUN_02059b8c
	movs r1, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r2, r7
	bl FUN_ov16_02114c0c
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x1c]
	strh r7, [r4, #0x10]
	cmp r1, #0
	beq _021161D8
	strh r5, [r4, #0x12]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _021161C4
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021161D0
_021161C4:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_021161D0:
	bl _ffix
	str r0, [r4, #0x20]
_021161D8:
	ldr r0, [sp, #0x18]
	cmp r6, #0
	str r0, [r4, #0x1c]
	ldrneh r0, [r4, #0xa]
	strb r6, [r4, #0x1a]
	orrne r0, r0, #2
	strneh r0, [r4, #0xa]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02116140

	arm_func_start FUN_ov16_021161fc
FUN_ov16_021161fc: ; 0x021161FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrb r1, [r6, #0x1a]
	mov r7, r0
	mov r5, r2
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	ble _0211623C
	sub r0, r0, r5
	str r0, [r6, #0x1c]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r6, #0x1c]
_0211623C:
	ldrh r1, [r6, #4]
	mov r4, #0
	mov r2, r4
	add r0, r7, #4
	bl FUN_02059b8c
	movs r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r2, [r6, #0x10]
	mov r0, r7
	bl FUN_ov16_02114c0c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsh r2, [r6, #0x12]
	ldr r1, [r6, #0x20]
	add r3, r0, #8
	cmp r1, #0
	add r3, r3, r2, lsl #3
	bgt _02116348
	ldrh r1, [r3, #2]
	cmp r1, #0
	bne _021162E0
	ldrb r1, [r6, #0x1a]
	mov r2, #1
	strb r2, [r6, #0x1b]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _021162C4
_021162A8: ; jump table
	b _021162E0 ; case 0
	b _021162C4 ; case 1
	b _021162C4 ; case 2
	b _021162E0 ; case 3
	b _021162BC ; case 4
_021162BC:
	strb r4, [r6, #0x1a]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021162C4:
	ldrh r1, [r6, #0xa]
	ldr r0, _02116354 ; =0x0000FFFD
	mov r2, #0
	and r0, r1, r0
	strb r2, [r6, #0x1a]
	strh r0, [r6, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021162E0:
	ldrsh r4, [r6, #0x12]
	ldrh r1, [r3, #2]
	ldrsh r5, [r6, #0x10]
	strh r1, [r6, #0x12]
	ldrsh r1, [r6, #0x12]
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211631C
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02116328
_0211631C:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_02116328:
	bl _ffix
	str r0, [r6, #0x20]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02115eb4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116348:
	sub r0, r1, r5
	str r0, [r6, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116354: .word 0x0000FFFD
	arm_func_end FUN_ov16_021161fc

	arm_func_start FUN_ov16_02116358
FUN_ov16_02116358: ; 0x02116358
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
	beq _021163A0
	ldrb lr, [r3, #0x18]
_02116388:
	ldrb r0, [r12, #0x18]
	cmp lr, r0
	bhi _021163A0
	ldr r12, [r12, #0x20]
	cmp r12, #0
	bne _02116388
_021163A0:
	cmp r12, #0
	bne _021163C4
	str r3, [r5, #0x20]
	mov r0, #0
	str r0, [r3, #0x20]
	ldr r0, [r2]
	str r0, [r3, #0x1c]
	str r3, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_021163C4:
	cmp r12, r4
	streq r3, [r1]
	str r12, [r3, #0x20]
	ldr r0, [r12, #0x1c]
	str r0, [r3, #0x1c]
	str r3, [r12, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02116358

	arm_func_start FUN_ov16_021163e0
FUN_ov16_021163e0: ; 0x021163E0
	ldr r0, [r1]
	cmp r3, r0
	ldreq r0, [r3, #0x20]
	streq r0, [r1]
	ldr r0, [r2]
	cmp r3, r0
	ldreq r0, [r3, #0x1c]
	streq r0, [r2]
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	ldrne r0, [r3, #0x20]
	strne r0, [r1, #0x20]
	ldr r1, [r3, #0x20]
	cmp r1, #0
	ldrne r0, [r3, #0x1c]
	strne r0, [r1, #0x1c]
	mov r0, #0
	str r0, [r3, #0x1c]
	str r0, [r3, #0x20]
	bx lr
	arm_func_end FUN_ov16_021163e0

	arm_func_start FUN_ov16_02116430
FUN_ov16_02116430: ; 0x02116430
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	ldr r4, [r1, #0x14]
	ldr lr, [r2, #0x30]
	ldr r12, [r1, #0x10]
	ldr r3, [r2, #0x2c]
	ldr r0, [r2, #0x28]
	ldr r1, [r1, #0xc]
	add r12, r12, r3
	add r3, r1, r0
	add r4, r4, lr
	add r0, sp, #8
	add r1, sp, #4
	add r2, sp, #0
	str r3, [sp, #8]
	str r12, [sp, #0xc]
	str r4, [sp, #0x10]
	bl NNS_G3dWorldPosToScrPos
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [sp, #4]
	mvn r0, #0xf
	cmp r1, r0
	blt _021164B8
	cmp r1, #0x110
	bge _021164B8
	ldr r1, [sp]
	sub r0, r0, #0x10
	cmp r1, r0
	blt _021164B8
	cmp r1, #0xe0
	blt _021164C4
_021164B8:
	add sp, sp, #0x14
	mov r0, #0
	ldmfd sp!, {r3, r4, pc}
_021164C4:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_02116430

	arm_func_start FUN_ov16_021164d0
FUN_ov16_021164d0: ; 0x021164D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r1
	ldrsh r5, [r6, #0x10]
	ldrsh r4, [r6, #0x12]
	ldr lr, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str lr, [sp]
	mov r7, r0
	str r12, [sp, #4]
	bl FUN_ov16_02116140
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r12, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb r12, [r6, #0x1b]
	bl FUN_ov16_02115eb4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021164d0

	arm_func_start _ZN13C3DSpriteCtrl4initEii
_ZN13C3DSpriteCtrl4initEii: ; 0x0211652C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r2
	cmp r1, #0
	cmpgt r6, #0
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	str r4, [r7, #0x2c]
	str r4, [r7, #0x40]
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #4
	bl FUN_02058644
	mov r0, #0x24
	mul r5, r6, r0
	ldr r0, _021165B0 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r1, r0
	str r1, [r7, #0x20]
	bne _02116598
	mov r0, r7
	bl FUN_ov16_02116650
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116598:
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
	str r6, [r7, #0x24]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021165B0: .word gAllocator
	arm_func_end _ZN13C3DSpriteCtrl4initEii

	arm_func_start FUN_ov16_021165b4
FUN_ov16_021165b4: ; 0x021165B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021165F8
	ldr r4, [r5, #0x24]
	cmp r4, #1
	blt _021165EC
_021165D4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_02116aa8
	sub r4, r4, #1
	cmp r4, #1
	bge _021165D4
_021165EC:
	ldr r1, [r5, #0x20]
	ldr r0, _02116618 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_021165F8:
	add r0, r5, #4
	bl FUN_0205866c
	mov r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_02116618: .word gAllocator
	arm_func_end FUN_ov16_021165b4

	arm_func_start FUN_ov16_0211661c
FUN_ov16_0211661c: ; 0x0211661C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02116648 ; =gConfig
	ldr r1, _0211664C ; =0x02119EA4
	bl _ZN7CConfig8getParamEPKc
	str r0, [r4, #0x44]
	cmp r0, #0x20
	movhs r0, #0x10
	strhs r0, [r4, #0x44]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02116648: .word gConfig
_0211664C: .word ov16_02119EA4
	arm_func_end FUN_ov16_0211661c

	arm_func_start FUN_ov16_02116650
FUN_ov16_02116650: ; 0x02116650
	bx lr
	arm_func_end FUN_ov16_02116650

	arm_func_start FUN_ov16_02116654
FUN_ov16_02116654: ; 0x02116654
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0x28]
	mov r6, r1
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0211666C:
	ldr r0, [r5]
	cmp r0, #0
	beq _021166CC
	ldrb r4, [r5, #6]
	cmp r4, #1
	blt _021166CC
_02116684:
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_021168c0
	movs r1, r0
	beq _021166C0
	ldr r0, [r7, #0x40]
	tst r0, #1
	beq _021166B4
	ldrh r0, [r1, #0xa]
	tst r0, #0x100
	beq _021166C0
_021166B4:
	mov r0, r7
	mov r2, r6
	bl FUN_ov16_021161fc
_021166C0:
	sub r4, r4, #1
	cmp r4, #1
	bge _02116684
_021166CC:
	ldr r5, [r5, #0x20]
	cmp r5, #0
	bne _0211666C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116654

	arm_func_start FUN_ov16_021166dc
FUN_ov16_021166dc: ; 0x021166DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #0x28]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, r9
	bl FUN_ov16_02114d68
	ldr r6, [r9, #0x28]
_02116718:
	ldr r0, [r6]
	cmp r0, #0
	beq _021167E8
	ldrh r0, [r6, #4]
	tst r0, #2
	ldrneb r0, [r6, #7]
	cmpne r0, #0
	beq _021167E8
	ldrb r0, [r6, #6]
	mov r5, #1
	cmp r0, #1
	blt _021167E8
_02116748:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_021168c0
	movs r4, r0
	ldrneb r0, [r4, #0xc]
	cmpne r0, #0
	beq _021167D8
	ldrh r1, [r4, #0xa]
	tst r1, #2
	beq _021167D8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021167D8
	cmp r8, #0
	beq _02116790
	tst r1, #0x80
	beq _021167A0
_02116790:
	cmp r8, #0
	bne _021167D8
	tst r1, #0x80
	beq _021167D8
_021167A0:
	cmp r8, #0
	bne _021167C0
	mov r0, r9
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_02116430
	cmp r0, #0
	beq _021167D8
_021167C0:
	mov r0, r9
	mov r1, r6
	mov r2, r4
	mov r3, r8
	str r7, [sp]
	bl FUN_ov16_02115d00
_021167D8:
	ldrb r0, [r6, #6]
	add r5, r5, #1
	cmp r5, r0
	ble _02116748
_021167E8:
	ldr r6, [r6, #0x20]
	cmp r6, #0
	bne _02116718
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_021166dc

	arm_func_start FUN_ov16_021167f8
FUN_ov16_021167f8: ; 0x021167F8
	ldr r12, _02116808 ; =FUN_ov16_021166dc
	mov r1, #1
	mov r2, #0
	bx r12
_02116808: .word FUN_ov16_021166dc
	arm_func_end FUN_ov16_021167f8

	arm_func_start FUN_ov16_0211680c
FUN_ov16_0211680c: ; 0x0211680C
	mov r1, #0
	ldr r12, _0211681C ; =FUN_ov16_021166dc
	mov r2, r1
	bx r12
_0211681C: .word FUN_ov16_021166dc
	arm_func_end FUN_ov16_0211680c

	arm_func_start FUN_ov16_02116820
FUN_ov16_02116820: ; 0x02116820
	ldr r12, _02116830 ; =FUN_ov16_021166dc
	mov r1, #0
	mov r2, #1
	bx r12
_02116830: .word FUN_ov16_021166dc
	arm_func_end FUN_ov16_02116820

	arm_func_start FUN_ov16_02116834
FUN_ov16_02116834: ; 0x02116834
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_02059880
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02116834

	arm_func_start FUN_ov16_02116848
FUN_ov16_02116848: ; 0x02116848
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_020598ec
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02116848

	arm_func_start FUN_ov16_0211685c
FUN_ov16_0211685c: ; 0x0211685C
	ldr r2, [r0, #0x20]
	cmp r2, #0
	ldrne r0, [r0, #0x24]
	cmpne r0, #0
	movle r0, #0
	bxle lr
	cmp r1, #0
	ble _02116884
	cmp r1, r0
	ble _0211688C
_02116884:
	mov r0, #0
	bx lr
_0211688C:
	sub r1, r1, #1
	mov r0, #0x24
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov16_0211685c

	arm_func_start FUN_ov16_0211689c
FUN_ov16_0211689c: ; 0x0211689C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl FUN_ov16_0211685c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_021168c0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0211689c

	arm_func_start FUN_ov16_021168c0
FUN_ov16_021168c0: ; 0x021168C0
	cmp r1, #0
	ldrne r3, [r1]
	cmpne r3, #0
	cmpne r2, #0
	ble _021168E0
	ldrb r0, [r1, #6]
	cmp r2, r0
	ble _021168E8
_021168E0:
	mov r0, #0
	bx lr
_021168E8:
	sub r1, r2, #1
	mov r0, #0x48
	mla r0, r1, r0, r3
	bx lr
	arm_func_end FUN_ov16_021168c0

	arm_func_start FUN_ov16_021168f8
FUN_ov16_021168f8: ; 0x021168F8
	ldr r12, _0211690C ; =FUN_02059038
	add r0, r0, #4
	and r2, r2, #0xff
	mov r3, #0
	bx r12
_0211690C: .word FUN_02059038
	arm_func_end FUN_ov16_021168f8

	arm_func_start FUN_ov16_02116910
FUN_ov16_02116910: ; 0x02116910
	ldr r12, _0211691C ; =FUN_020591e8
	add r0, r0, #4
	bx r12
_0211691C: .word FUN_020591e8
	arm_func_end FUN_ov16_02116910

	arm_func_start FUN_ov16_02116920
FUN_ov16_02116920: ; 0x02116920
	ldr r12, _0211692C ; =_ZN10C3DSprFile14getSpriteSheetEi
	add r0, r0, #4
	bx r12
_0211692C: .word _ZN10C3DSprFile14getSpriteSheetEi
	arm_func_end FUN_ov16_02116920

	arm_func_start FUN_ov16_02116930
FUN_ov16_02116930: ; 0x02116930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #0
	mov r6, r2
	mov r2, r4
	add r0, r7, #4
	mov r5, r3
	bl FUN_02059b8c
	movs r1, r0
	beq _0211696C
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02114c40
	mov r4, r0
_0211696C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116930

	arm_func_start FUN_ov16_02116974
FUN_ov16_02116974: ; 0x02116974
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, r2
	mov r2, r4
	add r0, r6, #4
	bl FUN_02059b8c
	movs r1, r0
	beq _021169A8
	mov r0, r6
	mov r2, r5
	bl FUN_ov16_02114c0c
	mov r4, r0
_021169A8:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02116974

	arm_func_start FUN_ov16_021169b0
FUN_ov16_021169b0: ; 0x021169B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	mov r6, r0
	cmp r9, #0
	ble _021169CC
	cmp r9, #0xfe
	blt _021169D4
_021169CC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021169D4:
	bl FUN_ov16_02114c90
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_0211685c
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_02114d3c
	mov r0, #0x48
	mul r8, r9, r0
	ldr r0, _02116AA4 ; =gAllocator
	mov r1, r8
	bl _ZN10CAllocator8allocateEm
	movs r7, r0
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r7
	mov r2, r8
	bl MIi_CpuClearFast
	str r7, [r5]
	strb r9, [r5, #6]
	ldrh r1, [r5, #4]
	mov r0, r6
	mov r3, r5
	orr r1, r1, #3
	strh r1, [r5, #4]
	add r1, r6, #0x28
	add r2, r6, #0x2c
	bl FUN_ov16_02116358
	ldrb r8, [r5, #6]
	cmp r8, #1
	blt _02116A9C
_02116A60:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_021168c0
	movs r7, r0
	beq _02116A90
	mov r0, r6
	mov r1, r7
	bl FUN_ov16_02114ce4
	ldrh r0, [r7, #0xa]
	orr r0, r0, #1
	strh r0, [r7, #0xa]
_02116A90:
	sub r8, r8, #1
	cmp r8, #1
	bge _02116A60
_02116A9C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02116AA4: .word gAllocator
	arm_func_end FUN_ov16_021169b0

	arm_func_start FUN_ov16_02116aa8
FUN_ov16_02116aa8: ; 0x02116AA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_0211685c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	tst r0, #1
	beq _02116ADC
	mov r0, r5
	mov r3, r4
	add r1, r5, #0x28
	add r2, r5, #0x2c
	bl FUN_ov16_021163e0
_02116ADC:
	ldr r1, [r4]
	cmp r1, #0
	beq _02116AF0
	ldr r0, _02116B04 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02116AF0:
	mov r1, r4
	mov r0, #0
	mov r2, #0x24
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, pc}
_02116B04: .word gAllocator
	arm_func_end FUN_ov16_02116aa8

	arm_func_start FUN_ov16_02116b08
FUN_ov16_02116b08: ; 0x02116B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	movs r6, r3
	mov r7, r2
	mov r9, r1
	movmi r6, r7
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_02116920
	mov r5, r0
	mov r0, r8
	mov r1, r6
	bl FUN_ov16_02116920
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	mov r1, r9
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6, lsl #0x10
	mov r9, r0, lsr #0x10
	mvn r6, #0
_02116BA0:
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	strneh r9, [r0, #6]
	ldrneh r1, [r0, #4]
	sub r5, r5, #1
	cmpne r1, r7
	strneh r7, [r0, #4]
	strneh r6, [r0, #0x10]
	strneh r6, [r0, #0x12]
	cmp r5, #1
	bge _02116BA0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02116b08

	arm_func_start FUN_ov16_02116bdc
FUN_ov16_02116bdc: ; 0x02116BDC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r4, r0
	bl FUN_ov16_02116920
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	bl FUN_ov16_0211685c
	movs r6, r0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r7, [r6, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5, lsl #0x10
	mov r5, r0, lsr #0x10
_02116C38:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r7, r7, #1
	strneh r5, [r0, #6]
	cmp r7, #1
	bge _02116C38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116bdc

	arm_func_start FUN_ov16_02116c60
FUN_ov16_02116c60: ; 0x02116C60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02116C8C:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneb r6, [r0, #8]
	cmp r5, #1
	bge _02116C8C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116c60

	arm_func_start FUN_ov16_02116cb4
FUN_ov16_02116cb4: ; 0x02116CB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r2
	cmp r3, #0
	bne _02116CD0
	bl FUN_ov16_02116d30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116CD0:
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02116D2C ; =0x00007BC3
	and r0, r7, r0
	mov r7, r0, lsl #0x10
_02116CFC:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	ldrneh r1, [r0, #0xa]
	sub r5, r5, #1
	orrne r1, r1, r7, lsr #16
	strneh r1, [r0, #0xa]
	cmp r5, #1
	bge _02116CFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02116D2C: .word 0x00007BC3
	arm_func_end FUN_ov16_02116cb4

	arm_func_start FUN_ov16_02116d30
FUN_ov16_02116d30: ; 0x02116D30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r2
	bl FUN_ov16_0211685c
	movs r6, r0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r7, [r6, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r0, r5
	mov r5, r0, lsl #0x10
_02116D64:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021168c0
	cmp r0, #0
	ldrneh r1, [r0, #0xa]
	sub r7, r7, #1
	andne r1, r1, r5, lsr #16
	strneh r1, [r0, #0xa]
	cmp r7, #1
	bge _02116D64
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116d30

	arm_func_start FUN_ov16_02116d94
FUN_ov16_02116d94: ; 0x02116D94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	cmp r6, #0x1f
	mov r0, r7
	movhi r6, #0x1f
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02116DCC:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneb r6, [r0, #0xc]
	cmp r5, #1
	bge _02116DCC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116d94

	arm_func_start FUN_ov16_02116df4
FUN_ov16_02116df4: ; 0x02116DF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	movs r4, r2
	mov r0, r10
	movmi r4, #0
	bl FUN_ov16_0211685c
	movs r5, r0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r5, #6]
	cmp r7, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	rsb r8, r4, #0
	mov r11, #0x3f000000
	mov r9, r8, lsl #0xc
	mov r4, r11
_02116E38:
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021168c0
	movs r6, r0
	beq _02116E84
	cmp r8, #0
	mov r0, r9
	ble _02116E70
	bl _fflt
	mov r1, r0
	mov r0, r4
	bl _fadd
	b _02116E7C
_02116E70:
	bl _fflt
	mov r1, r11
	bl _fsub
_02116E7C:
	bl _ffix
	str r0, [r6, #0x30]
_02116E84:
	sub r7, r7, #1
	cmp r7, #1
	bge _02116E38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02116df4

	arm_func_start FUN_ov16_02116e94
FUN_ov16_02116e94: ; 0x02116E94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02116EC0:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneh r6, [r0, #0xe]
	cmp r5, #1
	bge _02116EC0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02116e94

	arm_func_start FUN_ov16_02116ee8
FUN_ov16_02116ee8: ; 0x02116EE8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, r2
	mov r9, r3
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, r10, lsl #0xc
	mov r8, r9, lsl #0xc
_02116F20:
	mov r0, r11
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	movs r6, r0
	beq _02116FA0
	cmp r10, #0
	mov r0, r7
	ble _02116F58
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02116F64
_02116F58:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02116F64:
	bl _ffix
	str r0, [r6, #0x28]
	cmp r9, #0
	mov r0, r8
	ble _02116F8C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02116F98
_02116F8C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02116F98:
	bl _ffix
	str r0, [r6, #0x2c]
_02116FA0:
	sub r5, r5, #1
	cmp r5, #1
	bge _02116F20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_02116ee8

	arm_func_start FUN_ov16_02116fb0
FUN_ov16_02116fb0: ; 0x02116FB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r2
	mov r7, r3
	bl FUN_ov16_0211685c
	movs r5, r0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r6, [r5, #6]
	cmp r6, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
_02116FE4:
	mov r0, r9
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_021168c0
	movs r1, r0
	beq _0211701C
	ldrsh r2, [r1, #0x10]
	ldrsh r3, [r1, #0x12]
	mov r0, r9
	strh r8, [r1, #0x10]
	strh r7, [r1, #0x12]
	strb r4, [r1, #0x1a]
	strb r4, [r1, #0x1b]
	bl FUN_ov16_02115eb4
_0211701C:
	sub r6, r6, #1
	cmp r6, #1
	bge _02116FE4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02116fb0

	arm_func_start FUN_ov16_0211702c
FUN_ov16_0211702c: ; 0x0211702C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	bl FUN_ov16_0211685c
	movs r9, r0
	ldrne r0, [r9]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r10, [r9, #6]
	cmp r10, #1
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02117070:
	mov r0, r8
	mov r1, r9
	mov r2, r10
	bl FUN_ov16_021168c0
	mov r1, r0
	str r5, [sp]
	mov r0, r8
	mov r2, r7
	str r4, [sp, #4]
	mov r3, r6
	bl FUN_ov16_021164d0
	sub r10, r10, #1
	cmp r10, #1
	bge _02117070
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_0211702c

	arm_func_start FUN_ov16_021170b0
FUN_ov16_021170b0: ; 0x021170B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_021170DC:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneh r6, [r0, #0x24]
	cmp r5, #1
	bge _021170DC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021170b0

	arm_func_start FUN_ov16_02117104
FUN_ov16_02117104: ; 0x02117104
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
_02117134:
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	strneb r7, [r0, #0x26]
	sub r5, r5, #1
	strneb r6, [r0, #0x27]
	cmp r5, #1
	bge _02117134
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02117104

	arm_func_start FUN_ov16_02117160
FUN_ov16_02117160: ; 0x02117160
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrne r1, [sp, #8]
	strne r4, [r0]
	strne r1, [r0, #0x14]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02117160

	arm_func_start FUN_ov16_02117180
FUN_ov16_02117180: ; 0x02117180
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r6, [sp, #0x20]
	mov r10, r0
	mov r7, r3
	mov r9, r1
	cmp r6, #0
	movlt r6, r7
	mov r0, r10
	mov r1, r7
	mov r8, r2
	bl FUN_ov16_02116920
	mov r5, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov16_02116920
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r5
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneh r6, [r0, #6]
	ldrneh r1, [r0, #4]
	cmpne r1, r7
	strneh r7, [r0, #4]
	mvnne r1, #0
	strneh r1, [r0, #0x10]
	strneh r1, [r0, #0x12]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_02117180

	arm_func_start FUN_ov16_02117220
FUN_ov16_02117220: ; 0x02117220
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r6, r1
	mov r1, r4
	mov r7, r0
	mov r5, r2
	bl FUN_ov16_02116920
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneh r4, [r0, #6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02117220

	arm_func_start FUN_ov16_0211726c
FUN_ov16_0211726c: ; 0x0211726C
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneb r4, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211726c

	arm_func_start FUN_ov16_02117284
FUN_ov16_02117284: ; 0x02117284
	stmfd sp!, {r4, lr}
	ldrb r12, [sp, #8]
	mov r4, r3
	cmp r12, #0
	bne _021172A0
	bl FUN_ov16_021172cc
	ldmfd sp!, {r4, pc}
_021172A0:
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _021172C8 ; =0x00007BC3
	ldrh r2, [r0, #0xa]
	and r1, r4, r1
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0xa]
	ldmfd sp!, {r4, pc}
_021172C8: .word 0x00007BC3
	arm_func_end FUN_ov16_02117284

	arm_func_start FUN_ov16_021172cc
FUN_ov16_021172cc: ; 0x021172CC
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02117300 ; =0x0000FFFE
	ldrh r2, [r0, #0xa]
	and r1, r4, r1
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #0xa]
	ldmfd sp!, {r4, pc}
_02117300: .word 0x0000FFFE
	arm_func_end FUN_ov16_021172cc

	arm_func_start FUN_ov16_02117304
FUN_ov16_02117304: ; 0x02117304
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r4, #0x1f
	movhi r4, #0x1f
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneb r4, [r0, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02117304

	arm_func_start FUN_ov16_02117324
FUN_ov16_02117324: ; 0x02117324
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrneb r0, [r0, #0xc]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117324

	arm_func_start FUN_ov16_0211733c
FUN_ov16_0211733c: ; 0x0211733C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r3
	movmi r5, #0
	bl FUN_ov16_0211689c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	rsb r0, r5, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _02117378
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02117384
_02117378:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02117384:
	bl _ffix
	str r0, [r4, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0211733c

	arm_func_start FUN_ov16_02117390
FUN_ov16_02117390: ; 0x02117390
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	bl FUN_ov16_0211689c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _021173C4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021173D0
_021173C4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021173D0:
	bl _ffix
	ldrsh r1, [sp, #0x10]
	str r0, [r4, #0x28]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _021173FC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02117408
_021173FC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02117408:
	bl _ffix
	str r0, [r4, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02117390

	arm_func_start FUN_ov16_02117414
FUN_ov16_02117414: ; 0x02117414
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r3
	bl FUN_ov16_0211689c
	ldr r2, [sp, #0x1c]
	mov r1, r0
	ldrb r3, [sp, #0x18]
	ldr r12, [sp, #0x20]
	str r2, [sp]
	mov r0, r5
	mov r2, r4
	str r12, [sp, #4]
	bl FUN_ov16_021164d0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02117414

	arm_func_start FUN_ov16_02117454
FUN_ov16_02117454: ; 0x02117454
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	strneh r4, [r0, #0x24]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02117454

	arm_func_start FUN_ov16_0211746c
FUN_ov16_0211746c: ; 0x0211746C
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrneb r1, [sp, #8]
	strneb r4, [r0, #0x26]
	strneb r1, [r0, #0x27]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211746c

	arm_func_start FUN_ov16_0211748c
FUN_ov16_0211748c: ; 0x0211748C
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r4, #0x1f
	movhi r4, #0x1f
	bl FUN_ov16_0211685c
	cmp r0, #0
	strneb r4, [r0, #7]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211748c

	arm_func_start FUN_ov16_021174ac
FUN_ov16_021174ac: ; 0x021174AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	rsb r0, r5, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _021174E4
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _021174F0
_021174E4:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_021174F0:
	bl _ffix
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_021174ac

	arm_func_start FUN_ov16_021174fc
FUN_ov16_021174fc: ; 0x021174FC
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov16_0211685c
	cmp r0, #0
	strneh r4, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_021174fc

	arm_func_start FUN_ov16_02117514
FUN_ov16_02117514: ; 0x02117514
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_0211685c
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _0211754C
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02117558
_0211754C:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02117558:
	bl _ffix
	str r0, [r4, #0xc]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _02117580
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211758C
_02117580:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211758C:
	bl _ffix
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02117514

	arm_func_start FUN_ov16_02117598
FUN_ov16_02117598: ; 0x02117598
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r3, #0
	bne _021175B0
	bl FUN_ov16_021175dc
	ldmfd sp!, {r4, pc}
_021175B0:
	bl FUN_ov16_0211685c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _021175D8 ; =0x00007003
	ldrh r2, [r0, #4]
	and r1, r4, r1
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_021175D8: .word 0x00007003
	arm_func_end FUN_ov16_02117598

	arm_func_start FUN_ov16_021175dc
FUN_ov16_021175dc: ; 0x021175DC
	stmfd sp!, {r4, lr}
	mov r4, r2
	bl FUN_ov16_0211685c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02117610 ; =0x00007002
	ldrh r2, [r0, #4]
	and r1, r4, r1
	mvn r1, r1
	mov r1, r1, lsl #0x10
	and r1, r2, r1, lsr #16
	strh r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_02117610: .word 0x00007002
	arm_func_end FUN_ov16_021175dc

	arm_func_start FUN_ov16_02117614
FUN_ov16_02117614: ; 0x02117614
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	beq _02117638
	ldrh r0, [r0, #0xa]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_02117638:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117614

	arm_func_start FUN_ov16_02117640
FUN_ov16_02117640: ; 0x02117640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0211685c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	blt _02117698
_02117664:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	beq _0211768C
	ldrh r0, [r0, #0xa]
	tst r0, #2
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_0211768C:
	sub r5, r5, #1
	cmp r5, #1
	bge _02117664
_02117698:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02117640

	arm_func_start FUN_ov16_021176a0
FUN_ov16_021176a0: ; 0x021176A0
	ldr r2, [r0, #0x40]
	orr r1, r2, r1
	str r1, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov16_021176a0

	arm_func_start FUN_ov16_021176b0
FUN_ov16_021176b0: ; 0x021176B0
	ldr r2, [r0, #0x40]
	mvn r1, r1
	and r1, r2, r1
	str r1, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov16_021176b0

	arm_func_start FUN_ov16_021176c4
FUN_ov16_021176c4: ; 0x021176C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_0211685c
	cmp r0, #0
	strne r5, [r0, #0xc]
	ldrne r1, [sp, #0x10]
	strne r4, [r0, #0x10]
	strne r1, [r0, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_021176c4

	arm_func_start FUN_ov16_021176ec
FUN_ov16_021176ec: ; 0x021176EC
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldrneb r0, [r0, #0x1a]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_021176ec

	arm_func_start FUN_ov16_02117704
FUN_ov16_02117704: ; 0x02117704
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldrneh r0, [r0, #6]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117704

	arm_func_start FUN_ov16_0211771c
FUN_ov16_0211771c: ; 0x0211771C
	stmfd sp!, {r4, lr}
	mov r4, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	ldrne r2, [sp, #8]
	strne r4, [r0, #0x34]
	ldrne r1, [sp, #0xc]
	strne r2, [r0, #0x38]
	strne r1, [r0, #0x3c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0211771c

	arm_func_start FUN_ov16_02117744
FUN_ov16_02117744: ; 0x02117744
	stmfd sp!, {r3, lr}
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x1a]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x1b]
	ldrb r0, [r0, #0x1b]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02117744

	arm_func_start FUN_ov16_02117770
FUN_ov16_02117770: ; 0x02117770
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_0211779C:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strne r6, [r0, #0x40]
	cmp r5, #1
	bge _0211779C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02117770

	arm_func_start FUN_ov16_021177c4
FUN_ov16_021177c4: ; 0x021177C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_021177F0:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strneb r6, [r0, #0xd]
	cmp r5, #1
	bge _021177F0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_021177c4

	arm_func_start FUN_ov16_02117818
FUN_ov16_02117818: ; 0x02117818
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov16_0211685c
	movs r4, r0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r4, #6]
	cmp r5, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
_02117844:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021168c0
	cmp r0, #0
	sub r5, r5, #1
	strne r6, [r0, #0x44]
	cmp r5, #1
	bge _02117844
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02117818

	.section .init, 4
	arm_func_start __sinit_C3DSpriteCtrl.cpp
__sinit_C3DSpriteCtrl.cpp: ; 0x021182F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211833C ; =0x02119E7C
	str r0, [r4, #0x14]
	ldr r0, _02118340 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02118344 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211833C: .word ov16_02119E7C
_02118340: .word 0x00009CCD
_02118344: .word 0x0000EA3C
	arm_func_end __sinit_C3DSpriteCtrl.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_C3DSpriteCtrl.cpp

	.data
	.global ov16_02119E7C
ov16_02119E7C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global _ZTV13C3DSpriteCtrl
_ZTV13C3DSpriteCtrl:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_ov16_02116834
	.word FUN_ov16_02116848
	.global ov16_02119EA4
ov16_02119EA4:
	.asciz "RPG_SHADOW_ALPHA"
	.balign 4, 0

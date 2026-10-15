
.public FX_Sqrt
.public FX_SinCosTable_
.public FX_Atan2Idx
.public MTX_RotY44_
.public MTX_Identity44_
.public MTX_Concat44
.public MIi_CpuClearFast
.public _ZN7CConfig8getParamEPKc
.public _fflt
.public _fadd
.public _fsub
.public _ffix
.public gConfig
.public ov16_02118790
.public ov16_021187A0
.public ov16_021187B0
.public MTX_LookAt
.public NNS_G3dGlb
.public NNS_G3dGlb_cameraMtx
.public MTX_PerspectiveW
.public NNS_G3dGlb_projMtx
.public MTX_OrthoW
.public FX_Div
.public MTX_Identity43_
.public FUN_02053b48
.public MTX_Concat43
.public VEC_Add
.public VEC_Distance
.public VEC_Subtract
.public VEC_Normalize
.public FUN_02053214
.public FUN_0205318c

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_020f6f8c
FUN_ov16_020f6f8c: ; 0x020F6F8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, [r1]
	ldr r2, [r1, #4]
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	mov r2, r3, asr #4
	mov r12, r2, lsl #1
	mov r1, r1, asr #4
	mov r4, r1, lsl #1
	add r2, r12, #1
	add r1, r4, #1
	ldr r6, _020F7024 ; =FX_SinCosTable_
	mov r3, r2, lsl #1
	mov r2, r4, lsl #1
	mov r1, r1, lsl #1
	ldrsh r5, [r6, r3]
	ldrsh r3, [r6, r2]
	ldrsh r1, [r6, r1]
	mov r2, r12, lsl #1
	smull r12, lr, r3, r5
	adds r4, r12, #0x800
	ldrsh r12, [r6, r2]
	smull r3, r2, r1, r5
	adc r1, lr, #0
	adds r3, r3, #0x800
	mov r4, r4, lsr #0xc
	orr r4, r4, r1, lsl #20
	rsb lr, r4, #0
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	rsb r1, r2, #0
	str lr, [r0]
	str r12, [r0, #4]
	str r1, [r0, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020F7024: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f6f8c

	arm_func_start FUN_ov16_020f7028
FUN_ov16_020f7028: ; 0x020F7028
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x80
	ldmia r1, {r6, r7, r8}
	mov r9, r0
	rsb r0, r6, #0
	rsb r1, r8, #0
	bl FX_Atan2Idx
	mov r5, r0
	rsb r0, r5, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	ldr r2, _020F70CC ; =FX_SinCosTable_
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r0]
	add r4, sp, #0x40
	mov r0, r4
	blx MTX_RotY44_
	add r10, sp, #0
	mov r0, r10
	bl MTX_Identity44_
	str r8, [sp, #0x38]
	mov r1, r4
	mov r0, r10
	mov r2, r10
	str r6, [sp, #0x30]
	str r7, [sp, #0x34]
	bl MTX_Concat44
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x34]
	rsb r1, r1, #0
	bl FX_Atan2Idx
	stmia r9, {r0, r5}
	mov r0, #0
	str r0, [r9, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F70CC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f7028

	arm_func_start FUN_ov16_020f70d0
FUN_ov16_020f70d0: ; 0x020F70D0
	ldr r12, [r1]
	ldr r1, [r2]
	sub r1, r1, r12
	smull r3, r2, r1, r3
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r1, r12, r2
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov16_020f70d0

	arm_func_start FUN_ov16_020f70fc
FUN_ov16_020f70fc: ; 0x020F70FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f70d0
	mov r3, r4
	add r0, r7, #4
	add r1, r6, #4
	add r2, r5, #4
	bl FUN_ov16_020f70d0
	mov r3, r4
	add r0, r7, #8
	add r1, r6, #8
	add r2, r5, #8
	bl FUN_ov16_020f70d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f70fc

	arm_func_start FUN_ov16_020f7140
FUN_ov16_020f7140: ; 0x020F7140
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r4, r3
	ldr r0, [r6]
	ldr r1, [r5]
	mov r2, r4
	bl FUN_ov16_020f7194
	str r0, [r7]
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	mov r2, r4
	bl FUN_ov16_020f7194
	str r0, [r7, #4]
	ldr r0, [r6, #8]
	ldr r1, [r5, #8]
	mov r2, r4
	bl FUN_ov16_020f7194
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_020f7140

	arm_func_start FUN_ov16_020f7194
FUN_ov16_020f7194: ; 0x020F7194
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r3, r2
	subs r2, r1, r0
	rsbmi r2, r2, #0
	cmp r2, #0x8000
	ble _020F71D4
	cmp r1, r0
	ldrgt r0, [sp, #0xc]
	addgt r0, r0, #0x10000
	strgt r0, [sp, #0xc]
	ldrle r0, [sp, #8]
	addle r0, r0, #0x10000
	strle r0, [sp, #8]
_020F71D4:
	add r0, sp, #0
	add r1, sp, #8
	add r2, sp, #0xc
	bl FUN_ov16_020f70d0
	ldr r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov16_020f7194

	arm_func_start FUN_ov16_020f71fc
FUN_ov16_020f71fc: ; 0x020F71FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, #0x60000
	mov r4, r0
	mov r6, #0
	mov lr, #0x1000
	mov r3, #0x10000
	sub r12, lr, #0xff000000
	ldr r0, _020F7368 ; =0x00001555
	ldr r2, _020F736C ; =0x00000536
	ldr r1, _020F7370 ; =0x00000F21
	mov r5, #0xc
	sub r9, r10, #0xc0000
	sub r8, r10, #0xe0000
	mov r7, #0x80000
	str r0, [r4, #8]
	mov r0, r6
	str r2, [r4]
	mov r2, r5
	str r1, [r4, #4]
	add r1, r4, #0xdc
	str r10, [r4, #0x14]
	str r9, [r4, #0x18]
	str r8, [r4, #0x1c]
	str r7, [r4, #0x20]
	str lr, [r4, #0xc]
	str r12, [r4, #0x10]
	str lr, [r4, #0x24]
	str r12, [r4, #0x28]
	str r6, [r4, #0x2c]
	str lr, [r4, #0x30]
	str r6, [r4, #0x34]
	strh r6, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str lr, [r4, #0x44]
	str r6, [r4, #0x48]
	str r6, [r4, #0x4c]
	str r6, [r4, #0x50]
	str r6, [r4, #0x58]
	str r6, [r4, #0x5c]
	str r6, [r4, #0x60]
	str r3, [r4, #0x54]
	str r6, [r4, #0x64]
	str r6, [r4, #0x68]
	str lr, [r4, #0x6c]
	str r6, [r4, #0x70]
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x80]
	str r6, [r4, #0x84]
	str r6, [r4, #0x88]
	str r3, [r4, #0x7c]
	str r6, [r4, #0x8c]
	str r6, [r4, #0x90]
	str lr, [r4, #0x94]
	str r6, [r4, #0x98]
	str r6, [r4, #0x9c]
	str r6, [r4, #0xa0]
	str r6, [r4, #0xa8]
	str r6, [r4, #0xac]
	str r6, [r4, #0xb0]
	str r3, [r4, #0xa4]
	str r6, [r4, #0xb4]
	str r6, [r4, #0xb8]
	str lr, [r4, #0xbc]
	str r6, [r4, #0xc0]
	str r6, [r4, #0xc4]
	str r6, [r4, #0xc8]
	str r6, [r4, #0xd0]
	str r6, [r4, #0xd4]
	str r6, [r4, #0xd8]
	str r3, [r4, #0xcc]
	bl MIi_CpuClearFast
	mov r0, r6
	mov r2, r5
	add r1, r4, #0xe8
	bl MIi_CpuClearFast
	mov r0, r6
	mov r2, r5
	add r1, r4, #0xf4
	bl MIi_CpuClearFast
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x100
	bl MIi_CpuClearFast
	mov r0, r6
	add r1, r4, #0x10c
	mov r2, #0x20
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F7368: .word 0x00001555
_020F736C: .word 0x00000536
_020F7370: .word 0x00000F21
	arm_func_end FUN_ov16_020f71fc

	arm_func_start _ZN11CCameraCtrl4initEv
_ZN11CCameraCtrl4initEv: ; 0x020F7374
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r5, _020F74C8 ; =gConfig
	ldr r1, _020F74CC ; =0x02118790
	mov r4, r0
	mov r0, r5
	bl _ZN7CConfig8getParamEPKc
	cmp r0, #0
	ble _020F73BC
	ldr r1, _020F74D0 ; =0x021187A0
	mov r0, r5
	bl _ZN7CConfig8getParamEPKc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F73D8
_020F73BC:
	ldr r1, _020F74D4 ; =0x021187B0
	mov r0, r5
	bl _ZN7CConfig8getParamEPKc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F73D8:
	bl _ffix
	cmp r0, #0
	ldreq r0, _020F74D8 ; =0x01001000
	mov r7, #0
	add r6, r0, #0x1000
	mov r5, #0x12c
_020F73F0:
	mla r8, r7, r5, r4
	mov r0, r8
	bl FUN_ov16_020f71fc
	str r6, [r8, #0x10]
	add r7, r7, #1
	str r6, [r8, #0x28]
	cmp r7, #5
	blt _020F73F0
	mov r0, #4
	str r0, [r4, #0x5dc]
	mov r6, #0
	sub r0, r0, #0xc4
	mov r3, #0x1000
	str r0, [sp]
	mov r0, r4
	mov r1, r6
	mov r2, r6
	str r3, [sp, #4]
	sub r5, r3, #0xff000000
	mov r3, #0x100
	str r5, [sp, #8]
	bl FUN_ov16_020f7848
	mov r0, r4
	bl FUN_ov16_020f7bf4
	mov r3, r0
	str r6, [sp]
	ldr r2, [r3, #0x7c]
	add r1, r3, #0x64
	str r2, [sp, #4]
	mov r0, r4
	mov r2, r1
	add r3, r3, #0x70
	bl FUN_ov16_020f7fc0
	mov r5, #1
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f74dc
	str r6, [r4, #0x5dc]
	mov r0, r4
	bl FUN_ov16_020f7bf4
	mov r3, r0
	str r6, [sp]
	ldr r1, [r3, #0x7c]
	mov r0, r4
	str r1, [sp, #4]
	add r1, r3, #0x64
	mov r2, r1
	add r3, r3, #0x70
	bl FUN_ov16_020f7fc0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f74dc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F74C8: .word gConfig
_020F74CC: .word ov16_02118790
_020F74D0: .word ov16_021187A0
_020F74D4: .word ov16_021187B0
_020F74D8: .word 0x01001000
	arm_func_end _ZN11CCameraCtrl4initEv

	arm_func_start FUN_ov16_020f74dc
FUN_ov16_020f74dc: ; 0x020F74DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r9, r0
	mov r8, r1
	bl FUN_ov16_020f7bf4
	mov r7, r0
	add r0, r7, #0x64
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r0, r7, #0x70
	add r3, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r7, #0x7c]
	add r0, r7, #0x80
	str r1, [sp, #0x18]
	add r3, sp, #0x1c
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldrh r0, [r7, #0x38]
	cmp r0, #3
	beq _020F7558
	cmp r0, #5
	beq _020F7564
	cmp r0, #6
	ldreqh r1, [r7, #0x3a]
	ldreq r0, _020F7798 ; =0x0000FFFE
	andeq r0, r1, r0
	streqh r0, [r7, #0x3a]
	b _020F7574
_020F7558:
	ldrh r1, [r7, #0x3a]
	ldr r0, _020F779C ; =0x0000FFFB
	b _020F756C
_020F7564:
	ldrh r1, [r7, #0x3a]
	ldr r0, _020F77A0 ; =0x0000FFFD
_020F756C:
	and r0, r1, r0
	strh r0, [r7, #0x3a]
_020F7574:
	ldrh r0, [r7, #0x3a]
	tst r0, #1
	beq _020F75B8
	mov r0, r9
	mov r2, r8
	add r1, r7, #0xdc
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F7798 ; =0x0000FFFE
	add r2, r7, #0x8c
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0
	add r1, r7, #0xb4
	bl FUN_ov16_020f70fc
_020F75B8:
	ldrh r0, [r7, #0x3a]
	tst r0, #2
	beq _020F75FC
	mov r0, r9
	mov r2, r8
	add r1, r7, #0xe8
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F77A0 ; =0x0000FFFD
	add r2, r7, #0x98
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0xc
	add r1, r7, #0xc0
	bl FUN_ov16_020f70fc
_020F75FC:
	ldrh r0, [r7, #0x3a]
	tst r0, #4
	beq _020F7640
	mov r0, r9
	mov r2, r8
	add r1, r7, #0xf4
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F779C ; =0x0000FFFB
	add r2, r7, #0xa8
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0x1c
	add r1, r7, #0xd0
	bl FUN_ov16_020f7140
_020F7640:
	ldrh r0, [r7, #0x3a]
	tst r0, #8
	beq _020F7684
	mov r0, r9
	mov r2, r8
	add r1, r7, #0x100
	bl FUN_ov16_020f7c74
	mov r3, r0
	cmp r3, #0x1000
	ldrgeh r1, [r7, #0x3a]
	ldrge r0, _020F77A4 ; =0x0000FFF7
	add r2, r7, #0xa4
	andge r0, r1, r0
	strgeh r0, [r7, #0x3a]
	add r0, sp, #0x18
	add r1, r7, #0xcc
	bl FUN_ov16_020f70d0
_020F7684:
	ldrh r1, [r7, #0x38]
	add r2, sp, #0
	mov r0, r9
	bl FUN_ov16_020f7db8
	ldrh r0, [r7, #0x3a]
	add r6, sp, #0
	add r3, r7, #0x64
	cmp r0, #0
	moveq r0, #0
	streqh r0, [r7, #0x38]
	ldmia r6, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add r5, sp, #0xc
	add r3, r7, #0x70
	ldmia r5, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x18]
	add r4, sp, #0x1c
	str r0, [r7, #0x7c]
	add r3, r7, #0x80
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r3, r8
	mov r0, r9
	mov r1, r6
	add r2, r7, #0x10c
	bl FUN_ov16_020f7e50
	add r12, r7, #0x3c
	ldmia r6, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	add r8, r7, #0x48
	ldmia r5, {r0, r1, r2}
	stmia r8, {r0, r1, r2}
	ldr r0, [sp, #0x18]
	add r3, r7, #0x58
	str r0, [r7, #0x54]
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r9
	bl FUN_ov16_020f7c04
	mov r1, r0
	ldr r2, [r7, #0x3c]
	ldr r4, _020F77A8 ; =NNS_G3dGlb
	add r0, r7, #0x3c
	str r2, [r4, #0x240]
	ldr r3, [r7, #0x40]
	mov r2, r8
	str r3, [r4, #0x244]
	ldr r5, [r7, #0x44]
	ldr r3, _020F77AC ; =NNS_G3dGlb_cameraMtx
	str r5, [r4, #0x248]
	ldr r5, [r1]
	str r5, [r4, #0x24c]
	ldr r5, [r1, #4]
	str r5, [r4, #0x250]
	ldr r5, [r1, #8]
	str r5, [r4, #0x254]
	ldr r5, [r7, #0x48]
	str r5, [r4, #0x258]
	ldr r5, [r7, #0x4c]
	str r5, [r4, #0x25c]
	ldr r5, [r7, #0x50]
	str r5, [r4, #0x260]
	bl MTX_LookAt
	ldr r0, [r4, #0xfc]
	bic r0, r0, #0xe8
	str r0, [r4, #0xfc]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F7798: .word 0x0000FFFE
_020F779C: .word 0x0000FFFB
_020F77A0: .word 0x0000FFFD
_020F77A4: .word 0x0000FFF7
_020F77A8: .word NNS_G3dGlb
_020F77AC: .word NNS_G3dGlb_cameraMtx
	arm_func_end FUN_ov16_020f74dc

	arm_func_start FUN_ov16_020f77b0
FUN_ov16_020f77b0: ; 0x020F77B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f7bf4
	str r6, [r0]
	str r5, [r0, #4]
	ldr r2, [sp, #0x10]
	str r4, [r0, #8]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f77b0

	arm_func_start FUN_ov16_020f77e4
FUN_ov16_020f77e4: ; 0x020F77E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_ov16_020f7bf4
	mov r3, r0
	ldr r0, [r3, #0x10]
	mov r1, #0x1000
	str r0, [sp]
	ldr r0, _020F7840 ; =NNS_G3dGlb_projMtx
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldmia r3, {r0, r1, r2}
	ldr r3, [r3, #0xc]
	bl MTX_PerspectiveW
	ldr r2, _020F7844 ; =NNS_G3dGlb
	mov r0, r4
	ldr r3, [r2, #0xfc]
	mov r1, #0
	bic r3, r3, #0x50
	str r3, [r2, #0xfc]
	bl FUN_ov16_020f74dc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_020F7840: .word NNS_G3dGlb_projMtx
_020F7844: .word NNS_G3dGlb
	arm_func_end FUN_ov16_020f77e4

	arm_func_start FUN_ov16_020f7848
FUN_ov16_020f7848: ; 0x020F7848
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020f7bf4
	ldr r1, [sp, #0x10]
	mov r2, r5, lsl #0xc
	str r2, [r0, #0x14]
	mov r1, r1, lsl #0xc
	str r1, [r0, #0x18]
	mov r1, r6, lsl #0xc
	str r1, [r0, #0x1c]
	mov r1, r4, lsl #0xc
	ldr r2, [sp, #0x14]
	str r1, [r0, #0x20]
	ldr r1, [sp, #0x18]
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020f7848

	arm_func_start FUN_ov16_020f7894
FUN_ov16_020f7894: ; 0x020F7894
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl FUN_ov16_020f7bf4
	mov r3, r0
	ldr r0, [r3, #0x24]
	mov r1, #0x1800
	str r0, [sp]
	ldr r2, [r3, #0x28]
	ldr r0, _020F7900 ; =NNS_G3dGlb_projMtx
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	ldr r2, [r3, #0x1c]
	ldr r3, [r3, #0x20]
	bl MTX_OrthoW
	ldr r2, _020F7904 ; =NNS_G3dGlb
	mov r0, r4
	ldr r3, [r2, #0xfc]
	mov r1, #0
	bic r3, r3, #0x50
	str r3, [r2, #0xfc]
	bl FUN_ov16_020f74dc
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020F7900: .word NNS_G3dGlb_projMtx
_020F7904: .word NNS_G3dGlb
	arm_func_end FUN_ov16_020f7894

	arm_func_start FUN_ov16_020f7908
FUN_ov16_020f7908: ; 0x020F7908
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x5dc]
	cmp r2, #4
	ldmeqfd sp!, {r3, pc}
	mov r1, #4
	str r2, [r0, #0x5e0]
	str r1, [r0, #0x5dc]
	bl FUN_ov16_020f7894
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7908

	arm_func_start FUN_ov16_020f792c
FUN_ov16_020f792c: ; 0x020F792C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x5dc]
	cmp r1, #4
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0x5e0]
	str r1, [r0, #0x5dc]
	bl FUN_ov16_020f77e4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f792c

	arm_func_start FUN_ov16_020f794c
FUN_ov16_020f794c: ; 0x020F794C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_ov16_020f7bf4
	ldrh r2, [sp, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r3, [sp, #0x14]
	orr r2, r2, #1
	strh r2, [r0, #0x38]
	ldr r2, [r0, #0x64]
	cmp r1, #0
	str r2, [r0, #0xb4]
	ldr r2, [r0, #0x68]
	str r2, [r0, #0xb8]
	ldr r2, [r0, #0x6c]
	str r2, [r0, #0xbc]
	str r3, [r0, #0x8c]
	str r5, [r0, #0x90]
	str r4, [r0, #0x94]
	str r1, [r0, #0xdc]
	ldrh r2, [r0, #0x3a]
	ldrne r1, [sp, #0x28]
	orrne r2, r2, #1
	strneh r2, [r0, #0x3a]
	strne r1, [r0, #0xe4]
	strne r1, [r0, #0xe0]
	ldmnefd sp!, {r3, r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r1, _020F79E8 ; =0x0000FFFE
	and r1, r2, r1
	strh r1, [r0, #0x3a]
	str r3, [r0, #0x64]
	str r5, [r0, #0x68]
	str r4, [r0, #0x6c]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F79E8: .word 0x0000FFFE
	arm_func_end FUN_ov16_020f794c

	arm_func_start FUN_ov16_020f79ec
FUN_ov16_020f79ec: ; 0x020F79EC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_ov16_020f7bf4
	ldrh r2, [sp, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r3, [sp, #0x14]
	orr r2, r2, #2
	strh r2, [r0, #0x38]
	ldr r2, [r0, #0x70]
	cmp r1, #0
	str r2, [r0, #0xc0]
	ldr r2, [r0, #0x74]
	str r2, [r0, #0xc4]
	ldr r2, [r0, #0x78]
	str r2, [r0, #0xc8]
	str r3, [r0, #0x98]
	str r5, [r0, #0x9c]
	str r4, [r0, #0xa0]
	str r1, [r0, #0xe8]
	ldrh r2, [r0, #0x3a]
	ldrne r1, [sp, #0x28]
	orrne r2, r2, #2
	strneh r2, [r0, #0x3a]
	strne r1, [r0, #0xf0]
	strne r1, [r0, #0xec]
	ldmnefd sp!, {r3, r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r1, _020F7A88 ; =0x0000FFFD
	and r1, r2, r1
	strh r1, [r0, #0x3a]
	str r3, [r0, #0x70]
	str r5, [r0, #0x74]
	str r4, [r0, #0x78]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F7A88: .word 0x0000FFFD
	arm_func_end FUN_ov16_020f79ec

	arm_func_start FUN_ov16_020f7a8c
FUN_ov16_020f7a8c: ; 0x020F7A8C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_ov16_020f7bf4
	ldrh r3, [sp, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r2, [sp, #0x14]
	orr r3, r3, #4
	strh r3, [r0, #0x38]
	ldr r3, [r0, #0x80]
	cmp r1, #0
	str r3, [r0, #0xd0]
	ldr r3, [r0, #0x84]
	str r3, [r0, #0xd4]
	ldr r3, [r0, #0x88]
	str r3, [r0, #0xd8]
	str r2, [r0, #0xa8]
	str r5, [r0, #0xac]
	str r4, [r0, #0xb0]
	str r1, [r0, #0xf4]
	bne _020F7B28
	ldrh r3, [r0, #0x3a]
	ldr r2, [sp, #0x14]
	ldr r1, _020F7B4C ; =0x0000FFFB
	mov r2, r2, lsl #0x10
	and r12, r3, r1
	mov r1, r5, lsl #0x10
	strh r12, [r0, #0x3a]
	mov r2, r2, lsr #0x10
	mov r3, r4, lsl #0x10
	str r2, [r0, #0x80]
	mov r1, r1, lsr #0x10
	str r1, [r0, #0x84]
	mov r1, r3, lsr #0x10
	str r1, [r0, #0x88]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F7B28:
	ldrh r2, [r0, #0x3a]
	ldr r1, [sp, #0x28]
	orr r2, r2, #4
	strh r2, [r0, #0x3a]
	str r1, [r0, #0xfc]
	str r1, [r0, #0xf8]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020F7B4C: .word 0x0000FFFB
	arm_func_end FUN_ov16_020f7a8c

	arm_func_start FUN_ov16_020f7b50
FUN_ov16_020f7b50: ; 0x020F7B50
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r4, r1
	mov r5, r3
	bl FUN_ov16_020f7bf4
	orr r1, r6, #4
	strh r1, [r0, #0x38]
	ldr r1, [r0, #0x7c]
	cmp r5, #0
	str r1, [r0, #0xcc]
	str r4, [r0, #0xa4]
	str r5, [r0, #0x100]
	ldrh r2, [r0, #0x3a]
	ldreq r1, _020F7BAC ; =0x0000FFF7
	andeq r1, r2, r1
	streqh r1, [r0, #0x3a]
	streq r4, [r0, #0x7c]
	orrne r2, r2, #8
	ldrne r1, [sp, #0x10]
	strneh r2, [r0, #0x3a]
	strne r1, [r0, #0x108]
	strne r1, [r0, #0x104]
	ldmfd sp!, {r4, r5, r6, pc}
_020F7BAC: .word 0x0000FFF7
	arm_func_end FUN_ov16_020f7b50

	arm_func_start FUN_ov16_020f7bb0
FUN_ov16_020f7bb0: ; 0x020F7BB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0x14]
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov16_020f7bb0

	arm_func_start FUN_ov16_020f7be0
FUN_ov16_020f7be0: ; 0x020F7BE0
	cmp r1, #0
	bxlt lr
	cmp r1, #5
	strlt r1, [r0, #0x5dc]
	bx lr
	arm_func_end FUN_ov16_020f7be0

	arm_func_start FUN_ov16_020f7bf4
FUN_ov16_020f7bf4: ; 0x020F7BF4
	ldr r2, [r0, #0x5dc]
	mov r1, #0x12c
	mla r0, r2, r1, r0
	bx lr
	arm_func_end FUN_ov16_020f7bf4

	arm_func_start FUN_ov16_020f7c04
FUN_ov16_020f7c04: ; 0x020F7C04
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x2c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c04

	arm_func_start FUN_ov16_020f7c14
FUN_ov16_020f7c14: ; 0x020F7C14
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c14

	arm_func_start FUN_ov16_020f7c24
FUN_ov16_020f7c24: ; 0x020F7C24
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x48
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c24

	arm_func_start FUN_ov16_020f7c34
FUN_ov16_020f7c34: ; 0x020F7C34
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	add r0, r0, #0x58
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c34

	arm_func_start FUN_ov16_020f7c44
FUN_ov16_020f7c44: ; 0x020F7C44
	stmfd sp!, {r3, lr}
	bl FUN_ov16_020f7bf4
	ldr r0, [r0, #0x54]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c44

	arm_func_start FUN_ov16_020f7c54
FUN_ov16_020f7c54: ; 0x020F7C54
	stmfd sp!, {r3, lr}
	cmp r1, #0
	cmpeq r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r2
	bl FX_Div
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7c54

	arm_func_start FUN_ov16_020f7c74
FUN_ov16_020f7c74: ; 0x020F7C74
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _020F7CA0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020F7CAC
_020F7CA0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020F7CAC:
	bl _ffix
	ldr r1, [r4, #4]
	subs r0, r1, r0
	str r0, [r4, #4]
	movmi r0, #0
	strmi r0, [r4, #4]
	ldr r0, [r4]
	cmp r0, #0
	beq _020F7DAC
	cmp r0, #1
	beq _020F7CE4
	cmp r0, #2
	beq _020F7CFC
	b _020F7DAC
_020F7CE4:
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	mov r0, r5
	bl FUN_ov16_020f7c54
	rsb r0, r0, #0x1000
	ldmfd sp!, {r3, r4, r5, pc}
_020F7CFC:
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	mov r0, r5
	bl FUN_ov16_020f7c54
	rsb r3, r0, #0x1000
	cmp r3, #0x800
	ble _020F7D68
	rsb r1, r3, #0x1000
	mov r0, r1, asr #0x1f
	mov r2, r0, lsl #0x1a
	mov r0, #0x800
	adds r3, r0, r1, lsl #26
	orr r2, r2, r1, lsr #6
	adc r0, r2, #0
	mov r1, r3, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	add r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #4
	ldr r0, _020F7DB4 ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7D68:
	mov r0, r3, asr #0x1f
	mov r1, r0, lsl #0x1a
	mov r0, #0x800
	adds r2, r0, r3, lsl #26
	orr r1, r1, r3, lsr #6
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #4
	ldr r0, _020F7DB4 ; =FX_SinCosTable_
	mov r1, r1, lsl #2
	ldrsh r0, [r0, r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7DAC:
	mov r0, #0x1000
	ldmfd sp!, {r3, r4, r5, pc}
_020F7DB4: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f7c74

	arm_func_start FUN_ov16_020f7db8
FUN_ov16_020f7db8: ; 0x020F7DB8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	cmp r1, #3
	beq _020F7DE0
	cmp r1, #5
	beq _020F7E04
	cmp r1, #6
	beq _020F7E28
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F7DE0:
	mov r1, #0
	str r1, [sp]
	ldr r12, [r2, #0x18]
	mov r1, r2
	add r3, r2, #0xc
	str r12, [sp, #4]
	bl FUN_ov16_020f7fc0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F7E04:
	add r1, r2, #0x1c
	str r1, [sp]
	ldr r12, [r2, #0x18]
	mov r1, r2
	mov r3, #0
	str r12, [sp, #4]
	bl FUN_ov16_020f7fc0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F7E28:
	add r1, r2, #0x1c
	str r1, [sp]
	ldr r12, [r2, #0x18]
	mov r1, r2
	add r3, r2, #0xc
	mov r2, #0
	str r12, [sp, #4]
	bl FUN_ov16_020f7fc0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020f7db8

	arm_func_start FUN_ov16_020f7e50
FUN_ov16_020f7e50: ; 0x020F7E50
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x90
	mov r4, r2
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #1
	addne sp, sp, #0x90
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #0
	ldrne r1, [r4, #0x18]
	ldrne r0, [r4, #0x10]
	mlane r1, r0, r3, r1
	strne r1, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r0, r1
	movge r0, #0
	addge sp, sp, #0x90
	strge r0, [r4]
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r4, #0x14]
	mov r2, r0, lsl #0x10
	cmp r3, #0
	mov r6, r2, lsr #0x10
	moveq r7, #0x1000
	beq _020F7EC0
	bl FX_Div
	rsb r7, r0, #0x1000
_020F7EC0:
	ldr r0, [r4, #4]
	mov r6, r6, asr #4
	smull r2, r1, r0, r7
	adds r2, r2, #0x800
	ldr r3, _020F7FBC ; =FX_SinCosTable_
	mov r6, r6, lsl #2
	ldrsh r3, [r3, r6]
	ldr r0, [r4, #8]
	ldr r8, [r4, #0xc]
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r1, r12, r2, r3
	adds r1, r1, #0x800
	smull r6, r4, r0, r7
	adc r2, r12, #0
	adds r6, r6, #0x800
	adc r0, r4, #0
	mov r4, r6, lsr #0xc
	orr r4, r4, r0, lsl #20
	smull r0, lr, r4, r3
	mov r4, r1, lsr #0xc
	adds r0, r0, #0x800
	smull r12, r7, r8, r7
	adc r1, lr, #0
	mov r8, r0, lsr #0xc
	adds r12, r12, #0x800
	adc r0, r7, #0
	mov r7, r12, lsr #0xc
	orr r7, r7, r0, lsl #20
	smull r0, r3, r7, r3
	adds r7, r0, #0x800
	add r6, sp, #0
	mov r0, r6
	adc r3, r3, #0
	mov r7, r7, lsr #0xc
	orr r4, r4, r2, lsl #20
	orr r8, r8, r1, lsl #20
	orr r7, r7, r3, lsl #20
	bl MTX_Identity43_
	str r4, [sp, #0x24]
	add r4, sp, #0x30
	str r8, [sp, #0x28]
	str r7, [sp, #0x2c]
	add r1, r5, #0x1c
	mov r0, r4
	ldmia r1, {r1, r2, r3}
	bl FUN_02053b48
	mov r0, r6
	mov r1, r4
	add r2, sp, #0x60
	bl MTX_Concat43
	add r4, sp, #0x84
	mov r0, r5
	mov r2, r5
	mov r1, r4
	bl VEC_Add
	add r0, r5, #0xc
	mov r1, r4
	mov r2, r0
	bl VEC_Add
	add sp, sp, #0x90
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F7FBC: .word FX_SinCosTable_
	arm_func_end FUN_ov16_020f7e50

	arm_func_start FUN_ov16_020f7fc0
FUN_ov16_020f7fc0: ; 0x020F7FC0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r10, r3
	movs r8, r2
	mov r9, r1
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	cmpne r10, #0
	beq _020F7FF4
	mov r0, r8
	mov r1, r10
	bl VEC_Distance
	mov r7, r0
_020F7FF4:
	cmp r4, #0
	beq _020F8018
	ldr r0, [r4]
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	str r0, [sp, #0x14]
	b _020F8070
_020F8018:
	add r2, sp, #0
	mov r0, r10
	mov r1, r8
	bl VEC_Subtract
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	moveq r0, #0
	streq r0, [sp, #0xc]
	streq r0, [sp, #0x10]
	streq r0, [sp, #0x14]
	beq _020F8070
	add r4, sp, #0
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	add r0, sp, #0xc
	mov r1, r4
	bl FUN_ov16_020f7028
_020F8070:
	cmp r8, #0
	ldmneia r8, {r4, r5, r6}
	bne _020F80F0
	add r0, sp, #0
	add r1, sp, #0xc
	bl FUN_ov16_020f6f8c
	ldr r2, [sp]
	ldr r1, [sp, #4]
	rsb r2, r2, #0
	smull r2, r3, r7, r2
	ldr r0, [sp, #8]
	rsb r1, r1, #0
	adds r5, r2, #0x800
	smull r2, r4, r7, r1
	adc r1, r3, #0
	rsb r0, r0, #0
	adds r6, r2, #0x800
	mov r2, r5, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r0, r3, r7, r0
	adc r5, r4, #0
	adds r4, r0, #0x800
	mov r0, r6, lsr #0xc
	mov r6, r4, lsr #0xc
	adc r3, r3, #0
	ldmia r10, {r4, r12}
	orr r0, r0, r5, lsl #20
	ldr r1, [r10, #8]
	orr r6, r6, r3, lsl #20
	add r4, r4, r2
	add r5, r12, r0
	add r6, r1, r6
_020F80F0:
	cmp r10, #0
	ldrne r3, [r10]
	ldrne r1, [r10, #4]
	ldrne r0, [r10, #8]
	bne _020F8170
	add r0, sp, #0
	add r1, sp, #0xc
	bl FUN_ov16_020f6f8c
	ldr r1, [sp]
	ldr r10, [sp, #8]
	smull r1, r2, r7, r1
	adds r3, r1, #0x800
	ldr r0, [sp, #4]
	smull r12, r10, r7, r10
	smull r1, r0, r7, r0
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	adds r12, r12, #0x800
	mov r1, r1, lsr #0xc
	mov lr, r12, lsr #0xc
	adc r10, r10, #0
	orr r3, r3, r2, lsl #20
	ldr r12, [r8]
	orr r1, r1, r0, lsl #20
	ldr r2, [r8, #4]
	ldr r0, [r8, #8]
	orr lr, lr, r10, lsl #20
	add r3, r12, r3
	add r1, r2, r1
	add r0, r0, lr
_020F8170:
	stmia r9, {r4, r5, r6}
	str r3, [r9, #0xc]
	str r1, [r9, #0x10]
	str r0, [r9, #0x14]
	ldr r0, [sp, #0xc]
	str r0, [r9, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r9, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [r9, #0x24]
	str r7, [r9, #0x18]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020f7fc0

	arm_func_start FUN_ov16_020f81a4
FUN_ov16_020f81a4: ; 0x020F81A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r7, r1
	bl FUN_ov16_020f7c14
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020f7c24
	mov r4, r0
	add r3, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_02053214
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_0205318c
	mov r6, r0
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	beq _020F8214
	cmp r6, #0
	bgt _020F8228
_020F8214:
	mov r0, r5
	mov r1, r4
	bl VEC_Distance
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020F8228:
	add r4, sp, #0
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	ldr r2, [sp]
	ldr r1, [sp, #4]
	smull r12, r3, r2, r6
	adds r8, r12, #0x800
	smull r2, r12, r1, r6
	adc r1, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldr r0, [sp, #8]
	adds lr, r2, #0x800
	smull r2, r1, r0, r6
	adc r0, r12, #0
	adds r2, r2, #0x800
	mov r12, lr, lsr #0xc
	orr r12, r12, r0, lsl #20
	adc r0, r1, #0
	mov r6, r2, lsr #0xc
	orr r6, r6, r0, lsl #20
	mov r0, r7
	mov r1, r4
	mov r2, r4
	str r3, [sp]
	str r12, [sp, #4]
	str r6, [sp, #8]
	bl VEC_Add
	mov r0, r5
	mov r1, r4
	bl VEC_Distance
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020f81a4

	.section .init, 4
	arm_func_start FUN_ov16_02117e20
FUN_ov16_02117e20: ; 0x02117E20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02117E64 ; =0x02118778
	str r0, [r4, #0x10]
	ldr r0, _02117E68 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02117E6C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02117E64: .word ov16_02118778
_02117E68: .word 0x00009CCD
_02117E6C: .word 0x0000EA3C
	arm_func_end FUN_ov16_02117e20

	.section .ctor, 4
#pragma force_active on
	.word FUN_ov16_02117e20

	.data
	.global ov16_02118778
ov16_02118778:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02118790
ov16_02118790:
	.asciz "FARCLIP_LENGTH"
	.balign 4, 0
	.global ov16_021187A0
ov16_021187A0:
	.asciz "FARCLIP_LENGTH"
	.balign 4, 0
	.global ov16_021187B0
ov16_021187B0:
	.asciz "FARCLIP_LENGTH"
	.balign 4, 0

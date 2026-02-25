
	.include "/macros/function.inc"
	.include "/include/3ddevice.inc"

    .text
	arm_func_start FUN_0205108c
FUN_0205108c: ; 0x0205108C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _020510E0 ; =_ZTV9C3DDevice+0x8
	mov r4, #0
	mov r0, r4
	add r1, r5, #8
	mov r2, #4
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x10
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0x1c
	mov r2, #0x28
	bl MIi_CpuClearFast
	mov r0, r5
	strb r4, [r5, #0x44]
	strb r4, [r5, #0x45]
	ldmfd sp!, {r3, r4, r5, pc}
_020510E0: .word _ZTV9C3DDevice+0x8
	arm_func_end FUN_0205108c

	arm_func_start FUN_020510e4
FUN_020510e4: ; 0x020510E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _02051140 ; =_ZTV9C3DDevice+0x8
	mov r4, #0
	mov r0, r4
	add r1, r5, #8
	mov r2, #4
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x10
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0x1c
	mov r2, #0x28
	bl MIi_CpuClearFast
	mov r0, r5
	strb r4, [r5, #0x44]
	strb r4, [r5, #0x45]
	bl _ZdlPv
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02051140: .word _ZTV9C3DDevice+0x8
	arm_func_end FUN_020510e4

	arm_func_start _ZN9C3DDevice4initEv
_ZN9C3DDevice4initEv: ; 0x02051144
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x64
	mov r4, #0
	mov r5, r0
	ldr r12, _02051298 ; =0x04000060
	strb r4, [r5, #4]
	ldrh r3, [r12]
	ldr r2, _0205129C ; =0x0000CFFB
	mov r1, r4
	and r2, r3, r2
	strh r2, [r12]
	ldrh r6, [r12]
	mov r2, r4
	mov r3, r4
	bic r6, r6, #0x3000
	orr r6, r6, #8
	strh r6, [r12]
	bl _ZN9C3DDevice13setClearColorEthi
	mov r6, #1
	mov r0, r5
	mov r1, r6
	bl FUN_0205131c
	mov r0, r5
	mov r1, r4
	bl FUN_0205135c
	mov r0, r5
	mov r1, r6
	bl FUN_020512dc
	add r6, sp, #0x44
_020511B8:
	mov r2, r4, lsl #4
	add r0, r2, #4
	add r1, r2, #8
	orr r0, r2, r0, lsl #8
	add r2, r2, #0xc
	orr r0, r0, r1, lsl #16
	orr r0, r0, r2, lsl #24
	str r0, [r6, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #8
	blt _020511B8
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_02051384
	mov r0, r5
	mov r1, #1
	mov r2, #2
	mov r3, #0x5800
	bl FUN_020513a8
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_020513ec
	mov r0, r5
	mov r1, r6
	bl FUN_02051408
	add r0, sp, #4
_02051228:
	orr r1, r4, r4, lsl #5
	orr r2, r1, r4, lsl #10
	mov r1, r4, lsl #1
	add r4, r4, #1
	strh r2, [r0, r1]
	cmp r4, #0x20
	blt _02051228
	ldr r3, _02051298 ; =0x04000060
	ldr r1, _020512A0 ; =0xFFFFCFFD
	ldrh r2, [r3]
	and r1, r2, r1
	orr r1, r1, #2
	strh r1, [r3]
	bl G3X_SetToonTable
	ldr r3, _020512A4 ; =0xBFFF0000
	mov r4, #1
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x60
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r0, #8
	bl FUN_ov16_020ef624
	mov r0, #0
	bl NNS_G3dGeUseFastDma
	mov r0, r4
	add sp, sp, #0x64
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02051298: .word 0x04000060
_0205129C: .word 0x0000CFFB
_020512A0: .word 0xFFFFCFFD
_020512A4: .word 0xBFFF0000
	arm_func_end _ZN9C3DDevice4initEv

	arm_func_start _ZN9C3DDevice13setClearColorEthi
_ZN9C3DDevice13setClearColorEthi: ; 0x020512A8
	stmfd sp!, {r3, lr}
	mov r12, r0
	strb r2, [r12, #0xa]
	strh r1, [r12, #8]
	strb r3, [r12, #0xb]
	str r3, [sp]
	ldrh r0, [r12, #8]
	ldrb r1, [r12, #0xa]
	ldr r2, _020512D8 ; =0x00007FFF
	mov r3, #0x3f
	bl G3X_SetClearColor
	ldmfd sp!, {r3, pc}
_020512D8: .word 0x00007FFF
	arm_func_end _ZN9C3DDevice13setClearColorEthi

	arm_func_start FUN_020512dc
FUN_020512dc: ; 0x020512DC
	cmp r1, #0
	ldreq r2, _02051314 ; =0x04000060
	strb r1, [r0, #0x44]
	ldreqh r1, [r2]
	ldreq r0, _02051318 ; =0x0000CFEF
	andeq r0, r1, r0
	streqh r0, [r2]
	bxeq lr
	ldr r1, _02051314 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x3000
	orr r0, r0, #0x10
	strh r0, [r1]
	bx lr
_02051314: .word 0x04000060
_02051318: .word 0x0000CFEF
	arm_func_end FUN_020512dc

	arm_func_start FUN_0205131c
FUN_0205131c: ; 0x0205131C
	cmp r1, #0
	ldreq r2, _02051354 ; =0x04000060
	strb r1, [r0, #0x45]
	ldreqh r1, [r2]
	ldreq r0, _02051358 ; =0x0000CFDF
	andeq r0, r1, r0
	streqh r0, [r2]
	bxeq lr
	ldr r1, _02051354 ; =0x04000060
	ldrh r0, [r1]
	bic r0, r0, #0x3000
	orr r0, r0, #0x20
	strh r0, [r1]
	bx lr
_02051354: .word 0x04000060
_02051358: .word 0x0000CFDF
	arm_func_end FUN_0205131c

	arm_func_start FUN_0205135c
FUN_0205135c: ; 0x0205135C
	mov r3, #0
_02051360:
	add r2, r0, r3, lsl #1
	add r3, r3, #1
	strh r1, [r2, #0xc]
	cmp r3, #8
	blt _02051360
	ldr r12, _02051380 ; =G3X_SetEdgeColorTable
	add r0, r0, #0xc
	bx r12
_02051380: .word G3X_SetEdgeColorTable
	arm_func_end FUN_0205135c

	arm_func_start FUN_02051384
FUN_02051384: ; 0x02051384
	mov r3, r0
	strb r1, [r3, #0x1f]
	and r0, r1, #0xff
	ldrb r1, [r3, #0x20]
	ldrb r2, [r3, #0x21]
	ldrh r3, [r3, #0x22]
	ldr r12, _020513A4 ; =G3X_SetFog
	bx r12
_020513A4: .word G3X_SetFog
	arm_func_end FUN_02051384

	arm_func_start FUN_020513a8
FUN_020513a8: ; 0x020513A8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	movne r1, #0
	moveq r1, #1
	strb r1, [r0, #0x20]
	ldr r1, _020513E8 ; =0x00007FFF
	strb r2, [r0, #0x21]
	cmp r3, r1
	movhi r3, r1
	ldrb r1, [r0, #0x1f]
	strh r3, [r0, #0x22]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #1
	bl FUN_02051384
	ldmfd sp!, {r3, pc}
_020513E8: .word 0x00007FFF
	arm_func_end FUN_020513a8

	arm_func_start FUN_020513ec
FUN_020513ec: ; 0x020513EC
	ldr r3, _02051404 ; =0x04000358
	strh r1, [r0, #0x1c]
	strb r2, [r0, #0x1e]
	orr r0, r1, r2, lsl #16
	str r0, [r3]
	bx lr
_02051404: .word 0x04000358
	arm_func_end FUN_020513ec

	arm_func_start FUN_02051408
FUN_02051408: ; 0x02051408
	stmfd sp!, {r4, lr}
	movs r4, r1
	mov r1, r0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	add r1, r1, #0x24
	mov r2, #0x20
	bl MIi_CpuCopyFast
	mov r0, r4
	bl G3X_SetFogTable
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051408

	arm_func_start FUN_02051434
FUN_02051434: ; 0x02051434
	stmfd sp!, {r3, lr}
	bl G3X_ClearFifo
	bl G3X_Reset
	bl G3X_ResetMtxStack
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02051434

	arm_func_start FUN_02051448
FUN_02051448: ; 0x02051448
	stmfd sp!, {r3, lr}
	ldr r0, _020514E0 ; =GXi_DmaId
	ldr r0, [r0]
	cmp r0, #3
	mvnhi r0, #0
	bl MI_WaitDma
	ldr r1, _020514E4 ; =0x04000060
	mov r3, #0
	ldrh r0, [r1]
	mov r2, r3
	tst r0, #0x1000
	ldrneh r0, [r1]
	orrne r0, r0, #0x1000
	strneh r0, [r1]
	ldr r1, _020514E4 ; =0x04000060
	ldrh r0, [r1]
	tst r0, #0x2000
	ldrneh r0, [r1]
	orrne r0, r0, #0x2000
	strneh r0, [r1]
	ldr r1, _020514E8 ; =0x04000600
	ldr r0, [r1]
	tst r0, #0x4000
	ldreq r0, [r1]
	subne r3, r3, #1
	andeq r2, r0, #0x8000
	cmp r3, #0
	bne _020514CC
	cmp r2, #0
	ldrne r1, _020514E8 ; =0x04000600
	ldrne r0, [r1]
	orrne r0, r0, #0x8000
	strne r0, [r1]
_020514CC:
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020514EC ; =0x04000540
	mov r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, pc}
_020514E0: .word GXi_DmaId
_020514E4: .word 0x04000060
_020514E8: .word 0x04000600
_020514EC: .word 0x04000540
	arm_func_end FUN_02051448

	.data
	.global unk_0209055C
unk_0209055C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global _ZTV9C3DDevice
_ZTV9C3DDevice:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_0205108c
	.word FUN_020510e4

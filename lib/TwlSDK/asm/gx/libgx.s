
	.include "asm/macros/function.inc"
	.include "libgx.inc"

	.text
	arm_func_start GX_Init
GX_Init: ; 0x020042A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020043D0 ; =0x04000304
	ldr r4, _020043D4 ; =0xFFFFFDF1
	ldrh r0, [r1]
	orr r0, r0, #0x8000
	strh r0, [r1]
	ldrh r0, [r1]
	and r0, r0, r4
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	bl GX_InitGXState
	ldr r5, _020043D8 ; =sDispMode
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _02004318
	add r4, r4, #0x20c
_020042F4:
	bl OS_GetLockID
	mov r6, r0
	cmp r6, r4
	bne _02004308
	bl OS_Terminate
_02004308:
	strh r6, [r5, #2]
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020042F4
_02004318:
	ldr r0, _020043DC ; =0x04000004
	mov r7, #0
	mov r6, #0x4000000
	strh r7, [r0]
	ldr r4, _020043E0 ; =sIsDispOn
	str r7, [r6]
	ldr r0, [r4, #4]
	sub r1, r6, #0x4000001
	cmp r0, r1
	beq _02004378
	mov r5, #1
	mov r2, r7
	str r5, [sp]
	add r1, r6, #8
	mov r3, #0x60
	bl MIi_DmaFill32
	strh r7, [r6, #0x6c]
	str r5, [sp]
	ldr r0, [r4, #4]
	mov r2, r7
	add r1, r6, #0x1000
	mov r3, #0x70
	bl MIi_DmaFill32
	b _0200439C
_02004378:
	mov r0, r7
	add r1, r6, #8
	mov r2, #0x60
	bl MIi_CpuClear32
	mov r0, r7
	add r1, r6, #0x1000
	mov r2, #0x70
	strh r7, [r6, #0x6c]
	bl MIi_CpuClear32
_0200439C:
	ldr r0, _020043E4 ; =0x04000020
	mov r2, #0x100
	strh r2, [r0]
	strh r2, [r0, #6]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x16]
	add r1, r0, #0x1000
	ldr r0, _020043E8 ; =0x04001026
	strh r2, [r1]
	strh r2, [r0]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020043D0: .word 0x04000304
_020043D4: .word 0xFFFFFDF1
_020043D8: .word sDispMode
_020043DC: .word 0x04000004
_020043E0: .word sIsDispOn
_020043E4: .word 0x04000020
_020043E8: .word 0x04001026
	arm_func_end GX_Init

	arm_func_start GX_SetVCountEqVal
GX_SetVCountEqVal: ; 0x020043EC
	ldr r3, _02004410 ; =0x04000004
	mov r1, r0, lsl #0x18
	ldrh r2, [r3]
	and r12, r0, #0x100
	and r0, r2, #0x3f
	orr r0, r0, r1, lsr #16
	orr r0, r0, r12, asr #1
	strh r0, [r3]
	bx lr
_02004410: .word 0x04000004
	arm_func_end GX_SetVCountEqVal

	arm_func_start GX_VBlankIntr
GX_VBlankIntr: ; 0x02004414
	ldr r3, _02004444 ; =0x04000004
	cmp r0, #0
	ldrh r0, [r3]
	ldrneh r1, [r3]
	and r0, r0, #8
	orrne r1, r1, #8
	strneh r1, [r3]
	ldreqh r2, [r3]
	ldreq r1, _02004448 ; =0x0000FFF7
	andeq r1, r2, r1
	streqh r1, [r3]
	bx lr
_02004444: .word 0x04000004
_02004448: .word 0x0000FFF7
	arm_func_end GX_VBlankIntr

	arm_func_start GX_IsDispOn
GX_IsDispOn: ; 0x0200444C
	ldr r0, _02004458 ; =sIsDispOn
	ldrh r0, [r0]
	bx lr
_02004458: .word sIsDispOn
	arm_func_end GX_IsDispOn

	arm_func_start GX_DispOff
GX_DispOff: ; 0x0200445C
	stmfd sp!, {r3, lr}
	mov lr, #0x4000000
	ldr r12, [lr]
	ldr r1, _02004494 ; =sIsDispOn
	and r2, r12, #0x30000
	mov r3, #0
	ldr r0, _02004498 ; =sDispMode
	mov r2, r2, lsr #0x10
	strh r3, [r1]
	strh r2, [r0]
	bic r0, r12, #0x30000
	str r0, [lr]
	bl PMi_SetDispOffCount
	ldmfd sp!, {r3, pc}
_02004494: .word sIsDispOn
_02004498: .word sDispMode
	arm_func_end GX_DispOff

	arm_func_start GX_DispOn
GX_DispOn: ; 0x0200449C
	ldr r0, _020044D8 ; =sDispMode
	ldr r1, _020044DC ; =sIsDispOn
	ldrh r2, [r0]
	mov r0, #1
	strh r0, [r1]
	mov r1, #0x4000000
	cmp r2, #0
	ldrne r0, [r1]
	bicne r0, r0, #0x30000
	orrne r0, r0, r2, lsl #16
	strne r0, [r1]
	ldreq r0, [r1]
	orreq r0, r0, #0x10000
	streq r0, [r1]
	bx lr
_020044D8: .word sDispMode
_020044DC: .word sIsDispOn
	arm_func_end GX_DispOn

	arm_func_start GX_SetGraphicsMode
GX_SetGraphicsMode: ; 0x020044E0
	stmfd sp!, {r3, lr}
	ldr r3, _0200453C ; =sIsDispOn
	mov lr, #0x4000000
	ldrh r12, [r3]
	ldr lr, [lr]
	ldr r3, _02004540 ; =sDispMode
	cmp r12, #0
	strh r0, [r3]
	ldr r3, _02004544 ; =0xFFF0FFF0
	moveq r0, #0
	and r3, lr, r3
	orr r0, r3, r0, lsl #16
	orr r0, r1, r0
	orr r1, r0, r2, lsl #3
	mov r12, #0x4000000
	ldr r0, _02004540 ; =sDispMode
	str r1, [r12]
	ldrh r0, [r0]
	cmp r0, #0
	ldreq r0, _0200453C ; =sIsDispOn
	moveq r1, #0
	streqh r1, [r0]
	ldmfd sp!, {r3, pc}
_0200453C: .word sIsDispOn
_02004540: .word sDispMode
_02004544: .word 0xFFF0FFF0
	arm_func_end GX_SetGraphicsMode

	arm_func_start GXS_SetGraphicsMode
GXS_SetGraphicsMode: ; 0x02004548
	ldr r2, _02004560 ; =0x04001000
	ldr r1, [r2]
	bic r1, r1, #7
	orr r0, r1, r0
	str r0, [r2]
	bx lr
_02004560: .word 0x04001000
	arm_func_end GXS_SetGraphicsMode

	arm_func_start GXx_SetMasterBrightness_
GXx_SetMasterBrightness_: ; 0x02004564
	cmp r1, #0
	moveq r1, #0
	streqh r1, [r0]
	bxeq lr
	orrgt r1, r1, #0x4000
	strgth r1, [r0]
	rsble r1, r1, #0
	orrle r1, r1, #0x8000
	strleh r1, [r0]
	bx lr
	arm_func_end GXx_SetMasterBrightness_

	arm_func_start G2x_SetBGyAffine_
G2x_SetBGyAffine_: ; 0x0200458C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [sp, #0x1c]
	ldr r5, [r1, #4]
	sub r8, r4, r3
	ldr lr, [r1, #0xc]
	mul r7, r5, r8
	ldr r4, [sp, #0x18]
	ldr r6, [r1]
	sub r12, r4, r2
	ldr r4, [r1, #8]
	mul r8, lr, r8
	mov r5, r5, lsl #0xc
	mla r1, r6, r12, r7
	mov r7, r5, asr #0x10
	mov lr, lr, lsl #0xc
	mla r12, r4, r12, r8
	mov r5, r6, lsl #0xc
	mov r6, r7, lsl #0x10
	mov r7, lr, asr #0x10
	mov r5, r5, asr #0x10
	mov lr, r6, lsr #0x10
	mov r4, r4, lsl #0xc
	mov r6, r7, lsl #0x10
	mov r7, r4, asr #0x10
	mov r4, r6, lsr #0x10
	add r2, r1, r2, lsl #12
	add r3, r12, r3, lsl #12
	mov r1, r5, lsl #0x10
	mov r5, lr, lsl #0x10
	orr r5, r5, r1, lsr #16
	mov r1, r7, lsl #0x10
	mov r4, r4, lsl #0x10
	str r5, [r0]
	orr r1, r4, r1, lsr #16
	str r1, [r0, #4]
	mov r1, r2, asr #4
	str r1, [r0, #8]
	mov r1, r3, asr #4
	str r1, [r0, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end G2x_SetBGyAffine_

	arm_func_start G2x_SetBlendBrightness_
G2x_SetBlendBrightness_: ; 0x0200462C
	cmp r2, #0
	orrlt r1, r1, #0xc0
	strlth r1, [r0]
	rsblt r1, r2, #0
	strlth r1, [r0, #4]
	orrge r1, r1, #0x80
	strgeh r1, [r0]
	strgeh r2, [r0, #4]
	bx lr
	arm_func_end G2x_SetBlendBrightness_

	arm_func_start G2x_ChangeBlendBrightness_
G2x_ChangeBlendBrightness_: ; 0x02004650
	ldrh r3, [r0]
	cmp r1, #0
	and r2, r3, #0xc0
	bge _0200467C
	cmp r2, #0x80
	biceq r2, r3, #0xc0
	orreq r2, r2, #0xc0
	streqh r2, [r0]
	rsb r1, r1, #0
	strh r1, [r0, #4]
	bx lr
_0200467C:
	cmp r2, #0xc0
	biceq r2, r3, #0xc0
	orreq r2, r2, #0x80
	streqh r2, [r0]
	strh r1, [r0, #4]
	bx lr
	arm_func_end G2x_ChangeBlendBrightness_

	arm_func_start G3_LoadMtx43
G3_LoadMtx43: ; 0x02004694
	ldr r1, _020046A8 ; =0x04000400
	mov r2, #0x17
	ldr r12, _020046AC ; =GX_SendFifo48B
	str r2, [r1]
	bx r12
_020046A8: .word 0x04000400
_020046AC: .word GX_SendFifo48B
	arm_func_end G3_LoadMtx43

	arm_func_start G3_MultMtx43
G3_MultMtx43: ; 0x020046B0
	ldr r1, _020046C4 ; =0x04000400
	mov r2, #0x19
	ldr r12, _020046C8 ; =GX_SendFifo48B
	str r2, [r1]
	bx r12
_020046C4: .word 0x04000400
_020046C8: .word GX_SendFifo48B
	arm_func_end G3_MultMtx43

	arm_func_start G3_MultMtx33
G3_MultMtx33: ; 0x020046CC
	ldr r1, _020046E0 ; =0x04000400
	mov r2, #0x1a
	ldr r12, _020046E4 ; =MI_Copy36B
	str r2, [r1]
	bx r12
_020046E0: .word 0x04000400
_020046E4: .word MI_Copy36B
	arm_func_end G3_MultMtx33

	arm_func_start G3X_Init
G3X_Init: ; 0x020046E8
	stmfd sp!, {r4, r5, r6, lr}
	bl G3X_ClearFifo
	ldr r0, _020047D0 ; =0x04000504
	mov r1, #0
	str r1, [r0]
_020046FC:
	ldr r1, [r0, #0xfc]
	tst r1, #0x8000000
	bne _020046FC
	ldr r4, _020047D4 ; =0x04000060
	mov r5, #0
	strh r5, [r4]
	str r5, [r0, #0xfc]
	str r5, [r4, #-0x50]
	ldrh r2, [r4]
	ldr r6, _020047D8 ; =0xFFFFCFFD
	ldr r1, _020047DC ; =0x0000CFFB
	orr r2, r2, #0x2000
	strh r2, [r4]
	ldrh r2, [r4]
	orr r2, r2, #0x1000
	strh r2, [r4]
	ldrh r2, [r4]
	and r2, r2, r6
	strh r2, [r4]
	ldrh r2, [r4]
	bic r2, r2, #0x3000
	orr r2, r2, #0x10
	strh r2, [r4]
	ldrh r2, [r4]
	and r1, r2, r1
	strh r1, [r4]
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x8000
	str r1, [r0, #0xfc]
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xc0000000
	orr r1, r1, #0x80000000
	str r1, [r0, #0xfc]
	bl G3X_InitMtxStack
	str r5, [r4, #0x2f0]
	mov r2, r6, lsr #0x11
	add r1, r4, #0x2f4
	ldr r0, _020047E0 ; =0x04000356
	strh r2, [r1]
	strh r5, [r0]
	str r5, [r0, #2]
	strh r5, [r0, #6]
	sub r1, r4, #0x58
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	bl G3X_InitTable
	ldr r1, _020047E4 ; =0x001F0080
	ldr r0, _020047E8 ; =0x040004A4
	str r1, [r0]
	str r5, [r0, #4]
	str r5, [r0, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020047D0: .word 0x04000504
_020047D4: .word 0x04000060
_020047D8: .word 0xFFFFCFFD
_020047DC: .word 0x0000CFFB
_020047E0: .word 0x04000356
_020047E4: .word 0x001F0080
_020047E8: .word 0x040004A4
	arm_func_end G3X_Init

	arm_func_start G3X_Reset
G3X_Reset: ; 0x020047EC
	stmfd sp!, {r3, lr}
	ldr r2, _02004848 ; =0x04000600
_020047F4:
	ldr r0, [r2]
	tst r0, #0x8000000
	bne _020047F4
	ldr r0, [r2]
	ldr r1, _0200484C ; =0x04000060
	orr r0, r0, #0x8000
	str r0, [r2]
	ldrh r0, [r1]
	orr r0, r0, #0x2000
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x1000
	strh r0, [r1]
	bl G3X_ResetMtxStack
	ldr r2, _02004850 ; =0x001F0080
	ldr r1, _02004854 ; =0x040004A4
	mov r0, #0
	str r2, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldmfd sp!, {r3, pc}
_02004848: .word 0x04000600
_0200484C: .word 0x04000060
_02004850: .word 0x001F0080
_02004854: .word 0x040004A4
	arm_func_end G3X_Reset

	arm_func_start G3X_ClearFifo
G3X_ClearFifo: ; 0x02004858
	stmfd sp!, {r4, lr}
	ldr r4, _02004878 ; =0x04000400
	mov r0, r4
	bl GXi_NopClearFifo128_
_02004868:
	ldr r0, [r4, #0x200]
	tst r0, #0x8000000
	bne _02004868
	ldmfd sp!, {r4, pc}
_02004878: .word 0x04000400
	arm_func_end G3X_ClearFifo

	arm_func_start G3X_InitMtxStack
G3X_InitMtxStack: ; 0x0200487C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02004908 ; =0x04000600
	ldr r0, [r1]
	orr r0, r0, #0x8000
	str r0, [r1]
	add r4, sp, #4
_02004898:
	mov r0, r4
	bl G3X_GetMtxStackLevelPV
	cmp r0, #0
	bne _02004898
	add r4, sp, #0
_020048AC:
	mov r0, r4
	bl G3X_GetMtxStackLevelPJ
	cmp r0, #0
	bne _020048AC
	ldr r1, _0200490C ; =0x04000440
	mov r0, #3
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1]
	ldr r0, [sp]
	mov r2, #0
	cmp r0, #0
	strne r0, [r1, #8]
	ldr r1, _02004910 ; =0x04000454
	mov r0, #2
	str r2, [r1]
	str r0, [r1, #-0x14]
	ldr r0, [sp, #4]
	str r0, [r1, #-0xc]
	str r2, [r1]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02004908: .word 0x04000600
_0200490C: .word 0x04000440
_02004910: .word 0x04000454
	arm_func_end G3X_InitMtxStack

	arm_func_start G3X_ResetMtxStack
G3X_ResetMtxStack: ; 0x02004914
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0200499C ; =0x04000600
	ldr r0, [r1]
	orr r0, r0, #0x8000
	str r0, [r1]
	add r4, sp, #4
_02004930:
	mov r0, r4
	bl G3X_GetMtxStackLevelPV
	cmp r0, #0
	bne _02004930
	add r4, sp, #0
_02004944:
	mov r0, r4
	bl G3X_GetMtxStackLevelPJ
	cmp r0, #0
	bne _02004944
	ldr r1, _020049A0 ; =0x04000440
	mov r0, #3
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1]
	ldr r0, [sp]
	ldr r2, _020049A0 ; =0x04000440
	cmp r0, #0
	strne r0, [r1, #8]
	mov r0, #2
	str r0, [r2]
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [r2, #8]
	str r0, [r2, #0x14]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0200499C: .word 0x04000600
_020049A0: .word 0x04000440
	arm_func_end G3X_ResetMtxStack

	arm_func_start G3X_SetFog
G3X_SetFog: ; 0x020049A4
	cmp r0, #0
	ldreq r2, _020049EC ; =0x04000060
	ldreq r0, _020049F0 ; =0x0000CF7F
	ldreqh r1, [r2]
	andeq r0, r1, r0
	streqh r0, [r2]
	bxeq lr
	ldr r12, _020049F4 ; =0x0400035C
	mov r0, r1, lsl #6
	strh r3, [r12]
	sub r3, r12, #0x2fc
	ldrh r1, [r3]
	orr r0, r0, r2, lsl #8
	orr r0, r0, #0x80
	bic r1, r1, #0x3f40
	orr r0, r1, r0
	strh r0, [r3]
	bx lr
_020049EC: .word 0x04000060
_020049F0: .word 0x0000CF7F
_020049F4: .word 0x0400035C
	arm_func_end G3X_SetFog

	arm_func_start G3X_GetClipMtx
G3X_GetClipMtx: ; 0x020049F8
	stmfd sp!, {r3, lr}
	ldr r2, _02004A24 ; =0x04000600
	mov r1, r0
	ldr r0, [r2]
	tst r0, #0x8000000
	mvnne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r2, #0x40
	bl MI_Copy64B
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02004A24: .word 0x04000600
	arm_func_end G3X_GetClipMtx

	arm_func_start G3X_GetVectorMtx
G3X_GetVectorMtx: ; 0x02004A28
	stmfd sp!, {r3, lr}
	ldr r2, _02004A54 ; =0x04000600
	mov r1, r0
	ldr r0, [r2]
	tst r0, #0x8000000
	mvnne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r2, #0x80
	bl MI_Copy36B
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02004A54: .word 0x04000600
	arm_func_end G3X_GetVectorMtx

	arm_func_start G3X_SetEdgeColorTable
G3X_SetEdgeColorTable: ; 0x02004A58
	ldr r1, _02004A68 ; =0x04000330
	ldr r12, _02004A6C ; =MIi_CpuCopy16
	mov r2, #0x10
	bx r12
_02004A68: .word 0x04000330
_02004A6C: .word MIi_CpuCopy16
	arm_func_end G3X_SetEdgeColorTable

	arm_func_start G3X_SetFogTable
G3X_SetFogTable: ; 0x02004A70
	ldr r1, _02004A7C ; =0x04000360
	ldr r12, _02004A80 ; =MI_Copy32B
	bx r12
_02004A7C: .word 0x04000360
_02004A80: .word MI_Copy32B
	arm_func_end G3X_SetFogTable

	arm_func_start G3X_SetFogG3X_SetToonTableTable
G3X_SetFogG3X_SetToonTableTable: ; 0x02004A84
	ldr r1, _02004A94 ; =0x04000380
	ldr r12, _02004A98 ; =MIi_CpuCopy16
	mov r2, #0x40
	bx r12
_02004A94: .word 0x04000380
_02004A98: .word MIi_CpuCopy16
	arm_func_end G3X_SetFogG3X_SetToonTableTable

	arm_func_start G3X_SetClearColor
G3X_SetClearColor: ; 0x02004A9C
	ldr r12, [sp]
	orr r0, r0, r1, lsl #16
	orr r1, r0, r3, lsl #24
	cmp r12, #0
	ldr r0, _02004AC0 ; =0x04000350
	orrne r1, r1, #0x8000
	str r1, [r0]
	strh r2, [r0, #4]
	bx lr
_02004AC0: .word 0x04000350
	arm_func_end G3X_SetClearColor

	arm_func_start G3X_InitTable
G3X_InitTable: ; 0x02004AC4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r4, _02004B6C ; =GXi_DmaId
	ldr r0, [r4]
	cmn r0, #1
	beq _02004B20
	mov r7, #0
	str r7, [sp]
	ldr r5, _02004B70 ; =0x04000330
	str r7, [sp, #4]
	mov r6, #1
	mov r1, r5
	mov r2, r7
	str r6, [sp, #8]
	mov r3, #0x10
	bl MIi_DmaFill32Async
	str r6, [sp]
	ldr r0, [r4]
	mov r2, r7
	add r1, r5, #0x30
	mov r3, #0x60
	bl MIi_DmaFill32
	b _02004B48
_02004B20:
	ldr r4, _02004B70 ; =0x04000330
	mov r5, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	bl MIi_CpuClear32
	mov r0, r5
	add r1, r4, #0x30
	mov r2, #0x60
	bl MIi_CpuClear32
_02004B48:
	mov r2, #0
	ldr r0, _02004B74 ; =0x040004D0
	mov r1, r2
_02004B54:
	add r2, r2, #1
	str r1, [r0]
	cmp r2, #0x20
	blt _02004B54
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02004B6C: .word GXi_DmaId
_02004B70: .word 0x04000330
_02004B74: .word 0x040004D0
	arm_func_end G3X_InitTable

	arm_func_start G3X_GetMtxStackLevelPV
G3X_GetMtxStackLevelPV: ; 0x02004B78
	ldr r2, _02004BA0 ; =0x04000600
	ldr r1, [r2]
	tst r1, #0x4000
	ldreq r1, [r2]
	mvnne r0, #0
	andeq r1, r1, #0x1f00
	moveq r1, r1, lsr #8
	streq r1, [r0]
	moveq r0, #0
	bx lr
_02004BA0: .word 0x04000600
	arm_func_end G3X_GetMtxStackLevelPV

	arm_func_start G3X_GetMtxStackLevelPJ
G3X_GetMtxStackLevelPJ: ; 0x02004BA4
	ldr r2, _02004BCC ; =0x04000600
	ldr r1, [r2]
	tst r1, #0x4000
	ldreq r1, [r2]
	mvnne r0, #0
	andeq r1, r1, #0x2000
	moveq r1, r1, lsr #0xd
	streq r1, [r0]
	moveq r0, #0
	bx lr
_02004BCC: .word 0x04000600
	arm_func_end G3X_GetMtxStackLevelPJ

	arm_func_start G3X_GetBoxTestResult
G3X_GetBoxTestResult: ; 0x02004BD0
	ldr r2, _02004BF4 ; =0x04000600
	ldr r1, [r2]
	tst r1, #1
	ldreq r1, [r2]
	mvnne r0, #0
	andeq r1, r1, #2
	streq r1, [r0]
	moveq r0, #0
	bx lr
_02004BF4: .word 0x04000600
	arm_func_end G3X_GetBoxTestResult

	arm_func_start GXi_NopClearFifo128_
GXi_NopClearFifo128_: ; 0x02004BF8
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r12, #0
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	stmia r0, {r1, r2, r3, r12}
	bx lr
	arm_func_end GXi_NopClearFifo128_

	arm_func_start G2_GetBG0ScrPtr
G2_GetBG0ScrPtr: ; 0x02004C8C
	ldr r1, _02004CBC ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_02004CBC: .word 0x04000008
	arm_func_end G2_GetBG0ScrPtr

	arm_func_start G2S_GetBG0ScrPtr
G2S_GetBG0ScrPtr: ; 0x02004CC0
	ldr r0, _02004CDC ; =0x04001008
	ldrh r0, [r0]
	and r0, r0, #0x1f00
	mov r0, r0, asr #8
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_02004CDC: .word 0x04001008
	arm_func_end G2S_GetBG0ScrPtr

	arm_func_start G2_GetBG1ScrPtr
G2_GetBG1ScrPtr: ; 0x02004CE0
	ldr r1, _02004D10 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_02004D10: .word 0x0400000A
	arm_func_end G2_GetBG1ScrPtr

	arm_func_start G2S_GetBG1ScrPtr
G2S_GetBG1ScrPtr: ; 0x02004D14
	ldr r0, _02004D30 ; =0x0400100A
	ldrh r0, [r0]
	and r0, r0, #0x1f00
	mov r0, r0, asr #8
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_02004D30: .word 0x0400100A
	arm_func_end G2S_GetBG1ScrPtr

	arm_func_start G2_GetBG2ScrPtr
G2_GetBG2ScrPtr: ; 0x02004D34
	mov r0, #0x4000000
	ldr r1, [r0]
	ldrh r3, [r0, #0xc]
	ldr r0, [r0]
	and r12, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp r12, #6
	mov r1, r0, lsr #8
	addls pc, pc, r12, lsl #2
	b _02004DB0
_02004D68: ; jump table
	b _02004D84 ; case 0
	b _02004D84 ; case 1
	b _02004D84 ; case 2
	b _02004D84 ; case 3
	b _02004D84 ; case 4
	b _02004D90 ; case 5
	b _02004DA8 ; case 6
_02004D84:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_02004D90:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_02004DA8:
	mov r0, #0x6000000
	bx lr
_02004DB0:
	mov r0, #0
	bx lr
	arm_func_end G2_GetBG2ScrPtr

	arm_func_start G2S_GetBG2ScrPtr
G2S_GetBG2ScrPtr: ; 0x02004DB8
	ldr r1, _02004E28 ; =0x04001000
	ldr r0, [r1]
	ldrh r1, [r1, #0xc]
	and r2, r0, #7
	cmp r2, #6
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	addls pc, pc, r2, lsl #2
	b _02004E20
_02004DDC: ; jump table
	b _02004DF8 ; case 0
	b _02004DF8 ; case 1
	b _02004DF8 ; case 2
	b _02004DF8 ; case 3
	b _02004DF8 ; case 4
	b _02004E04 ; case 5
	b _02004E18 ; case 6
_02004DF8:
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_02004E04:
	tst r1, #0x80
	movne r0, r0, lsl #0xe
	moveq r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_02004E18:
	mov r0, #0
	bx lr
_02004E20:
	mov r0, #0
	bx lr
_02004E28: .word 0x04001000
	arm_func_end G2S_GetBG2ScrPtr

	arm_func_start G2_GetBG3ScrPtr
G2_GetBG3ScrPtr: ; 0x02004E2C
	mov r0, #0x4000000
	ldr r1, [r0]
	ldrh r3, [r0, #0xe]
	ldr r0, [r0]
	and r12, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp r12, #6
	mov r1, r0, lsr #8
	addls pc, pc, r12, lsl #2
	b _02004EA8
_02004E60: ; jump table
	b _02004E7C ; case 0
	b _02004E7C ; case 1
	b _02004E7C ; case 2
	b _02004E88 ; case 3
	b _02004E88 ; case 4
	b _02004E88 ; case 5
	b _02004EA0 ; case 6
_02004E7C:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_02004E88:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_02004EA0:
	mov r0, #0
	bx lr
_02004EA8:
	mov r0, #0
	bx lr
	arm_func_end G2_GetBG3ScrPtr

	arm_func_start G2S_GetBG3ScrPtr
G2S_GetBG3ScrPtr: ; 0x02004EB0
	ldr r1, _02004F20 ; =0x04001000
	ldr r0, [r1]
	ldrh r1, [r1, #0xe]
	and r2, r0, #7
	cmp r2, #6
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	addls pc, pc, r2, lsl #2
	b _02004F18
_02004ED4: ; jump table
	b _02004EF0 ; case 0
	b _02004EF0 ; case 1
	b _02004EF0 ; case 2
	b _02004EFC ; case 3
	b _02004EFC ; case 4
	b _02004EFC ; case 5
	b _02004F10 ; case 6
_02004EF0:
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_02004EFC:
	tst r1, #0x80
	movne r0, r0, lsl #0xe
	moveq r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_02004F10:
	mov r0, #0
	bx lr
_02004F18:
	mov r0, #0
	bx lr
_02004F20: .word 0x04001000
	arm_func_end G2S_GetBG3ScrPtr

	arm_func_start G2_GetBG0CharPtr
G2_GetBG0CharPtr: ; 0x02004F24
	ldr r1, _02004F54 ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
_02004F54: .word 0x04000008
	arm_func_end G2_GetBG0CharPtr

	arm_func_start G2S_GetBG0CharPtr
G2S_GetBG0CharPtr: ; 0x02004F58
	ldr r0, _02004F74 ; =0x04001008
	ldrh r0, [r0]
	and r0, r0, #0x3c
	mov r0, r0, asr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_02004F74: .word 0x04001008
	arm_func_end G2S_GetBG0CharPtr

	arm_func_start G2_GetBG1CharPtr
G2_GetBG1CharPtr: ; 0x02004F78
	ldr r1, _02004FA8 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
_02004FA8: .word 0x0400000A
	arm_func_end G2_GetBG1CharPtr

	arm_func_start G2S_GetBG1CharPtr
G2S_GetBG1CharPtr: ; 0x02004FAC
	ldr r0, _02004FC8 ; =0x0400100A
	ldrh r0, [r0]
	and r0, r0, #0x3c
	mov r0, r0, asr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_02004FC8: .word 0x0400100A
	arm_func_end G2S_GetBG1CharPtr

	arm_func_start G2_GetBG2CharPtr
G2_GetBG2CharPtr: ; 0x02004FCC
	mov r1, #0x4000000
	ldr r0, [r1]
	ldrh r2, [r1, #0xc]
	and r0, r0, #7
	cmp r0, #5
	blt _02004FEC
	tst r2, #0x80
	bne _02005014
_02004FEC:
	mov r0, #0x4000000
	ldr r1, [r0]
	and r0, r2, #0x3c
	and r1, r1, #0x7000000
	mov r1, r1, lsr #0x18
	mov r1, r1, lsl #0x10
	add r1, r1, #0x6000000
	mov r0, r0, lsr #2
	add r0, r1, r0, lsl #14
	bx lr
_02005014:
	mov r0, #0
	bx lr
	arm_func_end G2_GetBG2CharPtr

	arm_func_start G2S_GetBG2CharPtr
G2S_GetBG2CharPtr: ; 0x0200501C
	ldr r1, _02005058 ; =0x04001000
	ldr r0, [r1]
	ldrh r1, [r1, #0xc]
	and r0, r0, #7
	cmp r0, #5
	blt _0200503C
	tst r1, #0x80
	bne _02005050
_0200503C:
	and r0, r1, #0x3c
	mov r0, r0, lsr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_02005050:
	mov r0, #0
	bx lr
_02005058: .word 0x04001000
	arm_func_end G2S_GetBG2CharPtr

	arm_func_start G2_GetBG3CharPtr
G2_GetBG3CharPtr: ; 0x0200505C
	mov r1, #0x4000000
	ldr r0, [r1]
	ldrh r2, [r1, #0xe]
	and r0, r0, #7
	cmp r0, #3
	blt _02005084
	cmp r0, #6
	bge _020050AC
	tst r2, #0x80
	bne _020050AC
_02005084:
	mov r0, #0x4000000
	ldr r1, [r0]
	and r0, r2, #0x3c
	and r1, r1, #0x7000000
	mov r1, r1, lsr #0x18
	mov r1, r1, lsl #0x10
	add r1, r1, #0x6000000
	mov r0, r0, lsr #2
	add r0, r1, r0, lsl #14
	bx lr
_020050AC:
	mov r0, #0
	bx lr
	arm_func_end G2_GetBG3CharPtr

	arm_func_start G2S_GetBG3CharPtr
G2S_GetBG3CharPtr: ; 0x020050B4
	ldr r1, _020050F8 ; =0x04001000
	ldr r0, [r1]
	ldrh r1, [r1, #0xe]
	and r0, r0, #7
	cmp r0, #3
	blt _020050DC
	cmp r0, #6
	bge _020050F0
	tst r1, #0x80
	bne _020050F0
_020050DC:
	and r0, r1, #0x3c
	mov r0, r0, lsr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_020050F0:
	mov r0, #0
	bx lr
_020050F8: .word 0x04001000
	arm_func_end G2S_GetBG3CharPtr

	arm_func_start GX_LoadBGPltt
GX_LoadBGPltt: ; 0x020050FC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _0200515C ; =GXi_DmaId
	mov r4, r0
	ldr r0, [r3]
	mov lr, r1
	mov r3, r2
	cmn r0, #1
	beq _02005144
	cmp r3, #0x1c
	bls _02005144
	mov r12, #1
	mov r1, r4
	add r2, lr, #0x5000000
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02005144:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x5000000
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0200515C: .word GXi_DmaId
	arm_func_end GX_LoadBGPltt

	arm_func_start GXS_LoadBGPltt
GXS_LoadBGPltt: ; 0x02005160
	stmfd sp!, {r3, lr}
	ldr r3, _020051B8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r3]
	mov r3, r2
	cmn r0, #1
	beq _020051A0
	cmp r3, #0x1c
	bls _020051A0
	add r2, r1, #0x400
	mov r12, #1
	mov r1, lr
	add r2, r2, #0x5000000
	str r12, [sp]
	bl MIi_DmaCopy16
	ldmfd sp!, {r3, pc}
_020051A0:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, pc}
_020051B8: .word GXi_DmaId
	arm_func_end GXS_LoadBGPltt

	arm_func_start GX_LoadOBJPltt
GX_LoadOBJPltt: ; 0x020051BC
	stmfd sp!, {r3, lr}
	ldr r3, _02005214 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r3]
	mov r3, r2
	cmn r0, #1
	beq _020051FC
	cmp r3, #0x1c
	bls _020051FC
	add r2, r1, #0x200
	mov r12, #1
	mov r1, lr
	add r2, r2, #0x5000000
	str r12, [sp]
	bl MIi_DmaCopy16
	ldmfd sp!, {r3, pc}
_020051FC:
	add r1, r1, #0x200
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, pc}
_02005214: .word GXi_DmaId
	arm_func_end GX_LoadOBJPltt

	arm_func_start GXS_LoadOBJPltt
GXS_LoadOBJPltt: ; 0x02005218
	stmfd sp!, {r3, lr}
	ldr r3, _02005270 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r3]
	mov r3, r2
	cmn r0, #1
	beq _02005258
	cmp r3, #0x1c
	bls _02005258
	add r2, r1, #0x600
	mov r12, #1
	mov r1, lr
	add r2, r2, #0x5000000
	str r12, [sp]
	bl MIi_DmaCopy16
	ldmfd sp!, {r3, pc}
_02005258:
	add r1, r1, #0x600
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x5000000
	bl MIi_CpuCopy16
	ldmfd sp!, {r3, pc}
_02005270: .word GXi_DmaId
	arm_func_end GXS_LoadOBJPltt

	arm_func_start GX_LoadOAM
GX_LoadOAM: ; 0x02005274
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020052D4 ; =GXi_DmaId
	mov r4, r0
	ldr r0, [r3]
	mov lr, r1
	mov r3, r2
	cmn r0, #1
	beq _020052BC
	cmp r3, #0x30
	bls _020052BC
	mov r12, #1
	mov r1, r4
	add r2, lr, #0x7000000
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020052BC:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x7000000
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020052D4: .word GXi_DmaId
	arm_func_end GX_LoadOAM

	arm_func_start GXS_LoadOAM
GXS_LoadOAM: ; 0x020052D8
	stmfd sp!, {r3, lr}
	ldr r3, _02005330 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r3]
	mov r3, r2
	cmn r0, #1
	beq _02005318
	cmp r3, #0x30
	bls _02005318
	add r2, r1, #0x400
	mov r12, #1
	mov r1, lr
	add r2, r2, #0x7000000
	str r12, [sp]
	bl MIi_DmaCopy32
	ldmfd sp!, {r3, pc}
_02005318:
	add r1, r1, #0x400
	mov r0, lr
	mov r2, r3
	add r1, r1, #0x7000000
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, pc}
_02005330: .word GXi_DmaId
	arm_func_end GXS_LoadOAM

	arm_func_start GX_LoadOBJ
GX_LoadOBJ: ; 0x02005334
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _02005394 ; =GXi_DmaId
	mov r4, r0
	ldr r0, [r3]
	mov lr, r1
	mov r3, r2
	cmn r0, #1
	beq _0200537C
	cmp r3, #0x30
	bls _0200537C
	mov r12, #1
	mov r1, r4
	add r2, lr, #0x6400000
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0200537C:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x6400000
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02005394: .word GXi_DmaId
	arm_func_end GX_LoadOBJ

	arm_func_start GXS_LoadOBJ
GXS_LoadOBJ: ; 0x02005398
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r3, _020053F8 ; =GXi_DmaId
	mov r4, r0
	ldr r0, [r3]
	mov lr, r1
	mov r3, r2
	cmn r0, #1
	beq _020053E0
	cmp r3, #0x30
	bls _020053E0
	mov r12, #1
	mov r1, r4
	add r2, lr, #0x6600000
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020053E0:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x6600000
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020053F8: .word GXi_DmaId
	arm_func_end GXS_LoadOBJ

	arm_func_start GX_LoadBG0Scr
GX_LoadBG0Scr: ; 0x020053FC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG0ScrPtr
	ldr r1, _02005468 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005450
	cmp r4, #0x1c
	bls _02005450
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005450:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005468: .word GXi_DmaId
	arm_func_end GX_LoadBG0Scr

	arm_func_start GXS_LoadBG0Scr
GXS_LoadBG0Scr: ; 0x0200546C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG0ScrPtr
	ldr r1, _020054D8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _020054C0
	cmp r4, #0x1c
	bls _020054C0
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020054C0:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020054D8: .word GXi_DmaId
	arm_func_end GXS_LoadBG0Scr

	arm_func_start GX_LoadBG1Scr
GX_LoadBG1Scr: ; 0x020054DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG1ScrPtr
	ldr r1, _02005548 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005530
	cmp r4, #0x1c
	bls _02005530
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005530:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005548: .word GXi_DmaId
	arm_func_end GX_LoadBG1Scr

	arm_func_start GXS_LoadBG1Scr
GXS_LoadBG1Scr: ; 0x0200554C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG1ScrPtr
	ldr r1, _020055B8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _020055A0
	cmp r4, #0x1c
	bls _020055A0
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020055A0:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020055B8: .word GXi_DmaId
	arm_func_end GXS_LoadBG1Scr

	arm_func_start GX_LoadBG2Scr
GX_LoadBG2Scr: ; 0x020055BC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG2ScrPtr
	ldr r1, _02005628 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005610
	cmp r4, #0x1c
	bls _02005610
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005610:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005628: .word GXi_DmaId
	arm_func_end GX_LoadBG2Scr

	arm_func_start GXS_LoadBG2Scr
GXS_LoadBG2Scr: ; 0x0200562C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG2ScrPtr
	ldr r1, _02005698 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005680
	cmp r4, #0x1c
	bls _02005680
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005680:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005698: .word GXi_DmaId
	arm_func_end GXS_LoadBG2Scr

	arm_func_start GX_LoadBG3Scr
GX_LoadBG3Scr: ; 0x0200569C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG3ScrPtr
	ldr r1, _02005708 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _020056F0
	cmp r4, #0x1c
	bls _020056F0
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020056F0:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005708: .word GXi_DmaId
	arm_func_end GX_LoadBG3Scr

	arm_func_start GXS_LoadBG3Scr
GXS_LoadBG3Scr: ; 0x0200570C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG3ScrPtr
	ldr r1, _02005778 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005760
	cmp r4, #0x1c
	bls _02005760
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005760:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy16
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005778: .word GXi_DmaId
	arm_func_end GXS_LoadBG3Scr

	arm_func_start GX_LoadBG0Char
GX_LoadBG0Char: ; 0x0200577C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG0CharPtr
	ldr r1, _020057E8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _020057D0
	cmp r4, #0x30
	bls _020057D0
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020057D0:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020057E8: .word GXi_DmaId
	arm_func_end GX_LoadBG0Char

	arm_func_start GXS_LoadBG0Char
GXS_LoadBG0Char: ; 0x020057EC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG0CharPtr
	ldr r1, _02005858 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005840
	cmp r4, #0x30
	bls _02005840
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005840:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005858: .word GXi_DmaId
	arm_func_end GXS_LoadBG0Char

	arm_func_start GX_LoadBG1Char
GX_LoadBG1Char: ; 0x0200585C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG1CharPtr
	ldr r1, _020058C8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _020058B0
	cmp r4, #0x30
	bls _020058B0
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020058B0:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020058C8: .word GXi_DmaId
	arm_func_end GX_LoadBG1Char

	arm_func_start GXS_LoadBG1Char
GXS_LoadBG1Char: ; 0x020058CC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG1CharPtr
	ldr r1, _02005938 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005920
	cmp r4, #0x30
	bls _02005920
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005920:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005938: .word GXi_DmaId
	arm_func_end GXS_LoadBG1Char

	arm_func_start GX_LoadBG2Char
GX_LoadBG2Char: ; 0x0200593C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG2CharPtr
	ldr r1, _020059A8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005990
	cmp r4, #0x30
	bls _02005990
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005990:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020059A8: .word GXi_DmaId
	arm_func_end GX_LoadBG2Char

	arm_func_start GXS_LoadBG2Char
GXS_LoadBG2Char: ; 0x020059AC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG2CharPtr
	ldr r1, _02005A18 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005A00
	cmp r4, #0x30
	bls _02005A00
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005A00:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005A18: .word GXi_DmaId
	arm_func_end GXS_LoadBG2Char

	arm_func_start GX_LoadBG3Char
GX_LoadBG3Char: ; 0x02005A1C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2_GetBG3CharPtr
	ldr r1, _02005A88 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005A70
	cmp r4, #0x30
	bls _02005A70
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005A70:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005A88: .word GXi_DmaId
	arm_func_end GX_LoadBG3Char

	arm_func_start GXS_LoadBG3Char
GXS_LoadBG3Char: ; 0x02005A8C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl G2S_GetBG3CharPtr
	ldr r1, _02005AF8 ; =GXi_DmaId
	mov lr, r0
	ldr r0, [r1]
	cmn r0, #1
	beq _02005AE0
	cmp r4, #0x30
	bls _02005AE0
	mov r12, #1
	mov r1, r6
	mov r3, r4
	add r2, lr, r5
	str r12, [sp]
	bl MIi_DmaCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005AE0:
	mov r0, r6
	mov r2, r4
	add r1, lr, r5
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005AF8: .word GXi_DmaId
	arm_func_end GXS_LoadBG3Char

	arm_func_start GX_BeginLoadBGExtPltt
GX_BeginLoadBGExtPltt: ; 0x02005AFC
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForBGExtPltt
	ldr r1, _02005B78 ; =sSubBGExtPltt
	cmp r0, #0x20
	str r0, [r1, #0x14]
	bgt _02005B3C
	cmp r0, #0x20
	bge _02005B60
	cmp r0, #0
	ldmlefd sp!, {r3, pc}
	cmp r0, #0x10
	ldreq r2, _02005B7C ; =0x06880000
	moveq r0, #0
	streq r2, [r1, #0x10]
	streq r0, [r1, #0xc]
	ldmfd sp!, {r3, pc}
_02005B3C:
	cmp r0, #0x40
	bgt _02005B58
	ldreq r2, _02005B80 ; =0x06894000
	moveq r0, #0x4000
	streq r2, [r1, #0x10]
	streq r0, [r1, #0xc]
	ldmfd sp!, {r3, pc}
_02005B58:
	cmp r0, #0x60
	ldmnefd sp!, {r3, pc}
_02005B60:
	ldr r2, _02005B84 ; =0x06890000
	ldr r0, _02005B78 ; =sSubBGExtPltt
	mov r1, #0
	str r2, [r0, #0x10]
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, pc}
_02005B78: .word sSubBGExtPltt
_02005B7C: .word 0x06880000
_02005B80: .word 0x06894000
_02005B84: .word 0x06890000
	arm_func_end GX_BeginLoadBGExtPltt

	arm_func_start GX_LoadBGExtPltt
GX_LoadBGExtPltt: ; 0x02005B88
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r12, _02005BF4 ; =sSubBGExtPltt
	ldr r3, _02005BF8 ; =GXi_DmaId
	ldr r4, [r12, #0x10]
	ldr lr, [r3]
	ldr r12, [r12, #0xc]
	add r4, r4, r1
	mov r1, r0
	mov r3, r2
	cmn lr, #1
	sub r4, r4, r12
	beq _02005BE4
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	mov r12, #1
	mov r0, lr
	mov r2, r4
	str r12, [sp, #8]
	bl MIi_DmaCopy32Async
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_02005BE4:
	mov r1, r4
	bl MIi_CpuCopy32
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_02005BF4: .word sSubBGExtPltt
_02005BF8: .word GXi_DmaId
	arm_func_end GX_LoadBGExtPltt

	arm_func_start GX_EndLoadBGExtPltt
GX_EndLoadBGExtPltt: ; 0x02005BFC
	stmfd sp!, {r4, lr}
	ldr r0, _02005C34 ; =GXi_DmaId
	ldr r0, [r0]
	cmn r0, #1
	beq _02005C14
	bl MI_WaitDma
_02005C14:
	ldr r4, _02005C38 ; =sSubBGExtPltt
	ldr r0, [r4, #0x14]
	bl GX_SetBankForBGExtPltt
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02005C34: .word GXi_DmaId
_02005C38: .word sSubBGExtPltt
	arm_func_end GX_EndLoadBGExtPltt

	arm_func_start GXS_BeginLoadBGExtPltt
GXS_BeginLoadBGExtPltt: ; 0x02005C3C
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForSubBGExtPltt
	ldr r1, _02005C50 ; =sSubBGExtPltt
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_02005C50: .word sSubBGExtPltt
	arm_func_end GXS_BeginLoadBGExtPltt

	arm_func_start GXS_LoadBGExtPltt
GXS_LoadBGExtPltt: ; 0x02005C54
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r3, _02005CB8 ; =GXi_DmaId
	mov r4, r0
	ldr lr, [r3]
	mov r3, r2
	cmn lr, #1
	beq _02005CA4
	mov r12, #0
	add r2, r1, #0x98000
	str r12, [sp]
	str r12, [sp, #4]
	mov r12, #1
	mov r0, lr
	mov r1, r4
	add r2, r2, #0x6800000
	str r12, [sp, #8]
	bl MIi_DmaCopy32Async
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_02005CA4:
	add r1, r1, #0x98000
	add r1, r1, #0x6800000
	bl MIi_CpuCopy32
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_02005CB8: .word GXi_DmaId
	arm_func_end GXS_LoadBGExtPltt

	arm_func_start GXS_EndLoadBGExtPltt
GXS_EndLoadBGExtPltt: ; 0x02005CBC
	stmfd sp!, {r4, lr}
	ldr r0, _02005CEC ; =GXi_DmaId
	ldr r0, [r0]
	cmn r0, #1
	beq _02005CD4
	bl MI_WaitDma
_02005CD4:
	ldr r4, _02005CF0 ; =sSubBGExtPltt
	ldr r0, [r4]
	bl GX_SetBankForSubBGExtPltt
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_02005CEC: .word GXi_DmaId
_02005CF0: .word sSubBGExtPltt
	arm_func_end GXS_EndLoadBGExtPltt

	arm_func_start GX_BeginLoadTex
GX_BeginLoadTex: ; 0x02005CF4
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForTex
	mov r1, #6
	mul lr, r0, r1
	ldr r2, _02005D40 ; =0x02087814
	ldr r1, _02005D44 ; =0x02087816
	ldrh r12, [r2, lr]
	ldr r2, _02005D48 ; =0x02087818
	ldrh r3, [r1, lr]
	ldr r1, _02005D4C ; =sClrImg
	ldrh r2, [r2, lr]
	str r0, [r1, #0x14]
	mov r0, r12, lsl #0xc
	str r0, [r1, #4]
	mov r0, r3, lsl #0xc
	str r0, [r1, #0x18]
	mov r0, r2, lsl #0xc
	str r0, [r1, #0x1c]
	ldmfd sp!, {r3, pc}
_02005D40: .word sTexStartAddrTable
_02005D44: .word unk_02087816
_02005D48: .word unk_02087818
_02005D4C: .word sClrImg
	arm_func_end GX_BeginLoadTex

	arm_func_start GX_LoadTex
GX_LoadTex: ; 0x02005D50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r3, _02005E94 ; =sClrImg
	mov r7, r0
	ldr r4, [r3, #0x18]
	mov r12, r1
	cmp r4, #0
	ldreq r0, [r3, #4]
	mov r6, r2
	addeq r2, r0, r12
	beq _02005E44
	ldr r1, [r3, #0x1c]
	add r0, r12, r6
	cmp r0, r1
	ldrlo r0, [r3, #4]
	addlo r2, r0, r12
	blo _02005E44
	cmp r12, r1
	addhs r0, r4, r12
	subhs r2, r0, r1
	bhs _02005E44
	ldr r0, _02005E98 ; =GXi_DmaId
	sub r5, r1, r12
	ldr r0, [r0]
	ldr r8, [r3, #4]
	cmn r0, #1
	beq _02005DE0
	cmp r5, #0x30
	bls _02005DE0
	mov lr, #1
	mov r1, r7
	mov r3, r5
	add r2, r8, r12
	str lr, [sp]
	bl MIi_DmaCopy32
	b _02005DF0
_02005DE0:
	mov r0, r7
	mov r2, r5
	add r1, r8, r12
	bl MIi_CpuCopy32
_02005DF0:
	ldr r0, _02005E98 ; =GXi_DmaId
	ldr r0, [r0]
	cmn r0, #1
	beq _02005E2C
	mov r1, #0
	str r1, [sp]
	mov r2, r4
	str r1, [sp, #4]
	mov r4, #1
	add r1, r7, r5
	sub r3, r6, r5
	str r4, [sp, #8]
	bl MIi_DmaCopy32Async
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02005E2C:
	mov r1, r4
	add r0, r7, r5
	sub r2, r6, r5
	bl MIi_CpuCopy32
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02005E44:
	ldr r0, _02005E98 ; =GXi_DmaId
	ldr r0, [r0]
	cmn r0, #1
	beq _02005E7C
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r4, #1
	mov r1, r7
	mov r3, r6
	str r4, [sp, #8]
	bl MIi_DmaCopy32Async
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02005E7C:
	mov r1, r2
	mov r0, r7
	mov r2, r6
	bl MIi_CpuCopy32
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02005E94: .word sClrImg
_02005E98: .word GXi_DmaId
	arm_func_end GX_LoadTex

	arm_func_start GX_EndLoadTex
GX_EndLoadTex: ; 0x02005E9C
	stmfd sp!, {r4, lr}
	ldr r0, _02005ED8 ; =GXi_DmaId
	ldr r0, [r0]
	cmn r0, #1
	beq _02005EB4
	bl MI_WaitDma
_02005EB4:
	ldr r4, _02005EDC ; =sClrImg
	ldr r0, [r4, #0x14]
	bl GX_SetBankForTex
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	str r0, [r4, #4]
	str r0, [r4, #0x14]
	ldmfd sp!, {r4, pc}
_02005ED8: .word GXi_DmaId
_02005EDC: .word sClrImg
	arm_func_end GX_EndLoadTex

	arm_func_start GX_BeginLoadTexPltt
GX_BeginLoadTexPltt: ; 0x02005EE0
	stmfd sp!, {r3, lr}
	bl GX_ResetBankForTexPltt
	mov r3, r0, asr #4
	ldr r1, _02005F0C ; =sClrImg
	ldr r2, _02005F10 ; =0x02087804
	mov r3, r3, lsl #1
	ldrh r2, [r2, r3]
	str r0, [r1, #0xc]
	mov r0, r2, lsl #0xc
	str r0, [r1, #8]
	ldmfd sp!, {r3, pc}
_02005F0C: .word sClrImg
_02005F10: .word sTexPlttStartAddrTable
	arm_func_end GX_BeginLoadTexPltt

	arm_func_start GX_LoadTexPltt
GX_LoadTexPltt: ; 0x02005F14
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r3, _02005F7C ; =GXi_DmaId
	ldr r12, _02005F80 ; =sClrImg
	ldr lr, [r3]
	mov r6, r0
	mov r5, r1
	mov r3, r2
	cmn lr, #1
	ldr r4, [r12, #8]
	beq _02005F6C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r12, #1
	mov r0, lr
	mov r1, r6
	add r2, r4, r5
	str r12, [sp, #8]
	bl MIi_DmaCopy32Async
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005F6C:
	add r1, r4, r5
	bl MIi_CpuCopy32
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02005F7C: .word GXi_DmaId
_02005F80: .word sClrImg
	arm_func_end GX_LoadTexPltt

	arm_func_start GX_EndLoadTexPltt
GX_EndLoadTexPltt: ; 0x02005F84
	stmfd sp!, {r4, lr}
	ldr r0, _02005FB8 ; =GXi_DmaId
	ldr r0, [r0]
	cmn r0, #1
	beq _02005F9C
	bl MI_WaitDma
_02005F9C:
	ldr r4, _02005FBC ; =sClrImg
	ldr r0, [r4, #0xc]
	bl GX_SetBankForTexPltt
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_02005FB8: .word GXi_DmaId
_02005FBC: .word sClrImg
	arm_func_end GX_EndLoadTexPltt

	arm_func_start GX_VRAMCNT_SetLCDC_
GX_VRAMCNT_SetLCDC_: ; 0x02005FC0
	tst r0, #1
	ldrne r1, _02006034 ; =0x04000240
	mov r2, #0x80
	strneb r2, [r1]
	tst r0, #2
	ldrne r1, _02006038 ; =0x04000241
	strneb r2, [r1]
	tst r0, #4
	ldrne r1, _0200603C ; =0x04000242
	strneb r2, [r1]
	tst r0, #8
	ldrne r1, _02006040 ; =0x04000243
	strneb r2, [r1]
	tst r0, #0x10
	ldrne r1, _02006044 ; =0x04000244
	strneb r2, [r1]
	tst r0, #0x20
	ldrne r1, _02006048 ; =0x04000245
	strneb r2, [r1]
	tst r0, #0x40
	ldrne r1, _0200604C ; =0x04000246
	strneb r2, [r1]
	tst r0, #0x80
	ldrne r1, _02006050 ; =0x04000248
	strneb r2, [r1]
	tst r0, #0x100
	ldrne r0, _02006054 ; =0x04000249
	strneb r2, [r0]
	bx lr
_02006034: .word 0x04000240
_02006038: .word 0x04000241
_0200603C: .word 0x04000242
_02006040: .word 0x04000243
_02006044: .word 0x04000244
_02006048: .word 0x04000245
_0200604C: .word 0x04000246
_02006050: .word 0x04000248
_02006054: .word 0x04000249
	arm_func_end GX_VRAMCNT_SetLCDC_

	arm_func_start GX_SetBankForBG
GX_SetBankForBG: ; 0x02006058
	stmfd sp!, {r3, lr}
	ldr r1, _0200623C ; =gGXState
	mvn lr, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	cmp r0, #0x40
	ldr r12, _02006240 ; =0x04000243
	orr r2, r3, r2
	and r2, lr, r2
	strh r2, [r1]
	strh r0, [r1, #2]
	mov r3, #0x91
	mov r1, #0x89
	mov r2, #0x81
	bgt _02006140
	cmp r0, #0x40
	bge _02006224
	cmp r0, #0x20
	bgt _02006134
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0200622C
_020060B0: ; jump table
	b _0200622C ; case 0
	b _020061AC ; case 1
	b _0200618C ; case 2
	b _020061A4 ; case 3
	b _02006178 ; case 4
	b _020061CC ; case 5
	b _02006184 ; case 6
	b _0200619C ; case 7
	b _0200616C ; case 8
	b _020061DC ; case 9
	b _020061EC ; case 10
	b _020061B4 ; case 11
	b _02006174 ; case 12
	b _020061C8 ; case 13
	b _02006180 ; case 14
	b _02006194 ; case 15
	b _02006208 ; case 16
	b _0200622C ; case 17
	b _0200622C ; case 18
	b _0200622C ; case 19
	b _0200622C ; case 20
	b _0200622C ; case 21
	b _0200622C ; case 22
	b _0200622C ; case 23
	b _0200622C ; case 24
	b _0200622C ; case 25
	b _0200622C ; case 26
	b _0200622C ; case 27
	b _0200622C ; case 28
	b _0200622C ; case 29
	b _0200622C ; case 30
	b _0200622C ; case 31
	b _0200621C ; case 32
_02006134:
	cmp r0, #0x30
	beq _02006200
	b _0200622C
_02006140:
	cmp r0, #0x60
	bgt _02006160
	bge _02006214
	cmp r0, #0x50
	ldreq r0, _02006244 ; =0x04000246
	streqb r3, [r0]
	streqb r2, [r0, #-2]
	b _0200622C
_02006160:
	cmp r0, #0x70
	beq _020061F4
	b _0200622C
_0200616C:
	strb r2, [r12]
	b _0200622C
_02006174:
	strb r1, [r12]
_02006178:
	ldr r0, _02006248 ; =0x04000242
	b _02006228
_02006180:
	strb r3, [r12]
_02006184:
	ldr r0, _02006248 ; =0x04000242
	strb r1, [r0]
_0200618C:
	ldr r0, _0200624C ; =0x04000241
	b _02006228
_02006194:
	mov r0, #0x99
	strb r0, [r12]
_0200619C:
	ldr r0, _02006248 ; =0x04000242
	strb r3, [r0]
_020061A4:
	ldr r0, _0200624C ; =0x04000241
	strb r1, [r0]
_020061AC:
	ldr r0, _02006250 ; =0x04000240
	b _02006228
_020061B4:
	ldr r0, _02006250 ; =0x04000240
	strb r2, [r0]
	strb r1, [r0, #1]
	strb r3, [r0, #3]
	b _0200622C
_020061C8:
	strb r3, [r12]
_020061CC:
	ldr r0, _02006250 ; =0x04000240
_020061D0:
	strb r2, [r0]
	strb r1, [r0, #2]
	b _0200622C
_020061DC:
	ldr r0, _02006250 ; =0x04000240
	strb r2, [r0]
	strb r1, [r0, #3]
	b _0200622C
_020061EC:
	ldr r0, _0200624C ; =0x04000241
	b _020061D0
_020061F4:
	ldr r0, _02006244 ; =0x04000246
	mov r1, #0x99
	strb r1, [r0]
_02006200:
	ldr r0, _02006254 ; =0x04000245
	strb r3, [r0]
_02006208:
	ldr r0, _02006258 ; =0x04000244
	strb r2, [r0]
	b _0200622C
_02006214:
	ldr r0, _02006244 ; =0x04000246
	strb r1, [r0]
_0200621C:
	ldr r0, _02006254 ; =0x04000245
	b _02006228
_02006224:
	ldr r0, _02006244 ; =0x04000246
_02006228:
	strb r2, [r0]
_0200622C:
	ldr r0, _0200623C ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_0200623C: .word gGXState
_02006240: .word 0x04000243
_02006244: .word 0x04000246
_02006248: .word 0x04000242
_0200624C: .word 0x04000241
_02006250: .word 0x04000240
_02006254: .word 0x04000245
_02006258: .word 0x04000244
	arm_func_end GX_SetBankForBG

	arm_func_start GX_SetBankForOBJ
GX_SetBankForOBJ: ; 0x0200625C
	stmfd sp!, {r3, lr}
	ldr r2, _02006374 ; =gGXState
	mvn lr, r0
	ldrh r12, [r2]
	ldrh r3, [r2, #4]
	cmp r0, #0x30
	mov r1, #0x82
	orr r3, r12, r3
	and r3, lr, r3
	strh r3, [r2]
	strh r0, [r2, #4]
	bgt _020062C8
	cmp r0, #0x30
	bge _02006328
	cmp r0, #0x10
	bgt _020062BC
	bge _02006334
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02006364
_020062AC: ; jump table
	b _02006364 ; case 0
	b _0200630C ; case 1
	b _02006314 ; case 2
	b _02006300 ; case 3
_020062BC:
	cmp r0, #0x20
	beq _0200635C
	b _02006364
_020062C8:
	cmp r0, #0x50
	bgt _020062E4
	bge _0200633C
	cmp r0, #0x40
	ldreq r0, _02006378 ; =0x04000246
	streqb r1, [r0]
	b _02006364
_020062E4:
	cmp r0, #0x60
	bgt _020062F4
	beq _02006350
	b _02006364
_020062F4:
	cmp r0, #0x70
	beq _0200631C
	b _02006364
_02006300:
	ldr r0, _0200637C ; =0x04000241
	mov r2, #0x8a
	strb r2, [r0]
_0200630C:
	ldr r0, _02006380 ; =0x04000240
	b _02006360
_02006314:
	ldr r0, _0200637C ; =0x04000241
	b _02006360
_0200631C:
	ldr r0, _02006378 ; =0x04000246
	mov r2, #0x9a
	strb r2, [r0]
_02006328:
	ldr r0, _02006384 ; =0x04000245
	mov r2, #0x92
	strb r2, [r0]
_02006334:
	ldr r0, _02006388 ; =0x04000244
	b _02006360
_0200633C:
	ldr r0, _02006378 ; =0x04000246
	mov r2, #0x92
	strb r2, [r0]
	strb r1, [r0, #-2]
	b _02006364
_02006350:
	ldr r0, _02006378 ; =0x04000246
	mov r2, #0x8a
	strb r2, [r0]
_0200635C:
	ldr r0, _02006384 ; =0x04000245
_02006360:
	strb r1, [r0]
_02006364:
	ldr r0, _02006374 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006374: .word gGXState
_02006378: .word 0x04000246
_0200637C: .word 0x04000241
_02006380: .word 0x04000240
_02006384: .word 0x04000245
_02006388: .word 0x04000244
	arm_func_end GX_SetBankForOBJ

	arm_func_start GX_SetBankForBGExtPltt
GX_SetBankForBGExtPltt: ; 0x0200638C
	stmfd sp!, {r3, lr}
	ldr r1, _02006478 ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xe]
	cmp r0, #0x20
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0xe]
	bgt _020063E8
	cmp r0, #0x20
	bge _0200644C
	cmp r0, #0
	bgt _020063DC
	moveq r1, #0x4000000
	ldreq r0, [r1]
	biceq r0, r0, #0x40000000
	streq r0, [r1]
	b _02006468
_020063DC:
	cmp r0, #0x10
	beq _02006404
	b _02006468
_020063E8:
	cmp r0, #0x40
	bgt _020063F8
	beq _02006420
	b _02006468
_020063F8:
	cmp r0, #0x60
	beq _02006440
	b _02006468
_02006404:
	mov r2, #0x4000000
	ldr r1, [r2]
	mov r0, #0x84
	orr r1, r1, #0x40000000
	str r1, [r2]
	strb r0, [r2, #0x244]
	b _02006468
_02006420:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _0200647C ; =0x04000246
	orr r1, r1, #0x40000000
	str r1, [r2]
	mov r1, #0x8c
	strb r1, [r0]
	b _02006468
_02006440:
	ldr r0, _0200647C ; =0x04000246
	mov r1, #0x8c
	strb r1, [r0]
_0200644C:
	ldr r0, _02006480 ; =0x04000245
	mov r1, #0x84
	strb r1, [r0]
	mov r1, #0x4000000
	ldr r0, [r1]
	orr r0, r0, #0x40000000
	str r0, [r1]
_02006468:
	ldr r0, _02006478 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006478: .word gGXState
_0200647C: .word 0x04000246
_02006480: .word 0x04000245
	arm_func_end GX_SetBankForBGExtPltt

	arm_func_start GX_SetBankForOBJExtPltt
GX_SetBankForOBJExtPltt: ; 0x02006484
	stmfd sp!, {r3, lr}
	ldr r1, _02006514 ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x10]
	cmp r0, #0
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0x10]
	beq _020064F4
	cmp r0, #0x20
	beq _020064C4
	cmp r0, #0x40
	beq _020064E4
	b _02006504
_020064C4:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _02006518 ; =0x04000245
_020064D0:
	orr r1, r1, #0x80000000
	str r1, [r2]
	mov r1, #0x85
	strb r1, [r0]
	b _02006504
_020064E4:
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _0200651C ; =0x04000246
	b _020064D0
_020064F4:
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x80000000
	str r0, [r1]
_02006504:
	ldr r0, _02006514 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006514: .word gGXState
_02006518: .word 0x04000245
_0200651C: .word 0x04000246
	arm_func_end GX_SetBankForOBJExtPltt

	arm_func_start GX_SetBankForTex
GX_SetBankForTex: ; 0x02006520
	stmfd sp!, {r4, lr}
	ldr r1, _02006680 ; =gGXState
	mvn r12, r0
	ldrh r4, [r1]
	ldrh r3, [r1, #8]
	ldr r2, _02006684 ; =0x04000243
	cmp r0, #0
	orr r3, r4, r3
	and r3, r12, r3
	strh r3, [r1]
	strh r0, [r1, #8]
	sub r3, r2, #1
	mov r12, #0x8b
	mov r1, #0x83
	bne _02006574
	ldr r2, _02006688 ; =0x04000060
	ldr r0, _0200668C ; =0x0000CFFE
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	b _02006670
_02006574:
	ldr r4, _02006688 ; =0x04000060
	cmp r0, #0xf
	ldrh lr, [r4]
	bic lr, lr, #0x3000
	orr lr, lr, #1
	strh lr, [r4]
	addls pc, pc, r0, lsl #2
	b _02006670
_02006594: ; jump table
	b _02006670 ; case 0
	b _02006668 ; case 1
	b _02006648 ; case 2
	b _02006660 ; case 3
	b _02006634 ; case 4
	b _020065D4 ; case 5
	b _02006644 ; case 6
	b _02006658 ; case 7
	b _02006628 ; case 8
	b _020065E0 ; case 9
	b _020065EC ; case 10
	b _020065FC ; case 11
	b _02006630 ; case 12
	b _02006614 ; case 13
	b _0200663C ; case 14
	b _02006650 ; case 15
_020065D4:
	strb r1, [r4, #0x1e0]
	strb r12, [r3]
	b _02006670
_020065E0:
	strb r1, [r4, #0x1e0]
	strb r12, [r2]
	b _02006670
_020065EC:
	ldr r0, _02006690 ; =0x04000241
	strb r1, [r0]
	strb r12, [r0, #2]
	b _02006670
_020065FC:
	ldr r2, _02006690 ; =0x04000241
	strb r1, [r4, #0x1e0]
	strb r12, [r2]
	mov r0, #0x93
	strb r0, [r2, #2]
	b _02006670
_02006614:
	strb r1, [r4, #0x1e0]
	strb r12, [r3]
	mov r0, #0x93
	strb r0, [r3, #1]
	b _02006670
_02006628:
	strb r1, [r2]
	b _02006670
_02006630:
	strb r12, [r2]
_02006634:
	strb r1, [r3]
	b _02006670
_0200663C:
	mov r0, #0x93
	strb r0, [r2]
_02006644:
	strb r12, [r3]
_02006648:
	ldr r0, _02006690 ; =0x04000241
	b _0200666C
_02006650:
	mov r0, #0x9b
	strb r0, [r2]
_02006658:
	mov r0, #0x93
	strb r0, [r3]
_02006660:
	ldr r0, _02006690 ; =0x04000241
	strb r12, [r0]
_02006668:
	ldr r0, _02006694 ; =0x04000240
_0200666C:
	strb r1, [r0]
_02006670:
	ldr r0, _02006680 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r4, pc}
_02006680: .word gGXState
_02006684: .word 0x04000243
_02006688: .word 0x04000060
_0200668C: .word 0x0000CFFE
_02006690: .word 0x04000241
_02006694: .word 0x04000240
	arm_func_end GX_SetBankForTex

	arm_func_start GX_SetBankForTexPltt
GX_SetBankForTexPltt: ; 0x02006698
	stmfd sp!, {r3, lr}
	ldr r1, _02006764 ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xa]
	cmp r0, #0x30
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0xa]
	bgt _020066E8
	cmp r0, #0x30
	bge _0200673C
	cmp r0, #0x10
	bgt _020066DC
	bge _02006748
	b _02006754
_020066DC:
	cmp r0, #0x20
	beq _02006720
	b _02006754
_020066E8:
	cmp r0, #0x60
	bgt _02006708
	bge _02006714
	cmp r0, #0x40
	ldreq r0, _02006768 ; =0x04000246
	moveq r1, #0x83
	streqb r1, [r0]
	b _02006754
_02006708:
	cmp r0, #0x70
	beq _02006730
	b _02006754
_02006714:
	ldr r0, _02006768 ; =0x04000246
	mov r1, #0x8b
	strb r1, [r0]
_02006720:
	ldr r0, _0200676C ; =0x04000245
	mov r1, #0x83
	strb r1, [r0]
	b _02006754
_02006730:
	ldr r0, _02006768 ; =0x04000246
	mov r1, #0x9b
	strb r1, [r0]
_0200673C:
	ldr r0, _0200676C ; =0x04000245
	mov r1, #0x93
	strb r1, [r0]
_02006748:
	ldr r0, _02006770 ; =0x04000244
	mov r1, #0x83
	strb r1, [r0]
_02006754:
	ldr r0, _02006764 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006764: .word gGXState
_02006768: .word 0x04000246
_0200676C: .word 0x04000245
_02006770: .word 0x04000244
	arm_func_end GX_SetBankForTexPltt

	arm_func_start GX_SetBankForClearImage
GX_SetBankForClearImage: ; 0x02006774
	stmfd sp!, {r3, lr}
	ldr r1, _02006858 ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0xc]
	cmp r0, #0xc
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0xc]
	addls pc, pc, r0, lsl #2
	b _02006848
_020067A4: ; jump table
	b _02006800 ; case 0
	b _02006818 ; case 1
	b _020067E4 ; case 2
	b _020067D8 ; case 3
	b _0200682C ; case 4
	b _02006848 ; case 5
	b _02006848 ; case 6
	b _02006848 ; case 7
	b _020067F8 ; case 8
	b _02006848 ; case 9
	b _02006848 ; case 10
	b _02006848 ; case 11
	b _020067EC ; case 12
_020067D8:
	ldr r0, _0200685C ; =0x04000240
	mov r1, #0x93
	strb r1, [r0]
_020067E4:
	ldr r0, _02006860 ; =0x04000241
	b _02006830
_020067EC:
	ldr r0, _02006864 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_020067F8:
	ldr r0, _02006868 ; =0x04000243
	b _02006830
_02006800:
	ldr r2, _0200686C ; =0x04000060
	ldr r0, _02006870 ; =0x0000BFFF
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	b _02006848
_02006818:
	ldr r0, _0200685C ; =0x04000240
	mov r1, #0x9b
	strb r1, [r0]
	sub r1, r0, #0x1e0
	b _0200683C
_0200682C:
	ldr r0, _02006864 ; =0x04000242
_02006830:
	mov r2, #0x9b
	ldr r1, _0200686C ; =0x04000060
	strb r2, [r0]
_0200683C:
	ldrh r0, [r1]
	orr r0, r0, #0x4000
	strh r0, [r1]
_02006848:
	ldr r0, _02006858 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006858: .word gGXState
_0200685C: .word 0x04000240
_02006860: .word 0x04000241
_02006864: .word 0x04000242
_02006868: .word 0x04000243
_0200686C: .word 0x04000060
_02006870: .word 0x0000BFFF
	arm_func_end GX_SetBankForClearImage

	arm_func_start GX_SetBankForARM7
GX_SetBankForARM7: ; 0x02006874
	stmfd sp!, {r3, lr}
	ldr r1, _0200690C ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #6]
	cmp r0, #8
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #6]
	bgt _020068D0
	cmp r0, #8
	bge _020068F0
	cmp r0, #4
	bgt _020068FC
	cmp r0, #0
	blt _020068FC
	beq _020068FC
	cmp r0, #4
	ldreq r0, _02006910 ; =0x04000242
	moveq r1, #0x82
	streqb r1, [r0]
	b _020068FC
_020068D0:
	cmp r0, #0xc
	bne _020068FC
	ldr r1, _02006914 ; =0x04000243
	mov r0, #0x8a
	strb r0, [r1]
	mov r0, #0x82
	strb r0, [r1, #-1]
	b _020068FC
_020068F0:
	ldr r0, _02006914 ; =0x04000243
	mov r1, #0x82
	strb r1, [r0]
_020068FC:
	ldr r0, _0200690C ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_0200690C: .word gGXState
_02006910: .word 0x04000242
_02006914: .word 0x04000243
	arm_func_end GX_SetBankForARM7

	arm_func_start GX_SetBankForLCDC
GX_SetBankForLCDC: ; 0x02006918
	ldr r2, _02006934 ; =gGXState
	mov r1, r0, lsl #0x10
	ldrh r3, [r2]
	ldr r12, _02006938 ; =GX_VRAMCNT_SetLCDC_
	orr r1, r3, r1, lsr #16
	strh r1, [r2]
	bx r12
_02006934: .word gGXState
_02006938: .word GX_VRAMCNT_SetLCDC_
	arm_func_end GX_SetBankForLCDC

	arm_func_start GX_SetBankForSubBG
GX_SetBankForSubBG: ; 0x0200693C
	stmfd sp!, {r3, lr}
	ldr r1, _020069C8 ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x12]
	cmp r0, #0x80
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0x12]
	bgt _02006998
	cmp r0, #0x80
	bge _020069AC
	cmp r0, #4
	bgt _020069B8
	cmp r0, #0
	blt _020069B8
	beq _020069B8
	cmp r0, #4
	ldreq r0, _020069CC ; =0x04000242
	moveq r1, #0x84
	streqb r1, [r0]
	b _020069B8
_02006998:
	cmp r0, #0x180
	bne _020069B8
	ldr r0, _020069D0 ; =0x04000249
	mov r1, #0x81
	strb r1, [r0]
_020069AC:
	ldr r0, _020069D4 ; =0x04000248
	mov r1, #0x81
	strb r1, [r0]
_020069B8:
	ldr r0, _020069C8 ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_020069C8: .word gGXState
_020069CC: .word 0x04000242
_020069D0: .word 0x04000249
_020069D4: .word 0x04000248
	arm_func_end GX_SetBankForSubBG

	arm_func_start GX_SetBankForSubOBJ
GX_SetBankForSubOBJ: ; 0x020069D8
	stmfd sp!, {r3, lr}
	ldr r1, _02006A3C ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x14]
	cmp r0, #0
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0x14]
	beq _02006A2C
	cmp r0, #8
	beq _02006A20
	cmp r0, #0x100
	ldreq r0, _02006A40 ; =0x04000249
	moveq r1, #0x82
	streqb r1, [r0]
	b _02006A2C
_02006A20:
	ldr r0, _02006A44 ; =0x04000243
	mov r1, #0x84
	strb r1, [r0]
_02006A2C:
	ldr r0, _02006A3C ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006A3C: .word gGXState
_02006A40: .word 0x04000249
_02006A44: .word 0x04000243
	arm_func_end GX_SetBankForSubOBJ

	arm_func_start GX_SetBankForSubBGExtPltt
GX_SetBankForSubBGExtPltt: ; 0x02006A48
	stmfd sp!, {r3, lr}
	ldr r1, _02006ABC ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x16]
	cmp r0, #0
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0x16]
	beq _02006A9C
	cmp r0, #0x80
	bne _02006AAC
	ldr r3, _02006AC0 ; =0x04001000
	ldr r0, _02006AC4 ; =0x04000248
	ldr r2, [r3]
	mov r1, #0x82
	orr r2, r2, #0x40000000
	str r2, [r3]
	strb r1, [r0]
	b _02006AAC
_02006A9C:
	ldr r1, _02006AC0 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x40000000
	str r0, [r1]
_02006AAC:
	ldr r0, _02006ABC ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006ABC: .word gGXState
_02006AC0: .word 0x04001000
_02006AC4: .word 0x04000248
	arm_func_end GX_SetBankForSubBGExtPltt

	arm_func_start GX_SetBankForSubOBJExtPltt
GX_SetBankForSubOBJExtPltt: ; 0x02006AC8
	stmfd sp!, {r3, lr}
	ldr r1, _02006B3C ; =gGXState
	mvn r12, r0
	ldrh r3, [r1]
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	orr r2, r3, r2
	and r2, r12, r2
	strh r2, [r1]
	strh r0, [r1, #0x18]
	beq _02006B1C
	cmp r0, #0x100
	bne _02006B2C
	ldr r3, _02006B40 ; =0x04001000
	ldr r0, _02006B44 ; =0x04000249
	ldr r2, [r3]
	mov r1, #0x83
	orr r2, r2, #0x80000000
	str r2, [r3]
	strb r1, [r0]
	b _02006B2C
_02006B1C:
	ldr r1, _02006B40 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x80000000
	str r0, [r1]
_02006B2C:
	ldr r0, _02006B3C ; =gGXState
	ldrh r0, [r0]
	bl GX_VRAMCNT_SetLCDC_
	ldmfd sp!, {r3, pc}
_02006B3C: .word gGXState
_02006B40: .word 0x04001000
_02006B44: .word 0x04000249
	arm_func_end GX_SetBankForSubOBJExtPltt

	arm_func_start resetBankForX_
resetBankForX_: ; 0x02006B48
	stmfd sp!, {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	ldr r2, _02006B7C ; =gGXState
	strh r1, [r0]
	ldrh r3, [r2]
	mov r1, r4, lsl #0x10
	mov r0, r4
	orr r1, r3, r1, lsr #16
	strh r1, [r2]
	bl GX_VRAMCNT_SetLCDC_
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02006B7C: .word gGXState
	arm_func_end resetBankForX_

	arm_func_start GX_ResetBankForBG
GX_ResetBankForBG: ; 0x02006B80
	ldr r0, _02006B8C ; =0x02093D62
	ldr r12, _02006B90 ; =resetBankForX_
	bx r12
_02006B8C: .word unk_02093D62
_02006B90: .word resetBankForX_
	arm_func_end GX_ResetBankForBG

	arm_func_start GX_ResetBankForBGExtPltt
GX_ResetBankForBGExtPltt: ; 0x02006B94
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _02006BB0 ; =0x02093D6E
	bic r1, r1, #0x40000000
	ldr r12, _02006BB4 ; =resetBankForX_
	str r1, [r2]
	bx r12
_02006BB0: .word unk_02093D6E
_02006BB4: .word resetBankForX_
	arm_func_end GX_ResetBankForBGExtPltt

	arm_func_start GX_ResetBankForTex
GX_ResetBankForTex: ; 0x02006BB8
	ldr r0, _02006BC4 ; =0x02093D68
	ldr r12, _02006BC8 ; =resetBankForX_
	bx r12
_02006BC4: .word unk_02093D68
_02006BC8: .word resetBankForX_
	arm_func_end GX_ResetBankForTex

	arm_func_start GX_ResetBankForTexPltt
GX_ResetBankForTexPltt: ; 0x02006BCC
	ldr r0, _02006BD8 ; =0x02093D6A
	ldr r12, _02006BDC ; =resetBankForX_
	bx r12
_02006BD8: .word unk_02093D6A
_02006BDC: .word resetBankForX_
	arm_func_end GX_ResetBankForTexPltt

	arm_func_start GX_ResetBankForSubBG
GX_ResetBankForSubBG: ; 0x02006BE0
	ldr r0, _02006BEC ; =0x02093D72
	ldr r12, _02006BF0 ; =resetBankForX_
	bx r12
_02006BEC: .word unk_02093D72
_02006BF0: .word resetBankForX_
	arm_func_end GX_ResetBankForSubBG

	arm_func_start GX_ResetBankForSubOBJ
GX_ResetBankForSubOBJ: ; 0x02006BF4
	ldr r0, _02006C00 ; =0x02093D74
	ldr r12, _02006C04 ; =resetBankForX_
	bx r12
_02006C00: .word unk_02093D74
_02006C04: .word resetBankForX_
	arm_func_end GX_ResetBankForSubOBJ

	arm_func_start GX_ResetBankForSubBGExtPltt
GX_ResetBankForSubBGExtPltt: ; 0x02006C08
	ldr r2, _02006C24 ; =0x04001000
	ldr r0, _02006C28 ; =0x02093D76
	ldr r1, [r2]
	ldr r12, _02006C2C ; =resetBankForX_
	bic r1, r1, #0x40000000
	str r1, [r2]
	bx r12
_02006C24: .word 0x04001000
_02006C28: .word unk_02093D76
_02006C2C: .word resetBankForX_
	arm_func_end GX_ResetBankForSubBGExtPltt

	arm_func_start disableBankForX_
disableBankForX_: ; 0x02006C30
	stmfd sp!, {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	tst r4, #1
	ldrne r0, _02006CC8 ; =0x04000240
	strneb r1, [r0]
	tst r4, #2
	ldrne r0, _02006CCC ; =0x04000241
	strneb r1, [r0]
	tst r4, #4
	ldrne r0, _02006CD0 ; =0x04000242
	strneb r1, [r0]
	tst r4, #8
	ldrne r0, _02006CD4 ; =0x04000243
	strneb r1, [r0]
	tst r4, #0x10
	ldrne r0, _02006CD8 ; =0x04000244
	strneb r1, [r0]
	tst r4, #0x20
	ldrne r0, _02006CDC ; =0x04000245
	strneb r1, [r0]
	tst r4, #0x40
	ldrne r0, _02006CE0 ; =0x04000246
	strneb r1, [r0]
	tst r4, #0x80
	ldrne r0, _02006CE4 ; =0x04000248
	strneb r1, [r0]
	tst r4, #0x100
	ldrne r0, _02006CE8 ; =0x04000249
	strneb r1, [r0]
	ldr r1, _02006CEC ; =GXi_VRamLockId
	mov r0, r4, lsl #0x10
	ldrh r1, [r1]
	mov r0, r0, lsr #0x10
	bl OSi_UnlockVram
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02006CC8: .word 0x04000240
_02006CCC: .word 0x04000241
_02006CD0: .word 0x04000242
_02006CD4: .word 0x04000243
_02006CD8: .word 0x04000244
_02006CDC: .word 0x04000245
_02006CE0: .word 0x04000246
_02006CE4: .word 0x04000248
_02006CE8: .word 0x04000249
_02006CEC: .word GXi_VRamLockId
	arm_func_end disableBankForX_

	arm_func_start GX_DisableBankForBG
GX_DisableBankForBG: ; 0x02006CF0
	ldr r0, _02006CFC ; =0x02093D62
	ldr r12, _02006D00 ; =disableBankForX_
	bx r12
_02006CFC: .word unk_02093D62
_02006D00: .word disableBankForX_
	arm_func_end GX_DisableBankForBG

	arm_func_start GX_DisableBankForOBJ
GX_DisableBankForOBJ: ; 0x02006D04
	ldr r0, _02006D10 ; =0x02093D64
	ldr r12, _02006D14 ; =disableBankForX_
	bx r12
_02006D10: .word unk_02093D64
_02006D14: .word disableBankForX_
	arm_func_end GX_DisableBankForOBJ

	arm_func_start GX_DisableBankForBGExtPltt
GX_DisableBankForBGExtPltt: ; 0x02006D18
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _02006D34 ; =0x02093D6E
	bic r1, r1, #0x40000000
	ldr r12, _02006D38 ; =disableBankForX_
	str r1, [r2]
	bx r12
_02006D34: .word unk_02093D6E
_02006D38: .word disableBankForX_
	arm_func_end GX_DisableBankForBGExtPltt

	arm_func_start GX_DisableBankForOBJExtPltt
GX_DisableBankForOBJExtPltt: ; 0x02006D3C
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r0, _02006D58 ; =0x02093D70
	bic r1, r1, #0x80000000
	ldr r12, _02006D5C ; =disableBankForX_
	str r1, [r2]
	bx r12
_02006D58: .word unk_02093D70
_02006D5C: .word disableBankForX_
	arm_func_end GX_DisableBankForOBJExtPltt

	arm_func_start GX_DisableBankForTex
GX_DisableBankForTex: ; 0x02006D60
	ldr r0, _02006D6C ; =0x02093D68
	ldr r12, _02006D70 ; =disableBankForX_
	bx r12
_02006D6C: .word unk_02093D68
_02006D70: .word disableBankForX_
	arm_func_end GX_DisableBankForTex

	arm_func_start GX_DisableBankForTexPltt
GX_DisableBankForTexPltt: ; 0x02006D74
	ldr r0, _02006D80 ; =0x02093D6A
	ldr r12, _02006D84 ; =disableBankForX_
	bx r12
_02006D80: .word unk_02093D6A
_02006D84: .word disableBankForX_
	arm_func_end GX_DisableBankForTexPltt

	arm_func_start GX_DisableBankForClearImage
GX_DisableBankForClearImage: ; 0x02006D88
	ldr r0, _02006D94 ; =0x02093D6C
	ldr r12, _02006D98 ; =disableBankForX_
	bx r12
_02006D94: .word unk_02093D6C
_02006D98: .word disableBankForX_
	arm_func_end GX_DisableBankForClearImage

	arm_func_start GX_DisableBankForARM7
GX_DisableBankForARM7: ; 0x02006D9C
	ldr r0, _02006DA8 ; =0x02093D66
	ldr r12, _02006DAC ; =disableBankForX_
	bx r12
_02006DA8: .word unk_02093D66
_02006DAC: .word disableBankForX_
	arm_func_end GX_DisableBankForARM7

	arm_func_start GX_DisableBankForLCDC
GX_DisableBankForLCDC: ; 0x02006DB0
	ldr r0, _02006DBC ; =gGXState
	ldr r12, _02006DC0 ; =disableBankForX_
	bx r12
_02006DBC: .word gGXState
_02006DC0: .word disableBankForX_
	arm_func_end GX_DisableBankForLCDC

	arm_func_start GX_DisableBankForSubBG
GX_DisableBankForSubBG: ; 0x02006DC4
	ldr r0, _02006DD0 ; =0x02093D72
	ldr r12, _02006DD4 ; =disableBankForX_
	bx r12
_02006DD0: .word unk_02093D72
_02006DD4: .word disableBankForX_
	arm_func_end GX_DisableBankForSubBG

	arm_func_start GX_DisableBankForSubOBJ
GX_DisableBankForSubOBJ: ; 0x02006DD8
	ldr r0, _02006DE4 ; =0x02093D74
	ldr r12, _02006DE8 ; =disableBankForX_
	bx r12
_02006DE4: .word unk_02093D74
_02006DE8: .word disableBankForX_
	arm_func_end GX_DisableBankForSubOBJ

	arm_func_start GX_DisableBankForSubBGExtPltt
GX_DisableBankForSubBGExtPltt: ; 0x02006DEC
	ldr r2, _02006E08 ; =0x04001000
	ldr r0, _02006E0C ; =0x02093D76
	ldr r1, [r2]
	ldr r12, _02006E10 ; =disableBankForX_
	bic r1, r1, #0x40000000
	str r1, [r2]
	bx r12
_02006E08: .word 0x04001000
_02006E0C: .word unk_02093D76
_02006E10: .word disableBankForX_
	arm_func_end GX_DisableBankForSubBGExtPltt

	arm_func_start GX_DisableBankForSubOBJExtPltt
GX_DisableBankForSubOBJExtPltt: ; 0x02006E14
	ldr r2, _02006E30 ; =0x04001000
	ldr r0, _02006E34 ; =0x02093D78
	ldr r1, [r2]
	ldr r12, _02006E38 ; =disableBankForX_
	bic r1, r1, #0x80000000
	str r1, [r2]
	bx r12
_02006E30: .word 0x04001000
_02006E34: .word unk_02093D78
_02006E38: .word disableBankForX_
	arm_func_end GX_DisableBankForSubOBJExtPltt

	arm_func_start GX_GetBankForTex
GX_GetBankForTex: ; 0x02006E3C
	ldr r0, _02006E48 ; =gGXState
	ldrh r0, [r0, #8]
	bx lr
_02006E48: .word gGXState
	arm_func_end GX_GetBankForTex

	arm_func_start GX_GetSizeOfX_
GX_GetSizeOfX_: ; 0x02006E4C
	mov r1, #0
	tst r0, #1
	addne r1, r1, #0x20000
	tst r0, #2
	addne r1, r1, #0x20000
	tst r0, #4
	addne r1, r1, #0x20000
	tst r0, #8
	addne r1, r1, #0x20000
	tst r0, #0x10
	addne r1, r1, #0x10000
	tst r0, #0x20
	addne r1, r1, #0x4000
	tst r0, #0x40
	addne r1, r1, #0x4000
	tst r0, #0x80
	addne r1, r1, #0x8000
	tst r0, #0x100
	addne r1, r1, #0x4000
	mov r0, r1
	bx lr
	arm_func_end GX_GetSizeOfX_

	arm_func_start GX_GetSizeOfTex
GX_GetSizeOfTex: ; 0x02006EA0
	ldr r0, _02006EB0 ; =gGXState
	ldr r12, _02006EB4 ; =GX_GetSizeOfX_
	ldrh r0, [r0, #8]
	bx r12
_02006EB0: .word gGXState
_02006EB4: .word GX_GetSizeOfX_
	arm_func_end GX_GetSizeOfTex

	arm_func_start GX_GetSizeOfTexPltt
GX_GetSizeOfTexPltt: ; 0x02006EB8
	ldr r0, _02006EC8 ; =gGXState
	ldr r12, _02006ECC ; =GX_GetSizeOfX_
	ldrh r0, [r0, #0xa]
	bx r12
_02006EC8: .word gGXState
_02006ECC: .word GX_GetSizeOfX_
	arm_func_end GX_GetSizeOfTexPltt

	arm_func_start GX_GetSizeOfSubOBJ
GX_GetSizeOfSubOBJ: ; 0x02006ED0
	ldr r0, _02006EE0 ; =gGXState
	ldr r12, _02006EE4 ; =GX_GetSizeOfX_
	ldrh r0, [r0, #0x14]
	bx r12
_02006EE0: .word gGXState
_02006EE4: .word GX_GetSizeOfX_
	arm_func_end GX_GetSizeOfSubOBJ

	arm_func_start GX_SendFifo48B
GX_SendFifo48B: ; 0x02006EE8
	ldmia r0!, {r2, r3, r12}
	stmia r1, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1, {r2, r3, r12}
	ldmia r0!, {r2, r3, r12}
	stmia r1, {r2, r3, r12}
	bx lr
	arm_func_end GX_SendFifo48B

	arm_func_start GX_InitGXState
GX_InitGXState: ; 0x02006F0C
	ldr r0, _02006F64 ; =gGXState
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	ldr r1, _02006F68 ; =0x04000240
	strh r2, [r0, #0x18]
	str r2, [r1]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	strb r2, [r1, #6]
	strh r2, [r1, #8]
	bx lr
_02006F64: .word gGXState
_02006F68: .word 0x04000240
	arm_func_end GX_InitGXState

	.rodata
	.global sTexPlttStartAddrTable
sTexPlttStartAddrTable:
	.byte 0x00, 0x00, 0x80, 0x68, 0x90, 0x68, 0x80, 0x68, 0x94, 0x68, 0x00, 0x00
	.byte 0x90, 0x68, 0x80, 0x68
	.global sTexStartAddrTable
sTexStartAddrTable:
	.byte 0x00, 0x00
	.global unk_02087816
unk_02087816:
	.byte 0x00, 0x00
	.global unk_02087818
unk_02087818:
	.byte 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x00, 0x40, 0x68, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x68, 0x40, 0x68, 0x20, 0x00, 0x20, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68
	.byte 0x00, 0x00, 0x00, 0x00, 0x60, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x60, 0x68, 0x20, 0x00
	.byte 0x20, 0x68, 0x60, 0x68, 0x20, 0x00, 0x00, 0x68, 0x60, 0x68, 0x40, 0x00, 0x40, 0x68, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x68, 0x40, 0x68, 0x20, 0x00, 0x20, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68
	.byte 0x00, 0x00, 0x00, 0x00

	.data
	.global sIsDispOn
sIsDispOn:
	.byte 0x01, 0x00, 0x00, 0x00
	.global GXi_DmaId
GXi_DmaId:
	.byte 0x03, 0x00, 0x00, 0x00

	.bss
	.global sDispMode
sDispMode:
	.space 0x02
	.global GXi_VRamLockId
GXi_VRamLockId:
	.space 0x02
	.global sSubBGExtPltt
sSubBGExtPltt:
	.space 0x04
	.global sOBJExtPlttLCDCBlk
sOBJExtPlttLCDCBlk:
	.space 0x04
	.global sOBJExtPltt
sOBJExtPltt:
	.space 0x04
	.global sBGExtPlttLCDCOffset
sBGExtPlttLCDCOffset:
	.space 0x04
	.global sBGExtPlttLCDCBlk
sBGExtPlttLCDCBlk:
	.space 0x04
	.global sBGExtPltt
sBGExtPltt:
	.space 0x04
	.global sSubOBJExtPltt
sSubOBJExtPltt:
	.space 0x04
	.global sClrImg
sClrImg:
	.space 0x04
	.global sTexLCDCBlk1
sTexLCDCBlk1:
	.space 0x04
	.global sTexPlttLCDCBlk
sTexPlttLCDCBlk:
	.space 0x04
	.global sTexPltt
sTexPltt:
	.space 0x04
	.global sClrImgLCDCBlk
sClrImgLCDCBlk:
	.space 0x04
	.global sTex
sTex:
	.space 0x04
	.global sTexLCDCBlk2
sTexLCDCBlk2:
	.space 0x04
	.global sSzTexBlk1
sSzTexBlk1:
	.space 0x04
	.global gGXState
gGXState:
	.space 0x02
	.global unk_02093D62
unk_02093D62:
	.space 0x02
	.global unk_02093D64
unk_02093D64:
	.space 0x02
	.global unk_02093D66
unk_02093D66:
	.space 0x02
	.global unk_02093D68
unk_02093D68:
	.space 0x02
	.global unk_02093D6A
unk_02093D6A:
	.space 0x02
	.global unk_02093D6C
unk_02093D6C:
	.space 0x02
	.global unk_02093D6E
unk_02093D6E:
	.space 0x02
	.global unk_02093D70
unk_02093D70:
	.space 0x02
	.global unk_02093D72
unk_02093D72:
	.space 0x02
	.global unk_02093D74
unk_02093D74:
	.space 0x02
	.global unk_02093D76
unk_02093D76:
	.space 0x02
	.global unk_02093D78
unk_02093D78:
	.space 0x04
